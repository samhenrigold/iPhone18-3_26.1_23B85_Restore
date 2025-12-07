@interface IDSQRProtoMessage
+ (id)dataWithEmptyUnAllocBindResponse;
- (BOOL)_setupAllocbindRequest:(id)request candidatePair:(id)pair options:(id)options;
- (BOOL)_setupCallModeUpdateRequest:(id)request candidatePair:(id)pair options:(id)options;
- (BOOL)_setupChannelConfigRequest:(id)request candidatePair:(id)pair options:(id)options;
- (BOOL)_setupInfoRequest:(id)request candidatePair:(id)pair options:(id)options;
- (BOOL)_setupParticipantUpdateRequest:(id)request candidatePair:(id)pair options:(id)options;
- (BOOL)_setupPluginControlRequest:(id)request candidatePair:(id)pair options:(id)options;
- (BOOL)_setupPutmaterialRequest:(id)request candidatePair:(id)pair options:(id)options;
- (BOOL)_setupRegisterAckRequest:(id)request candidatePair:(id)pair options:(id)options;
- (BOOL)_setupRegisterRequest:(id)request candidatePair:(id)pair options:(id)options;
- (BOOL)_setupSessionInfoRequest:(id)request candidatePair:(id)pair options:(id)options;
- (BOOL)_setupStatsRequest:(id)request candidatePair:(id)pair options:(id)options;
- (BOOL)_setupTestRequest:(id)request candidatePair:(id)pair options:(id)options;
- (BOOL)_setupUnallocbindRequest:(id)request candidatePair:(id)pair options:(id)options;
- (IDSQRProtoMessage)initWithData:(id)data;
- (IDSQRProtoMessage)initWithType:(int)type candidatePair:(id)pair options:(id)options;
- (id)allocbindResponse;
- (id)callModeUpdateResponse;
- (id)channelConfigResponse;
- (id)diagnosticIndication;
- (id)errorIndication;
- (id)getMaterialResponse;
- (id)goAwayIndication;
- (id)infoResponse;
- (id)participantUpdateIndication;
- (id)participantUpdateResponse;
- (id)pluginControlIndication;
- (id)pluginControlResponse;
- (id)putMaterialIndication;
- (id)putMaterialResponse;
- (id)reallocateIndication;
- (id)registerIndication;
- (id)registerResponse;
- (id)sessionInfoIndication;
- (id)sessionInfoResponse;
- (id)statsResponse;
- (id)testResponse;
- (id)unallocbindResponse;
@end

@implementation IDSQRProtoMessage

- (IDSQRProtoMessage)initWithType:(int)type candidatePair:(id)pair options:(id)options
{
  v6 = *&type;
  v89 = *MEMORY[0x1E69E9840];
  pairCopy = pair;
  optionsCopy = options;
  v84.receiver = self;
  v84.super_class = IDSQRProtoMessage;
  v10 = [(IDSQRProtoMessage *)&v84 init];
  if (v10)
  {
    if (!objc_msgSend_isRelayStunCandidatePair(pairCopy) || ([pairCopy isValidRelayStunCandidatePair] & 1) == 0)
    {
      v16 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A7AD9000, v16, OS_LOG_TYPE_DEFAULT, "failed to create QRProtoMessage due to invalid relay candidate pair.", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"GL", @"IDS", @"failed to create QRProtoMessage due to invalid relay candidate pair.", v17, v18, v19, v20, v21, v80);
          if (_IDSShouldLog(0))
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"failed to create QRProtoMessage due to invalid relay candidate pair.", v22, v23, v24, v25, v81);
          }
        }
      }

      goto LABEL_68;
    }

    v10->_startTime = ids_monotonic_time();
    v11 = objc_alloc_init(IDSQRProtoH3Message);
    message = v10->_message;
    v10->_message = v11;

    if (v6 > 21)
    {
      if (v6 <= 28)
      {
        if (v6 == 22)
        {
          v45 = objc_alloc_init(IDSQRProtoUnAllocBindRequest);
          [(IDSQRProtoH3Message *)v10->_message setUnallocbindRequest:v45];

          unallocbindRequest = [(IDSQRProtoH3Message *)v10->_message unallocbindRequest];
          v15 = [(IDSQRProtoMessage *)v10 _setupUnallocbindRequest:unallocbindRequest candidatePair:pairCopy options:optionsCopy];
        }

        else
        {
          if (v6 != 24)
          {
            if (v6 == 27)
            {
              v30 = [optionsCopy objectForKeyedSubscript:@"gl-option-materials-request-key"];
              if (v30)
              {
                [(IDSQRProtoH3Message *)v10->_message setGetmaterialRequest:v30];

LABEL_45:
                v51 = OSLogHandleForTransportCategory();
                if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
                {
                  v52 = off_1E77E1DE8[v6 - 1];
                  v53 = v10->_message;
                  *buf = 138412546;
                  v86 = v52;
                  v87 = 2112;
                  v88 = v53;
                  _os_log_impl(&dword_1A7AD9000, v51, OS_LOG_TYPE_DEFAULT, "created %@ proto message %@", buf, 0x16u);
                }

                if (os_log_shim_legacy_logging_enabled())
                {
                  if (_IDSShouldLogTransport())
                  {
                    _IDSLogTransport(@"GL", @"IDS", @"created %@ proto message %@", v54, v55, v56, v57, v58, off_1E77E1DE8[v6 - 1]);
                    if (_IDSShouldLog(0))
                    {
                      _IDSLogV(0, @"IDSFoundation", @"GL", @"created %@ proto message %@", v59, v60, v61, v62, off_1E77E1F20[v6]);
                    }
                  }
                }

                v63 = off_1E77E1F20[v6];
                [(IDSQRProtoH3Message *)v10->_message description];
                v83 = v82 = v63;
                v64 = v83;
                cut_dispatch_log_queue();

                goto LABEL_52;
              }
            }

            goto LABEL_53;
          }

          v49 = objc_alloc_init(IDSQRProtoPutMaterialRequest);
          [(IDSQRProtoH3Message *)v10->_message setPutmaterialRequest:v49];

          putmaterialRequest = [(IDSQRProtoH3Message *)v10->_message putmaterialRequest];
          v15 = [(IDSQRProtoMessage *)v10 _setupPutmaterialRequest:putmaterialRequest candidatePair:pairCopy options:optionsCopy];
        }

        goto LABEL_44;
      }

      if (v6 > 36)
      {
        if (v6 == 37)
        {
          v41 = objc_alloc_init(IDSQRProtoCallModeUpdateRequest);
          [(IDSQRProtoH3Message *)v10->_message setCallmodeupdateRequest:v41];

          callmodeupdateRequest = [(IDSQRProtoH3Message *)v10->_message callmodeupdateRequest];
          v15 = [(IDSQRProtoMessage *)v10 _setupCallModeUpdateRequest:callmodeupdateRequest candidatePair:pairCopy options:optionsCopy];
        }

        else
        {
          if (v6 != 39)
          {
            goto LABEL_53;
          }

          v33 = objc_alloc_init(IDSQRH3ChannelConfigRequest);
          [(IDSQRProtoH3Message *)v10->_message setChannelconfigRequest:v33];

          channelconfigRequest = [(IDSQRProtoH3Message *)v10->_message channelconfigRequest];
          v15 = [(IDSQRProtoMessage *)v10 _setupChannelConfigRequest:channelconfigRequest candidatePair:pairCopy options:optionsCopy];
        }
      }

      else if (v6 == 29)
      {
        v37 = objc_alloc_init(IDSQRProtoH3EndToEndChannelRegisterRequest);
        [(IDSQRProtoH3Message *)v10->_message setRegisterRequest:v37];

        registerRequest = [(IDSQRProtoH3Message *)v10->_message registerRequest];
        v15 = [(IDSQRProtoMessage *)v10 _setupRegisterRequest:registerRequest candidatePair:pairCopy options:optionsCopy];
      }

      else
      {
        if (v6 != 32)
        {
          goto LABEL_53;
        }

        v26 = objc_alloc_init(IDSQRProtoH3EndToEndChannelRegisterAckRequest);
        [(IDSQRProtoH3Message *)v10->_message setRegisterAckRequest:v26];

        registerAckRequest = [(IDSQRProtoH3Message *)v10->_message registerAckRequest];
        v15 = [(IDSQRProtoMessage *)v10 _setupRegisterAckRequest:registerAckRequest candidatePair:pairCopy options:optionsCopy];
      }
    }

    else if (v6 <= 9)
    {
      switch(v6)
      {
        case 1:
          v43 = objc_alloc_init(IDSQRProtoAllocBindRequest);
          [(IDSQRProtoH3Message *)v10->_message setAllocbindRequest:v43];

          allocbindRequest = [(IDSQRProtoH3Message *)v10->_message allocbindRequest];
          v15 = [(IDSQRProtoMessage *)v10 _setupAllocbindRequest:allocbindRequest candidatePair:pairCopy options:optionsCopy];

          break;
        case 5:
          v47 = objc_alloc_init(IDSQRProtoInfoRequest);
          [(IDSQRProtoH3Message *)v10->_message setInfoRequest:v47];

          infoRequest = [(IDSQRProtoH3Message *)v10->_message infoRequest];
          v15 = [(IDSQRProtoMessage *)v10 _setupInfoRequest:infoRequest candidatePair:pairCopy options:optionsCopy];

          break;
        case 7:
          v28 = objc_alloc_init(IDSQRProtoParticipantUpdateRequest);
          [(IDSQRProtoH3Message *)v10->_message setParticipantupdateRequest:v28];

          participantupdateRequest = [(IDSQRProtoH3Message *)v10->_message participantupdateRequest];
          v15 = [(IDSQRProtoMessage *)v10 _setupParticipantUpdateRequest:participantupdateRequest candidatePair:pairCopy options:optionsCopy];

          break;
        default:
          goto LABEL_53;
      }
    }

    else if (v6 > 17)
    {
      if (v6 == 18)
      {
        v39 = objc_alloc_init(IDSQRProtoStatsRequest);
        [(IDSQRProtoH3Message *)v10->_message setStatsRequest:v39];

        statsRequest = [(IDSQRProtoH3Message *)v10->_message statsRequest];
        v15 = [(IDSQRProtoMessage *)v10 _setupStatsRequest:statsRequest candidatePair:pairCopy options:optionsCopy];
      }

      else
      {
        if (v6 != 20)
        {
          goto LABEL_53;
        }

        v31 = objc_alloc_init(IDSQRProtoTestRequest);
        [(IDSQRProtoH3Message *)v10->_message setTestRequest:v31];

        testRequest = [(IDSQRProtoH3Message *)v10->_message testRequest];
        v15 = [(IDSQRProtoMessage *)v10 _setupTestRequest:testRequest candidatePair:pairCopy options:optionsCopy];
      }
    }

    else
    {
      if (v6 != 10)
      {
        if (v6 == 15)
        {
          v13 = objc_alloc_init(IDSQRProtoSessionInfoRequest);
          [(IDSQRProtoH3Message *)v10->_message setSessioninfoRequest:v13];

          sessioninfoRequest = [(IDSQRProtoH3Message *)v10->_message sessioninfoRequest];
          v15 = [(IDSQRProtoMessage *)v10 _setupSessionInfoRequest:sessioninfoRequest candidatePair:pairCopy options:optionsCopy];

          goto LABEL_44;
        }

LABEL_53:
        v66 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
        {
          if (v6 >= 0x29)
          {
            v67 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v6];
          }

          else
          {
            v67 = off_1E77E1F20[v6];
          }

          *buf = 138412290;
          v86 = v67;
          _os_log_impl(&dword_1A7AD9000, v66, OS_LOG_TYPE_DEFAULT, "failed to create %@ message", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
        {
          if (v6 >= 0x29)
          {
            v73 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v6];
          }

          else
          {
            v73 = off_1E77E1F20[v6];
          }

          _IDSLogTransport(@"GL", @"IDS", @"failed to create %@ message", v68, v69, v70, v71, v72, v73);

          if (_IDSShouldLog(0))
          {
            if (v6 >= 0x29)
            {
              v78 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v6];
            }

            else
            {
              v78 = off_1E77E1F20[v6];
            }

            _IDSLogV(0, @"IDSFoundation", @"GL", @"failed to create %@ message", v74, v75, v76, v77, v78);
          }
        }

LABEL_68:
        v65 = 0;
        goto LABEL_69;
      }

      v35 = objc_alloc_init(IDSQRProtoPluginControlRequest);
      [(IDSQRProtoH3Message *)v10->_message setPlugincontrolRequest:v35];

      plugincontrolRequest = [(IDSQRProtoH3Message *)v10->_message plugincontrolRequest];
      v15 = [(IDSQRProtoMessage *)v10 _setupPluginControlRequest:plugincontrolRequest candidatePair:pairCopy options:optionsCopy];
    }

LABEL_44:
    if (v15)
    {
      goto LABEL_45;
    }

    goto LABEL_53;
  }

LABEL_52:
  v65 = v10;
LABEL_69:

  return v65;
}

- (BOOL)_setupAllocbindRequest:(id)request candidatePair:(id)pair options:(id)options
{
  v206 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  pairCopy = pair;
  theDict = options;
  softwareData = [pairCopy softwareData];
  v185 = [softwareData length];
  if (v185 <= 2)
  {
    v37 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v203 = softwareData;
      _os_log_impl(&dword_1A7AD9000, v37, OS_LOG_TYPE_DEFAULT, "invalid software data %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"invalid software data %@", v38, v39, v40, v41, v42, softwareData);
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"invalid software data %@", v43, v44, v45, v46, softwareData);
        }
      }
    }
  }

  else
  {
    [requestCopy setServiceId:{__rev16(*(objc_msgSend(softwareData, "bytes") + 1))}];
    mEMORY[0x1E69A60B8] = [MEMORY[0x1E69A60B8] sharedInstance];
    productName = [mEMORY[0x1E69A60B8] productName];

    mEMORY[0x1E69A60B8]2 = [MEMORY[0x1E69A60B8] sharedInstance];
    productVersion = [mEMORY[0x1E69A60B8]2 productVersion];

    mEMORY[0x1E69A60B8]3 = [MEMORY[0x1E69A60B8] sharedInstance];
    productBuildVersion = [mEMORY[0x1E69A60B8]3 productBuildVersion];

    v174 = productName;
    v181 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@, %@, %@"];
    [requestCopy setClientOsVersion:v181];
    mEMORY[0x1E69A60B8]4 = [MEMORY[0x1E69A60B8] sharedInstance];
    model = [mEMORY[0x1E69A60B8]4 model];

    [requestCopy setClientHwVersion:model];
    capabilityFlags = [pairCopy capabilityFlags];
    Value = 0;
    if (theDict && @"gl-option-is-lightweight-participant-key")
    {
      Value = CFDictionaryGetValue(theDict, @"gl-option-is-lightweight-participant-key");
    }

    bOOLValue = [Value BOOLValue];
    v14 = 0;
    if (bOOLValue)
    {
      v15 = capabilityFlags & 0xFFFFFFFFFFDF7FFFLL | 0x8000;
    }

    else
    {
      v15 = capabilityFlags;
    }

    if (theDict && @"gl-option-is-facetime-session")
    {
      v14 = CFDictionaryGetValue(theDict, @"gl-option-is-facetime-session");
    }

    bOOLValue2 = [v14 BOOLValue];
    isSharedQRSession = [pairCopy isSharedQRSession];
    v18 = 0;
    if ((isSharedQRSession & bOOLValue2) != 0)
    {
      v19 = v15 | 0x90000;
    }

    else
    {
      v19 = v15;
    }

    if (theDict && @"gl-option-uplink-nack-disabled")
    {
      v18 = CFDictionaryGetValue(theDict, @"gl-option-uplink-nack-disabled");
    }

    bOOLValue3 = [v18 BOOLValue];
    v21 = 0;
    if (bOOLValue3)
    {
      v19 &= ~0x80000uLL;
    }

    if (theDict && @"gs-shortmki-enabled-key")
    {
      v21 = CFDictionaryGetValue(theDict, @"gs-shortmki-enabled-key");
    }

    bOOLValue4 = [v21 BOOLValue];
    v23 = 0;
    if (bOOLValue4)
    {
      v19 |= 0x800000uLL;
    }

    if (theDict && @"gs-dl-participantid-removal-supported-key")
    {
      v23 = CFDictionaryGetValue(theDict, @"gs-dl-participantid-removal-supported-key");
    }

    bOOLValue5 = [v23 BOOLValue];
    v25 = 0;
    if (bOOLValue5)
    {
      v19 |= 0x2000000uLL;
    }

    if (theDict && @"gs-enable-qpod-vr")
    {
      v25 = CFDictionaryGetValue(theDict, @"gs-enable-qpod-vr");
    }

    if ([v25 BOOLValue])
    {
      v19 |= 0x400000uLL;
    }

    [requestCopy setCapabilities:v19];
    v26 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v203 = v19;
      _os_log_impl(&dword_1A7AD9000, v26, OS_LOG_TYPE_DEFAULT, "_setupAllocbindRequest: final capabilityFlags: %llx", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"_setupAllocbindRequest: final capabilityFlags: %llx", v27, v28, v29, v30, v31, v19);
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"_setupAllocbindRequest: final capabilityFlags: %llx", v32, v33, v34, v35, v19);
        }
      }
    }

    v177 = 0;
    if (theDict && @"gs-started-as-u-plus-one-key")
    {
      v36 = CFDictionaryGetValue(theDict, @"gs-started-as-u-plus-one-key");
      if (v36)
      {
        v177 = v36;
        [requestCopy setCallModeInfo:?];
      }

      else
      {
        v177 = 0;
      }
    }

    v176 = 0;
    if (theDict && @"gl-option-fast-plugin-request-key")
    {
      v47 = CFDictionaryGetValue(theDict, @"gl-option-fast-plugin-request-key");
      if (v47)
      {
        v176 = v47;
        [requestCopy setFastPluginRequests:?];
      }

      else
      {
        v176 = 0;
      }
    }

    stateFlags = [pairCopy stateFlags];
    [requestCopy setStateFlags:stateFlags];
    v49 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v203) = stateFlags;
      _os_log_impl(&dword_1A7AD9000, v49, OS_LOG_TYPE_DEFAULT, "_setupAllocbindRequest: final stateFlags: %x", buf, 8u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"_setupAllocbindRequest: final stateFlags: %x", v50, v51, v52, v53, v54, stateFlags);
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"_setupAllocbindRequest: final stateFlags: %x", v55, v56, v57, v58, stateFlags);
        }
      }
    }

    if ([pairCopy isSharedQRSession])
    {
      relaySessionInfo = [pairCopy relaySessionInfo];
      publishedStreams = [relaySessionInfo publishedStreams];

      relaySessionInfo2 = [pairCopy relaySessionInfo];
      subscribedStreams = [relaySessionInfo2 subscribedStreams];

      relaySessionInfo3 = [pairCopy relaySessionInfo];
      LODWORD(relaySessionInfo2) = [relaySessionInfo3 maxConcurrentStreams];

      sub_1A7C3A534(requestCopy, publishedStreams, subscribedStreams, relaySessionInfo2);
    }

    v64 = 0;
    if (theDict && @"gl-option-additional-binding")
    {
      v64 = CFDictionaryGetValue(theDict, @"gl-option-additional-binding");
    }

    unsignedIntValue = [v64 unsignedIntValue];
    if (([pairCopy isSelfQRSession] & 1) == 0)
    {
      local = [pairCopy local];
      isCellularStunCandidate = [local isCellularStunCandidate];

      if (@"gl-option-should-auto-disconnect-for-standard-participant")
      {
        v68 = theDict != 0;
      }

      else
      {
        v68 = 0;
      }

      if (v68)
      {
        v69 = CFDictionaryGetValue(theDict, @"gl-option-should-auto-disconnect-for-standard-participant");
      }

      else
      {
        v69 = 0;
      }

      bOOLValue6 = [v69 BOOLValue];
      v71 = +[IDSServerBag sharedInstance];
      v72 = [v71 objectForKey:@"ids-disallow-qr-auto-disconnect"];

      v73 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
      {
        v74 = @"NO";
        if (bOOLValue6)
        {
          v75 = @"YES";
        }

        else
        {
          v75 = @"NO";
        }

        if (bOOLValue)
        {
          v74 = @"YES";
        }

        *buf = 138412546;
        v203 = v75;
        v204 = 2112;
        v205 = v74;
        _os_log_impl(&dword_1A7AD9000, v73, OS_LOG_TYPE_DEFAULT, "_setupAllocbindRequest: auto disconnect supported: %@, isLightweightParticipant: %@", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
      {
        v81 = bOOLValue6 ? @"YES" : @"NO";
        _IDSLogTransport(@"GL", @"IDS", @"_setupAllocbindRequest: auto disconnect supported: %@, isLightweightParticipant: %@", v76, v77, v78, v79, v80, v81);
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"_setupAllocbindRequest: auto disconnect supported: %@, isLightweightParticipant: %@", v82, v83, v84, v85, v81);
        }
      }

      v86 = unsignedIntValue & 0x30 | isCellularStunCandidate;
      if (bOOLValue6)
      {
        if ([v72 BOOLValue])
        {
          v87 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1A7AD9000, v87, OS_LOG_TYPE_DEFAULT, "disallowQRAutoDisconnectBagValue set to YES, don't set the channel binding bit", buf, 2u);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            if (_IDSShouldLogTransport())
            {
              _IDSLogTransport(@"GL", @"IDS", @"disallowQRAutoDisconnectBagValue set to YES, don't set the channel binding bit", v88, v89, v90, v91, v92, v174);
              if (_IDSShouldLog(0))
              {
                _IDSLogV(0, @"IDSFoundation", @"GL", @"disallowQRAutoDisconnectBagValue set to YES, don't set the channel binding bit", v93, v94, v95, v96, v175);
              }
            }
          }
        }

        else
        {
          v86 = v86 | 0x200;
        }
      }

      [requestCopy setChannelBindingInfo:v86];
      v97 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v203) = v86;
        _os_log_impl(&dword_1A7AD9000, v97, OS_LOG_TYPE_DEFAULT, "channelBindingInfo: %u", buf, 8u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"GL", @"IDS", @"channelBindingInfo: %u", v98, v99, v100, v101, v102, v86);
          if (_IDSShouldLog(0))
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"channelBindingInfo: %u", v103, v104, v105, v106, v86);
          }
        }
      }
    }

    v179 = 0;
    if (theDict && @"gl-option-qr-connection-id-avc-key")
    {
      v179 = CFDictionaryGetValue(theDict, @"gl-option-qr-connection-id-avc-key");
      if (v179)
      {
        v107 = objc_alloc_init(IDSQRProtoQuicConnectionInfo);
        [(IDSQRProtoQuicConnectionInfo *)v107 setQuicConnectionType:0];
        [(IDSQRProtoQuicConnectionInfo *)v107 setQuicConnectionId:v179];
        [requestCopy addQuicConnectionInfo:v107];
      }

      else
      {
        v179 = 0;
      }
    }

    v178 = 0;
    if (theDict && @"gl-option-qr-connection-id-ids-key")
    {
      v178 = CFDictionaryGetValue(theDict, @"gl-option-qr-connection-id-ids-key");
      if (v178)
      {
        v108 = objc_alloc_init(IDSQRProtoQuicConnectionInfo);
        [(IDSQRProtoQuicConnectionInfo *)v108 setQuicConnectionType:1];
        [(IDSQRProtoQuicConnectionInfo *)v108 setQuicConnectionId:v178];
        [requestCopy addQuicConnectionInfo:v108];
      }

      else
      {
        v178 = 0;
      }
    }

    v186 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (@"gl-option-should-override-server-test-option-tle-disabled")
    {
      v109 = theDict != 0;
    }

    else
    {
      v109 = 0;
    }

    if (v109)
    {
      v110 = CFDictionaryGetValue(theDict, @"gl-option-should-override-server-test-option-tle-disabled");
    }

    else
    {
      v110 = 0;
    }

    if ([v110 BOOLValue])
    {
      v111 = 0;
      if (theDict && @"gl-option-server-test-option-tle-disabled")
      {
        v111 = CFDictionaryGetValue(theDict, @"gl-option-server-test-option-tle-disabled");
      }

      bOOLValue7 = [v111 BOOLValue];
      v113 = objc_alloc_init(IDSQRProtoExperimentOverride);
      [(IDSQRProtoExperimentOverride *)v113 setExperimentName:@"tled"];
      [(IDSQRProtoExperimentOverride *)v113 setValue:bOOLValue7];
      [v186 addObject:v113];
    }

    if ([v186 count])
    {
      v114 = objc_alloc_init(IDSQRProtoAllocBindTestOption);
      [(IDSQRProtoAllocBindTestOption *)v114 setExperimentOverrides:v186];
      [requestCopy setTestOption:v114];
    }

    if (theDict)
    {
      if (@"gl-option-qr-session-experiments")
      {
        v115 = CFDictionaryGetValue(theDict, @"gl-option-qr-session-experiments");
        if (v115)
        {
          v116 = v115;
          array = [MEMORY[0x1E695DF70] array];
          [requestCopy setSessionExperiments:array];

          v198 = 0u;
          v199 = 0u;
          v196 = 0u;
          v197 = 0u;
          v118 = v116;
          v119 = [v118 countByEnumeratingWithState:&v196 objects:v201 count:16];
          if (!v119)
          {
            goto LABEL_161;
          }

          v120 = *v197;
          while (1)
          {
            v121 = 0;
            do
            {
              if (*v197 != v120)
              {
                objc_enumerationMutation(v118);
              }

              v122 = *(*(&v196 + 1) + 8 * v121);
              v123 = [v118 objectForKeyedSubscript:v122];
              v124 = objc_alloc_init(IDSQRProtoSessionExperiment);
              [(IDSQRProtoSessionExperiment *)v124 setExperimentName:v122];
              v125 = v123;
              objc_opt_class();
              isKindOfClass = objc_opt_isKindOfClass();

              v127 = v125;
              if (isKindOfClass)
              {
                [(IDSQRProtoSessionExperiment *)v124 setStringValue:v127];

LABEL_137:
                v128 = OSLogHandleForTransportCategory();
                if (os_log_type_enabled(v128, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412546;
                  v203 = v122;
                  v204 = 2112;
                  v205 = v124;
                  _os_log_impl(&dword_1A7AD9000, v128, OS_LOG_TYPE_DEFAULT, "qrexp %@=%@", buf, 0x16u);
                }

                if (os_log_shim_legacy_logging_enabled())
                {
                  if (_IDSShouldLogTransport())
                  {
                    _IDSLogTransport(@"GL", @"IDS", @"qrexp %@=%@", v129, v130, v131, v132, v133, v122);
                    if (_IDSShouldLog(0))
                    {
                      _IDSLogV(0, @"IDSFoundation", @"GL", @"qrexp %@=%@", v134, v135, v136, v137, v122);
                    }
                  }
                }

                sessionExperiments = [requestCopy sessionExperiments];
                [sessionExperiments addObject:v124];

                goto LABEL_144;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v139 = CFGetTypeID(v127);
                LODWORD(v139) = v139 == CFBooleanGetTypeID();

                if (v139)
                {
                  -[IDSQRProtoSessionExperiment setBoolValue:](v124, "setBoolValue:", [v127 BOOLValue]);
                  goto LABEL_137;
                }
              }

              else
              {
              }

              v140 = v127;
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v141 = CFNumberIsFloatType(v140) == 0;

                if (v141)
                {
                  [(IDSQRProtoSessionExperiment *)v124 setInt32Value:[(__CFNumber *)v140 intValue]];
                  goto LABEL_137;
                }
              }

              else
              {
              }

              v142 = OSLogHandleForTransportCategory();
              if (os_log_type_enabled(v142, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                v203 = v122;
                v204 = 2112;
                v205 = v140;
                _os_log_impl(&dword_1A7AD9000, v142, OS_LOG_TYPE_DEFAULT, "qrexp %@ has unknown type (raw: %@)!", buf, 0x16u);
              }

              if (os_log_shim_legacy_logging_enabled())
              {
                if (_IDSShouldLogTransport())
                {
                  _IDSLogTransport(@"GL", @"IDS", @"qrexp %@ has unknown type (raw: %@)!", v143, v144, v145, v146, v147, v122);
                  if (_IDSShouldLog(0))
                  {
                    _IDSLogV(0, @"IDSFoundation", @"GL", @"qrexp %@ has unknown type (raw: %@)!", v148, v149, v150, v151, v122);
                  }
                }
              }

LABEL_144:

              ++v121;
            }

            while (v119 != v121);
            v152 = [v118 countByEnumeratingWithState:&v196 objects:v201 count:16];
            v119 = v152;
            if (!v152)
            {
LABEL_161:

              break;
            }
          }
        }
      }
    }

    if (theDict)
    {
      if (@"gl-option-used-links")
      {
        v153 = CFDictionaryGetValue(theDict, @"gl-option-used-links");
        if (v153)
        {
          v154 = v153;
          array2 = [MEMORY[0x1E695DF70] array];
          v194 = 0u;
          v195 = 0u;
          v192 = 0u;
          v193 = 0u;
          v156 = v154;
          v157 = [v156 countByEnumeratingWithState:&v192 objects:v200 count:16];
          if (v157)
          {
            v158 = *v193;
            do
            {
              for (i = 0; i != v157; ++i)
              {
                if (*v193 != v158)
                {
                  objc_enumerationMutation(v156);
                }

                v160 = *(*(&v192 + 1) + 8 * i);
                v161 = objc_alloc_init(IDSQRProtoAllocBindStaleLink);
                localIP = [v160 localIP];
                [(IDSQRProtoAllocBindStaleLink *)v161 setClientAddress:localIP];

                serverIP = [v160 serverIP];
                [(IDSQRProtoAllocBindStaleLink *)v161 setServerAddress:serverIP];

                -[IDSQRProtoAllocBindStaleLink setLinkId:](v161, "setLinkId:", [v160 linkID]);
                [array2 addObject:v161];
              }

              v157 = [v156 countByEnumeratingWithState:&v192 objects:v200 count:16];
            }

            while (v157);
          }

          [requestCopy setStaleLinks:array2];
        }
      }
    }

    if (theDict)
    {
      if (@"gl-option-qr-server-data-blob")
      {
        v164 = CFDictionaryGetValue(theDict, @"gl-option-qr-server-data-blob");
        if (v164)
        {
          v165 = v164;
          [requestCopy setServerBlob:v164];
        }
      }
    }

    if (theDict)
    {
      if (@"gl-option-ids-context-blob-key")
      {
        v166 = CFDictionaryGetValue(theDict, @"gl-option-ids-context-blob-key");
        if (v166)
        {
          v167 = v166;
          [requestCopy setClientContextBlob:v166];
        }
      }
    }

    v168 = 0;
    if (theDict && @"gl-option-ids-context-reason-key")
    {
      v168 = CFDictionaryGetValue(theDict, @"gl-option-ids-context-reason-key");
    }

    intValue = [v168 intValue];
    if (intValue)
    {
      [requestCopy setReason:intValue];
    }

    v170 = [(__CFDictionary *)theDict objectForKeyedSubscript:@"gl-option-materials-key"];
    [requestCopy setMaterials:v170];

    materials = [requestCopy materials];
    v172 = [materials description];

    v191 = v172;
    cut_dispatch_log_queue();
  }

  return v185 > 2;
}

- (BOOL)_setupInfoRequest:(id)request candidatePair:(id)pair options:(id)options
{
  requestCopy = request;
  relaySessionToken = [pair relaySessionToken];
  [requestCopy setAccessToken:relaySessionToken];
  [requestCopy setInfoFlags:7];

  return 1;
}

- (BOOL)_setupParticipantUpdateRequest:(id)request candidatePair:(id)pair options:(id)options
{
  v35 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  pairCopy = pair;
  optionsCopy = options;
  Value = 0;
  if (optionsCopy && @"gl-option-participant-update-request-type")
  {
    Value = CFDictionaryGetValue(optionsCopy, @"gl-option-participant-update-request-type");
  }

  unsignedShortValue = [Value unsignedShortValue];
  [requestCopy setOperationFlags:unsignedShortValue];
  if (unsignedShortValue)
  {
    v12 = 0;
    if (optionsCopy && @"gl-option-participant-update-blocked-participantIDs")
    {
      v12 = CFDictionaryGetValue(optionsCopy, @"gl-option-participant-update-blocked-participantIDs");
    }

    v13 = v12;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v14 = [v13 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v30;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v30 != v16)
          {
            objc_enumerationMutation(v13);
          }

          [requestCopy addParticipantIdList:{objc_msgSend(*(*(&v29 + 1) + 8 * i), "unsignedLongLongValue")}];
        }

        v15 = [v13 countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v15);
    }
  }

  v18 = 0;
  if (optionsCopy && @"gl-option-participant-update-request-counter")
  {
    v18 = CFDictionaryGetValue(optionsCopy, @"gl-option-participant-update-request-counter");
  }

  [requestCopy setSessionStateCounter:{objc_msgSend(v18, "unsignedIntValue")}];
  if (optionsCopy)
  {
    if (@"gl-option-ids-context-blob-key")
    {
      v19 = CFDictionaryGetValue(optionsCopy, @"gl-option-ids-context-blob-key");
      if (v19)
      {
        v20 = v19;
        v21 = objc_alloc_init(IDSQRProtoMaterialInfo);
        [(IDSQRProtoMaterialInfo *)v21 setMaterialType:7];
        v22 = [v20 copy];
        [(IDSQRProtoMaterialInfo *)v21 setMaterialContent:v22];

        v28 = 0;
        v23 = [MEMORY[0x1E695DEF0] dataWithBytes:&v28 length:4];
        [(IDSQRProtoMaterialInfo *)v21 setMaterialId:v23];
        v24 = objc_alloc_init(IDSQRProtoMaterial);
        [(IDSQRProtoMaterial *)v24 setReceiverParticipantId:0];
        v33 = v21;
        v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v33 count:1];
        v26 = [v25 mutableCopy];
        [(IDSQRProtoMaterial *)v24 setMaterialInfos:v26];

        [requestCopy setClientContextBlob:v24];
      }
    }
  }

  return 1;
}

- (BOOL)_setupRegisterRequest:(id)request candidatePair:(id)pair options:(id)options
{
  v74 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  pairCopy = pair;
  optionsCopy = options;
  candidatePairToken = [pairCopy candidatePairToken];
  if (candidatePairToken)
  {
    v11 = [optionsCopy objectForKeyedSubscript:@"gl-option-reliable-unicast-reliable-link-uuid"];
    v12 = v11;
    if (!v11)
    {
      v31 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A7AD9000, v31, OS_LOG_TYPE_DEFAULT, "Will not send register request due to reliable link UUID!", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"GL", @"IDS", @"Will not send register request due to reliable link UUID!", v32, v33, v34, v35, v36, *v72);
          if (_IDSShouldLog(0))
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"Will not send register request due to reliable link UUID!", v37, v38, v39, v40, *v72);
          }
        }
      }

      v20 = 0;
      goto LABEL_41;
    }

    memset(buf, 170, 16);
    [v11 getUUIDBytes:buf];
    v13 = [MEMORY[0x1E695DEF0] dataWithBytes:buf length:16];
    if (v13)
    {
      [requestCopy setE2eChannelUuid:v13];
      v14 = [optionsCopy objectForKeyedSubscript:@"gl-option-reliable-unicast-local-relay-id"];
      unsignedIntValue = [v14 unsignedIntValue];

      v16 = unsignedIntValue;
      if (unsignedIntValue)
      {
        v17 = [optionsCopy objectForKeyedSubscript:@"gl-option-reliable-unicast-remote-relay-id"];
        unsignedIntValue2 = [v17 unsignedIntValue];

        if (unsignedIntValue2)
        {
          v19 = objc_alloc_init(IDSQRProtoH3EndToEndChannelRegisterE2EChannelInfo);
          [(IDSQRProtoH3EndToEndChannelRegisterE2EChannelInfo *)v19 setQuicClientLinkId:v16];
          [(IDSQRProtoH3EndToEndChannelRegisterE2EChannelInfo *)v19 setQuicServerLinkId:unsignedIntValue2];
          [(IDSQRProtoH3EndToEndChannelRegisterE2EChannelInfo *)v19 setServerGeneratedConnectionIds:1];
          [requestCopy setChannelInfo:v19];

          v20 = 1;
LABEL_40:

LABEL_41:
          goto LABEL_42;
        }

        v61 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
        {
          *v72 = 0;
          _os_log_impl(&dword_1A7AD9000, v61, OS_LOG_TYPE_DEFAULT, "Will not send register request, invalid remote relay link ID!", v72, 2u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            _IDSLogTransport(@"GL", @"IDS", @"Will not send register request, invalid remote relay link ID!", v62, v63, v64, v65, v66, *v72);
            if (_IDSShouldLog(0))
            {
              _IDSLogV(0, @"IDSFoundation", @"GL", @"Will not send register request, invalid remote relay link ID!", v67, v68, v69, v70, *v72);
            }
          }
        }
      }

      else
      {
        v51 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
        {
          *v72 = 0;
          _os_log_impl(&dword_1A7AD9000, v51, OS_LOG_TYPE_DEFAULT, "Will not send register request, invalid local relay link ID!", v72, 2u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            _IDSLogTransport(@"GL", @"IDS", @"Will not send register request, invalid local relay link ID!", v52, v53, v54, v55, v56, *v72);
            if (_IDSShouldLog(0))
            {
              _IDSLogV(0, @"IDSFoundation", @"GL", @"Will not send register request, invalid local relay link ID!", v57, v58, v59, v60, *v72);
            }
          }
        }
      }
    }

    else
    {
      v41 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        *v72 = 0;
        _os_log_impl(&dword_1A7AD9000, v41, OS_LOG_TYPE_DEFAULT, "Will not send register request, can not convert UUID to NSData!", v72, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"GL", @"IDS", @"Will not send register request, can not convert UUID to NSData!", v42, v43, v44, v45, v46, *v72);
          if (_IDSShouldLog(0))
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"Will not send register request, can not convert UUID to NSData!", v47, v48, v49, v50, *v72);
          }
        }
      }
    }

    v20 = 0;
    goto LABEL_40;
  }

  v21 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A7AD9000, v21, OS_LOG_TYPE_DEFAULT, "Will not send register request due to invalid candidatePairToken!", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"Will not send register request due to invalid candidatePairToken!", v22, v23, v24, v25, v26, *v72);
      if (_IDSShouldLog(0))
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"Will not send register request due to invalid candidatePairToken!", v27, v28, v29, v30, *v72);
      }
    }
  }

  v20 = 0;
LABEL_42:

  return v20;
}

- (BOOL)_setupRegisterAckRequest:(id)request candidatePair:(id)pair options:(id)options
{
  v48 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  pairCopy = pair;
  optionsCopy = options;
  candidatePairToken = [pairCopy candidatePairToken];
  if (candidatePairToken)
  {
    v11 = [optionsCopy objectForKeyedSubscript:@"gl-option-reliable-unicast-reliable-link-uuid"];
    v12 = v11;
    if (v11)
    {
      memset(buf, 170, 16);
      [v11 getUUIDBytes:buf];
      v13 = [MEMORY[0x1E695DEF0] dataWithBytes:buf length:16];
      v14 = v13 != 0;
      if (v13)
      {
        [requestCopy setE2eChannelUuid:v13];
        [requestCopy setAccept:1];
      }

      else
      {
        v35 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          *v46 = 0;
          _os_log_impl(&dword_1A7AD9000, v35, OS_LOG_TYPE_DEFAULT, "Will not send register ack request, can not convert UUID to NSData!", v46, 2u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            _IDSLogTransport(@"GL", @"IDS", @"Will not send register ack request, can not convert UUID to NSData!", v36, v37, v38, v39, v40, *v46);
            if (_IDSShouldLog(0))
            {
              _IDSLogV(0, @"IDSFoundation", @"GL", @"Will not send register ack request, can not convert UUID to NSData!", v41, v42, v43, v44, *v46);
            }
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
        _os_log_impl(&dword_1A7AD9000, v25, OS_LOG_TYPE_DEFAULT, "Will not send register ack request due to invalid reliable link UUID!", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"GL", @"IDS", @"Will not send register ack request due to invalid reliable link UUID!", v26, v27, v28, v29, v30, *v46);
          if (_IDSShouldLog(0))
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"Will not send register ack request due to invalid reliable link UUID!", v31, v32, v33, v34, *v46);
          }
        }
      }

      v14 = 0;
    }
  }

  else
  {
    v15 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v15, OS_LOG_TYPE_DEFAULT, "Will not send register ack request due to invalid candidatePairToken!", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"Will not send register ack request due to invalid candidatePairToken!", v16, v17, v18, v19, v20, *v46);
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"Will not send register ack request due to invalid candidatePairToken!", v21, v22, v23, v24, *v46);
        }
      }
    }

    v14 = 0;
  }

  return v14;
}

- (BOOL)_setupPluginControlRequest:(id)request candidatePair:(id)pair options:(id)options
{
  requestCopy = request;
  pairCopy = pair;
  optionsCopy = options;
  Value = 0;
  if (optionsCopy && @"gl-option-plugin-operation")
  {
    Value = CFDictionaryGetValue(optionsCopy, @"gl-option-plugin-operation");
  }

  unsignedIntValue = [Value unsignedIntValue];
  v12 = 0;
  if (optionsCopy && @"gl-option-plugin-name")
  {
    v12 = CFDictionaryGetValue(optionsCopy, @"gl-option-plugin-name");
  }

  v13 = v12;
  v14 = 0;
  if (optionsCopy && @"gl-option-plugin-raw-public-key")
  {
    v14 = CFDictionaryGetValue(optionsCopy, @"gl-option-plugin-raw-public-key");
  }

  v15 = v14;
  [requestCopy setPluginOperation:unsignedIntValue];
  [requestCopy setPluginName:v13];
  [requestCopy setPluginClientRawPublicKey:v15];

  return 1;
}

- (BOOL)_setupSessionInfoRequest:(id)request candidatePair:(id)pair options:(id)options
{
  requestCopy = request;
  pairCopy = pair;
  optionsCopy = options;
  isSharedQRSession = [pairCopy isSharedQRSession];
  if (isSharedQRSession)
  {
    Value = 0;
    if (optionsCopy && @"gl-option-sessioninfo-request-type")
    {
      Value = CFDictionaryGetValue(optionsCopy, @"gl-option-sessioninfo-request-type");
    }

    if ([Value intValue] == 2)
    {
      v12 = 0;
      if (optionsCopy && @"gl-option-sessioninfo-generation-counter")
      {
        v12 = CFDictionaryGetValue(optionsCopy, @"gl-option-sessioninfo-generation-counter");
      }

      [requestCopy setGenerationCounter:{objc_msgSend(v12, "unsignedIntValue")}];
      v13 = 0;
      if (optionsCopy && @"gl-option-sessioninfo-published-streams")
      {
        v13 = CFDictionaryGetValue(optionsCopy, @"gl-option-sessioninfo-published-streams");
      }

      v14 = v13;
      v15 = 0;
      if (optionsCopy && @"gl-option-sessioninfo-subscribed-streams")
      {
        v15 = CFDictionaryGetValue(optionsCopy, @"gl-option-sessioninfo-subscribed-streams");
      }

      v16 = v15;
      v17 = 0;
      if (optionsCopy && @"gl-option-sessioninfo-max-concurrent-streams")
      {
        v17 = CFDictionaryGetValue(optionsCopy, @"gl-option-sessioninfo-max-concurrent-streams");
      }

      sub_1A7C3A534(requestCopy, v14, v16, [v17 unsignedCharValue]);
      v18 = 0;
      if (optionsCopy && @"gl-option-sessioninfo-relay-link-id")
      {
        v18 = CFDictionaryGetValue(optionsCopy, @"gl-option-sessioninfo-relay-link-id");
      }

      unsignedShortValue = [v18 unsignedShortValue];
      if (unsignedShortValue)
      {
        [requestCopy setLinkId:unsignedShortValue];
      }
    }

    v20 = 0;
    if (optionsCopy && @"gl-option-sessioninfo-command-flag")
    {
      v20 = CFDictionaryGetValue(optionsCopy, @"gl-option-sessioninfo-command-flag");
    }

    unsignedIntValue = [v20 unsignedIntValue];
    if (unsignedIntValue)
    {
      [requestCopy setCommandFlags:unsignedIntValue];
    }

    v22 = 0;
    if (optionsCopy && @"gl-option-sessioninfo-request-id")
    {
      v22 = CFDictionaryGetValue(optionsCopy, @"gl-option-sessioninfo-request-id");
    }

    unsignedIntValue2 = [v22 unsignedIntValue];
    if (unsignedIntValue2)
    {
      [requestCopy setRequestId:unsignedIntValue2];
    }
  }

  else
  {
    v24 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *v35 = 0;
      _os_log_impl(&dword_1A7AD9000, v24, OS_LOG_TYPE_DEFAULT, "session-info is not allowed in non-shared QR session", v35, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"session-info is not allowed in non-shared QR session", v25, v26, v27, v28, v29, *v35);
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"session-info is not allowed in non-shared QR session", v30, v31, v32, v33, *v35);
        }
      }
    }
  }

  return isSharedQRSession;
}

- (BOOL)_setupPutmaterialRequest:(id)request candidatePair:(id)pair options:(id)options
{
  optionsCopy = options;
  requestCopy = request;
  v8 = [optionsCopy objectForKeyedSubscript:@"gl-option-materials-key"];
  [requestCopy setMaterials:v8];

  v9 = [optionsCopy objectForKeyedSubscript:@"gl-option-materials-key"];

  v10 = [v9 description];

  v11 = v10;
  cut_dispatch_log_queue();

  return 1;
}

- (BOOL)_setupCallModeUpdateRequest:(id)request candidatePair:(id)pair options:(id)options
{
  requestCopy = request;
  v7 = [options objectForKeyedSubscript:@"gl-option-call-mode-update-info-key"];
  [requestCopy setCallModeInfo:v7];

  return 1;
}

- (BOOL)_setupStatsRequest:(id)request candidatePair:(id)pair options:(id)options
{
  requestCopy = request;
  optionsCopy = options;
  startTime = self->_startTime;
  pairCopy = pair;
  v12 = ntpTime32(startTime);
  [pairCopy serverLatency];
  v14 = v13;

  v15 = v14 * 1000.0;
  [requestCopy setClientTimestampNtp:v12];
  Value = 0;
  if (optionsCopy && @"report-p2p-session-key")
  {
    Value = CFDictionaryGetValue(optionsCopy, @"report-p2p-session-key");
  }

  if ([Value BOOLValue])
  {
    [requestCopy setP2pConnection:1];
  }

  if (v15)
  {
    [requestCopy setClientLatencyMs:v15];
  }

  if (optionsCopy && @"gl-option-stats-sent-packets" && CFDictionaryGetValue(optionsCopy, @"gl-option-stats-sent-packets"))
  {
    goto LABEL_15;
  }

  if (!optionsCopy || !@"gl-option-stats-received-packets" || !CFDictionaryGetValue(optionsCopy, @"gl-option-stats-received-packets"))
  {
    goto LABEL_20;
  }

  if (@"gl-option-stats-sent-packets")
  {
LABEL_15:
    v17 = CFDictionaryGetValue(optionsCopy, @"gl-option-stats-sent-packets");
  }

  else
  {
    v17 = 0;
  }

  [requestCopy setSentPackets:{objc_msgSend(v17, "unsignedIntValue")}];
  if (@"gl-option-stats-received-packets")
  {
    v18 = CFDictionaryGetValue(optionsCopy, @"gl-option-stats-received-packets");
  }

  else
  {
    v18 = 0;
  }

  [requestCopy setReceivedPackets:{objc_msgSend(v18, "unsignedIntValue")}];
LABEL_20:

  return 1;
}

- (BOOL)_setupTestRequest:(id)request candidatePair:(id)pair options:(id)options
{
  v37 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  pairCopy = pair;
  optionsCopy = options;
  Value = 0;
  if (optionsCopy && @"gl-option-test-options-flags")
  {
    Value = CFDictionaryGetValue(optionsCopy, @"gl-option-test-options-flags");
  }

  unsignedIntValue = [Value unsignedIntValue];
  v12 = 0;
  if (optionsCopy && @"gl-option-test-requested-message-type")
  {
    v12 = CFDictionaryGetValue(optionsCopy, @"gl-option-test-requested-message-type");
  }

  unsignedIntValue2 = [v12 unsignedIntValue];
  v14 = 0;
  if (optionsCopy && @"gl-option-test-requested-error-code-type")
  {
    v14 = CFDictionaryGetValue(optionsCopy, @"gl-option-test-requested-error-code-type");
  }

  unsignedIntValue3 = [v14 unsignedIntValue];
  v16 = 0;
  if (optionsCopy && @"gl-option-test-sub-operation")
  {
    v16 = CFDictionaryGetValue(optionsCopy, @"gl-option-test-sub-operation");
  }

  v17 = v16;
  [requestCopy setTestOptionFlags:unsignedIntValue];
  if (unsignedIntValue == 8)
  {
    v18 = unsignedIntValue2;
    [requestCopy setRequestedMessageType:unsignedIntValue2];
    v19 = unsignedIntValue3;
    [requestCopy setRequestedErrorCode:unsignedIntValue3];
    v20 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109632;
      v32 = 8;
      v33 = 1024;
      v34 = v18;
      v35 = 1024;
      v36 = v19;
      _os_log_impl(&dword_1A7AD9000, v20, OS_LOG_TYPE_DEFAULT, "testOptions: %u, requestedMessageType: %u, requestedErrorCode: %u", buf, 0x14u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"testOptions: %u, requestedMessageType: %u, requestedErrorCode: %u", v21, v22, v23, v24, v25, 8);
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"testOptions: %u, requestedMessageType: %u, requestedErrorCode: %u", v26, v27, v28, v29, 8);
        }
      }
    }
  }

  [requestCopy setSubOperation:v17];

  return 1;
}

- (BOOL)_setupUnallocbindRequest:(id)request candidatePair:(id)pair options:(id)options
{
  requestCopy = request;
  pairCopy = pair;
  optionsCopy = options;
  v10 = optionsCopy;
  if (optionsCopy)
  {
    if (@"gl-option-ids-context-blob-key")
    {
      v11 = CFDictionaryGetValue(optionsCopy, @"gl-option-ids-context-blob-key");
      if (v11)
      {
        v12 = v11;
        [requestCopy setClientContextBlob:v11];
      }
    }
  }

  Value = 0;
  if (v10 && @"gl-option-ids-context-reason-key")
  {
    Value = CFDictionaryGetValue(v10, @"gl-option-ids-context-reason-key");
  }

  [requestCopy setReason:{objc_msgSend(Value, "intValue")}];

  return 1;
}

- (BOOL)_setupChannelConfigRequest:(id)request candidatePair:(id)pair options:(id)options
{
  requestCopy = request;
  pairCopy = pair;
  optionsCopy = options;
  Value = 0;
  if (optionsCopy && @"gl-option-channel-config-override-idle-timeout-key")
  {
    Value = CFDictionaryGetValue(optionsCopy, @"gl-option-channel-config-override-idle-timeout-key");
  }

  [requestCopy setOverrideIdleTimeoutSeconds:{objc_msgSend(Value, "unsignedIntValue")}];
  v11 = 0;
  if (optionsCopy && @"gl-option-channel-config-counter-key")
  {
    v11 = CFDictionaryGetValue(optionsCopy, @"gl-option-channel-config-counter-key");
  }

  [requestCopy setConfigCounter:{objc_msgSend(v11, "unsignedIntValue")}];

  return 1;
}

- (IDSQRProtoMessage)initWithData:(id)data
{
  v31 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v26.receiver = self;
  v26.super_class = IDSQRProtoMessage;
  v5 = [(IDSQRProtoMessage *)&v26 init];
  if (v5)
  {
    *(v5 + 3) = ids_monotonic_time();
    v6 = [[IDSQRProtoH3Message alloc] initWithData:dataCopy];
    v7 = *(v5 + 1);
    *(v5 + 1) = v6;

    v8 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(v5 + 1);
      *buf = 138412546;
      v28 = v9;
      v29 = 2112;
      v30 = dataCopy;
      _os_log_impl(&dword_1A7AD9000, v8, OS_LOG_TYPE_DEFAULT, "created proto message %@ with %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"created proto message %@ with %@", v10, v11, v12, v13, v14, *(v5 + 1));
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"created proto message %@ with %@", v15, v16, v17, v18, *(v5 + 1));
        }
      }
    }

    v19 = [*(v5 + 1) description];
    v20 = [dataCopy debugDescription];
    v21 = v19;
    v22 = v20;
    cut_dispatch_log_queue();
    v23 = *(v5 + 1);
    if (!v23 || ![v23 hasInnerMessage])
    {

      v24 = 0;
      goto LABEL_13;
    }
  }

  v24 = v5;
LABEL_13:

  return v24;
}

- (id)allocbindResponse
{
  if ([(IDSQRProtoH3Message *)self->_message innerMessage]== 2 && [(IDSQRProtoH3Message *)self->_message hasAllocbindResponse])
  {
    allocbindResponse = [(IDSQRProtoH3Message *)self->_message allocbindResponse];
  }

  else
  {
    allocbindResponse = 0;
  }

  return allocbindResponse;
}

- (id)infoResponse
{
  if ([(IDSQRProtoH3Message *)self->_message hasInfoResponse])
  {
    infoResponse = [(IDSQRProtoH3Message *)self->_message infoResponse];
  }

  else
  {
    infoResponse = 0;
  }

  return infoResponse;
}

- (id)participantUpdateResponse
{
  if ([(IDSQRProtoH3Message *)self->_message hasParticipantupdateResponse])
  {
    participantupdateResponse = [(IDSQRProtoH3Message *)self->_message participantupdateResponse];
  }

  else
  {
    participantupdateResponse = 0;
  }

  return participantupdateResponse;
}

- (id)pluginControlResponse
{
  if ([(IDSQRProtoH3Message *)self->_message hasPlugincontrolResponse])
  {
    plugincontrolResponse = [(IDSQRProtoH3Message *)self->_message plugincontrolResponse];
  }

  else
  {
    plugincontrolResponse = 0;
  }

  return plugincontrolResponse;
}

- (id)sessionInfoResponse
{
  if ([(IDSQRProtoH3Message *)self->_message hasSessioninfoResponse])
  {
    sessioninfoResponse = [(IDSQRProtoH3Message *)self->_message sessioninfoResponse];
  }

  else
  {
    sessioninfoResponse = 0;
  }

  return sessioninfoResponse;
}

- (id)getMaterialResponse
{
  if ([(IDSQRProtoH3Message *)self->_message hasGetmaterialResponse])
  {
    getmaterialResponse = [(IDSQRProtoH3Message *)self->_message getmaterialResponse];
  }

  else
  {
    getmaterialResponse = 0;
  }

  return getmaterialResponse;
}

- (id)putMaterialResponse
{
  if ([(IDSQRProtoH3Message *)self->_message hasPutmaterialResponse])
  {
    putmaterialResponse = [(IDSQRProtoH3Message *)self->_message putmaterialResponse];
  }

  else
  {
    putmaterialResponse = 0;
  }

  return putmaterialResponse;
}

- (id)callModeUpdateResponse
{
  if ([(IDSQRProtoH3Message *)self->_message hasCallmodeupdateResponse])
  {
    callmodeupdateResponse = [(IDSQRProtoH3Message *)self->_message callmodeupdateResponse];
  }

  else
  {
    callmodeupdateResponse = 0;
  }

  return callmodeupdateResponse;
}

- (id)statsResponse
{
  if ([(IDSQRProtoH3Message *)self->_message hasStatsResponse])
  {
    statsResponse = [(IDSQRProtoH3Message *)self->_message statsResponse];
  }

  else
  {
    statsResponse = 0;
  }

  return statsResponse;
}

- (id)testResponse
{
  if ([(IDSQRProtoH3Message *)self->_message hasTestResponse])
  {
    testResponse = [(IDSQRProtoH3Message *)self->_message testResponse];
  }

  else
  {
    testResponse = 0;
  }

  return testResponse;
}

- (id)unallocbindResponse
{
  if ([(IDSQRProtoH3Message *)self->_message hasUnallocbindResponse])
  {
    unallocbindResponse = [(IDSQRProtoH3Message *)self->_message unallocbindResponse];
  }

  else
  {
    unallocbindResponse = 0;
  }

  return unallocbindResponse;
}

- (id)diagnosticIndication
{
  if ([(IDSQRProtoH3Message *)self->_message hasDiagnosticIndication])
  {
    diagnosticIndication = [(IDSQRProtoH3Message *)self->_message diagnosticIndication];
  }

  else
  {
    diagnosticIndication = 0;
  }

  return diagnosticIndication;
}

- (id)errorIndication
{
  if ([(IDSQRProtoH3Message *)self->_message hasErrorIndication])
  {
    errorIndication = [(IDSQRProtoH3Message *)self->_message errorIndication];
  }

  else
  {
    errorIndication = 0;
  }

  return errorIndication;
}

- (id)goAwayIndication
{
  if ([(IDSQRProtoH3Message *)self->_message hasGoawayIndication])
  {
    goawayIndication = [(IDSQRProtoH3Message *)self->_message goawayIndication];
  }

  else
  {
    goawayIndication = 0;
  }

  return goawayIndication;
}

- (id)participantUpdateIndication
{
  if ([(IDSQRProtoH3Message *)self->_message hasParticipantupdateIndication])
  {
    participantupdateIndication = [(IDSQRProtoH3Message *)self->_message participantupdateIndication];
  }

  else
  {
    participantupdateIndication = 0;
  }

  return participantupdateIndication;
}

- (id)pluginControlIndication
{
  if ([(IDSQRProtoH3Message *)self->_message hasPlugincontrolIndication])
  {
    plugincontrolIndication = [(IDSQRProtoH3Message *)self->_message plugincontrolIndication];
  }

  else
  {
    plugincontrolIndication = 0;
  }

  return plugincontrolIndication;
}

- (id)reallocateIndication
{
  if ([(IDSQRProtoH3Message *)self->_message hasReallocateIndication])
  {
    reallocateIndication = [(IDSQRProtoH3Message *)self->_message reallocateIndication];
  }

  else
  {
    reallocateIndication = 0;
  }

  return reallocateIndication;
}

- (id)sessionInfoIndication
{
  if ([(IDSQRProtoH3Message *)self->_message hasSessioninfoIndication])
  {
    sessioninfoIndication = [(IDSQRProtoH3Message *)self->_message sessioninfoIndication];
  }

  else
  {
    sessioninfoIndication = 0;
  }

  return sessioninfoIndication;
}

- (id)putMaterialIndication
{
  if ([(IDSQRProtoH3Message *)self->_message hasPutmaterialIndication])
  {
    putmaterialIndication = [(IDSQRProtoH3Message *)self->_message putmaterialIndication];
  }

  else
  {
    putmaterialIndication = 0;
  }

  return putmaterialIndication;
}

- (id)registerIndication
{
  if ([(IDSQRProtoH3Message *)self->_message hasRegisterIndication])
  {
    registerIndication = [(IDSQRProtoH3Message *)self->_message registerIndication];
  }

  else
  {
    registerIndication = 0;
  }

  return registerIndication;
}

- (id)registerResponse
{
  if ([(IDSQRProtoH3Message *)self->_message hasRegisterResponse])
  {
    registerResponse = [(IDSQRProtoH3Message *)self->_message registerResponse];
  }

  else
  {
    registerResponse = 0;
  }

  return registerResponse;
}

- (id)channelConfigResponse
{
  if ([(IDSQRProtoH3Message *)self->_message hasChannelconfigResponse])
  {
    channelconfigResponse = [(IDSQRProtoH3Message *)self->_message channelconfigResponse];
  }

  else
  {
    channelconfigResponse = 0;
  }

  return channelconfigResponse;
}

+ (id)dataWithEmptyUnAllocBindResponse
{
  v2 = objc_alloc_init(IDSQRProtoH3Message);
  v3 = objc_alloc_init(IDSQRProtoUnAllocBindResponse);
  [(IDSQRProtoH3Message *)v2 setUnallocbindResponse:v3];

  data = [(IDSQRProtoH3Message *)v2 data];

  return data;
}

@end