@interface IMAVChat
+ (id)_acceptedChats;
+ (id)_activeChat;
+ (id)_avChatArray;
+ (id)_avChatConnectingFromIMHandle:(id)handle;
+ (id)_avChatInvitedByIMHandle:(id)handle orConferenceID:(id)d;
+ (id)_avChatWaitingForReplyFromIMHandle:(id)handle orConferenceID:(id)d;
+ (id)_avChatWithConferenceID:(id)d;
+ (id)_avChatWithGUID:(id)d;
+ (id)_avChatWithMatchingIMHandles:(id)handles video:(BOOL)video;
+ (id)_bestGuessAVChatWithIMHandle:(id)handle conferenceID:(id)d sessionID:(unsigned int)iD properties:(id)properties;
+ (id)_chatList;
+ (id)_chatListLock;
+ (id)_chatWithSessionID:(unsigned int)d;
+ (id)_chatsWithIMAVChatState:(unsigned int)state;
+ (id)_connectedChat;
+ (id)_imHandleFromProxyRepresentation:(id)representation;
+ (id)_nonFinalChat;
+ (id)_proxyRepresentationForIMHandle:(id)handle;
+ (id)acceptedChats;
+ (id)activeChat;
+ (id)avChatWithGUID:(id)d;
+ (id)chatList;
+ (id)chatsWithIMAVChatState:(unsigned int)state;
+ (id)connectedChat;
+ (id)nonFinalChat;
+ (int)systemSupportsNewOutgoingConferenceTo:(id)to isVideo:(BOOL)video;
- (BOOL)_cachedBoolForKey:(id)key;
- (BOOL)_hasCachedBoolForKey:(id)key;
- (BOOL)_isCallUpgradeTo:(id)to;
- (BOOL)_isVideoUpgradeTo:(id)to;
- (BOOL)_moveVCPartyID:(id)d toIndex:(unsigned int)index inCount:(unsigned int)count;
- (BOOL)_participantsCheckOut;
- (BOOL)_processVCResponseDict:(id)dict;
- (BOOL)isMute;
- (BOOL)isPaused;
- (BOOL)isRemoteMute;
- (BOOL)isSendingAudio;
- (BOOL)isSendingVideo;
- (BOOL)startPreviewWithError:(id *)error;
- (BOOL)stopPreview;
- (CGSize)landscapeAspectRatios;
- (CGSize)localAspectRatioForCameraOrientation:(unsigned int)orientation cameraType:(unsigned int)type;
- (CGSize)portraitAspectRatios;
- (IMAVChatParticipant)initiatorParticipant;
- (IMHandle)otherIMHandle;
- (NSArray)_imHandles;
- (NSArray)remoteParticipants;
- (NSNumber)_callDuration;
- (NSNumber)_connectDuration;
- (NSNumber)_currentNatType;
- (NSNumber)_natType;
- (NSNumber)_relayConnectDuration;
- (NSNumber)_remoteNatType;
- (id)_initOutgoingTo:(id)to isVideo:(BOOL)video isRelayed:(BOOL)relayed GUID:(id)d;
- (id)_initWith:(id)with invitedBy:(id)by sessionID:(unsigned int)d isRelayed:(BOOL)relayed GUID:(id)iD video:(BOOL)video extraProperties:(id)properties;
- (id)_participantMatchingVCPartyID:(id)d;
- (id)_proxyRepresentation;
- (id)_proxyRepresentationForIMAVChatParticipant:(id)participant;
- (id)description;
- (id)initIncomingFrom:(id)from isVideo:(BOOL)video callerProperties:(id)properties;
- (id)initOutgoingTo:(id)to isVideo:(BOOL)video isRelayed:(BOOL)relayed GUID:(id)d;
- (id)inviteesInfo;
- (id)participantMatchingIMHandle:(id)handle;
- (id)participantWithAVConferenceCallID:(int64_t)d;
- (id)participantWithID:(id)d;
- (id)vcPartyIDForIMHandle:(id)handle;
- (int64_t)_bustedCallID;
- (unint64_t)_localNetworkConnectionType;
- (unsigned)cameraOrientation;
- (unsigned)cameraType;
- (void)__responseToVCInvite:(id)invite;
- (void)__sendEndCallMetricToAWDWithReason:(unsigned int)reason andError:(int)error;
- (void)__sendEndCallMetricToViceroyWithReason:(unsigned int)reason andError:(int)error;
- (void)_airplaneModeChanged:(id)changed;
- (void)_cacheBool:(BOOL)bool forKey:(id)key;
- (void)_cancelInvitationWithReason:(unsigned int)reason error:(int)error;
- (void)_clearConnectionTimeoutTimer;
- (void)_clearFirstFrameTimeoutTimer;
- (void)_clearInvitationTimeoutTimer;
- (void)_conferenceOtherParticipant:(id)participant didConnect:(BOOL)connect;
- (void)_connectionTimeout:(id)timeout;
- (void)_endChatWithReason:(unsigned int)reason andError:(int)error;
- (void)_entitlementsChanged:(id)changed;
- (void)_firstFrameTimeout:(id)timeout;
- (void)_handleAVError:(id)error;
- (void)_handleGenericAVMessageFromParticipant:(id)participant type:(unsigned int)type userInfo:(id)info handled:(BOOL)handled;
- (void)_handleRelayCancel:(id)cancel fromParticipant:(id)participant;
- (void)_handleRelayInitate:(id)initate fromParticipant:(id)participant;
- (void)_handleRelayUpdate:(id)update fromParticipant:(id)participant;
- (void)_initParticipantsWithIMHandles:(id)handles;
- (void)_insertRemoteParticipant:(id)participant atIndex:(unint64_t)index;
- (void)_invitationTimeout:(id)timeout;
- (void)_noteFirstFrame;
- (void)_peerID:(id)d changedTo:(id)to;
- (void)_postNotificationName:(id)name participant:(id)participant userInfo:(id)info;
- (void)_postNotificationName:(id)name userInfo:(id)info;
- (void)_postParticipantMediaChangeNotification:(id)notification cameraChanged:(BOOL)changed orientationChanged:(BOOL)orientationChanged aspectChanged:(BOOL)aspectChanged cameraWillSwitch:(BOOL)switch camera:(unsigned int)camera orientation:(unsigned int)orientation aspect:(CGSize)self0;
- (void)_postStateToDelegateIfNecessary;
- (void)_reduceInvitationTimeoutTime;
- (void)_responseToVCInvite:(id)invite;
- (void)_resumeAudioState;
- (void)_resumeVideoState;
- (void)_saveAudioRestartState;
- (void)_saveVideoRestartState;
- (void)_setActiveConference;
- (void)_setCallerProperties:(id)properties;
- (void)_setConferenceID:(id)d;
- (void)_setConnectionTimeoutTimer;
- (void)_setCreationDate;
- (void)_setDateConnected;
- (void)_setFirstFrameTimeoutTimer;
- (void)_setInvitationTimeoutTimer;
- (void)_setStateDisconnected;
- (void)_submitCallConnectedLogging;
- (void)_submitCallEndedLoggingWithReason:(unsigned int)reason andError:(int)error;
- (void)_submitCallInterruptionBeganLogging;
- (void)_submitCallInterruptionEndedLogging;
- (void)_submitCallStartedLoggingWithRecipientID:(id)d isCaller:(BOOL)caller isVideo:(BOOL)video;
- (void)_updateIMHandleInBuddyList:(id)list;
- (void)_vccInitDidFinish:(id)finish;
- (void)acceptInvitation;
- (void)beginChat;
- (void)conferenceAVConferenceCallID:(int64_t)d didConnect:(BOOL)connect;
- (void)conferenceDidPauseAudioWithCallID:(int64_t)d didPauseAudio:(BOOL)audio;
- (void)conferenceDidStopWithCallID:(int64_t)d error:(id)error;
- (void)conferencePersonWithID:(id)d didDegrade:(BOOL)degrade;
- (void)conferencePersonWithID:(id)d didMute:(BOOL)mute;
- (void)conferencePersonWithID:(id)d didPause:(BOOL)pause;
- (void)conferencePersonWithID:(id)d localIPDidChange:(id)change;
- (void)conferencePersonWithID:(id)d mediaDidStall:(BOOL)stall;
- (void)conferencePersonWithID:(id)d sendRelayCancel:(id)cancel;
- (void)conferencePersonWithID:(id)d sendRelayRequest:(id)request;
- (void)conferencePersonWithID:(id)d sendRelayUpdate:(id)update;
- (void)dealloc;
- (void)declineInvitation;
- (void)declineInvitationWithResponse:(unsigned int)response;
- (void)endChat;
- (void)endChatWithError:(int)error;
- (void)endChatWithReason:(unsigned int)reason;
- (void)endChatWithReason:(unsigned int)reason error:(int)error;
- (void)handleGenericAVMessageFromParticipant:(id)participant type:(unsigned int)type userInfo:(id)info;
- (void)invite:(id)invite additionalPeers:(id)peers excludingPushTokens:(id)tokens;
- (void)inviteAll;
- (void)localVideoBackLayer;
- (void)localVideoLayer;
- (void)notificationCenterDidDisappear;
- (void)notificationCenterWillAppear;
- (void)participant:(id)participant changedFromState:(unsigned int)state toState:(unsigned int)toState;
- (void)setCameraOrientation:(unsigned int)orientation;
- (void)setCameraType:(unsigned int)type;
- (void)setConnectionTimeoutTime:(double)time;
- (void)setInvitationTimeoutTime:(double)time;
- (void)setIsSendingAudio:(BOOL)audio;
- (void)setIsSendingVideo:(BOOL)video;
- (void)setLocalAspectRatio:(CGSize)ratio cameraOrientation:(unsigned int)orientation cameraType:(unsigned int)type;
- (void)setLocalVideoBackLayer:(void *)layer;
- (void)setLocalVideoLayer:(void *)layer;
- (void)setMayRequireBreakBeforeMake:(BOOL)make;
- (void)setMetadataFinalized;
- (void)setMute:(BOOL)mute;
- (void)setPaused:(BOOL)paused;
- (void)setRelayed:(BOOL)relayed;
- (void)setRemoteMute:(BOOL)mute;
- (void)setRemoteVideoPresentationSize:(CGSize)size;
- (void)setRemoteVideoPresentationState:(unsigned int)state;
- (void)systemApplicationDidBecomeActive;
- (void)systemApplicationDidEnterBackground;
- (void)systemApplicationDidResume;
- (void)systemApplicationDidResumeForEventsOnly;
- (void)systemApplicationDidSuspend;
- (void)systemApplicationWillEnterForeground;
- (void)systemDidFastUserSwitchOut;
- (void)systemWillShutdown;
- (void)toggleMute;
- (void)togglePaused;
@end

@implementation IMAVChat

- (id)_initWith:(id)with invitedBy:(id)by sessionID:(unsigned int)d isRelayed:(BOOL)relayed GUID:(id)iD video:(BOOL)video extraProperties:(id)properties
{
  videoCopy = video;
  v201 = *MEMORY[0x277D85DE8];
  v15 = COERCE_DOUBLE(with);
  byCopy = by;
  iDCopy = iD;
  propertiesCopy = properties;
  v18 = sub_254761764(propertiesCopy);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413826;
    selfCopy = self;
    v189 = 2112;
    v190 = v15;
    v191 = 2112;
    v192 = byCopy;
    v193 = 1024;
    dCopy = d;
    v195 = 2112;
    v196 = iDCopy;
    v197 = 1024;
    v198 = videoCopy;
    v199 = 2112;
    v200 = propertiesCopy;
    _os_log_impl(&dword_254743000, v18, OS_LOG_TYPE_DEFAULT, "avchat: %@  invited: %@  invitedBy: %@  sessionID: %u guid: %@  video: %d props: %@", buf, 0x40u);
  }

  v186.receiver = self;
  v186.super_class = IMAVChat;
  v19 = [(IMAVChat *)&v186 init];
  if (!v19)
  {
    goto LABEL_27;
  }

  v20 = objc_alloc_init(MEMORY[0x277D192C0]);
  timingCollection = v19->_timingCollection;
  v19->_timingCollection = v20;

  v22 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
  v23 = dispatch_queue_create("com.apple.imavchat_conference_queue", v22);
  conferenceQueue = v19->_conferenceQueue;
  v19->_conferenceQueue = v23;

  v29 = objc_msgSend_localPortraitAspectRatio(IMAVLocalPreviewClient, v25, v26, v27, v28);
  v31 = v30;
  v33 = v32;
  v34 = sub_254761764(v29);
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    selfCopy = *&v31;
    v189 = 2048;
    v190 = v33;
    _os_log_impl(&dword_254743000, v34, OS_LOG_TYPE_DEFAULT, "   Portrait Aspect: (%f / %f)", buf, 0x16u);
  }

  v36 = sub_254761764(v35);
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    selfCopy = *&v33;
    v189 = 2048;
    v190 = v31;
    _os_log_impl(&dword_254743000, v36, OS_LOG_TYPE_DEFAULT, "  Landscape Aspect: (%f / %f)", buf, 0x16u);
  }

  if (videoCopy)
  {
    objc_msgSend_setLocalAspectRatio_cameraOrientation_cameraType_(v19, v37, 2, 0, v40, v33, v31);
    objc_msgSend_setLocalAspectRatio_cameraOrientation_cameraType_(v19, v41, 0, 0, v42, v31, v33);
  }

  objc_msgSend_defaultConnectionTimeoutTime(IMAVChat, v37, v38, v39, v40);
  v19->_connectionTimeoutTime = v43;
  v48 = objc_msgSend_defaultInvitationTimeoutTime(IMAVChat, v44, v45, v46, v47);
  v19->_invitationTimeoutTime = v53;
  if (iDCopy)
  {
    v54 = iDCopy;
  }

  else
  {
    v54 = sub_25475B108(v48, v49, v50, v51, v52);
  }

  GUID = v19->_GUID;
  v19->_GUID = v54;

  v60 = objc_msgSend_sharedInstance(IMAVCallManager, v56, v57, v58, v59);
  objc_msgSend__addIMAVChatToChatList_(v60, v61, v19, v62, v63);

  v68 = objc_msgSend_sharedInstance(IMAVInterface, v64, v65, v66, v67);
  objc_msgSend_setDelegate_(v68, v69, v19, v70, v71);

  v76 = objc_msgSend_account(byCopy, v72, v73, v74, v75);
  objc_storeStrong(&v19->_initiator, by);
  v81 = objc_msgSend_loginIMHandle(v76, v77, v78, v79, v80);
  v19->_isCaller = v81 == byCopy;

  p_timingCollection = &v19->_timingCollection;
  v82 = v19->_timingCollection;
  v19->_sessionID = d;
  v19->_isVideo = videoCopy;
  v19->_relayed = relayed;
  objc_msgSend_startTimingForKey_(v82, v84, @"time-to-connected", v85, v86);
  objc_msgSend_startTimingForKey_(v19->_timingCollection, v87, @"time-to-connecting", v88, v89);
  if (v19->_isCaller)
  {
    objc_msgSend_startTimingForKey_(*p_timingCollection, v90, @"time-to-invitation", v91, v92);
  }

  else
  {
    objc_msgSend_startTimingForKey_(*p_timingCollection, v90, @"time-to-response", v91, v92);
  }

  objc_msgSend_startTimingForKey_(*p_timingCollection, v93, @"time-to-connection-data-gathering", v94, v95);
  started = objc_msgSend_startTimingForKey_(*p_timingCollection, v96, @"time-to-query-for-connection-data-gathering", v97, v98);
  v100 = sub_254761764(started);
  if (os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
  {
    sessionID = v19->_sessionID;
    *buf = 67109120;
    LODWORD(selfCopy) = sessionID;
    _os_log_impl(&dword_254743000, v100, OS_LOG_TYPE_DEFAULT, "IMAVChat created with sessionID %u", buf, 8u);
  }

  objc_msgSend__setCreationDate(v19, v102, v103, v104, v105);
  dateEnded = v19->_dateEnded;
  v19->_dateEnded = 0;

  if (!v19->_isCaller)
  {
    v112 = sub_254761764(v107);
    if (os_log_type_enabled(v112, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_254743000, v112, OS_LOG_TYPE_DEFAULT, " ** not the caller, let's warmup", buf, 2u);
    }

    v117 = objc_msgSend_sharedInstance(IMAVInterface, v113, v114, v115, v116);
    objc_msgSend__notifyAboutPotentialCallForChat_(v117, v118, v19, v119, v120);
  }

  v121 = objc_msgSend___imFirstObject(*&v15, v108, v109, v110, v111);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_msgSend__initParticipantsWithIMHandles_(v19, v122, *&v15, v124, v125);
  }

  else
  {
    v126 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v122, v123, v124, v125);
    v127 = objc_opt_class();
    v128 = NSStringFromClass(v127);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v126, v129, a2, v19, @"IMAVChat.m", 174, @"Invalid class %@", v128);
  }

  v134 = objc_msgSend__participantsCheckOut(v19, v130, v131, v132, v133);
  if (v134)
  {
    v139 = objc_msgSend_initiatorParticipant(v19, v135, v136, v137, v138);
    v143 = objc_msgSend__processIncomingCallProperties_(v139, v140, propertiesCopy, v141, v142);
    v148 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v144, v145, v146, v147);
    objc_msgSend_addObserver_selector_name_object_(v148, v149, v19, sel__airplaneModeChanged_, *MEMORY[0x277D19168], 0);

    v154 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v150, v151, v152, v153);
    objc_msgSend_addObserver_selector_name_object_(v154, v155, v19, sel__entitlementsChanged_, *MEMORY[0x277D07D80], 0);

    v160 = objc_msgSend_sharedInstance(MEMORY[0x277D192A8], v156, v157, v158, v159);
    objc_msgSend_addListener_(v160, v161, v19, v162, v163);

    v168 = objc_msgSend_sharedInstance(MEMORY[0x277D192A8], v164, v165, v166, v167);
    objc_msgSend_setActive_(v168, v169, 1, v170, v171);

    v176 = objc_msgSend_sharedInstance(IMAVController, v172, v173, v174, v175);
    objc_msgSend__dumpCaps(v176, v177, v178, v179, v180);

LABEL_27:
    v181 = v19;
    goto LABEL_31;
  }

  v182 = sub_254761764(v134);
  if (os_log_type_enabled(v182, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = @"Participants failed basic check";
    _os_log_impl(&dword_254743000, v182, OS_LOG_TYPE_DEFAULT, "[WARN] %@", buf, 0xCu);
  }

  v181 = 0;
LABEL_31:

  return v181;
}

- (id)initIncomingFrom:(id)from isVideo:(BOOL)video callerProperties:(id)properties
{
  videoCopy = video;
  v70 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  propertiesCopy = properties;
  v10 = sub_254761764(propertiesCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    selfCopy = self;
    v64 = 2112;
    v65 = fromCopy;
    v66 = 1024;
    v67 = videoCopy;
    v68 = 2112;
    v69 = propertiesCopy;
    _os_log_impl(&dword_254743000, v10, OS_LOG_TYPE_DEFAULT, "avchat: %@  initiator: %@  isVideo: %d properties: %@", buf, 0x26u);
  }

  objc_msgSend__setCreationDate(self, v11, v12, v13, v14);
  dateEnded = self->_dateEnded;
  self->_dateEnded = 0;

  v19 = objc_msgSend_objectForKey_(propertiesCopy, v16, *MEMORY[0x277D194E0], v17, v18);
  v23 = objc_msgSend_dictionaryWithPlistData_(MEMORY[0x277CBEAC0], v20, v19, v21, v22);
  v27 = v23;
  if (!v23)
  {
    v46 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v24, @"Couldn't unarchive conference data %@", v25, v26, v19);
    v47 = v46 == 0;

    if (!v47)
    {
      v49 = sub_254761764(v48);
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        v53 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v50, @"Couldn't unarchive conference data %@", v51, v52, v19);
        *buf = 138412290;
        selfCopy = v53;
        _os_log_impl(&dword_254743000, v49, OS_LOG_TYPE_DEFAULT, "[WARN] %@", buf, 0xCu);
      }
    }

    goto LABEL_16;
  }

  v28 = objc_msgSend_objectForKey_(v23, v24, *MEMORY[0x277D19568], v25, v26);
  v33 = v28;
  if (v28)
  {
    v37 = objc_msgSend_unsignedIntValue(v28, v29, v30, v31, v32);
    if (!v37)
    {
      v38 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v34, @"sessionIDValue %@ is not valid", v35, v36, v33);
      v39 = v38 == 0;

      if (!v39)
      {
        v41 = sub_254761764(v40);
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          v45 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v42, @"sessionIDValue %@ is not valid", v43, v44, v33);
          *buf = 138412290;
          selfCopy = v45;
          _os_log_impl(&dword_254743000, v41, OS_LOG_TYPE_DEFAULT, "[WARN] %@", buf, 0xCu);
        }
      }

LABEL_16:
      selfCopy2 = 0;
      goto LABEL_21;
    }
  }

  else
  {
    v37 = 0;
  }

  v55 = IMSingleObjectArray();
  v57 = objc_msgSend__initWith_invitedBy_sessionID_GUID_video_extraProperties_(self, v56, v55, fromCopy, v37, 0, videoCopy, v27);

  if (v57)
  {
    objc_msgSend__setCallerProperties_(v57, v58, propertiesCopy, v59, v60);
  }

  self = v57;
  selfCopy2 = self;
LABEL_21:

  return selfCopy2;
}

+ (int)systemSupportsNewOutgoingConferenceTo:(id)to isVideo:(BOOL)video
{
  videoCopy = video;
  v58 = *MEMORY[0x277D85DE8];
  toCopy = to;
  v6 = sub_254761764(toCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v55 = toCopy;
    v56 = 1024;
    v57 = videoCopy;
    _os_log_impl(&dword_254743000, v6, OS_LOG_TYPE_DEFAULT, "imHandles: %@  isVideo: %d", buf, 0x12u);
  }

  v11 = objc_msgSend_sharedInstance(IMAVInterface, v7, v8, v9, v10);
  v16 = v11;
  if (videoCopy)
  {
    CanVideoChat = objc_msgSend_systemCanVideoChat(v11, v12, v13, v14, v15);

    if ((CanVideoChat & 1) == 0)
    {
      v22 = -1;
      goto LABEL_27;
    }
  }

  else
  {
    CanAudioChat = objc_msgSend_systemCanAudioChat(v11, v12, v13, v14, v15);

    if (!CanAudioChat)
    {
      v22 = -2;
      goto LABEL_27;
    }
  }

  if (objc_msgSend_count(toCopy, v18, v19, v20, v21) >= 2)
  {
    if (videoCopy)
    {
      v22 = 4;
    }

    else
    {
      v22 = 3;
    }

    goto LABEL_27;
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v24 = toCopy;
  v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v25, &v49, v53, 16);
  if (!v26)
  {
    goto LABEL_24;
  }

  v31 = v26;
  v32 = *v50;
  while (2)
  {
    for (i = 0; i != v31; ++i)
    {
      if (*v50 != v32)
      {
        objc_enumerationMutation(v24);
      }

      v34 = objc_msgSend_service(*(*(&v49 + 1) + 8 * i), v27, v28, v29, v30, v49);
      v39 = objc_msgSend_facetimeService(MEMORY[0x277D18DE0], v35, v36, v37, v38);

      if (v34 == v39)
      {
        v40 = objc_msgSend_sharedInstance(MEMORY[0x277D07DB0], v27, v28, v29, v30);
        v45 = v40;
        if (videoCopy)
        {
          v46 = objc_msgSend_faceTimeAvailable(v40, v41, v42, v43, v44);

          if ((v46 & 1) == 0)
          {
            v22 = 6;
LABEL_26:

            goto LABEL_27;
          }
        }

        else
        {
          v47 = objc_msgSend_callingAvailable(v40, v41, v42, v43, v44);

          if (!v47)
          {
            v22 = 5;
            goto LABEL_26;
          }
        }
      }
    }

    v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v27, &v49, v53, 16);
    if (v31)
    {
      continue;
    }

    break;
  }

LABEL_24:

  v22 = 0;
LABEL_27:

  return v22;
}

- (id)_initOutgoingTo:(id)to isVideo:(BOOL)video isRelayed:(BOOL)relayed GUID:(id)d
{
  relayedCopy = relayed;
  videoCopy = video;
  v112 = *MEMORY[0x277D85DE8];
  toCopy = to;
  dCopy = d;
  if (!objc_msgSend_systemSupportsNewOutgoingConferenceTo_isVideo_(IMAVChat, v12, toCopy, videoCopy, v13))
  {
    v19 = objc_msgSend_lastObject(toCopy, v14, v15, v16, v17);
    v24 = objc_msgSend_account(v19, v20, v21, v22, v23);
    v29 = objc_msgSend_service(v24, v25, v26, v27, v28);
    v30 = IMOperationalAccountForService();

    v35 = objc_msgSend_account(v19, v31, v32, v33, v34);

    if (v35 == v30)
    {
      v64 = toCopy;
      objc_msgSend_ID(v19, v37, v38, v39, v40);
    }

    else
    {
      v41 = sub_254761764(v36);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        v46 = objc_msgSend_account(v19, v42, v43, v44, v45);
        *buf = 138412546;
        selfCopy = v46;
        v108 = 2112;
        v109 = v30;
        _os_log_impl(&dword_254743000, v41, OS_LOG_TYPE_DEFAULT, "******** Invalid account selected to intiate a call from, failing call, please file a radar: %@    (Should have been: %@)", buf, 0x16u);
      }

      v48 = sub_254761764(v47);
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        v53 = objc_msgSend_account(v19, v49, v50, v51, v52);
        *buf = 138412546;
        selfCopy = v53;
        v108 = 2112;
        v109 = v30;
        _os_log_impl(&dword_254743000, v48, OS_LOG_TYPE_DEFAULT, "[WARN] ******** Invalid account selected to intiate a call from, failing call, please file a radar: %@    (Should have been: %@)", buf, 0x16u);
      }

      if (!v30)
      {
        v101 = sub_254761764(v54);
        if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_254743000, v101, OS_LOG_TYPE_DEFAULT, "****** No active accounts at all, failing call", buf, 2u);
        }

        v82 = sub_254761764(v102);
        if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_254743000, v82, OS_LOG_TYPE_DEFAULT, "[WARN] ****** No active accounts at all, failing call", buf, 2u);
        }

        selfCopy2 = 0;
        goto LABEL_25;
      }

      v59 = objc_msgSend_ID(v19, v55, v56, v57, v58);
      v63 = objc_msgSend_imHandleWithID_(v30, v60, v59, v61, v62);

      v64 = IMSingleObjectArray();

      v66 = sub_254761764(v65);
      if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        selfCopy = v30;
        v108 = 2112;
        v109 = v64;
        _os_log_impl(&dword_254743000, v66, OS_LOG_TYPE_DEFAULT, "   Fixed, moved over to this account: %@    recipients: %@", buf, 0x16u);
      }

      v19 = v63;
      objc_msgSend_ID(v63, v67, v68, v69, v70);
    }
    v71 = ;
    objc_msgSend__submitCallStartedLoggingWithRecipientID_isCaller_isVideo_(self, v72, v71, 1, videoCopy);

    v74 = sub_254761764(v73);
    if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      selfCopy = self;
      v108 = 2112;
      v109 = v64;
      v110 = 1024;
      v111 = videoCopy;
      _os_log_impl(&dword_254743000, v74, OS_LOG_TYPE_DEFAULT, "avchat: %@  to: %@  isVideo: %d", buf, 0x1Cu);
    }

    v77 = objc_msgSend__avChatWithMatchingIMHandles_video_(IMAVChat, v75, v64, videoCopy, v76);
    v82 = v77;
    if (v77)
    {
      objc_msgSend_acceptInvitation(v77, v78, v79, v80, v81);
      v82 = v82;
      toCopy = v64;
      selfCopy2 = v82;
    }

    else
    {
      v104 = relayedCopy;
      v105 = v30;
      do
      {
        v83 = MEMORY[0x259C18A10]();
      }

      while (!v83);
      v88 = v83;
      v89 = objc_msgSend___imFirstObject(v64, v84, v85, v86, v87);
      v94 = objc_msgSend_account(v89, v90, v91, v92, v93);
      v99 = objc_msgSend_loginIMHandle(v94, v95, v96, v97, v98);
      self = objc_msgSend__initWith_invitedBy_sessionID_isRelayed_GUID_video_extraProperties_(self, v100, v64, v99, v88, v104, dCopy, videoCopy, 0);

      toCopy = v64;
      selfCopy2 = self;
      v30 = v105;
    }

LABEL_25:

    goto LABEL_26;
  }

  selfCopy2 = 0;
LABEL_26:

  return selfCopy2;
}

- (id)initOutgoingTo:(id)to isVideo:(BOOL)video isRelayed:(BOOL)relayed GUID:(id)d
{
  relayedCopy = relayed;
  videoCopy = video;
  v130 = *MEMORY[0x277D85DE8];
  toCopy = to;
  dCopy = d;
  v12 = sub_254761764(dCopy);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = @"NO";
    if (videoCopy)
    {
      v13 = @"YES";
    }

    *buf = 138412546;
    v127 = toCopy;
    v128 = 2112;
    v129 = v13;
    _os_log_impl(&dword_254743000, v12, OS_LOG_TYPE_DEFAULT, "Client requested to create an outgoing chat with imHandles %@ isVideo %@", buf, 0x16u);
  }

  v18 = objc_msgSend_sharedInstance(IMAVController, v14, v15, v16, v17);
  if (objc_msgSend__shouldRunConferences(v18, v19, v20, v21, v22))
  {
    v27 = !videoCopy;
  }

  else
  {
    v27 = 1;
  }

  if (!v27)
  {

LABEL_16:
    self = objc_msgSend__initOutgoingTo_isVideo_isRelayed_GUID_(self, v52, toCopy, videoCopy, relayedCopy, dCopy);
    selfCopy = self;
    goto LABEL_31;
  }

  v28 = objc_msgSend_sharedInstance(IMAVController, v23, v24, v25, v26);
  shouldRunACConferences = objc_msgSend__shouldRunACConferences(v28, v29, v30, v31, v32);

  if (shouldRunACConferences && !videoCopy)
  {
    goto LABEL_16;
  }

  v35 = sub_254761764(v34);
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_254743000, v35, OS_LOG_TYPE_DEFAULT, "Creating an outgoing proxy", buf, 2u);
  }

  selfCopy = objc_alloc_init(IMAVChatProxy);
  v37 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v41 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v38, relayedCopy, v39, v40);
  objc_msgSend_setObject_forKey_(v37, v42, v41, @"IsRelayed", v43);

  if (dCopy)
  {
    v50 = dCopy;
  }

  else
  {
    v50 = sub_25475B108(v44, v45, v46, v47, v48);
    if (!v50)
    {
      v125 = 0;
      goto LABEL_19;
    }
  }

  v125 = v50;
  objc_msgSend_setObject_forKey_(v37, v49, v50, @"GUID", v51);
LABEL_19:
  v54 = objc_msgSend___imFirstObject(toCopy, v49, v50, v53, v51);
  v59 = objc_msgSend_account(v54, v55, v56, v57, v58);
  v64 = objc_msgSend_loginIMHandle(v59, v60, v61, v62, v63);
  v68 = objc_msgSend__proxyRepresentationForIMHandle_(IMAVChat, v65, v64, v66, v67);

  if (v68)
  {
    objc_msgSend_setObject_forKey_(v37, v69, v68, @"Initiator", v72);
  }

  v73 = objc_msgSend_lastObject(toCopy, v69, v70, v71, v72, v68);
  v77 = objc_msgSend__proxyRepresentationForIMHandle_(IMAVChat, v74, v73, v75, v76);

  if (v77)
  {
    objc_msgSend_setObject_forKey_(v37, v78, v77, @"Other", v81);
  }

  v82 = objc_msgSend___imFirstObject(toCopy, v78, v79, v80, v81);
  v87 = objc_msgSend_account(v82, v83, v84, v85, v86);
  v92 = objc_msgSend_uniqueID(v87, v88, v89, v90, v91);

  if (v92)
  {
    objc_msgSend_setObject_forKey_(v37, v93, v92, @"AccountID", v95);
  }

  v96 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v93, videoCopy, v94, v95);
  objc_msgSend_setObject_forKey_(v37, v97, v96, @"IsVideo", v98);

  objc_msgSend_setObject_forKey_(v37, v99, &unk_286692B90, @"State", v100);
  objc_msgSend_setObject_forKey_(v37, v101, MEMORY[0x277CBEC38], @"IsCaller", v102);
  v106 = objc_msgSend_updateWithInfo_(selfCopy, v103, v37, v104, v105);
  v107 = sub_254761764(v106);
  if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v127 = v37;
    _os_log_impl(&dword_254743000, v107, OS_LOG_TYPE_DEFAULT, "Create proxy with info %@", buf, 0xCu);
  }

  v112 = objc_msgSend_sharedInstance(MEMORY[0x277D18D68], v108, v109, v110, v111);
  objc_msgSend_account_avAction_withArguments_toAVChat_isVideo_(v112, v113, v92, 0, v37, v125, videoCopy);

  v118 = objc_msgSend_sharedInstance(IMAVCallManager, v114, v115, v116, v117);
  v122 = v118;
  if (videoCopy)
  {
    objc_msgSend__addAVChatProxy_(v118, v119, selfCopy, v120, v121);
  }

  else
  {
    objc_msgSend__addACChatProxy_(v118, v119, selfCopy, v120, v121);
  }

LABEL_31:
  return selfCopy;
}

- (void)dealloc
{
  v173 = *MEMORY[0x277D85DE8];
  v3 = sub_254761764(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_254743000, v3, OS_LOG_TYPE_DEFAULT, "avchat: %@", buf, 0xCu);
  }

  v5 = sub_254761764(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    timingCollection = self->_timingCollection;
    *buf = 138412290;
    selfCopy = timingCollection;
    _os_log_impl(&dword_254743000, v5, OS_LOG_TYPE_DEFAULT, "Timings: %@", buf, 0xCu);
  }

  v11 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v7, v8, v9, v10);
  objc_msgSend_removeObserver_name_object_(v11, v12, self, 0, 0);

  v17 = objc_msgSend_sharedInstance(MEMORY[0x277D192A8], v13, v14, v15, v16);
  objc_msgSend_removeListener_(v17, v18, self, v19, v20);

  v25 = objc_msgSend_sharedInstance(IMAVInterface, v21, v22, v23, v24);
  objc_msgSend__avChatDealloc_(v25, v26, self, v27, v28);

  v33 = objc_msgSend_sharedInstance(IMAVInterface, v29, v30, v31, v32);
  objc_msgSend_unsetDelegate_(v33, v34, self, v35, v36);

  if (self->_localState != self->_lastPostedState)
  {
    v41 = objc_msgSend_sharedInstance(IMAVInterface, v37, v38, v39, v40);
    objc_msgSend_chatStateUpdated(v41, v42, v43, v44, v45);
  }

  isCaller = objc_msgSend_isCaller(self, v37, v38, v39, v40);
  localState = self->_localState;
  if (!isCaller)
  {
    if (localState - 1 > 2)
    {
      goto LABEL_19;
    }

    v57 = objc_msgSend_initiatorParticipant(self, v47, v48, v49, v50);
    v68 = sub_254761764(v57);
    if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy = v57;
      _os_log_impl(&dword_254743000, v68, OS_LOG_TYPE_DEFAULT, "Dealloc: Declining current chat with: %@", buf, 0xCu);
    }

    v67 = objc_msgSend_sharedInstance(IMAVController, v69, v70, v71, v72);
    v77 = objc_msgSend_imHandle(v57, v73, v74, v75, v76);
    callerProperties = self->_callerProperties;
    v83 = objc_msgSend_imHandle(v57, v79, v80, v81, v82);
    v88 = objc_msgSend_account(v83, v84, v85, v86, v87);
    objc_msgSend_declineVCRequestWithBuddy_response_vcProps_forAccount_conferenceID_(v67, v89, v77, 1, callerProperties, v88, self->_conferenceID);

    goto LABEL_17;
  }

  if ((localState | 2) != 3)
  {
    goto LABEL_19;
  }

  v52 = objc_msgSend_endedReason(self, v47, v48, v49, v50);
  if (v52 > 0x18 || ((1 << v52) & 0x1811000) == 0)
  {
    v168 = 0u;
    v169 = 0u;
    v166 = 0u;
    v167 = 0u;
    v57 = objc_msgSend_remoteParticipants(self, v53, v54, v55, v56);
    v134 = objc_msgSend_countByEnumeratingWithState_objects_count_(v57, v133, &v166, v170, 16);
    if (v134)
    {
      v136 = v134;
      v137 = *v167;
      *&v135 = 138412290;
      v164 = v135;
      do
      {
        v138 = 0;
        do
        {
          if (*v167 != v137)
          {
            objc_enumerationMutation(v57);
          }

          v139 = *(*(&v166 + 1) + 8 * v138);
          v140 = sub_254761764(v134);
          if (os_log_type_enabled(v140, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v164;
            selfCopy = v139;
            _os_log_impl(&dword_254743000, v140, OS_LOG_TYPE_DEFAULT, "Dealloc: Cancelling outgoing invitation to %@", buf, 0xCu);
          }

          v145 = objc_msgSend_sharedInstance(IMAVController, v141, v142, v143, v144);
          v150 = objc_msgSend_imHandle(v139, v146, v147, v148, v149);
          v151 = self->_callerProperties;
          v156 = objc_msgSend_imHandle(v139, v152, v153, v154, v155);
          v161 = objc_msgSend_account(v156, v157, v158, v159, v160);
          objc_msgSend_cancelVCRequestWithBuddy_vcProps_forAccount_conferenceID_reason_(v145, v162, v150, v151, v161, self->_conferenceID, 0);

          ++v138;
        }

        while (v136 != v138);
        v134 = objc_msgSend_countByEnumeratingWithState_objects_count_(v57, v163, &v166, v170, 16);
        v136 = v134;
      }

      while (v134);
    }

    goto LABEL_18;
  }

  v57 = sub_254761764(v52);
  if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
  {
    v62 = objc_msgSend_endedReason(self, v58, v59, v60, v61);
    v67 = _NSStringDescriptionForIMAVChatEndedReason(v62, v63, v64, v65, v66);
    *buf = 138412290;
    selfCopy = v67;
    _os_log_impl(&dword_254743000, v57, OS_LOG_TYPE_DEFAULT, "Dealloc: Not Cancelling outgoing invitation since the chat ended with reason %@", buf, 0xCu);
LABEL_17:
  }

LABEL_18:

LABEL_19:
  objc_msgSend_makeObjectsPerformSelector_(self->_participants, v47, sel_disconnectFromAVChat, v49, v50, v164);
  objc_msgSend_disconnectFromAVChat(self->_localParticipant, v90, v91, v92, v93);
  self->_localState = 0;
  v98 = objc_msgSend_sharedInstance(IMAVCallManager, v94, v95, v96, v97);
  objc_msgSend__removeIMAVChatFromChatList_(v98, v99, self, v100, v101);

  v106 = objc_msgSend_sharedInstance(IMAVCallManager, v102, v103, v104, v105);
  objc_msgSend__sendProxyUpdate(v106, v107, v108, v109, v110);

  objc_msgSend__clearConnectionTimeoutTimer(self, v111, v112, v113, v114);
  objc_msgSend__clearFirstFrameTimeoutTimer(self, v115, v116, v117, v118);
  objc_msgSend__clearInvitationTimeoutTimer(self, v119, v120, v121, v122);
  v127 = objc_msgSend_sharedInstance(IMAVController, v123, v124, v125, v126);
  objc_msgSend_updateActiveConference(v127, v128, v129, v130, v131);

  conferenceQueue = self->_conferenceQueue;
  if (conferenceQueue)
  {
    self->_conferenceQueue = 0;
  }

  v165.receiver = self;
  v165.super_class = IMAVChat;
  [(IMAVChat *)&v165 dealloc];
}

- (id)description
{
  v48 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CCAB68]);
  v7 = objc_msgSend_initWithString_(v3, v4, &stru_28668C2A0, v5, v6);
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v8 = self->_participants;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v43, v47, 16);
  if (v10)
  {
    v15 = v10;
    v16 = *v44;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v44 != v16)
        {
          objc_enumerationMutation(v8);
        }

        v18 = objc_msgSend_imHandle(*(*(&v43 + 1) + 8 * i), v11, v12, v13, v14);
        v23 = objc_msgSend_description(v18, v19, v20, v21, v22);
        objc_msgSend_appendString_(v7, v24, v23, v25, v26);

        objc_msgSend_appendString_(v7, v27, @", ", v28, v29);
      }

      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v43, v47, 16);
    }

    while (v15);
  }

  v30 = MEMORY[0x277CCACA8];
  if (self->_isVideo)
  {
    v31 = @"Video";
  }

  else
  {
    v31 = @"Audio";
  }

  v32 = _NSStringDescriptionForIMAVChatState(self->_localState);
  GUID = self->_GUID;
  conferenceID = self->_conferenceID;
  sessionID = self->_sessionID;
  v36 = objc_opt_class();
  v37 = NSStringFromClass(v36);
  v41 = objc_msgSend_stringWithFormat_(v30, v38, @"<%p> %@ chat with %@ (state %@) (ConfID: %@) (SID: %u) (GUID: %@) (Kind: %@)", v39, v40, self, v31, v7, v32, conferenceID, sessionID, GUID, v37, v43);

  return v41;
}

- (void)beginChat
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = sub_254761764(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_254743000, v3, OS_LOG_TYPE_DEFAULT, "avchat: %@", &v23, 0xCu);
  }

  objc_msgSend__setCreationDate(self, v4, v5, v6, v7);
  localParticipant = self->_localParticipant;
  if (self->_isCaller)
  {
    objc_msgSend_setState_(localParticipant, v8, 2, v10, v11);
  }

  else
  {
    v13 = objc_msgSend_invitedBy(localParticipant, v8, v9, v10, v11);
    v17 = objc_msgSend_participantMatchingIMHandle_(self, v14, v13, v15, v16);

    if (!v17)
    {
      v22 = sub_254761764(v18);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v23) = 0;
        _os_log_impl(&dword_254743000, v22, OS_LOG_TYPE_DEFAULT, "[WARN] ********* [IMAVChat beginChat] Could not find participant which invited me!", &v23, 2u);
      }
    }

    objc_msgSend_setState_(v17, v19, 2, v20, v21);
  }
}

- (void)endChat
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = sub_254761764(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_msgSend_otherIMHandle(self, v4, v5, v6, v7);
    v13 = objc_msgSend_ID(v8, v9, v10, v11, v12);
    v18 = 138412290;
    selfCopy = v13;
    _os_log_impl(&dword_254743000, v3, OS_LOG_TYPE_DEFAULT, "Marking conference with %@ as ended", &v18, 0xCu);
  }

  v15 = sub_254761764(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_254743000, v15, OS_LOG_TYPE_DEFAULT, "avchat: %@", &v18, 0xCu);
  }

  objc_msgSend_endChatWithReason_error_(self, v16, 8, 0, v17);
}

- (void)endChatWithReason:(unsigned int)reason
{
  v3 = *&reason;
  v17 = *MEMORY[0x277D85DE8];
  v5 = sub_254761764(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = _NSStringDescriptionForIMAVChatEndedReason(v3, v6, v7, v8, v9);
    v13 = 138412546;
    selfCopy = self;
    v15 = 2112;
    v16 = v10;
    _os_log_impl(&dword_254743000, v5, OS_LOG_TYPE_DEFAULT, "avchat: %@ reason: %@", &v13, 0x16u);
  }

  objc_msgSend_endChatWithReason_error_(self, v11, v3, 0, v12);
}

- (void)endChatWithError:(int)error
{
  v3 = *&error;
  v18 = *MEMORY[0x277D85DE8];
  v5 = sub_254761764(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = _NSStringDescriptionForIMAVChatError(v3, v6, v7, v8, v9);
    v14 = 138412546;
    selfCopy = self;
    v16 = 2112;
    v17 = v10;
    _os_log_impl(&dword_254743000, v5, OS_LOG_TYPE_DEFAULT, "avchat: %@ error: %@", &v14, 0x16u);
  }

  if (v3)
  {
    v13 = 7;
  }

  else
  {
    v13 = 0;
  }

  if (self->_localState == 4)
  {
    objc_msgSend_endChatWithReason_error_(self, v11, v13, v3, v12);
  }

  else
  {
    objc_msgSend_endChatWithReason_error_(self, v11, 6, v3, v12);
  }
}

- (void)endChatWithReason:(unsigned int)reason error:(int)error
{
  v4 = *&error;
  v5 = *&reason;
  v75 = *MEMORY[0x277D85DE8];
  v7 = sub_254761764(self);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v12 = _NSStringDescriptionForIMAVChatEndedReason(v5, v8, v9, v10, v11);
    v17 = _NSStringDescriptionForIMAVChatError(v4, v13, v14, v15, v16);
    *buf = 138412802;
    selfCopy = self;
    v71 = 2112;
    v72 = v12;
    v73 = 2112;
    v74 = v17;
    _os_log_impl(&dword_254743000, v7, OS_LOG_TYPE_DEFAULT, "avchat: %@ reason: %@ error: %@", buf, 0x20u);
  }

  if (objc_msgSend_isCaller(self, v18, v19, v20, v21))
  {
    v63 = v4;
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v26 = objc_msgSend_remoteParticipants(self, v22, v23, v24, v25);
    v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v27, &v64, v68, 16);
    if (v28)
    {
      v33 = v28;
      v34 = *v65;
      do
      {
        for (i = 0; i != v33; ++i)
        {
          if (*v65 != v34)
          {
            objc_enumerationMutation(v26);
          }

          v36 = *(*(&v64 + 1) + 8 * i);
          if (objc_msgSend_state(v36, v29, v30, v31, v32) - 1 <= 2)
          {
            if (v5 == 29)
            {
              v49 = objc_msgSend_sharedInstance(IMAVInterface, v29, v30, v31, v32);
              v54 = objc_msgSend_avChat(v36, v50, v51, v52, v53);
              objc_msgSend_cancelConferenceForAVChat_(v49, v55, v54, v56, v57);

              objc_msgSend_cancelInvitationWithResponse_(v36, v58, 10, v59, v60);
            }

            else if (v5 == 27)
            {
              v37 = objc_msgSend_sharedInstance(IMAVInterface, v29, v30, v31, v32);
              v42 = objc_msgSend_avChat(v36, v38, v39, v40, v41);
              objc_msgSend_cancelConferenceForAVChat_(v37, v43, v42, v44, v45);

              objc_msgSend_cancelInvitationWithResponse_(v36, v46, 8, v47, v48);
            }

            else
            {
              objc_msgSend_cancelInvitationWithReason_(v36, v29, v5, v31, v32);
            }
          }
        }

        v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v29, &v64, v68, 16);
      }

      while (v33);
    }

    v4 = v63;
  }

  localState = self->_localState;
  if (localState == 3)
  {
    if (objc_msgSend_isCaller(self, v22, v23, v24, v25))
    {
      objc_msgSend_cancelInvitation(self, v22, v62, v24, v25);
      return;
    }
  }

  else if (localState != 1)
  {
    objc_msgSend__endChatWithReason_andError_(self, v22, v5, v4, v25);
    return;
  }

  objc_msgSend_declineInvitationWithResponse_(self, v22, 1, v24, v25);
}

- (void)_endChatWithReason:(unsigned int)reason andError:(int)error
{
  v4 = *&reason;
  v171 = *MEMORY[0x277D85DE8];
  v6 = sub_254761764(self);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v11 = _NSStringDescriptionForIMAVChatEndedReason(v4, v7, v8, v9, v10);
    v16 = _NSStringDescriptionForIMAVChatError(error, v12, v13, v14, v15);
    *buf = 138412802;
    selfCopy = self;
    v165 = 2112;
    v166 = v11;
    v167 = 2112;
    *v168 = v16;
    _os_log_impl(&dword_254743000, v6, OS_LOG_TYPE_DEFAULT, "avchat: %@ reason: %@ error: %@", buf, 0x20u);
  }

  isActive = objc_msgSend_isActive(self, v17, v18, v19, v20);
  v22 = &off_254783000;
  if (isActive)
  {
    v23 = sub_254761764(isActive);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v28 = objc_msgSend_otherIMHandle(self, v24, v25, v26, v27);
      v33 = objc_msgSend_ID(v28, v29, v30, v31, v32);
      v38 = _NSStringDescriptionForIMAVChatEndedReason(v4, v34, v35, v36, v37);
      v43 = _NSStringDescriptionForIMAVChatError(error, v39, v40, v41, v42);
      *buf = 138413314;
      selfCopy = v33;
      v165 = 2112;
      v166 = v38;
      v167 = 1024;
      *v168 = v4;
      *&v168[4] = 2112;
      *&v168[6] = v43;
      v169 = 1024;
      errorCopy = error;
      _os_log_impl(&dword_254743000, v23, OS_LOG_TYPE_DEFAULT, "Marking conference with %@ as ended with reason: %@ (%d) error: %@ (%d)", buf, 0x2Cu);
    }

    v48 = objc_msgSend_sharedInstance(MEMORY[0x277D07DD8], v44, v45, v46, v47);
    valid = objc_msgSend_validNetworkEnabled(v48, v49, v50, v51, v52);

    v58 = objc_msgSend_sharedInstance(MEMORY[0x277D07DD8], v54, v55, v56, v57);
    v63 = objc_msgSend_validNetworkActive(v58, v59, v60, v61, v62);

    v68 = objc_msgSend_sharedInstance(MEMORY[0x277D07DD8], v64, v65, v66, v67);
    v73 = objc_msgSend_validNetworkReachable(v68, v69, v70, v71, v72);

    v78 = objc_msgSend_sharedInstance(MEMORY[0x277D07DD8], v74, v75, v76, v77);
    v83 = objc_msgSend_willSearchForNetwork(v78, v79, v80, v81, v82);

    v85 = sub_254761764(v84);
    if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_254743000, v85, OS_LOG_TYPE_DEFAULT, "********** Network Status ************", buf, 2u);
    }

    v87 = sub_254761764(v86);
    if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
    {
      if (valid)
      {
        v88 = @"YES";
      }

      else
      {
        v88 = @"NO";
      }

      *buf = 138412290;
      selfCopy = v88;
      _os_log_impl(&dword_254743000, v87, OS_LOG_TYPE_DEFAULT, "Is Network Enabled: %@", buf, 0xCu);
    }

    v90 = sub_254761764(v89);
    v22 = &off_254783000;
    if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
    {
      if (v63)
      {
        v91 = @"YES";
      }

      else
      {
        v91 = @"NO";
      }

      *buf = 138412290;
      selfCopy = v91;
      _os_log_impl(&dword_254743000, v90, OS_LOG_TYPE_DEFAULT, "Is Network Active: %@", buf, 0xCu);
    }

    v93 = sub_254761764(v92);
    if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
    {
      if (v73)
      {
        v94 = @"YES";
      }

      else
      {
        v94 = @"NO";
      }

      *buf = 138412290;
      selfCopy = v94;
      _os_log_impl(&dword_254743000, v93, OS_LOG_TYPE_DEFAULT, "Is Network Reachable: %@", buf, 0xCu);
    }

    v96 = sub_254761764(v95);
    if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
    {
      if (v83)
      {
        v97 = @"YES";
      }

      else
      {
        v97 = @"NO";
      }

      *buf = 138412290;
      selfCopy = v97;
      _os_log_impl(&dword_254743000, v96, OS_LOG_TYPE_DEFAULT, "Will Search for Network: %@", buf, 0xCu);
    }

    v99 = sub_254761764(v98);
    if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_254743000, v99, OS_LOG_TYPE_DEFAULT, "**************************************", buf, 2u);
    }
  }

  v100 = sub_254761764(isActive);
  if (os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
  {
    timingCollection = self->_timingCollection;
    *buf = *(v22 + 59);
    selfCopy = timingCollection;
    _os_log_impl(&dword_254743000, v100, OS_LOG_TYPE_DEFAULT, "Chat timings: %@", buf, 0xCu);
  }

  if (objc_msgSend_isActive(self, v102, v103, v104, v105))
  {
    v110 = objc_msgSend_sharedInstance(IMAVInterface, v106, v107, v108, v109);
    objc_msgSend_endConferenceForAVChat_(v110, v111, self, v112, v113);
  }

  v160 = 0u;
  v161 = 0u;
  v158 = 0u;
  v159 = 0u;
  selfCopy2 = self;
  v114 = self->_participants;
  v116 = objc_msgSend_countByEnumeratingWithState_objects_count_(v114, v115, &v158, v162, 16);
  if (v116)
  {
    v121 = v116;
    v122 = *v159;
    v156 = *(v22 + 59);
    do
    {
      for (i = 0; i != v121; ++i)
      {
        if (*v159 != v122)
        {
          objc_enumerationMutation(v114);
        }

        v124 = *(*(&v158 + 1) + 8 * i);
        v125 = objc_msgSend_state(v124, v117, v118, v119, v120);
        if (v125 != 5)
        {
          v125 = objc_msgSend_setStateToEndedWithReason_andError_(v124, v126, v4, error, v127);
        }

        v128 = sub_254761764(v125);
        if (os_log_type_enabled(v128, OS_LOG_TYPE_DEFAULT))
        {
          v133 = objc_msgSend__participantsCallInfo(v124, v129, v130, v131, v132);
          *buf = v156;
          selfCopy = v133;
          _os_log_impl(&dword_254743000, v128, OS_LOG_TYPE_DEFAULT, "_endChatWithReason participant info states %@", buf, 0xCu);
        }
      }

      v121 = objc_msgSend_countByEnumeratingWithState_objects_count_(v114, v117, &v158, v162, 16);
    }

    while (v121);
  }

  v138 = objc_msgSend_sharedInstance(IMAVController, v134, v135, v136, v137);
  objc_msgSend_updateActiveConference(v138, v139, v140, v141, v142);

  if (!selfCopy2->_hasGatheredInfo)
  {
    selfCopy2->_hasGatheredInfo = 1;
    objc_msgSend__submitCallEndedLoggingWithReason_andError_(selfCopy2, v143, v4, error, v146);
  }

  objc_msgSend__postStateToDelegateIfNecessary(selfCopy2, v143, v144, v145, v146);
  v151 = objc_msgSend_sharedInstance(IMAVInterface, v147, v148, v149, v150);
  objc_msgSend_unsetDelegate_(v151, v152, selfCopy2, v153, v154);
}

- (id)inviteesInfo
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v9 = objc_msgSend_remoteParticipants(self, v5, v6, v7, v8);
  v14 = objc_msgSend_lastObject(v9, v10, v11, v12, v13);

  v19 = objc_msgSend_additionalPeers(v14, v15, v16, v17, v18);
  v24 = objc_msgSend_count(v19, v20, v21, v22, v23);

  if (v24)
  {
    v29 = objc_msgSend_additionalPeers(v14, v25, v26, v27, v28);
    objc_msgSend_addObjectsFromArray_(v3, v30, v29, v31, v32);
  }

  else
  {
    v33 = objc_msgSend_otherIMHandle(self, v25, v26, v27, v28);
    v29 = objc_msgSend_originalID(v33, v34, v35, v36, v37);

    if (!objc_msgSend_length(v29, v38, v39, v40, v41))
    {
      v46 = objc_msgSend_otherIMHandle(self, v42, v43, v44, v45);
      v51 = objc_msgSend_ID(v46, v47, v48, v49, v50);

      v29 = v51;
    }

    objc_msgSend_addObject_(v3, v42, v29, v44, v45);
  }

  v56 = objc_msgSend_excludingPushTokens(v14, v52, v53, v54, v55);
  v61 = objc_msgSend_count(v56, v57, v58, v59, v60);

  if (v61)
  {
    v66 = objc_msgSend_excludingPushTokens(v14, v62, v63, v64, v65);
    objc_msgSend_addObjectsFromArray_(v4, v67, v66, v68, v69);
  }

  v70 = MEMORY[0x277CBEAC0];
  sessionID = self->_sessionID;
  if (sessionID)
  {
    v72 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v62, sessionID, v64, v65);
    objc_msgSend_dictionaryWithObjectsAndKeys_(v70, v73, v72, v74, v75, *MEMORY[0x277D19568], v3, *MEMORY[0x277D19500], v4, @"excludingPushTokens", 0);
  }

  else
  {
    v72 = 0;
    objc_msgSend_dictionaryWithObjectsAndKeys_(MEMORY[0x277CBEAC0], v62, 0, v64, v65, *MEMORY[0x277D19568], v3, *MEMORY[0x277D19500], v4, @"excludingPushTokens", 0);
  }
  v76 = ;
  if (sessionID)
  {
  }

  return v76;
}

- (BOOL)_isCallUpgradeTo:(id)to
{
  toCopy = to;
  v9 = objc_msgSend_otherIMHandle(self, v5, v6, v7, v8);
  v14 = objc_msgSend_ID(v9, v10, v11, v12, v13);
  v19 = objc_msgSend_ID(toCopy, v15, v16, v17, v18);

  LOBYTE(toCopy) = MEMORY[0x259C18A30](v14, v19);
  return toCopy;
}

- (BOOL)_isVideoUpgradeTo:(id)to
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_otherIMHandle(self, a2, to, v3, v4);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v11 = objc_msgSend_sharedInstance(IMAVCallManager, v7, v8, v9, v10, 0);
  v16 = objc_msgSend_calls(v11, v12, v13, v14, v15);

  v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v29, v33, 16);
  if (v18)
  {
    v23 = v18;
    v24 = *v30;
    while (2)
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v30 != v24)
        {
          objc_enumerationMutation(v16);
        }

        v26 = *(*(&v29 + 1) + 8 * i);
        if (v26 != self && objc_msgSend_isActive(*(*(&v29 + 1) + 8 * i), v19, v20, v21, v22) && objc_msgSend_isVideo(self, v19, v20, v21, v22) && (objc_msgSend_isVideo(v26, v19, v20, v21, v22) & 1) == 0 && (objc_msgSend__isCallUpgradeTo_(v26, v19, v6, v21, v22) & 1) != 0)
        {
          v27 = 1;
          goto LABEL_15;
        }
      }

      v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v19, &v29, v33, 16);
      if (v23)
      {
        continue;
      }

      break;
    }
  }

  v27 = 0;
LABEL_15:

  return v27;
}

- (void)inviteAll
{
  v3 = sub_254761764(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_254743000, v3, OS_LOG_TYPE_DEFAULT, "Starting invite process", buf, 2u);
  }

  objc_msgSend_stopTimingForKey_(self->_timingCollection, v4, @"time-to-invitation", v5, v6);
  objc_msgSend_stopTimingForKey_(self->_timingCollection, v7, @"time-to-av-invitation-op-creation", v8, v9);
  objc_msgSend__setActiveConference(self, v10, v11, v12, v13);
  objc_msgSend_setMute_(self, v14, 0, v15, v16);
  objc_msgSend_setPaused_(self, v17, 0, v18, v19);
  v24 = objc_msgSend_sharedInstance(IMAVInterface, v20, v21, v22, v23);
  isAVInterfaceReady = objc_msgSend_isAVInterfaceReady(v24, v25, v26, v27, v28);

  v31 = sub_254761764(v30);
  v32 = os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);
  if (isAVInterfaceReady)
  {
    if (v32)
    {
      *v56 = 0;
      _os_log_impl(&dword_254743000, v31, OS_LOG_TYPE_DEFAULT, "Delivering Invites", v56, 2u);
    }

    v37 = objc_msgSend_remoteParticipants(self, v33, v34, v35, v36);
    objc_msgSend_makeObjectsPerformSelector_(v37, v38, sel_sendInvitation, v39, v40);
  }

  else
  {
    if (v32)
    {
      *v55 = 0;
      _os_log_impl(&dword_254743000, v31, OS_LOG_TYPE_DEFAULT, "Initing Interface", v55, 2u);
    }

    self->_hasPendingInit = 1;
    v45 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v41, v42, v43, v44);
    objc_msgSend_addObserver_selector_name_object_(v45, v46, self, sel__vccInitDidFinish_, @"__kIMAVInterfaceReadyNotification", 0);

    v37 = objc_msgSend_sharedInstance(IMAVInterface, v47, v48, v49, v50);
    objc_msgSend_initAVInterface(v37, v51, v52, v53, v54);
  }
}

- (void)_cancelInvitationWithReason:(unsigned int)reason error:(int)error
{
  v5 = *&error;
  v6 = *&reason;
  v9 = objc_msgSend_initiatorParticipant(self, a2, *&reason, *&error, v4);
  objc_msgSend_setStateToEndedWithReason_andError_(v9, v7, v6, v5, v8);
}

- (void)invite:(id)invite additionalPeers:(id)peers excludingPushTokens:(id)tokens
{
  v111 = *MEMORY[0x277D85DE8];
  inviteCopy = invite;
  peersCopy = peers;
  tokensCopy = tokens;
  v11 = sub_254761764(tokensCopy);
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (inviteCopy)
  {
    if (v12)
    {
      v17 = objc_msgSend_ID(inviteCopy, v13, v14, v15, v16);
      *buf = 138412290;
      v110 = v17;
      _os_log_impl(&dword_254743000, v11, OS_LOG_TYPE_DEFAULT, "Asked to invite a buddy: %@", buf, 0xCu);
    }

    v11 = objc_msgSend_remoteParticipants(self, v18, v19, v20, v21);
    if (objc_msgSend_count(v11, v22, v23, v24, v25))
    {
      if (objc_msgSend_count(peersCopy, v26, v27, v28, v29))
      {
        v34 = objc_msgSend_remoteParticipants(self, v30, v31, v32, v33);
        v39 = objc_msgSend_lastObject(v34, v35, v36, v37, v38);

        v41 = sub_254761764(v40);
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v110 = peersCopy;
          _os_log_impl(&dword_254743000, v41, OS_LOG_TYPE_DEFAULT, "Additional peers %@", buf, 0xCu);
        }

        objc_msgSend_setAdditionalPeers_(v39, v42, peersCopy, v43, v44);
      }

      if (objc_msgSend_count(tokensCopy, v30, v31, v32, v33))
      {
        v49 = objc_msgSend_remoteParticipants(self, v45, v46, v47, v48);
        v54 = objc_msgSend_lastObject(v49, v50, v51, v52, v53);

        v56 = sub_254761764(v55);
        if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v110 = tokensCopy;
          _os_log_impl(&dword_254743000, v56, OS_LOG_TYPE_DEFAULT, "Excluding push tokens %@", buf, 0xCu);
        }

        objc_msgSend_setExcludingPushTokens_(v54, v57, tokensCopy, v58, v59);
      }

      ObjectsPerformSelector = objc_msgSend_makeObjectsPerformSelector_(v11, v45, sel_sendInvitation, v47, v48);
      inited = sub_254761764(ObjectsPerformSelector);
      if (os_log_type_enabled(inited, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v110 = v11;
        _os_log_impl(&dword_254743000, inited, OS_LOG_TYPE_DEFAULT, "We already have a remote participant in this chat %@, can't add more", buf, 0xCu);
      }
    }

    else
    {
      v62 = [IMAVChatParticipant alloc];
      v67 = objc_msgSend_account(inviteCopy, v63, v64, v65, v66);
      v72 = objc_msgSend_loginIMHandle(v67, v68, v69, v70, v71);
      v77 = objc_msgSend_account(inviteCopy, v73, v74, v75, v76);
      inited = objc_msgSend_initAs_invitedBy_toChat_account_(v62, v78, inviteCopy, v72, self, v77);

      v83 = objc_msgSend_count(peersCopy, v79, v80, v81, v82);
      if (v83)
      {
        v88 = sub_254761764(v83);
        if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v110 = peersCopy;
          _os_log_impl(&dword_254743000, v88, OS_LOG_TYPE_DEFAULT, "Additional peers %@", buf, 0xCu);
        }

        objc_msgSend_setAdditionalPeers_(inited, v89, peersCopy, v90, v91);
      }

      v92 = objc_msgSend_count(tokensCopy, v84, v85, v86, v87);
      if (v92)
      {
        v95 = sub_254761764(v92);
        if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v110 = tokensCopy;
          _os_log_impl(&dword_254743000, v95, OS_LOG_TYPE_DEFAULT, "Excluding push tokens %@", buf, 0xCu);
        }

        objc_msgSend_setExcludingPushTokens_(inited, v96, tokensCopy, v97, v98);
      }

      objc_msgSend__insertRemoteParticipant_atIndex_(self, v93, inited, 0, v94);
      objc_msgSend_sendInvitation(inited, v99, v100, v101, v102);
      v106 = objc_msgSend_dictionaryWithObjectsAndKeys_(MEMORY[0x277CBEAC0], v103, inited, v104, v105, @"__kIMAVChatParticipantKey", 0);
      objc_msgSend__postNotificationName_userInfo_(self, v107, @"__kIMAVChatParticipantAddedNotification", v106, v108);
    }
  }

  else if (v12)
  {
    *buf = 0;
    _os_log_impl(&dword_254743000, v11, OS_LOG_TYPE_DEFAULT, "[WARN] AVChat asked to invite buddy == nil !", buf, 2u);
  }
}

- (void)acceptInvitation
{
  v84 = *MEMORY[0x277D85DE8];
  isCaller = objc_msgSend_isCaller(self, a2, v2, v3, v4);
  if (isCaller)
  {
    v11 = sub_254761764(isCaller);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v82 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_254743000, v11, OS_LOG_TYPE_DEFAULT, "Received bogus when I'm actually the caller for chat: %@", &v82, 0xCu);
    }

    goto LABEL_17;
  }

  v12 = objc_msgSend_state(self, v7, v8, v9, v10);
  v13 = v12;
  v11 = sub_254761764(v12);
  v14 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v13 != 1)
  {
    if (!v14)
    {
      goto LABEL_17;
    }

    v66 = objc_msgSend_state(self, v15, v16, v17, v18);
    v67 = _NSStringDescriptionForIMAVChatState(v66);
    v82 = 138412290;
    selfCopy = v67;
    _os_log_impl(&dword_254743000, v11, OS_LOG_TYPE_DEFAULT, "Received bogus accept request in state: %@", &v82, 0xCu);
LABEL_16:

    goto LABEL_17;
  }

  if (v14)
  {
    LOWORD(v82) = 0;
    _os_log_impl(&dword_254743000, v11, OS_LOG_TYPE_DEFAULT, "Starting accept process", &v82, 2u);
  }

  objc_msgSend_stopTimingForKey_(self->_timingCollection, v19, @"time-to-response", v20, v21);
  objc_msgSend_startTimingForKey_(self->_timingCollection, v22, @"time-to-start-connecting", v23, v24);
  v11 = objc_msgSend_initiatorParticipant(self, v25, v26, v27, v28);
  v33 = objc_msgSend_sharedInstance(IMAVInterface, v29, v30, v31, v32);
  objc_msgSend_setDelegate_(v33, v34, self, v35, v36);

  objc_msgSend_setMute_(self, v37, 0, v38, v39);
  objc_msgSend_setPaused_(self, v40, 0, v41, v42);
  objc_msgSend_setState_(v11, v43, 3, v44, v45);
  objc_msgSend__setActiveConference(self, v46, v47, v48, v49);
  v54 = objc_msgSend_sharedInstance(IMAVInterface, v50, v51, v52, v53);
  isAVInterfaceReady = objc_msgSend_isAVInterfaceReady(v54, v55, v56, v57, v58);

  v61 = sub_254761764(v60);
  v62 = os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT);
  if (!isAVInterfaceReady)
  {
    if (v62)
    {
      LOWORD(v82) = 0;
      _os_log_impl(&dword_254743000, v61, OS_LOG_TYPE_DEFAULT, "Building AV Interface", &v82, 2u);
    }

    self->_hasPendingAccept = 1;
    v72 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v68, v69, v70, v71);
    objc_msgSend_addObserver_selector_name_object_(v72, v73, self, sel__vccInitDidFinish_, @"__kIMAVInterfaceReadyNotification", 0);

    v67 = objc_msgSend_sharedInstance(IMAVInterface, v74, v75, v76, v77);
    objc_msgSend_initAVInterface(v67, v78, v79, v80, v81);
    goto LABEL_16;
  }

  if (v62)
  {
    LOWORD(v82) = 0;
    _os_log_impl(&dword_254743000, v61, OS_LOG_TYPE_DEFAULT, "Sending response", &v82, 2u);
  }

  objc_msgSend_sendResponse_(v11, v63, 0, v64, v65);
LABEL_17:
}

- (void)declineInvitationWithResponse:(unsigned int)response
{
  v3 = *&response;
  v5 = sub_254761764(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v21 = 0;
    _os_log_impl(&dword_254743000, v5, OS_LOG_TYPE_DEFAULT, "Starting decline process", v21, 2u);
  }

  objc_msgSend_stopTimingForKey_(self->_timingCollection, v6, @"time-to-response", v7, v8);
  v13 = objc_msgSend_initiatorParticipant(self, v9, v10, v11, v12);
  objc_msgSend_sendResponse_(v13, v14, v3, v15, v16);

  if (v3 > 5)
  {
    switch(v3)
    {
      case 6:
        selfCopy6 = self;
        v20 = 14;
        break;
      case 7:
        selfCopy6 = self;
        v20 = 21;
        break;
      case 0xB:
        selfCopy6 = self;
        v20 = 31;
        break;
      default:
LABEL_14:
        selfCopy6 = self;
        v20 = 5;
        break;
    }
  }

  else
  {
    if (v3 != 2)
    {
      if (v3 == 4)
      {
        selfCopy6 = self;
        v20 = 12;
        goto LABEL_17;
      }

      if (v3 == 5)
      {
        objc_msgSend__endChatWithReason_andError_(self, v17, 12, 6000, v18);
        return;
      }

      goto LABEL_14;
    }

    selfCopy6 = self;
    v20 = 8;
  }

LABEL_17:
  objc_msgSend__endChatWithReason_andError_(selfCopy6, v17, v20, 0, v18);
}

- (void)declineInvitation
{
  v3 = sub_254761764(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_254743000, v3, OS_LOG_TYPE_DEFAULT, "Starting decline process", v7, 2u);
  }

  objc_msgSend_declineInvitationWithResponse_(self, v4, 1, v5, v6);
}

- (void)_setStateDisconnected
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = sub_254761764(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_254743000, v3, OS_LOG_TYPE_DEFAULT, "avchat: %@", &v13, 0xCu);
  }

  localState = self->_localState;
  if (localState == 3)
  {
    v9 = 6;
  }

  else
  {
    if (localState != 4)
    {
      return;
    }

    v9 = 7;
  }

  v10 = objc_msgSend_endedError(self, v4, v5, v6, v7);
  objc_msgSend__endChatWithReason_andError_(self, v11, v9, v10, v12);
}

- (BOOL)_processVCResponseDict:(id)dict
{
  v62 = *MEMORY[0x277D85DE8];
  dictCopy = dict;
  v8 = dictCopy;
  if (dictCopy)
  {
    v9 = objc_msgSend_objectForKey_(dictCopy, v5, *MEMORY[0x277D19548], v6, v7);
    v17 = objc_msgSend_participantMatchingIMHandle_(self, v10, v9, v11, v12);
    if (!v17)
    {
      v18 = objc_msgSend_remoteParticipants(self, v13, v14, v15, v16);
      v17 = objc_msgSend_lastObject(v18, v19, v20, v21, v22);
    }

    objc_msgSend__switchToUseNewIMHandle_(v17, v13, v9, v15, v16);
    v29 = objc_msgSend_objectForKey_(v8, v23, *MEMORY[0x277D19558], v24, v25);
    if (!v29)
    {
      v51 = 1;
LABEL_22:

      goto LABEL_23;
    }

    v30 = objc_msgSend_dictionaryWithPlistData_(MEMORY[0x277CBEAC0], v26, v29, v27, v28);
    v34 = objc_msgSend_objectForKey_(v30, v31, *MEMORY[0x277D19568], v32, v33);
    v39 = v34;
    if (v34)
    {
      v40 = objc_msgSend_unsignedIntValue(v34, v35, v36, v37, v38);
      v41 = v40;
      sessionID = self->_sessionID;
      v43 = sub_254761764(v40);
      v44 = os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT);
      if (v41 == sessionID)
      {
        if (v44)
        {
          v56 = 138412290;
          v57 = v39;
          _os_log_impl(&dword_254743000, v43, OS_LOG_TYPE_DEFAULT, "response or counter-proposal received for expected session ID %@", &v56, 0xCu);
        }

        v51 = objc_msgSend__processResponseDictionary_allowSecondConnection_(v17, v49, v8, 0, v50);
        goto LABEL_21;
      }

      if (v44)
      {
        v53 = objc_msgSend_unsignedIntValue(v39, v45, v46, v47, v48);
        v54 = self->_sessionID;
        v56 = 138412802;
        v57 = v9;
        v58 = 1024;
        v59 = v53;
        v60 = 1024;
        v61 = v54;
        _os_log_impl(&dword_254743000, v43, OS_LOG_TYPE_DEFAULT, "Response or counter-proposal received from %@ with session ID %d that doesn't match %u", &v56, 0x18u);
      }
    }

    else
    {
      v52 = sub_254761764(0);
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v56) = 0;
        _os_log_impl(&dword_254743000, v52, OS_LOG_TYPE_DEFAULT, "[WARN] No session ID", &v56, 2u);
      }
    }

    v51 = 0;
LABEL_21:

    goto LABEL_22;
  }

  v9 = sub_254761764(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v56) = 0;
    _os_log_impl(&dword_254743000, v9, OS_LOG_TYPE_DEFAULT, "[WARN] [IMAVChat _processVCResponseDict:] nil dict", &v56, 2u);
  }

  v51 = 0;
LABEL_23:

  return v51;
}

- (void)__responseToVCInvite:(id)invite
{
  v30 = *MEMORY[0x277D85DE8];
  inviteCopy = invite;
  v8 = objc_msgSend_objectForKey_(inviteCopy, v5, *MEMORY[0x277D19548], v6, v7);
  v9 = sub_254761764(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v26 = 138412546;
    v27 = v8;
    v28 = 2112;
    v29 = inviteCopy;
    _os_log_impl(&dword_254743000, v9, OS_LOG_TYPE_DEFAULT, "Response from: %@  dictionary: %@", &v26, 0x16u);
  }

  objc_msgSend_stopTimingForKey_(self->_timingCollection, v10, @"time-to-response", v11, v12);
  objc_msgSend_startTimingForKey_(self->_timingCollection, v13, @"time-to-start-connecting", v14, v15);
  v19 = objc_msgSend__processVCResponseDict_(self, v16, inviteCopy, v17, v18);
  v20 = v19;
  v21 = sub_254761764(v19);
  v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
  if (v20)
  {
    if (v22)
    {
      LOWORD(v26) = 0;
      v23 = "Successfully processed VC response";
      v24 = v21;
      v25 = 2;
LABEL_8:
      _os_log_impl(&dword_254743000, v24, OS_LOG_TYPE_DEFAULT, v23, &v26, v25);
    }
  }

  else if (v22)
  {
    v26 = 138412290;
    v27 = inviteCopy;
    v23 = "[WARN] Failed processing of VC response dictionary: %@";
    v24 = v21;
    v25 = 12;
    goto LABEL_8;
  }
}

- (void)_responseToVCInvite:(id)invite
{
  inviteCopy = invite;
  if (objc_msgSend_state(self, v5, v6, v7, v8) != 2 && objc_msgSend_state(self, v9, v10, v11, v12) != 3)
  {
    v13 = objc_msgSend_state(self, v9, v10, v11, v12);
    if (v13 != 4)
    {
      v18 = sub_254761764(v13);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v19 = "[WARN] Received response while we're not waiting for a response";
        v20 = buf;
        goto LABEL_10;
      }

LABEL_11:

      goto LABEL_12;
    }
  }

  isCaller = objc_msgSend_isCaller(self, v9, v10, v11, v12);
  if ((isCaller & 1) == 0)
  {
    v18 = sub_254761764(isCaller);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 0;
      v19 = "[WARN] Received response while we're not the caller, ignoring";
      v20 = &v21;
LABEL_10:
      _os_log_impl(&dword_254743000, v18, OS_LOG_TYPE_DEFAULT, v19, v20, 2u);
      goto LABEL_11;
    }

    goto LABEL_11;
  }

  objc_msgSend___responseToVCInvite_(self, v15, inviteCopy, v16, v17);
LABEL_12:
}

- (void)_handleGenericAVMessageFromParticipant:(id)participant type:(unsigned int)type userInfo:(id)info handled:(BOOL)handled
{
  *&v40[5] = *MEMORY[0x277D85DE8];
  participantCopy = participant;
  infoCopy = info;
  v12 = infoCopy;
  if (type <= 1000)
  {
    if (type != 350)
    {
      if (type == 1000)
      {
        v13 = sub_254761764(infoCopy);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v39 = 138412290;
          *v40 = participantCopy;
          _os_log_impl(&dword_254743000, v13, OS_LOG_TYPE_DEFAULT, "Received ping from participant: %@  => sending pong", &v39, 0xCu);
        }

        objc_msgSend_sendAVMessage_userInfo_(participantCopy, v14, 1001, 0, v15);
        goto LABEL_22;
      }

      goto LABEL_12;
    }

    v21 = sub_254761764(infoCopy);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v39 = 138412290;
      *v40 = participantCopy;
      _os_log_impl(&dword_254743000, v21, OS_LOG_TYPE_DEFAULT, "Received prepare from participant: %@", &v39, 0xCu);
    }

    goto LABEL_18;
  }

  if (type != 1001)
  {
    if (type != 1500)
    {
LABEL_12:
      if (!handled)
      {
        v24 = sub_254761764(infoCopy);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v29 = objc_msgSend_imHandle(participantCopy, v25, v26, v27, v28);
          v34 = objc_msgSend_ID(v29, v30, v31, v32, v33);
          v39 = 67109378;
          v40[0] = type;
          LOWORD(v40[1]) = 2112;
          *(&v40[1] + 2) = v34;
          _os_log_impl(&dword_254743000, v24, OS_LOG_TYPE_DEFAULT, "[WARN] Unhandled messagetype id: %d from: %@", &v39, 0x12u);
        }
      }

      goto LABEL_22;
    }

    v16 = sub_254761764(infoCopy);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v39 = 138412290;
      *v40 = participantCopy;
      _os_log_impl(&dword_254743000, v16, OS_LOG_TYPE_DEFAULT, "Received local IP change from participant: %@ => notifying AVConference", &v39, 0xCu);
    }

    v21 = objc_msgSend_sharedInstance(IMAVInterface, v17, v18, v19, v20);
    objc_msgSend_processRemoteIPChanged_fromParticipant_(v21, v22, v12, participantCopy, v23);
LABEL_18:

    goto LABEL_22;
  }

  v35 = sub_254761764(infoCopy);
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    v39 = 138412290;
    *v40 = participantCopy;
    _os_log_impl(&dword_254743000, v35, OS_LOG_TYPE_DEFAULT, "Received pong from participant: %@  => clearing break before make timer", &v39, 0xCu);
  }

  objc_msgSend_setMayRequireBreakBeforeMake_(self, v36, 0, v37, v38);
LABEL_22:
}

- (void)handleGenericAVMessageFromParticipant:(id)participant type:(unsigned int)type userInfo:(id)info
{
  v6 = *&type;
  v18 = *MEMORY[0x277D85DE8];
  participantCopy = participant;
  infoCopy = info;
  v10 = sub_254761764(infoCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412802;
    v13 = participantCopy;
    v14 = 1024;
    v15 = v6;
    v16 = 2112;
    v17 = infoCopy;
    _os_log_impl(&dword_254743000, v10, OS_LOG_TYPE_DEFAULT, "handleGenericAVMessageFromParticipant: %@   Type: %d   UserInfo: %@", &v12, 0x1Cu);
  }

  objc_msgSend__handleGenericAVMessageFromParticipant_type_userInfo_handled_(self, v11, participantCopy, v6, infoCopy, 0);
}

- (id)participantWithAVConferenceCallID:(int64_t)d
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = objc_msgSend_remoteParticipants(self, a2, d, v3, v4, 0);
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v18, v22, 16);
  if (v8)
  {
    v12 = v8;
    v13 = *v19;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v6);
        }

        v15 = *(*(&v18 + 1) + 8 * i);
        if (objc_msgSend_matchesAVConferenceCallID_(v15, v9, d, v10, v11))
        {
          v16 = v15;
          goto LABEL_11;
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v18, v22, 16);
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v16 = 0;
LABEL_11:

  return v16;
}

- (id)participantWithID:(id)d
{
  v15 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = sub_254761764(dCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    selfCopy = self;
    v13 = 2112;
    v14 = dCopy;
    _os_log_impl(&dword_254743000, v5, OS_LOG_TYPE_DEFAULT, "avchat: %@ vcPartyID: %@", &v11, 0x16u);
  }

  v9 = objc_msgSend__participantMatchingVCPartyID_(self, v6, dCopy, v7, v8);

  return v9;
}

- (id)vcPartyIDForIMHandle:(id)handle
{
  v22 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  v5 = sub_254761764(handleCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412546;
    selfCopy = self;
    v20 = 2112;
    v21 = handleCopy;
    _os_log_impl(&dword_254743000, v5, OS_LOG_TYPE_DEFAULT, "avchat: %@ imhandle: %@", &v18, 0x16u);
  }

  v9 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v6, ++dword_27F6103F0, v7, v8);
  v14 = objc_msgSend_stringValue(v9, v10, v11, v12, v13);

  if (dword_27F6103F0 == 9999)
  {
    dword_27F6103F0 = 1000;
  }

  v16 = sub_254761764(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412290;
    selfCopy = v14;
    _os_log_impl(&dword_254743000, v16, OS_LOG_TYPE_DEFAULT, "  Using VC Party Coerced ID: %@", &v18, 0xCu);
  }

  return v14;
}

- (id)participantMatchingIMHandle:(id)handle
{
  v22 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = self->_participants;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v17, v21, 16);
  if (v11)
  {
    v12 = *v18;
    while (2)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v5);
        }

        v14 = *(*(&v17 + 1) + 8 * i);
        v15 = objc_msgSend_imHandle(v14, v7, v8, v9, v10, v17);

        if (v15 == handleCopy)
        {
          v11 = v14;
          goto LABEL_11;
        }
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v17, v21, 16);
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v11;
}

- (void)_setCallerProperties:(id)properties
{
  v19 = *MEMORY[0x277D85DE8];
  propertiesCopy = properties;
  v6 = sub_254761764(propertiesCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412546;
    selfCopy = self;
    v17 = 2112;
    v18 = propertiesCopy;
    _os_log_impl(&dword_254743000, v6, OS_LOG_TYPE_DEFAULT, "avchat: %@ properties: %@", &v15, 0x16u);
  }

  if (self->_callerProperties != propertiesCopy)
  {
    objc_storeStrong(&self->_callerProperties, properties);
    v11 = objc_msgSend_initiatorParticipant(self, v7, v8, v9, v10);
    objc_msgSend_setProperties_(v11, v12, propertiesCopy, v13, v14);
  }
}

- (IMHandle)otherIMHandle
{
  if (objc_msgSend_count(self->_participants, a2, v2, v3, v4) < 2)
  {
    v14 = 0;
  }

  else
  {
    v9 = objc_msgSend_objectAtIndex_(self->_participants, v6, 1, v7, v8);
    v14 = objc_msgSend_imHandle(v9, v10, v11, v12, v13);
  }

  return v14;
}

- (void)_setConferenceID:(id)d
{
  if (self->_conferenceID != d)
  {
    v26 = v5;
    v27 = v6;
    v8 = objc_msgSend_copy(d, a2, d, v3, v4);
    conferenceID = self->_conferenceID;
    self->_conferenceID = v8;

    objc_msgSend__postNotificationName_userInfo_(self, v10, @"__kIMAVChatConferenceIDChangedNotification", 0, v11);
    ObjectsPerformSelector_withObject = objc_msgSend_makeObjectsPerformSelector_withObject_(self->_participants, v12, sel__setConferenceID_, self->_conferenceID, v13);
    v15 = sub_254761764(ObjectsPerformSelector_withObject);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *v25 = 0;
      _os_log_impl(&dword_254743000, v15, OS_LOG_TYPE_DEFAULT, "Conference ID changed sending proxy update", v25, 2u);
    }

    v20 = objc_msgSend_sharedInstance(IMAVCallManager, v16, v17, v18, v19);
    objc_msgSend__sendProxyUpdate(v20, v21, v22, v23, v24);
  }
}

- (void)_setCreationDate
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = sub_254761764(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_254743000, v3, OS_LOG_TYPE_DEFAULT, "avchat: %@", &v12, 0xCu);
  }

  if (!self->_dateCreated)
  {
    v8 = objc_msgSend_date(MEMORY[0x277CBEAA8], v4, v5, v6, v7);
    dateCreated = self->_dateCreated;
    self->_dateCreated = v8;
  }

  if (!self->_conferenceID)
  {
    v10 = sub_25475B138();
    conferenceID = self->_conferenceID;
    self->_conferenceID = v10;
  }
}

- (void)_setDateConnected
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = sub_254761764(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_254743000, v3, OS_LOG_TYPE_DEFAULT, "avchat: %@", &v21, 0xCu);
  }

  if (!self->_dateConnected)
  {
    v8 = objc_msgSend_date(MEMORY[0x277CBEAA8], v4, v5, v6, v7);
    dateConnected = self->_dateConnected;
    self->_dateConnected = v8;

    v11 = sub_254761764(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&dword_254743000, v11, OS_LOG_TYPE_DEFAULT, "Date connected changed, sending proxy update", &v21, 2u);
    }

    v16 = objc_msgSend_sharedInstance(IMAVCallManager, v12, v13, v14, v15);
    objc_msgSend__sendProxyUpdate(v16, v17, v18, v19, v20);
  }
}

- (int64_t)_bustedCallID
{
  v5 = objc_msgSend_remoteParticipants(self, a2, v2, v3, v4);
  v10 = objc_msgSend___imFirstObject(v5, v6, v7, v8, v9);
  v15 = objc_msgSend_bestCallID(v10, v11, v12, v13, v14);

  return v15;
}

- (NSNumber)_remoteNatType
{
  v5 = objc_msgSend_remoteParticipants(self, a2, v2, v3, v4);
  v10 = objc_msgSend_lastObject(v5, v6, v7, v8, v9);
  v15 = objc_msgSend__natType(v10, v11, v12, v13, v14);

  return v15;
}

- (NSNumber)_currentNatType
{
  v6 = objc_msgSend_sharedInstance(IMAVInterface, a2, v2, v3, v4);
  v10 = objc_msgSend_natTypeForAVChat_(v6, v7, self, v8, v9);

  return v10;
}

- (NSNumber)_connectDuration
{
  v6 = objc_msgSend_dateConnected(self, a2, v2, v3, v4);
  v11 = v6;
  if (self->_dateStartedConnecting)
  {
    if (!v6)
    {
      v11 = objc_msgSend_date(MEMORY[0x277CBEAA8], v7, v8, v9, v10);
    }

    objc_msgSend_timeIntervalSinceDate_(v11, v7, self->_dateStartedConnecting, v9, v10);
  }

  else
  {
    v12 = 0.0;
  }

  v13 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v7, v8, v9, v10, v12);

  return v13;
}

- (NSNumber)_callDuration
{
  v6 = objc_msgSend_dateConnected(self, a2, v2, v3, v4);
  v11 = objc_msgSend_dateEnded(self, v7, v8, v9, v10);
  v16 = v11;
  if (v6)
  {
    if (v11)
    {
      v17 = v11;
    }

    else
    {
      v17 = objc_msgSend_date(MEMORY[0x277CBEAA8], v12, v13, v14, v15);
    }

    v21 = v17;
    objc_msgSend_timeIntervalSinceDate_(v17, v18, v6, v19, v20);
    v23 = v22;

    objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v24, v25, v26, v27, v23);
  }

  else
  {
    objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v12, v13, v14, v15, 0.0);
  }
  v28 = ;

  return v28;
}

- (NSNumber)_relayConnectDuration
{
  v5 = 0.0;
  if (self->_dateReceivedRelayInitiate)
  {
    dateReceivedRelayUpdate = self->_dateReceivedRelayUpdate;
    if (dateReceivedRelayUpdate)
    {
      v8 = dateReceivedRelayUpdate;
    }

    else
    {
      v8 = objc_msgSend_date(MEMORY[0x277CBEAA8], a2, v2, v3, v4);
    }

    v12 = v8;
    objc_msgSend_timeIntervalSinceDate_(v8, v9, self->_dateReceivedRelayInitiate, v10, v11);
    v5 = v13;
  }

  if (v5 >= 0.0)
  {
    v14 = v5;
  }

  else
  {
    v14 = 0.0;
  }

  v15 = MEMORY[0x277CCABB0];

  return objc_msgSend_numberWithDouble_(v15, a2, v2, v3, v4, v14);
}

- (NSNumber)_natType
{
  v14 = *MEMORY[0x277D85DE8];
  natType = self->_natType;
  if (natType)
  {
    v6 = objc_msgSend_unsignedIntValue(natType, a2, v2, v3, v4);
  }

  else
  {
    v6 = 0xFFFFFFFFLL;
  }

  if (CFPreferencesGetAppBooleanValue(@"UseCustomNatType", @"com.apple.conference", 0))
  {
    v6 = IMGetDomainIntForKey();
    v10 = sub_254761764(v6);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13[0] = 67109120;
      v13[1] = v6;
      _os_log_impl(&dword_254743000, v10, OS_LOG_TYPE_DEFAULT, "overriding natType: %u", v13, 8u);
    }
  }

  if ((v6 & 0x80000000) != 0)
  {
    v11 = 0;
  }

  else
  {
    v11 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v7, v6, v8, v9);
  }

  return v11;
}

- (void)setRelayed:(BOOL)relayed
{
  v20 = *MEMORY[0x277D85DE8];
  if (self->_relayed != relayed)
  {
    relayedCopy = relayed;
    v5 = sub_254761764(self);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = @"NO";
      if (self->_relayed)
      {
        v7 = @"YES";
      }

      else
      {
        v7 = @"NO";
      }

      if (relayedCopy)
      {
        v6 = @"YES";
      }

      v16 = 138412546;
      v17 = v7;
      v18 = 2112;
      v19 = v6;
      _os_log_impl(&dword_254743000, v5, OS_LOG_TYPE_DEFAULT, "Asked to set relayed from %@ to %@.", &v16, 0x16u);
    }

    self->_relayed = relayedCopy;
    v12 = objc_msgSend_sharedInstance(IMAVInterface, v8, v9, v10, v11);
    objc_msgSend_chatRelayedStatusChanged_(v12, v13, self, v14, v15);
  }
}

- (void)setMayRequireBreakBeforeMake:(BOOL)make
{
  v14 = *MEMORY[0x277D85DE8];
  if (self->_mayRequireBreakBeforeMake != make)
  {
    makeCopy = make;
    v5 = sub_254761764(self);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = @"NO";
      if (self->_mayRequireBreakBeforeMake)
      {
        v7 = @"YES";
      }

      else
      {
        v7 = @"NO";
      }

      if (makeCopy)
      {
        v6 = @"YES";
      }

      v10 = 138412546;
      v11 = v7;
      v12 = 2112;
      v13 = v6;
      _os_log_impl(&dword_254743000, v5, OS_LOG_TYPE_DEFAULT, "Asked to set mayRequireBreakBeforeMake from %@ to %@.", &v10, 0x16u);
    }

    self->_mayRequireBreakBeforeMake = makeCopy;
    objc_msgSend__postNotificationName_userInfo_(self, v8, @"__kIMAVChatMayRequireBreakBeforeMakeChangedNotification", 0, v9);
  }
}

- (unint64_t)_localNetworkConnectionType
{
  result = self->_localNetworkConnectionType;
  if (!result)
  {
    v7 = objc_msgSend_sharedInstance(MEMORY[0x277D07DD8], a2, v2, v3, v4);
    v16 = objc_msgSend_allowAnyNetwork(v7, v8, v9, v10, v11);
    if ((v16 & 1) != 0 || (objc_msgSend_sharedInstance(MEMORY[0x277D07DB0], v12, v13, v14, v15), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend_nonWifiFaceTimeAvailable(v5, v17, v18, v19, v20)))
    {
      v21 = objc_msgSend_sharedInstance(MEMORY[0x277D07DD8], v12, v13, v14, v15);
      v26 = objc_msgSend_dataActiveAndReachable(v21, v22, v23, v24, v25);

      if (v16)
      {
LABEL_8:

        if (v26)
        {
          return 1;
        }

        else
        {
          return 2;
        }
      }
    }

    else
    {
      v26 = 0;
    }

    goto LABEL_8;
  }

  return result;
}

- (NSArray)_imHandles
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = objc_msgSend_remoteParticipants(self, v4, v5, v6, v7, 0);
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v23, v27, 16);
  if (v10)
  {
    v15 = v10;
    v16 = *v24;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v24 != v16)
        {
          objc_enumerationMutation(v8);
        }

        v18 = objc_msgSend_imHandle(*(*(&v23 + 1) + 8 * i), v11, v12, v13, v14);
        objc_msgSend_addObject_(v3, v19, v18, v20, v21);
      }

      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v23, v27, 16);
    }

    while (v15);
  }

  return v3;
}

- (void)_handleAVError:(id)error
{
  v56[2] = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v6 = sub_254761764(errorCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy2 = self;
    v53 = 2112;
    v54 = errorCopy;
    _os_log_impl(&dword_254743000, v6, OS_LOG_TYPE_DEFAULT, "AVChat: %@ received error: %@", buf, 0x16u);
  }

  if (!errorCopy || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), (isKindOfClass & 1) != 0))
  {
    isActive = objc_msgSend_isActive(self, v7, v8, v9, v10);
    if (isActive)
    {
      v50 = 0;
      v49 = 1;
      v17 = objc_msgSend_state(self, v13, v14, v15, v16);
      sub_2547568A8(errorCopy, &v50 + 1, &v50, &v49);
      v19 = sub_254761764(v18);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v24 = objc_msgSend_domain(errorCopy, v20, v21, v22, v23);
        v29 = objc_msgSend_description(errorCopy, v25, v26, v27, v28);
        v34 = objc_msgSend_code(errorCopy, v30, v31, v32, v33);
        v39 = _NSStringDescriptionForIMAVChatEndedReason(HIDWORD(v50), v35, v36, v37, v38);
        *buf = 138413058;
        selfCopy2 = v24;
        v53 = 2112;
        v54 = v29;
        v55 = 1024;
        LODWORD(v56[0]) = v34;
        WORD2(v56[0]) = 2112;
        *(v56 + 6) = v39;
        _os_log_impl(&dword_254743000, v19, OS_LOG_TYPE_DEFAULT, "Conference received error: [%@:%@:%d:%@]", buf, 0x26u);
      }

      if (v17 != 4 || (v49 & 1) != 0)
      {
        v41 = sub_254761764(v40);
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_254743000, v41, OS_LOG_TYPE_DEFAULT, "This is a fatal error", buf, 2u);
        }

        objc_storeStrong(&self->_error, error);
        objc_msgSend__endChatWithReason_andError_(self, v42, HIDWORD(v50), v50, v43);
        goto LABEL_20;
      }

      v44 = sub_254761764(v40);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v45 = "This is not a fatal error, and we're connected already - so ignoring";
        goto LABEL_15;
      }
    }

    else
    {
      v44 = sub_254761764(isActive);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v45 = "Ignoring error, we're already dead anyway!";
LABEL_15:
        _os_log_impl(&dword_254743000, v44, OS_LOG_TYPE_DEFAULT, v45, buf, 2u);
      }
    }

    goto LABEL_20;
  }

  v46 = sub_254761764(isKindOfClass);
  if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
  {
    v47 = objc_opt_class();
    v48 = NSStringFromClass(v47);
    *buf = 138412802;
    selfCopy2 = self;
    v53 = 2112;
    v54 = errorCopy;
    v55 = 2112;
    v56[0] = v48;
    _os_log_impl(&dword_254743000, v46, OS_LOG_TYPE_DEFAULT, "[WARN] Invalid error type posted to chat: %@   error: %@    class: %@", buf, 0x20u);
  }

LABEL_20:
}

- (void)_postNotificationName:(id)name userInfo:(id)info
{
  v22 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  infoCopy = info;
  v8 = infoCopy;
  if (self->_GUID)
  {
    v9 = sub_254761764(infoCopy);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412802;
      v17 = nameCopy;
      v18 = 2112;
      selfCopy = self;
      v20 = 2112;
      v21 = v8;
      _os_log_impl(&dword_254743000, v9, OS_LOG_TYPE_DEFAULT, "Posting notification name: %@  object: %@  userInfo: %@", &v16, 0x20u);
    }

    v14 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v10, v11, v12, v13);
    objc_msgSend___mainThreadPostNotificationName_object_userInfo_(v14, v15, nameCopy, self, v8);
  }
}

- (void)_postNotificationName:(id)name participant:(id)participant userInfo:(id)info
{
  v25 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  participantCopy = participant;
  infoCopy = info;
  v11 = infoCopy;
  if (self->_GUID)
  {
    v12 = sub_254761764(infoCopy);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138412802;
      v20 = nameCopy;
      v21 = 2112;
      v22 = participantCopy;
      v23 = 2112;
      v24 = v11;
      _os_log_impl(&dword_254743000, v12, OS_LOG_TYPE_DEFAULT, "Posting participant notification name: %@  object: %@  userInfo: %@", &v19, 0x20u);
    }

    v17 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v13, v14, v15, v16);
    objc_msgSend___mainThreadPostNotificationName_object_userInfo_(v17, v18, nameCopy, participantCopy, v11);
  }
}

- (void)_noteFirstFrame
{
  v6 = objc_msgSend_dateConnected(self, a2, v2, v3, v4);

  if (!v6)
  {
    objc_msgSend__setDateConnected(self, v7, v8, v9, v10);
    objc_msgSend__submitCallConnectedLogging(self, v11, v12, v13, v14);
  }

  self->_hasReceivedFirstFrame = 1;
  v19 = objc_msgSend_sharedInstance(IMAVCallManager, v7, v8, v9, v10);
  objc_msgSend__sendProxyUpdate(v19, v15, v16, v17, v18);
}

- (void)_cacheBool:(BOOL)bool forKey:(id)key
{
  boolCopy = bool;
  key = key;
  if (!self->_conferenceStateCache)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    conferenceStateCache = self->_conferenceStateCache;
    self->_conferenceStateCache = Mutable;
  }

  v11 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v6, boolCopy, v7, v8);
  if (v11)
  {
    CFDictionarySetValue(self->_conferenceStateCache, key, v11);
  }
}

- (BOOL)_hasCachedBoolForKey:(id)key
{
  keyCopy = key;
  if (objc_msgSend_length(keyCopy, v5, v6, v7, v8))
  {
    v12 = objc_msgSend_objectForKey_(self->_conferenceStateCache, v9, keyCopy, v10, v11);
    v13 = v12 != 0;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)_cachedBoolForKey:(id)key
{
  keyCopy = key;
  if (objc_msgSend_length(keyCopy, v5, v6, v7, v8))
  {
    v12 = objc_msgSend_objectForKey_(self->_conferenceStateCache, v9, keyCopy, v10, v11);
    v17 = objc_msgSend_BOOLValue(v12, v13, v14, v15, v16);
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (CGSize)portraitAspectRatios
{
  width = self->_portraitAspectRatios.width;
  height = self->_portraitAspectRatios.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)landscapeAspectRatios
{
  width = self->_landscapeAspectRatios.width;
  height = self->_landscapeAspectRatios.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)localVideoLayer
{
  v5 = objc_msgSend_sharedInstance(IMAVInterface, a2, v2, v3, v4);
  v10 = objc_msgSend_localVideoLayer(v5, v6, v7, v8, v9);

  return v10;
}

- (void)setLocalVideoLayer:(void *)layer
{
  v9 = objc_msgSend_sharedInstance(IMAVInterface, a2, layer, v3, v4);
  objc_msgSend_setLocalVideoLayer_(v9, v6, layer, v7, v8);
}

- (void)localVideoBackLayer
{
  v5 = objc_msgSend_sharedInstance(IMAVInterface, a2, v2, v3, v4);
  v10 = objc_msgSend_localVideoBackLayer(v5, v6, v7, v8, v9);

  return v10;
}

- (void)setLocalVideoBackLayer:(void *)layer
{
  v9 = objc_msgSend_sharedInstance(IMAVInterface, a2, layer, v3, v4);
  objc_msgSend_setLocalVideoBackLayer_(v9, v6, layer, v7, v8);
}

- (void)setRemoteVideoPresentationSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v12 = objc_msgSend_sharedInstance(IMAVInterface, a2, v3, v4, v5);
  objc_msgSend_setRemoteVideoPresentationSize_forChat_(v12, v9, self, v10, v11, width, height);
}

- (void)setRemoteVideoPresentationState:(unsigned int)state
{
  v5 = *&state;
  v9 = objc_msgSend_sharedInstance(IMAVInterface, a2, *&state, v3, v4);
  objc_msgSend_setRemoteVideoPresentationState_forChat_(v9, v7, v5, self, v8);
}

- (BOOL)startPreviewWithError:(id *)error
{
  errorCopy = error;
  v6 = objc_msgSend_sharedInstance(IMAVInterface, a2, error, v3, v4);
  LOBYTE(errorCopy) = objc_msgSend_startPreviewWithError_(v6, v7, errorCopy, v8, v9);

  return errorCopy;
}

- (BOOL)stopPreview
{
  v5 = objc_msgSend_sharedInstance(IMAVInterface, a2, v2, v3, v4);
  v10 = objc_msgSend_stopPreview(v5, v6, v7, v8, v9);

  return v10;
}

- (void)_postParticipantMediaChangeNotification:(id)notification cameraChanged:(BOOL)changed orientationChanged:(BOOL)orientationChanged aspectChanged:(BOOL)aspectChanged cameraWillSwitch:(BOOL)switch camera:(unsigned int)camera orientation:(unsigned int)orientation aspect:(CGSize)self0
{
  height = aspect.height;
  width = aspect.width;
  switchCopy = switch;
  aspectChangedCopy = aspectChanged;
  orientationChangedCopy = orientationChanged;
  changedCopy = changed;
  notificationCopy = notification;
  v22 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v23 = !aspectChangedCopy && !switchCopy && !orientationChangedCopy && !changedCopy;
  if ((v23 & 1) != 0 || changedCopy)
  {
    v24 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v18, camera, v20, v21);
    if (v24)
    {
      CFDictionarySetValue(v22, @"__kIMAVChatCameraTypeKey", v24);
    }
  }

  if ((v23 | orientationChangedCopy) == 1)
  {
    v25 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v18, orientation, v20, v21);
    if (v25)
    {
      CFDictionarySetValue(v22, @"__kIMAVChatCameraOrientationKey", v25);
    }
  }

  if ((v23 | aspectChangedCopy) == 1)
  {
    v26 = objc_msgSend_valueWithSize_(MEMORY[0x277CCAE60], v18, v19, v20, v21, width, height);
    if (v26)
    {
      CFDictionarySetValue(v22, @"__kIMAVChatCameraAspectRatioKey", v26);
    }
  }

  if ((v23 | switchCopy) == 1)
  {
    CFDictionarySetValue(v22, @"__kIMAVChatCameraWillChangeKey", &unk_286692BA8);
  }

  if (notificationCopy)
  {
    objc_msgSend__postNotificationName_participant_userInfo_(self, notificationCopy, @"__kIMAVChatMediaPropertiesChangedNotification", notificationCopy, v22);
  }

  else
  {
    objc_msgSend__postNotificationName_userInfo_(self, 0, @"__kIMAVChatMediaPropertiesChangedNotification", v22, v21);
  }
}

- (unsigned)cameraType
{
  v5 = objc_msgSend_sharedInstance(IMAVLocalPreviewClient, a2, v2, v3, v4);
  v10 = objc_msgSend_cameraType(v5, v6, v7, v8, v9);

  return v10;
}

- (void)setCameraType:(unsigned int)type
{
  v5 = *&type;
  if (type != 1 || (objc_msgSend_sharedInstance(IMAVInterface, a2, *&type, v3, v4), v7 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend_systemSupportsBackFacingCamera(v7, v8, v9, v10, v11), v7, v12))
  {
    v13 = objc_msgSend_sharedInstance(IMAVLocalPreviewClient, a2, *&type, v3, v4);
    objc_msgSend_setCameraType_(v13, v14, v5, v15, v16);

    LODWORD(v13) = objc_msgSend_cameraOrientation(self, v17, v18, v19, v20);
    v25 = objc_msgSend_cameraOrientation(self, v21, v22, v23, v24);
    objc_msgSend_localAspectRatioForCameraOrientation_cameraType_(self, v26, v25, v5, v27);
    objc_msgSend__postParticipantMediaChangeNotification_cameraChanged_orientationChanged_aspectChanged_cameraWillSwitch_camera_orientation_aspect_(self, v28, 0, 1, 0, 0, 0, v5, v13);
  }
}

- (unsigned)cameraOrientation
{
  v5 = objc_msgSend_sharedInstance(IMAVLocalPreviewClient, a2, v2, v3, v4);
  v10 = objc_msgSend_cameraOrientation(v5, v6, v7, v8, v9);

  return v10;
}

- (void)setCameraOrientation:(unsigned int)orientation
{
  v5 = *&orientation;
  v7 = objc_msgSend_sharedInstance(IMAVLocalPreviewClient, a2, *&orientation, v3, v4);
  objc_msgSend_setCameraOrientation_(v7, v8, v5, v9, v10);

  v15 = objc_msgSend_cameraType(self, v11, v12, v13, v14);
  v20 = objc_msgSend_cameraType(self, v16, v17, v18, v19);
  objc_msgSend_localAspectRatioForCameraOrientation_cameraType_(self, v21, v5, v20, v22);
  v24 = v5;
  objc_msgSend__postParticipantMediaChangeNotification_cameraChanged_orientationChanged_aspectChanged_cameraWillSwitch_camera_orientation_aspect_(self, v23, 0, 0, 1, 0, 0, v15, v24);
}

- (CGSize)localAspectRatioForCameraOrientation:(unsigned int)orientation cameraType:(unsigned int)type
{
  if (orientation > 1)
  {
    objc_msgSend_landscapeAspectRatios(self, a2, *&orientation, *&type, v4);
  }

  else
  {
    objc_msgSend_portraitAspectRatios(self, a2, *&orientation, *&type, v4);
  }

  result.height = v6;
  result.width = v5;
  return result;
}

- (void)setLocalAspectRatio:(CGSize)ratio cameraOrientation:(unsigned int)orientation cameraType:(unsigned int)type
{
  height = ratio.height;
  width = ratio.width;
  v36 = *MEMORY[0x277D85DE8];
  v9 = sub_254761764(self);
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (orientation > 1)
  {
    if (v10)
    {
      v38.width = width;
      v38.height = height;
      v20 = NSStringFromSize(v38);
      *buf = 138412546;
      selfCopy2 = self;
      v34 = 2112;
      v35 = v20;
      _os_log_impl(&dword_254743000, v9, OS_LOG_TYPE_DEFAULT, "Chat: %@ set local landscape aspect ratio to %@", buf, 0x16u);
    }

    objc_msgSend__setLandscapeAspectRatios_(self, v21, v22, v23, v24, width, height);
  }

  else
  {
    if (v10)
    {
      v37.width = width;
      v37.height = height;
      v11 = NSStringFromSize(v37);
      *buf = 138412546;
      selfCopy2 = self;
      v34 = 2112;
      v35 = v11;
      _os_log_impl(&dword_254743000, v9, OS_LOG_TYPE_DEFAULT, "Chat: %@ set local portrait aspect ratio to %@", buf, 0x16u);
    }

    objc_msgSend__setPortraitAspectRatios_(self, v12, v13, v14, v15, width, height);
  }

  v25 = objc_msgSend_cameraType(self, v16, v17, v18, v19);
  v31 = objc_msgSend_cameraOrientation(self, v26, v27, v28, v29);
  objc_msgSend__postParticipantMediaChangeNotification_cameraChanged_orientationChanged_aspectChanged_cameraWillSwitch_camera_orientation_aspect_(self, v30, 0, 0, 0, 1, 0, v25, width, height, v31);
}

- (void)setInvitationTimeoutTime:(double)time
{
  if (self->_invitationTimeoutTime != time)
  {
    self->_invitationTimeoutTime = time;
    if (objc_msgSend_state(self, a2, v3, v4, v5) == 1 || objc_msgSend_state(self, v7, v8, v9, v10) == 2)
    {

      objc_msgSend__setInvitationTimeoutTimer(self, v7, v8, v9, v10);
    }
  }
}

- (void)setConnectionTimeoutTime:(double)time
{
  if (self->_connectionTimeoutTime != time)
  {
    self->_connectionTimeoutTime = time;
    if (objc_msgSend_state(self, a2, v3, v4, v5) == 3)
    {

      objc_msgSend__setConnectionTimeoutTimer(self, v7, v8, v9, v10);
    }
  }
}

- (void)_clearConnectionTimeoutTimer
{
  v6 = objc_msgSend_connectionTimeoutTimer(self, a2, v2, v3, v4);

  if (v6)
  {
    v8 = sub_254761764(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v21 = 0;
      _os_log_impl(&dword_254743000, v8, OS_LOG_TYPE_DEFAULT, "Clearing connection timeout timer", v21, 2u);
    }

    v13 = objc_msgSend_connectionTimeoutTimer(self, v9, v10, v11, v12);
    objc_msgSend_invalidate(v13, v14, v15, v16, v17);

    objc_msgSend__setConnectionTimeoutTimer_(self, v18, 0, v19, v20);
  }
}

- (void)_setConnectionTimeoutTimer
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend__clearConnectionTimeoutTimer(self, a2, v2, v3, v4);
  if (self->_connectionTimeoutTime > 0.0)
  {
    v7 = sub_254761764(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      connectionTimeoutTime = self->_connectionTimeoutTime;
      *buf = 134217984;
      v10 = connectionTimeoutTime;
      _os_log_impl(&dword_254743000, v7, OS_LOG_TYPE_DEFAULT, "Setting new connection timeout timer for %f seconds", buf, 0xCu);
    }

    im_main_thread();
  }
}

- (void)_connectionTimeout:(id)timeout
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_state(self, a2, timeout, v3, v4);
  v7 = v6;
  v8 = sub_254761764(v6);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7 == 4)
  {
    if (v9)
    {
      LOWORD(v18) = 0;
      _os_log_impl(&dword_254743000, v8, OS_LOG_TYPE_DEFAULT, "Ignoring timeout timer, we're connected", &v18, 2u);
    }
  }

  else
  {
    if (v9)
    {
      v18 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_254743000, v8, OS_LOG_TYPE_DEFAULT, "Connection timeout for: %@", &v18, 0xCu);
    }

    v11 = sub_254761764(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&dword_254743000, v11, OS_LOG_TYPE_DEFAULT, "Hitting connection timeout", &v18, 2u);
    }

    objc_msgSend__clearConnectionTimeoutTimer(self, v12, v13, v14, v15);
    objc_msgSend__endChatWithReason_andError_(self, v16, 6, 1008, v17);
  }
}

- (void)_clearInvitationTimeoutTimer
{
  v6 = objc_msgSend_inviteTimeoutTimer(self, a2, v2, v3, v4);

  if (v6)
  {
    v8 = sub_254761764(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v21 = 0;
      _os_log_impl(&dword_254743000, v8, OS_LOG_TYPE_DEFAULT, "Clearing invitation timeout timer", v21, 2u);
    }

    v13 = objc_msgSend_inviteTimeoutTimer(self, v9, v10, v11, v12);
    objc_msgSend_invalidate(v13, v14, v15, v16, v17);

    objc_msgSend__setInviteTimeoutTimer_(self, v18, 0, v19, v20);
  }
}

- (void)_setInvitationTimeoutTimer
{
  v14 = *MEMORY[0x277D85DE8];
  objc_msgSend__clearInvitationTimeoutTimer(self, a2, v2, v3, v4);
  v9 = objc_msgSend__setInviteTimeoutTimerStart_(self, v6, 0, v7, v8);
  if (self->_invitationTimeoutTime > 0.0)
  {
    v10 = sub_254761764(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      invitationTimeoutTime = self->_invitationTimeoutTime;
      *buf = 134217984;
      v13 = invitationTimeoutTime;
      _os_log_impl(&dword_254743000, v10, OS_LOG_TYPE_DEFAULT, "Setting new invitation timeout timer for %f seconds", buf, 0xCu);
    }

    im_main_thread();
  }
}

- (void)_invitationTimeout:(id)timeout
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = sub_254761764(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_254743000, v4, OS_LOG_TYPE_DEFAULT, "Invitation timeout for: %@", &v18, 0xCu);
  }

  v6 = sub_254761764(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v18) = 0;
    _os_log_impl(&dword_254743000, v6, OS_LOG_TYPE_DEFAULT, "Hitting Invitation timeout", &v18, 2u);
  }

  objc_msgSend__clearInvitationTimeoutTimer(self, v7, v8, v9, v10);
  if (objc_msgSend_isCaller(self, v11, v12, v13, v14))
  {
    objc_msgSend__endChatWithReason_andError_(self, v15, 22, 0, v17);
  }

  else
  {
    objc_msgSend_declineInvitationWithResponse_(self, v15, 7, v16, v17);
  }
}

- (void)_reduceInvitationTimeoutTime
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEAA8]);
  v8 = objc_msgSend_inviteTimeoutTimerStart(self, v4, v5, v6, v7);
  objc_msgSend_timeIntervalSinceDate_(v3, v9, v8, v10, v11);
  v13 = v12;

  v18 = self->_invitationTimeoutTime * 0.5;
  if (v13 < v18)
  {
    v19 = objc_msgSend_setInvitationTimeoutTime_(self, v14, v15, v16, v17, self->_invitationTimeoutTime * 0.5);
    v20 = sub_254761764(v19);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 134217984;
      v22 = v18;
      _os_log_impl(&dword_254743000, v20, OS_LOG_TYPE_DEFAULT, "Reducing invitation timeout time to %f", &v21, 0xCu);
    }
  }
}

- (void)_clearFirstFrameTimeoutTimer
{
  v6 = objc_msgSend_firstFrameTimeoutTimer(self, a2, v2, v3, v4);

  if (v6)
  {
    v8 = sub_254761764(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v21 = 0;
      _os_log_impl(&dword_254743000, v8, OS_LOG_TYPE_DEFAULT, "Clearing first frame timeout timer", v21, 2u);
    }

    v13 = objc_msgSend_firstFrameTimeoutTimer(self, v9, v10, v11, v12);
    objc_msgSend_invalidate(v13, v14, v15, v16, v17);

    objc_msgSend__setFirstFrameTimeoutTimer_(self, v18, 0, v19, v20);
  }
}

- (void)_setFirstFrameTimeoutTimer
{
  objc_msgSend__clearFirstFrameTimeoutTimer(self, a2, v2, v3, v4);
  if (objc_msgSend_isVideo(self, v6, v7, v8, v9) && !self->_hasReceivedFirstFrame)
  {
    v14 = objc_msgSend_firstFrameTimeoutTimer(self, v10, v11, v12, v13);

    if (!v14)
    {
      im_main_thread();
    }
  }
}

- (void)_firstFrameTimeout:(id)timeout
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = sub_254761764(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v32 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_254743000, v4, OS_LOG_TYPE_DEFAULT, "First frame timeout for: %@", &v32, 0xCu);
  }

  v6 = sub_254761764(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v32) = 0;
    _os_log_impl(&dword_254743000, v6, OS_LOG_TYPE_DEFAULT, "Hitting first frame timeout timeout, generating fake first frame", &v32, 2u);
  }

  v11 = objc_msgSend_remoteParticipants(self, v7, v8, v9, v10);
  v16 = objc_msgSend_count(v11, v12, v13, v14, v15);

  if (v16)
  {
    v21 = objc_msgSend_remoteParticipants(self, v17, v18, v19, v20);
    v26 = objc_msgSend___imFirstObject(v21, v22, v23, v24, v25);
  }

  else
  {
    v26 = 0;
  }

  objc_msgSend__noteFirstFrame(self, v17, v18, v19, v20);
  objc_msgSend__postNotificationName_participant_userInfo_(self, v27, @"__kIMAVChatParticipantReceivedFirstFrameNotification", v26, 0);
  objc_msgSend__clearFirstFrameTimeoutTimer(self, v28, v29, v30, v31);
}

- (void)_vccInitDidFinish:(id)finish
{
  v4 = sub_254761764(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v38 = 0;
    _os_log_impl(&dword_254743000, v4, OS_LOG_TYPE_DEFAULT, &unk_2547876A3, v38, 2u);
  }

  if (self->_localState != 5)
  {
    if (self->_hasPendingInit)
    {
      if (!self->_isCaller)
      {
        goto LABEL_10;
      }

      v9 = objc_msgSend_remoteParticipants(self, v5, v6, v7, v8);
      objc_msgSend_makeObjectsPerformSelector_(v9, v10, sel_sendInvitation, v11, v12);
    }

    else
    {
      if (!self->_hasPendingAccept)
      {
        goto LABEL_10;
      }

      v9 = objc_msgSend_initiatorParticipant(self, v5, v6, v7, v8);
      objc_msgSend_sendResponse_(v9, v13, 0, v14, v15);
    }

LABEL_10:
    self->_hasPendingInit = 0;
    self->_hasPendingAccept = 0;
    if (objc_msgSend_isActive(self, v5, v6, v7, v8))
    {
      v20 = objc_msgSend_sharedInstance(IMAVInterface, v16, v17, v18, v19);
      objc_msgSend_landscapeAspectRatios(self, v21, v22, v23, v24);
      v26 = v25;
      v28 = v27;
      objc_msgSend_portraitAspectRatios(self, v29, v30, v31, v32);
      objc_msgSend_avChat_setLocalLandscapeAspectRatio_localPortraitAspectRatio_(v20, v33, self, v34, v35, v26, v28, v36, v37);
    }
  }
}

- (void)conferenceDidStopWithCallID:(int64_t)d error:(id)error
{
  v36 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v10 = objc_msgSend_participantWithAVConferenceCallID_(self, v7, d, v8, v9);
  v14 = objc_msgSend__callInfoForCallID_(v10, v11, d, v12, v13);
  objc_msgSend_setState_(v14, v15, 4, v16, v17);
  if (errorCopy)
  {
    v22 = objc_msgSend__handleAVError_(self, v18, errorCopy, v20, v21);
  }

  else
  {
    hasUnfinishedSessions = objc_msgSend_hasUnfinishedSessions(v10, v18, v19, v20, v21);
    if (hasUnfinishedSessions)
    {
      v27 = sub_254761764(hasUnfinishedSessions);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v34) = 0;
        _os_log_impl(&dword_254743000, v27, OS_LOG_TYPE_DEFAULT, "The other party still has other sessions, so we will not be hanging up.", &v34, 2u);
      }
    }

    else
    {
      v22 = objc_msgSend_endChatWithReason_(self, v24, 9, v25, v26);
    }
  }

  v28 = sub_254761764(v22);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v33 = objc_msgSend__participantsCallInfo(v10, v29, v30, v31, v32);
    v34 = 138412290;
    v35 = v33;
    _os_log_impl(&dword_254743000, v28, OS_LOG_TYPE_DEFAULT, "conferenceDidStopWithCallID participant info states %@", &v34, 0xCu);
  }
}

- (void)conferenceDidPauseAudioWithCallID:(int64_t)d didPauseAudio:(BOOL)audio
{
  audioCopy = audio;
  dCopy = d;
  v29 = *MEMORY[0x277D85DE8];
  v7 = sub_254761764(self);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 138412802;
    selfCopy = self;
    v25 = 1024;
    v26 = dCopy;
    v27 = 1024;
    v28 = audioCopy;
    _os_log_impl(&dword_254743000, v7, OS_LOG_TYPE_DEFAULT, "avchat: %@ callID: %d didPauseAudio: %d", &v23, 0x18u);
  }

  objc_msgSend__clearCache(self, v8, v9, v10, v11);
  objc_msgSend__postNotificationName_userInfo_(self, v12, @"__kIMAVChatSendingAudioChangedNotification", 0, v13);
  v18 = objc_msgSend_sharedInstance(IMAVCallManager, v14, v15, v16, v17);
  objc_msgSend__sendProxyUpdate(v18, v19, v20, v21, v22);
}

- (void)conferenceAVConferenceCallID:(int64_t)d didConnect:(BOOL)connect
{
  connectCopy = connect;
  dCopy = d;
  v13 = *MEMORY[0x277D85DE8];
  v10 = objc_msgSend_participantWithAVConferenceCallID_(self, a2, d, connect, v4);
  if (v10)
  {
    objc_msgSend__conferenceOtherParticipant_didConnect_(self, v8, v10, connectCopy, v9);
  }

  else
  {
    v11 = sub_254761764(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12[0] = 67109120;
      v12[1] = dCopy;
      _os_log_impl(&dword_254743000, v11, OS_LOG_TYPE_DEFAULT, "[WARN] [IMAVChat conferencePersonWithID:didConnect:] received for unknown callee with callID %d", v12, 8u);
    }
  }
}

- (void)_conferenceOtherParticipant:(id)participant didConnect:(BOOL)connect
{
  connectCopy = connect;
  v38 = *MEMORY[0x277D85DE8];
  participantCopy = participant;
  v11 = objc_msgSend_state(participantCopy, v7, v8, v9, v10);
  if (v11 != 5)
  {
    if (participantCopy)
    {
      if (connectCopy)
      {
        v16 = objc_msgSend_imHandle(participantCopy, v12, v13, v14, v15);
        v21 = objc_msgSend_invitedBy(self->_localParticipant, v17, v18, v19, v20);

        if (v16 == v21)
        {
          objc_msgSend_setWaitingToConnect_(participantCopy, v22, 0, v23, v24);
        }

        v25 = objc_msgSend_setState_(participantCopy, v22, 4, v23, v24);
      }

      else
      {
        hasUnfinishedSessions = objc_msgSend_hasUnfinishedSessions(participantCopy, v12, v13, v14, v15);
        if (hasUnfinishedSessions)
        {
          v30 = sub_254761764(hasUnfinishedSessions);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v36) = 0;
            _os_log_impl(&dword_254743000, v30, OS_LOG_TYPE_DEFAULT, "The other party still has other sessions, so we will not be hanging up.", &v36, 2u);
          }
        }

        else
        {
          v25 = objc_msgSend_setStateToEndedWithReason_andError_(participantCopy, v28, 6, 1008, v29);
        }
      }

      v26 = sub_254761764(v25);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v35 = objc_msgSend__participantsCallInfo(participantCopy, v31, v32, v33, v34);
        v36 = 138412290;
        v37 = v35;
        _os_log_impl(&dword_254743000, v26, OS_LOG_TYPE_DEFAULT, "_conferenceOtherParticipant:didConnect: participant info states %@", &v36, 0xCu);
      }
    }

    else
    {
      v26 = sub_254761764(v11);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v36) = 0;
        _os_log_impl(&dword_254743000, v26, OS_LOG_TYPE_DEFAULT, "[WARN] [IMAVChat conferencePersonWithID:didConnect:] received for unknown callee", &v36, 2u);
      }
    }
  }
}

- (void)conferencePersonWithID:(id)d didMute:(BOOL)mute
{
  muteCopy = mute;
  v44 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v7 = sub_254761764(dCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v38 = 138412802;
    selfCopy = self;
    v40 = 2112;
    v41 = dCopy;
    v42 = 1024;
    v43 = muteCopy;
    _os_log_impl(&dword_254743000, v7, OS_LOG_TYPE_DEFAULT, "avchat: %@  person: %@  didMute: %d", &v38, 0x1Cu);
  }

  objc_msgSend__setDidRemoteMute_(self, v8, muteCopy, v9, v10);
  v18 = objc_msgSend__participantMatchingVCPartyID_(self, v11, dCopy, v12, v13);
  if (v18)
  {
    v19 = objc_msgSend_didRemoteMute(self, v14, v15, v16, v17);
    objc_msgSend_setAudioMuted_(v18, v20, v19, v21, v22);
    v23 = MEMORY[0x277CBEAC0];
    v24 = MEMORY[0x277CCABB0];
    v29 = objc_msgSend_didRemoteMute(self, v25, v26, v27, v28);
    v33 = objc_msgSend_numberWithBool_(v24, v30, v29, v31, v32);
    v36 = objc_msgSend_dictionaryWithObject_forKey_(v23, v34, v33, @"__kIMAVChatMuteStateKey", v35);
    objc_msgSend__postNotificationName_participant_userInfo_(self, v37, @"__kIMAVChatParticipantMuteChangedNotification", v18, v36);
  }

  else
  {
    v33 = sub_254761764(0);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v38 = 138412290;
      selfCopy = dCopy;
      _os_log_impl(&dword_254743000, v33, OS_LOG_TYPE_DEFAULT, "[WARN] [conferencePersonWithID:didMute:] received for vcPartyID %@ not in conference!", &v38, 0xCu);
    }
  }
}

- (void)conferencePersonWithID:(id)d didPause:(BOOL)pause
{
  pauseCopy = pause;
  v45 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v7 = sub_254761764(dCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v39 = 138412802;
    selfCopy = self;
    v41 = 2112;
    v42 = dCopy;
    v43 = 1024;
    v44 = pauseCopy;
    _os_log_impl(&dword_254743000, v7, OS_LOG_TYPE_DEFAULT, "avchat: %@  person: %@  didPause: %d", &v39, 0x1Cu);
  }

  v11 = objc_msgSend__participantMatchingVCPartyID_(self, v8, dCopy, v9, v10);
  v15 = objc_msgSend__setDidRemotePause_(self, v12, pauseCopy, v13, v14);
  if (v11)
  {
    v20 = objc_msgSend_didRemotePause(self, v16, v17, v18, v19);
    objc_msgSend_setVideoPaused_(v11, v21, v20, v22, v23);
    v24 = MEMORY[0x277CBEAC0];
    v25 = MEMORY[0x277CCABB0];
    v30 = objc_msgSend_didRemotePause(self, v26, v27, v28, v29);
    v34 = objc_msgSend_numberWithBool_(v25, v31, v30, v32, v33);
    v37 = objc_msgSend_dictionaryWithObject_forKey_(v24, v35, v34, @"__kIMAVChatPauseStateKey", v36);
    objc_msgSend__postNotificationName_participant_userInfo_(self, v38, @"__kIMAVChatParticipantPauseChangedNotification", v11, v37);
  }

  else
  {
    v34 = sub_254761764(v15);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v39 = 138412290;
      selfCopy = dCopy;
      _os_log_impl(&dword_254743000, v34, OS_LOG_TYPE_DEFAULT, "[WARN] -[conferencePersonWithID:didPause:] received for vcPartyID %@ not in conference!", &v39, 0xCu);
    }
  }
}

- (void)conferencePersonWithID:(id)d didDegrade:(BOOL)degrade
{
  degradeCopy = degrade;
  v32 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v7 = sub_254761764(dCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    selfCopy = self;
    v28 = 2112;
    v29 = dCopy;
    v30 = 1024;
    v31 = degradeCopy;
    _os_log_impl(&dword_254743000, v7, OS_LOG_TYPE_DEFAULT, "avchat: %@  personID: %@  didDegrade: %d", buf, 0x1Cu);
  }

  v11 = objc_msgSend__participantMatchingVCPartyID_(self, v8, dCopy, v9, v10);
  v15 = v11;
  if (v11)
  {
    objc_msgSend_setVideoDegraded_(v11, v12, degradeCopy, v13, v14);
    v16 = MEMORY[0x277CBEAC0];
    v20 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v17, degradeCopy, v18, v19);
    v24 = objc_msgSend_dictionaryWithObjectsAndKeys_(v16, v21, v20, v22, v23, @"__kIMAVChatVideoDegradedKey", 0);
    objc_msgSend__postNotificationName_participant_userInfo_(self, v25, @"__kIMAVChatParticipantVideoQualityChangedNotification", v15, v24);
  }

  else
  {
    v20 = sub_254761764(0);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_254743000, v20, OS_LOG_TYPE_DEFAULT, "[WARN] [conferencePersonWithID:didDegrade] received for vcPartyID (nil)", buf, 2u);
    }
  }
}

- (void)conferencePersonWithID:(id)d mediaDidStall:(BOOL)stall
{
  stallCopy = stall;
  v32 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v7 = sub_254761764(dCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    selfCopy = self;
    v28 = 2112;
    v29 = dCopy;
    v30 = 1024;
    v31 = stallCopy;
    _os_log_impl(&dword_254743000, v7, OS_LOG_TYPE_DEFAULT, "avchat: %@  person: %@  mediaDidStall: %d", buf, 0x1Cu);
  }

  v11 = objc_msgSend__participantMatchingVCPartyID_(self, v8, dCopy, v9, v10);
  v15 = v11;
  if (v11)
  {
    objc_msgSend_setMediaStalled_(v11, v12, stallCopy, v13, v14);
    v16 = MEMORY[0x277CBEAC0];
    v20 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v17, stallCopy, v18, v19);
    v24 = objc_msgSend_dictionaryWithObjectsAndKeys_(v16, v21, v20, v22, v23, @"__kIMAVChatMediaStalledKey", 0);
    objc_msgSend__postNotificationName_participant_userInfo_(self, v25, @"__kIMAVChatParticipantMediaStalledChangedNotification", v15, v24);
  }

  else
  {
    v20 = sub_254761764(0);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_254743000, v20, OS_LOG_TYPE_DEFAULT, "[WARN] [conferencePersonWithID:mediaDidStall] received for vcPartyID (nil)", buf, 2u);
    }
  }
}

- (void)conferencePersonWithID:(id)d sendRelayRequest:(id)request
{
  v52 = *MEMORY[0x277D85DE8];
  dCopy = d;
  requestCopy = request;
  v8 = sub_254761764(requestCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v46 = 138412802;
    selfCopy = self;
    v48 = 2112;
    v49 = dCopy;
    v50 = 2112;
    v51 = requestCopy;
    _os_log_impl(&dword_254743000, v8, OS_LOG_TYPE_DEFAULT, "avchat: %@  person: %@  parameters: %@", &v46, 0x20u);
  }

  v10 = sub_254761764(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v46 = 138412290;
    selfCopy = dCopy;
    _os_log_impl(&dword_254743000, v10, OS_LOG_TYPE_DEFAULT, "Sending relay initiate to: %@", &v46, 0xCu);
  }

  v14 = objc_msgSend_participantWithID_(self, v11, dCopy, v12, v13);
  v19 = objc_msgSend_imHandle(v14, v15, v16, v17, v18);
  v24 = objc_msgSend_account(v19, v20, v21, v22, v23);
  v29 = objc_msgSend_sharedInstance(MEMORY[0x277D18D68], v25, v26, v27, v28);
  v34 = objc_msgSend_conferenceID(self, v30, v31, v32, v33);
  v39 = objc_msgSend_ID(v19, v35, v36, v37, v38);
  v44 = objc_msgSend_uniqueID(v24, v40, v41, v42, v43);
  objc_msgSend_relay_sendInitateRequest_toPerson_account_(v29, v45, v34, requestCopy, v39, v44);
}

- (void)conferencePersonWithID:(id)d sendRelayUpdate:(id)update
{
  v63 = *MEMORY[0x277D85DE8];
  dCopy = d;
  updateCopy = update;
  v8 = sub_254761764(updateCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v57 = 138412802;
    selfCopy = self;
    v59 = 2112;
    v60 = dCopy;
    v61 = 2112;
    v62 = updateCopy;
    _os_log_impl(&dword_254743000, v8, OS_LOG_TYPE_DEFAULT, "avchat: %@  person: %@  parameters: %@", &v57, 0x20u);
  }

  v10 = sub_254761764(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v57 = 138412290;
    selfCopy = dCopy;
    _os_log_impl(&dword_254743000, v10, OS_LOG_TYPE_DEFAULT, "Sending relay update to: %@", &v57, 0xCu);
  }

  v14 = objc_msgSend_participantWithID_(self, v11, dCopy, v12, v13);
  v19 = objc_msgSend_imHandle(v14, v15, v16, v17, v18);
  v24 = objc_msgSend_account(v19, v20, v21, v22, v23);
  v29 = objc_msgSend__timings(self, v25, v26, v27, v28);
  objc_msgSend_stopTimingForKey_(v29, v30, @"time-from-relay-initiate-to-outgoing-relay-update", v31, v32);

  objc_msgSend_startTimingForKey_(self->_timingCollection, v33, @"time-from-outgoing-relay-update-to-connected", v34, v35);
  v40 = objc_msgSend_sharedInstance(MEMORY[0x277D18D68], v36, v37, v38, v39);
  v45 = objc_msgSend_conferenceID(self, v41, v42, v43, v44);
  v50 = objc_msgSend_ID(v19, v46, v47, v48, v49);
  v55 = objc_msgSend_uniqueID(v24, v51, v52, v53, v54);
  objc_msgSend_relay_sendUpdate_toPerson_account_(v40, v56, v45, updateCopy, v50, v55);
}

- (void)conferencePersonWithID:(id)d sendRelayCancel:(id)cancel
{
  v52 = *MEMORY[0x277D85DE8];
  dCopy = d;
  cancelCopy = cancel;
  v8 = sub_254761764(cancelCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v46 = 138412802;
    selfCopy = self;
    v48 = 2112;
    v49 = dCopy;
    v50 = 2112;
    v51 = cancelCopy;
    _os_log_impl(&dword_254743000, v8, OS_LOG_TYPE_DEFAULT, "avchat: %@  person: %@  parameters: %@", &v46, 0x20u);
  }

  v10 = sub_254761764(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v46 = 138412290;
    selfCopy = dCopy;
    _os_log_impl(&dword_254743000, v10, OS_LOG_TYPE_DEFAULT, "Sending relay cancel to: %@", &v46, 0xCu);
  }

  v14 = objc_msgSend_participantWithID_(self, v11, dCopy, v12, v13);
  v19 = objc_msgSend_imHandle(v14, v15, v16, v17, v18);
  v24 = objc_msgSend_account(v19, v20, v21, v22, v23);
  v29 = objc_msgSend_sharedInstance(MEMORY[0x277D18D68], v25, v26, v27, v28);
  v34 = objc_msgSend_conferenceID(self, v30, v31, v32, v33);
  v39 = objc_msgSend_ID(v19, v35, v36, v37, v38);
  v44 = objc_msgSend_uniqueID(v24, v40, v41, v42, v43);
  objc_msgSend_relay_sendCancel_toPerson_account_(v29, v45, v34, cancelCopy, v39, v44);
}

- (void)conferencePersonWithID:(id)d localIPDidChange:(id)change
{
  v33 = *MEMORY[0x277D85DE8];
  dCopy = d;
  changeCopy = change;
  v8 = sub_254761764(changeCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    selfCopy = self;
    v29 = 2112;
    v30 = dCopy;
    v31 = 2112;
    v32 = changeCopy;
    _os_log_impl(&dword_254743000, v8, OS_LOG_TYPE_DEFAULT, "avchat: %@  person: %@  newBlob: %@", buf, 0x20u);
  }

  v10 = sub_254761764(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = dCopy;
    _os_log_impl(&dword_254743000, v10, OS_LOG_TYPE_DEFAULT, "Sending local IP change to: %@", buf, 0xCu);
  }

  v14 = objc_msgSend_participantWithID_(self, v11, dCopy, v12, v13);
  v19 = objc_msgSend__FTStringFromBaseData(changeCopy, v15, v16, v17, v18);
  v20 = objc_alloc(MEMORY[0x277CBEAC0]);
  v24 = objc_msgSend_initWithObjectsAndKeys_(v20, v21, v19, v22, v23, @"LocalIPChangeNewBlob", 0);
  objc_msgSend_sendAVMessage_userInfo_(v14, v25, 1500, v24, v26);
}

- (void)setMute:(BOOL)mute
{
  muteCopy = mute;
  v37 = *MEMORY[0x277D85DE8];
  v5 = sub_254761764(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (muteCopy)
    {
      v6 = @"YES";
    }

    v33 = 138412546;
    v34 = v6;
    v35 = 2112;
    selfCopy2 = self;
    _os_log_impl(&dword_254743000, v5, OS_LOG_TYPE_DEFAULT, "Set mute: %@ on chat (%@)", &v33, 0x16u);
  }

  isActive = objc_msgSend_isActive(self, v7, v8, v9, v10);
  if (isActive)
  {
    isMute = objc_msgSend_isMute(self, v12, v13, v14, v15);
    objc_msgSend__clearCache(self, v17, v18, v19, v20);
    v25 = objc_msgSend_sharedInstance(IMAVInterface, v21, v22, v23, v24);
    objc_msgSend_avChat_setMute_(v25, v26, self, muteCopy, v27);

    if (isMute != muteCopy)
    {
      objc_msgSend__postNotificationName_userInfo_(self, v28, @"__kIMAVChatIsMutedChangedNotification", 0, v30);
    }
  }

  else
  {
    v31 = sub_254761764(isActive);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = @"NO";
      if (muteCopy)
      {
        v32 = @"YES";
      }

      v33 = 138412546;
      v34 = v32;
      v35 = 2112;
      selfCopy2 = self;
      _os_log_impl(&dword_254743000, v31, OS_LOG_TYPE_DEFAULT, "Tried to set paused: %@ on an inactive chat (%@)", &v33, 0x16u);
    }
  }

  objc_msgSend_setAudioMuted_(self->_localParticipant, v28, muteCopy, v29, v30);
}

- (BOOL)isMute
{
  if (objc_msgSend__hasCachedBoolForKey_(self, a2, @"isMute", v2, v3))
  {

    return MEMORY[0x2821F9670](self, sel__cachedBoolForKey_, @"isMute", v7, v8);
  }

  else
  {
    v9 = objc_msgSend_sharedInstance(IMAVInterface, v5, v6, v7, v8);
    isMuteForAVChat = objc_msgSend_isMuteForAVChat_(v9, v10, self, v11, v12);

    objc_msgSend__cacheBool_forKey_(self, v14, isMuteForAVChat, @"isMute", v15);
    return isMuteForAVChat;
  }
}

- (void)toggleMute
{
  v7 = objc_msgSend_isMute(self, a2, v2, v3, v4) ^ 1;

  objc_msgSend_setMute_(self, v6, v7, v8, v9);
}

- (void)setRemoteMute:(BOOL)mute
{
  muteCopy = mute;
  if (objc_msgSend_isActive(self, a2, mute, v3, v4))
  {
    objc_msgSend__clearCache(self, v7, v8, v9, v10);
    v17 = objc_msgSend_sharedInstance(IMAVInterface, v11, v12, v13, v14);
    objc_msgSend_avChat_setRemoteMute_(v17, v15, self, muteCopy, v16);
  }
}

- (BOOL)isRemoteMute
{
  if (objc_msgSend__hasCachedBoolForKey_(self, a2, @"isRemoteMute", v2, v3))
  {

    return MEMORY[0x2821F9670](self, sel__cachedBoolForKey_, @"isRemoteMute", v7, v8);
  }

  else
  {
    v9 = objc_msgSend_sharedInstance(IMAVInterface, v5, v6, v7, v8);
    isRemoteMuteForAVChat = objc_msgSend_isRemoteMuteForAVChat_(v9, v10, self, v11, v12);

    objc_msgSend__cacheBool_forKey_(self, v14, isRemoteMuteForAVChat, @"isRemoteMute", v15);
    return isRemoteMuteForAVChat;
  }
}

- (BOOL)isSendingAudio
{
  if (objc_msgSend__hasCachedBoolForKey_(self, a2, @"isSendingAudio", v2, v3))
  {

    return MEMORY[0x2821F9670](self, sel__cachedBoolForKey_, @"isSendingAudio", v7, v8);
  }

  else
  {
    v9 = objc_msgSend_sharedInstance(IMAVInterface, v5, v6, v7, v8);
    isSendingAudioForAVChat = objc_msgSend_isSendingAudioForAVChat_(v9, v10, self, v11, v12);

    objc_msgSend__cacheBool_forKey_(self, v14, isSendingAudioForAVChat, @"isSendingAudio", v15);
    return isSendingAudioForAVChat;
  }
}

- (void)setIsSendingAudio:(BOOL)audio
{
  audioCopy = audio;
  objc_msgSend__clearCache(self, a2, audio, v3, v4);
  v13 = objc_msgSend_sharedInstance(IMAVInterface, v7, v8, v9, v10);
  objc_msgSend_avChat_setSendingAudio_(v13, v11, self, audioCopy, v12);
}

- (void)setPaused:(BOOL)paused
{
  pausedCopy = paused;
  v31 = *MEMORY[0x277D85DE8];
  v5 = sub_254761764(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (pausedCopy)
    {
      v6 = @"YES";
    }

    v27 = 138412546;
    v28 = v6;
    v29 = 2112;
    selfCopy2 = self;
    _os_log_impl(&dword_254743000, v5, OS_LOG_TYPE_DEFAULT, "Set paused: %@ on chat (%@)", &v27, 0x16u);
  }

  isActive = objc_msgSend_isActive(self, v7, v8, v9, v10);
  if (isActive)
  {
    objc_msgSend__clearCache(self, v12, v13, v14, v15);
    v20 = objc_msgSend_sharedInstance(IMAVInterface, v16, v17, v18, v19);
    objc_msgSend_avChat_setPaused_(v20, v21, self, pausedCopy, v22);
  }

  else
  {
    v20 = sub_254761764(isActive);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v23 = @"NO";
      if (pausedCopy)
      {
        v23 = @"YES";
      }

      v27 = 138412546;
      v28 = v23;
      v29 = 2112;
      selfCopy2 = self;
      _os_log_impl(&dword_254743000, v20, OS_LOG_TYPE_DEFAULT, "Tried to set paused: %@ on an inactive chat (%@)", &v27, 0x16u);
    }
  }

  objc_msgSend_setVideoPaused_(self->_localParticipant, v24, pausedCopy, v25, v26);
}

- (BOOL)isPaused
{
  if (objc_msgSend__hasCachedBoolForKey_(self, a2, @"isPaused", v2, v3))
  {

    return MEMORY[0x2821F9670](self, sel__cachedBoolForKey_, @"isPaused", v7, v8);
  }

  else
  {
    v9 = objc_msgSend_sharedInstance(IMAVInterface, v5, v6, v7, v8);
    isPausedForAVChat = objc_msgSend_isPausedForAVChat_(v9, v10, self, v11, v12);

    objc_msgSend__cacheBool_forKey_(self, v14, isPausedForAVChat, @"isPaused", v15);
    return isPausedForAVChat;
  }
}

- (void)togglePaused
{
  v7 = objc_msgSend_isPaused(self, a2, v2, v3, v4) ^ 1;

  objc_msgSend_setPaused_(self, v6, v7, v8, v9);
}

- (BOOL)isSendingVideo
{
  if (objc_msgSend__hasCachedBoolForKey_(self, a2, @"isSendingVideo", v2, v3))
  {

    return MEMORY[0x2821F9670](self, sel__cachedBoolForKey_, @"isSendingVideo", v7, v8);
  }

  else
  {
    v9 = objc_msgSend_sharedInstance(IMAVInterface, v5, v6, v7, v8);
    isSendingVideoForAVChat = objc_msgSend_isSendingVideoForAVChat_(v9, v10, self, v11, v12);

    objc_msgSend__cacheBool_forKey_(self, v14, isSendingVideoForAVChat, @"isSendingVideo", v15);
    return isSendingVideoForAVChat;
  }
}

- (void)setIsSendingVideo:(BOOL)video
{
  videoCopy = video;
  objc_msgSend__clearCache(self, a2, video, v3, v4);
  v13 = objc_msgSend_sharedInstance(IMAVInterface, v7, v8, v9, v10);
  objc_msgSend_avChat_setSendingVideo_(v13, v11, self, videoCopy, v12);
}

- (void)_handleRelayInitate:(id)initate fromParticipant:(id)participant
{
  v54 = *MEMORY[0x277D85DE8];
  initateCopy = initate;
  participantCopy = participant;
  v8 = sub_254761764(participantCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    selfCopy = self;
    v50 = 2112;
    v51 = participantCopy;
    v52 = 2112;
    v53 = initateCopy;
    _os_log_impl(&dword_254743000, v8, OS_LOG_TYPE_DEFAULT, "avchat: %@  participant: %@   properties: %@", buf, 0x20u);
  }

  v13 = objc_msgSend_avChat(participantCopy, v9, v10, v11, v12);
  v18 = objc_msgSend__timings(v13, v14, v15, v16, v17);
  objc_msgSend_startTimingForKey_(v18, v19, @"time-from-relay-initiate-to-outgoing-relay-update", v20, v21);

  v26 = objc_msgSend_avChat(participantCopy, v22, v23, v24, v25);
  v31 = objc_msgSend__timings(v26, v27, v28, v29, v30);
  objc_msgSend_startTimingForKey_(v31, v32, @"time-from-relay-initiate-to-incoming-relay-update", v33, v34);

  v35 = objc_alloc_init(MEMORY[0x277CBEAA8]);
  dateReceivedRelayInitiate = self->_dateReceivedRelayInitiate;
  self->_dateReceivedRelayInitiate = v35;

  v41 = objc_msgSend__conferenceQueue(self, v37, v38, v39, v40);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_254764AAC;
  block[3] = &unk_279783760;
  v45 = participantCopy;
  v46 = initateCopy;
  selfCopy2 = self;
  v42 = initateCopy;
  v43 = participantCopy;
  dispatch_async(v41, block);
}

- (void)_handleRelayUpdate:(id)update fromParticipant:(id)participant
{
  v54 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  participantCopy = participant;
  v8 = sub_254761764(participantCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    selfCopy = self;
    v50 = 2112;
    v51 = participantCopy;
    v52 = 2112;
    v53 = updateCopy;
    _os_log_impl(&dword_254743000, v8, OS_LOG_TYPE_DEFAULT, "avchat: %@  participant: %@   properties: %@", buf, 0x20u);
  }

  v13 = objc_msgSend_avChat(participantCopy, v9, v10, v11, v12);
  v18 = objc_msgSend__timings(v13, v14, v15, v16, v17);
  objc_msgSend_stopTimingForKey_(v18, v19, @"time-from-relay-initiate-to-incoming-relay-update", v20, v21);

  v26 = objc_msgSend_avChat(participantCopy, v22, v23, v24, v25);
  v31 = objc_msgSend__timings(v26, v27, v28, v29, v30);
  objc_msgSend_startTimingForKey_(v31, v32, @"time-from-relay-incoming-relay-update-to-connected", v33, v34);

  v35 = objc_alloc_init(MEMORY[0x277CBEAA8]);
  dateReceivedRelayUpdate = self->_dateReceivedRelayUpdate;
  self->_dateReceivedRelayUpdate = v35;

  v41 = objc_msgSend__conferenceQueue(self, v37, v38, v39, v40);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_254764E1C;
  block[3] = &unk_279783760;
  v45 = participantCopy;
  selfCopy2 = self;
  v47 = updateCopy;
  v42 = updateCopy;
  v43 = participantCopy;
  dispatch_async(v41, block);
}

- (void)_handleRelayCancel:(id)cancel fromParticipant:(id)participant
{
  v28 = *MEMORY[0x277D85DE8];
  cancelCopy = cancel;
  participantCopy = participant;
  v8 = sub_254761764(participantCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    selfCopy = self;
    v24 = 2112;
    v25 = participantCopy;
    v26 = 2112;
    v27 = cancelCopy;
    _os_log_impl(&dword_254743000, v8, OS_LOG_TYPE_DEFAULT, "avchat: %@  participant: %@   properties: %@", buf, 0x20u);
  }

  dateReceivedRelayInitiate = self->_dateReceivedRelayInitiate;
  self->_dateReceivedRelayInitiate = 0;

  dateReceivedRelayUpdate = self->_dateReceivedRelayUpdate;
  self->_dateReceivedRelayUpdate = 0;

  v15 = objc_msgSend__conferenceQueue(self, v11, v12, v13, v14);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_254765198;
  block[3] = &unk_279783760;
  v19 = participantCopy;
  selfCopy2 = self;
  v21 = cancelCopy;
  v16 = cancelCopy;
  v17 = participantCopy;
  dispatch_async(v15, block);
}

- (void)_setActiveConference
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = sub_254761764(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v32) = 0;
    _os_log_impl(&dword_254743000, v3, OS_LOG_TYPE_DEFAULT, "_setActiveConference", &v32, 2u);
  }

  v5 = sub_254761764(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v32 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_254743000, v5, OS_LOG_TYPE_DEFAULT, "avchat: %@", &v32, 0xCu);
  }

  if (objc_msgSend_isActive(self, v6, v7, v8, v9))
  {
    v14 = objc_msgSend_sharedInstance(IMAVInterface, v10, v11, v12, v13);
    objc_msgSend_landscapeAspectRatios(self, v15, v16, v17, v18);
    v20 = v19;
    v22 = v21;
    objc_msgSend_portraitAspectRatios(self, v23, v24, v25, v26);
    objc_msgSend_avChat_setLocalLandscapeAspectRatio_localPortraitAspectRatio_(v14, v27, self, v28, v29, v20, v22, v30, v31);
  }

  objc_msgSend__postStateToDelegateIfNecessary(self, v10, v11, v12, v13);
}

- (void)participant:(id)participant changedFromState:(unsigned int)state toState:(unsigned int)toState
{
  v5 = *&toState;
  v6 = *&state;
  v203 = *MEMORY[0x277D85DE8];
  participantCopy = participant;
  v9 = sub_254761764(participantCopy);
  v170 = participantCopy;
  selfCopy = self;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = _NSStringDescriptionForIMAVChatParticipantState(v6);
    v11 = _NSStringDescriptionForIMAVChatParticipantState(v5);
    *buf = 138412802;
    v198 = participantCopy;
    v199 = 2112;
    v200 = v10;
    v201 = 2112;
    v202 = v11;
    _os_log_impl(&dword_254743000, v9, OS_LOG_TYPE_DEFAULT, "P: %@  changedFromState: %@   toState: %@", buf, 0x20u);
  }

  if (self->_localParticipant != participantCopy)
  {
    goto LABEL_7;
  }

  v17 = sub_254761764(v12);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = _NSStringDescriptionForIMAVChatState(self->_localState);
    v19 = _NSStringDescriptionForIMAVChatParticipantState(v5);
    *buf = 138412546;
    v198 = v18;
    v199 = 2112;
    v200 = v19;
    _os_log_impl(&dword_254743000, v17, OS_LOG_TYPE_DEFAULT, "Conference state changed from: %@   to: %@", buf, 0x16u);
  }

  localState = self->_localState;
  if (localState != v5)
  {
    v62 = localState > 5;
    v94 = (1 << localState) & 0x23;
    v21 = (v62 || v94 == 0) && (v5 < 2 || v5 == 5);
    self->_localState = v5;
  }

  else
  {
LABEL_7:
    v21 = 0;
  }

  localParticipant = self->_localParticipant;
  if (localParticipant != participantCopy)
  {
    v23 = MEMORY[0x277CBEAC0];
    v24 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v13, v5, v15, v16);
    v28 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v25, v6, v26, v27);
    v32 = objc_msgSend_dictionaryWithObjectsAndKeys_(v23, v29, v24, v30, v31, @"__kIMAVChatParticipantStateKey", v28, @"__kIMAVChatParticipantPreviousStateKey", 0);
    objc_msgSend__postNotificationName_participant_userInfo_(self, v33, @"__kIMAVChatParticipantStateChangedNotification", participantCopy, v32);

    localParticipant = self->_localParticipant;
  }

  if (localParticipant == participantCopy)
  {
    if (v6 || v5 != 2)
    {
      if (v5 == 5)
      {
        v69 = objc_msgSend_reasonChatEnded(participantCopy, v13, v14, v15, v16);
        if ((v6 - 3) <= 1)
        {
          if (objc_msgSend_isActive(self, v65, v66, v67, v68))
          {
            v74 = objc_msgSend_sharedInstance(IMAVInterface, v70, v71, v72, v73);
            objc_msgSend_endConferenceForAVChat_(v74, v75, self, v76, v77);
          }

          if (objc_msgSend_isTerminating(self, v70, v71, v72, v73))
          {
            objc_msgSend__blockUntilSendQueueIsEmpty(MEMORY[0x277D18D68], v65, v66, v67, v68);
          }
        }

        if (objc_msgSend_isInitiator(participantCopy, v65, v66, v67, v68))
        {
          v182 = 0u;
          v183 = 0u;
          v180 = 0u;
          v181 = 0u;
          v82 = self->_participants;
          v84 = objc_msgSend_countByEnumeratingWithState_objects_count_(v82, v83, &v180, v194, 16);
          if (v84)
          {
            v89 = v84;
            v90 = *v181;
            do
            {
              for (i = 0; i != v89; ++i)
              {
                if (*v181 != v90)
                {
                  objc_enumerationMutation(v82);
                }

                v92 = *(*(&v180 + 1) + 8 * i);
                if (v92 != selfCopy->_localParticipant && objc_msgSend_state(*(*(&v180 + 1) + 8 * i), v85, v86, v87, v88) == 1)
                {
                  objc_msgSend_cancelInvitation(v92, v85, v86, v87, v88);
                }
              }

              v89 = objc_msgSend_countByEnumeratingWithState_objects_count_(v82, v85, &v180, v194, 16);
            }

            while (v89);
          }

          participantCopy = v170;
          self = selfCopy;
        }

        if ((v69 & 0xFFFFFFF7) == 1)
        {
          v93 = 0;
          v69 = 10;
        }

        else
        {
          v93 = objc_msgSend_error(participantCopy, v78, v79, v80, v81);
        }

        v178 = 0u;
        v179 = 0u;
        v176 = 0u;
        v177 = 0u;
        v106 = self->_participants;
        v108 = objc_msgSend_countByEnumeratingWithState_objects_count_(v106, v107, &v176, v193, 16);
        if (v108)
        {
          v113 = v108;
          v114 = *v177;
          do
          {
            for (j = 0; j != v113; ++j)
            {
              if (*v177 != v114)
              {
                objc_enumerationMutation(v106);
              }

              v116 = *(*(&v176 + 1) + 8 * j);
              if (objc_msgSend_state(v116, v109, v110, v111, v112) != 5)
              {
                objc_msgSend_setStateToEndedWithReason_andError_(v116, v109, v69, v93, v112);
              }
            }

            v113 = objc_msgSend_countByEnumeratingWithState_objects_count_(v106, v109, &v176, v193, 16);
          }

          while (v113);
        }

        v121 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v117, v118, v119, v120);
        objc_msgSend_removeObserver_name_object_(v121, v122, selfCopy, 0, 0);

        v127 = objc_msgSend_date(MEMORY[0x277CBEAA8], v123, v124, v125, v126);
        dateEnded = selfCopy->_dateEnded;
        selfCopy->_dateEnded = v127;

        objc_msgSend__endChatWithReason_andError_(selfCopy, v129, v69, v93, v130);
      }
    }

    else
    {
      objc_msgSend_inviteAll(self, v13, v14, v15, v16);
    }

    v96 = objc_msgSend_sharedInstance(IMAVController, v13, v14, v15, v16);
    objc_msgSend_updateActiveConference(v96, v131, v132, v133, v134);
    goto LABEL_106;
  }

  isInitiator = objc_msgSend_isInitiator(localParticipant, v13, v14, v15, v16);
  v39 = objc_msgSend_invitedBy(self->_localParticipant, v35, v36, v37, v38);
  v44 = objc_msgSend_imHandle(participantCopy, v40, v41, v42, v43);

  if ((isInitiator & 1) == 0 && v39 != v44)
  {
    goto LABEL_107;
  }

  if (v5 <= 2)
  {
    if (v5 == 1)
    {
      if (isInitiator && !self->_localState)
      {
        goto LABEL_93;
      }

      goto LABEL_107;
    }

    if (v5 != 2 || self->_localState)
    {
      goto LABEL_107;
    }

    objc_msgSend_setState_(self->_localParticipant, v45, 1, v47, v48);
    v190 = 0u;
    v191 = 0u;
    v188 = 0u;
    v189 = 0u;
    v96 = self->_participants;
    v98 = objc_msgSend_countByEnumeratingWithState_objects_count_(v96, v97, &v188, v196, 16);
    if (v98)
    {
      v102 = v98;
      v103 = *v189;
      do
      {
        for (k = 0; k != v102; ++k)
        {
          if (*v189 != v103)
          {
            objc_enumerationMutation(v96);
          }

          v105 = *(*(&v188 + 1) + 8 * k);
          if (v105 != v170 && v105 != selfCopy->_localParticipant)
          {
            objc_msgSend_setState_(v105, v99, 1, v100, v101);
          }
        }

        v102 = objc_msgSend_countByEnumeratingWithState_objects_count_(v96, v99, &v188, v196, 16);
      }

      while (v102);
    }

LABEL_106:

    goto LABEL_107;
  }

  if (v5 == 3)
  {
    if (self->_localState - 1 > 1)
    {
      goto LABEL_107;
    }

    goto LABEL_88;
  }

  if (v5 == 4)
  {
    if (self->_localState == 3)
    {
      objc_msgSend_setState_(self->_localParticipant, v45, 4, v47, v48);
    }
  }

  else if (v5 == 5 && self->_localState != 5)
  {
    if (v39 == v44)
    {
      v160 = self->_localParticipant;
    }

    else
    {
      v186 = 0u;
      v187 = 0u;
      v184 = 0u;
      v185 = 0u;
      v49 = self->_participants;
      v51 = objc_msgSend_countByEnumeratingWithState_objects_count_(v49, v50, &v184, v195, 16);
      if (v51)
      {
        v56 = v51;
        v57 = 0;
        v58 = *v185;
        do
        {
          for (m = 0; m != v56; ++m)
          {
            if (*v185 != v58)
            {
              objc_enumerationMutation(v49);
            }

            v60 = *(*(&v184 + 1) + 8 * m);
            if (v60 != selfCopy->_localParticipant)
            {
              v61 = objc_msgSend_state(v60, v52, v53, v54, v55);
              if (!v57 || (v57 != 5 ? (v62 = v61 > v57) : (v62 = 1), !v62 ? (v63 = 0) : (v63 = 1), v61 != 5 ? (v64 = v63 == 0) : (v64 = 1), !v64))
              {
                v57 = v61;
              }
            }
          }

          v56 = objc_msgSend_countByEnumeratingWithState_objects_count_(v49, v52, &v184, v195, 16);
        }

        while (v56);

        self = selfCopy;
        if (v57 != 5 && v57)
        {
          if (!isInitiator)
          {
            goto LABEL_107;
          }

          if (v57 != 1)
          {
            if (v57 != 3)
            {
              goto LABEL_107;
            }

LABEL_88:
            objc_msgSend_setState_(selfCopy->_localParticipant, v45, 3, v47, v48);
            goto LABEL_107;
          }

LABEL_93:
          objc_msgSend_setState_(selfCopy->_localParticipant, v45, 2, v47, v48);
          goto LABEL_107;
        }
      }

      else
      {
      }

      v160 = self->_localParticipant;
    }

    v161 = objc_msgSend_reasonChatEnded(v170, v45, v46, v47, v48);
    v166 = objc_msgSend_error(v170, v162, v163, v164, v165);
    objc_msgSend_setStateToEndedWithReason_andError_(v160, v167, v161, v166, v168);
  }

LABEL_107:
  v136 = v170;
  v135 = selfCopy;
  if (selfCopy->_localParticipant == v170)
  {
    if (v21)
    {
      v174 = 0u;
      v175 = 0u;
      v172 = 0u;
      v173 = 0u;
      obj = objc_msgSend_remoteParticipants(selfCopy, v45, v46, v47, v48);
      v138 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v137, &v172, v192, 16);
      if (v138)
      {
        v143 = v138;
        v144 = *v173;
        do
        {
          for (n = 0; n != v143; ++n)
          {
            if (*v173 != v144)
            {
              objc_enumerationMutation(obj);
            }

            v146 = objc_msgSend_state(*(*(&v172 + 1) + 8 * n), v139, v140, v141, v142);
            if (v146 != 5)
            {
              v147 = v146;
              v148 = MEMORY[0x277CBEAC0];
              v149 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v139, 5, v141, v142);
              v153 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v150, v147, v151, v152);
              v157 = objc_msgSend_dictionaryWithObjectsAndKeys_(v148, v154, v149, v155, v156, @"__kIMAVChatParticipantStateKey", v153, @"__kIMAVChatParticipantPreviousStateKey", 0);
              objc_msgSend__postNotificationName_participant_userInfo_(selfCopy, v158, @"__kIMAVChatParticipantStateChangedNotification", v170, v157);
            }
          }

          v143 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v139, &v172, v192, 16);
        }

        while (v143);
      }

      v136 = v170;
      v135 = selfCopy;
    }

    objc_msgSend__postStateToDelegateIfNecessary(v135, v45, v46, v47, v48);
  }
}

- (void)_postStateToDelegateIfNecessary
{
  v185 = *MEMORY[0x277D85DE8];
  v3 = sub_254761764(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_254743000, v3, OS_LOG_TYPE_DEFAULT, "avchat: %@", buf, 0xCu);
  }

  localState = self->_localState;
  if (localState != self->_lastPostedState)
  {
    if (localState > 2)
    {
      if (localState == 3)
      {
        objc_msgSend_stopTimingForKey_(self->_timingCollection, v4, @"time-to-start-connecting", v6, v7);
        objc_msgSend_startTimingForKey_(self->_timingCollection, v39, @"time-connecting-to-connected", v40, v41);
        objc_msgSend_stopTimingForKey_(self->_timingCollection, v42, @"time-to-connecting", v43, v44);
        objc_msgSend__clearInvitationTimeoutTimer(self, v45, v46, v47, v48);
        objc_msgSend__clearFirstFrameTimeoutTimer(self, v49, v50, v51, v52);
        objc_msgSend__setConnectionTimeoutTimer(self, v53, v54, v55, v56);
        if (!self->_dateStartedConnecting)
        {
          v57 = objc_alloc_init(MEMORY[0x277CBEAA8]);
          dateStartedConnecting = self->_dateStartedConnecting;
          self->_dateStartedConnecting = v57;
        }

        goto LABEL_17;
      }

      if (localState == 4)
      {
        objc_msgSend_stopTimingForKey_(self->_timingCollection, v4, @"time-from-outgoing-relay-update-to-connected", v6, v7);
        objc_msgSend_stopTimingForKey_(self->_timingCollection, v59, @"time-from-relay-incoming-relay-update-to-connected", v60, v61);
        objc_msgSend_stopTimingForKey_(self->_timingCollection, v62, @"time-connecting-to-connected", v63, v64);
        objc_msgSend_stopTimingForKey_(self->_timingCollection, v65, @"time-to-connected", v66, v67);
        objc_msgSend__clearConnectionTimeoutTimer(self, v68, v69, v70, v71);
        objc_msgSend__clearInvitationTimeoutTimer(self, v72, v73, v74, v75);
        objc_msgSend__setFirstFrameTimeoutTimer(self, v76, v77, v78, v79);
        objc_msgSend__entitlementsChanged_(self, v80, 0, v81, v82);
        goto LABEL_17;
      }

      if (localState != 5)
      {
LABEL_17:
        if (self->_localState == 5)
        {
          v83 = MEMORY[0x277CCACA8];
          v84 = objc_msgSend_reasonChatEnded(self->_localParticipant, v4, v5, v6, v7);
          v89 = _NSStringDescriptionForIMAVChatEndedReason(v84, v85, v86, v87, v88);
          v94 = objc_msgSend_error(self->_localParticipant, v90, v91, v92, v93);
          v99 = _NSStringDescriptionForIMAVChatError(v94, v95, v96, v97, v98);
          v103 = objc_msgSend_stringWithFormat_(v83, v100, @"%@ - %@", v101, v102, v89, v99);

          _IMLoggingSetFailureReason();
        }

        v104 = objc_msgSend_sharedInstance(IMAVInterface, v4, v5, v6, v7);
        objc_msgSend_chatStateUpdated(v104, v105, v106, v107, v108);

        v114 = self->_localState;
        if (self->_lastPostedState <= 5 && v114 == 5)
        {
          if (!self->_dateEnded)
          {
            v116 = objc_msgSend_date(MEMORY[0x277CBEAA8], v110, v111, v112, v113);
            dateEnded = self->_dateEnded;
            self->_dateEnded = v116;
          }

          v118 = objc_msgSend_sharedInstance(IMAVInterface, v110, v111, v112, v113);
          objc_msgSend__conferenceEnded_(v118, v119, self, v120, v121);

          v114 = self->_localState;
        }

        self->_lastPostedState = v114;
        v122 = sub_254761764(v109);
        if (os_log_type_enabled(v122, OS_LOG_TYPE_DEFAULT))
        {
          v123 = _NSStringDescriptionForIMAVChatState(self->_lastPostedState);
          v128 = objc_msgSend_endedReason(self, v124, v125, v126, v127);
          v133 = _NSStringDescriptionForIMAVChatEndedReason(v128, v129, v130, v131, v132);
          v138 = objc_msgSend_endedError(self, v134, v135, v136, v137);
          v143 = _NSStringDescriptionForIMAVChatError(v138, v139, v140, v141, v142);
          *buf = 138412802;
          selfCopy = v123;
          v181 = 2112;
          v182 = v133;
          v183 = 2112;
          v184 = v143;
          _os_log_impl(&dword_254743000, v122, OS_LOG_TYPE_DEFAULT, "Posting state change to %@   reason: %@   error: %@", buf, 0x20u);
        }

        v145 = sub_254761764(v144);
        if (os_log_type_enabled(v145, OS_LOG_TYPE_DEFAULT))
        {
          v150 = objc_msgSend_reasonChatEnded(self->_localParticipant, v146, v147, v148, v149);
          v155 = _NSStringDescriptionForIMAVChatEndedReason(v150, v151, v152, v153, v154);
          *buf = 138412290;
          selfCopy = v155;
          _os_log_impl(&dword_254743000, v145, OS_LOG_TYPE_DEFAULT, "    Reason: %@", buf, 0xCu);
        }

        v157 = sub_254761764(v156);
        if (os_log_type_enabled(v157, OS_LOG_TYPE_DEFAULT))
        {
          v162 = objc_msgSend_error(self->_localParticipant, v158, v159, v160, v161);
          v167 = _NSStringDescriptionForIMAVChatError(v162, v163, v164, v165, v166);
          *buf = 138412290;
          selfCopy = v167;
          _os_log_impl(&dword_254743000, v157, OS_LOG_TYPE_DEFAULT, "     Error: %@", buf, 0xCu);
        }

        v168 = MEMORY[0x277CBEAC0];
        v172 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v169, self->_lastPostedState, v170, v171);
        v176 = objc_msgSend_dictionaryWithObjectsAndKeys_(v168, v173, v172, v174, v175, @"__kIMAVChatStateKey", 0);
        objc_msgSend__postNotificationName_userInfo_(self, v177, @"__kIMAVChatStateChangedNotification", v176, v178);

        return;
      }

      objc_msgSend__clearConnectionTimeoutTimer(self, v4, v5, v6, v7);
      objc_msgSend__clearInvitationTimeoutTimer(self, v17, v18, v19, v20);
      objc_msgSend__clearFirstFrameTimeoutTimer(self, v21, v22, v23, v24);
      v29 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v25, v26, v27, v28);
      objc_msgSend_removeObserver_name_object_(v29, v30, self, 0, 0);
    }

    else if (localState)
    {
      if (localState == 1 || localState == 2)
      {
        objc_msgSend__clearConnectionTimeoutTimer(self, v4, v5, v6, v7);
        objc_msgSend__setInvitationTimeoutTimer(self, v9, v10, v11, v12);
        objc_msgSend__clearFirstFrameTimeoutTimer(self, v13, v14, v15, v16);
      }

      goto LABEL_17;
    }

    objc_msgSend__clearConnectionTimeoutTimer(self, v4, v5, v6, v7);
    objc_msgSend__clearFirstFrameTimeoutTimer(self, v31, v32, v33, v34);
    objc_msgSend__clearInvitationTimeoutTimer(self, v35, v36, v37, v38);
    goto LABEL_17;
  }
}

- (void)systemDidFastUserSwitchOut
{
  if ((objc_msgSend_isStateFinal(self, a2, v2, v3, v4) & 1) == 0)
  {

    objc_msgSend_endChat(self, v6, v7, v8, v9);
  }
}

- (void)_saveAudioRestartState
{
  v27 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_isActive(self, a2, v2, v3, v4))
  {
    if (objc_msgSend_isSendingAudio(self, v6, v7, v8, v9))
    {
      v14 = objc_msgSend__needsAudioRestart(self, v10, v11, v12, v13);
      if ((v14 & 1) == 0)
      {
        v15 = sub_254761764(v14);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v25 = 138412290;
          selfCopy = self;
          _os_log_impl(&dword_254743000, v15, OS_LOG_TYPE_DEFAULT, "** Setting needs audio restarted: %@", &v25, 0xCu);
        }

        objc_msgSend__setNeedsAudioRestart_(self, v16, 1, v17, v18);
        objc_msgSend_setMute_(self, v19, 1, v20, v21);
        objc_msgSend_setIsSendingAudio_(self, v22, 0, v23, v24);
      }
    }
  }
}

- (void)_saveVideoRestartState
{
  v27 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_isActive(self, a2, v2, v3, v4))
  {
    if (objc_msgSend_isSendingVideo(self, v6, v7, v8, v9))
    {
      v14 = objc_msgSend__needsVideoRestart(self, v10, v11, v12, v13);
      if ((v14 & 1) == 0)
      {
        v15 = sub_254761764(v14);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v25 = 138412290;
          selfCopy = self;
          _os_log_impl(&dword_254743000, v15, OS_LOG_TYPE_DEFAULT, "** Setting needs video restarted: %@", &v25, 0xCu);
        }

        objc_msgSend__setNeedsVideoRestart_(self, v16, 1, v17, v18);
        objc_msgSend_setPaused_(self, v19, 1, v20, v21);
        objc_msgSend_setIsSendingVideo_(self, v22, 0, v23, v24);
      }
    }
  }
}

- (void)_resumeAudioState
{
  if (objc_msgSend_isActive(self, a2, v2, v3, v4))
  {
    v10 = objc_msgSend__needsAudioRestart(self, v6, v7, v8, v9);
    if (v10)
    {
      v11 = sub_254761764(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v21 = 0;
        _os_log_impl(&dword_254743000, v11, OS_LOG_TYPE_DEFAULT, "** Restarting audio!", v21, 2u);
      }

      objc_msgSend__setNeedsAudioRestart_(self, v12, 0, v13, v14);
      objc_msgSend_setMute_(self, v15, 0, v16, v17);
      objc_msgSend_setIsSendingAudio_(self, v18, 1, v19, v20);
    }
  }
}

- (void)_resumeVideoState
{
  if (objc_msgSend_isActive(self, a2, v2, v3, v4))
  {
    v10 = objc_msgSend__needsVideoRestart(self, v6, v7, v8, v9);
    if (v10)
    {
      v11 = sub_254761764(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v21 = 0;
        _os_log_impl(&dword_254743000, v11, OS_LOG_TYPE_DEFAULT, "** Restarting video!", v21, 2u);
      }

      objc_msgSend__setNeedsVideoRestart_(self, v12, 0, v13, v14);
      objc_msgSend_setPaused_(self, v15, 0, v16, v17);
      objc_msgSend_setIsSendingVideo_(self, v18, 1, v19, v20);
    }
  }
}

- (void)systemApplicationDidBecomeActive
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = sub_254761764(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_254743000, v3, OS_LOG_TYPE_DEFAULT, "Become active: %@", &v12, 0xCu);
  }

  objc_msgSend__resumeAudioState(self, v4, v5, v6, v7);
  objc_msgSend__resumeVideoState(self, v8, v9, v10, v11);
}

- (void)systemApplicationDidEnterBackground
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = sub_254761764(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_254743000, v3, OS_LOG_TYPE_DEFAULT, "Application is entering background: %@", &v8, 0xCu);
  }

  objc_msgSend__saveVideoRestartState(self, v4, v5, v6, v7);
}

- (void)systemApplicationWillEnterForeground
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = sub_254761764(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_254743000, v3, OS_LOG_TYPE_DEFAULT, "Application is entering foreground: %@", &v12, 0xCu);
  }

  objc_msgSend__resumeAudioState(self, v4, v5, v6, v7);
  objc_msgSend__resumeVideoState(self, v8, v9, v10, v11);
}

- (void)systemApplicationDidSuspend
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = sub_254761764(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_254743000, v3, OS_LOG_TYPE_DEFAULT, "Application did suspend: %@", &v8, 0xCu);
  }

  objc_msgSend__saveVideoRestartState(self, v4, v5, v6, v7);
}

- (void)systemApplicationDidResume
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = sub_254761764(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_254743000, v3, OS_LOG_TYPE_DEFAULT, "Application did resume: %@", &v12, 0xCu);
  }

  objc_msgSend__resumeAudioState(self, v4, v5, v6, v7);
  objc_msgSend__resumeVideoState(self, v8, v9, v10, v11);
}

- (void)systemApplicationDidResumeForEventsOnly
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = sub_254761764(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_254743000, v3, OS_LOG_TYPE_DEFAULT, "Application did resume for events only: %@", &v12, 0xCu);
  }

  objc_msgSend__resumeAudioState(self, v4, v5, v6, v7);
  objc_msgSend__resumeVideoState(self, v8, v9, v10, v11);
}

- (void)notificationCenterWillAppear
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = sub_254761764(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_254743000, v3, OS_LOG_TYPE_DEFAULT, "Notification center is appearing: %@", &v4, 0xCu);
  }
}

- (void)notificationCenterDidDisappear
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = sub_254761764(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_254743000, v3, OS_LOG_TYPE_DEFAULT, "Notification center did disappear: %@", &v4, 0xCu);
  }
}

- (void)systemWillShutdown
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = sub_254761764(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_254743000, v3, OS_LOG_TYPE_DEFAULT, "System will shut down, ending chat: %@", &v8, 0xCu);
  }

  objc_msgSend_endChat(self, v4, v5, v6, v7);
}

- (void)_airplaneModeChanged:(id)changed
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_airplaneModeEnabled(self, a2, changed, v3, v4);
  v11 = objc_msgSend_sharedInstance(MEMORY[0x277D19270], v7, v8, v9, v10);
  isAirplaneModeEnabled = objc_msgSend_isAirplaneModeEnabled(v11, v12, v13, v14, v15);
  objc_msgSend__setAirplaneModeEnabled_(self, v17, isAirplaneModeEnabled, v18, v19);

  if (v6 != objc_msgSend_airplaneModeEnabled(self, v20, v21, v22, v23))
  {
    v28 = objc_msgSend_airplaneModeEnabled(self, v24, v25, v26, v27);
    if (v28)
    {
      v29 = sub_254761764(v28);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v34 = 138412290;
        selfCopy = self;
        _os_log_impl(&dword_254743000, v29, OS_LOG_TYPE_DEFAULT, "Airplane mode was enabled, ending chat: %@", &v34, 0xCu);
      }

      objc_msgSend_endChat(self, v30, v31, v32, v33);
    }
  }
}

- (void)_entitlementsChanged:(id)changed
{
  v24 = *MEMORY[0x277D85DE8];
  if (objc_msgSend__localNetworkConnectionType(self, a2, changed, v3, v4) == 1)
  {
    v10 = objc_msgSend_sharedInstance(MEMORY[0x277D07DB0], v6, v7, v8, v9);
    v15 = objc_msgSend_nonWifiFaceTimeAvailable(v10, v11, v12, v13, v14);

    if ((v15 & 1) == 0)
    {
      v17 = sub_254761764(v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v22 = 138412290;
        selfCopy = self;
        _os_log_impl(&dword_254743000, v17, OS_LOG_TYPE_DEFAULT, "FaceTime over cellular was disabled, ending chat: %@", &v22, 0xCu);
      }

      objc_msgSend_endChat(self, v18, v19, v20, v21);
    }
  }
}

- (void)_peerID:(id)d changedTo:(id)to
{
  v57 = *MEMORY[0x277D85DE8];
  dCopy = d;
  toCopy = to;
  v8 = sub_254761764(toCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v53 = 138412546;
    v54 = dCopy;
    v55 = 2112;
    v56 = toCopy;
    _os_log_impl(&dword_254743000, v8, OS_LOG_TYPE_DEFAULT, "peerID: %@ changedTo: %@", &v53, 0x16u);
  }

  if ((objc_msgSend_isEqualToString_(dCopy, v9, toCopy, v10, v11) & 1) == 0 && objc_msgSend_length(dCopy, v12, v13, v14, v15) && objc_msgSend_length(toCopy, v16, v17, v18, v19))
  {
    v24 = objc_msgSend_account(self, v20, v21, v22, v23);
    v28 = objc_msgSend_imHandleWithID_(v24, v25, dCopy, v26, v27);

    v33 = objc_msgSend_account(self, v29, v30, v31, v32);
    v37 = objc_msgSend_imHandleWithID_(v33, v34, toCopy, v35, v36);

    v39 = sub_254761764(v38);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      v53 = 138412546;
      v54 = v28;
      v55 = 2112;
      v56 = v37;
      _os_log_impl(&dword_254743000, v39, OS_LOG_TYPE_DEFAULT, "old handle: %@   new handle: %@", &v53, 0x16u);
    }

    if (v28 && v37)
    {
      v43 = objc_msgSend_participantMatchingIMHandle_(self, v40, v37, v41, v42);
      if (v43)
      {
        v47 = v43;
        v48 = sub_254761764(v43);
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v53) = 0;
          _os_log_impl(&dword_254743000, v48, OS_LOG_TYPE_DEFAULT, "Already have new handle", &v53, 2u);
        }
      }

      else
      {
        v47 = objc_msgSend_participantMatchingIMHandle_(self, v44, v28, v45, v46);
        v49 = sub_254761764(v47);
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          v53 = 138412290;
          v54 = v47;
          _os_log_impl(&dword_254743000, v49, OS_LOG_TYPE_DEFAULT, "found participant: %@", &v53, 0xCu);
        }

        objc_msgSend__switchToUseNewIMHandle_(v47, v50, v37, v51, v52);
      }
    }
  }
}

- (void)_updateIMHandleInBuddyList:(id)list
{
  v26 = *MEMORY[0x277D85DE8];
  listCopy = list;
  v4 = *MEMORY[0x277D18CF0];
  objc_msgSend_postNotificationName_(listCopy, v5, *MEMORY[0x277D18CF0], v6, v7);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v12 = objc_msgSend_accountSiblingsArray(listCopy, v8, v9, v10, v11, 0);
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v21, v25, 16);
  if (v14)
  {
    v18 = v14;
    v19 = *v22;
    do
    {
      v20 = 0;
      do
      {
        if (*v22 != v19)
        {
          objc_enumerationMutation(v12);
        }

        objc_msgSend_postNotificationName_(*(*(&v21 + 1) + 8 * v20++), v15, v4, v16, v17);
      }

      while (v18 != v20);
      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v15, &v21, v25, 16);
    }

    while (v18);
  }
}

- (void)_insertRemoteParticipant:(id)participant atIndex:(unint64_t)index
{
  participantCopy = participant;
  v7 = sub_254761764(participantCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v25 = 0;
    _os_log_impl(&dword_254743000, v7, OS_LOG_TYPE_DEFAULT, &unk_2547876A3, v25, 2u);
  }

  objc_msgSend_requestIconIfNecessary(participantCopy, v8, v9, v10, v11);
  if (index == 0x7FFFFFFFFFFFFFFFLL || (v16 = index + 1, v16 >= objc_msgSend_count(self->_participants, v12, v13, v14, v15)))
  {
    objc_msgSend_addObject_(self->_participants, v12, participantCopy, v14, v15);
  }

  else
  {
    objc_msgSend_insertObject_atIndex_(self->_participants, v12, participantCopy, v16, v15);
  }

  v21 = objc_msgSend_imHandle(participantCopy, v17, v18, v19, v20);
  objc_msgSend__updateIMHandleInBuddyList_(self, v22, v21, v23, v24);
}

- (BOOL)_moveVCPartyID:(id)d toIndex:(unsigned int)index inCount:(unsigned int)count
{
  LODWORD(v5) = count;
  dCopy = d;
  if (v5)
  {
    v12 = objc_msgSend_objectAtIndex_(self->_participants, v8, 0, v9, v10);
    v17 = objc_msgSend_vcPartyID(v12, v13, v14, v15, v16);
    isEqualToString = objc_msgSend_isEqualToString_(dCopy, v18, v17, v19, v20);

    if (isEqualToString)
    {
      v25 = 0;
      LOBYTE(v5) = 1;
LABEL_8:
      if (v25 != index)
      {
        objc_msgSend_removeObjectAtIndex_(self->_participants, v22, v25, v23, v24);
        objc_msgSend_insertObject_atIndex_(self->_participants, v39, v12, index, v40);
      }
    }

    else
    {
      v26 = v5;
      v5 = 1;
      while (1)
      {

        if (v26 == v5)
        {
          break;
        }

        v12 = objc_msgSend_objectAtIndex_(self->_participants, v27, v5, v28, v29);
        v34 = objc_msgSend_vcPartyID(v12, v30, v31, v32, v33);
        v38 = objc_msgSend_isEqualToString_(dCopy, v35, v34, v36, v37);

        ++v5;
        if (v38)
        {
          v25 = v5 - 1;
          LOBYTE(v5) = v5 - 1 < v26;
          goto LABEL_8;
        }
      }

      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (void)_initParticipantsWithIMHandles:(id)handles
{
  v81 = *MEMORY[0x277D85DE8];
  handlesCopy = handles;
  v5 = sub_254761764(handlesCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy = self;
    v79 = 2112;
    v80 = handlesCopy;
    _os_log_impl(&dword_254743000, v5, OS_LOG_TYPE_DEFAULT, "avchat: %@  imhandles: %@", buf, 0x16u);
  }

  v10 = objc_msgSend_count(handlesCopy, v6, v7, v8, v9);
  v11 = objc_alloc(MEMORY[0x277CBEB18]);
  v15 = objc_msgSend_initWithCapacity_(v11, v12, v10 + 1, v13, v14);
  participants = self->_participants;
  self->_participants = v15;

  v70 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEB18], v17, handlesCopy, v18, v19);
  objc_msgSend_addObject_(v70, v20, self->_initiator, v21, v22);
  v27 = objc_msgSend___imFirstObject(handlesCopy, v23, v24, v25, v26);
  v32 = objc_msgSend_account(v27, v28, v29, v30, v31);
  v37 = objc_msgSend_loginIMHandle(v32, v33, v34, v35, v36);

  v38 = [IMAVChatParticipant alloc];
  initiator = self->_initiator;
  v44 = objc_msgSend_account(v37, v40, v41, v42, v43);
  inited = objc_msgSend_initAs_invitedBy_toChat_account_(v38, v45, v37, initiator, self, v44);
  localParticipant = self->_localParticipant;
  self->_localParticipant = inited;

  objc_msgSend_addObject_(self->_participants, v48, self->_localParticipant, v49, v50);
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  obj = handlesCopy;
  v52 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v51, &v72, v76, 16);
  if (v52)
  {
    v54 = v52;
    v55 = 0;
    v56 = *v73;
    do
    {
      for (i = 0; i != v54; ++i)
      {
        if (*v73 != v56)
        {
          objc_enumerationMutation(obj);
        }

        v58 = *(*(&v72 + 1) + 8 * i);
        if (v58 == v37)
        {
          if (self->_isVideo)
          {
            v55 = 0;
          }
        }

        else
        {
          v59 = [IMAVChatParticipant alloc];
          v60 = self->_initiator;
          v65 = objc_msgSend_account(v58, v61, v62, v63, v64);
          v67 = objc_msgSend_initAs_invitedBy_toChat_account_(v59, v66, v58, v60, self, v65);

          objc_msgSend__insertRemoteParticipant_atIndex_(self, v68, v67, v55, v69);
          ++v55;
        }
      }

      v54 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v53, &v72, v76, 16);
    }

    while (v54);
  }
}

- (BOOL)_participantsCheckOut
{
  v74 = *MEMORY[0x277D85DE8];
  v3 = sub_254761764(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_254743000, v3, OS_LOG_TYPE_DEFAULT, &unk_2547876A3, buf, 2u);
  }

  v8 = objc_msgSend_count(self->_participants, v4, v5, v6, v7);
  if ((v8 - 3) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v13 = v8;
    v14 = sub_254761764(v8);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      if (self->_isVideo)
      {
        v15 = @"YES";
      }

      else
      {
        v15 = @"NO";
      }

      *buf = 67109378;
      *v71 = v13;
      *&v71[4] = 2112;
      *&v71[6] = v15;
      v16 = "Failing due to count check:   count: %d  isVideo: %@";
      v17 = v14;
      v18 = 18;
      goto LABEL_23;
    }

    goto LABEL_24;
  }

  localParticipant = self->_localParticipant;
  if (!localParticipant)
  {
    v14 = sub_254761764(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v16 = "Failing due to empty local participant";
      v17 = v14;
      v18 = 2;
LABEL_23:
      _os_log_impl(&dword_254743000, v17, OS_LOG_TYPE_DEFAULT, v16, buf, v18);
    }

LABEL_24:
    v59 = 0;
    goto LABEL_39;
  }

  v14 = objc_msgSend_invitedBy(localParticipant, v9, v10, v11, v12);
  v24 = objc_msgSend_imHandle(self->_localParticipant, v20, v21, v22, v23);
  v25 = v14 == v24;
  isCaller = self->_isCaller;

  if (isCaller == v25)
  {
    v32 = objc_msgSend_set(MEMORY[0x277CBEB58], v28, v29, v30, v31);
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v33 = self->_participants;
    v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v33, v34, &v65, v69, 16);
    if (v35)
    {
      v40 = v35;
      v41 = 0;
      v42 = *v66;
      while (2)
      {
        for (i = 0; i != v40; ++i)
        {
          if (*v66 != v42)
          {
            objc_enumerationMutation(v33);
          }

          v44 = *(*(&v65 + 1) + 8 * i);
          v45 = objc_msgSend_imHandle(v44, v36, v37, v38, v39, v65);
          v50 = objc_msgSend_invitedBy(v44, v46, v47, v48, v49);
          v54 = objc_msgSend_containsObject_(v32, v51, v45, v52, v53);
          if (v54)
          {
            v63 = sub_254761764(v54);
            if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              *v71 = v45;
              _os_log_impl(&dword_254743000, v63, OS_LOG_TYPE_DEFAULT, "Failing due to duplicate handle: %@", buf, 0xCu);
            }

            goto LABEL_36;
          }

          v41 |= v45 == v50;
          objc_msgSend_addObject_(v32, v55, v45, v56, v57);
        }

        v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(v33, v36, &v65, v69, 16);
        if (v40)
        {
          continue;
        }

        break;
      }

      if (v41)
      {
        v59 = 1;
        goto LABEL_38;
      }
    }

    else
    {
    }

    v33 = sub_254761764(v58);
    if (os_log_type_enabled(&v33->super.super, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_254743000, &v33->super.super, OS_LOG_TYPE_DEFAULT, "Failing due to inviter not being in the participant list", buf, 2u);
    }

LABEL_36:
  }

  else
  {
    v32 = sub_254761764(v27);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v60 = self->_localParticipant;
      v61 = self->_isCaller;
      *buf = 138412802;
      if (v61)
      {
        v62 = @"YES";
      }

      else
      {
        v62 = @"NO";
      }

      *v71 = v60;
      *&v71[8] = 2112;
      *&v71[10] = v14;
      v72 = 2112;
      v73 = v62;
      _os_log_impl(&dword_254743000, v32, OS_LOG_TYPE_DEFAULT, "Failing inviter check:   localParticipant: %@   invitedBy: %@   isCaller: %@", buf, 0x20u);
    }
  }

  v59 = 0;
LABEL_38:

LABEL_39:
  return v59;
}

- (IMAVChatParticipant)initiatorParticipant
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v2 = self->_participants;
  v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, &v17, v21, 16);
  if (v4)
  {
    v9 = v4;
    v10 = *v18;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v2);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        if (objc_msgSend_isInitiator(v12, v5, v6, v7, v8))
        {
          v14 = v12;
          goto LABEL_13;
        }
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v5, &v17, v21, 16);
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v2 = sub_254761764(v13);
  if (os_log_type_enabled(&v2->super.super, OS_LOG_TYPE_DEFAULT))
  {
    *v16 = 0;
    _os_log_impl(&dword_254743000, &v2->super.super, OS_LOG_TYPE_DEFAULT, "[WARN] *********** [IMAVChat initiatorParticipant] couldn't find initiator participant!", v16, 2u);
  }

  v14 = 0;
LABEL_13:

  return v14;
}

- (NSArray)remoteParticipants
{
  v6 = objc_msgSend_count(self->_participants, a2, v2, v3, v4);
  if (v6 > 1)
  {
    objc_msgSend_subarrayWithRange_(self->_participants, v7, 1, (v6 - 1), v10);
  }

  else
  {
    objc_msgSend_array(MEMORY[0x277CBEA60], v7, v8, v9, v10);
  }
  v11 = ;

  return v11;
}

- (id)_participantMatchingVCPartyID:(id)d
{
  v33 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v9 = dCopy;
  if (!dCopy)
  {
LABEL_12:
    v26 = 0;
    goto LABEL_15;
  }

  if (objc_msgSend_length(dCopy, v5, v6, v7, v8))
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v10 = self->_participants;
    v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v28, v32, 16);
    if (v12)
    {
      v17 = v12;
      v18 = *v29;
      while (2)
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v29 != v18)
          {
            objc_enumerationMutation(v10);
          }

          v20 = *(*(&v28 + 1) + 8 * i);
          v21 = objc_msgSend_vcPartyID(v20, v13, v14, v15, v16, v28);
          isEqualToString = objc_msgSend_isEqualToString_(v9, v22, v21, v23, v24);

          if (isEqualToString)
          {
            v26 = v20;

            goto LABEL_15;
          }
        }

        v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v13, &v28, v32, 16);
        if (v17)
        {
          continue;
        }

        break;
      }
    }

    goto LABEL_12;
  }

  v26 = self->_localParticipant;
LABEL_15:

  return v26;
}

+ (id)chatList
{
  v5 = objc_msgSend_sharedInstance(IMAVCallManager, a2, v2, v3, v4);
  v10 = objc_msgSend_calls(v5, v6, v7, v8, v9);

  return v10;
}

+ (id)connectedChat
{
  v6 = objc_msgSend__chatListLock(IMAVChat, a2, v2, v3, v4);
  objc_msgSend_lock(v6, v7, v8, v9, v10);

  v15 = objc_msgSend_activeChat(self, v11, v12, v13, v14);
  v20 = v15;
  if (v15 && objc_msgSend_state(v15, v16, v17, v18, v19) == 2)
  {
    v21 = objc_msgSend__chatListLock(IMAVChat, v16, v17, v18, v19);
    objc_msgSend_unlock(v21, v22, v23, v24, v25);

    v26 = 0;
  }

  else
  {
    v27 = objc_msgSend__chatListLock(IMAVChat, v16, v17, v18, v19);
    objc_msgSend_unlock(v27, v28, v29, v30, v31);

    v26 = v20;
  }

  return v26;
}

+ (id)activeChat
{
  v51 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_sharedInstance(IMAVController, a2, v2, v3, v4);
  hasActiveConference = objc_msgSend_hasActiveConference(v5, v6, v7, v8, v9);

  if (hasActiveConference)
  {
    v15 = objc_msgSend__chatListLock(IMAVChat, v11, v12, v13, v14);
    objc_msgSend_lock(v15, v16, v17, v18, v19);

    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v24 = objc_msgSend_chatList(IMAVChat, v20, v21, v22, v23, 0);
    v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v25, &v46, v50, 16);
    if (v30)
    {
      v31 = *v47;
      while (2)
      {
        for (i = 0; i != v30; i = i + 1)
        {
          if (*v47 != v31)
          {
            objc_enumerationMutation(v24);
          }

          v33 = *(*(&v46 + 1) + 8 * i);
          v34 = objc_msgSend_state(v33, v26, v27, v28, v29);
          if (v34 > 5 || ((1 << v34) & 0x23) == 0)
          {
            v30 = v33;
            goto LABEL_16;
          }
        }

        v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v26, &v46, v50, 16);
        if (v30)
        {
          continue;
        }

        break;
      }
    }

LABEL_16:

    v40 = objc_msgSend__chatListLock(IMAVChat, v36, v37, v38, v39);
    objc_msgSend_unlock(v40, v41, v42, v43, v44);
  }

  else
  {
    v30 = 0;
  }

  return v30;
}

+ (id)nonFinalChat
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend__chatListLock(IMAVChat, a2, v2, v3, v4);
  objc_msgSend_lock(v5, v6, v7, v8, v9);

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v14 = objc_msgSend_chatList(IMAVChat, v10, v11, v12, v13, 0);
  v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v36, v40, 16);
  if (v20)
  {
    v21 = *v37;
    do
    {
      for (i = 0; i != v20; i = i + 1)
      {
        if (*v37 != v21)
        {
          objc_enumerationMutation(v14);
        }

        v23 = *(*(&v36 + 1) + 8 * i);
        v24 = objc_msgSend_state(v23, v16, v17, v18, v19);
        if (v24)
        {
          v25 = v24 == 5;
        }

        else
        {
          v25 = 1;
        }

        if (!v25)
        {
          v20 = v23;
          goto LABEL_13;
        }
      }

      v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v16, &v36, v40, 16);
    }

    while (v20);
  }

LABEL_13:

  v30 = objc_msgSend__chatListLock(IMAVChat, v26, v27, v28, v29);
  objc_msgSend_unlock(v30, v31, v32, v33, v34);

  return v20;
}

+ (id)acceptedChats
{
  v5 = objc_msgSend__chatListLock(IMAVChat, a2, v2, v3, v4);
  objc_msgSend_lock(v5, v6, v7, v8, v9);

  v10 = objc_alloc(MEMORY[0x277CBEB18]);
  v15 = objc_msgSend_connectingChats(IMAVChat, v11, v12, v13, v14);
  v19 = objc_msgSend_initWithArray_(v10, v16, v15, v17, v18);

  v24 = objc_msgSend_connectedChats(IMAVChat, v20, v21, v22, v23);
  objc_msgSend_addObjectsFromArray_(v19, v25, v24, v26, v27);

  v32 = objc_msgSend__chatListLock(IMAVChat, v28, v29, v30, v31);
  objc_msgSend_unlock(v32, v33, v34, v35, v36);

  return v19;
}

+ (id)chatsWithIMAVChatState:(unsigned int)state
{
  v42 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend__chatListLock(IMAVChat, a2, *&state, v3, v4);
  objc_msgSend_lock(v6, v7, v8, v9, v10);

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v15 = objc_msgSend_chatList(IMAVChat, v11, v12, v13, v14, 0);
  v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v37, v41, 16);
  if (v17)
  {
    v22 = v17;
    v23 = 0;
    v24 = *v38;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v38 != v24)
        {
          objc_enumerationMutation(v15);
        }

        v26 = *(*(&v37 + 1) + 8 * i);
        if (objc_msgSend_state(v26, v18, v19, v20, v21) == state)
        {
          if (!v23)
          {
            v23 = objc_alloc_init(MEMORY[0x277CBEB18]);
          }

          objc_msgSend_addObject_(v23, v18, v26, v20, v21);
        }
      }

      v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v18, &v37, v41, 16);
    }

    while (v22);
  }

  else
  {
    v23 = 0;
  }

  v31 = objc_msgSend__chatListLock(IMAVChat, v27, v28, v29, v30);
  objc_msgSend_unlock(v31, v32, v33, v34, v35);

  return v23;
}

+ (id)avChatWithGUID:(id)d
{
  v51 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (objc_msgSend_length(dCopy, v4, v5, v6, v7))
  {
    v12 = objc_msgSend__chatListLock(IMAVChat, v8, v9, v10, v11);
    objc_msgSend_lock(v12, v13, v14, v15, v16);

    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v21 = objc_msgSend_chatList(IMAVChat, v17, v18, v19, v20, 0);
    v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, &v46, v50, 16);
    if (v27)
    {
      v28 = *v47;
      while (2)
      {
        for (i = 0; i != v27; i = i + 1)
        {
          if (*v47 != v28)
          {
            objc_enumerationMutation(v21);
          }

          v30 = *(*(&v46 + 1) + 8 * i);
          v31 = objc_msgSend_GUID(v30, v23, v24, v25, v26);
          isEqualToString = objc_msgSend_isEqualToString_(v31, v32, dCopy, v33, v34);

          if (isEqualToString)
          {
            v27 = v30;
            goto LABEL_12;
          }
        }

        v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v23, &v46, v50, 16);
        if (v27)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:

    v40 = objc_msgSend__chatListLock(IMAVChat, v36, v37, v38, v39);
    objc_msgSend_unlock(v40, v41, v42, v43, v44);
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

+ (id)_avChatArray
{
  v5 = objc_msgSend_sharedInstance(IMAVCallManager, a2, v2, v3, v4);
  v10 = objc_msgSend__copyMutableFTCalls(v5, v6, v7, v8, v9);

  return v10;
}

+ (id)_chatWithSessionID:(unsigned int)d
{
  v43 = *MEMORY[0x277D85DE8];
  v7 = objc_msgSend__chatListLock(IMAVChat, a2, *&d, v3, v4);
  objc_msgSend_lock(v7, v8, v9, v10, v11);

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v16 = objc_msgSend__chatList(self, v12, v13, v14, v15, 0);
  v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v38, v42, 16);
  if (v18)
  {
    v23 = v18;
    v24 = *v39;
    while (2)
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v39 != v24)
        {
          objc_enumerationMutation(v16);
        }

        v26 = *(*(&v38 + 1) + 8 * i);
        if (objc_msgSend_sessionID(v26, v19, v20, v21, v22) == d)
        {
          v27 = v26;
          goto LABEL_11;
        }
      }

      v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v19, &v38, v42, 16);
      if (v23)
      {
        continue;
      }

      break;
    }
  }

  v27 = 0;
LABEL_11:

  v32 = objc_msgSend__chatListLock(IMAVChat, v28, v29, v30, v31);
  objc_msgSend_unlock(v32, v33, v34, v35, v36);

  return v27;
}

+ (id)_chatList
{
  v5 = objc_msgSend__chatListLock(IMAVChat, a2, v2, v3, v4);
  objc_msgSend_lock(v5, v6, v7, v8, v9);

  v14 = objc_msgSend_sharedInstance(IMAVCallManager, v10, v11, v12, v13);
  v19 = objc_msgSend__FTCalls(v14, v15, v16, v17, v18);
  v24 = objc_msgSend_copy(v19, v20, v21, v22, v23);

  v29 = objc_msgSend__chatListLock(IMAVChat, v25, v26, v27, v28);
  objc_msgSend_unlock(v29, v30, v31, v32, v33);

  return v24;
}

+ (id)_connectedChat
{
  v5 = objc_msgSend__activeChat(self, a2, v2, v3, v4);
  v10 = v5;
  if (v5 && objc_msgSend_state(v5, v6, v7, v8, v9) == 2)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10;
  }

  return v11;
}

+ (id)_activeChat
{
  v51 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_sharedInstance(IMAVController, a2, v2, v3, v4);
  hasActiveConference = objc_msgSend_hasActiveConference(v5, v6, v7, v8, v9);

  if (hasActiveConference)
  {
    v15 = objc_msgSend__chatListLock(IMAVChat, v11, v12, v13, v14);
    objc_msgSend_lock(v15, v16, v17, v18, v19);

    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v24 = objc_msgSend__chatList(IMAVChat, v20, v21, v22, v23, 0);
    v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v25, &v46, v50, 16);
    if (v30)
    {
      v31 = *v47;
      while (2)
      {
        for (i = 0; i != v30; i = i + 1)
        {
          if (*v47 != v31)
          {
            objc_enumerationMutation(v24);
          }

          v33 = *(*(&v46 + 1) + 8 * i);
          v34 = objc_msgSend_state(v33, v26, v27, v28, v29);
          if (v34 > 5 || ((1 << v34) & 0x23) == 0)
          {
            v30 = v33;
            goto LABEL_16;
          }
        }

        v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v26, &v46, v50, 16);
        if (v30)
        {
          continue;
        }

        break;
      }
    }

LABEL_16:

    v40 = objc_msgSend__chatListLock(IMAVChat, v36, v37, v38, v39);
    objc_msgSend_unlock(v40, v41, v42, v43, v44);
  }

  else
  {
    v30 = 0;
  }

  return v30;
}

+ (id)_nonFinalChat
{
  v46 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend__chatListLock(IMAVChat, a2, v2, v3, v4);
  objc_msgSend_lock(v5, v6, v7, v8, v9);

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v14 = objc_msgSend_sharedInstance(IMAVCallManager, v10, v11, v12, v13, 0);
  v19 = objc_msgSend__FTCalls(v14, v15, v16, v17, v18);

  v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v41, v45, 16);
  if (v25)
  {
    v26 = *v42;
    do
    {
      for (i = 0; i != v25; i = i + 1)
      {
        if (*v42 != v26)
        {
          objc_enumerationMutation(v19);
        }

        v28 = *(*(&v41 + 1) + 8 * i);
        v29 = objc_msgSend_state(v28, v21, v22, v23, v24);
        if (v29)
        {
          v30 = v29 == 5;
        }

        else
        {
          v30 = 1;
        }

        if (!v30)
        {
          v25 = v28;
          goto LABEL_13;
        }
      }

      v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v21, &v41, v45, 16);
    }

    while (v25);
  }

LABEL_13:

  v35 = objc_msgSend__chatListLock(IMAVChat, v31, v32, v33, v34);
  objc_msgSend_unlock(v35, v36, v37, v38, v39);

  return v25;
}

+ (id)_chatListLock
{
  if (qword_28134A470 != -1)
  {
    sub_25477F968();
  }

  v3 = qword_28134A468;

  return v3;
}

+ (id)_avChatWithConferenceID:(id)d
{
  v51 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (objc_msgSend_length(dCopy, v4, v5, v6, v7))
  {
    v12 = objc_msgSend__chatListLock(IMAVChat, v8, v9, v10, v11);
    objc_msgSend_lock(v12, v13, v14, v15, v16);

    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v21 = objc_msgSend__chatList(IMAVChat, v17, v18, v19, v20, 0);
    v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, &v46, v50, 16);
    if (v27)
    {
      v28 = *v47;
      while (2)
      {
        for (i = 0; i != v27; i = i + 1)
        {
          if (*v47 != v28)
          {
            objc_enumerationMutation(v21);
          }

          v30 = *(*(&v46 + 1) + 8 * i);
          v31 = objc_msgSend_conferenceID(v30, v23, v24, v25, v26);
          isEqualToString = objc_msgSend_isEqualToString_(v31, v32, dCopy, v33, v34);

          if (isEqualToString)
          {
            v27 = v30;
            goto LABEL_12;
          }
        }

        v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v23, &v46, v50, 16);
        if (v27)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:

    v40 = objc_msgSend__chatListLock(IMAVChat, v36, v37, v38, v39);
    objc_msgSend_unlock(v40, v41, v42, v43, v44);
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

+ (id)_avChatWithGUID:(id)d
{
  v51 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (objc_msgSend_length(dCopy, v4, v5, v6, v7))
  {
    v12 = objc_msgSend__chatListLock(IMAVChat, v8, v9, v10, v11);
    objc_msgSend_lock(v12, v13, v14, v15, v16);

    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v21 = objc_msgSend__chatList(IMAVChat, v17, v18, v19, v20, 0);
    v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, &v46, v50, 16);
    if (v27)
    {
      v28 = *v47;
      while (2)
      {
        for (i = 0; i != v27; i = i + 1)
        {
          if (*v47 != v28)
          {
            objc_enumerationMutation(v21);
          }

          v30 = *(*(&v46 + 1) + 8 * i);
          v31 = objc_msgSend_GUID(v30, v23, v24, v25, v26);
          isEqualToString = objc_msgSend_isEqualToString_(v31, v32, dCopy, v33, v34);

          if (isEqualToString)
          {
            v27 = v30;
            goto LABEL_12;
          }
        }

        v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v23, &v46, v50, 16);
        if (v27)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:

    v40 = objc_msgSend__chatListLock(IMAVChat, v36, v37, v38, v39);
    objc_msgSend_unlock(v40, v41, v42, v43, v44);
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

+ (id)_acceptedChats
{
  v5 = objc_msgSend__chatListLock(IMAVChat, a2, v2, v3, v4);
  objc_msgSend_lock(v5, v6, v7, v8, v9);

  v10 = objc_alloc(MEMORY[0x277CBEB18]);
  v15 = objc_msgSend__connectingChats(IMAVChat, v11, v12, v13, v14);
  v19 = objc_msgSend_initWithArray_(v10, v16, v15, v17, v18);

  v24 = objc_msgSend__connectedChats(IMAVChat, v20, v21, v22, v23);
  objc_msgSend_addObjectsFromArray_(v19, v25, v24, v26, v27);

  v32 = objc_msgSend__chatListLock(IMAVChat, v28, v29, v30, v31);
  objc_msgSend_unlock(v32, v33, v34, v35, v36);

  return v19;
}

+ (id)_chatsWithIMAVChatState:(unsigned int)state
{
  v55 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend__chatListLock(IMAVChat, a2, *&state, v3, v4);
  objc_msgSend_lock(v6, v7, v8, v9, v10);

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v15 = objc_msgSend_sharedInstance(IMAVCallManager, v11, v12, v13, v14, 0);
  v20 = objc_msgSend__nonRetainingChatList(v15, v16, v17, v18, v19);

  v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v21, &v50, v54, 16);
  if (v22)
  {
    v27 = v22;
    v28 = 0;
    v29 = *v51;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v51 != v29)
        {
          objc_enumerationMutation(v20);
        }

        v31 = objc_msgSend_copyObject(*(*(&v50 + 1) + 8 * i), v23, v24, v25, v26);
        v36 = v31;
        if (v31 && objc_msgSend_state(v31, v32, v33, v34, v35) == state)
        {
          if (!v28)
          {
            v28 = objc_alloc_init(MEMORY[0x277CBEB18]);
          }

          objc_msgSend_addObject_(v28, v37, v36, v38, v39);
        }
      }

      v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v23, &v50, v54, 16);
    }

    while (v27);
  }

  else
  {
    v28 = 0;
  }

  v44 = objc_msgSend__chatListLock(IMAVChat, v40, v41, v42, v43);
  objc_msgSend_unlock(v44, v45, v46, v47, v48);

  return v28;
}

+ (id)_bestGuessAVChatWithIMHandle:(id)handle conferenceID:(id)d sessionID:(unsigned int)iD properties:(id)properties
{
  v7 = *&iD;
  v151 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  dCopy = d;
  propertiesCopy = properties;
  v12 = sub_254761764(propertiesCopy);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v17 = objc_msgSend_sharedInstance(IMAVCallManager, v13, v14, v15, v16);
    v22 = objc_msgSend__FTCalls(v17, v18, v19, v20, v21);
    *buf = 138412290;
    *v150 = v22;
    _os_log_impl(&dword_254743000, v12, OS_LOG_TYPE_DEFAULT, "All Chats: %@", buf, 0xCu);
  }

  v26 = objc_msgSend__chatWithSessionID_(IMAVChat, v23, v7, v24, v25);
  if (v26)
  {
    v30 = v26;
    v31 = sub_254761764(v26);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109378;
      *v150 = v7;
      *&v150[4] = 2112;
      *&v150[6] = v30;
      v32 = "      SessionID [%u] => AVChat [%@]";
      v33 = v31;
      v34 = 18;
LABEL_11:
      _os_log_impl(&dword_254743000, v33, OS_LOG_TYPE_DEFAULT, v32, buf, v34);
    }

LABEL_19:

    goto LABEL_20;
  }

  if (dCopy)
  {
    v30 = objc_msgSend__avChatWithConferenceID_(IMAVChat, v27, dCopy, v28, v29);
    v31 = sub_254761764(v30);
    v35 = os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);
    if (v30)
    {
      if (!v35)
      {
        goto LABEL_19;
      }

      *buf = 138412546;
      *v150 = dCopy;
      *&v150[8] = 2112;
      *&v150[10] = v30;
      v32 = "      conferenceID [%@] => AVChat [%@]";
LABEL_10:
      v33 = v31;
      v34 = 22;
      goto LABEL_11;
    }

    if (v35)
    {
      *buf = 138412290;
      *v150 = dCopy;
      v36 = "      Found no AVChat for conference ID [%@], returning none";
      v37 = v31;
      v38 = 12;
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  if (v7)
  {
    v31 = sub_254761764(0);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *v150 = v7;
      v36 = "      Found no AVChat for sessionID [%u], returning none";
      v37 = v31;
      v38 = 8;
LABEL_17:
      _os_log_impl(&dword_254743000, v37, OS_LOG_TYPE_DEFAULT, v36, buf, v38);
    }

LABEL_18:
    v30 = 0;
    goto LABEL_19;
  }

  v40 = objc_msgSend__avChatInvitedByIMHandle_orConferenceID_(IMAVChat, v27, handleCopy, 0, v29);
  if (v40)
  {
    v30 = v40;
    v31 = sub_254761764(v40);
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_19;
    }

    *buf = 138412546;
    *v150 = handleCopy;
    *&v150[8] = 2112;
    *&v150[10] = v30;
    v32 = "      _avChatInvitedByIMHandle [%@] => AVChat [%@]";
    goto LABEL_10;
  }

  v43 = objc_msgSend__avChatWaitingForReplyFromIMHandle_orConferenceID_(IMAVChat, v41, handleCopy, 0, v42);
  if (v43)
  {
    v30 = v43;
    v31 = sub_254761764(v43);
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_19;
    }

    *buf = 138412546;
    *v150 = handleCopy;
    *&v150[8] = 2112;
    *&v150[10] = v30;
    v32 = "      _avChatWaitingForReplyFromIMHandle [%@] => AVChat [%@]";
    goto LABEL_10;
  }

  v48 = objc_msgSend__connectedChat(IMAVChat, v44, v45, v46, v47);
  if (v48)
  {
    v30 = v48;
    v31 = sub_254761764(v48);
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_19;
    }

    *buf = 138412290;
    *v150 = v30;
    v32 = "      connectedChat => AVChat [%@]";
    goto LABEL_35;
  }

  v53 = objc_msgSend__activeChat(IMAVChat, v49, v50, v51, v52);
  if (v53)
  {
    v30 = v53;
    v31 = sub_254761764(v53);
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_19;
    }

    *buf = 138412290;
    *v150 = v30;
    v32 = "      activeChat [%@]";
    goto LABEL_35;
  }

  if (!objc_msgSend_count(propertiesCopy, v54, v55, v56, v57))
  {
    goto LABEL_65;
  }

  v62 = objc_msgSend__chatListLock(IMAVChat, v58, v59, v60, v61);
  objc_msgSend_lock(v62, v63, v64, v65, v66);

  v145 = 0u;
  v146 = 0u;
  v143 = 0u;
  v144 = 0u;
  v71 = objc_msgSend_sharedInstance(IMAVCallManager, v67, v68, v69, v70);
  v76 = objc_msgSend__nonRetainingChatList(v71, v72, v73, v74, v75);

  obj = v76;
  v134 = objc_msgSend_countByEnumeratingWithState_objects_count_(v76, v77, &v143, v148, 16);
  if (v134)
  {
    v133 = *v144;
    while (2)
    {
      for (i = 0; i != v134; ++i)
      {
        if (*v144 != v133)
        {
          objc_enumerationMutation(obj);
        }

        v83 = objc_msgSend_object(*(*(&v143 + 1) + 8 * i), v78, v79, v80, v81);
        if (v83)
        {
          v135 = i;
          v136 = v83;
          v138 = objc_msgSend_callerProperties(v83, v78, v79, v80, v81);
          v139 = 0u;
          v140 = 0u;
          v141 = 0u;
          v142 = 0u;
          v137 = objc_msgSend_allKeys(propertiesCopy, v84, v85, v86, v87);
          v89 = objc_msgSend_countByEnumeratingWithState_objects_count_(v137, v88, &v139, v147, 16);
          if (v89)
          {
            v93 = v89;
            v94 = *v140;
            while (2)
            {
              for (j = 0; j != v93; ++j)
              {
                if (*v140 != v94)
                {
                  objc_enumerationMutation(v137);
                }

                v96 = *(*(&v139 + 1) + 8 * j);
                v97 = objc_msgSend_objectForKey_(propertiesCopy, v90, v96, v91, v92);
                v101 = objc_msgSend_objectForKey_(v138, v98, v96, v99, v100);
                isEqual = objc_msgSend_isEqual_(v97, v102, v101, v103, v104);

                if (!isEqual)
                {

                  i = v135;
                  goto LABEL_53;
                }
              }

              v93 = objc_msgSend_countByEnumeratingWithState_objects_count_(v137, v90, &v139, v147, 16);
              if (v93)
              {
                continue;
              }

              break;
            }
          }

          v30 = v136;
          v106 = sub_254761764(v30);
          if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
          {
            v111 = objc_msgSend_allKeys(propertiesCopy, v107, v108, v109, v110);
            *buf = 138412546;
            *v150 = v111;
            *&v150[8] = 2112;
            *&v150[10] = v30;
            _os_log_impl(&dword_254743000, v106, OS_LOG_TYPE_DEFAULT, "      properties [%@] => AVChat [%@]", buf, 0x16u);
          }

          goto LABEL_59;
        }

LABEL_53:
        ;
      }

      v134 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v78, &v143, v148, 16);
      if (v134)
      {
        continue;
      }

      break;
    }
  }

  v30 = 0;
LABEL_59:

  v116 = objc_msgSend__chatListLock(IMAVChat, v112, v113, v114, v115);
  objc_msgSend_unlock(v116, v117, v118, v119, v120);

  if (!v30)
  {
LABEL_65:
    v121 = objc_msgSend_sharedInstance(IMAVCallManager, v58, v59, v60, v61);
    v126 = objc_msgSend__FTCalls(v121, v122, v123, v124, v125);
    v30 = objc_msgSend_lastObject(v126, v127, v128, v129, v130);

    if (v30)
    {
      v31 = sub_254761764(v131);
      if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_19;
      }

      *buf = 138412290;
      *v150 = v30;
      v32 = "      Last Chat => AVChat [%@]";
LABEL_35:
      v33 = v31;
      v34 = 12;
      goto LABEL_11;
    }
  }

LABEL_20:

  return v30;
}

+ (id)_avChatInvitedByIMHandle:(id)handle orConferenceID:(id)d
{
  v51 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  v10 = objc_msgSend__avChatWithConferenceID_(self, v7, d, v8, v9);
  v15 = v10;
  if (v10)
  {
    v16 = v10;
  }

  else
  {
    v17 = objc_msgSend__chatListLock(IMAVChat, v11, v12, v13, v14);
    objc_msgSend_lock(v17, v18, v19, v20, v21);

    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v26 = objc_msgSend__chatList(IMAVChat, v22, v23, v24, v25, 0);
    v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v27, &v46, v50, 16);
    if (v16)
    {
      v32 = *v47;
      while (2)
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v47 != v32)
          {
            objc_enumerationMutation(v26);
          }

          v34 = *(*(&v46 + 1) + 8 * i);
          v35 = objc_msgSend_initiatorIMHandle(v34, v28, v29, v30, v31);

          if (v35 == handleCopy)
          {
            v16 = v34;
            goto LABEL_13;
          }
        }

        v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v28, &v46, v50, 16);
        if (v16)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:

    v40 = objc_msgSend__chatListLock(IMAVChat, v36, v37, v38, v39);
    objc_msgSend_unlock(v40, v41, v42, v43, v44);
  }

  return v16;
}

+ (id)_avChatWaitingForReplyFromIMHandle:(id)handle orConferenceID:(id)d
{
  v45 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend__avChatWithConferenceID_(self, a2, d, d, v4);
  v10 = v5;
  if (v5 && objc_msgSend_isCaller(v5, v6, v7, v8, v9))
  {
    v11 = v10;
  }

  else
  {
    v12 = objc_msgSend__chatListLock(IMAVChat, v6, v7, v8, v9);
    objc_msgSend_lock(v12, v13, v14, v15, v16);

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v21 = objc_msgSend__chatList(IMAVChat, v17, v18, v19, v20, 0);
    v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, &v40, v44, 16);
    if (v11)
    {
      v27 = *v41;
      while (2)
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v41 != v27)
          {
            objc_enumerationMutation(v21);
          }

          v29 = *(*(&v40 + 1) + 8 * i);
          if (objc_msgSend_state(v29, v23, v24, v25, v26) == 2 && objc_msgSend_isCaller(v29, v23, v24, v25, v26))
          {
            v11 = v29;
            goto LABEL_15;
          }
        }

        v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v23, &v40, v44, 16);
        if (v11)
        {
          continue;
        }

        break;
      }
    }

LABEL_15:

    v34 = objc_msgSend__chatListLock(IMAVChat, v30, v31, v32, v33);
    objc_msgSend_unlock(v34, v35, v36, v37, v38);
  }

  return v11;
}

+ (id)_avChatConnectingFromIMHandle:(id)handle
{
  v43 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  v8 = objc_msgSend__chatListLock(IMAVChat, v4, v5, v6, v7);
  objc_msgSend_lock(v8, v9, v10, v11, v12);

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v17 = objc_msgSend__chatList(IMAVChat, v13, v14, v15, v16, 0);
  v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v38, v42, 16);
  if (v23)
  {
    v24 = *v39;
    while (2)
    {
      for (i = 0; i != v23; i = i + 1)
      {
        if (*v39 != v24)
        {
          objc_enumerationMutation(v17);
        }

        v26 = *(*(&v38 + 1) + 8 * i);
        if (objc_msgSend_state(v26, v19, v20, v21, v22) == 3 && (objc_msgSend_isCaller(v26, v19, v20, v21, v22) & 1) == 0)
        {
          if (!handleCopy || (objc_msgSend_participantMatchingIMHandle_(v26, v19, handleCopy, v21, v22), v27 = objc_claimAutoreleasedReturnValue(), v27, v27))
          {
            v23 = v26;
            goto LABEL_14;
          }
        }
      }

      v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v19, &v38, v42, 16);
      if (v23)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  v32 = objc_msgSend__chatListLock(IMAVChat, v28, v29, v30, v31);
  objc_msgSend_unlock(v32, v33, v34, v35, v36);

  return v23;
}

+ (id)_avChatWithMatchingIMHandles:(id)handles video:(BOOL)video
{
  videoCopy = video;
  v127 = *MEMORY[0x277D85DE8];
  handlesCopy = handles;
  v5 = sub_254761764(handlesCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (videoCopy)
    {
      v6 = @"YES";
    }

    *buf = 138412546;
    v124 = handlesCopy;
    v125 = 2112;
    v126 = v6;
    _os_log_impl(&dword_254743000, v5, OS_LOG_TYPE_DEFAULT, "imHandles: %@  video: %@", buf, 0x16u);
  }

  v11 = objc_msgSend_lastObject(handlesCopy, v7, v8, v9, v10);
  v12 = sub_254761764(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v17 = objc_msgSend__avChatArray(IMAVChat, v13, v14, v15, v16);
    *buf = 138412290;
    v124 = v17;
    _os_log_impl(&dword_254743000, v12, OS_LOG_TYPE_DEFAULT, "All existing AVChats: %@", buf, 0xCu);
  }

  v22 = objc_msgSend__chatListLock(IMAVChat, v18, v19, v20, v21);
  objc_msgSend_lock(v22, v23, v24, v25, v26);

  v120 = 0u;
  v121 = 0u;
  v118 = 0u;
  v119 = 0u;
  v31 = objc_msgSend__chatList(IMAVChat, v27, v28, v29, v30);
  v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v31, v32, &v118, v122, 16);
  v117 = v31;
  if (!v33)
  {
    v104 = 0;
    goto LABEL_44;
  }

  v34 = v33;
  v115 = handlesCopy;
  v35 = *v119;
  while (2)
  {
    v36 = 0;
    do
    {
      if (*v119 != v35)
      {
        objc_enumerationMutation(v31);
      }

      v37 = *(*(&v118 + 1) + 8 * v36);
      v38 = sub_254761764(v33);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v124 = v37;
        _os_log_impl(&dword_254743000, v38, OS_LOG_TYPE_DEFAULT, "Checking AVChat: %@", buf, 0xCu);
      }

      isCaller = objc_msgSend_isCaller(v37, v39, v40, v41, v42);
      if (isCaller)
      {
        v48 = sub_254761764(isCaller);
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_254743000, v48, OS_LOG_TYPE_DEFAULT, "  ==> Not using this, this is an outgoing", buf, 2u);
        }

        goto LABEL_36;
      }

      v48 = objc_msgSend_remoteParticipants(v37, v44, v45, v46, v47);
      v53 = objc_msgSend_count(v48, v49, v50, v51, v52);
      if (v53 < 2)
      {
        v59 = objc_msgSend_lastObject(v48, v54, v55, v56, v57);
        v64 = objc_msgSend_imHandle(v59, v60, v61, v62, v63);

        if (v64 != v11)
        {
          v70 = sub_254761764(v65);
          if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v124 = v64;
            v125 = 2112;
            v126 = v11;
            _os_log_impl(&dword_254743000, v70, OS_LOG_TYPE_DEFAULT, "  ==> %@ and %@ do not match", buf, 0x16u);
          }

          v75 = objc_msgSend_ID(v64, v71, v72, v73, v74);
          objc_msgSend_ID(v11, v76, v77, v78, v79);
          v81 = v80 = v11;
          hasSuffix = objc_msgSend_hasSuffix_(v75, v82, v81, v83, v84);

          v11 = v80;
          if (!hasSuffix)
          {
LABEL_35:

            v31 = v117;
            goto LABEL_36;
          }

          v87 = sub_254761764(v86);
          if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_254743000, v87, OS_LOG_TYPE_DEFAULT, "  ==> Letting this slide...", buf, 2u);
          }
        }

        v88 = objc_msgSend_state(v37, v66, v67, v68, v69);
        if (v88 < 3)
        {
          isVideo = objc_msgSend_isVideo(v37, v89, v90, v91, v92);
          v101 = isVideo;
          v93 = sub_254761764(isVideo);
          v102 = os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT);
          if (v101 == videoCopy)
          {
            if (v102)
            {
              *buf = 138412290;
              v124 = v37;
              _os_log_impl(&dword_254743000, v93, OS_LOG_TYPE_DEFAULT, "We found a matching chat: %@", buf, 0xCu);
            }

            v104 = v37;
            goto LABEL_42;
          }

          if (v102)
          {
            *buf = 0;
            _os_log_impl(&dword_254743000, v93, OS_LOG_TYPE_DEFAULT, "  ==> Video flags do not match", buf, 2u);
          }
        }

        else
        {
          v93 = sub_254761764(v88);
          if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
          {
            v98 = objc_msgSend_state(v37, v94, v95, v96, v97);
            v99 = _NSStringDescriptionForIMAVChatState(v98);
            *buf = 138412290;
            v124 = v99;
            _os_log_impl(&dword_254743000, v93, OS_LOG_TYPE_DEFAULT, "  ==> State of this chat is not adequate: %@", buf, 0xCu);
          }
        }

        goto LABEL_35;
      }

      v58 = sub_254761764(v53);
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_254743000, v58, OS_LOG_TYPE_DEFAULT, "  ==> Outgoing multiparty, skipping", buf, 2u);
      }

LABEL_36:
      ++v36;
    }

    while (v34 != v36);
    v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v31, v103, &v118, v122, 16);
    v34 = v33;
    if (v33)
    {
      continue;
    }

    break;
  }

  v104 = 0;
LABEL_42:
  handlesCopy = v115;
LABEL_44:

  v109 = objc_msgSend__chatListLock(IMAVChat, v105, v106, v107, v108);
  objc_msgSend_unlock(v109, v110, v111, v112, v113);

  return v104;
}

+ (id)_imHandleFromProxyRepresentation:(id)representation
{
  representationCopy = representation;
  v7 = objc_msgSend_objectForKey_(representationCopy, v4, @"Service", v5, v6);
  v11 = objc_msgSend_objectForKey_(representationCopy, v8, @"AccountGUID", v9, v10);
  v15 = objc_msgSend_objectForKey_(representationCopy, v12, @"AccountLogin", v13, v14);
  v19 = objc_msgSend_objectForKey_(representationCopy, v16, @"HandleID", v17, v18);

  v23 = objc_msgSend_serviceWithName_(MEMORY[0x277D18DD8], v20, v7, v21, v22);
  v28 = objc_msgSend_sharedInstance(MEMORY[0x277D18D28], v24, v25, v26, v27);
  v30 = objc_msgSend_bestAccountForService_login_guid_(v28, v29, v23, v15, v11);

  v34 = objc_msgSend_imHandleWithID_(v30, v31, v19, v32, v33);

  return v34;
}

+ (id)_proxyRepresentationForIMHandle:(id)handle
{
  v3 = MEMORY[0x277CBEB38];
  handleCopy = handle;
  v5 = objc_alloc_init(v3);
  v10 = objc_msgSend_service(handleCopy, v6, v7, v8, v9);
  v15 = objc_msgSend_name(v10, v11, v12, v13, v14);
  v20 = objc_msgSend_account(handleCopy, v16, v17, v18, v19);
  v25 = objc_msgSend_uniqueID(v20, v21, v22, v23, v24);
  v30 = objc_msgSend_login(v20, v26, v27, v28, v29);
  v35 = objc_msgSend_ID(handleCopy, v31, v32, v33, v34);

  if (v15)
  {
    objc_msgSend_setObject_forKey_(v5, v36, v15, @"Service", v37);
  }

  if (v25)
  {
    objc_msgSend_setObject_forKey_(v5, v36, v25, @"AccountGUID", v37);
  }

  if (v30)
  {
    objc_msgSend_setObject_forKey_(v5, v36, v30, @"AccountLogin", v37);
  }

  if (v35)
  {
    objc_msgSend_setObject_forKey_(v5, v36, v35, @"HandleID", v37);
  }

  return v5;
}

- (id)_proxyRepresentationForIMAVChatParticipant:(id)participant
{
  participantCopy = participant;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v9 = objc_msgSend_name(participantCopy, v5, v6, v7, v8);
  if (v9)
  {
    CFDictionarySetValue(v4, @"Name", v9);
  }

  v10 = MEMORY[0x277CCABB0];
  v15 = objc_msgSend__inviteDelivered(participantCopy, v11, v12, v13, v14);
  v19 = objc_msgSend_numberWithBool_(v10, v16, v15, v17, v18);
  if (v19)
  {
    CFDictionarySetValue(v4, @"IsInvitationDelivered", v19);
  }

  v20 = MEMORY[0x277CCABB0];
  isLocalParticipant = objc_msgSend_isLocalParticipant(participantCopy, v21, v22, v23, v24);
  v29 = objc_msgSend_numberWithBool_(v20, v26, isLocalParticipant, v27, v28);
  if (v29)
  {
    CFDictionarySetValue(v4, @"IsLocalParticipant", v29);
  }

  return v4;
}

- (id)_proxyRepresentation
{
  v215 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v8 = objc_msgSend_GUID(self, v4, v5, v6, v7);
  if (v8)
  {
    CFDictionarySetValue(v3, @"GUID", v8);
  }

  v13 = objc_msgSend_account(self, v9, v10, v11, v12);
  v18 = objc_msgSend_uniqueID(v13, v14, v15, v16, v17);

  if (v18)
  {
    CFDictionarySetValue(v3, @"AccountID", v18);
  }

  v23 = objc_msgSend_conferenceID(self, v19, v20, v21, v22);
  if (v23)
  {
    CFDictionarySetValue(v3, @"ConferenceID", v23);
  }

  v24 = MEMORY[0x277CCABB0];
  v29 = objc_msgSend_state(self, v25, v26, v27, v28);
  v33 = objc_msgSend_numberWithUnsignedInt_(v24, v30, v29, v31, v32);
  if (v33)
  {
    CFDictionarySetValue(v3, @"State", v33);
  }

  v34 = MEMORY[0x277CCABB0];
  isStateFinal = objc_msgSend_isStateFinal(self, v35, v36, v37, v38);
  v43 = objc_msgSend_numberWithBool_(v34, v40, isStateFinal, v41, v42);
  if (v43)
  {
    CFDictionarySetValue(v3, @"IsStateFinal", v43);
  }

  v48 = objc_msgSend_initiatorIMHandle(self, v44, v45, v46, v47);
  v52 = objc_msgSend__proxyRepresentationForIMHandle_(IMAVChat, v49, v48, v50, v51);

  if (v52)
  {
    CFDictionarySetValue(v3, @"Initiator", v52);
  }

  v57 = objc_msgSend_otherIMHandle(self, v53, v54, v55, v56);
  v61 = objc_msgSend__proxyRepresentationForIMHandle_(IMAVChat, v58, v57, v59, v60);

  if (v61)
  {
    CFDictionarySetValue(v3, @"Other", v61);
  }

  v62 = MEMORY[0x277CCABB0];
  isCaller = objc_msgSend_isCaller(self, v63, v64, v65, v66);
  v71 = objc_msgSend_numberWithBool_(v62, v68, isCaller, v69, v70);
  if (v71)
  {
    CFDictionarySetValue(v3, @"IsCaller", v71);
  }

  v72 = MEMORY[0x277CCABB0];
  isVideo = objc_msgSend_isVideo(self, v73, v74, v75, v76);
  v81 = objc_msgSend_numberWithBool_(v72, v78, isVideo, v79, v80);
  if (v81)
  {
    CFDictionarySetValue(v3, @"IsVideo", v81);
  }

  v82 = MEMORY[0x277CCABB0];
  v87 = objc_msgSend_endedReason(self, v83, v84, v85, v86);
  v91 = objc_msgSend_numberWithUnsignedInt_(v82, v88, v87, v89, v90);
  if (v91)
  {
    CFDictionarySetValue(v3, @"EndedReason", v91);
  }

  v92 = MEMORY[0x277CCABB0];
  v97 = objc_msgSend_endedError(self, v93, v94, v95, v96);
  v101 = objc_msgSend_numberWithInt_(v92, v98, v97, v99, v100);
  if (v101)
  {
    CFDictionarySetValue(v3, @"EndedError", v101);
  }

  v102 = MEMORY[0x277CCABB0];
  isMute = objc_msgSend_isMute(self, v103, v104, v105, v106);
  v111 = objc_msgSend_numberWithBool_(v102, v108, isMute, v109, v110);
  if (v111)
  {
    CFDictionarySetValue(v3, @"IsMute", v111);
  }

  v112 = MEMORY[0x277CCABB0];
  isSendingAudio = objc_msgSend_isSendingAudio(self, v113, v114, v115, v116);
  v121 = objc_msgSend_numberWithBool_(v112, v118, isSendingAudio, v119, v120);
  if (v121)
  {
    CFDictionarySetValue(v3, @"IsSendingAudio", v121);
  }

  v122 = MEMORY[0x277CCABB0];
  isSendingVideo = objc_msgSend_isSendingVideo(self, v123, v124, v125, v126);
  v131 = objc_msgSend_numberWithBool_(v122, v128, isSendingVideo, v129, v130);
  if (v131)
  {
    CFDictionarySetValue(v3, @"IsSendingVideo", v131);
  }

  v136 = objc_msgSend_dataUploaded(self, v132, v133, v134, v135);
  if (v136)
  {
    CFDictionarySetValue(v3, @"DataUploaded", v136);
  }

  v141 = objc_msgSend_dataDownloaded(self, v137, v138, v139, v140);
  if (v141)
  {
    CFDictionarySetValue(v3, @"DataDownloaded", v141);
  }

  v145 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v142, self->_relayed, v143, v144);
  if (v145)
  {
    CFDictionarySetValue(v3, @"IsRelayed", v145);
  }

  v146 = MEMORY[0x277CCABB0];
  v151 = objc_msgSend_metadataFinalized(self, v147, v148, v149, v150);
  v155 = objc_msgSend_numberWithBool_(v146, v152, v151, v153, v154);
  if (v155)
  {
    CFDictionarySetValue(v3, @"MetadataFinalized", v155);
  }

  v159 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v156, self->_hasReceivedFirstFrame, v157, v158);
  if (v159)
  {
    CFDictionarySetValue(v3, @"HasReceivedFirstFrame", v159);
  }

  v164 = objc_msgSend_dateConnected(self, v160, v161, v162, v163);
  objc_msgSend_timeIntervalSince1970(v164, v165, v166, v167, v168);
  v173 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v169, v170, v171, v172);
  if (v173)
  {
    CFDictionarySetValue(v3, @"DateConnected", v173);
  }

  v178 = objc_msgSend_dateEnded(self, v174, v175, v176, v177);
  objc_msgSend_timeIntervalSince1970(v178, v179, v180, v181, v182);
  v187 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v183, v184, v185, v186);
  if (v187)
  {
    CFDictionarySetValue(v3, @"DateEnded", v187);
  }

  v192 = objc_msgSend_remoteParticipants(self, v188, v189, v190, v191);
  v193 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v210 = 0u;
  v211 = 0u;
  v212 = 0u;
  v213 = 0u;
  v194 = v192;
  v196 = objc_msgSend_countByEnumeratingWithState_objects_count_(v194, v195, &v210, v214, 16);
  if (v196)
  {
    v200 = v196;
    v209 = v164;
    v201 = 0;
    v202 = *v211;
    do
    {
      v203 = 0;
      v204 = v201;
      do
      {
        if (*v211 != v202)
        {
          objc_enumerationMutation(v194);
        }

        v201 = objc_msgSend__proxyRepresentationForIMAVChatParticipant_(self, v197, *(*(&v210 + 1) + 8 * v203), v198, v199);

        objc_msgSend_addObject_(v193, v205, v201, v206, v207);
        ++v203;
        v204 = v201;
      }

      while (v200 != v203);
      v200 = objc_msgSend_countByEnumeratingWithState_objects_count_(v194, v197, &v210, v214, 16);
    }

    while (v200);

    v164 = v209;
  }

  if (v193)
  {
    CFDictionarySetValue(v3, @"RemoteParticipants", v193);
  }

  return v3;
}

- (void)setMetadataFinalized
{
  objc_msgSend__setMetadataFinalized_(self, a2, 1, v2, v3);
  v11 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v5, v6, v7, v8);
  objc_msgSend_postNotificationName_object_(v11, v9, @"__kIMAVChatConferenceMetadataUpdatedNotification", self, v10);
}

- (void)_submitCallStartedLoggingWithRecipientID:(id)d isCaller:(BOOL)caller isVideo:(BOOL)video
{
  callerCopy = caller;
  IMStringIsEmail();
  if (callerCopy)
  {
    FTAWDSetSubmissionDate();
  }

  v14 = objc_msgSend_sharedInstance(MEMORY[0x277D192A8], v6, v7, v8, v9);
  objc_msgSend_isScreenLocked(v14, v10, v11, v12, v13);
  FTAWDLogCallStarted();
}

- (void)_submitCallConnectedLogging
{
  objc_msgSend_isCaller(self, a2, v2, v3, v4);
  objc_msgSend_isVideo(self, v6, v7, v8, v9);
  v75 = objc_msgSend__connectDuration(self, v10, v11, v12, v13);
  objc_msgSend__remoteNetworkConnectionType(self, v14, v15, v16, v17);
  objc_msgSend__localNetworkConnectionType(self, v18, v19, v20, v21);
  v26 = objc_msgSend__connectionType(self, v22, v23, v24, v25);
  sub_25477D6C8(v26);
  objc_msgSend__usesRelay(self, v27, v28, v29, v30);
  v39 = objc_msgSend__natType(self, v31, v32, v33, v34);
  if (!v39)
  {
    v39 = objc_msgSend__currentNatType(self, v35, v36, v37, v38);
  }

  v40 = objc_msgSend__remoteNatType(self, v35, v36, v37, v38);
  v45 = objc_msgSend_unsignedIntValue(v39, v41, v42, v43, v44);
  v46 = sub_25477D778(v45);
  v51 = objc_msgSend_unsignedIntValue(v40, v47, v48, v49, v50);
  v52 = sub_25477D778(v51);
  v56 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v53, v46, v54, v55);

  v60 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v57, v52, v58, v59);

  v65 = objc_msgSend__relayConnectDuration(self, v61, v62, v63, v64);
  v70 = objc_msgSend_sharedInstance(MEMORY[0x277D192A8], v66, v67, v68, v69);
  objc_msgSend_isScreenLocked(v70, v71, v72, v73, v74);
  FTAWDLogCallConnected();
}

- (void)_submitCallInterruptionBeganLogging
{
  objc_msgSend_isCaller(self, a2, v2, v3, v4);
  objc_msgSend_isVideo(self, v6, v7, v8, v9);
  objc_msgSend__isVideoInterrupted(self, v10, v11, v12, v13);
  objc_msgSend__isAudioInterrupted(self, v14, v15, v16, v17);
  v18 = MEMORY[0x277CCABB0];
  v23 = objc_msgSend_sharedInstance(MEMORY[0x277D192E8], v19, v20, v21, v22);
  if (objc_msgSend__localNetworkConnectionType(self, v24, v25, v26, v27) == 1)
  {
    v31 = objc_msgSend_linkQualityValueForInterfaceType_(v23, v28, 3, v29, v30);
  }

  else
  {
    v31 = objc_msgSend_linkQualityValueForInterfaceType_(v23, v28, 2, v29, v30);
  }

  v53 = objc_msgSend_numberWithInt_(v18, v32, v31, v33, v34);

  v39 = objc_msgSend__interruptionBegan(self, v35, v36, v37, v38);

  if (!v39)
  {
    v44 = objc_msgSend_date(MEMORY[0x277CBEAA8], v40, v41, v42, v43);
    objc_msgSend__setInterruptionBegan_(self, v45, v44, v46, v47);
  }

  v48 = objc_msgSend_sharedInstance(MEMORY[0x277D192A8], v40, v41, v42, v43);
  objc_msgSend_isScreenLocked(v48, v49, v50, v51, v52);
  FTAWDLogCallInterruptionBegan();
}

- (void)_submitCallInterruptionEndedLogging
{
  v85 = *MEMORY[0x277D85DE8];
  objc_msgSend_isCaller(self, a2, v2, v3, v4);
  objc_msgSend_isVideo(self, v6, v7, v8, v9);
  objc_msgSend__isVideoInterrupted(self, v10, v11, v12, v13);
  objc_msgSend__isAudioInterrupted(self, v14, v15, v16, v17);
  v18 = MEMORY[0x277CCABB0];
  v23 = objc_msgSend_sharedInstance(MEMORY[0x277D192E8], v19, v20, v21, v22);
  if (objc_msgSend__localNetworkConnectionType(self, v24, v25, v26, v27) == 1)
  {
    v31 = objc_msgSend_linkQualityValueForInterfaceType_(v23, v28, 3, v29, v30);
  }

  else
  {
    v31 = objc_msgSend_linkQualityValueForInterfaceType_(v23, v28, 2, v29, v30);
  }

  v35 = objc_msgSend_numberWithInt_(v18, v32, v31, v33, v34);

  v40 = objc_msgSend_date(MEMORY[0x277CBEAA8], v36, v37, v38, v39);
  v45 = objc_msgSend__interruptionBegan(self, v41, v42, v43, v44);
  objc_msgSend_timeIntervalSinceDate_(v40, v46, v45, v47, v48);
  v50 = v49;

  v52 = sub_254761764(v51);
  if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
  {
    v57 = objc_msgSend__interruptionBegan(self, v53, v54, v55, v56);
    v62 = objc_msgSend_date(MEMORY[0x277CBEAA8], v58, v59, v60, v61);
    v79 = 138412802;
    v80 = v57;
    v81 = 2112;
    v82 = v62;
    v83 = 2048;
    v84 = v50;
    _os_log_impl(&dword_254743000, v52, OS_LOG_TYPE_DEFAULT, "Interruption start date %@ end date %@ interval %f", &v79, 0x20u);
  }

  v66 = objc_msgSend_numberWithLongLong_(MEMORY[0x277CCABB0], v63, (v50 * 1000.0), v64, v65);
  v71 = objc_msgSend_sharedInstance(MEMORY[0x277D192A8], v67, v68, v69, v70);
  objc_msgSend_isScreenLocked(v71, v72, v73, v74, v75);
  FTAWDLogCallInterruptionEnded();

  objc_msgSend__setInterruptionBegan_(self, v76, 0, v77, v78);
}

- (void)__sendEndCallMetricToViceroyWithReason:(unsigned int)reason andError:(int)error
{
  v5 = *&error;
  v273 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], a2, *&reason, *&error, v4);
  v262 = v5;
  v271 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v7, v5, v8, v9);
  if (qword_27F610710 != -1)
  {
    sub_25477F9E0();
  }

  if (qword_27F610718)
  {
    v14 = objc_msgSend_userInfo(self->_error, v10, v11, v12, v13);
    v18 = objc_msgSend_objectForKey_(v14, v15, qword_27F610718, v16, v17);
    v23 = objc_msgSend_intValue(v18, v19, v20, v21, v22);
  }

  else
  {
    v23 = 0xFFFFFFFFLL;
  }

  if (qword_27F610720 != -1)
  {
    sub_25477F9F4();
  }

  if (qword_27F610728)
  {
    v24 = objc_msgSend_userInfo(self->_error, v10, v11, v12, v13);
    v28 = objc_msgSend_objectForKey_(v24, v25, qword_27F610728, v26, v27);
    v33 = objc_msgSend_intValue(v28, v29, v30, v31, v32);
  }

  else
  {
    v33 = 0xFFFFFFFFLL;
  }

  v34 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v10, v23, v12, v13);
  v38 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v35, v33, v36, v37);
  v47 = objc_msgSend__natType(self, v39, v40, v41, v42);
  if (!v47)
  {
    v47 = objc_msgSend__currentNatType(self, v43, v44, v45, v46);
  }

  v254 = objc_msgSend__remoteNatType(self, v43, v44, v45, v46);
  v48 = MEMORY[0x277CCABB0];
  v53 = objc_msgSend_otherIMHandle(self, v49, v50, v51, v52);
  v58 = objc_msgSend_ID(v53, v54, v55, v56, v57);
  v63 = objc_msgSend__FZBestGuessFZIDType(v58, v59, v60, v61, v62);
  v67 = objc_msgSend_numberWithInteger_(v48, v64, v63, v65, v66);

  v68 = MEMORY[0x277CCABB0];
  isCaller = objc_msgSend_isCaller(self, v69, v70, v71, v72);
  v269 = objc_msgSend_numberWithInt_(v68, v74, isCaller, v75, v76);
  v77 = MEMORY[0x277CCABB0];
  isVideo = objc_msgSend_isVideo(self, v78, v79, v80, v81);
  v86 = objc_msgSend_numberWithBool_(v77, v83, isVideo, v84, v85);
  v91 = objc_msgSend_sharedInstance(MEMORY[0x277D07DD8], v87, v88, v89, v90);
  v92 = MEMORY[0x277CCABB0];
  valid = objc_msgSend_validNetworkEnabled(v91, v93, v94, v95, v96);
  v101 = objc_msgSend_numberWithInt_(v92, v98, valid, v99, v100);
  v102 = MEMORY[0x277CCABB0];
  v107 = objc_msgSend_validNetworkActive(v91, v103, v104, v105, v106);
  value = objc_msgSend_numberWithInt_(v102, v108, v107, v109, v110);
  v111 = MEMORY[0x277CCABB0];
  v264 = v91;
  v116 = objc_msgSend_validNetworkReachable(v91, v112, v113, v114, v115);
  v265 = objc_msgSend_numberWithInt_(v111, v117, v116, v118, v119);
  v124 = objc_msgSend__remoteNetworkConnectionType(self, v120, v121, v122, v123);
  v129 = objc_msgSend__localNetworkConnectionType(self, v125, v126, v127, v128) == 1;
  v250 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v130, v129, v131, v132);
  v256 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v133, v124 == 1, v134, v135);
  v136 = MEMORY[0x277CCABB0];
  v141 = objc_msgSend__usesRelay(self, v137, v138, v139, v140);
  v260 = objc_msgSend_numberWithInt_(v136, v142, v141, v143, v144);
  v145 = MEMORY[0x277CCABB0];
  v150 = objc_msgSend__connectionType(self, v146, v147, v148, v149);
  v248 = objc_msgSend_numberWithInt_(v145, v151, v150, v152, v153);
  v252 = objc_msgSend__relayConnectDuration(self, v154, v155, v156, v157);
  v258 = objc_msgSend__connectDuration(self, v158, v159, v160, v161);
  v244 = objc_msgSend_dataRate(self, v162, v163, v164, v165);
  v166 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v167 = v273;
  v274 = v167;
  if (v167)
  {
    CFDictionarySetValue(v166, @"end-reason", v167);
    v167 = v274;
  }

  v168 = v271;
  if (v168)
  {
    CFDictionarySetValue(v166, @"end-error", v168);
  }

  v169 = v34;
  if (v169)
  {
    CFDictionarySetValue(v166, @"gks-error", v169);
  }

  v170 = v38;
  if (v170)
  {
    CFDictionarySetValue(v166, @"gks-return-code", v170);
  }

  v171 = v86;
  if (v171)
  {
    CFDictionarySetValue(v166, @"video", v171);
  }

  v172 = v47;
  if (v172)
  {
    CFDictionarySetValue(v166, @"nat-type", v172);
  }

  v173 = v254;
  v272 = v173;
  if (v173)
  {
    CFDictionarySetValue(v166, @"remote-nat-type", v173);
    v173 = v272;
  }

  v174 = v67;
  if (v174)
  {
    CFDictionarySetValue(v166, @"remote-type", v174);
  }

  v175 = v269;
  v270 = v175;
  if (v175)
  {
    CFDictionarySetValue(v166, @"outgoing", v175);
    v175 = v270;
  }

  v176 = v101;
  if (v176)
  {
    CFDictionarySetValue(v166, @"network", v176);
  }

  v177 = value;
  valuea = v177;
  if (v177)
  {
    CFDictionarySetValue(v166, @"active", v177);
    v177 = valuea;
  }

  v178 = v265;
  v266 = v178;
  if (v178)
  {
    CFDictionarySetValue(v166, @"reachable", v178);
    v178 = v266;
  }

  v255 = v171;

  v179 = v250;
  if (v179)
  {
    CFDictionarySetValue(v166, @"local-cell", v179);
  }

  v251 = v174;
  v247 = v179;

  v180 = v256;
  if (v180)
  {
    CFDictionarySetValue(v166, @"remote-cell", v180);
  }

  v257 = v170;

  v181 = v260;
  if (v181)
  {
    CFDictionarySetValue(v166, @"relay", v181);
  }

  v261 = v168;

  v182 = v248;
  if (v182)
  {
    CFDictionarySetValue(v166, @"connection-type", v182);
  }

  v249 = v176;

  v183 = v252;
  if (v183)
  {
    CFDictionarySetValue(v166, @"relay-connect-time", v183);
  }

  v253 = v172;

  v184 = v258;
  if (v184)
  {
    CFDictionarySetValue(v166, @"connect-time", v184);
  }

  v189 = objc_msgSend__callDuration(self, v185, v186, v187, v188);
  if (v189)
  {
    CFDictionarySetValue(v166, @"duration", v189);
  }

  v194 = objc_msgSend__frontCameraCaptureTime(self, v190, v191, v192, v193);
  if (v194)
  {
    CFDictionarySetValue(v166, @"frontCapture-time", v194);
  }

  v199 = objc_msgSend__backCameraCaptureTime(self, v195, v196, v197, v198);
  if (v199)
  {
    CFDictionarySetValue(v166, @"backCapture-time", v199);
  }

  v259 = v169;

  v200 = v244;
  if (v200)
  {
    CFDictionarySetValue(v166, @"sessionBitRate", v200);
  }

  v201 = MEMORY[0x277CCABB0];
  v206 = objc_msgSend__networkCheckResult(self, v202, v203, v204, v205);
  v210 = objc_msgSend_numberWithInteger_(v201, v207, v206, v208, v209);
  if (v210)
  {
    CFDictionarySetValue(v166, @"network-check", v210);
  }

  if (v262 == 32001)
  {
    v215 = objc_msgSend__pingTestResult(self, v211, v212, v213, v214);
    v219 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v216, v215, v217, v218);
    if (v219)
    {
      CFDictionarySetValue(v166, @"ping-test", v219);
    }

    if (!v215)
    {
      v220 = objc_msgSend__pingTestResults(self, v211, v212, v213, v214);
      v224 = objc_msgSend_objectForKey_(v220, v221, @"AVPingTestMin", v222, v223);
      v241 = objc_msgSend_objectForKey_(v220, v225, @"AVPingTestAvg", v226, v227);
      v245 = objc_msgSend_objectForKey_(v220, v228, @"AVPingTestMax", v229, v230);
      v263 = v220;
      v243 = objc_msgSend_objectForKey_(v220, v231, @"AVPingTestPacketLoss", v232, v233);
      v234 = v224;
      if (v234)
      {
        CFDictionarySetValue(v166, @"ping-min", v234);
      }

      v235 = v245;
      if (v235)
      {
        CFDictionarySetValue(v166, @"ping-max", v235);
      }

      v246 = v234;
      v242 = v235;

      v236 = v241;
      if (v236)
      {
        CFDictionarySetValue(v166, @"ping-avg", v236);
      }

      v237 = v243;
      if (v237)
      {
        CFDictionarySetValue(v166, @"ping-packetLoss", v237);
      }
    }
  }

  v238 = objc_msgSend_sharedInstance(IMAVInterface, v211, v212, v213, v214);
  objc_msgSend__submitLoggingInformation_forChat_(v238, v239, v166, self, v240);
}

- (void)__sendEndCallMetricToAWDWithReason:(unsigned int)reason andError:(int)error
{
  sub_25477D838(*&reason);
  sub_25477D900(error);
  sub_25477D914(error);
  sub_25477D930(error);
  v6 = sub_25477D944(error);
  v7 = sub_25477DA2C(error);
  v8 = sub_25477DA48(error);
  v9 = sub_25477DA64(error);
  sub_25477D8E8(error);
  v278 = v6;
  v276 = v8;
  v277 = v7;
  v275 = v9;
  if (qword_27F610730 != -1)
  {
    sub_25477FA08();
  }

  if (qword_27F610738)
  {
    v14 = objc_msgSend_userInfo(self->_error, v10, v11, v12, v13);
    v18 = objc_msgSend_objectForKey_(v14, v15, qword_27F610738, v16, v17);
    v23 = objc_msgSend_intValue(v18, v19, v20, v21, v22);
  }

  else
  {
    v23 = 0xFFFFFFFFLL;
  }

  v290 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v10, v23, v12, v13);
  if (qword_27F610740 != -1)
  {
    sub_25477FA1C();
  }

  if (qword_27F610748)
  {
    v28 = objc_msgSend_userInfo(self->_error, v24, v25, v26, v27);
    v32 = objc_msgSend_objectForKey_(v28, v29, qword_27F610748, v30, v31);
    v37 = objc_msgSend_intValue(v32, v33, v34, v35, v36);
  }

  else
  {
    v37 = 0xFFFFFFFFLL;
  }

  v289 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v24, v37, v26, v27);
  v274 = objc_msgSend__remoteNetworkConnectionType(self, v38, v39, v40, v41);
  v273 = objc_msgSend__localNetworkConnectionType(self, v42, v43, v44, v45);
  v54 = objc_msgSend__natType(self, v46, v47, v48, v49);
  if (!v54)
  {
    v54 = objc_msgSend__currentNatType(self, v50, v51, v52, v53);
  }

  v55 = objc_msgSend__remoteNatType(self, v50, v51, v52, v53);
  v288 = objc_msgSend__callDuration(self, v56, v57, v58, v59);
  v287 = objc_msgSend__frontCameraCaptureTime(self, v60, v61, v62, v63);
  v286 = objc_msgSend__backCameraCaptureTime(self, v64, v65, v66, v67);
  v285 = objc_msgSend_dataRate(self, v68, v69, v70, v71);
  v76 = objc_msgSend_unsignedIntValue(v54, v72, v73, v74, v75);
  v77 = sub_25477D778(v76);
  v82 = objc_msgSend_unsignedIntValue(v55, v78, v79, v80, v81);
  v83 = sub_25477D778(v82);
  v284 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v84, v77, v85, v86);

  v283 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v87, v83, v88, v89);

  v94 = objc_msgSend__pingTestResult(self, v90, v91, v92, v93);
  if (v94)
  {
    if (v94 >= 1)
    {
      v99 = sub_254761764(v94);
      if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_254743000, v99, OS_LOG_TYPE_DEFAULT, "[WARN] Ping test failed", buf, 2u);
      }
    }

    v279 = 0;
    v280 = 0;
    v281 = 0;
    v282 = 0;
  }

  else
  {
    v100 = objc_msgSend__pingTestResults(self, v95, v96, v97, v98);
    v282 = objc_msgSend_objectForKey_(v100, v101, @"AVPingTestMin", v102, v103);
    v281 = objc_msgSend_objectForKey_(v100, v104, @"AVPingTestAvg", v105, v106);
    v280 = objc_msgSend_objectForKey_(v100, v107, @"AVPingTestMax", v108, v109);
    v279 = objc_msgSend_objectForKey_(v100, v110, @"AVPingTestPacketLoss", v111, v112);
  }

  v113 = objc_msgSend__networkCheckResult(self, v95, v96, v97, v98);
  v272 = sub_25477DA8C(v113);
  v118 = objc_msgSend_sharedInstance(MEMORY[0x277D07DD8], v114, v115, v116, v117);
  valid = objc_msgSend_validNetworkEnabled(v118, v119, v120, v121, v122);

  v127 = objc_msgSend_sharedInstance(MEMORY[0x277D07DD8], v123, v124, v125, v126);
  v270 = objc_msgSend_validNetworkActive(v127, v128, v129, v130, v131);

  v136 = objc_msgSend_sharedInstance(MEMORY[0x277D07DD8], v132, v133, v134, v135);
  v269 = objc_msgSend_validNetworkReachable(v136, v137, v138, v139, v140);

  v145 = objc_msgSend__connectDuration(self, v141, v142, v143, v144);
  v150 = objc_msgSend__connectionType(self, v146, v147, v148, v149);
  v151 = sub_25477D6C8(v150);
  v156 = objc_msgSend__usesRelay(self, v152, v153, v154, v155);
  v161 = objc_msgSend__relayConnectDuration(self, v157, v158, v159, v160);
  objc_msgSend_isCaller(self, v162, v163, v164, v165);
  objc_msgSend_isVideo(self, v166, v167, v168, v169);
  isVideoInterrupted = objc_msgSend__isVideoInterrupted(self, v170, v171, v172, v173);
  isAudioInterrupted = objc_msgSend__isAudioInterrupted(self, v175, v176, v177, v178);
  v184 = objc_msgSend__localNetworkConnectionType(self, v180, v181, v182, v183);
  if (v184)
  {
    if (v184 == 2)
    {
      v189 = 2;
    }

    else
    {
      v189 = 3;
    }

    v190 = objc_msgSend_sharedInstance(MEMORY[0x277D192E8], v185, v186, v187, v188);
    v194 = objc_msgSend_linkQualityValueForInterfaceType_(v190, v191, v189, v192, v193);
  }

  else
  {
    v194 = 0;
  }

  v195 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v185, v194, v187, v188);
  v267 = objc_msgSend__bustedCallID(self, v196, v197, v198, v199);
  v204 = objc_msgSend_sharedInstance(MEMORY[0x277D192A8], v200, v201, v202, v203);
  LOBYTE(v265) = objc_msgSend_isScreenLocked(v204, v205, v206, v207, v208);
  v263 = v195;
  v264 = v289;
  BYTE2(v261) = 0;
  BYTE1(v261) = isAudioInterrupted;
  LOBYTE(v261) = isVideoInterrupted;
  v260 = v161;
  v259 = v283;
  v258 = v284;
  BYTE4(v256) = v156;
  LODWORD(v256) = v151;
  v255 = __PAIR64__(v273, v274);
  v254 = v145;
  v253 = v290;
  v252 = v285;
  v251 = v286;
  v250 = v287;
  HIDWORD(v248) = v272;
  BYTE2(v248) = v269;
  BYTE1(v248) = v270;
  LOBYTE(v248) = valid;
  v247 = v279;
  v246 = v280;
  v245 = v281;
  v244 = v282;
  v243 = v288;
  v242 = __PAIR64__(v275, v276);
  v241 = __PAIR64__(v277, v278);
  FTAWDLogCallEnded();

  if (IsIMAVChatEndedReasonACallFailure(reason))
  {
    v213 = objc_msgSend_sharedInstance(MEMORY[0x277D192A8], v209, v210, v211, v212, __PAIR64__(v277, v278), __PAIR64__(v275, v276), v288, v282, v281, v280, v279, v248, v287, v286, v285, v290, v145, __PAIR64__(v273, v274), v256, v284, v283, v161, v261, v195, v289, v265);
    LOBYTE(v265) = objc_msgSend_isScreenLocked(v213, v214, v215, v216, v217);
    v263 = v195;
    v264 = v289;
    BYTE2(v261) = 0;
    BYTE1(v261) = isAudioInterrupted;
    LOBYTE(v261) = isVideoInterrupted;
    v260 = v161;
    v259 = v283;
    v258 = v284;
    BYTE4(v256) = v156;
    LODWORD(v256) = v151;
    v255 = __PAIR64__(v273, v274);
    v254 = v145;
    v253 = v290;
    v252 = v285;
    v251 = v286;
    v250 = v287;
    HIDWORD(v248) = v272;
    BYTE2(v248) = v269;
    BYTE1(v248) = v270;
    LOBYTE(v248) = valid;
    v247 = v279;
    v246 = v280;
    v245 = v281;
    v244 = v282;
    v243 = v288;
    v242 = __PAIR64__(v275, v276);
    v241 = __PAIR64__(v277, v278);
    FTAWDLogCallFailed();
  }

  v218 = objc_msgSend_sharedInstance(MEMORY[0x277D19268], v209, v210, v211, v212, v241, v242, v243, v244, v245, v246, v247, v248, v250, v251, v252, v253, v254, v255, v256, v258, v259, v260, v261, v263, v264, v265);
  isInternalInstall = objc_msgSend_isInternalInstall(v218, v219, v220, v221, v222);

  if (isInternalInstall)
  {
    v228 = objc_msgSend_sharedInstance(MEMORY[0x277D192A8], v224, v225, v226, v227);
    LOBYTE(v266) = objc_msgSend_isScreenLocked(v228, v229, v230, v231, v232);
    *(&v262 + 1) = isAudioInterrupted;
    LOBYTE(v262) = isVideoInterrupted;
    BYTE4(v257) = v156;
    LODWORD(v257) = v151;
    HIDWORD(v249) = v272;
    BYTE2(v249) = v269;
    BYTE1(v249) = v270;
    LOBYTE(v249) = valid;
    v233 = FTAWDLogCallEndedViceroy();

    v238 = objc_msgSend_sharedInstance(IMAVInterface, v234, v235, v236, v237, __PAIR64__(v277, v278), __PAIR64__(v275, v276), v288, v282, v281, v280, v279, v249, v287, v286, v285, v290, v145, __PAIR64__(v273, v274), v257, v284, v283, v161, v262, v195, v289, v266);
    objc_msgSend__submitEndCallMetric_forCallID_(v238, v239, v233, v267, v240);
  }
}

- (void)_submitCallEndedLoggingWithReason:(unsigned int)reason andError:(int)error
{
  v7 = dispatch_time(0, 3000000000);
  v8 = dispatch_get_global_queue(-32768, 0);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_25477F518;
  v9[3] = &unk_279783AD8;
  v9[4] = self;
  errorCopy = error;
  reasonCopy = reason;
  dispatch_after(v7, v8, v9);
}

@end