@interface WiFiUsageRealTimeCoexSession
- (BOOL)isCurrentBandPreferredBand;
- (BOOL)isCurrentChannelPreferredChannel;
- (WiFiUsageRealTimeCoexSession)initWithInterfaceName:(id)name andCapabilities:(id)capabilities;
- (id)copyWithZone:(_NSZone *)zone;
- (id)eventDictionary:(BOOL)dictionary;
- (id)eventDictionaryByBand:(int)band isFirst:(BOOL)first;
- (void)joinStateDidChange:(id)change withReason:(unint64_t)reason lastDisconnectReason:(int64_t)disconnectReason lastJoinFailure:(int64_t)failure andNetworkDetails:(id)details;
- (void)linkStateDidChange:(BOOL)change isInvoluntary:(BOOL)involuntary linkChangeReason:(int64_t)reason linkChangeSubreason:(int64_t)subreason withNetworkDetails:(id)details;
- (void)processIPv4Changes:(id)changes;
- (void)processIPv6Changes:(id)changes;
- (void)sessionDidStart;
- (void)setPreferredChannelAndBandUsageWithReferenceDate:(id)date;
- (void)setRealTimeCoexStatus:(BOOL)status type:(unint64_t)type;
- (void)setRealtimeCoexStarted:(BOOL)started type:(unint64_t)type reasons:(id)reasons;
- (void)setSteeringRequest:(unint64_t)request preferredChannel:(unint64_t)channel preferredBand:(int)band preferredSSID:(id)d targetSSIDDiffersFromCurrent:(BOOL)current preferredBSS:(id)s ssidIsSplit:(BOOL)split transitionCandidates:(BOOL)self0;
- (void)summarizeSession;
- (void)updateAssociatedNetworkDetails:(id)details;
- (void)updatePreferredChannelAndBandUsageWithReferenceDate:(id)date;
- (void)updateRtCoexInOptimalDuration:(BOOL)duration;
@end

@implementation WiFiUsageRealTimeCoexSession

- (void)setRealtimeCoexStarted:(BOOL)started type:(unint64_t)type reasons:(id)reasons
{
  startedCopy = started;
  reasonsCopy = reasons;
  if ([(WiFiUsageSession *)self isSessionActive]&& !startedCopy)
  {
    sessionName = [(WiFiUsageSession *)self sessionName];
    NSLog(&cfstr_SSessionEnded.isa, "[WiFiUsageRealTimeCoexSession setRealtimeCoexStarted:type:reasons:]", sessionName);

    [(WiFiUsageSession *)self sessionDidEnd];
  }

  if (startedCopy)
  {
    isSessionActive = [(WiFiUsageSession *)self isSessionActive];
    sessionName2 = [(WiFiUsageSession *)self sessionName];
    v11 = [WiFiUsagePrivacyFilter getLabelForRTCoexType:type];
    v12 = [reasonsCopy componentsJoinedByString:@"&"];
    v13 = v12;
    if (isSessionActive)
    {
      NSLog(&cfstr_SSessionAlread.isa, "[WiFiUsageRealTimeCoexSession setRealtimeCoexStarted:type:reasons:]", sessionName2, v11, v12);
    }

    else
    {
      NSLog(&cfstr_SSessionStarte_1.isa, "[WiFiUsageRealTimeCoexSession setRealtimeCoexStarted:type:reasons:]", sessionName2, v11, v12);

      self->_rtCoexType = type;
      v14 = [reasonsCopy componentsJoinedByString:@"&"];
      rtCoexSubType = self->_rtCoexSubType;
      self->_rtCoexSubType = v14;

      [(WiFiUsageRealTimeCoexSession *)self sessionDidStart];
    }
  }
}

- (void)setSteeringRequest:(unint64_t)request preferredChannel:(unint64_t)channel preferredBand:(int)band preferredSSID:(id)d targetSSIDDiffersFromCurrent:(BOOL)current preferredBSS:(id)s ssidIsSplit:(BOOL)split transitionCandidates:(BOOL)self0
{
  currentCopy = current;
  v12 = *&band;
  dCopy = d;
  sCopy = s;
  v17 = [WiFiUsagePrivacyFilter getLabelForSteeringRequest:request];
  v18 = [WiFiUsagePrivacyFilter bandAsString:v12];
  v19 = v18;
  v20 = @"NO";
  v28 = currentCopy;
  if (currentCopy)
  {
    v21 = @"YES";
  }

  else
  {
    v21 = @"NO";
  }

  if (split)
  {
    v22 = @"YES";
  }

  else
  {
    v22 = @"NO";
  }

  if (candidates)
  {
    v20 = @"YES";
  }

  NSLog(&cfstr_STypeLuPreferr.isa, "[WiFiUsageRealTimeCoexSession setSteeringRequest:preferredChannel:preferredBand:preferredSSID:targetSSIDDiffersFromCurrent:preferredBSS:ssidIsSplit:transitionCandidates:]", v17, request, channel, v18, dCopy, v21, sCopy, v22, v20);

  self->_lastRequestType = request;
  if (channel != 0x7FFFFFFFFFFFFFFFLL)
  {
    self->_lastRequestPreferredChannel = channel;
  }

  if (v12 != 3)
  {
    self->_lastRequestPreferredBand = v12;
  }

  lastRequestPreferredSSID = self->_lastRequestPreferredSSID;
  self->_lastRequestPreferredSSID = dCopy;
  v24 = dCopy;

  self->_lastRequestDifferentSSID = v28;
  lastRequestPreferredBSS = self->_lastRequestPreferredBSS;
  self->_lastRequestPreferredBSS = sCopy;

  self->_isSplitSSID = split;
  self->_hasCandidates = candidates;
  if (request <= 2)
  {
    v26 = *off_2789C84E0[request];
    ++*(&self->super.super.isa + v26);
  }
}

- (void)updateRtCoexInOptimalDuration:(BOOL)duration
{
  if (self->_lastRtCoexOptimalStatusChange)
  {
    v3 = !duration;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    v6 = [MEMORY[0x277CBEAA8] now];
    [v6 timeIntervalSinceDate:self->_lastRtCoexOptimalStatusChange];
    self->_rtCoexInOptimalDuration = v5 + self->_rtCoexInOptimalDuration;
  }
}

- (void)setRealTimeCoexStatus:(BOOL)status type:(unint64_t)type
{
  statusCopy = status;
  v7 = [MEMORY[0x277CBEAA8] now];
  if ((!self->_lastRtCoexOptimalStatusChange || self->_isRtCoexOptimal && !statusCopy) && ([(WiFiUsageRealTimeCoexSession *)self updateRtCoexInOptimalDuration:statusCopy], [(WiFiUsageRealTimeCoexSession *)self setLastRtCoexOptimalStatusChange:v7], !self->_lastRtCoexOptimalStatusChange) || statusCopy && !self->_isRtCoexOptimal)
  {
    [(WiFiUsageRealTimeCoexSession *)self setLastRtCoexOptimalStatusChange:v7];
  }

  self->_isRtCoexOptimal = statusCopy;
  if (self->_firstRtCoexOptimal)
  {
    v8 = 1;
  }

  else
  {
    v8 = !statusCopy;
  }

  if (!v8)
  {
    objc_storeStrong(&self->_firstRtCoexOptimal, v7);
  }

  v9.receiver = self;
  v9.super_class = WiFiUsageRealTimeCoexSession;
  [(WiFiUsageSession *)&v9 setRealTimeCoexStatus:statusCopy type:type];
}

- (void)linkStateDidChange:(BOOL)change isInvoluntary:(BOOL)involuntary linkChangeReason:(int64_t)reason linkChangeSubreason:(int64_t)subreason withNetworkDetails:(id)details
{
  involuntaryCopy = involuntary;
  changeCopy = change;
  v12 = MEMORY[0x277CBEAA8];
  detailsCopy = details;
  v14 = [v12 now];
  [(WiFiUsageRealTimeCoexSession *)self updatePreferredChannelAndBandUsageWithReferenceDate:v14];
  v15.receiver = self;
  v15.super_class = WiFiUsageRealTimeCoexSession;
  [(WiFiUsageSession *)&v15 linkStateDidChange:changeCopy isInvoluntary:involuntaryCopy linkChangeReason:reason linkChangeSubreason:subreason withNetworkDetails:detailsCopy];

  [(WiFiUsageRealTimeCoexSession *)self setPreferredChannelAndBandUsageWithReferenceDate:v14];
}

- (void)joinStateDidChange:(id)change withReason:(unint64_t)reason lastDisconnectReason:(int64_t)disconnectReason lastJoinFailure:(int64_t)failure andNetworkDetails:(id)details
{
  changeCopy = change;
  detailsCopy = details;
  if (changeCopy && reason == 12)
  {
    if (!self->_firstSSIDTransition)
    {
      v14 = [MEMORY[0x277CBEAA8] now];
      firstSSIDTransition = self->_firstSSIDTransition;
      self->_firstSSIDTransition = v14;
LABEL_12:
    }
  }

  else if (changeCopy && reason == 2)
  {
    if (!self->_firstManualJoin)
    {
      v16 = [MEMORY[0x277CBEAA8] now];
      firstManualJoin = self->_firstManualJoin;
      self->_firstManualJoin = v16;
    }

    if (self->_firstSSIDTransition && !self->_firstManualJoinAfterSSIDTransition)
    {
      v18 = [MEMORY[0x277CBEAA8] now];
      firstSSIDTransition = self->_firstManualJoinAfterSSIDTransition;
      self->_firstManualJoinAfterSSIDTransition = v18;
      goto LABEL_12;
    }
  }

  NSLog(&cfstr_SFirstssidtran.isa, "[WiFiUsageRealTimeCoexSession joinStateDidChange:withReason:lastDisconnectReason:lastJoinFailure:andNetworkDetails:]", self->_firstSSIDTransition, self->_firstManualJoinAfterSSIDTransition, self->_firstManualJoin);
  v19.receiver = self;
  v19.super_class = WiFiUsageRealTimeCoexSession;
  [(WiFiUsageSession *)&v19 joinStateDidChange:changeCopy withReason:reason lastDisconnectReason:disconnectReason lastJoinFailure:failure andNetworkDetails:detailsCopy];
}

- (void)processIPv4Changes:(id)changes
{
  changesCopy = changes;
  if ([(WiFiUsageSession *)self lastJoinReason]== 12)
  {
    ipV4Details = [(WiFiUsageSession *)self ipV4Details];
    self->_hasDifferentIpv4DetailsAfterSSIDTransition = [ipV4Details isEqual:changesCopy] ^ 1;

    v6 = [MEMORY[0x277CBEAA8] now];
    firstIPUpdateAfterSSIDTransition = self->_firstIPUpdateAfterSSIDTransition;
    self->_firstIPUpdateAfterSSIDTransition = v6;
  }

  v10.receiver = self;
  v10.super_class = WiFiUsageRealTimeCoexSession;
  v8 = [-[WiFiUsageRealTimeCoexSession class](&v10 class)];
  NSLog(&cfstr_SLastjoinreaso.isa, "[WiFiUsageRealTimeCoexSession processIPv4Changes:]", v8, self->_firstIPUpdateAfterSSIDTransition);

  v9.receiver = self;
  v9.super_class = WiFiUsageRealTimeCoexSession;
  [(WiFiUsageSession *)&v9 processIPv4Changes:changesCopy];
}

- (void)processIPv6Changes:(id)changes
{
  changesCopy = changes;
  if ([(WiFiUsageSession *)self lastJoinReason]== 12)
  {
    ipV6Details = [(WiFiUsageSession *)self ipV6Details];
    self->_hasDifferentIpv6DetailsAfterSSIDTransition = [ipV6Details isEqual:changesCopy] ^ 1;
  }

  if (!self->_firstIPUpdateAfterSSIDTransition)
  {
    v6 = [MEMORY[0x277CBEAA8] now];
    firstIPUpdateAfterSSIDTransition = self->_firstIPUpdateAfterSSIDTransition;
    self->_firstIPUpdateAfterSSIDTransition = v6;

    v10.receiver = self;
    v10.super_class = WiFiUsageRealTimeCoexSession;
    v8 = [-[WiFiUsageRealTimeCoexSession class](&v10 class)];
    NSLog(&cfstr_SLastjoinreaso.isa, "[WiFiUsageRealTimeCoexSession processIPv6Changes:]", v8, self->_firstIPUpdateAfterSSIDTransition);
  }

  v9.receiver = self;
  v9.super_class = WiFiUsageRealTimeCoexSession;
  [(WiFiUsageSession *)&v9 processIPv6Changes:changesCopy];
}

- (void)summarizeSession
{
  v3 = [MEMORY[0x277CBEAA8] now];
  [(WiFiUsageRealTimeCoexSession *)self updateRtCoexInOptimalDuration:self->_isRtCoexOptimal];
  [(WiFiUsageRealTimeCoexSession *)self updatePreferredChannelAndBandUsageWithReferenceDate:v3];
  [(WiFiUsageRealTimeCoexSession *)self setPreferredChannelAndBandUsageWithReferenceDate:v3];
  v4.receiver = self;
  v4.super_class = WiFiUsageRealTimeCoexSession;
  [(WiFiUsageSession *)&v4 summarizeSession];
}

- (id)eventDictionary:(BOOL)dictionary
{
  v4 = MEMORY[0x277CBEB38];
  v70.receiver = self;
  v70.super_class = WiFiUsageRealTimeCoexSession;
  v5 = [(WiFiUsageSession *)&v70 eventDictionary:dictionary];
  v6 = [v4 dictionaryWithDictionary:v5];

  if (v6)
  {
    firstSSIDTransition = self->_firstSSIDTransition;
    sessionStartTime = [(WiFiUsageSession *)self sessionStartTime];
    [(NSDate *)firstSSIDTransition timeIntervalSinceDate:sessionStartTime];
    v10 = v9;

    [(NSDate *)self->_firstIPUpdateAfterSSIDTransition timeIntervalSinceDate:self->_firstSSIDTransition];
    v12 = v11;
    firstManualJoin = self->_firstManualJoin;
    sessionStartTime2 = [(WiFiUsageSession *)self sessionStartTime];
    [(NSDate *)firstManualJoin timeIntervalSinceDate:sessionStartTime2];
    v16 = v15;

    [(NSDate *)self->_firstManualJoinAfterSSIDTransition timeIntervalSinceDate:self->_firstSSIDTransition];
    v18 = v17;
    v19 = [WiFiUsagePrivacyFilter getLabelForRTCoexType:self->_rtCoexType];
    [v6 setObject:v19 forKeyedSubscript:@"coexSessionTrigger"];

    [v6 setObject:self->_rtCoexSubType forKeyedSubscript:@"coexSessionReason"];
    v20 = [WiFiUsagePrivacyFilter getLabelForSteeringRequest:self->_lastRequestType];
    [v6 setObject:v20 forKeyedSubscript:@"coexSteeringLastRequestType"];

    if (self->_firstSSIDTransition)
    {
      v21 = [WiFiUsagePrivacyFilter getBinTimeInterval:1 As:v10];
      [v6 setObject:v21 forKeyedSubscript:@"timeToSSIDTransition"];
    }

    if (self->_firstIPUpdateAfterSSIDTransition)
    {
      v22 = [WiFiUsagePrivacyFilter getBinTimeInterval:1 As:v12];
      [v6 setObject:v22 forKeyedSubscript:@"timeToCompleteDHCP"];
    }

    if (self->_firstManualJoin)
    {
      v23 = [WiFiUsagePrivacyFilter getBinTimeInterval:1 As:v16];
      [v6 setObject:v23 forKeyedSubscript:@"timeToManualJoinAttempt"];
    }

    if (self->_firstManualJoinAfterSSIDTransition)
    {
      v24 = [WiFiUsagePrivacyFilter getBinTimeInterval:1 As:v18];
      [v6 setObject:v24 forKeyedSubscript:@"timeSSIDTransitionToManualJoinAttempt"];
    }

    if (self->_lastRequestPreferredBand != 3)
    {
      v25 = [WiFiUsagePrivacyFilter bandAsString:?];
      [v6 setObject:v25 forKeyedSubscript:@"coexSteeringRequestLastPreferredBand"];

      v26 = MEMORY[0x277CCABB0];
      lastRequestPreferredBand = self->_lastRequestPreferredBand;
      networkDetails = [(WiFiUsageSession *)self networkDetails];
      connectedBss = [networkDetails connectedBss];
      v30 = [v26 numberWithBool:{lastRequestPreferredBand == objc_msgSend(connectedBss, "band")}];
      [v6 setObject:v30 forKeyedSubscript:@"bandAtEndIsTargetBand"];

      preferredBandDuration = self->_preferredBandDuration;
      [(WiFiUsageSession *)self sessionDuration];
      v33 = [WiFiUsagePrivacyFilter timePercentage:preferredBandDuration overTotalDuration:v32];
      [v6 setObject:v33 forKeyedSubscript:@"durationOnPreferredBandPerc"];

      if (self->_lastRequestPreferredChannel != 0x7FFFFFFFFFFFFFFFLL)
      {
        v34 = [MEMORY[0x277CCABB0] numberWithBool:{-[WiFiUsageRealTimeCoexSession isCurrentChannelPreferredChannel](self, "isCurrentChannelPreferredChannel")}];
        [v6 setObject:v34 forKeyedSubscript:@"channelAtEndIsTargetChannel"];

        preferredChannelDuration = self->_preferredChannelDuration;
        [(WiFiUsageSession *)self sessionDuration];
        v37 = [WiFiUsagePrivacyFilter timePercentage:preferredChannelDuration overTotalDuration:v36];
        [v6 setObject:v37 forKeyedSubscript:@"durationOnPreferredChannelPerc"];
      }
    }

    if (self->_lastRequestType != 3)
    {
      v38 = [MEMORY[0x277CCABB0] numberWithBool:self->_lastRequestPreferredSSID != 0];
      [v6 setObject:v38 forKeyedSubscript:@"coexSteeringLastRequestHasPreferredSSID"];

      if (self->_lastRequestPreferredSSID)
      {
        v39 = [MEMORY[0x277CCABB0] numberWithBool:self->_lastRequestDifferentSSID];
        [v6 setObject:v39 forKeyedSubscript:@"coexSteeringLastRequestPreferredSSIDDiffers"];

        v40 = MEMORY[0x277CCABB0];
        lastRequestPreferredSSID = self->_lastRequestPreferredSSID;
        networkDetails2 = [(WiFiUsageSession *)self networkDetails];
        networkName = [networkDetails2 networkName];
        v44 = [v40 numberWithBool:{-[NSString isEqualToString:](lastRequestPreferredSSID, "isEqualToString:", networkName)}];
        [v6 setObject:v44 forKeyedSubscript:@"ssidAtEndIsTargetSSID"];
      }

      lastRequestPreferredBSS = self->_lastRequestPreferredBSS;
      if (lastRequestPreferredBSS)
      {
        v46 = MEMORY[0x277CCABB0];
        networkDetails3 = [(WiFiUsageSession *)self networkDetails];
        connectedBss2 = [networkDetails3 connectedBss];
        bssid = [connectedBss2 bssid];
        v50 = [v46 numberWithBool:{-[NSString isEqualToString:](lastRequestPreferredBSS, "isEqualToString:", bssid)}];
        [v6 setObject:v50 forKeyedSubscript:@"bssAtEndIsTargetBSS"];

        v51 = self->_lastRequestPreferredBSS != 0;
      }

      else
      {
        v51 = 0;
      }

      v52 = [MEMORY[0x277CCABB0] numberWithBool:v51];
      [v6 setObject:v52 forKeyedSubscript:@"coexSteeringLastRequestHasPreferredBSS"];
    }

    v53 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_requestSteerToPreferredChannelCount];
    [v6 setObject:v53 forKeyedSubscript:@"requestSteerToPreferredChannelCount"];

    v54 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_requestSteerCount];
    [v6 setObject:v54 forKeyedSubscript:@"requestSteerCount"];

    v55 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_requestDisconnectCount];
    [v6 setObject:v55 forKeyedSubscript:@"requestDisconnect"];

    firstRtCoexOptimal = self->_firstRtCoexOptimal;
    if (firstRtCoexOptimal)
    {
      sessionStartTime3 = [(WiFiUsageSession *)self sessionStartTime];
      [(NSDate *)firstRtCoexOptimal timeIntervalSinceDate:sessionStartTime3];
      v59 = v58;

      v60 = [WiFiUsagePrivacyFilter getBinFor:v59 In:&unk_2848BAF88 WithLowestEdge:@"0" As:1];
      [v6 setObject:v60 forKeyedSubscript:@"timeToOptimalCoex"];

      v61 = [MEMORY[0x277CCABB0] numberWithDouble:v59];
      [v6 setObject:v61 forKeyedSubscript:@"timeToOptimalCoex_raw"];

      [(WiFiUsageSession *)self sessionDuration];
      v63 = [WiFiUsagePrivacyFilter timePercentage:v59 overTotalDuration:v62];
      [v6 setObject:v63 forKeyedSubscript:@"timeToOptimalCoexPercSession"];

      rtCoexInOptimalDuration = self->_rtCoexInOptimalDuration;
      [(WiFiUsageSession *)self sessionDuration];
      v66 = [WiFiUsagePrivacyFilter timePercentage:rtCoexInOptimalDuration overTotalDuration:v65];
      [v6 setObject:v66 forKeyedSubscript:@"inOptimalCoexPercSession"];

      v67 = [MEMORY[0x277CCABB0] numberWithDouble:self->_rtCoexInOptimalDuration];
      [v6 setObject:v67 forKeyedSubscript:@"inOptimalCoexDuration"];
    }

    v68 = v6;
  }

  return v6;
}

- (id)eventDictionaryByBand:(int)band isFirst:(BOOL)first
{
  v5 = MEMORY[0x277CBEB38];
  v10.receiver = self;
  v10.super_class = WiFiUsageRealTimeCoexSession;
  v6 = [(WiFiUsageSession *)&v10 eventDictionaryByBand:*&band isFirst:first];
  v7 = [v5 dictionaryWithDictionary:v6];

  v8 = [(WiFiUsageRealTimeCoexSession *)self eventDictionary:1];
  [v7 addEntriesFromDictionary:v8];

  return v7;
}

- (WiFiUsageRealTimeCoexSession)initWithInterfaceName:(id)name andCapabilities:(id)capabilities
{
  v5.receiver = self;
  v5.super_class = WiFiUsageRealTimeCoexSession;
  return [(WiFiUsageSession *)&v5 initWithSessionType:8 andInterfaceName:name andCapabilities:capabilities];
}

- (void)sessionDidStart
{
  v13.receiver = self;
  v13.super_class = WiFiUsageRealTimeCoexSession;
  [(WiFiUsageSession *)&v13 sessionDidStart];
  self->_lastRequestType = 3;
  self->_lastRequestPreferredChannel = 0x7FFFFFFFFFFFFFFFLL;
  self->_lastRequestPreferredBand = 3;
  lastRequestPreferredSSID = self->_lastRequestPreferredSSID;
  self->_lastRequestPreferredSSID = 0;

  self->_lastRequestDifferentSSID = 0;
  lastRequestPreferredBSS = self->_lastRequestPreferredBSS;
  self->_lastRequestPreferredBSS = 0;

  self->_isSplitSSID = 0;
  self->_hasCandidates = 0;
  self->_isRtCoexOptimal = 1;
  firstRtCoexOptimal = self->_firstRtCoexOptimal;
  self->_firstRtCoexOptimal = 0;

  lastRtCoexOptimalStatusChange = self->_lastRtCoexOptimalStatusChange;
  self->_lastRtCoexOptimalStatusChange = 0;

  self->_rtCoexInOptimalDuration = 0.0;
  self->_requestSteerToPreferredChannelCount = 0;
  self->_requestSteerCount = 0;
  self->_requestDisconnectCount = 0;
  lastEnterPreferredChannel = self->_lastEnterPreferredChannel;
  self->_lastEnterPreferredChannel = 0;

  self->_preferredChannelDuration = 0.0;
  lastEnterPreferredBand = self->_lastEnterPreferredBand;
  self->_lastEnterPreferredBand = 0;

  self->_preferredBandDuration = 0.0;
  firstSSIDTransition = self->_firstSSIDTransition;
  self->_firstSSIDTransition = 0;

  firstManualJoin = self->_firstManualJoin;
  self->_firstManualJoin = 0;

  firstManualJoinAfterSSIDTransition = self->_firstManualJoinAfterSSIDTransition;
  self->_firstManualJoinAfterSSIDTransition = 0;

  firstIPUpdateAfterSSIDTransition = self->_firstIPUpdateAfterSSIDTransition;
  self->_firstIPUpdateAfterSSIDTransition = 0;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = WiFiUsageRealTimeCoexSession;
  v4 = [(WiFiUsageSession *)&v8 copyWithZone:zone];
  v5 = v4;
  if (v4)
  {
    v4[1502] = self->_rtCoexType;
    objc_storeStrong(v4 + 1503, self->_rtCoexSubType);
    v5[1504] = self->_lastRequestType;
    v5[1505] = self->_lastRequestPreferredChannel;
    *(v5 + 3002) = self->_lastRequestPreferredBand;
    objc_storeStrong(v5 + 1506, self->_lastRequestPreferredSSID);
    objc_storeStrong(v5 + 1507, self->_lastRequestPreferredBSS);
    *(v5 + 12001) = self->_isSplitSSID;
    *(v5 + 12002) = self->_hasCandidates;
    *(v5 + 12005) = self->_isRtCoexOptimal;
    objc_storeStrong(v5 + 1508, self->_firstRtCoexOptimal);
    objc_storeStrong(v5 + 1509, self->_lastRtCoexOptimalStatusChange);
    v5[1510] = *&self->_rtCoexInOptimalDuration;
    v5[1519] = self->_requestSteerToPreferredChannelCount;
    v5[1520] = self->_requestSteerCount;
    v5[1521] = self->_requestDisconnectCount;
    objc_storeStrong(v5 + 1511, self->_lastEnterPreferredChannel);
    v5[1512] = *&self->_preferredChannelDuration;
    objc_storeStrong(v5 + 1513, self->_lastEnterPreferredBand);
    v5[1514] = *&self->_preferredBandDuration;
    objc_storeStrong(v5 + 1515, self->_firstSSIDTransition);
    objc_storeStrong(v5 + 1516, self->_firstIPUpdateAfterSSIDTransition);
    objc_storeStrong(v5 + 1517, self->_firstManualJoin);
    objc_storeStrong(v5 + 1518, self->_firstManualJoinAfterSSIDTransition);
    v6 = v5;
  }

  return v5;
}

- (BOOL)isCurrentChannelPreferredChannel
{
  if (self->_lastRequestPreferredBand == 3)
  {
    return 0;
  }

  lastRequestPreferredChannel = self->_lastRequestPreferredChannel;
  if (lastRequestPreferredChannel == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  networkDetails = [(WiFiUsageSession *)self networkDetails];
  connectedBss = [networkDetails connectedBss];
  if (lastRequestPreferredChannel == [connectedBss channel])
  {
    lastRequestPreferredBand = self->_lastRequestPreferredBand;
    networkDetails2 = [(WiFiUsageSession *)self networkDetails];
    connectedBss2 = [networkDetails2 connectedBss];
    v4 = lastRequestPreferredBand == [connectedBss2 band];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isCurrentBandPreferredBand
{
  lastRequestPreferredBand = self->_lastRequestPreferredBand;
  if (lastRequestPreferredBand == 3)
  {
    return 0;
  }

  networkDetails = [(WiFiUsageSession *)self networkDetails];
  connectedBss = [networkDetails connectedBss];
  v3 = lastRequestPreferredBand == [connectedBss band];

  return v3;
}

- (void)updateAssociatedNetworkDetails:(id)details
{
  v4 = MEMORY[0x277CBEAA8];
  detailsCopy = details;
  v6 = [v4 now];
  [(WiFiUsageRealTimeCoexSession *)self updatePreferredChannelAndBandUsageWithReferenceDate:v6];
  v7.receiver = self;
  v7.super_class = WiFiUsageRealTimeCoexSession;
  [(WiFiUsageSession *)&v7 updateAssociatedNetworkDetails:detailsCopy];

  [(WiFiUsageRealTimeCoexSession *)self setPreferredChannelAndBandUsageWithReferenceDate:v6];
}

- (void)updatePreferredChannelAndBandUsageWithReferenceDate:(id)date
{
  dateCopy = date;
  if ([(WiFiUsageRealTimeCoexSession *)self isCurrentChannelPreferredChannel]&& self->_lastEnterPreferredChannel)
  {
    [dateCopy timeIntervalSinceDate:?];
    self->_preferredChannelDuration = v4 + self->_preferredChannelDuration;
    lastEnterPreferredChannel = self->_lastEnterPreferredChannel;
    self->_lastEnterPreferredChannel = 0;
  }

  if ([(WiFiUsageRealTimeCoexSession *)self isCurrentBandPreferredBand]&& self->_lastEnterPreferredBand)
  {
    [dateCopy timeIntervalSinceDate:?];
    self->_preferredBandDuration = v6 + self->_preferredBandDuration;
    lastEnterPreferredBand = self->_lastEnterPreferredBand;
    self->_lastEnterPreferredBand = 0;
  }
}

- (void)setPreferredChannelAndBandUsageWithReferenceDate:(id)date
{
  dateCopy = date;
  if ([(WiFiUsageRealTimeCoexSession *)self isCurrentChannelPreferredChannel])
  {
    objc_storeStrong(&self->_lastEnterPreferredChannel, date);
  }

  if ([(WiFiUsageRealTimeCoexSession *)self isCurrentBandPreferredBand])
  {
    objc_storeStrong(&self->_lastEnterPreferredBand, date);
  }
}

@end