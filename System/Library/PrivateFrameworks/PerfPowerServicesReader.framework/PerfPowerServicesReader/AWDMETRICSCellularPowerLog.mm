@interface AWDMETRICSCellularPowerLog
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addCellularDynamicRatSelection:(id)selection;
- (void)addCellularNrSDMActivation:(id)activation;
- (void)addCellularNrSdmEndcRelease:(id)release;
- (void)addCellularPerClientProfileTriggerCount:(id)count;
- (void)addCellularPowerLogAOPUARTStates:(id)states;
- (void)addCellularPowerLogAPPSCXOShutdown:(id)shutdown;
- (void)addCellularPowerLogAPPSPerfLevels:(id)levels;
- (void)addCellularPowerLogAPPSSleepVeto:(id)veto;
- (void)addCellularPowerLogCDMA1XRABMode:(id)mode;
- (void)addCellularPowerLogCDMA1XRRCStateChange:(id)change;
- (void)addCellularPowerLogCDMA1XRxDiversity:(id)diversity;
- (void)addCellularPowerLogCDMA1XRxRSSI:(id)i;
- (void)addCellularPowerLogCDMA1XTxPower:(id)power;
- (void)addCellularPowerLogEVDORxDiversity:(id)diversity;
- (void)addCellularPowerLogEVDORxRSSI:(id)i;
- (void)addCellularPowerLogEVDOTxPower:(id)power;
- (void)addCellularPowerLogGPSStates:(id)states;
- (void)addCellularPowerLogGSMRABMode:(id)mode;
- (void)addCellularPowerLogGSMRRCStateChange:(id)change;
- (void)addCellularPowerLogGSMRxDiversity:(id)diversity;
- (void)addCellularPowerLogGSMRxRSSI:(id)i;
- (void)addCellularPowerLogGSMTxPower:(id)power;
- (void)addCellularPowerLogHybridRABMode:(id)mode;
- (void)addCellularPowerLogHybridRRCStateChange:(id)change;
- (void)addCellularPowerLogL1SleepStates:(id)states;
- (void)addCellularPowerLogLTEActivatedCASCCStates:(id)states;
- (void)addCellularPowerLogLTEAggregatedDLTBS:(id)s;
- (void)addCellularPowerLogLTECDRXConfig:(id)config;
- (void)addCellularPowerLogLTECarrierComponentInfo:(id)info;
- (void)addCellularPowerLogLTEConfiguredCASCCStates:(id)states;
- (void)addCellularPowerLogLTEPagingDRXCycle:(id)cycle;
- (void)addCellularPowerLogLTERRCStateChange:(id)change;
- (void)addCellularPowerLogLTERSRP:(id)p;
- (void)addCellularPowerLogLTERxDiversity:(id)diversity;
- (void)addCellularPowerLogLTERxTxActivityStates:(id)states;
- (void)addCellularPowerLogLTESINR:(id)r;
- (void)addCellularPowerLogLTETxPower:(id)power;
- (void)addCellularPowerLogLTEULCAState:(id)state;
- (void)addCellularPowerLogMCPMSleepVeto:(id)veto;
- (void)addCellularPowerLogMPSSPerfLevels:(id)levels;
- (void)addCellularPowerLogNRCDRXConfig:(id)config;
- (void)addCellularPowerLogNRDCEvent:(id)event;
- (void)addCellularPowerLogNRFRCoverage:(id)coverage;
- (void)addCellularPowerLogNRMmWaveRSRP:(id)p;
- (void)addCellularPowerLogNRMmWaveTxPower:(id)power;
- (void)addCellularPowerLogNRMmWaveULCAState:(id)state;
- (void)addCellularPowerLogNRNSAENDCEvent:(id)event;
- (void)addCellularPowerLogNRPagingDRXCycle:(id)cycle;
- (void)addCellularPowerLogNRSARRCStateChange:(id)change;
- (void)addCellularPowerLogNRSCGRel:(id)rel;
- (void)addCellularPowerLogNRmmWaveAntennaPanel:(id)panel;
- (void)addCellularPowerLogNRmmWaveBWP:(id)p;
- (void)addCellularPowerLogNRmmWaveBWPSCC:(id)c;
- (void)addCellularPowerLogNRmmWaveBeamID:(id)d;
- (void)addCellularPowerLogNRmmWaveCASCCActivated:(id)activated;
- (void)addCellularPowerLogNRmmWaveCASCCConfigured:(id)configured;
- (void)addCellularPowerLogNRmmWaveCarrierComponentInfo:(id)info;
- (void)addCellularPowerLogNRmmWaveDLTBS:(id)s;
- (void)addCellularPowerLogNRmmWaveRxTx:(id)tx;
- (void)addCellularPowerLogNRsub6BWP:(id)p;
- (void)addCellularPowerLogNRsub6BWPSA:(id)a;
- (void)addCellularPowerLogNRsub6BWPSCC:(id)c;
- (void)addCellularPowerLogNRsub6CASCCActivated:(id)activated;
- (void)addCellularPowerLogNRsub6CASCCConfigured:(id)configured;
- (void)addCellularPowerLogNRsub6CarrierComponentInfo:(id)info;
- (void)addCellularPowerLogNRsub6DLTBS:(id)s;
- (void)addCellularPowerLogNRsub6RSRP:(id)p;
- (void)addCellularPowerLogNRsub6RxDiversity:(id)diversity;
- (void)addCellularPowerLogNRsub6RxTx:(id)tx;
- (void)addCellularPowerLogNRsub6TxPower:(id)power;
- (void)addCellularPowerLogNRsub6ULCAState:(id)state;
- (void)addCellularPowerLogPCIeStates:(id)states;
- (void)addCellularPowerLogPLMNScanEvent:(id)event;
- (void)addCellularPowerLogPLMNSearch:(id)search;
- (void)addCellularPowerLogPLMNSearchEvent:(id)event;
- (void)addCellularPowerLogPowerEstimator:(id)estimator;
- (void)addCellularPowerLogProtocolState:(id)state;
- (void)addCellularPowerLogRATRedirectionEvent:(id)event;
- (void)addCellularPowerLogRATReselectionEvent:(id)event;
- (void)addCellularPowerLogRFTunerStatsHist:(id)hist;
- (void)addCellularPowerLogSFTRxTx:(id)tx;
- (void)addCellularPowerLogSFTState:(id)state;
- (void)addCellularPowerLogSPMI:(id)i;
- (void)addCellularPowerLogServiceStateEvent:(id)event;
- (void)addCellularPowerLogSystemEvent:(id)event;
- (void)addCellularPowerLogWCDMACDRXConfig:(id)config;
- (void)addCellularPowerLogWCDMARABMode:(id)mode;
- (void)addCellularPowerLogWCDMARABType:(id)type;
- (void)addCellularPowerLogWCDMARRCStateChange:(id)change;
- (void)addCellularPowerLogWCDMARxDiversity:(id)diversity;
- (void)addCellularPowerLogWCDMARxRSSI:(id)i;
- (void)addCellularPowerLogWCDMATxPower:(id)power;
- (void)addCellularPowerLogWLANUARTStates:(id)states;
- (void)addCellularPowerLogWUS:(id)s;
- (void)addCellularPowerLogXOShutdown:(id)shutdown;
- (void)addCellularRfTunerHist:(id)hist;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation AWDMETRICSCellularPowerLog

- (void)addCellularPerClientProfileTriggerCount:(id)count
{
  countCopy = count;
  cellularPerClientProfileTriggerCounts = self->_cellularPerClientProfileTriggerCounts;
  v8 = countCopy;
  if (!cellularPerClientProfileTriggerCounts)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPerClientProfileTriggerCounts;
    self->_cellularPerClientProfileTriggerCounts = v6;

    countCopy = v8;
    cellularPerClientProfileTriggerCounts = self->_cellularPerClientProfileTriggerCounts;
  }

  [(NSMutableArray *)cellularPerClientProfileTriggerCounts addObject:countCopy];
}

- (void)addCellularPowerLogXOShutdown:(id)shutdown
{
  shutdownCopy = shutdown;
  cellularPowerLogXOShutdowns = self->_cellularPowerLogXOShutdowns;
  v8 = shutdownCopy;
  if (!cellularPowerLogXOShutdowns)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogXOShutdowns;
    self->_cellularPowerLogXOShutdowns = v6;

    shutdownCopy = v8;
    cellularPowerLogXOShutdowns = self->_cellularPowerLogXOShutdowns;
  }

  [(NSMutableArray *)cellularPowerLogXOShutdowns addObject:shutdownCopy];
}

- (void)addCellularPowerLogAPPSPerfLevels:(id)levels
{
  levelsCopy = levels;
  cellularPowerLogAPPSPerfLevels = self->_cellularPowerLogAPPSPerfLevels;
  v8 = levelsCopy;
  if (!cellularPowerLogAPPSPerfLevels)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogAPPSPerfLevels;
    self->_cellularPowerLogAPPSPerfLevels = v6;

    levelsCopy = v8;
    cellularPowerLogAPPSPerfLevels = self->_cellularPowerLogAPPSPerfLevels;
  }

  [(NSMutableArray *)cellularPowerLogAPPSPerfLevels addObject:levelsCopy];
}

- (void)addCellularPowerLogAPPSCXOShutdown:(id)shutdown
{
  shutdownCopy = shutdown;
  cellularPowerLogAPPSCXOShutdowns = self->_cellularPowerLogAPPSCXOShutdowns;
  v8 = shutdownCopy;
  if (!cellularPowerLogAPPSCXOShutdowns)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogAPPSCXOShutdowns;
    self->_cellularPowerLogAPPSCXOShutdowns = v6;

    shutdownCopy = v8;
    cellularPowerLogAPPSCXOShutdowns = self->_cellularPowerLogAPPSCXOShutdowns;
  }

  [(NSMutableArray *)cellularPowerLogAPPSCXOShutdowns addObject:shutdownCopy];
}

- (void)addCellularPowerLogAPPSSleepVeto:(id)veto
{
  vetoCopy = veto;
  cellularPowerLogAPPSSleepVetos = self->_cellularPowerLogAPPSSleepVetos;
  v8 = vetoCopy;
  if (!cellularPowerLogAPPSSleepVetos)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogAPPSSleepVetos;
    self->_cellularPowerLogAPPSSleepVetos = v6;

    vetoCopy = v8;
    cellularPowerLogAPPSSleepVetos = self->_cellularPowerLogAPPSSleepVetos;
  }

  [(NSMutableArray *)cellularPowerLogAPPSSleepVetos addObject:vetoCopy];
}

- (void)addCellularPowerLogMCPMSleepVeto:(id)veto
{
  vetoCopy = veto;
  cellularPowerLogMCPMSleepVetos = self->_cellularPowerLogMCPMSleepVetos;
  v8 = vetoCopy;
  if (!cellularPowerLogMCPMSleepVetos)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogMCPMSleepVetos;
    self->_cellularPowerLogMCPMSleepVetos = v6;

    vetoCopy = v8;
    cellularPowerLogMCPMSleepVetos = self->_cellularPowerLogMCPMSleepVetos;
  }

  [(NSMutableArray *)cellularPowerLogMCPMSleepVetos addObject:vetoCopy];
}

- (void)addCellularPowerLogMPSSPerfLevels:(id)levels
{
  levelsCopy = levels;
  cellularPowerLogMPSSPerfLevels = self->_cellularPowerLogMPSSPerfLevels;
  v8 = levelsCopy;
  if (!cellularPowerLogMPSSPerfLevels)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogMPSSPerfLevels;
    self->_cellularPowerLogMPSSPerfLevels = v6;

    levelsCopy = v8;
    cellularPowerLogMPSSPerfLevels = self->_cellularPowerLogMPSSPerfLevels;
  }

  [(NSMutableArray *)cellularPowerLogMPSSPerfLevels addObject:levelsCopy];
}

- (void)addCellularPowerLogGPSStates:(id)states
{
  statesCopy = states;
  cellularPowerLogGPSStates = self->_cellularPowerLogGPSStates;
  v8 = statesCopy;
  if (!cellularPowerLogGPSStates)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogGPSStates;
    self->_cellularPowerLogGPSStates = v6;

    statesCopy = v8;
    cellularPowerLogGPSStates = self->_cellularPowerLogGPSStates;
  }

  [(NSMutableArray *)cellularPowerLogGPSStates addObject:statesCopy];
}

- (void)addCellularPowerLogAOPUARTStates:(id)states
{
  statesCopy = states;
  cellularPowerLogAOPUARTStates = self->_cellularPowerLogAOPUARTStates;
  v8 = statesCopy;
  if (!cellularPowerLogAOPUARTStates)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogAOPUARTStates;
    self->_cellularPowerLogAOPUARTStates = v6;

    statesCopy = v8;
    cellularPowerLogAOPUARTStates = self->_cellularPowerLogAOPUARTStates;
  }

  [(NSMutableArray *)cellularPowerLogAOPUARTStates addObject:statesCopy];
}

- (void)addCellularPowerLogWLANUARTStates:(id)states
{
  statesCopy = states;
  cellularPowerLogWLANUARTStates = self->_cellularPowerLogWLANUARTStates;
  v8 = statesCopy;
  if (!cellularPowerLogWLANUARTStates)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogWLANUARTStates;
    self->_cellularPowerLogWLANUARTStates = v6;

    statesCopy = v8;
    cellularPowerLogWLANUARTStates = self->_cellularPowerLogWLANUARTStates;
  }

  [(NSMutableArray *)cellularPowerLogWLANUARTStates addObject:statesCopy];
}

- (void)addCellularPowerLogPCIeStates:(id)states
{
  statesCopy = states;
  cellularPowerLogPCIeStates = self->_cellularPowerLogPCIeStates;
  v8 = statesCopy;
  if (!cellularPowerLogPCIeStates)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogPCIeStates;
    self->_cellularPowerLogPCIeStates = v6;

    statesCopy = v8;
    cellularPowerLogPCIeStates = self->_cellularPowerLogPCIeStates;
  }

  [(NSMutableArray *)cellularPowerLogPCIeStates addObject:statesCopy];
}

- (void)addCellularPowerLogL1SleepStates:(id)states
{
  statesCopy = states;
  cellularPowerLogL1SleepStates = self->_cellularPowerLogL1SleepStates;
  v8 = statesCopy;
  if (!cellularPowerLogL1SleepStates)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogL1SleepStates;
    self->_cellularPowerLogL1SleepStates = v6;

    statesCopy = v8;
    cellularPowerLogL1SleepStates = self->_cellularPowerLogL1SleepStates;
  }

  [(NSMutableArray *)cellularPowerLogL1SleepStates addObject:statesCopy];
}

- (void)addCellularPowerLogPowerEstimator:(id)estimator
{
  estimatorCopy = estimator;
  cellularPowerLogPowerEstimators = self->_cellularPowerLogPowerEstimators;
  v8 = estimatorCopy;
  if (!cellularPowerLogPowerEstimators)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogPowerEstimators;
    self->_cellularPowerLogPowerEstimators = v6;

    estimatorCopy = v8;
    cellularPowerLogPowerEstimators = self->_cellularPowerLogPowerEstimators;
  }

  [(NSMutableArray *)cellularPowerLogPowerEstimators addObject:estimatorCopy];
}

- (void)addCellularPowerLogRFTunerStatsHist:(id)hist
{
  histCopy = hist;
  cellularPowerLogRFTunerStatsHists = self->_cellularPowerLogRFTunerStatsHists;
  v8 = histCopy;
  if (!cellularPowerLogRFTunerStatsHists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogRFTunerStatsHists;
    self->_cellularPowerLogRFTunerStatsHists = v6;

    histCopy = v8;
    cellularPowerLogRFTunerStatsHists = self->_cellularPowerLogRFTunerStatsHists;
  }

  [(NSMutableArray *)cellularPowerLogRFTunerStatsHists addObject:histCopy];
}

- (void)addCellularPowerLogSPMI:(id)i
{
  iCopy = i;
  cellularPowerLogSPMIs = self->_cellularPowerLogSPMIs;
  v8 = iCopy;
  if (!cellularPowerLogSPMIs)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogSPMIs;
    self->_cellularPowerLogSPMIs = v6;

    iCopy = v8;
    cellularPowerLogSPMIs = self->_cellularPowerLogSPMIs;
  }

  [(NSMutableArray *)cellularPowerLogSPMIs addObject:iCopy];
}

- (void)addCellularRfTunerHist:(id)hist
{
  histCopy = hist;
  cellularRfTunerHists = self->_cellularRfTunerHists;
  v8 = histCopy;
  if (!cellularRfTunerHists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularRfTunerHists;
    self->_cellularRfTunerHists = v6;

    histCopy = v8;
    cellularRfTunerHists = self->_cellularRfTunerHists;
  }

  [(NSMutableArray *)cellularRfTunerHists addObject:histCopy];
}

- (void)addCellularPowerLogLTEConfiguredCASCCStates:(id)states
{
  statesCopy = states;
  cellularPowerLogLTEConfiguredCASCCStates = self->_cellularPowerLogLTEConfiguredCASCCStates;
  v8 = statesCopy;
  if (!cellularPowerLogLTEConfiguredCASCCStates)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogLTEConfiguredCASCCStates;
    self->_cellularPowerLogLTEConfiguredCASCCStates = v6;

    statesCopy = v8;
    cellularPowerLogLTEConfiguredCASCCStates = self->_cellularPowerLogLTEConfiguredCASCCStates;
  }

  [(NSMutableArray *)cellularPowerLogLTEConfiguredCASCCStates addObject:statesCopy];
}

- (void)addCellularPowerLogLTEActivatedCASCCStates:(id)states
{
  statesCopy = states;
  cellularPowerLogLTEActivatedCASCCStates = self->_cellularPowerLogLTEActivatedCASCCStates;
  v8 = statesCopy;
  if (!cellularPowerLogLTEActivatedCASCCStates)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogLTEActivatedCASCCStates;
    self->_cellularPowerLogLTEActivatedCASCCStates = v6;

    statesCopy = v8;
    cellularPowerLogLTEActivatedCASCCStates = self->_cellularPowerLogLTEActivatedCASCCStates;
  }

  [(NSMutableArray *)cellularPowerLogLTEActivatedCASCCStates addObject:statesCopy];
}

- (void)addCellularPowerLogLTERxTxActivityStates:(id)states
{
  statesCopy = states;
  cellularPowerLogLTERxTxActivityStates = self->_cellularPowerLogLTERxTxActivityStates;
  v8 = statesCopy;
  if (!cellularPowerLogLTERxTxActivityStates)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogLTERxTxActivityStates;
    self->_cellularPowerLogLTERxTxActivityStates = v6;

    statesCopy = v8;
    cellularPowerLogLTERxTxActivityStates = self->_cellularPowerLogLTERxTxActivityStates;
  }

  [(NSMutableArray *)cellularPowerLogLTERxTxActivityStates addObject:statesCopy];
}

- (void)addCellularPowerLogLTECarrierComponentInfo:(id)info
{
  infoCopy = info;
  cellularPowerLogLTECarrierComponentInfos = self->_cellularPowerLogLTECarrierComponentInfos;
  v8 = infoCopy;
  if (!cellularPowerLogLTECarrierComponentInfos)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogLTECarrierComponentInfos;
    self->_cellularPowerLogLTECarrierComponentInfos = v6;

    infoCopy = v8;
    cellularPowerLogLTECarrierComponentInfos = self->_cellularPowerLogLTECarrierComponentInfos;
  }

  [(NSMutableArray *)cellularPowerLogLTECarrierComponentInfos addObject:infoCopy];
}

- (void)addCellularPowerLogLTEAggregatedDLTBS:(id)s
{
  sCopy = s;
  cellularPowerLogLTEAggregatedDLTBSs = self->_cellularPowerLogLTEAggregatedDLTBSs;
  v8 = sCopy;
  if (!cellularPowerLogLTEAggregatedDLTBSs)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogLTEAggregatedDLTBSs;
    self->_cellularPowerLogLTEAggregatedDLTBSs = v6;

    sCopy = v8;
    cellularPowerLogLTEAggregatedDLTBSs = self->_cellularPowerLogLTEAggregatedDLTBSs;
  }

  [(NSMutableArray *)cellularPowerLogLTEAggregatedDLTBSs addObject:sCopy];
}

- (void)addCellularPowerLogLTERSRP:(id)p
{
  pCopy = p;
  cellularPowerLogLTERSRPs = self->_cellularPowerLogLTERSRPs;
  v8 = pCopy;
  if (!cellularPowerLogLTERSRPs)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogLTERSRPs;
    self->_cellularPowerLogLTERSRPs = v6;

    pCopy = v8;
    cellularPowerLogLTERSRPs = self->_cellularPowerLogLTERSRPs;
  }

  [(NSMutableArray *)cellularPowerLogLTERSRPs addObject:pCopy];
}

- (void)addCellularPowerLogLTESINR:(id)r
{
  rCopy = r;
  cellularPowerLogLTESINRs = self->_cellularPowerLogLTESINRs;
  v8 = rCopy;
  if (!cellularPowerLogLTESINRs)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogLTESINRs;
    self->_cellularPowerLogLTESINRs = v6;

    rCopy = v8;
    cellularPowerLogLTESINRs = self->_cellularPowerLogLTESINRs;
  }

  [(NSMutableArray *)cellularPowerLogLTESINRs addObject:rCopy];
}

- (void)addCellularPowerLogLTETxPower:(id)power
{
  powerCopy = power;
  cellularPowerLogLTETxPowers = self->_cellularPowerLogLTETxPowers;
  v8 = powerCopy;
  if (!cellularPowerLogLTETxPowers)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogLTETxPowers;
    self->_cellularPowerLogLTETxPowers = v6;

    powerCopy = v8;
    cellularPowerLogLTETxPowers = self->_cellularPowerLogLTETxPowers;
  }

  [(NSMutableArray *)cellularPowerLogLTETxPowers addObject:powerCopy];
}

- (void)addCellularPowerLogLTERxDiversity:(id)diversity
{
  diversityCopy = diversity;
  cellularPowerLogLTERxDiversitys = self->_cellularPowerLogLTERxDiversitys;
  v8 = diversityCopy;
  if (!cellularPowerLogLTERxDiversitys)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogLTERxDiversitys;
    self->_cellularPowerLogLTERxDiversitys = v6;

    diversityCopy = v8;
    cellularPowerLogLTERxDiversitys = self->_cellularPowerLogLTERxDiversitys;
  }

  [(NSMutableArray *)cellularPowerLogLTERxDiversitys addObject:diversityCopy];
}

- (void)addCellularPowerLogLTEULCAState:(id)state
{
  stateCopy = state;
  cellularPowerLogLTEULCAStates = self->_cellularPowerLogLTEULCAStates;
  v8 = stateCopy;
  if (!cellularPowerLogLTEULCAStates)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogLTEULCAStates;
    self->_cellularPowerLogLTEULCAStates = v6;

    stateCopy = v8;
    cellularPowerLogLTEULCAStates = self->_cellularPowerLogLTEULCAStates;
  }

  [(NSMutableArray *)cellularPowerLogLTEULCAStates addObject:stateCopy];
}

- (void)addCellularPowerLogProtocolState:(id)state
{
  stateCopy = state;
  cellularPowerLogProtocolStates = self->_cellularPowerLogProtocolStates;
  v8 = stateCopy;
  if (!cellularPowerLogProtocolStates)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogProtocolStates;
    self->_cellularPowerLogProtocolStates = v6;

    stateCopy = v8;
    cellularPowerLogProtocolStates = self->_cellularPowerLogProtocolStates;
  }

  [(NSMutableArray *)cellularPowerLogProtocolStates addObject:stateCopy];
}

- (void)addCellularPowerLogPLMNSearch:(id)search
{
  searchCopy = search;
  cellularPowerLogPLMNSearchs = self->_cellularPowerLogPLMNSearchs;
  v8 = searchCopy;
  if (!cellularPowerLogPLMNSearchs)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogPLMNSearchs;
    self->_cellularPowerLogPLMNSearchs = v6;

    searchCopy = v8;
    cellularPowerLogPLMNSearchs = self->_cellularPowerLogPLMNSearchs;
  }

  [(NSMutableArray *)cellularPowerLogPLMNSearchs addObject:searchCopy];
}

- (void)addCellularPowerLogGSMTxPower:(id)power
{
  powerCopy = power;
  cellularPowerLogGSMTxPowers = self->_cellularPowerLogGSMTxPowers;
  v8 = powerCopy;
  if (!cellularPowerLogGSMTxPowers)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogGSMTxPowers;
    self->_cellularPowerLogGSMTxPowers = v6;

    powerCopy = v8;
    cellularPowerLogGSMTxPowers = self->_cellularPowerLogGSMTxPowers;
  }

  [(NSMutableArray *)cellularPowerLogGSMTxPowers addObject:powerCopy];
}

- (void)addCellularPowerLogGSMRxRSSI:(id)i
{
  iCopy = i;
  cellularPowerLogGSMRxRSSIs = self->_cellularPowerLogGSMRxRSSIs;
  v8 = iCopy;
  if (!cellularPowerLogGSMRxRSSIs)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogGSMRxRSSIs;
    self->_cellularPowerLogGSMRxRSSIs = v6;

    iCopy = v8;
    cellularPowerLogGSMRxRSSIs = self->_cellularPowerLogGSMRxRSSIs;
  }

  [(NSMutableArray *)cellularPowerLogGSMRxRSSIs addObject:iCopy];
}

- (void)addCellularPowerLogGSMRABMode:(id)mode
{
  modeCopy = mode;
  cellularPowerLogGSMRABModes = self->_cellularPowerLogGSMRABModes;
  v8 = modeCopy;
  if (!cellularPowerLogGSMRABModes)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogGSMRABModes;
    self->_cellularPowerLogGSMRABModes = v6;

    modeCopy = v8;
    cellularPowerLogGSMRABModes = self->_cellularPowerLogGSMRABModes;
  }

  [(NSMutableArray *)cellularPowerLogGSMRABModes addObject:modeCopy];
}

- (void)addCellularPowerLogGSMRxDiversity:(id)diversity
{
  diversityCopy = diversity;
  cellularPowerLogGSMRxDiversitys = self->_cellularPowerLogGSMRxDiversitys;
  v8 = diversityCopy;
  if (!cellularPowerLogGSMRxDiversitys)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogGSMRxDiversitys;
    self->_cellularPowerLogGSMRxDiversitys = v6;

    diversityCopy = v8;
    cellularPowerLogGSMRxDiversitys = self->_cellularPowerLogGSMRxDiversitys;
  }

  [(NSMutableArray *)cellularPowerLogGSMRxDiversitys addObject:diversityCopy];
}

- (void)addCellularPowerLogWCDMATxPower:(id)power
{
  powerCopy = power;
  cellularPowerLogWCDMATxPowers = self->_cellularPowerLogWCDMATxPowers;
  v8 = powerCopy;
  if (!cellularPowerLogWCDMATxPowers)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogWCDMATxPowers;
    self->_cellularPowerLogWCDMATxPowers = v6;

    powerCopy = v8;
    cellularPowerLogWCDMATxPowers = self->_cellularPowerLogWCDMATxPowers;
  }

  [(NSMutableArray *)cellularPowerLogWCDMATxPowers addObject:powerCopy];
}

- (void)addCellularPowerLogWCDMARxRSSI:(id)i
{
  iCopy = i;
  cellularPowerLogWCDMARxRSSIs = self->_cellularPowerLogWCDMARxRSSIs;
  v8 = iCopy;
  if (!cellularPowerLogWCDMARxRSSIs)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogWCDMARxRSSIs;
    self->_cellularPowerLogWCDMARxRSSIs = v6;

    iCopy = v8;
    cellularPowerLogWCDMARxRSSIs = self->_cellularPowerLogWCDMARxRSSIs;
  }

  [(NSMutableArray *)cellularPowerLogWCDMARxRSSIs addObject:iCopy];
}

- (void)addCellularPowerLogWCDMARxDiversity:(id)diversity
{
  diversityCopy = diversity;
  cellularPowerLogWCDMARxDiversitys = self->_cellularPowerLogWCDMARxDiversitys;
  v8 = diversityCopy;
  if (!cellularPowerLogWCDMARxDiversitys)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogWCDMARxDiversitys;
    self->_cellularPowerLogWCDMARxDiversitys = v6;

    diversityCopy = v8;
    cellularPowerLogWCDMARxDiversitys = self->_cellularPowerLogWCDMARxDiversitys;
  }

  [(NSMutableArray *)cellularPowerLogWCDMARxDiversitys addObject:diversityCopy];
}

- (void)addCellularPowerLogWCDMARABMode:(id)mode
{
  modeCopy = mode;
  cellularPowerLogWCDMARABModes = self->_cellularPowerLogWCDMARABModes;
  v8 = modeCopy;
  if (!cellularPowerLogWCDMARABModes)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogWCDMARABModes;
    self->_cellularPowerLogWCDMARABModes = v6;

    modeCopy = v8;
    cellularPowerLogWCDMARABModes = self->_cellularPowerLogWCDMARABModes;
  }

  [(NSMutableArray *)cellularPowerLogWCDMARABModes addObject:modeCopy];
}

- (void)addCellularPowerLogWCDMARABType:(id)type
{
  typeCopy = type;
  cellularPowerLogWCDMARABTypes = self->_cellularPowerLogWCDMARABTypes;
  v8 = typeCopy;
  if (!cellularPowerLogWCDMARABTypes)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogWCDMARABTypes;
    self->_cellularPowerLogWCDMARABTypes = v6;

    typeCopy = v8;
    cellularPowerLogWCDMARABTypes = self->_cellularPowerLogWCDMARABTypes;
  }

  [(NSMutableArray *)cellularPowerLogWCDMARABTypes addObject:typeCopy];
}

- (void)addCellularPowerLogEVDOTxPower:(id)power
{
  powerCopy = power;
  cellularPowerLogEVDOTxPowers = self->_cellularPowerLogEVDOTxPowers;
  v8 = powerCopy;
  if (!cellularPowerLogEVDOTxPowers)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogEVDOTxPowers;
    self->_cellularPowerLogEVDOTxPowers = v6;

    powerCopy = v8;
    cellularPowerLogEVDOTxPowers = self->_cellularPowerLogEVDOTxPowers;
  }

  [(NSMutableArray *)cellularPowerLogEVDOTxPowers addObject:powerCopy];
}

- (void)addCellularPowerLogEVDORxRSSI:(id)i
{
  iCopy = i;
  cellularPowerLogEVDORxRSSIs = self->_cellularPowerLogEVDORxRSSIs;
  v8 = iCopy;
  if (!cellularPowerLogEVDORxRSSIs)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogEVDORxRSSIs;
    self->_cellularPowerLogEVDORxRSSIs = v6;

    iCopy = v8;
    cellularPowerLogEVDORxRSSIs = self->_cellularPowerLogEVDORxRSSIs;
  }

  [(NSMutableArray *)cellularPowerLogEVDORxRSSIs addObject:iCopy];
}

- (void)addCellularPowerLogHybridRABMode:(id)mode
{
  modeCopy = mode;
  cellularPowerLogHybridRABModes = self->_cellularPowerLogHybridRABModes;
  v8 = modeCopy;
  if (!cellularPowerLogHybridRABModes)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogHybridRABModes;
    self->_cellularPowerLogHybridRABModes = v6;

    modeCopy = v8;
    cellularPowerLogHybridRABModes = self->_cellularPowerLogHybridRABModes;
  }

  [(NSMutableArray *)cellularPowerLogHybridRABModes addObject:modeCopy];
}

- (void)addCellularPowerLogEVDORxDiversity:(id)diversity
{
  diversityCopy = diversity;
  cellularPowerLogEVDORxDiversitys = self->_cellularPowerLogEVDORxDiversitys;
  v8 = diversityCopy;
  if (!cellularPowerLogEVDORxDiversitys)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogEVDORxDiversitys;
    self->_cellularPowerLogEVDORxDiversitys = v6;

    diversityCopy = v8;
    cellularPowerLogEVDORxDiversitys = self->_cellularPowerLogEVDORxDiversitys;
  }

  [(NSMutableArray *)cellularPowerLogEVDORxDiversitys addObject:diversityCopy];
}

- (void)addCellularPowerLogCDMA1XTxPower:(id)power
{
  powerCopy = power;
  cellularPowerLogCDMA1XTxPowers = self->_cellularPowerLogCDMA1XTxPowers;
  v8 = powerCopy;
  if (!cellularPowerLogCDMA1XTxPowers)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogCDMA1XTxPowers;
    self->_cellularPowerLogCDMA1XTxPowers = v6;

    powerCopy = v8;
    cellularPowerLogCDMA1XTxPowers = self->_cellularPowerLogCDMA1XTxPowers;
  }

  [(NSMutableArray *)cellularPowerLogCDMA1XTxPowers addObject:powerCopy];
}

- (void)addCellularPowerLogCDMA1XRxRSSI:(id)i
{
  iCopy = i;
  cellularPowerLogCDMA1XRxRSSIs = self->_cellularPowerLogCDMA1XRxRSSIs;
  v8 = iCopy;
  if (!cellularPowerLogCDMA1XRxRSSIs)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogCDMA1XRxRSSIs;
    self->_cellularPowerLogCDMA1XRxRSSIs = v6;

    iCopy = v8;
    cellularPowerLogCDMA1XRxRSSIs = self->_cellularPowerLogCDMA1XRxRSSIs;
  }

  [(NSMutableArray *)cellularPowerLogCDMA1XRxRSSIs addObject:iCopy];
}

- (void)addCellularPowerLogCDMA1XRABMode:(id)mode
{
  modeCopy = mode;
  cellularPowerLogCDMA1XRABModes = self->_cellularPowerLogCDMA1XRABModes;
  v8 = modeCopy;
  if (!cellularPowerLogCDMA1XRABModes)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogCDMA1XRABModes;
    self->_cellularPowerLogCDMA1XRABModes = v6;

    modeCopy = v8;
    cellularPowerLogCDMA1XRABModes = self->_cellularPowerLogCDMA1XRABModes;
  }

  [(NSMutableArray *)cellularPowerLogCDMA1XRABModes addObject:modeCopy];
}

- (void)addCellularPowerLogCDMA1XRxDiversity:(id)diversity
{
  diversityCopy = diversity;
  cellularPowerLogCDMA1XRxDiversitys = self->_cellularPowerLogCDMA1XRxDiversitys;
  v8 = diversityCopy;
  if (!cellularPowerLogCDMA1XRxDiversitys)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogCDMA1XRxDiversitys;
    self->_cellularPowerLogCDMA1XRxDiversitys = v6;

    diversityCopy = v8;
    cellularPowerLogCDMA1XRxDiversitys = self->_cellularPowerLogCDMA1XRxDiversitys;
  }

  [(NSMutableArray *)cellularPowerLogCDMA1XRxDiversitys addObject:diversityCopy];
}

- (void)addCellularPowerLogLTEPagingDRXCycle:(id)cycle
{
  cycleCopy = cycle;
  cellularPowerLogLTEPagingDRXCycles = self->_cellularPowerLogLTEPagingDRXCycles;
  v8 = cycleCopy;
  if (!cellularPowerLogLTEPagingDRXCycles)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogLTEPagingDRXCycles;
    self->_cellularPowerLogLTEPagingDRXCycles = v6;

    cycleCopy = v8;
    cellularPowerLogLTEPagingDRXCycles = self->_cellularPowerLogLTEPagingDRXCycles;
  }

  [(NSMutableArray *)cellularPowerLogLTEPagingDRXCycles addObject:cycleCopy];
}

- (void)addCellularPowerLogNRPagingDRXCycle:(id)cycle
{
  cycleCopy = cycle;
  cellularPowerLogNRPagingDRXCycles = self->_cellularPowerLogNRPagingDRXCycles;
  v8 = cycleCopy;
  if (!cellularPowerLogNRPagingDRXCycles)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogNRPagingDRXCycles;
    self->_cellularPowerLogNRPagingDRXCycles = v6;

    cycleCopy = v8;
    cellularPowerLogNRPagingDRXCycles = self->_cellularPowerLogNRPagingDRXCycles;
  }

  [(NSMutableArray *)cellularPowerLogNRPagingDRXCycles addObject:cycleCopy];
}

- (void)addCellularPowerLogNRSCGRel:(id)rel
{
  relCopy = rel;
  cellularPowerLogNRSCGRels = self->_cellularPowerLogNRSCGRels;
  v8 = relCopy;
  if (!cellularPowerLogNRSCGRels)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogNRSCGRels;
    self->_cellularPowerLogNRSCGRels = v6;

    relCopy = v8;
    cellularPowerLogNRSCGRels = self->_cellularPowerLogNRSCGRels;
  }

  [(NSMutableArray *)cellularPowerLogNRSCGRels addObject:relCopy];
}

- (void)addCellularPowerLogWCDMACDRXConfig:(id)config
{
  configCopy = config;
  cellularPowerLogWCDMACDRXConfigs = self->_cellularPowerLogWCDMACDRXConfigs;
  v8 = configCopy;
  if (!cellularPowerLogWCDMACDRXConfigs)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogWCDMACDRXConfigs;
    self->_cellularPowerLogWCDMACDRXConfigs = v6;

    configCopy = v8;
    cellularPowerLogWCDMACDRXConfigs = self->_cellularPowerLogWCDMACDRXConfigs;
  }

  [(NSMutableArray *)cellularPowerLogWCDMACDRXConfigs addObject:configCopy];
}

- (void)addCellularPowerLogLTECDRXConfig:(id)config
{
  configCopy = config;
  cellularPowerLogLTECDRXConfigs = self->_cellularPowerLogLTECDRXConfigs;
  v8 = configCopy;
  if (!cellularPowerLogLTECDRXConfigs)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogLTECDRXConfigs;
    self->_cellularPowerLogLTECDRXConfigs = v6;

    configCopy = v8;
    cellularPowerLogLTECDRXConfigs = self->_cellularPowerLogLTECDRXConfigs;
  }

  [(NSMutableArray *)cellularPowerLogLTECDRXConfigs addObject:configCopy];
}

- (void)addCellularPowerLogWCDMARRCStateChange:(id)change
{
  changeCopy = change;
  cellularPowerLogWCDMARRCStateChanges = self->_cellularPowerLogWCDMARRCStateChanges;
  v8 = changeCopy;
  if (!cellularPowerLogWCDMARRCStateChanges)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogWCDMARRCStateChanges;
    self->_cellularPowerLogWCDMARRCStateChanges = v6;

    changeCopy = v8;
    cellularPowerLogWCDMARRCStateChanges = self->_cellularPowerLogWCDMARRCStateChanges;
  }

  [(NSMutableArray *)cellularPowerLogWCDMARRCStateChanges addObject:changeCopy];
}

- (void)addCellularPowerLogLTERRCStateChange:(id)change
{
  changeCopy = change;
  cellularPowerLogLTERRCStateChanges = self->_cellularPowerLogLTERRCStateChanges;
  v8 = changeCopy;
  if (!cellularPowerLogLTERRCStateChanges)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogLTERRCStateChanges;
    self->_cellularPowerLogLTERRCStateChanges = v6;

    changeCopy = v8;
    cellularPowerLogLTERRCStateChanges = self->_cellularPowerLogLTERRCStateChanges;
  }

  [(NSMutableArray *)cellularPowerLogLTERRCStateChanges addObject:changeCopy];
}

- (void)addCellularPowerLogSystemEvent:(id)event
{
  eventCopy = event;
  cellularPowerLogSystemEvents = self->_cellularPowerLogSystemEvents;
  v8 = eventCopy;
  if (!cellularPowerLogSystemEvents)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogSystemEvents;
    self->_cellularPowerLogSystemEvents = v6;

    eventCopy = v8;
    cellularPowerLogSystemEvents = self->_cellularPowerLogSystemEvents;
  }

  [(NSMutableArray *)cellularPowerLogSystemEvents addObject:eventCopy];
}

- (void)addCellularPowerLogRATReselectionEvent:(id)event
{
  eventCopy = event;
  cellularPowerLogRATReselectionEvents = self->_cellularPowerLogRATReselectionEvents;
  v8 = eventCopy;
  if (!cellularPowerLogRATReselectionEvents)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogRATReselectionEvents;
    self->_cellularPowerLogRATReselectionEvents = v6;

    eventCopy = v8;
    cellularPowerLogRATReselectionEvents = self->_cellularPowerLogRATReselectionEvents;
  }

  [(NSMutableArray *)cellularPowerLogRATReselectionEvents addObject:eventCopy];
}

- (void)addCellularPowerLogRATRedirectionEvent:(id)event
{
  eventCopy = event;
  cellularPowerLogRATRedirectionEvents = self->_cellularPowerLogRATRedirectionEvents;
  v8 = eventCopy;
  if (!cellularPowerLogRATRedirectionEvents)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogRATRedirectionEvents;
    self->_cellularPowerLogRATRedirectionEvents = v6;

    eventCopy = v8;
    cellularPowerLogRATRedirectionEvents = self->_cellularPowerLogRATRedirectionEvents;
  }

  [(NSMutableArray *)cellularPowerLogRATRedirectionEvents addObject:eventCopy];
}

- (void)addCellularPowerLogGSMRRCStateChange:(id)change
{
  changeCopy = change;
  cellularPowerLogGSMRRCStateChanges = self->_cellularPowerLogGSMRRCStateChanges;
  v8 = changeCopy;
  if (!cellularPowerLogGSMRRCStateChanges)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogGSMRRCStateChanges;
    self->_cellularPowerLogGSMRRCStateChanges = v6;

    changeCopy = v8;
    cellularPowerLogGSMRRCStateChanges = self->_cellularPowerLogGSMRRCStateChanges;
  }

  [(NSMutableArray *)cellularPowerLogGSMRRCStateChanges addObject:changeCopy];
}

- (void)addCellularPowerLogCDMA1XRRCStateChange:(id)change
{
  changeCopy = change;
  cellularPowerLogCDMA1XRRCStateChanges = self->_cellularPowerLogCDMA1XRRCStateChanges;
  v8 = changeCopy;
  if (!cellularPowerLogCDMA1XRRCStateChanges)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogCDMA1XRRCStateChanges;
    self->_cellularPowerLogCDMA1XRRCStateChanges = v6;

    changeCopy = v8;
    cellularPowerLogCDMA1XRRCStateChanges = self->_cellularPowerLogCDMA1XRRCStateChanges;
  }

  [(NSMutableArray *)cellularPowerLogCDMA1XRRCStateChanges addObject:changeCopy];
}

- (void)addCellularPowerLogHybridRRCStateChange:(id)change
{
  changeCopy = change;
  cellularPowerLogHybridRRCStateChanges = self->_cellularPowerLogHybridRRCStateChanges;
  v8 = changeCopy;
  if (!cellularPowerLogHybridRRCStateChanges)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogHybridRRCStateChanges;
    self->_cellularPowerLogHybridRRCStateChanges = v6;

    changeCopy = v8;
    cellularPowerLogHybridRRCStateChanges = self->_cellularPowerLogHybridRRCStateChanges;
  }

  [(NSMutableArray *)cellularPowerLogHybridRRCStateChanges addObject:changeCopy];
}

- (void)addCellularPowerLogServiceStateEvent:(id)event
{
  eventCopy = event;
  cellularPowerLogServiceStateEvents = self->_cellularPowerLogServiceStateEvents;
  v8 = eventCopy;
  if (!cellularPowerLogServiceStateEvents)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogServiceStateEvents;
    self->_cellularPowerLogServiceStateEvents = v6;

    eventCopy = v8;
    cellularPowerLogServiceStateEvents = self->_cellularPowerLogServiceStateEvents;
  }

  [(NSMutableArray *)cellularPowerLogServiceStateEvents addObject:eventCopy];
}

- (void)addCellularPowerLogPLMNScanEvent:(id)event
{
  eventCopy = event;
  cellularPowerLogPLMNScanEvents = self->_cellularPowerLogPLMNScanEvents;
  v8 = eventCopy;
  if (!cellularPowerLogPLMNScanEvents)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogPLMNScanEvents;
    self->_cellularPowerLogPLMNScanEvents = v6;

    eventCopy = v8;
    cellularPowerLogPLMNScanEvents = self->_cellularPowerLogPLMNScanEvents;
  }

  [(NSMutableArray *)cellularPowerLogPLMNScanEvents addObject:eventCopy];
}

- (void)addCellularPowerLogPLMNSearchEvent:(id)event
{
  eventCopy = event;
  cellularPowerLogPLMNSearchEvents = self->_cellularPowerLogPLMNSearchEvents;
  v8 = eventCopy;
  if (!cellularPowerLogPLMNSearchEvents)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogPLMNSearchEvents;
    self->_cellularPowerLogPLMNSearchEvents = v6;

    eventCopy = v8;
    cellularPowerLogPLMNSearchEvents = self->_cellularPowerLogPLMNSearchEvents;
  }

  [(NSMutableArray *)cellularPowerLogPLMNSearchEvents addObject:eventCopy];
}

- (void)addCellularPowerLogNRSARRCStateChange:(id)change
{
  changeCopy = change;
  cellularPowerLogNRSARRCStateChanges = self->_cellularPowerLogNRSARRCStateChanges;
  v8 = changeCopy;
  if (!cellularPowerLogNRSARRCStateChanges)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogNRSARRCStateChanges;
    self->_cellularPowerLogNRSARRCStateChanges = v6;

    changeCopy = v8;
    cellularPowerLogNRSARRCStateChanges = self->_cellularPowerLogNRSARRCStateChanges;
  }

  [(NSMutableArray *)cellularPowerLogNRSARRCStateChanges addObject:changeCopy];
}

- (void)addCellularPowerLogNRNSAENDCEvent:(id)event
{
  eventCopy = event;
  cellularPowerLogNRNSAENDCEvents = self->_cellularPowerLogNRNSAENDCEvents;
  v8 = eventCopy;
  if (!cellularPowerLogNRNSAENDCEvents)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogNRNSAENDCEvents;
    self->_cellularPowerLogNRNSAENDCEvents = v6;

    eventCopy = v8;
    cellularPowerLogNRNSAENDCEvents = self->_cellularPowerLogNRNSAENDCEvents;
  }

  [(NSMutableArray *)cellularPowerLogNRNSAENDCEvents addObject:eventCopy];
}

- (void)addCellularPowerLogNRCDRXConfig:(id)config
{
  configCopy = config;
  cellularPowerLogNRCDRXConfigs = self->_cellularPowerLogNRCDRXConfigs;
  v8 = configCopy;
  if (!cellularPowerLogNRCDRXConfigs)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogNRCDRXConfigs;
    self->_cellularPowerLogNRCDRXConfigs = v6;

    configCopy = v8;
    cellularPowerLogNRCDRXConfigs = self->_cellularPowerLogNRCDRXConfigs;
  }

  [(NSMutableArray *)cellularPowerLogNRCDRXConfigs addObject:configCopy];
}

- (void)addCellularNrSDMActivation:(id)activation
{
  activationCopy = activation;
  cellularNrSDMActivations = self->_cellularNrSDMActivations;
  v8 = activationCopy;
  if (!cellularNrSDMActivations)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularNrSDMActivations;
    self->_cellularNrSDMActivations = v6;

    activationCopy = v8;
    cellularNrSDMActivations = self->_cellularNrSDMActivations;
  }

  [(NSMutableArray *)cellularNrSDMActivations addObject:activationCopy];
}

- (void)addCellularNrSdmEndcRelease:(id)release
{
  releaseCopy = release;
  cellularNrSdmEndcReleases = self->_cellularNrSdmEndcReleases;
  v8 = releaseCopy;
  if (!cellularNrSdmEndcReleases)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularNrSdmEndcReleases;
    self->_cellularNrSdmEndcReleases = v6;

    releaseCopy = v8;
    cellularNrSdmEndcReleases = self->_cellularNrSdmEndcReleases;
  }

  [(NSMutableArray *)cellularNrSdmEndcReleases addObject:releaseCopy];
}

- (void)addCellularPowerLogNRFRCoverage:(id)coverage
{
  coverageCopy = coverage;
  cellularPowerLogNRFRCoverages = self->_cellularPowerLogNRFRCoverages;
  v8 = coverageCopy;
  if (!cellularPowerLogNRFRCoverages)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogNRFRCoverages;
    self->_cellularPowerLogNRFRCoverages = v6;

    coverageCopy = v8;
    cellularPowerLogNRFRCoverages = self->_cellularPowerLogNRFRCoverages;
  }

  [(NSMutableArray *)cellularPowerLogNRFRCoverages addObject:coverageCopy];
}

- (void)addCellularPowerLogNRDCEvent:(id)event
{
  eventCopy = event;
  cellularPowerLogNRDCEvents = self->_cellularPowerLogNRDCEvents;
  v8 = eventCopy;
  if (!cellularPowerLogNRDCEvents)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogNRDCEvents;
    self->_cellularPowerLogNRDCEvents = v6;

    eventCopy = v8;
    cellularPowerLogNRDCEvents = self->_cellularPowerLogNRDCEvents;
  }

  [(NSMutableArray *)cellularPowerLogNRDCEvents addObject:eventCopy];
}

- (void)addCellularDynamicRatSelection:(id)selection
{
  selectionCopy = selection;
  cellularDynamicRatSelections = self->_cellularDynamicRatSelections;
  v8 = selectionCopy;
  if (!cellularDynamicRatSelections)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularDynamicRatSelections;
    self->_cellularDynamicRatSelections = v6;

    selectionCopy = v8;
    cellularDynamicRatSelections = self->_cellularDynamicRatSelections;
  }

  [(NSMutableArray *)cellularDynamicRatSelections addObject:selectionCopy];
}

- (void)addCellularPowerLogWUS:(id)s
{
  sCopy = s;
  cellularPowerLogWUSs = self->_cellularPowerLogWUSs;
  v8 = sCopy;
  if (!cellularPowerLogWUSs)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogWUSs;
    self->_cellularPowerLogWUSs = v6;

    sCopy = v8;
    cellularPowerLogWUSs = self->_cellularPowerLogWUSs;
  }

  [(NSMutableArray *)cellularPowerLogWUSs addObject:sCopy];
}

- (void)addCellularPowerLogNRsub6BWP:(id)p
{
  pCopy = p;
  cellularPowerLogNRsub6BWPs = self->_cellularPowerLogNRsub6BWPs;
  v8 = pCopy;
  if (!cellularPowerLogNRsub6BWPs)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogNRsub6BWPs;
    self->_cellularPowerLogNRsub6BWPs = v6;

    pCopy = v8;
    cellularPowerLogNRsub6BWPs = self->_cellularPowerLogNRsub6BWPs;
  }

  [(NSMutableArray *)cellularPowerLogNRsub6BWPs addObject:pCopy];
}

- (void)addCellularPowerLogNRsub6CASCCConfigured:(id)configured
{
  configuredCopy = configured;
  cellularPowerLogNRsub6CASCCConfigureds = self->_cellularPowerLogNRsub6CASCCConfigureds;
  v8 = configuredCopy;
  if (!cellularPowerLogNRsub6CASCCConfigureds)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogNRsub6CASCCConfigureds;
    self->_cellularPowerLogNRsub6CASCCConfigureds = v6;

    configuredCopy = v8;
    cellularPowerLogNRsub6CASCCConfigureds = self->_cellularPowerLogNRsub6CASCCConfigureds;
  }

  [(NSMutableArray *)cellularPowerLogNRsub6CASCCConfigureds addObject:configuredCopy];
}

- (void)addCellularPowerLogNRsub6CASCCActivated:(id)activated
{
  activatedCopy = activated;
  cellularPowerLogNRsub6CASCCActivateds = self->_cellularPowerLogNRsub6CASCCActivateds;
  v8 = activatedCopy;
  if (!cellularPowerLogNRsub6CASCCActivateds)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogNRsub6CASCCActivateds;
    self->_cellularPowerLogNRsub6CASCCActivateds = v6;

    activatedCopy = v8;
    cellularPowerLogNRsub6CASCCActivateds = self->_cellularPowerLogNRsub6CASCCActivateds;
  }

  [(NSMutableArray *)cellularPowerLogNRsub6CASCCActivateds addObject:activatedCopy];
}

- (void)addCellularPowerLogNRsub6RxTx:(id)tx
{
  txCopy = tx;
  cellularPowerLogNRsub6RxTxs = self->_cellularPowerLogNRsub6RxTxs;
  v8 = txCopy;
  if (!cellularPowerLogNRsub6RxTxs)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogNRsub6RxTxs;
    self->_cellularPowerLogNRsub6RxTxs = v6;

    txCopy = v8;
    cellularPowerLogNRsub6RxTxs = self->_cellularPowerLogNRsub6RxTxs;
  }

  [(NSMutableArray *)cellularPowerLogNRsub6RxTxs addObject:txCopy];
}

- (void)addCellularPowerLogNRsub6CarrierComponentInfo:(id)info
{
  infoCopy = info;
  cellularPowerLogNRsub6CarrierComponentInfos = self->_cellularPowerLogNRsub6CarrierComponentInfos;
  v8 = infoCopy;
  if (!cellularPowerLogNRsub6CarrierComponentInfos)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogNRsub6CarrierComponentInfos;
    self->_cellularPowerLogNRsub6CarrierComponentInfos = v6;

    infoCopy = v8;
    cellularPowerLogNRsub6CarrierComponentInfos = self->_cellularPowerLogNRsub6CarrierComponentInfos;
  }

  [(NSMutableArray *)cellularPowerLogNRsub6CarrierComponentInfos addObject:infoCopy];
}

- (void)addCellularPowerLogNRsub6DLTBS:(id)s
{
  sCopy = s;
  cellularPowerLogNRsub6DLTBSs = self->_cellularPowerLogNRsub6DLTBSs;
  v8 = sCopy;
  if (!cellularPowerLogNRsub6DLTBSs)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogNRsub6DLTBSs;
    self->_cellularPowerLogNRsub6DLTBSs = v6;

    sCopy = v8;
    cellularPowerLogNRsub6DLTBSs = self->_cellularPowerLogNRsub6DLTBSs;
  }

  [(NSMutableArray *)cellularPowerLogNRsub6DLTBSs addObject:sCopy];
}

- (void)addCellularPowerLogNRsub6RSRP:(id)p
{
  pCopy = p;
  cellularPowerLogNRsub6RSRPs = self->_cellularPowerLogNRsub6RSRPs;
  v8 = pCopy;
  if (!cellularPowerLogNRsub6RSRPs)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogNRsub6RSRPs;
    self->_cellularPowerLogNRsub6RSRPs = v6;

    pCopy = v8;
    cellularPowerLogNRsub6RSRPs = self->_cellularPowerLogNRsub6RSRPs;
  }

  [(NSMutableArray *)cellularPowerLogNRsub6RSRPs addObject:pCopy];
}

- (void)addCellularPowerLogNRsub6ULCAState:(id)state
{
  stateCopy = state;
  cellularPowerLogNRsub6ULCAStates = self->_cellularPowerLogNRsub6ULCAStates;
  v8 = stateCopy;
  if (!cellularPowerLogNRsub6ULCAStates)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogNRsub6ULCAStates;
    self->_cellularPowerLogNRsub6ULCAStates = v6;

    stateCopy = v8;
    cellularPowerLogNRsub6ULCAStates = self->_cellularPowerLogNRsub6ULCAStates;
  }

  [(NSMutableArray *)cellularPowerLogNRsub6ULCAStates addObject:stateCopy];
}

- (void)addCellularPowerLogNRsub6TxPower:(id)power
{
  powerCopy = power;
  cellularPowerLogNRsub6TxPowers = self->_cellularPowerLogNRsub6TxPowers;
  v8 = powerCopy;
  if (!cellularPowerLogNRsub6TxPowers)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogNRsub6TxPowers;
    self->_cellularPowerLogNRsub6TxPowers = v6;

    powerCopy = v8;
    cellularPowerLogNRsub6TxPowers = self->_cellularPowerLogNRsub6TxPowers;
  }

  [(NSMutableArray *)cellularPowerLogNRsub6TxPowers addObject:powerCopy];
}

- (void)addCellularPowerLogNRsub6RxDiversity:(id)diversity
{
  diversityCopy = diversity;
  cellularPowerLogNRsub6RxDiversitys = self->_cellularPowerLogNRsub6RxDiversitys;
  v8 = diversityCopy;
  if (!cellularPowerLogNRsub6RxDiversitys)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogNRsub6RxDiversitys;
    self->_cellularPowerLogNRsub6RxDiversitys = v6;

    diversityCopy = v8;
    cellularPowerLogNRsub6RxDiversitys = self->_cellularPowerLogNRsub6RxDiversitys;
  }

  [(NSMutableArray *)cellularPowerLogNRsub6RxDiversitys addObject:diversityCopy];
}

- (void)addCellularPowerLogNRsub6BWPSCC:(id)c
{
  cCopy = c;
  cellularPowerLogNRsub6BWPSCCs = self->_cellularPowerLogNRsub6BWPSCCs;
  v8 = cCopy;
  if (!cellularPowerLogNRsub6BWPSCCs)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogNRsub6BWPSCCs;
    self->_cellularPowerLogNRsub6BWPSCCs = v6;

    cCopy = v8;
    cellularPowerLogNRsub6BWPSCCs = self->_cellularPowerLogNRsub6BWPSCCs;
  }

  [(NSMutableArray *)cellularPowerLogNRsub6BWPSCCs addObject:cCopy];
}

- (void)addCellularPowerLogNRsub6BWPSA:(id)a
{
  aCopy = a;
  cellularPowerLogNRsub6BWPSAs = self->_cellularPowerLogNRsub6BWPSAs;
  v8 = aCopy;
  if (!cellularPowerLogNRsub6BWPSAs)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogNRsub6BWPSAs;
    self->_cellularPowerLogNRsub6BWPSAs = v6;

    aCopy = v8;
    cellularPowerLogNRsub6BWPSAs = self->_cellularPowerLogNRsub6BWPSAs;
  }

  [(NSMutableArray *)cellularPowerLogNRsub6BWPSAs addObject:aCopy];
}

- (void)addCellularPowerLogNRmmWaveBWP:(id)p
{
  pCopy = p;
  cellularPowerLogNRmmWaveBWPs = self->_cellularPowerLogNRmmWaveBWPs;
  v8 = pCopy;
  if (!cellularPowerLogNRmmWaveBWPs)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogNRmmWaveBWPs;
    self->_cellularPowerLogNRmmWaveBWPs = v6;

    pCopy = v8;
    cellularPowerLogNRmmWaveBWPs = self->_cellularPowerLogNRmmWaveBWPs;
  }

  [(NSMutableArray *)cellularPowerLogNRmmWaveBWPs addObject:pCopy];
}

- (void)addCellularPowerLogNRmmWaveAntennaPanel:(id)panel
{
  panelCopy = panel;
  cellularPowerLogNRmmWaveAntennaPanels = self->_cellularPowerLogNRmmWaveAntennaPanels;
  v8 = panelCopy;
  if (!cellularPowerLogNRmmWaveAntennaPanels)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogNRmmWaveAntennaPanels;
    self->_cellularPowerLogNRmmWaveAntennaPanels = v6;

    panelCopy = v8;
    cellularPowerLogNRmmWaveAntennaPanels = self->_cellularPowerLogNRmmWaveAntennaPanels;
  }

  [(NSMutableArray *)cellularPowerLogNRmmWaveAntennaPanels addObject:panelCopy];
}

- (void)addCellularPowerLogNRmmWaveBeamID:(id)d
{
  dCopy = d;
  cellularPowerLogNRmmWaveBeamIDs = self->_cellularPowerLogNRmmWaveBeamIDs;
  v8 = dCopy;
  if (!cellularPowerLogNRmmWaveBeamIDs)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogNRmmWaveBeamIDs;
    self->_cellularPowerLogNRmmWaveBeamIDs = v6;

    dCopy = v8;
    cellularPowerLogNRmmWaveBeamIDs = self->_cellularPowerLogNRmmWaveBeamIDs;
  }

  [(NSMutableArray *)cellularPowerLogNRmmWaveBeamIDs addObject:dCopy];
}

- (void)addCellularPowerLogNRmmWaveCASCCConfigured:(id)configured
{
  configuredCopy = configured;
  cellularPowerLogNRmmWaveCASCCConfigureds = self->_cellularPowerLogNRmmWaveCASCCConfigureds;
  v8 = configuredCopy;
  if (!cellularPowerLogNRmmWaveCASCCConfigureds)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogNRmmWaveCASCCConfigureds;
    self->_cellularPowerLogNRmmWaveCASCCConfigureds = v6;

    configuredCopy = v8;
    cellularPowerLogNRmmWaveCASCCConfigureds = self->_cellularPowerLogNRmmWaveCASCCConfigureds;
  }

  [(NSMutableArray *)cellularPowerLogNRmmWaveCASCCConfigureds addObject:configuredCopy];
}

- (void)addCellularPowerLogNRmmWaveCASCCActivated:(id)activated
{
  activatedCopy = activated;
  cellularPowerLogNRmmWaveCASCCActivateds = self->_cellularPowerLogNRmmWaveCASCCActivateds;
  v8 = activatedCopy;
  if (!cellularPowerLogNRmmWaveCASCCActivateds)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogNRmmWaveCASCCActivateds;
    self->_cellularPowerLogNRmmWaveCASCCActivateds = v6;

    activatedCopy = v8;
    cellularPowerLogNRmmWaveCASCCActivateds = self->_cellularPowerLogNRmmWaveCASCCActivateds;
  }

  [(NSMutableArray *)cellularPowerLogNRmmWaveCASCCActivateds addObject:activatedCopy];
}

- (void)addCellularPowerLogNRmmWaveRxTx:(id)tx
{
  txCopy = tx;
  cellularPowerLogNRmmWaveRxTxs = self->_cellularPowerLogNRmmWaveRxTxs;
  v8 = txCopy;
  if (!cellularPowerLogNRmmWaveRxTxs)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogNRmmWaveRxTxs;
    self->_cellularPowerLogNRmmWaveRxTxs = v6;

    txCopy = v8;
    cellularPowerLogNRmmWaveRxTxs = self->_cellularPowerLogNRmmWaveRxTxs;
  }

  [(NSMutableArray *)cellularPowerLogNRmmWaveRxTxs addObject:txCopy];
}

- (void)addCellularPowerLogNRmmWaveCarrierComponentInfo:(id)info
{
  infoCopy = info;
  cellularPowerLogNRmmWaveCarrierComponentInfos = self->_cellularPowerLogNRmmWaveCarrierComponentInfos;
  v8 = infoCopy;
  if (!cellularPowerLogNRmmWaveCarrierComponentInfos)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogNRmmWaveCarrierComponentInfos;
    self->_cellularPowerLogNRmmWaveCarrierComponentInfos = v6;

    infoCopy = v8;
    cellularPowerLogNRmmWaveCarrierComponentInfos = self->_cellularPowerLogNRmmWaveCarrierComponentInfos;
  }

  [(NSMutableArray *)cellularPowerLogNRmmWaveCarrierComponentInfos addObject:infoCopy];
}

- (void)addCellularPowerLogNRmmWaveDLTBS:(id)s
{
  sCopy = s;
  cellularPowerLogNRmmWaveDLTBSs = self->_cellularPowerLogNRmmWaveDLTBSs;
  v8 = sCopy;
  if (!cellularPowerLogNRmmWaveDLTBSs)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogNRmmWaveDLTBSs;
    self->_cellularPowerLogNRmmWaveDLTBSs = v6;

    sCopy = v8;
    cellularPowerLogNRmmWaveDLTBSs = self->_cellularPowerLogNRmmWaveDLTBSs;
  }

  [(NSMutableArray *)cellularPowerLogNRmmWaveDLTBSs addObject:sCopy];
}

- (void)addCellularPowerLogNRMmWaveRSRP:(id)p
{
  pCopy = p;
  cellularPowerLogNRMmWaveRSRPs = self->_cellularPowerLogNRMmWaveRSRPs;
  v8 = pCopy;
  if (!cellularPowerLogNRMmWaveRSRPs)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogNRMmWaveRSRPs;
    self->_cellularPowerLogNRMmWaveRSRPs = v6;

    pCopy = v8;
    cellularPowerLogNRMmWaveRSRPs = self->_cellularPowerLogNRMmWaveRSRPs;
  }

  [(NSMutableArray *)cellularPowerLogNRMmWaveRSRPs addObject:pCopy];
}

- (void)addCellularPowerLogNRMmWaveTxPower:(id)power
{
  powerCopy = power;
  cellularPowerLogNRMmWaveTxPowers = self->_cellularPowerLogNRMmWaveTxPowers;
  v8 = powerCopy;
  if (!cellularPowerLogNRMmWaveTxPowers)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogNRMmWaveTxPowers;
    self->_cellularPowerLogNRMmWaveTxPowers = v6;

    powerCopy = v8;
    cellularPowerLogNRMmWaveTxPowers = self->_cellularPowerLogNRMmWaveTxPowers;
  }

  [(NSMutableArray *)cellularPowerLogNRMmWaveTxPowers addObject:powerCopy];
}

- (void)addCellularPowerLogNRMmWaveULCAState:(id)state
{
  stateCopy = state;
  cellularPowerLogNRMmWaveULCAStates = self->_cellularPowerLogNRMmWaveULCAStates;
  v8 = stateCopy;
  if (!cellularPowerLogNRMmWaveULCAStates)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogNRMmWaveULCAStates;
    self->_cellularPowerLogNRMmWaveULCAStates = v6;

    stateCopy = v8;
    cellularPowerLogNRMmWaveULCAStates = self->_cellularPowerLogNRMmWaveULCAStates;
  }

  [(NSMutableArray *)cellularPowerLogNRMmWaveULCAStates addObject:stateCopy];
}

- (void)addCellularPowerLogNRmmWaveBWPSCC:(id)c
{
  cCopy = c;
  cellularPowerLogNRmmWaveBWPSCCs = self->_cellularPowerLogNRmmWaveBWPSCCs;
  v8 = cCopy;
  if (!cellularPowerLogNRmmWaveBWPSCCs)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogNRmmWaveBWPSCCs;
    self->_cellularPowerLogNRmmWaveBWPSCCs = v6;

    cCopy = v8;
    cellularPowerLogNRmmWaveBWPSCCs = self->_cellularPowerLogNRmmWaveBWPSCCs;
  }

  [(NSMutableArray *)cellularPowerLogNRmmWaveBWPSCCs addObject:cCopy];
}

- (void)addCellularPowerLogSFTState:(id)state
{
  stateCopy = state;
  cellularPowerLogSFTStates = self->_cellularPowerLogSFTStates;
  v8 = stateCopy;
  if (!cellularPowerLogSFTStates)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogSFTStates;
    self->_cellularPowerLogSFTStates = v6;

    stateCopy = v8;
    cellularPowerLogSFTStates = self->_cellularPowerLogSFTStates;
  }

  [(NSMutableArray *)cellularPowerLogSFTStates addObject:stateCopy];
}

- (void)addCellularPowerLogSFTRxTx:(id)tx
{
  txCopy = tx;
  cellularPowerLogSFTRxTxs = self->_cellularPowerLogSFTRxTxs;
  v8 = txCopy;
  if (!cellularPowerLogSFTRxTxs)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogSFTRxTxs;
    self->_cellularPowerLogSFTRxTxs = v6;

    txCopy = v8;
    cellularPowerLogSFTRxTxs = self->_cellularPowerLogSFTRxTxs;
  }

  [(NSMutableArray *)cellularPowerLogSFTRxTxs addObject:txCopy];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = AWDMETRICSCellularPowerLog;
  v4 = [(AWDMETRICSCellularPowerLog *)&v8 description];
  dictionaryRepresentation = [(AWDMETRICSCellularPowerLog *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v1158 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if ([(NSMutableArray *)self->_cellularPerClientProfileTriggerCounts count])
  {
    v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPerClientProfileTriggerCounts, "count")}];
    v1058 = 0u;
    v1059 = 0u;
    v1060 = 0u;
    v1061 = 0u;
    v5 = self->_cellularPerClientProfileTriggerCounts;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v1058 objects:v1157 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v1059;
      do
      {
        v9 = 0;
        do
        {
          if (*v1059 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v1058 + 1) + 8 * v9) dictionaryRepresentation];
          [v4 addObject:dictionaryRepresentation];

          ++v9;
        }

        while (v7 != v9);
        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v1058 objects:v1157 count:16];
      }

      while (v7);
    }

    [dictionary setObject:v4 forKey:@"cellularPerClientProfileTriggerCount"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogXOShutdowns count])
  {
    v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogXOShutdowns, "count")}];
    v1054 = 0u;
    v1055 = 0u;
    v1056 = 0u;
    v1057 = 0u;
    v12 = self->_cellularPowerLogXOShutdowns;
    v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v1054 objects:v1156 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v1055;
      do
      {
        v16 = 0;
        do
        {
          if (*v1055 != v15)
          {
            objc_enumerationMutation(v12);
          }

          dictionaryRepresentation2 = [*(*(&v1054 + 1) + 8 * v16) dictionaryRepresentation];
          [v11 addObject:dictionaryRepresentation2];

          ++v16;
        }

        while (v14 != v16);
        v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v1054 objects:v1156 count:16];
      }

      while (v14);
    }

    [dictionary setObject:v11 forKey:@"cellularPowerLogXOShutdown"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogAPPSPerfLevels count])
  {
    v18 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogAPPSPerfLevels, "count")}];
    v1050 = 0u;
    v1051 = 0u;
    v1052 = 0u;
    v1053 = 0u;
    v19 = self->_cellularPowerLogAPPSPerfLevels;
    v20 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v1050 objects:v1155 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v1051;
      do
      {
        v23 = 0;
        do
        {
          if (*v1051 != v22)
          {
            objc_enumerationMutation(v19);
          }

          dictionaryRepresentation3 = [*(*(&v1050 + 1) + 8 * v23) dictionaryRepresentation];
          [v18 addObject:dictionaryRepresentation3];

          ++v23;
        }

        while (v21 != v23);
        v21 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v1050 objects:v1155 count:16];
      }

      while (v21);
    }

    [dictionary setObject:v18 forKey:@"cellularPowerLogAPPSPerfLevels"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogAPPSCXOShutdowns count])
  {
    v25 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogAPPSCXOShutdowns, "count")}];
    v1046 = 0u;
    v1047 = 0u;
    v1048 = 0u;
    v1049 = 0u;
    v26 = self->_cellularPowerLogAPPSCXOShutdowns;
    v27 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v1046 objects:v1154 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v1047;
      do
      {
        v30 = 0;
        do
        {
          if (*v1047 != v29)
          {
            objc_enumerationMutation(v26);
          }

          dictionaryRepresentation4 = [*(*(&v1046 + 1) + 8 * v30) dictionaryRepresentation];
          [v25 addObject:dictionaryRepresentation4];

          ++v30;
        }

        while (v28 != v30);
        v28 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v1046 objects:v1154 count:16];
      }

      while (v28);
    }

    [dictionary setObject:v25 forKey:@"cellularPowerLogAPPSCXOShutdown"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogAPPSSleepVetos count])
  {
    v32 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogAPPSSleepVetos, "count")}];
    v1042 = 0u;
    v1043 = 0u;
    v1044 = 0u;
    v1045 = 0u;
    v33 = self->_cellularPowerLogAPPSSleepVetos;
    v34 = [(NSMutableArray *)v33 countByEnumeratingWithState:&v1042 objects:v1153 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v1043;
      do
      {
        v37 = 0;
        do
        {
          if (*v1043 != v36)
          {
            objc_enumerationMutation(v33);
          }

          dictionaryRepresentation5 = [*(*(&v1042 + 1) + 8 * v37) dictionaryRepresentation];
          [v32 addObject:dictionaryRepresentation5];

          ++v37;
        }

        while (v35 != v37);
        v35 = [(NSMutableArray *)v33 countByEnumeratingWithState:&v1042 objects:v1153 count:16];
      }

      while (v35);
    }

    [dictionary setObject:v32 forKey:@"cellularPowerLogAPPSSleepVeto"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogMCPMSleepVetos count])
  {
    v39 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogMCPMSleepVetos, "count")}];
    v1038 = 0u;
    v1039 = 0u;
    v1040 = 0u;
    v1041 = 0u;
    v40 = self->_cellularPowerLogMCPMSleepVetos;
    v41 = [(NSMutableArray *)v40 countByEnumeratingWithState:&v1038 objects:v1152 count:16];
    if (v41)
    {
      v42 = v41;
      v43 = *v1039;
      do
      {
        v44 = 0;
        do
        {
          if (*v1039 != v43)
          {
            objc_enumerationMutation(v40);
          }

          dictionaryRepresentation6 = [*(*(&v1038 + 1) + 8 * v44) dictionaryRepresentation];
          [v39 addObject:dictionaryRepresentation6];

          ++v44;
        }

        while (v42 != v44);
        v42 = [(NSMutableArray *)v40 countByEnumeratingWithState:&v1038 objects:v1152 count:16];
      }

      while (v42);
    }

    [dictionary setObject:v39 forKey:@"cellularPowerLogMCPMSleepVeto"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogMPSSPerfLevels count])
  {
    v46 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogMPSSPerfLevels, "count")}];
    v1034 = 0u;
    v1035 = 0u;
    v1036 = 0u;
    v1037 = 0u;
    v47 = self->_cellularPowerLogMPSSPerfLevels;
    v48 = [(NSMutableArray *)v47 countByEnumeratingWithState:&v1034 objects:v1151 count:16];
    if (v48)
    {
      v49 = v48;
      v50 = *v1035;
      do
      {
        v51 = 0;
        do
        {
          if (*v1035 != v50)
          {
            objc_enumerationMutation(v47);
          }

          dictionaryRepresentation7 = [*(*(&v1034 + 1) + 8 * v51) dictionaryRepresentation];
          [v46 addObject:dictionaryRepresentation7];

          ++v51;
        }

        while (v49 != v51);
        v49 = [(NSMutableArray *)v47 countByEnumeratingWithState:&v1034 objects:v1151 count:16];
      }

      while (v49);
    }

    [dictionary setObject:v46 forKey:@"cellularPowerLogMPSSPerfLevels"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogGPSStates count])
  {
    v53 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogGPSStates, "count")}];
    v1030 = 0u;
    v1031 = 0u;
    v1032 = 0u;
    v1033 = 0u;
    v54 = self->_cellularPowerLogGPSStates;
    v55 = [(NSMutableArray *)v54 countByEnumeratingWithState:&v1030 objects:v1150 count:16];
    if (v55)
    {
      v56 = v55;
      v57 = *v1031;
      do
      {
        v58 = 0;
        do
        {
          if (*v1031 != v57)
          {
            objc_enumerationMutation(v54);
          }

          dictionaryRepresentation8 = [*(*(&v1030 + 1) + 8 * v58) dictionaryRepresentation];
          [v53 addObject:dictionaryRepresentation8];

          ++v58;
        }

        while (v56 != v58);
        v56 = [(NSMutableArray *)v54 countByEnumeratingWithState:&v1030 objects:v1150 count:16];
      }

      while (v56);
    }

    [dictionary setObject:v53 forKey:@"cellularPowerLogGPSStates"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogAOPUARTStates count])
  {
    v60 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogAOPUARTStates, "count")}];
    v1026 = 0u;
    v1027 = 0u;
    v1028 = 0u;
    v1029 = 0u;
    v61 = self->_cellularPowerLogAOPUARTStates;
    v62 = [(NSMutableArray *)v61 countByEnumeratingWithState:&v1026 objects:v1149 count:16];
    if (v62)
    {
      v63 = v62;
      v64 = *v1027;
      do
      {
        v65 = 0;
        do
        {
          if (*v1027 != v64)
          {
            objc_enumerationMutation(v61);
          }

          dictionaryRepresentation9 = [*(*(&v1026 + 1) + 8 * v65) dictionaryRepresentation];
          [v60 addObject:dictionaryRepresentation9];

          ++v65;
        }

        while (v63 != v65);
        v63 = [(NSMutableArray *)v61 countByEnumeratingWithState:&v1026 objects:v1149 count:16];
      }

      while (v63);
    }

    [dictionary setObject:v60 forKey:@"cellularPowerLogAOP_UARTStates"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogWLANUARTStates count])
  {
    v67 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogWLANUARTStates, "count")}];
    v1022 = 0u;
    v1023 = 0u;
    v1024 = 0u;
    v1025 = 0u;
    v68 = self->_cellularPowerLogWLANUARTStates;
    v69 = [(NSMutableArray *)v68 countByEnumeratingWithState:&v1022 objects:v1148 count:16];
    if (v69)
    {
      v70 = v69;
      v71 = *v1023;
      do
      {
        v72 = 0;
        do
        {
          if (*v1023 != v71)
          {
            objc_enumerationMutation(v68);
          }

          dictionaryRepresentation10 = [*(*(&v1022 + 1) + 8 * v72) dictionaryRepresentation];
          [v67 addObject:dictionaryRepresentation10];

          ++v72;
        }

        while (v70 != v72);
        v70 = [(NSMutableArray *)v68 countByEnumeratingWithState:&v1022 objects:v1148 count:16];
      }

      while (v70);
    }

    [dictionary setObject:v67 forKey:@"cellularPowerLogWLAN_UARTStates"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogPCIeStates count])
  {
    v74 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogPCIeStates, "count")}];
    v1018 = 0u;
    v1019 = 0u;
    v1020 = 0u;
    v1021 = 0u;
    v75 = self->_cellularPowerLogPCIeStates;
    v76 = [(NSMutableArray *)v75 countByEnumeratingWithState:&v1018 objects:v1147 count:16];
    if (v76)
    {
      v77 = v76;
      v78 = *v1019;
      do
      {
        v79 = 0;
        do
        {
          if (*v1019 != v78)
          {
            objc_enumerationMutation(v75);
          }

          dictionaryRepresentation11 = [*(*(&v1018 + 1) + 8 * v79) dictionaryRepresentation];
          [v74 addObject:dictionaryRepresentation11];

          ++v79;
        }

        while (v77 != v79);
        v77 = [(NSMutableArray *)v75 countByEnumeratingWithState:&v1018 objects:v1147 count:16];
      }

      while (v77);
    }

    [dictionary setObject:v74 forKey:@"cellularPowerLogPCIeStates"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogL1SleepStates count])
  {
    v81 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogL1SleepStates, "count")}];
    v1014 = 0u;
    v1015 = 0u;
    v1016 = 0u;
    v1017 = 0u;
    v82 = self->_cellularPowerLogL1SleepStates;
    v83 = [(NSMutableArray *)v82 countByEnumeratingWithState:&v1014 objects:v1146 count:16];
    if (v83)
    {
      v84 = v83;
      v85 = *v1015;
      do
      {
        v86 = 0;
        do
        {
          if (*v1015 != v85)
          {
            objc_enumerationMutation(v82);
          }

          dictionaryRepresentation12 = [*(*(&v1014 + 1) + 8 * v86) dictionaryRepresentation];
          [v81 addObject:dictionaryRepresentation12];

          ++v86;
        }

        while (v84 != v86);
        v84 = [(NSMutableArray *)v82 countByEnumeratingWithState:&v1014 objects:v1146 count:16];
      }

      while (v84);
    }

    [dictionary setObject:v81 forKey:@"cellularPowerLogL1SleepStates"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogPowerEstimators count])
  {
    v88 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogPowerEstimators, "count")}];
    v1010 = 0u;
    v1011 = 0u;
    v1012 = 0u;
    v1013 = 0u;
    v89 = self->_cellularPowerLogPowerEstimators;
    v90 = [(NSMutableArray *)v89 countByEnumeratingWithState:&v1010 objects:v1145 count:16];
    if (v90)
    {
      v91 = v90;
      v92 = *v1011;
      do
      {
        v93 = 0;
        do
        {
          if (*v1011 != v92)
          {
            objc_enumerationMutation(v89);
          }

          dictionaryRepresentation13 = [*(*(&v1010 + 1) + 8 * v93) dictionaryRepresentation];
          [v88 addObject:dictionaryRepresentation13];

          ++v93;
        }

        while (v91 != v93);
        v91 = [(NSMutableArray *)v89 countByEnumeratingWithState:&v1010 objects:v1145 count:16];
      }

      while (v91);
    }

    [dictionary setObject:v88 forKey:@"cellularPowerLogPowerEstimator"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogRFTunerStatsHists count])
  {
    v95 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogRFTunerStatsHists, "count")}];
    v1006 = 0u;
    v1007 = 0u;
    v1008 = 0u;
    v1009 = 0u;
    v96 = self->_cellularPowerLogRFTunerStatsHists;
    v97 = [(NSMutableArray *)v96 countByEnumeratingWithState:&v1006 objects:v1144 count:16];
    if (v97)
    {
      v98 = v97;
      v99 = *v1007;
      do
      {
        v100 = 0;
        do
        {
          if (*v1007 != v99)
          {
            objc_enumerationMutation(v96);
          }

          dictionaryRepresentation14 = [*(*(&v1006 + 1) + 8 * v100) dictionaryRepresentation];
          [v95 addObject:dictionaryRepresentation14];

          ++v100;
        }

        while (v98 != v100);
        v98 = [(NSMutableArray *)v96 countByEnumeratingWithState:&v1006 objects:v1144 count:16];
      }

      while (v98);
    }

    [dictionary setObject:v95 forKey:@"cellularPowerLogRFTunerStatsHist"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogSPMIs count])
  {
    v102 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogSPMIs, "count")}];
    v1002 = 0u;
    v1003 = 0u;
    v1004 = 0u;
    v1005 = 0u;
    v103 = self->_cellularPowerLogSPMIs;
    v104 = [(NSMutableArray *)v103 countByEnumeratingWithState:&v1002 objects:v1143 count:16];
    if (v104)
    {
      v105 = v104;
      v106 = *v1003;
      do
      {
        v107 = 0;
        do
        {
          if (*v1003 != v106)
          {
            objc_enumerationMutation(v103);
          }

          dictionaryRepresentation15 = [*(*(&v1002 + 1) + 8 * v107) dictionaryRepresentation];
          [v102 addObject:dictionaryRepresentation15];

          ++v107;
        }

        while (v105 != v107);
        v105 = [(NSMutableArray *)v103 countByEnumeratingWithState:&v1002 objects:v1143 count:16];
      }

      while (v105);
    }

    [dictionary setObject:v102 forKey:@"cellularPowerLogSPMI"];
  }

  if ([(NSMutableArray *)self->_cellularRfTunerHists count])
  {
    v109 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularRfTunerHists, "count")}];
    v998 = 0u;
    v999 = 0u;
    v1000 = 0u;
    v1001 = 0u;
    v110 = self->_cellularRfTunerHists;
    v111 = [(NSMutableArray *)v110 countByEnumeratingWithState:&v998 objects:v1142 count:16];
    if (v111)
    {
      v112 = v111;
      v113 = *v999;
      do
      {
        v114 = 0;
        do
        {
          if (*v999 != v113)
          {
            objc_enumerationMutation(v110);
          }

          dictionaryRepresentation16 = [*(*(&v998 + 1) + 8 * v114) dictionaryRepresentation];
          [v109 addObject:dictionaryRepresentation16];

          ++v114;
        }

        while (v112 != v114);
        v112 = [(NSMutableArray *)v110 countByEnumeratingWithState:&v998 objects:v1142 count:16];
      }

      while (v112);
    }

    [dictionary setObject:v109 forKey:@"cellularRfTunerHist"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogLTEConfiguredCASCCStates count])
  {
    v116 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogLTEConfiguredCASCCStates, "count")}];
    v994 = 0u;
    v995 = 0u;
    v996 = 0u;
    v997 = 0u;
    v117 = self->_cellularPowerLogLTEConfiguredCASCCStates;
    v118 = [(NSMutableArray *)v117 countByEnumeratingWithState:&v994 objects:v1141 count:16];
    if (v118)
    {
      v119 = v118;
      v120 = *v995;
      do
      {
        v121 = 0;
        do
        {
          if (*v995 != v120)
          {
            objc_enumerationMutation(v117);
          }

          dictionaryRepresentation17 = [*(*(&v994 + 1) + 8 * v121) dictionaryRepresentation];
          [v116 addObject:dictionaryRepresentation17];

          ++v121;
        }

        while (v119 != v121);
        v119 = [(NSMutableArray *)v117 countByEnumeratingWithState:&v994 objects:v1141 count:16];
      }

      while (v119);
    }

    [dictionary setObject:v116 forKey:@"cellularPowerLogLTEConfiguredCA_SCCStates"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogLTEActivatedCASCCStates count])
  {
    v123 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogLTEActivatedCASCCStates, "count")}];
    v990 = 0u;
    v991 = 0u;
    v992 = 0u;
    v993 = 0u;
    v124 = self->_cellularPowerLogLTEActivatedCASCCStates;
    v125 = [(NSMutableArray *)v124 countByEnumeratingWithState:&v990 objects:v1140 count:16];
    if (v125)
    {
      v126 = v125;
      v127 = *v991;
      do
      {
        v128 = 0;
        do
        {
          if (*v991 != v127)
          {
            objc_enumerationMutation(v124);
          }

          dictionaryRepresentation18 = [*(*(&v990 + 1) + 8 * v128) dictionaryRepresentation];
          [v123 addObject:dictionaryRepresentation18];

          ++v128;
        }

        while (v126 != v128);
        v126 = [(NSMutableArray *)v124 countByEnumeratingWithState:&v990 objects:v1140 count:16];
      }

      while (v126);
    }

    [dictionary setObject:v123 forKey:@"cellularPowerLogLTEActivatedCA_SCCStates"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogLTERxTxActivityStates count])
  {
    v130 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogLTERxTxActivityStates, "count")}];
    v986 = 0u;
    v987 = 0u;
    v988 = 0u;
    v989 = 0u;
    v131 = self->_cellularPowerLogLTERxTxActivityStates;
    v132 = [(NSMutableArray *)v131 countByEnumeratingWithState:&v986 objects:v1139 count:16];
    if (v132)
    {
      v133 = v132;
      v134 = *v987;
      do
      {
        v135 = 0;
        do
        {
          if (*v987 != v134)
          {
            objc_enumerationMutation(v131);
          }

          dictionaryRepresentation19 = [*(*(&v986 + 1) + 8 * v135) dictionaryRepresentation];
          [v130 addObject:dictionaryRepresentation19];

          ++v135;
        }

        while (v133 != v135);
        v133 = [(NSMutableArray *)v131 countByEnumeratingWithState:&v986 objects:v1139 count:16];
      }

      while (v133);
    }

    [dictionary setObject:v130 forKey:@"cellularPowerLogLTERxTxActivityStates"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogLTECarrierComponentInfos count])
  {
    v137 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogLTECarrierComponentInfos, "count")}];
    v982 = 0u;
    v983 = 0u;
    v984 = 0u;
    v985 = 0u;
    v138 = self->_cellularPowerLogLTECarrierComponentInfos;
    v139 = [(NSMutableArray *)v138 countByEnumeratingWithState:&v982 objects:v1138 count:16];
    if (v139)
    {
      v140 = v139;
      v141 = *v983;
      do
      {
        v142 = 0;
        do
        {
          if (*v983 != v141)
          {
            objc_enumerationMutation(v138);
          }

          dictionaryRepresentation20 = [*(*(&v982 + 1) + 8 * v142) dictionaryRepresentation];
          [v137 addObject:dictionaryRepresentation20];

          ++v142;
        }

        while (v140 != v142);
        v140 = [(NSMutableArray *)v138 countByEnumeratingWithState:&v982 objects:v1138 count:16];
      }

      while (v140);
    }

    [dictionary setObject:v137 forKey:@"cellularPowerLogLTECarrierComponentInfo"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogLTEAggregatedDLTBSs count])
  {
    v144 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogLTEAggregatedDLTBSs, "count")}];
    v978 = 0u;
    v979 = 0u;
    v980 = 0u;
    v981 = 0u;
    v145 = self->_cellularPowerLogLTEAggregatedDLTBSs;
    v146 = [(NSMutableArray *)v145 countByEnumeratingWithState:&v978 objects:v1137 count:16];
    if (v146)
    {
      v147 = v146;
      v148 = *v979;
      do
      {
        v149 = 0;
        do
        {
          if (*v979 != v148)
          {
            objc_enumerationMutation(v145);
          }

          dictionaryRepresentation21 = [*(*(&v978 + 1) + 8 * v149) dictionaryRepresentation];
          [v144 addObject:dictionaryRepresentation21];

          ++v149;
        }

        while (v147 != v149);
        v147 = [(NSMutableArray *)v145 countByEnumeratingWithState:&v978 objects:v1137 count:16];
      }

      while (v147);
    }

    [dictionary setObject:v144 forKey:@"cellularPowerLogLTEAggregatedDL_TBS"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogLTERSRPs count])
  {
    v151 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogLTERSRPs, "count")}];
    v974 = 0u;
    v975 = 0u;
    v976 = 0u;
    v977 = 0u;
    v152 = self->_cellularPowerLogLTERSRPs;
    v153 = [(NSMutableArray *)v152 countByEnumeratingWithState:&v974 objects:v1136 count:16];
    if (v153)
    {
      v154 = v153;
      v155 = *v975;
      do
      {
        v156 = 0;
        do
        {
          if (*v975 != v155)
          {
            objc_enumerationMutation(v152);
          }

          dictionaryRepresentation22 = [*(*(&v974 + 1) + 8 * v156) dictionaryRepresentation];
          [v151 addObject:dictionaryRepresentation22];

          ++v156;
        }

        while (v154 != v156);
        v154 = [(NSMutableArray *)v152 countByEnumeratingWithState:&v974 objects:v1136 count:16];
      }

      while (v154);
    }

    [dictionary setObject:v151 forKey:@"cellularPowerLogLTE_RSRP"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogLTESINRs count])
  {
    v158 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogLTESINRs, "count")}];
    v970 = 0u;
    v971 = 0u;
    v972 = 0u;
    v973 = 0u;
    v159 = self->_cellularPowerLogLTESINRs;
    v160 = [(NSMutableArray *)v159 countByEnumeratingWithState:&v970 objects:v1135 count:16];
    if (v160)
    {
      v161 = v160;
      v162 = *v971;
      do
      {
        v163 = 0;
        do
        {
          if (*v971 != v162)
          {
            objc_enumerationMutation(v159);
          }

          dictionaryRepresentation23 = [*(*(&v970 + 1) + 8 * v163) dictionaryRepresentation];
          [v158 addObject:dictionaryRepresentation23];

          ++v163;
        }

        while (v161 != v163);
        v161 = [(NSMutableArray *)v159 countByEnumeratingWithState:&v970 objects:v1135 count:16];
      }

      while (v161);
    }

    [dictionary setObject:v158 forKey:@"cellularPowerLogLTE_SINR"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogLTETxPowers count])
  {
    v165 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogLTETxPowers, "count")}];
    v966 = 0u;
    v967 = 0u;
    v968 = 0u;
    v969 = 0u;
    v166 = self->_cellularPowerLogLTETxPowers;
    v167 = [(NSMutableArray *)v166 countByEnumeratingWithState:&v966 objects:v1134 count:16];
    if (v167)
    {
      v168 = v167;
      v169 = *v967;
      do
      {
        v170 = 0;
        do
        {
          if (*v967 != v169)
          {
            objc_enumerationMutation(v166);
          }

          dictionaryRepresentation24 = [*(*(&v966 + 1) + 8 * v170) dictionaryRepresentation];
          [v165 addObject:dictionaryRepresentation24];

          ++v170;
        }

        while (v168 != v170);
        v168 = [(NSMutableArray *)v166 countByEnumeratingWithState:&v966 objects:v1134 count:16];
      }

      while (v168);
    }

    [dictionary setObject:v165 forKey:@"cellularPowerLogLTETxPower"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogLTERxDiversitys count])
  {
    v172 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogLTERxDiversitys, "count")}];
    v962 = 0u;
    v963 = 0u;
    v964 = 0u;
    v965 = 0u;
    v173 = self->_cellularPowerLogLTERxDiversitys;
    v174 = [(NSMutableArray *)v173 countByEnumeratingWithState:&v962 objects:v1133 count:16];
    if (v174)
    {
      v175 = v174;
      v176 = *v963;
      do
      {
        v177 = 0;
        do
        {
          if (*v963 != v176)
          {
            objc_enumerationMutation(v173);
          }

          dictionaryRepresentation25 = [*(*(&v962 + 1) + 8 * v177) dictionaryRepresentation];
          [v172 addObject:dictionaryRepresentation25];

          ++v177;
        }

        while (v175 != v177);
        v175 = [(NSMutableArray *)v173 countByEnumeratingWithState:&v962 objects:v1133 count:16];
      }

      while (v175);
    }

    [dictionary setObject:v172 forKey:@"cellularPowerLogLTERxDiversity"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogLTEULCAStates count])
  {
    v179 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogLTEULCAStates, "count")}];
    v958 = 0u;
    v959 = 0u;
    v960 = 0u;
    v961 = 0u;
    v180 = self->_cellularPowerLogLTEULCAStates;
    v181 = [(NSMutableArray *)v180 countByEnumeratingWithState:&v958 objects:v1132 count:16];
    if (v181)
    {
      v182 = v181;
      v183 = *v959;
      do
      {
        v184 = 0;
        do
        {
          if (*v959 != v183)
          {
            objc_enumerationMutation(v180);
          }

          dictionaryRepresentation26 = [*(*(&v958 + 1) + 8 * v184) dictionaryRepresentation];
          [v179 addObject:dictionaryRepresentation26];

          ++v184;
        }

        while (v182 != v184);
        v182 = [(NSMutableArray *)v180 countByEnumeratingWithState:&v958 objects:v1132 count:16];
      }

      while (v182);
    }

    [dictionary setObject:v179 forKey:@"cellularPowerLogLTE_UL_CAState"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogProtocolStates count])
  {
    v186 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogProtocolStates, "count")}];
    v954 = 0u;
    v955 = 0u;
    v956 = 0u;
    v957 = 0u;
    v187 = self->_cellularPowerLogProtocolStates;
    v188 = [(NSMutableArray *)v187 countByEnumeratingWithState:&v954 objects:v1131 count:16];
    if (v188)
    {
      v189 = v188;
      v190 = *v955;
      do
      {
        v191 = 0;
        do
        {
          if (*v955 != v190)
          {
            objc_enumerationMutation(v187);
          }

          dictionaryRepresentation27 = [*(*(&v954 + 1) + 8 * v191) dictionaryRepresentation];
          [v186 addObject:dictionaryRepresentation27];

          ++v191;
        }

        while (v189 != v191);
        v189 = [(NSMutableArray *)v187 countByEnumeratingWithState:&v954 objects:v1131 count:16];
      }

      while (v189);
    }

    [dictionary setObject:v186 forKey:@"cellularPowerLogProtocolState"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogPLMNSearchs count])
  {
    v193 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogPLMNSearchs, "count")}];
    v950 = 0u;
    v951 = 0u;
    v952 = 0u;
    v953 = 0u;
    v194 = self->_cellularPowerLogPLMNSearchs;
    v195 = [(NSMutableArray *)v194 countByEnumeratingWithState:&v950 objects:v1130 count:16];
    if (v195)
    {
      v196 = v195;
      v197 = *v951;
      do
      {
        v198 = 0;
        do
        {
          if (*v951 != v197)
          {
            objc_enumerationMutation(v194);
          }

          dictionaryRepresentation28 = [*(*(&v950 + 1) + 8 * v198) dictionaryRepresentation];
          [v193 addObject:dictionaryRepresentation28];

          ++v198;
        }

        while (v196 != v198);
        v196 = [(NSMutableArray *)v194 countByEnumeratingWithState:&v950 objects:v1130 count:16];
      }

      while (v196);
    }

    [dictionary setObject:v193 forKey:@"cellularPowerLogPLMNSearch"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogGSMTxPowers count])
  {
    v200 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogGSMTxPowers, "count")}];
    v946 = 0u;
    v947 = 0u;
    v948 = 0u;
    v949 = 0u;
    v201 = self->_cellularPowerLogGSMTxPowers;
    v202 = [(NSMutableArray *)v201 countByEnumeratingWithState:&v946 objects:v1129 count:16];
    if (v202)
    {
      v203 = v202;
      v204 = *v947;
      do
      {
        v205 = 0;
        do
        {
          if (*v947 != v204)
          {
            objc_enumerationMutation(v201);
          }

          dictionaryRepresentation29 = [*(*(&v946 + 1) + 8 * v205) dictionaryRepresentation];
          [v200 addObject:dictionaryRepresentation29];

          ++v205;
        }

        while (v203 != v205);
        v203 = [(NSMutableArray *)v201 countByEnumeratingWithState:&v946 objects:v1129 count:16];
      }

      while (v203);
    }

    [dictionary setObject:v200 forKey:@"cellularPowerLogGSMTxPower"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogGSMRxRSSIs count])
  {
    v207 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogGSMRxRSSIs, "count")}];
    v942 = 0u;
    v943 = 0u;
    v944 = 0u;
    v945 = 0u;
    v208 = self->_cellularPowerLogGSMRxRSSIs;
    v209 = [(NSMutableArray *)v208 countByEnumeratingWithState:&v942 objects:v1128 count:16];
    if (v209)
    {
      v210 = v209;
      v211 = *v943;
      do
      {
        v212 = 0;
        do
        {
          if (*v943 != v211)
          {
            objc_enumerationMutation(v208);
          }

          dictionaryRepresentation30 = [*(*(&v942 + 1) + 8 * v212) dictionaryRepresentation];
          [v207 addObject:dictionaryRepresentation30];

          ++v212;
        }

        while (v210 != v212);
        v210 = [(NSMutableArray *)v208 countByEnumeratingWithState:&v942 objects:v1128 count:16];
      }

      while (v210);
    }

    [dictionary setObject:v207 forKey:@"cellularPowerLogGSMRxRSSI"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogGSMRABModes count])
  {
    v214 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogGSMRABModes, "count")}];
    v938 = 0u;
    v939 = 0u;
    v940 = 0u;
    v941 = 0u;
    v215 = self->_cellularPowerLogGSMRABModes;
    v216 = [(NSMutableArray *)v215 countByEnumeratingWithState:&v938 objects:v1127 count:16];
    if (v216)
    {
      v217 = v216;
      v218 = *v939;
      do
      {
        v219 = 0;
        do
        {
          if (*v939 != v218)
          {
            objc_enumerationMutation(v215);
          }

          dictionaryRepresentation31 = [*(*(&v938 + 1) + 8 * v219) dictionaryRepresentation];
          [v214 addObject:dictionaryRepresentation31];

          ++v219;
        }

        while (v217 != v219);
        v217 = [(NSMutableArray *)v215 countByEnumeratingWithState:&v938 objects:v1127 count:16];
      }

      while (v217);
    }

    [dictionary setObject:v214 forKey:@"cellularPowerLogGSM_RABMode"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogGSMRxDiversitys count])
  {
    v221 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogGSMRxDiversitys, "count")}];
    v934 = 0u;
    v935 = 0u;
    v936 = 0u;
    v937 = 0u;
    v222 = self->_cellularPowerLogGSMRxDiversitys;
    v223 = [(NSMutableArray *)v222 countByEnumeratingWithState:&v934 objects:v1126 count:16];
    if (v223)
    {
      v224 = v223;
      v225 = *v935;
      do
      {
        v226 = 0;
        do
        {
          if (*v935 != v225)
          {
            objc_enumerationMutation(v222);
          }

          dictionaryRepresentation32 = [*(*(&v934 + 1) + 8 * v226) dictionaryRepresentation];
          [v221 addObject:dictionaryRepresentation32];

          ++v226;
        }

        while (v224 != v226);
        v224 = [(NSMutableArray *)v222 countByEnumeratingWithState:&v934 objects:v1126 count:16];
      }

      while (v224);
    }

    [dictionary setObject:v221 forKey:@"cellularPowerLogGSMRxDiversity"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogWCDMATxPowers count])
  {
    v228 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogWCDMATxPowers, "count")}];
    v930 = 0u;
    v931 = 0u;
    v932 = 0u;
    v933 = 0u;
    v229 = self->_cellularPowerLogWCDMATxPowers;
    v230 = [(NSMutableArray *)v229 countByEnumeratingWithState:&v930 objects:v1125 count:16];
    if (v230)
    {
      v231 = v230;
      v232 = *v931;
      do
      {
        v233 = 0;
        do
        {
          if (*v931 != v232)
          {
            objc_enumerationMutation(v229);
          }

          dictionaryRepresentation33 = [*(*(&v930 + 1) + 8 * v233) dictionaryRepresentation];
          [v228 addObject:dictionaryRepresentation33];

          ++v233;
        }

        while (v231 != v233);
        v231 = [(NSMutableArray *)v229 countByEnumeratingWithState:&v930 objects:v1125 count:16];
      }

      while (v231);
    }

    [dictionary setObject:v228 forKey:@"cellularPowerLogWCDMATxPower"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogWCDMARxRSSIs count])
  {
    v235 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogWCDMARxRSSIs, "count")}];
    v926 = 0u;
    v927 = 0u;
    v928 = 0u;
    v929 = 0u;
    v236 = self->_cellularPowerLogWCDMARxRSSIs;
    v237 = [(NSMutableArray *)v236 countByEnumeratingWithState:&v926 objects:v1124 count:16];
    if (v237)
    {
      v238 = v237;
      v239 = *v927;
      do
      {
        v240 = 0;
        do
        {
          if (*v927 != v239)
          {
            objc_enumerationMutation(v236);
          }

          dictionaryRepresentation34 = [*(*(&v926 + 1) + 8 * v240) dictionaryRepresentation];
          [v235 addObject:dictionaryRepresentation34];

          ++v240;
        }

        while (v238 != v240);
        v238 = [(NSMutableArray *)v236 countByEnumeratingWithState:&v926 objects:v1124 count:16];
      }

      while (v238);
    }

    [dictionary setObject:v235 forKey:@"cellularPowerLogWCDMARxRSSI"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogWCDMARxDiversitys count])
  {
    v242 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogWCDMARxDiversitys, "count")}];
    v922 = 0u;
    v923 = 0u;
    v924 = 0u;
    v925 = 0u;
    v243 = self->_cellularPowerLogWCDMARxDiversitys;
    v244 = [(NSMutableArray *)v243 countByEnumeratingWithState:&v922 objects:v1123 count:16];
    if (v244)
    {
      v245 = v244;
      v246 = *v923;
      do
      {
        v247 = 0;
        do
        {
          if (*v923 != v246)
          {
            objc_enumerationMutation(v243);
          }

          dictionaryRepresentation35 = [*(*(&v922 + 1) + 8 * v247) dictionaryRepresentation];
          [v242 addObject:dictionaryRepresentation35];

          ++v247;
        }

        while (v245 != v247);
        v245 = [(NSMutableArray *)v243 countByEnumeratingWithState:&v922 objects:v1123 count:16];
      }

      while (v245);
    }

    [dictionary setObject:v242 forKey:@"cellularPowerLogWCDMARxDiversity"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogWCDMARABModes count])
  {
    v249 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogWCDMARABModes, "count")}];
    v918 = 0u;
    v919 = 0u;
    v920 = 0u;
    v921 = 0u;
    v250 = self->_cellularPowerLogWCDMARABModes;
    v251 = [(NSMutableArray *)v250 countByEnumeratingWithState:&v918 objects:v1122 count:16];
    if (v251)
    {
      v252 = v251;
      v253 = *v919;
      do
      {
        v254 = 0;
        do
        {
          if (*v919 != v253)
          {
            objc_enumerationMutation(v250);
          }

          dictionaryRepresentation36 = [*(*(&v918 + 1) + 8 * v254) dictionaryRepresentation];
          [v249 addObject:dictionaryRepresentation36];

          ++v254;
        }

        while (v252 != v254);
        v252 = [(NSMutableArray *)v250 countByEnumeratingWithState:&v918 objects:v1122 count:16];
      }

      while (v252);
    }

    [dictionary setObject:v249 forKey:@"cellularPowerLogWCDMA_RABMode"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogWCDMARABTypes count])
  {
    v256 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogWCDMARABTypes, "count")}];
    v914 = 0u;
    v915 = 0u;
    v916 = 0u;
    v917 = 0u;
    v257 = self->_cellularPowerLogWCDMARABTypes;
    v258 = [(NSMutableArray *)v257 countByEnumeratingWithState:&v914 objects:v1121 count:16];
    if (v258)
    {
      v259 = v258;
      v260 = *v915;
      do
      {
        v261 = 0;
        do
        {
          if (*v915 != v260)
          {
            objc_enumerationMutation(v257);
          }

          dictionaryRepresentation37 = [*(*(&v914 + 1) + 8 * v261) dictionaryRepresentation];
          [v256 addObject:dictionaryRepresentation37];

          ++v261;
        }

        while (v259 != v261);
        v259 = [(NSMutableArray *)v257 countByEnumeratingWithState:&v914 objects:v1121 count:16];
      }

      while (v259);
    }

    [dictionary setObject:v256 forKey:@"cellularPowerLogWCDMA_RABType"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogEVDOTxPowers count])
  {
    v263 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogEVDOTxPowers, "count")}];
    v910 = 0u;
    v911 = 0u;
    v912 = 0u;
    v913 = 0u;
    v264 = self->_cellularPowerLogEVDOTxPowers;
    v265 = [(NSMutableArray *)v264 countByEnumeratingWithState:&v910 objects:v1120 count:16];
    if (v265)
    {
      v266 = v265;
      v267 = *v911;
      do
      {
        v268 = 0;
        do
        {
          if (*v911 != v267)
          {
            objc_enumerationMutation(v264);
          }

          dictionaryRepresentation38 = [*(*(&v910 + 1) + 8 * v268) dictionaryRepresentation];
          [v263 addObject:dictionaryRepresentation38];

          ++v268;
        }

        while (v266 != v268);
        v266 = [(NSMutableArray *)v264 countByEnumeratingWithState:&v910 objects:v1120 count:16];
      }

      while (v266);
    }

    [dictionary setObject:v263 forKey:@"cellularPowerLogEVDOTxPower"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogEVDORxRSSIs count])
  {
    v270 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogEVDORxRSSIs, "count")}];
    v906 = 0u;
    v907 = 0u;
    v908 = 0u;
    v909 = 0u;
    v271 = self->_cellularPowerLogEVDORxRSSIs;
    v272 = [(NSMutableArray *)v271 countByEnumeratingWithState:&v906 objects:v1119 count:16];
    if (v272)
    {
      v273 = v272;
      v274 = *v907;
      do
      {
        v275 = 0;
        do
        {
          if (*v907 != v274)
          {
            objc_enumerationMutation(v271);
          }

          dictionaryRepresentation39 = [*(*(&v906 + 1) + 8 * v275) dictionaryRepresentation];
          [v270 addObject:dictionaryRepresentation39];

          ++v275;
        }

        while (v273 != v275);
        v273 = [(NSMutableArray *)v271 countByEnumeratingWithState:&v906 objects:v1119 count:16];
      }

      while (v273);
    }

    [dictionary setObject:v270 forKey:@"cellularPowerLogEVDORxRSSI"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogHybridRABModes count])
  {
    v277 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogHybridRABModes, "count")}];
    v902 = 0u;
    v903 = 0u;
    v904 = 0u;
    v905 = 0u;
    v278 = self->_cellularPowerLogHybridRABModes;
    v279 = [(NSMutableArray *)v278 countByEnumeratingWithState:&v902 objects:v1118 count:16];
    if (v279)
    {
      v280 = v279;
      v281 = *v903;
      do
      {
        v282 = 0;
        do
        {
          if (*v903 != v281)
          {
            objc_enumerationMutation(v278);
          }

          dictionaryRepresentation40 = [*(*(&v902 + 1) + 8 * v282) dictionaryRepresentation];
          [v277 addObject:dictionaryRepresentation40];

          ++v282;
        }

        while (v280 != v282);
        v280 = [(NSMutableArray *)v278 countByEnumeratingWithState:&v902 objects:v1118 count:16];
      }

      while (v280);
    }

    [dictionary setObject:v277 forKey:@"cellularPowerLogHybrid_RABMode"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogEVDORxDiversitys count])
  {
    v284 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogEVDORxDiversitys, "count")}];
    v898 = 0u;
    v899 = 0u;
    v900 = 0u;
    v901 = 0u;
    v285 = self->_cellularPowerLogEVDORxDiversitys;
    v286 = [(NSMutableArray *)v285 countByEnumeratingWithState:&v898 objects:v1117 count:16];
    if (v286)
    {
      v287 = v286;
      v288 = *v899;
      do
      {
        v289 = 0;
        do
        {
          if (*v899 != v288)
          {
            objc_enumerationMutation(v285);
          }

          dictionaryRepresentation41 = [*(*(&v898 + 1) + 8 * v289) dictionaryRepresentation];
          [v284 addObject:dictionaryRepresentation41];

          ++v289;
        }

        while (v287 != v289);
        v287 = [(NSMutableArray *)v285 countByEnumeratingWithState:&v898 objects:v1117 count:16];
      }

      while (v287);
    }

    [dictionary setObject:v284 forKey:@"cellularPowerLogEVDORxDiversity"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogCDMA1XTxPowers count])
  {
    v291 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogCDMA1XTxPowers, "count")}];
    v894 = 0u;
    v895 = 0u;
    v896 = 0u;
    v897 = 0u;
    v292 = self->_cellularPowerLogCDMA1XTxPowers;
    v293 = [(NSMutableArray *)v292 countByEnumeratingWithState:&v894 objects:v1116 count:16];
    if (v293)
    {
      v294 = v293;
      v295 = *v895;
      do
      {
        v296 = 0;
        do
        {
          if (*v895 != v295)
          {
            objc_enumerationMutation(v292);
          }

          dictionaryRepresentation42 = [*(*(&v894 + 1) + 8 * v296) dictionaryRepresentation];
          [v291 addObject:dictionaryRepresentation42];

          ++v296;
        }

        while (v294 != v296);
        v294 = [(NSMutableArray *)v292 countByEnumeratingWithState:&v894 objects:v1116 count:16];
      }

      while (v294);
    }

    [dictionary setObject:v291 forKey:@"cellularPowerLogCDMA1XTxPower"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogCDMA1XRxRSSIs count])
  {
    v298 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogCDMA1XRxRSSIs, "count")}];
    v890 = 0u;
    v891 = 0u;
    v892 = 0u;
    v893 = 0u;
    v299 = self->_cellularPowerLogCDMA1XRxRSSIs;
    v300 = [(NSMutableArray *)v299 countByEnumeratingWithState:&v890 objects:v1115 count:16];
    if (v300)
    {
      v301 = v300;
      v302 = *v891;
      do
      {
        v303 = 0;
        do
        {
          if (*v891 != v302)
          {
            objc_enumerationMutation(v299);
          }

          dictionaryRepresentation43 = [*(*(&v890 + 1) + 8 * v303) dictionaryRepresentation];
          [v298 addObject:dictionaryRepresentation43];

          ++v303;
        }

        while (v301 != v303);
        v301 = [(NSMutableArray *)v299 countByEnumeratingWithState:&v890 objects:v1115 count:16];
      }

      while (v301);
    }

    [dictionary setObject:v298 forKey:@"cellularPowerLogCDMA1XRxRSSI"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogCDMA1XRABModes count])
  {
    v305 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogCDMA1XRABModes, "count")}];
    v886 = 0u;
    v887 = 0u;
    v888 = 0u;
    v889 = 0u;
    v306 = self->_cellularPowerLogCDMA1XRABModes;
    v307 = [(NSMutableArray *)v306 countByEnumeratingWithState:&v886 objects:v1114 count:16];
    if (v307)
    {
      v308 = v307;
      v309 = *v887;
      do
      {
        v310 = 0;
        do
        {
          if (*v887 != v309)
          {
            objc_enumerationMutation(v306);
          }

          dictionaryRepresentation44 = [*(*(&v886 + 1) + 8 * v310) dictionaryRepresentation];
          [v305 addObject:dictionaryRepresentation44];

          ++v310;
        }

        while (v308 != v310);
        v308 = [(NSMutableArray *)v306 countByEnumeratingWithState:&v886 objects:v1114 count:16];
      }

      while (v308);
    }

    [dictionary setObject:v305 forKey:@"cellularPowerLogCDMA1X_RABMode"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogCDMA1XRxDiversitys count])
  {
    v312 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogCDMA1XRxDiversitys, "count")}];
    v882 = 0u;
    v883 = 0u;
    v884 = 0u;
    v885 = 0u;
    v313 = self->_cellularPowerLogCDMA1XRxDiversitys;
    v314 = [(NSMutableArray *)v313 countByEnumeratingWithState:&v882 objects:v1113 count:16];
    if (v314)
    {
      v315 = v314;
      v316 = *v883;
      do
      {
        v317 = 0;
        do
        {
          if (*v883 != v316)
          {
            objc_enumerationMutation(v313);
          }

          dictionaryRepresentation45 = [*(*(&v882 + 1) + 8 * v317) dictionaryRepresentation];
          [v312 addObject:dictionaryRepresentation45];

          ++v317;
        }

        while (v315 != v317);
        v315 = [(NSMutableArray *)v313 countByEnumeratingWithState:&v882 objects:v1113 count:16];
      }

      while (v315);
    }

    [dictionary setObject:v312 forKey:@"cellularPowerLogCDMA1XRxDiversity"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogLTEPagingDRXCycles count])
  {
    v319 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogLTEPagingDRXCycles, "count")}];
    v878 = 0u;
    v879 = 0u;
    v880 = 0u;
    v881 = 0u;
    v320 = self->_cellularPowerLogLTEPagingDRXCycles;
    v321 = [(NSMutableArray *)v320 countByEnumeratingWithState:&v878 objects:v1112 count:16];
    if (v321)
    {
      v322 = v321;
      v323 = *v879;
      do
      {
        v324 = 0;
        do
        {
          if (*v879 != v323)
          {
            objc_enumerationMutation(v320);
          }

          dictionaryRepresentation46 = [*(*(&v878 + 1) + 8 * v324) dictionaryRepresentation];
          [v319 addObject:dictionaryRepresentation46];

          ++v324;
        }

        while (v322 != v324);
        v322 = [(NSMutableArray *)v320 countByEnumeratingWithState:&v878 objects:v1112 count:16];
      }

      while (v322);
    }

    [dictionary setObject:v319 forKey:@"cellularPowerLogLTEPagingDRXCycle"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogNRPagingDRXCycles count])
  {
    v326 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogNRPagingDRXCycles, "count")}];
    v874 = 0u;
    v875 = 0u;
    v876 = 0u;
    v877 = 0u;
    v327 = self->_cellularPowerLogNRPagingDRXCycles;
    v328 = [(NSMutableArray *)v327 countByEnumeratingWithState:&v874 objects:v1111 count:16];
    if (v328)
    {
      v329 = v328;
      v330 = *v875;
      do
      {
        v331 = 0;
        do
        {
          if (*v875 != v330)
          {
            objc_enumerationMutation(v327);
          }

          dictionaryRepresentation47 = [*(*(&v874 + 1) + 8 * v331) dictionaryRepresentation];
          [v326 addObject:dictionaryRepresentation47];

          ++v331;
        }

        while (v329 != v331);
        v329 = [(NSMutableArray *)v327 countByEnumeratingWithState:&v874 objects:v1111 count:16];
      }

      while (v329);
    }

    [dictionary setObject:v326 forKey:@"cellularPowerLogNRPagingDRXCycle"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogNRSCGRels count])
  {
    v333 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogNRSCGRels, "count")}];
    v870 = 0u;
    v871 = 0u;
    v872 = 0u;
    v873 = 0u;
    v334 = self->_cellularPowerLogNRSCGRels;
    v335 = [(NSMutableArray *)v334 countByEnumeratingWithState:&v870 objects:v1110 count:16];
    if (v335)
    {
      v336 = v335;
      v337 = *v871;
      do
      {
        v338 = 0;
        do
        {
          if (*v871 != v337)
          {
            objc_enumerationMutation(v334);
          }

          dictionaryRepresentation48 = [*(*(&v870 + 1) + 8 * v338) dictionaryRepresentation];
          [v333 addObject:dictionaryRepresentation48];

          ++v338;
        }

        while (v336 != v338);
        v336 = [(NSMutableArray *)v334 countByEnumeratingWithState:&v870 objects:v1110 count:16];
      }

      while (v336);
    }

    [dictionary setObject:v333 forKey:@"cellularPowerLogNR_SCGRel"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogWCDMACDRXConfigs count])
  {
    v340 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogWCDMACDRXConfigs, "count")}];
    v866 = 0u;
    v867 = 0u;
    v868 = 0u;
    v869 = 0u;
    v341 = self->_cellularPowerLogWCDMACDRXConfigs;
    v342 = [(NSMutableArray *)v341 countByEnumeratingWithState:&v866 objects:v1109 count:16];
    if (v342)
    {
      v343 = v342;
      v344 = *v867;
      do
      {
        v345 = 0;
        do
        {
          if (*v867 != v344)
          {
            objc_enumerationMutation(v341);
          }

          dictionaryRepresentation49 = [*(*(&v866 + 1) + 8 * v345) dictionaryRepresentation];
          [v340 addObject:dictionaryRepresentation49];

          ++v345;
        }

        while (v343 != v345);
        v343 = [(NSMutableArray *)v341 countByEnumeratingWithState:&v866 objects:v1109 count:16];
      }

      while (v343);
    }

    [dictionary setObject:v340 forKey:@"cellularPowerLogWCDMA_CDRXConfig"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogLTECDRXConfigs count])
  {
    v347 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogLTECDRXConfigs, "count")}];
    v862 = 0u;
    v863 = 0u;
    v864 = 0u;
    v865 = 0u;
    v348 = self->_cellularPowerLogLTECDRXConfigs;
    v349 = [(NSMutableArray *)v348 countByEnumeratingWithState:&v862 objects:v1108 count:16];
    if (v349)
    {
      v350 = v349;
      v351 = *v863;
      do
      {
        v352 = 0;
        do
        {
          if (*v863 != v351)
          {
            objc_enumerationMutation(v348);
          }

          dictionaryRepresentation50 = [*(*(&v862 + 1) + 8 * v352) dictionaryRepresentation];
          [v347 addObject:dictionaryRepresentation50];

          ++v352;
        }

        while (v350 != v352);
        v350 = [(NSMutableArray *)v348 countByEnumeratingWithState:&v862 objects:v1108 count:16];
      }

      while (v350);
    }

    [dictionary setObject:v347 forKey:@"cellularPowerLogLTE_CDRXConfig"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogWCDMARRCStateChanges count])
  {
    v354 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogWCDMARRCStateChanges, "count")}];
    v858 = 0u;
    v859 = 0u;
    v860 = 0u;
    v861 = 0u;
    v355 = self->_cellularPowerLogWCDMARRCStateChanges;
    v356 = [(NSMutableArray *)v355 countByEnumeratingWithState:&v858 objects:v1107 count:16];
    if (v356)
    {
      v357 = v356;
      v358 = *v859;
      do
      {
        v359 = 0;
        do
        {
          if (*v859 != v358)
          {
            objc_enumerationMutation(v355);
          }

          dictionaryRepresentation51 = [*(*(&v858 + 1) + 8 * v359) dictionaryRepresentation];
          [v354 addObject:dictionaryRepresentation51];

          ++v359;
        }

        while (v357 != v359);
        v357 = [(NSMutableArray *)v355 countByEnumeratingWithState:&v858 objects:v1107 count:16];
      }

      while (v357);
    }

    [dictionary setObject:v354 forKey:@"cellularPowerLogWCDMA_RRCStateChange"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogLTERRCStateChanges count])
  {
    v361 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogLTERRCStateChanges, "count")}];
    v854 = 0u;
    v855 = 0u;
    v856 = 0u;
    v857 = 0u;
    v362 = self->_cellularPowerLogLTERRCStateChanges;
    v363 = [(NSMutableArray *)v362 countByEnumeratingWithState:&v854 objects:v1106 count:16];
    if (v363)
    {
      v364 = v363;
      v365 = *v855;
      do
      {
        v366 = 0;
        do
        {
          if (*v855 != v365)
          {
            objc_enumerationMutation(v362);
          }

          dictionaryRepresentation52 = [*(*(&v854 + 1) + 8 * v366) dictionaryRepresentation];
          [v361 addObject:dictionaryRepresentation52];

          ++v366;
        }

        while (v364 != v366);
        v364 = [(NSMutableArray *)v362 countByEnumeratingWithState:&v854 objects:v1106 count:16];
      }

      while (v364);
    }

    [dictionary setObject:v361 forKey:@"cellularPowerLogLTE_RRCStateChange"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogSystemEvents count])
  {
    v368 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogSystemEvents, "count")}];
    v850 = 0u;
    v851 = 0u;
    v852 = 0u;
    v853 = 0u;
    v369 = self->_cellularPowerLogSystemEvents;
    v370 = [(NSMutableArray *)v369 countByEnumeratingWithState:&v850 objects:v1105 count:16];
    if (v370)
    {
      v371 = v370;
      v372 = *v851;
      do
      {
        v373 = 0;
        do
        {
          if (*v851 != v372)
          {
            objc_enumerationMutation(v369);
          }

          dictionaryRepresentation53 = [*(*(&v850 + 1) + 8 * v373) dictionaryRepresentation];
          [v368 addObject:dictionaryRepresentation53];

          ++v373;
        }

        while (v371 != v373);
        v371 = [(NSMutableArray *)v369 countByEnumeratingWithState:&v850 objects:v1105 count:16];
      }

      while (v371);
    }

    [dictionary setObject:v368 forKey:@"cellularPowerLogSystemEvent"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogRATReselectionEvents count])
  {
    v375 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogRATReselectionEvents, "count")}];
    v846 = 0u;
    v847 = 0u;
    v848 = 0u;
    v849 = 0u;
    v376 = self->_cellularPowerLogRATReselectionEvents;
    v377 = [(NSMutableArray *)v376 countByEnumeratingWithState:&v846 objects:v1104 count:16];
    if (v377)
    {
      v378 = v377;
      v379 = *v847;
      do
      {
        v380 = 0;
        do
        {
          if (*v847 != v379)
          {
            objc_enumerationMutation(v376);
          }

          dictionaryRepresentation54 = [*(*(&v846 + 1) + 8 * v380) dictionaryRepresentation];
          [v375 addObject:dictionaryRepresentation54];

          ++v380;
        }

        while (v378 != v380);
        v378 = [(NSMutableArray *)v376 countByEnumeratingWithState:&v846 objects:v1104 count:16];
      }

      while (v378);
    }

    [dictionary setObject:v375 forKey:@"cellularPowerLogRATReselectionEvent"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogRATRedirectionEvents count])
  {
    v382 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogRATRedirectionEvents, "count")}];
    v842 = 0u;
    v843 = 0u;
    v844 = 0u;
    v845 = 0u;
    v383 = self->_cellularPowerLogRATRedirectionEvents;
    v384 = [(NSMutableArray *)v383 countByEnumeratingWithState:&v842 objects:v1103 count:16];
    if (v384)
    {
      v385 = v384;
      v386 = *v843;
      do
      {
        v387 = 0;
        do
        {
          if (*v843 != v386)
          {
            objc_enumerationMutation(v383);
          }

          dictionaryRepresentation55 = [*(*(&v842 + 1) + 8 * v387) dictionaryRepresentation];
          [v382 addObject:dictionaryRepresentation55];

          ++v387;
        }

        while (v385 != v387);
        v385 = [(NSMutableArray *)v383 countByEnumeratingWithState:&v842 objects:v1103 count:16];
      }

      while (v385);
    }

    [dictionary setObject:v382 forKey:@"cellularPowerLogRATRedirectionEvent"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogGSMRRCStateChanges count])
  {
    v389 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogGSMRRCStateChanges, "count")}];
    v838 = 0u;
    v839 = 0u;
    v840 = 0u;
    v841 = 0u;
    v390 = self->_cellularPowerLogGSMRRCStateChanges;
    v391 = [(NSMutableArray *)v390 countByEnumeratingWithState:&v838 objects:v1102 count:16];
    if (v391)
    {
      v392 = v391;
      v393 = *v839;
      do
      {
        v394 = 0;
        do
        {
          if (*v839 != v393)
          {
            objc_enumerationMutation(v390);
          }

          dictionaryRepresentation56 = [*(*(&v838 + 1) + 8 * v394) dictionaryRepresentation];
          [v389 addObject:dictionaryRepresentation56];

          ++v394;
        }

        while (v392 != v394);
        v392 = [(NSMutableArray *)v390 countByEnumeratingWithState:&v838 objects:v1102 count:16];
      }

      while (v392);
    }

    [dictionary setObject:v389 forKey:@"cellularPowerLogGSM_RRCStateChange"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogCDMA1XRRCStateChanges count])
  {
    v396 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogCDMA1XRRCStateChanges, "count")}];
    v834 = 0u;
    v835 = 0u;
    v836 = 0u;
    v837 = 0u;
    v397 = self->_cellularPowerLogCDMA1XRRCStateChanges;
    v398 = [(NSMutableArray *)v397 countByEnumeratingWithState:&v834 objects:v1101 count:16];
    if (v398)
    {
      v399 = v398;
      v400 = *v835;
      do
      {
        v401 = 0;
        do
        {
          if (*v835 != v400)
          {
            objc_enumerationMutation(v397);
          }

          dictionaryRepresentation57 = [*(*(&v834 + 1) + 8 * v401) dictionaryRepresentation];
          [v396 addObject:dictionaryRepresentation57];

          ++v401;
        }

        while (v399 != v401);
        v399 = [(NSMutableArray *)v397 countByEnumeratingWithState:&v834 objects:v1101 count:16];
      }

      while (v399);
    }

    [dictionary setObject:v396 forKey:@"cellularPowerLogCDMA1XRRCStateChange"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogHybridRRCStateChanges count])
  {
    v403 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogHybridRRCStateChanges, "count")}];
    v830 = 0u;
    v831 = 0u;
    v832 = 0u;
    v833 = 0u;
    v404 = self->_cellularPowerLogHybridRRCStateChanges;
    v405 = [(NSMutableArray *)v404 countByEnumeratingWithState:&v830 objects:v1100 count:16];
    if (v405)
    {
      v406 = v405;
      v407 = *v831;
      do
      {
        v408 = 0;
        do
        {
          if (*v831 != v407)
          {
            objc_enumerationMutation(v404);
          }

          dictionaryRepresentation58 = [*(*(&v830 + 1) + 8 * v408) dictionaryRepresentation];
          [v403 addObject:dictionaryRepresentation58];

          ++v408;
        }

        while (v406 != v408);
        v406 = [(NSMutableArray *)v404 countByEnumeratingWithState:&v830 objects:v1100 count:16];
      }

      while (v406);
    }

    [dictionary setObject:v403 forKey:@"cellularPowerLogHybridRRCStateChange"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogServiceStateEvents count])
  {
    v410 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogServiceStateEvents, "count")}];
    v826 = 0u;
    v827 = 0u;
    v828 = 0u;
    v829 = 0u;
    v411 = self->_cellularPowerLogServiceStateEvents;
    v412 = [(NSMutableArray *)v411 countByEnumeratingWithState:&v826 objects:v1099 count:16];
    if (v412)
    {
      v413 = v412;
      v414 = *v827;
      do
      {
        v415 = 0;
        do
        {
          if (*v827 != v414)
          {
            objc_enumerationMutation(v411);
          }

          dictionaryRepresentation59 = [*(*(&v826 + 1) + 8 * v415) dictionaryRepresentation];
          [v410 addObject:dictionaryRepresentation59];

          ++v415;
        }

        while (v413 != v415);
        v413 = [(NSMutableArray *)v411 countByEnumeratingWithState:&v826 objects:v1099 count:16];
      }

      while (v413);
    }

    [dictionary setObject:v410 forKey:@"cellularPowerLogServiceStateEvent"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogPLMNScanEvents count])
  {
    v417 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogPLMNScanEvents, "count")}];
    v822 = 0u;
    v823 = 0u;
    v824 = 0u;
    v825 = 0u;
    v418 = self->_cellularPowerLogPLMNScanEvents;
    v419 = [(NSMutableArray *)v418 countByEnumeratingWithState:&v822 objects:v1098 count:16];
    if (v419)
    {
      v420 = v419;
      v421 = *v823;
      do
      {
        v422 = 0;
        do
        {
          if (*v823 != v421)
          {
            objc_enumerationMutation(v418);
          }

          dictionaryRepresentation60 = [*(*(&v822 + 1) + 8 * v422) dictionaryRepresentation];
          [v417 addObject:dictionaryRepresentation60];

          ++v422;
        }

        while (v420 != v422);
        v420 = [(NSMutableArray *)v418 countByEnumeratingWithState:&v822 objects:v1098 count:16];
      }

      while (v420);
    }

    [dictionary setObject:v417 forKey:@"cellularPowerLogPLMNScanEvent"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogPLMNSearchEvents count])
  {
    v424 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogPLMNSearchEvents, "count")}];
    v818 = 0u;
    v819 = 0u;
    v820 = 0u;
    v821 = 0u;
    v425 = self->_cellularPowerLogPLMNSearchEvents;
    v426 = [(NSMutableArray *)v425 countByEnumeratingWithState:&v818 objects:v1097 count:16];
    if (v426)
    {
      v427 = v426;
      v428 = *v819;
      do
      {
        v429 = 0;
        do
        {
          if (*v819 != v428)
          {
            objc_enumerationMutation(v425);
          }

          dictionaryRepresentation61 = [*(*(&v818 + 1) + 8 * v429) dictionaryRepresentation];
          [v424 addObject:dictionaryRepresentation61];

          ++v429;
        }

        while (v427 != v429);
        v427 = [(NSMutableArray *)v425 countByEnumeratingWithState:&v818 objects:v1097 count:16];
      }

      while (v427);
    }

    [dictionary setObject:v424 forKey:@"cellularPowerLogPLMNSearchEvent"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogNRSARRCStateChanges count])
  {
    v431 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogNRSARRCStateChanges, "count")}];
    v814 = 0u;
    v815 = 0u;
    v816 = 0u;
    v817 = 0u;
    v432 = self->_cellularPowerLogNRSARRCStateChanges;
    v433 = [(NSMutableArray *)v432 countByEnumeratingWithState:&v814 objects:v1096 count:16];
    if (v433)
    {
      v434 = v433;
      v435 = *v815;
      do
      {
        v436 = 0;
        do
        {
          if (*v815 != v435)
          {
            objc_enumerationMutation(v432);
          }

          dictionaryRepresentation62 = [*(*(&v814 + 1) + 8 * v436) dictionaryRepresentation];
          [v431 addObject:dictionaryRepresentation62];

          ++v436;
        }

        while (v434 != v436);
        v434 = [(NSMutableArray *)v432 countByEnumeratingWithState:&v814 objects:v1096 count:16];
      }

      while (v434);
    }

    [dictionary setObject:v431 forKey:@"cellularPowerLogNR_SA_RRCStateChange"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogNRNSAENDCEvents count])
  {
    v438 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogNRNSAENDCEvents, "count")}];
    v810 = 0u;
    v811 = 0u;
    v812 = 0u;
    v813 = 0u;
    v439 = self->_cellularPowerLogNRNSAENDCEvents;
    v440 = [(NSMutableArray *)v439 countByEnumeratingWithState:&v810 objects:v1095 count:16];
    if (v440)
    {
      v441 = v440;
      v442 = *v811;
      do
      {
        v443 = 0;
        do
        {
          if (*v811 != v442)
          {
            objc_enumerationMutation(v439);
          }

          dictionaryRepresentation63 = [*(*(&v810 + 1) + 8 * v443) dictionaryRepresentation];
          [v438 addObject:dictionaryRepresentation63];

          ++v443;
        }

        while (v441 != v443);
        v441 = [(NSMutableArray *)v439 countByEnumeratingWithState:&v810 objects:v1095 count:16];
      }

      while (v441);
    }

    [dictionary setObject:v438 forKey:@"cellularPowerLogNR_NSA_ENDCEvent"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogNRCDRXConfigs count])
  {
    v445 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogNRCDRXConfigs, "count")}];
    v806 = 0u;
    v807 = 0u;
    v808 = 0u;
    v809 = 0u;
    v446 = self->_cellularPowerLogNRCDRXConfigs;
    v447 = [(NSMutableArray *)v446 countByEnumeratingWithState:&v806 objects:v1094 count:16];
    if (v447)
    {
      v448 = v447;
      v449 = *v807;
      do
      {
        v450 = 0;
        do
        {
          if (*v807 != v449)
          {
            objc_enumerationMutation(v446);
          }

          dictionaryRepresentation64 = [*(*(&v806 + 1) + 8 * v450) dictionaryRepresentation];
          [v445 addObject:dictionaryRepresentation64];

          ++v450;
        }

        while (v448 != v450);
        v448 = [(NSMutableArray *)v446 countByEnumeratingWithState:&v806 objects:v1094 count:16];
      }

      while (v448);
    }

    [dictionary setObject:v445 forKey:@"cellularPowerLogNR_CDRXConfig"];
  }

  if ([(NSMutableArray *)self->_cellularNrSDMActivations count])
  {
    v452 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularNrSDMActivations, "count")}];
    v802 = 0u;
    v803 = 0u;
    v804 = 0u;
    v805 = 0u;
    v453 = self->_cellularNrSDMActivations;
    v454 = [(NSMutableArray *)v453 countByEnumeratingWithState:&v802 objects:v1093 count:16];
    if (v454)
    {
      v455 = v454;
      v456 = *v803;
      do
      {
        v457 = 0;
        do
        {
          if (*v803 != v456)
          {
            objc_enumerationMutation(v453);
          }

          dictionaryRepresentation65 = [*(*(&v802 + 1) + 8 * v457) dictionaryRepresentation];
          [v452 addObject:dictionaryRepresentation65];

          ++v457;
        }

        while (v455 != v457);
        v455 = [(NSMutableArray *)v453 countByEnumeratingWithState:&v802 objects:v1093 count:16];
      }

      while (v455);
    }

    [dictionary setObject:v452 forKey:@"cellularNrSDMActivation"];
  }

  if ([(NSMutableArray *)self->_cellularNrSdmEndcReleases count])
  {
    v459 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularNrSdmEndcReleases, "count")}];
    v798 = 0u;
    v799 = 0u;
    v800 = 0u;
    v801 = 0u;
    v460 = self->_cellularNrSdmEndcReleases;
    v461 = [(NSMutableArray *)v460 countByEnumeratingWithState:&v798 objects:v1092 count:16];
    if (v461)
    {
      v462 = v461;
      v463 = *v799;
      do
      {
        v464 = 0;
        do
        {
          if (*v799 != v463)
          {
            objc_enumerationMutation(v460);
          }

          dictionaryRepresentation66 = [*(*(&v798 + 1) + 8 * v464) dictionaryRepresentation];
          [v459 addObject:dictionaryRepresentation66];

          ++v464;
        }

        while (v462 != v464);
        v462 = [(NSMutableArray *)v460 countByEnumeratingWithState:&v798 objects:v1092 count:16];
      }

      while (v462);
    }

    [dictionary setObject:v459 forKey:@"cellularNrSdmEndcRelease"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogNRFRCoverages count])
  {
    v466 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogNRFRCoverages, "count")}];
    v794 = 0u;
    v795 = 0u;
    v796 = 0u;
    v797 = 0u;
    v467 = self->_cellularPowerLogNRFRCoverages;
    v468 = [(NSMutableArray *)v467 countByEnumeratingWithState:&v794 objects:v1091 count:16];
    if (v468)
    {
      v469 = v468;
      v470 = *v795;
      do
      {
        v471 = 0;
        do
        {
          if (*v795 != v470)
          {
            objc_enumerationMutation(v467);
          }

          dictionaryRepresentation67 = [*(*(&v794 + 1) + 8 * v471) dictionaryRepresentation];
          [v466 addObject:dictionaryRepresentation67];

          ++v471;
        }

        while (v469 != v471);
        v469 = [(NSMutableArray *)v467 countByEnumeratingWithState:&v794 objects:v1091 count:16];
      }

      while (v469);
    }

    [dictionary setObject:v466 forKey:@"cellularPowerLogNR_FRCoverage"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogNRDCEvents count])
  {
    v473 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogNRDCEvents, "count")}];
    v790 = 0u;
    v791 = 0u;
    v792 = 0u;
    v793 = 0u;
    v474 = self->_cellularPowerLogNRDCEvents;
    v475 = [(NSMutableArray *)v474 countByEnumeratingWithState:&v790 objects:v1090 count:16];
    if (v475)
    {
      v476 = v475;
      v477 = *v791;
      do
      {
        v478 = 0;
        do
        {
          if (*v791 != v477)
          {
            objc_enumerationMutation(v474);
          }

          dictionaryRepresentation68 = [*(*(&v790 + 1) + 8 * v478) dictionaryRepresentation];
          [v473 addObject:dictionaryRepresentation68];

          ++v478;
        }

        while (v476 != v478);
        v476 = [(NSMutableArray *)v474 countByEnumeratingWithState:&v790 objects:v1090 count:16];
      }

      while (v476);
    }

    [dictionary setObject:v473 forKey:@"cellularPowerLogNRDCEvent"];
  }

  if ([(NSMutableArray *)self->_cellularDynamicRatSelections count])
  {
    v480 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularDynamicRatSelections, "count")}];
    v786 = 0u;
    v787 = 0u;
    v788 = 0u;
    v789 = 0u;
    v481 = self->_cellularDynamicRatSelections;
    v482 = [(NSMutableArray *)v481 countByEnumeratingWithState:&v786 objects:v1089 count:16];
    if (v482)
    {
      v483 = v482;
      v484 = *v787;
      do
      {
        v485 = 0;
        do
        {
          if (*v787 != v484)
          {
            objc_enumerationMutation(v481);
          }

          dictionaryRepresentation69 = [*(*(&v786 + 1) + 8 * v485) dictionaryRepresentation];
          [v480 addObject:dictionaryRepresentation69];

          ++v485;
        }

        while (v483 != v485);
        v483 = [(NSMutableArray *)v481 countByEnumeratingWithState:&v786 objects:v1089 count:16];
      }

      while (v483);
    }

    [dictionary setObject:v480 forKey:@"cellularDynamicRatSelection"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogWUSs count])
  {
    v487 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogWUSs, "count")}];
    v782 = 0u;
    v783 = 0u;
    v784 = 0u;
    v785 = 0u;
    v488 = self->_cellularPowerLogWUSs;
    v489 = [(NSMutableArray *)v488 countByEnumeratingWithState:&v782 objects:v1088 count:16];
    if (v489)
    {
      v490 = v489;
      v491 = *v783;
      do
      {
        v492 = 0;
        do
        {
          if (*v783 != v491)
          {
            objc_enumerationMutation(v488);
          }

          dictionaryRepresentation70 = [*(*(&v782 + 1) + 8 * v492) dictionaryRepresentation];
          [v487 addObject:dictionaryRepresentation70];

          ++v492;
        }

        while (v490 != v492);
        v490 = [(NSMutableArray *)v488 countByEnumeratingWithState:&v782 objects:v1088 count:16];
      }

      while (v490);
    }

    [dictionary setObject:v487 forKey:@"cellularPowerLogWUS"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogNRsub6BWPs count])
  {
    v494 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogNRsub6BWPs, "count")}];
    v778 = 0u;
    v779 = 0u;
    v780 = 0u;
    v781 = 0u;
    v495 = self->_cellularPowerLogNRsub6BWPs;
    v496 = [(NSMutableArray *)v495 countByEnumeratingWithState:&v778 objects:v1087 count:16];
    if (v496)
    {
      v497 = v496;
      v498 = *v779;
      do
      {
        v499 = 0;
        do
        {
          if (*v779 != v498)
          {
            objc_enumerationMutation(v495);
          }

          dictionaryRepresentation71 = [*(*(&v778 + 1) + 8 * v499) dictionaryRepresentation];
          [v494 addObject:dictionaryRepresentation71];

          ++v499;
        }

        while (v497 != v499);
        v497 = [(NSMutableArray *)v495 countByEnumeratingWithState:&v778 objects:v1087 count:16];
      }

      while (v497);
    }

    [dictionary setObject:v494 forKey:@"cellularPowerLogNRsub6BWP"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogNRsub6CASCCConfigureds count])
  {
    v501 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogNRsub6CASCCConfigureds, "count")}];
    v774 = 0u;
    v775 = 0u;
    v776 = 0u;
    v777 = 0u;
    v502 = self->_cellularPowerLogNRsub6CASCCConfigureds;
    v503 = [(NSMutableArray *)v502 countByEnumeratingWithState:&v774 objects:v1086 count:16];
    if (v503)
    {
      v504 = v503;
      v505 = *v775;
      do
      {
        v506 = 0;
        do
        {
          if (*v775 != v505)
          {
            objc_enumerationMutation(v502);
          }

          dictionaryRepresentation72 = [*(*(&v774 + 1) + 8 * v506) dictionaryRepresentation];
          [v501 addObject:dictionaryRepresentation72];

          ++v506;
        }

        while (v504 != v506);
        v504 = [(NSMutableArray *)v502 countByEnumeratingWithState:&v774 objects:v1086 count:16];
      }

      while (v504);
    }

    [dictionary setObject:v501 forKey:@"cellularPowerLogNRsub6CA_SCCConfigured"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogNRsub6CASCCActivateds count])
  {
    v508 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogNRsub6CASCCActivateds, "count")}];
    v770 = 0u;
    v771 = 0u;
    v772 = 0u;
    v773 = 0u;
    v509 = self->_cellularPowerLogNRsub6CASCCActivateds;
    v510 = [(NSMutableArray *)v509 countByEnumeratingWithState:&v770 objects:v1085 count:16];
    if (v510)
    {
      v511 = v510;
      v512 = *v771;
      do
      {
        v513 = 0;
        do
        {
          if (*v771 != v512)
          {
            objc_enumerationMutation(v509);
          }

          dictionaryRepresentation73 = [*(*(&v770 + 1) + 8 * v513) dictionaryRepresentation];
          [v508 addObject:dictionaryRepresentation73];

          ++v513;
        }

        while (v511 != v513);
        v511 = [(NSMutableArray *)v509 countByEnumeratingWithState:&v770 objects:v1085 count:16];
      }

      while (v511);
    }

    [dictionary setObject:v508 forKey:@"cellularPowerLogNRsub6CA_SCCActivated"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogNRsub6RxTxs count])
  {
    v515 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogNRsub6RxTxs, "count")}];
    v766 = 0u;
    v767 = 0u;
    v768 = 0u;
    v769 = 0u;
    v516 = self->_cellularPowerLogNRsub6RxTxs;
    v517 = [(NSMutableArray *)v516 countByEnumeratingWithState:&v766 objects:v1084 count:16];
    if (v517)
    {
      v518 = v517;
      v519 = *v767;
      do
      {
        v520 = 0;
        do
        {
          if (*v767 != v519)
          {
            objc_enumerationMutation(v516);
          }

          dictionaryRepresentation74 = [*(*(&v766 + 1) + 8 * v520) dictionaryRepresentation];
          [v515 addObject:dictionaryRepresentation74];

          ++v520;
        }

        while (v518 != v520);
        v518 = [(NSMutableArray *)v516 countByEnumeratingWithState:&v766 objects:v1084 count:16];
      }

      while (v518);
    }

    [dictionary setObject:v515 forKey:@"cellularPowerLogNRsub6RxTx"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogNRsub6CarrierComponentInfos count])
  {
    v522 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogNRsub6CarrierComponentInfos, "count")}];
    v762 = 0u;
    v763 = 0u;
    v764 = 0u;
    v765 = 0u;
    v523 = self->_cellularPowerLogNRsub6CarrierComponentInfos;
    v524 = [(NSMutableArray *)v523 countByEnumeratingWithState:&v762 objects:v1083 count:16];
    if (v524)
    {
      v525 = v524;
      v526 = *v763;
      do
      {
        v527 = 0;
        do
        {
          if (*v763 != v526)
          {
            objc_enumerationMutation(v523);
          }

          dictionaryRepresentation75 = [*(*(&v762 + 1) + 8 * v527) dictionaryRepresentation];
          [v522 addObject:dictionaryRepresentation75];

          ++v527;
        }

        while (v525 != v527);
        v525 = [(NSMutableArray *)v523 countByEnumeratingWithState:&v762 objects:v1083 count:16];
      }

      while (v525);
    }

    [dictionary setObject:v522 forKey:@"cellularPowerLogNRsub6CarrierComponentInfo"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogNRsub6DLTBSs count])
  {
    v529 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogNRsub6DLTBSs, "count")}];
    v758 = 0u;
    v759 = 0u;
    v760 = 0u;
    v761 = 0u;
    v530 = self->_cellularPowerLogNRsub6DLTBSs;
    v531 = [(NSMutableArray *)v530 countByEnumeratingWithState:&v758 objects:v1082 count:16];
    if (v531)
    {
      v532 = v531;
      v533 = *v759;
      do
      {
        v534 = 0;
        do
        {
          if (*v759 != v533)
          {
            objc_enumerationMutation(v530);
          }

          dictionaryRepresentation76 = [*(*(&v758 + 1) + 8 * v534) dictionaryRepresentation];
          [v529 addObject:dictionaryRepresentation76];

          ++v534;
        }

        while (v532 != v534);
        v532 = [(NSMutableArray *)v530 countByEnumeratingWithState:&v758 objects:v1082 count:16];
      }

      while (v532);
    }

    [dictionary setObject:v529 forKey:@"cellularPowerLogNRsub6DL_TBS"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogNRsub6RSRPs count])
  {
    v536 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogNRsub6RSRPs, "count")}];
    v754 = 0u;
    v755 = 0u;
    v756 = 0u;
    v757 = 0u;
    v537 = self->_cellularPowerLogNRsub6RSRPs;
    v538 = [(NSMutableArray *)v537 countByEnumeratingWithState:&v754 objects:v1081 count:16];
    if (v538)
    {
      v539 = v538;
      v540 = *v755;
      do
      {
        v541 = 0;
        do
        {
          if (*v755 != v540)
          {
            objc_enumerationMutation(v537);
          }

          dictionaryRepresentation77 = [*(*(&v754 + 1) + 8 * v541) dictionaryRepresentation];
          [v536 addObject:dictionaryRepresentation77];

          ++v541;
        }

        while (v539 != v541);
        v539 = [(NSMutableArray *)v537 countByEnumeratingWithState:&v754 objects:v1081 count:16];
      }

      while (v539);
    }

    [dictionary setObject:v536 forKey:@"cellularPowerLogNRsub6RSRP"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogNRsub6ULCAStates count])
  {
    v543 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogNRsub6ULCAStates, "count")}];
    v750 = 0u;
    v751 = 0u;
    v752 = 0u;
    v753 = 0u;
    v544 = self->_cellularPowerLogNRsub6ULCAStates;
    v545 = [(NSMutableArray *)v544 countByEnumeratingWithState:&v750 objects:v1080 count:16];
    if (v545)
    {
      v546 = v545;
      v547 = *v751;
      do
      {
        v548 = 0;
        do
        {
          if (*v751 != v547)
          {
            objc_enumerationMutation(v544);
          }

          dictionaryRepresentation78 = [*(*(&v750 + 1) + 8 * v548) dictionaryRepresentation];
          [v543 addObject:dictionaryRepresentation78];

          ++v548;
        }

        while (v546 != v548);
        v546 = [(NSMutableArray *)v544 countByEnumeratingWithState:&v750 objects:v1080 count:16];
      }

      while (v546);
    }

    [dictionary setObject:v543 forKey:@"cellularPowerLogNRsub6UL_CAState"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogNRsub6TxPowers count])
  {
    v550 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogNRsub6TxPowers, "count")}];
    v746 = 0u;
    v747 = 0u;
    v748 = 0u;
    v749 = 0u;
    v551 = self->_cellularPowerLogNRsub6TxPowers;
    v552 = [(NSMutableArray *)v551 countByEnumeratingWithState:&v746 objects:v1079 count:16];
    if (v552)
    {
      v553 = v552;
      v554 = *v747;
      do
      {
        v555 = 0;
        do
        {
          if (*v747 != v554)
          {
            objc_enumerationMutation(v551);
          }

          dictionaryRepresentation79 = [*(*(&v746 + 1) + 8 * v555) dictionaryRepresentation];
          [v550 addObject:dictionaryRepresentation79];

          ++v555;
        }

        while (v553 != v555);
        v553 = [(NSMutableArray *)v551 countByEnumeratingWithState:&v746 objects:v1079 count:16];
      }

      while (v553);
    }

    [dictionary setObject:v550 forKey:@"cellularPowerLogNRsub6TxPower"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogNRsub6RxDiversitys count])
  {
    v557 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogNRsub6RxDiversitys, "count")}];
    v742 = 0u;
    v743 = 0u;
    v744 = 0u;
    v745 = 0u;
    v558 = self->_cellularPowerLogNRsub6RxDiversitys;
    v559 = [(NSMutableArray *)v558 countByEnumeratingWithState:&v742 objects:v1078 count:16];
    if (v559)
    {
      v560 = v559;
      v561 = *v743;
      do
      {
        v562 = 0;
        do
        {
          if (*v743 != v561)
          {
            objc_enumerationMutation(v558);
          }

          dictionaryRepresentation80 = [*(*(&v742 + 1) + 8 * v562) dictionaryRepresentation];
          [v557 addObject:dictionaryRepresentation80];

          ++v562;
        }

        while (v560 != v562);
        v560 = [(NSMutableArray *)v558 countByEnumeratingWithState:&v742 objects:v1078 count:16];
      }

      while (v560);
    }

    [dictionary setObject:v557 forKey:@"cellularPowerLogNRsub6RxDiversity"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogNRsub6BWPSCCs count])
  {
    v564 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogNRsub6BWPSCCs, "count")}];
    v738 = 0u;
    v739 = 0u;
    v740 = 0u;
    v741 = 0u;
    v565 = self->_cellularPowerLogNRsub6BWPSCCs;
    v566 = [(NSMutableArray *)v565 countByEnumeratingWithState:&v738 objects:v1077 count:16];
    if (v566)
    {
      v567 = v566;
      v568 = *v739;
      do
      {
        v569 = 0;
        do
        {
          if (*v739 != v568)
          {
            objc_enumerationMutation(v565);
          }

          dictionaryRepresentation81 = [*(*(&v738 + 1) + 8 * v569) dictionaryRepresentation];
          [v564 addObject:dictionaryRepresentation81];

          ++v569;
        }

        while (v567 != v569);
        v567 = [(NSMutableArray *)v565 countByEnumeratingWithState:&v738 objects:v1077 count:16];
      }

      while (v567);
    }

    [dictionary setObject:v564 forKey:@"cellularPowerLogNRsub6BWP_SCC"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogNRsub6BWPSAs count])
  {
    v571 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogNRsub6BWPSAs, "count")}];
    v734 = 0u;
    v735 = 0u;
    v736 = 0u;
    v737 = 0u;
    v572 = self->_cellularPowerLogNRsub6BWPSAs;
    v573 = [(NSMutableArray *)v572 countByEnumeratingWithState:&v734 objects:v1076 count:16];
    if (v573)
    {
      v574 = v573;
      v575 = *v735;
      do
      {
        v576 = 0;
        do
        {
          if (*v735 != v575)
          {
            objc_enumerationMutation(v572);
          }

          dictionaryRepresentation82 = [*(*(&v734 + 1) + 8 * v576) dictionaryRepresentation];
          [v571 addObject:dictionaryRepresentation82];

          ++v576;
        }

        while (v574 != v576);
        v574 = [(NSMutableArray *)v572 countByEnumeratingWithState:&v734 objects:v1076 count:16];
      }

      while (v574);
    }

    [dictionary setObject:v571 forKey:@"cellularPowerLogNRsub6BWP_SA"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogNRmmWaveBWPs count])
  {
    v578 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogNRmmWaveBWPs, "count")}];
    v730 = 0u;
    v731 = 0u;
    v732 = 0u;
    v733 = 0u;
    v579 = self->_cellularPowerLogNRmmWaveBWPs;
    v580 = [(NSMutableArray *)v579 countByEnumeratingWithState:&v730 objects:v1075 count:16];
    if (v580)
    {
      v581 = v580;
      v582 = *v731;
      do
      {
        v583 = 0;
        do
        {
          if (*v731 != v582)
          {
            objc_enumerationMutation(v579);
          }

          dictionaryRepresentation83 = [*(*(&v730 + 1) + 8 * v583) dictionaryRepresentation];
          [v578 addObject:dictionaryRepresentation83];

          ++v583;
        }

        while (v581 != v583);
        v581 = [(NSMutableArray *)v579 countByEnumeratingWithState:&v730 objects:v1075 count:16];
      }

      while (v581);
    }

    [dictionary setObject:v578 forKey:@"cellularPowerLogNRmmWaveBWP"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogNRmmWaveAntennaPanels count])
  {
    v585 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogNRmmWaveAntennaPanels, "count")}];
    v726 = 0u;
    v727 = 0u;
    v728 = 0u;
    v729 = 0u;
    v586 = self->_cellularPowerLogNRmmWaveAntennaPanels;
    v587 = [(NSMutableArray *)v586 countByEnumeratingWithState:&v726 objects:v1074 count:16];
    if (v587)
    {
      v588 = v587;
      v589 = *v727;
      do
      {
        v590 = 0;
        do
        {
          if (*v727 != v589)
          {
            objc_enumerationMutation(v586);
          }

          dictionaryRepresentation84 = [*(*(&v726 + 1) + 8 * v590) dictionaryRepresentation];
          [v585 addObject:dictionaryRepresentation84];

          ++v590;
        }

        while (v588 != v590);
        v588 = [(NSMutableArray *)v586 countByEnumeratingWithState:&v726 objects:v1074 count:16];
      }

      while (v588);
    }

    [dictionary setObject:v585 forKey:@"cellularPowerLogNRmmWaveAntennaPanel"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogNRmmWaveBeamIDs count])
  {
    v592 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogNRmmWaveBeamIDs, "count")}];
    v722 = 0u;
    v723 = 0u;
    v724 = 0u;
    v725 = 0u;
    v593 = self->_cellularPowerLogNRmmWaveBeamIDs;
    v594 = [(NSMutableArray *)v593 countByEnumeratingWithState:&v722 objects:v1073 count:16];
    if (v594)
    {
      v595 = v594;
      v596 = *v723;
      do
      {
        v597 = 0;
        do
        {
          if (*v723 != v596)
          {
            objc_enumerationMutation(v593);
          }

          dictionaryRepresentation85 = [*(*(&v722 + 1) + 8 * v597) dictionaryRepresentation];
          [v592 addObject:dictionaryRepresentation85];

          ++v597;
        }

        while (v595 != v597);
        v595 = [(NSMutableArray *)v593 countByEnumeratingWithState:&v722 objects:v1073 count:16];
      }

      while (v595);
    }

    [dictionary setObject:v592 forKey:@"cellularPowerLogNRmmWaveBeamID"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogNRmmWaveCASCCConfigureds count])
  {
    v599 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogNRmmWaveCASCCConfigureds, "count")}];
    v718 = 0u;
    v719 = 0u;
    v720 = 0u;
    v721 = 0u;
    v600 = self->_cellularPowerLogNRmmWaveCASCCConfigureds;
    v601 = [(NSMutableArray *)v600 countByEnumeratingWithState:&v718 objects:v1072 count:16];
    if (v601)
    {
      v602 = v601;
      v603 = *v719;
      do
      {
        v604 = 0;
        do
        {
          if (*v719 != v603)
          {
            objc_enumerationMutation(v600);
          }

          dictionaryRepresentation86 = [*(*(&v718 + 1) + 8 * v604) dictionaryRepresentation];
          [v599 addObject:dictionaryRepresentation86];

          ++v604;
        }

        while (v602 != v604);
        v602 = [(NSMutableArray *)v600 countByEnumeratingWithState:&v718 objects:v1072 count:16];
      }

      while (v602);
    }

    [dictionary setObject:v599 forKey:@"cellularPowerLogNRmmWaveCA_SCCConfigured"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogNRmmWaveCASCCActivateds count])
  {
    v606 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogNRmmWaveCASCCActivateds, "count")}];
    v714 = 0u;
    v715 = 0u;
    v716 = 0u;
    v717 = 0u;
    v607 = self->_cellularPowerLogNRmmWaveCASCCActivateds;
    v608 = [(NSMutableArray *)v607 countByEnumeratingWithState:&v714 objects:v1071 count:16];
    if (v608)
    {
      v609 = v608;
      v610 = *v715;
      do
      {
        v611 = 0;
        do
        {
          if (*v715 != v610)
          {
            objc_enumerationMutation(v607);
          }

          dictionaryRepresentation87 = [*(*(&v714 + 1) + 8 * v611) dictionaryRepresentation];
          [v606 addObject:dictionaryRepresentation87];

          ++v611;
        }

        while (v609 != v611);
        v609 = [(NSMutableArray *)v607 countByEnumeratingWithState:&v714 objects:v1071 count:16];
      }

      while (v609);
    }

    [dictionary setObject:v606 forKey:@"cellularPowerLogNRmmWaveCA_SCCActivated"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogNRmmWaveRxTxs count])
  {
    v613 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogNRmmWaveRxTxs, "count")}];
    v710 = 0u;
    v711 = 0u;
    v712 = 0u;
    v713 = 0u;
    v614 = self->_cellularPowerLogNRmmWaveRxTxs;
    v615 = [(NSMutableArray *)v614 countByEnumeratingWithState:&v710 objects:v1070 count:16];
    if (v615)
    {
      v616 = v615;
      v617 = *v711;
      do
      {
        v618 = 0;
        do
        {
          if (*v711 != v617)
          {
            objc_enumerationMutation(v614);
          }

          dictionaryRepresentation88 = [*(*(&v710 + 1) + 8 * v618) dictionaryRepresentation];
          [v613 addObject:dictionaryRepresentation88];

          ++v618;
        }

        while (v616 != v618);
        v616 = [(NSMutableArray *)v614 countByEnumeratingWithState:&v710 objects:v1070 count:16];
      }

      while (v616);
    }

    [dictionary setObject:v613 forKey:@"cellularPowerLogNRmmWaveRxTx"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogNRmmWaveCarrierComponentInfos count])
  {
    v620 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogNRmmWaveCarrierComponentInfos, "count")}];
    v706 = 0u;
    v707 = 0u;
    v708 = 0u;
    v709 = 0u;
    v621 = self->_cellularPowerLogNRmmWaveCarrierComponentInfos;
    v622 = [(NSMutableArray *)v621 countByEnumeratingWithState:&v706 objects:v1069 count:16];
    if (v622)
    {
      v623 = v622;
      v624 = *v707;
      do
      {
        v625 = 0;
        do
        {
          if (*v707 != v624)
          {
            objc_enumerationMutation(v621);
          }

          dictionaryRepresentation89 = [*(*(&v706 + 1) + 8 * v625) dictionaryRepresentation];
          [v620 addObject:dictionaryRepresentation89];

          ++v625;
        }

        while (v623 != v625);
        v623 = [(NSMutableArray *)v621 countByEnumeratingWithState:&v706 objects:v1069 count:16];
      }

      while (v623);
    }

    [dictionary setObject:v620 forKey:@"cellularPowerLogNRmmWaveCarrierComponentInfo"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogNRmmWaveDLTBSs count])
  {
    v627 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogNRmmWaveDLTBSs, "count")}];
    v702 = 0u;
    v703 = 0u;
    v704 = 0u;
    v705 = 0u;
    v628 = self->_cellularPowerLogNRmmWaveDLTBSs;
    v629 = [(NSMutableArray *)v628 countByEnumeratingWithState:&v702 objects:v1068 count:16];
    if (v629)
    {
      v630 = v629;
      v631 = *v703;
      do
      {
        v632 = 0;
        do
        {
          if (*v703 != v631)
          {
            objc_enumerationMutation(v628);
          }

          dictionaryRepresentation90 = [*(*(&v702 + 1) + 8 * v632) dictionaryRepresentation];
          [v627 addObject:dictionaryRepresentation90];

          ++v632;
        }

        while (v630 != v632);
        v630 = [(NSMutableArray *)v628 countByEnumeratingWithState:&v702 objects:v1068 count:16];
      }

      while (v630);
    }

    [dictionary setObject:v627 forKey:@"cellularPowerLogNRmmWaveDL_TBS"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogNRMmWaveRSRPs count])
  {
    v634 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogNRMmWaveRSRPs, "count")}];
    v698 = 0u;
    v699 = 0u;
    v700 = 0u;
    v701 = 0u;
    v635 = self->_cellularPowerLogNRMmWaveRSRPs;
    v636 = [(NSMutableArray *)v635 countByEnumeratingWithState:&v698 objects:v1067 count:16];
    if (v636)
    {
      v637 = v636;
      v638 = *v699;
      do
      {
        v639 = 0;
        do
        {
          if (*v699 != v638)
          {
            objc_enumerationMutation(v635);
          }

          dictionaryRepresentation91 = [*(*(&v698 + 1) + 8 * v639) dictionaryRepresentation];
          [v634 addObject:dictionaryRepresentation91];

          ++v639;
        }

        while (v637 != v639);
        v637 = [(NSMutableArray *)v635 countByEnumeratingWithState:&v698 objects:v1067 count:16];
      }

      while (v637);
    }

    [dictionary setObject:v634 forKey:@"cellularPowerLogNR_mmWaveRSRP"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogNRMmWaveTxPowers count])
  {
    v641 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogNRMmWaveTxPowers, "count")}];
    v694 = 0u;
    v695 = 0u;
    v696 = 0u;
    v697 = 0u;
    v642 = self->_cellularPowerLogNRMmWaveTxPowers;
    v643 = [(NSMutableArray *)v642 countByEnumeratingWithState:&v694 objects:v1066 count:16];
    if (v643)
    {
      v644 = v643;
      v645 = *v695;
      do
      {
        v646 = 0;
        do
        {
          if (*v695 != v645)
          {
            objc_enumerationMutation(v642);
          }

          dictionaryRepresentation92 = [*(*(&v694 + 1) + 8 * v646) dictionaryRepresentation];
          [v641 addObject:dictionaryRepresentation92];

          ++v646;
        }

        while (v644 != v646);
        v644 = [(NSMutableArray *)v642 countByEnumeratingWithState:&v694 objects:v1066 count:16];
      }

      while (v644);
    }

    [dictionary setObject:v641 forKey:@"cellularPowerLogNR_mmWaveTxPower"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogNRMmWaveULCAStates count])
  {
    v648 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogNRMmWaveULCAStates, "count")}];
    v690 = 0u;
    v691 = 0u;
    v692 = 0u;
    v693 = 0u;
    v649 = self->_cellularPowerLogNRMmWaveULCAStates;
    v650 = [(NSMutableArray *)v649 countByEnumeratingWithState:&v690 objects:v1065 count:16];
    if (v650)
    {
      v651 = v650;
      v652 = *v691;
      do
      {
        v653 = 0;
        do
        {
          if (*v691 != v652)
          {
            objc_enumerationMutation(v649);
          }

          dictionaryRepresentation93 = [*(*(&v690 + 1) + 8 * v653) dictionaryRepresentation];
          [v648 addObject:dictionaryRepresentation93];

          ++v653;
        }

        while (v651 != v653);
        v651 = [(NSMutableArray *)v649 countByEnumeratingWithState:&v690 objects:v1065 count:16];
      }

      while (v651);
    }

    [dictionary setObject:v648 forKey:@"cellularPowerLogNR_mmWaveUL_CAState"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogNRmmWaveBWPSCCs count])
  {
    v655 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogNRmmWaveBWPSCCs, "count")}];
    v686 = 0u;
    v687 = 0u;
    v688 = 0u;
    v689 = 0u;
    v656 = self->_cellularPowerLogNRmmWaveBWPSCCs;
    v657 = [(NSMutableArray *)v656 countByEnumeratingWithState:&v686 objects:v1064 count:16];
    if (v657)
    {
      v658 = v657;
      v659 = *v687;
      do
      {
        v660 = 0;
        do
        {
          if (*v687 != v659)
          {
            objc_enumerationMutation(v656);
          }

          dictionaryRepresentation94 = [*(*(&v686 + 1) + 8 * v660) dictionaryRepresentation];
          [v655 addObject:dictionaryRepresentation94];

          ++v660;
        }

        while (v658 != v660);
        v658 = [(NSMutableArray *)v656 countByEnumeratingWithState:&v686 objects:v1064 count:16];
      }

      while (v658);
    }

    [dictionary setObject:v655 forKey:@"cellularPowerLogNRmmWaveBWP_SCC"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogSFTStates count])
  {
    v662 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogSFTStates, "count")}];
    v682 = 0u;
    v683 = 0u;
    v684 = 0u;
    v685 = 0u;
    v663 = self->_cellularPowerLogSFTStates;
    v664 = [(NSMutableArray *)v663 countByEnumeratingWithState:&v682 objects:v1063 count:16];
    if (v664)
    {
      v665 = v664;
      v666 = *v683;
      do
      {
        v667 = 0;
        do
        {
          if (*v683 != v666)
          {
            objc_enumerationMutation(v663);
          }

          dictionaryRepresentation95 = [*(*(&v682 + 1) + 8 * v667) dictionaryRepresentation];
          [v662 addObject:dictionaryRepresentation95];

          ++v667;
        }

        while (v665 != v667);
        v665 = [(NSMutableArray *)v663 countByEnumeratingWithState:&v682 objects:v1063 count:16];
      }

      while (v665);
    }

    [dictionary setObject:v662 forKey:@"cellularPowerLogSFTState"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogSFTRxTxs count])
  {
    v669 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogSFTRxTxs, "count")}];
    v678 = 0u;
    v679 = 0u;
    v680 = 0u;
    v681 = 0u;
    v670 = self->_cellularPowerLogSFTRxTxs;
    v671 = [(NSMutableArray *)v670 countByEnumeratingWithState:&v678 objects:v1062 count:16];
    if (v671)
    {
      v672 = v671;
      v673 = *v679;
      do
      {
        v674 = 0;
        do
        {
          if (*v679 != v673)
          {
            objc_enumerationMutation(v670);
          }

          dictionaryRepresentation96 = [*(*(&v678 + 1) + 8 * v674) dictionaryRepresentation];
          [v669 addObject:dictionaryRepresentation96];

          ++v674;
        }

        while (v672 != v674);
        v672 = [(NSMutableArray *)v670 countByEnumeratingWithState:&v678 objects:v1062 count:16];
      }

      while (v672);
    }

    [dictionary setObject:v669 forKey:@"cellularPowerLogSFTRxTx"];
  }

  v676 = dictionary;

  return dictionary;
}

- (void)writeTo:(id)to
{
  v965 = *MEMORY[0x277D85DE8];
  toCopy = to;
  v865 = 0u;
  v866 = 0u;
  v867 = 0u;
  v868 = 0u;
  v5 = self->_cellularPerClientProfileTriggerCounts;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v865 objects:v964 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v866;
    do
    {
      v9 = 0;
      do
      {
        if (*v866 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v865 objects:v964 count:16];
    }

    while (v7);
  }

  v864 = 0u;
  v863 = 0u;
  v862 = 0u;
  v861 = 0u;
  v10 = self->_cellularNrSDMActivations;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v861 objects:v963 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v862;
    do
    {
      v14 = 0;
      do
      {
        if (*v862 != v13)
        {
          objc_enumerationMutation(v10);
        }

        PBDataWriterWriteSubmessage();
        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v861 objects:v963 count:16];
    }

    while (v12);
  }

  v860 = 0u;
  v859 = 0u;
  v858 = 0u;
  v857 = 0u;
  v15 = self->_cellularNrSdmEndcReleases;
  v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v857 objects:v962 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v858;
    do
    {
      v19 = 0;
      do
      {
        if (*v858 != v18)
        {
          objc_enumerationMutation(v15);
        }

        PBDataWriterWriteSubmessage();
        ++v19;
      }

      while (v17 != v19);
      v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v857 objects:v962 count:16];
    }

    while (v17);
  }

  v856 = 0u;
  v855 = 0u;
  v854 = 0u;
  v853 = 0u;
  v20 = self->_cellularDynamicRatSelections;
  v21 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v853 objects:v961 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v854;
    do
    {
      v24 = 0;
      do
      {
        if (*v854 != v23)
        {
          objc_enumerationMutation(v20);
        }

        PBDataWriterWriteSubmessage();
        ++v24;
      }

      while (v22 != v24);
      v22 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v853 objects:v961 count:16];
    }

    while (v22);
  }

  v852 = 0u;
  v851 = 0u;
  v850 = 0u;
  v849 = 0u;
  v25 = self->_cellularRfTunerHists;
  v26 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v849 objects:v960 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v850;
    do
    {
      v29 = 0;
      do
      {
        if (*v850 != v28)
        {
          objc_enumerationMutation(v25);
        }

        PBDataWriterWriteSubmessage();
        ++v29;
      }

      while (v27 != v29);
      v27 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v849 objects:v960 count:16];
    }

    while (v27);
  }

  v848 = 0u;
  v847 = 0u;
  v846 = 0u;
  v845 = 0u;
  v30 = self->_cellularPowerLogXOShutdowns;
  v31 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v845 objects:v959 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v846;
    do
    {
      v34 = 0;
      do
      {
        if (*v846 != v33)
        {
          objc_enumerationMutation(v30);
        }

        PBDataWriterWriteSubmessage();
        ++v34;
      }

      while (v32 != v34);
      v32 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v845 objects:v959 count:16];
    }

    while (v32);
  }

  v844 = 0u;
  v843 = 0u;
  v842 = 0u;
  v841 = 0u;
  v35 = self->_cellularPowerLogAPPSPerfLevels;
  v36 = [(NSMutableArray *)v35 countByEnumeratingWithState:&v841 objects:v958 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v842;
    do
    {
      v39 = 0;
      do
      {
        if (*v842 != v38)
        {
          objc_enumerationMutation(v35);
        }

        PBDataWriterWriteSubmessage();
        ++v39;
      }

      while (v37 != v39);
      v37 = [(NSMutableArray *)v35 countByEnumeratingWithState:&v841 objects:v958 count:16];
    }

    while (v37);
  }

  v840 = 0u;
  v839 = 0u;
  v838 = 0u;
  v837 = 0u;
  v40 = self->_cellularPowerLogAPPSCXOShutdowns;
  v41 = [(NSMutableArray *)v40 countByEnumeratingWithState:&v837 objects:v957 count:16];
  if (v41)
  {
    v42 = v41;
    v43 = *v838;
    do
    {
      v44 = 0;
      do
      {
        if (*v838 != v43)
        {
          objc_enumerationMutation(v40);
        }

        PBDataWriterWriteSubmessage();
        ++v44;
      }

      while (v42 != v44);
      v42 = [(NSMutableArray *)v40 countByEnumeratingWithState:&v837 objects:v957 count:16];
    }

    while (v42);
  }

  v836 = 0u;
  v835 = 0u;
  v834 = 0u;
  v833 = 0u;
  v45 = self->_cellularPowerLogAPPSSleepVetos;
  v46 = [(NSMutableArray *)v45 countByEnumeratingWithState:&v833 objects:v956 count:16];
  if (v46)
  {
    v47 = v46;
    v48 = *v834;
    do
    {
      v49 = 0;
      do
      {
        if (*v834 != v48)
        {
          objc_enumerationMutation(v45);
        }

        PBDataWriterWriteSubmessage();
        ++v49;
      }

      while (v47 != v49);
      v47 = [(NSMutableArray *)v45 countByEnumeratingWithState:&v833 objects:v956 count:16];
    }

    while (v47);
  }

  v832 = 0u;
  v831 = 0u;
  v830 = 0u;
  v829 = 0u;
  v50 = self->_cellularPowerLogMCPMSleepVetos;
  v51 = [(NSMutableArray *)v50 countByEnumeratingWithState:&v829 objects:v955 count:16];
  if (v51)
  {
    v52 = v51;
    v53 = *v830;
    do
    {
      v54 = 0;
      do
      {
        if (*v830 != v53)
        {
          objc_enumerationMutation(v50);
        }

        PBDataWriterWriteSubmessage();
        ++v54;
      }

      while (v52 != v54);
      v52 = [(NSMutableArray *)v50 countByEnumeratingWithState:&v829 objects:v955 count:16];
    }

    while (v52);
  }

  v828 = 0u;
  v827 = 0u;
  v826 = 0u;
  v825 = 0u;
  v55 = self->_cellularPowerLogMPSSPerfLevels;
  v56 = [(NSMutableArray *)v55 countByEnumeratingWithState:&v825 objects:v954 count:16];
  if (v56)
  {
    v57 = v56;
    v58 = *v826;
    do
    {
      v59 = 0;
      do
      {
        if (*v826 != v58)
        {
          objc_enumerationMutation(v55);
        }

        PBDataWriterWriteSubmessage();
        ++v59;
      }

      while (v57 != v59);
      v57 = [(NSMutableArray *)v55 countByEnumeratingWithState:&v825 objects:v954 count:16];
    }

    while (v57);
  }

  v824 = 0u;
  v823 = 0u;
  v822 = 0u;
  v821 = 0u;
  v60 = self->_cellularPowerLogGPSStates;
  v61 = [(NSMutableArray *)v60 countByEnumeratingWithState:&v821 objects:v953 count:16];
  if (v61)
  {
    v62 = v61;
    v63 = *v822;
    do
    {
      v64 = 0;
      do
      {
        if (*v822 != v63)
        {
          objc_enumerationMutation(v60);
        }

        PBDataWriterWriteSubmessage();
        ++v64;
      }

      while (v62 != v64);
      v62 = [(NSMutableArray *)v60 countByEnumeratingWithState:&v821 objects:v953 count:16];
    }

    while (v62);
  }

  v820 = 0u;
  v819 = 0u;
  v818 = 0u;
  v817 = 0u;
  v65 = self->_cellularPowerLogAOPUARTStates;
  v66 = [(NSMutableArray *)v65 countByEnumeratingWithState:&v817 objects:v952 count:16];
  if (v66)
  {
    v67 = v66;
    v68 = *v818;
    do
    {
      v69 = 0;
      do
      {
        if (*v818 != v68)
        {
          objc_enumerationMutation(v65);
        }

        PBDataWriterWriteSubmessage();
        ++v69;
      }

      while (v67 != v69);
      v67 = [(NSMutableArray *)v65 countByEnumeratingWithState:&v817 objects:v952 count:16];
    }

    while (v67);
  }

  v816 = 0u;
  v815 = 0u;
  v814 = 0u;
  v813 = 0u;
  v70 = self->_cellularPowerLogWLANUARTStates;
  v71 = [(NSMutableArray *)v70 countByEnumeratingWithState:&v813 objects:v951 count:16];
  if (v71)
  {
    v72 = v71;
    v73 = *v814;
    do
    {
      v74 = 0;
      do
      {
        if (*v814 != v73)
        {
          objc_enumerationMutation(v70);
        }

        PBDataWriterWriteSubmessage();
        ++v74;
      }

      while (v72 != v74);
      v72 = [(NSMutableArray *)v70 countByEnumeratingWithState:&v813 objects:v951 count:16];
    }

    while (v72);
  }

  v812 = 0u;
  v811 = 0u;
  v810 = 0u;
  v809 = 0u;
  v75 = self->_cellularPowerLogPCIeStates;
  v76 = [(NSMutableArray *)v75 countByEnumeratingWithState:&v809 objects:v950 count:16];
  if (v76)
  {
    v77 = v76;
    v78 = *v810;
    do
    {
      v79 = 0;
      do
      {
        if (*v810 != v78)
        {
          objc_enumerationMutation(v75);
        }

        PBDataWriterWriteSubmessage();
        ++v79;
      }

      while (v77 != v79);
      v77 = [(NSMutableArray *)v75 countByEnumeratingWithState:&v809 objects:v950 count:16];
    }

    while (v77);
  }

  v808 = 0u;
  v807 = 0u;
  v806 = 0u;
  v805 = 0u;
  v80 = self->_cellularPowerLogL1SleepStates;
  v81 = [(NSMutableArray *)v80 countByEnumeratingWithState:&v805 objects:v949 count:16];
  if (v81)
  {
    v82 = v81;
    v83 = *v806;
    do
    {
      v84 = 0;
      do
      {
        if (*v806 != v83)
        {
          objc_enumerationMutation(v80);
        }

        PBDataWriterWriteSubmessage();
        ++v84;
      }

      while (v82 != v84);
      v82 = [(NSMutableArray *)v80 countByEnumeratingWithState:&v805 objects:v949 count:16];
    }

    while (v82);
  }

  v804 = 0u;
  v803 = 0u;
  v802 = 0u;
  v801 = 0u;
  v85 = self->_cellularPowerLogLTEConfiguredCASCCStates;
  v86 = [(NSMutableArray *)v85 countByEnumeratingWithState:&v801 objects:v948 count:16];
  if (v86)
  {
    v87 = v86;
    v88 = *v802;
    do
    {
      v89 = 0;
      do
      {
        if (*v802 != v88)
        {
          objc_enumerationMutation(v85);
        }

        PBDataWriterWriteSubmessage();
        ++v89;
      }

      while (v87 != v89);
      v87 = [(NSMutableArray *)v85 countByEnumeratingWithState:&v801 objects:v948 count:16];
    }

    while (v87);
  }

  v800 = 0u;
  v799 = 0u;
  v798 = 0u;
  v797 = 0u;
  v90 = self->_cellularPowerLogLTEActivatedCASCCStates;
  v91 = [(NSMutableArray *)v90 countByEnumeratingWithState:&v797 objects:v947 count:16];
  if (v91)
  {
    v92 = v91;
    v93 = *v798;
    do
    {
      v94 = 0;
      do
      {
        if (*v798 != v93)
        {
          objc_enumerationMutation(v90);
        }

        PBDataWriterWriteSubmessage();
        ++v94;
      }

      while (v92 != v94);
      v92 = [(NSMutableArray *)v90 countByEnumeratingWithState:&v797 objects:v947 count:16];
    }

    while (v92);
  }

  v796 = 0u;
  v795 = 0u;
  v794 = 0u;
  v793 = 0u;
  v95 = self->_cellularPowerLogLTERxTxActivityStates;
  v96 = [(NSMutableArray *)v95 countByEnumeratingWithState:&v793 objects:v946 count:16];
  if (v96)
  {
    v97 = v96;
    v98 = *v794;
    do
    {
      v99 = 0;
      do
      {
        if (*v794 != v98)
        {
          objc_enumerationMutation(v95);
        }

        PBDataWriterWriteSubmessage();
        ++v99;
      }

      while (v97 != v99);
      v97 = [(NSMutableArray *)v95 countByEnumeratingWithState:&v793 objects:v946 count:16];
    }

    while (v97);
  }

  v792 = 0u;
  v791 = 0u;
  v790 = 0u;
  v789 = 0u;
  v100 = self->_cellularPowerLogLTECarrierComponentInfos;
  v101 = [(NSMutableArray *)v100 countByEnumeratingWithState:&v789 objects:v945 count:16];
  if (v101)
  {
    v102 = v101;
    v103 = *v790;
    do
    {
      v104 = 0;
      do
      {
        if (*v790 != v103)
        {
          objc_enumerationMutation(v100);
        }

        PBDataWriterWriteSubmessage();
        ++v104;
      }

      while (v102 != v104);
      v102 = [(NSMutableArray *)v100 countByEnumeratingWithState:&v789 objects:v945 count:16];
    }

    while (v102);
  }

  v788 = 0u;
  v787 = 0u;
  v786 = 0u;
  v785 = 0u;
  v105 = self->_cellularPowerLogLTEAggregatedDLTBSs;
  v106 = [(NSMutableArray *)v105 countByEnumeratingWithState:&v785 objects:v944 count:16];
  if (v106)
  {
    v107 = v106;
    v108 = *v786;
    do
    {
      v109 = 0;
      do
      {
        if (*v786 != v108)
        {
          objc_enumerationMutation(v105);
        }

        PBDataWriterWriteSubmessage();
        ++v109;
      }

      while (v107 != v109);
      v107 = [(NSMutableArray *)v105 countByEnumeratingWithState:&v785 objects:v944 count:16];
    }

    while (v107);
  }

  v784 = 0u;
  v783 = 0u;
  v782 = 0u;
  v781 = 0u;
  v110 = self->_cellularPowerLogLTERSRPs;
  v111 = [(NSMutableArray *)v110 countByEnumeratingWithState:&v781 objects:v943 count:16];
  if (v111)
  {
    v112 = v111;
    v113 = *v782;
    do
    {
      v114 = 0;
      do
      {
        if (*v782 != v113)
        {
          objc_enumerationMutation(v110);
        }

        PBDataWriterWriteSubmessage();
        ++v114;
      }

      while (v112 != v114);
      v112 = [(NSMutableArray *)v110 countByEnumeratingWithState:&v781 objects:v943 count:16];
    }

    while (v112);
  }

  v780 = 0u;
  v779 = 0u;
  v778 = 0u;
  v777 = 0u;
  v115 = self->_cellularPowerLogLTESINRs;
  v116 = [(NSMutableArray *)v115 countByEnumeratingWithState:&v777 objects:v942 count:16];
  if (v116)
  {
    v117 = v116;
    v118 = *v778;
    do
    {
      v119 = 0;
      do
      {
        if (*v778 != v118)
        {
          objc_enumerationMutation(v115);
        }

        PBDataWriterWriteSubmessage();
        ++v119;
      }

      while (v117 != v119);
      v117 = [(NSMutableArray *)v115 countByEnumeratingWithState:&v777 objects:v942 count:16];
    }

    while (v117);
  }

  v776 = 0u;
  v775 = 0u;
  v774 = 0u;
  v773 = 0u;
  v120 = self->_cellularPowerLogLTETxPowers;
  v121 = [(NSMutableArray *)v120 countByEnumeratingWithState:&v773 objects:v941 count:16];
  if (v121)
  {
    v122 = v121;
    v123 = *v774;
    do
    {
      v124 = 0;
      do
      {
        if (*v774 != v123)
        {
          objc_enumerationMutation(v120);
        }

        PBDataWriterWriteSubmessage();
        ++v124;
      }

      while (v122 != v124);
      v122 = [(NSMutableArray *)v120 countByEnumeratingWithState:&v773 objects:v941 count:16];
    }

    while (v122);
  }

  v772 = 0u;
  v771 = 0u;
  v770 = 0u;
  v769 = 0u;
  v125 = self->_cellularPowerLogLTERxDiversitys;
  v126 = [(NSMutableArray *)v125 countByEnumeratingWithState:&v769 objects:v940 count:16];
  if (v126)
  {
    v127 = v126;
    v128 = *v770;
    do
    {
      v129 = 0;
      do
      {
        if (*v770 != v128)
        {
          objc_enumerationMutation(v125);
        }

        PBDataWriterWriteSubmessage();
        ++v129;
      }

      while (v127 != v129);
      v127 = [(NSMutableArray *)v125 countByEnumeratingWithState:&v769 objects:v940 count:16];
    }

    while (v127);
  }

  v768 = 0u;
  v767 = 0u;
  v766 = 0u;
  v765 = 0u;
  v130 = self->_cellularPowerLogLTEULCAStates;
  v131 = [(NSMutableArray *)v130 countByEnumeratingWithState:&v765 objects:v939 count:16];
  if (v131)
  {
    v132 = v131;
    v133 = *v766;
    do
    {
      v134 = 0;
      do
      {
        if (*v766 != v133)
        {
          objc_enumerationMutation(v130);
        }

        PBDataWriterWriteSubmessage();
        ++v134;
      }

      while (v132 != v134);
      v132 = [(NSMutableArray *)v130 countByEnumeratingWithState:&v765 objects:v939 count:16];
    }

    while (v132);
  }

  v764 = 0u;
  v763 = 0u;
  v762 = 0u;
  v761 = 0u;
  v135 = self->_cellularPowerLogPowerEstimators;
  v136 = [(NSMutableArray *)v135 countByEnumeratingWithState:&v761 objects:v938 count:16];
  if (v136)
  {
    v137 = v136;
    v138 = *v762;
    do
    {
      v139 = 0;
      do
      {
        if (*v762 != v138)
        {
          objc_enumerationMutation(v135);
        }

        PBDataWriterWriteSubmessage();
        ++v139;
      }

      while (v137 != v139);
      v137 = [(NSMutableArray *)v135 countByEnumeratingWithState:&v761 objects:v938 count:16];
    }

    while (v137);
  }

  v760 = 0u;
  v759 = 0u;
  v758 = 0u;
  v757 = 0u;
  v140 = self->_cellularPowerLogLTEPagingDRXCycles;
  v141 = [(NSMutableArray *)v140 countByEnumeratingWithState:&v757 objects:v937 count:16];
  if (v141)
  {
    v142 = v141;
    v143 = *v758;
    do
    {
      v144 = 0;
      do
      {
        if (*v758 != v143)
        {
          objc_enumerationMutation(v140);
        }

        PBDataWriterWriteSubmessage();
        ++v144;
      }

      while (v142 != v144);
      v142 = [(NSMutableArray *)v140 countByEnumeratingWithState:&v757 objects:v937 count:16];
    }

    while (v142);
  }

  v756 = 0u;
  v755 = 0u;
  v754 = 0u;
  v753 = 0u;
  v145 = self->_cellularPowerLogNRPagingDRXCycles;
  v146 = [(NSMutableArray *)v145 countByEnumeratingWithState:&v753 objects:v936 count:16];
  if (v146)
  {
    v147 = v146;
    v148 = *v754;
    do
    {
      v149 = 0;
      do
      {
        if (*v754 != v148)
        {
          objc_enumerationMutation(v145);
        }

        PBDataWriterWriteSubmessage();
        ++v149;
      }

      while (v147 != v149);
      v147 = [(NSMutableArray *)v145 countByEnumeratingWithState:&v753 objects:v936 count:16];
    }

    while (v147);
  }

  v752 = 0u;
  v751 = 0u;
  v750 = 0u;
  v749 = 0u;
  v150 = self->_cellularPowerLogProtocolStates;
  v151 = [(NSMutableArray *)v150 countByEnumeratingWithState:&v749 objects:v935 count:16];
  if (v151)
  {
    v152 = v151;
    v153 = *v750;
    do
    {
      v154 = 0;
      do
      {
        if (*v750 != v153)
        {
          objc_enumerationMutation(v150);
        }

        PBDataWriterWriteSubmessage();
        ++v154;
      }

      while (v152 != v154);
      v152 = [(NSMutableArray *)v150 countByEnumeratingWithState:&v749 objects:v935 count:16];
    }

    while (v152);
  }

  v748 = 0u;
  v747 = 0u;
  v746 = 0u;
  v745 = 0u;
  v155 = self->_cellularPowerLogPLMNSearchs;
  v156 = [(NSMutableArray *)v155 countByEnumeratingWithState:&v745 objects:v934 count:16];
  if (v156)
  {
    v157 = v156;
    v158 = *v746;
    do
    {
      v159 = 0;
      do
      {
        if (*v746 != v158)
        {
          objc_enumerationMutation(v155);
        }

        PBDataWriterWriteSubmessage();
        ++v159;
      }

      while (v157 != v159);
      v157 = [(NSMutableArray *)v155 countByEnumeratingWithState:&v745 objects:v934 count:16];
    }

    while (v157);
  }

  v744 = 0u;
  v743 = 0u;
  v742 = 0u;
  v741 = 0u;
  v160 = self->_cellularPowerLogGSMTxPowers;
  v161 = [(NSMutableArray *)v160 countByEnumeratingWithState:&v741 objects:v933 count:16];
  if (v161)
  {
    v162 = v161;
    v163 = *v742;
    do
    {
      v164 = 0;
      do
      {
        if (*v742 != v163)
        {
          objc_enumerationMutation(v160);
        }

        PBDataWriterWriteSubmessage();
        ++v164;
      }

      while (v162 != v164);
      v162 = [(NSMutableArray *)v160 countByEnumeratingWithState:&v741 objects:v933 count:16];
    }

    while (v162);
  }

  v740 = 0u;
  v739 = 0u;
  v738 = 0u;
  v737 = 0u;
  v165 = self->_cellularPowerLogGSMRxRSSIs;
  v166 = [(NSMutableArray *)v165 countByEnumeratingWithState:&v737 objects:v932 count:16];
  if (v166)
  {
    v167 = v166;
    v168 = *v738;
    do
    {
      v169 = 0;
      do
      {
        if (*v738 != v168)
        {
          objc_enumerationMutation(v165);
        }

        PBDataWriterWriteSubmessage();
        ++v169;
      }

      while (v167 != v169);
      v167 = [(NSMutableArray *)v165 countByEnumeratingWithState:&v737 objects:v932 count:16];
    }

    while (v167);
  }

  v736 = 0u;
  v735 = 0u;
  v734 = 0u;
  v733 = 0u;
  v170 = self->_cellularPowerLogGSMRABModes;
  v171 = [(NSMutableArray *)v170 countByEnumeratingWithState:&v733 objects:v931 count:16];
  if (v171)
  {
    v172 = v171;
    v173 = *v734;
    do
    {
      v174 = 0;
      do
      {
        if (*v734 != v173)
        {
          objc_enumerationMutation(v170);
        }

        PBDataWriterWriteSubmessage();
        ++v174;
      }

      while (v172 != v174);
      v172 = [(NSMutableArray *)v170 countByEnumeratingWithState:&v733 objects:v931 count:16];
    }

    while (v172);
  }

  v732 = 0u;
  v731 = 0u;
  v730 = 0u;
  v729 = 0u;
  v175 = self->_cellularPowerLogGSMRxDiversitys;
  v176 = [(NSMutableArray *)v175 countByEnumeratingWithState:&v729 objects:v930 count:16];
  if (v176)
  {
    v177 = v176;
    v178 = *v730;
    do
    {
      v179 = 0;
      do
      {
        if (*v730 != v178)
        {
          objc_enumerationMutation(v175);
        }

        PBDataWriterWriteSubmessage();
        ++v179;
      }

      while (v177 != v179);
      v177 = [(NSMutableArray *)v175 countByEnumeratingWithState:&v729 objects:v930 count:16];
    }

    while (v177);
  }

  v728 = 0u;
  v727 = 0u;
  v726 = 0u;
  v725 = 0u;
  v180 = self->_cellularPowerLogWCDMATxPowers;
  v181 = [(NSMutableArray *)v180 countByEnumeratingWithState:&v725 objects:v929 count:16];
  if (v181)
  {
    v182 = v181;
    v183 = *v726;
    do
    {
      v184 = 0;
      do
      {
        if (*v726 != v183)
        {
          objc_enumerationMutation(v180);
        }

        PBDataWriterWriteSubmessage();
        ++v184;
      }

      while (v182 != v184);
      v182 = [(NSMutableArray *)v180 countByEnumeratingWithState:&v725 objects:v929 count:16];
    }

    while (v182);
  }

  v724 = 0u;
  v723 = 0u;
  v722 = 0u;
  v721 = 0u;
  v185 = self->_cellularPowerLogWCDMARxRSSIs;
  v186 = [(NSMutableArray *)v185 countByEnumeratingWithState:&v721 objects:v928 count:16];
  if (v186)
  {
    v187 = v186;
    v188 = *v722;
    do
    {
      v189 = 0;
      do
      {
        if (*v722 != v188)
        {
          objc_enumerationMutation(v185);
        }

        PBDataWriterWriteSubmessage();
        ++v189;
      }

      while (v187 != v189);
      v187 = [(NSMutableArray *)v185 countByEnumeratingWithState:&v721 objects:v928 count:16];
    }

    while (v187);
  }

  v720 = 0u;
  v719 = 0u;
  v718 = 0u;
  v717 = 0u;
  v190 = self->_cellularPowerLogNRSCGRels;
  v191 = [(NSMutableArray *)v190 countByEnumeratingWithState:&v717 objects:v927 count:16];
  if (v191)
  {
    v192 = v191;
    v193 = *v718;
    do
    {
      v194 = 0;
      do
      {
        if (*v718 != v193)
        {
          objc_enumerationMutation(v190);
        }

        PBDataWriterWriteSubmessage();
        ++v194;
      }

      while (v192 != v194);
      v192 = [(NSMutableArray *)v190 countByEnumeratingWithState:&v717 objects:v927 count:16];
    }

    while (v192);
  }

  v716 = 0u;
  v715 = 0u;
  v714 = 0u;
  v713 = 0u;
  v195 = self->_cellularPowerLogWCDMARxDiversitys;
  v196 = [(NSMutableArray *)v195 countByEnumeratingWithState:&v713 objects:v926 count:16];
  if (v196)
  {
    v197 = v196;
    v198 = *v714;
    do
    {
      v199 = 0;
      do
      {
        if (*v714 != v198)
        {
          objc_enumerationMutation(v195);
        }

        PBDataWriterWriteSubmessage();
        ++v199;
      }

      while (v197 != v199);
      v197 = [(NSMutableArray *)v195 countByEnumeratingWithState:&v713 objects:v926 count:16];
    }

    while (v197);
  }

  v712 = 0u;
  v711 = 0u;
  v710 = 0u;
  v709 = 0u;
  v200 = self->_cellularPowerLogWCDMARABModes;
  v201 = [(NSMutableArray *)v200 countByEnumeratingWithState:&v709 objects:v925 count:16];
  if (v201)
  {
    v202 = v201;
    v203 = *v710;
    do
    {
      v204 = 0;
      do
      {
        if (*v710 != v203)
        {
          objc_enumerationMutation(v200);
        }

        PBDataWriterWriteSubmessage();
        ++v204;
      }

      while (v202 != v204);
      v202 = [(NSMutableArray *)v200 countByEnumeratingWithState:&v709 objects:v925 count:16];
    }

    while (v202);
  }

  v708 = 0u;
  v707 = 0u;
  v706 = 0u;
  v705 = 0u;
  v205 = self->_cellularPowerLogWCDMARABTypes;
  v206 = [(NSMutableArray *)v205 countByEnumeratingWithState:&v705 objects:v924 count:16];
  if (v206)
  {
    v207 = v206;
    v208 = *v706;
    do
    {
      v209 = 0;
      do
      {
        if (*v706 != v208)
        {
          objc_enumerationMutation(v205);
        }

        PBDataWriterWriteSubmessage();
        ++v209;
      }

      while (v207 != v209);
      v207 = [(NSMutableArray *)v205 countByEnumeratingWithState:&v705 objects:v924 count:16];
    }

    while (v207);
  }

  v704 = 0u;
  v703 = 0u;
  v702 = 0u;
  v701 = 0u;
  v210 = self->_cellularPowerLogEVDOTxPowers;
  v211 = [(NSMutableArray *)v210 countByEnumeratingWithState:&v701 objects:v923 count:16];
  if (v211)
  {
    v212 = v211;
    v213 = *v702;
    do
    {
      v214 = 0;
      do
      {
        if (*v702 != v213)
        {
          objc_enumerationMutation(v210);
        }

        PBDataWriterWriteSubmessage();
        ++v214;
      }

      while (v212 != v214);
      v212 = [(NSMutableArray *)v210 countByEnumeratingWithState:&v701 objects:v923 count:16];
    }

    while (v212);
  }

  v700 = 0u;
  v699 = 0u;
  v698 = 0u;
  v697 = 0u;
  v215 = self->_cellularPowerLogEVDORxRSSIs;
  v216 = [(NSMutableArray *)v215 countByEnumeratingWithState:&v697 objects:v922 count:16];
  if (v216)
  {
    v217 = v216;
    v218 = *v698;
    do
    {
      v219 = 0;
      do
      {
        if (*v698 != v218)
        {
          objc_enumerationMutation(v215);
        }

        PBDataWriterWriteSubmessage();
        ++v219;
      }

      while (v217 != v219);
      v217 = [(NSMutableArray *)v215 countByEnumeratingWithState:&v697 objects:v922 count:16];
    }

    while (v217);
  }

  v696 = 0u;
  v695 = 0u;
  v694 = 0u;
  v693 = 0u;
  v220 = self->_cellularPowerLogHybridRABModes;
  v221 = [(NSMutableArray *)v220 countByEnumeratingWithState:&v693 objects:v921 count:16];
  if (v221)
  {
    v222 = v221;
    v223 = *v694;
    do
    {
      v224 = 0;
      do
      {
        if (*v694 != v223)
        {
          objc_enumerationMutation(v220);
        }

        PBDataWriterWriteSubmessage();
        ++v224;
      }

      while (v222 != v224);
      v222 = [(NSMutableArray *)v220 countByEnumeratingWithState:&v693 objects:v921 count:16];
    }

    while (v222);
  }

  v692 = 0u;
  v691 = 0u;
  v690 = 0u;
  v689 = 0u;
  v225 = self->_cellularPowerLogEVDORxDiversitys;
  v226 = [(NSMutableArray *)v225 countByEnumeratingWithState:&v689 objects:v920 count:16];
  if (v226)
  {
    v227 = v226;
    v228 = *v690;
    do
    {
      v229 = 0;
      do
      {
        if (*v690 != v228)
        {
          objc_enumerationMutation(v225);
        }

        PBDataWriterWriteSubmessage();
        ++v229;
      }

      while (v227 != v229);
      v227 = [(NSMutableArray *)v225 countByEnumeratingWithState:&v689 objects:v920 count:16];
    }

    while (v227);
  }

  v688 = 0u;
  v687 = 0u;
  v686 = 0u;
  v685 = 0u;
  v230 = self->_cellularPowerLogCDMA1XTxPowers;
  v231 = [(NSMutableArray *)v230 countByEnumeratingWithState:&v685 objects:v919 count:16];
  if (v231)
  {
    v232 = v231;
    v233 = *v686;
    do
    {
      v234 = 0;
      do
      {
        if (*v686 != v233)
        {
          objc_enumerationMutation(v230);
        }

        PBDataWriterWriteSubmessage();
        ++v234;
      }

      while (v232 != v234);
      v232 = [(NSMutableArray *)v230 countByEnumeratingWithState:&v685 objects:v919 count:16];
    }

    while (v232);
  }

  v684 = 0u;
  v683 = 0u;
  v682 = 0u;
  v681 = 0u;
  v235 = self->_cellularPowerLogCDMA1XRxRSSIs;
  v236 = [(NSMutableArray *)v235 countByEnumeratingWithState:&v681 objects:v918 count:16];
  if (v236)
  {
    v237 = v236;
    v238 = *v682;
    do
    {
      v239 = 0;
      do
      {
        if (*v682 != v238)
        {
          objc_enumerationMutation(v235);
        }

        PBDataWriterWriteSubmessage();
        ++v239;
      }

      while (v237 != v239);
      v237 = [(NSMutableArray *)v235 countByEnumeratingWithState:&v681 objects:v918 count:16];
    }

    while (v237);
  }

  v680 = 0u;
  v679 = 0u;
  v678 = 0u;
  v677 = 0u;
  v240 = self->_cellularPowerLogCDMA1XRABModes;
  v241 = [(NSMutableArray *)v240 countByEnumeratingWithState:&v677 objects:v917 count:16];
  if (v241)
  {
    v242 = v241;
    v243 = *v678;
    do
    {
      v244 = 0;
      do
      {
        if (*v678 != v243)
        {
          objc_enumerationMutation(v240);
        }

        PBDataWriterWriteSubmessage();
        ++v244;
      }

      while (v242 != v244);
      v242 = [(NSMutableArray *)v240 countByEnumeratingWithState:&v677 objects:v917 count:16];
    }

    while (v242);
  }

  v676 = 0u;
  v675 = 0u;
  v674 = 0u;
  v673 = 0u;
  v245 = self->_cellularPowerLogCDMA1XRxDiversitys;
  v246 = [(NSMutableArray *)v245 countByEnumeratingWithState:&v673 objects:v916 count:16];
  if (v246)
  {
    v247 = v246;
    v248 = *v674;
    do
    {
      v249 = 0;
      do
      {
        if (*v674 != v248)
        {
          objc_enumerationMutation(v245);
        }

        PBDataWriterWriteSubmessage();
        ++v249;
      }

      while (v247 != v249);
      v247 = [(NSMutableArray *)v245 countByEnumeratingWithState:&v673 objects:v916 count:16];
    }

    while (v247);
  }

  v672 = 0u;
  v671 = 0u;
  v670 = 0u;
  v669 = 0u;
  v250 = self->_cellularPowerLogWCDMACDRXConfigs;
  v251 = [(NSMutableArray *)v250 countByEnumeratingWithState:&v669 objects:v915 count:16];
  if (v251)
  {
    v252 = v251;
    v253 = *v670;
    do
    {
      v254 = 0;
      do
      {
        if (*v670 != v253)
        {
          objc_enumerationMutation(v250);
        }

        PBDataWriterWriteSubmessage();
        ++v254;
      }

      while (v252 != v254);
      v252 = [(NSMutableArray *)v250 countByEnumeratingWithState:&v669 objects:v915 count:16];
    }

    while (v252);
  }

  v668 = 0u;
  v667 = 0u;
  v666 = 0u;
  v665 = 0u;
  v255 = self->_cellularPowerLogLTECDRXConfigs;
  v256 = [(NSMutableArray *)v255 countByEnumeratingWithState:&v665 objects:v914 count:16];
  if (v256)
  {
    v257 = v256;
    v258 = *v666;
    do
    {
      v259 = 0;
      do
      {
        if (*v666 != v258)
        {
          objc_enumerationMutation(v255);
        }

        PBDataWriterWriteSubmessage();
        ++v259;
      }

      while (v257 != v259);
      v257 = [(NSMutableArray *)v255 countByEnumeratingWithState:&v665 objects:v914 count:16];
    }

    while (v257);
  }

  v664 = 0u;
  v663 = 0u;
  v662 = 0u;
  v661 = 0u;
  v260 = self->_cellularPowerLogWCDMARRCStateChanges;
  v261 = [(NSMutableArray *)v260 countByEnumeratingWithState:&v661 objects:v913 count:16];
  if (v261)
  {
    v262 = v261;
    v263 = *v662;
    do
    {
      v264 = 0;
      do
      {
        if (*v662 != v263)
        {
          objc_enumerationMutation(v260);
        }

        PBDataWriterWriteSubmessage();
        ++v264;
      }

      while (v262 != v264);
      v262 = [(NSMutableArray *)v260 countByEnumeratingWithState:&v661 objects:v913 count:16];
    }

    while (v262);
  }

  v660 = 0u;
  v659 = 0u;
  v658 = 0u;
  v657 = 0u;
  v265 = self->_cellularPowerLogLTERRCStateChanges;
  v266 = [(NSMutableArray *)v265 countByEnumeratingWithState:&v657 objects:v912 count:16];
  if (v266)
  {
    v267 = v266;
    v268 = *v658;
    do
    {
      v269 = 0;
      do
      {
        if (*v658 != v268)
        {
          objc_enumerationMutation(v265);
        }

        PBDataWriterWriteSubmessage();
        ++v269;
      }

      while (v267 != v269);
      v267 = [(NSMutableArray *)v265 countByEnumeratingWithState:&v657 objects:v912 count:16];
    }

    while (v267);
  }

  v656 = 0u;
  v655 = 0u;
  v654 = 0u;
  v653 = 0u;
  v270 = self->_cellularPowerLogSystemEvents;
  v271 = [(NSMutableArray *)v270 countByEnumeratingWithState:&v653 objects:v911 count:16];
  if (v271)
  {
    v272 = v271;
    v273 = *v654;
    do
    {
      v274 = 0;
      do
      {
        if (*v654 != v273)
        {
          objc_enumerationMutation(v270);
        }

        PBDataWriterWriteSubmessage();
        ++v274;
      }

      while (v272 != v274);
      v272 = [(NSMutableArray *)v270 countByEnumeratingWithState:&v653 objects:v911 count:16];
    }

    while (v272);
  }

  v652 = 0u;
  v651 = 0u;
  v650 = 0u;
  v649 = 0u;
  v275 = self->_cellularPowerLogRATReselectionEvents;
  v276 = [(NSMutableArray *)v275 countByEnumeratingWithState:&v649 objects:v910 count:16];
  if (v276)
  {
    v277 = v276;
    v278 = *v650;
    do
    {
      v279 = 0;
      do
      {
        if (*v650 != v278)
        {
          objc_enumerationMutation(v275);
        }

        PBDataWriterWriteSubmessage();
        ++v279;
      }

      while (v277 != v279);
      v277 = [(NSMutableArray *)v275 countByEnumeratingWithState:&v649 objects:v910 count:16];
    }

    while (v277);
  }

  v648 = 0u;
  v647 = 0u;
  v646 = 0u;
  v645 = 0u;
  v280 = self->_cellularPowerLogRATRedirectionEvents;
  v281 = [(NSMutableArray *)v280 countByEnumeratingWithState:&v645 objects:v909 count:16];
  if (v281)
  {
    v282 = v281;
    v283 = *v646;
    do
    {
      v284 = 0;
      do
      {
        if (*v646 != v283)
        {
          objc_enumerationMutation(v280);
        }

        PBDataWriterWriteSubmessage();
        ++v284;
      }

      while (v282 != v284);
      v282 = [(NSMutableArray *)v280 countByEnumeratingWithState:&v645 objects:v909 count:16];
    }

    while (v282);
  }

  v644 = 0u;
  v643 = 0u;
  v642 = 0u;
  v641 = 0u;
  v285 = self->_cellularPowerLogGSMRRCStateChanges;
  v286 = [(NSMutableArray *)v285 countByEnumeratingWithState:&v641 objects:v908 count:16];
  if (v286)
  {
    v287 = v286;
    v288 = *v642;
    do
    {
      v289 = 0;
      do
      {
        if (*v642 != v288)
        {
          objc_enumerationMutation(v285);
        }

        PBDataWriterWriteSubmessage();
        ++v289;
      }

      while (v287 != v289);
      v287 = [(NSMutableArray *)v285 countByEnumeratingWithState:&v641 objects:v908 count:16];
    }

    while (v287);
  }

  v640 = 0u;
  v639 = 0u;
  v638 = 0u;
  v637 = 0u;
  v290 = self->_cellularPowerLogCDMA1XRRCStateChanges;
  v291 = [(NSMutableArray *)v290 countByEnumeratingWithState:&v637 objects:v907 count:16];
  if (v291)
  {
    v292 = v291;
    v293 = *v638;
    do
    {
      v294 = 0;
      do
      {
        if (*v638 != v293)
        {
          objc_enumerationMutation(v290);
        }

        PBDataWriterWriteSubmessage();
        ++v294;
      }

      while (v292 != v294);
      v292 = [(NSMutableArray *)v290 countByEnumeratingWithState:&v637 objects:v907 count:16];
    }

    while (v292);
  }

  v636 = 0u;
  v635 = 0u;
  v634 = 0u;
  v633 = 0u;
  v295 = self->_cellularPowerLogHybridRRCStateChanges;
  v296 = [(NSMutableArray *)v295 countByEnumeratingWithState:&v633 objects:v906 count:16];
  if (v296)
  {
    v297 = v296;
    v298 = *v634;
    do
    {
      v299 = 0;
      do
      {
        if (*v634 != v298)
        {
          objc_enumerationMutation(v295);
        }

        PBDataWriterWriteSubmessage();
        ++v299;
      }

      while (v297 != v299);
      v297 = [(NSMutableArray *)v295 countByEnumeratingWithState:&v633 objects:v906 count:16];
    }

    while (v297);
  }

  v632 = 0u;
  v631 = 0u;
  v630 = 0u;
  v629 = 0u;
  v300 = self->_cellularPowerLogServiceStateEvents;
  v301 = [(NSMutableArray *)v300 countByEnumeratingWithState:&v629 objects:v905 count:16];
  if (v301)
  {
    v302 = v301;
    v303 = *v630;
    do
    {
      v304 = 0;
      do
      {
        if (*v630 != v303)
        {
          objc_enumerationMutation(v300);
        }

        PBDataWriterWriteSubmessage();
        ++v304;
      }

      while (v302 != v304);
      v302 = [(NSMutableArray *)v300 countByEnumeratingWithState:&v629 objects:v905 count:16];
    }

    while (v302);
  }

  v628 = 0u;
  v627 = 0u;
  v626 = 0u;
  v625 = 0u;
  v305 = self->_cellularPowerLogPLMNScanEvents;
  v306 = [(NSMutableArray *)v305 countByEnumeratingWithState:&v625 objects:v904 count:16];
  if (v306)
  {
    v307 = v306;
    v308 = *v626;
    do
    {
      v309 = 0;
      do
      {
        if (*v626 != v308)
        {
          objc_enumerationMutation(v305);
        }

        PBDataWriterWriteSubmessage();
        ++v309;
      }

      while (v307 != v309);
      v307 = [(NSMutableArray *)v305 countByEnumeratingWithState:&v625 objects:v904 count:16];
    }

    while (v307);
  }

  v624 = 0u;
  v623 = 0u;
  v622 = 0u;
  v621 = 0u;
  v310 = self->_cellularPowerLogPLMNSearchEvents;
  v311 = [(NSMutableArray *)v310 countByEnumeratingWithState:&v621 objects:v903 count:16];
  if (v311)
  {
    v312 = v311;
    v313 = *v622;
    do
    {
      v314 = 0;
      do
      {
        if (*v622 != v313)
        {
          objc_enumerationMutation(v310);
        }

        PBDataWriterWriteSubmessage();
        ++v314;
      }

      while (v312 != v314);
      v312 = [(NSMutableArray *)v310 countByEnumeratingWithState:&v621 objects:v903 count:16];
    }

    while (v312);
  }

  v620 = 0u;
  v619 = 0u;
  v618 = 0u;
  v617 = 0u;
  v315 = self->_cellularPowerLogNRSARRCStateChanges;
  v316 = [(NSMutableArray *)v315 countByEnumeratingWithState:&v617 objects:v902 count:16];
  if (v316)
  {
    v317 = v316;
    v318 = *v618;
    do
    {
      v319 = 0;
      do
      {
        if (*v618 != v318)
        {
          objc_enumerationMutation(v315);
        }

        PBDataWriterWriteSubmessage();
        ++v319;
      }

      while (v317 != v319);
      v317 = [(NSMutableArray *)v315 countByEnumeratingWithState:&v617 objects:v902 count:16];
    }

    while (v317);
  }

  v616 = 0u;
  v615 = 0u;
  v614 = 0u;
  v613 = 0u;
  v320 = self->_cellularPowerLogNRNSAENDCEvents;
  v321 = [(NSMutableArray *)v320 countByEnumeratingWithState:&v613 objects:v901 count:16];
  if (v321)
  {
    v322 = v321;
    v323 = *v614;
    do
    {
      v324 = 0;
      do
      {
        if (*v614 != v323)
        {
          objc_enumerationMutation(v320);
        }

        PBDataWriterWriteSubmessage();
        ++v324;
      }

      while (v322 != v324);
      v322 = [(NSMutableArray *)v320 countByEnumeratingWithState:&v613 objects:v901 count:16];
    }

    while (v322);
  }

  v612 = 0u;
  v611 = 0u;
  v610 = 0u;
  v609 = 0u;
  v325 = self->_cellularPowerLogNRCDRXConfigs;
  v326 = [(NSMutableArray *)v325 countByEnumeratingWithState:&v609 objects:v900 count:16];
  if (v326)
  {
    v327 = v326;
    v328 = *v610;
    do
    {
      v329 = 0;
      do
      {
        if (*v610 != v328)
        {
          objc_enumerationMutation(v325);
        }

        PBDataWriterWriteSubmessage();
        ++v329;
      }

      while (v327 != v329);
      v327 = [(NSMutableArray *)v325 countByEnumeratingWithState:&v609 objects:v900 count:16];
    }

    while (v327);
  }

  v608 = 0u;
  v607 = 0u;
  v606 = 0u;
  v605 = 0u;
  v330 = self->_cellularPowerLogNRsub6BWPs;
  v331 = [(NSMutableArray *)v330 countByEnumeratingWithState:&v605 objects:v899 count:16];
  if (v331)
  {
    v332 = v331;
    v333 = *v606;
    do
    {
      v334 = 0;
      do
      {
        if (*v606 != v333)
        {
          objc_enumerationMutation(v330);
        }

        PBDataWriterWriteSubmessage();
        ++v334;
      }

      while (v332 != v334);
      v332 = [(NSMutableArray *)v330 countByEnumeratingWithState:&v605 objects:v899 count:16];
    }

    while (v332);
  }

  v604 = 0u;
  v603 = 0u;
  v602 = 0u;
  v601 = 0u;
  v335 = self->_cellularPowerLogRFTunerStatsHists;
  v336 = [(NSMutableArray *)v335 countByEnumeratingWithState:&v601 objects:v898 count:16];
  if (v336)
  {
    v337 = v336;
    v338 = *v602;
    do
    {
      v339 = 0;
      do
      {
        if (*v602 != v338)
        {
          objc_enumerationMutation(v335);
        }

        PBDataWriterWriteSubmessage();
        ++v339;
      }

      while (v337 != v339);
      v337 = [(NSMutableArray *)v335 countByEnumeratingWithState:&v601 objects:v898 count:16];
    }

    while (v337);
  }

  v600 = 0u;
  v599 = 0u;
  v598 = 0u;
  v597 = 0u;
  v340 = self->_cellularPowerLogNRsub6CASCCConfigureds;
  v341 = [(NSMutableArray *)v340 countByEnumeratingWithState:&v597 objects:v897 count:16];
  if (v341)
  {
    v342 = v341;
    v343 = *v598;
    do
    {
      v344 = 0;
      do
      {
        if (*v598 != v343)
        {
          objc_enumerationMutation(v340);
        }

        PBDataWriterWriteSubmessage();
        ++v344;
      }

      while (v342 != v344);
      v342 = [(NSMutableArray *)v340 countByEnumeratingWithState:&v597 objects:v897 count:16];
    }

    while (v342);
  }

  v596 = 0u;
  v595 = 0u;
  v594 = 0u;
  v593 = 0u;
  v345 = self->_cellularPowerLogNRsub6CASCCActivateds;
  v346 = [(NSMutableArray *)v345 countByEnumeratingWithState:&v593 objects:v896 count:16];
  if (v346)
  {
    v347 = v346;
    v348 = *v594;
    do
    {
      v349 = 0;
      do
      {
        if (*v594 != v348)
        {
          objc_enumerationMutation(v345);
        }

        PBDataWriterWriteSubmessage();
        ++v349;
      }

      while (v347 != v349);
      v347 = [(NSMutableArray *)v345 countByEnumeratingWithState:&v593 objects:v896 count:16];
    }

    while (v347);
  }

  v592 = 0u;
  v591 = 0u;
  v590 = 0u;
  v589 = 0u;
  v350 = self->_cellularPowerLogNRsub6RxTxs;
  v351 = [(NSMutableArray *)v350 countByEnumeratingWithState:&v589 objects:v895 count:16];
  if (v351)
  {
    v352 = v351;
    v353 = *v590;
    do
    {
      v354 = 0;
      do
      {
        if (*v590 != v353)
        {
          objc_enumerationMutation(v350);
        }

        PBDataWriterWriteSubmessage();
        ++v354;
      }

      while (v352 != v354);
      v352 = [(NSMutableArray *)v350 countByEnumeratingWithState:&v589 objects:v895 count:16];
    }

    while (v352);
  }

  v588 = 0u;
  v587 = 0u;
  v586 = 0u;
  v585 = 0u;
  v355 = self->_cellularPowerLogNRsub6CarrierComponentInfos;
  v356 = [(NSMutableArray *)v355 countByEnumeratingWithState:&v585 objects:v894 count:16];
  if (v356)
  {
    v357 = v356;
    v358 = *v586;
    do
    {
      v359 = 0;
      do
      {
        if (*v586 != v358)
        {
          objc_enumerationMutation(v355);
        }

        PBDataWriterWriteSubmessage();
        ++v359;
      }

      while (v357 != v359);
      v357 = [(NSMutableArray *)v355 countByEnumeratingWithState:&v585 objects:v894 count:16];
    }

    while (v357);
  }

  v584 = 0u;
  v583 = 0u;
  v582 = 0u;
  v581 = 0u;
  v360 = self->_cellularPowerLogNRsub6DLTBSs;
  v361 = [(NSMutableArray *)v360 countByEnumeratingWithState:&v581 objects:v893 count:16];
  if (v361)
  {
    v362 = v361;
    v363 = *v582;
    do
    {
      v364 = 0;
      do
      {
        if (*v582 != v363)
        {
          objc_enumerationMutation(v360);
        }

        PBDataWriterWriteSubmessage();
        ++v364;
      }

      while (v362 != v364);
      v362 = [(NSMutableArray *)v360 countByEnumeratingWithState:&v581 objects:v893 count:16];
    }

    while (v362);
  }

  v580 = 0u;
  v579 = 0u;
  v578 = 0u;
  v577 = 0u;
  v365 = self->_cellularPowerLogNRsub6RSRPs;
  v366 = [(NSMutableArray *)v365 countByEnumeratingWithState:&v577 objects:v892 count:16];
  if (v366)
  {
    v367 = v366;
    v368 = *v578;
    do
    {
      v369 = 0;
      do
      {
        if (*v578 != v368)
        {
          objc_enumerationMutation(v365);
        }

        PBDataWriterWriteSubmessage();
        ++v369;
      }

      while (v367 != v369);
      v367 = [(NSMutableArray *)v365 countByEnumeratingWithState:&v577 objects:v892 count:16];
    }

    while (v367);
  }

  v576 = 0u;
  v575 = 0u;
  v574 = 0u;
  v573 = 0u;
  v370 = self->_cellularPowerLogNRsub6ULCAStates;
  v371 = [(NSMutableArray *)v370 countByEnumeratingWithState:&v573 objects:v891 count:16];
  if (v371)
  {
    v372 = v371;
    v373 = *v574;
    do
    {
      v374 = 0;
      do
      {
        if (*v574 != v373)
        {
          objc_enumerationMutation(v370);
        }

        PBDataWriterWriteSubmessage();
        ++v374;
      }

      while (v372 != v374);
      v372 = [(NSMutableArray *)v370 countByEnumeratingWithState:&v573 objects:v891 count:16];
    }

    while (v372);
  }

  v572 = 0u;
  v571 = 0u;
  v570 = 0u;
  v569 = 0u;
  v375 = self->_cellularPowerLogNRsub6TxPowers;
  v376 = [(NSMutableArray *)v375 countByEnumeratingWithState:&v569 objects:v890 count:16];
  if (v376)
  {
    v377 = v376;
    v378 = *v570;
    do
    {
      v379 = 0;
      do
      {
        if (*v570 != v378)
        {
          objc_enumerationMutation(v375);
        }

        PBDataWriterWriteSubmessage();
        ++v379;
      }

      while (v377 != v379);
      v377 = [(NSMutableArray *)v375 countByEnumeratingWithState:&v569 objects:v890 count:16];
    }

    while (v377);
  }

  v568 = 0u;
  v567 = 0u;
  v566 = 0u;
  v565 = 0u;
  v380 = self->_cellularPowerLogNRsub6RxDiversitys;
  v381 = [(NSMutableArray *)v380 countByEnumeratingWithState:&v565 objects:v889 count:16];
  if (v381)
  {
    v382 = v381;
    v383 = *v566;
    do
    {
      v384 = 0;
      do
      {
        if (*v566 != v383)
        {
          objc_enumerationMutation(v380);
        }

        PBDataWriterWriteSubmessage();
        ++v384;
      }

      while (v382 != v384);
      v382 = [(NSMutableArray *)v380 countByEnumeratingWithState:&v565 objects:v889 count:16];
    }

    while (v382);
  }

  v564 = 0u;
  v563 = 0u;
  v562 = 0u;
  v561 = 0u;
  v385 = self->_cellularPowerLogSPMIs;
  v386 = [(NSMutableArray *)v385 countByEnumeratingWithState:&v561 objects:v888 count:16];
  if (v386)
  {
    v387 = v386;
    v388 = *v562;
    do
    {
      v389 = 0;
      do
      {
        if (*v562 != v388)
        {
          objc_enumerationMutation(v385);
        }

        PBDataWriterWriteSubmessage();
        ++v389;
      }

      while (v387 != v389);
      v387 = [(NSMutableArray *)v385 countByEnumeratingWithState:&v561 objects:v888 count:16];
    }

    while (v387);
  }

  v560 = 0u;
  v559 = 0u;
  v558 = 0u;
  v557 = 0u;
  v390 = self->_cellularPowerLogNRmmWaveBWPs;
  v391 = [(NSMutableArray *)v390 countByEnumeratingWithState:&v557 objects:v887 count:16];
  if (v391)
  {
    v392 = v391;
    v393 = *v558;
    do
    {
      v394 = 0;
      do
      {
        if (*v558 != v393)
        {
          objc_enumerationMutation(v390);
        }

        PBDataWriterWriteSubmessage();
        ++v394;
      }

      while (v392 != v394);
      v392 = [(NSMutableArray *)v390 countByEnumeratingWithState:&v557 objects:v887 count:16];
    }

    while (v392);
  }

  v556 = 0u;
  v555 = 0u;
  v554 = 0u;
  v553 = 0u;
  v395 = self->_cellularPowerLogNRmmWaveAntennaPanels;
  v396 = [(NSMutableArray *)v395 countByEnumeratingWithState:&v553 objects:v886 count:16];
  if (v396)
  {
    v397 = v396;
    v398 = *v554;
    do
    {
      v399 = 0;
      do
      {
        if (*v554 != v398)
        {
          objc_enumerationMutation(v395);
        }

        PBDataWriterWriteSubmessage();
        ++v399;
      }

      while (v397 != v399);
      v397 = [(NSMutableArray *)v395 countByEnumeratingWithState:&v553 objects:v886 count:16];
    }

    while (v397);
  }

  v552 = 0u;
  v551 = 0u;
  v550 = 0u;
  v549 = 0u;
  v400 = self->_cellularPowerLogNRFRCoverages;
  v401 = [(NSMutableArray *)v400 countByEnumeratingWithState:&v549 objects:v885 count:16];
  if (v401)
  {
    v402 = v401;
    v403 = *v550;
    do
    {
      v404 = 0;
      do
      {
        if (*v550 != v403)
        {
          objc_enumerationMutation(v400);
        }

        PBDataWriterWriteSubmessage();
        ++v404;
      }

      while (v402 != v404);
      v402 = [(NSMutableArray *)v400 countByEnumeratingWithState:&v549 objects:v885 count:16];
    }

    while (v402);
  }

  v547 = 0u;
  v548 = 0u;
  v545 = 0u;
  v546 = 0u;
  v405 = self->_cellularPowerLogNRmmWaveBeamIDs;
  v406 = [(NSMutableArray *)v405 countByEnumeratingWithState:&v545 objects:v884 count:16];
  if (v406)
  {
    v407 = v406;
    v408 = *v546;
    do
    {
      v409 = 0;
      do
      {
        if (*v546 != v408)
        {
          objc_enumerationMutation(v405);
        }

        PBDataWriterWriteSubmessage();
        ++v409;
      }

      while (v407 != v409);
      v407 = [(NSMutableArray *)v405 countByEnumeratingWithState:&v545 objects:v884 count:16];
    }

    while (v407);
  }

  v543 = 0u;
  v544 = 0u;
  v541 = 0u;
  v542 = 0u;
  v410 = self->_cellularPowerLogSFTStates;
  v411 = [(NSMutableArray *)v410 countByEnumeratingWithState:&v541 objects:v883 count:16];
  if (v411)
  {
    v412 = v411;
    v413 = *v542;
    do
    {
      v414 = 0;
      do
      {
        if (*v542 != v413)
        {
          objc_enumerationMutation(v410);
        }

        PBDataWriterWriteSubmessage();
        ++v414;
      }

      while (v412 != v414);
      v412 = [(NSMutableArray *)v410 countByEnumeratingWithState:&v541 objects:v883 count:16];
    }

    while (v412);
  }

  v539 = 0u;
  v540 = 0u;
  v537 = 0u;
  v538 = 0u;
  v415 = self->_cellularPowerLogNRmmWaveCASCCConfigureds;
  v416 = [(NSMutableArray *)v415 countByEnumeratingWithState:&v537 objects:v882 count:16];
  if (v416)
  {
    v417 = v416;
    v418 = *v538;
    do
    {
      v419 = 0;
      do
      {
        if (*v538 != v418)
        {
          objc_enumerationMutation(v415);
        }

        PBDataWriterWriteSubmessage();
        ++v419;
      }

      while (v417 != v419);
      v417 = [(NSMutableArray *)v415 countByEnumeratingWithState:&v537 objects:v882 count:16];
    }

    while (v417);
  }

  v535 = 0u;
  v536 = 0u;
  v533 = 0u;
  v534 = 0u;
  v420 = self->_cellularPowerLogNRmmWaveCASCCActivateds;
  v421 = [(NSMutableArray *)v420 countByEnumeratingWithState:&v533 objects:v881 count:16];
  if (v421)
  {
    v422 = v421;
    v423 = *v534;
    do
    {
      v424 = 0;
      do
      {
        if (*v534 != v423)
        {
          objc_enumerationMutation(v420);
        }

        PBDataWriterWriteSubmessage();
        ++v424;
      }

      while (v422 != v424);
      v422 = [(NSMutableArray *)v420 countByEnumeratingWithState:&v533 objects:v881 count:16];
    }

    while (v422);
  }

  v531 = 0u;
  v532 = 0u;
  v529 = 0u;
  v530 = 0u;
  v425 = self->_cellularPowerLogNRmmWaveRxTxs;
  v426 = [(NSMutableArray *)v425 countByEnumeratingWithState:&v529 objects:v880 count:16];
  if (v426)
  {
    v427 = v426;
    v428 = *v530;
    do
    {
      v429 = 0;
      do
      {
        if (*v530 != v428)
        {
          objc_enumerationMutation(v425);
        }

        PBDataWriterWriteSubmessage();
        ++v429;
      }

      while (v427 != v429);
      v427 = [(NSMutableArray *)v425 countByEnumeratingWithState:&v529 objects:v880 count:16];
    }

    while (v427);
  }

  v527 = 0u;
  v528 = 0u;
  v525 = 0u;
  v526 = 0u;
  v430 = self->_cellularPowerLogNRmmWaveCarrierComponentInfos;
  v431 = [(NSMutableArray *)v430 countByEnumeratingWithState:&v525 objects:v879 count:16];
  if (v431)
  {
    v432 = v431;
    v433 = *v526;
    do
    {
      v434 = 0;
      do
      {
        if (*v526 != v433)
        {
          objc_enumerationMutation(v430);
        }

        PBDataWriterWriteSubmessage();
        ++v434;
      }

      while (v432 != v434);
      v432 = [(NSMutableArray *)v430 countByEnumeratingWithState:&v525 objects:v879 count:16];
    }

    while (v432);
  }

  v523 = 0u;
  v524 = 0u;
  v521 = 0u;
  v522 = 0u;
  v435 = self->_cellularPowerLogNRmmWaveDLTBSs;
  v436 = [(NSMutableArray *)v435 countByEnumeratingWithState:&v521 objects:v878 count:16];
  if (v436)
  {
    v437 = v436;
    v438 = *v522;
    do
    {
      v439 = 0;
      do
      {
        if (*v522 != v438)
        {
          objc_enumerationMutation(v435);
        }

        PBDataWriterWriteSubmessage();
        ++v439;
      }

      while (v437 != v439);
      v437 = [(NSMutableArray *)v435 countByEnumeratingWithState:&v521 objects:v878 count:16];
    }

    while (v437);
  }

  v519 = 0u;
  v520 = 0u;
  v517 = 0u;
  v518 = 0u;
  v440 = self->_cellularPowerLogNRMmWaveRSRPs;
  v441 = [(NSMutableArray *)v440 countByEnumeratingWithState:&v517 objects:v877 count:16];
  if (v441)
  {
    v442 = v441;
    v443 = *v518;
    do
    {
      v444 = 0;
      do
      {
        if (*v518 != v443)
        {
          objc_enumerationMutation(v440);
        }

        PBDataWriterWriteSubmessage();
        ++v444;
      }

      while (v442 != v444);
      v442 = [(NSMutableArray *)v440 countByEnumeratingWithState:&v517 objects:v877 count:16];
    }

    while (v442);
  }

  v515 = 0u;
  v516 = 0u;
  v513 = 0u;
  v514 = 0u;
  v445 = self->_cellularPowerLogSFTRxTxs;
  v446 = [(NSMutableArray *)v445 countByEnumeratingWithState:&v513 objects:v876 count:16];
  if (v446)
  {
    v447 = v446;
    v448 = *v514;
    do
    {
      v449 = 0;
      do
      {
        if (*v514 != v448)
        {
          objc_enumerationMutation(v445);
        }

        PBDataWriterWriteSubmessage();
        ++v449;
      }

      while (v447 != v449);
      v447 = [(NSMutableArray *)v445 countByEnumeratingWithState:&v513 objects:v876 count:16];
    }

    while (v447);
  }

  v511 = 0u;
  v512 = 0u;
  v509 = 0u;
  v510 = 0u;
  v450 = self->_cellularPowerLogNRMmWaveTxPowers;
  v451 = [(NSMutableArray *)v450 countByEnumeratingWithState:&v509 objects:v875 count:16];
  if (v451)
  {
    v452 = v451;
    v453 = *v510;
    do
    {
      v454 = 0;
      do
      {
        if (*v510 != v453)
        {
          objc_enumerationMutation(v450);
        }

        PBDataWriterWriteSubmessage();
        ++v454;
      }

      while (v452 != v454);
      v452 = [(NSMutableArray *)v450 countByEnumeratingWithState:&v509 objects:v875 count:16];
    }

    while (v452);
  }

  v507 = 0u;
  v508 = 0u;
  v505 = 0u;
  v506 = 0u;
  v455 = self->_cellularPowerLogNRMmWaveULCAStates;
  v456 = [(NSMutableArray *)v455 countByEnumeratingWithState:&v505 objects:v874 count:16];
  if (v456)
  {
    v457 = v456;
    v458 = *v506;
    do
    {
      v459 = 0;
      do
      {
        if (*v506 != v458)
        {
          objc_enumerationMutation(v455);
        }

        PBDataWriterWriteSubmessage();
        ++v459;
      }

      while (v457 != v459);
      v457 = [(NSMutableArray *)v455 countByEnumeratingWithState:&v505 objects:v874 count:16];
    }

    while (v457);
  }

  v503 = 0u;
  v504 = 0u;
  v501 = 0u;
  v502 = 0u;
  v460 = self->_cellularPowerLogNRsub6BWPSCCs;
  v461 = [(NSMutableArray *)v460 countByEnumeratingWithState:&v501 objects:v873 count:16];
  if (v461)
  {
    v462 = v461;
    v463 = *v502;
    do
    {
      v464 = 0;
      do
      {
        if (*v502 != v463)
        {
          objc_enumerationMutation(v460);
        }

        PBDataWriterWriteSubmessage();
        ++v464;
      }

      while (v462 != v464);
      v462 = [(NSMutableArray *)v460 countByEnumeratingWithState:&v501 objects:v873 count:16];
    }

    while (v462);
  }

  v499 = 0u;
  v500 = 0u;
  v497 = 0u;
  v498 = 0u;
  v465 = self->_cellularPowerLogNRmmWaveBWPSCCs;
  v466 = [(NSMutableArray *)v465 countByEnumeratingWithState:&v497 objects:v872 count:16];
  if (v466)
  {
    v467 = v466;
    v468 = *v498;
    do
    {
      v469 = 0;
      do
      {
        if (*v498 != v468)
        {
          objc_enumerationMutation(v465);
        }

        PBDataWriterWriteSubmessage();
        ++v469;
      }

      while (v467 != v469);
      v467 = [(NSMutableArray *)v465 countByEnumeratingWithState:&v497 objects:v872 count:16];
    }

    while (v467);
  }

  v495 = 0u;
  v496 = 0u;
  v493 = 0u;
  v494 = 0u;
  v470 = self->_cellularPowerLogNRDCEvents;
  v471 = [(NSMutableArray *)v470 countByEnumeratingWithState:&v493 objects:v871 count:16];
  if (v471)
  {
    v472 = v471;
    v473 = *v494;
    do
    {
      v474 = 0;
      do
      {
        if (*v494 != v473)
        {
          objc_enumerationMutation(v470);
        }

        PBDataWriterWriteSubmessage();
        ++v474;
      }

      while (v472 != v474);
      v472 = [(NSMutableArray *)v470 countByEnumeratingWithState:&v493 objects:v871 count:16];
    }

    while (v472);
  }

  v491 = 0u;
  v492 = 0u;
  v489 = 0u;
  v490 = 0u;
  v475 = self->_cellularPowerLogWUSs;
  v476 = [(NSMutableArray *)v475 countByEnumeratingWithState:&v489 objects:v870 count:16];
  if (v476)
  {
    v477 = v476;
    v478 = *v490;
    do
    {
      v479 = 0;
      do
      {
        if (*v490 != v478)
        {
          objc_enumerationMutation(v475);
        }

        PBDataWriterWriteSubmessage();
        ++v479;
      }

      while (v477 != v479);
      v477 = [(NSMutableArray *)v475 countByEnumeratingWithState:&v489 objects:v870 count:16];
    }

    while (v477);
  }

  v487 = 0u;
  v488 = 0u;
  v485 = 0u;
  v486 = 0u;
  v480 = self->_cellularPowerLogNRsub6BWPSAs;
  v481 = [(NSMutableArray *)v480 countByEnumeratingWithState:&v485 objects:v869 count:16];
  if (v481)
  {
    v482 = v481;
    v483 = *v486;
    do
    {
      v484 = 0;
      do
      {
        if (*v486 != v483)
        {
          objc_enumerationMutation(v480);
        }

        PBDataWriterWriteSubmessage();
        ++v484;
      }

      while (v482 != v484);
      v482 = [(NSMutableArray *)v480 countByEnumeratingWithState:&v485 objects:v869 count:16];
    }

    while (v482);
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ([(AWDMETRICSCellularPowerLog *)self cellularPerClientProfileTriggerCountsCount])
  {
    [toCopy clearCellularPerClientProfileTriggerCounts];
    cellularPerClientProfileTriggerCountsCount = [(AWDMETRICSCellularPowerLog *)self cellularPerClientProfileTriggerCountsCount];
    if (cellularPerClientProfileTriggerCountsCount)
    {
      v5 = cellularPerClientProfileTriggerCountsCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(AWDMETRICSCellularPowerLog *)self cellularPerClientProfileTriggerCountAtIndex:i];
        [toCopy addCellularPerClientProfileTriggerCount:v7];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularNrSDMActivationsCount])
  {
    [toCopy clearCellularNrSDMActivations];
    cellularNrSDMActivationsCount = [(AWDMETRICSCellularPowerLog *)self cellularNrSDMActivationsCount];
    if (cellularNrSDMActivationsCount)
    {
      v9 = cellularNrSDMActivationsCount;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(AWDMETRICSCellularPowerLog *)self cellularNrSDMActivationAtIndex:j];
        [toCopy addCellularNrSDMActivation:v11];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularNrSdmEndcReleasesCount])
  {
    [toCopy clearCellularNrSdmEndcReleases];
    cellularNrSdmEndcReleasesCount = [(AWDMETRICSCellularPowerLog *)self cellularNrSdmEndcReleasesCount];
    if (cellularNrSdmEndcReleasesCount)
    {
      v13 = cellularNrSdmEndcReleasesCount;
      for (k = 0; k != v13; ++k)
      {
        v15 = [(AWDMETRICSCellularPowerLog *)self cellularNrSdmEndcReleaseAtIndex:k];
        [toCopy addCellularNrSdmEndcRelease:v15];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularDynamicRatSelectionsCount])
  {
    [toCopy clearCellularDynamicRatSelections];
    cellularDynamicRatSelectionsCount = [(AWDMETRICSCellularPowerLog *)self cellularDynamicRatSelectionsCount];
    if (cellularDynamicRatSelectionsCount)
    {
      v17 = cellularDynamicRatSelectionsCount;
      for (m = 0; m != v17; ++m)
      {
        v19 = [(AWDMETRICSCellularPowerLog *)self cellularDynamicRatSelectionAtIndex:m];
        [toCopy addCellularDynamicRatSelection:v19];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularRfTunerHistsCount])
  {
    [toCopy clearCellularRfTunerHists];
    cellularRfTunerHistsCount = [(AWDMETRICSCellularPowerLog *)self cellularRfTunerHistsCount];
    if (cellularRfTunerHistsCount)
    {
      v21 = cellularRfTunerHistsCount;
      for (n = 0; n != v21; ++n)
      {
        v23 = [(AWDMETRICSCellularPowerLog *)self cellularRfTunerHistAtIndex:n];
        [toCopy addCellularRfTunerHist:v23];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogXOShutdownsCount])
  {
    [toCopy clearCellularPowerLogXOShutdowns];
    cellularPowerLogXOShutdownsCount = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogXOShutdownsCount];
    if (cellularPowerLogXOShutdownsCount)
    {
      v25 = cellularPowerLogXOShutdownsCount;
      for (ii = 0; ii != v25; ++ii)
      {
        v27 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogXOShutdownAtIndex:ii];
        [toCopy addCellularPowerLogXOShutdown:v27];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogAPPSPerfLevelsCount])
  {
    [toCopy clearCellularPowerLogAPPSPerfLevels];
    cellularPowerLogAPPSPerfLevelsCount = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogAPPSPerfLevelsCount];
    if (cellularPowerLogAPPSPerfLevelsCount)
    {
      v29 = cellularPowerLogAPPSPerfLevelsCount;
      for (jj = 0; jj != v29; ++jj)
      {
        v31 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogAPPSPerfLevelsAtIndex:jj];
        [toCopy addCellularPowerLogAPPSPerfLevels:v31];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogAPPSCXOShutdownsCount])
  {
    [toCopy clearCellularPowerLogAPPSCXOShutdowns];
    cellularPowerLogAPPSCXOShutdownsCount = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogAPPSCXOShutdownsCount];
    if (cellularPowerLogAPPSCXOShutdownsCount)
    {
      v33 = cellularPowerLogAPPSCXOShutdownsCount;
      for (kk = 0; kk != v33; ++kk)
      {
        v35 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogAPPSCXOShutdownAtIndex:kk];
        [toCopy addCellularPowerLogAPPSCXOShutdown:v35];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogAPPSSleepVetosCount])
  {
    [toCopy clearCellularPowerLogAPPSSleepVetos];
    cellularPowerLogAPPSSleepVetosCount = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogAPPSSleepVetosCount];
    if (cellularPowerLogAPPSSleepVetosCount)
    {
      v37 = cellularPowerLogAPPSSleepVetosCount;
      for (mm = 0; mm != v37; ++mm)
      {
        v39 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogAPPSSleepVetoAtIndex:mm];
        [toCopy addCellularPowerLogAPPSSleepVeto:v39];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogMCPMSleepVetosCount])
  {
    [toCopy clearCellularPowerLogMCPMSleepVetos];
    cellularPowerLogMCPMSleepVetosCount = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogMCPMSleepVetosCount];
    if (cellularPowerLogMCPMSleepVetosCount)
    {
      v41 = cellularPowerLogMCPMSleepVetosCount;
      for (nn = 0; nn != v41; ++nn)
      {
        v43 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogMCPMSleepVetoAtIndex:nn];
        [toCopy addCellularPowerLogMCPMSleepVeto:v43];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogMPSSPerfLevelsCount])
  {
    [toCopy clearCellularPowerLogMPSSPerfLevels];
    cellularPowerLogMPSSPerfLevelsCount = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogMPSSPerfLevelsCount];
    if (cellularPowerLogMPSSPerfLevelsCount)
    {
      v45 = cellularPowerLogMPSSPerfLevelsCount;
      for (i1 = 0; i1 != v45; ++i1)
      {
        v47 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogMPSSPerfLevelsAtIndex:i1];
        [toCopy addCellularPowerLogMPSSPerfLevels:v47];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogGPSStatesCount])
  {
    [toCopy clearCellularPowerLogGPSStates];
    cellularPowerLogGPSStatesCount = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogGPSStatesCount];
    if (cellularPowerLogGPSStatesCount)
    {
      v49 = cellularPowerLogGPSStatesCount;
      for (i2 = 0; i2 != v49; ++i2)
      {
        v51 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogGPSStatesAtIndex:i2];
        [toCopy addCellularPowerLogGPSStates:v51];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogAOPUARTStatesCount])
  {
    [toCopy clearCellularPowerLogAOPUARTStates];
    cellularPowerLogAOPUARTStatesCount = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogAOPUARTStatesCount];
    if (cellularPowerLogAOPUARTStatesCount)
    {
      v53 = cellularPowerLogAOPUARTStatesCount;
      for (i3 = 0; i3 != v53; ++i3)
      {
        v55 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogAOPUARTStatesAtIndex:i3];
        [toCopy addCellularPowerLogAOPUARTStates:v55];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogWLANUARTStatesCount])
  {
    [toCopy clearCellularPowerLogWLANUARTStates];
    cellularPowerLogWLANUARTStatesCount = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogWLANUARTStatesCount];
    if (cellularPowerLogWLANUARTStatesCount)
    {
      v57 = cellularPowerLogWLANUARTStatesCount;
      for (i4 = 0; i4 != v57; ++i4)
      {
        v59 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogWLANUARTStatesAtIndex:i4];
        [toCopy addCellularPowerLogWLANUARTStates:v59];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogPCIeStatesCount])
  {
    [toCopy clearCellularPowerLogPCIeStates];
    cellularPowerLogPCIeStatesCount = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogPCIeStatesCount];
    if (cellularPowerLogPCIeStatesCount)
    {
      v61 = cellularPowerLogPCIeStatesCount;
      for (i5 = 0; i5 != v61; ++i5)
      {
        v63 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogPCIeStatesAtIndex:i5];
        [toCopy addCellularPowerLogPCIeStates:v63];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogL1SleepStatesCount])
  {
    [toCopy clearCellularPowerLogL1SleepStates];
    cellularPowerLogL1SleepStatesCount = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogL1SleepStatesCount];
    if (cellularPowerLogL1SleepStatesCount)
    {
      v65 = cellularPowerLogL1SleepStatesCount;
      for (i6 = 0; i6 != v65; ++i6)
      {
        v67 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogL1SleepStatesAtIndex:i6];
        [toCopy addCellularPowerLogL1SleepStates:v67];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogLTEConfiguredCASCCStatesCount])
  {
    [toCopy clearCellularPowerLogLTEConfiguredCASCCStates];
    cellularPowerLogLTEConfiguredCASCCStatesCount = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogLTEConfiguredCASCCStatesCount];
    if (cellularPowerLogLTEConfiguredCASCCStatesCount)
    {
      v69 = cellularPowerLogLTEConfiguredCASCCStatesCount;
      for (i7 = 0; i7 != v69; ++i7)
      {
        v71 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogLTEConfiguredCASCCStatesAtIndex:i7];
        [toCopy addCellularPowerLogLTEConfiguredCASCCStates:v71];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogLTEActivatedCASCCStatesCount])
  {
    [toCopy clearCellularPowerLogLTEActivatedCASCCStates];
    cellularPowerLogLTEActivatedCASCCStatesCount = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogLTEActivatedCASCCStatesCount];
    if (cellularPowerLogLTEActivatedCASCCStatesCount)
    {
      v73 = cellularPowerLogLTEActivatedCASCCStatesCount;
      for (i8 = 0; i8 != v73; ++i8)
      {
        v75 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogLTEActivatedCASCCStatesAtIndex:i8];
        [toCopy addCellularPowerLogLTEActivatedCASCCStates:v75];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogLTERxTxActivityStatesCount])
  {
    [toCopy clearCellularPowerLogLTERxTxActivityStates];
    cellularPowerLogLTERxTxActivityStatesCount = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogLTERxTxActivityStatesCount];
    if (cellularPowerLogLTERxTxActivityStatesCount)
    {
      v77 = cellularPowerLogLTERxTxActivityStatesCount;
      for (i9 = 0; i9 != v77; ++i9)
      {
        v79 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogLTERxTxActivityStatesAtIndex:i9];
        [toCopy addCellularPowerLogLTERxTxActivityStates:v79];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogLTECarrierComponentInfosCount])
  {
    [toCopy clearCellularPowerLogLTECarrierComponentInfos];
    cellularPowerLogLTECarrierComponentInfosCount = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogLTECarrierComponentInfosCount];
    if (cellularPowerLogLTECarrierComponentInfosCount)
    {
      v81 = cellularPowerLogLTECarrierComponentInfosCount;
      for (i10 = 0; i10 != v81; ++i10)
      {
        v83 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogLTECarrierComponentInfoAtIndex:i10];
        [toCopy addCellularPowerLogLTECarrierComponentInfo:v83];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogLTEAggregatedDLTBSsCount])
  {
    [toCopy clearCellularPowerLogLTEAggregatedDLTBSs];
    cellularPowerLogLTEAggregatedDLTBSsCount = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogLTEAggregatedDLTBSsCount];
    if (cellularPowerLogLTEAggregatedDLTBSsCount)
    {
      v85 = cellularPowerLogLTEAggregatedDLTBSsCount;
      for (i11 = 0; i11 != v85; ++i11)
      {
        v87 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogLTEAggregatedDLTBSAtIndex:i11];
        [toCopy addCellularPowerLogLTEAggregatedDLTBS:v87];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogLTERSRPsCount])
  {
    [toCopy clearCellularPowerLogLTERSRPs];
    cellularPowerLogLTERSRPsCount = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogLTERSRPsCount];
    if (cellularPowerLogLTERSRPsCount)
    {
      v89 = cellularPowerLogLTERSRPsCount;
      for (i12 = 0; i12 != v89; ++i12)
      {
        v91 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogLTERSRPAtIndex:i12];
        [toCopy addCellularPowerLogLTERSRP:v91];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogLTESINRsCount])
  {
    [toCopy clearCellularPowerLogLTESINRs];
    cellularPowerLogLTESINRsCount = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogLTESINRsCount];
    if (cellularPowerLogLTESINRsCount)
    {
      v93 = cellularPowerLogLTESINRsCount;
      for (i13 = 0; i13 != v93; ++i13)
      {
        v95 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogLTESINRAtIndex:i13];
        [toCopy addCellularPowerLogLTESINR:v95];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogLTETxPowersCount])
  {
    [toCopy clearCellularPowerLogLTETxPowers];
    cellularPowerLogLTETxPowersCount = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogLTETxPowersCount];
    if (cellularPowerLogLTETxPowersCount)
    {
      v97 = cellularPowerLogLTETxPowersCount;
      for (i14 = 0; i14 != v97; ++i14)
      {
        v99 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogLTETxPowerAtIndex:i14];
        [toCopy addCellularPowerLogLTETxPower:v99];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogLTERxDiversitysCount])
  {
    [toCopy clearCellularPowerLogLTERxDiversitys];
    cellularPowerLogLTERxDiversitysCount = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogLTERxDiversitysCount];
    if (cellularPowerLogLTERxDiversitysCount)
    {
      v101 = cellularPowerLogLTERxDiversitysCount;
      for (i15 = 0; i15 != v101; ++i15)
      {
        v103 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogLTERxDiversityAtIndex:i15];
        [toCopy addCellularPowerLogLTERxDiversity:v103];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogLTEULCAStatesCount])
  {
    [toCopy clearCellularPowerLogLTEULCAStates];
    cellularPowerLogLTEULCAStatesCount = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogLTEULCAStatesCount];
    if (cellularPowerLogLTEULCAStatesCount)
    {
      v105 = cellularPowerLogLTEULCAStatesCount;
      for (i16 = 0; i16 != v105; ++i16)
      {
        v107 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogLTEULCAStateAtIndex:i16];
        [toCopy addCellularPowerLogLTEULCAState:v107];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogPowerEstimatorsCount])
  {
    [toCopy clearCellularPowerLogPowerEstimators];
    cellularPowerLogPowerEstimatorsCount = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogPowerEstimatorsCount];
    if (cellularPowerLogPowerEstimatorsCount)
    {
      v109 = cellularPowerLogPowerEstimatorsCount;
      for (i17 = 0; i17 != v109; ++i17)
      {
        v111 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogPowerEstimatorAtIndex:i17];
        [toCopy addCellularPowerLogPowerEstimator:v111];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogLTEPagingDRXCyclesCount])
  {
    [toCopy clearCellularPowerLogLTEPagingDRXCycles];
    cellularPowerLogLTEPagingDRXCyclesCount = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogLTEPagingDRXCyclesCount];
    if (cellularPowerLogLTEPagingDRXCyclesCount)
    {
      v113 = cellularPowerLogLTEPagingDRXCyclesCount;
      for (i18 = 0; i18 != v113; ++i18)
      {
        v115 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogLTEPagingDRXCycleAtIndex:i18];
        [toCopy addCellularPowerLogLTEPagingDRXCycle:v115];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRPagingDRXCyclesCount])
  {
    [toCopy clearCellularPowerLogNRPagingDRXCycles];
    cellularPowerLogNRPagingDRXCyclesCount = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRPagingDRXCyclesCount];
    if (cellularPowerLogNRPagingDRXCyclesCount)
    {
      v117 = cellularPowerLogNRPagingDRXCyclesCount;
      for (i19 = 0; i19 != v117; ++i19)
      {
        v119 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRPagingDRXCycleAtIndex:i19];
        [toCopy addCellularPowerLogNRPagingDRXCycle:v119];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogProtocolStatesCount])
  {
    [toCopy clearCellularPowerLogProtocolStates];
    cellularPowerLogProtocolStatesCount = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogProtocolStatesCount];
    if (cellularPowerLogProtocolStatesCount)
    {
      v121 = cellularPowerLogProtocolStatesCount;
      for (i20 = 0; i20 != v121; ++i20)
      {
        v123 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogProtocolStateAtIndex:i20];
        [toCopy addCellularPowerLogProtocolState:v123];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogPLMNSearchsCount])
  {
    [toCopy clearCellularPowerLogPLMNSearchs];
    cellularPowerLogPLMNSearchsCount = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogPLMNSearchsCount];
    if (cellularPowerLogPLMNSearchsCount)
    {
      v125 = cellularPowerLogPLMNSearchsCount;
      for (i21 = 0; i21 != v125; ++i21)
      {
        v127 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogPLMNSearchAtIndex:i21];
        [toCopy addCellularPowerLogPLMNSearch:v127];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogGSMTxPowersCount])
  {
    [toCopy clearCellularPowerLogGSMTxPowers];
    cellularPowerLogGSMTxPowersCount = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogGSMTxPowersCount];
    if (cellularPowerLogGSMTxPowersCount)
    {
      v129 = cellularPowerLogGSMTxPowersCount;
      for (i22 = 0; i22 != v129; ++i22)
      {
        v131 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogGSMTxPowerAtIndex:i22];
        [toCopy addCellularPowerLogGSMTxPower:v131];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogGSMRxRSSIsCount])
  {
    [toCopy clearCellularPowerLogGSMRxRSSIs];
    cellularPowerLogGSMRxRSSIsCount = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogGSMRxRSSIsCount];
    if (cellularPowerLogGSMRxRSSIsCount)
    {
      v133 = cellularPowerLogGSMRxRSSIsCount;
      for (i23 = 0; i23 != v133; ++i23)
      {
        v135 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogGSMRxRSSIAtIndex:i23];
        [toCopy addCellularPowerLogGSMRxRSSI:v135];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogGSMRABModesCount])
  {
    [toCopy clearCellularPowerLogGSMRABModes];
    cellularPowerLogGSMRABModesCount = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogGSMRABModesCount];
    if (cellularPowerLogGSMRABModesCount)
    {
      v137 = cellularPowerLogGSMRABModesCount;
      for (i24 = 0; i24 != v137; ++i24)
      {
        v139 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogGSMRABModeAtIndex:i24];
        [toCopy addCellularPowerLogGSMRABMode:v139];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogGSMRxDiversitysCount])
  {
    [toCopy clearCellularPowerLogGSMRxDiversitys];
    cellularPowerLogGSMRxDiversitysCount = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogGSMRxDiversitysCount];
    if (cellularPowerLogGSMRxDiversitysCount)
    {
      v141 = cellularPowerLogGSMRxDiversitysCount;
      for (i25 = 0; i25 != v141; ++i25)
      {
        v143 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogGSMRxDiversityAtIndex:i25];
        [toCopy addCellularPowerLogGSMRxDiversity:v143];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogWCDMATxPowersCount])
  {
    [toCopy clearCellularPowerLogWCDMATxPowers];
    cellularPowerLogWCDMATxPowersCount = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogWCDMATxPowersCount];
    if (cellularPowerLogWCDMATxPowersCount)
    {
      v145 = cellularPowerLogWCDMATxPowersCount;
      for (i26 = 0; i26 != v145; ++i26)
      {
        v147 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogWCDMATxPowerAtIndex:i26];
        [toCopy addCellularPowerLogWCDMATxPower:v147];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogWCDMARxRSSIsCount])
  {
    [toCopy clearCellularPowerLogWCDMARxRSSIs];
    cellularPowerLogWCDMARxRSSIsCount = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogWCDMARxRSSIsCount];
    if (cellularPowerLogWCDMARxRSSIsCount)
    {
      v149 = cellularPowerLogWCDMARxRSSIsCount;
      for (i27 = 0; i27 != v149; ++i27)
      {
        v151 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogWCDMARxRSSIAtIndex:i27];
        [toCopy addCellularPowerLogWCDMARxRSSI:v151];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRSCGRelsCount])
  {
    [toCopy clearCellularPowerLogNRSCGRels];
    cellularPowerLogNRSCGRelsCount = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRSCGRelsCount];
    if (cellularPowerLogNRSCGRelsCount)
    {
      v153 = cellularPowerLogNRSCGRelsCount;
      for (i28 = 0; i28 != v153; ++i28)
      {
        v155 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRSCGRelAtIndex:i28];
        [toCopy addCellularPowerLogNRSCGRel:v155];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogWCDMARxDiversitysCount])
  {
    [toCopy clearCellularPowerLogWCDMARxDiversitys];
    cellularPowerLogWCDMARxDiversitysCount = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogWCDMARxDiversitysCount];
    if (cellularPowerLogWCDMARxDiversitysCount)
    {
      v157 = cellularPowerLogWCDMARxDiversitysCount;
      for (i29 = 0; i29 != v157; ++i29)
      {
        v159 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogWCDMARxDiversityAtIndex:i29];
        [toCopy addCellularPowerLogWCDMARxDiversity:v159];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogWCDMARABModesCount])
  {
    [toCopy clearCellularPowerLogWCDMARABModes];
    cellularPowerLogWCDMARABModesCount = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogWCDMARABModesCount];
    if (cellularPowerLogWCDMARABModesCount)
    {
      v161 = cellularPowerLogWCDMARABModesCount;
      for (i30 = 0; i30 != v161; ++i30)
      {
        v163 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogWCDMARABModeAtIndex:i30];
        [toCopy addCellularPowerLogWCDMARABMode:v163];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogWCDMARABTypesCount])
  {
    [toCopy clearCellularPowerLogWCDMARABTypes];
    cellularPowerLogWCDMARABTypesCount = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogWCDMARABTypesCount];
    if (cellularPowerLogWCDMARABTypesCount)
    {
      v165 = cellularPowerLogWCDMARABTypesCount;
      for (i31 = 0; i31 != v165; ++i31)
      {
        v167 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogWCDMARABTypeAtIndex:i31];
        [toCopy addCellularPowerLogWCDMARABType:v167];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogEVDOTxPowersCount])
  {
    [toCopy clearCellularPowerLogEVDOTxPowers];
    cellularPowerLogEVDOTxPowersCount = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogEVDOTxPowersCount];
    if (cellularPowerLogEVDOTxPowersCount)
    {
      v169 = cellularPowerLogEVDOTxPowersCount;
      for (i32 = 0; i32 != v169; ++i32)
      {
        v171 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogEVDOTxPowerAtIndex:i32];
        [toCopy addCellularPowerLogEVDOTxPower:v171];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogEVDORxRSSIsCount])
  {
    [toCopy clearCellularPowerLogEVDORxRSSIs];
    cellularPowerLogEVDORxRSSIsCount = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogEVDORxRSSIsCount];
    if (cellularPowerLogEVDORxRSSIsCount)
    {
      v173 = cellularPowerLogEVDORxRSSIsCount;
      for (i33 = 0; i33 != v173; ++i33)
      {
        v175 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogEVDORxRSSIAtIndex:i33];
        [toCopy addCellularPowerLogEVDORxRSSI:v175];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogHybridRABModesCount])
  {
    [toCopy clearCellularPowerLogHybridRABModes];
    cellularPowerLogHybridRABModesCount = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogHybridRABModesCount];
    if (cellularPowerLogHybridRABModesCount)
    {
      v177 = cellularPowerLogHybridRABModesCount;
      for (i34 = 0; i34 != v177; ++i34)
      {
        v179 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogHybridRABModeAtIndex:i34];
        [toCopy addCellularPowerLogHybridRABMode:v179];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogEVDORxDiversitysCount])
  {
    [toCopy clearCellularPowerLogEVDORxDiversitys];
    cellularPowerLogEVDORxDiversitysCount = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogEVDORxDiversitysCount];
    if (cellularPowerLogEVDORxDiversitysCount)
    {
      v181 = cellularPowerLogEVDORxDiversitysCount;
      for (i35 = 0; i35 != v181; ++i35)
      {
        v183 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogEVDORxDiversityAtIndex:i35];
        [toCopy addCellularPowerLogEVDORxDiversity:v183];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogCDMA1XTxPowersCount])
  {
    [toCopy clearCellularPowerLogCDMA1XTxPowers];
    cellularPowerLogCDMA1XTxPowersCount = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogCDMA1XTxPowersCount];
    if (cellularPowerLogCDMA1XTxPowersCount)
    {
      v185 = cellularPowerLogCDMA1XTxPowersCount;
      for (i36 = 0; i36 != v185; ++i36)
      {
        v187 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogCDMA1XTxPowerAtIndex:i36];
        [toCopy addCellularPowerLogCDMA1XTxPower:v187];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogCDMA1XRxRSSIsCount])
  {
    [toCopy clearCellularPowerLogCDMA1XRxRSSIs];
    cellularPowerLogCDMA1XRxRSSIsCount = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogCDMA1XRxRSSIsCount];
    if (cellularPowerLogCDMA1XRxRSSIsCount)
    {
      v189 = cellularPowerLogCDMA1XRxRSSIsCount;
      for (i37 = 0; i37 != v189; ++i37)
      {
        v191 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogCDMA1XRxRSSIAtIndex:i37];
        [toCopy addCellularPowerLogCDMA1XRxRSSI:v191];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogCDMA1XRABModesCount])
  {
    [toCopy clearCellularPowerLogCDMA1XRABModes];
    cellularPowerLogCDMA1XRABModesCount = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogCDMA1XRABModesCount];
    if (cellularPowerLogCDMA1XRABModesCount)
    {
      v193 = cellularPowerLogCDMA1XRABModesCount;
      for (i38 = 0; i38 != v193; ++i38)
      {
        v195 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogCDMA1XRABModeAtIndex:i38];
        [toCopy addCellularPowerLogCDMA1XRABMode:v195];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogCDMA1XRxDiversitysCount])
  {
    [toCopy clearCellularPowerLogCDMA1XRxDiversitys];
    cellularPowerLogCDMA1XRxDiversitysCount = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogCDMA1XRxDiversitysCount];
    if (cellularPowerLogCDMA1XRxDiversitysCount)
    {
      v197 = cellularPowerLogCDMA1XRxDiversitysCount;
      for (i39 = 0; i39 != v197; ++i39)
      {
        v199 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogCDMA1XRxDiversityAtIndex:i39];
        [toCopy addCellularPowerLogCDMA1XRxDiversity:v199];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogWCDMACDRXConfigsCount])
  {
    [toCopy clearCellularPowerLogWCDMACDRXConfigs];
    cellularPowerLogWCDMACDRXConfigsCount = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogWCDMACDRXConfigsCount];
    if (cellularPowerLogWCDMACDRXConfigsCount)
    {
      v201 = cellularPowerLogWCDMACDRXConfigsCount;
      for (i40 = 0; i40 != v201; ++i40)
      {
        v203 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogWCDMACDRXConfigAtIndex:i40];
        [toCopy addCellularPowerLogWCDMACDRXConfig:v203];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogLTECDRXConfigsCount])
  {
    [toCopy clearCellularPowerLogLTECDRXConfigs];
    cellularPowerLogLTECDRXConfigsCount = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogLTECDRXConfigsCount];
    if (cellularPowerLogLTECDRXConfigsCount)
    {
      v205 = cellularPowerLogLTECDRXConfigsCount;
      for (i41 = 0; i41 != v205; ++i41)
      {
        v207 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogLTECDRXConfigAtIndex:i41];
        [toCopy addCellularPowerLogLTECDRXConfig:v207];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogWCDMARRCStateChangesCount])
  {
    [toCopy clearCellularPowerLogWCDMARRCStateChanges];
    cellularPowerLogWCDMARRCStateChangesCount = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogWCDMARRCStateChangesCount];
    if (cellularPowerLogWCDMARRCStateChangesCount)
    {
      v209 = cellularPowerLogWCDMARRCStateChangesCount;
      for (i42 = 0; i42 != v209; ++i42)
      {
        v211 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogWCDMARRCStateChangeAtIndex:i42];
        [toCopy addCellularPowerLogWCDMARRCStateChange:v211];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogLTERRCStateChangesCount])
  {
    [toCopy clearCellularPowerLogLTERRCStateChanges];
    cellularPowerLogLTERRCStateChangesCount = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogLTERRCStateChangesCount];
    if (cellularPowerLogLTERRCStateChangesCount)
    {
      v213 = cellularPowerLogLTERRCStateChangesCount;
      for (i43 = 0; i43 != v213; ++i43)
      {
        v215 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogLTERRCStateChangeAtIndex:i43];
        [toCopy addCellularPowerLogLTERRCStateChange:v215];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogSystemEventsCount])
  {
    [toCopy clearCellularPowerLogSystemEvents];
    cellularPowerLogSystemEventsCount = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogSystemEventsCount];
    if (cellularPowerLogSystemEventsCount)
    {
      v217 = cellularPowerLogSystemEventsCount;
      for (i44 = 0; i44 != v217; ++i44)
      {
        v219 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogSystemEventAtIndex:i44];
        [toCopy addCellularPowerLogSystemEvent:v219];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogRATReselectionEventsCount])
  {
    [toCopy clearCellularPowerLogRATReselectionEvents];
    cellularPowerLogRATReselectionEventsCount = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogRATReselectionEventsCount];
    if (cellularPowerLogRATReselectionEventsCount)
    {
      v221 = cellularPowerLogRATReselectionEventsCount;
      for (i45 = 0; i45 != v221; ++i45)
      {
        v223 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogRATReselectionEventAtIndex:i45];
        [toCopy addCellularPowerLogRATReselectionEvent:v223];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogRATRedirectionEventsCount])
  {
    [toCopy clearCellularPowerLogRATRedirectionEvents];
    cellularPowerLogRATRedirectionEventsCount = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogRATRedirectionEventsCount];
    if (cellularPowerLogRATRedirectionEventsCount)
    {
      v225 = cellularPowerLogRATRedirectionEventsCount;
      for (i46 = 0; i46 != v225; ++i46)
      {
        v227 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogRATRedirectionEventAtIndex:i46];
        [toCopy addCellularPowerLogRATRedirectionEvent:v227];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogGSMRRCStateChangesCount])
  {
    [toCopy clearCellularPowerLogGSMRRCStateChanges];
    cellularPowerLogGSMRRCStateChangesCount = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogGSMRRCStateChangesCount];
    if (cellularPowerLogGSMRRCStateChangesCount)
    {
      v229 = cellularPowerLogGSMRRCStateChangesCount;
      for (i47 = 0; i47 != v229; ++i47)
      {
        v231 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogGSMRRCStateChangeAtIndex:i47];
        [toCopy addCellularPowerLogGSMRRCStateChange:v231];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogCDMA1XRRCStateChangesCount])
  {
    [toCopy clearCellularPowerLogCDMA1XRRCStateChanges];
    cellularPowerLogCDMA1XRRCStateChangesCount = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogCDMA1XRRCStateChangesCount];
    if (cellularPowerLogCDMA1XRRCStateChangesCount)
    {
      v233 = cellularPowerLogCDMA1XRRCStateChangesCount;
      for (i48 = 0; i48 != v233; ++i48)
      {
        v235 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogCDMA1XRRCStateChangeAtIndex:i48];
        [toCopy addCellularPowerLogCDMA1XRRCStateChange:v235];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogHybridRRCStateChangesCount])
  {
    [toCopy clearCellularPowerLogHybridRRCStateChanges];
    cellularPowerLogHybridRRCStateChangesCount = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogHybridRRCStateChangesCount];
    if (cellularPowerLogHybridRRCStateChangesCount)
    {
      v237 = cellularPowerLogHybridRRCStateChangesCount;
      for (i49 = 0; i49 != v237; ++i49)
      {
        v239 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogHybridRRCStateChangeAtIndex:i49];
        [toCopy addCellularPowerLogHybridRRCStateChange:v239];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogServiceStateEventsCount])
  {
    [toCopy clearCellularPowerLogServiceStateEvents];
    cellularPowerLogServiceStateEventsCount = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogServiceStateEventsCount];
    if (cellularPowerLogServiceStateEventsCount)
    {
      v241 = cellularPowerLogServiceStateEventsCount;
      for (i50 = 0; i50 != v241; ++i50)
      {
        v243 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogServiceStateEventAtIndex:i50];
        [toCopy addCellularPowerLogServiceStateEvent:v243];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogPLMNScanEventsCount])
  {
    [toCopy clearCellularPowerLogPLMNScanEvents];
    cellularPowerLogPLMNScanEventsCount = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogPLMNScanEventsCount];
    if (cellularPowerLogPLMNScanEventsCount)
    {
      v245 = cellularPowerLogPLMNScanEventsCount;
      for (i51 = 0; i51 != v245; ++i51)
      {
        v247 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogPLMNScanEventAtIndex:i51];
        [toCopy addCellularPowerLogPLMNScanEvent:v247];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogPLMNSearchEventsCount])
  {
    [toCopy clearCellularPowerLogPLMNSearchEvents];
    cellularPowerLogPLMNSearchEventsCount = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogPLMNSearchEventsCount];
    if (cellularPowerLogPLMNSearchEventsCount)
    {
      v249 = cellularPowerLogPLMNSearchEventsCount;
      for (i52 = 0; i52 != v249; ++i52)
      {
        v251 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogPLMNSearchEventAtIndex:i52];
        [toCopy addCellularPowerLogPLMNSearchEvent:v251];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRSARRCStateChangesCount])
  {
    [toCopy clearCellularPowerLogNRSARRCStateChanges];
    cellularPowerLogNRSARRCStateChangesCount = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRSARRCStateChangesCount];
    if (cellularPowerLogNRSARRCStateChangesCount)
    {
      v253 = cellularPowerLogNRSARRCStateChangesCount;
      for (i53 = 0; i53 != v253; ++i53)
      {
        v255 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRSARRCStateChangeAtIndex:i53];
        [toCopy addCellularPowerLogNRSARRCStateChange:v255];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRNSAENDCEventsCount])
  {
    [toCopy clearCellularPowerLogNRNSAENDCEvents];
    cellularPowerLogNRNSAENDCEventsCount = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRNSAENDCEventsCount];
    if (cellularPowerLogNRNSAENDCEventsCount)
    {
      v257 = cellularPowerLogNRNSAENDCEventsCount;
      for (i54 = 0; i54 != v257; ++i54)
      {
        v259 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRNSAENDCEventAtIndex:i54];
        [toCopy addCellularPowerLogNRNSAENDCEvent:v259];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRCDRXConfigsCount])
  {
    [toCopy clearCellularPowerLogNRCDRXConfigs];
    cellularPowerLogNRCDRXConfigsCount = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRCDRXConfigsCount];
    if (cellularPowerLogNRCDRXConfigsCount)
    {
      v261 = cellularPowerLogNRCDRXConfigsCount;
      for (i55 = 0; i55 != v261; ++i55)
      {
        v263 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRCDRXConfigAtIndex:i55];
        [toCopy addCellularPowerLogNRCDRXConfig:v263];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRsub6BWPsCount])
  {
    [toCopy clearCellularPowerLogNRsub6BWPs];
    cellularPowerLogNRsub6BWPsCount = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRsub6BWPsCount];
    if (cellularPowerLogNRsub6BWPsCount)
    {
      v265 = cellularPowerLogNRsub6BWPsCount;
      for (i56 = 0; i56 != v265; ++i56)
      {
        v267 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRsub6BWPAtIndex:i56];
        [toCopy addCellularPowerLogNRsub6BWP:v267];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogRFTunerStatsHistsCount])
  {
    [toCopy clearCellularPowerLogRFTunerStatsHists];
    cellularPowerLogRFTunerStatsHistsCount = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogRFTunerStatsHistsCount];
    if (cellularPowerLogRFTunerStatsHistsCount)
    {
      v269 = cellularPowerLogRFTunerStatsHistsCount;
      for (i57 = 0; i57 != v269; ++i57)
      {
        v271 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogRFTunerStatsHistAtIndex:i57];
        [toCopy addCellularPowerLogRFTunerStatsHist:v271];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRsub6CASCCConfiguredsCount])
  {
    [toCopy clearCellularPowerLogNRsub6CASCCConfigureds];
    cellularPowerLogNRsub6CASCCConfiguredsCount = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRsub6CASCCConfiguredsCount];
    if (cellularPowerLogNRsub6CASCCConfiguredsCount)
    {
      v273 = cellularPowerLogNRsub6CASCCConfiguredsCount;
      for (i58 = 0; i58 != v273; ++i58)
      {
        v275 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRsub6CASCCConfiguredAtIndex:i58];
        [toCopy addCellularPowerLogNRsub6CASCCConfigured:v275];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRsub6CASCCActivatedsCount])
  {
    [toCopy clearCellularPowerLogNRsub6CASCCActivateds];
    cellularPowerLogNRsub6CASCCActivatedsCount = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRsub6CASCCActivatedsCount];
    if (cellularPowerLogNRsub6CASCCActivatedsCount)
    {
      v277 = cellularPowerLogNRsub6CASCCActivatedsCount;
      for (i59 = 0; i59 != v277; ++i59)
      {
        v279 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRsub6CASCCActivatedAtIndex:i59];
        [toCopy addCellularPowerLogNRsub6CASCCActivated:v279];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRsub6RxTxsCount])
  {
    [toCopy clearCellularPowerLogNRsub6RxTxs];
    cellularPowerLogNRsub6RxTxsCount = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRsub6RxTxsCount];
    if (cellularPowerLogNRsub6RxTxsCount)
    {
      v281 = cellularPowerLogNRsub6RxTxsCount;
      for (i60 = 0; i60 != v281; ++i60)
      {
        v283 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRsub6RxTxAtIndex:i60];
        [toCopy addCellularPowerLogNRsub6RxTx:v283];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRsub6CarrierComponentInfosCount])
  {
    [toCopy clearCellularPowerLogNRsub6CarrierComponentInfos];
    cellularPowerLogNRsub6CarrierComponentInfosCount = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRsub6CarrierComponentInfosCount];
    if (cellularPowerLogNRsub6CarrierComponentInfosCount)
    {
      v285 = cellularPowerLogNRsub6CarrierComponentInfosCount;
      for (i61 = 0; i61 != v285; ++i61)
      {
        v287 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRsub6CarrierComponentInfoAtIndex:i61];
        [toCopy addCellularPowerLogNRsub6CarrierComponentInfo:v287];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRsub6DLTBSsCount])
  {
    [toCopy clearCellularPowerLogNRsub6DLTBSs];
    cellularPowerLogNRsub6DLTBSsCount = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRsub6DLTBSsCount];
    if (cellularPowerLogNRsub6DLTBSsCount)
    {
      v289 = cellularPowerLogNRsub6DLTBSsCount;
      for (i62 = 0; i62 != v289; ++i62)
      {
        v291 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRsub6DLTBSAtIndex:i62];
        [toCopy addCellularPowerLogNRsub6DLTBS:v291];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRsub6RSRPsCount])
  {
    [toCopy clearCellularPowerLogNRsub6RSRPs];
    cellularPowerLogNRsub6RSRPsCount = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRsub6RSRPsCount];
    if (cellularPowerLogNRsub6RSRPsCount)
    {
      v293 = cellularPowerLogNRsub6RSRPsCount;
      for (i63 = 0; i63 != v293; ++i63)
      {
        v295 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRsub6RSRPAtIndex:i63];
        [toCopy addCellularPowerLogNRsub6RSRP:v295];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRsub6ULCAStatesCount])
  {
    [toCopy clearCellularPowerLogNRsub6ULCAStates];
    cellularPowerLogNRsub6ULCAStatesCount = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRsub6ULCAStatesCount];
    if (cellularPowerLogNRsub6ULCAStatesCount)
    {
      v297 = cellularPowerLogNRsub6ULCAStatesCount;
      for (i64 = 0; i64 != v297; ++i64)
      {
        v299 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRsub6ULCAStateAtIndex:i64];
        [toCopy addCellularPowerLogNRsub6ULCAState:v299];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRsub6TxPowersCount])
  {
    [toCopy clearCellularPowerLogNRsub6TxPowers];
    cellularPowerLogNRsub6TxPowersCount = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRsub6TxPowersCount];
    if (cellularPowerLogNRsub6TxPowersCount)
    {
      v301 = cellularPowerLogNRsub6TxPowersCount;
      for (i65 = 0; i65 != v301; ++i65)
      {
        v303 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRsub6TxPowerAtIndex:i65];
        [toCopy addCellularPowerLogNRsub6TxPower:v303];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRsub6RxDiversitysCount])
  {
    [toCopy clearCellularPowerLogNRsub6RxDiversitys];
    cellularPowerLogNRsub6RxDiversitysCount = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRsub6RxDiversitysCount];
    if (cellularPowerLogNRsub6RxDiversitysCount)
    {
      v305 = cellularPowerLogNRsub6RxDiversitysCount;
      for (i66 = 0; i66 != v305; ++i66)
      {
        v307 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRsub6RxDiversityAtIndex:i66];
        [toCopy addCellularPowerLogNRsub6RxDiversity:v307];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogSPMIsCount])
  {
    [toCopy clearCellularPowerLogSPMIs];
    cellularPowerLogSPMIsCount = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogSPMIsCount];
    if (cellularPowerLogSPMIsCount)
    {
      v309 = cellularPowerLogSPMIsCount;
      for (i67 = 0; i67 != v309; ++i67)
      {
        v311 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogSPMIAtIndex:i67];
        [toCopy addCellularPowerLogSPMI:v311];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRmmWaveBWPsCount])
  {
    [toCopy clearCellularPowerLogNRmmWaveBWPs];
    cellularPowerLogNRmmWaveBWPsCount = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRmmWaveBWPsCount];
    if (cellularPowerLogNRmmWaveBWPsCount)
    {
      v313 = cellularPowerLogNRmmWaveBWPsCount;
      for (i68 = 0; i68 != v313; ++i68)
      {
        v315 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRmmWaveBWPAtIndex:i68];
        [toCopy addCellularPowerLogNRmmWaveBWP:v315];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRmmWaveAntennaPanelsCount])
  {
    [toCopy clearCellularPowerLogNRmmWaveAntennaPanels];
    cellularPowerLogNRmmWaveAntennaPanelsCount = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRmmWaveAntennaPanelsCount];
    if (cellularPowerLogNRmmWaveAntennaPanelsCount)
    {
      v317 = cellularPowerLogNRmmWaveAntennaPanelsCount;
      for (i69 = 0; i69 != v317; ++i69)
      {
        v319 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRmmWaveAntennaPanelAtIndex:i69];
        [toCopy addCellularPowerLogNRmmWaveAntennaPanel:v319];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRFRCoveragesCount])
  {
    [toCopy clearCellularPowerLogNRFRCoverages];
    cellularPowerLogNRFRCoveragesCount = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRFRCoveragesCount];
    if (cellularPowerLogNRFRCoveragesCount)
    {
      v321 = cellularPowerLogNRFRCoveragesCount;
      for (i70 = 0; i70 != v321; ++i70)
      {
        v323 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRFRCoverageAtIndex:i70];
        [toCopy addCellularPowerLogNRFRCoverage:v323];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRmmWaveBeamIDsCount])
  {
    [toCopy clearCellularPowerLogNRmmWaveBeamIDs];
    cellularPowerLogNRmmWaveBeamIDsCount = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRmmWaveBeamIDsCount];
    if (cellularPowerLogNRmmWaveBeamIDsCount)
    {
      v325 = cellularPowerLogNRmmWaveBeamIDsCount;
      for (i71 = 0; i71 != v325; ++i71)
      {
        v327 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRmmWaveBeamIDAtIndex:i71];
        [toCopy addCellularPowerLogNRmmWaveBeamID:v327];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogSFTStatesCount])
  {
    [toCopy clearCellularPowerLogSFTStates];
    cellularPowerLogSFTStatesCount = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogSFTStatesCount];
    if (cellularPowerLogSFTStatesCount)
    {
      v329 = cellularPowerLogSFTStatesCount;
      for (i72 = 0; i72 != v329; ++i72)
      {
        v331 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogSFTStateAtIndex:i72];
        [toCopy addCellularPowerLogSFTState:v331];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRmmWaveCASCCConfiguredsCount])
  {
    [toCopy clearCellularPowerLogNRmmWaveCASCCConfigureds];
    cellularPowerLogNRmmWaveCASCCConfiguredsCount = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRmmWaveCASCCConfiguredsCount];
    if (cellularPowerLogNRmmWaveCASCCConfiguredsCount)
    {
      v333 = cellularPowerLogNRmmWaveCASCCConfiguredsCount;
      for (i73 = 0; i73 != v333; ++i73)
      {
        v335 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRmmWaveCASCCConfiguredAtIndex:i73];
        [toCopy addCellularPowerLogNRmmWaveCASCCConfigured:v335];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRmmWaveCASCCActivatedsCount])
  {
    [toCopy clearCellularPowerLogNRmmWaveCASCCActivateds];
    cellularPowerLogNRmmWaveCASCCActivatedsCount = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRmmWaveCASCCActivatedsCount];
    if (cellularPowerLogNRmmWaveCASCCActivatedsCount)
    {
      v337 = cellularPowerLogNRmmWaveCASCCActivatedsCount;
      for (i74 = 0; i74 != v337; ++i74)
      {
        v339 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRmmWaveCASCCActivatedAtIndex:i74];
        [toCopy addCellularPowerLogNRmmWaveCASCCActivated:v339];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRmmWaveRxTxsCount])
  {
    [toCopy clearCellularPowerLogNRmmWaveRxTxs];
    cellularPowerLogNRmmWaveRxTxsCount = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRmmWaveRxTxsCount];
    if (cellularPowerLogNRmmWaveRxTxsCount)
    {
      v341 = cellularPowerLogNRmmWaveRxTxsCount;
      for (i75 = 0; i75 != v341; ++i75)
      {
        v343 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRmmWaveRxTxAtIndex:i75];
        [toCopy addCellularPowerLogNRmmWaveRxTx:v343];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRmmWaveCarrierComponentInfosCount])
  {
    [toCopy clearCellularPowerLogNRmmWaveCarrierComponentInfos];
    cellularPowerLogNRmmWaveCarrierComponentInfosCount = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRmmWaveCarrierComponentInfosCount];
    if (cellularPowerLogNRmmWaveCarrierComponentInfosCount)
    {
      v345 = cellularPowerLogNRmmWaveCarrierComponentInfosCount;
      for (i76 = 0; i76 != v345; ++i76)
      {
        v347 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRmmWaveCarrierComponentInfoAtIndex:i76];
        [toCopy addCellularPowerLogNRmmWaveCarrierComponentInfo:v347];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRmmWaveDLTBSsCount])
  {
    [toCopy clearCellularPowerLogNRmmWaveDLTBSs];
    cellularPowerLogNRmmWaveDLTBSsCount = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRmmWaveDLTBSsCount];
    if (cellularPowerLogNRmmWaveDLTBSsCount)
    {
      v349 = cellularPowerLogNRmmWaveDLTBSsCount;
      for (i77 = 0; i77 != v349; ++i77)
      {
        v351 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRmmWaveDLTBSAtIndex:i77];
        [toCopy addCellularPowerLogNRmmWaveDLTBS:v351];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRMmWaveRSRPsCount])
  {
    [toCopy clearCellularPowerLogNRMmWaveRSRPs];
    cellularPowerLogNRMmWaveRSRPsCount = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRMmWaveRSRPsCount];
    if (cellularPowerLogNRMmWaveRSRPsCount)
    {
      v353 = cellularPowerLogNRMmWaveRSRPsCount;
      for (i78 = 0; i78 != v353; ++i78)
      {
        v355 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRMmWaveRSRPAtIndex:i78];
        [toCopy addCellularPowerLogNRMmWaveRSRP:v355];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogSFTRxTxsCount])
  {
    [toCopy clearCellularPowerLogSFTRxTxs];
    cellularPowerLogSFTRxTxsCount = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogSFTRxTxsCount];
    if (cellularPowerLogSFTRxTxsCount)
    {
      v357 = cellularPowerLogSFTRxTxsCount;
      for (i79 = 0; i79 != v357; ++i79)
      {
        v359 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogSFTRxTxAtIndex:i79];
        [toCopy addCellularPowerLogSFTRxTx:v359];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRMmWaveTxPowersCount])
  {
    [toCopy clearCellularPowerLogNRMmWaveTxPowers];
    cellularPowerLogNRMmWaveTxPowersCount = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRMmWaveTxPowersCount];
    if (cellularPowerLogNRMmWaveTxPowersCount)
    {
      v361 = cellularPowerLogNRMmWaveTxPowersCount;
      for (i80 = 0; i80 != v361; ++i80)
      {
        v363 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRMmWaveTxPowerAtIndex:i80];
        [toCopy addCellularPowerLogNRMmWaveTxPower:v363];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRMmWaveULCAStatesCount])
  {
    [toCopy clearCellularPowerLogNRMmWaveULCAStates];
    cellularPowerLogNRMmWaveULCAStatesCount = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRMmWaveULCAStatesCount];
    if (cellularPowerLogNRMmWaveULCAStatesCount)
    {
      v365 = cellularPowerLogNRMmWaveULCAStatesCount;
      for (i81 = 0; i81 != v365; ++i81)
      {
        v367 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRMmWaveULCAStateAtIndex:i81];
        [toCopy addCellularPowerLogNRMmWaveULCAState:v367];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRsub6BWPSCCsCount])
  {
    [toCopy clearCellularPowerLogNRsub6BWPSCCs];
    cellularPowerLogNRsub6BWPSCCsCount = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRsub6BWPSCCsCount];
    if (cellularPowerLogNRsub6BWPSCCsCount)
    {
      v369 = cellularPowerLogNRsub6BWPSCCsCount;
      for (i82 = 0; i82 != v369; ++i82)
      {
        v371 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRsub6BWPSCCAtIndex:i82];
        [toCopy addCellularPowerLogNRsub6BWPSCC:v371];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRmmWaveBWPSCCsCount])
  {
    [toCopy clearCellularPowerLogNRmmWaveBWPSCCs];
    cellularPowerLogNRmmWaveBWPSCCsCount = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRmmWaveBWPSCCsCount];
    if (cellularPowerLogNRmmWaveBWPSCCsCount)
    {
      v373 = cellularPowerLogNRmmWaveBWPSCCsCount;
      for (i83 = 0; i83 != v373; ++i83)
      {
        v375 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRmmWaveBWPSCCAtIndex:i83];
        [toCopy addCellularPowerLogNRmmWaveBWPSCC:v375];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRDCEventsCount])
  {
    [toCopy clearCellularPowerLogNRDCEvents];
    cellularPowerLogNRDCEventsCount = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRDCEventsCount];
    if (cellularPowerLogNRDCEventsCount)
    {
      v377 = cellularPowerLogNRDCEventsCount;
      for (i84 = 0; i84 != v377; ++i84)
      {
        v379 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRDCEventAtIndex:i84];
        [toCopy addCellularPowerLogNRDCEvent:v379];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogWUSsCount])
  {
    [toCopy clearCellularPowerLogWUSs];
    cellularPowerLogWUSsCount = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogWUSsCount];
    if (cellularPowerLogWUSsCount)
    {
      v381 = cellularPowerLogWUSsCount;
      for (i85 = 0; i85 != v381; ++i85)
      {
        v383 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogWUSAtIndex:i85];
        [toCopy addCellularPowerLogWUS:v383];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRsub6BWPSAsCount])
  {
    [toCopy clearCellularPowerLogNRsub6BWPSAs];
    cellularPowerLogNRsub6BWPSAsCount = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRsub6BWPSAsCount];
    if (cellularPowerLogNRsub6BWPSAsCount)
    {
      v385 = cellularPowerLogNRsub6BWPSAsCount;
      for (i86 = 0; i86 != v385; ++i86)
      {
        v387 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRsub6BWPSAAtIndex:i86];
        [toCopy addCellularPowerLogNRsub6BWPSA:v387];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v1064 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v964 = 0u;
  v965 = 0u;
  v966 = 0u;
  v967 = 0u;
  v6 = self->_cellularPerClientProfileTriggerCounts;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v964 objects:v1063 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v965;
    do
    {
      v10 = 0;
      do
      {
        if (*v965 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v964 + 1) + 8 * v10) copyWithZone:zone];
        [v5 addCellularPerClientProfileTriggerCount:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v964 objects:v1063 count:16];
    }

    while (v8);
  }

  v963 = 0u;
  v962 = 0u;
  v961 = 0u;
  v960 = 0u;
  v12 = self->_cellularNrSDMActivations;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v960 objects:v1062 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v961;
    do
    {
      v16 = 0;
      do
      {
        if (*v961 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v960 + 1) + 8 * v16) copyWithZone:zone];
        [v5 addCellularNrSDMActivation:v17];

        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v960 objects:v1062 count:16];
    }

    while (v14);
  }

  v959 = 0u;
  v958 = 0u;
  v957 = 0u;
  v956 = 0u;
  v18 = self->_cellularNrSdmEndcReleases;
  v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v956 objects:v1061 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v957;
    do
    {
      v22 = 0;
      do
      {
        if (*v957 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = [*(*(&v956 + 1) + 8 * v22) copyWithZone:zone];
        [v5 addCellularNrSdmEndcRelease:v23];

        ++v22;
      }

      while (v20 != v22);
      v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v956 objects:v1061 count:16];
    }

    while (v20);
  }

  v955 = 0u;
  v954 = 0u;
  v953 = 0u;
  v952 = 0u;
  v24 = self->_cellularDynamicRatSelections;
  v25 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v952 objects:v1060 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v953;
    do
    {
      v28 = 0;
      do
      {
        if (*v953 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = [*(*(&v952 + 1) + 8 * v28) copyWithZone:zone];
        [v5 addCellularDynamicRatSelection:v29];

        ++v28;
      }

      while (v26 != v28);
      v26 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v952 objects:v1060 count:16];
    }

    while (v26);
  }

  v951 = 0u;
  v950 = 0u;
  v949 = 0u;
  v948 = 0u;
  v30 = self->_cellularRfTunerHists;
  v31 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v948 objects:v1059 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v949;
    do
    {
      v34 = 0;
      do
      {
        if (*v949 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = [*(*(&v948 + 1) + 8 * v34) copyWithZone:zone];
        [v5 addCellularRfTunerHist:v35];

        ++v34;
      }

      while (v32 != v34);
      v32 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v948 objects:v1059 count:16];
    }

    while (v32);
  }

  v947 = 0u;
  v946 = 0u;
  v945 = 0u;
  v944 = 0u;
  v36 = self->_cellularPowerLogXOShutdowns;
  v37 = [(NSMutableArray *)v36 countByEnumeratingWithState:&v944 objects:v1058 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v945;
    do
    {
      v40 = 0;
      do
      {
        if (*v945 != v39)
        {
          objc_enumerationMutation(v36);
        }

        v41 = [*(*(&v944 + 1) + 8 * v40) copyWithZone:zone];
        [v5 addCellularPowerLogXOShutdown:v41];

        ++v40;
      }

      while (v38 != v40);
      v38 = [(NSMutableArray *)v36 countByEnumeratingWithState:&v944 objects:v1058 count:16];
    }

    while (v38);
  }

  v943 = 0u;
  v942 = 0u;
  v941 = 0u;
  v940 = 0u;
  v42 = self->_cellularPowerLogAPPSPerfLevels;
  v43 = [(NSMutableArray *)v42 countByEnumeratingWithState:&v940 objects:v1057 count:16];
  if (v43)
  {
    v44 = v43;
    v45 = *v941;
    do
    {
      v46 = 0;
      do
      {
        if (*v941 != v45)
        {
          objc_enumerationMutation(v42);
        }

        v47 = [*(*(&v940 + 1) + 8 * v46) copyWithZone:zone];
        [v5 addCellularPowerLogAPPSPerfLevels:v47];

        ++v46;
      }

      while (v44 != v46);
      v44 = [(NSMutableArray *)v42 countByEnumeratingWithState:&v940 objects:v1057 count:16];
    }

    while (v44);
  }

  v939 = 0u;
  v938 = 0u;
  v937 = 0u;
  v936 = 0u;
  v48 = self->_cellularPowerLogAPPSCXOShutdowns;
  v49 = [(NSMutableArray *)v48 countByEnumeratingWithState:&v936 objects:v1056 count:16];
  if (v49)
  {
    v50 = v49;
    v51 = *v937;
    do
    {
      v52 = 0;
      do
      {
        if (*v937 != v51)
        {
          objc_enumerationMutation(v48);
        }

        v53 = [*(*(&v936 + 1) + 8 * v52) copyWithZone:zone];
        [v5 addCellularPowerLogAPPSCXOShutdown:v53];

        ++v52;
      }

      while (v50 != v52);
      v50 = [(NSMutableArray *)v48 countByEnumeratingWithState:&v936 objects:v1056 count:16];
    }

    while (v50);
  }

  v935 = 0u;
  v934 = 0u;
  v933 = 0u;
  v932 = 0u;
  v54 = self->_cellularPowerLogAPPSSleepVetos;
  v55 = [(NSMutableArray *)v54 countByEnumeratingWithState:&v932 objects:v1055 count:16];
  if (v55)
  {
    v56 = v55;
    v57 = *v933;
    do
    {
      v58 = 0;
      do
      {
        if (*v933 != v57)
        {
          objc_enumerationMutation(v54);
        }

        v59 = [*(*(&v932 + 1) + 8 * v58) copyWithZone:zone];
        [v5 addCellularPowerLogAPPSSleepVeto:v59];

        ++v58;
      }

      while (v56 != v58);
      v56 = [(NSMutableArray *)v54 countByEnumeratingWithState:&v932 objects:v1055 count:16];
    }

    while (v56);
  }

  v931 = 0u;
  v930 = 0u;
  v929 = 0u;
  v928 = 0u;
  v60 = self->_cellularPowerLogMCPMSleepVetos;
  v61 = [(NSMutableArray *)v60 countByEnumeratingWithState:&v928 objects:v1054 count:16];
  if (v61)
  {
    v62 = v61;
    v63 = *v929;
    do
    {
      v64 = 0;
      do
      {
        if (*v929 != v63)
        {
          objc_enumerationMutation(v60);
        }

        v65 = [*(*(&v928 + 1) + 8 * v64) copyWithZone:zone];
        [v5 addCellularPowerLogMCPMSleepVeto:v65];

        ++v64;
      }

      while (v62 != v64);
      v62 = [(NSMutableArray *)v60 countByEnumeratingWithState:&v928 objects:v1054 count:16];
    }

    while (v62);
  }

  v927 = 0u;
  v926 = 0u;
  v925 = 0u;
  v924 = 0u;
  v66 = self->_cellularPowerLogMPSSPerfLevels;
  v67 = [(NSMutableArray *)v66 countByEnumeratingWithState:&v924 objects:v1053 count:16];
  if (v67)
  {
    v68 = v67;
    v69 = *v925;
    do
    {
      v70 = 0;
      do
      {
        if (*v925 != v69)
        {
          objc_enumerationMutation(v66);
        }

        v71 = [*(*(&v924 + 1) + 8 * v70) copyWithZone:zone];
        [v5 addCellularPowerLogMPSSPerfLevels:v71];

        ++v70;
      }

      while (v68 != v70);
      v68 = [(NSMutableArray *)v66 countByEnumeratingWithState:&v924 objects:v1053 count:16];
    }

    while (v68);
  }

  v923 = 0u;
  v922 = 0u;
  v921 = 0u;
  v920 = 0u;
  v72 = self->_cellularPowerLogGPSStates;
  v73 = [(NSMutableArray *)v72 countByEnumeratingWithState:&v920 objects:v1052 count:16];
  if (v73)
  {
    v74 = v73;
    v75 = *v921;
    do
    {
      v76 = 0;
      do
      {
        if (*v921 != v75)
        {
          objc_enumerationMutation(v72);
        }

        v77 = [*(*(&v920 + 1) + 8 * v76) copyWithZone:zone];
        [v5 addCellularPowerLogGPSStates:v77];

        ++v76;
      }

      while (v74 != v76);
      v74 = [(NSMutableArray *)v72 countByEnumeratingWithState:&v920 objects:v1052 count:16];
    }

    while (v74);
  }

  v919 = 0u;
  v918 = 0u;
  v917 = 0u;
  v916 = 0u;
  v78 = self->_cellularPowerLogAOPUARTStates;
  v79 = [(NSMutableArray *)v78 countByEnumeratingWithState:&v916 objects:v1051 count:16];
  if (v79)
  {
    v80 = v79;
    v81 = *v917;
    do
    {
      v82 = 0;
      do
      {
        if (*v917 != v81)
        {
          objc_enumerationMutation(v78);
        }

        v83 = [*(*(&v916 + 1) + 8 * v82) copyWithZone:zone];
        [v5 addCellularPowerLogAOPUARTStates:v83];

        ++v82;
      }

      while (v80 != v82);
      v80 = [(NSMutableArray *)v78 countByEnumeratingWithState:&v916 objects:v1051 count:16];
    }

    while (v80);
  }

  v915 = 0u;
  v914 = 0u;
  v913 = 0u;
  v912 = 0u;
  v84 = self->_cellularPowerLogWLANUARTStates;
  v85 = [(NSMutableArray *)v84 countByEnumeratingWithState:&v912 objects:v1050 count:16];
  if (v85)
  {
    v86 = v85;
    v87 = *v913;
    do
    {
      v88 = 0;
      do
      {
        if (*v913 != v87)
        {
          objc_enumerationMutation(v84);
        }

        v89 = [*(*(&v912 + 1) + 8 * v88) copyWithZone:zone];
        [v5 addCellularPowerLogWLANUARTStates:v89];

        ++v88;
      }

      while (v86 != v88);
      v86 = [(NSMutableArray *)v84 countByEnumeratingWithState:&v912 objects:v1050 count:16];
    }

    while (v86);
  }

  v911 = 0u;
  v910 = 0u;
  v909 = 0u;
  v908 = 0u;
  v90 = self->_cellularPowerLogPCIeStates;
  v91 = [(NSMutableArray *)v90 countByEnumeratingWithState:&v908 objects:v1049 count:16];
  if (v91)
  {
    v92 = v91;
    v93 = *v909;
    do
    {
      v94 = 0;
      do
      {
        if (*v909 != v93)
        {
          objc_enumerationMutation(v90);
        }

        v95 = [*(*(&v908 + 1) + 8 * v94) copyWithZone:zone];
        [v5 addCellularPowerLogPCIeStates:v95];

        ++v94;
      }

      while (v92 != v94);
      v92 = [(NSMutableArray *)v90 countByEnumeratingWithState:&v908 objects:v1049 count:16];
    }

    while (v92);
  }

  v907 = 0u;
  v906 = 0u;
  v905 = 0u;
  v904 = 0u;
  v96 = self->_cellularPowerLogL1SleepStates;
  v97 = [(NSMutableArray *)v96 countByEnumeratingWithState:&v904 objects:v1048 count:16];
  if (v97)
  {
    v98 = v97;
    v99 = *v905;
    do
    {
      v100 = 0;
      do
      {
        if (*v905 != v99)
        {
          objc_enumerationMutation(v96);
        }

        v101 = [*(*(&v904 + 1) + 8 * v100) copyWithZone:zone];
        [v5 addCellularPowerLogL1SleepStates:v101];

        ++v100;
      }

      while (v98 != v100);
      v98 = [(NSMutableArray *)v96 countByEnumeratingWithState:&v904 objects:v1048 count:16];
    }

    while (v98);
  }

  v903 = 0u;
  v902 = 0u;
  v901 = 0u;
  v900 = 0u;
  v102 = self->_cellularPowerLogLTEConfiguredCASCCStates;
  v103 = [(NSMutableArray *)v102 countByEnumeratingWithState:&v900 objects:v1047 count:16];
  if (v103)
  {
    v104 = v103;
    v105 = *v901;
    do
    {
      v106 = 0;
      do
      {
        if (*v901 != v105)
        {
          objc_enumerationMutation(v102);
        }

        v107 = [*(*(&v900 + 1) + 8 * v106) copyWithZone:zone];
        [v5 addCellularPowerLogLTEConfiguredCASCCStates:v107];

        ++v106;
      }

      while (v104 != v106);
      v104 = [(NSMutableArray *)v102 countByEnumeratingWithState:&v900 objects:v1047 count:16];
    }

    while (v104);
  }

  v899 = 0u;
  v898 = 0u;
  v897 = 0u;
  v896 = 0u;
  v108 = self->_cellularPowerLogLTEActivatedCASCCStates;
  v109 = [(NSMutableArray *)v108 countByEnumeratingWithState:&v896 objects:v1046 count:16];
  if (v109)
  {
    v110 = v109;
    v111 = *v897;
    do
    {
      v112 = 0;
      do
      {
        if (*v897 != v111)
        {
          objc_enumerationMutation(v108);
        }

        v113 = [*(*(&v896 + 1) + 8 * v112) copyWithZone:zone];
        [v5 addCellularPowerLogLTEActivatedCASCCStates:v113];

        ++v112;
      }

      while (v110 != v112);
      v110 = [(NSMutableArray *)v108 countByEnumeratingWithState:&v896 objects:v1046 count:16];
    }

    while (v110);
  }

  v895 = 0u;
  v894 = 0u;
  v893 = 0u;
  v892 = 0u;
  v114 = self->_cellularPowerLogLTERxTxActivityStates;
  v115 = [(NSMutableArray *)v114 countByEnumeratingWithState:&v892 objects:v1045 count:16];
  if (v115)
  {
    v116 = v115;
    v117 = *v893;
    do
    {
      v118 = 0;
      do
      {
        if (*v893 != v117)
        {
          objc_enumerationMutation(v114);
        }

        v119 = [*(*(&v892 + 1) + 8 * v118) copyWithZone:zone];
        [v5 addCellularPowerLogLTERxTxActivityStates:v119];

        ++v118;
      }

      while (v116 != v118);
      v116 = [(NSMutableArray *)v114 countByEnumeratingWithState:&v892 objects:v1045 count:16];
    }

    while (v116);
  }

  v891 = 0u;
  v890 = 0u;
  v889 = 0u;
  v888 = 0u;
  v120 = self->_cellularPowerLogLTECarrierComponentInfos;
  v121 = [(NSMutableArray *)v120 countByEnumeratingWithState:&v888 objects:v1044 count:16];
  if (v121)
  {
    v122 = v121;
    v123 = *v889;
    do
    {
      v124 = 0;
      do
      {
        if (*v889 != v123)
        {
          objc_enumerationMutation(v120);
        }

        v125 = [*(*(&v888 + 1) + 8 * v124) copyWithZone:zone];
        [v5 addCellularPowerLogLTECarrierComponentInfo:v125];

        ++v124;
      }

      while (v122 != v124);
      v122 = [(NSMutableArray *)v120 countByEnumeratingWithState:&v888 objects:v1044 count:16];
    }

    while (v122);
  }

  v887 = 0u;
  v886 = 0u;
  v885 = 0u;
  v884 = 0u;
  v126 = self->_cellularPowerLogLTEAggregatedDLTBSs;
  v127 = [(NSMutableArray *)v126 countByEnumeratingWithState:&v884 objects:v1043 count:16];
  if (v127)
  {
    v128 = v127;
    v129 = *v885;
    do
    {
      v130 = 0;
      do
      {
        if (*v885 != v129)
        {
          objc_enumerationMutation(v126);
        }

        v131 = [*(*(&v884 + 1) + 8 * v130) copyWithZone:zone];
        [v5 addCellularPowerLogLTEAggregatedDLTBS:v131];

        ++v130;
      }

      while (v128 != v130);
      v128 = [(NSMutableArray *)v126 countByEnumeratingWithState:&v884 objects:v1043 count:16];
    }

    while (v128);
  }

  v883 = 0u;
  v882 = 0u;
  v881 = 0u;
  v880 = 0u;
  v132 = self->_cellularPowerLogLTERSRPs;
  v133 = [(NSMutableArray *)v132 countByEnumeratingWithState:&v880 objects:v1042 count:16];
  if (v133)
  {
    v134 = v133;
    v135 = *v881;
    do
    {
      v136 = 0;
      do
      {
        if (*v881 != v135)
        {
          objc_enumerationMutation(v132);
        }

        v137 = [*(*(&v880 + 1) + 8 * v136) copyWithZone:zone];
        [v5 addCellularPowerLogLTERSRP:v137];

        ++v136;
      }

      while (v134 != v136);
      v134 = [(NSMutableArray *)v132 countByEnumeratingWithState:&v880 objects:v1042 count:16];
    }

    while (v134);
  }

  v879 = 0u;
  v878 = 0u;
  v877 = 0u;
  v876 = 0u;
  v138 = self->_cellularPowerLogLTESINRs;
  v139 = [(NSMutableArray *)v138 countByEnumeratingWithState:&v876 objects:v1041 count:16];
  if (v139)
  {
    v140 = v139;
    v141 = *v877;
    do
    {
      v142 = 0;
      do
      {
        if (*v877 != v141)
        {
          objc_enumerationMutation(v138);
        }

        v143 = [*(*(&v876 + 1) + 8 * v142) copyWithZone:zone];
        [v5 addCellularPowerLogLTESINR:v143];

        ++v142;
      }

      while (v140 != v142);
      v140 = [(NSMutableArray *)v138 countByEnumeratingWithState:&v876 objects:v1041 count:16];
    }

    while (v140);
  }

  v875 = 0u;
  v874 = 0u;
  v873 = 0u;
  v872 = 0u;
  v144 = self->_cellularPowerLogLTETxPowers;
  v145 = [(NSMutableArray *)v144 countByEnumeratingWithState:&v872 objects:v1040 count:16];
  if (v145)
  {
    v146 = v145;
    v147 = *v873;
    do
    {
      v148 = 0;
      do
      {
        if (*v873 != v147)
        {
          objc_enumerationMutation(v144);
        }

        v149 = [*(*(&v872 + 1) + 8 * v148) copyWithZone:zone];
        [v5 addCellularPowerLogLTETxPower:v149];

        ++v148;
      }

      while (v146 != v148);
      v146 = [(NSMutableArray *)v144 countByEnumeratingWithState:&v872 objects:v1040 count:16];
    }

    while (v146);
  }

  v871 = 0u;
  v870 = 0u;
  v869 = 0u;
  v868 = 0u;
  v150 = self->_cellularPowerLogLTERxDiversitys;
  v151 = [(NSMutableArray *)v150 countByEnumeratingWithState:&v868 objects:v1039 count:16];
  if (v151)
  {
    v152 = v151;
    v153 = *v869;
    do
    {
      v154 = 0;
      do
      {
        if (*v869 != v153)
        {
          objc_enumerationMutation(v150);
        }

        v155 = [*(*(&v868 + 1) + 8 * v154) copyWithZone:zone];
        [v5 addCellularPowerLogLTERxDiversity:v155];

        ++v154;
      }

      while (v152 != v154);
      v152 = [(NSMutableArray *)v150 countByEnumeratingWithState:&v868 objects:v1039 count:16];
    }

    while (v152);
  }

  v867 = 0u;
  v866 = 0u;
  v865 = 0u;
  v864 = 0u;
  v156 = self->_cellularPowerLogLTEULCAStates;
  v157 = [(NSMutableArray *)v156 countByEnumeratingWithState:&v864 objects:v1038 count:16];
  if (v157)
  {
    v158 = v157;
    v159 = *v865;
    do
    {
      v160 = 0;
      do
      {
        if (*v865 != v159)
        {
          objc_enumerationMutation(v156);
        }

        v161 = [*(*(&v864 + 1) + 8 * v160) copyWithZone:zone];
        [v5 addCellularPowerLogLTEULCAState:v161];

        ++v160;
      }

      while (v158 != v160);
      v158 = [(NSMutableArray *)v156 countByEnumeratingWithState:&v864 objects:v1038 count:16];
    }

    while (v158);
  }

  v863 = 0u;
  v862 = 0u;
  v861 = 0u;
  v860 = 0u;
  v162 = self->_cellularPowerLogPowerEstimators;
  v163 = [(NSMutableArray *)v162 countByEnumeratingWithState:&v860 objects:v1037 count:16];
  if (v163)
  {
    v164 = v163;
    v165 = *v861;
    do
    {
      v166 = 0;
      do
      {
        if (*v861 != v165)
        {
          objc_enumerationMutation(v162);
        }

        v167 = [*(*(&v860 + 1) + 8 * v166) copyWithZone:zone];
        [v5 addCellularPowerLogPowerEstimator:v167];

        ++v166;
      }

      while (v164 != v166);
      v164 = [(NSMutableArray *)v162 countByEnumeratingWithState:&v860 objects:v1037 count:16];
    }

    while (v164);
  }

  v859 = 0u;
  v858 = 0u;
  v857 = 0u;
  v856 = 0u;
  v168 = self->_cellularPowerLogLTEPagingDRXCycles;
  v169 = [(NSMutableArray *)v168 countByEnumeratingWithState:&v856 objects:v1036 count:16];
  if (v169)
  {
    v170 = v169;
    v171 = *v857;
    do
    {
      v172 = 0;
      do
      {
        if (*v857 != v171)
        {
          objc_enumerationMutation(v168);
        }

        v173 = [*(*(&v856 + 1) + 8 * v172) copyWithZone:zone];
        [v5 addCellularPowerLogLTEPagingDRXCycle:v173];

        ++v172;
      }

      while (v170 != v172);
      v170 = [(NSMutableArray *)v168 countByEnumeratingWithState:&v856 objects:v1036 count:16];
    }

    while (v170);
  }

  v855 = 0u;
  v854 = 0u;
  v853 = 0u;
  v852 = 0u;
  v174 = self->_cellularPowerLogNRPagingDRXCycles;
  v175 = [(NSMutableArray *)v174 countByEnumeratingWithState:&v852 objects:v1035 count:16];
  if (v175)
  {
    v176 = v175;
    v177 = *v853;
    do
    {
      v178 = 0;
      do
      {
        if (*v853 != v177)
        {
          objc_enumerationMutation(v174);
        }

        v179 = [*(*(&v852 + 1) + 8 * v178) copyWithZone:zone];
        [v5 addCellularPowerLogNRPagingDRXCycle:v179];

        ++v178;
      }

      while (v176 != v178);
      v176 = [(NSMutableArray *)v174 countByEnumeratingWithState:&v852 objects:v1035 count:16];
    }

    while (v176);
  }

  v851 = 0u;
  v850 = 0u;
  v849 = 0u;
  v848 = 0u;
  v180 = self->_cellularPowerLogProtocolStates;
  v181 = [(NSMutableArray *)v180 countByEnumeratingWithState:&v848 objects:v1034 count:16];
  if (v181)
  {
    v182 = v181;
    v183 = *v849;
    do
    {
      v184 = 0;
      do
      {
        if (*v849 != v183)
        {
          objc_enumerationMutation(v180);
        }

        v185 = [*(*(&v848 + 1) + 8 * v184) copyWithZone:zone];
        [v5 addCellularPowerLogProtocolState:v185];

        ++v184;
      }

      while (v182 != v184);
      v182 = [(NSMutableArray *)v180 countByEnumeratingWithState:&v848 objects:v1034 count:16];
    }

    while (v182);
  }

  v847 = 0u;
  v846 = 0u;
  v845 = 0u;
  v844 = 0u;
  v186 = self->_cellularPowerLogPLMNSearchs;
  v187 = [(NSMutableArray *)v186 countByEnumeratingWithState:&v844 objects:v1033 count:16];
  if (v187)
  {
    v188 = v187;
    v189 = *v845;
    do
    {
      v190 = 0;
      do
      {
        if (*v845 != v189)
        {
          objc_enumerationMutation(v186);
        }

        v191 = [*(*(&v844 + 1) + 8 * v190) copyWithZone:zone];
        [v5 addCellularPowerLogPLMNSearch:v191];

        ++v190;
      }

      while (v188 != v190);
      v188 = [(NSMutableArray *)v186 countByEnumeratingWithState:&v844 objects:v1033 count:16];
    }

    while (v188);
  }

  v843 = 0u;
  v842 = 0u;
  v841 = 0u;
  v840 = 0u;
  v192 = self->_cellularPowerLogGSMTxPowers;
  v193 = [(NSMutableArray *)v192 countByEnumeratingWithState:&v840 objects:v1032 count:16];
  if (v193)
  {
    v194 = v193;
    v195 = *v841;
    do
    {
      v196 = 0;
      do
      {
        if (*v841 != v195)
        {
          objc_enumerationMutation(v192);
        }

        v197 = [*(*(&v840 + 1) + 8 * v196) copyWithZone:zone];
        [v5 addCellularPowerLogGSMTxPower:v197];

        ++v196;
      }

      while (v194 != v196);
      v194 = [(NSMutableArray *)v192 countByEnumeratingWithState:&v840 objects:v1032 count:16];
    }

    while (v194);
  }

  v839 = 0u;
  v838 = 0u;
  v837 = 0u;
  v836 = 0u;
  v198 = self->_cellularPowerLogGSMRxRSSIs;
  v199 = [(NSMutableArray *)v198 countByEnumeratingWithState:&v836 objects:v1031 count:16];
  if (v199)
  {
    v200 = v199;
    v201 = *v837;
    do
    {
      v202 = 0;
      do
      {
        if (*v837 != v201)
        {
          objc_enumerationMutation(v198);
        }

        v203 = [*(*(&v836 + 1) + 8 * v202) copyWithZone:zone];
        [v5 addCellularPowerLogGSMRxRSSI:v203];

        ++v202;
      }

      while (v200 != v202);
      v200 = [(NSMutableArray *)v198 countByEnumeratingWithState:&v836 objects:v1031 count:16];
    }

    while (v200);
  }

  v835 = 0u;
  v834 = 0u;
  v833 = 0u;
  v832 = 0u;
  v204 = self->_cellularPowerLogGSMRABModes;
  v205 = [(NSMutableArray *)v204 countByEnumeratingWithState:&v832 objects:v1030 count:16];
  if (v205)
  {
    v206 = v205;
    v207 = *v833;
    do
    {
      v208 = 0;
      do
      {
        if (*v833 != v207)
        {
          objc_enumerationMutation(v204);
        }

        v209 = [*(*(&v832 + 1) + 8 * v208) copyWithZone:zone];
        [v5 addCellularPowerLogGSMRABMode:v209];

        ++v208;
      }

      while (v206 != v208);
      v206 = [(NSMutableArray *)v204 countByEnumeratingWithState:&v832 objects:v1030 count:16];
    }

    while (v206);
  }

  v831 = 0u;
  v830 = 0u;
  v829 = 0u;
  v828 = 0u;
  v210 = self->_cellularPowerLogGSMRxDiversitys;
  v211 = [(NSMutableArray *)v210 countByEnumeratingWithState:&v828 objects:v1029 count:16];
  if (v211)
  {
    v212 = v211;
    v213 = *v829;
    do
    {
      v214 = 0;
      do
      {
        if (*v829 != v213)
        {
          objc_enumerationMutation(v210);
        }

        v215 = [*(*(&v828 + 1) + 8 * v214) copyWithZone:zone];
        [v5 addCellularPowerLogGSMRxDiversity:v215];

        ++v214;
      }

      while (v212 != v214);
      v212 = [(NSMutableArray *)v210 countByEnumeratingWithState:&v828 objects:v1029 count:16];
    }

    while (v212);
  }

  v827 = 0u;
  v826 = 0u;
  v825 = 0u;
  v824 = 0u;
  v216 = self->_cellularPowerLogWCDMATxPowers;
  v217 = [(NSMutableArray *)v216 countByEnumeratingWithState:&v824 objects:v1028 count:16];
  if (v217)
  {
    v218 = v217;
    v219 = *v825;
    do
    {
      v220 = 0;
      do
      {
        if (*v825 != v219)
        {
          objc_enumerationMutation(v216);
        }

        v221 = [*(*(&v824 + 1) + 8 * v220) copyWithZone:zone];
        [v5 addCellularPowerLogWCDMATxPower:v221];

        ++v220;
      }

      while (v218 != v220);
      v218 = [(NSMutableArray *)v216 countByEnumeratingWithState:&v824 objects:v1028 count:16];
    }

    while (v218);
  }

  v823 = 0u;
  v822 = 0u;
  v821 = 0u;
  v820 = 0u;
  v222 = self->_cellularPowerLogWCDMARxRSSIs;
  v223 = [(NSMutableArray *)v222 countByEnumeratingWithState:&v820 objects:v1027 count:16];
  if (v223)
  {
    v224 = v223;
    v225 = *v821;
    do
    {
      v226 = 0;
      do
      {
        if (*v821 != v225)
        {
          objc_enumerationMutation(v222);
        }

        v227 = [*(*(&v820 + 1) + 8 * v226) copyWithZone:zone];
        [v5 addCellularPowerLogWCDMARxRSSI:v227];

        ++v226;
      }

      while (v224 != v226);
      v224 = [(NSMutableArray *)v222 countByEnumeratingWithState:&v820 objects:v1027 count:16];
    }

    while (v224);
  }

  v819 = 0u;
  v818 = 0u;
  v817 = 0u;
  v816 = 0u;
  v228 = self->_cellularPowerLogNRSCGRels;
  v229 = [(NSMutableArray *)v228 countByEnumeratingWithState:&v816 objects:v1026 count:16];
  if (v229)
  {
    v230 = v229;
    v231 = *v817;
    do
    {
      v232 = 0;
      do
      {
        if (*v817 != v231)
        {
          objc_enumerationMutation(v228);
        }

        v233 = [*(*(&v816 + 1) + 8 * v232) copyWithZone:zone];
        [v5 addCellularPowerLogNRSCGRel:v233];

        ++v232;
      }

      while (v230 != v232);
      v230 = [(NSMutableArray *)v228 countByEnumeratingWithState:&v816 objects:v1026 count:16];
    }

    while (v230);
  }

  v815 = 0u;
  v814 = 0u;
  v813 = 0u;
  v812 = 0u;
  v234 = self->_cellularPowerLogWCDMARxDiversitys;
  v235 = [(NSMutableArray *)v234 countByEnumeratingWithState:&v812 objects:v1025 count:16];
  if (v235)
  {
    v236 = v235;
    v237 = *v813;
    do
    {
      v238 = 0;
      do
      {
        if (*v813 != v237)
        {
          objc_enumerationMutation(v234);
        }

        v239 = [*(*(&v812 + 1) + 8 * v238) copyWithZone:zone];
        [v5 addCellularPowerLogWCDMARxDiversity:v239];

        ++v238;
      }

      while (v236 != v238);
      v236 = [(NSMutableArray *)v234 countByEnumeratingWithState:&v812 objects:v1025 count:16];
    }

    while (v236);
  }

  v811 = 0u;
  v810 = 0u;
  v809 = 0u;
  v808 = 0u;
  v240 = self->_cellularPowerLogWCDMARABModes;
  v241 = [(NSMutableArray *)v240 countByEnumeratingWithState:&v808 objects:v1024 count:16];
  if (v241)
  {
    v242 = v241;
    v243 = *v809;
    do
    {
      v244 = 0;
      do
      {
        if (*v809 != v243)
        {
          objc_enumerationMutation(v240);
        }

        v245 = [*(*(&v808 + 1) + 8 * v244) copyWithZone:zone];
        [v5 addCellularPowerLogWCDMARABMode:v245];

        ++v244;
      }

      while (v242 != v244);
      v242 = [(NSMutableArray *)v240 countByEnumeratingWithState:&v808 objects:v1024 count:16];
    }

    while (v242);
  }

  v807 = 0u;
  v806 = 0u;
  v805 = 0u;
  v804 = 0u;
  v246 = self->_cellularPowerLogWCDMARABTypes;
  v247 = [(NSMutableArray *)v246 countByEnumeratingWithState:&v804 objects:v1023 count:16];
  if (v247)
  {
    v248 = v247;
    v249 = *v805;
    do
    {
      v250 = 0;
      do
      {
        if (*v805 != v249)
        {
          objc_enumerationMutation(v246);
        }

        v251 = [*(*(&v804 + 1) + 8 * v250) copyWithZone:zone];
        [v5 addCellularPowerLogWCDMARABType:v251];

        ++v250;
      }

      while (v248 != v250);
      v248 = [(NSMutableArray *)v246 countByEnumeratingWithState:&v804 objects:v1023 count:16];
    }

    while (v248);
  }

  v803 = 0u;
  v802 = 0u;
  v801 = 0u;
  v800 = 0u;
  v252 = self->_cellularPowerLogEVDOTxPowers;
  v253 = [(NSMutableArray *)v252 countByEnumeratingWithState:&v800 objects:v1022 count:16];
  if (v253)
  {
    v254 = v253;
    v255 = *v801;
    do
    {
      v256 = 0;
      do
      {
        if (*v801 != v255)
        {
          objc_enumerationMutation(v252);
        }

        v257 = [*(*(&v800 + 1) + 8 * v256) copyWithZone:zone];
        [v5 addCellularPowerLogEVDOTxPower:v257];

        ++v256;
      }

      while (v254 != v256);
      v254 = [(NSMutableArray *)v252 countByEnumeratingWithState:&v800 objects:v1022 count:16];
    }

    while (v254);
  }

  v799 = 0u;
  v798 = 0u;
  v797 = 0u;
  v796 = 0u;
  v258 = self->_cellularPowerLogEVDORxRSSIs;
  v259 = [(NSMutableArray *)v258 countByEnumeratingWithState:&v796 objects:v1021 count:16];
  if (v259)
  {
    v260 = v259;
    v261 = *v797;
    do
    {
      v262 = 0;
      do
      {
        if (*v797 != v261)
        {
          objc_enumerationMutation(v258);
        }

        v263 = [*(*(&v796 + 1) + 8 * v262) copyWithZone:zone];
        [v5 addCellularPowerLogEVDORxRSSI:v263];

        ++v262;
      }

      while (v260 != v262);
      v260 = [(NSMutableArray *)v258 countByEnumeratingWithState:&v796 objects:v1021 count:16];
    }

    while (v260);
  }

  v795 = 0u;
  v794 = 0u;
  v793 = 0u;
  v792 = 0u;
  v264 = self->_cellularPowerLogHybridRABModes;
  v265 = [(NSMutableArray *)v264 countByEnumeratingWithState:&v792 objects:v1020 count:16];
  if (v265)
  {
    v266 = v265;
    v267 = *v793;
    do
    {
      v268 = 0;
      do
      {
        if (*v793 != v267)
        {
          objc_enumerationMutation(v264);
        }

        v269 = [*(*(&v792 + 1) + 8 * v268) copyWithZone:zone];
        [v5 addCellularPowerLogHybridRABMode:v269];

        ++v268;
      }

      while (v266 != v268);
      v266 = [(NSMutableArray *)v264 countByEnumeratingWithState:&v792 objects:v1020 count:16];
    }

    while (v266);
  }

  v791 = 0u;
  v790 = 0u;
  v789 = 0u;
  v788 = 0u;
  v270 = self->_cellularPowerLogEVDORxDiversitys;
  v271 = [(NSMutableArray *)v270 countByEnumeratingWithState:&v788 objects:v1019 count:16];
  if (v271)
  {
    v272 = v271;
    v273 = *v789;
    do
    {
      v274 = 0;
      do
      {
        if (*v789 != v273)
        {
          objc_enumerationMutation(v270);
        }

        v275 = [*(*(&v788 + 1) + 8 * v274) copyWithZone:zone];
        [v5 addCellularPowerLogEVDORxDiversity:v275];

        ++v274;
      }

      while (v272 != v274);
      v272 = [(NSMutableArray *)v270 countByEnumeratingWithState:&v788 objects:v1019 count:16];
    }

    while (v272);
  }

  v787 = 0u;
  v786 = 0u;
  v785 = 0u;
  v784 = 0u;
  v276 = self->_cellularPowerLogCDMA1XTxPowers;
  v277 = [(NSMutableArray *)v276 countByEnumeratingWithState:&v784 objects:v1018 count:16];
  if (v277)
  {
    v278 = v277;
    v279 = *v785;
    do
    {
      v280 = 0;
      do
      {
        if (*v785 != v279)
        {
          objc_enumerationMutation(v276);
        }

        v281 = [*(*(&v784 + 1) + 8 * v280) copyWithZone:zone];
        [v5 addCellularPowerLogCDMA1XTxPower:v281];

        ++v280;
      }

      while (v278 != v280);
      v278 = [(NSMutableArray *)v276 countByEnumeratingWithState:&v784 objects:v1018 count:16];
    }

    while (v278);
  }

  v783 = 0u;
  v782 = 0u;
  v781 = 0u;
  v780 = 0u;
  v282 = self->_cellularPowerLogCDMA1XRxRSSIs;
  v283 = [(NSMutableArray *)v282 countByEnumeratingWithState:&v780 objects:v1017 count:16];
  if (v283)
  {
    v284 = v283;
    v285 = *v781;
    do
    {
      v286 = 0;
      do
      {
        if (*v781 != v285)
        {
          objc_enumerationMutation(v282);
        }

        v287 = [*(*(&v780 + 1) + 8 * v286) copyWithZone:zone];
        [v5 addCellularPowerLogCDMA1XRxRSSI:v287];

        ++v286;
      }

      while (v284 != v286);
      v284 = [(NSMutableArray *)v282 countByEnumeratingWithState:&v780 objects:v1017 count:16];
    }

    while (v284);
  }

  v779 = 0u;
  v778 = 0u;
  v777 = 0u;
  v776 = 0u;
  v288 = self->_cellularPowerLogCDMA1XRABModes;
  v289 = [(NSMutableArray *)v288 countByEnumeratingWithState:&v776 objects:v1016 count:16];
  if (v289)
  {
    v290 = v289;
    v291 = *v777;
    do
    {
      v292 = 0;
      do
      {
        if (*v777 != v291)
        {
          objc_enumerationMutation(v288);
        }

        v293 = [*(*(&v776 + 1) + 8 * v292) copyWithZone:zone];
        [v5 addCellularPowerLogCDMA1XRABMode:v293];

        ++v292;
      }

      while (v290 != v292);
      v290 = [(NSMutableArray *)v288 countByEnumeratingWithState:&v776 objects:v1016 count:16];
    }

    while (v290);
  }

  v775 = 0u;
  v774 = 0u;
  v773 = 0u;
  v772 = 0u;
  v294 = self->_cellularPowerLogCDMA1XRxDiversitys;
  v295 = [(NSMutableArray *)v294 countByEnumeratingWithState:&v772 objects:v1015 count:16];
  if (v295)
  {
    v296 = v295;
    v297 = *v773;
    do
    {
      v298 = 0;
      do
      {
        if (*v773 != v297)
        {
          objc_enumerationMutation(v294);
        }

        v299 = [*(*(&v772 + 1) + 8 * v298) copyWithZone:zone];
        [v5 addCellularPowerLogCDMA1XRxDiversity:v299];

        ++v298;
      }

      while (v296 != v298);
      v296 = [(NSMutableArray *)v294 countByEnumeratingWithState:&v772 objects:v1015 count:16];
    }

    while (v296);
  }

  v771 = 0u;
  v770 = 0u;
  v769 = 0u;
  v768 = 0u;
  v300 = self->_cellularPowerLogWCDMACDRXConfigs;
  v301 = [(NSMutableArray *)v300 countByEnumeratingWithState:&v768 objects:v1014 count:16];
  if (v301)
  {
    v302 = v301;
    v303 = *v769;
    do
    {
      v304 = 0;
      do
      {
        if (*v769 != v303)
        {
          objc_enumerationMutation(v300);
        }

        v305 = [*(*(&v768 + 1) + 8 * v304) copyWithZone:zone];
        [v5 addCellularPowerLogWCDMACDRXConfig:v305];

        ++v304;
      }

      while (v302 != v304);
      v302 = [(NSMutableArray *)v300 countByEnumeratingWithState:&v768 objects:v1014 count:16];
    }

    while (v302);
  }

  v767 = 0u;
  v766 = 0u;
  v765 = 0u;
  v764 = 0u;
  v306 = self->_cellularPowerLogLTECDRXConfigs;
  v307 = [(NSMutableArray *)v306 countByEnumeratingWithState:&v764 objects:v1013 count:16];
  if (v307)
  {
    v308 = v307;
    v309 = *v765;
    do
    {
      v310 = 0;
      do
      {
        if (*v765 != v309)
        {
          objc_enumerationMutation(v306);
        }

        v311 = [*(*(&v764 + 1) + 8 * v310) copyWithZone:zone];
        [v5 addCellularPowerLogLTECDRXConfig:v311];

        ++v310;
      }

      while (v308 != v310);
      v308 = [(NSMutableArray *)v306 countByEnumeratingWithState:&v764 objects:v1013 count:16];
    }

    while (v308);
  }

  v763 = 0u;
  v762 = 0u;
  v761 = 0u;
  v760 = 0u;
  v312 = self->_cellularPowerLogWCDMARRCStateChanges;
  v313 = [(NSMutableArray *)v312 countByEnumeratingWithState:&v760 objects:v1012 count:16];
  if (v313)
  {
    v314 = v313;
    v315 = *v761;
    do
    {
      v316 = 0;
      do
      {
        if (*v761 != v315)
        {
          objc_enumerationMutation(v312);
        }

        v317 = [*(*(&v760 + 1) + 8 * v316) copyWithZone:zone];
        [v5 addCellularPowerLogWCDMARRCStateChange:v317];

        ++v316;
      }

      while (v314 != v316);
      v314 = [(NSMutableArray *)v312 countByEnumeratingWithState:&v760 objects:v1012 count:16];
    }

    while (v314);
  }

  v759 = 0u;
  v758 = 0u;
  v757 = 0u;
  v756 = 0u;
  v318 = self->_cellularPowerLogLTERRCStateChanges;
  v319 = [(NSMutableArray *)v318 countByEnumeratingWithState:&v756 objects:v1011 count:16];
  if (v319)
  {
    v320 = v319;
    v321 = *v757;
    do
    {
      v322 = 0;
      do
      {
        if (*v757 != v321)
        {
          objc_enumerationMutation(v318);
        }

        v323 = [*(*(&v756 + 1) + 8 * v322) copyWithZone:zone];
        [v5 addCellularPowerLogLTERRCStateChange:v323];

        ++v322;
      }

      while (v320 != v322);
      v320 = [(NSMutableArray *)v318 countByEnumeratingWithState:&v756 objects:v1011 count:16];
    }

    while (v320);
  }

  v755 = 0u;
  v754 = 0u;
  v753 = 0u;
  v752 = 0u;
  v324 = self->_cellularPowerLogSystemEvents;
  v325 = [(NSMutableArray *)v324 countByEnumeratingWithState:&v752 objects:v1010 count:16];
  if (v325)
  {
    v326 = v325;
    v327 = *v753;
    do
    {
      v328 = 0;
      do
      {
        if (*v753 != v327)
        {
          objc_enumerationMutation(v324);
        }

        v329 = [*(*(&v752 + 1) + 8 * v328) copyWithZone:zone];
        [v5 addCellularPowerLogSystemEvent:v329];

        ++v328;
      }

      while (v326 != v328);
      v326 = [(NSMutableArray *)v324 countByEnumeratingWithState:&v752 objects:v1010 count:16];
    }

    while (v326);
  }

  v751 = 0u;
  v750 = 0u;
  v749 = 0u;
  v748 = 0u;
  v330 = self->_cellularPowerLogRATReselectionEvents;
  v331 = [(NSMutableArray *)v330 countByEnumeratingWithState:&v748 objects:v1009 count:16];
  if (v331)
  {
    v332 = v331;
    v333 = *v749;
    do
    {
      v334 = 0;
      do
      {
        if (*v749 != v333)
        {
          objc_enumerationMutation(v330);
        }

        v335 = [*(*(&v748 + 1) + 8 * v334) copyWithZone:zone];
        [v5 addCellularPowerLogRATReselectionEvent:v335];

        ++v334;
      }

      while (v332 != v334);
      v332 = [(NSMutableArray *)v330 countByEnumeratingWithState:&v748 objects:v1009 count:16];
    }

    while (v332);
  }

  v747 = 0u;
  v746 = 0u;
  v745 = 0u;
  v744 = 0u;
  v336 = self->_cellularPowerLogRATRedirectionEvents;
  v337 = [(NSMutableArray *)v336 countByEnumeratingWithState:&v744 objects:v1008 count:16];
  if (v337)
  {
    v338 = v337;
    v339 = *v745;
    do
    {
      v340 = 0;
      do
      {
        if (*v745 != v339)
        {
          objc_enumerationMutation(v336);
        }

        v341 = [*(*(&v744 + 1) + 8 * v340) copyWithZone:zone];
        [v5 addCellularPowerLogRATRedirectionEvent:v341];

        ++v340;
      }

      while (v338 != v340);
      v338 = [(NSMutableArray *)v336 countByEnumeratingWithState:&v744 objects:v1008 count:16];
    }

    while (v338);
  }

  v743 = 0u;
  v742 = 0u;
  v741 = 0u;
  v740 = 0u;
  v342 = self->_cellularPowerLogGSMRRCStateChanges;
  v343 = [(NSMutableArray *)v342 countByEnumeratingWithState:&v740 objects:v1007 count:16];
  if (v343)
  {
    v344 = v343;
    v345 = *v741;
    do
    {
      v346 = 0;
      do
      {
        if (*v741 != v345)
        {
          objc_enumerationMutation(v342);
        }

        v347 = [*(*(&v740 + 1) + 8 * v346) copyWithZone:zone];
        [v5 addCellularPowerLogGSMRRCStateChange:v347];

        ++v346;
      }

      while (v344 != v346);
      v344 = [(NSMutableArray *)v342 countByEnumeratingWithState:&v740 objects:v1007 count:16];
    }

    while (v344);
  }

  v739 = 0u;
  v738 = 0u;
  v737 = 0u;
  v736 = 0u;
  v348 = self->_cellularPowerLogCDMA1XRRCStateChanges;
  v349 = [(NSMutableArray *)v348 countByEnumeratingWithState:&v736 objects:v1006 count:16];
  if (v349)
  {
    v350 = v349;
    v351 = *v737;
    do
    {
      v352 = 0;
      do
      {
        if (*v737 != v351)
        {
          objc_enumerationMutation(v348);
        }

        v353 = [*(*(&v736 + 1) + 8 * v352) copyWithZone:zone];
        [v5 addCellularPowerLogCDMA1XRRCStateChange:v353];

        ++v352;
      }

      while (v350 != v352);
      v350 = [(NSMutableArray *)v348 countByEnumeratingWithState:&v736 objects:v1006 count:16];
    }

    while (v350);
  }

  v735 = 0u;
  v734 = 0u;
  v733 = 0u;
  v732 = 0u;
  v354 = self->_cellularPowerLogHybridRRCStateChanges;
  v355 = [(NSMutableArray *)v354 countByEnumeratingWithState:&v732 objects:v1005 count:16];
  if (v355)
  {
    v356 = v355;
    v357 = *v733;
    do
    {
      v358 = 0;
      do
      {
        if (*v733 != v357)
        {
          objc_enumerationMutation(v354);
        }

        v359 = [*(*(&v732 + 1) + 8 * v358) copyWithZone:zone];
        [v5 addCellularPowerLogHybridRRCStateChange:v359];

        ++v358;
      }

      while (v356 != v358);
      v356 = [(NSMutableArray *)v354 countByEnumeratingWithState:&v732 objects:v1005 count:16];
    }

    while (v356);
  }

  v731 = 0u;
  v730 = 0u;
  v729 = 0u;
  v728 = 0u;
  v360 = self->_cellularPowerLogServiceStateEvents;
  v361 = [(NSMutableArray *)v360 countByEnumeratingWithState:&v728 objects:v1004 count:16];
  if (v361)
  {
    v362 = v361;
    v363 = *v729;
    do
    {
      v364 = 0;
      do
      {
        if (*v729 != v363)
        {
          objc_enumerationMutation(v360);
        }

        v365 = [*(*(&v728 + 1) + 8 * v364) copyWithZone:zone];
        [v5 addCellularPowerLogServiceStateEvent:v365];

        ++v364;
      }

      while (v362 != v364);
      v362 = [(NSMutableArray *)v360 countByEnumeratingWithState:&v728 objects:v1004 count:16];
    }

    while (v362);
  }

  v727 = 0u;
  v726 = 0u;
  v725 = 0u;
  v724 = 0u;
  v366 = self->_cellularPowerLogPLMNScanEvents;
  v367 = [(NSMutableArray *)v366 countByEnumeratingWithState:&v724 objects:v1003 count:16];
  if (v367)
  {
    v368 = v367;
    v369 = *v725;
    do
    {
      v370 = 0;
      do
      {
        if (*v725 != v369)
        {
          objc_enumerationMutation(v366);
        }

        v371 = [*(*(&v724 + 1) + 8 * v370) copyWithZone:zone];
        [v5 addCellularPowerLogPLMNScanEvent:v371];

        ++v370;
      }

      while (v368 != v370);
      v368 = [(NSMutableArray *)v366 countByEnumeratingWithState:&v724 objects:v1003 count:16];
    }

    while (v368);
  }

  v723 = 0u;
  v722 = 0u;
  v721 = 0u;
  v720 = 0u;
  v372 = self->_cellularPowerLogPLMNSearchEvents;
  v373 = [(NSMutableArray *)v372 countByEnumeratingWithState:&v720 objects:v1002 count:16];
  if (v373)
  {
    v374 = v373;
    v375 = *v721;
    do
    {
      v376 = 0;
      do
      {
        if (*v721 != v375)
        {
          objc_enumerationMutation(v372);
        }

        v377 = [*(*(&v720 + 1) + 8 * v376) copyWithZone:zone];
        [v5 addCellularPowerLogPLMNSearchEvent:v377];

        ++v376;
      }

      while (v374 != v376);
      v374 = [(NSMutableArray *)v372 countByEnumeratingWithState:&v720 objects:v1002 count:16];
    }

    while (v374);
  }

  v719 = 0u;
  v718 = 0u;
  v717 = 0u;
  v716 = 0u;
  v378 = self->_cellularPowerLogNRSARRCStateChanges;
  v379 = [(NSMutableArray *)v378 countByEnumeratingWithState:&v716 objects:v1001 count:16];
  if (v379)
  {
    v380 = v379;
    v381 = *v717;
    do
    {
      v382 = 0;
      do
      {
        if (*v717 != v381)
        {
          objc_enumerationMutation(v378);
        }

        v383 = [*(*(&v716 + 1) + 8 * v382) copyWithZone:zone];
        [v5 addCellularPowerLogNRSARRCStateChange:v383];

        ++v382;
      }

      while (v380 != v382);
      v380 = [(NSMutableArray *)v378 countByEnumeratingWithState:&v716 objects:v1001 count:16];
    }

    while (v380);
  }

  v715 = 0u;
  v714 = 0u;
  v713 = 0u;
  v712 = 0u;
  v384 = self->_cellularPowerLogNRNSAENDCEvents;
  v385 = [(NSMutableArray *)v384 countByEnumeratingWithState:&v712 objects:v1000 count:16];
  if (v385)
  {
    v386 = v385;
    v387 = *v713;
    do
    {
      v388 = 0;
      do
      {
        if (*v713 != v387)
        {
          objc_enumerationMutation(v384);
        }

        v389 = [*(*(&v712 + 1) + 8 * v388) copyWithZone:zone];
        [v5 addCellularPowerLogNRNSAENDCEvent:v389];

        ++v388;
      }

      while (v386 != v388);
      v386 = [(NSMutableArray *)v384 countByEnumeratingWithState:&v712 objects:v1000 count:16];
    }

    while (v386);
  }

  v711 = 0u;
  v710 = 0u;
  v709 = 0u;
  v708 = 0u;
  v390 = self->_cellularPowerLogNRCDRXConfigs;
  v391 = [(NSMutableArray *)v390 countByEnumeratingWithState:&v708 objects:v999 count:16];
  if (v391)
  {
    v392 = v391;
    v393 = *v709;
    do
    {
      v394 = 0;
      do
      {
        if (*v709 != v393)
        {
          objc_enumerationMutation(v390);
        }

        v395 = [*(*(&v708 + 1) + 8 * v394) copyWithZone:zone];
        [v5 addCellularPowerLogNRCDRXConfig:v395];

        ++v394;
      }

      while (v392 != v394);
      v392 = [(NSMutableArray *)v390 countByEnumeratingWithState:&v708 objects:v999 count:16];
    }

    while (v392);
  }

  v707 = 0u;
  v706 = 0u;
  v705 = 0u;
  v704 = 0u;
  v396 = self->_cellularPowerLogNRsub6BWPs;
  v397 = [(NSMutableArray *)v396 countByEnumeratingWithState:&v704 objects:v998 count:16];
  if (v397)
  {
    v398 = v397;
    v399 = *v705;
    do
    {
      v400 = 0;
      do
      {
        if (*v705 != v399)
        {
          objc_enumerationMutation(v396);
        }

        v401 = [*(*(&v704 + 1) + 8 * v400) copyWithZone:zone];
        [v5 addCellularPowerLogNRsub6BWP:v401];

        ++v400;
      }

      while (v398 != v400);
      v398 = [(NSMutableArray *)v396 countByEnumeratingWithState:&v704 objects:v998 count:16];
    }

    while (v398);
  }

  v703 = 0u;
  v702 = 0u;
  v701 = 0u;
  v700 = 0u;
  v402 = self->_cellularPowerLogRFTunerStatsHists;
  v403 = [(NSMutableArray *)v402 countByEnumeratingWithState:&v700 objects:v997 count:16];
  if (v403)
  {
    v404 = v403;
    v405 = *v701;
    do
    {
      v406 = 0;
      do
      {
        if (*v701 != v405)
        {
          objc_enumerationMutation(v402);
        }

        v407 = [*(*(&v700 + 1) + 8 * v406) copyWithZone:zone];
        [v5 addCellularPowerLogRFTunerStatsHist:v407];

        ++v406;
      }

      while (v404 != v406);
      v404 = [(NSMutableArray *)v402 countByEnumeratingWithState:&v700 objects:v997 count:16];
    }

    while (v404);
  }

  v699 = 0u;
  v698 = 0u;
  v697 = 0u;
  v696 = 0u;
  v408 = self->_cellularPowerLogNRsub6CASCCConfigureds;
  v409 = [(NSMutableArray *)v408 countByEnumeratingWithState:&v696 objects:v996 count:16];
  if (v409)
  {
    v410 = v409;
    v411 = *v697;
    do
    {
      v412 = 0;
      do
      {
        if (*v697 != v411)
        {
          objc_enumerationMutation(v408);
        }

        v413 = [*(*(&v696 + 1) + 8 * v412) copyWithZone:zone];
        [v5 addCellularPowerLogNRsub6CASCCConfigured:v413];

        ++v412;
      }

      while (v410 != v412);
      v410 = [(NSMutableArray *)v408 countByEnumeratingWithState:&v696 objects:v996 count:16];
    }

    while (v410);
  }

  v695 = 0u;
  v694 = 0u;
  v693 = 0u;
  v692 = 0u;
  v414 = self->_cellularPowerLogNRsub6CASCCActivateds;
  v415 = [(NSMutableArray *)v414 countByEnumeratingWithState:&v692 objects:v995 count:16];
  if (v415)
  {
    v416 = v415;
    v417 = *v693;
    do
    {
      v418 = 0;
      do
      {
        if (*v693 != v417)
        {
          objc_enumerationMutation(v414);
        }

        v419 = [*(*(&v692 + 1) + 8 * v418) copyWithZone:zone];
        [v5 addCellularPowerLogNRsub6CASCCActivated:v419];

        ++v418;
      }

      while (v416 != v418);
      v416 = [(NSMutableArray *)v414 countByEnumeratingWithState:&v692 objects:v995 count:16];
    }

    while (v416);
  }

  v691 = 0u;
  v690 = 0u;
  v689 = 0u;
  v688 = 0u;
  v420 = self->_cellularPowerLogNRsub6RxTxs;
  v421 = [(NSMutableArray *)v420 countByEnumeratingWithState:&v688 objects:v994 count:16];
  if (v421)
  {
    v422 = v421;
    v423 = *v689;
    do
    {
      v424 = 0;
      do
      {
        if (*v689 != v423)
        {
          objc_enumerationMutation(v420);
        }

        v425 = [*(*(&v688 + 1) + 8 * v424) copyWithZone:zone];
        [v5 addCellularPowerLogNRsub6RxTx:v425];

        ++v424;
      }

      while (v422 != v424);
      v422 = [(NSMutableArray *)v420 countByEnumeratingWithState:&v688 objects:v994 count:16];
    }

    while (v422);
  }

  v687 = 0u;
  v686 = 0u;
  v685 = 0u;
  v684 = 0u;
  v426 = self->_cellularPowerLogNRsub6CarrierComponentInfos;
  v427 = [(NSMutableArray *)v426 countByEnumeratingWithState:&v684 objects:v993 count:16];
  if (v427)
  {
    v428 = v427;
    v429 = *v685;
    do
    {
      v430 = 0;
      do
      {
        if (*v685 != v429)
        {
          objc_enumerationMutation(v426);
        }

        v431 = [*(*(&v684 + 1) + 8 * v430) copyWithZone:zone];
        [v5 addCellularPowerLogNRsub6CarrierComponentInfo:v431];

        ++v430;
      }

      while (v428 != v430);
      v428 = [(NSMutableArray *)v426 countByEnumeratingWithState:&v684 objects:v993 count:16];
    }

    while (v428);
  }

  v683 = 0u;
  v682 = 0u;
  v681 = 0u;
  v680 = 0u;
  v432 = self->_cellularPowerLogNRsub6DLTBSs;
  v433 = [(NSMutableArray *)v432 countByEnumeratingWithState:&v680 objects:v992 count:16];
  if (v433)
  {
    v434 = v433;
    v435 = *v681;
    do
    {
      v436 = 0;
      do
      {
        if (*v681 != v435)
        {
          objc_enumerationMutation(v432);
        }

        v437 = [*(*(&v680 + 1) + 8 * v436) copyWithZone:zone];
        [v5 addCellularPowerLogNRsub6DLTBS:v437];

        ++v436;
      }

      while (v434 != v436);
      v434 = [(NSMutableArray *)v432 countByEnumeratingWithState:&v680 objects:v992 count:16];
    }

    while (v434);
  }

  v679 = 0u;
  v678 = 0u;
  v677 = 0u;
  v676 = 0u;
  v438 = self->_cellularPowerLogNRsub6RSRPs;
  v439 = [(NSMutableArray *)v438 countByEnumeratingWithState:&v676 objects:v991 count:16];
  if (v439)
  {
    v440 = v439;
    v441 = *v677;
    do
    {
      v442 = 0;
      do
      {
        if (*v677 != v441)
        {
          objc_enumerationMutation(v438);
        }

        v443 = [*(*(&v676 + 1) + 8 * v442) copyWithZone:zone];
        [v5 addCellularPowerLogNRsub6RSRP:v443];

        ++v442;
      }

      while (v440 != v442);
      v440 = [(NSMutableArray *)v438 countByEnumeratingWithState:&v676 objects:v991 count:16];
    }

    while (v440);
  }

  v675 = 0u;
  v674 = 0u;
  v673 = 0u;
  v672 = 0u;
  v444 = self->_cellularPowerLogNRsub6ULCAStates;
  v445 = [(NSMutableArray *)v444 countByEnumeratingWithState:&v672 objects:v990 count:16];
  if (v445)
  {
    v446 = v445;
    v447 = *v673;
    do
    {
      v448 = 0;
      do
      {
        if (*v673 != v447)
        {
          objc_enumerationMutation(v444);
        }

        v449 = [*(*(&v672 + 1) + 8 * v448) copyWithZone:zone];
        [v5 addCellularPowerLogNRsub6ULCAState:v449];

        ++v448;
      }

      while (v446 != v448);
      v446 = [(NSMutableArray *)v444 countByEnumeratingWithState:&v672 objects:v990 count:16];
    }

    while (v446);
  }

  v671 = 0u;
  v670 = 0u;
  v669 = 0u;
  v668 = 0u;
  v450 = self->_cellularPowerLogNRsub6TxPowers;
  v451 = [(NSMutableArray *)v450 countByEnumeratingWithState:&v668 objects:v989 count:16];
  if (v451)
  {
    v452 = v451;
    v453 = *v669;
    do
    {
      v454 = 0;
      do
      {
        if (*v669 != v453)
        {
          objc_enumerationMutation(v450);
        }

        v455 = [*(*(&v668 + 1) + 8 * v454) copyWithZone:zone];
        [v5 addCellularPowerLogNRsub6TxPower:v455];

        ++v454;
      }

      while (v452 != v454);
      v452 = [(NSMutableArray *)v450 countByEnumeratingWithState:&v668 objects:v989 count:16];
    }

    while (v452);
  }

  v667 = 0u;
  v666 = 0u;
  v665 = 0u;
  v664 = 0u;
  v456 = self->_cellularPowerLogNRsub6RxDiversitys;
  v457 = [(NSMutableArray *)v456 countByEnumeratingWithState:&v664 objects:v988 count:16];
  if (v457)
  {
    v458 = v457;
    v459 = *v665;
    do
    {
      v460 = 0;
      do
      {
        if (*v665 != v459)
        {
          objc_enumerationMutation(v456);
        }

        v461 = [*(*(&v664 + 1) + 8 * v460) copyWithZone:zone];
        [v5 addCellularPowerLogNRsub6RxDiversity:v461];

        ++v460;
      }

      while (v458 != v460);
      v458 = [(NSMutableArray *)v456 countByEnumeratingWithState:&v664 objects:v988 count:16];
    }

    while (v458);
  }

  v663 = 0u;
  v662 = 0u;
  v661 = 0u;
  v660 = 0u;
  v462 = self->_cellularPowerLogSPMIs;
  v463 = [(NSMutableArray *)v462 countByEnumeratingWithState:&v660 objects:v987 count:16];
  if (v463)
  {
    v464 = v463;
    v465 = *v661;
    do
    {
      v466 = 0;
      do
      {
        if (*v661 != v465)
        {
          objc_enumerationMutation(v462);
        }

        v467 = [*(*(&v660 + 1) + 8 * v466) copyWithZone:zone];
        [v5 addCellularPowerLogSPMI:v467];

        ++v466;
      }

      while (v464 != v466);
      v464 = [(NSMutableArray *)v462 countByEnumeratingWithState:&v660 objects:v987 count:16];
    }

    while (v464);
  }

  v659 = 0u;
  v658 = 0u;
  v657 = 0u;
  v656 = 0u;
  v468 = self->_cellularPowerLogNRmmWaveBWPs;
  v469 = [(NSMutableArray *)v468 countByEnumeratingWithState:&v656 objects:v986 count:16];
  if (v469)
  {
    v470 = v469;
    v471 = *v657;
    do
    {
      v472 = 0;
      do
      {
        if (*v657 != v471)
        {
          objc_enumerationMutation(v468);
        }

        v473 = [*(*(&v656 + 1) + 8 * v472) copyWithZone:zone];
        [v5 addCellularPowerLogNRmmWaveBWP:v473];

        ++v472;
      }

      while (v470 != v472);
      v470 = [(NSMutableArray *)v468 countByEnumeratingWithState:&v656 objects:v986 count:16];
    }

    while (v470);
  }

  v655 = 0u;
  v654 = 0u;
  v653 = 0u;
  v652 = 0u;
  v474 = self->_cellularPowerLogNRmmWaveAntennaPanels;
  v475 = [(NSMutableArray *)v474 countByEnumeratingWithState:&v652 objects:v985 count:16];
  if (v475)
  {
    v476 = v475;
    v477 = *v653;
    do
    {
      v478 = 0;
      do
      {
        if (*v653 != v477)
        {
          objc_enumerationMutation(v474);
        }

        v479 = [*(*(&v652 + 1) + 8 * v478) copyWithZone:zone];
        [v5 addCellularPowerLogNRmmWaveAntennaPanel:v479];

        ++v478;
      }

      while (v476 != v478);
      v476 = [(NSMutableArray *)v474 countByEnumeratingWithState:&v652 objects:v985 count:16];
    }

    while (v476);
  }

  v651 = 0u;
  v650 = 0u;
  v649 = 0u;
  v648 = 0u;
  v480 = self->_cellularPowerLogNRFRCoverages;
  v481 = [(NSMutableArray *)v480 countByEnumeratingWithState:&v648 objects:v984 count:16];
  if (v481)
  {
    v482 = v481;
    v483 = *v649;
    do
    {
      v484 = 0;
      do
      {
        if (*v649 != v483)
        {
          objc_enumerationMutation(v480);
        }

        v485 = [*(*(&v648 + 1) + 8 * v484) copyWithZone:zone];
        [v5 addCellularPowerLogNRFRCoverage:v485];

        ++v484;
      }

      while (v482 != v484);
      v482 = [(NSMutableArray *)v480 countByEnumeratingWithState:&v648 objects:v984 count:16];
    }

    while (v482);
  }

  v646 = 0u;
  v647 = 0u;
  v644 = 0u;
  v645 = 0u;
  v486 = self->_cellularPowerLogNRmmWaveBeamIDs;
  v487 = [(NSMutableArray *)v486 countByEnumeratingWithState:&v644 objects:v983 count:16];
  if (v487)
  {
    v488 = v487;
    v489 = *v645;
    do
    {
      v490 = 0;
      do
      {
        if (*v645 != v489)
        {
          objc_enumerationMutation(v486);
        }

        v491 = [*(*(&v644 + 1) + 8 * v490) copyWithZone:zone];
        [v5 addCellularPowerLogNRmmWaveBeamID:v491];

        ++v490;
      }

      while (v488 != v490);
      v488 = [(NSMutableArray *)v486 countByEnumeratingWithState:&v644 objects:v983 count:16];
    }

    while (v488);
  }

  v642 = 0u;
  v643 = 0u;
  v640 = 0u;
  v641 = 0u;
  v492 = self->_cellularPowerLogSFTStates;
  v493 = [(NSMutableArray *)v492 countByEnumeratingWithState:&v640 objects:v982 count:16];
  if (v493)
  {
    v494 = v493;
    v495 = *v641;
    do
    {
      v496 = 0;
      do
      {
        if (*v641 != v495)
        {
          objc_enumerationMutation(v492);
        }

        v497 = [*(*(&v640 + 1) + 8 * v496) copyWithZone:zone];
        [v5 addCellularPowerLogSFTState:v497];

        ++v496;
      }

      while (v494 != v496);
      v494 = [(NSMutableArray *)v492 countByEnumeratingWithState:&v640 objects:v982 count:16];
    }

    while (v494);
  }

  v638 = 0u;
  v639 = 0u;
  v636 = 0u;
  v637 = 0u;
  v498 = self->_cellularPowerLogNRmmWaveCASCCConfigureds;
  v499 = [(NSMutableArray *)v498 countByEnumeratingWithState:&v636 objects:v981 count:16];
  if (v499)
  {
    v500 = v499;
    v501 = *v637;
    do
    {
      v502 = 0;
      do
      {
        if (*v637 != v501)
        {
          objc_enumerationMutation(v498);
        }

        v503 = [*(*(&v636 + 1) + 8 * v502) copyWithZone:zone];
        [v5 addCellularPowerLogNRmmWaveCASCCConfigured:v503];

        ++v502;
      }

      while (v500 != v502);
      v500 = [(NSMutableArray *)v498 countByEnumeratingWithState:&v636 objects:v981 count:16];
    }

    while (v500);
  }

  v634 = 0u;
  v635 = 0u;
  v632 = 0u;
  v633 = 0u;
  v504 = self->_cellularPowerLogNRmmWaveCASCCActivateds;
  v505 = [(NSMutableArray *)v504 countByEnumeratingWithState:&v632 objects:v980 count:16];
  if (v505)
  {
    v506 = v505;
    v507 = *v633;
    do
    {
      v508 = 0;
      do
      {
        if (*v633 != v507)
        {
          objc_enumerationMutation(v504);
        }

        v509 = [*(*(&v632 + 1) + 8 * v508) copyWithZone:zone];
        [v5 addCellularPowerLogNRmmWaveCASCCActivated:v509];

        ++v508;
      }

      while (v506 != v508);
      v506 = [(NSMutableArray *)v504 countByEnumeratingWithState:&v632 objects:v980 count:16];
    }

    while (v506);
  }

  v630 = 0u;
  v631 = 0u;
  v628 = 0u;
  v629 = 0u;
  v510 = self->_cellularPowerLogNRmmWaveRxTxs;
  v511 = [(NSMutableArray *)v510 countByEnumeratingWithState:&v628 objects:v979 count:16];
  if (v511)
  {
    v512 = v511;
    v513 = *v629;
    do
    {
      v514 = 0;
      do
      {
        if (*v629 != v513)
        {
          objc_enumerationMutation(v510);
        }

        v515 = [*(*(&v628 + 1) + 8 * v514) copyWithZone:zone];
        [v5 addCellularPowerLogNRmmWaveRxTx:v515];

        ++v514;
      }

      while (v512 != v514);
      v512 = [(NSMutableArray *)v510 countByEnumeratingWithState:&v628 objects:v979 count:16];
    }

    while (v512);
  }

  v626 = 0u;
  v627 = 0u;
  v624 = 0u;
  v625 = 0u;
  v516 = self->_cellularPowerLogNRmmWaveCarrierComponentInfos;
  v517 = [(NSMutableArray *)v516 countByEnumeratingWithState:&v624 objects:v978 count:16];
  if (v517)
  {
    v518 = v517;
    v519 = *v625;
    do
    {
      v520 = 0;
      do
      {
        if (*v625 != v519)
        {
          objc_enumerationMutation(v516);
        }

        v521 = [*(*(&v624 + 1) + 8 * v520) copyWithZone:zone];
        [v5 addCellularPowerLogNRmmWaveCarrierComponentInfo:v521];

        ++v520;
      }

      while (v518 != v520);
      v518 = [(NSMutableArray *)v516 countByEnumeratingWithState:&v624 objects:v978 count:16];
    }

    while (v518);
  }

  v622 = 0u;
  v623 = 0u;
  v620 = 0u;
  v621 = 0u;
  v522 = self->_cellularPowerLogNRmmWaveDLTBSs;
  v523 = [(NSMutableArray *)v522 countByEnumeratingWithState:&v620 objects:v977 count:16];
  if (v523)
  {
    v524 = v523;
    v525 = *v621;
    do
    {
      v526 = 0;
      do
      {
        if (*v621 != v525)
        {
          objc_enumerationMutation(v522);
        }

        v527 = [*(*(&v620 + 1) + 8 * v526) copyWithZone:zone];
        [v5 addCellularPowerLogNRmmWaveDLTBS:v527];

        ++v526;
      }

      while (v524 != v526);
      v524 = [(NSMutableArray *)v522 countByEnumeratingWithState:&v620 objects:v977 count:16];
    }

    while (v524);
  }

  v618 = 0u;
  v619 = 0u;
  v616 = 0u;
  v617 = 0u;
  v528 = self->_cellularPowerLogNRMmWaveRSRPs;
  v529 = [(NSMutableArray *)v528 countByEnumeratingWithState:&v616 objects:v976 count:16];
  if (v529)
  {
    v530 = v529;
    v531 = *v617;
    do
    {
      v532 = 0;
      do
      {
        if (*v617 != v531)
        {
          objc_enumerationMutation(v528);
        }

        v533 = [*(*(&v616 + 1) + 8 * v532) copyWithZone:zone];
        [v5 addCellularPowerLogNRMmWaveRSRP:v533];

        ++v532;
      }

      while (v530 != v532);
      v530 = [(NSMutableArray *)v528 countByEnumeratingWithState:&v616 objects:v976 count:16];
    }

    while (v530);
  }

  v614 = 0u;
  v615 = 0u;
  v612 = 0u;
  v613 = 0u;
  v534 = self->_cellularPowerLogSFTRxTxs;
  v535 = [(NSMutableArray *)v534 countByEnumeratingWithState:&v612 objects:v975 count:16];
  if (v535)
  {
    v536 = v535;
    v537 = *v613;
    do
    {
      v538 = 0;
      do
      {
        if (*v613 != v537)
        {
          objc_enumerationMutation(v534);
        }

        v539 = [*(*(&v612 + 1) + 8 * v538) copyWithZone:zone];
        [v5 addCellularPowerLogSFTRxTx:v539];

        ++v538;
      }

      while (v536 != v538);
      v536 = [(NSMutableArray *)v534 countByEnumeratingWithState:&v612 objects:v975 count:16];
    }

    while (v536);
  }

  v610 = 0u;
  v611 = 0u;
  v608 = 0u;
  v609 = 0u;
  v540 = self->_cellularPowerLogNRMmWaveTxPowers;
  v541 = [(NSMutableArray *)v540 countByEnumeratingWithState:&v608 objects:v974 count:16];
  if (v541)
  {
    v542 = v541;
    v543 = *v609;
    do
    {
      v544 = 0;
      do
      {
        if (*v609 != v543)
        {
          objc_enumerationMutation(v540);
        }

        v545 = [*(*(&v608 + 1) + 8 * v544) copyWithZone:zone];
        [v5 addCellularPowerLogNRMmWaveTxPower:v545];

        ++v544;
      }

      while (v542 != v544);
      v542 = [(NSMutableArray *)v540 countByEnumeratingWithState:&v608 objects:v974 count:16];
    }

    while (v542);
  }

  v606 = 0u;
  v607 = 0u;
  v604 = 0u;
  v605 = 0u;
  v546 = self->_cellularPowerLogNRMmWaveULCAStates;
  v547 = [(NSMutableArray *)v546 countByEnumeratingWithState:&v604 objects:v973 count:16];
  if (v547)
  {
    v548 = v547;
    v549 = *v605;
    do
    {
      v550 = 0;
      do
      {
        if (*v605 != v549)
        {
          objc_enumerationMutation(v546);
        }

        v551 = [*(*(&v604 + 1) + 8 * v550) copyWithZone:zone];
        [v5 addCellularPowerLogNRMmWaveULCAState:v551];

        ++v550;
      }

      while (v548 != v550);
      v548 = [(NSMutableArray *)v546 countByEnumeratingWithState:&v604 objects:v973 count:16];
    }

    while (v548);
  }

  v602 = 0u;
  v603 = 0u;
  v600 = 0u;
  v601 = 0u;
  v552 = self->_cellularPowerLogNRsub6BWPSCCs;
  v553 = [(NSMutableArray *)v552 countByEnumeratingWithState:&v600 objects:v972 count:16];
  if (v553)
  {
    v554 = v553;
    v555 = *v601;
    do
    {
      v556 = 0;
      do
      {
        if (*v601 != v555)
        {
          objc_enumerationMutation(v552);
        }

        v557 = [*(*(&v600 + 1) + 8 * v556) copyWithZone:zone];
        [v5 addCellularPowerLogNRsub6BWPSCC:v557];

        ++v556;
      }

      while (v554 != v556);
      v554 = [(NSMutableArray *)v552 countByEnumeratingWithState:&v600 objects:v972 count:16];
    }

    while (v554);
  }

  v598 = 0u;
  v599 = 0u;
  v596 = 0u;
  v597 = 0u;
  v558 = self->_cellularPowerLogNRmmWaveBWPSCCs;
  v559 = [(NSMutableArray *)v558 countByEnumeratingWithState:&v596 objects:v971 count:16];
  if (v559)
  {
    v560 = v559;
    v561 = *v597;
    do
    {
      v562 = 0;
      do
      {
        if (*v597 != v561)
        {
          objc_enumerationMutation(v558);
        }

        v563 = [*(*(&v596 + 1) + 8 * v562) copyWithZone:zone];
        [v5 addCellularPowerLogNRmmWaveBWPSCC:v563];

        ++v562;
      }

      while (v560 != v562);
      v560 = [(NSMutableArray *)v558 countByEnumeratingWithState:&v596 objects:v971 count:16];
    }

    while (v560);
  }

  v594 = 0u;
  v595 = 0u;
  v592 = 0u;
  v593 = 0u;
  v564 = self->_cellularPowerLogNRDCEvents;
  v565 = [(NSMutableArray *)v564 countByEnumeratingWithState:&v592 objects:v970 count:16];
  if (v565)
  {
    v566 = v565;
    v567 = *v593;
    do
    {
      v568 = 0;
      do
      {
        if (*v593 != v567)
        {
          objc_enumerationMutation(v564);
        }

        v569 = [*(*(&v592 + 1) + 8 * v568) copyWithZone:zone];
        [v5 addCellularPowerLogNRDCEvent:v569];

        ++v568;
      }

      while (v566 != v568);
      v566 = [(NSMutableArray *)v564 countByEnumeratingWithState:&v592 objects:v970 count:16];
    }

    while (v566);
  }

  v590 = 0u;
  v591 = 0u;
  v588 = 0u;
  v589 = 0u;
  v570 = self->_cellularPowerLogWUSs;
  v571 = [(NSMutableArray *)v570 countByEnumeratingWithState:&v588 objects:v969 count:16];
  if (v571)
  {
    v572 = v571;
    v573 = *v589;
    do
    {
      v574 = 0;
      do
      {
        if (*v589 != v573)
        {
          objc_enumerationMutation(v570);
        }

        v575 = [*(*(&v588 + 1) + 8 * v574) copyWithZone:zone];
        [v5 addCellularPowerLogWUS:v575];

        ++v574;
      }

      while (v572 != v574);
      v572 = [(NSMutableArray *)v570 countByEnumeratingWithState:&v588 objects:v969 count:16];
    }

    while (v572);
  }

  v586 = 0u;
  v587 = 0u;
  v584 = 0u;
  v585 = 0u;
  v576 = self->_cellularPowerLogNRsub6BWPSAs;
  v577 = [(NSMutableArray *)v576 countByEnumeratingWithState:&v584 objects:v968 count:16];
  if (v577)
  {
    v578 = v577;
    v579 = *v585;
    do
    {
      v580 = 0;
      do
      {
        if (*v585 != v579)
        {
          objc_enumerationMutation(v576);
        }

        v581 = [*(*(&v584 + 1) + 8 * v580) copyWithZone:{zone, v584}];
        [v5 addCellularPowerLogNRsub6BWPSA:v581];

        ++v580;
      }

      while (v578 != v580);
      v578 = [(NSMutableArray *)v576 countByEnumeratingWithState:&v584 objects:v968 count:16];
    }

    while (v578);
  }

  v582 = v5;
  return v582;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()]
    && ((cellularPerClientProfileTriggerCounts = self->_cellularPerClientProfileTriggerCounts, !(cellularPerClientProfileTriggerCounts | equalCopy[4])) || [(NSMutableArray *)cellularPerClientProfileTriggerCounts isEqual:?])
    && ((cellularNrSDMActivations = self->_cellularNrSDMActivations, !(cellularNrSDMActivations | equalCopy[2])) || [(NSMutableArray *)cellularNrSDMActivations isEqual:?])
    && ((cellularNrSdmEndcReleases = self->_cellularNrSdmEndcReleases, !(cellularNrSdmEndcReleases | equalCopy[3])) || [(NSMutableArray *)cellularNrSdmEndcReleases isEqual:?])
    && ((cellularDynamicRatSelections = self->_cellularDynamicRatSelections, !(cellularDynamicRatSelections | equalCopy[1])) || [(NSMutableArray *)cellularDynamicRatSelections isEqual:?])
    && ((cellularRfTunerHists = self->_cellularRfTunerHists, !(cellularRfTunerHists | equalCopy[96])) || [(NSMutableArray *)cellularRfTunerHists isEqual:?])
    && ((cellularPowerLogXOShutdowns = self->_cellularPowerLogXOShutdowns, !(cellularPowerLogXOShutdowns | equalCopy[95])) || [(NSMutableArray *)cellularPowerLogXOShutdowns isEqual:?])
    && ((cellularPowerLogAPPSPerfLevels = self->_cellularPowerLogAPPSPerfLevels, !(cellularPowerLogAPPSPerfLevels | equalCopy[7])) || [(NSMutableArray *)cellularPowerLogAPPSPerfLevels isEqual:?])
    && ((cellularPowerLogAPPSCXOShutdowns = self->_cellularPowerLogAPPSCXOShutdowns, !(cellularPowerLogAPPSCXOShutdowns | equalCopy[6])) || [(NSMutableArray *)cellularPowerLogAPPSCXOShutdowns isEqual:?])
    && ((cellularPowerLogAPPSSleepVetos = self->_cellularPowerLogAPPSSleepVetos, !(cellularPowerLogAPPSSleepVetos | equalCopy[8])) || [(NSMutableArray *)cellularPowerLogAPPSSleepVetos isEqual:?])
    && ((cellularPowerLogMCPMSleepVetos = self->_cellularPowerLogMCPMSleepVetos, !(cellularPowerLogMCPMSleepVetos | equalCopy[39])) || [(NSMutableArray *)cellularPowerLogMCPMSleepVetos isEqual:?])
    && ((cellularPowerLogMPSSPerfLevels = self->_cellularPowerLogMPSSPerfLevels, !(cellularPowerLogMPSSPerfLevels | equalCopy[40])) || [(NSMutableArray *)cellularPowerLogMPSSPerfLevels isEqual:?])
    && ((cellularPowerLogGPSStates = self->_cellularPowerLogGPSStates, !(cellularPowerLogGPSStates | equalCopy[17])) || [(NSMutableArray *)cellularPowerLogGPSStates isEqual:?])
    && ((cellularPowerLogAOPUARTStates = self->_cellularPowerLogAOPUARTStates, !(cellularPowerLogAOPUARTStates | equalCopy[5])) || [(NSMutableArray *)cellularPowerLogAOPUARTStates isEqual:?])
    && ((cellularPowerLogWLANUARTStates = self->_cellularPowerLogWLANUARTStates, !(cellularPowerLogWLANUARTStates | equalCopy[93])) || [(NSMutableArray *)cellularPowerLogWLANUARTStates isEqual:?])
    && ((cellularPowerLogPCIeStates = self->_cellularPowerLogPCIeStates, !(cellularPowerLogPCIeStates | equalCopy[72])) || [(NSMutableArray *)cellularPowerLogPCIeStates isEqual:?])
    && ((cellularPowerLogL1SleepStates = self->_cellularPowerLogL1SleepStates, !(cellularPowerLogL1SleepStates | equalCopy[25])) || [(NSMutableArray *)cellularPowerLogL1SleepStates isEqual:?])
    && ((cellularPowerLogLTEConfiguredCASCCStates = self->_cellularPowerLogLTEConfiguredCASCCStates, !(cellularPowerLogLTEConfiguredCASCCStates | equalCopy[30])) || [(NSMutableArray *)cellularPowerLogLTEConfiguredCASCCStates isEqual:?])
    && ((cellularPowerLogLTEActivatedCASCCStates = self->_cellularPowerLogLTEActivatedCASCCStates, !(cellularPowerLogLTEActivatedCASCCStates | equalCopy[26])) || [(NSMutableArray *)cellularPowerLogLTEActivatedCASCCStates isEqual:?])
    && ((cellularPowerLogLTERxTxActivityStates = self->_cellularPowerLogLTERxTxActivityStates, !(cellularPowerLogLTERxTxActivityStates | equalCopy[35])) || [(NSMutableArray *)cellularPowerLogLTERxTxActivityStates isEqual:?])
    && ((cellularPowerLogLTECarrierComponentInfos = self->_cellularPowerLogLTECarrierComponentInfos, !(cellularPowerLogLTECarrierComponentInfos | equalCopy[29])) || [(NSMutableArray *)cellularPowerLogLTECarrierComponentInfos isEqual:?])
    && ((cellularPowerLogLTEAggregatedDLTBSs = self->_cellularPowerLogLTEAggregatedDLTBSs, !(cellularPowerLogLTEAggregatedDLTBSs | equalCopy[27])) || [(NSMutableArray *)cellularPowerLogLTEAggregatedDLTBSs isEqual:?])
    && ((cellularPowerLogLTERSRPs = self->_cellularPowerLogLTERSRPs, !(cellularPowerLogLTERSRPs | equalCopy[33])) || [(NSMutableArray *)cellularPowerLogLTERSRPs isEqual:?])
    && ((cellularPowerLogLTESINRs = self->_cellularPowerLogLTESINRs, !(cellularPowerLogLTESINRs | equalCopy[36])) || [(NSMutableArray *)cellularPowerLogLTESINRs isEqual:?])
    && ((cellularPowerLogLTETxPowers = self->_cellularPowerLogLTETxPowers, !(cellularPowerLogLTETxPowers | equalCopy[37])) || [(NSMutableArray *)cellularPowerLogLTETxPowers isEqual:?])
    && ((cellularPowerLogLTERxDiversitys = self->_cellularPowerLogLTERxDiversitys, !(cellularPowerLogLTERxDiversitys | equalCopy[34])) || [(NSMutableArray *)cellularPowerLogLTERxDiversitys isEqual:?])
    && ((cellularPowerLogLTEULCAStates = self->_cellularPowerLogLTEULCAStates, !(cellularPowerLogLTEULCAStates | equalCopy[38])) || [(NSMutableArray *)cellularPowerLogLTEULCAStates isEqual:?])
    && ((cellularPowerLogPowerEstimators = self->_cellularPowerLogPowerEstimators, !(cellularPowerLogPowerEstimators | equalCopy[76])) || [(NSMutableArray *)cellularPowerLogPowerEstimators isEqual:?])
    && ((cellularPowerLogLTEPagingDRXCycles = self->_cellularPowerLogLTEPagingDRXCycles, !(cellularPowerLogLTEPagingDRXCycles | equalCopy[31])) || [(NSMutableArray *)cellularPowerLogLTEPagingDRXCycles isEqual:?])
    && ((cellularPowerLogNRPagingDRXCycles = self->_cellularPowerLogNRPagingDRXCycles, !(cellularPowerLogNRPagingDRXCycles | equalCopy[48])) || [(NSMutableArray *)cellularPowerLogNRPagingDRXCycles isEqual:?])
    && ((cellularPowerLogProtocolStates = self->_cellularPowerLogProtocolStates, !(cellularPowerLogProtocolStates | equalCopy[77])) || [(NSMutableArray *)cellularPowerLogProtocolStates isEqual:?])
    && ((cellularPowerLogPLMNSearchs = self->_cellularPowerLogPLMNSearchs, !(cellularPowerLogPLMNSearchs | equalCopy[75])) || [(NSMutableArray *)cellularPowerLogPLMNSearchs isEqual:?])
    && ((cellularPowerLogGSMTxPowers = self->_cellularPowerLogGSMTxPowers, !(cellularPowerLogGSMTxPowers | equalCopy[22])) || [(NSMutableArray *)cellularPowerLogGSMTxPowers isEqual:?])
    && ((cellularPowerLogGSMRxRSSIs = self->_cellularPowerLogGSMRxRSSIs, !(cellularPowerLogGSMRxRSSIs | equalCopy[21])) || [(NSMutableArray *)cellularPowerLogGSMRxRSSIs isEqual:?])
    && ((cellularPowerLogGSMRABModes = self->_cellularPowerLogGSMRABModes, !(cellularPowerLogGSMRABModes | equalCopy[18])) || [(NSMutableArray *)cellularPowerLogGSMRABModes isEqual:?])
    && ((cellularPowerLogGSMRxDiversitys = self->_cellularPowerLogGSMRxDiversitys, !(cellularPowerLogGSMRxDiversitys | equalCopy[20])) || [(NSMutableArray *)cellularPowerLogGSMRxDiversitys isEqual:?])
    && ((cellularPowerLogWCDMATxPowers = self->_cellularPowerLogWCDMATxPowers, !(cellularPowerLogWCDMATxPowers | equalCopy[92])) || [(NSMutableArray *)cellularPowerLogWCDMATxPowers isEqual:?])
    && ((cellularPowerLogWCDMARxRSSIs = self->_cellularPowerLogWCDMARxRSSIs, !(cellularPowerLogWCDMARxRSSIs | equalCopy[91])) || [(NSMutableArray *)cellularPowerLogWCDMARxRSSIs isEqual:?])
    && ((cellularPowerLogNRSCGRels = self->_cellularPowerLogNRSCGRels, !(cellularPowerLogNRSCGRels | equalCopy[50])) || [(NSMutableArray *)cellularPowerLogNRSCGRels isEqual:?])
    && ((cellularPowerLogWCDMARxDiversitys = self->_cellularPowerLogWCDMARxDiversitys, !(cellularPowerLogWCDMARxDiversitys | equalCopy[90])) || [(NSMutableArray *)cellularPowerLogWCDMARxDiversitys isEqual:?])
    && ((cellularPowerLogWCDMARABModes = self->_cellularPowerLogWCDMARABModes, !(cellularPowerLogWCDMARABModes | equalCopy[87])) || [(NSMutableArray *)cellularPowerLogWCDMARABModes isEqual:?])
    && ((cellularPowerLogWCDMARABTypes = self->_cellularPowerLogWCDMARABTypes, !(cellularPowerLogWCDMARABTypes | equalCopy[88])) || [(NSMutableArray *)cellularPowerLogWCDMARABTypes isEqual:?])
    && ((cellularPowerLogEVDOTxPowers = self->_cellularPowerLogEVDOTxPowers, !(cellularPowerLogEVDOTxPowers | equalCopy[16])) || [(NSMutableArray *)cellularPowerLogEVDOTxPowers isEqual:?])
    && ((cellularPowerLogEVDORxRSSIs = self->_cellularPowerLogEVDORxRSSIs, !(cellularPowerLogEVDORxRSSIs | equalCopy[15])) || [(NSMutableArray *)cellularPowerLogEVDORxRSSIs isEqual:?])
    && ((cellularPowerLogHybridRABModes = self->_cellularPowerLogHybridRABModes, !(cellularPowerLogHybridRABModes | equalCopy[23])) || [(NSMutableArray *)cellularPowerLogHybridRABModes isEqual:?])
    && ((cellularPowerLogEVDORxDiversitys = self->_cellularPowerLogEVDORxDiversitys, !(cellularPowerLogEVDORxDiversitys | equalCopy[14])) || [(NSMutableArray *)cellularPowerLogEVDORxDiversitys isEqual:?])
    && ((cellularPowerLogCDMA1XTxPowers = self->_cellularPowerLogCDMA1XTxPowers, !(cellularPowerLogCDMA1XTxPowers | equalCopy[13])) || [(NSMutableArray *)cellularPowerLogCDMA1XTxPowers isEqual:?])
    && ((cellularPowerLogCDMA1XRxRSSIs = self->_cellularPowerLogCDMA1XRxRSSIs, !(cellularPowerLogCDMA1XRxRSSIs | equalCopy[12])) || [(NSMutableArray *)cellularPowerLogCDMA1XRxRSSIs isEqual:?])
    && ((cellularPowerLogCDMA1XRABModes = self->_cellularPowerLogCDMA1XRABModes, !(cellularPowerLogCDMA1XRABModes | equalCopy[9])) || [(NSMutableArray *)cellularPowerLogCDMA1XRABModes isEqual:?])
    && ((cellularPowerLogCDMA1XRxDiversitys = self->_cellularPowerLogCDMA1XRxDiversitys, !(cellularPowerLogCDMA1XRxDiversitys | equalCopy[11])) || [(NSMutableArray *)cellularPowerLogCDMA1XRxDiversitys isEqual:?])
    && ((cellularPowerLogWCDMACDRXConfigs = self->_cellularPowerLogWCDMACDRXConfigs, !(cellularPowerLogWCDMACDRXConfigs | equalCopy[86])) || [(NSMutableArray *)cellularPowerLogWCDMACDRXConfigs isEqual:?])
    && ((cellularPowerLogLTECDRXConfigs = self->_cellularPowerLogLTECDRXConfigs, !(cellularPowerLogLTECDRXConfigs | equalCopy[28])) || [(NSMutableArray *)cellularPowerLogLTECDRXConfigs isEqual:?])
    && ((cellularPowerLogWCDMARRCStateChanges = self->_cellularPowerLogWCDMARRCStateChanges, !(cellularPowerLogWCDMARRCStateChanges | equalCopy[89])) || [(NSMutableArray *)cellularPowerLogWCDMARRCStateChanges isEqual:?])
    && ((cellularPowerLogLTERRCStateChanges = self->_cellularPowerLogLTERRCStateChanges, !(cellularPowerLogLTERRCStateChanges | equalCopy[32])) || [(NSMutableArray *)cellularPowerLogLTERRCStateChanges isEqual:?])
    && ((cellularPowerLogSystemEvents = self->_cellularPowerLogSystemEvents, !(cellularPowerLogSystemEvents | equalCopy[85])) || [(NSMutableArray *)cellularPowerLogSystemEvents isEqual:?])
    && ((cellularPowerLogRATReselectionEvents = self->_cellularPowerLogRATReselectionEvents, !(cellularPowerLogRATReselectionEvents | equalCopy[79])) || [(NSMutableArray *)cellularPowerLogRATReselectionEvents isEqual:?])
    && ((cellularPowerLogRATRedirectionEvents = self->_cellularPowerLogRATRedirectionEvents, !(cellularPowerLogRATRedirectionEvents | equalCopy[78])) || [(NSMutableArray *)cellularPowerLogRATRedirectionEvents isEqual:?])
    && ((cellularPowerLogGSMRRCStateChanges = self->_cellularPowerLogGSMRRCStateChanges, !(cellularPowerLogGSMRRCStateChanges | equalCopy[19])) || [(NSMutableArray *)cellularPowerLogGSMRRCStateChanges isEqual:?])
    && ((cellularPowerLogCDMA1XRRCStateChanges = self->_cellularPowerLogCDMA1XRRCStateChanges, !(cellularPowerLogCDMA1XRRCStateChanges | equalCopy[10])) || [(NSMutableArray *)cellularPowerLogCDMA1XRRCStateChanges isEqual:?])
    && ((cellularPowerLogHybridRRCStateChanges = self->_cellularPowerLogHybridRRCStateChanges, !(cellularPowerLogHybridRRCStateChanges | equalCopy[24])) || [(NSMutableArray *)cellularPowerLogHybridRRCStateChanges isEqual:?])
    && ((cellularPowerLogServiceStateEvents = self->_cellularPowerLogServiceStateEvents, !(cellularPowerLogServiceStateEvents | equalCopy[84])) || [(NSMutableArray *)cellularPowerLogServiceStateEvents isEqual:?])
    && ((cellularPowerLogPLMNScanEvents = self->_cellularPowerLogPLMNScanEvents, !(cellularPowerLogPLMNScanEvents | equalCopy[73])) || [(NSMutableArray *)cellularPowerLogPLMNScanEvents isEqual:?])
    && ((cellularPowerLogPLMNSearchEvents = self->_cellularPowerLogPLMNSearchEvents, !(cellularPowerLogPLMNSearchEvents | equalCopy[74])) || [(NSMutableArray *)cellularPowerLogPLMNSearchEvents isEqual:?])
    && ((cellularPowerLogNRSARRCStateChanges = self->_cellularPowerLogNRSARRCStateChanges, !(cellularPowerLogNRSARRCStateChanges | equalCopy[49])) || [(NSMutableArray *)cellularPowerLogNRSARRCStateChanges isEqual:?])
    && ((cellularPowerLogNRNSAENDCEvents = self->_cellularPowerLogNRNSAENDCEvents, !(cellularPowerLogNRNSAENDCEvents | equalCopy[47])) || [(NSMutableArray *)cellularPowerLogNRNSAENDCEvents isEqual:?])
    && ((cellularPowerLogNRCDRXConfigs = self->_cellularPowerLogNRCDRXConfigs, !(cellularPowerLogNRCDRXConfigs | equalCopy[41])) || [(NSMutableArray *)cellularPowerLogNRCDRXConfigs isEqual:?])
    && ((cellularPowerLogNRsub6BWPs = self->_cellularPowerLogNRsub6BWPs, !(cellularPowerLogNRsub6BWPs | equalCopy[62])) || [(NSMutableArray *)cellularPowerLogNRsub6BWPs isEqual:?])
    && ((cellularPowerLogRFTunerStatsHists = self->_cellularPowerLogRFTunerStatsHists, !(cellularPowerLogRFTunerStatsHists | equalCopy[80])) || [(NSMutableArray *)cellularPowerLogRFTunerStatsHists isEqual:?])
    && ((cellularPowerLogNRsub6CASCCConfigureds = self->_cellularPowerLogNRsub6CASCCConfigureds, !(cellularPowerLogNRsub6CASCCConfigureds | equalCopy[64])) || [(NSMutableArray *)cellularPowerLogNRsub6CASCCConfigureds isEqual:?])
    && ((cellularPowerLogNRsub6CASCCActivateds = self->_cellularPowerLogNRsub6CASCCActivateds, !(cellularPowerLogNRsub6CASCCActivateds | equalCopy[63])) || [(NSMutableArray *)cellularPowerLogNRsub6CASCCActivateds isEqual:?])
    && ((cellularPowerLogNRsub6RxTxs = self->_cellularPowerLogNRsub6RxTxs, !(cellularPowerLogNRsub6RxTxs | equalCopy[69])) || [(NSMutableArray *)cellularPowerLogNRsub6RxTxs isEqual:?])
    && ((cellularPowerLogNRsub6CarrierComponentInfos = self->_cellularPowerLogNRsub6CarrierComponentInfos, !(cellularPowerLogNRsub6CarrierComponentInfos | equalCopy[65])) || [(NSMutableArray *)cellularPowerLogNRsub6CarrierComponentInfos isEqual:?])
    && ((cellularPowerLogNRsub6DLTBSs = self->_cellularPowerLogNRsub6DLTBSs, !(cellularPowerLogNRsub6DLTBSs | equalCopy[66])) || [(NSMutableArray *)cellularPowerLogNRsub6DLTBSs isEqual:?])
    && ((cellularPowerLogNRsub6RSRPs = self->_cellularPowerLogNRsub6RSRPs, !(cellularPowerLogNRsub6RSRPs | equalCopy[67])) || [(NSMutableArray *)cellularPowerLogNRsub6RSRPs isEqual:?])
    && ((cellularPowerLogNRsub6ULCAStates = self->_cellularPowerLogNRsub6ULCAStates, !(cellularPowerLogNRsub6ULCAStates | equalCopy[71])) || [(NSMutableArray *)cellularPowerLogNRsub6ULCAStates isEqual:?])
    && ((cellularPowerLogNRsub6TxPowers = self->_cellularPowerLogNRsub6TxPowers, !(cellularPowerLogNRsub6TxPowers | equalCopy[70])) || [(NSMutableArray *)cellularPowerLogNRsub6TxPowers isEqual:?])
    && ((cellularPowerLogNRsub6RxDiversitys = self->_cellularPowerLogNRsub6RxDiversitys, !(cellularPowerLogNRsub6RxDiversitys | equalCopy[68])) || [(NSMutableArray *)cellularPowerLogNRsub6RxDiversitys isEqual:?])
    && ((cellularPowerLogSPMIs = self->_cellularPowerLogSPMIs, !(cellularPowerLogSPMIs | equalCopy[83])) || [(NSMutableArray *)cellularPowerLogSPMIs isEqual:?])
    && ((cellularPowerLogNRmmWaveBWPs = self->_cellularPowerLogNRmmWaveBWPs, !(cellularPowerLogNRmmWaveBWPs | equalCopy[53])) || [(NSMutableArray *)cellularPowerLogNRmmWaveBWPs isEqual:?])
    && ((cellularPowerLogNRmmWaveAntennaPanels = self->_cellularPowerLogNRmmWaveAntennaPanels, !(cellularPowerLogNRmmWaveAntennaPanels | equalCopy[51])) || [(NSMutableArray *)cellularPowerLogNRmmWaveAntennaPanels isEqual:?])
    && ((cellularPowerLogNRFRCoverages = self->_cellularPowerLogNRFRCoverages, !(cellularPowerLogNRFRCoverages | equalCopy[43])) || [(NSMutableArray *)cellularPowerLogNRFRCoverages isEqual:?])
    && ((cellularPowerLogNRmmWaveBeamIDs = self->_cellularPowerLogNRmmWaveBeamIDs, !(cellularPowerLogNRmmWaveBeamIDs | equalCopy[54])) || [(NSMutableArray *)cellularPowerLogNRmmWaveBeamIDs isEqual:?])
    && ((cellularPowerLogSFTStates = self->_cellularPowerLogSFTStates, !(cellularPowerLogSFTStates | equalCopy[82])) || [(NSMutableArray *)cellularPowerLogSFTStates isEqual:?])
    && ((cellularPowerLogNRmmWaveCASCCConfigureds = self->_cellularPowerLogNRmmWaveCASCCConfigureds, !(cellularPowerLogNRmmWaveCASCCConfigureds | equalCopy[56])) || [(NSMutableArray *)cellularPowerLogNRmmWaveCASCCConfigureds isEqual:?])
    && ((cellularPowerLogNRmmWaveCASCCActivateds = self->_cellularPowerLogNRmmWaveCASCCActivateds, !(cellularPowerLogNRmmWaveCASCCActivateds | equalCopy[55])) || [(NSMutableArray *)cellularPowerLogNRmmWaveCASCCActivateds isEqual:?])
    && ((cellularPowerLogNRmmWaveRxTxs = self->_cellularPowerLogNRmmWaveRxTxs, !(cellularPowerLogNRmmWaveRxTxs | equalCopy[59])) || [(NSMutableArray *)cellularPowerLogNRmmWaveRxTxs isEqual:?])
    && ((cellularPowerLogNRmmWaveCarrierComponentInfos = self->_cellularPowerLogNRmmWaveCarrierComponentInfos, !(cellularPowerLogNRmmWaveCarrierComponentInfos | equalCopy[57])) || [(NSMutableArray *)cellularPowerLogNRmmWaveCarrierComponentInfos isEqual:?])
    && ((cellularPowerLogNRmmWaveDLTBSs = self->_cellularPowerLogNRmmWaveDLTBSs, !(cellularPowerLogNRmmWaveDLTBSs | equalCopy[58])) || [(NSMutableArray *)cellularPowerLogNRmmWaveDLTBSs isEqual:?])
    && ((cellularPowerLogNRMmWaveRSRPs = self->_cellularPowerLogNRMmWaveRSRPs, !(cellularPowerLogNRMmWaveRSRPs | equalCopy[44])) || [(NSMutableArray *)cellularPowerLogNRMmWaveRSRPs isEqual:?])
    && ((cellularPowerLogSFTRxTxs = self->_cellularPowerLogSFTRxTxs, !(cellularPowerLogSFTRxTxs | equalCopy[81])) || [(NSMutableArray *)cellularPowerLogSFTRxTxs isEqual:?])
    && ((cellularPowerLogNRMmWaveTxPowers = self->_cellularPowerLogNRMmWaveTxPowers, !(cellularPowerLogNRMmWaveTxPowers | equalCopy[45])) || [(NSMutableArray *)cellularPowerLogNRMmWaveTxPowers isEqual:?])
    && ((cellularPowerLogNRMmWaveULCAStates = self->_cellularPowerLogNRMmWaveULCAStates, !(cellularPowerLogNRMmWaveULCAStates | equalCopy[46])) || [(NSMutableArray *)cellularPowerLogNRMmWaveULCAStates isEqual:?])
    && ((cellularPowerLogNRsub6BWPSCCs = self->_cellularPowerLogNRsub6BWPSCCs, !(cellularPowerLogNRsub6BWPSCCs | equalCopy[61])) || [(NSMutableArray *)cellularPowerLogNRsub6BWPSCCs isEqual:?])
    && ((cellularPowerLogNRmmWaveBWPSCCs = self->_cellularPowerLogNRmmWaveBWPSCCs, !(cellularPowerLogNRmmWaveBWPSCCs | equalCopy[52])) || [(NSMutableArray *)cellularPowerLogNRmmWaveBWPSCCs isEqual:?])
    && ((cellularPowerLogNRDCEvents = self->_cellularPowerLogNRDCEvents, !(cellularPowerLogNRDCEvents | equalCopy[42])) || [(NSMutableArray *)cellularPowerLogNRDCEvents isEqual:?])
    && ((cellularPowerLogWUSs = self->_cellularPowerLogWUSs, !(cellularPowerLogWUSs | equalCopy[94])) || [(NSMutableArray *)cellularPowerLogWUSs isEqual:?]))
  {
    cellularPowerLogNRsub6BWPSAs = self->_cellularPowerLogNRsub6BWPSAs;
    if (cellularPowerLogNRsub6BWPSAs | equalCopy[60])
    {
      v101 = [(NSMutableArray *)cellularPowerLogNRsub6BWPSAs isEqual:?];
    }

    else
    {
      v101 = 1;
    }
  }

  else
  {
    v101 = 0;
  }

  return v101;
}

- (unint64_t)hash
{
  v3 = [(NSMutableArray *)self->_cellularPerClientProfileTriggerCounts hash];
  v4 = [(NSMutableArray *)self->_cellularNrSDMActivations hash]^ v3;
  v5 = [(NSMutableArray *)self->_cellularNrSdmEndcReleases hash];
  v6 = v4 ^ v5 ^ [(NSMutableArray *)self->_cellularDynamicRatSelections hash];
  v7 = [(NSMutableArray *)self->_cellularRfTunerHists hash];
  v8 = v7 ^ [(NSMutableArray *)self->_cellularPowerLogXOShutdowns hash];
  v9 = v6 ^ v8 ^ [(NSMutableArray *)self->_cellularPowerLogAPPSPerfLevels hash];
  v10 = [(NSMutableArray *)self->_cellularPowerLogAPPSCXOShutdowns hash];
  v11 = v10 ^ [(NSMutableArray *)self->_cellularPowerLogAPPSSleepVetos hash];
  v12 = v11 ^ [(NSMutableArray *)self->_cellularPowerLogMCPMSleepVetos hash];
  v13 = v9 ^ v12 ^ [(NSMutableArray *)self->_cellularPowerLogMPSSPerfLevels hash];
  v14 = [(NSMutableArray *)self->_cellularPowerLogGPSStates hash];
  v15 = v14 ^ [(NSMutableArray *)self->_cellularPowerLogAOPUARTStates hash];
  v16 = v15 ^ [(NSMutableArray *)self->_cellularPowerLogWLANUARTStates hash];
  v17 = v16 ^ [(NSMutableArray *)self->_cellularPowerLogPCIeStates hash];
  v18 = v13 ^ v17 ^ [(NSMutableArray *)self->_cellularPowerLogL1SleepStates hash];
  v19 = [(NSMutableArray *)self->_cellularPowerLogLTEConfiguredCASCCStates hash];
  v20 = v19 ^ [(NSMutableArray *)self->_cellularPowerLogLTEActivatedCASCCStates hash];
  v21 = v20 ^ [(NSMutableArray *)self->_cellularPowerLogLTERxTxActivityStates hash];
  v22 = v21 ^ [(NSMutableArray *)self->_cellularPowerLogLTECarrierComponentInfos hash];
  v23 = v22 ^ [(NSMutableArray *)self->_cellularPowerLogLTEAggregatedDLTBSs hash];
  v24 = v18 ^ v23 ^ [(NSMutableArray *)self->_cellularPowerLogLTERSRPs hash];
  v25 = [(NSMutableArray *)self->_cellularPowerLogLTESINRs hash];
  v26 = v25 ^ [(NSMutableArray *)self->_cellularPowerLogLTETxPowers hash];
  v27 = v26 ^ [(NSMutableArray *)self->_cellularPowerLogLTERxDiversitys hash];
  v28 = v27 ^ [(NSMutableArray *)self->_cellularPowerLogLTEULCAStates hash];
  v29 = v28 ^ [(NSMutableArray *)self->_cellularPowerLogPowerEstimators hash];
  v30 = v29 ^ [(NSMutableArray *)self->_cellularPowerLogLTEPagingDRXCycles hash];
  v31 = v24 ^ v30 ^ [(NSMutableArray *)self->_cellularPowerLogNRPagingDRXCycles hash];
  v32 = [(NSMutableArray *)self->_cellularPowerLogProtocolStates hash];
  v33 = v32 ^ [(NSMutableArray *)self->_cellularPowerLogPLMNSearchs hash];
  v34 = v33 ^ [(NSMutableArray *)self->_cellularPowerLogGSMTxPowers hash];
  v35 = v34 ^ [(NSMutableArray *)self->_cellularPowerLogGSMRxRSSIs hash];
  v36 = v35 ^ [(NSMutableArray *)self->_cellularPowerLogGSMRABModes hash];
  v37 = v36 ^ [(NSMutableArray *)self->_cellularPowerLogGSMRxDiversitys hash];
  v38 = v37 ^ [(NSMutableArray *)self->_cellularPowerLogWCDMATxPowers hash];
  v39 = v31 ^ v38 ^ [(NSMutableArray *)self->_cellularPowerLogWCDMARxRSSIs hash];
  v40 = [(NSMutableArray *)self->_cellularPowerLogNRSCGRels hash];
  v41 = v40 ^ [(NSMutableArray *)self->_cellularPowerLogWCDMARxDiversitys hash];
  v42 = v41 ^ [(NSMutableArray *)self->_cellularPowerLogWCDMARABModes hash];
  v43 = v42 ^ [(NSMutableArray *)self->_cellularPowerLogWCDMARABTypes hash];
  v44 = v43 ^ [(NSMutableArray *)self->_cellularPowerLogEVDOTxPowers hash];
  v45 = v44 ^ [(NSMutableArray *)self->_cellularPowerLogEVDORxRSSIs hash];
  v46 = v45 ^ [(NSMutableArray *)self->_cellularPowerLogHybridRABModes hash];
  v47 = v46 ^ [(NSMutableArray *)self->_cellularPowerLogEVDORxDiversitys hash];
  v48 = v39 ^ v47 ^ [(NSMutableArray *)self->_cellularPowerLogCDMA1XTxPowers hash];
  v49 = [(NSMutableArray *)self->_cellularPowerLogCDMA1XRxRSSIs hash];
  v50 = v49 ^ [(NSMutableArray *)self->_cellularPowerLogCDMA1XRABModes hash];
  v51 = v50 ^ [(NSMutableArray *)self->_cellularPowerLogCDMA1XRxDiversitys hash];
  v52 = v51 ^ [(NSMutableArray *)self->_cellularPowerLogWCDMACDRXConfigs hash];
  v53 = v52 ^ [(NSMutableArray *)self->_cellularPowerLogLTECDRXConfigs hash];
  v54 = v53 ^ [(NSMutableArray *)self->_cellularPowerLogWCDMARRCStateChanges hash];
  v55 = v54 ^ [(NSMutableArray *)self->_cellularPowerLogLTERRCStateChanges hash];
  v56 = v55 ^ [(NSMutableArray *)self->_cellularPowerLogSystemEvents hash];
  v57 = v56 ^ [(NSMutableArray *)self->_cellularPowerLogRATReselectionEvents hash];
  v58 = v48 ^ v57 ^ [(NSMutableArray *)self->_cellularPowerLogRATRedirectionEvents hash];
  v59 = [(NSMutableArray *)self->_cellularPowerLogGSMRRCStateChanges hash];
  v60 = v59 ^ [(NSMutableArray *)self->_cellularPowerLogCDMA1XRRCStateChanges hash];
  v61 = v60 ^ [(NSMutableArray *)self->_cellularPowerLogHybridRRCStateChanges hash];
  v62 = v61 ^ [(NSMutableArray *)self->_cellularPowerLogServiceStateEvents hash];
  v63 = v62 ^ [(NSMutableArray *)self->_cellularPowerLogPLMNScanEvents hash];
  v64 = v63 ^ [(NSMutableArray *)self->_cellularPowerLogPLMNSearchEvents hash];
  v65 = v64 ^ [(NSMutableArray *)self->_cellularPowerLogNRSARRCStateChanges hash];
  v66 = v65 ^ [(NSMutableArray *)self->_cellularPowerLogNRNSAENDCEvents hash];
  v67 = v66 ^ [(NSMutableArray *)self->_cellularPowerLogNRCDRXConfigs hash];
  v68 = v67 ^ [(NSMutableArray *)self->_cellularPowerLogNRsub6BWPs hash];
  v69 = v58 ^ v68 ^ [(NSMutableArray *)self->_cellularPowerLogRFTunerStatsHists hash];
  v70 = [(NSMutableArray *)self->_cellularPowerLogNRsub6CASCCConfigureds hash];
  v71 = v70 ^ [(NSMutableArray *)self->_cellularPowerLogNRsub6CASCCActivateds hash];
  v72 = v71 ^ [(NSMutableArray *)self->_cellularPowerLogNRsub6RxTxs hash];
  v73 = v72 ^ [(NSMutableArray *)self->_cellularPowerLogNRsub6CarrierComponentInfos hash];
  v74 = v73 ^ [(NSMutableArray *)self->_cellularPowerLogNRsub6DLTBSs hash];
  v75 = v74 ^ [(NSMutableArray *)self->_cellularPowerLogNRsub6RSRPs hash];
  v76 = v75 ^ [(NSMutableArray *)self->_cellularPowerLogNRsub6ULCAStates hash];
  v77 = v76 ^ [(NSMutableArray *)self->_cellularPowerLogNRsub6TxPowers hash];
  v78 = v77 ^ [(NSMutableArray *)self->_cellularPowerLogNRsub6RxDiversitys hash];
  v79 = v78 ^ [(NSMutableArray *)self->_cellularPowerLogSPMIs hash];
  v80 = v79 ^ [(NSMutableArray *)self->_cellularPowerLogNRmmWaveBWPs hash];
  v81 = v69 ^ v80 ^ [(NSMutableArray *)self->_cellularPowerLogNRmmWaveAntennaPanels hash];
  v82 = [(NSMutableArray *)self->_cellularPowerLogNRFRCoverages hash];
  v83 = v82 ^ [(NSMutableArray *)self->_cellularPowerLogNRmmWaveBeamIDs hash];
  v84 = v83 ^ [(NSMutableArray *)self->_cellularPowerLogSFTStates hash];
  v85 = v84 ^ [(NSMutableArray *)self->_cellularPowerLogNRmmWaveCASCCConfigureds hash];
  v86 = v85 ^ [(NSMutableArray *)self->_cellularPowerLogNRmmWaveCASCCActivateds hash];
  v87 = v86 ^ [(NSMutableArray *)self->_cellularPowerLogNRmmWaveRxTxs hash];
  v88 = v87 ^ [(NSMutableArray *)self->_cellularPowerLogNRmmWaveCarrierComponentInfos hash];
  v89 = v88 ^ [(NSMutableArray *)self->_cellularPowerLogNRmmWaveDLTBSs hash];
  v90 = v89 ^ [(NSMutableArray *)self->_cellularPowerLogNRMmWaveRSRPs hash];
  v91 = v90 ^ [(NSMutableArray *)self->_cellularPowerLogSFTRxTxs hash];
  v92 = v91 ^ [(NSMutableArray *)self->_cellularPowerLogNRMmWaveTxPowers hash];
  v93 = v92 ^ [(NSMutableArray *)self->_cellularPowerLogNRMmWaveULCAStates hash];
  v94 = v81 ^ v93 ^ [(NSMutableArray *)self->_cellularPowerLogNRsub6BWPSCCs hash];
  v95 = [(NSMutableArray *)self->_cellularPowerLogNRmmWaveBWPSCCs hash];
  v96 = v95 ^ [(NSMutableArray *)self->_cellularPowerLogNRDCEvents hash];
  v97 = v96 ^ [(NSMutableArray *)self->_cellularPowerLogWUSs hash];
  return v94 ^ v97 ^ [(NSMutableArray *)self->_cellularPowerLogNRsub6BWPSAs hash];
}

- (void)mergeFrom:(id)from
{
  v965 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v865 = 0u;
  v866 = 0u;
  v867 = 0u;
  v868 = 0u;
  v5 = fromCopy[4];
  v6 = [v5 countByEnumeratingWithState:&v865 objects:v964 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v866;
    do
    {
      v9 = 0;
      do
      {
        if (*v866 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPerClientProfileTriggerCount:*(*(&v865 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v865 objects:v964 count:16];
    }

    while (v7);
  }

  v864 = 0u;
  v863 = 0u;
  v862 = 0u;
  v861 = 0u;
  v10 = fromCopy[2];
  v11 = [v10 countByEnumeratingWithState:&v861 objects:v963 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v862;
    do
    {
      v14 = 0;
      do
      {
        if (*v862 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularNrSDMActivation:*(*(&v861 + 1) + 8 * v14++)];
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v861 objects:v963 count:16];
    }

    while (v12);
  }

  v860 = 0u;
  v859 = 0u;
  v858 = 0u;
  v857 = 0u;
  v15 = fromCopy[3];
  v16 = [v15 countByEnumeratingWithState:&v857 objects:v962 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v858;
    do
    {
      v19 = 0;
      do
      {
        if (*v858 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularNrSdmEndcRelease:*(*(&v857 + 1) + 8 * v19++)];
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v857 objects:v962 count:16];
    }

    while (v17);
  }

  v856 = 0u;
  v855 = 0u;
  v854 = 0u;
  v853 = 0u;
  v20 = fromCopy[1];
  v21 = [v20 countByEnumeratingWithState:&v853 objects:v961 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v854;
    do
    {
      v24 = 0;
      do
      {
        if (*v854 != v23)
        {
          objc_enumerationMutation(v20);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularDynamicRatSelection:*(*(&v853 + 1) + 8 * v24++)];
      }

      while (v22 != v24);
      v22 = [v20 countByEnumeratingWithState:&v853 objects:v961 count:16];
    }

    while (v22);
  }

  v852 = 0u;
  v851 = 0u;
  v850 = 0u;
  v849 = 0u;
  v25 = fromCopy[96];
  v26 = [v25 countByEnumeratingWithState:&v849 objects:v960 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v850;
    do
    {
      v29 = 0;
      do
      {
        if (*v850 != v28)
        {
          objc_enumerationMutation(v25);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularRfTunerHist:*(*(&v849 + 1) + 8 * v29++)];
      }

      while (v27 != v29);
      v27 = [v25 countByEnumeratingWithState:&v849 objects:v960 count:16];
    }

    while (v27);
  }

  v848 = 0u;
  v847 = 0u;
  v846 = 0u;
  v845 = 0u;
  v30 = fromCopy[95];
  v31 = [v30 countByEnumeratingWithState:&v845 objects:v959 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v846;
    do
    {
      v34 = 0;
      do
      {
        if (*v846 != v33)
        {
          objc_enumerationMutation(v30);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogXOShutdown:*(*(&v845 + 1) + 8 * v34++)];
      }

      while (v32 != v34);
      v32 = [v30 countByEnumeratingWithState:&v845 objects:v959 count:16];
    }

    while (v32);
  }

  v844 = 0u;
  v843 = 0u;
  v842 = 0u;
  v841 = 0u;
  v35 = fromCopy[7];
  v36 = [v35 countByEnumeratingWithState:&v841 objects:v958 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v842;
    do
    {
      v39 = 0;
      do
      {
        if (*v842 != v38)
        {
          objc_enumerationMutation(v35);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogAPPSPerfLevels:*(*(&v841 + 1) + 8 * v39++)];
      }

      while (v37 != v39);
      v37 = [v35 countByEnumeratingWithState:&v841 objects:v958 count:16];
    }

    while (v37);
  }

  v840 = 0u;
  v839 = 0u;
  v838 = 0u;
  v837 = 0u;
  v40 = fromCopy[6];
  v41 = [v40 countByEnumeratingWithState:&v837 objects:v957 count:16];
  if (v41)
  {
    v42 = v41;
    v43 = *v838;
    do
    {
      v44 = 0;
      do
      {
        if (*v838 != v43)
        {
          objc_enumerationMutation(v40);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogAPPSCXOShutdown:*(*(&v837 + 1) + 8 * v44++)];
      }

      while (v42 != v44);
      v42 = [v40 countByEnumeratingWithState:&v837 objects:v957 count:16];
    }

    while (v42);
  }

  v836 = 0u;
  v835 = 0u;
  v834 = 0u;
  v833 = 0u;
  v45 = fromCopy[8];
  v46 = [v45 countByEnumeratingWithState:&v833 objects:v956 count:16];
  if (v46)
  {
    v47 = v46;
    v48 = *v834;
    do
    {
      v49 = 0;
      do
      {
        if (*v834 != v48)
        {
          objc_enumerationMutation(v45);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogAPPSSleepVeto:*(*(&v833 + 1) + 8 * v49++)];
      }

      while (v47 != v49);
      v47 = [v45 countByEnumeratingWithState:&v833 objects:v956 count:16];
    }

    while (v47);
  }

  v832 = 0u;
  v831 = 0u;
  v830 = 0u;
  v829 = 0u;
  v50 = fromCopy[39];
  v51 = [v50 countByEnumeratingWithState:&v829 objects:v955 count:16];
  if (v51)
  {
    v52 = v51;
    v53 = *v830;
    do
    {
      v54 = 0;
      do
      {
        if (*v830 != v53)
        {
          objc_enumerationMutation(v50);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogMCPMSleepVeto:*(*(&v829 + 1) + 8 * v54++)];
      }

      while (v52 != v54);
      v52 = [v50 countByEnumeratingWithState:&v829 objects:v955 count:16];
    }

    while (v52);
  }

  v828 = 0u;
  v827 = 0u;
  v826 = 0u;
  v825 = 0u;
  v55 = fromCopy[40];
  v56 = [v55 countByEnumeratingWithState:&v825 objects:v954 count:16];
  if (v56)
  {
    v57 = v56;
    v58 = *v826;
    do
    {
      v59 = 0;
      do
      {
        if (*v826 != v58)
        {
          objc_enumerationMutation(v55);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogMPSSPerfLevels:*(*(&v825 + 1) + 8 * v59++)];
      }

      while (v57 != v59);
      v57 = [v55 countByEnumeratingWithState:&v825 objects:v954 count:16];
    }

    while (v57);
  }

  v824 = 0u;
  v823 = 0u;
  v822 = 0u;
  v821 = 0u;
  v60 = fromCopy[17];
  v61 = [v60 countByEnumeratingWithState:&v821 objects:v953 count:16];
  if (v61)
  {
    v62 = v61;
    v63 = *v822;
    do
    {
      v64 = 0;
      do
      {
        if (*v822 != v63)
        {
          objc_enumerationMutation(v60);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogGPSStates:*(*(&v821 + 1) + 8 * v64++)];
      }

      while (v62 != v64);
      v62 = [v60 countByEnumeratingWithState:&v821 objects:v953 count:16];
    }

    while (v62);
  }

  v820 = 0u;
  v819 = 0u;
  v818 = 0u;
  v817 = 0u;
  v65 = fromCopy[5];
  v66 = [v65 countByEnumeratingWithState:&v817 objects:v952 count:16];
  if (v66)
  {
    v67 = v66;
    v68 = *v818;
    do
    {
      v69 = 0;
      do
      {
        if (*v818 != v68)
        {
          objc_enumerationMutation(v65);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogAOPUARTStates:*(*(&v817 + 1) + 8 * v69++)];
      }

      while (v67 != v69);
      v67 = [v65 countByEnumeratingWithState:&v817 objects:v952 count:16];
    }

    while (v67);
  }

  v816 = 0u;
  v815 = 0u;
  v814 = 0u;
  v813 = 0u;
  v70 = fromCopy[93];
  v71 = [v70 countByEnumeratingWithState:&v813 objects:v951 count:16];
  if (v71)
  {
    v72 = v71;
    v73 = *v814;
    do
    {
      v74 = 0;
      do
      {
        if (*v814 != v73)
        {
          objc_enumerationMutation(v70);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogWLANUARTStates:*(*(&v813 + 1) + 8 * v74++)];
      }

      while (v72 != v74);
      v72 = [v70 countByEnumeratingWithState:&v813 objects:v951 count:16];
    }

    while (v72);
  }

  v812 = 0u;
  v811 = 0u;
  v810 = 0u;
  v809 = 0u;
  v75 = fromCopy[72];
  v76 = [v75 countByEnumeratingWithState:&v809 objects:v950 count:16];
  if (v76)
  {
    v77 = v76;
    v78 = *v810;
    do
    {
      v79 = 0;
      do
      {
        if (*v810 != v78)
        {
          objc_enumerationMutation(v75);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogPCIeStates:*(*(&v809 + 1) + 8 * v79++)];
      }

      while (v77 != v79);
      v77 = [v75 countByEnumeratingWithState:&v809 objects:v950 count:16];
    }

    while (v77);
  }

  v808 = 0u;
  v807 = 0u;
  v806 = 0u;
  v805 = 0u;
  v80 = fromCopy[25];
  v81 = [v80 countByEnumeratingWithState:&v805 objects:v949 count:16];
  if (v81)
  {
    v82 = v81;
    v83 = *v806;
    do
    {
      v84 = 0;
      do
      {
        if (*v806 != v83)
        {
          objc_enumerationMutation(v80);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogL1SleepStates:*(*(&v805 + 1) + 8 * v84++)];
      }

      while (v82 != v84);
      v82 = [v80 countByEnumeratingWithState:&v805 objects:v949 count:16];
    }

    while (v82);
  }

  v804 = 0u;
  v803 = 0u;
  v802 = 0u;
  v801 = 0u;
  v85 = fromCopy[30];
  v86 = [v85 countByEnumeratingWithState:&v801 objects:v948 count:16];
  if (v86)
  {
    v87 = v86;
    v88 = *v802;
    do
    {
      v89 = 0;
      do
      {
        if (*v802 != v88)
        {
          objc_enumerationMutation(v85);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogLTEConfiguredCASCCStates:*(*(&v801 + 1) + 8 * v89++)];
      }

      while (v87 != v89);
      v87 = [v85 countByEnumeratingWithState:&v801 objects:v948 count:16];
    }

    while (v87);
  }

  v800 = 0u;
  v799 = 0u;
  v798 = 0u;
  v797 = 0u;
  v90 = fromCopy[26];
  v91 = [v90 countByEnumeratingWithState:&v797 objects:v947 count:16];
  if (v91)
  {
    v92 = v91;
    v93 = *v798;
    do
    {
      v94 = 0;
      do
      {
        if (*v798 != v93)
        {
          objc_enumerationMutation(v90);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogLTEActivatedCASCCStates:*(*(&v797 + 1) + 8 * v94++)];
      }

      while (v92 != v94);
      v92 = [v90 countByEnumeratingWithState:&v797 objects:v947 count:16];
    }

    while (v92);
  }

  v796 = 0u;
  v795 = 0u;
  v794 = 0u;
  v793 = 0u;
  v95 = fromCopy[35];
  v96 = [v95 countByEnumeratingWithState:&v793 objects:v946 count:16];
  if (v96)
  {
    v97 = v96;
    v98 = *v794;
    do
    {
      v99 = 0;
      do
      {
        if (*v794 != v98)
        {
          objc_enumerationMutation(v95);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogLTERxTxActivityStates:*(*(&v793 + 1) + 8 * v99++)];
      }

      while (v97 != v99);
      v97 = [v95 countByEnumeratingWithState:&v793 objects:v946 count:16];
    }

    while (v97);
  }

  v792 = 0u;
  v791 = 0u;
  v790 = 0u;
  v789 = 0u;
  v100 = fromCopy[29];
  v101 = [v100 countByEnumeratingWithState:&v789 objects:v945 count:16];
  if (v101)
  {
    v102 = v101;
    v103 = *v790;
    do
    {
      v104 = 0;
      do
      {
        if (*v790 != v103)
        {
          objc_enumerationMutation(v100);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogLTECarrierComponentInfo:*(*(&v789 + 1) + 8 * v104++)];
      }

      while (v102 != v104);
      v102 = [v100 countByEnumeratingWithState:&v789 objects:v945 count:16];
    }

    while (v102);
  }

  v788 = 0u;
  v787 = 0u;
  v786 = 0u;
  v785 = 0u;
  v105 = fromCopy[27];
  v106 = [v105 countByEnumeratingWithState:&v785 objects:v944 count:16];
  if (v106)
  {
    v107 = v106;
    v108 = *v786;
    do
    {
      v109 = 0;
      do
      {
        if (*v786 != v108)
        {
          objc_enumerationMutation(v105);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogLTEAggregatedDLTBS:*(*(&v785 + 1) + 8 * v109++)];
      }

      while (v107 != v109);
      v107 = [v105 countByEnumeratingWithState:&v785 objects:v944 count:16];
    }

    while (v107);
  }

  v784 = 0u;
  v783 = 0u;
  v782 = 0u;
  v781 = 0u;
  v110 = fromCopy[33];
  v111 = [v110 countByEnumeratingWithState:&v781 objects:v943 count:16];
  if (v111)
  {
    v112 = v111;
    v113 = *v782;
    do
    {
      v114 = 0;
      do
      {
        if (*v782 != v113)
        {
          objc_enumerationMutation(v110);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogLTERSRP:*(*(&v781 + 1) + 8 * v114++)];
      }

      while (v112 != v114);
      v112 = [v110 countByEnumeratingWithState:&v781 objects:v943 count:16];
    }

    while (v112);
  }

  v780 = 0u;
  v779 = 0u;
  v778 = 0u;
  v777 = 0u;
  v115 = fromCopy[36];
  v116 = [v115 countByEnumeratingWithState:&v777 objects:v942 count:16];
  if (v116)
  {
    v117 = v116;
    v118 = *v778;
    do
    {
      v119 = 0;
      do
      {
        if (*v778 != v118)
        {
          objc_enumerationMutation(v115);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogLTESINR:*(*(&v777 + 1) + 8 * v119++)];
      }

      while (v117 != v119);
      v117 = [v115 countByEnumeratingWithState:&v777 objects:v942 count:16];
    }

    while (v117);
  }

  v776 = 0u;
  v775 = 0u;
  v774 = 0u;
  v773 = 0u;
  v120 = fromCopy[37];
  v121 = [v120 countByEnumeratingWithState:&v773 objects:v941 count:16];
  if (v121)
  {
    v122 = v121;
    v123 = *v774;
    do
    {
      v124 = 0;
      do
      {
        if (*v774 != v123)
        {
          objc_enumerationMutation(v120);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogLTETxPower:*(*(&v773 + 1) + 8 * v124++)];
      }

      while (v122 != v124);
      v122 = [v120 countByEnumeratingWithState:&v773 objects:v941 count:16];
    }

    while (v122);
  }

  v772 = 0u;
  v771 = 0u;
  v770 = 0u;
  v769 = 0u;
  v125 = fromCopy[34];
  v126 = [v125 countByEnumeratingWithState:&v769 objects:v940 count:16];
  if (v126)
  {
    v127 = v126;
    v128 = *v770;
    do
    {
      v129 = 0;
      do
      {
        if (*v770 != v128)
        {
          objc_enumerationMutation(v125);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogLTERxDiversity:*(*(&v769 + 1) + 8 * v129++)];
      }

      while (v127 != v129);
      v127 = [v125 countByEnumeratingWithState:&v769 objects:v940 count:16];
    }

    while (v127);
  }

  v768 = 0u;
  v767 = 0u;
  v766 = 0u;
  v765 = 0u;
  v130 = fromCopy[38];
  v131 = [v130 countByEnumeratingWithState:&v765 objects:v939 count:16];
  if (v131)
  {
    v132 = v131;
    v133 = *v766;
    do
    {
      v134 = 0;
      do
      {
        if (*v766 != v133)
        {
          objc_enumerationMutation(v130);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogLTEULCAState:*(*(&v765 + 1) + 8 * v134++)];
      }

      while (v132 != v134);
      v132 = [v130 countByEnumeratingWithState:&v765 objects:v939 count:16];
    }

    while (v132);
  }

  v764 = 0u;
  v763 = 0u;
  v762 = 0u;
  v761 = 0u;
  v135 = fromCopy[76];
  v136 = [v135 countByEnumeratingWithState:&v761 objects:v938 count:16];
  if (v136)
  {
    v137 = v136;
    v138 = *v762;
    do
    {
      v139 = 0;
      do
      {
        if (*v762 != v138)
        {
          objc_enumerationMutation(v135);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogPowerEstimator:*(*(&v761 + 1) + 8 * v139++)];
      }

      while (v137 != v139);
      v137 = [v135 countByEnumeratingWithState:&v761 objects:v938 count:16];
    }

    while (v137);
  }

  v760 = 0u;
  v759 = 0u;
  v758 = 0u;
  v757 = 0u;
  v140 = fromCopy[31];
  v141 = [v140 countByEnumeratingWithState:&v757 objects:v937 count:16];
  if (v141)
  {
    v142 = v141;
    v143 = *v758;
    do
    {
      v144 = 0;
      do
      {
        if (*v758 != v143)
        {
          objc_enumerationMutation(v140);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogLTEPagingDRXCycle:*(*(&v757 + 1) + 8 * v144++)];
      }

      while (v142 != v144);
      v142 = [v140 countByEnumeratingWithState:&v757 objects:v937 count:16];
    }

    while (v142);
  }

  v756 = 0u;
  v755 = 0u;
  v754 = 0u;
  v753 = 0u;
  v145 = fromCopy[48];
  v146 = [v145 countByEnumeratingWithState:&v753 objects:v936 count:16];
  if (v146)
  {
    v147 = v146;
    v148 = *v754;
    do
    {
      v149 = 0;
      do
      {
        if (*v754 != v148)
        {
          objc_enumerationMutation(v145);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogNRPagingDRXCycle:*(*(&v753 + 1) + 8 * v149++)];
      }

      while (v147 != v149);
      v147 = [v145 countByEnumeratingWithState:&v753 objects:v936 count:16];
    }

    while (v147);
  }

  v752 = 0u;
  v751 = 0u;
  v750 = 0u;
  v749 = 0u;
  v150 = fromCopy[77];
  v151 = [v150 countByEnumeratingWithState:&v749 objects:v935 count:16];
  if (v151)
  {
    v152 = v151;
    v153 = *v750;
    do
    {
      v154 = 0;
      do
      {
        if (*v750 != v153)
        {
          objc_enumerationMutation(v150);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogProtocolState:*(*(&v749 + 1) + 8 * v154++)];
      }

      while (v152 != v154);
      v152 = [v150 countByEnumeratingWithState:&v749 objects:v935 count:16];
    }

    while (v152);
  }

  v748 = 0u;
  v747 = 0u;
  v746 = 0u;
  v745 = 0u;
  v155 = fromCopy[75];
  v156 = [v155 countByEnumeratingWithState:&v745 objects:v934 count:16];
  if (v156)
  {
    v157 = v156;
    v158 = *v746;
    do
    {
      v159 = 0;
      do
      {
        if (*v746 != v158)
        {
          objc_enumerationMutation(v155);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogPLMNSearch:*(*(&v745 + 1) + 8 * v159++)];
      }

      while (v157 != v159);
      v157 = [v155 countByEnumeratingWithState:&v745 objects:v934 count:16];
    }

    while (v157);
  }

  v744 = 0u;
  v743 = 0u;
  v742 = 0u;
  v741 = 0u;
  v160 = fromCopy[22];
  v161 = [v160 countByEnumeratingWithState:&v741 objects:v933 count:16];
  if (v161)
  {
    v162 = v161;
    v163 = *v742;
    do
    {
      v164 = 0;
      do
      {
        if (*v742 != v163)
        {
          objc_enumerationMutation(v160);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogGSMTxPower:*(*(&v741 + 1) + 8 * v164++)];
      }

      while (v162 != v164);
      v162 = [v160 countByEnumeratingWithState:&v741 objects:v933 count:16];
    }

    while (v162);
  }

  v740 = 0u;
  v739 = 0u;
  v738 = 0u;
  v737 = 0u;
  v165 = fromCopy[21];
  v166 = [v165 countByEnumeratingWithState:&v737 objects:v932 count:16];
  if (v166)
  {
    v167 = v166;
    v168 = *v738;
    do
    {
      v169 = 0;
      do
      {
        if (*v738 != v168)
        {
          objc_enumerationMutation(v165);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogGSMRxRSSI:*(*(&v737 + 1) + 8 * v169++)];
      }

      while (v167 != v169);
      v167 = [v165 countByEnumeratingWithState:&v737 objects:v932 count:16];
    }

    while (v167);
  }

  v736 = 0u;
  v735 = 0u;
  v734 = 0u;
  v733 = 0u;
  v170 = fromCopy[18];
  v171 = [v170 countByEnumeratingWithState:&v733 objects:v931 count:16];
  if (v171)
  {
    v172 = v171;
    v173 = *v734;
    do
    {
      v174 = 0;
      do
      {
        if (*v734 != v173)
        {
          objc_enumerationMutation(v170);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogGSMRABMode:*(*(&v733 + 1) + 8 * v174++)];
      }

      while (v172 != v174);
      v172 = [v170 countByEnumeratingWithState:&v733 objects:v931 count:16];
    }

    while (v172);
  }

  v732 = 0u;
  v731 = 0u;
  v730 = 0u;
  v729 = 0u;
  v175 = fromCopy[20];
  v176 = [v175 countByEnumeratingWithState:&v729 objects:v930 count:16];
  if (v176)
  {
    v177 = v176;
    v178 = *v730;
    do
    {
      v179 = 0;
      do
      {
        if (*v730 != v178)
        {
          objc_enumerationMutation(v175);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogGSMRxDiversity:*(*(&v729 + 1) + 8 * v179++)];
      }

      while (v177 != v179);
      v177 = [v175 countByEnumeratingWithState:&v729 objects:v930 count:16];
    }

    while (v177);
  }

  v728 = 0u;
  v727 = 0u;
  v726 = 0u;
  v725 = 0u;
  v180 = fromCopy[92];
  v181 = [v180 countByEnumeratingWithState:&v725 objects:v929 count:16];
  if (v181)
  {
    v182 = v181;
    v183 = *v726;
    do
    {
      v184 = 0;
      do
      {
        if (*v726 != v183)
        {
          objc_enumerationMutation(v180);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogWCDMATxPower:*(*(&v725 + 1) + 8 * v184++)];
      }

      while (v182 != v184);
      v182 = [v180 countByEnumeratingWithState:&v725 objects:v929 count:16];
    }

    while (v182);
  }

  v724 = 0u;
  v723 = 0u;
  v722 = 0u;
  v721 = 0u;
  v185 = fromCopy[91];
  v186 = [v185 countByEnumeratingWithState:&v721 objects:v928 count:16];
  if (v186)
  {
    v187 = v186;
    v188 = *v722;
    do
    {
      v189 = 0;
      do
      {
        if (*v722 != v188)
        {
          objc_enumerationMutation(v185);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogWCDMARxRSSI:*(*(&v721 + 1) + 8 * v189++)];
      }

      while (v187 != v189);
      v187 = [v185 countByEnumeratingWithState:&v721 objects:v928 count:16];
    }

    while (v187);
  }

  v720 = 0u;
  v719 = 0u;
  v718 = 0u;
  v717 = 0u;
  v190 = fromCopy[50];
  v191 = [v190 countByEnumeratingWithState:&v717 objects:v927 count:16];
  if (v191)
  {
    v192 = v191;
    v193 = *v718;
    do
    {
      v194 = 0;
      do
      {
        if (*v718 != v193)
        {
          objc_enumerationMutation(v190);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogNRSCGRel:*(*(&v717 + 1) + 8 * v194++)];
      }

      while (v192 != v194);
      v192 = [v190 countByEnumeratingWithState:&v717 objects:v927 count:16];
    }

    while (v192);
  }

  v716 = 0u;
  v715 = 0u;
  v714 = 0u;
  v713 = 0u;
  v195 = fromCopy[90];
  v196 = [v195 countByEnumeratingWithState:&v713 objects:v926 count:16];
  if (v196)
  {
    v197 = v196;
    v198 = *v714;
    do
    {
      v199 = 0;
      do
      {
        if (*v714 != v198)
        {
          objc_enumerationMutation(v195);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogWCDMARxDiversity:*(*(&v713 + 1) + 8 * v199++)];
      }

      while (v197 != v199);
      v197 = [v195 countByEnumeratingWithState:&v713 objects:v926 count:16];
    }

    while (v197);
  }

  v712 = 0u;
  v711 = 0u;
  v710 = 0u;
  v709 = 0u;
  v200 = fromCopy[87];
  v201 = [v200 countByEnumeratingWithState:&v709 objects:v925 count:16];
  if (v201)
  {
    v202 = v201;
    v203 = *v710;
    do
    {
      v204 = 0;
      do
      {
        if (*v710 != v203)
        {
          objc_enumerationMutation(v200);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogWCDMARABMode:*(*(&v709 + 1) + 8 * v204++)];
      }

      while (v202 != v204);
      v202 = [v200 countByEnumeratingWithState:&v709 objects:v925 count:16];
    }

    while (v202);
  }

  v708 = 0u;
  v707 = 0u;
  v706 = 0u;
  v705 = 0u;
  v205 = fromCopy[88];
  v206 = [v205 countByEnumeratingWithState:&v705 objects:v924 count:16];
  if (v206)
  {
    v207 = v206;
    v208 = *v706;
    do
    {
      v209 = 0;
      do
      {
        if (*v706 != v208)
        {
          objc_enumerationMutation(v205);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogWCDMARABType:*(*(&v705 + 1) + 8 * v209++)];
      }

      while (v207 != v209);
      v207 = [v205 countByEnumeratingWithState:&v705 objects:v924 count:16];
    }

    while (v207);
  }

  v704 = 0u;
  v703 = 0u;
  v702 = 0u;
  v701 = 0u;
  v210 = fromCopy[16];
  v211 = [v210 countByEnumeratingWithState:&v701 objects:v923 count:16];
  if (v211)
  {
    v212 = v211;
    v213 = *v702;
    do
    {
      v214 = 0;
      do
      {
        if (*v702 != v213)
        {
          objc_enumerationMutation(v210);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogEVDOTxPower:*(*(&v701 + 1) + 8 * v214++)];
      }

      while (v212 != v214);
      v212 = [v210 countByEnumeratingWithState:&v701 objects:v923 count:16];
    }

    while (v212);
  }

  v700 = 0u;
  v699 = 0u;
  v698 = 0u;
  v697 = 0u;
  v215 = fromCopy[15];
  v216 = [v215 countByEnumeratingWithState:&v697 objects:v922 count:16];
  if (v216)
  {
    v217 = v216;
    v218 = *v698;
    do
    {
      v219 = 0;
      do
      {
        if (*v698 != v218)
        {
          objc_enumerationMutation(v215);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogEVDORxRSSI:*(*(&v697 + 1) + 8 * v219++)];
      }

      while (v217 != v219);
      v217 = [v215 countByEnumeratingWithState:&v697 objects:v922 count:16];
    }

    while (v217);
  }

  v696 = 0u;
  v695 = 0u;
  v694 = 0u;
  v693 = 0u;
  v220 = fromCopy[23];
  v221 = [v220 countByEnumeratingWithState:&v693 objects:v921 count:16];
  if (v221)
  {
    v222 = v221;
    v223 = *v694;
    do
    {
      v224 = 0;
      do
      {
        if (*v694 != v223)
        {
          objc_enumerationMutation(v220);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogHybridRABMode:*(*(&v693 + 1) + 8 * v224++)];
      }

      while (v222 != v224);
      v222 = [v220 countByEnumeratingWithState:&v693 objects:v921 count:16];
    }

    while (v222);
  }

  v692 = 0u;
  v691 = 0u;
  v690 = 0u;
  v689 = 0u;
  v225 = fromCopy[14];
  v226 = [v225 countByEnumeratingWithState:&v689 objects:v920 count:16];
  if (v226)
  {
    v227 = v226;
    v228 = *v690;
    do
    {
      v229 = 0;
      do
      {
        if (*v690 != v228)
        {
          objc_enumerationMutation(v225);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogEVDORxDiversity:*(*(&v689 + 1) + 8 * v229++)];
      }

      while (v227 != v229);
      v227 = [v225 countByEnumeratingWithState:&v689 objects:v920 count:16];
    }

    while (v227);
  }

  v688 = 0u;
  v687 = 0u;
  v686 = 0u;
  v685 = 0u;
  v230 = fromCopy[13];
  v231 = [v230 countByEnumeratingWithState:&v685 objects:v919 count:16];
  if (v231)
  {
    v232 = v231;
    v233 = *v686;
    do
    {
      v234 = 0;
      do
      {
        if (*v686 != v233)
        {
          objc_enumerationMutation(v230);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogCDMA1XTxPower:*(*(&v685 + 1) + 8 * v234++)];
      }

      while (v232 != v234);
      v232 = [v230 countByEnumeratingWithState:&v685 objects:v919 count:16];
    }

    while (v232);
  }

  v684 = 0u;
  v683 = 0u;
  v682 = 0u;
  v681 = 0u;
  v235 = fromCopy[12];
  v236 = [v235 countByEnumeratingWithState:&v681 objects:v918 count:16];
  if (v236)
  {
    v237 = v236;
    v238 = *v682;
    do
    {
      v239 = 0;
      do
      {
        if (*v682 != v238)
        {
          objc_enumerationMutation(v235);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogCDMA1XRxRSSI:*(*(&v681 + 1) + 8 * v239++)];
      }

      while (v237 != v239);
      v237 = [v235 countByEnumeratingWithState:&v681 objects:v918 count:16];
    }

    while (v237);
  }

  v680 = 0u;
  v679 = 0u;
  v678 = 0u;
  v677 = 0u;
  v240 = fromCopy[9];
  v241 = [v240 countByEnumeratingWithState:&v677 objects:v917 count:16];
  if (v241)
  {
    v242 = v241;
    v243 = *v678;
    do
    {
      v244 = 0;
      do
      {
        if (*v678 != v243)
        {
          objc_enumerationMutation(v240);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogCDMA1XRABMode:*(*(&v677 + 1) + 8 * v244++)];
      }

      while (v242 != v244);
      v242 = [v240 countByEnumeratingWithState:&v677 objects:v917 count:16];
    }

    while (v242);
  }

  v676 = 0u;
  v675 = 0u;
  v674 = 0u;
  v673 = 0u;
  v245 = fromCopy[11];
  v246 = [v245 countByEnumeratingWithState:&v673 objects:v916 count:16];
  if (v246)
  {
    v247 = v246;
    v248 = *v674;
    do
    {
      v249 = 0;
      do
      {
        if (*v674 != v248)
        {
          objc_enumerationMutation(v245);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogCDMA1XRxDiversity:*(*(&v673 + 1) + 8 * v249++)];
      }

      while (v247 != v249);
      v247 = [v245 countByEnumeratingWithState:&v673 objects:v916 count:16];
    }

    while (v247);
  }

  v672 = 0u;
  v671 = 0u;
  v670 = 0u;
  v669 = 0u;
  v250 = fromCopy[86];
  v251 = [v250 countByEnumeratingWithState:&v669 objects:v915 count:16];
  if (v251)
  {
    v252 = v251;
    v253 = *v670;
    do
    {
      v254 = 0;
      do
      {
        if (*v670 != v253)
        {
          objc_enumerationMutation(v250);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogWCDMACDRXConfig:*(*(&v669 + 1) + 8 * v254++)];
      }

      while (v252 != v254);
      v252 = [v250 countByEnumeratingWithState:&v669 objects:v915 count:16];
    }

    while (v252);
  }

  v668 = 0u;
  v667 = 0u;
  v666 = 0u;
  v665 = 0u;
  v255 = fromCopy[28];
  v256 = [v255 countByEnumeratingWithState:&v665 objects:v914 count:16];
  if (v256)
  {
    v257 = v256;
    v258 = *v666;
    do
    {
      v259 = 0;
      do
      {
        if (*v666 != v258)
        {
          objc_enumerationMutation(v255);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogLTECDRXConfig:*(*(&v665 + 1) + 8 * v259++)];
      }

      while (v257 != v259);
      v257 = [v255 countByEnumeratingWithState:&v665 objects:v914 count:16];
    }

    while (v257);
  }

  v664 = 0u;
  v663 = 0u;
  v662 = 0u;
  v661 = 0u;
  v260 = fromCopy[89];
  v261 = [v260 countByEnumeratingWithState:&v661 objects:v913 count:16];
  if (v261)
  {
    v262 = v261;
    v263 = *v662;
    do
    {
      v264 = 0;
      do
      {
        if (*v662 != v263)
        {
          objc_enumerationMutation(v260);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogWCDMARRCStateChange:*(*(&v661 + 1) + 8 * v264++)];
      }

      while (v262 != v264);
      v262 = [v260 countByEnumeratingWithState:&v661 objects:v913 count:16];
    }

    while (v262);
  }

  v660 = 0u;
  v659 = 0u;
  v658 = 0u;
  v657 = 0u;
  v265 = fromCopy[32];
  v266 = [v265 countByEnumeratingWithState:&v657 objects:v912 count:16];
  if (v266)
  {
    v267 = v266;
    v268 = *v658;
    do
    {
      v269 = 0;
      do
      {
        if (*v658 != v268)
        {
          objc_enumerationMutation(v265);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogLTERRCStateChange:*(*(&v657 + 1) + 8 * v269++)];
      }

      while (v267 != v269);
      v267 = [v265 countByEnumeratingWithState:&v657 objects:v912 count:16];
    }

    while (v267);
  }

  v656 = 0u;
  v655 = 0u;
  v654 = 0u;
  v653 = 0u;
  v270 = fromCopy[85];
  v271 = [v270 countByEnumeratingWithState:&v653 objects:v911 count:16];
  if (v271)
  {
    v272 = v271;
    v273 = *v654;
    do
    {
      v274 = 0;
      do
      {
        if (*v654 != v273)
        {
          objc_enumerationMutation(v270);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogSystemEvent:*(*(&v653 + 1) + 8 * v274++)];
      }

      while (v272 != v274);
      v272 = [v270 countByEnumeratingWithState:&v653 objects:v911 count:16];
    }

    while (v272);
  }

  v652 = 0u;
  v651 = 0u;
  v650 = 0u;
  v649 = 0u;
  v275 = fromCopy[79];
  v276 = [v275 countByEnumeratingWithState:&v649 objects:v910 count:16];
  if (v276)
  {
    v277 = v276;
    v278 = *v650;
    do
    {
      v279 = 0;
      do
      {
        if (*v650 != v278)
        {
          objc_enumerationMutation(v275);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogRATReselectionEvent:*(*(&v649 + 1) + 8 * v279++)];
      }

      while (v277 != v279);
      v277 = [v275 countByEnumeratingWithState:&v649 objects:v910 count:16];
    }

    while (v277);
  }

  v648 = 0u;
  v647 = 0u;
  v646 = 0u;
  v645 = 0u;
  v280 = fromCopy[78];
  v281 = [v280 countByEnumeratingWithState:&v645 objects:v909 count:16];
  if (v281)
  {
    v282 = v281;
    v283 = *v646;
    do
    {
      v284 = 0;
      do
      {
        if (*v646 != v283)
        {
          objc_enumerationMutation(v280);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogRATRedirectionEvent:*(*(&v645 + 1) + 8 * v284++)];
      }

      while (v282 != v284);
      v282 = [v280 countByEnumeratingWithState:&v645 objects:v909 count:16];
    }

    while (v282);
  }

  v644 = 0u;
  v643 = 0u;
  v642 = 0u;
  v641 = 0u;
  v285 = fromCopy[19];
  v286 = [v285 countByEnumeratingWithState:&v641 objects:v908 count:16];
  if (v286)
  {
    v287 = v286;
    v288 = *v642;
    do
    {
      v289 = 0;
      do
      {
        if (*v642 != v288)
        {
          objc_enumerationMutation(v285);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogGSMRRCStateChange:*(*(&v641 + 1) + 8 * v289++)];
      }

      while (v287 != v289);
      v287 = [v285 countByEnumeratingWithState:&v641 objects:v908 count:16];
    }

    while (v287);
  }

  v640 = 0u;
  v639 = 0u;
  v638 = 0u;
  v637 = 0u;
  v290 = fromCopy[10];
  v291 = [v290 countByEnumeratingWithState:&v637 objects:v907 count:16];
  if (v291)
  {
    v292 = v291;
    v293 = *v638;
    do
    {
      v294 = 0;
      do
      {
        if (*v638 != v293)
        {
          objc_enumerationMutation(v290);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogCDMA1XRRCStateChange:*(*(&v637 + 1) + 8 * v294++)];
      }

      while (v292 != v294);
      v292 = [v290 countByEnumeratingWithState:&v637 objects:v907 count:16];
    }

    while (v292);
  }

  v636 = 0u;
  v635 = 0u;
  v634 = 0u;
  v633 = 0u;
  v295 = fromCopy[24];
  v296 = [v295 countByEnumeratingWithState:&v633 objects:v906 count:16];
  if (v296)
  {
    v297 = v296;
    v298 = *v634;
    do
    {
      v299 = 0;
      do
      {
        if (*v634 != v298)
        {
          objc_enumerationMutation(v295);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogHybridRRCStateChange:*(*(&v633 + 1) + 8 * v299++)];
      }

      while (v297 != v299);
      v297 = [v295 countByEnumeratingWithState:&v633 objects:v906 count:16];
    }

    while (v297);
  }

  v632 = 0u;
  v631 = 0u;
  v630 = 0u;
  v629 = 0u;
  v300 = fromCopy[84];
  v301 = [v300 countByEnumeratingWithState:&v629 objects:v905 count:16];
  if (v301)
  {
    v302 = v301;
    v303 = *v630;
    do
    {
      v304 = 0;
      do
      {
        if (*v630 != v303)
        {
          objc_enumerationMutation(v300);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogServiceStateEvent:*(*(&v629 + 1) + 8 * v304++)];
      }

      while (v302 != v304);
      v302 = [v300 countByEnumeratingWithState:&v629 objects:v905 count:16];
    }

    while (v302);
  }

  v628 = 0u;
  v627 = 0u;
  v626 = 0u;
  v625 = 0u;
  v305 = fromCopy[73];
  v306 = [v305 countByEnumeratingWithState:&v625 objects:v904 count:16];
  if (v306)
  {
    v307 = v306;
    v308 = *v626;
    do
    {
      v309 = 0;
      do
      {
        if (*v626 != v308)
        {
          objc_enumerationMutation(v305);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogPLMNScanEvent:*(*(&v625 + 1) + 8 * v309++)];
      }

      while (v307 != v309);
      v307 = [v305 countByEnumeratingWithState:&v625 objects:v904 count:16];
    }

    while (v307);
  }

  v624 = 0u;
  v623 = 0u;
  v622 = 0u;
  v621 = 0u;
  v310 = fromCopy[74];
  v311 = [v310 countByEnumeratingWithState:&v621 objects:v903 count:16];
  if (v311)
  {
    v312 = v311;
    v313 = *v622;
    do
    {
      v314 = 0;
      do
      {
        if (*v622 != v313)
        {
          objc_enumerationMutation(v310);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogPLMNSearchEvent:*(*(&v621 + 1) + 8 * v314++)];
      }

      while (v312 != v314);
      v312 = [v310 countByEnumeratingWithState:&v621 objects:v903 count:16];
    }

    while (v312);
  }

  v620 = 0u;
  v619 = 0u;
  v618 = 0u;
  v617 = 0u;
  v315 = fromCopy[49];
  v316 = [v315 countByEnumeratingWithState:&v617 objects:v902 count:16];
  if (v316)
  {
    v317 = v316;
    v318 = *v618;
    do
    {
      v319 = 0;
      do
      {
        if (*v618 != v318)
        {
          objc_enumerationMutation(v315);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogNRSARRCStateChange:*(*(&v617 + 1) + 8 * v319++)];
      }

      while (v317 != v319);
      v317 = [v315 countByEnumeratingWithState:&v617 objects:v902 count:16];
    }

    while (v317);
  }

  v616 = 0u;
  v615 = 0u;
  v614 = 0u;
  v613 = 0u;
  v320 = fromCopy[47];
  v321 = [v320 countByEnumeratingWithState:&v613 objects:v901 count:16];
  if (v321)
  {
    v322 = v321;
    v323 = *v614;
    do
    {
      v324 = 0;
      do
      {
        if (*v614 != v323)
        {
          objc_enumerationMutation(v320);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogNRNSAENDCEvent:*(*(&v613 + 1) + 8 * v324++)];
      }

      while (v322 != v324);
      v322 = [v320 countByEnumeratingWithState:&v613 objects:v901 count:16];
    }

    while (v322);
  }

  v612 = 0u;
  v611 = 0u;
  v610 = 0u;
  v609 = 0u;
  v325 = fromCopy[41];
  v326 = [v325 countByEnumeratingWithState:&v609 objects:v900 count:16];
  if (v326)
  {
    v327 = v326;
    v328 = *v610;
    do
    {
      v329 = 0;
      do
      {
        if (*v610 != v328)
        {
          objc_enumerationMutation(v325);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogNRCDRXConfig:*(*(&v609 + 1) + 8 * v329++)];
      }

      while (v327 != v329);
      v327 = [v325 countByEnumeratingWithState:&v609 objects:v900 count:16];
    }

    while (v327);
  }

  v608 = 0u;
  v607 = 0u;
  v606 = 0u;
  v605 = 0u;
  v330 = fromCopy[62];
  v331 = [v330 countByEnumeratingWithState:&v605 objects:v899 count:16];
  if (v331)
  {
    v332 = v331;
    v333 = *v606;
    do
    {
      v334 = 0;
      do
      {
        if (*v606 != v333)
        {
          objc_enumerationMutation(v330);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogNRsub6BWP:*(*(&v605 + 1) + 8 * v334++)];
      }

      while (v332 != v334);
      v332 = [v330 countByEnumeratingWithState:&v605 objects:v899 count:16];
    }

    while (v332);
  }

  v604 = 0u;
  v603 = 0u;
  v602 = 0u;
  v601 = 0u;
  v335 = fromCopy[80];
  v336 = [v335 countByEnumeratingWithState:&v601 objects:v898 count:16];
  if (v336)
  {
    v337 = v336;
    v338 = *v602;
    do
    {
      v339 = 0;
      do
      {
        if (*v602 != v338)
        {
          objc_enumerationMutation(v335);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogRFTunerStatsHist:*(*(&v601 + 1) + 8 * v339++)];
      }

      while (v337 != v339);
      v337 = [v335 countByEnumeratingWithState:&v601 objects:v898 count:16];
    }

    while (v337);
  }

  v600 = 0u;
  v599 = 0u;
  v598 = 0u;
  v597 = 0u;
  v340 = fromCopy[64];
  v341 = [v340 countByEnumeratingWithState:&v597 objects:v897 count:16];
  if (v341)
  {
    v342 = v341;
    v343 = *v598;
    do
    {
      v344 = 0;
      do
      {
        if (*v598 != v343)
        {
          objc_enumerationMutation(v340);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogNRsub6CASCCConfigured:*(*(&v597 + 1) + 8 * v344++)];
      }

      while (v342 != v344);
      v342 = [v340 countByEnumeratingWithState:&v597 objects:v897 count:16];
    }

    while (v342);
  }

  v596 = 0u;
  v595 = 0u;
  v594 = 0u;
  v593 = 0u;
  v345 = fromCopy[63];
  v346 = [v345 countByEnumeratingWithState:&v593 objects:v896 count:16];
  if (v346)
  {
    v347 = v346;
    v348 = *v594;
    do
    {
      v349 = 0;
      do
      {
        if (*v594 != v348)
        {
          objc_enumerationMutation(v345);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogNRsub6CASCCActivated:*(*(&v593 + 1) + 8 * v349++)];
      }

      while (v347 != v349);
      v347 = [v345 countByEnumeratingWithState:&v593 objects:v896 count:16];
    }

    while (v347);
  }

  v592 = 0u;
  v591 = 0u;
  v590 = 0u;
  v589 = 0u;
  v350 = fromCopy[69];
  v351 = [v350 countByEnumeratingWithState:&v589 objects:v895 count:16];
  if (v351)
  {
    v352 = v351;
    v353 = *v590;
    do
    {
      v354 = 0;
      do
      {
        if (*v590 != v353)
        {
          objc_enumerationMutation(v350);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogNRsub6RxTx:*(*(&v589 + 1) + 8 * v354++)];
      }

      while (v352 != v354);
      v352 = [v350 countByEnumeratingWithState:&v589 objects:v895 count:16];
    }

    while (v352);
  }

  v588 = 0u;
  v587 = 0u;
  v586 = 0u;
  v585 = 0u;
  v355 = fromCopy[65];
  v356 = [v355 countByEnumeratingWithState:&v585 objects:v894 count:16];
  if (v356)
  {
    v357 = v356;
    v358 = *v586;
    do
    {
      v359 = 0;
      do
      {
        if (*v586 != v358)
        {
          objc_enumerationMutation(v355);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogNRsub6CarrierComponentInfo:*(*(&v585 + 1) + 8 * v359++)];
      }

      while (v357 != v359);
      v357 = [v355 countByEnumeratingWithState:&v585 objects:v894 count:16];
    }

    while (v357);
  }

  v584 = 0u;
  v583 = 0u;
  v582 = 0u;
  v581 = 0u;
  v360 = fromCopy[66];
  v361 = [v360 countByEnumeratingWithState:&v581 objects:v893 count:16];
  if (v361)
  {
    v362 = v361;
    v363 = *v582;
    do
    {
      v364 = 0;
      do
      {
        if (*v582 != v363)
        {
          objc_enumerationMutation(v360);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogNRsub6DLTBS:*(*(&v581 + 1) + 8 * v364++)];
      }

      while (v362 != v364);
      v362 = [v360 countByEnumeratingWithState:&v581 objects:v893 count:16];
    }

    while (v362);
  }

  v580 = 0u;
  v579 = 0u;
  v578 = 0u;
  v577 = 0u;
  v365 = fromCopy[67];
  v366 = [v365 countByEnumeratingWithState:&v577 objects:v892 count:16];
  if (v366)
  {
    v367 = v366;
    v368 = *v578;
    do
    {
      v369 = 0;
      do
      {
        if (*v578 != v368)
        {
          objc_enumerationMutation(v365);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogNRsub6RSRP:*(*(&v577 + 1) + 8 * v369++)];
      }

      while (v367 != v369);
      v367 = [v365 countByEnumeratingWithState:&v577 objects:v892 count:16];
    }

    while (v367);
  }

  v576 = 0u;
  v575 = 0u;
  v574 = 0u;
  v573 = 0u;
  v370 = fromCopy[71];
  v371 = [v370 countByEnumeratingWithState:&v573 objects:v891 count:16];
  if (v371)
  {
    v372 = v371;
    v373 = *v574;
    do
    {
      v374 = 0;
      do
      {
        if (*v574 != v373)
        {
          objc_enumerationMutation(v370);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogNRsub6ULCAState:*(*(&v573 + 1) + 8 * v374++)];
      }

      while (v372 != v374);
      v372 = [v370 countByEnumeratingWithState:&v573 objects:v891 count:16];
    }

    while (v372);
  }

  v572 = 0u;
  v571 = 0u;
  v570 = 0u;
  v569 = 0u;
  v375 = fromCopy[70];
  v376 = [v375 countByEnumeratingWithState:&v569 objects:v890 count:16];
  if (v376)
  {
    v377 = v376;
    v378 = *v570;
    do
    {
      v379 = 0;
      do
      {
        if (*v570 != v378)
        {
          objc_enumerationMutation(v375);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogNRsub6TxPower:*(*(&v569 + 1) + 8 * v379++)];
      }

      while (v377 != v379);
      v377 = [v375 countByEnumeratingWithState:&v569 objects:v890 count:16];
    }

    while (v377);
  }

  v568 = 0u;
  v567 = 0u;
  v566 = 0u;
  v565 = 0u;
  v380 = fromCopy[68];
  v381 = [v380 countByEnumeratingWithState:&v565 objects:v889 count:16];
  if (v381)
  {
    v382 = v381;
    v383 = *v566;
    do
    {
      v384 = 0;
      do
      {
        if (*v566 != v383)
        {
          objc_enumerationMutation(v380);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogNRsub6RxDiversity:*(*(&v565 + 1) + 8 * v384++)];
      }

      while (v382 != v384);
      v382 = [v380 countByEnumeratingWithState:&v565 objects:v889 count:16];
    }

    while (v382);
  }

  v564 = 0u;
  v563 = 0u;
  v562 = 0u;
  v561 = 0u;
  v385 = fromCopy[83];
  v386 = [v385 countByEnumeratingWithState:&v561 objects:v888 count:16];
  if (v386)
  {
    v387 = v386;
    v388 = *v562;
    do
    {
      v389 = 0;
      do
      {
        if (*v562 != v388)
        {
          objc_enumerationMutation(v385);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogSPMI:*(*(&v561 + 1) + 8 * v389++)];
      }

      while (v387 != v389);
      v387 = [v385 countByEnumeratingWithState:&v561 objects:v888 count:16];
    }

    while (v387);
  }

  v560 = 0u;
  v559 = 0u;
  v558 = 0u;
  v557 = 0u;
  v390 = fromCopy[53];
  v391 = [v390 countByEnumeratingWithState:&v557 objects:v887 count:16];
  if (v391)
  {
    v392 = v391;
    v393 = *v558;
    do
    {
      v394 = 0;
      do
      {
        if (*v558 != v393)
        {
          objc_enumerationMutation(v390);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogNRmmWaveBWP:*(*(&v557 + 1) + 8 * v394++)];
      }

      while (v392 != v394);
      v392 = [v390 countByEnumeratingWithState:&v557 objects:v887 count:16];
    }

    while (v392);
  }

  v556 = 0u;
  v555 = 0u;
  v554 = 0u;
  v553 = 0u;
  v395 = fromCopy[51];
  v396 = [v395 countByEnumeratingWithState:&v553 objects:v886 count:16];
  if (v396)
  {
    v397 = v396;
    v398 = *v554;
    do
    {
      v399 = 0;
      do
      {
        if (*v554 != v398)
        {
          objc_enumerationMutation(v395);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogNRmmWaveAntennaPanel:*(*(&v553 + 1) + 8 * v399++)];
      }

      while (v397 != v399);
      v397 = [v395 countByEnumeratingWithState:&v553 objects:v886 count:16];
    }

    while (v397);
  }

  v552 = 0u;
  v551 = 0u;
  v550 = 0u;
  v549 = 0u;
  v400 = fromCopy[43];
  v401 = [v400 countByEnumeratingWithState:&v549 objects:v885 count:16];
  if (v401)
  {
    v402 = v401;
    v403 = *v550;
    do
    {
      v404 = 0;
      do
      {
        if (*v550 != v403)
        {
          objc_enumerationMutation(v400);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogNRFRCoverage:*(*(&v549 + 1) + 8 * v404++)];
      }

      while (v402 != v404);
      v402 = [v400 countByEnumeratingWithState:&v549 objects:v885 count:16];
    }

    while (v402);
  }

  v547 = 0u;
  v548 = 0u;
  v545 = 0u;
  v546 = 0u;
  v405 = fromCopy[54];
  v406 = [v405 countByEnumeratingWithState:&v545 objects:v884 count:16];
  if (v406)
  {
    v407 = v406;
    v408 = *v546;
    do
    {
      v409 = 0;
      do
      {
        if (*v546 != v408)
        {
          objc_enumerationMutation(v405);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogNRmmWaveBeamID:*(*(&v545 + 1) + 8 * v409++)];
      }

      while (v407 != v409);
      v407 = [v405 countByEnumeratingWithState:&v545 objects:v884 count:16];
    }

    while (v407);
  }

  v543 = 0u;
  v544 = 0u;
  v541 = 0u;
  v542 = 0u;
  v410 = fromCopy[82];
  v411 = [v410 countByEnumeratingWithState:&v541 objects:v883 count:16];
  if (v411)
  {
    v412 = v411;
    v413 = *v542;
    do
    {
      v414 = 0;
      do
      {
        if (*v542 != v413)
        {
          objc_enumerationMutation(v410);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogSFTState:*(*(&v541 + 1) + 8 * v414++)];
      }

      while (v412 != v414);
      v412 = [v410 countByEnumeratingWithState:&v541 objects:v883 count:16];
    }

    while (v412);
  }

  v539 = 0u;
  v540 = 0u;
  v537 = 0u;
  v538 = 0u;
  v415 = fromCopy[56];
  v416 = [v415 countByEnumeratingWithState:&v537 objects:v882 count:16];
  if (v416)
  {
    v417 = v416;
    v418 = *v538;
    do
    {
      v419 = 0;
      do
      {
        if (*v538 != v418)
        {
          objc_enumerationMutation(v415);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogNRmmWaveCASCCConfigured:*(*(&v537 + 1) + 8 * v419++)];
      }

      while (v417 != v419);
      v417 = [v415 countByEnumeratingWithState:&v537 objects:v882 count:16];
    }

    while (v417);
  }

  v535 = 0u;
  v536 = 0u;
  v533 = 0u;
  v534 = 0u;
  v420 = fromCopy[55];
  v421 = [v420 countByEnumeratingWithState:&v533 objects:v881 count:16];
  if (v421)
  {
    v422 = v421;
    v423 = *v534;
    do
    {
      v424 = 0;
      do
      {
        if (*v534 != v423)
        {
          objc_enumerationMutation(v420);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogNRmmWaveCASCCActivated:*(*(&v533 + 1) + 8 * v424++)];
      }

      while (v422 != v424);
      v422 = [v420 countByEnumeratingWithState:&v533 objects:v881 count:16];
    }

    while (v422);
  }

  v531 = 0u;
  v532 = 0u;
  v529 = 0u;
  v530 = 0u;
  v425 = fromCopy[59];
  v426 = [v425 countByEnumeratingWithState:&v529 objects:v880 count:16];
  if (v426)
  {
    v427 = v426;
    v428 = *v530;
    do
    {
      v429 = 0;
      do
      {
        if (*v530 != v428)
        {
          objc_enumerationMutation(v425);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogNRmmWaveRxTx:*(*(&v529 + 1) + 8 * v429++)];
      }

      while (v427 != v429);
      v427 = [v425 countByEnumeratingWithState:&v529 objects:v880 count:16];
    }

    while (v427);
  }

  v527 = 0u;
  v528 = 0u;
  v525 = 0u;
  v526 = 0u;
  v430 = fromCopy[57];
  v431 = [v430 countByEnumeratingWithState:&v525 objects:v879 count:16];
  if (v431)
  {
    v432 = v431;
    v433 = *v526;
    do
    {
      v434 = 0;
      do
      {
        if (*v526 != v433)
        {
          objc_enumerationMutation(v430);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogNRmmWaveCarrierComponentInfo:*(*(&v525 + 1) + 8 * v434++)];
      }

      while (v432 != v434);
      v432 = [v430 countByEnumeratingWithState:&v525 objects:v879 count:16];
    }

    while (v432);
  }

  v523 = 0u;
  v524 = 0u;
  v521 = 0u;
  v522 = 0u;
  v435 = fromCopy[58];
  v436 = [v435 countByEnumeratingWithState:&v521 objects:v878 count:16];
  if (v436)
  {
    v437 = v436;
    v438 = *v522;
    do
    {
      v439 = 0;
      do
      {
        if (*v522 != v438)
        {
          objc_enumerationMutation(v435);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogNRmmWaveDLTBS:*(*(&v521 + 1) + 8 * v439++)];
      }

      while (v437 != v439);
      v437 = [v435 countByEnumeratingWithState:&v521 objects:v878 count:16];
    }

    while (v437);
  }

  v519 = 0u;
  v520 = 0u;
  v517 = 0u;
  v518 = 0u;
  v440 = fromCopy[44];
  v441 = [v440 countByEnumeratingWithState:&v517 objects:v877 count:16];
  if (v441)
  {
    v442 = v441;
    v443 = *v518;
    do
    {
      v444 = 0;
      do
      {
        if (*v518 != v443)
        {
          objc_enumerationMutation(v440);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogNRMmWaveRSRP:*(*(&v517 + 1) + 8 * v444++)];
      }

      while (v442 != v444);
      v442 = [v440 countByEnumeratingWithState:&v517 objects:v877 count:16];
    }

    while (v442);
  }

  v515 = 0u;
  v516 = 0u;
  v513 = 0u;
  v514 = 0u;
  v445 = fromCopy[81];
  v446 = [v445 countByEnumeratingWithState:&v513 objects:v876 count:16];
  if (v446)
  {
    v447 = v446;
    v448 = *v514;
    do
    {
      v449 = 0;
      do
      {
        if (*v514 != v448)
        {
          objc_enumerationMutation(v445);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogSFTRxTx:*(*(&v513 + 1) + 8 * v449++)];
      }

      while (v447 != v449);
      v447 = [v445 countByEnumeratingWithState:&v513 objects:v876 count:16];
    }

    while (v447);
  }

  v511 = 0u;
  v512 = 0u;
  v509 = 0u;
  v510 = 0u;
  v450 = fromCopy[45];
  v451 = [v450 countByEnumeratingWithState:&v509 objects:v875 count:16];
  if (v451)
  {
    v452 = v451;
    v453 = *v510;
    do
    {
      v454 = 0;
      do
      {
        if (*v510 != v453)
        {
          objc_enumerationMutation(v450);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogNRMmWaveTxPower:*(*(&v509 + 1) + 8 * v454++)];
      }

      while (v452 != v454);
      v452 = [v450 countByEnumeratingWithState:&v509 objects:v875 count:16];
    }

    while (v452);
  }

  v507 = 0u;
  v508 = 0u;
  v505 = 0u;
  v506 = 0u;
  v455 = fromCopy[46];
  v456 = [v455 countByEnumeratingWithState:&v505 objects:v874 count:16];
  if (v456)
  {
    v457 = v456;
    v458 = *v506;
    do
    {
      v459 = 0;
      do
      {
        if (*v506 != v458)
        {
          objc_enumerationMutation(v455);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogNRMmWaveULCAState:*(*(&v505 + 1) + 8 * v459++)];
      }

      while (v457 != v459);
      v457 = [v455 countByEnumeratingWithState:&v505 objects:v874 count:16];
    }

    while (v457);
  }

  v503 = 0u;
  v504 = 0u;
  v501 = 0u;
  v502 = 0u;
  v460 = fromCopy[61];
  v461 = [v460 countByEnumeratingWithState:&v501 objects:v873 count:16];
  if (v461)
  {
    v462 = v461;
    v463 = *v502;
    do
    {
      v464 = 0;
      do
      {
        if (*v502 != v463)
        {
          objc_enumerationMutation(v460);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogNRsub6BWPSCC:*(*(&v501 + 1) + 8 * v464++)];
      }

      while (v462 != v464);
      v462 = [v460 countByEnumeratingWithState:&v501 objects:v873 count:16];
    }

    while (v462);
  }

  v499 = 0u;
  v500 = 0u;
  v497 = 0u;
  v498 = 0u;
  v465 = fromCopy[52];
  v466 = [v465 countByEnumeratingWithState:&v497 objects:v872 count:16];
  if (v466)
  {
    v467 = v466;
    v468 = *v498;
    do
    {
      v469 = 0;
      do
      {
        if (*v498 != v468)
        {
          objc_enumerationMutation(v465);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogNRmmWaveBWPSCC:*(*(&v497 + 1) + 8 * v469++)];
      }

      while (v467 != v469);
      v467 = [v465 countByEnumeratingWithState:&v497 objects:v872 count:16];
    }

    while (v467);
  }

  v495 = 0u;
  v496 = 0u;
  v493 = 0u;
  v494 = 0u;
  v470 = fromCopy[42];
  v471 = [v470 countByEnumeratingWithState:&v493 objects:v871 count:16];
  if (v471)
  {
    v472 = v471;
    v473 = *v494;
    do
    {
      v474 = 0;
      do
      {
        if (*v494 != v473)
        {
          objc_enumerationMutation(v470);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogNRDCEvent:*(*(&v493 + 1) + 8 * v474++)];
      }

      while (v472 != v474);
      v472 = [v470 countByEnumeratingWithState:&v493 objects:v871 count:16];
    }

    while (v472);
  }

  v491 = 0u;
  v492 = 0u;
  v489 = 0u;
  v490 = 0u;
  v475 = fromCopy[94];
  v476 = [v475 countByEnumeratingWithState:&v489 objects:v870 count:16];
  if (v476)
  {
    v477 = v476;
    v478 = *v490;
    do
    {
      v479 = 0;
      do
      {
        if (*v490 != v478)
        {
          objc_enumerationMutation(v475);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogWUS:*(*(&v489 + 1) + 8 * v479++)];
      }

      while (v477 != v479);
      v477 = [v475 countByEnumeratingWithState:&v489 objects:v870 count:16];
    }

    while (v477);
  }

  v487 = 0u;
  v488 = 0u;
  v485 = 0u;
  v486 = 0u;
  v480 = fromCopy[60];
  v481 = [v480 countByEnumeratingWithState:&v485 objects:v869 count:16];
  if (v481)
  {
    v482 = v481;
    v483 = *v486;
    do
    {
      v484 = 0;
      do
      {
        if (*v486 != v483)
        {
          objc_enumerationMutation(v480);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogNRsub6BWPSA:*(*(&v485 + 1) + 8 * v484++), v485];
      }

      while (v482 != v484);
      v482 = [v480 countByEnumeratingWithState:&v485 objects:v869 count:16];
    }

    while (v482);
  }
}

@end