@interface GKConnectionInternal
- (BOOL)convertParticipantID:(id)d toPeerID:(id *)iD;
- (BOOL)convertPeerID:(id)d toParticipantID:(id *)iD;
- (BOOL)localGamingCheckEstablishConnection:(id)connection connectionData:(id)data;
- (BOOL)shouldWeInitiateRelayWithPID:(unsigned int)d;
- (BOOL)startListeningForLocalGamingCDX;
- (GKConnectionInternal)initWithParticipantID:(id)d;
- (id)createInitiateRelayDictionaryForParticipant:(id)participant remotePeerID:(id)d;
- (id)createInsecureTicketUsingSortedConnectionsFromList:(id)list;
- (id)eventDelegate;
- (id)extractBlobUsingData:(id)data withSourcePID:(unsigned int)d destPID:(unsigned int)iD;
- (id)getLocalConnectionDataForLocalGaming;
- (id)networkStatistics;
- (id)networkStatisticsDictionaryForGCKStats:(void *)stats;
- (id)newRelayUpdateDictionaryForParticipant:(id)participant didInitiate:(BOOL)initiate;
- (unsigned)gckPID;
- (void)CDXClient:(id)client error:(id)error;
- (void)CDXClient:(id)client preblob:(id)preblob;
- (void)CDXClientSession:(id)session receivedData:(id)data from:(int64_t)from;
- (void)addEvent:(id *)event remotePeer:(unsigned int)peer;
- (void)cancelConnectParticipant:(id)participant;
- (void)connectParticipantsWithConnectionData:(id)data withSessionInfo:(id)info;
- (void)connectPendingConnectionsFromList:(id)list sessionInfo:(id)info;
- (void)dealloc;
- (void)doRelayCheckForRemotePeerID:(id)d;
- (void)eventDelegate;
- (void)gckPID;
- (void)getLocalConnectionDataForLocalGaming;
- (void)getLocalConnectionDataWithCompletionHandler:(id)handler;
- (void)initiateRelayWithParticipant:(id)participant withConnectionData:(id)data withRelayInfo:(id)info didInitiate:(BOOL)initiate;
- (void)internalInitiateRelayWithParticipant:(id)participant withConnectionData:(id)data withRelayInfo:(id)info didInitiate:(BOOL)initiate;
- (void)internalUpdateRelayWithParticipant:(id)participant withConnectionData:(id)data withRelayInfo:(id)info didInitiate:(BOOL)initiate;
- (void)internal_setRemoteConnectionData:(id)data fromParticipantID:(id)d pendingConnectionPIDList:(id)list;
- (void)localGamingReceiveDataHandler:(id)handler data:(id)data time:(double)time error:(id)error;
- (void)preRelease;
- (void)setCdxClient:(id)client;
- (void)setEventDelegate:(id)delegate;
- (void)setParticipantID:(id)d forPeerID:(id)iD;
- (void)startListeningForLocalGamingCDX;
- (void)updateRelayWithParticipant:(id)participant withConnectionData:(id)data withRelayInfo:(id)info didInitiate:(BOOL)initiate;
@end

@implementation GKConnectionInternal

- (GKConnectionInternal)initWithParticipantID:(id)d
{
  VRTraceReset();
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"GKVerboseLogging", @"com.apple.gamekit", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v6 = AppBooleanValue == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    VRTraceSetErrorLogLevel();
  }

  v12.receiver = self;
  v12.super_class = GKConnectionInternal;
  v7 = [(GKConnectionInternal *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_cdxSessions = 0;
    *&v7->_gckPID = d;
    UniqueID = GCKSessionCreateUniqueID();
    *(v8 + 20) = UniqueID;
    if (GCKSessionCreate(0, UniqueID, GCKEventListenerForGKConnection, v8, (v8 + 32)))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          [GKConnectionInternal initWithParticipantID:];
        }
      }

      return 0;
    }

    else
    {
      *(v8 + 504) = 0;
      *(v8 + 40) = objc_alloc_init(MEMORY[0x277CBEB18]);
      GCKSessionSetLocalName(*(v8 + 32), [d UTF8String], objc_msgSend(d, "lengthOfBytesUsingEncoding:", 4));
      pthread_mutex_init((v8 + 96), 0);
      pthread_cond_init((v8 + 160), 0);
      pthread_mutex_init((v8 + 208), 0);
      pthread_cond_init((v8 + 272), 0);
      pthread_mutex_init((v8 + 400), 0);
      *(v8 + 336) = objc_alloc_init(MEMORY[0x277CBEB38]);
      *(v8 + 352) = objc_alloc_init(MEMORY[0x277CBEB38]);
      *(v8 + 344) = objc_alloc_init(MEMORY[0x277CBEB38]);
      *(v8 + 360) = objc_alloc_init(MEMORY[0x277CBEB18]);
      *(v8 + 384) = objc_alloc_init(MEMORY[0x277CBEB38]);
      *(v8 + 464) = objc_alloc_init(MEMORY[0x277CBEB38]);
      *(v8 + 480) = objc_alloc_init(MEMORY[0x277CBEB38]);
      *(v8 + 472) = objc_alloc_init(MEMORY[0x277CBEB38]);
      *(v8 + 488) = objc_alloc_init(MEMORY[0x277CBEB38]);
      *(v8 + 496) = objc_alloc_init(MEMORY[0x277CBEB38]);
      *(v8 + 376) = objc_alloc_init(MEMORY[0x277CBEB18]);
      if (+[GKConnection isRelayEnabled])
      {
        *(v8 + 368) = 1;
      }

      *(v8 + 528) = objc_alloc_init(MEMORY[0x277CBEB38]);
      *(v8 + 536) = objc_alloc_init(MEMORY[0x277CBEB38]);
      *(v8 + 544) = objc_alloc_init(MEMORY[0x277CBEB58]);
      [*(v8 + 384) setObject:d forKeyedSubscript:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%d", *(v8 + 20))}];
      [v8 setCdxSessions:{objc_msgSend(MEMORY[0x277CBEB38], "dictionary")}];
      v10 = CFGetAllocator(v8);
      *(v8 + 392) = CFDictionaryCreateMutable(v10, 0, MEMORY[0x277CBF138], &dispatch_value_callbacks);
      if ([off_279682970 getAddressForService:*off_2796828C0])
      {
        [v8 setCdxClient:{-[CDXClient initWithOptions:delegate:]([CDXClient alloc], "initWithOptions:delegate:", 0, v8)}];
      }

      *(v8 + 508) = -1;
      *(v8 + 560) = objc_alloc_init(MEMORY[0x277CE57F0]);
    }
  }

  return v8;
}

- (void)preRelease
{
  v21 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x277CE5818];
    v6 = *MEMORY[0x277CE5818];
    if (*MEMORY[0x277CE5808] == 1)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        if (objc_opt_class())
        {
          v7 = objc_opt_class();
          uTF8String = [objc_msgSend_description(v7) UTF8String];
        }

        else
        {
          uTF8String = "<nil>";
        }

        v11 = 136316162;
        v12 = v4;
        v13 = 2080;
        v14 = "[GKConnectionInternal preRelease]";
        v15 = 1024;
        v16 = 512;
        v17 = 2080;
        v18 = uTF8String;
        v19 = 2080;
        Name = sel_getName(a2);
        _os_log_impl(&dword_24E50C000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [%s %s]", &v11, 0x30u);
      }
    }

    else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      if (objc_opt_class())
      {
        v10 = objc_opt_class();
        uTF8String2 = [objc_msgSend_description(v10) UTF8String];
      }

      else
      {
        uTF8String2 = "<nil>";
      }

      v11 = 136316162;
      v12 = v4;
      v13 = 2080;
      v14 = "[GKConnectionInternal preRelease]";
      v15 = 1024;
      v16 = 512;
      v17 = 2080;
      v18 = uTF8String2;
      v19 = 2080;
      Name = sel_getName(a2);
      _os_log_debug_impl(&dword_24E50C000, v5, OS_LOG_TYPE_DEBUG, " [%s] %s:%d [%s %s]", &v11, 0x30u);
    }
  }

  LODWORD(self->_updateRelayQueue) = 1;
}

- (void)dealloc
{
  [*(a2 + 24) UTF8String];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_10_1();
  _os_log_debug_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 0x30u);
}

- (void)getLocalConnectionDataWithCompletionHandler:(id)handler
{
  v32[1] = *MEMORY[0x277D85DE8];
  TimingLog(3, 1, "Getting local connection data");
  perfTimerStart();
  pthread_mutex_lock(&self->_preblobCallbackCancelTime);
  if (self->_preblob)
  {
    v5 = MEMORY[0x277CCA9B8];
    v31 = *MEMORY[0x277CCA470];
    v32[0] = @"Previous getLocalConnectionData not completed yet";
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:&v31 count:1];
    v7 = v5;
    v8 = 510;
LABEL_3:
    (*(handler + 2))(handler, 0, [v7 errorWithDomain:@"GKConnection" code:v8 userInfo:v6]);
    goto LABEL_17;
  }

  if (![(GKConnectionInternal *)self cdxClient])
  {
    if (![off_279682970 getAddressForService:*off_2796828C0])
    {
      v18 = MEMORY[0x277CCA9B8];
      v29 = *MEMORY[0x277CCA470];
      v30 = @"CDX settings are not set";
      v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
      v7 = v18;
      v8 = 509;
      goto LABEL_3;
    }

    [(GKConnectionInternal *)self setCdxClient:[[CDXClient alloc] initWithOptions:0 delegate:self]];
  }

  if (self->_cdxSessions)
  {
    v20 = bswap32(*(&self->super._pid + 1));
    v9 = [MEMORY[0x277CBEB28] dataWithBytes:&v20 length:4];
    [v9 appendData:self->_cdxSessions];
    TimingLog(3, 0, "Got local connection data - passing data to app");
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x277CE5818];
      v12 = *MEMORY[0x277CE5818];
      if (*MEMORY[0x277CE5808] == 1)
      {
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = [v9 length];
          *buf = 136315906;
          v22 = v10;
          v23 = 2080;
          v24 = "[GKConnectionInternal getLocalConnectionDataWithCompletionHandler:]";
          v25 = 1024;
          v26 = 609;
          v27 = 2048;
          v28 = v13;
          _os_log_impl(&dword_24E50C000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Got local connection data size=%lu", buf, 0x26u);
        }
      }

      else if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [(GKConnectionInternal *)v10 getLocalConnectionDataWithCompletionHandler:v9];
      }
    }

    (*(handler + 2))(handler, v9, 0);
    TimingLog(3, 0, "Got local connection data - done");
    perfTimerStop();
  }

  else
  {
    v14 = [handler copy];
    self->_preblob = v14;
    *&self->_preblobCallback = micro(v14, v15) + 60.0;
    v16 = dispatch_time(0, 60000000000);
    asyncWorkQueue = [(GKConnectionInternal *)self asyncWorkQueue];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __68__GKConnectionInternal_getLocalConnectionDataWithCompletionHandler___block_invoke;
    v19[3] = &unk_279682BA8;
    v19[4] = self;
    dispatch_after(v16, asyncWorkQueue, v19);
  }

LABEL_17:
  pthread_mutex_unlock(&self->_preblobCallbackCancelTime);
}

uint64_t __68__GKConnectionInternal_getLocalConnectionDataWithCompletionHandler___block_invoke(uint64_t a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = pthread_mutex_lock((*(a1 + 32) + 96));
  v4 = micro(v2, v3);
  v5 = *(a1 + 32);
  if (*(v5 + 80) && v4 > *(v5 + 88))
  {
    TimingLog(3, 0, "Got local connection data - timeout");
    v6 = *(*(a1 + 32) + 80);
    v8 = *MEMORY[0x277CCA470];
    v9[0] = @"getLocalConnectionData timed out";
    (*(v6 + 16))(v6, 0, [MEMORY[0x277CCA9B8] errorWithDomain:@"GKConnection" code:503 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v9, &v8, 1)}]);

    *(*(a1 + 32) + 80) = 0;
    v5 = *(a1 + 32);
  }

  return pthread_mutex_unlock((v5 + 96));
}

- (BOOL)shouldWeInitiateRelayWithPID:(unsigned int)d
{
  v31 = *MEMORY[0x277D85DE8];
  memset(md, 170, sizeof(md));
  memset(v26, 170, sizeof(v26));
  data = bswap32(*(&self->super._pid + 1));
  v30 = bswap32(d);
  v28[0] = v30;
  v28[1] = data;
  CC_MD5(&data, 8u, md);
  CC_MD5(v28, 8u, v26);
  v5 = bswap64(*md);
  v6 = bswap64(*v26);
  if (v5 == v6 && (v5 = bswap64(*&md[8]), v6 = bswap64(*&v26[8]), v5 == v6))
  {
    v7 = 0;
  }

  else if (v5 < v6)
  {
    v7 = -1;
  }

  else
  {
    v7 = 1;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(&self->super._pid + 1);
      v11 = @"should not";
      v14 = 136316418;
      v15 = v8;
      if (v7 < 0)
      {
        v11 = @"should";
      }

      v16 = 2080;
      v17 = "[GKConnectionInternal shouldWeInitiateRelayWithPID:]";
      v18 = 1024;
      v19 = 752;
      v20 = 1024;
      v21 = v10;
      v22 = 2112;
      v23 = v11;
      v24 = 1024;
      dCopy = d;
      _os_log_impl(&dword_24E50C000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d shouldWeInitiateRelayWithPID: Local participant='%d' %@ initiate relay with remote participant='%d'", &v14, 0x32u);
    }
  }

  return v7 >> 31;
}

- (void)connectParticipantsWithConnectionData:(id)data withSessionInfo:(id)info
{
  v79 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v7 = *&self->_gckPID;
      v8 = *(&self->super._pid + 1);
      *buf = 136316674;
      *&buf[4] = v5;
      *&buf[12] = 2080;
      *&buf[14] = "[GKConnectionInternal connectParticipantsWithConnectionData:withSessionInfo:]";
      *&buf[22] = 1024;
      *&buf[24] = 757;
      *&buf[28] = 2112;
      *&buf[30] = v7;
      *&buf[38] = 1024;
      *&buf[40] = v8;
      *&buf[44] = 2112;
      *&buf[46] = data;
      v77 = 2112;
      infoCopy = info;
      _os_log_impl(&dword_24E50C000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GKConnectionInternal(%@ (%d)) connectParticipantsWithConnectionData is '%@', sessionInfo is '%@'", buf, 0x40u);
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = v9;
      *&buf[12] = 2080;
      *&buf[14] = "[GKConnectionInternal connectParticipantsWithConnectionData:withSessionInfo:]";
      *&buf[22] = 1024;
      *&buf[24] = 759;
      _os_log_impl(&dword_24E50C000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d start-p2p-hole-punch", buf, 0x1Cu);
    }
  }

  TimingLog(3, 1, "Start holepunching for peer to peer");
  object = dispatch_group_create();
  if (object)
  {
    v53 = objc_alloc_init(MEMORY[0x277CBEB18]);
    obj = [data allKeys];
    if (info)
    {
      objc_sync_enter(self);
      if (LOBYTE(self->_pendingConnectionPIDList) == 1 && [obj count] == 1)
      {
        v11 = [data objectForKeyedSubscript:{objc_msgSend(obj, "objectAtIndexedSubscript:", 0)}];
        if ([v11 length] < 4)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            v36 = VRTraceErrorLogLevelToCSTR();
            v37 = *MEMORY[0x277CE5818];
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
            {
              -[GKConnectionInternal connectParticipantsWithConnectionData:withSessionInfo:].cold.1([objc_msgSend(obj objectAtIndex:{0), "UTF8String"}], buf, v36, v37);
            }
          }
        }

        else
        {
          v12 = *[v11 bytes];
          v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%d", bswap32(v12)];
          [*&self->_fAllowMoreRelay addObject:v13];

          LOBYTE(self->_pendingConnectionPIDList) = 0;
        }
      }

      objc_sync_exit(self);
      v59 = 0u;
      v60 = 0u;
      v61 = 0u;
      v62 = 0u;
      v38 = [obj countByEnumeratingWithState:&v59 objects:v69 count:16];
      if (v38)
      {
        v39 = *v60;
        do
        {
          for (i = 0; i != v38; ++i)
          {
            if (*v60 != v39)
            {
              objc_enumerationMutation(obj);
            }

            v41 = *(*(&v59 + 1) + 8 * i);
            v42 = [data objectForKeyedSubscript:v41];
            v43 = v42;
            if (v42)
            {
              v44 = bswap32(*[v42 bytes]);
              v45 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", v44];
              [(GKConnectionInternal *)self setParticipantID:v41 forPeerID:v45];
              connectingGKLog();
              [objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8] "mainBundle")];
              reportingGKAppInfo();
              asyncWorkQueue = [(GKConnectionInternal *)self asyncWorkQueue];
              block[0] = MEMORY[0x277D85DD0];
              block[1] = 3221225472;
              block[2] = __78__GKConnectionInternal_connectParticipantsWithConnectionData_withSessionInfo___block_invoke_200;
              block[3] = &unk_279682FA0;
              block[4] = self;
              block[5] = v41;
              block[6] = v45;
              block[7] = v43;
              block[8] = v53;
              v58 = v44;
              dispatch_group_async(object, asyncWorkQueue, block);
            }
          }

          v38 = [obj countByEnumeratingWithState:&v59 objects:v69 count:16];
        }

        while (v38);
      }

      asyncWorkQueue2 = [(GKConnectionInternal *)self asyncWorkQueue];
      v56[0] = MEMORY[0x277D85DD0];
      v56[1] = 3221225472;
      v56[2] = __78__GKConnectionInternal_connectParticipantsWithConnectionData_withSessionInfo___block_invoke_204;
      v56[3] = &unk_279682C18;
      v56[4] = self;
      v56[5] = v53;
      v56[6] = info;
      dispatch_group_notify(object, asyncWorkQueue2, v56);

      dispatch_release(object);
    }

    else
    {
      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      v49 = [obj countByEnumeratingWithState:&v65 objects:v75 count:16];
      if (v49)
      {
        v51 = 0;
        v48 = *v66;
        for (j = *v66; ; j = *v66)
        {
          if (j != v48)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v65 + 1) + 8 * v51);
          v16 = [data objectForKeyedSubscript:v15];
          if ([v16 length] > 5)
          {
            v21 = *[v16 bytes];
            v22 = *([v16 bytes] + 4);
            if ([(GKConnectionInternal *)self shouldWeInitiateRelayWithPID:bswap32(v21)])
            {
              v23 = [MEMORY[0x277CBEB58] set];
              bytes = [v16 bytes];
              if (([v16 length] - 11) <= 0xFFFFFFFFFFFFFFFALL)
              {
                v25 = 6;
                do
                {
                  v26 = v25 + 1;
                  v74 = 0xAAAAAAAAAAAAAAAALL;
                  v73 = 0xAAAAAAAAAAAAAAAALL;
                  v27 = *(bytes + v25);
                  if (v27 == 4)
                  {
                    v74 = 0;
                    v73 = 528;
                    HIDWORD(v73) = *(bytes + v26);
                    TimingLog(3, 0, "starting local CDX tcp connection (connect)");
                    v28 = objc_alloc_init(GKAsyncSocket);
                    v25 += 5;
                    if (v28)
                    {
                      [v23 addObject:v28];
                      v64[0] = MEMORY[0x277D85DD0];
                      v64[1] = 3221225472;
                      v64[2] = __78__GKConnectionInternal_connectParticipantsWithConnectionData_withSessionInfo___block_invoke;
                      v64[3] = &unk_279682EE0;
                      v64[4] = self;
                      v64[5] = v28;
                      [(GKAsyncSocket *)v28 setReceiveDataHandler:v64];
                      v63[0] = MEMORY[0x277D85DD0];
                      v63[1] = 3221225472;
                      v63[2] = __78__GKConnectionInternal_connectParticipantsWithConnectionData_withSessionInfo___block_invoke_2;
                      v63[3] = &unk_279682F28;
                      v63[4] = v23;
                      v63[5] = v28;
                      v63[6] = self;
                      [(GKAsyncSocket *)v28 setConnectedHandler:v63];
                      *&buf[46] = 0xAAAAAAAAAAAAAAAALL;
                      *&v29 = 0xAAAAAAAAAAAAAAAALL;
                      *(&v29 + 1) = 0xAAAAAAAAAAAAAAAALL;
                      *&buf[16] = v29;
                      *&buf[32] = v29;
                      *buf = v29;
                      v72 = 0xAAAAAAAAAAAAAAAALL;
                      v70 = v29;
                      v71 = v29;
                      v30 = MEMORY[0x277CCACA8];
                      v31 = *(&self->super._pid + 1);
                      SAToIPPORT();
                      -[GKAsyncSocket setSocketName:](v28, "setSocketName:", [v30 stringWithFormat:@"localCDX[%u][%08X] (connect-to[%s]) (ptr=%p)", v31, v31, IPPORTToStringWithSize(), v28]);
                      [(GKAsyncSocket *)v28 setTargetQueue:MEMORY[0x277D85CD0]];
                      [(GKAsyncSocket *)v28 tcpConnectSockAddr:&v73 port:v22];
                    }
                  }

                  else
                  {
                    if (VRTraceGetErrorLogLevelForModule() >= 3)
                    {
                      v32 = VRTraceErrorLogLevelToCSTR();
                      v33 = *MEMORY[0x277CE5818];
                      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
                      {
                        *buf = 136315906;
                        *&buf[4] = v32;
                        *&buf[12] = 2080;
                        *&buf[14] = "[GKConnectionInternal connectParticipantsWithConnectionData:withSessionInfo:]";
                        *&buf[22] = 1024;
                        *&buf[24] = 848;
                        *&buf[28] = 1024;
                        *&buf[30] = v27;
                        _os_log_error_impl(&dword_24E50C000, v33, OS_LOG_TYPE_ERROR, " [%s] %s:%d unknown ip address size (%u)", buf, 0x22u);
                      }
                    }

                    v25 = v26;
                  }
                }

                while (([v16 length] - v25) > 4);
              }
            }

            else if (VRTraceGetErrorLogLevelForModule() >= 7)
            {
              v34 = VRTraceErrorLogLevelToCSTR();
              v35 = *MEMORY[0x277CE5818];
              if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315650;
                *&buf[4] = v34;
                *&buf[12] = 2080;
                *&buf[14] = "[GKConnectionInternal connectParticipantsWithConnectionData:withSessionInfo:]";
                *&buf[22] = 1024;
                *&buf[24] = 792;
                _os_log_impl(&dword_24E50C000, v35, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d other side to start local gaming CDX", buf, 0x1Cu);
              }
            }
          }

          else if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            v17 = VRTraceErrorLogLevelToCSTR();
            v18 = *MEMORY[0x277CE5818];
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
            {
              uTF8String = "<nil>";
              if (v15)
              {
                uTF8String = [objc_msgSend_description(v15) UTF8String];
              }

              v20 = [v16 length];
              *buf = 136316162;
              *&buf[4] = v17;
              *&buf[12] = 2080;
              *&buf[14] = "[GKConnectionInternal connectParticipantsWithConnectionData:withSessionInfo:]";
              *&buf[22] = 1024;
              *&buf[24] = 777;
              *&buf[28] = 2080;
              *&buf[30] = uTF8String;
              *&buf[38] = 1024;
              *&buf[40] = v20;
              _os_log_error_impl(&dword_24E50C000, v18, OS_LOG_TYPE_ERROR, " [%s] %s:%d not enough connection data for %s (%u)", buf, 0x2Cu);
            }
          }

          if (++v51 >= v49)
          {
            v49 = [obj countByEnumeratingWithState:&v65 objects:v75 count:16];
            if (!v49)
            {
              break;
            }

            v51 = 0;
          }
        }
      }

      dispatch_release(object);
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
    {
      [GKConnectionInternal connectParticipantsWithConnectionData:withSessionInfo:];
    }
  }
}

uint64_t __78__GKConnectionInternal_connectParticipantsWithConnectionData_withSessionInfo___block_invoke_2(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      if (a2)
      {
        v6 = [objc_msgSend_description(a2) UTF8String];
      }

      else
      {
        v6 = "<nil>";
      }

      v10 = 136315906;
      v11 = v4;
      v12 = 2080;
      v13 = "[GKConnectionInternal connectParticipantsWithConnectionData:withSessionInfo:]_block_invoke_2";
      v14 = 1024;
      v15 = 823;
      v16 = 2080;
      v17 = v6;
      _os_log_impl(&dword_24E50C000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d connected local CDX (%s)", &v10, 0x26u);
    }
  }

  [*(a1 + 32) removeObject:*(a1 + 40)];
  if (a2)
  {
    return [*(a1 + 40) invalidate];
  }

  [*(a1 + 32) enumerateObjectsUsingBlock:&__block_literal_global_0];
  [*(a1 + 32) removeAllObjects];
  v9 = a1 + 40;
  v8 = *(a1 + 40);
  v10 = bswap32(*(*(v9 + 8) + 20));
  return [v8 sendData:objc_msgSend(MEMORY[0x277CBEA90] withCompletionHandler:{"dataWithBytes:length:", &v10, 4), 0}];
}

void __78__GKConnectionInternal_connectParticipantsWithConnectionData_withSessionInfo___block_invoke_200(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) timerQueue];
  v3 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v2);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __78__GKConnectionInternal_connectParticipantsWithConnectionData_withSessionInfo___block_invoke_2_201;
  v19[3] = &unk_279682F50;
  v4 = *(a1 + 32);
  v20 = *(a1 + 40);
  v21 = v3;
  v6 = *(a1 + 48);
  v5 = *(a1 + 56);
  v22 = v4;
  v23 = v6;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __78__GKConnectionInternal_connectParticipantsWithConnectionData_withSessionInfo___block_invoke_202;
  v18[3] = &unk_279682F78;
  v18[4] = v20;
  v18[5] = v4;
  v18[6] = v6;
  v18[7] = v3;
  v18[8] = v19;
  [v4 internal_setRemoteConnectionData:v5 fromParticipantID:? pendingConnectionPIDList:?];
  if (v3)
  {
    v7 = [*(a1 + 32) timerQueue];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __78__GKConnectionInternal_connectParticipantsWithConnectionData_withSessionInfo___block_invoke_203;
    v17[3] = &unk_279682C18;
    v17[4] = *(a1 + 32);
    v17[5] = v3;
    v17[6] = *(a1 + 48);
    dispatch_sync(v7, v17);
    v8 = [*(a1 + 32) shouldWeInitiateRelayWithPID:*(a1 + 72)];
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    if (v8)
    {
      v10 = 5000000000;
      if (ErrorLogLevelForModule >= 7)
      {
        v11 = VRTraceErrorLogLevelToCSTR();
        v12 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v25 = v11;
          v26 = 2080;
          v27 = "[GKConnectionInternal connectParticipantsWithConnectionData:withSessionInfo:]_block_invoke_2";
          v28 = 1024;
          v29 = 990;
          _os_log_impl(&dword_24E50C000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d connectParticipantsWithConnectionData: This side is initiating relay", buf, 0x1Cu);
        }
      }

      v13 = v18;
    }

    else
    {
      v10 = 120000000000;
      if (ErrorLogLevelForModule >= 7)
      {
        v14 = VRTraceErrorLogLevelToCSTR();
        v15 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v25 = v14;
          v26 = 2080;
          v27 = "[GKConnectionInternal connectParticipantsWithConnectionData:withSessionInfo:]_block_invoke";
          v28 = 1024;
          v29 = 1000;
          _os_log_impl(&dword_24E50C000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d connectParticipantsWithConnectionData: This side is not initiating relay", buf, 0x1Cu);
        }
      }

      v13 = v19;
    }

    v16 = dispatch_time(0, v10);
    dispatch_source_set_timer(v3, v16, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_source_set_event_handler(v3, v13);
    dispatch_resume(v3);
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 2)
  {
    VRTraceErrorLogLevelToCSTR();
    if (VRTraceIsOSFaultDisabled())
    {
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        __78__GKConnectionInternal_connectParticipantsWithConnectionData_withSessionInfo___block_invoke_200_cold_2();
      }
    }

    else if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_FAULT))
    {
      __78__GKConnectionInternal_connectParticipantsWithConnectionData_withSessionInfo___block_invoke_200_cold_1();
    }
  }
}

void __78__GKConnectionInternal_connectParticipantsWithConnectionData_withSessionInfo___block_invoke_2_201(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      *v5 = 136315906;
      *&v5[4] = v2;
      *&v5[12] = 2080;
      *&v5[14] = "[GKConnectionInternal connectParticipantsWithConnectionData:withSessionInfo:]_block_invoke_2";
      v6 = 1024;
      v7 = 896;
      v8 = 2112;
      v9 = v4;
      _os_log_impl(&dword_24E50C000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ************************************ connect_timeout_block Timer hit for '%@'", v5, 0x26u);
    }
  }

  dispatch_source_cancel(*(a1 + 40));
  GCKSessionIsParticipantConnected(*(*(a1 + 48) + 32), [*(a1 + 56) intValue], 0);
}

void __78__GKConnectionInternal_connectParticipantsWithConnectionData_withSessionInfo___block_invoke_202(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v14 = 136315906;
      v15 = v2;
      v16 = 2080;
      v17 = "[GKConnectionInternal connectParticipantsWithConnectionData:withSessionInfo:]_block_invoke";
      v18 = 1024;
      v19 = 919;
      v20 = 2112;
      v21 = v4;
      _os_log_impl(&dword_24E50C000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ************************************ relay_setup_block Timer hit for '%@'", &v14, 0x26u);
    }
  }

  v5 = *(*(a1 + 40) + 464);
  objc_sync_enter(v5);
  v6 = [*(*(a1 + 40) + 464) objectForKeyedSubscript:*(a1 + 48)];
  objc_sync_exit(v5);
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (!v6)
  {
    if (ErrorLogLevelForModule >= 6)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v14 = 136315650;
        v15 = v10;
        v16 = 2080;
        v17 = "[GKConnectionInternal connectParticipantsWithConnectionData:withSessionInfo:]_block_invoke";
        v18 = 1024;
        v19 = 930;
        _os_log_impl(&dword_24E50C000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d relay_setup_block relayInitiateInfo is nil", &v14, 0x1Cu);
      }
    }

    GCKSessionIsParticipantConnected(*(*(a1 + 40) + 32), [*(a1 + 48) intValue], 1);
  }

  if (ErrorLogLevelForModule >= 7)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v14 = 136315650;
      v15 = v8;
      v16 = 2080;
      v17 = "[GKConnectionInternal connectParticipantsWithConnectionData:withSessionInfo:]_block_invoke";
      v18 = 1024;
      v19 = 942;
      _os_log_impl(&dword_24E50C000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d relay_setup_block relayInitiateInfo is not nil", &v14, 0x1Cu);
    }
  }

  dispatch_source_set_event_handler(*(a1 + 56), *(a1 + 64));
  v12 = *(a1 + 56);
  v13 = dispatch_time(0, 120000000000);
  dispatch_source_set_timer(v12, v13, 0xFFFFFFFFFFFFFFFFLL, 0);
}

void __78__GKConnectionInternal_connectParticipantsWithConnectionData_withSessionInfo___block_invoke_203(uint64_t a1)
{
  [objc_msgSend(*(a1 + 32) "pidToConnectTimeoutSource")];
  v2 = *(a1 + 40);

  dispatch_release(v2);
}

uint64_t __78__GKConnectionInternal_connectParticipantsWithConnectionData_withSessionInfo___block_invoke_204(uint64_t a1)
{
  pthread_mutex_lock((*(a1 + 32) + 208));
  [*(a1 + 32) connectPendingConnectionsFromList:*(a1 + 40) sessionInfo:*(a1 + 48)];
  v2 = (*(a1 + 32) + 208);

  return pthread_mutex_unlock(v2);
}

- (void)internal_setRemoteConnectionData:(id)data fromParticipantID:(id)d pendingConnectionPIDList:(id)list
{
  v26 = *MEMORY[0x277D85DE8];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  v9 = MEMORY[0x277CE5818];
  if (ErrorLogLevelForModule >= 7)
  {
    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *v9;
    if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
    {
      uTF8String = [*&self->_gckPID UTF8String];
      *buf = 136316162;
      v17 = v10;
      v18 = 2080;
      v19 = "[GKConnectionInternal internal_setRemoteConnectionData:fromParticipantID:pendingConnectionPIDList:]";
      v20 = 1024;
      v21 = 1031;
      v22 = 2080;
      v23 = uTF8String;
      v24 = 2080;
      uTF8String2 = [d UTF8String];
      _os_log_impl(&dword_24E50C000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GKConnectionInternal(%s) -setRemoteConnectionData (%s)", buf, 0x30u);
    }
  }

  v15 = 0;
  v14 = 1350;
  v13 = bswap32(*[data bytes]);
  perfTimerStart();
  TimingLog(3, 0, "Set remote preblob: holepunching for peer to peer\n");
  GCKSessionPrepareConnection(self->_pidGUID, v13, &v15, &v14);
}

- (void)addEvent:(id *)event remotePeer:(unsigned int)peer
{
  v4 = *&peer;
  v30 = *MEMORY[0x277D85DE8];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 8)
    {
      goto LABEL_18;
    }

    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x277CE5818];
    v10 = *MEMORY[0x277CE5818];
    if (*MEMORY[0x277CE5808] == 1)
    {
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_18;
      }

      v20 = 136315650;
      v21 = v8;
      v22 = 2080;
      v23 = "[GKConnectionInternal addEvent:remotePeer:]";
      v24 = 1024;
      v25 = 1107;
      v11 = " [%s] %s:%d ";
      v12 = v9;
      v13 = 28;
LABEL_13:
      _os_log_impl(&dword_24E50C000, v12, OS_LOG_TYPE_DEFAULT, v11, &v20, v13);
      goto LABEL_18;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [GKConnectionInternal addEvent:remotePeer:];
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v7 = [(GKConnectionInternal *)self performSelector:sel_logPrefix];
    }

    else
    {
      v7 = &stru_286195238;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x277CE5818];
      v16 = *MEMORY[0x277CE5818];
      if (*MEMORY[0x277CE5808] == 1)
      {
        if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_18;
        }

        v20 = 136316162;
        v21 = v14;
        v22 = 2080;
        v23 = "[GKConnectionInternal addEvent:remotePeer:]";
        v24 = 1024;
        v25 = 1107;
        v26 = 2112;
        v27 = v7;
        v28 = 2048;
        selfCopy2 = self;
        v11 = " [%s] %s:%d %@(%p) ";
        v12 = v15;
        v13 = 48;
        goto LABEL_13;
      }

      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v20 = 136316162;
        v21 = v14;
        v22 = 2080;
        v23 = "[GKConnectionInternal addEvent:remotePeer:]";
        v24 = 1024;
        v25 = 1107;
        v26 = 2112;
        v27 = v7;
        v28 = 2048;
        selfCopy2 = self;
        _os_log_debug_impl(&dword_24E50C000, v15, OS_LOG_TYPE_DEBUG, " [%s] %s:%d %@(%p) ", &v20, 0x30u);
      }
    }
  }

LABEL_18:
  gckSession = self->_gckSession;
  objc_sync_enter(gckSession);
  gckEventList = self->_gckEventList;
  if (gckEventList)
  {
    [(NSMutableArray *)gckEventList sendCallbacksToDelegate:event remotePeer:v4];
  }

  else
  {
    v19 = [[GCKEventItem alloc] initWithEvent:event remotePeer:v4];
    [(OpaqueGCKSession *)self->_gckSession addObject:v19];
  }

  objc_sync_exit(gckSession);
}

- (void)setEventDelegate:(id)delegate
{
  v35 = *MEMORY[0x277D85DE8];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 8)
    {
      goto LABEL_18;
    }

    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x277CE5818];
    v8 = *MEMORY[0x277CE5818];
    if (*MEMORY[0x277CE5808] == 1)
    {
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_18;
      }

      *buf = 136315650;
      v26 = v6;
      v27 = 2080;
      v28 = "[GKConnectionInternal setEventDelegate:]";
      v29 = 1024;
      v30 = 1120;
      v9 = " [%s] %s:%d ";
      v10 = v7;
      v11 = 28;
LABEL_13:
      _os_log_impl(&dword_24E50C000, v10, OS_LOG_TYPE_DEFAULT, v9, buf, v11);
      goto LABEL_18;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [GKConnectionInternal setEventDelegate:];
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [(GKConnectionInternal *)self performSelector:sel_logPrefix];
    }

    else
    {
      v5 = &stru_286195238;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x277CE5818];
      v14 = *MEMORY[0x277CE5818];
      if (*MEMORY[0x277CE5808] == 1)
      {
        if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_18;
        }

        *buf = 136316162;
        v26 = v12;
        v27 = 2080;
        v28 = "[GKConnectionInternal setEventDelegate:]";
        v29 = 1024;
        v30 = 1120;
        v31 = 2112;
        v32 = v5;
        v33 = 2048;
        selfCopy2 = self;
        v9 = " [%s] %s:%d %@(%p) ";
        v10 = v13;
        v11 = 48;
        goto LABEL_13;
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136316162;
        v26 = v12;
        v27 = 2080;
        v28 = "[GKConnectionInternal setEventDelegate:]";
        v29 = 1024;
        v30 = 1120;
        v31 = 2112;
        v32 = v5;
        v33 = 2048;
        selfCopy2 = self;
        _os_log_debug_impl(&dword_24E50C000, v13, OS_LOG_TYPE_DEBUG, " [%s] %s:%d %@(%p) ", buf, 0x30u);
      }
    }
  }

LABEL_18:
  obj = self->_gckSession;
  objc_sync_enter(obj);
  self->_gckEventList = delegate;
  if (delegate)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    gckSession = self->_gckSession;
    v16 = [(OpaqueGCKSession *)gckSession countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v16)
    {
      v17 = *v21;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v21 != v17)
          {
            objc_enumerationMutation(gckSession);
          }

          -[NSMutableArray sendCallbacksToDelegate:remotePeer:](self->_gckEventList, "sendCallbacksToDelegate:remotePeer:", [*(*(&v20 + 1) + 8 * i) event], objc_msgSend(*(*(&v20 + 1) + 8 * i), "pid"));
        }

        v16 = [(OpaqueGCKSession *)gckSession countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v16);
    }

    [(OpaqueGCKSession *)self->_gckSession removeAllObjects];
  }

  objc_sync_exit(obj);
}

- (id)eventDelegate
{
  v24 = *MEMORY[0x277D85DE8];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x277CE5818];
      v6 = *MEMORY[0x277CE5818];
      if (*MEMORY[0x277CE5808] == 1)
      {
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v14 = 136315650;
          v15 = v4;
          v16 = 2080;
          v17 = "[GKConnectionInternal eventDelegate]";
          v18 = 1024;
          v19 = 1133;
          v7 = " [%s] %s:%d ";
          v8 = v5;
          v9 = 28;
LABEL_13:
          _os_log_impl(&dword_24E50C000, v8, OS_LOG_TYPE_DEFAULT, v7, &v14, v9);
        }
      }

      else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        [GKConnectionInternal eventDelegate];
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v3 = [(GKConnectionInternal *)self performSelector:sel_logPrefix];
    }

    else
    {
      v3 = &stru_286195238;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x277CE5818];
      v12 = *MEMORY[0x277CE5818];
      if (*MEMORY[0x277CE5808] == 1)
      {
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v14 = 136316162;
          v15 = v10;
          v16 = 2080;
          v17 = "[GKConnectionInternal eventDelegate]";
          v18 = 1024;
          v19 = 1133;
          v20 = 2112;
          v21 = v3;
          v22 = 2048;
          selfCopy2 = self;
          v7 = " [%s] %s:%d %@(%p) ";
          v8 = v11;
          v9 = 48;
          goto LABEL_13;
        }
      }

      else if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v14 = 136316162;
        v15 = v10;
        v16 = 2080;
        v17 = "[GKConnectionInternal eventDelegate]";
        v18 = 1024;
        v19 = 1133;
        v20 = 2112;
        v21 = v3;
        v22 = 2048;
        selfCopy2 = self;
        _os_log_debug_impl(&dword_24E50C000, v11, OS_LOG_TYPE_DEBUG, " [%s] %s:%d %@(%p) ", &v14, 0x30u);
      }
    }
  }

  return self->_gckEventList;
}

- (unsigned)gckPID
{
  v24 = *MEMORY[0x277D85DE8];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x277CE5818];
      v6 = *MEMORY[0x277CE5818];
      if (*MEMORY[0x277CE5808] == 1)
      {
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v14 = 136315650;
          v15 = v4;
          v16 = 2080;
          v17 = "[GKConnectionInternal gckPID]";
          v18 = 1024;
          v19 = 1138;
          v7 = " [%s] %s:%d ";
          v8 = v5;
          v9 = 28;
LABEL_13:
          _os_log_impl(&dword_24E50C000, v8, OS_LOG_TYPE_DEFAULT, v7, &v14, v9);
        }
      }

      else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        [GKConnectionInternal gckPID];
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v3 = [(GKConnectionInternal *)self performSelector:sel_logPrefix];
    }

    else
    {
      v3 = &stru_286195238;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x277CE5818];
      v12 = *MEMORY[0x277CE5818];
      if (*MEMORY[0x277CE5808] == 1)
      {
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v14 = 136316162;
          v15 = v10;
          v16 = 2080;
          v17 = "[GKConnectionInternal gckPID]";
          v18 = 1024;
          v19 = 1138;
          v20 = 2112;
          v21 = v3;
          v22 = 2048;
          selfCopy2 = self;
          v7 = " [%s] %s:%d %@(%p) ";
          v8 = v11;
          v9 = 48;
          goto LABEL_13;
        }
      }

      else if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v14 = 136316162;
        v15 = v10;
        v16 = 2080;
        v17 = "[GKConnectionInternal gckPID]";
        v18 = 1024;
        v19 = 1138;
        v20 = 2112;
        v21 = v3;
        v22 = 2048;
        selfCopy2 = self;
        _os_log_debug_impl(&dword_24E50C000, v11, OS_LOG_TYPE_DEBUG, " [%s] %s:%d %@(%p) ", &v14, 0x30u);
      }
    }
  }

  return *(&self->super._pid + 1);
}

- (void)setCdxClient:(id)client
{
  eventDelegate = self->_eventDelegate;
  if (eventDelegate != client)
  {
    [self->_eventDelegate setDelegate:0];
    clientCopy = client;
    self->_eventDelegate = clientCopy;
    [clientCopy setDelegate:self];

    if ([self->_eventDelegate preblob])
    {
      v7 = self->_eventDelegate;
      preblob = [v7 preblob];

      [(GKConnectionInternal *)self CDXClient:v7 preblob:preblob];
    }
  }
}

- (void)CDXClient:(id)client error:(id)error
{
  v18 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
    {
      v8 = 136316162;
      v9 = v6;
      v10 = 2080;
      v11 = "[GKConnectionInternal CDXClient:error:]";
      v12 = 1024;
      v13 = 1282;
      v14 = 2080;
      Name = sel_getName(a2);
      v16 = 2080;
      uTF8String = [objc_msgSend_description(error) UTF8String];
      _os_log_error_impl(&dword_24E50C000, v7, OS_LOG_TYPE_ERROR, " [%s] %s:%d [GKConnection %s]: %s", &v8, 0x30u);
    }
  }
}

- (void)CDXClient:(id)client preblob:(id)preblob
{
  v26 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v17 = v7;
      v18 = 2080;
      v19 = "[GKConnectionInternal CDXClient:preblob:]";
      v20 = 1024;
      v21 = 1286;
      _os_log_impl(&dword_24E50C000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d got-a-preblob", buf, 0x1Cu);
    }
  }

  pthread_mutex_lock(&self->_preblobCallbackCancelTime);
  cdxSessions = self->_cdxSessions;
  if (cdxSessions)
  {
  }

  self->_cdxSessions = preblob;
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(&self->super._pid + 1)];
  [*&self->_wakeTime setObject:v10 forKeyedSubscript:self->_cdxSessions];
  [(NSMutableDictionary *)self->_preblobToPIDMap setObject:self->_cdxSessions forKeyedSubscript:v10];
  if (self->_preblob)
  {
    v15 = bswap32(*(&self->super._pid + 1));
    v11 = [MEMORY[0x277CBEB28] dataWithBytes:&v15 length:4];
    [v11 appendData:self->_cdxSessions];
    TimingLog(3, 0, "Got local connection data - passing data to app");
    (self->_preblob[2].super.isa)();
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v14 = [v11 length];
        *buf = 136316162;
        v17 = v12;
        v18 = 2080;
        v19 = "[GKConnectionInternal CDXClient:preblob:]";
        v20 = 1024;
        v21 = 1303;
        v22 = 2048;
        clientCopy = client;
        v24 = 2048;
        v25 = v14;
        _os_log_impl(&dword_24E50C000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d CDXClient=%p Got local connection data size=%lu", buf, 0x30u);
      }
    }

    self->_preblob = 0;
  }

  pthread_cond_signal(&self->_xPreblobFetch.__opaque[48]);
  pthread_mutex_unlock(&self->_preblobCallbackCancelTime);
}

- (id)extractBlobUsingData:(id)data withSourcePID:(unsigned int)d destPID:(unsigned int)iD
{
  v37 = *MEMORY[0x277D85DE8];
  bytes = [data bytes];
  dataCopy = data;
  v8 = bytes + [data length];
  v21 = bytes;
  while (bytes < v8)
  {
    v9 = bytes + 5;
    if ((bytes + 5) > v8)
    {
      [GKConnectionInternal extractBlobUsingData:dataCopy withSourcePID:? destPID:?];
LABEL_15:
      reportingGKLog();
      return 0;
    }

    v10 = bswap32(*bytes) >> 16;
    v11 = (bytes + v10);
    if (bytes + v10 > v8)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v17 = VRTraceErrorLogLevelToCSTR();
        v18 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          v19 = [dataCopy length];
          *buf = 136316418;
          v24 = v17;
          v25 = 2080;
          v26 = "[GKConnectionInternal extractBlobUsingData:withSourcePID:destPID:]";
          v27 = 1024;
          v28 = 1347;
          v29 = 1024;
          v30 = v19;
          v31 = 1024;
          v32 = bytes - v21;
          v33 = 1024;
          v34 = v10;
          _os_log_error_impl(&dword_24E50C000, v18, OS_LOG_TYPE_ERROR, " [%s] %s:%d GKConnection: bad blobs? (total=%d, offset=%d, blobLength=%d)", buf, 0x2Eu);
        }
      }

      goto LABEL_15;
    }

    v12 = bswap32(*(bytes + 1));
    v13 = bswap32(*(bytes + 3));
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316674;
        v24 = v14;
        v25 = 2080;
        v26 = "[GKConnectionInternal extractBlobUsingData:withSourcePID:destPID:]";
        v27 = 1024;
        v28 = 1357;
        v29 = 1024;
        v30 = v9 - v21;
        v31 = 1024;
        v32 = v10;
        v33 = 1024;
        v34 = v12;
        v35 = 1024;
        v36 = v13;
        _os_log_impl(&dword_24E50C000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GKConnection:receivedData @%d (+%d): dstPID(%u), srcPID(%u)", buf, 0x34u);
      }
    }

    bytes = v11;
    if (v12 == iD)
    {
      bytes = v11;
      if (v13 == d)
      {
        return [dataCopy subdataWithRange:{v9 - v21, v10 - 10}];
      }
    }
  }

  return 0;
}

- (BOOL)convertParticipantID:(id)d toPeerID:(id *)iD
{
  allowRelayPIDList = self->_allowRelayPIDList;
  objc_sync_enter(allowRelayPIDList);
  v8 = [(NSMutableArray *)self->_allowRelayPIDList allKeysForObject:d];
  v9 = [v8 count];
  if (v9)
  {
    v10 = [v8 objectAtIndexedSubscript:0];
  }

  else
  {
    v10 = 0;
  }

  *iD = v10;
  objc_sync_exit(allowRelayPIDList);
  return v9 != 0;
}

- (BOOL)convertPeerID:(id)d toParticipantID:(id *)iD
{
  allowRelayPIDList = self->_allowRelayPIDList;
  objc_sync_enter(allowRelayPIDList);
  v8 = [(NSMutableArray *)self->_allowRelayPIDList objectForKeyedSubscript:d];
  v9 = v8;
  if (v8)
  {
    *iD = v8;
  }

  objc_sync_exit(allowRelayPIDList);
  return v9 != 0;
}

- (void)setParticipantID:(id)d forPeerID:(id)iD
{
  v41 = *MEMORY[0x277D85DE8];
  v7 = [(NSMutableArray *)self->_allowRelayPIDList objectForKeyedSubscript:iD];
  if (d)
  {
    v21 = v7;
    obj = self->_allowRelayPIDList;
    objc_sync_enter(obj);
    v8 = [(NSMutableArray *)self->_allowRelayPIDList allKeysForObject:d];
    dCopy = d;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v24 objects:v40 count:16];
    if (v9)
    {
      v10 = *v25;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v25 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v24 + 1) + 8 * i);
          if (v12 && ([*(*(&v24 + 1) + 8 * i) isEqualToString:iD] & 1) == 0)
          {
            if (VRTraceGetErrorLogLevelForModule() >= 7)
            {
              v13 = VRTraceErrorLogLevelToCSTR();
              v14 = *MEMORY[0x277CE5818];
              if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
              {
                uTF8String = [v12 UTF8String];
                *buf = 136315906;
                v29 = v13;
                v30 = 2080;
                v31 = "[GKConnectionInternal setParticipantID:forPeerID:]";
                v32 = 1024;
                v33 = 1493;
                v34 = 2080;
                v35 = uTF8String;
                _os_log_impl(&dword_24E50C000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GKConnection: removeObjectForKey(forPeerID)[%s]", buf, 0x26u);
              }
            }

            [(NSMutableArray *)self->_allowRelayPIDList removeObjectForKey:v12];
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v24 objects:v40 count:16];
      }

      while (v9);
    }

    objc_sync_exit(obj);
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v16 = VRTraceErrorLogLevelToCSTR();
      v17 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        uTF8String2 = [dCopy UTF8String];
        uTF8String3 = [iD UTF8String];
        if (v21)
        {
          uTF8String4 = [v21 UTF8String];
        }

        else
        {
          uTF8String4 = "<nil>";
        }

        *buf = 136316418;
        v29 = v16;
        v30 = 2080;
        v31 = "[GKConnectionInternal setParticipantID:forPeerID:]";
        v32 = 1024;
        v33 = 1499;
        v34 = 2080;
        v35 = uTF8String2;
        v36 = 2080;
        v37 = uTF8String3;
        v38 = 2080;
        v39 = uTF8String4;
        _os_log_impl(&dword_24E50C000, v17, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GKConnection: setParticipantID:[%s] forPeerID[%s] (old participantID:[%s])", buf, 0x3Au);
      }
    }

    [(NSMutableArray *)self->_allowRelayPIDList setObject:dCopy forKeyedSubscript:iD];
  }
}

- (id)createInitiateRelayDictionaryForParticipant:(id)participant remotePeerID:(id)d
{
  v26 = *MEMORY[0x277D85DE8];
  if (!+[GKConnection isRelayEnabled])
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      return 0;
    }

    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x277CE5818];
    if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      return 0;
    }

    *buf = 136315906;
    v17 = v9;
    v18 = 2080;
    v19 = "[GKConnectionInternal createInitiateRelayDictionaryForParticipant:remotePeerID:]";
    v20 = 1024;
    v21 = 1510;
    v22 = 2080;
    Name = sel_getName(a2);
    v11 = " [%s] %s:%d **************************** %s: relay not enabled";
    v12 = v10;
    v13 = 38;
    goto LABEL_10;
  }

  v7 = -[NSMutableDictionary objectForKeyedSubscript:](self->_preblobToPIDMap, "objectForKeyedSubscript:", [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(d, "intValue")}]);
  if (v7)
  {
    return [MEMORY[0x277CBEB38] dictionaryWithObjectsAndKeys:{self->_cdxSessions, *off_279682918, +[GKConnection externalAddressForCDXSelfConnectionData:](GKConnectionInternal, "externalAddressForCDXSelfConnectionData:", self->_cdxSessions), *off_279682920, &unk_28619C008, *off_279682928, v7, *off_2796828F0, +[GKConnection externalAddressForCDXSelfConnectionData:](GKConnectionInternal, "externalAddressForCDXSelfConnectionData:", v7), *off_2796828F8, &unk_28619C008, *off_279682900, 0}];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v14 = VRTraceErrorLogLevelToCSTR();
    v15 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v17 = v14;
      v18 = 2080;
      v19 = "[GKConnectionInternal createInitiateRelayDictionaryForParticipant:remotePeerID:]";
      v20 = 1024;
      v21 = 1525;
      v22 = 2080;
      Name = sel_getName(a2);
      v24 = 1024;
      intValue = [d intValue];
      v11 = " [%s] %s:%d **************************** %s: no preblob found for %d";
      v12 = v15;
      v13 = 44;
LABEL_10:
      _os_log_impl(&dword_24E50C000, v12, OS_LOG_TYPE_DEFAULT, v11, buf, v13);
    }
  }

  return 0;
}

- (id)newRelayUpdateDictionaryForParticipant:(id)participant didInitiate:(BOOL)initiate
{
  if (![GKConnection isRelayEnabled:participant])
  {
    return 0;
  }

  v10 = 0xAAAAAAAAAAAAAAAALL;
  if (![(GKConnectionInternal *)self convertParticipantID:participant toPeerID:&v10])
  {
    return 0;
  }

  v6 = *&self->_xRelay.__opaque[48];
  objc_sync_enter(v6);
  v7 = [*&self->_xRelay.__opaque[48] objectForKeyedSubscript:v10];
  objc_sync_exit(v6);
  if (!v7)
  {
    return 0;
  }

  v8 = [v7 mutableCopy];
  [v8 setObject:&unk_28619C020 forKeyedSubscript:*off_279682958];
  [v8 setObject:-[NSMutableDictionary objectForKeyedSubscript:](self->_pidToRelayInitiateInfoMap forKeyedSubscript:{"objectForKeyedSubscript:", objc_msgSend(@">", "stringByAppendingString:", v10)), *off_2796828E0}];
  return v8;
}

- (void)doRelayCheckForRemotePeerID:(id)d
{
  v30 = *MEMORY[0x277D85DE8];
  pidToRelayConnectionDataMap = self->_pidToRelayConnectionDataMap;
  objc_sync_enter(pidToRelayConnectionDataMap);
  v7 = -[NSMutableDictionary objectForKeyedSubscript:](self->_pidToRelayConnectionDataMap, "objectForKeyedSubscript:", [@">" stringByAppendingString:d]);
  v8 = -[NSMutableDictionary objectForKeyedSubscript:](self->_pidToRelayConnectionDataMap, "objectForKeyedSubscript:", [@"<" stringByAppendingString:d]);
  objc_sync_exit(pidToRelayConnectionDataMap);
  if (v8)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v12 = [v8 objectForKeyedSubscript:*off_2796828E0];
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    if (ErrorLogLevelForModule >= 7)
    {
      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v16 = 136315906;
        v17 = v14;
        v18 = 2080;
        v19 = "[GKConnectionInternal doRelayCheckForRemotePeerID:]";
        v20 = 1024;
        v21 = 1605;
        v22 = 2080;
        Name = [objc_msgSend_description(v8) UTF8String];
        _os_log_impl(&dword_24E50C000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d before GCKSessionEstablishConnectionWithRelayInfo: remote dict:%s", &v16, 0x26u);
      }
    }

    GCKSessionEstablishConnectionWithRelayInfo(self->_pidGUID, [d intValue], objc_msgSend(v12, "bytes"), objc_msgSend(v12, "length"), v8);
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v16 = 136316674;
      v17 = v10;
      v18 = 2080;
      v19 = "[GKConnectionInternal doRelayCheckForRemotePeerID:]";
      v20 = 1024;
      v21 = 1622;
      v22 = 2080;
      Name = sel_getName(a2);
      v24 = 2080;
      uTF8String = [d UTF8String];
      v26 = 2048;
      v27 = v8;
      v28 = 2048;
      v29 = v7;
      _os_log_impl(&dword_24E50C000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s (remote:%s) - remoteRelayUpdateInfo[%p] localRelayUpdateInfo[%p]", &v16, 0x44u);
    }
  }
}

- (void)internalInitiateRelayWithParticipant:(id)participant withConnectionData:(id)data withRelayInfo:(id)info didInitiate:(BOOL)initiate
{
  v50 = *MEMORY[0x277D85DE8];
  if ([GKConnection isRelayEnabled:participant])
  {
    v40 = 0xAAAAAAAAAAAAAAAALL;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        *&buf[4] = v11;
        *&buf[12] = 2080;
        *&buf[14] = "[GKConnectionInternal internalInitiateRelayWithParticipant:withConnectionData:withRelayInfo:didInitiate:]";
        v42 = 1024;
        v43 = 1635;
        v44 = 2080;
        Name = sel_getName(a2);
        v46 = 2080;
        *v47 = [participant UTF8String];
        _os_log_impl(&dword_24E50C000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s - remote participant[%s]", buf, 0x30u);
      }
    }

    if ([(GKConnectionInternal *)self convertParticipantID:participant toPeerID:&v40])
    {
      perfTimerStart();
      v13 = [info objectForKeyedSubscript:@"GKSTargetPeerID"] == 0;
      ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
      if (v13)
      {
        if (ErrorLogLevelForModule >= 7)
        {
          v21 = VRTraceErrorLogLevelToCSTR();
          v22 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            v23 = sel_getName(a2);
            *buf = 136315906;
            *&buf[4] = v21;
            *&buf[12] = 2080;
            *&buf[14] = "[GKConnectionInternal internalInitiateRelayWithParticipant:withConnectionData:withRelayInfo:didInitiate:]";
            v42 = 1024;
            v43 = 1647;
            v44 = 2080;
            Name = v23;
            _os_log_impl(&dword_24E50C000, v22, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s - checking intended target via dictionary: no value", buf, 0x26u);
          }
        }
      }

      else
      {
        if (ErrorLogLevelForModule >= 7)
        {
          v15 = VRTraceErrorLogLevelToCSTR();
          v16 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            v17 = sel_getName(a2);
            v18 = [objc_msgSend(info objectForKey:{@"GKSTargetPeerID", "intValue"}];
            v19 = [objc_msgSend(info objectForKey:{@"GKSOriginPeerID", "intValue"}];
            v20 = *(&self->super._pid + 1);
            *buf = 136316674;
            *&buf[4] = v15;
            *&buf[12] = 2080;
            *&buf[14] = "[GKConnectionInternal internalInitiateRelayWithParticipant:withConnectionData:withRelayInfo:didInitiate:]";
            v42 = 1024;
            v43 = 1641;
            v44 = 2080;
            Name = v17;
            v46 = 1024;
            *v47 = v18;
            *&v47[4] = 1024;
            *&v47[6] = v19;
            v48 = 1024;
            v49 = v20;
            _os_log_impl(&dword_24E50C000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s - checking intended target via dictionary (%d/%d == %d ?)", buf, 0x38u);
          }
        }

        if ([objc_msgSend(info objectForKeyedSubscript:{@"GKSTargetPeerID", "unsignedIntValue"}] != *(&self->super._pid + 1) && objc_msgSend(objc_msgSend(info, "objectForKeyedSubscript:", @"GKSOriginPeerID"), "unsignedIntValue") != *(&self->super._pid + 1))
        {
          return;
        }
      }

      v24 = *&self->_xRelay.__opaque[48];
      objc_sync_enter(v24);
      v25 = [*&self->_xRelay.__opaque[48] objectForKeyedSubscript:v40];
      objc_sync_exit(v24);
      if (v25)
      {
        return;
      }

      v26 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:info];
      v39 = inet_addr("72.247.44.23");
      v27 = [MEMORY[0x277CBEA90] dataWithBytes:&v39 length:4];
      v28 = [objc_msgSend(objc_msgSend(MEMORY[0x277CBEBD0] "standardUserDefaults")];
      v29 = *off_279682908;
      if (v28)
      {
        [v26 setObject:v27 forKeyedSubscript:*off_279682908];
        [v26 setObject:&unk_28619C038 forKeyedSubscript:*off_279682910];
        [v26 setObject:v27 forKeyedSubscript:*off_279682930];
        [v26 setObject:&unk_28619C038 forKeyedSubscript:*off_279682940];
        v30 = *off_279682948;
      }

      else
      {
        if (![v26 objectForKeyedSubscript:*off_279682908])
        {
          [v26 setObject:v27 forKeyedSubscript:v29];
        }

        v31 = *off_279682910;
        if (![v26 objectForKeyedSubscript:*off_279682910])
        {
          [v26 setObject:&unk_28619C038 forKeyedSubscript:v31];
        }

        v32 = *off_279682930;
        if (![v26 objectForKeyedSubscript:*off_279682930])
        {
          [v26 setObject:v27 forKeyedSubscript:v32];
        }

        v33 = *off_279682940;
        if (![v26 objectForKeyedSubscript:*off_279682940])
        {
          [v26 setObject:&unk_28619C038 forKeyedSubscript:v33];
        }

        v30 = *off_279682948;
        if ([v26 objectForKeyedSubscript:*off_279682948])
        {
          goto LABEL_30;
        }
      }

      qmemcpy(buf, "ABCDEFGHIJABCDEFGHIJ", 20);
      [v26 setObject:objc_msgSend(MEMORY[0x277CBEA90] forKeyedSubscript:{"dataWithBytes:length:", buf, 20), v30}];
      if (v28)
      {
        [v26 removeObjectForKey:*off_2796828E8];
        v34 = *off_279682950;
        goto LABEL_31;
      }

LABEL_30:
      v34 = *off_279682950;
      if ([v26 objectForKeyedSubscript:*off_279682950])
      {
LABEL_32:
        v35 = *&self->_xRelay.__opaque[48];
        objc_sync_enter(v35);
        [*&self->_xRelay.__opaque[48] setObject:v26 forKeyedSubscript:v40];
        objc_sync_exit(v35);
        global_queue = dispatch_get_global_queue(0, 0);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __106__GKConnectionInternal_internalInitiateRelayWithParticipant_withConnectionData_withRelayInfo_didInitiate___block_invoke;
        block[3] = &unk_279682FF0;
        block[4] = self;
        block[5] = v26;
        block[7] = participant;
        block[8] = a2;
        block[6] = v40;
        initiateCopy = initiate;
        dispatch_async(global_queue, block);
        return;
      }

LABEL_31:
      *&buf[4] = 0;
      *buf = bswap32([v40 intValue] ^ *(&self->super._pid + 1));
      [v26 setObject:objc_msgSend(MEMORY[0x277CBEA90] forKeyedSubscript:{"dataWithBytes:length:", buf, 8), v34}];
      goto LABEL_32;
    }
  }
}

void __106__GKConnectionInternal_internalInitiateRelayWithParticipant_withConnectionData_withRelayInfo_didInitiate___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = 0;
  v5 = 1350;
  perfTimerStart();
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v4 = [objc_msgSend_description(*(a1 + 40)) UTF8String];
      *buf = 136315906;
      v8 = v2;
      v9 = 2080;
      v10 = "[GKConnectionInternal internalInitiateRelayWithParticipant:withConnectionData:withRelayInfo:didInitiate:]_block_invoke";
      v11 = 1024;
      v12 = 1721;
      v13 = 2080;
      v14 = v4;
      _os_log_impl(&dword_24E50C000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d before GCKSessionPrepareConnectionWithRelayInfo: dict:%s", buf, 0x26u);
    }
  }

  GCKSessionPrepareConnectionWithRelayInfo(*(*(a1 + 32) + 32), [*(a1 + 48) intValue], &v6, &v5, *(a1 + 40), 0);
}

- (void)initiateRelayWithParticipant:(id)participant withConnectionData:(id)data withRelayInfo:(id)info didInitiate:(BOOL)initiate
{
  if (info)
  {
    initiateCopy = initiate;
    pthread_mutex_lock(&self->_pidToConnectTimeoutSource);
    v11 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithDictionary:info copyItems:1];
    if ([(NSMutableDictionary *)self->_pidToRelayUpdateInfoMap objectForKeyedSubscript:participant])
    {
      asyncWorkQueue = [(GKConnectionInternal *)self asyncWorkQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __98__GKConnectionInternal_initiateRelayWithParticipant_withConnectionData_withRelayInfo_didInitiate___block_invoke;
      block[3] = &unk_279682FC8;
      block[4] = self;
      block[5] = participant;
      block[6] = data;
      block[7] = v11;
      v16 = initiateCopy;
      dispatch_async(asyncWorkQueue, block);
    }

    else
    {
      v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v14 = v13;
      if (data)
      {
        [v13 setObject:data forKeyedSubscript:@"participantConnectionData"];
      }

      if (v11)
      {
        [v14 setObject:v11 forKeyedSubscript:@"relayInfo"];
      }

      [v14 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithBool:", initiateCopy), @"didInitiate"}];
      [(NSMutableDictionary *)self->_pidToRelayUpdateInfoMap setObject:v14 forKeyedSubscript:participant];
    }

    pthread_mutex_unlock(&self->_pidToConnectTimeoutSource);
  }
}

- (void)internalUpdateRelayWithParticipant:(id)participant withConnectionData:(id)data withRelayInfo:(id)info didInitiate:(BOOL)initiate
{
  v36[2] = *MEMORY[0x277D85DE8];
  if ([GKConnection isRelayEnabled:participant])
  {
    v29 = 0xAAAAAAAAAAAAAAAALL;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        *&buf[4] = v10;
        *&buf[12] = 2080;
        *&buf[14] = "[GKConnectionInternal internalUpdateRelayWithParticipant:withConnectionData:withRelayInfo:didInitiate:]";
        v31 = 1024;
        v32 = 1809;
        v33 = 2080;
        Name = sel_getName(a2);
        v35 = 2080;
        v36[0] = [participant UTF8String];
        _os_log_impl(&dword_24E50C000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s - remote[%s]", buf, 0x30u);
      }
    }

    if ([(GKConnectionInternal *)self convertParticipantID:participant toPeerID:&v29])
    {
      v12 = [info objectForKeyedSubscript:@"GKSTargetPeerID"] == 0;
      ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
      if (!v12)
      {
        if (ErrorLogLevelForModule >= 7)
        {
          v14 = VRTraceErrorLogLevelToCSTR();
          v15 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            v16 = sel_getName(a2);
            v17 = [objc_msgSend(info objectForKey:{@"GKSTargetPeerID", "intValue"}];
            v18 = *(&self->super._pid + 1);
            *buf = 136316418;
            *&buf[4] = v14;
            *&buf[12] = 2080;
            *&buf[14] = "[GKConnectionInternal internalUpdateRelayWithParticipant:withConnectionData:withRelayInfo:didInitiate:]";
            v31 = 1024;
            v32 = 1815;
            v33 = 2080;
            Name = v16;
            v35 = 1024;
            LODWORD(v36[0]) = v17;
            WORD2(v36[0]) = 1024;
            *(v36 + 6) = v18;
            _os_log_impl(&dword_24E50C000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s - checking intended target via dictionary (%d == %d ?)", buf, 0x32u);
          }
        }

        if ([objc_msgSend(info objectForKeyedSubscript:{@"GKSTargetPeerID", "unsignedIntValue"}] != *(&self->super._pid + 1))
        {
          return;
        }

LABEL_16:
        v23 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:info];
        v24 = [objc_msgSend(objc_msgSend(MEMORY[0x277CBEBD0] "standardUserDefaults")];
        v25 = *off_279682948;
        if (v24)
        {
          qmemcpy(buf, "ABCDEFGHIJABCDEFGHIJ", 20);
          [v23 setObject:objc_msgSend(MEMORY[0x277CBEA90] forKeyedSubscript:{"dataWithBytes:length:", buf, 20), v25}];
        }

        else
        {
          if ([v23 objectForKeyedSubscript:*off_279682948])
          {
            goto LABEL_21;
          }

          qmemcpy(buf, "ABCDEFGHIJABCDEFGHIJ", 20);
          [v23 setObject:objc_msgSend(MEMORY[0x277CBEA90] forKeyedSubscript:{"dataWithBytes:length:", buf, 20), v25}];
          if ((v24 & 1) == 0)
          {
            goto LABEL_21;
          }
        }

        [v23 removeObjectForKey:*off_2796828E8];
LABEL_21:
        pidToRelayConnectionDataMap = self->_pidToRelayConnectionDataMap;
        objc_sync_enter(pidToRelayConnectionDataMap);
        -[NSMutableDictionary setObject:forKeyedSubscript:](self->_pidToRelayConnectionDataMap, "setObject:forKeyedSubscript:", v23, [@"<" stringByAppendingString:v29]);
        [GKConnectionInternal internalUpdateRelayWithParticipant:v27 withConnectionData:self withRelayInfo:&v29 didInitiate:?];
        return;
      }

      if (ErrorLogLevelForModule >= 7)
      {
        v19 = VRTraceErrorLogLevelToCSTR();
        v20 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          v21 = sel_getName(a2);
          *buf = 136315906;
          *&buf[4] = v19;
          *&buf[12] = 2080;
          *&buf[14] = "[GKConnectionInternal internalUpdateRelayWithParticipant:withConnectionData:withRelayInfo:didInitiate:]";
          v31 = 1024;
          v32 = 1820;
          v33 = 2080;
          Name = v21;
          _os_log_impl(&dword_24E50C000, v20, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s - checking intended target via data", buf, 0x26u);
        }
      }

      v22 = [info objectForKeyedSubscript:*off_2796828E0];
      *buf = -1431655766;
      v28 = 0;
      [v22 bytes];
      [v22 length];
      ICEGetCallInfoForConnectionData();
      if (*buf == *(&self->super._pid + 1))
      {
        goto LABEL_16;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        [GKConnectionInternal internalUpdateRelayWithParticipant:withConnectionData:withRelayInfo:didInitiate:];
      }
    }
  }
}

- (void)updateRelayWithParticipant:(id)participant withConnectionData:(id)data withRelayInfo:(id)info didInitiate:(BOOL)initiate
{
  if (info)
  {
    initiateCopy = initiate;
    pthread_mutex_lock(&self->_pidToConnectTimeoutSource);
    v11 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithDictionary:info copyItems:1];
    if ([(NSMutableDictionary *)self->_initRelayQueue objectForKeyedSubscript:participant])
    {
      asyncWorkQueue = [(GKConnectionInternal *)self asyncWorkQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __96__GKConnectionInternal_updateRelayWithParticipant_withConnectionData_withRelayInfo_didInitiate___block_invoke;
      block[3] = &unk_279682FC8;
      block[4] = self;
      block[5] = participant;
      block[6] = data;
      block[7] = v11;
      v16 = initiateCopy;
      dispatch_async(asyncWorkQueue, block);
    }

    else
    {
      v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v14 = v13;
      if (data)
      {
        [v13 setObject:data forKeyedSubscript:@"participantConnectionData"];
      }

      if (v11)
      {
        [v14 setObject:v11 forKeyedSubscript:@"relayInfo"];
      }

      [v14 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithBool:", initiateCopy), @"didInitiate"}];
      [(NSMutableDictionary *)self->_initRelayQueue setObject:v14 forKeyedSubscript:participant];
    }

    pthread_mutex_unlock(&self->_pidToConnectTimeoutSource);
  }
}

- (void)cancelConnectParticipant:(id)participant
{
  v15 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      if (participant)
      {
        uTF8String = [objc_msgSend_description(participant) UTF8String];
      }

      else
      {
        uTF8String = "<nil>";
      }

      *v8 = 136315906;
      *&v8[4] = v5;
      v9 = 2080;
      v10 = "[GKConnectionInternal cancelConnectParticipant:]";
      v11 = 1024;
      v12 = 1887;
      v13 = 2080;
      v14 = uTF8String;
      _os_log_impl(&dword_24E50C000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d cancel-connect-participant.%s", v8, 0x26u);
    }
  }

  *v8 = 0xAAAAAAAAAAAAAAAALL;
  if ([(GKConnectionInternal *)self convertParticipantID:participant toPeerID:v8])
  {
    GCKSessionIsParticipantConnected(self->_pidGUID, [*v8 intValue], 1);
  }
}

- (id)networkStatisticsDictionaryForGCKStats:(void *)stats
{
  v44 = *MEMORY[0x277D85DE8];
  v27 = objc_alloc_init(MEMORY[0x277CBEB38]);
  allKeys = [(NSMutableArray *)self->_allowRelayPIDList allKeys];
  allKeys2 = [(NSMutableArray *)self->_allowRelayPIDList allKeys];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = allKeys;
  v28 = [allKeys countByEnumeratingWithState:&v36 objects:v43 count:16];
  if (v28)
  {
    v26 = *v37;
    do
    {
      v6 = 0;
      do
      {
        if (*v37 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v29 = v6;
        v7 = *(*(&v36 + 1) + 8 * v6);
        v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v30 = v8;
        [v9 setObject:v8 forKeyedSubscript:@"GKSStatsLinks"];
        [v27 setObject:v9 forKeyedSubscript:v7];
        if (stats)
        {
          statsCopy = stats;
          do
          {
            v11 = *statsCopy;
            if (v11 == [v7 intValue])
            {
              v34 = 0u;
              v35 = 0u;
              v32 = 0u;
              v33 = 0u;
              v12 = [allKeys2 countByEnumeratingWithState:&v32 objects:v42 count:16];
              if (v12)
              {
                v13 = v12;
                v14 = *v33;
                do
                {
                  v15 = 0;
                  do
                  {
                    if (*v33 != v14)
                    {
                      objc_enumerationMutation(allKeys2);
                    }

                    v16 = *(*(&v32 + 1) + 8 * v15);
                    statsCopy2 = stats;
                    while (1)
                    {
                      v18 = statsCopy[17];
                      if (v18 == [v16 intValue] && (objc_msgSend(v7, "isEqual:", v16) & 1) == 0)
                      {
                        break;
                      }

                      statsCopy2 = statsCopy2[18];
                      if (!statsCopy2)
                      {
                        goto LABEL_20;
                      }
                    }

                    v40[0] = @"GKSStatsUpTime";
                    LODWORD(v19) = statsCopy[10];
                    v41[0] = [MEMORY[0x277CCABB0] numberWithFloat:v19];
                    v40[1] = @"GKSStatsRecvRate";
                    LODWORD(v20) = statsCopy[11];
                    v41[1] = [MEMORY[0x277CCABB0] numberWithFloat:v20];
                    v40[2] = @"GKSStatsSendRate";
                    LODWORD(v21) = statsCopy[12];
                    v41[2] = [MEMORY[0x277CCABB0] numberWithFloat:v21];
                    v40[3] = @"GKSStatsRecvPLR";
                    LODWORD(v22) = statsCopy[13];
                    v41[3] = [MEMORY[0x277CCABB0] numberWithFloat:v22];
                    v40[4] = @"GKSStatsSendPLR";
                    LODWORD(v23) = statsCopy[14];
                    v41[4] = [MEMORY[0x277CCABB0] numberWithFloat:v23];
                    v40[5] = @"GKSStatsRecvBWE";
                    v41[5] = [MEMORY[0x277CCABB0] numberWithUnsignedInt:statsCopy[8]];
                    v40[6] = @"GKSStatsSendBWE";
                    v41[6] = [MEMORY[0x277CCABB0] numberWithUnsignedInt:statsCopy[9]];
                    v40[7] = @"GKSStatsRTT";
                    v41[7] = [MEMORY[0x277CCABB0] numberWithUnsignedInt:statsCopy[3]];
                    v40[8] = @"GKSStatsBytesReceived";
                    v41[8] = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(statsCopy + 2)];
                    v40[9] = @"GKSStatsBytesSent";
                    v41[9] = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(statsCopy + 3)];
                    [v30 setObject:objc_msgSend(MEMORY[0x277CBEAC0] forKeyedSubscript:{"dictionaryWithObjects:forKeys:count:", v41, v40, 10), v16}];
LABEL_20:
                    ++v15;
                  }

                  while (v15 != v13);
                  v13 = [allKeys2 countByEnumeratingWithState:&v32 objects:v42 count:16];
                }

                while (v13);
              }
            }

            statsCopy = *(statsCopy + 18);
          }

          while (statsCopy);
        }

        v6 = v29 + 1;
      }

      while (v29 + 1 != v28);
      v28 = [obj countByEnumeratingWithState:&v36 objects:v43 count:16];
    }

    while (v28);
  }

  return v27;
}

- (id)networkStatistics
{
  v36 = *MEMORY[0x277D85DE8];
  v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
  allKeys = [(NSMutableArray *)self->_allowRelayPIDList allKeys];
  allKeys2 = [(NSMutableArray *)self->_allowRelayPIDList allKeys];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v18 = [allKeys countByEnumeratingWithState:&v24 objects:v35 count:16];
  if (v18)
  {
    v16 = *v25;
    do
    {
      v5 = 0;
      do
      {
        if (*v25 != v16)
        {
          objc_enumerationMutation(allKeys);
        }

        v19 = v5;
        v6 = *(*(&v24 + 1) + 8 * v5);
        v31[0] = @"GKSStatsRecvRate";
        v31[1] = @"GKSStatsSendRate";
        v32[0] = &unk_28619C098;
        v32[1] = &unk_28619C098;
        v33 = @"fake0";
        v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:2];
        v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
        v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
        [v9 setObject:v7 forKeyedSubscript:@"GKSStatsInterfaces"];
        [v9 setObject:v8 forKeyedSubscript:@"GKSStatsLinks"];
        [v17 setObject:v9 forKeyedSubscript:v6];
        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        v10 = [allKeys2 countByEnumeratingWithState:&v20 objects:v30 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v21;
          do
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v21 != v12)
              {
                objc_enumerationMutation(allKeys2);
              }

              v14 = *(*(&v20 + 1) + 8 * i);
              if (([v6 isEqual:v14] & 1) == 0)
              {
                v28[0] = @"GKSStatsUpTime";
                v28[1] = @"GKSStatsBytesReceived";
                v29[0] = &unk_28619C0A8;
                v29[1] = &unk_28619C020;
                v28[2] = @"GKSStatsBytesSent";
                v28[3] = @"GKSStatsRecvRate";
                v29[2] = &unk_28619C020;
                v29[3] = &unk_28619C0B8;
                v28[4] = @"GKSStatsSendRate";
                v29[4] = &unk_28619C0B8;
                [v8 setObject:objc_msgSend(MEMORY[0x277CBEAC0] forKeyedSubscript:{"dictionaryWithObjects:forKeys:count:", v29, v28, 5), v14}];
              }
            }

            v11 = [allKeys2 countByEnumeratingWithState:&v20 objects:v30 count:16];
          }

          while (v11);
        }

        v5 = v19 + 1;
      }

      while (v19 + 1 != v18);
      v18 = [allKeys countByEnumeratingWithState:&v24 objects:v35 count:16];
    }

    while (v18);
  }

  return v17;
}

- (BOOL)localGamingCheckEstablishConnection:(id)connection connectionData:(id)data
{
  v28 = *MEMORY[0x277D85DE8];
  unsignedLongValue = [connection unsignedLongValue];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      if (data)
      {
        uTF8String = [objc_msgSend_description(data) UTF8String];
      }

      else
      {
        uTF8String = "<nil>";
      }

      v16 = 136316162;
      v17 = v7;
      v18 = 2080;
      v19 = "[GKConnectionInternal localGamingCheckEstablishConnection:connectionData:]";
      v20 = 1024;
      v21 = 2003;
      v22 = 2080;
      v23 = uTF8String;
      v24 = 1024;
      v25 = [data length];
      _os_log_impl(&dword_24E50C000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d remoteConnectionData: [%s], total size=%u", &v16, 0x2Cu);
    }
  }

  if ([data length] >= 5)
  {
    v10 = bswap32(*[data bytes]);
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        if (data)
        {
          uTF8String2 = [objc_msgSend_description(data) UTF8String];
        }

        else
        {
          uTF8String2 = "<nil>";
        }

        v14 = [data length];
        v16 = 136316418;
        v17 = v11;
        v18 = 2080;
        v19 = "[GKConnectionInternal localGamingCheckEstablishConnection:connectionData:]";
        v20 = 1024;
        v21 = 2007;
        v22 = 2080;
        v23 = uTF8String2;
        v24 = 1024;
        v25 = v14;
        v26 = 1024;
        v27 = v10;
        _os_log_impl(&dword_24E50C000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d remoteConnectionData: [%s], total size=%u (expect %u)", &v16, 0x32u);
      }
    }

    if ([data length] - 4 >= v10)
    {
      TimingLog(3, 0, "local CDX done - starting ICE");
      GCKSessionEstablishConnection(self->_pidGUID, unsignedLongValue, [data bytes] + 4, objc_msgSend(data, "length") - 4);
    }
  }

  return 0;
}

- (void)localGamingReceiveDataHandler:(id)handler data:(id)data time:(double)time error:(id)error
{
  v45 = *MEMORY[0x277D85DE8];
  if (!data || error)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v15 = VRTraceErrorLogLevelToCSTR();
      v16 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        if (error)
        {
          uTF8String = [objc_msgSend_description(error) UTF8String];
        }

        else
        {
          uTF8String = "<nil>";
        }

        *buf = 136315906;
        v36 = v15;
        v37 = 2080;
        v38 = "[GKConnectionInternal localGamingReceiveDataHandler:data:time:error:]";
        v39 = 1024;
        v40 = 2030;
        v41 = 2080;
        *v42 = uTF8String;
        _os_log_impl(&dword_24E50C000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d localGamingReceiveDataHandler: error=[%s].  Invalidating..", buf, 0x26u);
      }
    }

    [handler invalidate];
  }

  else
  {
    v11 = -[NSMutableDictionary objectForKeyedSubscript:](self->_localGamingSocketToPIDMap, "objectForKeyedSubscript:", [handler socketName]);
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    if (v11)
    {
      if (ErrorLogLevelForModule >= 7)
      {
        v13 = VRTraceErrorLogLevelToCSTR();
        v14 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316674;
          v36 = v13;
          v37 = 2080;
          v38 = "[GKConnectionInternal localGamingReceiveDataHandler:data:time:error:]";
          v39 = 1024;
          v40 = 2042;
          v41 = 2080;
          *v42 = [objc_msgSend_description(data) UTF8String];
          *&v42[8] = 2080;
          *&v42[10] = [objc_msgSend_description(v11) UTF8String];
          *&v42[18] = 1024;
          *&v42[20] = [data length];
          v43 = 2048;
          timeCopy = time;
          _os_log_impl(&dword_24E50C000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d localGamingReceiveDataHandler: got [%s] (append to [%s]), size=%u, t=%.6lf", buf, 0x40u);
        }
      }

      [v11 appendData:data];
    }

    else
    {
      if (ErrorLogLevelForModule >= 7)
      {
        v18 = VRTraceErrorLogLevelToCSTR();
        v19 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316418;
          v36 = v18;
          v37 = 2080;
          v38 = "[GKConnectionInternal localGamingReceiveDataHandler:data:time:error:]";
          v39 = 1024;
          v40 = 2038;
          v41 = 2080;
          *v42 = [objc_msgSend_description(data) UTF8String];
          *&v42[8] = 1024;
          *&v42[10] = [data length];
          *&v42[14] = 2048;
          *&v42[16] = time;
          _os_log_impl(&dword_24E50C000, v19, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d localGamingReceiveDataHandler: got [%s], size=%u, t=%.6lf", buf, 0x36u);
        }
      }

      v11 = [MEMORY[0x277CBEB28] dataWithData:data];
      -[NSMutableDictionary setObject:forKeyedSubscript:](self->_localGamingSocketToPIDMap, "setObject:forKeyedSubscript:", v11, [handler socketName]);
    }

    v20 = -[OS_dispatch_source objectForKeyedSubscript:](self->_localGamingCDXListenSource, "objectForKeyedSubscript:", [handler socketName]);
    if (v20)
    {
      v21 = v20;
      [v20 unsignedLongValue];
      if ([(GKConnectionInternal *)self localGamingCheckEstablishConnection:v21 connectionData:v11])
      {
        -[OS_dispatch_source removeObjectForKey:](self->_localGamingCDXListenSource, "removeObjectForKey:", [handler socketName]);
        -[NSMutableDictionary removeObjectForKey:](self->_localGamingSocketToPIDMap, "removeObjectForKey:", [handler socketName]);
        v22 = dispatch_time(0, 10000000000);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __70__GKConnectionInternal_localGamingReceiveDataHandler_data_time_error___block_invoke;
        block[3] = &unk_279682BA8;
        block[4] = handler;
        dispatch_after(v22, MEMORY[0x277D85CD0], block);
      }
    }

    else if ([v11 length] > 3)
    {
      v24 = bswap32(*[v11 bytes]);
      v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v24];
      -[OS_dispatch_source setObject:forKeyedSubscript:](self->_localGamingCDXListenSource, "setObject:forKeyedSubscript:", v25, [handler socketName]);
      [v11 replaceBytesInRange:0 withBytes:4 length:{0, 0}];
      if (VRTraceGetErrorLogLevelForModule() > 6)
      {
        v26 = VRTraceErrorLogLevelToCSTR();
        v27 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          localGamingSocketToConnectionDataMap = self->_localGamingSocketToConnectionDataMap;
          if (localGamingSocketToConnectionDataMap)
          {
            uTF8String2 = [objc_msgSend_description(localGamingSocketToConnectionDataMap) UTF8String];
          }

          else
          {
            uTF8String2 = "<nil>";
          }

          *buf = 136316162;
          v36 = v26;
          v37 = 2080;
          v38 = "[GKConnectionInternal localGamingReceiveDataHandler:data:time:error:]";
          v39 = 1024;
          v40 = 2064;
          v41 = 1024;
          *v42 = v24;
          *&v42[4] = 2080;
          *&v42[6] = uTF8String2;
          _os_log_impl(&dword_24E50C000, v27, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Checking if peer (%08X) is in prepared set [%s]", buf, 0x2Cu);
        }
      }

      if (![(NSMutableDictionary *)self->_localGamingSocketToConnectionDataMap containsObject:v25])
      {
        v34 = 0;
        v33 = 1350;
        TimingLog(3, 0, "local CDX start\n");
        GCKSessionPrepareConnectionWithRelayInfo(self->_pidGUID, v24, &v34, &v33, 0, 1);
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v30 = VRTraceErrorLogLevelToCSTR();
        v31 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v36 = v30;
          v37 = 2080;
          v38 = "[GKConnectionInternal localGamingReceiveDataHandler:data:time:error:]";
          v39 = 1024;
          v40 = 2066;
          v41 = 1024;
          *v42 = v24;
          _os_log_impl(&dword_24E50C000, v31, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Already prepared conenction for peer (%08X) - cancel this localCDX socket", buf, 0x22u);
        }
      }

      [handler invalidate];
      -[OS_dispatch_source removeObjectForKey:](self->_localGamingCDXListenSource, "removeObjectForKey:", [handler socketName]);
      -[NSMutableDictionary removeObjectForKey:](self->_localGamingSocketToPIDMap, "removeObjectForKey:", [handler socketName]);
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v23 = VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        [GKConnectionInternal localGamingReceiveDataHandler:v23 data:data time:? error:?];
      }
    }
  }
}

- (BOOL)startListeningForLocalGamingCDX
{
  v43 = *MEMORY[0x277D85DE8];
  if (HIDWORD(self->_updateRelayQueue) != -1)
  {
    return 1;
  }

  *&v42.sa_len = 0xAAAAAAAAAAAAAAAALL;
  *&v42.sa_data[6] = 0xAAAAAAAAAAAAAAAALL;
  v4 = socket(2, 1, 6);
  HIDWORD(self->_updateRelayQueue) = v4;
  if (v4 == -1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        [GKConnectionInternal startListeningForLocalGamingCDX];
      }
    }
  }

  else
  {
    v5 = 0;
    *&v42.sa_data[6] = 0;
    *&v42.sa_len = 528;
    *&v42.sa_data[2] = 0;
    v6 = MEMORY[0x277CE5808];
    v7 = MEMORY[0x277CE5818];
    v8 = 512;
    while (1)
    {
      *(&self->super.super.isa + v8) = 16470 - v5;
      *v42.sa_data = bswap32(16470 - v5) >> 16;
      if (bind(HIDWORD(self->_updateRelayQueue), &v42, 0x10u) != -1)
      {
        break;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 8)
      {
        v9 = VRTraceErrorLogLevelToCSTR();
        v10 = *v7;
        v11 = *v7;
        if (*v6 == 1)
        {
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            v12 = v6;
            v13 = v7;
            v14 = *(&self->super.super.isa + v8);
            v15 = *__error();
            *buf = 136316162;
            v33 = v9;
            v34 = 2080;
            v35 = "[GKConnectionInternal startListeningForLocalGamingCDX]";
            v36 = 1024;
            v37 = 2130;
            v38 = 1024;
            v39 = v14;
            v7 = v13;
            v6 = v12;
            v40 = 1024;
            v41 = v15;
            _os_log_impl(&dword_24E50C000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d bind() to port %u failed for local gaming CDX (%d), retrying...", buf, 0x28u);
          }
        }

        else if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          v16 = v8;
          v17 = v6;
          v18 = v7;
          v19 = *(&self->super.super.isa + v16);
          v20 = *__error();
          *buf = 136316162;
          v33 = v9;
          v34 = 2080;
          v35 = "[GKConnectionInternal startListeningForLocalGamingCDX]";
          v36 = 1024;
          v37 = 2130;
          v38 = 1024;
          v39 = v19;
          v7 = v18;
          v6 = v17;
          v8 = v16;
          v40 = 1024;
          v41 = v20;
          _os_log_debug_impl(&dword_24E50C000, v10, OS_LOG_TYPE_DEBUG, " [%s] %s:%d bind() to port %u failed for local gaming CDX (%d), retrying...", buf, 0x28u);
        }
      }

      if (++v5 == 10)
      {
        ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
        if (ErrorLogLevelForModule >= 8)
        {
          v22 = VRTraceErrorLogLevelToCSTR();
          v23 = *v7;
          v24 = *v7;
          if (*v6 == 1)
          {
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              v25 = *__error();
              *buf = 136315906;
              v33 = v22;
              v34 = 2080;
              v35 = "[GKConnectionInternal startListeningForLocalGamingCDX]";
              v36 = 1024;
              v37 = 2133;
              v38 = 1024;
              v39 = v25;
              _os_log_impl(&dword_24E50C000, v23, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d bind() failed for local gaming CDX (%d), trying ANY...", buf, 0x22u);
            }
          }

          else if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
          {
            [GKConnectionInternal startListeningForLocalGamingCDX];
          }
        }

        *v42.sa_data = 0;
        if (bind(HIDWORD(self->_updateRelayQueue), &v42, 0x10u) == -1)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
            {
              [GKConnectionInternal startListeningForLocalGamingCDX];
            }
          }

          *(&self->super.super.isa + v8) = 0;
          goto LABEL_44;
        }

        *buf = 16;
        if (getsockname(HIDWORD(self->_updateRelayQueue), &v42, buf) == -1)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
            {
              [GKConnectionInternal startListeningForLocalGamingCDX];
            }
          }

          goto LABEL_44;
        }

        *(&self->super.super.isa + v8) = bswap32(*v42.sa_data) >> 16;
        break;
      }
    }

    if (listen(HIDWORD(self->_updateRelayQueue), 4) == -1)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
        {
          [GKConnectionInternal startListeningForLocalGamingCDX];
        }
      }
    }

    else
    {
      v26 = dispatch_source_create(MEMORY[0x277D85D28], SHIDWORD(self->_updateRelayQueue), 0, MEMORY[0x277D85CD0]);
      *&self->_localGamingCDXPort = v26;
      if (v26)
      {
        handler[0] = MEMORY[0x277D85DD0];
        handler[1] = 3221225472;
        handler[2] = __55__GKConnectionInternal_startListeningForLocalGamingCDX__block_invoke;
        handler[3] = &unk_279682BA8;
        handler[4] = self;
        dispatch_source_set_event_handler(v26, handler);
        dispatch_resume(*&self->_localGamingCDXPort);
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v27 = VRTraceErrorLogLevelToCSTR();
          v28 = *v7;
          if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
          {
            v29 = *(&self->super.super.isa + v8);
            *buf = 136315906;
            v33 = v27;
            v34 = 2080;
            v35 = "[GKConnectionInternal startListeningForLocalGamingCDX]";
            v36 = 1024;
            v37 = 2192;
            v38 = 1024;
            v39 = v29;
            _os_log_impl(&dword_24E50C000, v28, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d startListeningForLocalGamingCDX: listening on %u", buf, 0x22u);
          }
        }

        return 1;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
        {
          [GKConnectionInternal startListeningForLocalGamingCDX];
        }
      }
    }
  }

LABEL_44:
  updateRelayQueue_high = HIDWORD(self->_updateRelayQueue);
  if (updateRelayQueue_high == -1)
  {
    return 0;
  }

  close(updateRelayQueue_high);
  result = 0;
  HIDWORD(self->_updateRelayQueue) = -1;
  return result;
}

GKAsyncSocket *__55__GKConnectionInternal_startListeningForLocalGamingCDX__block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      *&buf[0].sa_len = 136315650;
      *&buf[0].sa_data[2] = v2;
      *&buf[0].sa_data[10] = 2080;
      *&buf[0].sa_data[12] = "[GKConnectionInternal startListeningForLocalGamingCDX]_block_invoke";
      *&buf[1].sa_data[4] = 1024;
      *&buf[1].sa_data[6] = 2162;
      _os_log_impl(&dword_24E50C000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d _localGamingCDXListenSource callback", &buf[0].sa_len, 0x1Cu);
    }
  }

  *&v4.sa_len = 0xAAAAAAAAAAAAAAAALL;
  *&v4.sa_data[6] = 0xAAAAAAAAAAAAAAAALL;
  buf[6] = v4;
  buf[7] = v4;
  buf[4] = v4;
  buf[5] = v4;
  buf[2] = v4;
  buf[3] = v4;
  buf[0] = v4;
  buf[1] = v4;
  v13 = 128;
  result = accept(*(*(a1 + 32) + 508), buf, &v13);
  if (result != -1)
  {
    v6 = result;
    TimingLog(3, 0, "starting local CDX tcp connection (accept)");
    result = objc_alloc_init(GKAsyncSocket);
    if (result)
    {
      v7 = result;
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __55__GKConnectionInternal_startListeningForLocalGamingCDX__block_invoke_255;
      v12[3] = &unk_279682EE0;
      v12[4] = *(a1 + 32);
      v12[5] = result;
      [(GKAsyncSocket *)result setReceiveDataHandler:v12];
      *(v19 + 14) = 0xAAAAAAAAAAAAAAAALL;
      *&v8 = 0xAAAAAAAAAAAAAAAALL;
      *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v19[0] = v8;
      v17 = v8;
      v18 = v8;
      v16 = 0xAAAAAAAAAAAAAAAALL;
      v14 = v8;
      v15 = v8;
      v9 = MEMORY[0x277CCACA8];
      v10 = *(*(a1 + 32) + 20);
      SAToIPPORT();
      -[GKAsyncSocket setSocketName:](v7, "setSocketName:", [v9 stringWithFormat:@"localCDX[%u][%08X] (connect-from[%s]) (ptr=%p) (listener)", v10, v10, IPPORTToStringWithSize(), v7]);
      [(GKAsyncSocket *)v7 setTargetQueue:MEMORY[0x277D85CD0]];
      [(GKAsyncSocket *)v7 tcpAttachSocketDescriptor:v6];
      v11 = bswap32(*(*(a1 + 32) + 20));
      return -[GKAsyncSocket sendData:withCompletionHandler:](v7, "sendData:withCompletionHandler:", [MEMORY[0x277CBEA90] dataWithBytes:&v11 length:4], 0);
    }
  }

  return result;
}

- (id)getLocalConnectionDataForLocalGaming
{
  v29 = *MEMORY[0x277D85DE8];
  v18 = 0;
  data = [MEMORY[0x277CBEB28] data];
  v15 = -86;
  [(GKConnectionInternal *)self startListeningForLocalGamingCDX];
  v17 = bswap32(*(&self->super._pid + 1));
  [data appendData:{objc_msgSend(MEMORY[0x277CBEA90], "dataWithBytes:length:", &v17, 4)}];
  v16 = bswap32(LOWORD(self->_fPreReleased)) >> 16;
  [data appendData:{objc_msgSend(MEMORY[0x277CBEA90], "dataWithBytes:length:", &v16, 2)}];
  LocalInterfaceListWithOptions = GetLocalInterfaceListWithOptions();
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x277CE5818];
    v7 = *MEMORY[0x277CE5818];
    if (*MEMORY[0x277CE5808] == 1)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v20 = v5;
        v21 = 2080;
        v22 = "[GKConnectionInternal getLocalConnectionDataForLocalGaming]";
        v23 = 1024;
        v24 = 2227;
        v25 = 1024;
        v26 = LocalInterfaceListWithOptions;
        _os_log_impl(&dword_24E50C000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d After GetLocalInterfaceListWithOptions iNumInt=%d", buf, 0x22u);
      }
    }

    else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [GKConnectionInternal getLocalConnectionDataForLocalGaming];
    }
  }

  if (LocalInterfaceListWithOptions >= 1)
  {
    v8 = 0;
    do
    {
      v9 = v18;
      if (strcmp((v18 + v8 + 4), "lo0") && (*(v9 + v8) & 1) == 0)
      {
        v15 = 4;
        [data appendData:{objc_msgSend(MEMORY[0x277CBEA90], "dataWithBytes:length:", &v15, 1)}];
        *buf = bswap32(*(v18 + v8 + 20));
        [data appendData:{objc_msgSend(MEMORY[0x277CBEA90], "dataWithBytes:length:", buf, 4)}];
      }

      v8 += 40;
    }

    while (40 * LocalInterfaceListWithOptions != v8);
  }

  FreeLocalInterfaceList();
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v12 = [data length];
      if (data)
      {
        uTF8String = [objc_msgSend_description(data) UTF8String];
      }

      else
      {
        uTF8String = "<nil>";
      }

      *buf = 136316162;
      v20 = v10;
      v21 = 2080;
      v22 = "[GKConnectionInternal getLocalConnectionDataForLocalGaming]";
      v23 = 1024;
      v24 = 2248;
      v25 = 1024;
      v26 = v12;
      v27 = 2080;
      v28 = uTF8String;
      _os_log_impl(&dword_24E50C000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d getLocalConnectionDataForLocalGaming returned %d bytes (%s)", buf, 0x2Cu);
    }
  }

  return data;
}

- (void)connectPendingConnectionsFromList:(id)list sessionInfo:(id)info
{
  v78[2] = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v8 = [list count];
      v9 = *(&self->super._pid + 1);
      [(NSMutableDictionary *)self->_preblobToPIDMap count];
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_12_1();
      OUTLINED_FUNCTION_16_1();
      v71 = v8;
      v72 = v10;
      v73 = v9;
      v74 = v10;
      LODWORD(v75[0]) = v11;
      _os_log_impl(&dword_24E50C000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d connectPendingConnections: connecting %d (from %u) (_pidToPreblobMap: %d)", buf, 0x2Eu);
    }
  }

  if (VRTraceGetErrorLogLevelForModule() > 7)
  {
    VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x277CE5818];
    v13 = *MEMORY[0x277CE5818];
    if (*MEMORY[0x277CE5808] == 1)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        [objc_msgSend_description(info) UTF8String];
        OUTLINED_FUNCTION_13_1();
        OUTLINED_FUNCTION_14_1();
        OUTLINED_FUNCTION_11_1();
        _os_log_impl(&dword_24E50C000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d connectPendingConnections: sessionInfo: %s", buf, 0x26u);
      }
    }

    else if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [objc_msgSend_description(info) UTF8String];
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_14_1();
      OUTLINED_FUNCTION_11_1();
      _os_log_debug_impl(&dword_24E50C000, v12, OS_LOG_TYPE_DEBUG, " [%s] %s:%d connectPendingConnections: sessionInfo: %s", buf, 0x26u);
    }
  }

  if (![list count])
  {
    goto LABEL_49;
  }

  v14 = [MEMORY[0x277CBEB18] arrayWithArray:list];
  [v14 addObject:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInt:", *(&self->super._pid + 1))}];
  obj = v14;
  [v14 sortUsingSelector:sel_compare_];
  v15 = [info objectForKeyedSubscript:@"GKSSessionTicket"];
  v16 = [info objectForKeyedSubscript:@"GKSSessionToken"];
  if (*MEMORY[0x277CE5800] > 6 || (*MEMORY[0x277CE5810] & 1) != 0)
  {
    *buf = [list count];
    VRTraceVariable_();
  }

  if (!v15)
  {
    goto LABEL_24;
  }

  objc_opt_self();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([v15 CDXTicketWellFormed] & 1) == 0)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v23 = VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        [objc_msgSend_description(v15) UTF8String];
        *buf = 136315906;
        *&buf[4] = v23;
        OUTLINED_FUNCTION_17_1();
        OUTLINED_FUNCTION_14_1();
        OUTLINED_FUNCTION_11_1();
        OUTLINED_FUNCTION_24_0(&dword_24E50C000, v24, v25, " [%s] %s:%d Malformed GKSSessionTicketData in sessionInfo! %s", v26, v27, v28, v29, v58, v60, v62, v63, v64, v14, v66, *(&v66 + 1), v67, *(&v67 + 1), v68, *(&v68 + 1), v69, *(&v69 + 1));
      }
    }

    goto LABEL_23;
  }

  cDXTicketPCNT = [v15 CDXTicketPCNT];
  if (cDXTicketPCNT != [v14 count])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v18 = VRTraceErrorLogLevelToCSTR();
      v19 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        cDXTicketPCNT2 = [v15 CDXTicketPCNT];
        [v14 count];
        *buf = 136316162;
        *&buf[4] = v18;
        OUTLINED_FUNCTION_17_1();
        OUTLINED_FUNCTION_12_1();
        OUTLINED_FUNCTION_16_1();
        v71 = cDXTicketPCNT2;
        v72 = v21;
        v73 = v22;
        _os_log_error_impl(&dword_24E50C000, v19, OS_LOG_TYPE_ERROR, " [%s] %s:%d CDX PCNT Mismatch! [cdxTicket CDXTicketPCNT] = %d, [connectionPIDList count] = %d", buf, 0x28u);
      }
    }

LABEL_23:
    v15 = 0;
  }

LABEL_24:
  cDXTicketTrimmed = [v15 CDXTicketTrimmed];
  if (v16)
  {
    objc_opt_self();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v31 = VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          [objc_msgSend_description(cDXTicketTrimmed) UTF8String];
          *buf = 136315906;
          *&buf[4] = v31;
          OUTLINED_FUNCTION_17_1();
          OUTLINED_FUNCTION_14_1();
          OUTLINED_FUNCTION_11_1();
          OUTLINED_FUNCTION_24_0(&dword_24E50C000, v32, v33, " [%s] %s:%d Malformed GKSSessionTokenData in sessionInfo! %s", v34, v35, v36, v37, v58, v60, v62, v63, v64, obj, v66, *(&v66 + 1), v67, *(&v67 + 1), v68, *(&v68 + 1), v69, *(&v69 + 1));
        }
      }

      v16 = 0;
    }
  }

  if (!cDXTicketTrimmed)
  {
    cDXTicketTrimmed = [(GKConnectionInternal *)self createInsecureTicketUsingSortedConnectionsFromList:obj];
    if (!cDXTicketTrimmed)
    {
      goto LABEL_50;
    }
  }

  v38 = [(CDXClient *)[(GKConnectionInternal *)self cdxClient] createSessionWithTicket:cDXTicketTrimmed sessionKey:v16];
  [v38 setDelegate:self];
  if (!v38)
  {
LABEL_49:
    cDXTicketTrimmed = 0;
LABEL_50:
    v50 = 0;
    goto LABEL_48;
  }

  v77[0] = @"cdxClientSession";
  v77[1] = @"connectionPIDList";
  v61 = v38;
  v78[0] = v38;
  v78[1] = obj;
  v59 = cDXTicketTrimmed;
  -[NSMutableDictionary setObject:forKey:](-[GKConnectionInternal cdxSessions](self, "cdxSessions"), "setObject:forKey:", [MEMORY[0x277CBEAC0] dictionaryWithObjects:v78 forKeys:v77 count:2], objc_msgSend(cDXTicketTrimmed, "valueForKey:", @"CDXTicketSID"));
  cDXTicketTrimmed = objc_alloc_init(MEMORY[0x277CBEB28]);
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v39 = [obj countByEnumeratingWithState:&v66 objects:v76 count:16];
  if (v39)
  {
    v40 = v39;
    v41 = *v67;
    do
    {
      for (i = 0; i != v40; ++i)
      {
        if (*v67 != v41)
        {
          objc_enumerationMutation(obj);
        }

        v43 = *(*(&v66 + 1) + 8 * i);
        v44 = [(NSMutableDictionary *)self->_pidToPreblobMap objectForKeyedSubscript:v43];
        if ([v44 length])
        {
          [cDXTicketTrimmed appendData:v44];
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v45 = VRTraceErrorLogLevelToCSTR();
            v46 = *MEMORY[0x277CE5818];
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
            {
              v47 = [v44 length];
              [cDXTicketTrimmed length];
              *buf = 136316418;
              *&buf[4] = v45;
              OUTLINED_FUNCTION_17_1();
              OUTLINED_FUNCTION_12_1();
              OUTLINED_FUNCTION_16_1();
              v71 = v47;
              v72 = v48;
              v73 = v49;
              v74 = 2112;
              v75[0] = v43;
              _os_log_impl(&dword_24E50C000, v46, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d appending nextBlob=%d => combined=%d=, for pid=%@", buf, 0x32u);
            }
          }

          perfTimerStart();
          reportingGKLog();
        }
      }

      v40 = [obj countByEnumeratingWithState:&v66 objects:v76 count:16];
    }

    while (v40);
  }

  TimingLog(3, 0, "starting CDX");
  v50 = v61;
  [v61 sendData:cDXTicketTrimmed];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v51 = VRTraceErrorLogLevelToCSTR();
    v52 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v53 = [v59 length];
      v54 = [cDXTicketTrimmed length];
      v55 = [obj count];
      [(NSMutableDictionary *)self->_pidToPreblobMap count];
      *buf = 136316674;
      *&buf[4] = v51;
      OUTLINED_FUNCTION_17_1();
      OUTLINED_FUNCTION_12_1();
      OUTLINED_FUNCTION_16_1();
      v71 = v53;
      v72 = v56;
      v73 = v54;
      v74 = v56;
      LODWORD(v75[0]) = v55;
      WORD2(v75[0]) = v56;
      *(v75 + 6) = v57;
      _os_log_impl(&dword_24E50C000, v52, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Starting CDX: ticket(%d) and data(%d) from %d preblobs (%d total CDs)", buf, 0x34u);
    }
  }

LABEL_48:
}

- (id)createInsecureTicketUsingSortedConnectionsFromList:(id)list
{
  v94 = *MEMORY[0x277D85DE8];
  v93 = xmmword_24E590830;
  v92 = 0x706050403020100;
  v82 = 1500;
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v84 = v4;
      v85 = 2080;
      OUTLINED_FUNCTION_6_1();
      v86 = 1178;
      _os_log_impl(&dword_24E50C000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d <radar:7609403> remains unfixed.", buf, 0x1Cu);
    }
  }

  if (![list count])
  {
    return 0;
  }

  v6 = CDXVendorCreateWithSingleKey(&v93);
  v7 = malloc_type_calloc(1uLL, 0x5DCuLL, 0x1000040451B5BE8uLL);
  if (!v7)
  {
LABEL_51:
    v62 = 0;
    if (!v6)
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

  data = [MEMORY[0x277CBEB28] data];
  v8 = [list count];
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v9 = [list countByEnumeratingWithState:&v78 objects:v91 count:16];
  if (v9)
  {
    v11 = v9;
    v69 = v8;
    v70 = v7;
    v71 = v6;
    v12 = 0;
    v13 = -1;
    v14 = *v79;
    *&v10 = 136315906;
    v73 = v10;
    *&v10 = 136316162;
    v72 = v10;
    while (1)
    {
      v15 = 0;
      v74 = v12;
      do
      {
        if (*v79 != v14)
        {
          objc_enumerationMutation(list);
        }

        v16 = *(*(&v78 + 1) + 8 * v15);
        unsignedLongValue = [v16 unsignedLongValue];
        LODWORD(v92) = bswap32(unsignedLongValue) ^ v92;
        if ([v16 unsignedLongValue] == *(&self->super._pid + 1))
        {
          v13 = v12;
        }

        v18 = [(NSMutableDictionary *)self->_preblobToPIDMap objectForKeyedSubscript:v16];
        v19 = v18;
        if (!v18 || (v20 = CDXGetPreblobLength([v18 bytes])) == 0 || (v21 = v20, v20 > objc_msgSend(v19, "length")))
        {
          if (VRTraceGetErrorLogLevelForModule() < 3)
          {
            goto LABEL_18;
          }

          VRTraceErrorLogLevelToCSTR();
          v22 = *MEMORY[0x277CE5818];
          if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_18;
          }

          uTF8String = "<nil>";
          if (v19)
          {
            uTF8String = [objc_msgSend_description(v19) UTF8String];
          }

          OUTLINED_FUNCTION_9_0(uTF8String, v23, v24, v25, v26, v27, v28, v29, v66, v67, v68, v69, v70, v71, v72, *(&v72 + 1), v73);
          OUTLINED_FUNCTION_6_1();
          OUTLINED_FUNCTION_15_1();
          v53 = v22;
          v54 = " [%s] %s:%d Preblob is too small: %s";
LABEL_41:
          _os_log_error_impl(&dword_24E50C000, v53, OS_LOG_TYPE_ERROR, v54, v52, 0x26u);
LABEL_18:
          [data appendBytes:"" length:1];
          goto LABEL_19;
        }

        if (v21 < [v19 length])
        {
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v75 = VRTraceErrorLogLevelToCSTR();
            v30 = *MEMORY[0x277CE5818];
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
            {
              [objc_msgSend_description(v19) UTF8String];
              *buf = v72;
              v84 = v75;
              v85 = 2080;
              OUTLINED_FUNCTION_6_1();
              v86 = 1221;
              v87 = v31;
              v88 = v32;
              v89 = v33;
              v90 = v21;
              _os_log_impl(&dword_24E50C000, v30, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Trimming preblob %s to %d bytes", buf, 0x2Cu);
            }
          }

          v19 = [v19 subdataWithRange:{0, v21}];
        }

        if (!CDXVerifyPreblob([v19 bytes], objc_msgSend(v19, "length")))
        {
          if (VRTraceGetErrorLogLevelForModule() < 3)
          {
            goto LABEL_18;
          }

          VRTraceErrorLogLevelToCSTR();
          v43 = *MEMORY[0x277CE5818];
          if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_18;
          }

          uTF8String2 = "<nil>";
          if (v19)
          {
            uTF8String2 = [objc_msgSend_description(v19) UTF8String];
          }

          OUTLINED_FUNCTION_9_0(uTF8String2, v44, v45, v46, v47, v48, v49, v50, v66, v67, v68, v69, v70, v71, v72, *(&v72 + 1), v73);
          OUTLINED_FUNCTION_6_1();
          OUTLINED_FUNCTION_15_1();
          v53 = v43;
          v54 = " [%s] %s:%d Invalid preblob: %s";
          goto LABEL_41;
        }

        if (*[v19 bytes] == 1)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 5)
          {
            VRTraceErrorLogLevelToCSTR();
            v34 = *MEMORY[0x277CE5818];
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
            {
              if (v19)
              {
                uTF8String3 = [objc_msgSend_description(v19) UTF8String];
              }

              else
              {
                uTF8String3 = "<nil>";
              }

              OUTLINED_FUNCTION_9_0(uTF8String3, v35, v36, v37, v38, v39, v40, v41, v66, v67, v68, v69, v70, v71, v72, *(&v72 + 1), v73);
              OUTLINED_FUNCTION_6_1();
              OUTLINED_FUNCTION_15_1();
              _os_log_impl(&dword_24E50C000, v34, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Rejecting anonymous preblob: %s", v56, 0x26u);
            }
          }

          goto LABEL_18;
        }

        [data appendData:v19];
LABEL_19:
        ++v15;
        LOBYTE(v12) = v12 + 1;
      }

      while (v11 != v15);
      v12 = v74 + v11;
      v57 = [list countByEnumeratingWithState:&v78 objects:v91 count:16];
      v11 = v57;
      if (!v57)
      {
        v7 = v70;
        v6 = v71;
        LOBYTE(v8) = v69;
        goto LABEL_47;
      }
    }
  }

  v13 = -1;
LABEL_47:
  v58 = CDXVendorCreateTicket(v6, v7, &v82, &v92, [data bytes], objc_msgSend(data, "length"), v8, v13, 300, 0);
  if (v58)
  {
    v59 = v58;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v60 = VRTraceErrorLogLevelToCSTR();
      v61 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v84 = v60;
        v85 = 2080;
        OUTLINED_FUNCTION_6_1();
        v86 = 1261;
        v87 = v64;
        LODWORD(v88) = v59;
        OUTLINED_FUNCTION_20_1(&dword_24E50C000, v61, v65, " [%s] %s:%d Unable to generate ticket! error = %d", buf);
      }
    }

    goto LABEL_51;
  }

  v62 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v7 length:v82 freeWhenDone:1];
  v7 = 0;
  if (v6)
  {
LABEL_52:
    CDXVendorRelease(v6);
  }

LABEL_53:
  if (v7)
  {
    free(v7);
  }

  return v62;
}

- (void)CDXClientSession:(id)session receivedData:(id)data from:(int64_t)from
{
  v29 = *MEMORY[0x277D85DE8];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  v10 = MEMORY[0x277CE5818];
  if (ErrorLogLevelForModule >= 7)
  {
    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *v10;
    if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
    {
      [data length];
      *buf = 136316162;
      v23 = v11;
      OUTLINED_FUNCTION_8_1();
      v24 = 1379;
      v25 = v13;
      v26 = v14;
      v27 = v13;
      fromCopy = from;
      _os_log_impl(&dword_24E50C000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GKConnection:receivedData(%d):from=%d", buf, 0x28u);
    }
  }

  v15 = -[NSMutableDictionary objectForKeyedSubscript:](-[GKConnectionInternal cdxSessions](self, "cdxSessions"), "objectForKeyedSubscript:", [objc_msgSend(session "ticket")]);
  if (v15)
  {
    v16 = [objc_msgSend(objc_msgSend(v15 objectForKeyedSubscript:{@"connectionPIDList", "objectAtIndex:", from), "unsignedLongValue"}];
    v17 = [(GKConnectionInternal *)self extractBlobUsingData:data withSourcePID:v16 destPID:*(&self->super._pid + 1)];
    if (v17)
    {
      v18 = v17;
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v19 = VRTraceErrorLogLevelToCSTR();
        v20 = *v10;
        if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v23 = v19;
          OUTLINED_FUNCTION_8_1();
          v24 = 1395;
          v25 = v21;
          v26 = v16;
          _os_log_impl(&dword_24E50C000, v20, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d starting-ice.%d", buf, 0x22u);
        }
      }

      TimingLog(3, 0, "CDX done - starting ICE");
      perfTimerStop();
      perfTimerStart();
      reportingGKLog();
      GCKSessionEstablishConnection(self->_pidGUID, v16, [v18 bytes], objc_msgSend(v18, "length"));
    }
  }
}

- (void)initWithParticipantID:.cold.1()
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_2_1(&dword_24E50C000, v0, v1, " [%s] %s:%d Error in GCKSessionCreate.", v2, v3, v4, v5);
}

- (void)getLocalConnectionDataWithCompletionHandler:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  [a2 length];
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_10_1();
  _os_log_debug_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 0x26u);
}

- (void)connectParticipantsWithConnectionData:(uint64_t)a3 withSessionInfo:(os_log_t)log .cold.1(uint64_t a1, uint8_t *buf, uint64_t a3, os_log_t log)
{
  *buf = 136315906;
  *(buf + 4) = a3;
  *(buf + 6) = 2080;
  *(buf + 14) = "[GKConnectionInternal connectParticipantsWithConnectionData:withSessionInfo:]";
  *(buf + 11) = 1024;
  *(buf + 6) = 874;
  *(buf + 14) = 2080;
  *(buf + 30) = a1;
  _os_log_error_impl(&dword_24E50C000, log, OS_LOG_TYPE_ERROR, " [%s] %s:%d Participant connection data NOT found for %s", buf, 0x26u);
}

- (void)connectParticipantsWithConnectionData:withSessionInfo:.cold.2()
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_2_1(&dword_24E50C000, v0, v1, " [%s] %s:%d CANNOT CREATE DISPATCH GROUP", v2, v3, v4, v5);
}

void __78__GKConnectionInternal_connectParticipantsWithConnectionData_withSessionInfo___block_invoke_200_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_10();
  v2 = 966;
  _os_log_fault_impl(&dword_24E50C000, v0, OS_LOG_TYPE_FAULT, " [%s] %s:%d Unable to create timer dispatch source", v1, 0x1Cu);
}

void __78__GKConnectionInternal_connectParticipantsWithConnectionData_withSessionInfo___block_invoke_200_cold_2()
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_2_1(&dword_24E50C000, v0, v1, " [%s] %s:%d Unable to create timer dispatch source", v2, v3, v4, v5);
}

- (void)internal_setRemoteConnectionData:fromParticipantID:pendingConnectionPIDList:.cold.1()
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_17();
  v3 = v0;
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_20_1(&dword_24E50C000, v1, v1, " [%s] %s:%d GCKSessionPrepareConnection FAILED(%08X)", v2);
}

- (void)addEvent:remotePeer:.cold.1()
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_19(&dword_24E50C000, v0, v1, " [%s] %s:%d ", v2, v3, v4, v5);
}

- (void)setEventDelegate:.cold.1()
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_19(&dword_24E50C000, v0, v1, " [%s] %s:%d ", v2, v3, v4, v5);
}

- (void)eventDelegate
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_19(&dword_24E50C000, v0, v1, " [%s] %s:%d ", v2, v3, v4, v5);
}

- (void)gckPID
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_19(&dword_24E50C000, v0, v1, " [%s] %s:%d ", v2, v3, v4, v5);
}

- (void)extractBlobUsingData:(void *)a1 withSourcePID:destPID:.cold.1(void *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
    {
      [a1 length];
      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_4_0();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x2Eu);
    }
  }
}

void __106__GKConnectionInternal_internalInitiateRelayWithParticipant_withConnectionData_withRelayInfo_didInitiate___block_invoke_cold_1()
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_17();
  v3 = v0;
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_20_1(&dword_24E50C000, v1, v1, " [%s] %s:%d Cannot get relay candidates (%08X)", v2);
}

- (void)internalUpdateRelayWithParticipant:withConnectionData:withRelayInfo:didInitiate:.cold.1()
{
  VRTraceErrorLogLevelToCSTR();
  if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_22_1();
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10_1();
    _os_log_impl(v0, v1, OS_LOG_TYPE_DEFAULT, v2, v3, 0x1Cu);
  }
}

- (void)internalUpdateRelayWithParticipant:(void *)a1 withConnectionData:(void *)a2 withRelayInfo:(uint64_t)a3 didInitiate:(void *)a4 .cold.2(void *a1, void *a2, uint64_t a3, void *a4)
{
  objc_sync_exit(a1);
  global_queue = dispatch_get_global_queue(0, 0);
  *a2 = MEMORY[0x277D85DD0];
  a2[1] = 3221225472;
  a2[2] = __104__GKConnectionInternal_internalUpdateRelayWithParticipant_withConnectionData_withRelayInfo_didInitiate___block_invoke;
  a2[3] = &unk_279682BF0;
  a2[4] = a3;
  a2[5] = *a4;
  dispatch_async(global_queue, a2);
}

- (void)localGamingReceiveDataHandler:(uint64_t)a1 data:(void *)a2 time:error:.cold.1(uint64_t a1, void *a2)
{
  [a2 length];
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x22u);
}

- (void)startListeningForLocalGamingCDX
{
  OUTLINED_FUNCTION_19_1();
  __error();
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

- (void)getLocalConnectionDataForLocalGaming
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_17();
  v3 = v0;
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_21_1();
  _os_log_debug_impl(&dword_24E50C000, v1, OS_LOG_TYPE_DEBUG, " [%s] %s:%d After GetLocalInterfaceListWithOptions iNumInt=%d", v2, 0x22u);
}

@end