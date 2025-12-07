@interface WiFiUsageNetworkSession
- (BOOL)isSessionHarvestable;
- (WiFiUsageNetworkSession)initWithInterfaceName:(id)name andCapabilities:(id)capabilities;
- (void)displayStateDidChange:(BOOL)change;
- (void)joinStateDidChange:(id)change withReason:(unint64_t)reason lastDisconnectReason:(int64_t)disconnectReason lastJoinFailure:(int64_t)failure andNetworkDetails:(id)details;
- (void)linkStateDidChange:(BOOL)change isInvoluntary:(BOOL)involuntary linkChangeReason:(int64_t)reason linkChangeSubreason:(int64_t)subreason withNetworkDetails:(id)details;
- (void)processForgetNetwork:(id)network;
- (void)scanningStateDidChange:(BOOL)change client:(unint64_t)client neighborBSS:(id)s otherBSS:(id)sS;
- (void)sessionDidEnd;
- (void)sessionDidStart;
@end

@implementation WiFiUsageNetworkSession

- (WiFiUsageNetworkSession)initWithInterfaceName:(id)name andCapabilities:(id)capabilities
{
  v15.receiver = self;
  v15.super_class = WiFiUsageNetworkSession;
  v4 = [(WiFiUsageSession *)&v15 initWithSessionType:3 andInterfaceName:name andCapabilities:capabilities];
  lastNetworkDetails = v4->_lastNetworkDetails;
  v4->_lastNetworkDetails = 0;

  v4->_linkUp = 0;
  v4->_networkUsageDuration = 0.0;
  v4->_dnuEnabled = 0;
  v4->_dnuEnabled = DiagnosticLogSubmissionEnabled();
  if (_os_feature_enabled_impl())
  {
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.WiFiLinkState-Biome-Event", v6);
    WiFiLinkStateBiomeEventQueue = v4->_WiFiLinkStateBiomeEventQueue;
    v4->_WiFiLinkStateBiomeEventQueue = v7;
  }

  else
  {
    v9 = v4->_WiFiLinkStateBiomeEventQueue;
    v4->_WiFiLinkStateBiomeEventQueue = 0;

    NSLog(&cfstr_SDoNotAllocate.isa, "[WiFiUsageNetworkSession initWithInterfaceName:andCapabilities:]");
  }

  v10 = [MEMORY[0x277CBEB58] set];
  neighborBssList = v4->_neighborBssList;
  v4->_neighborBssList = v10;

  v12 = [MEMORY[0x277CBEB58] set];
  otherBssList = v4->_otherBssList;
  v4->_otherBssList = v12;

  return v4;
}

- (void)displayStateDidChange:(BOOL)change
{
  v5.receiver = self;
  v5.super_class = WiFiUsageNetworkSession;
  [(WiFiUsageSession *)&v5 displayStateDidChange:?];
  if (!change && ![(WiFiUsageSession *)self poweredOn])
  {
    if ([(WiFiUsageSession *)self isSessionActive])
    {
      NSLog(&cfstr_SNetworkSessio.isa, "[WiFiUsageNetworkSession displayStateDidChange:]");
      [(WiFiUsageNetworkSession *)self sessionDidEnd];
    }
  }
}

- (void)joinStateDidChange:(id)change withReason:(unint64_t)reason lastDisconnectReason:(int64_t)disconnectReason lastJoinFailure:(int64_t)failure andNetworkDetails:(id)details
{
  changeCopy = change;
  detailsCopy = details;
  v24.receiver = self;
  v24.super_class = WiFiUsageNetworkSession;
  [(WiFiUsageSession *)&v24 joinStateDidChange:changeCopy withReason:reason lastDisconnectReason:disconnectReason lastJoinFailure:failure andNetworkDetails:detailsCopy];
  lastNetworkDetails = self->_lastNetworkDetails;
  if (changeCopy)
  {
    v15 = lastNetworkDetails == 0;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;
  if (v15)
  {
    isSessionActive = [(WiFiUsageSession *)self isSessionActive];
    lastNetworkDetails = self->_lastNetworkDetails;
    if (!lastNetworkDetails)
    {
      if (!isSessionActive)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

LABEL_20:
    networkName = [(WiFiUsageNetworkDetails *)lastNetworkDetails networkName];
    v20 = [networkName isEqual:changeCopy];

    isSessionActive2 = [(WiFiUsageSession *)self isSessionActive];
    if (v20)
    {
      if (((v16 | !isSessionActive2) & 1) == 0)
      {
        goto LABEL_26;
      }

LABEL_25:
      NSLog(&cfstr_SNetworkSessio_0.isa, "[WiFiUsageNetworkSession joinStateDidChange:withReason:lastDisconnectReason:lastJoinFailure:andNetworkDetails:]");
      [(WiFiUsageNetworkSession *)self sessionDidStart];
      goto LABEL_26;
    }

    if (!isSessionActive2 && !isSessionActive)
    {
      goto LABEL_25;
    }

LABEL_24:
    NSLog(&cfstr_SNetworkSessio.isa, "[WiFiUsageNetworkSession joinStateDidChange:withReason:lastDisconnectReason:lastJoinFailure:andNetworkDetails:]");
    [(WiFiUsageNetworkSession *)self sessionDidEnd];
    goto LABEL_25;
  }

  if (changeCopy || !lastNetworkDetails)
  {
    if (!changeCopy || !lastNetworkDetails)
    {
      goto LABEL_26;
    }

    isSessionActive = 0;
    goto LABEL_20;
  }

  isSessionActive3 = [(WiFiUsageSession *)self isSessionActive];
  if (!failure && isSessionActive3)
  {
    NSLog(&cfstr_SNetworkSessio.isa, "[WiFiUsageNetworkSession joinStateDidChange:withReason:lastDisconnectReason:lastJoinFailure:andNetworkDetails:]");
    [(WiFiUsageNetworkSession *)self sessionDidEnd];
  }

LABEL_26:
  if (detailsCopy)
  {
    v22 = [detailsCopy copy];
    v23 = self->_lastNetworkDetails;
    self->_lastNetworkDetails = v22;
  }
}

- (void)processForgetNetwork:(id)network
{
  networkCopy = network;
  if (_os_feature_enabled_impl())
  {
    if (networkCopy)
    {
      networkName = [networkCopy networkName];

      if (networkName)
      {
        WiFiLinkStateBiomeEventQueue = self->_WiFiLinkStateBiomeEventQueue;
        if (WiFiLinkStateBiomeEventQueue)
        {
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __48__WiFiUsageNetworkSession_processForgetNetwork___block_invoke;
          block[3] = &unk_2789C6630;
          v8 = networkCopy;
          dispatch_async(WiFiLinkStateBiomeEventQueue, block);
        }

        else
        {
          NSLog(&cfstr_SWifilinkstate.isa, "[WiFiUsageNetworkSession processForgetNetwork:]");
        }
      }

      else
      {
        NSLog(&cfstr_SNetworknameNu.isa, "[WiFiUsageNetworkSession processForgetNetwork:]");
      }
    }

    else
    {
      NSLog(&cfstr_SWifiusagenetw.isa, "[WiFiUsageNetworkSession processForgetNetwork:]");
    }
  }

  else
  {
    NSLog(&cfstr_SDoNothingAsWi.isa, "[WiFiUsageNetworkSession processForgetNetwork:]");
  }
}

void __48__WiFiUsageNetworkSession_processForgetNetwork___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = __softlink__BiomeLibrary();
  v3 = [v2 Device];
  v4 = [v3 Wireless];
  v5 = [v4 WiFi];

  if (v5)
  {
    v6 = [v5 pruner];
    if (v6)
    {
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __48__WiFiUsageNetworkSession_processForgetNetwork___block_invoke_23;
      v8[3] = &unk_2789C7598;
      v9 = *(a1 + 32);
      [v6 deleteEventsPassingTest:v8];
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v7 = [*(a1 + 32) networkName];
      *buf = 136315650;
      v11 = "[WiFiUsageNetworkSession processForgetNetwork:]_block_invoke";
      v12 = 2160;
      v13 = 1752392040;
      v14 = 2112;
      v15 = v7;
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: BMPruner NUll - SSID:%{mask.hash}@ ", buf, 0x20u);
    }

    goto LABEL_8;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v6 = [*(a1 + 32) networkName];
    *buf = 136315650;
    v11 = "[WiFiUsageNetworkSession processForgetNetwork:]_block_invoke";
    v12 = 2160;
    v13 = 1752392040;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: BMStream NUll - SSID:%{mask.hash}@ ", buf, 0x20u);
LABEL_8:
  }
}

uint64_t __48__WiFiUsageNetworkSession_processForgetNetwork___block_invoke_23(uint64_t a1, void *a2)
{
  v3 = [a2 eventBody];
  v4 = [*(a1 + 32) networkName];
  v5 = [v3 SSID];
  v6 = [v4 isEqual:v5];

  return v6;
}

- (void)linkStateDidChange:(BOOL)change isInvoluntary:(BOOL)involuntary linkChangeReason:(int64_t)reason linkChangeSubreason:(int64_t)subreason withNetworkDetails:(id)details
{
  involuntaryCopy = involuntary;
  changeCopy = change;
  v48 = *MEMORY[0x277D85DE8];
  detailsCopy = details;
  date = [MEMORY[0x277CBEAA8] date];
  linkUp = self->_linkUp;
  if (changeCopy & ~linkUp)
  {
    v32 = date;
    objc_storeStrong(&self->_lastLinkUpTime, date);
    self->_linkUp = 1;
    networkName = [detailsCopy networkName];
    networkName2 = [(WiFiUsageNetworkDetails *)self->_lastNetworkDetails networkName];
    if ([networkName isEqualToString:networkName2])
    {
      [(NSDate *)self->_lastLinkUpTime timeIntervalSinceDate:self->_lastLinkDownTime];
      v15 = v14;

      if (v15 < 0x14uLL)
      {
        v16 = 0;
        v17 = ![(WiFiUsageSession *)self isSessionActive];
LABEL_11:
        date = v32;
        goto LABEL_14;
      }
    }

    else
    {
    }

    networkName3 = [(WiFiUsageNetworkDetails *)self->_lastNetworkDetails networkName];
    v20 = [networkName3 length];

    v16 = v20 != 0;
    networkName4 = [detailsCopy networkName];
    v22 = [networkName4 length];

    if (v22)
    {
      v23 = [detailsCopy copy];
      lastNetworkDetails = self->_lastNetworkDetails;
      self->_lastNetworkDetails = v23;
    }

    v17 = 1;
    goto LABEL_11;
  }

  if (!changeCopy & linkUp)
  {
    objc_storeStrong(&self->_lastLinkDownTime, date);
    [(NSDate *)self->_lastLinkDownTime timeIntervalSinceDate:self->_lastLinkUpTime];
    v16 = 0;
    self->_networkUsageDuration = v18 + self->_networkUsageDuration;
    self->_linkUp = 0;
  }

  else
  {
    v16 = 0;
  }

  v17 = 1;
LABEL_14:
  if (!_os_feature_enabled_impl())
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_24;
    }

    *buf = 136315907;
    v41 = "[WiFiUsageNetworkSession linkStateDidChange:isInvoluntary:linkChangeReason:linkChangeSubreason:withNetworkDetails:]";
    v42 = 2113;
    v43 = detailsCopy;
    v44 = 1024;
    v45 = changeCopy & ~linkUp;
    v46 = 1024;
    v47 = !changeCopy & linkUp;
    v27 = MEMORY[0x277D86220];
    v28 = "%s: Do Nothing as WiFiDirectDonation Feature Flag Disabled! details:%{private}@ linkWentUp:%d linkWentDown:%d ";
    goto LABEL_23;
  }

  if (!detailsCopy || linkUp == changeCopy)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_24;
    }

    *buf = 136315907;
    v41 = "[WiFiUsageNetworkSession linkStateDidChange:isInvoluntary:linkChangeReason:linkChangeSubreason:withNetworkDetails:]";
    v42 = 2113;
    v43 = detailsCopy;
    v44 = 1024;
    v45 = changeCopy & ~linkUp;
    v46 = 1024;
    v47 = !changeCopy & linkUp;
    v27 = MEMORY[0x277D86220];
    v28 = "%s: InValid inputs details:%{private}@ linkWentUp:%d linkWentDown:%d";
LABEL_23:
    _os_log_impl(&dword_2332D7000, v27, OS_LOG_TYPE_DEFAULT, v28, buf, 0x22u);
LABEL_24:
    if (!v16)
    {
      goto LABEL_32;
    }

LABEL_25:
    if ([(WiFiUsageSession *)self isAssociated])
    {
      v29 = self->_lastNetworkDetails;
      if (v29)
      {
        v30 = date;
        v31 = [(WiFiUsageNetworkDetails *)v29 copy];
        [(WiFiUsageSession *)self setNetworkDetailsAtEnd:v31];

        date = v30;
      }
    }

    v36.receiver = self;
    v36.super_class = WiFiUsageNetworkSession;
    [(WiFiUsageSession *)&v36 linkStateDidChange:changeCopy isInvoluntary:involuntaryCopy linkChangeReason:reason linkChangeSubreason:subreason withNetworkDetails:detailsCopy];
    NSLog(&cfstr_SNetworkSessio.isa, "[WiFiUsageNetworkSession linkStateDidChange:isInvoluntary:linkChangeReason:linkChangeSubreason:withNetworkDetails:]");
    [(WiFiUsageNetworkSession *)self sessionDidEnd];
    if (v17)
    {
      goto LABEL_33;
    }

    goto LABEL_34;
  }

  v25 = date;
  WiFiLinkStateBiomeEventQueue = self->_WiFiLinkStateBiomeEventQueue;
  if (WiFiLinkStateBiomeEventQueue)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __116__WiFiUsageNetworkSession_linkStateDidChange_isInvoluntary_linkChangeReason_linkChangeSubreason_withNetworkDetails___block_invoke;
    block[3] = &unk_2789C6688;
    v38 = detailsCopy;
    v39 = changeCopy & ~linkUp;
    dispatch_async(WiFiLinkStateBiomeEventQueue, block);
  }

  else
  {
    NSLog(&cfstr_SWifilinkstate.isa, "[WiFiUsageNetworkSession linkStateDidChange:isInvoluntary:linkChangeReason:linkChangeSubreason:withNetworkDetails:]");
  }

  date = v25;
  if (v16)
  {
    goto LABEL_25;
  }

LABEL_32:
  v36.receiver = self;
  v36.super_class = WiFiUsageNetworkSession;
  [(WiFiUsageSession *)&v36 linkStateDidChange:changeCopy isInvoluntary:involuntaryCopy linkChangeReason:reason linkChangeSubreason:subreason withNetworkDetails:detailsCopy];
  if (v17)
  {
LABEL_33:
    NSLog(&cfstr_SNetworkSessio_0.isa, "[WiFiUsageNetworkSession linkStateDidChange:isInvoluntary:linkChangeReason:linkChangeSubreason:withNetworkDetails:]");
    [(WiFiUsageNetworkSession *)self sessionDidStart];
  }

LABEL_34:
}

void __116__WiFiUsageNetworkSession_linkStateDidChange_isInvoluntary_linkChangeReason_linkChangeSubreason_withNetworkDetails___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v20 = 0;
  v21 = &v20;
  v22 = 0x2050000000;
  v2 = getBMDeviceWiFiClass_softClass;
  v23 = getBMDeviceWiFiClass_softClass;
  if (!getBMDeviceWiFiClass_softClass)
  {
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __getBMDeviceWiFiClass_block_invoke;
    v25 = &unk_2789C75C0;
    v26 = &v20;
    __getBMDeviceWiFiClass_block_invoke(buf);
    v2 = v21[3];
  }

  v3 = v2;
  _Block_object_dispose(&v20, 8);
  v4 = [v2 alloc];
  v5 = [*(a1 + 32) networkName];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 40)];
  v7 = [v4 initWithSSID:v5 starting:v6];

  if (v7)
  {
    v8 = __softlink__BiomeLibrary();
    v9 = [v8 Device];
    v10 = [v9 Wireless];
    v11 = [v10 WiFi];

    if (v11)
    {
      v12 = [v11 source];
      v13 = v12;
      if (v12)
      {
        [v12 sendEvent:v7];
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v18 = [*(a1 + 32) networkName];
          v19 = *(a1 + 40);
          *buf = 136315906;
          *&buf[4] = "[WiFiUsageNetworkSession linkStateDidChange:isInvoluntary:linkChangeReason:linkChangeSubreason:withNetworkDetails:]_block_invoke";
          *&buf[12] = 2160;
          *&buf[14] = 1752392040;
          *&buf[22] = 2112;
          v25 = v18;
          LOWORD(v26) = 1024;
          *(&v26 + 2) = v19;
          _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: BMSource NUll - SSID:%{mask.hash}@ linkstate:%d ", buf, 0x26u);
        }
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v16 = [*(a1 + 32) networkName];
      v17 = *(a1 + 40);
      *buf = 136315906;
      *&buf[4] = "[WiFiUsageNetworkSession linkStateDidChange:isInvoluntary:linkChangeReason:linkChangeSubreason:withNetworkDetails:]_block_invoke";
      *&buf[12] = 2160;
      *&buf[14] = 1752392040;
      *&buf[22] = 2112;
      v25 = v16;
      LOWORD(v26) = 1024;
      *(&v26 + 2) = v17;
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: BMStream NUll - SSID:%{mask.hash}@ linkstate:%d ", buf, 0x26u);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v14 = [*(a1 + 32) networkName];
    v15 = *(a1 + 40);
    *buf = 136315906;
    *&buf[4] = "[WiFiUsageNetworkSession linkStateDidChange:isInvoluntary:linkChangeReason:linkChangeSubreason:withNetworkDetails:]_block_invoke";
    *&buf[12] = 2160;
    *&buf[14] = 1752392040;
    *&buf[22] = 2112;
    v25 = v14;
    LOWORD(v26) = 1024;
    *(&v26 + 2) = v15;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: BMDeviceWiFi Allocation failed SSID:%{mask.hash}@ linkstate:%d ", buf, 0x26u);
  }
}

- (void)scanningStateDidChange:(BOOL)change client:(unint64_t)client neighborBSS:(id)s otherBSS:(id)sS
{
  changeCopy = change;
  sCopy = s;
  sSCopy = sS;
  v16.receiver = self;
  v16.super_class = WiFiUsageNetworkSession;
  [(WiFiUsageSession *)&v16 scanningStateDidChange:changeCopy client:client neighborBSS:sCopy otherBSS:sSCopy];
  if (self->_linkUp)
  {
    if (sCopy)
    {
      neighborBssList = self->_neighborBssList;
      allObjects = [sCopy allObjects];
      [(NSMutableSet *)neighborBssList addObjectsFromArray:allObjects];
    }

    if (sSCopy)
    {
      otherBssList = self->_otherBssList;
      allObjects2 = [sSCopy allObjects];
      [(NSMutableSet *)otherBssList addObjectsFromArray:allObjects2];
    }
  }
}

- (void)sessionDidStart
{
  v3.receiver = self;
  v3.super_class = WiFiUsageNetworkSession;
  [(WiFiUsageSession *)&v3 sessionDidStart];
  self->_networkUsageDuration = 0.0;
  [(NSMutableSet *)self->_neighborBssList removeAllObjects];
  [(NSMutableSet *)self->_otherBssList removeAllObjects];
}

- (void)sessionDidEnd
{
  if (self->_networkUsageDuration != 0.0)
  {
    [(WiFiUsageSession *)self setSessionDuration:?];
    [(WiFiUsageSession *)self setSessionStartTime:0];
  }

  [(WiFiUsageSession *)self setNeighborBssCount:[(NSMutableSet *)self->_neighborBssList count]];
  [(WiFiUsageSession *)self setOtherBssCount:[(NSMutableSet *)self->_otherBssList count]];
  v5.receiver = self;
  v5.super_class = WiFiUsageNetworkSession;
  [(WiFiUsageSession *)&v5 sessionDidEnd];
  if ([(WiFiUsageNetworkSession *)self isSessionHarvestable])
  {
    v3 = [[WiFiUsageConnectionQualityRecord alloc] initWithUsageSession:self andNeighborBssList:self->_neighborBssList andOtherBssList:self->_otherBssList];
    v4 = v3;
    if (v3)
    {
      [(WiFiUsageConnectionQualityRecord *)v3 queryNetworkPerformanceFeedAndSubmitToGeoWiFi];
    }
  }
}

- (BOOL)isSessionHarvestable
{
  networkDetails = [(WiFiUsageSession *)self networkDetails];
  if ([(WiFiUsageSession *)self privacyRestrictionDisabled])
  {
    goto LABEL_16;
  }

  if (!self->_dnuEnabled || networkDetails == 0)
  {
    goto LABEL_22;
  }

  if ([networkDetails isHidden])
  {
    NSLog(&cfstr_SHiddenNetwork.isa, "[WiFiUsageNetworkSession isSessionHarvestable]");
    goto LABEL_22;
  }

  if ([networkDetails isHome])
  {
    NSLog(&cfstr_SHomeNetworkNo.isa, "[WiFiUsageNetworkSession isSessionHarvestable]");
    goto LABEL_22;
  }

  if ([networkDetails hasNoMap])
  {
    NSLog(&cfstr_SPrivateNetwor.isa, "[WiFiUsageNetworkSession isSessionHarvestable]");
    goto LABEL_22;
  }

  if ([networkDetails isPersonalHotspot])
  {
    NSLog(&cfstr_SPersonalHotsp.isa, "[WiFiUsageNetworkSession isSessionHarvestable]");
    goto LABEL_22;
  }

  connectedBss = [networkDetails connectedBss];
  if ([connectedBss networkAccessCode] != 2)
  {
    connectedBss2 = [networkDetails connectedBss];
    networkAccessCode = [connectedBss2 networkAccessCode];

    if (networkAccessCode == 3)
    {
      goto LABEL_16;
    }

    if ([networkDetails usageRank] <= 3)
    {
      NSLog(&cfstr_STopNetworkNot.isa, "[WiFiUsageNetworkSession isSessionHarvestable]");
    }

    else
    {
      [(WiFiUsageSession *)self sessionDuration];
      if (v8 <= 60.0)
      {
        NSLog(&cfstr_SShortDataSess.isa, "[WiFiUsageNetworkSession isSessionHarvestable]");
      }

      else
      {
        if ([WiFiUsagePrivacyFilter canPerformActionWithSampleRate:0])
        {
          goto LABEL_16;
        }

        NSLog(&cfstr_SLossCoinTossN.isa, "[WiFiUsageNetworkSession isSessionHarvestable]");
      }
    }

LABEL_22:
    v9 = 0;
    goto LABEL_17;
  }

LABEL_16:
  v9 = 1;
LABEL_17:

  return v9;
}

@end