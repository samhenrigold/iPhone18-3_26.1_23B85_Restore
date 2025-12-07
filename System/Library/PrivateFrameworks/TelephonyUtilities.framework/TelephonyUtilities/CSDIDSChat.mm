@interface CSDIDSChat
+ (NSUUID)faceTimeAppUUID;
- (BOOL)isConnected;
- (BOOL)isSendingAudio;
- (BOOL)isSendingAudioData;
- (BOOL)isSendingVideo;
- (CGSize)localLandscapeAspectRatio;
- (CGSize)localPortraitAspectRatio;
- (CSDIDSChat)initWithSession:(id)session remoteHandle:(id)handle wantsVideo:(BOOL)video;
- (CSDIDSChatDelegate)delegate;
- (CXCallFailureContext)failureContext;
- (NSDate)dateConnected;
- (NSDate)dateStartedConnecting;
- (NSString)crossDeviceIdentifier;
- (NSString)remoteFromID;
- (NSString)sessionUUID;
- (id)capabilities;
- (id)initIncomingWithSession:(id)session remoteHandle:(id)handle wantsVideo:(BOOL)video remoteInviteDictionary:(id)dictionary;
- (id)initOutgoingWithSession:(id)session UUID:(id)d remoteHandle:(id)handle wantsVideo:(BOOL)video isRelaying:(BOOL)relaying;
- (int)deviceRole;
- (int64_t)endedReason;
- (int64_t)inputAudioPowerSpectrumToken;
- (int64_t)outputAudioPowerSpectrumToken;
- (int64_t)spatialAudioSourceIdentifier;
- (int64_t)videoStreamToken;
- (unint64_t)initialLinkType;
- (void)_handlePushTokensInvited:(id)invited didSendInvitation:(BOOL)invitation didCancelInvitation:(BOOL)cancelInvitation;
- (void)_setDateEndedIfNecessary;
- (void)_setLocalAspectRatiosForVideoAspectRatioDescriptor:(id)descriptor;
- (void)answerWithVideoAspectRatioDescriptor:(id)descriptor;
- (void)cancelInvitationWithAnsweredElsewhere;
- (void)cancelInvitationWithDeclinedElsewhere;
- (void)cancelInvitationWithLocalHangup;
- (void)cancelOrDeclineInvitation;
- (void)conference:(id)conference changedBytesOfDataUsed:(int64_t)used;
- (void)conference:(id)conference didReceiveData:(id)data forCallID:(int64_t)d;
- (void)conference:(id)conference endedWithReason:(int64_t)reason error:(id)error;
- (void)conference:(id)conference inputFrequencyLevelChangedTo:(id)to;
- (void)conference:(id)conference inputLevelChangedTo:(float)to;
- (void)conference:(id)conference outputFrequencyLevelChangedTo:(id)to;
- (void)conference:(id)conference outputLevelChangedTo:(float)to;
- (void)conference:(id)conference remoteMediaStalled:(BOOL)stalled;
- (void)conferenceFinishedPreparing:(id)preparing;
- (void)conferenceStarted:(id)started;
- (void)end;
- (void)mutedChangedForConference:(id)conference;
- (void)prepareConference;
- (void)receivedFirstRemoteFrameForConference:(id)conference;
- (void)remoteVideoPausedForConference:(id)conference;
- (void)sendDataUnreliably:(id)unreliably;
- (void)sendingAudioChangedForConference:(id)conference;
- (void)session:(id)session endedWithReason:(int)reason;
- (void)session:(id)session invitationSentToPushTokens:(id)tokens shouldBreakBeforeMake:(BOOL)make;
- (void)session:(id)session receivedData:(id)data;
- (void)session:(id)session receivedInvitationAcceptWithData:(id)data;
- (void)session:(id)session receivedInvitationCancelWithData:(id)data;
- (void)session:(id)session receivedInvitationDeclineWithData:(id)data;
- (void)sessionStarted:(id)started;
- (void)setRelaying:(BOOL)relaying;
- (void)setRemoteVideoPresentationSize:(CGSize)size;
- (void)setRemoteVideoPresentationState:(int)state;
- (void)setSendingAudio:(BOOL)audio;
- (void)setSendingAudioData:(BOOL)data;
- (void)setSendingVideo:(BOOL)video;
- (void)startConnectionWithTransport:(id)transport;
- (void)startWithVideoAspectRatioDescriptor:(id)descriptor inviteCompletion:(id)completion;
@end

@implementation CSDIDSChat

+ (NSUUID)faceTimeAppUUID
{
  if (qword_1006ACC48 != -1)
  {
    sub_100473F0C();
  }

  v3 = qword_1006ACC40;

  return v3;
}

- (CSDIDSChat)initWithSession:(id)session remoteHandle:(id)handle wantsVideo:(BOOL)video
{
  sessionCopy = session;
  handleCopy = handle;
  v20.receiver = self;
  v20.super_class = CSDIDSChat;
  v11 = [(CSDIDSChat *)&v20 init];
  if (v11)
  {
    v12 = +[TUCallCenter sharedInstance];
    queue = [v12 queue];
    dispatch_assert_queue_V2(queue);

    objc_storeStrong(&v11->_session, session);
    [(CSDIDSDualSession *)v11->_session setDelegate:v11];
    v14 = +[NSUUID UUID];
    UUID = v11->_UUID;
    v11->_UUID = v14;

    objc_storeStrong(&v11->_handle, handle);
    v11->_video = video;
    v16 = [RTCReporting newHierarchyTokenFromParentToken:0];
    reportingHierarchyToken = v11->_reportingHierarchyToken;
    v11->_reportingHierarchyToken = v16;

    conferenceCreationBlock = v11->_conferenceCreationBlock;
    v11->_conferenceCreationBlock = &stru_10061B0F8;
  }

  return v11;
}

- (id)initIncomingWithSession:(id)session remoteHandle:(id)handle wantsVideo:(BOOL)video remoteInviteDictionary:(id)dictionary
{
  videoCopy = video;
  sessionCopy = session;
  dictionaryCopy = dictionary;
  v13 = [(CSDIDSChat *)self initWithSession:sessionCopy remoteHandle:handle wantsVideo:videoCopy];
  if (v13)
  {
    if ([sessionCopy isInitiator])
    {
      sub_100473F98(a2, v13, sessionCopy);
    }

    objc_storeStrong(&v13->_remoteInviteDictionary, dictionary);
    v14 = +[CSDReportingController sharedInstance];
    [v14 createOneToOneFTReportingSessionForCallWithUUID:v13->_UUID withReportingHierarchyToken:v13->_reportingHierarchyToken withVideo:videoCopy];
  }

  return v13;
}

- (id)initOutgoingWithSession:(id)session UUID:(id)d remoteHandle:(id)handle wantsVideo:(BOOL)video isRelaying:(BOOL)relaying
{
  videoCopy = video;
  sessionCopy = session;
  dCopy = d;
  v15 = [(CSDIDSChat *)self initWithSession:sessionCopy remoteHandle:handle wantsVideo:videoCopy];
  if (v15)
  {
    if (([sessionCopy isInitiator] & 1) == 0)
    {
      sub_100474018(a2, v15, sessionCopy);
    }

    v15->_outgoing = 1;
    objc_storeStrong(&v15->_UUID, d);
    v15->_relaying = relaying;
    v16 = +[CSDReportingController sharedInstance];
    [v16 createOneToOneFTReportingSessionForCallWithUUID:v15->_UUID withReportingHierarchyToken:v15->_reportingHierarchyToken withVideo:videoCopy];
  }

  return v15;
}

- (NSString)sessionUUID
{
  session = [(CSDIDSChat *)self session];
  uUID = [session UUID];

  return uUID;
}

- (int64_t)videoStreamToken
{
  conference = [(CSDIDSChat *)self conference];
  callID = [conference callID];

  return callID;
}

- (int64_t)inputAudioPowerSpectrumToken
{
  conference = [(CSDIDSChat *)self conference];
  inputAudioPowerSpectrumToken = [conference inputAudioPowerSpectrumToken];

  return inputAudioPowerSpectrumToken;
}

- (int64_t)outputAudioPowerSpectrumToken
{
  conference = [(CSDIDSChat *)self conference];
  outputAudioPowerSpectrumToken = [conference outputAudioPowerSpectrumToken];

  return outputAudioPowerSpectrumToken;
}

- (int64_t)spatialAudioSourceIdentifier
{
  conference = [(CSDIDSChat *)self conference];
  callID = [conference callID];

  return callID;
}

- (NSDate)dateStartedConnecting
{
  conference = [(CSDIDSChat *)self conference];
  dateStartedConnecting = [conference dateStartedConnecting];

  return dateStartedConnecting;
}

- (NSDate)dateConnected
{
  if ([(CSDIDSChat *)self isVideo])
  {
    dateReceivedFirstRemoteFrame = [(CSDIDSChat *)self dateReceivedFirstRemoteFrame];
  }

  else
  {
    conference = [(CSDIDSChat *)self conference];
    dateReceivedFirstRemoteFrame = [conference dateConnected];
  }

  return dateReceivedFirstRemoteFrame;
}

- (BOOL)isConnected
{
  session = [(CSDIDSChat *)self session];
  v3 = [session state] == 3;

  return v3;
}

- (int64_t)endedReason
{
  if ([(CSDIDSChat *)self hasSentInvitation])
  {
    invitedPushTokens = [(CSDIDSChat *)self invitedPushTokens];
    v4 = [invitedPushTokens count];

    if (!v4)
    {
      v10 = sub_100004778(v5);
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
LABEL_26:
        v9 = 1;
LABEL_27:

        return v9;
      }

      v22 = 138412290;
      selfCopy = self;
      v11 = "Setting disconnected reason to call failed because invitation was sent but no push tokens were available to receive the invitation for call %@";
      v12 = v10;
      v13 = 12;
LABEL_20:
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v11, &v22, v13);
      goto LABEL_26;
    }
  }

  session = [(CSDIDSChat *)self session];
  endedReason = [session endedReason];

  v9 = -1;
  if (endedReason > 2)
  {
    if ((endedReason - 5) >= 2)
    {
      if (endedReason == 3)
      {
        v10 = sub_100004778(v8);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v22 = 134217984;
          selfCopy = 3;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Using call ended reason declined elsewhere because CSDIDSDualSession ended reason is %ld", &v22, 0xCu);
        }

        v9 = 5;
        goto LABEL_27;
      }

      if (endedReason == 4)
      {
        v10 = sub_100004778(v8);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v22 = 134217984;
          selfCopy = 4;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Using call ended reason unanswered because CSDIDSDualSession ended reason is %ld", &v22, 0xCu);
        }

        v9 = 3;
        goto LABEL_27;
      }

      return v9;
    }

    v10 = sub_100004778(v8);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_26;
    }

    v22 = 134218242;
    selfCopy = endedReason;
    v24 = 2112;
    selfCopy2 = self;
    v11 = "Setting disconnected reason to call failed because CSDIDSDualSession ended reason is %ld for call %@";
    v12 = v10;
    v13 = 22;
    goto LABEL_20;
  }

  switch(endedReason)
  {
    case 0:
      goto LABEL_22;
    case 1:
      conference = [(CSDIDSChat *)self conference];
      dateStartedConnecting = [conference dateStartedConnecting];

      if (!dateStartedConnecting)
      {
        v10 = sub_100004778(v16);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v22 = 134217984;
          selfCopy = 1;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Using call ended reason remote ended because CSDIDSDualSession ended reason is %ld", &v22, 0xCu);
        }

        goto LABEL_39;
      }

LABEL_22:
      conference2 = [(CSDIDSChat *)self conference];

      if (!conference2)
      {
        return -1;
      }

      conference3 = [(CSDIDSChat *)self conference];
      endedReason2 = [conference3 endedReason];

      if ((endedReason2 - 3) < 5)
      {
        goto LABEL_24;
      }

      if (endedReason2 != 2)
      {
        if (endedReason2 == 1)
        {
LABEL_24:
          v10 = sub_100004778(v20);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            sub_100474098(self, endedReason2, v10);
          }

          goto LABEL_26;
        }

        return -1;
      }

      v10 = sub_100004778(v20);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v22 = 134217984;
        v9 = 2;
        selfCopy = 2;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Using call ended reason remote ended because CSDAVConference ended reason is %ld", &v22, 0xCu);
        goto LABEL_27;
      }

LABEL_39:
      v9 = 2;
      goto LABEL_27;
    case 2:
      v10 = sub_100004778(v8);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v22 = 134217984;
        selfCopy = 2;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Using call ended reason answered elsewhere because CSDIDSDualSession ended reason is %ld", &v22, 0xCu);
      }

      v9 = 4;
      goto LABEL_27;
  }

  return v9;
}

- (CXCallFailureContext)failureContext
{
  if ([(CSDIDSChat *)self hasSentInvitation])
  {
    invitedPushTokens = [(CSDIDSChat *)self invitedPushTokens];
    v4 = [invitedPushTokens count];

    if (!v4)
    {
      v11 = objc_alloc_init(CXCallFailureContext);
      conference = v11;
      v12 = 1;
      goto LABEL_11;
    }
  }

  session = [(CSDIDSChat *)self session];
  endedReason = [session endedReason];

  if (endedReason == 6)
  {
    conference = objc_alloc_init(CXCallFailureContext);
    [conference setFailureReason:0];
    session2 = [(CSDIDSChat *)self session];
    [conference setProviderErrorCode:{objc_msgSend(session2, "underlyingErrorCode")}];

    goto LABEL_12;
  }

  conference = [(CSDIDSChat *)self conference];

  if (conference)
  {
    conference2 = [(CSDIDSChat *)self conference];
    endedReason2 = [conference2 endedReason];

    if (endedReason2 == 6)
    {
      v11 = objc_alloc_init(CXCallFailureContext);
      conference = v11;
      v12 = 5;
      goto LABEL_11;
    }

    if (endedReason2 == 7)
    {
      v11 = objc_alloc_init(CXCallFailureContext);
      conference = v11;
      v12 = 4;
LABEL_11:
      [v11 setFailureReason:v12];
      goto LABEL_12;
    }

    conference = 0;
  }

LABEL_12:

  return conference;
}

- (NSString)crossDeviceIdentifier
{
  session = [(CSDIDSChat *)self session];
  uUID = [session UUID];

  return uUID;
}

- (NSString)remoteFromID
{
  session = [(CSDIDSChat *)self session];
  remoteFromID = [session remoteFromID];

  return remoteFromID;
}

- (unint64_t)initialLinkType
{
  session = [(CSDIDSChat *)self session];
  initialLinkType = [session initialLinkType];

  return initialLinkType;
}

- (void)_setDateEndedIfNecessary
{
  dateEnded = [(CSDIDSChat *)self dateEnded];

  if (dateEnded)
  {
    return;
  }

  if ([(CSDIDSChat *)self hasSentInvitation])
  {
    invitedPushTokens = [(CSDIDSChat *)self invitedPushTokens];
    v5 = [invitedPushTokens count];

    if (!v5)
    {
LABEL_9:
      conference3 = +[NSDate date];
      [(CSDIDSChat *)self setDateEnded:conference3];
      goto LABEL_10;
    }
  }

  conference = [(CSDIDSChat *)self conference];

  if (!conference)
  {
    session = [(CSDIDSChat *)self session];

    if (!session)
    {
      goto LABEL_11;
    }

    session2 = [(CSDIDSChat *)self session];
    state = [session2 state];

    if (state != 5)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  conference2 = [(CSDIDSChat *)self conference];
  state2 = [conference2 state];

  if (state2 != 7)
  {
    goto LABEL_11;
  }

  conference3 = [(CSDIDSChat *)self conference];
  dateEnded2 = [conference3 dateEnded];
  [(CSDIDSChat *)self setDateEnded:dateEnded2];

LABEL_10:
LABEL_11:
  delegate = [(CSDIDSChat *)self delegate];
  dateEnded3 = [(CSDIDSChat *)self dateEnded];
  if (dateEnded3)
  {
    v15 = dateEnded3;
    v16 = objc_opt_respondsToSelector();

    if (v16)
    {
      [delegate chatEnded:self];
    }
  }
}

- (void)_setLocalAspectRatiosForVideoAspectRatioDescriptor:(id)descriptor
{
  delegate = [(CSDIDSChat *)self delegate];
  [delegate localPortraitAspectRatioForChat:self];
  v6 = v5;
  v8 = v7;

  v10 = sub_100004778(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v17.width = v6;
    v17.height = v8;
    v11 = NSStringFromSize(v17);
    v18.width = v8;
    v18.height = v6;
    v12 = NSStringFromSize(v18);
    v13 = 138412546;
    v14 = v11;
    v15 = 2112;
    v16 = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Setting local portrait aspect ratio %@ and local landscape aspect ratio %@", &v13, 0x16u);
  }

  [(CSDIDSChat *)self setLocalPortraitAspectRatio:v6, v8];
  [(CSDIDSChat *)self setLocalLandscapeAspectRatio:v8, v6];
}

- (id)capabilities
{
  if (qword_1006ACC58 != -1)
  {
    sub_100474120();
  }

  v3 = objc_alloc_init(VCCapabilities);
  [v3 setIsKeyExchangeEnabled:(byte_1006ACC50 & 1) == 0];
  [v3 setIsAudioEnabled:1];
  [v3 setIsVideoEnabled:{-[CSDIDSChat isVideo](self, "isVideo")}];
  [v3 setIsDuplexAudioOnly:{objc_msgSend(v3, "isVideoEnabled") ^ 1}];
  [v3 setIsRelayForced:0];
  [v3 setIsRelayEnabled:1];
  [v3 setIsAudioPausedToStart:{-[CSDIDSChat shouldStartAudioPaused](self, "shouldStartAudioPaused")}];
  [v3 setIsVideoPausedToStart:{-[CSDIDSChat shouldStartVideoPaused](self, "shouldStartVideoPaused")}];
  [v3 setDeviceRole:{-[CSDIDSChat deviceRole](self, "deviceRole")}];

  return v3;
}

- (int)deviceRole
{
  if ([(CSDIDSChat *)self isRelaying])
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

- (void)startWithVideoAspectRatioDescriptor:(id)descriptor inviteCompletion:(id)completion
{
  completionCopy = completion;
  descriptorCopy = descriptor;
  v8 = sub_100004778(descriptorCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "", v9, 2u);
  }

  [(CSDIDSChat *)self _setLocalAspectRatiosForVideoAspectRatioDescriptor:descriptorCopy];
  [(CSDIDSChat *)self setInviteCompletion:completionCopy];

  [(CSDIDSChat *)self prepareConference];
}

- (void)answerWithVideoAspectRatioDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v5 = sub_100004778(descriptorCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = descriptorCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "videoAspectRatioDescriptor: %@", &v7, 0xCu);
  }

  [(CSDIDSChat *)self _setLocalAspectRatiosForVideoAspectRatioDescriptor:descriptorCopy];
  v6 = +[NSUUID UUID];
  [(CSDIDSChat *)self setUpgradeSessionUUID:v6];

  [(CSDIDSChat *)self prepareConference];
}

- (void)cancelOrDeclineInvitation
{
  session = [(CSDIDSChat *)self session];
  isInitiator = [session isInitiator];

  v6 = sub_100004778(v5);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (isInitiator)
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Canceling session", buf, 2u);
    }

    session2 = [(CSDIDSChat *)self session];
    [session2 cancelInvitationWithReason:0];
  }

  else
  {
    if (v7)
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Declining session", v9, 2u);
    }

    session2 = [(CSDIDSChat *)self session];
    [session2 declineInvitation];
  }
}

- (void)end
{
  v3 = sub_100004778(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "end self: %@", &v17, 0xCu);
  }

  dateEnded = [(CSDIDSChat *)self dateEnded];

  if (!dateEnded)
  {
    conference = [(CSDIDSChat *)self conference];
    if (conference)
    {
      v6 = conference;
      conference2 = [(CSDIDSChat *)self conference];
      if ([conference2 state] <= 3)
      {
      }

      else
      {
        conference3 = [(CSDIDSChat *)self conference];
        state = [conference3 state];

        if (state <= 5)
        {
          v11 = sub_100004778(v10);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v17) = 0;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Stopping conference", &v17, 2u);
          }

          conference4 = [(CSDIDSChat *)self conference];
          [conference4 stop];
          goto LABEL_16;
        }
      }
    }

    session = [(CSDIDSChat *)self session];
    state2 = [session state];

    if (state2 == 1)
    {
      [(CSDIDSChat *)self cancelOrDeclineInvitation];
LABEL_17:
      [(CSDIDSChat *)self _handlePushTokensInvited:&__NSArray0__struct didSendInvitation:0 didCancelInvitation:1];
      return;
    }

    v16 = sub_100004778(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Ending session", &v17, 2u);
    }

    conference4 = [(CSDIDSChat *)self session];
    [conference4 end];
LABEL_16:

    goto LABEL_17;
  }
}

- (void)cancelInvitationWithAnsweredElsewhere
{
  v3 = sub_100004778(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "for call %@", &v6, 0xCu);
  }

  session = [(CSDIDSChat *)self session];
  [session cancelInvitationWithReason:1];

  conference = [(CSDIDSChat *)self conference];
  [conference cancel];
}

- (void)cancelInvitationWithDeclinedElsewhere
{
  v3 = sub_100004778(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "for call %@", &v6, 0xCu);
  }

  session = [(CSDIDSChat *)self session];
  [session cancelInvitationWithReason:2];

  conference = [(CSDIDSChat *)self conference];
  [conference cancel];
}

- (void)cancelInvitationWithLocalHangup
{
  v3 = sub_100004778(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "for call %@", &v6, 0xCu);
  }

  session = [(CSDIDSChat *)self session];
  [session cancelInvitationWithReason:0];

  conference = [(CSDIDSChat *)self conference];
  [conference cancel];
}

- (void)sendDataUnreliably:(id)unreliably
{
  unreliablyCopy = unreliably;
  conference = [(CSDIDSChat *)self conference];
  [conference sendData:unreliablyCopy];
}

- (BOOL)isSendingAudio
{
  conference = [(CSDIDSChat *)self conference];
  isSendingAudio = [conference isSendingAudio];

  return isSendingAudio;
}

- (void)setSendingAudio:(BOOL)audio
{
  audioCopy = audio;
  v5 = sub_100004778(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 67109378;
    v12 = audioCopy;
    v13 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Setting isSendingAudio to %d for chat %@", &v11, 0x12u);
  }

  conference = [(CSDIDSChat *)self conference];

  if (conference)
  {
    conference2 = [(CSDIDSChat *)self conference];
    [conference2 setSendingAudio:audioCopy];
  }

  else
  {
    v9 = sub_100004778(v7);
    v10 = audioCopy ^ 1;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 67109120;
      v12 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Conference has not been created yet. Updating shouldStartAudioPaused to %d", &v11, 8u);
    }

    [(CSDIDSChat *)self setShouldStartAudioPaused:v10];
  }
}

- (BOOL)isSendingAudioData
{
  conference = [(CSDIDSChat *)self conference];
  isSendingAudioData = [conference isSendingAudioData];

  return isSendingAudioData;
}

- (void)setSendingAudioData:(BOOL)data
{
  dataCopy = data;
  v5 = sub_100004778(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109378;
    v8[1] = dataCopy;
    v9 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Setting isSendingAudioData to %d for chat %@", v8, 0x12u);
  }

  conference = [(CSDIDSChat *)self conference];

  if (conference)
  {
    conference2 = [(CSDIDSChat *)self conference];
    [conference2 setSendingAudioData:dataCopy];
  }
}

- (BOOL)isSendingVideo
{
  conference = [(CSDIDSChat *)self conference];
  isSendingVideo = [conference isSendingVideo];

  return isSendingVideo;
}

- (void)setSendingVideo:(BOOL)video
{
  videoCopy = video;
  v5 = sub_100004778(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 67109378;
    v12 = videoCopy;
    v13 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Setting isSendingVideo to %d for chat %@", &v11, 0x12u);
  }

  conference = [(CSDIDSChat *)self conference];

  if (conference)
  {
    conference2 = [(CSDIDSChat *)self conference];
    [conference2 setSendingVideo:videoCopy];
  }

  else
  {
    v9 = sub_100004778(v7);
    v10 = videoCopy ^ 1;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 67109120;
      v12 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Conference has not been created yet. Updating shouldStartVideoPaused to %d", &v11, 8u);
    }

    [(CSDIDSChat *)self setShouldStartVideoPaused:v10];
  }
}

- (void)setRelaying:(BOOL)relaying
{
  if (self->_relaying != relaying)
  {
    relayingCopy = relaying;
    v5 = sub_100004778(self);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8[0] = 67109634;
      v8[1] = [(CSDIDSChat *)self isRelaying];
      v9 = 1024;
      v10 = relayingCopy;
      v11 = 2112;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Setting relaying from %d to %d for chat %@", v8, 0x18u);
    }

    self->_relaying = relayingCopy;
    deviceRole = [(CSDIDSChat *)self deviceRole];
    conference = [(CSDIDSChat *)self conference];
    [conference setDeviceRole:deviceRole];
  }
}

- (void)startConnectionWithTransport:(id)transport
{
  transportCopy = transport;
  v5 = sub_100004778(transportCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = transportCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "transport: %@", &v11, 0xCu);
  }

  conference = [(CSDIDSChat *)self conference];
  remoteFromID = [(CSDIDSChat *)self remoteFromID];
  crossDeviceIdentifier = [(CSDIDSChat *)self crossDeviceIdentifier];
  [conference setRemoteIDSDestinationURI:remoteFromID crossDeviceIdentifier:crossDeviceIdentifier];

  conference2 = [(CSDIDSChat *)self conference];
  [conference2 startConnectionWithTransport:transportCopy];

  delegate = [(CSDIDSChat *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate chatStartedConnecting:self];
  }
}

- (void)prepareConference
{
  conferenceCreationBlock = [(CSDIDSChat *)self conferenceCreationBlock];
  v4 = conferenceCreationBlock[2]();
  [(CSDIDSChat *)self setConference:v4];

  conference = [(CSDIDSChat *)self conference];
  [conference setDelegate:self];

  v6 = +[TUCallCenter sharedInstance];
  queue = [v6 queue];
  conference2 = [(CSDIDSChat *)self conference];
  [conference2 setDelegateQueue:queue];

  v14 = objc_alloc_init(CSDAVConferenceConfiguration);
  [(CSDAVConferenceConfiguration *)v14 setRequiresInviteDictionary:1];
  [(CSDAVConferenceConfiguration *)v14 setCaller:[(CSDIDSChat *)self isOutgoing]];
  capabilities = [(CSDIDSChat *)self capabilities];
  [(CSDAVConferenceConfiguration *)v14 setCapabilities:capabilities];

  faceTimeAppUUID = [objc_opt_class() faceTimeAppUUID];
  [(CSDAVConferenceConfiguration *)v14 setClientUUID:faceTimeAppUUID];

  reportingHierarchyToken = [(CSDIDSChat *)self reportingHierarchyToken];
  [(CSDAVConferenceConfiguration *)v14 setReportingHierarchyToken:reportingHierarchyToken];

  remoteInviteDictionary = [(CSDIDSChat *)self remoteInviteDictionary];
  [(CSDAVConferenceConfiguration *)v14 setRemoteInviteDictionary:remoteInviteDictionary];

  [(CSDIDSChat *)self localPortraitAspectRatio];
  [(CSDAVConferenceConfiguration *)v14 setLocalPortraitAspectRatio:?];
  [(CSDIDSChat *)self localLandscapeAspectRatio];
  [(CSDAVConferenceConfiguration *)v14 setLocalLandscapeAspectRatio:?];
  conference3 = [(CSDIDSChat *)self conference];
  [conference3 prepareWithConfiguration:v14];
}

- (void)setRemoteVideoPresentationSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  conference = [(CSDIDSChat *)self conference];
  [conference setRemoteVideoPresentationSize:{width, height}];
}

- (void)setRemoteVideoPresentationState:(int)state
{
  if (state == 2)
  {
    v3 = 2;
  }

  else
  {
    v3 = state == 1;
  }

  conference = [(CSDIDSChat *)self conference];
  [conference setRemoteVideoPresentationState:v3];
}

- (void)_handlePushTokensInvited:(id)invited didSendInvitation:(BOOL)invitation didCancelInvitation:(BOOL)cancelInvitation
{
  cancelInvitationCopy = cancelInvitation;
  invitationCopy = invitation;
  invitedCopy = invited;
  inviteCompletion = [(CSDIDSChat *)self inviteCompletion];

  if (inviteCompletion)
  {
    [(CSDIDSChat *)self setInvitedPushTokens:invitedCopy];
    [(CSDIDSChat *)self setHasSentInvitation:invitationCopy];
    inviteCompletion2 = [(CSDIDSChat *)self inviteCompletion];
    (inviteCompletion2)[2](inviteCompletion2, invitedCopy, cancelInvitationCopy);

    [(CSDIDSChat *)self setInviteCompletion:0];
    delegate = [(CSDIDSChat *)self delegate];
    if ([(CSDIDSChat *)self hasSentInvitation]&& (objc_opt_respondsToSelector() & 1) != 0)
    {
      [delegate chatSentInvitation:self];
    }
  }

  _objc_release_x2();
}

- (void)sessionStarted:(id)started
{
  startedCopy = started;
  v5 = sub_100004778(startedCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    selfCopy = startedCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "sessionStarted: %@", &v15, 0xCu);
  }

  delegate = [(CSDIDSChat *)self delegate];
  v7 = [delegate isMediaAllowedForChat:self];

  if (v7)
  {
    conference = [(CSDIDSChat *)self conference];
    remoteInviteDictionary = [conference remoteInviteDictionary];

    if (remoteInviteDictionary)
    {
      transport = [(CSDIDSChat *)startedCopy transport];
      [(CSDIDSChat *)self startConnectionWithTransport:transport];
    }

    else
    {
      transport = sub_100004778(v11);
      if (os_log_type_enabled(transport, OS_LOG_TYPE_DEFAULT))
      {
        conference2 = [(CSDIDSChat *)self conference];
        state = [conference2 state];
        v15 = 67109120;
        LODWORD(selfCopy) = state;
        _os_log_impl(&_mh_execute_header, transport, OS_LOG_TYPE_DEFAULT, "Not starting connection because conference state is %d", &v15, 8u);
      }
    }
  }

  else
  {
    transport = sub_100004778(v8);
    if (os_log_type_enabled(transport, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, transport, OS_LOG_TYPE_DEFAULT, "[WARN] Not starting connection because the chat is not allowed to start media: %@", &v15, 0xCu);
    }
  }
}

- (void)session:(id)session invitationSentToPushTokens:(id)tokens shouldBreakBeforeMake:(BOOL)make
{
  makeCopy = make;
  sessionCopy = session;
  tokensCopy = tokens;
  v10 = sub_100004778(tokensCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412802;
    v12 = sessionCopy;
    v13 = 2112;
    v14 = tokensCopy;
    v15 = 1024;
    v16 = makeCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "session %@ invitationSentToPushTokens %@ shouldBreakBeforeMake %d", &v11, 0x1Cu);
  }

  [(CSDIDSChat *)self setMayRequireBreakBeforeMake:makeCopy];
  [(CSDIDSChat *)self _handlePushTokensInvited:tokensCopy didSendInvitation:1 didCancelInvitation:0];
  [(CSDIDSChat *)self _setDateEndedIfNecessary];
}

- (void)session:(id)session endedWithReason:(int)reason
{
  sessionCopy = session;
  v7 = sub_100004778(sessionCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = sessionCopy;
    v11 = 1024;
    reasonCopy = reason;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "session %@ endedWithReason %d", &v9, 0x12u);
  }

  conference = [(CSDIDSChat *)self conference];
  [conference stop];

  [(CSDIDSChat *)self _handlePushTokensInvited:&__NSArray0__struct didSendInvitation:0 didCancelInvitation:1];
  [(CSDIDSChat *)self _setDateEndedIfNecessary];
}

- (void)session:(id)session receivedInvitationAcceptWithData:(id)data
{
  sessionCopy = session;
  dataCopy = data;
  v8 = [[CSDMessagingCallMessage alloc] initWithData:dataCopy];

  v10 = sub_100004778(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *v52 = sessionCopy;
    *&v52[8] = 2112;
    v53 = v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "session %@ receivedInvitationAcceptWithData %@", buf, 0x16u);
  }

  delegate = [(CSDIDSChat *)self delegate];
  v12 = [delegate isMediaAllowedForChat:self];

  if ((v12 & 1) == 0)
  {
    v20 = sub_100004778(v13);
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_34;
    }

    *buf = 138412290;
    *v52 = self;
    v38 = "[WARN] Dropping invitation accept since the chat is not allowed to start media: %@";
LABEL_25:
    v39 = v20;
    v40 = 12;
LABEL_26:
    _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, v38, buf, v40);
    goto LABEL_34;
  }

  isOutgoing = [(CSDIDSChat *)self isOutgoing];
  if ((isOutgoing & 1) == 0)
  {
    v20 = sub_100004778(isOutgoing);
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_34;
    }

    *buf = 138412290;
    *v52 = self;
    v38 = "[WARN] Ignoring invitation accept since chat is incoming: %@";
    goto LABEL_25;
  }

  remoteFromID = [sessionCopy remoteFromID];
  v16 = [remoteFromID length];

  if (v16)
  {
    remoteFromID2 = [sessionCopy remoteFromID];
    v50 = 0;
    v19 = [remoteFromID2 _stripPotentialTokenURIWithToken:&v50];
    v20 = v50;

    if (![v20 length])
    {
      transport = sub_100004778(0);
      if (os_log_type_enabled(transport, OS_LOG_TYPE_ERROR))
      {
        sub_100474210(transport);
      }

      goto LABEL_33;
    }

    invitedPushTokens = [(CSDIDSChat *)self invitedPushTokens];
    v22 = [invitedPushTokens containsObject:v20];

    if ((v22 & 1) == 0)
    {
      transport = sub_100004778(v23);
      if (os_log_type_enabled(transport, OS_LOG_TYPE_ERROR))
      {
        sub_100474134(transport);
      }

      goto LABEL_33;
    }

    if (!v8)
    {
      transport = sub_100004778(v23);
      if (os_log_type_enabled(transport, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, transport, OS_LOG_TYPE_DEFAULT, "[WARN] Ignoring incoming accept since accompanying message was nil", buf, 2u);
      }

      goto LABEL_33;
    }

    type = [(CSDMessagingCallMessage *)v8 type];
    if (type != 1)
    {
      transport = sub_100004778(type);
      if (os_log_type_enabled(transport, OS_LOG_TYPE_DEFAULT))
      {
        type2 = [(CSDMessagingCallMessage *)v8 type];
        if (type2 >= 3)
        {
          v42 = [NSString stringWithFormat:@"(unknown: %i)", type2];
        }

        else
        {
          v42 = off_10061B138[type2];
        }

        *buf = 138412290;
        *v52 = v42;
        _os_log_impl(&_mh_execute_header, transport, OS_LOG_TYPE_DEFAULT, "[WARN] Ignoring incoming message since message with type=%@ was not invite.", buf, 0xCu);
      }

      goto LABEL_33;
    }

    inviteData = [(CSDMessagingCallMessage *)v8 inviteData];
    faceTimeInviteDictionary = [inviteData faceTimeInviteDictionary];
    conference = [(CSDIDSChat *)self conference];
    [conference setRemoteInviteDictionary:faceTimeInviteDictionary];

    [(CSDIDSChat *)self setRemoteMomentsAvailable:[(CSDMessagingCallMessage *)v8 isMomentsAvailable]];
    hasProtoUpgradeSessionUUID = [(CSDMessagingCallMessage *)v8 hasProtoUpgradeSessionUUID];
    if (hasProtoUpgradeSessionUUID && ([(CSDIDSChat *)self upgradeSessionUUID], v29 = objc_claimAutoreleasedReturnValue(), v29, !v29))
    {
      v47 = [NSUUID alloc];
      protoUpgradeSessionUUID = [(CSDMessagingCallMessage *)v8 protoUpgradeSessionUUID];
      v30 = [v47 initWithUUIDString:protoUpgradeSessionUUID];

      if (v30)
      {
        [(CSDIDSChat *)self setUpgradeSessionUUID:v30];
LABEL_15:

        if ([(CSDMessagingCallMessage *)v8 hasProtoWantsVideo])
        {
          if ([(CSDIDSChat *)self isVideo])
          {
            isVideo = [(CSDIDSChat *)self isVideo];
            protoWantsVideo = [(CSDMessagingCallMessage *)v8 protoWantsVideo];
            [(CSDIDSChat *)self setVideo:[(CSDMessagingCallMessage *)v8 protoWantsVideo]];
            if (isVideo != protoWantsVideo)
            {
              conference2 = [(CSDIDSChat *)self conference];
              capabilities = [(CSDIDSChat *)self capabilities];
              [conference2 updateCapabilities:capabilities];
            }
          }
        }

        state = [sessionCopy state];
        if (state == 3)
        {
          transport = [sessionCopy transport];
          [(CSDIDSChat *)self startConnectionWithTransport:transport];
        }

        else
        {
          transport = sub_100004778(state);
          if (os_log_type_enabled(transport, OS_LOG_TYPE_DEFAULT))
          {
            session = [(CSDIDSChat *)self session];
            state2 = [session state];
            conference3 = [(CSDIDSChat *)self conference];
            state3 = [conference3 state];
            *buf = 67109376;
            *v52 = state2;
            *&v52[4] = 1024;
            *&v52[6] = state3;
            _os_log_impl(&_mh_execute_header, transport, OS_LOG_TYPE_DEFAULT, "Not starting connecting because session state is %d and conference state is %d", buf, 0xEu);
          }
        }

LABEL_33:

        goto LABEL_34;
      }

      upgradeSessionUUID = sub_100004778(v49);
      if (os_log_type_enabled(upgradeSessionUUID, OS_LOG_TYPE_ERROR))
      {
        sub_100474178(v8, upgradeSessionUUID);
      }
    }

    else
    {
      v30 = sub_100004778(hasProtoUpgradeSessionUUID);
      if (!os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_15;
      }

      upgradeSessionUUID = [(CSDIDSChat *)self upgradeSessionUUID];
      *buf = 138412546;
      *v52 = v8;
      *&v52[8] = 2112;
      v53 = upgradeSessionUUID;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "[WARN] Not setting upgradeSessionUUID for message: %@ self.upgradeSessionUUID: %@", buf, 0x16u);
    }

    goto LABEL_15;
  }

  v20 = sub_100004778(v17);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v38 = "[WARN] Ignoring invitation accept since there is no remote from ID set on the session.";
    v39 = v20;
    v40 = 2;
    goto LABEL_26;
  }

LABEL_34:
}

- (void)session:(id)session receivedInvitationDeclineWithData:(id)data
{
  sessionCopy = session;
  dataCopy = data;
  v7 = sub_100004778(dataCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = sessionCopy;
    v10 = 2112;
    v11 = dataCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "session %@ receivedInvitationDeclineWithData %@", &v8, 0x16u);
  }
}

- (void)session:(id)session receivedInvitationCancelWithData:(id)data
{
  sessionCopy = session;
  dataCopy = data;
  v7 = sub_100004778(dataCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = sessionCopy;
    v10 = 2112;
    v11 = dataCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "session %@ receivedInvitationCancelWithData %@", &v8, 0x16u);
  }
}

- (void)session:(id)session receivedData:(id)data
{
  sessionCopy = session;
  v6 = sub_100004778(sessionCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"non-nil";
    if (!data)
    {
      v7 = @"nil";
    }

    v8 = 138412546;
    v9 = sessionCopy;
    v10 = 2112;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "session %@ receivedData (data is %@)", &v8, 0x16u);
  }
}

- (void)conferenceFinishedPreparing:(id)preparing
{
  v4 = sub_100004778(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v25) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "", &v25, 2u);
  }

  delegate = [(CSDIDSChat *)self delegate];
  faceTimeAppUUID = [objc_opt_class() faceTimeAppUUID];
  session = [(CSDIDSChat *)self session];
  [session setClientUUID:faceTimeAppUUID];

  v8 = [delegate isWiFiAllowedForChat:self];
  session2 = [(CSDIDSChat *)self session];
  [session2 setWiFiAllowed:v8];

  v10 = [delegate isCellularDataAllowedForChat:self];
  session3 = [(CSDIDSChat *)self session];
  [session3 setCellularDataAllowed:v10];

  v12 = [delegate isCellularDataPreferredForChat:self];
  session4 = [(CSDIDSChat *)self session];
  [session4 setCellularDataPreferred:v12];

  v14 = objc_alloc_init(CSDMessagingCallMessage);
  [(CSDMessagingCallMessage *)v14 addProtocolVersion];
  [(CSDMessagingCallMessage *)v14 setType:1];
  v15 = [CSDMessagingAVConferenceInviteData alloc];
  conference = [(CSDIDSChat *)self conference];
  localInviteDictionary = [conference localInviteDictionary];
  v18 = [(CSDMessagingAVConferenceInviteData *)v15 initWithFaceTimeInviteDictionary:localInviteDictionary];
  [(CSDMessagingCallMessage *)v14 setInviteData:v18];

  [(CSDMessagingCallMessage *)v14 setShouldSuppressInCallUI:[(CSDIDSChat *)self shouldSuppressInCallUI]];
  upgradeSessionUUID = [(CSDIDSChat *)self upgradeSessionUUID];
  uUIDString = [upgradeSessionUUID UUIDString];
  [(CSDMessagingCallMessage *)v14 setProtoUpgradeSessionUUID:uUIDString];

  if (objc_opt_respondsToSelector())
  {
    -[CSDMessagingCallMessage setMomentsAvailable:](v14, "setMomentsAvailable:", [delegate isMomentsAvailableForChat:self]);
  }

  v21 = sub_100004778([(CSDMessagingCallMessage *)v14 setProtoWantsVideo:[(CSDIDSChat *)self isVideo]]);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 138412290;
    v26 = v14;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "message: %@", &v25, 0xCu);
  }

  isOutgoing = [(CSDIDSChat *)self isOutgoing];
  session5 = [(CSDIDSChat *)self session];
  data = [(CSDMessagingCallMessage *)v14 data];
  if (isOutgoing)
  {
    [session5 sendInvitationWithData:data];
  }

  else
  {
    [session5 acceptInvitationWithData:data];
  }
}

- (void)conferenceStarted:(id)started
{
  v4 = sub_100004778(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "", buf, 2u);
  }

  if ([(CSDIDSChat *)self isVideo])
  {
    v5 = dispatch_time(0, 3000000000);
    v6 = +[TUCallCenter sharedInstance];
    queue = [v6 queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000DB6E0;
    block[3] = &unk_100619D38;
    block[4] = self;
    dispatch_after(v5, queue, block);
  }

  else
  {
    delegate = [(CSDIDSChat *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate chatConnected:self];
    }
  }
}

- (void)conference:(id)conference endedWithReason:(int64_t)reason error:(id)error
{
  errorCopy = error;
  v8 = sub_100004778(errorCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134218242;
    reasonCopy = reason;
    v13 = 2112;
    v14 = errorCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "reason=%ld error=%@", &v11, 0x16u);
  }

  session = [(CSDIDSChat *)self session];
  state = [session state];

  if (state == 1)
  {
    [(CSDIDSChat *)self cancelOrDeclineInvitation];
  }

  [(CSDIDSChat *)self _setDateEndedIfNecessary];
}

- (void)mutedChangedForConference:(id)conference
{
  v3 = sub_100004778(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "", v4, 2u);
  }
}

- (void)sendingAudioChangedForConference:(id)conference
{
  v3 = sub_100004778(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "", v4, 2u);
  }
}

- (void)receivedFirstRemoteFrameForConference:(id)conference
{
  v4 = sub_100004778(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "", v8, 2u);
  }

  dateReceivedFirstRemoteFrame = [(CSDIDSChat *)self dateReceivedFirstRemoteFrame];

  if (!dateReceivedFirstRemoteFrame)
  {
    v6 = +[NSDate date];
    [(CSDIDSChat *)self setDateReceivedFirstRemoteFrame:v6];

    delegate = [(CSDIDSChat *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate chatConnected:self];
    }
  }
}

- (void)remoteVideoPausedForConference:(id)conference
{
  v3 = sub_100004778(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "", v4, 2u);
  }
}

- (void)conference:(id)conference remoteMediaStalled:(BOOL)stalled
{
  if (stalled)
  {
    v5 = sub_100004778(self);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Remote media stalled for chat: %@. Reconnecting IDS session.", &v7, 0xCu);
    }

    session = [(CSDIDSChat *)self session];
    [session reconnectSession];
  }
}

- (void)conference:(id)conference inputFrequencyLevelChangedTo:(id)to
{
  toCopy = to;
  delegate = [(CSDIDSChat *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate chat:self inputFrequencyLevelChangedTo:toCopy];
  }
}

- (void)conference:(id)conference outputFrequencyLevelChangedTo:(id)to
{
  toCopy = to;
  delegate = [(CSDIDSChat *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate chat:self outputFrequencyLevelChangedTo:toCopy];
  }
}

- (void)conference:(id)conference inputLevelChangedTo:(float)to
{
  delegate = [(CSDIDSChat *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    *&v6 = to;
    [delegate chat:self inputLevelChangedTo:v6];
  }
}

- (void)conference:(id)conference outputLevelChangedTo:(float)to
{
  delegate = [(CSDIDSChat *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    *&v6 = to;
    [delegate chat:self outputLevelChangedTo:v6];
  }
}

- (void)conference:(id)conference changedBytesOfDataUsed:(int64_t)used
{
  delegate = [(CSDIDSChat *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate chat:self changedBytesOfDataUsed:used];
  }
}

- (void)conference:(id)conference didReceiveData:(id)data forCallID:(int64_t)d
{
  dataCopy = data;
  delegate = [(CSDIDSChat *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate chat:self receivedData:dataCopy];
  }
}

- (CSDIDSChatDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGSize)localLandscapeAspectRatio
{
  width = self->_localLandscapeAspectRatio.width;
  height = self->_localLandscapeAspectRatio.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)localPortraitAspectRatio
{
  width = self->_localPortraitAspectRatio.width;
  height = self->_localPortraitAspectRatio.height;
  result.height = height;
  result.width = width;
  return result;
}

@end