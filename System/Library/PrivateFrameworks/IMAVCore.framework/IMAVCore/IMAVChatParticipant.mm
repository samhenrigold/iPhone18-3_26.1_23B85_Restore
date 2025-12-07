@interface IMAVChatParticipant
- (BOOL)_generateCallInfo:(id)info;
- (BOOL)_processResponseDictionary:(id)dictionary allowSecondConnection:(BOOL)connection;
- (BOOL)hasConnectingSessions;
- (BOOL)hasUnfinishedSessions;
- (BOOL)isLocalParticipant;
- (BOOL)matchesAVConferenceCallID:(int64_t)d;
- (CGRect)_remoteLandscapeContentRect;
- (CGRect)_remotePortraitContentRect;
- (CGRect)contentRectForCameraOrientation:(unsigned int)orientation cameraType:(unsigned int)type;
- (CGSize)_remoteLandscapeOrientation;
- (CGSize)_remotePIPLandscapeOrientation;
- (CGSize)_remotePIPPortraitOrientation;
- (CGSize)_remotePortraitOrientation;
- (CGSize)aspectRatioForCameraOrientation:(unsigned int)orientation cameraType:(unsigned int)type;
- (CGSize)localAspectRatioForCameraOrientation:(unsigned int)orientation cameraType:(unsigned int)type;
- (IMAVChatParticipant)init;
- (id)_callInfoForCallID:(int64_t)d;
- (id)_callInfoForReinitiate;
- (id)_callInfoWithState:(int64_t)state;
- (id)_callInfosWaitingForAcceptAction;
- (id)_callInfosWaitingForResponse;
- (id)_initAs:(id)as invitedBy:(id)by sendingAudio:(BOOL)audio sendingVideo:(BOOL)video usingICE:(BOOL)e toChat:(id)chat inState:(unsigned int)state withError:(int)self0 andReason:(unsigned int)self1 andVCPartyID:(id)self2 account:(id)self3;
- (id)_natType;
- (id)_processIncomingCallProperties:(id)properties;
- (id)_proxyRepresentation;
- (id)callInfoBeingHandedOff;
- (id)description;
- (id)initAs:(id)as invitedBy:(id)by toChat:(id)chat account:(id)account;
- (int64_t)bestCallID;
- (void)_cancelInvitationWithReason:(unsigned int)reason response:(id)response;
- (void)_cleanupOrphanedCallInfos;
- (void)_connectTimeout:(id)timeout;
- (void)_handleIMAVResponse:(unsigned int)response;
- (void)_hangupCallLaterIfReinitiateFailsForCallInfo:(id)info;
- (void)_noteInviteDelivered:(BOOL)delivered;
- (void)_processPropertyUpdate:(id)update;
- (void)_reInitiateWithCallInfo:(id)info;
- (void)_registerCallInfo:(id)info;
- (void)_sendResponse:(unsigned int)response callInfo:(id)info;
- (void)_setConferenceID:(id)d;
- (void)_setState:(unsigned int)state withReason:(unsigned int)reason andError:(int)error;
- (void)_switchToUseNewIMHandle:(id)handle;
- (void)_updateProperties:(id)properties;
- (void)cancelInvitationWithResponse:(unsigned int)response;
- (void)dealloc;
- (void)reinitializeCallForCallID:(unsigned int)d;
- (void)requestIconIfNecessary;
- (void)resetWaitingToConnectTimer;
- (void)sendAVMessage:(unsigned int)message userInfo:(id)info;
- (void)sendInvitation;
- (void)setInFrequencyLevel:(id)level;
- (void)setOutFrequencyLevel:(id)level;
- (void)setState:(unsigned int)state;
- (void)setStateToEndedWithReason:(unsigned int)reason andError:(int)error;
- (void)setVideoBackLayer:(void *)layer;
- (void)setVideoLayer:(void *)layer;
- (void)setWaitingToConnect:(BOOL)connect;
- (void)videoBackLayer;
- (void)videoLayer;
@end

@implementation IMAVChatParticipant

- (IMAVChatParticipant)init
{
  v7 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], a2, v2, v3, v4);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v7, v8, a2, self, @"IMAVChatParticipant.m", 51, @"[IMAVChatParticipant init] should never be called!");

  return 0;
}

- (id)_initAs:(id)as invitedBy:(id)by sendingAudio:(BOOL)audio sendingVideo:(BOOL)video usingICE:(BOOL)e toChat:(id)chat inState:(unsigned int)state withError:(int)self0 andReason:(unsigned int)self1 andVCPartyID:(id)self2 account:(id)self3
{
  asCopy = as;
  byCopy = by;
  chatCopy = chat;
  dCopy = d;
  v65.receiver = self;
  v65.super_class = IMAVChatParticipant;
  v27 = [(IMAVChatParticipant *)&v65 init];
  if (v27)
  {
    if (!asCopy || !byCopy || !chatCopy)
    {
      sub_25477F7EC(a2, v27, v24, v25, v26);
    }

    if (!v27->_participantsCallInfo)
    {
      v28 = objc_alloc_init(MEMORY[0x277CBEB18]);
      participantsCallInfo = v27->_participantsCallInfo;
      v27->_participantsCallInfo = v28;
    }

    objc_storeStrong(&v27->_imHandle, as);
    objc_storeStrong(&v27->_inviter, by);
    objc_msgSend_setAVChat_(v27, v30, chatCopy, v31, v32);
    v37 = objc_msgSend_conferenceID(chatCopy, v33, v34, v35, v36);
    v42 = objc_msgSend_copy(v37, v38, v39, v40, v41);
    conferenceID = v27->_conferenceID;
    v27->_conferenceID = v42;

    objc_msgSend__setScreenOrientation_(v27, v44, 0, v45, v46);
    __asm { FMOV            V0.2D, #-1.0 }

    v27->_remotePortraitOrientation = _Q0;
    v27->_remoteLandscapeOrientation = _Q0;
    v27->_sendingAudio = audio;
    v27->_sendingVideo = video;
    objc_msgSend__setCameraType_(v27, v52, 0, v53, v54);
    objc_msgSend__setCameraOrientation_(v27, v55, 0, v56, v57);
    v27->_isInitiator = asCopy == byCopy;
    objc_msgSend_setVCPartyID_(v27, v58, dCopy, v59, v60);
    v27->_state = state;
    v27->_chatEndedReason = reason;
    inFrequencyLevel = v27->_inFrequencyLevel;
    v27->_inFrequencyLevel = 0;

    outFrequencyLevel = v27->_outFrequencyLevel;
    v27->_outFrequencyLevel = 0;

    v63 = v27;
  }

  return v27;
}

- (void)_registerCallInfo:(id)info
{
  infoCopy = info;
  participantsCallInfo = self->_participantsCallInfo;
  v13 = infoCopy;
  if (!participantsCallInfo)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v9 = self->_participantsCallInfo;
    self->_participantsCallInfo = v8;

    infoCopy = v13;
    participantsCallInfo = self->_participantsCallInfo;
  }

  if ((objc_msgSend_containsObjectIdenticalTo_(participantsCallInfo, infoCopy, infoCopy, v5, v6) & 1) == 0)
  {
    objc_msgSend_addObject_(self->_participantsCallInfo, v10, v13, v11, v12);
  }
}

- (id)callInfoBeingHandedOff
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = self->_participantsCallInfo;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v15, v19, 16);
  if (v10)
  {
    v11 = *v16;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v4);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        if (objc_msgSend_isBeingHandedOff(v13, v6, v7, v8, v9, v15))
        {
          v10 = v13;
          goto LABEL_11;
        }
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v6, &v15, v19, 16);
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  objc_autoreleasePoolPop(v3);

  return v10;
}

- (BOOL)matchesAVConferenceCallID:(int64_t)d
{
  v5 = objc_autoreleasePoolPush();
  if (objc_msgSend_count(self->_participantsCallInfo, v6, v7, v8, v9))
  {
    v13 = objc_msgSend__callInfoForCallID_(self, v10, d, v11, v12);
    v14 = v13 != 0;
  }

  else
  {
    v14 = 0;
  }

  objc_autoreleasePoolPop(v5);
  return v14;
}

- (BOOL)hasUnfinishedSessions
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = self->_participantsCallInfo;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, &v13, v17, 16);
  if (v8)
  {
    v9 = *v14;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v2);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if (objc_msgSend_state(v11, v4, v5, v6, v7, v13) != 4 && objc_msgSend_state(v11, v4, v5, v6, v7))
        {
          LOBYTE(v8) = 1;
          goto LABEL_12;
        }
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v4, &v13, v17, 16);
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v8;
}

- (BOOL)hasConnectingSessions
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = self->_participantsCallInfo;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, &v12, v16, 16);
  if (v8)
  {
    v9 = *v13;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v2);
        }

        if (objc_msgSend_state(*(*(&v12 + 1) + 8 * i), v4, v5, v6, v7, v12) < 3)
        {
          LOBYTE(v8) = 1;
          goto LABEL_11;
        }
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v4, &v12, v16, 16);
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v8;
}

- (int64_t)bestCallID
{
  v43 = *MEMORY[0x277D85DE8];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v2 = self->_participantsCallInfo;
  v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, &v38, v42, 16);
  if (!v4)
  {
    v32 = 0;
    goto LABEL_22;
  }

  v9 = v4;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = *v39;
  do
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v39 != v13)
      {
        objc_enumerationMutation(v2);
      }

      v15 = *(*(&v38 + 1) + 8 * i);
      if ((objc_msgSend_isFinished(v15, v5, v6, v7, v8, v38) & 1) == 0)
      {
        v20 = v15;

        v12 = v20;
      }

      if ((objc_msgSend_isFinished(v15, v16, v17, v18, v19) & 1) == 0 && (objc_msgSend_isBeingHandedOff(v15, v21, v22, v23, v24) & 1) == 0)
      {
        v25 = v15;

        v10 = v25;
      }

      if (objc_msgSend_state(v15, v21, v22, v23, v24) <= 2)
      {
        v30 = v15;

        v11 = v30;
      }

      v31 = objc_msgSend_callID(v15, v26, v27, v28, v29);
    }

    v32 = v31;
    v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v5, &v38, v42, 16);
  }

  while (v9);

  if (v10)
  {
    v32 = objc_msgSend_callID(v10, v33, v34, v35, v36);

    v2 = v10;
LABEL_22:

    return v32;
  }

  if (v11)
  {
    v32 = objc_msgSend_callID(v11, v33, v34, v35, v36);

    v2 = v11;
    goto LABEL_22;
  }

  if (v12)
  {
    v32 = objc_msgSend_callID(v12, v33, v34, v35, v36);
    v2 = v12;
    goto LABEL_22;
  }

  return v32;
}

- (id)_callInfoForCallID:(int64_t)d
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = self->_participantsCallInfo;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v17, v21, 16);
  if (v6)
  {
    v11 = v6;
    v12 = *v18;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v4);
        }

        v14 = *(*(&v17 + 1) + 8 * i);
        if (objc_msgSend_callID(v14, v7, v8, v9, v10, v17) == d)
        {
          v15 = v14;
          goto LABEL_11;
        }
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v7, &v17, v21, 16);
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v15 = 0;
LABEL_11:

  return v15;
}

- (id)initAs:(id)as invitedBy:(id)by toChat:(id)chat account:(id)account
{
  asCopy = as;
  byCopy = by;
  chatCopy = chat;
  accountCopy = account;
  if (objc_msgSend_isLoginIMHandle(asCopy, v14, v15, v16, v17))
  {
    v22 = objc_msgSend_sharedInstance(IMAVController, v18, v19, v20, v21);
    v27 = objc_msgSend_microphoneCapable(v22, v23, v24, v25, v26);

    if (objc_msgSend_isVideo(chatCopy, v28, v29, v30, v31))
    {
      v36 = objc_msgSend_sharedInstance(IMAVController, v32, v33, v34, v35);
      isVideo = objc_msgSend_cameraCapable(v36, v37, v38, v39, v40);
    }

    else
    {
      isVideo = 0;
    }

    hasCapability = 0;
  }

  else if (asCopy == byCopy)
  {
    isVideo = objc_msgSend_isVideo(chatCopy, v18, v19, v20, v21);
    hasCapability = 0;
    v27 = 1;
  }

  else
  {
    v42 = objc_msgSend_capabilities(asCopy, v18, v19, v20, v21);
    v27 = (v42 >> 19) & 1;
    isVideo = objc_msgSend_isVideo(chatCopy, v43, v44, v45, v46) & ((v42 & 0x40000) != 0);
    hasCapability = objc_msgSend_hasCapability_(asCopy, v47, 0x2000000000, v48, v49);
  }

  v51 = objc_msgSend_vcPartyIDForIMHandle_(chatCopy, v32, asCopy, v34, v35);
  v55 = 0;
  inited = objc_msgSend__initAs_invitedBy_sendingAudio_sendingVideo_usingICE_toChat_inState_withError_andReason_andVCPartyID_account_(self, v52, asCopy, byCopy, v27, isVideo, hasCapability, chatCopy, 0, v55, v51, accountCopy);

  return inited;
}

- (id)description
{
  v6 = objc_msgSend_avChat(self, a2, v2, v3, v4);
  isVideo = objc_msgSend_isVideo(v6, v7, v8, v9, v10);
  v12 = @"an audio";
  if (isVideo)
  {
    v12 = @"a video";
  }

  v13 = v12;

  state = self->_state;
  if (state > 2)
  {
    if (state == 3)
    {
      v19 = @"is connecting to";
      goto LABEL_17;
    }

    if (state != 4)
    {
      if (state == 5)
      {

        v19 = @"has left";
        v13 = @"the";
        goto LABEL_17;
      }

      goto LABEL_14;
    }

    v19 = @"is connected to";
  }

  else
  {
    if (!state)
    {

      v19 = @"is not yet involved in";
      v13 = @"a";
      goto LABEL_17;
    }

    if (state != 1)
    {
      if (state == 2)
      {
        v19 = @"is waiting for others to join";
        goto LABEL_17;
      }

LABEL_14:

      v19 = @"is in an invalid state";
      v13 = @"for a";
      goto LABEL_17;
    }

    v19 = @"has been invited to";
  }

LABEL_17:
  v20 = MEMORY[0x277CCACA8];
  v21 = objc_msgSend_imHandle(self, v14, v15, v16, v17);
  v26 = objc_msgSend_vcPartyID(self, v22, v23, v24, v25);
  v30 = objc_msgSend_stringWithFormat_(v20, v27, @"%@ %@ %@ %@ chat (%p)", v28, v29, v21, v19, v13, v26, self);

  return v30;
}

- (void)dealloc
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = sub_254761764(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_254743000, v3, OS_LOG_TYPE_DEFAULT, "participant: %@", buf, 0xCu);
  }

  v8 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v4, v5, v6, v7);
  objc_msgSend_removeObserver_name_object_(v8, v9, self, 0, 0);

  inFrequencyLevel = self->_inFrequencyLevel;
  self->_inFrequencyLevel = 0;

  outFrequencyLevel = self->_outFrequencyLevel;
  self->_outFrequencyLevel = 0;

  participantsCallInfo = self->_participantsCallInfo;
  self->_participantsCallInfo = 0;

  additionalPeers = self->_additionalPeers;
  self->_additionalPeers = 0;

  excludingPushTokens = self->_excludingPushTokens;
  self->_excludingPushTokens = 0;

  properties = self->_properties;
  self->_properties = 0;

  imHandle = self->_imHandle;
  self->_imHandle = 0;

  inviter = self->_inviter;
  self->_inviter = 0;

  objc_msgSend_disconnectFromAVChat(self, v18, v19, v20, v21);
  objc_msgSend_setVCPartyID_(self, v22, 0, v23, v24);
  v25.receiver = self;
  v25.super_class = IMAVChatParticipant;
  [(IMAVChatParticipant *)&v25 dealloc];
}

- (BOOL)isLocalParticipant
{
  selfCopy = self;
  v6 = objc_msgSend_avChat(self, a2, v2, v3, v4);
  v11 = objc_msgSend_localParticipant(v6, v7, v8, v9, v10);
  LOBYTE(selfCopy) = v11 == selfCopy;

  return selfCopy;
}

- (void)requestIconIfNecessary
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = sub_254761764(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_254743000, v3, OS_LOG_TYPE_DEFAULT, "participant: %@", &v16, 0xCu);
  }

  v8 = objc_msgSend_imHandle(self, v4, v5, v6, v7);
  if ((objc_msgSend_isBuddy(v8, v9, v10, v11, v12) & 1) == 0)
  {
    objc_msgSend_requestValueOfProperty_(v8, v13, *MEMORY[0x277D193B8], v14, v15);
  }
}

- (id)_callInfoWithState:(int64_t)state
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = self->_participantsCallInfo;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v17, v21, 16);
  if (v6)
  {
    v11 = v6;
    v12 = *v18;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v4);
        }

        v14 = *(*(&v17 + 1) + 8 * i);
        if (objc_msgSend_state(v14, v7, v8, v9, v10, v17) == state)
        {
          v15 = v14;
          goto LABEL_11;
        }
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v7, &v17, v21, 16);
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v15 = 0;
LABEL_11:

  return v15;
}

- (id)_callInfosWaitingForAcceptAction
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  participantsCallInfo = self->_participantsCallInfo;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_25475182C;
  v10[3] = &unk_2797832B8;
  v5 = v3;
  v11 = v5;
  objc_msgSend_enumerateObjectsUsingBlock_(participantsCallInfo, v6, v10, v7, v8);

  return v5;
}

- (id)_callInfosWaitingForResponse
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  participantsCallInfo = self->_participantsCallInfo;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_254751960;
  v10[3] = &unk_2797832B8;
  v5 = v3;
  v11 = v5;
  objc_msgSend_enumerateObjectsUsingBlock_(participantsCallInfo, v6, v10, v7, v8);

  return v5;
}

- (id)_processIncomingCallProperties:(id)properties
{
  v67 = *MEMORY[0x277D85DE8];
  propertiesCopy = properties;
  v5 = sub_254761764(propertiesCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v65 = 138412290;
    v66 = propertiesCopy;
    _os_log_impl(&dword_254743000, v5, OS_LOG_TYPE_DEFAULT, "_processIncomingCallProperties: %@", &v65, 0xCu);
  }

  v6 = objc_alloc_init(IMAVChatParticipantCallInfo);
  v10 = objc_msgSend_objectForKey_(propertiesCopy, v7, *MEMORY[0x277D194F0], v8, v9);
  objc_msgSend_setRemoteICEData_(v6, v11, v10, v12, v13);

  v17 = objc_msgSend_objectForKey_(propertiesCopy, v14, *MEMORY[0x277D19510], v15, v16);
  objc_msgSend_setRemoteNATType_(v6, v18, v17, v19, v20);

  v24 = objc_msgSend_objectForKey_(propertiesCopy, v21, *MEMORY[0x277D19508], v22, v23);
  objc_msgSend_setRemoteNATIP_(v6, v25, v24, v26, v27);

  v31 = objc_msgSend_objectForKey_(propertiesCopy, v28, *MEMORY[0x277D194D0], v29, v30);
  objc_msgSend_setPeerCN_(v6, v32, v31, v33, v34);

  v38 = objc_msgSend_objectForKey_(propertiesCopy, v35, *MEMORY[0x277D19560], v36, v37);
  objc_msgSend_setRemoteSKEData_(v6, v39, v38, v40, v41);

  v45 = objc_msgSend_objectForKey_(propertiesCopy, v42, *MEMORY[0x277D19540], v43, v44);
  objc_msgSend_setPeerProtocolVersion_(v6, v46, v45, v47, v48);

  objc_msgSend__registerCallInfo_(self, v49, v6, v50, v51);
  v55 = objc_msgSend_objectForKey_(propertiesCopy, v52, *MEMORY[0x277D194E8], v53, v54);
  v60 = objc_msgSend_BOOLValue(v55, v56, v57, v58, v59);
  objc_msgSend_setHasReinitiateCapability_(self, v61, v60, v62, v63);

  return v6;
}

- (BOOL)_processResponseDictionary:(id)dictionary allowSecondConnection:(BOOL)connection
{
  connectionCopy = connection;
  v201 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v7 = sub_254761764(dictionaryCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy3 = dictionaryCopy;
    _os_log_impl(&dword_254743000, v7, OS_LOG_TYPE_DEFAULT, "_processResponseDictionary: %@", buf, 0xCu);
  }

  v14 = objc_msgSend_objectForKey_(dictionaryCopy, v8, *MEMORY[0x277D19558], v9, v10);
  if (v14)
  {
    v15 = objc_msgSend_dictionaryWithPlistData_(MEMORY[0x277CBEAC0], v11, v14, v12, v13);
    v20 = objc_msgSend__callInfosWaitingForResponse(self, v16, v17, v18, v19);
    v25 = objc_msgSend___imFirstObject(v20, v21, v22, v23, v24);

    if (!v25)
    {
      v27 = sub_254761764(v26);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v32 = objc_msgSend__participantsCallInfo(self, v28, v29, v30, v31);
        *buf = 138412546;
        selfCopy3 = self;
        v199 = 2112;
        selfCopy2 = v32;
        _os_log_impl(&dword_254743000, v27, OS_LOG_TYPE_DEFAULT, "[WARN] *** No call info found for participant: %@  (All: %@)", buf, 0x16u);
      }
    }

    v33 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v34 = *MEMORY[0x277D19570];
    v38 = objc_msgSend_objectForKey_(v15, v35, *MEMORY[0x277D19570], v36, v37);
    if (v38)
    {
      CFDictionarySetValue(v33, v34, v38);
    }

    v42 = objc_msgSend_objectForKey_(v15, v39, *MEMORY[0x277D194D0], v40, v41);
    objc_msgSend_setPeerCN_(v25, v43, v42, v44, v45);

    v49 = objc_msgSend_objectForKey_(v15, v46, *MEMORY[0x277D194F0], v47, v48);
    objc_msgSend_setRemoteICEData_(v25, v50, v49, v51, v52);

    v56 = objc_msgSend_objectForKey_(v15, v53, *MEMORY[0x277D19510], v54, v55);
    objc_msgSend_setRemoteNATType_(v25, v57, v56, v58, v59);

    v63 = objc_msgSend_objectForKey_(v15, v60, *MEMORY[0x277D19508], v61, v62);
    objc_msgSend_setRemoteNATIP_(v25, v64, v63, v65, v66);

    v70 = objc_msgSend_objectForKey_(v15, v67, *MEMORY[0x277D194F8], v68, v69);
    objc_msgSend_setRelayInitiate_(v25, v71, v70, v72, v73);

    v77 = objc_msgSend_objectForKey_(v15, v74, *MEMORY[0x277D19560], v75, v76);
    objc_msgSend_setRemoteSKEData_(v25, v78, v77, v79, v80);

    v84 = objc_msgSend_objectForKey_(v15, v81, *MEMORY[0x277D19540], v82, v83);
    objc_msgSend_setPeerProtocolVersion_(v25, v85, v84, v86, v87);

    objc_msgSend_setState_(v25, v88, 1, v89, v90);
    if (objc_msgSend_count(v33, v91, v92, v93, v94))
    {
      objc_msgSend_setProperties_(self, v95, v33, v96, v97);
    }

    v98 = objc_msgSend_objectForKey_(dictionaryCopy, v95, *MEMORY[0x277D19550], v96, v97);
    v103 = objc_msgSend_intValue(v98, v99, v100, v101, v102);

    v108 = objc_msgSend_state(self, v104, v105, v106, v107);
    v112 = objc_msgSend_objectForKey_(v15, v109, *MEMORY[0x277D194E8], v110, v111);
    v117 = objc_msgSend_BOOLValue(v112, v113, v114, v115, v116);
    objc_msgSend_setHasReinitiateCapability_(self, v118, v117, v119, v120);

    v122 = sub_254761764(v121);
    if (os_log_type_enabled(v122, OS_LOG_TYPE_DEFAULT))
    {
      _NSStringDescriptionForIMAVResponse(v103);
      v196 = v14;
      v123 = dictionaryCopy;
      v124 = v33;
      v126 = v125 = connectionCopy;
      *buf = 138412546;
      selfCopy3 = v126;
      v199 = 2112;
      selfCopy2 = self;
      _os_log_impl(&dword_254743000, v122, OS_LOG_TYPE_DEFAULT, "Handling response: %@ from participant: %@", buf, 0x16u);

      connectionCopy = v125;
      v33 = v124;
      dictionaryCopy = v123;
      v14 = v196;
    }

    v130 = objc_msgSend__handleIMAVResponse_(self, v127, v103, v128, v129);
    if (!v103)
    {
      if (v108 < 3 || connectionCopy)
      {
        if (v108 >= 3 && connectionCopy)
        {
          v136 = objc_msgSend__callInfoWithState_(self, v131, 3, v133, v134);
          v141 = v136;
          if (v136)
          {
            objc_msgSend_setIsBeingHandedOff_(v136, v137, 1, v139, v140);
            objc_msgSend_setIsReinitiate_(v25, v142, 1, v143, v144);
          }

          v145 = objc_msgSend_sharedInstance(IMAVInterface, v137, v138, v139, v140);
          v150 = objc_msgSend_avChat(self, v146, v147, v148, v149);
          v155 = objc_msgSend_callID(v141, v151, v152, v153, v154);
          objc_msgSend_endAVConferenceWithChat_callID_(v145, v156, v150, v155, v157);

          v159 = sub_254761764(v158);
          if (os_log_type_enabled(v159, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            selfCopy3 = v141;
            _os_log_impl(&dword_254743000, v159, OS_LOG_TYPE_DEFAULT, "Officially stopping the call we're handing off from %@", buf, 0xCu);
          }

          v164 = objc_msgSend_avChat(self, v160, v161, v162, v163);
          v169 = objc_msgSend_vcPartyID(self, v165, v166, v167, v168);
          objc_msgSend_conferencePersonWithID_mediaDidStall_(v164, v170, v169, 1, v171);

          v176 = objc_msgSend_avChat(self, v172, v173, v174, v175);
          objc_msgSend__setIsAudioInterrupted_(v176, v177, 1, v178, v179);

          v184 = objc_msgSend_avChat(self, v180, v181, v182, v183);
          objc_msgSend__setIsVideoInterrupted_(v184, v185, 1, v186, v187);
        }

        v135 = objc_msgSend_sharedInstance(IMAVInterface, v131, v132, v133, v134);
        v192 = objc_msgSend_avChat(self, v188, v189, v190, v191);
        objc_msgSend_avChat_prepareConnectionWithCallInfo_(v135, v193, v192, v25, v194);
      }

      else
      {
        v135 = sub_254761764(v130);
        if (os_log_type_enabled(v135, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          selfCopy3 = self;
          _os_log_impl(&dword_254743000, v135, OS_LOG_TYPE_DEFAULT, "Received accept for participant (%@) who was already connecting, ignoring this", buf, 0xCu);
        }
      }
    }
  }

  return v14 != 0;
}

- (BOOL)_generateCallInfo:(id)info
{
  v46 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v5 = sub_254761764(infoCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v42 = 138412546;
    selfCopy = self;
    v44 = 2112;
    selfCopy2 = infoCopy;
    _os_log_impl(&dword_254743000, v5, OS_LOG_TYPE_DEFAULT, "getLocalICEData: %@ callInfo: %@", &v42, 0x16u);
  }

  v10 = objc_msgSend_sharedInstance(IMAVInterface, v6, v7, v8, v9);
  v15 = objc_msgSend_avChat(self, v11, v12, v13, v14);
  v20 = objc_msgSend_ID(self->_imHandle, v16, v17, v18, v19);
  v25 = objc_msgSend_service(self->_imHandle, v21, v22, v23, v24);
  v27 = objc_msgSend_avChat_generateCallInfoForID_service_usingRelay_callInfo_(v10, v26, v15, v20, v25, 0, infoCopy);

  v29 = sub_254761764(v28);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v34 = objc_msgSend_localICEData(infoCopy, v30, v31, v32, v33);
    v42 = 138412546;
    selfCopy = v34;
    v44 = 2112;
    selfCopy2 = self;
    _os_log_impl(&dword_254743000, v29, OS_LOG_TYPE_DEFAULT, "    result: %@ participant: %@", &v42, 0x16u);
  }

  v39 = objc_msgSend_avChat(self, v35, v36, v37, v38);
  objc_msgSend__postNotificationName_participant_userInfo_(v39, v40, @"__kIMAVChatParticipantCallInfoChangedNotification", self, 0);

  return v27;
}

- (id)_natType
{
  v5 = objc_msgSend_properties(self, a2, v2, v3, v4);
  v6 = *MEMORY[0x277D19510];
  v10 = objc_msgSend_objectForKey_(v5, v7, *MEMORY[0x277D19510], v8, v9);

  if (v10)
  {
    v14 = objc_msgSend_objectForKey_(v5, v11, v6, v12, v13);
  }

  else
  {
    v18 = objc_msgSend_objectForKey_(v5, v11, *MEMORY[0x277D19558], v12, v13);
    if (v18)
    {
      v19 = objc_msgSend_dictionaryWithPlistData_(MEMORY[0x277CBEAC0], v15, v18, v16, v17);
      v14 = objc_msgSend_objectForKey_(v19, v20, v6, v21, v22);
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
}

- (void)_handleIMAVResponse:(unsigned int)response
{
  if (response <= 3)
  {
    if (response)
    {
      if (response == 1)
      {
        v27 = sub_254761764(self);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *v33 = 0;
          _os_log_impl(&dword_254743000, v27, OS_LOG_TYPE_DEFAULT, "Remote user has Declined", v33, 2u);
        }

        objc_msgSend_setStateToEndedWithReason_andError_(self, v28, 5, 0, v29);
      }

      else
      {
        if (response != 2)
        {
LABEL_20:

          objc_msgSend_setStateToEndedWithReason_andError_(self, a2, 5, 0xFFFFFFFFLL, v3);
          return;
        }

        v8 = sub_254761764(self);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_254743000, v8, OS_LOG_TYPE_DEFAULT, "Remote user is busy", buf, 2u);
        }

        objc_msgSend_setStateToEndedWithReason_andError_(self, v9, 3, 0, v10);
      }
    }

    else
    {
      v11 = sub_254761764(self);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v36 = 0;
        _os_log_impl(&dword_254743000, v11, OS_LOG_TYPE_DEFAULT, "Remote user accepted", v36, 2u);
      }

      objc_msgSend_setState_(self, v12, 3, v13, v14);
    }
  }

  else
  {
    if (response <= 6)
    {
      if (response == 4)
      {
        v5 = sub_254761764(self);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          *v32 = 0;
          v6 = "Remote user doesn't have a good network";
          v7 = v32;
          goto LABEL_25;
        }

        goto LABEL_26;
      }

      if (response == 5)
      {
        v5 = sub_254761764(self);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          v31 = 0;
          v6 = "Remote user has no wifi";
          v7 = &v31;
LABEL_25:
          _os_log_impl(&dword_254743000, v5, OS_LOG_TYPE_DEFAULT, v6, v7, 2u);
          goto LABEL_26;
        }

        goto LABEL_26;
      }

      goto LABEL_20;
    }

    if (response != 7)
    {
      if (response == 11)
      {
        v5 = sub_254761764(self);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          v30 = 0;
          v6 = "Remote user filtered the call";
          v7 = &v30;
          goto LABEL_25;
        }

LABEL_26:

        v19 = objc_msgSend_avChat(self, v15, v16, v17, v18);
        objc_msgSend__reduceInvitationTimeoutTime(v19, v20, v21, v22, v23);

        return;
      }

      goto LABEL_20;
    }

    v24 = sub_254761764(self);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *v34 = 0;
      _os_log_impl(&dword_254743000, v24, OS_LOG_TYPE_DEFAULT, "Remote user has missed the call", v34, 2u);
    }

    objc_msgSend_setStateToEndedWithReason_andError_(self, v25, 22, 0, v26);
  }
}

- (void)_noteInviteDelivered:(BOOL)delivered
{
  v102 = *MEMORY[0x277D85DE8];
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v5 = self->_participantsCallInfo;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v95, v101, 16);
  if (v7)
  {
    v12 = v7;
    v13 = *v96;
LABEL_3:
    v14 = 0;
    while (1)
    {
      if (*v96 != v13)
      {
        objc_enumerationMutation(v5);
      }

      v15 = *(*(&v95 + 1) + 8 * v14);
      if (objc_msgSend_state(v15, v8, v9, v10, v11, v95) <= 2)
      {
        if (objc_msgSend_inviteNeedsDelivery(v15, v8, v9, v10, v11))
        {
          break;
        }
      }

      if (v12 == ++v14)
      {
        v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v95, v101, 16);
        if (v12)
        {
          goto LABEL_3;
        }

        goto LABEL_17;
      }
    }

    objc_msgSend_setInviteNeedsDelivery_(v15, v8, 0, v10, v11);
    if (delivered)
    {

      goto LABEL_18;
    }

    isReinitiate = objc_msgSend_isReinitiate(v15, v16, v17, v18, v19);
    if (isReinitiate)
    {
      v25 = sub_254761764(isReinitiate);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v100 = v15;
        _os_log_impl(&dword_254743000, v25, OS_LOG_TYPE_DEFAULT, "Ending call info %@ since the re-initiate failed", buf, 0xCu);
      }

      objc_msgSend_setState_(v15, v26, 4, v27, v28);
      v33 = objc_msgSend_sharedInstance(IMAVInterface, v29, v30, v31, v32);
      v38 = objc_msgSend_avChat(self, v34, v35, v36, v37);
      v43 = objc_msgSend_callID(v15, v39, v40, v41, v42);
      objc_msgSend_endAVConferenceWithChat_callID_(v33, v44, v38, v43, v45);
    }
  }

LABEL_17:

  if (delivered)
  {
LABEL_18:
    if (objc_msgSend__inviteDelivered(self, v20, v21, v22, v23, v95))
    {
      return;
    }

    v50 = objc_msgSend_avChat(self, v46, v47, v48, v49);
    v55 = objc_msgSend_localParticipant(v50, v51, v52, v53, v54);
    if (objc_msgSend_isInitiator(v55, v56, v57, v58, v59))
    {
      v64 = objc_msgSend_state(self, v60, v61, v62, v63);

      if (v64 > 3)
      {
        return;
      }

      v69 = objc_msgSend_avChat(self, v65, v66, v67, v68);
      objc_msgSend__postNotificationName_participant_userInfo_(v69, v70, @"__kIMAVChatParticipantInvitationDeliveredNotification", self, 0);

      v75 = objc_msgSend_avChat(self, v71, v72, v73, v74);
      v80 = objc_msgSend__timings(v75, v76, v77, v78, v79);
      objc_msgSend_stopTimingForKey_(v80, v81, @"invitation-delivery-time", v82, v83);

      objc_msgSend__setInviteDelivered_(self, v84, 1, v85, v86);
      v50 = objc_msgSend_sharedInstance(IMAVCallManager, v87, v88, v89, v90);
      objc_msgSend__sendProxyUpdate(v50, v91, v92, v93, v94);
    }

    else
    {
    }
  }
}

- (void)_cleanupOrphanedCallInfos
{
  v48 = *MEMORY[0x277D85DE8];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v6 = objc_msgSend__participantsCallInfo(self, a2, v2, v3, v4);
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v41, v47, 16);
  if (v8)
  {
    v14 = v8;
    v15 = *v42;
    *&v13 = 138412290;
    v40 = v13;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v42 != v15)
        {
          objc_enumerationMutation(v6);
        }

        v17 = *(*(&v41 + 1) + 8 * i);
        v18 = objc_msgSend_state(v17, v9, v10, v11, v12, v40);
        if (v18 <= 1)
        {
          v19 = sub_254761764(v18);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v40;
            v46 = v17;
            _os_log_impl(&dword_254743000, v19, OS_LOG_TYPE_DEFAULT, "Cleaning up call info because it has not started connecting: %@", buf, 0xCu);
          }

          objc_msgSend_setState_(v17, v20, 4, v21, v22);
          v27 = objc_msgSend_sharedInstance(IMAVInterface, v23, v24, v25, v26);
          v32 = objc_msgSend_avChat(self, v28, v29, v30, v31);
          v37 = objc_msgSend_callID(v17, v33, v34, v35, v36);
          objc_msgSend_endAVConferenceWithChat_callID_(v27, v38, v32, v37, v39);
        }
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v41, v47, 16);
    }

    while (v14);
  }
}

- (void)_hangupCallLaterIfReinitiateFailsForCallInfo:(id)info
{
  infoCopy = info;
  v3 = infoCopy;
  im_dispatch_after();
}

- (id)_callInfoForReinitiate
{
  v2 = objc_alloc_init(IMAVChatParticipantCallInfo);
  objc_msgSend_setIsReinitiate_(v2, v3, 1, v4, v5);
  objc_msgSend_setInviteNeedsDelivery_(v2, v6, 1, v7, v8);

  return v2;
}

- (void)reinitializeCallForCallID:(unsigned int)d
{
  v6 = objc_msgSend__callInfoForCallID_(self, a2, d, v3, v4);
  if ((objc_msgSend_isBeingHandedOff(v6, v7, v8, v9, v10) & 1) == 0 && (objc_msgSend_isFinished(v6, v11, v12, v13, v14) & 1) == 0 && objc_msgSend_state(v6, v15, v16, v17, v18) == 3)
  {
    v19 = MEMORY[0x259C18900](@"com.apple.conference", @"kDisableReInitiate");

    if (!v19)
    {
      if ((objc_msgSend_isLocalParticipant(self, v20, v21, v22, v23) & 1) == 0 && (objc_msgSend_hasConnectingSessions(self, v24, v25, v26, v27) & 1) == 0 && objc_msgSend_hasReinitiateCapability(self, v24, v25, v26, v27))
      {
        objc_msgSend_setIsBeingHandedOff_(v6, v24, 1, v26, v27);
        v32 = objc_msgSend__callInfoForReinitiate(self, v28, v29, v30, v31);
        objc_msgSend__registerCallInfo_(self, v33, v32, v34, v35);
        objc_msgSend__reInitiateWithCallInfo_(self, v36, v32, v37, v38);
        objc_msgSend__hangupCallLaterIfReinitiateFailsForCallInfo_(self, v39, v32, v40, v41);
      }

      hasReinitiateCapability = objc_msgSend_hasReinitiateCapability(self, v24, v25, v26, v27);
      if ((hasReinitiateCapability & 1) == 0)
      {
        v43 = sub_254761764(hasReinitiateCapability);
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          *v44 = 0;
          _os_log_impl(&dword_254743000, v43, OS_LOG_TYPE_DEFAULT, " We don't have re-initiate capability...", v44, 2u);
        }
      }
    }
  }
}

- (void)setState:(unsigned int)state
{
  v29 = *MEMORY[0x277D85DE8];
  if (self->_state == state)
  {
    return;
  }

  v3 = *&state;
  v5 = sub_254761764(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = _NSStringDescriptionForIMAVChatParticipantState(v3);
    v7 = _NSStringDescriptionForIMAVChatParticipantState(self->_state);
    *v27 = 138412802;
    *&v27[4] = self;
    *&v27[12] = 2112;
    *&v27[14] = v6;
    *&v27[22] = 2112;
    v28 = v7;
    _os_log_impl(&dword_254743000, v5, OS_LOG_TYPE_DEFAULT, "participant: %@   state: %@   oldState: %@", v27, 0x20u);
  }

  state = self->_state;
  if (state != 5)
  {
    if (v3 > 2)
    {
      switch(v3)
      {
        case 3:
          if (state - 1 >= 2)
          {
            v15 = sub_254761764(v8);
            if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_44;
            }

            v17 = _NSStringDescriptionForIMAVChatParticipantState(self->_state);
            v18 = _NSStringDescriptionForIMAVChatParticipantState(3u);
            *v27 = 138412546;
            *&v27[4] = v17;
            *&v27[12] = 2112;
            *&v27[14] = v18;
            goto LABEL_25;
          }

          break;
        case 4:
          if (state != 3)
          {
            v15 = sub_254761764(v8);
            if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_44;
            }

            v17 = _NSStringDescriptionForIMAVChatParticipantState(self->_state);
            v18 = _NSStringDescriptionForIMAVChatParticipantState(4u);
            *v27 = 138412546;
            *&v27[4] = v17;
            *&v27[12] = 2112;
            *&v27[14] = v18;
LABEL_25:
            _os_log_impl(&dword_254743000, v15, OS_LOG_TYPE_DEFAULT, "[WARN] IMAVChatParticipant: invalid state transition:  from state (%@) to state (%@)!", v27, 0x16u);

            goto LABEL_35;
          }

          break;
        case 5:
          v15 = sub_254761764(v8);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *v27 = 0;
            v16 = "[WARN] IMAVChatParticipant: do not use setState:IMAVChatStateEnded.  Use setStateToEndedWithReason:andError: instead.";
LABEL_43:
            _os_log_impl(&dword_254743000, v15, OS_LOG_TYPE_DEFAULT, v16, v27, 2u);
            goto LABEL_44;
          }

          goto LABEL_44;
        default:
          goto LABEL_33;
      }

LABEL_45:
      objc_msgSend__setState_withReason_andError_(self, v9, v3, 0, 0, *v27, *&v27[8]);
      return;
    }

    if (v3 == 1)
    {
      if (state)
      {
        v19 = sub_254761764(v8);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = _NSStringDescriptionForIMAVChatParticipantState(self->_state);
          v21 = _NSStringDescriptionForIMAVChatParticipantState(1u);
          *v27 = 138412546;
          *&v27[4] = v20;
          *&v27[12] = 2112;
          *&v27[14] = v21;
          _os_log_impl(&dword_254743000, v19, OS_LOG_TYPE_DEFAULT, "[WARN] IMAVChatParticipant: invalid state transition:  from state (%@) to state (%@)!", v27, 0x16u);
        }
      }

      isInitiator = objc_msgSend_isInitiator(self, v9, v10, v11, v12);
      if (!isInitiator)
      {
        goto LABEL_45;
      }

      v15 = sub_254761764(isInitiator);
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_44;
      }

      *v27 = 0;
      v16 = "[WARN] IMAVChatParticipant: the initiator of a chat should never be invited!";
      goto LABEL_43;
    }

    if (v3 != 2)
    {
LABEL_33:
      v15 = sub_254761764(v8);
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_44;
      }

      v17 = _NSStringDescriptionForIMAVChatParticipantState(v3);
      *v27 = 138412290;
      *&v27[4] = v17;
      _os_log_impl(&dword_254743000, v15, OS_LOG_TYPE_DEFAULT, "[WARN] IMAVChatParticipant: invalid state (%@)", v27, 0xCu);
LABEL_35:

      goto LABEL_44;
    }

    if (state - 3 >= 2)
    {
      if (!state)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v8 = objc_msgSend_isInitiator(self, v9, v10, v11, v12);
      if (v8)
      {
        goto LABEL_40;
      }
    }

    v23 = sub_254761764(v8);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = _NSStringDescriptionForIMAVChatParticipantState(self->_state);
      v25 = _NSStringDescriptionForIMAVChatParticipantState(2u);
      *v27 = 138412546;
      *&v27[4] = v24;
      *&v27[12] = 2112;
      *&v27[14] = v25;
      _os_log_impl(&dword_254743000, v23, OS_LOG_TYPE_DEFAULT, "[WARN] IMAVChatParticipant: invalid state transition:  from state (%@) to state (%@)!", v27, 0x16u);
    }

LABEL_40:
    v26 = objc_msgSend_isInitiator(self, v9, v10, v11, v12);
    if ((v26 & 1) == 0)
    {
      v15 = sub_254761764(v26);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *v27 = 0;
        v16 = "[WARN] IMAVChatParticipant: only the initiator of a chat should ever be waiting!";
        goto LABEL_43;
      }

LABEL_44:

      goto LABEL_45;
    }

    goto LABEL_45;
  }

  v14 = sub_254761764(v8);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *v27 = 0;
    _os_log_impl(&dword_254743000, v14, OS_LOG_TYPE_DEFAULT, "[WARN] IMAVChatParticipant: invalid state transition: cannot transition out of end state!", v27, 2u);
  }
}

- (void)setStateToEndedWithReason:(unsigned int)reason andError:(int)error
{
  state = self->_state;
  if (state != 5)
  {
    v12 = v4;
    v13 = v5;
    v7 = *&error;
    v8 = *&reason;
    if (!state)
    {
      v10 = sub_254761764(self);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&dword_254743000, v10, OS_LOG_TYPE_DEFAULT, "[WARN] IMAVChatParticipant: Invalid state transition: from zero state to end state.", v11, 2u);
      }
    }

    objc_msgSend__setState_withReason_andError_(self, a2, 5, v8, v7);
  }
}

- (void)_setState:(unsigned int)state withReason:(unsigned int)reason andError:(int)error
{
  v5 = *&state;
  state = self->_state;
  self->_state = state;
  self->_chatEndedReason = reason;
  v8 = objc_msgSend_account(self->_imHandle, a2, *&state, *&reason, *&error);
  v13 = objc_msgSend_arrayOfAllIMHandles(v8, v9, v10, v11, v12);
  v17 = objc_msgSend_indexOfObjectIdenticalTo_(v13, v14, self->_imHandle, v15, v16);

  if (v5 == 5 && v17 == 0x7FFFFFFFFFFFFFFFLL)
  {
    objc_msgSend_setCapabilities_(self->_imHandle, v18, 0, v20, v21);
    objc_msgSend_setPersonStatus_(self->_imHandle, v22, 0, v23, v24);
  }

  v26 = objc_msgSend_avChat(self, v18, v19, v20, v21);
  objc_msgSend_participant_changedFromState_toState_(v26, v25, self, state, v5);
}

- (void)_processPropertyUpdate:(id)update
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_objectForKey_(update, a2, *MEMORY[0x277D19528], v3, v4);
  v7 = sub_254761764(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 138412290;
    selfCopy = v6;
    _os_log_impl(&dword_254743000, v7, OS_LOG_TYPE_DEFAULT, "kFZVCPropertyPeerMayRequireCTBreak: %@", &v22, 0xCu);
  }

  v12 = objc_msgSend_BOOLValue(v6, v8, v9, v10, v11);
  if (v12)
  {
    v13 = sub_254761764(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_254743000, v13, OS_LOG_TYPE_DEFAULT, "%@ may require break before make!", &v22, 0xCu);
    }

    v18 = objc_msgSend_avChat(self, v14, v15, v16, v17);
    objc_msgSend_setMayRequireBreakBeforeMake_(v18, v19, 1, v20, v21);
  }
}

- (void)_updateProperties:(id)properties
{
  propertiesCopy = properties;
  if (objc_msgSend_count(propertiesCopy, v4, v5, v6, v7))
  {
    v12 = objc_msgSend_properties(self, v8, v9, v10, v11);
    if (!v12 || (v17 = v12, objc_msgSend_properties(self, v13, v14, v15, v16), v18 = objc_claimAutoreleasedReturnValue(), isEqualToDictionary = objc_msgSend_isEqualToDictionary_(v18, v19, propertiesCopy, v20, v21), v18, v17, (isEqualToDictionary & 1) == 0))
    {
      v23 = objc_msgSend_properties(self, v13, v14, v15, v16);
      v28 = objc_msgSend_mutableCopy(v23, v24, v25, v26, v27);

      objc_msgSend_addEntriesFromDictionary_(v28, v29, propertiesCopy, v30, v31);
      objc_msgSend_setProperties_(self, v32, v28, v33, v34);
      objc_msgSend__processPropertyUpdate_(self, v35, propertiesCopy, v36, v37);
    }
  }
}

- (void)_setConferenceID:(id)d
{
  if (self->_conferenceID != d)
  {
    v7 = objc_msgSend_copy(d, a2, d, v3, v4);
    conferenceID = self->_conferenceID;
    self->_conferenceID = v7;

    MEMORY[0x2821F96F8](v7, conferenceID);
  }
}

- (void)setInFrequencyLevel:(id)level
{
  levelCopy = level;
  p_inFrequencyLevel = &self->_inFrequencyLevel;
  if (self->_inFrequencyLevel != levelCopy)
  {
    v14 = levelCopy;
    objc_storeStrong(p_inFrequencyLevel, level);
    v11 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v7, v8, v9, v10);
    objc_msgSend___mainThreadPostNotificationName_object_(v11, v12, @"__kIMAVChatParticipantInFrequencyChangedNotification", self, v13);

    levelCopy = v14;
  }

  MEMORY[0x2821F96F8](p_inFrequencyLevel, levelCopy);
}

- (void)setOutFrequencyLevel:(id)level
{
  levelCopy = level;
  p_outFrequencyLevel = &self->_outFrequencyLevel;
  if (self->_outFrequencyLevel != levelCopy)
  {
    v14 = levelCopy;
    objc_storeStrong(p_outFrequencyLevel, level);
    v11 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v7, v8, v9, v10);
    objc_msgSend___mainThreadPostNotificationName_object_(v11, v12, @"__kIMAVChatParticipantOutFrequencyChangedNotification", self, v13);

    levelCopy = v14;
  }

  MEMORY[0x2821F96F8](p_outFrequencyLevel, levelCopy);
}

- (void)_switchToUseNewIMHandle:(id)handle
{
  handleCopy = handle;
  if (handleCopy)
  {
    imHandle = self->_imHandle;
    p_imHandle = &self->_imHandle;
    if (imHandle != handleCopy)
    {
      v8 = handleCopy;
      objc_storeStrong(p_imHandle, handle);
      handleCopy = v8;
    }
  }
}

- (void)sendAVMessage:(unsigned int)message userInfo:(id)info
{
  v4 = *&message;
  infoCopy = info;
  v47 = objc_msgSend_avChat(self, v7, v8, v9, v10);
  v15 = objc_msgSend_sharedInstance(MEMORY[0x277D18D68], v11, v12, v13, v14);
  v20 = objc_msgSend_imHandle(self, v16, v17, v18, v19);
  v25 = objc_msgSend_ID(v20, v21, v22, v23, v24);
  v30 = objc_msgSend_sessionID(v47, v26, v27, v28, v29);
  v35 = objc_msgSend_conferenceID(v47, v31, v32, v33, v34);
  v40 = objc_msgSend_account(v47, v36, v37, v38, v39);
  v45 = objc_msgSend_uniqueID(v40, v41, v42, v43, v44);
  objc_msgSend_sendAVMessageToPerson_sessionID_type_userInfo_conference_account_(v15, v46, v25, v30, v4, infoCopy, v35, v45);
}

- (CGRect)contentRectForCameraOrientation:(unsigned int)orientation cameraType:(unsigned int)type
{
  isLocalParticipant = objc_msgSend_isLocalParticipant(self, a2, *&orientation, *&type, v4);
  v8 = 0.0;
  v9 = 0.0;
  v10 = 0.0;
  v11 = 0.0;
  if ((isLocalParticipant & 1) == 0)
  {
    v12 = 240;
    if (orientation < 2)
    {
      v12 = 208;
    }

    v13 = 248;
    if (orientation < 2)
    {
      v13 = 216;
    }

    v14 = 256;
    if (orientation < 2)
    {
      v14 = 224;
    }

    v15 = 264;
    if (orientation < 2)
    {
      v15 = 232;
    }

    v8 = *(&self->super.isa + v12);
    v9 = *(&self->super.isa + v13);
    v10 = *(&self->super.isa + v14);
    v11 = *(&self->super.isa + v15);
  }

  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

- (CGSize)aspectRatioForCameraOrientation:(unsigned int)orientation cameraType:(unsigned int)type
{
  v5 = *&type;
  v6 = *&orientation;
  if (objc_msgSend_isLocalParticipant(self, a2, *&orientation, *&type, v4))
  {
    v12 = objc_msgSend_avChat(self, v8, v9, v10, v11);
    objc_msgSend_localAspectRatioForCameraOrientation_cameraType_(v12, v13, v6, v5, v14);
    width = v15;
    height = v17;
  }

  else if (v6 > 1)
  {
    width = self->_remoteLandscapeOrientation.width;
    height = self->_remoteLandscapeOrientation.height;
  }

  else
  {
    width = self->_remotePortraitOrientation.width;
    height = self->_remotePortraitOrientation.height;
  }

  v19 = width;
  v20 = height;
  result.height = v20;
  result.width = v19;
  return result;
}

- (CGSize)localAspectRatioForCameraOrientation:(unsigned int)orientation cameraType:(unsigned int)type
{
  v5 = *&type;
  v6 = *&orientation;
  if (objc_msgSend_isLocalParticipant(self, a2, *&orientation, *&type, v4))
  {
    v12 = objc_msgSend_avChat(self, v8, v9, v10, v11);
    objc_msgSend_localAspectRatioForCameraOrientation_cameraType_(v12, v13, v6, v5, v14);
    width = v15;
    height = v17;
  }

  else if (v6 > 1)
  {
    width = self->_remotePIPLandscapeOrientation.width;
    height = self->_remotePIPLandscapeOrientation.height;
  }

  else
  {
    width = self->_remotePIPPortraitOrientation.width;
    height = self->_remotePIPPortraitOrientation.height;
  }

  v19 = width;
  v20 = height;
  result.height = v20;
  result.width = v19;
  return result;
}

- (CGSize)_remotePortraitOrientation
{
  width = self->_remotePortraitOrientation.width;
  height = self->_remotePortraitOrientation.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)_remoteLandscapeOrientation
{
  width = self->_remoteLandscapeOrientation.width;
  height = self->_remoteLandscapeOrientation.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)_remotePIPPortraitOrientation
{
  width = self->_remotePIPPortraitOrientation.width;
  height = self->_remotePIPPortraitOrientation.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)_remotePIPLandscapeOrientation
{
  width = self->_remotePIPLandscapeOrientation.width;
  height = self->_remotePIPLandscapeOrientation.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGRect)_remotePortraitContentRect
{
  x = self->_remotePortraitContentRect.origin.x;
  y = self->_remotePortraitContentRect.origin.y;
  width = self->_remotePortraitContentRect.size.width;
  height = self->_remotePortraitContentRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)_remoteLandscapeContentRect
{
  x = self->_remoteLandscapeContentRect.origin.x;
  y = self->_remoteLandscapeContentRect.origin.y;
  width = self->_remoteLandscapeContentRect.size.width;
  height = self->_remoteLandscapeContentRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)_reInitiateWithCallInfo:(id)info
{
  infoCopy = info;
  v9 = objc_msgSend_avChat(self, v5, v6, v7, v8);
  v14 = objc_msgSend_GUID(v9, v10, v11, v12, v13);
  v19 = objc_msgSend_vcPartyID(self, v15, v16, v17, v18);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = sub_25475E638;
  v23[3] = &unk_279783670;
  v24 = v9;
  v25 = infoCopy;
  v20 = dispatch_get_global_queue(0, 0);
  v21 = infoCopy;
  v22 = v9;
  sub_25475E518(v14, v19, 1, v23, v20);
}

- (void)sendInvitation
{
  if (!objc_msgSend_state(self, a2, v2, v3, v4))
  {
    objc_msgSend_setState_(self, v6, 1, v7, v8);
    v13 = objc_msgSend_avChat(self, v9, v10, v11, v12);
    v18 = objc_msgSend__timings(v13, v14, v15, v16, v17);
    objc_msgSend_stopTimingForKey_(v18, v19, @"time-to-av-invitation-op-creation", v20, v21);

    v22 = objc_alloc_init(IMAVChatParticipantCallInfo);
    objc_msgSend__registerCallInfo_(self, v23, v22, v24, v25);
    v30 = objc_msgSend_GUID(v13, v26, v27, v28, v29);
    v35 = objc_msgSend_vcPartyID(self, v31, v32, v33, v34);
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = sub_25475F1F4;
    v38[3] = &unk_279783698;
    v39 = v22;
    v36 = dispatch_get_global_queue(0, 0);
    v37 = v22;
    sub_25475E518(v30, v35, 0, v38, v36);
  }
}

- (void)cancelInvitationWithResponse:(unsigned int)response
{
  v8 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], a2, *&response, v3, v4);
  objc_msgSend__cancelInvitationWithReason_response_(self, v6, 1, v8, v7);
}

- (void)_cancelInvitationWithReason:(unsigned int)reason response:(id)response
{
  v4 = *&reason;
  v92 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  objc_msgSend_setStateToEndedWithReason_andError_(self, v7, v4, 0, v8);
  v13 = objc_msgSend_avChat(self, v9, v10, v11, v12);
  v18 = objc_msgSend_endedReason(v13, v14, v15, v16, v17);

  if (v18 <= 0x18 && ((1 << v18) & 0x1811000) != 0)
  {
    v24 = sub_254761764(v19);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v29 = objc_msgSend_avChat(self, v25, v26, v27, v28);
      v34 = objc_msgSend_endedReason(v29, v30, v31, v32, v33);
      v39 = _NSStringDescriptionForIMAVChatEndedReason(v34, v35, v36, v37, v38);
      v88 = 138412290;
      v89 = v39;
      _os_log_impl(&dword_254743000, v24, OS_LOG_TYPE_DEFAULT, "No need to send cancel since chat ended with reason %@", &v88, 0xCu);
    }
  }

  else
  {
    v24 = objc_msgSend_imHandle(self, v20, v21, v22, v23);
    v40 = sub_254761764(v24);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      v45 = objc_msgSend_ID(v24, v41, v42, v43, v44);
      v88 = 138412290;
      v89 = v45;
      _os_log_impl(&dword_254743000, v40, OS_LOG_TYPE_DEFAULT, "Sending cancel invite for %@ to service", &v88, 0xCu);
    }

    v47 = sub_254761764(v46);
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      v52 = objc_msgSend_ID(v24, v48, v49, v50, v51);
      v88 = 138412546;
      v89 = v52;
      v90 = 2112;
      v91 = responseCopy;
      _os_log_impl(&dword_254743000, v47, OS_LOG_TYPE_DEFAULT, "Sending cancel invite to %@ with response %@", &v88, 0x16u);
    }

    v57 = objc_msgSend_avChat(self, v53, v54, v55, v56);
    v62 = objc_msgSend_sharedInstance(IMAVController, v58, v59, v60, v61);
    v63 = MEMORY[0x277CBEAC0];
    v64 = MEMORY[0x277CCABB0];
    v69 = objc_msgSend_sessionID(v57, v65, v66, v67, v68);
    v73 = objc_msgSend_numberWithUnsignedInt_(v64, v70, v69, v71, v72);
    v76 = objc_msgSend_dictionaryWithObject_forKey_(v63, v74, v73, *MEMORY[0x277D19568], v75);
    v81 = objc_msgSend_account(v24, v77, v78, v79, v80);
    v86 = objc_msgSend_conferenceID(v57, v82, v83, v84, v85);
    objc_msgSend_cancelVCRequestWithBuddy_vcProps_forAccount_conferenceID_reason_(v62, v87, v24, v76, v81, v86, responseCopy);
  }
}

- (void)_sendResponse:(unsigned int)response callInfo:(id)info
{
  v48 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v7 = sub_254761764(infoCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = _NSStringDescriptionForIMAVResponse(response);
    *buf = 138412546;
    selfCopy = self;
    v46 = 2112;
    v47 = v8;
    _os_log_impl(&dword_254743000, v7, OS_LOG_TYPE_DEFAULT, "participant: %@   response: %@", buf, 0x16u);
  }

  v13 = objc_msgSend_avChat(self, v9, v10, v11, v12);
  v18 = v13;
  if (response)
  {
    v19 = objc_msgSend_GUID(v13, v14, v15, v16, v17);
    v24 = objc_msgSend_vcPartyID(self, v20, v21, v22, v23);
    sub_25475F7AC(response, 0, 1, 1, v19, v24, infoCopy);
  }

  else
  {
    if (objc_msgSend_isReinitiate(infoCopy, v14, v15, v16, v17))
    {
      objc_msgSend__hangupCallLaterIfReinitiateFailsForCallInfo_(self, v25, infoCopy, v27, v28);
    }

    v29 = objc_msgSend_GUID(v18, v25, v26, v27, v28);
    v34 = objc_msgSend_vcPartyID(self, v30, v31, v32, v33);
    isReinitiate = objc_msgSend_isReinitiate(infoCopy, v35, v36, v37, v38);
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = sub_25475F788;
    v41[3] = &unk_2797836C0;
    v43 = 0;
    v42 = infoCopy;
    v40 = dispatch_get_global_queue(0, 0);
    sub_25475E518(v29, v34, isReinitiate, v41, v40);

    v19 = v42;
  }
}

- (void)setWaitingToConnect:(BOOL)connect
{
  connectCopy = connect;
  v28 = *MEMORY[0x277D85DE8];
  v5 = sub_254761764(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 138412546;
    selfCopy = self;
    v26 = 1024;
    v27 = connectCopy;
    _os_log_impl(&dword_254743000, v5, OS_LOG_TYPE_DEFAULT, "participant: %@  waiting: %d", &v24, 0x12u);
  }

  v10 = objc_msgSend__connectTimeoutTimer(self, v6, v7, v8, v9);
  v15 = v10;
  if (connectCopy)
  {

    if (!v15)
    {
      v17 = objc_msgSend_scheduledTimerWithTimeInterval_target_selector_userInfo_repeats_(MEMORY[0x277CBEBB8], v16, self, sel__connectTimeout_, 0, 0, 180.0);
      objc_msgSend__setConnectTimeoutTimer_(self, v18, v17, v19, v20);
    }
  }

  else
  {
    objc_msgSend_invalidate(v10, v11, v12, v13, v14);

    objc_msgSend__setConnectTimeoutTimer_(self, v21, 0, v22, v23);
  }
}

- (void)resetWaitingToConnectTimer
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = sub_254761764(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_254743000, v3, OS_LOG_TYPE_DEFAULT, "participant: %@", &v21, 0xCu);
  }

  v8 = objc_msgSend__connectTimeoutTimer(self, v4, v5, v6, v7);
  objc_msgSend_invalidate(v8, v9, v10, v11, v12);

  objc_msgSend__setConnectTimeoutTimer_(self, v13, 0, v14, v15);
  v17 = objc_msgSend_scheduledTimerWithTimeInterval_target_selector_userInfo_repeats_(MEMORY[0x277CBEBB8], v16, self, sel__connectTimeout_, 0, 0, 180.0);
  objc_msgSend__setConnectTimeoutTimer_(self, v18, v17, v19, v20);
}

- (void)_connectTimeout:(id)timeout
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = sub_254761764(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_msgSend_name(self, v5, v6, v7, v8);
    v15 = 138412290;
    v16 = v9;
    _os_log_impl(&dword_254743000, v4, OS_LOG_TYPE_DEFAULT, "Participant %@ _connectTimeout", &v15, 0xCu);
  }

  objc_msgSend__setConnectTimeoutTimer_(self, v10, 0, v11, v12);
  objc_msgSend_setStateToEndedWithReason_andError_(self, v13, 6, 1008, v14);
}

- (void)videoLayer
{
  if (!objc_msgSend_isLocalParticipant(self, a2, v2, v3, v4))
  {
    return 0;
  }

  v9 = objc_msgSend_sharedInstance(IMAVInterface, v5, v6, v7, v8);
  v14 = objc_msgSend_localVideoLayer(v9, v10, v11, v12, v13);

  return v14;
}

- (void)setVideoLayer:(void *)layer
{
  if (objc_msgSend_isLocalParticipant(self, a2, layer, v3, v4))
  {
    v13 = objc_msgSend_sharedInstance(IMAVInterface, v6, v7, v8, v9);
    objc_msgSend_setLocalVideoLayer_(v13, v10, layer, v11, v12);
  }
}

- (void)videoBackLayer
{
  if (!objc_msgSend_isLocalParticipant(self, a2, v2, v3, v4))
  {
    return 0;
  }

  v9 = objc_msgSend_sharedInstance(IMAVInterface, v5, v6, v7, v8);
  v14 = objc_msgSend_localVideoBackLayer(v9, v10, v11, v12, v13);

  return v14;
}

- (void)setVideoBackLayer:(void *)layer
{
  if (objc_msgSend_isLocalParticipant(self, a2, layer, v3, v4))
  {
    v13 = objc_msgSend_sharedInstance(IMAVInterface, v6, v7, v8, v9);
    objc_msgSend_setLocalVideoBackLayer_(v13, v10, layer, v11, v12);
  }
}

- (id)_proxyRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v10 = objc_msgSend_name(self, v4, v5, v6, v7);
  if (v10)
  {
    objc_msgSend_setObject_forKey_(v3, v8, v10, @"Name", v9);
  }

  return v3;
}

@end