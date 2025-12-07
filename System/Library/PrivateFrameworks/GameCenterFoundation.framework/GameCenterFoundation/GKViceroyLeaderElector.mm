@interface GKViceroyLeaderElector
- (BOOL)haveAllHostScores;
- (BOOL)selectHostIfRequestedAndAllScored;
- (GKTransportMatchDataDelegate)matchDataDelegate;
- (GKViceroyLeaderElector)initWithMatchDataDelegate:(id)delegate;
- (void)addHostScore:(int)score forPlayer:(id)player;
- (void)calculateHostScore;
- (void)chooseBestHostingPlayerWithCompletionHandler:(id)handler;
- (void)networkStatisticsDidChange:(id)change localPlayerPeerID:(id)d;
- (void)receivedChooseHostData:(id)data fromPlayerID:(id)d;
- (void)sendHostScoreAsQuery:(BOOL)query;
@end

@implementation GKViceroyLeaderElector

- (GKViceroyLeaderElector)initWithMatchDataDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = GKViceroyLeaderElector;
  v5 = [(GKViceroyLeaderElector *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_matchDataDelegateWeak, delegateCopy);
  }

  return v6;
}

- (void)chooseBestHostingPlayerWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    matchDataDelegate = [(GKViceroyLeaderElector *)self matchDataDelegate];
    v6 = matchDataDelegate;
    if (self->_chooseHostCompletion || matchDataDelegate && ([matchDataDelegate expectedPlayerCount] || !objc_msgSend(v6, "currentPlayerCount")))
    {
      handlerCopy[2](handlerCopy, 0);
    }

    else
    {
      selfCopy = self;
      objc_sync_enter(selfCopy);
      if (!selfCopy->_hostScores)
      {
        dictionary = [MEMORY[0x277CBEB38] dictionary];
        [(GKViceroyLeaderElector *)selfCopy setHostScores:dictionary];
      }

      objc_sync_exit(selfCopy);

      [(GKViceroyLeaderElector *)selfCopy setChooseHostCompletion:handlerCopy];
      [(GKViceroyLeaderElector *)selfCopy calculateHostScore];
      if (![(GKViceroyLeaderElector *)selfCopy selectHostIfRequestedAndAllScored])
      {
        if (selfCopy->_needHostScore)
        {
          [(GKViceroyLeaderElector *)selfCopy setHostScoreForQuery:1];
        }

        else
        {
          [(GKViceroyLeaderElector *)selfCopy sendHostScoreAsQuery:1];
        }

        v9 = dispatch_time(0, 15000000000);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __71__GKViceroyLeaderElector_chooseBestHostingPlayerWithCompletionHandler___block_invoke;
        block[3] = &unk_2785DD760;
        block[4] = selfCopy;
        dispatch_after(v9, MEMORY[0x277D85CD0], block);
      }
    }
  }
}

void __71__GKViceroyLeaderElector_chooseBestHostingPlayerWithCompletionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1[2])
  {
    v3 = v1;
    objc_sync_enter(v3);
    if (*(*(a1 + 32) + 24))
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __71__GKViceroyLeaderElector_chooseBestHostingPlayerWithCompletionHandler___block_invoke_2;
      block[3] = &unk_2785DD760;
      block[4] = *(a1 + 32);
      dispatch_async(MEMORY[0x277D85CD0], block);
    }

    objc_sync_exit(v3);
  }
}

void (**__71__GKViceroyLeaderElector_chooseBestHostingPlayerWithCompletionHandler___block_invoke_2(uint64_t a1))(void *, void)
{
  result = *(*(a1 + 32) + 16);
  if (result)
  {
    result[2](result, 0);
    v3 = *(a1 + 32);

    return [v3 setChooseHostCompletion:0];
  }

  return result;
}

- (void)networkStatisticsDidChange:(id)change localPlayerPeerID:(id)d
{
  dCopy = d;
  [(GKViceroyLeaderElector *)self setNetworkStatistics:change];
  [(GKViceroyLeaderElector *)self setLocalPlayerPeerID:dCopy];

  if (self->_needHostScore)
  {
    [(GKViceroyLeaderElector *)self calculateHostScore];
    [(GKViceroyLeaderElector *)self sendHostScoreAsQuery:self->_hostScoreForQuery];
    [(GKViceroyLeaderElector *)self selectHostIfRequestedAndAllScored];
    [(GKViceroyLeaderElector *)self setNeedHostScore:0];

    [(GKViceroyLeaderElector *)self setHostScoreForQuery:0];
  }
}

- (void)receivedChooseHostData:(id)data fromPlayerID:(id)d
{
  dataCopy = data;
  dCopy = d;
  v7 = dataCopy;
  v8 = *[dataCopy bytes];
  if ([dataCopy length] < 5)
  {
    bOOLValue = 1;
    if (dCopy)
    {
LABEL_8:
      matchDataDelegate = [(GKViceroyLeaderElector *)self matchDataDelegate];
      v17 = [matchDataDelegate playerFromID:dCopy];
      [(GKViceroyLeaderElector *)self addHostScore:v8 forPlayer:v17];
    }
  }

  else
  {
    v9 = MEMORY[0x277CBEA90];
    v10 = dataCopy;
    v11 = [v9 dataWithBytes:objc_msgSend(dataCopy length:{"bytes") + 4, objc_msgSend(dataCopy, "length") - 4}];

    v12 = [MEMORY[0x277CCAC58] propertyListWithData:v11 options:0 format:0 error:0];
    v13 = v12;
    if (v12)
    {
      v14 = [v12 objectForKey:@"query"];
      bOOLValue = [v14 BOOLValue];
    }

    else
    {
      bOOLValue = 1;
    }

    dataCopy = v11;
    if (dCopy)
    {
      goto LABEL_8;
    }
  }

  [(GKViceroyLeaderElector *)self calculateHostScore];
  if (bOOLValue)
  {
    [(GKViceroyLeaderElector *)self sendHostScoreAsQuery:0];
  }

  [(GKViceroyLeaderElector *)self selectHostIfRequestedAndAllScored];
}

- (void)addHostScore:(int)score forPlayer:(id)player
{
  v13[2] = *MEMORY[0x277D85DE8];
  playerCopy = player;
  if (playerCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    hostScores = selfCopy->_hostScores;
    if (!hostScores)
    {
      v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
      [(GKViceroyLeaderElector *)selfCopy setHostScores:v9];

      hostScores = selfCopy->_hostScores;
    }

    v13[0] = playerCopy;
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:score];
    v13[1] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
    referenceKey = [playerCopy referenceKey];
    [(NSMutableDictionary *)hostScores setObject:v11 forKey:referenceKey];

    objc_sync_exit(selfCopy);
  }
}

- (BOOL)haveAllHostScores
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSMutableDictionary *)selfCopy->_hostScores count];
  matchDataDelegate = [(GKViceroyLeaderElector *)selfCopy matchDataDelegate];
  LOBYTE(v3) = v3 == [matchDataDelegate currentPlayerCountIncludingLocalPlayer];

  objc_sync_exit(selfCopy);
  return v3;
}

- (BOOL)selectHostIfRequestedAndAllScored
{
  v30 = *MEMORY[0x277D85DE8];
  if (self->_chooseHostCompletion)
  {
    haveAllHostScores = [(GKViceroyLeaderElector *)self haveAllHostScores];
    if (haveAllHostScores)
    {
      v4 = +[GKLocalPlayer localPlayer];
      referenceKey = [v4 referenceKey];
      selfCopy = self;
      objc_sync_enter(selfCopy);
      p_isa = &selfCopy->super.isa;
      v7 = [(NSMutableDictionary *)selfCopy->_hostScores objectForKey:referenceKey];
      v8 = [v7 objectAtIndex:1];
      integerValue = [v8 integerValue];

      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      obj = selfCopy->_hostScores;
      v10 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v10)
      {
        v11 = *v26;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v26 != v11)
            {
              objc_enumerationMutation(obj);
            }

            v13 = *(*(&v25 + 1) + 8 * i);
            v14 = [p_isa[3] objectForKey:v13];

            v7 = v14;
            v15 = [v14 objectAtIndex:1];
            integerValue2 = [v15 integerValue];

            if (integerValue2 > integerValue || integerValue2 == integerValue && [referenceKey caseInsensitiveCompare:v13] == -1)
            {
              v17 = [v7 objectAtIndex:0];

              v18 = v13;
              integerValue = integerValue2;
              referenceKey = v18;
              v4 = v17;
            }
          }

          v10 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v25 objects:v29 count:16];
        }

        while (v10);
      }

      [p_isa setHostScores:0];
      objc_sync_exit(p_isa);

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __59__GKViceroyLeaderElector_selectHostIfRequestedAndAllScored__block_invoke;
      block[3] = &unk_2785DEBA8;
      block[4] = p_isa;
      v24 = v4;
      v19 = v4;
      dispatch_async(MEMORY[0x277D85CD0], block);

      LOBYTE(haveAllHostScores) = 1;
    }
  }

  else
  {
    LOBYTE(haveAllHostScores) = 0;
  }

  return haveAllHostScores;
}

void *__59__GKViceroyLeaderElector_selectHostIfRequestedAndAllScored__block_invoke(void *result)
{
  v1 = *(*(result + 4) + 16);
  if (v1)
  {
    v2 = result;
    v3 = [*(result + 5) internal];
    v4 = [v3 playerID];
    (*(v1 + 16))(v1, v4);

    v5 = v2[4];

    return [v5 setChooseHostCompletion:0];
  }

  return result;
}

- (void)calculateHostScore
{
  v72 = *MEMORY[0x277D85DE8];
  v48 = +[GKLocalPlayer local];
  referenceKey = [v48 referenceKey];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v4 = [(NSMutableDictionary *)selfCopy->_hostScores objectForKey:referenceKey];

  objc_sync_exit(selfCopy);
  if (!v4)
  {
    networkStatistics = selfCopy->_networkStatistics;
    if (networkStatistics && selfCopy->_localPlayerPeerID && (v49 = selfCopy, -[NSDictionary objectForKey:](networkStatistics, "objectForKey:"), v6 = objc_claimAutoreleasedReturnValue(), [v6 objectForKey:@"GKSStatsLinks"], v7 = objc_claimAutoreleasedReturnValue(), v6, v7))
    {
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v8 = v7;
      v9 = [v8 countByEnumeratingWithState:&v56 objects:v71 count:16];
      if (v9)
      {
        v10 = *v57;
        v50 = 0.0;
        v51 = 0.0;
        v11 = 0.0;
        v12 = 0.0;
        v13 = 0.0;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v57 != v10)
            {
              objc_enumerationMutation(v8);
            }

            v15 = [v8 objectForKey:{*(*(&v56 + 1) + 8 * i), referenceKey}];
            v16 = [v15 objectForKey:@"GKSStatsSendBWE"];
            [v16 doubleValue];
            v18 = v17;

            v19 = [v15 objectForKey:@"GKSStatsRecvBWE"];
            [v19 doubleValue];
            v21 = v20;

            v22 = [v15 objectForKey:@"GKSStatsSendPLR"];
            [v22 doubleValue];
            v24 = v23;

            v25 = [v15 objectForKey:@"GKSStatsRecvPLR"];
            [v25 doubleValue];
            v27 = v26;

            v28 = [v15 objectForKey:@"GKSStatsRTT"];
            [v28 doubleValue];
            v30 = v29;

            v13 = v13 + v18;
            v12 = v12 + v21;
            v11 = v11 + v24;
            v50 = v50 + v27;
            v51 = v51 + v30;
          }

          v9 = [v8 countByEnumeratingWithState:&v56 objects:v71 count:16];
        }

        while (v9);
      }

      else
      {
        v50 = 0.0;
        v51 = 0.0;
        v11 = 0.0;
        v12 = 0.0;
        v13 = 0.0;
      }

      v31 = [v8 count];
      if (v31 < 2)
      {
        v32 = v50;
        v33 = v51;
      }

      else
      {
        v13 = v13 / v31;
        v12 = v12 / v31;
        v11 = v11 / v31;
        v32 = v50 / v31;
        v33 = v51 / v31;
      }

      v34 = os_log_GKGeneral;
      if (!os_log_GKGeneral)
      {
        v35 = GKOSLoggers();
        v34 = os_log_GKGeneral;
      }

      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        *buf = 134219264;
        *v62 = ((((v12 + v13) * 0.3 + 0.0) - (v32 + v11) * 0.3) + v33 * -0.4);
        *&v62[8] = 2048;
        *&v62[10] = v13;
        v63 = 2048;
        v64 = v12;
        v65 = 2048;
        v66 = v11;
        v67 = 2048;
        v68 = v32;
        v69 = 2048;
        v70 = v33;
        _os_log_impl(&dword_227904000, v34, OS_LOG_TYPE_INFO, "[GKViceroyLeaderElector] Host score %ld  (sendBandwidth = %f, receiveBandwidth = %f, sendLoss = %f, receiveLoss = %f, rtt = %f)", buf, 0x3Eu);
      }

      [(GKViceroyLeaderElector *)v49 addHostScore:((((v12 + v13) * 0.3 + 0.0) - (v32 + v11) * 0.3) + v33 * -0.4) forPlayer:v48, referenceKey];
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      matchDataDelegate = [(GKViceroyLeaderElector *)v49 matchDataDelegate];
      guestPlayers = [matchDataDelegate guestPlayers];

      v38 = [guestPlayers countByEnumeratingWithState:&v52 objects:v60 count:16];
      if (v38)
      {
        v39 = *v53;
        do
        {
          for (j = 0; j != v38; ++j)
          {
            if (*v53 != v39)
            {
              objc_enumerationMutation(guestPlayers);
            }

            v41 = *(*(&v52 + 1) + 8 * j);
            [(GKViceroyLeaderElector *)v49 addHostScore:0 forPlayer:v41];
            v42 = os_log_GKGeneral;
            if (!os_log_GKGeneral)
            {
              v43 = GKOSLoggers();
              v42 = os_log_GKGeneral;
            }

            if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
            {
              v44 = v42;
              internal = [v41 internal];
              playerID = [internal playerID];
              *buf = 67109378;
              *v62 = 0;
              *&v62[4] = 2112;
              *&v62[6] = playerID;
              _os_log_impl(&dword_227904000, v44, OS_LOG_TYPE_INFO, "[GKViceroyLeaderElector] Added host score of %i for guest player = %@", buf, 0x12u);
            }
          }

          v38 = [guestPlayers countByEnumeratingWithState:&v52 objects:v60 count:16];
        }

        while (v38);
      }

      [(GKViceroyLeaderElector *)v49 selectHostIfRequestedAndAllScored];
    }

    else
    {
      [(GKViceroyLeaderElector *)selfCopy setNeedHostScore:1, referenceKey];
    }
  }
}

- (void)sendHostScoreAsQuery:(BOOL)query
{
  queryCopy = query;
  v24[1] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  hostScores = selfCopy->_hostScores;
  v6 = +[GKLocalPlayer localPlayer];
  referenceKey = [v6 referenceKey];
  v8 = [(NSMutableDictionary *)hostScores objectForKey:referenceKey];

  objc_sync_exit(selfCopy);
  if (v8)
  {
    v23 = @"query";
    v9 = [MEMORY[0x277CCABB0] numberWithBool:queryCopy];
    v24[0] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];

    v11 = [MEMORY[0x277CCAC58] dataWithPropertyList:v10 format:200 options:0 error:0];
    v12 = [v8 objectAtIndex:1];
    integerValue = [v12 integerValue];

    v20 = integerValue;
    v14 = [MEMORY[0x277CBEB28] dataWithBytes:&v20 length:4];
    [v14 appendData:v11];
    matchDataDelegate = [(GKViceroyLeaderElector *)selfCopy matchDataDelegate];
    v19 = 0;
    [matchDataDelegate sendPacketDataToAll:v14 packetType:4 dataMode:0 error:&v19];
    v16 = v19;

    if (v16)
    {
      v17 = os_log_GKGeneral;
      if (!os_log_GKGeneral)
      {
        v18 = GKOSLoggers();
        v17 = os_log_GKGeneral;
      }

      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v22 = v16;
        _os_log_impl(&dword_227904000, v17, OS_LOG_TYPE_INFO, "[GKViceroyLeaderElector] Failed to enqueue GKMatchChooseHostPacketType send to all, error %@", buf, 0xCu);
      }
    }
  }
}

- (GKTransportMatchDataDelegate)matchDataDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_matchDataDelegateWeak);

  return WeakRetained;
}

@end