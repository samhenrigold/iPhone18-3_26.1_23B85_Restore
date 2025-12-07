@interface NetworkEpoch
+ (BOOL)parsePrimaryKey:(id)key majorID:(id *)d minorID:(id *)iD;
+ (BOOL)parsePrimaryKeyStr:(const char *)str majorIDLengthInBytes:(int *)bytes minorIDLengthInBytes:(int *)inBytes;
+ (BOOL)pruneDataOlderThan:(id)than exceptFor:(id)for inWorkspace:(id)workspace;
+ (id)epochWithPrimaryKey:(id)key interfaceName:(id)name isCell:(BOOL)cell maxBars:(int)bars roamingEvent:(BOOL)event roamingAttrs:(int64_t)attrs supportsIPv4:(BOOL)pv4 supportsIPv6:(BOOL)self0 inWorkspace:(id)self1 andQueue:(id)self2;
+ (id)getNetworkSignatureForAddressFamily:(int)family interfaceName:(id)name identifier:(id)identifier;
+ (id)snapshotsIn:(id)in olderThan:(id)than;
+ (void)resetDataFor:(id)for exceptFor:(id)exceptFor inWorkspace:(id)workspace;
+ (void)resetDataForSSIDs:(id)ds exceptFor:(id)for inWorkspace:(id)workspace;
- (BOOL)_isLiveRoutePerfinScope:(id)scope forTime:(id)time;
- (BOOL)countDownStop:(id)stop eventTimeStamp:(id)stamp;
- (BOOL)createCountDown:(id)down atTime:(id)time nextTick:(unint64_t)tick ticksTotal:(unint64_t)total onQueue:(id)queue withIterationBlock:(id)block completionBlock:(id)completionBlock;
- (BOOL)hasCountDownActive:(id)active;
- (BOOL)hasTypicalShortStay;
- (BOOL)matchesLOI:(int64_t)i;
- (SFLiveRoutePerf)currentLiveRoutePerf;
- (SFNetworkAttachment)durable;
- (id)_createCellSignature;
- (id)_init;
- (id)_initWithPrimaryKey:(id)key interfaceName:(id)name isCell:(BOOL)cell maxBars:(int)bars roamingEvent:(BOOL)event roamingAttrs:(int64_t)attrs supportsIPv4:(BOOL)pv4 supportsIPv6:(BOOL)self0 inWorkspace:(id)self1 andQueue:(id)self2;
- (id)_networkAttachmentDurableState;
- (id)copyWithZone:(_NSZone *)zone;
- (id)establishPartials:(id)partials withFlag:(BOOL)flag;
- (id)mapLOIToString;
- (int)compareToSnapshot:(id)snapshot;
- (int64_t)RTLocationOfInterestTypeForExtended:(int64_t)extended;
- (int64_t)getMatchingRTLocationOfInterestType;
- (void)_retrieveLOIAttrsOnQueue:(id)queue roamingEvent:(BOOL)event roamingAttrs:(int64_t)attrs reply:(id)reply;
- (void)dealloc;
- (void)refreshLOIOnQueue:(id)queue reply:(id)reply;
- (void)reportAdminDisable;
- (void)reportCaptivityRedirect;
- (void)reportCertError;
- (void)reportDataStall;
- (void)retire;
- (void)setDefRoute4:(__NStatSource *)route4;
- (void)setDefRoute6:(__NStatSource *)route6;
- (void)setLoi:(int64_t)loi;
- (void)unloadDurableState;
- (void)updateMetrics:(id)metrics source:(__NStatSource *)source wasProgress:(id)progress;
@end

@implementation NetworkEpoch

- (SFNetworkAttachment)durable
{
  durable = self->_durable;
  if (!durable)
  {
    _networkAttachmentDurableState = [(NetworkEpoch *)self _networkAttachmentDurableState];
    v5 = self->_durable;
    self->_durable = _networkAttachmentDurableState;

    durable = self->_durable;
  }

  v6 = durable;

  return v6;
}

- (id)mapLOIToString
{
  v2 = [(NetworkEpoch *)self loi];
  v3 = @"Unknown";
  if (v2 == 261)
  {
    v3 = @"Work";
  }

  if (v2 == 260)
  {
    return @"Home";
  }

  else
  {
    return v3;
  }
}

- (SFLiveRoutePerf)currentLiveRoutePerf
{
  v47 = *MEMORY[0x277D85DE8];
  date = [MEMORY[0x277CBEAA8] date];
  if (self->currentLiveRoutePerfObjectID)
  {
    mainObjectContext = [(AnalyticsWorkspace *)self->workspace mainObjectContext];
    v5 = [mainObjectContext objectWithID:self->currentLiveRoutePerfObjectID];

    if ([v5 isFault])
    {
      v6 = 0;
    }

    else
    {
      v6 = v5;
      if ([(NetworkEpoch *)self _isLiveRoutePerfinScope:v6 forTime:date])
      {
        goto LABEL_26;
      }
    }

    v7 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      currentLiveRoutePerfObjectID = self->currentLiveRoutePerfObjectID;
      v9 = v7;
      uRIRepresentation = [(NSManagedObjectID *)currentLiveRoutePerfObjectID URIRepresentation];
      durable = self->_durable;
      *buf = 134218498;
      selfCopy2 = self;
      v43 = 2112;
      v44 = uRIRepresentation;
      v45 = 2048;
      v46 = durable;
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEFAULT, "%p failure to fetch %@, recovering, durable: %p", buf, 0x20u);
    }
  }

  else
  {
    v6 = 0;
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  durable = [(NetworkEpoch *)self durable];
  hasDefaultRoute = [durable hasDefaultRoute];

  v14 = [hasDefaultRoute countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v37;
    while (2)
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v37 != v16)
        {
          objc_enumerationMutation(hasDefaultRoute);
        }

        v18 = *(*(&v36 + 1) + 8 * i);
        if ([(NetworkEpoch *)self _isLiveRoutePerfinScope:v18 forTime:date])
        {
          v19 = v18;

          v6 = v19;
          goto LABEL_19;
        }
      }

      v15 = [hasDefaultRoute countByEnumeratingWithState:&v36 objects:v40 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

LABEL_19:

  if (!v6)
  {
    naspace = self->naspace;
    entityName = [MEMORY[0x277D6B5A0] entityName];
    v6 = [(NetworkAttachmentAnalytics *)naspace createEntityForEntityName:entityName];

    [v6 setEpochs:0.0];
    durable2 = [(NetworkEpoch *)self durable];
    kind = [durable2 kind];
    [v6 setKind:{objc_msgSend(kind, "shortValue")}];

    v24 = [DateRounder roundToDayResolutionOnly:date];
    [v6 setTimeStamp:v24];

    [v6 setRttMin:1.79769313e308];
    v25 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
    {
      identifier = self->identifier;
      *buf = 134218243;
      selfCopy2 = self;
      v43 = 2113;
      v44 = identifier;
      _os_log_impl(&dword_23255B000, v25, OS_LOG_TYPE_INFO, "%p creating a new lrp for %{private}@", buf, 0x16u);
    }

    durable3 = [(NetworkEpoch *)self durable];
    [durable3 addHasDefaultRouteObject:v6];

    durable4 = [(NetworkEpoch *)self durable];
    hasDefaultRoute2 = [durable4 hasDefaultRoute];
    v30 = [hasDefaultRoute2 count];

    if (v30 == 1)
    {
      timeStamp = [v6 timeStamp];
      durable5 = [(NetworkEpoch *)self durable];
      [durable5 setFirstTimeStamp:timeStamp];
    }

    [(AnalyticsWorkspace *)self->workspace save];
  }

  objectID = [v6 objectID];
  v34 = self->currentLiveRoutePerfObjectID;
  self->currentLiveRoutePerfObjectID = objectID;

  v6 = v6;
LABEL_26:

  return v6;
}

+ (id)epochWithPrimaryKey:(id)key interfaceName:(id)name isCell:(BOOL)cell maxBars:(int)bars roamingEvent:(BOOL)event roamingAttrs:(int64_t)attrs supportsIPv4:(BOOL)pv4 supportsIPv6:(BOOL)self0 inWorkspace:(id)self1 andQueue:(id)self2
{
  eventCopy = event;
  v13 = *&bars;
  cellCopy = cell;
  queueCopy = queue;
  workspaceCopy = workspace;
  nameCopy = name;
  keyCopy = key;
  LOWORD(v23) = __PAIR16__(pv6, pv4);
  v21 = [[NetworkEpoch alloc] _initWithPrimaryKey:keyCopy interfaceName:nameCopy isCell:cellCopy maxBars:v13 roamingEvent:eventCopy roamingAttrs:attrs supportsIPv4:v23 supportsIPv6:workspaceCopy inWorkspace:queueCopy andQueue:?];

  return v21;
}

- (id)_initWithPrimaryKey:(id)key interfaceName:(id)name isCell:(BOOL)cell maxBars:(int)bars roamingEvent:(BOOL)event roamingAttrs:(int64_t)attrs supportsIPv4:(BOOL)pv4 supportsIPv6:(BOOL)self0 inWorkspace:(id)self1 andQueue:(id)self2
{
  eventCopy = event;
  v78 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  nameCopy = name;
  workspaceCopy = workspace;
  queueCopy = queue;
  v71.receiver = self;
  v71.super_class = NetworkEpoch;
  v20 = [(NetworkEpoch *)&v71 init];
  if (!v20)
  {
LABEL_30:
    v55 = v20;
    goto LABEL_31;
  }

  if (keyCopy)
  {
    v21 = [objc_alloc(MEMORY[0x277D6B538]) initWithWorkspace:workspaceCopy withCache:0];
    naspace = v20->naspace;
    v20->naspace = v21;

    if (v20->naspace)
    {
      v23 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:5];
      tickers = v20->tickers;
      v20->tickers = v23;

      if (v20->tickers)
      {
        v25 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:4];
        hasDNS = v20->_hasDNS;
        v20->_hasDNS = v25;

        if (v20->_hasDNS)
        {
          v27 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:4];
          impDNS = v20->_impDNS;
          v20->_impDNS = v27;

          if (v20->_impDNS)
          {
            v29 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:4];
            hasGW = v20->_hasGW;
            v20->_hasGW = v29;

            if (v20->_hasGW)
            {
              v20->_active = 1;
              date = [MEMORY[0x277CBEAA8] date];
              createdAt = v20->createdAt;
              v20->createdAt = date;

              objc_storeStrong(&v20->identifier, key);
              objc_storeStrong(&v20->_interfaceName, name);
              v20->_oncell = cell;
              v20->fromRoamingEvent = eventCopy;
              objc_storeStrong(&v20->workspace, workspace);
              v20->_bars = bars;
              v33 = objc_alloc_init(StopWatch);
              overall = v20->_overall;
              v20->_overall = v33;

              [(StopWatch *)v20->_overall start];
              v35 = objc_alloc_init(StopWatch);
              lowLqm = v20->_lowLqm;
              v20->_lowLqm = v35;

              v37 = objc_alloc_init(StopWatch);
              lowq = v20->_lowq;
              v20->_lowq = v37;

              v39 = objc_alloc_init(StopWatch);
              fatal = v20->_fatal;
              v20->_fatal = v39;

              v20->_supportsIPv4 = pv4;
              v20->_supportsIPv6 = pv6;
              _networkAttachmentDurableState = [(NetworkEpoch *)v20 _networkAttachmentDurableState];
              durable = v20->_durable;
              v20->_durable = _networkAttachmentDurableState;

              if (v20->_durable)
              {
                if (!v20->_oncell)
                {
                  v43 = +[WiFiShim sharedInstance];
                  -[SFNetworkAttachment setIsHotSpot:](v20->_durable, "setIsHotSpot:", [v43 isHotspot]);

                  v44 = netepochsLogHandle;
                  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
                  {
                    v45 = v20->_durable;
                    v46 = v44;
                    isHotSpot = [(SFNetworkAttachment *)v45 isHotSpot];
                    v48 = "NO";
                    identifier = v20->identifier;
                    if (isHotSpot)
                    {
                      v48 = "YES";
                    }

                    *buf = 136315395;
                    v73 = v48;
                    v74 = 2113;
                    v75 = identifier;
                    _os_log_impl(&dword_23255B000, v46, OS_LOG_TYPE_INFO, "Set hotspot %s for: %{private}@", buf, 0x16u);
                  }

                  netSignature = [(SFNetworkAttachment *)v20->_durable netSignature];
                  if (!netSignature || (v51 = netSignature, [(SFNetworkAttachment *)v20->_durable netSignature], v52 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v52, v51, (isKindOfClass & 1) != 0))
                  {
                    if (v20->_supportsIPv4)
                    {
                      v54 = [NetworkEpoch getNetworkSignatureForAddressFamily:2 interfaceName:v20->_interfaceName identifier:v20->identifier];
                      [(SFNetworkAttachment *)v20->_durable setNetSignature:v54];
                    }

                    else
                    {
                      v56 = netepochsLogHandle;
                      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 0;
                        _os_log_impl(&dword_23255B000, v56, OS_LOG_TYPE_DEFAULT, "No IPv4 route, can't get IPv4 network signature", buf, 2u);
                      }
                    }
                  }

                  netSignatureV6 = [(SFNetworkAttachment *)v20->_durable netSignatureV6];
                  if (!netSignatureV6 || (v58 = netSignatureV6, [(SFNetworkAttachment *)v20->_durable netSignatureV6], v59 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v60 = objc_opt_isKindOfClass(), v59, v58, (v60 & 1) != 0))
                  {
                    if (v20->_supportsIPv6)
                    {
                      v61 = [NetworkEpoch getNetworkSignatureForAddressFamily:30 interfaceName:v20->_interfaceName identifier:v20->identifier];
                      [(SFNetworkAttachment *)v20->_durable setNetSignatureV6:v61];
                    }

                    else
                    {
                      v62 = netepochsLogHandle;
                      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 0;
                        _os_log_impl(&dword_23255B000, v62, OS_LOG_TYPE_DEFAULT, "No IPv6 route, can't get IPv6 network signature", buf, 2u);
                      }
                    }
                  }
                }

                v20->_loi = 259;
                v69[0] = MEMORY[0x277D85DD0];
                v69[1] = 3221225472;
                v69[2] = __138__NetworkEpoch__initWithPrimaryKey_interfaceName_isCell_maxBars_roamingEvent_roamingAttrs_supportsIPv4_supportsIPv6_inWorkspace_andQueue___block_invoke;
                v69[3] = &unk_27898E068;
                v63 = v20;
                v70 = v63;
                [(NetworkEpoch *)v63 _retrieveLOIAttrsOnQueue:queueCopy roamingEvent:eventCopy roamingAttrs:attrs reply:v69];
                v63->_seqno = ++epoch_count;
                v64 = netepochsLogHandle;
                if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 134218499;
                  v73 = v63;
                  v74 = 2113;
                  v75 = keyCopy;
                  v76 = 1024;
                  v77 = epoch_count;
                  _os_log_impl(&dword_23255B000, v64, OS_LOG_TYPE_DEFAULT, "%p created epoch for %{private}@, total epochs=%d", buf, 0x1Cu);
                }

                goto LABEL_30;
              }
            }
          }
        }
      }
    }
  }

  v55 = 0;
LABEL_31:

  return v55;
}

uint64_t __138__NetworkEpoch__initWithPrimaryKey_interfaceName_isCell_maxBars_roamingEvent_roamingAttrs_supportsIPv4_supportsIPv6_inWorkspace_andQueue___block_invoke(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = [*(a1 + 32) RTLocationOfInterestTypeForExtended:a2];
  v5 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    if (*(*(a1 + 32) + 101))
    {
      v6 = @"cell";
    }

    else
    {
      v6 = @"wifi";
    }

    v9 = 138412802;
    v10 = v6;
    v11 = 2048;
    v12 = v4;
    v13 = 2048;
    v14 = a2;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "LOI: updateLOI on %@, replying rtLOI: %ld from extended: %ld", &v9, 0x20u);
  }

  if (*(*(a1 + 32) + 101))
  {
    v7 = 5;
  }

  else
  {
    v7 = 3;
  }

  return [NetworkAnalyticsEngine updateLOI:v4 forInterfaceType:v7];
}

- (void)refreshLOIOnQueue:(id)queue reply:(id)reply
{
  replyCopy = reply;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __40__NetworkEpoch_refreshLOIOnQueue_reply___block_invoke;
  v8[3] = &unk_27898E090;
  v8[4] = self;
  v9 = replyCopy;
  v7 = replyCopy;
  [(NetworkEpoch *)self _retrieveLOIAttrsOnQueue:queue roamingEvent:0 roamingAttrs:259 reply:v8];
}

uint64_t __40__NetworkEpoch_refreshLOIOnQueue_reply___block_invoke(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = [*(a1 + 32) RTLocationOfInterestTypeForExtended:a2];
  v5 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134218240;
    v8 = v4;
    v9 = 2048;
    v10 = a2;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "LOI: refreshLOIOnQueue replying rtLOI:%ld from extended:%ld", &v7, 0x16u);
  }

  return (*(*(a1 + 40) + 16))();
}

- (void)_retrieveLOIAttrsOnQueue:(id)queue roamingEvent:(BOOL)event roamingAttrs:(int64_t)attrs reply:(id)reply
{
  v59 = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  replyCopy = reply;
  attrs = [(SFNetworkAttachment *)self->_durable attrs];
  integerValue = [attrs integerValue];

  if ((integerValue - 262) > 0xFFFFFFFFFFFFFFFDLL)
  {
    [(NetworkEpoch *)self setLoi:integerValue];
    if (queueCopy && replyCopy)
    {
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __73__NetworkEpoch__retrieveLOIAttrsOnQueue_roamingEvent_roamingAttrs_reply___block_invoke_2;
      v41[3] = &unk_27898B678;
      v41[4] = self;
      v42 = replyCopy;
      dispatch_async(queueCopy, v41);
    }

    v17 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      identifier = self->identifier;
      v19 = v17;
      v20 = [(NetworkEpoch *)self loi];
      *buf = 138478083;
      v56 = identifier;
      v57 = 2048;
      attrsCopy = v20;
      _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_DEFAULT, "LOI: epoch with primary key = %{private}@ inherits persisted value (loi=%ld)", buf, 0x16u);
    }

    goto LABEL_37;
  }

  if (!event)
  {
    if (!self->_oncell)
    {
LABEL_27:
      v32 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v33 = self->identifier;
        *buf = 138478083;
        v56 = v33;
        v57 = 2048;
        attrsCopy = integerValue;
        _os_log_impl(&dword_23255B000, v32, OS_LOG_TYPE_DEFAULT, "LOI: slow path for epoch w/ primary key = %{private}@, old LOI = %ld", buf, 0x16u);
      }

      v34 = +[LocationStateRelay sharedInstance];
      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = __73__NetworkEpoch__retrieveLOIAttrsOnQueue_roamingEvent_roamingAttrs_reply___block_invoke_21;
      v43[3] = &unk_27898E0B8;
      v43[4] = self;
      v45 = replyCopy;
      v44 = queueCopy;
      [v34 fetchCurrentLocationLOIOnQueue:v44 desiredAccuracy:v43 reply:1000.0];

      v16 = v45;
      goto LABEL_30;
    }

LABEL_15:
    v40 = queueCopy;
    +[NetworkAnalyticsEngine concurrentEpochs];
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v21 = v51 = 0u;
    v22 = [v21 countByEnumeratingWithState:&v48 objects:v54 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v49;
      while (2)
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v49 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v48 + 1) + 8 * i);
          if (([v26 oncell] & 1) == 0)
          {
            durable = [v26 durable];
            attrs2 = [durable attrs];
            integerValue2 = [attrs2 integerValue];

            v30 = netepochsLogHandle;
            if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
            {
              v31 = self->identifier;
              *buf = 138478083;
              v56 = v31;
              v57 = 2048;
              attrsCopy = integerValue2;
              _os_log_impl(&dword_23255B000, v30, OS_LOG_TYPE_DEFAULT, "LOI: Cell, found LOI from concurrent epoch with primary key = %{private}@, LOI = %ld", buf, 0x16u);
            }

            if ((integerValue2 & 0xFFFFFFFFFFFFFFFELL) == 0x104)
            {
              [(NetworkEpoch *)self setLoi:integerValue2];

              v35 = netepochsLogHandle;
              if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
              {
                v36 = self->identifier;
                v37 = v35;
                v38 = [(NetworkEpoch *)self loi];
                *buf = 138478083;
                v56 = v36;
                v57 = 2048;
                attrsCopy = v38;
                _os_log_impl(&dword_23255B000, v37, OS_LOG_TYPE_DEFAULT, "LOI: Cell, adopted LOI from concurrent epoch with primary key = %{private}@, LOI = %ld", buf, 0x16u);
              }

              replyCopy = v39;
              queueCopy = v40;
              if (v40 && v39)
              {
                v46[0] = MEMORY[0x277D85DD0];
                v46[1] = 3221225472;
                v46[2] = __73__NetworkEpoch__retrieveLOIAttrsOnQueue_roamingEvent_roamingAttrs_reply___block_invoke_19;
                v46[3] = &unk_27898B678;
                v46[4] = self;
                v47 = v39;
                dispatch_async(v40, v46);
              }

              goto LABEL_37;
            }
          }
        }

        v23 = [v21 countByEnumeratingWithState:&v48 objects:v54 count:16];
        if (v23)
        {
          continue;
        }

        break;
      }
    }

    replyCopy = v39;
    queueCopy = v40;
    goto LABEL_27;
  }

  if (self->_oncell)
  {
    goto LABEL_15;
  }

  v14 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v15 = self->identifier;
    *buf = 138478083;
    v56 = v15;
    v57 = 2048;
    attrsCopy = attrs;
    _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_DEFAULT, "LOI: WiFi roaming, setting LOI from retired epoch for NA with primary key = %{private}@, old LOI = %ld", buf, 0x16u);
  }

  [(NetworkEpoch *)self setLoi:attrs];
  if (queueCopy && replyCopy)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __73__NetworkEpoch__retrieveLOIAttrsOnQueue_roamingEvent_roamingAttrs_reply___block_invoke;
    block[3] = &unk_27898B678;
    block[4] = self;
    v53 = replyCopy;
    dispatch_async(queueCopy, block);
    v16 = v53;
LABEL_30:
  }

LABEL_37:
}

uint64_t __73__NetworkEpoch__retrieveLOIAttrsOnQueue_roamingEvent_roamingAttrs_reply___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) loi];
  v3 = *(v1 + 16);

  return v3(v1, v2);
}

uint64_t __73__NetworkEpoch__retrieveLOIAttrsOnQueue_roamingEvent_roamingAttrs_reply___block_invoke_19(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) loi];
  v3 = *(v1 + 16);

  return v3(v1, v2);
}

void __73__NetworkEpoch__retrieveLOIAttrsOnQueue_roamingEvent_roamingAttrs_reply___block_invoke_21(uint64_t a1, void *a2, void *a3, void *a4)
{
  v45 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v9)
  {
    if ([v9 code] == 1)
    {
      v11 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(*(a1 + 32) + 16);
        *buf = 138477827;
        v42 = v12;
        _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEFAULT, "LOI: Location capturing is not approved for NA with primary key = %{private}@", buf, 0xCu);
      }

      v13 = *(a1 + 32);
      v14 = 258;
    }

    else
    {
      if ([v10 code] != 45)
      {
        v28 = [v10 code];
        v29 = netepochsLogHandle;
        v30 = os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT);
        if (v28 == 60)
        {
          if (!v30)
          {
            goto LABEL_19;
          }

          *buf = 0;
          v31 = "LOI: Location retrieval timed out";
          v32 = v29;
          v33 = 2;
        }

        else
        {
          if (!v30)
          {
            goto LABEL_19;
          }

          *buf = 138412290;
          v42 = v10;
          v31 = "LOI: Location retrieval failed with error: %@";
          v32 = v29;
          v33 = 12;
        }

        _os_log_impl(&dword_23255B000, v32, OS_LOG_TYPE_DEFAULT, v31, buf, v33);
        goto LABEL_19;
      }

      v21 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v22 = *(*(a1 + 32) + 16);
        *buf = 138477827;
        v42 = v22;
        _os_log_impl(&dword_23255B000, v21, OS_LOG_TYPE_DEFAULT, "LOI: Location capturing is not supported for NA with primary key = %{private}@", buf, 0xCu);
      }

      v13 = *(a1 + 32);
      v14 = 257;
    }

    [v13 setLoi:v14];
LABEL_19:
    v23 = *(a1 + 48);
    if (v23)
    {
      v24 = *(a1 + 40);
      if (v24)
      {
        v37[0] = MEMORY[0x277D85DD0];
        v37[1] = 3221225472;
        v37[2] = __73__NetworkEpoch__retrieveLOIAttrsOnQueue_roamingEvent_roamingAttrs_reply___block_invoke_23;
        v37[3] = &unk_27898B678;
        v25 = &v38;
        v26 = v23;
        v37[4] = *(a1 + 32);
        v38 = v26;
        v27 = v37;
LABEL_35:
        dispatch_async(v24, v27);

        goto LABEL_36;
      }
    }

    goto LABEL_36;
  }

  if (!v7)
  {
    v18 = netepochsLogHandle;
    if (!os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 259;
      goto LABEL_32;
    }

    v34 = *(*(a1 + 32) + 16);
    *buf = 138478083;
    v42 = v34;
    v43 = 2048;
    v17 = 259;
    v44 = 259;
    v20 = "LOI: CoreRoutine has not assigned LOI to the current location yet, setting LOI for NA with primary key = %{private}@ to %ld";
    goto LABEL_27;
  }

  v15 = [v7 type];
  v16 = 259;
  if (!v15)
  {
    v16 = 260;
  }

  if (v15 == 1)
  {
    v17 = 261;
  }

  else
  {
    v17 = v16;
  }

  v18 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v19 = *(*(a1 + 32) + 16);
    *buf = 138478083;
    v42 = v19;
    v43 = 2048;
    v44 = v17;
    v20 = "LOI: Retrieved LOI from CoreRoutine for NA with primary key = %{private}@, LOI type = %ld";
LABEL_27:
    _os_log_impl(&dword_23255B000, v18, OS_LOG_TYPE_DEFAULT, v20, buf, 0x16u);
  }

LABEL_32:
  [*(a1 + 32) setLoi:v17];
  v35 = *(a1 + 48);
  if (v35)
  {
    v24 = *(a1 + 40);
    if (v24)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __73__NetworkEpoch__retrieveLOIAttrsOnQueue_roamingEvent_roamingAttrs_reply___block_invoke_22;
      block[3] = &unk_27898B678;
      v25 = &v40;
      v36 = v35;
      block[4] = *(a1 + 32);
      v40 = v36;
      v27 = block;
      goto LABEL_35;
    }
  }

LABEL_36:
}

uint64_t __73__NetworkEpoch__retrieveLOIAttrsOnQueue_roamingEvent_roamingAttrs_reply___block_invoke_22(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) loi];
  v3 = *(v1 + 16);

  return v3(v1, v2);
}

uint64_t __73__NetworkEpoch__retrieveLOIAttrsOnQueue_roamingEvent_roamingAttrs_reply___block_invoke_23(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) loi];
  v3 = *(v1 + 16);

  return v3(v1, v2);
}

uint64_t __73__NetworkEpoch__retrieveLOIAttrsOnQueue_roamingEvent_roamingAttrs_reply___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) loi];
  v3 = *(v1 + 16);

  return v3(v1, v2);
}

- (id)_init
{
  v7.receiver = self;
  v7.super_class = NetworkEpoch;
  v2 = [(NetworkEpoch *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->isSnapshot = 1;
    date = [MEMORY[0x277CBEAA8] date];
    createdAt = v3->createdAt;
    v3->createdAt = date;

    v3->_seqno = ++epoch_count;
  }

  return v3;
}

- (void)dealloc
{
  v12 = *MEMORY[0x277D85DE8];
  --epoch_count;
  partial4 = self->_partial4;
  if (partial4)
  {
    [(SFLiveRoutePerf *)partial4 setHasNetworkAttachment:0];
  }

  partial6 = self->_partial6;
  if (partial6)
  {
    [(SFLiveRoutePerf *)partial6 setHasNetworkAttachment:0];
  }

  partial = self->_partial;
  if (partial)
  {
    [(SFLiveRoutePerf *)partial setHasNetworkAttachment:0];
  }

  v6 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    selfCopy = self;
    v10 = 1024;
    v11 = epoch_count;
    _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, "%p collecting epoch, total epochs=%u", buf, 0x12u);
  }

  v7.receiver = self;
  v7.super_class = NetworkEpoch;
  [(NetworkEpoch *)&v7 dealloc];
}

- (void)setLoi:(int64_t)loi
{
  v23 = *MEMORY[0x277D85DE8];
  loi = self->_loi;
  self->_loi = loi;
  if (self->_oncell)
  {
    netSignature = [(SFNetworkAttachment *)self->_durable netSignature];
    if (netSignature)
    {
      v6 = netSignature;
      netSignature2 = [(SFNetworkAttachment *)self->_durable netSignature];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
      }

      else
      {
        v8 = self->_loi;

        if (loi == v8)
        {
          return;
        }
      }
    }

    _createCellSignature = [(NetworkEpoch *)self _createCellSignature];
    durable = [(NetworkEpoch *)self durable];
    [durable setNetSignature:_createCellSignature];

    durable2 = [(NetworkEpoch *)self durable];
    netSignature3 = [durable2 netSignature];
    durable3 = [(NetworkEpoch *)self durable];
    [durable3 setNetSignatureV6:netSignature3];

    v14 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
    {
      identifier = self->identifier;
      v16 = v14;
      durable4 = [(NetworkEpoch *)self durable];
      netSignature4 = [durable4 netSignature];
      v19 = 138478083;
      v20 = identifier;
      v21 = 2112;
      v22 = netSignature4;
      _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_INFO, "Set both IPv4 and IPv6 signature for: %{private}@, sig: %@", &v19, 0x16u);
    }
  }
}

- (id)_createCellSignature
{
  v21 = *MEMORY[0x277D85DE8];
  identifier = self->identifier;
  v17 = 0;
  v4 = [NetworkEpoch parsePrimaryKey:identifier majorID:&v17 minorID:0];
  v5 = v17;
  if (v4)
  {
    v6 = MEMORY[0x277CCACA8];
    mapLOIToString = [(NetworkEpoch *)self mapLOIToString];
    v8 = [v6 stringWithFormat:@"%@-%@", v5, mapLOIToString];

    v9 = [NetworkAnalyticsEngine hashPrimaryKey:v8];
    if ([v9 isEqualToString:@"HASH-FAILED"])
    {
      v10 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
      {
        v11 = self->identifier;
        *buf = 138478083;
        *&buf[4] = v11;
        *&buf[12] = 2112;
        *&buf[14] = @"HASH-FAILED";
        _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_ERROR, "Failed to set signature for: %{private}@, using back-stop string: %@", buf, 0x16u);
      }
    }

    v12 = [v9 dataUsingEncoding:4];
    memset(buf, 0, sizeof(buf));
    v19 = 0u;
    v20 = 0u;
    [v12 bytes];
    [v12 length];
    __memcpy_chk();
    v13 = [MEMORY[0x277CBEA90] dataWithBytes:buf length:24];
  }

  else
  {
    v14 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
    {
      v15 = self->identifier;
      *buf = 138477827;
      *&buf[4] = v15;
      _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_ERROR, "Failed to set signature for: %{private}@", buf, 0xCu);
    }

    v13 = 0;
  }

  return v13;
}

- (void)setDefRoute4:(__NStatSource *)route4
{
  self->_defRoute4 = route4;
  if (route4)
  {
    MEMORY[0x238386EB0](route4, a2);

    JUMPOUT(0x238386EA0);
  }
}

- (void)setDefRoute6:(__NStatSource *)route6
{
  self->_defRoute6 = route6;
  if (route6)
  {
    MEMORY[0x238386EB0](route6, a2);

    JUMPOUT(0x238386EA0);
  }
}

- (BOOL)createCountDown:(id)down atTime:(id)time nextTick:(unint64_t)tick ticksTotal:(unint64_t)total onQueue:(id)queue withIterationBlock:(id)block completionBlock:(id)completionBlock
{
  downCopy = down;
  timeCopy = time;
  queueCopy = queue;
  blockCopy = block;
  completionBlockCopy = completionBlock;
  LOBYTE(v20) = 0;
  if (downCopy && self->_active)
  {
    v21 = [(NSMutableDictionary *)self->tickers objectForKeyedSubscript:downCopy];

    if (v21)
    {
      LOBYTE(v20) = 0;
    }

    else
    {
      v22 = objc_alloc_init(CountDown);
      v23 = v22;
      v20 = v22 != 0;
      if (v22)
      {
        [(CountDown *)v22 goOffNext:tick fromTime:timeCopy forEpoch:self timesTotal:total onQueue:queueCopy withIterationBlock:blockCopy completionBlock:completionBlockCopy];
        [(NSMutableDictionary *)self->tickers setObject:v23 forKeyedSubscript:downCopy];
        [(NetworkEpoch *)self setLastCountedDown:timeCopy];
      }
    }
  }

  return v20;
}

- (BOOL)countDownStop:(id)stop eventTimeStamp:(id)stamp
{
  v32 = *MEMORY[0x277D85DE8];
  stopCopy = stop;
  stampCopy = stamp;
  v8 = [(NSMutableDictionary *)self->tickers objectForKeyedSubscript:stopCopy];
  v9 = v8;
  if (v8)
  {
    if (stampCopy)
    {
      startTime = [v8 startTime];
      [stampCopy timeIntervalSinceDate:startTime];
      v12 = v11;

      v13 = netepochsLogHandle;
      v14 = os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT);
      if (v12 < 0.0)
      {
        if (v14)
        {
          v15 = v13;
          interfaceName = [(NetworkEpoch *)self interfaceName];
          startTime2 = [v9 startTime];
          [stampCopy timeIntervalSinceDate:startTime2];
          v26 = 138412802;
          v27 = interfaceName;
          v28 = 2112;
          v29 = stopCopy;
          v30 = 2048;
          v31 = v18;
          _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_DEFAULT, "no stop on %@ for %@ because the event timeStamp doesn't qualify: %f", &v26, 0x20u);

LABEL_8:
          goto LABEL_9;
        }

        goto LABEL_9;
      }

      if (v14)
      {
        v21 = v13;
        interfaceName2 = [(NetworkEpoch *)self interfaceName];
        startTime3 = [v9 startTime];
        [stampCopy timeIntervalSinceDate:startTime3];
        v26 = 138412802;
        v27 = interfaceName2;
        v28 = 2112;
        v29 = stopCopy;
        v30 = 2048;
        v31 = v24;
        _os_log_impl(&dword_23255B000, v21, OS_LOG_TYPE_DEFAULT, "stop on %@ for %@ because the event timeStamp qualify: %f", &v26, 0x20u);
      }
    }

    [v9 stop];
    [(NSMutableDictionary *)self->tickers removeObjectForKey:stopCopy];
    v20 = 1;
    goto LABEL_13;
  }

  v19 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
  {
    v15 = v19;
    interfaceName = [(NetworkEpoch *)self interfaceName];
    v26 = 138412546;
    v27 = interfaceName;
    v28 = 2112;
    v29 = stopCopy;
    _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_INFO, "no stop on %@ for %@ because the ticker was not found", &v26, 0x16u);
    goto LABEL_8;
  }

LABEL_9:
  v20 = 0;
LABEL_13:

  return v20;
}

- (BOOL)hasCountDownActive:(id)active
{
  v3 = [(NSMutableDictionary *)self->tickers objectForKeyedSubscript:active];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)hasTypicalShortStay
{
  v23 = *MEMORY[0x277D85DE8];
  durable = [(NetworkEpoch *)self durable];
  v3 = durable;
  if (durable && (([durable overallStayMean], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "doubleValue"), v6 = v5, v4, objc_msgSend(v3, "overallStayVar"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "doubleValue"), v9 = v8, v7, v6 > 0.0) ? (v10 = v6 < 120.0) : (v10 = 0), v10 ? (v11 = v9 < 1600.0) : (v11 = 0), v11))
  {
    v13 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v13;
      identifier = [v3 identifier];
      v17 = 138412802;
      v18 = identifier;
      v19 = 2048;
      v20 = v6;
      v21 = 2048;
      v22 = v9;
      _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_DEFAULT, "net attachm %@ reported to be shorty (mean/var) = %f,%f", &v17, 0x20u);
    }

    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)_isLiveRoutePerfinScope:(id)scope forTime:(id)time
{
  timeCopy = time;
  timeStamp = [scope timeStamp];
  [timeStamp timeIntervalSinceDate:timeCopy];
  v8 = v7;

  v9 = v8;
  if (v8 < 0)
  {
    v9 = -v9;
  }

  return v9 < 0x93A80;
}

- (id)establishPartials:(id)partials withFlag:(BOOL)flag
{
  flagCopy = flag;
  partialsCopy = partials;
  naspace = self->naspace;
  entityName = [MEMORY[0x277D6B5A0] entityName];
  v9 = [(NetworkAttachmentAnalytics *)naspace createTemporaryEntityForEntityName:entityName];

  date = [MEMORY[0x277CBEAA8] date];
  [v9 setTimeStamp:date];

  v11 = self->naspace;
  entityName2 = [MEMORY[0x277D6B5A8] entityName];
  v13 = [(NetworkAttachmentAnalytics *)v11 createTemporaryEntityForEntityName:entityName2];

  durable = [(NetworkEpoch *)self durable];
  identifier = [durable identifier];
  [v13 setIdentifier:identifier];

  [v9 setHasNetworkAttachment:v13];
  v16 = 1.79769313e308;
  if (self->fromRoamingEvent && !flagCopy)
  {
    [v9 setConnSuccesses:{objc_msgSend(partialsCopy, "connectSuccesses", 1.79769313e308)}];
    [v9 setConnAttempts:{objc_msgSend(partialsCopy, "connectAttempts")}];
    [v9 setPacketsIn:{objc_msgSend(partialsCopy, "rxPackets")}];
    [v9 setPacketsOut:{objc_msgSend(partialsCopy, "txPackets")}];
    [v9 setBytesIn:{objc_msgSend(partialsCopy, "rxBytes")}];
    [v9 setBytesOut:{objc_msgSend(partialsCopy, "txBytes")}];
    [v9 setRxDupeBytes:{objc_msgSend(partialsCopy, "rxDuplicateBytes")}];
    [v9 setRxOOOBytes:{objc_msgSend(partialsCopy, "rxOutOfOrderBytes")}];
    [v9 setReTxBytes:{objc_msgSend(partialsCopy, "txRetransmittedBytes")}];
    [partialsCopy rttMinimum];
    if (v16 == 0.0)
    {
      v16 = 1.79769313e308;
    }
  }

  [v9 setRttMin:v16];
  if (flagCopy)
  {
    [partialsCopy rttAverage];
    if (v17 != 0.0)
    {
      v18 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *v22 = 0;
        _os_log_impl(&dword_23255B000, v18, OS_LOG_TYPE_DEFAULT, "Initializing rtt avg and rtt var", v22, 2u);
      }

      [partialsCopy rttAverage];
      self->_initialRttAvg = v19;
      [partialsCopy rttVariation];
      self->_initialRttVar = v20;
    }
  }

  return v9;
}

- (void)updateMetrics:(id)metrics source:(__NStatSource *)source wasProgress:(id)progress
{
  v117 = *MEMORY[0x277D85DE8];
  metricsCopy = metrics;
  progressCopy = progress;
  if ([(NetworkEpoch *)self defRoute4]== source && !self->_partial4)
  {
    v87 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v88 = v87;
      oncell = [(NetworkEpoch *)self oncell];
      v90 = "wifi";
      if (oncell)
      {
        v90 = "cell";
      }

      *v110 = 136315138;
      *&v110[4] = v90;
      _os_log_impl(&dword_23255B000, v88, OS_LOG_TYPE_DEFAULT, "Establishing a partial for IPv4 on %s", v110, 0xCu);
    }

    v91 = [(NetworkEpoch *)self establishPartials:metricsCopy withFlag:0];
    partial4 = self->_partial4;
    self->_partial4 = v91;

    if (self->_partial)
    {
      goto LABEL_84;
    }

    v93 = netepochsLogHandle;
    if (!os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_83;
    }

    v94 = v93;
    oncell2 = [(NetworkEpoch *)self oncell];
    v96 = "wifi";
    if (oncell2)
    {
      v96 = "cell";
    }

    *v110 = 136315138;
    *&v110[4] = v96;
    goto LABEL_82;
  }

  if ([(NetworkEpoch *)self defRoute6]== source && !self->_partial6)
  {
    v97 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v98 = v97;
      oncell3 = [(NetworkEpoch *)self oncell];
      v100 = "wifi";
      if (oncell3)
      {
        v100 = "cell";
      }

      *v110 = 136315138;
      *&v110[4] = v100;
      _os_log_impl(&dword_23255B000, v98, OS_LOG_TYPE_DEFAULT, "Establishing a partial for IPv6 on %s", v110, 0xCu);
    }

    v101 = [(NetworkEpoch *)self establishPartials:metricsCopy withFlag:0];
    partial6 = self->_partial6;
    self->_partial6 = v101;

    if (self->_partial)
    {
      goto LABEL_84;
    }

    v103 = netepochsLogHandle;
    if (!os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
LABEL_83:
      v106 = [(NetworkEpoch *)self establishPartials:metricsCopy withFlag:1, *v110, *&v110[8]];
      partial = self->_partial;
      self->_partial = v106;

LABEL_84:
      date = [MEMORY[0x277CBEAA8] date];
      lastBytesPartialUpdate = self->lastBytesPartialUpdate;
      self->lastBytesPartialUpdate = date;

LABEL_85:
      (*(progressCopy + 2))(progressCopy, 0, 0);
      goto LABEL_86;
    }

    v94 = v103;
    oncell4 = [(NetworkEpoch *)self oncell];
    v105 = "wifi";
    if (oncell4)
    {
      v105 = "cell";
    }

    *v110 = 136315138;
    *&v110[4] = v105;
LABEL_82:
    _os_log_impl(&dword_23255B000, v94, OS_LOG_TYPE_DEFAULT, "Establishing _partial on %s", v110, 0xCu);

    goto LABEL_83;
  }

  if ([(NetworkEpoch *)self defRoute4]== source)
  {
    v11 = @"IPv4";
    v12 = 216;
  }

  else
  {
    if ([(NetworkEpoch *)self defRoute6]!= source)
    {
      v10 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
      {
        *v110 = 0;
        _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_ERROR, "src is neither of type defRoute4 or defRoute6", v110, 2u);
      }

      goto LABEL_85;
    }

    v11 = @"IPv6";
    v12 = 224;
  }

  v13 = *(&self->super.isa + v12);
  if (self->_initialRttAvg == 0.0)
  {
    [metricsCopy rttAverage];
    if (v14 != 0.0)
    {
      [metricsCopy rttAverage];
      self->_initialRttAvg = v15;
      [metricsCopy rttVariation];
      self->_initialRttVar = v16;
    }
  }

  v17 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
  {
    active = self->_active;
    *v110 = 138412802;
    *&v110[4] = v11;
    *&v110[12] = 2112;
    *&v110[14] = self;
    v111 = 1024;
    LODWORD(v112) = active;
    _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_INFO, "comparing new %@ counts against partial, epoch: %@, active: %d", v110, 0x1Cu);
  }

  currentLiveRoutePerf = [(NetworkEpoch *)self currentLiveRoutePerf];
  connectSuccesses = [metricsCopy connectSuccesses];
  [v13 connSuccesses];
  v22 = connectSuccesses - v21;
  if (connectSuccesses - v21 > 0.0)
  {
    [currentLiveRoutePerf connSuccesses];
    [currentLiveRoutePerf setConnSuccesses:v22 + v23];
    [v13 setConnSuccesses:connectSuccesses];
    [(SFLiveRoutePerf *)self->_partial connSuccesses];
    [(SFLiveRoutePerf *)self->_partial setConnSuccesses:v22 + v24];
  }

  connectAttempts = [metricsCopy connectAttempts];
  [v13 connAttempts];
  v27 = connectAttempts - v26;
  if (connectAttempts - v26 > 0.0)
  {
    [currentLiveRoutePerf connAttempts];
    [currentLiveRoutePerf setConnAttempts:v27 + v28];
    [v13 setConnAttempts:connectAttempts];
    [(SFLiveRoutePerf *)self->_partial connAttempts];
    [(SFLiveRoutePerf *)self->_partial setConnAttempts:v27 + v29];
  }

  rxPackets = [metricsCopy rxPackets];
  [v13 packetsIn];
  v32 = rxPackets - v31;
  if (rxPackets - v31 > 0.0)
  {
    [currentLiveRoutePerf packetsIn];
    [currentLiveRoutePerf setPacketsIn:v32 + v33];
    [v13 setPacketsIn:rxPackets];
    [(SFLiveRoutePerf *)self->_partial packetsIn];
    [(SFLiveRoutePerf *)self->_partial setPacketsIn:v32 + v34];
  }

  txPackets = [metricsCopy txPackets];
  [v13 packetsOut];
  v37 = txPackets - v36;
  if (txPackets - v36 > 0.0)
  {
    [currentLiveRoutePerf packetsOut];
    [currentLiveRoutePerf setPacketsOut:v37 + v38];
    [v13 setPacketsOut:txPackets];
    [(SFLiveRoutePerf *)self->_partial packetsOut];
    [(SFLiveRoutePerf *)self->_partial setPacketsOut:v37 + v39];
  }

  rxBytes = [metricsCopy rxBytes];
  [v13 bytesIn];
  v42 = rxBytes - v41;
  if (rxBytes - v41 > 0.0)
  {
    [currentLiveRoutePerf bytesIn];
    [currentLiveRoutePerf setBytesIn:v42 + v43];
    [v13 setBytesIn:rxBytes];
    [(SFLiveRoutePerf *)self->_partial bytesIn];
    [(SFLiveRoutePerf *)self->_partial setBytesIn:v42 + v44];
  }

  txBytes = [metricsCopy txBytes];
  [v13 bytesOut];
  v47 = txBytes - v46;
  if (txBytes - v46 > 0.0)
  {
    [currentLiveRoutePerf bytesOut];
    [currentLiveRoutePerf setBytesOut:v47 + v48];
    [v13 setBytesOut:txBytes];
    [(SFLiveRoutePerf *)self->_partial bytesOut];
    [(SFLiveRoutePerf *)self->_partial setBytesOut:v47 + v49];
  }

  rxDuplicateBytes = [metricsCopy rxDuplicateBytes];
  [v13 rxDupeBytes];
  v52 = rxDuplicateBytes - v51;
  if (rxDuplicateBytes - v51 > 0.0)
  {
    [currentLiveRoutePerf rxDupeBytes];
    [currentLiveRoutePerf setRxDupeBytes:v52 + v53];
    [v13 setRxDupeBytes:rxDuplicateBytes];
    [(SFLiveRoutePerf *)self->_partial rxDupeBytes];
    [(SFLiveRoutePerf *)self->_partial setRxDupeBytes:v52 + v54];
  }

  rxOutOfOrderBytes = [metricsCopy rxOutOfOrderBytes];
  [v13 rxOOOBytes];
  v57 = rxOutOfOrderBytes - v56;
  if (rxOutOfOrderBytes - v56 > 0.0)
  {
    [currentLiveRoutePerf rxOOOBytes];
    [currentLiveRoutePerf setRxOOOBytes:v57 + v58];
    [v13 setRxOOOBytes:rxOutOfOrderBytes];
    [(SFLiveRoutePerf *)self->_partial rxOOOBytes];
    [(SFLiveRoutePerf *)self->_partial setRxOOOBytes:v57 + v59];
  }

  txRetransmittedBytes = [metricsCopy txRetransmittedBytes];
  [v13 reTxBytes];
  v62 = txRetransmittedBytes - v61;
  if (txRetransmittedBytes - v61 > 0.0)
  {
    [currentLiveRoutePerf reTxBytes];
    [currentLiveRoutePerf setReTxBytes:v62 + v63];
    [v13 setReTxBytes:txRetransmittedBytes];
    [(SFLiveRoutePerf *)self->_partial reTxBytes];
    [(SFLiveRoutePerf *)self->_partial setReTxBytes:v62 + v64];
  }

  [metricsCopy rttMinimum];
  if (v65 != 0.0)
  {
    v66 = v65;
    [v13 rttMin];
    if (v66 < v67)
    {
      [currentLiveRoutePerf rttMin];
      if (v68 >= v66)
      {
        v68 = v66;
      }

      [currentLiveRoutePerf setRttMin:v68];
      [v13 setRttMin:v66];
      [(SFLiveRoutePerf *)self->_partial rttMin];
      if (v69 >= v66)
      {
        v69 = v66;
      }

      [(SFLiveRoutePerf *)self->_partial setRttMin:v69];
    }
  }

  [metricsCopy rttAverage];
  [v13 setRttAvg:?];
  [v13 rttAvg];
  [(SFLiveRoutePerf *)self->_partial setRttAvg:?];
  [metricsCopy rttVariation];
  [v13 setRttVar:?];
  [v13 rttVar];
  [(SFLiveRoutePerf *)self->_partial setRttVar:?];
  if (!self->_active)
  {
    if ([(NetworkEpoch *)self defRoute4]== source)
    {
      v70 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
      {
        v71 = v70;
        defRoute4 = [(NetworkEpoch *)self defRoute4];
        *v110 = 134217984;
        *&v110[4] = defRoute4;
        _os_log_impl(&dword_23255B000, v71, OS_LOG_TYPE_INFO, "forcefully removing defroute4: %p", v110, 0xCu);
      }

      [(NetworkEpoch *)self defRoute4];
      NStatSourceRemove();
      [(NetworkEpoch *)self setDefRoute4:0];
    }

    if ([(NetworkEpoch *)self defRoute6]== source)
    {
      v73 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
      {
        v74 = v73;
        defRoute6 = [(NetworkEpoch *)self defRoute6];
        *v110 = 134217984;
        *&v110[4] = defRoute6;
        _os_log_impl(&dword_23255B000, v74, OS_LOG_TYPE_INFO, "forcefully removing defroute6: %p", v110, 0xCu);
      }

      [(NetworkEpoch *)self defRoute6];
      NStatSourceRemove();
      [(NetworkEpoch *)self setDefRoute6:0];
    }

    if (![(NetworkEpoch *)self defRoute4]&& ![(NetworkEpoch *)self defRoute6]&& ![(NetworkEpoch *)self oncell]&& !self->fromRoamingEvent)
    {
      v76 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v77 = v76;
        primaryKey = [(NetworkEpoch *)self primaryKey];
        *v110 = 138477827;
        *&v110[4] = primaryKey;
        _os_log_impl(&dword_23255B000, v77, OS_LOG_TYPE_DEFAULT, "persisting data for %{private}@", v110, 0xCu);
      }

      [(AnalyticsWorkspace *)self->workspace save];
    }
  }

  v79 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v80 = v79;
    interfaceName = [(NetworkEpoch *)self interfaceName];
    primaryKey2 = [(NetworkEpoch *)self primaryKey];
    v83 = primaryKey2;
    v84 = "below";
    *v110 = 138413315;
    *&v110[4] = v11;
    *&v110[12] = 2112;
    *&v110[14] = interfaceName;
    if (v42 > 10240.0)
    {
      v84 = "above";
    }

    v111 = 2113;
    v112 = primaryKey2;
    v113 = 2048;
    v114 = v42;
    v115 = 2080;
    v116 = v84;
    _os_log_impl(&dword_23255B000, v80, OS_LOG_TYPE_DEFAULT, "%@ progress on %@ for %{private}@: deltaBytesIn: %llu is %s threshold", v110, 0x34u);
  }

  (*(progressCopy + 2))(progressCopy, v42 > 10240.0, self->lastBytesPartialUpdate);
  if (v42 != 0.0)
  {
    date2 = [MEMORY[0x277CBEAA8] date];
    v86 = self->lastBytesPartialUpdate;
    self->lastBytesPartialUpdate = date2;
  }

LABEL_86:
}

- (void)reportDataStall
{
  currentLiveRoutePerf = [(NetworkEpoch *)self currentLiveRoutePerf];
  [currentLiveRoutePerf dataStalls];
  v5 = v4 + 1.0;
  currentLiveRoutePerf2 = [(NetworkEpoch *)self currentLiveRoutePerf];
  [currentLiveRoutePerf2 setDataStalls:v5];

  partial = [(NetworkEpoch *)self partial];
  [partial dataStalls];
  v8 = v7 + 1.0;
  partial2 = [(NetworkEpoch *)self partial];
  [partial2 setDataStalls:v8];
}

- (void)reportCaptivityRedirect
{
  currentLiveRoutePerf = [(NetworkEpoch *)self currentLiveRoutePerf];
  [currentLiveRoutePerf captivityRedirects];
  v5 = v4 + 1.0;
  currentLiveRoutePerf2 = [(NetworkEpoch *)self currentLiveRoutePerf];
  [currentLiveRoutePerf2 setCaptivityRedirects:v5];

  partial = [(NetworkEpoch *)self partial];
  [partial captivityRedirects];
  v8 = v7 + 1.0;
  partial2 = [(NetworkEpoch *)self partial];
  [partial2 setCaptivityRedirects:v8];
}

- (void)reportCertError
{
  currentLiveRoutePerf = [(NetworkEpoch *)self currentLiveRoutePerf];
  [currentLiveRoutePerf certErrors];
  v5 = v4 + 1.0;
  currentLiveRoutePerf2 = [(NetworkEpoch *)self currentLiveRoutePerf];
  [currentLiveRoutePerf2 setCertErrors:v5];

  partial = [(NetworkEpoch *)self partial];
  [partial certErrors];
  v8 = v7 + 1.0;
  partial2 = [(NetworkEpoch *)self partial];
  [partial2 setCertErrors:v8];
}

- (void)reportAdminDisable
{
  currentLiveRoutePerf = [(NetworkEpoch *)self currentLiveRoutePerf];
  [currentLiveRoutePerf adminDisables];
  v5 = v4 + 1.0;
  currentLiveRoutePerf2 = [(NetworkEpoch *)self currentLiveRoutePerf];
  [currentLiveRoutePerf2 setAdminDisables:v5];

  partial = [(NetworkEpoch *)self partial];
  [partial adminDisables];
  v8 = v7 + 1.0;
  partial2 = [(NetworkEpoch *)self partial];
  [partial2 setAdminDisables:v8];
}

- (void)retire
{
  v100[1] = *MEMORY[0x277D85DE8];
  self->_active = 0;
  currentLiveRoutePerf = [(NetworkEpoch *)self currentLiveRoutePerf];
  [currentLiveRoutePerf epochs];
  v5 = v4;
  [currentLiveRoutePerf overallStay];
  v7 = v6;
  overall = [(NetworkEpoch *)self overall];
  [overall stop];
  v10 = v9;

  v11 = v7 / v5;
  if (v5 == 0.0)
  {
    v11 = v10;
  }

  v12 = v10 - v11;
  [currentLiveRoutePerf setOverallStay:v7 + v10];
  [currentLiveRoutePerf setEpochs:v5 + 1.0];
  [currentLiveRoutePerf overallStay];
  v14 = v13;
  [currentLiveRoutePerf epochs];
  v16 = v14 / v15;
  [currentLiveRoutePerf overallStayM2];
  [currentLiveRoutePerf setOverallStayM2:v17 + v12 * (v10 - v16)];
  [currentLiveRoutePerf lqmTransitionCount];
  v19 = v18;
  [(NetworkEpoch *)self lqmTransitions];
  [currentLiveRoutePerf setLqmTransitionCount:v19 + v20];
  lowLqm = [(NetworkEpoch *)self lowLqm];
  [lowLqm stop];
  v23 = v22;

  [currentLiveRoutePerf lowLqmStay];
  [currentLiveRoutePerf setLowLqmStay:v23 + v24];
  lowq = [(NetworkEpoch *)self lowq];
  [lowq stop];
  v27 = v26;

  [currentLiveRoutePerf lowqStay];
  [currentLiveRoutePerf setLowqStay:v27 + v28];
  fatal = [(NetworkEpoch *)self fatal];
  [fatal stop];
  v31 = v30;

  [currentLiveRoutePerf faultyStay];
  [currentLiveRoutePerf setFaultyStay:v31 + v32];
  date = [MEMORY[0x277CBEAA8] date];
  v34 = [DateRounder roundToDayResolutionOnly:date];
  [currentLiveRoutePerf setTimeStamp:v34];

  [(NetworkEpoch *)self topDownlRate];
  v36 = v35;
  [currentLiveRoutePerf topDownloadRate];
  if (v36 > v37)
  {
    [(NetworkEpoch *)self topDownlRate];
    [currentLiveRoutePerf setTopDownloadRate:?];
  }

  timeStamp = [currentLiveRoutePerf timeStamp];
  durable = [(NetworkEpoch *)self durable];
  [durable setTimeStamp:timeStamp];

  v40 = [MEMORY[0x277CCABB0] numberWithInteger:{-[NetworkEpoch loi](self, "loi")}];
  durable2 = [(NetworkEpoch *)self durable];
  [durable2 setAttrs:v40];

  [(NSMutableDictionary *)self->tickers enumerateKeysAndObjectsUsingBlock:&__block_literal_global_27];
  [(NSMutableDictionary *)self->tickers removeAllObjects];
  if ([(NetworkEpoch *)self defRoute4])
  {
    MEMORY[0x238386EA0]([(NetworkEpoch *)self defRoute4]);
  }

  if ([(NetworkEpoch *)self defRoute6])
  {
    MEMORY[0x238386EA0]([(NetworkEpoch *)self defRoute6]);
  }

  if (self->_deleteNetworkAttachmentsWhenDone)
  {
    identifier = self->identifier;
    v69 = 0;
    v43 = [NetworkEpoch parsePrimaryKey:identifier majorID:&v69 minorID:0];
    v44 = v69;
    v45 = v44;
    if (v43)
    {
      v100[0] = v44;
      v46 = [MEMORY[0x277CBEA60] arrayWithObjects:v100 count:1];
      [NetworkEpoch resetDataForSSIDs:v46 exceptFor:0 inWorkspace:self->workspace];
    }
  }

  v47 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v48 = v47;
    interfaceName = [(NetworkEpoch *)self interfaceName];
    primaryKey = [(NetworkEpoch *)self primaryKey];
    v51 = epoch_count;
    [currentLiveRoutePerf lqmTransitionCount];
    v53 = v52;
    [currentLiveRoutePerf lowLqmStay];
    v55 = v54;
    [currentLiveRoutePerf lowqStay];
    v57 = v56;
    [currentLiveRoutePerf dataStalls];
    v59 = v58;
    [currentLiveRoutePerf captivityRedirects];
    v61 = v60;
    [currentLiveRoutePerf certErrors];
    v63 = v62;
    [currentLiveRoutePerf adminDisables];
    v65 = v64;
    defRoute4 = [(NetworkEpoch *)self defRoute4];
    defRoute6 = [(NetworkEpoch *)self defRoute6];
    v68 = [(NetworkEpoch *)self loi];
    *buf = 134221571;
    selfCopy = self;
    v72 = 2112;
    v73 = interfaceName;
    v74 = 2113;
    v75 = primaryKey;
    v76 = 2048;
    v77 = v10;
    v78 = 1024;
    v79 = v51;
    v80 = 2048;
    v81 = v53;
    v82 = 2048;
    v83 = v55;
    v84 = 2048;
    v85 = v57;
    v86 = 2048;
    v87 = v59;
    v88 = 2048;
    v89 = v61;
    v90 = 2048;
    v91 = v63;
    v92 = 2048;
    v93 = v65;
    v94 = 2048;
    v95 = defRoute4;
    v96 = 2048;
    v97 = defRoute6;
    v98 = 2048;
    v99 = v68;
    _os_log_impl(&dword_23255B000, v48, OS_LOG_TYPE_DEFAULT, "%p retired epoch on %@ for %{private}@: stay time accrued = %f, total epochs = %d, LQM transitions = %f, low LQM stay = %f, low RSSI stay = %f, data stalls: %f, captRedirects: %f, certErrors: %f, adminDisables: %f, defroutes %p %p, loi: %ld", buf, 0x94u);
  }
}

- (id)_networkAttachmentDurableState
{
  v59 = *MEMORY[0x277D85DE8];
  date = [MEMORY[0x277CBEAA8] date];
  v4 = self->identifier;
  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = __Block_byref_object_copy__10;
  v51 = __Block_byref_object_dispose__10;
  v52 = 0;
  if ([(NetworkEpoch *)self oncell])
  {
    v5 = [NetworkStateRelay getStateRelayFor:5];
    radioTechnology = [v5 radioTechnology];
    if (radioTechnology == 11 && nrNetworkAttachmentLastCreationTime != 0)
    {
      [nrNetworkAttachmentLastCreationTime timeIntervalSinceNow];
      if (v8 > -2.0)
      {

        if (collapsedNRNetworkAttachmentID)
        {
          mainObjectContext = [(AnalyticsWorkspace *)self->workspace mainObjectContext];
          v10 = [mainObjectContext objectWithID:collapsedNRNetworkAttachmentID];
          v11 = v48[5];
          v48[5] = v10;
        }

        v4 = @"CollapsedNR";
      }
    }

    v12 = radioTechnology != 11;
  }

  else
  {
    v12 = 1;
  }

  if (v48[5] || (-[NetworkAttachmentAnalytics networkAttachmentsWithId:](self->naspace, "networkAttachmentsWithId:", v4), v13 = objc_claimAutoreleasedReturnValue(), v41 = MEMORY[0x277D85DD0], v42 = 3221225472, v43 = __46__NetworkEpoch__networkAttachmentDurableState__block_invoke, v44 = &unk_27898C848, v14 = v4, v45 = v14, v46 = &v47, [v13 enumerateObjectsUsingBlock:&v41], v45, v13, v48[5]))
  {
    v15 = [DateRounder roundToDayResolutionOnly:date, v41, v42, v43, v44];
    [v48[5] setTimeStamp:v15];

    goto LABEL_15;
  }

  v18 = [(NetworkAttachmentAnalytics *)self->naspace createEntity:v41];
  v19 = v48[5];
  v48[5] = v18;

  v20 = v48[5];
  if (v20)
  {
    [v20 setIdentifier:v14];
    v21 = [DateRounder roundToDayResolutionOnly:date];
    [v48[5] setFirstTimeStamp:v21];

    firstTimeStamp = [v48[5] firstTimeStamp];
    [v48[5] setTimeStamp:firstTimeStamp];

    v23 = MEMORY[0x277CCABB0];
    if ([(NetworkEpoch *)self oncell])
    {
      v24 = 2;
    }

    else
    {
      v24 = 1;
    }

    v25 = [v23 numberWithShort:v24];
    [v48[5] setKind:v25];

    [v48[5] setIsKnownGood:1];
    v26 = [MEMORY[0x277CCABB0] numberWithInteger:256];
    [v48[5] setAttrs:v26];

    if (v12)
    {
      v27 = netepochsLogHandle;
      if (!os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_15;
      }

      identifier = self->identifier;
      *buf = 134218243;
      selfCopy4 = self;
      v55 = 2113;
      v56 = identifier;
      v29 = "%p created new entry for %{private}@";
    }

    else
    {
      date2 = [MEMORY[0x277CBEAA8] date];
      v33 = nrNetworkAttachmentLastCreationTime;
      nrNetworkAttachmentLastCreationTime = date2;

      if ([(__CFString *)v14 isEqualToString:@"CollapsedNR"])
      {
        [(AnalyticsWorkspace *)self->workspace save];
        objectID = [v48[5] objectID];
        v35 = collapsedNRNetworkAttachmentID;
        collapsedNRNetworkAttachmentID = objectID;

        v36 = netepochsLogHandle;
        if (!os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_15;
        }

        v37 = self->identifier;
        *buf = 134218499;
        selfCopy4 = self;
        v55 = 2113;
        v56 = v37;
        v57 = 2112;
        v58 = collapsedNRNetworkAttachmentID;
        v29 = "%p collapsed NR entry %{private}@ attachment ID %@";
        v38 = v36;
        v39 = 32;
        goto LABEL_34;
      }

      v27 = netepochsLogHandle;
      if (!os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_15;
      }

      v40 = self->identifier;
      *buf = 134218243;
      selfCopy4 = self;
      v55 = 2113;
      v56 = v40;
      v29 = "%p created new entry for NR %{private}@";
    }

    v38 = v27;
    v39 = 22;
LABEL_34:
    _os_log_impl(&dword_23255B000, v38, OS_LOG_TYPE_DEFAULT, v29, buf, v39);
    goto LABEL_15;
  }

  v30 = netepochsLogHandle;
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    uTF8String = [(NSString *)self->identifier UTF8String];
    *buf = 134218243;
    selfCopy4 = self;
    v55 = 2081;
    v56 = uTF8String;
    _os_log_impl(&dword_23255B000, v30, OS_LOG_TYPE_ERROR, "%p couldn't create a new entry of %{private}s", buf, 0x16u);
  }

LABEL_15:
  v16 = v48[5];
  _Block_object_dispose(&v47, 8);

  return v16;
}

void __46__NetworkEpoch__networkAttachmentDurableState__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [v9 identifier];
  v8 = [v7 isEqualToString:*(a1 + 32)];

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (void)unloadDurableState
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    identifier = self->identifier;
    v6 = 134218243;
    selfCopy = self;
    v8 = 2113;
    v9 = identifier;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEFAULT, "%p unloaded durable state for %{private}@", &v6, 0x16u);
  }

  durable = self->_durable;
  self->_durable = 0;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = [[NetworkEpoch allocWithZone:?]];
  objc_storeStrong(v4 + 2, self->identifier);
  v5 = +[WiFiTriggerHandler getNetScoreInfo];
  v6 = v4[11];
  v4[11] = v5;

  [(NetworkEpoch *)self topDownlRate];
  v4[31] = v7;
  fatal = [(NetworkEpoch *)self fatal];
  *(v4 + 98) = [fatal isRunning];

  lowLqm = [(NetworkEpoch *)self lowLqm];
  *(v4 + 96) = [lowLqm isRunning];

  lowq = [(NetworkEpoch *)self lowq];
  *(v4 + 97) = [lowq isRunning];

  durable = [(NetworkEpoch *)self durable];
  *(v4 + 99) = [durable isKnownGood];

  *(v4 + 101) = [(NetworkEpoch *)self oncell];
  v12 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    identifier = self->identifier;
    v14 = v4[11];
    v16 = 134218499;
    v17 = v4;
    v18 = 2113;
    v19 = identifier;
    v20 = 2112;
    v21 = v14;
    _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_DEFAULT, "%p is a snapshot of %{private}@, scores are: %@", &v16, 0x20u);
  }

  return v4;
}

- (int)compareToSnapshot:(id)snapshot
{
  v39 = *MEMORY[0x277D85DE8];
  snapshotCopy = snapshot;
  v5 = +[WiFiTriggerHandler getNetScoreInfo];
  v6 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v36 = 138412290;
    *v37 = v5;
    _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, "relative comparison, current scores are: %@", &v36, 0xCu);
  }

  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:kSymptomManagedEventKeyTriggerNetScore];
  v8 = [v5 objectForKeyedSubscript:v7];
  intValue = [v8 intValue];

  v10 = snapshotCopy[11];
  v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:kSymptomManagedEventKeyTriggerNetScore];
  v12 = [v10 objectForKeyedSubscript:v11];
  intValue2 = [v12 intValue];

  if (intValue <= intValue2)
  {
    v15 = 0;
  }

  else
  {
    v14 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v36 = 67109376;
      *v37 = intValue;
      *&v37[4] = 1024;
      *&v37[6] = intValue2;
      _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_DEFAULT, "relative comparison, netscore improved, %d vs %d", &v36, 0xEu);
    }

    v15 = 1;
  }

  if (intValue >= 51 && intValue2 <= 50)
  {
    v16 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v36) = 0;
      _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_DEFAULT, "relative comparison: bonus point for going from bottom half to top half", &v36, 2u);
    }

    ++v15;
  }

  lowLqm = [(NetworkEpoch *)self lowLqm];
  if ([lowLqm isRunning])
  {
  }

  else
  {
    v18 = *(snapshotCopy + 96);

    if (v18 == 1)
    {
      v19 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v36) = 0;
        _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_DEFAULT, "relative comparison, was lowLqm, not anymore", &v36, 2u);
      }

      ++v15;
    }
  }

  lowq = [(NetworkEpoch *)self lowq];
  if ([lowq isRunning])
  {
  }

  else
  {
    v21 = *(snapshotCopy + 97);

    if (v21 == 1)
    {
      v22 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v36) = 0;
        _os_log_impl(&dword_23255B000, v22, OS_LOG_TYPE_DEFAULT, "relative comparison, was lowQ, not anymore", &v36, 2u);
      }

      ++v15;
    }
  }

  if (*(snapshotCopy + 98) == 1)
  {
    v23 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v36) = 0;
      _os_log_impl(&dword_23255B000, v23, OS_LOG_TYPE_DEFAULT, "relative comparison, was faulty, not anymore", &v36, 2u);
    }

    ++v15;
  }

  [(NetworkEpoch *)self topDownlRate];
  if (v24 != 0.0 && *(snapshotCopy + 31) != 0.0)
  {
    [(NetworkEpoch *)self topDownlRate];
    if (v25 > *(snapshotCopy + 31))
    {
      v26 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v27 = v26;
        [(NetworkEpoch *)self topDownlRate];
        v28 = snapshotCopy[31];
        v36 = 134218240;
        *v37 = v29;
        *&v37[8] = 2048;
        v38 = v28;
        _os_log_impl(&dword_23255B000, v27, OS_LOG_TYPE_DEFAULT, "relative comparison, superior rate clocked, %f vs %f", &v36, 0x16u);
      }

      ++v15;
    }
  }

  durable = [(NetworkEpoch *)self durable];
  if ([durable isKnownGood])
  {
    v31 = *(snapshotCopy + 99);

    if ((v31 & 1) == 0)
    {
      v32 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v36) = 0;
        _os_log_impl(&dword_23255B000, v32, OS_LOG_TYPE_DEFAULT, "relative comparison, wasn't known good, now it is", &v36, 2u);
      }

      ++v15;
    }
  }

  else
  {
  }

  if (v15 == 1)
  {
    v33 = 9;
  }

  else
  {
    v33 = 10;
  }

  if (v15 <= 1)
  {
    v34 = v33;
  }

  else
  {
    v34 = 8;
  }

  return v34;
}

- (BOOL)matchesLOI:(int64_t)i
{
  if (i)
  {
    if (i != 1)
    {
      return 0;
    }

    v3 = 261;
  }

  else
  {
    v3 = 260;
  }

  durable = [(NetworkEpoch *)self durable];
  attrs = [durable attrs];
  v6 = [attrs integerValue] == v3;

  return v6;
}

- (int64_t)getMatchingRTLocationOfInterestType
{
  durable = [(NetworkEpoch *)self durable];
  attrs = [durable attrs];
  v5 = -[NetworkEpoch RTLocationOfInterestTypeForExtended:](self, "RTLocationOfInterestTypeForExtended:", [attrs integerValue]);

  return v5;
}

- (int64_t)RTLocationOfInterestTypeForExtended:(int64_t)extended
{
  v3 = 1;
  if (extended != 261)
  {
    v3 = -1;
  }

  if (extended == 260)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

+ (id)snapshotsIn:(id)in olderThan:(id)than
{
  v5 = MEMORY[0x277CCAC30];
  inCopy = in;
  than = [v5 predicateWithFormat:@"createdAt < %@", than];
  v8 = [inCopy filteredArrayUsingPredicate:than];

  return v8;
}

+ (BOOL)pruneDataOlderThan:(id)than exceptFor:(id)for inWorkspace:(id)workspace
{
  v30[2] = *MEMORY[0x277D85DE8];
  thanCopy = than;
  forCopy = for;
  workspaceCopy = workspace;
  v10 = MEMORY[0x277CCAC30];
  distantPast = [MEMORY[0x277CBEAA8] distantPast];
  thanCopy = [v10 predicateWithFormat:@"%K >= %@ AND %K < %@", @"timeStamp", distantPast, @"timeStamp", thanCopy];

  if (forCopy && [forCopy count])
  {
    forCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"NOT (%K IN %@)", @"identifier", forCopy];
    v14 = MEMORY[0x277CCA920];
    v30[0] = thanCopy;
    v30[1] = forCopy;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:2];
    v16 = [v14 andPredicateWithSubpredicates:v15];
  }

  else
  {
    v16 = thanCopy;
  }

  v17 = [objc_alloc(MEMORY[0x277D6B538]) initWithWorkspace:workspaceCopy withCache:0];
  v18 = [v17 removeEntitiesMatching:v16];
  v19 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218499;
    v25 = v18;
    v26 = 2112;
    v27 = thanCopy;
    v28 = 2113;
    v29 = forCopy;
    _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_DEFAULT, "Removed %ld NetworkAttachment entries with timestamp before %@, except %{private}@", buf, 0x20u);
  }

  v20 = [objc_alloc(MEMORY[0x277D6B540]) initWithWorkspace:workspaceCopy entityName:@"LiveRoutePerf" withCache:0];
  v21 = [v20 removeEntitiesMatching:thanCopy];
  v22 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v25 = v21;
    v26 = 2112;
    v27 = thanCopy;
    _os_log_impl(&dword_23255B000, v22, OS_LOG_TYPE_DEFAULT, "Removed %ld LiveRoutePerf entries with timestamp before %@", buf, 0x16u);
  }

  return (v18 | v21) != 0;
}

+ (void)resetDataFor:(id)for exceptFor:(id)exceptFor inWorkspace:(id)workspace
{
  v30[2] = *MEMORY[0x277D85DE8];
  forCopy = for;
  exceptForCopy = exceptFor;
  v9 = MEMORY[0x277D6B538];
  workspaceCopy = workspace;
  v11 = [[v9 alloc] initWithWorkspace:workspaceCopy withCache:0];

  if (forCopy && [forCopy count])
  {
    [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN %@", @"identifier", forCopy];
  }

  else
  {
    [MEMORY[0x277CCAC30] predicateWithFormat:@"TRUEPREDICATE", v20, v22];
  }
  v12 = ;
  if (exceptForCopy && [exceptForCopy count])
  {
    [MEMORY[0x277CCAC30] predicateWithFormat:@"NOT (%K IN %@)", @"identifier", exceptForCopy];
  }

  else
  {
    [MEMORY[0x277CCAC30] predicateWithFormat:@"TRUEPREDICATE", v21, v23];
  }
  v13 = ;
  v14 = MEMORY[0x277CCA920];
  v30[0] = v12;
  v30[1] = v13;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:2];
  v16 = [v14 andPredicateWithSubpredicates:v15];

  v17 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v25 = v16;
    _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_DEBUG, "Final reset predicate %@", buf, 0xCu);
  }

  v18 = [v11 removeEntitiesMatching:v16];
  v19 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218499;
    v25 = v18;
    v26 = 2113;
    v27 = forCopy;
    v28 = 2113;
    v29 = exceptForCopy;
    _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_DEFAULT, "Removed %ld NetworkAttachment entries with identifier matching %{private}@ except %{private}@", buf, 0x20u);
  }
}

+ (void)resetDataForSSIDs:(id)ds exceptFor:(id)for inWorkspace:(id)workspace
{
  v65 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  forCopy = for;
  workspaceCopy = workspace;
  v9 = [objc_alloc(MEMORY[0x277D6B538]) initWithWorkspace:workspaceCopy withCache:0];
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v11 = dsCopy;
  v12 = [v11 countByEnumeratingWithState:&v57 objects:v64 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    v15 = *v58;
    do
    {
      v16 = 0;
      v17 = v14;
      do
      {
        if (*v58 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v14 = [v9 networkAttachmentsWithMajorID:*(*(&v57 + 1) + 8 * v16)];

        if ([v14 count])
        {
          [array addObjectsFromArray:v14];
        }

        ++v16;
        v17 = v14;
      }

      while (v13 != v16);
      v13 = [v11 countByEnumeratingWithState:&v57 objects:v64 count:16];
    }

    while (v13);
  }

  else
  {
    v14 = 0;
  }

  v47 = v9;
  v49 = v11;

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = array;
  v18 = [obj countByEnumeratingWithState:&v53 objects:v63 count:16];
  if (!v18)
  {
    v20 = 0;
    goto LABEL_37;
  }

  v19 = v18;
  v20 = 0;
  v21 = *v54;
  do
  {
    v22 = 0;
    do
    {
      if (*v54 != v21)
      {
        objc_enumerationMutation(obj);
      }

      v23 = *(*(&v53 + 1) + 8 * v22);
      if (forCopy)
      {
        identifier = [*(*(&v53 + 1) + 8 * v22) identifier];
        v25 = [forCopy member:identifier];

        if (v25)
        {
          v26 = netepochsLogHandle;
          if (!os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_30;
          }

          kind = v26;
          identifier2 = [v23 identifier];
          *buf = 138477827;
          v62 = identifier2;
          _os_log_impl(&dword_23255B000, kind, OS_LOG_TYPE_DEFAULT, "Resetting entries for NetworkAttachment entries must skip %{private}@", buf, 0xCu);

          goto LABEL_28;
        }
      }

      kind = [v23 kind];
      if ([kind intValue]== 1)
      {
        identifier3 = [v23 identifier];
        v52 = 0;
        v30 = [self parsePrimaryKey:identifier3 majorID:&v52 minorID:0];
        v31 = v52;
        v20 = v31;
        if (v30)
        {
          v32 = v31 == 0;
        }

        else
        {
          v32 = 1;
        }

        if (v32)
        {

LABEL_28:
          goto LABEL_30;
        }

        v33 = [v49 containsObject:v31];

        if (v33)
        {
          [array2 addObject:v23];
        }
      }

      else
      {

        v20 = 0;
      }

LABEL_30:
      ++v22;
    }

    while (v19 != v22);
    v34 = [obj countByEnumeratingWithState:&v53 objects:v63 count:16];
    v19 = v34;
  }

  while (v34);
LABEL_37:

  v35 = v47;
  v36 = v49;
  if ([array2 count])
  {
    v37 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %d", @"kind", 1];
    v38 = [v47 countEntitiesMatching:v37];
    v39 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138477827;
      v62 = v49;
      _os_log_impl(&dword_23255B000, v39, OS_LOG_TYPE_DEFAULT, "Resetting entries for NetworkAttachment entries for SSIDs:%{private}@", buf, 0xCu);
    }

    [v47 removeEntities:array2];
    if (![v47 countEntitiesMatching:v37] && v38 >= 0x15)
    {
      v40 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v62 = v38;
        _os_log_impl(&dword_23255B000, v40, OS_LOG_TYPE_ERROR, "All %lu Wi-Fi NAs have been deleted", buf, 0xCu);
      }

      v41 = objc_alloc_init(MEMORY[0x277D6AFC8]);
      if (v41)
      {
        v42 = *MEMORY[0x277D6B020];
        v43 = *MEMORY[0x277D6B220];
        stringValue = [&unk_2847EFB00 stringValue];
        v45 = [v41 signatureWithDomain:v42 type:v43 subType:@"All Wi-Fi NAs Deleted" subtypeContext:0 detectedProcess:@"symptomsd" triggerThresholdValues:stringValue];

        v36 = v49;
        v35 = v47;
        [v41 snapshotWithSignature:v45 duration:0 events:0 payload:0 actions:&__block_literal_global_108_0 reply:0.0];
      }
    }
  }
}

void __56__NetworkEpoch_resetDataForSSIDs_exceptFor_inWorkspace___block_invoke(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_INFO, "All Wi-Fi NAs Deleted Snapshot response: %@", &v4, 0xCu);
  }
}

+ (BOOL)parsePrimaryKey:(id)key majorID:(id *)d minorID:(id *)iD
{
  v20 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  uTF8String = [keyCopy UTF8String];
  v17 = 0;
  v9 = [NetworkEpoch parsePrimaryKeyStr:uTF8String majorIDLengthInBytes:&v17 + 4 minorIDLengthInBytes:&v17];
  if (v9)
  {
    if (d)
    {
      if (HIDWORD(v17))
      {
        v10 = objc_alloc(MEMORY[0x277CCACA8]);
        v11 = [v10 initWithBytes:uTF8String length:SHIDWORD(v17) encoding:4];
        *d = [objc_alloc(MEMORY[0x277CCACA8]) initWithString:v11];
      }

      else
      {
        *d = &stru_2847966D8;
        v12 = netepochsLogHandle;
        if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138477827;
          v19 = keyCopy;
          _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_DEFAULT, "primaryKey (%{private}@) has no Major ID", buf, 0xCu);
        }
      }
    }

    if (iD)
    {
      if (v17)
      {
        v13 = objc_alloc(MEMORY[0x277CCACA8]);
        v14 = [v13 initWithBytes:uTF8String + SHIDWORD(v17) + 1 length:v17 encoding:4];
        *iD = [objc_alloc(MEMORY[0x277CCACA8]) initWithString:v14];
      }

      else
      {
        *iD = &stru_2847966D8;
        v15 = netepochsLogHandle;
        if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138477827;
          v19 = keyCopy;
          _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_DEFAULT, "primaryKey (%{private}@) has no Minor ID", buf, 0xCu);
        }
      }
    }
  }

  return v9;
}

+ (BOOL)parsePrimaryKeyStr:(const char *)str majorIDLengthInBytes:(int *)bytes minorIDLengthInBytes:(int *)inBytes
{
  if (!str)
  {
    v9 = netepochsLogHandle;
    v10 = os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR);
    if (!v10)
    {
      return v10;
    }

    *buf = 0;
    v11 = "primaryKey is null.";
    v12 = buf;
LABEL_8:
    _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_ERROR, v11, v12, 2u);
LABEL_9:
    LOBYTE(v10) = 0;
    return v10;
  }

  v8 = strlen(str);
  if (v8 < 3 || str[v8 - 1] == 45)
  {
    v9 = netepochsLogHandle;
    v10 = os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR);
    if (!v10)
    {
      return v10;
    }

    v15 = 0;
    v11 = "Invalid primary key format.";
    v12 = &v15;
    goto LABEL_8;
  }

  v13 = 0;
  while (str[--v8] != 45)
  {
    ++v13;
    if (v8 <= 1)
    {
      goto LABEL_9;
    }
  }

  if (bytes)
  {
    *bytes = v8;
  }

  if (inBytes)
  {
    *inBytes = v13;
  }

  LOBYTE(v10) = 1;
  return v10;
}

+ (id)getNetworkSignatureForAddressFamily:(int)family interfaceName:(id)name identifier:(id)identifier
{
  v29 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  identifierCopy = identifier;
  if (family == 2 || family == 30)
  {
    v18 = 0;
    v9 = @"IPv6";
    if (family == 2)
    {
      v9 = @"IPv4";
    }

    v10 = v9;
    *v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    if (ifnet_get_signature([nameCopy UTF8String], family, v25, &v18))
    {
      v11 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
      {
        v12 = &stru_2847966D8;
        if (identifierCopy)
        {
          v12 = identifierCopy;
        }

        *buf = 138412547;
        v20 = v10;
        v21 = 2113;
        v22 = v12;
        _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_ERROR, "Failed to set %@ network signature for: %{private}@", buf, 0x16u);
      }

      v13 = 0;
    }

    else
    {
      v13 = [MEMORY[0x277CBEA90] dataWithBytes:v25 length:24];
      v15 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
      {
        v16 = &stru_2847966D8;
        *buf = 138412803;
        if (identifierCopy)
        {
          v16 = identifierCopy;
        }

        v20 = v10;
        v21 = 2113;
        v22 = v16;
        v23 = 2112;
        v24 = v13;
        _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_INFO, "Set %@ network signature for: %{private}@, sig: %@", buf, 0x20u);
      }
    }
  }

  else
  {
    v14 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
    {
      *v25 = 67109120;
      *&v25[4] = family;
      _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_ERROR, "Cannot get network signature for unknown address family %d", v25, 8u);
    }

    v13 = 0;
  }

  return v13;
}

@end