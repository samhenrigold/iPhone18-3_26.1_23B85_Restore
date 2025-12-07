@interface BLTRemoteGizmoClient
- (BLTCompanionServer)server;
- (BLTRemoteGizmoClient)init;
- (void)_handleSyncStateChanged:(id)changed;
- (void)_pingPairedDeviceWithRetry:(unint64_t)retry;
- (void)addBulletin:(id)bulletin playLightsAndSirens:(BOOL)sirens updateType:(unint64_t)type withTimeout:(id)timeout completion:(id)completion;
- (void)addBulletinSummary:(id)summary;
- (void)cancelBulletinWithPublisherMatchID:(id)d universalSectionID:(id)iD feed:(unint64_t)feed withTimeout:(id)timeout;
- (void)dealloc;
- (void)handleAcknowledgeActionRequest:(id)request;
- (void)handleDidPlayLightsAndSirensReply:(id)reply;
- (void)handleDismissActionRequest:(id)request;
- (void)handleHandlePairedDeviceReady:(id)ready;
- (void)handleLaunchSessionActionRequest:(id)request;
- (void)handleRemoveBulletinRequest:(id)request;
- (void)handleShouldSuppressLightsAndSirensNowRequest:(id)request;
- (void)handleSnoozeActionRequest:(id)request;
- (void)handleSupplementaryActionRequest:(id)request;
- (void)handleWillSendLightsAndSirensRequest:(id)request;
- (void)registerProtobufHandlers;
- (void)removeBulletinWithPublisherBulletinID:(id)d recordID:(id)iD sectionID:(id)sectionID withTimeout:(id)timeout;
- (void)setLastKnownConnectionStatus:(unint64_t)status;
- (void)updateBulletinList:(id)list;
@end

@implementation BLTRemoteGizmoClient

- (BLTRemoteGizmoClient)init
{
  v2 = [(BLTRemoteObject *)self initWithServiceName:@"com.apple.private.alloy.bulletindistributor" idsQueueName:"com.apple.bulletindistributor.ids"];
  v3 = v2;
  if (v2)
  {
    [(BLTRemoteObject *)v2 setPairedDeviceReady:0];
    activePairedDeviceSupportsFileBulletinAdd = [MEMORY[0x277D2BCC8] activePairedDeviceSupportsFileBulletinAdd];
    v5 = off_278D30AB0;
    if (!activePairedDeviceSupportsFileBulletinAdd)
    {
      v5 = off_278D30AC8;
    }

    v6 = objc_alloc_init(*v5);
    bulletinSendQueue = v3->_bulletinSendQueue;
    v3->_bulletinSendQueue = v6;

    [(BLTBulletinSendQueuePassthrough *)v3->_bulletinSendQueue setDelegate:v3];
    [(BLTRemoteGizmoClient *)v3 _pingPairedDevice];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel__handleSyncStateChanged_ name:@"BLTPairedSyncStateChanged" object:0];
  }

  return v3;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = BLTRemoteGizmoClient;
  [(BLTRemoteObject *)&v4 dealloc];
}

- (void)registerProtobufHandlers
{
  [(BLTRemoteObject *)self setProtobufAction:sel_handleAcknowledgeActionRequest_ forIncomingRequestsOfType:5];
  [(BLTRemoteObject *)self setProtobufAction:sel_handleSnoozeActionRequest_ forIncomingRequestsOfType:6];
  [(BLTRemoteObject *)self setProtobufAction:sel_handleDismissActionRequest_ forIncomingRequestsOfType:8];
  [(BLTRemoteObject *)self setProtobufAction:sel_handleSupplementaryActionRequest_ forIncomingRequestsOfType:7];
  [(BLTRemoteObject *)self setProtobufAction:sel_handleLaunchSessionActionRequest_ forIncomingRequestsOfType:26];
  [(BLTRemoteObject *)self setProtobufAction:sel_handleDidPlayLightsAndSirensReply_ forIncomingRequestsOfType:9];
  [(BLTRemoteObject *)self setProtobufAction:sel_handleRemoveBulletinRequest_ forIncomingRequestsOfType:10];
  [(BLTRemoteObject *)self setProtobufAction:sel_handleShouldSuppressLightsAndSirensNowRequest_ forIncomingRequestsOfType:16];
  [(BLTRemoteObject *)self setProtobufAction:sel_handleHandlePairedDeviceReady_ forIncomingRequestsOfType:17];

  [(BLTRemoteObject *)self setProtobufAction:sel_handleWillSendLightsAndSirensRequest_ forIncomingRequestsOfType:18];
}

- (void)_handleSyncStateChanged:(id)changed
{
  changedCopy = changed;
  object = [changedCopy object];
  v6 = [object becameTrafficUnrestricted:changedCopy];

  if (v6)
  {
    bulletinSendQueue = self->_bulletinSendQueue;

    [(BLTBulletinSendQueuePassthrough *)bulletinSendQueue sendNow];
  }
}

- (void)addBulletin:(id)bulletin playLightsAndSirens:(BOOL)sirens updateType:(unint64_t)type withTimeout:(id)timeout completion:(id)completion
{
  sirensCopy = sirens;
  v75 = *MEMORY[0x277D85DE8];
  bulletinCopy = bulletin;
  timeoutCopy = timeout;
  completionCopy = completion;
  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSince1970];
  v16 = v15;

  connectionStatus = [(BLTRemoteObject *)self connectionStatus];
  v18 = connectionStatus;
  v19 = connectionStatus - 1;
  if (connectionStatus == 1)
  {
    v20 = +[BLTPairedSyncCoordinator syncState];
    isTrafficRestricted = [v20 isTrafficRestricted];
  }

  else
  {
    isTrafficRestricted = 0;
  }

  v22 = blt_ids_log(connectionStatus);
  v59 = v19;
  v57 = completionCopy;
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    selfCopy = self;
    v23 = v19 < 2;
    typeCopy = type;
    v25 = isTrafficRestricted;
    hasSummary = [bulletinCopy hasSummary];
    hasThreadSummary = [bulletinCopy hasThreadSummary];
    v28 = BLTIDSConnectionStatusString(v18);
    publisherMatchID = [bulletinCopy publisherMatchID];
    [bulletinCopy sectionID];
    v30 = v54 = sirensCopy;
    *buf = 67110658;
    *v64 = hasSummary;
    isTrafficRestricted = v25;
    type = typeCopy;
    *&v64[4] = 1024;
    *&v64[6] = hasThreadSummary;
    v65 = 2080;
    v66 = v28;
    v67 = 1024;
    v68 = isTrafficRestricted;
    v69 = 1024;
    v70 = v23;
    self = selfCopy;
    completionCopy = v57;
    v71 = 2112;
    v72 = publisherMatchID;
    v73 = 2112;
    v74 = v30;
    _os_log_impl(&dword_241FB3000, v22, OS_LOG_TYPE_DEFAULT, "addBulletin hasSummary=%{BOOL}u hasThreadSummary=%{BOOL}u connectionStatus=%s isTrafficRestricted=%{BOOL}u watchNearby=%{BOOL}u matchID=%@ sectionID=%@", buf, 0x38u);

    sirensCopy = v54;
    v19 = v59;
  }

  if ([bulletinCopy hasSummary])
  {
    if (v19 < 2)
    {
      v31 = 1;
    }

    else
    {
      v31 = isTrafficRestricted;
    }

    if (v31)
    {
      v32 = 0;
      v33 = 0;
      goto LABEL_15;
    }

LABEL_14:
    v32 = [bulletinCopy copy];
    [bulletinCopy setSummary:0];
    [bulletinCopy setThreadSummary:0];
    v33 = 1;
    goto LABEL_15;
  }

  hasThreadSummary2 = [bulletinCopy hasThreadSummary];
  v33 = 0;
  v32 = 0;
  if (v19 >= 2 && ((hasThreadSummary2 ^ 1 | isTrafficRestricted) & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_15:
  v56 = v32;
  sectionID = [bulletinCopy sectionID];
  v36 = [sectionID isEqualToString:@"com.apple.MobileSMS"];

  v38 = v36 ^ 1u;
  if (v59 < 2 || ((v36 ^ 1) & 1) != 0)
  {
    v41 = isTrafficRestricted;
    v39 = objc_alloc_init(BLTPBAddBulletinRequest);
    [(BLTPBAddBulletinRequest *)v39 setBulletin:bulletinCopy];
    [(BLTPBAddBulletinRequest *)v39 setShouldPlayLightsAndSirens:sirensCopy];
    [(BLTPBAddBulletinRequest *)v39 setDate:v16];
    [(BLTPBAddBulletinRequest *)v39 setUpdateType:type];
    v60 = v41;
    [(BLTPBAddBulletinRequest *)v39 setTrafficRestricted:v41];
    universalSectionID = [bulletinCopy universalSectionID];
    sectionID2 = universalSectionID;
    if (!universalSectionID)
    {
      sectionID2 = [bulletinCopy sectionID];
    }

    data = [(BLTPBAddBulletinRequest *)v39 data];
    v45 = [data length];
    publisherMatchID2 = [bulletinCopy publisherMatchID];
    BLTAnalyticsLogBulletinSize(sectionID2, v45, publisherMatchID2);

    if (!universalSectionID)
    {
    }

    kdebug_trace();
    v61[0] = MEMORY[0x277D85DD0];
    v61[1] = 3221225472;
    v61[2] = __90__BLTRemoteGizmoClient_addBulletin_playLightsAndSirens_updateType_withTimeout_completion___block_invoke;
    v61[3] = &unk_278D31A20;
    completionCopy = v57;
    v47 = v57;
    v62 = v47;
    v48 = MEMORY[0x245D067A0](v61);
    if (v47)
    {
      v49 = v48;
    }

    else
    {
      v49 = 0;
    }

    v40 = timeoutCopy;
    [(BLTBulletinSendQueuePassthrough *)self->_bulletinSendQueue sendRequest:v39 withTimeout:timeoutCopy isTrafficRestricted:v60 didSend:v49];
  }

  else
  {
    v39 = blt_ids_log(v37);
    if (os_log_type_enabled(&v39->super.super.super, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_241FB3000, &v39->super.super.super, OS_LOG_TYPE_DEFAULT, "skipping add bulletin request for messages, it is not needed due to direct push to watch", buf, 2u);
    }

    v40 = timeoutCopy;
  }

  if (v33)
  {
    selfCopy2 = self;
    v51 = objc_alloc_init(BLTPBIntelligentSummaryBulletinRequest);
    [(BLTPBIntelligentSummaryBulletinRequest *)v51 setBulletin:v56];
    v52 = blt_ids_log([(BLTPBIntelligentSummaryBulletinRequest *)v51 setUpdateType:v38]);
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
    {
      redact = [(PBCodable *)v51 redact];
      *buf = 138412290;
      *v64 = redact;
      _os_log_impl(&dword_241FB3000, v52, OS_LOG_TYPE_DEFAULT, "sending intelligent summary request %@", buf, 0xCu);
    }

    [(BLTBulletinSendQueuePassthrough *)selfCopy2->_bulletinSendQueue sendRequest:v51 withTimeout:&unk_28544B4C0 didSend:0];
  }
}

- (void)addBulletinSummary:(id)summary
{
  summaryCopy = summary;
  v5 = objc_opt_new();
  [v5 setBulletin:summaryCopy];

  [(BLTRemoteObject *)self sendRequest:v5 type:3];
}

- (void)cancelBulletinWithPublisherMatchID:(id)d universalSectionID:(id)iD feed:(unint64_t)feed withTimeout:(id)timeout
{
  timeoutCopy = timeout;
  iDCopy = iD;
  dCopy = d;
  v14 = objc_alloc_init(BLTPBCancelBulletinRequest);
  [(BLTPBCancelBulletinRequest *)v14 setPublisherMatchID:dCopy];

  [(BLTPBCancelBulletinRequest *)v14 setUniversalSectionID:iDCopy];
  [(BLTPBCancelBulletinRequest *)v14 setFeed:feed];
  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSince1970];
  [(BLTPBCancelBulletinRequest *)v14 setDate:?];

  [(BLTRemoteObject *)self sendRequest:v14 type:4 withTimeout:timeoutCopy didSend:0];
}

- (void)removeBulletinWithPublisherBulletinID:(id)d recordID:(id)iD sectionID:(id)sectionID withTimeout:(id)timeout
{
  bulletinSendQueue = self->_bulletinSendQueue;
  timeoutCopy = timeout;
  sectionIDCopy = sectionID;
  iDCopy = iD;
  dCopy = d;
  [(BLTBulletinSendQueuePassthrough *)bulletinSendQueue sendNow];
  v16 = objc_alloc_init(BLTPBRemoveBulletinRequest);
  [(BLTPBRemoveBulletinRequest *)v16 setPublisherBulletinID:dCopy];

  [(BLTPBRemoveBulletinRequest *)v16 setRecordID:iDCopy];
  [(BLTPBRemoveBulletinRequest *)v16 setSectionID:sectionIDCopy];

  v15 = [BLTRemoteRequest remoteRequestWithProtobuf:v16 type:2];
  [v15 setTimeout:timeoutCopy];

  [v15 setNonWaking:1];
  [(BLTRemoteObject *)self sendRequest:v15];
}

- (void)updateBulletinList:(id)list
{
  listCopy = list;
  v9 = objc_alloc_init(BLTPBUpdateBulletinListRequest);
  [(BLTPBUpdateBulletinListRequest *)v9 setBulletinList:listCopy];

  v5 = MEMORY[0x277CCACA8];
  bulletinList = [(BLTPBUpdateBulletinListRequest *)v9 bulletinList];
  sectionBulletinLists = [bulletinList sectionBulletinLists];
  v8 = [v5 stringWithFormat:@"BLTPBUpdateBulletinListRequest %lu sections", objc_msgSend(sectionBulletinLists, "count")];
  [(BLTRemoteObject *)self sendRequest:v9 type:15 withTimeout:0 withDescription:v8 didSend:0];
}

- (void)setLastKnownConnectionStatus:(unint64_t)status
{
  v5.receiver = self;
  v5.super_class = BLTRemoteGizmoClient;
  [(BLTRemoteObject *)&v5 setLastKnownConnectionStatus:?];
  if (status == 1)
  {
    [(BLTRemoteGizmoClient *)self _pingPairedDevice];
  }

  else
  {
    [(BLTRemoteObject *)self setPairedDeviceReady:0];
  }
}

- (void)_pingPairedDeviceWithRetry:(unint64_t)retry
{
  if (retry <= 2 && BLTIsDebugOrInternalBuild(self, a2) && [(BLTRemoteObject *)self lastKnownConnectionStatus]== 1)
  {
    v5 = objc_alloc_init(BLTPBHandlePairedDeviceReady);
    objc_initWeak(&location, self);
    v6 = [BLTRemoteRequest remoteRequestWithProtobuf:v5 type:17];
    [v6 setAllowCloudDelivery:0];
    [v6 setUniqueID:@"pingRequest"];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __51__BLTRemoteGizmoClient__pingPairedDeviceWithRetry___block_invoke;
    v7[3] = &unk_278D31A48;
    objc_copyWeak(v8, &location);
    v8[1] = retry;
    [v6 setDidSend:v7];
    [(BLTRemoteObject *)self sendRequest:v6];
    objc_destroyWeak(v8);

    objc_destroyWeak(&location);
  }
}

void __51__BLTRemoteGizmoClient__pingPairedDeviceWithRetry___block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _pingPairedDeviceWithRetry:*(a1 + 40) + 1];
  }
}

- (void)handleAcknowledgeActionRequest:(id)request
{
  v36 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = [BLTPBHandleAcknowledgeActionRequest alloc];
  data = [requestCopy data];

  v7 = [(BLTPBHandleAcknowledgeActionRequest *)v5 initWithData:data];
  v9 = blt_ids_log(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    redact = [(PBCodable *)v7 redact];
    *buf = 136315394;
    v33 = "[BLTRemoteGizmoClient handleAcknowledgeActionRequest:]";
    v34 = 2112;
    v35 = redact;
    _os_log_impl(&dword_241FB3000, v9, OS_LOG_TYPE_DEFAULT, "Received %s encapsulating %@", buf, 0x16u);
  }

  sectionID = [(BLTPBHandleAcknowledgeActionRequest *)v7 sectionID];
  publisherBulletinID = [(BLTPBHandleAcknowledgeActionRequest *)v7 publisherBulletinID];
  if (publisherBulletinID)
  {
    v13 = [BLTBBBulletinKey bulletinKeyWithSectionID:sectionID publisherMatchID:publisherBulletinID];
  }

  else
  {
    recordID = [(BLTPBHandleAcknowledgeActionRequest *)v7 recordID];
    v13 = [BLTBBBulletinKey bulletinKeyWithSectionID:sectionID publisherMatchID:recordID];
  }

  v30 = v13;

  gizmoLegacyMap = [(BLTRemoteGizmoClient *)self gizmoLegacyMap];
  v29 = [gizmoLegacyMap phonePublisherBulletinIDForGizmoKey:v13];

  gizmoLegacyMap2 = [(BLTRemoteGizmoClient *)self gizmoLegacyMap];
  v17 = [gizmoLegacyMap2 phoneSectionIDForGizmoKey:v13];

  v18 = [BLTActionInfo alloc];
  recordID2 = [(BLTPBHandleAcknowledgeActionRequest *)v7 recordID];
  [(BLTPBHandleAcknowledgeActionRequest *)v7 actionInfo];
  v20 = v7;
  v21 = v31 = v7;
  context = [v21 context];
  actionInfo = [(BLTPBHandleAcknowledgeActionRequest *)v20 actionInfo];
  [actionInfo contextNulls];
  v25 = v24 = self;
  v26 = _dictionaryFromPBData(context, v25);
  v27 = [(BLTActionInfo *)v18 initWithActionType:3 publisherBulletinID:v29 recordID:recordID2 sectionID:v17 context:v26];

  server = [(BLTRemoteGizmoClient *)v24 server];
  [server handleAction:v27];
}

- (void)handleSnoozeActionRequest:(id)request
{
  v36 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = [BLTPBHandleSnoozeActionRequest alloc];
  data = [requestCopy data];

  v7 = [(BLTPBHandleSnoozeActionRequest *)v5 initWithData:data];
  v9 = blt_ids_log(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    redact = [(PBCodable *)v7 redact];
    *buf = 136315394;
    v33 = "[BLTRemoteGizmoClient handleSnoozeActionRequest:]";
    v34 = 2112;
    v35 = redact;
    _os_log_impl(&dword_241FB3000, v9, OS_LOG_TYPE_DEFAULT, "Received %s encapsulating %@", buf, 0x16u);
  }

  sectionID = [(BLTPBHandleSnoozeActionRequest *)v7 sectionID];
  publisherBulletinID = [(BLTPBHandleSnoozeActionRequest *)v7 publisherBulletinID];
  if (publisherBulletinID)
  {
    v13 = [BLTBBBulletinKey bulletinKeyWithSectionID:sectionID publisherMatchID:publisherBulletinID];
  }

  else
  {
    recordID = [(BLTPBHandleSnoozeActionRequest *)v7 recordID];
    v13 = [BLTBBBulletinKey bulletinKeyWithSectionID:sectionID publisherMatchID:recordID];
  }

  v30 = v13;

  gizmoLegacyMap = [(BLTRemoteGizmoClient *)self gizmoLegacyMap];
  v29 = [gizmoLegacyMap phonePublisherBulletinIDForGizmoKey:v13];

  gizmoLegacyMap2 = [(BLTRemoteGizmoClient *)self gizmoLegacyMap];
  v17 = [gizmoLegacyMap2 phoneSectionIDForGizmoKey:v13];

  v18 = [BLTActionInfo alloc];
  recordID2 = [(BLTPBHandleSnoozeActionRequest *)v7 recordID];
  [(BLTPBHandleSnoozeActionRequest *)v7 actionInfo];
  v20 = v7;
  v21 = v31 = v7;
  context = [v21 context];
  actionInfo = [(BLTPBHandleSnoozeActionRequest *)v20 actionInfo];
  [actionInfo contextNulls];
  v25 = v24 = self;
  v26 = _dictionaryFromPBData(context, v25);
  v27 = [(BLTActionInfo *)v18 initWithActionType:6 publisherBulletinID:v29 recordID:recordID2 sectionID:v17 context:v26];

  server = [(BLTRemoteGizmoClient *)v24 server];
  [server handleAction:v27];
}

- (void)handleDismissActionRequest:(id)request
{
  v36 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = [BLTPBHandleDismissActionRequest alloc];
  data = [requestCopy data];

  v7 = [(BLTPBHandleDismissActionRequest *)v5 initWithData:data];
  v9 = blt_ids_log(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    redact = [(PBCodable *)v7 redact];
    *buf = 136315394;
    v33 = "[BLTRemoteGizmoClient handleDismissActionRequest:]";
    v34 = 2112;
    v35 = redact;
    _os_log_impl(&dword_241FB3000, v9, OS_LOG_TYPE_DEFAULT, "Received %s encapsulating %@", buf, 0x16u);
  }

  sectionID = [(BLTPBHandleDismissActionRequest *)v7 sectionID];
  publisherBulletinID = [(BLTPBHandleDismissActionRequest *)v7 publisherBulletinID];
  if (publisherBulletinID)
  {
    v13 = [BLTBBBulletinKey bulletinKeyWithSectionID:sectionID publisherMatchID:publisherBulletinID];
  }

  else
  {
    recordID = [(BLTPBHandleDismissActionRequest *)v7 recordID];
    v13 = [BLTBBBulletinKey bulletinKeyWithSectionID:sectionID publisherMatchID:recordID];
  }

  v30 = v13;

  gizmoLegacyMap = [(BLTRemoteGizmoClient *)self gizmoLegacyMap];
  v29 = [gizmoLegacyMap phonePublisherBulletinIDForGizmoKey:v13];

  gizmoLegacyMap2 = [(BLTRemoteGizmoClient *)self gizmoLegacyMap];
  v17 = [gizmoLegacyMap2 phoneSectionIDForGizmoKey:v13];

  v18 = [BLTActionInfo alloc];
  recordID2 = [(BLTPBHandleDismissActionRequest *)v7 recordID];
  [(BLTPBHandleDismissActionRequest *)v7 actionInfo];
  v20 = v7;
  v21 = v31 = v7;
  context = [v21 context];
  actionInfo = [(BLTPBHandleDismissActionRequest *)v20 actionInfo];
  [actionInfo contextNulls];
  v25 = v24 = self;
  v26 = _dictionaryFromPBData(context, v25);
  v27 = [(BLTActionInfo *)v18 initWithActionType:8 publisherBulletinID:v29 recordID:recordID2 sectionID:v17 context:v26];

  server = [(BLTRemoteGizmoClient *)v24 server];
  [server handleAction:v27];
}

- (void)handleSupplementaryActionRequest:(id)request
{
  v37 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = [BLTPBHandleSupplementaryActionRequest alloc];
  data = [requestCopy data];

  v7 = [(BLTPBHandleSupplementaryActionRequest *)v5 initWithData:data];
  v9 = blt_ids_log(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    redact = [(PBCodable *)v7 redact];
    *buf = 136315394;
    v34 = "[BLTRemoteGizmoClient handleSupplementaryActionRequest:]";
    v35 = 2112;
    v36 = redact;
    _os_log_impl(&dword_241FB3000, v9, OS_LOG_TYPE_DEFAULT, "Received %s encapsulating %@", buf, 0x16u);
  }

  sectionID = [(BLTPBHandleSupplementaryActionRequest *)v7 sectionID];
  publisherBulletinID = [(BLTPBHandleSupplementaryActionRequest *)v7 publisherBulletinID];
  if (publisherBulletinID)
  {
    v13 = [BLTBBBulletinKey bulletinKeyWithSectionID:sectionID publisherMatchID:publisherBulletinID];
  }

  else
  {
    recordID = [(BLTPBHandleSupplementaryActionRequest *)v7 recordID];
    v13 = [BLTBBBulletinKey bulletinKeyWithSectionID:sectionID publisherMatchID:recordID];
  }

  v32 = v13;

  gizmoLegacyMap = [(BLTRemoteGizmoClient *)self gizmoLegacyMap];
  v31 = [gizmoLegacyMap phonePublisherBulletinIDForGizmoKey:v13];

  gizmoLegacyMap2 = [(BLTRemoteGizmoClient *)self gizmoLegacyMap];
  v17 = [gizmoLegacyMap2 phoneSectionIDForGizmoKey:v13];

  v18 = [BLTSupplementaryActionInfo alloc];
  recordID2 = [(BLTPBHandleSupplementaryActionRequest *)v7 recordID];
  [(BLTPBHandleSupplementaryActionRequest *)v7 actionInfo];
  v20 = v7;
  v21 = v30 = v7;
  context = [v21 context];
  actionInfo = [(BLTPBHandleSupplementaryActionRequest *)v20 actionInfo];
  [actionInfo contextNulls];
  v25 = v24 = self;
  v26 = _dictionaryFromPBData(context, v25);
  v27 = [(BLTActionInfo *)v18 initWithActionType:7 publisherBulletinID:v31 recordID:recordID2 sectionID:v17 context:v26];

  identifier = [(BLTPBHandleSupplementaryActionRequest *)v30 identifier];
  [(BLTSupplementaryActionInfo *)v27 setIdentifier:identifier];

  server = [(BLTRemoteGizmoClient *)v24 server];
  [server handleAction:v27];
}

- (void)handleLaunchSessionActionRequest:(id)request
{
  v37 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = [BLTPBHandleLaunchSessionActionRequest alloc];
  data = [requestCopy data];

  v7 = [(BLTPBHandleLaunchSessionActionRequest *)v5 initWithData:data];
  sectionID = [(BLTPBHandleLaunchSessionActionRequest *)v7 sectionID];
  publisherBulletinID = [(BLTPBHandleLaunchSessionActionRequest *)v7 publisherBulletinID];
  if (publisherBulletinID)
  {
    v10 = [BLTBBBulletinKey bulletinKeyWithSectionID:sectionID publisherMatchID:publisherBulletinID];
  }

  else
  {
    recordID = [(BLTPBHandleLaunchSessionActionRequest *)v7 recordID];
    v10 = [BLTBBBulletinKey bulletinKeyWithSectionID:sectionID publisherMatchID:recordID];
  }

  gizmoLegacyMap = [(BLTRemoteGizmoClient *)self gizmoLegacyMap];
  v13 = [gizmoLegacyMap phonePublisherBulletinIDForGizmoKey:v10];

  gizmoLegacyMap2 = [(BLTRemoteGizmoClient *)self gizmoLegacyMap];
  v30 = v10;
  v15 = [gizmoLegacyMap2 phoneSectionIDForGizmoKey:v10];

  v16 = [BLTActionInfo alloc];
  recordID2 = [(BLTPBHandleLaunchSessionActionRequest *)v7 recordID];
  [(BLTPBHandleLaunchSessionActionRequest *)v7 actionInfo];
  v18 = v29 = self;
  context = [v18 context];
  actionInfo = [(BLTPBHandleLaunchSessionActionRequest *)v7 actionInfo];
  contextNulls = [actionInfo contextNulls];
  v22 = _dictionaryFromPBData(context, contextNulls);
  v23 = [(BLTActionInfo *)v16 initWithActionType:11 publisherBulletinID:v13 recordID:recordID2 sectionID:v15 context:v22];

  v25 = blt_ids_log(v24);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    redact = [(PBCodable *)v7 redact];
    server = [(BLTRemoteGizmoClient *)v29 server];
    *buf = 138412802;
    v32 = redact;
    v33 = 2112;
    v34 = v23;
    v35 = 2112;
    v36 = server;
    _os_log_impl(&dword_241FB3000, v25, OS_LOG_TYPE_DEFAULT, "handleLaunchSessionActionRequest: Received request: %@ generated actionInfo: %@ sending to: %@", buf, 0x20u);
  }

  server2 = [(BLTRemoteGizmoClient *)v29 server];
  [server2 handleAction:v23];
}

- (void)handleRemoveBulletinRequest:(id)request
{
  v25 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = [BLTPBRemoveBulletinRequest alloc];
  data = [requestCopy data];

  v7 = [(BLTPBRemoveBulletinRequest *)v5 initWithData:data];
  v9 = blt_ids_log(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    redact = [(PBCodable *)v7 redact];
    v21 = 136315394;
    v22 = "[BLTRemoteGizmoClient handleRemoveBulletinRequest:]";
    v23 = 2112;
    v24 = redact;
    _os_log_impl(&dword_241FB3000, v9, OS_LOG_TYPE_DEFAULT, "Received %s encapsulating %@", &v21, 0x16u);
  }

  sectionID = [(BLTPBRemoveBulletinRequest *)v7 sectionID];
  publisherBulletinID = [(BLTPBRemoveBulletinRequest *)v7 publisherBulletinID];
  if (publisherBulletinID)
  {
    v13 = [BLTBBBulletinKey bulletinKeyWithSectionID:sectionID publisherMatchID:publisherBulletinID];
  }

  else
  {
    recordID = [(BLTPBRemoveBulletinRequest *)v7 recordID];
    v13 = [BLTBBBulletinKey bulletinKeyWithSectionID:sectionID publisherMatchID:recordID];
  }

  gizmoLegacyMap = [(BLTRemoteGizmoClient *)self gizmoLegacyMap];
  v16 = [gizmoLegacyMap phonePublisherBulletinIDForGizmoKey:v13];

  gizmoLegacyMap2 = [(BLTRemoteGizmoClient *)self gizmoLegacyMap];
  v18 = [gizmoLegacyMap2 phoneSectionIDForGizmoKey:v13];

  recordID2 = [(BLTPBRemoveBulletinRequest *)v7 recordID];
  server = [(BLTRemoteGizmoClient *)self server];
  [server removeBulletinWithPublisherBulletinID:v16 recordID:recordID2 sectionID:v18];
}

- (void)handleDidPlayLightsAndSirensReply:(id)reply
{
  v28 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  v5 = [BLTPBHandleDidPlayLightsAndSirensReplyRequest alloc];
  data = [replyCopy data];

  v7 = [(BLTPBHandleDidPlayLightsAndSirensReplyRequest *)v5 initWithData:data];
  v9 = blt_ids_log(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    redact = [(PBCodable *)v7 redact];
    v24 = 136315394;
    v25 = "[BLTRemoteGizmoClient handleDidPlayLightsAndSirensReply:]";
    v26 = 2112;
    v27 = redact;
    _os_log_impl(&dword_241FB3000, v9, OS_LOG_TYPE_DEFAULT, "Received %s encapsulating %@", &v24, 0x16u);
  }

  kdebug_trace();
  didPlayLightsAndSirens = [(BLTPBHandleDidPlayLightsAndSirensReplyRequest *)v7 didPlayLightsAndSirens];
  phoneSectionID = [(BLTPBHandleDidPlayLightsAndSirensReplyRequest *)v7 phoneSectionID];
  publisherMatchID = [(BLTPBHandleDidPlayLightsAndSirensReplyRequest *)v7 publisherMatchID];
  v14 = [BLTBBBulletinKey bulletinKeyWithSectionID:phoneSectionID publisherMatchID:publisherMatchID];

  gizmoLegacyMap = [(BLTRemoteGizmoClient *)self gizmoLegacyMap];
  v16 = [gizmoLegacyMap phonePublisherBulletinIDForGizmoKey:v14];

  gizmoLegacyMap2 = [(BLTRemoteGizmoClient *)self gizmoLegacyMap];
  v18 = [gizmoLegacyMap2 phoneSectionIDForGizmoKey:v14];

  replyToken = [(BLTPBHandleDidPlayLightsAndSirensReplyRequest *)v7 replyToken];
  server = [(BLTRemoteGizmoClient *)self server];
  v21 = MEMORY[0x277CBEAA8];
  [(BLTPBHandleDidPlayLightsAndSirensReplyRequest *)v7 date];
  v22 = [v21 dateWithTimeIntervalSince1970:?];
  date = [MEMORY[0x277CBEAA8] date];
  [server handleDidPlayLightsAndSirens:didPlayLightsAndSirens forBulletin:v16 inPhoneSection:v18 transmissionDate:v22 receptionDate:date replyToken:replyToken];
}

- (void)handleHandlePairedDeviceReady:(id)ready
{
  v15 = *MEMORY[0x277D85DE8];
  readyCopy = ready;
  v5 = [BLTPBHandlePairedDeviceReady alloc];
  data = [readyCopy data];

  v7 = [(BLTPBHandlePairedDeviceReady *)v5 initWithData:data];
  v9 = blt_ids_log(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    redact = [(PBCodable *)v7 redact];
    v11 = 136315394;
    v12 = "[BLTRemoteGizmoClient handleHandlePairedDeviceReady:]";
    v13 = 2112;
    v14 = redact;
    _os_log_impl(&dword_241FB3000, v9, OS_LOG_TYPE_DEFAULT, "Received %s encapsulating %@", &v11, 0x16u);
  }

  if ([(BLTRemoteObject *)self lastKnownConnectionStatus]== 1)
  {
    [(BLTRemoteObject *)self setPairedDeviceReady:1];
  }
}

- (void)handleShouldSuppressLightsAndSirensNowRequest:(id)request
{
  v18 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = [BLTPBShouldSuppressLightsAndSirensNowRequest alloc];
  data = [requestCopy data];
  v7 = [(BLTPBShouldSuppressLightsAndSirensNowRequest *)v5 initWithData:data];

  v9 = blt_ids_log(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    redact = [(PBCodable *)v7 redact];
    *buf = 136315394;
    v15 = "[BLTRemoteGizmoClient handleShouldSuppressLightsAndSirensNowRequest:]";
    v16 = 2112;
    v17 = redact;
    _os_log_impl(&dword_241FB3000, v9, OS_LOG_TYPE_DEFAULT, "Received %s encapsulating %@", buf, 0x16u);
  }

  server = [(BLTRemoteGizmoClient *)self server];
  shouldSuppressLightsAndSirensNow = [server shouldSuppressLightsAndSirensNow];

  v13 = objc_alloc_init(BLTPBShouldSuppressLightsAndSirensNowResponse);
  [(BLTPBShouldSuppressLightsAndSirensNowResponse *)v13 setShouldSuppress:shouldSuppressLightsAndSirensNow];
  [(BLTRemoteObject *)self sendResponse:v13 type:16 withRequest:requestCopy withTimeout:0 withDescription:0 onlyOneFor:0 didSend:0];
}

- (void)handleWillSendLightsAndSirensRequest:(id)request
{
  v32 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = [BLTPBWillSendLightsAndSirensRequest alloc];
  data = [requestCopy data];
  v7 = [(BLTPBWillSendLightsAndSirensRequest *)v5 initWithData:data];

  v9 = blt_ids_log(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    redact = [(PBCodable *)v7 redact];
    *buf = 136315394;
    v29 = "[BLTRemoteGizmoClient handleWillSendLightsAndSirensRequest:]";
    v30 = 2112;
    v31 = redact;
    _os_log_impl(&dword_241FB3000, v9, OS_LOG_TYPE_DEFAULT, "Received %s encapsulating %@", buf, 0x16u);
  }

  sectionID = [(BLTPBWillSendLightsAndSirensRequest *)v7 sectionID];
  publisherBulletinID = [(BLTPBWillSendLightsAndSirensRequest *)v7 publisherBulletinID];
  if (publisherBulletinID)
  {
    v13 = [BLTBBBulletinKey bulletinKeyWithSectionID:sectionID publisherMatchID:publisherBulletinID];
  }

  else
  {
    recordID = [(BLTPBWillSendLightsAndSirensRequest *)v7 recordID];
    v13 = [BLTBBBulletinKey bulletinKeyWithSectionID:sectionID publisherMatchID:recordID];
  }

  gizmoLegacyMap = [(BLTRemoteGizmoClient *)self gizmoLegacyMap];
  v16 = [gizmoLegacyMap phonePublisherBulletinIDForGizmoKey:v13];

  gizmoLegacyMap2 = [(BLTRemoteGizmoClient *)self gizmoLegacyMap];
  v18 = [gizmoLegacyMap2 phoneSectionIDForGizmoKey:v13];

  server = [(BLTRemoteGizmoClient *)self server];
  recordID2 = [(BLTPBWillSendLightsAndSirensRequest *)v7 recordID];
  systemApp = [(BLTPBWillSendLightsAndSirensRequest *)v7 systemApp];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __61__BLTRemoteGizmoClient_handleWillSendLightsAndSirensRequest___block_invoke;
  v24[3] = &unk_278D31A70;
  v25 = v7;
  selfCopy = self;
  v27 = requestCopy;
  v22 = requestCopy;
  v23 = v7;
  [server willSendLightsAndSirensWithPublisherBulletinID:v16 recordID:recordID2 inPhoneSection:v18 systemApp:systemApp completion:v24];
}

void __61__BLTRemoteGizmoClient_handleWillSendLightsAndSirensRequest___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_alloc_init(BLTPBWillSendLightsAndSirensResponse);
  [(BLTPBWillSendLightsAndSirensResponse *)v6 setWillSend:a2];
  if ([*(a1 + 32) hasSystemApp])
  {
    [(BLTPBWillSendLightsAndSirensResponse *)v6 setAdditionalWait:a3];
  }

  [*(a1 + 40) sendResponse:v6 type:18 withRequest:*(a1 + 48) withTimeout:0 withDescription:0 onlyOneFor:0 didSend:0];
}

- (BLTCompanionServer)server
{
  WeakRetained = objc_loadWeakRetained(&self->_server);

  return WeakRetained;
}

@end