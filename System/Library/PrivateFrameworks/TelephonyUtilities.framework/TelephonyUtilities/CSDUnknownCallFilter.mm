@interface CSDUnknownCallFilter
- (BOOL)isSilenceUnknownFaceTimeCallersEnabled;
- (BOOL)isSilenceUnknownTelephonyCallersEnabled;
- (BOOL)shouldFilterIncomingCall:(id)call from:(id)from;
- (CSDUnknownCallFilter)initWithFeatureFlags:(id)flags;
- (int64_t)maxJunkLevel;
@end

@implementation CSDUnknownCallFilter

- (CSDUnknownCallFilter)initWithFeatureFlags:(id)flags
{
  flagsCopy = flags;
  v9.receiver = self;
  v9.super_class = CSDUnknownCallFilter;
  v6 = [(CSDUnknownCallFilter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_featureFlags, flags);
  }

  return v7;
}

- (BOOL)isSilenceUnknownTelephonyCallersEnabled
{
  v3 = +[NSUserDefaults tu_defaults];
  silenceUnknownCallersEnabled = [v3 silenceUnknownCallersEnabled];

  v6 = sub_100004778(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    selfCopy = self;
    v10 = 1024;
    v11 = silenceUnknownCallersEnabled;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@ isSilenceUnknownCallersEnabled(Telephony): %d", &v8, 0x12u);
  }

  return silenceUnknownCallersEnabled;
}

- (BOOL)isSilenceUnknownFaceTimeCallersEnabled
{
  v3 = +[NSUserDefaults tu_defaults];
  silenceUnknownFaceTimeCallersEnabled = [v3 silenceUnknownFaceTimeCallersEnabled];

  v6 = sub_100004778(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    selfCopy = self;
    v10 = 1024;
    v11 = silenceUnknownFaceTimeCallersEnabled;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@ isSilenceUnknownFaceTimeCallersEnabled: %d", &v8, 0x12u);
  }

  return silenceUnknownFaceTimeCallersEnabled;
}

- (int64_t)maxJunkLevel
{
  v3 = +[NSUserDefaults tu_defaults];
  maxJunkLevel = [v3 maxJunkLevel];

  v6 = sub_100004778(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    selfCopy = self;
    v10 = 2048;
    v11 = maxJunkLevel;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@ maxJunkLevel: %ld", &v8, 0x16u);
  }

  return maxJunkLevel;
}

- (BOOL)shouldFilterIncomingCall:(id)call from:(id)from
{
  callCopy = call;
  fromCopy = from;
  isSystemProvider = [fromCopy isSystemProvider];
  if ((isSystemProvider & 1) == 0)
  {
    v12 = sub_100004778(isSystemProvider);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      uUID = [callCopy UUID];
      v36 = 138412290;
      selfCopy3 = uUID;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Not a system call; call filter will allow update with identifier %@", &v36, 0xCu);
    }

    goto LABEL_9;
  }

  isSilenceUnknownTelephonyCallersEnabled = [(CSDUnknownCallFilter *)self isSilenceUnknownTelephonyCallersEnabled];
  isSilenceUnknownFaceTimeCallersEnabled = [(CSDUnknownCallFilter *)self isSilenceUnknownFaceTimeCallersEnabled];
  v11 = sub_100004778(isSilenceUnknownFaceTimeCallersEnabled);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v36 = 138413058;
    selfCopy3 = self;
    v38 = 2112;
    v39 = callCopy;
    v40 = 1024;
    *v41 = isSilenceUnknownTelephonyCallersEnabled;
    *&v41[4] = 1024;
    *&v41[6] = isSilenceUnknownFaceTimeCallersEnabled;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%@ shouldFilterIncoming update=%@ isSilenceUnknownTelephonyCallersEnabled=%d isSilenceUnknownFaceTimeCallersEnabled=%d", &v36, 0x22u);
  }

  if ([fromCopy isTelephonyProvider] & isSilenceUnknownTelephonyCallersEnabled)
  {
    isSilenceUnknownTelephonyCallersEnabled = 1;
    goto LABEL_18;
  }

  if (![fromCopy isFaceTimeProvider])
  {
    isSilenceUnknownTelephonyCallersEnabled = 0;
    goto LABEL_18;
  }

  v15 = +[TUCallCenter sharedInstance];
  conversationManager = [v15 conversationManager];
  participantGroupUUID = [callCopy participantGroupUUID];
  v18 = [conversationManager activeConversationWithGroupUUID:participantGroupUUID];

  if (v18)
  {
    provider = [v18 provider];
    isDefaultProvider = [provider isDefaultProvider];

    if (!isDefaultProvider)
    {

LABEL_9:
      v14 = 0;
      goto LABEL_39;
    }
  }

  if (([callCopy hasVideo] & 1) != 0 || (-[TUFeatureFlags uplevelFTAEnabled](self->_featureFlags, "uplevelFTAEnabled") & 1) == 0)
  {
    isSilenceUnknownTelephonyCallersEnabled = isSilenceUnknownFaceTimeCallersEnabled;
  }

LABEL_18:
  remoteHandle = [callCopy remoteHandle];
  value = [remoteHandle value];
  v23 = [value length];

  if (!v23)
  {
    v27 = sub_100004778(v24);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v36 = 138412546;
      selfCopy3 = self;
      v38 = 2112;
      v39 = callCopy;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%@ update does not have a valid handle, by definition this is an unknown caller update %@", &v36, 0x16u);
    }

    goto LABEL_24;
  }

  if ([(CSDUnknownCallFilter *)self isUnknownCaller:callCopy])
  {
LABEL_24:
    isKnownCaller = [callCopy isKnownCaller];
    v25 = 1;
    goto LABEL_25;
  }

  v25 = 0;
  isKnownCaller = 1;
LABEL_25:
  [callCopy setIsKnownCaller:isKnownCaller];
  if ([(TUFeatureFlags *)self->_featureFlags communicationTrustAdoption])
  {
    commTrustScore = [callCopy commTrustScore];
    v29 = commTrustScore == 1;
  }

  else
  {
    maxJunkLevel = [(CSDUnknownCallFilter *)self maxJunkLevel];
    commTrustScore = [callCopy junkConfidence];
    v29 = commTrustScore > maxJunkLevel;
  }

  v31 = sub_100004778(commTrustScore);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    v32 = @"NO";
    v36 = 138413314;
    selfCopy3 = self;
    if (v25)
    {
      v33 = @"YES";
    }

    else
    {
      v33 = @"NO";
    }

    v38 = 2112;
    v39 = callCopy;
    if (isSilenceUnknownTelephonyCallersEnabled)
    {
      v34 = @"YES";
    }

    else
    {
      v34 = @"NO";
    }

    v40 = 2112;
    if (v29)
    {
      v32 = @"YES";
    }

    *v41 = v33;
    *&v41[8] = 2112;
    v42 = v34;
    v43 = 2112;
    v44 = v32;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "%@ shouldFilterIncoming update=%@ unknownCaller=%@ maybeSilenceCall=%@ isJunk=%@", &v36, 0x34u);
  }

  v14 = v25 & (isSilenceUnknownTelephonyCallersEnabled | v29);
LABEL_39:

  return v14;
}

@end