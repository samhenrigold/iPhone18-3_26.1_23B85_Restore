@interface WCM_CA_WatchCoexStats
+ (id)singleton;
- (WCM_CA_WatchCoexStats)init;
- (id)findBTAFHEntry:(id)entry issueType:(id)type;
- (id)findBTEntry:(id)entry issueType:(id)type hasIssue:(BOOL)issue;
- (id)findWiFiEntry:(id)entry issueType:(id)type hasIssue:(BOOL)issue;
- (void)resetFastChargingFreqDurationStats;
- (void)startFastChargingDurationTimer;
- (void)submitBTAFHStats;
- (void)submitBTAGCStats;
- (void)submitFastChargingDurationStats;
- (void)submitFastChargingFreqStats;
- (void)submitTxBlankingStats;
- (void)submitWiFiAGCStats;
- (void)updateCABTAFHIssue:(id)issue issueType:(id)type;
- (void)updateCABTAGCStats:(id)stats issueType:(id)type btAGCMode:(int)mode hasIssue:(BOOL)issue;
- (void)updateCABTPreferredMap:(id)map;
- (void)updateCAWiFiAGCStats:(id)stats issueType:(id)type wifiAGCMode:(int)mode hasIssue:(BOOL)issue;
- (void)updateFastChargingFreqDurationIsEnable:(BOOL)enable isLowBandDisable:(BOOL)disable;
- (void)updateFastChargingFreqStatsIsEnable:(BOOL)enable isLowBandDisable:(BOOL)disable;
- (void)updateTxBlankingStatsWithBand:(int)band rrcConnected:(BOOL)connected totalCount:(int)count txCount:(int)txCount spmiEnableCount:(int)enableCount wci2EnableCount:(int)wci2EnableCount spmiRequestCount:(int)requestCount wci2RequestCount:(int)self0 blankCount:(int)self1;
@end

@implementation WCM_CA_WatchCoexStats

+ (id)singleton
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100081460;
  block[3] = &unk_10023DD00;
  block[4] = self;
  if (qword_1002B7E50 != -1)
  {
    dispatch_once(&qword_1002B7E50, block);
  }

  v2 = qword_1002B7E48;

  return v2;
}

- (WCM_CA_WatchCoexStats)init
{
  v38.receiver = self;
  v38.super_class = WCM_CA_WatchCoexStats;
  v2 = [(WCM_CA_WatchCoexStats *)&v38 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableArray);
    v4 = *(v2 + 4);
    *(v2 + 4) = v3;

    v5 = objc_alloc_init(NSMutableArray);
    v6 = *(v2 + 5);
    *(v2 + 5) = v5;

    v7 = objc_alloc_init(NSMutableArray);
    v8 = *(v2 + 6);
    *(v2 + 6) = v7;

    v9 = objc_alloc_init(NSString);
    v10 = *(v2 + 9);
    *(v2 + 9) = v9;

    v11 = objc_alloc_init(NSString);
    v12 = *(v2 + 10);
    *(v2 + 10) = v11;

    +[NSDate timeIntervalSinceReferenceDate];
    *(v2 + 11) = v13;
    +[NSDate timeIntervalSinceReferenceDate];
    *(v2 + 12) = v14;
    v15 = [NSMutableDictionary dictionaryWithDictionary:&off_10028D8C8];
    v16 = *(v2 + 7);
    *(v2 + 7) = v15;

    v17 = objc_alloc_init(NSMutableArray);
    v18 = *(v2 + 8);
    *(v2 + 8) = v17;

    +[NSDate timeIntervalSinceReferenceDate];
    *(v2 + 21) = v19;
    +[NSDate timeIntervalSinceReferenceDate];
    *(v2 + 22) = v20;
    *(v2 + 4) = 0;
    v2[10] = 0;
    *(v2 + 20) = 0;
    *(v2 + 12) = 0;
    +[NSDate timeIntervalSinceReferenceDate];
    *(v2 + 13) = v21;
    v22 = objc_alloc_init(NSObject);
    v23 = *(v2 + 14);
    *(v2 + 14) = v22;

    v24 = objc_alloc_init(NSObject);
    v25 = *(v2 + 15);
    *(v2 + 15) = v24;

    v26 = objc_alloc_init(NSObject);
    v27 = *(v2 + 16);
    *(v2 + 16) = v26;

    +[NSDate timeIntervalSinceReferenceDate];
    *(v2 + 17) = v28;
    v29 = objc_alloc_init(NSObject);
    v30 = *(v2 + 18);
    *(v2 + 18) = v29;

    v31 = objc_alloc_init(NSObject);
    v32 = *(v2 + 23);
    *(v2 + 23) = v31;

    +[NSDate timeIntervalSinceReferenceDate];
    *(v2 + 19) = v33;
    v34 = objc_alloc_init(NSObject);
    v35 = *(v2 + 20);
    *(v2 + 20) = v34;

    v36 = *(v2 + 25);
    *(v2 + 25) = 0;
  }

  return v2;
}

- (void)startFastChargingDurationTimer
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000816F4;
  block[3] = &unk_10023F488;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (id)findWiFiEntry:(id)entry issueType:(id)type hasIssue:(BOOL)issue
{
  issueCopy = issue;
  entryCopy = entry;
  typeCopy = type;
  wrmWiFiAGCCAStats = [(WCM_CA_WatchCoexStats *)self wrmWiFiAGCCAStats];
  if (wrmWiFiAGCCAStats && (v9 = wrmWiFiAGCCAStats, -[WCM_CA_WatchCoexStats wrmWiFiAGCCAStats](self, "wrmWiFiAGCCAStats"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 count], v10, v9, v11))
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = [(WCM_CA_WatchCoexStats *)self wrmWiFiAGCCAStats];
    v12 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v28;
      while (2)
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v28 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v27 + 1) + 8 * i);
          v17 = [v16 objectForKeyedSubscript:@"IssueBand"];
          v18 = [v16 objectForKeyedSubscript:@"IssueType"];
          v19 = [v16 objectForKeyedSubscript:@"HasIssue"];
          bOOLValue = [v19 BOOLValue];

          if ([v17 isEqualToString:entryCopy])
          {
            if ([v18 isEqualToString:typeCopy] && bOOLValue == issueCopy)
            {
              v22 = v16;

              goto LABEL_18;
            }
          }
        }

        v13 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    v22 = 0;
LABEL_18:
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (id)findBTEntry:(id)entry issueType:(id)type hasIssue:(BOOL)issue
{
  issueCopy = issue;
  entryCopy = entry;
  typeCopy = type;
  wrmBTAGCCAStats = [(WCM_CA_WatchCoexStats *)self wrmBTAGCCAStats];
  if (wrmBTAGCCAStats && (v9 = wrmBTAGCCAStats, -[WCM_CA_WatchCoexStats wrmBTAGCCAStats](self, "wrmBTAGCCAStats"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 count], v10, v9, v11))
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = [(WCM_CA_WatchCoexStats *)self wrmBTAGCCAStats];
    v12 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v28;
      while (2)
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v28 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v27 + 1) + 8 * i);
          v17 = [v16 objectForKeyedSubscript:@"IssueBand"];
          v18 = [v16 objectForKeyedSubscript:@"IssueType"];
          v19 = [v16 objectForKeyedSubscript:@"HasIssue"];
          bOOLValue = [v19 BOOLValue];

          if ([v17 isEqualToString:entryCopy])
          {
            if ([v18 isEqualToString:typeCopy] && bOOLValue == issueCopy)
            {
              v22 = v16;

              goto LABEL_18;
            }
          }
        }

        v13 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    v22 = 0;
LABEL_18:
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (id)findBTAFHEntry:(id)entry issueType:(id)type
{
  entryCopy = entry;
  typeCopy = type;
  wrmBTAFHStats = [(WCM_CA_WatchCoexStats *)self wrmBTAFHStats];
  if (wrmBTAFHStats)
  {
    wrmBTAFHStats2 = [(WCM_CA_WatchCoexStats *)self wrmBTAFHStats];
    v9 = [wrmBTAFHStats2 count];

    if (v9)
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      wrmBTAFHStats3 = [(WCM_CA_WatchCoexStats *)self wrmBTAFHStats];
      v11 = [wrmBTAFHStats3 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v21;
        while (2)
        {
          for (i = 0; i != v12; i = i + 1)
          {
            if (*v21 != v13)
            {
              objc_enumerationMutation(wrmBTAFHStats3);
            }

            v15 = *(*(&v20 + 1) + 8 * i);
            v16 = [v15 objectForKeyedSubscript:@"IssueBand"];
            v17 = [v15 objectForKeyedSubscript:@"IssueType"];
            if ([v16 isEqualToString:entryCopy] && (objc_msgSend(v17, "isEqualToString:", typeCopy) & 1) != 0)
            {
              wrmBTAFHStats = v15;

              goto LABEL_15;
            }
          }

          v12 = [wrmBTAFHStats3 countByEnumeratingWithState:&v20 objects:v24 count:16];
          if (v12)
          {
            continue;
          }

          break;
        }
      }

      wrmBTAFHStats = 0;
LABEL_15:
    }

    else
    {
      wrmBTAFHStats = 0;
    }
  }

  return wrmBTAFHStats;
}

- (void)updateCAWiFiAGCStats:(id)stats issueType:(id)type wifiAGCMode:(int)mode hasIssue:(BOOL)issue
{
  issueCopy = issue;
  statsCopy = stats;
  typeCopy = type;
  [WCM_Logging logLevel:2 message:@"updateCAWiFiAGCStats"];
  lockObjectWifiAGCStats = [(WCM_CA_WatchCoexStats *)self lockObjectWifiAGCStats];
  objc_sync_enter(lockObjectWifiAGCStats);
  v12 = [(WCM_CA_WatchCoexStats *)self findWiFiEntry:statsCopy issueType:typeCopy hasIssue:issueCopy];
  v13 = v12;
  if (v12)
  {
    v14 = [v12 objectForKeyedSubscript:@"count"];
    v15 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v14 intValue] + 1);
    [v13 setObject:v15 forKeyedSubscript:@"count"];

    switch(mode)
    {
      case 3:
        v16 = [v13 objectForKeyedSubscript:@"WiFiAGCMode_2_Count"];
        wrmWiFiAGCCAStats = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v16 intValue] + 1);
        [v13 setObject:wrmWiFiAGCCAStats forKeyedSubscript:@"WiFiAGCMode_2_Count"];
        break;
      case 2:
        v16 = [v13 objectForKeyedSubscript:@"WiFiAGCMode_1_Count"];
        wrmWiFiAGCCAStats = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v16 intValue] + 1);
        [v13 setObject:wrmWiFiAGCCAStats forKeyedSubscript:@"WiFiAGCMode_1_Count"];
        break;
      case 1:
        v16 = [v13 objectForKeyedSubscript:@"WiFiAGCMode_0_Count"];
        wrmWiFiAGCCAStats = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v16 intValue] + 1);
        [v13 setObject:wrmWiFiAGCCAStats forKeyedSubscript:@"WiFiAGCMode_0_Count"];
        break;
      default:
        goto LABEL_19;
    }
  }

  else
  {
    v16 = objc_alloc_init(NSMutableDictionary);
    [v16 setObject:statsCopy forKeyedSubscript:@"IssueBand"];
    [v16 setObject:typeCopy forKeyedSubscript:@"IssueType"];
    [v16 setObject:&off_1002707B8 forKeyedSubscript:@"count"];
    v18 = [NSNumber numberWithBool:issueCopy];
    [v16 setObject:v18 forKeyedSubscript:@"HasIssue"];

    if (mode == 1)
    {
      v19 = &off_1002707B8;
    }

    else
    {
      v19 = &off_1002707A0;
    }

    [v16 setObject:v19 forKeyedSubscript:@"WiFiAGCMode_0_Count"];
    if (mode == 2)
    {
      v20 = &off_1002707B8;
    }

    else
    {
      v20 = &off_1002707A0;
    }

    [v16 setObject:v20 forKeyedSubscript:@"WiFiAGCMode_1_Count"];
    if (mode == 3)
    {
      v21 = &off_1002707B8;
    }

    else
    {
      v21 = &off_1002707A0;
    }

    [v16 setObject:v21 forKeyedSubscript:@"WiFiAGCMode_2_Count"];
    wrmWiFiAGCCAStats = [(WCM_CA_WatchCoexStats *)self wrmWiFiAGCCAStats];
    [wrmWiFiAGCCAStats addObject:v16];
  }

LABEL_19:
  objc_sync_exit(lockObjectWifiAGCStats);

  +[NSDate timeIntervalSinceReferenceDate];
  v23 = v22;
  [(WCM_CA_WatchCoexStats *)self previousWiFiCAStartTime];
  if (v23 - v24 > 300.0)
  {
    [(WCM_CA_WatchCoexStats *)self submitWiFiAGCStats];
    [(WCM_CA_WatchCoexStats *)self setPreviousWiFiCAStartTime:v23];
  }
}

- (void)updateCABTAGCStats:(id)stats issueType:(id)type btAGCMode:(int)mode hasIssue:(BOOL)issue
{
  issueCopy = issue;
  statsCopy = stats;
  typeCopy = type;
  [WCM_Logging logLevel:2 message:@"updateCABTAGCStats"];
  lockObjectBTAGCStats = [(WCM_CA_WatchCoexStats *)self lockObjectBTAGCStats];
  objc_sync_enter(lockObjectBTAGCStats);
  v12 = [(WCM_CA_WatchCoexStats *)self findBTEntry:statsCopy issueType:typeCopy hasIssue:issueCopy];
  v13 = v12;
  if (v12)
  {
    v14 = [v12 objectForKeyedSubscript:@"count"];
    v15 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v14 intValue] + 1);
    [v13 setObject:v15 forKeyedSubscript:@"count"];

    if (mode == 2)
    {
      v16 = [v13 objectForKeyedSubscript:@"BTAGCMode_2_Count"];
      wrmBTAGCCAStats = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v16 intValue] + 1);
      [v13 setObject:wrmBTAGCCAStats forKeyedSubscript:@"BTAGCMode_2_Count"];
    }

    else if (mode == 1)
    {
      v16 = [v13 objectForKeyedSubscript:@"BTAGCMode_1_Count"];
      wrmBTAGCCAStats = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v16 intValue] + 1);
      [v13 setObject:wrmBTAGCCAStats forKeyedSubscript:@"BTAGCMode_1_Count"];
    }

    else
    {
      if (mode)
      {
        goto LABEL_19;
      }

      v16 = [v13 objectForKeyedSubscript:@"BTAGCMode_0_Count"];
      wrmBTAGCCAStats = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v16 intValue] + 1);
      [v13 setObject:wrmBTAGCCAStats forKeyedSubscript:@"BTAGCMode_0_Count"];
    }
  }

  else
  {
    v16 = objc_alloc_init(NSMutableDictionary);
    [v16 setObject:statsCopy forKeyedSubscript:@"IssueBand"];
    [v16 setObject:typeCopy forKeyedSubscript:@"IssueType"];
    [v16 setObject:&off_1002707B8 forKeyedSubscript:@"count"];
    v18 = [NSNumber numberWithBool:issueCopy];
    [v16 setObject:v18 forKeyedSubscript:@"HasIssue"];

    if (mode)
    {
      v19 = &off_1002707A0;
    }

    else
    {
      v19 = &off_1002707B8;
    }

    [v16 setObject:v19 forKeyedSubscript:@"BTAGCMode_0_Count"];
    if (mode == 1)
    {
      v20 = &off_1002707B8;
    }

    else
    {
      v20 = &off_1002707A0;
    }

    [v16 setObject:v20 forKeyedSubscript:@"BTAGCMode_1_Count"];
    if (mode == 2)
    {
      v21 = &off_1002707B8;
    }

    else
    {
      v21 = &off_1002707A0;
    }

    [v16 setObject:v21 forKeyedSubscript:@"BTAGCMode_2_Count"];
    wrmBTAGCCAStats = [(WCM_CA_WatchCoexStats *)self wrmBTAGCCAStats];
    [wrmBTAGCCAStats addObject:v16];
  }

LABEL_19:
  objc_sync_exit(lockObjectBTAGCStats);

  +[NSDate timeIntervalSinceReferenceDate];
  v23 = v22;
  [(WCM_CA_WatchCoexStats *)self previousBTCAStartTime];
  if (v23 - v24 > 300.0)
  {
    [(WCM_CA_WatchCoexStats *)self submitBTAGCStats];
    [(WCM_CA_WatchCoexStats *)self setPreviousBTCAStartTime:v23];
  }
}

- (void)updateTxBlankingStatsWithBand:(int)band rrcConnected:(BOOL)connected totalCount:(int)count txCount:(int)txCount spmiEnableCount:(int)enableCount wci2EnableCount:(int)wci2EnableCount spmiRequestCount:(int)requestCount wci2RequestCount:(int)self0 blankCount:(int)self1
{
  v11 = *&wci2EnableCount;
  v12 = *&enableCount;
  v13 = *&txCount;
  connectedCopy = connected;
  v15 = *&band;
  v53 = *&count;
  [WCM_Logging logLevel:3 message:@"TxBlankingCADebug_ band: %d, rrcConnected: %d, totalCount: %d, txCount: %d, spmiEnableCount: %d, wci2EnableCount: %d, spmiRequestCount: %d, wci2RequestCount: %d, blankCount: %d", *&band, connected, *&count, *&txCount, *&enableCount, *&wci2EnableCount, requestCount, wci2RequestCount, blankCount];
  if (!connectedCopy)
  {
    goto LABEL_17;
  }

  v51 = v12;
  v52 = v13;
  obj = [(WCM_CA_WatchCoexStats *)self lockObjectTxBlankingFreqStats];
  objc_sync_enter(obj);
  wrmTxBlankingFreqStat = [(WCM_CA_WatchCoexStats *)self wrmTxBlankingFreqStat];

  if (!wrmTxBlankingFreqStat)
  {
    goto LABEL_15;
  }

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  wrmTxBlankingFreqStat2 = [(WCM_CA_WatchCoexStats *)self wrmTxBlankingFreqStat];
  v18 = [wrmTxBlankingFreqStat2 countByEnumeratingWithState:&v56 objects:v60 count:16];
  if (!v18)
  {

LABEL_15:
    v19 = objc_alloc_init(NSMutableDictionary);
    v40 = [NSNumber numberWithInt:v15];
    [v19 setObject:v40 forKeyedSubscript:@"Band"];

    v41 = [NSNumber numberWithInt:v53];
    [v19 setObject:v41 forKeyedSubscript:@"totalCount"];

    v42 = [NSNumber numberWithInt:v52];
    [v19 setObject:v42 forKeyedSubscript:@"txCount"];

    v43 = [NSNumber numberWithInt:v51];
    [v19 setObject:v43 forKeyedSubscript:@"spmiEnableCount"];

    v44 = [NSNumber numberWithInt:v11];
    [v19 setObject:v44 forKeyedSubscript:@"wci2EnableCount"];

    v45 = [NSNumber numberWithInt:requestCount];
    [v19 setObject:v45 forKeyedSubscript:@"spmiRequestCount"];

    v46 = [NSNumber numberWithInt:wci2RequestCount];
    [v19 setObject:v46 forKeyedSubscript:@"wci2RequestCount"];

    v47 = [NSNumber numberWithInt:blankCount];
    [v19 setObject:v47 forKeyedSubscript:@"blankCount"];

    wrmTxBlankingFreqStat3 = [(WCM_CA_WatchCoexStats *)self wrmTxBlankingFreqStat];
    [wrmTxBlankingFreqStat3 addObject:v19];
    goto LABEL_16;
  }

  v19 = 0;
  v20 = *v57;
  do
  {
    for (i = 0; i != v18; i = i + 1)
    {
      if (*v57 != v20)
      {
        objc_enumerationMutation(wrmTxBlankingFreqStat2);
      }

      v22 = *(*(&v56 + 1) + 8 * i);
      v23 = [v22 objectForKeyedSubscript:@"Band"];
      v24 = [v23 intValue] == v15;

      if (v24)
      {
        v25 = v22;

        v19 = v25;
      }
    }

    v18 = [wrmTxBlankingFreqStat2 countByEnumeratingWithState:&v56 objects:v60 count:16];
  }

  while (v18);

  if (!v19)
  {
    goto LABEL_15;
  }

  v26 = [v19 objectForKeyedSubscript:@"totalCount"];
  v27 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v26 intValue] + v53);
  [v19 setObject:v27 forKeyedSubscript:@"totalCount"];

  v28 = [v19 objectForKeyedSubscript:@"txCount"];
  v29 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v28 intValue] + v52);
  [v19 setObject:v29 forKeyedSubscript:@"txCount"];

  v30 = [v19 objectForKeyedSubscript:@"spmiEnableCount"];
  v31 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v30 intValue] + v51);
  [v19 setObject:v31 forKeyedSubscript:@"spmiEnableCount"];

  v32 = [v19 objectForKeyedSubscript:@"wci2EnableCount"];
  v33 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v32 intValue] + v11);
  [v19 setObject:v33 forKeyedSubscript:@"wci2EnableCount"];

  v34 = [v19 objectForKeyedSubscript:@"spmiRequestCount"];
  v35 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v34 intValue] + requestCount);
  [v19 setObject:v35 forKeyedSubscript:@"spmiRequestCount"];

  v36 = [v19 objectForKeyedSubscript:@"wci2RequestCount"];
  v37 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v36 intValue] + wci2RequestCount);
  [v19 setObject:v37 forKeyedSubscript:@"wci2RequestCount"];

  wrmTxBlankingFreqStat3 = [v19 objectForKeyedSubscript:@"blankCount"];
  v39 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [wrmTxBlankingFreqStat3 intValue] + blankCount);
  [v19 setObject:v39 forKeyedSubscript:@"blankCount"];

LABEL_16:
  objc_sync_exit(obj);

LABEL_17:
  +[NSDate timeIntervalSinceReferenceDate];
  v49 = v48;
  [(WCM_CA_WatchCoexStats *)self previousTxBlankingFreqCAStartTime];
  if (v49 - v50 > 3600.0)
  {
    [(WCM_CA_WatchCoexStats *)self submitTxBlankingStats];
    [(WCM_CA_WatchCoexStats *)self setPreviousTxBlankingFreqCAStartTime:v49];
  }
}

- (void)submitTxBlankingStats
{
  obj = [(WCM_CA_WatchCoexStats *)self lockObjectTxBlankingFreqStats];
  objc_sync_enter(obj);
  [WCM_Logging logLevel:3 message:@"TxBlankingCADebug_ submitTxBlankingStats"];
  wrmTxBlankingFreqStat = [(WCM_CA_WatchCoexStats *)self wrmTxBlankingFreqStat];
  v3 = [NSArray arrayWithArray:wrmTxBlankingFreqStat];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v17 = v3;
  v4 = [v17 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v4)
  {
    v18 = *v22;
    do
    {
      v19 = v4;
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v22 != v18)
        {
          objc_enumerationMutation(v17);
        }

        v6 = *(*(&v21 + 1) + 8 * i);
        v20 = [v6 objectForKeyedSubscript:@"Band"];
        v7 = [v6 objectForKeyedSubscript:@"totalCount"];
        v8 = [v6 objectForKeyedSubscript:@"txCount"];
        v9 = [v6 objectForKeyedSubscript:@"spmiEnableCount"];
        v10 = [v6 objectForKeyedSubscript:@"wci2EnableCount"];
        v11 = [v6 objectForKeyedSubscript:@"spmiRequestCount"];
        v12 = [v6 objectForKeyedSubscript:@"wci2RequestCount"];
        v13 = [v6 objectForKeyedSubscript:@"blankCount"];
        [WCM_Logging logLevel:3 message:@"TxBlankingCADebug_ submitTxBlankingStats Band: %@, totalCount: %@, txCount: %@, spmiEnableCount: %@, wci2EnableCount: %@, spmiRequestCount: %@, wci2RequestCount: %@, blankCount: %@", v20, v7, v8, v9, v10, v11, v12, v13];

        AnalyticsSendEventLazy();
      }

      v4 = [v17 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v4);
  }

  wrmTxBlankingFreqStat2 = [(WCM_CA_WatchCoexStats *)self wrmTxBlankingFreqStat];
  [wrmTxBlankingFreqStat2 removeAllObjects];

  objc_sync_exit(obj);
}

- (void)updateFastChargingFreqStatsIsEnable:(BOOL)enable isLowBandDisable:(BOOL)disable
{
  disableCopy = disable;
  enableCopy = enable;
  [WCM_Logging logLevel:3 message:@"FChargingCADebug_ updateFastChargingFreqStats isEnable: %d, isLowBandDisable: %d", enable, disable];
  lockObjectFastChargingFreqStats = [(WCM_CA_WatchCoexStats *)self lockObjectFastChargingFreqStats];
  objc_sync_enter(lockObjectFastChargingFreqStats);
  if (enableCopy)
  {
    wrmFastChargingFreqStat = [(WCM_CA_WatchCoexStats *)self wrmFastChargingFreqStat];
    v9 = [wrmFastChargingFreqStat objectForKeyedSubscript:@"EnableCount"];
    v10 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v9 intValue] + 1);
    wrmFastChargingFreqStat2 = [(WCM_CA_WatchCoexStats *)self wrmFastChargingFreqStat];
    [wrmFastChargingFreqStat2 setObject:v10 forKeyedSubscript:@"EnableCount"];
  }

  else
  {
    wrmFastChargingFreqStat3 = [(WCM_CA_WatchCoexStats *)self wrmFastChargingFreqStat];
    v13 = [wrmFastChargingFreqStat3 objectForKeyedSubscript:@"DisableCount"];
    v14 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v13 intValue] + 1);
    wrmFastChargingFreqStat4 = [(WCM_CA_WatchCoexStats *)self wrmFastChargingFreqStat];
    [wrmFastChargingFreqStat4 setObject:v14 forKeyedSubscript:@"DisableCount"];

    wrmFastChargingFreqStat = [(WCM_CA_WatchCoexStats *)self wrmFastChargingFreqStat];
    if (disableCopy)
    {
      v9 = [wrmFastChargingFreqStat objectForKeyedSubscript:@"LowBandDisableCount"];
      v10 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v9 intValue] + 1);
      wrmFastChargingFreqStat2 = [(WCM_CA_WatchCoexStats *)self wrmFastChargingFreqStat];
      [wrmFastChargingFreqStat2 setObject:v10 forKeyedSubscript:@"LowBandDisableCount"];
    }

    else
    {
      v9 = [wrmFastChargingFreqStat objectForKeyedSubscript:@"NonLowBandDisableCount"];
      v10 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v9 intValue] + 1);
      wrmFastChargingFreqStat2 = [(WCM_CA_WatchCoexStats *)self wrmFastChargingFreqStat];
      [wrmFastChargingFreqStat2 setObject:v10 forKeyedSubscript:@"NonLowBandDisableCount"];
    }
  }

  objc_sync_exit(lockObjectFastChargingFreqStats);
  +[NSDate timeIntervalSinceReferenceDate];
  v17 = v16;
  [(WCM_CA_WatchCoexStats *)self previousFastChargingFreqCAStartTime];
  if (v17 - v18 > 300.0)
  {
    [(WCM_CA_WatchCoexStats *)self submitFastChargingFreqStats];
    [(WCM_CA_WatchCoexStats *)self setPreviousFastChargingFreqCAStartTime:v17];
  }

  [(WCM_CA_WatchCoexStats *)self updateFastChargingFreqDurationIsEnable:enableCopy isLowBandDisable:disableCopy];
}

- (void)submitFastChargingFreqStats
{
  obj = [(WCM_CA_WatchCoexStats *)self lockObjectFastChargingFreqStats];
  objc_sync_enter(obj);
  wrmFastChargingFreqStat = [(WCM_CA_WatchCoexStats *)self wrmFastChargingFreqStat];
  v4 = [wrmFastChargingFreqStat objectForKeyedSubscript:@"EnableCount"];
  wrmFastChargingFreqStat2 = [(WCM_CA_WatchCoexStats *)self wrmFastChargingFreqStat];
  v6 = [wrmFastChargingFreqStat2 objectForKeyedSubscript:@"DisableCount"];
  wrmFastChargingFreqStat3 = [(WCM_CA_WatchCoexStats *)self wrmFastChargingFreqStat];
  v8 = [wrmFastChargingFreqStat3 objectForKeyedSubscript:@"LowBandDisableCount"];
  wrmFastChargingFreqStat4 = [(WCM_CA_WatchCoexStats *)self wrmFastChargingFreqStat];
  v10 = [wrmFastChargingFreqStat4 objectForKeyedSubscript:@"NonLowBandDisableCount"];
  [WCM_Logging logLevel:3 message:@"FChargingCADebug_ submitFastChargingFreqStats EnableCount = %@, DisableCount = %@, LowBandDisableCount = %@, NonLowBandDisableCount = %@", v4, v6, v8, v10];

  AnalyticsSendEventLazy();
  wrmFastChargingFreqStat5 = [(WCM_CA_WatchCoexStats *)self wrmFastChargingFreqStat];
  [wrmFastChargingFreqStat5 setObject:&off_1002707A0 forKeyedSubscript:@"DisableCount"];

  wrmFastChargingFreqStat6 = [(WCM_CA_WatchCoexStats *)self wrmFastChargingFreqStat];
  [wrmFastChargingFreqStat6 setObject:&off_1002707A0 forKeyedSubscript:@"EnableCount"];

  wrmFastChargingFreqStat7 = [(WCM_CA_WatchCoexStats *)self wrmFastChargingFreqStat];
  [wrmFastChargingFreqStat7 setObject:&off_1002707A0 forKeyedSubscript:@"LowBandDisableCount"];

  wrmFastChargingFreqStat8 = [(WCM_CA_WatchCoexStats *)self wrmFastChargingFreqStat];
  [wrmFastChargingFreqStat8 setObject:&off_1002707A0 forKeyedSubscript:@"NonLowBandDisableCount"];

  objc_sync_exit(obj);
}

- (void)resetFastChargingFreqDurationStats
{
  obj = [(WCM_CA_WatchCoexStats *)self lockObjectFastChargingDurationStats];
  objc_sync_enter(obj);
  [WCM_Logging logLevel:3 message:@"FChargingCADebug_ Reset stats"];
  [(WCM_CA_WatchCoexStats *)self setTotalDuration:0];
  [(WCM_CA_WatchCoexStats *)self setDisableDuration:0];
  [(WCM_CA_WatchCoexStats *)self setLowBandDisableDuration:0];
  [(WCM_CA_WatchCoexStats *)self setNoneLowBandDisableDuration:0];
  [(WCM_CA_WatchCoexStats *)self setCellPowerOn:1];
  +[NSDate timeIntervalSinceReferenceDate];
  [(WCM_CA_WatchCoexStats *)self setPreviousFastChargingDurationCAStartTime:?];
  objc_sync_exit(obj);
}

- (void)updateFastChargingFreqDurationIsEnable:(BOOL)enable isLowBandDisable:(BOOL)disable
{
  disableCopy = disable;
  enableCopy = enable;
  lockObjectFastChargingDurationStats = [(WCM_CA_WatchCoexStats *)self lockObjectFastChargingDurationStats];
  objc_sync_enter(lockObjectFastChargingDurationStats);
  if ([(WCM_CA_WatchCoexStats *)self fastChargingHasRecord])
  {
    +[NSDate timeIntervalSinceReferenceDate];
    v9 = v8;
    [(WCM_CA_WatchCoexStats *)self previousFastChargingDurationRecordTime];
    v11 = v9 - v10;
    [(WCM_CA_WatchCoexStats *)self setTotalDuration:(v11 + [(WCM_CA_WatchCoexStats *)self totalDuration])];
    fastChargingIsEnabled = [(WCM_CA_WatchCoexStats *)self fastChargingIsEnabled];
    fastChargingIsLowBandDisabled = [(WCM_CA_WatchCoexStats *)self fastChargingIsLowBandDisabled];
    if ((fastChargingIsEnabled & 1) == 0)
    {
      v14 = fastChargingIsLowBandDisabled;
      [(WCM_CA_WatchCoexStats *)self setDisableDuration:(v11 + [(WCM_CA_WatchCoexStats *)self disableDuration])];
      if (v14)
      {
        [(WCM_CA_WatchCoexStats *)self setLowBandDisableDuration:(v11 + [(WCM_CA_WatchCoexStats *)self lowBandDisableDuration])];
      }

      else
      {
        [(WCM_CA_WatchCoexStats *)self setNoneLowBandDisableDuration:(v11 + [(WCM_CA_WatchCoexStats *)self noneLowBandDisableDuration])];
      }
    }
  }

  else
  {
    [(WCM_CA_WatchCoexStats *)self resetFastChargingFreqDurationStats];
  }

  [(WCM_CA_WatchCoexStats *)self setFastChargingIsEnabled:enableCopy];
  [(WCM_CA_WatchCoexStats *)self setFastChargingIsLowBandDisabled:disableCopy];
  [(WCM_CA_WatchCoexStats *)self setFastChargingHasRecord:1];
  +[NSDate timeIntervalSinceReferenceDate];
  [(WCM_CA_WatchCoexStats *)self setPreviousFastChargingDurationRecordTime:?];
  objc_sync_exit(lockObjectFastChargingDurationStats);

  [WCM_Logging logLevel:3 message:@"FChargingCADebug_ updateFastChargingFreqDuration totalDuration: %d, disableDuration: %d, self.lowBandDisableDuration: %d, self.noneLowBandDisableDuration: %d, self.cellPowerOn: %d", [(WCM_CA_WatchCoexStats *)self totalDuration], [(WCM_CA_WatchCoexStats *)self disableDuration], [(WCM_CA_WatchCoexStats *)self lowBandDisableDuration], [(WCM_CA_WatchCoexStats *)self noneLowBandDisableDuration], [(WCM_CA_WatchCoexStats *)self cellPowerOn]];
}

- (void)submitFastChargingDurationStats
{
  lockObjectFastChargingDurationStats = [(WCM_CA_WatchCoexStats *)self lockObjectFastChargingDurationStats];
  objc_sync_enter(lockObjectFastChargingDurationStats);
  [WCM_Logging logLevel:3 message:@"FChargingCADebug_ submitFastChargingDurationStats totalDuration = %d, disableDuration = %d, lowBandDisableDuration = %d, noneLowBandDisableDuration = %d, fastChargingHasRecord = %d", [(WCM_CA_WatchCoexStats *)self totalDuration], [(WCM_CA_WatchCoexStats *)self disableDuration], [(WCM_CA_WatchCoexStats *)self lowBandDisableDuration], [(WCM_CA_WatchCoexStats *)self noneLowBandDisableDuration], [(WCM_CA_WatchCoexStats *)self fastChargingHasRecord]];
  if ([(WCM_CA_WatchCoexStats *)self fastChargingHasRecord])
  {
    [(WCM_CA_WatchCoexStats *)self updateFastChargingFreqDurationIsEnable:[(WCM_CA_WatchCoexStats *)self fastChargingIsEnabled] isLowBandDisable:[(WCM_CA_WatchCoexStats *)self fastChargingIsLowBandDisabled]];
    if ([(WCM_CA_WatchCoexStats *)self totalDuration]< 1)
    {
      v5 = 0.0;
    }

    else
    {
      disableDuration = [(WCM_CA_WatchCoexStats *)self disableDuration];
      v5 = ((100 * disableDuration) / [(WCM_CA_WatchCoexStats *)self totalDuration]);
    }

    if ([(WCM_CA_WatchCoexStats *)self totalDuration]< 1)
    {
      v7 = 0.0;
    }

    else
    {
      lowBandDisableDuration = [(WCM_CA_WatchCoexStats *)self lowBandDisableDuration];
      v7 = ((100 * lowBandDisableDuration) / [(WCM_CA_WatchCoexStats *)self totalDuration]);
    }

    if ([(WCM_CA_WatchCoexStats *)self totalDuration]< 1)
    {
      v9 = 0.0;
    }

    else
    {
      noneLowBandDisableDuration = [(WCM_CA_WatchCoexStats *)self noneLowBandDisableDuration];
      v9 = ((100 * noneLowBandDisableDuration) / [(WCM_CA_WatchCoexStats *)self totalDuration]);
    }

    [WCM_Logging logLevel:3 message:@"FChargingCADebug_ submitFastChargingDurationStats disableDurationPercent=%f lowBandDisableDurationPercent=%f noneLowBandDurationPercent=%f TotalDuration: %d", *&v5, *&v7, *&v9, [(WCM_CA_WatchCoexStats *)self totalDuration]];
    AnalyticsSendEventLazy();
  }

  [(WCM_CA_WatchCoexStats *)self resetFastChargingFreqDurationStats];
  objc_sync_exit(lockObjectFastChargingDurationStats);
}

- (void)submitWiFiAGCStats
{
  lockObjectWifiAGCStats = [(WCM_CA_WatchCoexStats *)self lockObjectWifiAGCStats];
  objc_sync_enter(lockObjectWifiAGCStats);
  [WCM_Logging logLevel:2 message:@"submitWifiAGCStats"];
  wrmWiFiAGCCAStats = [(WCM_CA_WatchCoexStats *)self wrmWiFiAGCCAStats];
  v5 = [NSArray arrayWithArray:wrmWiFiAGCCAStats];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v6);
        }

        AnalyticsSendEventLazy();
      }

      v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  wrmWiFiAGCCAStats2 = [(WCM_CA_WatchCoexStats *)self wrmWiFiAGCCAStats];
  [wrmWiFiAGCCAStats2 removeAllObjects];

  objc_sync_exit(lockObjectWifiAGCStats);
}

- (void)submitBTAGCStats
{
  lockObjectBTAGCStats = [(WCM_CA_WatchCoexStats *)self lockObjectBTAGCStats];
  objc_sync_enter(lockObjectBTAGCStats);
  [WCM_Logging logLevel:2 message:@"submitBtAGCStats"];
  wrmBTAGCCAStats = [(WCM_CA_WatchCoexStats *)self wrmBTAGCCAStats];
  v5 = [NSArray arrayWithArray:wrmBTAGCCAStats];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v6);
        }

        AnalyticsSendEventLazy();
      }

      v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  wrmBTAGCCAStats2 = [(WCM_CA_WatchCoexStats *)self wrmBTAGCCAStats];
  [wrmBTAGCCAStats2 removeAllObjects];

  objc_sync_exit(lockObjectBTAGCStats);
}

- (void)submitBTAFHStats
{
  lockObjectBTAFHStats = [(WCM_CA_WatchCoexStats *)self lockObjectBTAFHStats];
  objc_sync_enter(lockObjectBTAFHStats);
  [WCM_Logging logLevel:2 message:@"submitAFHStats"];
  wrmBTAFHStats = [(WCM_CA_WatchCoexStats *)self wrmBTAFHStats];
  v5 = [NSArray arrayWithArray:wrmBTAFHStats];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v6);
        }

        AnalyticsSendEventLazy();
      }

      v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  wrmBTAFHStats2 = [(WCM_CA_WatchCoexStats *)self wrmBTAFHStats];
  [wrmBTAFHStats2 removeAllObjects];

  objc_sync_exit(lockObjectBTAFHStats);
}

- (void)updateCABTAFHIssue:(id)issue issueType:(id)type
{
  if (issue)
  {
    typeCopy = type;
    [(WCM_CA_WatchCoexStats *)self setBtAFHIssueBand:issue];
    [(WCM_CA_WatchCoexStats *)self setBtAFHIssueType:typeCopy];
  }
}

- (void)updateCABTPreferredMap:(id)map
{
  mapCopy = map;
  [WCM_Logging logLevel:2 message:@"updateCABTAGCStats"];
  btAFHIssueBand = [(WCM_CA_WatchCoexStats *)self btAFHIssueBand];
  if (btAFHIssueBand)
  {
    v5 = btAFHIssueBand;
    btAFHIssueBand2 = [(WCM_CA_WatchCoexStats *)self btAFHIssueBand];
    v7 = [btAFHIssueBand2 isEqualToString:&stru_100255120];

    if ((v7 & 1) == 0)
    {
      btAFHIssueType = [(WCM_CA_WatchCoexStats *)self btAFHIssueType];
      if (btAFHIssueType)
      {
        v9 = btAFHIssueType;
        btAFHIssueType2 = [(WCM_CA_WatchCoexStats *)self btAFHIssueType];
        v11 = [btAFHIssueType2 isEqualToString:&stru_100255120];

        if (mapCopy)
        {
          if ((v11 & 1) == 0)
          {
            v12 = sub_100084C18(mapCopy);
            if (v12 >= 21)
            {
              if (v12 >= 0x28)
              {
                v16 = 0;
                v13 = 0;
                if (v12 >= 0x3C)
                {
                  v14 = 0;
                  v15 = v12 < 0x4F;
                  v43 = v12 > 0x4E;
                }

                else
                {
                  v15 = 0;
                  v43 = 0;
                  v14 = 1;
                }
              }

              else
              {
                v16 = 0;
                v14 = 0;
                v15 = 0;
                v43 = 0;
                v13 = 1;
              }
            }

            else
            {
              v13 = 0;
              v14 = 0;
              v15 = 0;
              v43 = 0;
              v16 = 1;
            }

            lockObjectBTAFHStats = [(WCM_CA_WatchCoexStats *)self lockObjectBTAFHStats];
            objc_sync_enter(lockObjectBTAFHStats);
            btAFHIssueBand3 = [(WCM_CA_WatchCoexStats *)self btAFHIssueBand];
            btAFHIssueType3 = [(WCM_CA_WatchCoexStats *)self btAFHIssueType];
            v20 = [(WCM_CA_WatchCoexStats *)self findBTAFHEntry:btAFHIssueBand3 issueType:btAFHIssueType3];

            if (v20)
            {
              v21 = [v20 objectForKeyedSubscript:@"count"];
              v22 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v21 intValue] + 1);
              [v20 setObject:v22 forKeyedSubscript:@"count"];

              v23 = [v20 objectForKeyedSubscript:@"AFH_0_20"];
              v24 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v23 intValue] + v16);
              [v20 setObject:v24 forKeyedSubscript:@"AFH_0_20"];

              v25 = [v20 objectForKeyedSubscript:@"AFH_21_40"];
              v26 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v25 intValue] + v13);
              [v20 setObject:v26 forKeyedSubscript:@"AFH_21_40"];

              v27 = [v20 objectForKeyedSubscript:@"AFH_41_60"];
              v28 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v27 intValue] + v14);
              [v20 setObject:v28 forKeyedSubscript:@"AFH_41_60"];

              v29 = [v20 objectForKeyedSubscript:@"AFH_61_79"];
              v30 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v29 intValue] + v15);
              [v20 setObject:v30 forKeyedSubscript:@"AFH_61_79"];

              v31 = [v20 objectForKeyedSubscript:@"AFH_ALL"];
              wrmBTAFHStats = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v31 intValue] + v43);
              [v20 setObject:wrmBTAFHStats forKeyedSubscript:@"AFH_ALL"];
            }

            else
            {
              v31 = objc_alloc_init(NSMutableDictionary);
              btAFHIssueBand4 = [(WCM_CA_WatchCoexStats *)self btAFHIssueBand];
              [v31 setObject:btAFHIssueBand4 forKeyedSubscript:@"IssueBand"];

              btAFHIssueType4 = [(WCM_CA_WatchCoexStats *)self btAFHIssueType];
              [v31 setObject:btAFHIssueType4 forKeyedSubscript:@"IssueType"];

              [v31 setObject:&off_1002707B8 forKeyedSubscript:@"count"];
              v35 = [NSNumber numberWithInt:v16];
              [v31 setObject:v35 forKeyedSubscript:@"AFH_0_20"];

              v36 = [NSNumber numberWithInt:v13];
              [v31 setObject:v36 forKeyedSubscript:@"AFH_21_40"];

              v37 = [NSNumber numberWithInt:v14];
              [v31 setObject:v37 forKeyedSubscript:@"AFH_41_60"];

              v38 = [NSNumber numberWithInt:v15];
              [v31 setObject:v38 forKeyedSubscript:@"AFH_61_79"];

              v39 = [NSNumber numberWithInt:v43];
              [v31 setObject:v39 forKeyedSubscript:@"AFH_ALL"];

              wrmBTAFHStats = [(WCM_CA_WatchCoexStats *)self wrmBTAFHStats];
              [wrmBTAFHStats addObject:v31];
            }

            objc_sync_exit(lockObjectBTAFHStats);
            +[NSDate timeIntervalSinceReferenceDate];
            v41 = v40;
            [(WCM_CA_WatchCoexStats *)self previousBTAFHStartTime];
            if (v41 - v42 > 300.0)
            {
              [(WCM_CA_WatchCoexStats *)self submitBTAFHStats];
              [(WCM_CA_WatchCoexStats *)self setPreviousBTAFHStartTime:v41];
            }
          }
        }
      }
    }
  }
}

@end