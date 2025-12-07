@interface WiFiUsageMonitor
+ (id)LQMAnalysisReasonForFault:(unint64_t)fault;
+ (id)getTDConfirmedEventStringForDisplay:(id *)display;
+ (id)getTDEvalCompleteEventStringForDisplay:(int)display;
+ (id)sharedInstance;
+ (void)appendTDStateToDict:(id)dict from:(id)from;
- (BOOL)submitAnalytics:(id)analytics;
- (BOOL)submitBeaconInfoToCAForInterface:(id)interface;
- (WiFiUsageMonitor)init;
- (id)canStartLQMAnalysisforTrigger:(id)trigger andReason:(id)reason onWindow:(id)window;
- (id)faultReasonCount:(unint64_t)count forInterface:(id)interface;
- (id)getProperty:(id)property forAllSessionsOfInterface:(id)interface;
- (id)lastBssSessionInfoForInterface:(id)interface;
- (id)lastRangingSessionMetric;
- (id)summaryForInterface:(id)interface;
- (void)addFaultEvent:(unint64_t)event forInterface:(id)interface;
- (void)addFaultEvent:(unint64_t)event forInterface:(id)interface at:(id)at event:(id)a6;
- (void)addFaultEvent:(unint64_t)event forInterface:(id)interface event:(id)a5;
- (void)addRangingRttSampleWithRssi:(int64_t)rssi rtt:(int64_t)rtt snr:(unint64_t)snr flags:(unint64_t)flags channel:(unint64_t)channel coreId:(unint64_t)id bitErrorRate:(unint64_t)rate phyError:(unint64_t)self0 andPeerSnr:(unint64_t)self1 andPeerCoreId:(unint64_t)self2 andPeerBitErrorRate:(unint64_t)self3 andPeerPhyError:(unint64_t)self4;
- (void)addSoftApClientEvent:(BOOL)event identifier:(id)identifier isAppleClient:(BOOL)client isInstantHotspot:(BOOL)hotspot isAutoHotspot:(BOOL)autoHotspot isHidden:(BOOL)hidden;
- (void)addSoftApCoexEvent:(unint64_t)event deniedUnii1ChannelMap:(unint64_t)map deniedUnii2aChannelMap:(unint64_t)channelMap deniedUnii2cChannelMap:(unint64_t)unii2cChannelMap deniedUnii3ChannelMap:(unint64_t)unii3ChannelMap;
- (void)addTriggerDisconnectEvent:(id)event isAlerted:(BOOL)alerted isConfirmed:(BOOL)confirmed isExecuted:(BOOL)executed;
- (void)appendBTStatsToDict:(id)dict;
- (void)appendSARStatsToDict:(id)dict;
- (void)appendUsbStatsToDict:(id)dict;
- (void)brokenLinkDetected:(id)detected;
- (void)enableSubmitAnalyticsNoSampling:(BOOL)sampling;
- (void)enableXCTestNotifications;
- (void)faultEventDetected:(id)detected;
- (void)getMobileAssets;
- (void)initializeDeviceLockState:(BOOL)state displayState:(BOOL)displayState motionState:(id)motionState callState:(BOOL)callState mediaState:(BOOL)mediaState chargingState:(BOOL)chargingState companionConnectionState:(BOOL)connectionState andSecondaryInterfaceName:(id)self0 compatibilityMode:(BOOL)self1 badLinkRssi:(int64_t)self2 goodLinkRssi:(int64_t)self3;
- (void)linkTestEvent:(id)event withReason:(id)reason forInterface:(id)interface;
- (void)notifyDHCPChanges:(id)changes;
- (void)notifyDriverAvailability:(id)availability available:(BOOL)available version:(unint64_t)version flags:(unint64_t)flags eventID:(unint64_t)d reason:(int64_t)reason subReason:(int64_t)subReason minorReason:(int64_t)self0 reasonString:(id)self1;
- (void)notifyIPv4Changes:(id)changes;
- (void)notifyIPv6Changes:(id)changes;
- (void)notifyInterfaceRankingState:(BOOL)state forInterface:(id)interface;
- (void)notifyIpConfigurationStateWithMethod:(BOOL)method dhcpLeaseDuration:(double)duration hasRoutableIpV4:(BOOL)v4 hasRoutableIpV6:(BOOL)v6;
- (void)notifyNetworkQualityResults:(id)results forInterface:(id)interface;
- (void)pushRNFEventToHUD:(BOOL)d;
- (void)pushTDEventToHUD:(id)d;
- (void)rangingCompletedWithValidCount:(unint64_t)count resultStatus:(int64_t)status resultFlags:(unint64_t)flags;
- (void)rangingSessionRequestedWithSelfPreferredChannel:(unint64_t)channel selfMainChannel:(unint64_t)mainChannel selfChannelFlags:(unint64_t)flags peerPreferredChannel:(unint64_t)preferredChannel peerMainChannel:(unint64_t)peerMainChannel peerChannelFlags:(unint64_t)channelFlags requester:(id)requester;
- (void)rangingStartedWithNumMeasurements:(unint64_t)measurements;
- (void)receiveKernelLQMRollingWindow:(id)window ForInterface:(id)interface;
- (void)receivedBssTransitionRequest:(id)request candidateListIncluded:(BOOL)included isAbridged:(BOOL)abridged disassociationImminent:(BOOL)imminent bssTerminationIncluded:(BOOL)terminationIncluded essDisassociationImminent:(BOOL)disassociationImminent;
- (void)resetDeviceSessionforInterface:(id)interface;
- (void)sentBssTransitionResponse:(id)response status:(int64_t)status terminationDelayRequested:(BOOL)requested;
- (void)setAwdlSequence:(id)sequence;
- (void)setAwdlState:(BOOL)state inMode:(int64_t)mode;
- (void)setBluetoothState:(BOOL)state connectedDeviceCount:(unint64_t)count inA2dp:(BOOL)a2dp inSco:(BOOL)sco inUniAoS:(BOOL)s inBiAoS:(BOOL)aoS btAudioBand:(BOOL)band;
- (void)setCallState:(BOOL)state;
- (void)setCellularDataStatus:(id)status inAirplaneMode:(BOOL)mode;
- (void)setCellularFallbackState:(BOOL)state forInterface:(id)interface;
- (void)setCellularOutrankingState:(BOOL)state forInterface:(id)interface;
- (void)setCompanionConnectionState:(BOOL)state;
- (void)setCompatibilityModeEnabled:(BOOL)enabled;
- (void)setCompletionHandler:(id)handler withContext:(void *)context onQueue:(id)queue;
- (void)setControlCenterState:(BOOL)state withKnownLocation:(BOOL)location forInterface:(id)interface;
- (void)setCurrentApplicationName:(id)name withAttributes:(id)attributes;
- (void)setDeviceChargingState:(BOOL)state;
- (void)setDeviceInitializationFailureReason:(id)reason timeSinceBoot:(double)boot;
- (void)setDeviceLockState:(BOOL)state;
- (void)setDisplayState:(BOOL)state;
- (void)setFaultEventHandler:(id)handler;
- (void)setForgetNetworkEvent:(id)event forInterface:(id)interface;
- (void)setJoinEvent:(BOOL)event withReason:(unint64_t)reason lastDisconnectReason:(unint64_t)disconnectReason lastJoinFailure:(int64_t)failure andNetworkDetails:(id)details forInterface:(id)interface;
- (void)setLinkEvent:(BOOL)event isInvoluntary:(BOOL)involuntary linkChangeReason:(int64_t)reason linkChangeSubreason:(int64_t)subreason withNetworkDetails:(id)details forInterface:(id)interface;
- (void)setMediaState:(BOOL)state;
- (void)setMotionState:(id)state;
- (void)setPowerBudget:(int64_t)budget andThermalIndex:(int64_t)index forInterface:(id)interface;
- (void)setPowerState:(BOOL)state forInterface:(id)interface;
- (void)setPrivacyRestrictionDisabled:(BOOL)disabled;
- (void)setRoamingARCriteria:(id *)criteria forInterface:(id)interface;
- (void)setRoamingConfiguration:(int64_t)configuration withChannelList:(id)list forInterface:(id)interface;
- (void)setRoamingState:(BOOL)state withReason:(unint64_t)reason asString:(id)string andStatus:(unint64_t)status asString:(id)asString andLatency:(unint64_t)latency andRoamData:(id)data andPingPongSequence:(id)self0 forInterface:(id)self1;
- (void)setSARState:(BOOL)state builtInReceiverOn:(BOOL)on;
- (void)setScanningState:(BOOL)state client:(unint64_t)client neighborBSS:(id)s otherBSS:(id)sS withChannelInfoList:(id)list withRequest:(id)request forInterface:(id)interface;
- (void)setSecondaryInterfaceName:(id)name;
- (void)setSmartCoverState:(id)state;
- (void)setSoftApState:(BOOL)state requester:(id)requester status:(id)status changeReason:(id)reason channelNumber:(unint64_t)number countryCode:(unint64_t)code isHidden:(BOOL)hidden isInfraConnected:(BOOL)self0 isAwdlUp:(BOOL)self1 lowPowerModeDuration:(double)self2 compatibilityMode:(BOOL)self3 requestToUpLatency:(double)self4 idleTimeBeforeTeardownSec:(double)self5 idleTimeAfterLastClientDisconnectedSec:(double)self6;
- (void)setSteeringRequest:(unint64_t)request preferredChannel:(unint64_t)channel preferredBand:(int)band preferredSSID:(id)d targetSSIDDiffersFromCurrent:(BOOL)current preferredBSS:(id)s ssidIsSplit:(BOOL)split transitionCandidates:(BOOL)self0;
- (void)setSystemWakeState:(BOOL)state wokenByWiFi:(BOOL)fi;
- (void)setTdLogic_alertedBy:(int)by forInterface:(id)interface;
- (void)setTdLogic_badRssiThreshold:(int64_t)threshold goodRssiThreshold:(int64_t)rssiThreshold;
- (void)setTdLogic_decisionState:(id *)state forInterface:(id)interface;
- (void)setTdLogic_deferJoin:(unint64_t)join perBSSID:(unint64_t)d;
- (void)setTdLogic_end:(int)logic_end evalTime:(double)time rssi:(int64_t)rssi roamTime:(double)roamTime forInterface:(id)interface;
- (void)setTdLogic_execState:(id)state forInterface:(id)interface;
- (void)setTdLogic_fastTdState:(id *)state forInterface:(id)interface;
- (void)setTdLogic_waitForRoamTime:(double)time forInterface:(id)interface;
- (void)setUsbStatus:(BOOL)status currentDevices:(id)devices currentNoiseDelta:(int64_t)delta;
- (void)startLQMAnalysis:(id)analysis;
- (void)startMonitoringWiFiInterface:(id)interface withLinkSessionOnly:(BOOL)only;
- (void)submitBootLatenciesToCA;
- (void)submitLqmToCA:(id)a forInterface:(id)interface;
- (void)submitScanResultWithNeighborBSS:(id)s withOtherBSS:(id)sS withChannelInfoList:(id)list;
- (void)updateBeaconCache:(id)cache afterRoamAttempt:(id)attempt whileCurrentBSSID:(id)d forInterface:(id)interface;
- (void)updateBeaconInfo:(id)info andParsedIE:(id)e forInterface:(id)interface;
- (void)updateBssPerChannelWith:(id)with into:(id)into and:(id)and withChannelInfoList:(id)list;
- (void)updateCurrentNetworkDetails:(id)details;
- (void)updateIsBSPActive:(BOOL)active;
- (void)updateKnownNetworksSupportingSeamless:(id)seamless forBSS:(id)s andSSID:(id)d beaconCache:(id)cache;
- (void)updateLQMWindowCriteria;
- (void)updateLinkQuality:(id)quality forInterface:(id)interface supportsLinkRecommendations:(BOOL)recommendations;
- (void)updateLinkRecoveryDisabled:(BOOL)disabled;
- (void)updateLinkTestInterval:(unint64_t)interval;
- (void)updateRealTimeCoex:(BOOL)coex type:(unint64_t)type reasons:(id)reasons;
- (void)updateRoamCache:(id)cache forInterface:(id)interface;
- (void)updateScanForwardStats:(id)stats;
- (void)updateSleepPowerStats:(double)stats unassociatedDuration:(double)duration associatedDuration:(double)associatedDuration roamingDuration:(double)roamingDuration;
- (void)updateWPSInfo:(id)info;
- (void)updateWithBspOverflowed:(BOOL)overflowed IsBSPActive:(BOOL)active BspTimeToTST:(unint64_t)t BspSampleDurationMS:(unint64_t)s IsScanActiveBSP:(BOOL)p IsP2PActiveBSP:(BOOL)sP BspTriggerCount:(unint64_t)count BspMutePercentage:(unint64_t)self0 BspMaxMuteMS:(unint64_t)self1 BspAvgMuteMS:(unint64_t)self2 BspErrorPercentage:(unint64_t)self3 BspTimeOutPercentageOfTriggers:(unint64_t)self4 BspRejectOrFailPercentageOfTriggers:(unint64_t)self5 bspMaxConsecutiveFails:(unint64_t)self6 supportsLinkRecommendation:(BOOL)self7 forInterface:(id)self8;
- (void)updateWithChQualScore:(unint64_t)score txLatencyScore:(unint64_t)latencyScore rxLatencyScore:(unint64_t)rxLatencyScore txLossScore:(unint64_t)lossScore rxLossScore:(unint64_t)rxLossScore txLatencyP95:(unint64_t)p95 linkRecommendationFlags:(unint64_t)flags rtTrafficStatus:(unint64_t)self0 forInterface:(id)self1;
- (void)updateWithCompatibilityMode:(unsigned __int8)mode;
- (void)updateWithMLORuntimeConfig:(id *)config forInterface:(id)interface;
- (void)updateWithRoamingSuppression:(unsigned __int8)suppression;
- (void)updateWowState:(BOOL)state lpasState:(BOOL)lpasState lowPowerState:(BOOL)powerState batterySaverState:(BOOL)saverState;
@end

@implementation WiFiUsageMonitor

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[WiFiUsageMonitor sharedInstance];
  }

  v3 = sharedInstance_sharedWiFiUsageMonitor;

  return v3;
}

uint64_t __34__WiFiUsageMonitor_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(WiFiUsageMonitor);
  v1 = sharedInstance_sharedWiFiUsageMonitor;
  sharedInstance_sharedWiFiUsageMonitor = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (WiFiUsageMonitor)init
{
  v34.receiver = self;
  v34.super_class = WiFiUsageMonitor;
  v2 = [(WiFiUsageMonitor *)&v34 init];
  date = [MEMORY[0x277CBEAA8] date];
  v4 = *(v2 + 5);
  *(v2 + 5) = date;

  *(v2 + 42) = getpid();
  *(v2 + 43) = 0;
  *(v2 + 36) = 0;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v6 = *(v2 + 13);
  *(v2 + 13) = dictionary;

  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  v8 = *(v2 + 14);
  *(v2 + 14) = dictionary2;

  dictionary3 = [MEMORY[0x277CBEB38] dictionary];
  v10 = *(v2 + 15);
  *(v2 + 15) = dictionary3;

  v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v12 = dispatch_queue_create("com.apple.wifi.usage-monitor", v11);
  v13 = *(v2 + 18);
  *(v2 + 18) = v12;

  *(v2 + 16) = 0;
  v14 = *(v2 + 26);
  *(v2 + 26) = 0;

  v15 = *(v2 + 27);
  *(v2 + 27) = 0;

  array = [MEMORY[0x277CBEB18] array];
  v17 = *(v2 + 28);
  *(v2 + 28) = array;

  *(v2 + 37) = 0x7FFFFFFFFFFFFFFFLL;
  v18 = [[WiFiSoftError alloc] initWithName:@"Trigger Disconnect"];
  v19 = *(v2 + 38);
  *(v2 + 38) = v18;

  v20 = [[WiFiSoftError alloc] initWithName:@"Cellular Fallback"];
  v21 = *(v2 + 39);
  *(v2 + 39) = v20;

  v22 = *(v2 + 10);
  *(v2 + 10) = 0;

  objc_initWeak(&location, v2);
  v28 = MEMORY[0x277D85DD0];
  v29 = 3221225472;
  v30 = __24__WiFiUsageMonitor_init__block_invoke;
  v31 = &unk_2789C6B58;
  objc_copyWeak(&v32, &location);
  v23 = MEMORY[0x23839E400](&v28);
  v24 = *(v2 + 29);
  *(v2 + 29) = v23;

  dispatch_async(*(v2 + 18), &__block_literal_global_272);
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:v2 selector:sel_faultEventDetected_ name:@"SessionNotificationFaultEventDetected" object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:v2 selector:sel_brokenLinkDetected_ name:@"SessionNotificationBrokenLinkDetected" object:0];

  [v2 getMobileAssets];
  objc_destroyWeak(&v32);
  objc_destroyWeak(&location);
  return v2;
}

void __24__WiFiUsageMonitor_init__block_invoke(uint64_t a1, void *a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([v3 canSubmitToCA])
  {
    v14 = WeakRetained;
    [v3 summary];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v18 = v28 = 0u;
    obj = [v18 allKeys];
    v17 = [obj countByEnumeratingWithState:&v25 objects:v36 count:16];
    if (v17)
    {
      v16 = *v26;
      do
      {
        v5 = 0;
        do
        {
          if (*v26 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v19 = v5;
          v6 = *(*(&v25 + 1) + 8 * v5);
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            v7 = [v18 objectForKeyedSubscript:v6];
            v8 = [v7 count];
            *buf = 136315650;
            v31 = "[WiFiUsageMonitor init]_block_invoke";
            v32 = 2112;
            v33 = v6;
            v34 = 2048;
            v35 = v8;
            _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: calling AnalyticsSendEventLazy for LQM window analysis as %@ (%lu metrics)", buf, 0x20u);
          }

          v23 = 0u;
          v24 = 0u;
          v21 = 0u;
          v22 = 0u;
          v9 = [v18 objectForKeyedSubscript:v6];
          v10 = [v9 countByEnumeratingWithState:&v21 objects:v29 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v22;
            do
            {
              for (i = 0; i != v11; ++i)
              {
                if (*v22 != v12)
                {
                  objc_enumerationMutation(v9);
                }

                v20 = v3;
                AnalyticsSendEventLazy();
              }

              v11 = [v9 countByEnumeratingWithState:&v21 objects:v29 count:16];
            }

            while (v11);
          }

          v5 = v19 + 1;
        }

        while (v19 + 1 != v17);
        v17 = [obj countByEnumeratingWithState:&v25 objects:v36 count:16];
      }

      while (v17);
    }

    WeakRetained = v14;
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v31 = "[WiFiUsageMonitor init]_block_invoke_2";
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - not submitting this analysis to CA (downsampled)", buf, 0xCu);
  }

  [WeakRetained[28] removeObject:v3];
}

void __24__WiFiUsageMonitor_init__block_invoke_270()
{
  v9 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v0 = objc_opt_class();
    v1 = v0;
    v3 = 136315650;
    v4 = "[WiFiUsageMonitor init]_block_invoke";
    v5 = 2112;
    v6 = v0;
    v7 = 2112;
    v8 = objc_opt_class();
    v2 = v8;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: started configuration of %@ and %@", &v3, 0x20u);
  }
}

- (void)faultEventDetected:(id)detected
{
  v20 = *MEMORY[0x277D85DE8];
  detectedCopy = detected;
  userInfo = [detectedCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:@"SessionNotificationFaultType"];

  userInfo2 = [detectedCopy userInfo];

  v8 = [userInfo2 objectForKeyedSubscript:@"SessionNotificationInterfaceName"];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v9 = WiFiUsageFaultReasonStringMap([v6 unsignedIntegerValue]);
    v12 = 136315906;
    v13 = "[WiFiUsageMonitor faultEventDetected:]";
    v14 = 2112;
    v15 = v9;
    v16 = 2112;
    v17 = v6;
    v18 = 2112;
    v19 = v8;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: fault event %@(%@) detected on interface %@", &v12, 0x2Au);
  }

  if (v6 && v8)
  {
    intValue = [v6 intValue];
    v11 = [MEMORY[0x277CBEAA8] now];
    [(WiFiUsageMonitor *)self addFaultEvent:intValue forInterface:v8 at:v11];
  }
}

- (void)brokenLinkDetected:(id)detected
{
  detectedCopy = detected;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__WiFiUsageMonitor_brokenLinkDetected___block_invoke;
  v7[3] = &unk_2789C6608;
  v8 = detectedCopy;
  selfCopy = self;
  v6 = detectedCopy;
  dispatch_async(internalQueue, v7);
}

void __39__WiFiUsageMonitor_brokenLinkDetected___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:@"SessionNotificationBrokenLinkReason"];

  v4 = [*(a1 + 32) userInfo];
  v5 = [v4 objectForKeyedSubscript:@"SessionNotificationInterfaceName"];

  if (*(*(a1 + 40) + 160))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315650;
      v11 = "[WiFiUsageMonitor brokenLinkDetected:]_block_invoke";
      v12 = 2112;
      v13 = v3;
      v14 = 2112;
      v15 = v5;
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: handling broken link with reason %@ detected on interface %@", &v10, 0x20u);
    }

    v6 = *(a1 + 32);
    v7 = *(*(a1 + 40) + 160);
    v8 = [v6 userInfo];
    v9 = [v8 objectForKeyedSubscript:@"SessionNotificationBrokenLinkReason"];
    (*(v7 + 16))(v7, v9);
  }
}

- (void)initializeDeviceLockState:(BOOL)state displayState:(BOOL)displayState motionState:(id)motionState callState:(BOOL)callState mediaState:(BOOL)mediaState chargingState:(BOOL)chargingState companionConnectionState:(BOOL)connectionState andSecondaryInterfaceName:(id)self0 compatibilityMode:(BOOL)self1 badLinkRssi:(int64_t)self2 goodLinkRssi:(int64_t)self3
{
  chargingStateCopy = chargingState;
  mediaStateCopy = mediaState;
  callStateCopy = callState;
  displayStateCopy = displayState;
  stateCopy = state;
  nameCopy = name;
  motionStateCopy = motionState;
  [(WiFiUsageMonitor *)self setDeviceLockState:stateCopy];
  [(WiFiUsageMonitor *)self setDisplayState:displayStateCopy];
  [(WiFiUsageMonitor *)self setMotionState:motionStateCopy];

  [(WiFiUsageMonitor *)self setCallState:callStateCopy];
  [(WiFiUsageMonitor *)self setMediaState:mediaStateCopy];
  [(WiFiUsageMonitor *)self setDeviceChargingState:chargingStateCopy];
  [(WiFiUsageMonitor *)self setCompanionConnectionState:connectionState];
  [(WiFiUsageMonitor *)self setCompatibilityModeEnabled:mode];
  [(WiFiUsageMonitor *)self setTdLogic_badRssiThreshold:rssi];
  [(WiFiUsageMonitor *)self setTdLogic_goodRssiThreshold:linkRssi];
  [(WiFiUsageMonitor *)self setSecondaryInterfaceName:nameCopy];
}

- (void)setCompletionHandler:(id)handler withContext:(void *)context onQueue:(id)queue
{
  handlerCopy = handler;
  queueCopy = queue;
  internalQueue = self->_internalQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __61__WiFiUsageMonitor_setCompletionHandler_withContext_onQueue___block_invoke;
  v13[3] = &unk_2789C6B80;
  v15 = handlerCopy;
  contextCopy = context;
  v13[4] = self;
  v14 = queueCopy;
  v11 = queueCopy;
  v12 = handlerCopy;
  dispatch_async(internalQueue, v13);
}

void __61__WiFiUsageMonitor_setCompletionHandler_withContext_onQueue___block_invoke(void *a1)
{
  v2 = MEMORY[0x23839E400](a1[6]);
  v3 = a1[4];
  v4 = *(v3 + 152);
  *(v3 + 152) = v2;

  *(a1[4] + 168) = a1[7];
  v5 = a1[5];
  v6 = (a1[4] + 176);

  objc_storeStrong(v6, v5);
}

- (void)setFaultEventHandler:(id)handler
{
  handlerCopy = handler;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41__WiFiUsageMonitor_setFaultEventHandler___block_invoke;
  v7[3] = &unk_2789C6BA8;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(internalQueue, v7);
}

uint64_t __41__WiFiUsageMonitor_setFaultEventHandler___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x23839E400](*(a1 + 40));
  v3 = *(a1 + 32);
  v4 = *(v3 + 160);
  *(v3 + 160) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (void)startMonitoringWiFiInterface:(id)interface withLinkSessionOnly:(BOOL)only
{
  interfaceCopy = interface;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__WiFiUsageMonitor_startMonitoringWiFiInterface_withLinkSessionOnly___block_invoke;
  block[3] = &unk_2789C6C20;
  v10 = interfaceCopy;
  selfCopy = self;
  onlyCopy = only;
  v8 = interfaceCopy;
  dispatch_async(internalQueue, block);
}

void __69__WiFiUsageMonitor_startMonitoringWiFiInterface_withLinkSessionOnly___block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = [*(*(a1 + 40) + 104) allKeys];
    v3 = v2;
    if (*(a1 + 32) && ([v2 containsObject:?] & 1) == 0)
    {
      v4 = [[WiFiUsageInterfaceCapabilities alloc] initWithInterfaceName:*(a1 + 32)];
      [*(*(a1 + 40) + 136) setValue:v4 forKey:*(a1 + 32)];
      v5 = [MEMORY[0x277CBEB18] array];
      v6 = [[WiFiUsageLinkSession alloc] initWithInterfaceName:*(a1 + 32) andCapabilities:v4];
      v7 = v6;
      if (*(*(a1 + 40) + 33) == 1)
      {
        [(WiFiUsageSession *)v6 enableXCTestNotifications];
      }

      [v5 addObject:v7];
      v24 = v7;
      if ((*(a1 + 48) & 1) == 0)
      {
        v25 = [[WiFiUsageDeviceSession alloc] initWithInterfaceName:*(a1 + 32) andCapabilities:v4];
        v8 = [[WiFiUsageNetworkSession alloc] initWithInterfaceName:*(a1 + 32) andCapabilities:v4];
        v9 = [[WiFiUsageApplicationSession alloc] initWithInterfaceName:*(a1 + 32) andCapabilities:v4];
        v10 = [[WiFiUsageSoftApSession alloc] initWithInterfaceName:*(a1 + 32) andCapabilities:v4];
        v11 = [[WiFiUsageBatterySaveSession alloc] initWithInterfaceName:*(a1 + 32) andCapabilities:v4];
        v12 = [[WiFiUsageRealTimeCoexSession alloc] initWithInterfaceName:*(a1 + 32) andCapabilities:v4];
        v13 = [[WiFiUsagePoorLinkSession alloc] initWithInterfaceName:*(a1 + 32) andCapabilities:v4 onQueue:*(*(a1 + 40) + 144)];
        if (*(*(a1 + 40) + 33) == 1)
        {
          [(WiFiUsageSession *)v25 enableXCTestNotifications];
          if (*(*(a1 + 40) + 33))
          {
            [(WiFiUsageSession *)v8 enableXCTestNotifications];
            if (*(*(a1 + 40) + 33))
            {
              [(WiFiUsageSession *)v9 enableXCTestNotifications];
              if (*(*(a1 + 40) + 33))
              {
                [(WiFiUsageSession *)v10 enableXCTestNotifications];
                if (*(*(a1 + 40) + 33))
                {
                  [(WiFiUsageSession *)v11 enableXCTestNotifications];
                  if (*(*(a1 + 40) + 33))
                  {
                    [(WiFiUsageSession *)v12 enableXCTestNotifications];
                    if (*(*(a1 + 40) + 33))
                    {
                      [(WiFiUsageSession *)v13 enableXCTestNotifications];
                    }
                  }
                }
              }
            }
          }
        }

        [v5 addObject:v25];
        [v5 addObject:v8];
        [v5 addObject:v9];
        [v5 addObject:v10];
        [v5 addObject:v11];
        [v5 addObject:v12];
        [v5 addObject:v13];
      }

      v26 = v3;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v14 = v5;
      v15 = [v14 countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v30;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v30 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v29 + 1) + 8 * i);
            v27[0] = MEMORY[0x277D85DD0];
            v27[1] = 3221225472;
            v27[2] = __69__WiFiUsageMonitor_startMonitoringWiFiInterface_withLinkSessionOnly___block_invoke_289;
            v27[3] = &unk_2789C6BF8;
            v28 = *(a1 + 40);
            [v19 setCompletionHandler:v27 withContext:v28 onQueue:*(v28 + 144)];
            [v19 systemWakeStateDidChange:1 wokenByWiFi:0];
            [v19 lockStateDidChange:*(*(a1 + 40) + 9)];
            [v19 displayStateDidChange:*(*(a1 + 40) + 10)];
            [v19 motionStateDidChange:*(*(a1 + 40) + 48)];
            [v19 callStateDidChange:*(*(a1 + 40) + 13)];
            [v19 mediaStateDidChange:*(*(a1 + 40) + 14)];
            [v19 chargingStateDidChange:*(*(a1 + 40) + 11)];
            [v19 companionStateDidChange:*(*(a1 + 40) + 12)];
            [v19 secondaryInterfaceNameDidChange:*(*(a1 + 40) + 88)];
            [v19 setPrivacyRestrictionDisabled:*(*(a1 + 40) + 32)];
            [v19 setProcessInitTime:*(*(a1 + 40) + 40)];
            [v19 tdLogic_badRssi:*(*(a1 + 40) + 64) goodRSSI:*(*(a1 + 40) + 72)];
          }

          v16 = [v14 countByEnumeratingWithState:&v29 objects:v33 count:16];
        }

        while (v16);
      }

      [*(*(a1 + 40) + 104) setValue:v14 forKey:*(a1 + 32)];
      [*(*(a1 + 40) + 112) setValue:v24 forKey:*(a1 + 32)];
      if (*(*(a1 + 40) + 33) == 1)
      {
        v20 = [MEMORY[0x277CCAB98] defaultCenter];
        v21 = [MEMORY[0x277CCAB88] notificationWithName:@"interface usage session was set" object:0];
        [v20 postNotification:v21];
      }

      v22 = [[WiFiUsageLQMRollingWindow alloc] initWithInterfaceName:*(a1 + 32) andInterfaceCapabilities:v4];
      [(WiFiUsageLQMRollingWindow *)v22 configureDataTriggeredCriteria];
      [*(*(a1 + 40) + 120) setObject:v22 forKey:*(a1 + 32)];

      v3 = v26;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v23 = *(a1 + 32);
    *buf = 136315394;
    v35 = "[WiFiUsageMonitor startMonitoringWiFiInterface:withLinkSessionOnly:]_block_invoke";
    v36 = 2112;
    v37 = v23;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - Invalid interfaceName:%@", buf, 0x16u);
  }
}

void __69__WiFiUsageMonitor_startMonitoringWiFiInterface_withLinkSessionOnly___block_invoke_289(uint64_t a1, void *a2, void *a3)
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v5;
  if ([v6 type] == 9)
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v8 = [v7 usageSessions];
    v9 = [v6 interfaceName];
    v10 = [v8 objectForKeyedSubscript:v9];

    v11 = [v10 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v11)
    {
      v12 = *v32;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v32 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v31 + 1) + 8 * i);
          if ([v14 type] != 9 && objc_msgSend(v14, "isSessionActive"))
          {
            [v14 poorLinkSessionStats:v6];
          }
        }

        v11 = [v10 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v11);
    }
  }

  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v15 = *(a1 + 32);
  if (!*(v15 + 152) || !*(v15 + 176) || (v16 = objc_autoreleasePoolPush(), v17 = *(a1 + 32), v18 = *(v17 + 176), block[0] = MEMORY[0x277D85DD0], block[1] = 3221225472, block[2] = __69__WiFiUsageMonitor_startMonitoringWiFiInterface_withLinkSessionOnly___block_invoke_2, block[3] = &unk_2789C6BD0, v26 = &v27, block[4] = v17, v25 = v6, dispatch_sync(v18, block), v25, objc_autoreleasePoolPop(v16), (v28[3] & 1) == 0))
  {
    v19 = objc_autoreleasePoolPush();
    [v7 submitAnalytics:v6];
    objc_autoreleasePoolPop(v19);
  }

  v20 = +[WiFiSoftApUsageMonitor sharedInstance];
  if (v20)
  {
    v21 = [v6 type] == 6;

    if (v21)
    {
      v22 = +[WiFiSoftApUsageMonitor sharedInstance];
      v23 = [v6 sessionSummary:0];
      [v22 updateStats:v23];
    }
  }

  _Block_object_dispose(&v27, 8);
}

void __69__WiFiUsageMonitor_startMonitoringWiFiInterface_withLinkSessionOnly___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 152);
  v4 = *(v2 + 168);
  v5 = [*(a1 + 40) type];
  v6 = [*(a1 + 40) sessionSummary:0];
  *(*(*(a1 + 48) + 8) + 24) = (*(v3 + 16))(v3, v4, v5, v6);
}

- (void)setPrivacyRestrictionDisabled:(BOOL)disabled
{
  self->_privacyRestrictionDisabled = disabled;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__WiFiUsageMonitor_setPrivacyRestrictionDisabled___block_invoke;
  block[3] = &unk_2789C6630;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

void __50__WiFiUsageMonitor_setPrivacyRestrictionDisabled___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v2 = [*(*(a1 + 32) + 104) allValues];
  v3 = [v2 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v20;
    do
    {
      v6 = 0;
      do
      {
        if (*v20 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v19 + 1) + 8 * v6);
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v8 = v7;
        v9 = [v8 countByEnumeratingWithState:&v15 objects:v23 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v16;
          do
          {
            v12 = 0;
            do
            {
              if (*v16 != v11)
              {
                objc_enumerationMutation(v8);
              }

              [*(*(&v15 + 1) + 8 * v12++) setPrivacyRestrictionDisabled:*(*(a1 + 32) + 32)];
            }

            while (v10 != v12);
            v10 = [v8 countByEnumeratingWithState:&v15 objects:v23 count:16];
          }

          while (v10);
        }

        ++v6;
      }

      while (v6 != v4);
      v4 = [v2 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v4);
  }

  if (*(*(a1 + 32) + 33) == 1)
  {
    v13 = [MEMORY[0x277CCAB98] defaultCenter];
    v14 = [MEMORY[0x277CCAB88] notificationWithName:@"setPrivacyRestrictionDisabled" object:0];
    [v13 postNotification:v14];
  }
}

- (void)setSystemWakeState:(BOOL)state wokenByWiFi:(BOOL)fi
{
  internalQueue = self->_internalQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __51__WiFiUsageMonitor_setSystemWakeState_wokenByWiFi___block_invoke;
  v5[3] = &unk_2789C6C48;
  v5[4] = self;
  stateCopy = state;
  fiCopy = fi;
  dispatch_async(internalQueue, v5);
}

void __51__WiFiUsageMonitor_setSystemWakeState_wokenByWiFi___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v1 + 8) != v2)
  {
    *(v1 + 8) = v2;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v4 = [*(*(a1 + 32) + 104) allValues];
    v5 = [v4 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v22;
      do
      {
        v8 = 0;
        do
        {
          if (*v22 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v21 + 1) + 8 * v8);
          v17 = 0u;
          v18 = 0u;
          v19 = 0u;
          v20 = 0u;
          v10 = v9;
          v11 = [v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v18;
            do
            {
              v14 = 0;
              do
              {
                if (*v18 != v13)
                {
                  objc_enumerationMutation(v10);
                }

                [*(*(&v17 + 1) + 8 * v14++) systemWakeStateDidChange:*(*(a1 + 32) + 8) wokenByWiFi:*(a1 + 41)];
              }

              while (v12 != v14);
              v12 = [v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
            }

            while (v12);
          }

          ++v8;
        }

        while (v8 != v6);
        v6 = [v4 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v6);
    }

    v1 = *(a1 + 32);
  }

  if (*(v1 + 33) == 1)
  {
    v15 = [MEMORY[0x277CCAB98] defaultCenter];
    v16 = [MEMORY[0x277CCAB88] notificationWithName:@"setSystemWakeState" object:0];
    [v15 postNotification:v16];
  }
}

- (void)setDeviceLockState:(BOOL)state
{
  internalQueue = self->_internalQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __39__WiFiUsageMonitor_setDeviceLockState___block_invoke;
  v4[3] = &unk_2789C6688;
  v4[4] = self;
  stateCopy = state;
  dispatch_async(internalQueue, v4);
}

void __39__WiFiUsageMonitor_setDeviceLockState___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v1 + 9) != v2)
  {
    *(v1 + 9) = v2;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v4 = [*(*(a1 + 32) + 104) allValues];
    v5 = [v4 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v25;
      do
      {
        v8 = 0;
        do
        {
          if (*v25 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v24 + 1) + 8 * v8);
          v20 = 0u;
          v21 = 0u;
          v22 = 0u;
          v23 = 0u;
          v10 = v9;
          v11 = [v10 countByEnumeratingWithState:&v20 objects:v28 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v21;
            do
            {
              v14 = 0;
              do
              {
                if (*v21 != v13)
                {
                  objc_enumerationMutation(v10);
                }

                [*(*(&v20 + 1) + 8 * v14++) lockStateDidChange:*(*(a1 + 32) + 9)];
              }

              while (v12 != v14);
              v12 = [v10 countByEnumeratingWithState:&v20 objects:v28 count:16];
            }

            while (v12);
          }

          ++v8;
        }

        while (v8 != v6);
        v6 = [v4 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v6);
    }

    v1 = *(a1 + 32);
    if ((*(v1 + 9) & 1) == 0 && !*(v1 + 352) && *(v1 + 336) <= 0x64uLL)
    {
      v15 = [MEMORY[0x277CBEAA8] date];
      v16 = *(a1 + 32);
      v17 = *(v16 + 352);
      *(v16 + 352) = v15;

      v1 = *(a1 + 32);
    }
  }

  if (*(v1 + 33) == 1)
  {
    v18 = [MEMORY[0x277CCAB98] defaultCenter];
    v19 = [MEMORY[0x277CCAB88] notificationWithName:@"DeviceLockState" object:0];
    [v18 postNotification:v19];
  }
}

- (void)setDisplayState:(BOOL)state
{
  internalQueue = self->_internalQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __36__WiFiUsageMonitor_setDisplayState___block_invoke;
  v4[3] = &unk_2789C6688;
  v4[4] = self;
  stateCopy = state;
  dispatch_async(internalQueue, v4);
}

void __36__WiFiUsageMonitor_setDisplayState___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v1 + 10) != v2)
  {
    *(v1 + 10) = v2;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v4 = [*(*(a1 + 32) + 104) allValues];
    v5 = [v4 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v22;
      do
      {
        v8 = 0;
        do
        {
          if (*v22 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v21 + 1) + 8 * v8);
          v17 = 0u;
          v18 = 0u;
          v19 = 0u;
          v20 = 0u;
          v10 = v9;
          v11 = [v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v18;
            do
            {
              v14 = 0;
              do
              {
                if (*v18 != v13)
                {
                  objc_enumerationMutation(v10);
                }

                [*(*(&v17 + 1) + 8 * v14++) displayStateDidChange:*(*(a1 + 32) + 10)];
              }

              while (v12 != v14);
              v12 = [v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
            }

            while (v12);
          }

          ++v8;
        }

        while (v8 != v6);
        v6 = [v4 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v6);
    }

    v1 = *(a1 + 32);
  }

  if (*(v1 + 33) == 1)
  {
    v15 = [MEMORY[0x277CCAB98] defaultCenter];
    v16 = [MEMORY[0x277CCAB88] notificationWithName:@"setDisplayState" object:0];
    [v15 postNotification:v16];
  }
}

- (void)setMotionState:(id)state
{
  stateCopy = state;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35__WiFiUsageMonitor_setMotionState___block_invoke;
  v7[3] = &unk_2789C6608;
  v7[4] = self;
  v8 = stateCopy;
  v6 = stateCopy;
  dispatch_async(internalQueue, v7);
}

void __35__WiFiUsageMonitor_setMotionState___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  if (([*(*(a1 + 32) + 48) isEqualToString:*(a1 + 40)] & 1) == 0)
  {
    objc_storeStrong((*(a1 + 32) + 48), *(a1 + 40));
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v2 = [*(*(a1 + 32) + 104) allValues];
    v3 = [v2 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v20;
      do
      {
        v6 = 0;
        do
        {
          if (*v20 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v19 + 1) + 8 * v6);
          v15 = 0u;
          v16 = 0u;
          v17 = 0u;
          v18 = 0u;
          v8 = v7;
          v9 = [v8 countByEnumeratingWithState:&v15 objects:v23 count:16];
          if (v9)
          {
            v10 = v9;
            v11 = *v16;
            do
            {
              v12 = 0;
              do
              {
                if (*v16 != v11)
                {
                  objc_enumerationMutation(v8);
                }

                [*(*(&v15 + 1) + 8 * v12++) motionStateDidChange:*(a1 + 40)];
              }

              while (v10 != v12);
              v10 = [v8 countByEnumeratingWithState:&v15 objects:v23 count:16];
            }

            while (v10);
          }

          ++v6;
        }

        while (v6 != v4);
        v4 = [v2 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v4);
    }
  }

  if (*(*(a1 + 32) + 33) == 1)
  {
    v13 = [MEMORY[0x277CCAB98] defaultCenter];
    v14 = [MEMORY[0x277CCAB88] notificationWithName:@"setMotionState" object:0];
    [v13 postNotification:v14];
  }
}

- (void)setSmartCoverState:(id)state
{
  stateCopy = state;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__WiFiUsageMonitor_setSmartCoverState___block_invoke;
  v7[3] = &unk_2789C6608;
  v7[4] = self;
  v8 = stateCopy;
  v6 = stateCopy;
  dispatch_async(internalQueue, v7);
}

void __39__WiFiUsageMonitor_setSmartCoverState___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v2 = [*(*(a1 + 32) + 104) allValues];
  v3 = [v2 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v20;
    do
    {
      v6 = 0;
      do
      {
        if (*v20 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v19 + 1) + 8 * v6);
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v8 = v7;
        v9 = [v8 countByEnumeratingWithState:&v15 objects:v23 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v16;
          do
          {
            v12 = 0;
            do
            {
              if (*v16 != v11)
              {
                objc_enumerationMutation(v8);
              }

              [*(*(&v15 + 1) + 8 * v12++) smartCoverStateDidChange:*(a1 + 40)];
            }

            while (v10 != v12);
            v10 = [v8 countByEnumeratingWithState:&v15 objects:v23 count:16];
          }

          while (v10);
        }

        ++v6;
      }

      while (v6 != v4);
      v4 = [v2 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v4);
  }

  if (*(*(a1 + 32) + 33) == 1)
  {
    v13 = [MEMORY[0x277CCAB98] defaultCenter];
    v14 = [MEMORY[0x277CCAB88] notificationWithName:@"setSmartCoverState" object:0];
    [v13 postNotification:v14];
  }
}

- (void)setCallState:(BOOL)state
{
  internalQueue = self->_internalQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __33__WiFiUsageMonitor_setCallState___block_invoke;
  v4[3] = &unk_2789C6688;
  v4[4] = self;
  stateCopy = state;
  dispatch_async(internalQueue, v4);
}

void __33__WiFiUsageMonitor_setCallState___block_invoke(uint64_t a1)
{
  v54 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v1 + 13) != v2)
  {
    *(v1 + 13) = v2;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v4 = [*(*(a1 + 32) + 104) allValues];
    v5 = [v4 countByEnumeratingWithState:&v47 objects:v53 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v48;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v48 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v47 + 1) + 8 * i);
          v43 = 0u;
          v44 = 0u;
          v45 = 0u;
          v46 = 0u;
          v10 = v9;
          v11 = [v10 countByEnumeratingWithState:&v43 objects:v52 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v44;
            do
            {
              for (j = 0; j != v12; ++j)
              {
                if (*v44 != v13)
                {
                  objc_enumerationMutation(v10);
                }

                [*(*(&v43 + 1) + 8 * j) callStateDidChange:*(*(a1 + 32) + 13)];
              }

              v12 = [v10 countByEnumeratingWithState:&v43 objects:v52 count:16];
            }

            while (v12);
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v47 objects:v53 count:16];
      }

      while (v6);
    }

    v15 = *(a1 + 32);
    if (*(v15 + 13) == 1)
    {
      v16 = [MEMORY[0x277CBEAA8] now];
      v17 = *(a1 + 32);
      v18 = *(v17 + 240);
      *(v17 + 240) = v16;

      v15 = *(a1 + 32);
    }

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    obj = [*(v15 + 120) allValues];
    v36 = [obj countByEnumeratingWithState:&v39 objects:v51 count:16];
    if (v36)
    {
      v35 = *v40;
      do
      {
        for (k = 0; k != v36; ++k)
        {
          if (*v40 != v35)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v39 + 1) + 8 * k);
          v21 = *(a1 + 32);
          if (v21[13])
          {
            v22 = @"Call Start";
          }

          else
          {
            v22 = @"Call End";
          }

          v23 = [v21 canStartLQMAnalysisforTrigger:@"InCall" andReason:v22 onWindow:*(*(&v39 + 1) + 8 * k)];
          if (v23)
          {
            v24 = *(a1 + 32);
            v37 = v24[13];
            v25 = v24[15];
            v26 = v24[16];
            v27 = [WiFiUsageLQMWindowAnalysisInCall alloc];
            v28 = *(a1 + 32);
            if (*(v28 + 13))
            {
              v29 = @"Call Start";
            }

            else
            {
              v29 = @"Call End";
            }

            [*(v28 + 240) timeIntervalSinceNow];
            v38 = v38 & 0xFFFFFFFFFF000000 | v37 | (v25 << 8) | (v26 << 16);
            v31 = [WiFiUsageLQMWindowAnalysisInCall initWithRollingWindow:v27 andCallStatus:"initWithRollingWindow:andCallStatus:andCallDuration:andContext:andTimestamp:onQueue:" andCallDuration:v20 andContext:v29 andTimestamp:-v30 onQueue:?];
            [*(a1 + 32) startLQMAnalysis:v31];
          }
        }

        v36 = [obj countByEnumeratingWithState:&v39 objects:v51 count:16];
      }

      while (v36);
    }

    v1 = *(a1 + 32);
  }

  if (*(v1 + 33) == 1)
  {
    v32 = [MEMORY[0x277CCAB98] defaultCenter];
    v33 = [MEMORY[0x277CCAB88] notificationWithName:@"setCallState" object:0];
    [v32 postNotification:v33];
  }
}

- (void)setMediaState:(BOOL)state
{
  internalQueue = self->_internalQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __34__WiFiUsageMonitor_setMediaState___block_invoke;
  v4[3] = &unk_2789C6688;
  v4[4] = self;
  stateCopy = state;
  dispatch_async(internalQueue, v4);
}

void __34__WiFiUsageMonitor_setMediaState___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v1 + 14) != v2)
  {
    *(v1 + 14) = v2;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v4 = [*(*(a1 + 32) + 104) allValues];
    v5 = [v4 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v22;
      do
      {
        v8 = 0;
        do
        {
          if (*v22 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v21 + 1) + 8 * v8);
          v17 = 0u;
          v18 = 0u;
          v19 = 0u;
          v20 = 0u;
          v10 = v9;
          v11 = [v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v18;
            do
            {
              v14 = 0;
              do
              {
                if (*v18 != v13)
                {
                  objc_enumerationMutation(v10);
                }

                [*(*(&v17 + 1) + 8 * v14++) mediaStateDidChange:*(*(a1 + 32) + 14)];
              }

              while (v12 != v14);
              v12 = [v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
            }

            while (v12);
          }

          ++v8;
        }

        while (v8 != v6);
        v6 = [v4 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v6);
    }

    v1 = *(a1 + 32);
  }

  if (*(v1 + 33) == 1)
  {
    v15 = [MEMORY[0x277CCAB98] defaultCenter];
    v16 = [MEMORY[0x277CCAB88] notificationWithName:@"setMediaState" object:0];
    [v15 postNotification:v16];
  }
}

- (void)setDeviceChargingState:(BOOL)state
{
  internalQueue = self->_internalQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __43__WiFiUsageMonitor_setDeviceChargingState___block_invoke;
  v4[3] = &unk_2789C6688;
  v4[4] = self;
  stateCopy = state;
  dispatch_async(internalQueue, v4);
}

void __43__WiFiUsageMonitor_setDeviceChargingState___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v1 + 11) != v2)
  {
    *(v1 + 11) = v2;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v4 = [*(*(a1 + 32) + 104) allValues];
    v5 = [v4 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v22;
      do
      {
        v8 = 0;
        do
        {
          if (*v22 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v21 + 1) + 8 * v8);
          v17 = 0u;
          v18 = 0u;
          v19 = 0u;
          v20 = 0u;
          v10 = v9;
          v11 = [v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v18;
            do
            {
              v14 = 0;
              do
              {
                if (*v18 != v13)
                {
                  objc_enumerationMutation(v10);
                }

                [*(*(&v17 + 1) + 8 * v14++) chargingStateDidChange:*(*(a1 + 32) + 11)];
              }

              while (v12 != v14);
              v12 = [v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
            }

            while (v12);
          }

          ++v8;
        }

        while (v8 != v6);
        v6 = [v4 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v6);
    }

    v1 = *(a1 + 32);
  }

  if (*(v1 + 33) == 1)
  {
    v15 = [MEMORY[0x277CCAB98] defaultCenter];
    v16 = [MEMORY[0x277CCAB88] notificationWithName:@"DeviceChargingState" object:0];
    [v15 postNotification:v16];
  }
}

- (void)setCompanionConnectionState:(BOOL)state
{
  internalQueue = self->_internalQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __48__WiFiUsageMonitor_setCompanionConnectionState___block_invoke;
  v4[3] = &unk_2789C6688;
  v4[4] = self;
  stateCopy = state;
  dispatch_async(internalQueue, v4);
}

void __48__WiFiUsageMonitor_setCompanionConnectionState___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v1 + 12) != v2)
  {
    *(v1 + 12) = v2;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v4 = [*(*(a1 + 32) + 104) allValues];
    v5 = [v4 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v20;
      do
      {
        v8 = 0;
        do
        {
          if (*v20 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v19 + 1) + 8 * v8);
          v15 = 0u;
          v16 = 0u;
          v17 = 0u;
          v18 = 0u;
          v10 = v9;
          v11 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v16;
            do
            {
              v14 = 0;
              do
              {
                if (*v16 != v13)
                {
                  objc_enumerationMutation(v10);
                }

                [*(*(&v15 + 1) + 8 * v14++) companionStateDidChange:*(*(a1 + 32) + 12)];
              }

              while (v12 != v14);
              v12 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
            }

            while (v12);
          }

          ++v8;
        }

        while (v8 != v6);
        v6 = [v4 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v6);
    }
  }
}

- (void)setCompatibilityModeEnabled:(BOOL)enabled
{
  internalQueue = self->_internalQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __48__WiFiUsageMonitor_setCompatibilityModeEnabled___block_invoke;
  v4[3] = &unk_2789C6688;
  v4[4] = self;
  enabledCopy = enabled;
  dispatch_async(internalQueue, v4);
}

void __48__WiFiUsageMonitor_setCompatibilityModeEnabled___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v1 + 28) != v2)
  {
    *(v1 + 28) = v2;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v4 = [*(*(a1 + 32) + 104) allValues];
    v5 = [v4 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v22;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v22 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v21 + 1) + 8 * i);
          v17 = 0u;
          v18 = 0u;
          v19 = 0u;
          v20 = 0u;
          v10 = v9;
          v11 = [v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v18;
            do
            {
              for (j = 0; j != v12; ++j)
              {
                if (*v18 != v13)
                {
                  objc_enumerationMutation(v10);
                }

                v15 = *(*(&v17 + 1) + 8 * j);
                [v15 updateWithCompatibilityMode:*(a1 + 40)];
                if ([v15 type] == 4)
                {
                  v16 = [v15 currentBssSession];
                  [v16 updateWithCompatibilityMode:*(a1 + 40)];
                }
              }

              v12 = [v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
            }

            while (v12);
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v6);
    }
  }
}

- (void)setSecondaryInterfaceName:(id)name
{
  nameCopy = name;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__WiFiUsageMonitor_setSecondaryInterfaceName___block_invoke;
  v7[3] = &unk_2789C6608;
  v8 = nameCopy;
  selfCopy = self;
  v6 = nameCopy;
  dispatch_async(internalQueue, v7);
}

void __46__WiFiUsageMonitor_setSecondaryInterfaceName___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if (v1)
  {
    v3 = *(*(a1 + 40) + 88);
    if (v3)
    {
      if ([v3 isEqualToString:?])
      {
LABEL_20:
        if (*(*(a1 + 40) + 33) == 1)
        {
          v18 = [MEMORY[0x277CCAB98] defaultCenter];
          v19 = [MEMORY[0x277CCAB88] notificationWithName:@"secondary interface name set" object:0];
          [v18 postNotification:v19];
        }

        return;
      }

      v1 = *(a1 + 32);
    }

    v4 = [v1 copy];
    v5 = *(a1 + 40);
    v6 = *(v5 + 88);
    *(v5 + 88) = v4;

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v7 = [*(*(a1 + 40) + 104) allValues];
    v8 = [v7 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v25;
      do
      {
        v11 = 0;
        do
        {
          if (*v25 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v24 + 1) + 8 * v11);
          v20 = 0u;
          v21 = 0u;
          v22 = 0u;
          v23 = 0u;
          v13 = v12;
          v14 = [v13 countByEnumeratingWithState:&v20 objects:v28 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v21;
            do
            {
              v17 = 0;
              do
              {
                if (*v21 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                [*(*(&v20 + 1) + 8 * v17++) secondaryInterfaceNameDidChange:*(*(a1 + 40) + 88)];
              }

              while (v15 != v17);
              v15 = [v13 countByEnumeratingWithState:&v20 objects:v28 count:16];
            }

            while (v15);
          }

          ++v11;
        }

        while (v11 != v9);
        v9 = [v7 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v9);
    }

    goto LABEL_20;
  }
}

- (void)setCurrentApplicationName:(id)name withAttributes:(id)attributes
{
  nameCopy = name;
  attributesCopy = attributes;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__WiFiUsageMonitor_setCurrentApplicationName_withAttributes___block_invoke;
  block[3] = &unk_2789C6C70;
  block[4] = self;
  v12 = nameCopy;
  v13 = attributesCopy;
  v9 = attributesCopy;
  v10 = nameCopy;
  dispatch_async(internalQueue, block);
}

void __61__WiFiUsageMonitor_setCurrentApplicationName_withAttributes___block_invoke(void *a1)
{
  v36 = *MEMORY[0x277D85DE8];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v2 = [*(a1[4] + 104) allValues];
  v3 = [v2 countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v30;
    do
    {
      v6 = 0;
      do
      {
        if (*v30 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v29 + 1) + 8 * v6);
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v8 = v7;
        v9 = [v8 countByEnumeratingWithState:&v25 objects:v34 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v26;
          do
          {
            v12 = 0;
            do
            {
              if (*v26 != v11)
              {
                objc_enumerationMutation(v8);
              }

              [*(*(&v25 + 1) + 8 * v12++) applicationStateDidChange:a1[5] withAttributes:a1[6]];
            }

            while (v10 != v12);
            v10 = [v8 countByEnumeratingWithState:&v25 objects:v34 count:16];
          }

          while (v10);
        }

        ++v6;
      }

      while (v6 != v4);
      v4 = [v2 countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v4);
  }

  v13 = a1[4];
  if (*(v13 + 33) == 1)
  {
    v14 = [MEMORY[0x277CCAB98] defaultCenter];
    v15 = [MEMORY[0x277CCAB88] notificationWithName:@"CurrentApplicationName" object:0];
    [v14 postNotification:v15];

    v13 = a1[4];
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v16 = [*(v13 + 120) allValues];
  v17 = [v16 countByEnumeratingWithState:&v21 objects:v33 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v22;
    do
    {
      v20 = 0;
      do
      {
        if (*v22 != v19)
        {
          objc_enumerationMutation(v16);
        }

        [*(*(&v21 + 1) + 8 * v20++) setCurrentApplicationName:a1[5] withAttributes:a1[6]];
      }

      while (v18 != v20);
      v18 = [v16 countByEnumeratingWithState:&v21 objects:v33 count:16];
    }

    while (v18);
  }
}

- (void)updateLQMWindowCriteria
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__WiFiUsageMonitor_updateLQMWindowCriteria__block_invoke;
  block[3] = &unk_2789C6630;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

void __43__WiFiUsageMonitor_updateLQMWindowCriteria__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = [*(*(a1 + 32) + 120) allValues];
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        [*(*(&v6 + 1) + 8 * v5++) configureDataTriggeredCriteria];
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

- (void)setJoinEvent:(BOOL)event withReason:(unint64_t)reason lastDisconnectReason:(unint64_t)disconnectReason lastJoinFailure:(int64_t)failure andNetworkDetails:(id)details forInterface:(id)interface
{
  detailsCopy = details;
  interfaceCopy = interface;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __112__WiFiUsageMonitor_setJoinEvent_withReason_lastDisconnectReason_lastJoinFailure_andNetworkDetails_forInterface___block_invoke;
  block[3] = &unk_2789C6C98;
  block[4] = self;
  v20 = interfaceCopy;
  eventCopy = event;
  v21 = detailsCopy;
  reasonCopy = reason;
  disconnectReasonCopy = disconnectReason;
  failureCopy = failure;
  v17 = detailsCopy;
  v18 = interfaceCopy;
  dispatch_async(internalQueue, block);
}

void __112__WiFiUsageMonitor_setJoinEvent_withReason_lastDisconnectReason_lastJoinFailure_andNetworkDetails_forInterface___block_invoke(uint64_t a1)
{
  v43 = *MEMORY[0x277D85DE8];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v3 = [*(*(a1 + 32) + 104) valueForKey:{*(a1 + 40), 0}];
  v4 = [v3 countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v39;
    do
    {
      v7 = 0;
      do
      {
        if (*v39 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v38 + 1) + 8 * v7);
        v9 = *(a1 + 80);
        if (v9 == 1)
        {
          v1 = [*(a1 + 48) networkName];
          v10 = v1;
        }

        else
        {
          v10 = 0;
        }

        [v8 joinStateDidChange:v10 withReason:*(a1 + 56) lastDisconnectReason:*(a1 + 64) lastJoinFailure:*(a1 + 72) andNetworkDetails:*(a1 + 48)];
        if (v9)
        {
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v38 objects:v42 count:16];
    }

    while (v5);
  }

  if (*(*(a1 + 32) + 33) == 1)
  {
    v11 = [MEMORY[0x277CCAB98] defaultCenter];
    v12 = [MEMORY[0x277CCAB88] notificationWithName:@"SetJoinEvent" object:0];
    [v11 postNotification:v12];
  }

  if (*(a1 + 80) == 1)
  {
    v13 = [*(*(a1 + 32) + 120) objectForKey:*(a1 + 40)];
    v14 = *(a1 + 32);
    v15 = [WiFiUsageSession joinReasonString:*(a1 + 56)];
    v16 = [v14 canStartLQMAnalysisforTrigger:@"Join" andReason:v15 onWindow:v13];

    if (v16)
    {
      v17 = *(a1 + 32);
      v18 = v17[13];
      v19 = v17[15];
      v20 = v17[16];
      v21 = [WiFiUsageLQMWindowAnalysisJoin alloc];
      v22 = [*(*(a1 + 32) + 120) objectForKey:*(a1 + 40)];
      v23 = [WiFiUsageSession joinReasonString:*(a1 + 56)];
      v24 = [(WiFiUsageLQMWindowAnalysisJoin *)v21 initWithRollingWindow:v22 andReasonString:v23 andContext:v18 | (v19 << 8) | (v20 << 16) andTimestamp:v16 onQueue:*(*(a1 + 32) + 144)];

      [*(a1 + 32) startLQMAnalysis:v24];
    }

    v25 = *(a1 + 32);
    if (*(v25 + 336) <= 0x64uLL)
    {
      if (*(v25 + 416) || *(v25 + 456))
      {
        *(v25 + 36) = 1;
      }

      else
      {
        ++*(v25 + 344);
        v26 = [MEMORY[0x277CBEAA8] date];
        v27 = *(a1 + 32);
        v28 = *(v27 + 360);
        *(v27 + 360) = v26;

        v29 = MEMORY[0x277CCABB0];
        +[WiFiUsagePrivacyFilter timeSinceBootInSeconds];
        v30 = [v29 numberWithDouble:?];
        v31 = *(a1 + 32);
        v32 = *(v31 + 368);
        *(v31 + 368) = v30;

        v33 = *(a1 + 32);
        if (*(v33 + 352))
        {
          v34 = MEMORY[0x277CCABB0];
          [*(v33 + 360) timeIntervalSinceDate:?];
          v35 = [v34 numberWithDouble:?];
          v36 = *(a1 + 32);
          v37 = *(v36 + 376);
          *(v36 + 376) = v35;
        }
      }
    }
  }
}

- (void)setForgetNetworkEvent:(id)event forInterface:(id)interface
{
  v17 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  interfaceCopy = interface;
  if (_os_feature_enabled_impl())
  {
    internalQueue = self->_internalQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__WiFiUsageMonitor_setForgetNetworkEvent_forInterface___block_invoke;
    block[3] = &unk_2789C6C70;
    v10 = eventCopy;
    selfCopy = self;
    v12 = interfaceCopy;
    dispatch_async(internalQueue, block);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v14 = "[WiFiUsageMonitor setForgetNetworkEvent:forInterface:]";
    v15 = 2112;
    v16 = eventCopy;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s Do Nothing as WiFiDirectDonation Feature Flag Disabled! details:%@", buf, 0x16u);
  }
}

void __55__WiFiUsageMonitor_setForgetNetworkEvent_forInterface___block_invoke(void *a1)
{
  v18 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v2 = a1[4];
    *buf = 136315394;
    v15 = "[WiFiUsageMonitor setForgetNetworkEvent:forInterface:]_block_invoke";
    v16 = 2112;
    v17 = v2;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s details:%@", buf, 0x16u);
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = [*(a1[5] + 104) valueForKey:{a1[6], 0}];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        if ([v8 type] == 3)
        {
          [v8 processForgetNetwork:a1[4]];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)setLinkEvent:(BOOL)event isInvoluntary:(BOOL)involuntary linkChangeReason:(int64_t)reason linkChangeSubreason:(int64_t)subreason withNetworkDetails:(id)details forInterface:(id)interface
{
  detailsCopy = details;
  interfaceCopy = interface;
  internalQueue = self->_internalQueue;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __116__WiFiUsageMonitor_setLinkEvent_isInvoluntary_linkChangeReason_linkChangeSubreason_withNetworkDetails_forInterface___block_invoke;
  v19[3] = &unk_2789C6CC0;
  v19[4] = self;
  v20 = interfaceCopy;
  eventCopy = event;
  involuntaryCopy = involuntary;
  v21 = detailsCopy;
  reasonCopy = reason;
  subreasonCopy = subreason;
  v17 = detailsCopy;
  v18 = interfaceCopy;
  dispatch_async(internalQueue, v19);
}

void __116__WiFiUsageMonitor_setLinkEvent_isInvoluntary_linkChangeReason_linkChangeSubreason_withNetworkDetails_forInterface___block_invoke(uint64_t a1)
{
  v77 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 112) objectForKey:*(a1 + 40)];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v3 = @"NO";
    v4 = *(a1 + 48);
    if (*(a1 + 72))
    {
      v3 = @"YES";
    }

    *buf = 136315651;
    v72 = "[WiFiUsageMonitor setLinkEvent:isInvoluntary:linkChangeReason:linkChangeSubreason:withNetworkDetails:forInterface:]_block_invoke";
    v73 = 2112;
    v74 = v3;
    v75 = 2113;
    v76 = v4;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - isUp:%@ details:%{private}@", buf, 0x20u);
  }

  if (*(a1 + 72) == 1)
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 48);
    v7 = *(v5 + 280);
    *(v5 + 280) = v6;
  }

  else
  {
    v8 = *(a1 + 32);
    v7 = *(v8 + 280);
    *(v8 + 280) = 0;
  }

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v9 = [*(*(a1 + 32) + 104) valueForKey:*(a1 + 40)];
  v10 = [v9 countByEnumeratingWithState:&v66 objects:v70 count:16];
  v11 = v10;
  if (v10)
  {
    v12 = *v67;
    v13 = v10;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v67 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v66 + 1) + 8 * i);
        [v15 linkStateDidChange:*(a1 + 72) isInvoluntary:*(a1 + 73) linkChangeReason:*(a1 + 56) linkChangeSubreason:*(a1 + 64) withNetworkDetails:*(a1 + 48)];
        if (*(a1 + 72) == 1 && [v15 isSessionActive])
        {
          v16 = [*(a1 + 32) lastApProfile];
          [v15 updateApProfile:v16];
        }
      }

      v13 = [v9 countByEnumeratingWithState:&v66 objects:v70 count:16];
    }

    while (v13);
  }

  if (*(a1 + 72) == 1)
  {
    [*(a1 + 32) setLastApProfile:0];
  }

  if (*(*(a1 + 32) + 33) == 1)
  {
    v17 = [MEMORY[0x277CCAB98] defaultCenter];
    v18 = [MEMORY[0x277CCAB88] notificationWithName:@"SetLinkEvent" object:0];
    [v17 postNotification:v18];
  }

  if (v11 && (*(a1 + 72) & 1) == 0)
  {
    if (*(a1 + 40))
    {
      v19 = [*(*(a1 + 32) + 120) objectForKey:?];
      v20 = *(a1 + 32);
      v21 = [WiFiUsageSession disconnectReasonString:*(a1 + 56)];
      v22 = [v20 canStartLQMAnalysisforTrigger:@"LinkDown" andReason:v21 onWindow:v19];

      if (v22)
      {
        v23 = *(a1 + 32);
        v65 = v23[13];
        v64 = v23[15];
        v24 = v23[16];
        v25 = [WiFiUsageLQMWindowAnalysisLinkDown alloc];
        v26 = [*(*(a1 + 32) + 120) objectForKey:*(a1 + 40)];
        v27 = *(a1 + 73);
        v28 = *(a1 + 56);
        v29 = *(a1 + 64);
        if (v2)
        {
          [v2 sessionDuration];
          v31 = v30;
        }

        else
        {
          v31 = 0x8000000000000000;
        }

        v33 = [(WiFiUsageLQMWindowAnalysisLinkDown *)v25 initWithRollingWindow:v26 WithIsInvoluntary:v27 AndLinkChangeReason:v28 AndLinkChangeSubreason:v29 AndDuration:v31 andContext:v65 | (v64 << 8) | (v24 << 16) AndTimestamp:v22 onQueue:*(*(a1 + 32) + 144)];

        [*(a1 + 32) startLQMAnalysis:v33];
      }

      if (v19)
      {
        v34 = [v19 triggerCriteriaFilterList];
        v35 = [v34 count];

        if (v35)
        {
          if ([v19 endOngoingCriteria])
          {
            v36 = *(a1 + 32);
            v37 = v36[13];
            v38 = v36[15];
            v39 = v36[16];
            v40 = [WiFiUsageLQMWindowAnalysisDataTriggered alloc];
            v41 = [MEMORY[0x277CBEAA8] now];
            v42 = [(WiFiUsageLQMWindowAnalysisDataTriggered *)v40 initWithRollingWindow:v19 andSubReason:@"LinkDown" andContext:v37 | (v38 << 8) | (v39 << 16) andTimestamp:v41 onQueue:*(*(a1 + 32) + 144)];

            [*(a1 + 32) startLQMAnalysis:v42];
            [v19 cleanUpStashedMedians];
            [v19 clearOngoingCriteriaDates];
          }
        }
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v32 = *(a1 + 40);
      *buf = 136315394;
      v72 = "[WiFiUsageMonitor setLinkEvent:isInvoluntary:linkChangeReason:linkChangeSubreason:withNetworkDetails:forInterface:]_block_invoke";
      v73 = 2112;
      v74 = v32;
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - Invalid interfaceName:%@", buf, 0x16u);
    }
  }

  if (*(a1 + 72) & 1) != 0 || (!v2 ? (v44 = 9.22337204e18) : ([v2 sessionDuration], v44 = v43), objc_msgSend(*(a1 + 48), "connectedBss"), v45 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v45, "bssid"), v46 = objc_claimAutoreleasedReturnValue(), +[WiFiUsageAccessPointProfile updateWithAssocTime:forBssid:](WiFiUsageAccessPointProfile, "updateWithAssocTime:forBssid:", v46, v44), v46, v45, (*(a1 + 72)))
  {
    v47 = *(a1 + 32);
    if (*(v47 + 336) <= 0x64uLL)
    {
      if (*(v47 + 416) || *(v47 + 456))
      {
        *(v47 + 36) = 1;
      }

      else
      {
        v48 = [MEMORY[0x277CBEAA8] date];
        v49 = *(a1 + 32);
        v50 = *(v49 + 384);
        *(v49 + 384) = v48;

        v51 = MEMORY[0x277CCABB0];
        +[WiFiUsagePrivacyFilter timeSinceBootInSeconds];
        v52 = [v51 numberWithDouble:?];
        v53 = *(a1 + 32);
        v54 = *(v53 + 392);
        *(v53 + 392) = v52;

        v55 = *(a1 + 32);
        if (*(v55 + 352))
        {
          v56 = MEMORY[0x277CCABB0];
          [*(v55 + 384) timeIntervalSinceDate:?];
          v57 = [v56 numberWithDouble:?];
          v58 = *(a1 + 32);
          v59 = *(v58 + 400);
          *(v58 + 400) = v57;

          v55 = *(a1 + 32);
        }

        if (*(v55 + 360))
        {
          v60 = MEMORY[0x277CCABB0];
          [*(v55 + 384) timeIntervalSinceDate:?];
          v61 = [v60 numberWithDouble:?];
          v62 = *(a1 + 32);
          v63 = *(v62 + 408);
          *(v62 + 408) = v61;
        }
      }
    }
  }
}

+ (void)appendTDStateToDict:(id)dict from:(id)from
{
  dictCopy = dict;
  fromCopy = from;
  v7 = fromCopy;
  v8 = MEMORY[0x277CCABB0];
  if (!fromCopy)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithBool:0];
    v11 = @"TD_inTDEval";
LABEL_18:
    [dictCopy setObject:v10 forKeyedSubscript:v11];

    goto LABEL_19;
  }

  if ([fromCopy isSessionActive])
  {
    isInTDEval = [v7 isInTDEval];
  }

  else
  {
    isInTDEval = 0;
  }

  v12 = [v8 numberWithBool:isInTDEval];
  [dictCopy setObject:v12 forKeyedSubscript:@"TD_inTDEval"];

  if ([v7 isSessionActive])
  {
    v13 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v7, "tdConfirmed")}];
    [dictCopy setObject:v13 forKeyedSubscript:@"TD_Triggered"];

    if ([v7 isLastDecisionStateValid])
    {
      v14 = MEMORY[0x277CCABB0];
      objc_msgSend_last_DecisionState(v7);
      v15 = [v14 numberWithBool:v118[0]];
      [dictCopy setObject:v15 forKeyedSubscript:@"TD_Decision_TxPER"];

      v16 = MEMORY[0x277CCABB0];
      objc_msgSend_last_DecisionState(v7);
      v17 = [v16 numberWithBool:v117];
      [dictCopy setObject:v17 forKeyedSubscript:@"TD_Decision_FWTxPER"];

      v18 = MEMORY[0x277CCABB0];
      objc_msgSend_last_DecisionState(v7);
      v19 = [v18 numberWithBool:v116];
      [dictCopy setObject:v19 forKeyedSubscript:@"TD_Decision_BeaconPER"];

      v20 = MEMORY[0x277CCABB0];
      objc_msgSend_last_DecisionState(v7);
      v21 = [v20 numberWithBool:v115];
      [dictCopy setObject:v21 forKeyedSubscript:@"TD_Decision_GatewayARPFailure"];

      v22 = MEMORY[0x277CCABB0];
      objc_msgSend_last_DecisionState(v7);
      v23 = [v22 numberWithBool:v114];
      [dictCopy setObject:v23 forKeyedSubscript:@"TD_Decision_SymptomsDNSError"];

      v24 = MEMORY[0x277CCABB0];
      objc_msgSend_last_DecisionState(v7);
      v25 = [v24 numberWithBool:v113];
      [dictCopy setObject:v25 forKeyedSubscript:@"TD_Decision_AutoLeave"];

      v26 = MEMORY[0x277CCABB0];
      objc_msgSend_last_DecisionState(v7);
      v27 = [v26 numberWithBool:v112];
      [dictCopy setObject:v27 forKeyedSubscript:@"TD_Decision_ActiveProbe"];

      v28 = MEMORY[0x277CCABB0];
      objc_msgSend_last_DecisionState(v7);
      v29 = [v28 numberWithBool:v111];
      [dictCopy setObject:v29 forKeyedSubscript:@"TD_Decision_FastTD"];

      v30 = MEMORY[0x277CCABB0];
      objc_msgSend_last_DecisionState(v7);
      v31 = [v30 numberWithInteger:v110];
      [dictCopy setObject:v31 forKeyedSubscript:@"TD_AutoLeaveRSSIthreshold"];
    }

    if ([v7 isLastFastTdVotesValid])
    {
      v32 = MEMORY[0x277CCABB0];
      objc_msgSend_last_FastTdVotes(v7);
      v33 = [v32 numberWithBool:v109];
      [dictCopy setObject:v33 forKeyedSubscript:@"TD_VoteFastTD_LinkRecommendation"];

      v34 = MEMORY[0x277CCABB0];
      objc_msgSend_last_FastTdVotes(v7);
      v35 = [v34 numberWithBool:v108];
      [dictCopy setObject:v35 forKeyedSubscript:@"TD_VoteFastTD_TXPER"];

      v36 = MEMORY[0x277CCABB0];
      objc_msgSend_last_FastTdVotes(v7);
      v37 = [v36 numberWithBool:v107];
      [dictCopy setObject:v37 forKeyedSubscript:@"TD_VoteFastTD_FWTXPER"];

      v38 = MEMORY[0x277CCABB0];
      objc_msgSend_last_FastTdVotes(v7);
      v39 = [v38 numberWithBool:v106];
      [dictCopy setObject:v39 forKeyedSubscript:@"TD_VoteFastTD_BeaconPER"];

      v40 = MEMORY[0x277CCABB0];
      objc_msgSend_last_FastTdVotes(v7);
      v41 = [v40 numberWithBool:v105];
      [dictCopy setObject:v41 forKeyedSubscript:@"TD_VoteFastTD_2GPoorLink"];

      v42 = MEMORY[0x277CCABB0];
      objc_msgSend_last_FastTdVotes(v7);
      v43 = [v42 numberWithBool:v104];
      [dictCopy setObject:v43 forKeyedSubscript:@"TD_VoteFastTD_2GDataStall"];

      v44 = MEMORY[0x277CCABB0];
      objc_msgSend_last_FastTdVotes(v7);
      v45 = [v44 numberWithBool:v103];
      [dictCopy setObject:v45 forKeyedSubscript:@"TD_VoteFastTD_HighLatency"];

      v46 = MEMORY[0x277CCABB0];
      objc_msgSend_last_FastTdVotes(v7);
      v47 = [v46 numberWithBool:v102];
      [dictCopy setObject:v47 forKeyedSubscript:@"TD_VoteFastTD_InsufficientRxFrames"];

      v48 = MEMORY[0x277CCABB0];
      objc_msgSend_last_FastTdVotes(v7);
      v49 = [v48 numberWithInteger:v101[0]];
      [dictCopy setObject:v49 forKeyedSubscript:@"TD_VoteFastTD_VoteCount"];

      v50 = MEMORY[0x277CCABB0];
      objc_msgSend_last_FastTdVotes(v7);
      v51 = [v50 numberWithBool:v100];
      [dictCopy setObject:v51 forKeyedSubscript:@"TD_StateFastTD_RTApp"];

      v52 = MEMORY[0x277CCABB0];
      objc_msgSend_last_FastTdVotes(v7);
      v53 = [v52 numberWithBool:v99];
      [dictCopy setObject:v53 forKeyedSubscript:@"TD_StateFastTD_Cheap5G"];
    }

    lastTDEval_ConfirmedAt = [v7 lastTDEval_ConfirmedAt];
    if (lastTDEval_ConfirmedAt)
    {
      v55 = lastTDEval_ConfirmedAt;
      isLastSuppressStateValid = [v7 isLastSuppressStateValid];

      if (isLastSuppressStateValid)
      {
        v57 = [MEMORY[0x277CCABB0] numberWithBool:{(objc_msgSend(v7, "last_SuppressState") >> 24) & 1}];
        [dictCopy setObject:v57 forKeyedSubscript:@"TD_Suppress_SymptomsNODataStall"];

        v58 = [MEMORY[0x277CCABB0] numberWithBool:{(objc_msgSend(v7, "last_SuppressState") >> 32) & 1}];
        [dictCopy setObject:v58 forKeyedSubscript:@"TD_Suppress_SymptomsAppPolicy"];

        v59 = [MEMORY[0x277CCABB0] numberWithBool:{(objc_msgSend(v7, "last_SuppressState") >> 40) & 1}];
        [dictCopy setObject:v59 forKeyedSubscript:@"TD_Suppress_FastCheapCellular"];

        v60 = [MEMORY[0x277CCABB0] numberWithBool:{(objc_msgSend(v7, "last_SuppressState") >> 48) & 1}];
        [dictCopy setObject:v60 forKeyedSubscript:@"TD_Suppress_2dBGuard"];

        v61 = [MEMORY[0x277CCABB0] numberWithBool:{(objc_msgSend(v7, "last_SuppressState") >> 56) & 1}];
        [dictCopy setObject:v61 forKeyedSubscript:@"TD_Suppress_NoFGnetwApp"];

        v62 = MEMORY[0x277CCABB0];
        [v7 last_SuppressState];
        v64 = [v62 numberWithBool:v63 & 1];
        [dictCopy setObject:v64 forKeyedSubscript:@"TD_Suppress_TTR"];

        v65 = MEMORY[0x277CCABB0];
        [v7 last_SuppressState];
        v67 = [v65 numberWithBool:(v66 >> 8) & 1];
        [dictCopy setObject:v67 forKeyedSubscript:@"TD_Suppress_UserInput"];

        v68 = MEMORY[0x277CCABB0];
        [v7 last_SuppressState];
        v70 = [v68 numberWithBool:(v69 >> 16) & 1];
        [dictCopy setObject:v70 forKeyedSubscript:@"TD_Suppress_GoodAfterRoam"];

        v71 = MEMORY[0x277CCABB0];
        [v7 last_SuppressState];
        v73 = [v71 numberWithBool:(v72 >> 24) & 1];
        [dictCopy setObject:v73 forKeyedSubscript:@"TD_Suppress_ActiveProbing"];

        v74 = MEMORY[0x277CCABB0];
        [v7 last_SuppressState];
        v76 = [v74 numberWithBool:HIDWORD(v75) & 1];
        [dictCopy setObject:v76 forKeyedSubscript:@"TD_Suppress_Roam"];
      }
    }

    if ([v7 isLastDecisionStateValid])
    {
      objc_msgSend_last_DecisionState(v7);
      v77 = [WiFiUsagePrivacyFilter getLabelForTDMode:v98];
      [dictCopy setObject:v77 forKeyedSubscript:@"TD_Mode"];

      v78 = MEMORY[0x277CCABB0];
      objc_msgSend_last_DecisionState(v7);
      v79 = [v78 numberWithBool:v97];
      [dictCopy setObject:v79 forKeyedSubscript:@"TD_EdgeBSS"];

      v80 = MEMORY[0x277CCABB0];
      objc_msgSend_last_DecisionState(v7);
      v81 = [v80 numberWithBool:v96];
      [dictCopy setObject:v81 forKeyedSubscript:@"TD_MotionDetected"];

      v82 = MEMORY[0x277CCABB0];
      objc_msgSend_last_DecisionState(v7);
      v83 = [v82 numberWithBool:v95];
      [dictCopy setObject:v83 forKeyedSubscript:@"TD_WalkoutDetected"];

      v84 = MEMORY[0x277CCABB0];
      objc_msgSend_last_DecisionState(v7);
      v85 = [v84 numberWithBool:v94];
      [dictCopy setObject:v85 forKeyedSubscript:@"TD_WaitForRoam"];

      v86 = MEMORY[0x277CCABB0];
      objc_msgSend_last_DecisionState(v7);
      v87 = [v86 numberWithBool:v93];
      [dictCopy setObject:v87 forKeyedSubscript:@"TD_AppsUsingWiFi"];

      v88 = MEMORY[0x277CCABB0];
      objc_msgSend_last_DecisionState(v7);
      v89 = [v88 numberWithBool:v92];
      [dictCopy setObject:v89 forKeyedSubscript:@"TD_monitorOnly"];
    }

    if ([v7 isLastSuppressStateValid])
    {
      v90 = [MEMORY[0x277CCABB0] numberWithBool:{(objc_msgSend(v7, "last_SuppressState") >> 16) & 1}];
      [dictCopy setObject:v90 forKeyedSubscript:@"TD_FastTDEvaluation"];

      v91 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v7, "last_SuppressState") & 1}];
      [dictCopy setObject:v91 forKeyedSubscript:@"TD_AggressiveTD"];

      v10 = [MEMORY[0x277CCABB0] numberWithBool:{(objc_msgSend(v7, "last_SuppressState") >> 8) & 1}];
      v11 = @"TD_RNF_allowed";
      goto LABEL_18;
    }
  }

LABEL_19:
}

- (void)appendUsbStatsToDict:(id)dict
{
  v31 = *MEMORY[0x277D85DE8];
  dictCopy = dict;
  v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_isAnyUsbInserted];
  [dictCopy setObject:v5 forKeyedSubscript:@"isUsbInserted"];

  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{-[NSArray count](self->_usbDevices, "count")}];
  [dictCopy setObject:v6 forKeyedSubscript:@"usbDevicesCount"];

  if ([(NSArray *)self->_usbDevices count])
  {
    firstObject = [(NSArray *)self->_usbDevices firstObject];
    v8 = +[WiFiUsagePrivacyFilter getLabelForUsbVendor:](WiFiUsagePrivacyFilter, "getLabelForUsbVendor:", [firstObject vid]);
    [dictCopy setObject:v8 forKeyedSubscript:@"usbVendor"];

    v9 = [dictCopy objectForKeyedSubscript:@"usbVendor"];
    LOBYTE(firstObject) = [v9 isEqualToString:@"Other"];

    if ((firstObject & 1) == 0)
    {
      v10 = MEMORY[0x277CCABB0];
      firstObject2 = [(NSArray *)self->_usbDevices firstObject];
      v12 = [v10 numberWithInteger:{objc_msgSend(firstObject2, "vid")}];
      [dictCopy setObject:v12 forKeyedSubscript:@"usbVendorID"];
    }
  }

  v25 = dictCopy;
  v13 = objc_opt_new();
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v14 = self->_usbDevices;
  v15 = [(NSArray *)v14 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v15)
  {
    v16 = v15;
    vidIsApple = 0;
    v18 = *v27;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v27 != v18)
        {
          objc_enumerationMutation(v14);
        }

        v20 = *(*(&v26 + 1) + 8 * i);
        if ([v20 vidIsApple])
        {
          vidIsApple = [v20 vidIsApple];
        }

        v21 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v20, "controllerID")}];
        [v13 addObject:v21];
      }

      v16 = [(NSArray *)v14 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v16);
  }

  else
  {
    vidIsApple = 0;
  }

  v22 = [MEMORY[0x277CCABB0] numberWithBool:vidIsApple & 1];
  [v25 setObject:v22 forKeyedSubscript:@"isAnyUSBDeviceVendorApple"];

  if ([v13 count] == 1)
  {
    anyObject = [v13 anyObject];
    [v25 setObject:anyObject forKeyedSubscript:@"usbController"];
  }

  if ([(NSArray *)self->_usbDevices count]&& self->_noiseDeltaUponUSBInsertion != 0x7FFFFFFFFFFFFFFFLL)
  {
    v24 = [MEMORY[0x277CCABB0] numberWithInteger:?];
    [v25 setObject:v24 forKeyedSubscript:@"noiseDeltaUponUSBInsertion"];
  }
}

- (void)appendBTStatsToDict:(id)dict
{
  v4 = MEMORY[0x277CCABB0];
  inActiveSco = self->_inActiveSco;
  dictCopy = dict;
  v7 = [v4 numberWithBool:inActiveSco];
  [dictCopy setObject:v7 forKeyedSubscript:@"isSCOActive"];

  v8 = [MEMORY[0x277CCABB0] numberWithBool:self->_inActiveA2dp];
  [dictCopy setObject:v8 forKeyedSubscript:@"isA2dpActive"];

  v9 = [MEMORY[0x277CCABB0] numberWithBool:self->_inActiveCall];
  [dictCopy setObject:v9 forKeyedSubscript:@"inCall"];

  if (self->_curBTAudioBand)
  {
    v10 = @"5";
  }

  else
  {
    v10 = @"2.4";
  }

  [dictCopy setObject:v10 forKeyedSubscript:@"BTBand"];
  v11 = [MEMORY[0x277CCABB0] numberWithBool:self->_inActiveUniAoS];
  [dictCopy setObject:v11 forKeyedSubscript:@"isUniAoSActive"];

  v12 = [MEMORY[0x277CCABB0] numberWithBool:self->_inActiveBiAoS];
  [dictCopy setObject:v12 forKeyedSubscript:@"isBiAoSActive"];
}

- (void)appendSARStatsToDict:(id)dict
{
  v3 = MEMORY[0x277CCABB0];
  lastWiFiSARState = self->_lastWiFiSARState;
  dictCopy = dict;
  v6 = [v3 numberWithUnsignedInteger:lastWiFiSARState];
  [dictCopy setObject:v6 forKeyedSubscript:@"wifiSARState"];
}

- (void)updateLinkQuality:(id)quality forInterface:(id)interface supportsLinkRecommendations:(BOOL)recommendations
{
  qualityCopy = quality;
  interfaceCopy = interface;
  internalQueue = self->_internalQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __79__WiFiUsageMonitor_updateLinkQuality_forInterface_supportsLinkRecommendations___block_invoke;
  v13[3] = &unk_2789C6CE8;
  v14 = interfaceCopy;
  selfCopy = self;
  v16 = qualityCopy;
  recommendationsCopy = recommendations;
  v11 = qualityCopy;
  v12 = interfaceCopy;
  dispatch_async(internalQueue, v13);
}

void __79__WiFiUsageMonitor_updateLinkQuality_forInterface_supportsLinkRecommendations___block_invoke(uint64_t a1)
{
  v86 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = *(*(a1 + 40) + 184);
    v3 = [WiFiUsageInterfaceStats statsForInterfaceName:?];
    v4 = v3;
    if (v2)
    {
      v5 = [WiFiUsageInterfaceStats statsForInterfaceName:*(*(a1 + 40) + 88)];
      [*(a1 + 48) updateWithTxBytes:objc_msgSend(v4 RxBytes:"txBytes") - objc_msgSend(*(*(a1 + 40) + 184) TxL3Packets:"txBytes") RxL3Packets:objc_msgSend(v4 txBytesSecondary:"rxBytes") - objc_msgSend(*(*(a1 + 40) + 184) rxBytesSecondary:{"rxBytes"), objc_msgSend(v4, "txL3Packets") - objc_msgSend(*(*(a1 + 40) + 184), "txL3Packets"), objc_msgSend(v4, "rxL3Packets") - objc_msgSend(*(*(a1 + 40) + 184), "rxL3Packets"), objc_msgSend(v5, "txBytes") - objc_msgSend(*(*(a1 + 40) + 192), "txBytes"), objc_msgSend(v5, "rxBytes") - objc_msgSend(*(*(a1 + 40) + 192), "rxBytes")}];
      v6 = *(a1 + 40);
      v7 = *(v6 + 184);
      *(v6 + 184) = v4;
      v8 = v4;

      v9 = *(a1 + 40);
      v10 = *(v9 + 192);
      *(v9 + 192) = v5;
    }

    else
    {
      v12 = *(a1 + 40);
      v13 = *(v12 + 184);
      *(v12 + 184) = v3;

      v14 = [WiFiUsageInterfaceStats statsForInterfaceName:*(*(a1 + 40) + 88)];
      v15 = *(a1 + 40);
      v8 = *(v15 + 192);
      *(v15 + 192) = v14;
    }

    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v16 = [*(*(a1 + 40) + 104) valueForKey:*(a1 + 32)];
    v17 = [v16 countByEnumeratingWithState:&v76 objects:v81 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v77;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v77 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v76 + 1) + 8 * i);
          if ([v21 expectsLQMUpdates])
          {
            [v21 linkQualityDidChange:*(a1 + 48)];
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v76 objects:v81 count:16];
      }

      while (v18);
    }

    v22 = *(a1 + 40);
    if (*(v22 + 33) == 1)
    {
      v23 = [MEMORY[0x277CCAB98] defaultCenter];
      v24 = [MEMORY[0x277CCAB88] notificationWithName:@"UpdateLinkQuality" object:0];
      [v23 postNotification:v24];

      v22 = *(a1 + 40);
    }

    v25 = [*(v22 + 120) valueForKey:*(a1 + 32)];
    v26 = [v25 capabilities];
    if (!v26 || (v27 = v26, [v25 capabilities], v28 = objc_claimAutoreleasedReturnValue(), v29 = objc_msgSend(v28, "maxInterfacePHYRate"), v28, v27, !v29))
    {
      v30 = [[WiFiUsageInterfaceCapabilities alloc] initWithInterfaceName:*(a1 + 32)];
      if (v30)
      {
        [*(*(a1 + 40) + 136) setValue:v30 forKey:*(a1 + 32)];
        [v25 setCapabilities:v30];
      }
    }

    v31 = *(a1 + 48);
    v32 = [v25 capabilities];
    [v31 updateWithInterfaceCapabilities:v32 AndNetworkDetails:*(*(a1 + 40) + 280)];

    v33 = [v25 triggerCriteriaFilterList];
    if ([(WiFiUsageLQMWindowAnalysisDataTriggered *)v33 count])
    {
      v34 = [v25 checkCriteriaBSSIDWithSample:*(a1 + 48)];

      if (!v34)
      {
        goto LABEL_27;
      }

      v35 = *(a1 + 40);
      v36 = v35[13];
      v37 = v35[15];
      v38 = v35[16];
      v39 = [WiFiUsageLQMWindowAnalysisDataTriggered alloc];
      v40 = [MEMORY[0x277CBEAA8] now];
      v33 = [(WiFiUsageLQMWindowAnalysisDataTriggered *)v39 initWithRollingWindow:v25 andSubReason:@"BSSID Change" andContext:v36 | (v37 << 8) | (v38 << 16) andTimestamp:v40 onQueue:*(*(a1 + 40) + 144)];

      [*(a1 + 40) startLQMAnalysis:v33];
      [v25 cleanUpStashedMedians];
      [v25 clearOngoingCriteriaDates];
    }

LABEL_27:
    [v25 addSample:*(a1 + 48)];
    if ((*(a1 + 56) & 1) == 0 && ([*(a1 + 40) isBSPActive] & 1) == 0)
    {
      [*(a1 + 40) submitLqmToCA:*(a1 + 48) forInterface:*(a1 + 32)];
    }

    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v41 = [*(*(a1 + 40) + 224) copy];
    v42 = [v41 countByEnumeratingWithState:&v72 objects:v80 count:16];
    if (v42)
    {
      v43 = v42;
      v44 = *v73;
      do
      {
        for (j = 0; j != v43; ++j)
        {
          if (*v73 != v44)
          {
            objc_enumerationMutation(v41);
          }

          [*(*(&v72 + 1) + 8 * j) updateWithLQMSample:*(a1 + 48)];
        }

        v43 = [v41 countByEnumeratingWithState:&v72 objects:v80 count:16];
      }

      while (v43);
    }

    v46 = [v25 triggerCriteriaFilterList];
    v47 = [v46 count];

    if (v47)
    {
      v48 = [v25 evaluateCriteriaWithStopUponFirstMatch:1];
      if ([v48 matched])
      {
        v49 = [v48 firstTriggered];
        v50 = [v48 currentSample];
        v51 = [v49 isEqual:v50];
      }

      else
      {
        v51 = 0;
      }

      if ([v48 matched])
      {
        v52 = 0;
        v53 = &stru_28487EF20;
        v54 = @"Match Start";
        if (!v51)
        {
          v54 = &stru_28487EF20;
        }

        v55 = &stru_28487EF20;
      }

      else
      {
        v56 = [v48 firstTriggered];

        v53 = &stru_28487EF20;
        v54 = @"Match Start";
        if (!v51)
        {
          v54 = &stru_28487EF20;
        }

        v52 = v56 != 0;
        v55 = @"Match End";
        if (!v56)
        {
          v55 = &stru_28487EF20;
        }

        if ((v51 & v52) != 0)
        {
          v53 = @"&";
        }
      }

      v57 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@%@", v54, v53, v55];
      if ((v51 | v52) == 1)
      {
        v58 = [MEMORY[0x277CBEAA8] now];
        if (v51)
        {
          v59 = [*(a1 + 40) canStartLQMAnalysisforTrigger:@"Match Start" andReason:v57 onWindow:v25];

          v58 = v59;
        }

        v60 = *(a1 + 40);
        v61 = [[WiFiUsageLQMWindowAnalysisDataTriggered alloc] initWithRollingWindow:v25 andSubReason:v57 andContext:*(v60 + 13) | (*(v60 + 15) << 8) | (*(v60 + 16) << 16) andTimestamp:v58 onQueue:*(v60 + 144)];
        [*(a1 + 40) startLQMAnalysis:v61];
      }

      [v25 cleanUpStashedMedians];
      if (v52)
      {
        [v25 clearOngoingCriteriaDates];
      }
    }

    if ([WiFiUsageLQMWindowAnalysis isInCallAnalysisDue:*(*(a1 + 40) + 248)])
    {
      v62 = [*(*(a1 + 40) + 120) objectForKey:*(a1 + 32)];
      v63 = [*(a1 + 40) canStartLQMAnalysisforTrigger:@"InCall" andReason:@"in Call" onWindow:v62];
      if (v63)
      {
        v64 = *(a1 + 40);
        v65 = v64[13];
        v66 = v64[15];
        v67 = v64[16];
        v68 = [WiFiUsageLQMWindowAnalysisInCall alloc];
        v69 = [*(*(a1 + 40) + 120) objectForKey:*(a1 + 32)];
        [*(*(a1 + 40) + 240) timeIntervalSinceNow];
        v71 = [(WiFiUsageLQMWindowAnalysisInCall *)v68 initWithRollingWindow:v69 andCallStatus:@"in Call" andCallDuration:v65 | (v66 << 8) | (v67 << 16) andContext:v63 andTimestamp:*(*(a1 + 40) + 144) onQueue:-v70];

        [*(a1 + 40) startLQMAnalysis:v71];
      }
    }

    return;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 32);
    *buf = 136315394;
    v83 = "[WiFiUsageMonitor updateLinkQuality:forInterface:supportsLinkRecommendations:]_block_invoke";
    v84 = 2112;
    v85 = v11;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - Invalid interfaceName: %@", buf, 0x16u);
  }
}

- (void)updateBeaconInfo:(id)info andParsedIE:(id)e forInterface:(id)interface
{
  v25 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  eCopy = e;
  interfaceCopy = interface;
  if (interfaceCopy)
  {
    v11 = [infoCopy copy];
    v12 = [eCopy copy];
    internalQueue = self->_internalQueue;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __62__WiFiUsageMonitor_updateBeaconInfo_andParsedIE_forInterface___block_invoke;
    v16[3] = &unk_2789C6D10;
    v17 = infoCopy;
    selfCopy = self;
    v19 = v11;
    v20 = v12;
    v14 = v12;
    v15 = v11;
    dispatch_async(internalQueue, v16);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v22 = "[WiFiUsageMonitor updateBeaconInfo:andParsedIE:forInterface:]";
    v23 = 2112;
    v24 = 0;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - Invalid interfaceName: %@", buf, 0x16u);
  }
}

void __62__WiFiUsageMonitor_updateBeaconInfo_andParsedIE_forInterface___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [WiFiUsageAccessPointProfile profileFromBeaconData:*(a1 + 48) andParsedIE:*(a1 + 56)];
    [*(a1 + 40) setLastApProfile:v2];
  }
}

- (void)updateWPSInfo:(id)info
{
  infoCopy = info;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__WiFiUsageMonitor_updateWPSInfo___block_invoke;
  block[3] = &unk_2789C6630;
  v8 = infoCopy;
  v6 = infoCopy;
  dispatch_async(internalQueue, block);
}

- (BOOL)submitBeaconInfoToCAForInterface:(id)interface
{
  v18 = *MEMORY[0x277D85DE8];
  interfaceCopy = interface;
  if (interfaceCopy)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = [(NSMutableDictionary *)self->_usageSessions valueForKey:interfaceCopy, 0];
    networkDetails = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (networkDetails)
    {
      v7 = *v14;
      while (2)
      {
        for (i = 0; i != networkDetails; i = i + 1)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v13 + 1) + 8 * i);
          if ([v9 isSessionActive] && objc_msgSend(v9, "type") == 4)
          {
            networkDetails = [v9 networkDetails];
            connectedBss = [networkDetails connectedBss];
            bssid = [connectedBss bssid];

            [WiFiUsageAccessPointProfile submitToCAForBSSID:bssid];
            LOBYTE(networkDetails) = 1;
            goto LABEL_16;
          }
        }

        networkDetails = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (networkDetails)
        {
          continue;
        }

        break;
      }
    }

LABEL_16:
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [WiFiUsageMonitor submitBeaconInfoToCAForInterface:];
    }

    LOBYTE(networkDetails) = 0;
  }

  return networkDetails;
}

- (void)setPowerBudget:(int64_t)budget andThermalIndex:(int64_t)index forInterface:(id)interface
{
  interfaceCopy = interface;
  internalQueue = self->_internalQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __64__WiFiUsageMonitor_setPowerBudget_andThermalIndex_forInterface___block_invoke;
  v11[3] = &unk_2789C6D38;
  v12 = interfaceCopy;
  selfCopy = self;
  budgetCopy = budget;
  indexCopy = index;
  v10 = interfaceCopy;
  dispatch_async(internalQueue, v11);
}

void __64__WiFiUsageMonitor_setPowerBudget_andThermalIndex_forInterface___block_invoke(void *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  if (a1[4])
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v2 = [*(a1[5] + 104) valueForKey:0];
    v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v11;
      do
      {
        v6 = 0;
        do
        {
          if (*v11 != v5)
          {
            objc_enumerationMutation(v2);
          }

          [*(*(&v10 + 1) + 8 * v6++) powerBudgetDidChange:a1[6] andThermalIndex:a1[7]];
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v4);
    }

    if (*(a1[5] + 33) == 1)
    {
      v7 = [MEMORY[0x277CCAB98] defaultCenter];
      v8 = [MEMORY[0x277CCAB88] notificationWithName:@"SetPowerBudgetAndThermalIndex" object:0];
      [v7 postNotification:v8];
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v9 = a1[4];
    *buf = 136315394;
    v16 = "[WiFiUsageMonitor setPowerBudget:andThermalIndex:forInterface:]_block_invoke";
    v17 = 2112;
    v18 = v9;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - Invalid interfaceName: %@", buf, 0x16u);
  }
}

- (void)setBluetoothState:(BOOL)state connectedDeviceCount:(unint64_t)count inA2dp:(BOOL)a2dp inSco:(BOOL)sco inUniAoS:(BOOL)s inBiAoS:(BOOL)aoS btAudioBand:(BOOL)band
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __101__WiFiUsageMonitor_setBluetoothState_connectedDeviceCount_inA2dp_inSco_inUniAoS_inBiAoS_btAudioBand___block_invoke;
  block[3] = &unk_2789C6D60;
  a2dpCopy = a2dp;
  scoCopy = sco;
  block[4] = self;
  block[5] = count;
  sCopy = s;
  aoSCopy = aoS;
  bandCopy = band;
  stateCopy = state;
  dispatch_async(internalQueue, block);
}

void __101__WiFiUsageMonitor_setBluetoothState_connectedDeviceCount_inA2dp_inSco_inUniAoS_inBiAoS_btAudioBand___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  if (__PAIR64__(*(v2 + 16), *(v2 + 15)) != __PAIR64__(*(a1 + 49), v3) || *(v2 + 56) != *(a1 + 40) || *(v2 + 17) != *(a1 + 50) || *(v2 + 18) != *(a1 + 51) || *(v2 + 19) != *(a1 + 52))
  {
    *(v2 + 15) = v3;
    v4 = *(a1 + 40);
    *(*(a1 + 32) + 16) = *(a1 + 49);
    *(*(a1 + 32) + 56) = v4;
    *(*(a1 + 32) + 17) = *(a1 + 50);
    *(*(a1 + 32) + 18) = *(a1 + 51);
    *(*(a1 + 32) + 19) = *(a1 + 52);
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v5 = [*(*(a1 + 32) + 104) allValues];
    v6 = [v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v24;
      do
      {
        v9 = 0;
        do
        {
          if (*v24 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v23 + 1) + 8 * v9);
          v19 = 0u;
          v20 = 0u;
          v21 = 0u;
          v22 = 0u;
          v11 = v10;
          v12 = [v11 countByEnumeratingWithState:&v19 objects:v27 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v20;
            do
            {
              v15 = 0;
              do
              {
                if (*v20 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                LOBYTE(v18) = *(a1 + 52);
                [*(*(&v19 + 1) + 8 * v15++) bluetoothStateDidChange:*(a1 + 53) connectedDeviceCount:*(a1 + 40) inA2dp:*(a1 + 48) inSco:*(a1 + 49) inUniAoS:*(a1 + 50) inBiAoS:*(a1 + 51) btAudioBand:v18];
              }

              while (v13 != v15);
              v13 = [v11 countByEnumeratingWithState:&v19 objects:v27 count:16];
            }

            while (v13);
          }

          ++v9;
        }

        while (v9 != v7);
        v7 = [v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v7);
    }

    v2 = *(a1 + 32);
  }

  if (*(v2 + 33) == 1)
  {
    v16 = [MEMORY[0x277CCAB98] defaultCenter];
    v17 = [MEMORY[0x277CCAB88] notificationWithName:@"SetBluetoothStateAndConnectedDeviceCountAndInA2dpAndInSco" object:0];
    [v16 postNotification:v17];
  }
}

- (void)setSARState:(BOOL)state builtInReceiverOn:(BOOL)on
{
  internalQueue = self->_internalQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __50__WiFiUsageMonitor_setSARState_builtInReceiverOn___block_invoke;
  v5[3] = &unk_2789C6C48;
  stateCopy = state;
  onCopy = on;
  v5[4] = self;
  dispatch_async(internalQueue, v5);
}

uint64_t __50__WiFiUsageMonitor_setSARState_builtInReceiverOn___block_invoke(uint64_t result)
{
  v1 = 3;
  if (*(result + 41))
  {
    v1 = 1;
  }

  v2 = 4;
  if (*(result + 41))
  {
    v2 = 2;
  }

  if (*(result + 40))
  {
    v3 = v1;
  }

  else
  {
    v3 = v2;
  }

  *(*(result + 32) + 496) = v3;
  return result;
}

- (void)setAwdlState:(BOOL)state inMode:(int64_t)mode
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__WiFiUsageMonitor_setAwdlState_inMode___block_invoke;
  block[3] = &unk_2789C6D88;
  stateCopy = state;
  block[4] = self;
  block[5] = mode;
  dispatch_async(internalQueue, block);
}

void __40__WiFiUsageMonitor_setAwdlState_inMode___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  if (v2[20] != v3)
  {
    v2[20] = v3;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v4 = [*(*(a1 + 32) + 104) allValues];
    v5 = [v4 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v23;
      do
      {
        v8 = 0;
        do
        {
          if (*v23 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v22 + 1) + 8 * v8);
          v18 = 0u;
          v19 = 0u;
          v20 = 0u;
          v21 = 0u;
          v10 = v9;
          v11 = [v10 countByEnumeratingWithState:&v18 objects:v26 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v19;
            do
            {
              v14 = 0;
              do
              {
                if (*v19 != v13)
                {
                  objc_enumerationMutation(v10);
                }

                [*(*(&v18 + 1) + 8 * v14++) awdlStateDidChange:*(a1 + 48) inMode:*(a1 + 40)];
              }

              while (v12 != v14);
              v12 = [v10 countByEnumeratingWithState:&v18 objects:v26 count:16];
            }

            while (v12);
          }

          ++v8;
        }

        while (v8 != v6);
        v6 = [v4 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v6);
    }

    v2 = *(a1 + 32);
    if (v2[20] == 1)
    {
      v15 = [v2 rangingSession];
      [v15 rangingLinkUp];

      v2 = *(a1 + 32);
    }
  }

  if (v2[33] == 1)
  {
    v16 = [MEMORY[0x277CCAB98] defaultCenter];
    v17 = [MEMORY[0x277CCAB88] notificationWithName:@"setAwdlState" object:0];
    [v16 postNotification:v17];
  }
}

- (void)setSoftApState:(BOOL)state requester:(id)requester status:(id)status changeReason:(id)reason channelNumber:(unint64_t)number countryCode:(unint64_t)code isHidden:(BOOL)hidden isInfraConnected:(BOOL)self0 isAwdlUp:(BOOL)self1 lowPowerModeDuration:(double)self2 compatibilityMode:(BOOL)self3 requestToUpLatency:(double)self4 idleTimeBeforeTeardownSec:(double)self5 idleTimeAfterLastClientDisconnectedSec:(double)self6
{
  requesterCopy = requester;
  statusCopy = status;
  reasonCopy = reason;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __249__WiFiUsageMonitor_setSoftApState_requester_status_changeReason_channelNumber_countryCode_isHidden_isInfraConnected_isAwdlUp_lowPowerModeDuration_compatibilityMode_requestToUpLatency_idleTimeBeforeTeardownSec_idleTimeAfterLastClientDisconnectedSec___block_invoke;
  block[3] = &unk_2789C6DB0;
  stateCopy = state;
  block[4] = self;
  v34 = requesterCopy;
  v35 = statusCopy;
  v36 = reasonCopy;
  numberCopy = number;
  codeCopy = code;
  hiddenCopy = hidden;
  connectedCopy = connected;
  upCopy = up;
  modeCopy = mode;
  durationCopy = duration;
  latencyCopy = latency;
  secCopy = sec;
  disconnectedSecCopy = disconnectedSec;
  v29 = reasonCopy;
  v30 = statusCopy;
  v31 = requesterCopy;
  dispatch_async(internalQueue, block);
}

void __249__WiFiUsageMonitor_setSoftApState_requester_status_changeReason_channelNumber_countryCode_isHidden_isInfraConnected_isAwdlUp_lowPowerModeDuration_compatibilityMode_requestToUpLatency_idleTimeBeforeTeardownSec_idleTimeAfterLastClientDisconnectedSec___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v2 = [*(*(a1 + 32) + 104) allValues];
  v3 = [v2 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v19;
    do
    {
      v6 = 0;
      do
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v18 + 1) + 8 * v6);
        v14 = 0u;
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        v8 = v7;
        v9 = [v8 countByEnumeratingWithState:&v14 objects:v22 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v15;
          do
          {
            v12 = 0;
            do
            {
              if (*v15 != v11)
              {
                objc_enumerationMutation(v8);
              }

              LODWORD(v13) = *(a1 + 113);
              [*(*(&v14 + 1) + 8 * v12++) softApStateDidChange:*(a1 + 112) requester:*(a1 + 40) status:*(a1 + 48) changeReason:*(a1 + 56) channelNumber:*(a1 + 64) countryCode:*(a1 + 72) isHidden:*(a1 + 80) isInfraConnected:*(a1 + 88) isAwdlUp:*(a1 + 96) lowPowerModeDuration:*(a1 + 104) compatibilityMode:v13 requestToUpLatency:? idleTimeBeforeTeardownSec:? idleTimeAfterLastClientDisconnectedSec:?];
            }

            while (v10 != v12);
            v10 = [v8 countByEnumeratingWithState:&v14 objects:v22 count:16];
          }

          while (v10);
        }

        ++v6;
      }

      while (v6 != v4);
      v4 = [v2 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v4);
  }
}

- (void)addSoftApClientEvent:(BOOL)event identifier:(id)identifier isAppleClient:(BOOL)client isInstantHotspot:(BOOL)hotspot isAutoHotspot:(BOOL)autoHotspot isHidden:(BOOL)hidden
{
  identifierCopy = identifier;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __106__WiFiUsageMonitor_addSoftApClientEvent_identifier_isAppleClient_isInstantHotspot_isAutoHotspot_isHidden___block_invoke;
  block[3] = &unk_2789C6DD8;
  eventCopy = event;
  block[4] = self;
  v18 = identifierCopy;
  clientCopy = client;
  hotspotCopy = hotspot;
  autoHotspotCopy = autoHotspot;
  hiddenCopy = hidden;
  v16 = identifierCopy;
  dispatch_async(internalQueue, block);
}

void __106__WiFiUsageMonitor_addSoftApClientEvent_identifier_isAppleClient_isInstantHotspot_isAutoHotspot_isHidden___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v2 = [*(*(a1 + 32) + 104) allValues];
  v3 = [v2 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v19;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v18 + 1) + 8 * i);
        v14 = 0u;
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        v8 = v7;
        v9 = [v8 countByEnumeratingWithState:&v14 objects:v22 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v15;
          do
          {
            for (j = 0; j != v10; ++j)
            {
              if (*v15 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v14 + 1) + 8 * j);
              if ([v13 type] == 6)
              {
                [v13 addSoftApClientEvent:*(a1 + 48) identifier:*(a1 + 40) isAppleClient:*(a1 + 49) isInstantHotspot:*(a1 + 50) isAutoHotspot:*(a1 + 51) isHidden:*(a1 + 52)];
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v14 objects:v22 count:16];
          }

          while (v10);
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v4);
  }
}

- (void)addSoftApCoexEvent:(unint64_t)event deniedUnii1ChannelMap:(unint64_t)map deniedUnii2aChannelMap:(unint64_t)channelMap deniedUnii2cChannelMap:(unint64_t)unii2cChannelMap deniedUnii3ChannelMap:(unint64_t)unii3ChannelMap
{
  internalQueue = self->_internalQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __129__WiFiUsageMonitor_addSoftApCoexEvent_deniedUnii1ChannelMap_deniedUnii2aChannelMap_deniedUnii2cChannelMap_deniedUnii3ChannelMap___block_invoke;
  v8[3] = &unk_2789C6E00;
  v8[4] = self;
  v8[5] = event;
  v8[6] = map;
  v8[7] = channelMap;
  v8[8] = unii2cChannelMap;
  v8[9] = unii3ChannelMap;
  dispatch_async(internalQueue, v8);
}

void __129__WiFiUsageMonitor_addSoftApCoexEvent_deniedUnii1ChannelMap_deniedUnii2aChannelMap_deniedUnii2cChannelMap_deniedUnii3ChannelMap___block_invoke(void *a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v2 = [*(a1[4] + 104) allValues];
  v3 = [v2 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v19;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v18 + 1) + 8 * i);
        v14 = 0u;
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        v8 = v7;
        v9 = [v8 countByEnumeratingWithState:&v14 objects:v22 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v15;
          do
          {
            for (j = 0; j != v10; ++j)
            {
              if (*v15 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v14 + 1) + 8 * j);
              if ([v13 type] == 6)
              {
                [v13 addSoftApCoexEvent:a1[5] deniedUnii1ChannelMap:a1[6] deniedUnii2aChannelMap:a1[7] deniedUnii2cChannelMap:a1[8] deniedUnii3ChannelMap:a1[9]];
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v14 objects:v22 count:16];
          }

          while (v10);
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v4);
  }
}

- (void)setRoamingState:(BOOL)state withReason:(unint64_t)reason asString:(id)string andStatus:(unint64_t)status asString:(id)asString andLatency:(unint64_t)latency andRoamData:(id)data andPingPongSequence:(id)self0 forInterface:(id)self1
{
  stringCopy = string;
  asStringCopy = asString;
  dataCopy = data;
  sequenceCopy = sequence;
  interfaceCopy = interface;
  queue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __131__WiFiUsageMonitor_setRoamingState_withReason_asString_andStatus_asString_andLatency_andRoamData_andPingPongSequence_forInterface___block_invoke;
  block[3] = &unk_2789C6E28;
  v29 = sequenceCopy;
  selfCopy = self;
  stateCopy = state;
  reasonCopy = reason;
  statusCopy = status;
  latencyCopy = latency;
  v31 = interfaceCopy;
  v32 = dataCopy;
  v33 = stringCopy;
  v34 = asStringCopy;
  v21 = asStringCopy;
  v22 = stringCopy;
  v23 = dataCopy;
  v24 = interfaceCopy;
  v25 = sequenceCopy;
  dispatch_async(queue, block);
}

void __131__WiFiUsageMonitor_setRoamingState_withReason_asString_andStatus_asString_andLatency_andRoamData_andPingPongSequence_forInterface___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = [[WiFiUsageSessionPingPongStats alloc] initWithPingPongSequence:*(a1 + 32)];
  }

  else
  {
    v2 = 0;
  }

  v3 = *(a1 + 40);
  v4 = *(a1 + 104);
  if (*(v3 + 21) == v4)
  {
    v5 = 0;
    goto LABEL_21;
  }

  *(v3 + 21) = v4;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [*(*(a1 + 40) + 104) valueForKey:*(a1 + 48)];
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (!v7)
  {
    v5 = 0;
LABEL_20:

    goto LABEL_21;
  }

  v8 = v7;
  v5 = 0;
  v9 = *v19;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v19 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v18 + 1) + 8 * i);
      [v11 roamingStateDidChange:*(a1 + 104) reason:*(a1 + 80) andStatus:*(a1 + 88) andLatency:*(a1 + 96) andRoamData:*(a1 + 56) andPingPongStats:v2];
      if ([v11 type] == 4)
      {
        v12 = [v11 currentBssSession];

        v5 = v12;
      }
    }

    v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  }

  while (v8);

  if ((v4 & 1) == 0)
  {
    v6 = [*(*(a1 + 40) + 120) objectForKey:*(a1 + 48)];
    v13 = [*(a1 + 40) canStartLQMAnalysisforTrigger:@"Roaming" andReason:*(a1 + 64) onWindow:v6];
    if (v13)
    {
      v14 = *(a1 + 40);
      v15 = [[WiFiUsageLQMWindowAnalysisRoaming alloc] initWithRollingWindow:v6 WithRoamingState:*(a1 + 104) andReasonString:*(a1 + 64) andStatus:*(a1 + 88) asString:*(a1 + 72) andLatency:*(a1 + 96) andRoamData:*(a1 + 56) andCurrentBSSSession:v5 andContext:*(v14 + 13) | (*(v14 + 15) << 8) | (*(v14 + 16) << 16) andPingPongStats:v2 andTimestamp:v13 onQueue:*(v14 + 144)];
      [*(a1 + 40) startLQMAnalysis:v15];
    }

    goto LABEL_20;
  }

LABEL_21:
  [v5 roamingStateDidChange:*(a1 + 104) reason:*(a1 + 80) andStatus:*(a1 + 88) andLatency:*(a1 + 96) andRoamData:*(a1 + 56) andPingPongNth:{-[WiFiUsageSessionPingPongStats pingPongNth](v2, "pingPongNth") != 0}];
  if (*(*(a1 + 40) + 33) == 1)
  {
    v16 = [MEMORY[0x277CCAB98] defaultCenter];
    v17 = [MEMORY[0x277CCAB88] notificationWithName:@"setRoamingState" object:0];
    [v16 postNotification:v17];
  }
}

- (void)setRoamingARCriteria:(id *)criteria forInterface:(id)interface
{
  interfaceCopy = interface;
  internalQueue = self->_internalQueue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __54__WiFiUsageMonitor_setRoamingARCriteria_forInterface___block_invoke;
  v10[3] = &unk_2789C6E50;
  v11 = interfaceCopy;
  selfCopy = self;
  v8 = *&criteria->var5;
  v13 = *&criteria->var0;
  v14 = v8;
  v9 = interfaceCopy;
  dispatch_async(internalQueue, v10);
}

void __54__WiFiUsageMonitor_setRoamingARCriteria_forInterface___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v2 = [*(*(a1 + 40) + 104) valueForKey:0];
    v3 = [v2 countByEnumeratingWithState:&v10 objects:v15 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v11;
      do
      {
        v6 = 0;
        do
        {
          if (*v11 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v10 + 1) + 8 * v6);
          v8 = *(a1 + 64);
          *buf = *(a1 + 48);
          *&buf[16] = v8;
          [v7 roamingARConfigurationDidChange:buf];
          ++v6;
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v10 objects:v15 count:16];
      }

      while (v4);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    *buf = 136315394;
    *&buf[4] = "[WiFiUsageMonitor setRoamingARCriteria:forInterface:]_block_invoke";
    *&buf[12] = 2112;
    *&buf[14] = v9;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - Invalid interfaceName: %@", buf, 0x16u);
  }
}

- (void)setRoamingConfiguration:(int64_t)configuration withChannelList:(id)list forInterface:(id)interface
{
  listCopy = list;
  interfaceCopy = interface;
  internalQueue = self->_internalQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __73__WiFiUsageMonitor_setRoamingConfiguration_withChannelList_forInterface___block_invoke;
  v13[3] = &unk_2789C6A88;
  v14 = interfaceCopy;
  selfCopy = self;
  v16 = listCopy;
  configurationCopy = configuration;
  v11 = listCopy;
  v12 = interfaceCopy;
  dispatch_async(internalQueue, v13);
}

void __73__WiFiUsageMonitor_setRoamingConfiguration_withChannelList_forInterface___block_invoke(void *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  if (a1[4])
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v2 = [*(a1[5] + 104) valueForKey:0];
    v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v9;
      do
      {
        v6 = 0;
        do
        {
          if (*v9 != v5)
          {
            objc_enumerationMutation(v2);
          }

          [*(*(&v8 + 1) + 8 * v6++) roamingConfigurationDidChange:a1[7] withChannelList:a1[6]];
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v4);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7 = a1[4];
    *buf = 136315394;
    v14 = "[WiFiUsageMonitor setRoamingConfiguration:withChannelList:forInterface:]_block_invoke";
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - Invalid interfaceName: %@", buf, 0x16u);
  }
}

- (void)updateRoamCache:(id)cache forInterface:(id)interface
{
  interfaceCopy = interface;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__WiFiUsageMonitor_updateRoamCache_forInterface___block_invoke;
  block[3] = &unk_2789C6630;
  v9 = interfaceCopy;
  v7 = interfaceCopy;
  dispatch_async(internalQueue, block);
}

void __49__WiFiUsageMonitor_updateRoamCache_forInterface___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 32) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v2 = *(a1 + 32);
    v3 = 136315394;
    v4 = "[WiFiUsageMonitor updateRoamCache:forInterface:]_block_invoke";
    v5 = 2112;
    v6 = v2;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - Invalid interfaceName: %@", &v3, 0x16u);
  }
}

- (void)updateBeaconCache:(id)cache afterRoamAttempt:(id)attempt whileCurrentBSSID:(id)d forInterface:(id)interface
{
  cacheCopy = cache;
  attemptCopy = attempt;
  dCopy = d;
  interfaceCopy = interface;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __86__WiFiUsageMonitor_updateBeaconCache_afterRoamAttempt_whileCurrentBSSID_forInterface___block_invoke;
  block[3] = &unk_2789C6E78;
  v20 = interfaceCopy;
  v21 = attemptCopy;
  v22 = dCopy;
  v23 = cacheCopy;
  selfCopy = self;
  v15 = cacheCopy;
  v16 = dCopy;
  v17 = attemptCopy;
  v18 = interfaceCopy;
  dispatch_async(internalQueue, block);
}

void __86__WiFiUsageMonitor_updateBeaconCache_afterRoamAttempt_whileCurrentBSSID_forInterface___block_invoke(uint64_t a1)
{
  v134 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = (a1 + 40);
    v64 = [*(a1 + 40) objectForKey:@"ROAMEDEVENT_REASON"];
    v63 = [*v2 objectForKey:@"ROAMEDEVENT_STATUS"];
    v68 = [*v2 objectForKey:@"ROAMEDEVENT_ORIGIN_CHANNEL_FLAGS"];
    v67 = [*v2 objectForKey:@"ROAMEDEVENT_ORIGIN_CHANNEL"];
    v66 = [*v2 objectForKey:@"ROAMEDEVENT_TARGET_CHANNEL_FLAGS"];
    v65 = [*v2 objectForKey:@"ROAMEDEVENT_TARGET_CHANNEL"];
    v3 = [WiFiUsagePrivacyFilter bandFromFlags:v68 OrChannel:v67];
    v4 = [WiFiUsagePrivacyFilter bandFromFlags:v66 OrChannel:v65];
    v5 = MEMORY[0x277CCACA8];
    v6 = [WiFiUsagePrivacyFilter bandAsString:v3];
    v7 = [WiFiUsagePrivacyFilter bandAsString:v4];
    v62 = [v5 stringWithFormat:@"%@GHz->%@GHz", v6, v7];

    v60 = [v63 intValue] & 0x1FF;
    v8 = [v64 unsignedIntegerValue];
    if (v8 != 3766619137)
    {
      v14 = v8;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v114 = "[WiFiUsageMonitor updateBeaconCache:afterRoamAttempt:whileCurrentBSSID:forInterface:]_block_invoke";
        v115 = 2048;
        v116 = v14;
        v10 = MEMORY[0x277D86220];
        v11 = "%s - ignoring beaconCache for CandidatesStats (reason(%lu) is not LowRssi)";
        v12 = 22;
        goto LABEL_10;
      }

LABEL_79:

      return;
    }

    if ([*(a1 + 48) length] <= 5)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(a1 + 48);
        *buf = 136315650;
        v114 = "[WiFiUsageMonitor updateBeaconCache:afterRoamAttempt:whileCurrentBSSID:forInterface:]_block_invoke";
        v115 = 2160;
        v116 = 1752392040;
        v117 = 2112;
        v118 = v9;
        v10 = MEMORY[0x277D86220];
        v11 = "%s - currentBSSID (%{mask.hash}@) too short";
        v12 = 32;
LABEL_10:
        _os_log_impl(&dword_2332D7000, v10, OS_LOG_TYPE_DEFAULT, v11, buf, v12);
        goto LABEL_79;
      }

      goto LABEL_79;
    }

    v111 = 0;
    v110 = 0;
    [*(a1 + 48) getBytes:&v110 length:6];
    v82 = [MEMORY[0x277CCACA8] stringWithFormat:@"%x:%02x:%02x:%02x:%02x:%02x", v110, BYTE1(v110), BYTE2(v110), HIBYTE(v110), v111, HIBYTE(v111)];
    v108 = 0u;
    v109 = 0u;
    v106 = 0u;
    v107 = 0u;
    v15 = *(a1 + 56);
    v16 = [v15 countByEnumeratingWithState:&v106 objects:v133 count:16];
    if (v16)
    {
      v80 = 0;
      v17 = *v107;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v107 != v17)
          {
            objc_enumerationMutation(v15);
          }

          v19 = *(*(&v106 + 1) + 8 * i);
          v20 = [v19 objectForKey:@"BSSID"];
          v21 = [v19 objectForKey:@"SSID"];
          if ([v20 isEqualToString:v82])
          {
            v22 = v21;

            v80 = v22;
          }
        }

        v16 = [v15 countByEnumeratingWithState:&v106 objects:v133 count:16];
      }

      while (v16);

      if (v80)
      {
        v77 = objc_opt_new();
        v104 = 0u;
        v105 = 0u;
        v102 = 0u;
        v103 = 0u;
        v23 = *(a1 + 56);
        v24 = [v23 countByEnumeratingWithState:&v102 objects:v132 count:16];
        if (v24)
        {
          v25 = *v103;
          do
          {
            for (j = 0; j != v24; ++j)
            {
              if (*v103 != v25)
              {
                objc_enumerationMutation(v23);
              }

              v27 = *(*(&v102 + 1) + 8 * j);
              v28 = [v27 objectForKey:@"AGE"];
              v29 = [v27 objectForKey:@"SSID"];
              if ([v28 unsignedIntegerValue] <= 0x1388 && objc_msgSend(v29, "isEqualToData:", v80))
              {
                [v77 addObject:v27];
              }
            }

            v24 = [v23 countByEnumeratingWithState:&v102 objects:v132 count:16];
          }

          while (v24);
        }

        v79 = [v77 count];
        v81 = objc_opt_new();
        v69 = v62;
        v98 = 0u;
        v99 = 0u;
        v100 = 0u;
        v101 = 0u;
        obj = v77;
        v30 = [obj countByEnumeratingWithState:&v98 objects:v131 count:16];
        if (v30)
        {
          v76 = -95;
          v75 = 3;
          v71 = *v99;
          v78 = -95;
          v74 = -95;
          v72 = 3;
          v73 = 3;
          do
          {
            for (k = 0; k != v30; ++k)
            {
              if (*v99 != v71)
              {
                objc_enumerationMutation(obj);
              }

              v32 = *(*(&v98 + 1) + 8 * k);
              v33 = [v32 objectForKey:@"BSSID"];
              v34 = [v32 objectForKey:@"CHANNEL_FLAGS"];
              v35 = [v32 objectForKey:@"CHANNEL"];
              v36 = [v32 objectForKey:@"RSSI"];
              v37 = [WiFiUsagePrivacyFilter bandFromFlags:v34 OrChannel:v35];
              v38 = [MEMORY[0x277CCABB0] numberWithInteger:v37];
              v39 = [v81 objectForKeyedSubscript:v38];
              v40 = v39 == 0;

              if (v40)
              {
                v41 = objc_opt_new();
                [v81 setObject:v41 forKeyedSubscript:v38];
              }

              v42 = [v81 objectForKeyedSubscript:v38];
              [v42 addObject:v33];

              if (v79)
              {
                if (v36 && [v36 integerValue] >= v78)
                {
                  v78 = [v36 integerValue];
                  v73 = v37;
                }

                if ([v33 isEqualToString:v82])
                {
                  v76 = [v36 integerValue];
                  v75 = v37;
                }

                else if (v36 && [v36 integerValue] >= v74)
                {
                  v74 = [v36 integerValue];
                  v72 = v37;
                }

                v43 = MEMORY[0x277D86220];
                v44 = MEMORY[0x277D86220];
                if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
                {
                  v45 = [WiFiUsagePrivacyFilter bandAsString:v37];
                  v46 = [v33 isEqualToString:v82];
                  *buf = 136316418;
                  v47 = &stru_28487EF20;
                  if (v46)
                  {
                    v47 = @"(current BSSID)";
                  }

                  v114 = "[WiFiUsageMonitor updateBeaconCache:afterRoamAttempt:whileCurrentBSSID:forInterface:]_block_invoke";
                  v115 = 2160;
                  v116 = 1752392040;
                  v117 = 2112;
                  v118 = v33;
                  v119 = 2112;
                  v120 = v45;
                  v121 = 2112;
                  v122 = v36;
                  v123 = 2112;
                  v124 = v47;
                  _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - bssid:%{mask.hash}@ %@Ghz rssi:%@dBm %@", buf, 0x3Eu);
                }
              }
            }

            v30 = [obj countByEnumeratingWithState:&v98 objects:v131 count:16];
          }

          while (v30);
        }

        else
        {
          v76 = -95;
          v75 = 3;
          v78 = -95;
          v74 = -95;
          v72 = 3;
          v73 = 3;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v114 = "[WiFiUsageMonitor updateBeaconCache:afterRoamAttempt:whileCurrentBSSID:forInterface:]_block_invoke";
          v115 = 2112;
          v116 = v81;
          _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - roamCandidatesByBand:%@", buf, 0x16u);
        }

        if (v79)
        {
          v48 = MEMORY[0x277D86220];
          v49 = MEMORY[0x277D86220];
          if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
          {
            v50 = [WiFiUsagePrivacyFilter bandAsString:v73];
            v51 = [WiFiUsagePrivacyFilter bandAsString:v72];
            v52 = v51;
            v53 = @"NO";
            *buf = 136317186;
            v114 = "[WiFiUsageMonitor updateBeaconCache:afterRoamAttempt:whileCurrentBSSID:forInterface:]_block_invoke";
            v115 = 2048;
            v116 = v76;
            if (!v60)
            {
              v53 = @"YES";
            }

            v117 = 2048;
            v118 = v78;
            v119 = 2112;
            v120 = v50;
            v121 = 2048;
            v122 = v74;
            v123 = 2112;
            v124 = v51;
            v125 = 2048;
            v126 = v79;
            v127 = 2112;
            v128 = v69;
            v129 = 2112;
            v130 = v53;
            _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - \ncurrentBSSrssi:%lddBm strongestRSSI:%lddBm strongestRssiBand:%@ strongestRssiExcludingCurrent:%lddBm strongestRSSIbandExcludingCurrent:%@Ghz candidatesCount:%lu roamBandTransition:%@ roamSuccessful:%@", buf, 0x5Cu);
          }
        }

        v96 = 0u;
        v97 = 0u;
        v94 = 0u;
        v95 = 0u;
        v54 = [*(*(a1 + 64) + 104) valueForKey:*(a1 + 32)];
        v55 = [v54 countByEnumeratingWithState:&v94 objects:v112 count:16];
        v56 = v69;
        if (v55)
        {
          v57 = *v95;
          do
          {
            for (m = 0; m != v55; ++m)
            {
              if (*v95 != v57)
              {
                objc_enumerationMutation(v54);
              }

              v59 = *(*(&v94 + 1) + 8 * m);
              v83 = v76;
              v84 = v75;
              v85 = 0;
              v86 = v78;
              v87 = v74;
              v88 = v73;
              v89 = v72;
              v90 = v79;
              v91 = v81;
              v92 = v56;
              v93 = v60 == 0;
              if (v59)
              {
                [v59 roamCandidatesStatsDidUpdate:&v83];
              }

              else
              {

                v56 = v69;
              }
            }

            v55 = [v54 countByEnumeratingWithState:&v94 objects:v112 count:16];
          }

          while (v55);
        }

LABEL_78:
        goto LABEL_79;
      }
    }

    else
    {
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v114 = "[WiFiUsageMonitor updateBeaconCache:afterRoamAttempt:whileCurrentBSSID:forInterface:]_block_invoke";
      v115 = 2160;
      v116 = 1752392040;
      v117 = 2112;
      v118 = v82;
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - currentBSSID (%{mask.hash}@) not in beaconCache", buf, 0x20u);
    }

    goto LABEL_78;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(a1 + 32);
    *buf = 136315394;
    v114 = "[WiFiUsageMonitor updateBeaconCache:afterRoamAttempt:whileCurrentBSSID:forInterface:]_block_invoke";
    v115 = 2112;
    v116 = v13;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - Invalid interfaceName: %@", buf, 0x16u);
  }
}

- (void)updateBssPerChannelWith:(id)with into:(id)into and:(id)and withChannelInfoList:(id)list
{
  v45 = *MEMORY[0x277D85DE8];
  withCopy = with;
  intoCopy = into;
  andCopy = and;
  listCopy = list;
  v13 = [listCopy copy];
  lastChannelInfoList = self->_lastChannelInfoList;
  self->_lastChannelInfoList = v13;

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v15 = listCopy;
  v16 = [v15 countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v40;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v40 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = [WiFiUsageChannel channelWithChannelInfo:*(*(&v39 + 1) + 8 * i)];
        v21 = [intoCopy objectForKeyedSubscript:v20];

        if (!v21)
        {
          v22 = objc_opt_new();
          [intoCopy setObject:v22 forKeyedSubscript:v20];
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v39 objects:v44 count:16];
    }

    while (v17);
  }

  v33 = v15;

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v23 = withCopy;
  v24 = [v23 countByEnumeratingWithState:&v35 objects:v43 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v36;
    do
    {
      for (j = 0; j != v25; ++j)
      {
        if (*v36 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v35 + 1) + 8 * j);
        v29 = [WiFiUsageChannel channelWithBssDetails:v28, v33];
        v30 = [intoCopy objectForKeyedSubscript:v29];
        bssid = [v28 bssid];
        [v30 addObject:bssid];

        bssid2 = [v28 bssid];
        [andCopy addObject:bssid2];
      }

      v25 = [v23 countByEnumeratingWithState:&v35 objects:v43 count:16];
    }

    while (v25);
  }
}

- (void)submitScanResultWithNeighborBSS:(id)s withOtherBSS:(id)sS withChannelInfoList:(id)list
{
  v69 = *MEMORY[0x277D85DE8];
  sCopy = s;
  sSCopy = sS;
  listCopy = list;
  if (+[WiFiUsagePrivacyFilter canPerformActionWithSampleRate:](WiFiUsagePrivacyFilter, "canPerformActionWithSampleRate:", 1) && (sCopy && [sCopy count] || sSCopy && objc_msgSend(sSCopy, "count")))
  {
    v10 = objc_opt_new();
    v11 = objc_opt_new();
    v50 = sCopy;
    [(WiFiUsageMonitor *)self updateBssPerChannelWith:sCopy into:v10 and:v11 withChannelInfoList:listCopy];
    v49 = sSCopy;
    v52 = v10;
    v47 = v11;
    [(WiFiUsageMonitor *)self updateBssPerChannelWith:sSCopy into:v10 and:v11 withChannelInfoList:listCopy];
    v12 = objc_opt_new();
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v48 = listCopy;
    v13 = listCopy;
    v14 = [v13 countByEnumeratingWithState:&v62 objects:v68 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v63;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v63 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [WiFiUsageChannel channelWithChannelInfo:*(*(&v62 + 1) + 8 * i)];
          [v12 addObject:v18];
        }

        v15 = [v13 countByEnumeratingWithState:&v62 objects:v68 count:16];
      }

      while (v15);
    }

    v19 = objc_opt_new();
    v20 = [(NSDictionary *)self->_lastScanRequest objectForKeyedSubscript:@"SCAN_CHANNELS"];

    v21 = v12;
    if (v20)
    {
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v22 = [(NSDictionary *)self->_lastScanRequest objectForKeyedSubscript:@"SCAN_CHANNELS"];
      v23 = [v22 countByEnumeratingWithState:&v58 objects:v67 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v59;
        do
        {
          for (j = 0; j != v24; ++j)
          {
            if (*v59 != v25)
            {
              objc_enumerationMutation(v22);
            }

            v27 = [WiFiUsageChannel channelWithScanChannel:*(*(&v58 + 1) + 8 * j)];
            [v27 updateDFSInfoFromSupportedChannels:v12];
            [v19 addObject:v27];
          }

          v24 = [v22 countByEnumeratingWithState:&v58 objects:v67 count:16];
        }

        while (v24);
      }

      v21 = v19;
    }

    v28 = v21;

    v57 = 0u;
    v55 = 0u;
    v56 = 0u;
    v54 = 0u;
    obj = v28;
    v29 = [obj countByEnumeratingWithState:&v54 objects:v66 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v55;
      do
      {
        for (k = 0; k != v30; ++k)
        {
          if (*v55 != v31)
          {
            objc_enumerationMutation(obj);
          }

          v33 = *(*(&v54 + 1) + 8 * k);
          v34 = objc_opt_new();
          v35 = MEMORY[0x277CCABB0];
          v36 = [(NSDictionary *)self->_lastScanRequest objectForKeyedSubscript:@"SCAN_TYPE"];
          v37 = [v35 numberWithBool:{objc_msgSend(v36, "unsignedIntegerValue") == 1}];
          [v34 setObject:v37 forKeyedSubscript:@"isActive"];

          v38 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v33, "channel")}];
          [v34 setObject:v38 forKeyedSubscript:@"channel"];

          v39 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v33, "isDFSChannel")}];
          [v34 setObject:v39 forKeyedSubscript:@"isDFSChannel"];

          v40 = +[WiFiUsagePrivacyFilter bandAsString:](WiFiUsagePrivacyFilter, "bandAsString:", [v33 band]);
          [v34 setObject:v40 forKeyedSubscript:@"band"];

          v41 = MEMORY[0x277CCABB0];
          v42 = [v52 objectForKeyedSubscript:v33];
          v43 = [v41 numberWithUnsignedInteger:{objc_msgSend(v42, "count")}];
          [v34 setObject:v43 forKeyedSubscript:@"PerChannelUniqueBSSCount"];

          v44 = v34;
          AnalyticsSendEventLazy();
        }

        v30 = [obj countByEnumeratingWithState:&v54 objects:v66 count:16];
      }

      while (v30);
    }

    v45 = v47;
    v46 = obj;
    AnalyticsSendEventLazy();

    sSCopy = v49;
    sCopy = v50;
    listCopy = v48;
  }
}

id __85__WiFiUsageMonitor_submitScanResultWithNeighborBSS_withOtherBSS_withChannelInfoList___block_invoke_2(uint64_t a1)
{
  v7[3] = *MEMORY[0x277D85DE8];
  v7[0] = @"All";
  v6[0] = @"band";
  v6[1] = @"scannedChannels";
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "count")}];
  v7[1] = v2;
  v6[2] = @"PerChannelUniqueBSSCount";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 40), "count")}];
  v7[2] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:3];

  return v4;
}

- (void)setScanningState:(BOOL)state client:(unint64_t)client neighborBSS:(id)s otherBSS:(id)sS withChannelInfoList:(id)list withRequest:(id)request forInterface:(id)interface
{
  sCopy = s;
  sSCopy = sS;
  listCopy = list;
  requestCopy = request;
  interfaceCopy = interface;
  internalQueue = self->_internalQueue;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __110__WiFiUsageMonitor_setScanningState_client_neighborBSS_otherBSS_withChannelInfoList_withRequest_forInterface___block_invoke;
  v26[3] = &unk_2789C6EC8;
  v27 = interfaceCopy;
  selfCopy = self;
  stateCopy = state;
  v29 = sCopy;
  v30 = sSCopy;
  v32 = listCopy;
  clientCopy = client;
  v31 = requestCopy;
  v21 = listCopy;
  v22 = requestCopy;
  v23 = sSCopy;
  v24 = sCopy;
  v25 = interfaceCopy;
  dispatch_async(internalQueue, v26);
}

void __110__WiFiUsageMonitor_setScanningState_client_neighborBSS_otherBSS_withChannelInfoList_withRequest_forInterface___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = *(a1 + 40);
    v3 = *(a1 + 88);
    if (*(v2 + 22) != v3 || *(a1 + 48) || *(a1 + 56))
    {
      *(v2 + 22) = v3;
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v4 = [*(*(a1 + 40) + 104) valueForKey:{*(a1 + 32), 0}];
      v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v14;
        do
        {
          v8 = 0;
          do
          {
            if (*v14 != v7)
            {
              objc_enumerationMutation(v4);
            }

            [*(*(&v13 + 1) + 8 * v8++) scanningStateDidChange:*(a1 + 88) client:*(a1 + 80) neighborBSS:*(a1 + 48) otherBSS:*(a1 + 56)];
          }

          while (v6 != v8);
          v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
        }

        while (v6);
      }

      v2 = *(a1 + 40);
    }

    v9 = *(a1 + 64);
    if (v9)
    {
      objc_storeStrong((v2 + 272), v9);
      v2 = *(a1 + 40);
    }

    if (*(v2 + 33) == 1)
    {
      v10 = [MEMORY[0x277CCAB98] defaultCenter];
      v11 = [MEMORY[0x277CCAB88] notificationWithName:@"setScanningState" object:0];
      [v10 postNotification:v11];

      v2 = *(a1 + 40);
    }

    [v2 submitScanResultWithNeighborBSS:*(a1 + 48) withOtherBSS:*(a1 + 56) withChannelInfoList:*(a1 + 72)];
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 32);
    *buf = 136315394;
    v19 = "[WiFiUsageMonitor setScanningState:client:neighborBSS:otherBSS:withChannelInfoList:withRequest:forInterface:]_block_invoke";
    v20 = 2112;
    v21 = v12;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - Invalid interfaceName: %@", buf, 0x16u);
  }
}

- (void)setPowerState:(BOOL)state forInterface:(id)interface
{
  interfaceCopy = interface;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__WiFiUsageMonitor_setPowerState_forInterface___block_invoke;
  block[3] = &unk_2789C6C20;
  v10 = interfaceCopy;
  selfCopy = self;
  stateCopy = state;
  v8 = interfaceCopy;
  dispatch_async(internalQueue, block);
}

void __47__WiFiUsageMonitor_setPowerState_forInterface___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = *(a1 + 40);
    v3 = *(a1 + 48);
    if (*(v2 + 23) != v3)
    {
      *(v2 + 23) = v3;
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v4 = [*(*(a1 + 40) + 104) valueForKey:{*(a1 + 32), 0}];
      v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v13;
        do
        {
          v8 = 0;
          do
          {
            if (*v13 != v7)
            {
              objc_enumerationMutation(v4);
            }

            [*(*(&v12 + 1) + 8 * v8++) powerStateDidChange:*(a1 + 48)];
          }

          while (v6 != v8);
          v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
        }

        while (v6);
      }

      v2 = *(a1 + 40);
    }

    if (*(v2 + 33) == 1)
    {
      v9 = [MEMORY[0x277CCAB98] defaultCenter];
      v10 = [MEMORY[0x277CCAB88] notificationWithName:@"setPowerState" object:0];
      [v9 postNotification:v10];
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 32);
    *buf = 136315394;
    v18 = "[WiFiUsageMonitor setPowerState:forInterface:]_block_invoke";
    v19 = 2112;
    v20 = v11;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - Invalid interfaceName: %@", buf, 0x16u);
  }
}

- (void)setControlCenterState:(BOOL)state withKnownLocation:(BOOL)location forInterface:(id)interface
{
  interfaceCopy = interface;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__WiFiUsageMonitor_setControlCenterState_withKnownLocation_forInterface___block_invoke;
  block[3] = &unk_2789C6EF0;
  v12 = interfaceCopy;
  selfCopy = self;
  stateCopy = state;
  locationCopy = location;
  v10 = interfaceCopy;
  dispatch_async(internalQueue, block);
}

void __73__WiFiUsageMonitor_setControlCenterState_withKnownLocation_forInterface___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = *(a1 + 40);
    v3 = *(a1 + 48);
    if (*(v2 + 24) != v3)
    {
      *(v2 + 24) = v3;
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v4 = [*(*(a1 + 40) + 104) valueForKey:{*(a1 + 32), 0}];
      v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v13;
        do
        {
          v8 = 0;
          do
          {
            if (*v13 != v7)
            {
              objc_enumerationMutation(v4);
            }

            [*(*(&v12 + 1) + 8 * v8++) controlCenterStateDidChange:*(a1 + 48) withKnownLocation:*(a1 + 49)];
          }

          while (v6 != v8);
          v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
        }

        while (v6);
      }

      v2 = *(a1 + 40);
    }

    if (*(v2 + 33) == 1)
    {
      v9 = [MEMORY[0x277CCAB98] defaultCenter];
      v10 = [MEMORY[0x277CCAB88] notificationWithName:@"setControlCenterState" object:0];
      [v9 postNotification:v10];
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 32);
    *buf = 136315394;
    v18 = "[WiFiUsageMonitor setControlCenterState:withKnownLocation:forInterface:]_block_invoke";
    v19 = 2112;
    v20 = v11;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - Invalid interfaceName: %@", buf, 0x16u);
  }
}

- (void)setCellularDataStatus:(id)status inAirplaneMode:(BOOL)mode
{
  statusCopy = status;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__WiFiUsageMonitor_setCellularDataStatus_inAirplaneMode___block_invoke;
  block[3] = &unk_2789C6C20;
  v10 = statusCopy;
  selfCopy = self;
  modeCopy = mode;
  v8 = statusCopy;
  dispatch_async(internalQueue, block);
}

void *__57__WiFiUsageMonitor_setCellularDataStatus_inAirplaneMode___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  result = [*(a1 + 32) isEqual:*(*(a1 + 40) + 96)];
  v3 = *(a1 + 40);
  if (!result || *(v3 + 25) != *(a1 + 48))
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v4 = [*(v3 + 104) allValues];
    v5 = [v4 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v20;
      do
      {
        v8 = 0;
        do
        {
          if (*v20 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v19 + 1) + 8 * v8);
          v15 = 0u;
          v16 = 0u;
          v17 = 0u;
          v18 = 0u;
          v10 = v9;
          v11 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v16;
            do
            {
              v14 = 0;
              do
              {
                if (*v16 != v13)
                {
                  objc_enumerationMutation(v10);
                }

                [*(*(&v15 + 1) + 8 * v14++) cellularDataStatusDidChange:*(a1 + 32) inAirplaneMode:*(a1 + 48)];
              }

              while (v12 != v14);
              v12 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
            }

            while (v12);
          }

          ++v8;
        }

        while (v8 != v6);
        v6 = [v4 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v6);
    }

    [*(a1 + 40) setCurrentCellularStatus:*(a1 + 32)];
    return [*(a1 + 40) setAirplaneModeEnabled:*(a1 + 48)];
  }

  return result;
}

- (void)setCellularFallbackState:(BOOL)state forInterface:(id)interface
{
  interfaceCopy = interface;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__WiFiUsageMonitor_setCellularFallbackState_forInterface___block_invoke;
  block[3] = &unk_2789C6C20;
  v10 = interfaceCopy;
  selfCopy = self;
  stateCopy = state;
  v8 = interfaceCopy;
  dispatch_async(internalQueue, block);
}

void __58__WiFiUsageMonitor_setCellularFallbackState_forInterface___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = *(a1 + 40);
    v3 = *(a1 + 48);
    if (*(v2 + 26) != v3)
    {
      *(v2 + 26) = v3;
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v4 = [*(*(a1 + 40) + 104) valueForKey:{*(a1 + 32), 0}];
      v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v13;
        do
        {
          v8 = 0;
          do
          {
            if (*v13 != v7)
            {
              objc_enumerationMutation(v4);
            }

            [*(*(&v12 + 1) + 8 * v8++) cellularFallbackStateDidChange:*(a1 + 48)];
          }

          while (v6 != v8);
          v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
        }

        while (v6);
      }

      v2 = *(a1 + 40);
      if (*(v2 + 280))
      {
        [v2 pushRNFEventToHUD:*(a1 + 48)];
        v2 = *(a1 + 40);
      }
    }

    if (*(v2 + 33) == 1)
    {
      v9 = [MEMORY[0x277CCAB98] defaultCenter];
      v10 = [MEMORY[0x277CCAB88] notificationWithName:@"CellularFallbackState" object:0];
      [v9 postNotification:v10];
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 32);
    *buf = 136315394;
    v18 = "[WiFiUsageMonitor setCellularFallbackState:forInterface:]_block_invoke";
    v19 = 2112;
    v20 = v11;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - Invalid interfaceName: %@", buf, 0x16u);
  }
}

- (void)setCellularOutrankingState:(BOOL)state forInterface:(id)interface
{
  interfaceCopy = interface;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__WiFiUsageMonitor_setCellularOutrankingState_forInterface___block_invoke;
  block[3] = &unk_2789C6C20;
  v10 = interfaceCopy;
  selfCopy = self;
  stateCopy = state;
  v8 = interfaceCopy;
  dispatch_async(internalQueue, block);
}

void __60__WiFiUsageMonitor_setCellularOutrankingState_forInterface___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = *(a1 + 40);
    v3 = *(a1 + 48);
    if (*(v2 + 27) != v3)
    {
      *(v2 + 27) = v3;
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v4 = [*(*(a1 + 40) + 104) valueForKey:{*(a1 + 32), 0}];
      v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v13;
        do
        {
          v8 = 0;
          do
          {
            if (*v13 != v7)
            {
              objc_enumerationMutation(v4);
            }

            [*(*(&v12 + 1) + 8 * v8++) cellularOutrankingStateDidChange:*(a1 + 48)];
          }

          while (v6 != v8);
          v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
        }

        while (v6);
      }

      v2 = *(a1 + 40);
    }

    if (*(v2 + 33) == 1)
    {
      v9 = [MEMORY[0x277CCAB98] defaultCenter];
      v10 = [MEMORY[0x277CCAB88] notificationWithName:@"CellularOutrankingState" object:0];
      [v9 postNotification:v10];
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 32);
    *buf = 136315394;
    v18 = "[WiFiUsageMonitor setCellularOutrankingState:forInterface:]_block_invoke";
    v19 = 2112;
    v20 = v11;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - Invalid interfaceName: %@", buf, 0x16u);
  }
}

- (void)notifyNetworkQualityResults:(id)results forInterface:(id)interface
{
  resultsCopy = results;
  interfaceCopy = interface;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__WiFiUsageMonitor_notifyNetworkQualityResults_forInterface___block_invoke;
  block[3] = &unk_2789C6C70;
  v12 = interfaceCopy;
  selfCopy = self;
  v14 = resultsCopy;
  v9 = resultsCopy;
  v10 = interfaceCopy;
  dispatch_async(internalQueue, block);
}

void __61__WiFiUsageMonitor_notifyNetworkQualityResults_forInterface___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = [*(*(a1 + 40) + 104) valueForKey:?];
    v3 = [v2 count];

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v4 = [*(*(a1 + 40) + 104) valueForKey:{*(a1 + 32), 0}];
    v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v19;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v19 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v18 + 1) + 8 * i);
          v10 = [*(a1 + 48) objectForKeyedSubscript:@"networkQualityResponsiveness"];
          [v9 setResponsivenessScore:v10];
        }

        v6 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v6);
    }

    if (v3)
    {
      v11 = [*(*(a1 + 40) + 120) objectForKey:*(a1 + 32)];
      v12 = [*(a1 + 40) canStartLQMAnalysisforTrigger:@"NetworkQuality" andReason:0 onWindow:v11];
      if (v12)
      {
        v13 = [*(a1 + 48) objectForKeyedSubscript:@"networkQualityResponsiveness"];
        v14 = +[WiFiUsageLQMTransformations getBinNetworkQualityResponsiveness:As:](WiFiUsageLQMTransformations, "getBinNetworkQualityResponsiveness:As:", [v13 unsignedLongValue], 0);
        [*(a1 + 48) setObject:v14 forKeyedSubscript:@"networkQualityResponsiveness"];

        v15 = *(a1 + 40);
        v16 = [[WiFiUsageLQMWindowAnalysisNetworkQuality alloc] initWithRollingWindow:v11 AndDictionary:*(a1 + 48) andContext:*(v15 + 13) | (*(v15 + 15) << 8) | (*(v15 + 16) << 16) andTimestamp:v12 onQueue:*(v15 + 144)];
        [*(a1 + 40) startLQMAnalysis:v16];
      }
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v17 = *(a1 + 32);
    *buf = 136315394;
    v24 = "[WiFiUsageMonitor notifyNetworkQualityResults:forInterface:]_block_invoke";
    v25 = 2112;
    v26 = v17;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - Invalid interfaceName: %@", buf, 0x16u);
  }
}

+ (id)LQMAnalysisReasonForFault:(unint64_t)fault
{
  v4 = fault - 1;
  if (fault - 1 <= 0x1A && ((0x707023Fu >> v4) & 1) != 0)
  {
    v5 = *off_2789C7270[v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)addFaultEvent:(unint64_t)event forInterface:(id)interface
{
  v6 = MEMORY[0x277CBEAA8];
  interfaceCopy = interface;
  date = [v6 date];
  [(WiFiUsageMonitor *)self addFaultEvent:event forInterface:interfaceCopy at:date];
}

- (void)addFaultEvent:(unint64_t)event forInterface:(id)interface event:(id)a5
{
  v8 = MEMORY[0x277CBEAA8];
  v9 = a5;
  interfaceCopy = interface;
  date = [v8 date];
  [(WiFiUsageMonitor *)self addFaultEvent:event forInterface:interfaceCopy at:date event:v9];
}

- (void)addFaultEvent:(unint64_t)event forInterface:(id)interface at:(id)at event:(id)a6
{
  interfaceCopy = interface;
  atCopy = at;
  v12 = a6;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__WiFiUsageMonitor_addFaultEvent_forInterface_at_event___block_invoke;
  block[3] = &unk_2789C6F18;
  v21 = v12;
  eventCopy = event;
  v18 = interfaceCopy;
  selfCopy = self;
  v20 = atCopy;
  v14 = v12;
  v15 = atCopy;
  v16 = interfaceCopy;
  dispatch_async(internalQueue, block);
}

void __56__WiFiUsageMonitor_addFaultEvent_forInterface_at_event___block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  if (_os_feature_enabled_impl() && objc_opt_class())
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 32);
    if (!v3 || ![v3 length])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v4 = *(a1 + 32);
        v5 = *(a1 + 64);
        *buf = 136315650;
        v35 = "[WiFiUsageMonitor addFaultEvent:forInterface:at:event:]_block_invoke";
        v36 = 2112;
        v37 = v4;
        v38 = 2048;
        v39 = v5;
        _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Invalid interfaceName %@ reason %lu", buf, 0x20u);
      }

      v2 = @"UnkownInterface";
    }

    v6 = *(*(a1 + 40) + 280);
    if (v6)
    {
      v7 = [v6 connectedBss];

      if (v7)
      {
        v8 = [*(*(a1 + 40) + 280) connectedBss];
        v7 = [v8 bssid];
      }
    }

    else
    {
      v7 = 0;
    }

    v9 = [MEMORY[0x277D7B940] sharedDeviceAnalyticsClient];
    v10 = *(a1 + 48);
    v11 = WiFiUsageFaultReasonStringMap(*(a1 + 64));
    [v9 faultEventOn:v7 at:v10 type:v11 interface:v2];
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v12 = [*(*(a1 + 40) + 104) valueForKey:{*(a1 + 32), 0}];
  v13 = [v12 countByEnumeratingWithState:&v29 objects:v33 count:16];
  v14 = v13;
  if (v13)
  {
    v15 = *v30;
    v16 = v13;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v30 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [*(*(&v29 + 1) + 8 * i) faultEventDetected:*(a1 + 64) event:*(a1 + 56)];
      }

      v16 = [v12 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v16);
  }

  if (*(*(a1 + 40) + 33) == 1)
  {
    v18 = [MEMORY[0x277CCAB98] defaultCenter];
    v19 = [MEMORY[0x277CCAB88] notificationWithName:@"AddFaultEvent" object:0];
    [v18 postNotification:v19];
  }

  if (v14)
  {
    v20 = [*(*(a1 + 40) + 120) objectForKey:*(a1 + 32)];
    v21 = [WiFiUsageMonitor LQMAnalysisReasonForFault:*(a1 + 64)];
    if (v21)
    {
      v22 = [*(a1 + 40) canStartLQMAnalysisforTrigger:v21 andReason:0 onWindow:v20];
      if (*(a1 + 64) == 18)
      {
        v23 = [MEMORY[0x277CBEAA8] now];
        v24 = v23;
        if (*(*(a1 + 40) + 128))
        {
          [v23 timeIntervalSinceDate:?];
          if (v25 <= 60.0)
          {
            objc_storeStrong((*(a1 + 40) + 128), v24);

            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              v26 = *(*(a1 + 40) + 128);
              *buf = 136315650;
              v35 = "[WiFiUsageMonitor addFaultEvent:forInterface:at:event:]_block_invoke";
              v36 = 2112;
              v37 = @"SlowWiFiDnsFailure";
              v38 = 2112;
              v39 = v26;
              _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Not starting LQM window analysis triggered by %@. Last triggered: %@", buf, 0x20u);
            }

            v22 = 0;
          }
        }
      }

      if (v22)
      {
        v27 = *(a1 + 40);
        v28 = [[WiFiUsageLQMWindowAnalysis alloc] initWithRollingWindow:v20 andReason:v21 andContext:*(v27 + 13) | (*(v27 + 15) << 8) | (*(v27 + 16) << 16) andTimestamp:v22 onQueue:*(v27 + 144)];
        [*(a1 + 40) startLQMAnalysis:v28];
      }
    }
  }
}

- (void)linkTestEvent:(id)event withReason:(id)reason forInterface:(id)interface
{
  eventCopy = event;
  reasonCopy = reason;
  interfaceCopy = interface;
  internalQueue = self->_internalQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __58__WiFiUsageMonitor_linkTestEvent_withReason_forInterface___block_invoke;
  v15[3] = &unk_2789C6D10;
  v15[4] = self;
  v16 = interfaceCopy;
  v17 = reasonCopy;
  v18 = eventCopy;
  v12 = eventCopy;
  v13 = reasonCopy;
  v14 = interfaceCopy;
  dispatch_async(internalQueue, v15);
}

uint64_t __58__WiFiUsageMonitor_linkTestEvent_withReason_forInterface___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 120) objectForKey:*(a1 + 40)];
  v3 = v2;
  if (v2)
  {
    v8 = v2;
    v4 = [*(a1 + 32) canStartLQMAnalysisforTrigger:@"LinkTest" andReason:*(a1 + 48) onWindow:v2];
    if (v4)
    {
      v5 = *(a1 + 32);
      v6 = [[WiFiUsageLQMWindowAnalysisLinkTest alloc] initWithRollingWindow:v8 andReason:*(a1 + 48) withWFMeasureResults:*(a1 + 56) andContext:*(v5 + 13) | (*(v5 + 15) << 8) | (*(v5 + 16) << 16) andTimestamp:v4 onQueue:*(v5 + 144)];
      [*(a1 + 32) startLQMAnalysis:v6];
    }

    v3 = v8;
  }

  return MEMORY[0x2821F96F8](v2, v3);
}

- (void)addTriggerDisconnectEvent:(id)event isAlerted:(BOOL)alerted isConfirmed:(BOOL)confirmed isExecuted:(BOOL)executed
{
  eventCopy = event;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__WiFiUsageMonitor_addTriggerDisconnectEvent_isAlerted_isConfirmed_isExecuted___block_invoke;
  block[3] = &unk_2789C6F40;
  v14 = eventCopy;
  selfCopy = self;
  alertedCopy = alerted;
  confirmedCopy = confirmed;
  executedCopy = executed;
  v12 = eventCopy;
  dispatch_async(internalQueue, block);
}

void __79__WiFiUsageMonitor_addTriggerDisconnectEvent_isAlerted_isConfirmed_isExecuted___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v2 = [*(*(a1 + 40) + 104) valueForKey:0];
    v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v12;
      do
      {
        v6 = 0;
        do
        {
          if (*v12 != v5)
          {
            objc_enumerationMutation(v2);
          }

          [*(*(&v11 + 1) + 8 * v6++) triggerDisconnectAlerted:*(a1 + 48) confirmed:*(a1 + 49) executed:*(a1 + 50)];
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v4);
    }

    v7 = *(a1 + 40);
    if (*(a1 + 49) == 1 && (v7[30] & 1) == 0)
    {
      [v7 setLastTDEvalConfirmed:1];
      v7 = *(a1 + 40);
    }

    if (*(a1 + 50) == 1 && (v7[31] & 1) == 0)
    {
      v7[31] = 1;
      [*(a1 + 40) setLastTDEvalStartedBy:0];
      v7 = *(a1 + 40);
    }

    if (v7[33] == 1)
    {
      v8 = [MEMORY[0x277CCAB98] defaultCenter];
      v9 = [MEMORY[0x277CCAB88] notificationWithName:@"AddTriggerDisconnectEvent" object:0];
      [v8 postNotification:v9];
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    *buf = 136315394;
    v17 = "[WiFiUsageMonitor addTriggerDisconnectEvent:isAlerted:isConfirmed:isExecuted:]_block_invoke";
    v18 = 2112;
    v19 = v10;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - Invalid interfaceName: %@", buf, 0x16u);
  }
}

- (void)setTdLogic_badRssiThreshold:(int64_t)threshold goodRssiThreshold:(int64_t)rssiThreshold
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__WiFiUsageMonitor_setTdLogic_badRssiThreshold_goodRssiThreshold___block_invoke;
  block[3] = &unk_2789C6F68;
  block[4] = self;
  block[5] = threshold;
  block[6] = rssiThreshold;
  dispatch_async(internalQueue, block);
}

void __66__WiFiUsageMonitor_setTdLogic_badRssiThreshold_goodRssiThreshold___block_invoke(void *a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  if (*(v2 + 64) != *(a1 + 5))
  {
    *(v2 + 64) = a1[5];
    *(a1[4] + 72) = a1[6];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v3 = [*(a1[4] + 104) allValues];
    v4 = [v3 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v19;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v19 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v18 + 1) + 8 * i);
          v14 = 0u;
          v15 = 0u;
          v16 = 0u;
          v17 = 0u;
          v9 = v8;
          v10 = [v9 countByEnumeratingWithState:&v14 objects:v22 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v15;
            do
            {
              for (j = 0; j != v11; ++j)
              {
                if (*v15 != v12)
                {
                  objc_enumerationMutation(v9);
                }

                [*(*(&v14 + 1) + 8 * j) tdLogic_badRssi:*(a1[4] + 64) goodRSSI:*(a1[4] + 72)];
              }

              v11 = [v9 countByEnumeratingWithState:&v14 objects:v22 count:16];
            }

            while (v11);
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v5);
    }
  }
}

- (void)setTdLogic_deferJoin:(unint64_t)join perBSSID:(unint64_t)d
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__WiFiUsageMonitor_setTdLogic_deferJoin_perBSSID___block_invoke;
  block[3] = &unk_2789C6F68;
  block[4] = self;
  block[5] = join;
  block[6] = d;
  dispatch_async(internalQueue, block);
}

void __50__WiFiUsageMonitor_setTdLogic_deferJoin_perBSSID___block_invoke(void *a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v2 = [*(a1[4] + 104) allValues];
  v3 = [v2 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v18;
    do
    {
      v6 = 0;
      do
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v17 + 1) + 8 * v6);
        v13 = 0u;
        v14 = 0u;
        v15 = 0u;
        v16 = 0u;
        v8 = v7;
        v9 = [v8 countByEnumeratingWithState:&v13 objects:v21 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v14;
          do
          {
            v12 = 0;
            do
            {
              if (*v14 != v11)
              {
                objc_enumerationMutation(v8);
              }

              [*(*(&v13 + 1) + 8 * v12++) tdLogic_deferJoin:a1[5] perBSSID:a1[6]];
            }

            while (v10 != v12);
            v10 = [v8 countByEnumeratingWithState:&v13 objects:v21 count:16];
          }

          while (v10);
        }

        ++v6;
      }

      while (v6 != v4);
      v4 = [v2 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v4);
  }
}

- (void)setTdLogic_alertedBy:(int)by forInterface:(id)interface
{
  interfaceCopy = interface;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__WiFiUsageMonitor_setTdLogic_alertedBy_forInterface___block_invoke;
  block[3] = &unk_2789C66B0;
  v10 = interfaceCopy;
  selfCopy = self;
  byCopy = by;
  v8 = interfaceCopy;
  dispatch_async(internalQueue, block);
}

void __54__WiFiUsageMonitor_setTdLogic_alertedBy_forInterface___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v2 = [*(*(a1 + 40) + 104) valueForKey:0];
    v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v14;
      do
      {
        v6 = 0;
        do
        {
          if (*v14 != v5)
          {
            objc_enumerationMutation(v2);
          }

          [*(*(&v13 + 1) + 8 * v6++) tdLogic_alertedBy:*(a1 + 48)];
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v4);
    }

    v7 = *(a1 + 40);
    if (!*(v7 + 80))
    {
      *(v7 + 30) = 0;
      *(*(a1 + 40) + 31) = 0;
      v8 = *(a1 + 40);
      v9 = *(v8 + 320);
      *(v8 + 320) = 0;

      v10 = *(a1 + 40);
      v11 = [WiFiUsagePrivacyFilter getLabelForTDTrigger:*(a1 + 48)];
      [v10 setLastTDEvalStartedBy:v11];
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 32);
    *buf = 136315394;
    v19 = "[WiFiUsageMonitor setTdLogic_alertedBy:forInterface:]_block_invoke";
    v20 = 2112;
    v21 = v12;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - Invalid interfaceName: %@", buf, 0x16u);
  }
}

- (void)setTdLogic_decisionState:(id *)state forInterface:(id)interface
{
  interfaceCopy = interface;
  internalQueue = self->_internalQueue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __58__WiFiUsageMonitor_setTdLogic_decisionState_forInterface___block_invoke;
  v10[3] = &unk_2789C6E50;
  v11 = interfaceCopy;
  selfCopy = self;
  v8 = *&state->var13;
  v13 = *&state->var0;
  v14 = v8;
  v9 = interfaceCopy;
  dispatch_async(internalQueue, v10);
}

void __58__WiFiUsageMonitor_setTdLogic_decisionState_forInterface___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v2 = [*(*(a1 + 40) + 104) valueForKey:0];
    v3 = [v2 countByEnumeratingWithState:&v13 objects:v18 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v14;
      do
      {
        v6 = 0;
        do
        {
          if (*v14 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v13 + 1) + 8 * v6);
          v8 = *(a1 + 64);
          *buf = *(a1 + 48);
          *&buf[16] = v8;
          [v7 tdLogic_decisionState:buf];
          ++v6;
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v13 objects:v18 count:16];
      }

      while (v4);
    }

    if (*(*(a1 + 40) + 30) == 1)
    {
      v9 = *(a1 + 64);
      *buf = *(a1 + 48);
      *&buf[16] = v9;
      v10 = [WiFiUsageMonitor getTDConfirmedEventStringForDisplay:buf];
      v11 = v10;
      if (v10)
      {
        if (([v10 isEqualToString:*(*(a1 + 40) + 320)] & 1) == 0)
        {
          [*(a1 + 40) setLastTDConfirmedDisplayStr:v11];
        }
      }
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 32);
    *buf = 136315394;
    *&buf[4] = "[WiFiUsageMonitor setTdLogic_decisionState:forInterface:]_block_invoke";
    *&buf[12] = 2112;
    *&buf[14] = v12;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - Invalid interfaceName: %@", buf, 0x16u);
  }
}

- (void)setTdLogic_fastTdState:(id *)state forInterface:(id)interface
{
  interfaceCopy = interface;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__WiFiUsageMonitor_setTdLogic_fastTdState_forInterface___block_invoke;
  block[3] = &unk_2789C6F90;
  v10 = interfaceCopy;
  selfCopy = self;
  v12 = *state;
  v8 = interfaceCopy;
  dispatch_async(internalQueue, block);
}

void __56__WiFiUsageMonitor_setTdLogic_fastTdState_forInterface___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v2 = [*(*(a1 + 40) + 104) valueForKey:0];
    v3 = [v2 countByEnumeratingWithState:&v9 objects:v14 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v10;
      do
      {
        v6 = 0;
        do
        {
          if (*v10 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v9 + 1) + 8 * v6);
          *buf = *(a1 + 48);
          *&buf[16] = *(a1 + 64);
          [v7 tdLogic_fastTdState:buf];
          ++v6;
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v9 objects:v14 count:16];
      }

      while (v4);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    *buf = 136315394;
    *&buf[4] = "[WiFiUsageMonitor setTdLogic_fastTdState:forInterface:]_block_invoke";
    *&buf[12] = 2112;
    *&buf[14] = v8;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - Invalid interfaceName: %@", buf, 0x16u);
  }
}

- (void)setTdLogic_execState:(id)state forInterface:(id)interface
{
  v4 = *&state.var8;
  v5 = *&state.var0;
  interfaceCopy = interface;
  internalQueue = self->_internalQueue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __54__WiFiUsageMonitor_setTdLogic_execState_forInterface___block_invoke;
  v10[3] = &unk_2789C6FB8;
  v11 = interfaceCopy;
  selfCopy = self;
  v13 = v5;
  v14 = v4;
  v15 = BYTE4(v4);
  v9 = interfaceCopy;
  dispatch_async(internalQueue, v10);
}

void __54__WiFiUsageMonitor_setTdLogic_execState_forInterface___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v3 = [*(*(a1 + 40) + 104) valueForKey:0];
    v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v10;
      do
      {
        v7 = 0;
        do
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v1 = v1 & 0xFFFFFF0000000000 | *(a1 + 56) | (*(a1 + 60) << 32);
          [*(*(&v9 + 1) + 8 * v7++) tdLogic_execState:{*(a1 + 48), v1}];
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v5);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    *buf = 136315394;
    v15 = "[WiFiUsageMonitor setTdLogic_execState:forInterface:]_block_invoke";
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - Invalid interfaceName: %@", buf, 0x16u);
  }
}

- (void)setTdLogic_end:(int)logic_end evalTime:(double)time rssi:(int64_t)rssi roamTime:(double)roamTime forInterface:(id)interface
{
  interfaceCopy = interface;
  internalQueue = self->_internalQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __71__WiFiUsageMonitor_setTdLogic_end_evalTime_rssi_roamTime_forInterface___block_invoke;
  v15[3] = &unk_2789C6FE0;
  v16 = interfaceCopy;
  selfCopy = self;
  logic_endCopy = logic_end;
  timeCopy = time;
  rssiCopy = rssi;
  roamTimeCopy = roamTime;
  v14 = interfaceCopy;
  dispatch_async(internalQueue, v15);
}

void __71__WiFiUsageMonitor_setTdLogic_end_evalTime_rssi_roamTime_forInterface___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v2 = [*(*(a1 + 40) + 104) valueForKey:0];
    v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v11;
      do
      {
        v6 = 0;
        do
        {
          if (*v11 != v5)
          {
            objc_enumerationMutation(v2);
          }

          [*(*(&v10 + 1) + 8 * v6++) tdLogic_end:*(a1 + 72) evalTime:*(a1 + 56) rssi:*(a1 + 48) roamTime:*(a1 + 64)];
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v4);
    }

    v7 = *(a1 + 40);
    if (v7[10])
    {
      [v7 setLastTDEvalStartedBy:0];
      v8 = [WiFiUsageMonitor getTDEvalCompleteEventStringForDisplay:*(a1 + 72)];
      if (v8)
      {
        [*(a1 + 40) setLastTDEvalStartedBy:0];
      }
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    *buf = 136315394;
    v16 = "[WiFiUsageMonitor setTdLogic_end:evalTime:rssi:roamTime:forInterface:]_block_invoke";
    v17 = 2112;
    v18 = v9;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - Invalid interfaceName: %@", buf, 0x16u);
  }
}

- (void)setTdLogic_waitForRoamTime:(double)time forInterface:(id)interface
{
  interfaceCopy = interface;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__WiFiUsageMonitor_setTdLogic_waitForRoamTime_forInterface___block_invoke;
  block[3] = &unk_2789C7008;
  v10 = interfaceCopy;
  selfCopy = self;
  timeCopy = time;
  v8 = interfaceCopy;
  dispatch_async(internalQueue, block);
}

void __60__WiFiUsageMonitor_setTdLogic_waitForRoamTime_forInterface___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v2 = [*(*(a1 + 40) + 104) valueForKey:0];
    v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v9;
      do
      {
        v6 = 0;
        do
        {
          if (*v9 != v5)
          {
            objc_enumerationMutation(v2);
          }

          [*(*(&v8 + 1) + 8 * v6++) tdLogic_waitForRoamTime:*(a1 + 48)];
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v4);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    *buf = 136315394;
    v14 = "[WiFiUsageMonitor setTdLogic_waitForRoamTime:forInterface:]_block_invoke";
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - Invalid interfaceName: %@", buf, 0x16u);
  }
}

- (void)updateWithMLORuntimeConfig:(id *)config forInterface:(id)interface
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  v5 = *&config->var1[2];
  v7 = *&config->var0;
  v8 = v5;
  block[2] = __60__WiFiUsageMonitor_updateWithMLORuntimeConfig_forInterface___block_invoke;
  block[3] = &unk_2789C7030;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

void __60__WiFiUsageMonitor_updateWithMLORuntimeConfig_forInterface___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [WiFiUsagePrivacyFilter bandAsString:*(a1 + 48)];
  v4 = [WiFiUsagePrivacyFilter bandAsString:*(a1 + 52)];
  v5 = [WiFiUsagePrivacyFilter bandAsString:*(a1 + 56)];
  v6 = [WiFiUsagePrivacyFilter bandAsString:*(a1 + 60)];
  v7 = v6;
  if (*(a1 + 64))
  {
    v8 = @"trafficSwitchEnabled";
  }

  else
  {
    v8 = &stru_28487EF20;
  }

  NSLog(&cfstr_SNumlinksLuPre.isa, "[WiFiUsageMonitor updateWithMLORuntimeConfig:forInterface:]_block_invoke", v2, v3, v4, v5, v6, v8);

  v9 = [*(*(a1 + 32) + 280) connectedBss];
  v10 = *(a1 + 56);
  v11[0] = *(a1 + 40);
  v11[1] = v10;
  [v9 updateMLORuntimeConfig:v11];
}

- (BOOL)submitAnalytics:(id)analytics
{
  v31 = *MEMORY[0x277D85DE8];
  analyticsCopy = analytics;
  v5 = analyticsCopy;
  if (self->_xctest_disableSampling || ([analyticsCopy sessionDuration], v6 >= 10.0))
  {
    v7 = 1;
  }

  else
  {
    v7 = !-[WiFiUsageMonitor shouldFilterSession:](self, "shouldFilterSession:", [v5 type]);
  }

  if (self->_xctest_disableSampling)
  {
    canSubmitToCA = 1;
  }

  else
  {
    canSubmitToCA = [v5 canSubmitToCA];
  }

  v9 = canSubmitToCA & v7;
  v10 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    v23 = v9;
    if (v10)
    {
      sessionName = [v5 sessionName];
      xctest_disableSampling = self->_xctest_disableSampling;
      if (xctest_disableSampling)
      {
        describeCAConfig = @"xctest_disableSampling";
      }

      else
      {
        describeCAConfig = [v5 describeCAConfig];
      }

      *buf = 136315650;
      v26 = "[WiFiUsageMonitor submitAnalytics:]";
      v27 = 2112;
      v28 = sessionName;
      v29 = 2112;
      v30 = describeCAConfig;
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: submitting analytics for session type %@ (%@)", buf, 0x20u);
      if (!xctest_disableSampling)
      {
      }
    }

    [v5 recordCAsubmission];
    metricName = [v5 metricName];
    v17 = v5;
    AnalyticsSendEventLazy();

    for (i = 0; i != 3; ++i)
    {
      v19 = MEMORY[0x277CCACA8];
      metricName2 = [v17 metricName];
      v21 = [v19 stringWithFormat:@"%@.durationByBand", metricName2];
      v24 = v17;
      AnalyticsSendEventLazy();
    }

    LOBYTE(v9) = v23;
  }

  else if (v10)
  {
    sessionName2 = [v5 sessionName];
    describeCAConfig2 = [v5 describeCAConfig];
    *buf = 136315650;
    v26 = "[WiFiUsageMonitor submitAnalytics:]";
    v27 = 2112;
    v28 = sessionName2;
    v29 = 2112;
    v30 = describeCAConfig2;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: NOT submitting analytics for session type %@ (%@)", buf, 0x20u);
  }

  return v9;
}

id __36__WiFiUsageMonitor_submitAnalytics___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v2 = [*(a1 + 32) metricName];
    v5 = 136315394;
    v6 = "[WiFiUsageMonitor submitAnalytics:]_block_invoke";
    v7 = 2112;
    v8 = v2;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: AnalyticsSendEventLazy callback for %@", &v5, 0x16u);
  }

  v3 = [*(a1 + 32) sessionSummary:1];

  return v3;
}

- (id)summaryForInterface:(id)interface
{
  v20 = *MEMORY[0x277D85DE8];
  interfaceCopy = interface;
  if (interfaceCopy)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    internalQueue = self->_internalQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __40__WiFiUsageMonitor_summaryForInterface___block_invoke;
    block[3] = &unk_2789C6C70;
    block[4] = self;
    v14 = interfaceCopy;
    v7 = dictionary;
    v15 = v7;
    dispatch_sync(internalQueue, block);
    if (self->_xctest)
    {
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      v9 = [MEMORY[0x277CCAB88] notificationWithName:@"summaryForInterface" object:0];
      [defaultCenter postNotification:v9];
    }

    v10 = v15;
    v11 = v7;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v17 = "[WiFiUsageMonitor summaryForInterface:]";
      v18 = 2112;
      v19 = 0;
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - Invalid interfaceName: %@", buf, 0x16u);
    }

    v11 = 0;
  }

  return v11;
}

void __40__WiFiUsageMonitor_summaryForInterface___block_invoke(void *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = [*(a1[4] + 104) valueForKey:{a1[5], 0}];
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      v6 = 0;
      do
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * v6);
        v8 = objc_autoreleasePoolPush();
        if ([v7 isSessionActive])
        {
          v9 = [v7 sessionSummary:0];
          v10 = a1[6];
          v11 = [v9 objectForKeyedSubscript:@"SessionName"];
          [v10 setValue:v9 forKey:v11];
        }

        objc_autoreleasePoolPop(v8);
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }
}

- (void)rangingSessionRequestedWithSelfPreferredChannel:(unint64_t)channel selfMainChannel:(unint64_t)mainChannel selfChannelFlags:(unint64_t)flags peerPreferredChannel:(unint64_t)preferredChannel peerMainChannel:(unint64_t)peerMainChannel peerChannelFlags:(unint64_t)channelFlags requester:(id)requester
{
  requesterCopy = requester;
  v17 = objc_alloc_init(WiFiUsageRangingSession);
  [(WiFiUsageRangingSession *)v17 rangingSessionRequestedWithSelfPreferredChannel:channel selfMainChannel:mainChannel selfChannelFlags:flags peerPreferredChannel:preferredChannel peerMainChannel:peerMainChannel peerChannelFlags:channelFlags requester:requesterCopy];

  [(WiFiUsageMonitor *)self setRangingSession:v17];
}

- (void)rangingStartedWithNumMeasurements:(unint64_t)measurements
{
  rangingSession = [(WiFiUsageMonitor *)self rangingSession];

  if (!rangingSession)
  {
    v6 = objc_alloc_init(WiFiUsageRangingSession);
    [(WiFiUsageMonitor *)self setRangingSession:v6];
  }

  rangingSession2 = [(WiFiUsageMonitor *)self rangingSession];
  [rangingSession2 rangingStartedWithNumMeasurements:measurements];
}

- (void)rangingCompletedWithValidCount:(unint64_t)count resultStatus:(int64_t)status resultFlags:(unint64_t)flags
{
  v22 = *MEMORY[0x277D85DE8];
  rangingSession = [(WiFiUsageMonitor *)self rangingSession];

  if (rangingSession)
  {
    rangingSession2 = [(WiFiUsageMonitor *)self rangingSession];
    [rangingSession2 rangingCompletedWithValidCount:count resultStatus:status resultFlags:flags];

    rangingSession3 = [(WiFiUsageMonitor *)self rangingSession];
    v12 = [rangingSession3 sessionSummary:1];
    v13 = [v12 copy];

    rangingSession4 = [(WiFiUsageMonitor *)self rangingSession];
    metricName = [rangingSession4 metricName];
    v16 = [metricName copy];

    if (v13 && v16)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v21 = "[WiFiUsageMonitor rangingCompletedWithValidCount:resultStatus:resultFlags:]";
        _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: submitting analytics for ranging session", buf, 0xCu);
      }

      v18[5] = MEMORY[0x277D85DD0];
      v18[6] = 3221225472;
      v18[7] = __76__WiFiUsageMonitor_rangingCompletedWithValidCount_resultStatus_resultFlags___block_invoke;
      v18[8] = &unk_2789C6A10;
      v19 = v13;
      AnalyticsSendEventLazy();
    }

    internalQueue = self->_internalQueue;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __76__WiFiUsageMonitor_rangingCompletedWithValidCount_resultStatus_resultFlags___block_invoke_2;
    v18[3] = &unk_2789C6630;
    v18[4] = self;
    dispatch_async(internalQueue, v18);
  }
}

void __76__WiFiUsageMonitor_rangingCompletedWithValidCount_resultStatus_resultFlags___block_invoke_2(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v1 = [*(*(a1 + 32) + 104) allValues];
  v2 = [v1 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v17;
    do
    {
      v5 = 0;
      do
      {
        if (*v17 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v16 + 1) + 8 * v5);
        v12 = 0u;
        v13 = 0u;
        v14 = 0u;
        v15 = 0u;
        v7 = v6;
        v8 = [v7 countByEnumeratingWithState:&v12 objects:v20 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v13;
          do
          {
            v11 = 0;
            do
            {
              if (*v13 != v10)
              {
                objc_enumerationMutation(v7);
              }

              [*(*(&v12 + 1) + 8 * v11++) rangingCompleted];
            }

            while (v9 != v11);
            v9 = [v7 countByEnumeratingWithState:&v12 objects:v20 count:16];
          }

          while (v9);
        }

        ++v5;
      }

      while (v5 != v3);
      v3 = [v1 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v3);
  }
}

- (void)addRangingRttSampleWithRssi:(int64_t)rssi rtt:(int64_t)rtt snr:(unint64_t)snr flags:(unint64_t)flags channel:(unint64_t)channel coreId:(unint64_t)id bitErrorRate:(unint64_t)rate phyError:(unint64_t)self0 andPeerSnr:(unint64_t)self1 andPeerCoreId:(unint64_t)self2 andPeerBitErrorRate:(unint64_t)self3 andPeerPhyError:(unint64_t)self4
{
  rangingSession = [(WiFiUsageMonitor *)self rangingSession];

  if (rangingSession)
  {
    rangingSession2 = [(WiFiUsageMonitor *)self rangingSession];
    [rangingSession2 addRangingRttSampleWithRssi:rssi rtt:rtt snr:snr flags:flags channel:channel coreId:id bitErrorRate:rate phyError:error andPeerSnr:peerSnr andPeerCoreId:coreId andPeerBitErrorRate:errorRate andPeerPhyError:phyError];
  }
}

- (id)lastRangingSessionMetric
{
  rangingSession = [(WiFiUsageMonitor *)self rangingSession];
  v3 = [rangingSession sessionSummary:1];

  return v3;
}

- (id)lastBssSessionInfoForInterface:(id)interface
{
  v22 = *MEMORY[0x277D85DE8];
  interfaceCopy = interface;
  if (interfaceCopy)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = [(NSMutableDictionary *)self->_usageSessions valueForKey:interfaceCopy, 0];
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v13 + 1) + 8 * i);
          if ([v10 type] == 4)
          {
            lastBssSessionInfo = [v10 lastBssSessionInfo];

            goto LABEL_15;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v19 = "[WiFiUsageMonitor lastBssSessionInfoForInterface:]";
    v20 = 2112;
    v21 = 0;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - Invalid interfaceName: %@", buf, 0x16u);
  }

  lastBssSessionInfo = 0;
LABEL_15:

  return lastBssSessionInfo;
}

- (void)enableXCTestNotifications
{
  if (!self->_xctest)
  {
    internalQueue = self->_internalQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __45__WiFiUsageMonitor_enableXCTestNotifications__block_invoke;
    block[3] = &unk_2789C6630;
    block[4] = self;
    dispatch_async(internalQueue, block);
  }

  self->_xctest = 1;
}

void __45__WiFiUsageMonitor_enableXCTestNotifications__block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v1 = [*(*(a1 + 32) + 104) allValues];
  v2 = [v1 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v17;
    do
    {
      v5 = 0;
      do
      {
        if (*v17 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v16 + 1) + 8 * v5);
        v12 = 0u;
        v13 = 0u;
        v14 = 0u;
        v15 = 0u;
        v7 = v6;
        v8 = [v7 countByEnumeratingWithState:&v12 objects:v20 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v13;
          do
          {
            v11 = 0;
            do
            {
              if (*v13 != v10)
              {
                objc_enumerationMutation(v7);
              }

              [*(*(&v12 + 1) + 8 * v11++) enableXCTestNotifications];
            }

            while (v9 != v11);
            v9 = [v7 countByEnumeratingWithState:&v12 objects:v20 count:16];
          }

          while (v9);
        }

        ++v5;
      }

      while (v5 != v3);
      v3 = [v1 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v3);
  }
}

- (void)enableSubmitAnalyticsNoSampling:(BOOL)sampling
{
  v9 = *MEMORY[0x277D85DE8];
  self->_xctest_disableSampling = sampling;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v4 = @"NO";
    if (self->_xctest_disableSampling)
    {
      v4 = @"YES";
    }

    v5 = 136315394;
    v6 = "[WiFiUsageMonitor enableSubmitAnalyticsNoSampling:]";
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - _xctest_disableSampling:%@", &v5, 0x16u);
  }
}

- (id)canStartLQMAnalysisforTrigger:(id)trigger andReason:(id)reason onWindow:(id)window
{
  v38 = *MEMORY[0x277D85DE8];
  triggerCopy = trigger;
  reasonCopy = reason;
  windowCopy = window;
  v11 = [MEMORY[0x277CBEAA8] now];
  v12 = [[WiFiUsageLQMRelatedTrigger alloc] initWithTrigger:triggerCopy andReason:reasonCopy andTimestamp:v11];
  [windowCopy addTrigger:v12];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v13 = self->_pendingLqmAnalysis;
  v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v23 objects:v37 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v24;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v24 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [*(*(&v23 + 1) + 8 * i) updateWithSubsequentTrigger:{v12, v23}];
      }

      v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v23 objects:v37 count:16];
    }

    while (v15);
  }

  v18 = [(NSMutableArray *)self->_pendingLqmAnalysis count];
  if (v18 >= +[WiFiUsageLQMWindowAnalysis maxConcurrentAnalysis])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v20 = +[WiFiUsageLQMWindowAnalysis maxConcurrentAnalysis];
      v21 = [(NSMutableArray *)self->_pendingLqmAnalysis count];
      *buf = 136316162;
      v28 = "[WiFiUsageMonitor canStartLQMAnalysisforTrigger:andReason:onWindow:]";
      v29 = 2112;
      v30 = triggerCopy;
      v31 = 2112;
      v32 = reasonCopy;
      v33 = 2048;
      v34 = v20;
      v35 = 1024;
      v36 = v21;
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - Cannot start WiFiUsageLQMWindowAnalysis for %@(%@) (max number of concurrent analysis (%lu) reached: %u)", buf, 0x30u);
    }

    v19 = 0;
  }

  else
  {
    v19 = v11;
  }

  return v19;
}

- (void)startLQMAnalysis:(id)analysis
{
  analysisCopy = analysis;
  [analysisCopy setCompletionHandler:self->_lqmAnalysisCompletionHandler];
  if (analysisCopy)
  {
    if (([analysisCopy isDone] & 1) == 0)
    {
      [(NSMutableArray *)self->_pendingLqmAnalysis addObject:analysisCopy];
      reason = [analysisCopy reason];
      v5 = [reason isEqualToString:@"InCall"];

      if (v5)
      {
        timestamp = [analysisCopy timestamp];
        lastInCallAnalysis = self->_lastInCallAnalysis;
        self->_lastInCallAnalysis = timestamp;
      }
    }
  }
}

- (void)receiveKernelLQMRollingWindow:(id)window ForInterface:(id)interface
{
  v18 = *MEMORY[0x277D85DE8];
  windowCopy = window;
  interfaceCopy = interface;
  if (!interfaceCopy)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    *buf = 136315394;
    v15 = "[WiFiUsageMonitor receiveKernelLQMRollingWindow:ForInterface:]";
    v16 = 2112;
    v17 = 0;
    v9 = MEMORY[0x277D86220];
    v10 = "%s - Invalid interfaceName: %@";
    v11 = 22;
LABEL_8:
    _os_log_impl(&dword_2332D7000, v9, OS_LOG_TYPE_DEFAULT, v10, buf, v11);
    goto LABEL_9;
  }

  if (!+[WiFiUsageLQMWindowAnalysis isKernerlParsingEnabled])
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    *buf = 136315138;
    v15 = "[WiFiUsageMonitor receiveKernelLQMRollingWindow:ForInterface:]";
    v9 = MEMORY[0x277D86220];
    v10 = "%s - kernel parsing not enabled";
    v11 = 12;
    goto LABEL_8;
  }

  internalQueue = self->_internalQueue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __63__WiFiUsageMonitor_receiveKernelLQMRollingWindow_ForInterface___block_invoke;
  v12[3] = &unk_2789C6608;
  v12[4] = self;
  v13 = windowCopy;
  dispatch_async(internalQueue, v12);

LABEL_9:
}

void __63__WiFiUsageMonitor_receiveKernelLQMRollingWindow_ForInterface___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  obj = [*(*(a1 + 32) + 224) copy];
  v2 = [obj countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v13;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v13 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v12 + 1) + 8 * i);
        v7 = *(a1 + 40);
        v8 = [v6 windowBeforeTrigger];
        v9 = [v6 lqmWindowsFeatures];
        v10 = [WiFiUsageLQMKernelRollingWindow kernelLQMRollingWindow:v7 withReferenceWindow:v8 andLqmFeatures:v9];
        [v6 setLqmWindowsFeatures:v10];
      }

      v3 = [obj countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v3);
  }
}

- (void)receivedBssTransitionRequest:(id)request candidateListIncluded:(BOOL)included isAbridged:(BOOL)abridged disassociationImminent:(BOOL)imminent bssTerminationIncluded:(BOOL)terminationIncluded essDisassociationImminent:(BOOL)disassociationImminent
{
  requestCopy = request;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __154__WiFiUsageMonitor_receivedBssTransitionRequest_candidateListIncluded_isAbridged_disassociationImminent_bssTerminationIncluded_essDisassociationImminent___block_invoke;
  block[3] = &unk_2789C6DD8;
  v18 = requestCopy;
  selfCopy = self;
  includedCopy = included;
  abridgedCopy = abridged;
  imminentCopy = imminent;
  terminationIncludedCopy = terminationIncluded;
  disassociationImminentCopy = disassociationImminent;
  v16 = requestCopy;
  dispatch_async(internalQueue, block);
}

void __154__WiFiUsageMonitor_receivedBssTransitionRequest_candidateListIncluded_isAbridged_disassociationImminent_bssTerminationIncluded_essDisassociationImminent___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v2 = [*(*(a1 + 40) + 104) valueForKey:0];
    v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v9;
      do
      {
        v6 = 0;
        do
        {
          if (*v9 != v5)
          {
            objc_enumerationMutation(v2);
          }

          [*(*(&v8 + 1) + 8 * v6++) receivedBssTransitionRequestWithCandidateListIncluded:*(a1 + 48) isAbridged:*(a1 + 49) disassociationImminent:*(a1 + 50) bssTerminationIncluded:*(a1 + 51) essDisassociationImminent:*(a1 + 52)];
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v4);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    *buf = 136315394;
    v14 = "[WiFiUsageMonitor receivedBssTransitionRequest:candidateListIncluded:isAbridged:disassociationImminent:bssTerminationIncluded:essDisassociationImminent:]_block_invoke";
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - Invalid interfaceName: %@", buf, 0x16u);
  }
}

- (void)sentBssTransitionResponse:(id)response status:(int64_t)status terminationDelayRequested:(BOOL)requested
{
  responseCopy = response;
  internalQueue = self->_internalQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __79__WiFiUsageMonitor_sentBssTransitionResponse_status_terminationDelayRequested___block_invoke;
  v11[3] = &unk_2789C7080;
  v12 = responseCopy;
  selfCopy = self;
  statusCopy = status;
  requestedCopy = requested;
  v10 = responseCopy;
  dispatch_async(internalQueue, v11);
}

void __79__WiFiUsageMonitor_sentBssTransitionResponse_status_terminationDelayRequested___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v2 = [*(*(a1 + 40) + 104) valueForKey:0];
    v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v9;
      do
      {
        v6 = 0;
        do
        {
          if (*v9 != v5)
          {
            objc_enumerationMutation(v2);
          }

          [*(*(&v8 + 1) + 8 * v6++) sentBssTransitionResponseWithStatus:*(a1 + 48) terminationDelayRequested:*(a1 + 56)];
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v4);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    *buf = 136315394;
    v14 = "[WiFiUsageMonitor sentBssTransitionResponse:status:terminationDelayRequested:]_block_invoke";
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - Invalid interfaceName: %@", buf, 0x16u);
  }
}

- (void)setDeviceInitializationFailureReason:(id)reason timeSinceBoot:(double)boot
{
  reasonCopy = @"Success";
  if (reason)
  {
    reasonCopy = reason;
  }

  v7 = MEMORY[0x277CBEB38];
  v8 = reasonCopy;
  reasonCopy2 = reason;
  dictionary = [v7 dictionary];
  [dictionary setObject:v8 forKeyedSubscript:@"WiFiDeviceInitializationFailureReason"];

  v11 = [WiFiUsagePrivacyFilter numberWithDuration:boot];
  [dictionary setObject:v11 forKeyedSubscript:@"WiFiTimeSinceBoot"];

  v13 = dictionary;
  v12 = dictionary;
  AnalyticsSendEventLazy();
}

- (void)updateWowState:(BOOL)state lpasState:(BOOL)lpasState lowPowerState:(BOOL)powerState batterySaverState:(BOOL)saverState
{
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __77__WiFiUsageMonitor_updateWowState_lpasState_lowPowerState_batterySaverState___block_invoke;
  v7[3] = &unk_2789C70A8;
  v7[4] = self;
  stateCopy = state;
  lpasStateCopy = lpasState;
  powerStateCopy = powerState;
  saverStateCopy = saverState;
  dispatch_async(internalQueue, v7);
}

void __77__WiFiUsageMonitor_updateWowState_lpasState_lowPowerState_batterySaverState___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v2 = [*(*(a1 + 32) + 104) allValues];
  v3 = [v2 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v18;
    do
    {
      v6 = 0;
      do
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v17 + 1) + 8 * v6);
        v13 = 0u;
        v14 = 0u;
        v15 = 0u;
        v16 = 0u;
        v8 = v7;
        v9 = [v8 countByEnumeratingWithState:&v13 objects:v21 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v14;
          do
          {
            v12 = 0;
            do
            {
              if (*v14 != v11)
              {
                objc_enumerationMutation(v8);
              }

              [*(*(&v13 + 1) + 8 * v12++) updateWowState:*(a1 + 40) lpasState:*(a1 + 41) lowPowerState:*(a1 + 42) batterySaverState:*(a1 + 43)];
            }

            while (v10 != v12);
            v10 = [v8 countByEnumeratingWithState:&v13 objects:v21 count:16];
          }

          while (v10);
        }

        ++v6;
      }

      while (v6 != v4);
      v4 = [v2 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v4);
  }
}

- (void)updateSleepPowerStats:(double)stats unassociatedDuration:(double)duration associatedDuration:(double)associatedDuration roamingDuration:(double)roamingDuration
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __98__WiFiUsageMonitor_updateSleepPowerStats_unassociatedDuration_associatedDuration_roamingDuration___block_invoke;
  block[3] = &unk_2789C7030;
  block[4] = self;
  *&block[5] = stats;
  *&block[6] = duration;
  *&block[7] = associatedDuration;
  *&block[8] = roamingDuration;
  dispatch_async(internalQueue, block);
}

void __98__WiFiUsageMonitor_updateSleepPowerStats_unassociatedDuration_associatedDuration_roamingDuration___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v2 = [*(*(a1 + 32) + 104) allValues];
  v3 = [v2 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v18;
    do
    {
      v6 = 0;
      do
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v17 + 1) + 8 * v6);
        v13 = 0u;
        v14 = 0u;
        v15 = 0u;
        v16 = 0u;
        v8 = v7;
        v9 = [v8 countByEnumeratingWithState:&v13 objects:v21 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v14;
          do
          {
            v12 = 0;
            do
            {
              if (*v14 != v11)
              {
                objc_enumerationMutation(v8);
              }

              [*(*(&v13 + 1) + 8 * v12++) updateSleepPowerStats:*(a1 + 40) unassociatedDuration:*(a1 + 48) associatedDuration:*(a1 + 56) roamingDuration:*(a1 + 64)];
            }

            while (v10 != v12);
            v10 = [v8 countByEnumeratingWithState:&v13 objects:v21 count:16];
          }

          while (v10);
        }

        ++v6;
      }

      while (v6 != v4);
      v4 = [v2 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v4);
  }
}

- (void)submitLqmToCA:(id)a forInterface:(id)interface
{
  v79 = *MEMORY[0x277D85DE8];
  aCopy = a;
  interfaceCopy = interface;
  if (!self->_xctest_disableSampling)
  {
    lqmDistributionSampling_store = self->_lqmDistributionSampling_store;
    if (lqmDistributionSampling_store)
    {
      if (![WiFiUsagePrivacyFilter canPerformActionWithRawSampleRate:[(NSNumber *)lqmDistributionSampling_store longValue]])
      {
        goto LABEL_10;
      }
    }

    else if (![WiFiUsagePrivacyFilter canPerformActionWithSampleRate:1])
    {
      goto LABEL_10;
    }
  }

  v62 = MEMORY[0x277D7B948];
  networkDetails = [aCopy networkDetails];
  connectedBss = [networkDetails connectedBss];
  channel = [connectedBss channel];
  networkDetails2 = [aCopy networkDetails];
  connectedBss2 = [networkDetails2 connectedBss];
  v58 = +[WiFiUsagePrivacyFilter waBandFromBand:](WiFiUsagePrivacyFilter, "waBandFromBand:", [connectedBss2 band]);
  rssi = [aCopy rssi];
  noise = [aCopy noise];
  v55 = [aCopy snr];
  totalReportedCca = [aCopy totalReportedCca];
  selfCca = [aCopy selfCca];
  otherCca = [aCopy otherCca];
  interference = [aCopy interference];
  beaconPer = [aCopy beaconPer];
  rxFrames = [aCopy rxFrames];
  rxRetriesOverRxFrames = [aCopy rxRetriesOverRxFrames];
  v48 = [aCopy rxFrames] * rxRetriesOverRxFrames;
  txFrames = [aCopy txFrames];
  txRetriesOverTxFrames = [aCopy txRetriesOverTxFrames];
  v46 = [aCopy txFrames] * txRetriesOverTxFrames;
  txFailsOverTxFrames = [aCopy txFailsOverTxFrames];
  v11 = [aCopy rxFrames] * txFailsOverTxFrames;
  txRate = [aCopy txRate];
  rxRate = [aCopy rxRate];
  isAnyAppInFG = [aCopy isAnyAppInFG];
  isFTactive = [aCopy isFTactive];
  isTimeSensitiveAppRunning = [aCopy isTimeSensitiveAppRunning];
  duration = [aCopy duration];
  v18 = self->_lqmDistributionSampling_store;
  if (v18)
  {
    longValue = [(NSNumber *)v18 longValue];
  }

  else
  {
    longValue = 1;
  }

  BYTE2(v45) = isTimeSensitiveAppRunning;
  BYTE1(v45) = isFTactive;
  LOBYTE(v45) = isAnyAppInFG;
  v20 = [v62 waLQMonChannel:channel band:v58 rssi:rssi noise:noise snr:v55 totalCCA:totalReportedCca selfCca:selfCca otherCca:otherCca interference:interference beaconPer:beaconPer rxFrames:rxFrames rxRetryFrames:v48 txFrames:txFrames txRetries:v46 txFail:v11 txRate:txRate rxRate:rxRate isAnyAppInFG:v45 isFTactive:+[WiFiUsagePrivacyFilter scalingFactorForRawSampleRate:](WiFiUsagePrivacyFilter isTimeSensitiveAppRunning:"scalingFactorForRawSampleRate:" duration:longValue) * duration];

  mEMORY[0x277D7B940] = [MEMORY[0x277D7B940] sharedDeviceAnalyticsClient];
  networkDetails3 = [aCopy networkDetails];
  connectedBss3 = [networkDetails3 connectedBss];
  bssid = [connectedBss3 bssid];
  timestamp = [aCopy timestamp];
  [mEMORY[0x277D7B940] lqmEvent:v20 on:bssid at:timestamp];

LABEL_10:
  if (!self->_xctest_disableSampling)
  {
    lqmDistributionSampling_telemetry = self->_lqmDistributionSampling_telemetry;
    if (lqmDistributionSampling_telemetry)
    {
      if (![WiFiUsagePrivacyFilter canPerformActionWithRawSampleRate:[(NSNumber *)lqmDistributionSampling_telemetry longValue]])
      {
        goto LABEL_34;
      }
    }

    else if (![WiFiUsagePrivacyFilter canPerformActionWithSampleRate:1])
    {
      goto LABEL_34;
    }
  }

  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v27 = [(NSMutableDictionary *)self->_usageSessions valueForKey:interfaceCopy];
  v28 = [v27 countByEnumeratingWithState:&v73 objects:v78 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = 0;
    v31 = *v74;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v74 != v31)
        {
          objc_enumerationMutation(v27);
        }

        v33 = *(*(&v73 + 1) + 8 * i);
        if ([v33 type] == 9)
        {
          v34 = v33;

          v30 = v34;
        }
      }

      v29 = [v27 countByEnumeratingWithState:&v73 objects:v78 count:16];
    }

    while (v29);
  }

  else
  {
    v30 = 0;
  }

  v35 = objc_opt_new();
  [objc_opt_class() appendTDStateToDict:v35 from:v30];
  [(WiFiUsageMonitor *)self appendUsbStatsToDict:v35];
  [(WiFiUsageMonitor *)self appendBTStatsToDict:v35];
  [(WiFiUsageMonitor *)self appendSARStatsToDict:v35];
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v65 = aCopy;
  mloSamples = [aCopy mloSamples];
  v37 = [mloSamples countByEnumeratingWithState:&v69 objects:v77 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v70;
    do
    {
      for (j = 0; j != v38; ++j)
      {
        if (*v70 != v39)
        {
          objc_enumerationMutation(mloSamples);
        }

        v41 = *(*(&v69 + 1) + 8 * j);
        v42 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v35];
        v43 = [v41 asDictionaryInto:v42];
        AnalyticsSendEvent();
      }

      v38 = [mloSamples countByEnumeratingWithState:&v69 objects:v77 count:16];
    }

    while (v38);
  }

  aCopy = v65;
  v67 = v65;
  v68 = v35;
  v44 = v35;
  AnalyticsSendEventLazy();

LABEL_34:
}

- (void)submitBootLatenciesToCA
{
  v122[3] = *MEMORY[0x277D85DE8];
  if (self->_numberOfJoins && !self->_detectedJoinAfterIPConfig)
  {
    if (self->_bootToLastJoin)
    {
      v121[0] = @"latencyType";
      v3 = [MEMORY[0x277CCABB0] numberWithInteger:0];
      v122[0] = v3;
      v121[1] = @"latencyValue";
      v4 = [MEMORY[0x277CCABB0] numberWithInteger:{-[NSNumber integerValue](self->_bootToLastJoin, "integerValue")}];
      v122[1] = v4;
      v121[2] = @"numberOfJoinsAttempts";
      v5 = [MEMORY[0x277CCABB0] numberWithInteger:self->_numberOfJoins];
      v122[2] = v5;
      v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v122 forKeys:v121 count:3];

      AnalyticsSendEvent();
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v7 = [v6 description];
        *buf = 136315394;
        v118 = "[WiFiUsageMonitor submitBootLatenciesToCA]";
        v119 = 2080;
        uTF8String = [v7 UTF8String];
        _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: dict_bootToLastJoin: %s\n", buf, 0x16u);
      }

      bootToLastJoin = self->_bootToLastJoin;
      self->_bootToLastJoin = 0;
    }

    if (self->_firstUnlockToLastJoin)
    {
      v115[0] = @"latencyType";
      v9 = [MEMORY[0x277CCABB0] numberWithInteger:1];
      v116[0] = v9;
      v115[1] = @"latencyValue";
      v10 = [MEMORY[0x277CCABB0] numberWithInteger:{-[NSNumber integerValue](self->_firstUnlockToLastJoin, "integerValue")}];
      v116[1] = v10;
      v115[2] = @"numberOfJoinsAttempts";
      v11 = [MEMORY[0x277CCABB0] numberWithInteger:self->_numberOfJoins];
      v116[2] = v11;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v116 forKeys:v115 count:3];

      AnalyticsSendEvent();
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v13 = [v12 description];
        uTF8String2 = [v13 UTF8String];
        *buf = 136315394;
        v118 = "[WiFiUsageMonitor submitBootLatenciesToCA]";
        v119 = 2080;
        uTF8String = uTF8String2;
        _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: dict_firstUnlockToLastJoin: %s\n", buf, 0x16u);
      }

      firstUnlockToLastJoin = self->_firstUnlockToLastJoin;
      self->_firstUnlockToLastJoin = 0;
    }

    if (self->_bootToLastLinkUp)
    {
      v113[0] = @"latencyType";
      v16 = [MEMORY[0x277CCABB0] numberWithInteger:2];
      v114[0] = v16;
      v113[1] = @"latencyValue";
      v17 = [MEMORY[0x277CCABB0] numberWithInteger:{-[NSNumber integerValue](self->_bootToLastLinkUp, "integerValue")}];
      v114[1] = v17;
      v113[2] = @"numberOfJoinsAttempts";
      v18 = [MEMORY[0x277CCABB0] numberWithInteger:self->_numberOfJoins];
      v114[2] = v18;
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v114 forKeys:v113 count:3];

      AnalyticsSendEvent();
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v20 = [v19 description];
        uTF8String3 = [v20 UTF8String];
        *buf = 136315394;
        v118 = "[WiFiUsageMonitor submitBootLatenciesToCA]";
        v119 = 2080;
        uTF8String = uTF8String3;
        _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: dict_bootToLastLinkUp: %s\n", buf, 0x16u);
      }

      bootToLastLinkUp = self->_bootToLastLinkUp;
      self->_bootToLastLinkUp = 0;
    }

    if (self->_firstUnlockToLastLinkUp)
    {
      v111[0] = @"latencyType";
      v23 = [MEMORY[0x277CCABB0] numberWithInteger:3];
      v112[0] = v23;
      v111[1] = @"latencyValue";
      v24 = [MEMORY[0x277CCABB0] numberWithInteger:{-[NSNumber integerValue](self->_firstUnlockToLastLinkUp, "integerValue")}];
      v112[1] = v24;
      v111[2] = @"numberOfJoinsAttempts";
      v25 = [MEMORY[0x277CCABB0] numberWithInteger:self->_numberOfJoins];
      v112[2] = v25;
      v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v112 forKeys:v111 count:3];

      AnalyticsSendEvent();
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v27 = [v26 description];
        uTF8String4 = [v27 UTF8String];
        *buf = 136315394;
        v118 = "[WiFiUsageMonitor submitBootLatenciesToCA]";
        v119 = 2080;
        uTF8String = uTF8String4;
        _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: dict_firstUnlockToLastLinkUp: %s\n", buf, 0x16u);
      }

      firstUnlockToLastLinkUp = self->_firstUnlockToLastLinkUp;
      self->_firstUnlockToLastLinkUp = 0;
    }

    if (self->_lastJoinToLastLinkUp)
    {
      v109[0] = @"latencyType";
      v30 = [MEMORY[0x277CCABB0] numberWithInteger:4];
      v110[0] = v30;
      v109[1] = @"latencyValue";
      v31 = [MEMORY[0x277CCABB0] numberWithInteger:{-[NSNumber integerValue](self->_lastJoinToLastLinkUp, "integerValue")}];
      v110[1] = v31;
      v109[2] = @"numberOfJoinsAttempts";
      v32 = [MEMORY[0x277CCABB0] numberWithInteger:self->_numberOfJoins];
      v110[2] = v32;
      v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v110 forKeys:v109 count:3];

      AnalyticsSendEvent();
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v34 = [v33 description];
        uTF8String5 = [v34 UTF8String];
        *buf = 136315394;
        v118 = "[WiFiUsageMonitor submitBootLatenciesToCA]";
        v119 = 2080;
        uTF8String = uTF8String5;
        _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: dict_lastJoinToLastLinkUp: %s\n", buf, 0x16u);
      }

      lastJoinToLastLinkUp = self->_lastJoinToLastLinkUp;
      self->_lastJoinToLastLinkUp = 0;
    }

    if (self->_bootToIPv4)
    {
      v107[0] = @"latencyType";
      v37 = [MEMORY[0x277CCABB0] numberWithInteger:5];
      v108[0] = v37;
      v107[1] = @"latencyValue";
      v38 = [MEMORY[0x277CCABB0] numberWithInteger:{-[NSNumber integerValue](self->_bootToIPv4, "integerValue")}];
      v108[1] = v38;
      v107[2] = @"numberOfJoinsAttempts";
      v39 = [MEMORY[0x277CCABB0] numberWithInteger:self->_numberOfJoins];
      v108[2] = v39;
      v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v108 forKeys:v107 count:3];

      AnalyticsSendEvent();
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v41 = [v40 description];
        uTF8String6 = [v41 UTF8String];
        *buf = 136315394;
        v118 = "[WiFiUsageMonitor submitBootLatenciesToCA]";
        v119 = 2080;
        uTF8String = uTF8String6;
        _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: dict_bootToIPv4: %s\n", buf, 0x16u);
      }

      bootToIPv4 = self->_bootToIPv4;
      self->_bootToIPv4 = 0;
    }

    if (self->_firstUnlockToIPv4)
    {
      v105[0] = @"latencyType";
      v44 = [MEMORY[0x277CCABB0] numberWithInteger:6];
      v106[0] = v44;
      v105[1] = @"latencyValue";
      v45 = [MEMORY[0x277CCABB0] numberWithInteger:{-[NSNumber integerValue](self->_firstUnlockToIPv4, "integerValue")}];
      v106[1] = v45;
      v105[2] = @"numberOfJoinsAttempts";
      v46 = [MEMORY[0x277CCABB0] numberWithInteger:self->_numberOfJoins];
      v106[2] = v46;
      v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v106 forKeys:v105 count:3];

      AnalyticsSendEvent();
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v48 = [v47 description];
        uTF8String7 = [v48 UTF8String];
        *buf = 136315394;
        v118 = "[WiFiUsageMonitor submitBootLatenciesToCA]";
        v119 = 2080;
        uTF8String = uTF8String7;
        _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: dict_firstUnlockToIPv4: %s\n", buf, 0x16u);
      }

      firstUnlockToIPv4 = self->_firstUnlockToIPv4;
      self->_firstUnlockToIPv4 = 0;
    }

    if (self->_lastJoinToIPv4)
    {
      v103[0] = @"latencyType";
      v51 = [MEMORY[0x277CCABB0] numberWithInteger:7];
      v104[0] = v51;
      v103[1] = @"latencyValue";
      v52 = [MEMORY[0x277CCABB0] numberWithInteger:{-[NSNumber integerValue](self->_lastJoinToIPv4, "integerValue")}];
      v104[1] = v52;
      v103[2] = @"numberOfJoinsAttempts";
      v53 = [MEMORY[0x277CCABB0] numberWithInteger:self->_numberOfJoins];
      v104[2] = v53;
      v54 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v104 forKeys:v103 count:3];

      AnalyticsSendEvent();
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v55 = [v54 description];
        uTF8String8 = [v55 UTF8String];
        *buf = 136315394;
        v118 = "[WiFiUsageMonitor submitBootLatenciesToCA]";
        v119 = 2080;
        uTF8String = uTF8String8;
        _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: dict_lastJoinToIPv4: %s\n", buf, 0x16u);
      }

      lastJoinToIPv4 = self->_lastJoinToIPv4;
      self->_lastJoinToIPv4 = 0;
    }

    if (self->_lastLinkUpToIPv4)
    {
      v101[0] = @"latencyType";
      v58 = [MEMORY[0x277CCABB0] numberWithInteger:8];
      v102[0] = v58;
      v101[1] = @"latencyValue";
      v59 = [MEMORY[0x277CCABB0] numberWithInteger:{-[NSNumber integerValue](self->_lastLinkUpToIPv4, "integerValue")}];
      v102[1] = v59;
      v101[2] = @"numberOfJoinsAttempts";
      v60 = [MEMORY[0x277CCABB0] numberWithInteger:self->_numberOfJoins];
      v102[2] = v60;
      v61 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v102 forKeys:v101 count:3];

      AnalyticsSendEvent();
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v62 = [v61 description];
        uTF8String9 = [v62 UTF8String];
        *buf = 136315394;
        v118 = "[WiFiUsageMonitor submitBootLatenciesToCA]";
        v119 = 2080;
        uTF8String = uTF8String9;
        _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: dict_lastLinkUpToIPv4: %s\n", buf, 0x16u);
      }

      lastLinkUpToIPv4 = self->_lastLinkUpToIPv4;
      self->_lastLinkUpToIPv4 = 0;
    }

    if (self->_bootToIPv6)
    {
      v99[0] = @"latencyType";
      v65 = [MEMORY[0x277CCABB0] numberWithInteger:9];
      v100[0] = v65;
      v99[1] = @"latencyValue";
      v66 = [MEMORY[0x277CCABB0] numberWithInteger:{-[NSNumber integerValue](self->_bootToIPv6, "integerValue")}];
      v100[1] = v66;
      v99[2] = @"numberOfJoinsAttempts";
      v67 = [MEMORY[0x277CCABB0] numberWithInteger:self->_numberOfJoins];
      v100[2] = v67;
      v68 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v100 forKeys:v99 count:3];

      AnalyticsSendEvent();
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v69 = [v68 description];
        uTF8String10 = [v69 UTF8String];
        *buf = 136315394;
        v118 = "[WiFiUsageMonitor submitBootLatenciesToCA]";
        v119 = 2080;
        uTF8String = uTF8String10;
        _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: dict_bootToIPv6: %s\n", buf, 0x16u);
      }

      bootToIPv6 = self->_bootToIPv6;
      self->_bootToIPv6 = 0;
    }

    if (self->_firstUnlockToIPv6)
    {
      v97[0] = @"latencyType";
      v72 = [MEMORY[0x277CCABB0] numberWithInteger:10];
      v98[0] = v72;
      v97[1] = @"latencyValue";
      v73 = [MEMORY[0x277CCABB0] numberWithInteger:{-[NSNumber integerValue](self->_firstUnlockToIPv6, "integerValue")}];
      v98[1] = v73;
      v97[2] = @"numberOfJoinsAttempts";
      v74 = [MEMORY[0x277CCABB0] numberWithInteger:self->_numberOfJoins];
      v98[2] = v74;
      v75 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v98 forKeys:v97 count:3];

      AnalyticsSendEvent();
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v76 = [v75 description];
        uTF8String11 = [v76 UTF8String];
        *buf = 136315394;
        v118 = "[WiFiUsageMonitor submitBootLatenciesToCA]";
        v119 = 2080;
        uTF8String = uTF8String11;
        _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: dict_firstUnlockToIPv6: %s\n", buf, 0x16u);
      }

      firstUnlockToIPv6 = self->_firstUnlockToIPv6;
      self->_firstUnlockToIPv6 = 0;
    }

    if (self->_lastJoinToIPv6)
    {
      v95[0] = @"latencyType";
      v79 = [MEMORY[0x277CCABB0] numberWithInteger:11];
      v96[0] = v79;
      v95[1] = @"latencyValue";
      v80 = [MEMORY[0x277CCABB0] numberWithInteger:{-[NSNumber integerValue](self->_lastJoinToIPv6, "integerValue")}];
      v96[1] = v80;
      v95[2] = @"numberOfJoinsAttempts";
      v81 = [MEMORY[0x277CCABB0] numberWithInteger:self->_numberOfJoins];
      v96[2] = v81;
      v82 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v96 forKeys:v95 count:3];

      AnalyticsSendEvent();
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v83 = [v82 description];
        uTF8String12 = [v83 UTF8String];
        *buf = 136315394;
        v118 = "[WiFiUsageMonitor submitBootLatenciesToCA]";
        v119 = 2080;
        uTF8String = uTF8String12;
        _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: dict_lastJoinToIPv6: %s\n", buf, 0x16u);
      }

      lastJoinToIPv6 = self->_lastJoinToIPv6;
      self->_lastJoinToIPv6 = 0;
    }

    if (self->_lastLinkUpToIPv6)
    {
      v86 = [MEMORY[0x277CCABB0] numberWithInteger:{12, @"latencyType"}];
      v94[0] = v86;
      v93[1] = @"latencyValue";
      v87 = [MEMORY[0x277CCABB0] numberWithInteger:{-[NSNumber integerValue](self->_lastLinkUpToIPv6, "integerValue")}];
      v94[1] = v87;
      v93[2] = @"numberOfJoinsAttempts";
      v88 = [MEMORY[0x277CCABB0] numberWithInteger:self->_numberOfJoins];
      v94[2] = v88;
      v89 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v94 forKeys:v93 count:3];

      AnalyticsSendEvent();
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v90 = [v89 description];
        uTF8String13 = [v90 UTF8String];
        *buf = 136315394;
        v118 = "[WiFiUsageMonitor submitBootLatenciesToCA]";
        v119 = 2080;
        uTF8String = uTF8String13;
        _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: dict_lastLinkUpToIPv6: %s\n", buf, 0x16u);
      }

      lastLinkUpToIPv6 = self->_lastLinkUpToIPv6;
      self->_lastLinkUpToIPv6 = 0;
    }
  }
}

- (void)updateWithChQualScore:(unint64_t)score txLatencyScore:(unint64_t)latencyScore rxLatencyScore:(unint64_t)rxLatencyScore txLossScore:(unint64_t)lossScore rxLossScore:(unint64_t)rxLossScore txLatencyP95:(unint64_t)p95 linkRecommendationFlags:(unint64_t)flags rtTrafficStatus:(unint64_t)self0 forInterface:(id)self1
{
  interfaceCopy = interface;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __162__WiFiUsageMonitor_updateWithChQualScore_txLatencyScore_rxLatencyScore_txLossScore_rxLossScore_txLatencyP95_linkRecommendationFlags_rtTrafficStatus_forInterface___block_invoke;
  block[3] = &unk_2789C70D0;
  block[4] = self;
  v21 = interfaceCopy;
  scoreCopy = score;
  latencyScoreCopy = latencyScore;
  lossScoreCopy = lossScore;
  rxLossScoreCopy = rxLossScore;
  p95Copy = p95;
  flagsCopy = flags;
  statusCopy = status;
  v19 = interfaceCopy;
  dispatch_async(internalQueue, block);
}

void __162__WiFiUsageMonitor_updateWithChQualScore_txLatencyScore_rxLatencyScore_txLossScore_rxLossScore_txLatencyP95_linkRecommendationFlags_rtTrafficStatus_forInterface___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 120) objectForKeyedSubscript:*(a1 + 40)];
  v3 = [v2 samples];
  v4 = [v3 lastObject];

  [v4 updateWithChQualScore:*(a1 + 48) txLatencyScore:*(a1 + 56) rxLatencyScore:*(a1 + 56) txLossScore:*(a1 + 64) rxLossScore:*(a1 + 72) txLatencyP95:*(a1 + 80) linkRecommendationFlags:*(a1 + 88) rtTrafficStatus:*(a1 + 96)];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [*(*(a1 + 32) + 104) valueForKey:*(a1 + 40)];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if ([v10 expectsLQMUpdates])
        {
          [v10 updateWithScores:v4];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  if (![*(a1 + 32) isBSPActive] || (objc_msgSend(v4, "numberForKeyPath:", @"bspTriggerCount"), v11 = objc_claimAutoreleasedReturnValue(), v11, v11))
  {
    [*(a1 + 32) submitLqmToCA:v4 forInterface:*(a1 + 40)];
  }
}

- (void)updateIsBSPActive:(BOOL)active
{
  internalQueue = self->_internalQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __38__WiFiUsageMonitor_updateIsBSPActive___block_invoke;
  v4[3] = &unk_2789C6688;
  v4[4] = self;
  activeCopy = active;
  dispatch_async(internalQueue, v4);
}

- (void)updateWithBspOverflowed:(BOOL)overflowed IsBSPActive:(BOOL)active BspTimeToTST:(unint64_t)t BspSampleDurationMS:(unint64_t)s IsScanActiveBSP:(BOOL)p IsP2PActiveBSP:(BOOL)sP BspTriggerCount:(unint64_t)count BspMutePercentage:(unint64_t)self0 BspMaxMuteMS:(unint64_t)self1 BspAvgMuteMS:(unint64_t)self2 BspErrorPercentage:(unint64_t)self3 BspTimeOutPercentageOfTriggers:(unint64_t)self4 BspRejectOrFailPercentageOfTriggers:(unint64_t)self5 bspMaxConsecutiveFails:(unint64_t)self6 supportsLinkRecommendation:(BOOL)self7 forInterface:(id)self8
{
  interfaceCopy = interface;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __329__WiFiUsageMonitor_updateWithBspOverflowed_IsBSPActive_BspTimeToTST_BspSampleDurationMS_IsScanActiveBSP_IsP2PActiveBSP_BspTriggerCount_BspMutePercentage_BspMaxMuteMS_BspAvgMuteMS_BspErrorPercentage_BspTimeOutPercentageOfTriggers_BspRejectOrFailPercentageOfTriggers_bspMaxConsecutiveFails_supportsLinkRecommendation_forInterface___block_invoke;
  block[3] = &unk_2789C70F8;
  block[4] = self;
  v29 = interfaceCopy;
  overflowedCopy = overflowed;
  activeCopy = active;
  tCopy = t;
  sCopy = s;
  pCopy = p;
  sPCopy = sP;
  v32 = *&count;
  v33 = *&mS;
  v34 = *&errorPercentage;
  ofTriggersCopy = ofTriggers;
  failsCopy = fails;
  recommendationCopy = recommendation;
  v26 = interfaceCopy;
  dispatch_async(internalQueue, block);
}

void __329__WiFiUsageMonitor_updateWithBspOverflowed_IsBSPActive_BspTimeToTST_BspSampleDurationMS_IsScanActiveBSP_IsP2PActiveBSP_BspTriggerCount_BspMutePercentage_BspMaxMuteMS_BspAvgMuteMS_BspErrorPercentage_BspTimeOutPercentageOfTriggers_BspRejectOrFailPercentageOfTriggers_bspMaxConsecutiveFails_supportsLinkRecommendation_forInterface___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 120) objectForKeyedSubscript:*(a1 + 40)];
  v3 = [v2 samples];
  v5 = [v3 lastObject];

  [v5 populateWithBspOverflowed:*(a1 + 128) IsBSPActive:*(a1 + 129) BspTimeToTST:*(a1 + 48) BspSampleDurationMS:*(a1 + 56) IsScanActiveBSP:*(a1 + 130) IsP2PActiveBSP:*(a1 + 131) BspTriggerCount:*(a1 + 64) BspMutePercentage:*(a1 + 72) BspMaxMuteMS:*(a1 + 80) BspAvgMuteMS:*(a1 + 88) BspErrorPercentage:*(a1 + 96) BspTimeOutPercentageOfTriggers:*(a1 + 104) BspRejectOrFailPercentageOfTriggers:*(a1 + 112) BspMaxConsecutiveFails:*(a1 + 120)];
  if ([*(a1 + 32) isBSPActive])
  {
    if (*(a1 + 132) != 1 || ([v5 numberForKeyPath:@"chanQualScore"], v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
    {
      [*(a1 + 32) submitLqmToCA:v5 forInterface:*(a1 + 40)];
    }
  }
}

- (void)notifyIPv4Changes:(id)changes
{
  changesCopy = changes;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__WiFiUsageMonitor_notifyIPv4Changes___block_invoke;
  v7[3] = &unk_2789C6608;
  v8 = changesCopy;
  selfCopy = self;
  v6 = changesCopy;
  dispatch_async(internalQueue, v7);
}

void __38__WiFiUsageMonitor_notifyIPv4Changes___block_invoke(uint64_t a1)
{
  v49 = *MEMORY[0x277D85DE8];
  v2 = [[WiFiUsageNetworkIPv4Details alloc] initWithDictionary:*(a1 + 32)];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v46 = "[WiFiUsageMonitor notifyIPv4Changes:]_block_invoke";
    v47 = 2112;
    v48 = v2;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - details: %@", buf, 0x16u);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v3 = [*(*(a1 + 40) + 104) allValues];
  v4 = [v3 countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v40;
    do
    {
      v7 = 0;
      do
      {
        if (*v40 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v39 + 1) + 8 * v7);
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v9 = v8;
        v10 = [v9 countByEnumeratingWithState:&v35 objects:v43 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v36;
          do
          {
            v13 = 0;
            do
            {
              if (*v36 != v12)
              {
                objc_enumerationMutation(v9);
              }

              [*(*(&v35 + 1) + 8 * v13++) processIPv4Changes:v2];
            }

            while (v11 != v13);
            v11 = [v9 countByEnumeratingWithState:&v35 objects:v43 count:16];
          }

          while (v11);
        }

        ++v7;
      }

      while (v7 != v5);
      v5 = [v3 countByEnumeratingWithState:&v39 objects:v44 count:16];
    }

    while (v5);
  }

  if ([(WiFiUsageNetworkIPv4Details *)v2 isValid])
  {
    v14 = *(a1 + 40);
    if (!*(v14 + 416) && *(v14 + 336) <= 0x64uLL)
    {
      v15 = [MEMORY[0x277CBEAA8] date];
      v16 = *(a1 + 40);
      v17 = *(v16 + 416);
      *(v16 + 416) = v15;

      v18 = MEMORY[0x277CCABB0];
      +[WiFiUsagePrivacyFilter timeSinceBootInSeconds];
      v19 = [v18 numberWithDouble:?];
      v20 = *(a1 + 40);
      v21 = *(v20 + 424);
      *(v20 + 424) = v19;

      v22 = *(a1 + 40);
      if (*(v22 + 352))
      {
        v23 = MEMORY[0x277CCABB0];
        [*(v22 + 416) timeIntervalSinceDate:?];
        v24 = [v23 numberWithDouble:?];
        v25 = *(a1 + 40);
        v26 = *(v25 + 432);
        *(v25 + 432) = v24;

        v22 = *(a1 + 40);
      }

      if (*(v22 + 360))
      {
        v27 = MEMORY[0x277CCABB0];
        [*(v22 + 416) timeIntervalSinceDate:?];
        v28 = [v27 numberWithDouble:?];
        v29 = *(a1 + 40);
        v30 = *(v29 + 440);
        *(v29 + 440) = v28;

        v22 = *(a1 + 40);
      }

      if (*(v22 + 384))
      {
        v31 = MEMORY[0x277CCABB0];
        [*(v22 + 416) timeIntervalSinceDate:?];
        v32 = [v31 numberWithDouble:?];
        v33 = *(a1 + 40);
        v34 = *(v33 + 448);
        *(v33 + 448) = v32;

        v22 = *(a1 + 40);
      }

      [v22 submitBootLatenciesToCA];
    }
  }
}

- (void)notifyIPv6Changes:(id)changes
{
  changesCopy = changes;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__WiFiUsageMonitor_notifyIPv6Changes___block_invoke;
  v7[3] = &unk_2789C6608;
  v8 = changesCopy;
  selfCopy = self;
  v6 = changesCopy;
  dispatch_async(internalQueue, v7);
}

void __38__WiFiUsageMonitor_notifyIPv6Changes___block_invoke(uint64_t a1)
{
  v49 = *MEMORY[0x277D85DE8];
  v2 = [[WiFiUsageNetworkIPv6Details alloc] initWithDictionary:*(a1 + 32)];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v46 = "[WiFiUsageMonitor notifyIPv6Changes:]_block_invoke";
    v47 = 2112;
    v48 = v2;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - details: %@", buf, 0x16u);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v3 = [*(*(a1 + 40) + 104) allValues];
  v4 = [v3 countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v40;
    do
    {
      v7 = 0;
      do
      {
        if (*v40 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v39 + 1) + 8 * v7);
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v9 = v8;
        v10 = [v9 countByEnumeratingWithState:&v35 objects:v43 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v36;
          do
          {
            v13 = 0;
            do
            {
              if (*v36 != v12)
              {
                objc_enumerationMutation(v9);
              }

              [*(*(&v35 + 1) + 8 * v13++) processIPv6Changes:v2];
            }

            while (v11 != v13);
            v11 = [v9 countByEnumeratingWithState:&v35 objects:v43 count:16];
          }

          while (v11);
        }

        ++v7;
      }

      while (v7 != v5);
      v5 = [v3 countByEnumeratingWithState:&v39 objects:v44 count:16];
    }

    while (v5);
  }

  if ([(WiFiUsageNetworkIPv6Details *)v2 isValid])
  {
    v14 = *(a1 + 40);
    if (!*(v14 + 456) && *(v14 + 336) <= 0x64uLL)
    {
      v15 = [MEMORY[0x277CBEAA8] date];
      v16 = *(a1 + 40);
      v17 = *(v16 + 456);
      *(v16 + 456) = v15;

      v18 = MEMORY[0x277CCABB0];
      +[WiFiUsagePrivacyFilter timeSinceBootInSeconds];
      v19 = [v18 numberWithDouble:?];
      v20 = *(a1 + 40);
      v21 = *(v20 + 464);
      *(v20 + 464) = v19;

      v22 = *(a1 + 40);
      if (*(v22 + 352))
      {
        v23 = MEMORY[0x277CCABB0];
        [*(v22 + 456) timeIntervalSinceDate:?];
        v24 = [v23 numberWithDouble:?];
        v25 = *(a1 + 40);
        v26 = *(v25 + 472);
        *(v25 + 472) = v24;

        v22 = *(a1 + 40);
      }

      if (*(v22 + 360))
      {
        v27 = MEMORY[0x277CCABB0];
        [*(v22 + 456) timeIntervalSinceDate:?];
        v28 = [v27 numberWithDouble:?];
        v29 = *(a1 + 40);
        v30 = *(v29 + 480);
        *(v29 + 480) = v28;

        v22 = *(a1 + 40);
      }

      if (*(v22 + 384))
      {
        v31 = MEMORY[0x277CCABB0];
        [*(v22 + 456) timeIntervalSinceDate:?];
        v32 = [v31 numberWithDouble:?];
        v33 = *(a1 + 40);
        v34 = *(v33 + 488);
        *(v33 + 488) = v32;

        v22 = *(a1 + 40);
      }

      [v22 submitBootLatenciesToCA];
    }
  }
}

- (void)notifyDHCPChanges:(id)changes
{
  changesCopy = changes;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__WiFiUsageMonitor_notifyDHCPChanges___block_invoke;
  v7[3] = &unk_2789C6608;
  v7[4] = self;
  v8 = changesCopy;
  v6 = changesCopy;
  dispatch_async(internalQueue, v7);
}

void __38__WiFiUsageMonitor_notifyDHCPChanges___block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    *buf = 136315906;
    v26 = "[WiFiUsageMonitor notifyDHCPChanges:]_block_invoke";
    v27 = 1024;
    v28 = 3199;
    v29 = 2048;
    v30 = v2;
    v31 = 2112;
    v32 = v3;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s:%d, self[%p], dictionary: %@", buf, 0x26u);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = [*(*(a1 + 32) + 104) allValues];
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    do
    {
      v8 = 0;
      do
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v19 + 1) + 8 * v8);
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v10 = v9;
        v11 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v16;
          do
          {
            v14 = 0;
            do
            {
              if (*v16 != v13)
              {
                objc_enumerationMutation(v10);
              }

              [*(*(&v15 + 1) + 8 * v14++) processDHCPChanges:*(a1 + 40)];
            }

            while (v12 != v14);
            v12 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
          }

          while (v12);
        }

        ++v8;
      }

      while (v8 != v6);
      v6 = [v4 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v6);
  }
}

- (void)notifyIpConfigurationStateWithMethod:(BOOL)method dhcpLeaseDuration:(double)duration hasRoutableIpV4:(BOOL)v4 hasRoutableIpV6:(BOOL)v6
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __107__WiFiUsageMonitor_notifyIpConfigurationStateWithMethod_dhcpLeaseDuration_hasRoutableIpV4_hasRoutableIpV6___block_invoke;
  block[3] = &unk_2789C7120;
  block[4] = self;
  methodCopy = method;
  *&block[5] = duration;
  v4Copy = v4;
  v6Copy = v6;
  dispatch_async(internalQueue, block);
}

void __107__WiFiUsageMonitor_notifyIpConfigurationStateWithMethod_dhcpLeaseDuration_hasRoutableIpV4_hasRoutableIpV6___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v2 = [*(*(a1 + 32) + 104) allValues];
  v3 = [v2 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v18;
    do
    {
      v6 = 0;
      do
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v17 + 1) + 8 * v6);
        v13 = 0u;
        v14 = 0u;
        v15 = 0u;
        v16 = 0u;
        v8 = v7;
        v9 = [v8 countByEnumeratingWithState:&v13 objects:v21 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v14;
          do
          {
            v12 = 0;
            do
            {
              if (*v14 != v11)
              {
                objc_enumerationMutation(v8);
              }

              [*(*(&v13 + 1) + 8 * v12++) ipConfigurationDidChangeWithMethod:*(a1 + 48) dhcpLeaseDuration:*(a1 + 49) hasRoutableIpV4:*(a1 + 50) hasRoutableIpV6:*(a1 + 40)];
            }

            while (v10 != v12);
            v10 = [v8 countByEnumeratingWithState:&v13 objects:v21 count:16];
          }

          while (v10);
        }

        ++v6;
      }

      while (v6 != v4);
      v4 = [v2 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v4);
  }
}

- (void)notifyInterfaceRankingState:(BOOL)state forInterface:(id)interface
{
  interfaceCopy = interface;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__WiFiUsageMonitor_notifyInterfaceRankingState_forInterface___block_invoke;
  block[3] = &unk_2789C6C20;
  block[4] = self;
  v10 = interfaceCopy;
  stateCopy = state;
  v8 = interfaceCopy;
  dispatch_async(internalQueue, block);
}

void __61__WiFiUsageMonitor_notifyInterfaceRankingState_forInterface___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 104) objectForKey:*(a1 + 40)];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) interfaceRankingDidChange:*(a1 + 48)];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)notifyDriverAvailability:(id)availability available:(BOOL)available version:(unint64_t)version flags:(unint64_t)flags eventID:(unint64_t)d reason:(int64_t)reason subReason:(int64_t)subReason minorReason:(int64_t)self0 reasonString:(id)self1
{
  availabilityCopy = availability;
  stringCopy = string;
  internalQueue = self->_internalQueue;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __119__WiFiUsageMonitor_notifyDriverAvailability_available_version_flags_eventID_reason_subReason_minorReason_reasonString___block_invoke;
  v22[3] = &unk_2789C7148;
  v22[4] = self;
  v23 = availabilityCopy;
  availableCopy = available;
  flagsCopy = flags;
  dCopy = d;
  reasonCopy = reason;
  subReasonCopy = subReason;
  minorReasonCopy = minorReason;
  v24 = stringCopy;
  versionCopy = version;
  v20 = stringCopy;
  v21 = availabilityCopy;
  dispatch_async(internalQueue, v22);
}

void __119__WiFiUsageMonitor_notifyDriverAvailability_available_version_flags_eventID_reason_subReason_minorReason_reasonString___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [*(*(a1 + 32) + 104) valueForKey:*(a1 + 40)];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) processDriverAvailability:*(a1 + 40) available:*(a1 + 104) version:*(a1 + 56) flags:*(a1 + 64) eventID:*(a1 + 72) reason:*(a1 + 80) subReason:*(a1 + 88) minorReason:*(a1 + 96) reasonString:*(a1 + 48)];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)updateWithRoamingSuppression:(unsigned __int8)suppression
{
  internalQueue = self->_internalQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __49__WiFiUsageMonitor_updateWithRoamingSuppression___block_invoke;
  v4[3] = &unk_2789C6688;
  v4[4] = self;
  suppressionCopy = suppression;
  dispatch_async(internalQueue, v4);
}

void __49__WiFiUsageMonitor_updateWithRoamingSuppression___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v2 = [*(*(a1 + 32) + 104) allValues];
  v3 = [v2 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v20;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v20 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v19 + 1) + 8 * i);
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v8 = v7;
        v9 = [v8 countByEnumeratingWithState:&v15 objects:v23 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v16;
          do
          {
            for (j = 0; j != v10; ++j)
            {
              if (*v16 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v15 + 1) + 8 * j);
              [v13 updateWithRoamingSuppression:*(a1 + 40)];
              if ([v13 type] == 4)
              {
                v14 = [v13 currentBssSession];
                [v14 updateWithRoamingSuppression:*(a1 + 40)];
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v15 objects:v23 count:16];
          }

          while (v10);
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v4);
  }
}

- (void)updateWithCompatibilityMode:(unsigned __int8)mode
{
  internalQueue = self->_internalQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __48__WiFiUsageMonitor_updateWithCompatibilityMode___block_invoke;
  v4[3] = &unk_2789C6688;
  v4[4] = self;
  modeCopy = mode;
  dispatch_async(internalQueue, v4);
}

- (void)updateCurrentNetworkDetails:(id)details
{
  detailsCopy = details;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__WiFiUsageMonitor_updateCurrentNetworkDetails___block_invoke;
  v7[3] = &unk_2789C6608;
  v7[4] = self;
  v8 = detailsCopy;
  v6 = detailsCopy;
  dispatch_async(internalQueue, v7);
}

void __48__WiFiUsageMonitor_updateCurrentNetworkDetails___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  objc_storeStrong((*(a1 + 32) + 280), *(a1 + 40));
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = [*(*(a1 + 32) + 104) allValues];
  v3 = [v2 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v18;
    do
    {
      v6 = 0;
      do
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v17 + 1) + 8 * v6);
        v13 = 0u;
        v14 = 0u;
        v15 = 0u;
        v16 = 0u;
        v8 = v7;
        v9 = [v8 countByEnumeratingWithState:&v13 objects:v21 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v14;
          do
          {
            v12 = 0;
            do
            {
              if (*v14 != v11)
              {
                objc_enumerationMutation(v8);
              }

              [*(*(&v13 + 1) + 8 * v12++) updateAssociatedNetworkDetails:*(a1 + 40)];
            }

            while (v10 != v12);
            v10 = [v8 countByEnumeratingWithState:&v13 objects:v21 count:16];
          }

          while (v10);
        }

        ++v6;
      }

      while (v6 != v4);
      v4 = [v2 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v4);
  }
}

- (void)updateRealTimeCoex:(BOOL)coex type:(unint64_t)type reasons:(id)reasons
{
  reasonsCopy = reasons;
  internalQueue = self->_internalQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __52__WiFiUsageMonitor_updateRealTimeCoex_type_reasons___block_invoke;
  v11[3] = &unk_2789C7080;
  coexCopy = coex;
  v12 = reasonsCopy;
  typeCopy = type;
  v11[4] = self;
  v10 = reasonsCopy;
  dispatch_async(internalQueue, v11);
}

void __52__WiFiUsageMonitor_updateRealTimeCoex_type_reasons___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v2 = [*(*(a1 + 32) + 104) allValues];
  v3 = [v2 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v18;
    do
    {
      v6 = 0;
      do
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v17 + 1) + 8 * v6);
        v13 = 0u;
        v14 = 0u;
        v15 = 0u;
        v16 = 0u;
        v8 = v7;
        v9 = [v8 countByEnumeratingWithState:&v13 objects:v21 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v14;
          do
          {
            v12 = 0;
            do
            {
              if (*v14 != v11)
              {
                objc_enumerationMutation(v8);
              }

              [*(*(&v13 + 1) + 8 * v12++) setRealtimeCoexStarted:*(a1 + 56) type:*(a1 + 48) reasons:*(a1 + 40)];
            }

            while (v10 != v12);
            v10 = [v8 countByEnumeratingWithState:&v13 objects:v21 count:16];
          }

          while (v10);
        }

        ++v6;
      }

      while (v6 != v4);
      v4 = [v2 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v4);
  }
}

- (void)setAwdlSequence:(id)sequence
{
  sequenceCopy = sequence;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __36__WiFiUsageMonitor_setAwdlSequence___block_invoke;
  v7[3] = &unk_2789C6608;
  v8 = sequenceCopy;
  selfCopy = self;
  v6 = sequenceCopy;
  dispatch_async(internalQueue, v7);
}

void __36__WiFiUsageMonitor_setAwdlSequence___block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v31 objects:v37 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v32;
    v7 = 0.0;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v32 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v9 = *(*(&v31 + 1) + 8 * i);
        v10 = [*(*(a1 + 40) + 280) isCurrentBssOnChannel:v9];
        if (([v9 is5GHz] & 1) != 0 || objc_msgSend(v9, "is6GHz"))
        {
          v7 = v7 + 1.0;
        }

        else if ([v9 is2_4GHz])
        {
          v7 = v7 + 0.5;
        }

        v5 += v10;
      }

      v4 = [v2 countByEnumeratingWithState:&v31 objects:v37 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
    v7 = 0.0;
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = [*(*(a1 + 40) + 104) allValues];
  v11 = [obj countByEnumeratingWithState:&v27 objects:v36 count:16];
  if (v11)
  {
    v12 = v11;
    v22 = *v28;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v28 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v27 + 1) + 8 * j);
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v15 = v14;
        v16 = [v15 countByEnumeratingWithState:&v23 objects:v35 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v24;
          do
          {
            for (k = 0; k != v17; ++k)
            {
              if (*v24 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v20 = *(*(&v23 + 1) + 8 * k);
              [v20 setAwdlSequence:*(a1 + 32) infraScore:v5 p2pScore:v7];
              [v20 setRealTimeCoexStatus:v7 >= 16.0 type:0];
            }

            v17 = [v15 countByEnumeratingWithState:&v23 objects:v35 count:16];
          }

          while (v17);
        }
      }

      v12 = [obj countByEnumeratingWithState:&v27 objects:v36 count:16];
    }

    while (v12);
  }
}

- (void)updateLinkRecoveryDisabled:(BOOL)disabled
{
  internalQueue = self->_internalQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __47__WiFiUsageMonitor_updateLinkRecoveryDisabled___block_invoke;
  v4[3] = &unk_2789C6688;
  v4[4] = self;
  disabledCopy = disabled;
  dispatch_async(internalQueue, v4);
}

void __47__WiFiUsageMonitor_updateLinkRecoveryDisabled___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [*(*(a1 + 32) + 112) allValues];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) updateLinkRecoveryDisabled:*(a1 + 40)];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)updateLinkTestInterval:(unint64_t)interval
{
  internalQueue = self->_internalQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __43__WiFiUsageMonitor_updateLinkTestInterval___block_invoke;
  v4[3] = &unk_2789C7170;
  v4[4] = self;
  v4[5] = interval;
  dispatch_async(internalQueue, v4);
}

void __43__WiFiUsageMonitor_updateLinkTestInterval___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [*(*(a1 + 32) + 112) allValues];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) updateLinkTestInterval:*(a1 + 40)];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)setSteeringRequest:(unint64_t)request preferredChannel:(unint64_t)channel preferredBand:(int)band preferredSSID:(id)d targetSSIDDiffersFromCurrent:(BOOL)current preferredBSS:(id)s ssidIsSplit:(BOOL)split transitionCandidates:(BOOL)self0
{
  dCopy = d;
  sCopy = s;
  internalQueue = self->_internalQueue;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __159__WiFiUsageMonitor_setSteeringRequest_preferredChannel_preferredBand_preferredSSID_targetSSIDDiffersFromCurrent_preferredBSS_ssidIsSplit_transitionCandidates___block_invoke;
  v21[3] = &unk_2789C7198;
  requestCopy = request;
  channelCopy = channel;
  bandCopy = band;
  v21[4] = self;
  v22 = dCopy;
  currentCopy = current;
  v23 = sCopy;
  splitCopy = split;
  candidatesCopy = candidates;
  v19 = sCopy;
  v20 = dCopy;
  dispatch_async(internalQueue, v21);
}

void __159__WiFiUsageMonitor_setSteeringRequest_preferredChannel_preferredBand_preferredSSID_targetSSIDDiffersFromCurrent_preferredBSS_ssidIsSplit_transitionCandidates___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v2 = [*(*(a1 + 32) + 104) allValues];
  v3 = [v2 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v19;
    do
    {
      v6 = 0;
      do
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v18 + 1) + 8 * v6);
        v14 = 0u;
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        v8 = v7;
        v9 = [v8 countByEnumeratingWithState:&v14 objects:v22 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v15;
          do
          {
            v12 = 0;
            do
            {
              if (*v15 != v11)
              {
                objc_enumerationMutation(v8);
              }

              LOWORD(v13) = *(a1 + 77);
              [*(*(&v14 + 1) + 8 * v12++) setSteeringRequest:*(a1 + 56) preferredChannel:*(a1 + 64) preferredBand:*(a1 + 72) preferredSSID:*(a1 + 40) targetSSIDDiffersFromCurrent:*(a1 + 76) preferredBSS:*(a1 + 48) ssidIsSplit:v13 transitionCandidates:?];
            }

            while (v10 != v12);
            v10 = [v8 countByEnumeratingWithState:&v14 objects:v22 count:16];
          }

          while (v10);
        }

        ++v6;
      }

      while (v6 != v4);
      v4 = [v2 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v4);
  }
}

- (void)updateKnownNetworksSupportingSeamless:(id)seamless forBSS:(id)s andSSID:(id)d beaconCache:(id)cache
{
  seamlessCopy = seamless;
  sCopy = s;
  dCopy = d;
  cacheCopy = cache;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __85__WiFiUsageMonitor_updateKnownNetworksSupportingSeamless_forBSS_andSSID_beaconCache___block_invoke;
  block[3] = &unk_2789C6E78;
  v20 = sCopy;
  v21 = cacheCopy;
  v22 = dCopy;
  v23 = seamlessCopy;
  selfCopy = self;
  v15 = seamlessCopy;
  v16 = dCopy;
  v17 = cacheCopy;
  v18 = sCopy;
  dispatch_async(internalQueue, block);
}

void __85__WiFiUsageMonitor_updateKnownNetworksSupportingSeamless_forBSS_andSSID_beaconCache___block_invoke(uint64_t a1, uint64_t a2)
{
  v177 = *MEMORY[0x277D85DE8];
  v127 = objc_opt_new();
  v114 = objc_opt_new();
  v107 = objc_opt_new();
  v109 = objc_opt_new();
  v111 = [WiFiUsagePrivacyFilter isLocallyAdministeredBitSetInBSSData:*(a1 + 32)];
  v158 = 0u;
  v159 = 0u;
  v160 = 0u;
  v161 = 0u;
  v115 = a1;
  obj = *(a1 + 40);
  v118 = [obj countByEnumeratingWithState:&v158 objects:v176 count:16];
  if (v118)
  {
    v128 = 0;
    v116 = *v159;
    v103 = -1;
    v105 = -1;
    do
    {
      for (i = 0; i != v118; ++i)
      {
        if (*v159 != v116)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v158 + 1) + 8 * i);
        v125 = [v4 objectForKey:@"BSSID"];
        v5 = [WiFiUsagePrivacyFilter macAddressData:?];
        v120 = [WiFiUsagePrivacyFilter isLocallyAdministeredBitSetInBSSData:v5];
        v6 = [v4 objectForKey:@"SSID"];
        v123 = v5;
        if (v6)
        {
          v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v6 encoding:4];
        }

        else
        {
          v7 = 0;
        }

        v8 = [v4 objectForKey:@"CHANNEL"];
        v9 = [v8 unsignedIntegerValue];
        v10 = [v4 objectForKey:@"CHANNEL_FLAGS"];
        v11 = [v10 unsignedIntegerValue];
        v12 = [v4 objectForKey:@"RSSI"];
        v13 = v125;
        v14 = +[WiFiUsageBssDetails bssWithIdentifier:channel:channelFlags:rssi:](WiFiUsageBssDetails, "bssWithIdentifier:channel:channelFlags:rssi:", v125, v9, v11, [v12 integerValue]);

        if (v14)
        {
          [v114 addObject:v14];
        }

        if (v6 && [v6 length] && (objc_msgSend(v123, "isEqualToData:", *(v115 + 32)) & 1) == 0 && ((v111 ^ v120) & 1) == 0)
        {
          if ([v7 isEqualToString:*(v115 + 48)])
          {
            ++v128;
          }

          else
          {
            [v127 addObject:v6];
            v15 = [DataComparisonByBytes dataComparisonByBytesWithData1:v123 data2:*(v115 + 32) reference:v6];
            if (+[ObjectComparisonByTokens addComparison:to:ifMinOverlap:](ObjectComparisonByTokens, "addComparison:to:ifMinOverlap:", v15, v107, 4) && [v15 distance] < v105)
            {
              v105 = [v15 distance];
            }

            v16 = [StringComparisonByChars stringComparisonByCharsWithString1:v7 string2:*(v115 + 48) reference:v6];
            if (+[ObjectComparisonByTokens addComparison:to:ifMinOverlap:](ObjectComparisonByTokens, "addComparison:to:ifMinOverlap:", v16, v109, [*(v115 + 48) length] >> 1) && objc_msgSend(v16, "diffTokensCount") != 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v16, "diffTokensCount") < v103)
            {
              v103 = [v16 diffTokensCount];
            }
          }

          v13 = v125;
        }
      }

      v118 = [obj countByEnumeratingWithState:&v158 objects:v176 count:16];
    }

    while (v118);
  }

  else
  {
    v128 = 0;
    v103 = -1;
    v105 = -1;
  }

  v17 = v115;
  v18 = [*(v115 + 56) set];
  [v127 intersectSet:v18];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v19 = [*(v115 + 48) dataUsingEncoding:4];
    *buf = 136315907;
    v169 = "[WiFiUsageMonitor updateKnownNetworksSupportingSeamless:forBSS:andSSID:beaconCache:]_block_invoke";
    v170 = 2160;
    v171 = 1752392040;
    v172 = 2112;
    v173 = v19;
    v174 = 2113;
    v175 = v127;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s -  SSIDTransitionCandidates(excluding %{mask.hash}@):%{private}@\n", buf, 0x2Au);
  }

  v20 = [MEMORY[0x277CCAC30] predicateWithFormat:@"distance == %lu", v105];
  [v107 filterUsingPredicate:v20];

  v21 = [MEMORY[0x277CCAC30] predicateWithFormat:@"diffTokensCount == %lu", v103];
  [v109 filterUsingPredicate:v21];

  v22 = objc_opt_new();
  v154 = 0u;
  v155 = 0u;
  v156 = 0u;
  v157 = 0u;
  v23 = v107;
  v24 = [v23 countByEnumeratingWithState:&v154 objects:v167 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v155;
    do
    {
      for (j = 0; j != v25; ++j)
      {
        if (*v155 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v154 + 1) + 8 * j);
        v29 = [v28 reference];
        v30 = [v22 objectForKeyedSubscript:v29];

        if (!v30)
        {
          v31 = objc_opt_new();
          v32 = [v28 reference];
          [v22 setObject:v31 forKeyedSubscript:v32];
        }

        v33 = [v28 reference];
        v34 = [v22 objectForKeyedSubscript:v33];
        [v34 addObject:v28];
      }

      v25 = [v23 countByEnumeratingWithState:&v154 objects:v167 count:16];
    }

    while (v25);
  }

  v152 = 0u;
  v153 = 0u;
  v150 = 0u;
  v151 = 0u;
  v117 = v109;
  v35 = [v117 countByEnumeratingWithState:&v150 objects:v166 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v151;
    do
    {
      for (k = 0; k != v36; ++k)
      {
        if (*v151 != v37)
        {
          objc_enumerationMutation(v117);
        }

        v39 = *(*(&v150 + 1) + 8 * k);
        v40 = [v39 reference];
        v41 = [v22 objectForKeyedSubscript:v40];

        if (!v41)
        {
          v42 = objc_opt_new();
          v43 = [v39 reference];
          [v22 setObject:v42 forKeyedSubscript:v43];
        }

        v44 = [v39 reference];
        v45 = [v22 objectForKeyedSubscript:v44];
        [v45 addObject:v39];
      }

      v36 = [v117 countByEnumeratingWithState:&v150 objects:v166 count:16];
    }

    while (v36);
  }

  v104 = v23;

  v46 = [v22 keysOfEntriesPassingTest:&__block_literal_global_757];
  v47 = [v46 allObjects];
  v48 = MEMORY[0x277CBEAC0];
  v49 = objc_opt_new();
  v106 = v22;
  v50 = [v22 objectsForKeys:v47 notFoundMarker:v49];
  v101 = v47;
  v51 = [v48 dictionaryWithObjects:v50 forKeys:v47];

  v126 = v51;
  v52 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s -  Top Potential Candidates And Votes:%@\n", "-[WiFiUsageMonitor updateKnownNetworksSupportingSeamless:forBSS:andSSID:beaconCache:]_block_invoke_2", v51];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v53 = [MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v52, "UTF8String")];
    v54 = [v53 UTF8String];
    *buf = 136446210;
    v169 = v54;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
  }

  v102 = v46;
  v124 = [MEMORY[0x277CBEB58] setWithSet:v46];
  [v124 minusSet:v127];
  v55 = objc_opt_new();
  [*(v115 + 64) updateBssPerChannelWith:v114 into:v55 and:0 withChannelInfoList:*(*(v115 + 64) + 264)];
  v56 = [v55 keysOfEntriesPassingTest:&__block_literal_global_768];
  v57 = [v56 count];

  v58 = [v55 keysOfEntriesPassingTest:&__block_literal_global_770];
  v59 = [v58 count];

  v60 = 1;
  if (v57)
  {
    v60 = 2;
  }

  if (v59)
  {
    v61 = v60;
  }

  else
  {
    v61 = v57 != 0;
  }

  v62 = [v55 keysOfEntriesPassingTest:&__block_literal_global_772];
  v63 = [v62 count];

  if (v63)
  {
    v64 = v61 + 1;
  }

  else
  {
    v64 = v61;
  }

  if ([WiFiUsagePrivacyFilter canPerformActionWithSampleRate:2])
  {
    v148 = 0u;
    v149 = 0u;
    v146 = 0u;
    v147 = 0u;
    v108 = [v126 allKeys];
    obja = [v108 countByEnumeratingWithState:&v146 objects:v165 count:16];
    if (obja)
    {
      v110 = *v147;
      do
      {
        v65 = 0;
        do
        {
          if (*v147 != v110)
          {
            objc_enumerationMutation(v108);
          }

          v119 = v65;
          v66 = *(*(&v146 + 1) + 8 * v65);
          v67 = objc_opt_new();
          v68 = [MEMORY[0x277CCABB0] numberWithInteger:v128];
          [v67 setObject:v68 forKeyedSubscript:@"roamCandidatesInScan"];

          v69 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v127, "count")}];
          [v67 setObject:v69 forKeyedSubscript:@"knownCandidatesInScan"];

          v70 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v126, "count")}];
          [v67 setObject:v70 forKeyedSubscript:@"potentialCandidatesInScan"];

          v71 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v127, "containsObject:", v66)}];
          [v67 setObject:v71 forKeyedSubscript:@"potentialCandidateIsKnown"];

          v72 = [MEMORY[0x277CCABB0] numberWithInteger:v64];
          [v67 setObject:v72 forKeyedSubscript:@"uniqueBandsInScan"];

          v73 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v55, "count")}];
          [v67 setObject:v73 forKeyedSubscript:@"uniqueChannelsInScan"];

          v144 = 0u;
          v145 = 0u;
          v142 = 0u;
          v143 = 0u;
          v121 = [v126 objectForKeyedSubscript:v66];
          v74 = [v121 countByEnumeratingWithState:&v142 objects:v164 count:16];
          if (v74)
          {
            v75 = v74;
            v76 = *v143;
            do
            {
              for (m = 0; m != v75; ++m)
              {
                if (*v143 != v76)
                {
                  objc_enumerationMutation(v121);
                }

                v78 = *(*(&v142 + 1) + 8 * m);
                if ([v78 isMemberOfClass:objc_opt_class()])
                {
                  v79 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v78, "sameTokensCount")}];
                  [v67 setObject:v79 forKeyedSubscript:@"SSID_overlap"];

                  v80 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v78, "diffTokensCount")}];
                  [v67 setObject:v80 forKeyedSubscript:@"SSID_diff"];

                  v81 = MEMORY[0x277CCABB0];
                  v82 = [v78 obj1];
                  v83 = [v81 numberWithInteger:{objc_msgSend(v82, "length")}];
                  [v67 setObject:v83 forKeyedSubscript:@"SSID1_length"];

                  v84 = MEMORY[0x277CCABB0];
                  v85 = [v78 obj2];
                  v86 = [v84 numberWithInteger:{objc_msgSend(v85, "length")}];
                  [v67 setObject:v86 forKeyedSubscript:@"SSID2_length"];
                }

                if ([v78 isMemberOfClass:objc_opt_class()])
                {
                  v87 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v78, "sameTokensCount")}];
                  [v67 setObject:v87 forKeyedSubscript:@"BSSID_overlap"];

                  v88 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v78, "diffTokensCount")}];
                  [v67 setObject:v88 forKeyedSubscript:@"BSSID_diff"];

                  v89 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v78, "distance")}];
                  [v67 setObject:v89 forKeyedSubscript:@"BSSID_distance"];
                }
              }

              v75 = [v121 countByEnumeratingWithState:&v142 objects:v164 count:16];
            }

            while (v75);
          }

          v137 = MEMORY[0x277D85DD0];
          v138 = 3221225472;
          v139 = __85__WiFiUsageMonitor_updateKnownNetworksSupportingSeamless_forBSS_andSSID_beaconCache___block_invoke_4;
          v140 = &unk_2789C6A10;
          v141 = v67;
          v90 = v67;
          AnalyticsSendEventLazy();

          v65 = v119 + 1;
        }

        while ((v119 + 1) != obja);
        obja = [v108 countByEnumeratingWithState:&v146 objects:v165 count:16];
      }

      while (obja);
    }

    v17 = v115;
  }

  v135 = 0u;
  v136 = 0u;
  v133 = 0u;
  v134 = 0u;
  v122 = [*(*(v17 + 64) + 104) allValues];
  v91 = [v122 countByEnumeratingWithState:&v133 objects:v163 count:16];
  if (v91)
  {
    v92 = v91;
    v93 = *v134;
    do
    {
      for (n = 0; n != v92; ++n)
      {
        if (*v134 != v93)
        {
          objc_enumerationMutation(v122);
        }

        v95 = *(*(&v133 + 1) + 8 * n);
        v129 = 0u;
        v130 = 0u;
        v131 = 0u;
        v132 = 0u;
        v96 = v95;
        v97 = [v96 countByEnumeratingWithState:&v129 objects:v162 count:16];
        if (v97)
        {
          v98 = v97;
          v99 = *v130;
          do
          {
            for (ii = 0; ii != v98; ++ii)
            {
              if (*v130 != v99)
              {
                objc_enumerationMutation(v96);
              }

              [*(*(&v129 + 1) + 8 * ii) setSSIDTransitionCandidates:v127 SSIDTransitionPotentialCandidates:v126 potentialCandidatesMinusCandidates:v124 roamCandidates:v128 uniqueChannels:objc_msgSend(v55 uniqueBands:{"count"), v64}];
            }

            v98 = [v96 countByEnumeratingWithState:&v129 objects:v162 count:16];
          }

          while (v98);
        }
      }

      v92 = [v122 countByEnumeratingWithState:&v133 objects:v163 count:16];
    }

    while (v92);
  }
}

BOOL __85__WiFiUsageMonitor_updateKnownNetworksSupportingSeamless_forBSS_andSSID_beaconCache___block_invoke_765(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  if ([a2 band])
  {
    v5 = 0;
  }

  else
  {
    v5 = [v4 count] != 0;
  }

  return v5;
}

BOOL __85__WiFiUsageMonitor_updateKnownNetworksSupportingSeamless_forBSS_andSSID_beaconCache___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 band] == 1 && objc_msgSend(v4, "count") != 0;

  return v5;
}

BOOL __85__WiFiUsageMonitor_updateKnownNetworksSupportingSeamless_forBSS_andSSID_beaconCache___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 band] == 2 && objc_msgSend(v4, "count") != 0;

  return v5;
}

- (void)updateScanForwardStats:(id)stats
{
  statsCopy = stats;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__WiFiUsageMonitor_updateScanForwardStats___block_invoke;
  v7[3] = &unk_2789C6608;
  v7[4] = self;
  v8 = statsCopy;
  v6 = statsCopy;
  dispatch_async(internalQueue, v7);
}

void __43__WiFiUsageMonitor_updateScanForwardStats___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v2 = [*(*(a1 + 32) + 104) allValues];
  v3 = [v2 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v18;
    do
    {
      v6 = 0;
      do
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v17 + 1) + 8 * v6);
        v13 = 0u;
        v14 = 0u;
        v15 = 0u;
        v16 = 0u;
        v8 = v7;
        v9 = [v8 countByEnumeratingWithState:&v13 objects:v21 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v14;
          do
          {
            v12 = 0;
            do
            {
              if (*v14 != v11)
              {
                objc_enumerationMutation(v8);
              }

              [*(*(&v13 + 1) + 8 * v12++) updateScanForwardStats:*(a1 + 40)];
            }

            while (v10 != v12);
            v10 = [v8 countByEnumeratingWithState:&v13 objects:v21 count:16];
          }

          while (v10);
        }

        ++v6;
      }

      while (v6 != v4);
      v4 = [v2 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v4);
  }
}

- (void)setUsbStatus:(BOOL)status currentDevices:(id)devices currentNoiseDelta:(int64_t)delta
{
  devicesCopy = devices;
  internalQueue = self->_internalQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __66__WiFiUsageMonitor_setUsbStatus_currentDevices_currentNoiseDelta___block_invoke;
  v11[3] = &unk_2789C7080;
  v11[4] = self;
  v12 = devicesCopy;
  statusCopy = status;
  deltaCopy = delta;
  v10 = devicesCopy;
  dispatch_async(internalQueue, v11);
}

void __66__WiFiUsageMonitor_setUsbStatus_currentDevices_currentNoiseDelta___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  *(*(a1 + 32) + 35) = [*(a1 + 40) count] != 0;
  objc_storeStrong((*(a1 + 32) + 288), *(a1 + 40));
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = [*(*(a1 + 32) + 104) allKeys];
  v3 = [v2 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v18;
    do
    {
      v6 = 0;
      do
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v17 + 1) + 8 * v6);
        v13 = 0u;
        v14 = 0u;
        v15 = 0u;
        v16 = 0u;
        v8 = [*(*(a1 + 32) + 104) objectForKeyedSubscript:{v7, 0}];
        v9 = [v8 countByEnumeratingWithState:&v13 objects:v21 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v14;
          do
          {
            v12 = 0;
            do
            {
              if (*v14 != v11)
              {
                objc_enumerationMutation(v8);
              }

              [*(*(&v13 + 1) + 8 * v12++) updateUsbStatus:*(a1 + 56) currentDevices:*(a1 + 40)];
            }

            while (v10 != v12);
            v10 = [v8 countByEnumeratingWithState:&v13 objects:v21 count:16];
          }

          while (v10);
        }

        ++v6;
      }

      while (v6 != v4);
      v4 = [v2 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v4);
  }

  *(*(a1 + 32) + 296) = *(a1 + 48);
}

- (void)pushTDEventToHUD:(id)d
{
  if (d)
  {
    tdSoftError = self->_tdSoftError;
    if (tdSoftError)
    {
      v4 = [(WiFiSoftError *)tdSoftError updateHUDWithMessage:?];
    }
  }
}

- (void)pushRNFEventToHUD:(BOOL)d
{
  if (self->_rnfSoftError)
  {
    if (d)
    {
      v4 = @"Wi-Fi Assist: cellular fallback is active";
    }

    else
    {
      v4 = @"Wi-Fi Assist: cellular fallback is inactive";
    }

    v6 = [MEMORY[0x277CCACA8] stringWithFormat:v4];
    v5 = [(WiFiSoftError *)self->_rnfSoftError updateHUDWithMessage:v6];
  }
}

+ (id)getTDConfirmedEventStringForDisplay:(id *)display
{
  v3 = &stru_28487EF20;
  if (display->var0)
  {
    v4 = @"Tx PER";
  }

  else
  {
    v4 = &stru_28487EF20;
  }

  v5 = @"Beacon PER";
  if (!display->var1)
  {
    v5 = &stru_28487EF20;
  }

  if (display->var2)
  {
    v6 = @"FW Tx PER";
  }

  else
  {
    v6 = &stru_28487EF20;
  }

  if (display->var3)
  {
    v7 = @"Gateway ARP Failures";
  }

  else
  {
    v7 = &stru_28487EF20;
  }

  if (display->var4)
  {
    v3 = @"Symptoms DNS Errors";
  }

  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@%@%@%@", v4, v5, v6, v7, v3];
  if ([v8 length])
  {
    v9 = [MEMORY[0x277CCAB68] stringWithFormat:@"TD evaluation in progress: high %@ detected", v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)getTDEvalCompleteEventStringForDisplay:(int)display
{
  v3 = @"Roamed";
  v4 = @"Unknown";
  if (display == 13)
  {
    v4 = @"Link down";
  }

  if (display != 14)
  {
    v3 = v4;
  }

  if (display)
  {
    v5 = v3;
  }

  else
  {
    v5 = @"RSSI improved";
  }

  v6 = [(__CFString *)v5 length];
  if (v6)
  {
    v6 = [MEMORY[0x277CCAB68] stringWithFormat:@"TD evaluation complete: outcome %@", v5];
  }

  return v6;
}

- (void)resetDeviceSessionforInterface:(id)interface
{
  interfaceCopy = interface;
  v5 = interfaceCopy;
  if (interfaceCopy)
  {
    internalQueue = self->_internalQueue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __51__WiFiUsageMonitor_resetDeviceSessionforInterface___block_invoke;
    v7[3] = &unk_2789C6608;
    v7[4] = self;
    v8 = interfaceCopy;
    dispatch_async(internalQueue, v7);
  }
}

void __51__WiFiUsageMonitor_resetDeviceSessionforInterface___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = [*(*(a1 + 32) + 104) objectForKeyedSubscript:{*(a1 + 40), 0}];
  v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v7 + 1) + 8 * i);
        if ([v6 type] == 1)
        {
          [v6 sessionDidStart];
          goto LABEL_11;
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (id)faultReasonCount:(unint64_t)count forInterface:(id)interface
{
  interfaceCopy = interface;
  v7 = 0;
  if (interfaceCopy && count - 38 >= 0xFFFFFFFFFFFFFFDBLL)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__1;
    v18 = __Block_byref_object_dispose__1;
    v19 = objc_opt_new();
    internalQueue = self->_internalQueue;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __50__WiFiUsageMonitor_faultReasonCount_forInterface___block_invoke;
    v10[3] = &unk_2789C7200;
    v10[4] = self;
    v11 = interfaceCopy;
    v12 = &v14;
    countCopy = count;
    dispatch_sync(internalQueue, v10);
    v7 = v15[5];

    _Block_object_dispose(&v14, 8);
  }

  return v7;
}

void __50__WiFiUsageMonitor_faultReasonCount_forInterface___block_invoke(void *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [*(a1[4] + 104) objectForKeyedSubscript:{a1[5], 0}];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        v8 = *(*(a1[6] + 8) + 40);
        v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v7, "faultReasonCount:", a1[7])}];
        v10 = [v7 sessionName];
        [v8 setValue:v9 forKey:v10];
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }
}

- (id)getProperty:(id)property forAllSessionsOfInterface:(id)interface
{
  propertyCopy = property;
  interfaceCopy = interface;
  if (interfaceCopy)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = __Block_byref_object_copy__1;
    v19 = __Block_byref_object_dispose__1;
    v20 = objc_opt_new();
    internalQueue = self->_internalQueue;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __58__WiFiUsageMonitor_getProperty_forAllSessionsOfInterface___block_invoke;
    v11[3] = &unk_2789C7228;
    v11[4] = self;
    v12 = interfaceCopy;
    v14 = &v15;
    v13 = propertyCopy;
    dispatch_sync(internalQueue, v11);
    v9 = v16[5];

    _Block_object_dispose(&v15, 8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __58__WiFiUsageMonitor_getProperty_forAllSessionsOfInterface___block_invoke(void *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [*(a1[4] + 104) objectForKeyedSubscript:{a1[5], 0}];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = *v11;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v10 + 1) + 8 * i);
        if ([v6 isSessionActive])
        {
          v7 = *(*(a1[7] + 8) + 40);
          v8 = [v6 valueForKey:a1[6]];
          v9 = [v6 sessionName];
          [v7 setObject:v8 forKey:v9];
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v3);
  }
}

- (void)getMobileAssets
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __35__WiFiUsageMonitor_getMobileAssets__block_invoke;
  v2[3] = &unk_2789C7250;
  v2[4] = self;
  [WCAFetchWiFiBehaviorParameters fetchWiFiBehaviorWithCompletion:v2];
}

void __35__WiFiUsageMonitor_getMobileAssets__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  NSLog(&cfstr_SReceivedWcafe.isa, "[WiFiUsageMonitor getMobileAssets]_block_invoke", v3);
  v4 = *(a1 + 32);
  v5 = *(v4 + 144);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__WiFiUsageMonitor_getMobileAssets__block_invoke_2;
  block[3] = &unk_2789C6608;
  v8 = v3;
  v9 = v4;
  v6 = v3;
  dispatch_async(v5, block);
}

void __35__WiFiUsageMonitor_getMobileAssets__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) datapathTelemetry];

  if (v2)
  {
    v3 = [*(a1 + 32) datapathTelemetry];
    [WiFiUsageLQMConfiguration setConfig:v3];
  }

  else
  {
    NSLog(&cfstr_SKeyNotFoundIn.isa, "[WiFiUsageMonitor getMobileAssets]_block_invoke_2", @"DataPathTelemetry");
  }

  v4 = [*(a1 + 32) apProfile];

  if (v4)
  {
    v5 = [*(a1 + 32) apProfile];
    [WiFiUsageAccessPointProfileConfiguration setConfig:v5];
  }

  else
  {
    NSLog(&cfstr_SKeyNotFoundIn.isa, "[WiFiUsageMonitor getMobileAssets]_block_invoke_2", @"AccessPointProfile");
  }

  v6 = [*(a1 + 32) beaconParsing];

  if (v6)
  {
    v7 = [*(a1 + 32) beaconParsing];
    [WiFiUsageBeaconParsingConfiguration setConfig:v7];
  }

  else
  {
    NSLog(&cfstr_SKeyNotFoundIn.isa, "[WiFiUsageMonitor getMobileAssets]_block_invoke_2", @"BeaconParsing");
  }

  v8 = [*(a1 + 32) lqmDistribution];

  if (v8)
  {
    v9 = [*(a1 + 32) lqmDistribution];
    [WiFiUsageLQMConfiguration setConfig:v9];

    v10 = [WiFiUsageLQMDistributionConfiguration getConfigForKey:@"telemetrySampling"];
    v11 = *(a1 + 40);
    v12 = *(v11 + 208);
    *(v11 + 208) = v10;

    v13 = [WiFiUsageLQMDistributionConfiguration getConfigForKey:@"analyticsStoreSampling"];
    v14 = *(a1 + 40);
    v15 = *(v14 + 216);
    *(v14 + 216) = v13;

    MEMORY[0x2821F96F8](v13, v15);
  }

  else
  {
    NSLog(&cfstr_SKeyNotFoundIn.isa, "[WiFiUsageMonitor getMobileAssets]_block_invoke_2", @"LQMDistribution");
  }
}

- (void)submitBeaconInfoToCAForInterface:.cold.1()
{
  v4 = *MEMORY[0x277D85DE8];
  v0 = 136315394;
  v1 = "[WiFiUsageMonitor submitBeaconInfoToCAForInterface:]";
  v2 = 2112;
  v3 = 0;
  _os_log_error_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s - Invalid interfaceName: %@", &v0, 0x16u);
}

@end