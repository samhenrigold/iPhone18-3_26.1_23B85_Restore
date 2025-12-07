@interface IMAVChatProxy
- (BOOL)_isCallUpgradeTo:(id)to;
- (BOOL)hasReceivedFirstFrame;
- (BOOL)isCaller;
- (BOOL)isMute;
- (BOOL)isRelayed;
- (BOOL)isSendingAudio;
- (BOOL)isSendingVideo;
- (BOOL)isStateFinal;
- (BOOL)isVideo;
- (IMHandle)initiatorIMHandle;
- (IMHandle)otherIMHandle;
- (NSArray)remoteParticipants;
- (NSDate)dateConnected;
- (NSDate)dateEnded;
- (double)connectionTimeoutTime;
- (double)invitationTimeoutTime;
- (id)description;
- (int)endedError;
- (unsigned)endedReason;
- (unsigned)sessionID;
- (unsigned)state;
- (void)acceptInvitation;
- (void)cancelInvitation;
- (void)declineInvitation;
- (void)endChat;
- (void)endChatWithReason:(unsigned int)reason;
- (void)finalUpdate;
- (void)forwardInvocation:(id)invocation;
- (void)invite:(id)invite additionalPeers:(id)peers excludingPushTokens:(id)tokens;
- (void)inviteAll;
- (void)setConnectionTimeoutTime:(double)time;
- (void)setInvitationTimeoutTime:(double)time;
- (void)setIsSendingAudio:(BOOL)audio;
- (void)setIsSendingVideo:(BOOL)video;
- (void)setLocalAspectRatio:(CGSize)ratio cameraOrientation:(unsigned int)orientation cameraType:(unsigned int)type;
- (void)setMute:(BOOL)mute;
- (void)setRelayed:(BOOL)relayed;
- (void)updateWithInfo:(id)info;
@end

@implementation IMAVChatProxy

- (id)description
{
  v6 = MEMORY[0x277CCACA8];
  v7 = objc_msgSend_initiatorIMHandle(self, a2, v2, v3, v4);
  v12 = objc_msgSend_description(v7, v8, v9, v10, v11);
  v17 = objc_msgSend_otherIMHandle(self, v13, v14, v15, v16);
  v22 = objc_msgSend_description(v17, v18, v19, v20, v21);
  v26 = objc_msgSend_stringWithFormat_(v6, v23, @"Initiator: %@, Receiver: %@", v24, v25, v12, v22);

  v27 = MEMORY[0x277CCACA8];
  if (objc_msgSend_isVideo(self, v28, v29, v30, v31))
  {
    v36 = @"Video";
  }

  else
  {
    v36 = @"Audio";
  }

  v37 = objc_msgSend_state(self, v32, v33, v34, v35);
  v38 = _NSStringDescriptionForIMAVChatState(v37);
  v43 = objc_msgSend_conferenceID(self, v39, v40, v41, v42);
  v48 = objc_msgSend_sessionID(self, v44, v45, v46, v47);
  v53 = objc_msgSend_GUID(self, v49, v50, v51, v52);
  v57 = objc_msgSend_stringWithFormat_(v27, v54, @"<%p> %@ chat with %@ (state %@) (ConfID: %@) (SID: %u) (GUID: %@)", v55, v56, self, v36, v26, v38, v43, v48, v53);

  return v57;
}

- (unsigned)sessionID
{
  v4 = objc_msgSend_objectForKey_(self->_info, a2, @"SessionID", v2, v3);
  v9 = objc_msgSend_unsignedIntValue(v4, v5, v6, v7, v8);

  return v9;
}

- (unsigned)state
{
  v4 = objc_msgSend_objectForKey_(self->_info, a2, @"State", v2, v3);
  v9 = objc_msgSend_unsignedIntValue(v4, v5, v6, v7, v8);

  return v9;
}

- (BOOL)isStateFinal
{
  v4 = objc_msgSend_objectForKey_(self->_info, a2, @"IsStateFinal", v2, v3);
  v9 = objc_msgSend_BOOLValue(v4, v5, v6, v7, v8);

  return v9;
}

- (BOOL)isSendingAudio
{
  v4 = objc_msgSend_objectForKey_(self->_info, a2, @"IsSendingAudio", v2, v3);
  v9 = objc_msgSend_BOOLValue(v4, v5, v6, v7, v8);

  return v9;
}

- (void)setIsSendingAudio:(BOOL)audio
{
  audioCopy = audio;
  v36 = *MEMORY[0x277D85DE8];
  v5 = sub_254761764(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v33[0] = 67109378;
    v33[1] = audioCopy;
    v34 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_254743000, v5, OS_LOG_TYPE_DEFAULT, "Client called setIsSendingAudio %d on chat proxy %@", v33, 0x12u);
  }

  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v7 = objc_alloc(MEMORY[0x277CCABB0]);
  v15 = objc_msgSend_initWithBool_(v7, v8, audioCopy, v9, v10);
  if (v15)
  {
    CFDictionarySetValue(v6, @"IsSendingAudio", v15);
  }

  v16 = objc_msgSend_sharedInstance(MEMORY[0x277D18D68], v11, v12, v13, v14);
  v21 = objc_msgSend_account(self, v17, v18, v19, v20);
  v26 = objc_msgSend_GUID(self, v22, v23, v24, v25);
  isVideo = objc_msgSend_isVideo(self, v27, v28, v29, v30);
  objc_msgSend_account_avAction_withArguments_toAVChat_isVideo_(v16, v32, v21, 11, v6, v26, isVideo);
}

- (BOOL)isSendingVideo
{
  v4 = objc_msgSend_objectForKey_(self->_info, a2, @"IsSendingVideo", v2, v3);
  v9 = objc_msgSend_BOOLValue(v4, v5, v6, v7, v8);

  return v9;
}

- (void)setIsSendingVideo:(BOOL)video
{
  videoCopy = video;
  v36 = *MEMORY[0x277D85DE8];
  v5 = sub_254761764(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v33[0] = 67109378;
    v33[1] = videoCopy;
    v34 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_254743000, v5, OS_LOG_TYPE_DEFAULT, "Client called setIsSendingVideo %d on chat proxy %@", v33, 0x12u);
  }

  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v7 = objc_alloc(MEMORY[0x277CCABB0]);
  v15 = objc_msgSend_initWithBool_(v7, v8, videoCopy, v9, v10);
  if (v15)
  {
    CFDictionarySetValue(v6, @"IsSendingVideo", v15);
  }

  v16 = objc_msgSend_sharedInstance(MEMORY[0x277D18D68], v11, v12, v13, v14);
  v21 = objc_msgSend_account(self, v17, v18, v19, v20);
  v26 = objc_msgSend_GUID(self, v22, v23, v24, v25);
  isVideo = objc_msgSend_isVideo(self, v27, v28, v29, v30);
  objc_msgSend_account_avAction_withArguments_toAVChat_isVideo_(v16, v32, v21, 13, v6, v26, isVideo);
}

- (void)setLocalAspectRatio:(CGSize)ratio cameraOrientation:(unsigned int)orientation cameraType:(unsigned int)type
{
  v5 = *&type;
  v6 = *&orientation;
  height = ratio.height;
  width = ratio.width;
  v55 = *MEMORY[0x277D85DE8];
  v10 = sub_254761764(self);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v56.width = width;
    v56.height = height;
    v11 = NSStringFromSize(v56);
    v47 = 138413058;
    v48 = v11;
    v49 = 1024;
    v50 = v6;
    v51 = 1024;
    v52 = v5;
    v53 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_254743000, v10, OS_LOG_TYPE_DEFAULT, "Client called setLocalAspectRatio: %@ cameraOrientation: %d cameraType: %d on chat proxy %@", &v47, 0x22u);
  }

  v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v17 = objc_msgSend_valueWithSize_(MEMORY[0x277CCAE60], v13, v14, v15, v16, width, height);
  v21 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v18, v6, v19, v20);
  v29 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v22, v5, v23, v24);
  if (v17)
  {
    CFDictionarySetValue(v12, @"AspectRatio", v17);
  }

  if (v21)
  {
    CFDictionarySetValue(v12, @"Orientation", v21);
  }

  if (v29)
  {
    CFDictionarySetValue(v12, @"CameraType", v29);
  }

  v30 = objc_msgSend_sharedInstance(MEMORY[0x277D18D68], v25, v26, v27, v28);
  v35 = objc_msgSend_account(self, v31, v32, v33, v34);
  v40 = objc_msgSend_GUID(self, v36, v37, v38, v39);
  isVideo = objc_msgSend_isVideo(self, v41, v42, v43, v44);
  objc_msgSend_account_avAction_withArguments_toAVChat_isVideo_(v30, v46, v35, 12, v12, v40, isVideo);
}

- (BOOL)hasReceivedFirstFrame
{
  v4 = objc_msgSend_objectForKey_(self->_info, a2, @"HasReceivedFirstFrame", v2, v3);
  v9 = objc_msgSend_BOOLValue(v4, v5, v6, v7, v8);

  return v9;
}

- (NSDate)dateConnected
{
  v4 = objc_msgSend_objectForKey_(self->_info, a2, @"DateConnected", v2, v3);
  objc_msgSend_doubleValue(v4, v5, v6, v7, v8);
  v10 = v9;
  if (v9 >= 1.0)
  {
    v12 = objc_alloc(MEMORY[0x277CBEAA8]);
    v11 = objc_msgSend_initWithTimeIntervalSince1970_(v12, v13, v14, v15, v16, v10);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (NSDate)dateEnded
{
  v4 = objc_msgSend_objectForKey_(self->_info, a2, @"DateEnded", v2, v3);
  objc_msgSend_doubleValue(v4, v5, v6, v7, v8);
  v10 = v9;
  if (v9 >= 1.0)
  {
    v12 = objc_alloc(MEMORY[0x277CBEAA8]);
    v11 = objc_msgSend_initWithTimeIntervalSince1970_(v12, v13, v14, v15, v16, v10);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (NSArray)remoteParticipants
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_objectForKey_(self->_info, a2, @"RemoteParticipants", v2, v3);
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = v5;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v23, v27, 16);
  if (v9)
  {
    v10 = v9;
    v11 = *v24;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v23 + 1) + 8 * i);
        v14 = [IMAVChatParticipantProxy alloc];
        v20 = objc_msgSend_initWithDictionary_chat_(v14, v15, v13, self, v16, v23);
        if (v20)
        {
          objc_msgSend_addObject_(v6, v17, v20, v18, v19);
        }
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v21, &v23, v27, 16);
    }

    while (v10);
  }

  return v6;
}

- (IMHandle)initiatorIMHandle
{
  v4 = objc_msgSend_objectForKey_(self->_info, a2, @"Initiator", v2, v3);
  v8 = objc_msgSend__imHandleFromProxyRepresentation_(IMAVChat, v5, v4, v6, v7);

  return v8;
}

- (IMHandle)otherIMHandle
{
  v4 = objc_msgSend_objectForKey_(self->_info, a2, @"Other", v2, v3);
  v8 = objc_msgSend__imHandleFromProxyRepresentation_(IMAVChat, v5, v4, v6, v7);

  return v8;
}

- (BOOL)isCaller
{
  v4 = objc_msgSend_objectForKey_(self->_info, a2, @"IsCaller", v2, v3);
  v9 = objc_msgSend_BOOLValue(v4, v5, v6, v7, v8);

  return v9;
}

- (BOOL)isVideo
{
  v4 = objc_msgSend_objectForKey_(self->_info, a2, @"IsVideo", v2, v3);
  v9 = objc_msgSend_BOOLValue(v4, v5, v6, v7, v8);

  return v9;
}

- (BOOL)isMute
{
  v4 = objc_msgSend_objectForKey_(self->_info, a2, @"IsMute", v2, v3);
  v9 = objc_msgSend_BOOLValue(v4, v5, v6, v7, v8);

  return v9;
}

- (void)setMute:(BOOL)mute
{
  muteCopy = mute;
  v37 = *MEMORY[0x277D85DE8];
  v5 = sub_254761764(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v34[0] = 67109378;
    v34[1] = muteCopy;
    v35 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_254743000, v5, OS_LOG_TYPE_DEFAULT, "Client called setMute %d on chat proxy %@", v34, 0x12u);
  }

  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v7 = objc_alloc(MEMORY[0x277CCABB0]);
  v16 = objc_msgSend_initWithDouble_(v7, v8, v9, v10, v11, muteCopy);
  if (v16)
  {
    CFDictionarySetValue(v6, @"IsMute", v16);
  }

  v17 = objc_msgSend_sharedInstance(MEMORY[0x277D18D68], v12, v13, v14, v15);
  v22 = objc_msgSend_account(self, v18, v19, v20, v21);
  v27 = objc_msgSend_GUID(self, v23, v24, v25, v26);
  isVideo = objc_msgSend_isVideo(self, v28, v29, v30, v31);
  objc_msgSend_account_avAction_withArguments_toAVChat_isVideo_(v17, v33, v22, 9, v6, v27, isVideo);
}

- (unsigned)endedReason
{
  v4 = objc_msgSend_objectForKey_(self->_info, a2, @"EndedReason", v2, v3);
  v9 = objc_msgSend_unsignedIntValue(v4, v5, v6, v7, v8);

  return v9;
}

- (int)endedError
{
  v4 = objc_msgSend_objectForKey_(self->_info, a2, @"EndedError", v2, v3);
  v9 = objc_msgSend_intValue(v4, v5, v6, v7, v8);

  return v9;
}

- (double)invitationTimeoutTime
{
  v4 = objc_msgSend_objectForKey_(self->_info, a2, @"InvitationTimeoutTime", v2, v3);
  objc_msgSend_doubleValue(v4, v5, v6, v7, v8);
  v10 = v9;

  return v10;
}

- (void)setInvitationTimeoutTime:(double)time
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = sub_254761764(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v34 = 134218242;
    timeCopy = time;
    v36 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_254743000, v5, OS_LOG_TYPE_DEFAULT, "Client called setInvitationTimeoutTime %f on chat proxy %@", &v34, 0x16u);
  }

  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v7 = objc_alloc(MEMORY[0x277CCABB0]);
  v16 = objc_msgSend_initWithDouble_(v7, v8, v9, v10, v11, time);
  if (v16)
  {
    CFDictionarySetValue(v6, @"InvitationTimeoutTime", v16);
  }

  v17 = objc_msgSend_sharedInstance(MEMORY[0x277D18D68], v12, v13, v14, v15);
  v22 = objc_msgSend_account(self, v18, v19, v20, v21);
  v27 = objc_msgSend_GUID(self, v23, v24, v25, v26);
  isVideo = objc_msgSend_isVideo(self, v28, v29, v30, v31);
  objc_msgSend_account_avAction_withArguments_toAVChat_isVideo_(v17, v33, v22, 7, v6, v27, isVideo);
}

- (double)connectionTimeoutTime
{
  v4 = objc_msgSend_objectForKey_(self->_info, a2, @"ConnectionTimeoutTime", v2, v3);
  objc_msgSend_doubleValue(v4, v5, v6, v7, v8);
  v10 = v9;

  return v10;
}

- (void)setConnectionTimeoutTime:(double)time
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = sub_254761764(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v34 = 134218242;
    timeCopy = time;
    v36 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_254743000, v5, OS_LOG_TYPE_DEFAULT, "Client called setConnectionTimeoutTime %f on chat proxy %@", &v34, 0x16u);
  }

  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v7 = objc_alloc(MEMORY[0x277CCABB0]);
  v16 = objc_msgSend_initWithDouble_(v7, v8, v9, v10, v11, time);
  if (v16)
  {
    CFDictionarySetValue(v6, @"ConnectionTimeoutTime", v16);
  }

  v17 = objc_msgSend_sharedInstance(MEMORY[0x277D18D68], v12, v13, v14, v15);
  v22 = objc_msgSend_account(self, v18, v19, v20, v21);
  v27 = objc_msgSend_GUID(self, v23, v24, v25, v26);
  isVideo = objc_msgSend_isVideo(self, v28, v29, v30, v31);
  objc_msgSend_account_avAction_withArguments_toAVChat_isVideo_(v17, v33, v22, 8, v6, v27, isVideo);
}

- (BOOL)isRelayed
{
  v4 = objc_msgSend_objectForKey_(self->_info, a2, @"IsRelayed", v2, v3);
  v9 = objc_msgSend_BOOLValue(v4, v5, v6, v7, v8);

  return v9;
}

- (void)setRelayed:(BOOL)relayed
{
  relayedCopy = relayed;
  v47 = *MEMORY[0x277D85DE8];
  v5 = sub_254761764(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v43 = 67109378;
    v44 = relayedCopy;
    v45 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_254743000, v5, OS_LOG_TYPE_DEFAULT, "Client called setRelayed %d on chat proxy %@", &v43, 0x12u);
  }

  isRelayed = objc_msgSend_isRelayed(self, v6, v7, v8, v9);
  if (isRelayed == relayedCopy)
  {
    v11 = sub_254761764(isRelayed);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v42 = objc_msgSend_isRelayed(self, v38, v39, v40, v41);
      v43 = 67109120;
      v44 = v42;
      _os_log_impl(&dword_254743000, v11, OS_LOG_TYPE_DEFAULT, "Not updating relayed value because it is already %d", &v43, 8u);
    }
  }

  else
  {
    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v12 = objc_alloc(MEMORY[0x277CCABB0]);
    v20 = objc_msgSend_initWithBool_(v12, v13, relayedCopy, v14, v15);
    if (v20)
    {
      CFDictionarySetValue(v11, @"IsRelayed", v20);
    }

    v21 = objc_msgSend_sharedInstance(MEMORY[0x277D18D68], v16, v17, v18, v19);
    v26 = objc_msgSend_account(self, v22, v23, v24, v25);
    v31 = objc_msgSend_GUID(self, v27, v28, v29, v30);
    isVideo = objc_msgSend_isVideo(self, v32, v33, v34, v35);
    objc_msgSend_account_avAction_withArguments_toAVChat_isVideo_(v21, v37, v26, 10, v11, v31, isVideo);
  }
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

- (void)inviteAll
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = sub_254761764(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_254743000, v3, OS_LOG_TYPE_DEFAULT, "Client called inviteAll on chat proxy %@", &v25, 0xCu);
  }

  v8 = objc_msgSend_sharedInstance(MEMORY[0x277D18D68], v4, v5, v6, v7);
  v13 = objc_msgSend_account(self, v9, v10, v11, v12);
  v18 = objc_msgSend_GUID(self, v14, v15, v16, v17);
  isVideo = objc_msgSend_isVideo(self, v19, v20, v21, v22);
  objc_msgSend_account_avAction_withArguments_toAVChat_isVideo_(v8, v24, v13, 5, 0, v18, isVideo);
}

- (void)invite:(id)invite additionalPeers:(id)peers excludingPushTokens:(id)tokens
{
  v46 = *MEMORY[0x277D85DE8];
  inviteCopy = invite;
  peersCopy = peers;
  tokensCopy = tokens;
  v11 = sub_254761764(tokensCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v38 = 138413058;
    v39 = inviteCopy;
    v40 = 2112;
    v41 = peersCopy;
    v42 = 2112;
    v43 = tokensCopy;
    v44 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_254743000, v11, OS_LOG_TYPE_DEFAULT, "Client called invite %@ additionalPeers %@ excludingPushTokens %@ on chat proxy %@", &v38, 0x2Au);
  }

  v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v20 = objc_msgSend__proxyRepresentationForIMHandle_(IMAVChat, v13, inviteCopy, v14, v15);
  if (v20)
  {
    CFDictionarySetValue(v12, @"Buddy", v20);
  }

  if (peersCopy)
  {
    CFDictionarySetValue(v12, @"AdditionalPeers", peersCopy);
  }

  if (tokensCopy)
  {
    CFDictionarySetValue(v12, @"ExcludingPushTokens", tokensCopy);
  }

  v21 = objc_msgSend_sharedInstance(MEMORY[0x277D18D68], v16, v17, v18, v19);
  v26 = objc_msgSend_account(self, v22, v23, v24, v25);
  v31 = objc_msgSend_GUID(self, v27, v28, v29, v30);
  isVideo = objc_msgSend_isVideo(self, v32, v33, v34, v35);
  objc_msgSend_account_avAction_withArguments_toAVChat_isVideo_(v21, v37, v26, 6, v12, v31, isVideo);
}

- (void)acceptInvitation
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = sub_254761764(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_254743000, v3, OS_LOG_TYPE_DEFAULT, "Client called acceptInvitation on chat proxy %@", &v25, 0xCu);
  }

  v8 = objc_msgSend_sharedInstance(MEMORY[0x277D18D68], v4, v5, v6, v7);
  v13 = objc_msgSend_account(self, v9, v10, v11, v12);
  v18 = objc_msgSend_GUID(self, v14, v15, v16, v17);
  isVideo = objc_msgSend_isVideo(self, v19, v20, v21, v22);
  objc_msgSend_account_avAction_withArguments_toAVChat_isVideo_(v8, v24, v13, 1, 0, v18, isVideo);
}

- (void)cancelInvitation
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = sub_254761764(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_254743000, v3, OS_LOG_TYPE_DEFAULT, "Client called cancelInvitation on chat proxy %@", &v25, 0xCu);
  }

  v8 = objc_msgSend_sharedInstance(MEMORY[0x277D18D68], v4, v5, v6, v7);
  v13 = objc_msgSend_account(self, v9, v10, v11, v12);
  v18 = objc_msgSend_GUID(self, v14, v15, v16, v17);
  isVideo = objc_msgSend_isVideo(self, v19, v20, v21, v22);
  objc_msgSend_account_avAction_withArguments_toAVChat_isVideo_(v8, v24, v13, 3, 0, v18, isVideo);
}

- (void)declineInvitation
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = sub_254761764(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_254743000, v3, OS_LOG_TYPE_DEFAULT, "Client called declineInvitation on chat proxy %@", &v25, 0xCu);
  }

  v8 = objc_msgSend_sharedInstance(MEMORY[0x277D18D68], v4, v5, v6, v7);
  v13 = objc_msgSend_account(self, v9, v10, v11, v12);
  v18 = objc_msgSend_GUID(self, v14, v15, v16, v17);
  isVideo = objc_msgSend_isVideo(self, v19, v20, v21, v22);
  objc_msgSend_account_avAction_withArguments_toAVChat_isVideo_(v8, v24, v13, 2, 0, v18, isVideo);
}

- (void)endChat
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = sub_254761764(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_254743000, v3, OS_LOG_TYPE_DEFAULT, "Client called endChat on chat proxy %@", &v7, 0xCu);
  }

  objc_msgSend_endChatWithReason_(self, v4, 0, v5, v6);
}

- (void)endChatWithReason:(unsigned int)reason
{
  v3 = *&reason;
  v41 = *MEMORY[0x277D85DE8];
  v5 = sub_254761764(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = _NSStringDescriptionForIMAVChatEndedReason(v3, v6, v7, v8, v9);
    v37 = 138412546;
    v38 = v10;
    v39 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_254743000, v5, OS_LOG_TYPE_DEFAULT, "Client called endChatWithReason %@ on chat proxy %@", &v37, 0x16u);
  }

  v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v15 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v12, v3, v13, v14);
  if (v15)
  {
    CFDictionarySetValue(v11, @"EndedReason", v15);
  }

  v20 = objc_msgSend_sharedInstance(MEMORY[0x277D18D68], v16, v17, v18, v19);
  v25 = objc_msgSend_account(self, v21, v22, v23, v24);
  v30 = objc_msgSend_GUID(self, v26, v27, v28, v29);
  isVideo = objc_msgSend_isVideo(self, v31, v32, v33, v34);
  objc_msgSend_account_avAction_withArguments_toAVChat_isVideo_(v20, v36, v25, 4, v11, v30, isVideo);
}

- (void)finalUpdate
{
  v3 = sub_254761764(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v24 = 0;
    _os_log_impl(&dword_254743000, v3, OS_LOG_TYPE_DEFAULT, "Proxy is going away faking a state change to ended", v24, 2u);
  }

  v8 = objc_msgSend_mutableCopy(self->_info, v4, v5, v6, v7);
  v12 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v9, 5, v10, v11);
  objc_msgSend_setObject_forKey_(v8, v13, v12, @"State", v14);

  v18 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v15, 1, v16, v17);
  objc_msgSend_setObject_forKey_(v8, v19, v18, @"IsStateFinal", v20);

  objc_msgSend_updateWithInfo_(self, v21, v8, v22, v23);
}

- (void)updateWithInfo:(id)info
{
  v273 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v6 = sub_254761764(infoCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *v271 = self;
    *&v271[8] = 2112;
    v272 = infoCopy;
    _os_log_impl(&dword_254743000, v6, OS_LOG_TYPE_DEFAULT, "Updating proxy %@ with info %@", buf, 0x16u);
  }

  v262 = objc_msgSend_state(self, v7, v8, v9, v10);
  v15 = objc_msgSend_remoteParticipants(self, v11, v12, v13, v14);
  v20 = objc_msgSend_lastObject(v15, v16, v17, v18, v19);
  v259 = objc_msgSend__inviteDelivered(v20, v21, v22, v23, v24);

  isMute = objc_msgSend_isMute(self, v25, v26, v27, v28);
  isSendingAudio = objc_msgSend_isSendingAudio(self, v29, v30, v31, v32);
  v36 = objc_msgSend_objectForKey_(self->_info, v33, @"MetadataFinalized", v34, v35);
  v261 = objc_msgSend_BOOLValue(v36, v37, v38, v39, v40);

  v44 = objc_msgSend_objectForKey_(self->_info, v41, @"HasReceivedFirstFrame", v42, v43);
  v49 = objc_msgSend_BOOLValue(v44, v45, v46, v47, v48);

  objc_storeStrong(&self->_info, info);
  v54 = objc_msgSend_state(self, v50, v51, v52, v53);
  v59 = objc_msgSend_remoteParticipants(self, v55, v56, v57, v58);
  v64 = objc_msgSend_lastObject(v59, v60, v61, v62, v63);
  v258 = objc_msgSend__inviteDelivered(v64, v65, v66, v67, v68);

  v256 = objc_msgSend_isMute(self, v69, v70, v71, v72);
  v263 = objc_msgSend_isSendingAudio(self, v73, v74, v75, v76);
  v77 = infoCopy;
  v81 = objc_msgSend_objectForKey_(infoCopy, v78, @"MetadataFinalized", v79, v80);
  v260 = objc_msgSend_BOOLValue(v81, v82, v83, v84, v85);

  v86 = v54;
  v90 = objc_msgSend_objectForKey_(self->_info, v87, @"HasReceivedFirstFrame", v88, v89);
  v95 = objc_msgSend_BOOLValue(v90, v91, v92, v93, v94);

  v97 = sub_254761764(v96);
  if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
  {
    v98 = _NSStringDescriptionForIMAVChatState(v262);
    v99 = _NSStringDescriptionForIMAVChatState(v54);
    *buf = 138412546;
    *v271 = v98;
    *&v271[8] = 2112;
    v272 = v99;
    _os_log_impl(&dword_254743000, v97, OS_LOG_TYPE_DEFAULT, "Old state %@, new state %@", buf, 0x16u);
  }

  v101 = sub_254761764(v100);
  if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
  {
    if (v259)
    {
      v102 = @"YES";
    }

    else
    {
      v102 = @"NO";
    }

    if (v258)
    {
      v103 = @"YES";
    }

    else
    {
      v103 = @"NO";
    }

    *buf = 138412546;
    *v271 = v102;
    *&v271[8] = 2112;
    v272 = v103;
    _os_log_impl(&dword_254743000, v101, OS_LOG_TYPE_DEFAULT, "Old delivered %@, new  %@", buf, 0x16u);
  }

  v105 = sub_254761764(v104);
  LODWORD(v106) = v49;
  if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
  {
    if (isSendingAudio)
    {
      v107 = @"YES";
    }

    else
    {
      v107 = @"NO";
    }

    if (v263)
    {
      v108 = @"YES";
    }

    else
    {
      v108 = @"NO";
    }

    *buf = 138412546;
    *v271 = v107;
    *&v271[8] = 2112;
    v272 = v108;
    _os_log_impl(&dword_254743000, v105, OS_LOG_TYPE_DEFAULT, "Old sendingAudio %@, new %@", buf, 0x16u);
  }

  v110 = sub_254761764(v109);
  v111 = v261;
  if (os_log_type_enabled(v110, OS_LOG_TYPE_DEFAULT))
  {
    if (v261)
    {
      v112 = @"YES";
    }

    else
    {
      v112 = @"NO";
    }

    if (v260)
    {
      v113 = @"YES";
    }

    else
    {
      v113 = @"NO";
    }

    *buf = 138412546;
    *v271 = v112;
    *&v271[8] = 2112;
    v272 = v113;
    _os_log_impl(&dword_254743000, v110, OS_LOG_TYPE_DEFAULT, "Old metadataFinalized %@, new %@", buf, 0x16u);
  }

  v115 = sub_254761764(v114);
  if (os_log_type_enabled(v115, OS_LOG_TYPE_DEFAULT))
  {
    if (v106)
    {
      v116 = @"YES";
    }

    else
    {
      v116 = @"NO";
    }

    if (v95)
    {
      v117 = @"YES";
    }

    else
    {
      v117 = @"NO";
    }

    *buf = 138412546;
    *v271 = v116;
    *&v271[8] = 2112;
    v272 = v117;
    _os_log_impl(&dword_254743000, v115, OS_LOG_TYPE_DEFAULT, "Old hasReceivedFirstRemoteFrame %@, new %@", buf, 0x16u);
  }

  v123 = 0x277CCA000uLL;
  if (v262 != v54)
  {
    isVideo = objc_msgSend_isVideo(self, v119, v120, v121, v122);
    v125 = isVideo;
    v126 = sub_254761764(isVideo);
    v127 = os_log_type_enabled(v126, OS_LOG_TYPE_DEFAULT);
    if (v125)
    {
      if (v127)
      {
        *buf = 0;
        _os_log_impl(&dword_254743000, v126, OS_LOG_TYPE_DEFAULT, "Kicking off AV call state update", buf, 2u);
      }

      v132 = objc_msgSend_sharedInstance(IMAVCallManager, v128, v129, v130, v131);
      objc_msgSend__updateAVCallState(v132, v133, v134, v135, v136);
    }

    else
    {
      if (v127)
      {
        *buf = 0;
        _os_log_impl(&dword_254743000, v126, OS_LOG_TYPE_DEFAULT, "Kicking off AC call state update", buf, 2u);
      }

      v132 = objc_msgSend_sharedInstance(IMAVCallManager, v137, v138, v139, v140);
      objc_msgSend__updateACCallState(v132, v141, v142, v143, v144);
    }

    if (v54 == 1)
    {
      isCaller = objc_msgSend_isCaller(self, v146, v147, v148, v149);
      if (isCaller)
      {
        v155 = sub_254761764(isCaller);
        if (os_log_type_enabled(v155, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *v271 = self;
          _os_log_impl(&dword_254743000, v155, OS_LOG_TYPE_DEFAULT, " => Proxy is an outgoing chat, not notifying as invited: %@", buf, 0xCu);
        }
      }

      else
      {
        v255 = v106;
        v267 = 0u;
        v268 = 0u;
        v265 = 0u;
        v266 = 0u;
        v156 = objc_msgSend_sharedInstance(IMAVController, v151, v152, v153, v154);
        v155 = objc_msgSend_delegates(v156, v157, v158, v159, v160);

        v162 = objc_msgSend_countByEnumeratingWithState_objects_count_(v155, v161, &v265, v269, 16);
        if (v162)
        {
          v163 = v162;
          v253 = v95;
          selfCopy = self;
          v254 = v77;
          v165 = *v266;
          do
          {
            v166 = 0;
            do
            {
              if (*v266 != v165)
              {
                objc_enumerationMutation(v155);
              }

              v167 = *(*(&v265 + 1) + 8 * v166);
              v168 = sub_254761764(v162);
              if (os_log_type_enabled(v168, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                *v271 = v167;
                _os_log_impl(&dword_254743000, v168, OS_LOG_TYPE_DEFAULT, "Checking delegate: %@", buf, 0xCu);
              }

              v169 = objc_opt_respondsToSelector();
              v170 = v169;
              v171 = sub_254761764(v169);
              v172 = os_log_type_enabled(v171, OS_LOG_TYPE_DEFAULT);
              if (v170)
              {
                if (v172)
                {
                  *buf = 138412290;
                  *v271 = v167;
                  _os_log_impl(&dword_254743000, v171, OS_LOG_TYPE_DEFAULT, " => Dispatching to delegate: %@", buf, 0xCu);
                }

                v162 = objc_msgSend_invitedToIMAVChat_(v167, v173, selfCopy, v174, v175);
              }

              else
              {
                if (v172)
                {
                  *buf = 138412290;
                  *v271 = v167;
                  _os_log_impl(&dword_254743000, v171, OS_LOG_TYPE_DEFAULT, " => **NOT** Dispatching to delegate: %@", buf, 0xCu);
                }
              }

              ++v166;
            }

            while (v163 != v166);
            v162 = objc_msgSend_countByEnumeratingWithState_objects_count_(v155, v176, &v265, v269, 16);
            v163 = v162;
          }

          while (v162);
          v77 = v254;
          self = selfCopy;
          LOBYTE(v106) = v255;
          v86 = v86;
          LOBYTE(v95) = v253;
          v123 = 0x277CCA000;
        }
      }
    }

    v177 = v77;
    v178 = v106;
    v179 = sub_254761764(v145);
    if (os_log_type_enabled(v179, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      *v271 = v262;
      *&v271[4] = 1024;
      *&v271[6] = v86;
      _os_log_impl(&dword_254743000, v179, OS_LOG_TYPE_DEFAULT, "Posting proxy state changed notification from %d to %d", buf, 0xEu);
    }

    v184 = objc_msgSend_defaultCenter(*(v123 + 2968), v180, v181, v182, v183);
    v185 = MEMORY[0x277CBEAC0];
    objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v186, v86, v187, v188);
    v189 = v106 = v123;
    v193 = objc_msgSend_dictionaryWithObjectsAndKeys_(v185, v190, v189, v191, v192, @"__kIMAVChatStateKey", 0);
    objc_msgSend___mainThreadPostNotificationName_object_userInfo_(v184, v194, @"__kIMAVChatStateChangedNotification", self, v193);

    v123 = v106;
    LOBYTE(v106) = v178;
    v77 = v177;
    v111 = v261;
  }

  if (!(v259 & 1 | ((v258 & 1) == 0)))
  {
    v195 = v111;
    v196 = v77;
    v197 = v106;
    v198 = sub_254761764(v118);
    if (os_log_type_enabled(v198, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_254743000, v198, OS_LOG_TYPE_DEFAULT, "Posting proxy participant notification delivered", buf, 2u);
    }

    v203 = objc_msgSend_defaultCenter(*(v123 + 2968), v199, v200, v201, v202);
    v208 = objc_msgSend_remoteParticipants(self, v204, v205, v206, v207);
    objc_msgSend_lastObject(v208, v209, v210, v211, v212);
    v213 = v106 = v123;
    objc_msgSend___mainThreadPostNotificationName_object_userInfo_(v203, v214, @"__kIMAVChatParticipantInvitationDeliveredNotification", v213, 0);

    v123 = v106;
    LOBYTE(v106) = v197;
    v77 = v196;
    v111 = v195;
  }

  if (isMute != v256)
  {
    v215 = sub_254761764(v118);
    if (os_log_type_enabled(v215, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      *v271 = isMute;
      *&v271[4] = 1024;
      *&v271[6] = v256;
      _os_log_impl(&dword_254743000, v215, OS_LOG_TYPE_DEFAULT, "Posting proxy is mute changed notification from %d to %d", buf, 0xEu);
    }

    v220 = objc_msgSend_defaultCenter(*(v123 + 2968), v216, v217, v218, v219);
    objc_msgSend___mainThreadPostNotificationName_object_userInfo_(v220, v221, @"__kIMAVChatIsMutedChangedNotification", self, 0);
  }

  if (isSendingAudio != v263)
  {
    v222 = sub_254761764(v118);
    if (os_log_type_enabled(v222, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      *v271 = isSendingAudio;
      *&v271[4] = 1024;
      *&v271[6] = v263;
      _os_log_impl(&dword_254743000, v222, OS_LOG_TYPE_DEFAULT, "Posting proxy sending audio changed notification from %d to %d", buf, 0xEu);
    }

    v227 = objc_msgSend_defaultCenter(*(v123 + 2968), v223, v224, v225, v226);
    objc_msgSend___mainThreadPostNotificationName_object_userInfo_(v227, v228, @"__kIMAVChatSendingAudioChangedNotification", self, 0);
  }

  if (!(v111 & 1 | ((v260 & 1) == 0)))
  {
    v229 = sub_254761764(v118);
    if (os_log_type_enabled(v229, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_254743000, v229, OS_LOG_TYPE_DEFAULT, "Posting proxy conference metadata updated notification", buf, 2u);
    }

    v234 = objc_msgSend_defaultCenter(*(v123 + 2968), v230, v231, v232, v233);
    objc_msgSend___mainThreadPostNotificationName_object_userInfo_(v234, v235, @"__kIMAVChatConferenceMetadataUpdatedNotification", self, 0);
  }

  if (!(v106 & 1 | ((v95 & 1) == 0)))
  {
    v236 = sub_254761764(v118);
    if (os_log_type_enabled(v236, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_254743000, v236, OS_LOG_TYPE_DEFAULT, "Posting proxy participant received first frame notification", buf, 2u);
    }

    v241 = objc_msgSend_defaultCenter(*(v123 + 2968), v237, v238, v239, v240);
    v246 = objc_msgSend_remoteParticipants(self, v242, v243, v244, v245);
    v251 = objc_msgSend_lastObject(v246, v247, v248, v249, v250);
    objc_msgSend___mainThreadPostNotificationName_object_userInfo_(v241, v252, @"__kIMAVChatParticipantReceivedFirstFrameNotification", v251, 0);
  }
}

- (void)forwardInvocation:(id)invocation
{
  v13 = *MEMORY[0x277D85DE8];
  invocationCopy = invocation;
  v4 = sub_254761764(invocationCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_msgSend_selector(invocationCopy, v5, v6, v7, v8);
    v10 = NSStringFromSelector(v9);
    v11 = 138412290;
    v12 = v10;
    _os_log_impl(&dword_254743000, v4, OS_LOG_TYPE_DEFAULT, "[WARN] ********** IMAVChatProxy does not respond to selector %@, please file a radar **********", &v11, 0xCu);
  }

  IMLogBacktrace();
}

@end