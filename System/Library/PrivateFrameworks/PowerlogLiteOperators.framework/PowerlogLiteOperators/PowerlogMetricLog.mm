@interface PowerlogMetricLog
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addKCellularCdma1XConnectionHist:(id)hist;
- (void)addKCellularCdma1XProtocolStackStateHist:(id)hist;
- (void)addKCellularCdma1XRrState:(id)state;
- (void)addKCellularCdma1XRxDiversityHist:(id)hist;
- (void)addKCellularCdma1XServingCellRx0EcIoHist:(id)hist;
- (void)addKCellularCdma1XServingCellRx0RssiHist:(id)hist;
- (void)addKCellularCdma1XServingCellRx1EcIoHist:(id)hist;
- (void)addKCellularCdma1XServingCellRx1RssiHist:(id)hist;
- (void)addKCellularCdma1XTxPowerHist:(id)hist;
- (void)addKCellularCdmaEvdoProtocolStackStateHist:(id)hist;
- (void)addKCellularCdmaEvdoRrState:(id)state;
- (void)addKCellularCdmaEvdoRxDiversityHist:(id)hist;
- (void)addKCellularCdmaEvdoServingCellRx0EcIoHist:(id)hist;
- (void)addKCellularCdmaEvdoServingCellRx0RssiHist:(id)hist;
- (void)addKCellularCdmaEvdoServingCellRx1EcIoHist:(id)hist;
- (void)addKCellularCdmaEvdoServingCellRx1RssiHist:(id)hist;
- (void)addKCellularCdmaEvdoTxPowerHist:(id)hist;
- (void)addKCellularCellPlmnSearchCount:(id)count;
- (void)addKCellularCellPlmnSearchHist:(id)hist;
- (void)addKCellularDownlinkIpPacketFilterStatus:(id)status;
- (void)addKCellularDvfsStats:(id)stats;
- (void)addKCellularFwCoreStats:(id)stats;
- (void)addKCellularGsmConnectedModeHist:(id)hist;
- (void)addKCellularGsmL1State:(id)state;
- (void)addKCellularGsmServingCellRssiHist:(id)hist;
- (void)addKCellularGsmServingCellSnrHist:(id)hist;
- (void)addKCellularGsmTxPowerHist:(id)hist;
- (void)addKCellularLqmStateChange:(id)change;
- (void)addKCellularLteAdvancedRxStateHist:(id)hist;
- (void)addKCellularLteCdrxConfig:(id)config;
- (void)addKCellularLteComponentCarrierInfo:(id)info;
- (void)addKCellularLteDlSccStateHist:(id)hist;
- (void)addKCellularLteDlSccStateHistV3:(id)v3;
- (void)addKCellularLteFwDuplexMode:(id)mode;
- (void)addKCellularLtePagingCycle:(id)cycle;
- (void)addKCellularLtePdcchStateHist:(id)hist;
- (void)addKCellularLtePdcchStateStats:(id)stats;
- (void)addKCellularLteRadioLinkFailure:(id)failure;
- (void)addKCellularLteRrcState:(id)state;
- (void)addKCellularLteRxDiversityHist:(id)hist;
- (void)addKCellularLteRxTxStateHist:(id)hist;
- (void)addKCellularLteServingCellRsrpHist:(id)hist;
- (void)addKCellularLteServingCellSinrHist:(id)hist;
- (void)addKCellularLteSleepStateHist:(id)hist;
- (void)addKCellularLteTdsGsmHwStats:(id)stats;
- (void)addKCellularLteTotalDlTbsHist:(id)hist;
- (void)addKCellularLteTxPowerHist:(id)hist;
- (void)addKCellularLteUlSccStateHist:(id)hist;
- (void)addKCellularLteWcdmaGsmHwStats:(id)stats;
- (void)addKCellularLteWcdmaTdsHwStats:(id)stats;
- (void)addKCellularPerClientProfileTriggerCount:(id)count;
- (void)addKCellularPeripheralStats:(id)stats;
- (void)addKCellularPmicHwStats:(id)stats;
- (void)addKCellularPmuAverageCurrent:(id)current;
- (void)addKCellularProtocolStackCpuStats:(id)stats;
- (void)addKCellularProtocolStackPowerState:(id)state;
- (void)addKCellularProtocolStackState:(id)state;
- (void)addKCellularProtocolStackStateHist2:(id)hist2;
- (void)addKCellularProtocolStackStateHist:(id)hist;
- (void)addKCellularServiceLost:(id)lost;
- (void)addKCellularServingCellRfBandHist:(id)hist;
- (void)addKCellularTdsL1State:(id)state;
- (void)addKCellularTdsRabModeHist:(id)hist;
- (void)addKCellularTdsRabTypeHist:(id)hist;
- (void)addKCellularTdsRrcState:(id)state;
- (void)addKCellularTdsRxDiversityHist:(id)hist;
- (void)addKCellularTdsServingCellRx0RscpHist:(id)hist;
- (void)addKCellularTdsServingCellRx0RssiHist:(id)hist;
- (void)addKCellularTdsServingCellRx1RscpHist:(id)hist;
- (void)addKCellularTdsServingCellRx1RssiHist:(id)hist;
- (void)addKCellularTdsTxPowerHist:(id)hist;
- (void)addKCellularWcdmaCarrierStatusHist:(id)hist;
- (void)addKCellularWcdmaCpcStat:(id)stat;
- (void)addKCellularWcdmaDataInactivityBeforeIdle:(id)idle;
- (void)addKCellularWcdmaIdleToConnectedUserData:(id)data;
- (void)addKCellularWcdmaL1State:(id)state;
- (void)addKCellularWcdmaRabModeHist:(id)hist;
- (void)addKCellularWcdmaRabStatus:(id)status;
- (void)addKCellularWcdmaRabTypeHist:(id)hist;
- (void)addKCellularWcdmaReceiverStatusOnC0Hist:(id)hist;
- (void)addKCellularWcdmaReceiverStatusOnC1Hist:(id)hist;
- (void)addKCellularWcdmaRrcConfiguration:(id)configuration;
- (void)addKCellularWcdmaRrcConnectionState:(id)state;
- (void)addKCellularWcdmaRxDiversityHist:(id)hist;
- (void)addKCellularWcdmaServingCellRx0EcNoHist:(id)hist;
- (void)addKCellularWcdmaServingCellRx0RssiHist:(id)hist;
- (void)addKCellularWcdmaServingCellRx1EcNoHist:(id)hist;
- (void)addKCellularWcdmaServingCellRx1RssiHist:(id)hist;
- (void)addKCellularWcdmaTxPowerHist:(id)hist;
- (void)addKCellularWcdmaVadHist:(id)hist;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PowerlogMetricLog

- (void)addKCellularPerClientProfileTriggerCount:(id)count
{
  countCopy = count;
  kCellularPerClientProfileTriggerCounts = self->_kCellularPerClientProfileTriggerCounts;
  v8 = countCopy;
  if (!kCellularPerClientProfileTriggerCounts)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularPerClientProfileTriggerCounts;
    self->_kCellularPerClientProfileTriggerCounts = v6;

    countCopy = v8;
    kCellularPerClientProfileTriggerCounts = self->_kCellularPerClientProfileTriggerCounts;
  }

  [(NSMutableArray *)kCellularPerClientProfileTriggerCounts addObject:countCopy];
}

- (void)addKCellularProtocolStackCpuStats:(id)stats
{
  statsCopy = stats;
  kCellularProtocolStackCpuStats = self->_kCellularProtocolStackCpuStats;
  v8 = statsCopy;
  if (!kCellularProtocolStackCpuStats)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularProtocolStackCpuStats;
    self->_kCellularProtocolStackCpuStats = v6;

    statsCopy = v8;
    kCellularProtocolStackCpuStats = self->_kCellularProtocolStackCpuStats;
  }

  [(NSMutableArray *)kCellularProtocolStackCpuStats addObject:statsCopy];
}

- (void)addKCellularPeripheralStats:(id)stats
{
  statsCopy = stats;
  kCellularPeripheralStats = self->_kCellularPeripheralStats;
  v8 = statsCopy;
  if (!kCellularPeripheralStats)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularPeripheralStats;
    self->_kCellularPeripheralStats = v6;

    statsCopy = v8;
    kCellularPeripheralStats = self->_kCellularPeripheralStats;
  }

  [(NSMutableArray *)kCellularPeripheralStats addObject:statsCopy];
}

- (void)addKCellularDvfsStats:(id)stats
{
  statsCopy = stats;
  kCellularDvfsStats = self->_kCellularDvfsStats;
  v8 = statsCopy;
  if (!kCellularDvfsStats)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularDvfsStats;
    self->_kCellularDvfsStats = v6;

    statsCopy = v8;
    kCellularDvfsStats = self->_kCellularDvfsStats;
  }

  [(NSMutableArray *)kCellularDvfsStats addObject:statsCopy];
}

- (void)addKCellularLteWcdmaGsmHwStats:(id)stats
{
  statsCopy = stats;
  kCellularLteWcdmaGsmHwStats = self->_kCellularLteWcdmaGsmHwStats;
  v8 = statsCopy;
  if (!kCellularLteWcdmaGsmHwStats)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularLteWcdmaGsmHwStats;
    self->_kCellularLteWcdmaGsmHwStats = v6;

    statsCopy = v8;
    kCellularLteWcdmaGsmHwStats = self->_kCellularLteWcdmaGsmHwStats;
  }

  [(NSMutableArray *)kCellularLteWcdmaGsmHwStats addObject:statsCopy];
}

- (void)addKCellularLteTdsGsmHwStats:(id)stats
{
  statsCopy = stats;
  kCellularLteTdsGsmHwStats = self->_kCellularLteTdsGsmHwStats;
  v8 = statsCopy;
  if (!kCellularLteTdsGsmHwStats)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularLteTdsGsmHwStats;
    self->_kCellularLteTdsGsmHwStats = v6;

    statsCopy = v8;
    kCellularLteTdsGsmHwStats = self->_kCellularLteTdsGsmHwStats;
  }

  [(NSMutableArray *)kCellularLteTdsGsmHwStats addObject:statsCopy];
}

- (void)addKCellularPmuAverageCurrent:(id)current
{
  currentCopy = current;
  kCellularPmuAverageCurrents = self->_kCellularPmuAverageCurrents;
  v8 = currentCopy;
  if (!kCellularPmuAverageCurrents)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularPmuAverageCurrents;
    self->_kCellularPmuAverageCurrents = v6;

    currentCopy = v8;
    kCellularPmuAverageCurrents = self->_kCellularPmuAverageCurrents;
  }

  [(NSMutableArray *)kCellularPmuAverageCurrents addObject:currentCopy];
}

- (void)addKCellularFwCoreStats:(id)stats
{
  statsCopy = stats;
  kCellularFwCoreStats = self->_kCellularFwCoreStats;
  v8 = statsCopy;
  if (!kCellularFwCoreStats)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularFwCoreStats;
    self->_kCellularFwCoreStats = v6;

    statsCopy = v8;
    kCellularFwCoreStats = self->_kCellularFwCoreStats;
  }

  [(NSMutableArray *)kCellularFwCoreStats addObject:statsCopy];
}

- (void)addKCellularLteWcdmaTdsHwStats:(id)stats
{
  statsCopy = stats;
  kCellularLteWcdmaTdsHwStats = self->_kCellularLteWcdmaTdsHwStats;
  v8 = statsCopy;
  if (!kCellularLteWcdmaTdsHwStats)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularLteWcdmaTdsHwStats;
    self->_kCellularLteWcdmaTdsHwStats = v6;

    statsCopy = v8;
    kCellularLteWcdmaTdsHwStats = self->_kCellularLteWcdmaTdsHwStats;
  }

  [(NSMutableArray *)kCellularLteWcdmaTdsHwStats addObject:statsCopy];
}

- (void)addKCellularPmicHwStats:(id)stats
{
  statsCopy = stats;
  kCellularPmicHwStats = self->_kCellularPmicHwStats;
  v8 = statsCopy;
  if (!kCellularPmicHwStats)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularPmicHwStats;
    self->_kCellularPmicHwStats = v6;

    statsCopy = v8;
    kCellularPmicHwStats = self->_kCellularPmicHwStats;
  }

  [(NSMutableArray *)kCellularPmicHwStats addObject:statsCopy];
}

- (void)addKCellularGsmServingCellRssiHist:(id)hist
{
  histCopy = hist;
  kCellularGsmServingCellRssiHists = self->_kCellularGsmServingCellRssiHists;
  v8 = histCopy;
  if (!kCellularGsmServingCellRssiHists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularGsmServingCellRssiHists;
    self->_kCellularGsmServingCellRssiHists = v6;

    histCopy = v8;
    kCellularGsmServingCellRssiHists = self->_kCellularGsmServingCellRssiHists;
  }

  [(NSMutableArray *)kCellularGsmServingCellRssiHists addObject:histCopy];
}

- (void)addKCellularGsmServingCellSnrHist:(id)hist
{
  histCopy = hist;
  kCellularGsmServingCellSnrHists = self->_kCellularGsmServingCellSnrHists;
  v8 = histCopy;
  if (!kCellularGsmServingCellSnrHists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularGsmServingCellSnrHists;
    self->_kCellularGsmServingCellSnrHists = v6;

    histCopy = v8;
    kCellularGsmServingCellSnrHists = self->_kCellularGsmServingCellSnrHists;
  }

  [(NSMutableArray *)kCellularGsmServingCellSnrHists addObject:histCopy];
}

- (void)addKCellularGsmTxPowerHist:(id)hist
{
  histCopy = hist;
  kCellularGsmTxPowerHists = self->_kCellularGsmTxPowerHists;
  v8 = histCopy;
  if (!kCellularGsmTxPowerHists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularGsmTxPowerHists;
    self->_kCellularGsmTxPowerHists = v6;

    histCopy = v8;
    kCellularGsmTxPowerHists = self->_kCellularGsmTxPowerHists;
  }

  [(NSMutableArray *)kCellularGsmTxPowerHists addObject:histCopy];
}

- (void)addKCellularGsmConnectedModeHist:(id)hist
{
  histCopy = hist;
  kCellularGsmConnectedModeHists = self->_kCellularGsmConnectedModeHists;
  v8 = histCopy;
  if (!kCellularGsmConnectedModeHists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularGsmConnectedModeHists;
    self->_kCellularGsmConnectedModeHists = v6;

    histCopy = v8;
    kCellularGsmConnectedModeHists = self->_kCellularGsmConnectedModeHists;
  }

  [(NSMutableArray *)kCellularGsmConnectedModeHists addObject:histCopy];
}

- (void)addKCellularGsmL1State:(id)state
{
  stateCopy = state;
  kCellularGsmL1States = self->_kCellularGsmL1States;
  v8 = stateCopy;
  if (!kCellularGsmL1States)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularGsmL1States;
    self->_kCellularGsmL1States = v6;

    stateCopy = v8;
    kCellularGsmL1States = self->_kCellularGsmL1States;
  }

  [(NSMutableArray *)kCellularGsmL1States addObject:stateCopy];
}

- (void)addKCellularWcdmaCpcStat:(id)stat
{
  statCopy = stat;
  kCellularWcdmaCpcStats = self->_kCellularWcdmaCpcStats;
  v8 = statCopy;
  if (!kCellularWcdmaCpcStats)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularWcdmaCpcStats;
    self->_kCellularWcdmaCpcStats = v6;

    statCopy = v8;
    kCellularWcdmaCpcStats = self->_kCellularWcdmaCpcStats;
  }

  [(NSMutableArray *)kCellularWcdmaCpcStats addObject:statCopy];
}

- (void)addKCellularWcdmaRxDiversityHist:(id)hist
{
  histCopy = hist;
  kCellularWcdmaRxDiversityHists = self->_kCellularWcdmaRxDiversityHists;
  v8 = histCopy;
  if (!kCellularWcdmaRxDiversityHists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularWcdmaRxDiversityHists;
    self->_kCellularWcdmaRxDiversityHists = v6;

    histCopy = v8;
    kCellularWcdmaRxDiversityHists = self->_kCellularWcdmaRxDiversityHists;
  }

  [(NSMutableArray *)kCellularWcdmaRxDiversityHists addObject:histCopy];
}

- (void)addKCellularWcdmaServingCellRx0RssiHist:(id)hist
{
  histCopy = hist;
  kCellularWcdmaServingCellRx0RssiHists = self->_kCellularWcdmaServingCellRx0RssiHists;
  v8 = histCopy;
  if (!kCellularWcdmaServingCellRx0RssiHists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularWcdmaServingCellRx0RssiHists;
    self->_kCellularWcdmaServingCellRx0RssiHists = v6;

    histCopy = v8;
    kCellularWcdmaServingCellRx0RssiHists = self->_kCellularWcdmaServingCellRx0RssiHists;
  }

  [(NSMutableArray *)kCellularWcdmaServingCellRx0RssiHists addObject:histCopy];
}

- (void)addKCellularWcdmaServingCellRx1RssiHist:(id)hist
{
  histCopy = hist;
  kCellularWcdmaServingCellRx1RssiHists = self->_kCellularWcdmaServingCellRx1RssiHists;
  v8 = histCopy;
  if (!kCellularWcdmaServingCellRx1RssiHists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularWcdmaServingCellRx1RssiHists;
    self->_kCellularWcdmaServingCellRx1RssiHists = v6;

    histCopy = v8;
    kCellularWcdmaServingCellRx1RssiHists = self->_kCellularWcdmaServingCellRx1RssiHists;
  }

  [(NSMutableArray *)kCellularWcdmaServingCellRx1RssiHists addObject:histCopy];
}

- (void)addKCellularWcdmaServingCellRx0EcNoHist:(id)hist
{
  histCopy = hist;
  kCellularWcdmaServingCellRx0EcNoHists = self->_kCellularWcdmaServingCellRx0EcNoHists;
  v8 = histCopy;
  if (!kCellularWcdmaServingCellRx0EcNoHists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularWcdmaServingCellRx0EcNoHists;
    self->_kCellularWcdmaServingCellRx0EcNoHists = v6;

    histCopy = v8;
    kCellularWcdmaServingCellRx0EcNoHists = self->_kCellularWcdmaServingCellRx0EcNoHists;
  }

  [(NSMutableArray *)kCellularWcdmaServingCellRx0EcNoHists addObject:histCopy];
}

- (void)addKCellularWcdmaServingCellRx1EcNoHist:(id)hist
{
  histCopy = hist;
  kCellularWcdmaServingCellRx1EcNoHists = self->_kCellularWcdmaServingCellRx1EcNoHists;
  v8 = histCopy;
  if (!kCellularWcdmaServingCellRx1EcNoHists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularWcdmaServingCellRx1EcNoHists;
    self->_kCellularWcdmaServingCellRx1EcNoHists = v6;

    histCopy = v8;
    kCellularWcdmaServingCellRx1EcNoHists = self->_kCellularWcdmaServingCellRx1EcNoHists;
  }

  [(NSMutableArray *)kCellularWcdmaServingCellRx1EcNoHists addObject:histCopy];
}

- (void)addKCellularWcdmaTxPowerHist:(id)hist
{
  histCopy = hist;
  kCellularWcdmaTxPowerHists = self->_kCellularWcdmaTxPowerHists;
  v8 = histCopy;
  if (!kCellularWcdmaTxPowerHists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularWcdmaTxPowerHists;
    self->_kCellularWcdmaTxPowerHists = v6;

    histCopy = v8;
    kCellularWcdmaTxPowerHists = self->_kCellularWcdmaTxPowerHists;
  }

  [(NSMutableArray *)kCellularWcdmaTxPowerHists addObject:histCopy];
}

- (void)addKCellularWcdmaReceiverStatusOnC0Hist:(id)hist
{
  histCopy = hist;
  kCellularWcdmaReceiverStatusOnC0Hists = self->_kCellularWcdmaReceiverStatusOnC0Hists;
  v8 = histCopy;
  if (!kCellularWcdmaReceiverStatusOnC0Hists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularWcdmaReceiverStatusOnC0Hists;
    self->_kCellularWcdmaReceiverStatusOnC0Hists = v6;

    histCopy = v8;
    kCellularWcdmaReceiverStatusOnC0Hists = self->_kCellularWcdmaReceiverStatusOnC0Hists;
  }

  [(NSMutableArray *)kCellularWcdmaReceiverStatusOnC0Hists addObject:histCopy];
}

- (void)addKCellularWcdmaReceiverStatusOnC1Hist:(id)hist
{
  histCopy = hist;
  kCellularWcdmaReceiverStatusOnC1Hists = self->_kCellularWcdmaReceiverStatusOnC1Hists;
  v8 = histCopy;
  if (!kCellularWcdmaReceiverStatusOnC1Hists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularWcdmaReceiverStatusOnC1Hists;
    self->_kCellularWcdmaReceiverStatusOnC1Hists = v6;

    histCopy = v8;
    kCellularWcdmaReceiverStatusOnC1Hists = self->_kCellularWcdmaReceiverStatusOnC1Hists;
  }

  [(NSMutableArray *)kCellularWcdmaReceiverStatusOnC1Hists addObject:histCopy];
}

- (void)addKCellularWcdmaCarrierStatusHist:(id)hist
{
  histCopy = hist;
  kCellularWcdmaCarrierStatusHists = self->_kCellularWcdmaCarrierStatusHists;
  v8 = histCopy;
  if (!kCellularWcdmaCarrierStatusHists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularWcdmaCarrierStatusHists;
    self->_kCellularWcdmaCarrierStatusHists = v6;

    histCopy = v8;
    kCellularWcdmaCarrierStatusHists = self->_kCellularWcdmaCarrierStatusHists;
  }

  [(NSMutableArray *)kCellularWcdmaCarrierStatusHists addObject:histCopy];
}

- (void)addKCellularWcdmaRabModeHist:(id)hist
{
  histCopy = hist;
  kCellularWcdmaRabModeHists = self->_kCellularWcdmaRabModeHists;
  v8 = histCopy;
  if (!kCellularWcdmaRabModeHists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularWcdmaRabModeHists;
    self->_kCellularWcdmaRabModeHists = v6;

    histCopy = v8;
    kCellularWcdmaRabModeHists = self->_kCellularWcdmaRabModeHists;
  }

  [(NSMutableArray *)kCellularWcdmaRabModeHists addObject:histCopy];
}

- (void)addKCellularWcdmaRabTypeHist:(id)hist
{
  histCopy = hist;
  kCellularWcdmaRabTypeHists = self->_kCellularWcdmaRabTypeHists;
  v8 = histCopy;
  if (!kCellularWcdmaRabTypeHists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularWcdmaRabTypeHists;
    self->_kCellularWcdmaRabTypeHists = v6;

    histCopy = v8;
    kCellularWcdmaRabTypeHists = self->_kCellularWcdmaRabTypeHists;
  }

  [(NSMutableArray *)kCellularWcdmaRabTypeHists addObject:histCopy];
}

- (void)addKCellularWcdmaRrcConnectionState:(id)state
{
  stateCopy = state;
  kCellularWcdmaRrcConnectionStates = self->_kCellularWcdmaRrcConnectionStates;
  v8 = stateCopy;
  if (!kCellularWcdmaRrcConnectionStates)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularWcdmaRrcConnectionStates;
    self->_kCellularWcdmaRrcConnectionStates = v6;

    stateCopy = v8;
    kCellularWcdmaRrcConnectionStates = self->_kCellularWcdmaRrcConnectionStates;
  }

  [(NSMutableArray *)kCellularWcdmaRrcConnectionStates addObject:stateCopy];
}

- (void)addKCellularWcdmaRrcConfiguration:(id)configuration
{
  configurationCopy = configuration;
  kCellularWcdmaRrcConfigurations = self->_kCellularWcdmaRrcConfigurations;
  v8 = configurationCopy;
  if (!kCellularWcdmaRrcConfigurations)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularWcdmaRrcConfigurations;
    self->_kCellularWcdmaRrcConfigurations = v6;

    configurationCopy = v8;
    kCellularWcdmaRrcConfigurations = self->_kCellularWcdmaRrcConfigurations;
  }

  [(NSMutableArray *)kCellularWcdmaRrcConfigurations addObject:configurationCopy];
}

- (void)addKCellularWcdmaRabStatus:(id)status
{
  statusCopy = status;
  kCellularWcdmaRabStatus = self->_kCellularWcdmaRabStatus;
  v8 = statusCopy;
  if (!kCellularWcdmaRabStatus)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularWcdmaRabStatus;
    self->_kCellularWcdmaRabStatus = v6;

    statusCopy = v8;
    kCellularWcdmaRabStatus = self->_kCellularWcdmaRabStatus;
  }

  [(NSMutableArray *)kCellularWcdmaRabStatus addObject:statusCopy];
}

- (void)addKCellularWcdmaL1State:(id)state
{
  stateCopy = state;
  kCellularWcdmaL1States = self->_kCellularWcdmaL1States;
  v8 = stateCopy;
  if (!kCellularWcdmaL1States)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularWcdmaL1States;
    self->_kCellularWcdmaL1States = v6;

    stateCopy = v8;
    kCellularWcdmaL1States = self->_kCellularWcdmaL1States;
  }

  [(NSMutableArray *)kCellularWcdmaL1States addObject:stateCopy];
}

- (void)addKCellularWcdmaDataInactivityBeforeIdle:(id)idle
{
  idleCopy = idle;
  kCellularWcdmaDataInactivityBeforeIdles = self->_kCellularWcdmaDataInactivityBeforeIdles;
  v8 = idleCopy;
  if (!kCellularWcdmaDataInactivityBeforeIdles)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularWcdmaDataInactivityBeforeIdles;
    self->_kCellularWcdmaDataInactivityBeforeIdles = v6;

    idleCopy = v8;
    kCellularWcdmaDataInactivityBeforeIdles = self->_kCellularWcdmaDataInactivityBeforeIdles;
  }

  [(NSMutableArray *)kCellularWcdmaDataInactivityBeforeIdles addObject:idleCopy];
}

- (void)addKCellularWcdmaIdleToConnectedUserData:(id)data
{
  dataCopy = data;
  kCellularWcdmaIdleToConnectedUserDatas = self->_kCellularWcdmaIdleToConnectedUserDatas;
  v8 = dataCopy;
  if (!kCellularWcdmaIdleToConnectedUserDatas)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularWcdmaIdleToConnectedUserDatas;
    self->_kCellularWcdmaIdleToConnectedUserDatas = v6;

    dataCopy = v8;
    kCellularWcdmaIdleToConnectedUserDatas = self->_kCellularWcdmaIdleToConnectedUserDatas;
  }

  [(NSMutableArray *)kCellularWcdmaIdleToConnectedUserDatas addObject:dataCopy];
}

- (void)addKCellularWcdmaVadHist:(id)hist
{
  histCopy = hist;
  kCellularWcdmaVadHists = self->_kCellularWcdmaVadHists;
  v8 = histCopy;
  if (!kCellularWcdmaVadHists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularWcdmaVadHists;
    self->_kCellularWcdmaVadHists = v6;

    histCopy = v8;
    kCellularWcdmaVadHists = self->_kCellularWcdmaVadHists;
  }

  [(NSMutableArray *)kCellularWcdmaVadHists addObject:histCopy];
}

- (void)addKCellularTdsRxDiversityHist:(id)hist
{
  histCopy = hist;
  kCellularTdsRxDiversityHists = self->_kCellularTdsRxDiversityHists;
  v8 = histCopy;
  if (!kCellularTdsRxDiversityHists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularTdsRxDiversityHists;
    self->_kCellularTdsRxDiversityHists = v6;

    histCopy = v8;
    kCellularTdsRxDiversityHists = self->_kCellularTdsRxDiversityHists;
  }

  [(NSMutableArray *)kCellularTdsRxDiversityHists addObject:histCopy];
}

- (void)addKCellularTdsServingCellRx0RssiHist:(id)hist
{
  histCopy = hist;
  kCellularTdsServingCellRx0RssiHists = self->_kCellularTdsServingCellRx0RssiHists;
  v8 = histCopy;
  if (!kCellularTdsServingCellRx0RssiHists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularTdsServingCellRx0RssiHists;
    self->_kCellularTdsServingCellRx0RssiHists = v6;

    histCopy = v8;
    kCellularTdsServingCellRx0RssiHists = self->_kCellularTdsServingCellRx0RssiHists;
  }

  [(NSMutableArray *)kCellularTdsServingCellRx0RssiHists addObject:histCopy];
}

- (void)addKCellularTdsServingCellRx1RssiHist:(id)hist
{
  histCopy = hist;
  kCellularTdsServingCellRx1RssiHists = self->_kCellularTdsServingCellRx1RssiHists;
  v8 = histCopy;
  if (!kCellularTdsServingCellRx1RssiHists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularTdsServingCellRx1RssiHists;
    self->_kCellularTdsServingCellRx1RssiHists = v6;

    histCopy = v8;
    kCellularTdsServingCellRx1RssiHists = self->_kCellularTdsServingCellRx1RssiHists;
  }

  [(NSMutableArray *)kCellularTdsServingCellRx1RssiHists addObject:histCopy];
}

- (void)addKCellularTdsServingCellRx0RscpHist:(id)hist
{
  histCopy = hist;
  kCellularTdsServingCellRx0RscpHists = self->_kCellularTdsServingCellRx0RscpHists;
  v8 = histCopy;
  if (!kCellularTdsServingCellRx0RscpHists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularTdsServingCellRx0RscpHists;
    self->_kCellularTdsServingCellRx0RscpHists = v6;

    histCopy = v8;
    kCellularTdsServingCellRx0RscpHists = self->_kCellularTdsServingCellRx0RscpHists;
  }

  [(NSMutableArray *)kCellularTdsServingCellRx0RscpHists addObject:histCopy];
}

- (void)addKCellularTdsServingCellRx1RscpHist:(id)hist
{
  histCopy = hist;
  kCellularTdsServingCellRx1RscpHists = self->_kCellularTdsServingCellRx1RscpHists;
  v8 = histCopy;
  if (!kCellularTdsServingCellRx1RscpHists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularTdsServingCellRx1RscpHists;
    self->_kCellularTdsServingCellRx1RscpHists = v6;

    histCopy = v8;
    kCellularTdsServingCellRx1RscpHists = self->_kCellularTdsServingCellRx1RscpHists;
  }

  [(NSMutableArray *)kCellularTdsServingCellRx1RscpHists addObject:histCopy];
}

- (void)addKCellularTdsTxPowerHist:(id)hist
{
  histCopy = hist;
  kCellularTdsTxPowerHists = self->_kCellularTdsTxPowerHists;
  v8 = histCopy;
  if (!kCellularTdsTxPowerHists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularTdsTxPowerHists;
    self->_kCellularTdsTxPowerHists = v6;

    histCopy = v8;
    kCellularTdsTxPowerHists = self->_kCellularTdsTxPowerHists;
  }

  [(NSMutableArray *)kCellularTdsTxPowerHists addObject:histCopy];
}

- (void)addKCellularTdsRabModeHist:(id)hist
{
  histCopy = hist;
  kCellularTdsRabModeHists = self->_kCellularTdsRabModeHists;
  v8 = histCopy;
  if (!kCellularTdsRabModeHists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularTdsRabModeHists;
    self->_kCellularTdsRabModeHists = v6;

    histCopy = v8;
    kCellularTdsRabModeHists = self->_kCellularTdsRabModeHists;
  }

  [(NSMutableArray *)kCellularTdsRabModeHists addObject:histCopy];
}

- (void)addKCellularTdsRabTypeHist:(id)hist
{
  histCopy = hist;
  kCellularTdsRabTypeHists = self->_kCellularTdsRabTypeHists;
  v8 = histCopy;
  if (!kCellularTdsRabTypeHists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularTdsRabTypeHists;
    self->_kCellularTdsRabTypeHists = v6;

    histCopy = v8;
    kCellularTdsRabTypeHists = self->_kCellularTdsRabTypeHists;
  }

  [(NSMutableArray *)kCellularTdsRabTypeHists addObject:histCopy];
}

- (void)addKCellularTdsRrcState:(id)state
{
  stateCopy = state;
  kCellularTdsRrcStates = self->_kCellularTdsRrcStates;
  v8 = stateCopy;
  if (!kCellularTdsRrcStates)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularTdsRrcStates;
    self->_kCellularTdsRrcStates = v6;

    stateCopy = v8;
    kCellularTdsRrcStates = self->_kCellularTdsRrcStates;
  }

  [(NSMutableArray *)kCellularTdsRrcStates addObject:stateCopy];
}

- (void)addKCellularTdsL1State:(id)state
{
  stateCopy = state;
  kCellularTdsL1States = self->_kCellularTdsL1States;
  v8 = stateCopy;
  if (!kCellularTdsL1States)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularTdsL1States;
    self->_kCellularTdsL1States = v6;

    stateCopy = v8;
    kCellularTdsL1States = self->_kCellularTdsL1States;
  }

  [(NSMutableArray *)kCellularTdsL1States addObject:stateCopy];
}

- (void)addKCellularLteFwDuplexMode:(id)mode
{
  modeCopy = mode;
  kCellularLteFwDuplexModes = self->_kCellularLteFwDuplexModes;
  v8 = modeCopy;
  if (!kCellularLteFwDuplexModes)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularLteFwDuplexModes;
    self->_kCellularLteFwDuplexModes = v6;

    modeCopy = v8;
    kCellularLteFwDuplexModes = self->_kCellularLteFwDuplexModes;
  }

  [(NSMutableArray *)kCellularLteFwDuplexModes addObject:modeCopy];
}

- (void)addKCellularLteServingCellRsrpHist:(id)hist
{
  histCopy = hist;
  kCellularLteServingCellRsrpHists = self->_kCellularLteServingCellRsrpHists;
  v8 = histCopy;
  if (!kCellularLteServingCellRsrpHists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularLteServingCellRsrpHists;
    self->_kCellularLteServingCellRsrpHists = v6;

    histCopy = v8;
    kCellularLteServingCellRsrpHists = self->_kCellularLteServingCellRsrpHists;
  }

  [(NSMutableArray *)kCellularLteServingCellRsrpHists addObject:histCopy];
}

- (void)addKCellularLteServingCellSinrHist:(id)hist
{
  histCopy = hist;
  kCellularLteServingCellSinrHists = self->_kCellularLteServingCellSinrHists;
  v8 = histCopy;
  if (!kCellularLteServingCellSinrHists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularLteServingCellSinrHists;
    self->_kCellularLteServingCellSinrHists = v6;

    histCopy = v8;
    kCellularLteServingCellSinrHists = self->_kCellularLteServingCellSinrHists;
  }

  [(NSMutableArray *)kCellularLteServingCellSinrHists addObject:histCopy];
}

- (void)addKCellularLteSleepStateHist:(id)hist
{
  histCopy = hist;
  kCellularLteSleepStateHists = self->_kCellularLteSleepStateHists;
  v8 = histCopy;
  if (!kCellularLteSleepStateHists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularLteSleepStateHists;
    self->_kCellularLteSleepStateHists = v6;

    histCopy = v8;
    kCellularLteSleepStateHists = self->_kCellularLteSleepStateHists;
  }

  [(NSMutableArray *)kCellularLteSleepStateHists addObject:histCopy];
}

- (void)addKCellularLteTxPowerHist:(id)hist
{
  histCopy = hist;
  kCellularLteTxPowerHists = self->_kCellularLteTxPowerHists;
  v8 = histCopy;
  if (!kCellularLteTxPowerHists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularLteTxPowerHists;
    self->_kCellularLteTxPowerHists = v6;

    histCopy = v8;
    kCellularLteTxPowerHists = self->_kCellularLteTxPowerHists;
  }

  [(NSMutableArray *)kCellularLteTxPowerHists addObject:histCopy];
}

- (void)addKCellularLteDlSccStateHist:(id)hist
{
  histCopy = hist;
  kCellularLteDlSccStateHists = self->_kCellularLteDlSccStateHists;
  v8 = histCopy;
  if (!kCellularLteDlSccStateHists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularLteDlSccStateHists;
    self->_kCellularLteDlSccStateHists = v6;

    histCopy = v8;
    kCellularLteDlSccStateHists = self->_kCellularLteDlSccStateHists;
  }

  [(NSMutableArray *)kCellularLteDlSccStateHists addObject:histCopy];
}

- (void)addKCellularLteUlSccStateHist:(id)hist
{
  histCopy = hist;
  kCellularLteUlSccStateHists = self->_kCellularLteUlSccStateHists;
  v8 = histCopy;
  if (!kCellularLteUlSccStateHists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularLteUlSccStateHists;
    self->_kCellularLteUlSccStateHists = v6;

    histCopy = v8;
    kCellularLteUlSccStateHists = self->_kCellularLteUlSccStateHists;
  }

  [(NSMutableArray *)kCellularLteUlSccStateHists addObject:histCopy];
}

- (void)addKCellularLteAdvancedRxStateHist:(id)hist
{
  histCopy = hist;
  kCellularLteAdvancedRxStateHists = self->_kCellularLteAdvancedRxStateHists;
  v8 = histCopy;
  if (!kCellularLteAdvancedRxStateHists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularLteAdvancedRxStateHists;
    self->_kCellularLteAdvancedRxStateHists = v6;

    histCopy = v8;
    kCellularLteAdvancedRxStateHists = self->_kCellularLteAdvancedRxStateHists;
  }

  [(NSMutableArray *)kCellularLteAdvancedRxStateHists addObject:histCopy];
}

- (void)addKCellularLteComponentCarrierInfo:(id)info
{
  infoCopy = info;
  kCellularLteComponentCarrierInfos = self->_kCellularLteComponentCarrierInfos;
  v8 = infoCopy;
  if (!kCellularLteComponentCarrierInfos)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularLteComponentCarrierInfos;
    self->_kCellularLteComponentCarrierInfos = v6;

    infoCopy = v8;
    kCellularLteComponentCarrierInfos = self->_kCellularLteComponentCarrierInfos;
  }

  [(NSMutableArray *)kCellularLteComponentCarrierInfos addObject:infoCopy];
}

- (void)addKCellularLteRxTxStateHist:(id)hist
{
  histCopy = hist;
  kCellularLteRxTxStateHists = self->_kCellularLteRxTxStateHists;
  v8 = histCopy;
  if (!kCellularLteRxTxStateHists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularLteRxTxStateHists;
    self->_kCellularLteRxTxStateHists = v6;

    histCopy = v8;
    kCellularLteRxTxStateHists = self->_kCellularLteRxTxStateHists;
  }

  [(NSMutableArray *)kCellularLteRxTxStateHists addObject:histCopy];
}

- (void)addKCellularLteTotalDlTbsHist:(id)hist
{
  histCopy = hist;
  kCellularLteTotalDlTbsHists = self->_kCellularLteTotalDlTbsHists;
  v8 = histCopy;
  if (!kCellularLteTotalDlTbsHists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularLteTotalDlTbsHists;
    self->_kCellularLteTotalDlTbsHists = v6;

    histCopy = v8;
    kCellularLteTotalDlTbsHists = self->_kCellularLteTotalDlTbsHists;
  }

  [(NSMutableArray *)kCellularLteTotalDlTbsHists addObject:histCopy];
}

- (void)addKCellularLteDlSccStateHistV3:(id)v3
{
  v3Copy = v3;
  kCellularLteDlSccStateHistV3s = self->_kCellularLteDlSccStateHistV3s;
  v8 = v3Copy;
  if (!kCellularLteDlSccStateHistV3s)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularLteDlSccStateHistV3s;
    self->_kCellularLteDlSccStateHistV3s = v6;

    v3Copy = v8;
    kCellularLteDlSccStateHistV3s = self->_kCellularLteDlSccStateHistV3s;
  }

  [(NSMutableArray *)kCellularLteDlSccStateHistV3s addObject:v3Copy];
}

- (void)addKCellularLteRxDiversityHist:(id)hist
{
  histCopy = hist;
  kCellularLteRxDiversityHists = self->_kCellularLteRxDiversityHists;
  v8 = histCopy;
  if (!kCellularLteRxDiversityHists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularLteRxDiversityHists;
    self->_kCellularLteRxDiversityHists = v6;

    histCopy = v8;
    kCellularLteRxDiversityHists = self->_kCellularLteRxDiversityHists;
  }

  [(NSMutableArray *)kCellularLteRxDiversityHists addObject:histCopy];
}

- (void)addKCellularLtePdcchStateHist:(id)hist
{
  histCopy = hist;
  kCellularLtePdcchStateHists = self->_kCellularLtePdcchStateHists;
  v8 = histCopy;
  if (!kCellularLtePdcchStateHists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularLtePdcchStateHists;
    self->_kCellularLtePdcchStateHists = v6;

    histCopy = v8;
    kCellularLtePdcchStateHists = self->_kCellularLtePdcchStateHists;
  }

  [(NSMutableArray *)kCellularLtePdcchStateHists addObject:histCopy];
}

- (void)addKCellularLteRrcState:(id)state
{
  stateCopy = state;
  kCellularLteRrcStates = self->_kCellularLteRrcStates;
  v8 = stateCopy;
  if (!kCellularLteRrcStates)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularLteRrcStates;
    self->_kCellularLteRrcStates = v6;

    stateCopy = v8;
    kCellularLteRrcStates = self->_kCellularLteRrcStates;
  }

  [(NSMutableArray *)kCellularLteRrcStates addObject:stateCopy];
}

- (void)addKCellularLtePagingCycle:(id)cycle
{
  cycleCopy = cycle;
  kCellularLtePagingCycles = self->_kCellularLtePagingCycles;
  v8 = cycleCopy;
  if (!kCellularLtePagingCycles)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularLtePagingCycles;
    self->_kCellularLtePagingCycles = v6;

    cycleCopy = v8;
    kCellularLtePagingCycles = self->_kCellularLtePagingCycles;
  }

  [(NSMutableArray *)kCellularLtePagingCycles addObject:cycleCopy];
}

- (void)addKCellularLteCdrxConfig:(id)config
{
  configCopy = config;
  kCellularLteCdrxConfigs = self->_kCellularLteCdrxConfigs;
  v8 = configCopy;
  if (!kCellularLteCdrxConfigs)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularLteCdrxConfigs;
    self->_kCellularLteCdrxConfigs = v6;

    configCopy = v8;
    kCellularLteCdrxConfigs = self->_kCellularLteCdrxConfigs;
  }

  [(NSMutableArray *)kCellularLteCdrxConfigs addObject:configCopy];
}

- (void)addKCellularLteRadioLinkFailure:(id)failure
{
  failureCopy = failure;
  kCellularLteRadioLinkFailures = self->_kCellularLteRadioLinkFailures;
  v8 = failureCopy;
  if (!kCellularLteRadioLinkFailures)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularLteRadioLinkFailures;
    self->_kCellularLteRadioLinkFailures = v6;

    failureCopy = v8;
    kCellularLteRadioLinkFailures = self->_kCellularLteRadioLinkFailures;
  }

  [(NSMutableArray *)kCellularLteRadioLinkFailures addObject:failureCopy];
}

- (void)addKCellularLtePdcchStateStats:(id)stats
{
  statsCopy = stats;
  kCellularLtePdcchStateStats = self->_kCellularLtePdcchStateStats;
  v8 = statsCopy;
  if (!kCellularLtePdcchStateStats)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularLtePdcchStateStats;
    self->_kCellularLtePdcchStateStats = v6;

    statsCopy = v8;
    kCellularLtePdcchStateStats = self->_kCellularLtePdcchStateStats;
  }

  [(NSMutableArray *)kCellularLtePdcchStateStats addObject:statsCopy];
}

- (void)addKCellularLqmStateChange:(id)change
{
  changeCopy = change;
  kCellularLqmStateChanges = self->_kCellularLqmStateChanges;
  v8 = changeCopy;
  if (!kCellularLqmStateChanges)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularLqmStateChanges;
    self->_kCellularLqmStateChanges = v6;

    changeCopy = v8;
    kCellularLqmStateChanges = self->_kCellularLqmStateChanges;
  }

  [(NSMutableArray *)kCellularLqmStateChanges addObject:changeCopy];
}

- (void)addKCellularServiceLost:(id)lost
{
  lostCopy = lost;
  kCellularServiceLosts = self->_kCellularServiceLosts;
  v8 = lostCopy;
  if (!kCellularServiceLosts)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularServiceLosts;
    self->_kCellularServiceLosts = v6;

    lostCopy = v8;
    kCellularServiceLosts = self->_kCellularServiceLosts;
  }

  [(NSMutableArray *)kCellularServiceLosts addObject:lostCopy];
}

- (void)addKCellularProtocolStackStateHist:(id)hist
{
  histCopy = hist;
  kCellularProtocolStackStateHists = self->_kCellularProtocolStackStateHists;
  v8 = histCopy;
  if (!kCellularProtocolStackStateHists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularProtocolStackStateHists;
    self->_kCellularProtocolStackStateHists = v6;

    histCopy = v8;
    kCellularProtocolStackStateHists = self->_kCellularProtocolStackStateHists;
  }

  [(NSMutableArray *)kCellularProtocolStackStateHists addObject:histCopy];
}

- (void)addKCellularCellPlmnSearchCount:(id)count
{
  countCopy = count;
  kCellularCellPlmnSearchCounts = self->_kCellularCellPlmnSearchCounts;
  v8 = countCopy;
  if (!kCellularCellPlmnSearchCounts)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularCellPlmnSearchCounts;
    self->_kCellularCellPlmnSearchCounts = v6;

    countCopy = v8;
    kCellularCellPlmnSearchCounts = self->_kCellularCellPlmnSearchCounts;
  }

  [(NSMutableArray *)kCellularCellPlmnSearchCounts addObject:countCopy];
}

- (void)addKCellularCellPlmnSearchHist:(id)hist
{
  histCopy = hist;
  kCellularCellPlmnSearchHists = self->_kCellularCellPlmnSearchHists;
  v8 = histCopy;
  if (!kCellularCellPlmnSearchHists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularCellPlmnSearchHists;
    self->_kCellularCellPlmnSearchHists = v6;

    histCopy = v8;
    kCellularCellPlmnSearchHists = self->_kCellularCellPlmnSearchHists;
  }

  [(NSMutableArray *)kCellularCellPlmnSearchHists addObject:histCopy];
}

- (void)addKCellularProtocolStackPowerState:(id)state
{
  stateCopy = state;
  kCellularProtocolStackPowerStates = self->_kCellularProtocolStackPowerStates;
  v8 = stateCopy;
  if (!kCellularProtocolStackPowerStates)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularProtocolStackPowerStates;
    self->_kCellularProtocolStackPowerStates = v6;

    stateCopy = v8;
    kCellularProtocolStackPowerStates = self->_kCellularProtocolStackPowerStates;
  }

  [(NSMutableArray *)kCellularProtocolStackPowerStates addObject:stateCopy];
}

- (void)addKCellularDownlinkIpPacketFilterStatus:(id)status
{
  statusCopy = status;
  kCellularDownlinkIpPacketFilterStatus = self->_kCellularDownlinkIpPacketFilterStatus;
  v8 = statusCopy;
  if (!kCellularDownlinkIpPacketFilterStatus)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularDownlinkIpPacketFilterStatus;
    self->_kCellularDownlinkIpPacketFilterStatus = v6;

    statusCopy = v8;
    kCellularDownlinkIpPacketFilterStatus = self->_kCellularDownlinkIpPacketFilterStatus;
  }

  [(NSMutableArray *)kCellularDownlinkIpPacketFilterStatus addObject:statusCopy];
}

- (void)addKCellularServingCellRfBandHist:(id)hist
{
  histCopy = hist;
  kCellularServingCellRfBandHists = self->_kCellularServingCellRfBandHists;
  v8 = histCopy;
  if (!kCellularServingCellRfBandHists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularServingCellRfBandHists;
    self->_kCellularServingCellRfBandHists = v6;

    histCopy = v8;
    kCellularServingCellRfBandHists = self->_kCellularServingCellRfBandHists;
  }

  [(NSMutableArray *)kCellularServingCellRfBandHists addObject:histCopy];
}

- (void)addKCellularProtocolStackStateHist2:(id)hist2
{
  hist2Copy = hist2;
  kCellularProtocolStackStateHist2s = self->_kCellularProtocolStackStateHist2s;
  v8 = hist2Copy;
  if (!kCellularProtocolStackStateHist2s)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularProtocolStackStateHist2s;
    self->_kCellularProtocolStackStateHist2s = v6;

    hist2Copy = v8;
    kCellularProtocolStackStateHist2s = self->_kCellularProtocolStackStateHist2s;
  }

  [(NSMutableArray *)kCellularProtocolStackStateHist2s addObject:hist2Copy];
}

- (void)addKCellularProtocolStackState:(id)state
{
  stateCopy = state;
  kCellularProtocolStackStates = self->_kCellularProtocolStackStates;
  v8 = stateCopy;
  if (!kCellularProtocolStackStates)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularProtocolStackStates;
    self->_kCellularProtocolStackStates = v6;

    stateCopy = v8;
    kCellularProtocolStackStates = self->_kCellularProtocolStackStates;
  }

  [(NSMutableArray *)kCellularProtocolStackStates addObject:stateCopy];
}

- (void)addKCellularCdma1XRxDiversityHist:(id)hist
{
  histCopy = hist;
  kCellularCdma1XRxDiversityHists = self->_kCellularCdma1XRxDiversityHists;
  v8 = histCopy;
  if (!kCellularCdma1XRxDiversityHists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularCdma1XRxDiversityHists;
    self->_kCellularCdma1XRxDiversityHists = v6;

    histCopy = v8;
    kCellularCdma1XRxDiversityHists = self->_kCellularCdma1XRxDiversityHists;
  }

  [(NSMutableArray *)kCellularCdma1XRxDiversityHists addObject:histCopy];
}

- (void)addKCellularCdma1XServingCellRx0RssiHist:(id)hist
{
  histCopy = hist;
  kCellularCdma1XServingCellRx0RssiHists = self->_kCellularCdma1XServingCellRx0RssiHists;
  v8 = histCopy;
  if (!kCellularCdma1XServingCellRx0RssiHists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularCdma1XServingCellRx0RssiHists;
    self->_kCellularCdma1XServingCellRx0RssiHists = v6;

    histCopy = v8;
    kCellularCdma1XServingCellRx0RssiHists = self->_kCellularCdma1XServingCellRx0RssiHists;
  }

  [(NSMutableArray *)kCellularCdma1XServingCellRx0RssiHists addObject:histCopy];
}

- (void)addKCellularCdma1XServingCellRx1RssiHist:(id)hist
{
  histCopy = hist;
  kCellularCdma1XServingCellRx1RssiHists = self->_kCellularCdma1XServingCellRx1RssiHists;
  v8 = histCopy;
  if (!kCellularCdma1XServingCellRx1RssiHists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularCdma1XServingCellRx1RssiHists;
    self->_kCellularCdma1XServingCellRx1RssiHists = v6;

    histCopy = v8;
    kCellularCdma1XServingCellRx1RssiHists = self->_kCellularCdma1XServingCellRx1RssiHists;
  }

  [(NSMutableArray *)kCellularCdma1XServingCellRx1RssiHists addObject:histCopy];
}

- (void)addKCellularCdma1XServingCellRx0EcIoHist:(id)hist
{
  histCopy = hist;
  kCellularCdma1XServingCellRx0EcIoHists = self->_kCellularCdma1XServingCellRx0EcIoHists;
  v8 = histCopy;
  if (!kCellularCdma1XServingCellRx0EcIoHists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularCdma1XServingCellRx0EcIoHists;
    self->_kCellularCdma1XServingCellRx0EcIoHists = v6;

    histCopy = v8;
    kCellularCdma1XServingCellRx0EcIoHists = self->_kCellularCdma1XServingCellRx0EcIoHists;
  }

  [(NSMutableArray *)kCellularCdma1XServingCellRx0EcIoHists addObject:histCopy];
}

- (void)addKCellularCdma1XServingCellRx1EcIoHist:(id)hist
{
  histCopy = hist;
  kCellularCdma1XServingCellRx1EcIoHists = self->_kCellularCdma1XServingCellRx1EcIoHists;
  v8 = histCopy;
  if (!kCellularCdma1XServingCellRx1EcIoHists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularCdma1XServingCellRx1EcIoHists;
    self->_kCellularCdma1XServingCellRx1EcIoHists = v6;

    histCopy = v8;
    kCellularCdma1XServingCellRx1EcIoHists = self->_kCellularCdma1XServingCellRx1EcIoHists;
  }

  [(NSMutableArray *)kCellularCdma1XServingCellRx1EcIoHists addObject:histCopy];
}

- (void)addKCellularCdma1XTxPowerHist:(id)hist
{
  histCopy = hist;
  kCellularCdma1XTxPowerHists = self->_kCellularCdma1XTxPowerHists;
  v8 = histCopy;
  if (!kCellularCdma1XTxPowerHists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularCdma1XTxPowerHists;
    self->_kCellularCdma1XTxPowerHists = v6;

    histCopy = v8;
    kCellularCdma1XTxPowerHists = self->_kCellularCdma1XTxPowerHists;
  }

  [(NSMutableArray *)kCellularCdma1XTxPowerHists addObject:histCopy];
}

- (void)addKCellularCdma1XProtocolStackStateHist:(id)hist
{
  histCopy = hist;
  kCellularCdma1XProtocolStackStateHists = self->_kCellularCdma1XProtocolStackStateHists;
  v8 = histCopy;
  if (!kCellularCdma1XProtocolStackStateHists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularCdma1XProtocolStackStateHists;
    self->_kCellularCdma1XProtocolStackStateHists = v6;

    histCopy = v8;
    kCellularCdma1XProtocolStackStateHists = self->_kCellularCdma1XProtocolStackStateHists;
  }

  [(NSMutableArray *)kCellularCdma1XProtocolStackStateHists addObject:histCopy];
}

- (void)addKCellularCdma1XConnectionHist:(id)hist
{
  histCopy = hist;
  kCellularCdma1XConnectionHists = self->_kCellularCdma1XConnectionHists;
  v8 = histCopy;
  if (!kCellularCdma1XConnectionHists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularCdma1XConnectionHists;
    self->_kCellularCdma1XConnectionHists = v6;

    histCopy = v8;
    kCellularCdma1XConnectionHists = self->_kCellularCdma1XConnectionHists;
  }

  [(NSMutableArray *)kCellularCdma1XConnectionHists addObject:histCopy];
}

- (void)addKCellularCdma1XRrState:(id)state
{
  stateCopy = state;
  kCellularCdma1XRrStates = self->_kCellularCdma1XRrStates;
  v8 = stateCopy;
  if (!kCellularCdma1XRrStates)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularCdma1XRrStates;
    self->_kCellularCdma1XRrStates = v6;

    stateCopy = v8;
    kCellularCdma1XRrStates = self->_kCellularCdma1XRrStates;
  }

  [(NSMutableArray *)kCellularCdma1XRrStates addObject:stateCopy];
}

- (void)addKCellularCdmaEvdoRxDiversityHist:(id)hist
{
  histCopy = hist;
  kCellularCdmaEvdoRxDiversityHists = self->_kCellularCdmaEvdoRxDiversityHists;
  v8 = histCopy;
  if (!kCellularCdmaEvdoRxDiversityHists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularCdmaEvdoRxDiversityHists;
    self->_kCellularCdmaEvdoRxDiversityHists = v6;

    histCopy = v8;
    kCellularCdmaEvdoRxDiversityHists = self->_kCellularCdmaEvdoRxDiversityHists;
  }

  [(NSMutableArray *)kCellularCdmaEvdoRxDiversityHists addObject:histCopy];
}

- (void)addKCellularCdmaEvdoServingCellRx0RssiHist:(id)hist
{
  histCopy = hist;
  kCellularCdmaEvdoServingCellRx0RssiHists = self->_kCellularCdmaEvdoServingCellRx0RssiHists;
  v8 = histCopy;
  if (!kCellularCdmaEvdoServingCellRx0RssiHists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularCdmaEvdoServingCellRx0RssiHists;
    self->_kCellularCdmaEvdoServingCellRx0RssiHists = v6;

    histCopy = v8;
    kCellularCdmaEvdoServingCellRx0RssiHists = self->_kCellularCdmaEvdoServingCellRx0RssiHists;
  }

  [(NSMutableArray *)kCellularCdmaEvdoServingCellRx0RssiHists addObject:histCopy];
}

- (void)addKCellularCdmaEvdoServingCellRx1RssiHist:(id)hist
{
  histCopy = hist;
  kCellularCdmaEvdoServingCellRx1RssiHists = self->_kCellularCdmaEvdoServingCellRx1RssiHists;
  v8 = histCopy;
  if (!kCellularCdmaEvdoServingCellRx1RssiHists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularCdmaEvdoServingCellRx1RssiHists;
    self->_kCellularCdmaEvdoServingCellRx1RssiHists = v6;

    histCopy = v8;
    kCellularCdmaEvdoServingCellRx1RssiHists = self->_kCellularCdmaEvdoServingCellRx1RssiHists;
  }

  [(NSMutableArray *)kCellularCdmaEvdoServingCellRx1RssiHists addObject:histCopy];
}

- (void)addKCellularCdmaEvdoServingCellRx0EcIoHist:(id)hist
{
  histCopy = hist;
  kCellularCdmaEvdoServingCellRx0EcIoHists = self->_kCellularCdmaEvdoServingCellRx0EcIoHists;
  v8 = histCopy;
  if (!kCellularCdmaEvdoServingCellRx0EcIoHists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularCdmaEvdoServingCellRx0EcIoHists;
    self->_kCellularCdmaEvdoServingCellRx0EcIoHists = v6;

    histCopy = v8;
    kCellularCdmaEvdoServingCellRx0EcIoHists = self->_kCellularCdmaEvdoServingCellRx0EcIoHists;
  }

  [(NSMutableArray *)kCellularCdmaEvdoServingCellRx0EcIoHists addObject:histCopy];
}

- (void)addKCellularCdmaEvdoServingCellRx1EcIoHist:(id)hist
{
  histCopy = hist;
  kCellularCdmaEvdoServingCellRx1EcIoHists = self->_kCellularCdmaEvdoServingCellRx1EcIoHists;
  v8 = histCopy;
  if (!kCellularCdmaEvdoServingCellRx1EcIoHists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularCdmaEvdoServingCellRx1EcIoHists;
    self->_kCellularCdmaEvdoServingCellRx1EcIoHists = v6;

    histCopy = v8;
    kCellularCdmaEvdoServingCellRx1EcIoHists = self->_kCellularCdmaEvdoServingCellRx1EcIoHists;
  }

  [(NSMutableArray *)kCellularCdmaEvdoServingCellRx1EcIoHists addObject:histCopy];
}

- (void)addKCellularCdmaEvdoTxPowerHist:(id)hist
{
  histCopy = hist;
  kCellularCdmaEvdoTxPowerHists = self->_kCellularCdmaEvdoTxPowerHists;
  v8 = histCopy;
  if (!kCellularCdmaEvdoTxPowerHists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularCdmaEvdoTxPowerHists;
    self->_kCellularCdmaEvdoTxPowerHists = v6;

    histCopy = v8;
    kCellularCdmaEvdoTxPowerHists = self->_kCellularCdmaEvdoTxPowerHists;
  }

  [(NSMutableArray *)kCellularCdmaEvdoTxPowerHists addObject:histCopy];
}

- (void)addKCellularCdmaEvdoProtocolStackStateHist:(id)hist
{
  histCopy = hist;
  kCellularCdmaEvdoProtocolStackStateHists = self->_kCellularCdmaEvdoProtocolStackStateHists;
  v8 = histCopy;
  if (!kCellularCdmaEvdoProtocolStackStateHists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularCdmaEvdoProtocolStackStateHists;
    self->_kCellularCdmaEvdoProtocolStackStateHists = v6;

    histCopy = v8;
    kCellularCdmaEvdoProtocolStackStateHists = self->_kCellularCdmaEvdoProtocolStackStateHists;
  }

  [(NSMutableArray *)kCellularCdmaEvdoProtocolStackStateHists addObject:histCopy];
}

- (void)addKCellularCdmaEvdoRrState:(id)state
{
  stateCopy = state;
  kCellularCdmaEvdoRrStates = self->_kCellularCdmaEvdoRrStates;
  v8 = stateCopy;
  if (!kCellularCdmaEvdoRrStates)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_kCellularCdmaEvdoRrStates;
    self->_kCellularCdmaEvdoRrStates = v6;

    stateCopy = v8;
    kCellularCdmaEvdoRrStates = self->_kCellularCdmaEvdoRrStates;
  }

  [(NSMutableArray *)kCellularCdmaEvdoRrStates addObject:stateCopy];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = PowerlogMetricLog;
  v4 = [(PowerlogMetricLog *)&v8 description];
  dictionaryRepresentation = [(PowerlogMetricLog *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v1086 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if ([(NSMutableArray *)self->_kCellularPerClientProfileTriggerCounts count])
  {
    v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularPerClientProfileTriggerCounts, "count")}];
    v992 = 0u;
    v993 = 0u;
    v994 = 0u;
    v995 = 0u;
    v5 = self->_kCellularPerClientProfileTriggerCounts;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v992 objects:v1085 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v993;
      do
      {
        v9 = 0;
        do
        {
          if (*v993 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v992 + 1) + 8 * v9) dictionaryRepresentation];
          [v4 addObject:dictionaryRepresentation];

          ++v9;
        }

        while (v7 != v9);
        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v992 objects:v1085 count:16];
      }

      while (v7);
    }

    [dictionary setObject:v4 forKey:@"kCellularPerClientProfileTriggerCount"];
  }

  if ([(NSMutableArray *)self->_kCellularProtocolStackCpuStats count])
  {
    v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularProtocolStackCpuStats, "count")}];
    v988 = 0u;
    v989 = 0u;
    v990 = 0u;
    v991 = 0u;
    v12 = self->_kCellularProtocolStackCpuStats;
    v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v988 objects:v1084 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v989;
      do
      {
        v16 = 0;
        do
        {
          if (*v989 != v15)
          {
            objc_enumerationMutation(v12);
          }

          dictionaryRepresentation2 = [*(*(&v988 + 1) + 8 * v16) dictionaryRepresentation];
          [v11 addObject:dictionaryRepresentation2];

          ++v16;
        }

        while (v14 != v16);
        v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v988 objects:v1084 count:16];
      }

      while (v14);
    }

    [dictionary setObject:v11 forKey:@"kCellularProtocolStackCpuStats"];
  }

  if ([(NSMutableArray *)self->_kCellularPeripheralStats count])
  {
    v18 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularPeripheralStats, "count")}];
    v984 = 0u;
    v985 = 0u;
    v986 = 0u;
    v987 = 0u;
    v19 = self->_kCellularPeripheralStats;
    v20 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v984 objects:v1083 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v985;
      do
      {
        v23 = 0;
        do
        {
          if (*v985 != v22)
          {
            objc_enumerationMutation(v19);
          }

          dictionaryRepresentation3 = [*(*(&v984 + 1) + 8 * v23) dictionaryRepresentation];
          [v18 addObject:dictionaryRepresentation3];

          ++v23;
        }

        while (v21 != v23);
        v21 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v984 objects:v1083 count:16];
      }

      while (v21);
    }

    [dictionary setObject:v18 forKey:@"kCellularPeripheralStats"];
  }

  if ([(NSMutableArray *)self->_kCellularDvfsStats count])
  {
    v25 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularDvfsStats, "count")}];
    v980 = 0u;
    v981 = 0u;
    v982 = 0u;
    v983 = 0u;
    v26 = self->_kCellularDvfsStats;
    v27 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v980 objects:v1082 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v981;
      do
      {
        v30 = 0;
        do
        {
          if (*v981 != v29)
          {
            objc_enumerationMutation(v26);
          }

          dictionaryRepresentation4 = [*(*(&v980 + 1) + 8 * v30) dictionaryRepresentation];
          [v25 addObject:dictionaryRepresentation4];

          ++v30;
        }

        while (v28 != v30);
        v28 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v980 objects:v1082 count:16];
      }

      while (v28);
    }

    [dictionary setObject:v25 forKey:@"kCellularDvfsStats"];
  }

  if ([(NSMutableArray *)self->_kCellularLteWcdmaGsmHwStats count])
  {
    v32 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularLteWcdmaGsmHwStats, "count")}];
    v976 = 0u;
    v977 = 0u;
    v978 = 0u;
    v979 = 0u;
    v33 = self->_kCellularLteWcdmaGsmHwStats;
    v34 = [(NSMutableArray *)v33 countByEnumeratingWithState:&v976 objects:v1081 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v977;
      do
      {
        v37 = 0;
        do
        {
          if (*v977 != v36)
          {
            objc_enumerationMutation(v33);
          }

          dictionaryRepresentation5 = [*(*(&v976 + 1) + 8 * v37) dictionaryRepresentation];
          [v32 addObject:dictionaryRepresentation5];

          ++v37;
        }

        while (v35 != v37);
        v35 = [(NSMutableArray *)v33 countByEnumeratingWithState:&v976 objects:v1081 count:16];
      }

      while (v35);
    }

    [dictionary setObject:v32 forKey:@"kCellularLteWcdmaGsmHwStats"];
  }

  if ([(NSMutableArray *)self->_kCellularLteTdsGsmHwStats count])
  {
    v39 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularLteTdsGsmHwStats, "count")}];
    v972 = 0u;
    v973 = 0u;
    v974 = 0u;
    v975 = 0u;
    v40 = self->_kCellularLteTdsGsmHwStats;
    v41 = [(NSMutableArray *)v40 countByEnumeratingWithState:&v972 objects:v1080 count:16];
    if (v41)
    {
      v42 = v41;
      v43 = *v973;
      do
      {
        v44 = 0;
        do
        {
          if (*v973 != v43)
          {
            objc_enumerationMutation(v40);
          }

          dictionaryRepresentation6 = [*(*(&v972 + 1) + 8 * v44) dictionaryRepresentation];
          [v39 addObject:dictionaryRepresentation6];

          ++v44;
        }

        while (v42 != v44);
        v42 = [(NSMutableArray *)v40 countByEnumeratingWithState:&v972 objects:v1080 count:16];
      }

      while (v42);
    }

    [dictionary setObject:v39 forKey:@"kCellularLteTdsGsmHwStats"];
  }

  if ([(NSMutableArray *)self->_kCellularPmuAverageCurrents count])
  {
    v46 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularPmuAverageCurrents, "count")}];
    v968 = 0u;
    v969 = 0u;
    v970 = 0u;
    v971 = 0u;
    v47 = self->_kCellularPmuAverageCurrents;
    v48 = [(NSMutableArray *)v47 countByEnumeratingWithState:&v968 objects:v1079 count:16];
    if (v48)
    {
      v49 = v48;
      v50 = *v969;
      do
      {
        v51 = 0;
        do
        {
          if (*v969 != v50)
          {
            objc_enumerationMutation(v47);
          }

          dictionaryRepresentation7 = [*(*(&v968 + 1) + 8 * v51) dictionaryRepresentation];
          [v46 addObject:dictionaryRepresentation7];

          ++v51;
        }

        while (v49 != v51);
        v49 = [(NSMutableArray *)v47 countByEnumeratingWithState:&v968 objects:v1079 count:16];
      }

      while (v49);
    }

    [dictionary setObject:v46 forKey:@"kCellularPmuAverageCurrent"];
  }

  if ([(NSMutableArray *)self->_kCellularFwCoreStats count])
  {
    v53 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularFwCoreStats, "count")}];
    v964 = 0u;
    v965 = 0u;
    v966 = 0u;
    v967 = 0u;
    v54 = self->_kCellularFwCoreStats;
    v55 = [(NSMutableArray *)v54 countByEnumeratingWithState:&v964 objects:v1078 count:16];
    if (v55)
    {
      v56 = v55;
      v57 = *v965;
      do
      {
        v58 = 0;
        do
        {
          if (*v965 != v57)
          {
            objc_enumerationMutation(v54);
          }

          dictionaryRepresentation8 = [*(*(&v964 + 1) + 8 * v58) dictionaryRepresentation];
          [v53 addObject:dictionaryRepresentation8];

          ++v58;
        }

        while (v56 != v58);
        v56 = [(NSMutableArray *)v54 countByEnumeratingWithState:&v964 objects:v1078 count:16];
      }

      while (v56);
    }

    [dictionary setObject:v53 forKey:@"kCellularFwCoreStats"];
  }

  if ([(NSMutableArray *)self->_kCellularLteWcdmaTdsHwStats count])
  {
    v60 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularLteWcdmaTdsHwStats, "count")}];
    v960 = 0u;
    v961 = 0u;
    v962 = 0u;
    v963 = 0u;
    v61 = self->_kCellularLteWcdmaTdsHwStats;
    v62 = [(NSMutableArray *)v61 countByEnumeratingWithState:&v960 objects:v1077 count:16];
    if (v62)
    {
      v63 = v62;
      v64 = *v961;
      do
      {
        v65 = 0;
        do
        {
          if (*v961 != v64)
          {
            objc_enumerationMutation(v61);
          }

          dictionaryRepresentation9 = [*(*(&v960 + 1) + 8 * v65) dictionaryRepresentation];
          [v60 addObject:dictionaryRepresentation9];

          ++v65;
        }

        while (v63 != v65);
        v63 = [(NSMutableArray *)v61 countByEnumeratingWithState:&v960 objects:v1077 count:16];
      }

      while (v63);
    }

    [dictionary setObject:v60 forKey:@"kCellularLteWcdmaTdsHwStats"];
  }

  if ([(NSMutableArray *)self->_kCellularPmicHwStats count])
  {
    v67 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularPmicHwStats, "count")}];
    v956 = 0u;
    v957 = 0u;
    v958 = 0u;
    v959 = 0u;
    v68 = self->_kCellularPmicHwStats;
    v69 = [(NSMutableArray *)v68 countByEnumeratingWithState:&v956 objects:v1076 count:16];
    if (v69)
    {
      v70 = v69;
      v71 = *v957;
      do
      {
        v72 = 0;
        do
        {
          if (*v957 != v71)
          {
            objc_enumerationMutation(v68);
          }

          dictionaryRepresentation10 = [*(*(&v956 + 1) + 8 * v72) dictionaryRepresentation];
          [v67 addObject:dictionaryRepresentation10];

          ++v72;
        }

        while (v70 != v72);
        v70 = [(NSMutableArray *)v68 countByEnumeratingWithState:&v956 objects:v1076 count:16];
      }

      while (v70);
    }

    [dictionary setObject:v67 forKey:@"kCellularPmicHwStats"];
  }

  if ([(NSMutableArray *)self->_kCellularGsmServingCellRssiHists count])
  {
    v74 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularGsmServingCellRssiHists, "count")}];
    v952 = 0u;
    v953 = 0u;
    v954 = 0u;
    v955 = 0u;
    v75 = self->_kCellularGsmServingCellRssiHists;
    v76 = [(NSMutableArray *)v75 countByEnumeratingWithState:&v952 objects:v1075 count:16];
    if (v76)
    {
      v77 = v76;
      v78 = *v953;
      do
      {
        v79 = 0;
        do
        {
          if (*v953 != v78)
          {
            objc_enumerationMutation(v75);
          }

          dictionaryRepresentation11 = [*(*(&v952 + 1) + 8 * v79) dictionaryRepresentation];
          [v74 addObject:dictionaryRepresentation11];

          ++v79;
        }

        while (v77 != v79);
        v77 = [(NSMutableArray *)v75 countByEnumeratingWithState:&v952 objects:v1075 count:16];
      }

      while (v77);
    }

    [dictionary setObject:v74 forKey:@"kCellularGsmServingCellRssiHist"];
  }

  if ([(NSMutableArray *)self->_kCellularGsmServingCellSnrHists count])
  {
    v81 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularGsmServingCellSnrHists, "count")}];
    v948 = 0u;
    v949 = 0u;
    v950 = 0u;
    v951 = 0u;
    v82 = self->_kCellularGsmServingCellSnrHists;
    v83 = [(NSMutableArray *)v82 countByEnumeratingWithState:&v948 objects:v1074 count:16];
    if (v83)
    {
      v84 = v83;
      v85 = *v949;
      do
      {
        v86 = 0;
        do
        {
          if (*v949 != v85)
          {
            objc_enumerationMutation(v82);
          }

          dictionaryRepresentation12 = [*(*(&v948 + 1) + 8 * v86) dictionaryRepresentation];
          [v81 addObject:dictionaryRepresentation12];

          ++v86;
        }

        while (v84 != v86);
        v84 = [(NSMutableArray *)v82 countByEnumeratingWithState:&v948 objects:v1074 count:16];
      }

      while (v84);
    }

    [dictionary setObject:v81 forKey:@"kCellularGsmServingCellSnrHist"];
  }

  if ([(NSMutableArray *)self->_kCellularGsmTxPowerHists count])
  {
    v88 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularGsmTxPowerHists, "count")}];
    v944 = 0u;
    v945 = 0u;
    v946 = 0u;
    v947 = 0u;
    v89 = self->_kCellularGsmTxPowerHists;
    v90 = [(NSMutableArray *)v89 countByEnumeratingWithState:&v944 objects:v1073 count:16];
    if (v90)
    {
      v91 = v90;
      v92 = *v945;
      do
      {
        v93 = 0;
        do
        {
          if (*v945 != v92)
          {
            objc_enumerationMutation(v89);
          }

          dictionaryRepresentation13 = [*(*(&v944 + 1) + 8 * v93) dictionaryRepresentation];
          [v88 addObject:dictionaryRepresentation13];

          ++v93;
        }

        while (v91 != v93);
        v91 = [(NSMutableArray *)v89 countByEnumeratingWithState:&v944 objects:v1073 count:16];
      }

      while (v91);
    }

    [dictionary setObject:v88 forKey:@"kCellularGsmTxPowerHist"];
  }

  if ([(NSMutableArray *)self->_kCellularGsmConnectedModeHists count])
  {
    v95 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularGsmConnectedModeHists, "count")}];
    v940 = 0u;
    v941 = 0u;
    v942 = 0u;
    v943 = 0u;
    v96 = self->_kCellularGsmConnectedModeHists;
    v97 = [(NSMutableArray *)v96 countByEnumeratingWithState:&v940 objects:v1072 count:16];
    if (v97)
    {
      v98 = v97;
      v99 = *v941;
      do
      {
        v100 = 0;
        do
        {
          if (*v941 != v99)
          {
            objc_enumerationMutation(v96);
          }

          dictionaryRepresentation14 = [*(*(&v940 + 1) + 8 * v100) dictionaryRepresentation];
          [v95 addObject:dictionaryRepresentation14];

          ++v100;
        }

        while (v98 != v100);
        v98 = [(NSMutableArray *)v96 countByEnumeratingWithState:&v940 objects:v1072 count:16];
      }

      while (v98);
    }

    [dictionary setObject:v95 forKey:@"kCellularGsmConnectedModeHist"];
  }

  if ([(NSMutableArray *)self->_kCellularGsmL1States count])
  {
    v102 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularGsmL1States, "count")}];
    v936 = 0u;
    v937 = 0u;
    v938 = 0u;
    v939 = 0u;
    v103 = self->_kCellularGsmL1States;
    v104 = [(NSMutableArray *)v103 countByEnumeratingWithState:&v936 objects:v1071 count:16];
    if (v104)
    {
      v105 = v104;
      v106 = *v937;
      do
      {
        v107 = 0;
        do
        {
          if (*v937 != v106)
          {
            objc_enumerationMutation(v103);
          }

          dictionaryRepresentation15 = [*(*(&v936 + 1) + 8 * v107) dictionaryRepresentation];
          [v102 addObject:dictionaryRepresentation15];

          ++v107;
        }

        while (v105 != v107);
        v105 = [(NSMutableArray *)v103 countByEnumeratingWithState:&v936 objects:v1071 count:16];
      }

      while (v105);
    }

    [dictionary setObject:v102 forKey:@"kCellularGsmL1State"];
  }

  if ([(NSMutableArray *)self->_kCellularWcdmaCpcStats count])
  {
    v109 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularWcdmaCpcStats, "count")}];
    v932 = 0u;
    v933 = 0u;
    v934 = 0u;
    v935 = 0u;
    v110 = self->_kCellularWcdmaCpcStats;
    v111 = [(NSMutableArray *)v110 countByEnumeratingWithState:&v932 objects:v1070 count:16];
    if (v111)
    {
      v112 = v111;
      v113 = *v933;
      do
      {
        v114 = 0;
        do
        {
          if (*v933 != v113)
          {
            objc_enumerationMutation(v110);
          }

          dictionaryRepresentation16 = [*(*(&v932 + 1) + 8 * v114) dictionaryRepresentation];
          [v109 addObject:dictionaryRepresentation16];

          ++v114;
        }

        while (v112 != v114);
        v112 = [(NSMutableArray *)v110 countByEnumeratingWithState:&v932 objects:v1070 count:16];
      }

      while (v112);
    }

    [dictionary setObject:v109 forKey:@"kCellularWcdmaCpcStat"];
  }

  if ([(NSMutableArray *)self->_kCellularWcdmaRxDiversityHists count])
  {
    v116 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularWcdmaRxDiversityHists, "count")}];
    v928 = 0u;
    v929 = 0u;
    v930 = 0u;
    v931 = 0u;
    v117 = self->_kCellularWcdmaRxDiversityHists;
    v118 = [(NSMutableArray *)v117 countByEnumeratingWithState:&v928 objects:v1069 count:16];
    if (v118)
    {
      v119 = v118;
      v120 = *v929;
      do
      {
        v121 = 0;
        do
        {
          if (*v929 != v120)
          {
            objc_enumerationMutation(v117);
          }

          dictionaryRepresentation17 = [*(*(&v928 + 1) + 8 * v121) dictionaryRepresentation];
          [v116 addObject:dictionaryRepresentation17];

          ++v121;
        }

        while (v119 != v121);
        v119 = [(NSMutableArray *)v117 countByEnumeratingWithState:&v928 objects:v1069 count:16];
      }

      while (v119);
    }

    [dictionary setObject:v116 forKey:@"kCellularWcdmaRxDiversityHist"];
  }

  if ([(NSMutableArray *)self->_kCellularWcdmaServingCellRx0RssiHists count])
  {
    v123 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularWcdmaServingCellRx0RssiHists, "count")}];
    v924 = 0u;
    v925 = 0u;
    v926 = 0u;
    v927 = 0u;
    v124 = self->_kCellularWcdmaServingCellRx0RssiHists;
    v125 = [(NSMutableArray *)v124 countByEnumeratingWithState:&v924 objects:v1068 count:16];
    if (v125)
    {
      v126 = v125;
      v127 = *v925;
      do
      {
        v128 = 0;
        do
        {
          if (*v925 != v127)
          {
            objc_enumerationMutation(v124);
          }

          dictionaryRepresentation18 = [*(*(&v924 + 1) + 8 * v128) dictionaryRepresentation];
          [v123 addObject:dictionaryRepresentation18];

          ++v128;
        }

        while (v126 != v128);
        v126 = [(NSMutableArray *)v124 countByEnumeratingWithState:&v924 objects:v1068 count:16];
      }

      while (v126);
    }

    [dictionary setObject:v123 forKey:@"kCellularWcdmaServingCellRx0RssiHist"];
  }

  if ([(NSMutableArray *)self->_kCellularWcdmaServingCellRx1RssiHists count])
  {
    v130 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularWcdmaServingCellRx1RssiHists, "count")}];
    v920 = 0u;
    v921 = 0u;
    v922 = 0u;
    v923 = 0u;
    v131 = self->_kCellularWcdmaServingCellRx1RssiHists;
    v132 = [(NSMutableArray *)v131 countByEnumeratingWithState:&v920 objects:v1067 count:16];
    if (v132)
    {
      v133 = v132;
      v134 = *v921;
      do
      {
        v135 = 0;
        do
        {
          if (*v921 != v134)
          {
            objc_enumerationMutation(v131);
          }

          dictionaryRepresentation19 = [*(*(&v920 + 1) + 8 * v135) dictionaryRepresentation];
          [v130 addObject:dictionaryRepresentation19];

          ++v135;
        }

        while (v133 != v135);
        v133 = [(NSMutableArray *)v131 countByEnumeratingWithState:&v920 objects:v1067 count:16];
      }

      while (v133);
    }

    [dictionary setObject:v130 forKey:@"kCellularWcdmaServingCellRx1RssiHist"];
  }

  if ([(NSMutableArray *)self->_kCellularWcdmaServingCellRx0EcNoHists count])
  {
    v137 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularWcdmaServingCellRx0EcNoHists, "count")}];
    v916 = 0u;
    v917 = 0u;
    v918 = 0u;
    v919 = 0u;
    v138 = self->_kCellularWcdmaServingCellRx0EcNoHists;
    v139 = [(NSMutableArray *)v138 countByEnumeratingWithState:&v916 objects:v1066 count:16];
    if (v139)
    {
      v140 = v139;
      v141 = *v917;
      do
      {
        v142 = 0;
        do
        {
          if (*v917 != v141)
          {
            objc_enumerationMutation(v138);
          }

          dictionaryRepresentation20 = [*(*(&v916 + 1) + 8 * v142) dictionaryRepresentation];
          [v137 addObject:dictionaryRepresentation20];

          ++v142;
        }

        while (v140 != v142);
        v140 = [(NSMutableArray *)v138 countByEnumeratingWithState:&v916 objects:v1066 count:16];
      }

      while (v140);
    }

    [dictionary setObject:v137 forKey:@"kCellularWcdmaServingCellRx0EcNoHist"];
  }

  if ([(NSMutableArray *)self->_kCellularWcdmaServingCellRx1EcNoHists count])
  {
    v144 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularWcdmaServingCellRx1EcNoHists, "count")}];
    v912 = 0u;
    v913 = 0u;
    v914 = 0u;
    v915 = 0u;
    v145 = self->_kCellularWcdmaServingCellRx1EcNoHists;
    v146 = [(NSMutableArray *)v145 countByEnumeratingWithState:&v912 objects:v1065 count:16];
    if (v146)
    {
      v147 = v146;
      v148 = *v913;
      do
      {
        v149 = 0;
        do
        {
          if (*v913 != v148)
          {
            objc_enumerationMutation(v145);
          }

          dictionaryRepresentation21 = [*(*(&v912 + 1) + 8 * v149) dictionaryRepresentation];
          [v144 addObject:dictionaryRepresentation21];

          ++v149;
        }

        while (v147 != v149);
        v147 = [(NSMutableArray *)v145 countByEnumeratingWithState:&v912 objects:v1065 count:16];
      }

      while (v147);
    }

    [dictionary setObject:v144 forKey:@"kCellularWcdmaServingCellRx1EcNoHist"];
  }

  if ([(NSMutableArray *)self->_kCellularWcdmaTxPowerHists count])
  {
    v151 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularWcdmaTxPowerHists, "count")}];
    v908 = 0u;
    v909 = 0u;
    v910 = 0u;
    v911 = 0u;
    v152 = self->_kCellularWcdmaTxPowerHists;
    v153 = [(NSMutableArray *)v152 countByEnumeratingWithState:&v908 objects:v1064 count:16];
    if (v153)
    {
      v154 = v153;
      v155 = *v909;
      do
      {
        v156 = 0;
        do
        {
          if (*v909 != v155)
          {
            objc_enumerationMutation(v152);
          }

          dictionaryRepresentation22 = [*(*(&v908 + 1) + 8 * v156) dictionaryRepresentation];
          [v151 addObject:dictionaryRepresentation22];

          ++v156;
        }

        while (v154 != v156);
        v154 = [(NSMutableArray *)v152 countByEnumeratingWithState:&v908 objects:v1064 count:16];
      }

      while (v154);
    }

    [dictionary setObject:v151 forKey:@"kCellularWcdmaTxPowerHist"];
  }

  if ([(NSMutableArray *)self->_kCellularWcdmaReceiverStatusOnC0Hists count])
  {
    v158 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularWcdmaReceiverStatusOnC0Hists, "count")}];
    v904 = 0u;
    v905 = 0u;
    v906 = 0u;
    v907 = 0u;
    v159 = self->_kCellularWcdmaReceiverStatusOnC0Hists;
    v160 = [(NSMutableArray *)v159 countByEnumeratingWithState:&v904 objects:v1063 count:16];
    if (v160)
    {
      v161 = v160;
      v162 = *v905;
      do
      {
        v163 = 0;
        do
        {
          if (*v905 != v162)
          {
            objc_enumerationMutation(v159);
          }

          dictionaryRepresentation23 = [*(*(&v904 + 1) + 8 * v163) dictionaryRepresentation];
          [v158 addObject:dictionaryRepresentation23];

          ++v163;
        }

        while (v161 != v163);
        v161 = [(NSMutableArray *)v159 countByEnumeratingWithState:&v904 objects:v1063 count:16];
      }

      while (v161);
    }

    [dictionary setObject:v158 forKey:@"kCellularWcdmaReceiverStatusOnC0Hist"];
  }

  if ([(NSMutableArray *)self->_kCellularWcdmaReceiverStatusOnC1Hists count])
  {
    v165 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularWcdmaReceiverStatusOnC1Hists, "count")}];
    v900 = 0u;
    v901 = 0u;
    v902 = 0u;
    v903 = 0u;
    v166 = self->_kCellularWcdmaReceiverStatusOnC1Hists;
    v167 = [(NSMutableArray *)v166 countByEnumeratingWithState:&v900 objects:v1062 count:16];
    if (v167)
    {
      v168 = v167;
      v169 = *v901;
      do
      {
        v170 = 0;
        do
        {
          if (*v901 != v169)
          {
            objc_enumerationMutation(v166);
          }

          dictionaryRepresentation24 = [*(*(&v900 + 1) + 8 * v170) dictionaryRepresentation];
          [v165 addObject:dictionaryRepresentation24];

          ++v170;
        }

        while (v168 != v170);
        v168 = [(NSMutableArray *)v166 countByEnumeratingWithState:&v900 objects:v1062 count:16];
      }

      while (v168);
    }

    [dictionary setObject:v165 forKey:@"kCellularWcdmaReceiverStatusOnC1Hist"];
  }

  if ([(NSMutableArray *)self->_kCellularWcdmaCarrierStatusHists count])
  {
    v172 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularWcdmaCarrierStatusHists, "count")}];
    v896 = 0u;
    v897 = 0u;
    v898 = 0u;
    v899 = 0u;
    v173 = self->_kCellularWcdmaCarrierStatusHists;
    v174 = [(NSMutableArray *)v173 countByEnumeratingWithState:&v896 objects:v1061 count:16];
    if (v174)
    {
      v175 = v174;
      v176 = *v897;
      do
      {
        v177 = 0;
        do
        {
          if (*v897 != v176)
          {
            objc_enumerationMutation(v173);
          }

          dictionaryRepresentation25 = [*(*(&v896 + 1) + 8 * v177) dictionaryRepresentation];
          [v172 addObject:dictionaryRepresentation25];

          ++v177;
        }

        while (v175 != v177);
        v175 = [(NSMutableArray *)v173 countByEnumeratingWithState:&v896 objects:v1061 count:16];
      }

      while (v175);
    }

    [dictionary setObject:v172 forKey:@"kCellularWcdmaCarrierStatusHist"];
  }

  if ([(NSMutableArray *)self->_kCellularWcdmaRabModeHists count])
  {
    v179 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularWcdmaRabModeHists, "count")}];
    v892 = 0u;
    v893 = 0u;
    v894 = 0u;
    v895 = 0u;
    v180 = self->_kCellularWcdmaRabModeHists;
    v181 = [(NSMutableArray *)v180 countByEnumeratingWithState:&v892 objects:v1060 count:16];
    if (v181)
    {
      v182 = v181;
      v183 = *v893;
      do
      {
        v184 = 0;
        do
        {
          if (*v893 != v183)
          {
            objc_enumerationMutation(v180);
          }

          dictionaryRepresentation26 = [*(*(&v892 + 1) + 8 * v184) dictionaryRepresentation];
          [v179 addObject:dictionaryRepresentation26];

          ++v184;
        }

        while (v182 != v184);
        v182 = [(NSMutableArray *)v180 countByEnumeratingWithState:&v892 objects:v1060 count:16];
      }

      while (v182);
    }

    [dictionary setObject:v179 forKey:@"kCellularWcdmaRabModeHist"];
  }

  if ([(NSMutableArray *)self->_kCellularWcdmaRabTypeHists count])
  {
    v186 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularWcdmaRabTypeHists, "count")}];
    v888 = 0u;
    v889 = 0u;
    v890 = 0u;
    v891 = 0u;
    v187 = self->_kCellularWcdmaRabTypeHists;
    v188 = [(NSMutableArray *)v187 countByEnumeratingWithState:&v888 objects:v1059 count:16];
    if (v188)
    {
      v189 = v188;
      v190 = *v889;
      do
      {
        v191 = 0;
        do
        {
          if (*v889 != v190)
          {
            objc_enumerationMutation(v187);
          }

          dictionaryRepresentation27 = [*(*(&v888 + 1) + 8 * v191) dictionaryRepresentation];
          [v186 addObject:dictionaryRepresentation27];

          ++v191;
        }

        while (v189 != v191);
        v189 = [(NSMutableArray *)v187 countByEnumeratingWithState:&v888 objects:v1059 count:16];
      }

      while (v189);
    }

    [dictionary setObject:v186 forKey:@"kCellularWcdmaRabTypeHist"];
  }

  if ([(NSMutableArray *)self->_kCellularWcdmaRrcConnectionStates count])
  {
    v193 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularWcdmaRrcConnectionStates, "count")}];
    v884 = 0u;
    v885 = 0u;
    v886 = 0u;
    v887 = 0u;
    v194 = self->_kCellularWcdmaRrcConnectionStates;
    v195 = [(NSMutableArray *)v194 countByEnumeratingWithState:&v884 objects:v1058 count:16];
    if (v195)
    {
      v196 = v195;
      v197 = *v885;
      do
      {
        v198 = 0;
        do
        {
          if (*v885 != v197)
          {
            objc_enumerationMutation(v194);
          }

          dictionaryRepresentation28 = [*(*(&v884 + 1) + 8 * v198) dictionaryRepresentation];
          [v193 addObject:dictionaryRepresentation28];

          ++v198;
        }

        while (v196 != v198);
        v196 = [(NSMutableArray *)v194 countByEnumeratingWithState:&v884 objects:v1058 count:16];
      }

      while (v196);
    }

    [dictionary setObject:v193 forKey:@"kCellularWcdmaRrcConnectionState"];
  }

  if ([(NSMutableArray *)self->_kCellularWcdmaRrcConfigurations count])
  {
    v200 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularWcdmaRrcConfigurations, "count")}];
    v880 = 0u;
    v881 = 0u;
    v882 = 0u;
    v883 = 0u;
    v201 = self->_kCellularWcdmaRrcConfigurations;
    v202 = [(NSMutableArray *)v201 countByEnumeratingWithState:&v880 objects:v1057 count:16];
    if (v202)
    {
      v203 = v202;
      v204 = *v881;
      do
      {
        v205 = 0;
        do
        {
          if (*v881 != v204)
          {
            objc_enumerationMutation(v201);
          }

          dictionaryRepresentation29 = [*(*(&v880 + 1) + 8 * v205) dictionaryRepresentation];
          [v200 addObject:dictionaryRepresentation29];

          ++v205;
        }

        while (v203 != v205);
        v203 = [(NSMutableArray *)v201 countByEnumeratingWithState:&v880 objects:v1057 count:16];
      }

      while (v203);
    }

    [dictionary setObject:v200 forKey:@"kCellularWcdmaRrcConfiguration"];
  }

  if ([(NSMutableArray *)self->_kCellularWcdmaRabStatus count])
  {
    v207 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularWcdmaRabStatus, "count")}];
    v876 = 0u;
    v877 = 0u;
    v878 = 0u;
    v879 = 0u;
    v208 = self->_kCellularWcdmaRabStatus;
    v209 = [(NSMutableArray *)v208 countByEnumeratingWithState:&v876 objects:v1056 count:16];
    if (v209)
    {
      v210 = v209;
      v211 = *v877;
      do
      {
        v212 = 0;
        do
        {
          if (*v877 != v211)
          {
            objc_enumerationMutation(v208);
          }

          dictionaryRepresentation30 = [*(*(&v876 + 1) + 8 * v212) dictionaryRepresentation];
          [v207 addObject:dictionaryRepresentation30];

          ++v212;
        }

        while (v210 != v212);
        v210 = [(NSMutableArray *)v208 countByEnumeratingWithState:&v876 objects:v1056 count:16];
      }

      while (v210);
    }

    [dictionary setObject:v207 forKey:@"kCellularWcdmaRabStatus"];
  }

  if ([(NSMutableArray *)self->_kCellularWcdmaL1States count])
  {
    v214 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularWcdmaL1States, "count")}];
    v872 = 0u;
    v873 = 0u;
    v874 = 0u;
    v875 = 0u;
    v215 = self->_kCellularWcdmaL1States;
    v216 = [(NSMutableArray *)v215 countByEnumeratingWithState:&v872 objects:v1055 count:16];
    if (v216)
    {
      v217 = v216;
      v218 = *v873;
      do
      {
        v219 = 0;
        do
        {
          if (*v873 != v218)
          {
            objc_enumerationMutation(v215);
          }

          dictionaryRepresentation31 = [*(*(&v872 + 1) + 8 * v219) dictionaryRepresentation];
          [v214 addObject:dictionaryRepresentation31];

          ++v219;
        }

        while (v217 != v219);
        v217 = [(NSMutableArray *)v215 countByEnumeratingWithState:&v872 objects:v1055 count:16];
      }

      while (v217);
    }

    [dictionary setObject:v214 forKey:@"kCellularWcdmaL1State"];
  }

  if ([(NSMutableArray *)self->_kCellularWcdmaDataInactivityBeforeIdles count])
  {
    v221 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularWcdmaDataInactivityBeforeIdles, "count")}];
    v868 = 0u;
    v869 = 0u;
    v870 = 0u;
    v871 = 0u;
    v222 = self->_kCellularWcdmaDataInactivityBeforeIdles;
    v223 = [(NSMutableArray *)v222 countByEnumeratingWithState:&v868 objects:v1054 count:16];
    if (v223)
    {
      v224 = v223;
      v225 = *v869;
      do
      {
        v226 = 0;
        do
        {
          if (*v869 != v225)
          {
            objc_enumerationMutation(v222);
          }

          dictionaryRepresentation32 = [*(*(&v868 + 1) + 8 * v226) dictionaryRepresentation];
          [v221 addObject:dictionaryRepresentation32];

          ++v226;
        }

        while (v224 != v226);
        v224 = [(NSMutableArray *)v222 countByEnumeratingWithState:&v868 objects:v1054 count:16];
      }

      while (v224);
    }

    [dictionary setObject:v221 forKey:@"kCellularWcdmaDataInactivityBeforeIdle"];
  }

  if ([(NSMutableArray *)self->_kCellularWcdmaIdleToConnectedUserDatas count])
  {
    v228 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularWcdmaIdleToConnectedUserDatas, "count")}];
    v864 = 0u;
    v865 = 0u;
    v866 = 0u;
    v867 = 0u;
    v229 = self->_kCellularWcdmaIdleToConnectedUserDatas;
    v230 = [(NSMutableArray *)v229 countByEnumeratingWithState:&v864 objects:v1053 count:16];
    if (v230)
    {
      v231 = v230;
      v232 = *v865;
      do
      {
        v233 = 0;
        do
        {
          if (*v865 != v232)
          {
            objc_enumerationMutation(v229);
          }

          dictionaryRepresentation33 = [*(*(&v864 + 1) + 8 * v233) dictionaryRepresentation];
          [v228 addObject:dictionaryRepresentation33];

          ++v233;
        }

        while (v231 != v233);
        v231 = [(NSMutableArray *)v229 countByEnumeratingWithState:&v864 objects:v1053 count:16];
      }

      while (v231);
    }

    [dictionary setObject:v228 forKey:@"kCellularWcdmaIdleToConnectedUserData"];
  }

  if ([(NSMutableArray *)self->_kCellularWcdmaVadHists count])
  {
    v235 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularWcdmaVadHists, "count")}];
    v860 = 0u;
    v861 = 0u;
    v862 = 0u;
    v863 = 0u;
    v236 = self->_kCellularWcdmaVadHists;
    v237 = [(NSMutableArray *)v236 countByEnumeratingWithState:&v860 objects:v1052 count:16];
    if (v237)
    {
      v238 = v237;
      v239 = *v861;
      do
      {
        v240 = 0;
        do
        {
          if (*v861 != v239)
          {
            objc_enumerationMutation(v236);
          }

          dictionaryRepresentation34 = [*(*(&v860 + 1) + 8 * v240) dictionaryRepresentation];
          [v235 addObject:dictionaryRepresentation34];

          ++v240;
        }

        while (v238 != v240);
        v238 = [(NSMutableArray *)v236 countByEnumeratingWithState:&v860 objects:v1052 count:16];
      }

      while (v238);
    }

    [dictionary setObject:v235 forKey:@"kCellularWcdmaVadHist"];
  }

  if ([(NSMutableArray *)self->_kCellularTdsRxDiversityHists count])
  {
    v242 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularTdsRxDiversityHists, "count")}];
    v856 = 0u;
    v857 = 0u;
    v858 = 0u;
    v859 = 0u;
    v243 = self->_kCellularTdsRxDiversityHists;
    v244 = [(NSMutableArray *)v243 countByEnumeratingWithState:&v856 objects:v1051 count:16];
    if (v244)
    {
      v245 = v244;
      v246 = *v857;
      do
      {
        v247 = 0;
        do
        {
          if (*v857 != v246)
          {
            objc_enumerationMutation(v243);
          }

          dictionaryRepresentation35 = [*(*(&v856 + 1) + 8 * v247) dictionaryRepresentation];
          [v242 addObject:dictionaryRepresentation35];

          ++v247;
        }

        while (v245 != v247);
        v245 = [(NSMutableArray *)v243 countByEnumeratingWithState:&v856 objects:v1051 count:16];
      }

      while (v245);
    }

    [dictionary setObject:v242 forKey:@"kCellularTdsRxDiversityHist"];
  }

  if ([(NSMutableArray *)self->_kCellularTdsServingCellRx0RssiHists count])
  {
    v249 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularTdsServingCellRx0RssiHists, "count")}];
    v852 = 0u;
    v853 = 0u;
    v854 = 0u;
    v855 = 0u;
    v250 = self->_kCellularTdsServingCellRx0RssiHists;
    v251 = [(NSMutableArray *)v250 countByEnumeratingWithState:&v852 objects:v1050 count:16];
    if (v251)
    {
      v252 = v251;
      v253 = *v853;
      do
      {
        v254 = 0;
        do
        {
          if (*v853 != v253)
          {
            objc_enumerationMutation(v250);
          }

          dictionaryRepresentation36 = [*(*(&v852 + 1) + 8 * v254) dictionaryRepresentation];
          [v249 addObject:dictionaryRepresentation36];

          ++v254;
        }

        while (v252 != v254);
        v252 = [(NSMutableArray *)v250 countByEnumeratingWithState:&v852 objects:v1050 count:16];
      }

      while (v252);
    }

    [dictionary setObject:v249 forKey:@"kCellularTdsServingCellRx0RssiHist"];
  }

  if ([(NSMutableArray *)self->_kCellularTdsServingCellRx1RssiHists count])
  {
    v256 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularTdsServingCellRx1RssiHists, "count")}];
    v848 = 0u;
    v849 = 0u;
    v850 = 0u;
    v851 = 0u;
    v257 = self->_kCellularTdsServingCellRx1RssiHists;
    v258 = [(NSMutableArray *)v257 countByEnumeratingWithState:&v848 objects:v1049 count:16];
    if (v258)
    {
      v259 = v258;
      v260 = *v849;
      do
      {
        v261 = 0;
        do
        {
          if (*v849 != v260)
          {
            objc_enumerationMutation(v257);
          }

          dictionaryRepresentation37 = [*(*(&v848 + 1) + 8 * v261) dictionaryRepresentation];
          [v256 addObject:dictionaryRepresentation37];

          ++v261;
        }

        while (v259 != v261);
        v259 = [(NSMutableArray *)v257 countByEnumeratingWithState:&v848 objects:v1049 count:16];
      }

      while (v259);
    }

    [dictionary setObject:v256 forKey:@"kCellularTdsServingCellRx1RssiHist"];
  }

  if ([(NSMutableArray *)self->_kCellularTdsServingCellRx0RscpHists count])
  {
    v263 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularTdsServingCellRx0RscpHists, "count")}];
    v844 = 0u;
    v845 = 0u;
    v846 = 0u;
    v847 = 0u;
    v264 = self->_kCellularTdsServingCellRx0RscpHists;
    v265 = [(NSMutableArray *)v264 countByEnumeratingWithState:&v844 objects:v1048 count:16];
    if (v265)
    {
      v266 = v265;
      v267 = *v845;
      do
      {
        v268 = 0;
        do
        {
          if (*v845 != v267)
          {
            objc_enumerationMutation(v264);
          }

          dictionaryRepresentation38 = [*(*(&v844 + 1) + 8 * v268) dictionaryRepresentation];
          [v263 addObject:dictionaryRepresentation38];

          ++v268;
        }

        while (v266 != v268);
        v266 = [(NSMutableArray *)v264 countByEnumeratingWithState:&v844 objects:v1048 count:16];
      }

      while (v266);
    }

    [dictionary setObject:v263 forKey:@"kCellularTdsServingCellRx0RscpHist"];
  }

  if ([(NSMutableArray *)self->_kCellularTdsServingCellRx1RscpHists count])
  {
    v270 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularTdsServingCellRx1RscpHists, "count")}];
    v840 = 0u;
    v841 = 0u;
    v842 = 0u;
    v843 = 0u;
    v271 = self->_kCellularTdsServingCellRx1RscpHists;
    v272 = [(NSMutableArray *)v271 countByEnumeratingWithState:&v840 objects:v1047 count:16];
    if (v272)
    {
      v273 = v272;
      v274 = *v841;
      do
      {
        v275 = 0;
        do
        {
          if (*v841 != v274)
          {
            objc_enumerationMutation(v271);
          }

          dictionaryRepresentation39 = [*(*(&v840 + 1) + 8 * v275) dictionaryRepresentation];
          [v270 addObject:dictionaryRepresentation39];

          ++v275;
        }

        while (v273 != v275);
        v273 = [(NSMutableArray *)v271 countByEnumeratingWithState:&v840 objects:v1047 count:16];
      }

      while (v273);
    }

    [dictionary setObject:v270 forKey:@"kCellularTdsServingCellRx1RscpHist"];
  }

  if ([(NSMutableArray *)self->_kCellularTdsTxPowerHists count])
  {
    v277 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularTdsTxPowerHists, "count")}];
    v836 = 0u;
    v837 = 0u;
    v838 = 0u;
    v839 = 0u;
    v278 = self->_kCellularTdsTxPowerHists;
    v279 = [(NSMutableArray *)v278 countByEnumeratingWithState:&v836 objects:v1046 count:16];
    if (v279)
    {
      v280 = v279;
      v281 = *v837;
      do
      {
        v282 = 0;
        do
        {
          if (*v837 != v281)
          {
            objc_enumerationMutation(v278);
          }

          dictionaryRepresentation40 = [*(*(&v836 + 1) + 8 * v282) dictionaryRepresentation];
          [v277 addObject:dictionaryRepresentation40];

          ++v282;
        }

        while (v280 != v282);
        v280 = [(NSMutableArray *)v278 countByEnumeratingWithState:&v836 objects:v1046 count:16];
      }

      while (v280);
    }

    [dictionary setObject:v277 forKey:@"kCellularTdsTxPowerHist"];
  }

  if ([(NSMutableArray *)self->_kCellularTdsRabModeHists count])
  {
    v284 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularTdsRabModeHists, "count")}];
    v832 = 0u;
    v833 = 0u;
    v834 = 0u;
    v835 = 0u;
    v285 = self->_kCellularTdsRabModeHists;
    v286 = [(NSMutableArray *)v285 countByEnumeratingWithState:&v832 objects:v1045 count:16];
    if (v286)
    {
      v287 = v286;
      v288 = *v833;
      do
      {
        v289 = 0;
        do
        {
          if (*v833 != v288)
          {
            objc_enumerationMutation(v285);
          }

          dictionaryRepresentation41 = [*(*(&v832 + 1) + 8 * v289) dictionaryRepresentation];
          [v284 addObject:dictionaryRepresentation41];

          ++v289;
        }

        while (v287 != v289);
        v287 = [(NSMutableArray *)v285 countByEnumeratingWithState:&v832 objects:v1045 count:16];
      }

      while (v287);
    }

    [dictionary setObject:v284 forKey:@"kCellularTdsRabModeHist"];
  }

  if ([(NSMutableArray *)self->_kCellularTdsRabTypeHists count])
  {
    v291 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularTdsRabTypeHists, "count")}];
    v828 = 0u;
    v829 = 0u;
    v830 = 0u;
    v831 = 0u;
    v292 = self->_kCellularTdsRabTypeHists;
    v293 = [(NSMutableArray *)v292 countByEnumeratingWithState:&v828 objects:v1044 count:16];
    if (v293)
    {
      v294 = v293;
      v295 = *v829;
      do
      {
        v296 = 0;
        do
        {
          if (*v829 != v295)
          {
            objc_enumerationMutation(v292);
          }

          dictionaryRepresentation42 = [*(*(&v828 + 1) + 8 * v296) dictionaryRepresentation];
          [v291 addObject:dictionaryRepresentation42];

          ++v296;
        }

        while (v294 != v296);
        v294 = [(NSMutableArray *)v292 countByEnumeratingWithState:&v828 objects:v1044 count:16];
      }

      while (v294);
    }

    [dictionary setObject:v291 forKey:@"kCellularTdsRabTypeHist"];
  }

  if ([(NSMutableArray *)self->_kCellularTdsRrcStates count])
  {
    v298 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularTdsRrcStates, "count")}];
    v824 = 0u;
    v825 = 0u;
    v826 = 0u;
    v827 = 0u;
    v299 = self->_kCellularTdsRrcStates;
    v300 = [(NSMutableArray *)v299 countByEnumeratingWithState:&v824 objects:v1043 count:16];
    if (v300)
    {
      v301 = v300;
      v302 = *v825;
      do
      {
        v303 = 0;
        do
        {
          if (*v825 != v302)
          {
            objc_enumerationMutation(v299);
          }

          dictionaryRepresentation43 = [*(*(&v824 + 1) + 8 * v303) dictionaryRepresentation];
          [v298 addObject:dictionaryRepresentation43];

          ++v303;
        }

        while (v301 != v303);
        v301 = [(NSMutableArray *)v299 countByEnumeratingWithState:&v824 objects:v1043 count:16];
      }

      while (v301);
    }

    [dictionary setObject:v298 forKey:@"kCellularTdsRrcState"];
  }

  if ([(NSMutableArray *)self->_kCellularTdsL1States count])
  {
    v305 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularTdsL1States, "count")}];
    v820 = 0u;
    v821 = 0u;
    v822 = 0u;
    v823 = 0u;
    v306 = self->_kCellularTdsL1States;
    v307 = [(NSMutableArray *)v306 countByEnumeratingWithState:&v820 objects:v1042 count:16];
    if (v307)
    {
      v308 = v307;
      v309 = *v821;
      do
      {
        v310 = 0;
        do
        {
          if (*v821 != v309)
          {
            objc_enumerationMutation(v306);
          }

          dictionaryRepresentation44 = [*(*(&v820 + 1) + 8 * v310) dictionaryRepresentation];
          [v305 addObject:dictionaryRepresentation44];

          ++v310;
        }

        while (v308 != v310);
        v308 = [(NSMutableArray *)v306 countByEnumeratingWithState:&v820 objects:v1042 count:16];
      }

      while (v308);
    }

    [dictionary setObject:v305 forKey:@"kCellularTdsL1State"];
  }

  if ([(NSMutableArray *)self->_kCellularLteFwDuplexModes count])
  {
    v312 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularLteFwDuplexModes, "count")}];
    v816 = 0u;
    v817 = 0u;
    v818 = 0u;
    v819 = 0u;
    v313 = self->_kCellularLteFwDuplexModes;
    v314 = [(NSMutableArray *)v313 countByEnumeratingWithState:&v816 objects:v1041 count:16];
    if (v314)
    {
      v315 = v314;
      v316 = *v817;
      do
      {
        v317 = 0;
        do
        {
          if (*v817 != v316)
          {
            objc_enumerationMutation(v313);
          }

          dictionaryRepresentation45 = [*(*(&v816 + 1) + 8 * v317) dictionaryRepresentation];
          [v312 addObject:dictionaryRepresentation45];

          ++v317;
        }

        while (v315 != v317);
        v315 = [(NSMutableArray *)v313 countByEnumeratingWithState:&v816 objects:v1041 count:16];
      }

      while (v315);
    }

    [dictionary setObject:v312 forKey:@"kCellularLteFwDuplexMode"];
  }

  if ([(NSMutableArray *)self->_kCellularLteServingCellRsrpHists count])
  {
    v319 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularLteServingCellRsrpHists, "count")}];
    v812 = 0u;
    v813 = 0u;
    v814 = 0u;
    v815 = 0u;
    v320 = self->_kCellularLteServingCellRsrpHists;
    v321 = [(NSMutableArray *)v320 countByEnumeratingWithState:&v812 objects:v1040 count:16];
    if (v321)
    {
      v322 = v321;
      v323 = *v813;
      do
      {
        v324 = 0;
        do
        {
          if (*v813 != v323)
          {
            objc_enumerationMutation(v320);
          }

          dictionaryRepresentation46 = [*(*(&v812 + 1) + 8 * v324) dictionaryRepresentation];
          [v319 addObject:dictionaryRepresentation46];

          ++v324;
        }

        while (v322 != v324);
        v322 = [(NSMutableArray *)v320 countByEnumeratingWithState:&v812 objects:v1040 count:16];
      }

      while (v322);
    }

    [dictionary setObject:v319 forKey:@"kCellularLteServingCellRsrpHist"];
  }

  if ([(NSMutableArray *)self->_kCellularLteServingCellSinrHists count])
  {
    v326 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularLteServingCellSinrHists, "count")}];
    v808 = 0u;
    v809 = 0u;
    v810 = 0u;
    v811 = 0u;
    v327 = self->_kCellularLteServingCellSinrHists;
    v328 = [(NSMutableArray *)v327 countByEnumeratingWithState:&v808 objects:v1039 count:16];
    if (v328)
    {
      v329 = v328;
      v330 = *v809;
      do
      {
        v331 = 0;
        do
        {
          if (*v809 != v330)
          {
            objc_enumerationMutation(v327);
          }

          dictionaryRepresentation47 = [*(*(&v808 + 1) + 8 * v331) dictionaryRepresentation];
          [v326 addObject:dictionaryRepresentation47];

          ++v331;
        }

        while (v329 != v331);
        v329 = [(NSMutableArray *)v327 countByEnumeratingWithState:&v808 objects:v1039 count:16];
      }

      while (v329);
    }

    [dictionary setObject:v326 forKey:@"kCellularLteServingCellSinrHist"];
  }

  if ([(NSMutableArray *)self->_kCellularLteSleepStateHists count])
  {
    v333 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularLteSleepStateHists, "count")}];
    v804 = 0u;
    v805 = 0u;
    v806 = 0u;
    v807 = 0u;
    v334 = self->_kCellularLteSleepStateHists;
    v335 = [(NSMutableArray *)v334 countByEnumeratingWithState:&v804 objects:v1038 count:16];
    if (v335)
    {
      v336 = v335;
      v337 = *v805;
      do
      {
        v338 = 0;
        do
        {
          if (*v805 != v337)
          {
            objc_enumerationMutation(v334);
          }

          dictionaryRepresentation48 = [*(*(&v804 + 1) + 8 * v338) dictionaryRepresentation];
          [v333 addObject:dictionaryRepresentation48];

          ++v338;
        }

        while (v336 != v338);
        v336 = [(NSMutableArray *)v334 countByEnumeratingWithState:&v804 objects:v1038 count:16];
      }

      while (v336);
    }

    [dictionary setObject:v333 forKey:@"kCellularLteSleepStateHist"];
  }

  if ([(NSMutableArray *)self->_kCellularLteTxPowerHists count])
  {
    v340 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularLteTxPowerHists, "count")}];
    v800 = 0u;
    v801 = 0u;
    v802 = 0u;
    v803 = 0u;
    v341 = self->_kCellularLteTxPowerHists;
    v342 = [(NSMutableArray *)v341 countByEnumeratingWithState:&v800 objects:v1037 count:16];
    if (v342)
    {
      v343 = v342;
      v344 = *v801;
      do
      {
        v345 = 0;
        do
        {
          if (*v801 != v344)
          {
            objc_enumerationMutation(v341);
          }

          dictionaryRepresentation49 = [*(*(&v800 + 1) + 8 * v345) dictionaryRepresentation];
          [v340 addObject:dictionaryRepresentation49];

          ++v345;
        }

        while (v343 != v345);
        v343 = [(NSMutableArray *)v341 countByEnumeratingWithState:&v800 objects:v1037 count:16];
      }

      while (v343);
    }

    [dictionary setObject:v340 forKey:@"kCellularLteTxPowerHist"];
  }

  if ([(NSMutableArray *)self->_kCellularLteDlSccStateHists count])
  {
    v347 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularLteDlSccStateHists, "count")}];
    v796 = 0u;
    v797 = 0u;
    v798 = 0u;
    v799 = 0u;
    v348 = self->_kCellularLteDlSccStateHists;
    v349 = [(NSMutableArray *)v348 countByEnumeratingWithState:&v796 objects:v1036 count:16];
    if (v349)
    {
      v350 = v349;
      v351 = *v797;
      do
      {
        v352 = 0;
        do
        {
          if (*v797 != v351)
          {
            objc_enumerationMutation(v348);
          }

          dictionaryRepresentation50 = [*(*(&v796 + 1) + 8 * v352) dictionaryRepresentation];
          [v347 addObject:dictionaryRepresentation50];

          ++v352;
        }

        while (v350 != v352);
        v350 = [(NSMutableArray *)v348 countByEnumeratingWithState:&v796 objects:v1036 count:16];
      }

      while (v350);
    }

    [dictionary setObject:v347 forKey:@"kCellularLteDlSccStateHist"];
  }

  if ([(NSMutableArray *)self->_kCellularLteUlSccStateHists count])
  {
    v354 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularLteUlSccStateHists, "count")}];
    v792 = 0u;
    v793 = 0u;
    v794 = 0u;
    v795 = 0u;
    v355 = self->_kCellularLteUlSccStateHists;
    v356 = [(NSMutableArray *)v355 countByEnumeratingWithState:&v792 objects:v1035 count:16];
    if (v356)
    {
      v357 = v356;
      v358 = *v793;
      do
      {
        v359 = 0;
        do
        {
          if (*v793 != v358)
          {
            objc_enumerationMutation(v355);
          }

          dictionaryRepresentation51 = [*(*(&v792 + 1) + 8 * v359) dictionaryRepresentation];
          [v354 addObject:dictionaryRepresentation51];

          ++v359;
        }

        while (v357 != v359);
        v357 = [(NSMutableArray *)v355 countByEnumeratingWithState:&v792 objects:v1035 count:16];
      }

      while (v357);
    }

    [dictionary setObject:v354 forKey:@"kCellularLteUlSccStateHist"];
  }

  if ([(NSMutableArray *)self->_kCellularLteAdvancedRxStateHists count])
  {
    v361 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularLteAdvancedRxStateHists, "count")}];
    v788 = 0u;
    v789 = 0u;
    v790 = 0u;
    v791 = 0u;
    v362 = self->_kCellularLteAdvancedRxStateHists;
    v363 = [(NSMutableArray *)v362 countByEnumeratingWithState:&v788 objects:v1034 count:16];
    if (v363)
    {
      v364 = v363;
      v365 = *v789;
      do
      {
        v366 = 0;
        do
        {
          if (*v789 != v365)
          {
            objc_enumerationMutation(v362);
          }

          dictionaryRepresentation52 = [*(*(&v788 + 1) + 8 * v366) dictionaryRepresentation];
          [v361 addObject:dictionaryRepresentation52];

          ++v366;
        }

        while (v364 != v366);
        v364 = [(NSMutableArray *)v362 countByEnumeratingWithState:&v788 objects:v1034 count:16];
      }

      while (v364);
    }

    [dictionary setObject:v361 forKey:@"kCellularLteAdvancedRxStateHist"];
  }

  if ([(NSMutableArray *)self->_kCellularLteComponentCarrierInfos count])
  {
    v368 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularLteComponentCarrierInfos, "count")}];
    v784 = 0u;
    v785 = 0u;
    v786 = 0u;
    v787 = 0u;
    v369 = self->_kCellularLteComponentCarrierInfos;
    v370 = [(NSMutableArray *)v369 countByEnumeratingWithState:&v784 objects:v1033 count:16];
    if (v370)
    {
      v371 = v370;
      v372 = *v785;
      do
      {
        v373 = 0;
        do
        {
          if (*v785 != v372)
          {
            objc_enumerationMutation(v369);
          }

          dictionaryRepresentation53 = [*(*(&v784 + 1) + 8 * v373) dictionaryRepresentation];
          [v368 addObject:dictionaryRepresentation53];

          ++v373;
        }

        while (v371 != v373);
        v371 = [(NSMutableArray *)v369 countByEnumeratingWithState:&v784 objects:v1033 count:16];
      }

      while (v371);
    }

    [dictionary setObject:v368 forKey:@"kCellularLteComponentCarrierInfo"];
  }

  if ([(NSMutableArray *)self->_kCellularLteRxTxStateHists count])
  {
    v375 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularLteRxTxStateHists, "count")}];
    v780 = 0u;
    v781 = 0u;
    v782 = 0u;
    v783 = 0u;
    v376 = self->_kCellularLteRxTxStateHists;
    v377 = [(NSMutableArray *)v376 countByEnumeratingWithState:&v780 objects:v1032 count:16];
    if (v377)
    {
      v378 = v377;
      v379 = *v781;
      do
      {
        v380 = 0;
        do
        {
          if (*v781 != v379)
          {
            objc_enumerationMutation(v376);
          }

          dictionaryRepresentation54 = [*(*(&v780 + 1) + 8 * v380) dictionaryRepresentation];
          [v375 addObject:dictionaryRepresentation54];

          ++v380;
        }

        while (v378 != v380);
        v378 = [(NSMutableArray *)v376 countByEnumeratingWithState:&v780 objects:v1032 count:16];
      }

      while (v378);
    }

    [dictionary setObject:v375 forKey:@"kCellularLteRxTxStateHist"];
  }

  if ([(NSMutableArray *)self->_kCellularLteTotalDlTbsHists count])
  {
    v382 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularLteTotalDlTbsHists, "count")}];
    v776 = 0u;
    v777 = 0u;
    v778 = 0u;
    v779 = 0u;
    v383 = self->_kCellularLteTotalDlTbsHists;
    v384 = [(NSMutableArray *)v383 countByEnumeratingWithState:&v776 objects:v1031 count:16];
    if (v384)
    {
      v385 = v384;
      v386 = *v777;
      do
      {
        v387 = 0;
        do
        {
          if (*v777 != v386)
          {
            objc_enumerationMutation(v383);
          }

          dictionaryRepresentation55 = [*(*(&v776 + 1) + 8 * v387) dictionaryRepresentation];
          [v382 addObject:dictionaryRepresentation55];

          ++v387;
        }

        while (v385 != v387);
        v385 = [(NSMutableArray *)v383 countByEnumeratingWithState:&v776 objects:v1031 count:16];
      }

      while (v385);
    }

    [dictionary setObject:v382 forKey:@"kCellularLteTotalDlTbsHist"];
  }

  if ([(NSMutableArray *)self->_kCellularLteDlSccStateHistV3s count])
  {
    v389 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularLteDlSccStateHistV3s, "count")}];
    v772 = 0u;
    v773 = 0u;
    v774 = 0u;
    v775 = 0u;
    v390 = self->_kCellularLteDlSccStateHistV3s;
    v391 = [(NSMutableArray *)v390 countByEnumeratingWithState:&v772 objects:v1030 count:16];
    if (v391)
    {
      v392 = v391;
      v393 = *v773;
      do
      {
        v394 = 0;
        do
        {
          if (*v773 != v393)
          {
            objc_enumerationMutation(v390);
          }

          dictionaryRepresentation56 = [*(*(&v772 + 1) + 8 * v394) dictionaryRepresentation];
          [v389 addObject:dictionaryRepresentation56];

          ++v394;
        }

        while (v392 != v394);
        v392 = [(NSMutableArray *)v390 countByEnumeratingWithState:&v772 objects:v1030 count:16];
      }

      while (v392);
    }

    [dictionary setObject:v389 forKey:@"kCellularLteDlSccStateHistV3"];
  }

  if ([(NSMutableArray *)self->_kCellularLteRxDiversityHists count])
  {
    v396 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularLteRxDiversityHists, "count")}];
    v768 = 0u;
    v769 = 0u;
    v770 = 0u;
    v771 = 0u;
    v397 = self->_kCellularLteRxDiversityHists;
    v398 = [(NSMutableArray *)v397 countByEnumeratingWithState:&v768 objects:v1029 count:16];
    if (v398)
    {
      v399 = v398;
      v400 = *v769;
      do
      {
        v401 = 0;
        do
        {
          if (*v769 != v400)
          {
            objc_enumerationMutation(v397);
          }

          dictionaryRepresentation57 = [*(*(&v768 + 1) + 8 * v401) dictionaryRepresentation];
          [v396 addObject:dictionaryRepresentation57];

          ++v401;
        }

        while (v399 != v401);
        v399 = [(NSMutableArray *)v397 countByEnumeratingWithState:&v768 objects:v1029 count:16];
      }

      while (v399);
    }

    [dictionary setObject:v396 forKey:@"kCellularLteRxDiversityHist"];
  }

  if ([(NSMutableArray *)self->_kCellularLtePdcchStateHists count])
  {
    v403 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularLtePdcchStateHists, "count")}];
    v764 = 0u;
    v765 = 0u;
    v766 = 0u;
    v767 = 0u;
    v404 = self->_kCellularLtePdcchStateHists;
    v405 = [(NSMutableArray *)v404 countByEnumeratingWithState:&v764 objects:v1028 count:16];
    if (v405)
    {
      v406 = v405;
      v407 = *v765;
      do
      {
        v408 = 0;
        do
        {
          if (*v765 != v407)
          {
            objc_enumerationMutation(v404);
          }

          dictionaryRepresentation58 = [*(*(&v764 + 1) + 8 * v408) dictionaryRepresentation];
          [v403 addObject:dictionaryRepresentation58];

          ++v408;
        }

        while (v406 != v408);
        v406 = [(NSMutableArray *)v404 countByEnumeratingWithState:&v764 objects:v1028 count:16];
      }

      while (v406);
    }

    [dictionary setObject:v403 forKey:@"kCellularLtePdcchStateHist"];
  }

  if ([(NSMutableArray *)self->_kCellularLteRrcStates count])
  {
    v410 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularLteRrcStates, "count")}];
    v760 = 0u;
    v761 = 0u;
    v762 = 0u;
    v763 = 0u;
    v411 = self->_kCellularLteRrcStates;
    v412 = [(NSMutableArray *)v411 countByEnumeratingWithState:&v760 objects:v1027 count:16];
    if (v412)
    {
      v413 = v412;
      v414 = *v761;
      do
      {
        v415 = 0;
        do
        {
          if (*v761 != v414)
          {
            objc_enumerationMutation(v411);
          }

          dictionaryRepresentation59 = [*(*(&v760 + 1) + 8 * v415) dictionaryRepresentation];
          [v410 addObject:dictionaryRepresentation59];

          ++v415;
        }

        while (v413 != v415);
        v413 = [(NSMutableArray *)v411 countByEnumeratingWithState:&v760 objects:v1027 count:16];
      }

      while (v413);
    }

    [dictionary setObject:v410 forKey:@"kCellularLteRrcState"];
  }

  if ([(NSMutableArray *)self->_kCellularLtePagingCycles count])
  {
    v417 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularLtePagingCycles, "count")}];
    v756 = 0u;
    v757 = 0u;
    v758 = 0u;
    v759 = 0u;
    v418 = self->_kCellularLtePagingCycles;
    v419 = [(NSMutableArray *)v418 countByEnumeratingWithState:&v756 objects:v1026 count:16];
    if (v419)
    {
      v420 = v419;
      v421 = *v757;
      do
      {
        v422 = 0;
        do
        {
          if (*v757 != v421)
          {
            objc_enumerationMutation(v418);
          }

          dictionaryRepresentation60 = [*(*(&v756 + 1) + 8 * v422) dictionaryRepresentation];
          [v417 addObject:dictionaryRepresentation60];

          ++v422;
        }

        while (v420 != v422);
        v420 = [(NSMutableArray *)v418 countByEnumeratingWithState:&v756 objects:v1026 count:16];
      }

      while (v420);
    }

    [dictionary setObject:v417 forKey:@"kCellularLtePagingCycle"];
  }

  if ([(NSMutableArray *)self->_kCellularLteCdrxConfigs count])
  {
    v424 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularLteCdrxConfigs, "count")}];
    v752 = 0u;
    v753 = 0u;
    v754 = 0u;
    v755 = 0u;
    v425 = self->_kCellularLteCdrxConfigs;
    v426 = [(NSMutableArray *)v425 countByEnumeratingWithState:&v752 objects:v1025 count:16];
    if (v426)
    {
      v427 = v426;
      v428 = *v753;
      do
      {
        v429 = 0;
        do
        {
          if (*v753 != v428)
          {
            objc_enumerationMutation(v425);
          }

          dictionaryRepresentation61 = [*(*(&v752 + 1) + 8 * v429) dictionaryRepresentation];
          [v424 addObject:dictionaryRepresentation61];

          ++v429;
        }

        while (v427 != v429);
        v427 = [(NSMutableArray *)v425 countByEnumeratingWithState:&v752 objects:v1025 count:16];
      }

      while (v427);
    }

    [dictionary setObject:v424 forKey:@"kCellularLteCdrxConfig"];
  }

  if ([(NSMutableArray *)self->_kCellularLteRadioLinkFailures count])
  {
    v431 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularLteRadioLinkFailures, "count")}];
    v748 = 0u;
    v749 = 0u;
    v750 = 0u;
    v751 = 0u;
    v432 = self->_kCellularLteRadioLinkFailures;
    v433 = [(NSMutableArray *)v432 countByEnumeratingWithState:&v748 objects:v1024 count:16];
    if (v433)
    {
      v434 = v433;
      v435 = *v749;
      do
      {
        v436 = 0;
        do
        {
          if (*v749 != v435)
          {
            objc_enumerationMutation(v432);
          }

          dictionaryRepresentation62 = [*(*(&v748 + 1) + 8 * v436) dictionaryRepresentation];
          [v431 addObject:dictionaryRepresentation62];

          ++v436;
        }

        while (v434 != v436);
        v434 = [(NSMutableArray *)v432 countByEnumeratingWithState:&v748 objects:v1024 count:16];
      }

      while (v434);
    }

    [dictionary setObject:v431 forKey:@"kCellularLteRadioLinkFailure"];
  }

  if ([(NSMutableArray *)self->_kCellularLtePdcchStateStats count])
  {
    v438 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularLtePdcchStateStats, "count")}];
    v744 = 0u;
    v745 = 0u;
    v746 = 0u;
    v747 = 0u;
    v439 = self->_kCellularLtePdcchStateStats;
    v440 = [(NSMutableArray *)v439 countByEnumeratingWithState:&v744 objects:v1023 count:16];
    if (v440)
    {
      v441 = v440;
      v442 = *v745;
      do
      {
        v443 = 0;
        do
        {
          if (*v745 != v442)
          {
            objc_enumerationMutation(v439);
          }

          dictionaryRepresentation63 = [*(*(&v744 + 1) + 8 * v443) dictionaryRepresentation];
          [v438 addObject:dictionaryRepresentation63];

          ++v443;
        }

        while (v441 != v443);
        v441 = [(NSMutableArray *)v439 countByEnumeratingWithState:&v744 objects:v1023 count:16];
      }

      while (v441);
    }

    [dictionary setObject:v438 forKey:@"kCellularLtePdcchStateStats"];
  }

  if ([(NSMutableArray *)self->_kCellularLqmStateChanges count])
  {
    v445 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularLqmStateChanges, "count")}];
    v740 = 0u;
    v741 = 0u;
    v742 = 0u;
    v743 = 0u;
    v446 = self->_kCellularLqmStateChanges;
    v447 = [(NSMutableArray *)v446 countByEnumeratingWithState:&v740 objects:v1022 count:16];
    if (v447)
    {
      v448 = v447;
      v449 = *v741;
      do
      {
        v450 = 0;
        do
        {
          if (*v741 != v449)
          {
            objc_enumerationMutation(v446);
          }

          dictionaryRepresentation64 = [*(*(&v740 + 1) + 8 * v450) dictionaryRepresentation];
          [v445 addObject:dictionaryRepresentation64];

          ++v450;
        }

        while (v448 != v450);
        v448 = [(NSMutableArray *)v446 countByEnumeratingWithState:&v740 objects:v1022 count:16];
      }

      while (v448);
    }

    [dictionary setObject:v445 forKey:@"kCellularLqmStateChange"];
  }

  if ([(NSMutableArray *)self->_kCellularServiceLosts count])
  {
    v452 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularServiceLosts, "count")}];
    v736 = 0u;
    v737 = 0u;
    v738 = 0u;
    v739 = 0u;
    v453 = self->_kCellularServiceLosts;
    v454 = [(NSMutableArray *)v453 countByEnumeratingWithState:&v736 objects:v1021 count:16];
    if (v454)
    {
      v455 = v454;
      v456 = *v737;
      do
      {
        v457 = 0;
        do
        {
          if (*v737 != v456)
          {
            objc_enumerationMutation(v453);
          }

          dictionaryRepresentation65 = [*(*(&v736 + 1) + 8 * v457) dictionaryRepresentation];
          [v452 addObject:dictionaryRepresentation65];

          ++v457;
        }

        while (v455 != v457);
        v455 = [(NSMutableArray *)v453 countByEnumeratingWithState:&v736 objects:v1021 count:16];
      }

      while (v455);
    }

    [dictionary setObject:v452 forKey:@"kCellularServiceLost"];
  }

  if ([(NSMutableArray *)self->_kCellularProtocolStackStateHists count])
  {
    v459 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularProtocolStackStateHists, "count")}];
    v732 = 0u;
    v733 = 0u;
    v734 = 0u;
    v735 = 0u;
    v460 = self->_kCellularProtocolStackStateHists;
    v461 = [(NSMutableArray *)v460 countByEnumeratingWithState:&v732 objects:v1020 count:16];
    if (v461)
    {
      v462 = v461;
      v463 = *v733;
      do
      {
        v464 = 0;
        do
        {
          if (*v733 != v463)
          {
            objc_enumerationMutation(v460);
          }

          dictionaryRepresentation66 = [*(*(&v732 + 1) + 8 * v464) dictionaryRepresentation];
          [v459 addObject:dictionaryRepresentation66];

          ++v464;
        }

        while (v462 != v464);
        v462 = [(NSMutableArray *)v460 countByEnumeratingWithState:&v732 objects:v1020 count:16];
      }

      while (v462);
    }

    [dictionary setObject:v459 forKey:@"kCellularProtocolStackStateHist"];
  }

  if ([(NSMutableArray *)self->_kCellularCellPlmnSearchCounts count])
  {
    v466 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularCellPlmnSearchCounts, "count")}];
    v728 = 0u;
    v729 = 0u;
    v730 = 0u;
    v731 = 0u;
    v467 = self->_kCellularCellPlmnSearchCounts;
    v468 = [(NSMutableArray *)v467 countByEnumeratingWithState:&v728 objects:v1019 count:16];
    if (v468)
    {
      v469 = v468;
      v470 = *v729;
      do
      {
        v471 = 0;
        do
        {
          if (*v729 != v470)
          {
            objc_enumerationMutation(v467);
          }

          dictionaryRepresentation67 = [*(*(&v728 + 1) + 8 * v471) dictionaryRepresentation];
          [v466 addObject:dictionaryRepresentation67];

          ++v471;
        }

        while (v469 != v471);
        v469 = [(NSMutableArray *)v467 countByEnumeratingWithState:&v728 objects:v1019 count:16];
      }

      while (v469);
    }

    [dictionary setObject:v466 forKey:@"kCellularCellPlmnSearchCount"];
  }

  if ([(NSMutableArray *)self->_kCellularCellPlmnSearchHists count])
  {
    v473 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularCellPlmnSearchHists, "count")}];
    v724 = 0u;
    v725 = 0u;
    v726 = 0u;
    v727 = 0u;
    v474 = self->_kCellularCellPlmnSearchHists;
    v475 = [(NSMutableArray *)v474 countByEnumeratingWithState:&v724 objects:v1018 count:16];
    if (v475)
    {
      v476 = v475;
      v477 = *v725;
      do
      {
        v478 = 0;
        do
        {
          if (*v725 != v477)
          {
            objc_enumerationMutation(v474);
          }

          dictionaryRepresentation68 = [*(*(&v724 + 1) + 8 * v478) dictionaryRepresentation];
          [v473 addObject:dictionaryRepresentation68];

          ++v478;
        }

        while (v476 != v478);
        v476 = [(NSMutableArray *)v474 countByEnumeratingWithState:&v724 objects:v1018 count:16];
      }

      while (v476);
    }

    [dictionary setObject:v473 forKey:@"kCellularCellPlmnSearchHist"];
  }

  if ([(NSMutableArray *)self->_kCellularProtocolStackPowerStates count])
  {
    v480 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularProtocolStackPowerStates, "count")}];
    v720 = 0u;
    v721 = 0u;
    v722 = 0u;
    v723 = 0u;
    v481 = self->_kCellularProtocolStackPowerStates;
    v482 = [(NSMutableArray *)v481 countByEnumeratingWithState:&v720 objects:v1017 count:16];
    if (v482)
    {
      v483 = v482;
      v484 = *v721;
      do
      {
        v485 = 0;
        do
        {
          if (*v721 != v484)
          {
            objc_enumerationMutation(v481);
          }

          dictionaryRepresentation69 = [*(*(&v720 + 1) + 8 * v485) dictionaryRepresentation];
          [v480 addObject:dictionaryRepresentation69];

          ++v485;
        }

        while (v483 != v485);
        v483 = [(NSMutableArray *)v481 countByEnumeratingWithState:&v720 objects:v1017 count:16];
      }

      while (v483);
    }

    [dictionary setObject:v480 forKey:@"kCellularProtocolStackPowerState"];
  }

  if ([(NSMutableArray *)self->_kCellularDownlinkIpPacketFilterStatus count])
  {
    v487 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularDownlinkIpPacketFilterStatus, "count")}];
    v716 = 0u;
    v717 = 0u;
    v718 = 0u;
    v719 = 0u;
    v488 = self->_kCellularDownlinkIpPacketFilterStatus;
    v489 = [(NSMutableArray *)v488 countByEnumeratingWithState:&v716 objects:v1016 count:16];
    if (v489)
    {
      v490 = v489;
      v491 = *v717;
      do
      {
        v492 = 0;
        do
        {
          if (*v717 != v491)
          {
            objc_enumerationMutation(v488);
          }

          dictionaryRepresentation70 = [*(*(&v716 + 1) + 8 * v492) dictionaryRepresentation];
          [v487 addObject:dictionaryRepresentation70];

          ++v492;
        }

        while (v490 != v492);
        v490 = [(NSMutableArray *)v488 countByEnumeratingWithState:&v716 objects:v1016 count:16];
      }

      while (v490);
    }

    [dictionary setObject:v487 forKey:@"kCellularDownlinkIpPacketFilterStatus"];
  }

  if ([(NSMutableArray *)self->_kCellularServingCellRfBandHists count])
  {
    v494 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularServingCellRfBandHists, "count")}];
    v712 = 0u;
    v713 = 0u;
    v714 = 0u;
    v715 = 0u;
    v495 = self->_kCellularServingCellRfBandHists;
    v496 = [(NSMutableArray *)v495 countByEnumeratingWithState:&v712 objects:v1015 count:16];
    if (v496)
    {
      v497 = v496;
      v498 = *v713;
      do
      {
        v499 = 0;
        do
        {
          if (*v713 != v498)
          {
            objc_enumerationMutation(v495);
          }

          dictionaryRepresentation71 = [*(*(&v712 + 1) + 8 * v499) dictionaryRepresentation];
          [v494 addObject:dictionaryRepresentation71];

          ++v499;
        }

        while (v497 != v499);
        v497 = [(NSMutableArray *)v495 countByEnumeratingWithState:&v712 objects:v1015 count:16];
      }

      while (v497);
    }

    [dictionary setObject:v494 forKey:@"kCellularServingCellRfBandHist"];
  }

  if ([(NSMutableArray *)self->_kCellularProtocolStackStateHist2s count])
  {
    v501 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularProtocolStackStateHist2s, "count")}];
    v708 = 0u;
    v709 = 0u;
    v710 = 0u;
    v711 = 0u;
    v502 = self->_kCellularProtocolStackStateHist2s;
    v503 = [(NSMutableArray *)v502 countByEnumeratingWithState:&v708 objects:v1014 count:16];
    if (v503)
    {
      v504 = v503;
      v505 = *v709;
      do
      {
        v506 = 0;
        do
        {
          if (*v709 != v505)
          {
            objc_enumerationMutation(v502);
          }

          dictionaryRepresentation72 = [*(*(&v708 + 1) + 8 * v506) dictionaryRepresentation];
          [v501 addObject:dictionaryRepresentation72];

          ++v506;
        }

        while (v504 != v506);
        v504 = [(NSMutableArray *)v502 countByEnumeratingWithState:&v708 objects:v1014 count:16];
      }

      while (v504);
    }

    [dictionary setObject:v501 forKey:@"kCellularProtocolStackStateHist2"];
  }

  if ([(NSMutableArray *)self->_kCellularProtocolStackStates count])
  {
    v508 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularProtocolStackStates, "count")}];
    v704 = 0u;
    v705 = 0u;
    v706 = 0u;
    v707 = 0u;
    v509 = self->_kCellularProtocolStackStates;
    v510 = [(NSMutableArray *)v509 countByEnumeratingWithState:&v704 objects:v1013 count:16];
    if (v510)
    {
      v511 = v510;
      v512 = *v705;
      do
      {
        v513 = 0;
        do
        {
          if (*v705 != v512)
          {
            objc_enumerationMutation(v509);
          }

          dictionaryRepresentation73 = [*(*(&v704 + 1) + 8 * v513) dictionaryRepresentation];
          [v508 addObject:dictionaryRepresentation73];

          ++v513;
        }

        while (v511 != v513);
        v511 = [(NSMutableArray *)v509 countByEnumeratingWithState:&v704 objects:v1013 count:16];
      }

      while (v511);
    }

    [dictionary setObject:v508 forKey:@"kCellularProtocolStackState"];
  }

  if ([(NSMutableArray *)self->_kCellularCdma1XRxDiversityHists count])
  {
    v515 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularCdma1XRxDiversityHists, "count")}];
    v700 = 0u;
    v701 = 0u;
    v702 = 0u;
    v703 = 0u;
    v516 = self->_kCellularCdma1XRxDiversityHists;
    v517 = [(NSMutableArray *)v516 countByEnumeratingWithState:&v700 objects:v1012 count:16];
    if (v517)
    {
      v518 = v517;
      v519 = *v701;
      do
      {
        v520 = 0;
        do
        {
          if (*v701 != v519)
          {
            objc_enumerationMutation(v516);
          }

          dictionaryRepresentation74 = [*(*(&v700 + 1) + 8 * v520) dictionaryRepresentation];
          [v515 addObject:dictionaryRepresentation74];

          ++v520;
        }

        while (v518 != v520);
        v518 = [(NSMutableArray *)v516 countByEnumeratingWithState:&v700 objects:v1012 count:16];
      }

      while (v518);
    }

    [dictionary setObject:v515 forKey:@"kCellularCdma1XRxDiversityHist"];
  }

  if ([(NSMutableArray *)self->_kCellularCdma1XServingCellRx0RssiHists count])
  {
    v522 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularCdma1XServingCellRx0RssiHists, "count")}];
    v696 = 0u;
    v697 = 0u;
    v698 = 0u;
    v699 = 0u;
    v523 = self->_kCellularCdma1XServingCellRx0RssiHists;
    v524 = [(NSMutableArray *)v523 countByEnumeratingWithState:&v696 objects:v1011 count:16];
    if (v524)
    {
      v525 = v524;
      v526 = *v697;
      do
      {
        v527 = 0;
        do
        {
          if (*v697 != v526)
          {
            objc_enumerationMutation(v523);
          }

          dictionaryRepresentation75 = [*(*(&v696 + 1) + 8 * v527) dictionaryRepresentation];
          [v522 addObject:dictionaryRepresentation75];

          ++v527;
        }

        while (v525 != v527);
        v525 = [(NSMutableArray *)v523 countByEnumeratingWithState:&v696 objects:v1011 count:16];
      }

      while (v525);
    }

    [dictionary setObject:v522 forKey:@"kCellularCdma1XServingCellRx0RssiHist"];
  }

  if ([(NSMutableArray *)self->_kCellularCdma1XServingCellRx1RssiHists count])
  {
    v529 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularCdma1XServingCellRx1RssiHists, "count")}];
    v692 = 0u;
    v693 = 0u;
    v694 = 0u;
    v695 = 0u;
    v530 = self->_kCellularCdma1XServingCellRx1RssiHists;
    v531 = [(NSMutableArray *)v530 countByEnumeratingWithState:&v692 objects:v1010 count:16];
    if (v531)
    {
      v532 = v531;
      v533 = *v693;
      do
      {
        v534 = 0;
        do
        {
          if (*v693 != v533)
          {
            objc_enumerationMutation(v530);
          }

          dictionaryRepresentation76 = [*(*(&v692 + 1) + 8 * v534) dictionaryRepresentation];
          [v529 addObject:dictionaryRepresentation76];

          ++v534;
        }

        while (v532 != v534);
        v532 = [(NSMutableArray *)v530 countByEnumeratingWithState:&v692 objects:v1010 count:16];
      }

      while (v532);
    }

    [dictionary setObject:v529 forKey:@"kCellularCdma1XServingCellRx1RssiHist"];
  }

  if ([(NSMutableArray *)self->_kCellularCdma1XServingCellRx0EcIoHists count])
  {
    v536 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularCdma1XServingCellRx0EcIoHists, "count")}];
    v688 = 0u;
    v689 = 0u;
    v690 = 0u;
    v691 = 0u;
    v537 = self->_kCellularCdma1XServingCellRx0EcIoHists;
    v538 = [(NSMutableArray *)v537 countByEnumeratingWithState:&v688 objects:v1009 count:16];
    if (v538)
    {
      v539 = v538;
      v540 = *v689;
      do
      {
        v541 = 0;
        do
        {
          if (*v689 != v540)
          {
            objc_enumerationMutation(v537);
          }

          dictionaryRepresentation77 = [*(*(&v688 + 1) + 8 * v541) dictionaryRepresentation];
          [v536 addObject:dictionaryRepresentation77];

          ++v541;
        }

        while (v539 != v541);
        v539 = [(NSMutableArray *)v537 countByEnumeratingWithState:&v688 objects:v1009 count:16];
      }

      while (v539);
    }

    [dictionary setObject:v536 forKey:@"kCellularCdma1XServingCellRx0EcIoHist"];
  }

  if ([(NSMutableArray *)self->_kCellularCdma1XServingCellRx1EcIoHists count])
  {
    v543 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularCdma1XServingCellRx1EcIoHists, "count")}];
    v684 = 0u;
    v685 = 0u;
    v686 = 0u;
    v687 = 0u;
    v544 = self->_kCellularCdma1XServingCellRx1EcIoHists;
    v545 = [(NSMutableArray *)v544 countByEnumeratingWithState:&v684 objects:v1008 count:16];
    if (v545)
    {
      v546 = v545;
      v547 = *v685;
      do
      {
        v548 = 0;
        do
        {
          if (*v685 != v547)
          {
            objc_enumerationMutation(v544);
          }

          dictionaryRepresentation78 = [*(*(&v684 + 1) + 8 * v548) dictionaryRepresentation];
          [v543 addObject:dictionaryRepresentation78];

          ++v548;
        }

        while (v546 != v548);
        v546 = [(NSMutableArray *)v544 countByEnumeratingWithState:&v684 objects:v1008 count:16];
      }

      while (v546);
    }

    [dictionary setObject:v543 forKey:@"kCellularCdma1XServingCellRx1EcIoHist"];
  }

  if ([(NSMutableArray *)self->_kCellularCdma1XTxPowerHists count])
  {
    v550 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularCdma1XTxPowerHists, "count")}];
    v680 = 0u;
    v681 = 0u;
    v682 = 0u;
    v683 = 0u;
    v551 = self->_kCellularCdma1XTxPowerHists;
    v552 = [(NSMutableArray *)v551 countByEnumeratingWithState:&v680 objects:v1007 count:16];
    if (v552)
    {
      v553 = v552;
      v554 = *v681;
      do
      {
        v555 = 0;
        do
        {
          if (*v681 != v554)
          {
            objc_enumerationMutation(v551);
          }

          dictionaryRepresentation79 = [*(*(&v680 + 1) + 8 * v555) dictionaryRepresentation];
          [v550 addObject:dictionaryRepresentation79];

          ++v555;
        }

        while (v553 != v555);
        v553 = [(NSMutableArray *)v551 countByEnumeratingWithState:&v680 objects:v1007 count:16];
      }

      while (v553);
    }

    [dictionary setObject:v550 forKey:@"kCellularCdma1XTxPowerHist"];
  }

  if ([(NSMutableArray *)self->_kCellularCdma1XProtocolStackStateHists count])
  {
    v557 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularCdma1XProtocolStackStateHists, "count")}];
    v676 = 0u;
    v677 = 0u;
    v678 = 0u;
    v679 = 0u;
    v558 = self->_kCellularCdma1XProtocolStackStateHists;
    v559 = [(NSMutableArray *)v558 countByEnumeratingWithState:&v676 objects:v1006 count:16];
    if (v559)
    {
      v560 = v559;
      v561 = *v677;
      do
      {
        v562 = 0;
        do
        {
          if (*v677 != v561)
          {
            objc_enumerationMutation(v558);
          }

          dictionaryRepresentation80 = [*(*(&v676 + 1) + 8 * v562) dictionaryRepresentation];
          [v557 addObject:dictionaryRepresentation80];

          ++v562;
        }

        while (v560 != v562);
        v560 = [(NSMutableArray *)v558 countByEnumeratingWithState:&v676 objects:v1006 count:16];
      }

      while (v560);
    }

    [dictionary setObject:v557 forKey:@"kCellularCdma1XProtocolStackStateHist"];
  }

  if ([(NSMutableArray *)self->_kCellularCdma1XConnectionHists count])
  {
    v564 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularCdma1XConnectionHists, "count")}];
    v672 = 0u;
    v673 = 0u;
    v674 = 0u;
    v675 = 0u;
    v565 = self->_kCellularCdma1XConnectionHists;
    v566 = [(NSMutableArray *)v565 countByEnumeratingWithState:&v672 objects:v1005 count:16];
    if (v566)
    {
      v567 = v566;
      v568 = *v673;
      do
      {
        v569 = 0;
        do
        {
          if (*v673 != v568)
          {
            objc_enumerationMutation(v565);
          }

          dictionaryRepresentation81 = [*(*(&v672 + 1) + 8 * v569) dictionaryRepresentation];
          [v564 addObject:dictionaryRepresentation81];

          ++v569;
        }

        while (v567 != v569);
        v567 = [(NSMutableArray *)v565 countByEnumeratingWithState:&v672 objects:v1005 count:16];
      }

      while (v567);
    }

    [dictionary setObject:v564 forKey:@"kCellularCdma1XConnectionHist"];
  }

  if ([(NSMutableArray *)self->_kCellularCdma1XRrStates count])
  {
    v571 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularCdma1XRrStates, "count")}];
    v668 = 0u;
    v669 = 0u;
    v670 = 0u;
    v671 = 0u;
    v572 = self->_kCellularCdma1XRrStates;
    v573 = [(NSMutableArray *)v572 countByEnumeratingWithState:&v668 objects:v1004 count:16];
    if (v573)
    {
      v574 = v573;
      v575 = *v669;
      do
      {
        v576 = 0;
        do
        {
          if (*v669 != v575)
          {
            objc_enumerationMutation(v572);
          }

          dictionaryRepresentation82 = [*(*(&v668 + 1) + 8 * v576) dictionaryRepresentation];
          [v571 addObject:dictionaryRepresentation82];

          ++v576;
        }

        while (v574 != v576);
        v574 = [(NSMutableArray *)v572 countByEnumeratingWithState:&v668 objects:v1004 count:16];
      }

      while (v574);
    }

    [dictionary setObject:v571 forKey:@"kCellularCdma1XRrState"];
  }

  if ([(NSMutableArray *)self->_kCellularCdmaEvdoRxDiversityHists count])
  {
    v578 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularCdmaEvdoRxDiversityHists, "count")}];
    v664 = 0u;
    v665 = 0u;
    v666 = 0u;
    v667 = 0u;
    v579 = self->_kCellularCdmaEvdoRxDiversityHists;
    v580 = [(NSMutableArray *)v579 countByEnumeratingWithState:&v664 objects:v1003 count:16];
    if (v580)
    {
      v581 = v580;
      v582 = *v665;
      do
      {
        v583 = 0;
        do
        {
          if (*v665 != v582)
          {
            objc_enumerationMutation(v579);
          }

          dictionaryRepresentation83 = [*(*(&v664 + 1) + 8 * v583) dictionaryRepresentation];
          [v578 addObject:dictionaryRepresentation83];

          ++v583;
        }

        while (v581 != v583);
        v581 = [(NSMutableArray *)v579 countByEnumeratingWithState:&v664 objects:v1003 count:16];
      }

      while (v581);
    }

    [dictionary setObject:v578 forKey:@"kCellularCdmaEvdoRxDiversityHist"];
  }

  if ([(NSMutableArray *)self->_kCellularCdmaEvdoServingCellRx0RssiHists count])
  {
    v585 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularCdmaEvdoServingCellRx0RssiHists, "count")}];
    v660 = 0u;
    v661 = 0u;
    v662 = 0u;
    v663 = 0u;
    v586 = self->_kCellularCdmaEvdoServingCellRx0RssiHists;
    v587 = [(NSMutableArray *)v586 countByEnumeratingWithState:&v660 objects:v1002 count:16];
    if (v587)
    {
      v588 = v587;
      v589 = *v661;
      do
      {
        v590 = 0;
        do
        {
          if (*v661 != v589)
          {
            objc_enumerationMutation(v586);
          }

          dictionaryRepresentation84 = [*(*(&v660 + 1) + 8 * v590) dictionaryRepresentation];
          [v585 addObject:dictionaryRepresentation84];

          ++v590;
        }

        while (v588 != v590);
        v588 = [(NSMutableArray *)v586 countByEnumeratingWithState:&v660 objects:v1002 count:16];
      }

      while (v588);
    }

    [dictionary setObject:v585 forKey:@"kCellularCdmaEvdoServingCellRx0RssiHist"];
  }

  if ([(NSMutableArray *)self->_kCellularCdmaEvdoServingCellRx1RssiHists count])
  {
    v592 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularCdmaEvdoServingCellRx1RssiHists, "count")}];
    v656 = 0u;
    v657 = 0u;
    v658 = 0u;
    v659 = 0u;
    v593 = self->_kCellularCdmaEvdoServingCellRx1RssiHists;
    v594 = [(NSMutableArray *)v593 countByEnumeratingWithState:&v656 objects:v1001 count:16];
    if (v594)
    {
      v595 = v594;
      v596 = *v657;
      do
      {
        v597 = 0;
        do
        {
          if (*v657 != v596)
          {
            objc_enumerationMutation(v593);
          }

          dictionaryRepresentation85 = [*(*(&v656 + 1) + 8 * v597) dictionaryRepresentation];
          [v592 addObject:dictionaryRepresentation85];

          ++v597;
        }

        while (v595 != v597);
        v595 = [(NSMutableArray *)v593 countByEnumeratingWithState:&v656 objects:v1001 count:16];
      }

      while (v595);
    }

    [dictionary setObject:v592 forKey:@"kCellularCdmaEvdoServingCellRx1RssiHist"];
  }

  if ([(NSMutableArray *)self->_kCellularCdmaEvdoServingCellRx0EcIoHists count])
  {
    v599 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularCdmaEvdoServingCellRx0EcIoHists, "count")}];
    v652 = 0u;
    v653 = 0u;
    v654 = 0u;
    v655 = 0u;
    v600 = self->_kCellularCdmaEvdoServingCellRx0EcIoHists;
    v601 = [(NSMutableArray *)v600 countByEnumeratingWithState:&v652 objects:v1000 count:16];
    if (v601)
    {
      v602 = v601;
      v603 = *v653;
      do
      {
        v604 = 0;
        do
        {
          if (*v653 != v603)
          {
            objc_enumerationMutation(v600);
          }

          dictionaryRepresentation86 = [*(*(&v652 + 1) + 8 * v604) dictionaryRepresentation];
          [v599 addObject:dictionaryRepresentation86];

          ++v604;
        }

        while (v602 != v604);
        v602 = [(NSMutableArray *)v600 countByEnumeratingWithState:&v652 objects:v1000 count:16];
      }

      while (v602);
    }

    [dictionary setObject:v599 forKey:@"kCellularCdmaEvdoServingCellRx0EcIoHist"];
  }

  if ([(NSMutableArray *)self->_kCellularCdmaEvdoServingCellRx1EcIoHists count])
  {
    v606 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularCdmaEvdoServingCellRx1EcIoHists, "count")}];
    v648 = 0u;
    v649 = 0u;
    v650 = 0u;
    v651 = 0u;
    v607 = self->_kCellularCdmaEvdoServingCellRx1EcIoHists;
    v608 = [(NSMutableArray *)v607 countByEnumeratingWithState:&v648 objects:v999 count:16];
    if (v608)
    {
      v609 = v608;
      v610 = *v649;
      do
      {
        v611 = 0;
        do
        {
          if (*v649 != v610)
          {
            objc_enumerationMutation(v607);
          }

          dictionaryRepresentation87 = [*(*(&v648 + 1) + 8 * v611) dictionaryRepresentation];
          [v606 addObject:dictionaryRepresentation87];

          ++v611;
        }

        while (v609 != v611);
        v609 = [(NSMutableArray *)v607 countByEnumeratingWithState:&v648 objects:v999 count:16];
      }

      while (v609);
    }

    [dictionary setObject:v606 forKey:@"kCellularCdmaEvdoServingCellRx1EcIoHist"];
  }

  if ([(NSMutableArray *)self->_kCellularCdmaEvdoTxPowerHists count])
  {
    v613 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularCdmaEvdoTxPowerHists, "count")}];
    v644 = 0u;
    v645 = 0u;
    v646 = 0u;
    v647 = 0u;
    v614 = self->_kCellularCdmaEvdoTxPowerHists;
    v615 = [(NSMutableArray *)v614 countByEnumeratingWithState:&v644 objects:v998 count:16];
    if (v615)
    {
      v616 = v615;
      v617 = *v645;
      do
      {
        v618 = 0;
        do
        {
          if (*v645 != v617)
          {
            objc_enumerationMutation(v614);
          }

          dictionaryRepresentation88 = [*(*(&v644 + 1) + 8 * v618) dictionaryRepresentation];
          [v613 addObject:dictionaryRepresentation88];

          ++v618;
        }

        while (v616 != v618);
        v616 = [(NSMutableArray *)v614 countByEnumeratingWithState:&v644 objects:v998 count:16];
      }

      while (v616);
    }

    [dictionary setObject:v613 forKey:@"kCellularCdmaEvdoTxPowerHist"];
  }

  if ([(NSMutableArray *)self->_kCellularCdmaEvdoProtocolStackStateHists count])
  {
    v620 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularCdmaEvdoProtocolStackStateHists, "count")}];
    v640 = 0u;
    v641 = 0u;
    v642 = 0u;
    v643 = 0u;
    v621 = self->_kCellularCdmaEvdoProtocolStackStateHists;
    v622 = [(NSMutableArray *)v621 countByEnumeratingWithState:&v640 objects:v997 count:16];
    if (v622)
    {
      v623 = v622;
      v624 = *v641;
      do
      {
        v625 = 0;
        do
        {
          if (*v641 != v624)
          {
            objc_enumerationMutation(v621);
          }

          dictionaryRepresentation89 = [*(*(&v640 + 1) + 8 * v625) dictionaryRepresentation];
          [v620 addObject:dictionaryRepresentation89];

          ++v625;
        }

        while (v623 != v625);
        v623 = [(NSMutableArray *)v621 countByEnumeratingWithState:&v640 objects:v997 count:16];
      }

      while (v623);
    }

    [dictionary setObject:v620 forKey:@"kCellularCdmaEvdoProtocolStackStateHist"];
  }

  if ([(NSMutableArray *)self->_kCellularCdmaEvdoRrStates count])
  {
    v627 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_kCellularCdmaEvdoRrStates, "count")}];
    v636 = 0u;
    v637 = 0u;
    v638 = 0u;
    v639 = 0u;
    v628 = self->_kCellularCdmaEvdoRrStates;
    v629 = [(NSMutableArray *)v628 countByEnumeratingWithState:&v636 objects:v996 count:16];
    if (v629)
    {
      v630 = v629;
      v631 = *v637;
      do
      {
        v632 = 0;
        do
        {
          if (*v637 != v631)
          {
            objc_enumerationMutation(v628);
          }

          dictionaryRepresentation90 = [*(*(&v636 + 1) + 8 * v632) dictionaryRepresentation];
          [v627 addObject:dictionaryRepresentation90];

          ++v632;
        }

        while (v630 != v632);
        v630 = [(NSMutableArray *)v628 countByEnumeratingWithState:&v636 objects:v996 count:16];
      }

      while (v630);
    }

    [dictionary setObject:v627 forKey:@"kCellularCdmaEvdoRrState"];
  }

  v634 = dictionary;

  return dictionary;
}

- (void)writeTo:(id)to
{
  v905 = *MEMORY[0x277D85DE8];
  toCopy = to;
  v811 = 0u;
  v812 = 0u;
  v813 = 0u;
  v814 = 0u;
  v5 = self->_kCellularPerClientProfileTriggerCounts;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v811 objects:v904 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v812;
    do
    {
      v9 = 0;
      do
      {
        if (*v812 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v811 objects:v904 count:16];
    }

    while (v7);
  }

  v810 = 0u;
  v809 = 0u;
  v808 = 0u;
  v807 = 0u;
  v10 = self->_kCellularProtocolStackCpuStats;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v807 objects:v903 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v808;
    do
    {
      v14 = 0;
      do
      {
        if (*v808 != v13)
        {
          objc_enumerationMutation(v10);
        }

        PBDataWriterWriteSubmessage();
        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v807 objects:v903 count:16];
    }

    while (v12);
  }

  v806 = 0u;
  v805 = 0u;
  v804 = 0u;
  v803 = 0u;
  v15 = self->_kCellularPeripheralStats;
  v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v803 objects:v902 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v804;
    do
    {
      v19 = 0;
      do
      {
        if (*v804 != v18)
        {
          objc_enumerationMutation(v15);
        }

        PBDataWriterWriteSubmessage();
        ++v19;
      }

      while (v17 != v19);
      v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v803 objects:v902 count:16];
    }

    while (v17);
  }

  v802 = 0u;
  v801 = 0u;
  v800 = 0u;
  v799 = 0u;
  v20 = self->_kCellularDvfsStats;
  v21 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v799 objects:v901 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v800;
    do
    {
      v24 = 0;
      do
      {
        if (*v800 != v23)
        {
          objc_enumerationMutation(v20);
        }

        PBDataWriterWriteSubmessage();
        ++v24;
      }

      while (v22 != v24);
      v22 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v799 objects:v901 count:16];
    }

    while (v22);
  }

  v798 = 0u;
  v797 = 0u;
  v796 = 0u;
  v795 = 0u;
  v25 = self->_kCellularLteWcdmaGsmHwStats;
  v26 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v795 objects:v900 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v796;
    do
    {
      v29 = 0;
      do
      {
        if (*v796 != v28)
        {
          objc_enumerationMutation(v25);
        }

        PBDataWriterWriteSubmessage();
        ++v29;
      }

      while (v27 != v29);
      v27 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v795 objects:v900 count:16];
    }

    while (v27);
  }

  v794 = 0u;
  v793 = 0u;
  v792 = 0u;
  v791 = 0u;
  v30 = self->_kCellularLteTdsGsmHwStats;
  v31 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v791 objects:v899 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v792;
    do
    {
      v34 = 0;
      do
      {
        if (*v792 != v33)
        {
          objc_enumerationMutation(v30);
        }

        PBDataWriterWriteSubmessage();
        ++v34;
      }

      while (v32 != v34);
      v32 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v791 objects:v899 count:16];
    }

    while (v32);
  }

  v790 = 0u;
  v789 = 0u;
  v788 = 0u;
  v787 = 0u;
  v35 = self->_kCellularPmuAverageCurrents;
  v36 = [(NSMutableArray *)v35 countByEnumeratingWithState:&v787 objects:v898 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v788;
    do
    {
      v39 = 0;
      do
      {
        if (*v788 != v38)
        {
          objc_enumerationMutation(v35);
        }

        PBDataWriterWriteSubmessage();
        ++v39;
      }

      while (v37 != v39);
      v37 = [(NSMutableArray *)v35 countByEnumeratingWithState:&v787 objects:v898 count:16];
    }

    while (v37);
  }

  v786 = 0u;
  v785 = 0u;
  v784 = 0u;
  v783 = 0u;
  v40 = self->_kCellularFwCoreStats;
  v41 = [(NSMutableArray *)v40 countByEnumeratingWithState:&v783 objects:v897 count:16];
  if (v41)
  {
    v42 = v41;
    v43 = *v784;
    do
    {
      v44 = 0;
      do
      {
        if (*v784 != v43)
        {
          objc_enumerationMutation(v40);
        }

        PBDataWriterWriteSubmessage();
        ++v44;
      }

      while (v42 != v44);
      v42 = [(NSMutableArray *)v40 countByEnumeratingWithState:&v783 objects:v897 count:16];
    }

    while (v42);
  }

  v782 = 0u;
  v781 = 0u;
  v780 = 0u;
  v779 = 0u;
  v45 = self->_kCellularLteWcdmaTdsHwStats;
  v46 = [(NSMutableArray *)v45 countByEnumeratingWithState:&v779 objects:v896 count:16];
  if (v46)
  {
    v47 = v46;
    v48 = *v780;
    do
    {
      v49 = 0;
      do
      {
        if (*v780 != v48)
        {
          objc_enumerationMutation(v45);
        }

        PBDataWriterWriteSubmessage();
        ++v49;
      }

      while (v47 != v49);
      v47 = [(NSMutableArray *)v45 countByEnumeratingWithState:&v779 objects:v896 count:16];
    }

    while (v47);
  }

  v778 = 0u;
  v777 = 0u;
  v776 = 0u;
  v775 = 0u;
  v50 = self->_kCellularPmicHwStats;
  v51 = [(NSMutableArray *)v50 countByEnumeratingWithState:&v775 objects:v895 count:16];
  if (v51)
  {
    v52 = v51;
    v53 = *v776;
    do
    {
      v54 = 0;
      do
      {
        if (*v776 != v53)
        {
          objc_enumerationMutation(v50);
        }

        PBDataWriterWriteSubmessage();
        ++v54;
      }

      while (v52 != v54);
      v52 = [(NSMutableArray *)v50 countByEnumeratingWithState:&v775 objects:v895 count:16];
    }

    while (v52);
  }

  v774 = 0u;
  v773 = 0u;
  v772 = 0u;
  v771 = 0u;
  v55 = self->_kCellularTdsRrcStates;
  v56 = [(NSMutableArray *)v55 countByEnumeratingWithState:&v771 objects:v894 count:16];
  if (v56)
  {
    v57 = v56;
    v58 = *v772;
    do
    {
      v59 = 0;
      do
      {
        if (*v772 != v58)
        {
          objc_enumerationMutation(v55);
        }

        PBDataWriterWriteSubmessage();
        ++v59;
      }

      while (v57 != v59);
      v57 = [(NSMutableArray *)v55 countByEnumeratingWithState:&v771 objects:v894 count:16];
    }

    while (v57);
  }

  v770 = 0u;
  v769 = 0u;
  v768 = 0u;
  v767 = 0u;
  v60 = self->_kCellularLteRrcStates;
  v61 = [(NSMutableArray *)v60 countByEnumeratingWithState:&v767 objects:v893 count:16];
  if (v61)
  {
    v62 = v61;
    v63 = *v768;
    do
    {
      v64 = 0;
      do
      {
        if (*v768 != v63)
        {
          objc_enumerationMutation(v60);
        }

        PBDataWriterWriteSubmessage();
        ++v64;
      }

      while (v62 != v64);
      v62 = [(NSMutableArray *)v60 countByEnumeratingWithState:&v767 objects:v893 count:16];
    }

    while (v62);
  }

  v766 = 0u;
  v765 = 0u;
  v764 = 0u;
  v763 = 0u;
  v65 = self->_kCellularLtePagingCycles;
  v66 = [(NSMutableArray *)v65 countByEnumeratingWithState:&v763 objects:v892 count:16];
  if (v66)
  {
    v67 = v66;
    v68 = *v764;
    do
    {
      v69 = 0;
      do
      {
        if (*v764 != v68)
        {
          objc_enumerationMutation(v65);
        }

        PBDataWriterWriteSubmessage();
        ++v69;
      }

      while (v67 != v69);
      v67 = [(NSMutableArray *)v65 countByEnumeratingWithState:&v763 objects:v892 count:16];
    }

    while (v67);
  }

  v762 = 0u;
  v761 = 0u;
  v760 = 0u;
  v759 = 0u;
  v70 = self->_kCellularLteCdrxConfigs;
  v71 = [(NSMutableArray *)v70 countByEnumeratingWithState:&v759 objects:v891 count:16];
  if (v71)
  {
    v72 = v71;
    v73 = *v760;
    do
    {
      v74 = 0;
      do
      {
        if (*v760 != v73)
        {
          objc_enumerationMutation(v70);
        }

        PBDataWriterWriteSubmessage();
        ++v74;
      }

      while (v72 != v74);
      v72 = [(NSMutableArray *)v70 countByEnumeratingWithState:&v759 objects:v891 count:16];
    }

    while (v72);
  }

  v758 = 0u;
  v757 = 0u;
  v756 = 0u;
  v755 = 0u;
  v75 = self->_kCellularLteRadioLinkFailures;
  v76 = [(NSMutableArray *)v75 countByEnumeratingWithState:&v755 objects:v890 count:16];
  if (v76)
  {
    v77 = v76;
    v78 = *v756;
    do
    {
      v79 = 0;
      do
      {
        if (*v756 != v78)
        {
          objc_enumerationMutation(v75);
        }

        PBDataWriterWriteSubmessage();
        ++v79;
      }

      while (v77 != v79);
      v77 = [(NSMutableArray *)v75 countByEnumeratingWithState:&v755 objects:v890 count:16];
    }

    while (v77);
  }

  v754 = 0u;
  v753 = 0u;
  v752 = 0u;
  v751 = 0u;
  v80 = self->_kCellularLtePdcchStateStats;
  v81 = [(NSMutableArray *)v80 countByEnumeratingWithState:&v751 objects:v889 count:16];
  if (v81)
  {
    v82 = v81;
    v83 = *v752;
    do
    {
      v84 = 0;
      do
      {
        if (*v752 != v83)
        {
          objc_enumerationMutation(v80);
        }

        PBDataWriterWriteSubmessage();
        ++v84;
      }

      while (v82 != v84);
      v82 = [(NSMutableArray *)v80 countByEnumeratingWithState:&v751 objects:v889 count:16];
    }

    while (v82);
  }

  v750 = 0u;
  v749 = 0u;
  v748 = 0u;
  v747 = 0u;
  v85 = self->_kCellularLqmStateChanges;
  v86 = [(NSMutableArray *)v85 countByEnumeratingWithState:&v747 objects:v888 count:16];
  if (v86)
  {
    v87 = v86;
    v88 = *v748;
    do
    {
      v89 = 0;
      do
      {
        if (*v748 != v88)
        {
          objc_enumerationMutation(v85);
        }

        PBDataWriterWriteSubmessage();
        ++v89;
      }

      while (v87 != v89);
      v87 = [(NSMutableArray *)v85 countByEnumeratingWithState:&v747 objects:v888 count:16];
    }

    while (v87);
  }

  v746 = 0u;
  v745 = 0u;
  v744 = 0u;
  v743 = 0u;
  v90 = self->_kCellularServiceLosts;
  v91 = [(NSMutableArray *)v90 countByEnumeratingWithState:&v743 objects:v887 count:16];
  if (v91)
  {
    v92 = v91;
    v93 = *v744;
    do
    {
      v94 = 0;
      do
      {
        if (*v744 != v93)
        {
          objc_enumerationMutation(v90);
        }

        PBDataWriterWriteSubmessage();
        ++v94;
      }

      while (v92 != v94);
      v92 = [(NSMutableArray *)v90 countByEnumeratingWithState:&v743 objects:v887 count:16];
    }

    while (v92);
  }

  v742 = 0u;
  v741 = 0u;
  v740 = 0u;
  v739 = 0u;
  v95 = self->_kCellularGsmServingCellRssiHists;
  v96 = [(NSMutableArray *)v95 countByEnumeratingWithState:&v739 objects:v886 count:16];
  if (v96)
  {
    v97 = v96;
    v98 = *v740;
    do
    {
      v99 = 0;
      do
      {
        if (*v740 != v98)
        {
          objc_enumerationMutation(v95);
        }

        PBDataWriterWriteSubmessage();
        ++v99;
      }

      while (v97 != v99);
      v97 = [(NSMutableArray *)v95 countByEnumeratingWithState:&v739 objects:v886 count:16];
    }

    while (v97);
  }

  v738 = 0u;
  v737 = 0u;
  v736 = 0u;
  v735 = 0u;
  v100 = self->_kCellularGsmServingCellSnrHists;
  v101 = [(NSMutableArray *)v100 countByEnumeratingWithState:&v735 objects:v885 count:16];
  if (v101)
  {
    v102 = v101;
    v103 = *v736;
    do
    {
      v104 = 0;
      do
      {
        if (*v736 != v103)
        {
          objc_enumerationMutation(v100);
        }

        PBDataWriterWriteSubmessage();
        ++v104;
      }

      while (v102 != v104);
      v102 = [(NSMutableArray *)v100 countByEnumeratingWithState:&v735 objects:v885 count:16];
    }

    while (v102);
  }

  v734 = 0u;
  v733 = 0u;
  v732 = 0u;
  v731 = 0u;
  v105 = self->_kCellularGsmTxPowerHists;
  v106 = [(NSMutableArray *)v105 countByEnumeratingWithState:&v731 objects:v884 count:16];
  if (v106)
  {
    v107 = v106;
    v108 = *v732;
    do
    {
      v109 = 0;
      do
      {
        if (*v732 != v108)
        {
          objc_enumerationMutation(v105);
        }

        PBDataWriterWriteSubmessage();
        ++v109;
      }

      while (v107 != v109);
      v107 = [(NSMutableArray *)v105 countByEnumeratingWithState:&v731 objects:v884 count:16];
    }

    while (v107);
  }

  v730 = 0u;
  v729 = 0u;
  v728 = 0u;
  v727 = 0u;
  v110 = self->_kCellularGsmConnectedModeHists;
  v111 = [(NSMutableArray *)v110 countByEnumeratingWithState:&v727 objects:v883 count:16];
  if (v111)
  {
    v112 = v111;
    v113 = *v728;
    do
    {
      v114 = 0;
      do
      {
        if (*v728 != v113)
        {
          objc_enumerationMutation(v110);
        }

        PBDataWriterWriteSubmessage();
        ++v114;
      }

      while (v112 != v114);
      v112 = [(NSMutableArray *)v110 countByEnumeratingWithState:&v727 objects:v883 count:16];
    }

    while (v112);
  }

  v726 = 0u;
  v725 = 0u;
  v724 = 0u;
  v723 = 0u;
  v115 = self->_kCellularGsmL1States;
  v116 = [(NSMutableArray *)v115 countByEnumeratingWithState:&v723 objects:v882 count:16];
  if (v116)
  {
    v117 = v116;
    v118 = *v724;
    do
    {
      v119 = 0;
      do
      {
        if (*v724 != v118)
        {
          objc_enumerationMutation(v115);
        }

        PBDataWriterWriteSubmessage();
        ++v119;
      }

      while (v117 != v119);
      v117 = [(NSMutableArray *)v115 countByEnumeratingWithState:&v723 objects:v882 count:16];
    }

    while (v117);
  }

  v722 = 0u;
  v721 = 0u;
  v720 = 0u;
  v719 = 0u;
  v120 = self->_kCellularWcdmaCpcStats;
  v121 = [(NSMutableArray *)v120 countByEnumeratingWithState:&v719 objects:v881 count:16];
  if (v121)
  {
    v122 = v121;
    v123 = *v720;
    do
    {
      v124 = 0;
      do
      {
        if (*v720 != v123)
        {
          objc_enumerationMutation(v120);
        }

        PBDataWriterWriteSubmessage();
        ++v124;
      }

      while (v122 != v124);
      v122 = [(NSMutableArray *)v120 countByEnumeratingWithState:&v719 objects:v881 count:16];
    }

    while (v122);
  }

  v718 = 0u;
  v717 = 0u;
  v716 = 0u;
  v715 = 0u;
  v125 = self->_kCellularWcdmaRxDiversityHists;
  v126 = [(NSMutableArray *)v125 countByEnumeratingWithState:&v715 objects:v880 count:16];
  if (v126)
  {
    v127 = v126;
    v128 = *v716;
    do
    {
      v129 = 0;
      do
      {
        if (*v716 != v128)
        {
          objc_enumerationMutation(v125);
        }

        PBDataWriterWriteSubmessage();
        ++v129;
      }

      while (v127 != v129);
      v127 = [(NSMutableArray *)v125 countByEnumeratingWithState:&v715 objects:v880 count:16];
    }

    while (v127);
  }

  v714 = 0u;
  v713 = 0u;
  v712 = 0u;
  v711 = 0u;
  v130 = self->_kCellularWcdmaServingCellRx0RssiHists;
  v131 = [(NSMutableArray *)v130 countByEnumeratingWithState:&v711 objects:v879 count:16];
  if (v131)
  {
    v132 = v131;
    v133 = *v712;
    do
    {
      v134 = 0;
      do
      {
        if (*v712 != v133)
        {
          objc_enumerationMutation(v130);
        }

        PBDataWriterWriteSubmessage();
        ++v134;
      }

      while (v132 != v134);
      v132 = [(NSMutableArray *)v130 countByEnumeratingWithState:&v711 objects:v879 count:16];
    }

    while (v132);
  }

  v710 = 0u;
  v709 = 0u;
  v708 = 0u;
  v707 = 0u;
  v135 = self->_kCellularWcdmaServingCellRx1RssiHists;
  v136 = [(NSMutableArray *)v135 countByEnumeratingWithState:&v707 objects:v878 count:16];
  if (v136)
  {
    v137 = v136;
    v138 = *v708;
    do
    {
      v139 = 0;
      do
      {
        if (*v708 != v138)
        {
          objc_enumerationMutation(v135);
        }

        PBDataWriterWriteSubmessage();
        ++v139;
      }

      while (v137 != v139);
      v137 = [(NSMutableArray *)v135 countByEnumeratingWithState:&v707 objects:v878 count:16];
    }

    while (v137);
  }

  v706 = 0u;
  v705 = 0u;
  v704 = 0u;
  v703 = 0u;
  v140 = self->_kCellularWcdmaServingCellRx0EcNoHists;
  v141 = [(NSMutableArray *)v140 countByEnumeratingWithState:&v703 objects:v877 count:16];
  if (v141)
  {
    v142 = v141;
    v143 = *v704;
    do
    {
      v144 = 0;
      do
      {
        if (*v704 != v143)
        {
          objc_enumerationMutation(v140);
        }

        PBDataWriterWriteSubmessage();
        ++v144;
      }

      while (v142 != v144);
      v142 = [(NSMutableArray *)v140 countByEnumeratingWithState:&v703 objects:v877 count:16];
    }

    while (v142);
  }

  v702 = 0u;
  v701 = 0u;
  v700 = 0u;
  v699 = 0u;
  v145 = self->_kCellularWcdmaServingCellRx1EcNoHists;
  v146 = [(NSMutableArray *)v145 countByEnumeratingWithState:&v699 objects:v876 count:16];
  if (v146)
  {
    v147 = v146;
    v148 = *v700;
    do
    {
      v149 = 0;
      do
      {
        if (*v700 != v148)
        {
          objc_enumerationMutation(v145);
        }

        PBDataWriterWriteSubmessage();
        ++v149;
      }

      while (v147 != v149);
      v147 = [(NSMutableArray *)v145 countByEnumeratingWithState:&v699 objects:v876 count:16];
    }

    while (v147);
  }

  v698 = 0u;
  v697 = 0u;
  v696 = 0u;
  v695 = 0u;
  v150 = self->_kCellularWcdmaTxPowerHists;
  v151 = [(NSMutableArray *)v150 countByEnumeratingWithState:&v695 objects:v875 count:16];
  if (v151)
  {
    v152 = v151;
    v153 = *v696;
    do
    {
      v154 = 0;
      do
      {
        if (*v696 != v153)
        {
          objc_enumerationMutation(v150);
        }

        PBDataWriterWriteSubmessage();
        ++v154;
      }

      while (v152 != v154);
      v152 = [(NSMutableArray *)v150 countByEnumeratingWithState:&v695 objects:v875 count:16];
    }

    while (v152);
  }

  v694 = 0u;
  v693 = 0u;
  v692 = 0u;
  v691 = 0u;
  v155 = self->_kCellularWcdmaReceiverStatusOnC0Hists;
  v156 = [(NSMutableArray *)v155 countByEnumeratingWithState:&v691 objects:v874 count:16];
  if (v156)
  {
    v157 = v156;
    v158 = *v692;
    do
    {
      v159 = 0;
      do
      {
        if (*v692 != v158)
        {
          objc_enumerationMutation(v155);
        }

        PBDataWriterWriteSubmessage();
        ++v159;
      }

      while (v157 != v159);
      v157 = [(NSMutableArray *)v155 countByEnumeratingWithState:&v691 objects:v874 count:16];
    }

    while (v157);
  }

  v690 = 0u;
  v689 = 0u;
  v688 = 0u;
  v687 = 0u;
  v160 = self->_kCellularWcdmaReceiverStatusOnC1Hists;
  v161 = [(NSMutableArray *)v160 countByEnumeratingWithState:&v687 objects:v873 count:16];
  if (v161)
  {
    v162 = v161;
    v163 = *v688;
    do
    {
      v164 = 0;
      do
      {
        if (*v688 != v163)
        {
          objc_enumerationMutation(v160);
        }

        PBDataWriterWriteSubmessage();
        ++v164;
      }

      while (v162 != v164);
      v162 = [(NSMutableArray *)v160 countByEnumeratingWithState:&v687 objects:v873 count:16];
    }

    while (v162);
  }

  v686 = 0u;
  v685 = 0u;
  v684 = 0u;
  v683 = 0u;
  v165 = self->_kCellularWcdmaCarrierStatusHists;
  v166 = [(NSMutableArray *)v165 countByEnumeratingWithState:&v683 objects:v872 count:16];
  if (v166)
  {
    v167 = v166;
    v168 = *v684;
    do
    {
      v169 = 0;
      do
      {
        if (*v684 != v168)
        {
          objc_enumerationMutation(v165);
        }

        PBDataWriterWriteSubmessage();
        ++v169;
      }

      while (v167 != v169);
      v167 = [(NSMutableArray *)v165 countByEnumeratingWithState:&v683 objects:v872 count:16];
    }

    while (v167);
  }

  v682 = 0u;
  v681 = 0u;
  v680 = 0u;
  v679 = 0u;
  v170 = self->_kCellularWcdmaRabModeHists;
  v171 = [(NSMutableArray *)v170 countByEnumeratingWithState:&v679 objects:v871 count:16];
  if (v171)
  {
    v172 = v171;
    v173 = *v680;
    do
    {
      v174 = 0;
      do
      {
        if (*v680 != v173)
        {
          objc_enumerationMutation(v170);
        }

        PBDataWriterWriteSubmessage();
        ++v174;
      }

      while (v172 != v174);
      v172 = [(NSMutableArray *)v170 countByEnumeratingWithState:&v679 objects:v871 count:16];
    }

    while (v172);
  }

  v678 = 0u;
  v677 = 0u;
  v676 = 0u;
  v675 = 0u;
  v175 = self->_kCellularWcdmaRabTypeHists;
  v176 = [(NSMutableArray *)v175 countByEnumeratingWithState:&v675 objects:v870 count:16];
  if (v176)
  {
    v177 = v176;
    v178 = *v676;
    do
    {
      v179 = 0;
      do
      {
        if (*v676 != v178)
        {
          objc_enumerationMutation(v175);
        }

        PBDataWriterWriteSubmessage();
        ++v179;
      }

      while (v177 != v179);
      v177 = [(NSMutableArray *)v175 countByEnumeratingWithState:&v675 objects:v870 count:16];
    }

    while (v177);
  }

  v674 = 0u;
  v673 = 0u;
  v672 = 0u;
  v671 = 0u;
  v180 = self->_kCellularWcdmaRrcConnectionStates;
  v181 = [(NSMutableArray *)v180 countByEnumeratingWithState:&v671 objects:v869 count:16];
  if (v181)
  {
    v182 = v181;
    v183 = *v672;
    do
    {
      v184 = 0;
      do
      {
        if (*v672 != v183)
        {
          objc_enumerationMutation(v180);
        }

        PBDataWriterWriteSubmessage();
        ++v184;
      }

      while (v182 != v184);
      v182 = [(NSMutableArray *)v180 countByEnumeratingWithState:&v671 objects:v869 count:16];
    }

    while (v182);
  }

  v670 = 0u;
  v669 = 0u;
  v668 = 0u;
  v667 = 0u;
  v185 = self->_kCellularWcdmaRrcConfigurations;
  v186 = [(NSMutableArray *)v185 countByEnumeratingWithState:&v667 objects:v868 count:16];
  if (v186)
  {
    v187 = v186;
    v188 = *v668;
    do
    {
      v189 = 0;
      do
      {
        if (*v668 != v188)
        {
          objc_enumerationMutation(v185);
        }

        PBDataWriterWriteSubmessage();
        ++v189;
      }

      while (v187 != v189);
      v187 = [(NSMutableArray *)v185 countByEnumeratingWithState:&v667 objects:v868 count:16];
    }

    while (v187);
  }

  v666 = 0u;
  v665 = 0u;
  v664 = 0u;
  v663 = 0u;
  v190 = self->_kCellularWcdmaRabStatus;
  v191 = [(NSMutableArray *)v190 countByEnumeratingWithState:&v663 objects:v867 count:16];
  if (v191)
  {
    v192 = v191;
    v193 = *v664;
    do
    {
      v194 = 0;
      do
      {
        if (*v664 != v193)
        {
          objc_enumerationMutation(v190);
        }

        PBDataWriterWriteSubmessage();
        ++v194;
      }

      while (v192 != v194);
      v192 = [(NSMutableArray *)v190 countByEnumeratingWithState:&v663 objects:v867 count:16];
    }

    while (v192);
  }

  v662 = 0u;
  v661 = 0u;
  v660 = 0u;
  v659 = 0u;
  v195 = self->_kCellularWcdmaL1States;
  v196 = [(NSMutableArray *)v195 countByEnumeratingWithState:&v659 objects:v866 count:16];
  if (v196)
  {
    v197 = v196;
    v198 = *v660;
    do
    {
      v199 = 0;
      do
      {
        if (*v660 != v198)
        {
          objc_enumerationMutation(v195);
        }

        PBDataWriterWriteSubmessage();
        ++v199;
      }

      while (v197 != v199);
      v197 = [(NSMutableArray *)v195 countByEnumeratingWithState:&v659 objects:v866 count:16];
    }

    while (v197);
  }

  v658 = 0u;
  v657 = 0u;
  v656 = 0u;
  v655 = 0u;
  v200 = self->_kCellularWcdmaDataInactivityBeforeIdles;
  v201 = [(NSMutableArray *)v200 countByEnumeratingWithState:&v655 objects:v865 count:16];
  if (v201)
  {
    v202 = v201;
    v203 = *v656;
    do
    {
      v204 = 0;
      do
      {
        if (*v656 != v203)
        {
          objc_enumerationMutation(v200);
        }

        PBDataWriterWriteSubmessage();
        ++v204;
      }

      while (v202 != v204);
      v202 = [(NSMutableArray *)v200 countByEnumeratingWithState:&v655 objects:v865 count:16];
    }

    while (v202);
  }

  v654 = 0u;
  v653 = 0u;
  v652 = 0u;
  v651 = 0u;
  v205 = self->_kCellularWcdmaIdleToConnectedUserDatas;
  v206 = [(NSMutableArray *)v205 countByEnumeratingWithState:&v651 objects:v864 count:16];
  if (v206)
  {
    v207 = v206;
    v208 = *v652;
    do
    {
      v209 = 0;
      do
      {
        if (*v652 != v208)
        {
          objc_enumerationMutation(v205);
        }

        PBDataWriterWriteSubmessage();
        ++v209;
      }

      while (v207 != v209);
      v207 = [(NSMutableArray *)v205 countByEnumeratingWithState:&v651 objects:v864 count:16];
    }

    while (v207);
  }

  v650 = 0u;
  v649 = 0u;
  v648 = 0u;
  v647 = 0u;
  v210 = self->_kCellularWcdmaVadHists;
  v211 = [(NSMutableArray *)v210 countByEnumeratingWithState:&v647 objects:v863 count:16];
  if (v211)
  {
    v212 = v211;
    v213 = *v648;
    do
    {
      v214 = 0;
      do
      {
        if (*v648 != v213)
        {
          objc_enumerationMutation(v210);
        }

        PBDataWriterWriteSubmessage();
        ++v214;
      }

      while (v212 != v214);
      v212 = [(NSMutableArray *)v210 countByEnumeratingWithState:&v647 objects:v863 count:16];
    }

    while (v212);
  }

  v646 = 0u;
  v645 = 0u;
  v644 = 0u;
  v643 = 0u;
  v215 = self->_kCellularTdsRxDiversityHists;
  v216 = [(NSMutableArray *)v215 countByEnumeratingWithState:&v643 objects:v862 count:16];
  if (v216)
  {
    v217 = v216;
    v218 = *v644;
    do
    {
      v219 = 0;
      do
      {
        if (*v644 != v218)
        {
          objc_enumerationMutation(v215);
        }

        PBDataWriterWriteSubmessage();
        ++v219;
      }

      while (v217 != v219);
      v217 = [(NSMutableArray *)v215 countByEnumeratingWithState:&v643 objects:v862 count:16];
    }

    while (v217);
  }

  v642 = 0u;
  v641 = 0u;
  v640 = 0u;
  v639 = 0u;
  v220 = self->_kCellularTdsServingCellRx0RssiHists;
  v221 = [(NSMutableArray *)v220 countByEnumeratingWithState:&v639 objects:v861 count:16];
  if (v221)
  {
    v222 = v221;
    v223 = *v640;
    do
    {
      v224 = 0;
      do
      {
        if (*v640 != v223)
        {
          objc_enumerationMutation(v220);
        }

        PBDataWriterWriteSubmessage();
        ++v224;
      }

      while (v222 != v224);
      v222 = [(NSMutableArray *)v220 countByEnumeratingWithState:&v639 objects:v861 count:16];
    }

    while (v222);
  }

  v638 = 0u;
  v637 = 0u;
  v636 = 0u;
  v635 = 0u;
  v225 = self->_kCellularTdsServingCellRx1RssiHists;
  v226 = [(NSMutableArray *)v225 countByEnumeratingWithState:&v635 objects:v860 count:16];
  if (v226)
  {
    v227 = v226;
    v228 = *v636;
    do
    {
      v229 = 0;
      do
      {
        if (*v636 != v228)
        {
          objc_enumerationMutation(v225);
        }

        PBDataWriterWriteSubmessage();
        ++v229;
      }

      while (v227 != v229);
      v227 = [(NSMutableArray *)v225 countByEnumeratingWithState:&v635 objects:v860 count:16];
    }

    while (v227);
  }

  v634 = 0u;
  v633 = 0u;
  v632 = 0u;
  v631 = 0u;
  v230 = self->_kCellularTdsServingCellRx0RscpHists;
  v231 = [(NSMutableArray *)v230 countByEnumeratingWithState:&v631 objects:v859 count:16];
  if (v231)
  {
    v232 = v231;
    v233 = *v632;
    do
    {
      v234 = 0;
      do
      {
        if (*v632 != v233)
        {
          objc_enumerationMutation(v230);
        }

        PBDataWriterWriteSubmessage();
        ++v234;
      }

      while (v232 != v234);
      v232 = [(NSMutableArray *)v230 countByEnumeratingWithState:&v631 objects:v859 count:16];
    }

    while (v232);
  }

  v630 = 0u;
  v629 = 0u;
  v628 = 0u;
  v627 = 0u;
  v235 = self->_kCellularTdsServingCellRx1RscpHists;
  v236 = [(NSMutableArray *)v235 countByEnumeratingWithState:&v627 objects:v858 count:16];
  if (v236)
  {
    v237 = v236;
    v238 = *v628;
    do
    {
      v239 = 0;
      do
      {
        if (*v628 != v238)
        {
          objc_enumerationMutation(v235);
        }

        PBDataWriterWriteSubmessage();
        ++v239;
      }

      while (v237 != v239);
      v237 = [(NSMutableArray *)v235 countByEnumeratingWithState:&v627 objects:v858 count:16];
    }

    while (v237);
  }

  v626 = 0u;
  v625 = 0u;
  v624 = 0u;
  v623 = 0u;
  v240 = self->_kCellularTdsTxPowerHists;
  v241 = [(NSMutableArray *)v240 countByEnumeratingWithState:&v623 objects:v857 count:16];
  if (v241)
  {
    v242 = v241;
    v243 = *v624;
    do
    {
      v244 = 0;
      do
      {
        if (*v624 != v243)
        {
          objc_enumerationMutation(v240);
        }

        PBDataWriterWriteSubmessage();
        ++v244;
      }

      while (v242 != v244);
      v242 = [(NSMutableArray *)v240 countByEnumeratingWithState:&v623 objects:v857 count:16];
    }

    while (v242);
  }

  v622 = 0u;
  v621 = 0u;
  v620 = 0u;
  v619 = 0u;
  v245 = self->_kCellularTdsRabModeHists;
  v246 = [(NSMutableArray *)v245 countByEnumeratingWithState:&v619 objects:v856 count:16];
  if (v246)
  {
    v247 = v246;
    v248 = *v620;
    do
    {
      v249 = 0;
      do
      {
        if (*v620 != v248)
        {
          objc_enumerationMutation(v245);
        }

        PBDataWriterWriteSubmessage();
        ++v249;
      }

      while (v247 != v249);
      v247 = [(NSMutableArray *)v245 countByEnumeratingWithState:&v619 objects:v856 count:16];
    }

    while (v247);
  }

  v618 = 0u;
  v617 = 0u;
  v616 = 0u;
  v615 = 0u;
  v250 = self->_kCellularTdsRabTypeHists;
  v251 = [(NSMutableArray *)v250 countByEnumeratingWithState:&v615 objects:v855 count:16];
  if (v251)
  {
    v252 = v251;
    v253 = *v616;
    do
    {
      v254 = 0;
      do
      {
        if (*v616 != v253)
        {
          objc_enumerationMutation(v250);
        }

        PBDataWriterWriteSubmessage();
        ++v254;
      }

      while (v252 != v254);
      v252 = [(NSMutableArray *)v250 countByEnumeratingWithState:&v615 objects:v855 count:16];
    }

    while (v252);
  }

  v614 = 0u;
  v613 = 0u;
  v612 = 0u;
  v611 = 0u;
  v255 = self->_kCellularTdsL1States;
  v256 = [(NSMutableArray *)v255 countByEnumeratingWithState:&v611 objects:v854 count:16];
  if (v256)
  {
    v257 = v256;
    v258 = *v612;
    do
    {
      v259 = 0;
      do
      {
        if (*v612 != v258)
        {
          objc_enumerationMutation(v255);
        }

        PBDataWriterWriteSubmessage();
        ++v259;
      }

      while (v257 != v259);
      v257 = [(NSMutableArray *)v255 countByEnumeratingWithState:&v611 objects:v854 count:16];
    }

    while (v257);
  }

  v610 = 0u;
  v609 = 0u;
  v608 = 0u;
  v607 = 0u;
  v260 = self->_kCellularLteFwDuplexModes;
  v261 = [(NSMutableArray *)v260 countByEnumeratingWithState:&v607 objects:v853 count:16];
  if (v261)
  {
    v262 = v261;
    v263 = *v608;
    do
    {
      v264 = 0;
      do
      {
        if (*v608 != v263)
        {
          objc_enumerationMutation(v260);
        }

        PBDataWriterWriteSubmessage();
        ++v264;
      }

      while (v262 != v264);
      v262 = [(NSMutableArray *)v260 countByEnumeratingWithState:&v607 objects:v853 count:16];
    }

    while (v262);
  }

  v606 = 0u;
  v605 = 0u;
  v604 = 0u;
  v603 = 0u;
  v265 = self->_kCellularLteServingCellRsrpHists;
  v266 = [(NSMutableArray *)v265 countByEnumeratingWithState:&v603 objects:v852 count:16];
  if (v266)
  {
    v267 = v266;
    v268 = *v604;
    do
    {
      v269 = 0;
      do
      {
        if (*v604 != v268)
        {
          objc_enumerationMutation(v265);
        }

        PBDataWriterWriteSubmessage();
        ++v269;
      }

      while (v267 != v269);
      v267 = [(NSMutableArray *)v265 countByEnumeratingWithState:&v603 objects:v852 count:16];
    }

    while (v267);
  }

  v602 = 0u;
  v601 = 0u;
  v600 = 0u;
  v599 = 0u;
  v270 = self->_kCellularLteServingCellSinrHists;
  v271 = [(NSMutableArray *)v270 countByEnumeratingWithState:&v599 objects:v851 count:16];
  if (v271)
  {
    v272 = v271;
    v273 = *v600;
    do
    {
      v274 = 0;
      do
      {
        if (*v600 != v273)
        {
          objc_enumerationMutation(v270);
        }

        PBDataWriterWriteSubmessage();
        ++v274;
      }

      while (v272 != v274);
      v272 = [(NSMutableArray *)v270 countByEnumeratingWithState:&v599 objects:v851 count:16];
    }

    while (v272);
  }

  v598 = 0u;
  v597 = 0u;
  v596 = 0u;
  v595 = 0u;
  v275 = self->_kCellularLteSleepStateHists;
  v276 = [(NSMutableArray *)v275 countByEnumeratingWithState:&v595 objects:v850 count:16];
  if (v276)
  {
    v277 = v276;
    v278 = *v596;
    do
    {
      v279 = 0;
      do
      {
        if (*v596 != v278)
        {
          objc_enumerationMutation(v275);
        }

        PBDataWriterWriteSubmessage();
        ++v279;
      }

      while (v277 != v279);
      v277 = [(NSMutableArray *)v275 countByEnumeratingWithState:&v595 objects:v850 count:16];
    }

    while (v277);
  }

  v594 = 0u;
  v593 = 0u;
  v592 = 0u;
  v591 = 0u;
  v280 = self->_kCellularLteTxPowerHists;
  v281 = [(NSMutableArray *)v280 countByEnumeratingWithState:&v591 objects:v849 count:16];
  if (v281)
  {
    v282 = v281;
    v283 = *v592;
    do
    {
      v284 = 0;
      do
      {
        if (*v592 != v283)
        {
          objc_enumerationMutation(v280);
        }

        PBDataWriterWriteSubmessage();
        ++v284;
      }

      while (v282 != v284);
      v282 = [(NSMutableArray *)v280 countByEnumeratingWithState:&v591 objects:v849 count:16];
    }

    while (v282);
  }

  v590 = 0u;
  v589 = 0u;
  v588 = 0u;
  v587 = 0u;
  v285 = self->_kCellularLteDlSccStateHists;
  v286 = [(NSMutableArray *)v285 countByEnumeratingWithState:&v587 objects:v848 count:16];
  if (v286)
  {
    v287 = v286;
    v288 = *v588;
    do
    {
      v289 = 0;
      do
      {
        if (*v588 != v288)
        {
          objc_enumerationMutation(v285);
        }

        PBDataWriterWriteSubmessage();
        ++v289;
      }

      while (v287 != v289);
      v287 = [(NSMutableArray *)v285 countByEnumeratingWithState:&v587 objects:v848 count:16];
    }

    while (v287);
  }

  v586 = 0u;
  v585 = 0u;
  v584 = 0u;
  v583 = 0u;
  v290 = self->_kCellularLteUlSccStateHists;
  v291 = [(NSMutableArray *)v290 countByEnumeratingWithState:&v583 objects:v847 count:16];
  if (v291)
  {
    v292 = v291;
    v293 = *v584;
    do
    {
      v294 = 0;
      do
      {
        if (*v584 != v293)
        {
          objc_enumerationMutation(v290);
        }

        PBDataWriterWriteSubmessage();
        ++v294;
      }

      while (v292 != v294);
      v292 = [(NSMutableArray *)v290 countByEnumeratingWithState:&v583 objects:v847 count:16];
    }

    while (v292);
  }

  v582 = 0u;
  v581 = 0u;
  v580 = 0u;
  v579 = 0u;
  v295 = self->_kCellularLteAdvancedRxStateHists;
  v296 = [(NSMutableArray *)v295 countByEnumeratingWithState:&v579 objects:v846 count:16];
  if (v296)
  {
    v297 = v296;
    v298 = *v580;
    do
    {
      v299 = 0;
      do
      {
        if (*v580 != v298)
        {
          objc_enumerationMutation(v295);
        }

        PBDataWriterWriteSubmessage();
        ++v299;
      }

      while (v297 != v299);
      v297 = [(NSMutableArray *)v295 countByEnumeratingWithState:&v579 objects:v846 count:16];
    }

    while (v297);
  }

  v578 = 0u;
  v577 = 0u;
  v576 = 0u;
  v575 = 0u;
  v300 = self->_kCellularLteComponentCarrierInfos;
  v301 = [(NSMutableArray *)v300 countByEnumeratingWithState:&v575 objects:v845 count:16];
  if (v301)
  {
    v302 = v301;
    v303 = *v576;
    do
    {
      v304 = 0;
      do
      {
        if (*v576 != v303)
        {
          objc_enumerationMutation(v300);
        }

        PBDataWriterWriteSubmessage();
        ++v304;
      }

      while (v302 != v304);
      v302 = [(NSMutableArray *)v300 countByEnumeratingWithState:&v575 objects:v845 count:16];
    }

    while (v302);
  }

  v574 = 0u;
  v573 = 0u;
  v572 = 0u;
  v571 = 0u;
  v305 = self->_kCellularLteRxTxStateHists;
  v306 = [(NSMutableArray *)v305 countByEnumeratingWithState:&v571 objects:v844 count:16];
  if (v306)
  {
    v307 = v306;
    v308 = *v572;
    do
    {
      v309 = 0;
      do
      {
        if (*v572 != v308)
        {
          objc_enumerationMutation(v305);
        }

        PBDataWriterWriteSubmessage();
        ++v309;
      }

      while (v307 != v309);
      v307 = [(NSMutableArray *)v305 countByEnumeratingWithState:&v571 objects:v844 count:16];
    }

    while (v307);
  }

  v570 = 0u;
  v569 = 0u;
  v568 = 0u;
  v567 = 0u;
  v310 = self->_kCellularLteTotalDlTbsHists;
  v311 = [(NSMutableArray *)v310 countByEnumeratingWithState:&v567 objects:v843 count:16];
  if (v311)
  {
    v312 = v311;
    v313 = *v568;
    do
    {
      v314 = 0;
      do
      {
        if (*v568 != v313)
        {
          objc_enumerationMutation(v310);
        }

        PBDataWriterWriteSubmessage();
        ++v314;
      }

      while (v312 != v314);
      v312 = [(NSMutableArray *)v310 countByEnumeratingWithState:&v567 objects:v843 count:16];
    }

    while (v312);
  }

  v566 = 0u;
  v565 = 0u;
  v564 = 0u;
  v563 = 0u;
  v315 = self->_kCellularLteDlSccStateHistV3s;
  v316 = [(NSMutableArray *)v315 countByEnumeratingWithState:&v563 objects:v842 count:16];
  if (v316)
  {
    v317 = v316;
    v318 = *v564;
    do
    {
      v319 = 0;
      do
      {
        if (*v564 != v318)
        {
          objc_enumerationMutation(v315);
        }

        PBDataWriterWriteSubmessage();
        ++v319;
      }

      while (v317 != v319);
      v317 = [(NSMutableArray *)v315 countByEnumeratingWithState:&v563 objects:v842 count:16];
    }

    while (v317);
  }

  v562 = 0u;
  v561 = 0u;
  v560 = 0u;
  v559 = 0u;
  v320 = self->_kCellularLteRxDiversityHists;
  v321 = [(NSMutableArray *)v320 countByEnumeratingWithState:&v559 objects:v841 count:16];
  if (v321)
  {
    v322 = v321;
    v323 = *v560;
    do
    {
      v324 = 0;
      do
      {
        if (*v560 != v323)
        {
          objc_enumerationMutation(v320);
        }

        PBDataWriterWriteSubmessage();
        ++v324;
      }

      while (v322 != v324);
      v322 = [(NSMutableArray *)v320 countByEnumeratingWithState:&v559 objects:v841 count:16];
    }

    while (v322);
  }

  v558 = 0u;
  v557 = 0u;
  v556 = 0u;
  v555 = 0u;
  v325 = self->_kCellularLtePdcchStateHists;
  v326 = [(NSMutableArray *)v325 countByEnumeratingWithState:&v555 objects:v840 count:16];
  if (v326)
  {
    v327 = v326;
    v328 = *v556;
    do
    {
      v329 = 0;
      do
      {
        if (*v556 != v328)
        {
          objc_enumerationMutation(v325);
        }

        PBDataWriterWriteSubmessage();
        ++v329;
      }

      while (v327 != v329);
      v327 = [(NSMutableArray *)v325 countByEnumeratingWithState:&v555 objects:v840 count:16];
    }

    while (v327);
  }

  v554 = 0u;
  v553 = 0u;
  v552 = 0u;
  v551 = 0u;
  v330 = self->_kCellularProtocolStackStateHists;
  v331 = [(NSMutableArray *)v330 countByEnumeratingWithState:&v551 objects:v839 count:16];
  if (v331)
  {
    v332 = v331;
    v333 = *v552;
    do
    {
      v334 = 0;
      do
      {
        if (*v552 != v333)
        {
          objc_enumerationMutation(v330);
        }

        PBDataWriterWriteSubmessage();
        ++v334;
      }

      while (v332 != v334);
      v332 = [(NSMutableArray *)v330 countByEnumeratingWithState:&v551 objects:v839 count:16];
    }

    while (v332);
  }

  v550 = 0u;
  v549 = 0u;
  v548 = 0u;
  v547 = 0u;
  v335 = self->_kCellularCellPlmnSearchCounts;
  v336 = [(NSMutableArray *)v335 countByEnumeratingWithState:&v547 objects:v838 count:16];
  if (v336)
  {
    v337 = v336;
    v338 = *v548;
    do
    {
      v339 = 0;
      do
      {
        if (*v548 != v338)
        {
          objc_enumerationMutation(v335);
        }

        PBDataWriterWriteSubmessage();
        ++v339;
      }

      while (v337 != v339);
      v337 = [(NSMutableArray *)v335 countByEnumeratingWithState:&v547 objects:v838 count:16];
    }

    while (v337);
  }

  v546 = 0u;
  v545 = 0u;
  v544 = 0u;
  v543 = 0u;
  v340 = self->_kCellularCellPlmnSearchHists;
  v341 = [(NSMutableArray *)v340 countByEnumeratingWithState:&v543 objects:v837 count:16];
  if (v341)
  {
    v342 = v341;
    v343 = *v544;
    do
    {
      v344 = 0;
      do
      {
        if (*v544 != v343)
        {
          objc_enumerationMutation(v340);
        }

        PBDataWriterWriteSubmessage();
        ++v344;
      }

      while (v342 != v344);
      v342 = [(NSMutableArray *)v340 countByEnumeratingWithState:&v543 objects:v837 count:16];
    }

    while (v342);
  }

  v542 = 0u;
  v541 = 0u;
  v540 = 0u;
  v539 = 0u;
  v345 = self->_kCellularProtocolStackPowerStates;
  v346 = [(NSMutableArray *)v345 countByEnumeratingWithState:&v539 objects:v836 count:16];
  if (v346)
  {
    v347 = v346;
    v348 = *v540;
    do
    {
      v349 = 0;
      do
      {
        if (*v540 != v348)
        {
          objc_enumerationMutation(v345);
        }

        PBDataWriterWriteSubmessage();
        ++v349;
      }

      while (v347 != v349);
      v347 = [(NSMutableArray *)v345 countByEnumeratingWithState:&v539 objects:v836 count:16];
    }

    while (v347);
  }

  v538 = 0u;
  v537 = 0u;
  v536 = 0u;
  v535 = 0u;
  v350 = self->_kCellularDownlinkIpPacketFilterStatus;
  v351 = [(NSMutableArray *)v350 countByEnumeratingWithState:&v535 objects:v835 count:16];
  if (v351)
  {
    v352 = v351;
    v353 = *v536;
    do
    {
      v354 = 0;
      do
      {
        if (*v536 != v353)
        {
          objc_enumerationMutation(v350);
        }

        PBDataWriterWriteSubmessage();
        ++v354;
      }

      while (v352 != v354);
      v352 = [(NSMutableArray *)v350 countByEnumeratingWithState:&v535 objects:v835 count:16];
    }

    while (v352);
  }

  v534 = 0u;
  v533 = 0u;
  v532 = 0u;
  v531 = 0u;
  v355 = self->_kCellularServingCellRfBandHists;
  v356 = [(NSMutableArray *)v355 countByEnumeratingWithState:&v531 objects:v834 count:16];
  if (v356)
  {
    v357 = v356;
    v358 = *v532;
    do
    {
      v359 = 0;
      do
      {
        if (*v532 != v358)
        {
          objc_enumerationMutation(v355);
        }

        PBDataWriterWriteSubmessage();
        ++v359;
      }

      while (v357 != v359);
      v357 = [(NSMutableArray *)v355 countByEnumeratingWithState:&v531 objects:v834 count:16];
    }

    while (v357);
  }

  v530 = 0u;
  v529 = 0u;
  v528 = 0u;
  v527 = 0u;
  v360 = self->_kCellularProtocolStackStateHist2s;
  v361 = [(NSMutableArray *)v360 countByEnumeratingWithState:&v527 objects:v833 count:16];
  if (v361)
  {
    v362 = v361;
    v363 = *v528;
    do
    {
      v364 = 0;
      do
      {
        if (*v528 != v363)
        {
          objc_enumerationMutation(v360);
        }

        PBDataWriterWriteSubmessage();
        ++v364;
      }

      while (v362 != v364);
      v362 = [(NSMutableArray *)v360 countByEnumeratingWithState:&v527 objects:v833 count:16];
    }

    while (v362);
  }

  v526 = 0u;
  v525 = 0u;
  v524 = 0u;
  v523 = 0u;
  v365 = self->_kCellularProtocolStackStates;
  v366 = [(NSMutableArray *)v365 countByEnumeratingWithState:&v523 objects:v832 count:16];
  if (v366)
  {
    v367 = v366;
    v368 = *v524;
    do
    {
      v369 = 0;
      do
      {
        if (*v524 != v368)
        {
          objc_enumerationMutation(v365);
        }

        PBDataWriterWriteSubmessage();
        ++v369;
      }

      while (v367 != v369);
      v367 = [(NSMutableArray *)v365 countByEnumeratingWithState:&v523 objects:v832 count:16];
    }

    while (v367);
  }

  v522 = 0u;
  v521 = 0u;
  v520 = 0u;
  v519 = 0u;
  v370 = self->_kCellularCdma1XRxDiversityHists;
  v371 = [(NSMutableArray *)v370 countByEnumeratingWithState:&v519 objects:v831 count:16];
  if (v371)
  {
    v372 = v371;
    v373 = *v520;
    do
    {
      v374 = 0;
      do
      {
        if (*v520 != v373)
        {
          objc_enumerationMutation(v370);
        }

        PBDataWriterWriteSubmessage();
        ++v374;
      }

      while (v372 != v374);
      v372 = [(NSMutableArray *)v370 countByEnumeratingWithState:&v519 objects:v831 count:16];
    }

    while (v372);
  }

  v517 = 0u;
  v518 = 0u;
  v515 = 0u;
  v516 = 0u;
  v375 = self->_kCellularCdma1XServingCellRx0RssiHists;
  v376 = [(NSMutableArray *)v375 countByEnumeratingWithState:&v515 objects:v830 count:16];
  if (v376)
  {
    v377 = v376;
    v378 = *v516;
    do
    {
      v379 = 0;
      do
      {
        if (*v516 != v378)
        {
          objc_enumerationMutation(v375);
        }

        PBDataWriterWriteSubmessage();
        ++v379;
      }

      while (v377 != v379);
      v377 = [(NSMutableArray *)v375 countByEnumeratingWithState:&v515 objects:v830 count:16];
    }

    while (v377);
  }

  v513 = 0u;
  v514 = 0u;
  v511 = 0u;
  v512 = 0u;
  v380 = self->_kCellularCdma1XServingCellRx1RssiHists;
  v381 = [(NSMutableArray *)v380 countByEnumeratingWithState:&v511 objects:v829 count:16];
  if (v381)
  {
    v382 = v381;
    v383 = *v512;
    do
    {
      v384 = 0;
      do
      {
        if (*v512 != v383)
        {
          objc_enumerationMutation(v380);
        }

        PBDataWriterWriteSubmessage();
        ++v384;
      }

      while (v382 != v384);
      v382 = [(NSMutableArray *)v380 countByEnumeratingWithState:&v511 objects:v829 count:16];
    }

    while (v382);
  }

  v509 = 0u;
  v510 = 0u;
  v507 = 0u;
  v508 = 0u;
  v385 = self->_kCellularCdma1XServingCellRx0EcIoHists;
  v386 = [(NSMutableArray *)v385 countByEnumeratingWithState:&v507 objects:v828 count:16];
  if (v386)
  {
    v387 = v386;
    v388 = *v508;
    do
    {
      v389 = 0;
      do
      {
        if (*v508 != v388)
        {
          objc_enumerationMutation(v385);
        }

        PBDataWriterWriteSubmessage();
        ++v389;
      }

      while (v387 != v389);
      v387 = [(NSMutableArray *)v385 countByEnumeratingWithState:&v507 objects:v828 count:16];
    }

    while (v387);
  }

  v505 = 0u;
  v506 = 0u;
  v503 = 0u;
  v504 = 0u;
  v390 = self->_kCellularCdma1XServingCellRx1EcIoHists;
  v391 = [(NSMutableArray *)v390 countByEnumeratingWithState:&v503 objects:v827 count:16];
  if (v391)
  {
    v392 = v391;
    v393 = *v504;
    do
    {
      v394 = 0;
      do
      {
        if (*v504 != v393)
        {
          objc_enumerationMutation(v390);
        }

        PBDataWriterWriteSubmessage();
        ++v394;
      }

      while (v392 != v394);
      v392 = [(NSMutableArray *)v390 countByEnumeratingWithState:&v503 objects:v827 count:16];
    }

    while (v392);
  }

  v501 = 0u;
  v502 = 0u;
  v499 = 0u;
  v500 = 0u;
  v395 = self->_kCellularCdma1XTxPowerHists;
  v396 = [(NSMutableArray *)v395 countByEnumeratingWithState:&v499 objects:v826 count:16];
  if (v396)
  {
    v397 = v396;
    v398 = *v500;
    do
    {
      v399 = 0;
      do
      {
        if (*v500 != v398)
        {
          objc_enumerationMutation(v395);
        }

        PBDataWriterWriteSubmessage();
        ++v399;
      }

      while (v397 != v399);
      v397 = [(NSMutableArray *)v395 countByEnumeratingWithState:&v499 objects:v826 count:16];
    }

    while (v397);
  }

  v497 = 0u;
  v498 = 0u;
  v495 = 0u;
  v496 = 0u;
  v400 = self->_kCellularCdma1XProtocolStackStateHists;
  v401 = [(NSMutableArray *)v400 countByEnumeratingWithState:&v495 objects:v825 count:16];
  if (v401)
  {
    v402 = v401;
    v403 = *v496;
    do
    {
      v404 = 0;
      do
      {
        if (*v496 != v403)
        {
          objc_enumerationMutation(v400);
        }

        PBDataWriterWriteSubmessage();
        ++v404;
      }

      while (v402 != v404);
      v402 = [(NSMutableArray *)v400 countByEnumeratingWithState:&v495 objects:v825 count:16];
    }

    while (v402);
  }

  v493 = 0u;
  v494 = 0u;
  v491 = 0u;
  v492 = 0u;
  v405 = self->_kCellularCdma1XConnectionHists;
  v406 = [(NSMutableArray *)v405 countByEnumeratingWithState:&v491 objects:v824 count:16];
  if (v406)
  {
    v407 = v406;
    v408 = *v492;
    do
    {
      v409 = 0;
      do
      {
        if (*v492 != v408)
        {
          objc_enumerationMutation(v405);
        }

        PBDataWriterWriteSubmessage();
        ++v409;
      }

      while (v407 != v409);
      v407 = [(NSMutableArray *)v405 countByEnumeratingWithState:&v491 objects:v824 count:16];
    }

    while (v407);
  }

  v489 = 0u;
  v490 = 0u;
  v487 = 0u;
  v488 = 0u;
  v410 = self->_kCellularCdma1XRrStates;
  v411 = [(NSMutableArray *)v410 countByEnumeratingWithState:&v487 objects:v823 count:16];
  if (v411)
  {
    v412 = v411;
    v413 = *v488;
    do
    {
      v414 = 0;
      do
      {
        if (*v488 != v413)
        {
          objc_enumerationMutation(v410);
        }

        PBDataWriterWriteSubmessage();
        ++v414;
      }

      while (v412 != v414);
      v412 = [(NSMutableArray *)v410 countByEnumeratingWithState:&v487 objects:v823 count:16];
    }

    while (v412);
  }

  v485 = 0u;
  v486 = 0u;
  v483 = 0u;
  v484 = 0u;
  v415 = self->_kCellularCdmaEvdoRxDiversityHists;
  v416 = [(NSMutableArray *)v415 countByEnumeratingWithState:&v483 objects:v822 count:16];
  if (v416)
  {
    v417 = v416;
    v418 = *v484;
    do
    {
      v419 = 0;
      do
      {
        if (*v484 != v418)
        {
          objc_enumerationMutation(v415);
        }

        PBDataWriterWriteSubmessage();
        ++v419;
      }

      while (v417 != v419);
      v417 = [(NSMutableArray *)v415 countByEnumeratingWithState:&v483 objects:v822 count:16];
    }

    while (v417);
  }

  v481 = 0u;
  v482 = 0u;
  v479 = 0u;
  v480 = 0u;
  v420 = self->_kCellularCdmaEvdoServingCellRx0RssiHists;
  v421 = [(NSMutableArray *)v420 countByEnumeratingWithState:&v479 objects:v821 count:16];
  if (v421)
  {
    v422 = v421;
    v423 = *v480;
    do
    {
      v424 = 0;
      do
      {
        if (*v480 != v423)
        {
          objc_enumerationMutation(v420);
        }

        PBDataWriterWriteSubmessage();
        ++v424;
      }

      while (v422 != v424);
      v422 = [(NSMutableArray *)v420 countByEnumeratingWithState:&v479 objects:v821 count:16];
    }

    while (v422);
  }

  v477 = 0u;
  v478 = 0u;
  v475 = 0u;
  v476 = 0u;
  v425 = self->_kCellularCdmaEvdoServingCellRx1RssiHists;
  v426 = [(NSMutableArray *)v425 countByEnumeratingWithState:&v475 objects:v820 count:16];
  if (v426)
  {
    v427 = v426;
    v428 = *v476;
    do
    {
      v429 = 0;
      do
      {
        if (*v476 != v428)
        {
          objc_enumerationMutation(v425);
        }

        PBDataWriterWriteSubmessage();
        ++v429;
      }

      while (v427 != v429);
      v427 = [(NSMutableArray *)v425 countByEnumeratingWithState:&v475 objects:v820 count:16];
    }

    while (v427);
  }

  v473 = 0u;
  v474 = 0u;
  v471 = 0u;
  v472 = 0u;
  v430 = self->_kCellularCdmaEvdoServingCellRx0EcIoHists;
  v431 = [(NSMutableArray *)v430 countByEnumeratingWithState:&v471 objects:v819 count:16];
  if (v431)
  {
    v432 = v431;
    v433 = *v472;
    do
    {
      v434 = 0;
      do
      {
        if (*v472 != v433)
        {
          objc_enumerationMutation(v430);
        }

        PBDataWriterWriteSubmessage();
        ++v434;
      }

      while (v432 != v434);
      v432 = [(NSMutableArray *)v430 countByEnumeratingWithState:&v471 objects:v819 count:16];
    }

    while (v432);
  }

  v469 = 0u;
  v470 = 0u;
  v467 = 0u;
  v468 = 0u;
  v435 = self->_kCellularCdmaEvdoServingCellRx1EcIoHists;
  v436 = [(NSMutableArray *)v435 countByEnumeratingWithState:&v467 objects:v818 count:16];
  if (v436)
  {
    v437 = v436;
    v438 = *v468;
    do
    {
      v439 = 0;
      do
      {
        if (*v468 != v438)
        {
          objc_enumerationMutation(v435);
        }

        PBDataWriterWriteSubmessage();
        ++v439;
      }

      while (v437 != v439);
      v437 = [(NSMutableArray *)v435 countByEnumeratingWithState:&v467 objects:v818 count:16];
    }

    while (v437);
  }

  v465 = 0u;
  v466 = 0u;
  v463 = 0u;
  v464 = 0u;
  v440 = self->_kCellularCdmaEvdoTxPowerHists;
  v441 = [(NSMutableArray *)v440 countByEnumeratingWithState:&v463 objects:v817 count:16];
  if (v441)
  {
    v442 = v441;
    v443 = *v464;
    do
    {
      v444 = 0;
      do
      {
        if (*v464 != v443)
        {
          objc_enumerationMutation(v440);
        }

        PBDataWriterWriteSubmessage();
        ++v444;
      }

      while (v442 != v444);
      v442 = [(NSMutableArray *)v440 countByEnumeratingWithState:&v463 objects:v817 count:16];
    }

    while (v442);
  }

  v461 = 0u;
  v462 = 0u;
  v459 = 0u;
  v460 = 0u;
  v445 = self->_kCellularCdmaEvdoProtocolStackStateHists;
  v446 = [(NSMutableArray *)v445 countByEnumeratingWithState:&v459 objects:v816 count:16];
  if (v446)
  {
    v447 = v446;
    v448 = *v460;
    do
    {
      v449 = 0;
      do
      {
        if (*v460 != v448)
        {
          objc_enumerationMutation(v445);
        }

        PBDataWriterWriteSubmessage();
        ++v449;
      }

      while (v447 != v449);
      v447 = [(NSMutableArray *)v445 countByEnumeratingWithState:&v459 objects:v816 count:16];
    }

    while (v447);
  }

  v457 = 0u;
  v458 = 0u;
  v455 = 0u;
  v456 = 0u;
  v450 = self->_kCellularCdmaEvdoRrStates;
  v451 = [(NSMutableArray *)v450 countByEnumeratingWithState:&v455 objects:v815 count:16];
  if (v451)
  {
    v452 = v451;
    v453 = *v456;
    do
    {
      v454 = 0;
      do
      {
        if (*v456 != v453)
        {
          objc_enumerationMutation(v450);
        }

        PBDataWriterWriteSubmessage();
        ++v454;
      }

      while (v452 != v454);
      v452 = [(NSMutableArray *)v450 countByEnumeratingWithState:&v455 objects:v815 count:16];
    }

    while (v452);
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ([(PowerlogMetricLog *)self kCellularPerClientProfileTriggerCountsCount])
  {
    [toCopy clearKCellularPerClientProfileTriggerCounts];
    kCellularPerClientProfileTriggerCountsCount = [(PowerlogMetricLog *)self kCellularPerClientProfileTriggerCountsCount];
    if (kCellularPerClientProfileTriggerCountsCount)
    {
      v5 = kCellularPerClientProfileTriggerCountsCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(PowerlogMetricLog *)self kCellularPerClientProfileTriggerCountAtIndex:i];
        [toCopy addKCellularPerClientProfileTriggerCount:v7];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularProtocolStackCpuStatsCount])
  {
    [toCopy clearKCellularProtocolStackCpuStats];
    kCellularProtocolStackCpuStatsCount = [(PowerlogMetricLog *)self kCellularProtocolStackCpuStatsCount];
    if (kCellularProtocolStackCpuStatsCount)
    {
      v9 = kCellularProtocolStackCpuStatsCount;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(PowerlogMetricLog *)self kCellularProtocolStackCpuStatsAtIndex:j];
        [toCopy addKCellularProtocolStackCpuStats:v11];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularPeripheralStatsCount])
  {
    [toCopy clearKCellularPeripheralStats];
    kCellularPeripheralStatsCount = [(PowerlogMetricLog *)self kCellularPeripheralStatsCount];
    if (kCellularPeripheralStatsCount)
    {
      v13 = kCellularPeripheralStatsCount;
      for (k = 0; k != v13; ++k)
      {
        v15 = [(PowerlogMetricLog *)self kCellularPeripheralStatsAtIndex:k];
        [toCopy addKCellularPeripheralStats:v15];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularDvfsStatsCount])
  {
    [toCopy clearKCellularDvfsStats];
    kCellularDvfsStatsCount = [(PowerlogMetricLog *)self kCellularDvfsStatsCount];
    if (kCellularDvfsStatsCount)
    {
      v17 = kCellularDvfsStatsCount;
      for (m = 0; m != v17; ++m)
      {
        v19 = [(PowerlogMetricLog *)self kCellularDvfsStatsAtIndex:m];
        [toCopy addKCellularDvfsStats:v19];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularLteWcdmaGsmHwStatsCount])
  {
    [toCopy clearKCellularLteWcdmaGsmHwStats];
    kCellularLteWcdmaGsmHwStatsCount = [(PowerlogMetricLog *)self kCellularLteWcdmaGsmHwStatsCount];
    if (kCellularLteWcdmaGsmHwStatsCount)
    {
      v21 = kCellularLteWcdmaGsmHwStatsCount;
      for (n = 0; n != v21; ++n)
      {
        v23 = [(PowerlogMetricLog *)self kCellularLteWcdmaGsmHwStatsAtIndex:n];
        [toCopy addKCellularLteWcdmaGsmHwStats:v23];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularLteTdsGsmHwStatsCount])
  {
    [toCopy clearKCellularLteTdsGsmHwStats];
    kCellularLteTdsGsmHwStatsCount = [(PowerlogMetricLog *)self kCellularLteTdsGsmHwStatsCount];
    if (kCellularLteTdsGsmHwStatsCount)
    {
      v25 = kCellularLteTdsGsmHwStatsCount;
      for (ii = 0; ii != v25; ++ii)
      {
        v27 = [(PowerlogMetricLog *)self kCellularLteTdsGsmHwStatsAtIndex:ii];
        [toCopy addKCellularLteTdsGsmHwStats:v27];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularPmuAverageCurrentsCount])
  {
    [toCopy clearKCellularPmuAverageCurrents];
    kCellularPmuAverageCurrentsCount = [(PowerlogMetricLog *)self kCellularPmuAverageCurrentsCount];
    if (kCellularPmuAverageCurrentsCount)
    {
      v29 = kCellularPmuAverageCurrentsCount;
      for (jj = 0; jj != v29; ++jj)
      {
        v31 = [(PowerlogMetricLog *)self kCellularPmuAverageCurrentAtIndex:jj];
        [toCopy addKCellularPmuAverageCurrent:v31];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularFwCoreStatsCount])
  {
    [toCopy clearKCellularFwCoreStats];
    kCellularFwCoreStatsCount = [(PowerlogMetricLog *)self kCellularFwCoreStatsCount];
    if (kCellularFwCoreStatsCount)
    {
      v33 = kCellularFwCoreStatsCount;
      for (kk = 0; kk != v33; ++kk)
      {
        v35 = [(PowerlogMetricLog *)self kCellularFwCoreStatsAtIndex:kk];
        [toCopy addKCellularFwCoreStats:v35];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularLteWcdmaTdsHwStatsCount])
  {
    [toCopy clearKCellularLteWcdmaTdsHwStats];
    kCellularLteWcdmaTdsHwStatsCount = [(PowerlogMetricLog *)self kCellularLteWcdmaTdsHwStatsCount];
    if (kCellularLteWcdmaTdsHwStatsCount)
    {
      v37 = kCellularLteWcdmaTdsHwStatsCount;
      for (mm = 0; mm != v37; ++mm)
      {
        v39 = [(PowerlogMetricLog *)self kCellularLteWcdmaTdsHwStatsAtIndex:mm];
        [toCopy addKCellularLteWcdmaTdsHwStats:v39];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularPmicHwStatsCount])
  {
    [toCopy clearKCellularPmicHwStats];
    kCellularPmicHwStatsCount = [(PowerlogMetricLog *)self kCellularPmicHwStatsCount];
    if (kCellularPmicHwStatsCount)
    {
      v41 = kCellularPmicHwStatsCount;
      for (nn = 0; nn != v41; ++nn)
      {
        v43 = [(PowerlogMetricLog *)self kCellularPmicHwStatsAtIndex:nn];
        [toCopy addKCellularPmicHwStats:v43];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularTdsRrcStatesCount])
  {
    [toCopy clearKCellularTdsRrcStates];
    kCellularTdsRrcStatesCount = [(PowerlogMetricLog *)self kCellularTdsRrcStatesCount];
    if (kCellularTdsRrcStatesCount)
    {
      v45 = kCellularTdsRrcStatesCount;
      for (i1 = 0; i1 != v45; ++i1)
      {
        v47 = [(PowerlogMetricLog *)self kCellularTdsRrcStateAtIndex:i1];
        [toCopy addKCellularTdsRrcState:v47];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularLteRrcStatesCount])
  {
    [toCopy clearKCellularLteRrcStates];
    kCellularLteRrcStatesCount = [(PowerlogMetricLog *)self kCellularLteRrcStatesCount];
    if (kCellularLteRrcStatesCount)
    {
      v49 = kCellularLteRrcStatesCount;
      for (i2 = 0; i2 != v49; ++i2)
      {
        v51 = [(PowerlogMetricLog *)self kCellularLteRrcStateAtIndex:i2];
        [toCopy addKCellularLteRrcState:v51];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularLtePagingCyclesCount])
  {
    [toCopy clearKCellularLtePagingCycles];
    kCellularLtePagingCyclesCount = [(PowerlogMetricLog *)self kCellularLtePagingCyclesCount];
    if (kCellularLtePagingCyclesCount)
    {
      v53 = kCellularLtePagingCyclesCount;
      for (i3 = 0; i3 != v53; ++i3)
      {
        v55 = [(PowerlogMetricLog *)self kCellularLtePagingCycleAtIndex:i3];
        [toCopy addKCellularLtePagingCycle:v55];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularLteCdrxConfigsCount])
  {
    [toCopy clearKCellularLteCdrxConfigs];
    kCellularLteCdrxConfigsCount = [(PowerlogMetricLog *)self kCellularLteCdrxConfigsCount];
    if (kCellularLteCdrxConfigsCount)
    {
      v57 = kCellularLteCdrxConfigsCount;
      for (i4 = 0; i4 != v57; ++i4)
      {
        v59 = [(PowerlogMetricLog *)self kCellularLteCdrxConfigAtIndex:i4];
        [toCopy addKCellularLteCdrxConfig:v59];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularLteRadioLinkFailuresCount])
  {
    [toCopy clearKCellularLteRadioLinkFailures];
    kCellularLteRadioLinkFailuresCount = [(PowerlogMetricLog *)self kCellularLteRadioLinkFailuresCount];
    if (kCellularLteRadioLinkFailuresCount)
    {
      v61 = kCellularLteRadioLinkFailuresCount;
      for (i5 = 0; i5 != v61; ++i5)
      {
        v63 = [(PowerlogMetricLog *)self kCellularLteRadioLinkFailureAtIndex:i5];
        [toCopy addKCellularLteRadioLinkFailure:v63];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularLtePdcchStateStatsCount])
  {
    [toCopy clearKCellularLtePdcchStateStats];
    kCellularLtePdcchStateStatsCount = [(PowerlogMetricLog *)self kCellularLtePdcchStateStatsCount];
    if (kCellularLtePdcchStateStatsCount)
    {
      v65 = kCellularLtePdcchStateStatsCount;
      for (i6 = 0; i6 != v65; ++i6)
      {
        v67 = [(PowerlogMetricLog *)self kCellularLtePdcchStateStatsAtIndex:i6];
        [toCopy addKCellularLtePdcchStateStats:v67];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularLqmStateChangesCount])
  {
    [toCopy clearKCellularLqmStateChanges];
    kCellularLqmStateChangesCount = [(PowerlogMetricLog *)self kCellularLqmStateChangesCount];
    if (kCellularLqmStateChangesCount)
    {
      v69 = kCellularLqmStateChangesCount;
      for (i7 = 0; i7 != v69; ++i7)
      {
        v71 = [(PowerlogMetricLog *)self kCellularLqmStateChangeAtIndex:i7];
        [toCopy addKCellularLqmStateChange:v71];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularServiceLostsCount])
  {
    [toCopy clearKCellularServiceLosts];
    kCellularServiceLostsCount = [(PowerlogMetricLog *)self kCellularServiceLostsCount];
    if (kCellularServiceLostsCount)
    {
      v73 = kCellularServiceLostsCount;
      for (i8 = 0; i8 != v73; ++i8)
      {
        v75 = [(PowerlogMetricLog *)self kCellularServiceLostAtIndex:i8];
        [toCopy addKCellularServiceLost:v75];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularGsmServingCellRssiHistsCount])
  {
    [toCopy clearKCellularGsmServingCellRssiHists];
    kCellularGsmServingCellRssiHistsCount = [(PowerlogMetricLog *)self kCellularGsmServingCellRssiHistsCount];
    if (kCellularGsmServingCellRssiHistsCount)
    {
      v77 = kCellularGsmServingCellRssiHistsCount;
      for (i9 = 0; i9 != v77; ++i9)
      {
        v79 = [(PowerlogMetricLog *)self kCellularGsmServingCellRssiHistAtIndex:i9];
        [toCopy addKCellularGsmServingCellRssiHist:v79];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularGsmServingCellSnrHistsCount])
  {
    [toCopy clearKCellularGsmServingCellSnrHists];
    kCellularGsmServingCellSnrHistsCount = [(PowerlogMetricLog *)self kCellularGsmServingCellSnrHistsCount];
    if (kCellularGsmServingCellSnrHistsCount)
    {
      v81 = kCellularGsmServingCellSnrHistsCount;
      for (i10 = 0; i10 != v81; ++i10)
      {
        v83 = [(PowerlogMetricLog *)self kCellularGsmServingCellSnrHistAtIndex:i10];
        [toCopy addKCellularGsmServingCellSnrHist:v83];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularGsmTxPowerHistsCount])
  {
    [toCopy clearKCellularGsmTxPowerHists];
    kCellularGsmTxPowerHistsCount = [(PowerlogMetricLog *)self kCellularGsmTxPowerHistsCount];
    if (kCellularGsmTxPowerHistsCount)
    {
      v85 = kCellularGsmTxPowerHistsCount;
      for (i11 = 0; i11 != v85; ++i11)
      {
        v87 = [(PowerlogMetricLog *)self kCellularGsmTxPowerHistAtIndex:i11];
        [toCopy addKCellularGsmTxPowerHist:v87];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularGsmConnectedModeHistsCount])
  {
    [toCopy clearKCellularGsmConnectedModeHists];
    kCellularGsmConnectedModeHistsCount = [(PowerlogMetricLog *)self kCellularGsmConnectedModeHistsCount];
    if (kCellularGsmConnectedModeHistsCount)
    {
      v89 = kCellularGsmConnectedModeHistsCount;
      for (i12 = 0; i12 != v89; ++i12)
      {
        v91 = [(PowerlogMetricLog *)self kCellularGsmConnectedModeHistAtIndex:i12];
        [toCopy addKCellularGsmConnectedModeHist:v91];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularGsmL1StatesCount])
  {
    [toCopy clearKCellularGsmL1States];
    kCellularGsmL1StatesCount = [(PowerlogMetricLog *)self kCellularGsmL1StatesCount];
    if (kCellularGsmL1StatesCount)
    {
      v93 = kCellularGsmL1StatesCount;
      for (i13 = 0; i13 != v93; ++i13)
      {
        v95 = [(PowerlogMetricLog *)self kCellularGsmL1StateAtIndex:i13];
        [toCopy addKCellularGsmL1State:v95];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularWcdmaCpcStatsCount])
  {
    [toCopy clearKCellularWcdmaCpcStats];
    kCellularWcdmaCpcStatsCount = [(PowerlogMetricLog *)self kCellularWcdmaCpcStatsCount];
    if (kCellularWcdmaCpcStatsCount)
    {
      v97 = kCellularWcdmaCpcStatsCount;
      for (i14 = 0; i14 != v97; ++i14)
      {
        v99 = [(PowerlogMetricLog *)self kCellularWcdmaCpcStatAtIndex:i14];
        [toCopy addKCellularWcdmaCpcStat:v99];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularWcdmaRxDiversityHistsCount])
  {
    [toCopy clearKCellularWcdmaRxDiversityHists];
    kCellularWcdmaRxDiversityHistsCount = [(PowerlogMetricLog *)self kCellularWcdmaRxDiversityHistsCount];
    if (kCellularWcdmaRxDiversityHistsCount)
    {
      v101 = kCellularWcdmaRxDiversityHistsCount;
      for (i15 = 0; i15 != v101; ++i15)
      {
        v103 = [(PowerlogMetricLog *)self kCellularWcdmaRxDiversityHistAtIndex:i15];
        [toCopy addKCellularWcdmaRxDiversityHist:v103];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularWcdmaServingCellRx0RssiHistsCount])
  {
    [toCopy clearKCellularWcdmaServingCellRx0RssiHists];
    kCellularWcdmaServingCellRx0RssiHistsCount = [(PowerlogMetricLog *)self kCellularWcdmaServingCellRx0RssiHistsCount];
    if (kCellularWcdmaServingCellRx0RssiHistsCount)
    {
      v105 = kCellularWcdmaServingCellRx0RssiHistsCount;
      for (i16 = 0; i16 != v105; ++i16)
      {
        v107 = [(PowerlogMetricLog *)self kCellularWcdmaServingCellRx0RssiHistAtIndex:i16];
        [toCopy addKCellularWcdmaServingCellRx0RssiHist:v107];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularWcdmaServingCellRx1RssiHistsCount])
  {
    [toCopy clearKCellularWcdmaServingCellRx1RssiHists];
    kCellularWcdmaServingCellRx1RssiHistsCount = [(PowerlogMetricLog *)self kCellularWcdmaServingCellRx1RssiHistsCount];
    if (kCellularWcdmaServingCellRx1RssiHistsCount)
    {
      v109 = kCellularWcdmaServingCellRx1RssiHistsCount;
      for (i17 = 0; i17 != v109; ++i17)
      {
        v111 = [(PowerlogMetricLog *)self kCellularWcdmaServingCellRx1RssiHistAtIndex:i17];
        [toCopy addKCellularWcdmaServingCellRx1RssiHist:v111];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularWcdmaServingCellRx0EcNoHistsCount])
  {
    [toCopy clearKCellularWcdmaServingCellRx0EcNoHists];
    kCellularWcdmaServingCellRx0EcNoHistsCount = [(PowerlogMetricLog *)self kCellularWcdmaServingCellRx0EcNoHistsCount];
    if (kCellularWcdmaServingCellRx0EcNoHistsCount)
    {
      v113 = kCellularWcdmaServingCellRx0EcNoHistsCount;
      for (i18 = 0; i18 != v113; ++i18)
      {
        v115 = [(PowerlogMetricLog *)self kCellularWcdmaServingCellRx0EcNoHistAtIndex:i18];
        [toCopy addKCellularWcdmaServingCellRx0EcNoHist:v115];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularWcdmaServingCellRx1EcNoHistsCount])
  {
    [toCopy clearKCellularWcdmaServingCellRx1EcNoHists];
    kCellularWcdmaServingCellRx1EcNoHistsCount = [(PowerlogMetricLog *)self kCellularWcdmaServingCellRx1EcNoHistsCount];
    if (kCellularWcdmaServingCellRx1EcNoHistsCount)
    {
      v117 = kCellularWcdmaServingCellRx1EcNoHistsCount;
      for (i19 = 0; i19 != v117; ++i19)
      {
        v119 = [(PowerlogMetricLog *)self kCellularWcdmaServingCellRx1EcNoHistAtIndex:i19];
        [toCopy addKCellularWcdmaServingCellRx1EcNoHist:v119];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularWcdmaTxPowerHistsCount])
  {
    [toCopy clearKCellularWcdmaTxPowerHists];
    kCellularWcdmaTxPowerHistsCount = [(PowerlogMetricLog *)self kCellularWcdmaTxPowerHistsCount];
    if (kCellularWcdmaTxPowerHistsCount)
    {
      v121 = kCellularWcdmaTxPowerHistsCount;
      for (i20 = 0; i20 != v121; ++i20)
      {
        v123 = [(PowerlogMetricLog *)self kCellularWcdmaTxPowerHistAtIndex:i20];
        [toCopy addKCellularWcdmaTxPowerHist:v123];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularWcdmaReceiverStatusOnC0HistsCount])
  {
    [toCopy clearKCellularWcdmaReceiverStatusOnC0Hists];
    kCellularWcdmaReceiverStatusOnC0HistsCount = [(PowerlogMetricLog *)self kCellularWcdmaReceiverStatusOnC0HistsCount];
    if (kCellularWcdmaReceiverStatusOnC0HistsCount)
    {
      v125 = kCellularWcdmaReceiverStatusOnC0HistsCount;
      for (i21 = 0; i21 != v125; ++i21)
      {
        v127 = [(PowerlogMetricLog *)self kCellularWcdmaReceiverStatusOnC0HistAtIndex:i21];
        [toCopy addKCellularWcdmaReceiverStatusOnC0Hist:v127];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularWcdmaReceiverStatusOnC1HistsCount])
  {
    [toCopy clearKCellularWcdmaReceiverStatusOnC1Hists];
    kCellularWcdmaReceiverStatusOnC1HistsCount = [(PowerlogMetricLog *)self kCellularWcdmaReceiverStatusOnC1HistsCount];
    if (kCellularWcdmaReceiverStatusOnC1HistsCount)
    {
      v129 = kCellularWcdmaReceiverStatusOnC1HistsCount;
      for (i22 = 0; i22 != v129; ++i22)
      {
        v131 = [(PowerlogMetricLog *)self kCellularWcdmaReceiverStatusOnC1HistAtIndex:i22];
        [toCopy addKCellularWcdmaReceiverStatusOnC1Hist:v131];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularWcdmaCarrierStatusHistsCount])
  {
    [toCopy clearKCellularWcdmaCarrierStatusHists];
    kCellularWcdmaCarrierStatusHistsCount = [(PowerlogMetricLog *)self kCellularWcdmaCarrierStatusHistsCount];
    if (kCellularWcdmaCarrierStatusHistsCount)
    {
      v133 = kCellularWcdmaCarrierStatusHistsCount;
      for (i23 = 0; i23 != v133; ++i23)
      {
        v135 = [(PowerlogMetricLog *)self kCellularWcdmaCarrierStatusHistAtIndex:i23];
        [toCopy addKCellularWcdmaCarrierStatusHist:v135];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularWcdmaRabModeHistsCount])
  {
    [toCopy clearKCellularWcdmaRabModeHists];
    kCellularWcdmaRabModeHistsCount = [(PowerlogMetricLog *)self kCellularWcdmaRabModeHistsCount];
    if (kCellularWcdmaRabModeHistsCount)
    {
      v137 = kCellularWcdmaRabModeHistsCount;
      for (i24 = 0; i24 != v137; ++i24)
      {
        v139 = [(PowerlogMetricLog *)self kCellularWcdmaRabModeHistAtIndex:i24];
        [toCopy addKCellularWcdmaRabModeHist:v139];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularWcdmaRabTypeHistsCount])
  {
    [toCopy clearKCellularWcdmaRabTypeHists];
    kCellularWcdmaRabTypeHistsCount = [(PowerlogMetricLog *)self kCellularWcdmaRabTypeHistsCount];
    if (kCellularWcdmaRabTypeHistsCount)
    {
      v141 = kCellularWcdmaRabTypeHistsCount;
      for (i25 = 0; i25 != v141; ++i25)
      {
        v143 = [(PowerlogMetricLog *)self kCellularWcdmaRabTypeHistAtIndex:i25];
        [toCopy addKCellularWcdmaRabTypeHist:v143];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularWcdmaRrcConnectionStatesCount])
  {
    [toCopy clearKCellularWcdmaRrcConnectionStates];
    kCellularWcdmaRrcConnectionStatesCount = [(PowerlogMetricLog *)self kCellularWcdmaRrcConnectionStatesCount];
    if (kCellularWcdmaRrcConnectionStatesCount)
    {
      v145 = kCellularWcdmaRrcConnectionStatesCount;
      for (i26 = 0; i26 != v145; ++i26)
      {
        v147 = [(PowerlogMetricLog *)self kCellularWcdmaRrcConnectionStateAtIndex:i26];
        [toCopy addKCellularWcdmaRrcConnectionState:v147];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularWcdmaRrcConfigurationsCount])
  {
    [toCopy clearKCellularWcdmaRrcConfigurations];
    kCellularWcdmaRrcConfigurationsCount = [(PowerlogMetricLog *)self kCellularWcdmaRrcConfigurationsCount];
    if (kCellularWcdmaRrcConfigurationsCount)
    {
      v149 = kCellularWcdmaRrcConfigurationsCount;
      for (i27 = 0; i27 != v149; ++i27)
      {
        v151 = [(PowerlogMetricLog *)self kCellularWcdmaRrcConfigurationAtIndex:i27];
        [toCopy addKCellularWcdmaRrcConfiguration:v151];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularWcdmaRabStatusCount])
  {
    [toCopy clearKCellularWcdmaRabStatus];
    kCellularWcdmaRabStatusCount = [(PowerlogMetricLog *)self kCellularWcdmaRabStatusCount];
    if (kCellularWcdmaRabStatusCount)
    {
      v153 = kCellularWcdmaRabStatusCount;
      for (i28 = 0; i28 != v153; ++i28)
      {
        v155 = [(PowerlogMetricLog *)self kCellularWcdmaRabStatusAtIndex:i28];
        [toCopy addKCellularWcdmaRabStatus:v155];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularWcdmaL1StatesCount])
  {
    [toCopy clearKCellularWcdmaL1States];
    kCellularWcdmaL1StatesCount = [(PowerlogMetricLog *)self kCellularWcdmaL1StatesCount];
    if (kCellularWcdmaL1StatesCount)
    {
      v157 = kCellularWcdmaL1StatesCount;
      for (i29 = 0; i29 != v157; ++i29)
      {
        v159 = [(PowerlogMetricLog *)self kCellularWcdmaL1StateAtIndex:i29];
        [toCopy addKCellularWcdmaL1State:v159];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularWcdmaDataInactivityBeforeIdlesCount])
  {
    [toCopy clearKCellularWcdmaDataInactivityBeforeIdles];
    kCellularWcdmaDataInactivityBeforeIdlesCount = [(PowerlogMetricLog *)self kCellularWcdmaDataInactivityBeforeIdlesCount];
    if (kCellularWcdmaDataInactivityBeforeIdlesCount)
    {
      v161 = kCellularWcdmaDataInactivityBeforeIdlesCount;
      for (i30 = 0; i30 != v161; ++i30)
      {
        v163 = [(PowerlogMetricLog *)self kCellularWcdmaDataInactivityBeforeIdleAtIndex:i30];
        [toCopy addKCellularWcdmaDataInactivityBeforeIdle:v163];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularWcdmaIdleToConnectedUserDatasCount])
  {
    [toCopy clearKCellularWcdmaIdleToConnectedUserDatas];
    kCellularWcdmaIdleToConnectedUserDatasCount = [(PowerlogMetricLog *)self kCellularWcdmaIdleToConnectedUserDatasCount];
    if (kCellularWcdmaIdleToConnectedUserDatasCount)
    {
      v165 = kCellularWcdmaIdleToConnectedUserDatasCount;
      for (i31 = 0; i31 != v165; ++i31)
      {
        v167 = [(PowerlogMetricLog *)self kCellularWcdmaIdleToConnectedUserDataAtIndex:i31];
        [toCopy addKCellularWcdmaIdleToConnectedUserData:v167];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularWcdmaVadHistsCount])
  {
    [toCopy clearKCellularWcdmaVadHists];
    kCellularWcdmaVadHistsCount = [(PowerlogMetricLog *)self kCellularWcdmaVadHistsCount];
    if (kCellularWcdmaVadHistsCount)
    {
      v169 = kCellularWcdmaVadHistsCount;
      for (i32 = 0; i32 != v169; ++i32)
      {
        v171 = [(PowerlogMetricLog *)self kCellularWcdmaVadHistAtIndex:i32];
        [toCopy addKCellularWcdmaVadHist:v171];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularTdsRxDiversityHistsCount])
  {
    [toCopy clearKCellularTdsRxDiversityHists];
    kCellularTdsRxDiversityHistsCount = [(PowerlogMetricLog *)self kCellularTdsRxDiversityHistsCount];
    if (kCellularTdsRxDiversityHistsCount)
    {
      v173 = kCellularTdsRxDiversityHistsCount;
      for (i33 = 0; i33 != v173; ++i33)
      {
        v175 = [(PowerlogMetricLog *)self kCellularTdsRxDiversityHistAtIndex:i33];
        [toCopy addKCellularTdsRxDiversityHist:v175];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularTdsServingCellRx0RssiHistsCount])
  {
    [toCopy clearKCellularTdsServingCellRx0RssiHists];
    kCellularTdsServingCellRx0RssiHistsCount = [(PowerlogMetricLog *)self kCellularTdsServingCellRx0RssiHistsCount];
    if (kCellularTdsServingCellRx0RssiHistsCount)
    {
      v177 = kCellularTdsServingCellRx0RssiHistsCount;
      for (i34 = 0; i34 != v177; ++i34)
      {
        v179 = [(PowerlogMetricLog *)self kCellularTdsServingCellRx0RssiHistAtIndex:i34];
        [toCopy addKCellularTdsServingCellRx0RssiHist:v179];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularTdsServingCellRx1RssiHistsCount])
  {
    [toCopy clearKCellularTdsServingCellRx1RssiHists];
    kCellularTdsServingCellRx1RssiHistsCount = [(PowerlogMetricLog *)self kCellularTdsServingCellRx1RssiHistsCount];
    if (kCellularTdsServingCellRx1RssiHistsCount)
    {
      v181 = kCellularTdsServingCellRx1RssiHistsCount;
      for (i35 = 0; i35 != v181; ++i35)
      {
        v183 = [(PowerlogMetricLog *)self kCellularTdsServingCellRx1RssiHistAtIndex:i35];
        [toCopy addKCellularTdsServingCellRx1RssiHist:v183];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularTdsServingCellRx0RscpHistsCount])
  {
    [toCopy clearKCellularTdsServingCellRx0RscpHists];
    kCellularTdsServingCellRx0RscpHistsCount = [(PowerlogMetricLog *)self kCellularTdsServingCellRx0RscpHistsCount];
    if (kCellularTdsServingCellRx0RscpHistsCount)
    {
      v185 = kCellularTdsServingCellRx0RscpHistsCount;
      for (i36 = 0; i36 != v185; ++i36)
      {
        v187 = [(PowerlogMetricLog *)self kCellularTdsServingCellRx0RscpHistAtIndex:i36];
        [toCopy addKCellularTdsServingCellRx0RscpHist:v187];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularTdsServingCellRx1RscpHistsCount])
  {
    [toCopy clearKCellularTdsServingCellRx1RscpHists];
    kCellularTdsServingCellRx1RscpHistsCount = [(PowerlogMetricLog *)self kCellularTdsServingCellRx1RscpHistsCount];
    if (kCellularTdsServingCellRx1RscpHistsCount)
    {
      v189 = kCellularTdsServingCellRx1RscpHistsCount;
      for (i37 = 0; i37 != v189; ++i37)
      {
        v191 = [(PowerlogMetricLog *)self kCellularTdsServingCellRx1RscpHistAtIndex:i37];
        [toCopy addKCellularTdsServingCellRx1RscpHist:v191];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularTdsTxPowerHistsCount])
  {
    [toCopy clearKCellularTdsTxPowerHists];
    kCellularTdsTxPowerHistsCount = [(PowerlogMetricLog *)self kCellularTdsTxPowerHistsCount];
    if (kCellularTdsTxPowerHistsCount)
    {
      v193 = kCellularTdsTxPowerHistsCount;
      for (i38 = 0; i38 != v193; ++i38)
      {
        v195 = [(PowerlogMetricLog *)self kCellularTdsTxPowerHistAtIndex:i38];
        [toCopy addKCellularTdsTxPowerHist:v195];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularTdsRabModeHistsCount])
  {
    [toCopy clearKCellularTdsRabModeHists];
    kCellularTdsRabModeHistsCount = [(PowerlogMetricLog *)self kCellularTdsRabModeHistsCount];
    if (kCellularTdsRabModeHistsCount)
    {
      v197 = kCellularTdsRabModeHistsCount;
      for (i39 = 0; i39 != v197; ++i39)
      {
        v199 = [(PowerlogMetricLog *)self kCellularTdsRabModeHistAtIndex:i39];
        [toCopy addKCellularTdsRabModeHist:v199];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularTdsRabTypeHistsCount])
  {
    [toCopy clearKCellularTdsRabTypeHists];
    kCellularTdsRabTypeHistsCount = [(PowerlogMetricLog *)self kCellularTdsRabTypeHistsCount];
    if (kCellularTdsRabTypeHistsCount)
    {
      v201 = kCellularTdsRabTypeHistsCount;
      for (i40 = 0; i40 != v201; ++i40)
      {
        v203 = [(PowerlogMetricLog *)self kCellularTdsRabTypeHistAtIndex:i40];
        [toCopy addKCellularTdsRabTypeHist:v203];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularTdsL1StatesCount])
  {
    [toCopy clearKCellularTdsL1States];
    kCellularTdsL1StatesCount = [(PowerlogMetricLog *)self kCellularTdsL1StatesCount];
    if (kCellularTdsL1StatesCount)
    {
      v205 = kCellularTdsL1StatesCount;
      for (i41 = 0; i41 != v205; ++i41)
      {
        v207 = [(PowerlogMetricLog *)self kCellularTdsL1StateAtIndex:i41];
        [toCopy addKCellularTdsL1State:v207];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularLteFwDuplexModesCount])
  {
    [toCopy clearKCellularLteFwDuplexModes];
    kCellularLteFwDuplexModesCount = [(PowerlogMetricLog *)self kCellularLteFwDuplexModesCount];
    if (kCellularLteFwDuplexModesCount)
    {
      v209 = kCellularLteFwDuplexModesCount;
      for (i42 = 0; i42 != v209; ++i42)
      {
        v211 = [(PowerlogMetricLog *)self kCellularLteFwDuplexModeAtIndex:i42];
        [toCopy addKCellularLteFwDuplexMode:v211];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularLteServingCellRsrpHistsCount])
  {
    [toCopy clearKCellularLteServingCellRsrpHists];
    kCellularLteServingCellRsrpHistsCount = [(PowerlogMetricLog *)self kCellularLteServingCellRsrpHistsCount];
    if (kCellularLteServingCellRsrpHistsCount)
    {
      v213 = kCellularLteServingCellRsrpHistsCount;
      for (i43 = 0; i43 != v213; ++i43)
      {
        v215 = [(PowerlogMetricLog *)self kCellularLteServingCellRsrpHistAtIndex:i43];
        [toCopy addKCellularLteServingCellRsrpHist:v215];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularLteServingCellSinrHistsCount])
  {
    [toCopy clearKCellularLteServingCellSinrHists];
    kCellularLteServingCellSinrHistsCount = [(PowerlogMetricLog *)self kCellularLteServingCellSinrHistsCount];
    if (kCellularLteServingCellSinrHistsCount)
    {
      v217 = kCellularLteServingCellSinrHistsCount;
      for (i44 = 0; i44 != v217; ++i44)
      {
        v219 = [(PowerlogMetricLog *)self kCellularLteServingCellSinrHistAtIndex:i44];
        [toCopy addKCellularLteServingCellSinrHist:v219];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularLteSleepStateHistsCount])
  {
    [toCopy clearKCellularLteSleepStateHists];
    kCellularLteSleepStateHistsCount = [(PowerlogMetricLog *)self kCellularLteSleepStateHistsCount];
    if (kCellularLteSleepStateHistsCount)
    {
      v221 = kCellularLteSleepStateHistsCount;
      for (i45 = 0; i45 != v221; ++i45)
      {
        v223 = [(PowerlogMetricLog *)self kCellularLteSleepStateHistAtIndex:i45];
        [toCopy addKCellularLteSleepStateHist:v223];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularLteTxPowerHistsCount])
  {
    [toCopy clearKCellularLteTxPowerHists];
    kCellularLteTxPowerHistsCount = [(PowerlogMetricLog *)self kCellularLteTxPowerHistsCount];
    if (kCellularLteTxPowerHistsCount)
    {
      v225 = kCellularLteTxPowerHistsCount;
      for (i46 = 0; i46 != v225; ++i46)
      {
        v227 = [(PowerlogMetricLog *)self kCellularLteTxPowerHistAtIndex:i46];
        [toCopy addKCellularLteTxPowerHist:v227];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularLteDlSccStateHistsCount])
  {
    [toCopy clearKCellularLteDlSccStateHists];
    kCellularLteDlSccStateHistsCount = [(PowerlogMetricLog *)self kCellularLteDlSccStateHistsCount];
    if (kCellularLteDlSccStateHistsCount)
    {
      v229 = kCellularLteDlSccStateHistsCount;
      for (i47 = 0; i47 != v229; ++i47)
      {
        v231 = [(PowerlogMetricLog *)self kCellularLteDlSccStateHistAtIndex:i47];
        [toCopy addKCellularLteDlSccStateHist:v231];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularLteUlSccStateHistsCount])
  {
    [toCopy clearKCellularLteUlSccStateHists];
    kCellularLteUlSccStateHistsCount = [(PowerlogMetricLog *)self kCellularLteUlSccStateHistsCount];
    if (kCellularLteUlSccStateHistsCount)
    {
      v233 = kCellularLteUlSccStateHistsCount;
      for (i48 = 0; i48 != v233; ++i48)
      {
        v235 = [(PowerlogMetricLog *)self kCellularLteUlSccStateHistAtIndex:i48];
        [toCopy addKCellularLteUlSccStateHist:v235];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularLteAdvancedRxStateHistsCount])
  {
    [toCopy clearKCellularLteAdvancedRxStateHists];
    kCellularLteAdvancedRxStateHistsCount = [(PowerlogMetricLog *)self kCellularLteAdvancedRxStateHistsCount];
    if (kCellularLteAdvancedRxStateHistsCount)
    {
      v237 = kCellularLteAdvancedRxStateHistsCount;
      for (i49 = 0; i49 != v237; ++i49)
      {
        v239 = [(PowerlogMetricLog *)self kCellularLteAdvancedRxStateHistAtIndex:i49];
        [toCopy addKCellularLteAdvancedRxStateHist:v239];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularLteComponentCarrierInfosCount])
  {
    [toCopy clearKCellularLteComponentCarrierInfos];
    kCellularLteComponentCarrierInfosCount = [(PowerlogMetricLog *)self kCellularLteComponentCarrierInfosCount];
    if (kCellularLteComponentCarrierInfosCount)
    {
      v241 = kCellularLteComponentCarrierInfosCount;
      for (i50 = 0; i50 != v241; ++i50)
      {
        v243 = [(PowerlogMetricLog *)self kCellularLteComponentCarrierInfoAtIndex:i50];
        [toCopy addKCellularLteComponentCarrierInfo:v243];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularLteRxTxStateHistsCount])
  {
    [toCopy clearKCellularLteRxTxStateHists];
    kCellularLteRxTxStateHistsCount = [(PowerlogMetricLog *)self kCellularLteRxTxStateHistsCount];
    if (kCellularLteRxTxStateHistsCount)
    {
      v245 = kCellularLteRxTxStateHistsCount;
      for (i51 = 0; i51 != v245; ++i51)
      {
        v247 = [(PowerlogMetricLog *)self kCellularLteRxTxStateHistAtIndex:i51];
        [toCopy addKCellularLteRxTxStateHist:v247];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularLteTotalDlTbsHistsCount])
  {
    [toCopy clearKCellularLteTotalDlTbsHists];
    kCellularLteTotalDlTbsHistsCount = [(PowerlogMetricLog *)self kCellularLteTotalDlTbsHistsCount];
    if (kCellularLteTotalDlTbsHistsCount)
    {
      v249 = kCellularLteTotalDlTbsHistsCount;
      for (i52 = 0; i52 != v249; ++i52)
      {
        v251 = [(PowerlogMetricLog *)self kCellularLteTotalDlTbsHistAtIndex:i52];
        [toCopy addKCellularLteTotalDlTbsHist:v251];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularLteDlSccStateHistV3sCount])
  {
    [toCopy clearKCellularLteDlSccStateHistV3s];
    kCellularLteDlSccStateHistV3sCount = [(PowerlogMetricLog *)self kCellularLteDlSccStateHistV3sCount];
    if (kCellularLteDlSccStateHistV3sCount)
    {
      v253 = kCellularLteDlSccStateHistV3sCount;
      for (i53 = 0; i53 != v253; ++i53)
      {
        v255 = [(PowerlogMetricLog *)self kCellularLteDlSccStateHistV3AtIndex:i53];
        [toCopy addKCellularLteDlSccStateHistV3:v255];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularLteRxDiversityHistsCount])
  {
    [toCopy clearKCellularLteRxDiversityHists];
    kCellularLteRxDiversityHistsCount = [(PowerlogMetricLog *)self kCellularLteRxDiversityHistsCount];
    if (kCellularLteRxDiversityHistsCount)
    {
      v257 = kCellularLteRxDiversityHistsCount;
      for (i54 = 0; i54 != v257; ++i54)
      {
        v259 = [(PowerlogMetricLog *)self kCellularLteRxDiversityHistAtIndex:i54];
        [toCopy addKCellularLteRxDiversityHist:v259];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularLtePdcchStateHistsCount])
  {
    [toCopy clearKCellularLtePdcchStateHists];
    kCellularLtePdcchStateHistsCount = [(PowerlogMetricLog *)self kCellularLtePdcchStateHistsCount];
    if (kCellularLtePdcchStateHistsCount)
    {
      v261 = kCellularLtePdcchStateHistsCount;
      for (i55 = 0; i55 != v261; ++i55)
      {
        v263 = [(PowerlogMetricLog *)self kCellularLtePdcchStateHistAtIndex:i55];
        [toCopy addKCellularLtePdcchStateHist:v263];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularProtocolStackStateHistsCount])
  {
    [toCopy clearKCellularProtocolStackStateHists];
    kCellularProtocolStackStateHistsCount = [(PowerlogMetricLog *)self kCellularProtocolStackStateHistsCount];
    if (kCellularProtocolStackStateHistsCount)
    {
      v265 = kCellularProtocolStackStateHistsCount;
      for (i56 = 0; i56 != v265; ++i56)
      {
        v267 = [(PowerlogMetricLog *)self kCellularProtocolStackStateHistAtIndex:i56];
        [toCopy addKCellularProtocolStackStateHist:v267];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularCellPlmnSearchCountsCount])
  {
    [toCopy clearKCellularCellPlmnSearchCounts];
    kCellularCellPlmnSearchCountsCount = [(PowerlogMetricLog *)self kCellularCellPlmnSearchCountsCount];
    if (kCellularCellPlmnSearchCountsCount)
    {
      v269 = kCellularCellPlmnSearchCountsCount;
      for (i57 = 0; i57 != v269; ++i57)
      {
        v271 = [(PowerlogMetricLog *)self kCellularCellPlmnSearchCountAtIndex:i57];
        [toCopy addKCellularCellPlmnSearchCount:v271];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularCellPlmnSearchHistsCount])
  {
    [toCopy clearKCellularCellPlmnSearchHists];
    kCellularCellPlmnSearchHistsCount = [(PowerlogMetricLog *)self kCellularCellPlmnSearchHistsCount];
    if (kCellularCellPlmnSearchHistsCount)
    {
      v273 = kCellularCellPlmnSearchHistsCount;
      for (i58 = 0; i58 != v273; ++i58)
      {
        v275 = [(PowerlogMetricLog *)self kCellularCellPlmnSearchHistAtIndex:i58];
        [toCopy addKCellularCellPlmnSearchHist:v275];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularProtocolStackPowerStatesCount])
  {
    [toCopy clearKCellularProtocolStackPowerStates];
    kCellularProtocolStackPowerStatesCount = [(PowerlogMetricLog *)self kCellularProtocolStackPowerStatesCount];
    if (kCellularProtocolStackPowerStatesCount)
    {
      v277 = kCellularProtocolStackPowerStatesCount;
      for (i59 = 0; i59 != v277; ++i59)
      {
        v279 = [(PowerlogMetricLog *)self kCellularProtocolStackPowerStateAtIndex:i59];
        [toCopy addKCellularProtocolStackPowerState:v279];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularDownlinkIpPacketFilterStatusCount])
  {
    [toCopy clearKCellularDownlinkIpPacketFilterStatus];
    kCellularDownlinkIpPacketFilterStatusCount = [(PowerlogMetricLog *)self kCellularDownlinkIpPacketFilterStatusCount];
    if (kCellularDownlinkIpPacketFilterStatusCount)
    {
      v281 = kCellularDownlinkIpPacketFilterStatusCount;
      for (i60 = 0; i60 != v281; ++i60)
      {
        v283 = [(PowerlogMetricLog *)self kCellularDownlinkIpPacketFilterStatusAtIndex:i60];
        [toCopy addKCellularDownlinkIpPacketFilterStatus:v283];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularServingCellRfBandHistsCount])
  {
    [toCopy clearKCellularServingCellRfBandHists];
    kCellularServingCellRfBandHistsCount = [(PowerlogMetricLog *)self kCellularServingCellRfBandHistsCount];
    if (kCellularServingCellRfBandHistsCount)
    {
      v285 = kCellularServingCellRfBandHistsCount;
      for (i61 = 0; i61 != v285; ++i61)
      {
        v287 = [(PowerlogMetricLog *)self kCellularServingCellRfBandHistAtIndex:i61];
        [toCopy addKCellularServingCellRfBandHist:v287];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularProtocolStackStateHist2sCount])
  {
    [toCopy clearKCellularProtocolStackStateHist2s];
    kCellularProtocolStackStateHist2sCount = [(PowerlogMetricLog *)self kCellularProtocolStackStateHist2sCount];
    if (kCellularProtocolStackStateHist2sCount)
    {
      v289 = kCellularProtocolStackStateHist2sCount;
      for (i62 = 0; i62 != v289; ++i62)
      {
        v291 = [(PowerlogMetricLog *)self kCellularProtocolStackStateHist2AtIndex:i62];
        [toCopy addKCellularProtocolStackStateHist2:v291];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularProtocolStackStatesCount])
  {
    [toCopy clearKCellularProtocolStackStates];
    kCellularProtocolStackStatesCount = [(PowerlogMetricLog *)self kCellularProtocolStackStatesCount];
    if (kCellularProtocolStackStatesCount)
    {
      v293 = kCellularProtocolStackStatesCount;
      for (i63 = 0; i63 != v293; ++i63)
      {
        v295 = [(PowerlogMetricLog *)self kCellularProtocolStackStateAtIndex:i63];
        [toCopy addKCellularProtocolStackState:v295];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularCdma1XRxDiversityHistsCount])
  {
    [toCopy clearKCellularCdma1XRxDiversityHists];
    kCellularCdma1XRxDiversityHistsCount = [(PowerlogMetricLog *)self kCellularCdma1XRxDiversityHistsCount];
    if (kCellularCdma1XRxDiversityHistsCount)
    {
      v297 = kCellularCdma1XRxDiversityHistsCount;
      for (i64 = 0; i64 != v297; ++i64)
      {
        v299 = [(PowerlogMetricLog *)self kCellularCdma1XRxDiversityHistAtIndex:i64];
        [toCopy addKCellularCdma1XRxDiversityHist:v299];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularCdma1XServingCellRx0RssiHistsCount])
  {
    [toCopy clearKCellularCdma1XServingCellRx0RssiHists];
    kCellularCdma1XServingCellRx0RssiHistsCount = [(PowerlogMetricLog *)self kCellularCdma1XServingCellRx0RssiHistsCount];
    if (kCellularCdma1XServingCellRx0RssiHistsCount)
    {
      v301 = kCellularCdma1XServingCellRx0RssiHistsCount;
      for (i65 = 0; i65 != v301; ++i65)
      {
        v303 = [(PowerlogMetricLog *)self kCellularCdma1XServingCellRx0RssiHistAtIndex:i65];
        [toCopy addKCellularCdma1XServingCellRx0RssiHist:v303];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularCdma1XServingCellRx1RssiHistsCount])
  {
    [toCopy clearKCellularCdma1XServingCellRx1RssiHists];
    kCellularCdma1XServingCellRx1RssiHistsCount = [(PowerlogMetricLog *)self kCellularCdma1XServingCellRx1RssiHistsCount];
    if (kCellularCdma1XServingCellRx1RssiHistsCount)
    {
      v305 = kCellularCdma1XServingCellRx1RssiHistsCount;
      for (i66 = 0; i66 != v305; ++i66)
      {
        v307 = [(PowerlogMetricLog *)self kCellularCdma1XServingCellRx1RssiHistAtIndex:i66];
        [toCopy addKCellularCdma1XServingCellRx1RssiHist:v307];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularCdma1XServingCellRx0EcIoHistsCount])
  {
    [toCopy clearKCellularCdma1XServingCellRx0EcIoHists];
    kCellularCdma1XServingCellRx0EcIoHistsCount = [(PowerlogMetricLog *)self kCellularCdma1XServingCellRx0EcIoHistsCount];
    if (kCellularCdma1XServingCellRx0EcIoHistsCount)
    {
      v309 = kCellularCdma1XServingCellRx0EcIoHistsCount;
      for (i67 = 0; i67 != v309; ++i67)
      {
        v311 = [(PowerlogMetricLog *)self kCellularCdma1XServingCellRx0EcIoHistAtIndex:i67];
        [toCopy addKCellularCdma1XServingCellRx0EcIoHist:v311];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularCdma1XServingCellRx1EcIoHistsCount])
  {
    [toCopy clearKCellularCdma1XServingCellRx1EcIoHists];
    kCellularCdma1XServingCellRx1EcIoHistsCount = [(PowerlogMetricLog *)self kCellularCdma1XServingCellRx1EcIoHistsCount];
    if (kCellularCdma1XServingCellRx1EcIoHistsCount)
    {
      v313 = kCellularCdma1XServingCellRx1EcIoHistsCount;
      for (i68 = 0; i68 != v313; ++i68)
      {
        v315 = [(PowerlogMetricLog *)self kCellularCdma1XServingCellRx1EcIoHistAtIndex:i68];
        [toCopy addKCellularCdma1XServingCellRx1EcIoHist:v315];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularCdma1XTxPowerHistsCount])
  {
    [toCopy clearKCellularCdma1XTxPowerHists];
    kCellularCdma1XTxPowerHistsCount = [(PowerlogMetricLog *)self kCellularCdma1XTxPowerHistsCount];
    if (kCellularCdma1XTxPowerHistsCount)
    {
      v317 = kCellularCdma1XTxPowerHistsCount;
      for (i69 = 0; i69 != v317; ++i69)
      {
        v319 = [(PowerlogMetricLog *)self kCellularCdma1XTxPowerHistAtIndex:i69];
        [toCopy addKCellularCdma1XTxPowerHist:v319];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularCdma1XProtocolStackStateHistsCount])
  {
    [toCopy clearKCellularCdma1XProtocolStackStateHists];
    kCellularCdma1XProtocolStackStateHistsCount = [(PowerlogMetricLog *)self kCellularCdma1XProtocolStackStateHistsCount];
    if (kCellularCdma1XProtocolStackStateHistsCount)
    {
      v321 = kCellularCdma1XProtocolStackStateHistsCount;
      for (i70 = 0; i70 != v321; ++i70)
      {
        v323 = [(PowerlogMetricLog *)self kCellularCdma1XProtocolStackStateHistAtIndex:i70];
        [toCopy addKCellularCdma1XProtocolStackStateHist:v323];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularCdma1XConnectionHistsCount])
  {
    [toCopy clearKCellularCdma1XConnectionHists];
    kCellularCdma1XConnectionHistsCount = [(PowerlogMetricLog *)self kCellularCdma1XConnectionHistsCount];
    if (kCellularCdma1XConnectionHistsCount)
    {
      v325 = kCellularCdma1XConnectionHistsCount;
      for (i71 = 0; i71 != v325; ++i71)
      {
        v327 = [(PowerlogMetricLog *)self kCellularCdma1XConnectionHistAtIndex:i71];
        [toCopy addKCellularCdma1XConnectionHist:v327];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularCdma1XRrStatesCount])
  {
    [toCopy clearKCellularCdma1XRrStates];
    kCellularCdma1XRrStatesCount = [(PowerlogMetricLog *)self kCellularCdma1XRrStatesCount];
    if (kCellularCdma1XRrStatesCount)
    {
      v329 = kCellularCdma1XRrStatesCount;
      for (i72 = 0; i72 != v329; ++i72)
      {
        v331 = [(PowerlogMetricLog *)self kCellularCdma1XRrStateAtIndex:i72];
        [toCopy addKCellularCdma1XRrState:v331];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularCdmaEvdoRxDiversityHistsCount])
  {
    [toCopy clearKCellularCdmaEvdoRxDiversityHists];
    kCellularCdmaEvdoRxDiversityHistsCount = [(PowerlogMetricLog *)self kCellularCdmaEvdoRxDiversityHistsCount];
    if (kCellularCdmaEvdoRxDiversityHistsCount)
    {
      v333 = kCellularCdmaEvdoRxDiversityHistsCount;
      for (i73 = 0; i73 != v333; ++i73)
      {
        v335 = [(PowerlogMetricLog *)self kCellularCdmaEvdoRxDiversityHistAtIndex:i73];
        [toCopy addKCellularCdmaEvdoRxDiversityHist:v335];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularCdmaEvdoServingCellRx0RssiHistsCount])
  {
    [toCopy clearKCellularCdmaEvdoServingCellRx0RssiHists];
    kCellularCdmaEvdoServingCellRx0RssiHistsCount = [(PowerlogMetricLog *)self kCellularCdmaEvdoServingCellRx0RssiHistsCount];
    if (kCellularCdmaEvdoServingCellRx0RssiHistsCount)
    {
      v337 = kCellularCdmaEvdoServingCellRx0RssiHistsCount;
      for (i74 = 0; i74 != v337; ++i74)
      {
        v339 = [(PowerlogMetricLog *)self kCellularCdmaEvdoServingCellRx0RssiHistAtIndex:i74];
        [toCopy addKCellularCdmaEvdoServingCellRx0RssiHist:v339];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularCdmaEvdoServingCellRx1RssiHistsCount])
  {
    [toCopy clearKCellularCdmaEvdoServingCellRx1RssiHists];
    kCellularCdmaEvdoServingCellRx1RssiHistsCount = [(PowerlogMetricLog *)self kCellularCdmaEvdoServingCellRx1RssiHistsCount];
    if (kCellularCdmaEvdoServingCellRx1RssiHistsCount)
    {
      v341 = kCellularCdmaEvdoServingCellRx1RssiHistsCount;
      for (i75 = 0; i75 != v341; ++i75)
      {
        v343 = [(PowerlogMetricLog *)self kCellularCdmaEvdoServingCellRx1RssiHistAtIndex:i75];
        [toCopy addKCellularCdmaEvdoServingCellRx1RssiHist:v343];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularCdmaEvdoServingCellRx0EcIoHistsCount])
  {
    [toCopy clearKCellularCdmaEvdoServingCellRx0EcIoHists];
    kCellularCdmaEvdoServingCellRx0EcIoHistsCount = [(PowerlogMetricLog *)self kCellularCdmaEvdoServingCellRx0EcIoHistsCount];
    if (kCellularCdmaEvdoServingCellRx0EcIoHistsCount)
    {
      v345 = kCellularCdmaEvdoServingCellRx0EcIoHistsCount;
      for (i76 = 0; i76 != v345; ++i76)
      {
        v347 = [(PowerlogMetricLog *)self kCellularCdmaEvdoServingCellRx0EcIoHistAtIndex:i76];
        [toCopy addKCellularCdmaEvdoServingCellRx0EcIoHist:v347];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularCdmaEvdoServingCellRx1EcIoHistsCount])
  {
    [toCopy clearKCellularCdmaEvdoServingCellRx1EcIoHists];
    kCellularCdmaEvdoServingCellRx1EcIoHistsCount = [(PowerlogMetricLog *)self kCellularCdmaEvdoServingCellRx1EcIoHistsCount];
    if (kCellularCdmaEvdoServingCellRx1EcIoHistsCount)
    {
      v349 = kCellularCdmaEvdoServingCellRx1EcIoHistsCount;
      for (i77 = 0; i77 != v349; ++i77)
      {
        v351 = [(PowerlogMetricLog *)self kCellularCdmaEvdoServingCellRx1EcIoHistAtIndex:i77];
        [toCopy addKCellularCdmaEvdoServingCellRx1EcIoHist:v351];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularCdmaEvdoTxPowerHistsCount])
  {
    [toCopy clearKCellularCdmaEvdoTxPowerHists];
    kCellularCdmaEvdoTxPowerHistsCount = [(PowerlogMetricLog *)self kCellularCdmaEvdoTxPowerHistsCount];
    if (kCellularCdmaEvdoTxPowerHistsCount)
    {
      v353 = kCellularCdmaEvdoTxPowerHistsCount;
      for (i78 = 0; i78 != v353; ++i78)
      {
        v355 = [(PowerlogMetricLog *)self kCellularCdmaEvdoTxPowerHistAtIndex:i78];
        [toCopy addKCellularCdmaEvdoTxPowerHist:v355];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularCdmaEvdoProtocolStackStateHistsCount])
  {
    [toCopy clearKCellularCdmaEvdoProtocolStackStateHists];
    kCellularCdmaEvdoProtocolStackStateHistsCount = [(PowerlogMetricLog *)self kCellularCdmaEvdoProtocolStackStateHistsCount];
    if (kCellularCdmaEvdoProtocolStackStateHistsCount)
    {
      v357 = kCellularCdmaEvdoProtocolStackStateHistsCount;
      for (i79 = 0; i79 != v357; ++i79)
      {
        v359 = [(PowerlogMetricLog *)self kCellularCdmaEvdoProtocolStackStateHistAtIndex:i79];
        [toCopy addKCellularCdmaEvdoProtocolStackStateHist:v359];
      }
    }
  }

  if ([(PowerlogMetricLog *)self kCellularCdmaEvdoRrStatesCount])
  {
    [toCopy clearKCellularCdmaEvdoRrStates];
    kCellularCdmaEvdoRrStatesCount = [(PowerlogMetricLog *)self kCellularCdmaEvdoRrStatesCount];
    if (kCellularCdmaEvdoRrStatesCount)
    {
      v361 = kCellularCdmaEvdoRrStatesCount;
      for (i80 = 0; i80 != v361; ++i80)
      {
        v363 = [(PowerlogMetricLog *)self kCellularCdmaEvdoRrStateAtIndex:i80];
        [toCopy addKCellularCdmaEvdoRrState:v363];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v998 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v904 = 0u;
  v905 = 0u;
  v906 = 0u;
  v907 = 0u;
  v6 = self->_kCellularPerClientProfileTriggerCounts;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v904 objects:v997 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v905;
    do
    {
      v10 = 0;
      do
      {
        if (*v905 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v904 + 1) + 8 * v10) copyWithZone:zone];
        [v5 addKCellularPerClientProfileTriggerCount:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v904 objects:v997 count:16];
    }

    while (v8);
  }

  v903 = 0u;
  v902 = 0u;
  v901 = 0u;
  v900 = 0u;
  v12 = self->_kCellularProtocolStackCpuStats;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v900 objects:v996 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v901;
    do
    {
      v16 = 0;
      do
      {
        if (*v901 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v900 + 1) + 8 * v16) copyWithZone:zone];
        [v5 addKCellularProtocolStackCpuStats:v17];

        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v900 objects:v996 count:16];
    }

    while (v14);
  }

  v899 = 0u;
  v898 = 0u;
  v897 = 0u;
  v896 = 0u;
  v18 = self->_kCellularPeripheralStats;
  v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v896 objects:v995 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v897;
    do
    {
      v22 = 0;
      do
      {
        if (*v897 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = [*(*(&v896 + 1) + 8 * v22) copyWithZone:zone];
        [v5 addKCellularPeripheralStats:v23];

        ++v22;
      }

      while (v20 != v22);
      v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v896 objects:v995 count:16];
    }

    while (v20);
  }

  v895 = 0u;
  v894 = 0u;
  v893 = 0u;
  v892 = 0u;
  v24 = self->_kCellularDvfsStats;
  v25 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v892 objects:v994 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v893;
    do
    {
      v28 = 0;
      do
      {
        if (*v893 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = [*(*(&v892 + 1) + 8 * v28) copyWithZone:zone];
        [v5 addKCellularDvfsStats:v29];

        ++v28;
      }

      while (v26 != v28);
      v26 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v892 objects:v994 count:16];
    }

    while (v26);
  }

  v891 = 0u;
  v890 = 0u;
  v889 = 0u;
  v888 = 0u;
  v30 = self->_kCellularLteWcdmaGsmHwStats;
  v31 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v888 objects:v993 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v889;
    do
    {
      v34 = 0;
      do
      {
        if (*v889 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = [*(*(&v888 + 1) + 8 * v34) copyWithZone:zone];
        [v5 addKCellularLteWcdmaGsmHwStats:v35];

        ++v34;
      }

      while (v32 != v34);
      v32 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v888 objects:v993 count:16];
    }

    while (v32);
  }

  v887 = 0u;
  v886 = 0u;
  v885 = 0u;
  v884 = 0u;
  v36 = self->_kCellularLteTdsGsmHwStats;
  v37 = [(NSMutableArray *)v36 countByEnumeratingWithState:&v884 objects:v992 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v885;
    do
    {
      v40 = 0;
      do
      {
        if (*v885 != v39)
        {
          objc_enumerationMutation(v36);
        }

        v41 = [*(*(&v884 + 1) + 8 * v40) copyWithZone:zone];
        [v5 addKCellularLteTdsGsmHwStats:v41];

        ++v40;
      }

      while (v38 != v40);
      v38 = [(NSMutableArray *)v36 countByEnumeratingWithState:&v884 objects:v992 count:16];
    }

    while (v38);
  }

  v883 = 0u;
  v882 = 0u;
  v881 = 0u;
  v880 = 0u;
  v42 = self->_kCellularPmuAverageCurrents;
  v43 = [(NSMutableArray *)v42 countByEnumeratingWithState:&v880 objects:v991 count:16];
  if (v43)
  {
    v44 = v43;
    v45 = *v881;
    do
    {
      v46 = 0;
      do
      {
        if (*v881 != v45)
        {
          objc_enumerationMutation(v42);
        }

        v47 = [*(*(&v880 + 1) + 8 * v46) copyWithZone:zone];
        [v5 addKCellularPmuAverageCurrent:v47];

        ++v46;
      }

      while (v44 != v46);
      v44 = [(NSMutableArray *)v42 countByEnumeratingWithState:&v880 objects:v991 count:16];
    }

    while (v44);
  }

  v879 = 0u;
  v878 = 0u;
  v877 = 0u;
  v876 = 0u;
  v48 = self->_kCellularFwCoreStats;
  v49 = [(NSMutableArray *)v48 countByEnumeratingWithState:&v876 objects:v990 count:16];
  if (v49)
  {
    v50 = v49;
    v51 = *v877;
    do
    {
      v52 = 0;
      do
      {
        if (*v877 != v51)
        {
          objc_enumerationMutation(v48);
        }

        v53 = [*(*(&v876 + 1) + 8 * v52) copyWithZone:zone];
        [v5 addKCellularFwCoreStats:v53];

        ++v52;
      }

      while (v50 != v52);
      v50 = [(NSMutableArray *)v48 countByEnumeratingWithState:&v876 objects:v990 count:16];
    }

    while (v50);
  }

  v875 = 0u;
  v874 = 0u;
  v873 = 0u;
  v872 = 0u;
  v54 = self->_kCellularLteWcdmaTdsHwStats;
  v55 = [(NSMutableArray *)v54 countByEnumeratingWithState:&v872 objects:v989 count:16];
  if (v55)
  {
    v56 = v55;
    v57 = *v873;
    do
    {
      v58 = 0;
      do
      {
        if (*v873 != v57)
        {
          objc_enumerationMutation(v54);
        }

        v59 = [*(*(&v872 + 1) + 8 * v58) copyWithZone:zone];
        [v5 addKCellularLteWcdmaTdsHwStats:v59];

        ++v58;
      }

      while (v56 != v58);
      v56 = [(NSMutableArray *)v54 countByEnumeratingWithState:&v872 objects:v989 count:16];
    }

    while (v56);
  }

  v871 = 0u;
  v870 = 0u;
  v869 = 0u;
  v868 = 0u;
  v60 = self->_kCellularPmicHwStats;
  v61 = [(NSMutableArray *)v60 countByEnumeratingWithState:&v868 objects:v988 count:16];
  if (v61)
  {
    v62 = v61;
    v63 = *v869;
    do
    {
      v64 = 0;
      do
      {
        if (*v869 != v63)
        {
          objc_enumerationMutation(v60);
        }

        v65 = [*(*(&v868 + 1) + 8 * v64) copyWithZone:zone];
        [v5 addKCellularPmicHwStats:v65];

        ++v64;
      }

      while (v62 != v64);
      v62 = [(NSMutableArray *)v60 countByEnumeratingWithState:&v868 objects:v988 count:16];
    }

    while (v62);
  }

  v867 = 0u;
  v866 = 0u;
  v865 = 0u;
  v864 = 0u;
  v66 = self->_kCellularTdsRrcStates;
  v67 = [(NSMutableArray *)v66 countByEnumeratingWithState:&v864 objects:v987 count:16];
  if (v67)
  {
    v68 = v67;
    v69 = *v865;
    do
    {
      v70 = 0;
      do
      {
        if (*v865 != v69)
        {
          objc_enumerationMutation(v66);
        }

        v71 = [*(*(&v864 + 1) + 8 * v70) copyWithZone:zone];
        [v5 addKCellularTdsRrcState:v71];

        ++v70;
      }

      while (v68 != v70);
      v68 = [(NSMutableArray *)v66 countByEnumeratingWithState:&v864 objects:v987 count:16];
    }

    while (v68);
  }

  v863 = 0u;
  v862 = 0u;
  v861 = 0u;
  v860 = 0u;
  v72 = self->_kCellularLteRrcStates;
  v73 = [(NSMutableArray *)v72 countByEnumeratingWithState:&v860 objects:v986 count:16];
  if (v73)
  {
    v74 = v73;
    v75 = *v861;
    do
    {
      v76 = 0;
      do
      {
        if (*v861 != v75)
        {
          objc_enumerationMutation(v72);
        }

        v77 = [*(*(&v860 + 1) + 8 * v76) copyWithZone:zone];
        [v5 addKCellularLteRrcState:v77];

        ++v76;
      }

      while (v74 != v76);
      v74 = [(NSMutableArray *)v72 countByEnumeratingWithState:&v860 objects:v986 count:16];
    }

    while (v74);
  }

  v859 = 0u;
  v858 = 0u;
  v857 = 0u;
  v856 = 0u;
  v78 = self->_kCellularLtePagingCycles;
  v79 = [(NSMutableArray *)v78 countByEnumeratingWithState:&v856 objects:v985 count:16];
  if (v79)
  {
    v80 = v79;
    v81 = *v857;
    do
    {
      v82 = 0;
      do
      {
        if (*v857 != v81)
        {
          objc_enumerationMutation(v78);
        }

        v83 = [*(*(&v856 + 1) + 8 * v82) copyWithZone:zone];
        [v5 addKCellularLtePagingCycle:v83];

        ++v82;
      }

      while (v80 != v82);
      v80 = [(NSMutableArray *)v78 countByEnumeratingWithState:&v856 objects:v985 count:16];
    }

    while (v80);
  }

  v855 = 0u;
  v854 = 0u;
  v853 = 0u;
  v852 = 0u;
  v84 = self->_kCellularLteCdrxConfigs;
  v85 = [(NSMutableArray *)v84 countByEnumeratingWithState:&v852 objects:v984 count:16];
  if (v85)
  {
    v86 = v85;
    v87 = *v853;
    do
    {
      v88 = 0;
      do
      {
        if (*v853 != v87)
        {
          objc_enumerationMutation(v84);
        }

        v89 = [*(*(&v852 + 1) + 8 * v88) copyWithZone:zone];
        [v5 addKCellularLteCdrxConfig:v89];

        ++v88;
      }

      while (v86 != v88);
      v86 = [(NSMutableArray *)v84 countByEnumeratingWithState:&v852 objects:v984 count:16];
    }

    while (v86);
  }

  v851 = 0u;
  v850 = 0u;
  v849 = 0u;
  v848 = 0u;
  v90 = self->_kCellularLteRadioLinkFailures;
  v91 = [(NSMutableArray *)v90 countByEnumeratingWithState:&v848 objects:v983 count:16];
  if (v91)
  {
    v92 = v91;
    v93 = *v849;
    do
    {
      v94 = 0;
      do
      {
        if (*v849 != v93)
        {
          objc_enumerationMutation(v90);
        }

        v95 = [*(*(&v848 + 1) + 8 * v94) copyWithZone:zone];
        [v5 addKCellularLteRadioLinkFailure:v95];

        ++v94;
      }

      while (v92 != v94);
      v92 = [(NSMutableArray *)v90 countByEnumeratingWithState:&v848 objects:v983 count:16];
    }

    while (v92);
  }

  v847 = 0u;
  v846 = 0u;
  v845 = 0u;
  v844 = 0u;
  v96 = self->_kCellularLtePdcchStateStats;
  v97 = [(NSMutableArray *)v96 countByEnumeratingWithState:&v844 objects:v982 count:16];
  if (v97)
  {
    v98 = v97;
    v99 = *v845;
    do
    {
      v100 = 0;
      do
      {
        if (*v845 != v99)
        {
          objc_enumerationMutation(v96);
        }

        v101 = [*(*(&v844 + 1) + 8 * v100) copyWithZone:zone];
        [v5 addKCellularLtePdcchStateStats:v101];

        ++v100;
      }

      while (v98 != v100);
      v98 = [(NSMutableArray *)v96 countByEnumeratingWithState:&v844 objects:v982 count:16];
    }

    while (v98);
  }

  v843 = 0u;
  v842 = 0u;
  v841 = 0u;
  v840 = 0u;
  v102 = self->_kCellularLqmStateChanges;
  v103 = [(NSMutableArray *)v102 countByEnumeratingWithState:&v840 objects:v981 count:16];
  if (v103)
  {
    v104 = v103;
    v105 = *v841;
    do
    {
      v106 = 0;
      do
      {
        if (*v841 != v105)
        {
          objc_enumerationMutation(v102);
        }

        v107 = [*(*(&v840 + 1) + 8 * v106) copyWithZone:zone];
        [v5 addKCellularLqmStateChange:v107];

        ++v106;
      }

      while (v104 != v106);
      v104 = [(NSMutableArray *)v102 countByEnumeratingWithState:&v840 objects:v981 count:16];
    }

    while (v104);
  }

  v839 = 0u;
  v838 = 0u;
  v837 = 0u;
  v836 = 0u;
  v108 = self->_kCellularServiceLosts;
  v109 = [(NSMutableArray *)v108 countByEnumeratingWithState:&v836 objects:v980 count:16];
  if (v109)
  {
    v110 = v109;
    v111 = *v837;
    do
    {
      v112 = 0;
      do
      {
        if (*v837 != v111)
        {
          objc_enumerationMutation(v108);
        }

        v113 = [*(*(&v836 + 1) + 8 * v112) copyWithZone:zone];
        [v5 addKCellularServiceLost:v113];

        ++v112;
      }

      while (v110 != v112);
      v110 = [(NSMutableArray *)v108 countByEnumeratingWithState:&v836 objects:v980 count:16];
    }

    while (v110);
  }

  v835 = 0u;
  v834 = 0u;
  v833 = 0u;
  v832 = 0u;
  v114 = self->_kCellularGsmServingCellRssiHists;
  v115 = [(NSMutableArray *)v114 countByEnumeratingWithState:&v832 objects:v979 count:16];
  if (v115)
  {
    v116 = v115;
    v117 = *v833;
    do
    {
      v118 = 0;
      do
      {
        if (*v833 != v117)
        {
          objc_enumerationMutation(v114);
        }

        v119 = [*(*(&v832 + 1) + 8 * v118) copyWithZone:zone];
        [v5 addKCellularGsmServingCellRssiHist:v119];

        ++v118;
      }

      while (v116 != v118);
      v116 = [(NSMutableArray *)v114 countByEnumeratingWithState:&v832 objects:v979 count:16];
    }

    while (v116);
  }

  v831 = 0u;
  v830 = 0u;
  v829 = 0u;
  v828 = 0u;
  v120 = self->_kCellularGsmServingCellSnrHists;
  v121 = [(NSMutableArray *)v120 countByEnumeratingWithState:&v828 objects:v978 count:16];
  if (v121)
  {
    v122 = v121;
    v123 = *v829;
    do
    {
      v124 = 0;
      do
      {
        if (*v829 != v123)
        {
          objc_enumerationMutation(v120);
        }

        v125 = [*(*(&v828 + 1) + 8 * v124) copyWithZone:zone];
        [v5 addKCellularGsmServingCellSnrHist:v125];

        ++v124;
      }

      while (v122 != v124);
      v122 = [(NSMutableArray *)v120 countByEnumeratingWithState:&v828 objects:v978 count:16];
    }

    while (v122);
  }

  v827 = 0u;
  v826 = 0u;
  v825 = 0u;
  v824 = 0u;
  v126 = self->_kCellularGsmTxPowerHists;
  v127 = [(NSMutableArray *)v126 countByEnumeratingWithState:&v824 objects:v977 count:16];
  if (v127)
  {
    v128 = v127;
    v129 = *v825;
    do
    {
      v130 = 0;
      do
      {
        if (*v825 != v129)
        {
          objc_enumerationMutation(v126);
        }

        v131 = [*(*(&v824 + 1) + 8 * v130) copyWithZone:zone];
        [v5 addKCellularGsmTxPowerHist:v131];

        ++v130;
      }

      while (v128 != v130);
      v128 = [(NSMutableArray *)v126 countByEnumeratingWithState:&v824 objects:v977 count:16];
    }

    while (v128);
  }

  v823 = 0u;
  v822 = 0u;
  v821 = 0u;
  v820 = 0u;
  v132 = self->_kCellularGsmConnectedModeHists;
  v133 = [(NSMutableArray *)v132 countByEnumeratingWithState:&v820 objects:v976 count:16];
  if (v133)
  {
    v134 = v133;
    v135 = *v821;
    do
    {
      v136 = 0;
      do
      {
        if (*v821 != v135)
        {
          objc_enumerationMutation(v132);
        }

        v137 = [*(*(&v820 + 1) + 8 * v136) copyWithZone:zone];
        [v5 addKCellularGsmConnectedModeHist:v137];

        ++v136;
      }

      while (v134 != v136);
      v134 = [(NSMutableArray *)v132 countByEnumeratingWithState:&v820 objects:v976 count:16];
    }

    while (v134);
  }

  v819 = 0u;
  v818 = 0u;
  v817 = 0u;
  v816 = 0u;
  v138 = self->_kCellularGsmL1States;
  v139 = [(NSMutableArray *)v138 countByEnumeratingWithState:&v816 objects:v975 count:16];
  if (v139)
  {
    v140 = v139;
    v141 = *v817;
    do
    {
      v142 = 0;
      do
      {
        if (*v817 != v141)
        {
          objc_enumerationMutation(v138);
        }

        v143 = [*(*(&v816 + 1) + 8 * v142) copyWithZone:zone];
        [v5 addKCellularGsmL1State:v143];

        ++v142;
      }

      while (v140 != v142);
      v140 = [(NSMutableArray *)v138 countByEnumeratingWithState:&v816 objects:v975 count:16];
    }

    while (v140);
  }

  v815 = 0u;
  v814 = 0u;
  v813 = 0u;
  v812 = 0u;
  v144 = self->_kCellularWcdmaCpcStats;
  v145 = [(NSMutableArray *)v144 countByEnumeratingWithState:&v812 objects:v974 count:16];
  if (v145)
  {
    v146 = v145;
    v147 = *v813;
    do
    {
      v148 = 0;
      do
      {
        if (*v813 != v147)
        {
          objc_enumerationMutation(v144);
        }

        v149 = [*(*(&v812 + 1) + 8 * v148) copyWithZone:zone];
        [v5 addKCellularWcdmaCpcStat:v149];

        ++v148;
      }

      while (v146 != v148);
      v146 = [(NSMutableArray *)v144 countByEnumeratingWithState:&v812 objects:v974 count:16];
    }

    while (v146);
  }

  v811 = 0u;
  v810 = 0u;
  v809 = 0u;
  v808 = 0u;
  v150 = self->_kCellularWcdmaRxDiversityHists;
  v151 = [(NSMutableArray *)v150 countByEnumeratingWithState:&v808 objects:v973 count:16];
  if (v151)
  {
    v152 = v151;
    v153 = *v809;
    do
    {
      v154 = 0;
      do
      {
        if (*v809 != v153)
        {
          objc_enumerationMutation(v150);
        }

        v155 = [*(*(&v808 + 1) + 8 * v154) copyWithZone:zone];
        [v5 addKCellularWcdmaRxDiversityHist:v155];

        ++v154;
      }

      while (v152 != v154);
      v152 = [(NSMutableArray *)v150 countByEnumeratingWithState:&v808 objects:v973 count:16];
    }

    while (v152);
  }

  v807 = 0u;
  v806 = 0u;
  v805 = 0u;
  v804 = 0u;
  v156 = self->_kCellularWcdmaServingCellRx0RssiHists;
  v157 = [(NSMutableArray *)v156 countByEnumeratingWithState:&v804 objects:v972 count:16];
  if (v157)
  {
    v158 = v157;
    v159 = *v805;
    do
    {
      v160 = 0;
      do
      {
        if (*v805 != v159)
        {
          objc_enumerationMutation(v156);
        }

        v161 = [*(*(&v804 + 1) + 8 * v160) copyWithZone:zone];
        [v5 addKCellularWcdmaServingCellRx0RssiHist:v161];

        ++v160;
      }

      while (v158 != v160);
      v158 = [(NSMutableArray *)v156 countByEnumeratingWithState:&v804 objects:v972 count:16];
    }

    while (v158);
  }

  v803 = 0u;
  v802 = 0u;
  v801 = 0u;
  v800 = 0u;
  v162 = self->_kCellularWcdmaServingCellRx1RssiHists;
  v163 = [(NSMutableArray *)v162 countByEnumeratingWithState:&v800 objects:v971 count:16];
  if (v163)
  {
    v164 = v163;
    v165 = *v801;
    do
    {
      v166 = 0;
      do
      {
        if (*v801 != v165)
        {
          objc_enumerationMutation(v162);
        }

        v167 = [*(*(&v800 + 1) + 8 * v166) copyWithZone:zone];
        [v5 addKCellularWcdmaServingCellRx1RssiHist:v167];

        ++v166;
      }

      while (v164 != v166);
      v164 = [(NSMutableArray *)v162 countByEnumeratingWithState:&v800 objects:v971 count:16];
    }

    while (v164);
  }

  v799 = 0u;
  v798 = 0u;
  v797 = 0u;
  v796 = 0u;
  v168 = self->_kCellularWcdmaServingCellRx0EcNoHists;
  v169 = [(NSMutableArray *)v168 countByEnumeratingWithState:&v796 objects:v970 count:16];
  if (v169)
  {
    v170 = v169;
    v171 = *v797;
    do
    {
      v172 = 0;
      do
      {
        if (*v797 != v171)
        {
          objc_enumerationMutation(v168);
        }

        v173 = [*(*(&v796 + 1) + 8 * v172) copyWithZone:zone];
        [v5 addKCellularWcdmaServingCellRx0EcNoHist:v173];

        ++v172;
      }

      while (v170 != v172);
      v170 = [(NSMutableArray *)v168 countByEnumeratingWithState:&v796 objects:v970 count:16];
    }

    while (v170);
  }

  v795 = 0u;
  v794 = 0u;
  v793 = 0u;
  v792 = 0u;
  v174 = self->_kCellularWcdmaServingCellRx1EcNoHists;
  v175 = [(NSMutableArray *)v174 countByEnumeratingWithState:&v792 objects:v969 count:16];
  if (v175)
  {
    v176 = v175;
    v177 = *v793;
    do
    {
      v178 = 0;
      do
      {
        if (*v793 != v177)
        {
          objc_enumerationMutation(v174);
        }

        v179 = [*(*(&v792 + 1) + 8 * v178) copyWithZone:zone];
        [v5 addKCellularWcdmaServingCellRx1EcNoHist:v179];

        ++v178;
      }

      while (v176 != v178);
      v176 = [(NSMutableArray *)v174 countByEnumeratingWithState:&v792 objects:v969 count:16];
    }

    while (v176);
  }

  v791 = 0u;
  v790 = 0u;
  v789 = 0u;
  v788 = 0u;
  v180 = self->_kCellularWcdmaTxPowerHists;
  v181 = [(NSMutableArray *)v180 countByEnumeratingWithState:&v788 objects:v968 count:16];
  if (v181)
  {
    v182 = v181;
    v183 = *v789;
    do
    {
      v184 = 0;
      do
      {
        if (*v789 != v183)
        {
          objc_enumerationMutation(v180);
        }

        v185 = [*(*(&v788 + 1) + 8 * v184) copyWithZone:zone];
        [v5 addKCellularWcdmaTxPowerHist:v185];

        ++v184;
      }

      while (v182 != v184);
      v182 = [(NSMutableArray *)v180 countByEnumeratingWithState:&v788 objects:v968 count:16];
    }

    while (v182);
  }

  v787 = 0u;
  v786 = 0u;
  v785 = 0u;
  v784 = 0u;
  v186 = self->_kCellularWcdmaReceiverStatusOnC0Hists;
  v187 = [(NSMutableArray *)v186 countByEnumeratingWithState:&v784 objects:v967 count:16];
  if (v187)
  {
    v188 = v187;
    v189 = *v785;
    do
    {
      v190 = 0;
      do
      {
        if (*v785 != v189)
        {
          objc_enumerationMutation(v186);
        }

        v191 = [*(*(&v784 + 1) + 8 * v190) copyWithZone:zone];
        [v5 addKCellularWcdmaReceiverStatusOnC0Hist:v191];

        ++v190;
      }

      while (v188 != v190);
      v188 = [(NSMutableArray *)v186 countByEnumeratingWithState:&v784 objects:v967 count:16];
    }

    while (v188);
  }

  v783 = 0u;
  v782 = 0u;
  v781 = 0u;
  v780 = 0u;
  v192 = self->_kCellularWcdmaReceiverStatusOnC1Hists;
  v193 = [(NSMutableArray *)v192 countByEnumeratingWithState:&v780 objects:v966 count:16];
  if (v193)
  {
    v194 = v193;
    v195 = *v781;
    do
    {
      v196 = 0;
      do
      {
        if (*v781 != v195)
        {
          objc_enumerationMutation(v192);
        }

        v197 = [*(*(&v780 + 1) + 8 * v196) copyWithZone:zone];
        [v5 addKCellularWcdmaReceiverStatusOnC1Hist:v197];

        ++v196;
      }

      while (v194 != v196);
      v194 = [(NSMutableArray *)v192 countByEnumeratingWithState:&v780 objects:v966 count:16];
    }

    while (v194);
  }

  v779 = 0u;
  v778 = 0u;
  v777 = 0u;
  v776 = 0u;
  v198 = self->_kCellularWcdmaCarrierStatusHists;
  v199 = [(NSMutableArray *)v198 countByEnumeratingWithState:&v776 objects:v965 count:16];
  if (v199)
  {
    v200 = v199;
    v201 = *v777;
    do
    {
      v202 = 0;
      do
      {
        if (*v777 != v201)
        {
          objc_enumerationMutation(v198);
        }

        v203 = [*(*(&v776 + 1) + 8 * v202) copyWithZone:zone];
        [v5 addKCellularWcdmaCarrierStatusHist:v203];

        ++v202;
      }

      while (v200 != v202);
      v200 = [(NSMutableArray *)v198 countByEnumeratingWithState:&v776 objects:v965 count:16];
    }

    while (v200);
  }

  v775 = 0u;
  v774 = 0u;
  v773 = 0u;
  v772 = 0u;
  v204 = self->_kCellularWcdmaRabModeHists;
  v205 = [(NSMutableArray *)v204 countByEnumeratingWithState:&v772 objects:v964 count:16];
  if (v205)
  {
    v206 = v205;
    v207 = *v773;
    do
    {
      v208 = 0;
      do
      {
        if (*v773 != v207)
        {
          objc_enumerationMutation(v204);
        }

        v209 = [*(*(&v772 + 1) + 8 * v208) copyWithZone:zone];
        [v5 addKCellularWcdmaRabModeHist:v209];

        ++v208;
      }

      while (v206 != v208);
      v206 = [(NSMutableArray *)v204 countByEnumeratingWithState:&v772 objects:v964 count:16];
    }

    while (v206);
  }

  v771 = 0u;
  v770 = 0u;
  v769 = 0u;
  v768 = 0u;
  v210 = self->_kCellularWcdmaRabTypeHists;
  v211 = [(NSMutableArray *)v210 countByEnumeratingWithState:&v768 objects:v963 count:16];
  if (v211)
  {
    v212 = v211;
    v213 = *v769;
    do
    {
      v214 = 0;
      do
      {
        if (*v769 != v213)
        {
          objc_enumerationMutation(v210);
        }

        v215 = [*(*(&v768 + 1) + 8 * v214) copyWithZone:zone];
        [v5 addKCellularWcdmaRabTypeHist:v215];

        ++v214;
      }

      while (v212 != v214);
      v212 = [(NSMutableArray *)v210 countByEnumeratingWithState:&v768 objects:v963 count:16];
    }

    while (v212);
  }

  v767 = 0u;
  v766 = 0u;
  v765 = 0u;
  v764 = 0u;
  v216 = self->_kCellularWcdmaRrcConnectionStates;
  v217 = [(NSMutableArray *)v216 countByEnumeratingWithState:&v764 objects:v962 count:16];
  if (v217)
  {
    v218 = v217;
    v219 = *v765;
    do
    {
      v220 = 0;
      do
      {
        if (*v765 != v219)
        {
          objc_enumerationMutation(v216);
        }

        v221 = [*(*(&v764 + 1) + 8 * v220) copyWithZone:zone];
        [v5 addKCellularWcdmaRrcConnectionState:v221];

        ++v220;
      }

      while (v218 != v220);
      v218 = [(NSMutableArray *)v216 countByEnumeratingWithState:&v764 objects:v962 count:16];
    }

    while (v218);
  }

  v763 = 0u;
  v762 = 0u;
  v761 = 0u;
  v760 = 0u;
  v222 = self->_kCellularWcdmaRrcConfigurations;
  v223 = [(NSMutableArray *)v222 countByEnumeratingWithState:&v760 objects:v961 count:16];
  if (v223)
  {
    v224 = v223;
    v225 = *v761;
    do
    {
      v226 = 0;
      do
      {
        if (*v761 != v225)
        {
          objc_enumerationMutation(v222);
        }

        v227 = [*(*(&v760 + 1) + 8 * v226) copyWithZone:zone];
        [v5 addKCellularWcdmaRrcConfiguration:v227];

        ++v226;
      }

      while (v224 != v226);
      v224 = [(NSMutableArray *)v222 countByEnumeratingWithState:&v760 objects:v961 count:16];
    }

    while (v224);
  }

  v759 = 0u;
  v758 = 0u;
  v757 = 0u;
  v756 = 0u;
  v228 = self->_kCellularWcdmaRabStatus;
  v229 = [(NSMutableArray *)v228 countByEnumeratingWithState:&v756 objects:v960 count:16];
  if (v229)
  {
    v230 = v229;
    v231 = *v757;
    do
    {
      v232 = 0;
      do
      {
        if (*v757 != v231)
        {
          objc_enumerationMutation(v228);
        }

        v233 = [*(*(&v756 + 1) + 8 * v232) copyWithZone:zone];
        [v5 addKCellularWcdmaRabStatus:v233];

        ++v232;
      }

      while (v230 != v232);
      v230 = [(NSMutableArray *)v228 countByEnumeratingWithState:&v756 objects:v960 count:16];
    }

    while (v230);
  }

  v755 = 0u;
  v754 = 0u;
  v753 = 0u;
  v752 = 0u;
  v234 = self->_kCellularWcdmaL1States;
  v235 = [(NSMutableArray *)v234 countByEnumeratingWithState:&v752 objects:v959 count:16];
  if (v235)
  {
    v236 = v235;
    v237 = *v753;
    do
    {
      v238 = 0;
      do
      {
        if (*v753 != v237)
        {
          objc_enumerationMutation(v234);
        }

        v239 = [*(*(&v752 + 1) + 8 * v238) copyWithZone:zone];
        [v5 addKCellularWcdmaL1State:v239];

        ++v238;
      }

      while (v236 != v238);
      v236 = [(NSMutableArray *)v234 countByEnumeratingWithState:&v752 objects:v959 count:16];
    }

    while (v236);
  }

  v751 = 0u;
  v750 = 0u;
  v749 = 0u;
  v748 = 0u;
  v240 = self->_kCellularWcdmaDataInactivityBeforeIdles;
  v241 = [(NSMutableArray *)v240 countByEnumeratingWithState:&v748 objects:v958 count:16];
  if (v241)
  {
    v242 = v241;
    v243 = *v749;
    do
    {
      v244 = 0;
      do
      {
        if (*v749 != v243)
        {
          objc_enumerationMutation(v240);
        }

        v245 = [*(*(&v748 + 1) + 8 * v244) copyWithZone:zone];
        [v5 addKCellularWcdmaDataInactivityBeforeIdle:v245];

        ++v244;
      }

      while (v242 != v244);
      v242 = [(NSMutableArray *)v240 countByEnumeratingWithState:&v748 objects:v958 count:16];
    }

    while (v242);
  }

  v747 = 0u;
  v746 = 0u;
  v745 = 0u;
  v744 = 0u;
  v246 = self->_kCellularWcdmaIdleToConnectedUserDatas;
  v247 = [(NSMutableArray *)v246 countByEnumeratingWithState:&v744 objects:v957 count:16];
  if (v247)
  {
    v248 = v247;
    v249 = *v745;
    do
    {
      v250 = 0;
      do
      {
        if (*v745 != v249)
        {
          objc_enumerationMutation(v246);
        }

        v251 = [*(*(&v744 + 1) + 8 * v250) copyWithZone:zone];
        [v5 addKCellularWcdmaIdleToConnectedUserData:v251];

        ++v250;
      }

      while (v248 != v250);
      v248 = [(NSMutableArray *)v246 countByEnumeratingWithState:&v744 objects:v957 count:16];
    }

    while (v248);
  }

  v743 = 0u;
  v742 = 0u;
  v741 = 0u;
  v740 = 0u;
  v252 = self->_kCellularWcdmaVadHists;
  v253 = [(NSMutableArray *)v252 countByEnumeratingWithState:&v740 objects:v956 count:16];
  if (v253)
  {
    v254 = v253;
    v255 = *v741;
    do
    {
      v256 = 0;
      do
      {
        if (*v741 != v255)
        {
          objc_enumerationMutation(v252);
        }

        v257 = [*(*(&v740 + 1) + 8 * v256) copyWithZone:zone];
        [v5 addKCellularWcdmaVadHist:v257];

        ++v256;
      }

      while (v254 != v256);
      v254 = [(NSMutableArray *)v252 countByEnumeratingWithState:&v740 objects:v956 count:16];
    }

    while (v254);
  }

  v739 = 0u;
  v738 = 0u;
  v737 = 0u;
  v736 = 0u;
  v258 = self->_kCellularTdsRxDiversityHists;
  v259 = [(NSMutableArray *)v258 countByEnumeratingWithState:&v736 objects:v955 count:16];
  if (v259)
  {
    v260 = v259;
    v261 = *v737;
    do
    {
      v262 = 0;
      do
      {
        if (*v737 != v261)
        {
          objc_enumerationMutation(v258);
        }

        v263 = [*(*(&v736 + 1) + 8 * v262) copyWithZone:zone];
        [v5 addKCellularTdsRxDiversityHist:v263];

        ++v262;
      }

      while (v260 != v262);
      v260 = [(NSMutableArray *)v258 countByEnumeratingWithState:&v736 objects:v955 count:16];
    }

    while (v260);
  }

  v735 = 0u;
  v734 = 0u;
  v733 = 0u;
  v732 = 0u;
  v264 = self->_kCellularTdsServingCellRx0RssiHists;
  v265 = [(NSMutableArray *)v264 countByEnumeratingWithState:&v732 objects:v954 count:16];
  if (v265)
  {
    v266 = v265;
    v267 = *v733;
    do
    {
      v268 = 0;
      do
      {
        if (*v733 != v267)
        {
          objc_enumerationMutation(v264);
        }

        v269 = [*(*(&v732 + 1) + 8 * v268) copyWithZone:zone];
        [v5 addKCellularTdsServingCellRx0RssiHist:v269];

        ++v268;
      }

      while (v266 != v268);
      v266 = [(NSMutableArray *)v264 countByEnumeratingWithState:&v732 objects:v954 count:16];
    }

    while (v266);
  }

  v731 = 0u;
  v730 = 0u;
  v729 = 0u;
  v728 = 0u;
  v270 = self->_kCellularTdsServingCellRx1RssiHists;
  v271 = [(NSMutableArray *)v270 countByEnumeratingWithState:&v728 objects:v953 count:16];
  if (v271)
  {
    v272 = v271;
    v273 = *v729;
    do
    {
      v274 = 0;
      do
      {
        if (*v729 != v273)
        {
          objc_enumerationMutation(v270);
        }

        v275 = [*(*(&v728 + 1) + 8 * v274) copyWithZone:zone];
        [v5 addKCellularTdsServingCellRx1RssiHist:v275];

        ++v274;
      }

      while (v272 != v274);
      v272 = [(NSMutableArray *)v270 countByEnumeratingWithState:&v728 objects:v953 count:16];
    }

    while (v272);
  }

  v727 = 0u;
  v726 = 0u;
  v725 = 0u;
  v724 = 0u;
  v276 = self->_kCellularTdsServingCellRx0RscpHists;
  v277 = [(NSMutableArray *)v276 countByEnumeratingWithState:&v724 objects:v952 count:16];
  if (v277)
  {
    v278 = v277;
    v279 = *v725;
    do
    {
      v280 = 0;
      do
      {
        if (*v725 != v279)
        {
          objc_enumerationMutation(v276);
        }

        v281 = [*(*(&v724 + 1) + 8 * v280) copyWithZone:zone];
        [v5 addKCellularTdsServingCellRx0RscpHist:v281];

        ++v280;
      }

      while (v278 != v280);
      v278 = [(NSMutableArray *)v276 countByEnumeratingWithState:&v724 objects:v952 count:16];
    }

    while (v278);
  }

  v723 = 0u;
  v722 = 0u;
  v721 = 0u;
  v720 = 0u;
  v282 = self->_kCellularTdsServingCellRx1RscpHists;
  v283 = [(NSMutableArray *)v282 countByEnumeratingWithState:&v720 objects:v951 count:16];
  if (v283)
  {
    v284 = v283;
    v285 = *v721;
    do
    {
      v286 = 0;
      do
      {
        if (*v721 != v285)
        {
          objc_enumerationMutation(v282);
        }

        v287 = [*(*(&v720 + 1) + 8 * v286) copyWithZone:zone];
        [v5 addKCellularTdsServingCellRx1RscpHist:v287];

        ++v286;
      }

      while (v284 != v286);
      v284 = [(NSMutableArray *)v282 countByEnumeratingWithState:&v720 objects:v951 count:16];
    }

    while (v284);
  }

  v719 = 0u;
  v718 = 0u;
  v717 = 0u;
  v716 = 0u;
  v288 = self->_kCellularTdsTxPowerHists;
  v289 = [(NSMutableArray *)v288 countByEnumeratingWithState:&v716 objects:v950 count:16];
  if (v289)
  {
    v290 = v289;
    v291 = *v717;
    do
    {
      v292 = 0;
      do
      {
        if (*v717 != v291)
        {
          objc_enumerationMutation(v288);
        }

        v293 = [*(*(&v716 + 1) + 8 * v292) copyWithZone:zone];
        [v5 addKCellularTdsTxPowerHist:v293];

        ++v292;
      }

      while (v290 != v292);
      v290 = [(NSMutableArray *)v288 countByEnumeratingWithState:&v716 objects:v950 count:16];
    }

    while (v290);
  }

  v715 = 0u;
  v714 = 0u;
  v713 = 0u;
  v712 = 0u;
  v294 = self->_kCellularTdsRabModeHists;
  v295 = [(NSMutableArray *)v294 countByEnumeratingWithState:&v712 objects:v949 count:16];
  if (v295)
  {
    v296 = v295;
    v297 = *v713;
    do
    {
      v298 = 0;
      do
      {
        if (*v713 != v297)
        {
          objc_enumerationMutation(v294);
        }

        v299 = [*(*(&v712 + 1) + 8 * v298) copyWithZone:zone];
        [v5 addKCellularTdsRabModeHist:v299];

        ++v298;
      }

      while (v296 != v298);
      v296 = [(NSMutableArray *)v294 countByEnumeratingWithState:&v712 objects:v949 count:16];
    }

    while (v296);
  }

  v711 = 0u;
  v710 = 0u;
  v709 = 0u;
  v708 = 0u;
  v300 = self->_kCellularTdsRabTypeHists;
  v301 = [(NSMutableArray *)v300 countByEnumeratingWithState:&v708 objects:v948 count:16];
  if (v301)
  {
    v302 = v301;
    v303 = *v709;
    do
    {
      v304 = 0;
      do
      {
        if (*v709 != v303)
        {
          objc_enumerationMutation(v300);
        }

        v305 = [*(*(&v708 + 1) + 8 * v304) copyWithZone:zone];
        [v5 addKCellularTdsRabTypeHist:v305];

        ++v304;
      }

      while (v302 != v304);
      v302 = [(NSMutableArray *)v300 countByEnumeratingWithState:&v708 objects:v948 count:16];
    }

    while (v302);
  }

  v707 = 0u;
  v706 = 0u;
  v705 = 0u;
  v704 = 0u;
  v306 = self->_kCellularTdsL1States;
  v307 = [(NSMutableArray *)v306 countByEnumeratingWithState:&v704 objects:v947 count:16];
  if (v307)
  {
    v308 = v307;
    v309 = *v705;
    do
    {
      v310 = 0;
      do
      {
        if (*v705 != v309)
        {
          objc_enumerationMutation(v306);
        }

        v311 = [*(*(&v704 + 1) + 8 * v310) copyWithZone:zone];
        [v5 addKCellularTdsL1State:v311];

        ++v310;
      }

      while (v308 != v310);
      v308 = [(NSMutableArray *)v306 countByEnumeratingWithState:&v704 objects:v947 count:16];
    }

    while (v308);
  }

  v703 = 0u;
  v702 = 0u;
  v701 = 0u;
  v700 = 0u;
  v312 = self->_kCellularLteFwDuplexModes;
  v313 = [(NSMutableArray *)v312 countByEnumeratingWithState:&v700 objects:v946 count:16];
  if (v313)
  {
    v314 = v313;
    v315 = *v701;
    do
    {
      v316 = 0;
      do
      {
        if (*v701 != v315)
        {
          objc_enumerationMutation(v312);
        }

        v317 = [*(*(&v700 + 1) + 8 * v316) copyWithZone:zone];
        [v5 addKCellularLteFwDuplexMode:v317];

        ++v316;
      }

      while (v314 != v316);
      v314 = [(NSMutableArray *)v312 countByEnumeratingWithState:&v700 objects:v946 count:16];
    }

    while (v314);
  }

  v699 = 0u;
  v698 = 0u;
  v697 = 0u;
  v696 = 0u;
  v318 = self->_kCellularLteServingCellRsrpHists;
  v319 = [(NSMutableArray *)v318 countByEnumeratingWithState:&v696 objects:v945 count:16];
  if (v319)
  {
    v320 = v319;
    v321 = *v697;
    do
    {
      v322 = 0;
      do
      {
        if (*v697 != v321)
        {
          objc_enumerationMutation(v318);
        }

        v323 = [*(*(&v696 + 1) + 8 * v322) copyWithZone:zone];
        [v5 addKCellularLteServingCellRsrpHist:v323];

        ++v322;
      }

      while (v320 != v322);
      v320 = [(NSMutableArray *)v318 countByEnumeratingWithState:&v696 objects:v945 count:16];
    }

    while (v320);
  }

  v695 = 0u;
  v694 = 0u;
  v693 = 0u;
  v692 = 0u;
  v324 = self->_kCellularLteServingCellSinrHists;
  v325 = [(NSMutableArray *)v324 countByEnumeratingWithState:&v692 objects:v944 count:16];
  if (v325)
  {
    v326 = v325;
    v327 = *v693;
    do
    {
      v328 = 0;
      do
      {
        if (*v693 != v327)
        {
          objc_enumerationMutation(v324);
        }

        v329 = [*(*(&v692 + 1) + 8 * v328) copyWithZone:zone];
        [v5 addKCellularLteServingCellSinrHist:v329];

        ++v328;
      }

      while (v326 != v328);
      v326 = [(NSMutableArray *)v324 countByEnumeratingWithState:&v692 objects:v944 count:16];
    }

    while (v326);
  }

  v691 = 0u;
  v690 = 0u;
  v689 = 0u;
  v688 = 0u;
  v330 = self->_kCellularLteSleepStateHists;
  v331 = [(NSMutableArray *)v330 countByEnumeratingWithState:&v688 objects:v943 count:16];
  if (v331)
  {
    v332 = v331;
    v333 = *v689;
    do
    {
      v334 = 0;
      do
      {
        if (*v689 != v333)
        {
          objc_enumerationMutation(v330);
        }

        v335 = [*(*(&v688 + 1) + 8 * v334) copyWithZone:zone];
        [v5 addKCellularLteSleepStateHist:v335];

        ++v334;
      }

      while (v332 != v334);
      v332 = [(NSMutableArray *)v330 countByEnumeratingWithState:&v688 objects:v943 count:16];
    }

    while (v332);
  }

  v687 = 0u;
  v686 = 0u;
  v685 = 0u;
  v684 = 0u;
  v336 = self->_kCellularLteTxPowerHists;
  v337 = [(NSMutableArray *)v336 countByEnumeratingWithState:&v684 objects:v942 count:16];
  if (v337)
  {
    v338 = v337;
    v339 = *v685;
    do
    {
      v340 = 0;
      do
      {
        if (*v685 != v339)
        {
          objc_enumerationMutation(v336);
        }

        v341 = [*(*(&v684 + 1) + 8 * v340) copyWithZone:zone];
        [v5 addKCellularLteTxPowerHist:v341];

        ++v340;
      }

      while (v338 != v340);
      v338 = [(NSMutableArray *)v336 countByEnumeratingWithState:&v684 objects:v942 count:16];
    }

    while (v338);
  }

  v683 = 0u;
  v682 = 0u;
  v681 = 0u;
  v680 = 0u;
  v342 = self->_kCellularLteDlSccStateHists;
  v343 = [(NSMutableArray *)v342 countByEnumeratingWithState:&v680 objects:v941 count:16];
  if (v343)
  {
    v344 = v343;
    v345 = *v681;
    do
    {
      v346 = 0;
      do
      {
        if (*v681 != v345)
        {
          objc_enumerationMutation(v342);
        }

        v347 = [*(*(&v680 + 1) + 8 * v346) copyWithZone:zone];
        [v5 addKCellularLteDlSccStateHist:v347];

        ++v346;
      }

      while (v344 != v346);
      v344 = [(NSMutableArray *)v342 countByEnumeratingWithState:&v680 objects:v941 count:16];
    }

    while (v344);
  }

  v679 = 0u;
  v678 = 0u;
  v677 = 0u;
  v676 = 0u;
  v348 = self->_kCellularLteUlSccStateHists;
  v349 = [(NSMutableArray *)v348 countByEnumeratingWithState:&v676 objects:v940 count:16];
  if (v349)
  {
    v350 = v349;
    v351 = *v677;
    do
    {
      v352 = 0;
      do
      {
        if (*v677 != v351)
        {
          objc_enumerationMutation(v348);
        }

        v353 = [*(*(&v676 + 1) + 8 * v352) copyWithZone:zone];
        [v5 addKCellularLteUlSccStateHist:v353];

        ++v352;
      }

      while (v350 != v352);
      v350 = [(NSMutableArray *)v348 countByEnumeratingWithState:&v676 objects:v940 count:16];
    }

    while (v350);
  }

  v675 = 0u;
  v674 = 0u;
  v673 = 0u;
  v672 = 0u;
  v354 = self->_kCellularLteAdvancedRxStateHists;
  v355 = [(NSMutableArray *)v354 countByEnumeratingWithState:&v672 objects:v939 count:16];
  if (v355)
  {
    v356 = v355;
    v357 = *v673;
    do
    {
      v358 = 0;
      do
      {
        if (*v673 != v357)
        {
          objc_enumerationMutation(v354);
        }

        v359 = [*(*(&v672 + 1) + 8 * v358) copyWithZone:zone];
        [v5 addKCellularLteAdvancedRxStateHist:v359];

        ++v358;
      }

      while (v356 != v358);
      v356 = [(NSMutableArray *)v354 countByEnumeratingWithState:&v672 objects:v939 count:16];
    }

    while (v356);
  }

  v671 = 0u;
  v670 = 0u;
  v669 = 0u;
  v668 = 0u;
  v360 = self->_kCellularLteComponentCarrierInfos;
  v361 = [(NSMutableArray *)v360 countByEnumeratingWithState:&v668 objects:v938 count:16];
  if (v361)
  {
    v362 = v361;
    v363 = *v669;
    do
    {
      v364 = 0;
      do
      {
        if (*v669 != v363)
        {
          objc_enumerationMutation(v360);
        }

        v365 = [*(*(&v668 + 1) + 8 * v364) copyWithZone:zone];
        [v5 addKCellularLteComponentCarrierInfo:v365];

        ++v364;
      }

      while (v362 != v364);
      v362 = [(NSMutableArray *)v360 countByEnumeratingWithState:&v668 objects:v938 count:16];
    }

    while (v362);
  }

  v667 = 0u;
  v666 = 0u;
  v665 = 0u;
  v664 = 0u;
  v366 = self->_kCellularLteRxTxStateHists;
  v367 = [(NSMutableArray *)v366 countByEnumeratingWithState:&v664 objects:v937 count:16];
  if (v367)
  {
    v368 = v367;
    v369 = *v665;
    do
    {
      v370 = 0;
      do
      {
        if (*v665 != v369)
        {
          objc_enumerationMutation(v366);
        }

        v371 = [*(*(&v664 + 1) + 8 * v370) copyWithZone:zone];
        [v5 addKCellularLteRxTxStateHist:v371];

        ++v370;
      }

      while (v368 != v370);
      v368 = [(NSMutableArray *)v366 countByEnumeratingWithState:&v664 objects:v937 count:16];
    }

    while (v368);
  }

  v663 = 0u;
  v662 = 0u;
  v661 = 0u;
  v660 = 0u;
  v372 = self->_kCellularLteTotalDlTbsHists;
  v373 = [(NSMutableArray *)v372 countByEnumeratingWithState:&v660 objects:v936 count:16];
  if (v373)
  {
    v374 = v373;
    v375 = *v661;
    do
    {
      v376 = 0;
      do
      {
        if (*v661 != v375)
        {
          objc_enumerationMutation(v372);
        }

        v377 = [*(*(&v660 + 1) + 8 * v376) copyWithZone:zone];
        [v5 addKCellularLteTotalDlTbsHist:v377];

        ++v376;
      }

      while (v374 != v376);
      v374 = [(NSMutableArray *)v372 countByEnumeratingWithState:&v660 objects:v936 count:16];
    }

    while (v374);
  }

  v659 = 0u;
  v658 = 0u;
  v657 = 0u;
  v656 = 0u;
  v378 = self->_kCellularLteDlSccStateHistV3s;
  v379 = [(NSMutableArray *)v378 countByEnumeratingWithState:&v656 objects:v935 count:16];
  if (v379)
  {
    v380 = v379;
    v381 = *v657;
    do
    {
      v382 = 0;
      do
      {
        if (*v657 != v381)
        {
          objc_enumerationMutation(v378);
        }

        v383 = [*(*(&v656 + 1) + 8 * v382) copyWithZone:zone];
        [v5 addKCellularLteDlSccStateHistV3:v383];

        ++v382;
      }

      while (v380 != v382);
      v380 = [(NSMutableArray *)v378 countByEnumeratingWithState:&v656 objects:v935 count:16];
    }

    while (v380);
  }

  v655 = 0u;
  v654 = 0u;
  v653 = 0u;
  v652 = 0u;
  v384 = self->_kCellularLteRxDiversityHists;
  v385 = [(NSMutableArray *)v384 countByEnumeratingWithState:&v652 objects:v934 count:16];
  if (v385)
  {
    v386 = v385;
    v387 = *v653;
    do
    {
      v388 = 0;
      do
      {
        if (*v653 != v387)
        {
          objc_enumerationMutation(v384);
        }

        v389 = [*(*(&v652 + 1) + 8 * v388) copyWithZone:zone];
        [v5 addKCellularLteRxDiversityHist:v389];

        ++v388;
      }

      while (v386 != v388);
      v386 = [(NSMutableArray *)v384 countByEnumeratingWithState:&v652 objects:v934 count:16];
    }

    while (v386);
  }

  v651 = 0u;
  v650 = 0u;
  v649 = 0u;
  v648 = 0u;
  v390 = self->_kCellularLtePdcchStateHists;
  v391 = [(NSMutableArray *)v390 countByEnumeratingWithState:&v648 objects:v933 count:16];
  if (v391)
  {
    v392 = v391;
    v393 = *v649;
    do
    {
      v394 = 0;
      do
      {
        if (*v649 != v393)
        {
          objc_enumerationMutation(v390);
        }

        v395 = [*(*(&v648 + 1) + 8 * v394) copyWithZone:zone];
        [v5 addKCellularLtePdcchStateHist:v395];

        ++v394;
      }

      while (v392 != v394);
      v392 = [(NSMutableArray *)v390 countByEnumeratingWithState:&v648 objects:v933 count:16];
    }

    while (v392);
  }

  v647 = 0u;
  v646 = 0u;
  v645 = 0u;
  v644 = 0u;
  v396 = self->_kCellularProtocolStackStateHists;
  v397 = [(NSMutableArray *)v396 countByEnumeratingWithState:&v644 objects:v932 count:16];
  if (v397)
  {
    v398 = v397;
    v399 = *v645;
    do
    {
      v400 = 0;
      do
      {
        if (*v645 != v399)
        {
          objc_enumerationMutation(v396);
        }

        v401 = [*(*(&v644 + 1) + 8 * v400) copyWithZone:zone];
        [v5 addKCellularProtocolStackStateHist:v401];

        ++v400;
      }

      while (v398 != v400);
      v398 = [(NSMutableArray *)v396 countByEnumeratingWithState:&v644 objects:v932 count:16];
    }

    while (v398);
  }

  v643 = 0u;
  v642 = 0u;
  v641 = 0u;
  v640 = 0u;
  v402 = self->_kCellularCellPlmnSearchCounts;
  v403 = [(NSMutableArray *)v402 countByEnumeratingWithState:&v640 objects:v931 count:16];
  if (v403)
  {
    v404 = v403;
    v405 = *v641;
    do
    {
      v406 = 0;
      do
      {
        if (*v641 != v405)
        {
          objc_enumerationMutation(v402);
        }

        v407 = [*(*(&v640 + 1) + 8 * v406) copyWithZone:zone];
        [v5 addKCellularCellPlmnSearchCount:v407];

        ++v406;
      }

      while (v404 != v406);
      v404 = [(NSMutableArray *)v402 countByEnumeratingWithState:&v640 objects:v931 count:16];
    }

    while (v404);
  }

  v639 = 0u;
  v638 = 0u;
  v637 = 0u;
  v636 = 0u;
  v408 = self->_kCellularCellPlmnSearchHists;
  v409 = [(NSMutableArray *)v408 countByEnumeratingWithState:&v636 objects:v930 count:16];
  if (v409)
  {
    v410 = v409;
    v411 = *v637;
    do
    {
      v412 = 0;
      do
      {
        if (*v637 != v411)
        {
          objc_enumerationMutation(v408);
        }

        v413 = [*(*(&v636 + 1) + 8 * v412) copyWithZone:zone];
        [v5 addKCellularCellPlmnSearchHist:v413];

        ++v412;
      }

      while (v410 != v412);
      v410 = [(NSMutableArray *)v408 countByEnumeratingWithState:&v636 objects:v930 count:16];
    }

    while (v410);
  }

  v635 = 0u;
  v634 = 0u;
  v633 = 0u;
  v632 = 0u;
  v414 = self->_kCellularProtocolStackPowerStates;
  v415 = [(NSMutableArray *)v414 countByEnumeratingWithState:&v632 objects:v929 count:16];
  if (v415)
  {
    v416 = v415;
    v417 = *v633;
    do
    {
      v418 = 0;
      do
      {
        if (*v633 != v417)
        {
          objc_enumerationMutation(v414);
        }

        v419 = [*(*(&v632 + 1) + 8 * v418) copyWithZone:zone];
        [v5 addKCellularProtocolStackPowerState:v419];

        ++v418;
      }

      while (v416 != v418);
      v416 = [(NSMutableArray *)v414 countByEnumeratingWithState:&v632 objects:v929 count:16];
    }

    while (v416);
  }

  v631 = 0u;
  v630 = 0u;
  v629 = 0u;
  v628 = 0u;
  v420 = self->_kCellularDownlinkIpPacketFilterStatus;
  v421 = [(NSMutableArray *)v420 countByEnumeratingWithState:&v628 objects:v928 count:16];
  if (v421)
  {
    v422 = v421;
    v423 = *v629;
    do
    {
      v424 = 0;
      do
      {
        if (*v629 != v423)
        {
          objc_enumerationMutation(v420);
        }

        v425 = [*(*(&v628 + 1) + 8 * v424) copyWithZone:zone];
        [v5 addKCellularDownlinkIpPacketFilterStatus:v425];

        ++v424;
      }

      while (v422 != v424);
      v422 = [(NSMutableArray *)v420 countByEnumeratingWithState:&v628 objects:v928 count:16];
    }

    while (v422);
  }

  v627 = 0u;
  v626 = 0u;
  v625 = 0u;
  v624 = 0u;
  v426 = self->_kCellularServingCellRfBandHists;
  v427 = [(NSMutableArray *)v426 countByEnumeratingWithState:&v624 objects:v927 count:16];
  if (v427)
  {
    v428 = v427;
    v429 = *v625;
    do
    {
      v430 = 0;
      do
      {
        if (*v625 != v429)
        {
          objc_enumerationMutation(v426);
        }

        v431 = [*(*(&v624 + 1) + 8 * v430) copyWithZone:zone];
        [v5 addKCellularServingCellRfBandHist:v431];

        ++v430;
      }

      while (v428 != v430);
      v428 = [(NSMutableArray *)v426 countByEnumeratingWithState:&v624 objects:v927 count:16];
    }

    while (v428);
  }

  v623 = 0u;
  v622 = 0u;
  v621 = 0u;
  v620 = 0u;
  v432 = self->_kCellularProtocolStackStateHist2s;
  v433 = [(NSMutableArray *)v432 countByEnumeratingWithState:&v620 objects:v926 count:16];
  if (v433)
  {
    v434 = v433;
    v435 = *v621;
    do
    {
      v436 = 0;
      do
      {
        if (*v621 != v435)
        {
          objc_enumerationMutation(v432);
        }

        v437 = [*(*(&v620 + 1) + 8 * v436) copyWithZone:zone];
        [v5 addKCellularProtocolStackStateHist2:v437];

        ++v436;
      }

      while (v434 != v436);
      v434 = [(NSMutableArray *)v432 countByEnumeratingWithState:&v620 objects:v926 count:16];
    }

    while (v434);
  }

  v619 = 0u;
  v618 = 0u;
  v617 = 0u;
  v616 = 0u;
  v438 = self->_kCellularProtocolStackStates;
  v439 = [(NSMutableArray *)v438 countByEnumeratingWithState:&v616 objects:v925 count:16];
  if (v439)
  {
    v440 = v439;
    v441 = *v617;
    do
    {
      v442 = 0;
      do
      {
        if (*v617 != v441)
        {
          objc_enumerationMutation(v438);
        }

        v443 = [*(*(&v616 + 1) + 8 * v442) copyWithZone:zone];
        [v5 addKCellularProtocolStackState:v443];

        ++v442;
      }

      while (v440 != v442);
      v440 = [(NSMutableArray *)v438 countByEnumeratingWithState:&v616 objects:v925 count:16];
    }

    while (v440);
  }

  v615 = 0u;
  v614 = 0u;
  v613 = 0u;
  v612 = 0u;
  v444 = self->_kCellularCdma1XRxDiversityHists;
  v445 = [(NSMutableArray *)v444 countByEnumeratingWithState:&v612 objects:v924 count:16];
  if (v445)
  {
    v446 = v445;
    v447 = *v613;
    do
    {
      v448 = 0;
      do
      {
        if (*v613 != v447)
        {
          objc_enumerationMutation(v444);
        }

        v449 = [*(*(&v612 + 1) + 8 * v448) copyWithZone:zone];
        [v5 addKCellularCdma1XRxDiversityHist:v449];

        ++v448;
      }

      while (v446 != v448);
      v446 = [(NSMutableArray *)v444 countByEnumeratingWithState:&v612 objects:v924 count:16];
    }

    while (v446);
  }

  v610 = 0u;
  v611 = 0u;
  v608 = 0u;
  v609 = 0u;
  v450 = self->_kCellularCdma1XServingCellRx0RssiHists;
  v451 = [(NSMutableArray *)v450 countByEnumeratingWithState:&v608 objects:v923 count:16];
  if (v451)
  {
    v452 = v451;
    v453 = *v609;
    do
    {
      v454 = 0;
      do
      {
        if (*v609 != v453)
        {
          objc_enumerationMutation(v450);
        }

        v455 = [*(*(&v608 + 1) + 8 * v454) copyWithZone:zone];
        [v5 addKCellularCdma1XServingCellRx0RssiHist:v455];

        ++v454;
      }

      while (v452 != v454);
      v452 = [(NSMutableArray *)v450 countByEnumeratingWithState:&v608 objects:v923 count:16];
    }

    while (v452);
  }

  v606 = 0u;
  v607 = 0u;
  v604 = 0u;
  v605 = 0u;
  v456 = self->_kCellularCdma1XServingCellRx1RssiHists;
  v457 = [(NSMutableArray *)v456 countByEnumeratingWithState:&v604 objects:v922 count:16];
  if (v457)
  {
    v458 = v457;
    v459 = *v605;
    do
    {
      v460 = 0;
      do
      {
        if (*v605 != v459)
        {
          objc_enumerationMutation(v456);
        }

        v461 = [*(*(&v604 + 1) + 8 * v460) copyWithZone:zone];
        [v5 addKCellularCdma1XServingCellRx1RssiHist:v461];

        ++v460;
      }

      while (v458 != v460);
      v458 = [(NSMutableArray *)v456 countByEnumeratingWithState:&v604 objects:v922 count:16];
    }

    while (v458);
  }

  v602 = 0u;
  v603 = 0u;
  v600 = 0u;
  v601 = 0u;
  v462 = self->_kCellularCdma1XServingCellRx0EcIoHists;
  v463 = [(NSMutableArray *)v462 countByEnumeratingWithState:&v600 objects:v921 count:16];
  if (v463)
  {
    v464 = v463;
    v465 = *v601;
    do
    {
      v466 = 0;
      do
      {
        if (*v601 != v465)
        {
          objc_enumerationMutation(v462);
        }

        v467 = [*(*(&v600 + 1) + 8 * v466) copyWithZone:zone];
        [v5 addKCellularCdma1XServingCellRx0EcIoHist:v467];

        ++v466;
      }

      while (v464 != v466);
      v464 = [(NSMutableArray *)v462 countByEnumeratingWithState:&v600 objects:v921 count:16];
    }

    while (v464);
  }

  v598 = 0u;
  v599 = 0u;
  v596 = 0u;
  v597 = 0u;
  v468 = self->_kCellularCdma1XServingCellRx1EcIoHists;
  v469 = [(NSMutableArray *)v468 countByEnumeratingWithState:&v596 objects:v920 count:16];
  if (v469)
  {
    v470 = v469;
    v471 = *v597;
    do
    {
      v472 = 0;
      do
      {
        if (*v597 != v471)
        {
          objc_enumerationMutation(v468);
        }

        v473 = [*(*(&v596 + 1) + 8 * v472) copyWithZone:zone];
        [v5 addKCellularCdma1XServingCellRx1EcIoHist:v473];

        ++v472;
      }

      while (v470 != v472);
      v470 = [(NSMutableArray *)v468 countByEnumeratingWithState:&v596 objects:v920 count:16];
    }

    while (v470);
  }

  v594 = 0u;
  v595 = 0u;
  v592 = 0u;
  v593 = 0u;
  v474 = self->_kCellularCdma1XTxPowerHists;
  v475 = [(NSMutableArray *)v474 countByEnumeratingWithState:&v592 objects:v919 count:16];
  if (v475)
  {
    v476 = v475;
    v477 = *v593;
    do
    {
      v478 = 0;
      do
      {
        if (*v593 != v477)
        {
          objc_enumerationMutation(v474);
        }

        v479 = [*(*(&v592 + 1) + 8 * v478) copyWithZone:zone];
        [v5 addKCellularCdma1XTxPowerHist:v479];

        ++v478;
      }

      while (v476 != v478);
      v476 = [(NSMutableArray *)v474 countByEnumeratingWithState:&v592 objects:v919 count:16];
    }

    while (v476);
  }

  v590 = 0u;
  v591 = 0u;
  v588 = 0u;
  v589 = 0u;
  v480 = self->_kCellularCdma1XProtocolStackStateHists;
  v481 = [(NSMutableArray *)v480 countByEnumeratingWithState:&v588 objects:v918 count:16];
  if (v481)
  {
    v482 = v481;
    v483 = *v589;
    do
    {
      v484 = 0;
      do
      {
        if (*v589 != v483)
        {
          objc_enumerationMutation(v480);
        }

        v485 = [*(*(&v588 + 1) + 8 * v484) copyWithZone:zone];
        [v5 addKCellularCdma1XProtocolStackStateHist:v485];

        ++v484;
      }

      while (v482 != v484);
      v482 = [(NSMutableArray *)v480 countByEnumeratingWithState:&v588 objects:v918 count:16];
    }

    while (v482);
  }

  v586 = 0u;
  v587 = 0u;
  v584 = 0u;
  v585 = 0u;
  v486 = self->_kCellularCdma1XConnectionHists;
  v487 = [(NSMutableArray *)v486 countByEnumeratingWithState:&v584 objects:v917 count:16];
  if (v487)
  {
    v488 = v487;
    v489 = *v585;
    do
    {
      v490 = 0;
      do
      {
        if (*v585 != v489)
        {
          objc_enumerationMutation(v486);
        }

        v491 = [*(*(&v584 + 1) + 8 * v490) copyWithZone:zone];
        [v5 addKCellularCdma1XConnectionHist:v491];

        ++v490;
      }

      while (v488 != v490);
      v488 = [(NSMutableArray *)v486 countByEnumeratingWithState:&v584 objects:v917 count:16];
    }

    while (v488);
  }

  v582 = 0u;
  v583 = 0u;
  v580 = 0u;
  v581 = 0u;
  v492 = self->_kCellularCdma1XRrStates;
  v493 = [(NSMutableArray *)v492 countByEnumeratingWithState:&v580 objects:v916 count:16];
  if (v493)
  {
    v494 = v493;
    v495 = *v581;
    do
    {
      v496 = 0;
      do
      {
        if (*v581 != v495)
        {
          objc_enumerationMutation(v492);
        }

        v497 = [*(*(&v580 + 1) + 8 * v496) copyWithZone:zone];
        [v5 addKCellularCdma1XRrState:v497];

        ++v496;
      }

      while (v494 != v496);
      v494 = [(NSMutableArray *)v492 countByEnumeratingWithState:&v580 objects:v916 count:16];
    }

    while (v494);
  }

  v578 = 0u;
  v579 = 0u;
  v576 = 0u;
  v577 = 0u;
  v498 = self->_kCellularCdmaEvdoRxDiversityHists;
  v499 = [(NSMutableArray *)v498 countByEnumeratingWithState:&v576 objects:v915 count:16];
  if (v499)
  {
    v500 = v499;
    v501 = *v577;
    do
    {
      v502 = 0;
      do
      {
        if (*v577 != v501)
        {
          objc_enumerationMutation(v498);
        }

        v503 = [*(*(&v576 + 1) + 8 * v502) copyWithZone:zone];
        [v5 addKCellularCdmaEvdoRxDiversityHist:v503];

        ++v502;
      }

      while (v500 != v502);
      v500 = [(NSMutableArray *)v498 countByEnumeratingWithState:&v576 objects:v915 count:16];
    }

    while (v500);
  }

  v574 = 0u;
  v575 = 0u;
  v572 = 0u;
  v573 = 0u;
  v504 = self->_kCellularCdmaEvdoServingCellRx0RssiHists;
  v505 = [(NSMutableArray *)v504 countByEnumeratingWithState:&v572 objects:v914 count:16];
  if (v505)
  {
    v506 = v505;
    v507 = *v573;
    do
    {
      v508 = 0;
      do
      {
        if (*v573 != v507)
        {
          objc_enumerationMutation(v504);
        }

        v509 = [*(*(&v572 + 1) + 8 * v508) copyWithZone:zone];
        [v5 addKCellularCdmaEvdoServingCellRx0RssiHist:v509];

        ++v508;
      }

      while (v506 != v508);
      v506 = [(NSMutableArray *)v504 countByEnumeratingWithState:&v572 objects:v914 count:16];
    }

    while (v506);
  }

  v570 = 0u;
  v571 = 0u;
  v568 = 0u;
  v569 = 0u;
  v510 = self->_kCellularCdmaEvdoServingCellRx1RssiHists;
  v511 = [(NSMutableArray *)v510 countByEnumeratingWithState:&v568 objects:v913 count:16];
  if (v511)
  {
    v512 = v511;
    v513 = *v569;
    do
    {
      v514 = 0;
      do
      {
        if (*v569 != v513)
        {
          objc_enumerationMutation(v510);
        }

        v515 = [*(*(&v568 + 1) + 8 * v514) copyWithZone:zone];
        [v5 addKCellularCdmaEvdoServingCellRx1RssiHist:v515];

        ++v514;
      }

      while (v512 != v514);
      v512 = [(NSMutableArray *)v510 countByEnumeratingWithState:&v568 objects:v913 count:16];
    }

    while (v512);
  }

  v566 = 0u;
  v567 = 0u;
  v564 = 0u;
  v565 = 0u;
  v516 = self->_kCellularCdmaEvdoServingCellRx0EcIoHists;
  v517 = [(NSMutableArray *)v516 countByEnumeratingWithState:&v564 objects:v912 count:16];
  if (v517)
  {
    v518 = v517;
    v519 = *v565;
    do
    {
      v520 = 0;
      do
      {
        if (*v565 != v519)
        {
          objc_enumerationMutation(v516);
        }

        v521 = [*(*(&v564 + 1) + 8 * v520) copyWithZone:zone];
        [v5 addKCellularCdmaEvdoServingCellRx0EcIoHist:v521];

        ++v520;
      }

      while (v518 != v520);
      v518 = [(NSMutableArray *)v516 countByEnumeratingWithState:&v564 objects:v912 count:16];
    }

    while (v518);
  }

  v562 = 0u;
  v563 = 0u;
  v560 = 0u;
  v561 = 0u;
  v522 = self->_kCellularCdmaEvdoServingCellRx1EcIoHists;
  v523 = [(NSMutableArray *)v522 countByEnumeratingWithState:&v560 objects:v911 count:16];
  if (v523)
  {
    v524 = v523;
    v525 = *v561;
    do
    {
      v526 = 0;
      do
      {
        if (*v561 != v525)
        {
          objc_enumerationMutation(v522);
        }

        v527 = [*(*(&v560 + 1) + 8 * v526) copyWithZone:zone];
        [v5 addKCellularCdmaEvdoServingCellRx1EcIoHist:v527];

        ++v526;
      }

      while (v524 != v526);
      v524 = [(NSMutableArray *)v522 countByEnumeratingWithState:&v560 objects:v911 count:16];
    }

    while (v524);
  }

  v558 = 0u;
  v559 = 0u;
  v556 = 0u;
  v557 = 0u;
  v528 = self->_kCellularCdmaEvdoTxPowerHists;
  v529 = [(NSMutableArray *)v528 countByEnumeratingWithState:&v556 objects:v910 count:16];
  if (v529)
  {
    v530 = v529;
    v531 = *v557;
    do
    {
      v532 = 0;
      do
      {
        if (*v557 != v531)
        {
          objc_enumerationMutation(v528);
        }

        v533 = [*(*(&v556 + 1) + 8 * v532) copyWithZone:zone];
        [v5 addKCellularCdmaEvdoTxPowerHist:v533];

        ++v532;
      }

      while (v530 != v532);
      v530 = [(NSMutableArray *)v528 countByEnumeratingWithState:&v556 objects:v910 count:16];
    }

    while (v530);
  }

  v554 = 0u;
  v555 = 0u;
  v552 = 0u;
  v553 = 0u;
  v534 = self->_kCellularCdmaEvdoProtocolStackStateHists;
  v535 = [(NSMutableArray *)v534 countByEnumeratingWithState:&v552 objects:v909 count:16];
  if (v535)
  {
    v536 = v535;
    v537 = *v553;
    do
    {
      v538 = 0;
      do
      {
        if (*v553 != v537)
        {
          objc_enumerationMutation(v534);
        }

        v539 = [*(*(&v552 + 1) + 8 * v538) copyWithZone:zone];
        [v5 addKCellularCdmaEvdoProtocolStackStateHist:v539];

        ++v538;
      }

      while (v536 != v538);
      v536 = [(NSMutableArray *)v534 countByEnumeratingWithState:&v552 objects:v909 count:16];
    }

    while (v536);
  }

  v550 = 0u;
  v551 = 0u;
  v548 = 0u;
  v549 = 0u;
  v540 = self->_kCellularCdmaEvdoRrStates;
  v541 = [(NSMutableArray *)v540 countByEnumeratingWithState:&v548 objects:v908 count:16];
  if (v541)
  {
    v542 = v541;
    v543 = *v549;
    do
    {
      v544 = 0;
      do
      {
        if (*v549 != v543)
        {
          objc_enumerationMutation(v540);
        }

        v545 = [*(*(&v548 + 1) + 8 * v544) copyWithZone:{zone, v548}];
        [v5 addKCellularCdmaEvdoRrState:v545];

        ++v544;
      }

      while (v542 != v544);
      v542 = [(NSMutableArray *)v540 countByEnumeratingWithState:&v548 objects:v908 count:16];
    }

    while (v542);
  }

  v546 = v5;
  return v546;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()]
    && ((kCellularPerClientProfileTriggerCounts = self->_kCellularPerClientProfileTriggerCounts, !(kCellularPerClientProfileTriggerCounts | equalCopy[51])) || [(NSMutableArray *)kCellularPerClientProfileTriggerCounts isEqual:?])
    && ((kCellularProtocolStackCpuStats = self->_kCellularProtocolStackCpuStats, !(kCellularProtocolStackCpuStats | equalCopy[55])) || [(NSMutableArray *)kCellularProtocolStackCpuStats isEqual:?])
    && ((kCellularPeripheralStats = self->_kCellularPeripheralStats, !(kCellularPeripheralStats | equalCopy[52])) || [(NSMutableArray *)kCellularPeripheralStats isEqual:?])
    && ((kCellularDvfsStats = self->_kCellularDvfsStats, !(kCellularDvfsStats | equalCopy[21])) || [(NSMutableArray *)kCellularDvfsStats isEqual:?])
    && ((kCellularLteWcdmaGsmHwStats = self->_kCellularLteWcdmaGsmHwStats, !(kCellularLteWcdmaGsmHwStats | equalCopy[49])) || [(NSMutableArray *)kCellularLteWcdmaGsmHwStats isEqual:?])
    && ((kCellularLteTdsGsmHwStats = self->_kCellularLteTdsGsmHwStats, !(kCellularLteTdsGsmHwStats | equalCopy[45])) || [(NSMutableArray *)kCellularLteTdsGsmHwStats isEqual:?])
    && ((kCellularPmuAverageCurrents = self->_kCellularPmuAverageCurrents, !(kCellularPmuAverageCurrents | equalCopy[54])) || [(NSMutableArray *)kCellularPmuAverageCurrents isEqual:?])
    && ((kCellularFwCoreStats = self->_kCellularFwCoreStats, !(kCellularFwCoreStats | equalCopy[22])) || [(NSMutableArray *)kCellularFwCoreStats isEqual:?])
    && ((kCellularLteWcdmaTdsHwStats = self->_kCellularLteWcdmaTdsHwStats, !(kCellularLteWcdmaTdsHwStats | equalCopy[50])) || [(NSMutableArray *)kCellularLteWcdmaTdsHwStats isEqual:?])
    && ((kCellularPmicHwStats = self->_kCellularPmicHwStats, !(kCellularPmicHwStats | equalCopy[53])) || [(NSMutableArray *)kCellularPmicHwStats isEqual:?])
    && ((kCellularTdsRrcStates = self->_kCellularTdsRrcStates, !(kCellularTdsRrcStates | equalCopy[65])) || [(NSMutableArray *)kCellularTdsRrcStates isEqual:?])
    && ((kCellularLteRrcStates = self->_kCellularLteRrcStates, !(kCellularLteRrcStates | equalCopy[39])) || [(NSMutableArray *)kCellularLteRrcStates isEqual:?])
    && ((kCellularLtePagingCycles = self->_kCellularLtePagingCycles, !(kCellularLtePagingCycles | equalCopy[35])) || [(NSMutableArray *)kCellularLtePagingCycles isEqual:?])
    && ((kCellularLteCdrxConfigs = self->_kCellularLteCdrxConfigs, !(kCellularLteCdrxConfigs | equalCopy[30])) || [(NSMutableArray *)kCellularLteCdrxConfigs isEqual:?])
    && ((kCellularLteRadioLinkFailures = self->_kCellularLteRadioLinkFailures, !(kCellularLteRadioLinkFailures | equalCopy[38])) || [(NSMutableArray *)kCellularLteRadioLinkFailures isEqual:?])
    && ((kCellularLtePdcchStateStats = self->_kCellularLtePdcchStateStats, !(kCellularLtePdcchStateStats | equalCopy[37])) || [(NSMutableArray *)kCellularLtePdcchStateStats isEqual:?])
    && ((kCellularLqmStateChanges = self->_kCellularLqmStateChanges, !(kCellularLqmStateChanges | equalCopy[28])) || [(NSMutableArray *)kCellularLqmStateChanges isEqual:?])
    && ((kCellularServiceLosts = self->_kCellularServiceLosts, !(kCellularServiceLosts | equalCopy[60])) || [(NSMutableArray *)kCellularServiceLosts isEqual:?])
    && ((kCellularGsmServingCellRssiHists = self->_kCellularGsmServingCellRssiHists, !(kCellularGsmServingCellRssiHists | equalCopy[25])) || [(NSMutableArray *)kCellularGsmServingCellRssiHists isEqual:?])
    && ((kCellularGsmServingCellSnrHists = self->_kCellularGsmServingCellSnrHists, !(kCellularGsmServingCellSnrHists | equalCopy[26])) || [(NSMutableArray *)kCellularGsmServingCellSnrHists isEqual:?])
    && ((kCellularGsmTxPowerHists = self->_kCellularGsmTxPowerHists, !(kCellularGsmTxPowerHists | equalCopy[27])) || [(NSMutableArray *)kCellularGsmTxPowerHists isEqual:?])
    && ((kCellularGsmConnectedModeHists = self->_kCellularGsmConnectedModeHists, !(kCellularGsmConnectedModeHists | equalCopy[23])) || [(NSMutableArray *)kCellularGsmConnectedModeHists isEqual:?])
    && ((kCellularGsmL1States = self->_kCellularGsmL1States, !(kCellularGsmL1States | equalCopy[24])) || [(NSMutableArray *)kCellularGsmL1States isEqual:?])
    && ((kCellularWcdmaCpcStats = self->_kCellularWcdmaCpcStats, !(kCellularWcdmaCpcStats | equalCopy[73])) || [(NSMutableArray *)kCellularWcdmaCpcStats isEqual:?])
    && ((kCellularWcdmaRxDiversityHists = self->_kCellularWcdmaRxDiversityHists, !(kCellularWcdmaRxDiversityHists | equalCopy[84])) || [(NSMutableArray *)kCellularWcdmaRxDiversityHists isEqual:?])
    && ((kCellularWcdmaServingCellRx0RssiHists = self->_kCellularWcdmaServingCellRx0RssiHists, !(kCellularWcdmaServingCellRx0RssiHists | equalCopy[86])) || [(NSMutableArray *)kCellularWcdmaServingCellRx0RssiHists isEqual:?])
    && ((kCellularWcdmaServingCellRx1RssiHists = self->_kCellularWcdmaServingCellRx1RssiHists, !(kCellularWcdmaServingCellRx1RssiHists | equalCopy[88])) || [(NSMutableArray *)kCellularWcdmaServingCellRx1RssiHists isEqual:?])
    && ((kCellularWcdmaServingCellRx0EcNoHists = self->_kCellularWcdmaServingCellRx0EcNoHists, !(kCellularWcdmaServingCellRx0EcNoHists | equalCopy[85])) || [(NSMutableArray *)kCellularWcdmaServingCellRx0EcNoHists isEqual:?])
    && ((kCellularWcdmaServingCellRx1EcNoHists = self->_kCellularWcdmaServingCellRx1EcNoHists, !(kCellularWcdmaServingCellRx1EcNoHists | equalCopy[87])) || [(NSMutableArray *)kCellularWcdmaServingCellRx1EcNoHists isEqual:?])
    && ((kCellularWcdmaTxPowerHists = self->_kCellularWcdmaTxPowerHists, !(kCellularWcdmaTxPowerHists | equalCopy[89])) || [(NSMutableArray *)kCellularWcdmaTxPowerHists isEqual:?])
    && ((kCellularWcdmaReceiverStatusOnC0Hists = self->_kCellularWcdmaReceiverStatusOnC0Hists, !(kCellularWcdmaReceiverStatusOnC0Hists | equalCopy[80])) || [(NSMutableArray *)kCellularWcdmaReceiverStatusOnC0Hists isEqual:?])
    && ((kCellularWcdmaReceiverStatusOnC1Hists = self->_kCellularWcdmaReceiverStatusOnC1Hists, !(kCellularWcdmaReceiverStatusOnC1Hists | equalCopy[81])) || [(NSMutableArray *)kCellularWcdmaReceiverStatusOnC1Hists isEqual:?])
    && ((kCellularWcdmaCarrierStatusHists = self->_kCellularWcdmaCarrierStatusHists, !(kCellularWcdmaCarrierStatusHists | equalCopy[72])) || [(NSMutableArray *)kCellularWcdmaCarrierStatusHists isEqual:?])
    && ((kCellularWcdmaRabModeHists = self->_kCellularWcdmaRabModeHists, !(kCellularWcdmaRabModeHists | equalCopy[77])) || [(NSMutableArray *)kCellularWcdmaRabModeHists isEqual:?])
    && ((kCellularWcdmaRabTypeHists = self->_kCellularWcdmaRabTypeHists, !(kCellularWcdmaRabTypeHists | equalCopy[79])) || [(NSMutableArray *)kCellularWcdmaRabTypeHists isEqual:?])
    && ((kCellularWcdmaRrcConnectionStates = self->_kCellularWcdmaRrcConnectionStates, !(kCellularWcdmaRrcConnectionStates | equalCopy[83])) || [(NSMutableArray *)kCellularWcdmaRrcConnectionStates isEqual:?])
    && ((kCellularWcdmaRrcConfigurations = self->_kCellularWcdmaRrcConfigurations, !(kCellularWcdmaRrcConfigurations | equalCopy[82])) || [(NSMutableArray *)kCellularWcdmaRrcConfigurations isEqual:?])
    && ((kCellularWcdmaRabStatus = self->_kCellularWcdmaRabStatus, !(kCellularWcdmaRabStatus | equalCopy[78])) || [(NSMutableArray *)kCellularWcdmaRabStatus isEqual:?])
    && ((kCellularWcdmaL1States = self->_kCellularWcdmaL1States, !(kCellularWcdmaL1States | equalCopy[76])) || [(NSMutableArray *)kCellularWcdmaL1States isEqual:?])
    && ((kCellularWcdmaDataInactivityBeforeIdles = self->_kCellularWcdmaDataInactivityBeforeIdles, !(kCellularWcdmaDataInactivityBeforeIdles | equalCopy[74])) || [(NSMutableArray *)kCellularWcdmaDataInactivityBeforeIdles isEqual:?])
    && ((kCellularWcdmaIdleToConnectedUserDatas = self->_kCellularWcdmaIdleToConnectedUserDatas, !(kCellularWcdmaIdleToConnectedUserDatas | equalCopy[75])) || [(NSMutableArray *)kCellularWcdmaIdleToConnectedUserDatas isEqual:?])
    && ((kCellularWcdmaVadHists = self->_kCellularWcdmaVadHists, !(kCellularWcdmaVadHists | equalCopy[90])) || [(NSMutableArray *)kCellularWcdmaVadHists isEqual:?])
    && ((kCellularTdsRxDiversityHists = self->_kCellularTdsRxDiversityHists, !(kCellularTdsRxDiversityHists | equalCopy[66])) || [(NSMutableArray *)kCellularTdsRxDiversityHists isEqual:?])
    && ((kCellularTdsServingCellRx0RssiHists = self->_kCellularTdsServingCellRx0RssiHists, !(kCellularTdsServingCellRx0RssiHists | equalCopy[68])) || [(NSMutableArray *)kCellularTdsServingCellRx0RssiHists isEqual:?])
    && ((kCellularTdsServingCellRx1RssiHists = self->_kCellularTdsServingCellRx1RssiHists, !(kCellularTdsServingCellRx1RssiHists | equalCopy[70])) || [(NSMutableArray *)kCellularTdsServingCellRx1RssiHists isEqual:?])
    && ((kCellularTdsServingCellRx0RscpHists = self->_kCellularTdsServingCellRx0RscpHists, !(kCellularTdsServingCellRx0RscpHists | equalCopy[67])) || [(NSMutableArray *)kCellularTdsServingCellRx0RscpHists isEqual:?])
    && ((kCellularTdsServingCellRx1RscpHists = self->_kCellularTdsServingCellRx1RscpHists, !(kCellularTdsServingCellRx1RscpHists | equalCopy[69])) || [(NSMutableArray *)kCellularTdsServingCellRx1RscpHists isEqual:?])
    && ((kCellularTdsTxPowerHists = self->_kCellularTdsTxPowerHists, !(kCellularTdsTxPowerHists | equalCopy[71])) || [(NSMutableArray *)kCellularTdsTxPowerHists isEqual:?])
    && ((kCellularTdsRabModeHists = self->_kCellularTdsRabModeHists, !(kCellularTdsRabModeHists | equalCopy[63])) || [(NSMutableArray *)kCellularTdsRabModeHists isEqual:?])
    && ((kCellularTdsRabTypeHists = self->_kCellularTdsRabTypeHists, !(kCellularTdsRabTypeHists | equalCopy[64])) || [(NSMutableArray *)kCellularTdsRabTypeHists isEqual:?])
    && ((kCellularTdsL1States = self->_kCellularTdsL1States, !(kCellularTdsL1States | equalCopy[62])) || [(NSMutableArray *)kCellularTdsL1States isEqual:?])
    && ((kCellularLteFwDuplexModes = self->_kCellularLteFwDuplexModes, !(kCellularLteFwDuplexModes | equalCopy[34])) || [(NSMutableArray *)kCellularLteFwDuplexModes isEqual:?])
    && ((kCellularLteServingCellRsrpHists = self->_kCellularLteServingCellRsrpHists, !(kCellularLteServingCellRsrpHists | equalCopy[42])) || [(NSMutableArray *)kCellularLteServingCellRsrpHists isEqual:?])
    && ((kCellularLteServingCellSinrHists = self->_kCellularLteServingCellSinrHists, !(kCellularLteServingCellSinrHists | equalCopy[43])) || [(NSMutableArray *)kCellularLteServingCellSinrHists isEqual:?])
    && ((kCellularLteSleepStateHists = self->_kCellularLteSleepStateHists, !(kCellularLteSleepStateHists | equalCopy[44])) || [(NSMutableArray *)kCellularLteSleepStateHists isEqual:?])
    && ((kCellularLteTxPowerHists = self->_kCellularLteTxPowerHists, !(kCellularLteTxPowerHists | equalCopy[47])) || [(NSMutableArray *)kCellularLteTxPowerHists isEqual:?])
    && ((kCellularLteDlSccStateHists = self->_kCellularLteDlSccStateHists, !(kCellularLteDlSccStateHists | equalCopy[33])) || [(NSMutableArray *)kCellularLteDlSccStateHists isEqual:?])
    && ((kCellularLteUlSccStateHists = self->_kCellularLteUlSccStateHists, !(kCellularLteUlSccStateHists | equalCopy[48])) || [(NSMutableArray *)kCellularLteUlSccStateHists isEqual:?])
    && ((kCellularLteAdvancedRxStateHists = self->_kCellularLteAdvancedRxStateHists, !(kCellularLteAdvancedRxStateHists | equalCopy[29])) || [(NSMutableArray *)kCellularLteAdvancedRxStateHists isEqual:?])
    && ((kCellularLteComponentCarrierInfos = self->_kCellularLteComponentCarrierInfos, !(kCellularLteComponentCarrierInfos | equalCopy[31])) || [(NSMutableArray *)kCellularLteComponentCarrierInfos isEqual:?])
    && ((kCellularLteRxTxStateHists = self->_kCellularLteRxTxStateHists, !(kCellularLteRxTxStateHists | equalCopy[41])) || [(NSMutableArray *)kCellularLteRxTxStateHists isEqual:?])
    && ((kCellularLteTotalDlTbsHists = self->_kCellularLteTotalDlTbsHists, !(kCellularLteTotalDlTbsHists | equalCopy[46])) || [(NSMutableArray *)kCellularLteTotalDlTbsHists isEqual:?])
    && ((kCellularLteDlSccStateHistV3s = self->_kCellularLteDlSccStateHistV3s, !(kCellularLteDlSccStateHistV3s | equalCopy[32])) || [(NSMutableArray *)kCellularLteDlSccStateHistV3s isEqual:?])
    && ((kCellularLteRxDiversityHists = self->_kCellularLteRxDiversityHists, !(kCellularLteRxDiversityHists | equalCopy[40])) || [(NSMutableArray *)kCellularLteRxDiversityHists isEqual:?])
    && ((kCellularLtePdcchStateHists = self->_kCellularLtePdcchStateHists, !(kCellularLtePdcchStateHists | equalCopy[36])) || [(NSMutableArray *)kCellularLtePdcchStateHists isEqual:?])
    && ((kCellularProtocolStackStateHists = self->_kCellularProtocolStackStateHists, !(kCellularProtocolStackStateHists | equalCopy[58])) || [(NSMutableArray *)kCellularProtocolStackStateHists isEqual:?])
    && ((kCellularCellPlmnSearchCounts = self->_kCellularCellPlmnSearchCounts, !(kCellularCellPlmnSearchCounts | equalCopy[18])) || [(NSMutableArray *)kCellularCellPlmnSearchCounts isEqual:?])
    && ((kCellularCellPlmnSearchHists = self->_kCellularCellPlmnSearchHists, !(kCellularCellPlmnSearchHists | equalCopy[19])) || [(NSMutableArray *)kCellularCellPlmnSearchHists isEqual:?])
    && ((kCellularProtocolStackPowerStates = self->_kCellularProtocolStackPowerStates, !(kCellularProtocolStackPowerStates | equalCopy[56])) || [(NSMutableArray *)kCellularProtocolStackPowerStates isEqual:?])
    && ((kCellularDownlinkIpPacketFilterStatus = self->_kCellularDownlinkIpPacketFilterStatus, !(kCellularDownlinkIpPacketFilterStatus | equalCopy[20])) || [(NSMutableArray *)kCellularDownlinkIpPacketFilterStatus isEqual:?])
    && ((kCellularServingCellRfBandHists = self->_kCellularServingCellRfBandHists, !(kCellularServingCellRfBandHists | equalCopy[61])) || [(NSMutableArray *)kCellularServingCellRfBandHists isEqual:?])
    && ((kCellularProtocolStackStateHist2s = self->_kCellularProtocolStackStateHist2s, !(kCellularProtocolStackStateHist2s | equalCopy[57])) || [(NSMutableArray *)kCellularProtocolStackStateHist2s isEqual:?])
    && ((kCellularProtocolStackStates = self->_kCellularProtocolStackStates, !(kCellularProtocolStackStates | equalCopy[59])) || [(NSMutableArray *)kCellularProtocolStackStates isEqual:?])
    && ((kCellularCdma1XRxDiversityHists = self->_kCellularCdma1XRxDiversityHists, !(kCellularCdma1XRxDiversityHists | equalCopy[4])) || [(NSMutableArray *)kCellularCdma1XRxDiversityHists isEqual:?])
    && ((kCellularCdma1XServingCellRx0RssiHists = self->_kCellularCdma1XServingCellRx0RssiHists, !(kCellularCdma1XServingCellRx0RssiHists | equalCopy[6])) || [(NSMutableArray *)kCellularCdma1XServingCellRx0RssiHists isEqual:?])
    && ((kCellularCdma1XServingCellRx1RssiHists = self->_kCellularCdma1XServingCellRx1RssiHists, !(kCellularCdma1XServingCellRx1RssiHists | equalCopy[8])) || [(NSMutableArray *)kCellularCdma1XServingCellRx1RssiHists isEqual:?])
    && ((kCellularCdma1XServingCellRx0EcIoHists = self->_kCellularCdma1XServingCellRx0EcIoHists, !(kCellularCdma1XServingCellRx0EcIoHists | equalCopy[5])) || [(NSMutableArray *)kCellularCdma1XServingCellRx0EcIoHists isEqual:?])
    && ((kCellularCdma1XServingCellRx1EcIoHists = self->_kCellularCdma1XServingCellRx1EcIoHists, !(kCellularCdma1XServingCellRx1EcIoHists | equalCopy[7])) || [(NSMutableArray *)kCellularCdma1XServingCellRx1EcIoHists isEqual:?])
    && ((kCellularCdma1XTxPowerHists = self->_kCellularCdma1XTxPowerHists, !(kCellularCdma1XTxPowerHists | equalCopy[9])) || [(NSMutableArray *)kCellularCdma1XTxPowerHists isEqual:?])
    && ((kCellularCdma1XProtocolStackStateHists = self->_kCellularCdma1XProtocolStackStateHists, !(kCellularCdma1XProtocolStackStateHists | equalCopy[2])) || [(NSMutableArray *)kCellularCdma1XProtocolStackStateHists isEqual:?])
    && ((kCellularCdma1XConnectionHists = self->_kCellularCdma1XConnectionHists, !(kCellularCdma1XConnectionHists | equalCopy[1])) || [(NSMutableArray *)kCellularCdma1XConnectionHists isEqual:?])
    && ((kCellularCdma1XRrStates = self->_kCellularCdma1XRrStates, !(kCellularCdma1XRrStates | equalCopy[3])) || [(NSMutableArray *)kCellularCdma1XRrStates isEqual:?])
    && ((kCellularCdmaEvdoRxDiversityHists = self->_kCellularCdmaEvdoRxDiversityHists, !(kCellularCdmaEvdoRxDiversityHists | equalCopy[12])) || [(NSMutableArray *)kCellularCdmaEvdoRxDiversityHists isEqual:?])
    && ((kCellularCdmaEvdoServingCellRx0RssiHists = self->_kCellularCdmaEvdoServingCellRx0RssiHists, !(kCellularCdmaEvdoServingCellRx0RssiHists | equalCopy[14])) || [(NSMutableArray *)kCellularCdmaEvdoServingCellRx0RssiHists isEqual:?])
    && ((kCellularCdmaEvdoServingCellRx1RssiHists = self->_kCellularCdmaEvdoServingCellRx1RssiHists, !(kCellularCdmaEvdoServingCellRx1RssiHists | equalCopy[16])) || [(NSMutableArray *)kCellularCdmaEvdoServingCellRx1RssiHists isEqual:?])
    && ((kCellularCdmaEvdoServingCellRx0EcIoHists = self->_kCellularCdmaEvdoServingCellRx0EcIoHists, !(kCellularCdmaEvdoServingCellRx0EcIoHists | equalCopy[13])) || [(NSMutableArray *)kCellularCdmaEvdoServingCellRx0EcIoHists isEqual:?])
    && ((kCellularCdmaEvdoServingCellRx1EcIoHists = self->_kCellularCdmaEvdoServingCellRx1EcIoHists, !(kCellularCdmaEvdoServingCellRx1EcIoHists | equalCopy[15])) || [(NSMutableArray *)kCellularCdmaEvdoServingCellRx1EcIoHists isEqual:?])
    && ((kCellularCdmaEvdoTxPowerHists = self->_kCellularCdmaEvdoTxPowerHists, !(kCellularCdmaEvdoTxPowerHists | equalCopy[17])) || [(NSMutableArray *)kCellularCdmaEvdoTxPowerHists isEqual:?])
    && ((kCellularCdmaEvdoProtocolStackStateHists = self->_kCellularCdmaEvdoProtocolStackStateHists, !(kCellularCdmaEvdoProtocolStackStateHists | equalCopy[10])) || [(NSMutableArray *)kCellularCdmaEvdoProtocolStackStateHists isEqual:?]))
  {
    kCellularCdmaEvdoRrStates = self->_kCellularCdmaEvdoRrStates;
    if (kCellularCdmaEvdoRrStates | equalCopy[11])
    {
      v95 = [(NSMutableArray *)kCellularCdmaEvdoRrStates isEqual:?];
    }

    else
    {
      v95 = 1;
    }
  }

  else
  {
    v95 = 0;
  }

  return v95;
}

- (unint64_t)hash
{
  v3 = [(NSMutableArray *)self->_kCellularPerClientProfileTriggerCounts hash];
  v4 = [(NSMutableArray *)self->_kCellularProtocolStackCpuStats hash]^ v3;
  v5 = [(NSMutableArray *)self->_kCellularPeripheralStats hash];
  v6 = v4 ^ v5 ^ [(NSMutableArray *)self->_kCellularDvfsStats hash];
  v7 = [(NSMutableArray *)self->_kCellularLteWcdmaGsmHwStats hash];
  v8 = v7 ^ [(NSMutableArray *)self->_kCellularLteTdsGsmHwStats hash];
  v9 = v6 ^ v8 ^ [(NSMutableArray *)self->_kCellularPmuAverageCurrents hash];
  v10 = [(NSMutableArray *)self->_kCellularFwCoreStats hash];
  v11 = v10 ^ [(NSMutableArray *)self->_kCellularLteWcdmaTdsHwStats hash];
  v12 = v11 ^ [(NSMutableArray *)self->_kCellularPmicHwStats hash];
  v13 = v9 ^ v12 ^ [(NSMutableArray *)self->_kCellularTdsRrcStates hash];
  v14 = [(NSMutableArray *)self->_kCellularLteRrcStates hash];
  v15 = v14 ^ [(NSMutableArray *)self->_kCellularLtePagingCycles hash];
  v16 = v15 ^ [(NSMutableArray *)self->_kCellularLteCdrxConfigs hash];
  v17 = v16 ^ [(NSMutableArray *)self->_kCellularLteRadioLinkFailures hash];
  v18 = v13 ^ v17 ^ [(NSMutableArray *)self->_kCellularLtePdcchStateStats hash];
  v19 = [(NSMutableArray *)self->_kCellularLqmStateChanges hash];
  v20 = v19 ^ [(NSMutableArray *)self->_kCellularServiceLosts hash];
  v21 = v20 ^ [(NSMutableArray *)self->_kCellularGsmServingCellRssiHists hash];
  v22 = v21 ^ [(NSMutableArray *)self->_kCellularGsmServingCellSnrHists hash];
  v23 = v22 ^ [(NSMutableArray *)self->_kCellularGsmTxPowerHists hash];
  v24 = v18 ^ v23 ^ [(NSMutableArray *)self->_kCellularGsmConnectedModeHists hash];
  v25 = [(NSMutableArray *)self->_kCellularGsmL1States hash];
  v26 = v25 ^ [(NSMutableArray *)self->_kCellularWcdmaCpcStats hash];
  v27 = v26 ^ [(NSMutableArray *)self->_kCellularWcdmaRxDiversityHists hash];
  v28 = v27 ^ [(NSMutableArray *)self->_kCellularWcdmaServingCellRx0RssiHists hash];
  v29 = v28 ^ [(NSMutableArray *)self->_kCellularWcdmaServingCellRx1RssiHists hash];
  v30 = v29 ^ [(NSMutableArray *)self->_kCellularWcdmaServingCellRx0EcNoHists hash];
  v31 = v24 ^ v30 ^ [(NSMutableArray *)self->_kCellularWcdmaServingCellRx1EcNoHists hash];
  v32 = [(NSMutableArray *)self->_kCellularWcdmaTxPowerHists hash];
  v33 = v32 ^ [(NSMutableArray *)self->_kCellularWcdmaReceiverStatusOnC0Hists hash];
  v34 = v33 ^ [(NSMutableArray *)self->_kCellularWcdmaReceiverStatusOnC1Hists hash];
  v35 = v34 ^ [(NSMutableArray *)self->_kCellularWcdmaCarrierStatusHists hash];
  v36 = v35 ^ [(NSMutableArray *)self->_kCellularWcdmaRabModeHists hash];
  v37 = v36 ^ [(NSMutableArray *)self->_kCellularWcdmaRabTypeHists hash];
  v38 = v37 ^ [(NSMutableArray *)self->_kCellularWcdmaRrcConnectionStates hash];
  v39 = v31 ^ v38 ^ [(NSMutableArray *)self->_kCellularWcdmaRrcConfigurations hash];
  v40 = [(NSMutableArray *)self->_kCellularWcdmaRabStatus hash];
  v41 = v40 ^ [(NSMutableArray *)self->_kCellularWcdmaL1States hash];
  v42 = v41 ^ [(NSMutableArray *)self->_kCellularWcdmaDataInactivityBeforeIdles hash];
  v43 = v42 ^ [(NSMutableArray *)self->_kCellularWcdmaIdleToConnectedUserDatas hash];
  v44 = v43 ^ [(NSMutableArray *)self->_kCellularWcdmaVadHists hash];
  v45 = v44 ^ [(NSMutableArray *)self->_kCellularTdsRxDiversityHists hash];
  v46 = v45 ^ [(NSMutableArray *)self->_kCellularTdsServingCellRx0RssiHists hash];
  v47 = v46 ^ [(NSMutableArray *)self->_kCellularTdsServingCellRx1RssiHists hash];
  v48 = v39 ^ v47 ^ [(NSMutableArray *)self->_kCellularTdsServingCellRx0RscpHists hash];
  v49 = [(NSMutableArray *)self->_kCellularTdsServingCellRx1RscpHists hash];
  v50 = v49 ^ [(NSMutableArray *)self->_kCellularTdsTxPowerHists hash];
  v51 = v50 ^ [(NSMutableArray *)self->_kCellularTdsRabModeHists hash];
  v52 = v51 ^ [(NSMutableArray *)self->_kCellularTdsRabTypeHists hash];
  v53 = v52 ^ [(NSMutableArray *)self->_kCellularTdsL1States hash];
  v54 = v53 ^ [(NSMutableArray *)self->_kCellularLteFwDuplexModes hash];
  v55 = v54 ^ [(NSMutableArray *)self->_kCellularLteServingCellRsrpHists hash];
  v56 = v55 ^ [(NSMutableArray *)self->_kCellularLteServingCellSinrHists hash];
  v57 = v56 ^ [(NSMutableArray *)self->_kCellularLteSleepStateHists hash];
  v58 = v48 ^ v57 ^ [(NSMutableArray *)self->_kCellularLteTxPowerHists hash];
  v59 = [(NSMutableArray *)self->_kCellularLteDlSccStateHists hash];
  v60 = v59 ^ [(NSMutableArray *)self->_kCellularLteUlSccStateHists hash];
  v61 = v60 ^ [(NSMutableArray *)self->_kCellularLteAdvancedRxStateHists hash];
  v62 = v61 ^ [(NSMutableArray *)self->_kCellularLteComponentCarrierInfos hash];
  v63 = v62 ^ [(NSMutableArray *)self->_kCellularLteRxTxStateHists hash];
  v64 = v63 ^ [(NSMutableArray *)self->_kCellularLteTotalDlTbsHists hash];
  v65 = v64 ^ [(NSMutableArray *)self->_kCellularLteDlSccStateHistV3s hash];
  v66 = v65 ^ [(NSMutableArray *)self->_kCellularLteRxDiversityHists hash];
  v67 = v66 ^ [(NSMutableArray *)self->_kCellularLtePdcchStateHists hash];
  v68 = v67 ^ [(NSMutableArray *)self->_kCellularProtocolStackStateHists hash];
  v69 = v58 ^ v68 ^ [(NSMutableArray *)self->_kCellularCellPlmnSearchCounts hash];
  v70 = [(NSMutableArray *)self->_kCellularCellPlmnSearchHists hash];
  v71 = v70 ^ [(NSMutableArray *)self->_kCellularProtocolStackPowerStates hash];
  v72 = v71 ^ [(NSMutableArray *)self->_kCellularDownlinkIpPacketFilterStatus hash];
  v73 = v72 ^ [(NSMutableArray *)self->_kCellularServingCellRfBandHists hash];
  v74 = v73 ^ [(NSMutableArray *)self->_kCellularProtocolStackStateHist2s hash];
  v75 = v74 ^ [(NSMutableArray *)self->_kCellularProtocolStackStates hash];
  v76 = v75 ^ [(NSMutableArray *)self->_kCellularCdma1XRxDiversityHists hash];
  v77 = v76 ^ [(NSMutableArray *)self->_kCellularCdma1XServingCellRx0RssiHists hash];
  v78 = v77 ^ [(NSMutableArray *)self->_kCellularCdma1XServingCellRx1RssiHists hash];
  v79 = v78 ^ [(NSMutableArray *)self->_kCellularCdma1XServingCellRx0EcIoHists hash];
  v80 = v79 ^ [(NSMutableArray *)self->_kCellularCdma1XServingCellRx1EcIoHists hash];
  v81 = v69 ^ v80 ^ [(NSMutableArray *)self->_kCellularCdma1XTxPowerHists hash];
  v82 = [(NSMutableArray *)self->_kCellularCdma1XProtocolStackStateHists hash];
  v83 = v82 ^ [(NSMutableArray *)self->_kCellularCdma1XConnectionHists hash];
  v84 = v83 ^ [(NSMutableArray *)self->_kCellularCdma1XRrStates hash];
  v85 = v84 ^ [(NSMutableArray *)self->_kCellularCdmaEvdoRxDiversityHists hash];
  v86 = v85 ^ [(NSMutableArray *)self->_kCellularCdmaEvdoServingCellRx0RssiHists hash];
  v87 = v86 ^ [(NSMutableArray *)self->_kCellularCdmaEvdoServingCellRx1RssiHists hash];
  v88 = v87 ^ [(NSMutableArray *)self->_kCellularCdmaEvdoServingCellRx0EcIoHists hash];
  v89 = v88 ^ [(NSMutableArray *)self->_kCellularCdmaEvdoServingCellRx1EcIoHists hash];
  v90 = v89 ^ [(NSMutableArray *)self->_kCellularCdmaEvdoTxPowerHists hash];
  v91 = v90 ^ [(NSMutableArray *)self->_kCellularCdmaEvdoProtocolStackStateHists hash];
  return v81 ^ v91 ^ [(NSMutableArray *)self->_kCellularCdmaEvdoRrStates hash];
}

- (void)mergeFrom:(id)from
{
  v905 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v811 = 0u;
  v812 = 0u;
  v813 = 0u;
  v814 = 0u;
  v5 = fromCopy[51];
  v6 = [v5 countByEnumeratingWithState:&v811 objects:v904 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v812;
    do
    {
      v9 = 0;
      do
      {
        if (*v812 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(PowerlogMetricLog *)self addKCellularPerClientProfileTriggerCount:*(*(&v811 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v811 objects:v904 count:16];
    }

    while (v7);
  }

  v810 = 0u;
  v809 = 0u;
  v808 = 0u;
  v807 = 0u;
  v10 = fromCopy[55];
  v11 = [v10 countByEnumeratingWithState:&v807 objects:v903 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v808;
    do
    {
      v14 = 0;
      do
      {
        if (*v808 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(PowerlogMetricLog *)self addKCellularProtocolStackCpuStats:*(*(&v807 + 1) + 8 * v14++)];
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v807 objects:v903 count:16];
    }

    while (v12);
  }

  v806 = 0u;
  v805 = 0u;
  v804 = 0u;
  v803 = 0u;
  v15 = fromCopy[52];
  v16 = [v15 countByEnumeratingWithState:&v803 objects:v902 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v804;
    do
    {
      v19 = 0;
      do
      {
        if (*v804 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [(PowerlogMetricLog *)self addKCellularPeripheralStats:*(*(&v803 + 1) + 8 * v19++)];
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v803 objects:v902 count:16];
    }

    while (v17);
  }

  v802 = 0u;
  v801 = 0u;
  v800 = 0u;
  v799 = 0u;
  v20 = fromCopy[21];
  v21 = [v20 countByEnumeratingWithState:&v799 objects:v901 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v800;
    do
    {
      v24 = 0;
      do
      {
        if (*v800 != v23)
        {
          objc_enumerationMutation(v20);
        }

        [(PowerlogMetricLog *)self addKCellularDvfsStats:*(*(&v799 + 1) + 8 * v24++)];
      }

      while (v22 != v24);
      v22 = [v20 countByEnumeratingWithState:&v799 objects:v901 count:16];
    }

    while (v22);
  }

  v798 = 0u;
  v797 = 0u;
  v796 = 0u;
  v795 = 0u;
  v25 = fromCopy[49];
  v26 = [v25 countByEnumeratingWithState:&v795 objects:v900 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v796;
    do
    {
      v29 = 0;
      do
      {
        if (*v796 != v28)
        {
          objc_enumerationMutation(v25);
        }

        [(PowerlogMetricLog *)self addKCellularLteWcdmaGsmHwStats:*(*(&v795 + 1) + 8 * v29++)];
      }

      while (v27 != v29);
      v27 = [v25 countByEnumeratingWithState:&v795 objects:v900 count:16];
    }

    while (v27);
  }

  v794 = 0u;
  v793 = 0u;
  v792 = 0u;
  v791 = 0u;
  v30 = fromCopy[45];
  v31 = [v30 countByEnumeratingWithState:&v791 objects:v899 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v792;
    do
    {
      v34 = 0;
      do
      {
        if (*v792 != v33)
        {
          objc_enumerationMutation(v30);
        }

        [(PowerlogMetricLog *)self addKCellularLteTdsGsmHwStats:*(*(&v791 + 1) + 8 * v34++)];
      }

      while (v32 != v34);
      v32 = [v30 countByEnumeratingWithState:&v791 objects:v899 count:16];
    }

    while (v32);
  }

  v790 = 0u;
  v789 = 0u;
  v788 = 0u;
  v787 = 0u;
  v35 = fromCopy[54];
  v36 = [v35 countByEnumeratingWithState:&v787 objects:v898 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v788;
    do
    {
      v39 = 0;
      do
      {
        if (*v788 != v38)
        {
          objc_enumerationMutation(v35);
        }

        [(PowerlogMetricLog *)self addKCellularPmuAverageCurrent:*(*(&v787 + 1) + 8 * v39++)];
      }

      while (v37 != v39);
      v37 = [v35 countByEnumeratingWithState:&v787 objects:v898 count:16];
    }

    while (v37);
  }

  v786 = 0u;
  v785 = 0u;
  v784 = 0u;
  v783 = 0u;
  v40 = fromCopy[22];
  v41 = [v40 countByEnumeratingWithState:&v783 objects:v897 count:16];
  if (v41)
  {
    v42 = v41;
    v43 = *v784;
    do
    {
      v44 = 0;
      do
      {
        if (*v784 != v43)
        {
          objc_enumerationMutation(v40);
        }

        [(PowerlogMetricLog *)self addKCellularFwCoreStats:*(*(&v783 + 1) + 8 * v44++)];
      }

      while (v42 != v44);
      v42 = [v40 countByEnumeratingWithState:&v783 objects:v897 count:16];
    }

    while (v42);
  }

  v782 = 0u;
  v781 = 0u;
  v780 = 0u;
  v779 = 0u;
  v45 = fromCopy[50];
  v46 = [v45 countByEnumeratingWithState:&v779 objects:v896 count:16];
  if (v46)
  {
    v47 = v46;
    v48 = *v780;
    do
    {
      v49 = 0;
      do
      {
        if (*v780 != v48)
        {
          objc_enumerationMutation(v45);
        }

        [(PowerlogMetricLog *)self addKCellularLteWcdmaTdsHwStats:*(*(&v779 + 1) + 8 * v49++)];
      }

      while (v47 != v49);
      v47 = [v45 countByEnumeratingWithState:&v779 objects:v896 count:16];
    }

    while (v47);
  }

  v778 = 0u;
  v777 = 0u;
  v776 = 0u;
  v775 = 0u;
  v50 = fromCopy[53];
  v51 = [v50 countByEnumeratingWithState:&v775 objects:v895 count:16];
  if (v51)
  {
    v52 = v51;
    v53 = *v776;
    do
    {
      v54 = 0;
      do
      {
        if (*v776 != v53)
        {
          objc_enumerationMutation(v50);
        }

        [(PowerlogMetricLog *)self addKCellularPmicHwStats:*(*(&v775 + 1) + 8 * v54++)];
      }

      while (v52 != v54);
      v52 = [v50 countByEnumeratingWithState:&v775 objects:v895 count:16];
    }

    while (v52);
  }

  v774 = 0u;
  v773 = 0u;
  v772 = 0u;
  v771 = 0u;
  v55 = fromCopy[65];
  v56 = [v55 countByEnumeratingWithState:&v771 objects:v894 count:16];
  if (v56)
  {
    v57 = v56;
    v58 = *v772;
    do
    {
      v59 = 0;
      do
      {
        if (*v772 != v58)
        {
          objc_enumerationMutation(v55);
        }

        [(PowerlogMetricLog *)self addKCellularTdsRrcState:*(*(&v771 + 1) + 8 * v59++)];
      }

      while (v57 != v59);
      v57 = [v55 countByEnumeratingWithState:&v771 objects:v894 count:16];
    }

    while (v57);
  }

  v770 = 0u;
  v769 = 0u;
  v768 = 0u;
  v767 = 0u;
  v60 = fromCopy[39];
  v61 = [v60 countByEnumeratingWithState:&v767 objects:v893 count:16];
  if (v61)
  {
    v62 = v61;
    v63 = *v768;
    do
    {
      v64 = 0;
      do
      {
        if (*v768 != v63)
        {
          objc_enumerationMutation(v60);
        }

        [(PowerlogMetricLog *)self addKCellularLteRrcState:*(*(&v767 + 1) + 8 * v64++)];
      }

      while (v62 != v64);
      v62 = [v60 countByEnumeratingWithState:&v767 objects:v893 count:16];
    }

    while (v62);
  }

  v766 = 0u;
  v765 = 0u;
  v764 = 0u;
  v763 = 0u;
  v65 = fromCopy[35];
  v66 = [v65 countByEnumeratingWithState:&v763 objects:v892 count:16];
  if (v66)
  {
    v67 = v66;
    v68 = *v764;
    do
    {
      v69 = 0;
      do
      {
        if (*v764 != v68)
        {
          objc_enumerationMutation(v65);
        }

        [(PowerlogMetricLog *)self addKCellularLtePagingCycle:*(*(&v763 + 1) + 8 * v69++)];
      }

      while (v67 != v69);
      v67 = [v65 countByEnumeratingWithState:&v763 objects:v892 count:16];
    }

    while (v67);
  }

  v762 = 0u;
  v761 = 0u;
  v760 = 0u;
  v759 = 0u;
  v70 = fromCopy[30];
  v71 = [v70 countByEnumeratingWithState:&v759 objects:v891 count:16];
  if (v71)
  {
    v72 = v71;
    v73 = *v760;
    do
    {
      v74 = 0;
      do
      {
        if (*v760 != v73)
        {
          objc_enumerationMutation(v70);
        }

        [(PowerlogMetricLog *)self addKCellularLteCdrxConfig:*(*(&v759 + 1) + 8 * v74++)];
      }

      while (v72 != v74);
      v72 = [v70 countByEnumeratingWithState:&v759 objects:v891 count:16];
    }

    while (v72);
  }

  v758 = 0u;
  v757 = 0u;
  v756 = 0u;
  v755 = 0u;
  v75 = fromCopy[38];
  v76 = [v75 countByEnumeratingWithState:&v755 objects:v890 count:16];
  if (v76)
  {
    v77 = v76;
    v78 = *v756;
    do
    {
      v79 = 0;
      do
      {
        if (*v756 != v78)
        {
          objc_enumerationMutation(v75);
        }

        [(PowerlogMetricLog *)self addKCellularLteRadioLinkFailure:*(*(&v755 + 1) + 8 * v79++)];
      }

      while (v77 != v79);
      v77 = [v75 countByEnumeratingWithState:&v755 objects:v890 count:16];
    }

    while (v77);
  }

  v754 = 0u;
  v753 = 0u;
  v752 = 0u;
  v751 = 0u;
  v80 = fromCopy[37];
  v81 = [v80 countByEnumeratingWithState:&v751 objects:v889 count:16];
  if (v81)
  {
    v82 = v81;
    v83 = *v752;
    do
    {
      v84 = 0;
      do
      {
        if (*v752 != v83)
        {
          objc_enumerationMutation(v80);
        }

        [(PowerlogMetricLog *)self addKCellularLtePdcchStateStats:*(*(&v751 + 1) + 8 * v84++)];
      }

      while (v82 != v84);
      v82 = [v80 countByEnumeratingWithState:&v751 objects:v889 count:16];
    }

    while (v82);
  }

  v750 = 0u;
  v749 = 0u;
  v748 = 0u;
  v747 = 0u;
  v85 = fromCopy[28];
  v86 = [v85 countByEnumeratingWithState:&v747 objects:v888 count:16];
  if (v86)
  {
    v87 = v86;
    v88 = *v748;
    do
    {
      v89 = 0;
      do
      {
        if (*v748 != v88)
        {
          objc_enumerationMutation(v85);
        }

        [(PowerlogMetricLog *)self addKCellularLqmStateChange:*(*(&v747 + 1) + 8 * v89++)];
      }

      while (v87 != v89);
      v87 = [v85 countByEnumeratingWithState:&v747 objects:v888 count:16];
    }

    while (v87);
  }

  v746 = 0u;
  v745 = 0u;
  v744 = 0u;
  v743 = 0u;
  v90 = fromCopy[60];
  v91 = [v90 countByEnumeratingWithState:&v743 objects:v887 count:16];
  if (v91)
  {
    v92 = v91;
    v93 = *v744;
    do
    {
      v94 = 0;
      do
      {
        if (*v744 != v93)
        {
          objc_enumerationMutation(v90);
        }

        [(PowerlogMetricLog *)self addKCellularServiceLost:*(*(&v743 + 1) + 8 * v94++)];
      }

      while (v92 != v94);
      v92 = [v90 countByEnumeratingWithState:&v743 objects:v887 count:16];
    }

    while (v92);
  }

  v742 = 0u;
  v741 = 0u;
  v740 = 0u;
  v739 = 0u;
  v95 = fromCopy[25];
  v96 = [v95 countByEnumeratingWithState:&v739 objects:v886 count:16];
  if (v96)
  {
    v97 = v96;
    v98 = *v740;
    do
    {
      v99 = 0;
      do
      {
        if (*v740 != v98)
        {
          objc_enumerationMutation(v95);
        }

        [(PowerlogMetricLog *)self addKCellularGsmServingCellRssiHist:*(*(&v739 + 1) + 8 * v99++)];
      }

      while (v97 != v99);
      v97 = [v95 countByEnumeratingWithState:&v739 objects:v886 count:16];
    }

    while (v97);
  }

  v738 = 0u;
  v737 = 0u;
  v736 = 0u;
  v735 = 0u;
  v100 = fromCopy[26];
  v101 = [v100 countByEnumeratingWithState:&v735 objects:v885 count:16];
  if (v101)
  {
    v102 = v101;
    v103 = *v736;
    do
    {
      v104 = 0;
      do
      {
        if (*v736 != v103)
        {
          objc_enumerationMutation(v100);
        }

        [(PowerlogMetricLog *)self addKCellularGsmServingCellSnrHist:*(*(&v735 + 1) + 8 * v104++)];
      }

      while (v102 != v104);
      v102 = [v100 countByEnumeratingWithState:&v735 objects:v885 count:16];
    }

    while (v102);
  }

  v734 = 0u;
  v733 = 0u;
  v732 = 0u;
  v731 = 0u;
  v105 = fromCopy[27];
  v106 = [v105 countByEnumeratingWithState:&v731 objects:v884 count:16];
  if (v106)
  {
    v107 = v106;
    v108 = *v732;
    do
    {
      v109 = 0;
      do
      {
        if (*v732 != v108)
        {
          objc_enumerationMutation(v105);
        }

        [(PowerlogMetricLog *)self addKCellularGsmTxPowerHist:*(*(&v731 + 1) + 8 * v109++)];
      }

      while (v107 != v109);
      v107 = [v105 countByEnumeratingWithState:&v731 objects:v884 count:16];
    }

    while (v107);
  }

  v730 = 0u;
  v729 = 0u;
  v728 = 0u;
  v727 = 0u;
  v110 = fromCopy[23];
  v111 = [v110 countByEnumeratingWithState:&v727 objects:v883 count:16];
  if (v111)
  {
    v112 = v111;
    v113 = *v728;
    do
    {
      v114 = 0;
      do
      {
        if (*v728 != v113)
        {
          objc_enumerationMutation(v110);
        }

        [(PowerlogMetricLog *)self addKCellularGsmConnectedModeHist:*(*(&v727 + 1) + 8 * v114++)];
      }

      while (v112 != v114);
      v112 = [v110 countByEnumeratingWithState:&v727 objects:v883 count:16];
    }

    while (v112);
  }

  v726 = 0u;
  v725 = 0u;
  v724 = 0u;
  v723 = 0u;
  v115 = fromCopy[24];
  v116 = [v115 countByEnumeratingWithState:&v723 objects:v882 count:16];
  if (v116)
  {
    v117 = v116;
    v118 = *v724;
    do
    {
      v119 = 0;
      do
      {
        if (*v724 != v118)
        {
          objc_enumerationMutation(v115);
        }

        [(PowerlogMetricLog *)self addKCellularGsmL1State:*(*(&v723 + 1) + 8 * v119++)];
      }

      while (v117 != v119);
      v117 = [v115 countByEnumeratingWithState:&v723 objects:v882 count:16];
    }

    while (v117);
  }

  v722 = 0u;
  v721 = 0u;
  v720 = 0u;
  v719 = 0u;
  v120 = fromCopy[73];
  v121 = [v120 countByEnumeratingWithState:&v719 objects:v881 count:16];
  if (v121)
  {
    v122 = v121;
    v123 = *v720;
    do
    {
      v124 = 0;
      do
      {
        if (*v720 != v123)
        {
          objc_enumerationMutation(v120);
        }

        [(PowerlogMetricLog *)self addKCellularWcdmaCpcStat:*(*(&v719 + 1) + 8 * v124++)];
      }

      while (v122 != v124);
      v122 = [v120 countByEnumeratingWithState:&v719 objects:v881 count:16];
    }

    while (v122);
  }

  v718 = 0u;
  v717 = 0u;
  v716 = 0u;
  v715 = 0u;
  v125 = fromCopy[84];
  v126 = [v125 countByEnumeratingWithState:&v715 objects:v880 count:16];
  if (v126)
  {
    v127 = v126;
    v128 = *v716;
    do
    {
      v129 = 0;
      do
      {
        if (*v716 != v128)
        {
          objc_enumerationMutation(v125);
        }

        [(PowerlogMetricLog *)self addKCellularWcdmaRxDiversityHist:*(*(&v715 + 1) + 8 * v129++)];
      }

      while (v127 != v129);
      v127 = [v125 countByEnumeratingWithState:&v715 objects:v880 count:16];
    }

    while (v127);
  }

  v714 = 0u;
  v713 = 0u;
  v712 = 0u;
  v711 = 0u;
  v130 = fromCopy[86];
  v131 = [v130 countByEnumeratingWithState:&v711 objects:v879 count:16];
  if (v131)
  {
    v132 = v131;
    v133 = *v712;
    do
    {
      v134 = 0;
      do
      {
        if (*v712 != v133)
        {
          objc_enumerationMutation(v130);
        }

        [(PowerlogMetricLog *)self addKCellularWcdmaServingCellRx0RssiHist:*(*(&v711 + 1) + 8 * v134++)];
      }

      while (v132 != v134);
      v132 = [v130 countByEnumeratingWithState:&v711 objects:v879 count:16];
    }

    while (v132);
  }

  v710 = 0u;
  v709 = 0u;
  v708 = 0u;
  v707 = 0u;
  v135 = fromCopy[88];
  v136 = [v135 countByEnumeratingWithState:&v707 objects:v878 count:16];
  if (v136)
  {
    v137 = v136;
    v138 = *v708;
    do
    {
      v139 = 0;
      do
      {
        if (*v708 != v138)
        {
          objc_enumerationMutation(v135);
        }

        [(PowerlogMetricLog *)self addKCellularWcdmaServingCellRx1RssiHist:*(*(&v707 + 1) + 8 * v139++)];
      }

      while (v137 != v139);
      v137 = [v135 countByEnumeratingWithState:&v707 objects:v878 count:16];
    }

    while (v137);
  }

  v706 = 0u;
  v705 = 0u;
  v704 = 0u;
  v703 = 0u;
  v140 = fromCopy[85];
  v141 = [v140 countByEnumeratingWithState:&v703 objects:v877 count:16];
  if (v141)
  {
    v142 = v141;
    v143 = *v704;
    do
    {
      v144 = 0;
      do
      {
        if (*v704 != v143)
        {
          objc_enumerationMutation(v140);
        }

        [(PowerlogMetricLog *)self addKCellularWcdmaServingCellRx0EcNoHist:*(*(&v703 + 1) + 8 * v144++)];
      }

      while (v142 != v144);
      v142 = [v140 countByEnumeratingWithState:&v703 objects:v877 count:16];
    }

    while (v142);
  }

  v702 = 0u;
  v701 = 0u;
  v700 = 0u;
  v699 = 0u;
  v145 = fromCopy[87];
  v146 = [v145 countByEnumeratingWithState:&v699 objects:v876 count:16];
  if (v146)
  {
    v147 = v146;
    v148 = *v700;
    do
    {
      v149 = 0;
      do
      {
        if (*v700 != v148)
        {
          objc_enumerationMutation(v145);
        }

        [(PowerlogMetricLog *)self addKCellularWcdmaServingCellRx1EcNoHist:*(*(&v699 + 1) + 8 * v149++)];
      }

      while (v147 != v149);
      v147 = [v145 countByEnumeratingWithState:&v699 objects:v876 count:16];
    }

    while (v147);
  }

  v698 = 0u;
  v697 = 0u;
  v696 = 0u;
  v695 = 0u;
  v150 = fromCopy[89];
  v151 = [v150 countByEnumeratingWithState:&v695 objects:v875 count:16];
  if (v151)
  {
    v152 = v151;
    v153 = *v696;
    do
    {
      v154 = 0;
      do
      {
        if (*v696 != v153)
        {
          objc_enumerationMutation(v150);
        }

        [(PowerlogMetricLog *)self addKCellularWcdmaTxPowerHist:*(*(&v695 + 1) + 8 * v154++)];
      }

      while (v152 != v154);
      v152 = [v150 countByEnumeratingWithState:&v695 objects:v875 count:16];
    }

    while (v152);
  }

  v694 = 0u;
  v693 = 0u;
  v692 = 0u;
  v691 = 0u;
  v155 = fromCopy[80];
  v156 = [v155 countByEnumeratingWithState:&v691 objects:v874 count:16];
  if (v156)
  {
    v157 = v156;
    v158 = *v692;
    do
    {
      v159 = 0;
      do
      {
        if (*v692 != v158)
        {
          objc_enumerationMutation(v155);
        }

        [(PowerlogMetricLog *)self addKCellularWcdmaReceiverStatusOnC0Hist:*(*(&v691 + 1) + 8 * v159++)];
      }

      while (v157 != v159);
      v157 = [v155 countByEnumeratingWithState:&v691 objects:v874 count:16];
    }

    while (v157);
  }

  v690 = 0u;
  v689 = 0u;
  v688 = 0u;
  v687 = 0u;
  v160 = fromCopy[81];
  v161 = [v160 countByEnumeratingWithState:&v687 objects:v873 count:16];
  if (v161)
  {
    v162 = v161;
    v163 = *v688;
    do
    {
      v164 = 0;
      do
      {
        if (*v688 != v163)
        {
          objc_enumerationMutation(v160);
        }

        [(PowerlogMetricLog *)self addKCellularWcdmaReceiverStatusOnC1Hist:*(*(&v687 + 1) + 8 * v164++)];
      }

      while (v162 != v164);
      v162 = [v160 countByEnumeratingWithState:&v687 objects:v873 count:16];
    }

    while (v162);
  }

  v686 = 0u;
  v685 = 0u;
  v684 = 0u;
  v683 = 0u;
  v165 = fromCopy[72];
  v166 = [v165 countByEnumeratingWithState:&v683 objects:v872 count:16];
  if (v166)
  {
    v167 = v166;
    v168 = *v684;
    do
    {
      v169 = 0;
      do
      {
        if (*v684 != v168)
        {
          objc_enumerationMutation(v165);
        }

        [(PowerlogMetricLog *)self addKCellularWcdmaCarrierStatusHist:*(*(&v683 + 1) + 8 * v169++)];
      }

      while (v167 != v169);
      v167 = [v165 countByEnumeratingWithState:&v683 objects:v872 count:16];
    }

    while (v167);
  }

  v682 = 0u;
  v681 = 0u;
  v680 = 0u;
  v679 = 0u;
  v170 = fromCopy[77];
  v171 = [v170 countByEnumeratingWithState:&v679 objects:v871 count:16];
  if (v171)
  {
    v172 = v171;
    v173 = *v680;
    do
    {
      v174 = 0;
      do
      {
        if (*v680 != v173)
        {
          objc_enumerationMutation(v170);
        }

        [(PowerlogMetricLog *)self addKCellularWcdmaRabModeHist:*(*(&v679 + 1) + 8 * v174++)];
      }

      while (v172 != v174);
      v172 = [v170 countByEnumeratingWithState:&v679 objects:v871 count:16];
    }

    while (v172);
  }

  v678 = 0u;
  v677 = 0u;
  v676 = 0u;
  v675 = 0u;
  v175 = fromCopy[79];
  v176 = [v175 countByEnumeratingWithState:&v675 objects:v870 count:16];
  if (v176)
  {
    v177 = v176;
    v178 = *v676;
    do
    {
      v179 = 0;
      do
      {
        if (*v676 != v178)
        {
          objc_enumerationMutation(v175);
        }

        [(PowerlogMetricLog *)self addKCellularWcdmaRabTypeHist:*(*(&v675 + 1) + 8 * v179++)];
      }

      while (v177 != v179);
      v177 = [v175 countByEnumeratingWithState:&v675 objects:v870 count:16];
    }

    while (v177);
  }

  v674 = 0u;
  v673 = 0u;
  v672 = 0u;
  v671 = 0u;
  v180 = fromCopy[83];
  v181 = [v180 countByEnumeratingWithState:&v671 objects:v869 count:16];
  if (v181)
  {
    v182 = v181;
    v183 = *v672;
    do
    {
      v184 = 0;
      do
      {
        if (*v672 != v183)
        {
          objc_enumerationMutation(v180);
        }

        [(PowerlogMetricLog *)self addKCellularWcdmaRrcConnectionState:*(*(&v671 + 1) + 8 * v184++)];
      }

      while (v182 != v184);
      v182 = [v180 countByEnumeratingWithState:&v671 objects:v869 count:16];
    }

    while (v182);
  }

  v670 = 0u;
  v669 = 0u;
  v668 = 0u;
  v667 = 0u;
  v185 = fromCopy[82];
  v186 = [v185 countByEnumeratingWithState:&v667 objects:v868 count:16];
  if (v186)
  {
    v187 = v186;
    v188 = *v668;
    do
    {
      v189 = 0;
      do
      {
        if (*v668 != v188)
        {
          objc_enumerationMutation(v185);
        }

        [(PowerlogMetricLog *)self addKCellularWcdmaRrcConfiguration:*(*(&v667 + 1) + 8 * v189++)];
      }

      while (v187 != v189);
      v187 = [v185 countByEnumeratingWithState:&v667 objects:v868 count:16];
    }

    while (v187);
  }

  v666 = 0u;
  v665 = 0u;
  v664 = 0u;
  v663 = 0u;
  v190 = fromCopy[78];
  v191 = [v190 countByEnumeratingWithState:&v663 objects:v867 count:16];
  if (v191)
  {
    v192 = v191;
    v193 = *v664;
    do
    {
      v194 = 0;
      do
      {
        if (*v664 != v193)
        {
          objc_enumerationMutation(v190);
        }

        [(PowerlogMetricLog *)self addKCellularWcdmaRabStatus:*(*(&v663 + 1) + 8 * v194++)];
      }

      while (v192 != v194);
      v192 = [v190 countByEnumeratingWithState:&v663 objects:v867 count:16];
    }

    while (v192);
  }

  v662 = 0u;
  v661 = 0u;
  v660 = 0u;
  v659 = 0u;
  v195 = fromCopy[76];
  v196 = [v195 countByEnumeratingWithState:&v659 objects:v866 count:16];
  if (v196)
  {
    v197 = v196;
    v198 = *v660;
    do
    {
      v199 = 0;
      do
      {
        if (*v660 != v198)
        {
          objc_enumerationMutation(v195);
        }

        [(PowerlogMetricLog *)self addKCellularWcdmaL1State:*(*(&v659 + 1) + 8 * v199++)];
      }

      while (v197 != v199);
      v197 = [v195 countByEnumeratingWithState:&v659 objects:v866 count:16];
    }

    while (v197);
  }

  v658 = 0u;
  v657 = 0u;
  v656 = 0u;
  v655 = 0u;
  v200 = fromCopy[74];
  v201 = [v200 countByEnumeratingWithState:&v655 objects:v865 count:16];
  if (v201)
  {
    v202 = v201;
    v203 = *v656;
    do
    {
      v204 = 0;
      do
      {
        if (*v656 != v203)
        {
          objc_enumerationMutation(v200);
        }

        [(PowerlogMetricLog *)self addKCellularWcdmaDataInactivityBeforeIdle:*(*(&v655 + 1) + 8 * v204++)];
      }

      while (v202 != v204);
      v202 = [v200 countByEnumeratingWithState:&v655 objects:v865 count:16];
    }

    while (v202);
  }

  v654 = 0u;
  v653 = 0u;
  v652 = 0u;
  v651 = 0u;
  v205 = fromCopy[75];
  v206 = [v205 countByEnumeratingWithState:&v651 objects:v864 count:16];
  if (v206)
  {
    v207 = v206;
    v208 = *v652;
    do
    {
      v209 = 0;
      do
      {
        if (*v652 != v208)
        {
          objc_enumerationMutation(v205);
        }

        [(PowerlogMetricLog *)self addKCellularWcdmaIdleToConnectedUserData:*(*(&v651 + 1) + 8 * v209++)];
      }

      while (v207 != v209);
      v207 = [v205 countByEnumeratingWithState:&v651 objects:v864 count:16];
    }

    while (v207);
  }

  v650 = 0u;
  v649 = 0u;
  v648 = 0u;
  v647 = 0u;
  v210 = fromCopy[90];
  v211 = [v210 countByEnumeratingWithState:&v647 objects:v863 count:16];
  if (v211)
  {
    v212 = v211;
    v213 = *v648;
    do
    {
      v214 = 0;
      do
      {
        if (*v648 != v213)
        {
          objc_enumerationMutation(v210);
        }

        [(PowerlogMetricLog *)self addKCellularWcdmaVadHist:*(*(&v647 + 1) + 8 * v214++)];
      }

      while (v212 != v214);
      v212 = [v210 countByEnumeratingWithState:&v647 objects:v863 count:16];
    }

    while (v212);
  }

  v646 = 0u;
  v645 = 0u;
  v644 = 0u;
  v643 = 0u;
  v215 = fromCopy[66];
  v216 = [v215 countByEnumeratingWithState:&v643 objects:v862 count:16];
  if (v216)
  {
    v217 = v216;
    v218 = *v644;
    do
    {
      v219 = 0;
      do
      {
        if (*v644 != v218)
        {
          objc_enumerationMutation(v215);
        }

        [(PowerlogMetricLog *)self addKCellularTdsRxDiversityHist:*(*(&v643 + 1) + 8 * v219++)];
      }

      while (v217 != v219);
      v217 = [v215 countByEnumeratingWithState:&v643 objects:v862 count:16];
    }

    while (v217);
  }

  v642 = 0u;
  v641 = 0u;
  v640 = 0u;
  v639 = 0u;
  v220 = fromCopy[68];
  v221 = [v220 countByEnumeratingWithState:&v639 objects:v861 count:16];
  if (v221)
  {
    v222 = v221;
    v223 = *v640;
    do
    {
      v224 = 0;
      do
      {
        if (*v640 != v223)
        {
          objc_enumerationMutation(v220);
        }

        [(PowerlogMetricLog *)self addKCellularTdsServingCellRx0RssiHist:*(*(&v639 + 1) + 8 * v224++)];
      }

      while (v222 != v224);
      v222 = [v220 countByEnumeratingWithState:&v639 objects:v861 count:16];
    }

    while (v222);
  }

  v638 = 0u;
  v637 = 0u;
  v636 = 0u;
  v635 = 0u;
  v225 = fromCopy[70];
  v226 = [v225 countByEnumeratingWithState:&v635 objects:v860 count:16];
  if (v226)
  {
    v227 = v226;
    v228 = *v636;
    do
    {
      v229 = 0;
      do
      {
        if (*v636 != v228)
        {
          objc_enumerationMutation(v225);
        }

        [(PowerlogMetricLog *)self addKCellularTdsServingCellRx1RssiHist:*(*(&v635 + 1) + 8 * v229++)];
      }

      while (v227 != v229);
      v227 = [v225 countByEnumeratingWithState:&v635 objects:v860 count:16];
    }

    while (v227);
  }

  v634 = 0u;
  v633 = 0u;
  v632 = 0u;
  v631 = 0u;
  v230 = fromCopy[67];
  v231 = [v230 countByEnumeratingWithState:&v631 objects:v859 count:16];
  if (v231)
  {
    v232 = v231;
    v233 = *v632;
    do
    {
      v234 = 0;
      do
      {
        if (*v632 != v233)
        {
          objc_enumerationMutation(v230);
        }

        [(PowerlogMetricLog *)self addKCellularTdsServingCellRx0RscpHist:*(*(&v631 + 1) + 8 * v234++)];
      }

      while (v232 != v234);
      v232 = [v230 countByEnumeratingWithState:&v631 objects:v859 count:16];
    }

    while (v232);
  }

  v630 = 0u;
  v629 = 0u;
  v628 = 0u;
  v627 = 0u;
  v235 = fromCopy[69];
  v236 = [v235 countByEnumeratingWithState:&v627 objects:v858 count:16];
  if (v236)
  {
    v237 = v236;
    v238 = *v628;
    do
    {
      v239 = 0;
      do
      {
        if (*v628 != v238)
        {
          objc_enumerationMutation(v235);
        }

        [(PowerlogMetricLog *)self addKCellularTdsServingCellRx1RscpHist:*(*(&v627 + 1) + 8 * v239++)];
      }

      while (v237 != v239);
      v237 = [v235 countByEnumeratingWithState:&v627 objects:v858 count:16];
    }

    while (v237);
  }

  v626 = 0u;
  v625 = 0u;
  v624 = 0u;
  v623 = 0u;
  v240 = fromCopy[71];
  v241 = [v240 countByEnumeratingWithState:&v623 objects:v857 count:16];
  if (v241)
  {
    v242 = v241;
    v243 = *v624;
    do
    {
      v244 = 0;
      do
      {
        if (*v624 != v243)
        {
          objc_enumerationMutation(v240);
        }

        [(PowerlogMetricLog *)self addKCellularTdsTxPowerHist:*(*(&v623 + 1) + 8 * v244++)];
      }

      while (v242 != v244);
      v242 = [v240 countByEnumeratingWithState:&v623 objects:v857 count:16];
    }

    while (v242);
  }

  v622 = 0u;
  v621 = 0u;
  v620 = 0u;
  v619 = 0u;
  v245 = fromCopy[63];
  v246 = [v245 countByEnumeratingWithState:&v619 objects:v856 count:16];
  if (v246)
  {
    v247 = v246;
    v248 = *v620;
    do
    {
      v249 = 0;
      do
      {
        if (*v620 != v248)
        {
          objc_enumerationMutation(v245);
        }

        [(PowerlogMetricLog *)self addKCellularTdsRabModeHist:*(*(&v619 + 1) + 8 * v249++)];
      }

      while (v247 != v249);
      v247 = [v245 countByEnumeratingWithState:&v619 objects:v856 count:16];
    }

    while (v247);
  }

  v618 = 0u;
  v617 = 0u;
  v616 = 0u;
  v615 = 0u;
  v250 = fromCopy[64];
  v251 = [v250 countByEnumeratingWithState:&v615 objects:v855 count:16];
  if (v251)
  {
    v252 = v251;
    v253 = *v616;
    do
    {
      v254 = 0;
      do
      {
        if (*v616 != v253)
        {
          objc_enumerationMutation(v250);
        }

        [(PowerlogMetricLog *)self addKCellularTdsRabTypeHist:*(*(&v615 + 1) + 8 * v254++)];
      }

      while (v252 != v254);
      v252 = [v250 countByEnumeratingWithState:&v615 objects:v855 count:16];
    }

    while (v252);
  }

  v614 = 0u;
  v613 = 0u;
  v612 = 0u;
  v611 = 0u;
  v255 = fromCopy[62];
  v256 = [v255 countByEnumeratingWithState:&v611 objects:v854 count:16];
  if (v256)
  {
    v257 = v256;
    v258 = *v612;
    do
    {
      v259 = 0;
      do
      {
        if (*v612 != v258)
        {
          objc_enumerationMutation(v255);
        }

        [(PowerlogMetricLog *)self addKCellularTdsL1State:*(*(&v611 + 1) + 8 * v259++)];
      }

      while (v257 != v259);
      v257 = [v255 countByEnumeratingWithState:&v611 objects:v854 count:16];
    }

    while (v257);
  }

  v610 = 0u;
  v609 = 0u;
  v608 = 0u;
  v607 = 0u;
  v260 = fromCopy[34];
  v261 = [v260 countByEnumeratingWithState:&v607 objects:v853 count:16];
  if (v261)
  {
    v262 = v261;
    v263 = *v608;
    do
    {
      v264 = 0;
      do
      {
        if (*v608 != v263)
        {
          objc_enumerationMutation(v260);
        }

        [(PowerlogMetricLog *)self addKCellularLteFwDuplexMode:*(*(&v607 + 1) + 8 * v264++)];
      }

      while (v262 != v264);
      v262 = [v260 countByEnumeratingWithState:&v607 objects:v853 count:16];
    }

    while (v262);
  }

  v606 = 0u;
  v605 = 0u;
  v604 = 0u;
  v603 = 0u;
  v265 = fromCopy[42];
  v266 = [v265 countByEnumeratingWithState:&v603 objects:v852 count:16];
  if (v266)
  {
    v267 = v266;
    v268 = *v604;
    do
    {
      v269 = 0;
      do
      {
        if (*v604 != v268)
        {
          objc_enumerationMutation(v265);
        }

        [(PowerlogMetricLog *)self addKCellularLteServingCellRsrpHist:*(*(&v603 + 1) + 8 * v269++)];
      }

      while (v267 != v269);
      v267 = [v265 countByEnumeratingWithState:&v603 objects:v852 count:16];
    }

    while (v267);
  }

  v602 = 0u;
  v601 = 0u;
  v600 = 0u;
  v599 = 0u;
  v270 = fromCopy[43];
  v271 = [v270 countByEnumeratingWithState:&v599 objects:v851 count:16];
  if (v271)
  {
    v272 = v271;
    v273 = *v600;
    do
    {
      v274 = 0;
      do
      {
        if (*v600 != v273)
        {
          objc_enumerationMutation(v270);
        }

        [(PowerlogMetricLog *)self addKCellularLteServingCellSinrHist:*(*(&v599 + 1) + 8 * v274++)];
      }

      while (v272 != v274);
      v272 = [v270 countByEnumeratingWithState:&v599 objects:v851 count:16];
    }

    while (v272);
  }

  v598 = 0u;
  v597 = 0u;
  v596 = 0u;
  v595 = 0u;
  v275 = fromCopy[44];
  v276 = [v275 countByEnumeratingWithState:&v595 objects:v850 count:16];
  if (v276)
  {
    v277 = v276;
    v278 = *v596;
    do
    {
      v279 = 0;
      do
      {
        if (*v596 != v278)
        {
          objc_enumerationMutation(v275);
        }

        [(PowerlogMetricLog *)self addKCellularLteSleepStateHist:*(*(&v595 + 1) + 8 * v279++)];
      }

      while (v277 != v279);
      v277 = [v275 countByEnumeratingWithState:&v595 objects:v850 count:16];
    }

    while (v277);
  }

  v594 = 0u;
  v593 = 0u;
  v592 = 0u;
  v591 = 0u;
  v280 = fromCopy[47];
  v281 = [v280 countByEnumeratingWithState:&v591 objects:v849 count:16];
  if (v281)
  {
    v282 = v281;
    v283 = *v592;
    do
    {
      v284 = 0;
      do
      {
        if (*v592 != v283)
        {
          objc_enumerationMutation(v280);
        }

        [(PowerlogMetricLog *)self addKCellularLteTxPowerHist:*(*(&v591 + 1) + 8 * v284++)];
      }

      while (v282 != v284);
      v282 = [v280 countByEnumeratingWithState:&v591 objects:v849 count:16];
    }

    while (v282);
  }

  v590 = 0u;
  v589 = 0u;
  v588 = 0u;
  v587 = 0u;
  v285 = fromCopy[33];
  v286 = [v285 countByEnumeratingWithState:&v587 objects:v848 count:16];
  if (v286)
  {
    v287 = v286;
    v288 = *v588;
    do
    {
      v289 = 0;
      do
      {
        if (*v588 != v288)
        {
          objc_enumerationMutation(v285);
        }

        [(PowerlogMetricLog *)self addKCellularLteDlSccStateHist:*(*(&v587 + 1) + 8 * v289++)];
      }

      while (v287 != v289);
      v287 = [v285 countByEnumeratingWithState:&v587 objects:v848 count:16];
    }

    while (v287);
  }

  v586 = 0u;
  v585 = 0u;
  v584 = 0u;
  v583 = 0u;
  v290 = fromCopy[48];
  v291 = [v290 countByEnumeratingWithState:&v583 objects:v847 count:16];
  if (v291)
  {
    v292 = v291;
    v293 = *v584;
    do
    {
      v294 = 0;
      do
      {
        if (*v584 != v293)
        {
          objc_enumerationMutation(v290);
        }

        [(PowerlogMetricLog *)self addKCellularLteUlSccStateHist:*(*(&v583 + 1) + 8 * v294++)];
      }

      while (v292 != v294);
      v292 = [v290 countByEnumeratingWithState:&v583 objects:v847 count:16];
    }

    while (v292);
  }

  v582 = 0u;
  v581 = 0u;
  v580 = 0u;
  v579 = 0u;
  v295 = fromCopy[29];
  v296 = [v295 countByEnumeratingWithState:&v579 objects:v846 count:16];
  if (v296)
  {
    v297 = v296;
    v298 = *v580;
    do
    {
      v299 = 0;
      do
      {
        if (*v580 != v298)
        {
          objc_enumerationMutation(v295);
        }

        [(PowerlogMetricLog *)self addKCellularLteAdvancedRxStateHist:*(*(&v579 + 1) + 8 * v299++)];
      }

      while (v297 != v299);
      v297 = [v295 countByEnumeratingWithState:&v579 objects:v846 count:16];
    }

    while (v297);
  }

  v578 = 0u;
  v577 = 0u;
  v576 = 0u;
  v575 = 0u;
  v300 = fromCopy[31];
  v301 = [v300 countByEnumeratingWithState:&v575 objects:v845 count:16];
  if (v301)
  {
    v302 = v301;
    v303 = *v576;
    do
    {
      v304 = 0;
      do
      {
        if (*v576 != v303)
        {
          objc_enumerationMutation(v300);
        }

        [(PowerlogMetricLog *)self addKCellularLteComponentCarrierInfo:*(*(&v575 + 1) + 8 * v304++)];
      }

      while (v302 != v304);
      v302 = [v300 countByEnumeratingWithState:&v575 objects:v845 count:16];
    }

    while (v302);
  }

  v574 = 0u;
  v573 = 0u;
  v572 = 0u;
  v571 = 0u;
  v305 = fromCopy[41];
  v306 = [v305 countByEnumeratingWithState:&v571 objects:v844 count:16];
  if (v306)
  {
    v307 = v306;
    v308 = *v572;
    do
    {
      v309 = 0;
      do
      {
        if (*v572 != v308)
        {
          objc_enumerationMutation(v305);
        }

        [(PowerlogMetricLog *)self addKCellularLteRxTxStateHist:*(*(&v571 + 1) + 8 * v309++)];
      }

      while (v307 != v309);
      v307 = [v305 countByEnumeratingWithState:&v571 objects:v844 count:16];
    }

    while (v307);
  }

  v570 = 0u;
  v569 = 0u;
  v568 = 0u;
  v567 = 0u;
  v310 = fromCopy[46];
  v311 = [v310 countByEnumeratingWithState:&v567 objects:v843 count:16];
  if (v311)
  {
    v312 = v311;
    v313 = *v568;
    do
    {
      v314 = 0;
      do
      {
        if (*v568 != v313)
        {
          objc_enumerationMutation(v310);
        }

        [(PowerlogMetricLog *)self addKCellularLteTotalDlTbsHist:*(*(&v567 + 1) + 8 * v314++)];
      }

      while (v312 != v314);
      v312 = [v310 countByEnumeratingWithState:&v567 objects:v843 count:16];
    }

    while (v312);
  }

  v566 = 0u;
  v565 = 0u;
  v564 = 0u;
  v563 = 0u;
  v315 = fromCopy[32];
  v316 = [v315 countByEnumeratingWithState:&v563 objects:v842 count:16];
  if (v316)
  {
    v317 = v316;
    v318 = *v564;
    do
    {
      v319 = 0;
      do
      {
        if (*v564 != v318)
        {
          objc_enumerationMutation(v315);
        }

        [(PowerlogMetricLog *)self addKCellularLteDlSccStateHistV3:*(*(&v563 + 1) + 8 * v319++)];
      }

      while (v317 != v319);
      v317 = [v315 countByEnumeratingWithState:&v563 objects:v842 count:16];
    }

    while (v317);
  }

  v562 = 0u;
  v561 = 0u;
  v560 = 0u;
  v559 = 0u;
  v320 = fromCopy[40];
  v321 = [v320 countByEnumeratingWithState:&v559 objects:v841 count:16];
  if (v321)
  {
    v322 = v321;
    v323 = *v560;
    do
    {
      v324 = 0;
      do
      {
        if (*v560 != v323)
        {
          objc_enumerationMutation(v320);
        }

        [(PowerlogMetricLog *)self addKCellularLteRxDiversityHist:*(*(&v559 + 1) + 8 * v324++)];
      }

      while (v322 != v324);
      v322 = [v320 countByEnumeratingWithState:&v559 objects:v841 count:16];
    }

    while (v322);
  }

  v558 = 0u;
  v557 = 0u;
  v556 = 0u;
  v555 = 0u;
  v325 = fromCopy[36];
  v326 = [v325 countByEnumeratingWithState:&v555 objects:v840 count:16];
  if (v326)
  {
    v327 = v326;
    v328 = *v556;
    do
    {
      v329 = 0;
      do
      {
        if (*v556 != v328)
        {
          objc_enumerationMutation(v325);
        }

        [(PowerlogMetricLog *)self addKCellularLtePdcchStateHist:*(*(&v555 + 1) + 8 * v329++)];
      }

      while (v327 != v329);
      v327 = [v325 countByEnumeratingWithState:&v555 objects:v840 count:16];
    }

    while (v327);
  }

  v554 = 0u;
  v553 = 0u;
  v552 = 0u;
  v551 = 0u;
  v330 = fromCopy[58];
  v331 = [v330 countByEnumeratingWithState:&v551 objects:v839 count:16];
  if (v331)
  {
    v332 = v331;
    v333 = *v552;
    do
    {
      v334 = 0;
      do
      {
        if (*v552 != v333)
        {
          objc_enumerationMutation(v330);
        }

        [(PowerlogMetricLog *)self addKCellularProtocolStackStateHist:*(*(&v551 + 1) + 8 * v334++)];
      }

      while (v332 != v334);
      v332 = [v330 countByEnumeratingWithState:&v551 objects:v839 count:16];
    }

    while (v332);
  }

  v550 = 0u;
  v549 = 0u;
  v548 = 0u;
  v547 = 0u;
  v335 = fromCopy[18];
  v336 = [v335 countByEnumeratingWithState:&v547 objects:v838 count:16];
  if (v336)
  {
    v337 = v336;
    v338 = *v548;
    do
    {
      v339 = 0;
      do
      {
        if (*v548 != v338)
        {
          objc_enumerationMutation(v335);
        }

        [(PowerlogMetricLog *)self addKCellularCellPlmnSearchCount:*(*(&v547 + 1) + 8 * v339++)];
      }

      while (v337 != v339);
      v337 = [v335 countByEnumeratingWithState:&v547 objects:v838 count:16];
    }

    while (v337);
  }

  v546 = 0u;
  v545 = 0u;
  v544 = 0u;
  v543 = 0u;
  v340 = fromCopy[19];
  v341 = [v340 countByEnumeratingWithState:&v543 objects:v837 count:16];
  if (v341)
  {
    v342 = v341;
    v343 = *v544;
    do
    {
      v344 = 0;
      do
      {
        if (*v544 != v343)
        {
          objc_enumerationMutation(v340);
        }

        [(PowerlogMetricLog *)self addKCellularCellPlmnSearchHist:*(*(&v543 + 1) + 8 * v344++)];
      }

      while (v342 != v344);
      v342 = [v340 countByEnumeratingWithState:&v543 objects:v837 count:16];
    }

    while (v342);
  }

  v542 = 0u;
  v541 = 0u;
  v540 = 0u;
  v539 = 0u;
  v345 = fromCopy[56];
  v346 = [v345 countByEnumeratingWithState:&v539 objects:v836 count:16];
  if (v346)
  {
    v347 = v346;
    v348 = *v540;
    do
    {
      v349 = 0;
      do
      {
        if (*v540 != v348)
        {
          objc_enumerationMutation(v345);
        }

        [(PowerlogMetricLog *)self addKCellularProtocolStackPowerState:*(*(&v539 + 1) + 8 * v349++)];
      }

      while (v347 != v349);
      v347 = [v345 countByEnumeratingWithState:&v539 objects:v836 count:16];
    }

    while (v347);
  }

  v538 = 0u;
  v537 = 0u;
  v536 = 0u;
  v535 = 0u;
  v350 = fromCopy[20];
  v351 = [v350 countByEnumeratingWithState:&v535 objects:v835 count:16];
  if (v351)
  {
    v352 = v351;
    v353 = *v536;
    do
    {
      v354 = 0;
      do
      {
        if (*v536 != v353)
        {
          objc_enumerationMutation(v350);
        }

        [(PowerlogMetricLog *)self addKCellularDownlinkIpPacketFilterStatus:*(*(&v535 + 1) + 8 * v354++)];
      }

      while (v352 != v354);
      v352 = [v350 countByEnumeratingWithState:&v535 objects:v835 count:16];
    }

    while (v352);
  }

  v534 = 0u;
  v533 = 0u;
  v532 = 0u;
  v531 = 0u;
  v355 = fromCopy[61];
  v356 = [v355 countByEnumeratingWithState:&v531 objects:v834 count:16];
  if (v356)
  {
    v357 = v356;
    v358 = *v532;
    do
    {
      v359 = 0;
      do
      {
        if (*v532 != v358)
        {
          objc_enumerationMutation(v355);
        }

        [(PowerlogMetricLog *)self addKCellularServingCellRfBandHist:*(*(&v531 + 1) + 8 * v359++)];
      }

      while (v357 != v359);
      v357 = [v355 countByEnumeratingWithState:&v531 objects:v834 count:16];
    }

    while (v357);
  }

  v530 = 0u;
  v529 = 0u;
  v528 = 0u;
  v527 = 0u;
  v360 = fromCopy[57];
  v361 = [v360 countByEnumeratingWithState:&v527 objects:v833 count:16];
  if (v361)
  {
    v362 = v361;
    v363 = *v528;
    do
    {
      v364 = 0;
      do
      {
        if (*v528 != v363)
        {
          objc_enumerationMutation(v360);
        }

        [(PowerlogMetricLog *)self addKCellularProtocolStackStateHist2:*(*(&v527 + 1) + 8 * v364++)];
      }

      while (v362 != v364);
      v362 = [v360 countByEnumeratingWithState:&v527 objects:v833 count:16];
    }

    while (v362);
  }

  v526 = 0u;
  v525 = 0u;
  v524 = 0u;
  v523 = 0u;
  v365 = fromCopy[59];
  v366 = [v365 countByEnumeratingWithState:&v523 objects:v832 count:16];
  if (v366)
  {
    v367 = v366;
    v368 = *v524;
    do
    {
      v369 = 0;
      do
      {
        if (*v524 != v368)
        {
          objc_enumerationMutation(v365);
        }

        [(PowerlogMetricLog *)self addKCellularProtocolStackState:*(*(&v523 + 1) + 8 * v369++)];
      }

      while (v367 != v369);
      v367 = [v365 countByEnumeratingWithState:&v523 objects:v832 count:16];
    }

    while (v367);
  }

  v522 = 0u;
  v521 = 0u;
  v520 = 0u;
  v519 = 0u;
  v370 = fromCopy[4];
  v371 = [v370 countByEnumeratingWithState:&v519 objects:v831 count:16];
  if (v371)
  {
    v372 = v371;
    v373 = *v520;
    do
    {
      v374 = 0;
      do
      {
        if (*v520 != v373)
        {
          objc_enumerationMutation(v370);
        }

        [(PowerlogMetricLog *)self addKCellularCdma1XRxDiversityHist:*(*(&v519 + 1) + 8 * v374++)];
      }

      while (v372 != v374);
      v372 = [v370 countByEnumeratingWithState:&v519 objects:v831 count:16];
    }

    while (v372);
  }

  v517 = 0u;
  v518 = 0u;
  v515 = 0u;
  v516 = 0u;
  v375 = fromCopy[6];
  v376 = [v375 countByEnumeratingWithState:&v515 objects:v830 count:16];
  if (v376)
  {
    v377 = v376;
    v378 = *v516;
    do
    {
      v379 = 0;
      do
      {
        if (*v516 != v378)
        {
          objc_enumerationMutation(v375);
        }

        [(PowerlogMetricLog *)self addKCellularCdma1XServingCellRx0RssiHist:*(*(&v515 + 1) + 8 * v379++)];
      }

      while (v377 != v379);
      v377 = [v375 countByEnumeratingWithState:&v515 objects:v830 count:16];
    }

    while (v377);
  }

  v513 = 0u;
  v514 = 0u;
  v511 = 0u;
  v512 = 0u;
  v380 = fromCopy[8];
  v381 = [v380 countByEnumeratingWithState:&v511 objects:v829 count:16];
  if (v381)
  {
    v382 = v381;
    v383 = *v512;
    do
    {
      v384 = 0;
      do
      {
        if (*v512 != v383)
        {
          objc_enumerationMutation(v380);
        }

        [(PowerlogMetricLog *)self addKCellularCdma1XServingCellRx1RssiHist:*(*(&v511 + 1) + 8 * v384++)];
      }

      while (v382 != v384);
      v382 = [v380 countByEnumeratingWithState:&v511 objects:v829 count:16];
    }

    while (v382);
  }

  v509 = 0u;
  v510 = 0u;
  v507 = 0u;
  v508 = 0u;
  v385 = fromCopy[5];
  v386 = [v385 countByEnumeratingWithState:&v507 objects:v828 count:16];
  if (v386)
  {
    v387 = v386;
    v388 = *v508;
    do
    {
      v389 = 0;
      do
      {
        if (*v508 != v388)
        {
          objc_enumerationMutation(v385);
        }

        [(PowerlogMetricLog *)self addKCellularCdma1XServingCellRx0EcIoHist:*(*(&v507 + 1) + 8 * v389++)];
      }

      while (v387 != v389);
      v387 = [v385 countByEnumeratingWithState:&v507 objects:v828 count:16];
    }

    while (v387);
  }

  v505 = 0u;
  v506 = 0u;
  v503 = 0u;
  v504 = 0u;
  v390 = fromCopy[7];
  v391 = [v390 countByEnumeratingWithState:&v503 objects:v827 count:16];
  if (v391)
  {
    v392 = v391;
    v393 = *v504;
    do
    {
      v394 = 0;
      do
      {
        if (*v504 != v393)
        {
          objc_enumerationMutation(v390);
        }

        [(PowerlogMetricLog *)self addKCellularCdma1XServingCellRx1EcIoHist:*(*(&v503 + 1) + 8 * v394++)];
      }

      while (v392 != v394);
      v392 = [v390 countByEnumeratingWithState:&v503 objects:v827 count:16];
    }

    while (v392);
  }

  v501 = 0u;
  v502 = 0u;
  v499 = 0u;
  v500 = 0u;
  v395 = fromCopy[9];
  v396 = [v395 countByEnumeratingWithState:&v499 objects:v826 count:16];
  if (v396)
  {
    v397 = v396;
    v398 = *v500;
    do
    {
      v399 = 0;
      do
      {
        if (*v500 != v398)
        {
          objc_enumerationMutation(v395);
        }

        [(PowerlogMetricLog *)self addKCellularCdma1XTxPowerHist:*(*(&v499 + 1) + 8 * v399++)];
      }

      while (v397 != v399);
      v397 = [v395 countByEnumeratingWithState:&v499 objects:v826 count:16];
    }

    while (v397);
  }

  v497 = 0u;
  v498 = 0u;
  v495 = 0u;
  v496 = 0u;
  v400 = fromCopy[2];
  v401 = [v400 countByEnumeratingWithState:&v495 objects:v825 count:16];
  if (v401)
  {
    v402 = v401;
    v403 = *v496;
    do
    {
      v404 = 0;
      do
      {
        if (*v496 != v403)
        {
          objc_enumerationMutation(v400);
        }

        [(PowerlogMetricLog *)self addKCellularCdma1XProtocolStackStateHist:*(*(&v495 + 1) + 8 * v404++)];
      }

      while (v402 != v404);
      v402 = [v400 countByEnumeratingWithState:&v495 objects:v825 count:16];
    }

    while (v402);
  }

  v493 = 0u;
  v494 = 0u;
  v491 = 0u;
  v492 = 0u;
  v405 = fromCopy[1];
  v406 = [v405 countByEnumeratingWithState:&v491 objects:v824 count:16];
  if (v406)
  {
    v407 = v406;
    v408 = *v492;
    do
    {
      v409 = 0;
      do
      {
        if (*v492 != v408)
        {
          objc_enumerationMutation(v405);
        }

        [(PowerlogMetricLog *)self addKCellularCdma1XConnectionHist:*(*(&v491 + 1) + 8 * v409++)];
      }

      while (v407 != v409);
      v407 = [v405 countByEnumeratingWithState:&v491 objects:v824 count:16];
    }

    while (v407);
  }

  v489 = 0u;
  v490 = 0u;
  v487 = 0u;
  v488 = 0u;
  v410 = fromCopy[3];
  v411 = [v410 countByEnumeratingWithState:&v487 objects:v823 count:16];
  if (v411)
  {
    v412 = v411;
    v413 = *v488;
    do
    {
      v414 = 0;
      do
      {
        if (*v488 != v413)
        {
          objc_enumerationMutation(v410);
        }

        [(PowerlogMetricLog *)self addKCellularCdma1XRrState:*(*(&v487 + 1) + 8 * v414++)];
      }

      while (v412 != v414);
      v412 = [v410 countByEnumeratingWithState:&v487 objects:v823 count:16];
    }

    while (v412);
  }

  v485 = 0u;
  v486 = 0u;
  v483 = 0u;
  v484 = 0u;
  v415 = fromCopy[12];
  v416 = [v415 countByEnumeratingWithState:&v483 objects:v822 count:16];
  if (v416)
  {
    v417 = v416;
    v418 = *v484;
    do
    {
      v419 = 0;
      do
      {
        if (*v484 != v418)
        {
          objc_enumerationMutation(v415);
        }

        [(PowerlogMetricLog *)self addKCellularCdmaEvdoRxDiversityHist:*(*(&v483 + 1) + 8 * v419++)];
      }

      while (v417 != v419);
      v417 = [v415 countByEnumeratingWithState:&v483 objects:v822 count:16];
    }

    while (v417);
  }

  v481 = 0u;
  v482 = 0u;
  v479 = 0u;
  v480 = 0u;
  v420 = fromCopy[14];
  v421 = [v420 countByEnumeratingWithState:&v479 objects:v821 count:16];
  if (v421)
  {
    v422 = v421;
    v423 = *v480;
    do
    {
      v424 = 0;
      do
      {
        if (*v480 != v423)
        {
          objc_enumerationMutation(v420);
        }

        [(PowerlogMetricLog *)self addKCellularCdmaEvdoServingCellRx0RssiHist:*(*(&v479 + 1) + 8 * v424++)];
      }

      while (v422 != v424);
      v422 = [v420 countByEnumeratingWithState:&v479 objects:v821 count:16];
    }

    while (v422);
  }

  v477 = 0u;
  v478 = 0u;
  v475 = 0u;
  v476 = 0u;
  v425 = fromCopy[16];
  v426 = [v425 countByEnumeratingWithState:&v475 objects:v820 count:16];
  if (v426)
  {
    v427 = v426;
    v428 = *v476;
    do
    {
      v429 = 0;
      do
      {
        if (*v476 != v428)
        {
          objc_enumerationMutation(v425);
        }

        [(PowerlogMetricLog *)self addKCellularCdmaEvdoServingCellRx1RssiHist:*(*(&v475 + 1) + 8 * v429++)];
      }

      while (v427 != v429);
      v427 = [v425 countByEnumeratingWithState:&v475 objects:v820 count:16];
    }

    while (v427);
  }

  v473 = 0u;
  v474 = 0u;
  v471 = 0u;
  v472 = 0u;
  v430 = fromCopy[13];
  v431 = [v430 countByEnumeratingWithState:&v471 objects:v819 count:16];
  if (v431)
  {
    v432 = v431;
    v433 = *v472;
    do
    {
      v434 = 0;
      do
      {
        if (*v472 != v433)
        {
          objc_enumerationMutation(v430);
        }

        [(PowerlogMetricLog *)self addKCellularCdmaEvdoServingCellRx0EcIoHist:*(*(&v471 + 1) + 8 * v434++)];
      }

      while (v432 != v434);
      v432 = [v430 countByEnumeratingWithState:&v471 objects:v819 count:16];
    }

    while (v432);
  }

  v469 = 0u;
  v470 = 0u;
  v467 = 0u;
  v468 = 0u;
  v435 = fromCopy[15];
  v436 = [v435 countByEnumeratingWithState:&v467 objects:v818 count:16];
  if (v436)
  {
    v437 = v436;
    v438 = *v468;
    do
    {
      v439 = 0;
      do
      {
        if (*v468 != v438)
        {
          objc_enumerationMutation(v435);
        }

        [(PowerlogMetricLog *)self addKCellularCdmaEvdoServingCellRx1EcIoHist:*(*(&v467 + 1) + 8 * v439++)];
      }

      while (v437 != v439);
      v437 = [v435 countByEnumeratingWithState:&v467 objects:v818 count:16];
    }

    while (v437);
  }

  v465 = 0u;
  v466 = 0u;
  v463 = 0u;
  v464 = 0u;
  v440 = fromCopy[17];
  v441 = [v440 countByEnumeratingWithState:&v463 objects:v817 count:16];
  if (v441)
  {
    v442 = v441;
    v443 = *v464;
    do
    {
      v444 = 0;
      do
      {
        if (*v464 != v443)
        {
          objc_enumerationMutation(v440);
        }

        [(PowerlogMetricLog *)self addKCellularCdmaEvdoTxPowerHist:*(*(&v463 + 1) + 8 * v444++)];
      }

      while (v442 != v444);
      v442 = [v440 countByEnumeratingWithState:&v463 objects:v817 count:16];
    }

    while (v442);
  }

  v461 = 0u;
  v462 = 0u;
  v459 = 0u;
  v460 = 0u;
  v445 = fromCopy[10];
  v446 = [v445 countByEnumeratingWithState:&v459 objects:v816 count:16];
  if (v446)
  {
    v447 = v446;
    v448 = *v460;
    do
    {
      v449 = 0;
      do
      {
        if (*v460 != v448)
        {
          objc_enumerationMutation(v445);
        }

        [(PowerlogMetricLog *)self addKCellularCdmaEvdoProtocolStackStateHist:*(*(&v459 + 1) + 8 * v449++)];
      }

      while (v447 != v449);
      v447 = [v445 countByEnumeratingWithState:&v459 objects:v816 count:16];
    }

    while (v447);
  }

  v457 = 0u;
  v458 = 0u;
  v455 = 0u;
  v456 = 0u;
  v450 = fromCopy[11];
  v451 = [v450 countByEnumeratingWithState:&v455 objects:v815 count:16];
  if (v451)
  {
    v452 = v451;
    v453 = *v456;
    do
    {
      v454 = 0;
      do
      {
        if (*v456 != v453)
        {
          objc_enumerationMutation(v450);
        }

        [(PowerlogMetricLog *)self addKCellularCdmaEvdoRrState:*(*(&v455 + 1) + 8 * v454++), v455];
      }

      while (v452 != v454);
      v452 = [v450 countByEnumeratingWithState:&v455 objects:v815 count:16];
    }

    while (v452);
  }
}

@end