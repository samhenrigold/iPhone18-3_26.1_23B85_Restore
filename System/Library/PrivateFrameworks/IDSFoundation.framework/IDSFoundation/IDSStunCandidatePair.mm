@interface IDSStunCandidatePair
+ (IDSStunCandidatePair)candidatePairWithLocalCandidate:(id)candidate remoteCandidate:(id)remoteCandidate sessionID:(id)d delegate:(id)delegate;
- (BOOL)_didLocalExternalAddressChange:(const sockaddr *)change;
- (BOOL)_optionallyCheckEncMarker:(id)marker;
- (BOOL)isActualRelayStunCandidatePair;
- (BOOL)isConstrained;
- (BOOL)isDelegated;
- (BOOL)isEqual:(id)equal;
- (BOOL)isExpensive;
- (BOOL)isP2P;
- (BOOL)isRelayStunCandidatePair;
- (BOOL)isValidRelayStunCandidatePair;
- (BOOL)processDataMessageErrorIndication:(id)indication;
- (BOOL)processInfoIndication:(id)indication arrivalTime:(double)time;
- (BOOL)processInfoResponse:(id)response packetBuffer:(id *)buffer headerOverhead:(unint64_t)overhead;
- (BOOL)processParticipantUpdateIndication:(id)indication arrivalTime:(double)time;
- (BOOL)processParticipantUpdateResponse:(id)response;
- (BOOL)processPluginControlIndication:(id)indication;
- (BOOL)processPluginRegistrationResponse:(id)response;
- (BOOL)processPutMaterialResponse:(id)response;
- (BOOL)processQUICCallModeUpdateResponse:(id)response;
- (BOOL)processQUICChannelConfigResponse:(id)response;
- (BOOL)processQUICErrorIndication:(id)indication;
- (BOOL)processQUICErrorResponse:(id)response packetBuffer:(id *)buffer startTime:(double)time headerOverhead:(unint64_t)overhead;
- (BOOL)processQUICGetMaterialResponse:(id)response;
- (BOOL)processQUICInfoResponse:(id)response receivedBytes:(unint64_t)bytes;
- (BOOL)processQUICParticipantUpdateIndication:(id)indication;
- (BOOL)processQUICParticipantUpdateResponse:(id)response;
- (BOOL)processQUICPluginControlIndication:(id)indication;
- (BOOL)processQUICPluginRegistrationResponse:(id)response;
- (BOOL)processQUICPutMaterialIndication:(id)indication;
- (BOOL)processQUICPutMaterialResponse:(id)response;
- (BOOL)processQUICSessionInfoIndication:(id)indication arrivalTime:(double)time isLightweightParticipant:(BOOL)participant;
- (BOOL)processQUICSessionInfoResponse:(id)response receivedBytes:(unint64_t)bytes isLightweightParticipant:(BOOL)participant;
- (BOOL)processQUICStatsResponse:(id)response arrivalTime:(double)time;
- (BOOL)processQUICTestResponse:(id)response arrivalTime:(double)time;
- (BOOL)processSessionInfoIndication:(id)indication arrivalTime:(double)time isLightweightParticipant:(BOOL)participant;
- (BOOL)processSessionInfoResponse:(id)response packetBuffer:(id *)buffer headerOverhead:(unint64_t)overhead isLightweightParticipant:(BOOL)participant;
- (BOOL)processStatsResponse:(id)response arrivalTime:(double)time;
- (BOOL)processStunErrorResponse:(id)response packetBuffer:(id *)buffer headerOverhead:(unint64_t)overhead;
- (BOOL)processTestResponse:(id)response arrivalTime:(double)time;
- (BOOL)removeProtoRequest:(unint64_t)request;
- (BOOL)sendQUICCallModeUpdateRequest:(id)request;
- (BOOL)sendQUICChannelConfigRequest:(id)request;
- (BOOL)sendQUICGetMaterialRequest:(id)request;
- (BOOL)sendQUICPutMaterialRequest:(id)request;
- (BOOL)shouldProcessStunResponse:(id)response;
- (BOOL)shouldRexmitStunRequest:(id)request;
- (IDSStunCandidatePair)initWithLocalCandidate:(id)candidate remoteCandidate:(id)remoteCandidate sessionID:(id)d delegate:(id)delegate;
- (NSString)description;
- (NSString)interfaceName;
- (NSString)kindSuffix;
- (id)_pluginNameForProtoRequest:(unint64_t)request;
- (id)_pluginNameForStunRequest:(id)request;
- (id)candidatePairToken;
- (int64_t)ipFamily;
- (int64_t)kind;
- (unint64_t)createAliasForParticipantID:(unint64_t)d salt:(id)salt;
- (unint64_t)getParticipantIDHash:(id)hash;
- (unint64_t)getStunSentBytes:(id)bytes;
- (unint64_t)participantIDForAlias:(unint64_t)alias salt:(id)salt;
- (unint64_t)totalBytesReceived;
- (unint64_t)totalBytesSent;
- (unint64_t)totalPacketsReceived;
- (unint64_t)totalPacketsSent;
- (unsigned)hbCounter;
- (unsigned)nextSessionInfoReqID;
- (void)_addParticipantIDs:(id)ds toParticipantIDMap:(id)map;
- (void)_handleLinkProbingTimer;
- (void)_handleNoSessionStateTimer;
- (void)_handleReallocTimer;
- (void)_handleSessionConnectedTimer;
- (void)_handleSessionConvergenceTimer;
- (void)_handleSessionGoAwayTimer;
- (void)_notifyQREventAdded:(id)added;
- (void)_notifySessionStreamInfoReceived:(id)received withParticipants:(id)participants lightweightParticipants:(id)lightweightParticipants joinedParticipantInfo:(id)info leftParticipantInfo:(id)participantInfo updatedParticipantInfo:(id)updatedParticipantInfo sentBytes:(unint64_t)bytes receivedBytes:(unint64_t)self0 offlineRequest:(BOOL)self1 streamInfoRequest:(BOOL)self2 status:(unsigned int)self3 commandFlag:(unsigned int)self4 isIndication:(BOOL)self5;
- (void)_removeProtoPluginRegistrationRequest:(unint64_t)request;
- (void)_savePluginNameForProtoRequest:(unint64_t)request pluginName:(id)name;
- (void)_savePluginNameForRequest:(id)request pluginName:(id)name;
- (void)_startNoSessionStateTimer;
- (void)_startReallocTimer;
- (void)_stopNoSessionStateTimer;
- (void)_stopReallocTimer;
- (void)addProtoRequest:(unint64_t)request;
- (void)addStunRequest:(id)request;
- (void)dealloc;
- (void)deriveAES128CTRKeys:(id)keys;
- (void)initParticipantIDMap:(id)map;
- (void)invalidate;
- (void)processSessionInfoRequestTimeout:(id)timeout;
- (void)receiveLinkTestStatsPacket:(id)packet;
- (void)removeFromParticipantIDMap:(id)map;
- (void)removeStunRequest:(id)request;
- (void)sendInfoRequest:(id)request;
- (void)sendLinkTestStatsPacket:(id)packet;
- (void)sendParticipantUpdateRequest:(id)request options:(id)options;
- (void)sendPutMaterialRequest:(id)request options:(id)options;
- (void)sendQRPluginRegistrationRequest:(id)request options:(id)options;
- (void)sendQUICInfoRequest;
- (void)sendQUICParticipantUpdateRequestWithOptions:(id)options;
- (void)sendQUICPluginRegistrationRequestWithOptions:(id)options;
- (void)sendQUICSessionInfoRequestWithOptions:(id)options;
- (void)sendQUICStatsRequestWithOptions:(id)options;
- (void)sendQUICTestRequest;
- (void)sendSessionInfoRequest:(id)request options:(id)options;
- (void)sendStatsRequest:(id)request options:(id)options;
- (void)sendTestRequest:(id)request;
- (void)setChannelSettings:(unsigned int)settings;
- (void)setDelegatedLinkID:(char)d;
- (void)setIsQUIC:(BOOL)c;
- (void)setLinkUUIDWithRelayLinkIDs;
- (void)setPendingNoSessionState:(BOOL)state;
- (void)setPendingRealloc:(BOOL)realloc;
- (void)setPropertiesWithReallocCandidatePair:(id)pair reallocToken:(id)token;
- (void)setPropertiesWithRelaySessionInfo:(id)info sessionInfoDict:(id)dict enableSKE:(BOOL)e;
- (void)setProtocolVersion:(unsigned __int8)version isInitiator:(BOOL)initiator enableSKE:(BOOL)e;
- (void)setRelayLinkID:(unsigned __int16)d;
- (void)setRemoteRelayLinkID:(unsigned __int16)d;
- (void)setServerIsDegraded:(BOOL)degraded;
- (void)setTestOptionsFromUserDefaults;
- (void)startLinkProbingTimer:(unsigned int)timer;
- (void)startSessionConnectedTimer:(int)timer block:(id)block;
- (void)startSessionConvergenceTimer:(int)timer block:(id)block;
- (void)startSessionGoAwayTimer:(int)timer block:(id)block;
- (void)stopLinkProbingTimer;
- (void)stopSessionConnectedTimer;
- (void)stopSessionConvergenceTimer;
- (void)stopSessionGoAwayTimer;
- (void)switchToOptimizedStatsInterval;
- (void)synthesizeNat64WithPrefix;
- (void)updateParticipantIDMap:(id)map;
- (void)updateStunSentBytes:(int64_t)bytes requestID:(id)d;
- (void)updateURIToParticipantIDMapping:(id)mapping;
@end

@implementation IDSStunCandidatePair

+ (IDSStunCandidatePair)candidatePairWithLocalCandidate:(id)candidate remoteCandidate:(id)remoteCandidate sessionID:(id)d delegate:(id)delegate
{
  delegateCopy = delegate;
  dCopy = d;
  remoteCandidateCopy = remoteCandidate;
  candidateCopy = candidate;
  v13 = [[IDSStunCandidatePair alloc] initWithLocalCandidate:candidateCopy remoteCandidate:remoteCandidateCopy sessionID:dCopy delegate:delegateCopy];

  return v13;
}

- (IDSStunCandidatePair)initWithLocalCandidate:(id)candidate remoteCandidate:(id)remoteCandidate sessionID:(id)d delegate:(id)delegate
{
  candidateCopy = candidate;
  remoteCandidateCopy = remoteCandidate;
  dCopy = d;
  delegateCopy = delegate;
  v41.receiver = self;
  v41.super_class = IDSStunCandidatePair;
  v14 = [(IDSStunCandidatePair *)&v41 init];
  if (v14)
  {
    v15 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v40) = 0;
      _os_log_impl(&dword_1A7AD9000, v15, OS_LOG_TYPE_DEFAULT, "IDSStunCandidatePair:initWithLocalCandidate", &v40, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"IDSStunCandidatePair:initWithLocalCandidate", v16, v17, v18, v19, v20, v40);
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"IDSStunCandidatePair:initWithLocalCandidate", v21, v22, v23, v24, v40);
        }
      }
    }

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    connections = v14->_connections;
    v14->_connections = dictionary;

    v14->_state = 0;
    v27 = [candidateCopy copy];
    local = v14->_local;
    v14->_local = v27;

    v29 = [remoteCandidateCopy copy];
    remote = v14->_remote;
    v14->_remote = v29;

    uUID = [MEMORY[0x1E696AFB0] UUID];
    uniqueID = v14->_uniqueID;
    v14->_uniqueID = uUID;

    objc_storeStrong(&v14->_sessionID, d);
    objc_storeWeak(&v14->_delegate, delegateCopy);
    v14->_statsIntervalInSeconds = 12;
    v14->_triggeredCheckTime = 0.0;
    v33 = [MEMORY[0x1E695DFA8] set];
    packetListeners = v14->_packetListeners;
    v14->_packetListeners = v33;

    v35 = [[IDSTestableLinkWithScheduler alloc] initWithLink:v14 addBlock:&unk_1F1AAB900];
    testableLink = v14->_testableLink;
    v14->_testableLink = v35;

    if (delegateCopy && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v37 = [delegateCopy createLinkCycleForCandidatePair:v14];
      linkMetrics = v14->_linkMetrics;
      v14->_linkMetrics = v37;
    }
  }

  return v14;
}

- (void)dealloc
{
  [(IDSStunCandidatePair *)self _stopReallocTimer];
  v3.receiver = self;
  v3.super_class = IDSStunCandidatePair;
  [(IDSStunCandidatePair *)&v3 dealloc];
}

- (void)invalidate
{
  self->_state = 6;
  pendingStunRequests = self->_pendingStunRequests;
  self->_pendingStunRequests = 0;

  repliedStunRequests = self->_repliedStunRequests;
  self->_repliedStunRequests = 0;

  requestIDToQueryLinkIDs = self->_requestIDToQueryLinkIDs;
  self->_requestIDToQueryLinkIDs = 0;

  sessionConnectedTimeoutBlock = self->_sessionConnectedTimeoutBlock;
  self->_sessionConnectedTimeoutBlock = 0;

  sessionConvergenceBlock = self->_sessionConvergenceBlock;
  self->_sessionConvergenceBlock = 0;

  requestIDToStatsIDs = self->_requestIDToStatsIDs;
  self->_requestIDToStatsIDs = 0;

  stunSentBytesToRequestID = self->_stunSentBytesToRequestID;
  self->_stunSentBytesToRequestID = 0;

  pluginNameToStunReqID = self->_pluginNameToStunReqID;
  self->_pluginNameToStunReqID = 0;

  transactionIDToIdentifier = self->_transactionIDToIdentifier;
  self->_transactionIDToIdentifier = 0;

  [(IDSStunCandidatePair *)self setAllocbindFailoverTimer:0];
  [(IDSStunCandidatePair *)self setIsRealloc:0];
  [(IDSStunCandidatePair *)self stopLinkProbingTimer];
  hbhEncKey = self->_hbhEncKey;
  self->_hbhEncKey = 0;

  hbhDecKey = self->_hbhDecKey;
  self->_hbhDecKey = 0;
}

- (NSString)description
{
  v49 = *MEMORY[0x1E69E9840];
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v47 = v3;
  v48 = v3;
  v45 = v3;
  v46 = v3;
  v43 = v3;
  v44 = v3;
  *__str = v3;
  v42 = v3;
  v39 = v3;
  v40 = v3;
  v37 = v3;
  v38 = v3;
  v35 = v3;
  v36 = v3;
  *v33 = v3;
  v34 = v3;
  v31 = v3;
  v32 = v3;
  v29 = v3;
  v30 = v3;
  v27 = v3;
  v28 = v3;
  *v25 = v3;
  v26 = v3;
  address = [(IDSStunCandidate *)self->_local address];
  external = [(IDSStunCandidate *)self->_local external];
  external2 = [(IDSStunCandidate *)self->_remote external];
  SAToIPPortString(__str, 0x80uLL, address);
  SAToIPPortString(v33, 0x80uLL, external);
  SAToIPPortString(v25, 0x80uLL, external2);
  radioAccessTechnology = [(IDSStunCandidate *)self->_local radioAccessTechnology];
  radioAccessTechnology2 = [(IDSStunCandidate *)self->_remote radioAccessTechnology];
  v24 = [(IDSStunCandidate *)self->_local mtu];
  type = [(IDSStunCandidate *)self->_local type];
  type2 = [(IDSStunCandidate *)self->_remote type];
  v11 = [(IDSStunCandidate *)self->_remote mtu];
  remote = self->_remote;
  local = self->_local;
  v23 = MEMORY[0x1E696AEC0];
  v13 = (&_IDSStunCandidateTypeStrings)[type];
  v14 = IDSRadioAccessTechnologyToString(radioAccessTechnology);
  v15 = (&_IDSStunCandidateTypeStrings)[type2];
  v16 = IDSRadioAccessTechnologyToString(radioAccessTechnology2);
  v17 = bswap32(self->_channelNumber) >> 16;
  v18 = (&_IDSStunCandidatePairStateStrings)[self->_state];
  uUIDString = [(NSUUID *)self->_linkUUID UUIDString];
  v20 = [v23 stringWithFormat:@"[%s(%s, %p)-%s(%p)/%s/%s/%u/%s/%s/%u/(%04x)/%s/%@/%d|%d/%04x/%04x/%@/%@]", __str, v33, local, v25, remote, v13, v14, v24, v15, v16, v11, v17, v18, uUIDString, self->_linkID, self->_delegatedLinkID, self->_relayLinkID, self->_remoteRelayLinkID, self->_sessionID, self->_connections];

  return v20;
}

- (id)candidatePairToken
{
  address = [(IDSStunCandidate *)self->_local address];
  external = [(IDSStunCandidate *)self->_remote external];
  sessionID = self->_sessionID;

  return tokenForStunCandidatePair(address, external, sessionID);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  address = [(IDSStunCandidate *)self->_local address];
  local = [equalCopy local];
  v7 = IsSameSA(address, [local address]);

  external = [(IDSStunCandidate *)self->_remote external];
  remote = [equalCopy remote];
  v10 = IsSameSA(external, [remote external]);

  LODWORD(remote) = [(IDSStunCandidate *)self->_local isRelayStunCandidate];
  local2 = [equalCopy local];
  v12 = remote ^ [local2 isRelayStunCandidate];

  if (self->_remoteRelayLinkID)
  {
    relayLinkID = self->_relayLinkID;
    if (relayLinkID == [equalCopy relayLinkID])
    {
      remoteRelayLinkID = self->_remoteRelayLinkID;
      v15 = remoteRelayLinkID == [equalCopy remoteRelayLinkID];
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 1;
  }

  v16 = (v12 ^ 1) & v15;
  v17 = v7 && v10 && v16;

  return v17;
}

- (NSString)kindSuffix
{
  if ([(IDSStunCandidatePair *)self isP2P])
  {
    return @".p2p";
  }

  if ([(IDSStunCandidatePair *)self isVirtualRelayStunCandidatePair])
  {
    return @".vr";
  }

  return @".relay";
}

- (BOOL)isRelayStunCandidatePair
{
  if ([(IDSStunCandidate *)self->_local isRelayStunCandidate])
  {
    return 1;
  }

  remote = self->_remote;

  return [(IDSStunCandidate *)remote isRelayStunCandidate];
}

- (BOOL)isValidRelayStunCandidatePair
{
  v3 = [(NSData *)self->_relaySessionToken length];
  if (v3)
  {
    LOBYTE(v3) = [(NSData *)self->_relaySessionKey length]!= 0;
  }

  return v3;
}

- (BOOL)isActualRelayStunCandidatePair
{
  if ([(IDSStunCandidatePair *)self isVirtualRelayStunCandidatePair])
  {
    return 0;
  }

  return objc_msgSend_isRelayStunCandidatePair(self);
}

- (BOOL)isP2P
{
  if ([(IDSStunCandidatePair *)self isVirtualRelayStunCandidatePair])
  {
    return 0;
  }

  else
  {
    return objc_msgSend_isRelayStunCandidatePair(self) ^ 1;
  }
}

- (void)switchToOptimizedStatsInterval
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(IDSStunCandidatePair *)self description];
    *buf = 138412290;
    v17 = v4;
    _os_log_impl(&dword_1A7AD9000, v3, OS_LOG_TYPE_DEFAULT, "switchToOptimizedStatsInterval for link: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v5 = [(IDSStunCandidatePair *)self description];
      _IDSLogTransport(@"GL", @"IDS", @"switchToOptimizedStatsInterval for link: %@", v6, v7, v8, v9, v10, v5);

      if (_IDSShouldLog(0))
      {
        v11 = [(IDSStunCandidatePair *)self description];
        _IDSLogV(0, @"IDSFoundation", @"GL", @"switchToOptimizedStatsInterval for link: %@", v12, v13, v14, v15, v11);
      }
    }
  }

  self->_statsIntervalInSeconds = 60;
}

- (void)setPropertiesWithRelaySessionInfo:(id)info sessionInfoDict:(id)dict enableSKE:(BOOL)e
{
  v75 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  dictCopy = dict;
  relaySessionToken = [infoCopy relaySessionToken];
  relaySessionToken = self->_relaySessionToken;
  self->_relaySessionToken = relaySessionToken;

  relaySessionKey = [infoCopy relaySessionKey];
  relaySessionKey = self->_relaySessionKey;
  self->_relaySessionKey = relaySessionKey;

  pskTransportParameters = [infoCopy pskTransportParameters];
  pskTransportParameters = self->_pskTransportParameters;
  self->_pskTransportParameters = pskTransportParameters;

  pskH3Settings = [infoCopy pskH3Settings];
  pskH3Settings = self->_pskH3Settings;
  self->_pskH3Settings = pskH3Settings;

  self->_relayProviderType = [infoCopy relayServerProviderType];
  self->_allocateType = [infoCopy allocateType];
  [infoCopy allocateTime];
  self->_allocateTime = v19;
  self->_participantID = [infoCopy participantID];
  self->_isPseudoParticipant = [infoCopy isPseudoParticipant];
  self->_callType = [infoCopy callType];
  self->_sessionIsNonUserParticipantInitiated = [infoCopy sessionIsUserParticipantInitiated];
  handOffOverQREnabled = [infoCopy handOffOverQREnabled];
  defaultDeviceLocalCBUUID = [infoCopy defaultDeviceLocalCBUUID];
  defaultLocalDeviceCBUUID = self->_defaultLocalDeviceCBUUID;
  self->_defaultLocalDeviceCBUUID = defaultDeviceLocalCBUUID;

  defaultDeviceRemoteCBUUID = [infoCopy defaultDeviceRemoteCBUUID];
  defaultRemoteDeviceCBUUID = self->_defaultRemoteDeviceCBUUID;
  self->_defaultRemoteDeviceCBUUID = defaultDeviceRemoteCBUUID;

  groupID = [infoCopy groupID];
  groupID = self->_groupID;
  self->_groupID = groupID;

  self->_protocolVersion = [infoCopy protocolVersion];
  self->_isInitiator = [infoCopy isInitiator];
  softwareData = [infoCopy softwareData];
  softwareData = self->_softwareData;
  self->_softwareData = softwareData;

  if (self->_softwareData)
  {
    v29 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:self->_softwareData encoding:4];
    if (![(NSString *)self->_appName isEqualToString:v29])
    {
      v30 = [(NSData *)self->_softwareData base64EncodedStringWithOptions:0];
      v31 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v32 = self->_softwareData;
        sessionID = self->_sessionID;
        *buf = 138412802;
        *v72 = v32;
        *&v72[8] = 2112;
        *&v72[10] = v30;
        v73 = 2112;
        v74 = sessionID;
        _os_log_impl(&dword_1A7AD9000, v31, OS_LOG_TYPE_DEFAULT, "update app name to (%@, %@) for %@.", buf, 0x20u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"GL", @"IDS", @"update app name to (%@, %@) for %@.", v34, v35, v36, v37, v38, self->_softwareData);
          if (_IDSShouldLog(0))
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"update app name to (%@, %@) for %@.", v39, v40, v41, v42, self->_softwareData);
          }
        }
      }

      objc_storeStrong(&self->_appName, v29);
    }
  }

  if ([infoCopy isInitiator])
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    linkUUID = self->_linkUUID;
    self->_linkUUID = uUID;
  }

  objc_storeStrong(&self->_relaySessionInfo, info);
  objc_storeStrong(&self->_sessionInfoDict, dict);
  self->_enableSKE = e;
  allocateType = self->_allocateType;
  if (allocateType == 3)
  {
    v46 = 293359;
    goto LABEL_18;
  }

  if (allocateType == 1 && self->_relayProviderType == 2)
  {
    v46 = 8197;
LABEL_18:
    self->_capabilityFlags = v46;
  }

  if (handOffOverQREnabled)
  {
    self->_capabilityFlags |= 0x1000000uLL;
  }

  v47 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
  {
    capabilityFlags = self->_capabilityFlags;
    *buf = 134218242;
    *v72 = capabilityFlags;
    *&v72[8] = 2112;
    *&v72[10] = self;
    _os_log_impl(&dword_1A7AD9000, v47, OS_LOG_TYPE_DEFAULT, "_capabilityFlags: 0x%llx for %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"_capabilityFlags: 0x%llx for %@", v49, v50, v51, v52, v53, self->_capabilityFlags);
      if (_IDSShouldLog(0))
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"_capabilityFlags: 0x%llx for %@", v54, v55, v56, v57, self->_capabilityFlags);
      }
    }
  }

  if (self->_sessionIsNonUserParticipantInitiated)
  {
    self->_stateFlags = 1;
  }

  callType = self->_callType;
  if (callType)
  {
    stateFlags = self->_stateFlags;
    self->_stateFlags = stateFlags | 2;
    if (callType == 1)
    {
      self->_stateFlags = stateFlags | 6;
    }
  }

  v60 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
  {
    v61 = self->_stateFlags;
    *buf = 67109378;
    *v72 = v61;
    *&v72[4] = 2112;
    *&v72[6] = self;
    _os_log_impl(&dword_1A7AD9000, v60, OS_LOG_TYPE_DEFAULT, "_stateFlags: 0x%x for %@", buf, 0x12u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"_stateFlags: 0x%x for %@", v62, v63, v64, v65, v66, self->_stateFlags);
      if (_IDSShouldLog(0))
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"_stateFlags: 0x%x for %@", v67, v68, v69, v70, self->_stateFlags);
      }
    }
  }
}

- (void)setIsQUIC:(BOOL)c
{
  cCopy = c;
  v24 = *MEMORY[0x1E69E9840];
  self->_isQUIC = c;
  v5 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    capabilityFlags = self->_capabilityFlags;
    *buf = 138412802;
    if (cCopy)
    {
      v6 = @"YES";
    }

    v19 = v6;
    v20 = 2048;
    v21 = capabilityFlags;
    v22 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1A7AD9000, v5, OS_LOG_TYPE_DEFAULT, "QUICForQREnabled = %@ _capabilityFlags: 0x%llx for %@", buf, 0x20u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
  {
    if (cCopy)
    {
      v13 = @"YES";
    }

    else
    {
      v13 = @"NO";
    }

    _IDSLogTransport(@"GL", @"IDS", @"QUICForQREnabled = %@ _capabilityFlags: 0x%llx for %@", v8, v9, v10, v11, v12, v13);
    if (_IDSShouldLog(0))
    {
      _IDSLogV(0, @"IDSFoundation", @"GL", @"QUICForQREnabled = %@ _capabilityFlags: 0x%llx for %@", v14, v15, v16, v17, v13);
    }
  }
}

- (void)setPropertiesWithReallocCandidatePair:(id)pair reallocToken:(id)token
{
  objc_storeStrong(&self->_relaySessionToken, token);
  tokenCopy = token;
  pairCopy = pair;
  self->_pendingRealloc = 1;
  relaySessionInfo = [pairCopy relaySessionInfo];
  relaySessionInfo = self->_relaySessionInfo;
  self->_relaySessionInfo = relaySessionInfo;

  sessionInfoDict = [pairCopy sessionInfoDict];
  sessionInfoDict = self->_sessionInfoDict;
  self->_sessionInfoDict = sessionInfoDict;

  self->_allocateType = [pairCopy allocateType];
  [pairCopy allocateTime];
  self->_allocateTime = v12;
  self->_participantID = [pairCopy participantID];
  relaySessionKey = [pairCopy relaySessionKey];
  relaySessionKey = self->_relaySessionKey;
  self->_relaySessionKey = relaySessionKey;

  self->_relayProviderType = [pairCopy relayProviderType];
  pskTransportParameters = [pairCopy pskTransportParameters];
  pskTransportParameters = self->_pskTransportParameters;
  self->_pskTransportParameters = pskTransportParameters;

  pskH3Settings = [pairCopy pskH3Settings];
  pskH3Settings = self->_pskH3Settings;
  self->_pskH3Settings = pskH3Settings;

  self->_isAcceptedRelaySession = [pairCopy isAcceptedRelaySession];
  relayRemote = [pairCopy relayRemote];
  relayRemote = self->_relayRemote;
  self->_relayRemote = relayRemote;

  self->_recvSKEData = [pairCopy recvSKEData];
  self->_sentSKEData = [pairCopy sentSKEData];
  skeData = [pairCopy skeData];
  skeData = self->_skeData;
  self->_skeData = skeData;

  defaultLocalDeviceCBUUID = [pairCopy defaultLocalDeviceCBUUID];
  defaultLocalDeviceCBUUID = self->_defaultLocalDeviceCBUUID;
  self->_defaultLocalDeviceCBUUID = defaultLocalDeviceCBUUID;

  defaultRemoteDeviceCBUUID = [pairCopy defaultRemoteDeviceCBUUID];
  defaultRemoteDeviceCBUUID = self->_defaultRemoteDeviceCBUUID;
  self->_defaultRemoteDeviceCBUUID = defaultRemoteDeviceCBUUID;

  groupID = [pairCopy groupID];
  groupID = self->_groupID;
  self->_groupID = groupID;

  linkUUID = [pairCopy linkUUID];
  linkUUID = self->_linkUUID;
  self->_linkUUID = linkUUID;

  self->_capabilityFlags = [pairCopy capabilityFlags];
  self->_protocolVersion = [pairCopy protocolVersion];
  self->_isInitiator = [pairCopy isInitiator];
  self->_enableSKE = [pairCopy enableSKE];
  softwareData = [pairCopy softwareData];
  softwareData = self->_softwareData;
  self->_softwareData = softwareData;

  appName = [pairCopy appName];

  appName = self->_appName;
  self->_appName = appName;
}

- (unsigned)nextSessionInfoReqID
{
  v2 = self->_sessionInfoReqCount + 1;
  self->_sessionInfoReqCount = v2;
  return v2;
}

- (void)setLinkUUIDWithRelayLinkIDs
{
  v15 = *MEMORY[0x1E69E9840];
  v14 = 0;
  v13 = 0;
  relayLinkID = self->_relayLinkID;
  remoteRelayLinkID = self->_remoteRelayLinkID;
  v5 = __rev16(relayLinkID);
  v6 = __rev16(remoteRelayLinkID);
  v7 = relayLinkID >= remoteRelayLinkID;
  if (relayLinkID >= remoteRelayLinkID)
  {
    v8 = v6;
  }

  else
  {
    v8 = v5;
  }

  if (v7)
  {
    v9 = v5;
  }

  else
  {
    v9 = v6;
  }

  v12[0] = v8;
  v12[1] = v9;
  v10 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:v12];
  linkUUID = self->_linkUUID;
  self->_linkUUID = v10;
}

- (void)synthesizeNat64WithPrefix
{
  v58 = *MEMORY[0x1E69E9840];
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v56 = v3;
  v57 = v3;
  v54 = v3;
  v55 = v3;
  v52 = v3;
  v53 = v3;
  *__str = v3;
  v51 = v3;
  v48 = v3;
  v49 = v3;
  v46 = v3;
  v47 = v3;
  v44 = v3;
  v45 = v3;
  *v42 = v3;
  v43 = v3;
  if ([(IDSStunCandidate *)self->_local prefix])
  {
    *&v4 = 0xAAAAAAAAAAAAAAAALL;
    *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v40 = v4;
    v41 = v4;
    v38 = v4;
    v39 = v4;
    v36 = v4;
    v37 = v4;
    *v34 = v4;
    v35 = v4;
    address = [(IDSStunCandidate *)self->_local address];
    external = [(IDSStunCandidate *)self->_remote external];
    if (address->sa_family == 30)
    {
      v7 = external;
      if (external->sa_family == 2)
      {
        if (nw_nat64_synthesize_v6())
        {
          *v34 = 7708;
          *&v34[2] = *(v7 + 2);
          SAToIPPortString(__str, 0x80uLL, v7);
          SAToIPPortString(v42, 0x80uLL, v34);
          [(IDSStunCandidate *)self->_remote setExternal:v34];
          v8 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v31 = __str;
            v32 = 2080;
            v33 = v42;
            _os_log_impl(&dword_1A7AD9000, v8, OS_LOG_TYPE_DEFAULT, "nat64 translation: %s -> %s.", buf, 0x16u);
          }

          if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
          {
            _IDSLogTransport(@"GL", @"IDS", @"nat64 translation: %s -> %s.", v9, v10, v11, v12, v13, __str);
            if (_IDSShouldLog(0))
            {
              _IDSLogV(0, @"IDSFoundation", @"GL", @"nat64 translation: %s -> %s.", v14, v15, v16, v17, __str);
            }
          }
        }
      }
    }
  }

  else
  {
    v18 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *v34 = 0;
      _os_log_impl(&dword_1A7AD9000, v18, OS_LOG_TYPE_DEFAULT, "nat64 translation failed due to invalid prefix.", v34, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"nat64 translation failed due to invalid prefix.", v19, v20, v21, v22, v23, v28);
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"nat64 translation failed due to invalid prefix.", v24, v25, v26, v27, v29);
        }
      }
    }
  }
}

- (void)setPendingNoSessionState:(BOOL)state
{
  self->_pendingNoSessionStateAllocbind = state;
  if (state)
  {
    MEMORY[0x1EEE66B58](self, sel__startNoSessionStateTimer);
  }

  else
  {
    [(IDSStunCandidatePair *)self _stopNoSessionStateTimer];
  }
}

- (void)_handleNoSessionStateTimer
{
  v16 = *MEMORY[0x1E69E9840];
  self->_pendingNoSessionStateAllocbind = 0;
  v3 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    noSessionStateTimer = self->_noSessionStateTimer;
    *buf = 134217984;
    v15 = noSessionStateTimer;
    _os_log_impl(&dword_1A7AD9000, v3, OS_LOG_TYPE_DEFAULT, "noSessionStateTimer %p fires, _noSessionStateTimer timed out.", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"noSessionStateTimer %p fires, _noSessionStateTimer timed out.", v5, v6, v7, v8, v9, self->_noSessionStateTimer);
      if (_IDSShouldLog(0))
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"noSessionStateTimer %p fires, _noSessionStateTimer timed out.", v10, v11, v12, v13, self->_noSessionStateTimer);
      }
    }
  }

  [(IDSStunCandidatePair *)self _stopNoSessionStateTimer];
}

- (void)_startNoSessionStateTimer
{
  v24 = *MEMORY[0x1E69E9840];
  noSessionStateTimer = self->_noSessionStateTimer;
  if (noSessionStateTimer)
  {
    dispatch_source_cancel(noSessionStateTimer);
  }

  v4 = im_primary_queue();
  v5 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v4);
  v6 = self->_noSessionStateTimer;
  self->_noSessionStateTimer = v5;

  v7 = self->_noSessionStateTimer;
  v8 = dispatch_time(0, 5000000000);
  dispatch_source_set_timer(v7, v8, 0x12A05F200uLL, 0x5F5E100uLL);
  v9 = self->_noSessionStateTimer;
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = sub_1A7C754D8;
  handler[3] = &unk_1E77E0818;
  handler[4] = self;
  dispatch_source_set_event_handler(v9, handler);
  dispatch_resume(self->_noSessionStateTimer);
  v10 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = self->_noSessionStateTimer;
    *buf = 134217984;
    v23 = v11;
    _os_log_impl(&dword_1A7AD9000, v10, OS_LOG_TYPE_DEFAULT, "start noSessionStateTimer %p.", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
  {
    _IDSLogTransport(@"GL", @"IDS", @"start noSessionStateTimer %p.", v12, v13, v14, v15, v16, self->_noSessionStateTimer);
    if (_IDSShouldLog(0))
    {
      _IDSLogV(0, @"IDSFoundation", @"GL", @"start noSessionStateTimer %p.", v17, v18, v19, v20, self->_noSessionStateTimer);
    }
  }
}

- (void)_stopNoSessionStateTimer
{
  v18 = *MEMORY[0x1E69E9840];
  noSessionStateTimer = self->_noSessionStateTimer;
  if (noSessionStateTimer)
  {
    dispatch_source_cancel(noSessionStateTimer);
    v4 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = self->_noSessionStateTimer;
      *buf = 134217984;
      v17 = v5;
      _os_log_impl(&dword_1A7AD9000, v4, OS_LOG_TYPE_DEFAULT, "stop noSessionStateTimer %p.", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"stop noSessionStateTimer %p.", v6, v7, v8, v9, v10, self->_noSessionStateTimer);
      if (_IDSShouldLog(0))
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"stop noSessionStateTimer %p.", v11, v12, v13, v14, self->_noSessionStateTimer);
      }
    }

    v15 = self->_noSessionStateTimer;
    self->_noSessionStateTimer = 0;
  }
}

- (void)setPendingRealloc:(BOOL)realloc
{
  self->_pendingRealloc = realloc;
  if (realloc)
  {
    MEMORY[0x1EEE66B58](self, sel__startReallocTimer);
  }

  else
  {
    [(IDSStunCandidatePair *)self _stopReallocTimer];
  }
}

- (void)_handleReallocTimer
{
  v17 = *MEMORY[0x1E69E9840];
  self->_pendingRealloc = 0;
  v3 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    reallocTimer = self->_reallocTimer;
    *buf = 134217984;
    v16 = reallocTimer;
    _os_log_impl(&dword_1A7AD9000, v3, OS_LOG_TYPE_DEFAULT, "realloc timer %p fires, realloc timed out.", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"realloc timer %p fires, realloc timed out.", v5, v6, v7, v8, v9, self->_reallocTimer);
      if (_IDSShouldLog(0))
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"realloc timer %p fires, realloc timed out.", v10, v11, v12, v13, self->_reallocTimer);
      }
    }
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1A7C7583C;
  v14[3] = &unk_1E77E0138;
  v14[4] = self;
  IDSTransportThreadAddBlock(v14);
}

- (void)_startReallocTimer
{
  v24 = *MEMORY[0x1E69E9840];
  reallocTimer = self->_reallocTimer;
  if (reallocTimer)
  {
    dispatch_source_cancel(reallocTimer);
  }

  v4 = im_primary_queue();
  v5 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v4);
  v6 = self->_reallocTimer;
  self->_reallocTimer = v5;

  v7 = self->_reallocTimer;
  v8 = dispatch_time(0, 5000000000);
  dispatch_source_set_timer(v7, v8, 0x12A05F200uLL, 0x5F5E100uLL);
  v9 = self->_reallocTimer;
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = sub_1A7C75A54;
  handler[3] = &unk_1E77E0818;
  handler[4] = self;
  dispatch_source_set_event_handler(v9, handler);
  dispatch_resume(self->_reallocTimer);
  v10 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = self->_reallocTimer;
    *buf = 134217984;
    v23 = v11;
    _os_log_impl(&dword_1A7AD9000, v10, OS_LOG_TYPE_DEFAULT, "start realloc timer %p.", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
  {
    _IDSLogTransport(@"GL", @"IDS", @"start realloc timer %p.", v12, v13, v14, v15, v16, self->_reallocTimer);
    if (_IDSShouldLog(0))
    {
      _IDSLogV(0, @"IDSFoundation", @"GL", @"start realloc timer %p.", v17, v18, v19, v20, self->_reallocTimer);
    }
  }
}

- (void)_stopReallocTimer
{
  v18 = *MEMORY[0x1E69E9840];
  reallocTimer = self->_reallocTimer;
  if (reallocTimer)
  {
    dispatch_source_cancel(reallocTimer);
    v4 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = self->_reallocTimer;
      *buf = 134217984;
      v17 = v5;
      _os_log_impl(&dword_1A7AD9000, v4, OS_LOG_TYPE_DEFAULT, "stop realloc timer %p.", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"stop realloc timer %p.", v6, v7, v8, v9, v10, self->_reallocTimer);
      if (_IDSShouldLog(0))
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"stop realloc timer %p.", v11, v12, v13, v14, self->_reallocTimer);
      }
    }

    v15 = self->_reallocTimer;
    self->_reallocTimer = 0;
  }
}

- (void)_handleSessionConnectedTimer
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    sessionConnectedTimer = self->_sessionConnectedTimer;
    v5 = _Block_copy(self->_sessionConnectedTimeoutBlock);
    *buf = 134218240;
    v21 = sessionConnectedTimer;
    v22 = 2048;
    v23 = v5;
    _os_log_impl(&dword_1A7AD9000, v3, OS_LOG_TYPE_DEFAULT, "session connected timer %p fired, block %p.", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v6 = self->_sessionConnectedTimer;
      v18 = _Block_copy(self->_sessionConnectedTimeoutBlock);
      _IDSLogTransport(@"GL", @"IDS", @"session connected timer %p fired, block %p.", v7, v8, v9, v10, v11, v6);

      if (_IDSShouldLog(0))
      {
        v12 = self->_sessionConnectedTimer;
        v19 = _Block_copy(self->_sessionConnectedTimeoutBlock);
        _IDSLogV(0, @"IDSFoundation", @"GL", @"session connected timer %p fired, block %p.", v13, v14, v15, v16, v12);
      }
    }
  }

  sessionConnectedTimeoutBlock = self->_sessionConnectedTimeoutBlock;
  if (sessionConnectedTimeoutBlock)
  {
    sessionConnectedTimeoutBlock[2]();
  }

  [(IDSStunCandidatePair *)self stopSessionConnectedTimer];
}

- (void)startSessionConnectedTimer:(int)timer block:(id)block
{
  v39 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  sessionConnectedTimer = self->_sessionConnectedTimer;
  if (sessionConnectedTimer)
  {
    dispatch_source_cancel(sessionConnectedTimer);
  }

  v8 = im_primary_queue();
  v9 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v8);
  v10 = self->_sessionConnectedTimer;
  self->_sessionConnectedTimer = v9;

  v11 = self->_sessionConnectedTimer;
  v12 = dispatch_time(0, 1000000000 * timer);
  dispatch_source_set_timer(v11, v12, 1000000000 * timer, 0x5F5E100uLL);
  v13 = self->_sessionConnectedTimer;
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = sub_1A7C76028;
  handler[3] = &unk_1E77E0818;
  handler[4] = self;
  dispatch_source_set_event_handler(v13, handler);
  v14 = _Block_copy(blockCopy);
  sessionConnectedTimeoutBlock = self->_sessionConnectedTimeoutBlock;
  self->_sessionConnectedTimeoutBlock = v14;

  dispatch_resume(self->_sessionConnectedTimer);
  v16 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = self->_sessionConnectedTimer;
    v18 = _Block_copy(self->_sessionConnectedTimeoutBlock);
    *buf = 134218496;
    v34 = v17;
    v35 = 1024;
    timerCopy = timer;
    v37 = 2048;
    v38 = v18;
    _os_log_impl(&dword_1A7AD9000, v16, OS_LOG_TYPE_DEFAULT, "start session connected timer %p, timeout %d sec, block %p.", buf, 0x1Cu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v19 = self->_sessionConnectedTimer;
      v30 = _Block_copy(self->_sessionConnectedTimeoutBlock);
      _IDSLogTransport(@"GL", @"IDS", @"start session connected timer %p, timeout %d sec, block %p.", v20, v21, v22, v23, v24, v19);

      if (_IDSShouldLog(0))
      {
        v25 = self->_sessionConnectedTimer;
        v31 = _Block_copy(self->_sessionConnectedTimeoutBlock);
        _IDSLogV(0, @"IDSFoundation", @"GL", @"start session connected timer %p, timeout %d sec, block %p.", v26, v27, v28, v29, v25);
      }
    }
  }
}

- (void)stopSessionConnectedTimer
{
  v26 = *MEMORY[0x1E69E9840];
  sessionConnectedTimer = self->_sessionConnectedTimer;
  if (sessionConnectedTimer)
  {
    dispatch_source_cancel(sessionConnectedTimer);
    v4 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = self->_sessionConnectedTimer;
      v6 = _Block_copy(self->_sessionConnectedTimeoutBlock);
      *buf = 134218240;
      v23 = v5;
      v24 = 2048;
      v25 = v6;
      _os_log_impl(&dword_1A7AD9000, v4, OS_LOG_TYPE_DEFAULT, "stop session connected timer %p, block %p.", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      v7 = self->_sessionConnectedTimer;
      v20 = _Block_copy(self->_sessionConnectedTimeoutBlock);
      _IDSLogTransport(@"GL", @"IDS", @"stop session connected timer %p, block %p.", v8, v9, v10, v11, v12, v7);

      if (_IDSShouldLog(0))
      {
        v13 = self->_sessionConnectedTimer;
        v21 = _Block_copy(self->_sessionConnectedTimeoutBlock);
        _IDSLogV(0, @"IDSFoundation", @"GL", @"stop session connected timer %p, block %p.", v14, v15, v16, v17, v13);
      }
    }

    v18 = self->_sessionConnectedTimer;
    self->_sessionConnectedTimer = 0;

    sessionConnectedTimeoutBlock = self->_sessionConnectedTimeoutBlock;
    self->_sessionConnectedTimeoutBlock = 0;
  }
}

- (void)_handleSessionConvergenceTimer
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    sessionConvergenceTimer = self->_sessionConvergenceTimer;
    v5 = _Block_copy(self->_sessionConvergenceBlock);
    *buf = 134218240;
    v21 = sessionConvergenceTimer;
    v22 = 2048;
    v23 = v5;
    _os_log_impl(&dword_1A7AD9000, v3, OS_LOG_TYPE_DEFAULT, "session convergence timer %p fired, block %p.", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v6 = self->_sessionConvergenceTimer;
      v18 = _Block_copy(self->_sessionConvergenceBlock);
      _IDSLogTransport(@"GL", @"IDS", @"session convergence timer %p fired, block %p.", v7, v8, v9, v10, v11, v6);

      if (_IDSShouldLog(0))
      {
        v12 = self->_sessionConvergenceTimer;
        v19 = _Block_copy(self->_sessionConvergenceBlock);
        _IDSLogV(0, @"IDSFoundation", @"GL", @"session convergence timer %p fired, block %p.", v13, v14, v15, v16, v12);
      }
    }
  }

  sessionConvergenceBlock = self->_sessionConvergenceBlock;
  if (sessionConvergenceBlock)
  {
    sessionConvergenceBlock[2]();
  }

  [(IDSStunCandidatePair *)self stopSessionConvergenceTimer];
}

- (void)startSessionConvergenceTimer:(int)timer block:(id)block
{
  v58 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  if (*&self->_sessionConvergenceTimer == 0)
  {
    v24 = im_primary_queue();
    v25 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v24);
    sessionConvergenceTimer = self->_sessionConvergenceTimer;
    self->_sessionConvergenceTimer = v25;

    v27 = self->_sessionConvergenceTimer;
    v28 = dispatch_time(0, 1000000000 * timer);
    dispatch_source_set_timer(v27, v28, 1000000000 * timer, 0x5F5E100uLL);
    v29 = self->_sessionConvergenceTimer;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = sub_1A7C76800;
    handler[3] = &unk_1E77E0818;
    handler[4] = self;
    dispatch_source_set_event_handler(v29, handler);
    v30 = _Block_copy(blockCopy);
    sessionConvergenceBlock = self->_sessionConvergenceBlock;
    self->_sessionConvergenceBlock = v30;

    dispatch_resume(self->_sessionConvergenceTimer);
    v32 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v33 = self->_sessionConvergenceTimer;
      v34 = _Block_copy(self->_sessionConvergenceBlock);
      candidatePairToken = [(IDSStunCandidatePair *)self candidatePairToken];
      *buf = 134218754;
      v55 = v33;
      v56 = 1024;
      *v57 = timer;
      *&v57[4] = 2048;
      *&v57[6] = v34;
      *&v57[14] = 2112;
      *&v57[16] = candidatePairToken;
      _os_log_impl(&dword_1A7AD9000, v32, OS_LOG_TYPE_DEFAULT, "start session convergence timer %p, timeout %d sec, block %p for %@.", buf, 0x26u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v36 = self->_sessionConvergenceTimer;
        v37 = _Block_copy(self->_sessionConvergenceBlock);
        candidatePairToken2 = [(IDSStunCandidatePair *)self candidatePairToken];
        _IDSLogTransport(@"GL", @"IDS", @"start session convergence timer %p, timeout %d sec, block %p for %@.", v38, v39, v40, v41, v42, v36);

        if (_IDSShouldLog(0))
        {
          v43 = self->_sessionConvergenceTimer;
          v44 = _Block_copy(self->_sessionConvergenceBlock);
          candidatePairToken3 = [(IDSStunCandidatePair *)self candidatePairToken];
          _IDSLogV(0, @"IDSFoundation", @"GL", @"start session convergence timer %p, timeout %d sec, block %p for %@.", v45, v46, v47, v48, v43);
        }
      }
    }
  }

  else
  {
    v7 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = self->_sessionConvergenceTimer;
      v9 = _Block_copy(self->_sessionConvergenceBlock);
      candidatePairToken4 = [(IDSStunCandidatePair *)self candidatePairToken];
      *buf = 134218498;
      v55 = v8;
      v56 = 2048;
      *v57 = v9;
      *&v57[8] = 2112;
      *&v57[10] = candidatePairToken4;
      _os_log_impl(&dword_1A7AD9000, v7, OS_LOG_TYPE_DEFAULT, "session convergence timer %p and block %p for %@ are already scheduled.", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v11 = self->_sessionConvergenceTimer;
        v12 = _Block_copy(self->_sessionConvergenceBlock);
        candidatePairToken5 = [(IDSStunCandidatePair *)self candidatePairToken];
        _IDSLogTransport(@"GL", @"IDS", @"session convergence timer %p and block %p for %@ are already scheduled.", v13, v14, v15, v16, v17, v11);

        if (_IDSShouldLog(0))
        {
          v18 = self->_sessionConvergenceTimer;
          v19 = _Block_copy(self->_sessionConvergenceBlock);
          candidatePairToken6 = [(IDSStunCandidatePair *)self candidatePairToken];
          _IDSLogV(0, @"IDSFoundation", @"GL", @"session convergence timer %p and block %p for %@ are already scheduled.", v20, v21, v22, v23, v18);
        }
      }
    }
  }
}

- (void)stopSessionConvergenceTimer
{
  v26 = *MEMORY[0x1E69E9840];
  sessionConvergenceTimer = self->_sessionConvergenceTimer;
  if (sessionConvergenceTimer)
  {
    dispatch_source_cancel(sessionConvergenceTimer);
    v4 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = self->_sessionConvergenceTimer;
      v6 = _Block_copy(self->_sessionConvergenceBlock);
      *buf = 134218240;
      v23 = v5;
      v24 = 2048;
      v25 = v6;
      _os_log_impl(&dword_1A7AD9000, v4, OS_LOG_TYPE_DEFAULT, "stop session convergence timer %p, block %p.", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      v7 = self->_sessionConvergenceTimer;
      v20 = _Block_copy(self->_sessionConvergenceBlock);
      _IDSLogTransport(@"GL", @"IDS", @"stop session convergence timer %p, block %p.", v8, v9, v10, v11, v12, v7);

      if (_IDSShouldLog(0))
      {
        v13 = self->_sessionConvergenceTimer;
        v21 = _Block_copy(self->_sessionConvergenceBlock);
        _IDSLogV(0, @"IDSFoundation", @"GL", @"stop session convergence timer %p, block %p.", v14, v15, v16, v17, v13);
      }
    }

    v18 = self->_sessionConvergenceTimer;
    self->_sessionConvergenceTimer = 0;

    sessionConvergenceBlock = self->_sessionConvergenceBlock;
    self->_sessionConvergenceBlock = 0;
  }
}

- (void)_handleSessionGoAwayTimer
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    sessionConvergenceTimer = self->_sessionConvergenceTimer;
    v5 = _Block_copy(self->_sessionConvergenceBlock);
    *buf = 134218240;
    v21 = sessionConvergenceTimer;
    v22 = 2048;
    v23 = v5;
    _os_log_impl(&dword_1A7AD9000, v3, OS_LOG_TYPE_DEFAULT, "session goaway timer %p fired, block %p.", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v6 = self->_sessionConvergenceTimer;
      v18 = _Block_copy(self->_sessionConvergenceBlock);
      _IDSLogTransport(@"GL", @"IDS", @"session goaway timer %p fired, block %p.", v7, v8, v9, v10, v11, v6);

      if (_IDSShouldLog(0))
      {
        v12 = self->_sessionConvergenceTimer;
        v19 = _Block_copy(self->_sessionConvergenceBlock);
        _IDSLogV(0, @"IDSFoundation", @"GL", @"session goaway timer %p fired, block %p.", v13, v14, v15, v16, v12);
      }
    }
  }

  sessionGoAwayBlock = self->_sessionGoAwayBlock;
  if (sessionGoAwayBlock)
  {
    sessionGoAwayBlock[2]();
  }

  [(IDSStunCandidatePair *)self stopSessionGoAwayTimer];
}

- (void)startSessionGoAwayTimer:(int)timer block:(id)block
{
  v58 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  if (*&self->_sessionGoAwayTimer == 0)
  {
    v24 = im_primary_queue();
    v25 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v24);
    sessionGoAwayTimer = self->_sessionGoAwayTimer;
    self->_sessionGoAwayTimer = v25;

    v27 = self->_sessionGoAwayTimer;
    v28 = dispatch_time(0, 1000000000 * timer);
    dispatch_source_set_timer(v27, v28, 1000000000 * timer, 0x5F5E100uLL);
    v29 = self->_sessionGoAwayTimer;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = sub_1A7C76FD8;
    handler[3] = &unk_1E77E0818;
    handler[4] = self;
    dispatch_source_set_event_handler(v29, handler);
    v30 = _Block_copy(blockCopy);
    sessionGoAwayBlock = self->_sessionGoAwayBlock;
    self->_sessionGoAwayBlock = v30;

    dispatch_resume(self->_sessionGoAwayTimer);
    v32 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v33 = self->_sessionGoAwayTimer;
      v34 = _Block_copy(self->_sessionGoAwayBlock);
      candidatePairToken = [(IDSStunCandidatePair *)self candidatePairToken];
      *buf = 134218754;
      v55 = v33;
      v56 = 1024;
      *v57 = timer;
      *&v57[4] = 2048;
      *&v57[6] = v34;
      *&v57[14] = 2112;
      *&v57[16] = candidatePairToken;
      _os_log_impl(&dword_1A7AD9000, v32, OS_LOG_TYPE_DEFAULT, "start session goaway timer %p, timeout %d sec, block %p for %@.", buf, 0x26u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v36 = self->_sessionGoAwayTimer;
        v37 = _Block_copy(self->_sessionGoAwayBlock);
        candidatePairToken2 = [(IDSStunCandidatePair *)self candidatePairToken];
        _IDSLogTransport(@"GL", @"IDS", @"start session goaway timer %p, timeout %d sec, block %p for %@.", v38, v39, v40, v41, v42, v36);

        if (_IDSShouldLog(0))
        {
          v43 = self->_sessionGoAwayTimer;
          v44 = _Block_copy(self->_sessionGoAwayBlock);
          candidatePairToken3 = [(IDSStunCandidatePair *)self candidatePairToken];
          _IDSLogV(0, @"IDSFoundation", @"GL", @"start session goaway timer %p, timeout %d sec, block %p for %@.", v45, v46, v47, v48, v43);
        }
      }
    }
  }

  else
  {
    v7 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = self->_sessionGoAwayTimer;
      v9 = _Block_copy(self->_sessionGoAwayBlock);
      candidatePairToken4 = [(IDSStunCandidatePair *)self candidatePairToken];
      *buf = 134218498;
      v55 = v8;
      v56 = 2048;
      *v57 = v9;
      *&v57[8] = 2112;
      *&v57[10] = candidatePairToken4;
      _os_log_impl(&dword_1A7AD9000, v7, OS_LOG_TYPE_DEFAULT, "session goaway timer %p and block %p for %@ are already scheduled.", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v11 = self->_sessionGoAwayTimer;
        v12 = _Block_copy(self->_sessionGoAwayBlock);
        candidatePairToken5 = [(IDSStunCandidatePair *)self candidatePairToken];
        _IDSLogTransport(@"GL", @"IDS", @"session goaway timer %p and block %p for %@ are already scheduled.", v13, v14, v15, v16, v17, v11);

        if (_IDSShouldLog(0))
        {
          v18 = self->_sessionGoAwayTimer;
          v19 = _Block_copy(self->_sessionGoAwayBlock);
          candidatePairToken6 = [(IDSStunCandidatePair *)self candidatePairToken];
          _IDSLogV(0, @"IDSFoundation", @"GL", @"session goaway timer %p and block %p for %@ are already scheduled.", v20, v21, v22, v23, v18);
        }
      }
    }
  }
}

- (void)stopSessionGoAwayTimer
{
  v26 = *MEMORY[0x1E69E9840];
  sessionGoAwayTimer = self->_sessionGoAwayTimer;
  if (sessionGoAwayTimer)
  {
    dispatch_source_cancel(sessionGoAwayTimer);
    v4 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = self->_sessionGoAwayTimer;
      v6 = _Block_copy(self->_sessionGoAwayBlock);
      *buf = 134218240;
      v23 = v5;
      v24 = 2048;
      v25 = v6;
      _os_log_impl(&dword_1A7AD9000, v4, OS_LOG_TYPE_DEFAULT, "stop session GoAway timer %p, block %p.", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      v7 = self->_sessionGoAwayTimer;
      v20 = _Block_copy(self->_sessionGoAwayBlock);
      _IDSLogTransport(@"GL", @"IDS", @"stop session GoAway timer %p, block %p.", v8, v9, v10, v11, v12, v7);

      if (_IDSShouldLog(0))
      {
        v13 = self->_sessionGoAwayTimer;
        v21 = _Block_copy(self->_sessionGoAwayBlock);
        _IDSLogV(0, @"IDSFoundation", @"GL", @"stop session GoAway timer %p, block %p.", v14, v15, v16, v17, v13);
      }
    }

    v18 = self->_sessionGoAwayTimer;
    self->_sessionGoAwayTimer = 0;

    sessionGoAwayBlock = self->_sessionGoAwayBlock;
    self->_sessionGoAwayBlock = 0;
  }
}

- (unsigned)hbCounter
{
  v2 = self->_hbCounter + 1;
  self->_hbCounter = v2;
  return v2;
}

- (void)setChannelSettings:(unsigned int)settings
{
  settingsCopy = settings;
  v36 = *MEMORY[0x1E69E9840];
  statsIntervalInSeconds = self->_statsIntervalInSeconds;
  if (statsIntervalInSeconds != settings && statsIntervalInSeconds != 60)
  {
    settingsCopy2 = settings;
    v7 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = self->_statsIntervalInSeconds;
      *buf = 67109376;
      *v34 = v8;
      *&v34[4] = 1024;
      *&v34[6] = settingsCopy2;
      _os_log_impl(&dword_1A7AD9000, v7, OS_LOG_TYPE_DEFAULT, "update stats interval (%u->%u).", buf, 0xEu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"update stats interval (%u->%u).", v9, v10, v11, v12, v13, self->_statsIntervalInSeconds);
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"update stats interval (%u->%u).", v14, v15, v16, v17, self->_statsIntervalInSeconds);
        }
      }
    }

    self->_statsIntervalInSeconds = settingsCopy2;
  }

  v18 = settingsCopy & 0x100;
  if (self->_serverIsDegraded != v18 >> 8)
  {
    v19 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = @"NO";
      if (self->_serverIsDegraded)
      {
        v21 = @"YES";
      }

      else
      {
        v21 = @"NO";
      }

      if (v18)
      {
        v20 = @"YES";
      }

      *buf = 138412546;
      *v34 = v21;
      *&v34[8] = 2112;
      v35 = v20;
      _os_log_impl(&dword_1A7AD9000, v19, OS_LOG_TYPE_DEFAULT, "update server degraded status (%@->%@).", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      v27 = self->_serverIsDegraded ? @"YES" : @"NO";
      _IDSLogTransport(@"GL", @"IDS", @"update server degraded status (%@->%@).", v22, v23, v24, v25, v26, v27);
      if (_IDSShouldLog(0))
      {
        if (self->_serverIsDegraded)
        {
          v32 = @"YES";
        }

        else
        {
          v32 = @"NO";
        }

        _IDSLogV(0, @"IDSFoundation", @"GL", @"update server degraded status (%@->%@).", v28, v29, v30, v31, v32);
      }
    }

    self->_serverIsDegraded = BYTE1(v18);
  }
}

- (void)setTestOptionsFromUserDefaults
{
  v65 = *MEMORY[0x1E69E9840];
  if (self->_state - 5 > 0xFFFFFFFFFFFFFFFDLL)
  {
    v17 = MEMORY[0x1AC562F80](@"com.apple.ids", @"QuickRelayTestOptions");
    candidatePairToken3 = v17;
    if (!v17)
    {
LABEL_32:
      v48 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        testStartTime = self->_testStartTime;
        *buf = 138412546;
        v62 = candidatePairToken3;
        v63 = 2048;
        v64 = testStartTime;
        _os_log_impl(&dword_1A7AD9000, v48, OS_LOG_TYPE_DEFAULT, "test(%@) start time = %f", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"GL", @"IDS", @"test(%@) start time = %f", v50, v51, v52, v53, v54, candidatePairToken3);
          if (_IDSShouldLog(0))
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"test(%@) start time = %f", v55, v56, v57, v58, candidatePairToken3);
          }
        }
      }

      goto LABEL_38;
    }

    v18 = [v17 componentsSeparatedByString:{@", "}];
    v19 = [v18 count];
    if (v19 < 2)
    {
      v26 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A7AD9000, v26, OS_LOG_TYPE_DEFAULT, "invalid test configs", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"GL", @"IDS", @"invalid test configs", v27, v28, v29, v30, v31, v59);
          if (_IDSShouldLog(0))
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"invalid test configs", v32, v33, v34, v35, v60);
          }
        }
      }
    }

    else
    {
      v20 = v19;
      v21 = [v18 objectAtIndex:0];
      self->_testOptions = [v21 hexValue];

      if (self->_testOptions)
      {
        v22 = [v18 objectAtIndex:v20 - 1];
        [v22 doubleValue];
        self->_testStartTime = v23;

        if (self->_testStartTime < 0.0)
        {
          self->_testStartTime = 0.0;
        }

        self->_testStartTime = ids_monotonic_time() + self->_testStartTime;
        if (v20 == 4)
        {
          v47 = [v18 objectAtIndex:1];
          self->_testRequestedMessageType = [v47 unsignedIntValue];

          testSubOperation = [v18 objectAtIndex:2];
          self->_testRequestedErrorCode = [testSubOperation unsignedIntValue];
        }

        else
        {
          if (v20 != 3)
          {
LABEL_31:

            goto LABEL_32;
          }

          v24 = [v18 objectAtIndex:1];
          testSubOperation = self->_testSubOperation;
          self->_testSubOperation = v24;
        }

        goto LABEL_31;
      }

      v36 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        testOptions = self->_testOptions;
        *buf = 67109120;
        LODWORD(v62) = testOptions;
        _os_log_impl(&dword_1A7AD9000, v36, OS_LOG_TYPE_DEFAULT, "Invalid testOptions = %d", buf, 8u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"GL", @"IDS", @"Invalid testOptions = %d", v38, v39, v40, v41, v42, self->_testOptions);
          if (_IDSShouldLog(0))
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"Invalid testOptions = %d", v43, v44, v45, v46, self->_testOptions);
          }
        }
      }
    }

    goto LABEL_38;
  }

  v3 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    candidatePairToken = [(IDSStunCandidatePair *)self candidatePairToken];
    v5 = (&_IDSStunCandidatePairStateStrings)[self->_state];
    *buf = 138412546;
    v62 = candidatePairToken;
    v63 = 2080;
    v64 = *&v5;
    _os_log_impl(&dword_1A7AD9000, v3, OS_LOG_TYPE_DEFAULT, "skip setting test options for %@, state [%s].", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      candidatePairToken2 = [(IDSStunCandidatePair *)self candidatePairToken];
      _IDSLogTransport(@"GL", @"IDS", @"skip setting test options for %@, state [%s].", v7, v8, v9, v10, v11, candidatePairToken2);

      if (_IDSShouldLog(0))
      {
        candidatePairToken3 = [(IDSStunCandidatePair *)self candidatePairToken];
        _IDSLogV(0, @"IDSFoundation", @"GL", @"skip setting test options for %@, state [%s].", v13, v14, v15, v16, candidatePairToken3);
LABEL_38:
      }
    }
  }
}

- (void)setRelayLinkID:(unsigned __int16)d
{
  v22 = *MEMORY[0x1E69E9840];
  if (self->_relayLinkID != d)
  {
    dCopy = d;
    v5 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      relayLinkID = self->_relayLinkID;
      *buf = 67109634;
      v17 = relayLinkID;
      v18 = 1024;
      v19 = dCopy;
      v20 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_1A7AD9000, v5, OS_LOG_TYPE_DEFAULT, "update relay-link-id (%04x->%04x) for %@.", buf, 0x18u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"update relay-link-id (%04x->%04x) for %@.", v7, v8, v9, v10, v11, self->_relayLinkID);
      if (_IDSShouldLog(0))
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"update relay-link-id (%04x->%04x) for %@.", v12, v13, v14, v15, self->_relayLinkID);
      }
    }

    self->_relayLinkID = dCopy;
  }
}

- (void)setRemoteRelayLinkID:(unsigned __int16)d
{
  v22 = *MEMORY[0x1E69E9840];
  if (self->_remoteRelayLinkID != d)
  {
    dCopy = d;
    v5 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      remoteRelayLinkID = self->_remoteRelayLinkID;
      *buf = 67109634;
      v17 = remoteRelayLinkID;
      v18 = 1024;
      v19 = dCopy;
      v20 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_1A7AD9000, v5, OS_LOG_TYPE_DEFAULT, "update remote relay-link-id (%04x->%04x) for %@.", buf, 0x18u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"update remote relay-link-id (%04x->%04x) for %@.", v7, v8, v9, v10, v11, self->_remoteRelayLinkID);
      if (_IDSShouldLog(0))
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"update remote relay-link-id (%04x->%04x) for %@.", v12, v13, v14, v15, self->_remoteRelayLinkID);
      }
    }

    self->_remoteRelayLinkID = dCopy;
  }
}

- (void)setDelegatedLinkID:(char)d
{
  v22 = *MEMORY[0x1E69E9840];
  if (self->_delegatedLinkID != d)
  {
    dCopy = d;
    v5 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      delegatedLinkID = self->_delegatedLinkID;
      *buf = 67109634;
      v17 = delegatedLinkID;
      v18 = 1024;
      v19 = dCopy;
      v20 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_1A7AD9000, v5, OS_LOG_TYPE_DEFAULT, "update delegated linkID (%d->%d) for %@.", buf, 0x18u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"update delegated linkID (%d->%d) for %@.", v7, v8, v9, v10, v11, self->_delegatedLinkID);
      if (_IDSShouldLog(0))
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"update delegated linkID (%d->%d) for %@.", v12, v13, v14, v15, self->_delegatedLinkID);
      }
    }

    self->_delegatedLinkID = dCopy;
  }
}

- (void)setServerIsDegraded:(BOOL)degraded
{
  v25 = *MEMORY[0x1E69E9840];
  if (self->_serverIsDegraded != degraded)
  {
    degradedCopy = degraded;
    v5 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = @"NO";
      if (self->_serverIsDegraded)
      {
        v7 = @"YES";
      }

      else
      {
        v7 = @"NO";
      }

      *buf = 138412802;
      v20 = v7;
      v21 = 2112;
      if (degradedCopy)
      {
        v6 = @"YES";
      }

      v22 = v6;
      v23 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_1A7AD9000, v5, OS_LOG_TYPE_DEFAULT, "update server degraded (%@->%@) for %@.", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      v13 = self->_serverIsDegraded ? @"YES" : @"NO";
      _IDSLogTransport(@"GL", @"IDS", @"update server degraded (%@->%@) for %@.", v8, v9, v10, v11, v12, v13);
      if (_IDSShouldLog(0))
      {
        if (self->_serverIsDegraded)
        {
          v18 = @"YES";
        }

        else
        {
          v18 = @"NO";
        }

        _IDSLogV(0, @"IDSFoundation", @"GL", @"update server degraded (%@->%@) for %@.", v14, v15, v16, v17, v18);
      }
    }

    self->_serverIsDegraded = degradedCopy;
  }
}

- (void)setProtocolVersion:(unsigned __int8)version isInitiator:(BOOL)initiator enableSKE:(BOOL)e
{
  eCopy = e;
  initiatorCopy = initiator;
  versionCopy = version;
  v39 = *MEMORY[0x1E69E9840];
  v9 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    protocolVersion = self->_protocolVersion;
    v11 = @"NO";
    if (self->_isInitiator)
    {
      v12 = @"YES";
    }

    else
    {
      v12 = @"NO";
    }

    if (initiatorCopy)
    {
      v13 = @"YES";
    }

    else
    {
      v13 = @"NO";
    }

    sessionID = self->_sessionID;
    if (self->_enableSKE)
    {
      v15 = @"YES";
    }

    else
    {
      v15 = @"NO";
    }

    *buf = 67110658;
    if (eCopy)
    {
      v11 = @"YES";
    }

    v26 = protocolVersion;
    v27 = 1024;
    v28 = versionCopy;
    v29 = 2112;
    v30 = v12;
    v31 = 2112;
    v32 = v13;
    v33 = 2112;
    v34 = v15;
    v35 = 2112;
    v36 = v11;
    v37 = 2112;
    v38 = sessionID;
    _os_log_impl(&dword_1A7AD9000, v9, OS_LOG_TYPE_DEFAULT, "update protocol version (%u->%u), isInitiator (%@->%@), enableSKE (%@->%@) for %@.", buf, 0x40u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"update protocol version (%u->%u), isInitiator (%@->%@), enableSKE (%@->%@) for %@.", v16, v17, v18, v19, v20, self->_protocolVersion);
      if (_IDSShouldLog(0))
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"update protocol version (%u->%u), isInitiator (%@->%@), enableSKE (%@->%@) for %@.", v21, v22, v23, v24, self->_protocolVersion);
      }
    }
  }

  self->_protocolVersion = versionCopy;
  self->_isInitiator = initiatorCopy;
  self->_enableSKE = eCopy;
}

- (void)deriveAES128CTRKeys:(id)keys
{
  v55 = *MEMORY[0x1E69E9840];
  keysCopy = keys;
  v53 = 0u;
  v54 = 0u;
  v52 = 0u;
  if (StunUtilDeriveHKDFSha256Keys(self->_relaySessionKey, self->_sessionID, self->_participantID, keysCopy, &v52, 48))
  {
    v5 = [keysCopy copy];
    hbhSalt = self->_hbhSalt;
    self->_hbhSalt = v5;

    v7 = [MEMORY[0x1E695DEF0] dataWithBytes:&v52 length:16];
    encKey = self->_encKey;
    self->_encKey = v7;

    v9 = [MEMORY[0x1E695DEF0] dataWithBytes:&v53 length:16];
    decKey = self->_decKey;
    self->_decKey = v9;

    v11 = [MEMORY[0x1E695DEF0] dataWithBytes:&v54 length:16];
    hmacKey = self->_hmacKey;
    self->_hmacKey = v11;

    v13 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = self->_encKey;
      v15 = self->_decKey;
      v16 = self->_hmacKey;
      relaySessionKey = self->_relaySessionKey;
      v18 = self->_hbhSalt;
      *buf = 138413570;
      v41 = v14;
      v42 = 2112;
      v43 = v15;
      v44 = 2112;
      v45 = v16;
      v46 = 2112;
      v47 = relaySessionKey;
      v48 = 2112;
      v49 = v18;
      v50 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_1A7AD9000, v13, OS_LOG_TYPE_DEFAULT, "derived AES128-CTR keys: %@, %@, %@ relaySessionKey = %@, salt = %@ for %@", buf, 0x3Eu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"derived AES128-CTR keys: %@, %@, %@ relaySessionKey = %@, salt = %@ for %@", v19, v20, v21, v22, v23, self->_encKey);
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"derived AES128-CTR keys: %@, %@, %@ relaySessionKey = %@, salt = %@ for %@", v24, v25, v26, v27, self->_encKey);
        }
      }
    }
  }

  else
  {
    v28 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v28, OS_LOG_TYPE_DEFAULT, "StunUtilDeriveHKDFSha256Keys failed.", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"StunUtilDeriveHKDFSha256Keys failed.", v29, v30, v31, v32, v33, v38);
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"StunUtilDeriveHKDFSha256Keys failed.", v34, v35, v36, v37, v39);
        }
      }
    }
  }
}

- (unint64_t)getParticipantIDHash:(id)hash
{
  v8 = *MEMORY[0x1E69E9840];
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  macOut[0] = v4;
  macOut[1] = v4;
  data = bswap64([hash unsignedLongLongValue]);
  CCHmac(2u, [(NSData *)self->_hmacKey bytes], [(NSData *)self->_hmacKey length], &data, 8uLL, macOut);
  return bswap64(*&macOut[0]);
}

- (void)_addParticipantIDs:(id)ds toParticipantIDMap:(id)map
{
  v25 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  Mutable = map;
  allKeys = [(NSDictionary *)Mutable allKeys];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = dsCopy;
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      v12 = 0;
      do
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(*(*(&v20 + 1) + 8 * v12), "unsignedLongLongValue")}];
        if (([allKeys containsObject:v13] & 1) == 0)
        {
          v14 = [(IDSStunCandidatePair *)self getParticipantIDHash:v13];
          if (!Mutable)
          {
            Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          }

          v15 = v13;
          if (v15)
          {
            CFDictionarySetValue(Mutable, [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v14], v15);
          }

          v16 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v14];
          if (v16)
          {
            CFDictionarySetValue(Mutable, v15, v16);
          }
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  participantIDMap = self->_participantIDMap;
  self->_participantIDMap = Mutable;
  v18 = Mutable;
}

- (void)initParticipantIDMap:(id)map
{
  mapCopy = map;
  if (self->_hmacKey)
  {
    allParticipantIDs = [(IDSQuickRelaySessionInfo *)self->_relaySessionInfo allParticipantIDs];
    if (mapCopy)
    {
      v6 = [mapCopy mutableCopy];
    }

    else
    {
      v6 = 0;
    }

    [(IDSStunCandidatePair *)self _addParticipantIDs:allParticipantIDs toParticipantIDMap:v6];
  }

  else
  {
    v7 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&dword_1A7AD9000, v7, OS_LOG_TYPE_DEFAULT, "initParticipantIDMap failed due to invalid hmac key.", &v17, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"initParticipantIDMap failed due to invalid hmac key.", v8, v9, v10, v11, v12, v17);
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"initParticipantIDMap failed due to invalid hmac key.", v13, v14, v15, v16, v17);
        }
      }
    }
  }
}

- (void)updateParticipantIDMap:(id)map
{
  mapCopy = map;
  if (self->_hmacKey)
  {
    v5 = [(NSDictionary *)self->_participantIDMap mutableCopy];
    [(IDSStunCandidatePair *)self _addParticipantIDs:mapCopy toParticipantIDMap:v5];
    linkID = self->_linkID;
    v7 = [v5 description];
    v24 = MEMORY[0x1E69E9820];
    LOBYTE(v27) = linkID;
    v8 = v7;
    v26 = v8;
    cut_dispatch_log_queue();
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = objc_loadWeakRetained(&self->_delegate);
      v12 = [(NSDictionary *)self->_participantIDMap copy:v24];
      [v11 candidatePair:self didReceiveMappedParticipantsDict:v12 forLinkID:self->_linkID];
    }
  }

  else
  {
    v13 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v13, OS_LOG_TYPE_DEFAULT, "updateParticipantIDMap failed due to invalid hmac key.", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"updateParticipantIDMap failed due to invalid hmac key.", v14, v15, v16, v17, v18, v23);
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"updateParticipantIDMap failed due to invalid hmac key.", v19, v20, v21, v22, v25);
        }
      }
    }
  }
}

- (void)removeFromParticipantIDMap:(id)map
{
  v49 = *MEMORY[0x1E69E9840];
  mapCopy = map;
  v37 = mapCopy;
  if (self->_hmacKey)
  {
    v5 = mapCopy;
    v6 = [(NSDictionary *)self->_participantIDMap mutableCopy];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v38 objects:v48 count:16];
    if (v8)
    {
      v9 = *v39;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v39 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v38 + 1) + 8 * i);
          v12 = [(IDSStunCandidatePair *)self getParticipantIDHash:v11];
          if (v11 != 0 && v6 != 0)
          {
            CFDictionaryRemoveValue(v6, v11);
          }

          if ([MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v12] != 0 && v6 != 0)
          {
            CFDictionaryRemoveValue(v6, [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v12]);
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v38 objects:v48 count:16];
      }

      while (v8);
    }

    objc_storeStrong(&self->_participantIDMap, v6);
    v13 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      linkID = self->_linkID;
      participantIDMap = self->_participantIDMap;
      *buf = 138412802;
      v43 = v7;
      v44 = 1024;
      v45 = linkID;
      v46 = 2112;
      v47 = participantIDMap;
      _os_log_impl(&dword_1A7AD9000, v13, OS_LOG_TYPE_DEFAULT, "removed %@ from participantID map for link %d:%@", buf, 0x1Cu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"removed %@ from participantID map for link %d:%@", v16, v17, v18, v19, v20, v7);
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"removed %@ from participantID map for link %d:%@", v21, v22, v23, v24, v7);
        }
      }
    }
  }

  else
  {
    v25 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v25, OS_LOG_TYPE_DEFAULT, "removeFromParticipantIDMap failed due to invalid hmac key.", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"removeFromParticipantIDMap failed due to invalid hmac key.", v26, v27, v28, v29, v30, v35);
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"removeFromParticipantIDMap failed due to invalid hmac key.", v31, v32, v33, v34, v36);
        }
      }
    }
  }
}

- (void)updateURIToParticipantIDMapping:(id)mapping
{
  v52 = *MEMORY[0x1E69E9840];
  mappingCopy = mapping;
  Value = 0;
  theDict = mappingCopy;
  if (mappingCopy && @"qal")
  {
    Value = CFDictionaryGetValue(mappingCopy, @"qal");
  }

  v5 = Value;
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v39 = v5;
  [v6 addObjectsFromArray:v5];
  if (!self->_URIToParticipantIDs)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    URIToParticipantIDs = self->_URIToParticipantIDs;
    self->_URIToParticipantIDs = Mutable;
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = v6;
  v9 = [obj countByEnumeratingWithState:&v43 objects:v51 count:16];
  if (v9)
  {
    v10 = *v44;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v44 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v43 + 1) + 8 * i);
        if (v12)
        {
          v13 = @"qri" == 0;
        }

        else
        {
          v13 = 1;
        }

        if (v13)
        {
          v14 = 0;
        }

        else
        {
          v14 = CFDictionaryGetValue(*(*(&v43 + 1) + 8 * i), @"qri");
        }

        v15 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v14, "unsignedLongLongValue")}];
        if (v12 != 0 && @"tP" != 0)
        {
          v16 = CFDictionaryGetValue(v12, @"tP");
          if (v16)
          {
            v17 = v16;
            v18 = [(NSDictionary *)self->_URIToParticipantIDs objectForKeyedSubscript:v16];
            v19 = v18;
            if (v18)
            {
              if (([v18 containsObject:v15] & 1) == 0)
              {
                [v19 addObject:v15];
                CFDictionarySetValue(self->_URIToParticipantIDs, v17, v19);
              }
            }

            else
            {
              v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
              [v20 addObject:v15];
              v21 = v20;
              if (v21)
              {
                CFDictionarySetValue(self->_URIToParticipantIDs, v17, v21);
              }

              else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                v48 = v17;
                v49 = 2080;
                v50 = "_URIToParticipantIDs";
                _os_log_error_impl(&dword_1A7AD9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", buf, 0x16u);
              }
            }
          }
        }
      }

      v9 = [obj countByEnumeratingWithState:&v43 objects:v51 count:16];
    }

    while (v9);
  }

  v22 = [(NSDictionary *)self->_URIToParticipantIDs description];
  if (@"qai")
  {
    v23 = theDict != 0;
  }

  else
  {
    v23 = 0;
  }

  if (v23)
  {
    v24 = CFDictionaryGetValue(theDict, @"qai");
    if (v24)
    {
      v25 = IDSLoggableDescriptionForObjectOnService(v22, v24);

      v22 = v25;
    }
  }

  else
  {
    v24 = 0;
  }

  v26 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = [(NSDictionary *)self->_URIToParticipantIDs count];
    *buf = 134218242;
    v48 = v27;
    v49 = 2112;
    v50 = v22;
    _os_log_impl(&dword_1A7AD9000, v26, OS_LOG_TYPE_DEFAULT, "URIToParticipantIDs count %lu: %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v28 = [(NSDictionary *)self->_URIToParticipantIDs count];
      _IDSLogTransport(@"GL", @"IDS", @"URIToParticipantIDs count %lu: %@", v29, v30, v31, v32, v33, v28);
      if (_IDSShouldLog(0))
      {
        v34 = [(NSDictionary *)self->_URIToParticipantIDs count];
        _IDSLogV(0, @"IDSFoundation", @"GL", @"URIToParticipantIDs count %lu: %@", v35, v36, v37, v38, v34);
      }
    }
  }
}

- (unint64_t)createAliasForParticipantID:(unint64_t)d salt:(id)salt
{
  v32 = *MEMORY[0x1E69E9840];
  saltCopy = salt;
  participantIDMap = self->_participantIDMap;
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:d];
  v9 = [(NSDictionary *)participantIDMap objectForKeyedSubscript:v8];

  if (v9)
  {
    v10 = IDSIDAliasHashUInt64([v9 unsignedLongLongValue], saltCopy);
    v11 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218755;
      unsignedLongLongValue = [v9 unsignedLongLongValue];
      v26 = 2048;
      dCopy = d;
      v28 = 2112;
      v29 = saltCopy;
      v30 = 2049;
      v31 = v10;
      _os_log_impl(&dword_1A7AD9000, v11, OS_LOG_TYPE_DEFAULT, "createAliasForParticipantID real participantID %llu translated %llu salt %@ to alias %{private}llu", buf, 0x2Au);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        unsignedLongLongValue2 = [v9 unsignedLongLongValue];
        _IDSLogTransport(@"GL", @"IDS", @"createAliasForParticipantID real participantID %llu translated %llu salt %@ to alias %{private}llu", v13, v14, v15, v16, v17, unsignedLongLongValue2);
        if (_IDSShouldLog(0))
        {
          unsignedLongLongValue3 = [v9 unsignedLongLongValue];
          _IDSLogV(0, @"IDSFoundation", @"GL", @"createAliasForParticipantID real participantID %llu translated %llu salt %@ to alias %{private}llu", v19, v20, v21, v22, unsignedLongLongValue3);
        }
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)participantIDForAlias:(unint64_t)alias salt:(id)salt
{
  v32 = *MEMORY[0x1E69E9840];
  saltCopy = salt;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = self->_participantIDMap;
  v8 = [(NSDictionary *)v7 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v8)
  {
    v9 = *v24;
    while (2)
    {
      v10 = 0;
      do
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(v7);
        }

        unsignedLongLongValue = [*(*(&v23 + 1) + 8 * v10) unsignedLongLongValue];
        if (IDSIDAliasHashUInt64(unsignedLongLongValue, saltCopy) == alias)
        {

          goto LABEL_17;
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSDictionary *)v7 countByEnumeratingWithState:&v23 objects:v31 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v12 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    aliasCopy = alias;
    v29 = 2112;
    v30 = saltCopy;
    _os_log_impl(&dword_1A7AD9000, v12, OS_LOG_TYPE_DEFAULT, "participantIDForAlias: No match found for alias %llu salt %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"participantIDForAlias: No match found for alias %llu salt %@", v13, v14, v15, v16, v17, alias);
      if (_IDSShouldLog(0))
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"participantIDForAlias: No match found for alias %llu salt %@", v18, v19, v20, v21, alias);
      }
    }
  }

  unsignedLongLongValue = 0;
LABEL_17:

  return unsignedLongLongValue;
}

- (BOOL)_didLocalExternalAddressChange:(const sockaddr *)change
{
  v39 = *MEMORY[0x1E69E9840];
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v37 = v4;
  v38 = v4;
  v35 = v4;
  v36 = v4;
  v33 = v4;
  v34 = v4;
  *__str = v4;
  v32 = v4;
  v29 = v4;
  v30 = v4;
  v27 = v4;
  v28 = v4;
  v25 = v4;
  v26 = v4;
  *v23 = v4;
  v24 = v4;
  external = [(IDSStunCandidate *)self->_local external];
  v6 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v20 = SAToIPPortString(__str, 0x80uLL, external);
    v21 = 2080;
    v22 = SAToIPPortString(v23, 0x80uLL, change);
    _os_log_impl(&dword_1A7AD9000, v6, OS_LOG_TYPE_DEFAULT, "original external address = %s, new external address = %s", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v7 = SAToIPPortString(__str, 0x80uLL, external);
      SAToIPPortString(v23, 0x80uLL, change);
      _IDSLogTransport(@"GL", @"IDS", @"original external address = %s, new external address = %s", v8, v9, v10, v11, v12, v7);
      if (_IDSShouldLog(0))
      {
        v13 = SAToIPPortString(__str, 0x80uLL, external);
        SAToIPPortString(v23, 0x80uLL, change);
        _IDSLogV(0, @"IDSFoundation", @"GL", @"original external address = %s, new external address = %s", v14, v15, v16, v17, v13);
      }
    }
  }

  return !IsSameSA(change, external) && change->sa_family != 0;
}

- (void)addStunRequest:(id)request
{
  v17 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  if (([(NSMutableArray *)self->_pendingStunRequests containsObject:requestCopy]& 1) == 0)
  {
    pendingStunRequests = self->_pendingStunRequests;
    if (!pendingStunRequests)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v7 = self->_pendingStunRequests;
      self->_pendingStunRequests = v6;

      pendingStunRequests = self->_pendingStunRequests;
    }

    if (requestCopy && pendingStunRequests)
    {
      CFArrayAppendValue(pendingStunRequests, requestCopy);
    }

    v8 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v14 = requestCopy;
      v15 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_1A7AD9000, v8, OS_LOG_TYPE_DEFAULT, "add pending stun request: %@ for %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog(0))
    {
      _IDSLogV(0, @"IDSFoundation", @"GL", @"add pending stun request: %@ for %@", v9, v10, v11, v12, requestCopy);
    }
  }
}

- (void)removeStunRequest:(id)request
{
  v29 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  if ([(NSMutableArray *)self->_pendingStunRequests containsObject:requestCopy])
  {
    [(NSMutableArray *)self->_pendingStunRequests removeObject:requestCopy];
    v5 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v26 = requestCopy;
      v27 = 2112;
      selfCopy2 = self;
      _os_log_impl(&dword_1A7AD9000, v5, OS_LOG_TYPE_DEFAULT, "remove pending stun request: %@ for %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"remove pending stun request: %@ for %@", v6, v7, v8, v9, v10, requestCopy);
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"remove pending stun request: %@ for %@", v11, v12, v13, v14, requestCopy);
        }
      }
    }
  }

  if ([(NSMutableArray *)self->_repliedStunRequests containsObject:requestCopy])
  {
    [(NSMutableArray *)self->_repliedStunRequests removeObject:requestCopy];
    v15 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v26 = requestCopy;
      v27 = 2112;
      selfCopy2 = self;
      _os_log_impl(&dword_1A7AD9000, v15, OS_LOG_TYPE_DEFAULT, "remove replied stun request: %@ for %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"remove replied stun request: %@ for %@", v16, v17, v18, v19, v20, requestCopy);
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"remove replied stun request: %@ for %@", v21, v22, v23, v24, requestCopy);
        }
      }
    }
  }
}

- (BOOL)shouldRexmitStunRequest:(id)request
{
  requestCopy = request;
  if (([(NSMutableArray *)self->_repliedStunRequests containsObject:requestCopy]& 1) != 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSMutableArray *)self->_pendingStunRequests containsObject:requestCopy];
  }

  return v5;
}

- (BOOL)shouldProcessStunResponse:(id)response
{
  v24 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  v5 = [(NSMutableArray *)self->_pendingStunRequests containsObject:responseCopy];
  if (v5)
  {
    repliedStunRequests = self->_repliedStunRequests;
    if (!repliedStunRequests)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v8 = self->_repliedStunRequests;
      self->_repliedStunRequests = v7;

      repliedStunRequests = self->_repliedStunRequests;
    }

    if (responseCopy && repliedStunRequests)
    {
      CFArrayAppendValue(repliedStunRequests, responseCopy);
    }

    [(NSMutableArray *)self->_pendingStunRequests removeObject:responseCopy];
  }

  else
  {
    v9 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v21 = responseCopy;
      v22 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_1A7AD9000, v9, OS_LOG_TYPE_DEFAULT, "stun request %@ is no longer pending for %@, ignore response.", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"stun request %@ is no longer pending for %@, ignore response.", v10, v11, v12, v13, v14, responseCopy);
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"stun request %@ is no longer pending for %@, ignore response.", v15, v16, v17, v18, responseCopy);
        }
      }
    }
  }

  return v5;
}

- (void)_savePluginNameForRequest:(id)request pluginName:(id)name
{
  key = request;
  nameCopy = name;
  if ([(NSMutableArray *)self->_pendingStunRequests containsObject:key])
  {
    if (!self->_pluginNameToStunReqID)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      pluginNameToStunReqID = self->_pluginNameToStunReqID;
      self->_pluginNameToStunReqID = Mutable;
    }

    if (nameCopy)
    {
      CFDictionarySetValue(self->_pluginNameToStunReqID, key, nameCopy);
    }
  }
}

- (id)_pluginNameForStunRequest:(id)request
{
  Value = 0;
  if (request)
  {
    pluginNameToStunReqID = self->_pluginNameToStunReqID;
    if (pluginNameToStunReqID)
    {
      Value = CFDictionaryGetValue(pluginNameToStunReqID, request);
      v3 = vars8;
    }
  }

  return Value;
}

- (void)updateStunSentBytes:(int64_t)bytes requestID:(id)d
{
  dCopy = d;
  if ((bytes & 0x8000000000000000) == 0)
  {
    Value = 0;
    key = dCopy;
    if (dCopy && self->_stunSentBytesToRequestID)
    {
      Value = CFDictionaryGetValue(self->_stunSentBytesToRequestID, dCopy);
    }

    v8 = bytes + [Value unsignedIntValue];
    if (!self->_stunSentBytesToRequestID)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      stunSentBytesToRequestID = self->_stunSentBytesToRequestID;
      self->_stunSentBytesToRequestID = Mutable;
    }

    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v8];
    if (v11)
    {
      CFDictionarySetValue(self->_stunSentBytesToRequestID, key, v11);
    }

    dCopy = key;
  }
}

- (unint64_t)getStunSentBytes:(id)bytes
{
  bytesCopy = bytes;
  if (bytesCopy && (stunSentBytesToRequestID = self->_stunSentBytesToRequestID) != 0)
  {
    unsignedIntValue = [CFDictionaryGetValue(stunSentBytesToRequestID bytesCopy)];
  }

  else
  {
    unsignedIntValue = [0 unsignedIntValue];
    if (!bytesCopy)
    {
      goto LABEL_7;
    }
  }

  v7 = self->_stunSentBytesToRequestID;
  if (v7)
  {
    CFDictionaryRemoveValue(v7, bytesCopy);
  }

LABEL_7:

  return unsignedIntValue;
}

- (void)sendStatsRequest:(id)request options:(id)options
{
  v98 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  optionsCopy = options;
  if (self->_state - 5 > 0xFFFFFFFFFFFFFFFDLL)
  {
    requestID = [requestCopy requestID];
    v22 = ids_monotonic_time();
    [requestCopy startTime];
    if (v23 == 0.0)
    {
      if (!requestID)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v24 = self->_statsIntervalInSeconds >> 1;
      if (v22 - v23 >= v24)
      {
        v71 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v95 = requestID;
          v96 = 1024;
          *v97 = v24;
          _os_log_impl(&dword_1A7AD9000, v71, OS_LOG_TYPE_DEFAULT, "stats request %@ timed out after %u seconds.", buf, 0x12u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            _IDSLogTransport(@"GL", @"IDS", @"stats request %@ timed out after %u seconds.", v72, v73, v74, v75, v76, requestID);
            if (_IDSShouldLog(0))
            {
              _IDSLogV(0, @"IDSFoundation", @"GL", @"stats request %@ timed out after %u seconds.", v77, v78, v79, v80, requestID);
            }
          }
        }

        [(IDSStunCandidatePair *)self removeStunRequest:requestID];
        requestIDToStatsIDs = self->_requestIDToStatsIDs;
        if (requestIDToStatsIDs)
        {
          if (requestID)
          {
            v82 = CFDictionaryGetValue(requestIDToStatsIDs, requestID);
            if (v82)
            {
              v83 = v82;
              [(NSMutableDictionary *)self->_requestIDToStatsIDs removeObjectForKey:requestID];
            }
          }
        }

        goto LABEL_66;
      }

      v22 = v23;
      if (!requestID)
      {
        goto LABEL_14;
      }
    }

    if (![(IDSStunCandidatePair *)self shouldRexmitStunRequest:requestID])
    {
      [(IDSStunCandidatePair *)self removeStunRequest:requestID];
      goto LABEL_66;
    }

LABEL_14:
    transactionID = [requestCopy transactionID];
    v26 = StunUtilCreateMessage(3811, transactionID, self, optionsCopy);

    if (v26)
    {
      requestID2 = [v26 requestID];

      [v26 setStartTime:v22];
      [(IDSStunCandidatePair *)self addStunRequest:requestID2];
      Value = 0;
      if (optionsCopy && @"ids-extchannel-stat-identifier-key")
      {
        Value = CFDictionaryGetValue(optionsCopy, @"ids-extchannel-stat-identifier-key");
      }

      unsignedLongLongValue = [Value unsignedLongLongValue];
      v30 = 0;
      if (self->_requestIDToStatsIDs && requestID2)
      {
        v30 = CFDictionaryGetValue(self->_requestIDToStatsIDs, requestID2);
      }

      unsignedLongLongValue2 = [v30 unsignedLongLongValue];
      if (unsignedLongLongValue && unsignedLongLongValue != unsignedLongLongValue2)
      {
        if (!self->_requestIDToStatsIDs)
        {
          Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          v33 = self->_requestIDToStatsIDs;
          self->_requestIDToStatsIDs = Mutable;
        }

        v34 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:unsignedLongLongValue];
        if (v34)
        {
          CFDictionarySetValue(self->_requestIDToStatsIDs, requestID2, v34);
        }

        v35 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218242;
          v95 = unsignedLongLongValue;
          v96 = 2112;
          *v97 = requestID2;
          _os_log_impl(&dword_1A7AD9000, v35, OS_LOG_TYPE_DEFAULT, "add stats identifier %llu for %@.", buf, 0x16u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            _IDSLogTransport(@"GL", @"IDS", @"add stats identifier %llu for %@.", v36, v37, v38, v39, v40, unsignedLongLongValue);
            if (_IDSShouldLog(0))
            {
              _IDSLogV(0, @"IDSFoundation", @"GL", @"add stats identifier %llu for %@.", v41, v42, v43, v44, unsignedLongLongValue);
            }
          }
        }
      }

      v45 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        linkID = self->_linkID;
        *buf = 138412802;
        v95 = requestID2;
        v96 = 1024;
        *v97 = linkID;
        *&v97[4] = 2048;
        *&v97[6] = unsignedLongLongValue;
        _os_log_impl(&dword_1A7AD9000, v45, OS_LOG_TYPE_DEFAULT, "send stats req %@ for link %d, statsIdentifier: %llu.", buf, 0x1Cu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"GL", @"IDS", @"send stats req %@ for link %d, statsIdentifier: %llu.", v47, v48, v49, v50, v51, requestID2);
          if (_IDSShouldLog(0))
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"send stats req %@ for link %d, statsIdentifier: %llu.", v52, v53, v54, v55, requestID2);
          }
        }
      }

      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained sendStunMessage:v26 candidatePair:self];

      v91 = 0u;
      v92 = 0u;
      v89 = 0u;
      v90 = 0u;
      v57 = self->_packetListeners;
      v58 = [(NSMutableSet *)v57 countByEnumeratingWithState:&v89 objects:v93 count:16];
      if (v58)
      {
        v59 = *v90;
        do
        {
          for (i = 0; i != v58; ++i)
          {
            if (*v90 != v59)
            {
              objc_enumerationMutation(v57);
            }

            [*(*(&v89 + 1) + 8 * i) didSendStatsRequestWithID:requestID2 linkID:-[IDSStunCandidatePair linkID](self completionHandler:{"linkID"), &unk_1F1AAB920}];
          }

          v58 = [(NSMutableSet *)v57 countByEnumeratingWithState:&v89 objects:v93 count:16];
        }

        while (v58);
      }

      if (([(IDSStunCandidate *)self->_local transport]- 1) > 1)
      {
        requestID = requestID2;
        requestCopy = v26;
      }

      else
      {
        v86[0] = MEMORY[0x1E69E9820];
        v86[1] = 3221225472;
        v86[2] = sub_1A7C7ABD4;
        v86[3] = &unk_1E77E1068;
        v86[4] = self;
        requestCopy = v26;
        v87 = requestCopy;
        v88 = optionsCopy;
        IDSTransportThreadAddBlockAfter(v86, 1.0);

        requestID = requestID2;
      }
    }

    else
    {
      v61 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A7AD9000, v61, OS_LOG_TYPE_DEFAULT, "failed to create stats request.", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"GL", @"IDS", @"failed to create stats request.", v62, v63, v64, v65, v66, v84);
          if (_IDSShouldLog(0))
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"failed to create stats request.", v67, v68, v69, v70, v85);
          }
        }
      }

      requestCopy = 0;
    }

    goto LABEL_66;
  }

  v8 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    candidatePairToken = [(IDSStunCandidatePair *)self candidatePairToken];
    v10 = (&_IDSStunCandidatePairStateStrings)[self->_state];
    *buf = 138412546;
    v95 = candidatePairToken;
    v96 = 2080;
    *v97 = v10;
    _os_log_impl(&dword_1A7AD9000, v8, OS_LOG_TYPE_DEFAULT, "skip stats request for %@, state [%s].", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      candidatePairToken2 = [(IDSStunCandidatePair *)self candidatePairToken];
      _IDSLogTransport(@"GL", @"IDS", @"skip stats request for %@, state [%s].", v12, v13, v14, v15, v16, candidatePairToken2);

      if (_IDSShouldLog(0))
      {
        requestID = [(IDSStunCandidatePair *)self candidatePairToken];
        _IDSLogV(0, @"IDSFoundation", @"GL", @"skip stats request for %@, state [%s].", v18, v19, v20, v21, requestID);
LABEL_66:
      }
    }
  }
}

- (void)sendInfoRequest:(id)request
{
  v71 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v5 = requestCopy;
  if (self->_state < 5)
  {
    requestID = [requestCopy requestID];
    if (v5)
    {
      v20 = ids_monotonic_time();
      [v5 startTime];
      if (v20 - v21 >= 10.0)
      {
        v22 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          transactionID = [v5 transactionID];
          *buf = 138412546;
          v68 = transactionID;
          v69 = 1024;
          LODWORD(v70) = 10;
          _os_log_impl(&dword_1A7AD9000, v22, OS_LOG_TYPE_DEFAULT, "info request %@ timed out after %d seconds.", buf, 0x12u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            transactionID2 = [v5 transactionID];
            _IDSLogTransport(@"GL", @"IDS", @"info request %@ timed out after %d seconds.", v25, v26, v27, v28, v29, transactionID2);

            if (_IDSShouldLog(0))
            {
              transactionID3 = [v5 transactionID];
              _IDSLogV(0, @"IDSFoundation", @"GL", @"info request %@ timed out after %d seconds.", v31, v32, v33, v34, transactionID3);
            }
          }
        }

        GLUtilReportAWDStunMessageEvent(v5, 26, self, 0.0);
        v35 = GLUCreateQRStunMessageEvent(v5, 26, self, 0, 0.0);
        if (v35)
        {
          [(IDSStunCandidatePair *)self _notifyQREventAdded:v35];
        }

        [(IDSStunCandidatePair *)self removeStunRequest:requestID];
        [(IDSStunCandidatePair *)self processSessionInfoRequestTimeout:requestID];

        goto LABEL_38;
      }
    }

    else
    {
      v36 = StunUtilCreateMessage(3812, 0, self, 0);
      v5 = v36;
      if (!v36)
      {
        v51 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1A7AD9000, v51, OS_LOG_TYPE_DEFAULT, "failed to create info request.", buf, 2u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            _IDSLogTransport(@"GL", @"IDS", @"failed to create info request.", v52, v53, v54, v55, v56, v61);
            if (_IDSShouldLog(0))
            {
              _IDSLogV(0, @"IDSFoundation", @"GL", @"failed to create info request.", v57, v58, v59, v60, v62);
            }
          }
        }

        v5 = 0;
        goto LABEL_38;
      }

      requestID2 = [v36 requestID];

      [(IDSStunCandidatePair *)self addStunRequest:requestID2];
      requestID = requestID2;
    }

    if ([(IDSStunCandidatePair *)self shouldRexmitStunRequest:requestID])
    {
      v38 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        candidatePairToken = [(IDSStunCandidatePair *)self candidatePairToken];
        *buf = 138412546;
        v68 = v5;
        v69 = 2112;
        v70 = candidatePairToken;
        _os_log_impl(&dword_1A7AD9000, v38, OS_LOG_TYPE_DEFAULT, "send info request %@ for %@.", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          candidatePairToken2 = [(IDSStunCandidatePair *)self candidatePairToken];
          _IDSLogTransport(@"GL", @"IDS", @"send info request %@ for %@.", v40, v41, v42, v43, v44, v5);

          if (_IDSShouldLog(0))
          {
            candidatePairToken3 = [(IDSStunCandidatePair *)self candidatePairToken];
            _IDSLogV(0, @"IDSFoundation", @"GL", @"send info request %@ for %@.", v45, v46, v47, v48, v5);
          }
        }
      }

      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v50 = [WeakRetained sendStunMessage:v5 candidatePair:self];

      [(IDSStunCandidatePair *)self updateStunSentBytes:v50 requestID:requestID];
      if (([(IDSStunCandidate *)self->_local transport]- 1) <= 1)
      {
        v65[0] = MEMORY[0x1E69E9820];
        v65[1] = 3221225472;
        v65[2] = sub_1A7C7B274;
        v65[3] = &unk_1E77E0250;
        v65[4] = self;
        v5 = v5;
        v66 = v5;
        IDSTransportThreadAddBlockAfter(v65, 1.0);
      }
    }

    else
    {
      [(IDSStunCandidatePair *)self removeStunRequest:requestID];
    }

    goto LABEL_38;
  }

  v6 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    candidatePairToken4 = [(IDSStunCandidatePair *)self candidatePairToken];
    v8 = (&_IDSStunCandidatePairStateStrings)[self->_state];
    *buf = 138412546;
    v68 = candidatePairToken4;
    v69 = 2080;
    v70 = v8;
    _os_log_impl(&dword_1A7AD9000, v6, OS_LOG_TYPE_DEFAULT, "skip info request for %@, state [%s].", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      candidatePairToken5 = [(IDSStunCandidatePair *)self candidatePairToken];
      _IDSLogTransport(@"GL", @"IDS", @"skip info request for %@, state [%s].", v10, v11, v12, v13, v14, candidatePairToken5);

      if (_IDSShouldLog(0))
      {
        requestID = [(IDSStunCandidatePair *)self candidatePairToken];
        _IDSLogV(0, @"IDSFoundation", @"GL", @"skip info request for %@, state [%s].", v16, v17, v18, v19, requestID);
LABEL_38:
      }
    }
  }
}

- (void)sendQRPluginRegistrationRequest:(id)request options:(id)options
{
  v81 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  optionsCopy = options;
  if (self->_state < 5)
  {
    requestID = [requestCopy requestID];
    if (requestCopy)
    {
      v22 = ids_monotonic_time();
      [requestCopy startTime];
      if (v22 - v23 >= 10.0)
      {
        v46 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
        {
          transactionID = [requestCopy transactionID];
          *buf = 138412546;
          v78 = transactionID;
          v79 = 1024;
          LODWORD(v80) = 10;
          _os_log_impl(&dword_1A7AD9000, v46, OS_LOG_TYPE_DEFAULT, "plugin registration request %@ timed out after %d seconds.", buf, 0x12u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            transactionID2 = [requestCopy transactionID];
            _IDSLogTransport(@"GL", @"IDS", @"plugin registration request %@ timed out after %d seconds.", v49, v50, v51, v52, v53, transactionID2);

            if (_IDSShouldLog(0))
            {
              transactionID3 = [requestCopy transactionID];
              _IDSLogV(0, @"IDSFoundation", @"GL", @"plugin registration request %@ timed out after %d seconds.", v55, v56, v57, v58, transactionID3);
            }
          }
        }

        GLUtilReportAWDStunMessageEvent(requestCopy, 26, self, 0.0);
        v59 = GLUCreateQRStunMessageEvent(requestCopy, 33, self, 0, 0.0);
        if (v59)
        {
          [(IDSStunCandidatePair *)self _notifyQREventAdded:v59];
        }

        [(IDSStunCandidatePair *)self removeStunRequest:requestID];
        [(IDSStunCandidatePair *)self _removeStunPluginRegistrationRequest:requestID];

        goto LABEL_48;
      }

      requestID2 = requestID;
    }

    else
    {
      requestCopy = StunUtilCreateMessage(3816, 0, self, optionsCopy);
      encKey = [(IDSStunCandidatePair *)self encKey];
      [requestCopy initAES128CTR:encKey];

      if (!requestCopy)
      {
        v60 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1A7AD9000, v60, OS_LOG_TYPE_DEFAULT, "failed to create QR plugin registration request.", buf, 2u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            _IDSLogTransport(@"GL", @"IDS", @"failed to create QR plugin registration request.", v61, v62, v63, v64, v65, v70);
            if (_IDSShouldLog(0))
            {
              _IDSLogV(0, @"IDSFoundation", @"GL", @"failed to create QR plugin registration request.", v66, v67, v68, v69, v71);
            }
          }
        }

        requestCopy = 0;
        goto LABEL_48;
      }

      requestID2 = [requestCopy requestID];

      [(IDSStunCandidatePair *)self addStunRequest:requestID2];
      Value = 0;
      if (optionsCopy && @"gl-option-plugin-operation")
      {
        Value = CFDictionaryGetValue(optionsCopy, @"gl-option-plugin-operation");
      }

      v27 = [Value isEqualToNumber:&unk_1F1B20330];
      v28 = @"Unregister";
      if (v27)
      {
        v28 = @"Register";
      }

      v29 = v28;
      v30 = 0;
      v31 = MEMORY[0x1E696AEC0];
      if (optionsCopy && @"gl-option-plugin-name")
      {
        v30 = CFDictionaryGetValue(optionsCopy, @"gl-option-plugin-name");
      }

      v32 = [v31 stringWithFormat:@"%@.%@", v30, v29];
      [(IDSStunCandidatePair *)self _savePluginNameForRequest:requestID2 pluginName:v32];
    }

    if ([(IDSStunCandidatePair *)self shouldRexmitStunRequest:requestID2])
    {
      v33 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        candidatePairToken = [(IDSStunCandidatePair *)self candidatePairToken];
        *buf = 138412546;
        v78 = requestCopy;
        v79 = 2112;
        v80 = candidatePairToken;
        _os_log_impl(&dword_1A7AD9000, v33, OS_LOG_TYPE_DEFAULT, "send QR plugin registration request %@ for %@.", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          candidatePairToken2 = [(IDSStunCandidatePair *)self candidatePairToken];
          _IDSLogTransport(@"GL", @"IDS", @"send QR plugin registration request %@ for %@.", v35, v36, v37, v38, v39, requestCopy);

          if (_IDSShouldLog(0))
          {
            candidatePairToken3 = [(IDSStunCandidatePair *)self candidatePairToken];
            _IDSLogV(0, @"IDSFoundation", @"GL", @"send QR plugin registration request %@ for %@.", v40, v41, v42, v43, requestCopy);
          }
        }
      }

      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v45 = [WeakRetained sendStunMessage:requestCopy candidatePair:self];

      [(IDSStunCandidatePair *)self updateStunSentBytes:v45 requestID:requestID2];
      if (([(IDSStunCandidate *)self->_local transport]- 1) <= 1)
      {
        v74[0] = MEMORY[0x1E69E9820];
        v74[1] = 3221225472;
        v74[2] = sub_1A7C7BA0C;
        v74[3] = &unk_1E77E1068;
        v74[4] = self;
        requestCopy = requestCopy;
        v75 = requestCopy;
        v76 = optionsCopy;
        IDSTransportThreadAddBlockAfter(v74, 1.0);
      }
    }

    else
    {
      [(IDSStunCandidatePair *)self removeStunRequest:requestID2];
      [(IDSStunCandidatePair *)self _removeStunPluginRegistrationRequest:requestID2];
    }

    requestID = requestID2;
LABEL_48:

    goto LABEL_49;
  }

  v8 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    candidatePairToken4 = [(IDSStunCandidatePair *)self candidatePairToken];
    v10 = (&_IDSStunCandidatePairStateStrings)[self->_state];
    *buf = 138412546;
    v78 = candidatePairToken4;
    v79 = 2080;
    v80 = v10;
    _os_log_impl(&dword_1A7AD9000, v8, OS_LOG_TYPE_DEFAULT, "skip plugin registration request for %@, state [%s].", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      candidatePairToken5 = [(IDSStunCandidatePair *)self candidatePairToken];
      _IDSLogTransport(@"GL", @"IDS", @"skip plugin registration request for %@, state [%s].", v12, v13, v14, v15, v16, candidatePairToken5);

      if (_IDSShouldLog(0))
      {
        requestID = [(IDSStunCandidatePair *)self candidatePairToken];
        _IDSLogV(0, @"IDSFoundation", @"GL", @"skip plugin registration request for %@, state [%s].", v18, v19, v20, v21, requestID);
        goto LABEL_48;
      }
    }
  }

LABEL_49:
}

- (void)sendSessionInfoRequest:(id)request options:(id)options
{
  v101 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  optionsCopy = options;
  if (self->_state - 5 > 0xFFFFFFFFFFFFFFFDLL)
  {
    requestID = [requestCopy requestID];
    if (requestCopy)
    {
      v22 = ids_monotonic_time();
      [requestCopy startTime];
      if (v22 - v23 >= 10.0)
      {
        v51 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
        {
          transactionID = [requestCopy transactionID];
          *buf = 138412546;
          v96 = transactionID;
          v97 = 1024;
          LODWORD(v98) = 10;
          _os_log_impl(&dword_1A7AD9000, v51, OS_LOG_TYPE_DEFAULT, "session-info request %@ timed out after %d seconds.", buf, 0x12u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            transactionID2 = [requestCopy transactionID];
            _IDSLogTransport(@"GL", @"IDS", @"session-info request %@ timed out after %d seconds.", v54, v55, v56, v57, v58, transactionID2);

            if (_IDSShouldLog(0))
            {
              transactionID3 = [requestCopy transactionID];
              _IDSLogV(0, @"IDSFoundation", @"GL", @"session-info request %@ timed out after %d seconds.", v60, v61, v62, v63, transactionID3);
            }
          }
        }

        GLUtilReportAWDStunMessageEvent(requestCopy, 30, self, 0.0);
        v64 = GLUCreateQRStunMessageEvent(requestCopy, 30, self, 0, 0.0);
        if (v64)
        {
          [(IDSStunCandidatePair *)self _notifyQREventAdded:v64];
        }

        [(IDSStunCandidatePair *)self removeStunRequest:requestID];
        [(IDSStunCandidatePair *)self processSessionInfoRequestTimeout:requestID];

        goto LABEL_52;
      }

      requestID2 = requestID;
    }

    else
    {
      v40 = StunUtilCreateMessage(3813, 0, self, optionsCopy);
      requestCopy = v40;
      if (!v40)
      {
        v65 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1A7AD9000, v65, OS_LOG_TYPE_DEFAULT, "failed to create session-info request.", buf, 2u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            _IDSLogTransport(@"GL", @"IDS", @"failed to create session-info request.", v66, v67, v68, v69, v70, v86);
            if (_IDSShouldLog(0))
            {
              _IDSLogV(0, @"IDSFoundation", @"GL", @"failed to create session-info request.", v71, v72, v73, v74, v87);
            }
          }
        }

        requestCopy = 0;
        goto LABEL_52;
      }

      [v40 initAES128CTR:self->_encKey];
      requestID2 = [requestCopy requestID];

      [(IDSStunCandidatePair *)self addStunRequest:requestID2];
      Value = 0;
      if (optionsCopy && @"gl-option-sessioninfo-link-id-to-query")
      {
        Value = CFDictionaryGetValue(optionsCopy, @"gl-option-sessioninfo-link-id-to-query");
      }

      intValue = [Value intValue];
      requestIDToQueryLinkIDs = self->_requestIDToQueryLinkIDs;
      if (!requestIDToQueryLinkIDs)
      {
        Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        v45 = self->_requestIDToQueryLinkIDs;
        self->_requestIDToQueryLinkIDs = Mutable;

        requestIDToQueryLinkIDs = self->_requestIDToQueryLinkIDs;
      }

      v46 = [MEMORY[0x1E696AD98] numberWithChar:intValue];
      [(NSMutableDictionary *)requestIDToQueryLinkIDs setObject:v46 forKey:requestID2];

      if (!self->_requestIDToSessionInfoReqType)
      {
        v47 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        requestIDToSessionInfoReqType = self->_requestIDToSessionInfoReqType;
        self->_requestIDToSessionInfoReqType = v47;
      }

      if (optionsCopy)
      {
        if (@"gl-option-sessioninfo-request-type")
        {
          v49 = CFDictionaryGetValue(optionsCopy, @"gl-option-sessioninfo-request-type");
          if (v49)
          {
            v50 = v49;
            CFDictionarySetValue(self->_requestIDToSessionInfoReqType, requestID2, v49);
          }
        }
      }
    }

    if ([(IDSStunCandidatePair *)self shouldRexmitStunRequest:requestID2])
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v26 = [WeakRetained sendStunMessage:requestCopy candidatePair:self];

      if (v26 == -2)
      {
        v27 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          candidatePairToken = [(IDSStunCandidatePair *)self candidatePairToken];
          *buf = 138412546;
          v96 = requestCopy;
          v97 = 2112;
          v98 = candidatePairToken;
          _os_log_impl(&dword_1A7AD9000, v27, OS_LOG_TYPE_DEFAULT, "error: failed to send session-info request %@ for %@ because it exceeds MTU size", buf, 0x16u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            candidatePairToken2 = [(IDSStunCandidatePair *)self candidatePairToken];
            _IDSLogTransport(@"GL", @"IDS", @"error: failed to send session-info request %@ for %@ because it exceeds MTU size", v29, v30, v31, v32, v33, requestCopy);

            if (_IDSShouldLog(0))
            {
              candidatePairToken3 = [(IDSStunCandidatePair *)self candidatePairToken];
              _IDSLogV(0, @"IDSFoundation", @"GL", @"error: failed to send session-info request %@ for %@ because it exceeds MTU size", v34, v35, v36, v37, requestCopy);
            }
          }
        }

        [(IDSStunCandidatePair *)self removeStunRequest:requestID2];
        v38 = objc_loadWeakRetained(&self->_delegate);
        [v38 candidatePair:self didReceiveSessionInfo:0 status:1];

        v39 = GLUCreateQRStunMessageEvent(requestCopy, 36, self, 0, 0.0);
        if (v39)
        {
          [(IDSStunCandidatePair *)self _notifyQREventAdded:v39];
        }
      }

      else
      {
        [(IDSStunCandidatePair *)self updateStunSentBytes:v26 requestID:requestID2];
        v75 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
        {
          candidatePairToken4 = [(IDSStunCandidatePair *)self candidatePairToken];
          *buf = 138412802;
          v96 = requestCopy;
          v97 = 2112;
          v98 = candidatePairToken4;
          v99 = 2048;
          v100 = v26;
          _os_log_impl(&dword_1A7AD9000, v75, OS_LOG_TYPE_DEFAULT, "send session-info request %@ for %@, sentBytes: %lu", buf, 0x20u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            candidatePairToken5 = [(IDSStunCandidatePair *)self candidatePairToken];
            _IDSLogTransport(@"GL", @"IDS", @"send session-info request %@ for %@, sentBytes: %lu", v77, v78, v79, v80, v81, requestCopy);

            if (_IDSShouldLog(0))
            {
              candidatePairToken6 = [(IDSStunCandidatePair *)self candidatePairToken];
              _IDSLogV(0, @"IDSFoundation", @"GL", @"send session-info request %@ for %@, sentBytes: %lu", v82, v83, v84, v85, requestCopy);
            }
          }
        }

        if (([(IDSStunCandidate *)self->_local transport]- 1) <= 1)
        {
          v92[0] = MEMORY[0x1E69E9820];
          v92[1] = 3221225472;
          v92[2] = sub_1A7C7C39C;
          v92[3] = &unk_1E77E1068;
          v92[4] = self;
          requestCopy = requestCopy;
          v93 = requestCopy;
          v94 = optionsCopy;
          IDSTransportThreadAddBlockAfter(v92, 1.0);
        }
      }
    }

    else
    {
      [(IDSStunCandidatePair *)self removeStunRequest:requestID2];
      [(NSMutableDictionary *)self->_requestIDToQueryLinkIDs removeObjectForKey:requestID2];
      [(NSMutableDictionary *)self->_requestIDToSessionInfoReqType removeObjectForKey:requestID2];
    }

    requestID = requestID2;
LABEL_52:

    goto LABEL_53;
  }

  v8 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    candidatePairToken7 = [(IDSStunCandidatePair *)self candidatePairToken];
    v10 = (&_IDSStunCandidatePairStateStrings)[self->_state];
    *buf = 138412546;
    v96 = candidatePairToken7;
    v97 = 2080;
    v98 = v10;
    _os_log_impl(&dword_1A7AD9000, v8, OS_LOG_TYPE_DEFAULT, "skip session-info request for %@, state [%s].", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      candidatePairToken8 = [(IDSStunCandidatePair *)self candidatePairToken];
      _IDSLogTransport(@"GL", @"IDS", @"skip session-info request for %@, state [%s].", v12, v13, v14, v15, v16, candidatePairToken8);

      if (_IDSShouldLog(0))
      {
        requestID = [(IDSStunCandidatePair *)self candidatePairToken];
        _IDSLogV(0, @"IDSFoundation", @"GL", @"skip session-info request for %@, state [%s].", v18, v19, v20, v21, requestID);
        goto LABEL_52;
      }
    }
  }

LABEL_53:
}

- (void)sendPutMaterialRequest:(id)request options:(id)options
{
  v91 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  optionsCopy = options;
  if (self->_state - 5 > 0xFFFFFFFFFFFFFFFDLL)
  {
    requestID = [requestCopy requestID];
    if (requestCopy)
    {
      v22 = ids_monotonic_time();
      [requestCopy startTime];
      if (v22 - v23 >= 10.0)
      {
        v54 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
        {
          transactionID = [requestCopy transactionID];
          *buf = 138412546;
          v88 = transactionID;
          v89 = 1024;
          LODWORD(v90) = 10;
          _os_log_impl(&dword_1A7AD9000, v54, OS_LOG_TYPE_DEFAULT, "PutMaterial request %@ timed out after %d seconds.", buf, 0x12u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            transactionID2 = [requestCopy transactionID];
            _IDSLogTransport(@"GL", @"IDS", @"PutMaterial request %@ timed out after %d seconds.", v57, v58, v59, v60, v61, transactionID2);

            if (_IDSShouldLog(0))
            {
              transactionID3 = [requestCopy transactionID];
              _IDSLogV(0, @"IDSFoundation", @"GL", @"PutMaterial request %@ timed out after %d seconds.", v63, v64, v65, v66, transactionID3);
            }
          }
        }

        [(IDSStunCandidatePair *)self removeStunRequest:requestID];
        v67 = GLUCreateQRStunMessageEventWithEventSubType(244, 0x28u, self, 0, 10.0);
        if (v67)
        {
          [(IDSStunCandidatePair *)self _notifyQREventAdded:v67];
        }

        goto LABEL_53;
      }

      v24 = requestCopy;
    }

    else
    {
      v25 = StunUtilCreateMessage(3817, 0, self, optionsCopy);
      v24 = v25;
      if (!v25)
      {
        v68 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1A7AD9000, v68, OS_LOG_TYPE_DEFAULT, "failed to create PutMaterial request.", buf, 2u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            _IDSLogTransport(@"GL", @"IDS", @"failed to create PutMaterial request.", v69, v70, v71, v72, v73, v78);
            if (_IDSShouldLog(0))
            {
              _IDSLogV(0, @"IDSFoundation", @"GL", @"failed to create PutMaterial request.", v74, v75, v76, v77, v79);
            }
          }
        }

        requestCopy = 0;
        goto LABEL_53;
      }

      [v25 initAES128CTR:self->_encKey];
      requestID2 = [v24 requestID];

      [(IDSStunCandidatePair *)self addStunRequest:requestID2];
      requestID = requestID2;
    }

    if ([(IDSStunCandidatePair *)self shouldRexmitStunRequest:requestID])
    {
      v27 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        candidatePairToken = [(IDSStunCandidatePair *)self candidatePairToken];
        *buf = 138412546;
        v88 = v24;
        v89 = 2112;
        v90 = candidatePairToken;
        _os_log_impl(&dword_1A7AD9000, v27, OS_LOG_TYPE_DEFAULT, "send PutMaterial request %@ for %@.", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          candidatePairToken2 = [(IDSStunCandidatePair *)self candidatePairToken];
          _IDSLogTransport(@"GL", @"IDS", @"send PutMaterial request %@ for %@.", v29, v30, v31, v32, v33, v24);

          if (_IDSShouldLog(0))
          {
            candidatePairToken3 = [(IDSStunCandidatePair *)self candidatePairToken];
            _IDSLogV(0, @"IDSFoundation", @"GL", @"send PutMaterial request %@ for %@.", v34, v35, v36, v37, v24);
          }
        }
      }

      v38 = requestCopy != 0;
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v40 = [WeakRetained sendStunMessage:v24 candidatePair:self];

      v41 = v40 != -2 || v38;
      if ((v41 & 1) == 0)
      {
        v42 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          candidatePairToken4 = [(IDSStunCandidatePair *)self candidatePairToken];
          *buf = 138412546;
          v88 = v24;
          v89 = 2112;
          v90 = candidatePairToken4;
          _os_log_impl(&dword_1A7AD9000, v42, OS_LOG_TYPE_DEFAULT, "warning: send PutMaterial request %@ for %@ exceeds MTU size", buf, 0x16u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            candidatePairToken5 = [(IDSStunCandidatePair *)self candidatePairToken];
            _IDSLogTransport(@"GL", @"IDS", @"warning: send PutMaterial request %@ for %@ exceeds MTU size", v44, v45, v46, v47, v48, v24);

            if (_IDSShouldLog(0))
            {
              candidatePairToken6 = [(IDSStunCandidatePair *)self candidatePairToken];
              _IDSLogV(0, @"IDSFoundation", @"GL", @"warning: send PutMaterial request %@ for %@ exceeds MTU size", v49, v50, v51, v52, v24);
            }
          }
        }

        v53 = GLUCreateQRStunMessageEvent(v24, 36, self, 0, 0.0);
        if (v53)
        {
          [(IDSStunCandidatePair *)self _notifyQREventAdded:v53];
        }
      }

      [(IDSStunCandidatePair *)self updateStunSentBytes:v40 requestID:requestID];
      if (([(IDSStunCandidate *)self->_local transport]- 1) <= 1)
      {
        v84[0] = MEMORY[0x1E69E9820];
        v84[1] = 3221225472;
        v84[2] = sub_1A7C7CBC8;
        v84[3] = &unk_1E77E1068;
        v84[4] = self;
        requestCopy = v24;
        v85 = requestCopy;
        v86 = optionsCopy;
        IDSTransportThreadAddBlockAfter(v84, 1.0);

        goto LABEL_53;
      }
    }

    else
    {
      [(IDSStunCandidatePair *)self removeStunRequest:requestID];
    }

    requestCopy = v24;
    goto LABEL_53;
  }

  v8 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    candidatePairToken7 = [(IDSStunCandidatePair *)self candidatePairToken];
    v10 = (&_IDSStunCandidatePairStateStrings)[self->_state];
    *buf = 138412546;
    v88 = candidatePairToken7;
    v89 = 2080;
    v90 = v10;
    _os_log_impl(&dword_1A7AD9000, v8, OS_LOG_TYPE_DEFAULT, "skip PutMaterial request for %@, state [%s].", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      candidatePairToken8 = [(IDSStunCandidatePair *)self candidatePairToken];
      _IDSLogTransport(@"GL", @"IDS", @"skip PutMaterial request for %@, state [%s].", v12, v13, v14, v15, v16, candidatePairToken8);

      if (_IDSShouldLog(0))
      {
        requestID = [(IDSStunCandidatePair *)self candidatePairToken];
        _IDSLogV(0, @"IDSFoundation", @"GL", @"skip PutMaterial request for %@, state [%s].", v18, v19, v20, v21, requestID);
LABEL_53:
      }
    }
  }
}

- (void)sendParticipantUpdateRequest:(id)request options:(id)options
{
  v99 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  optionsCopy = options;
  if (self->_state - 5 > 0xFFFFFFFFFFFFFFFDLL)
  {
    requestID = [requestCopy requestID];
    if (requestCopy)
    {
      v22 = ids_monotonic_time();
      [requestCopy startTime];
      if (v22 - v23 >= 10.0)
      {
        v54 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
        {
          transactionID = [requestCopy transactionID];
          *buf = 138412802;
          v94 = transactionID;
          v95 = 2112;
          v96 = requestID;
          v97 = 1024;
          v98 = 10;
          _os_log_impl(&dword_1A7AD9000, v54, OS_LOG_TYPE_DEFAULT, "participant update request %@ requestID: %@ timed out after %d seconds.", buf, 0x1Cu);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            transactionID2 = [requestCopy transactionID];
            _IDSLogTransport(@"GL", @"IDS", @"participant update request %@ requestID: %@ timed out after %d seconds.", v57, v58, v59, v60, v61, transactionID2);

            if (_IDSShouldLog(0))
            {
              transactionID3 = [requestCopy transactionID];
              _IDSLogV(0, @"IDSFoundation", @"GL", @"participant update request %@ requestID: %@ timed out after %d seconds.", v63, v64, v65, v66, transactionID3);
            }
          }
        }

        GLUtilReportAWDStunMessageEvent(requestCopy, 32, self, 0.0);
        v67 = GLUCreateQRStunMessageEvent(requestCopy, 32, self, 0, 0.0);
        if (v67)
        {
          [(IDSStunCandidatePair *)self _notifyQREventAdded:v67];
        }

        [(IDSStunCandidatePair *)self removeStunRequest:requestID];
        v68 = objc_alloc_init(MEMORY[0x1E695DF90]);
        Value = 0;
        if (optionsCopy && @"gl-option-participant-update-request-type")
        {
          Value = CFDictionaryGetValue(optionsCopy, @"gl-option-participant-update-request-type");
        }

        intValue = [Value intValue];
        v71 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:intValue];
        if (v71)
        {
          CFDictionarySetValue(v68, @"ids-stun-attribute-session-state-type", v71);
        }

        v72 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:2];
        if (v72)
        {
          CFDictionarySetValue(v68, @"ids-stun-message-type", v72);
        }

        else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          sub_1A7E1F644();
        }

        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained candidatePair:self didReceiveParticipantUpdate:v68 status:2];

        goto LABEL_62;
      }

      v24 = requestCopy;
    }

    else
    {
      v25 = StunUtilCreateMessage(3815, 0, self, optionsCopy);
      v24 = v25;
      if (!v25)
      {
        v73 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1A7AD9000, v73, OS_LOG_TYPE_DEFAULT, "failed to create participant update request.", buf, 2u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            _IDSLogTransport(@"GL", @"IDS", @"failed to create participant update request.", v74, v75, v76, v77, v78, v84);
            if (_IDSShouldLog(0))
            {
              _IDSLogV(0, @"IDSFoundation", @"GL", @"failed to create participant update request.", v79, v80, v81, v82, v85);
            }
          }
        }

        requestCopy = 0;
        goto LABEL_62;
      }

      [v25 initAES128CTR:self->_encKey];
      requestID2 = [v24 requestID];

      [(IDSStunCandidatePair *)self addStunRequest:requestID2];
      requestID = requestID2;
    }

    if ([(IDSStunCandidatePair *)self shouldRexmitStunRequest:requestID])
    {
      v27 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        candidatePairToken = [(IDSStunCandidatePair *)self candidatePairToken];
        *buf = 138412546;
        v94 = v24;
        v95 = 2112;
        v96 = candidatePairToken;
        _os_log_impl(&dword_1A7AD9000, v27, OS_LOG_TYPE_DEFAULT, "send participant update request %@ for %@.", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          candidatePairToken2 = [(IDSStunCandidatePair *)self candidatePairToken];
          _IDSLogTransport(@"GL", @"IDS", @"send participant update request %@ for %@.", v29, v30, v31, v32, v33, v24);

          if (_IDSShouldLog(0))
          {
            candidatePairToken3 = [(IDSStunCandidatePair *)self candidatePairToken];
            _IDSLogV(0, @"IDSFoundation", @"GL", @"send participant update request %@ for %@.", v34, v35, v36, v37, v24);
          }
        }
      }

      v38 = requestCopy != 0;
      v39 = objc_loadWeakRetained(&self->_delegate);
      v40 = [v39 sendStunMessage:v24 candidatePair:self];

      v41 = v40 != -2 || v38;
      if ((v41 & 1) == 0)
      {
        v42 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          candidatePairToken4 = [(IDSStunCandidatePair *)self candidatePairToken];
          *buf = 138412546;
          v94 = v24;
          v95 = 2112;
          v96 = candidatePairToken4;
          _os_log_impl(&dword_1A7AD9000, v42, OS_LOG_TYPE_DEFAULT, "warning: send participant update request %@ for %@ exceeds MTU size", buf, 0x16u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            candidatePairToken5 = [(IDSStunCandidatePair *)self candidatePairToken];
            _IDSLogTransport(@"GL", @"IDS", @"warning: send participant update request %@ for %@ exceeds MTU size", v44, v45, v46, v47, v48, v24);

            if (_IDSShouldLog(0))
            {
              candidatePairToken6 = [(IDSStunCandidatePair *)self candidatePairToken];
              _IDSLogV(0, @"IDSFoundation", @"GL", @"warning: send participant update request %@ for %@ exceeds MTU size", v49, v50, v51, v52, v24);
            }
          }
        }

        v53 = GLUCreateQRStunMessageEvent(v24, 36, self, 0, 0.0);
        if (v53)
        {
          [(IDSStunCandidatePair *)self _notifyQREventAdded:v53];
        }
      }

      [(IDSStunCandidatePair *)self updateStunSentBytes:v40 requestID:requestID];
      if (([(IDSStunCandidate *)self->_local transport]- 1) <= 1)
      {
        v90[0] = MEMORY[0x1E69E9820];
        v90[1] = 3221225472;
        v90[2] = sub_1A7C7D500;
        v90[3] = &unk_1E77E1068;
        v90[4] = self;
        requestCopy = v24;
        v91 = requestCopy;
        v92 = optionsCopy;
        IDSTransportThreadAddBlockAfter(v90, 1.0);

        goto LABEL_62;
      }
    }

    else
    {
      [(IDSStunCandidatePair *)self removeStunRequest:requestID];
    }

    requestCopy = v24;
    goto LABEL_62;
  }

  v8 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    candidatePairToken7 = [(IDSStunCandidatePair *)self candidatePairToken];
    v10 = (&_IDSStunCandidatePairStateStrings)[self->_state];
    *buf = 138412546;
    v94 = candidatePairToken7;
    v95 = 2080;
    v96 = v10;
    _os_log_impl(&dword_1A7AD9000, v8, OS_LOG_TYPE_DEFAULT, "skip participant update request for %@, state [%s].", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      candidatePairToken8 = [(IDSStunCandidatePair *)self candidatePairToken];
      _IDSLogTransport(@"GL", @"IDS", @"skip participant update request for %@, state [%s].", v12, v13, v14, v15, v16, candidatePairToken8);

      if (_IDSShouldLog(0))
      {
        requestID = [(IDSStunCandidatePair *)self candidatePairToken];
        _IDSLogV(0, @"IDSFoundation", @"GL", @"skip participant update request for %@, state [%s].", v18, v19, v20, v21, requestID);
LABEL_62:
      }
    }
  }
}

- (BOOL)sendQUICGetMaterialRequest:(id)request
{
  v44 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v5 = self->_state - 3;
  if (v5 < 2)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v7 = [WeakRetained sendProtoMessage:requestCopy candidatePair:self];

    transactionID = [requestCopy transactionID];
    [(IDSStunCandidatePair *)self addProtoRequest:transactionID];
    candidatePairToken6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", transactionID];
    [(IDSStunCandidatePair *)self updateStunSentBytes:v7 requestID:candidatePairToken6];
    v10 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      candidatePairToken = [(IDSStunCandidatePair *)self candidatePairToken];
      *buf = 138412802;
      v39 = requestCopy;
      v40 = 2112;
      v41 = candidatePairToken;
      v42 = 2048;
      v43 = v7;
      _os_log_impl(&dword_1A7AD9000, v10, OS_LOG_TYPE_DEFAULT, "send get material request %@ for %@, sentBytes: %lu", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        candidatePairToken2 = [(IDSStunCandidatePair *)self candidatePairToken];
        _IDSLogTransport(@"GL", @"IDS", @"send get material request %@ for %@, sentBytes: %lu", v12, v13, v14, v15, v16, requestCopy);

        if (_IDSShouldLog(0))
        {
          candidatePairToken3 = [(IDSStunCandidatePair *)self candidatePairToken];
          _IDSLogV(0, @"IDSFoundation", @"GL", @"send get material request %@ for %@, sentBytes: %lu", v17, v18, v19, v20, requestCopy);
        }
      }
    }

    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = sub_1A7C7D8E8;
    v37[3] = &unk_1E77E2758;
    v37[4] = self;
    v37[5] = transactionID;
    IDSTransportThreadAddBlockAfter(v37, 10.0);
    goto LABEL_9;
  }

  v21 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    candidatePairToken4 = [(IDSStunCandidatePair *)self candidatePairToken];
    v23 = (&_IDSStunCandidatePairStateStrings)[self->_state];
    *buf = 138412546;
    v39 = candidatePairToken4;
    v40 = 2080;
    v41 = v23;
    _os_log_impl(&dword_1A7AD9000, v21, OS_LOG_TYPE_DEFAULT, "skip get material request for %@, state [%s].", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      candidatePairToken5 = [(IDSStunCandidatePair *)self candidatePairToken];
      _IDSLogTransport(@"GL", @"IDS", @"skip get material request for %@, state [%s].", v25, v26, v27, v28, v29, candidatePairToken5);

      if (_IDSShouldLog(0))
      {
        candidatePairToken6 = [(IDSStunCandidatePair *)self candidatePairToken];
        _IDSLogV(0, @"IDSFoundation", @"GL", @"skip get material request for %@, state [%s].", v30, v31, v32, v33, candidatePairToken6);
LABEL_9:
      }
    }
  }

  return v5 < 2;
}

- (BOOL)sendQUICPutMaterialRequest:(id)request
{
  v44 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v5 = self->_state - 3;
  if (v5 < 2)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v7 = [WeakRetained sendProtoMessage:requestCopy candidatePair:self];

    transactionID = [requestCopy transactionID];
    [(IDSStunCandidatePair *)self addProtoRequest:transactionID];
    candidatePairToken6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", transactionID];
    [(IDSStunCandidatePair *)self updateStunSentBytes:v7 requestID:candidatePairToken6];
    v10 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      candidatePairToken = [(IDSStunCandidatePair *)self candidatePairToken];
      *buf = 138412802;
      v39 = requestCopy;
      v40 = 2112;
      v41 = candidatePairToken;
      v42 = 2048;
      v43 = v7;
      _os_log_impl(&dword_1A7AD9000, v10, OS_LOG_TYPE_DEFAULT, "send put material request %@ for %@, sentBytes: %lu", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        candidatePairToken2 = [(IDSStunCandidatePair *)self candidatePairToken];
        _IDSLogTransport(@"GL", @"IDS", @"send put material request %@ for %@, sentBytes: %lu", v12, v13, v14, v15, v16, requestCopy);

        if (_IDSShouldLog(0))
        {
          candidatePairToken3 = [(IDSStunCandidatePair *)self candidatePairToken];
          _IDSLogV(0, @"IDSFoundation", @"GL", @"send put material request %@ for %@, sentBytes: %lu", v17, v18, v19, v20, requestCopy);
        }
      }
    }

    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = sub_1A7C7DE80;
    v37[3] = &unk_1E77E2758;
    v37[4] = self;
    v37[5] = transactionID;
    IDSTransportThreadAddBlockAfter(v37, 10.0);
    goto LABEL_9;
  }

  v21 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    candidatePairToken4 = [(IDSStunCandidatePair *)self candidatePairToken];
    v23 = (&_IDSStunCandidatePairStateStrings)[self->_state];
    *buf = 138412546;
    v39 = candidatePairToken4;
    v40 = 2080;
    v41 = v23;
    _os_log_impl(&dword_1A7AD9000, v21, OS_LOG_TYPE_DEFAULT, "skip put material request for %@, state [%s].", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      candidatePairToken5 = [(IDSStunCandidatePair *)self candidatePairToken];
      _IDSLogTransport(@"GL", @"IDS", @"skip put material request for %@, state [%s].", v25, v26, v27, v28, v29, candidatePairToken5);

      if (_IDSShouldLog(0))
      {
        candidatePairToken6 = [(IDSStunCandidatePair *)self candidatePairToken];
        _IDSLogV(0, @"IDSFoundation", @"GL", @"skip put material request for %@, state [%s].", v30, v31, v32, v33, candidatePairToken6);
LABEL_9:
      }
    }
  }

  return v5 < 2;
}

- (BOOL)sendQUICCallModeUpdateRequest:(id)request
{
  v44 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v5 = self->_state - 3;
  if (v5 < 2)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v7 = [WeakRetained sendProtoMessage:requestCopy candidatePair:self];

    transactionID = [requestCopy transactionID];
    [(IDSStunCandidatePair *)self addProtoRequest:transactionID];
    candidatePairToken6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", transactionID];
    [(IDSStunCandidatePair *)self updateStunSentBytes:v7 requestID:candidatePairToken6];
    v10 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      candidatePairToken = [(IDSStunCandidatePair *)self candidatePairToken];
      *buf = 138412802;
      v39 = requestCopy;
      v40 = 2112;
      v41 = candidatePairToken;
      v42 = 2048;
      v43 = v7;
      _os_log_impl(&dword_1A7AD9000, v10, OS_LOG_TYPE_DEFAULT, "send CallModeUpdate request %@ for %@, sentBytes: %lu", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        candidatePairToken2 = [(IDSStunCandidatePair *)self candidatePairToken];
        _IDSLogTransport(@"GL", @"IDS", @"send CallModeUpdate request %@ for %@, sentBytes: %lu", v12, v13, v14, v15, v16, requestCopy);

        if (_IDSShouldLog(0))
        {
          candidatePairToken3 = [(IDSStunCandidatePair *)self candidatePairToken];
          _IDSLogV(0, @"IDSFoundation", @"GL", @"send CallModeUpdate request %@ for %@, sentBytes: %lu", v17, v18, v19, v20, requestCopy);
        }
      }
    }

    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = sub_1A7C7E440;
    v37[3] = &unk_1E77E2758;
    v37[4] = self;
    v37[5] = transactionID;
    IDSTransportThreadAddBlockAfter(v37, 10.0);
    goto LABEL_9;
  }

  v21 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    candidatePairToken4 = [(IDSStunCandidatePair *)self candidatePairToken];
    v23 = (&_IDSStunCandidatePairStateStrings)[self->_state];
    *buf = 138412546;
    v39 = candidatePairToken4;
    v40 = 2080;
    v41 = v23;
    _os_log_impl(&dword_1A7AD9000, v21, OS_LOG_TYPE_DEFAULT, "skip CallModeUpdate request for %@, state [%s].", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      candidatePairToken5 = [(IDSStunCandidatePair *)self candidatePairToken];
      _IDSLogTransport(@"GL", @"IDS", @"skip CallModeUpdate request for %@, state [%s].", v25, v26, v27, v28, v29, candidatePairToken5);

      if (_IDSShouldLog(0))
      {
        candidatePairToken6 = [(IDSStunCandidatePair *)self candidatePairToken];
        _IDSLogV(0, @"IDSFoundation", @"GL", @"skip CallModeUpdate request for %@, state [%s].", v30, v31, v32, v33, candidatePairToken6);
LABEL_9:
      }
    }
  }

  return v5 < 2;
}

- (void)sendTestRequest:(id)request
{
  v82 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  if (self->_state - 5 > 0xFFFFFFFFFFFFFFFDLL)
  {
    self->_testStartTime = 0.0;
    v19 = self->_testSubOperation == 0;
    v20 = MEMORY[0x1E695DF20];
    v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_testOptions];
    if (v19)
    {
      [v20 dictionaryWithObject:v21 forKey:@"gl-option-test-options-flags"];
    }

    else
    {
      v70 = @"gl-option-test-options-flags";
      [v20 dictionaryWithObjectsAndKeys:v21];
    }
    candidatePairToken6 = ;

    requestID = [requestCopy requestID];
    if (requestCopy)
    {
      v23 = ids_monotonic_time();
      [requestCopy startTime];
      if (v23 - v24 >= 10.0)
      {
        v25 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          transactionID = [requestCopy transactionID];
          *buf = 138412546;
          *v75 = transactionID;
          *&v75[8] = 1024;
          *&v75[10] = 10;
          _os_log_impl(&dword_1A7AD9000, v25, OS_LOG_TYPE_DEFAULT, "test request %@ timed out after %d seconds.", buf, 0x12u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            transactionID2 = [requestCopy transactionID];
            _IDSLogTransport(@"GL", @"IDS", @"test request %@ timed out after %d seconds.", v28, v29, v30, v31, v32, transactionID2);

            if (_IDSShouldLog(0))
            {
              transactionID3 = [requestCopy transactionID];
              _IDSLogV(0, @"IDSFoundation", @"GL", @"test request %@ timed out after %d seconds.", v34, v35, v36, v37, transactionID3);
            }
          }
        }

        [(IDSStunCandidatePair *)self removeStunRequest:requestID];
LABEL_39:

        goto LABEL_40;
      }
    }

    else
    {
      v38 = StunUtilCreateMessage(2049, 0, self, candidatePairToken6);
      requestCopy = v38;
      if (!v38)
      {
        v60 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1A7AD9000, v60, OS_LOG_TYPE_DEFAULT, "failed to create test request.", buf, 2u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            _IDSLogTransport(@"GL", @"IDS", @"failed to create test request.", v61, v62, v63, v64, v65, v70);
            if (_IDSShouldLog(0))
            {
              _IDSLogV(0, @"IDSFoundation", @"GL", @"failed to create test request.", v66, v67, v68, v69, v71);
            }
          }
        }

        requestCopy = 0;
        goto LABEL_39;
      }

      requestID2 = [v38 requestID];

      [(IDSStunCandidatePair *)self addStunRequest:requestID2];
      requestID = requestID2;
    }

    if ([(IDSStunCandidatePair *)self shouldRexmitStunRequest:requestID])
    {
      v40 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        testOptions = self->_testOptions;
        testSubOperation = self->_testSubOperation;
        candidatePairToken = [(IDSStunCandidatePair *)self candidatePairToken];
        linkID = self->_linkID;
        *buf = 67110402;
        *v75 = testOptions;
        *&v75[4] = 2112;
        *&v75[6] = testSubOperation;
        *&v75[14] = 2112;
        *&v75[16] = requestCopy;
        v76 = 2112;
        v77 = candidatePairToken;
        v78 = 2112;
        v79 = requestID;
        v80 = 1024;
        v81 = linkID;
        _os_log_impl(&dword_1A7AD9000, v40, OS_LOG_TYPE_DEFAULT, "send test(0x%x,%@) request %@ for %@, %@ link: %d", buf, 0x36u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v45 = self->_testOptions;
          candidatePairToken2 = [(IDSStunCandidatePair *)self candidatePairToken];
          _IDSLogTransport(@"GL", @"IDS", @"send test(0x%x,%@) request %@ for %@, %@ link: %d", v47, v48, v49, v50, v51, v45);

          if (_IDSShouldLog(0))
          {
            v52 = self->_testOptions;
            candidatePairToken3 = [(IDSStunCandidatePair *)self candidatePairToken];
            _IDSLogV(0, @"IDSFoundation", @"GL", @"send test(0x%x,%@) request %@ for %@, %@ link: %d", v54, v55, v56, v57, v52);
          }
        }
      }

      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v59 = [WeakRetained sendStunMessage:requestCopy candidatePair:self];

      [(IDSStunCandidatePair *)self updateStunSentBytes:v59 requestID:requestID];
      if (([(IDSStunCandidate *)self->_local transport]- 1) <= 1)
      {
        v72[0] = MEMORY[0x1E69E9820];
        v72[1] = 3221225472;
        v72[2] = sub_1A7C7ED30;
        v72[3] = &unk_1E77E0250;
        v72[4] = self;
        requestCopy = requestCopy;
        v73 = requestCopy;
        IDSTransportThreadAddBlockAfter(v72, 1.0);
      }
    }

    else
    {
      [(IDSStunCandidatePair *)self removeStunRequest:requestID];
    }

    goto LABEL_39;
  }

  v5 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    candidatePairToken4 = [(IDSStunCandidatePair *)self candidatePairToken];
    v7 = (&_IDSStunCandidatePairStateStrings)[self->_state];
    *buf = 138412546;
    *v75 = candidatePairToken4;
    *&v75[8] = 2080;
    *&v75[10] = v7;
    _os_log_impl(&dword_1A7AD9000, v5, OS_LOG_TYPE_DEFAULT, "skip test request for %@, state [%s].", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      candidatePairToken5 = [(IDSStunCandidatePair *)self candidatePairToken];
      _IDSLogTransport(@"GL", @"IDS", @"skip test request for %@, state [%s].", v9, v10, v11, v12, v13, candidatePairToken5);

      if (_IDSShouldLog(0))
      {
        candidatePairToken6 = [(IDSStunCandidatePair *)self candidatePairToken];
        _IDSLogV(0, @"IDSFoundation", @"GL", @"skip test request for %@, state [%s].", v15, v16, v17, v18, candidatePairToken6);
LABEL_40:
      }
    }
  }
}

- (void)_handleLinkProbingTimer
{
  v25[1] = *MEMORY[0x1E69E9840];
  v24 = @"gl-attr-active-probing-link-id";
  v3 = [MEMORY[0x1E696AD98] numberWithChar:self->_linkID];
  v25[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];

  if (self->_remoteRelayLinkID)
  {
    v22[0] = @"gl-attr-active-probing-link-id";
    v5 = [MEMORY[0x1E696AD98] numberWithChar:self->_linkID];
    v23[0] = v5;
    v22[1] = @"gl-attr-remote-relay-link-id";
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:self->_remoteRelayLinkID];
    v23[1] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];

    v4 = v7;
  }

  v8 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_1A7AD9000, v8, OS_LOG_TYPE_DEFAULT, "_handleLinkProbingTimer for %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"_handleLinkProbingTimer for %@", v9, v10, v11, v12, v13, self);
      if (_IDSShouldLog(0))
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"_handleLinkProbingTimer for %@", v14, v15, v16, v17, self);
      }
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  candidatePairToken = [(IDSStunCandidatePair *)self candidatePairToken];
  [WeakRetained sendProbingRequestWithoptions:v4 candidatePairToken:candidatePairToken];
}

- (void)startLinkProbingTimer:(unsigned int)timer
{
  v28 = *MEMORY[0x1E69E9840];
  probingTimer = self->_probingTimer;
  if (probingTimer)
  {
    dispatch_source_cancel(probingTimer);
  }

  v6 = im_primary_queue();
  v7 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v6);
  v8 = self->_probingTimer;
  self->_probingTimer = v7;

  dispatch_source_set_timer(self->_probingTimer, 0, (timer / 1000.0 * 1000000000.0), 0xF4240uLL);
  v9 = self->_probingTimer;
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = sub_1A7C7F1B0;
  handler[3] = &unk_1E77E0818;
  handler[4] = self;
  dispatch_source_set_event_handler(v9, handler);
  dispatch_resume(self->_probingTimer);
  v10 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = self->_probingTimer;
    *buf = 134218498;
    v23 = v11;
    v24 = 2112;
    selfCopy = self;
    v26 = 1024;
    timerCopy = timer;
    _os_log_impl(&dword_1A7AD9000, v10, OS_LOG_TYPE_DEFAULT, "start link probing timer %p for %@, interval: %u", buf, 0x1Cu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
  {
    _IDSLogTransport(@"GL", @"IDS", @"start link probing timer %p for %@, interval: %u", v12, v13, v14, v15, v16, self->_probingTimer);
    if (_IDSShouldLog(0))
    {
      _IDSLogV(0, @"IDSFoundation", @"GL", @"start link probing timer %p for %@, interval: %u", v17, v18, v19, v20, self->_probingTimer);
    }
  }
}

- (void)stopLinkProbingTimer
{
  v20 = *MEMORY[0x1E69E9840];
  probingTimer = self->_probingTimer;
  if (probingTimer)
  {
    dispatch_source_cancel(probingTimer);
    v4 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = self->_probingTimer;
      *buf = 134218242;
      v17 = v5;
      v18 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_1A7AD9000, v4, OS_LOG_TYPE_DEFAULT, "stop link probing timer %p for %@.", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"stop link probing timer %p for %@.", v6, v7, v8, v9, v10, self->_probingTimer);
      if (_IDSShouldLog(0))
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"stop link probing timer %p for %@.", v11, v12, v13, v14, self->_probingTimer);
      }
    }

    v15 = self->_probingTimer;
    self->_probingTimer = 0;
  }
}

- (BOOL)processStatsResponse:(id)response arrivalTime:(double)time
{
  v92 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  requestID = [responseCopy requestID];
  if ([(IDSStunCandidatePair *)self shouldProcessStunResponse:requestID])
  {
    v84 = 0;
    v8 = StunUtilHasValidUInt32Attr(responseCopy, 65523, &v84);
    if (v8)
    {
      v9 = ntpTime32(time);
      v10 = vcvtd_n_f64_u32((v9 - v84), 0x10uLL) + ((v9 - v84) >> 16);
      serverLatency = self->_serverLatency;
      if (serverLatency == 0.0)
      {
        v12 = v10;
      }

      else
      {
        v12 = v10 * 0.1 + serverLatency * 0.9;
      }

      self->_serverLatency = v12;
      v79 = (v10 * 1000.0);
      v13 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        requestID2 = [responseCopy requestID];
        v15 = (self->_serverLatency * 1000.0);
        linkID = self->_linkID;
        *buf = 138413058;
        v87 = requestID2;
        v88 = 1024;
        *v89 = linkID;
        *&v89[4] = 1024;
        *&v89[6] = v79;
        v90 = 1024;
        v91 = v15;
        _os_log_impl(&dword_1A7AD9000, v13, OS_LOG_TYPE_DEFAULT, "recv stats resp %@ (link: %2d rtt: %5d ms mean: %5d ms).", buf, 0x1Eu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          requestID3 = [responseCopy requestID];
          _IDSLogTransport(@"GL", @"IDS", @"recv stats resp %@ (link: %2d rtt: %5d ms mean: %5d ms).", v18, v19, v20, v21, v22, requestID3);

          if (_IDSShouldLog(0))
          {
            requestID4 = [responseCopy requestID];
            _IDSLogV(0, @"IDSFoundation", @"GL", @"recv stats resp %@ (link: %2d rtt: %5d ms mean: %5d ms).", v24, v25, v26, v27, requestID4);
          }
        }
      }

      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      v28 = self->_packetListeners;
      v29 = [(NSMutableSet *)v28 countByEnumeratingWithState:&v80 objects:v85 count:16];
      if (v29)
      {
        v30 = *v81;
        do
        {
          for (i = 0; i != v29; ++i)
          {
            if (*v81 != v30)
            {
              objc_enumerationMutation(v28);
            }

            [*(*(&v80 + 1) + 8 * i) didReceiveStatsResponseWithID:requestID linkID:-[IDSStunCandidatePair linkID](self completionHandler:{"linkID"), &unk_1F1AAB940}];
          }

          v29 = [(NSMutableSet *)v28 countByEnumeratingWithState:&v80 objects:v85 count:16];
        }

        while (v29);
      }

      Value = 0;
      if (requestID && self->_requestIDToStatsIDs)
      {
        Value = CFDictionaryGetValue(self->_requestIDToStatsIDs, requestID);
      }

      v33 = Value;
      v34 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        unsignedLongLongValue = [v33 unsignedLongLongValue];
        requestIDToStatsIDs = self->_requestIDToStatsIDs;
        *buf = 134218242;
        v87 = unsignedLongLongValue;
        v88 = 2112;
        *v89 = requestIDToStatsIDs;
        _os_log_impl(&dword_1A7AD9000, v34, OS_LOG_TYPE_DEFAULT, "statsIdentifier: %llu, requestIDToStatsIDs: %@", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          unsignedLongLongValue2 = [v33 unsignedLongLongValue];
          _IDSLogTransport(@"GL", @"IDS", @"statsIdentifier: %llu, requestIDToStatsIDs: %@", v38, v39, v40, v41, v42, unsignedLongLongValue2);
          if (_IDSShouldLog(0))
          {
            unsignedLongLongValue3 = [v33 unsignedLongLongValue];
            _IDSLogV(0, @"IDSFoundation", @"GL", @"statsIdentifier: %llu, requestIDToStatsIDs: %@", v44, v45, v46, v47, unsignedLongLongValue3);
          }
        }
      }

      if (v33)
      {
        v48 = objc_alloc_init(MEMORY[0x1E695DF90]);
        CFDictionarySetValue(v48, @"gl-option-stats-identifier", v33);
        v49 = [MEMORY[0x1E696AD98] numberWithChar:self->_linkID];
        if (v49)
        {
          CFDictionarySetValue(v48, @"gl-option-linkid", v49);
        }

        else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          sub_1A7E1F6CC();
        }

        v60 = [MEMORY[0x1E696AD98] numberWithInt:v79];
        if (v60)
        {
          CFDictionarySetValue(v48, @"gl-option-stats-server-timestamp", v60);
        }

        else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          sub_1A7E1F754();
        }

        v61 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
        {
          unsignedLongLongValue4 = [v33 unsignedLongLongValue];
          v63 = self->_linkID;
          *buf = 134218496;
          v87 = unsignedLongLongValue4;
          v88 = 1024;
          *v89 = v63;
          *&v89[4] = 1024;
          *&v89[6] = v79;
          _os_log_impl(&dword_1A7AD9000, v61, OS_LOG_TYPE_DEFAULT, "processStatsResponse: statsIdentifier: %llu, linkID: %d, rtt: %d ms", buf, 0x18u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            unsignedLongLongValue5 = [v33 unsignedLongLongValue];
            _IDSLogTransport(@"GL", @"IDS", @"processStatsResponse: statsIdentifier: %llu, linkID: %d, rtt: %d ms", v65, v66, v67, v68, v69, unsignedLongLongValue5);
            if (_IDSShouldLog(0))
            {
              unsignedLongLongValue6 = [v33 unsignedLongLongValue];
              _IDSLogV(0, @"IDSFoundation", @"GL", @"processStatsResponse: statsIdentifier: %llu, linkID: %d, rtt: %d ms", v71, v72, v73, v74, unsignedLongLongValue6);
            }
          }
        }

        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained candidatePair:self didReceiveSessionStats:v48 success:1];

        [(NSMutableDictionary *)self->_requestIDToStatsIDs removeObjectForKey:requestID];
      }
    }

    else
    {
      v50 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A7AD9000, v50, OS_LOG_TYPE_DEFAULT, "receive invalid stats response, missing client-timestamp.", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"GL", @"IDS", @"receive invalid stats response, missing client-timestamp.", v51, v52, v53, v54, v55, v77);
          if (_IDSShouldLog(0))
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"receive invalid stats response, missing client-timestamp.", v56, v57, v58, v59, v78);
          }
        }
      }
    }
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (BOOL)_optionallyCheckEncMarker:(id)marker
{
  v33 = *MEMORY[0x1E69E9840];
  markerCopy = marker;
  memset(__b, 170, sizeof(__b));
  v27 = 0;
  if (!StunUtilHasValidBinaryDataAttr(markerCopy, 60934, __b, &v27))
  {
    goto LABEL_4;
  }

  if (v27 != 4)
  {
    v5 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v29 = v27;
      _os_log_impl(&dword_1A7AD9000, v5, OS_LOG_TYPE_DEFAULT, "optionallyCheckEncMarker failed due to invalid marker length (%d)", buf, 8u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"optionallyCheckEncMarker failed due to invalid marker length (%d)", v6, v7, v8, v9, v10, v27);
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"optionallyCheckEncMarker failed due to invalid marker length (%d)", v11, v12, v13, v14, v27);
        }
      }
    }

    goto LABEL_17;
  }

  if (__b[0] != 1414938954)
  {
    v15 = bswap32(__b[0]);
    v16 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      v29 = v15;
      v30 = 1024;
      v31 = 1245795924;
      _os_log_impl(&dword_1A7AD9000, v16, OS_LOG_TYPE_DEFAULT, "optionallyCheckEncMarker failed due to marker mismatch (%08X != %08X).", buf, 0xEu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"optionallyCheckEncMarker failed due to marker mismatch (%08X != %08X).", v17, v18, v19, v20, v21, v15);
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"optionallyCheckEncMarker failed due to marker mismatch (%08X != %08X).", v22, v23, v24, v25, v15);
        }
      }
    }

LABEL_17:
    v4 = 0;
    goto LABEL_18;
  }

LABEL_4:
  v4 = 1;
LABEL_18:

  return v4;
}

- (BOOL)processInfoResponse:(id)response packetBuffer:(id *)buffer headerOverhead:(unint64_t)overhead
{
  v82 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  requestID = [responseCopy requestID];
  v10 = [(IDSStunCandidatePair *)self shouldProcessStunResponse:requestID];

  if (v10)
  {
    if ((StunUtilHasValidChannelNumber(responseCopy, self->_channelNumber, 0) & 1) != 0 || self->_state < 3)
    {
      *&v22 = 0xAAAAAAAAAAAAAAAALL;
      *(&v22 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v80 = v22;
      v81 = v22;
      v78 = v22;
      v79 = v22;
      v76 = v22;
      v77 = v22;
      *buf = v22;
      v75 = v22;
      v73[6] = v22;
      v73[7] = v22;
      v73[4] = v22;
      v73[5] = v22;
      v73[2] = v22;
      v73[3] = v22;
      v73[0] = v22;
      v73[1] = v22;
      HasValidXorMappedAddress = StunUtilHasValidXorMappedAddress(responseCopy, v73);
      if (HasValidXorMappedAddress)
      {
        v23 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *v71 = 136315138;
          v72 = SAToIPPortString(buf, 0x80uLL, v73);
          _os_log_impl(&dword_1A7AD9000, v23, OS_LOG_TYPE_DEFAULT, "Got info response with xor-mapped-address [%s]", v71, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            v24 = SAToIPPortString(buf, 0x80uLL, v73);
            _IDSLogTransport(@"GL", @"IDS", @"Got info response with xor-mapped-address [%s]", v25, v26, v27, v28, v29, v24);
            if (_IDSShouldLog(0))
            {
              v30 = SAToIPPortString(buf, 0x80uLL, v73);
              _IDSLogV(0, @"IDSFoundation", @"GL", @"Got info response with xor-mapped-address [%s]", v31, v32, v33, v34, v30);
            }
          }
        }

        v35 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          candidatePairToken = [(IDSStunCandidatePair *)self candidatePairToken];
          *v71 = 138412290;
          v72 = candidatePairToken;
          _os_log_impl(&dword_1A7AD9000, v35, OS_LOG_TYPE_DEFAULT, "receive info-response for %@.", v71, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            candidatePairToken2 = [(IDSStunCandidatePair *)self candidatePairToken];
            _IDSLogTransport(@"GL", @"IDS", @"receive info-response for %@.", v38, v39, v40, v41, v42, candidatePairToken2);

            if (_IDSShouldLog(0))
            {
              candidatePairToken3 = [(IDSStunCandidatePair *)self candidatePairToken];
              _IDSLogV(0, @"IDSFoundation", @"GL", @"receive info-response for %@.", v44, v45, v46, v47, candidatePairToken3);
            }
          }
        }

        v48 = StunUtilProcessActiveParticipants(responseCopy);
        v49 = StunUtilProcessLightweightParticipants(responseCopy);
        if ([(IDSStunCandidatePair *)self _optionallyCheckEncMarker:responseCopy])
        {
          var2 = buffer->var2;
          requestID2 = [responseCopy requestID];
          v52 = [(IDSStunCandidatePair *)self getStunSentBytes:requestID2];

          v53 = 0;
          v54 = var2 + overhead;
        }

        else
        {
          v54 = 0;
          v52 = 0;
          v53 = 4;
        }

        BYTE4(v70) = 0;
        HIDWORD(v69) = v53;
        LODWORD(v70) = 0;
        LOWORD(v69) = 1;
        [IDSStunCandidatePair _notifySessionStreamInfoReceived:"_notifySessionStreamInfoReceived:withParticipants:lightweightParticipants:joinedParticipantInfo:leftParticipantInfo:updatedParticipantInfo:sentBytes:receivedBytes:offlineRequest:streamInfoRequest:status:commandFlag:isIndication:" withParticipants:0 lightweightParticipants:v48 joinedParticipantInfo:v49 leftParticipantInfo:0 updatedParticipantInfo:0 sentBytes:0 receivedBytes:v52 offlineRequest:v54 streamInfoRequest:v69 status:v70 commandFlag:? isIndication:?];
      }

      else
      {
        v55 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
        {
          *v71 = 0;
          _os_log_impl(&dword_1A7AD9000, v55, OS_LOG_TYPE_DEFAULT, "processInfoResponse failed due to invalid xor-mapped-address.", v71, 2u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            _IDSLogTransport(@"GL", @"IDS", @"processInfoResponse failed due to invalid xor-mapped-address.", v56, v57, v58, v59, v60, v66);
            if (_IDSShouldLog(0))
            {
              _IDSLogV(0, @"IDSFoundation", @"GL", @"processInfoResponse failed due to invalid xor-mapped-address.", v61, v62, v63, v64, v68);
            }
          }
        }
      }
    }

    else
    {
      v11 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A7AD9000, v11, OS_LOG_TYPE_DEFAULT, "processInfoResponse failed due to invalid channel-number.", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"GL", @"IDS", @"processInfoResponse failed due to invalid channel-number.", v12, v13, v14, v15, v16, v66);
          if (_IDSShouldLog(0))
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"processInfoResponse failed due to invalid channel-number.", v17, v18, v19, v20, v67);
          }
        }
      }

      LOBYTE(HasValidXorMappedAddress) = 0;
    }
  }

  else
  {
    LOBYTE(HasValidXorMappedAddress) = 1;
  }

  return HasValidXorMappedAddress;
}

- (BOOL)processSessionInfoResponse:(id)response packetBuffer:(id *)buffer headerOverhead:(unint64_t)overhead isLightweightParticipant:(BOOL)participant
{
  v66 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  requestID = [responseCopy requestID];
  v12 = [(IDSStunCandidatePair *)self shouldProcessStunResponse:requestID];

  if (!v12)
  {
LABEL_35:
    v41 = 1;
    goto LABEL_36;
  }

  if (StunUtilHasValidChannelNumber(responseCopy, self->_channelNumber, 0))
  {
    v13 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      requestID2 = [responseCopy requestID];
      candidatePairToken = [(IDSStunCandidatePair *)self candidatePairToken];
      *buf = 138412546;
      v63 = requestID2;
      v64 = 2112;
      v65 = candidatePairToken;
      _os_log_impl(&dword_1A7AD9000, v13, OS_LOG_TYPE_DEFAULT, "receive session-info response %@ for %@.", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        requestID3 = [responseCopy requestID];
        candidatePairToken2 = [(IDSStunCandidatePair *)self candidatePairToken];
        _IDSLogTransport(@"GL", @"IDS", @"receive session-info response %@ for %@.", v17, v18, v19, v20, v21, requestID3);

        if (_IDSShouldLog(0))
        {
          requestID4 = [responseCopy requestID];
          candidatePairToken3 = [(IDSStunCandidatePair *)self candidatePairToken];
          _IDSLogV(0, @"IDSFoundation", @"GL", @"receive session-info response %@ for %@.", v23, v24, v25, v26, requestID4);
        }
      }
    }

    if ([(IDSStunCandidatePair *)self _optionallyCheckEncMarker:responseCopy])
    {
      if (self->_requestIDToQueryLinkIDs)
      {
        requestID5 = [responseCopy requestID];
        if (requestID5)
        {
          requestIDToQueryLinkIDs = self->_requestIDToQueryLinkIDs;
          requestID6 = [responseCopy requestID];
          intValue = [CFDictionaryGetValue(requestIDToQueryLinkIDs requestID6)];
        }

        else
        {
          intValue = [0 intValue];
        }
      }

      else
      {
        intValue = [0 intValue];
      }

      v42 = StunUtilProcessStreamInfo(responseCopy, self->_linkID, intValue);
      Value = 0;
      if (v42 && @"stream-info-peer-published-streams")
      {
        Value = CFDictionaryGetValue(v42, @"stream-info-peer-published-streams");
      }

      v43 = StunUtilProcessParticipants(Value, self->_participantID, participant);
      v45 = StunUtilProcessLightweightParticipants(responseCopy);
      var2 = buffer->var2;
      requestID7 = [responseCopy requestID];
      v61 = [(IDSStunCandidatePair *)self getStunSentBytes:requestID7];

      v46 = 0;
      v44 = var2 + overhead;
    }

    else
    {
      v42 = 0;
      v43 = 0;
      v44 = 0;
      v61 = 0;
      v45 = 0;
      v46 = 4;
    }

    if (self->_requestIDToSessionInfoReqType)
    {
      requestID8 = [responseCopy requestID];
      if (requestID8)
      {
        requestIDToSessionInfoReqType = self->_requestIDToSessionInfoReqType;
        requestID9 = [responseCopy requestID];
        intValue2 = [CFDictionaryGetValue(requestIDToSessionInfoReqType requestID9)];
      }

      else
      {
        intValue2 = [0 intValue];
      }
    }

    else
    {
      intValue2 = [0 intValue];
    }

    BYTE4(v60) = 0;
    HIDWORD(v59) = v46;
    LODWORD(v60) = 0;
    BYTE1(v59) = intValue2 == 2;
    LOBYTE(v59) = 0;
    [IDSStunCandidatePair _notifySessionStreamInfoReceived:"_notifySessionStreamInfoReceived:withParticipants:lightweightParticipants:joinedParticipantInfo:leftParticipantInfo:updatedParticipantInfo:sentBytes:receivedBytes:offlineRequest:streamInfoRequest:status:commandFlag:isIndication:" withParticipants:v42 lightweightParticipants:v43 joinedParticipantInfo:v45 leftParticipantInfo:0 updatedParticipantInfo:0 sentBytes:0 receivedBytes:v61 offlineRequest:v44 streamInfoRequest:v59 status:v60 commandFlag:? isIndication:?];

    goto LABEL_35;
  }

  v31 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A7AD9000, v31, OS_LOG_TYPE_DEFAULT, "processSessionInfoResponse failed due to invalid channel-number.", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"processSessionInfoResponse failed due to invalid channel-number.", v32, v33, v34, v35, v36, v55);
      if (_IDSShouldLog(0))
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"processSessionInfoResponse failed due to invalid channel-number.", v37, v38, v39, v40, v56);
      }
    }
  }

  v41 = 0;
LABEL_36:

  return v41;
}

- (BOOL)processTestResponse:(id)response arrivalTime:(double)time
{
  v37 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  requestID = [responseCopy requestID];
  v7 = [(IDSStunCandidatePair *)self shouldProcessStunResponse:requestID];

  if (!v7)
  {
LABEL_9:
    v21 = 1;
    goto LABEL_17;
  }

  if (StunUtilHasValidChannelNumber(responseCopy, self->_channelNumber, 0))
  {
    v8 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      candidatePairToken = [(IDSStunCandidatePair *)self candidatePairToken];
      *buf = 138412290;
      v36 = candidatePairToken;
      _os_log_impl(&dword_1A7AD9000, v8, OS_LOG_TYPE_DEFAULT, "receive test response for %@.", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        candidatePairToken2 = [(IDSStunCandidatePair *)self candidatePairToken];
        _IDSLogTransport(@"GL", @"IDS", @"receive test response for %@.", v11, v12, v13, v14, v15, candidatePairToken2);

        if (_IDSShouldLog(0))
        {
          candidatePairToken3 = [(IDSStunCandidatePair *)self candidatePairToken];
          _IDSLogV(0, @"IDSFoundation", @"GL", @"receive test response for %@.", v17, v18, v19, v20, candidatePairToken3);
        }
      }
    }

    goto LABEL_9;
  }

  v22 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A7AD9000, v22, OS_LOG_TYPE_DEFAULT, "processTestResponse failed due to invalid channel-number.", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"processTestResponse failed due to invalid channel-number.", v23, v24, v25, v26, v27, v33);
      if (_IDSShouldLog(0))
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"processTestResponse failed due to invalid channel-number.", v28, v29, v30, v31, v34);
      }
    }
  }

  v21 = 0;
LABEL_17:

  return v21;
}

- (BOOL)processParticipantUpdateResponse:(id)response
{
  v44 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  requestID = [responseCopy requestID];
  v6 = [(IDSStunCandidatePair *)self shouldProcessStunResponse:requestID];

  if (!v6)
  {
LABEL_13:
    v24 = 1;
    goto LABEL_21;
  }

  if (StunUtilHasValidChannelNumber(responseCopy, self->_channelNumber, 0))
  {
    v7 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      requestID2 = [responseCopy requestID];
      candidatePairToken = [(IDSStunCandidatePair *)self candidatePairToken];
      *buf = 138412546;
      v41 = requestID2;
      v42 = 2112;
      v43 = candidatePairToken;
      _os_log_impl(&dword_1A7AD9000, v7, OS_LOG_TYPE_DEFAULT, "receive participant update response %@ for %@.", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        requestID3 = [responseCopy requestID];
        candidatePairToken2 = [(IDSStunCandidatePair *)self candidatePairToken];
        _IDSLogTransport(@"GL", @"IDS", @"receive participant update response %@ for %@.", v11, v12, v13, v14, v15, requestID3);

        if (_IDSShouldLog(0))
        {
          requestID4 = [responseCopy requestID];
          candidatePairToken3 = [(IDSStunCandidatePair *)self candidatePairToken];
          _IDSLogV(0, @"IDSFoundation", @"GL", @"receive participant update response %@ for %@.", v17, v18, v19, v20, requestID4);
        }
      }
    }

    v21 = StunUtilProcessParticipantUpdate(responseCopy, 0, [responseCopy type]);
    if ([(IDSStunCandidatePair *)self _optionallyCheckEncMarker:responseCopy])
    {
      v22 = 0;
    }

    else
    {
      v22 = 4;
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained candidatePair:self didReceiveParticipantUpdate:v21 status:v22];

    goto LABEL_13;
  }

  v25 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A7AD9000, v25, OS_LOG_TYPE_DEFAULT, "processParticipantUpdateResponse failed due to invalid channel-number.", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"processParticipantUpdateResponse failed due to invalid channel-number.", v26, v27, v28, v29, v30, v36);
      if (_IDSShouldLog(0))
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"processParticipantUpdateResponse failed due to invalid channel-number.", v31, v32, v33, v34, v37);
      }
    }
  }

  v24 = 0;
LABEL_21:

  return v24;
}

- (BOOL)processPutMaterialResponse:(id)response
{
  v41 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  requestID = [responseCopy requestID];
  v6 = [(IDSStunCandidatePair *)self shouldProcessStunResponse:requestID];

  if (!v6)
  {
LABEL_9:
    v21 = 1;
    goto LABEL_17;
  }

  if (StunUtilHasValidChannelNumber(responseCopy, self->_channelNumber, 0))
  {
    v7 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      requestID2 = [responseCopy requestID];
      candidatePairToken = [(IDSStunCandidatePair *)self candidatePairToken];
      *buf = 138412546;
      v38 = requestID2;
      v39 = 2112;
      v40 = candidatePairToken;
      _os_log_impl(&dword_1A7AD9000, v7, OS_LOG_TYPE_DEFAULT, "receive PutMaterial response %@ for %@.", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        requestID3 = [responseCopy requestID];
        candidatePairToken2 = [(IDSStunCandidatePair *)self candidatePairToken];
        _IDSLogTransport(@"GL", @"IDS", @"receive PutMaterial response %@ for %@.", v11, v12, v13, v14, v15, requestID3);

        if (_IDSShouldLog(0))
        {
          requestID4 = [responseCopy requestID];
          candidatePairToken3 = [(IDSStunCandidatePair *)self candidatePairToken];
          _IDSLogV(0, @"IDSFoundation", @"GL", @"receive PutMaterial response %@ for %@.", v17, v18, v19, v20, requestID4);
        }
      }
    }

    goto LABEL_9;
  }

  v22 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A7AD9000, v22, OS_LOG_TYPE_DEFAULT, "processPutMaterialResponse failed due to invalid channel-number.", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"processPutMaterialResponse failed due to invalid channel-number.", v23, v24, v25, v26, v27, v33);
      if (_IDSShouldLog(0))
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"processPutMaterialResponse failed due to invalid channel-number.", v28, v29, v30, v31, v34);
      }
    }
  }

  v21 = 0;
LABEL_17:

  return v21;
}

- (BOOL)processInfoIndication:(id)indication arrivalTime:(double)time
{
  v22 = *MEMORY[0x1E69E9840];
  indicationCopy = indication;
  v6 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    candidatePairToken = [(IDSStunCandidatePair *)self candidatePairToken];
    *buf = 138412290;
    v21 = candidatePairToken;
    _os_log_impl(&dword_1A7AD9000, v6, OS_LOG_TYPE_DEFAULT, "receive info indication for %@.", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      candidatePairToken2 = [(IDSStunCandidatePair *)self candidatePairToken];
      _IDSLogTransport(@"GL", @"IDS", @"receive info indication for %@.", v9, v10, v11, v12, v13, candidatePairToken2);

      if (_IDSShouldLog(0))
      {
        candidatePairToken3 = [(IDSStunCandidatePair *)self candidatePairToken];
        _IDSLogV(0, @"IDSFoundation", @"GL", @"receive info indication for %@.", v15, v16, v17, v18, candidatePairToken3);
      }
    }
  }

  return 1;
}

- (BOOL)processSessionInfoIndication:(id)indication arrivalTime:(double)time isLightweightParticipant:(BOOL)participant
{
  v43 = *MEMORY[0x1E69E9840];
  indicationCopy = indication;
  HasValidChannelNumber = StunUtilHasValidChannelNumber(indicationCopy, self->_channelNumber, 0);
  if (HasValidChannelNumber)
  {
    v9 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      candidatePairToken = [(IDSStunCandidatePair *)self candidatePairToken];
      *buf = 138412290;
      v42 = candidatePairToken;
      _os_log_impl(&dword_1A7AD9000, v9, OS_LOG_TYPE_DEFAULT, "receive session-info indication for %@.", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        candidatePairToken2 = [(IDSStunCandidatePair *)self candidatePairToken];
        _IDSLogTransport(@"GL", @"IDS", @"receive session-info indication for %@.", v12, v13, v14, v15, v16, candidatePairToken2);

        if (_IDSShouldLog(0))
        {
          candidatePairToken3 = [(IDSStunCandidatePair *)self candidatePairToken];
          _IDSLogV(0, @"IDSFoundation", @"GL", @"receive session-info indication for %@.", v18, v19, v20, v21, candidatePairToken3);
        }
      }
    }

    v22 = StunUtilProcessStreamInfo(indicationCopy, self->_linkID, self->_linkID);
    Value = 0;
    if (v22 && @"stream-info-peer-published-streams")
    {
      Value = CFDictionaryGetValue(v22, @"stream-info-peer-published-streams");
    }

    v24 = StunUtilProcessParticipants(Value, self->_participantID, participant);
    v25 = StunUtilProcessLightweightParticipants(indicationCopy);
    BYTE4(v40) = 1;
    LODWORD(v40) = 0;
    LOWORD(v39) = 0;
    [IDSStunCandidatePair _notifySessionStreamInfoReceived:"_notifySessionStreamInfoReceived:withParticipants:lightweightParticipants:joinedParticipantInfo:leftParticipantInfo:updatedParticipantInfo:sentBytes:receivedBytes:offlineRequest:streamInfoRequest:status:commandFlag:isIndication:" withParticipants:v22 lightweightParticipants:v24 joinedParticipantInfo:v25 leftParticipantInfo:0 updatedParticipantInfo:0 sentBytes:0 receivedBytes:0 offlineRequest:0 streamInfoRequest:v39 status:v40 commandFlag:? isIndication:?];
  }

  else
  {
    v26 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v26, OS_LOG_TYPE_DEFAULT, "processSessionInfoIndication failed due to invalid channel-number.", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"processSessionInfoIndication failed due to invalid channel-number.", v27, v28, v29, v30, v31, v37);
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"processSessionInfoIndication failed due to invalid channel-number.", v32, v33, v34, v35, v38);
        }
      }
    }
  }

  return HasValidChannelNumber;
}

- (BOOL)processDataMessageErrorIndication:(id)indication
{
  v95[184] = *MEMORY[0x1E69E9840];
  indicationCopy = indication;
  bzero(v92, 0x5D0uLL);
  if (([indicationCopy getAttribute:9 attribute:v92] & 1) == 0)
  {
    v35 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v35, OS_LOG_TYPE_ERROR, "receive invalid data message error indication.", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV(@"IDSFoundation", @"receive invalid data message error indication.", v36, v37, v38, v39, v40, v41, v79);
      _IDSLogV(0, @"IDSFoundation", @"Warning", @"receive invalid data message error indication.", v42, v43, v44, v45, v80);
      _IDSLogTransport(@"Warning", @"IDS", @"receive invalid data message error indication.", v46, v47, v48, v49, v50, v81);
    }

    goto LABEL_25;
  }

  v5 = v94 + 100 * v93;
  v6 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    candidatePairToken = [(IDSStunCandidatePair *)self candidatePairToken];
    *buf = 138412802;
    *&buf[4] = candidatePairToken;
    *&buf[12] = 1024;
    *&buf[14] = v5;
    *&buf[18] = 2080;
    *&buf[20] = v95;
    _os_log_impl(&dword_1A7AD9000, v6, OS_LOG_TYPE_DEFAULT, "receive data message error indication for %@, error_code(%u) reason(%s)", buf, 0x1Cu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      candidatePairToken2 = [(IDSStunCandidatePair *)self candidatePairToken];
      _IDSLogTransport(@"GL", @"IDS", @"receive data message error indication for %@, error_code(%u) reason(%s)", v9, v10, v11, v12, v13, candidatePairToken2);

      if (_IDSShouldLog(0))
      {
        candidatePairToken3 = [(IDSStunCandidatePair *)self candidatePairToken];
        _IDSLogV(0, @"IDSFoundation", @"GL", @"receive data message error indication for %@, error_code(%u) reason(%s)", v15, v16, v17, v18, candidatePairToken3);
      }
    }
  }

  *&v19 = 0xAAAAAAAAAAAAAAAALL;
  *(&v19 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v90 = v19;
  v91 = v19;
  v88 = v19;
  v89 = v19;
  v86 = v19;
  v87 = v19;
  *buf = v19;
  *&buf[16] = v19;
  v84[6] = v19;
  v84[7] = v19;
  v84[4] = v19;
  v84[5] = v19;
  v84[2] = v19;
  v84[3] = v19;
  v84[0] = v19;
  v84[1] = v19;
  if (StunUtilHasValidXorMappedAddress(indicationCopy, v84))
  {
    v20 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *v82 = 136315138;
      v83 = SAToIPPortString(buf, 0x80uLL, v84);
      _os_log_impl(&dword_1A7AD9000, v20, OS_LOG_TYPE_DEFAULT, "Got error indication with xor-mapped-address [%s]", v82, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v21 = SAToIPPortString(buf, 0x80uLL, v84);
        _IDSLogTransport(@"GL", @"IDS", @"Got error indication with xor-mapped-address [%s]", v22, v23, v24, v25, v26, v21);
        if (_IDSShouldLog(0))
        {
          v27 = SAToIPPortString(buf, 0x80uLL, v84);
          _IDSLogV(0, @"IDSFoundation", @"GL", @"Got error indication with xor-mapped-address [%s]", v28, v29, v30, v31, v27);
        }
      }
    }
  }

  if (v5 > 0x25Fu)
  {
    switch(v5)
    {
      case 0x260u:
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        v60 = objc_opt_respondsToSelector();

        if (v60)
        {
          v61 = objc_loadWeakRetained(&self->_delegate);
          [v61 receiveBlockedIndicationWithReason:49];
        }

        goto LABEL_45;
      case 0x262u:
        v75 = objc_loadWeakRetained(&self->_delegate);
        v76 = objc_opt_respondsToSelector();

        if (v76)
        {
          v77 = objc_loadWeakRetained(&self->_delegate);
          [v77 receiveErrorIndicationWithCode:1];
        }

        goto LABEL_45;
      case 0x263u:
        v52 = objc_loadWeakRetained(&self->_delegate);
        v53 = objc_opt_respondsToSelector();

        if (v53)
        {
          v54 = objc_loadWeakRetained(&self->_delegate);
          [v54 receiveBlockedIndicationWithReason:46];
        }

        goto LABEL_45;
    }

LABEL_35:
    v62 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
    {
      *v82 = 67109120;
      LODWORD(v83) = v5;
      _os_log_impl(&dword_1A7AD9000, v62, OS_LOG_TYPE_DEFAULT, "invalid case: %hu", v82, 8u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"invalid case: %hu", v63, v64, v65, v66, v67, v5);
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"invalid case: %hu", v68, v69, v70, v71, v5);
        }
      }
    }

LABEL_25:
    v51 = 0;
    goto LABEL_46;
  }

  if (v5 != 601)
  {
    if (v5 == 602)
    {
      v72 = objc_loadWeakRetained(&self->_delegate);
      v73 = objc_opt_respondsToSelector();

      if (v73)
      {
        v74 = objc_loadWeakRetained(&self->_delegate);
        [v74 receiveIdleClientErrorForCandidatePair:self];
      }

      goto LABEL_45;
    }

    if (v5 == 603)
    {
      v32 = objc_loadWeakRetained(&self->_delegate);
      v33 = objc_opt_respondsToSelector();

      if (v33)
      {
        v34 = objc_loadWeakRetained(&self->_delegate);
        [v34 receiveBlockedIndicationWithReason:44];
      }

      goto LABEL_45;
    }

    goto LABEL_35;
  }

  v55 = objc_loadWeakRetained(&self->_delegate);
  v56 = objc_opt_respondsToSelector();

  if ((v56 & 1) == 0)
  {
LABEL_45:
    v51 = 1;
    goto LABEL_46;
  }

  v57 = [(IDSStunCandidatePair *)self _didLocalExternalAddressChange:v84];
  v58 = objc_loadWeakRetained(&self->_delegate);
  v51 = [v58 receiveNoSessionStateForCandidatePair:self didLocalExternalAddressChange:v57];

LABEL_46:
  return v51;
}

- (BOOL)processParticipantUpdateIndication:(id)indication arrivalTime:(double)time
{
  v38 = *MEMORY[0x1E69E9840];
  indicationCopy = indication;
  HasValidChannelNumber = StunUtilHasValidChannelNumber(indicationCopy, self->_channelNumber, 0);
  if (HasValidChannelNumber)
  {
    v7 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      candidatePairToken = [(IDSStunCandidatePair *)self candidatePairToken];
      *buf = 138412290;
      v37 = candidatePairToken;
      _os_log_impl(&dword_1A7AD9000, v7, OS_LOG_TYPE_DEFAULT, "receive participant update indication for %@.", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        candidatePairToken2 = [(IDSStunCandidatePair *)self candidatePairToken];
        _IDSLogTransport(@"GL", @"IDS", @"receive participant update indication for %@.", v10, v11, v12, v13, v14, candidatePairToken2);

        if (_IDSShouldLog(0))
        {
          candidatePairToken3 = [(IDSStunCandidatePair *)self candidatePairToken];
          _IDSLogV(0, @"IDSFoundation", @"GL", @"receive participant update indication for %@.", v16, v17, v18, v19, candidatePairToken3);
        }
      }
    }

    v20 = StunUtilProcessParticipantUpdate(indicationCopy, 0, [indicationCopy type]);
    if ([(IDSStunCandidatePair *)self _optionallyCheckEncMarker:indicationCopy])
    {
      v21 = 0;
    }

    else
    {
      v21 = 4;
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained candidatePair:self didReceiveParticipantUpdate:v20 status:v21];
  }

  else
  {
    v23 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v23, OS_LOG_TYPE_DEFAULT, "processParticipantUpdateIndication failed due to invalid channel number.", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"processParticipantUpdateIndication failed due to invalid channel number.", v24, v25, v26, v27, v28, v34);
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"processParticipantUpdateIndication failed due to invalid channel number.", v29, v30, v31, v32, v35);
        }
      }
    }
  }

  return HasValidChannelNumber;
}

- (BOOL)processPluginRegistrationResponse:(id)response
{
  v71 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  if (StunUtilHasValidChannelNumber(responseCopy, self->_channelNumber, 0))
  {
    requestID = [responseCopy requestID];
    v6 = [(IDSStunCandidatePair *)self shouldProcessStunResponse:requestID];

    if (v6)
    {
      requestID2 = [responseCopy requestID];
      v8 = [(IDSStunCandidatePair *)self _pluginNameForStunRequest:requestID2];

      if (v8)
      {
        requestID3 = [responseCopy requestID];
        [(IDSStunCandidatePair *)self _removeStunPluginRegistrationRequest:requestID3];
      }

      pathExtension = [v8 pathExtension];
      v11 = [pathExtension isEqualToString:@"Register"];
      if (v11 & 1) != 0 || ([pathExtension isEqualToString:@"Unregister"])
      {
        v64 = 0;
        v12 = StunUtilHasValidUInt64Attr(responseCopy, 65493, &v64) | v11 ^ 1;
        if (v12)
        {
          v13 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            candidatePairToken = [(IDSStunCandidatePair *)self candidatePairToken];
            *buf = 138412802;
            v66 = candidatePairToken;
            v67 = 2048;
            v68 = v64;
            v69 = 2112;
            v70 = v8;
            _os_log_impl(&dword_1A7AD9000, v13, OS_LOG_TYPE_DEFAULT, "receive plugin update for %@, with participant id: %llu, and name %@", buf, 0x20u);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            if (_IDSShouldLogTransport())
            {
              candidatePairToken2 = [(IDSStunCandidatePair *)self candidatePairToken];
              _IDSLogTransport(@"GL", @"IDS", @"receive plugin update for %@, with participant id: %llu, and name %@", v16, v17, v18, v19, v20, candidatePairToken2);

              if (_IDSShouldLog(0))
              {
                candidatePairToken3 = [(IDSStunCandidatePair *)self candidatePairToken];
                _IDSLogV(0, @"IDSFoundation", @"GL", @"receive plugin update for %@, with participant id: %llu, and name %@", v22, v23, v24, v25, candidatePairToken3);
              }
            }
          }

          stringByDeletingPathExtension = [v8 stringByDeletingPathExtension];
          WeakRetained = objc_loadWeakRetained(&self->_delegate);
          v28 = WeakRetained;
          if (v11)
          {
            [WeakRetained candidatePair:self didReceivePluginRegistration:v64 pluginName:stringByDeletingPathExtension];
          }

          else
          {
            [WeakRetained candidatePair:self didReceivePluginUnregistration:v64 pluginName:stringByDeletingPathExtension];
          }
        }

        else
        {
          v39 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1A7AD9000, v39, OS_LOG_TYPE_DEFAULT, "received update plugin needs valid participant id when registering.", buf, 2u);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            if (_IDSShouldLogTransport())
            {
              _IDSLogTransport(@"GL", @"IDS", @"received update plugin needs valid participant id when registering.", v40, v41, v42, v43, v44, v60);
              if (_IDSShouldLog(0))
              {
                _IDSLogV(0, @"IDSFoundation", @"GL", @"received update plugin needs valid participant id when registering.", v45, v46, v47, v48, v62);
              }
            }
          }
        }
      }

      else
      {
        v49 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1A7AD9000, v49, OS_LOG_TYPE_DEFAULT, "invalid plugin operation - ignoring this response", buf, 2u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            _IDSLogTransport(@"GL", @"IDS", @"invalid plugin operation - ignoring this response", v50, v51, v52, v53, v54, v60);
            if (_IDSShouldLog(0))
            {
              _IDSLogV(0, @"IDSFoundation", @"GL", @"invalid plugin operation - ignoring this response", v55, v56, v57, v58, v63);
            }
          }
        }

        LOBYTE(v12) = 0;
      }
    }

    else
    {
      LOBYTE(v12) = 1;
    }
  }

  else
  {
    v29 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v29, OS_LOG_TYPE_DEFAULT, "processPluginRegistrationResponse failed due to invalid channel number.", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"processPluginRegistrationResponse failed due to invalid channel number.", v30, v31, v32, v33, v34, v60);
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"processPluginRegistrationResponse failed due to invalid channel number.", v35, v36, v37, v38, v61);
        }
      }
    }

    LOBYTE(v12) = 0;
  }

  return v12;
}

- (BOOL)processPluginControlIndication:(id)indication
{
  v66 = *MEMORY[0x1E69E9840];
  indicationCopy = indication;
  if ((StunUtilHasValidChannelNumber(indicationCopy, self->_channelNumber, 0) & 1) == 0)
  {
    v21 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v21, OS_LOG_TYPE_DEFAULT, "processPluginControlIndication failed due to invalid channel number.", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"processPluginControlIndication failed due to invalid channel number.", v22, v23, v24, v25, v26, v52);
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"processPluginControlIndication failed due to invalid channel number.", v27, v28, v29, v30, v53);
        }
      }
    }

    goto LABEL_23;
  }

  v57 = 0;
  if ((StunUtilHasValidUInt64Attr(indicationCopy, 65493, &v57) & 1) == 0)
  {
    v31 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v31, OS_LOG_TYPE_DEFAULT, "received plugin event needs valid participant id.", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"received plugin event needs valid participant id.", v32, v33, v34, v35, v36, v52);
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"received plugin event needs valid participant id.", v37, v38, v39, v40, v54);
        }
      }
    }

LABEL_23:
    v5 = 0;
    goto LABEL_24;
  }

  v56 = 0;
  v5 = StunUtilHasValidUInt8Attr(indicationCopy, 65491, &v56);
  if (v5)
  {
    transactionID = [indicationCopy transactionID];
    v7 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      candidatePairToken = [(IDSStunCandidatePair *)self candidatePairToken];
      *buf = 138413058;
      v59 = candidatePairToken;
      v60 = 2048;
      v61 = v57;
      v62 = 1024;
      v63 = v56;
      v64 = 2112;
      v65 = transactionID;
      _os_log_impl(&dword_1A7AD9000, v7, OS_LOG_TYPE_DEFAULT, "receive plugin event for %@, with participant id: %llu, operation %u, transactionID %@", buf, 0x26u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        candidatePairToken2 = [(IDSStunCandidatePair *)self candidatePairToken];
        _IDSLogTransport(@"GL", @"IDS", @"receive plugin event for %@, with participant id: %llu, operation %u, transactionID %@", v10, v11, v12, v13, v14, candidatePairToken2);

        if (_IDSShouldLog(0))
        {
          candidatePairToken3 = [(IDSStunCandidatePair *)self candidatePairToken];
          _IDSLogV(0, @"IDSFoundation", @"GL", @"receive plugin event for %@, with participant id: %llu, operation %u, transactionID %@", v16, v17, v18, v19, candidatePairToken3);
        }
      }
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained candidatePair:self didReceivePluginControlEvent:v57 operation:v56 transactionID:transactionID];
  }

  else
  {
    v42 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v42, OS_LOG_TYPE_DEFAULT, "received plugin event needs valid operation.", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"received plugin event needs valid operation.", v43, v44, v45, v46, v47, v52);
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"received plugin event needs valid operation.", v48, v49, v50, v51, v55);
        }
      }
    }
  }

LABEL_24:

  return v5;
}

- (BOOL)processStunErrorResponse:(id)response packetBuffer:(id *)buffer headerOverhead:(unint64_t)overhead
{
  v185 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  requestID = [responseCopy requestID];
  v10 = [(IDSStunCandidatePair *)self shouldProcessStunResponse:requestID];

  if (!v10)
  {
LABEL_10:
    v26 = 1;
    goto LABEL_77;
  }

  v170 = -21846;
  *&v11 = 0xAAAAAAAAAAAAAAAALL;
  *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v184[6] = v11;
  v184[7] = v11;
  v184[4] = v11;
  v184[5] = v11;
  v184[2] = v11;
  v184[3] = v11;
  v184[0] = v11;
  v184[1] = v11;
  v169 = 0;
  type = [responseCopy type];
  if (StunUtilHasValidErrorCodeAttr(responseCopy, &v170, v184, &v169))
  {
    if (self->_state == 2)
    {
      v13 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        candidatePairToken = [(IDSStunCandidatePair *)self candidatePairToken];
        *buf = 138412546;
        *&buf[4] = candidatePairToken;
        *&buf[12] = 1024;
        *&buf[14] = type;
        _os_log_impl(&dword_1A7AD9000, v13, OS_LOG_TYPE_DEFAULT, "%@ is already in error state, ignore error response %04x.", buf, 0x12u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          candidatePairToken2 = [(IDSStunCandidatePair *)self candidatePairToken];
          _IDSLogTransport(@"GL", @"IDS", @"%@ is already in error state, ignore error response %04x.", v16, v17, v18, v19, v20, candidatePairToken2);

          if (_IDSShouldLog(0))
          {
            candidatePairToken3 = [(IDSStunCandidatePair *)self candidatePairToken];
            _IDSLogV(0, @"IDSFoundation", @"GL", @"%@ is already in error state, ignore error response %04x.", v22, v23, v24, v25, candidatePairToken3);
          }
        }
      }

      goto LABEL_10;
    }

    v37 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v38 = v170;
      v39 = ids_monotonic_time();
      [responseCopy startTime];
      v41 = v40;
      v42 = [(IDSStunCandidate *)self->_local address][1];
      *buf = 67110146;
      *&buf[4] = type;
      *&buf[8] = 1024;
      *&buf[10] = v38;
      *&buf[14] = 2080;
      *&buf[16] = v184;
      *&buf[24] = 2048;
      *&buf[26] = (v39 - v41) * 1000.0;
      *&buf[34] = 1024;
      *&buf[36] = v42;
      _os_log_impl(&dword_1A7AD9000, v37, OS_LOG_TYPE_DEFAULT, "receive stun error response - type(%04x) error_code(%u) reason(%s) after %0.3lf ms family: %d.", buf, 0x28u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v43 = ids_monotonic_time();
        [responseCopy startTime];
        v45 = v44;
        v168 = [(IDSStunCandidate *)self->_local address][1];
        *(&v165 + 1) = (v43 - v45) * 1000.0;
        *&v165 = v184;
        _IDSLogTransport(@"GL", @"IDS", @"receive stun error response - type(%04x) error_code(%u) reason(%s) after %0.3lf ms family: %d.", v46, v47, v48, v49, v50, type);
        if (_IDSShouldLog(0))
        {
          v51 = ids_monotonic_time();
          [responseCopy startTime];
          v53 = v52;
          v168 = [(IDSStunCandidate *)self->_local address][1];
          *(&v165 + 1) = (v51 - v53) * 1000.0;
          *&v165 = v184;
          _IDSLogV(0, @"IDSFoundation", @"GL", @"receive stun error response - type(%04x) error_code(%u) reason(%s) after %0.3lf ms family: %d.", v54, v55, v56, v57, type);
        }
      }
    }

    v58 = GLUtilStunErrorToGlobalLinkError(v170);
    GLUtilReportAWDStunMessageEvent(responseCopy, v58, self, 0.0);
    *&v59 = 0xAAAAAAAAAAAAAAAALL;
    *(&v59 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v182 = v59;
    v183 = v59;
    v180 = v59;
    v181 = v59;
    *&buf[32] = v59;
    v179 = v59;
    *buf = v59;
    *&buf[16] = v59;
    v177[6] = v59;
    v177[7] = v59;
    v177[4] = v59;
    v177[5] = v59;
    v177[2] = v59;
    v177[3] = v59;
    v177[0] = v59;
    v177[1] = v59;
    if (StunUtilHasValidXorMappedAddress(responseCopy, v177))
    {
      v60 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
      {
        v61 = SAToIPPortString(buf, 0x80uLL, v177);
        *v171 = 136315138;
        v172 = v61;
        _os_log_impl(&dword_1A7AD9000, v60, OS_LOG_TYPE_DEFAULT, "Got error response with xor-mapped-address [%s]", v171, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v62 = SAToIPPortString(buf, 0x80uLL, v177);
          _IDSLogTransport(@"GL", @"IDS", @"Got error response with xor-mapped-address [%s]", v63, v64, v65, v66, v67, v62);
          if (_IDSShouldLog(0))
          {
            v68 = SAToIPPortString(buf, 0x80uLL, v177);
            _IDSLogV(0, @"IDSFoundation", @"GL", @"Got error response with xor-mapped-address [%s]", v69, v70, v71, v72, v68);
          }
        }
      }
    }

    v73 = GLUtilStunErrorToGlobalLinkError(v170);
    v74 = GLUCreateQRStunMessageEvent(responseCopy, v73, self, 0, 0.0);
    if (v74)
    {
      [(IDSStunCandidatePair *)self _notifyQREventAdded:v74];
    }

    if ((type & 0xFFFFFFFFFFFFFFFELL) == 0xFF0)
    {
      v75 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
      {
        v76 = (&_IDSStunCandidatePairStateStrings)[self->_state];
        v77 = off_1EB2B43B8;
        candidatePairToken4 = [(IDSStunCandidatePair *)self candidatePairToken];
        *v171 = 136315650;
        v172 = v76;
        v173 = 2080;
        v174 = v77;
        v175 = 2112;
        v176 = candidatePairToken4;
        _os_log_impl(&dword_1A7AD9000, v75, OS_LOG_TYPE_DEFAULT, "update state (%s->%s) for %@.", v171, 0x20u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v79 = (&_IDSStunCandidatePairStateStrings)[self->_state];
          candidatePairToken5 = [(IDSStunCandidatePair *)self candidatePairToken];
          _IDSLogTransport(@"GL", @"IDS", @"update state (%s->%s) for %@.", v80, v81, v82, v83, v84, v79);

          if (_IDSShouldLog(0))
          {
            v85 = (&_IDSStunCandidatePairStateStrings)[self->_state];
            candidatePairToken6 = [(IDSStunCandidatePair *)self candidatePairToken];
            _IDSLogV(0, @"IDSFoundation", @"GL", @"update state (%s->%s) for %@.", v86, v87, v88, v89, v85);
          }
        }
      }

      self->_state = 2;
      v90 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
      {
        participantID = self->_participantID;
        v92 = [(NSData *)self->_relaySessionToken base64EncodedStringWithOptions:0];
        *v171 = 134218242;
        v172 = participantID;
        v173 = 2112;
        v174 = v92;
        _os_log_impl(&dword_1A7AD9000, v90, OS_LOG_TYPE_DEFAULT, "failed participant:[%16llX], token:[%@]", v171, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v93 = self->_participantID;
          v163 = [(NSData *)self->_relaySessionToken base64EncodedStringWithOptions:0];
          _IDSLogTransport(@"GL", @"IDS", @"failed participant:[%16llX], token:[%@]", v94, v95, v96, v97, v98, v93);

          if (_IDSShouldLog(0))
          {
            v99 = self->_participantID;
            v164 = [(NSData *)self->_relaySessionToken base64EncodedStringWithOptions:0];
            _IDSLogV(0, @"IDSFoundation", @"GL", @"failed participant:[%16llX], token:[%@]", v100, v101, v102, v103, v99);
          }
        }
      }
    }

    else
    {
      switch(type)
      {
        case 4088:
          v138 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v138, OS_LOG_TYPE_DEFAULT))
          {
            *v171 = 0;
            _os_log_impl(&dword_1A7AD9000, v138, OS_LOG_TYPE_DEFAULT, "receive plugin registrion error response", v171, 2u);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            if (_IDSShouldLogTransport())
            {
              _IDSLogTransport(@"GL", @"IDS", @"receive plugin registrion error response", v139, v140, v141, v142, v143, v160);
              if (_IDSShouldLog(0))
              {
                _IDSLogV(0, @"IDSFoundation", @"GL", @"receive plugin registrion error response", v144, v145, v146, v147, v161);
              }
            }
          }

          break;
        case 4087:
          v120 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v120, OS_LOG_TYPE_DEFAULT))
          {
            candidatePairToken7 = [(IDSStunCandidatePair *)self candidatePairToken];
            *v171 = 138412290;
            v172 = candidatePairToken7;
            _os_log_impl(&dword_1A7AD9000, v120, OS_LOG_TYPE_DEFAULT, "receive participant update error response for %@.", v171, 0xCu);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            if (_IDSShouldLogTransport())
            {
              candidatePairToken8 = [(IDSStunCandidatePair *)self candidatePairToken];
              _IDSLogTransport(@"GL", @"IDS", @"receive participant update error response for %@.", v123, v124, v125, v126, v127, candidatePairToken8);

              if (_IDSShouldLog(0))
              {
                candidatePairToken9 = [(IDSStunCandidatePair *)self candidatePairToken];
                _IDSLogV(0, @"IDSFoundation", @"GL", @"receive participant update error response for %@.", v129, v130, v131, v132, candidatePairToken9);
              }
            }
          }

          v133 = StunUtilProcessParticipantUpdate(responseCopy, v170, 4087);
          v134 = v133;
          if (!v133 || ![v133 count])
          {
            v150 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v150, OS_LOG_TYPE_DEFAULT))
            {
              *v171 = 0;
              _os_log_impl(&dword_1A7AD9000, v150, OS_LOG_TYPE_DEFAULT, "receive participant update error response: invalid participantUpdateInfo", v171, 2u);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              if (_IDSShouldLogTransport())
              {
                _IDSLogTransport(@"GL", @"IDS", @"receive participant update error response: invalid participantUpdateInfo", v151, v152, v153, v154, v155, v160);
                if (_IDSShouldLog(0))
                {
                  _IDSLogV(0, @"IDSFoundation", @"GL", @"receive participant update error response: invalid participantUpdateInfo", v156, v157, v158, v159, v162);
                }
              }
            }

            v26 = 0;
            goto LABEL_76;
          }

          v135 = sub_1A7C74D88(v170);
          if ([(IDSStunCandidatePair *)self _optionallyCheckEncMarker:responseCopy])
          {
            v136 = v135;
          }

          else
          {
            v136 = 4;
          }

          WeakRetained = objc_loadWeakRetained(&self->_delegate);
          [WeakRetained candidatePair:self didReceiveParticipantUpdate:v134 status:v136];

LABEL_75:
          v26 = 1;
LABEL_76:

          goto LABEL_77;
        case 4085:
          var2 = buffer->var2;
          requestID2 = [responseCopy requestID];
          v106 = [(IDSStunCandidatePair *)self getStunSentBytes:requestID2];

          v107 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
          {
            candidatePairToken10 = [(IDSStunCandidatePair *)self candidatePairToken];
            *v171 = 138412290;
            v172 = candidatePairToken10;
            _os_log_impl(&dword_1A7AD9000, v107, OS_LOG_TYPE_DEFAULT, "receive session-info error response for %@.", v171, 0xCu);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            if (_IDSShouldLogTransport())
            {
              candidatePairToken11 = [(IDSStunCandidatePair *)self candidatePairToken];
              _IDSLogTransport(@"GL", @"IDS", @"receive session-info error response for %@.", v110, v111, v112, v113, v114, candidatePairToken11);

              if (_IDSShouldLog(0))
              {
                candidatePairToken12 = [(IDSStunCandidatePair *)self candidatePairToken];
                _IDSLogV(0, @"IDSFoundation", @"GL", @"receive session-info error response for %@.", v116, v117, v118, v119, candidatePairToken12);
              }
            }
          }

          BYTE12(v165) = 0;
          *(&v165 + 4) = 2;
          LOWORD(v165) = 0;
          [IDSStunCandidatePair _notifySessionStreamInfoReceived:"_notifySessionStreamInfoReceived:withParticipants:lightweightParticipants:joinedParticipantInfo:leftParticipantInfo:updatedParticipantInfo:sentBytes:receivedBytes:offlineRequest:streamInfoRequest:status:commandFlag:isIndication:" withParticipants:0 lightweightParticipants:0 joinedParticipantInfo:0 leftParticipantInfo:0 updatedParticipantInfo:0 sentBytes:0 receivedBytes:v106 offlineRequest:var2 + overhead streamInfoRequest:v165 status:v168 commandFlag:? isIndication:?];
          break;
      }
    }

    v148 = [(IDSStunCandidatePair *)self _didLocalExternalAddressChange:v177];
    v134 = objc_loadWeakRetained(&self->_delegate);
    [v134 candidatePair:self didReceiveStunErrorResponse:type errorCode:v170 didLocalExternalAddressChange:v148];
    goto LABEL_75;
  }

  v27 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = type;
    _os_log_impl(&dword_1A7AD9000, v27, OS_LOG_TYPE_DEFAULT, "receive invalid stun error code attr, ignore error response %04x.", buf, 8u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"receive invalid stun error code attr, ignore error response %04x.", v28, v29, v30, v31, v32, type);
      if (_IDSShouldLog(0))
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"receive invalid stun error code attr, ignore error response %04x.", v33, v34, v35, v36, type);
      }
    }
  }

  v26 = 0;
LABEL_77:

  return v26;
}

- (void)processSessionInfoRequestTimeout:(id)timeout
{
  BYTE12(v3) = 0;
  *(&v3 + 4) = 3;
  LOWORD(v3) = 0;
  [IDSStunCandidatePair _notifySessionStreamInfoReceived:"_notifySessionStreamInfoReceived:withParticipants:lightweightParticipants:joinedParticipantInfo:leftParticipantInfo:updatedParticipantInfo:sentBytes:receivedBytes:offlineRequest:streamInfoRequest:status:commandFlag:isIndication:" withParticipants:0 lightweightParticipants:0 joinedParticipantInfo:0 leftParticipantInfo:0 updatedParticipantInfo:0 sentBytes:0 receivedBytes:[(IDSStunCandidatePair *)self getStunSentBytes:timeout] offlineRequest:0 streamInfoRequest:v3 status:? commandFlag:? isIndication:?];
}

- (void)_notifySessionStreamInfoReceived:(id)received withParticipants:(id)participants lightweightParticipants:(id)lightweightParticipants joinedParticipantInfo:(id)info leftParticipantInfo:(id)participantInfo updatedParticipantInfo:(id)updatedParticipantInfo sentBytes:(unint64_t)bytes receivedBytes:(unint64_t)self0 offlineRequest:(BOOL)self1 streamInfoRequest:(BOOL)self2 status:(unsigned int)self3 commandFlag:(unsigned int)self4 isIndication:(BOOL)self5
{
  value = received;
  participantsCopy = participants;
  lightweightParticipantsCopy = lightweightParticipants;
  infoCopy = info;
  participantInfoCopy = participantInfo;
  updatedParticipantInfoCopy = updatedParticipantInfo;
  v25 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v26 = v25;
  if (infoCopy)
  {
    CFDictionarySetValue(v25, @"gl-option-sessioninfo-response-joined-participant-info-key", infoCopy);
  }

  if (participantInfoCopy)
  {
    CFDictionarySetValue(v26, @"gl-option-sessioninfo-response-left-participant-info-key", participantInfoCopy);
  }

  if (updatedParticipantInfoCopy)
  {
    CFDictionarySetValue(v26, @"gl-option-sessioninfo-response-updated-participant-info-key", updatedParticipantInfoCopy);
  }

  if (value)
  {
    CFDictionarySetValue(v26, @"gl-option-sessioninfo-response-streaminfo-key", value);
  }

  if (participantsCopy)
  {
    CFDictionarySetValue(v26, @"gl-option-sessioninfo-response-participants-key", participantsCopy);
  }

  if (lightweightParticipantsCopy)
  {
    CFDictionarySetValue(v26, @"gl-option-sessioninfo-response-lightweight-participants-key", lightweightParticipantsCopy);
  }

  if (bytes)
  {
    v27 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:bytes];
    if (v27)
    {
      CFDictionarySetValue(v26, @"gl-option-sessioninfo-request-bytes-sent-key", v27);
    }
  }

  if (receivedBytes)
  {
    v28 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:receivedBytes];
    if (v28)
    {
      CFDictionarySetValue(v26, @"gl-option-sessioninfo-response-bytes-received-key", v28);
    }
  }

  if (request)
  {
    v29 = [MEMORY[0x1E696AD98] numberWithBool:1];
    if (v29)
    {
      CFDictionarySetValue(v26, @"gl-option-sessioninfo-response-offline-request-key", v29);
    }
  }

  if (infoRequest)
  {
    CFDictionarySetValue(v26, @"gl-option-sessioninfo-request-type", &unk_1F1B20348);
  }

  if (flag)
  {
    v30 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:flag];
    if (v30)
    {
      CFDictionarySetValue(v26, @"gl-option-sessioninfo-command-flag", v30);
    }
  }

  if (indication)
  {
    v31 = [MEMORY[0x1E696AD98] numberWithBool:1];
    if (v31)
    {
      CFDictionarySetValue(v26, @"gl-option-sessioninfo-Indication", v31);
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained candidatePair:self didReceiveSessionInfo:v26 status:status];
}

- (void)_notifyQREventAdded:(id)added
{
  addedCopy = added;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 candidatePair:self didAddQREvent:addedCopy];
  }
}

- (void)addProtoRequest:(unint64_t)request
{
  v21 = *MEMORY[0x1E69E9840];
  pendingProtoRequests = self->_pendingProtoRequests;
  if (!pendingProtoRequests)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v7 = self->_pendingProtoRequests;
    self->_pendingProtoRequests = v6;

    pendingProtoRequests = self->_pendingProtoRequests;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:request];
  v9 = [(NSMutableSet *)pendingProtoRequests containsObject:v8];

  if ((v9 & 1) == 0)
  {
    v10 = self->_pendingProtoRequests;
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:request];
    [(NSMutableSet *)v10 addObject:v11];

    v12 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      requestCopy = request;
      v19 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_1A7AD9000, v12, OS_LOG_TYPE_DEFAULT, "add pending proto request: %llu for %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLog(0))
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"add pending proto request: %llu for %@", v13, v14, v15, v16, request);
      }
    }
  }
}

- (BOOL)removeProtoRequest:(unint64_t)request
{
  v27 = *MEMORY[0x1E69E9840];
  pendingProtoRequests = self->_pendingProtoRequests;
  if (!pendingProtoRequests)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v7 = self->_pendingProtoRequests;
    self->_pendingProtoRequests = v6;

    pendingProtoRequests = self->_pendingProtoRequests;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:request];
  v9 = [(NSMutableSet *)pendingProtoRequests containsObject:v8];

  if (v9)
  {
    v10 = self->_pendingProtoRequests;
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:request];
    [(NSMutableSet *)v10 removeObject:v11];

    v12 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      requestCopy = request;
      v25 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_1A7AD9000, v12, OS_LOG_TYPE_DEFAULT, "remove pending proto request: %llu for %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"remove pending proto request: %llu for %@", v13, v14, v15, v16, v17, request);
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"remove pending proto request: %llu for %@", v18, v19, v20, v21, request);
        }
      }
    }
  }

  return v9;
}

- (void)_savePluginNameForProtoRequest:(unint64_t)request pluginName:(id)name
{
  nameCopy = name;
  pendingProtoRequests = self->_pendingProtoRequests;
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:request];
  LODWORD(pendingProtoRequests) = [(NSMutableSet *)pendingProtoRequests containsObject:v7];

  if (pendingProtoRequests)
  {
    if (!self->_pluginNameToStunReqID)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      pluginNameToStunReqID = self->_pluginNameToStunReqID;
      self->_pluginNameToStunReqID = Mutable;
    }

    v10 = nameCopy;
    if (v10)
    {
      CFDictionarySetValue(self->_pluginNameToStunReqID, [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:request], v10);
    }
  }
}

- (id)_pluginNameForProtoRequest:(unint64_t)request
{
  if (self->_pluginNameToStunReqID)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
    if (v5)
    {
      pluginNameToStunReqID = self->_pluginNameToStunReqID;
      v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:request];
      v8 = CFDictionaryGetValue(pluginNameToStunReqID, v7);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_removeProtoPluginRegistrationRequest:(unint64_t)request
{
  pluginNameToStunReqID = self->_pluginNameToStunReqID;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:request];
  [(NSMutableDictionary *)pluginNameToStunReqID removeObjectForKey:v4];
}

- (void)sendQUICInfoRequest
{
  v55 = *MEMORY[0x1E69E9840];
  if (self->_state < 5)
  {
    candidatePairToken6 = [[IDSQRProtoMessage alloc] initWithType:5 candidatePair:self options:0];
    if (candidatePairToken6)
    {
      v17 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        candidatePairToken = [(IDSStunCandidatePair *)self candidatePairToken];
        *buf = 138412546;
        v52 = candidatePairToken6;
        v53 = 2112;
        v54 = candidatePairToken;
        _os_log_impl(&dword_1A7AD9000, v17, OS_LOG_TYPE_DEFAULT, "send info request %@ for %@.", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          candidatePairToken2 = [(IDSStunCandidatePair *)self candidatePairToken];
          _IDSLogTransport(@"GL", @"IDS", @"send info request %@ for %@.", v19, v20, v21, v22, v23, candidatePairToken6);

          if (_IDSShouldLog(0))
          {
            candidatePairToken3 = [(IDSStunCandidatePair *)self candidatePairToken];
            _IDSLogV(0, @"IDSFoundation", @"GL", @"send info request %@ for %@.", v24, v25, v26, v27, candidatePairToken6);
          }
        }
      }

      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v29 = [WeakRetained sendProtoMessage:candidatePairToken6 candidatePair:self];

      transactionID = [(IDSQRProtoMessage *)candidatePairToken6 transactionID];
      [(IDSStunCandidatePair *)self addProtoRequest:transactionID];
      v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", transactionID];
      [(IDSStunCandidatePair *)self updateStunSentBytes:v29 requestID:v31];
      v47[0] = MEMORY[0x1E69E9820];
      v47[1] = 3221225472;
      v47[2] = sub_1A7C8455C;
      v47[3] = &unk_1E77E2780;
      v48 = v31;
      v49 = transactionID;
      v50 = 5;
      v47[4] = self;
      v32 = v31;
      IDSTransportThreadAddBlockAfter(v47, 10.0);
    }

    else
    {
      v33 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A7AD9000, v33, OS_LOG_TYPE_DEFAULT, "failed to create info request.", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"GL", @"IDS", @"failed to create info request.", v34, v35, v36, v37, v38, v43);
          if (_IDSShouldLog(0))
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"failed to create info request.", v39, v40, v41, v42, v44);
          }
        }
      }
    }

    goto LABEL_22;
  }

  v3 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    candidatePairToken4 = [(IDSStunCandidatePair *)self candidatePairToken];
    v5 = (&_IDSStunCandidatePairStateStrings)[self->_state];
    *buf = 138412546;
    v52 = candidatePairToken4;
    v53 = 2080;
    v54 = v5;
    _os_log_impl(&dword_1A7AD9000, v3, OS_LOG_TYPE_DEFAULT, "skip info request for %@, state [%s].", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      candidatePairToken5 = [(IDSStunCandidatePair *)self candidatePairToken];
      _IDSLogTransport(@"GL", @"IDS", @"skip info request for %@, state [%s].", v7, v8, v9, v10, v11, candidatePairToken5);

      if (_IDSShouldLog(0))
      {
        candidatePairToken6 = [(IDSStunCandidatePair *)self candidatePairToken];
        _IDSLogV(0, @"IDSFoundation", @"GL", @"skip info request for %@, state [%s].", v13, v14, v15, v16, candidatePairToken6);
LABEL_22:
      }
    }
  }
}

- (BOOL)sendQUICChannelConfigRequest:(id)request
{
  v56 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v5 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A7AD9000, v5, OS_LOG_TYPE_DEFAULT, "send sendQUICChannelConfigRequest", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"send sendQUICChannelConfigRequest", v6, v7, v8, v9, v10, v45);
      if (_IDSShouldLog(0))
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"send sendQUICChannelConfigRequest", v11, v12, v13, v14, v46);
      }
    }
  }

  v15 = self->_state - 3;
  if (v15 < 2)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v17 = [WeakRetained sendProtoMessage:requestCopy candidatePair:self];

    transactionID = [requestCopy transactionID];
    [(IDSStunCandidatePair *)self addProtoRequest:transactionID];
    candidatePairToken6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", transactionID];
    [(IDSStunCandidatePair *)self updateStunSentBytes:v17 requestID:candidatePairToken6];
    v20 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      candidatePairToken = [(IDSStunCandidatePair *)self candidatePairToken];
      *buf = 138412802;
      v51 = requestCopy;
      v52 = 2112;
      v53 = candidatePairToken;
      v54 = 2048;
      v55 = v17;
      _os_log_impl(&dword_1A7AD9000, v20, OS_LOG_TYPE_DEFAULT, "send ChannelConfig request %@ for %@, sentBytes: %lu", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        candidatePairToken2 = [(IDSStunCandidatePair *)self candidatePairToken];
        _IDSLogTransport(@"GL", @"IDS", @"send ChannelConfig request %@ for %@, sentBytes: %lu", v22, v23, v24, v25, v26, requestCopy);

        if (_IDSShouldLog(0))
        {
          candidatePairToken3 = [(IDSStunCandidatePair *)self candidatePairToken];
          _IDSLogV(0, @"IDSFoundation", @"GL", @"send ChannelConfig request %@ for %@, sentBytes: %lu", v27, v28, v29, v30, requestCopy);
        }
      }
    }

    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3221225472;
    v49[2] = sub_1A7C84BFC;
    v49[3] = &unk_1E77E2758;
    v49[4] = self;
    v49[5] = transactionID;
    IDSTransportThreadAddBlockAfter(v49, 10.0);
    goto LABEL_15;
  }

  v31 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    candidatePairToken4 = [(IDSStunCandidatePair *)self candidatePairToken];
    v33 = (&_IDSStunCandidatePairStateStrings)[self->_state];
    *buf = 138412546;
    v51 = candidatePairToken4;
    v52 = 2080;
    v53 = v33;
    _os_log_impl(&dword_1A7AD9000, v31, OS_LOG_TYPE_DEFAULT, "skip sendQUICChannelConfigRequest request for %@, state [%s].", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      candidatePairToken5 = [(IDSStunCandidatePair *)self candidatePairToken];
      _IDSLogTransport(@"GL", @"IDS", @"skip sendQUICChannelConfigRequest request for %@, state [%s].", v35, v36, v37, v38, v39, candidatePairToken5);

      if (_IDSShouldLog(0))
      {
        candidatePairToken6 = [(IDSStunCandidatePair *)self candidatePairToken];
        _IDSLogV(0, @"IDSFoundation", @"GL", @"skip sendQUICChannelConfigRequest request for %@, state [%s].", v40, v41, v42, v43, candidatePairToken6);
LABEL_15:
      }
    }
  }

  return v15 < 2;
}

- (void)sendQUICParticipantUpdateRequestWithOptions:(id)options
{
  v65 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  if (self->_state - 5 > 0xFFFFFFFFFFFFFFFDLL)
  {
    candidatePairToken6 = [[IDSQRProtoMessage alloc] initWithType:7 candidatePair:self options:optionsCopy];
    if (candidatePairToken6)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v20 = [WeakRetained sendProtoMessage:candidatePairToken6 candidatePair:self];

      transactionID = [(IDSQRProtoMessage *)candidatePairToken6 transactionID];
      [(IDSStunCandidatePair *)self addProtoRequest:transactionID];
      v22 = [optionsCopy objectForKeyedSubscript:@"gl-option-ids-client-context-identifier-key"];
      unsignedLongLongValue = [v22 unsignedLongLongValue];

      if (unsignedLongLongValue)
      {
        transactionIDToIdentifier = self->_transactionIDToIdentifier;
        if (!transactionIDToIdentifier)
        {
          Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          v26 = self->_transactionIDToIdentifier;
          self->_transactionIDToIdentifier = Mutable;

          transactionIDToIdentifier = self->_transactionIDToIdentifier;
        }

        v27 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:unsignedLongLongValue];
        v28 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:transactionID];
        [(NSMutableDictionary *)transactionIDToIdentifier setObject:v27 forKey:v28];
      }

      v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", transactionID];
      [(IDSStunCandidatePair *)self updateStunSentBytes:v20 requestID:v29];
      v30 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        candidatePairToken = [(IDSStunCandidatePair *)self candidatePairToken];
        *buf = 138412802;
        v60 = candidatePairToken6;
        v61 = 2112;
        v62 = candidatePairToken;
        v63 = 2048;
        v64 = v20;
        _os_log_impl(&dword_1A7AD9000, v30, OS_LOG_TYPE_DEFAULT, "send participant update request %@ for %@, sentBytes: %lu", buf, 0x20u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          candidatePairToken2 = [(IDSStunCandidatePair *)self candidatePairToken];
          _IDSLogTransport(@"GL", @"IDS", @"send participant update request %@ for %@, sentBytes: %lu", v32, v33, v34, v35, v36, candidatePairToken6);

          if (_IDSShouldLog(0))
          {
            candidatePairToken3 = [(IDSStunCandidatePair *)self candidatePairToken];
            _IDSLogV(0, @"IDSFoundation", @"GL", @"send participant update request %@ for %@, sentBytes: %lu", v37, v38, v39, v40, candidatePairToken6);
          }
        }
      }

      v55[0] = MEMORY[0x1E69E9820];
      v55[1] = 3221225472;
      v55[2] = sub_1A7C85330;
      v55[3] = &unk_1E77E2780;
      v55[4] = self;
      v57 = transactionID;
      v58 = 7;
      v56 = optionsCopy;
      IDSTransportThreadAddBlockAfter(v55, 10.0);
    }

    else
    {
      v41 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A7AD9000, v41, OS_LOG_TYPE_DEFAULT, "failed to create participant update request.", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"GL", @"IDS", @"failed to create participant update request.", v42, v43, v44, v45, v46, v51);
          if (_IDSShouldLog(0))
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"failed to create participant update request.", v47, v48, v49, v50, v52);
          }
        }
      }
    }

    goto LABEL_26;
  }

  v5 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    candidatePairToken4 = [(IDSStunCandidatePair *)self candidatePairToken];
    v7 = (&_IDSStunCandidatePairStateStrings)[self->_state];
    *buf = 138412546;
    v60 = candidatePairToken4;
    v61 = 2080;
    v62 = v7;
    _os_log_impl(&dword_1A7AD9000, v5, OS_LOG_TYPE_DEFAULT, "skip participant update request for %@, state [%s].", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      candidatePairToken5 = [(IDSStunCandidatePair *)self candidatePairToken];
      _IDSLogTransport(@"GL", @"IDS", @"skip participant update request for %@, state [%s].", v9, v10, v11, v12, v13, candidatePairToken5);

      if (_IDSShouldLog(0))
      {
        candidatePairToken6 = [(IDSStunCandidatePair *)self candidatePairToken];
        _IDSLogV(0, @"IDSFoundation", @"GL", @"skip participant update request for %@, state [%s].", v15, v16, v17, v18, candidatePairToken6);
LABEL_26:
      }
    }
  }
}

- (void)sendQUICPluginRegistrationRequestWithOptions:(id)options
{
  v62 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  if (self->_state < 5)
  {
    candidatePairToken6 = [[IDSQRProtoMessage alloc] initWithType:10 candidatePair:self options:optionsCopy];
    if (candidatePairToken6)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v20 = [WeakRetained sendProtoMessage:candidatePairToken6 candidatePair:self];

      transactionID = [(IDSQRProtoMessage *)candidatePairToken6 transactionID];
      [(IDSStunCandidatePair *)self addProtoRequest:transactionID];
      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", transactionID];
      [(IDSStunCandidatePair *)self updateStunSentBytes:v20 requestID:v22];
      Value = 0;
      if (optionsCopy && @"gl-option-plugin-operation")
      {
        Value = CFDictionaryGetValue(optionsCopy, @"gl-option-plugin-operation");
      }

      v24 = Value;
      v25 = [v24 isEqualToNumber:&unk_1F1B20330];
      v26 = @"Unregister";
      if (v25)
      {
        v26 = @"Register";
      }

      v27 = v26;
      v28 = 0;
      v29 = MEMORY[0x1E696AEC0];
      if (optionsCopy && @"gl-option-plugin-name")
      {
        v28 = CFDictionaryGetValue(optionsCopy, @"gl-option-plugin-name");
      }

      v30 = [v29 stringWithFormat:@"%@.%@", v28, v27];
      [(IDSStunCandidatePair *)self _savePluginNameForProtoRequest:transactionID pluginName:v30];
      v31 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        candidatePairToken = [(IDSStunCandidatePair *)self candidatePairToken];
        *buf = 138412546;
        v59 = candidatePairToken6;
        v60 = 2112;
        v61 = candidatePairToken;
        _os_log_impl(&dword_1A7AD9000, v31, OS_LOG_TYPE_DEFAULT, "send QR plugin registration request %@ for %@.", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          candidatePairToken2 = [(IDSStunCandidatePair *)self candidatePairToken];
          _IDSLogTransport(@"GL", @"IDS", @"send QR plugin registration request %@ for %@.", v33, v34, v35, v36, v37, candidatePairToken6);

          if (_IDSShouldLog(0))
          {
            candidatePairToken3 = [(IDSStunCandidatePair *)self candidatePairToken];
            _IDSLogV(0, @"IDSFoundation", @"GL", @"send QR plugin registration request %@ for %@.", v38, v39, v40, v41, candidatePairToken6);
          }
        }
      }

      v56[0] = MEMORY[0x1E69E9820];
      v56[1] = 3221225472;
      v56[2] = sub_1A7C85B28;
      v56[3] = &unk_1E77E27A8;
      v56[4] = self;
      v56[5] = transactionID;
      v57 = 10;
      IDSTransportThreadAddBlockAfter(v56, 10.0);
    }

    else
    {
      v42 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A7AD9000, v42, OS_LOG_TYPE_DEFAULT, "failed to create QR plugin registration request.", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"GL", @"IDS", @"failed to create QR plugin registration request.", v43, v44, v45, v46, v47, v52);
          if (_IDSShouldLog(0))
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"failed to create QR plugin registration request.", v48, v49, v50, v51, v53);
          }
        }
      }
    }

    goto LABEL_30;
  }

  v5 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    candidatePairToken4 = [(IDSStunCandidatePair *)self candidatePairToken];
    v7 = (&_IDSStunCandidatePairStateStrings)[self->_state];
    *buf = 138412546;
    v59 = candidatePairToken4;
    v60 = 2080;
    v61 = v7;
    _os_log_impl(&dword_1A7AD9000, v5, OS_LOG_TYPE_DEFAULT, "skip plugin registration request for %@, state [%s].", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      candidatePairToken5 = [(IDSStunCandidatePair *)self candidatePairToken];
      _IDSLogTransport(@"GL", @"IDS", @"skip plugin registration request for %@, state [%s].", v9, v10, v11, v12, v13, candidatePairToken5);

      if (_IDSShouldLog(0))
      {
        candidatePairToken6 = [(IDSStunCandidatePair *)self candidatePairToken];
        _IDSLogV(0, @"IDSFoundation", @"GL", @"skip plugin registration request for %@, state [%s].", v15, v16, v17, v18, candidatePairToken6);
LABEL_30:
      }
    }
  }
}

- (void)sendQUICSessionInfoRequestWithOptions:(id)options
{
  v69 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  if (self->_state - 5 > 0xFFFFFFFFFFFFFFFDLL)
  {
    candidatePairToken6 = [[IDSQRProtoMessage alloc] initWithType:15 candidatePair:self options:optionsCopy];
    if (candidatePairToken6)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v20 = [WeakRetained sendProtoMessage:candidatePairToken6 candidatePair:self];

      transactionID = [(IDSQRProtoMessage *)candidatePairToken6 transactionID];
      [(IDSStunCandidatePair *)self addProtoRequest:transactionID];
      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", transactionID];
      Value = 0;
      if (optionsCopy && @"gl-option-sessioninfo-link-id-to-query")
      {
        Value = CFDictionaryGetValue(optionsCopy, @"gl-option-sessioninfo-link-id-to-query");
      }

      intValue = [Value intValue];
      requestIDToQueryLinkIDs = self->_requestIDToQueryLinkIDs;
      if (!requestIDToQueryLinkIDs)
      {
        Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        v27 = self->_requestIDToQueryLinkIDs;
        self->_requestIDToQueryLinkIDs = Mutable;

        requestIDToQueryLinkIDs = self->_requestIDToQueryLinkIDs;
      }

      v28 = [MEMORY[0x1E696AD98] numberWithChar:intValue];
      [(NSMutableDictionary *)requestIDToQueryLinkIDs setObject:v28 forKey:v22];

      if (!self->_requestIDToSessionInfoReqType)
      {
        v29 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        requestIDToSessionInfoReqType = self->_requestIDToSessionInfoReqType;
        self->_requestIDToSessionInfoReqType = v29;
      }

      if (optionsCopy)
      {
        if (@"gl-option-sessioninfo-request-type")
        {
          v31 = CFDictionaryGetValue(optionsCopy, @"gl-option-sessioninfo-request-type");
          if (v31)
          {
            v32 = v31;
            CFDictionarySetValue(self->_requestIDToSessionInfoReqType, v22, v31);
          }
        }
      }

      [(IDSStunCandidatePair *)self updateStunSentBytes:v20 requestID:v22];
      v33 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        candidatePairToken = [(IDSStunCandidatePair *)self candidatePairToken];
        *buf = 138412802;
        v64 = candidatePairToken6;
        v65 = 2112;
        v66 = candidatePairToken;
        v67 = 2048;
        v68 = v20;
        _os_log_impl(&dword_1A7AD9000, v33, OS_LOG_TYPE_DEFAULT, "send session-info request %@ for %@, sentBytes: %lu", buf, 0x20u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          candidatePairToken2 = [(IDSStunCandidatePair *)self candidatePairToken];
          _IDSLogTransport(@"GL", @"IDS", @"send session-info request %@ for %@, sentBytes: %lu", v35, v36, v37, v38, v39, candidatePairToken6);

          if (_IDSShouldLog(0))
          {
            candidatePairToken3 = [(IDSStunCandidatePair *)self candidatePairToken];
            _IDSLogV(0, @"IDSFoundation", @"GL", @"send session-info request %@ for %@, sentBytes: %lu", v40, v41, v42, v43, candidatePairToken6);
          }
        }
      }

      v59[0] = MEMORY[0x1E69E9820];
      v59[1] = 3221225472;
      v59[2] = sub_1A7C862DC;
      v59[3] = &unk_1E77E2780;
      v60 = v22;
      v61 = transactionID;
      v62 = 15;
      v59[4] = self;
      v44 = v22;
      IDSTransportThreadAddBlockAfter(v59, 10.0);
    }

    else
    {
      v45 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A7AD9000, v45, OS_LOG_TYPE_DEFAULT, "failed to create session-info request.", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"GL", @"IDS", @"failed to create session-info request.", v46, v47, v48, v49, v50, v55);
          if (_IDSShouldLog(0))
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"failed to create session-info request.", v51, v52, v53, v54, v56);
          }
        }
      }
    }

    goto LABEL_33;
  }

  v5 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    candidatePairToken4 = [(IDSStunCandidatePair *)self candidatePairToken];
    v7 = (&_IDSStunCandidatePairStateStrings)[self->_state];
    *buf = 138412546;
    v64 = candidatePairToken4;
    v65 = 2080;
    v66 = v7;
    _os_log_impl(&dword_1A7AD9000, v5, OS_LOG_TYPE_DEFAULT, "skip session-info request for %@, state [%s].", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      candidatePairToken5 = [(IDSStunCandidatePair *)self candidatePairToken];
      _IDSLogTransport(@"GL", @"IDS", @"skip session-info request for %@, state [%s].", v9, v10, v11, v12, v13, candidatePairToken5);

      if (_IDSShouldLog(0))
      {
        candidatePairToken6 = [(IDSStunCandidatePair *)self candidatePairToken];
        _IDSLogV(0, @"IDSFoundation", @"GL", @"skip session-info request for %@, state [%s].", v15, v16, v17, v18, candidatePairToken6);
LABEL_33:
      }
    }
  }
}

- (void)sendQUICStatsRequestWithOptions:(id)options
{
  v85 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  if (self->_state - 5 > 0xFFFFFFFFFFFFFFFDLL)
  {
    candidatePairToken3 = [[IDSQRProtoMessage alloc] initWithType:18 candidatePair:self options:optionsCopy];
    if (candidatePairToken3)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v68 = [WeakRetained sendProtoMessage:candidatePairToken3 candidatePair:self];

      transactionID = [(IDSQRProtoMessage *)candidatePairToken3 transactionID];
      v20 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        linkID = self->_linkID;
        *buf = 134218240;
        v82 = transactionID;
        v83 = 1024;
        LODWORD(v84) = linkID;
        _os_log_impl(&dword_1A7AD9000, v20, OS_LOG_TYPE_DEFAULT, "send stats req %llx for link %d.", buf, 0x12u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"GL", @"IDS", @"send stats req %llx for link %d.", v22, v23, v24, v25, v26, transactionID);
          if (_IDSShouldLog(0))
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"send stats req %llx for link %d.", v27, v28, v29, v30, transactionID);
          }
        }
      }

      [(IDSStunCandidatePair *)self addProtoRequest:transactionID];
      v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", transactionID];
      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      v32 = self->_packetListeners;
      v33 = [(NSMutableSet *)v32 countByEnumeratingWithState:&v76 objects:v80 count:16];
      if (v33)
      {
        v34 = *v77;
        do
        {
          for (i = 0; i != v33; ++i)
          {
            if (*v77 != v34)
            {
              objc_enumerationMutation(v32);
            }

            [*(*(&v76 + 1) + 8 * i) didSendStatsRequestWithID:v31 linkID:-[IDSStunCandidatePair linkID](self completionHandler:{"linkID"), &unk_1F1AAB960}];
          }

          v33 = [(NSMutableSet *)v32 countByEnumeratingWithState:&v76 objects:v80 count:16];
        }

        while (v33);
      }

      Value = 0;
      if (optionsCopy && @"ids-extchannel-stat-identifier-key")
      {
        Value = CFDictionaryGetValue(optionsCopy, @"ids-extchannel-stat-identifier-key");
      }

      unsignedLongLongValue = [Value unsignedLongLongValue];
      v38 = 0;
      if (self->_requestIDToStatsIDs && v31)
      {
        v38 = CFDictionaryGetValue(self->_requestIDToStatsIDs, v31);
      }

      unsignedLongLongValue2 = [v38 unsignedLongLongValue];
      if (unsignedLongLongValue && unsignedLongLongValue != unsignedLongLongValue2)
      {
        if (!self->_requestIDToStatsIDs)
        {
          Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          requestIDToStatsIDs = self->_requestIDToStatsIDs;
          self->_requestIDToStatsIDs = Mutable;
        }

        v42 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:unsignedLongLongValue];
        if (v42)
        {
          CFDictionarySetValue(self->_requestIDToStatsIDs, v31, v42);
        }

        v43 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218242;
          v82 = unsignedLongLongValue;
          v83 = 2112;
          v84 = v31;
          _os_log_impl(&dword_1A7AD9000, v43, OS_LOG_TYPE_DEFAULT, "sendQUICStatsRequestWithOptions: add stats identifier %llu for %@.", buf, 0x16u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            _IDSLogTransport(@"GL", @"IDS", @"sendQUICStatsRequestWithOptions: add stats identifier %llu for %@.", v44, v45, v46, v47, v48, unsignedLongLongValue);
            if (_IDSShouldLog(0))
            {
              _IDSLogV(0, @"IDSFoundation", @"GL", @"sendQUICStatsRequestWithOptions: add stats identifier %llu for %@.", v49, v50, v51, v52, unsignedLongLongValue);
            }
          }
        }
      }

      [(IDSStunCandidatePair *)self updateStunSentBytes:v68 requestID:v31];
      v53 = self->_statsIntervalInSeconds >> 1;
      v70[0] = MEMORY[0x1E69E9820];
      v70[1] = 3221225472;
      v70[2] = sub_1A7C86BD4;
      v70[3] = &unk_1E77E27D0;
      v72 = transactionID;
      v73 = unsignedLongLongValue;
      v70[4] = self;
      v71 = v31;
      v75 = v53;
      v74 = 18;
      v54 = v53;
      v55 = v31;
      IDSTransportThreadAddBlockAfter(v70, v54);
    }

    else
    {
      v56 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A7AD9000, v56, OS_LOG_TYPE_DEFAULT, "failed to create stats request.", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"GL", @"IDS", @"failed to create stats request.", v57, v58, v59, v60, v61, v66);
          if (_IDSShouldLog(0))
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"failed to create stats request.", v62, v63, v64, v65, v67);
          }
        }
      }
    }

    goto LABEL_47;
  }

  v5 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    candidatePairToken = [(IDSStunCandidatePair *)self candidatePairToken];
    v7 = (&_IDSStunCandidatePairStateStrings)[self->_state];
    *buf = 138412546;
    v82 = candidatePairToken;
    v83 = 2080;
    v84 = v7;
    _os_log_impl(&dword_1A7AD9000, v5, OS_LOG_TYPE_DEFAULT, "skip stats request for %@, state [%s].", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      candidatePairToken2 = [(IDSStunCandidatePair *)self candidatePairToken];
      _IDSLogTransport(@"GL", @"IDS", @"skip stats request for %@, state [%s].", v9, v10, v11, v12, v13, candidatePairToken2);

      if (_IDSShouldLog(0))
      {
        candidatePairToken3 = [(IDSStunCandidatePair *)self candidatePairToken];
        _IDSLogV(0, @"IDSFoundation", @"GL", @"skip stats request for %@, state [%s].", v15, v16, v17, v18, candidatePairToken3);
LABEL_47:
      }
    }
  }
}

- (void)sendQUICTestRequest
{
  v74 = *MEMORY[0x1E69E9840];
  if (self->_state - 5 > 0xFFFFFFFFFFFFFFFDLL)
  {
    self->_testStartTime = 0.0;
    if (self->_testSubOperation)
    {
      v16 = MEMORY[0x1E695DF20];
      v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_testOptions];
      v56 = @"gl-option-test-options-flags";
      v60 = [v16 dictionaryWithObjectsAndKeys:v17];
    }

    else
    {
      v18 = self->_testRequestedErrorCode == 0;
      v19 = MEMORY[0x1E695DF20];
      v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_testOptions];
      if (v18)
      {
        v60 = [v19 dictionaryWithObject:v17 forKey:@"gl-option-test-options-flags"];
      }

      else
      {
        v20 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:self->_testRequestedMessageType];
        v58 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:self->_testRequestedErrorCode];
        v56 = @"gl-option-test-options-flags";
        v60 = [v19 dictionaryWithObjectsAndKeys:v17];
      }
    }

    v21 = [[IDSQRProtoMessage alloc] initWithType:20 candidatePair:self options:v60];
    if (v21)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v23 = [WeakRetained sendProtoMessage:v21 candidatePair:self];

      transactionID = [(IDSQRProtoMessage *)v21 transactionID];
      [(IDSStunCandidatePair *)self addProtoRequest:transactionID];
      v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", transactionID];
      [(IDSStunCandidatePair *)self updateStunSentBytes:v23 requestID:v25];
      v26 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        testOptions = self->_testOptions;
        testRequestedMessageType = self->_testRequestedMessageType;
        testRequestedErrorCode = self->_testRequestedErrorCode;
        testSubOperation = self->_testSubOperation;
        candidatePairToken = [(IDSStunCandidatePair *)self candidatePairToken];
        linkID = self->_linkID;
        *buf = 67110914;
        *v63 = testOptions;
        *&v63[4] = 1024;
        *&v63[6] = testRequestedMessageType;
        LOWORD(v64) = 1024;
        *(&v64 + 2) = testRequestedErrorCode;
        HIWORD(v64) = 2112;
        v65 = testSubOperation;
        v66 = 2112;
        v67 = v21;
        v68 = 2112;
        v69 = candidatePairToken;
        v70 = 2112;
        v71 = v25;
        v72 = 1024;
        v73 = linkID;
        _os_log_impl(&dword_1A7AD9000, v26, OS_LOG_TYPE_DEFAULT, "send test(0x%x,%u,%u,%@) request %@ for %@, %@ link: %d", buf, 0x42u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v33 = self->_testOptions;
          candidatePairToken2 = [(IDSStunCandidatePair *)self candidatePairToken];
          _IDSLogTransport(@"GL", @"IDS", @"send test(0x%x,%u,%u,%@) request %@ for %@, %@ link: %d", v35, v36, v37, v38, v39, v33);

          if (_IDSShouldLog(0))
          {
            v40 = self->_testOptions;
            candidatePairToken3 = [(IDSStunCandidatePair *)self candidatePairToken];
            _IDSLogV(0, @"IDSFoundation", @"GL", @"send test(0x%x,%u,%u,%@) request %@ for %@, %@ link: %d", v42, v43, v44, v45, v40);
          }
        }
      }

      v61[0] = MEMORY[0x1E69E9820];
      v61[1] = 3221225472;
      v61[2] = sub_1A7C8740C;
      v61[3] = &unk_1E77E2758;
      v61[4] = self;
      v61[5] = transactionID;
      IDSTransportThreadAddBlockAfter(v61, 10.0);
    }

    else
    {
      v46 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A7AD9000, v46, OS_LOG_TYPE_DEFAULT, "failed to create test request.", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"GL", @"IDS", @"failed to create test request.", v47, v48, v49, v50, v51, v56);
          if (_IDSShouldLog(0))
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"failed to create test request.", v52, v53, v54, v55, v57);
          }
        }
      }
    }
  }

  else
  {
    v3 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      candidatePairToken4 = [(IDSStunCandidatePair *)self candidatePairToken];
      v5 = (&_IDSStunCandidatePairStateStrings)[self->_state];
      *buf = 138412546;
      *v63 = candidatePairToken4;
      *&v63[8] = 2080;
      v64 = v5;
      _os_log_impl(&dword_1A7AD9000, v3, OS_LOG_TYPE_DEFAULT, "skip test request for %@, state [%s].", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      candidatePairToken5 = [(IDSStunCandidatePair *)self candidatePairToken];
      _IDSLogTransport(@"GL", @"IDS", @"skip test request for %@, state [%s].", v7, v8, v9, v10, v11, candidatePairToken5);

      if (_IDSShouldLog(0))
      {
        candidatePairToken6 = [(IDSStunCandidatePair *)self candidatePairToken];
        _IDSLogV(0, @"IDSFoundation", @"GL", @"skip test request for %@, state [%s].", v12, v13, v14, v15, candidatePairToken6);
      }
    }
  }
}

- (BOOL)processQUICInfoResponse:(id)response receivedBytes:(unint64_t)bytes
{
  v67 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  transactionID = [responseCopy transactionID];
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu"];
  if ([(IDSStunCandidatePair *)self removeProtoRequest:transactionID])
  {
    infoResponse = [responseCopy infoResponse];
    v9 = infoResponse;
    if (infoResponse)
    {
      clientAddress = [infoResponse clientAddress];
      v11 = clientAddress != 0;
      if (clientAddress)
      {
        v12 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v66 = clientAddress;
          _os_log_impl(&dword_1A7AD9000, v12, OS_LOG_TYPE_DEFAULT, "Got info response with client address [%@]", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            _IDSLogTransport(@"GL", @"IDS", @"Got info response with client address [%@]", v13, v14, v15, v16, v17, clientAddress);
            if (_IDSShouldLog(0))
            {
              _IDSLogV(0, @"IDSFoundation", @"GL", @"Got info response with client address [%@]", v18, v19, v20, v21, clientAddress);
            }
          }
        }

        v22 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          candidatePairToken = [(IDSStunCandidatePair *)self candidatePairToken];
          *buf = 138412290;
          v66 = candidatePairToken;
          _os_log_impl(&dword_1A7AD9000, v22, OS_LOG_TYPE_DEFAULT, "receive info-response for %@.", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            candidatePairToken2 = [(IDSStunCandidatePair *)self candidatePairToken];
            _IDSLogTransport(@"GL", @"IDS", @"receive info-response for %@.", v25, v26, v27, v28, v29, candidatePairToken2);

            if (_IDSShouldLog(0))
            {
              candidatePairToken3 = [(IDSStunCandidatePair *)self candidatePairToken];
              _IDSLogV(0, @"IDSFoundation", @"GL", @"receive info-response for %@.", v31, v32, v33, v34, candidatePairToken3);
            }
          }
        }

        v35 = ProtoUtilProcessActiveParticipantsFromInfo(v9);
        v36 = ProtoUtilProcessActiveLightweightParticipantsFromInfo(v9);
        BYTE4(v64) = 0;
        LODWORD(v64) = 0;
        LOWORD(v63) = 1;
        [IDSStunCandidatePair _notifySessionStreamInfoReceived:"_notifySessionStreamInfoReceived:withParticipants:lightweightParticipants:joinedParticipantInfo:leftParticipantInfo:updatedParticipantInfo:sentBytes:receivedBytes:offlineRequest:streamInfoRequest:status:commandFlag:isIndication:" withParticipants:0 lightweightParticipants:v35 joinedParticipantInfo:v36 leftParticipantInfo:0 updatedParticipantInfo:0 sentBytes:0 receivedBytes:[(IDSStunCandidatePair *)self getStunSentBytes:v7] offlineRequest:bytes streamInfoRequest:v63 status:v64 commandFlag:? isIndication:?];
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained disconnectIdleQUICConnectionForCandidatePair:self];

        v38 = objc_loadWeakRetained(&self->_delegate);
        [v38 candidatePairDidReceiveInfoResponse:self];
      }

      else
      {
        v49 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1A7AD9000, v49, OS_LOG_TYPE_DEFAULT, "processQUICInfoResponse failed due to invalid client address.", buf, 2u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            _IDSLogTransport(@"GL", @"IDS", @"processQUICInfoResponse failed due to invalid client address.", v50, v51, v52, v53, v54, transactionID);
            if (_IDSShouldLog(0))
            {
              _IDSLogV(0, @"IDSFoundation", @"GL", @"processQUICInfoResponse failed due to invalid client address.", v55, v56, v57, v58, v62);
            }
          }
        }
      }
    }

    else
    {
      v39 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A7AD9000, v39, OS_LOG_TYPE_DEFAULT, "processQUICInfoResponse failed due to invalid infoResponse.", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"GL", @"IDS", @"processQUICInfoResponse failed due to invalid infoResponse.", v40, v41, v42, v43, v44, transactionID);
          if (_IDSShouldLog(0))
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"processQUICInfoResponse failed due to invalid infoResponse.", v45, v46, v47, v48, v61);
          }
        }
      }

      v11 = 0;
    }
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (BOOL)processQUICParticipantUpdateResponse:(id)response
{
  v46 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  transactionID = [responseCopy transactionID];
  transactionIDToIdentifier = self->_transactionIDToIdentifier;
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:transactionID];
  v8 = [(NSMutableDictionary *)transactionIDToIdentifier objectForKey:v7];
  unsignedLongLongValue = [v8 unsignedLongLongValue];

  if ([(IDSStunCandidatePair *)self removeProtoRequest:transactionID])
  {
    participantUpdateResponse = [responseCopy participantUpdateResponse];
    v11 = participantUpdateResponse != 0;
    if (participantUpdateResponse)
    {
      v12 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        candidatePairToken = [(IDSStunCandidatePair *)self candidatePairToken];
        *buf = 134218242;
        v43 = transactionID;
        v44 = 2112;
        v45 = candidatePairToken;
        _os_log_impl(&dword_1A7AD9000, v12, OS_LOG_TYPE_DEFAULT, "receive participant update response %llu for %@.", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          candidatePairToken2 = [(IDSStunCandidatePair *)self candidatePairToken];
          _IDSLogTransport(@"GL", @"IDS", @"receive participant update response %llu for %@.", v14, v15, v16, v17, v18, transactionID);

          if (_IDSShouldLog(0))
          {
            candidatePairToken3 = [(IDSStunCandidatePair *)self candidatePairToken];
            _IDSLogV(0, @"IDSFoundation", @"GL", @"receive participant update response %llu for %@.", v19, v20, v21, v22, transactionID);
          }
        }
      }

      v23 = ProtoUtilProcessParticipantUpdate(participantUpdateResponse, 0, [responseCopy messageType]);
      v24 = [v23 mutableCopy];

      if (unsignedLongLongValue)
      {
        v25 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:unsignedLongLongValue];
        [v24 setObject:v25 forKeyedSubscript:@"ids-stun-attribute-client-context-identifier"];
      }

      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained candidatePair:self didReceiveParticipantUpdate:v24 status:0];
    }

    else
    {
      v27 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A7AD9000, v27, OS_LOG_TYPE_DEFAULT, "processQUICParticipantUpdateResponse failed due to invalid participantUpdateResponse.", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"GL", @"IDS", @"processQUICParticipantUpdateResponse failed due to invalid participantUpdateResponse.", v28, v29, v30, v31, v32, v38);
          if (_IDSShouldLog(0))
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"processQUICParticipantUpdateResponse failed due to invalid participantUpdateResponse.", v33, v34, v35, v36, v39);
          }
        }
      }
    }
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (BOOL)processQUICGetMaterialResponse:(id)response
{
  responseCopy = response;
  if (-[IDSStunCandidatePair removeProtoRequest:](self, "removeProtoRequest:", [responseCopy transactionID]))
  {
    getMaterialResponse = [responseCopy getMaterialResponse];
    v6 = getMaterialResponse != 0;
    if (getMaterialResponse)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained candidatePair:self didReceiveGetMaterialResponse:getMaterialResponse];
    }

    else
    {
      v8 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v19) = 0;
        _os_log_impl(&dword_1A7AD9000, v8, OS_LOG_TYPE_DEFAULT, "processQUICGetMaterialResponse failed due to invalid getMaterialResponse", &v19, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"GL", @"IDS", @"processQUICGetMaterialResponse failed due to invalid getMaterialResponse", v9, v10, v11, v12, v13, v19);
          if (_IDSShouldLog(0))
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"processQUICGetMaterialResponse failed due to invalid getMaterialResponse", v14, v15, v16, v17, v19);
          }
        }
      }
    }
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (BOOL)processQUICPutMaterialResponse:(id)response
{
  responseCopy = response;
  transactionID = [responseCopy transactionID];
  if ([(IDSStunCandidatePair *)self removeProtoRequest:transactionID])
  {
    putMaterialResponse = [responseCopy putMaterialResponse];
    v7 = putMaterialResponse != 0;
    if (putMaterialResponse)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained candidatePair:self didReceivePutMaterialResponse:putMaterialResponse forTxId:transactionID];
    }

    else
    {
      v9 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v20) = 0;
        _os_log_impl(&dword_1A7AD9000, v9, OS_LOG_TYPE_DEFAULT, "processQUICPutMaterialResponse failed due to invalid putMaterialResponse", &v20, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"GL", @"IDS", @"processQUICPutMaterialResponse failed due to invalid putMaterialResponse", v10, v11, v12, v13, v14, v20);
          if (_IDSShouldLog(0))
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"processQUICPutMaterialResponse failed due to invalid putMaterialResponse", v15, v16, v17, v18, v20);
          }
        }
      }
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (BOOL)processQUICChannelConfigResponse:(id)response
{
  responseCopy = response;
  if (-[IDSStunCandidatePair removeProtoRequest:](self, "removeProtoRequest:", [responseCopy transactionID]))
  {
    channelConfigResponse = [responseCopy channelConfigResponse];
    v6 = channelConfigResponse != 0;
    if (!channelConfigResponse)
    {
      v7 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v18) = 0;
        _os_log_impl(&dword_1A7AD9000, v7, OS_LOG_TYPE_DEFAULT, "processQUICChannelConfigResponse failed due to invalid ChannelConfigResponse", &v18, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"GL", @"IDS", @"processQUICChannelConfigResponse failed due to invalid ChannelConfigResponse", v8, v9, v10, v11, v12, v18);
          if (_IDSShouldLog(0))
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"processQUICChannelConfigResponse failed due to invalid ChannelConfigResponse", v13, v14, v15, v16, v18);
          }
        }
      }
    }
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (BOOL)processQUICCallModeUpdateResponse:(id)response
{
  responseCopy = response;
  if (-[IDSStunCandidatePair removeProtoRequest:](self, "removeProtoRequest:", [responseCopy transactionID]))
  {
    callModeUpdateResponse = [responseCopy callModeUpdateResponse];
    v6 = callModeUpdateResponse != 0;
    if (!callModeUpdateResponse)
    {
      v7 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v18) = 0;
        _os_log_impl(&dword_1A7AD9000, v7, OS_LOG_TYPE_DEFAULT, "processQUICCallModeUpdateResponse failed due to invalid CallModeUpdateResponse", &v18, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"GL", @"IDS", @"processQUICCallModeUpdateResponse failed due to invalid CallModeUpdateResponse", v8, v9, v10, v11, v12, v18);
          if (_IDSShouldLog(0))
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"processQUICCallModeUpdateResponse failed due to invalid CallModeUpdateResponse", v13, v14, v15, v16, v18);
          }
        }
      }
    }
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (BOOL)processQUICPluginRegistrationResponse:(id)response
{
  v58 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  transactionID = [responseCopy transactionID];
  if ([(IDSStunCandidatePair *)self removeProtoRequest:transactionID])
  {
    pluginControlResponse = [responseCopy pluginControlResponse];
    v7 = pluginControlResponse != 0;
    if (pluginControlResponse)
    {
      v8 = [(IDSStunCandidatePair *)self _pluginNameForProtoRequest:transactionID];
      if (v8)
      {
        [(IDSStunCandidatePair *)self _removeProtoPluginRegistrationRequest:transactionID];
      }

      pathExtension = [v8 pathExtension];
      v10 = [pathExtension isEqualToString:@"Register"];
      if (v10 & 1) != 0 || ([pathExtension isEqualToString:@"Unregister"])
      {
        pluginParticipantId = [pluginControlResponse pluginParticipantId];
        v12 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          candidatePairToken = [(IDSStunCandidatePair *)self candidatePairToken];
          *buf = 138412802;
          v53 = candidatePairToken;
          v54 = 2048;
          v55 = pluginParticipantId;
          v56 = 2112;
          v57 = v8;
          _os_log_impl(&dword_1A7AD9000, v12, OS_LOG_TYPE_DEFAULT, "receive plugin update for %@, with participant id: %llu, and name %@", buf, 0x20u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            candidatePairToken2 = [(IDSStunCandidatePair *)self candidatePairToken];
            _IDSLogTransport(@"GL", @"IDS", @"receive plugin update for %@, with participant id: %llu, and name %@", v15, v16, v17, v18, v19, candidatePairToken2);

            if (_IDSShouldLog(0))
            {
              candidatePairToken3 = [(IDSStunCandidatePair *)self candidatePairToken];
              _IDSLogV(0, @"IDSFoundation", @"GL", @"receive plugin update for %@, with participant id: %llu, and name %@", v21, v22, v23, v24, candidatePairToken3);
            }
          }
        }

        stringByDeletingPathExtension = [v8 stringByDeletingPathExtension];
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        v27 = WeakRetained;
        if (v10)
        {
          [WeakRetained candidatePair:self didReceivePluginRegistration:pluginParticipantId pluginName:stringByDeletingPathExtension];
        }

        else
        {
          [WeakRetained candidatePair:self didReceivePluginUnregistration:pluginParticipantId pluginName:stringByDeletingPathExtension];
        }
      }

      else
      {
        v39 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1A7AD9000, v39, OS_LOG_TYPE_DEFAULT, "invalid plugin operation - ignoring this response", buf, 2u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            _IDSLogTransport(@"GL", @"IDS", @"invalid plugin operation - ignoring this response", v40, v41, v42, v43, v44, v49);
            if (_IDSShouldLog(0))
            {
              _IDSLogV(0, @"IDSFoundation", @"GL", @"invalid plugin operation - ignoring this response", v45, v46, v47, v48, v51);
            }
          }
        }
      }
    }

    else
    {
      v28 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A7AD9000, v28, OS_LOG_TYPE_DEFAULT, "processQUICPluginRegistrationResponse failed due to invalid pluginControlResponse.", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"GL", @"IDS", @"processQUICPluginRegistrationResponse failed due to invalid pluginControlResponse.", v29, v30, v31, v32, v33, v49);
          if (_IDSShouldLog(0))
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"processQUICPluginRegistrationResponse failed due to invalid pluginControlResponse.", v34, v35, v36, v37, v50);
          }
        }
      }
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (BOOL)processQUICSessionInfoResponse:(id)response receivedBytes:(unint64_t)bytes isLightweightParticipant:(BOOL)participant
{
  v60 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  transactionID = [responseCopy transactionID];
  key = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu"];
  if ([(IDSStunCandidatePair *)self removeProtoRequest:transactionID])
  {
    sessionInfoResponse = [responseCopy sessionInfoResponse];
    v54 = sessionInfoResponse != 0;
    if (sessionInfoResponse)
    {
      v10 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        candidatePairToken = [(IDSStunCandidatePair *)self candidatePairToken];
        *buf = 134218242;
        v57 = transactionID;
        v58 = 2112;
        v59 = candidatePairToken;
        _os_log_impl(&dword_1A7AD9000, v10, OS_LOG_TYPE_DEFAULT, "receive session-info response %llu for %@.", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          candidatePairToken2 = [(IDSStunCandidatePair *)self candidatePairToken];
          _IDSLogTransport(@"GL", @"IDS", @"receive session-info response %llu for %@.", v12, v13, v14, v15, v16, transactionID);

          if (_IDSShouldLog(0))
          {
            candidatePairToken3 = [(IDSStunCandidatePair *)self candidatePairToken];
            _IDSLogV(0, @"IDSFoundation", @"GL", @"receive session-info response %llu for %@.", v17, v18, v19, v20, transactionID);
          }
        }
      }

      Value = 0;
      if (self->_requestIDToQueryLinkIDs && key)
      {
        Value = CFDictionaryGetValue(self->_requestIDToQueryLinkIDs, key);
      }

      v22 = ProtoUtilProcessStreamInfo(sessionInfoResponse, self->_linkID, [Value intValue]);
      v23 = 0;
      if (v22 && @"stream-info-peer-published-streams")
      {
        v23 = CFDictionaryGetValue(v22, @"stream-info-peer-published-streams");
      }

      v24 = StunUtilProcessParticipants(v23, self->_participantID, participant);
      v25 = ProtoUtilProcessLightweightParticipants(sessionInfoResponse);
      leftParticipants = [sessionInfoResponse leftParticipants];
      v52 = ProtoUtilProcessLeftParticipants(leftParticipants, v24, v25);

      joinedParticipants = [sessionInfoResponse joinedParticipants];
      v28 = ProtoUtilProcessjoinedParticipants(joinedParticipants, v24, v25);

      updatedParticipants = [sessionInfoResponse updatedParticipants];
      v30 = ProtoUtilProcessUpdatedParticipants(updatedParticipants, v24, v25);

      v31 = [(IDSStunCandidatePair *)self getStunSentBytes:key];
      requestIDToSessionInfoReqType = self->_requestIDToSessionInfoReqType;
      if (requestIDToSessionInfoReqType != 0 && key != 0)
      {
        v33 = CFDictionaryGetValue(requestIDToSessionInfoReqType, key);
      }

      else
      {
        v33 = 0;
      }

      intValue = [v33 intValue];
      hasCommandFlags = [sessionInfoResponse hasCommandFlags];
      if (hasCommandFlags)
      {
        hasCommandFlags = [sessionInfoResponse commandFlags];
      }

      BYTE4(v51) = 0;
      LODWORD(v51) = hasCommandFlags;
      BYTE1(v50) = intValue == 2;
      LOBYTE(v50) = 0;
      [IDSStunCandidatePair _notifySessionStreamInfoReceived:"_notifySessionStreamInfoReceived:withParticipants:lightweightParticipants:joinedParticipantInfo:leftParticipantInfo:updatedParticipantInfo:sentBytes:receivedBytes:offlineRequest:streamInfoRequest:status:commandFlag:isIndication:" withParticipants:v22 lightweightParticipants:v24 joinedParticipantInfo:v25 leftParticipantInfo:v28 updatedParticipantInfo:v52 sentBytes:v30 receivedBytes:v31 offlineRequest:bytes streamInfoRequest:v50 status:v51 commandFlag:? isIndication:?];
    }

    else
    {
      v34 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A7AD9000, v34, OS_LOG_TYPE_DEFAULT, "processQUICSessionInfoResponse failed due to invalid sessionInfoResponse.", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"GL", @"IDS", @"processQUICSessionInfoResponse failed due to invalid sessionInfoResponse.", v35, v36, v37, v38, v39, transactionID);
          if (_IDSShouldLog(0))
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"processQUICSessionInfoResponse failed due to invalid sessionInfoResponse.", v40, v41, v42, v43, v47);
          }
        }
      }
    }
  }

  else
  {
    v54 = 1;
  }

  return v54;
}

- (BOOL)processQUICStatsResponse:(id)response arrivalTime:(double)time
{
  v84 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  transactionID = [responseCopy transactionID];
  if ([(IDSStunCandidatePair *)self removeProtoRequest:transactionID])
  {
    statsResponse = [responseCopy statsResponse];
    v9 = statsResponse;
    v70 = statsResponse != 0;
    if (statsResponse)
    {
      clientTimestampNtp = [statsResponse clientTimestampNtp];
      v11 = ntpTime32(time);
      v12 = vcvtd_n_f64_u32((v11 - clientTimestampNtp), 0x10uLL) + ((v11 - clientTimestampNtp) >> 16);
      serverLatency = self->_serverLatency;
      if (serverLatency == 0.0)
      {
        v14 = v12;
      }

      else
      {
        v14 = v12 * 0.1 + serverLatency * 0.9;
      }

      self->_serverLatency = v14;
      v69 = (v12 * 1000.0);
      v15 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = (self->_serverLatency * 1000.0);
        linkID = self->_linkID;
        *buf = 134218752;
        v77 = transactionID;
        v78 = 1024;
        v79 = linkID;
        v80 = 1024;
        v81 = v69;
        v82 = 1024;
        v83 = v16;
        _os_log_impl(&dword_1A7AD9000, v15, OS_LOG_TYPE_DEFAULT, "processQUICStatsResponse: recv stats resp %llu (link: %2d rtt: %5d ms mean: %5d ms).", buf, 0x1Eu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v68 = (self->_serverLatency * 1000.0);
          v66 = self->_linkID;
          v67 = v69;
          _IDSLogTransport(@"GL", @"IDS", @"processQUICStatsResponse: recv stats resp %llu (link: %2d rtt: %5d ms mean: %5d ms).", v18, v19, v20, v21, v22, transactionID);
          if (_IDSShouldLog(0))
          {
            v68 = (self->_serverLatency * 1000.0);
            v66 = self->_linkID;
            v67 = v69;
            _IDSLogV(0, @"IDSFoundation", @"GL", @"processQUICStatsResponse: recv stats resp %llu (link: %2d rtt: %5d ms mean: %5d ms).", v23, v24, v25, v26, transactionID);
          }
        }
      }

      v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", transactionID, v66, v67, v68];
      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      v28 = self->_packetListeners;
      v29 = [(NSMutableSet *)v28 countByEnumeratingWithState:&v71 objects:v75 count:16];
      if (v29)
      {
        v30 = *v72;
        do
        {
          for (i = 0; i != v29; ++i)
          {
            if (*v72 != v30)
            {
              objc_enumerationMutation(v28);
            }

            [*(*(&v71 + 1) + 8 * i) didReceiveStatsResponseWithID:v27 linkID:-[IDSStunCandidatePair linkID](self completionHandler:{"linkID"), &unk_1F1AAB980}];
          }

          v29 = [(NSMutableSet *)v28 countByEnumeratingWithState:&v71 objects:v75 count:16];
        }

        while (v29);
      }

      requestIDToStatsIDs = self->_requestIDToStatsIDs;
      if (requestIDToStatsIDs)
      {
        if (v27)
        {
          v33 = CFDictionaryGetValue(requestIDToStatsIDs, v27);
          if (v33)
          {
            v34 = v33;
            v35 = objc_alloc_init(MEMORY[0x1E695DF90]);
            CFDictionarySetValue(v35, @"gl-option-stats-identifier", v34);
            v36 = [MEMORY[0x1E696AD98] numberWithChar:self->_linkID];
            if (v36)
            {
              CFDictionarySetValue(v35, @"gl-option-linkid", v36);
            }

            else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              sub_1A7E1F6CC();
            }

            v47 = [MEMORY[0x1E696AD98] numberWithInt:v69];
            if (v47)
            {
              CFDictionarySetValue(v35, @"gl-option-stats-server-timestamp", v47);
            }

            else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              sub_1A7E1F754();
            }

            v48 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
            {
              unsignedLongLongValue = [v34 unsignedLongLongValue];
              v50 = self->_linkID;
              *buf = 134218496;
              v77 = unsignedLongLongValue;
              v78 = 1024;
              v79 = v50;
              v80 = 1024;
              v81 = v69;
              _os_log_impl(&dword_1A7AD9000, v48, OS_LOG_TYPE_DEFAULT, "processQUICStatsResponse: statsIdentifier: %llu, linkID: %d, rtt: %d ms", buf, 0x18u);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              if (_IDSShouldLogTransport())
              {
                unsignedLongLongValue2 = [v34 unsignedLongLongValue];
                _IDSLogTransport(@"GL", @"IDS", @"processQUICStatsResponse: statsIdentifier: %llu, linkID: %d, rtt: %d ms", v52, v53, v54, v55, v56, unsignedLongLongValue2);
                if (_IDSShouldLog(0))
                {
                  unsignedLongLongValue3 = [v34 unsignedLongLongValue];
                  _IDSLogV(0, @"IDSFoundation", @"GL", @"processQUICStatsResponse: statsIdentifier: %llu, linkID: %d, rtt: %d ms", v58, v59, v60, v61, unsignedLongLongValue3);
                }
              }
            }

            WeakRetained = objc_loadWeakRetained(&self->_delegate);
            [WeakRetained candidatePair:self didReceiveSessionStats:v35 success:1];

            [(NSMutableDictionary *)self->_requestIDToStatsIDs removeObjectForKey:v27];
          }
        }
      }
    }

    else
    {
      v37 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A7AD9000, v37, OS_LOG_TYPE_DEFAULT, "invalid stats resp received", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"GL", @"IDS", @"invalid stats resp received", v38, v39, v40, v41, v42, v64);
          if (_IDSShouldLog(0))
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"invalid stats resp received", v43, v44, v45, v46, v65);
          }
        }
      }
    }
  }

  else
  {
    v70 = 1;
  }

  return v70;
}

- (BOOL)processQUICTestResponse:(id)response arrivalTime:(double)time
{
  v22 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  if (-[IDSStunCandidatePair removeProtoRequest:](self, "removeProtoRequest:", [responseCopy transactionID]))
  {
    v6 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      candidatePairToken = [(IDSStunCandidatePair *)self candidatePairToken];
      *buf = 138412290;
      v21 = candidatePairToken;
      _os_log_impl(&dword_1A7AD9000, v6, OS_LOG_TYPE_DEFAULT, "receive test response for %@.", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        candidatePairToken2 = [(IDSStunCandidatePair *)self candidatePairToken];
        _IDSLogTransport(@"GL", @"IDS", @"receive test response for %@.", v9, v10, v11, v12, v13, candidatePairToken2);

        if (_IDSShouldLog(0))
        {
          candidatePairToken3 = [(IDSStunCandidatePair *)self candidatePairToken];
          _IDSLogV(0, @"IDSFoundation", @"GL", @"receive test response for %@.", v15, v16, v17, v18, candidatePairToken3);
        }
      }
    }
  }

  return 1;
}

- (BOOL)processQUICParticipantUpdateIndication:(id)indication
{
  v41 = *MEMORY[0x1E69E9840];
  indicationCopy = indication;
  participantUpdateIndication = [indicationCopy participantUpdateIndication];
  v6 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    txnId = [participantUpdateIndication txnId];
    candidatePairToken = [(IDSStunCandidatePair *)self candidatePairToken];
    *buf = 134218242;
    v38 = txnId;
    v39 = 2112;
    v40 = candidatePairToken;
    _os_log_impl(&dword_1A7AD9000, v6, OS_LOG_TYPE_DEFAULT, "receive participant update indication(%llu) for %@.", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      txnId2 = [participantUpdateIndication txnId];
      candidatePairToken2 = [(IDSStunCandidatePair *)self candidatePairToken];
      _IDSLogTransport(@"GL", @"IDS", @"receive participant update indication(%llu) for %@.", v10, v11, v12, v13, v14, txnId2);

      if (_IDSShouldLog(0))
      {
        txnId3 = [participantUpdateIndication txnId];
        candidatePairToken3 = [(IDSStunCandidatePair *)self candidatePairToken];
        _IDSLogV(0, @"IDSFoundation", @"GL", @"receive participant update indication(%llu) for %@.", v16, v17, v18, v19, txnId3);
      }
    }
  }

  if (participantUpdateIndication)
  {
    v20 = ProtoUtilProcessParticipantUpdate(participantUpdateIndication, 0, [indicationCopy messageType]);
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained candidatePair:self didReceiveParticipantUpdate:v20 status:0];
  }

  else
  {
    v22 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v22, OS_LOG_TYPE_DEFAULT, "processQUICParticipantUpdateIndication failed due to invalid participantUpdateIndication.", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"processQUICParticipantUpdateIndication failed due to invalid participantUpdateIndication.", v23, v24, v25, v26, v27, v33);
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"processQUICParticipantUpdateIndication failed due to invalid participantUpdateIndication.", v28, v29, v30, v31, v34);
        }
      }
    }
  }

  return participantUpdateIndication != 0;
}

- (BOOL)processQUICPluginControlIndication:(id)indication
{
  v47 = *MEMORY[0x1E69E9840];
  indicationCopy = indication;
  pluginControlIndication = [indicationCopy pluginControlIndication];
  v6 = pluginControlIndication;
  if (pluginControlIndication)
  {
    pluginParticipantId = [pluginControlIndication pluginParticipantId];
    pluginOperation = [v6 pluginOperation];
    v9 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      txnId = [v6 txnId];
      candidatePairToken = [(IDSStunCandidatePair *)self candidatePairToken];
      *buf = 134218754;
      v40 = txnId;
      v41 = 2112;
      v42 = candidatePairToken;
      v43 = 2048;
      v44 = pluginParticipantId;
      v45 = 1024;
      v46 = pluginOperation;
      _os_log_impl(&dword_1A7AD9000, v9, OS_LOG_TYPE_DEFAULT, "receive plugin event(%llu) for %@, with participant id: %llu, operation %u", buf, 0x26u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        txnId2 = [v6 txnId];
        candidatePairToken2 = [(IDSStunCandidatePair *)self candidatePairToken];
        _IDSLogTransport(@"GL", @"IDS", @"receive plugin event(%llu) for %@, with participant id: %llu, operation %u", v13, v14, v15, v16, v17, txnId2);

        if (_IDSShouldLog(0))
        {
          txnId3 = [v6 txnId];
          candidatePairToken3 = [(IDSStunCandidatePair *)self candidatePairToken];
          _IDSLogV(0, @"IDSFoundation", @"GL", @"receive plugin event(%llu) for %@, with participant id: %llu, operation %u", v19, v20, v21, v22, txnId3);
        }
      }
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained candidatePair:self didReceivePluginControlEvent:pluginParticipantId operation:pluginOperation transactionID:0];
  }

  else
  {
    v24 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v24, OS_LOG_TYPE_DEFAULT, "processQUICPluginControlIndication failed due to invalid pluginControlIndication.", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"processQUICPluginControlIndication failed due to invalid pluginControlIndication.", v25, v26, v27, v28, v29, v35);
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"processQUICPluginControlIndication failed due to invalid pluginControlIndication.", v30, v31, v32, v33, v36);
        }
      }
    }
  }

  return v6 != 0;
}

- (BOOL)processQUICSessionInfoIndication:(id)indication arrivalTime:(double)time isLightweightParticipant:(BOOL)participant
{
  v54 = *MEMORY[0x1E69E9840];
  indicationCopy = indication;
  sessionInfoIndication = [indicationCopy sessionInfoIndication];
  v9 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    txnId = [sessionInfoIndication txnId];
    candidatePairToken = [(IDSStunCandidatePair *)self candidatePairToken];
    *buf = 134218242;
    v51 = txnId;
    v52 = 2112;
    v53 = candidatePairToken;
    _os_log_impl(&dword_1A7AD9000, v9, OS_LOG_TYPE_DEFAULT, "receive session-info indication(%llu) for %@.", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      txnId2 = [sessionInfoIndication txnId];
      candidatePairToken2 = [(IDSStunCandidatePair *)self candidatePairToken];
      _IDSLogTransport(@"GL", @"IDS", @"receive session-info indication(%llu) for %@.", v13, v14, v15, v16, v17, txnId2);

      if (_IDSShouldLog(0))
      {
        txnId3 = [sessionInfoIndication txnId];
        candidatePairToken3 = [(IDSStunCandidatePair *)self candidatePairToken];
        _IDSLogV(0, @"IDSFoundation", @"GL", @"receive session-info indication(%llu) for %@.", v19, v20, v21, v22, txnId3);
      }
    }
  }

  if (sessionInfoIndication)
  {
    v23 = ProtoUtilProcessStreamInfo(sessionInfoIndication, self->_linkID, self->_linkID);
    Value = 0;
    if (v23 && @"stream-info-peer-published-streams")
    {
      Value = CFDictionaryGetValue(v23, @"stream-info-peer-published-streams");
    }

    v25 = StunUtilProcessParticipants(Value, self->_participantID, participant);
    v26 = ProtoUtilProcessLightweightParticipants(sessionInfoIndication);
    leftParticipants = [sessionInfoIndication leftParticipants];
    v28 = ProtoUtilProcessLeftParticipants(leftParticipants, v25, v26);

    joinedParticipants = [sessionInfoIndication joinedParticipants];
    v30 = ProtoUtilProcessjoinedParticipants(joinedParticipants, v25, v26);

    updatedParticipants = [sessionInfoIndication updatedParticipants];
    v32 = ProtoUtilProcessUpdatedParticipants(updatedParticipants, v25, v26);

    BYTE4(v49) = 1;
    LODWORD(v49) = 0;
    LOWORD(v48) = 0;
    [IDSStunCandidatePair _notifySessionStreamInfoReceived:"_notifySessionStreamInfoReceived:withParticipants:lightweightParticipants:joinedParticipantInfo:leftParticipantInfo:updatedParticipantInfo:sentBytes:receivedBytes:offlineRequest:streamInfoRequest:status:commandFlag:isIndication:" withParticipants:v23 lightweightParticipants:v25 joinedParticipantInfo:v26 leftParticipantInfo:v30 updatedParticipantInfo:v28 sentBytes:v32 receivedBytes:0 offlineRequest:0 streamInfoRequest:v48 status:v49 commandFlag:? isIndication:?];
  }

  else
  {
    v33 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v33, OS_LOG_TYPE_DEFAULT, "processQUICSessionInfoIndication failed due to invalid sessionInfoIndication.", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"processQUICSessionInfoIndication failed due to invalid sessionInfoIndication.", v34, v35, v36, v37, v38, v44);
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"processQUICSessionInfoIndication failed due to invalid sessionInfoIndication.", v39, v40, v41, v42, v45);
        }
      }
    }
  }

  return sessionInfoIndication != 0;
}

- (BOOL)processQUICPutMaterialIndication:(id)indication
{
  v40 = *MEMORY[0x1E69E9840];
  indicationCopy = indication;
  putMaterialIndication = [indicationCopy putMaterialIndication];
  v6 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    txnId = [putMaterialIndication txnId];
    candidatePairToken = [(IDSStunCandidatePair *)self candidatePairToken];
    *buf = 134218242;
    v37 = txnId;
    v38 = 2112;
    v39 = candidatePairToken;
    _os_log_impl(&dword_1A7AD9000, v6, OS_LOG_TYPE_DEFAULT, "receive put material indication(%llu) for %@.", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      txnId2 = [putMaterialIndication txnId];
      candidatePairToken2 = [(IDSStunCandidatePair *)self candidatePairToken];
      _IDSLogTransport(@"GL", @"IDS", @"receive put material indication(%llu) for %@.", v10, v11, v12, v13, v14, txnId2);

      if (_IDSShouldLog(0))
      {
        txnId3 = [putMaterialIndication txnId];
        candidatePairToken3 = [(IDSStunCandidatePair *)self candidatePairToken];
        _IDSLogV(0, @"IDSFoundation", @"GL", @"receive put material indication(%llu) for %@.", v16, v17, v18, v19, txnId3);
      }
    }
  }

  if (putMaterialIndication)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained candidatePair:self didReceivePutMaterialIndication:putMaterialIndication];
  }

  else
  {
    v21 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v21, OS_LOG_TYPE_DEFAULT, "processQUICPutMaterialIndication failed due to invalid putMaterialIndication.", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"processQUICPutMaterialIndication failed due to invalid putMaterialIndication.", v22, v23, v24, v25, v26, v32);
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"processQUICPutMaterialIndication failed due to invalid putMaterialIndication.", v27, v28, v29, v30, v33);
        }
      }
    }
  }

  return putMaterialIndication != 0;
}

- (BOOL)processQUICErrorIndication:(id)indication
{
  v104 = *MEMORY[0x1E69E9840];
  indicationCopy = indication;
  errorIndication = [indicationCopy errorIndication];
  v6 = errorIndication;
  if (errorIndication)
  {
    errorCode = [errorIndication errorCode];
    v8 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      txnId = [v6 txnId];
      candidatePairToken = [(IDSStunCandidatePair *)self candidatePairToken];
      errorReason = [v6 errorReason];
      channelId = [v6 channelId];
      clientAddress = [v6 clientAddress];
      *buf = 134219266;
      v93 = txnId;
      v94 = 2112;
      v95 = candidatePairToken;
      v96 = 1024;
      v97 = errorCode;
      v98 = 2112;
      v99 = errorReason;
      v100 = 1024;
      v101 = channelId;
      v102 = 2112;
      v103 = clientAddress;
      _os_log_impl(&dword_1A7AD9000, v8, OS_LOG_TYPE_DEFAULT, "receive QUIC error indication(%llu) for %@, error_code(%u) reason(%@) channel_id(%u) client address(%@)", buf, 0x36u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        txnId2 = [v6 txnId];
        candidatePairToken2 = [(IDSStunCandidatePair *)self candidatePairToken];
        errorReason2 = [v6 errorReason];
        [v6 channelId];
        clientAddress2 = [v6 clientAddress];
        _IDSLogTransport(@"GL", @"IDS", @"receive QUIC error indication(%llu) for %@, error_code(%u) reason(%@) channel_id(%u) client address(%@)", v17, v18, v19, v20, v21, txnId2);

        if (_IDSShouldLog(0))
        {
          txnId3 = [v6 txnId];
          candidatePairToken3 = [(IDSStunCandidatePair *)self candidatePairToken];
          errorReason3 = [v6 errorReason];
          [v6 channelId];
          clientAddress3 = [v6 clientAddress];
          _IDSLogV(0, @"IDSFoundation", @"GL", @"receive QUIC error indication(%llu) for %@, error_code(%u) reason(%@) channel_id(%u) client address(%@)", v25, v26, v27, v28, txnId3);
        }
      }
    }

    if (errorCode <= 0x261u)
    {
      if (errorCode == 603)
      {
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        v68 = objc_opt_respondsToSelector();

        if (v68)
        {
          v69 = objc_loadWeakRetained(&self->_delegate);
          [v69 receiveBlockedIndicationWithReason:44];
        }

        goto LABEL_51;
      }

      if (errorCode == 608)
      {
        if (self->_state > 2)
        {
          v84 = objc_loadWeakRetained(&self->_delegate);
          v85 = objc_opt_respondsToSelector();

          if (v85)
          {
            v86 = objc_loadWeakRetained(&self->_delegate);
            [v86 receiveBlockedIndicationWithReason:49];
          }
        }

        else
        {
          v50 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
          {
            v51 = (&_IDSStunCandidatePairStateStrings)[self->_state];
            *buf = 136315138;
            v93 = v51;
            _os_log_impl(&dword_1A7AD9000, v50, OS_LOG_TYPE_DEFAULT, "processQUICErrorIndication: Ignoring PARTICIPANT_MISSKEY_REMOVE, state: %s", buf, 0xCu);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            if (_IDSShouldLogTransport())
            {
              _IDSLogTransport(@"GL", @"IDS", @"processQUICErrorIndication: Ignoring PARTICIPANT_MISSKEY_REMOVE, state: %s", v52, v53, v54, v55, v56, (&_IDSStunCandidatePairStateStrings)[self->_state]);
              if (_IDSShouldLog(0))
              {
                _IDSLogV(0, @"IDSFoundation", @"GL", @"processQUICErrorIndication: Ignoring PARTICIPANT_MISSKEY_REMOVE, state: %s", v57, v58, v59, v60, (&_IDSStunCandidatePairStateStrings)[self->_state]);
              }
            }
          }
        }

        goto LABEL_51;
      }
    }

    else
    {
      switch(errorCode)
      {
        case 0x262u:
          v61 = objc_loadWeakRetained(&self->_delegate);
          v62 = objc_opt_respondsToSelector();

          if (v62)
          {
            v63 = objc_loadWeakRetained(&self->_delegate);
            [v63 receiveErrorIndicationWithCode:1];
          }

          goto LABEL_51;
        case 0x263u:
          v64 = objc_loadWeakRetained(&self->_delegate);
          v65 = objc_opt_respondsToSelector();

          if (v65)
          {
            v66 = objc_loadWeakRetained(&self->_delegate);
            [v66 receiveBlockedIndicationWithReason:46];
          }

          goto LABEL_51;
        case 0x266u:
          if (self->_state > 2)
          {
            v81 = objc_loadWeakRetained(&self->_delegate);
            v82 = objc_opt_respondsToSelector();

            if (v82)
            {
              v83 = objc_loadWeakRetained(&self->_delegate);
              [v83 receiveErrorIndicationWithCode:2];
            }
          }

          else
          {
            v29 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
            {
              v30 = (&_IDSStunCandidatePairStateStrings)[self->_state];
              *buf = 136315138;
              v93 = v30;
              _os_log_impl(&dword_1A7AD9000, v29, OS_LOG_TYPE_DEFAULT, "processQUICErrorIndication: Ignoring STUN_ERROR_SHORT_MKI_CACHE_MISS, state: %s", buf, 0xCu);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              if (_IDSShouldLogTransport())
              {
                _IDSLogTransport(@"GL", @"IDS", @"processQUICErrorIndication: Ignoring STUN_ERROR_SHORT_MKI_CACHE_MISS, state: %s", v31, v32, v33, v34, v35, (&_IDSStunCandidatePairStateStrings)[self->_state]);
                if (_IDSShouldLog(0))
                {
                  _IDSLogV(0, @"IDSFoundation", @"GL", @"processQUICErrorIndication: Ignoring STUN_ERROR_SHORT_MKI_CACHE_MISS, state: %s", v36, v37, v38, v39, (&_IDSStunCandidatePairStateStrings)[self->_state]);
                }
              }
            }
          }

LABEL_51:
          v80 = 1;
          goto LABEL_52;
      }
    }

    v70 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v93) = errorCode;
      _os_log_impl(&dword_1A7AD9000, v70, OS_LOG_TYPE_DEFAULT, "invalid case: %hu", buf, 8u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"invalid case: %hu", v71, v72, v73, v74, v75, errorCode);
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"invalid case: %hu", v76, v77, v78, v79, errorCode);
        }
      }
    }
  }

  else
  {
    v40 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v40, OS_LOG_TYPE_DEFAULT, "processQUICErrorIndication failed due to invalid errorIndication.", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"processQUICErrorIndication failed due to invalid errorIndication.", v41, v42, v43, v44, v45, v88);
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"processQUICErrorIndication failed due to invalid errorIndication.", v46, v47, v48, v49, v89);
        }
      }
    }
  }

  v80 = 0;
LABEL_52:

  return v80;
}

- (BOOL)processQUICErrorResponse:(id)response packetBuffer:(id *)buffer startTime:(double)time headerOverhead:(unint64_t)overhead
{
  v156 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  var31 = buffer->var31;
  v141 = var31;
  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu"];
  var35_low = LOWORD(buffer->var35);
  var34 = buffer->var34;
  isRealloc = [(IDSStunCandidatePair *)self isRealloc];
  if (var34 > 14)
  {
    if (var34 > 19)
    {
      if (var34 == 20)
      {
        v16 = 2321;
        goto LABEL_23;
      }

      if (var34 == 22)
      {
        v16 = 4082;
        goto LABEL_23;
      }
    }

    else
    {
      if (var34 == 15)
      {
        v16 = 4085;
        goto LABEL_23;
      }

      if (var34 == 18)
      {
        v16 = 4083;
        goto LABEL_23;
      }
    }

    goto LABEL_22;
  }

  if (var34 > 6)
  {
    if (var34 == 7)
    {
      v16 = 4087;
      goto LABEL_23;
    }

    if (var34 == 10)
    {
      v16 = 4088;
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  if (var34 != 1)
  {
    if (var34 == 5)
    {
      v16 = 4084;
      goto LABEL_23;
    }

LABEL_22:
    v16 = 0;
    goto LABEL_23;
  }

  if (isRealloc)
  {
    v16 = 4081;
  }

  else
  {
    v16 = 4080;
  }

LABEL_23:
  if ([(IDSStunCandidatePair *)self removeProtoRequest:var31])
  {
    if (self->_state != 2)
    {
      v30 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v31 = ids_monotonic_time();
        v32 = [(IDSStunCandidate *)self->_local address][1];
        *buf = 67109888;
        *v153 = var34;
        *&v153[4] = 1024;
        *&v153[6] = var35_low;
        *v154 = 2048;
        *&v154[2] = (v31 - time) * 1000.0;
        LOWORD(v155) = 1024;
        *(&v155 + 2) = v32;
        _os_log_impl(&dword_1A7AD9000, v30, OS_LOG_TYPE_DEFAULT, "receive error response - type(%04x) error_code(%u) after %0.3lf ms family: %d.", buf, 0x1Eu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v33 = ids_monotonic_time();
          *(&v147 + 1) = [(IDSStunCandidate *)self->_local address][1];
          *&v147 = (v33 - time) * 1000.0;
          _IDSLogTransport(@"GL", @"IDS", @"receive error response - type(%04x) error_code(%u) after %0.3lf ms family: %d.", v34, v35, v36, v37, v38, var34);
          if (_IDSShouldLog(0))
          {
            v39 = ids_monotonic_time();
            *(&v147 + 1) = [(IDSStunCandidate *)self->_local address][1];
            *&v147 = (v39 - time) * 1000.0;
            _IDSLogV(0, @"IDSFoundation", @"GL", @"receive error response - type(%04x) error_code(%u) after %0.3lf ms family: %d.", v40, v41, v42, v43, var34);
          }
        }
      }

      v44 = GLUtilStunErrorToGlobalLinkError(var35_low);
      GLUtilReportAWDStunMessageEventWithType(v16, v44, self, 0.0);
      v45 = GLUtilStunErrorToGlobalLinkError(var35_low);
      candidatePairToken12 = GLUCreateQRStunMessageEventWithType(v16, v45, self, 0, 0.0);
      if (candidatePairToken12)
      {
        [(IDSStunCandidatePair *)self _notifyQREventAdded:candidatePairToken12];
      }

      if (var34 > 9)
      {
        if (var34 == 10)
        {
          v111 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1A7AD9000, v111, OS_LOG_TYPE_DEFAULT, "receive plugin registrion error response", buf, 2u);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            if (_IDSShouldLogTransport())
            {
              _IDSLogTransport(@"GL", @"IDS", @"receive plugin registrion error response", v112, v113, v114, v115, v116, v141);
              if (_IDSShouldLog(0))
              {
                _IDSLogV(0, @"IDSFoundation", @"GL", @"receive plugin registrion error response", v117, v118, v119, v120, v142);
              }
            }
          }

          goto LABEL_75;
        }

        if (var34 == 15)
        {
          var2 = buffer->var2;
          v65 = [(IDSStunCandidatePair *)self getStunSentBytes:v12];
          v66 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
          {
            candidatePairToken = [(IDSStunCandidatePair *)self candidatePairToken];
            *buf = 138412290;
            *v153 = candidatePairToken;
            _os_log_impl(&dword_1A7AD9000, v66, OS_LOG_TYPE_DEFAULT, "receive session-info error response for %@.", buf, 0xCu);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            if (_IDSShouldLogTransport())
            {
              candidatePairToken2 = [(IDSStunCandidatePair *)self candidatePairToken];
              _IDSLogTransport(@"GL", @"IDS", @"receive session-info error response for %@.", v69, v70, v71, v72, v73, candidatePairToken2);

              if (_IDSShouldLog(0))
              {
                candidatePairToken3 = [(IDSStunCandidatePair *)self candidatePairToken];
                _IDSLogV(0, @"IDSFoundation", @"GL", @"receive session-info error response for %@.", v75, v76, v77, v78, candidatePairToken3);
              }
            }
          }

          BYTE12(v147) = 0;
          *(&v147 + 4) = 2;
          LOWORD(v147) = 0;
          [IDSStunCandidatePair _notifySessionStreamInfoReceived:"_notifySessionStreamInfoReceived:withParticipants:lightweightParticipants:joinedParticipantInfo:leftParticipantInfo:updatedParticipantInfo:sentBytes:receivedBytes:offlineRequest:streamInfoRequest:status:commandFlag:isIndication:" withParticipants:0 lightweightParticipants:0 joinedParticipantInfo:0 leftParticipantInfo:0 updatedParticipantInfo:0 sentBytes:0 receivedBytes:v65 offlineRequest:var2 + overhead streamInfoRequest:v147 status:? commandFlag:? isIndication:?];
        }
      }

      else if (var34 == 1)
      {
        v79 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
        {
          v80 = (&_IDSStunCandidatePairStateStrings)[self->_state];
          v81 = off_1EB2B43B8;
          candidatePairToken4 = [(IDSStunCandidatePair *)self candidatePairToken];
          *buf = 136315650;
          *v153 = v80;
          *&v153[8] = 2080;
          *v154 = v81;
          *&v154[8] = 2112;
          v155 = candidatePairToken4;
          _os_log_impl(&dword_1A7AD9000, v79, OS_LOG_TYPE_DEFAULT, "update state (%s->%s) for %@.", buf, 0x20u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            v83 = (&_IDSStunCandidatePairStateStrings)[self->_state];
            candidatePairToken5 = [(IDSStunCandidatePair *)self candidatePairToken];
            _IDSLogTransport(@"GL", @"IDS", @"update state (%s->%s) for %@.", v84, v85, v86, v87, v88, v83);

            if (_IDSShouldLog(0))
            {
              v89 = (&_IDSStunCandidatePairStateStrings)[self->_state];
              candidatePairToken6 = [(IDSStunCandidatePair *)self candidatePairToken];
              _IDSLogV(0, @"IDSFoundation", @"GL", @"update state (%s->%s) for %@.", v90, v91, v92, v93, v89);
            }
          }
        }

        self->_state = 2;
        v94 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
        {
          participantID = self->_participantID;
          v96 = [(NSData *)self->_relaySessionToken base64EncodedStringWithOptions:0];
          *buf = 134218242;
          *v153 = participantID;
          *&v153[8] = 2112;
          *v154 = v96;
          _os_log_impl(&dword_1A7AD9000, v94, OS_LOG_TYPE_DEFAULT, "failed participant:[%16llX], token:[%@]", buf, 0x16u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            v97 = self->_participantID;
            v145 = [(NSData *)self->_relaySessionToken base64EncodedStringWithOptions:0];
            _IDSLogTransport(@"GL", @"IDS", @"failed participant:[%16llX], token:[%@]", v98, v99, v100, v101, v102, v97);

            if (_IDSShouldLog(0))
            {
              v103 = self->_participantID;
              v146 = [(NSData *)self->_relaySessionToken base64EncodedStringWithOptions:0];
              _IDSLogV(0, @"IDSFoundation", @"GL", @"failed participant:[%16llX], token:[%@]", v104, v105, v106, v107, v103);
            }
          }
        }
      }

      else if (var34 == 7)
      {
        v46 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
        {
          candidatePairToken7 = [(IDSStunCandidatePair *)self candidatePairToken];
          *buf = 138412290;
          *v153 = candidatePairToken7;
          _os_log_impl(&dword_1A7AD9000, v46, OS_LOG_TYPE_DEFAULT, "receive participant update error response for %@.", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            candidatePairToken8 = [(IDSStunCandidatePair *)self candidatePairToken];
            _IDSLogTransport(@"GL", @"IDS", @"receive participant update error response for %@.", v49, v50, v51, v52, v53, candidatePairToken8);

            if (_IDSShouldLog(0))
            {
              candidatePairToken9 = [(IDSStunCandidatePair *)self candidatePairToken];
              _IDSLogV(0, @"IDSFoundation", @"GL", @"receive participant update error response for %@.", v55, v56, v57, v58, candidatePairToken9);
            }
          }
        }

        participantUpdateResponse = [responseCopy participantUpdateResponse];
        v60 = participantUpdateResponse;
        if (participantUpdateResponse)
        {
          v61 = ProtoUtilProcessParticipantUpdate(participantUpdateResponse, var35_low, 7);
          v62 = v61;
          if (v61 && [v61 count])
          {
            v63 = sub_1A7C74D88(var35_low);
            WeakRetained = objc_loadWeakRetained(&self->_delegate);
            [WeakRetained candidatePair:self didReceiveParticipantUpdate:v62 status:v63];

            v29 = 1;
          }

          else
          {
            v121 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v121, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_1A7AD9000, v121, OS_LOG_TYPE_DEFAULT, "receive participant update error response: invalid participantUpdateInfo", buf, 2u);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              if (_IDSShouldLogTransport())
              {
                _IDSLogTransport(@"GL", @"IDS", @"receive participant update error response: invalid participantUpdateInfo", v122, v123, v124, v125, v126, v141);
                if (_IDSShouldLog(0))
                {
                  _IDSLogV(0, @"IDSFoundation", @"GL", @"receive participant update error response: invalid participantUpdateInfo", v127, v128, v129, v130, v143);
                }
              }
            }

            v29 = 0;
          }
        }

        else
        {
          v131 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v131, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1A7AD9000, v131, OS_LOG_TYPE_DEFAULT, "processQUICErrorResponse failed due to invalid participantUpdateResponse.", buf, 2u);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            if (_IDSShouldLogTransport())
            {
              _IDSLogTransport(@"GL", @"IDS", @"processQUICErrorResponse failed due to invalid participantUpdateResponse.", v132, v133, v134, v135, v136, v141);
              if (_IDSShouldLog(0))
              {
                _IDSLogV(0, @"IDSFoundation", @"GL", @"processQUICErrorResponse failed due to invalid participantUpdateResponse.", v137, v138, v139, v140, v144);
              }
            }
          }

          v29 = 0;
        }

        goto LABEL_76;
      }

      v108 = [(IDSStunCandidatePair *)self _didLocalExternalAddressChange:&buffer->var20];
      v109 = objc_loadWeakRetained(&self->_delegate);
      [v109 candidatePair:self didReceiveStunErrorResponse:v16 errorCode:var35_low didLocalExternalAddressChange:v108];

LABEL_75:
      v29 = 1;
LABEL_76:

      goto LABEL_77;
    }

    v17 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      candidatePairToken10 = [(IDSStunCandidatePair *)self candidatePairToken];
      *buf = 138412546;
      *v153 = candidatePairToken10;
      *&v153[8] = 1024;
      *v154 = var34;
      _os_log_impl(&dword_1A7AD9000, v17, OS_LOG_TYPE_DEFAULT, "%@ is already in error state, ignore error response %04x.", buf, 0x12u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        candidatePairToken11 = [(IDSStunCandidatePair *)self candidatePairToken];
        _IDSLogTransport(@"GL", @"IDS", @"%@ is already in error state, ignore error response %04x.", v20, v21, v22, v23, v24, candidatePairToken11);

        if (_IDSShouldLog(0))
        {
          candidatePairToken12 = [(IDSStunCandidatePair *)self candidatePairToken];
          _IDSLogV(0, @"IDSFoundation", @"GL", @"%@ is already in error state, ignore error response %04x.", v25, v26, v27, v28, candidatePairToken12);
          goto LABEL_75;
        }
      }
    }
  }

  v29 = 1;
LABEL_77:

  return v29;
}

- (int64_t)kind
{
  if ([(IDSStunCandidatePair *)self isVirtualRelayStunCandidatePair])
  {
    return 2;
  }

  if ([(IDSStunCandidatePair *)self isP2P])
  {
    return 3;
  }

  return objc_msgSend_isRelayStunCandidatePair(self);
}

- (NSString)interfaceName
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = [WeakRetained interfaceNameForCandidatePair:self];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = @"unknown";
  }

  v7 = v6;

  return &v6->isa;
}

- (int64_t)ipFamily
{
  if ([(IDSStunCandidate *)self->_local address][1] == 30)
  {
    return 6;
  }

  else
  {
    return 4;
  }
}

- (BOOL)isExpensive
{
  selfCopy = self;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  LOBYTE(selfCopy) = [WeakRetained isCandidatePairExpensive:selfCopy];

  return selfCopy;
}

- (BOOL)isConstrained
{
  selfCopy = self;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  LOBYTE(selfCopy) = [WeakRetained isCandidatePairConstrained:selfCopy];

  return selfCopy;
}

- (BOOL)isDelegated
{
  selfCopy = self;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  LOBYTE(selfCopy) = [WeakRetained isCandidatePairDelegated:selfCopy];

  return selfCopy;
}

- (void)receiveLinkTestStatsPacket:(id)packet
{
  v25 = *MEMORY[0x1E69E9840];
  packetCopy = packet;
  v5 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A7AD9000, v5, OS_LOG_TYPE_DEFAULT, "received link test packet, forwarding to listeners", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"received link test packet, forwarding to listeners", v6, v7, v8, v9, v10, v19);
      if (_IDSShouldLog(0))
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"received link test packet, forwarding to listeners", v11, v12, v13, v14, v19);
      }
    }
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v15 = self->_packetListeners;
  v16 = [(NSMutableSet *)v15 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v16)
  {
    v17 = *v20;
    do
    {
      v18 = 0;
      do
      {
        if (*v20 != v17)
        {
          objc_enumerationMutation(v15);
        }

        [*(*(&v19 + 1) + 8 * v18++) didReceiveStatsTestPacketWithPayload:packetCopy linkID:-[IDSStunCandidatePair linkID](self completionHandler:{"linkID", v19), &unk_1F1AAB9A0}];
      }

      while (v16 != v18);
      v16 = [(NSMutableSet *)v15 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v16);
  }
}

- (void)sendLinkTestStatsPacket:(id)packet
{
  v48 = *MEMORY[0x1E69E9840];
  packetCopy = packet;
  if (self->_state - 5 > 0xFFFFFFFFFFFFFFFDLL)
  {
    if ([(IDSStunCandidatePair *)self isActualRelayStunCandidatePair])
    {
      v19 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v45) = [(IDSStunCandidatePair *)self linkID];
        _os_log_impl(&dword_1A7AD9000, v19, OS_LOG_TYPE_DEFAULT, "send relay test packet on link %u", buf, 8u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          linkID = [(IDSStunCandidatePair *)self linkID];
          _IDSLogTransport(@"GL", @"IDS", @"send relay test packet on link %u", v21, v22, v23, v24, v25, linkID);
          if (_IDSShouldLog(0))
          {
            linkID2 = [(IDSStunCandidatePair *)self linkID];
            _IDSLogV(0, @"IDSFoundation", @"GL", @"send relay test packet on link %u", v27, v28, v29, v30, linkID2);
          }
        }
      }

      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained sendTestPacketChannelDataMessage:packetCopy candidatePair:self];
    }

    else
    {
      v31 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        if ([(IDSStunCandidatePair *)self isVirtualRelayStunCandidatePair])
        {
          v32 = "VR";
        }

        else if ([(IDSStunCandidatePair *)self isP2P])
        {
          v32 = "P2P";
        }

        else
        {
          v32 = "Other";
        }

        *buf = 136315394;
        v45 = v32;
        v46 = 1024;
        LODWORD(v47) = [(IDSStunCandidatePair *)self linkID];
        _os_log_impl(&dword_1A7AD9000, v31, OS_LOG_TYPE_DEFAULT, "send non-relay test packet over %s on link %u", buf, 0x12u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
      {
        if ([(IDSStunCandidatePair *)self isVirtualRelayStunCandidatePair])
        {
          v33 = "VR";
        }

        else
        {
          v33 = [(IDSStunCandidatePair *)self isP2P]? "P2P" : "Other";
        }

        [(IDSStunCandidatePair *)self linkID];
        _IDSLogTransport(@"GL", @"IDS", @"send non-relay test packet over %s on link %u", v34, v35, v36, v37, v38, v33);
        if (_IDSShouldLog(0))
        {
          if ([(IDSStunCandidatePair *)self isVirtualRelayStunCandidatePair])
          {
            v39 = "VR";
          }

          else if ([(IDSStunCandidatePair *)self isP2P])
          {
            v39 = "P2P";
          }

          else
          {
            v39 = "Other";
          }

          [(IDSStunCandidatePair *)self linkID];
          _IDSLogV(0, @"IDSFoundation", @"GL", @"send non-relay test packet over %s on link %u", v40, v41, v42, v43, v39);
        }
      }

      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained sendTestPacketCommandMessage:packetCopy candidatePair:self];
    }

    goto LABEL_38;
  }

  v5 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    candidatePairToken = [(IDSStunCandidatePair *)self candidatePairToken];
    v7 = (&_IDSStunCandidatePairStateStrings)[self->_state];
    *buf = 138412546;
    v45 = candidatePairToken;
    v46 = 2080;
    v47 = v7;
    _os_log_impl(&dword_1A7AD9000, v5, OS_LOG_TYPE_DEFAULT, "skip test stats packet for %@, state [%s].", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      candidatePairToken2 = [(IDSStunCandidatePair *)self candidatePairToken];
      _IDSLogTransport(@"GL", @"IDS", @"skip test stats packet for %@, state [%s].", v9, v10, v11, v12, v13, candidatePairToken2);

      if (_IDSShouldLog(0))
      {
        WeakRetained = [(IDSStunCandidatePair *)self candidatePairToken];
        _IDSLogV(0, @"IDSFoundation", @"GL", @"skip test stats packet for %@, state [%s].", v15, v16, v17, v18, WeakRetained);
LABEL_38:
      }
    }
  }
}

- (unint64_t)totalPacketsSent
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = [WeakRetained sendInfoForCandidatePair:self];

  if (v4)
  {
    return *(v4 + 328);
  }

  else
  {
    return 0;
  }
}

- (unint64_t)totalPacketsReceived
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = [WeakRetained sendInfoForCandidatePair:self];

  if (v4)
  {
    return *(v4 + 332);
  }

  else
  {
    return 0;
  }
}

- (unint64_t)totalBytesSent
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = [WeakRetained sendInfoForCandidatePair:self];

  if (v4)
  {
    return *(v4 + 336);
  }

  else
  {
    return 0;
  }
}

- (unint64_t)totalBytesReceived
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = [WeakRetained sendInfoForCandidatePair:self];

  if (v4)
  {
    return *(v4 + 344);
  }

  else
  {
    return 0;
  }
}

@end