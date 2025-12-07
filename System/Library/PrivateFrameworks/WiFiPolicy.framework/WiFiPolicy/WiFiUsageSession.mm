@interface WiFiUsageSession
+ (BOOL)isDriverUnavailabilityReasonVoluntary:(int)voluntary subReason:(int)reason orReasonString:(id)string;
+ (id)disconnectReasonString:(unint64_t)string;
+ (id)joinReasonString:(unint64_t)string;
- ($06992ED503081CE345EDB9EEA121564E)bandUsageDuration;
- ($13477CEFC6EEA4B326536BBEC35DF1AE)roamNeighsLrgstCurrentToBestRssiByBandTransition;
- ($13477CEFC6EEA4B326536BBEC35DF1AE)roamNeighsLrgstCurrentToNextBestRssiByBandTransition;
- ($13477CEFC6EEA4B326536BBEC35DF1AE)roamNeighsSmllstCurrentToBestRssiByBandTransition;
- ($13477CEFC6EEA4B326536BBEC35DF1AE)roamNeighsSmllstCurrentToNextBestRssiByBandTransition;
- ($FEE1510A43A03BFC9F45CB2D5A0A197D)strongestRSSIByBand;
- ($FEE1510A43A03BFC9F45CB2D5A0A197D)strongestRSSICountByBand;
- (BOOL)canSubmitToCA;
- (BOOL)incrementCountWithPrefix:(id)prefix name:(id)name;
- (BOOL)infraIsPartOfSplitSSID;
- (WiFiUsageSession)initWithSessionType:(unint64_t)type andInterfaceName:(id)name andCapabilities:(id)capabilities;
- (id)copyWithZone:(_NSZone *)zone;
- (id)countWithPrefix:(id)prefix name:(id)name;
- (id)description;
- (id)eventDictionary:(BOOL)dictionary;
- (id)eventDictionaryByBand:(int)band isFirst:(BOOL)first;
- (id)redactedDescription;
- (id)sessionName;
- (id)sessionSummary:(BOOL)summary;
- (int64_t)averageCca;
- (int64_t)averageRssi;
- (int64_t)averageSnr;
- (int64_t)lastRssi;
- (os_state_data_s)_generateState;
- (unint64_t)faultReasonCount:(unint64_t)count;
- (unint64_t)totalRxFrames;
- (unint64_t)totalTxFrames;
- (void)applicationStateDidChange:(id)change withAttributes:(id)attributes;
- (void)awdlStateDidChange:(BOOL)change inMode:(int64_t)mode;
- (void)bluetoothStateDidChange:(BOOL)change connectedDeviceCount:(unint64_t)count inA2dp:(BOOL)a2dp inSco:(BOOL)sco inUniAoS:(BOOL)s inBiAoS:(BOOL)aoS btAudioBand:(BOOL)band;
- (void)callStateDidChange:(BOOL)change;
- (void)cellularDataStatusDidChange:(id)change inAirplaneMode:(BOOL)mode;
- (void)cellularFallbackStateDidChange:(BOOL)change;
- (void)cellularOutrankingStateDidChange:(BOOL)change;
- (void)chargingStateDidChange:(BOOL)change;
- (void)companionStateDidChange:(BOOL)change;
- (void)controlCenterStateDidChange:(BOOL)change withKnownLocation:(BOOL)location;
- (void)dealloc;
- (void)displayStateDidChange:(BOOL)change;
- (void)faultEventDetected:(unint64_t)detected event:(id)event;
- (void)interfaceRankingDidChange:(BOOL)change;
- (void)ipConfigurationDidChangeWithMethod:(BOOL)method dhcpLeaseDuration:(double)duration hasRoutableIpV4:(BOOL)v4 hasRoutableIpV6:(BOOL)v6;
- (void)joinStateDidChange:(id)change withReason:(unint64_t)reason lastDisconnectReason:(int64_t)disconnectReason lastJoinFailure:(int64_t)failure andNetworkDetails:(id)details;
- (void)linkQualityDidChange:(id)change;
- (void)linkStateDidChange:(BOOL)change isInvoluntary:(BOOL)involuntary linkChangeReason:(int64_t)reason linkChangeSubreason:(int64_t)subreason withNetworkDetails:(id)details;
- (void)lockStateDidChange:(BOOL)change;
- (void)mediaStateDidChange:(BOOL)change;
- (void)motionStateDidChange:(id)change;
- (void)poorLinkSessionStats:(id)stats;
- (void)powerBudgetDidChange:(int64_t)change andThermalIndex:(int64_t)index;
- (void)powerStateDidChange:(BOOL)change;
- (void)processDriverAvailability:(id)availability available:(BOOL)available version:(unint64_t)version flags:(unint64_t)flags eventID:(unint64_t)d reason:(int64_t)reason subReason:(int64_t)subReason minorReason:(int64_t)self0 reasonString:(id)self1;
- (void)processIPv4Changes:(id)changes;
- (void)processIPv6Changes:(id)changes;
- (void)roamCandidatesStatsDidUpdate:(id *)update;
- (void)roamingARConfigurationDidChange:(id *)change;
- (void)roamingStateDidChange:(BOOL)change reason:(unint64_t)reason andStatus:(unint64_t)status andLatency:(unint64_t)latency andRoamData:(id)data andPingPongStats:(id)stats;
- (void)scanningStateDidChange:(BOOL)change client:(unint64_t)client neighborBSS:(id)s otherBSS:(id)sS;
- (void)sessionDidEnd;
- (void)sessionDidStart;
- (void)setAwdlSequence:(id)sequence infraScore:(unint64_t)score p2pScore:(double)p2pScore;
- (void)setBandUsageDuration:(id *)duration;
- (void)setCompletionHandler:(id)handler withContext:(id)context onQueue:(id)queue;
- (void)setLastDisconnectReason:(int64_t)reason;
- (void)setRealtimeCoexStarted:(BOOL)started type:(unint64_t)type reasons:(id)reasons;
- (void)setRoamNeighsLrgstCurrentToBestRssiByBandTransition:(id *)transition;
- (void)setRoamNeighsLrgstCurrentToNextBestRssiByBandTransition:(id *)transition;
- (void)setRoamNeighsSmllstCurrentToBestRssiByBandTransition:(id *)transition;
- (void)setRoamNeighsSmllstCurrentToNextBestRssiByBandTransition:(id *)transition;
- (void)setSSIDTransitionCandidates:(id)candidates SSIDTransitionPotentialCandidates:(id)potentialCandidates potentialCandidatesMinusCandidates:(id)minusCandidates roamCandidates:(unint64_t)roamCandidates uniqueChannels:(unint64_t)channels uniqueBands:(unint64_t)bands;
- (void)setStrongestRSSIByBand:(id *)band;
- (void)setStrongestRSSICountByBand:(id *)band;
- (void)softApStateDidChange:(BOOL)change requester:(id)requester status:(id)status changeReason:(id)reason channelNumber:(unint64_t)number countryCode:(unint64_t)code isHidden:(BOOL)hidden isInfraConnected:(BOOL)self0 isAwdlUp:(BOOL)self1 lowPowerModeDuration:(double)self2 compatibilityMode:(BOOL)self3 requestToUpLatency:(double)self4 idleTimeBeforeTeardownSec:(double)self5 idleTimeAfterLastClientDisconnectedSec:(double)self6;
- (void)summarizeAndReset6eModeStats:(id)stats;
- (void)summarizeSession;
- (void)systemWakeStateDidChange:(BOOL)change wokenByWiFi:(BOOL)fi;
- (void)tallyAssociatedDuration:(id)duration;
- (void)tallyInfraScoreDuration:(unint64_t)duration until:(id)until;
- (void)tallyP2PScoreDuration:(double)duration until:(id)until;
- (void)tdLogic_alertedBy:(int)by;
- (void)tdLogic_end:(int)logic_end evalTime:(double)time rssi:(int64_t)rssi roamTime:(double)roamTime;
- (void)trackEventLatencies;
- (void)triggerDisconnectAlerted:(BOOL)alerted confirmed:(BOOL)confirmed executed:(BOOL)executed;
- (void)update6eModeStats:(id)stats;
- (void)updateApProfile:(id)profile;
- (void)updateAssociatedNetworkDetails:(id)details;
- (void)updateBandUsageFor:(int)for With:(id)with;
- (void)updateLinkRecoveryDisabled:(BOOL)disabled;
- (void)updateRssiDiffStats:(id *)stats For:(id)for;
- (void)updateScanForwardStats:(id)stats;
- (void)updateUsbInsertedDuration:(id)duration;
- (void)updateUsbStatus:(BOOL)status currentDevices:(id)devices;
- (void)updateWithCompatibilityMode:(unsigned __int8)mode;
- (void)updateWithRoamingSuppression:(unsigned __int8)suppression;
- (void)updateWowState:(BOOL)state lpasState:(BOOL)lpasState lowPowerState:(BOOL)powerState batterySaverState:(BOOL)saverState;
@end

@implementation WiFiUsageSession

- (void)sessionDidStart
{
  v17 = *MEMORY[0x277D85DE8];
  if ([(WiFiUsageSession *)self isSessionActive]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315394;
    v14 = "[WiFiUsageSession sessionDidStart]";
    v15 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s on %@ -- Warning! active session is being RE-started", &v13, 0x16u);
  }

  date = [MEMORY[0x277CBEAA8] date];
  [(WiFiUsageSession *)self setDeferCompletion:0];
  [(WiFiUsageSession *)self setSessionDuration:0.0];
  [(WiFiUsageSession *)self setSystemAwakeDuration:0.0];
  [(WiFiUsageSession *)self setMediaPlaybackDuration:0.0];
  [(WiFiUsageSession *)self setChargingDuration:0.0];
  [(WiFiUsageSession *)self setInCallDuration:0.0];
  [(WiFiUsageSession *)self setInVehicleDuration:0.0];
  [(WiFiUsageSession *)self setInMotionDuration:0.0];
  [(WiFiUsageSession *)self setInA2dpDuration:0.0];
  [(WiFiUsageSession *)self setInScoDuration:0.0];
  [(WiFiUsageSession *)self setInHidPresentDuration:0.0];
  [(WiFiUsageSession *)self setInAwdlDuration:0.0];
  [(WiFiUsageSession *)self setInRoamDuration:0.0];
  [(WiFiUsageSession *)self setInScanDuration:0.0];
  [(WiFiUsageSession *)self setPoweredOnDuration:0.0];
  [(WiFiUsageSession *)self setAssociatedDuration:0.0];
  [(WiFiUsageSession *)self setAssociatedSleepDuration:0.0];
  [(WiFiUsageSession *)self setInCellularFallbackDuration:0.0];
  [(WiFiUsageSession *)self setInCellularOutrankingDuration:0.0];
  [(WiFiUsageSession *)self setInSoftApDuration:0.0];
  *&self->_bandUsageDuration.valueByBand[2] = 0u;
  *self->_bandUsageDuration.valueByBand = 0u;
  [(WiFiUsageSession *)self setInControlCenterAutoJoinDisabledDuration:0.0];
  [(WiFiUsageSession *)self setCompanionConnectedDuration:0.0];
  [(WiFiUsageSession *)self setInWowStateDuration:0.0];
  [(WiFiUsageSession *)self setInLpasStateDuration:0.0];
  [(WiFiUsageSession *)self setInLowPowerStateDuration:0.0];
  [(WiFiUsageSession *)self setInBatterySaverStateDuration:0.0];
  [(WiFiUsageSession *)self setLinkRecoveryDisabledDuration:0.0];
  [(WiFiUsageSession *)self setSleepPowerStatsTotalDuration:0.0];
  [(WiFiUsageSession *)self setSleepPowerStatsUnassociatedDuration:0.0];
  [(WiFiUsageSession *)self setSleepPowerStatsAssociatedDuration:0.0];
  [(WiFiUsageSession *)self setSleepPowerStatsRoamingDuration:0.0];
  [(WiFiUsageSession *)self setMediaPlaybackEventCount:0];
  [(WiFiUsageSession *)self setChargingEventCount:0];
  [(WiFiUsageSession *)self setInCallEventCount:0];
  [(WiFiUsageSession *)self setInVehicleEventCount:0];
  [(WiFiUsageSession *)self setInMotionEventCount:0];
  [(WiFiUsageSession *)self setInA2dpEventCount:0];
  [(WiFiUsageSession *)self setInScoEventCount:0];
  [(WiFiUsageSession *)self setInHidPresentCount:0];
  [(WiFiUsageSession *)self setInAwdlEventCount:0];
  [(WiFiUsageSession *)self setInRoamEventCount:0];
  [(WiFiUsageSession *)self setInScanEventCount:0];
  [(WiFiUsageSession *)self setRangingEventCount:0];
  [(WiFiUsageSession *)self setCompanionConnectionStateChangedCount:0];
  [(WiFiUsageSession *)self setLinkRecoveryDisabledCount:0];
  [(WiFiUsageSession *)self setWowStateChangedCount:0];
  [(WiFiUsageSession *)self setLpasStateChangedCount:0];
  [(WiFiUsageSession *)self setLowPowerStateChangedCount:0];
  [(WiFiUsageSession *)self setBatterySaverStateChangedCount:0];
  [(WiFiUsageSession *)self setSystemWakeStateChangedCount:0];
  [(WiFiUsageSession *)self setSystemWokenByWiFiCount:0];
  [(WiFiUsageSession *)self setLockStateChangedCount:0];
  [(WiFiUsageSession *)self setDisplayStateChangedCount:0];
  [(WiFiUsageSession *)self setJoinStateChangedCount:0];
  [(WiFiUsageSession *)self setNetworkChangedCount:0];
  [(WiFiUsageSession *)self setLinkStateChangedCount:0];
  [(WiFiUsageSession *)self setRapidLinkTransitionCount:0];
  [(WiFiUsageSession *)self setPrimaryInterfaceStateChangeCount:0];
  [(WiFiUsageSession *)self setApplicationStateChangedCount:0];
  [(WiFiUsageSession *)self setPowerStateChangedCount:0];
  [(WiFiUsageSession *)self setPowerToggleEventCount:0];
  [(WiFiUsageSession *)self setControlCenterStateChangedCount:0];
  [(WiFiUsageSession *)self setControlCenterToggleEventCount:0];
  [(WiFiUsageSession *)self setCellularFallbackStateChangedCount:0];
  [(WiFiUsageSession *)self setCellularOutrankingStateChangedCount:0];
  [(WiFiUsageSession *)self setSmartCoverStateChangedCount:0];
  [(WiFiUsageSession *)self setNeighborBssCount:0];
  [(WiFiUsageSession *)self setOtherBssCount:0];
  v4 = [WiFiUsageInterfaceStats statsForInterfaceName:self->_interfaceName];
  [(WiFiUsageSession *)self setIfStatsAtStart:v4];

  v5 = [WiFiUsageInterfaceStats statsForInterfaceName:self->_secondaryInterfaceName];
  [(WiFiUsageSession *)self setSecondaryIfStatsAtStart:v5];

  [(WiFiUsageSession *)self setActiveApplications:0];
  [(WiFiUsageSession *)self setTriggerDisconnectAlertedCount:0];
  [(WiFiUsageSession *)self setTriggerDisconnectConfirmedCount:0];
  [(WiFiUsageSession *)self setTriggerDisconnectExecutedCount:0];
  [(WiFiUsageSession *)self setIsInTDEval:0];
  self->_perClientScanCount[26] = 0;
  *&self->_perClientScanCount[24] = 0u;
  *&self->_perClientScanCount[22] = 0u;
  *&self->_perClientScanCount[20] = 0u;
  *&self->_perClientScanCount[18] = 0u;
  *&self->_perClientScanCount[16] = 0u;
  *&self->_perClientScanCount[14] = 0u;
  *&self->_perClientScanCount[12] = 0u;
  *&self->_perClientScanCount[10] = 0u;
  *&self->_perClientScanCount[8] = 0u;
  *&self->_perClientScanCount[6] = 0u;
  *&self->_perClientScanCount[4] = 0u;
  *&self->_perClientScanCount[2] = 0u;
  *self->_perClientScanCount = 0u;
  *self->_faultReasonCount = 0u;
  *&self->_faultReasonCount[2] = 0u;
  *&self->_faultReasonCount[4] = 0u;
  *&self->_faultReasonCount[6] = 0u;
  *&self->_faultReasonCount[8] = 0u;
  *&self->_faultReasonCount[10] = 0u;
  *&self->_faultReasonCount[12] = 0u;
  *&self->_faultReasonCount[14] = 0u;
  *&self->_faultReasonCount[16] = 0u;
  *&self->_faultReasonCount[18] = 0u;
  *&self->_faultReasonCount[20] = 0u;
  *&self->_faultReasonCount[22] = 0u;
  *&self->_faultReasonCount[24] = 0u;
  *&self->_faultReasonCount[26] = 0u;
  *&self->_faultReasonCount[28] = 0u;
  *&self->_faultReasonCount[30] = 0u;
  *&self->_faultReasonCount[32] = 0u;
  *&self->_faultReasonCount[34] = 0u;
  self->_joinReasonCount[14] = 0;
  *&self->_joinReasonCount[10] = 0u;
  *&self->_joinReasonCount[12] = 0u;
  *&self->_joinReasonCount[6] = 0u;
  *&self->_joinReasonCount[8] = 0u;
  *&self->_joinReasonCount[2] = 0u;
  *&self->_joinReasonCount[4] = 0u;
  *&self->_faultReasonCount[36] = 0u;
  *self->_joinReasonCount = 0u;
  disconnectReasonMap = self->_disconnectReasonMap;
  if (disconnectReasonMap)
  {
    [(NSMutableDictionary *)disconnectReasonMap removeAllObjects];
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v8 = self->_disconnectReasonMap;
    self->_disconnectReasonMap = v7;
  }

  [(WiFiUsageSession *)self setIsSessionActive:1];
  [(WiFiUsageSession *)self setLastPowerBudgetChangedTime:date];
  [(WiFiUsageSession *)self setPowerBudgetMaxDuration:0.0];
  [(WiFiUsageSession *)self setPowerBudget90Duration:0.0];
  [(WiFiUsageSession *)self setPowerBudget80Duration:0.0];
  [(WiFiUsageSession *)self setPowerBudget70Duration:0.0];
  [(WiFiUsageSession *)self setPowerBudget60Duration:0.0];
  [(WiFiUsageSession *)self setPowerBudget50Duration:0.0];
  [(WiFiUsageSession *)self setPowerBudget40Duration:0.0];
  [(WiFiUsageSession *)self setPowerBudget30Duration:0.0];
  [(WiFiUsageSession *)self setPowerBudget20Duration:0.0];
  [(WiFiUsageSession *)self setPowerBudget10Duration:0.0];
  [(WiFiUsageSession *)self setPowerBudgetMinDuration:0.0];
  [(WiFiUsageSession *)self setThermalIndexMaxDuration:0.0];
  [(WiFiUsageSession *)self setThermalIndex90Duration:0.0];
  [(WiFiUsageSession *)self setThermalIndex80Duration:0.0];
  [(WiFiUsageSession *)self setThermalIndex70Duration:0.0];
  [(WiFiUsageSession *)self setThermalIndex60Duration:0.0];
  [(WiFiUsageSession *)self setThermalIndex50Duration:0.0];
  [(WiFiUsageSession *)self setThermalIndex40Duration:0.0];
  [(WiFiUsageSession *)self setThermalIndex30Duration:0.0];
  [(WiFiUsageSession *)self setThermalIndex20Duration:0.0];
  [(WiFiUsageSession *)self setThermalIndex10Duration:0.0];
  [(WiFiUsageSession *)self setThermalIndexMinDuration:0.0];
  [(WiFiUsageSession *)self setRoamReasonInitialAssociationCount:0];
  [(WiFiUsageSession *)self setRoamReasonLowRssiCount:0];
  [(WiFiUsageSession *)self setRoamReasonDeauthDisassocCount:0];
  [(WiFiUsageSession *)self setRoamReasonBeaconLostCount:0];
  [(WiFiUsageSession *)self setRoamReasonSteeredByApCount:0];
  [(WiFiUsageSession *)self setRoamReasonSteeredByBtmCount:0];
  [(WiFiUsageSession *)self setRoamReasonSteeredByCsaCount:0];
  [(WiFiUsageSession *)self setRoamReasonReassocRequestedCount:0];
  [(WiFiUsageSession *)self setRoamReasonHostTriggeredCount:0];
  [(WiFiUsageSession *)self setRoamReasonBetterCandidateCount:0];
  [(WiFiUsageSession *)self setRoamReasonBetterConditionCount:0];
  [(WiFiUsageSession *)self setRoamReasonMiscCount:0];
  [(WiFiUsageSession *)self setRoamStatusSucceededCount:0];
  [(WiFiUsageSession *)self setRoamStatusFailedCount:0];
  [(WiFiUsageSession *)self setRoamStatusNoCandidateCount:0];
  [(WiFiUsageSession *)self setRoamStatusNoQualifiedCandidateCount:0];
  [(WiFiUsageSession *)self setRoamStatusFailedNoScan:0];
  [(WiFiUsageSession *)self setRoamIsWNMScoreUsedCount:0];
  [(WiFiUsageSession *)self setRoamPingPongAboveThresholdCount:0];
  [(WiFiUsageSession *)self setRoamPingPongAboveThresholdCount:0];
  [(WiFiUsageSession *)self setRoamPingPongAboveThresholdCountLowRssiOnly:0];
  [(WiFiUsageSession *)self setRoamPingPongLowRssiAndReassocOnly:0];
  [(WiFiUsageSession *)self setRoamPingPongReassocOnly:0];
  [(WiFiUsageSession *)self setRoamsAfterSupprLifted:0];
  [(WiFiUsageSession *)self setIsRoamSuppressionEnabled:0];
  [(WiFiUsageSession *)self setLastRoamSuppressionToggled:0];
  [(WiFiUsageSession *)self setInRoamSuppressionEnabled:0.0];
  [(WiFiUsageSession *)self setInRoamSuppressionEnabledCount:0];
  [(WiFiUsageSession *)self setInRoamSuppressionWaitForRoamStart:0.0];
  [(WiFiUsageSession *)self setInRoamSuppressionWaitForRoamEnd:0.0];
  [(WiFiUsageSession *)self setMinCandidatesCount:0];
  [(WiFiUsageSession *)self setMaxCandidatesCount:0];
  [(WiFiUsageSession *)self setCurrentRSSIStrongestCount:0];
  [(NSMutableDictionary *)self->_roamNeighborsByBand removeAllObjects];
  [(NSMutableDictionary *)self->_roamCandidatesPerBandWhenSuccessful removeAllObjects];
  [(NSMutableDictionary *)self->_roamCandidatesPerBandWhenUnSuccessful removeAllObjects];
  *&self->_strongestRSSICountByBand.valueByBand[2] = 0u;
  *self->_strongestRSSICountByBand.valueByBand = 0u;
  *self->_strongestRSSIByBand.valueByBand = 0u;
  *&self->_strongestRSSIByBand.valueByBand[2] = 0u;
  *&self->_roamNeighsSmllstCurrentToBestRssiByBandTransition.valueByBands[0][0] = 0u;
  *&self->_roamNeighsSmllstCurrentToBestRssiByBandTransition.valueByBands[0][2] = 0u;
  *&self->_roamNeighsSmllstCurrentToBestRssiByBandTransition.valueByBands[1][1] = 0u;
  *&self->_roamNeighsSmllstCurrentToBestRssiByBandTransition.valueByBands[2][0] = 0u;
  *&self->_roamNeighsSmllstCurrentToBestRssiByBandTransition.valueByBands[2][2] = 0u;
  *&self->_roamNeighsSmllstCurrentToBestRssiByBandTransition.valid[2][2] = 0;
  *&self->_roamNeighsLrgstCurrentToBestRssiByBandTransition.valueByBands[0][0] = 0u;
  *&self->_roamNeighsLrgstCurrentToBestRssiByBandTransition.valueByBands[0][2] = 0u;
  *&self->_roamNeighsLrgstCurrentToBestRssiByBandTransition.valueByBands[1][1] = 0u;
  *&self->_roamNeighsLrgstCurrentToBestRssiByBandTransition.valueByBands[2][0] = 0u;
  *&self->_roamNeighsLrgstCurrentToBestRssiByBandTransition.valueByBands[2][2] = 0u;
  *&self->_roamNeighsLrgstCurrentToBestRssiByBandTransition.valid[2][2] = 0;
  *&self->_roamNeighsSmllstCurrentToNextBestRssiByBandTransition.valid[2][2] = 0;
  *&self->_roamNeighsSmllstCurrentToNextBestRssiByBandTransition.valueByBands[2][2] = 0u;
  *&self->_roamNeighsSmllstCurrentToNextBestRssiByBandTransition.valueByBands[2][0] = 0u;
  *&self->_roamNeighsSmllstCurrentToNextBestRssiByBandTransition.valueByBands[1][1] = 0u;
  *&self->_roamNeighsSmllstCurrentToNextBestRssiByBandTransition.valueByBands[0][2] = 0u;
  *&self->_roamNeighsSmllstCurrentToNextBestRssiByBandTransition.valueByBands[0][0] = 0u;
  *&self->_roamNeighsLrgstCurrentToNextBestRssiByBandTransition.valid[2][2] = 0;
  *&self->_roamNeighsLrgstCurrentToNextBestRssiByBandTransition.valueByBands[2][0] = 0u;
  *&self->_roamNeighsLrgstCurrentToNextBestRssiByBandTransition.valueByBands[2][2] = 0u;
  *&self->_roamNeighsLrgstCurrentToNextBestRssiByBandTransition.valueByBands[0][2] = 0u;
  *&self->_roamNeighsLrgstCurrentToNextBestRssiByBandTransition.valueByBands[1][1] = 0u;
  *&self->_roamNeighsLrgstCurrentToNextBestRssiByBandTransition.valueByBands[0][0] = 0u;
  if (self->_sessionEndTime)
  {
    [date timeIntervalSinceDate:?];
    [(WiFiUsageSession *)self setSessionTimeSinceLastSession:?];
  }

  lqm = self->_lqm;
  if (lqm)
  {
    [(WiFiUsageSessionLQM *)lqm reset];
  }

  [(WiFiUsageSession *)self setSessionStartTime:date];
  [(WiFiUsageSession *)self setSessionEndTime:0];
  [(WiFiUsageSession *)self setDriverUnavailabilityCount:0];
  [(WiFiUsageSession *)self trackEventLatencies];
  [(WiFiUsageSession *)self setIsCompatibilityModeEnabledAtStart:self->_isCompatibilityModeEnabled];
  [(WiFiUsageSession *)self setLastCompatibilityModeChangedTime:date];
  [(WiFiUsageSession *)self setCompatibilityModeChangeCount:0];
  [(WiFiUsageSession *)self setInCompatibilityModeEnabledDuration:0.0];
  [(WiFiUsageSession *)self setNetworkDetailsAtEnd:0];
  [(WiFiUsageSession *)self setIpV4DetailsPrevSession:self->_ipV4Details];
  [(WiFiUsageSession *)self setIpV4Details:0];
  [(WiFiUsageSession *)self setIpV6DetailsPrevSession:self->_ipV6Details];
  [(WiFiUsageSession *)self setIpV6Details:0];
  [(WiFiUsageSession *)self setBandAtSessionStart:self->_currentBand];
  [(WiFiUsageSession *)self setIsAssociatedAtSessionStart:self->_isAssociated];
  [(WiFiUsageSession *)self setInCoexRealTimeAtSessionStart:self->_inCoexRealTime];
  [(WiFiUsageSession *)self setRssiAtSessionStart:0x7FFFFFFFFFFFFFFFLL];
  [(WiFiUsageSession *)self setCountRoamScan:0];
  [(WiFiUsageSession *)self setLastRoamScanFoundSSIDTransitionTarget:0];
  [(WiFiUsageSession *)self setCountSSIDTransitionTargetInLastRoamScan:0];
  [(WiFiUsageSession *)self setCountRoamScanThatFoundSSIDTransitionTarget:0];
  [(WiFiUsageSession *)self setLastRoamScanFoundSSIDTransitionPotentialCandidate:0];
  [(WiFiUsageSession *)self setCountSSIDTransitionPotentialCandidatesInLastRoamScan:0];
  [(WiFiUsageSession *)self setCountSSIDTransitionPotentialCandidatesInLastRoamScanNotInTransitionableSet:0];
  [(WiFiUsageSession *)self setCountRoamScanThatFoundSSIDTransitionPotentialCandidate:0];
  [(WiFiUsageSession *)self setLastRoamScanContainsRoamCandidateCount:0];
  [(WiFiUsageSession *)self setLastRoamScanUniqueChannelsCount:0];
  [(WiFiUsageSession *)self setLastRoamScanUniqueBandsCount:0];
  [(WiFiUsageSession *)self setLastSSIDdisable6eModeAtStart:0];
  [(WiFiUsageSession *)self setLastSSIDdisabled6eModeChangeCount:0];
  [(WiFiUsageSession *)self setLastSSIDIn6eModeOffDuration:0.0];
  disable6eMode = [(WiFiUsageNetworkDetails *)self->_networkDetails disable6eMode];
  [(WiFiUsageSession *)self setNetworkDisable6eModeAtStart:disable6eMode];

  disable6eMode2 = [(WiFiUsageNetworkDetails *)self->_networkDetails disable6eMode];
  if (disable6eMode2)
  {
    v12 = date;
  }

  else
  {
    v12 = 0;
  }

  [(WiFiUsageSession *)self setLastNetwork6eDisableModeChangedTime:v12];

  [(WiFiUsageSession *)self setInNetwork6eModeOffDuration:0.0];
  [(WiFiUsageSession *)self setNetwork6eDisabledModeChangeCount:0];
  [(WiFiUsageSession *)self setInPoorLinkSessionCount:0];
  [(WiFiUsageSession *)self setInPoorLinkSessionDuration:0.0];
  [(WiFiUsageSession *)self setTdAfterJoinAfterTDCount:0];
  [(WiFiUsageSession *)self setCurrent_subsequentTdAfterJoinAfterTDCount:0];
  [(WiFiUsageSession *)self setMin_subsequentTdAfterJoinAfterTDCount:0x7FFFFFFFFFFFFFFFLL];
  [(WiFiUsageSession *)self setMax_subsequentTdAfterJoinAfterTDCount:0];
  [(WiFiUsageSession *)self setTdSessionStartedByBadRSSICount:0];
  [(WiFiUsageSession *)self setTdSessionStartedByTDRecommendedCount:0];
  [(WiFiUsageSession *)self setTdSessionStartedBySymptomDNSFailureCount:0];
  [(WiFiUsageSession *)self setTdEvalEndedCount:0];
  [(WiFiUsageSession *)self setTdEvalCumulativeDuration:0.0];
  [(WiFiUsageSession *)self setTdEvalStartedCount:0];
  [(WiFiUsageSession *)self setTdEvalStartedByBadRSSICount:0];
  [(WiFiUsageSession *)self setTdEvalStartedBySymptomsARPFailureCount:0];
  [(WiFiUsageSession *)self setTdEvalStartedBySymptomsDNSFailCount:0];
  [(WiFiUsageSession *)self setTdEvalStartedBySymptomsShortFlowCount:0];
  [(WiFiUsageSession *)self setTdEvalStartedBySymptomsDataStallCount:0];
  [(WiFiUsageSession *)self setTdEvalStartedBySymptomsDNSStallCount:0];
  [(WiFiUsageSession *)self setTdEvalStartedBySymptomsDNSFailCount:0];
  [(WiFiUsageSession *)self setTdEvalStartedByActiveProbingCount:0];
  [(WiFiUsageSession *)self setTdEvalStartedByFGNetwAppChangeCount:0];
  [(WiFiUsageSession *)self setTdEvalStartedByUserNotificationCount:0];
  [(WiFiUsageSession *)self setTdEvalStartedByCheckReassocCount:0];
  [(WiFiUsageSession *)self setLastUsbStatusChange:0];
  [(WiFiUsageSession *)self setUsbDeviceEventCount:0];
  [(WiFiUsageSession *)self setUsbInsertedDuration:0.0];
  [(WiFiUsageSession *)self setLastAWDLSequenceUpdate:0];
  [(WiFiUsageSession *)self setInAWDL_BestInfraScoreDuration:0.0];
  [(WiFiUsageSession *)self setInAWDL_BestP2PScoreDuration:0.0];
  [(WiFiUsageSession *)self setInAWDL_WorstInfraScoreDuration:0.0];
  [(WiFiUsageSession *)self setInAWDL_WorstP2PScoreDuration:0.0];
  [(WiFiUsageSession *)self setJoinLinkUpLatencyFromSessionStart:0.0];
  [(WiFiUsageSession *)self setLongestUnassociatedDuration:0.0];
  [(WiFiUsageSession *)self setAirplaneModeStateChangedCount:0];
  [(WiFiUsageSession *)self setMaxPhyMode:0];
}

- (void)trackEventLatencies
{
  [(WiFiUsageSession *)self setDriverAvailabilityLatencyFromChipReset:0.0];
  [(WiFiUsageSession *)self setDriverAvailabilityLatencyFromTermination:0.0];
  [(WiFiUsageSession *)self setJoinScanLatencyFromDriverAvailability:0.0];
  [(WiFiUsageSession *)self setJoinStartedLatencyFromDriverAvailability:0.0];
  [(WiFiUsageSession *)self setJoinLinkUpLatencyFromDriverAvailability:0.0];
  [(WiFiUsageSession *)self setJoinIpConfigurationLatencyFromDriverAvailability:0.0];
  [(WiFiUsageSession *)self setJoinInterfaceRankingLatencyFromDriverAvailability:0.0];

  [(WiFiUsageSession *)self setLastDriverUnavailableReason:0];
}

- (WiFiUsageSession)initWithSessionType:(unint64_t)type andInterfaceName:(id)name andCapabilities:(id)capabilities
{
  v26 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  capabilitiesCopy = capabilities;
  date = [MEMORY[0x277CBEAA8] date];
  if (nameCopy)
  {
    v21.receiver = self;
    v21.super_class = WiFiUsageSession;
    v11 = [(WiFiUsageSession *)&v21 init];
    [v11 setSessionInitTime:date];
    [v11 setSessionPid:getpid()];
    [v11 setType:type];
    [v11 setInterfaceName:nameCopy];
    [v11 setCapabilities:capabilitiesCopy];
    [v11 setSessionTimeSinceLastSession:-1.0];
    [v11 setIsSessionActive:0];
    [v11 setLastSystemWakeTime:date];
    [v11 setLastPowerBudget:-1];
    [v11 setLastThermalIndex:-1];
    [v11 setLastJoinReason:-1];
    [v11 setPrevJoinReason:-1];
    [v11 setSavedLastJoinReason:-1];
    [v11 setLastJoinFailure:-1];
    [v11 setSavedLastJoinFailure:-1];
    [v11 setLastDisconnectReason:-1];
    [v11 setPreviousDisconnectReason:-1];
    [v11 setSavedPreviousDisconnectReason:-1];
    [v11 setLastDisconnectSubreason:-1];
    [v11 setSmartCoverStateChangedCount:0];
    [v11 setNetworkDetailsAtEnd:0];
    [v11 setCurrentBssSession:0];
    [v11 setResponsivenessScore:0];
    *(v11 + 27) = 0;
    *(v11 + 200) = 0u;
    *(v11 + 184) = 0u;
    *(v11 + 168) = 0u;
    *(v11 + 152) = 0u;
    *(v11 + 136) = 0u;
    *(v11 + 120) = 0u;
    *(v11 + 104) = 0u;
    *(v11 + 88) = 0u;
    *(v11 + 72) = 0u;
    *(v11 + 56) = 0u;
    *(v11 + 40) = 0u;
    *(v11 + 24) = 0u;
    *(v11 + 8) = 0u;
    *(v11 + 14) = 0u;
    *(v11 + 15) = 0u;
    *(v11 + 16) = 0u;
    *(v11 + 17) = 0u;
    *(v11 + 18) = 0u;
    *(v11 + 19) = 0u;
    *(v11 + 20) = 0u;
    *(v11 + 21) = 0u;
    *(v11 + 22) = 0u;
    *(v11 + 23) = 0u;
    *(v11 + 24) = 0u;
    *(v11 + 25) = 0u;
    *(v11 + 26) = 0u;
    *(v11 + 27) = 0u;
    *(v11 + 28) = 0u;
    *(v11 + 29) = 0u;
    *(v11 + 30) = 0u;
    *(v11 + 31) = 0u;
    *(v11 + 80) = 0;
    *(v11 + 38) = 0u;
    *(v11 + 39) = 0u;
    *(v11 + 36) = 0u;
    *(v11 + 37) = 0u;
    *(v11 + 34) = 0u;
    *(v11 + 35) = 0u;
    *(v11 + 32) = 0u;
    *(v11 + 33) = 0u;
    v12 = *(v11 + 1132);
    if (v12)
    {
      [v12 removeAllObjects];
    }

    else
    {
      v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v15 = *(v11 + 1132);
      *(v11 + 1132) = v14;
    }

    [v11 setLastDriverUnavailableReason:0];
    [v11 setLastDriverTerminationTime:0];
    [v11 setLastChipResetTime:0];
    [v11 setDriverProcessLifespan:0.0];
    [v11 setDriverAvailabilityLifespan:0.0];
    [v11 setIsDriverAvailable:1];
    [v11 setDriverUnavailabilityCount:0];
    [v11 setLastDriverAvailableTime:date];
    [v11 trackEventLatencies];
    v16 = objc_opt_new();
    [v11 setRoamNeighborsByBand:v16];

    v17 = objc_opt_new();
    [v11 setRoamCandidatesPerBandWhenSuccessful:v17];

    v18 = objc_opt_new();
    [v11 setRoamCandidatesPerBandWhenUnSuccessful:v18];

    v19 = objc_opt_new();
    [v11 setPrevNetworkNames:v19];

    [v11 setLastCoexRealTimeOn:0];
    [v11 setLastCoexRealTimeOff:0];
    [v11 setConsecutiveJoinFailureCount:0];
    v11[9067] = 0;
    self = v11;
    selfCopy = self;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v23 = "[WiFiUsageSession initWithSessionType:andInterfaceName:andCapabilities:]";
      v24 = 2112;
      v25 = 0;
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - Cannot create Session (invalid interfaceName: %@)", buf, 0x16u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)dealloc
{
  if (self->_osStateHandle)
  {
    os_state_remove_handler();
  }

  v3.receiver = self;
  v3.super_class = WiFiUsageSession;
  [(WiFiUsageSession *)&v3 dealloc];
}

- (os_state_data_s)_generateState
{
  v32 = *MEMORY[0x277D85DE8];
  type = self->_type;
  if (type != 4 && type != 1)
  {
    return 0;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    sessionName = [(WiFiUsageSession *)self sessionName];
    *buf = 136315394;
    v25 = "[WiFiUsageSession _generateState]";
    v26 = 2112;
    v27 = sessionName;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: %@ BEGIN", buf, 0x16u);
  }

  if (self->_isSessionActive)
  {
    v6 = MEMORY[0x277CCACA8];
    sessionName2 = [(WiFiUsageSession *)self sessionName];
    v8 = [v6 stringWithFormat:@"%s %@", "-[WiFiUsageSession _generateState]", sessionName2];

    v9 = [MEMORY[0x277CBEB98] setWithObjects:{@"Avg", @"Min", @"Max", @"Count", @"Duration", 0}];
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v11 = [(WiFiUsageSession *)self sessionSummary:0];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __34__WiFiUsageSession__generateState__block_invoke;
    v21[3] = &unk_2789C7E80;
    v22 = v9;
    v12 = dictionary;
    v23 = v12;
    v13 = v9;
    [v11 enumerateKeysAndObjectsUsingBlock:v21];

    if (v12 && [v12 count])
    {
      v14 = [MEMORY[0x277CCAC58] dataWithPropertyList:v12 format:100 options:0 error:0];
      v15 = v14;
      if (v14)
      {
        v16 = [v14 length];
        v17 = malloc_type_calloc(1uLL, v16 + 200, 0x1000040BEF03554uLL);
        v18 = v17;
        if (v17)
        {
          v17->var0 = 1;
          v17->var1.var1 = v16;
          [v8 UTF8String];
          __strlcpy_chk();
          memcpy(v18->var4, [v15 bytes], v16);
        }

        goto LABEL_17;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
    v8 = 0;
    v12 = 0;
  }

  v18 = 0;
  v16 = 0;
LABEL_17:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v19 = "success";
    *buf = 136315906;
    v25 = "[WiFiUsageSession _generateState]";
    v26 = 2080;
    if (!v18)
    {
      v19 = "failed";
    }

    v27 = v19;
    v28 = 2048;
    v29 = v16;
    v30 = 1024;
    v31 = 0x8000;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: END (%s), bytes: %zu (limit: %d)", buf, 0x26u);
  }

  return v18;
}

void __34__WiFiUsageSession__generateState__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v6 isEqualToNumber:&unk_2848BA328])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v7 = *(a1 + 32);
    v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v13;
      while (2)
      {
        v11 = 0;
        do
        {
          if (*v13 != v10)
          {
            objc_enumerationMutation(v7);
          }

          if ([v5 rangeOfString:*(*(&v12 + 1) + 8 * v11) options:{1, v12}] != 0x7FFFFFFFFFFFFFFFLL)
          {

            goto LABEL_13;
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }
  }

  [*(a1 + 40) setObject:v6 forKeyedSubscript:{v5, v12}];
LABEL_13:
}

- (void)setCompletionHandler:(id)handler withContext:(id)context onQueue:(id)queue
{
  queueCopy = queue;
  contextCopy = context;
  [(WiFiUsageSession *)self setCompletionHandler:handler];
  [(WiFiUsageSession *)self setCompletionContext:contextCopy];

  [(WiFiUsageSession *)self setCompletionQueue:queueCopy];
  objc_initWeak(&location, self);
  objc_copyWeak(&v11, &location);
  v10 = os_state_add_handler();

  self->_osStateHandle = v10;
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

uint64_t __61__WiFiUsageSession_setCompletionHandler_withContext_onQueue___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _generateState];

  return v2;
}

- (void)setLastDisconnectReason:(int64_t)reason
{
  v5 = [WiFiUsageSession disconnectReasonString:?];
  v6 = v5;
  self->_lastDisconnectReason = reason;
  if (v5)
  {
    v14 = v5;
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"WiFiDisconnectReason%@", v5];
    v8 = [(NSMutableDictionary *)self->_disconnectReasonMap objectForKeyedSubscript:v7];

    disconnectReasonMap = self->_disconnectReasonMap;
    if (v8)
    {
      v10 = [(NSMutableDictionary *)disconnectReasonMap objectForKeyedSubscript:v7];
      integerValue = [v10 integerValue];

      v12 = self->_disconnectReasonMap;
      v13 = [MEMORY[0x277CCABB0] numberWithInteger:integerValue + 1];
      [(NSMutableDictionary *)v12 setObject:v13 forKey:v7];
    }

    else
    {
      [(NSMutableDictionary *)disconnectReasonMap setObject:&unk_2848BA340 forKey:v7];
    }

    v6 = v14;
  }

  MEMORY[0x2821F96F8](v5, v6);
}

- (void)systemWakeStateDidChange:(BOOL)change wokenByWiFi:(BOOL)fi
{
  fiCopy = fi;
  changeCopy = change;
  date = [MEMORY[0x277CBEAA8] date];
  v11 = date;
  if (changeCopy)
  {
    ++self->_systemWakeStateChangedCount;
    if (fiCopy)
    {
      ++self->_systemWokenByWiFiCount;
    }

    [(WiFiUsageSession *)self setLastSystemWakeTime:date];
    lastSystemSleepTime = self->_lastSystemSleepTime;
    if (lastSystemSleepTime)
    {
      if (self->_lastLinkStateChangedTime)
      {
        [(NSDate *)v11 timeIntervalSinceDate:?];
        lastSystemSleepTime = 0;
        self->_associatedSleepDuration = v9 + self->_associatedSleepDuration;
      }

      else
      {
        lastSystemSleepTime = 0;
      }
    }
  }

  else
  {
    lastSystemSleepTime = date;
    if (self->_lastSystemWakeTime)
    {
      [(NSDate *)date timeIntervalSinceDate:self->_lastSystemWakeTime];
      self->_systemAwakeDuration = v10 + self->_systemAwakeDuration;
      [(WiFiUsageSession *)self setLastSystemWakeTime:v11];
      lastSystemSleepTime = v11;
    }
  }

  [(WiFiUsageSession *)self setLastSystemSleepTime:lastSystemSleepTime];
}

- (void)lockStateDidChange:(BOOL)change
{
  if (change)
  {
    ++self->_lockStateChangedCount;
  }

  self->_isUnlocked = !change;
}

- (void)displayStateDidChange:(BOOL)change
{
  if (change)
  {
    ++self->_displayStateChangedCount;
  }

  self->_isDisplayOn = change;
}

- (void)motionStateDidChange:(id)change
{
  v4 = MEMORY[0x277CBEAA8];
  changeCopy = change;
  date = [v4 date];
  v6 = [changeCopy isEqualToString:@"Stationary"];
  v7 = [changeCopy containsString:@"Driving"];
  v8 = [changeCopy isEqualToString:@"Walking"];

  if (v6)
  {
    if (self->_inMotionStartedTime)
    {
      [date timeIntervalSinceDate:?];
      self->_inMotionDuration = v9 + self->_inMotionDuration;
      [(WiFiUsageSession *)self setInMotionStartedTime:0];
    }

    if (v7)
    {
      goto LABEL_5;
    }
  }

  else
  {
    [(WiFiUsageSession *)self setInMotionStartedTime:date];
    ++self->_inMotionEventCount;
    if (v7)
    {
LABEL_5:
      [(WiFiUsageSession *)self setInVehicleEntryTime:date];
      ++self->_inVehicleEventCount;
      goto LABEL_9;
    }
  }

  if (self->_inVehicleEntryTime)
  {
    [date timeIntervalSinceDate:?];
    self->_inVehicleDuration = v10 + self->_inVehicleDuration;
    [(WiFiUsageSession *)self setInVehicleEntryTime:0];
  }

LABEL_9:
  if (v8)
  {
    [(WiFiUsageSession *)self setInWalkingEntryTime:date];
    ++self->_inWalkingEventCount;
  }

  else if (self->_inWalkingEntryTime)
  {
    [date timeIntervalSinceDate:?];
    self->_inWalkingDuration = v11 + self->_inWalkingDuration;
    [(WiFiUsageSession *)self setInWalkingEntryTime:0];
  }

  [(WiFiUsageBssSession *)self->_currentBssSession motionStateDidChange:v6 ^ 1u andVehicularState:v7];
}

- (void)callStateDidChange:(BOOL)change
{
  changeCopy = change;
  date = [MEMORY[0x277CBEAA8] date];
  v7 = date;
  if (changeCopy)
  {
    [(WiFiUsageSession *)self setCallStartedTime:date];
    ++self->_inCallEventCount;
  }

  else if (self->_callStartedTime)
  {
    [date timeIntervalSinceDate:?];
    self->_inCallDuration = v6 + self->_inCallDuration;
    [(WiFiUsageSession *)self setCallStartedTime:0];
  }

  [(WiFiUsageBssSession *)self->_currentBssSession callStateDidChange:changeCopy];
}

- (void)mediaStateDidChange:(BOOL)change
{
  changeCopy = change;
  date = [MEMORY[0x277CBEAA8] date];
  v6 = date;
  if (changeCopy)
  {
    v8 = date;
    date = [(WiFiUsageSession *)self setMediaStartedTime:date];
    v6 = v8;
    ++self->_mediaPlaybackEventCount;
  }

  else if (self->_mediaStartedTime)
  {
    v9 = date;
    [date timeIntervalSinceDate:?];
    self->_mediaPlaybackDuration = v7 + self->_mediaPlaybackDuration;
    date = [(WiFiUsageSession *)self setMediaStartedTime:0];
    v6 = v9;
  }

  MEMORY[0x2821F96F8](date, v6);
}

- (void)chargingStateDidChange:(BOOL)change
{
  changeCopy = change;
  date = [MEMORY[0x277CBEAA8] date];
  v6 = date;
  if (changeCopy)
  {
    v8 = date;
    date = [(WiFiUsageSession *)self setChargingStartedTime:date];
    v6 = v8;
    ++self->_chargingEventCount;
  }

  else if (self->_chargingStartedTime)
  {
    v9 = date;
    [date timeIntervalSinceDate:?];
    self->_chargingDuration = v7 + self->_chargingDuration;
    date = [(WiFiUsageSession *)self setChargingStartedTime:0];
    v6 = v9;
  }

  MEMORY[0x2821F96F8](date, v6);
}

- (void)companionStateDidChange:(BOOL)change
{
  changeCopy = change;
  date = [MEMORY[0x277CBEAA8] date];
  v6 = date;
  if (changeCopy)
  {
    v8 = date;
    date = [(WiFiUsageSession *)self setCompanionConnectionTime:date];
    v6 = v8;
    ++self->_companionConnectionStateChangedCount;
  }

  else if (self->_companionConnectionTime)
  {
    v9 = date;
    [date timeIntervalSinceDate:?];
    self->_companionConnectedDuration = v7 + self->_companionConnectedDuration;
    date = [(WiFiUsageSession *)self setCompanionConnectionTime:0];
    v6 = v9;
  }

  MEMORY[0x2821F96F8](date, v6);
}

- (void)updateWowState:(BOOL)state lpasState:(BOOL)lpasState lowPowerState:(BOOL)powerState batterySaverState:(BOOL)saverState
{
  saverStateCopy = saverState;
  powerStateCopy = powerState;
  lpasStateCopy = lpasState;
  stateCopy = state;
  date = [MEMORY[0x277CBEAA8] date];
  wowStateEntryTime = self->_wowStateEntryTime;
  if (stateCopy)
  {
    if (!wowStateEntryTime)
    {
      [(WiFiUsageSession *)self setWowStateEntryTime:date];
      ++self->_wowStateChangedCount;
    }
  }

  else if (wowStateEntryTime)
  {
    [date timeIntervalSinceDate:?];
    self->_inWowStateDuration = v12 + self->_inWowStateDuration;
    [(WiFiUsageSession *)self setWowStateEntryTime:0];
  }

  lpasStateEntryTime = self->_lpasStateEntryTime;
  if (lpasStateCopy)
  {
    if (!lpasStateEntryTime)
    {
      [(WiFiUsageSession *)self setLpasStateEntryTime:date];
      ++self->_lpasStateChangedCount;
    }
  }

  else if (lpasStateEntryTime)
  {
    [date timeIntervalSinceDate:?];
    self->_inLpasStateDuration = v14 + self->_inLpasStateDuration;
    [(WiFiUsageSession *)self setLpasStateEntryTime:0];
  }

  lowPowerStateEntryTime = self->_lowPowerStateEntryTime;
  if (powerStateCopy)
  {
    if (!lowPowerStateEntryTime)
    {
      [(WiFiUsageSession *)self setLowPowerStateEntryTime:date];
      ++self->_lowPowerStateChangedCount;
    }
  }

  else if (lowPowerStateEntryTime)
  {
    [date timeIntervalSinceDate:?];
    self->_inLowPowerStateDuration = v16 + self->_inLowPowerStateDuration;
    [(WiFiUsageSession *)self setLowPowerStateEntryTime:0];
  }

  batterySaverStateEntryTime = self->_batterySaverStateEntryTime;
  if (saverStateCopy)
  {
    if (!batterySaverStateEntryTime)
    {
      [(WiFiUsageSession *)self setBatterySaverStateEntryTime:date];
      ++self->_batterySaverStateChangedCount;
    }
  }

  else if (batterySaverStateEntryTime)
  {
    [date timeIntervalSinceDate:?];
    self->_inBatterySaverStateDuration = v18 + self->_inBatterySaverStateDuration;
    [(WiFiUsageSession *)self setBatterySaverStateEntryTime:0];
  }
}

- (void)applicationStateDidChange:(id)change withAttributes:(id)attributes
{
  v6 = &self->_disconnectReasonCount[928];
  changeCopy = change;
  attributesCopy = attributes;
  if (changeCopy && (v8 = [changeCopy isEqualToString:@"com.apple.springboard"], v9 = changeCopy, (v8 & 1) == 0))
  {
    ++self->_applicationStateChangedCount;
    activeApplications = self->_activeApplications;
    if (!activeApplications)
    {
      v12 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v13 = self->_activeApplications;
      self->_activeApplications = v12;

      v9 = changeCopy;
      activeApplications = self->_activeApplications;
    }

    [(NSMutableSet *)activeApplications addObject:v9];
    v10 = 0;
  }

  else
  {
    [(WiFiUsageSession *)self setActiveApplications:0];
    v10 = 1;
  }

  *(v6 + 878) = v10;
  if (*(v6 + 875) == 1)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v15 = [MEMORY[0x277CCAB88] notificationWithName:@"applicationStateDidChange" object:0];
    [defaultCenter postNotification:v15];
  }
}

- (void)updateBandUsageFor:(int)for With:(id)with
{
  lastBssChangedTime = with;
  v7 = lastBssChangedTime;
  if (for <= 2)
  {
    lastBssChangedTime = self->_lastBssChangedTime;
    if (lastBssChangedTime)
    {
      v15 = v7;
      [(NSDate *)lastBssChangedTime timeIntervalSinceDate:self->_sessionStartTime];
      v8 = 9328;
      if (v9 > 0.0)
      {
        v8 = 9528;
      }

      v10 = *(&self->super.isa + v8);
      p_bandUsageDuration = &self->_bandUsageDuration;
      valid = self->_bandUsageDuration.valid;
      if (!self->_bandUsageDuration.valid[for])
      {
        p_bandUsageDuration->valueByBand[for] = 0.0;
      }

      v13 = v10;
      [(NSDate *)v15 timeIntervalSinceDate:v13];
      p_bandUsageDuration->valueByBand[for] = v14 + p_bandUsageDuration->valueByBand[for];
      valid[for] = 1;

      v7 = v15;
    }
  }

  MEMORY[0x2821F96F8](lastBssChangedTime, v7);
}

- (void)joinStateDidChange:(id)change withReason:(unint64_t)reason lastDisconnectReason:(int64_t)disconnectReason lastJoinFailure:(int64_t)failure andNetworkDetails:(id)details
{
  detailsCopy = details;
  date = [MEMORY[0x277CBEAA8] date];
  if (change)
  {
    if ([(WiFiUsageSession *)self useSavedJoinStats])
    {
      lastJoinReason = self->_lastJoinReason;
      if (lastJoinReason != -1)
      {
        v14 = *&self->_joinReasonCount[10];
        *&self->_savedJoinReasonCount[8] = *&self->_joinReasonCount[8];
        *&self->_savedJoinReasonCount[10] = v14;
        *&self->_savedJoinReasonCount[12] = *&self->_joinReasonCount[12];
        self->_savedJoinReasonCount[14] = self->_joinReasonCount[14];
        v15 = *&self->_joinReasonCount[2];
        *self->_savedJoinReasonCount = *self->_joinReasonCount;
        *&self->_savedJoinReasonCount[2] = v15;
        v16 = *&self->_joinReasonCount[6];
        *&self->_savedJoinReasonCount[4] = *&self->_joinReasonCount[4];
        *&self->_savedJoinReasonCount[6] = v16;
        self->_savedJoinStateChangedCount = self->_joinStateChangedCount;
        self->_savedPrevJoinReason = self->_prevJoinReason;
        self->_savedTimeSincePrevJoin = self->_timeSincePrevJoin;
        self->_savedInCoexRealTimeAtLastJoin = self->_inCoexRealTimeAtLastJoin;
        self->_savedLastJoinReason = lastJoinReason;
        self->_savedPreviousDisconnectReason = self->_previousDisconnectReason;
        self->_savedLastJoinFailure = self->_lastJoinFailure;
      }
    }

    if (!self->_lastJoinFailure)
    {
      [(WiFiUsageSession *)self setConsecutiveJoinFailureCount:0];
    }

    ++self->_joinStateChangedCount;
    ++self->_joinReasonCount[reason];
    [(WiFiUsageSession *)self setPrevJoinReason:self->_lastJoinReason];
    [date timeIntervalSinceDate:self->_lastJoinTime];
    [(WiFiUsageSession *)self setTimeSincePrevJoin:?];
    [(WiFiUsageSession *)self setLastJoinTime:date];
    [(WiFiUsageSession *)self setInCoexRealTimeAtLastJoin:self->_inCoexRealTime];
    [(WiFiUsageSession *)self setLastJoinReason:reason];
    [(WiFiUsageSession *)self setPreviousDisconnectReason:self->_lastDisconnectReason];
    [(WiFiUsageSession *)self setLastJoinFailure:0];
    if (self->_joinStartedLatencyFromDriverAvailability == 0.0 && self->_lastDriverAvailableTime)
    {
      [date timeIntervalSinceDate:?];
      [(WiFiUsageSession *)self setJoinStartedLatencyFromDriverAvailability:?];
    }
  }

  else
  {
    [(WiFiUsageSession *)self setPreviousDisconnectReason:self->_lastDisconnectReason];
    [(WiFiUsageSession *)self setLastDisconnectReason:disconnectReason];
    [(WiFiUsageSession *)self setLastJoinFailure:failure];
    if ([(WiFiUsageSession *)self useSavedJoinStats]&& self->_lastJoinReason != -1)
    {
      self->_savedPreviousDisconnectReason = self->_previousDisconnectReason;
      self->_savedLastJoinFailure = self->_lastJoinFailure;
    }

    if (failure)
    {
      ++self->_consecutiveJoinFailureCount;
    }
  }

  if (self->_rssiAtSessionStart == 0x7FFFFFFFFFFFFFFFLL)
  {
    connectedBss = [detailsCopy connectedBss];
    if ([connectedBss rssi] != 0x7FFFFFFFFFFFFFFFLL)
    {
      connectedBss2 = [detailsCopy connectedBss];
      rssi = [connectedBss2 rssi];

      if (!rssi)
      {
        goto LABEL_20;
      }

      connectedBss = [detailsCopy connectedBss];
      self->_rssiAtSessionStart = [connectedBss rssi];
    }
  }

LABEL_20:
}

- (void)linkStateDidChange:(BOOL)change isInvoluntary:(BOOL)involuntary linkChangeReason:(int64_t)reason linkChangeSubreason:(int64_t)subreason withNetworkDetails:(id)details
{
  reasonCopy = reason;
  involuntaryCopy = involuntary;
  changeCopy = change;
  v80 = *MEMORY[0x277D85DE8];
  detailsCopy = details;
  date = [MEMORY[0x277CBEAA8] date];
  originBssDetails = [(WiFiUsageBssSession *)self->_currentBssSession originBssDetails];
  bssid = [originBssDetails bssid];

  connectedBss = [detailsCopy connectedBss];
  bssid2 = [connectedBss bssid];

  connectedBss2 = [(WiFiUsageNetworkDetails *)self->_networkDetails connectedBss];
  band = [connectedBss2 band];

  connectedBss3 = [detailsCopy connectedBss];
  self->_currentBand = [connectedBss3 band];

  connectedBss4 = [(WiFiUsageNetworkDetails *)self->_networkDetails connectedBss];
  channel = [connectedBss4 channel];

  connectedBss5 = [detailsCopy connectedBss];
  channel2 = [connectedBss5 channel];

  connectedBss6 = [detailsCopy connectedBss];
  v59 = 0;
  v21 = [WiFiUsageAccessPointProfile profileForBSSID:bssid2 withError:&v59];
  v22 = v59;
  [connectedBss6 setApProfile:v21];

  connectedBss7 = [detailsCopy connectedBss];
  v56 = v22;
  [connectedBss7 setApProfileError:v22];

  v57 = bssid2;
  v58 = bssid;
  v24 = 1;
  if ([bssid isEqual:bssid2] && channel == channel2)
  {
    v24 = band != self->_currentBand;
  }

  v25 = date;
  if (changeCopy)
  {
    if (!self->_isAssociated)
    {
      [date timeIntervalSinceDate:self->_sessionStartTime];
      [(WiFiUsageSession *)self setJoinLinkUpLatencyFromSessionStart:?];
    }

    self->_isAssociated = 1;
    networkDetails = self->_networkDetails;
    if (networkDetails && (-[WiFiUsageNetworkDetails networkName](networkDetails, "networkName"), v27 = objc_claimAutoreleasedReturnValue(), [detailsCopy networkName], v28 = objc_claimAutoreleasedReturnValue(), v29 = objc_msgSend(v27, "isEqualToString:", v28), v28, v27, (v29 & 1) == 0))
    {
      ++self->_networkChangedCount;
      if ([(NSMutableArray *)self->_prevNetworkNames count]&& [(NSMutableArray *)self->_prevNetworkNames count]>= 2)
      {
        [(NSMutableArray *)self->_prevNetworkNames removeObjectAtIndex:0];
      }

      networkName = [(WiFiUsageNetworkDetails *)self->_networkDetails networkName];

      if (!networkName)
      {
        goto LABEL_36;
      }

      prevNetworkNames = self->_prevNetworkNames;
      networkName2 = [(WiFiUsageNetworkDetails *)self->_networkDetails networkName];
      [(NSMutableArray *)prevNetworkNames addObject:networkName2];
    }

    else
    {
      if (v58 && (!v24 || !self->_lastBssChangedTime || !self->_networkDetails))
      {
        goto LABEL_36;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        sessionName = [(WiFiUsageSession *)self sessionName];
        v31 = [WiFiUsagePrivacyFilter bandAsString:band];
        v32 = [WiFiUsagePrivacyFilter bandAsString:self->_currentBand];
        *buf = 136317442;
        v61 = "[WiFiUsageSession linkStateDidChange:isInvoluntary:linkChangeReason:linkChangeSubreason:withNetworkDetails:]";
        v62 = 2112;
        v63 = sessionName;
        v64 = 2160;
        v65 = 1752392040;
        v66 = 2112;
        v67 = v58;
        v68 = 1024;
        v69 = channel;
        v70 = 2112;
        v71 = v31;
        v72 = 2160;
        v73 = 1752392040;
        v74 = 2112;
        v75 = v57;
        v76 = 1024;
        v77 = channel2;
        v78 = 2112;
        v79 = v32;
        _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: %@: roamed from BSSID %{mask.hash}@ on channel %d(%@Ghz) to BSSID %{mask.hash}@ on channel %d(%@Ghz)", buf, 0x5Eu);
      }

      if ([(WiFiUsageSession *)self isSessionActive]&& self->_lastBssChangedTime)
      {
        [(WiFiUsageSession *)self updateBandUsageFor:band With:v25];
      }

      [(WiFiUsageSession *)self setLastBssChangedTime:v25];
      currentBssSession = self->_currentBssSession;
      networkName2 = [detailsCopy bssEnvironment];
      connectedBss8 = [detailsCopy connectedBss];
      [(WiFiUsageBssSession *)currentBssSession bssDidChange:networkName2 withDetails:connectedBss8];
    }

LABEL_36:
    if (detailsCopy && !self->_currentBssSession && self->_type == 4)
    {
      v42 = [WiFiUsageBssSession alloc];
      interfaceName = self->_interfaceName;
      bssEnvironment = [detailsCopy bssEnvironment];
      connectedBss9 = [detailsCopy connectedBss];
      v46 = [(WiFiUsageBssSession *)v42 initWithInterfaceName:interfaceName bssEnvironment:bssEnvironment andBssDetails:connectedBss9 andNetworkDetails:detailsCopy];
      [(WiFiUsageSession *)self setCurrentBssSession:v46];
    }

    ++self->_linkStateChangedCount;
    if (self->_lastLinkStateChangedTime)
    {
      [v25 timeIntervalSinceDate:?];
      if (v47 > self->_longestUnassociatedDuration)
      {
        self->_longestUnassociatedDuration = v47;
      }
    }

    if (self->_lastUnexpectedLinkDownTime)
    {
      [v25 timeIntervalSinceDate:?];
      if (v48 < 20.0)
      {
        ++self->_rapidLinkTransitionCount;
      }
    }

    [(WiFiUsageSession *)self setLastUnexpectedLinkDownTime:0, reasonCopy];
    if (!self->_lastLinkStateChangedTime)
    {
      [(WiFiUsageSession *)self setLastLinkStateChangedTime:v25];
    }

    if (!self->_lastBssChangedTime)
    {
      [(WiFiUsageSession *)self setLastBssChangedTime:v25];
    }

    if (self->_joinLinkUpLatencyFromDriverAvailability == 0.0 && self->_lastDriverAvailableTime)
    {
      [v25 timeIntervalSinceDate:?];
      [(WiFiUsageSession *)self setJoinLinkUpLatencyFromDriverAvailability:?];
    }

    connectedBss10 = [detailsCopy connectedBss];
    v50 = +[WiFiUsageLQMTransformations maxPhyModeFrom:](WiFiUsageLQMTransformations, "maxPhyModeFrom:", [connectedBss10 phyMode]);

    if (v50 > self->_maxPhyMode)
    {
      self->_maxPhyMode = v50;
    }

    goto LABEL_55;
  }

  self->_isAssociated = 0;
  [(WiFiUsageSession *)self setLastDisconnectReason:reasonCopy];
  [(WiFiUsageSession *)self setLastDisconnectSubreason:subreason];
  if (involuntaryCopy)
  {
    v36 = date;
  }

  else
  {
    v36 = 0;
  }

  [(WiFiUsageSession *)self setLastUnexpectedLinkDownTime:v36, reasonCopy];
  [(WiFiUsageSession *)self tallyAssociatedDuration:date];
  if (self->_lastBssChangedTime)
  {
    v37 = self->_networkDetails;
    if (v37)
    {
      connectedBss11 = [(WiFiUsageNetworkDetails *)v37 connectedBss];
      -[WiFiUsageSession updateBandUsageFor:With:](self, "updateBandUsageFor:With:", [connectedBss11 band], date);
    }

    [(WiFiUsageSession *)self setLastBssChangedTime:0];
  }

  v39 = self->_currentBssSession;
  if (v39)
  {
    [(WiFiUsageBssSession *)v39 bssDidChange:0 withDetails:0];
  }

  if (self->_lastAWDLSequenceUpdate)
  {
    [(WiFiUsageSession *)self tallyInfraScoreDuration:0 until:date];
    [(WiFiUsageSession *)self tallyP2PScoreDuration:date until:self->_inAWDL_lastP2PScore];
    objc_storeStrong(&self->_lastAWDLSequenceUpdate, date);
  }

LABEL_55:
  -[WiFiUsageSession setIsInstantHotspot:](self, "setIsInstantHotspot:", [detailsCopy isInstantHotspot]);
  -[WiFiUsageSession setIsAutoHotspot:](self, "setIsAutoHotspot:", [detailsCopy isAutoHotspot]);
  [(WiFiUsageSession *)self updateAssociatedNetworkDetails:detailsCopy];
}

- (void)linkQualityDidChange:(id)change
{
  changeCopy = change;
  if ([(WiFiUsageSession *)self isSessionActive])
  {
    lqm = self->_lqm;
    if (lqm)
    {
      [(WiFiUsageSessionLQM *)lqm updateLinkQuality:changeCopy forSession:self->_type];
    }

    else
    {
      v5 = [[WiFiUsageSessionLQM alloc] initWithLQMSample:changeCopy forInterface:self->_interfaceName];
      v6 = self->_lqm;
      self->_lqm = v5;
    }

    if (self->_rssiAtSessionStart == 0x7FFFFFFFFFFFFFFFLL)
    {
      rssi = 1;
    }

    else
    {
      rssi = [changeCopy rssi];
    }

    self->_rssiAtSessionStart = rssi;
    [(WiFiUsageBssSession *)self->_currentBssSession linkQualityDidChange:changeCopy];
  }
}

- (void)updateApProfile:(id)profile
{
  v18 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  v5 = profileCopy;
  if (self->_networkDetails)
  {
    bssid = [profileCopy bssid];
    connectedBss = [(WiFiUsageNetworkDetails *)self->_networkDetails connectedBss];
    bssid2 = [connectedBss bssid];
    v9 = [WiFiUsagePrivacyFilter reformatMACAddress:bssid2];
    v10 = [bssid isEqualToString:v9];

    if (v10)
    {
      connectedBss2 = [(WiFiUsageNetworkDetails *)self->_networkDetails connectedBss];
      apProfile = [v5 apProfile];
      [connectedBss2 setApProfile:apProfile];

      connectedBss3 = [(WiFiUsageNetworkDetails *)self->_networkDetails connectedBss];
      [connectedBss3 setHasColocatedMLOs:{objc_msgSend(v5, "hasColocatedMLOs")}];
LABEL_6:

      goto LABEL_7;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      connectedBss3 = [(WiFiUsageSession *)self sessionName];
      v14 = 136315394;
      v15 = "[WiFiUsageSession updateApProfile:]";
      v16 = 2112;
      v17 = connectedBss3;
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - mismatched BSSID between beaconData and connectedBss - not updating session %@", &v14, 0x16u);
      goto LABEL_6;
    }
  }

LABEL_7:
}

- (void)powerBudgetDidChange:(int64_t)change andThermalIndex:(int64_t)index
{
  date = [MEMORY[0x277CBEAA8] date];
  lastPowerBudget = self->_lastPowerBudget;
  v14 = date;
  if (lastPowerBudget <= 99)
  {
    if (lastPowerBudget <= 89)
    {
      if (lastPowerBudget <= 79)
      {
        if (lastPowerBudget <= 69)
        {
          if (lastPowerBudget <= 59)
          {
            if (lastPowerBudget <= 49)
            {
              if (lastPowerBudget <= 39)
              {
                if (lastPowerBudget <= 29)
                {
                  if (lastPowerBudget <= 19)
                  {
                    if (lastPowerBudget <= 9)
                    {
                      if (lastPowerBudget < 0)
                      {
                        goto LABEL_24;
                      }

                      v9 = 10184;
                    }

                    else
                    {
                      v9 = 10176;
                    }
                  }

                  else
                  {
                    v9 = 10168;
                  }
                }

                else
                {
                  v9 = 10160;
                }
              }

              else
              {
                v9 = 10152;
              }
            }

            else
            {
              v9 = 10144;
            }
          }

          else
          {
            v9 = 10136;
          }
        }

        else
        {
          v9 = 10128;
        }
      }

      else
      {
        v9 = 10120;
      }
    }

    else
    {
      v9 = 10112;
    }
  }

  else
  {
    v9 = 10104;
  }

  [date timeIntervalSinceDate:self->_lastPowerBudgetChangedTime];
  date = v14;
  *(&self->super.isa + v9) = v10 + *(&self->super.isa + v9);
LABEL_24:
  lastThermalIndex = self->_lastThermalIndex;
  if (lastThermalIndex <= 99)
  {
    if (lastThermalIndex <= 89)
    {
      if (lastThermalIndex <= 79)
      {
        if (lastThermalIndex <= 69)
        {
          if (lastThermalIndex <= 59)
          {
            if (lastThermalIndex <= 49)
            {
              if (lastThermalIndex <= 39)
              {
                if (lastThermalIndex <= 29)
                {
                  if (lastThermalIndex <= 19)
                  {
                    if (lastThermalIndex <= 9)
                    {
                      if (lastThermalIndex < 0)
                      {
                        goto LABEL_47;
                      }

                      v12 = 10272;
                      date = v14;
                    }

                    else
                    {
                      v12 = 10264;
                    }
                  }

                  else
                  {
                    v12 = 10256;
                  }
                }

                else
                {
                  v12 = 10248;
                }
              }

              else
              {
                v12 = 10240;
              }
            }

            else
            {
              v12 = 10232;
            }
          }

          else
          {
            v12 = 10224;
          }
        }

        else
        {
          v12 = 10216;
        }
      }

      else
      {
        v12 = 10208;
      }
    }

    else
    {
      v12 = 10200;
    }
  }

  else
  {
    v12 = 10192;
  }

  [date timeIntervalSinceDate:self->_lastPowerBudgetChangedTime];
  *(&self->super.isa + v12) = v13 + *(&self->super.isa + v12);
LABEL_47:
  [(WiFiUsageSession *)self setLastPowerBudget:change];
  [(WiFiUsageSession *)self setLastThermalIndex:index];
  [(WiFiUsageSession *)self setLastPowerBudgetChangedTime:v14];
}

- (void)bluetoothStateDidChange:(BOOL)change connectedDeviceCount:(unint64_t)count inA2dp:(BOOL)a2dp inSco:(BOOL)sco inUniAoS:(BOOL)s inBiAoS:(BOOL)aoS btAudioBand:(BOOL)band
{
  scoCopy = sco;
  a2dpCopy = a2dp;
  changeCopy = change;
  date = [MEMORY[0x277CBEAA8] date];
  v21 = date;
  if (a2dpCopy)
  {
    [(WiFiUsageSession *)self setA2dpActiveTime:date];
    ++self->_inA2dpEventCount;
  }

  else if (self->_a2dpActiveTime)
  {
    [date timeIntervalSinceDate:?];
    self->_inA2dpDuration = v17 + self->_inA2dpDuration;
    [(WiFiUsageSession *)self setA2dpActiveTime:0];
  }

  if (scoCopy)
  {
    [(WiFiUsageSession *)self setScoActiveTime:v21];
    ++self->_inScoEventCount;
  }

  else if (self->_scoActiveTime)
  {
    [v21 timeIntervalSinceDate:?];
    self->_inScoDuration = v18 + self->_inScoDuration;
    [(WiFiUsageSession *)self setScoActiveTime:0];
  }

  if (count)
  {
    [(WiFiUsageSession *)self setHidPresentTime:v21];
    ++self->_inHidPresentCount;
  }

  else if (self->_hidPresentTime)
  {
    [v21 timeIntervalSinceDate:?];
    self->_inHidPresentDuration = v19 + self->_inHidPresentDuration;
    [(WiFiUsageSession *)self setHidPresentTime:0];
  }

  self->_isA2DPActive = a2dpCopy;
  self->_isSCOActive = scoCopy;
  self->_isUniAoSActive = s;
  self->_isBiAoSActive = aoS;
  if (band)
  {
    v20 = @"5";
  }

  else
  {
    v20 = @"2.4";
  }

  objc_storeStrong(&self->_btAudioBand, v20);
  [(WiFiUsageBssSession *)self->_currentBssSession bluetoothStateDidChange:changeCopy connectedDeviceCount:count inA2dp:a2dpCopy inSco:scoCopy];
}

- (void)awdlStateDidChange:(BOOL)change inMode:(int64_t)mode
{
  changeCopy = change;
  date = [MEMORY[0x277CBEAA8] date];
  v9 = date;
  if (changeCopy)
  {
    [(WiFiUsageSession *)self setAwdlActiveTime:date];
    ++self->_inAwdlEventCount;
  }

  else if (self->_awdlActiveTime)
  {
    [date timeIntervalSinceDate:?];
    self->_inAwdlDuration = v8 + self->_inAwdlDuration;
    [(WiFiUsageSession *)self setAwdlActiveTime:0];
  }

  [(WiFiUsageBssSession *)self->_currentBssSession awdlStateDidChange:changeCopy inMode:mode];
}

- (void)softApStateDidChange:(BOOL)change requester:(id)requester status:(id)status changeReason:(id)reason channelNumber:(unint64_t)number countryCode:(unint64_t)code isHidden:(BOOL)hidden isInfraConnected:(BOOL)self0 isAwdlUp:(BOOL)self1 lowPowerModeDuration:(double)self2 compatibilityMode:(BOOL)self3 requestToUpLatency:(double)self4 idleTimeBeforeTeardownSec:(double)self5 idleTimeAfterLastClientDisconnectedSec:(double)self6
{
  changeCopy = change;
  date = [MEMORY[0x277CBEAA8] date];
  v19 = date;
  if (changeCopy)
  {
    v21 = date;
    date = [(WiFiUsageSession *)self setSoftApActiveTime:date];
    v19 = v21;
    ++self->_inSoftApEventCount;
  }

  else if (self->_softApActiveTime)
  {
    v22 = date;
    [date timeIntervalSinceDate:?];
    self->_inSoftApDuration = v20 + self->_inSoftApDuration;
    date = [(WiFiUsageSession *)self setSoftApActiveTime:0];
    v19 = v22;
  }

  MEMORY[0x2821F96F8](date, v19);
}

- (void)roamingStateDidChange:(BOOL)change reason:(unint64_t)reason andStatus:(unint64_t)status andLatency:(unint64_t)latency andRoamData:(id)data andPingPongStats:(id)stats
{
  changeCopy = change;
  v33 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  statsCopy = stats;
  date = [MEMORY[0x277CBEAA8] date];
  v16 = date;
  if (changeCopy)
  {
    [(WiFiUsageSession *)self setRoamingActiveTime:date];
    ++self->_inRoamEventCount;
    if (self->_lastRoamSuppressionToggled)
    {
      if (!self->_isRoamSuppressionEnabled && !self->_roamsAfterSupprLifted)
      {
        [v16 timeIntervalSinceDate:?];
        self->_inRoamSuppressionWaitForRoamStart = v17 + self->_inRoamSuppressionWaitForRoamStart;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          inRoamSuppressionWaitForRoamStart = self->_inRoamSuppressionWaitForRoamStart;
          v27 = 136315394;
          v28 = "[WiFiUsageSession roamingStateDidChange:reason:andStatus:andLatency:andRoamData:andPingPongStats:]";
          v29 = 2048;
          v30 = inRoamSuppressionWaitForRoamStart;
          _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - incremented inRoamSuppressionWaitForRoamStart:%fs", &v27, 0x16u);
        }
      }
    }

    switch(reason)
    {
      case 0xE0820C00uLL:
        ++self->_roamReasonInitialAssociationCount;
        break;
      case 0xE0820C01uLL:
        ++self->_roamReasonLowRssiCount;
        break;
      case 0xE0820C02uLL:
      case 0xE0820C03uLL:
        ++self->_roamReasonDeauthDisassocCount;
        break;
      case 0xE0820C04uLL:
        ++self->_roamReasonBeaconLostCount;
        break;
      case 0xE0820C06uLL:
        ++self->_roamReasonSteeredByApCount;
        break;
      case 0xE0820C08uLL:
        ++self->_roamReasonBetterCandidateCount;
        break;
      case 0xE0820C09uLL:
      case 0xE0820C0AuLL:
      case 0xE0820C0CuLL:
      case 0xE0820C0FuLL:
        ++self->_roamReasonBetterConditionCount;
        break;
      case 0xE0820C0BuLL:
        ++self->_roamReasonSteeredByBtmCount;
        break;
      case 0xE0820C0EuLL:
        ++self->_roamReasonSteeredByCsaCount;
        break;
      case 0xE0820C13uLL:
        ++self->_roamReasonReassocRequestedCount;
        break;
      case 0xE0820C15uLL:
        ++self->_roamReasonHostTriggeredCount;
        break;
      default:
        ++self->_roamReasonMiscCount;
        break;
    }

    goto LABEL_25;
  }

  if (!self->_roamingActiveTime)
  {
    goto LABEL_25;
  }

  [date timeIntervalSinceDate:?];
  self->_inRoamDuration = v19 + self->_inRoamDuration;
  [(WiFiUsageSession *)self setRoamingActiveTime:0];
  if (self->_lastRoamSuppressionToggled)
  {
    if (!self->_isRoamSuppressionEnabled && !self->_roamsAfterSupprLifted)
    {
      self->_roamsAfterSupprLifted = 1;
      [v16 timeIntervalSinceDate:?];
      self->_inRoamSuppressionWaitForRoamEnd = v20 + self->_inRoamSuppressionWaitForRoamEnd;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        roamsAfterSupprLifted = self->_roamsAfterSupprLifted;
        inRoamSuppressionWaitForRoamEnd = self->_inRoamSuppressionWaitForRoamEnd;
        v27 = 136315650;
        v28 = "[WiFiUsageSession roamingStateDidChange:reason:andStatus:andLatency:andRoamData:andPingPongStats:]";
        v29 = 2048;
        v30 = *&roamsAfterSupprLifted;
        v31 = 2048;
        v32 = inRoamSuppressionWaitForRoamEnd;
        _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - roamsAfterSupprLifted:%lu. incremented inRoamSuppressionWaitForRoamEnd :%fs", &v27, 0x20u);
      }
    }
  }

  if (status - 3766617153u > 0xA)
  {
    goto LABEL_19;
  }

  if (((1 << (status - 65)) & 0x1CF) != 0)
  {
LABEL_21:
    pingPongSequenceIsReassocOnly = 1;
    v24 = 9968;
    goto LABEL_22;
  }

  if (status != 3766617163)
  {
LABEL_19:
    if (status - 3766617091u <= 0xC)
    {
      if (((1 << (status - 3)) & 0x1702) != 0)
      {
        goto LABEL_21;
      }

      if (status == 3766617091)
      {
        pingPongSequenceIsReassocOnly = 1;
        v24 = 9952;
        goto LABEL_22;
      }
    }

    if (status)
    {
      pingPongSequenceIsReassocOnly = 1;
      v24 = 9944;
    }

    else
    {
      ++self->_roamStatusSucceededCount;
      if (!self->_inMotionStartedTime)
      {
        if ([statsCopy pingPongNth] >= 3)
        {
          ++self->_roamPingPongAboveThresholdCount;
          self->_roamPingPongAboveThresholdCountLowRssiOnly += [statsCopy pingPongSequenceIsLowRssiOnly];
        }

        self->_roamPingPongLowRssiAndReassocOnly += [statsCopy pingPongSequenceIsReassocOrLowRSSIOnly];
      }

      pingPongSequenceIsReassocOnly = [statsCopy pingPongSequenceIsReassocOnly];
      v24 = 10008;
    }

    goto LABEL_22;
  }

  pingPongSequenceIsReassocOnly = 1;
  v24 = 9960;
LABEL_22:
  *(&self->super.isa + v24) = (*(&self->super.isa + v24) + pingPongSequenceIsReassocOnly);
  v25 = [dataCopy objectForKey:@"ROAMEDEVENT_FLAGS"];
  v26 = v25;
  if (v25)
  {
    self->_roamIsWNMScoreUsedCount += ([v25 unsignedIntegerValue] >> 6) & 1;
  }

LABEL_25:
}

- (void)roamingARConfigurationDidChange:(id *)change
{
  currentBssSession = self->_currentBssSession;
  v4 = *&change->var5;
  v5[0] = *&change->var0;
  v5[1] = v4;
  [(WiFiUsageBssSession *)currentBssSession roamingARConfigurationDidChange:v5];
}

- (void)updateRssiDiffStats:(id *)stats For:(id)for
{
  forCopy = for;
  var3 = stats->var3;
  var0 = stats->var0;
  forCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"roamNeighsSmllst%@RssiByBandTransition", forCopy];
  v41 = 0;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v36 = 0u;
  v10 = [(WiFiUsageSession *)self valueForKey:forCopy];
  v11 = v10;
  if (v10)
  {
    objc_msgSend_integerByBandTransitionValue(v10);
  }

  else
  {
    v41 = 0;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v36 = 0u;
  }

  v12 = var3 - var0;

  var1 = stats->var1;
  var5 = stats->var5;
  v15 = &v36 + 3 * var1 + var5;
  v17 = v15[72];
  v16 = v15 + 72;
  if (v17 != 1 || v12 < *(&v36 + 3 * var1 + var5))
  {
    *(&v36 + 3 * var1 + var5) = v12;
    *v16 = 1;
    v32 = v38;
    v33 = v39;
    v34 = v40;
    v35 = v41;
    v30 = v36;
    v31 = v37;
    v18 = [MEMORY[0x277CCAE60] valuewithIntegerByBandTransition:&v30];
    [(WiFiUsageSession *)self setValue:v18 forKey:forCopy];
  }

  forCopy2 = [MEMORY[0x277CCACA8] stringWithFormat:@"roamNeighsLrgst%@RssiByBandTransition", forCopy];

  v35 = 0;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v30 = 0u;
  v20 = [(WiFiUsageSession *)self valueForKey:forCopy2];
  v21 = v20;
  if (v20)
  {
    objc_msgSend_integerByBandTransitionValue(v20);
  }

  else
  {
    v35 = 0;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v30 = 0u;
  }

  v22 = stats->var1;
  v23 = stats->var5;
  v24 = &v30 + 3 * v22 + v23;
  v26 = v24[72];
  v25 = v24 + 72;
  if (v26 != 1 || v12 > *(&v30 + 3 * v22 + v23))
  {
    *(&v30 + 3 * v22 + v23) = v12;
    *v25 = 1;
    v28[2] = v32;
    v28[3] = v33;
    v28[4] = v34;
    v29 = v35;
    v28[0] = v30;
    v28[1] = v31;
    v27 = [MEMORY[0x277CCAE60] valuewithIntegerByBandTransition:v28];
    [(WiFiUsageSession *)self setValue:v27 forKey:forCopy2];
  }
}

- (void)roamCandidatesStatsDidUpdate:(id *)update
{
  v62 = *MEMORY[0x277D85DE8];
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  allKeys = [update->var7 allKeys];
  v6 = [allKeys countByEnumeratingWithState:&v56 objects:v61 count:16];
  if (v6)
  {
    v7 = *v57;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v57 != v7)
        {
          objc_enumerationMutation(allKeys);
        }

        v9 = *(*(&v56 + 1) + 8 * i);
        v10 = [(NSMutableDictionary *)self->_roamNeighborsByBand objectForKey:v9];
        if (!v10)
        {
          v10 = objc_opt_new();
          [(NSMutableDictionary *)self->_roamNeighborsByBand setObject:v10 forKeyedSubscript:v9];
        }

        v11 = [update->var7 objectForKeyedSubscript:v9];
        allObjects = [v11 allObjects];
        [v10 addObjectsFromArray:allObjects];
      }

      v6 = [allKeys countByEnumeratingWithState:&v56 objects:v61 count:16];
    }

    while (v6);
  }

  minCandidatesCount = self->_minCandidatesCount;
  if (minCandidatesCount >= update->var6)
  {
    var6 = update->var6;
  }

  else
  {
    var6 = self->_minCandidatesCount;
  }

  if (minCandidatesCount)
  {
    v15 = var6;
  }

  else
  {
    v15 = update->var6;
  }

  self->_minCandidatesCount = v15;
  maxCandidatesCount = self->_maxCandidatesCount;
  if (maxCandidatesCount <= update->var6)
  {
    v17 = update->var6;
  }

  else
  {
    v17 = self->_maxCandidatesCount;
  }

  if (maxCandidatesCount)
  {
    v18 = v17;
  }

  else
  {
    v18 = update->var6;
  }

  self->_maxCandidatesCount = v18;
  if (update->var2 == update->var0)
  {
    ++self->_currentRSSIStrongestCount;
  }

  var4 = update->var4;
  v20 = &self->super.isa + var4;
  v20[1448] = (v20[1448] + 1);
  v21 = self + var4;
  v21[11608] = 1;
  v20[1452] = update->var2;
  v21[11640] = 1;
  var0 = update->var0;
  if (update->var0 >= -94)
  {
    var3 = update->var3;
    if (var3 >= -94)
    {
      if (var3 <= var0)
      {
        v24 = &v55;
      }

      else
      {
        v24 = &v54;
      }

      if (var3 <= var0)
      {
        v25 = @"CurrentToNextBest";
      }

      else
      {
        v25 = @"CurrentToBest";
      }

      v26 = *&update->var2;
      *v24 = *&update->var0;
      *(v24 + 1) = v26;
      *(v24 + 2) = *&update->var4;
      *(v24 + 6) = update->var7;
      *(v24 + 7) = update->var8;
      v24[64] = update->var9;
      [(WiFiUsageSession *)self updateRssiDiffStats:v24 For:v25];
    }
  }

  v52 = 0u;
  v53 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  allKeys2 = [update->var7 allKeys];
  v28 = [allKeys2 countByEnumeratingWithState:&v48 objects:v60 count:16];
  if (v28)
  {
    v29 = *v49;
    do
    {
      for (j = 0; j != v28; ++j)
      {
        if (*v49 != v29)
        {
          objc_enumerationMutation(allKeys2);
        }

        v31 = *(*(&v48 + 1) + 8 * j);
        unsignedIntegerValue = [v31 unsignedIntegerValue];
        if (unsignedIntegerValue <= 3)
        {
          v33 = [update->var7 objectForKeyedSubscript:v31];
          *(&v52 + unsignedIntegerValue) = [v33 count];

          *(&v53 + unsignedIntegerValue + 8) = 1;
        }
      }

      v28 = [allKeys2 countByEnumeratingWithState:&v48 objects:v60 count:16];
    }

    while (v28);
  }

  v47[0] = v52;
  v47[1] = v53;
  v34 = [IntegerByBandObj integerByBandWith:v47 withCap:1];
  v35 = 10096;
  if (update->var9)
  {
    v35 = 10088;
  }

  v36 = *(&self->super.isa + v35);
  v37 = [v36 objectForKeyedSubscript:v34];
  if (!v37)
  {
    v37 = objc_opt_new();
    [v36 setObject:v37 forKeyedSubscript:v34];
  }

  [v37 increment];
  currentBssSession = self->_currentBssSession;
  v39 = *&update->var2;
  v43[0] = *&update->var0;
  v43[1] = v39;
  v43[2] = *&update->var4;
  v40 = update->var7;
  v44 = v40;
  v41 = update->var8;
  v45 = v41;
  var9 = update->var9;
  if (currentBssSession)
  {
    [(WiFiUsageBssSession *)currentBssSession roamCandidatesStatsDidUpdate:v43];
  }

  else
  {
    v42 = v41;
  }
}

- (void)scanningStateDidChange:(BOOL)change client:(unint64_t)client neighborBSS:(id)s otherBSS:(id)sS
{
  changeCopy = change;
  sCopy = s;
  sSCopy = sS;
  date = [MEMORY[0x277CBEAA8] date];
  v12 = date;
  if (changeCopy)
  {
    [(WiFiUsageSession *)self setScanningActiveTime:date];
    ++self->_inScanEventCount;
    if (client - 1 <= 0x19)
    {
      ++self->_perClientScanCount[client];
    }

    if ((client - 1 < 7 || client - 20 <= 1) && self->_joinScanLatencyFromDriverAvailability == 0.0 && self->_lastDriverAvailableTime)
    {
      [v12 timeIntervalSinceDate:?];
      [(WiFiUsageSession *)self setJoinScanLatencyFromDriverAvailability:?];
    }
  }

  else if (self->_scanningActiveTime)
  {
    [date timeIntervalSinceDate:?];
    self->_inScanDuration = v13 + self->_inScanDuration;
    [(WiFiUsageSession *)self setScanningActiveTime:0];
  }

  [(WiFiUsageBssSession *)self->_currentBssSession scanningStateDidChange:changeCopy client:client neighborBSS:sCopy otherBSS:sSCopy];
}

- (void)powerStateDidChange:(BOOL)change
{
  changeCopy = change;
  date = [MEMORY[0x277CBEAA8] date];
  self->_poweredOn = changeCopy;
  ++self->_powerStateChangedCount;
  lastPowerStateChangedTime = self->_lastPowerStateChangedTime;
  v10 = date;
  if (changeCopy)
  {
    [date timeIntervalSinceDate:lastPowerStateChangedTime];
    v7 = v10;
    if (v8 < 5.0)
    {
      ++self->_powerToggleEventCount;
    }
  }

  else
  {
    v7 = date;
    if (lastPowerStateChangedTime)
    {
      [date timeIntervalSinceDate:?];
      v7 = v10;
      self->_poweredOnDuration = v9 + self->_poweredOnDuration;
    }
  }

  [(WiFiUsageSession *)self setLastPowerStateChangedTime:v7];
}

- (void)controlCenterStateDidChange:(BOOL)change withKnownLocation:(BOOL)location
{
  changeCopy = change;
  date = [MEMORY[0x277CBEAA8] date];
  v7 = date;
  self->_controlCenterEnabled = changeCopy;
  ++self->_controlCenterStateChangedCount;
  v10 = date;
  if (changeCopy)
  {
    [date timeIntervalSinceDate:self->_lastControlCenterStateChangedTime];
    if (v8 < 5.0)
    {
      ++self->_controlCenterToggleEventCount;
    }

    v7 = v10;
    if (self->_lastControlCenterStateChangedTime)
    {
      [v10 timeIntervalSinceDate:?];
      v7 = v10;
      self->_inControlCenterAutoJoinDisabledDuration = v9 + self->_inControlCenterAutoJoinDisabledDuration;
    }
  }

  [(WiFiUsageSession *)self setLastControlCenterStateChangedTime:v7];
}

- (void)cellularDataStatusDidChange:(id)change inAirplaneMode:(BOOL)mode
{
  modeCopy = mode;
  if (self->_airplaneModeEnabled != mode)
  {
    ++self->_airplaneModeStateChangedCount;
  }

  changeCopy = change;
  [(WiFiUsageSession *)self setAirplaneModeEnabled:modeCopy];
  [(WiFiUsageSession *)self setCellularDataStatus:changeCopy];
}

- (void)cellularFallbackStateDidChange:(BOOL)change
{
  changeCopy = change;
  date = [MEMORY[0x277CBEAA8] date];
  v6 = date;
  self->_cellularFallbackEnabled = changeCopy;
  ++self->_cellularFallbackStateChangedCount;
  v8 = date;
  if (!changeCopy && self->_lastCellularFallbackStateChangedTime)
  {
    [date timeIntervalSinceDate:?];
    v6 = v8;
    self->_inCellularFallbackDuration = v7 + self->_inCellularFallbackDuration;
  }

  [(WiFiUsageSession *)self setLastCellularFallbackStateChangedTime:v6];
  [(WiFiUsageBssSession *)self->_currentBssSession cellularFallbackStateDidChange:changeCopy];
}

- (void)cellularOutrankingStateDidChange:(BOOL)change
{
  changeCopy = change;
  date = [MEMORY[0x277CBEAA8] date];
  v6 = date;
  self->_cellularOutrankingEnabled = changeCopy;
  v8 = date;
  if (!changeCopy)
  {
    ++self->_cellularOutrankingStateChangedCount;
    if (self->_lastCellularOutrankingStateChangedTime)
    {
      [date timeIntervalSinceDate:?];
      v6 = v8;
      self->_inCellularOutrankingDuration = v7 + self->_inCellularOutrankingDuration;
    }
  }

  [(WiFiUsageSession *)self setLastCellularOutrankingStateChangedTime:v6];
  [(WiFiUsageBssSession *)self->_currentBssSession cellularOutrankingStateDidChange:changeCopy];
}

- (void)faultEventDetected:(unint64_t)detected event:(id)event
{
  date = [MEMORY[0x277CBEAA8] date];
  if (detected - 1 <= 0x24)
  {
    ++self->_faultReasonCount[detected];
  }

  if (detected == 7)
  {
LABEL_6:
    [(WiFiUsageSession *)self setLastChipResetTime:date];
    if (self->_driverAvailabilityLifespan == 0.0)
    {
      [date timeIntervalSinceDate:self->_lastDriverAvailableTime];
      [(WiFiUsageSession *)self setDriverAvailabilityLifespan:?];
    }

    goto LABEL_10;
  }

  if (detected != 24)
  {
    if (detected != 21)
    {
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  [(WiFiUsageSession *)self setLastDriverTerminationTime:date];
  if (self->_driverProcessLifespan == 0.0)
  {
    [date timeIntervalSinceDate:self->_lastDriverAvailableTime];
    [(WiFiUsageSession *)self setDriverProcessLifespan:?];
  }

LABEL_10:
  [(WiFiUsageBssSession *)self->_currentBssSession faultEventDetected:detected];
}

- (void)triggerDisconnectAlerted:(BOOL)alerted confirmed:(BOOL)confirmed executed:(BOOL)executed
{
  if (!alerted)
  {
    if (!confirmed)
    {
      goto LABEL_3;
    }

LABEL_7:
    ++self->_triggerDisconnectConfirmedCount;
    if (!executed)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  ++self->_triggerDisconnectAlertedCount;
  if (confirmed)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (executed)
  {
LABEL_4:
    ++self->_triggerDisconnectExecutedCount;
  }

LABEL_5:
  [WiFiUsageBssSession triggerDisconnectAlerted:"triggerDisconnectAlerted:confirmed:executed:" confirmed:? executed:?];
}

- (void)tdLogic_alertedBy:(int)by
{
  v11 = *MEMORY[0x277D85DE8];
  if (!self->_isInTDEval)
  {
    ++self->_tdEvalStartedCount;
    v4 = [WiFiUsagePrivacyFilter getLabelForTDTrigger:*&by];
    if (![(WiFiUsageSession *)self incrementCountWithPrefix:@"tdEvalStartedBy" name:v4]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315650;
      v6 = "[WiFiUsageSession tdLogic_alertedBy:]";
      v7 = 2112;
      v8 = v4;
      v9 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - tdEval started by %@ but no counter for this trigger in %@", &v5, 0x20u);
    }

    [(WiFiUsageSession *)self setIsInTDEval:1];
  }
}

- (void)tdLogic_end:(int)logic_end evalTime:(double)time rssi:(int64_t)rssi roamTime:(double)roamTime
{
  roamTime = [WiFiUsagePrivacyFilter getLabelForTDTrigger:*&logic_end, time, roamTime];
  v9 = [MEMORY[0x277CCABB0] numberWithDouble:time];
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:rssi];
  NSLog(&cfstr_STdevalEndedUp_0.isa, "[WiFiUsageSession tdLogic_end:evalTime:rssi:roamTime:]", roamTime, v9, v10);

  [(WiFiUsageSession *)self setIsInTDEval:0];
  ++self->_tdEvalEndedCount;
  self->_tdEvalCumulativeDuration = self->_tdEvalCumulativeDuration + time;
}

- (BOOL)incrementCountWithPrefix:(id)prefix name:(id)name
{
  prefixCopy = prefix;
  nameCopy = name;
  if (nameCopy)
  {
    v8 = &stru_28487EF20;
    if (prefixCopy)
    {
      v8 = prefixCopy;
    }

    nameCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@Count", v8, nameCopy];
    v10 = [(WiFiUsageSession *)self valueForKey:nameCopy];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      unsignedIntegerValue = [v10 unsignedIntegerValue];
      v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue + 1];
      [(WiFiUsageSession *)self setValue:v12 forKey:nameCopy];
    }

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)countWithPrefix:(id)prefix name:(id)name
{
  prefixCopy = prefix;
  nameCopy = name;
  if (nameCopy)
  {
    v8 = &stru_28487EF20;
    if (prefixCopy)
    {
      v8 = prefixCopy;
    }

    nameCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@Count", v8, nameCopy];
    v10 = [(WiFiUsageSession *)self valueForKey:nameCopy];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)poorLinkSessionStats:(id)stats
{
  v20 = *MEMORY[0x277D85DE8];
  statsCopy = stats;
  if ([statsCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = statsCopy;
    ++self->_inPoorLinkSessionCount;
    [v5 sessionDuration];
    self->_inPoorLinkSessionDuration = v6 + self->_inPoorLinkSessionDuration;
    if (self->_lastJoinWhileDeferForTD && [v5 tdExecuted])
    {
      v7 = vaddq_s64(*&self->_tdAfterJoinAfterTDCount, vdupq_n_s64(1uLL));
      *&self->_tdAfterJoinAfterTDCount = v7;
      if (self->_max_subsequentTdAfterJoinAfterTDCount < v7.i64[1])
      {
        self->_max_subsequentTdAfterJoinAfterTDCount = v7.u64[1];
      }
    }

    else
    {
      current_subsequentTdAfterJoinAfterTDCount = self->_current_subsequentTdAfterJoinAfterTDCount;
      if (current_subsequentTdAfterJoinAfterTDCount)
      {
        if (self->_min_subsequentTdAfterJoinAfterTDCount > current_subsequentTdAfterJoinAfterTDCount)
        {
          self->_min_subsequentTdAfterJoinAfterTDCount = current_subsequentTdAfterJoinAfterTDCount;
        }

        self->_current_subsequentTdAfterJoinAfterTDCount = 0;
      }
    }

    v9 = +[WiFiUsagePoorLinkSession sessionStartedBy:](WiFiUsagePoorLinkSession, "sessionStartedBy:", [v5 sessionStartedBy]);
    v10 = [(WiFiUsageSession *)self incrementCountWithPrefix:@"tdSessionStartedBy" name:v9];

    if (!v10 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v11 = +[WiFiUsagePoorLinkSession sessionStartedBy:](WiFiUsagePoorLinkSession, "sessionStartedBy:", [v5 sessionStartedBy]);
      v12 = 136315906;
      v13 = "[WiFiUsageSession poorLinkSessionStats:]";
      v14 = 2112;
      v15 = v11;
      v16 = 1024;
      sessionStartedBy = [v5 sessionStartedBy];
      v18 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - tdSession started by %@ (%u) but no counter for this trigger in %@", &v12, 0x26u);
    }

    self->_lastJoinWhileDeferForTD = [v5 nextJoinWhileDeferJoin];
  }
}

- (void)summarizeSession
{
  v63 = *MEMORY[0x277D85DE8];
  date = [MEMORY[0x277CBEAA8] date];
  if (self->_sessionStartTime)
  {
    sessionEndTime = self->_sessionEndTime;
    if (!sessionEndTime)
    {
      sessionEndTime = date;
    }

    [(NSDate *)sessionEndTime timeIntervalSinceDate:?];
    self->_sessionDuration = v5;
  }

  if (self->_mediaStartedTime)
  {
    [(NSDate *)date timeIntervalSinceDate:?];
    self->_mediaPlaybackDuration = v6 + self->_mediaPlaybackDuration;
  }

  if (self->_chargingStartedTime)
  {
    [(NSDate *)date timeIntervalSinceDate:?];
    self->_chargingDuration = v7 + self->_chargingDuration;
  }

  if (self->_companionConnectionTime)
  {
    [(NSDate *)date timeIntervalSinceDate:?];
    self->_companionConnectedDuration = v8 + self->_companionConnectedDuration;
  }

  if (self->_wowStateEntryTime)
  {
    [(NSDate *)date timeIntervalSinceDate:?];
    self->_inWowStateDuration = v9 + self->_inWowStateDuration;
  }

  if (self->_lpasStateEntryTime)
  {
    [(NSDate *)date timeIntervalSinceDate:?];
    self->_inLpasStateDuration = v10 + self->_inLpasStateDuration;
  }

  if (self->_lowPowerStateEntryTime)
  {
    [(NSDate *)date timeIntervalSinceDate:?];
    self->_inLowPowerStateDuration = v11 + self->_inLowPowerStateDuration;
  }

  if (self->_batterySaverStateEntryTime)
  {
    [(NSDate *)date timeIntervalSinceDate:?];
    self->_inBatterySaverStateDuration = v12 + self->_inBatterySaverStateDuration;
  }

  if (self->_callStartedTime)
  {
    [(NSDate *)date timeIntervalSinceDate:?];
    self->_inCallDuration = v13 + self->_inCallDuration;
  }

  if (self->_inVehicleEntryTime)
  {
    [(NSDate *)date timeIntervalSinceDate:?];
    self->_inVehicleDuration = v14 + self->_inVehicleDuration;
  }

  if (self->_inMotionStartedTime)
  {
    [(NSDate *)date timeIntervalSinceDate:?];
    self->_inMotionDuration = v15 + self->_inMotionDuration;
  }

  if (self->_a2dpActiveTime)
  {
    [(NSDate *)date timeIntervalSinceDate:?];
    self->_inA2dpDuration = v16 + self->_inA2dpDuration;
  }

  if (self->_scoActiveTime)
  {
    [(NSDate *)date timeIntervalSinceDate:?];
    self->_inScoDuration = v17 + self->_inScoDuration;
  }

  if (self->_hidPresentTime)
  {
    [(NSDate *)date timeIntervalSinceDate:?];
    self->_inHidPresentDuration = v18 + self->_inHidPresentDuration;
  }

  if (self->_awdlActiveTime)
  {
    [(NSDate *)date timeIntervalSinceDate:?];
    self->_inAwdlDuration = v19 + self->_inAwdlDuration;
  }

  if (self->_roamingActiveTime)
  {
    [(NSDate *)date timeIntervalSinceDate:?];
    self->_inRoamDuration = v20 + self->_inRoamDuration;
  }

  if (self->_lastRoamSuppressionToggled && self->_isRoamSuppressionEnabled)
  {
    [(NSDate *)date timeIntervalSinceDate:?];
    self->_inRoamSuppressionEnabled = v21 + self->_inRoamSuppressionEnabled;
  }

  if (self->_scanningActiveTime)
  {
    [(NSDate *)date timeIntervalSinceDate:?];
    self->_inScanDuration = v22 + self->_inScanDuration;
  }

  if (self->_softApActiveTime)
  {
    [(NSDate *)date timeIntervalSinceDate:?];
    self->_inSoftApDuration = v23 + self->_inSoftApDuration;
  }

  if (self->_lastSystemWakeTime)
  {
    [(NSDate *)date timeIntervalSinceDate:?];
    self->_systemAwakeDuration = v24 + self->_systemAwakeDuration;
    [(WiFiUsageSession *)self setLastSystemWakeTime:date];
  }

  if (self->_poweredOn)
  {
    if (self->_lastPowerStateChangedTime)
    {
      [(NSDate *)date timeIntervalSinceDate:?];
      self->_poweredOnDuration = v25 + self->_poweredOnDuration;
    }

    [(WiFiUsageSession *)self setLastPowerStateChangedTime:date];
  }

  if (self->_linkRecoveryDisabledTime)
  {
    [(NSDate *)date timeIntervalSinceDate:?];
    self->_linkRecoveryDisabledDuration = v26 + self->_linkRecoveryDisabledDuration;
  }

  [(WiFiUsageSession *)self tallyAssociatedDuration:date];
  if (self->_lastBssChangedTime)
  {
    networkDetails = self->_networkDetails;
    if (networkDetails)
    {
      connectedBss = [(WiFiUsageNetworkDetails *)networkDetails connectedBss];
      -[WiFiUsageSession updateBandUsageFor:With:](self, "updateBandUsageFor:With:", [connectedBss band], date);
    }

    [(WiFiUsageSession *)self setLastBssChangedTime:date];
  }

  if (self->_cellularFallbackEnabled)
  {
    if (self->_lastCellularFallbackStateChangedTime)
    {
      [(NSDate *)date timeIntervalSinceDate:?];
      self->_inCellularFallbackDuration = v29 + self->_inCellularFallbackDuration;
    }

    [(WiFiUsageSession *)self setLastCellularFallbackStateChangedTime:date];
  }

  if (self->_cellularOutrankingEnabled)
  {
    if (self->_lastCellularOutrankingStateChangedTime)
    {
      [(NSDate *)date timeIntervalSinceDate:?];
      self->_inCellularOutrankingDuration = v30 + self->_inCellularOutrankingDuration;
    }

    [(WiFiUsageSession *)self setLastCellularOutrankingStateChangedTime:date];
  }

  if (!self->_controlCenterEnabled)
  {
    if (self->_lastControlCenterStateChangedTime)
    {
      [(NSDate *)date timeIntervalSinceDate:?];
      self->_inControlCenterAutoJoinDisabledDuration = v31 + self->_inControlCenterAutoJoinDisabledDuration;
    }

    [(WiFiUsageSession *)self setLastControlCenterStateChangedTime:date];
  }

  v32 = [WiFiUsageInterfaceStats statsForInterfaceName:self->_interfaceName];
  v33 = [WiFiUsageInterfaceStats statsForInterfaceName:self->_secondaryInterfaceName];
  -[WiFiUsageSession setNetInterfaceTxBytes:](self, "setNetInterfaceTxBytes:", [v32 txBytes] - -[WiFiUsageInterfaceStats txBytes](self->_ifStatsAtStart, "txBytes"));
  -[WiFiUsageSession setNetInterfaceRxBytes:](self, "setNetInterfaceRxBytes:", [v32 rxBytes] - -[WiFiUsageInterfaceStats rxBytes](self->_ifStatsAtStart, "rxBytes"));
  -[WiFiUsageSession setSecondaryInterfaceTxBytes:](self, "setSecondaryInterfaceTxBytes:", [v33 txBytes] - -[WiFiUsageInterfaceStats txBytes](self->_secondaryIfStatsAtStart, "txBytes"));
  -[WiFiUsageSession setSecondaryInterfaceRxBytes:](self, "setSecondaryInterfaceRxBytes:", [v33 rxBytes] - -[WiFiUsageInterfaceStats rxBytes](self->_secondaryIfStatsAtStart, "rxBytes"));
  if ([(NSDate *)self->_lastPowerBudgetChangedTime isEqualToDate:self->_sessionStartTime])
  {
    [(WiFiUsageSession *)self powerBudgetDidChange:self->_lastPowerBudget andThermalIndex:self->_lastThermalIndex];
  }

  if (self->_isCompatibilityModeEnabled)
  {
    [(NSDate *)date timeIntervalSinceDate:self->_lastCompatibilityModeChangedTime];
    self->_inCompatibilityModeEnabledDuration = v34 + self->_inCompatibilityModeEnabledDuration;
    v35 = MEMORY[0x277D86220];
    v36 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      compatibilityModeChangeCount = self->_compatibilityModeChangeCount;
      v53 = 136315394;
      v54 = "[WiFiUsageSession summarizeSession]";
      v55 = 2048;
      selfCopy2 = compatibilityModeChangeCount;
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - _compatibilityModeChangeCount:%lu", &v53, 0x16u);
    }
  }

  disable6eMode = [(WiFiUsageNetworkDetails *)self->_networkDetails disable6eMode];
  if ([disable6eMode isEqualToString:@"off"])
  {
    lastNetwork6eDisableModeChangedTime = self->_lastNetwork6eDisableModeChangedTime;

    if (lastNetwork6eDisableModeChangedTime)
    {
      [(NSDate *)date timeIntervalSinceDate:self->_lastNetwork6eDisableModeChangedTime];
      self->_inNetwork6eModeOffDuration = v40 + self->_inNetwork6eModeOffDuration;
    }
  }

  else
  {
  }

  v41 = MEMORY[0x277D86220];
  v42 = MEMORY[0x277D86220];
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    inNetwork6eModeOffDuration = self->_inNetwork6eModeOffDuration;
    v44 = self->_lastNetwork6eDisableModeChangedTime;
    sessionDuration = self->_sessionDuration;
    v53 = 136316162;
    v54 = "[WiFiUsageSession summarizeSession]";
    v55 = 2112;
    selfCopy2 = self;
    v57 = 2048;
    v58 = inNetwork6eModeOffDuration;
    v59 = 2112;
    v60 = v44;
    v61 = 2048;
    v62 = sessionDuration;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s on %@ - _inNetwork6eModeOffDuration:%fs (lastNetwork6eDisableModedChangedTime:%@ sessionDuration:%fs)", &v53, 0x34u);
  }

  if ([(WiFiUsageSession *)self useSavedJoinStats]&& self->_savedLastJoinReason != -1)
  {
    [(WiFiUsageSession *)self setJoinStateChangedCount:self->_savedJoinStateChangedCount];
    [(WiFiUsageSession *)self setLastJoinReason:self->_savedLastJoinReason];
    [(WiFiUsageSession *)self setLastJoinFailure:self->_savedLastJoinFailure];
    [(WiFiUsageSession *)self setPreviousDisconnectReason:self->_savedPreviousDisconnectReason];
    [(WiFiUsageSession *)self setInCoexRealTimeAtLastJoin:self->_savedInCoexRealTimeAtLastJoin];
    [(WiFiUsageSession *)self setPrevJoinReason:self->_savedPrevJoinReason];
    [(WiFiUsageSession *)self setTimeSincePrevJoin:self->_savedTimeSincePrevJoin];
    v46 = *&self->_savedJoinReasonCount[10];
    *&self->_joinReasonCount[8] = *&self->_savedJoinReasonCount[8];
    *&self->_joinReasonCount[10] = v46;
    *&self->_joinReasonCount[12] = *&self->_savedJoinReasonCount[12];
    self->_joinReasonCount[14] = self->_savedJoinReasonCount[14];
    v47 = *&self->_savedJoinReasonCount[2];
    *self->_joinReasonCount = *self->_savedJoinReasonCount;
    *&self->_joinReasonCount[2] = v47;
    v48 = *&self->_savedJoinReasonCount[6];
    *&self->_joinReasonCount[4] = *&self->_savedJoinReasonCount[4];
    *&self->_joinReasonCount[6] = v48;
    v49 = v41;
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      v50 = [objc_opt_class() joinReasonString:self->_lastJoinReason];
      v51 = [objc_opt_class() joinReasonString:self->_savedLastJoinReason];
      v53 = 136315906;
      v54 = "[WiFiUsageSession summarizeSession]";
      v55 = 2112;
      selfCopy2 = self;
      v57 = 2112;
      v58 = *&v50;
      v59 = 2112;
      v60 = v51;
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s on %@ _lastJoinReason:%@ _savedLastJoinReason:%@", &v53, 0x2Au);
    }
  }

  if (self->_anyUsbDeviceConnected)
  {
    [(WiFiUsageSession *)self updateUsbInsertedDuration:self->_sessionEndTime];
  }

  if (self->_lastAWDLSequenceUpdate)
  {
    [(WiFiUsageSession *)self tallyInfraScoreDuration:self->_inAWDL_lastInfraScore until:date];
    [(WiFiUsageSession *)self tallyP2PScoreDuration:date until:self->_inAWDL_lastP2PScore];
    objc_storeStrong(&self->_lastAWDLSequenceUpdate, date);
  }

  if (self->_lastLinkStateChangedTime)
  {
    if (!self->_isAssociated)
    {
      [(NSDate *)date timeIntervalSinceDate:?];
      if (v52 > self->_longestUnassociatedDuration)
      {
        self->_longestUnassociatedDuration = v52;
      }
    }
  }
}

- (void)sessionDidEnd
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = &self->_disconnectReasonCount[928];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(v3 + 880);
    v13 = "[WiFiUsageSession sessionDidEnd]";
    *buf = 136315650;
    if (v4)
    {
      v5 = "YES";
    }

    else
    {
      v5 = "NO";
    }

    v14 = 2112;
    selfCopy = self;
    v16 = 2080;
    v17 = v5;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s on %@ deferCompletion=%s", buf, 0x20u);
  }

  if (*(v3 + 872) == 1)
  {
    [(WiFiUsageSession *)self setIsSessionActive:0];
    date = [MEMORY[0x277CBEAA8] date];
    [(WiFiUsageSession *)self setSessionEndTime:date];

    [(WiFiUsageSession *)self summarizeSession];
    if ((v3[110] & 1) == 0)
    {
      if (self->_completionHandler)
      {
        if (self->_completionQueue)
        {
          v7 = [(WiFiUsageSession *)self copy];
          v8 = v7[1443];
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __33__WiFiUsageSession_sessionDidEnd__block_invoke;
          block[3] = &unk_2789C6630;
          v11 = v7;
          v9 = v7;
          dispatch_async(v8, block);
        }
      }
    }
  }
}

- (id)sessionName
{
  type = self->_type;
  if (type > 0xA)
  {
    return @"Unknown";
  }

  else
  {
    return off_2789C7EC8[type];
  }
}

+ (id)joinReasonString:(unint64_t)string
{
  if (string + 1 >= 0x10)
  {
    string = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown=%u", string];
  }

  else
  {
    string = off_2789C7F20[string + 1];
  }

  return string;
}

+ (id)disconnectReasonString:(unint64_t)string
{
  if (string <= 5)
  {
    if (string <= 1)
    {
      if (string == -1)
      {
        v4 = @"Uninitialized";
      }

      else if (string)
      {
        if (string == 1)
        {
          v4 = @"Deauth";
        }

        else
        {
LABEL_39:
          if (string > 0x3E7)
          {
            [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown=%u", string];
          }

          else
          {
            [MEMORY[0x277CCACA8] stringWithCString:convertLinkChangeReasonToString()];
          }
          v4 = ;
        }
      }

      else
      {
        v4 = @"None";
      }
    }

    else if (string > 3)
    {
      if (string == 4)
      {
        v4 = @"SystemSleep";
      }

      else
      {
        v4 = @"PoweredOff";
      }
    }

    else if (string == 2)
    {
      v4 = @"BeaconLoss";
    }

    else
    {
      v4 = @"Internal";
    }
  }

  else
  {
    switch(string)
    {
      case 0x3E8uLL:
        v4 = @"TriggerDisconnect";

        break;
      case 0x3E9uLL:
        v4 = @"Application";

        break;
      case 0x3EAuLL:
        v4 = @"TemporarilyDisabled";

        break;
      case 0x3EBuLL:
        v4 = @"PreferenceChanged";

        break;
      case 0x3ECuLL:
        v4 = @"DecryptFailure";

        break;
      case 0x3EDuLL:
        v4 = @"NotPrimary";

        break;
      case 0x3EEuLL:
        v4 = @"Thermal";

        break;
      case 0x3EFuLL:
        v4 = @"InternetSharing";

        break;
      case 0x3F0uLL:
        v4 = @"Settings";

        break;
      case 0x3F1uLL:
        v4 = @"Misc";

        break;
      case 0x3F2uLL:
        v4 = @"EapRestart";

        break;
      case 0x3F3uLL:
        v4 = @"ControlCenter";

        break;
      case 0x3F4uLL:
        v4 = @"EapFailure";

        break;
      case 0x3F5uLL:
        v4 = @"Transition";

        break;
      case 0x3F6uLL:
        v4 = @"AutoUnlock";

        break;
      case 0x3F7uLL:
        v4 = @"Captive";

        break;
      case 0x3F8uLL:
        v4 = @"UserNotification";

        break;
      case 0x3F9uLL:
        v4 = @"BssSteering";

        break;
      case 0x3FAuLL:
        v4 = @"HotspotAssociation";

        break;
      case 0x3FBuLL:
        v4 = @"HotspotTransition";

        break;
      case 0x3FCuLL:
        v4 = @"BssChanged";

        break;
      case 0x3FDuLL:
        v4 = @"CarPlayDisabled";

        break;
      case 0x3FEuLL:
        v4 = @"BatterySaverMode";

        break;
      case 0x3FFuLL:
        v4 = @"AirPlay";

        break;
      case 0x400uLL:
        v4 = @"6EEnabled";

        break;
      case 0x401uLL:
        v4 = @"6EDisabled";

        break;
      case 0x402uLL:
        v4 = @"ColocatedUserJoin";

        break;
      case 0x403uLL:
        v4 = @"InfraRelayDisconnect";

        break;
      case 0x404uLL:
        v4 = @"P2PRealTimeInitiated";

        break;
      case 0x405uLL:
        v4 = @"SleepOnCaptive";

        break;
      case 0x406uLL:
        v4 = @"ShortLease";

        break;
      case 0x407uLL:
        v4 = @"AutoJoinDisabled";

        break;
      case 0x408uLL:
        v4 = @"SleepDenylisted";

        break;
      case 0x409uLL:
        v4 = @"UnspecifiedClientDisconnect";

        break;
      case 0x40AuLL:
        v4 = @"HotspotConnectionInactive";

        break;
      case 0x40BuLL:
        v4 = @"SharingSilentRepair";

        break;
      default:
        if (string == 6)
        {
          v4 = @"JoinFailure";
        }

        else
        {
          if (string != 7)
          {
            goto LABEL_39;
          }

          v4 = @"ColocatedNetworkTransition";
        }

        break;
    }
  }

  return v4;
}

+ (BOOL)isDriverUnavailabilityReasonVoluntary:(int)voluntary subReason:(int)reason orReasonString:(id)string
{
  v7 = (voluntary + 528345087) < 4 || voluntary == -528340989 || voluntary == -528336891;
  v8 = reason == -528340989 || v7;
  return [string isEqualToString:@"Driver Booted"] | v8;
}

- (id)eventDictionary:(BOOL)dictionary
{
  dictionaryCopy = dictionary;
  v5 = &self->_disconnectReasonCount[928];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  sessionName = [(WiFiUsageSession *)self sessionName];
  [dictionary setObject:sessionName forKeyedSubscript:@"SessionName"];

  v8 = [WiFiUsagePrivacyFilter numberWithDuration:self->_sessionDuration];
  [dictionary setObject:v8 forKeyedSubscript:@"SessionDuration"];

  v9 = [WiFiUsagePrivacyFilter getBinTimeInterval:1 As:self->_sessionDuration];
  [dictionary setObject:v9 forKeyedSubscript:@"SessionDurationAsString"];

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_sessionPid];
  [dictionary setObject:v10 forKeyedSubscript:@"SessionPid"];

  v11 = [WiFiUsagePrivacyFilter numberWithDuration:self->_sessionTimeSinceLastSession];
  [dictionary setObject:v11 forKeyedSubscript:@"SessionTimeSinceLastSession"];

  [dictionary setObject:self->_interfaceName forKeyedSubscript:@"SessionInterfaceName"];
  +[WiFiUsagePrivacyFilter timeSinceBootInSeconds];
  v12 = [WiFiUsagePrivacyFilter numberWithDuration:?];
  [dictionary setObject:v12 forKeyedSubscript:@"SessionDeviceUptime"];

  if (dictionaryCopy)
  {
    if ([(WiFiUsageSession *)self type]!= 5)
    {
      goto LABEL_10;
    }
  }

  else
  {
    if (*(v5 + 872))
    {
      v13 = @"Y";
    }

    else
    {
      v13 = @"N";
    }

    [dictionary setObject:v13 forKeyedSubscript:@"SessionIsActive"];
    [dictionary setObject:self->_secondaryInterfaceName forKeyedSubscript:@"SessionSecondaryInterfaceName"];
    v14 = [WiFiUsagePrivacyFilter localTimestamp:self->_sessionStartTime];
    [dictionary setObject:v14 forKeyedSubscript:@"SessionStartTimestamp"];
  }

  activeApplications = [(WiFiUsageSession *)self activeApplications];
  v16 = [activeApplications count];

  if (v16)
  {
    activeApplications2 = [(WiFiUsageSession *)self activeApplications];
    allObjects = [activeApplications2 allObjects];
    lastObject = [allObjects lastObject];
    [dictionary setObject:lastObject forKeyedSubscript:@"ApplicationBundleId"];
  }

LABEL_10:
  v20 = [WiFiUsagePrivacyFilter bandAsString:[(WiFiUsageSession *)self bandAtSessionStart]];
  [dictionary setObject:v20 forKeyedSubscript:@"NetworkBssBandAtSessionStart"];

  v21 = [MEMORY[0x277CCABB0] numberWithBool:{-[WiFiUsageSession isAssociatedAtSessionStart](self, "isAssociatedAtSessionStart")}];
  [dictionary setObject:v21 forKeyedSubscript:@"isAssociatedAtSessionStart"];

  v22 = [WiFiUsageLQMTransformations numberForKeyPath:@"rssiAtSessionStart" ofObject:self];
  [dictionary setObject:v22 forKeyedSubscript:@"RssiAtSessionStart"];

  v23 = [WiFiUsagePrivacyFilter numberWithByteCount:self->_netInterfaceTxBytes];
  [dictionary setObject:v23 forKeyedSubscript:@"NetIfWiFiTxBytes"];

  v24 = [WiFiUsagePrivacyFilter numberWithByteCount:self->_netInterfaceRxBytes];
  [dictionary setObject:v24 forKeyedSubscript:@"NetIfWiFiRxBytes"];

  v25 = [WiFiUsagePrivacyFilter numberWithByteCount:self->_secondaryInterfaceTxBytes];
  [dictionary setObject:v25 forKeyedSubscript:@"NetIfSecondaryTxBytes"];

  v26 = [WiFiUsagePrivacyFilter numberWithByteCount:self->_secondaryInterfaceRxBytes];
  [dictionary setObject:v26 forKeyedSubscript:@"NetIfSecondaryRxBytes"];

  v27 = [WiFiUsagePrivacyFilter numberWithInstances:self->_systemWakeStateChangedCount];
  [dictionary setObject:v27 forKeyedSubscript:@"SystemWakeStateChangedCount"];

  v28 = [WiFiUsagePrivacyFilter numberWithInstances:self->_systemWokenByWiFiCount];
  [dictionary setObject:v28 forKeyedSubscript:@"SystemWokenByWiFiCount"];

  v29 = [WiFiUsagePrivacyFilter numberWithInstances:self->_lockStateChangedCount];
  [dictionary setObject:v29 forKeyedSubscript:@"SystemLockStateChangedCount"];

  v30 = [WiFiUsagePrivacyFilter numberWithInstances:self->_displayStateChangedCount];
  [dictionary setObject:v30 forKeyedSubscript:@"SystemDisplayStateChangedCount"];

  v31 = [WiFiUsagePrivacyFilter numberWithInstances:self->_applicationStateChangedCount];
  [dictionary setObject:v31 forKeyedSubscript:@"SystemApplicationStateChangedCount"];

  v32 = [WiFiUsagePrivacyFilter numberWithInstances:self->_mediaPlaybackEventCount];
  [dictionary setObject:v32 forKeyedSubscript:@"SystemMediaPlaybackCount"];

  v33 = [WiFiUsagePrivacyFilter numberWithInstances:self->_chargingEventCount];
  [dictionary setObject:v33 forKeyedSubscript:@"SystemChargingCount"];

  v34 = [WiFiUsagePrivacyFilter numberWithInstances:self->_inCallEventCount];
  [dictionary setObject:v34 forKeyedSubscript:@"SystemInCallCount"];

  v35 = [WiFiUsagePrivacyFilter numberWithInstances:self->_inVehicleEventCount];
  [dictionary setObject:v35 forKeyedSubscript:@"SystemInVehicleCount"];

  v36 = [WiFiUsagePrivacyFilter numberWithInstances:self->_inMotionEventCount];
  [dictionary setObject:v36 forKeyedSubscript:@"SystemInMotionCount"];

  v37 = [WiFiUsagePrivacyFilter timePercentage:self->_mediaPlaybackDuration overTotalDuration:self->_sessionDuration];
  [dictionary setObject:v37 forKeyedSubscript:@"SystemMediaPlaybackDuration"];

  v38 = [WiFiUsagePrivacyFilter timePercentage:self->_chargingDuration overTotalDuration:self->_sessionDuration];
  [dictionary setObject:v38 forKeyedSubscript:@"SystemChargingDuration"];

  v39 = [WiFiUsagePrivacyFilter timePercentage:self->_inCallDuration overTotalDuration:self->_sessionDuration];
  [dictionary setObject:v39 forKeyedSubscript:@"SystemInCallDuration"];

  v40 = [WiFiUsagePrivacyFilter timePercentage:self->_inWalkingDuration overTotalDuration:self->_sessionDuration];
  [dictionary setObject:v40 forKeyedSubscript:@"SystemInWalkingDuration"];

  v41 = [WiFiUsagePrivacyFilter timePercentage:self->_inVehicleDuration overTotalDuration:self->_sessionDuration];
  [dictionary setObject:v41 forKeyedSubscript:@"SystemInVehicleDuration"];

  v42 = [WiFiUsagePrivacyFilter timePercentage:self->_inMotionDuration overTotalDuration:self->_sessionDuration];
  [dictionary setObject:v42 forKeyedSubscript:@"SystemInMotionDuration"];

  v43 = [WiFiUsagePrivacyFilter timePercentage:self->_systemAwakeDuration overTotalDuration:self->_sessionDuration];
  [dictionary setObject:v43 forKeyedSubscript:@"SystemAwakeDuration"];

  v44 = [WiFiUsagePrivacyFilter numberWithInstances:self->_companionConnectionStateChangedCount];
  [dictionary setObject:v44 forKeyedSubscript:@"SystemCompanionConnectionStateChangedCount"];

  v45 = [WiFiUsagePrivacyFilter timePercentage:self->_companionConnectedDuration overTotalDuration:self->_sessionDuration];
  [dictionary setObject:v45 forKeyedSubscript:@"SystemCompanionConnectedStateDuration"];

  [dictionary setObject:self->_lastSmartCoverState forKeyedSubscript:@"SystemSmartCoverLastState"];
  v46 = [WiFiUsagePrivacyFilter numberWithInstances:self->_smartCoverStateChangedCount];
  [dictionary setObject:v46 forKeyedSubscript:@"SystemSmartCoverStateChangedCount"];

  if (*(v5 + 876) == 1)
  {
    v47 = *(v5 + 877);
  }

  else
  {
    v47 = 0;
  }

  v48 = [MEMORY[0x277CCABB0] numberWithBool:v47 & 1];
  [dictionary setObject:v48 forKeyedSubscript:@"SystemIsUserInteractive"];

  v49 = [MEMORY[0x277CCABB0] numberWithBool:*(v5 + 878)];
  [dictionary setObject:v49 forKeyedSubscript:@"SystemIsInHomeScreen"];

  v50 = [WiFiUsagePrivacyFilter timePercentage:self->_powerBudgetMaxDuration overTotalDuration:self->_sessionDuration];
  [dictionary setObject:v50 forKeyedSubscript:@"SystemPowerBudgetMaxDuration"];

  v51 = [WiFiUsagePrivacyFilter timePercentage:self->_powerBudget90Duration overTotalDuration:self->_sessionDuration];
  [dictionary setObject:v51 forKeyedSubscript:@"SystemPowerBudget90Duration"];

  v52 = [WiFiUsagePrivacyFilter timePercentage:self->_powerBudget80Duration overTotalDuration:self->_sessionDuration];
  [dictionary setObject:v52 forKeyedSubscript:@"SystemPowerBudget80Duration"];

  v53 = [WiFiUsagePrivacyFilter timePercentage:self->_powerBudget70Duration overTotalDuration:self->_sessionDuration];
  [dictionary setObject:v53 forKeyedSubscript:@"SystemPowerBudget70Duration"];

  v54 = [WiFiUsagePrivacyFilter timePercentage:self->_powerBudget60Duration overTotalDuration:self->_sessionDuration];
  [dictionary setObject:v54 forKeyedSubscript:@"SystemPowerBudget60Duration"];

  v55 = [WiFiUsagePrivacyFilter timePercentage:self->_powerBudget50Duration overTotalDuration:self->_sessionDuration];
  [dictionary setObject:v55 forKeyedSubscript:@"SystemPowerBudget50Duration"];

  v56 = [WiFiUsagePrivacyFilter timePercentage:self->_powerBudget40Duration overTotalDuration:self->_sessionDuration];
  [dictionary setObject:v56 forKeyedSubscript:@"SystemPowerBudget40Duration"];

  v57 = [WiFiUsagePrivacyFilter timePercentage:self->_powerBudget30Duration overTotalDuration:self->_sessionDuration];
  [dictionary setObject:v57 forKeyedSubscript:@"SystemPowerBudget30Duration"];

  v58 = [WiFiUsagePrivacyFilter timePercentage:self->_powerBudget20Duration overTotalDuration:self->_sessionDuration];
  [dictionary setObject:v58 forKeyedSubscript:@"SystemPowerBudget20Duration"];

  v59 = [WiFiUsagePrivacyFilter timePercentage:self->_powerBudget10Duration overTotalDuration:self->_sessionDuration];
  [dictionary setObject:v59 forKeyedSubscript:@"SystemPowerBudget10Duration"];

  v60 = [WiFiUsagePrivacyFilter timePercentage:self->_powerBudgetMinDuration overTotalDuration:self->_sessionDuration];
  [dictionary setObject:v60 forKeyedSubscript:@"SystemPowerBudgetMinDuration"];

  v61 = [WiFiUsagePrivacyFilter timePercentage:self->_thermalIndexMaxDuration overTotalDuration:self->_sessionDuration];
  [dictionary setObject:v61 forKeyedSubscript:@"SystemThermalIndexMaxDuration"];

  v62 = [WiFiUsagePrivacyFilter timePercentage:self->_thermalIndex90Duration overTotalDuration:self->_sessionDuration];
  [dictionary setObject:v62 forKeyedSubscript:@"SystemThermalIndex90Duration"];

  v63 = [WiFiUsagePrivacyFilter timePercentage:self->_thermalIndex80Duration overTotalDuration:self->_sessionDuration];
  [dictionary setObject:v63 forKeyedSubscript:@"SystemThermalIndex80Duration"];

  v64 = [WiFiUsagePrivacyFilter timePercentage:self->_thermalIndex70Duration overTotalDuration:self->_sessionDuration];
  [dictionary setObject:v64 forKeyedSubscript:@"SystemThermalIndex70Duration"];

  v65 = [WiFiUsagePrivacyFilter timePercentage:self->_thermalIndex60Duration overTotalDuration:self->_sessionDuration];
  [dictionary setObject:v65 forKeyedSubscript:@"SystemThermalIndex60Duration"];

  v66 = [WiFiUsagePrivacyFilter timePercentage:self->_thermalIndex50Duration overTotalDuration:self->_sessionDuration];
  [dictionary setObject:v66 forKeyedSubscript:@"SystemThermalIndex50Duration"];

  v67 = [WiFiUsagePrivacyFilter timePercentage:self->_thermalIndex40Duration overTotalDuration:self->_sessionDuration];
  [dictionary setObject:v67 forKeyedSubscript:@"SystemThermalIndex40Duration"];

  v68 = [WiFiUsagePrivacyFilter timePercentage:self->_thermalIndex30Duration overTotalDuration:self->_sessionDuration];
  [dictionary setObject:v68 forKeyedSubscript:@"SystemThermalIndex30Duration"];

  v69 = [WiFiUsagePrivacyFilter timePercentage:self->_thermalIndex20Duration overTotalDuration:self->_sessionDuration];
  [dictionary setObject:v69 forKeyedSubscript:@"SystemThermalIndex20Duration"];

  v70 = [WiFiUsagePrivacyFilter timePercentage:self->_thermalIndex10Duration overTotalDuration:self->_sessionDuration];
  [dictionary setObject:v70 forKeyedSubscript:@"SystemThermalIndex10Duration"];

  v71 = [WiFiUsagePrivacyFilter timePercentage:self->_thermalIndexMinDuration overTotalDuration:self->_sessionDuration];
  [dictionary setObject:v71 forKeyedSubscript:@"SystemThermalIndexMinDuration"];

  v72 = [WiFiUsagePrivacyFilter timePercentage:self->_usbInsertedDuration overTotalDuration:self->_sessionDuration];
  [dictionary setObject:v72 forKeyedSubscript:@"SystemUSBInsertedDurationPerc"];

  v73 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_usbDeviceEventCount];
  [dictionary setObject:v73 forKeyedSubscript:@"SystemUSBEventCount"];

  v74 = [WiFiUsagePrivacyFilter numberWithInstances:self->_inA2dpEventCount];
  [dictionary setObject:v74 forKeyedSubscript:@"BluetoothInA2dpCount"];

  v75 = [WiFiUsagePrivacyFilter numberWithInstances:self->_inScoEventCount];
  [dictionary setObject:v75 forKeyedSubscript:@"BluetoothInScoCount"];

  v76 = [WiFiUsagePrivacyFilter numberWithInstances:self->_inHidPresentCount];
  [dictionary setObject:v76 forKeyedSubscript:@"BluetoothInHidCount"];

  v77 = [WiFiUsagePrivacyFilter timePercentage:self->_inA2dpDuration overTotalDuration:self->_sessionDuration];
  [dictionary setObject:v77 forKeyedSubscript:@"BluetoothInA2dpDuration"];

  v78 = [WiFiUsagePrivacyFilter timePercentage:self->_inScoDuration overTotalDuration:self->_sessionDuration];
  [dictionary setObject:v78 forKeyedSubscript:@"BluetoothInScoDuration"];

  v79 = [WiFiUsagePrivacyFilter timePercentage:self->_inHidPresentDuration overTotalDuration:self->_sessionDuration];
  [dictionary setObject:v79 forKeyedSubscript:@"BluetoothInHidDuration"];

  v80 = [MEMORY[0x277CCABB0] numberWithBool:*(v5 + 897)];
  [dictionary setObject:v80 forKeyedSubscript:@"isA2dpActive"];

  v81 = [MEMORY[0x277CCABB0] numberWithBool:*(v5 + 898)];
  [dictionary setObject:v81 forKeyedSubscript:@"isSCOActive"];

  v82 = [MEMORY[0x277CCABB0] numberWithBool:*(v5 + 899)];
  [dictionary setObject:v82 forKeyedSubscript:@"isUniAoSActive"];

  v83 = [MEMORY[0x277CCABB0] numberWithBool:*(v5 + 900)];
  [dictionary setObject:v83 forKeyedSubscript:@"isBiAoSActive"];

  [dictionary setObject:self->_btAudioBand forKeyedSubscript:@"BTBand"];
  v84 = [WiFiUsagePrivacyFilter numberWithInstances:self->_linkStateChangedCount];
  [dictionary setObject:v84 forKeyedSubscript:@"WiFiLinkStateChangedCount"];

  v85 = [WiFiUsagePrivacyFilter numberWithInstances:self->_joinStateChangedCount];
  [dictionary setObject:v85 forKeyedSubscript:@"WiFiJoinStateChangedCount"];

  v86 = [WiFiUsagePrivacyFilter numberWithInstances:self->_networkChangedCount];
  [dictionary setObject:v86 forKeyedSubscript:@"WiFiNetworkChangedCount"];

  v87 = [WiFiUsagePrivacyFilter numberWithInstances:self->_rapidLinkTransitionCount];
  [dictionary setObject:v87 forKeyedSubscript:@"WiFiRapidLinkTransitionCount"];

  v88 = [WiFiUsagePrivacyFilter numberWithInstances:self->_powerToggleEventCount];
  [dictionary setObject:v88 forKeyedSubscript:@"WiFiPowerToggleEventCount"];

  v89 = [WiFiUsagePrivacyFilter numberWithInstances:self->_powerStateChangedCount];
  [dictionary setObject:v89 forKeyedSubscript:@"WiFiPowerStateChangedCount"];

  v90 = [WiFiUsagePrivacyFilter numberWithInstances:self->_inAwdlEventCount];
  [dictionary setObject:v90 forKeyedSubscript:@"WiFiInAwdlCount"];

  v91 = [WiFiUsagePrivacyFilter numberWithInstances:self->_inRoamEventCount];
  [dictionary setObject:v91 forKeyedSubscript:@"WiFiInRoamCount"];

  v92 = [WiFiUsagePrivacyFilter numberWithInstances:self->_inScanEventCount];
  [dictionary setObject:v92 forKeyedSubscript:@"WiFiInScanCount"];

  v93 = [WiFiUsagePrivacyFilter numberWithInstances:self->_inSoftApEventCount];
  [dictionary setObject:v93 forKeyedSubscript:@"WiFiInSoftApCount"];

  v94 = [WiFiUsagePrivacyFilter timePercentage:self->_inAwdlDuration overTotalDuration:self->_sessionDuration];
  [dictionary setObject:v94 forKeyedSubscript:@"WiFiInAwdlDuration"];

  v95 = [WiFiUsagePrivacyFilter timePercentage:self->_inRoamDuration overTotalDuration:self->_sessionDuration];
  [dictionary setObject:v95 forKeyedSubscript:@"WiFiInRoamDuration"];

  v96 = [WiFiUsagePrivacyFilter timePercentage:self->_inRoamSuppressionEnabled overTotalDuration:self->_sessionDuration];
  [dictionary setObject:v96 forKeyedSubscript:@"WiFiInRoamSuppressedDuration"];

  v97 = [WiFiUsagePrivacyFilter numberWithInstances:self->_inRoamSuppressionEnabledCount];
  [dictionary setObject:v97 forKeyedSubscript:@"WiFiInRoamSuppressedCount"];

  inRoamSuppressionWaitForRoamStart = self->_inRoamSuppressionWaitForRoamStart;
  *&inRoamSuppressionWaitForRoamStart = inRoamSuppressionWaitForRoamStart;
  v99 = [MEMORY[0x277CCABB0] numberWithFloat:inRoamSuppressionWaitForRoamStart];
  [dictionary setObject:v99 forKeyedSubscript:@"WiFiInRoamSuppressedWaitForRoamStart"];

  inRoamSuppressionWaitForRoamEnd = self->_inRoamSuppressionWaitForRoamEnd;
  *&inRoamSuppressionWaitForRoamEnd = inRoamSuppressionWaitForRoamEnd;
  v101 = [MEMORY[0x277CCABB0] numberWithFloat:inRoamSuppressionWaitForRoamEnd];
  [dictionary setObject:v101 forKeyedSubscript:@"WiFiInRoamSuppressedWaitForRoamEnd"];

  v102 = [WiFiUsagePrivacyFilter timePercentage:self->_inScanDuration overTotalDuration:self->_sessionDuration];
  [dictionary setObject:v102 forKeyedSubscript:@"WiFiInScanDuration"];

  v103 = [WiFiUsagePrivacyFilter timePercentage:self->_inSoftApDuration overTotalDuration:self->_sessionDuration];
  [dictionary setObject:v103 forKeyedSubscript:@"WiFiInSoftApDuration"];

  v104 = [MEMORY[0x277CCABB0] numberWithBool:*(v5 + 881)];
  [dictionary setObject:v104 forKeyedSubscript:@"WiFiIsPoweredOn"];

  v105 = [WiFiUsagePrivacyFilter numberWithInstances:self->_neighborBssCount];
  [dictionary setObject:v105 forKeyedSubscript:@"WiFiBssNeighborCount"];

  v106 = [WiFiUsagePrivacyFilter numberWithInstances:self->_otherBssCount];
  [dictionary setObject:v106 forKeyedSubscript:@"WiFiBssOtherCount"];

  v107 = [WiFiUsagePrivacyFilter timePercentage:self->_poweredOnDuration overTotalDuration:self->_sessionDuration];
  [dictionary setObject:v107 forKeyedSubscript:@"WiFiPoweredOnDuration"];

  v108 = [WiFiUsagePrivacyFilter timePercentage:self->_associatedDuration overTotalDuration:self->_sessionDuration];
  [dictionary setObject:v108 forKeyedSubscript:@"WiFiAssociatedDuration"];

  v109 = [WiFiUsagePrivacyFilter timePercentage:self->_associatedSleepDuration overTotalDuration:self->_sessionDuration];
  [dictionary setObject:v109 forKeyedSubscript:@"WiFiAssociatedSleepDuration"];

  v110 = [WiFiUsagePrivacyFilter timePercentage:self->_inCellularFallbackDuration overTotalDuration:self->_sessionDuration];
  [dictionary setObject:v110 forKeyedSubscript:@"WiFiInCellularFallbackDuration"];

  v111 = [WiFiUsagePrivacyFilter numberWithInstances:self->_cellularFallbackStateChangedCount];
  [dictionary setObject:v111 forKeyedSubscript:@"WiFiCellularFallbackStateChangedCount"];

  v112 = [WiFiUsagePrivacyFilter timePercentage:self->_inCellularOutrankingDuration overTotalDuration:self->_sessionDuration];
  [dictionary setObject:v112 forKeyedSubscript:@"WiFiInCellularOutrankingDuration"];

  v113 = [WiFiUsagePrivacyFilter numberWithInstances:self->_cellularOutrankingStateChangedCount];
  [dictionary setObject:v113 forKeyedSubscript:@"WiFiCellularOutrankingStateChangedCount"];

  v114 = [WiFiUsagePrivacyFilter numberWithInstances:self->_controlCenterStateChangedCount];
  [dictionary setObject:v114 forKeyedSubscript:@"WiFiControlCenterStateChangedCount"];

  v115 = [WiFiUsagePrivacyFilter numberWithInstances:self->_controlCenterToggleEventCount];
  [dictionary setObject:v115 forKeyedSubscript:@"WiFiControlCenterToggleEventCount"];

  v116 = [WiFiUsagePrivacyFilter timePercentage:self->_inControlCenterAutoJoinDisabledDuration overTotalDuration:self->_sessionDuration];
  [dictionary setObject:v116 forKeyedSubscript:@"WiFiControlCenterAutoJoinDisabledDuration"];

  v117 = [WiFiUsagePrivacyFilter numberWithInstances:self->_rangingEventCount];
  [dictionary setObject:v117 forKeyedSubscript:@"WiFiRangingEventCount"];

  v118 = [MEMORY[0x277CCABB0] numberWithBool:*(v5 + 888)];
  [dictionary setObject:v118 forKeyedSubscript:@"SystemInAirplaneMode"];

  [dictionary setObject:self->_cellularDataStatus forKeyedSubscript:@"SystemCellularDataStatus"];
  v119 = [WiFiUsagePrivacyFilter numberWithInstances:self->_airplaneModeStateChangedCount];
  [dictionary setObject:v119 forKeyedSubscript:@"SystemAirplaneModeStateChangedCount"];

  v120 = [WiFiUsagePrivacyFilter timePercentage:self->_linkRecoveryDisabledDuration overTotalDuration:self->_sessionDuration];
  [dictionary setObject:v120 forKeyedSubscript:@"WiFiLinkRecoveryDisabledDuration"];

  v121 = [WiFiUsagePrivacyFilter numberWithInstances:self->_linkRecoveryDisabledCount];
  [dictionary setObject:v121 forKeyedSubscript:@"WiFiLinkRecoveryDisabledCount"];

  v122 = [WiFiUsagePrivacyFilter numberWithInstances:self->_wowStateChangedCount];
  [dictionary setObject:v122 forKeyedSubscript:@"WiFiWoWStateChangedCount"];

  v123 = [WiFiUsagePrivacyFilter timePercentage:self->_inWowStateDuration overTotalDuration:self->_sessionDuration];
  [dictionary setObject:v123 forKeyedSubscript:@"WiFiWoWStateDuration"];

  v124 = [WiFiUsagePrivacyFilter numberWithInstances:self->_lpasStateChangedCount];
  [dictionary setObject:v124 forKeyedSubscript:@"WiFiLPASStateChangedCount"];

  v125 = [WiFiUsagePrivacyFilter timePercentage:self->_inLpasStateDuration overTotalDuration:self->_sessionDuration];
  [dictionary setObject:v125 forKeyedSubscript:@"WiFiLPASStateDuration"];

  v126 = [WiFiUsagePrivacyFilter numberWithInstances:self->_lowPowerStateChangedCount];
  [dictionary setObject:v126 forKeyedSubscript:@"WiFiLowPowerStateChangedCount"];

  v127 = [WiFiUsagePrivacyFilter timePercentage:self->_inLowPowerStateDuration overTotalDuration:self->_sessionDuration];
  [dictionary setObject:v127 forKeyedSubscript:@"WiFiLowPowerStateDuration"];

  v128 = [WiFiUsagePrivacyFilter numberWithInstances:self->_batterySaverStateChangedCount];
  [dictionary setObject:v128 forKeyedSubscript:@"WiFiBatterySaverStateChangedCount"];

  v129 = [WiFiUsagePrivacyFilter timePercentage:self->_inBatterySaverStateDuration overTotalDuration:self->_sessionDuration];
  [dictionary setObject:v129 forKeyedSubscript:@"WiFiBatterySaverStateDuration"];

  v130 = [WiFiUsagePrivacyFilter numberWithInstances:self->_consecutiveJoinFailureCount];
  [dictionary setObject:v130 forKeyedSubscript:@"WiFiConsecutiveJoinFailureCount"];

  v131 = [WiFiUsagePrivacyFilter numberWithDuration:self->_longestUnassociatedDuration];
  [dictionary setObject:v131 forKeyedSubscript:@"WiFiLongestUnassociatedDuration"];

  v132 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:(self->_sleepPowerStatsTotalDuration / 1000.0)];
  [dictionary setObject:v132 forKeyedSubscript:@"WiFiSleepPowerStatsDurationTotal"];

  v133 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:(self->_sleepPowerStatsUnassociatedDuration / 1000.0)];
  [dictionary setObject:v133 forKeyedSubscript:@"WiFiSleepPowerStatsDurationUnassociated"];

  v134 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:(self->_sleepPowerStatsAssociatedDuration / 1000.0)];
  [dictionary setObject:v134 forKeyedSubscript:@"WiFiSleepPowerStatsDurationAssociated"];

  v135 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:(self->_sleepPowerStatsRoamingDuration / 1000.0)];
  [dictionary setObject:v135 forKeyedSubscript:@"WiFiSleepPowerStatsDurationRoaming"];

  sessionDuration = self->_sessionDuration;
  v137 = *&self->_bandUsageDuration.valueByBand[2];
  v390 = *self->_bandUsageDuration.valueByBand;
  v391 = v137;
  v138 = [WiFiUsagePrivacyFilter getLabelForBandUsageDuration:&v390 overTotalDuration:1 binned:sessionDuration];
  [dictionary setObject:v138 forKeyedSubscript:@"WiFiBandUsageDuration"];

  v139 = [objc_opt_class() joinReasonString:self->_lastJoinReason];
  [dictionary setObject:v139 forKeyedSubscript:@"WiFiNetworkJoinReason"];

  v140 = [MEMORY[0x277CCABB0] numberWithInteger:self->_lastJoinFailure];
  [dictionary setObject:v140 forKeyedSubscript:@"WiFiNetworkJoinFailure"];

  v141 = [MEMORY[0x277CCABB0] numberWithBool:self->_lastJoinFailure == 0];
  [dictionary setObject:v141 forKeyedSubscript:@"WiFiNetworkJoinResult"];

  v142 = [objc_opt_class() disconnectReasonString:self->_lastDisconnectReason];
  [dictionary setObject:v142 forKeyedSubscript:@"WiFiNetworkDisconnectReason"];

  v143 = [MEMORY[0x277CCABB0] numberWithInteger:self->_lastDisconnectSubreason];
  [dictionary setObject:v143 forKeyedSubscript:@"WiFiNetworkDisconnectSubreason"];

  v144 = [objc_opt_class() disconnectReasonString:self->_previousDisconnectReason];
  [dictionary setObject:v144 forKeyedSubscript:@"WiFiNetworkPreviousDisconnectReason"];

  responsivenessScore = [(WiFiUsageSession *)self responsivenessScore];
  [dictionary setObject:responsivenessScore forKeyedSubscript:@"WiFiNetworkResponsivenessScore"];

  v146 = [WiFiUsagePrivacyFilter numberWithInstances:self->_perClientScanCount[1]];
  [dictionary setObject:v146 forKeyedSubscript:@"ScanCountForAutoJoinPrevChannel"];

  v147 = [WiFiUsagePrivacyFilter numberWithInstances:self->_perClientScanCount[2]];
  [dictionary setObject:v147 forKeyedSubscript:@"ScanCountForAutoJoinMruChannels"];

  v148 = [WiFiUsagePrivacyFilter numberWithInstances:self->_perClientScanCount[3]];
  [dictionary setObject:v148 forKeyedSubscript:@"ScanCountForAutoJoinRemChannels"];

  v149 = [WiFiUsagePrivacyFilter numberWithInstances:self->_perClientScanCount[4]];
  [dictionary setObject:v149 forKeyedSubscript:@"ScanCountForAutoJoin2GHz"];

  v150 = [WiFiUsagePrivacyFilter numberWithInstances:self->_perClientScanCount[5]];
  [dictionary setObject:v150 forKeyedSubscript:@"ScanCountForAutoJoin5GHz"];

  v151 = [WiFiUsagePrivacyFilter numberWithInstances:self->_perClientScanCount[7]];
  [dictionary setObject:v151 forKeyedSubscript:@"ScanCountForAutoJoinHiddenNetwork"];

  v152 = [WiFiUsagePrivacyFilter numberWithInstances:self->_perClientScanCount[6]];
  [dictionary setObject:v152 forKeyedSubscript:@"ScanCountForAutoJoinAllChannels"];

  v153 = [WiFiUsagePrivacyFilter numberWithInstances:self->_perClientScanCount[20]];
  [dictionary setObject:v153 forKeyedSubscript:@"ScanCountForUnifiedAutoJoinNoSSIDList"];

  v154 = [WiFiUsagePrivacyFilter numberWithInstances:self->_perClientScanCount[21]];
  [dictionary setObject:v154 forKeyedSubscript:@"ScanCountForUnifiedAutoJoinSSIDList"];

  v155 = [WiFiUsagePrivacyFilter numberWithInstances:self->_perClientScanCount[21] + self->_perClientScanCount[20]];
  [dictionary setObject:v155 forKeyedSubscript:@"ScanCountForUnifiedAutoJoin"];

  v156 = [WiFiUsagePrivacyFilter numberWithInstances:self->_perClientScanCount[8]];
  [dictionary setObject:v156 forKeyedSubscript:@"ScanCountForSettings"];

  v157 = [WiFiUsagePrivacyFilter numberWithInstances:self->_perClientScanCount[9]];
  [dictionary setObject:v157 forKeyedSubscript:@"ScanCountForATJ"];

  v158 = [WiFiUsagePrivacyFilter numberWithInstances:self->_perClientScanCount[10]];
  [dictionary setObject:v158 forKeyedSubscript:@"ScanCountForControlCenter"];

  v159 = [WiFiUsagePrivacyFilter numberWithInstances:self->_perClientScanCount[11]];
  [dictionary setObject:v159 forKeyedSubscript:@"ScanCountForApp"];

  v160 = [WiFiUsagePrivacyFilter numberWithInstances:self->_perClientScanCount[12]];
  [dictionary setObject:v160 forKeyedSubscript:@"ScanCountForHomeKit"];

  v161 = [WiFiUsagePrivacyFilter numberWithInstances:self->_perClientScanCount[13]];
  [dictionary setObject:v161 forKeyedSubscript:@"ScanCountForConfigd"];

  v162 = [WiFiUsagePrivacyFilter numberWithInstances:self->_perClientScanCount[26]];
  [dictionary setObject:v162 forKeyedSubscript:@"ScanCountForMilod"];

  v163 = [WiFiUsagePrivacyFilter numberWithInstances:self->_perClientScanCount[14]];
  [dictionary setObject:v163 forKeyedSubscript:@"ScanCountForOtherClient"];

  v164 = [WiFiUsagePrivacyFilter numberWithInstances:self->_perClientScanCount[15]];
  [dictionary setObject:v164 forKeyedSubscript:@"ScanCountForNetworkTransition"];

  v165 = [WiFiUsagePrivacyFilter numberWithInstances:self->_perClientScanCount[16]];
  [dictionary setObject:v165 forKeyedSubscript:@"ScanCountForLocation"];

  v166 = [WiFiUsagePrivacyFilter numberWithInstances:self->_perClientScanCount[17]];
  [dictionary setObject:v166 forKeyedSubscript:@"ScanCountForIndoor"];

  v167 = [WiFiUsagePrivacyFilter numberWithInstances:self->_perClientScanCount[18]];
  [dictionary setObject:v167 forKeyedSubscript:@"ScanCountForAutoHotspot"];

  v168 = [WiFiUsagePrivacyFilter numberWithInstances:self->_perClientScanCount[19]];
  [dictionary setObject:v168 forKeyedSubscript:@"ScanCountForPersonalHotspot"];

  v169 = [WiFiUsagePrivacyFilter numberWithInstances:self->_faultReasonCount[1]];
  [dictionary setObject:v169 forKeyedSubscript:@"FaultReasonDnsFailureCount"];

  v170 = [WiFiUsagePrivacyFilter numberWithInstances:self->_faultReasonCount[2]];
  [dictionary setObject:v170 forKeyedSubscript:@"FaultReasonArpFailureCount"];

  v171 = [WiFiUsagePrivacyFilter numberWithInstances:self->_faultReasonCount[4]];
  [dictionary setObject:v171 forKeyedSubscript:@"FaultReasonShortFlowCount"];

  v172 = [WiFiUsagePrivacyFilter numberWithInstances:self->_faultReasonCount[5]];
  [dictionary setObject:v172 forKeyedSubscript:@"FaultReasonRTTFailureCount"];

  v173 = [WiFiUsagePrivacyFilter numberWithInstances:self->_faultReasonCount[3]];
  [dictionary setObject:v173 forKeyedSubscript:@"FaultReasonSymptomDataStallCount"];

  v174 = [WiFiUsagePrivacyFilter numberWithInstances:self->_faultReasonCount[6]];
  [dictionary setObject:v174 forKeyedSubscript:@"FaultReasonL2DatapathStallCount"];

  v175 = [WiFiUsagePrivacyFilter numberWithInstances:self->_faultReasonCount[7]];
  [dictionary setObject:v175 forKeyedSubscript:@"FaultReasonWatchdogResetCount"];

  v176 = [WiFiUsagePrivacyFilter numberWithInstances:self->_faultReasonCount[8]];
  [dictionary setObject:v176 forKeyedSubscript:@"FaultReasonBlocklistedSsidCount"];

  v177 = [WiFiUsagePrivacyFilter numberWithInstances:self->_faultReasonCount[9]];
  [dictionary setObject:v177 forKeyedSubscript:@"FaultReasonBlocklistedBssidCount"];

  v178 = [WiFiUsagePrivacyFilter numberWithInstances:self->_faultReasonCount[21]];
  [dictionary setObject:v178 forKeyedSubscript:@"FaultReasonFirmwareTrapCount"];

  v179 = [WiFiUsagePrivacyFilter numberWithInstances:self->_faultReasonCount[24]];
  [dictionary setObject:v179 forKeyedSubscript:@"FaultReasonDextCrashed"];

  v180 = [WiFiUsagePrivacyFilter numberWithInstances:self->_faultReasonCount[34]];
  [dictionary setObject:v180 forKeyedSubscript:@"FaultReasonMTBFEventCount"];

  v181 = [WiFiUsagePrivacyFilter numberWithInstances:self->_faultReasonCount[36]];
  [dictionary setObject:v181 forKeyedSubscript:@"FaultReasonRxDataStallEvent"];

  v182 = [WiFiUsagePrivacyFilter numberWithInstances:self->_faultReasonCount[10]];
  [dictionary setObject:v182 forKeyedSubscript:@"FaultReasonSlowWiFi"];

  v183 = [WiFiUsagePrivacyFilter numberWithInstances:self->_faultReasonCount[11]];
  [dictionary setObject:v183 forKeyedSubscript:@"FaultReasonPrivateMACFallback"];

  v184 = [WiFiUsagePrivacyFilter numberWithInstances:self->_faultReasonCount[12]];
  [dictionary setObject:v184 forKeyedSubscript:@"FaultReasonDelayedAutoJoin"];

  v185 = [WiFiUsagePrivacyFilter numberWithInstances:self->_faultReasonCount[13]];
  [dictionary setObject:v185 forKeyedSubscript:@"FaultReasonDhcpFailure"];

  v186 = [WiFiUsagePrivacyFilter numberWithInstances:self->_faultReasonCount[14]];
  [dictionary setObject:v186 forKeyedSubscript:@"FaultReasonLinkTestLocalCheckFailure"];

  v187 = [WiFiUsagePrivacyFilter numberWithInstances:self->_faultReasonCount[15]];
  [dictionary setObject:v187 forKeyedSubscript:@"FaultReasonLinkTestInternetCheckFailure"];

  v188 = [WiFiUsagePrivacyFilter numberWithInstances:self->_faultReasonCount[16]];
  [dictionary setObject:v188 forKeyedSubscript:@"FaultReasonLinkTestDNSCheckFailure"];

  v189 = [WiFiUsagePrivacyFilter numberWithInstances:self->_faultReasonCount[17]];
  [dictionary setObject:v189 forKeyedSubscript:@"FaultReasonArpFailure"];

  v190 = [WiFiUsagePrivacyFilter numberWithInstances:self->_faultReasonCount[18]];
  [dictionary setObject:v190 forKeyedSubscript:@"FaultReasonSlowWiFiDnsFailure"];

  v191 = [WiFiUsagePrivacyFilter numberWithInstances:self->_faultReasonCount[19]];
  [dictionary setObject:v191 forKeyedSubscript:@"FaultReasonSlowWiFiDUT"];

  v192 = [WiFiUsagePrivacyFilter numberWithInstances:self->_faultReasonCount[20]];
  [dictionary setObject:v192 forKeyedSubscript:@"FaultReasonUserOverridesCellularOutranking"];

  v193 = [WiFiUsagePrivacyFilter numberWithInstances:self->_faultReasonCount[22]];
  [dictionary setObject:v193 forKeyedSubscript:@"FaultReasonSleepPowerBudgetExceeded"];

  v194 = [WiFiUsagePrivacyFilter numberWithInstances:self->_faultReasonCount[23]];
  [dictionary setObject:v194 forKeyedSubscript:@"FaultReasonLowPowerBudgetExceeded"];

  v195 = [WiFiUsagePrivacyFilter numberWithInstances:self->_faultReasonCount[25]];
  [dictionary setObject:v195 forKeyedSubscript:@"FaultReasonSiriTimedOut"];

  v196 = [WiFiUsagePrivacyFilter numberWithInstances:self->_faultReasonCount[26]];
  [dictionary setObject:v196 forKeyedSubscript:@"FaultReasonApsdTimedOut"];

  v197 = [WiFiUsagePrivacyFilter numberWithInstances:self->_faultReasonCount[27]];
  [dictionary setObject:v197 forKeyedSubscript:@"FaultReasonBrokenBackhaulLinkFailed"];

  v198 = [WiFiUsagePrivacyFilter numberWithInstances:self->_triggerDisconnectAlertedCount];
  [dictionary setObject:v198 forKeyedSubscript:@"TriggerDisconnectAlertedCount"];

  v199 = [WiFiUsagePrivacyFilter numberWithInstances:self->_triggerDisconnectConfirmedCount];
  [dictionary setObject:v199 forKeyedSubscript:@"TriggerDisconnectConfirmedCount"];

  v200 = [WiFiUsagePrivacyFilter numberWithInstances:self->_triggerDisconnectExecutedCount];
  [dictionary setObject:v200 forKeyedSubscript:@"TriggerDisconnectExecutedCount"];

  v201 = [WiFiUsagePrivacyFilter numberWithInstances:self->_roamReasonInitialAssociationCount];
  [dictionary setObject:v201 forKeyedSubscript:@"RoamReasonInitialAssociationCount"];

  v202 = [WiFiUsagePrivacyFilter numberWithInstances:self->_roamReasonLowRssiCount];
  [dictionary setObject:v202 forKeyedSubscript:@"RoamReasonLowRssiCount"];

  v203 = [WiFiUsagePrivacyFilter numberWithInstances:self->_roamReasonDeauthDisassocCount];
  [dictionary setObject:v203 forKeyedSubscript:@"RoamReasonDeauthDisassocCount"];

  v204 = [WiFiUsagePrivacyFilter numberWithInstances:self->_roamReasonBeaconLostCount];
  [dictionary setObject:v204 forKeyedSubscript:@"RoamReasonBeaconLostCount"];

  v205 = [WiFiUsagePrivacyFilter numberWithInstances:self->_roamReasonSteeredByApCount];
  [dictionary setObject:v205 forKeyedSubscript:@"RoamReasonSteeredByApCount"];

  v206 = [WiFiUsagePrivacyFilter numberWithInstances:self->_roamReasonSteeredByBtmCount];
  [dictionary setObject:v206 forKeyedSubscript:@"RoamReasonSteeredByBtmCount"];

  v207 = [WiFiUsagePrivacyFilter numberWithInstances:self->_roamReasonSteeredByCsaCount];
  [dictionary setObject:v207 forKeyedSubscript:@"RoamReasonSteeredByCsaCount"];

  v208 = [WiFiUsagePrivacyFilter numberWithInstances:self->_roamReasonReassocRequestedCount];
  [dictionary setObject:v208 forKeyedSubscript:@"RoamReasonReassocRequestedCount"];

  v209 = [WiFiUsagePrivacyFilter numberWithInstances:self->_roamReasonHostTriggeredCount];
  [dictionary setObject:v209 forKeyedSubscript:@"RoamReasonHostTriggeredCount"];

  v210 = [WiFiUsagePrivacyFilter numberWithInstances:self->_roamReasonBetterCandidateCount];
  [dictionary setObject:v210 forKeyedSubscript:@"RoamReasonBetterCandidateCount"];

  v211 = [WiFiUsagePrivacyFilter numberWithInstances:self->_roamReasonBetterConditionCount];
  [dictionary setObject:v211 forKeyedSubscript:@"RoamReasonBetterConditionCount"];

  v212 = [WiFiUsagePrivacyFilter numberWithInstances:self->_roamReasonMiscCount];
  [dictionary setObject:v212 forKeyedSubscript:@"RoamReasonMiscCount"];

  v213 = [WiFiUsagePrivacyFilter numberWithInstances:self->_roamStatusSucceededCount];
  [dictionary setObject:v213 forKeyedSubscript:@"RoamStatusSucceededCount"];

  v214 = [WiFiUsagePrivacyFilter numberWithInstances:self->_roamStatusFailedCount];
  [dictionary setObject:v214 forKeyedSubscript:@"RoamStatusFailedCount"];

  v215 = [WiFiUsagePrivacyFilter numberWithInstances:self->_roamStatusNoCandidateCount];
  [dictionary setObject:v215 forKeyedSubscript:@"RoamStatusNoCandidateCount"];

  v216 = [WiFiUsagePrivacyFilter numberWithInstances:self->_roamStatusNoQualifiedCandidateCount];
  [dictionary setObject:v216 forKeyedSubscript:@"RoamStatusNoQualifiedCandidateCount"];

  v217 = [WiFiUsagePrivacyFilter numberWithInstances:self->_roamStatusFailedNoScan];
  [dictionary setObject:v217 forKeyedSubscript:@"RoamStatusFailedNoScan"];

  v218 = [WiFiUsagePrivacyFilter numberWithInstances:self->_roamIsWNMScoreUsedCount];
  [dictionary setObject:v218 forKeyedSubscript:@"RoamWNMScoreUsedCount"];

  v219 = [WiFiUsagePrivacyFilter numberWithInstances:self->_roamPingPongAboveThresholdCount];
  [dictionary setObject:v219 forKeyedSubscript:@"RoamPingPongAboveThresholdCount"];

  v220 = [WiFiUsagePrivacyFilter numberWithInstances:self->_roamPingPongAboveThresholdCountLowRssiOnly];
  [dictionary setObject:v220 forKeyedSubscript:@"RoamPingPongAboveThresholdCountLowRssiOnly"];

  v221 = [WiFiUsagePrivacyFilter numberWithInstances:self->_roamPingPongLowRssiAndReassocOnly];
  [dictionary setObject:v221 forKeyedSubscript:@"RoamPingPongLowRssiAndReassocOnly"];

  v222 = [WiFiUsagePrivacyFilter numberWithInstances:self->_roamPingPongReassocOnly];
  [dictionary setObject:v222 forKeyedSubscript:@"RoamPingPongReassocOnly"];

  [dictionary setObject:self->_lastDriverUnavailableReason forKeyedSubscript:@"LastDriverUnavailableReason"];
  v223 = [WiFiUsagePrivacyFilter numberWithInstances:self->_driverUnavailabilityCount];
  [dictionary setObject:v223 forKeyedSubscript:@"DriverUnavailabilityCount"];

  v224 = [WiFiUsagePrivacyFilter numberWithDuration:self->_driverProcessLifespan];
  [dictionary setObject:v224 forKeyedSubscript:@"DriverProcessLifespan"];

  v225 = [WiFiUsagePrivacyFilter numberWithDuration:self->_driverAvailabilityLifespan];
  [dictionary setObject:v225 forKeyedSubscript:@"DriverAvailabilityLifespan"];

  [(NSDate *)self->_sessionInitTime timeIntervalSinceDate:self->_processInitTime];
  v226 = [WiFiUsagePrivacyFilter numberWithDurationMillisecond:?];
  [dictionary setObject:v226 forKeyedSubscript:@"DriverAvailabilityLatencyFromProcessInit"];

  v227 = [WiFiUsagePrivacyFilter numberWithDurationMillisecond:self->_driverAvailabilityLatencyFromChipReset];
  [dictionary setObject:v227 forKeyedSubscript:@"DriverAvailableLatencyFromChipReset"];

  v228 = [WiFiUsagePrivacyFilter numberWithDurationMillisecond:self->_driverAvailabilityLatencyFromTermination];
  [dictionary setObject:v228 forKeyedSubscript:@"DriverAvailableLatencyFromTermination"];

  v229 = [WiFiUsagePrivacyFilter numberWithDurationMillisecond:self->_joinScanLatencyFromDriverAvailability];
  [dictionary setObject:v229 forKeyedSubscript:@"JoinScanLatencyFromDriverAvailability"];

  v230 = [WiFiUsagePrivacyFilter numberWithDurationMillisecond:self->_joinStartedLatencyFromDriverAvailability];
  [dictionary setObject:v230 forKeyedSubscript:@"JoinStartedLatencyFromDriverAvailability"];

  v231 = [WiFiUsagePrivacyFilter numberWithDurationMillisecond:self->_joinLinkUpLatencyFromDriverAvailability];
  [dictionary setObject:v231 forKeyedSubscript:@"JoinLinkUpLatencyFromDriverAvailability"];

  v232 = [WiFiUsagePrivacyFilter numberWithDurationMillisecond:self->_joinIpConfigurationLatencyFromDriverAvailability];
  [dictionary setObject:v232 forKeyedSubscript:@"JoinIpConfigurationLatencyFromDriverAvailability"];

  v233 = [WiFiUsagePrivacyFilter numberWithDurationMillisecond:self->_joinInterfaceRankingLatencyFromDriverAvailability];
  [dictionary setObject:v233 forKeyedSubscript:@"JoinInterfaceRankingLatencyFromDriverAvailability"];

  v234 = [WiFiUsagePrivacyFilter numberWithDurationMillisecond:self->_joinLinkUpLatencyFromSessionStart];
  [dictionary setObject:v234 forKeyedSubscript:@"JoinLinkUpLatencySinceSessionStart"];

  v235 = [MEMORY[0x277CCABB0] numberWithBool:*(v5 + 885)];
  [dictionary setObject:v235 forKeyedSubscript:@"WiFiCompatibilityModeEnabledAtStart"];

  v236 = [MEMORY[0x277CCABB0] numberWithBool:*(v5 + 886)];
  [dictionary setObject:v236 forKeyedSubscript:@"WiFiCompatibilityModeEnabledAtEnd"];

  v237 = [MEMORY[0x277CCABB0] numberWithInteger:self->_compatibilityModeChangeCount];
  [dictionary setObject:v237 forKeyedSubscript:@"WiFiCompatibilityModeChangeCount"];

  v238 = [WiFiUsagePrivacyFilter timePercentage:self->_inCompatibilityModeEnabledDuration overTotalDuration:self->_sessionDuration];
  [dictionary setObject:v238 forKeyedSubscript:@"WiFiCompatibilityModeEnabledDuration"];

  [dictionary setObject:self->_networkDisable6eModeAtStart forKeyedSubscript:@"NetworkDisable6EModeAtStart"];
  v239 = [MEMORY[0x277CCABB0] numberWithInteger:self->_network6eDisabledModeChangeCount];
  [dictionary setObject:v239 forKeyedSubscript:@"NetworkDisable6EModeChangeCount"];

  v240 = [WiFiUsagePrivacyFilter timePercentage:self->_inNetwork6eModeOffDuration overTotalDuration:self->_sessionDuration];
  [dictionary setObject:v240 forKeyedSubscript:@"NetworkIn6EModeOffDuration"];

  if ([(WiFiUsageSession *)self bandAtSessionStart]== 2)
  {
    v241 = [MEMORY[0x277CCABB0] numberWithBool:{-[WiFiUsageSession infraIsPartOfSplitSSID](self, "infraIsPartOfSplitSSID")}];
    [dictionary setObject:v241 forKeyedSubscript:@"infraIsPartOfSplitSSID"];
  }

  v242 = [WiFiUsagePrivacyFilter getLabelForNeighborsByBand:self->_roamNeighborsByBand];
  [dictionary setObject:v242 forKeyedSubscript:@"RoamNeighborsCountByBand"];

  v243 = [WiFiUsagePrivacyFilter getSumArrayCountAllBand:self->_roamNeighborsByBand];
  [dictionary setObject:v243 forKeyedSubscript:@"RoamNeighborsCountTotal"];

  v244 = [WiFiUsagePrivacyFilter numberWithInstances:self->_minCandidatesCount];
  [dictionary setObject:v244 forKeyedSubscript:@"RoamCandidatesCountMin"];

  v245 = [WiFiUsagePrivacyFilter numberWithInstances:self->_maxCandidatesCount];
  [dictionary setObject:v245 forKeyedSubscript:@"RoamCandidatesCountMax"];

  roamReasonLowRssiCount = self->_roamReasonLowRssiCount;
  if (roamReasonLowRssiCount)
  {
    v247 = [WiFiUsagePrivacyFilter getBinEvery10Over100:100 * self->_currentRSSIStrongestCount / roamReasonLowRssiCount As:0];
    [dictionary setObject:v247 forKeyedSubscript:@"RoamCandidatesLowRssiCurrentBSSIsBestPerc"];
  }

  else
  {
    [dictionary setObject:0 forKeyedSubscript:@"RoamCandidatesLowRssiCurrentBSSIsBestPerc"];
  }

  v248 = *&self->_strongestRSSICountByBand.valueByBand[2];
  v390 = *self->_strongestRSSICountByBand.valueByBand;
  v391 = v248;
  v249 = [WiFiUsagePrivacyFilter getLabelForPercIntegerByBand:&v390];
  [dictionary setObject:v249 forKeyedSubscript:@"RoamCandidatesStrongestRssiByBandPerc"];

  v250 = *&self->_strongestRSSIByBand.valueByBand[2];
  v390 = *self->_strongestRSSIByBand.valueByBand;
  v391 = v250;
  v251 = [WiFiUsagePrivacyFilter getLabelForRssiByBand:&v390];
  [dictionary setObject:v251 forKeyedSubscript:@"RoamCandidatesStrongestRssiByBand"];

  v252 = *&self->_roamNeighsSmllstCurrentToNextBestRssiByBandTransition.valueByBands[2][0];
  v392 = *&self->_roamNeighsSmllstCurrentToNextBestRssiByBandTransition.valueByBands[1][1];
  v393 = v252;
  v394 = *&self->_roamNeighsSmllstCurrentToNextBestRssiByBandTransition.valueByBands[2][2];
  v395 = *&self->_roamNeighsSmllstCurrentToNextBestRssiByBandTransition.valid[2][2];
  v253 = *&self->_roamNeighsSmllstCurrentToNextBestRssiByBandTransition.valueByBands[0][2];
  v390 = *&self->_roamNeighsSmllstCurrentToNextBestRssiByBandTransition.valueByBands[0][0];
  v391 = v253;
  v254 = [WiFiUsagePrivacyFilter getLabelForRssiDeltaByBandTransition:&v390];
  [dictionary setObject:v254 forKeyedSubscript:@"RoamCandidatesSmallestDiffCurrentToNextBestRSSIByBand"];

  v255 = *&self->_roamNeighsLrgstCurrentToNextBestRssiByBandTransition.valueByBands[2][0];
  v392 = *&self->_roamNeighsLrgstCurrentToNextBestRssiByBandTransition.valueByBands[1][1];
  v393 = v255;
  v394 = *&self->_roamNeighsLrgstCurrentToNextBestRssiByBandTransition.valueByBands[2][2];
  v395 = *&self->_roamNeighsLrgstCurrentToNextBestRssiByBandTransition.valid[2][2];
  v256 = *&self->_roamNeighsLrgstCurrentToNextBestRssiByBandTransition.valueByBands[0][2];
  v390 = *&self->_roamNeighsLrgstCurrentToNextBestRssiByBandTransition.valueByBands[0][0];
  v391 = v256;
  v257 = [WiFiUsagePrivacyFilter getLabelForRssiDeltaByBandTransition:&v390];
  [dictionary setObject:v257 forKeyedSubscript:@"RoamCandidatesLargestDiffCurrentToNextBestRSSIByBand"];

  v258 = *&self->_roamNeighsSmllstCurrentToBestRssiByBandTransition.valueByBands[2][0];
  v392 = *&self->_roamNeighsSmllstCurrentToBestRssiByBandTransition.valueByBands[1][1];
  v393 = v258;
  v394 = *&self->_roamNeighsSmllstCurrentToBestRssiByBandTransition.valueByBands[2][2];
  v395 = *&self->_roamNeighsSmllstCurrentToBestRssiByBandTransition.valid[2][2];
  v259 = *&self->_roamNeighsSmllstCurrentToBestRssiByBandTransition.valueByBands[0][2];
  v390 = *&self->_roamNeighsSmllstCurrentToBestRssiByBandTransition.valueByBands[0][0];
  v391 = v259;
  v260 = [WiFiUsagePrivacyFilter getLabelForRssiDeltaByBandTransition:&v390];
  [dictionary setObject:v260 forKeyedSubscript:@"RoamCandidatesSmallestDiffCurrentToBestRSSIByBand"];

  v261 = *&self->_roamNeighsLrgstCurrentToBestRssiByBandTransition.valueByBands[2][0];
  v392 = *&self->_roamNeighsLrgstCurrentToBestRssiByBandTransition.valueByBands[1][1];
  v393 = v261;
  v394 = *&self->_roamNeighsLrgstCurrentToBestRssiByBandTransition.valueByBands[2][2];
  v395 = *&self->_roamNeighsLrgstCurrentToBestRssiByBandTransition.valid[2][2];
  v262 = *&self->_roamNeighsLrgstCurrentToBestRssiByBandTransition.valueByBands[0][2];
  v390 = *&self->_roamNeighsLrgstCurrentToBestRssiByBandTransition.valueByBands[0][0];
  v391 = v262;
  v263 = [WiFiUsagePrivacyFilter getLabelForRssiDeltaByBandTransition:&v390];
  [dictionary setObject:v263 forKeyedSubscript:@"RoamCandidatesLargestDiffCurrentToBestRSSIByBand"];

  objc_msgSend_getModeCountersByCandidatesByBand_(WiFiUsagePrivacyFilter);
  v264 = [WiFiUsagePrivacyFilter getLabelForIntegerByBand:&v390 withCap:1];
  [dictionary setObject:v264 forKeyedSubscript:@"RoamCandidatesModeSuccessfulRoams"];

  objc_msgSend_getModeCountersByCandidatesByBand_(WiFiUsagePrivacyFilter);
  v265 = [WiFiUsagePrivacyFilter getLabelForIntegerByBand:&v390 withCap:1];
  [dictionary setObject:v265 forKeyedSubscript:@"RoamCandidatesModeUnsuccessfulRoams"];

  if (self->_ipV4DetailsPrevSession)
  {
    v266 = [MEMORY[0x277CCABB0] numberWithBool:*(v5 + 892)];
    [dictionary setObject:v266 forKeyedSubscript:@"ipv4ParamChange"];
  }

  if (self->_ipV6DetailsPrevSession)
  {
    v267 = [MEMORY[0x277CCABB0] numberWithBool:*(v5 + 893)];
    [dictionary setObject:v267 forKeyedSubscript:@"ipv6ParamChange"];
  }

  if ([(NSMutableArray *)self->_prevNetworkNames count]== 2)
  {
    v268 = MEMORY[0x277CCABB0];
    networkName = [(WiFiUsageNetworkDetails *)self->_networkDetails networkName];
    v270 = [(NSMutableArray *)self->_prevNetworkNames objectAtIndex:0];
    v271 = [v268 numberWithBool:{objc_msgSend(networkName, "isEqualToString:", v270)}];
    [dictionary setObject:v271 forKeyedSubscript:@"PrevJoinLeftSameSSID"];
  }

  if (self->_prevJoinReason != -1)
  {
    v272 = [objc_opt_class() joinReasonString:self->_prevJoinReason];
    [dictionary setObject:v272 forKeyedSubscript:@"PrevJoinReason"];

    v273 = [WiFiUsagePrivacyFilter getBinFor:self->_timeSincePrevJoin In:&unk_2848BAF40 WithLowestEdge:@"0" As:1];
    [dictionary setObject:v273 forKeyedSubscript:@"timeSincePrevJoin"];
  }

  v274 = [MEMORY[0x277CCABB0] numberWithBool:*(v5 + 896)];
  [dictionary setObject:v274 forKeyedSubscript:@"inCoexRealTimeAtJoin"];

  v275 = [MEMORY[0x277CCABB0] numberWithBool:*(v5 + 895)];
  [dictionary setObject:v275 forKeyedSubscript:@"inCoexRealTimeAtSessionStart"];

  v276 = [MEMORY[0x277CCABB0] numberWithBool:*(v5 + 894)];
  [dictionary setObject:v276 forKeyedSubscript:@"inCoexRealTimeAtSessionEnd"];

  if (self->_lastCoexRealTimeOn)
  {
    v277 = MEMORY[0x277CCABB0];
    [(NSDate *)self->_sessionEndTime timeIntervalSinceDate:?];
    v279 = [v277 numberWithInteger:v278];
    [dictionary setObject:v279 forKeyedSubscript:@"timeSinceLastRTCoexStarted"];
  }

  if (self->_lastCoexRealTimeOff)
  {
    v280 = MEMORY[0x277CCABB0];
    [(NSDate *)self->_sessionEndTime timeIntervalSinceDate:?];
    v282 = [v280 numberWithInteger:v281];
    [dictionary setObject:v282 forKeyedSubscript:@"timeSinceLastRTCoexEnded"];
  }

  v283 = [WiFiUsagePrivacyFilter numberWithInstances:self->_joinReasonCount[1]];
  [dictionary setObject:v283 forKeyedSubscript:@"JoinReasonAutoCount"];

  v284 = [WiFiUsagePrivacyFilter numberWithInstances:self->_joinReasonCount[2]];
  [dictionary setObject:v284 forKeyedSubscript:@"JoinReasonSettingsCount"];

  v285 = [WiFiUsagePrivacyFilter numberWithInstances:self->_joinReasonCount[3]];
  [dictionary setObject:v285 forKeyedSubscript:@"JoinReasonAskToJoinCount"];

  v286 = [WiFiUsagePrivacyFilter numberWithInstances:self->_joinReasonCount[4]];
  [dictionary setObject:v286 forKeyedSubscript:@"JoinReasonRecommendationCount"];

  v287 = [WiFiUsagePrivacyFilter numberWithInstances:self->_joinReasonCount[5]];
  [dictionary setObject:v287 forKeyedSubscript:@"JoinReasonApplicationCount"];

  v288 = [WiFiUsagePrivacyFilter numberWithInstances:self->_joinReasonCount[6]];
  [dictionary setObject:v288 forKeyedSubscript:@"JoinReasonHomeKitCount"];

  v289 = [WiFiUsagePrivacyFilter numberWithInstances:self->_joinReasonCount[7]];
  [dictionary setObject:v289 forKeyedSubscript:@"JoinReasonControlCenterCount"];

  v290 = [WiFiUsagePrivacyFilter numberWithInstances:self->_joinReasonCount[8]];
  [dictionary setObject:v290 forKeyedSubscript:@"JoinReasonOtherClientCount"];

  v291 = [WiFiUsagePrivacyFilter numberWithInstances:self->_joinReasonCount[9]];
  [dictionary setObject:v291 forKeyedSubscript:@"JoinReasonLegacyTransitionCount"];

  v292 = [WiFiUsagePrivacyFilter numberWithInstances:self->_joinReasonCount[10]];
  [dictionary setObject:v292 forKeyedSubscript:@"JoinReasonAutoHotspotCount"];

  v293 = [WiFiUsagePrivacyFilter numberWithInstances:self->_joinReasonCount[11]];
  [dictionary setObject:v293 forKeyedSubscript:@"JoinReasonUserOverridesAutoJoinDenyListCount"];

  v294 = [WiFiUsagePrivacyFilter numberWithInstances:self->_joinReasonCount[12]];
  [dictionary setObject:v294 forKeyedSubscript:@"JoinReasonSeamlessTransitionCount"];

  v295 = [WiFiUsagePrivacyFilter numberWithInstances:self->_joinReasonCount[13]];
  [dictionary setObject:v295 forKeyedSubscript:@"JoinReasonSetupCount"];

  v296 = [WiFiUsagePrivacyFilter numberWithInstances:self->_joinReasonCount[14]];
  [dictionary setObject:v296 forKeyedSubscript:@"JoinReasonSharingCount"];

  if (self->_countRoamScan)
  {
    v297 = [MEMORY[0x277CCABB0] numberWithBool:*(v5 + 901)];
    [dictionary setObject:v297 forKeyedSubscript:@"LastRoamScanFoundSSIDTransitionTarget"];

    v298 = [WiFiUsagePrivacyFilter numberWithInstances:self->_countSSIDTransitionTargetInLastRoamScan];
    [dictionary setObject:v298 forKeyedSubscript:@"LastRoamScanFoundSSIDTransitionTargetCount"];

    v299 = [WiFiUsagePrivacyFilter numberWithInstances:self->_countRoamScanThatFoundSSIDTransitionTarget];
    [dictionary setObject:v299 forKeyedSubscript:@"FoundSSIDTransitionTargetRoamScanCount"];

    v300 = [MEMORY[0x277CCABB0] numberWithInteger:((self->_countRoamScanThatFoundSSIDTransitionTarget * 100.0) / self->_countRoamScan)];
    [dictionary setObject:v300 forKeyedSubscript:@"RoamScanFoundSSIDTransitionTargetAsPercOfFailedRoam"];

    v301 = [MEMORY[0x277CCABB0] numberWithBool:*(v5 + 902)];
    [dictionary setObject:v301 forKeyedSubscript:@"LastRoamScanFoundPotentialSSIDTransitionCandidate"];

    v302 = [WiFiUsagePrivacyFilter numberWithInstances:self->_countSSIDTransitionPotentialCandidatesInLastRoamScan];
    [dictionary setObject:v302 forKeyedSubscript:@"LastRoamScanPotentialSSIDTransitionCandidateCount"];

    v303 = [WiFiUsagePrivacyFilter numberWithInstances:self->_countSSIDTransitionPotentialCandidatesInLastRoamScanNotInTransitionableSet];
    [dictionary setObject:v303 forKeyedSubscript:@"LastRoamScanPotentialSSIDTransitionCandidateNotSSIDTransitionTargetCount"];

    v304 = [WiFiUsagePrivacyFilter numberWithInstances:self->_countRoamScanThatFoundSSIDTransitionPotentialCandidate];
    [dictionary setObject:v304 forKeyedSubscript:@"FoundPotentialSSIDTransitionCandidateRoamScanCount"];

    v305 = [MEMORY[0x277CCABB0] numberWithInteger:((self->_countRoamScanThatFoundSSIDTransitionPotentialCandidate * 100.0) / self->_countRoamScan)];
    [dictionary setObject:v305 forKeyedSubscript:@"RoamScanFoundPotentialSSIDTransitionCandidateAsPercOfFailedRoam"];

    v306 = [MEMORY[0x277CCABB0] numberWithBool:self->_lastRoamScanContainsRoamCandidateCount != 0];
    [dictionary setObject:v306 forKeyedSubscript:@"LastRoamScanContainsRoamCandidate"];

    v307 = [WiFiUsagePrivacyFilter numberWithInstances:self->_lastRoamScanContainsRoamCandidateCount];
    [dictionary setObject:v307 forKeyedSubscript:@"LastRoamScanContainsRoamCandidateCount"];

    v308 = [WiFiUsagePrivacyFilter numberWithInstances:self->_lastRoamScanUniqueChannelsCount];
    [dictionary setObject:v308 forKeyedSubscript:@"LastRoamScanUniqueChannelsCount"];

    v309 = [WiFiUsagePrivacyFilter numberWithInstances:self->_lastRoamScanUniqueBandsCount];
    [dictionary setObject:v309 forKeyedSubscript:@"LastRoamScanUniqueBandsCount"];
  }

  if (self->_type != 9)
  {
    v310 = [WiFiUsagePrivacyFilter numberWithInstances:self->_inPoorLinkSessionCount];
    [dictionary setObject:v310 forKeyedSubscript:@"WiFiInPoorLinkSessionCount"];

    v311 = [WiFiUsagePrivacyFilter timePercentage:self->_inPoorLinkSessionDuration overTotalDuration:self->_sessionDuration];
    [dictionary setObject:v311 forKeyedSubscript:@"WiFiInPoorLinkSessionDurationPerc"];

    v312 = [WiFiUsagePrivacyFilter timePercentage:self->_inPoorLinkSessionDuration overTotalDuration:self->_associatedDuration];
    [dictionary setObject:v312 forKeyedSubscript:@"WiFiInPoorLinkAssocPerc"];

    v313 = [WiFiUsagePrivacyFilter numberWithInstances:self->_tdAfterJoinAfterTDCount];
    [dictionary setObject:v313 forKeyedSubscript:@"TDAfterJoinAfterTDCount"];

    if (self->_min_subsequentTdAfterJoinAfterTDCount == 0x7FFFFFFFFFFFFFFFLL)
    {
      [dictionary setObject:0 forKeyedSubscript:@"TDAfterJoinAfterTDMinSequenceLen"];
    }

    else
    {
      v314 = [WiFiUsagePrivacyFilter numberWithInstances:?];
      [dictionary setObject:v314 forKeyedSubscript:@"TDAfterJoinAfterTDMinSequenceLen"];
    }

    v315 = [WiFiUsagePrivacyFilter numberWithInstances:self->_max_subsequentTdAfterJoinAfterTDCount];
    [dictionary setObject:v315 forKeyedSubscript:@"TDAfterJoinAfterTDMaxSequenceLen"];

    v316 = [WiFiUsagePrivacyFilter numberWithInstances:self->_tdSessionStartedByBadRSSICount];
    [dictionary setObject:v316 forKeyedSubscript:@"PoorLinkSessionStartedByBadRSSICount"];

    v317 = [WiFiUsagePrivacyFilter numberWithInstances:self->_tdSessionStartedByTDRecommendedCount];
    [dictionary setObject:v317 forKeyedSubscript:@"PoorLinkSessionStartedByTDRecommendedCount"];

    v318 = [WiFiUsagePrivacyFilter numberWithInstances:self->_tdSessionStartedBySymptomDNSFailureCount];
    [dictionary setObject:v318 forKeyedSubscript:@"PoorLinkSessionStartedBySymptomDNSFailureCount"];
  }

  v319 = [WiFiUsagePrivacyFilter numberWithInstances:self->_tdEvalEndedCount];
  [dictionary setObject:v319 forKeyedSubscript:@"TDEvalEndedCount"];

  v320 = [WiFiUsagePrivacyFilter timePercentage:self->_tdEvalCumulativeDuration overTotalDuration:self->_sessionDuration];
  [dictionary setObject:v320 forKeyedSubscript:@"TDEvalDurationPerc"];

  v321 = [WiFiUsagePrivacyFilter numberWithInstances:self->_tdEvalStartedCount];
  [dictionary setObject:v321 forKeyedSubscript:@"TDEvalStartedCount"];

  v322 = [WiFiUsagePrivacyFilter numberWithInstances:self->_tdEvalStartedByBadRSSICount];
  [dictionary setObject:v322 forKeyedSubscript:@"TDEvalStartedByBadRSSICount"];

  v323 = [WiFiUsagePrivacyFilter numberWithInstances:self->_tdEvalStartedBySymptomsARPFailureCount];
  [dictionary setObject:v323 forKeyedSubscript:@"TDEvalStartedBySymptomsARPFailureCount"];

  v324 = [WiFiUsagePrivacyFilter numberWithInstances:self->_tdEvalStartedBySymptomsShortFlowCount];
  [dictionary setObject:v324 forKeyedSubscript:@"TDEvalStartedBySymptomsShortFlowCount"];

  v325 = [WiFiUsagePrivacyFilter numberWithInstances:self->_tdEvalStartedBySymptomsDataStallCount];
  [dictionary setObject:v325 forKeyedSubscript:@"TDEvalStartedBySymptomsDataStallCount"];

  v326 = [WiFiUsagePrivacyFilter numberWithInstances:self->_tdEvalStartedBySymptomsDNSStallCount];
  [dictionary setObject:v326 forKeyedSubscript:@"TDEvalStartedBySymptomsDNSStallCount"];

  v327 = [WiFiUsagePrivacyFilter numberWithInstances:self->_tdEvalStartedBySymptomsDNSFailCount];
  [dictionary setObject:v327 forKeyedSubscript:@"TDEvalStartedBySymptomsDNSFailCount"];

  v328 = [WiFiUsagePrivacyFilter numberWithInstances:self->_tdEvalStartedByActiveProbingCount];
  [dictionary setObject:v328 forKeyedSubscript:@"TDEvalStartedByActiveProbingCount"];

  v329 = [WiFiUsagePrivacyFilter numberWithInstances:self->_tdEvalStartedByFGNetwAppChangeCount];
  [dictionary setObject:v329 forKeyedSubscript:@"TDEvalStartedByFGNetwAppChangeCount"];

  v330 = [WiFiUsagePrivacyFilter numberWithInstances:self->_tdEvalStartedByUserNotificationCount];
  [dictionary setObject:v330 forKeyedSubscript:@"TDEvalStartedByUserNotificationCount"];

  v331 = [WiFiUsagePrivacyFilter numberWithInstances:self->_tdEvalStartedByCheckReassocCount];
  [dictionary setObject:v331 forKeyedSubscript:@"TDEvalStartedByCheckReassocCount"];

  v332 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_inAWDL_BestInfraScore];
  [dictionary setObject:v332 forKeyedSubscript:@"inAWDL_bestInfraScore"];

  v333 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_inAWDL_WorstInfraScore];
  [dictionary setObject:v333 forKeyedSubscript:@"inAWDL_worstInfraScore"];

  inAWDL_BestP2PScore = self->_inAWDL_BestP2PScore;
  *&inAWDL_BestP2PScore = inAWDL_BestP2PScore;
  v335 = [MEMORY[0x277CCABB0] numberWithFloat:inAWDL_BestP2PScore];
  [dictionary setObject:v335 forKeyedSubscript:@"inAWDL_bestP2PScore"];

  inAWDL_WorstP2PScore = self->_inAWDL_WorstP2PScore;
  *&inAWDL_WorstP2PScore = inAWDL_WorstP2PScore;
  v337 = [MEMORY[0x277CCABB0] numberWithFloat:inAWDL_WorstP2PScore];
  [dictionary setObject:v337 forKeyedSubscript:@"inAWDL_worstP2PScore"];

  v338 = [WiFiUsagePrivacyFilter timePercentage:self->_inAWDL_BestInfraScoreDuration overTotalDuration:self->_sessionDuration];
  [dictionary setObject:v338 forKeyedSubscript:@"inAWDL_bestInfraScoreDurationPerc"];

  v339 = [WiFiUsagePrivacyFilter timePercentage:self->_inAWDL_WorstInfraScoreDuration overTotalDuration:self->_sessionDuration];
  [dictionary setObject:v339 forKeyedSubscript:@"inAWDL_worstInfraScoreDurationPerc"];

  v340 = [WiFiUsagePrivacyFilter timePercentage:self->_inAWDL_BestP2PScoreDuration overTotalDuration:self->_sessionDuration];
  [dictionary setObject:v340 forKeyedSubscript:@"inAWDL_bestP2PScoreDurationPerc"];

  v341 = [WiFiUsagePrivacyFilter timePercentage:self->_inAWDL_WorstP2PScoreDuration overTotalDuration:self->_sessionDuration];
  [dictionary setObject:v341 forKeyedSubscript:@"inAWDL_worstP2PScoreDurationPerc"];

  inAWDL_BestInfraScoreDuration = self->_inAWDL_BestInfraScoreDuration;
  *&inAWDL_BestInfraScoreDuration = inAWDL_BestInfraScoreDuration;
  v343 = [MEMORY[0x277CCABB0] numberWithFloat:inAWDL_BestInfraScoreDuration];
  [dictionary setObject:v343 forKeyedSubscript:@"inAWDL_bestInfraScoreDuration"];

  inAWDL_WorstInfraScoreDuration = self->_inAWDL_WorstInfraScoreDuration;
  *&inAWDL_WorstInfraScoreDuration = inAWDL_WorstInfraScoreDuration;
  v345 = [MEMORY[0x277CCABB0] numberWithFloat:inAWDL_WorstInfraScoreDuration];
  [dictionary setObject:v345 forKeyedSubscript:@"inAWDL_worstInfraScoreDuration"];

  inAWDL_BestP2PScoreDuration = self->_inAWDL_BestP2PScoreDuration;
  *&inAWDL_BestP2PScoreDuration = inAWDL_BestP2PScoreDuration;
  v347 = [MEMORY[0x277CCABB0] numberWithFloat:inAWDL_BestP2PScoreDuration];
  [dictionary setObject:v347 forKeyedSubscript:@"inAWDL_bestP2PScoreDuration"];

  inAWDL_WorstP2PScoreDuration = self->_inAWDL_WorstP2PScoreDuration;
  *&inAWDL_WorstP2PScoreDuration = inAWDL_WorstP2PScoreDuration;
  v349 = [MEMORY[0x277CCABB0] numberWithFloat:inAWDL_WorstP2PScoreDuration];
  [dictionary setObject:v349 forKeyedSubscript:@"inAWDL_worstP2PScoreDuration"];

  v350 = [MEMORY[0x277CCABB0] numberWithBool:self->_maxPhyMode == 512];
  [dictionary setObject:v350 forKeyedSubscript:@"hasAssocToWiFi7"];

  v351 = MEMORY[0x277CCABB0];
  objc_msgSend_bandUsageDuration(self);
  v352 = [v351 numberWithBool:v389];
  [dictionary setObject:v352 forKeyedSubscript:@"hasAssocToWiFi6E"];

  v353 = [MEMORY[0x277CCABB0] numberWithBool:self->_maxPhyMode == 256];
  [dictionary setObject:v353 forKeyedSubscript:@"hasAssocToWiFi6"];

  v354 = [MEMORY[0x277CCABB0] numberWithBool:self->_maxPhyMode == 128];
  [dictionary setObject:v354 forKeyedSubscript:@"hasAssocToWiFi5"];

  v355 = [MEMORY[0x277CCABB0] numberWithBool:self->_maxPhyMode == 16];
  [dictionary setObject:v355 forKeyedSubscript:@"hasAssocToWiFi4"];

  v356 = [MEMORY[0x277CCABB0] numberWithBool:self->_maxPhyMode == 8];
  [dictionary setObject:v356 forKeyedSubscript:@"hasAssocToWiFi3"];

  v357 = [MEMORY[0x277CCABB0] numberWithBool:self->_maxPhyMode == 2];
  [dictionary setObject:v357 forKeyedSubscript:@"hasAssocToWiFi2"];

  v358 = [MEMORY[0x277CCABB0] numberWithBool:self->_maxPhyMode == 4];
  [dictionary setObject:v358 forKeyedSubscript:@"hasAssocToWiFi1"];

  capabilities = self->_capabilities;
  if (!capabilities)
  {
    v360 = [[WiFiUsageInterfaceCapabilities alloc] initWithInterfaceName:self->_interfaceName];
    v361 = self->_capabilities;
    self->_capabilities = v360;

    capabilities = self->_capabilities;
  }

  v362 = [WiFiUsagePrivacyFilter getLabelForPhyModes:[WiFiUsageLQMTransformations maxPhyModeFrom:[(WiFiUsageInterfaceCapabilities *)capabilities supportedPhyModes]]];
  [dictionary setObject:v362 forKeyedSubscript:@"WiFiRadioTechCapable"];

  if (self->_disconnectReasonMap)
  {
    [dictionary addEntriesFromDictionary:?];
  }

  lqm = self->_lqm;
  if (lqm)
  {
    v364 = [(WiFiUsageSessionLQM *)lqm eventDictionary:dictionaryCopy];
    [dictionary addEntriesFromDictionary:v364];
  }

  networkDetails = self->_networkDetails;
  if (networkDetails)
  {
    v366 = [(WiFiUsageNetworkDetails *)networkDetails eventDictionary:dictionaryCopy];
    [dictionary addEntriesFromDictionary:v366];
  }

  v367 = [MEMORY[0x277CCABB0] numberWithBool:self->_awdlActiveTime != 0];
  [dictionary setObject:v367 forKeyedSubscript:@"WiFiIsAwdlActive"];

  v368 = [MEMORY[0x277CCABB0] numberWithBool:*(v5 + 887)];
  [dictionary setObject:v368 forKeyedSubscript:@"WiFiIsLinkRecoveryDisabled"];

  v369 = [MEMORY[0x277CCABB0] numberWithBool:*(v5 + 883)];
  [dictionary setObject:v369 forKeyedSubscript:@"cellularFallbackEnabled"];

  v370 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_forwardedBssInwakeCount];
  [dictionary setObject:v370 forKeyedSubscript:@"forwardedBssInwakeCount"];

  v371 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_forwardedBssInSleepCount];
  [dictionary setObject:v371 forKeyedSubscript:@"forwardedBssInSleepCount"];

  v372 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_hostScanTriggersCount];
  [dictionary setObject:v372 forKeyedSubscript:@"hostScanTriggersCount"];

  v373 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_roamScanTriggersCount];
  [dictionary setObject:v373 forKeyedSubscript:@"roamScanTriggersCount"];

  v374 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_pnoScanTriggersCount];
  [dictionary setObject:v374 forKeyedSubscript:@"pnoScanTriggersCount"];

  v375 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_epnoScanTriggersCount];
  [dictionary setObject:v375 forKeyedSubscript:@"epnoScanTriggersCount"];

  v376 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_currentBssMsgInWakeCount];
  [dictionary setObject:v376 forKeyedSubscript:@"currentBssMsgInWakeCount"];

  v377 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_currentBssMsgInSleepCount];
  [dictionary setObject:v377 forKeyedSubscript:@"currentBssMsgInSleepCount"];

  v378 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_scanDataMsgInWakeCount];
  [dictionary setObject:v378 forKeyedSubscript:@"scanDataMsgInWakeCount"];

  v379 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_scanDataMsgInSleepCount];
  [dictionary setObject:v379 forKeyedSubscript:@"scanDataMsgInSleepCount"];

  v380 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_spmiMsgInAwakeCount];
  [dictionary setObject:v380 forKeyedSubscript:@"spmiMsgInAwakeCount"];

  v381 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_spmiMsgInSleepCount];
  [dictionary setObject:v381 forKeyedSubscript:@"spmiMsgInSleepCount"];

  v382 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_spmiMsgDropRssiFilterCount];
  [dictionary setObject:v382 forKeyedSubscript:@"spmiMsgDropRssiFilterCount"];

  v383 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_spmiMsgDropMaxFilterCount];
  [dictionary setObject:v383 forKeyedSubscript:@"spmiMsgDropMaxFilterCount"];

  v384 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_spmiMsgDropSpmiFailCount];
  [dictionary setObject:v384 forKeyedSubscript:@"spmiMsgDropSpmiFailCount"];

  v385 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_bssDropLowMemoryCount];
  [dictionary setObject:v385 forKeyedSubscript:@"bssDropLowMemoryCount"];

  v386 = [MEMORY[0x277CCABB0] numberWithBool:*(v5 + 907)];
  [dictionary setObject:v386 forKeyedSubscript:@"NetworkIsInstantHotspot"];

  v387 = [MEMORY[0x277CCABB0] numberWithBool:*(v5 + 908)];
  [dictionary setObject:v387 forKeyedSubscript:@"NetworkIsAutoHotspot"];

  return dictionary;
}

- (id)eventDictionaryByBand:(int)band isFirst:(BOOL)first
{
  firstCopy = first;
  v5 = *&band;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  memset(v28, 0, sizeof(v28));
  sessionDuration = self->_sessionDuration;
  v9 = *&self->_bandUsageDuration.valueByBand[2];
  v26 = *self->_bandUsageDuration.valueByBand;
  v27 = v9;
  objc_msgSend_getPercForFloatByBand_Over_(WiFiUsagePrivacyFilter, sessionDuration);
  sessionName = [(WiFiUsageSession *)self sessionName];
  [dictionary setObject:sessionName forKeyedSubscript:@"SessionName"];

  v11 = [WiFiUsagePrivacyFilter numberWithDuration:self->_sessionDuration];
  [dictionary setObject:v11 forKeyedSubscript:@"SessionDuration"];

  v12 = [WiFiUsagePrivacyFilter getBinTimeInterval:1 As:self->_sessionDuration];
  [dictionary setObject:v12 forKeyedSubscript:@"SessionDurationAsString"];

  v13 = [MEMORY[0x277CCABB0] numberWithBool:firstCopy];
  [dictionary setObject:v13 forKeyedSubscript:@"firstEvent"];

  v14 = [WiFiUsagePrivacyFilter bandAsString:v5];
  [dictionary setObject:v14 forKeyedSubscript:@"band"];

  objc_msgSend_bandUsageDuration(self);
  v15 = v5;
  v16 = 0.0;
  if (*(&v25[7] + v5) == 1)
  {
    objc_msgSend_bandUsageDuration(self, 0.0);
    v16 = v25[v5];
  }

  v17 = [WiFiUsagePrivacyFilter getBinTimeInterval:1 As:v16];
  [dictionary setObject:v17 forKeyedSubscript:@"durationOnBand"];

  if (*(&v28[1] + v15 + 8) == 1)
  {
    v18 = *(v28 + v15);
  }

  else
  {
    v18 = 0;
  }

  v19 = [WiFiUsagePrivacyFilter getBinEvery10Over100:v18 As:0];
  [dictionary setObject:v19 forKeyedSubscript:@"durationOnBandPerc"];

  v26 = 0u;
  v27 = 0u;
  objc_msgSend_getPercForFloatByBand_Over_(WiFiUsagePrivacyFilter, self->_associatedDuration, *&self->_bandUsageDuration.valueByBand[0], *&self->_bandUsageDuration.valueByBand[1], *&self->_bandUsageDuration.valueByBand[2], *self->_bandUsageDuration.valid);
  v20 = [WiFiUsagePrivacyFilter timePercentage:self->_associatedDuration overTotalDuration:self->_sessionDuration];
  [dictionary setObject:v20 forKeyedSubscript:@"WiFiAssociatedDuration"];

  v21 = [WiFiUsagePrivacyFilter getBinTimeInterval:1 As:self->_associatedDuration];
  [dictionary setObject:v21 forKeyedSubscript:@"WiFiAssociatedDurationAsString"];

  v22 = 0;
  if (*(&v27 + v15 + 8) == 1)
  {
    v22 = *(&v26 + v15);
  }

  v23 = [WiFiUsagePrivacyFilter getBinEvery10Over100:v22 As:0];
  [dictionary setObject:v23 forKeyedSubscript:@"durationOnBandPercOfAssoc"];

  return dictionary;
}

- (id)sessionSummary:(BOOL)summary
{
  summaryCopy = summary;
  v4 = [(WiFiUsageSession *)self copy];
  [v4 summarizeSession];
  v5 = [v4 eventDictionary:summaryCopy];

  return v5;
}

- (unint64_t)totalRxFrames
{
  v2 = [(WiFiUsageSession *)self lqm];
  totalRxFrames = [v2 totalRxFrames];

  return totalRxFrames;
}

- (unint64_t)totalTxFrames
{
  v2 = [(WiFiUsageSession *)self lqm];
  totalTxFrames = [v2 totalTxFrames];

  return totalTxFrames;
}

- (int64_t)averageCca
{
  v2 = [(WiFiUsageSession *)self lqm];
  avgTotalCca = [v2 avgTotalCca];

  return avgTotalCca;
}

- (int64_t)averageRssi
{
  v2 = [(WiFiUsageSession *)self lqm];
  avgRssi = [v2 avgRssi];

  return avgRssi;
}

- (int64_t)averageSnr
{
  v2 = [(WiFiUsageSession *)self lqm];
  avgSnr = [v2 avgSnr];

  return avgSnr;
}

- (int64_t)lastRssi
{
  v2 = [(WiFiUsageSession *)self lqm];
  lastRssi = [v2 lastRssi];

  return lastRssi;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = &self->_disconnectReasonCount[928];
  v5 = [objc_alloc(objc_opt_class()) initWithSessionType:self->_type andInterfaceName:self->_interfaceName andCapabilities:self->_capabilities];
  [v5 setCompletionQueue:self->_completionQueue];
  [v5 setCompletionContext:self->_completionContext];
  [v5 setCompletionHandler:self->_completionHandler];
  objc_storeStrong((v5 + 9224), self->_ca_config);
  *(v5 + 9072) = *(v4 + 880);
  [v5 setSessionStartTime:self->_sessionStartTime];
  [v5 setSessionEndTime:self->_sessionEndTime];
  v6 = [(WiFiUsageBssSession *)self->_currentBssSession copy];
  v7 = *(v5 + 9152);
  *(v5 + 9152) = v6;

  *(v5 + 9068) = *(v4 + 876);
  *(v5 + 9069) = *(v4 + 877);
  *(v5 + 9070) = *(v4 + 878);
  *(v5 + 9071) = *(v4 + 879);
  *(v5 + 9192) = self->_driverUnavailabilityCount;
  *(v5 + 10840) = self->_lastThermalIndex;
  *(v5 + 10832) = self->_lastPowerBudget;
  v8 = [(NSMutableSet *)self->_activeApplications copy];
  v9 = *(v5 + 10824);
  *(v5 + 10824) = v8;

  v10 = [(WiFiUsageSessionLQM *)self->_lqm copy];
  v11 = *(v5 + 10816);
  *(v5 + 10816) = v10;

  *(v5 + 10672) = self->_triggerDisconnectAlertedCount;
  *(v5 + 10680) = self->_triggerDisconnectConfirmedCount;
  *(v5 + 10688) = self->_triggerDisconnectExecutedCount;
  *(v5 + 10640) = self->_netInterfaceTxBytes;
  *(v5 + 10648) = self->_netInterfaceRxBytes;
  *(v5 + 10656) = self->_secondaryInterfaceTxBytes;
  *(v5 + 10664) = self->_secondaryInterfaceRxBytes;
  v12 = [(WiFiUsageInterfaceStats *)self->_ifStatsAtStart copy];
  v13 = *(v5 + 10624);
  *(v5 + 10624) = v12;

  v14 = [(WiFiUsageInterfaceStats *)self->_secondaryIfStatsAtStart copy];
  v15 = *(v5 + 10632);
  *(v5 + 10632) = v14;

  *(v5 + 10608) = self->_neighborBssCount;
  *(v5 + 10616) = self->_otherBssCount;
  *(v5 + 10440) = self->_systemWakeStateChangedCount;
  *(v5 + 10448) = self->_systemWokenByWiFiCount;
  *(v5 + 10456) = self->_lockStateChangedCount;
  *(v5 + 10464) = self->_displayStateChangedCount;
  *(v5 + 10472) = self->_networkChangedCount;
  *(v5 + 10480) = self->_joinStateChangedCount;
  *(v5 + 10496) = self->_linkStateChangedCount;
  *(v5 + 10504) = self->_applicationStateChangedCount;
  *(v5 + 10512) = self->_powerStateChangedCount;
  *(v5 + 10520) = self->_powerToggleEventCount;
  *(v5 + 10576) = self->_rapidLinkTransitionCount;
  *(v5 + 10584) = self->_primaryInterfaceStateChangeCount;
  *(v5 + 10552) = self->_controlCenterToggleEventCount;
  *(v5 + 10544) = self->_controlCenterStateChangedCount;
  *(v5 + 10560) = self->_cellularFallbackStateChangedCount;
  *(v5 + 10568) = self->_cellularOutrankingStateChangedCount;
  *(v5 + 10280) = self->_mediaPlaybackEventCount;
  *(v5 + 10288) = self->_chargingEventCount;
  *(v5 + 10296) = self->_inCallEventCount;
  *(v5 + 10312) = self->_inVehicleEventCount;
  *(v5 + 10320) = self->_inMotionEventCount;
  *(v5 + 10328) = self->_inA2dpEventCount;
  *(v5 + 10336) = self->_inScoEventCount;
  *(v5 + 10344) = self->_inHidPresentCount;
  *(v5 + 10352) = self->_inAwdlEventCount;
  *(v5 + 10360) = self->_inRoamEventCount;
  *(v5 + 10368) = self->_inScanEventCount;
  *(v5 + 10376) = self->_inSoftApEventCount;
  *(v5 + 10384) = self->_rangingEventCount;
  *(v5 + 10392) = self->_companionConnectionStateChangedCount;
  *(v5 + 10528) = self->_smartCoverStateChangedCount;
  v16 = [(NSString *)self->_lastSmartCoverState copy];
  v17 = *(v5 + 10536);
  *(v5 + 10536) = v16;

  *(v5 + 9176) = self->_consecutiveJoinFailureCount;
  *(v5 + 10400) = self->_linkRecoveryDisabledCount;
  *(v5 + 9089) = *(v4 + 897);
  *(v5 + 9090) = *(v4 + 898);
  *(v5 + 9091) = *(v4 + 899);
  *(v5 + 9092) = *(v4 + 900);
  objc_storeStrong((v5 + 10992), self->_btAudioBand);
  *(v5 + 10408) = self->_wowStateChangedCount;
  *(v5 + 10416) = self->_lpasStateChangedCount;
  *(v5 + 10424) = self->_lowPowerStateChangedCount;
  *(v5 + 10432) = self->_batterySaverStateChangedCount;
  *(v5 + 10192) = self->_thermalIndexMaxDuration;
  *(v5 + 10200) = self->_thermalIndex90Duration;
  *(v5 + 10208) = self->_thermalIndex80Duration;
  *(v5 + 10216) = self->_thermalIndex70Duration;
  *(v5 + 10224) = self->_thermalIndex60Duration;
  *(v5 + 10232) = self->_thermalIndex50Duration;
  *(v5 + 10240) = self->_thermalIndex40Duration;
  *(v5 + 10248) = self->_thermalIndex30Duration;
  *(v5 + 10256) = self->_thermalIndex20Duration;
  *(v5 + 10264) = self->_thermalIndex10Duration;
  *(v5 + 10272) = self->_thermalIndexMinDuration;
  *(v5 + 10104) = self->_powerBudgetMaxDuration;
  *(v5 + 10112) = self->_powerBudget90Duration;
  *(v5 + 10120) = self->_powerBudget80Duration;
  *(v5 + 10128) = self->_powerBudget70Duration;
  *(v5 + 10136) = self->_powerBudget60Duration;
  *(v5 + 10144) = self->_powerBudget50Duration;
  *(v5 + 10152) = self->_powerBudget40Duration;
  *(v5 + 10160) = self->_powerBudget30Duration;
  *(v5 + 10168) = self->_powerBudget20Duration;
  *(v5 + 10176) = self->_powerBudget10Duration;
  *(v5 + 10184) = self->_powerBudgetMinDuration;
  *(v5 + 9840) = self->_roamReasonInitialAssociationCount;
  *(v5 + 9848) = self->_roamReasonLowRssiCount;
  *(v5 + 9856) = self->_roamReasonDeauthDisassocCount;
  *(v5 + 9864) = self->_roamReasonBeaconLostCount;
  *(v5 + 9872) = self->_roamReasonSteeredByApCount;
  *(v5 + 9880) = self->_roamReasonSteeredByBtmCount;
  *(v5 + 9888) = self->_roamReasonSteeredByCsaCount;
  *(v5 + 9896) = self->_roamReasonReassocRequestedCount;
  *(v5 + 9904) = self->_roamReasonHostTriggeredCount;
  *(v5 + 9912) = self->_roamReasonBetterCandidateCount;
  *(v5 + 9920) = self->_roamReasonBetterConditionCount;
  *(v5 + 9928) = self->_roamReasonMiscCount;
  *(v5 + 9936) = self->_roamStatusSucceededCount;
  *(v5 + 9944) = self->_roamStatusFailedCount;
  *(v5 + 9952) = self->_roamStatusNoCandidateCount;
  *(v5 + 9960) = self->_roamStatusNoQualifiedCandidateCount;
  *(v5 + 9968) = self->_roamStatusFailedNoScan;
  *(v5 + 9976) = self->_roamIsWNMScoreUsedCount;
  *(v5 + 9984) = self->_roamPingPongAboveThresholdCount;
  *(v5 + 9992) = self->_roamPingPongAboveThresholdCountLowRssiOnly;
  *(v5 + 10000) = self->_roamPingPongLowRssiAndReassocOnly;
  *(v5 + 10008) = self->_roamPingPongReassocOnly;
  *(v5 + 9082) = *(v4 + 890);
  v18 = [(NSDate *)self->_lastRoamSuppressionToggled copy];
  v19 = *(v5 + 10016);
  *(v5 + 10016) = v18;

  *(v5 + 10032) = self->_inRoamSuppressionEnabled;
  *(v5 + 10040) = self->_inRoamSuppressionWaitForRoamStart;
  *(v5 + 10048) = self->_inRoamSuppressionWaitForRoamEnd;
  *(v5 + 10056) = self->_minCandidatesCount;
  *(v5 + 10064) = self->_maxCandidatesCount;
  *(v5 + 10072) = self->_currentRSSIStrongestCount;
  v20 = [(NSMutableDictionary *)self->_roamNeighborsByBand copy];
  v21 = *(v5 + 10080);
  *(v5 + 10080) = v20;

  v22 = *self->_strongestRSSICountByBand.valueByBand;
  *(v5 + 11600) = *&self->_strongestRSSICountByBand.valueByBand[2];
  *(v5 + 11584) = v22;
  v23 = *self->_strongestRSSIByBand.valueByBand;
  *(v5 + 11632) = *&self->_strongestRSSIByBand.valueByBand[2];
  *(v5 + 11616) = v23;
  v24 = *&self->_roamNeighsSmllstCurrentToBestRssiByBandTransition.valueByBands[2][0];
  v25 = *&self->_roamNeighsSmllstCurrentToBestRssiByBandTransition.valueByBands[2][2];
  v26 = *&self->_roamNeighsSmllstCurrentToBestRssiByBandTransition.valid[2][2];
  *(v5 + 11680) = *&self->_roamNeighsSmllstCurrentToBestRssiByBandTransition.valueByBands[1][1];
  *(v5 + 11728) = v26;
  *(v5 + 11712) = v25;
  *(v5 + 11696) = v24;
  v27 = *&self->_roamNeighsSmllstCurrentToBestRssiByBandTransition.valueByBands[0][0];
  *(v5 + 11664) = *&self->_roamNeighsSmllstCurrentToBestRssiByBandTransition.valueByBands[0][2];
  *(v5 + 11648) = v27;
  v29 = *&self->_roamNeighsLrgstCurrentToBestRssiByBandTransition.valueByBands[2][0];
  v28 = *&self->_roamNeighsLrgstCurrentToBestRssiByBandTransition.valueByBands[2][2];
  v30 = *&self->_roamNeighsLrgstCurrentToBestRssiByBandTransition.valueByBands[1][1];
  *(v5 + 11816) = *&self->_roamNeighsLrgstCurrentToBestRssiByBandTransition.valid[2][2];
  *(v5 + 11784) = v29;
  *(v5 + 11800) = v28;
  *(v5 + 11768) = v30;
  v31 = *&self->_roamNeighsLrgstCurrentToBestRssiByBandTransition.valueByBands[0][2];
  *(v5 + 11736) = *&self->_roamNeighsLrgstCurrentToBestRssiByBandTransition.valueByBands[0][0];
  *(v5 + 11752) = v31;
  v32 = *&self->_roamNeighsSmllstCurrentToNextBestRssiByBandTransition.valueByBands[0][0];
  *(v5 + 11840) = *&self->_roamNeighsSmllstCurrentToNextBestRssiByBandTransition.valueByBands[0][2];
  *(v5 + 11824) = v32;
  v33 = *&self->_roamNeighsSmllstCurrentToNextBestRssiByBandTransition.valueByBands[1][1];
  v34 = *&self->_roamNeighsSmllstCurrentToNextBestRssiByBandTransition.valueByBands[2][0];
  v35 = *&self->_roamNeighsSmllstCurrentToNextBestRssiByBandTransition.valueByBands[2][2];
  *(v5 + 11904) = *&self->_roamNeighsSmllstCurrentToNextBestRssiByBandTransition.valid[2][2];
  *(v5 + 11888) = v35;
  *(v5 + 11872) = v34;
  *(v5 + 11856) = v33;
  v36 = *&self->_roamNeighsLrgstCurrentToNextBestRssiByBandTransition.valueByBands[0][2];
  *(v5 + 11912) = *&self->_roamNeighsLrgstCurrentToNextBestRssiByBandTransition.valueByBands[0][0];
  *(v5 + 11928) = v36;
  v37 = *&self->_roamNeighsLrgstCurrentToNextBestRssiByBandTransition.valueByBands[1][1];
  v38 = *&self->_roamNeighsLrgstCurrentToNextBestRssiByBandTransition.valueByBands[2][0];
  v39 = *&self->_roamNeighsLrgstCurrentToNextBestRssiByBandTransition.valueByBands[2][2];
  *(v5 + 11992) = *&self->_roamNeighsLrgstCurrentToNextBestRssiByBandTransition.valid[2][2];
  *(v5 + 11960) = v38;
  *(v5 + 11976) = v39;
  *(v5 + 11944) = v37;
  v40 = [(NSMutableDictionary *)self->_roamCandidatesPerBandWhenSuccessful copy];
  v41 = *(v5 + 10088);
  *(v5 + 10088) = v40;

  v42 = [(NSMutableDictionary *)self->_roamCandidatesPerBandWhenUnSuccessful copy];
  v43 = *(v5 + 10096);
  *(v5 + 10096) = v42;

  *(v5 + 9128) = self->_sessionDuration;
  *(v5 + 9592) = self->_systemAwakeDuration;
  *(v5 + 9600) = self->_mediaPlaybackDuration;
  *(v5 + 9608) = self->_chargingDuration;
  *(v5 + 9624) = self->_inCallDuration;
  *(v5 + 9640) = self->_inVehicleDuration;
  *(v5 + 9648) = self->_inMotionDuration;
  *(v5 + 9656) = self->_inA2dpDuration;
  *(v5 + 9664) = self->_inScoDuration;
  *(v5 + 9672) = self->_inHidPresentDuration;
  *(v5 + 9680) = self->_inAwdlDuration;
  *(v5 + 9688) = self->_inRoamDuration;
  *(v5 + 9696) = self->_inScanDuration;
  *(v5 + 9704) = self->_inSoftApDuration;
  *(v5 + 9712) = self->_poweredOnDuration;
  *(v5 + 9720) = self->_associatedDuration;
  *(v5 + 9066) = *(v4 + 874);
  *(v5 + 9728) = self->_associatedSleepDuration;
  *(v5 + 9736) = self->_inCellularFallbackDuration;
  *(v5 + 9744) = self->_inCellularOutrankingDuration;
  v44 = *self->_bandUsageDuration.valueByBand;
  *(v5 + 11568) = *&self->_bandUsageDuration.valueByBand[2];
  *(v5 + 11552) = v44;
  *(v5 + 9752) = self->_inControlCenterAutoJoinDisabledDuration;
  *(v5 + 9616) = self->_companionConnectedDuration;
  *(v5 + 9768) = self->_linkRecoveryDisabledDuration;
  *(v5 + 10808) = self->_longestUnassociatedDuration;
  *(v5 + 9776) = self->_inWowStateDuration;
  *(v5 + 9784) = self->_inLpasStateDuration;
  *(v5 + 9792) = self->_inLowPowerStateDuration;
  *(v5 + 9800) = self->_inBatterySaverStateDuration;
  *(v5 + 9808) = self->_sleepPowerStatsTotalDuration;
  *(v5 + 9816) = self->_sleepPowerStatsUnassociatedDuration;
  *(v5 + 9824) = self->_sleepPowerStatsAssociatedDuration;
  *(v5 + 9832) = self->_sleepPowerStatsRoamingDuration;
  v45 = [(NSDate *)self->_sessionInitTime copy];
  v46 = *(v5 + 9320);
  *(v5 + 9320) = v45;

  v47 = [(NSDate *)self->_sessionStartTime copy];
  v48 = *(v5 + 9328);
  *(v5 + 9328) = v47;

  v49 = [(NSDate *)self->_sessionEndTime copy];
  v50 = *(v5 + 9336);
  *(v5 + 9336) = v49;

  v51 = [(NSDate *)self->_mediaStartedTime copy];
  v52 = *(v5 + 9344);
  *(v5 + 9344) = v51;

  v53 = [(NSDate *)self->_chargingStartedTime copy];
  v54 = *(v5 + 9352);
  *(v5 + 9352) = v53;

  v55 = [(NSDate *)self->_companionConnectionTime copy];
  v56 = *(v5 + 9360);
  *(v5 + 9360) = v55;

  v57 = [(NSDate *)self->_callStartedTime copy];
  v58 = *(v5 + 9368);
  *(v5 + 9368) = v57;

  v59 = [(NSDate *)self->_inVehicleEntryTime copy];
  v60 = *(v5 + 9384);
  *(v5 + 9384) = v59;

  v61 = [(NSDate *)self->_inMotionStartedTime copy];
  v62 = *(v5 + 9392);
  *(v5 + 9392) = v61;

  v63 = [(NSDate *)self->_a2dpActiveTime copy];
  v64 = *(v5 + 9400);
  *(v5 + 9400) = v63;

  v65 = [(NSDate *)self->_scoActiveTime copy];
  v66 = *(v5 + 9408);
  *(v5 + 9408) = v65;

  v67 = [(NSDate *)self->_hidPresentTime copy];
  v68 = *(v5 + 9416);
  *(v5 + 9416) = v67;

  v69 = [(NSDate *)self->_awdlActiveTime copy];
  v70 = *(v5 + 9424);
  *(v5 + 9424) = v69;

  v71 = [(NSDate *)self->_roamingActiveTime copy];
  v72 = *(v5 + 9432);
  *(v5 + 9432) = v71;

  v73 = [(NSDate *)self->_scanningActiveTime copy];
  v74 = *(v5 + 9440);
  *(v5 + 9440) = v73;

  v75 = [(NSDate *)self->_softApActiveTime copy];
  v76 = *(v5 + 9448);
  *(v5 + 9448) = v75;

  v77 = [(NSDate *)self->_lastPowerStateChangedTime copy];
  v78 = *(v5 + 9456);
  *(v5 + 9456) = v77;

  v79 = [(NSDate *)self->_lastCellularFallbackStateChangedTime copy];
  v80 = *(v5 + 9472);
  *(v5 + 9472) = v79;

  v81 = [(NSDate *)self->_lastCellularOutrankingStateChangedTime copy];
  v82 = *(v5 + 9480);
  *(v5 + 9480) = v81;

  v83 = [(NSDate *)self->_lastControlCenterStateChangedTime copy];
  v84 = *(v5 + 9464);
  *(v5 + 9464) = v83;

  v85 = [(NSDate *)self->_lastSystemWakeTime copy];
  v86 = *(v5 + 9488);
  *(v5 + 9488) = v85;

  v87 = [(NSDate *)self->_lastSystemSleepTime copy];
  v88 = *(v5 + 9496);
  *(v5 + 9496) = v87;

  v89 = [(NSDate *)self->_lastUnexpectedLinkDownTime copy];
  v90 = *(v5 + 9504);
  *(v5 + 9504) = v89;

  v91 = [(NSDate *)self->_lastLinkStateChangedTime copy];
  v92 = *(v5 + 9512);
  *(v5 + 9512) = v91;

  v93 = [(NSDate *)self->_lastPowerBudgetChangedTime copy];
  v94 = *(v5 + 9520);
  *(v5 + 9520) = v93;

  v95 = [(NSDate *)self->_lastBssChangedTime copy];
  v96 = *(v5 + 9528);
  *(v5 + 9528) = v95;

  v97 = [(NSDate *)self->_linkRecoveryDisabledTime copy];
  v98 = *(v5 + 9544);
  *(v5 + 9544) = v97;

  *(v5 + 9079) = *(v4 + 887);
  v99 = [(NSDate *)self->_wowStateEntryTime copy];
  v100 = *(v5 + 9552);
  *(v5 + 9552) = v99;

  v101 = [(NSDate *)self->_lpasStateEntryTime copy];
  v102 = *(v5 + 9560);
  *(v5 + 9560) = v101;

  v103 = [(NSDate *)self->_lowPowerStateEntryTime copy];
  v104 = *(v5 + 9568);
  *(v5 + 9568) = v103;

  v105 = [(NSDate *)self->_batterySaverStateEntryTime copy];
  v106 = *(v5 + 9576);
  *(v5 + 9576) = v105;

  *(v5 + 9256) = self->_lastJoinReason;
  *(v5 + 9264) = self->_lastJoinFailure;
  *(v5 + 9272) = self->_lastDisconnectReason;
  *(v5 + 9280) = self->_lastDisconnectSubreason;
  *(v5 + 9288) = self->_previousDisconnectReason;
  *(v5 + 10488) = self->_savedJoinStateChangedCount;
  *(v5 + 9296) = self->_savedLastJoinReason;
  *(v5 + 9304) = self->_savedLastJoinFailure;
  *(v5 + 9312) = self->_savedPreviousDisconnectReason;
  *(v5 + 9081) = *(v4 + 889);
  v107 = [(NSString *)self->_secondaryInterfaceName copy];
  v108 = *(v5 + 9216);
  *(v5 + 9216) = v107;

  *(v5 + 9064) = *(v4 + 872);
  *(v5 + 9073) = *(v4 + 881);
  *(v5 + 9074) = *(v4 + 882);
  *(v5 + 9075) = *(v4 + 883);
  *(v5 + 9076) = *(v4 + 884);
  *(v5 + 9240) = self->_sessionPid;
  v109 = [(NSDate *)self->_processInitTime copy];
  v110 = *(v5 + 9168);
  *(v5 + 9168) = v109;

  v111 = [(NSString *)self->_cellularDataStatus copy];
  v112 = *(v5 + 9232);
  *(v5 + 9232) = v111;

  *(v5 + 9080) = *(v4 + 888);
  *(v5 + 10600) = self->_airplaneModeStateChangedCount;
  v113 = [(NSString *)self->_lastDriverUnavailableReason copy];
  v114 = *(v5 + 10720);
  *(v5 + 10720) = v113;

  v115 = [(NSDate *)self->_lastDriverTerminationTime copy];
  v116 = *(v5 + 10696);
  *(v5 + 10696) = v115;

  v117 = [(NSDate *)self->_lastChipResetTime copy];
  v118 = *(v5 + 10704);
  *(v5 + 10704) = v117;

  v119 = [(NSDate *)self->_lastDriverAvailableTime copy];
  v120 = *(v5 + 10712);
  *(v5 + 10712) = v119;

  *(v5 + 10728) = self->_driverProcessLifespan;
  *(v5 + 10736) = self->_driverAvailabilityLifespan;
  *(v5 + 10752) = self->_driverAvailabilityLatencyFromTermination;
  *(v5 + 10760) = self->_joinScanLatencyFromDriverAvailability;
  *(v5 + 10768) = self->_joinStartedLatencyFromDriverAvailability;
  *(v5 + 10776) = self->_joinLinkUpLatencyFromDriverAvailability;
  *(v5 + 10784) = self->_joinIpConfigurationLatencyFromDriverAvailability;
  *(v5 + 10792) = self->_joinInterfaceRankingLatencyFromDriverAvailability;
  *(v5 + 10800) = self->_joinLinkUpLatencyFromSessionStart;
  v121 = *self->_perClientScanCount;
  *(v5 + 24) = *&self->_perClientScanCount[2];
  *(v5 + 8) = v121;
  v122 = *&self->_perClientScanCount[4];
  v123 = *&self->_perClientScanCount[6];
  v124 = *&self->_perClientScanCount[8];
  *(v5 + 88) = *&self->_perClientScanCount[10];
  *(v5 + 72) = v124;
  *(v5 + 56) = v123;
  *(v5 + 40) = v122;
  v125 = *&self->_perClientScanCount[12];
  v126 = *&self->_perClientScanCount[14];
  v127 = *&self->_perClientScanCount[16];
  *(v5 + 152) = *&self->_perClientScanCount[18];
  *(v5 + 136) = v127;
  *(v5 + 120) = v126;
  *(v5 + 104) = v125;
  v128 = *&self->_perClientScanCount[20];
  v129 = *&self->_perClientScanCount[22];
  v130 = *&self->_perClientScanCount[24];
  *(v5 + 216) = self->_perClientScanCount[26];
  *(v5 + 200) = v130;
  *(v5 + 184) = v129;
  *(v5 + 168) = v128;
  memcpy((v5 + 224), self->_faultReasonCount, 0x130uLL);
  v131 = *&self->_joinReasonCount[6];
  v133 = *self->_joinReasonCount;
  v132 = *&self->_joinReasonCount[2];
  *(v5 + 560) = *&self->_joinReasonCount[4];
  *(v5 + 576) = v131;
  *(v5 + 528) = v133;
  *(v5 + 544) = v132;
  v135 = *&self->_joinReasonCount[10];
  v134 = *&self->_joinReasonCount[12];
  v136 = *&self->_joinReasonCount[8];
  *(v5 + 640) = self->_joinReasonCount[14];
  *(v5 + 608) = v135;
  *(v5 + 624) = v134;
  *(v5 + 592) = v136;
  v137 = [(NSMutableDictionary *)self->_disconnectReasonMap mutableCopy];
  v138 = *(v5 + 9056);
  *(v5 + 9056) = v137;

  *(v5 + 9077) = *(v4 + 885);
  *(v5 + 9078) = *(v4 + 886);
  *(v5 + 10592) = self->_compatibilityModeChangeCount;
  objc_storeStrong((v5 + 9536), self->_lastCompatibilityModeChangedTime);
  *(v5 + 9760) = self->_inCompatibilityModeEnabledDuration;
  *(v5 + 9108) = self->_bandAtSessionStart;
  *(v5 + 9083) = *(v4 + 891);
  *(v5 + 10848) = self->_rssiAtSessionStart;
  *(v5 + 9584) = self->_sessionTimeSinceLastSession;
  networkDetailsAtEnd = self->_networkDetailsAtEnd;
  v140 = networkDetailsAtEnd;
  if (!networkDetailsAtEnd)
  {
    v140 = [(WiFiUsageNetworkDetails *)self->_networkDetails copy];
  }

  objc_storeStrong((v5 + 9144), v140);
  if (!networkDetailsAtEnd)
  {
  }

  v141 = 10880;
  if (!self->_networkDetailsAtEnd)
  {
    v141 = 10872;
  }

  objc_storeStrong((v5 + 10872), *(&self->super.isa + v141));
  if (self->_networkDetailsAtEnd)
  {
    lastNetwork6eDisableModeChangedTime = 0;
  }

  else
  {
    lastNetwork6eDisableModeChangedTime = self->_lastNetwork6eDisableModeChangedTime;
  }

  objc_storeStrong((v5 + 10888), lastNetwork6eDisableModeChangedTime);
  v143 = 10904;
  if (!self->_networkDetailsAtEnd)
  {
    v143 = 10896;
  }

  *(v5 + 10896) = *(&self->super.isa + v143);
  v144 = 10864;
  if (!self->_networkDetailsAtEnd)
  {
    v144 = 10856;
  }

  *(v5 + 10856) = *(&self->super.isa + v144);
  objc_storeStrong((v5 + 10928), self->_ipV4DetailsPrevSession);
  *(v5 + 9084) = *(v4 + 892);
  objc_storeStrong((v5 + 10936), self->_ipV6DetailsPrevSession);
  *(v5 + 9085) = *(v4 + 893);
  *(v5 + 9086) = *(v4 + 894);
  v145 = [(NSMutableArray *)self->_prevNetworkNames copy];
  v146 = *(v5 + 10960);
  *(v5 + 10960) = v145;

  *(v5 + 9088) = *(v4 + 896);
  *(v5 + 9087) = *(v4 + 895);
  *(v5 + 10968) = self->_prevJoinReason;
  *(v5 + 10984) = self->_timeSincePrevJoin;
  objc_storeStrong((v5 + 10944), self->_lastCoexRealTimeOn);
  objc_storeStrong((v5 + 10952), self->_lastCoexRealTimeOff);
  *(v5 + 9095) = *(v4 + 903);
  *(v5 + 11072) = self->_savedPrevJoinReason;
  *(v5 + 11088) = self->_savedTimeSincePrevJoin;
  *(v5 + 11000) = self->_countRoamScan;
  *(v5 + 9093) = *(v4 + 901);
  *(v5 + 11008) = self->_countSSIDTransitionTargetInLastRoamScan;
  *(v5 + 11016) = self->_countRoamScanThatFoundSSIDTransitionTarget;
  *(v5 + 9094) = *(v4 + 902);
  *(v5 + 11024) = self->_countSSIDTransitionPotentialCandidatesInLastRoamScan;
  *(v5 + 11032) = self->_countSSIDTransitionPotentialCandidatesInLastRoamScanNotInTransitionableSet;
  *(v5 + 11048) = self->_lastRoamScanContainsRoamCandidateCount;
  *(v5 + 11056) = self->_lastRoamScanUniqueChannelsCount;
  *(v5 + 11064) = self->_lastRoamScanUniqueBandsCount;
  *(v5 + 11040) = self->_countRoamScanThatFoundSSIDTransitionPotentialCandidate;
  *(v5 + 11096) = self->_inPoorLinkSessionCount;
  *(v5 + 11104) = self->_inPoorLinkSessionDuration;
  *(v5 + 11112) = self->_tdAfterJoinAfterTDCount;
  *(v5 + 11128) = self->_min_subsequentTdAfterJoinAfterTDCount;
  *(v5 + 11136) = self->_max_subsequentTdAfterJoinAfterTDCount;
  *(v5 + 11144) = self->_tdSessionStartedByBadRSSICount;
  *(v5 + 11152) = self->_tdSessionStartedByTDRecommendedCount;
  *(v5 + 11160) = self->_tdSessionStartedBySymptomDNSFailureCount;
  *(v5 + 11168) = self->_tdEvalEndedCount;
  *(v5 + 11176) = self->_tdEvalCumulativeDuration;
  *(v5 + 11184) = self->_tdEvalStartedCount;
  *(v5 + 11192) = self->_tdEvalStartedByBadRSSICount;
  *(v5 + 11200) = self->_tdEvalStartedBySymptomsARPFailureCount;
  *(v5 + 11208) = self->_tdEvalStartedBySymptomsDNSFailCount;
  *(v5 + 11216) = self->_tdEvalStartedBySymptomsShortFlowCount;
  *(v5 + 11232) = self->_tdEvalStartedBySymptomsDataStallCount;
  *(v5 + 11240) = self->_tdEvalStartedBySymptomsDNSStallCount;
  *(v5 + 11208) = self->_tdEvalStartedBySymptomsDNSFailCount;
  *(v5 + 11248) = self->_tdEvalStartedByActiveProbingCount;
  *(v5 + 11256) = self->_tdEvalStartedByFGNetwAppChangeCount;
  *(v5 + 11264) = self->_tdEvalStartedByUserNotificationCount;
  *(v5 + 11272) = self->_tdEvalStartedByCheckReassocCount;
  objc_storeStrong((v5 + 11288), self->_lastUsbStatusChange);
  *(v5 + 9098) = *(v4 + 906);
  *(v5 + 11280) = self->_usbDeviceEventCount;
  *(v5 + 11296) = self->_usbInsertedDuration;
  objc_storeStrong((v5 + 11304), self->_lastAWDLSequenceUpdate);
  *(v5 + 11312) = self->_inAWDL_BestInfraScore;
  *(v5 + 11320) = self->_inAWDL_WorstInfraScore;
  *(v5 + 11328) = self->_inAWDL_BestP2PScore;
  *(v5 + 11336) = self->_inAWDL_WorstP2PScore;
  *(v5 + 11344) = self->_inAWDL_lastInfraScore;
  *(v5 + 11352) = self->_inAWDL_lastP2PScore;
  *(v5 + 11360) = self->_inAWDL_BestInfraScoreDuration;
  *(v5 + 11368) = self->_inAWDL_BestP2PScoreDuration;
  *(v5 + 11376) = self->_inAWDL_WorstInfraScoreDuration;
  *(v5 + 11384) = self->_inAWDL_WorstP2PScoreDuration;
  *(v5 + 11392) = self->_forwardedBssInwakeCount;
  *(v5 + 11400) = self->_forwardedBssInSleepCount;
  *(v5 + 11408) = self->_hostScanTriggersCount;
  *(v5 + 11416) = self->_roamScanTriggersCount;
  *(v5 + 11424) = self->_pnoScanTriggersCount;
  *(v5 + 11432) = self->_epnoScanTriggersCount;
  *(v5 + 11440) = self->_currentBssMsgInWakeCount;
  *(v5 + 11448) = self->_currentBssMsgInSleepCount;
  *(v5 + 11456) = self->_scanDataMsgInWakeCount;
  *(v5 + 11464) = self->_scanDataMsgInSleepCount;
  *(v5 + 11472) = self->_spmiMsgInAwakeCount;
  *(v5 + 11480) = self->_spmiMsgInSleepCount;
  *(v5 + 11488) = self->_spmiMsgDropRssiFilterCount;
  *(v5 + 11496) = self->_spmiMsgDropMaxFilterCount;
  *(v5 + 11504) = self->_spmiMsgDropSpmiFailCount;
  *(v5 + 11512) = self->_bssDropLowMemoryCount;
  *(v5 + 9112) = self->_maxPhyMode;
  *(v5 + 9099) = *(v4 + 907);
  *(v5 + 9100) = *(v4 + 908);
  return v5;
}

- (unint64_t)faultReasonCount:(unint64_t)count
{
  if (count - 1 > 0x24)
  {
    return 0;
  }

  else
  {
    return self->_faultReasonCount[count];
  }
}

- (void)processIPv4Changes:(id)changes
{
  changesCopy = changes;
  v5 = changesCopy;
  v8 = changesCopy;
  if (changesCopy && self->_ipV4DetailsPrevSession)
  {
    isValid = [changesCopy isValid];
    v5 = v8;
    if (isValid)
    {
      v7 = [(WiFiUsageNetworkIPv4Details *)self->_ipV4DetailsPrevSession isEqual:v8];
      v5 = v8;
      self->_hasDifferentIpv4DetailsThanPrevSession = !v7;
    }
  }

  else if (!changesCopy)
  {
    goto LABEL_8;
  }

  changesCopy = [v5 isValid];
  v5 = v8;
  if (changesCopy)
  {
    changesCopy = [(WiFiUsageSession *)self setIpV4Details:v8];
    v5 = v8;
  }

LABEL_8:

  MEMORY[0x2821F96F8](changesCopy, v5);
}

- (void)processIPv6Changes:(id)changes
{
  changesCopy = changes;
  v5 = changesCopy;
  v8 = changesCopy;
  if (changesCopy && self->_ipV6DetailsPrevSession)
  {
    isValid = [changesCopy isValid];
    v5 = v8;
    if (isValid)
    {
      v7 = [(WiFiUsageNetworkIPv6Details *)self->_ipV6DetailsPrevSession isEqual:v8];
      v5 = v8;
      self->_hasDifferentIpv6DetailsThanPrevSession = v7 ^ 1;
    }
  }

  else if (!changesCopy)
  {
    goto LABEL_8;
  }

  changesCopy = [v5 isValid];
  v5 = v8;
  if (changesCopy)
  {
    changesCopy = [(WiFiUsageSession *)self setIpV6Details:v8];
    v5 = v8;
  }

LABEL_8:

  MEMORY[0x2821F96F8](changesCopy, v5);
}

- (void)setRealtimeCoexStarted:(BOOL)started type:(unint64_t)type reasons:(id)reasons
{
  startedCopy = started;
  reasonsCopy = reasons;
  inCoexRealTime = self->_inCoexRealTime;
  v13 = reasonsCopy;
  if (startedCopy && !self->_inCoexRealTime)
  {
    v9 = [MEMORY[0x277CBEAA8] now];
    lastCoexRealTimeOn = self->_lastCoexRealTimeOn;
    self->_lastCoexRealTimeOn = v9;

    reasonsCopy = v13;
    inCoexRealTime = self->_inCoexRealTime;
  }

  if (inCoexRealTime && !startedCopy)
  {
    v11 = [MEMORY[0x277CBEAA8] now];
    lastCoexRealTimeOff = self->_lastCoexRealTimeOff;
    self->_lastCoexRealTimeOff = v11;

    reasonsCopy = v13;
  }

  self->_inCoexRealTime = startedCopy;
}

- (void)setAwdlSequence:(id)sequence infraScore:(unint64_t)score p2pScore:(double)p2pScore
{
  v8 = [MEMORY[0x277CBEAA8] now];
  if (self->_isAssociated)
  {
    scoreCopy = score;
  }

  else
  {
    scoreCopy = 0;
  }

  [(WiFiUsageSession *)self tallyInfraScoreDuration:scoreCopy until:v8];
  [(WiFiUsageSession *)self tallyP2PScoreDuration:v8 until:p2pScore];
  lastAWDLSequenceUpdate = self->_lastAWDLSequenceUpdate;
  self->_lastAWDLSequenceUpdate = v8;
}

- (void)updateLinkRecoveryDisabled:(BOOL)disabled
{
  disabledCopy = disabled;
  date = [MEMORY[0x277CBEAA8] date];
  v6 = date;
  if (disabledCopy)
  {
    if (!self->_linkRecoveryDisabled)
    {
      v8 = date;
      date = [(WiFiUsageSession *)self setLinkRecoveryDisabledTime:date];
      v6 = v8;
      ++self->_linkRecoveryDisabledCount;
    }
  }

  else if (self->_linkRecoveryDisabledTime)
  {
    v9 = date;
    [date timeIntervalSinceDate:?];
    self->_linkRecoveryDisabledDuration = v7 + self->_linkRecoveryDisabledDuration;
    date = [(WiFiUsageSession *)self setLinkRecoveryDisabledTime:0];
    v6 = v9;
  }

  self->_linkRecoveryDisabled = disabledCopy;

  MEMORY[0x2821F96F8](date, v6);
}

- (BOOL)infraIsPartOfSplitSSID
{
  if ([(WiFiUsageSession *)self bandAtSessionStart]!= 2)
  {
    return 0;
  }

  networkDetails = self->_networkDetails;

  return [(WiFiUsageNetworkDetails *)networkDetails isStandalone6E];
}

- (void)processDriverAvailability:(id)availability available:(BOOL)available version:(unint64_t)version flags:(unint64_t)flags eventID:(unint64_t)d reason:(int64_t)reason subReason:(int64_t)subReason minorReason:(int64_t)self0 reasonString:(id)self1
{
  availableCopy = available;
  v106 = *MEMORY[0x277D85DE8];
  availabilityCopy = availability;
  stringCopy = string;
  date = [MEMORY[0x277CBEAA8] date];
  if (_os_feature_enabled_impl() && self->_type == 1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316930;
      v91 = "[WiFiUsageSession processDriverAvailability:available:version:flags:eventID:reason:subReason:minorReason:reasonString:]";
      v92 = 1024;
      v93 = 3109;
      v94 = 1024;
      v95 = availableCopy;
      v96 = 2112;
      v97 = availabilityCopy;
      v98 = 1024;
      flagsCopy = flags;
      v100 = 2112;
      v101 = stringCopy;
      v102 = 1024;
      reasonCopy = reason;
      v104 = 1024;
      subReasonCopy = subReason;
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s:%d available:%d interface:%@ flags:0x%x reason:%@(0x%x) subreason:0x%x", buf, 0x3Eu);
    }

    pendingWatchdogs = [(WiFiUsageSession *)self pendingWatchdogs];

    if (pendingWatchdogs)
    {
      if (availableCopy)
      {
        goto LABEL_7;
      }
    }

    else
    {
      array = [MEMORY[0x277CBEB18] array];
      [(WiFiUsageSession *)self setPendingWatchdogs:array];

      if (availableCopy)
      {
LABEL_7:
        pendingWatchdogs2 = [(WiFiUsageSession *)self pendingWatchdogs];
        v20 = [pendingWatchdogs2 count];

        if (!v20)
        {
          goto LABEL_25;
        }

        v82 = date;
        v80 = availabilityCopy;
        pendingWatchdogs3 = [(WiFiUsageSession *)self pendingWatchdogs];
        firstObject = [pendingWatchdogs3 firstObject];

        if (firstObject)
        {
          [firstObject setAvailableReason:reason];
          [firstObject setAvailableSubreason:subReason];
          [firstObject setAvailableReasonString:stringCopy];
        }

        dictionary = [MEMORY[0x277CBEB38] dictionary];
        connectedBss = [firstObject connectedBss];
        if (connectedBss)
        {
          v25 = @"associated";
        }

        else
        {
          v25 = @"disassociated";
        }

        [dictionary setObject:v25 forKeyedSubscript:@"associationState"];

        v26 = MEMORY[0x277CCACA8];
        connectedBss2 = [firstObject connectedBss];
        channel = [connectedBss2 channel];
        [firstObject connectedBss];
        v29 = v81 = firstObject;
        v30 = +[WiFiUsagePrivacyFilter bandAsString:](WiFiUsagePrivacyFilter, "bandAsString:", [v29 band]);
        connectedBss3 = [firstObject connectedBss];
        v32 = [v26 stringWithFormat:@"%lu(%@/%lu)", channel, v30, objc_msgSend(connectedBss3, "channelWidth")];
        [dictionary setObject:v32 forKeyedSubscript:@"channel"];

        v33 = v81;
        activeApplications = [(WiFiUsageSession *)self activeApplications];
        if ([activeApplications count])
        {
          v35 = MEMORY[0x277CBEC38];
        }

        else
        {
          v35 = MEMORY[0x277CBEC28];
        }

        [dictionary setObject:v35 forKeyedSubscript:@"foregroundActivity"];

        v36 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v81, "flags") & 2}];
        [dictionary setObject:v36 forKeyedSubscript:@"isDriverAvailabilityNonFatal"];

        connectedBss4 = [v81 connectedBss];
        bssid = [connectedBss4 bssid];
        v39 = [WiFiUsagePrivacyFilter sanitizedOUI:bssid];
        [dictionary setObject:v39 forKeyedSubscript:@"oui"];

        v40 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v81, "reportedReason")}];
        [dictionary setObject:v40 forKeyedSubscript:@"reason"];

        reportedReasonString = [v81 reportedReasonString];
        [dictionary setObject:reportedReasonString forKeyedSubscript:@"reasonString"];

        v42 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v81, "reportedSubreason")}];
        [dictionary setObject:v42 forKeyedSubscript:@"subreason"];

        reportedSubreasonString = [v81 reportedSubreasonString];
        [dictionary setObject:reportedSubreasonString forKeyedSubscript:@"subreasonString"];

        date = v82;
        if (([v81 flags] & 2) == 0)
        {
          createdAt = [v81 createdAt];
          lastDriverAvailableTime = [(WiFiUsageSession *)self lastDriverAvailableTime];
          [createdAt timeIntervalSinceDate:lastDriverAvailableTime];
          v46 = [WiFiUsagePrivacyFilter numberWithDurationMillisecond:?];
          [dictionary setObject:v46 forKeyedSubscript:@"timeBetweenFailure"];

          createdAt2 = [v81 createdAt];
          [v82 timeIntervalSinceDate:createdAt2];
          v48 = [WiFiUsagePrivacyFilter numberWithDurationMillisecond:?];
          [dictionary setObject:v48 forKeyedSubscript:@"recoveryLatency"];
        }

        connectedBss5 = [v81 connectedBss];
        manufacturerName = [connectedBss5 manufacturerName];
        [dictionary setObject:manufacturerName forKeyedSubscript:@"wpsManufacturerElement"];

        connectedBss6 = [v81 connectedBss];
        modelName = [connectedBss6 modelName];
        [dictionary setObject:modelName forKeyedSubscript:@"wpsModelName"];

        connectedBss7 = [v81 connectedBss];
        modelNumber = [connectedBss7 modelNumber];
        [dictionary setObject:modelNumber forKeyedSubscript:@"wpsModelNumber"];

        v55 = dictionary;
        AnalyticsSendEventLazy();
        LODWORD(connectedBss7) = +[WiFiUsagePrivacyFilter isInternalInstall];
        v56 = +[WiFiDiagnosticReporter sharedWiFiDiagnosticReporter];
        v57 = [v56 isWiFiABCSignatureUnblocked:@"mute-abc-driver-availability-until"];

        if (connectedBss7 && v57)
        {
          string = [MEMORY[0x277CCAB68] string];
          [string appendFormat:@"reason=0x%x", objc_msgSend(v81, "reportedReason")];
          reportedReasonString2 = [v81 reportedReasonString];
          [string appendFormat:@" reasonString=%@", reportedReasonString2];

          [string appendFormat:@" subreason=0x%x", objc_msgSend(v81, "reportedSubreason")];
          reportedSubreasonString2 = [v81 reportedSubreasonString];
          [string appendFormat:@" subreasonString=%@", reportedSubreasonString2];

          v61 = +[WiFiDiagnosticReporter sharedWiFiDiagnosticReporter];
          reportedReasonString3 = [v81 reportedReasonString];
          [v61 submitWiFiWatchdogReason:reportedReasonString3 subtypeContext:string];
        }

        availabilityCopy = v80;
        if (self->_type != 1)
        {
          goto LABEL_54;
        }

        if ([v81 availableReason] == -528336890)
        {
          defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
          v89[0] = &unk_2848BA478;
          v88[0] = @"SessionNotificationFaultType";
          v88[1] = @"SessionNotificationInterfaceName";
          interfaceName = [(WiFiUsageSession *)self interfaceName];
          v89[1] = interfaceName;
          v65 = MEMORY[0x277CBEAC0];
          v66 = v89;
          v67 = v88;
        }

        else
        {
          if ([v81 unavailableReason] != -528336895)
          {
LABEL_54:
            pendingWatchdogs4 = [(WiFiUsageSession *)self pendingWatchdogs];
            [pendingWatchdogs4 removeAllObjects];

LABEL_25:
            if (![(WiFiUsageSession *)self isDriverAvailable])
            {
              [(WiFiUsageSession *)self setLastDriverAvailableTime:date];
              if (self->_lastChipResetTime && self->_driverAvailabilityLatencyFromChipReset == 0.0)
              {
                [date timeIntervalSinceDate:?];
                [(WiFiUsageSession *)self setDriverAvailabilityLatencyFromChipReset:?];
              }

              if (self->_lastDriverTerminationTime && self->_driverAvailabilityLatencyFromTermination == 0.0)
              {
                [date timeIntervalSinceDate:?];
                [(WiFiUsageSession *)self setDriverAvailabilityLatencyFromTermination:?];
              }
            }

            goto LABEL_45;
          }

          defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
          v87[0] = &unk_2848BA490;
          v86[0] = @"SessionNotificationFaultType";
          v86[1] = @"SessionNotificationInterfaceName";
          interfaceName = [(WiFiUsageSession *)self interfaceName];
          v87[1] = interfaceName;
          v65 = MEMORY[0x277CBEAC0];
          v66 = v87;
          v67 = v86;
        }

        v78 = [v65 dictionaryWithObjects:v66 forKeys:v67 count:2];
        [defaultCenter postNotificationName:@"SessionNotificationFaultEventDetected" object:self userInfo:v78];

        v33 = v81;
        date = v82;
        goto LABEL_54;
      }
    }

    if (![WiFiUsageSession isDriverUnavailabilityReasonVoluntary:reason subReason:subReason orReasonString:stringCopy])
    {
      v83 = date;
      v69 = [WiFiUsageWatchdogDetails alloc];
      networkDetails = [(WiFiUsageSession *)self networkDetails];
      connectedBss8 = [networkDetails connectedBss];
      v72 = [(WiFiUsageWatchdogDetails *)v69 initWithInterfaceName:availabilityCopy andConnectedBss:connectedBss8];

      if (v72)
      {
        [(WiFiUsageWatchdogDetails *)v72 setUnavailableReason:reason];
        [(WiFiUsageWatchdogDetails *)v72 setUnavailableSubreason:subReason];
        [(WiFiUsageWatchdogDetails *)v72 setUnavailableReasonString:stringCopy];
        [(WiFiUsageWatchdogDetails *)v72 setFlags:flags];
        pendingWatchdogs5 = [(WiFiUsageSession *)self pendingWatchdogs];
        [pendingWatchdogs5 addObject:v72];
      }

      date = v83;
    }
  }

  else if (availableCopy)
  {
    goto LABEL_25;
  }

  if ([WiFiUsageSession isDriverUnavailabilityReasonVoluntary:reason subReason:subReason orReasonString:stringCopy])
  {
    goto LABEL_50;
  }

  if ((flags & 2) == 0 && self->_type == 1)
  {
    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    v85[0] = &unk_2848BA4A8;
    v84[0] = @"SessionNotificationFaultType";
    v84[1] = @"SessionNotificationInterfaceName";
    interfaceName2 = [(WiFiUsageSession *)self interfaceName];
    v85[1] = interfaceName2;
    v76 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v85 forKeys:v84 count:2];
    [defaultCenter2 postNotificationName:@"SessionNotificationFaultEventDetected" object:self userInfo:v76];
  }

  if ([(WiFiUsageSession *)self isDriverAvailable])
  {
    driverUnavailabilityCount = self->_driverUnavailabilityCount;
    if (!driverUnavailabilityCount)
    {
      [(WiFiUsageSession *)self trackEventLatencies];
      driverUnavailabilityCount = self->_driverUnavailabilityCount;
    }

    self->_driverUnavailabilityCount = driverUnavailabilityCount + 1;
  }

LABEL_45:
  if (stringCopy && !self->_lastDriverUnavailableReason && [stringCopy length])
  {
    [(WiFiUsageSession *)self setLastDriverUnavailableReason:stringCopy];
  }

  [(WiFiUsageSession *)self setIsDriverAvailable:availableCopy];
LABEL_50:
}

- (void)ipConfigurationDidChangeWithMethod:(BOOL)method dhcpLeaseDuration:(double)duration hasRoutableIpV4:(BOOL)v4 hasRoutableIpV6:(BOOL)v6
{
  date = [MEMORY[0x277CBEAA8] date];
  if (self->_joinIpConfigurationLatencyFromDriverAvailability == 0.0 && self->_lastDriverAvailableTime && (v4 || v6 || self->_lastInterfacePrimaryState))
  {
    v10 = date;
    [date timeIntervalSinceDate:?];
    [(WiFiUsageSession *)self setJoinIpConfigurationLatencyFromDriverAvailability:?];
    date = v10;
  }
}

- (void)interfaceRankingDidChange:(BOOL)change
{
  changeCopy = change;
  date = [MEMORY[0x277CBEAA8] date];
  if (self->_joinInterfaceRankingLatencyFromDriverAvailability == 0.0 && self->_lastDriverAvailableTime && changeCopy)
  {
    [date timeIntervalSinceDate:?];
    [(WiFiUsageSession *)self setJoinInterfaceRankingLatencyFromDriverAvailability:?];
  }

  [(WiFiUsageSession *)self setLastInterfacePrimaryState:changeCopy];
}

- (void)updateWithRoamingSuppression:(unsigned __int8)suppression
{
  suppressionCopy = suppression;
  v5 = [MEMORY[0x277CBEAA8] now];
  if (suppressionCopy)
  {
    if (self->_isRoamSuppressionEnabled)
    {
      goto LABEL_7;
    }

    ++self->_inRoamSuppressionEnabledCount;
    p_lastRoamSuppressionToggled = &self->_lastRoamSuppressionToggled;
  }

  else
  {
    if (!self->_isRoamSuppressionEnabled)
    {
      goto LABEL_7;
    }

    self->_roamsAfterSupprLifted = 0;
    p_lastRoamSuppressionToggled = &self->_lastRoamSuppressionToggled;
    obj = v5;
    [v5 timeIntervalSinceDate:self->_lastRoamSuppressionToggled];
    v5 = obj;
    self->_inRoamSuppressionEnabled = v7 + self->_inRoamSuppressionEnabled;
  }

  obja = v5;
  objc_storeStrong(p_lastRoamSuppressionToggled, v5);
  v5 = obja;
LABEL_7:
  self->_isRoamSuppressionEnabled = suppressionCopy != 0;
}

- (void)updateWithCompatibilityMode:(unsigned __int8)mode
{
  modeCopy = mode;
  isCompatibilityModeEnabled = self->_isCompatibilityModeEnabled;
  if (!mode && self->_isCompatibilityModeEnabled)
  {
    [(NSDate *)self->_lastCompatibilityModeChangedTime timeIntervalSinceNow];
    self->_inCompatibilityModeEnabledDuration = self->_inCompatibilityModeEnabledDuration - v6;
    isCompatibilityModeEnabled = self->_isCompatibilityModeEnabled;
  }

  if (isCompatibilityModeEnabled != modeCopy)
  {
    [(WiFiUsageSession *)self setIsCompatibilityModeEnabled:modeCopy != 0];
    ++self->_compatibilityModeChangeCount;
    v7 = [MEMORY[0x277CBEAA8] now];
    [(WiFiUsageSession *)self setLastCompatibilityModeChangedTime:v7];
  }
}

- (void)updateAssociatedNetworkDetails:(id)details
{
  detailsCopy = details;
  if (detailsCopy)
  {
    v18 = detailsCopy;
    v5 = [MEMORY[0x277CBEAA8] now];
    if (self->_networkDetails)
    {
      networkName = [v18 networkName];
      networkName2 = [(WiFiUsageNetworkDetails *)self->_networkDetails networkName];
      v8 = [networkName isEqualToString:networkName2];

      disable6eMode = [v18 disable6eMode];
      if (v8)
      {
        [(WiFiUsageSession *)self update6eModeStats:disable6eMode];
      }

      else
      {
        [(WiFiUsageSession *)self summarizeAndReset6eModeStats:disable6eMode];
      }
    }

    else
    {
      disable6eMode2 = [v18 disable6eMode];
      [(WiFiUsageSession *)self setNetworkDisable6eModeAtStart:disable6eMode2];

      disable6eMode = [v18 disable6eMode];
      if (disable6eMode)
      {
        v11 = v5;
      }

      else
      {
        v11 = 0;
      }

      [(WiFiUsageSession *)self setLastNetwork6eDisableModeChangedTime:v11];
    }

    if (![(WiFiUsageSession *)self isSessionActive]|| !self->_networkDetails)
    {
      goto LABEL_17;
    }

    networkName3 = [v18 networkName];
    networkName4 = [(WiFiUsageNetworkDetails *)self->_networkDetails networkName];
    if ([networkName3 isEqualToString:networkName4])
    {
      connectedBss = [(WiFiUsageNetworkDetails *)self->_networkDetails connectedBss];
      band = [connectedBss band];
      connectedBss2 = [v18 connectedBss];
      band2 = [connectedBss2 band];

      if (band == band2)
      {
LABEL_17:
        [(WiFiUsageSession *)self setNetworkDetails:v18];

        detailsCopy = v18;
        goto LABEL_18;
      }

      networkName3 = [(WiFiUsageNetworkDetails *)self->_networkDetails connectedBss];
      -[WiFiUsageSession updateBandUsageFor:With:](self, "updateBandUsageFor:With:", [networkName3 band], v5);
    }

    else
    {
    }

    goto LABEL_17;
  }

LABEL_18:
}

- (void)update6eModeStats:(id)stats
{
  statsCopy = stats;
  disable6eMode = [(WiFiUsageNetworkDetails *)self->_networkDetails disable6eMode];
  v5 = [disable6eMode isEqualToString:statsCopy];

  if ((v5 & 1) == 0)
  {
    disable6eMode2 = [(WiFiUsageNetworkDetails *)self->_networkDetails disable6eMode];
    v7 = [disable6eMode2 isEqualToString:@"off"];

    if (v7)
    {
      v8 = [MEMORY[0x277CBEAA8] now];
      v9 = v8;
      if (self->_lastNetwork6eDisableModeChangedTime)
      {
        [v8 timeIntervalSinceDate:?];
        self->_inNetwork6eModeOffDuration = v10 + self->_inNetwork6eModeOffDuration;
      }
    }

    disable6eMode3 = [(WiFiUsageNetworkDetails *)self->_networkDetails disable6eMode];

    if (disable6eMode3)
    {
      ++self->_network6eDisabledModeChangeCount;
      v12 = [MEMORY[0x277CBEAA8] now];
      [(WiFiUsageSession *)self setLastNetwork6eDisableModeChangedTime:v12];
    }

    else
    {
      [(WiFiUsageSession *)self setLastNetwork6eDisableModeChangedTime:self->_sessionStartTime];
    }
  }

  networkDisable6eModeAtStart = [(WiFiUsageSession *)self networkDisable6eModeAtStart];

  if (!networkDisable6eModeAtStart)
  {
    [(WiFiUsageSession *)self setNetworkDisable6eModeAtStart:statsCopy];
  }
}

- (void)summarizeAndReset6eModeStats:(id)stats
{
  v4 = MEMORY[0x277CBEAA8];
  statsCopy = stats;
  v10 = [v4 now];
  disable6eMode = [(WiFiUsageNetworkDetails *)self->_networkDetails disable6eMode];
  if ([disable6eMode isEqualToString:@"off"])
  {
    lastNetwork6eDisableModeChangedTime = self->_lastNetwork6eDisableModeChangedTime;

    if (lastNetwork6eDisableModeChangedTime)
    {
      [v10 timeIntervalSinceDate:self->_lastNetwork6eDisableModeChangedTime];
      self->_inNetwork6eModeOffDuration = v8 + self->_inNetwork6eModeOffDuration;
    }
  }

  else
  {
  }

  [(WiFiUsageSession *)self setLastSSIDdisable6eModeAtStart:self->_networkDisable6eModeAtStart];
  [(WiFiUsageSession *)self setLastSSIDdisabled6eModeChangeCount:self->_network6eDisabledModeChangeCount];
  [(WiFiUsageSession *)self setLastSSIDIn6eModeOffDuration:self->_inNetwork6eModeOffDuration];
  [(WiFiUsageSession *)self setNetworkDisable6eModeAtStart:statsCopy];

  if (statsCopy)
  {
    v9 = v10;
  }

  else
  {
    v9 = 0;
  }

  [(WiFiUsageSession *)self setLastNetwork6eDisableModeChangedTime:v9];
}

- (void)setSSIDTransitionCandidates:(id)candidates SSIDTransitionPotentialCandidates:(id)potentialCandidates potentialCandidatesMinusCandidates:(id)minusCandidates roamCandidates:(unint64_t)roamCandidates uniqueChannels:(unint64_t)channels uniqueBands:(unint64_t)bands
{
  candidatesCopy = candidates;
  potentialCandidatesCopy = potentialCandidates;
  minusCandidatesCopy = minusCandidates;
  if ([(WiFiUsageSession *)self isSessionActive])
  {
    ++self->_countRoamScan;
    v16 = [candidatesCopy count];
    v17 = [potentialCandidatesCopy count];
    [(WiFiUsageSession *)self setLastRoamScanFoundSSIDTransitionTarget:v16 != 0];
    [(WiFiUsageSession *)self setCountSSIDTransitionTargetInLastRoamScan:v16];
    countRoamScanThatFoundSSIDTransitionTarget = self->_countRoamScanThatFoundSSIDTransitionTarget;
    if (v16)
    {
      ++countRoamScanThatFoundSSIDTransitionTarget;
    }

    self->_countRoamScanThatFoundSSIDTransitionTarget = countRoamScanThatFoundSSIDTransitionTarget;
    [(WiFiUsageSession *)self setLastRoamScanFoundSSIDTransitionPotentialCandidate:v17 != 0];
    [(WiFiUsageSession *)self setCountSSIDTransitionPotentialCandidatesInLastRoamScan:v17];
    countRoamScanThatFoundSSIDTransitionPotentialCandidate = self->_countRoamScanThatFoundSSIDTransitionPotentialCandidate;
    if (v17)
    {
      ++countRoamScanThatFoundSSIDTransitionPotentialCandidate;
    }

    self->_countRoamScanThatFoundSSIDTransitionPotentialCandidate = countRoamScanThatFoundSSIDTransitionPotentialCandidate;
    self->_countSSIDTransitionPotentialCandidatesInLastRoamScanNotInTransitionableSet = [minusCandidatesCopy count];
    self->_lastRoamScanContainsRoamCandidateCount = roamCandidates;
    self->_lastRoamScanUniqueChannelsCount = channels;
    self->_lastRoamScanUniqueBandsCount = bands;
  }
}

- (void)updateUsbInsertedDuration:(id)duration
{
  durationCopy = duration;
  v5 = durationCopy;
  lastUsbStatusChange = self->_lastUsbStatusChange;
  if (!lastUsbStatusChange)
  {
    lastUsbStatusChange = self->_sessionStartTime;
  }

  [(NSDate *)durationCopy timeIntervalSinceDate:lastUsbStatusChange];
  self->_usbInsertedDuration = v7 + self->_usbInsertedDuration;
  v8 = self->_lastUsbStatusChange;
  self->_lastUsbStatusChange = v5;
}

- (void)updateUsbStatus:(BOOL)status currentDevices:(id)devices
{
  devicesCopy = devices;
  v5 = [MEMORY[0x277CBEAA8] now];
  v6 = [devicesCopy count];
  if (self->_lastUsbStatusChange)
  {
    if (!self->_anyUsbDeviceConnected && v6)
    {
      objc_storeStrong(&self->_lastUsbStatusChange, v5);
      goto LABEL_7;
    }

    if (!self->_anyUsbDeviceConnected || v6 != 0)
    {
      goto LABEL_7;
    }
  }

  else if (![devicesCopy count])
  {
    goto LABEL_7;
  }

  [(WiFiUsageSession *)self updateUsbInsertedDuration:v5];
LABEL_7:
  self->_anyUsbDeviceConnected = [devicesCopy count] != 0;
  ++self->_usbDeviceEventCount;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  sessionName = [(WiFiUsageSession *)self sessionName];
  if (self->_isSessionActive)
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  sessionStartTime = self->_sessionStartTime;
  sessionEndTime = self->_sessionEndTime;
  networkName = [(WiFiUsageNetworkDetails *)self->_networkDetails networkName];
  v9 = [v3 stringWithFormat:@"%@ session (active:%@ start:%@ end:%@ network:%@)", sessionName, v5, sessionStartTime, sessionEndTime, networkName];

  return v9;
}

- (id)redactedDescription
{
  v3 = MEMORY[0x277CCACA8];
  sessionName = [(WiFiUsageSession *)self sessionName];
  v5 = sessionName;
  if (self->_isSessionActive)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  v7 = [v3 stringWithFormat:@"%@ session (active:%@ start:%@ end:%@ network:<REDACTED>)", sessionName, v6, self->_sessionStartTime, self->_sessionEndTime];

  return v7;
}

- (void)tallyAssociatedDuration:(id)duration
{
  lastLinkStateChangedTime = self->_lastLinkStateChangedTime;
  if (lastLinkStateChangedTime)
  {
    sessionStartTime = self->_sessionStartTime;
    durationCopy = duration;
    v7 = [(NSDate *)lastLinkStateChangedTime laterDate:sessionStartTime];
    [durationCopy timeIntervalSinceDate:v7];
    v9 = v8;

    self->_associatedDuration = v9 + self->_associatedDuration;

    [(WiFiUsageSession *)self setLastLinkStateChangedTime:0];
  }
}

- (void)tallyInfraScoreDuration:(unint64_t)duration until:(id)until
{
  untilCopy = until;
  inAWDL_BestInfraScore = self->_inAWDL_BestInfraScore;
  if (self->_inAWDL_lastInfraScore == inAWDL_BestInfraScore)
  {
    if (self->_lastAWDLSequenceUpdate)
    {
      v11 = untilCopy;
      [untilCopy timeIntervalSinceDate:?];
      untilCopy = v11;
      self->_inAWDL_BestInfraScoreDuration = v8 + self->_inAWDL_BestInfraScoreDuration;
      inAWDL_BestInfraScore = self->_inAWDL_BestInfraScore;
    }

    else
    {
      inAWDL_BestInfraScore = self->_inAWDL_lastInfraScore;
    }
  }

  if (inAWDL_BestInfraScore < duration || !self->_lastAWDLSequenceUpdate)
  {
    self->_inAWDL_BestInfraScore = duration;
    self->_inAWDL_BestInfraScoreDuration = 0.0;
  }

  inAWDL_WorstInfraScore = self->_inAWDL_WorstInfraScore;
  if (self->_inAWDL_lastInfraScore == inAWDL_WorstInfraScore)
  {
    if (self->_lastAWDLSequenceUpdate)
    {
      v12 = untilCopy;
      [untilCopy timeIntervalSinceDate:?];
      untilCopy = v12;
      self->_inAWDL_WorstInfraScoreDuration = v10 + self->_inAWDL_WorstInfraScoreDuration;
      inAWDL_WorstInfraScore = self->_inAWDL_WorstInfraScore;
    }

    else
    {
      inAWDL_WorstInfraScore = self->_inAWDL_lastInfraScore;
    }
  }

  if (inAWDL_WorstInfraScore > duration || !self->_lastAWDLSequenceUpdate)
  {
    self->_inAWDL_WorstInfraScore = duration;
    self->_inAWDL_WorstInfraScoreDuration = 0.0;
  }

  self->_inAWDL_lastInfraScore = duration;
}

- (void)tallyP2PScoreDuration:(double)duration until:(id)until
{
  untilCopy = until;
  inAWDL_BestP2PScore = self->_inAWDL_BestP2PScore;
  if (self->_inAWDL_lastP2PScore == inAWDL_BestP2PScore && self->_lastAWDLSequenceUpdate)
  {
    v11 = untilCopy;
    [untilCopy timeIntervalSinceDate:?];
    untilCopy = v11;
    self->_inAWDL_BestP2PScoreDuration = v8 + self->_inAWDL_BestP2PScoreDuration;
    inAWDL_BestP2PScore = self->_inAWDL_BestP2PScore;
  }

  if (inAWDL_BestP2PScore < duration || !self->_lastAWDLSequenceUpdate)
  {
    self->_inAWDL_BestP2PScore = duration;
    self->_inAWDL_BestP2PScoreDuration = 0.0;
  }

  inAWDL_WorstP2PScore = self->_inAWDL_WorstP2PScore;
  if (self->_inAWDL_lastP2PScore == inAWDL_WorstP2PScore && self->_lastAWDLSequenceUpdate)
  {
    v12 = untilCopy;
    [untilCopy timeIntervalSinceDate:?];
    untilCopy = v12;
    self->_inAWDL_WorstP2PScoreDuration = v10 + self->_inAWDL_WorstP2PScoreDuration;
    inAWDL_WorstP2PScore = self->_inAWDL_WorstP2PScore;
  }

  if (inAWDL_WorstP2PScore > duration || !self->_lastAWDLSequenceUpdate)
  {
    self->_inAWDL_WorstP2PScore = duration;
    self->_inAWDL_WorstP2PScoreDuration = 0.0;
  }

  self->_inAWDL_lastP2PScore = duration;
}

- (void)updateScanForwardStats:(id)stats
{
  statsCopy = stats;
  v4 = [statsCopy objectForKey:@"SCAN_FWD_STATS_BSS_AWAKE_CNT"];
  v5 = v4;
  if (v4)
  {
    self->_forwardedBssInwakeCount += [v4 unsignedIntegerValue];
  }

  v6 = [statsCopy objectForKey:@"SCAN_FWD_STATS_BSS_SLEEP_CNT"];

  if (v6)
  {
    self->_forwardedBssInSleepCount += [v6 unsignedIntegerValue];
  }

  v7 = [statsCopy objectForKey:@"SCAN_FWD_STATS_HOST_SCAN_CNT"];

  if (v7)
  {
    self->_hostScanTriggersCount += [v7 unsignedIntegerValue];
  }

  v8 = [statsCopy objectForKey:@"SCAN_FWD_STATS_ROAM_SCAN_CNT"];

  if (v8)
  {
    self->_roamScanTriggersCount += [v8 unsignedIntegerValue];
  }

  v9 = [statsCopy objectForKey:@"SCAN_FWD_STATS_PNO_SCAN_CNT"];

  if (v9)
  {
    self->_pnoScanTriggersCount += [v9 unsignedIntegerValue];
  }

  v10 = [statsCopy objectForKey:@"SCAN_FWD_STATS_EPNO_SCAN_CNT"];

  if (v10)
  {
    self->_epnoScanTriggersCount += [v10 unsignedIntegerValue];
  }

  v11 = [statsCopy objectForKey:@"SCAN_FWD_STATS_CUR_BSS_AWAKE_CNT"];

  if (v11)
  {
    self->_currentBssMsgInWakeCount += [v11 unsignedIntegerValue];
  }

  v12 = [statsCopy objectForKey:@"SCAN_FWD_STATS_CUR_BSS_SLEEP_CNT"];

  if (v12)
  {
    self->_currentBssMsgInSleepCount += [v12 unsignedIntegerValue];
  }

  v13 = [statsCopy objectForKey:@"SCAN_FWD_STATS_SCAN_DATA_AWAKE_CNT"];

  if (v13)
  {
    self->_scanDataMsgInWakeCount += [v13 unsignedIntegerValue];
  }

  v14 = [statsCopy objectForKey:@"SCAN_FWD_STATS_SCAN_DATA_SLEEP_CNT"];

  if (v14)
  {
    self->_scanDataMsgInSleepCount += [v14 unsignedIntegerValue];
  }

  v15 = [statsCopy objectForKey:@"SCAN_FWD_STATS_SPMI_MSG_AWAKE_CNT"];

  if (v15)
  {
    self->_spmiMsgInAwakeCount += [v15 unsignedIntegerValue];
  }

  v16 = [statsCopy objectForKey:@"SCAN_FWD_STATS_SPMI_MSG_SLEEP_CNT"];

  if (v16)
  {
    self->_spmiMsgInSleepCount += [v16 unsignedIntegerValue];
  }

  v17 = [statsCopy objectForKey:@"SCAN_FWD_STATS_SPMI_MSG_DROP_RSSI_CNT"];

  if (v17)
  {
    self->_spmiMsgDropRssiFilterCount += [v17 unsignedIntegerValue];
  }

  v18 = [statsCopy objectForKey:@"SCAN_FWD_STATS_SPMI_MSG_DROP_MAX_CNT"];

  if (v18)
  {
    self->_spmiMsgDropMaxFilterCount += [v18 unsignedIntegerValue];
  }

  v19 = [statsCopy objectForKey:@"SCAN_FWD_STATS_SPMI_MSG_DROP_FAIL_CNT"];

  if (v19)
  {
    self->_spmiMsgDropSpmiFailCount += [v19 unsignedIntegerValue];
  }

  v20 = [statsCopy objectForKey:@"SCAN_FWD_STATS_BSS_DROP_LOW_MEM_CNT"];

  if (v20)
  {
    self->_bssDropLowMemoryCount += [v20 unsignedIntegerValue];
  }
}

- (BOOL)canSubmitToCA
{
  v17 = *MEMORY[0x277D85DE8];
  ca_config = self->_ca_config;
  if (!ca_config || [(WiFiUsageSessionCAConfig *)ca_config canSubmit])
  {
    return 1;
  }

  v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  result = 0;
  if (v5)
  {
    sessionName = [(WiFiUsageSession *)self sessionName];
    metricName = [(WiFiUsageSession *)self metricName];
    ca_config = [(WiFiUsageSession *)self ca_config];
    v9 = 138413058;
    v10 = sessionName;
    v11 = 2080;
    v12 = "[WiFiUsageSession canSubmitToCA]";
    v13 = 2112;
    v14 = metricName;
    v15 = 2112;
    v16 = ca_config;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%@ %s - skipping %@ submission (%@)", &v9, 0x2Au);

    return 0;
  }

  return result;
}

- ($06992ED503081CE345EDB9EEA121564E)bandUsageDuration
{
  v3 = *&self[361].var0[2];
  *retstr->var0 = *self[361].var0;
  *&retstr->var0[2] = v3;
  return self;
}

- (void)setBandUsageDuration:(id *)duration
{
  v3 = *duration->var0;
  *&self->_bandUsageDuration.valueByBand[2] = *&duration->var0[2];
  *self->_bandUsageDuration.valueByBand = v3;
}

- ($FEE1510A43A03BFC9F45CB2D5A0A197D)strongestRSSICountByBand
{
  v3 = *&self[362].var0[2];
  *retstr->var0 = *self[362].var0;
  *&retstr->var0[2] = v3;
  return self;
}

- (void)setStrongestRSSICountByBand:(id *)band
{
  v3 = *band->var0;
  *&self->_strongestRSSICountByBand.valueByBand[2] = *&band->var0[2];
  *self->_strongestRSSICountByBand.valueByBand = v3;
}

- ($FEE1510A43A03BFC9F45CB2D5A0A197D)strongestRSSIByBand
{
  v3 = *&self[363].var0[2];
  *retstr->var0 = *self[363].var0;
  *&retstr->var0[2] = v3;
  return self;
}

- (void)setStrongestRSSIByBand:(id *)band
{
  v3 = *band->var0;
  *&self->_strongestRSSIByBand.valueByBand[2] = *&band->var0[2];
  *self->_strongestRSSIByBand.valueByBand = v3;
}

- ($13477CEFC6EEA4B326536BBEC35DF1AE)roamNeighsSmllstCurrentToBestRssiByBandTransition
{
  v3 = *&self[132].var1[2][2];
  *&retstr->var0[1][1] = *&self[132].var0[2][2];
  *&retstr->var0[2][0] = v3;
  *&retstr->var0[2][2] = *&self[133].var0[0][1];
  *&retstr->var1[2][2] = self[133].var0[1][0];
  v4 = *&self[132].var0[2][0];
  *&retstr->var0[0][0] = *&self[132].var0[1][1];
  *&retstr->var0[0][2] = v4;
  return self;
}

- (void)setRoamNeighsSmllstCurrentToBestRssiByBandTransition:(id *)transition
{
  v3 = *&transition->var0[0][0];
  *&self->_roamNeighsSmllstCurrentToBestRssiByBandTransition.valueByBands[0][2] = *&transition->var0[0][2];
  *&self->_roamNeighsSmllstCurrentToBestRssiByBandTransition.valueByBands[0][0] = v3;
  v4 = *&transition->var0[1][1];
  v5 = *&transition->var0[2][0];
  v6 = *&transition->var0[2][2];
  *&self->_roamNeighsSmllstCurrentToBestRssiByBandTransition.valid[2][2] = *&transition->var1[2][2];
  *&self->_roamNeighsSmllstCurrentToBestRssiByBandTransition.valueByBands[2][2] = v6;
  *&self->_roamNeighsSmllstCurrentToBestRssiByBandTransition.valueByBands[2][0] = v5;
  *&self->_roamNeighsSmllstCurrentToBestRssiByBandTransition.valueByBands[1][1] = v4;
}

- ($13477CEFC6EEA4B326536BBEC35DF1AE)roamNeighsLrgstCurrentToBestRssiByBandTransition
{
  *&retstr->var1[2][2] = self[134].var0[1][0];
  v3 = *&self[133].var1[2][2];
  *&retstr->var0[1][1] = *&self[133].var0[2][2];
  *&retstr->var0[2][0] = v3;
  *&retstr->var0[2][2] = *&self[134].var0[0][1];
  v4 = *&self[133].var0[2][0];
  *&retstr->var0[0][0] = *&self[133].var0[1][1];
  *&retstr->var0[0][2] = v4;
  return self;
}

- (void)setRoamNeighsLrgstCurrentToBestRssiByBandTransition:(id *)transition
{
  v3 = *&transition->var0[1][1];
  v4 = *&transition->var0[2][0];
  v5 = *&transition->var0[2][2];
  *&self->_roamNeighsLrgstCurrentToBestRssiByBandTransition.valid[2][2] = *&transition->var1[2][2];
  v6 = *&transition->var0[0][2];
  *&self->_roamNeighsLrgstCurrentToBestRssiByBandTransition.valueByBands[0][0] = *&transition->var0[0][0];
  *&self->_roamNeighsLrgstCurrentToBestRssiByBandTransition.valueByBands[0][2] = v6;
  *&self->_roamNeighsLrgstCurrentToBestRssiByBandTransition.valueByBands[2][0] = v4;
  *&self->_roamNeighsLrgstCurrentToBestRssiByBandTransition.valueByBands[2][2] = v5;
  *&self->_roamNeighsLrgstCurrentToBestRssiByBandTransition.valueByBands[1][1] = v3;
}

- ($13477CEFC6EEA4B326536BBEC35DF1AE)roamNeighsSmllstCurrentToNextBestRssiByBandTransition
{
  v3 = *&self[134].var1[2][2];
  *&retstr->var0[1][1] = *&self[134].var0[2][2];
  *&retstr->var0[2][0] = v3;
  *&retstr->var0[2][2] = *&self[135].var0[0][1];
  *&retstr->var1[2][2] = self[135].var0[1][0];
  v4 = *&self[134].var0[2][0];
  *&retstr->var0[0][0] = *&self[134].var0[1][1];
  *&retstr->var0[0][2] = v4;
  return self;
}

- (void)setRoamNeighsSmllstCurrentToNextBestRssiByBandTransition:(id *)transition
{
  v3 = *&transition->var0[0][0];
  *&self->_roamNeighsSmllstCurrentToNextBestRssiByBandTransition.valueByBands[0][2] = *&transition->var0[0][2];
  *&self->_roamNeighsSmllstCurrentToNextBestRssiByBandTransition.valueByBands[0][0] = v3;
  v4 = *&transition->var0[1][1];
  v5 = *&transition->var0[2][0];
  v6 = *&transition->var0[2][2];
  *&self->_roamNeighsSmllstCurrentToNextBestRssiByBandTransition.valid[2][2] = *&transition->var1[2][2];
  *&self->_roamNeighsSmllstCurrentToNextBestRssiByBandTransition.valueByBands[2][2] = v6;
  *&self->_roamNeighsSmllstCurrentToNextBestRssiByBandTransition.valueByBands[2][0] = v5;
  *&self->_roamNeighsSmllstCurrentToNextBestRssiByBandTransition.valueByBands[1][1] = v4;
}

- ($13477CEFC6EEA4B326536BBEC35DF1AE)roamNeighsLrgstCurrentToNextBestRssiByBandTransition
{
  *&retstr->var1[2][2] = self[136].var0[1][0];
  v3 = *&self[135].var1[2][2];
  *&retstr->var0[1][1] = *&self[135].var0[2][2];
  *&retstr->var0[2][0] = v3;
  *&retstr->var0[2][2] = *&self[136].var0[0][1];
  v4 = *&self[135].var0[2][0];
  *&retstr->var0[0][0] = *&self[135].var0[1][1];
  *&retstr->var0[0][2] = v4;
  return self;
}

- (void)setRoamNeighsLrgstCurrentToNextBestRssiByBandTransition:(id *)transition
{
  v3 = *&transition->var0[1][1];
  v4 = *&transition->var0[2][0];
  v5 = *&transition->var0[2][2];
  *&self->_roamNeighsLrgstCurrentToNextBestRssiByBandTransition.valid[2][2] = *&transition->var1[2][2];
  v6 = *&transition->var0[0][2];
  *&self->_roamNeighsLrgstCurrentToNextBestRssiByBandTransition.valueByBands[0][0] = *&transition->var0[0][0];
  *&self->_roamNeighsLrgstCurrentToNextBestRssiByBandTransition.valueByBands[0][2] = v6;
  *&self->_roamNeighsLrgstCurrentToNextBestRssiByBandTransition.valueByBands[2][0] = v4;
  *&self->_roamNeighsLrgstCurrentToNextBestRssiByBandTransition.valueByBands[2][2] = v5;
  *&self->_roamNeighsLrgstCurrentToNextBestRssiByBandTransition.valueByBands[1][1] = v3;
}

@end