@interface WiFiUsageRangingSession
- (WiFiUsageRangingSession)init;
- (id)sessionSummary:(BOOL)summary;
- (void)addRangingRttSampleWithRssi:(int64_t)rssi rtt:(int64_t)rtt snr:(unint64_t)snr flags:(unint64_t)flags channel:(unint64_t)channel coreId:(unint64_t)id bitErrorRate:(unint64_t)rate phyError:(unint64_t)self0 andPeerSnr:(unint64_t)self1 andPeerCoreId:(unint64_t)self2 andPeerBitErrorRate:(unint64_t)self3 andPeerPhyError:(unint64_t)self4;
- (void)rangingCompletedWithValidCount:(unint64_t)count resultStatus:(int64_t)status resultFlags:(unint64_t)flags;
- (void)rangingLinkUp;
- (void)rangingSessionRequestedWithSelfPreferredChannel:(unint64_t)channel selfMainChannel:(unint64_t)mainChannel selfChannelFlags:(unint64_t)flags peerPreferredChannel:(unint64_t)preferredChannel peerMainChannel:(unint64_t)peerMainChannel peerChannelFlags:(unint64_t)channelFlags requester:(id)requester;
- (void)rangingStartedWithNumMeasurements:(unint64_t)measurements;
@end

@implementation WiFiUsageRangingSession

- (WiFiUsageRangingSession)init
{
  v9.receiver = self;
  v9.super_class = WiFiUsageRangingSession;
  v2 = [(WiFiUsageRangingSession *)&v9 init];
  sessionStartTimestamp = v2->_sessionStartTimestamp;
  v2->_sessionStartTimestamp = 0;

  sessionLinkUpTimestamp = v2->_sessionLinkUpTimestamp;
  v2->_sessionLinkUpTimestamp = 0;

  peerDiscoveryTimestamp = v2->_peerDiscoveryTimestamp;
  v2->_peerDiscoveryTimestamp = 0;

  rangingStartedTimestamp = v2->_rangingStartedTimestamp;
  v2->_rangingStartedTimestamp = 0;

  rangingCompletionTimestamp = v2->_rangingCompletionTimestamp;
  v2->_rangingCompletionTimestamp = 0;

  return v2;
}

- (void)rangingSessionRequestedWithSelfPreferredChannel:(unint64_t)channel selfMainChannel:(unint64_t)mainChannel selfChannelFlags:(unint64_t)flags peerPreferredChannel:(unint64_t)preferredChannel peerMainChannel:(unint64_t)peerMainChannel peerChannelFlags:(unint64_t)channelFlags requester:(id)requester
{
  v16 = MEMORY[0x277CBEAA8];
  requesterCopy = requester;
  date = [v16 date];
  sessionStartTimestamp = self->_sessionStartTimestamp;
  self->_sessionStartTimestamp = date;

  self->_selfPreferredChannel = channel;
  self->_selfMainChannel = mainChannel;
  self->_selfChannelFlags = flags;
  self->_peerPreferredChannel = preferredChannel;
  self->_peerMainChannel = peerMainChannel;
  self->_peerChannelFlags = channelFlags;
  v20 = [requesterCopy copy];

  requester = self->_requester;
  self->_requester = v20;

  sessionLinkUpTimestamp = self->_sessionLinkUpTimestamp;
  self->_sessionLinkUpTimestamp = 0;

  peerDiscoveryTimestamp = self->_peerDiscoveryTimestamp;
  self->_peerDiscoveryTimestamp = 0;

  rangingStartedTimestamp = self->_rangingStartedTimestamp;
  self->_rangingStartedTimestamp = 0;

  rangingCompletionTimestamp = self->_rangingCompletionTimestamp;
  self->_rangingCompletionTimestamp = 0;

  *&self->_measurementStatus = 0u;
  *&self->_linkUpLatency = 0u;
  *&self->_numRequestedMeasurements = 0u;
  rttSamples = self->_rttSamples;

  [(NSMutableArray *)rttSamples removeAllObjects];
}

- (void)rangingLinkUp
{
  date = [MEMORY[0x277CBEAA8] date];
  sessionLinkUpTimestamp = self->_sessionLinkUpTimestamp;
  self->_sessionLinkUpTimestamp = date;

  MEMORY[0x2821F96F8](date, sessionLinkUpTimestamp);
}

- (void)rangingStartedWithNumMeasurements:(unint64_t)measurements
{
  date = [MEMORY[0x277CBEAA8] date];
  if (!self->_sessionLinkUpTimestamp)
  {
    objc_storeStrong(&self->_sessionLinkUpTimestamp, date);
  }

  if (!self->_peerDiscoveryTimestamp)
  {
    objc_storeStrong(&self->_peerDiscoveryTimestamp, date);
  }

  rangingStartedTimestamp = self->_rangingStartedTimestamp;
  self->_rangingStartedTimestamp = date;
  v7 = date;

  self->_numRequestedMeasurements = measurements;
  [(NSMutableArray *)self->_rttSamples removeAllObjects];

  self->_numValidMeasurements = 0;
  self->_measurementStatus = 0;
  self->_measurementFlags = 0;
}

- (void)rangingCompletedWithValidCount:(unint64_t)count resultStatus:(int64_t)status resultFlags:(unint64_t)flags
{
  date = [MEMORY[0x277CBEAA8] date];
  rangingCompletionTimestamp = self->_rangingCompletionTimestamp;
  self->_rangingCompletionTimestamp = date;

  self->_numValidMeasurements = count;
  self->_measurementStatus = status;
  self->_measurementFlags = flags;
  if (self->_sessionStartTimestamp)
  {
    peerDiscoveryTimestamp = self->_peerDiscoveryTimestamp;
    if (peerDiscoveryTimestamp)
    {
      [(NSDate *)peerDiscoveryTimestamp timeIntervalSinceDate:?];
      self->_linkUpLatency = v12;
    }
  }

  if (self->_rangingStartedTimestamp)
  {
    v13 = self->_rangingCompletionTimestamp;
    if (v13)
    {
      [(NSDate *)v13 timeIntervalSinceDate:?];
      self->_rangingLatency = v14;
    }
  }
}

- (void)addRangingRttSampleWithRssi:(int64_t)rssi rtt:(int64_t)rtt snr:(unint64_t)snr flags:(unint64_t)flags channel:(unint64_t)channel coreId:(unint64_t)id bitErrorRate:(unint64_t)rate phyError:(unint64_t)self0 andPeerSnr:(unint64_t)self1 andPeerCoreId:(unint64_t)self2 andPeerBitErrorRate:(unint64_t)self3 andPeerPhyError:(unint64_t)self4
{
  v24 = objc_alloc_init(WiFiUsageRangingRttSample);
  [(WiFiUsageRangingRttSample *)v24 setRssi:rssi];
  [(WiFiUsageRangingRttSample *)v24 setRtt:rtt];
  [(WiFiUsageRangingRttSample *)v24 setFlags:flags];
  [(WiFiUsageRangingRttSample *)v24 setChannel:channel];
  [(WiFiUsageRangingRttSample *)v24 setSelfSnr:snr];
  [(WiFiUsageRangingRttSample *)v24 setSelfCoreId:id];
  [(WiFiUsageRangingRttSample *)v24 setSelfBitErrorRate:rate];
  [(WiFiUsageRangingRttSample *)v24 setSelfPhyError:error];
  [(WiFiUsageRangingRttSample *)v24 setPeerSnr:peerSnr];
  [(WiFiUsageRangingRttSample *)v24 setPeerCoreId:coreId];
  [(WiFiUsageRangingRttSample *)v24 setPeerBitErrorRate:errorRate];
  [(WiFiUsageRangingRttSample *)v24 setPeerPhyError:phyError];
  rttSamples = self->_rttSamples;
  if (!rttSamples)
  {
    array = [MEMORY[0x277CBEB18] array];
    v23 = self->_rttSamples;
    self->_rttSamples = array;

    rttSamples = self->_rttSamples;
  }

  [(NSMutableArray *)rttSamples addObject:v24, coreId];
}

- (id)sessionSummary:(BOOL)summary
{
  v54 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [dictionary setObject:@"Ranging" forKeyedSubscript:@"SessionName"];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:(self->_linkUpLatency * 1000.0)];
  [dictionary setObject:v5 forKeyedSubscript:@"LinkLatency"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:(self->_rangingLatency * 1000.0)];
  [dictionary setObject:v6 forKeyedSubscript:@"RangingLatency"];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_numRequestedMeasurements];
  [dictionary setObject:v7 forKeyedSubscript:@"RequestedMeasurements"];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_numValidMeasurements];
  [dictionary setObject:v8 forKeyedSubscript:@"ValidMeasurements"];

  v9 = [MEMORY[0x277CCABB0] numberWithInteger:self->_measurementStatus];
  [dictionary setObject:v9 forKeyedSubscript:@"MeasurementStatus"];

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_measurementFlags];
  [dictionary setObject:v10 forKeyedSubscript:@"MeasurementFlags"];

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_selfMainChannel];
  [dictionary setObject:v11 forKeyedSubscript:@"SelfMainChannel"];

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_selfPreferredChannel];
  [dictionary setObject:v12 forKeyedSubscript:@"SelfPreferredChannel"];

  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_selfChannelFlags];
  [dictionary setObject:v13 forKeyedSubscript:@"SelfChannelFlags"];

  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_peerMainChannel];
  [dictionary setObject:v14 forKeyedSubscript:@"PeerMainChannel"];

  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_peerPreferredChannel];
  [dictionary setObject:v15 forKeyedSubscript:@"PeerPreferredChannel"];

  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_peerChannelFlags];
  [dictionary setObject:v16 forKeyedSubscript:@"PeerChannelFlags"];

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = self->_rttSamples;
  v17 = [(NSMutableArray *)obj countByEnumeratingWithState:&v49 objects:v53 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = 1;
    v20 = *v50;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v50 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v49 + 1) + 8 * i);
        v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"SampleRSSI%d", v19];
        v24 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v22, "rssi")}];
        [dictionary setObject:v24 forKeyedSubscript:v23];

        v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"SampleRTT%d", v19];

        v26 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v22, "rtt")}];
        [dictionary setObject:v26 forKeyedSubscript:v25];

        v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"SampleFlags%d", v19];

        v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v22, "flags")}];
        [dictionary setObject:v28 forKeyedSubscript:v27];

        v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"SampleChannel%d", v19];

        v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v22, "channel")}];
        [dictionary setObject:v30 forKeyedSubscript:v29];

        v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"SampleSelfSNR%d", v19];

        v32 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v22, "selfSnr")}];
        [dictionary setObject:v32 forKeyedSubscript:v31];

        v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"SampleSelfCoreID%d", v19];

        v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v22, "selfCoreId")}];
        [dictionary setObject:v34 forKeyedSubscript:v33];

        v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"SampleSelfBER%d", v19];

        v36 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v22, "selfBitErrorRate")}];
        [dictionary setObject:v36 forKeyedSubscript:v35];

        v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"SampleSelfPHYError%d", v19];

        v38 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v22, "selfPhyError")}];
        [dictionary setObject:v38 forKeyedSubscript:v37];

        v39 = [MEMORY[0x277CCACA8] stringWithFormat:@"SamplePeerSNR%d", v19];

        v40 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v22, "peerSnr")}];
        [dictionary setObject:v40 forKeyedSubscript:v39];

        v41 = [MEMORY[0x277CCACA8] stringWithFormat:@"SamplePeerCoreID%d", v19];

        v42 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v22, "peerCoreId")}];
        [dictionary setObject:v42 forKeyedSubscript:v41];

        v43 = [MEMORY[0x277CCACA8] stringWithFormat:@"SamplePeerBER%d", v19];

        v44 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v22, "peerBitErrorRate")}];
        [dictionary setObject:v44 forKeyedSubscript:v43];

        v45 = [MEMORY[0x277CCACA8] stringWithFormat:@"SamplePeerPHYError%d", v19];

        v46 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v22, "peerPhyError")}];
        [dictionary setObject:v46 forKeyedSubscript:v45];

        v19 = (v19 + 1);
      }

      v18 = [(NSMutableArray *)obj countByEnumeratingWithState:&v49 objects:v53 count:16];
    }

    while (v18);
  }

  return dictionary;
}

@end