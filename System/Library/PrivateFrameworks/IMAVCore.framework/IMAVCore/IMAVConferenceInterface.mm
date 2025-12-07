@interface IMAVConferenceInterface
+ (BOOL)_useMultipleAVConference;
+ (void)_postParticipantMediaChangeNotification:(id)notification cameraChanged:(BOOL)changed orientationChanged:(BOOL)orientationChanged aspectChanged:(BOOL)aspectChanged contentRectChanged:(BOOL)rectChanged cameraWillSwitch:(BOOL)switch camera:(unsigned int)camera orentation:(unsigned int)self0 aspect:(CGSize)self1 contentRect:(CGRect)self2;
+ (void)_postParticipantScreenAttributesChangeNotification:(id)notification cameraChanged:(BOOL)changed orientationChanged:(BOOL)orientationChanged aspectChanged:(BOOL)aspectChanged cameraWillSwitch:(BOOL)switch camera:(unsigned int)camera orentation:(unsigned int)orentation aspect:(CGSize)self0;
- (BOOL)_hasAVConferenceObjectsForChatsOtherThan:(id)than;
- (BOOL)_submitEndCallMetric:(id)metric forCallID:(int64_t)d;
- (BOOL)_submitLoggingInformation:(id)information forChat:(id)chat;
- (BOOL)avChat:(id)chat generateCallInfoForID:(id)d service:(id)service usingRelay:(BOOL)relay callInfo:(id)info;
- (BOOL)isAVInterfaceReady;
- (BOOL)isMuteForAVChat:(id)chat;
- (BOOL)isSendingAudioForAVChat:(id)chat;
- (BOOL)isSendingVideoForAVChat:(id)chat;
- (BOOL)startPreviewWithError:(id *)error;
- (BOOL)stopPreview;
- (IMAVConferenceInterface)init;
- (id)_avChatForConference:(id)conference;
- (id)_avChatForConference:(id)conference callID:(int64_t)d errorString:(id)string;
- (id)_conferenceForAVChat:(id)chat;
- (id)_controller;
- (id)_existingConferenceForAVChat:(id)chat;
- (id)_existingConferenceForAVChatGUID:(id)d;
- (id)_faceTimeUUID;
- (id)_imAVChatParticipantForConference:(id)conference callID:(int64_t)d errorString:(id)string;
- (id)getNatIPFromICEData:(id)data;
- (id)natTypeForAVChat:(id)chat;
- (int)_deviceRoleForAVChat:(id)chat;
- (int)avChat:(id)chat endConferenceForUserID:(id)d;
- (void)_avChatDealloc:(id)dealloc;
- (void)_cleanupAVInterface;
- (void)_conferenceEnded:(id)ended;
- (void)_configureAVConference:(id)conference forChat:(id)chat;
- (void)_notifyAboutPotentialCallForChat:(id)chat;
- (void)_queueAVConferenceForCleanup:(id)cleanup;
- (void)avChat:(id)chat prepareConnectionWithCallInfo:(id)info;
- (void)avChat:(id)chat setLocalLandscapeAspectRatio:(CGSize)ratio localPortraitAspectRatio:(CGSize)aspectRatio;
- (void)avChat:(id)chat setMute:(BOOL)mute;
- (void)avChat:(id)chat setSendingAudio:(BOOL)audio;
- (void)avChat:(id)chat setSendingVideo:(BOOL)video;
- (void)cancelConferenceForAVChat:(id)chat;
- (void)chatRelayedStatusChanged:(id)changed;
- (void)chatStateUpdated;
- (void)conference:(id)conference callID:(int64_t)d setPauseVideo:(BOOL)video;
- (void)conference:(id)conference cancelRelayRequest:(int64_t)request requestDict:(id)dict;
- (void)conference:(id)conference didChangeLocalVariablesForCallID:(int64_t)d;
- (void)conference:(id)conference didStartSession:(BOOL)session withUserInfo:(id)info;
- (void)conference:(id)conference didStopWithCallID:(int64_t)d error:(id)error callMetadata:(id)metadata;
- (void)conference:(id)conference inititiateRelayRequest:(int64_t)request requestDict:(id)dict;
- (void)conference:(id)conference localIPChange:(id)change withCallID:(int64_t)d;
- (void)conference:(id)conference receivedFirstRemoteFrameForCallID:(int64_t)d;
- (void)conference:(id)conference reinitializeCallForCallID:(unsigned int)d;
- (void)conference:(id)conference remoteAudioPaused:(BOOL)paused callID:(int64_t)d;
- (void)conference:(id)conference remoteScreenAttributesChanged:(id)changed callID:(int64_t)d;
- (void)conference:(id)conference remoteVideoAttributesChanged:(id)changed callID:(int64_t)d;
- (void)conference:(id)conference remoteVideoPaused:(BOOL)paused callID:(int64_t)d;
- (void)conference:(id)conference sendRelayUpdate:(int64_t)update updateDict:(id)dict;
- (void)conference:(id)conference updateInputFrequencyLevel:(id)level;
- (void)conference:(id)conference updateOutputFrequencyLevel:(id)level;
- (void)conference:(id)conference videoQualityNotificationForCallID:(int64_t)d isDegraded:(BOOL)degraded isRemote:(BOOL)remote;
- (void)conference:(id)conference withCallID:(int64_t)d didPauseAudio:(BOOL)audio error:(id)error;
- (void)conference:(id)conference withCallID:(int64_t)d networkHint:(BOOL)hint;
- (void)conference:(id)conference withCallID:(int64_t)d remoteMediaStalled:(BOOL)stalled;
- (void)dealloc;
- (void)endAVConferenceWithChat:(id)chat callID:(int64_t)d;
- (void)handleRelayCancel:(id)cancel fromParticipant:(id)participant callInfo:(id)info;
- (void)handleRelayInitate:(id)initate fromParticipant:(id)participant callInfo:(id)info;
- (void)handleRelayUpdate:(id)update fromParticipant:(id)participant callInfo:(id)info;
- (void)initAVInterface;
- (void)localVideoBackLayer;
- (void)localVideoLayer;
- (void)processRemoteIPChanged:(id)changed fromParticipant:(id)participant;
- (void)serverDiedForConference:(id)conference;
- (void)setLocalVideoBackLayer:(void *)layer;
- (void)setLocalVideoLayer:(void *)layer;
- (void)setRemoteVideoPresentationSize:(CGSize)size forChat:(id)chat;
- (void)setRemoteVideoPresentationState:(unsigned int)state forChat:(id)chat;
- (void)updateAVChat:(id)chat withCallMetadata:(id)metadata isFinalUpdate:(BOOL)update;
@end

@implementation IMAVConferenceInterface

+ (BOOL)_useMultipleAVConference
{
  v5 = objc_msgSend_sharedInstance(IMAVController, a2, v2, v3, v4);
  if (objc_msgSend_blockMultipleIncomingInvitations(v5, v6, v7, v8, v9))
  {
    v14 = objc_msgSend_sharedInstance(IMAVController, v10, v11, v12, v13);
    if (objc_msgSend_blockIncomingInvitationsDuringCall(v14, v15, v16, v17, v18))
    {
      v23 = objc_msgSend_sharedInstance(IMAVController, v19, v20, v21, v22);
      v28 = objc_msgSend_blockOutgoingInvitationsDuringCall(v23, v24, v25, v26, v27) ^ 1;
    }

    else
    {
      LOBYTE(v28) = 1;
    }
  }

  else
  {
    LOBYTE(v28) = 1;
  }

  return v28;
}

- (IMAVConferenceInterface)init
{
  v104.receiver = self;
  v104.super_class = IMAVConferenceInterface;
  v2 = [(IMAVConferenceInterface *)&v104 init];

  if (v2)
  {
    qword_28134A5C0 = MEMORY[0x259C18990](@"AVConference", @"AVConference");
    qword_28134A478 = MEMORY[0x259C18990](@"VCCapabilities", @"AVConference");
    if (!qword_28134A520)
    {
      v7 = MEMORY[0x259C189A0]("GKSRelayParameter_ClientData", @"AVConference");
      if (v7)
      {
        v8 = *v7;
      }

      else
      {
        v8 = 0;
      }

      objc_storeStrong(&qword_28134A520, v8);
    }

    if (!qword_28134A4B8)
    {
      v9 = MEMORY[0x259C189A0]("GKSRelayParameter_SelfNatType", @"AVConference");
      if (v9)
      {
        v10 = *v9;
      }

      else
      {
        v10 = 0;
      }

      objc_storeStrong(&qword_28134A4B8, v10);
    }

    if (!qword_28134A4C8)
    {
      v11 = MEMORY[0x259C189A0]("GKSRelayParameter_SelfBlob", @"AVConference");
      if (v11)
      {
        v12 = *v11;
      }

      else
      {
        v12 = 0;
      }

      objc_storeStrong(&qword_28134A4C8, v12);
    }

    if (!qword_28134A500)
    {
      v13 = MEMORY[0x259C189A0]("GKSRelayParameter_PeerID", @"AVConference");
      if (v13)
      {
        v14 = *v13;
      }

      else
      {
        v14 = 0;
      }

      objc_storeStrong(&qword_28134A500, v14);
    }

    if (!qword_28134A4F8)
    {
      v15 = MEMORY[0x259C189A0]("GKSRelayParameter_PeerNatType", @"AVConference");
      if (v15)
      {
        v16 = *v15;
      }

      else
      {
        v16 = 0;
      }

      objc_storeStrong(&qword_28134A4F8, v16);
    }

    if (!qword_28134A510)
    {
      v17 = MEMORY[0x259C189A0]("GKSRelayParameter_PeerBlob", @"AVConference");
      if (v17)
      {
        v18 = *v17;
      }

      else
      {
        v18 = 0;
      }

      objc_storeStrong(&qword_28134A510, v18);
    }

    if (!qword_28134A480)
    {
      v19 = MEMORY[0x259C189A0]("GKSRelayType", @"AVConference");
      if (v19)
      {
        v20 = *v19;
      }

      else
      {
        v20 = 0;
      }

      objc_storeStrong(&qword_28134A480, v20);
    }

    if (!qword_28134A518)
    {
      v21 = MEMORY[0x259C189A0]("GKSRelayParameter_ConnectionID", @"AVConference");
      if (v21)
      {
        v22 = *v21;
      }

      else
      {
        v22 = 0;
      }

      objc_storeStrong(&qword_28134A518, v22);
    }

    if (!qword_28134A488)
    {
      v23 = MEMORY[0x259C189A0]("GKSRelayParameter_TransactionID", @"AVConference");
      if (v23)
      {
        v24 = *v23;
      }

      else
      {
        v24 = 0;
      }

      objc_storeStrong(&qword_28134A488, v24);
    }

    if (!qword_28134A490)
    {
      v25 = MEMORY[0x259C189A0]("GKSRelayParameter_Token", @"AVConference");
      if (v25)
      {
        v26 = *v25;
      }

      else
      {
        v26 = 0;
      }

      objc_storeStrong(&qword_28134A490, v26);
    }

    if (!qword_28134A4F0)
    {
      v27 = MEMORY[0x259C189A0]("GKSRelayParameter_PeerRelayIP", @"AVConference");
      if (v27)
      {
        v28 = *v27;
      }

      else
      {
        v28 = 0;
      }

      objc_storeStrong(&qword_28134A4F0, v28);
    }

    if (!qword_28134A4D8)
    {
      v29 = MEMORY[0x259C189A0]("GKSRelayParameter_PeerRelayPort", @"AVConference");
      if (v29)
      {
        v30 = *v29;
      }

      else
      {
        v30 = 0;
      }

      objc_storeStrong(&qword_28134A4D8, v30);
    }

    if (!qword_28134A4B0)
    {
      v31 = MEMORY[0x259C189A0]("GKSRelayParameter_SelfRelayIP", @"AVConference");
      if (v31)
      {
        v32 = *v31;
      }

      else
      {
        v32 = 0;
      }

      objc_storeStrong(&qword_28134A4B0, v32);
    }

    if (!qword_28134A498)
    {
      v33 = MEMORY[0x259C189A0]("GKSRelayParameter_SelfRelayPort", @"AVConference");
      if (v33)
      {
        v34 = *v33;
      }

      else
      {
        v34 = 0;
      }

      objc_storeStrong(&qword_28134A498, v34);
    }

    if (!qword_28134A4A8)
    {
      v35 = MEMORY[0x259C189A0]("GKSRelayParameter_SelfRelayNatIP", @"AVConference");
      if (v35)
      {
        v36 = *v35;
      }

      else
      {
        v36 = 0;
      }

      objc_storeStrong(&qword_28134A4A8, v36);
    }

    if (!qword_28134A4A0)
    {
      v37 = MEMORY[0x259C189A0]("GKSRelayParameter_SelfRelayNatPort", @"AVConference");
      if (v37)
      {
        v38 = *v37;
      }

      else
      {
        v38 = 0;
      }

      objc_storeStrong(&qword_28134A4A0, v38);
    }

    if (!qword_28134A4E8)
    {
      v39 = MEMORY[0x259C189A0]("GKSRelayParameter_PeerRelayNatIP", @"AVConference");
      if (v39)
      {
        v40 = *v39;
      }

      else
      {
        v40 = 0;
      }

      objc_storeStrong(&qword_28134A4E8, v40);
    }

    if (!qword_28134A4E0)
    {
      v41 = MEMORY[0x259C189A0]("GKSRelayParameter_PeerRelayNatPort", @"AVConference");
      if (v41)
      {
        v42 = *v41;
      }

      else
      {
        v42 = 0;
      }

      objc_storeStrong(&qword_28134A4E0, v42);
    }

    if (!qword_28134A4D0)
    {
      v43 = MEMORY[0x259C189A0]("GKSRelayParameter_RemotePrimaryId", @"AVConference");
      if (v43)
      {
        v44 = *v43;
      }

      else
      {
        v44 = 0;
      }

      objc_storeStrong(&qword_28134A4D0, v44);
    }

    if (!qword_28134A4C0)
    {
      v45 = MEMORY[0x259C189A0]("GKSRelayParameter_SelfExternalAddr", @"AVConference");
      if (v45)
      {
        v46 = *v45;
      }

      else
      {
        v46 = 0;
      }

      objc_storeStrong(&qword_28134A4C0, v46);
    }

    if (!qword_28134A508)
    {
      v47 = MEMORY[0x259C189A0]("GKSRelayParameter_PeerExternalAddr", @"AVConference");
      if (v47)
      {
        v48 = *v47;
      }

      else
      {
        v48 = 0;
      }

      objc_storeStrong(&qword_28134A508, v48);
    }

    if (!qword_28134A570)
    {
      v49 = MEMORY[0x259C189A0]("GKSDidStartParameter_ConnType", @"AVConference");
      if (v49)
      {
        v50 = *v49;
      }

      else
      {
        v50 = 0;
      }

      objc_storeStrong(&qword_28134A570, v50);
    }

    if (!qword_28134A568)
    {
      v51 = MEMORY[0x259C189A0]("GKSDidStartParameter_Error", @"AVConference");
      if (v51)
      {
        v52 = *v51;
      }

      else
      {
        v52 = 0;
      }

      objc_storeStrong(&qword_28134A568, v52);
    }

    if (!qword_28134A578)
    {
      v53 = MEMORY[0x259C189A0]("GKSDidStartParameter_CallID", @"AVConference");
      if (v53)
      {
        v54 = *v53;
      }

      else
      {
        v54 = 0;
      }

      objc_storeStrong(&qword_28134A578, v54);
    }

    if (!qword_28134A560)
    {
      v55 = MEMORY[0x259C189A0]("GKSDidStartParameter_localUseCell", @"AVConference");
      if (v55)
      {
        v56 = *v55;
      }

      else
      {
        v56 = 0;
      }

      objc_storeStrong(&qword_28134A560, v56);
    }

    if (!qword_28134A558)
    {
      v57 = MEMORY[0x259C189A0]("GKSDidStartParameter_remoteUseCell", @"AVConference");
      if (v57)
      {
        v58 = *v57;
      }

      else
      {
        v58 = 0;
      }

      objc_storeStrong(&qword_28134A558, v58);
    }

    if (!qword_28134A5B8)
    {
      v59 = MEMORY[0x259C189A0]("GKSCDXServerAddress", @"AVConference");
      if (v59)
      {
        v60 = *v59;
      }

      else
      {
        v60 = 0;
      }

      objc_storeStrong(&qword_28134A5B8, v60);
    }

    if (!qword_28134A5B0)
    {
      v61 = MEMORY[0x259C189A0]("GKSCommNATServerCohortAddress", @"AVConference");
      if (v61)
      {
        v62 = *v61;
      }

      else
      {
        v62 = 0;
      }

      objc_storeStrong(&qword_28134A5B0, v62);
    }

    if (!qword_28134A5A0)
    {
      v63 = MEMORY[0x259C189A0]("GKSCommNATServerMain0Address", @"AVConference");
      if (v63)
      {
        v64 = *v63;
      }

      else
      {
        v64 = 0;
      }

      objc_storeStrong(&qword_28134A5A0, v64);
    }

    if (!qword_28134A590)
    {
      v65 = MEMORY[0x259C189A0]("GKSCommNATServerMain1Address", @"AVConference");
      if (v65)
      {
        v66 = *v65;
      }

      else
      {
        v66 = 0;
      }

      objc_storeStrong(&qword_28134A590, v66);
    }

    if (!qword_28134A5A8)
    {
      v67 = MEMORY[0x259C189A0]("GKSCommNATServerCohortName", @"AVConference");
      if (v67)
      {
        v68 = *v67;
      }

      else
      {
        v68 = 0;
      }

      objc_storeStrong(&qword_28134A5A8, v68);
    }

    if (!qword_28134A598)
    {
      v69 = MEMORY[0x259C189A0]("GKSCommNATServerMain0Name", @"AVConference");
      if (v69)
      {
        v70 = *v69;
      }

      else
      {
        v70 = 0;
      }

      objc_storeStrong(&qword_28134A598, v70);
    }

    if (!qword_28134A588)
    {
      v71 = MEMORY[0x259C189A0]("GKSCommNATServerMain1Name", @"AVConference");
      if (v71)
      {
        v72 = *v71;
      }

      else
      {
        v72 = 0;
      }

      objc_storeStrong(&qword_28134A588, v72);
    }

    if (!qword_28134A528)
    {
      v73 = MEMORY[0x259C189A0]("GKSPreEmptiveRelayTimeout", @"AVConference");
      if (v73)
      {
        v74 = *v73;
      }

      else
      {
        v74 = 0;
      }

      objc_storeStrong(&qword_28134A528, v74);
    }

    if (!qword_28134A548)
    {
      v75 = MEMORY[0x259C189A0]("GKSMaxRelayBitrate", @"AVConference");
      if (v75)
      {
        v76 = *v75;
      }

      else
      {
        v76 = 0;
      }

      objc_storeStrong(&qword_28134A548, v76);
    }

    if (!qword_28134A550)
    {
      v77 = MEMORY[0x259C189A0]("GKSICETimeout", @"AVConference");
      if (v77)
      {
        v78 = *v77;
      }

      else
      {
        v78 = 0;
      }

      objc_storeStrong(&qword_28134A550, v78);
    }

    if (!qword_28134A540)
    {
      v79 = MEMORY[0x259C189A0]("GKSNATCheckTimeout", @"AVConference");
      if (v79)
      {
        v80 = *v79;
      }

      else
      {
        v80 = 0;
      }

      objc_storeStrong(&qword_28134A540, v80);
    }

    if (!qword_28134A580)
    {
      v81 = MEMORY[0x259C189A0]("GKSConnectionBlobMaxBytes", @"AVConference");
      if (v81)
      {
        v82 = *v81;
      }

      else
      {
        v82 = 0;
      }

      objc_storeStrong(&qword_28134A580, v82);
    }

    if (!qword_28134A530)
    {
      v83 = MEMORY[0x259C189A0]("GKSNoRemotePacketsTimeout", @"AVConference");
      if (v83)
      {
        v84 = *v83;
      }

      else
      {
        v84 = 0;
      }

      objc_storeStrong(&qword_28134A530, v84);
    }

    if (!qword_28134A538)
    {
      v85 = MEMORY[0x259C189A0]("GKSNetworkConditionsTimeout", @"AVConference");
      if (v85)
      {
        v86 = *v85;
      }

      else
      {
        v86 = 0;
      }

      objc_storeStrong(&qword_28134A538, v86);
    }

    v2->_duringInit = 1;
    objc_msgSend_initAVInterface(v2, v3, v4, v5, v6);
    v2->_duringInit = 0;
    v87 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    avConferencesLock = v2->_avConferencesLock;
    v2->_avConferencesLock = v87;

    v93 = objc_msgSend_sharedController(MEMORY[0x277D18D68], v89, v90, v91, v92);
    v98 = objc_msgSend_listener(v93, v94, v95, v96, v97);
    objc_msgSend_addHandler_(v98, v99, v2, v100, v101);
  }

  v102 = v2;

  return v102;
}

- (void)dealloc
{
  objc_msgSend_stopPreview(self, a2, v2, v3, v4);
  objc_msgSend_makeObjectsPerformSelector_withObject_(self->_avConferencesToCleanup, v6, sel_setDelegate_, 0, v7);
  objc_msgSend_lock(self->_avConferencesLock, v8, v9, v10, v11);
  v16 = objc_msgSend_allValues(self->_avConferences, v12, v13, v14, v15);
  objc_msgSend_makeObjectsPerformSelector_withObject_(v16, v17, sel_setDelegate_, 0, v18);
  objc_msgSend_unlock(self->_avConferencesLock, v19, v20, v21, v22);

  v23.receiver = self;
  v23.super_class = IMAVConferenceInterface;
  [(IMAVInterface *)&v23 dealloc];
}

- (id)_faceTimeUUID
{
  if (qword_27F6106F8 != -1)
  {
    sub_25477F97C();
  }

  v3 = qword_27F6106F0;

  return v3;
}

- (void)_configureAVConference:(id)conference forChat:(id)chat
{
  v27 = *MEMORY[0x277D85DE8];
  conferenceCopy = conference;
  v10 = objc_msgSend_sharedInstance(MEMORY[0x277D07DB0], v6, v7, v8, v9);
  v15 = objc_msgSend_nonWifiFaceTimeAvailable(v10, v11, v12, v13, v14);

  v19 = objc_msgSend_setRequiresWifi_(conferenceCopy, v16, v15 ^ 1u, v17, v18);
  v20 = sub_254761764(v19);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = @"YES";
    if (v15)
    {
      v21 = @"NO";
    }

    v25 = 138412290;
    v26 = v21;
    _os_log_impl(&dword_254743000, v20, OS_LOG_TYPE_DEFAULT, "Requires wifi: %@", &v25, 0xCu);
  }

  objc_msgSend_setDelegate_(conferenceCopy, v22, self, v23, v24);
}

- (BOOL)_hasAVConferenceObjectsForChatsOtherThan:(id)than
{
  avConferencesLock = self->_avConferencesLock;
  thanCopy = than;
  objc_msgSend_lock(avConferencesLock, v6, v7, v8, v9);
  avConferences = self->_avConferences;
  v15 = objc_msgSend_GUID(thanCopy, v11, v12, v13, v14);

  v19 = objc_msgSend_objectForKey_(avConferences, v16, v15, v17, v18);

  v24 = v19 && objc_msgSend_count(self->_avConferences, v20, v21, v22, v23) > 1 || objc_msgSend_count(self->_avConferences, v20, v21, v22, v23) != 0;
  objc_msgSend_unlock(self->_avConferencesLock, v20, v21, v22, v23);
  return v24;
}

- (id)_existingConferenceForAVChat:(id)chat
{
  chatCopy = chat;
  v9 = objc_msgSend_sharedInstance(MEMORY[0x277D07DB0], v5, v6, v7, v8);
  v14 = objc_msgSend_faceTimeSupported(v9, v10, v11, v12, v13);

  v19 = 0;
  if (chatCopy)
  {
    if (v14)
    {
      v19 = objc_msgSend_GUID(chatCopy, v15, v16, v17, v18);

      if (v19)
      {
        objc_msgSend_lock(self->_avConferencesLock, v20, v21, v22, v23);
        avConferences = self->_avConferences;
        v29 = objc_msgSend_GUID(chatCopy, v25, v26, v27, v28);
        v19 = objc_msgSend_objectForKey_(avConferences, v30, v29, v31, v32);

        objc_msgSend_unlock(self->_avConferencesLock, v33, v34, v35, v36);
      }
    }
  }

  return v19;
}

- (id)_existingConferenceForAVChatGUID:(id)d
{
  dCopy = d;
  v9 = objc_msgSend_sharedInstance(MEMORY[0x277D07DB0], v5, v6, v7, v8);
  v14 = objc_msgSend_faceTimeSupported(v9, v10, v11, v12, v13);

  if (v14)
  {
    objc_msgSend_lock(self->_avConferencesLock, v15, v16, v17, v18);
    v22 = objc_msgSend_objectForKey_(self->_avConferences, v19, dCopy, v20, v21);
    objc_msgSend_unlock(self->_avConferencesLock, v23, v24, v25, v26);
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (id)_conferenceForAVChat:(id)chat
{
  v81 = *MEMORY[0x277D85DE8];
  chatCopy = chat;
  v9 = objc_msgSend_sharedInstance(MEMORY[0x277D07DB0], v5, v6, v7, v8);
  v14 = objc_msgSend_faceTimeSupported(v9, v10, v11, v12, v13);

  v19 = 0;
  if (chatCopy && v14)
  {
    v20 = objc_msgSend_GUID(chatCopy, v15, v16, v17, v18);

    if (v20)
    {
      objc_msgSend_lock(self->_avConferencesLock, v21, v22, v23, v24);
      avConferences = self->_avConferences;
      v30 = objc_msgSend_GUID(chatCopy, v26, v27, v28, v29);
      v19 = objc_msgSend_objectForKey_(avConferences, v31, v30, v32, v33);

      objc_msgSend_unlock(self->_avConferencesLock, v34, v35, v36, v37);
      if (!v19)
      {
        v42 = objc_msgSend__faceTimeUUID(self, v38, v39, v40, v41);
        v43 = sub_254761764(v42);
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v78 = v42;
          _os_log_impl(&dword_254743000, v43, OS_LOG_TYPE_DEFAULT, "Initializing conference with UUID %@", buf, 0xCu);
        }

        v44 = [qword_28134A5C0 alloc];
        v49 = objc_msgSend__faceTimeUUID(self, v45, v46, v47, v48);
        v19 = objc_msgSend_initWithClientUUID_transportType_(v44, v50, v49, 0, v51);

        v53 = sub_254761764(v52);
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v78 = v19;
          v79 = 2112;
          v80 = chatCopy;
          _os_log_impl(&dword_254743000, v53, OS_LOG_TYPE_DEFAULT, "Created AVConference Instance: %@ for chat: %@", buf, 0x16u);
        }

        if (v19)
        {
          objc_msgSend__configureAVConference_forChat_(self, v54, v19, chatCopy, v55);
          objc_msgSend_lock(self->_avConferencesLock, v56, v57, v58, v59);
          v64 = self->_avConferences;
          if (!v64)
          {
            Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
            v66 = self->_avConferences;
            self->_avConferences = Mutable;

            v64 = self->_avConferences;
          }

          v67 = objc_msgSend_GUID(chatCopy, v60, v61, v62, v63);
          objc_msgSend_setObject_forKey_(v64, v68, v19, v67, v69);

          objc_msgSend_unlock(self->_avConferencesLock, v70, v71, v72, v73);
        }

        else
        {
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = sub_25476BCFC;
          block[3] = &unk_279783738;
          v76 = chatCopy;
          dispatch_async(MEMORY[0x277D85CD0], block);
        }
      }
    }

    else
    {
      v19 = 0;
    }
  }

  return v19;
}

- (id)_avChatForConference:(id)conference
{
  v61 = *MEMORY[0x277D85DE8];
  conferenceCopy = conference;
  objc_msgSend_lock(self->_avConferencesLock, v5, v6, v7, v8);
  selfCopy = self;
  v46 = conferenceCopy;
  v12 = objc_msgSend_allKeysForObject_(self->_avConferences, v9, conferenceCopy, v10, v11);
  v49 = objc_msgSend__avChatArray(IMAVChat, v13, v14, v15, v16);
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = v12;
  v50 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v17, &v55, v60, 16);
  v18 = 0;
  if (v50)
  {
    v48 = *v56;
    do
    {
      for (i = 0; i != v50; ++i)
      {
        if (*v56 != v48)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v55 + 1) + 8 * i);
        v51 = 0u;
        v52 = 0u;
        v53 = 0u;
        v54 = 0u;
        v21 = v49;
        v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, &v51, v59, 16);
        if (v23)
        {
          v28 = v23;
          v29 = *v52;
          do
          {
            for (j = 0; j != v28; ++j)
            {
              if (*v52 != v29)
              {
                objc_enumerationMutation(v21);
              }

              v31 = *(*(&v51 + 1) + 8 * j);
              v32 = objc_msgSend_GUID(v31, v24, v25, v26, v27);
              isEqualToString = objc_msgSend_isEqualToString_(v32, v33, v20, v34, v35);

              if (isEqualToString)
              {
                v37 = v31;

                v18 = v37;
              }
            }

            v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v24, &v51, v59, 16);
          }

          while (v28);
        }
      }

      v50 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v38, &v55, v60, 16);
    }

    while (v50);
  }

  objc_msgSend_unlock(selfCopy->_avConferencesLock, v39, v40, v41, v42);
  v43 = v18;

  return v18;
}

- (id)_imAVChatParticipantForConference:(id)conference callID:(int64_t)d errorString:(id)string
{
  v6 = objc_msgSend__avChatForConference_callID_errorString_(self, a2, conference, d, string);
  v10 = objc_msgSend_participantWithAVConferenceCallID_(v6, v7, d, v8, v9);

  return v10;
}

- (id)_avChatForConference:(id)conference callID:(int64_t)d errorString:(id)string
{
  v83 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  v16 = objc_msgSend__avChatForConference_(self, v9, conference, v10, v11);
  if (v16)
  {
    goto LABEL_27;
  }

  v17 = objc_msgSend__chatListLock(IMAVChat, v12, v13, v14, v15);
  objc_msgSend_lock(v17, v18, v19, v20, v21);

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v26 = objc_msgSend__chatList(IMAVChat, v22, v23, v24, v25, 0);
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v27, &v72, v82, 16);
  if (v16)
  {
    v31 = *v73;
    while (2)
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v73 != v31)
        {
          objc_enumerationMutation(v26);
        }

        v33 = *(*(&v72 + 1) + 8 * i);
        v34 = objc_msgSend_participantWithAVConferenceCallID_(v33, v28, d, v29, v30);

        if (v34)
        {
          v16 = v33;
          goto LABEL_12;
        }
      }

      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v28, &v72, v82, 16);
      if (v16)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  v39 = objc_msgSend__chatListLock(IMAVChat, v35, v36, v37, v38);
  objc_msgSend_unlock(v39, v40, v41, v42, v43);

  if (d)
  {
    AppBooleanValue = CFPreferencesGetAppBooleanValue(@"alwaysFixCallIDs", @"com.apple.conference", 0);
    if (v16 || !AppBooleanValue)
    {
      goto LABEL_24;
    }

LABEL_17:
    v45 = sub_254761764(AppBooleanValue);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v77 = stringCopy;
      v78 = 1024;
      dCopy = d;
      _os_log_impl(&dword_254743000, v45, OS_LOG_TYPE_DEFAULT, "%@: Found no conference for CallID: %d  fixing this...", buf, 0x12u);
    }

    v50 = objc_msgSend__connectedChat(IMAVChat, v46, v47, v48, v49);

    if (v50)
    {
      v16 = v50;
    }

    else
    {
      AppBooleanValue = objc_msgSend__activeChat(IMAVChat, v51, v52, v53, v54);
      if (AppBooleanValue)
      {
        v16 = AppBooleanValue;
      }

      else
      {
        v59 = objc_msgSend__avChatArray(IMAVChat, v55, v56, v57, v58);
        v16 = objc_msgSend_lastObject(v59, v60, v61, v62, v63);
      }
    }

    goto LABEL_24;
  }

  if (!v16)
  {
    goto LABEL_17;
  }

LABEL_24:
  v64 = sub_254761764(AppBooleanValue);
  if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
  {
    v69 = objc_msgSend__bustedCallID(v16, v65, v66, v67, v68);
    *buf = 138412802;
    v77 = v16;
    v78 = 1024;
    dCopy = v69;
    v80 = 1024;
    dCopy2 = d;
    _os_log_impl(&dword_254743000, v64, OS_LOG_TYPE_DEFAULT, "_avChatForConference Found chat: %@ (%d) for callID: %d", buf, 0x18u);
  }

LABEL_27:
  v70 = v16;

  return v70;
}

- (int)_deviceRoleForAVChat:(id)chat
{
  if (objc_msgSend_isRelayed(chat, a2, chat, v3, v4))
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

- (void)_cleanupAVInterface
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = sub_254761764(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_254743000, v3, OS_LOG_TYPE_DEFAULT, "Cleanup AV Interfaces", buf, 2u);
  }

  self->_pendingCleanup = 0;
  objc_msgSend_cancelPreviousPerformRequestsWithTarget_selector_object_(MEMORY[0x277D82BB8], v4, self, sel__cleanupAVInterface, 0);
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v5 = self->_avConferencesToCleanup;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v29, v35, 16);
  if (v7)
  {
    v8 = v7;
    v9 = *v30;
    do
    {
      v10 = 0;
      do
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v29 + 1) + 8 * v10);
        v12 = sub_254761764(v7);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v34 = v11;
          _os_log_impl(&dword_254743000, v12, OS_LOG_TYPE_DEFAULT, "Unsetting delegate for AVConference: %@", buf, 0xCu);
        }

        v7 = objc_msgSend_setDelegate_(v11, v13, 0, v14, v15);
        ++v10;
      }

      while (v8 != v10);
      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v16, &v29, v35, 16);
      v8 = v7;
    }

    while (v7);
  }

  v18 = sub_254761764(v17);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    avConferencesToCleanup = self->_avConferencesToCleanup;
    *buf = 138412290;
    v34 = avConferencesToCleanup;
    _os_log_impl(&dword_254743000, v18, OS_LOG_TYPE_DEFAULT, "Releasing AVConferences: %@", buf, 0xCu);
  }

  objc_msgSend_removeAllObjects(self->_avConferencesToCleanup, v20, v21, v22, v23);
  if (!objc_msgSend_count(self->_avConferencesToCleanup, v24, v25, v26, v27))
  {
    v28 = self->_avConferencesToCleanup;
    self->_avConferencesToCleanup = 0;
  }
}

- (void)_queueAVConferenceForCleanup:(id)cleanup
{
  v51 = *MEMORY[0x277D85DE8];
  cleanupCopy = cleanup;
  v9 = objc_msgSend__useMultipleAVConference(IMAVConferenceInterface, v5, v6, v7, v8);
  if (cleanupCopy && v9)
  {
    v10 = sub_254761764(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v49 = 138412290;
      v50 = cleanupCopy;
      _os_log_impl(&dword_254743000, v10, OS_LOG_TYPE_DEFAULT, "Queue AVConference for cleanup: %@", &v49, 0xCu);
    }

    avConferencesToCleanup = self->_avConferencesToCleanup;
    if (!avConferencesToCleanup)
    {
      v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v16 = self->_avConferencesToCleanup;
      self->_avConferencesToCleanup = v15;

      avConferencesToCleanup = self->_avConferencesToCleanup;
    }

    objc_msgSend_addObject_(avConferencesToCleanup, v11, cleanupCopy, v12, v13);
    objc_msgSend_setDelegate_(cleanupCopy, v17, 0, v18, v19);
    self->_pendingCleanup = 1;
    objc_msgSend_cancelPreviousPerformRequestsWithTarget_selector_object_(MEMORY[0x277D82BB8], v20, self, sel__cleanupAVInterface, 0);
    objc_msgSend_performSelector_withObject_afterDelay_(self, v21, sel__cleanupAVInterface, 0, v22, 5.0);
    objc_msgSend_lock(self->_avConferencesLock, v23, v24, v25, v26);
    v30 = objc_msgSend_allKeysForObject_(self->_avConferences, v27, cleanupCopy, v28, v29);
    v35 = objc_msgSend_count(v30, v31, v32, v33, v34);
    if (v35)
    {
      v40 = sub_254761764(v35);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        v49 = 138412290;
        v50 = cleanupCopy;
        _os_log_impl(&dword_254743000, v40, OS_LOG_TYPE_DEFAULT, "Removing AVConference from available conference sets: %@", &v49, 0xCu);
      }

      objc_msgSend_removeObjectsForKeys_(self->_avConferences, v41, v30, v42, v43);
    }

    if (!objc_msgSend_count(self->_avConferences, v36, v37, v38, v39))
    {
      avConferences = self->_avConferences;
      self->_avConferences = 0;
    }

    objc_msgSend_unlock(self->_avConferencesLock, v44, v45, v46, v47);
  }
}

- (void)initAVInterface
{
  v3 = sub_254761764(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_254743000, v3, OS_LOG_TYPE_DEFAULT, "Init AV Interface", buf, 2u);
  }

  v22.receiver = self;
  v22.super_class = IMAVConferenceInterface;
  [(IMAVInterface *)&v22 initAVInterface];
  v8 = objc_msgSend_sharedInstance(MEMORY[0x277D07DB0], v4, v5, v6, v7);
  v13 = objc_msgSend_faceTimeSupported(v8, v9, v10, v11, v12);

  if (v13)
  {
    if (self->_duringInit)
    {
      return;
    }

    v19 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v15, v16, v17, v18);
    objc_msgSend___mainThreadPostNotificationName_object_(v19, v20, @"__kIMAVInterfaceReadyNotification", 0, v21);
  }

  else
  {
    v19 = sub_254761764(v14);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_254743000, v19, OS_LOG_TYPE_DEFAULT, "Unsupported on this device, not initing", buf, 2u);
    }
  }
}

- (BOOL)isAVInterfaceReady
{
  v5 = objc_msgSend_sharedInstance(MEMORY[0x277D07DB0], a2, v2, v3, v4);
  objc_msgSend_faceTimeSupported(v5, v6, v7, v8, v9);

  return 1;
}

- (void)_conferenceEnded:(id)ended
{
  v18 = *MEMORY[0x277D85DE8];
  endedCopy = ended;
  v5 = sub_254761764(endedCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = endedCopy;
    _os_log_impl(&dword_254743000, v5, OS_LOG_TYPE_DEFAULT, "chat: %@", buf, 0xCu);
  }

  objc_msgSend_avChat_endConferenceForUserID_(self, v6, endedCopy, 0, v7);
  v15.receiver = self;
  v15.super_class = IMAVConferenceInterface;
  [(IMAVInterface *)&v15 _conferenceEnded:endedCopy];
  v11 = objc_msgSend__existingConferenceForAVChat_(self, v8, endedCopy, v9, v10);
  objc_msgSend__queueAVConferenceForCleanup_(self, v12, v11, v13, v14);
}

- (BOOL)isMuteForAVChat:(id)chat
{
  chatCopy = chat;
  v9 = chatCopy;
  if (!chatCopy)
  {
    v24 = sub_254761764(0);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *v26 = 0;
      _os_log_impl(&dword_254743000, v24, OS_LOG_TYPE_DEFAULT, "No avChat", v26, 2u);
    }

    goto LABEL_9;
  }

  if (objc_msgSend__bustedCallID(chatCopy, v5, v6, v7, v8) < 1)
  {
LABEL_9:
    isMicrophoneMuted = 0;
    goto LABEL_10;
  }

  if ((objc_msgSend_isAVInterfaceReady(self, v10, v11, v12, v13) & 1) == 0)
  {
    objc_msgSend_initAVInterface(self, v14, v15, v16, v17);
  }

  v18 = objc_msgSend__existingConferenceForAVChat_(self, v14, v9, v16, v17);
  isMicrophoneMuted = objc_msgSend_isMicrophoneMuted(v18, v19, v20, v21, v22);

LABEL_10:
  return isMicrophoneMuted;
}

- (void)avChat:(id)chat setMute:(BOOL)mute
{
  muteCopy = mute;
  v33 = *MEMORY[0x277D85DE8];
  chatCopy = chat;
  if (chatCopy)
  {
    isAVInterfaceReady = objc_msgSend_isAVInterfaceReady(self, v6, v7, v8, v9);
    if ((isAVInterfaceReady & 1) == 0)
    {
      isAVInterfaceReady = objc_msgSend_initAVInterface(self, v12, v13, v14, v15);
    }

    v16 = sub_254761764(isAVInterfaceReady);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = @"NO";
      if (muteCopy)
      {
        v17 = @"YES";
      }

      v29 = 138412546;
      v30 = chatCopy;
      v31 = 2112;
      v32 = v17;
      _os_log_impl(&dword_254743000, v16, OS_LOG_TYPE_DEFAULT, "Setting %@ to muted: %@", &v29, 0x16u);
    }

    if (objc_msgSend_state(chatCopy, v18, v19, v20, v21) >= 5)
    {
      objc_msgSend__conferenceForAVChat_(self, v22, 0, v23, v24);
    }

    else
    {
      objc_msgSend__conferenceForAVChat_(self, v22, chatCopy, v23, v24);
    }
    v25 = ;
    objc_msgSend_setMicrophoneMuted_(v25, v26, muteCopy, v27, v28);
  }

  else
  {
    v25 = sub_254761764(0);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v29) = 0;
      _os_log_impl(&dword_254743000, v25, OS_LOG_TYPE_DEFAULT, "No avChat", &v29, 2u);
    }
  }
}

- (BOOL)isSendingAudioForAVChat:(id)chat
{
  v45 = *MEMORY[0x277D85DE8];
  chatCopy = chat;
  v9 = chatCopy;
  if (chatCopy)
  {
    if (objc_msgSend__bustedCallID(chatCopy, v5, v6, v7, v8) < 1)
    {
      v35 = 1;
      goto LABEL_17;
    }

    if ((objc_msgSend_isAVInterfaceReady(self, v10, v11, v12, v13) & 1) == 0)
    {
      objc_msgSend_initAVInterface(self, v14, v15, v16, v17);
    }

    v18 = objc_msgSend__existingConferenceForAVChat_(self, v14, v9, v16, v17);
    v38 = 0;
    v23 = objc_msgSend__bustedCallID(v9, v19, v20, v21, v22);
    v37 = 0;
    v25 = objc_msgSend_getIsAudioPaused_callID_error_(v18, v24, &v38, v23, &v37);
    v26 = v37;
    v27 = v26;
    if ((v25 & 1) == 0)
    {
      v28 = sub_254761764(v26);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v40 = v27;
        _os_log_impl(&dword_254743000, v28, OS_LOG_TYPE_DEFAULT, "[WARN] Failed to get audio sending state: %@", buf, 0xCu);
      }

      v38 = 0;
    }

    v29 = sub_254761764(v26);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v34 = objc_msgSend__bustedCallID(v9, v30, v31, v32, v33);
      *buf = 138412802;
      v40 = v9;
      v41 = 1024;
      v42 = v34;
      v43 = 1024;
      v44 = v38 ^ 1;
      _os_log_impl(&dword_254743000, v29, OS_LOG_TYPE_DEFAULT, "isSendingAudioFor: %@   callID: %d returning %d", buf, 0x18u);
    }

    v35 = v38 ^ 1;
  }

  else
  {
    v18 = sub_254761764(0);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_254743000, v18, OS_LOG_TYPE_DEFAULT, "No avChat", buf, 2u);
    }

    v35 = 0;
  }

LABEL_17:
  return v35 & 1;
}

- (void)avChat:(id)chat setSendingAudio:(BOOL)audio
{
  audioCopy = audio;
  v53 = *MEMORY[0x277D85DE8];
  chatCopy = chat;
  if (chatCopy)
  {
    isAVInterfaceReady = objc_msgSend_isAVInterfaceReady(self, v6, v7, v8, v9);
    if ((isAVInterfaceReady & 1) == 0)
    {
      isAVInterfaceReady = objc_msgSend_initAVInterface(self, v12, v13, v14, v15);
    }

    v16 = sub_254761764(isAVInterfaceReady);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      if (audioCopy)
      {
        v21 = @"YES";
      }

      else
      {
        v21 = @"NO";
      }

      *buf = 138412802;
      v48 = chatCopy;
      v49 = 2112;
      v50 = v21;
      v51 = 1024;
      v52 = objc_msgSend__bustedCallID(chatCopy, v17, v18, v19, v20);
      _os_log_impl(&dword_254743000, v16, OS_LOG_TYPE_DEFAULT, "Setting %@ to sending audio: %@  callID: %d", buf, 0x1Cu);
    }

    if (objc_msgSend_state(chatCopy, v22, v23, v24, v25) >= 5)
    {
      objc_msgSend__conferenceForAVChat_(self, v26, 0, v27, v28);
    }

    else
    {
      objc_msgSend__conferenceForAVChat_(self, v26, chatCopy, v27, v28);
    }
    v29 = ;
    v34 = objc_msgSend__bustedCallID(chatCopy, v30, v31, v32, v33);
    v46 = 0;
    v36 = objc_msgSend_setPauseAudio_callID_error_(v29, v35, !audioCopy, v34, &v46);
    v37 = v46;
    v38 = v37;
    if ((v36 & 1) == 0)
    {
      v39 = sub_254761764(v37);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        v44 = objc_msgSend__bustedCallID(chatCopy, v40, v41, v42, v43);
        *buf = 67109120;
        LODWORD(v48) = v44;
        _os_log_impl(&dword_254743000, v39, OS_LOG_TYPE_DEFAULT, "[WARN] Could not pause video for callID: %d", buf, 8u);
      }
    }

    if (v38)
    {
      v45 = sub_254761764(v37);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v48 = v38;
        _os_log_impl(&dword_254743000, v45, OS_LOG_TYPE_DEFAULT, "[WARN] Error pausing video: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v29 = sub_254761764(0);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_254743000, v29, OS_LOG_TYPE_DEFAULT, "No avChat", buf, 2u);
    }
  }
}

- (BOOL)isSendingVideoForAVChat:(id)chat
{
  v50 = *MEMORY[0x277D85DE8];
  chatCopy = chat;
  v9 = chatCopy;
  if (!chatCopy)
  {
    v31 = sub_254761764(0);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_254743000, v31, OS_LOG_TYPE_DEFAULT, "No avChat", buf, 2u);
    }

    v41 = 0;
    goto LABEL_19;
  }

  if (objc_msgSend__bustedCallID(chatCopy, v5, v6, v7, v8) < 1)
  {
    v41 = 1;
  }

  else
  {
    if (objc_msgSend_isVideo(v9, v10, v11, v12, v13))
    {
      isAVInterfaceReady = objc_msgSend_isAVInterfaceReady(self, v14, v15, v16, v17);
      if ((isAVInterfaceReady & 1) == 0)
      {
        isAVInterfaceReady = objc_msgSend_initAVInterface(self, v19, v20, v21, v22);
      }

      v23 = sub_254761764(isAVInterfaceReady);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v47 = v9;
        v48 = 1024;
        v49 = objc_msgSend__bustedCallID(v9, v24, v25, v26, v27);
        _os_log_impl(&dword_254743000, v23, OS_LOG_TYPE_DEFAULT, "isSendingVideoFor: %@   callID: %d", buf, 0x12u);
      }

      v31 = objc_msgSend__existingConferenceForAVChat_(self, v28, v9, v29, v30);
      v45 = 0;
      v36 = objc_msgSend__bustedCallID(v9, v32, v33, v34, v35);
      v44 = 0;
      v38 = objc_msgSend_getIsVideoPaused_callID_error_(v31, v37, &v45, v36, &v44);
      v39 = v44;
      v40 = v39;
      if (v38)
      {
        v41 = v45 ^ 1;
      }

      else
      {
        v42 = sub_254761764(v39);
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v47 = v40;
          _os_log_impl(&dword_254743000, v42, OS_LOG_TYPE_DEFAULT, "[WARN] Failed to get video sending state: %@", buf, 0xCu);
        }

        v41 = 1;
      }

LABEL_19:
      goto LABEL_20;
    }

    v41 = 0;
  }

LABEL_20:

  return v41 & 1;
}

- (void)avChat:(id)chat setSendingVideo:(BOOL)video
{
  videoCopy = video;
  v61 = *MEMORY[0x277D85DE8];
  chatCopy = chat;
  v11 = chatCopy;
  if (!chatCopy)
  {
    v34 = sub_254761764(0);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v55) = 0;
      _os_log_impl(&dword_254743000, v34, OS_LOG_TYPE_DEFAULT, "No avChat", &v55, 2u);
    }

    goto LABEL_23;
  }

  if (objc_msgSend_isVideo(chatCopy, v7, v8, v9, v10))
  {
    isAVInterfaceReady = objc_msgSend_isAVInterfaceReady(self, v12, v13, v14, v15);
    if ((isAVInterfaceReady & 1) == 0)
    {
      isAVInterfaceReady = objc_msgSend_initAVInterface(self, v17, v18, v19, v20);
    }

    v21 = sub_254761764(isAVInterfaceReady);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      if (videoCopy)
      {
        v26 = @"YES";
      }

      else
      {
        v26 = @"NO";
      }

      v55 = 138412802;
      v56 = v11;
      v57 = 2112;
      v58 = v26;
      v59 = 1024;
      v60 = objc_msgSend__bustedCallID(v11, v22, v23, v24, v25);
      _os_log_impl(&dword_254743000, v21, OS_LOG_TYPE_DEFAULT, "Setting %@ to sending video: %@  callID: %d", &v55, 0x1Cu);
    }

    if (objc_msgSend_state(v11, v27, v28, v29, v30) >= 5)
    {
      objc_msgSend__conferenceForAVChat_(self, v31, 0, v32, v33);
    }

    else
    {
      objc_msgSend__conferenceForAVChat_(self, v31, v11, v32, v33);
    }
    v34 = ;
    v39 = objc_msgSend_state(v11, v35, v36, v37, v38);
    if (v39 <= 3)
    {
      if (videoCopy)
      {
        v44 = objc_msgSend_isSendingVideoExpected(self, v40, v41, v42, v43);

        if (v44)
        {
          objc_msgSend_setSendingVideoExpected_(self, v40, 0, v42, v43);
        }
      }

      else
      {
        v45 = sub_254761764(v39);
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          v55 = 67109120;
          LODWORD(v56) = 0;
          _os_log_impl(&dword_254743000, v45, OS_LOG_TYPE_DEFAULT, "Attempted to pause AVConference's video before being connected, setting sendingVideoExpected to %d", &v55, 8u);
        }

        v49 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v46, 0, v47, v48);
        objc_msgSend_setSendingVideoExpected_(self, v50, v49, v51, v52);
      }
    }

    v53 = objc_msgSend__bustedCallID(v11, v40, v41, v42, v43);
    objc_msgSend_conference_callID_setPauseVideo_(self, v54, v34, v53, !videoCopy);
LABEL_23:
  }
}

- (void)conference:(id)conference callID:(int64_t)d setPauseVideo:(BOOL)video
{
  dCopy = d;
  v14 = *MEMORY[0x277D85DE8];
  v11 = 0;
  v6 = objc_msgSend_setPauseVideo_callID_error_(conference, a2, video, d, &v11);
  v7 = v11;
  v8 = v7;
  if ((v6 & 1) == 0)
  {
    v9 = sub_254761764(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v13) = dCopy;
      _os_log_impl(&dword_254743000, v9, OS_LOG_TYPE_DEFAULT, "[WARN] Could not pause video for callID: %d", buf, 8u);
    }
  }

  if (v8)
  {
    v10 = sub_254761764(v7);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = v8;
      _os_log_impl(&dword_254743000, v10, OS_LOG_TYPE_DEFAULT, "[WARN] Error pausing video: %@", buf, 0xCu);
    }
  }
}

- (BOOL)startPreviewWithError:(id *)error
{
  v6 = objc_msgSend_sharedInstance(MEMORY[0x277D07DB0], a2, error, v3, v4);
  v11 = objc_msgSend_faceTimeSupported(v6, v7, v8, v9, v10);

  if (v11)
  {
    if ((objc_msgSend_isAVInterfaceReady(self, v12, v13, v14, v15) & 1) == 0)
    {
      objc_msgSend_initAVInterface(self, v16, v17, v18, v19);
    }

    v20 = objc_msgSend_sharedInstance(IMAVLocalPreviewClient, v16, v17, v18, v19);
    objc_msgSend_startPreview(v20, v21, v22, v23, v24);
  }

  return v11;
}

- (BOOL)stopPreview
{
  v5 = objc_msgSend_sharedInstance(IMAVLocalPreviewClient, a2, v2, v3, v4);
  objc_msgSend_stopPreview(v5, v6, v7, v8, v9);

  return 1;
}

- (void)endAVConferenceWithChat:(id)chat callID:(int64_t)d
{
  v7 = objc_msgSend_GUID(chat, a2, chat, d, v4);
  v14 = objc_msgSend__existingConferenceForAVChatGUID_(self, v8, v7, v9, v10);

  objc_msgSend_stopCallID_(v14, v11, d, v12, v13);
}

- (void)_avChatDealloc:(id)dealloc
{
  v81 = *MEMORY[0x277D85DE8];
  deallocCopy = dealloc;
  v9 = deallocCopy;
  if (deallocCopy)
  {
    v10 = objc_msgSend__conferenceQueue(deallocCopy, v5, v6, v7, v8);

    if (v10)
    {
      v12 = sub_254761764(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v17 = objc_msgSend_GUID(v9, v13, v14, v15, v16);
        *buf = 138412546;
        v78 = v17;
        v79 = 1024;
        v80 = objc_msgSend__bustedCallID(v9, v18, v19, v20, v21);
        _os_log_impl(&dword_254743000, v12, OS_LOG_TYPE_DEFAULT, "DEALLOC AVChat with guid: %@  callID: %d", buf, 0x12u);
      }

      v23 = sub_254761764(v22);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v78 = v9;
        _os_log_impl(&dword_254743000, v23, OS_LOG_TYPE_DEFAULT, "chat: %@", buf, 0xCu);
      }

      v28 = objc_msgSend_GUID(v9, v24, v25, v26, v27);
      v32 = objc_msgSend__existingConferenceForAVChatGUID_(self, v29, v28, v30, v31);

      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      v66 = v9;
      v37 = objc_msgSend_remoteParticipants(v9, v33, v34, v35, v36);
      v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v37, v38, &v71, v76, 16);
      if (v39)
      {
        v44 = v39;
        v45 = *v72;
        do
        {
          for (i = 0; i != v44; ++i)
          {
            if (*v72 != v45)
            {
              objc_enumerationMutation(v37);
            }

            v47 = *(*(&v71 + 1) + 8 * i);
            v67 = 0u;
            v68 = 0u;
            v69 = 0u;
            v70 = 0u;
            v48 = objc_msgSend__participantsCallInfo(v47, v40, v41, v42, v43);
            v50 = objc_msgSend_countByEnumeratingWithState_objects_count_(v48, v49, &v67, v75, 16);
            if (v50)
            {
              v54 = v50;
              v55 = *v68;
              do
              {
                for (j = 0; j != v54; ++j)
                {
                  if (*v68 != v55)
                  {
                    objc_enumerationMutation(v48);
                  }

                  v57 = *(*(&v67 + 1) + 8 * j);
                  objc_msgSend_setState_(v57, v51, 4, v52, v53);
                  v62 = objc_msgSend_callID(v57, v58, v59, v60, v61);
                  objc_msgSend_stopCallID_(v32, v63, v62, v64, v65);
                }

                v54 = objc_msgSend_countByEnumeratingWithState_objects_count_(v48, v51, &v67, v75, 16);
              }

              while (v54);
            }
          }

          v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(v37, v40, &v71, v76, 16);
        }

        while (v44);
      }

      v9 = v66;
    }
  }
}

- (int)avChat:(id)chat endConferenceForUserID:(id)d
{
  v104 = *MEMORY[0x277D85DE8];
  chatCopy = chat;
  dCopy = d;
  if (!chatCopy)
  {
    goto LABEL_25;
  }

  v12 = objc_msgSend_sharedInstance(IMAVController, v7, v8, v9, v10);
  if (!objc_msgSend__shouldRunConferences(v12, v13, v14, v15, v16))
  {
    v22 = objc_msgSend_sharedInstance(IMAVController, v17, v18, v19, v20);
    shouldRunACConferences = objc_msgSend__shouldRunACConferences(v22, v23, v24, v25, v26);

    if (shouldRunACConferences)
    {
      goto LABEL_5;
    }

LABEL_25:
    v84 = 0;
    goto LABEL_28;
  }

LABEL_5:
  v28 = sub_254761764(v21);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v99 = chatCopy;
    v100 = 2112;
    v101 = dCopy;
    _os_log_impl(&dword_254743000, v28, OS_LOG_TYPE_DEFAULT, "chat: %@  userID: %@", buf, 0x16u);
  }

  v32 = objc_msgSend__existingConferenceForAVChat_(self, v29, chatCopy, v30, v31);
  v33 = v32;
  if (v32)
  {
    v86 = dCopy;
    v34 = sub_254761764(v32);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v39 = objc_msgSend_otherIMHandle(chatCopy, v35, v36, v37, v38);
      v44 = objc_msgSend_ID(v39, v40, v41, v42, v43);
      v49 = objc_msgSend__bustedCallID(chatCopy, v45, v46, v47, v48);
      *buf = 138412802;
      v99 = v44;
      v100 = 2112;
      v101 = v33;
      v102 = 1024;
      v103 = v49;
      _os_log_impl(&dword_254743000, v34, OS_LOG_TYPE_DEFAULT, "Stopping AVConference with: %@ (%@)  callID: %d", buf, 0x1Cu);
    }

    objc_msgSend_updateAVChat_withCallMetadata_isFinalUpdate_(self, v50, chatCopy, 0, 1);
    v94 = 0u;
    v95 = 0u;
    v92 = 0u;
    v93 = 0u;
    v87 = chatCopy;
    v55 = objc_msgSend_remoteParticipants(chatCopy, v51, v52, v53, v54);
    v57 = objc_msgSend_countByEnumeratingWithState_objects_count_(v55, v56, &v92, v97, 16);
    if (v57)
    {
      v62 = v57;
      v63 = *v93;
      do
      {
        for (i = 0; i != v62; ++i)
        {
          if (*v93 != v63)
          {
            objc_enumerationMutation(v55);
          }

          v65 = *(*(&v92 + 1) + 8 * i);
          v88 = 0u;
          v89 = 0u;
          v90 = 0u;
          v91 = 0u;
          v66 = objc_msgSend__participantsCallInfo(v65, v58, v59, v60, v61, v86);
          v68 = objc_msgSend_countByEnumeratingWithState_objects_count_(v66, v67, &v88, v96, 16);
          if (v68)
          {
            v72 = v68;
            v73 = *v89;
            do
            {
              for (j = 0; j != v72; ++j)
              {
                if (*v89 != v73)
                {
                  objc_enumerationMutation(v66);
                }

                v75 = *(*(&v88 + 1) + 8 * j);
                objc_msgSend_setState_(v75, v69, 4, v70, v71);
                v80 = objc_msgSend_callID(v75, v76, v77, v78, v79);
                objc_msgSend_stopCallID_(v33, v81, v80, v82, v83);
              }

              v72 = objc_msgSend_countByEnumeratingWithState_objects_count_(v66, v69, &v88, v96, 16);
            }

            while (v72);
          }
        }

        v62 = objc_msgSend_countByEnumeratingWithState_objects_count_(v55, v58, &v92, v97, 16);
      }

      while (v62);
    }

    v84 = 1;
    dCopy = v86;
    chatCopy = v87;
  }

  else
  {
    v84 = 0;
  }

LABEL_28:
  return v84;
}

- (void)cancelConferenceForAVChat:(id)chat
{
  v97 = *MEMORY[0x277D85DE8];
  chatCopy = chat;
  v5 = sub_254761764(chatCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v92 = chatCopy;
    _os_log_impl(&dword_254743000, v5, OS_LOG_TYPE_DEFAULT, "chat: %@", buf, 0xCu);
  }

  if (chatCopy)
  {
    v11 = objc_msgSend_sharedInstance(IMAVController, v7, v8, v9, v10);
    if (objc_msgSend__shouldRunConferences(v11, v12, v13, v14, v15))
    {

LABEL_7:
      v29 = objc_msgSend__existingConferenceForAVChat_(self, v20, chatCopy, v21, v22);
      v30 = sub_254761764(v29);
      v31 = os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);
      if (v29)
      {
        if (v31)
        {
          v36 = objc_msgSend_otherIMHandle(chatCopy, v32, v33, v34, v35);
          v41 = objc_msgSend_ID(v36, v37, v38, v39, v40);
          v46 = objc_msgSend__bustedCallID(chatCopy, v42, v43, v44, v45);
          *buf = 138412802;
          v92 = v41;
          v93 = 2112;
          v94 = v29;
          v95 = 1024;
          v96 = v46;
          _os_log_impl(&dword_254743000, v30, OS_LOG_TYPE_DEFAULT, "Canceling AVConference with: %@ (%@)  callID: %d", buf, 0x1Cu);
        }

        objc_msgSend_updateAVChat_withCallMetadata_isFinalUpdate_(self, v47, chatCopy, 0, 1);
        v87 = 0u;
        v88 = 0u;
        v85 = 0u;
        v86 = 0u;
        v30 = objc_msgSend_remoteParticipants(chatCopy, v48, v49, v50, v51);
        v53 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v52, &v85, v90, 16);
        if (v53)
        {
          v58 = v53;
          v80 = chatCopy;
          v59 = *v86;
          do
          {
            for (i = 0; i != v58; ++i)
            {
              if (*v86 != v59)
              {
                objc_enumerationMutation(v30);
              }

              v61 = *(*(&v85 + 1) + 8 * i);
              v81 = 0u;
              v82 = 0u;
              v83 = 0u;
              v84 = 0u;
              v62 = objc_msgSend__participantsCallInfo(v61, v54, v55, v56, v57);
              v64 = objc_msgSend_countByEnumeratingWithState_objects_count_(v62, v63, &v81, v89, 16);
              if (v64)
              {
                v68 = v64;
                v69 = *v82;
                do
                {
                  for (j = 0; j != v68; ++j)
                  {
                    if (*v82 != v69)
                    {
                      objc_enumerationMutation(v62);
                    }

                    v71 = *(*(&v81 + 1) + 8 * j);
                    objc_msgSend_setState_(v71, v65, 4, v66, v67);
                    v76 = objc_msgSend_callID(v71, v72, v73, v74, v75);
                    objc_msgSend_cancelCallID_(v29, v77, v76, v78, v79);
                  }

                  v68 = objc_msgSend_countByEnumeratingWithState_objects_count_(v62, v65, &v81, v89, 16);
                }

                while (v68);
              }
            }

            v58 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v54, &v85, v90, 16);
          }

          while (v58);
          chatCopy = v80;
        }
      }

      else if (v31)
      {
        *buf = 138412290;
        v92 = chatCopy;
        _os_log_impl(&dword_254743000, v30, OS_LOG_TYPE_DEFAULT, "Not conference found to cancel for chat: %@", buf, 0xCu);
      }

      goto LABEL_30;
    }

    v23 = objc_msgSend_sharedInstance(IMAVController, v16, v17, v18, v19);
    shouldRunACConferences = objc_msgSend__shouldRunACConferences(v23, v24, v25, v26, v27);

    if (shouldRunACConferences)
    {
      goto LABEL_7;
    }
  }

  v29 = sub_254761764(v6);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_254743000, v29, OS_LOG_TYPE_DEFAULT, "Not canceling conference for chat because chat is nil or this process doesn't run conferences", buf, 2u);
  }

LABEL_30:
}

- (void)_notifyAboutPotentialCallForChat:(id)chat
{
  v17 = *MEMORY[0x277D85DE8];
  chatCopy = chat;
  v14.receiver = self;
  v14.super_class = IMAVConferenceInterface;
  [(IMAVInterface *)&v14 _notifyAboutPotentialCallForChat:chatCopy];
  if (chatCopy)
  {
    v8 = objc_msgSend__conferenceForAVChat_(self, v5, chatCopy, v6, v7);
    v9 = sub_254761764(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = v8;
      _os_log_impl(&dword_254743000, v9, OS_LOG_TYPE_DEFAULT, "Warming up conference %@", buf, 0xCu);
    }

    objc_msgSend_warmupForCall(v8, v10, v11, v12, v13);
  }
}

- (id)getNatIPFromICEData:(id)data
{
  v25 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v4 = sub_254761764(dataCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 138412290;
    v24 = dataCopy;
    _os_log_impl(&dword_254743000, v4, OS_LOG_TYPE_DEFAULT, "Data: %@", &v23, 0xCu);
  }

  v9 = objc_msgSend_sharedInstance(MEMORY[0x277D07DB0], v5, v6, v7, v8);
  v14 = objc_msgSend_faceTimeSupported(v9, v10, v11, v12, v13);

  v18 = 0;
  if (dataCopy && v14)
  {
    v18 = objc_msgSend_externalAddressForSelfConnectionBlob_(qword_28134A5C0, v15, dataCopy, v16, v17);
    v19 = sub_254761764(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 138412290;
      v24 = v18;
      _os_log_impl(&dword_254743000, v19, OS_LOG_TYPE_DEFAULT, "returned result: %@", &v23, 0xCu);
    }

    if (!v18)
    {
      v21 = sub_254761764(v20);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v23) = 0;
        _os_log_impl(&dword_254743000, v21, OS_LOG_TYPE_DEFAULT, "[WARN] No nat-ip returned for data blob", &v23, 2u);
      }
    }
  }

  return v18;
}

- (id)natTypeForAVChat:(id)chat
{
  v44 = *MEMORY[0x277D85DE8];
  chatCopy = chat;
  if (chatCopy)
  {
    v12 = objc_msgSend__existingConferenceForAVChat_(self, v4, chatCopy, v5, v6);
    if (v12)
    {
      v13 = objc_msgSend__timings(chatCopy, v8, v9, v10, v11);
      objc_msgSend_startTimingForKey_(v13, v14, @"connection-data-nat-type-time", v15, v16);

      v21 = objc_msgSend_natType(v12, v17, v18, v19, v20);
      v26 = objc_msgSend__timings(chatCopy, v22, v23, v24, v25);
      objc_msgSend_stopTimingForKey_(v26, v27, @"connection-data-nat-type-time", v28, v29);

      v31 = sub_254761764(v30);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v42 = 67109120;
        v43 = v21;
        _os_log_impl(&dword_254743000, v31, OS_LOG_TYPE_DEFAULT, "natType: %u", &v42, 8u);
      }

      if (CFPreferencesGetAppBooleanValue(@"UseCustomNatType", @"com.apple.conference", 0))
      {
        v21 = IMGetDomainIntForKey();
        v35 = sub_254761764(v21);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          v42 = 67109120;
          v43 = v21;
          _os_log_impl(&dword_254743000, v35, OS_LOG_TYPE_DEFAULT, "overriding natType: %u", &v42, 8u);
        }
      }

      v36 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v32, v21, v33, v34);
    }

    else
    {
      v36 = 0;
    }
  }

  else
  {
    v37 = sub_254761764(0);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v42) = 0;
      _os_log_impl(&dword_254743000, v37, OS_LOG_TYPE_DEFAULT, "No avChat", &v42, 2u);
    }

    v36 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v38, 0, v39, v40);
  }

  return v36;
}

- (void)avChat:(id)chat prepareConnectionWithCallInfo:(id)info
{
  v61 = *MEMORY[0x277D85DE8];
  chatCopy = chat;
  infoCopy = info;
  v8 = sub_254761764(infoCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v58 = chatCopy;
    v59 = 2112;
    v60 = infoCopy;
    _os_log_impl(&dword_254743000, v8, OS_LOG_TYPE_DEFAULT, "avChat: %@  callInfo: %@", buf, 0x16u);
  }

  if (chatCopy)
  {
    v14 = objc_msgSend_sharedInstance(IMAVController, v10, v11, v12, v13);
    if (objc_msgSend__shouldRunConferences(v14, v15, v16, v17, v18))
    {

LABEL_9:
      v27 = objc_msgSend_otherIMHandle(chatCopy, v23, v24, v25, v26);
      v39 = objc_msgSend_participantMatchingIMHandle_(chatCopy, v36, v27, v37, v38);
      v43 = objc_msgSend__conferenceForAVChat_(self, v40, chatCopy, v41, v42);
      v48 = objc_msgSend__conferenceQueue(chatCopy, v44, v45, v46, v47);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_25476E930;
      block[3] = &unk_2797837B0;
      v52 = chatCopy;
      selfCopy = self;
      v54 = infoCopy;
      v55 = v43;
      v56 = v39;
      v49 = v39;
      v50 = v43;
      dispatch_async(v48, block);

      goto LABEL_13;
    }

    v29 = objc_msgSend_sharedInstance(IMAVController, v19, v20, v21, v22);
    shouldRunACConferences = objc_msgSend__shouldRunACConferences(v29, v30, v31, v32, v33);

    if (shouldRunACConferences)
    {
      goto LABEL_9;
    }

    v27 = sub_254761764(v35);
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    *buf = 0;
    v28 = "Returning because we are not the VC host";
LABEL_12:
    _os_log_impl(&dword_254743000, v27, OS_LOG_TYPE_DEFAULT, v28, buf, 2u);
    goto LABEL_13;
  }

  v27 = sub_254761764(v9);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v28 = "No avChat";
    goto LABEL_12;
  }

LABEL_13:
}

- (BOOL)avChat:(id)chat generateCallInfoForID:(id)d service:(id)service usingRelay:(BOOL)relay callInfo:(id)info
{
  v78 = *MEMORY[0x277D85DE8];
  chatCopy = chat;
  dCopy = d;
  serviceCopy = service;
  infoCopy = info;
  v19 = infoCopy;
  if (chatCopy && (infoCopy = objc_msgSend_state(chatCopy, v15, v16, v17, v18), infoCopy != 5))
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v75 = sub_25476FD7C;
    v76 = sub_25476FD8C;
    v77 = 0;
    v72[0] = 0;
    v72[1] = v72;
    v72[2] = 0x3032000000;
    v72[3] = sub_25476FD7C;
    v72[4] = sub_25476FD8C;
    v73 = 0;
    v25 = objc_msgSend__conferenceForAVChat_(self, v20, chatCopy, v21, v22);
    v30 = objc_msgSend__timings(chatCopy, v26, v27, v28, v29);
    objc_msgSend_stopTimingForKey_(v30, v31, @"time-to-query-for-connection-data-gathering", v32, v33);

    v38 = objc_msgSend__timings(chatCopy, v34, v35, v36, v37);
    objc_msgSend_startTimingForKey_(v38, v39, @"full-connection-data-gather", v40, v41);

    v46 = objc_msgSend__conferenceQueue(chatCopy, v42, v43, v44, v45);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_25476FD94;
    block[3] = &unk_279783800;
    v47 = chatCopy;
    v65 = v47;
    selfCopy = self;
    v48 = v25;
    v67 = v48;
    v49 = v19;
    v68 = v49;
    v69 = dCopy;
    v70 = buf;
    v71 = v72;
    dispatch_sync(v46, block);

    v54 = objc_msgSend__timings(v47, v50, v51, v52, v53);
    objc_msgSend_stopTimingForKey_(v54, v55, @"full-connection-data-gather", v56, v57);

    v62 = objc_msgSend_localICEData(v49, v58, v59, v60, v61);
    v24 = v62 != 0;

    _Block_object_dispose(v72, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v23 = sub_254761764(infoCopy);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *&buf[4] = dCopy;
      *&buf[12] = 2112;
      *&buf[14] = chatCopy;
      _os_log_impl(&dword_254743000, v23, OS_LOG_TYPE_DEFAULT, "Tried to get connection data for: %@  in a dead call: %@   => returning nil", buf, 0x16u);
    }

    v24 = 0;
  }

  return v24;
}

- (void)conference:(id)conference didStartSession:(BOOL)session withUserInfo:(id)info
{
  sessionCopy = session;
  v29 = *MEMORY[0x277D85DE8];
  conferenceCopy = conference;
  infoCopy = info;
  v10 = sub_254761764(infoCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = @"NO";
    if (sessionCopy)
    {
      v11 = @"YES";
    }

    *buf = 138412290;
    v28 = v11;
    _os_log_impl(&dword_254743000, v10, OS_LOG_TYPE_DEFAULT, "Informed that conference did start: %@", buf, 0xCu);
  }

  v16 = objc_msgSend_mainThread(MEMORY[0x277CCACC8], v12, v13, v14, v15);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = sub_254770A54;
  v22[3] = &unk_279783828;
  v26 = sessionCopy;
  v23 = conferenceCopy;
  v24 = infoCopy;
  selfCopy = self;
  v17 = infoCopy;
  v18 = conferenceCopy;
  objc_msgSend___im_performBlock_(v16, v19, v22, v20, v21);
}

- (void)conference:(id)conference didStopWithCallID:(int64_t)d error:(id)error callMetadata:(id)metadata
{
  v33 = *MEMORY[0x277D85DE8];
  conferenceCopy = conference;
  errorCopy = error;
  metadataCopy = metadata;
  v13 = sub_254761764(metadataCopy);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    dCopy = d;
    _os_log_impl(&dword_254743000, v13, OS_LOG_TYPE_DEFAULT, "Informed that conference did stop with callID: %ld", buf, 0xCu);
  }

  v18 = objc_msgSend_mainThread(MEMORY[0x277CCACC8], v14, v15, v16, v17);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = sub_2547711D8;
  v25[3] = &unk_279783850;
  selfCopy = self;
  dCopy2 = d;
  v26 = conferenceCopy;
  v27 = errorCopy;
  v28 = metadataCopy;
  v19 = metadataCopy;
  v20 = errorCopy;
  v21 = conferenceCopy;
  objc_msgSend___im_performBlock_(v18, v22, v25, v23, v24);
}

- (void)conference:(id)conference updateInputFrequencyLevel:(id)level
{
  conferenceCopy = conference;
  levelCopy = level;
  v12 = objc_msgSend_mainThread(MEMORY[0x277CCACC8], v8, v9, v10, v11);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_2547714D0;
  v18[3] = &unk_279783760;
  v18[4] = self;
  v19 = conferenceCopy;
  v20 = levelCopy;
  v13 = levelCopy;
  v14 = conferenceCopy;
  objc_msgSend___im_performBlock_(v12, v15, v18, v16, v17);
}

- (void)conference:(id)conference updateOutputFrequencyLevel:(id)level
{
  conferenceCopy = conference;
  levelCopy = level;
  v12 = objc_msgSend_mainThread(MEMORY[0x277CCACC8], v8, v9, v10, v11);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_254771620;
  v18[3] = &unk_279783760;
  v18[4] = self;
  v19 = conferenceCopy;
  v20 = levelCopy;
  v13 = levelCopy;
  v14 = conferenceCopy;
  objc_msgSend___im_performBlock_(v12, v15, v18, v16, v17);
}

- (void)conference:(id)conference receivedFirstRemoteFrameForCallID:(int64_t)d
{
  v23 = *MEMORY[0x277D85DE8];
  conferenceCopy = conference;
  v7 = sub_254761764(conferenceCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    dCopy = d;
    _os_log_impl(&dword_254743000, v7, OS_LOG_TYPE_DEFAULT, "Informed about first remote frame for call ID: %d", buf, 8u);
  }

  v12 = objc_msgSend_mainThread(MEMORY[0x277CCACC8], v8, v9, v10, v11);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_2547717D0;
  v17[3] = &unk_279783878;
  selfCopy = self;
  dCopy2 = d;
  v18 = conferenceCopy;
  v13 = conferenceCopy;
  objc_msgSend___im_performBlock_(v12, v14, v17, v15, v16);
}

+ (void)_postParticipantMediaChangeNotification:(id)notification cameraChanged:(BOOL)changed orientationChanged:(BOOL)orientationChanged aspectChanged:(BOOL)aspectChanged contentRectChanged:(BOOL)rectChanged cameraWillSwitch:(BOOL)switch camera:(unsigned int)camera orentation:(unsigned int)self0 aspect:(CGSize)self1 contentRect:(CGRect)self2
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v16 = aspect.height;
  v17 = aspect.width;
  notificationCopy = notification;
  v28 = objc_msgSend_mainThread(MEMORY[0x277CCACC8], v24, v25, v26, v27);
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = sub_254771B68;
  v33[3] = &unk_2797838A0;
  changedCopy = changed;
  orientationChangedCopy = orientationChanged;
  aspectChangedCopy = aspectChanged;
  switchCopy = switch;
  rectChangedCopy = rectChanged;
  v35 = x;
  v36 = y;
  v37 = width;
  v38 = height;
  cameraCopy = camera;
  orentationCopy = orentation;
  v39 = v17;
  v40 = v16;
  v34 = notificationCopy;
  v29 = notificationCopy;
  objc_msgSend___im_performBlock_(v28, v30, v33, v31, v32);
}

+ (void)_postParticipantScreenAttributesChangeNotification:(id)notification cameraChanged:(BOOL)changed orientationChanged:(BOOL)orientationChanged aspectChanged:(BOOL)aspectChanged cameraWillSwitch:(BOOL)switch camera:(unsigned int)camera orentation:(unsigned int)orentation aspect:(CGSize)self0
{
  height = aspect.height;
  width = aspect.width;
  notificationCopy = notification;
  v21 = objc_msgSend_mainThread(MEMORY[0x277CCACC8], v17, v18, v19, v20);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = sub_254771E60;
  v26[3] = &unk_2797838C8;
  changedCopy = changed;
  orientationChangedCopy = orientationChanged;
  aspectChangedCopy = aspectChanged;
  switchCopy = switch;
  orentationCopy = orentation;
  v28 = width;
  v29 = height;
  v27 = notificationCopy;
  v22 = notificationCopy;
  objc_msgSend___im_performBlock_(v21, v23, v26, v24, v25);
}

- (void)conference:(id)conference remoteScreenAttributesChanged:(id)changed callID:(int64_t)d
{
  conferenceCopy = conference;
  changedCopy = changed;
  v14 = objc_msgSend_mainThread(MEMORY[0x277CCACC8], v10, v11, v12, v13);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_25477206C;
  v20[3] = &unk_2797838F0;
  v21 = conferenceCopy;
  v22 = changedCopy;
  selfCopy = self;
  dCopy = d;
  v15 = changedCopy;
  v16 = conferenceCopy;
  objc_msgSend___im_performBlock_(v14, v17, v20, v18, v19);
}

- (void)conference:(id)conference remoteVideoAttributesChanged:(id)changed callID:(int64_t)d
{
  conferenceCopy = conference;
  changedCopy = changed;
  v14 = objc_msgSend_mainThread(MEMORY[0x277CCACC8], v10, v11, v12, v13);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_254772620;
  v20[3] = &unk_2797838F0;
  v21 = conferenceCopy;
  selfCopy = self;
  v23 = changedCopy;
  dCopy = d;
  v15 = changedCopy;
  v16 = conferenceCopy;
  objc_msgSend___im_performBlock_(v14, v17, v20, v18, v19);
}

- (void)conference:(id)conference inititiateRelayRequest:(int64_t)request requestDict:(id)dict
{
  conferenceCopy = conference;
  dictCopy = dict;
  v14 = objc_msgSend_mainThread(MEMORY[0x277CCACC8], v10, v11, v12, v13);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_254772C14;
  v20[3] = &unk_2797838F0;
  v21 = conferenceCopy;
  v22 = dictCopy;
  selfCopy = self;
  requestCopy = request;
  v15 = dictCopy;
  v16 = conferenceCopy;
  objc_msgSend___im_performBlock_(v14, v17, v20, v18, v19);
}

- (void)conference:(id)conference sendRelayUpdate:(int64_t)update updateDict:(id)dict
{
  conferenceCopy = conference;
  dictCopy = dict;
  v14 = objc_msgSend_mainThread(MEMORY[0x277CCACC8], v10, v11, v12, v13);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_254773714;
  v20[3] = &unk_2797838F0;
  v21 = conferenceCopy;
  v22 = dictCopy;
  selfCopy = self;
  updateCopy = update;
  v15 = dictCopy;
  v16 = conferenceCopy;
  objc_msgSend___im_performBlock_(v14, v17, v20, v18, v19);
}

- (void)conference:(id)conference cancelRelayRequest:(int64_t)request requestDict:(id)dict
{
  conferenceCopy = conference;
  dictCopy = dict;
  v14 = objc_msgSend_mainThread(MEMORY[0x277CCACC8], v10, v11, v12, v13);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_254773A2C;
  v20[3] = &unk_2797838F0;
  v21 = conferenceCopy;
  v22 = dictCopy;
  selfCopy = self;
  requestCopy = request;
  v15 = dictCopy;
  v16 = conferenceCopy;
  objc_msgSend___im_performBlock_(v14, v17, v20, v18, v19);
}

- (void)conference:(id)conference withCallID:(int64_t)d networkHint:(BOOL)hint
{
  conferenceCopy = conference;
  v13 = objc_msgSend_mainThread(MEMORY[0x277CCACC8], v9, v10, v11, v12);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_254773D2C;
  v18[3] = &unk_279783918;
  selfCopy = self;
  dCopy = d;
  hintCopy = hint;
  v19 = conferenceCopy;
  v14 = conferenceCopy;
  objc_msgSend___im_performBlock_(v13, v15, v18, v16, v17);
}

- (void)conference:(id)conference videoQualityNotificationForCallID:(int64_t)d isDegraded:(BOOL)degraded isRemote:(BOOL)remote
{
  conferenceCopy = conference;
  v15 = objc_msgSend_mainThread(MEMORY[0x277CCACC8], v11, v12, v13, v14);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_254773F00;
  v20[3] = &unk_279783940;
  selfCopy = self;
  dCopy = d;
  degradedCopy = degraded;
  remoteCopy = remote;
  v21 = conferenceCopy;
  v16 = conferenceCopy;
  objc_msgSend___im_performBlock_(v15, v17, v20, v18, v19);
}

- (void)conference:(id)conference withCallID:(int64_t)d remoteMediaStalled:(BOOL)stalled
{
  conferenceCopy = conference;
  v13 = objc_msgSend_mainThread(MEMORY[0x277CCACC8], v9, v10, v11, v12);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_254774198;
  v18[3] = &unk_279783918;
  selfCopy = self;
  dCopy = d;
  stalledCopy = stalled;
  v19 = conferenceCopy;
  v14 = conferenceCopy;
  objc_msgSend___im_performBlock_(v13, v15, v18, v16, v17);
}

- (void)conference:(id)conference reinitializeCallForCallID:(unsigned int)d
{
  v22 = *MEMORY[0x277D85DE8];
  conferenceCopy = conference;
  v7 = sub_254761764(conferenceCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    dCopy = d;
    _os_log_impl(&dword_254743000, v7, OS_LOG_TYPE_DEFAULT, "Told to reinitialize call for callID %d", buf, 8u);
  }

  v12 = objc_msgSend_mainThread(MEMORY[0x277CCACC8], v8, v9, v10, v11);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_254774490;
  v17[3] = &unk_279783968;
  v17[4] = self;
  v18 = conferenceCopy;
  dCopy2 = d;
  v13 = conferenceCopy;
  objc_msgSend___im_performBlock_(v12, v14, v17, v15, v16);
}

- (void)conference:(id)conference withCallID:(int64_t)d didPauseAudio:(BOOL)audio error:(id)error
{
  audioCopy = audio;
  v34 = *MEMORY[0x277D85DE8];
  conferenceCopy = conference;
  errorCopy = error;
  v12 = sub_254761764(errorCopy);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v27 = conferenceCopy;
    v28 = 1024;
    v29 = audioCopy;
    v30 = 1024;
    dCopy = d;
    v32 = 2112;
    v33 = errorCopy;
    _os_log_impl(&dword_254743000, v12, OS_LOG_TYPE_DEFAULT, "vc: %@  didPauseAudio: %d callID: %d error: %@", buf, 0x22u);
  }

  v17 = objc_msgSend_mainThread(MEMORY[0x277CCACC8], v13, v14, v15, v16);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = sub_254774724;
  v22[3] = &unk_279783918;
  v22[4] = self;
  v23 = conferenceCopy;
  dCopy2 = d;
  v25 = audioCopy;
  v18 = conferenceCopy;
  objc_msgSend___im_performBlock_(v17, v19, v22, v20, v21);
}

- (void)conference:(id)conference remoteAudioPaused:(BOOL)paused callID:(int64_t)d
{
  pausedCopy = paused;
  v33 = *MEMORY[0x277D85DE8];
  conferenceCopy = conference;
  v9 = sub_254761764(conferenceCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v28 = conferenceCopy;
    v29 = 1024;
    v30 = pausedCopy;
    v31 = 1024;
    dCopy = d;
    _os_log_impl(&dword_254743000, v9, OS_LOG_TYPE_DEFAULT, "vc: %@  remoteAudioPaused: %d callID: %d", buf, 0x18u);
  }

  v11 = sub_254761764(v10);
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (pausedCopy)
  {
    if (v12)
    {
      *buf = 67109120;
      LODWORD(v28) = d;
      v13 = "Informed about remote audio muted for call ID: %d";
LABEL_8:
      _os_log_impl(&dword_254743000, v11, OS_LOG_TYPE_DEFAULT, v13, buf, 8u);
    }
  }

  else if (v12)
  {
    *buf = 67109120;
    LODWORD(v28) = d;
    v13 = "Informed about remote audio unmuted for call ID: %d";
    goto LABEL_8;
  }

  v18 = objc_msgSend_mainThread(MEMORY[0x277CCACC8], v14, v15, v16, v17);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = sub_254774964;
  v23[3] = &unk_279783918;
  v23[4] = self;
  v24 = conferenceCopy;
  dCopy2 = d;
  v26 = pausedCopy;
  v19 = conferenceCopy;
  objc_msgSend___im_performBlock_(v18, v20, v23, v21, v22);
}

- (void)conference:(id)conference remoteVideoPaused:(BOOL)paused callID:(int64_t)d
{
  pausedCopy = paused;
  v33 = *MEMORY[0x277D85DE8];
  conferenceCopy = conference;
  v9 = sub_254761764(conferenceCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v28 = conferenceCopy;
    v29 = 1024;
    v30 = pausedCopy;
    v31 = 1024;
    dCopy = d;
    _os_log_impl(&dword_254743000, v9, OS_LOG_TYPE_DEFAULT, "vc: %@  videoPaused: %d callID: %d", buf, 0x18u);
  }

  v11 = sub_254761764(v10);
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (pausedCopy)
  {
    if (v12)
    {
      *buf = 67109120;
      LODWORD(v28) = d;
      v13 = "Informed about remote video paused for call ID: %d";
LABEL_8:
      _os_log_impl(&dword_254743000, v11, OS_LOG_TYPE_DEFAULT, v13, buf, 8u);
    }
  }

  else if (v12)
  {
    *buf = 67109120;
    LODWORD(v28) = d;
    v13 = "Informed about remote video unpaused for call ID: %d";
    goto LABEL_8;
  }

  v18 = objc_msgSend_mainThread(MEMORY[0x277CCACC8], v14, v15, v16, v17);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = sub_254774C3C;
  v23[3] = &unk_279783918;
  v23[4] = self;
  v24 = conferenceCopy;
  dCopy2 = d;
  v26 = pausedCopy;
  v19 = conferenceCopy;
  objc_msgSend___im_performBlock_(v18, v20, v23, v21, v22);
}

- (void)conference:(id)conference localIPChange:(id)change withCallID:(int64_t)d
{
  v33 = *MEMORY[0x277D85DE8];
  conferenceCopy = conference;
  changeCopy = change;
  v10 = sub_254761764(changeCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v28 = conferenceCopy;
    v29 = 2112;
    v30 = changeCopy;
    v31 = 1024;
    dCopy = d;
    _os_log_impl(&dword_254743000, v10, OS_LOG_TYPE_DEFAULT, "vc: %@  newBlob: %@ callID: %d", buf, 0x1Cu);
  }

  v12 = sub_254761764(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v28) = d;
    _os_log_impl(&dword_254743000, v12, OS_LOG_TYPE_DEFAULT, "Informed about local IP changing for call ID: %d", buf, 8u);
  }

  v17 = objc_msgSend_mainThread(MEMORY[0x277CCACC8], v13, v14, v15, v16);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = sub_254774F14;
  v23[3] = &unk_2797838F0;
  v23[4] = self;
  v24 = conferenceCopy;
  v25 = changeCopy;
  dCopy2 = d;
  v18 = changeCopy;
  v19 = conferenceCopy;
  objc_msgSend___im_performBlock_(v17, v20, v23, v21, v22);
}

- (void)conference:(id)conference didChangeLocalVariablesForCallID:(int64_t)d
{
  v24 = *MEMORY[0x277D85DE8];
  conferenceCopy = conference;
  v7 = sub_254761764(conferenceCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v21 = conferenceCopy;
    v22 = 1024;
    dCopy = d;
    _os_log_impl(&dword_254743000, v7, OS_LOG_TYPE_DEFAULT, "vc: %@  callID: %d", buf, 0x12u);
  }

  v12 = objc_msgSend_mainThread(MEMORY[0x277CCACC8], v8, v9, v10, v11);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_254775104;
  v17[3] = &unk_279783878;
  v17[4] = self;
  v18 = conferenceCopy;
  dCopy2 = d;
  v13 = conferenceCopy;
  objc_msgSend___im_performBlock_(v12, v14, v17, v15, v16);
}

- (void)serverDiedForConference:(id)conference
{
  conferenceCopy = conference;
  v9 = objc_msgSend_mainThread(MEMORY[0x277CCACC8], v5, v6, v7, v8);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_254775234;
  v14[3] = &unk_2797832F0;
  v15 = conferenceCopy;
  selfCopy = self;
  v10 = conferenceCopy;
  objc_msgSend___im_performBlock_(v9, v11, v14, v12, v13);
}

- (void)localVideoLayer
{
  if ((objc_msgSend_isAVInterfaceReady(self, a2, v2, v3, v4) & 1) == 0)
  {
    objc_msgSend_initAVInterface(self, v6, v7, v8, v9);
  }

  v10 = objc_msgSend_sharedInstance(IMAVLocalPreviewClient, v6, v7, v8, v9);
  v15 = objc_msgSend_localVideoLayer(v10, v11, v12, v13, v14);

  return v15;
}

- (void)setLocalVideoLayer:(void *)layer
{
  if ((objc_msgSend_isAVInterfaceReady(self, a2, layer, v3, v4) & 1) == 0)
  {
    objc_msgSend_initAVInterface(self, v7, v8, v9, v10);
  }

  v14 = objc_msgSend_sharedInstance(IMAVLocalPreviewClient, v7, v8, v9, v10);
  objc_msgSend_setLocalVideoLayer_(v14, v11, layer, v12, v13);
}

- (void)setRemoteVideoPresentationSize:(CGSize)size forChat:(id)chat
{
  height = size.height;
  width = size.width;
  v36 = *MEMORY[0x277D85DE8];
  chatCopy = chat;
  isVideo = objc_msgSend_isVideo(chatCopy, v8, v9, v10, v11);
  if (isVideo)
  {
    if (chatCopy)
    {
      if ((objc_msgSend_isAVInterfaceReady(self, v13, v14, v15, v16) & 1) == 0)
      {
        objc_msgSend_initAVInterface(self, v17, v18, v19, v20);
      }

      v21 = objc_msgSend__existingConferenceForAVChat_(self, v17, chatCopy, v19, v20);
      v22 = v21;
      if (v21)
      {
        v23 = sub_254761764(v21);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v32 = 134218240;
          v33 = width;
          v34 = 2048;
          v35 = height;
          _os_log_impl(&dword_254743000, v23, OS_LOG_TYPE_DEFAULT, "Setting remote video presented size to %f, %f", &v32, 0x16u);
        }

        v28 = objc_msgSend__bustedCallID(chatCopy, v24, v25, v26, v27);
        objc_msgSend_setConferenceVisualRectangle_forCallID_(v22, v29, v28, v30, v31, 0.0, 0.0, width, height);
      }
    }

    else
    {
      v22 = sub_254761764(isVideo);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v32) = 0;
        _os_log_impl(&dword_254743000, v22, OS_LOG_TYPE_DEFAULT, "No avChat when asked to set presentation size", &v32, 2u);
      }
    }
  }
}

- (void)setRemoteVideoPresentationState:(unsigned int)state forChat:(id)chat
{
  v32 = *MEMORY[0x277D85DE8];
  chatCopy = chat;
  isVideo = objc_msgSend_isVideo(chatCopy, v7, v8, v9, v10);
  if (isVideo)
  {
    if (chatCopy)
    {
      if ((objc_msgSend_isAVInterfaceReady(self, v12, v13, v14, v15) & 1) == 0)
      {
        objc_msgSend_initAVInterface(self, v16, v17, v18, v19);
      }

      v20 = objc_msgSend__existingConferenceForAVChat_(self, v16, chatCopy, v18, v19);
      v21 = v20;
      if (v20)
      {
        v22 = sub_254761764(v20);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v31[0] = 67109120;
          v31[1] = state;
          _os_log_impl(&dword_254743000, v22, OS_LOG_TYPE_DEFAULT, "Setting remote video presentation state to %d", v31, 8u);
        }

        if (state == 2)
        {
          v27 = 2;
        }

        else
        {
          v27 = state == 1;
        }

        v28 = objc_msgSend__bustedCallID(chatCopy, v23, v24, v25, v26);
        objc_msgSend_setConferenceState_forCallID_(v21, v29, v27, v28, v30);
      }
    }

    else
    {
      v21 = sub_254761764(isVideo);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v31[0]) = 0;
        _os_log_impl(&dword_254743000, v21, OS_LOG_TYPE_DEFAULT, "No avChat when asked to set presentation state", v31, 2u);
      }
    }
  }
}

- (void)localVideoBackLayer
{
  if ((objc_msgSend_isAVInterfaceReady(self, a2, v2, v3, v4) & 1) == 0)
  {
    objc_msgSend_initAVInterface(self, v6, v7, v8, v9);
  }

  v10 = objc_msgSend_sharedInstance(IMAVLocalPreviewClient, v6, v7, v8, v9);
  v15 = objc_msgSend_localVideoBackLayer(v10, v11, v12, v13, v14);

  return v15;
}

- (void)setLocalVideoBackLayer:(void *)layer
{
  if ((objc_msgSend_isAVInterfaceReady(self, a2, layer, v3, v4) & 1) == 0)
  {
    objc_msgSend_initAVInterface(self, v7, v8, v9, v10);
  }

  v14 = objc_msgSend_sharedInstance(IMAVLocalPreviewClient, v7, v8, v9, v10);
  objc_msgSend_setLocalVideoBackLayer_(v14, v11, layer, v12, v13);
}

- (void)handleRelayInitate:(id)initate fromParticipant:(id)participant callInfo:(id)info
{
  v119 = *MEMORY[0x277D85DE8];
  initateCopy = initate;
  participantCopy = participant;
  infoCopy = info;
  v15 = objc_msgSend_sharedInstance(IMAVController, v11, v12, v13, v14);
  if (objc_msgSend__shouldRunConferences(v15, v16, v17, v18, v19))
  {
  }

  else
  {
    v28 = objc_msgSend_sharedInstance(IMAVController, v20, v21, v22, v23);
    shouldRunACConferences = objc_msgSend__shouldRunACConferences(v28, v29, v30, v31, v32);

    if ((shouldRunACConferences & 1) == 0)
    {
      v64 = sub_254761764(v34);
      if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_254743000, v64, OS_LOG_TYPE_DEFAULT, "Returning because we are not the VC host", buf, 2u);
      }

      goto LABEL_15;
    }
  }

  v35 = objc_msgSend_avChat(participantCopy, v24, v25, v26, v27);
  v40 = objc_msgSend__conferenceQueue(v35, v36, v37, v38, v39);

  if (v40)
  {
    v45 = objc_msgSend_avChat(participantCopy, v41, v42, v43, v44);
    v49 = objc_msgSend__existingConferenceForAVChat_(self, v46, v45, v47, v48);

    v50 = objc_alloc(MEMORY[0x277CBEB38]);
    v54 = objc_msgSend_initWithDictionary_(v50, v51, initateCopy, v52, v53);
    v55 = *MEMORY[0x277D18F98];
    v59 = objc_msgSend_objectForKey_(initateCopy, v56, *MEMORY[0x277D18F98], v57, v58);
    v64 = v59;
    if (!v59)
    {
      v65 = objc_msgSend_avChat(participantCopy, v60, v61, v62, v63);
      v70 = objc_msgSend__relayRemotePrimaryIdentifier(v65, v66, v67, v68, v69);

      if (v70)
      {
        v75 = objc_msgSend_avChat(participantCopy, v71, v72, v73, v74);
        v80 = objc_msgSend__relayRemotePrimaryIdentifier(v75, v76, v77, v78, v79);
        objc_msgSend_setObject_forKey_(v54, v81, v80, v55, v82);
      }
    }

    v83 = sub_254761764(v59);
    if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
    {
      v88 = objc_msgSend_vcPartyID(participantCopy, v84, v85, v86, v87);
      *buf = 138412290;
      v114 = v88;
      _os_log_impl(&dword_254743000, v83, OS_LOG_TYPE_DEFAULT, "Processing relay request response from: %@", buf, 0xCu);
    }

    v90 = sub_254761764(v89);
    if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
    {
      v95 = objc_msgSend_avChat(participantCopy, v91, v92, v93, v94);
      *buf = 138412802;
      v114 = v95;
      v115 = 2112;
      v116 = participantCopy;
      v117 = 2112;
      v118 = initateCopy;
      _os_log_impl(&dword_254743000, v90, OS_LOG_TYPE_DEFAULT, "handleRelayInitate AVChat: %@    participant: %@    properties: %@", buf, 0x20u);
    }

    v100 = objc_msgSend_avChat(participantCopy, v96, v97, v98, v99);
    v105 = objc_msgSend__conferenceQueue(v100, v101, v102, v103, v104);
    v108[0] = MEMORY[0x277D85DD0];
    v108[1] = 3221225472;
    v108[2] = sub_254775B90;
    v108[3] = &unk_279783990;
    v109 = v49;
    v110 = infoCopy;
    v111 = v54;
    v112 = participantCopy;
    v106 = v54;
    v107 = v49;
    dispatch_async(v105, v108);

LABEL_15:
  }
}

- (void)handleRelayUpdate:(id)update fromParticipant:(id)participant callInfo:(id)info
{
  v86 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  participantCopy = participant;
  infoCopy = info;
  v15 = objc_msgSend_sharedInstance(IMAVController, v11, v12, v13, v14);
  if (objc_msgSend__shouldRunConferences(v15, v16, v17, v18, v19))
  {
  }

  else
  {
    v28 = objc_msgSend_sharedInstance(IMAVController, v20, v21, v22, v23);
    shouldRunACConferences = objc_msgSend__shouldRunACConferences(v28, v29, v30, v31, v32);

    if ((shouldRunACConferences & 1) == 0)
    {
      v74 = sub_254761764(v34);
      if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_254743000, v74, OS_LOG_TYPE_DEFAULT, "Returning because we are not the VC host", buf, 2u);
      }

      goto LABEL_12;
    }
  }

  v35 = objc_msgSend_avChat(participantCopy, v24, v25, v26, v27);
  v40 = objc_msgSend__conferenceQueue(v35, v36, v37, v38, v39);

  if (v40)
  {
    v45 = objc_msgSend_avChat(participantCopy, v41, v42, v43, v44);
    v49 = objc_msgSend__existingConferenceForAVChat_(self, v46, v45, v47, v48);

    v51 = sub_254761764(v50);
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      v56 = objc_msgSend_vcPartyID(participantCopy, v52, v53, v54, v55);
      *buf = 138412290;
      v81 = v56;
      _os_log_impl(&dword_254743000, v51, OS_LOG_TYPE_DEFAULT, "Processing relay update from: %@", buf, 0xCu);
    }

    v58 = sub_254761764(v57);
    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
    {
      v63 = objc_msgSend_avChat(participantCopy, v59, v60, v61, v62);
      *buf = 138412802;
      v81 = v63;
      v82 = 2112;
      v83 = participantCopy;
      v84 = 2112;
      v85 = updateCopy;
      _os_log_impl(&dword_254743000, v58, OS_LOG_TYPE_DEFAULT, "handleRelayUpdate AVChat: %@    participant: %@    properties: %@", buf, 0x20u);
    }

    v68 = objc_msgSend_avChat(participantCopy, v64, v65, v66, v67);
    v73 = objc_msgSend__conferenceQueue(v68, v69, v70, v71, v72);
    v75[0] = MEMORY[0x277D85DD0];
    v75[1] = 3221225472;
    v75[2] = sub_254775F18;
    v75[3] = &unk_279783990;
    v76 = v49;
    v77 = infoCopy;
    v78 = updateCopy;
    v79 = participantCopy;
    v74 = v49;
    dispatch_async(v73, v75);

LABEL_12:
  }
}

- (void)handleRelayCancel:(id)cancel fromParticipant:(id)participant callInfo:(id)info
{
  v86 = *MEMORY[0x277D85DE8];
  cancelCopy = cancel;
  participantCopy = participant;
  infoCopy = info;
  v15 = objc_msgSend_sharedInstance(IMAVController, v11, v12, v13, v14);
  if (objc_msgSend__shouldRunConferences(v15, v16, v17, v18, v19))
  {
  }

  else
  {
    v28 = objc_msgSend_sharedInstance(IMAVController, v20, v21, v22, v23);
    shouldRunACConferences = objc_msgSend__shouldRunACConferences(v28, v29, v30, v31, v32);

    if ((shouldRunACConferences & 1) == 0)
    {
      v74 = sub_254761764(v34);
      if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_254743000, v74, OS_LOG_TYPE_DEFAULT, "Returning because we are not the VC host", buf, 2u);
      }

      goto LABEL_12;
    }
  }

  v35 = objc_msgSend_avChat(participantCopy, v24, v25, v26, v27);
  v40 = objc_msgSend__conferenceQueue(v35, v36, v37, v38, v39);

  if (v40)
  {
    v45 = objc_msgSend_avChat(participantCopy, v41, v42, v43, v44);
    v49 = objc_msgSend__existingConferenceForAVChat_(self, v46, v45, v47, v48);

    v51 = sub_254761764(v50);
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      v56 = objc_msgSend_vcPartyID(participantCopy, v52, v53, v54, v55);
      *buf = 138412290;
      v81 = v56;
      _os_log_impl(&dword_254743000, v51, OS_LOG_TYPE_DEFAULT, "Processing relay cancel from: %@", buf, 0xCu);
    }

    v58 = sub_254761764(v57);
    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
    {
      v63 = objc_msgSend_avChat(participantCopy, v59, v60, v61, v62);
      *buf = 138412802;
      v81 = v63;
      v82 = 2112;
      v83 = participantCopy;
      v84 = 2112;
      v85 = cancelCopy;
      _os_log_impl(&dword_254743000, v58, OS_LOG_TYPE_DEFAULT, "handleRelayCancel AVChat: %@    participant: %@    properties: %@", buf, 0x20u);
    }

    v68 = objc_msgSend_avChat(participantCopy, v64, v65, v66, v67);
    v73 = objc_msgSend__conferenceQueue(v68, v69, v70, v71, v72);
    v75[0] = MEMORY[0x277D85DD0];
    v75[1] = 3221225472;
    v75[2] = sub_2547762A0;
    v75[3] = &unk_279783990;
    v76 = v49;
    v77 = infoCopy;
    v78 = cancelCopy;
    v79 = participantCopy;
    v74 = v49;
    dispatch_async(v73, v75);

LABEL_12:
  }
}

- (void)processRemoteIPChanged:(id)changed fromParticipant:(id)participant
{
  v66 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  participantCopy = participant;
  v8 = sub_254761764(participantCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v61 = participantCopy;
    _os_log_impl(&dword_254743000, v8, OS_LOG_TYPE_DEFAULT, "Processing remote IP change from: %@", buf, 0xCu);
  }

  v10 = sub_254761764(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v15 = objc_msgSend_avChat(participantCopy, v11, v12, v13, v14);
    *buf = 138412802;
    v61 = v15;
    v62 = 2112;
    v63 = participantCopy;
    v64 = 2112;
    v65 = changedCopy;
    _os_log_impl(&dword_254743000, v10, OS_LOG_TYPE_DEFAULT, "remoteIPChangedWithBlob AVChat: %@    participant: %@    properties: %@", buf, 0x20u);
  }

  v20 = objc_msgSend_avChat(participantCopy, v16, v17, v18, v19);
  v25 = objc_msgSend__conferenceQueue(v20, v21, v22, v23, v24);

  if (v25)
  {
    v30 = objc_msgSend_avChat(participantCopy, v26, v27, v28, v29);
    v34 = objc_msgSend__existingConferenceForAVChat_(self, v31, v30, v32, v33);

    v38 = objc_msgSend_objectForKey_(changedCopy, v35, @"LocalIPChangeNewBlob", v36, v37);
    v43 = objc_msgSend__FTDataFromBase64String(v38, v39, v40, v41, v42);
    v48 = objc_msgSend_avChat(participantCopy, v44, v45, v46, v47);
    v53 = objc_msgSend__conferenceQueue(v48, v49, v50, v51, v52);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_254776598;
    block[3] = &unk_279783760;
    v57 = v34;
    v58 = v43;
    v59 = participantCopy;
    v54 = v43;
    v55 = v34;
    dispatch_async(v53, block);
  }
}

- (id)_controller
{
  v6 = objc_msgSend__activeChat(IMAVChat, a2, v2, v3, v4);
  v10 = objc_msgSend__conferenceForAVChat_(self, v7, v6, v8, v9);

  return v10;
}

- (void)chatStateUpdated
{
  v6 = objc_msgSend__nonFinalChat(IMAVChat, a2, v2, v3, v4);

  v11 = objc_msgSend_sharedInstance(IMAVDaemonController, v7, v8, v9, v10);
  v15 = v11;
  if (v6)
  {
    objc_msgSend_addListenerID_(v11, v12, @"com.apple.IMAVConferenceAVAgentListener", v13, v14);
  }

  else
  {
    objc_msgSend_removeListenerID_(v11, v12, @"com.apple.IMAVConferenceAVAgentListener", v13, v14);
  }

  v16.receiver = self;
  v16.super_class = IMAVConferenceInterface;
  [(IMAVInterface *)&v16 chatStateUpdated];
}

- (void)chatRelayedStatusChanged:(id)changed
{
  changedCopy = changed;
  v12 = objc_msgSend__conferenceForAVChat_(self, v5, changedCopy, v6, v7);
  if (v12)
  {
    v13 = objc_msgSend__conferenceQueue(changedCopy, v8, v9, v10, v11);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_2547767D0;
    block[3] = &unk_279783760;
    block[4] = self;
    v15 = changedCopy;
    v16 = v12;
    dispatch_async(v13, block);
  }
}

- (void)avChat:(id)chat setLocalLandscapeAspectRatio:(CGSize)ratio localPortraitAspectRatio:(CGSize)aspectRatio
{
  height = aspectRatio.height;
  width = aspectRatio.width;
  v7 = ratio.height;
  v8 = ratio.width;
  v44 = *MEMORY[0x277D85DE8];
  chatCopy = chat;
  v15 = chatCopy;
  if (!chatCopy)
  {
    v33 = sub_254761764(0);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v38) = 0;
      v34 = "No avChat";
      goto LABEL_13;
    }

LABEL_19:

    goto LABEL_20;
  }

  if (objc_msgSend_isVideo(chatCopy, v11, v12, v13, v14))
  {
    isAVInterfaceReady = objc_msgSend_isAVInterfaceReady(self, v16, v17, v18, v19);
    if ((isAVInterfaceReady & 1) == 0)
    {
      isAVInterfaceReady = objc_msgSend_initAVInterface(self, v21, v22, v23, v24);
    }

    v25 = sub_254761764(isAVInterfaceReady);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v45.width = v8;
      v45.height = v7;
      v26 = NSStringFromSize(v45);
      v46.width = width;
      v46.height = height;
      v27 = NSStringFromSize(v46);
      v38 = 138412802;
      v39 = v15;
      v40 = 2112;
      v41 = v26;
      v42 = 2112;
      v43 = v27;
      _os_log_impl(&dword_254743000, v25, OS_LOG_TYPE_DEFAULT, "Chat: %@ Setting setLocalLandscapeAspectRatio: %@   localPortraitAspectRatio: %@", &v38, 0x20u);
    }

    if (v8 == 0.0 && v7 == 0.0)
    {
      v33 = sub_254761764(v28);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v38) = 0;
        v34 = "       ** someone hasn't configured this localLandscapeAspectRatio, it's CGSizeZero, skipping";
LABEL_13:
        _os_log_impl(&dword_254743000, v33, OS_LOG_TYPE_DEFAULT, v34, &v38, 2u);
        goto LABEL_19;
      }
    }

    else
    {
      if (width != 0.0 || height != 0.0)
      {
        v33 = objc_msgSend_sharedInstance(IMAVLocalPreviewClient, v29, v30, v31, v32);
        objc_msgSend_avChat_setLocalPortraitRatio_localLandscapeRatio_(v33, v35, v15, v36, v37, width, height, v8, v7);
        goto LABEL_19;
      }

      v33 = sub_254761764(v28);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v38) = 0;
        v34 = "       ** someone hasn't configured this localPortraitAspectRatio, it's CGSizeZero, skipping";
        goto LABEL_13;
      }
    }

    goto LABEL_19;
  }

LABEL_20:
}

- (BOOL)_submitLoggingInformation:(id)information forChat:(id)chat
{
  v32 = *MEMORY[0x277D85DE8];
  informationCopy = information;
  chatCopy = chat;
  v7 = sub_254761764(chatCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v28 = 138412546;
    v29 = informationCopy;
    v30 = 2112;
    v31 = chatCopy;
    _os_log_impl(&dword_254743000, v7, OS_LOG_TYPE_DEFAULT, "Will submit logging info: %@   for chat: %@", &v28, 0x16u);
  }

  v8 = objc_alloc_init(qword_28134A5C0);
  v9 = sub_254761764(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v28 = 138412290;
    v29 = v8;
    _os_log_impl(&dword_254743000, v9, OS_LOG_TYPE_DEFAULT, "   => Found conference: %@", &v28, 0xCu);
  }

  v10 = objc_opt_respondsToSelector();
  v11 = v10;
  v12 = sub_254761764(v10);
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (v11)
  {
    if (v13)
    {
      v14 = NSStringFromSelector(sel_setCallReport_withReport_);
      v28 = 138412546;
      v29 = v8;
      v30 = 2112;
      v31 = v14;
      _os_log_impl(&dword_254743000, v12, OS_LOG_TYPE_DEFAULT, "%@ responds to %@", &v28, 0x16u);
    }

    v19 = objc_msgSend__bustedCallID(chatCopy, v15, v16, v17, v18);
    v12 = objc_msgSend_descriptionInStringsFileFormat(informationCopy, v20, v21, v22, v23);
    objc_msgSend_setCallReport_withReport_(v8, v24, v19, v12, v25);
  }

  else if (v13)
  {
    v26 = NSStringFromSelector(sel_setCallReport_withReport_);
    v28 = 138412546;
    v29 = v8;
    v30 = 2112;
    v31 = v26;
    _os_log_impl(&dword_254743000, v12, OS_LOG_TYPE_DEFAULT, "%@ DOES NOT respond to %@", &v28, 0x16u);
  }

  return 1;
}

- (BOOL)_submitEndCallMetric:(id)metric forCallID:(int64_t)d
{
  v21 = *MEMORY[0x277D85DE8];
  metricCopy = metric;
  v6 = sub_254761764(metricCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412546;
    v18 = metricCopy;
    v19 = 1024;
    LODWORD(v20) = d;
    _os_log_impl(&dword_254743000, v6, OS_LOG_TYPE_DEFAULT, "Will submit end call metric: %@   for callID: %d", &v17, 0x12u);
  }

  v7 = objc_alloc_init(qword_28134A5C0);
  v8 = sub_254761764(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    v18 = v7;
    _os_log_impl(&dword_254743000, v8, OS_LOG_TYPE_DEFAULT, "   => Found conference: %@", &v17, 0xCu);
  }

  v9 = objc_opt_respondsToSelector();
  v10 = v9;
  v11 = sub_254761764(v9);
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (v12)
    {
      v13 = NSStringFromSelector(sel_sendProtobuf_withType_forCallID_);
      v17 = 138412546;
      v18 = v7;
      v19 = 2112;
      v20 = v13;
      _os_log_impl(&dword_254743000, v11, OS_LOG_TYPE_DEFAULT, "%@ responds to %@", &v17, 0x16u);
    }

    objc_msgSend_sendProtobuf_withType_forCallID_(v7, v14, metricCopy, 5312515, d);
  }

  else
  {
    if (v12)
    {
      v15 = NSStringFromSelector(sel_sendProtobuf_withType_forCallID_);
      v17 = 138412546;
      v18 = v7;
      v19 = 2112;
      v20 = v15;
      _os_log_impl(&dword_254743000, v11, OS_LOG_TYPE_DEFAULT, "%@ DOES NOT respond to %@", &v17, 0x16u);
    }
  }

  return 1;
}

- (void)updateAVChat:(id)chat withCallMetadata:(id)metadata isFinalUpdate:(BOOL)update
{
  chatCopy = chat;
  metadataCopy = metadata;
  if (chatCopy)
  {
    v14 = objc_msgSend__conferenceQueue(chatCopy, v9, v10, v11, v12);

    if (v14)
    {
      v19 = objc_msgSend__bustedCallID(chatCopy, v15, v16, v17, v18);
      v23 = objc_msgSend__existingConferenceForAVChat_(self, v20, chatCopy, v21, v22);
      v28 = objc_msgSend__conferenceQueue(chatCopy, v24, v25, v26, v27);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_2547770D8;
      block[3] = &unk_2797839E0;
      v31 = metadataCopy;
      v32 = v23;
      v34 = v19;
      v33 = chatCopy;
      updateCopy = update;
      v29 = v23;
      dispatch_async(v28, block);
    }
  }
}

@end