@interface BLTSettingSyncServer
- (BLTSettingSyncServer)init;
- (BLTSettingSyncingClient)delegate;
- (void)handleRemoveSectionRequest:(id)request;
- (void)handleSetNotificationsAlertLevelRequest:(id)request;
- (void)handleSetNotificationsCriticalAlertRequest:(id)request;
- (void)handleSetNotificationsGroupingRequest:(id)request;
- (void)handleSetNotificationsSoundRequest:(id)request;
- (void)handleSetRemoteGlobalSettingsRequest:(id)request;
- (void)handleSetRemoteGlobalSpokenSettingEnabledRequest:(id)request;
- (void)handleSetSectionInfoRequest:(id)request;
- (void)handleSetSectionSubtypeParametersIconRequest:(id)request;
- (void)handleSetSectionSubtypeParametersIconResponse:(id)response;
- (void)registerProtobufHandlers;
- (void)remoteGlobalSettingsSyncServer:(id)server sendChangeset:(id)changeset;
- (void)removeSectionInfoSentCacheForSectionID:(id)d;
- (void)removeSectionWithSectionID:(id)d sent:(id)sent;
- (void)sendRemoteGlobalSpokenSettingEnabled:(BOOL)enabled date:(id)date;
- (void)sendSpooledRequestsNowWithSent:(id)sent withAcknowledgement:(id)acknowledgement;
- (void)setNotificationsCriticalAlertEnabled:(int)enabled sectionID:(id)d;
- (void)setNotificationsGrouping:(int)grouping sectionID:(id)d spoolToFile:(BOOL)file;
- (void)setNotificationsLevel:(unint64_t)level sectionID:(id)d mirror:(BOOL)mirror spoolToFile:(BOOL)file;
- (void)setNotificationsSoundEnabled:(int)enabled sectionID:(id)d;
- (void)setSectionInfo:(id)info completion:(id)completion;
- (void)setSectionInfo:(id)info withSent:(id)sent withAcknowledgement:(id)acknowledgement keypaths:(id)keypaths spoolToFile:(BOOL)file;
- (void)setSectionSubtypeParametersIcon:(id)icon forSectionID:(id)d forSubtypeID:(int64_t)iD;
- (void)setSectionSubtypeParametersIcon:(id)icon forSectionID:(id)d forSubtypeID:(int64_t)iD withQueue:(id)queue withSent:(id)sent withAcknowledgement:(id)acknowledgement spoolToFile:(BOOL)file;
@end

@implementation BLTSettingSyncServer

- (BLTSettingSyncServer)init
{
  v2 = [(BLTRemoteObject *)self initWithServiceName:@"com.apple.private.alloy.bulletindistributor.settings" idsQueueName:"com.apple.bulletindistributor.settingsync"];
  if (v2)
  {
    activePairedDeviceSupportsFileSettingSync = [MEMORY[0x277D2BCC8] activePairedDeviceSupportsFileSettingSync];
    v4 = off_278D30E28;
    if (!activePairedDeviceSupportsFileSettingSync)
    {
      v4 = off_278D30E30;
    }

    v5 = objc_alloc_init(*v4);
    settingSendSerializer = v2->_settingSendSerializer;
    v2->_settingSendSerializer = v5;

    [(BLTSettingsSendSerializerPassthrough *)v2->_settingSendSerializer setDelegate:v2];
    mEMORY[0x277D2BCF8] = [MEMORY[0x277D2BCF8] sharedInstance];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __28__BLTSettingSyncServer_init__block_invoke;
    v9[3] = &unk_278D317C0;
    v10 = v2;
    [mEMORY[0x277D2BCF8] waitForPairingStorePathPairingID:v9];
  }

  return v2;
}

void __28__BLTSettingSyncServer_init__block_invoke(uint64_t a1, void *a2)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v3 = [a2 stringByAppendingPathComponent:@"BulletinDistributor"];
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [v4 fileExistsAtPath:v3];

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v7 = [MEMORY[0x277CCAA00] defaultManager];
    v21 = *MEMORY[0x277CCA1B0];
    v22[0] = *MEMORY[0x277CCA1B8];
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    v20 = 0;
    v9 = [v7 createDirectoryAtPath:v3 withIntermediateDirectories:1 attributes:v8 error:&v20];
    v6 = v20;

    if ((v9 & 1) == 0)
    {
      v11 = blt_settings_log(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __28__BLTSettingSyncServer_init__block_invoke_cold_1(v3, v11);
      }
    }
  }

  v12 = [v3 stringByAppendingPathComponent:@"PreviouslySentSettingSyncMessageStore.plist"];
  v13 = [[BLTPreviouslySentMessageStore alloc] initWithMessageStorePath:v12];
  v14 = *(a1 + 32);
  v15 = *(v14 + 168);
  *(v14 + 168) = v13;

  v16 = [v3 stringByAppendingPathComponent:@"PreviouslySentSectionSubtypeParameterIconsMessageStore.plist"];

  v17 = [[BLTPreviouslySentMessageStore alloc] initWithMessageStorePath:v16];
  v18 = *(a1 + 32);
  v19 = *(v18 + 176);
  *(v18 + 176) = v17;
}

- (void)registerProtobufHandlers
{
  [(BLTRemoteObject *)self setProtobufAction:sel_handleSetSectionInfoRequest_ forIncomingRequestsOfType:13];
  [(BLTRemoteObject *)self setProtobufAction:sel_handleSetSectionSubtypeParametersIconRequest_ forIncomingRequestsOfType:14];
  [(BLTRemoteObject *)self setProtobufAction:sel_handleRemoveSectionRequest_ forIncomingRequestsOfType:19];
  [(BLTRemoteObject *)self setProtobufAction:sel_handleSetNotificationsAlertLevelRequest_ forIncomingRequestsOfType:20];
  [(BLTRemoteObject *)self setProtobufAction:sel_handleSetNotificationsGroupingRequest_ forIncomingRequestsOfType:21];
  [(BLTRemoteObject *)self setProtobufAction:sel_handleSetNotificationsSoundRequest_ forIncomingRequestsOfType:22];
  [(BLTRemoteObject *)self setProtobufAction:sel_handleSetNotificationsCriticalAlertRequest_ forIncomingRequestsOfType:23];
  [(BLTRemoteObject *)self setProtobufAction:sel_handleSetRemoteGlobalSpokenSettingEnabledRequest_ forIncomingRequestsOfType:24];
  [(BLTRemoteObject *)self setProtobufAction:sel_handleSetRemoteGlobalSettingsRequest_ forIncomingRequestsOfType:25];
  [(BLTRemoteObject *)self setProtobufAction:sel_handleSetSectionInfoResponse_ forIncomingResponsesOfType:13];

  [(BLTRemoteObject *)self setProtobufAction:sel_handleSetSectionSubtypeParametersIconResponse_ forIncomingResponsesOfType:14];
}

- (void)setSectionInfo:(id)info completion:(id)completion
{
  infoCopy = info;
  completionCopy = completion;
  __assert_rtn("[BLTSettingSyncServer setSectionInfo:completion:]", "BLTSettingSyncServer.m", 144, "0");
}

- (void)setSectionInfo:(id)info withSent:(id)sent withAcknowledgement:(id)acknowledgement keypaths:(id)keypaths spoolToFile:(BOOL)file
{
  HIDWORD(v41) = file;
  location[2] = *MEMORY[0x277D85DE8];
  infoCopy = info;
  sentCopy = sent;
  acknowledgementCopy = acknowledgement;
  keypathsCopy = keypaths;
  context = objc_autoreleasePoolPush();
  v12 = objc_alloc_init(BLTPBSetSectionInfoRequest);
  [(BLTPBSetSectionInfoRequest *)v12 setSectionInfo:infoCopy];
  v13 = v12;
  icon = [infoCopy icon];
  data = [icon data];
  sectionID = [infoCopy sectionID];
  v51 = [sectionID stringByAppendingString:@".setSectionInfoIconsOnly"];

  v50 = [(BLTPreviouslySentMessageStore *)self->_sectionInfoPreviouslySentMessageStore messageDigestForUnsentMessage:data messageKey:v51];
  v15 = objc_alloc_init(BLTPBSetSectionInfoRequest);
  v16 = infoCopy;
  v17 = v16;
  v18 = v16;
  if (icon)
  {
    v18 = [v16 copy];

    [v18 setIcon:0];
    [v18 setIconsStripped:1];
  }

  v43 = v17;
  [(BLTPBSetSectionInfoRequest *)v15 setSectionInfo:v18];
  sectionInfo = [(BLTPBSetSectionInfoRequest *)v13 sectionInfo];
  sectionID2 = [sectionInfo sectionID];
  v21 = [sectionID2 stringByAppendingString:@".setSectionInfoWithoutIcons"];

  sectionInfoPreviouslySentMessageStore = self->_sectionInfoPreviouslySentMessageStore;
  data2 = [(BLTPBSetSectionInfoRequest *)v15 data];
  v46 = [(BLTPreviouslySentMessageStore *)sectionInfoPreviouslySentMessageStore messageDigestForUnsentMessage:data2 messageKey:v21];

  if (v50)
  {
    if (v13)
    {
      v25 = MEMORY[0x277CCACA8];
      sectionInfo2 = [(BLTPBSetSectionInfoRequest *)v13 sectionInfo];
      sectionID3 = [sectionInfo2 sectionID];
      v42 = [v25 stringWithFormat:@"setSectionInfoWithIcons:%@", sectionID3];

      v28 = MEMORY[0x277CCACA8];
      sectionInfo3 = [(BLTPBSetSectionInfoRequest *)v13 sectionInfo];
      sectionID4 = [sectionInfo3 sectionID];
      v31 = [v28 stringWithFormat:@"%@.setSectionInfo.withIcons", sectionID4];
      v32 = v13;
LABEL_9:

      objc_initWeak(location, self);
      v55[0] = MEMORY[0x277D85DD0];
      v55[1] = 3221225472;
      v55[2] = __89__BLTSettingSyncServer_setSectionInfo_withSent_withAcknowledgement_keypaths_spoolToFile___block_invoke;
      v55[3] = &unk_278D33040;
      objc_copyWeak(&v61, location);
      v56 = v50;
      v57 = v51;
      v58 = v46;
      v59 = v21;
      v60 = acknowledgementCopy;
      v37 = MEMORY[0x245D067A0](v55);
      settingSendSerializer = self->_settingSendSerializer;
      v39 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D18828]];
      v53[0] = MEMORY[0x277D85DD0];
      v53[1] = 3221225472;
      v53[2] = __89__BLTSettingSyncServer_setSectionInfo_withSent_withAcknowledgement_keypaths_spoolToFile___block_invoke_2;
      v53[3] = &unk_278D31A20;
      v54 = sentCopy;
      LOBYTE(v41) = BYTE4(v41);
      [(BLTSettingsSendSerializerPassthrough *)settingSendSerializer sendRequest:v32 type:13 withTimeout:v39 withDescription:v42 onlyOneFor:v31 didSend:v53 andResponse:v37 spoolToFile:v41];

      objc_destroyWeak(&v61);
      objc_destroyWeak(location);

      goto LABEL_18;
    }
  }

  else if (v46)
  {
    v32 = v15;

    if (v32)
    {
      v33 = MEMORY[0x277CCACA8];
      sectionInfo4 = [(BLTPBSetSectionInfoRequest *)v13 sectionInfo];
      sectionID5 = [sectionInfo4 sectionID];
      v42 = [v33 stringWithFormat:@"setSectionInfoWithoutIcons:%@", sectionID5];

      v36 = MEMORY[0x277CCACA8];
      sectionInfo3 = [(BLTPBSetSectionInfoRequest *)v13 sectionInfo];
      sectionID4 = [sectionInfo3 sectionID];
      v31 = [v36 stringWithFormat:@"%@.setSectionInfo.withoutIcons", sectionID4];
      goto LABEL_9;
    }
  }

  else
  {
  }

  v40 = blt_settings_log(v24);
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(location[0]) = 138412290;
    *(location + 4) = v21;
    _os_log_impl(&dword_241FB3000, v40, OS_LOG_TYPE_DEFAULT, "Not sending %@ because already sent", location, 0xCu);
  }

  if (sentCopy)
  {
    (*(sentCopy + 2))(sentCopy, 1, 0);
  }

  if (acknowledgementCopy)
  {
    acknowledgementCopy[2]();
  }

  v32 = 0;
LABEL_18:

  objc_autoreleasePoolPop(context);
}

uint64_t __89__BLTSettingSyncServer_setSectionInfo_withSent_withAcknowledgement_keypaths_spoolToFile___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v10 = v3;
  if (v3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 72));
    v5 = WeakRetained;
    if (*(a1 + 32))
    {
      v6 = [WeakRetained sectionInfoPreviouslySentMessageStore];
      [v6 recordMessageDigestAsPreviouslySent:*(a1 + 32) messageKey:*(a1 + 40)];
    }

    if (*(a1 + 48))
    {
      v7 = [v5 sectionInfoPreviouslySentMessageStore];
      [v7 recordMessageDigestAsPreviouslySent:*(a1 + 48) messageKey:*(a1 + 56)];
    }

    v3 = v10;
  }

  v8 = *(a1 + 64);
  if (v8)
  {
    v8 = (*(v8 + 16))(v8, v3 != 0);
    v3 = v10;
  }

  return MEMORY[0x2821F96F8](v8, v3);
}

uint64_t __89__BLTSettingSyncServer_setSectionInfo_withSent_withAcknowledgement_keypaths_spoolToFile___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)setSectionSubtypeParametersIcon:(id)icon forSectionID:(id)d forSubtypeID:(int64_t)iD
{
  iconCopy = icon;
  dCopy = d;
  __assert_rtn("[BLTSettingSyncServer setSectionSubtypeParametersIcon:forSectionID:forSubtypeID:]", "BLTSettingSyncServer.m", 258, "0");
}

- (void)setSectionSubtypeParametersIcon:(id)icon forSectionID:(id)d forSubtypeID:(int64_t)iD withQueue:(id)queue withSent:(id)sent withAcknowledgement:(id)acknowledgement spoolToFile:(BOOL)file
{
  location[2] = *MEMORY[0x277D85DE8];
  iconCopy = icon;
  dCopy = d;
  queue = queue;
  sentCopy = sent;
  acknowledgementCopy = acknowledgement;
  context = objc_autoreleasePoolPush();
  v17 = objc_alloc_init(BLTPBSetSectionSubtypeParametersIconRequest);
  v32 = dCopy;
  [(BLTPBSetSectionSubtypeParametersIconRequest *)v17 setSectionID:dCopy];
  if (iD != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(BLTPBSetSectionSubtypeParametersIconRequest *)v17 setSubtypeID:iD];
  }

  [(BLTPBSetSectionSubtypeParametersIconRequest *)v17 setDefaultSubtype:iD == 0x7FFFFFFFFFFFFFFFLL];
  v30 = iconCopy;
  [(BLTPBSetSectionSubtypeParametersIconRequest *)v17 setIcon:iconCopy];
  data = [(BLTPBSetSectionSubtypeParametersIconRequest *)v17 data];
  v18 = MEMORY[0x277CCACA8];
  if (iD == 0x7FFFFFFFFFFFFFFFLL)
  {
    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", dCopy, @"default"];
  }

  else
  {
    v20 = [MEMORY[0x277CCABB0] numberWithInteger:iD];
    v19 = [v18 stringWithFormat:@"%@.%@", dCopy, v20];
  }

  v21 = [(BLTPreviouslySentMessageStore *)self->_sectionSubtypeParametersIconsPreviouslySentMessageStore messageDigestForUnsentMessage:data messageKey:v19];
  if (v21)
  {
    v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"setSectionSubtypeParametersIcon:%@", v19];
    v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.setSectionSubtypeParametersIcon", v19];
    objc_initWeak(location, self);
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __133__BLTSettingSyncServer_setSectionSubtypeParametersIcon_forSectionID_forSubtypeID_withQueue_withSent_withAcknowledgement_spoolToFile___block_invoke;
    v44[3] = &unk_278D33068;
    objc_copyWeak(&v49, location);
    v45 = v21;
    v46 = v19;
    v48 = acknowledgementCopy;
    queueCopy = queue;
    v47 = queueCopy;
    v25 = MEMORY[0x245D067A0](v44);
    settingSendSerializer = self->_settingSendSerializer;
    v27 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D18828]];
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __133__BLTSettingSyncServer_setSectionSubtypeParametersIcon_forSectionID_forSubtypeID_withQueue_withSent_withAcknowledgement_spoolToFile___block_invoke_3;
    v41[3] = &unk_278D33090;
    v43 = sentCopy;
    v42 = queueCopy;
    LOBYTE(v29) = file;
    [(BLTSettingsSendSerializerPassthrough *)settingSendSerializer sendRequest:v17 type:14 withTimeout:v27 withDescription:v22 onlyOneFor:v23 didSend:v41 andResponse:v25 spoolToFile:v29];

    objc_destroyWeak(&v49);
    objc_destroyWeak(location);

LABEL_14:
    goto LABEL_15;
  }

  v28 = blt_settings_log(0);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
  {
    LODWORD(location[0]) = 138412290;
    *(location + 4) = v19;
    _os_log_impl(&dword_241FB3000, v28, OS_LOG_TYPE_INFO, "Not sending %@ because already sent", location, 0xCu);
  }

  if (sentCopy)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __133__BLTSettingSyncServer_setSectionSubtypeParametersIcon_forSectionID_forSubtypeID_withQueue_withSent_withAcknowledgement_spoolToFile___block_invoke_68;
    block[3] = &unk_278D314F0;
    v40 = sentCopy;
    dispatch_async(queue, block);
  }

  if (acknowledgementCopy)
  {
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __133__BLTSettingSyncServer_setSectionSubtypeParametersIcon_forSectionID_forSubtypeID_withQueue_withSent_withAcknowledgement_spoolToFile___block_invoke_2_69;
    v37[3] = &unk_278D314F0;
    v38 = acknowledgementCopy;
    dispatch_async(queue, v37);
    v22 = v38;
    goto LABEL_14;
  }

LABEL_15:

  objc_autoreleasePoolPop(context);
}

void __133__BLTSettingSyncServer_setSectionSubtypeParametersIcon_forSectionID_forSubtypeID_withQueue_withSent_withAcknowledgement_spoolToFile___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v5 = WeakRetained;
  if (v3)
  {
    v6 = [WeakRetained sectionSubtypeParametersIconsPreviouslySentMessageStore];
    [v6 recordMessageDigestAsPreviouslySent:*(a1 + 32) messageKey:*(a1 + 40)];
  }

  v7 = *(a1 + 56);
  if (v7)
  {
    v8 = *(a1 + 48);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __133__BLTSettingSyncServer_setSectionSubtypeParametersIcon_forSectionID_forSubtypeID_withQueue_withSent_withAcknowledgement_spoolToFile___block_invoke_2;
    v9[3] = &unk_278D31478;
    v11 = v7;
    v10 = v3;
    dispatch_async(v8, v9);
  }
}

void __133__BLTSettingSyncServer_setSectionSubtypeParametersIcon_forSectionID_forSubtypeID_withQueue_withSent_withAcknowledgement_spoolToFile___block_invoke_3(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = *(a1 + 32);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __133__BLTSettingSyncServer_setSectionSubtypeParametersIcon_forSectionID_forSubtypeID_withQueue_withSent_withAcknowledgement_spoolToFile___block_invoke_4;
    block[3] = &unk_278D314C8;
    v10 = v6;
    v11 = a2;
    v9 = v5;
    dispatch_async(v7, block);
  }
}

- (void)sendSpooledRequestsNowWithSent:(id)sent withAcknowledgement:(id)acknowledgement
{
  settingSendSerializer = self->_settingSendSerializer;
  v6 = MEMORY[0x277CCABB0];
  v7 = *MEMORY[0x277D18828];
  acknowledgementCopy = acknowledgement;
  sentCopy = sent;
  v10 = [v6 numberWithDouble:v7];
  [(BLTSettingsSendSerializerPassthrough *)settingSendSerializer sendNowWithSent:sentCopy withAcknowledgement:acknowledgementCopy withTimeout:v10];
}

- (void)removeSectionInfoSentCacheForSectionID:(id)d
{
  v4 = [d stringByAppendingString:@".setSectionInfoWithoutIcons"];
  [(BLTPreviouslySentMessageStore *)self->_sectionInfoPreviouslySentMessageStore removeDigestForKey:v4];
}

- (void)removeSectionWithSectionID:(id)d sent:(id)sent
{
  sentCopy = sent;
  dCopy = d;
  v16 = objc_alloc_init(BLTPBRemoveSectionRequest);
  [(BLTPBRemoveSectionRequest *)v16 setSectionID:dCopy];
  sectionInfoPreviouslySentMessageStore = [(BLTSettingSyncServer *)self sectionInfoPreviouslySentMessageStore];
  v9 = [dCopy stringByAppendingString:@".setSectionInfoIconsOnly"];
  [sectionInfoPreviouslySentMessageStore removeDigestForKey:v9];

  sectionInfoPreviouslySentMessageStore2 = [(BLTSettingSyncServer *)self sectionInfoPreviouslySentMessageStore];
  v11 = [dCopy stringByAppendingString:@".setSectionInfoWithoutIcons"];
  [sectionInfoPreviouslySentMessageStore2 removeDigestForKey:v11];

  settingSendSerializer = self->_settingSendSerializer;
  v13 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D18828]];
  dCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.removeSectionRequest", dCopy];

  LOBYTE(v15) = 0;
  [(BLTSettingsSendSerializerPassthrough *)settingSendSerializer sendRequest:v16 type:19 withTimeout:v13 withDescription:0 onlyOneFor:dCopy didSend:sentCopy andResponse:0 spoolToFile:v15];
}

- (void)setNotificationsLevel:(unint64_t)level sectionID:(id)d mirror:(BOOL)mirror spoolToFile:(BOOL)file
{
  mirrorCopy = mirror;
  dCopy = d;
  v11 = objc_alloc_init(BLTPBSetNotificationsAlertLevelRequest);
  v17 = v11;
  if (level - 1 < 3)
  {
    levelCopy = level;
  }

  else
  {
    levelCopy = 0;
  }

  [(BLTPBSetNotificationsAlertLevelRequest *)v11 setLevel:levelCopy];
  [(BLTPBSetNotificationsAlertLevelRequest *)v17 setSectionID:dCopy];
  [(BLTPBSetNotificationsAlertLevelRequest *)v17 setMirror:mirrorCopy];
  settingSendSerializer = self->_settingSendSerializer;
  v14 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D18828]];
  dCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.setnotificationsalertlevel", dCopy];

  LOBYTE(v16) = file;
  [(BLTSettingsSendSerializerPassthrough *)settingSendSerializer sendRequest:v17 type:20 withTimeout:v14 withDescription:0 onlyOneFor:dCopy didSend:0 andResponse:0 spoolToFile:v16];
}

- (void)setNotificationsGrouping:(int)grouping sectionID:(id)d spoolToFile:(BOOL)file
{
  v6 = *&grouping;
  dCopy = d;
  v13 = objc_alloc_init(BLTPBSetNotificationsGroupingRequest);
  [(BLTPBSetNotificationsGroupingRequest *)v13 setGrouping:v6];
  [(BLTPBSetNotificationsGroupingRequest *)v13 setSectionID:dCopy];
  settingSendSerializer = self->_settingSendSerializer;
  v10 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D18828]];
  dCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.setnotificationsgrouping", dCopy];

  LOBYTE(v12) = file;
  [(BLTSettingsSendSerializerPassthrough *)settingSendSerializer sendRequest:v13 type:21 withTimeout:v10 withDescription:0 onlyOneFor:dCopy didSend:0 andResponse:0 spoolToFile:v12];
}

- (void)setNotificationsSoundEnabled:(int)enabled sectionID:(id)d
{
  v4 = *&enabled;
  dCopy = d;
  v11 = objc_alloc_init(BLTPBSetNotificationsSoundRequest);
  [(BLTPBSetNotificationsSoundRequest *)v11 setSound:v4];
  [(BLTPBSetNotificationsSoundRequest *)v11 setSectionID:dCopy];
  settingSendSerializer = self->_settingSendSerializer;
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D18828]];
  dCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.setnotificationssound", dCopy];

  LOBYTE(v10) = 0;
  [(BLTSettingsSendSerializerPassthrough *)settingSendSerializer sendRequest:v11 type:22 withTimeout:v8 withDescription:0 onlyOneFor:dCopy didSend:0 andResponse:0 spoolToFile:v10];
}

- (void)setNotificationsCriticalAlertEnabled:(int)enabled sectionID:(id)d
{
  v4 = *&enabled;
  dCopy = d;
  v11 = objc_alloc_init(BLTPBSetNotificationsCriticalAlertRequest);
  [(BLTPBSetNotificationsCriticalAlertRequest *)v11 setCriticalAlertSetting:v4];
  [(BLTPBSetNotificationsCriticalAlertRequest *)v11 setSectionID:dCopy];
  settingSendSerializer = self->_settingSendSerializer;
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D18828]];
  dCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.setnotificationscriticalalert", dCopy];

  LOBYTE(v10) = 0;
  [(BLTSettingsSendSerializerPassthrough *)settingSendSerializer sendRequest:v11 type:23 withTimeout:v8 withDescription:0 onlyOneFor:dCopy didSend:0 andResponse:0 spoolToFile:v10];
}

- (void)sendRemoteGlobalSpokenSettingEnabled:(BOOL)enabled date:(id)date
{
  enabledCopy = enabled;
  dateCopy = date;
  v12 = objc_alloc_init(BLTPBSetRemoteGlobalSpokenSettingEnabledRequest);
  [(BLTPBSetRemoteGlobalSpokenSettingEnabledRequest *)v12 setSettingEnabled:enabledCopy];
  [dateCopy timeIntervalSince1970];
  v8 = v7;

  [(BLTPBSetRemoteGlobalSpokenSettingEnabledRequest *)v12 setSettingDate:v8];
  settingSendSerializer = self->_settingSendSerializer;
  v10 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D18828]];
  LOBYTE(v11) = 0;
  [(BLTSettingsSendSerializerPassthrough *)settingSendSerializer sendRequest:v12 type:24 withTimeout:v10 withDescription:0 onlyOneFor:@"remoteGlobalSpokenSettingEnabled" didSend:0 andResponse:0 spoolToFile:v11];
}

- (void)remoteGlobalSettingsSyncServer:(id)server sendChangeset:(id)changeset
{
  v21 = *MEMORY[0x277D85DE8];
  serverCopy = server;
  changesetCopy = changeset;
  blt_protobuf = [changesetCopy blt_protobuf];
  v9 = blt_global_settings_sync_log(blt_protobuf);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    selfCopy = self;
    v17 = 2112;
    v18 = serverCopy;
    v19 = 2112;
    v20 = changesetCopy;
    _os_log_impl(&dword_241FB3000, v9, OS_LOG_TYPE_DEFAULT, "%@ remoteGlobalSettingsSyncServer: %@ sendChangeset: %@", buf, 0x20u);
  }

  settingSendSerializer = self->_settingSendSerializer;
  v11 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D18828]];
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  LOBYTE(v14) = 0;
  [(BLTSettingsSendSerializerPassthrough *)settingSendSerializer sendRequest:blt_protobuf type:25 withTimeout:v11 withDescription:0 onlyOneFor:v13 didSend:0 andResponse:0 spoolToFile:v14];
}

- (void)handleSetSectionInfoRequest:(id)request
{
  v24 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = [BLTPBSetSectionInfoRequest alloc];
  data = [requestCopy data];
  v7 = [(BLTPBSetSectionInfoRequest *)v5 initWithData:data];

  v9 = blt_settings_log(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    *buf = 136315394;
    v21 = "[BLTSettingSyncServer handleSetSectionInfoRequest:]";
    v22 = 2112;
    v23 = v11;
    _os_log_impl(&dword_241FB3000, v9, OS_LOG_TYPE_DEFAULT, "Received %s encapsulating %@", buf, 0x16u);
  }

  if ([(BLTPBSetSectionInfoRequest *)v7 keypathsCount])
  {
    v12 = MEMORY[0x277CBEB98];
    keypaths = [(BLTPBSetSectionInfoRequest *)v7 keypaths];
    v14 = [v12 setWithArray:keypaths];
  }

  else
  {
    v14 = 0;
  }

  delegate = [(BLTSettingSyncServer *)self delegate];
  sectionInfo = [(BLTPBSetSectionInfoRequest *)v7 sectionInfo];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __52__BLTSettingSyncServer_handleSetSectionInfoRequest___block_invoke;
  v18[3] = &unk_278D31400;
  v18[4] = self;
  v19 = requestCopy;
  v17 = requestCopy;
  [delegate setSectionInfo:sectionInfo keypaths:v14 completion:v18];
}

void __52__BLTSettingSyncServer_handleSetSectionInfoRequest___block_invoke(uint64_t a1)
{
  v5 = objc_alloc_init(BLTPBSetSectionInfoResponse);
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D18828]];
  [v3 sendResponse:v5 type:13 withRequest:v2 withTimeout:v4 withDescription:@"sectionInfo response" onlyOneFor:0 didSend:0];
}

- (void)handleSetSectionSubtypeParametersIconRequest:(id)request
{
  v22 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = [BLTPBSetSectionSubtypeParametersIconRequest alloc];
  data = [requestCopy data];
  v7 = [(BLTPBSetSectionSubtypeParametersIconRequest *)v5 initWithData:data];

  v9 = blt_settings_log(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    *buf = 136315394;
    v19 = "[BLTSettingSyncServer handleSetSectionSubtypeParametersIconRequest:]";
    v20 = 2112;
    v21 = v11;
    _os_log_impl(&dword_241FB3000, v9, OS_LOG_TYPE_DEFAULT, "Received %s encapsulating %@", buf, 0x16u);
  }

  delegate = [(BLTSettingSyncServer *)self delegate];
  icon = [(BLTPBSetSectionSubtypeParametersIconRequest *)v7 icon];
  sectionID = [(BLTPBSetSectionSubtypeParametersIconRequest *)v7 sectionID];
  if ([(BLTPBSetSectionSubtypeParametersIconRequest *)v7 defaultSubtype])
  {
    subtypeID = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    subtypeID = [(BLTPBSetSectionSubtypeParametersIconRequest *)v7 subtypeID];
  }

  [delegate setSectionSubtypeParametersIcon:icon forSectionID:sectionID forSubtypeID:subtypeID];

  v16 = objc_alloc_init(BLTPBSetSectionSubtypeParametersIconResponse);
  v17 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D18828]];
  [(BLTRemoteObject *)self sendResponse:v16 type:14 withRequest:requestCopy withTimeout:v17 withDescription:@"subtypeParemetersIcon response" onlyOneFor:0 didSend:0];
}

- (void)handleRemoveSectionRequest:(id)request
{
  v18 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = [BLTPBRemoveSectionRequest alloc];
  data = [requestCopy data];

  v7 = [(BLTPBRemoveSectionRequest *)v5 initWithData:data];
  v9 = blt_settings_log(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v14 = 136315394;
    v15 = "[BLTSettingSyncServer handleRemoveSectionRequest:]";
    v16 = 2112;
    v17 = v11;
    _os_log_impl(&dword_241FB3000, v9, OS_LOG_TYPE_DEFAULT, "Received %s encapsulating %@", &v14, 0x16u);
  }

  delegate = [(BLTSettingSyncServer *)self delegate];
  sectionID = [(BLTPBRemoveSectionRequest *)v7 sectionID];
  [delegate removeSectionWithSectionID:sectionID];
}

- (void)handleSetSectionSubtypeParametersIconResponse:(id)response
{
  v19 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  v5 = blt_settings_log(responseCopy);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);

  if (v6)
  {
    v7 = [BLTPBSetSectionSubtypeParametersIconResponse alloc];
    data = [responseCopy data];
    v9 = [(BLTPBSetSectionSubtypeParametersIconResponse *)v7 initWithData:data];

    v11 = blt_settings_log(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      redact = [(PBCodable *)v9 redact];
      v15 = 136315394;
      v16 = "[BLTSettingSyncServer handleSetSectionSubtypeParametersIconResponse:]";
      v17 = 2112;
      v18 = redact;
      _os_log_impl(&dword_241FB3000, v11, OS_LOG_TYPE_DEFAULT, "Received response %s encapsulating %@", &v15, 0x16u);
    }
  }

  context = [responseCopy context];
  incomingResponseIdentifier = [context incomingResponseIdentifier];
  [(BLTSettingSyncServer *)self _handleResponse:incomingResponseIdentifier];
}

- (void)handleSetNotificationsAlertLevelRequest:(id)request
{
  v19 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = [BLTPBSetNotificationsAlertLevelRequest alloc];
  data = [requestCopy data];

  v7 = [(BLTPBSetNotificationsAlertLevelRequest *)v5 initWithData:data];
  v9 = blt_settings_log(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    redact = [(PBCodable *)v7 redact];
    v15 = 136315394;
    v16 = "[BLTSettingSyncServer handleSetNotificationsAlertLevelRequest:]";
    v17 = 2112;
    v18 = redact;
    _os_log_impl(&dword_241FB3000, v9, OS_LOG_TYPE_DEFAULT, "Received %s encapsulating %@", &v15, 0x16u);
  }

  delegate = [(BLTSettingSyncServer *)self delegate];
  v12 = [(BLTPBSetNotificationsAlertLevelRequest *)v7 level]- 1;
  if (v12 < 3)
  {
    v13 = v12 + 1;
  }

  else
  {
    v13 = 0;
  }

  sectionID = [(BLTPBSetNotificationsAlertLevelRequest *)v7 sectionID];
  [delegate setNotificationsLevel:v13 sectionID:sectionID mirror:-[BLTPBSetNotificationsAlertLevelRequest mirror](v7 fromRemote:{"mirror"), 1}];
}

- (void)handleSetNotificationsGroupingRequest:(id)request
{
  v18 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = [BLTPBSetNotificationsGroupingRequest alloc];
  data = [requestCopy data];

  v7 = [(BLTPBSetNotificationsGroupingRequest *)v5 initWithData:data];
  v9 = blt_settings_log(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    redact = [(PBCodable *)v7 redact];
    v14 = 136315394;
    v15 = "[BLTSettingSyncServer handleSetNotificationsGroupingRequest:]";
    v16 = 2112;
    v17 = redact;
    _os_log_impl(&dword_241FB3000, v9, OS_LOG_TYPE_DEFAULT, "Received %s encapsulating %@", &v14, 0x16u);
  }

  delegate = [(BLTSettingSyncServer *)self delegate];
  grouping = [(BLTPBSetNotificationsGroupingRequest *)v7 grouping];
  sectionID = [(BLTPBSetNotificationsGroupingRequest *)v7 sectionID];
  [delegate setNotificationsGrouping:grouping sectionID:sectionID];
}

- (void)handleSetNotificationsSoundRequest:(id)request
{
  v18 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = [BLTPBSetNotificationsSoundRequest alloc];
  data = [requestCopy data];

  v7 = [(BLTPBSetNotificationsSoundRequest *)v5 initWithData:data];
  v9 = blt_settings_log(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    redact = [(PBCodable *)v7 redact];
    v14 = 136315394;
    v15 = "[BLTSettingSyncServer handleSetNotificationsSoundRequest:]";
    v16 = 2112;
    v17 = redact;
    _os_log_impl(&dword_241FB3000, v9, OS_LOG_TYPE_DEFAULT, "Received %s encapsulating %@", &v14, 0x16u);
  }

  delegate = [(BLTSettingSyncServer *)self delegate];
  sound = [(BLTPBSetNotificationsSoundRequest *)v7 sound];
  sectionID = [(BLTPBSetNotificationsSoundRequest *)v7 sectionID];
  [delegate setNotificationsSoundEnabled:sound sectionID:sectionID];
}

- (void)handleSetNotificationsCriticalAlertRequest:(id)request
{
  v18 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = [BLTPBSetNotificationsCriticalAlertRequest alloc];
  data = [requestCopy data];

  v7 = [(BLTPBSetNotificationsCriticalAlertRequest *)v5 initWithData:data];
  v9 = blt_settings_log(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    redact = [(PBCodable *)v7 redact];
    v14 = 136315394;
    v15 = "[BLTSettingSyncServer handleSetNotificationsCriticalAlertRequest:]";
    v16 = 2112;
    v17 = redact;
    _os_log_impl(&dword_241FB3000, v9, OS_LOG_TYPE_DEFAULT, "Received %s encapsulating %@", &v14, 0x16u);
  }

  delegate = [(BLTSettingSyncServer *)self delegate];
  criticalAlertSetting = [(BLTPBSetNotificationsCriticalAlertRequest *)v7 criticalAlertSetting];
  sectionID = [(BLTPBSetNotificationsCriticalAlertRequest *)v7 sectionID];
  [delegate setNotificationsCriticalAlertEnabled:criticalAlertSetting sectionID:sectionID];
}

- (void)handleSetRemoteGlobalSpokenSettingEnabledRequest:(id)request
{
  v19 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = [BLTPBSetRemoteGlobalSpokenSettingEnabledRequest alloc];
  data = [requestCopy data];

  v7 = [(BLTPBSetRemoteGlobalSpokenSettingEnabledRequest *)v5 initWithData:data];
  v9 = blt_settings_log(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    redact = [(PBCodable *)v7 redact];
    v15 = 136315394;
    v16 = "[BLTSettingSyncServer handleSetRemoteGlobalSpokenSettingEnabledRequest:]";
    v17 = 2112;
    v18 = redact;
    _os_log_impl(&dword_241FB3000, v9, OS_LOG_TYPE_DEFAULT, "Received %s encapsulating %@", &v15, 0x16u);
  }

  delegate = [(BLTSettingSyncServer *)self delegate];
  settingEnabled = [(BLTPBSetRemoteGlobalSpokenSettingEnabledRequest *)v7 settingEnabled];
  v13 = MEMORY[0x277CBEAA8];
  [(BLTPBSetRemoteGlobalSpokenSettingEnabledRequest *)v7 settingDate];
  v14 = [v13 dateWithTimeIntervalSince1970:?];
  [delegate transportUpdateRemoteGlobalSpokenSettingEnabled:settingEnabled date:v14];
}

- (void)handleSetRemoteGlobalSettingsRequest:(id)request
{
  v16 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = [BLTPBSetRemoteGlobalSettingsRequest alloc];
  data = [requestCopy data];

  v7 = [(BLTPBSetRemoteGlobalSettingsRequest *)v5 initWithData:data];
  v9 = blt_settings_log(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    redact = [(PBCodable *)v7 redact];
    v12 = 136315394;
    v13 = "[BLTSettingSyncServer handleSetRemoteGlobalSettingsRequest:]";
    v14 = 2112;
    v15 = redact;
    _os_log_impl(&dword_241FB3000, v9, OS_LOG_TYPE_DEFAULT, "Received %s encapsulating %@", &v12, 0x16u);
  }

  delegate = [(BLTSettingSyncServer *)self delegate];
  [delegate updateGlobalSettings:v7];
}

- (BLTSettingSyncingClient)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __28__BLTSettingSyncServer_init__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_241FB3000, a2, OS_LOG_TYPE_ERROR, "Could not create %@", &v2, 0xCu);
}

@end