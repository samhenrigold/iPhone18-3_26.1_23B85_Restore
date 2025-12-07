@interface WCM_CA_BTConnectedDevicesHandler
- (WCM_CA_BTConnectedDevicesHandler)init;
- (id)getProfileName:(int64_t)name;
- (void)dealloc;
- (void)disableCoexStatsMetricsAt:(double)at;
- (void)enableCoexStatsMetrics:(int64_t)metrics at:(double)at;
- (void)resetBTCoexStatsMetrics;
- (void)submitEvent:(id)event;
- (void)updateBTCoexConnectedDevices:(WCM_BTConnections *)devices at:(double)at;
- (void)updateBTCoexStats_tddCnt:(unsigned int)cnt hybridCnt:(unsigned int)hybridCnt btDurMs:(unsigned int)ms totDurMs:(unsigned int)durMs parallelCnt:(unsigned int)parallelCnt btDurAirMs:(unsigned int)airMs wlrssiCoex:(char)coex btrssiCoex:(char)self0 activeProfileFor2G:(int64_t)self1 btPowerState:(BOOL)self2 at:(double)self3;
- (void)updateBTCoexWiFiState:(int)state wifiChannel:(unsigned int)channel at:(double)at;
@end

@implementation WCM_CA_BTConnectedDevicesHandler

- (WCM_CA_BTConnectedDevicesHandler)init
{
  v5.receiver = self;
  v5.super_class = WCM_CA_BTConnectedDevicesHandler;
  v2 = [(WCM_CA_BTConnectedDevicesHandler *)&v5 init];
  v3 = v2;
  if (v2)
  {
    *&v2->mWiFiState = 0;
    v2->mConnectedDevicesMetricsArray = objc_alloc_init(NSMutableArray);
    v3->mBTCoexStatsMetrics.isActive = 0;
  }

  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = WCM_CA_BTConnectedDevicesHandler;
  [(WCM_CA_BTConnectedDevicesHandler *)&v3 dealloc];
}

- (void)resetBTCoexStatsMetrics
{
  self->mBTCoexStatsMetrics.btrssiCoexAccum = 0;
  *&self->mBTCoexStatsMetrics.btDurAirMs = 0u;
  *&self->mBTCoexStatsMetrics.btrssiValidCnt = 0u;
  *&self->mBTCoexStatsMetrics.hybridCnt = 0u;
  *&self->mBTCoexStatsMetrics.totDurMs = 0u;
  *&self->mBTCoexStatsMetrics.isActive = 0u;
  *&self->mBTCoexStatsMetrics.profileIndex = 0u;
  self->mBTCoexStatsMetrics.isActive = 0;
}

- (id)getProfileName:(int64_t)name
{
  if ((name + 1) > 0xE)
  {
    v3 = @"Other";
  }

  else
  {
    v3 = *(&off_100240118 + name + 1);
  }

  return [NSString stringWithFormat:@"%@_2.4G", v3];
}

- (void)submitEvent:(id)event
{
  getEnumerationString = [event getEnumerationString];
  [event getDuration];
  v6 = v5;
  [event getDurationInWiFi2G];
  if (v6 < 0x1F)
  {
    [WCM_Logging logLevel:2 message:@"[BTCoexCA] Ignore CA event: BT_ConnectedDevices, (%@) duration is too short, %llu seconds", getEnumerationString, v6];
  }

  else
  {
    v8 = &stru_100255120;
    if (v6 > 0x77)
    {
      v8 = @"s";
    }

    [WCM_Logging logLevel:2 message:@"[BTCoexCA] Submit CA event: BT_ConnectedDevices, (%@) for %llu minute%@, %llu %% in WiFi 2G band", getEnumerationString, v6 / 0x3C, v8, 100 * v7 / v6];
    AnalyticsSendEventLazy();
  }
}

- (void)enableCoexStatsMetrics:(int64_t)metrics at:(double)at
{
  if (!self->mBTCoexStatsMetrics.isActive)
  {
    [WCM_Logging logLevel:2 message:@"[BTCoexCA] enableCoexStatsMetrics:%@", [(WCM_CA_BTConnectedDevicesHandler *)self getProfileName:?]];
    self->mBTCoexStatsMetrics.profileIndex = metrics;
    self->mBTCoexStatsMetrics.timestamp = at;
    self->mBTCoexStatsMetrics.isActive = 1;
  }
}

- (void)disableCoexStatsMetricsAt:(double)at
{
  if (self->mBTCoexStatsMetrics.isActive)
  {
    v5 = [(WCM_CA_BTConnectedDevicesHandler *)self getProfileName:self->mBTCoexStatsMetrics.profileIndex];
    [WCM_Logging logLevel:2 message:@"[BTCoexCA] disableCoexStatsMetrics:%@", v5];
    v6 = (at - self->mBTCoexStatsMetrics.timestamp);
    totDurMs = self->mBTCoexStatsMetrics.totDurMs;
    if (v6 >= 0x1F && totDurMs && *&self->mBTCoexStatsMetrics.tddCnt != 0)
    {
      v8 = (v6 * 0x8888888888888889) >> 64;
      wlrssiValidCnt = self->mBTCoexStatsMetrics.wlrssiValidCnt;
      if (wlrssiValidCnt)
      {
        v10 = self->mBTCoexStatsMetrics.wlrssiCoexAccum / wlrssiValidCnt;
      }

      else
      {
        v10 = 0;
      }

      v11 = v8 >> 5;
      btrssiValidCnt = self->mBTCoexStatsMetrics.btrssiValidCnt;
      if (btrssiValidCnt)
      {
        v13 = self->mBTCoexStatsMetrics.btrssiCoexAccum / btrssiValidCnt;
      }

      else
      {
        v13 = 0;
      }

      [WCM_Logging logLevel:2 message:@"[BTCoexCA] Submit CA event: BTCoexStats, profileName=%@, durMin=%llu, btDurPercent=%llu, hybridPercent=%llu, parallelPercent=%llu, btDurAirPercent=%llu, wlrssiCoexAvg=%lld, btrssiCoexAvg=%lld", v5, v11, 100 * self->mBTCoexStatsMetrics.btDurMs / totDurMs, 100 * self->mBTCoexStatsMetrics.hybridCnt / (self->mBTCoexStatsMetrics.hybridCnt + self->mBTCoexStatsMetrics.tddCnt), 100 * self->mBTCoexStatsMetrics.parallelCnt / (self->mBTCoexStatsMetrics.hybridCnt + self->mBTCoexStatsMetrics.tddCnt), 100 * self->mBTCoexStatsMetrics.btDurAirMs / totDurMs, v10, v13];
      AnalyticsSendEventLazy();
    }

    else
    {
      [WCM_Logging logLevel:2 message:@"[BTCoexCA] Ignore CA event: BTCoexStats, durSec=%llu, tddCnt=%llu, hybridCnt=%llu, parallelCnt=%llu, btDurMs=%llu, btDurAirMs=%llu, wlrssiCoexAccum=%lld, wlrssiValidCnt=%llu, btrssiCoexAccum=%lld, btrssiValidCnt=%llu, totDurMs=%llu", v6, self->mBTCoexStatsMetrics.tddCnt, self->mBTCoexStatsMetrics.hybridCnt, self->mBTCoexStatsMetrics.parallelCnt, self->mBTCoexStatsMetrics.btDurMs, self->mBTCoexStatsMetrics.btDurAirMs, self->mBTCoexStatsMetrics.wlrssiCoexAccum, self->mBTCoexStatsMetrics.wlrssiValidCnt, self->mBTCoexStatsMetrics.btrssiCoexAccum, self->mBTCoexStatsMetrics.btrssiValidCnt, totDurMs];
    }

    [(WCM_CA_BTConnectedDevicesHandler *)self resetBTCoexStatsMetrics];
  }
}

- (void)updateBTCoexWiFiState:(int)state wifiChannel:(unsigned int)channel at:(double)at
{
  if (state >= 4)
  {
    v9 = "INVALID_STATE!!!";
    if (state == 4)
    {
      v9 = "ASSOCIATED_6G";
    }
  }

  else
  {
    v9 = off_100240190[state];
  }

  [WCM_Logging logLevel:2 message:@"[BTCoexCA] updateBTCoexWifiState=%s wifiChannel=%u", v9, *&channel];
  mWiFiState = self->mWiFiState;
  if (state != 2 || mWiFiState == 2)
  {
    if (state != 2 && mWiFiState == 2)
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      mConnectedDevicesMetricsArray = self->mConnectedDevicesMetricsArray;
      v12 = [(NSMutableArray *)mConnectedDevicesMetricsArray countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v18;
        do
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v18 != v14)
            {
              objc_enumerationMutation(mConnectedDevicesMetricsArray);
            }

            v16 = *(*(&v17 + 1) + 8 * i);
            if ([v16 isTimerActive])
            {
              [v16 stopWiFi2GTimer:at wifi2GStartTime:self->mWiFi2GStartTime];
            }
          }

          v13 = [(NSMutableArray *)mConnectedDevicesMetricsArray countByEnumeratingWithState:&v17 objects:v21 count:16];
        }

        while (v13);
      }

      self->mWiFi2GStartTime = 0.0;
    }

    self->mWiFiState = state;
    self->mWiFiChannel = channel;
    if (state != 2)
    {
      [(WCM_CA_BTConnectedDevicesHandler *)self disableCoexStatsMetricsAt:at];
    }
  }

  else
  {
    self->mWiFi2GStartTime = at;
    self->mWiFiState = 2;
    self->mWiFiChannel = channel;
  }
}

- (void)updateBTCoexStats_tddCnt:(unsigned int)cnt hybridCnt:(unsigned int)hybridCnt btDurMs:(unsigned int)ms totDurMs:(unsigned int)durMs parallelCnt:(unsigned int)parallelCnt btDurAirMs:(unsigned int)airMs wlrssiCoex:(char)coex btrssiCoex:(char)self0 activeProfileFor2G:(int64_t)self1 btPowerState:(BOOL)self2 at:(double)self3
{
  if (state)
  {
    mWiFiState = self->mWiFiState;
    if (!self->mBTCoexStatsMetrics.isActive)
    {
      if (mWiFiState != 2)
      {
        return;
      }

LABEL_15:

      [(WCM_CA_BTConnectedDevicesHandler *)self enableCoexStatsMetrics:g at:at];
      return;
    }

    if (mWiFiState == 2)
    {
      if (self->mBTCoexStatsMetrics.profileIndex == g)
      {
        v16 = *&airMs;
        v17 = *&parallelCnt;
        v18 = *&durMs;
        v19 = *&ms;
        v20 = *&hybridCnt;
        v21 = *&cnt;
        v22 = [(WCM_CA_BTConnectedDevicesHandler *)self getProfileName:g];
        if (v19 <= v18)
        {
          v25 = self->mWiFiState;
          if (v18 >> 4 < 0x753)
          {
            if (v25 >= 4)
            {
              if (v25 == 4)
              {
                v27 = "ASSOCIATED_6G";
              }

              else
              {
                v27 = "INVALID_STATE!!!";
              }
            }

            else
            {
              v27 = off_100240190[v25];
            }

            [WCM_Logging logLevel:2 message:@"[BTCoexCA] updateBTCoexStats with tddCnt=%lu, hybridCnt=%lu, parallelCnt=%lu, btDurMs=%lu, totDurMs=%lu, activeProfileFor2G=%@, wifiState=%s, wifiChannel=%d, btDurAirMs=%lu, wlrssiCoex=%d, btrssiCoex=%d", v21, v20, v17, v19, v18, v22, v27, self->mWiFiChannel, v16, coex, btrssiCoex];
            v28 = self->mBTCoexStatsMetrics.totDurMs + v18;
            self->mBTCoexStatsMetrics.btDurMs += v19;
            self->mBTCoexStatsMetrics.totDurMs = v28;
            v29 = self->mBTCoexStatsMetrics.hybridCnt + v20;
            self->mBTCoexStatsMetrics.tddCnt += v21;
            self->mBTCoexStatsMetrics.hybridCnt = v29;
            v30 = self->mBTCoexStatsMetrics.btDurAirMs + v16;
            self->mBTCoexStatsMetrics.parallelCnt += v17;
            self->mBTCoexStatsMetrics.btDurAirMs = v30;
            v31 = self->mBTCoexStatsMetrics.btrssiValidCnt + ((btrssiCoex >> 7) & 1);
            self->mBTCoexStatsMetrics.wlrssiValidCnt += (coex >> 7) & 1;
            self->mBTCoexStatsMetrics.btrssiValidCnt = v31;
            *&self->mBTCoexStatsMetrics.wlrssiCoexAccum = vaddw_s32(*&self->mBTCoexStatsMetrics.wlrssiCoexAccum, vmin_s32(__PAIR64__(btrssiCoex, coex), 0));
          }

          else
          {
            if (v25 >= 4)
            {
              if (v25 == 4)
              {
                v26 = "ASSOCIATED_6G";
              }

              else
              {
                v26 = "INVALID_STATE!!!";
              }
            }

            else
            {
              v26 = off_100240190[v25];
            }

            [WCM_Logging logLevel:2 message:@"[BTCoexCA] filtering out CoexStats in system idle state, tddCnt=%lu, hybridCnt=%lu, parallelCnt=%lu, btDurMs=%lu, totDurMs=%lu, activeProfileFor2G=%@, wifiState=%s, wifiChannel=%d, btDurAirMs=%lu, wlrssiCoex=%d, btrssiCoex=%d", v21, v20, v17, v19, v18, v22, v26, self->mWiFiChannel, v16, coex, btrssiCoex];
          }
        }

        else
        {
          v23 = self->mWiFiState;
          if (v23 >= 4)
          {
            if (v23 == 4)
            {
              v24 = "ASSOCIATED_6G";
            }

            else
            {
              v24 = "INVALID_STATE!!!";
            }
          }

          else
          {
            v24 = off_100240190[v23];
          }

          [WCM_Logging logLevel:2 message:@"[BTCoexCA] abnormal CoexStats sample, tddCnt=%lu, hybridCnt=%lu, parallelCnt=%lu, btDurMs=%lu, totDurMs=%lu, activeProfileFor2G=%@, wifiState=%s, wifiChannel=%d, btDurAirMs=%lu, wlrssiCoex=%d, btrssiCoex=%d", v21, v20, v17, v19, v18, v22, v24, self->mWiFiChannel, v16, coex, btrssiCoex];
        }

        return;
      }

      [(WCM_CA_BTConnectedDevicesHandler *)self disableCoexStatsMetricsAt:*&cnt, *&hybridCnt, *&ms, *&durMs, *&parallelCnt, *&airMs, at];
      goto LABEL_15;
    }
  }

  else if (!self->mBTCoexStatsMetrics.isActive)
  {
    return;
  }

  [(WCM_CA_BTConnectedDevicesHandler *)self disableCoexStatsMetricsAt:*&cnt, *&hybridCnt, *&ms, *&durMs, *&parallelCnt, *&airMs];
}

- (void)updateBTCoexConnectedDevices:(WCM_BTConnections *)devices at:(double)at
{
  [WCM_Logging logLevel:2 message:@"[BTCoexCA] updateConnectedDevices with numA2DP=%lu, numLLA=%lu, numHID=%lu, numSCO=%lu, numeSCO=%lu, numLE=%lu, numLEA=%lu", devices->numA2DP, devices->numLLA, devices->numHID, devices->numSCO, devices->numeSCO, devices->numLE, devices->numLEA];
  v7 = +[NSMutableArray array];
  v8 = vaddvq_s64(vaddq_s64(*&devices->numA2DP, *&devices->numHID)) + devices->numeSCO + devices->numLE + devices->numLEA;
  v17 = v8 != 0;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  mConnectedDevicesMetricsArray = self->mConnectedDevicesMetricsArray;
  v10 = [(NSMutableArray *)mConnectedDevicesMetricsArray countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(mConnectedDevicesMetricsArray);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        numConnections = [v14 numConnections];
        if (v8 <= numConnections)
        {
          if (v8 < numConnections || ![v14 isEqualTo:devices])
          {
LABEL_15:
            [v14 stopTimer:at wifi2GStartTime:self->mWiFi2GStartTime];
            [(WCM_CA_BTConnectedDevicesHandler *)self submitEvent:v14];
            [v7 addObject:v14];
            continue;
          }

          if (([v14 isTimerActive] & 1) == 0)
          {
            +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 2, @"[BTCoexCA] Resume timer: (%@)", [v14 getEnumerationString]);
            [v14 startTimer:at];
          }

          v17 = 0;
        }

        else
        {
          if (![v14 isSubsetOf:devices])
          {
            goto LABEL_15;
          }

          if ([v14 isTimerActive])
          {
            +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 2, @"[BTCoexCA] Pause timer: (%@)", [v14 getEnumerationString]);
            [v14 stopTimer:at wifi2GStartTime:self->mWiFi2GStartTime];
          }
        }
      }

      v11 = [(NSMutableArray *)mConnectedDevicesMetricsArray countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  if ([v7 count])
  {
    [(NSMutableArray *)self->mConnectedDevicesMetricsArray removeObjectsInArray:v7];
  }

  if (v17)
  {
    v16 = [[WCM_BTConnectedDevicesMetrics alloc] initWithBTConnections:devices at:at];
    [(NSMutableArray *)self->mConnectedDevicesMetricsArray addObject:v16];
    [WCM_Logging logLevel:2 message:@"[BTCoexCA] Start timer: (%@)", [(WCM_BTConnectedDevicesMetrics *)v16 getEnumerationString]];
  }
}

@end