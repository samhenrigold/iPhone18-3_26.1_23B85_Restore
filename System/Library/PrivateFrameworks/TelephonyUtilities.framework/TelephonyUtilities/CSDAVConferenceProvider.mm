@interface CSDAVConferenceProvider
- (BOOL)isAudioPaused;
- (BOOL)isInputFrequencyMeteringEnabled;
- (BOOL)isMicrophoneMuted;
- (BOOL)isOutputFrequencyMeteringEnabled;
- (BOOL)isSendingAudio;
- (BOOL)isVideoPaused;
- (BOOL)startConnectionAsCaller:(BOOL)caller capabilities:(id)capabilities socket:(int)socket error:(id *)error;
- (BOOL)startConnectionAsCaller:(BOOL)caller remoteInviteDictionary:(id)dictionary capabilities:(id)capabilities destination:(id)destination error:(id *)error;
- (CSDAVConferenceProvider)initWithClientUUID:(id)d serialQueue:(id)queue;
- (CSDAVConferenceProviderDelegate)delegate;
- (int64_t)audioDownlinkToken;
- (int64_t)audioUplinkToken;
- (int64_t)initializeNewCallWithDeviceRole:(int)role reportingHierarchyToken:(id)token;
- (int64_t)inputAudioPowerSpectrumToken;
- (int64_t)outputAudioPowerSpectrumToken;
- (void)cancel;
- (void)conference:(id)conference cancelRelayRequest:(int64_t)request requestDict:(id)dict;
- (void)conference:(id)conference closeConnectionForCallID:(int64_t)d;
- (void)conference:(id)conference didReceiveData:(id)data forCallID:(int64_t)d;
- (void)conference:(id)conference didStartSession:(BOOL)session withUserInfo:(id)info;
- (void)conference:(id)conference didStopWithCallID:(int64_t)d error:(id)error;
- (void)conference:(id)conference didStopWithCallID:(int64_t)d error:(id)error callMetadata:(id)metadata;
- (void)conference:(id)conference inititiateRelayRequest:(int64_t)request requestDict:(id)dict;
- (void)conference:(id)conference receivedFirstRemoteFrameForCallID:(int64_t)d;
- (void)conference:(id)conference remoteAudioPaused:(BOOL)paused callID:(int64_t)d;
- (void)conference:(id)conference remoteScreenAttributesChanged:(id)changed callID:(int64_t)d;
- (void)conference:(id)conference remoteVideoAttributesChanged:(id)changed callID:(int64_t)d;
- (void)conference:(id)conference remoteVideoPaused:(BOOL)paused callID:(int64_t)d;
- (void)conference:(id)conference sendRelayUpdate:(int64_t)update updateDict:(id)dict;
- (void)conference:(id)conference updateInputFrequencyLevel:(id)level;
- (void)conference:(id)conference updateInputMeterLevel:(float)level;
- (void)conference:(id)conference updateOutputFrequencyLevel:(id)level;
- (void)conference:(id)conference updateOutputMeterLevel:(float)level;
- (void)conference:(id)conference videoQualityNotificationForCallID:(int64_t)d isDegraded:(BOOL)degraded isRemote:(BOOL)remote;
- (void)conference:(id)conference withCallID:(int64_t)d didPauseAudio:(BOOL)audio error:(id)error;
- (void)conference:(id)conference withCallID:(int64_t)d didPauseVideo:(BOOL)video error:(id)error;
- (void)conference:(id)conference withCallID:(int64_t)d networkHint:(BOOL)hint;
- (void)conference:(id)conference withCallID:(int64_t)d remoteMediaStalled:(BOOL)stalled;
- (void)dealloc;
- (void)inviteDictionaryForCallID:(int64_t)d remoteInviteDictionary:(id)dictionary nonCellularCandidateTimeout:(double)timeout block:(id)block queue:(id)queue;
- (void)sendData:(id)data;
- (void)serverDiedForConference:(id)conference;
- (void)setAudioPaused:(BOOL)paused;
- (void)setInputFrequencyMeteringEnabled:(BOOL)enabled;
- (void)setLocalPortraitAspectRatio:(CGSize)ratio localLandscapeAspectRatio:(CGSize)aspectRatio;
- (void)setMicrophoneMuted:(BOOL)muted;
- (void)setOutputFrequencyMeteringEnabled:(BOOL)enabled;
- (void)setPeerReportingIdentifier:(id)identifier sessionIdentifier:(id)sessionIdentifier;
- (void)setRemoteVideoPresentationSize:(CGSize)size;
- (void)setRemoteVideoPresentationState:(unsigned int)state;
- (void)setSendingAudio:(BOOL)audio;
- (void)setVideoPaused:(BOOL)paused;
- (void)stop;
- (void)updateCapabilities:(id)capabilities;
@end

@implementation CSDAVConferenceProvider

- (CSDAVConferenceProvider)initWithClientUUID:(id)d serialQueue:(id)queue
{
  dCopy = d;
  queueCopy = queue;
  v18.receiver = self;
  v18.super_class = CSDAVConferenceProvider;
  v8 = [(CSDAVConferenceProvider *)&v18 init];
  v9 = v8;
  if (v8)
  {
    v10 = sub_100004778(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      uUIDString = [dCopy UUIDString];
      *buf = 138412290;
      v20 = uUIDString;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Initializing AVConference with client UUID %@", buf, 0xCu);
    }

    v12 = [[AVConference alloc] initWithClientUUID:dCopy transportType:1];
    conference = v9->_conference;
    v9->_conference = v12;

    v14 = v9->_conference;
    if (v14)
    {
      [(AVConference *)v14 setDelegate:v9];
      v15 = [[TUVideoDeviceController alloc] initWithSerialQueue:queueCopy];
      videoDeviceController = v9->_videoDeviceController;
      v9->_videoDeviceController = v15;

      [(TUVideoDeviceController *)v9->_videoDeviceController setIgnoreStartPreview:1];
    }

    else
    {

      v9 = 0;
    }
  }

  return v9;
}

- (void)dealloc
{
  conference = [(CSDAVConferenceProvider *)self conference];
  [conference setDelegate:0];

  v4.receiver = self;
  v4.super_class = CSDAVConferenceProvider;
  [(CSDAVConferenceProvider *)&v4 dealloc];
}

- (BOOL)isInputFrequencyMeteringEnabled
{
  conference = [(CSDAVConferenceProvider *)self conference];
  isInputFrequencyMeteringEnabled = [conference isInputFrequencyMeteringEnabled];

  return isInputFrequencyMeteringEnabled;
}

- (void)setInputFrequencyMeteringEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  conference = [(CSDAVConferenceProvider *)self conference];
  [conference setInputFrequencyMeteringEnabled:enabledCopy];
}

- (BOOL)isOutputFrequencyMeteringEnabled
{
  conference = [(CSDAVConferenceProvider *)self conference];
  isOutputFrequencyMeteringEnabled = [conference isOutputFrequencyMeteringEnabled];

  return isOutputFrequencyMeteringEnabled;
}

- (void)setOutputFrequencyMeteringEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  conference = [(CSDAVConferenceProvider *)self conference];
  [conference setOutputFrequencyMeteringEnabled:enabledCopy];
}

- (int64_t)inputAudioPowerSpectrumToken
{
  conference = [(CSDAVConferenceProvider *)self conference];
  inputAudioPowerSpectrumToken = [conference inputAudioPowerSpectrumToken];

  return inputAudioPowerSpectrumToken;
}

- (int64_t)outputAudioPowerSpectrumToken
{
  conference = [(CSDAVConferenceProvider *)self conference];
  outputAudioPowerSpectrumToken = [conference outputAudioPowerSpectrumToken];

  return outputAudioPowerSpectrumToken;
}

- (int64_t)audioUplinkToken
{
  conference = [(CSDAVConferenceProvider *)self conference];
  audioUplinkToken = [conference audioUplinkToken];

  return audioUplinkToken;
}

- (int64_t)audioDownlinkToken
{
  conference = [(CSDAVConferenceProvider *)self conference];
  audioDownlinkToken = [conference audioDownlinkToken];

  return audioDownlinkToken;
}

- (BOOL)isMicrophoneMuted
{
  conference = [(CSDAVConferenceProvider *)self conference];
  isMicrophoneMuted = [conference isMicrophoneMuted];

  return isMicrophoneMuted;
}

- (void)setMicrophoneMuted:(BOOL)muted
{
  mutedCopy = muted;
  conference = [(CSDAVConferenceProvider *)self conference];
  [conference setMicrophoneMuted:mutedCopy];
}

- (BOOL)isSendingAudio
{
  v11 = 0;
  conference = [(CSDAVConferenceProvider *)self conference];
  v10 = 0;
  v4 = [conference getIsSendingAudio:&v11 callID:-[CSDAVConferenceProvider callID](self error:{"callID"), &v10}];
  v5 = v10;

  if (v4)
  {
    v7 = v11;
  }

  else
  {
    v8 = sub_100004778(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[WARN] Error calling getIsSendingAudio: %@", buf, 0xCu);
    }

    v7 = 0;
  }

  return v7 & 1;
}

- (void)setSendingAudio:(BOOL)audio
{
  audioCopy = audio;
  selfCopy = self;
  conference = [(CSDAVConferenceProvider *)self conference];
  v9 = 0;
  LOBYTE(selfCopy) = [conference setSendingAudio:audioCopy callID:-[CSDAVConferenceProvider callID](selfCopy error:{"callID"), &v9}];
  v6 = v9;

  if ((selfCopy & 1) == 0)
  {
    v8 = sub_100004778(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[WARN] Error calling setSendingAudio: %@", buf, 0xCu);
    }
  }
}

- (BOOL)isAudioPaused
{
  v11 = 0;
  conference = [(CSDAVConferenceProvider *)self conference];
  v10 = 0;
  v4 = [conference getIsAudioPaused:&v11 callID:-[CSDAVConferenceProvider callID](self error:{"callID"), &v10}];
  v5 = v10;

  if (v4)
  {
    v7 = v11;
  }

  else
  {
    v8 = sub_100004778(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[WARN] Error calling getIsAudioPaused: %@", buf, 0xCu);
    }

    v7 = 0;
  }

  return v7 & 1;
}

- (void)setAudioPaused:(BOOL)paused
{
  pausedCopy = paused;
  v5 = sub_100004778(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    conference = [(CSDAVConferenceProvider *)self conference];
    *buf = 67109378;
    LODWORD(v14[0]) = pausedCopy;
    WORD2(v14[0]) = 2112;
    *(v14 + 6) = conference;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Setting pause audio to %d for %@", buf, 0x12u);
  }

  conference2 = [(CSDAVConferenceProvider *)self conference];
  v12 = 0;
  v8 = [conference2 setPauseAudio:pausedCopy callID:-[CSDAVConferenceProvider callID](self error:{"callID"), &v12}];
  v9 = v12;

  if ((v8 & 1) == 0)
  {
    v11 = sub_100004778(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14[0] = v9;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[WARN] Error calling setPauseAudio: %@", buf, 0xCu);
    }
  }
}

- (BOOL)isVideoPaused
{
  v11 = 0;
  conference = [(CSDAVConferenceProvider *)self conference];
  v10 = 0;
  v4 = [conference getIsVideoPaused:&v11 callID:-[CSDAVConferenceProvider callID](self error:{"callID"), &v10}];
  v5 = v10;

  if (v4)
  {
    v7 = v11;
  }

  else
  {
    v8 = sub_100004778(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[WARN] Error calling getIsVideoPaused: %@", buf, 0xCu);
    }

    v7 = 0;
  }

  return v7 & 1;
}

- (void)setVideoPaused:(BOOL)paused
{
  pausedCopy = paused;
  v5 = sub_100004778(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    conference = [(CSDAVConferenceProvider *)self conference];
    *buf = 67109378;
    LODWORD(v14[0]) = pausedCopy;
    WORD2(v14[0]) = 2112;
    *(v14 + 6) = conference;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Setting pause video to %d for %@", buf, 0x12u);
  }

  conference2 = [(CSDAVConferenceProvider *)self conference];
  v12 = 0;
  v8 = [conference2 setPauseVideo:pausedCopy callID:-[CSDAVConferenceProvider callID](self error:{"callID"), &v12}];
  v9 = v12;

  if ((v8 & 1) == 0)
  {
    v11 = sub_100004778(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14[0] = v9;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[WARN] Error calling setPauseVideo: %@", buf, 0xCu);
    }
  }
}

- (void)setRemoteVideoPresentationSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v6 = sub_100004778(self);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v14.width = width;
    v14.height = height;
    v7 = NSStringFromSize(v14);
    conference = [(CSDAVConferenceProvider *)self conference];
    v10 = 138412546;
    v11 = v7;
    v12 = 2112;
    v13 = conference;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Setting conference visual rectangle of size %@ for %@", &v10, 0x16u);
  }

  conference2 = [(CSDAVConferenceProvider *)self conference];
  [conference2 setConferenceVisualRectangle:-[CSDAVConferenceProvider callID](self forCallID:{"callID"), 0.0, 0.0, width, height}];
}

- (void)setRemoteVideoPresentationState:(unsigned int)state
{
  v3 = *&state;
  v5 = sub_100004778(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [NSNumber numberWithUnsignedInt:v3];
    conference = [(CSDAVConferenceProvider *)self conference];
    v9 = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = conference;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Setting conference state %@ for %@", &v9, 0x16u);
  }

  conference2 = [(CSDAVConferenceProvider *)self conference];
  [conference2 setConferenceState:v3 forCallID:{-[CSDAVConferenceProvider callID](self, "callID")}];
}

- (void)setLocalPortraitAspectRatio:(CGSize)ratio localLandscapeAspectRatio:(CGSize)aspectRatio
{
  height = aspectRatio.height;
  width = aspectRatio.width;
  v6 = ratio.height;
  v7 = ratio.width;
  v9 = sub_100004778(self);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v20.width = v7;
    v20.height = v6;
    v10 = NSStringFromSize(v20);
    v21.width = width;
    v21.height = height;
    v11 = NSStringFromSize(v21);
    conference = [(CSDAVConferenceProvider *)self conference];
    v14 = 138412802;
    v15 = v10;
    v16 = 2112;
    v17 = v11;
    v18 = 2112;
    v19 = conference;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Setting local portrait aspect ratio %@ and local landscape aspect ratio %@ for %@", &v14, 0x20u);
  }

  videoDeviceController = [(CSDAVConferenceProvider *)self videoDeviceController];
  [videoDeviceController setLocalPortraitAspectRatio:v7 localLandscapeAspectRatio:{v6, width, height}];
}

- (void)setPeerReportingIdentifier:(id)identifier sessionIdentifier:(id)sessionIdentifier
{
  identifierCopy = identifier;
  sessionIdentifierCopy = sessionIdentifier;
  v8 = sub_100004778(sessionIdentifierCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    conference = [(CSDAVConferenceProvider *)self conference];
    v11 = 138412802;
    v12 = identifierCopy;
    v13 = 2112;
    v14 = sessionIdentifierCopy;
    v15 = 2112;
    v16 = conference;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Setting peer reporting identifer %@ and session identifier %@ for %@", &v11, 0x20u);
  }

  conference2 = [(CSDAVConferenceProvider *)self conference];
  [conference2 setPeerReportingIdentifier:identifierCopy sessionIdentifier:sessionIdentifierCopy forCallID:{-[CSDAVConferenceProvider callID](self, "callID")}];
}

- (int64_t)initializeNewCallWithDeviceRole:(int)role reportingHierarchyToken:(id)token
{
  v4 = *&role;
  tokenCopy = token;
  conference = [(CSDAVConferenceProvider *)self conference];
  v8 = [conference initializeNewCallWithDeviceRole:v4 reportingHierarchyToken:tokenCopy];

  [(CSDAVConferenceProvider *)self setCallID:v8];
  callID = [(CSDAVConferenceProvider *)self callID];
  if (callID <= 0)
  {
    v10 = sub_100004778(callID);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10047E944(self, v4, v10);
    }
  }

  return [(CSDAVConferenceProvider *)self callID];
}

- (BOOL)startConnectionAsCaller:(BOOL)caller remoteInviteDictionary:(id)dictionary capabilities:(id)capabilities destination:(id)destination error:(id *)error
{
  callerCopy = caller;
  dictionaryCopy = dictionary;
  capabilitiesCopy = capabilities;
  destinationCopy = destination;
  v15 = sub_100004778(destinationCopy);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v19[0] = 67110146;
    v19[1] = callerCopy;
    v20 = 2048;
    callID = [(CSDAVConferenceProvider *)self callID];
    v22 = 2112;
    v23 = dictionaryCopy;
    v24 = 2112;
    v25 = capabilitiesCopy;
    v26 = 2112;
    v27 = destinationCopy;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Starting AVConference connection with isCaller=%d callID=%ld remoteInviteDictionary=%@ capabilities=%@ destination=%@", v19, 0x30u);
  }

  conference = [(CSDAVConferenceProvider *)self conference];
  v17 = [conference startConnectionWithCallID:-[CSDAVConferenceProvider callID](self inviteData:"callID") isCaller:dictionaryCopy capabilities:callerCopy destination:capabilitiesCopy error:{destinationCopy, error}];

  return v17;
}

- (BOOL)startConnectionAsCaller:(BOOL)caller capabilities:(id)capabilities socket:(int)socket error:(id *)error
{
  callerCopy = caller;
  capabilitiesCopy = capabilities;
  v11 = sub_100004778(capabilitiesCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109890;
    v17 = callerCopy;
    v18 = 2048;
    callID = [(CSDAVConferenceProvider *)self callID];
    v20 = 2112;
    v21 = capabilitiesCopy;
    v22 = 1024;
    socketCopy = socket;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Starting AVConference connection with isCaller=%d callID=%ld capabilities=%@ socket=%d", buf, 0x22u);
  }

  conference = [(CSDAVConferenceProvider *)self conference];
  LODWORD(v15) = socket;
  v13 = [conference startConnectionWithCallID:-[CSDAVConferenceProvider callID](self usingInviteData:"callID") isCaller:0 relayResponseDict:callerCopy didOriginateRelayRequest:0 capabilities:0 idsSocket:capabilitiesCopy error:{v15, error}];

  return v13;
}

- (void)inviteDictionaryForCallID:(int64_t)d remoteInviteDictionary:(id)dictionary nonCellularCandidateTimeout:(double)timeout block:(id)block queue:(id)queue
{
  queueCopy = queue;
  blockCopy = block;
  dictionaryCopy = dictionary;
  conference = [(CSDAVConferenceProvider *)self conference];
  [conference inviteDictionaryForCallID:d remoteInviteDictionary:dictionaryCopy nonCellularCandidateTimeout:blockCopy block:queueCopy queue:timeout];
}

- (void)stop
{
  v3 = sub_100004778(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134217984;
    callID = [(CSDAVConferenceProvider *)self callID];
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Stopping AVConference with callID=%ld", &v5, 0xCu);
  }

  conference = [(CSDAVConferenceProvider *)self conference];
  [conference stopCallID:{-[CSDAVConferenceProvider callID](self, "callID")}];
}

- (void)cancel
{
  v3 = sub_100004778(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134217984;
    callID = [(CSDAVConferenceProvider *)self callID];
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Canceling AVConference with callID=%ld", &v5, 0xCu);
  }

  conference = [(CSDAVConferenceProvider *)self conference];
  [conference cancelCallID:{-[CSDAVConferenceProvider callID](self, "callID")}];
}

- (void)updateCapabilities:(id)capabilities
{
  capabilitiesCopy = capabilities;
  conference = [(CSDAVConferenceProvider *)self conference];
  [conference updateCapabilities:capabilitiesCopy forCallID:{-[CSDAVConferenceProvider callID](self, "callID")}];
}

- (void)sendData:(id)data
{
  dataCopy = data;
  conference = [(CSDAVConferenceProvider *)self conference];
  [conference sendData:dataCopy forCallID:-[CSDAVConferenceProvider callID](self encrypted:{"callID"), 0}];
}

- (void)conference:(id)conference didStartSession:(BOOL)session withUserInfo:(id)info
{
  sessionCopy = session;
  infoCopy = info;
  v8 = sub_100004778(infoCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412802;
    selfCopy = self;
    v13 = 1024;
    v14 = sessionCopy;
    v15 = 2112;
    v16 = infoCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "conference=%@ didStartSession=%d userInfo=%@", &v11, 0x1Cu);
  }

  v9 = [infoCopy objectForKeyedSubscript:GKSDidStartParameter_Error];
  delegate = [(CSDAVConferenceProvider *)self delegate];
  [delegate conferenceProvider:self didStartSession:sessionCopy error:v9];
}

- (void)conference:(id)conference didStopWithCallID:(int64_t)d error:(id)error
{
  errorCopy = error;
  v8 = sub_100004778(errorCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134218242;
    dCopy = d;
    v12 = 2112;
    v13 = errorCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "callID=%ld error=%@", &v10, 0x16u);
  }

  delegate = [(CSDAVConferenceProvider *)self delegate];
  [delegate conferenceProvider:self didStopWithError:errorCopy callMetadata:0];
}

- (void)conference:(id)conference didStopWithCallID:(int64_t)d error:(id)error callMetadata:(id)metadata
{
  errorCopy = error;
  metadataCopy = metadata;
  v11 = sub_100004778(metadataCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 134218498;
    dCopy = d;
    v15 = 2112;
    v16 = errorCopy;
    v17 = 2112;
    v18 = metadataCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "callID=%ld error=%@ callMetadata=%@", &v13, 0x20u);
  }

  delegate = [(CSDAVConferenceProvider *)self delegate];
  [delegate conferenceProvider:self didStopWithError:errorCopy callMetadata:metadataCopy];
}

- (void)conference:(id)conference closeConnectionForCallID:(int64_t)d
{
  v6 = sub_100004778(self);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134217984;
    dCopy = d;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "callID=%ld", &v8, 0xCu);
  }

  delegate = [(CSDAVConferenceProvider *)self delegate];
  [delegate connectionClosedForConferenceProvider:self];
}

- (void)conference:(id)conference updateInputFrequencyLevel:(id)level
{
  levelCopy = level;
  delegate = [(CSDAVConferenceProvider *)self delegate];
  [delegate conferenceProvider:self updateInputFrequencyLevel:levelCopy];
}

- (void)conference:(id)conference updateOutputFrequencyLevel:(id)level
{
  levelCopy = level;
  delegate = [(CSDAVConferenceProvider *)self delegate];
  [delegate conferenceProvider:self updateOutputFrequencyLevel:levelCopy];
}

- (void)conference:(id)conference updateInputMeterLevel:(float)level
{
  delegate = [(CSDAVConferenceProvider *)self delegate];
  *&v6 = level;
  [delegate conferenceProvider:self updateInputLevel:v6];
}

- (void)conference:(id)conference updateOutputMeterLevel:(float)level
{
  delegate = [(CSDAVConferenceProvider *)self delegate];
  *&v6 = level;
  [delegate conferenceProvider:self updateOutputLevel:v6];
}

- (void)conference:(id)conference receivedFirstRemoteFrameForCallID:(int64_t)d
{
  v6 = sub_100004778(self);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134217984;
    dCopy = d;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "callID=%ld", &v8, 0xCu);
  }

  delegate = [(CSDAVConferenceProvider *)self delegate];
  [delegate conferenceProviderReceivedFirstRemoteFrame:self];
}

- (void)conference:(id)conference remoteScreenAttributesChanged:(id)changed callID:(int64_t)d
{
  changedCopy = changed;
  v7 = sub_100004778(changedCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = changedCopy;
    v10 = 2048;
    dCopy = d;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "screenAttributes=%@ callID=%ld", &v8, 0x16u);
  }
}

- (void)conference:(id)conference remoteVideoAttributesChanged:(id)changed callID:(int64_t)d
{
  changedCopy = changed;
  v7 = sub_100004778(changedCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = changedCopy;
    v10 = 2048;
    dCopy = d;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "videoAttributes=%@ callID=%ld", &v8, 0x16u);
  }
}

- (void)conference:(id)conference withCallID:(int64_t)d didPauseAudio:(BOOL)audio error:(id)error
{
  audioCopy = audio;
  errorCopy = error;
  v10 = sub_100004778(errorCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 134218498;
    dCopy = d;
    v14 = 1024;
    v15 = audioCopy;
    v16 = 2112;
    v17 = errorCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "callID=%ld didPauseAudio=%d error=%@", &v12, 0x1Cu);
  }

  delegate = [(CSDAVConferenceProvider *)self delegate];
  [delegate conferenceProvider:self didPauseAudio:audioCopy error:errorCopy];
}

- (void)conference:(id)conference remoteAudioPaused:(BOOL)paused callID:(int64_t)d
{
  pausedCopy = paused;
  v7 = sub_100004778(self);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109376;
    v8[1] = pausedCopy;
    v9 = 2048;
    dCopy = d;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "didPause=%d callID=%ld", v8, 0x12u);
  }
}

- (void)conference:(id)conference remoteVideoPaused:(BOOL)paused callID:(int64_t)d
{
  pausedCopy = paused;
  v8 = sub_100004778(self);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10[0] = 67109376;
    v10[1] = pausedCopy;
    v11 = 2048;
    dCopy = d;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "didPause=%d callID=%ld", v10, 0x12u);
  }

  delegate = [(CSDAVConferenceProvider *)self delegate];
  [delegate conferenceProvider:self remoteVideoPaused:pausedCopy];
}

- (void)conference:(id)conference withCallID:(int64_t)d didPauseVideo:(BOOL)video error:(id)error
{
  videoCopy = video;
  errorCopy = error;
  v10 = sub_100004778(errorCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 134218498;
    dCopy = d;
    v14 = 1024;
    v15 = videoCopy;
    v16 = 2112;
    v17 = errorCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "callID=%ld didPauseVideo=%d error=%@", &v12, 0x1Cu);
  }

  delegate = [(CSDAVConferenceProvider *)self delegate];
  [delegate conferenceProvider:self didPauseVideo:videoCopy error:errorCopy];
}

- (void)conference:(id)conference withCallID:(int64_t)d remoteMediaStalled:(BOOL)stalled
{
  stalledCopy = stalled;
  delegate = [(CSDAVConferenceProvider *)self delegate];
  [delegate conferenceProvider:self remoteMediaStalled:stalledCopy];

  v10 = sub_100004778(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134218240;
    dCopy = d;
    v13 = 1024;
    v14 = stalledCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[WARN] callID=%ld isStalled=%d", &v11, 0x12u);
  }
}

- (void)serverDiedForConference:(id)conference
{
  v4 = sub_100004778(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_10047E9E0(v4);
  }

  delegate = [(CSDAVConferenceProvider *)self delegate];
  [delegate serverDiedForConferenceProvider:self];
}

- (void)conference:(id)conference inititiateRelayRequest:(int64_t)request requestDict:(id)dict
{
  dictCopy = dict;
  v7 = sub_100004778(dictCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134218242;
    requestCopy = request;
    v10 = 2112;
    v11 = dictCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "callID=%ld parameters=%@", &v8, 0x16u);
  }
}

- (void)conference:(id)conference sendRelayUpdate:(int64_t)update updateDict:(id)dict
{
  dictCopy = dict;
  v7 = sub_100004778(dictCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134218242;
    updateCopy = update;
    v10 = 2112;
    v11 = dictCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "callID=%ld parameters=%@", &v8, 0x16u);
  }
}

- (void)conference:(id)conference cancelRelayRequest:(int64_t)request requestDict:(id)dict
{
  dictCopy = dict;
  v7 = sub_100004778(dictCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134218242;
    requestCopy = request;
    v10 = 2112;
    v11 = dictCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "callID=%ld parameters=%@", &v8, 0x16u);
  }
}

- (void)conference:(id)conference videoQualityNotificationForCallID:(int64_t)d isDegraded:(BOOL)degraded isRemote:(BOOL)remote
{
  remoteCopy = remote;
  degradedCopy = degraded;
  v9 = sub_100004778(self);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134218496;
    dCopy = d;
    v12 = 1024;
    v13 = degradedCopy;
    v14 = 1024;
    v15 = remoteCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "callID=%ld isDegraded=%d isRemoteVideo=%d", &v10, 0x18u);
  }
}

- (void)conference:(id)conference withCallID:(int64_t)d networkHint:(BOOL)hint
{
  hintCopy = hint;
  v7 = sub_100004778(self);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134218240;
    dCopy = d;
    v10 = 1024;
    v11 = hintCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[WARN] callID=%ld isNetworkBad=%d", &v8, 0x12u);
  }
}

- (void)conference:(id)conference didReceiveData:(id)data forCallID:(int64_t)d
{
  dataCopy = data;
  v8 = sub_100004778(dataCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = @"non-nil";
    if (!dataCopy)
    {
      v9 = @"nil";
    }

    v11 = 134218242;
    dCopy = d;
    v13 = 2112;
    v14 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "callID=%ld didReceiveData=%@", &v11, 0x16u);
  }

  delegate = [(CSDAVConferenceProvider *)self delegate];
  [delegate conferenceProvider:self didReceiveData:dataCopy forCallID:d];
}

- (CSDAVConferenceProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end