@interface RPConnection
- (BOOL)_clientError:(id)error;
- (BOOL)_pairVerifyVerifySignature:(id)signature data:(id)data flags:(unsigned int)flags error:(id *)error;
- (BOOL)_receivedSystemInfo:(id)info xid:(id)xid;
- (BOOL)_serverPairingAllowed;
- (BOOL)containsInUseProcess:(int)process;
- (RPConnection)init;
- (id)_allowedMACAddressesForMCFeature:(id)feature;
- (id)_getCurrentProcessName;
- (id)_identityProofDataClient;
- (id)_identityProofDataServer;
- (id)_pairVerifySignData:(id)data flags:(unsigned int)flags error:(id *)error;
- (id)_systeminfo;
- (id)descriptionWithLevel:(int)level;
- (id)inUseProcessesToString;
- (unint64_t)_eligiblePendingSendCount;
- (void)_abortRequestsWithError:(id)error;
- (void)_abortSendEntry:(id)entry withError:(id)error;
- (void)_clientConnectCompleted:(id)completed;
- (void)_clientConnectStart;
- (void)_clientConnectStartBLE;
- (void)_clientConnectStartBTPipe;
- (void)_clientConnectStartTCP;
- (void)_clientNetworkError:(id)error label:(const char *)label;
- (void)_clientPairSetupCompleted:(id)completed;
- (void)_clientPairSetupPromptWithFlags:(unsigned int)flags throttleSeconds:(int)seconds handler:(id)handler;
- (void)_clientPairSetupStart;
- (void)_clientPairSetupWithData:(id)data;
- (void)_clientPairVerifyCompleted:(id)completed;
- (void)_clientPairVerifyStart;
- (void)_clientPairVerifyWithData:(id)data;
- (void)_clientPreAuthResponseWithData:(id)data;
- (void)_clientPreAuthStart;
- (void)_clientRetryFired;
- (void)_clientRetryStart;
- (void)_clientRun;
- (void)_clientStartSession;
- (void)_clientStarted;
- (void)_configureForSessionPairing:(id)pairing;
- (void)_identityProofsAdd:(id)add update:(BOOL)update;
- (void)_identityProofsAddWithHomeKitUUID:(id)d;
- (void)_identityProofsVerify:(id)verify;
- (void)_identityProofsVerifyHomeKitSignature:(id)signature identifier:(id)identifier;
- (void)_identityProofsVerifyHomeKitSignatureOwner:(id)owner completion:(id)completion;
- (void)_identityProofsVerifyHomeKitSignatureSharedUser:(id)user identifier:(id)identifier completion:(id)completion;
- (void)_idleTimerFired;
- (void)_idleTimerStart:(unsigned int)start repeat:(unsigned int)repeat;
- (void)_invalidate;
- (void)_invalidateCore:(id)core;
- (void)_invalidateWithError:(id)error;
- (void)_invalidated;
- (void)_logConnectionInvalidatedWithError:(id)error;
- (void)_pairSetupInvalidate;
- (void)_pairVerifyInvalidate;
- (void)_processSends;
- (void)_pskPrepare:(BOOL)prepare;
- (void)_receiveCompletion:(id)completion readFrame:(id *)frame requestable:(id)requestable;
- (void)_receiveStart:(id)start readFrame:(id *)frame requestable:(id)requestable;
- (void)_receivedEvent:(id)event ctx:(id *)ctx;
- (void)_receivedHeader:(id *)header body:(id)body ctx:(id *)ctx;
- (void)_receivedHeader:(id *)header encryptedObjectData:(id)data ctx:(id *)ctx;
- (void)_receivedObject:(id)object ctx:(id *)ctx;
- (void)_receivedRequest:(id)request ctx:(id *)ctx;
- (void)_receivedResponse:(id)response ctx:(id *)ctx;
- (void)_run;
- (void)_sendEncryptedEventID:(id)d data:(id)data xid:(unsigned int)xid options:(id)options completion:(id)completion;
- (void)_sendEncryptedRequestID:(id)d request:(id)request xpcID:(unsigned int)iD options:(id)options sendEntry:(id)entry responseHandler:(id)handler;
- (void)_sendEncryptedResponse:(id)response options:(id)options error:(id)error xid:(id)xid requestID:(id)d highPriority:(BOOL)priority isChatty:(BOOL)chatty replyStartTime:(id)self0;
- (void)_sendFrameType:(unsigned __int8)type body:(id)body;
- (void)_sendFrameType:(unsigned __int8)type unencryptedObject:(id)object;
- (void)_serverAccept;
- (void)_serverAcceptBLE;
- (void)_serverAcceptBTPipe;
- (void)_serverAcceptTCP;
- (void)_serverError:(id)error;
- (void)_serverNetworkError:(id)error label:(const char *)label;
- (void)_serverPairSetupCompleted:(id)completed;
- (void)_serverPairSetupWithData:(id)data start:(BOOL)start;
- (void)_serverPairVerifyCompleted:(id)completed;
- (void)_serverPairVerifyWithData:(id)data start:(BOOL)start;
- (void)_serverPreAuthRequestWithData:(id)data;
- (void)_serverRun;
- (void)_serverStarted;
- (void)_timeoutForSendEntry:(id)entry;
- (void)_timeoutForXID:(id)d;
- (void)_updateExternalState;
- (void)_updateLinkInfo;
- (void)activate;
- (void)addInUseProcess:(int)process;
- (void)dealloc;
- (void)homeKitIdentityUpdated;
- (void)invalidate;
- (void)invalidateWithError:(id)error;
- (void)processSendsUsingConnection:(id)connection;
- (void)removeInUseProcess:(int)process;
- (void)sameAccountIdentityUpdated;
- (void)sendEncryptedEventID:(id)d data:(id)data xid:(unsigned int)xid options:(id)options completion:(id)completion;
- (void)sendEncryptedEventID:(id)d event:(id)event options:(id)options completion:(id)completion;
- (void)sendEncryptedRequestID:(id)d request:(id)request xpcID:(unsigned int)iD options:(id)options responseHandler:(id)handler;
- (void)sendReachabilityProbe:(const char *)probe;
- (void)setFlowControlReadEnabled:(BOOL)enabled;
- (void)setLabel:(id)label;
- (void)setPresent:(BOOL)present;
- (void)setTrafficFlags:(unsigned int)flags;
- (void)tryPassword:(id)password;
@end

@implementation RPConnection

- (void)sameAccountIdentityUpdated
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_pairVerifyCompleted || (self->_controlFlags & 0x200) != 0 || (self->_flags & 1) != 0 || (self->_statusFlags & 0x80000) != 0)
  {
    return;
  }

  v3 = self->_identityDaemon;
  v4 = v3;
  if (v3)
  {
    if (self->_identityKeyData && self->_identitySignature)
    {
      v12 = v3;
      v5 = ([RPIdentityDaemon resolveIdentityTypesForSignature:v3 data:"resolveIdentityTypesForSignature:data:typeFlags:" typeFlags:?]<< 18) & 0x80000;
      [(RPEndpoint *)self->_peerDeviceInfo setStatusFlags:[(RPEndpoint *)self->_peerDeviceInfo statusFlags]| v5];
      statusFlags = self->_statusFlags | v5;
      self->_statusFlags = statusFlags;
      ucat = self->_ucat;
      if (ucat->var0 <= 30)
      {
        if (ucat->var0 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_18;
          }

          ucat = self->_ucat;
          statusFlags = self->_statusFlags;
        }

        LogPrintF(ucat, "[RPConnection sameAccountIdentityUpdated]", 30, "SA Identity Update: adding %#ll{flags}, now status flags %#ll{flags}\n", v5, &unk_1B6F2DEF3, statusFlags, &unk_1B6F2DEF3);
      }

LABEL_18:
      v10 = _Block_copy(self->_peerUpdatedHandler);
      v11 = v10;
      if (v10)
      {
        (*(v10 + 2))(v10);
      }

      goto LABEL_21;
    }

    v8 = self->_ucat;
    if (v8->var0 <= 30)
    {
      v12 = v4;
      if (v8->var0 != -1)
      {
LABEL_14:
        LogPrintF(v8, "[RPConnection sameAccountIdentityUpdated]", 30, "SA Identity Update: nothing to verify\n");
LABEL_21:
        v4 = v12;
        goto LABEL_22;
      }

      v9 = _LogCategory_Initialize();
      v4 = v12;
      if (v9)
      {
        v8 = self->_ucat;
        goto LABEL_14;
      }
    }
  }

LABEL_22:
}

- (RPConnection)init
{
  v12.receiver = self;
  v12.super_class = RPConnection;
  v2 = [(RPConnection *)&v12 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x1E69E96A0]);
    v3->_flowControlReadEnabled = 1;
    v4 = objc_alloc_init(RPCompanionLinkDevice);
    peerDeviceInfo = v3->_peerDeviceInfo;
    v3->_peerDeviceInfo = v4;

    [(RPCompanionLinkDevice *)v3->_peerDeviceInfo setDaemon:1];
    *&v3->_pairSetupFlags = 0x40000000000018;
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    sendArray = v3->_sendArray;
    v3->_sendArray = v6;

    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    receivedMessages = v3->_receivedMessages;
    v3->_receivedMessages = v8;

    v3->_ucat = &gLogCategory_RPCnx;
    RandomBytes();
    v3->_readFrame.header = 0;
    *&v3->_readFrame.receivingHeader = 0;
    v3->_readFrameBTPipeHighPriority.header = 0;
    *&v3->_readFrameBTPipeHighPriority.receivingHeader = 0;
    v10 = v3;
  }

  return v3;
}

- (void)dealloc
{
  ucat = self->_ucat;
  if (ucat && (ucat->var3 & 0x40000) != 0)
  {
    LogCategory_Remove();
    self->_ucat = 0;
  }

  v4.receiver = self;
  v4.super_class = RPConnection;
  [(RPConnection *)&v4 dealloc];
}

- (id)descriptionWithLevel:(int)level
{
  v176 = *MEMORY[0x1E69E9840];
  if (level <= 49)
  {
    v5 = 100;
  }

  else
  {
    v5 = 8;
  }

  v6 = self->_peerDeviceInfo;
  v8 = shouldPrintSensitiveData(v6, v7);
  v174 = 0;
  label = self->_label;
  if (!label)
  {
    label = @"CLinkCnx-?";
  }

  NSAppendPrintF(&v174, "%@", label);
  v10 = v174;
  v173 = v10;
  v11 = _StateToString(self->_internalState);
  NSAppendPrintF(&v173, ", %s", v11);
  v12 = v173;

  linkType = self->_linkType;
  if (linkType)
  {
    v172 = v12;
    if (linkType > 0xB)
    {
      v14 = "?";
    }

    else
    {
      v14 = off_1E7C93DE8[linkType - 1];
    }

    NSAppendPrintF(&v172, ", LT %s", v14);
    v15 = v172;

    v12 = v15;
  }

  trafficFlags = self->_trafficFlags;
  if (trafficFlags)
  {
    v171 = v12;
    NSAppendPrintF(&v171, ", TF %#{flags}", trafficFlags, &unk_1B6F2DBC8);
    v17 = v171;

    v12 = v17;
  }

  if (self->_pairVerifyCompleted)
  {
    if (self->_pairVerifyUsedIdentity)
    {
      v170 = v12;
      v18 = &v170;
      NSAppendPrintF(&v170, ", PV-RPI");
    }

    else
    {
      v169 = v12;
      v18 = &v169;
      NSAppendPrintF(&v169, ", PV-HK");
    }
  }

  else
  {
    if (!self->_mainStream)
    {
      goto LABEL_20;
    }

    v168 = v12;
    v18 = &v168;
    NSAppendPrintF(&v168, ", PS");
  }

  v19 = *v18;

  v12 = v19;
LABEL_20:
  passwordType = self->_passwordType;
  if (passwordType)
  {
    v167 = v12;
    if (passwordType > 0xB)
    {
      v21 = "?";
    }

    else
    {
      v21 = off_1E7C93E40[passwordType - 1];
    }

    NSAppendPrintF(&v167, ", PWType %s", v21);
    v22 = v167;

    v12 = v22;
  }

  pairVerifyAuthType = self->_pairVerifyAuthType;
  if (pairVerifyAuthType)
  {
    v166 = v12;
    if (pairVerifyAuthType > 0xA)
    {
      v24 = "?";
    }

    else
    {
      v24 = off_1E7C93E98[pairVerifyAuthType - 1];
    }

    NSAppendPrintF(&v166, ", PVAuth %s", v24);
    v25 = v166;

    v12 = v25;
  }

  retryCount = self->_retryCount;
  if (retryCount > 0)
  {
    v165 = v12;
    NSAppendPrintF(&v165, ", Retry %d", retryCount);
    v27 = v165;

    v12 = v27;
  }

  v28 = self->_stepError;
  v29 = v28;
  if (v28)
  {
    v164 = v12;
    NSAppendPrintF(&v164, ", %{error}", v28);
    v30 = v164;

    v12 = v30;
  }

  inUseProcessesToString = [(RPConnection *)self inUseProcessesToString];
  v32 = inUseProcessesToString;
  if (inUseProcessesToString)
  {
    v163 = v12;
    NSAppendPrintF(&v163, ", Processes [ %@ ]", inUseProcessesToString);
    v33 = v163;

    v12 = v33;
  }

  if (v8)
  {
    v162 = v12;
    peerIdentifier = self->_peerIdentifier;
    if (peerIdentifier)
    {
      v35 = 0;
      publicIdentifier = self->_peerIdentifier;
    }

    else
    {
      identifier = [(RPEndpoint *)v6 identifier];
      v32 = identifier;
      if (identifier)
      {
        v35 = 0;
        publicIdentifier = identifier;
      }

      else
      {
        publicIdentifier = [(RPCompanionLinkDevice *)v6 publicIdentifier];
        v35 = 1;
      }
    }

    NSAppendPrintF(&v162, ", ID %@", publicIdentifier);
    v38 = v162;

    if (v35)
    {
    }

    if (!peerIdentifier)
    {
    }

    idsDeviceIdentifier = [(RPEndpoint *)v6 idsDeviceIdentifier];
    v40 = idsDeviceIdentifier;
    if (idsDeviceIdentifier)
    {
      v161 = v38;
      NSAppendPrintF(&v161, ", IDS '%.*@'", v5, idsDeviceIdentifier);
      v41 = v161;

      v38 = v41;
    }

    v160 = v38;
    name = [(RPEndpoint *)v6 name];
    NSAppendPrintF(&v160, ", Nm '%@'", name);
    v43 = v160;

    v159 = v43;
    model = [(RPEndpoint *)v6 model];
    NSAppendPrintF(&v159, ", Md '%@'", model);
    v45 = v159;

    v158 = v45;
    accountID = [(RPEndpoint *)v6 accountID];
    NSAppendPrintF(&v158, ", AID '%@'", accountID);
    v12 = v158;

    v47 = self->_appID;
    v48 = v47;
    if (v47)
    {
      v157 = v12;
      NSAppendPrintF(&v157, ", AppID '%@'", v47);
      v49 = v157;

      v12 = v49;
    }

    idsPersonalDeviceIdentifier = [(RPCompanionLinkDevice *)v6 idsPersonalDeviceIdentifier];
    v51 = idsPersonalDeviceIdentifier;
    if (idsPersonalDeviceIdentifier)
    {
      v156 = v12;
      NSAppendPrintF(&v156, ", IDP '%@'", idsPersonalDeviceIdentifier);
      v52 = v156;

      v12 = v52;
    }

    homeKitIdentifier = [(RPCompanionLinkDevice *)v6 homeKitIdentifier];
    v54 = homeKitIdentifier;
    if (homeKitIdentifier)
    {
      v155 = v12;
      NSAppendPrintF(&v155, ", HKI '%@'", homeKitIdentifier);
      v55 = v155;

      v12 = v55;
    }

    mediaRemoteIdentifier = [(RPEndpoint *)v6 mediaRemoteIdentifier];
    v57 = mediaRemoteIdentifier;
    if (mediaRemoteIdentifier)
    {
      v154 = v12;
      NSAppendPrintF(&v154, ", MRI '%@'", mediaRemoteIdentifier);
      v58 = v154;

      v12 = v58;
    }

    mediaRouteIdentifier = [(RPEndpoint *)v6 mediaRouteIdentifier];
    v60 = mediaRouteIdentifier;
    if (mediaRouteIdentifier)
    {
      v153 = v12;
      NSAppendPrintF(&v153, ", MRtI '%@'", mediaRouteIdentifier);
      v61 = v153;

      v12 = v61;
    }

    mediaSystemIdentifier = [(RPCompanionLinkDevice *)v6 mediaSystemIdentifier];
    v63 = mediaSystemIdentifier;
    if (mediaSystemIdentifier)
    {
      v152 = v12;
      NSAppendPrintF(&v152, ", MSi '%@'", mediaSystemIdentifier);
      v64 = v152;

      v12 = v64;
    }

    mediaSystemName = [(RPCompanionLinkDevice *)v6 mediaSystemName];
    v66 = mediaSystemName;
    if (mediaSystemName)
    {
      v151 = v12;
      NSAppendPrintF(&v151, ", MSn '%@'", mediaSystemName);
      v67 = v151;

      v12 = v67;
    }

    mediaSystemRole = [(RPCompanionLinkDevice *)v6 mediaSystemRole];
    if (mediaSystemRole)
    {
      v150 = v12;
      if (mediaSystemRole > 3)
      {
        v69 = "?";
      }

      else
      {
        v69 = off_1E7C93EE8[mediaSystemRole - 1];
      }

      NSAppendPrintF(&v150, ", MSr %s", v69);
      v70 = v150;

      v12 = v70;
    }

    mediaSystemState = [(RPCompanionLinkDevice *)v6 mediaSystemState];
    if (mediaSystemState)
    {
      v149 = v12;
      if (mediaSystemState > 4)
      {
        v72 = "?";
      }

      else
      {
        v72 = off_1E7C93F00[mediaSystemState - 1];
      }

      NSAppendPrintF(&v149, ", MSs %s", v72);
      v73 = v149;

      v12 = v73;
    }

    personalDeviceState = [(RPCompanionLinkDevice *)v6 personalDeviceState];
    if (personalDeviceState)
    {
      v148 = v12;
      if (personalDeviceState >= 8)
      {
        v75 = "-";
        if (personalDeviceState > 9)
        {
          v75 = "U";
        }
      }

      else
      {
        v75 = off_1E7C93F20[personalDeviceState - 1];
      }

      NSAppendPrintF(&v148, ", PDS %s", v75);
      v76 = v148;

      v12 = v76;
    }

    v77 = self->_peerHomeKitUserIdentifier;
    v78 = v77;
    if (v77)
    {
      v147 = v12;
      NSAppendPrintF(&v147, ", PHKUI %@", v77);
      v79 = v147;

      v12 = v79;
    }

    publicIdentifier2 = [(RPCompanionLinkDevice *)v6 publicIdentifier];
    v81 = publicIdentifier2;
    if (publicIdentifier2)
    {
      v146 = v12;
      NSAppendPrintF(&v146, ", PI %@", publicIdentifier2);
      v82 = v146;

      v12 = v82;
    }

    personalRequestsState = [(RPCompanionLinkDevice *)v6 personalRequestsState];
    if (personalRequestsState)
    {
      v145 = v12;
      if (personalRequestsState >= 8)
      {
        v84 = "-";
        if (personalRequestsState > 9)
        {
          v84 = "U";
        }
      }

      else
      {
        v84 = off_1E7C93F20[personalRequestsState - 1];
      }

      NSAppendPrintF(&v145, ", PRS %s", v84);
      v85 = v145;

      v12 = v85;
    }

    roomName = [(RPCompanionLinkDevice *)v6 roomName];
    v87 = roomName;
    if (roomName)
    {
      v144 = v12;
      NSAppendPrintF(&v144, ", Rm '%@'", roomName);
      v88 = v144;

      v12 = v88;
    }

    verifiedIdentity = [(RPEndpoint *)v6 verifiedIdentity];
    v90 = verifiedIdentity;
    if (verifiedIdentity)
    {
      v143 = v12;
      NSAppendPrintF(&v143, ", VI %@", verifiedIdentity);
      v91 = v143;

      v12 = v91;
    }
  }

  if (level <= 20)
  {
    controlFlags = self->_controlFlags;
    if (controlFlags)
    {
      v142 = v12;
      NSAppendPrintF(&v142, ", CF %#ll{flags}", controlFlags, &unk_1B6F2DC4E);
      v93 = v142;

      v12 = v93;
    }

    deviceColor = [(RPCompanionLinkDevice *)v6 deviceColor];
    v95 = deviceColor;
    if (deviceColor)
    {
      v141 = v12;
      NSAppendPrintF(&v141, ", Cl '%@'", deviceColor);
      v96 = v141;

      v12 = v96;
    }

    deviceCapabilityFlags = [(RPCompanionLinkDevice *)v6 deviceCapabilityFlags];
    if (deviceCapabilityFlags)
    {
      v140 = v12;
      NSAppendPrintF(&v140, ", dCapF %#{flags}", deviceCapabilityFlags, &unk_1B6F2DED3);
      v98 = v140;

      v12 = v98;
    }

    serviceTypes = [(RPEndpoint *)v6 serviceTypes];
    v100 = serviceTypes;
    if (serviceTypes)
    {
      v139 = v12;
      NSAppendPrintF(&v139, ", SrvT %##@", serviceTypes);
      v101 = v139;

      v12 = v101;
    }

    siriInfo = [(RPCompanionLinkDevice *)v6 siriInfo];
    v103 = siriInfo;
    if (siriInfo)
    {
      v138 = v12;
      NSAppendPrintF(&v138, ", SiriInfo (%d)", [siriInfo count]);
      v104 = v138;

      v12 = v104;
    }

    sourceVersion = [(RPEndpoint *)v6 sourceVersion];
    v106 = sourceVersion;
    if (sourceVersion)
    {
      v137 = v12;
      NSAppendPrintF(&v137, ", SV %@", sourceVersion);
      v107 = v137;

      v12 = v107;
    }

    flags = self->_flags;
    if (flags)
    {
      v136 = v12;
      v109 = RPCompanionLinkFlagsToShortString(flags, v175);
      NSAppendPrintF(&v136, ", Flags <%s>", v109);
      v110 = v136;

      v12 = v110;
    }

    flags = [(RPCompanionLinkDevice *)v6 flags];
    if (flags)
    {
      v135 = v12;
      v112 = RPCompanionLinkFlagsToShortString(flags, v175);
      NSAppendPrintF(&v135, ", DF <%s>", v112);
      v113 = v135;

      v12 = v113;
    }

    statusFlags = [(RPEndpoint *)v6 statusFlags];
    if (statusFlags)
    {
      v134 = v12;
      NSAppendPrintF(&v134, ", SF %#ll{flags}", statusFlags, &unk_1B6F2DEF3);
      v115 = v134;

      v12 = v115;
    }

    verifiedAcl = [(RPEndpoint *)v6 verifiedAcl];
    v117 = verifiedAcl;
    if (verifiedAcl)
    {
      v133 = v12;
      NSAppendPrintF(&v133, ", VAcl %@", verifiedAcl);
      v118 = v133;

      v12 = v118;
    }

    v119 = self->_btPipe;
    v120 = v119;
    if (v119)
    {
      v132 = v12;
      NSAppendPrintF(&v132, ", %@", v119);
      v121 = v132;

      v12 = v121;
    }

    v122 = self->_bleConnection;
    v123 = v122;
    if (v122)
    {
      v131 = v12;
      NSAppendPrintF(&v131, ", %@", v122);
      v124 = v131;

      v12 = v124;
    }

    v125 = self->_tcpConnection;
    v126 = v125;
    if (v125)
    {
      v130 = v12;
      NSAppendPrintF(&v130, ", %@", v125);
      v127 = v130;

      v12 = v127;
    }
  }

  v128 = v12;

  return v128;
}

- (id)_getCurrentProcessName
{
  appID = self->_appID;
  if (appID)
  {
    processName2 = appID;
  }

  else
  {
    processInfo = [MEMORY[0x1E696AE30] processInfo];
    processName = [processInfo processName];

    if (processName)
    {
      processInfo2 = [MEMORY[0x1E696AE30] processInfo];
      processName2 = [processInfo2 processName];
    }

    else
    {
      processName2 = @"Unknown";
    }
  }

  return processName2;
}

- (void)setFlowControlReadEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_flowControlReadEnabled == enabledCopy)
  {
    return;
  }

  self->_flowControlReadEnabled = enabledCopy;
  ucat = self->_ucat;
  if (ucat->var0 <= 9)
  {
    if (ucat->var0 != -1)
    {
LABEL_4:
      v6 = "yes";
      if (enabledCopy)
      {
        v7 = "no";
      }

      else
      {
        v7 = "yes";
      }

      if (!enabledCopy)
      {
        v6 = "no";
      }

      LogPrintF(ucat, "[RPConnection setFlowControlReadEnabled:]", 9, "Flow control read changed: %s -> %s\n", v7, v6);
      goto LABEL_11;
    }

    if (_LogCategory_Initialize())
    {
      ucat = self->_ucat;
      goto LABEL_4;
    }
  }

LABEL_11:
  if (enabledCopy)
  {
    if (!self->_readFrame.readRequested)
    {
      [(RPConnection *)self _receiveStart:0 readFrame:&self->_readFrame requestable:self->_requestable];
    }

    if (self->_btPipeHighPriority && !self->_readFrameBTPipeHighPriority.readRequested)
    {

      [(RPConnection *)self _receiveStart:0 readFrame:&self->_readFrameBTPipeHighPriority requestable:?];
    }
  }
}

- (void)setLabel:(id)label
{
  objc_storeStrong(&self->_label, label);
  labelCopy = label;
  uTF8String = [labelCopy UTF8String];

  LogCategoryReplaceF(&self->_ucat, "%s", uTF8String);
}

- (void)setPresent:(BOOL)present
{
  presentCopy = present;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  present = self->_present;
  if (present == presentCopy)
  {
    return;
  }

  ucat = self->_ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_11;
      }

      ucat = self->_ucat;
      LOBYTE(present) = self->_present;
    }

    v13 = "no";
    if (present)
    {
      v14 = "yes";
    }

    else
    {
      v14 = "no";
    }

    if (presentCopy)
    {
      v13 = "yes";
    }

    LogPrintF(ucat, "[RPConnection setPresent:]", 30, "Peer present changed: %s -> %s\n", v14, v13);
  }

LABEL_11:
  self->_present = presentCopy;
  if (presentCopy)
  {
    probeTimer = self->_probeTimer;
    if (probeTimer)
    {
      v16 = probeTimer;
      dispatch_source_cancel(v16);
      v17 = self->_probeTimer;
      self->_probeTimer = 0;
    }

    [(RPConnection *)self sendReachabilityProbe:"became present"];
    return;
  }

  if (self->_tcpConnection)
  {
    v18 = self->_probeTimer;
    if (v18)
    {
      v19 = v18;
      dispatch_source_cancel(v19);
      v20 = self->_probeTimer;
      self->_probeTimer = 0;
    }

    v21 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_dispatchQueue);
    v22 = self->_probeTimer;
    self->_probeTimer = v21;

    v23 = self->_probeTimer;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __27__RPConnection_setPresent___block_invoke;
    handler[3] = &unk_1E7C92CE8;
    handler[4] = self;
    dispatch_source_set_event_handler(v23, handler);
    CUDispatchTimerSet();
    dispatch_resume(self->_probeTimer);
    return;
  }

  v24 = self->_ucat;
  if (v24->var0 <= 30)
  {
    if (v24->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_26;
      }

      v24 = self->_ucat;
    }

    LogPrintF(v24, "[RPConnection setPresent:]", 30, "Peer lost when not connected, invalidating\n");
  }

LABEL_26:
  v26 = RPErrorF(4294896153, "Peer lost when not connected", v5, v6, v7, v8, v9, v10, v25);
  [(RPConnection *)self _invalidateWithError:v26];
}

uint64_t __27__RPConnection_setPresent___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 96);
  if (v2)
  {
    v3 = v2;
    dispatch_source_cancel(v3);
    v4 = *(a1 + 32);
    v5 = *(v4 + 96);
    *(v4 + 96) = 0;
  }

  v6 = *(a1 + 32);

  return [v6 sendReachabilityProbe:"not present"];
}

- (void)setTrafficFlags:(unsigned int)flags
{
  if (self->_trafficFlags != flags)
  {
    self->_trafficFlags = flags;
    if (self->_activateCalled)
    {
      v8 = v3;
      v9 = v4;
      dispatchQueue = self->_dispatchQueue;
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __32__RPConnection_setTrafficFlags___block_invoke;
      v6[3] = &unk_1E7C934D8;
      v6[4] = self;
      flagsCopy = flags;
      dispatch_async(dispatchQueue, v6);
    }
  }
}

- (void)activate
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  self->_activateCalled = 1;
  [(RPConnection *)self _updateLinkInfo];
  if (self->_bonjourPeerDevice)
  {
    self->_clientMode = 1;
    [(RPCompanionLinkDevice *)self->_peerDeviceInfo updateWithBonjourDevice:?];
    [(RPEndpoint *)self->_peerDeviceInfo setStatusFlags:[(RPEndpoint *)self->_peerDeviceInfo statusFlags]| 4];
    ucat = self->_ucat;
    if (ucat->var0 <= 30)
    {
      if (ucat->var0 != -1)
      {
LABEL_4:
        linkType = self->_linkType;
        if (linkType > 0xB)
        {
          v5 = "?";
        }

        else
        {
          v5 = off_1E7C94188[linkType];
        }

        bonjourPeerDevice = self->_bonjourPeerDevice;
        btPipe = v5;
        controlFlags = self->_controlFlags;
        v32 = &unk_1B6F2DC4E;
LABEL_28:
        v14 = "Activate for client: CF %#ll{flags}, %@, %s\n";
LABEL_29:
        LogPrintF(ucat, "[RPConnection activate]", 30, v14, controlFlags, v32, bonjourPeerDevice, btPipe, v35);
        goto LABEL_30;
      }

      if (_LogCategory_Initialize())
      {
        ucat = self->_ucat;
        goto LABEL_4;
      }
    }

    goto LABEL_30;
  }

  destinationString = self->_destinationString;
  if (destinationString)
  {
    self->_clientMode = 1;
    ucat = self->_ucat;
    if (ucat->var0 <= 30)
    {
      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_30;
        }

        ucat = self->_ucat;
        destinationString = self->_destinationString;
      }

      v7 = self->_linkType;
      if (v7 > 0xB)
      {
        v8 = "?";
      }

      else
      {
        v8 = off_1E7C94188[v7];
      }

      bonjourPeerDevice = destinationString;
      btPipe = v8;
      controlFlags = self->_controlFlags;
      v32 = &unk_1B6F2DC4E;
      goto LABEL_28;
    }

LABEL_30:
    identifierOverride = self->_identifierOverride;
    v16 = identifierOverride;
    v36 = v16;
    if (v16)
    {
      [(RPEndpoint *)self->_peerDeviceInfo setIdentifier:v16];
      objc_storeStrong(&self->_peerIdentifier, identifierOverride);
    }

    else if (self->_peerIdentifier)
    {
      [(RPEndpoint *)self->_peerDeviceInfo setIdentifier:?];
    }

    self->_activatedTicks = mach_absolute_time();
    _getCurrentProcessName = [(RPConnection *)self _getCurrentProcessName];
    initiator = self->_initiator;
    self->_initiator = _getCurrentProcessName;

    [(RPConnection *)self _run];

    return;
  }

  if (self->_blePeerIdentifier)
  {
    self->_clientMode = 1;
    [(RPEndpoint *)self->_peerDeviceInfo setStatusFlags:[(RPEndpoint *)self->_peerDeviceInfo statusFlags]| 2];
    v9 = self->_ucat;
    if (v9->var0 <= 30)
    {
      if (v9->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_30;
        }

        v9 = self->_ucat;
      }

      v10 = self->_linkType;
      if (v10 > 0xB)
      {
        v11 = "?";
      }

      else
      {
        v11 = off_1E7C94188[v10];
      }

      LogPrintF(v9, "[RPConnection activate]", 30, "Activate for client: CF %#ll{flags}, BLE peer %@, %s\n", self->_controlFlags, &unk_1B6F2DC4E, self->_blePeerIdentifier, v11);
      goto LABEL_30;
    }

    goto LABEL_30;
  }

  if (self->_bleConnection)
  {
    self->_clientMode = 0;
    [(RPEndpoint *)self->_peerDeviceInfo setStatusFlags:[(RPEndpoint *)self->_peerDeviceInfo statusFlags]| 2];
    objc_storeStrong(&self->_requestable, self->_bleConnection);
    v12 = self->_ucat;
    if (v12->var0 > 30)
    {
      goto LABEL_30;
    }

    if (v12->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_30;
      }

      v12 = self->_ucat;
    }

    v13 = self->_controlFlags;
    bonjourPeerDevice = self->_bleConnection;
    btPipe = RPDataLinkTypeToString(self->_linkType);
    controlFlags = v13;
    v32 = &unk_1B6F2DC4E;
    v14 = "Activate for server: CF %#ll{flags}, %@, %s\n";
LABEL_44:
    ucat = v12;
    goto LABEL_29;
  }

  if (self->_btPipe)
  {
    self->_clientMode = GestaltGetDeviceClass() == 6;
    [(RPEndpoint *)self->_peerDeviceInfo setStatusFlags:[(RPEndpoint *)self->_peerDeviceInfo statusFlags]| 0x41];
    objc_storeStrong(&self->_requestable, self->_btPipe);
    v12 = self->_ucat;
    if (v12->var0 > 30)
    {
      goto LABEL_30;
    }

    if (v12->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_30;
      }

      v12 = self->_ucat;
    }

    if (self->_clientMode)
    {
      v19 = "client";
    }

    else
    {
      v19 = "server";
    }

    v20 = self->_controlFlags;
    btPipe = self->_btPipe;
    v35 = RPDataLinkTypeToString(self->_linkType);
    v32 = v20;
    bonjourPeerDevice = &unk_1B6F2DC4E;
    controlFlags = v19;
    v14 = "Activate for %s: CF %#ll{flags}, %@, %s\n";
    goto LABEL_44;
  }

  if (self->_tcpConnection)
  {
    self->_clientMode = 0;
    v21 = self->_linkType;
    peerDeviceInfo = self->_peerDeviceInfo;
    statusFlags = [(RPEndpoint *)peerDeviceInfo statusFlags];
    v24 = 4;
    if (v21 == 4)
    {
      v24 = 8;
    }

    [(RPEndpoint *)peerDeviceInfo setStatusFlags:statusFlags | v24];
    objc_storeStrong(&self->_requestable, self->_tcpConnection);
    v25 = self->_ucat;
    if (v25->var0 > 30)
    {
      goto LABEL_65;
    }

    if (v25->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
LABEL_65:
        ipAddress = [(RPEndpoint *)self->_peerDeviceInfo ipAddress];
        if (ipAddress)
        {
        }

        else if (self->_peerAddrString)
        {
          [(RPEndpoint *)self->_peerDeviceInfo setIpAddress:?];
        }

        goto LABEL_30;
      }

      v25 = self->_ucat;
    }

    v26 = self->_controlFlags;
    tcpConnection = self->_tcpConnection;
    v28 = RPDataLinkTypeToString(self->_linkType);
    LogPrintF(v25, "[RPConnection activate]", 30, "Activate for server: CF %#ll{flags}, %@, %s\n", v26, &unk_1B6F2DC4E, tcpConnection, v28);
    goto LABEL_65;
  }

  v29 = self->_ucat;
  if (v29->var0 > 90)
  {
    return;
  }

  if (v29->var0 == -1)
  {
    if (!_LogCategory_Initialize())
    {
      return;
    }

    v29 = self->_ucat;
  }

  LogPrintF(v29, "[RPConnection activate]", 90, "### Activate without role?\n");
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __26__RPConnection_invalidate__block_invoke;
  block[3] = &unk_1E7C92CE8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)invalidateWithError:(id)error
{
  errorCopy = error;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __36__RPConnection_invalidateWithError___block_invoke;
  v7[3] = &unk_1E7C92D80;
  v7[4] = self;
  v8 = errorCopy;
  v6 = errorCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)_invalidateWithError:(id)error
{
  errorCopy = error;
  if (!self->_invalidateCalled)
  {
    self->_invalidateCalled = 1;
    ucat = self->_ucat;
    v7 = errorCopy;
    if (ucat->var0 <= 30)
    {
      if (ucat->var0 == -1)
      {
        v6 = _LogCategory_Initialize();
        errorCopy = v7;
        if (!v6)
        {
          goto LABEL_6;
        }

        ucat = self->_ucat;
      }

      LogPrintF(ucat, "[RPConnection _invalidateWithError:]", 30, "Invalidating: %{error}\n", errorCopy);
    }

LABEL_6:
    [(RPConnection *)self _invalidateCore:v7];
    [(RPConnection *)self _invalidated];
    errorCopy = v7;
  }
}

- (void)_invalidate
{
  if (self->_invalidateCalled)
  {
    return;
  }

  v7 = v3;
  v8 = v2;
  self->_invalidateCalled = 1;
  ucat = self->_ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_6;
      }

      ucat = self->_ucat;
    }

    LogPrintF(ucat, "[RPConnection _invalidate]", 30, "Invalidating\n", v3, v8);
  }

LABEL_6:
  [(RPConnection *)self _invalidateCore:0, v7, v8];

  [(RPConnection *)self _invalidated];
}

- (void)_invalidateCore:(id)core
{
  v68 = *MEMORY[0x1E69E9840];
  coreCopy = core;
  bleConnectTimer = self->_bleConnectTimer;
  if (bleConnectTimer)
  {
    v6 = bleConnectTimer;
    dispatch_source_cancel(v6);
    v7 = self->_bleConnectTimer;
    self->_bleConnectTimer = 0;
  }

  idleTimer = self->_idleTimer;
  if (idleTimer)
  {
    v9 = idleTimer;
    dispatch_source_cancel(v9);
    v10 = self->_idleTimer;
    self->_idleTimer = 0;
  }

  probeTimer = self->_probeTimer;
  if (probeTimer)
  {
    v12 = probeTimer;
    dispatch_source_cancel(v12);
    v13 = self->_probeTimer;
    self->_probeTimer = 0;
  }

  retryTimer = self->_retryTimer;
  if (retryTimer)
  {
    v15 = retryTimer;
    dispatch_source_cancel(v15);
    v16 = self->_retryTimer;
    self->_retryTimer = 0;
  }

  startTimer = self->_startTimer;
  if (startTimer)
  {
    v18 = startTimer;
    dispatch_source_cancel(v18);
    v19 = self->_startTimer;
    self->_startTimer = 0;
  }

  [(CUBLEConnection *)self->_bleConnection invalidate];
  [(CUTCPConnection *)self->_tcpConnection invalidate];
  v25 = _Block_copy(self->_readErrorHandler);
  if (v25)
  {
    if (coreCopy)
    {
      RPNestedErrorF(coreCopy, 4294960573, "Read error due to invalidation", v20, v21, v22, v23, v24, v56);
    }

    else
    {
      NSErrorWithOSStatusF();
    }
    v26 = ;
    v25[2](v25, v26);
  }

  if (self->_showPasswordCalled)
  {
    self->_showPasswordCalled = 0;
    v33 = _Block_copy(self->_hidePasswordHandler);
    v34 = v33;
    if (v33)
    {
      (*(v33 + 2))(v33, 0);
    }
  }

  stepError = coreCopy;
  v57 = coreCopy;
  if (coreCopy || (stepError = self->_stepError) != 0)
  {
    v36 = stepError;
  }

  else
  {
    v36 = RPErrorF(4294896148, "Connection invalidated", v27, v28, v29, v30, v31, v32, v56);
  }

  v37 = v36;
  [(RPConnection *)self _abortRequestsWithError:v36];
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v38 = self->_sendArray;
  v39 = [(NSMutableArray *)v38 countByEnumeratingWithState:&v62 objects:v67 count:16];
  if (v39)
  {
    v40 = v39;
    v41 = *v63;
    do
    {
      for (i = 0; i != v40; ++i)
      {
        if (*v63 != v41)
        {
          objc_enumerationMutation(v38);
        }

        [(RPConnection *)self _abortSendEntry:*(*(&v62 + 1) + 8 * i) withError:v37];
      }

      v40 = [(NSMutableArray *)v38 countByEnumeratingWithState:&v62 objects:v67 count:16];
    }

    while (v40);
  }

  [(NSMutableArray *)self->_sendArray removeAllObjects];
  sendArray = self->_sendArray;
  self->_sendArray = 0;

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v44 = self->_receivedMessages;
  v45 = [(NSMutableArray *)v44 countByEnumeratingWithState:&v58 objects:v66 count:16];
  if (v45)
  {
    v46 = v45;
    v47 = *v59;
    do
    {
      for (j = 0; j != v46; ++j)
      {
        if (*v59 != v47)
        {
          objc_enumerationMutation(v44);
        }

        v49 = *(*(&v58 + 1) + 8 * j);
        ucat = self->_ucat;
        if (ucat->var0 <= 60)
        {
          if (ucat->var0 != -1)
          {
            goto LABEL_37;
          }

          if (_LogCategory_Initialize())
          {
            ucat = self->_ucat;
LABEL_37:
            requestID = [v49 requestID];
            v52 = requestID;
            if (requestID)
            {
              LogPrintF(ucat, "[RPConnection _invalidateCore:]", 60, "### Abort received message ID '%@': %{error}\n", requestID, v37);
            }

            else
            {
              eventID = [v49 eventID];
              LogPrintF(ucat, "[RPConnection _invalidateCore:]", 60, "### Abort received message ID '%@': %{error}\n", eventID, v37);
            }
          }
        }

        responseHandler = [v49 responseHandler];
        [v49 setResponseHandler:0];
        if (responseHandler)
        {
          (responseHandler)[2](responseHandler, 0, 0, v37);
        }
      }

      v46 = [(NSMutableArray *)v44 countByEnumeratingWithState:&v58 objects:v66 count:16];
    }

    while (v46);
  }

  [(NSMutableArray *)self->_receivedMessages removeAllObjects];
  receivedMessages = self->_receivedMessages;
  self->_receivedMessages = 0;

  [(RPConnection *)self _logConnectionInvalidatedWithError:v57];
}

- (void)_invalidated
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_invalidateDone || self->_bleConnection || self->_tcpConnection)
  {
    return;
  }

  [(RPConnection *)self _pairSetupInvalidate];
  startTimer = self->_startTimer;
  if (startTimer)
  {
    v4 = startTimer;
    dispatch_source_cancel(v4);
    v5 = self->_startTimer;
    self->_startTimer = 0;
  }

  ucat = self->_ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_10;
      }

      ucat = self->_ucat;
    }

    LogPrintF(ucat, "[RPConnection _invalidated]", 30, "Invalidated\n");
  }

LABEL_10:
  invalidationHandler = self->_invalidationHandler;
  if (invalidationHandler)
  {
    invalidationHandler[2]();
  }

  [(RPConnection *)self _pairVerifyInvalidate];
  authCompletionHandler = self->_authCompletionHandler;
  self->_authCompletionHandler = 0;

  configurePairingHandler = self->_configurePairingHandler;
  self->_configurePairingHandler = 0;

  flowControlWriteChangedHandler = self->_flowControlWriteChangedHandler;
  self->_flowControlWriteChangedHandler = 0;

  homeKitUserIdentifierHandler = self->_homeKitUserIdentifierHandler;
  self->_homeKitUserIdentifierHandler = 0;

  [(NSMutableSet *)self->_inUseProcesses removeAllObjects];
  inUseProcesses = self->_inUseProcesses;
  self->_inUseProcesses = 0;

  v13 = self->_invalidationHandler;
  self->_invalidationHandler = 0;

  pairVerifyCompletion = self->_pairVerifyCompletion;
  self->_pairVerifyCompletion = 0;

  showPasswordHandler = self->_showPasswordHandler;
  self->_showPasswordHandler = 0;

  hidePasswordHandler = self->_hidePasswordHandler;
  self->_hidePasswordHandler = 0;

  v17 = self->_homeKitUserIdentifierHandler;
  self->_homeKitUserIdentifierHandler = 0;

  promptForPasswordHandler = self->_promptForPasswordHandler;
  self->_promptForPasswordHandler = 0;

  [(NSMutableArray *)self->_proxyDevices removeAllObjects];
  proxyDevices = self->_proxyDevices;
  self->_proxyDevices = 0;

  proxyDeviceUpdateHandler = self->_proxyDeviceUpdateHandler;
  self->_proxyDeviceUpdateHandler = 0;

  peerUpdatedHandler = self->_peerUpdatedHandler;
  self->_peerUpdatedHandler = 0;

  readErrorHandler = self->_readErrorHandler;
  self->_readErrorHandler = 0;

  receivedEventHandler = self->_receivedEventHandler;
  self->_receivedEventHandler = 0;

  receivedRequestHandler = self->_receivedRequestHandler;
  self->_receivedRequestHandler = 0;

  sessionStartHandler = self->_sessionStartHandler;
  self->_sessionStartHandler = 0;

  stateChangedHandler = self->_stateChangedHandler;
  self->_stateChangedHandler = 0;

  self->_invalidateDone = 1;
}

- (void)homeKitIdentityUpdated
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_pairVerifyCompleted || (self->_controlFlags & 0x200) != 0 || (self->_flags & 1) != 0)
  {
    return;
  }

  if ((self->_statusFlags & 0x80000) == 0)
  {
    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [(RPConnection *)self _identityProofsAdd:v11 update:1];
    if (![(NSString *)v11 count])
    {
LABEL_19:
      peerHomeKitUserIdentifier = self->_homeKitIdentityIdentifier;
      if (peerHomeKitUserIdentifier)
      {
        homeKitIdentitySignature = self->_homeKitIdentitySignature;
        if (homeKitIdentitySignature)
        {
          [(RPConnection *)self _identityProofsVerifyHomeKitSignature:homeKitIdentitySignature identifier:peerHomeKitUserIdentifier];
        }
      }

      goto LABEL_22;
    }

    ucat = self->_ucat;
    if (ucat->var0 <= 30)
    {
      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_18;
        }

        ucat = self->_ucat;
      }

      LogPrintF(ucat, "[RPConnection homeKitIdentityUpdated]", 30, "Send identity update\n");
    }

LABEL_18:
    [(RPConnection *)self sendEncryptedEventID:@"_systemInfoUpdate" event:v11 options:0 completion:0];
    goto LABEL_19;
  }

  homeKitIdentity = [(RPIdentityDaemon *)self->_identityDaemon homeKitIdentity];
  identifier = [homeKitIdentity identifier];

  peerHomeKitUserIdentifier = self->_peerHomeKitUserIdentifier;
  v7 = identifier;
  v11 = v7;
  if (peerHomeKitUserIdentifier == v7)
  {
  }

  else
  {
    if ((v7 == 0) != (peerHomeKitUserIdentifier != 0))
    {
      v8 = [(NSString *)peerHomeKitUserIdentifier isEqual:v7];

      if (v8)
      {
        goto LABEL_23;
      }
    }

    else
    {
    }

    v9 = v11;
    peerHomeKitUserIdentifier = self->_peerHomeKitUserIdentifier;
    v11 = v9;
    self->_peerHomeKitUserIdentifier = v9;
  }

LABEL_22:

LABEL_23:
}

- (void)_logConnectionInvalidatedWithError:(id)error
{
  errorCopy = error;
  mach_absolute_time();
  v5 = UpTicksToSeconds();
  mediaSystemIdentifier = [(RPCompanionLinkDevice *)self->_localDeviceInfo mediaSystemIdentifier];
  mediaSystemIdentifier2 = [(RPCompanionLinkDevice *)self->_peerDeviceInfo mediaSystemIdentifier];
  v8 = mediaSystemIdentifier;
  v9 = mediaSystemIdentifier2;
  v10 = v9;
  if (v8 == v9)
  {

    goto LABEL_6;
  }

  if ((v8 != 0) == (v9 == 0))
  {
    v11 = 0;
    model2 = v9;
    model = v8;
    goto LABEL_9;
  }

  v11 = [v8 isEqual:v9];

  if (v11)
  {
LABEL_6:
    model = [(RPEndpoint *)self->_localDeviceInfo model];
    if (GestaltProductTypeStringToDeviceClass() != 7)
    {
      v11 = 0;
      goto LABEL_11;
    }

    model2 = [(RPEndpoint *)self->_peerDeviceInfo model];
    v11 = GestaltProductTypeStringToDeviceClass() == 7;
LABEL_9:

LABEL_11:
  }

  model3 = [(RPEndpoint *)self->_localDeviceInfo model];
  v15 = GestaltProductTypeStringToDeviceClass();
  v21 = RPDeviceClassToString(v15);

  model4 = [(RPEndpoint *)self->_peerDeviceInfo model];
  v17 = GestaltProductTypeStringToDeviceClass();
  v18 = RPDeviceClassToString(v17);

  v19 = +[RPConnectionMetrics sharedMetrics];
  LODWORD(v20) = self->_linkType;
  [v19 logConnectionWithDeviceModelFrom:v21 deviceModelTo:v18 error:errorCopy initiator:self->_initiator isOnDemand:(self->_controlFlags >> 9) & 1 isStereoPair:v11 lifetime:v5 linkType:v20];
}

- (void)_pairSetupInvalidate
{
  mainStream = self->_mainStream;
  self->_mainStream = 0;

  highPriorityStream = self->_highPriorityStream;
  self->_highPriorityStream = 0;

  [(CUPairingSession *)self->_pairSetupSession setCompletionHandler:0];
  [(CUPairingSession *)self->_pairSetupSession setSendDataHandler:0];
  [(CUPairingSession *)self->_pairSetupSession invalidate];
  pairSetupSession = self->_pairSetupSession;
  self->_pairSetupSession = 0;
}

- (void)_pairVerifyInvalidate
{
  identityKeyData = self->_identityKeyData;
  if (identityKeyData)
  {
    bytes = [(NSData *)identityKeyData bytes];
    v5 = [(NSData *)self->_identityKeyData length];
    if (bytes)
    {
      memset_s(bytes, v5, 0, v5);
    }
  }

  identitySignature = self->_identitySignature;
  if (identitySignature)
  {
    bytes2 = [(NSData *)identitySignature bytes];
    v8 = [(NSData *)self->_identitySignature length];
    if (bytes2)
    {
      memset_s(bytes2, v8, 0, v8);
    }
  }

  homeKitIdentitySignature = self->_homeKitIdentitySignature;
  if (homeKitIdentitySignature)
  {
    bytes3 = [(NSData *)homeKitIdentitySignature bytes];
    v11 = [(NSData *)self->_homeKitIdentitySignature length];
    if (bytes3)
    {
      memset_s(bytes3, v11, 0, v11);
    }
  }

  v12 = self->_identityKeyData;
  self->_identityKeyData = 0;

  v13 = self->_identitySignature;
  self->_identitySignature = 0;

  homeKitIdentityIdentifier = self->_homeKitIdentityIdentifier;
  self->_homeKitIdentityIdentifier = 0;

  v15 = self->_homeKitIdentitySignature;
  self->_homeKitIdentitySignature = 0;

  identityVerified = self->_identityVerified;
  self->_identityVerified = 0;

  mainStream = self->_mainStream;
  self->_mainStream = 0;

  highPriorityStream = self->_highPriorityStream;
  self->_highPriorityStream = 0;

  self->_pairVerifyIdentityType = 0;
  [(CUPairingSession *)self->_pairVerifySession setCompletionHandler:0];
  [(CUPairingSession *)self->_pairVerifySession setSendDataHandler:0];
  [(CUPairingSession *)self->_pairVerifySession invalidate];
  pairVerifySession = self->_pairVerifySession;
  self->_pairVerifySession = 0;
}

- (id)_pairVerifySignData:(id)data flags:(unsigned int)flags error:(id *)error
{
  dataCopy = data;
  v8 = self->_forcedSelfIdentity;
  peerAppFlags = [(CUPairingSession *)self->_pairVerifySession peerAppFlags];
  v10 = peerAppFlags;
  controlFlags = self->_controlFlags;
  if ((controlFlags & 0x40) != 0 || (peerAppFlags & 1) != 0 || v8)
  {
    if (!self->_clientMode)
    {
      [(CUPairingSession *)self->_pairVerifySession setSelfAppFlags:[(CUPairingSession *)self->_pairVerifySession selfAppFlags]| 1];
    }

    if (v8)
    {
      goto LABEL_10;
    }

    copyIdentityHandler = [(CUPairingSession *)self->_pairVerifySession copyIdentityHandler];

    if (copyIdentityHandler)
    {
      copyIdentityHandler2 = [(CUPairingSession *)self->_pairVerifySession copyIdentityHandler];
      v19 = copyIdentityHandler2[2](copyIdentityHandler2, 2, 0);

      if (v19)
      {
        v8 = objc_alloc_init(RPIdentity);
        altIRK = [v19 altIRK];
        [(RPIdentity *)v8 setDeviceIRKData:altIRK];

        publicKey = [v19 publicKey];
        [(RPIdentity *)v8 setEdPKData:publicKey];

        secretKey = [v19 secretKey];
        [(RPIdentity *)v8 setEdSKData:secretKey];

        rp_sepPrivateKey = [v19 rp_sepPrivateKey];
        if (rp_sepPrivateKey)
        {
          [(RPIdentity *)v8 updateWithSEPPrivateKey:rp_sepPrivateKey];
        }

        if (v8)
        {
LABEL_10:
          v13 = 0;
          goto LABEL_11;
        }
      }

      else
      {
      }
    }

    identityDaemon = self->_identityDaemon;
    v33 = 0;
    v8 = [(RPIdentityDaemon *)identityDaemon identityOfSelfAndReturnError:&v33];
    v13 = v33;
    if (v8)
    {
LABEL_11:
      v14 = v13;
      v32 = v13;
      v15 = [(RPIdentity *)v8 signData:dataCopy error:&v32];
      v13 = v32;

      if (v15)
      {
        self->_pairVerifyUsedIdentity = 1;
        ucat = self->_ucat;
        if (ucat->var0 <= 30)
        {
          if (ucat->var0 == -1)
          {
            if (!_LogCategory_Initialize())
            {
              goto LABEL_25;
            }

            ucat = self->_ucat;
          }

          LogPrintF(ucat, "[RPConnection _pairVerifySignData:flags:error:]", 30, "PairVerifySign success: CF %#ll{flags}, AF %#ll{flags}\n", self->_controlFlags, &unk_1B6F2DC4E, v10, &unk_1B6F2E0C2);
        }

LABEL_25:
        v25 = v15;
LABEL_34:

LABEL_35:
        goto LABEL_40;
      }

      v24 = self->_ucat;
      if (v24->var0 <= 90)
      {
        if (v24->var0 != -1)
        {
LABEL_23:
          LogPrintF(v24, "[RPConnection _pairVerifySignData:flags:error:]", 90, "### PairVerifySign failed: %{error}\n", v13);
          goto LABEL_32;
        }

        if (_LogCategory_Initialize())
        {
          v24 = self->_ucat;
          goto LABEL_23;
        }
      }

LABEL_32:
      if (error)
      {
        v28 = v13;
        *error = v13;
      }

      goto LABEL_34;
    }

    v27 = self->_ucat;
    if (v27->var0 <= 90)
    {
      if (v27->var0 != -1)
      {
LABEL_30:
        LogPrintF(v27, "[RPConnection _pairVerifySignData:flags:error:]", 90, "### PairVerifySign get self identity failed: %{error}\n", v13);
        goto LABEL_44;
      }

      if (_LogCategory_Initialize())
      {
        v27 = self->_ucat;
        goto LABEL_30;
      }
    }

LABEL_44:
    if (error)
    {
      v31 = v13;
      v8 = 0;
      v15 = 0;
      *error = v13;
    }

    else
    {
      v8 = 0;
      v15 = 0;
    }

    goto LABEL_35;
  }

  v12 = self->_ucat;
  if (v12->var0 <= 30)
  {
    if (v12->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_37;
      }

      v12 = self->_ucat;
      controlFlags = self->_controlFlags;
    }

    LogPrintF(v12, "[RPConnection _pairVerifySignData:flags:error:]", 30, "PairVerifySign: Not using RPI: CF %#ll{flags}, AF %#ll{flags}\n", controlFlags, &unk_1B6F2DC4E, v10, &unk_1B6F2E0C2);
  }

LABEL_37:
  if (error)
  {
    v29 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-6714 userInfo:0];
    *error = v29;
  }

  v15 = 0;
LABEL_40:

  return v15;
}

- (BOOL)_pairVerifyVerifySignature:(id)signature data:(id)data flags:(unsigned int)flags error:(id *)error
{
  signatureCopy = signature;
  dataCopy = data;
  v12 = self->_forcedPeerIdentity;
  peerAppFlags = [(CUPairingSession *)self->_pairVerifySession peerAppFlags];
  v14 = peerAppFlags;
  controlFlags = self->_controlFlags;
  if ((controlFlags & 0x40) != 0 || (peerAppFlags & 1) != 0 || v12)
  {
    self->_pairVerifyUsedIdentity = 1;
    if (v12)
    {
      v17 = 0;
      goto LABEL_16;
    }

    v18 = controlFlags & 0x400000000000;
    if (self->_pairVerifyAuthType != 8 && v18 == 0)
    {
      v20 = 19498;
    }

    else
    {
      v20 = 19458;
    }

    identityDaemon = self->_identityDaemon;
    v31 = 0;
    v12 = [(RPIdentityDaemon *)identityDaemon resolveIdentityForSignature:signatureCopy data:dataCopy typeFlags:v20 error:&v31];
    v17 = v31;
    if (v12)
    {
LABEL_16:
      objc_storeStrong(&self->_identityKeyData, data);
      objc_storeStrong(&self->_identitySignature, signature);
      objc_storeStrong(&self->_identityVerified, v12);
      identifier = [(RPIdentity *)v12 identifier];
      [(RPEndpoint *)self->_peerDeviceInfo setVerifiedIdentity:identifier];

      type = [(RPIdentity *)v12 type];
      self->_pairVerifyIdentityType = type;
      ucat = self->_ucat;
      if (ucat->var0 <= 30)
      {
        if (ucat->var0 != -1)
        {
LABEL_18:
          if (type > 0x10)
          {
            v25 = "?";
          }

          else
          {
            v25 = off_1E7C94048[type];
          }

          LogPrintF(ucat, "[RPConnection _pairVerifyVerifySignature:data:flags:error:]", 30, "PairVerifyVerify success: %s, CF %#ll{flags}, AF %#ll{flags}\n", v25, self->_controlFlags, &unk_1B6F2DC4E, v14, &unk_1B6F2E0C2);
          goto LABEL_27;
        }

        if (_LogCategory_Initialize())
        {
          ucat = self->_ucat;
          goto LABEL_18;
        }
      }

LABEL_27:
      v27 = 1;
LABEL_28:

      goto LABEL_33;
    }

    v26 = self->_ucat;
    if (v26->var0 <= 90)
    {
      if (v26->var0 != -1)
      {
LABEL_24:
        LogPrintF(v26, "[RPConnection _pairVerifyVerifySignature:data:flags:error:]", 90, "### PairVerifyVerify failed: %{error}\n", v17);
        goto LABEL_35;
      }

      if (_LogCategory_Initialize())
      {
        v26 = self->_ucat;
        goto LABEL_24;
      }
    }

LABEL_35:
    if (error)
    {
      v30 = v17;
      v27 = 0;
      v12 = 0;
      *error = v17;
    }

    else
    {
      v27 = 0;
      v12 = 0;
    }

    goto LABEL_28;
  }

  v16 = self->_ucat;
  if (v16->var0 <= 30)
  {
    if (v16->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_30;
      }

      v16 = self->_ucat;
      controlFlags = self->_controlFlags;
    }

    LogPrintF(v16, "[RPConnection _pairVerifyVerifySignature:data:flags:error:]", 30, "PairVerifyVerify: Not using RPI: CF %#ll{flags}, AF %#ll{flags}\n", controlFlags, &unk_1B6F2DC4E, v14, &unk_1B6F2E0C2);
  }

LABEL_30:
  if (error)
  {
    v28 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-6714 userInfo:0];
    *error = v28;
  }

  v27 = 0;
LABEL_33:

  return v27;
}

- (void)_pskPrepare:(BOOL)prepare
{
  prepareCopy = prepare;
  v5 = objc_alloc_init(MEMORY[0x1E6999500]);
  pskData = self->_pskData;
  v30 = 0;
  v7 = [v5 prepareWithName:@"main" isClient:prepareCopy pskData:pskData error:&v30];
  v13 = v30;
  if ((v7 & 1) == 0)
  {
    ucat = self->_ucat;
    if (ucat->var0 > 90)
    {
      goto LABEL_12;
    }

    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
LABEL_12:
        if (!self->_stepError)
        {
          v25 = RPNestedErrorF(v13, 4294960519, "PSK prepare failed", v8, v9, v10, v11, v12, v28);
          stepError = self->_stepError;
          self->_stepError = v25;
LABEL_18:

          goto LABEL_19;
        }

        goto LABEL_19;
      }

      ucat = self->_ucat;
    }

    LogPrintF(ucat, "[RPConnection _pskPrepare:]", 90, "### PSK prepare failed: %{error}\n", v13);
    goto LABEL_12;
  }

  objc_storeStrong(&self->_mainStream, v5);
  self->_mainAuthTagLength = [v5 authTagLength];
  if (self->_btPipeHighPriority)
  {
    stepError = objc_alloc_init(MEMORY[0x1E6999500]);
    v15 = self->_pskData;
    v29 = v13;
    v16 = [(NSError *)stepError prepareWithName:@"hipri" isClient:prepareCopy pskData:v15 error:&v29];
    v17 = v29;

    if (v16)
    {
      objc_storeStrong(&self->_highPriorityStream, stepError);
      self->_highPriorityAuthTagLength = [(NSError *)stepError authTagLength];
LABEL_17:
      v13 = v17;
      goto LABEL_18;
    }

    v24 = self->_ucat;
    if (v24->var0 <= 90)
    {
      if (v24->var0 != -1)
      {
LABEL_10:
        LogPrintF(v24, "[RPConnection _pskPrepare:]", 90, "### PSK prepare failed: %{error}\n", v17);
        goto LABEL_15;
      }

      if (_LogCategory_Initialize())
      {
        v24 = self->_ucat;
        goto LABEL_10;
      }
    }

LABEL_15:
    if (!self->_stepError)
    {
      v26 = RPNestedErrorF(v17, 4294960519, "PSK prepare failed", v18, v19, v20, v21, v22, v28);
      v27 = self->_stepError;
      self->_stepError = v26;
    }

    goto LABEL_17;
  }

LABEL_19:
}

- (void)_run
{
  if (self->_clientMode)
  {
    [(RPConnection *)self _clientRun];
  }

  else
  {
    [(RPConnection *)self _serverRun];
  }
}

- (void)tryPassword:(id)password
{
  passwordCopy = password;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_clientMode)
  {
    ucat = self->_ucat;
    if (ucat->var0 > 90)
    {
      goto LABEL_14;
    }

    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_14;
      }

      ucat = self->_ucat;
    }

    LogPrintF(ucat, "[RPConnection tryPassword:]", 90, "### Try password invalid in server mode\n");
    goto LABEL_14;
  }

  pairSetupSession = self->_pairSetupSession;
  if (pairSetupSession)
  {
    [(CUPairingSession *)pairSetupSession tryPIN:passwordCopy];
    goto LABEL_14;
  }

  v6 = self->_ucat;
  if (v6->var0 <= 90)
  {
    if (v6->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_14;
      }

      v6 = self->_ucat;
    }

    LogPrintF(v6, "[RPConnection tryPassword:]", 90, "### Try password without PairSetup session\n");
  }

LABEL_14:
}

- (void)_updateExternalState
{
  internalState = self->_internalState;
  v4 = internalState == 21 || internalState == 28;
  state = self->_state;
  if (state == v4)
  {
    return;
  }

  ucat = self->_ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 != -1)
    {
LABEL_10:
      v8 = "?";
      if (state == 1)
      {
        v8 = "Ready";
      }

      if (state)
      {
        v9 = v8;
      }

      else
      {
        v9 = "Unknown";
      }

      if (v4)
      {
        v10 = "Ready";
      }

      else
      {
        v10 = "Unknown";
      }

      LogPrintF(ucat, "[RPConnection _updateExternalState]", 30, "External state changed: %s -> %s\n", v9, v10);
      goto LABEL_20;
    }

    if (_LogCategory_Initialize())
    {
      ucat = self->_ucat;
      state = self->_state;
      goto LABEL_10;
    }
  }

LABEL_20:
  self->_state = v4;
  stateChangedHandler = self->_stateChangedHandler;
  if (stateChangedHandler)
  {
    v12 = *(stateChangedHandler + 2);

    v12();
  }
}

- (void)_updateLinkInfo
{
  tcpConnection = self->_tcpConnection;
  if (tcpConnection)
  {
    objc_msgSend_peerAddr(tcpConnection, a2);
    SockAddrToString();
    peerAddrString = self->_peerAddrString;
    self->_peerAddrString = 0;

    v7 = self->_tcpConnection;
    if (v7)
    {
      objc_msgSend_selfAddr(v7);
    }

    SockAddrToString();
    selfAddrString = self->_selfAddrString;
    self->_selfAddrString = 0;
  }

  else
  {
    v4 = self->_peerAddrString;
    self->_peerAddrString = 0;

    selfAddrString = self->_selfAddrString;
    self->_selfAddrString = 0;
  }

  v8 = self->_tcpConnection;
  if (v8)
  {
    netTransportType = [(CUTCPConnection *)v8 netTransportType];
    if ((netTransportType & 2) != 0)
    {
      v10 = 6;
    }

    else
    {
      v10 = 3;
    }

    if ((netTransportType & 8) != 0)
    {
      v11 = 8;
    }

    else
    {
      v11 = v10;
    }

    if (netTransportType < 0)
    {
      v12 = 5;
    }

    else
    {
      v12 = v11;
    }

    if (netTransportType)
    {
      v13 = 7;
    }

    else
    {
      v13 = v12;
    }

    if ((netTransportType & 0x10) != 0)
    {
      v14 = 9;
    }

    else
    {
      v14 = v13;
    }

    if ((netTransportType & 4) != 0)
    {
      v15 = 4;
    }

    else
    {
      v15 = v14;
    }
  }

  else if (self->_blePeerIdentifier || self->_bleConnection)
  {
    v15 = 1;
  }

  else if (self->_btPipe)
  {
    v15 = 2;
  }

  else
  {
    bonjourPeerDevice = self->_bonjourPeerDevice;
    if (bonjourPeerDevice)
    {
      deviceInfo = [(CUBonjourDevice *)bonjourPeerDevice deviceInfo];
      Int64Ranged = CFDictionaryGetInt64Ranged();

      if ((Int64Ranged & 4) != 0)
      {
        v15 = 4;
      }

      else if ((Int64Ranged & 0x10) != 0)
      {
        v15 = 9;
      }

      else if (Int64Ranged)
      {
        v15 = 7;
      }

      else if (Int64Ranged < 0)
      {
        v15 = 5;
      }

      else if ((Int64Ranged & 8) != 0)
      {
        v15 = 8;
      }

      else if ((Int64Ranged & 2) != 0)
      {
        v15 = 6;
      }

      else
      {
        v15 = 3;
      }
    }

    else if (self->_destinationString)
    {
      v15 = 3;
    }

    else
    {
      v15 = 0;
    }
  }

  if (v15 != self->_linkType)
  {
    self->_linkType = v15;
  }
}

- (void)_clientRun
{
  if (!self->_invalidateCalled)
  {
    while (1)
    {
      internalState = self->_internalState;
      switch(internalState)
      {
        case 0u:
          goto LABEL_24;
        case 0xAu:
          self->_internalState = 11;
          [(RPConnection *)self _clientConnectStart];
          goto LABEL_63;
        case 0xBu:
          if (self->_stepError)
          {
            goto LABEL_27;
          }

          if (!self->_stepDone)
          {
            goto LABEL_63;
          }

          if (self->_preAuthEnabled)
          {
            v9 = 12;
            goto LABEL_62;
          }

LABEL_41:
          if (!self->_pskData)
          {
            goto LABEL_61;
          }

          v9 = 18;
          goto LABEL_62;
        case 0xCu:
          self->_internalState = 13;
          [(RPConnection *)self _clientPreAuthStart];
          goto LABEL_63;
        case 0xDu:
          if (self->_stepError)
          {
            goto LABEL_27;
          }

          if (self->_stepDone)
          {
            goto LABEL_41;
          }

          goto LABEL_63;
        case 0xEu:
          self->_internalState = 15;
          [(RPConnection *)self _clientPairSetupStart];
          goto LABEL_63;
        case 0xFu:
          if (!self->_stepError)
          {
            goto LABEL_36;
          }

          goto LABEL_27;
        case 0x10u:
          self->_internalState = 17;
          [(RPConnection *)self _clientPairVerifyStart];
          goto LABEL_63;
        case 0x11u:
          stepError = self->_stepError;
          if (stepError)
          {
            self->_pairVerifyFailed = 1;
            if (self->_pairVerifySession)
            {
              ucat = self->_ucat;
              if (ucat->var0 <= 60)
              {
                if (ucat->var0 != -1)
                {
                  goto LABEL_35;
                }

                if (_LogCategory_Initialize())
                {
                  ucat = self->_ucat;
                  stepError = self->_stepError;
LABEL_35:
                  LogPrintF(ucat, "[RPConnection _clientRun]", 60, "### PairVerify client failed: %{error}\n", stepError);
                }
              }

              v17 = _Block_copy(self->_pairVerifyCompletion);
              v18 = v17;
              if (v17)
              {
                (*(v17 + 2))(v17, self->_stepError);
              }
            }

            controlFlags = self->_controlFlags;
            if (controlFlags & 0x400) != 0 || (controlFlags & 0x8000000000) != 0 || (self->_flags)
            {
              v21 = self->_ucat;
              if (v21->var0 <= 30)
              {
                if (v21->var0 != -1)
                {
                  goto LABEL_57;
                }

                if (_LogCategory_Initialize())
                {
                  v21 = self->_ucat;
LABEL_57:
                  LogPrintF(v21, "[RPConnection _clientRun]", 30, "Client PairSetup retry\n");
                }
              }

              v9 = 14;
              goto LABEL_62;
            }

            if ((self->_controlFlags & 0x240) != 0x200 || !self->_pairVerifyUsedIdentity)
            {
LABEL_27:
              self->_internalState = 22;
              goto LABEL_63;
            }

            v20 = self->_ucat;
            if (v20->var0 <= 30)
            {
              if (v20->var0 != -1)
              {
                goto LABEL_54;
              }

              if (_LogCategory_Initialize())
              {
                v20 = self->_ucat;
LABEL_54:
                LogPrintF(v20, "[RPConnection _clientRun]", 30, "Client immediate non-RPIdentity retry\n");
              }
            }

LABEL_61:
            v9 = 16;
            goto LABEL_62;
          }

LABEL_36:
          if (!self->_stepDone)
          {
            goto LABEL_63;
          }

          v9 = 19;
LABEL_62:
          self->_internalState = v9;
LABEL_63:
          v22 = self->_internalState;
          if (v22 == internalState)
          {
            return;
          }

          v23 = self->_ucat;
          if (v23->var0 <= 30)
          {
            if (v23->var0 != -1)
            {
              goto LABEL_66;
            }

            if (_LogCategory_Initialize())
            {
              v23 = self->_ucat;
              v22 = self->_internalState;
LABEL_66:
              v24 = _StateToString(internalState);
              v25 = _StateToString(v22);
              LogPrintF(v23, "[RPConnection _clientRun]", 30, "Client state: %s -> %s\n", v24, v25);
            }
          }

          [(RPConnection *)self _updateExternalState];
          break;
        case 0x12u:
          [(RPConnection *)self _pskPrepare:1];
          startTimer = self->_startTimer;
          if (startTimer)
          {
            v11 = startTimer;
            dispatch_source_cancel(v11);
            v12 = self->_startTimer;
            self->_startTimer = 0;
          }

          v9 = 21;
          goto LABEL_62;
        case 0x13u:
          self->_internalState = 20;
          [(RPConnection *)self _clientStartSession];
          goto LABEL_63;
        case 0x14u:
          if (self->_stepError)
          {
            goto LABEL_27;
          }

          if (!self->_stepDone)
          {
            goto LABEL_63;
          }

          [(RPConnection *)self _clientStarted];
          v9 = self->_internalState + 1;
          goto LABEL_62;
        case 0x15u:
          if (self->_stepError)
          {
            goto LABEL_27;
          }

          [(RPConnection *)self _processSends];
          goto LABEL_63;
        case 0x16u:
          if (self->_stepError)
          {
            if (![(RPConnection *)self _clientError:?])
            {
              goto LABEL_63;
            }
          }

          else
          {
            v15 = RPErrorF(4294960534, "Client error without error", 0, v2, v3, v4, v5, v6, v26);
            v16 = [(RPConnection *)self _clientError:v15];

            if (!v16)
            {
              goto LABEL_63;
            }
          }

          v9 = 23;
          goto LABEL_62;
        case 0x17u:
          self->_internalState = 24;
          ++self->_retryCount;
          [(RPConnection *)self _clientRetryStart];
          goto LABEL_63;
        case 0x18u:
          if (self->_retryFired)
          {
            self->_retryFired = 0;
LABEL_24:
            self->_internalState = 10;
          }

          goto LABEL_63;
        default:
          goto LABEL_63;
      }
    }
  }
}

- (void)_clientConnectStart
{
  ucat = self->_ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 != -1)
    {
LABEL_3:
      LogPrintF(ucat, "[RPConnection _clientConnectStart]", 30, "Client connect start: %@\n", self);
      goto LABEL_5;
    }

    if (_LogCategory_Initialize())
    {
      ucat = self->_ucat;
      goto LABEL_3;
    }
  }

LABEL_5:
  if (self->_blePeerIdentifier)
  {

    [(RPConnection *)self _clientConnectStartBLE];
  }

  else if (self->_btPipe)
  {

    [(RPConnection *)self _clientConnectStartBTPipe];
  }

  else
  {

    [(RPConnection *)self _clientConnectStartTCP];
  }
}

- (void)_clientConnectStartBLE
{
  self->_stepDone = 0;
  stepError = self->_stepError;
  self->_stepError = 0;

  [(CUBLEConnection *)self->_bleConnection invalidate];
  v4 = objc_alloc_init(MEMORY[0x1E6999458]);
  bleConnection = self->_bleConnection;
  self->_bleConnection = v4;

  [(CUBLEConnection *)v4 setClientBundleID:self->_clientBundleID];
  [(CUBLEConnection *)v4 setClientUseCase:self->_bleClientUseCase];
  if (self->_bleConnectionPSM)
  {
    bleConnectionPSM = self->_bleConnectionPSM;
  }

  else
  {
    bleConnectionPSM = 129;
  }

  [(CUBLEConnection *)v4 setDestinationPSM:bleConnectionPSM];
  [(CUBLEConnection *)v4 setDestinationUUID:self->_blePeerIdentifier];
  [(CUBLEConnection *)v4 setDispatchQueue:self->_dispatchQueue];
  if (self->_label)
  {
    label = self->_label;
  }

  else
  {
    label = @"RPCnx";
  }

  [(CUBLEConnection *)v4 setLabel:label];
  if (self->_clientBundleID)
  {
    ucat = self->_ucat;
    if (ucat->var0 <= 30)
    {
      if (ucat->var0 != -1)
      {
LABEL_10:
        clientBundleID = [(CUBLEConnection *)v4 clientBundleID];
        v10 = [MEMORY[0x1E696AD98] numberWithInteger:{-[CUBLEConnection clientUseCase](v4, "clientUseCase")}];
        LogPrintF(ucat, "[RPConnection _clientConnectStartBLE]", 30, "BLE client connection with bundleID: %@ and clientUseCase: %@\n", clientBundleID, v10);

        goto LABEL_12;
      }

      if (_LogCategory_Initialize())
      {
        ucat = self->_ucat;
        goto LABEL_10;
      }
    }
  }

LABEL_12:
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __38__RPConnection__clientConnectStartBLE__block_invoke;
  v20[3] = &unk_1E7C92D10;
  v20[4] = v4;
  v20[5] = self;
  [(CUBLEConnection *)v4 setErrorHandler:v20];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __38__RPConnection__clientConnectStartBLE__block_invoke_2;
  v19[3] = &unk_1E7C92D80;
  v19[4] = v4;
  v19[5] = self;
  [(CUBLEConnection *)v4 setInvalidationHandler:v19];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __38__RPConnection__clientConnectStartBLE__block_invoke_3;
  v18[3] = &unk_1E7C92D10;
  v18[4] = v4;
  v18[5] = self;
  [(CUBLEConnection *)v4 activateWithCompletion:v18];
  bleConnectTimer = self->_bleConnectTimer;
  if (bleConnectTimer)
  {
    v12 = bleConnectTimer;
    dispatch_source_cancel(v12);
    v13 = self->_bleConnectTimer;
    self->_bleConnectTimer = 0;
  }

  v14 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_dispatchQueue);
  v15 = self->_bleConnectTimer;
  self->_bleConnectTimer = v14;

  v16 = self->_bleConnectTimer;
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __38__RPConnection__clientConnectStartBLE__block_invoke_4;
  handler[3] = &unk_1E7C92CE8;
  handler[4] = self;
  dispatch_source_set_event_handler(v16, handler);
  CUDispatchTimerSet();
  dispatch_resume(self->_bleConnectTimer);
}

void *__38__RPConnection__clientConnectStartBLE__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (v3 == result[59])
  {
    return [result _clientNetworkError:a2 label:"BLE cnx error"];
  }

  return result;
}

void *__38__RPConnection__clientConnectStartBLE__block_invoke_2(void *result)
{
  v5 = result[5];
  if (result[4] != *(v5 + 472))
  {
    return result;
  }

  v12 = v1;
  v13 = v4;
  v6 = result;
  v7 = *(v5 + 296);
  if (*v7 <= 30)
  {
    if (*v7 != -1)
    {
LABEL_4:
      LogPrintF(v7, "[RPConnection _clientConnectStartBLE]_block_invoke_2", 30, "BLE client connection invalidated\n", v2, v12, v3, v4);
      v5 = v6[5];
      goto LABEL_6;
    }

    v8 = _LogCategory_Initialize();
    v5 = v6[5];
    if (v8)
    {
      v7 = *(v5 + 296);
      goto LABEL_4;
    }
  }

LABEL_6:
  v9 = *(v5 + 472);
  *(v5 + 472) = 0;

  v10 = v6[5];
  v11 = *(v10 + 256);
  *(v10 + 256) = 0;

  result = v6[5];
  if (*(result + 80) == 1)
  {

    return [result _invalidated];
  }

  return result;
}

void __38__RPConnection__clientConnectStartBLE__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 472);
  if (*(a1 + 32) == v4)
  {
    objc_storeStrong((v3 + 256), v4);
    v6 = a2;
    [*(a1 + 40) _clientConnectCompleted:v6];
  }
}

void __38__RPConnection__clientConnectStartBLE__block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(*(a1 + 32) + 24);
  if (v9)
  {
    v10 = v9;
    dispatch_source_cancel(v10);
    v11 = *(a1 + 32);
    v12 = *(v11 + 24);
    *(v11 + 24) = 0;
  }

  v13 = *(a1 + 32);
  v15 = RPErrorF(4294896153, "BLE client connect timeout", a3, a4, a5, a6, a7, a8, v14);
  [v13 _clientConnectCompleted:v15];
}

- (void)_clientConnectStartBTPipe
{
  self->_stepDone = 0;
  stepError = self->_stepError;
  self->_stepError = 0;

  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__RPConnection__clientConnectStartBTPipe__block_invoke;
  block[3] = &unk_1E7C92CE8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_clientConnectStartTCP
{
  self->_stepDone = 0;
  stepError = self->_stepError;
  self->_stepError = 0;

  [(CUTCPConnection *)self->_tcpConnection invalidate];
  v4 = objc_alloc_init(MEMORY[0x1E6999548]);
  tcpConnection = self->_tcpConnection;
  self->_tcpConnection = v4;

  [(CUTCPConnection *)v4 setConnectTimeoutSecs:30.0];
  [(CUTCPConnection *)v4 setDataTimeoutSecs:20.0];
  [(CUTCPConnection *)v4 setDestinationBonjour:self->_bonjourPeerDevice];
  [(CUTCPConnection *)v4 setDestinationString:self->_destinationString];
  [(CUTCPConnection *)v4 setDispatchQueue:self->_dispatchQueue];
  keepAliveSeconds = self->_keepAliveSeconds;
  if (keepAliveSeconds)
  {
    v7 = keepAliveSeconds;
  }

  else
  {
    v7 = 150;
  }

  [(CUTCPConnection *)v4 setKeepAliveIdleSeconds:v7];
  [(CUTCPConnection *)v4 setKeepAliveIntervalSeconds:10];
  [(CUTCPConnection *)v4 setKeepAliveMaxCount:3];
  if (self->_label)
  {
    label = self->_label;
  }

  else
  {
    label = @"RPCnx";
  }

  [(CUTCPConnection *)v4 setLabel:label];
  [(CUTCPConnection *)v4 setTrafficFlags:self->_trafficFlags];
  controlFlags = self->_controlFlags;
  if (controlFlags)
  {
    v10 = 57;
  }

  else
  {
    v10 = 41;
  }

  [(CUTCPConnection *)v4 setFlags:v10 | (controlFlags >> 12) & 0x80];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __38__RPConnection__clientConnectStartTCP__block_invoke;
  v14[3] = &unk_1E7C92D10;
  v14[4] = v4;
  v14[5] = self;
  [(CUTCPConnection *)v4 setErrorHandler:v14];
  if (self->_flowControlWriteChangedHandler)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __38__RPConnection__clientConnectStartTCP__block_invoke_2;
    v13[3] = &unk_1E7C92D80;
    v13[4] = v4;
    v13[5] = self;
    [(CUTCPConnection *)v4 setFlowControlChangedHandler:v13];
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __38__RPConnection__clientConnectStartTCP__block_invoke_3;
  v12[3] = &unk_1E7C92D80;
  v12[4] = v4;
  v12[5] = self;
  [(CUTCPConnection *)v4 setInvalidationHandler:v12];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __38__RPConnection__clientConnectStartTCP__block_invoke_4;
  v11[3] = &unk_1E7C92D10;
  v11[4] = v4;
  v11[5] = self;
  [(CUTCPConnection *)v4 activateWithCompletion:v11];
}

void *__38__RPConnection__clientConnectStartTCP__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (v3 == result[96])
  {
    return [result _clientNetworkError:a2 label:"TCP cnx error"];
  }

  return result;
}

void __38__RPConnection__clientConnectStartTCP__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (*(a1 + 32) == *(v2 + 768))
  {
    v3 = _Block_copy(*(v2 + 560));
    if (v3)
    {
      v4 = v3;
      v3[2]();
      v3 = v4;
    }
  }
}

void *__38__RPConnection__clientConnectStartTCP__block_invoke_3(void *result)
{
  v5 = result[5];
  if (result[4] != *(v5 + 768))
  {
    return result;
  }

  v12 = v1;
  v13 = v4;
  v6 = result;
  v7 = *(v5 + 296);
  if (*v7 <= 30)
  {
    if (*v7 != -1)
    {
LABEL_4:
      LogPrintF(v7, "[RPConnection _clientConnectStartTCP]_block_invoke_3", 30, "TCP client connection invalidated\n", v2, v12, v3, v4);
      v5 = v6[5];
      goto LABEL_6;
    }

    v8 = _LogCategory_Initialize();
    v5 = v6[5];
    if (v8)
    {
      v7 = *(v5 + 296);
      goto LABEL_4;
    }
  }

LABEL_6:
  v9 = *(v5 + 768);
  *(v5 + 768) = 0;

  v10 = v6[5];
  v11 = *(v10 + 256);
  *(v10 + 256) = 0;

  result = v6[5];
  if (*(result + 80) == 1)
  {

    return [result _invalidated];
  }

  return result;
}

void __38__RPConnection__clientConnectStartTCP__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 768);
  if (*(a1 + 32) == v4)
  {
    objc_storeStrong((v3 + 256), v4);
    v6 = a2;
    [*(a1 + 40) _clientConnectCompleted:v6];
  }
}

- (void)_clientConnectCompleted:(id)completed
{
  completedCopy = completed;
  bleConnectTimer = self->_bleConnectTimer;
  if (bleConnectTimer)
  {
    v11 = bleConnectTimer;
    dispatch_source_cancel(v11);
    v12 = self->_bleConnectTimer;
    self->_bleConnectTimer = 0;
  }

  if (!completedCopy)
  {
    [(RPConnection *)self _updateLinkInfo];
    if (self->_linkType == 4)
    {
      [(RPEndpoint *)self->_peerDeviceInfo setStatusFlags:[(RPEndpoint *)self->_peerDeviceInfo statusFlags]& 0xFFFFFFFFFFEFFFE0];
      [(RPEndpoint *)self->_peerDeviceInfo setStatusFlags:[(RPEndpoint *)self->_peerDeviceInfo statusFlags]| 8];
    }

    ipAddress = [(RPEndpoint *)self->_peerDeviceInfo ipAddress];
    if (ipAddress)
    {
    }

    else if (self->_peerAddrString)
    {
      [(RPEndpoint *)self->_peerDeviceInfo setIpAddress:?];
    }

    startTimer = self->_startTimer;
    if (startTimer)
    {
      v16 = startTimer;
      dispatch_source_cancel(v16);
      v17 = self->_startTimer;
      self->_startTimer = 0;
    }

    v18 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_dispatchQueue);
    v19 = self->_startTimer;
    self->_startTimer = v18;

    v20 = self->_startTimer;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __40__RPConnection__clientConnectCompleted___block_invoke;
    handler[3] = &unk_1E7C92CE8;
    handler[4] = self;
    dispatch_source_set_event_handler(v20, handler);
    CUDispatchTimerSet();
    dispatch_resume(self->_startTimer);
    if (self->_readFrame.readRequested)
    {
LABEL_24:
      if (!self->_btPipeHighPriority || self->_readFrameBTPipeHighPriority.readRequested)
      {
        goto LABEL_31;
      }

      ucat = self->_ucat;
      if (ucat->var0 <= 40)
      {
        if (ucat->var0 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_30;
          }

          ucat = self->_ucat;
        }

        LogPrintF(ucat, "[RPConnection _clientConnectCompleted:]", 40, "Start receiving data from high priority pipe");
      }

LABEL_30:
      [(RPConnection *)self _receiveStart:0 readFrame:&self->_readFrameBTPipeHighPriority requestable:self->_btPipeHighPriority];
LABEL_31:
      self->_stepDone = 1;
      goto LABEL_32;
    }

    v21 = self->_ucat;
    if (v21->var0 <= 40)
    {
      if (v21->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_23;
        }

        v21 = self->_ucat;
      }

      LogPrintF(v21, "[RPConnection _clientConnectCompleted:]", 40, "Start receiving data from the default pipe");
    }

LABEL_23:
    [(RPConnection *)self _receiveStart:0 readFrame:&self->_readFrame requestable:self->_requestable];
    goto LABEL_24;
  }

  v13 = self->_ucat;
  if (v13->var0 > 60)
  {
    goto LABEL_20;
  }

  if (v13->var0 != -1)
  {
    goto LABEL_6;
  }

  if (_LogCategory_Initialize())
  {
    v13 = self->_ucat;
LABEL_6:
    LogPrintF(v13, "[RPConnection _clientConnectCompleted:]", 60, "### Connect failed: %{error}\n", completedCopy);
  }

LABEL_20:
  if (!self->_stepError)
  {
    v22 = RPNestedErrorF(completedCopy, 4294896153, "Connect failed", v4, v5, v6, v7, v8, v25);
    stepError = self->_stepError;
    self->_stepError = v22;
  }

LABEL_32:
  [(RPConnection *)self _run];
}

uint64_t __40__RPConnection__clientConnectCompleted___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(*(a1 + 32) + 128);
  if (v9)
  {
    v10 = v9;
    dispatch_source_cancel(v10);
    v11 = *(a1 + 32);
    v12 = *(v11 + 128);
    *(v11 + 128) = 0;
  }

  v13 = *(a1 + 32);
  if (!v13[18])
  {
    v14 = RPErrorF(4294896153, "Start session timeout", a3, a4, a5, a6, a7, a8, v18);
    v15 = *(a1 + 32);
    v16 = *(v15 + 144);
    *(v15 + 144) = v14;

    v13 = *(a1 + 32);
  }

  return [v13 _run];
}

- (BOOL)_clientError:(id)error
{
  errorCopy = error;
  ucat = self->_ucat;
  if (ucat->var0 <= 60)
  {
    if (ucat->var0 != -1)
    {
LABEL_3:
      LogPrintF(ucat, "[RPConnection _clientError:]", 60, "### Client error: %{error}\n", errorCopy);
      goto LABEL_5;
    }

    if (_LogCategory_Initialize())
    {
      ucat = self->_ucat;
      goto LABEL_3;
    }
  }

LABEL_5:
  bleConnectTimer = self->_bleConnectTimer;
  if (bleConnectTimer)
  {
    v13 = bleConnectTimer;
    dispatch_source_cancel(v13);
    v14 = self->_bleConnectTimer;
    self->_bleConnectTimer = 0;
  }

  startTimer = self->_startTimer;
  if (startTimer)
  {
    v16 = startTimer;
    dispatch_source_cancel(v16);
    v17 = self->_startTimer;
    self->_startTimer = 0;
  }

  if (errorCopy)
  {
    [(RPConnection *)self _abortRequestsWithError:errorCopy];
  }

  else
  {
    v18 = RPErrorF(4294960596, "Client error", v4, v5, v6, v7, v8, v9, v31);
    [(RPConnection *)self _abortRequestsWithError:v18];
  }

  [(CUBLEConnection *)self->_bleConnection invalidate];
  [(CUTCPConnection *)self->_tcpConnection invalidate];
  if (self->_btPipe)
  {
    [(RPConnection *)self _invalidateCore:errorCopy];
  }

  code = [errorCopy code];
  if (code == -6776)
  {
    v20 = self->_ucat;
    if (v20->var0 <= 30)
    {
      if (v20->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_48;
        }

        v20 = self->_ucat;
      }

      LogPrintF(v20, "[RPConnection _clientError:]", 30, "Peer is blocking access, invalidating\n");
    }

LABEL_48:
    [(RPConnection *)self _invalidateWithError:errorCopy];
    v28 = 0;
    goto LABEL_49;
  }

  if ((self->_controlFlags & 0x200) != 0)
  {
    v25 = self->_ucat;
    if (v25->var0 <= 30)
    {
      if (v25->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_48;
        }

        v25 = self->_ucat;
      }

      LogPrintF(v25, "[RPConnection _clientError:]", 30, "OnDemand connection failed, invalidating\n");
    }

    goto LABEL_48;
  }

  bonjourPeerDevice = self->_bonjourPeerDevice;
  if (bonjourPeerDevice)
  {
    retryCount = self->_retryCount;
    if (retryCount >= 10)
    {
      v23 = code;
      v24 = self->_ucat;
      if (v24->var0 > 30)
      {
        goto LABEL_43;
      }

      if (v24->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
LABEL_43:
          if (v23 == -6754 && ([(RPIdentity *)self->_identityResolved type]== 8 || [(RPIdentity *)self->_identityResolved type]== 9))
          {
            v29 = mach_absolute_time();
            [(RPIdentity *)self->_identityResolved setDisabledUntilTicks:SecondsToUpTicks() + v29];
          }

          [(CUBonjourDevice *)self->_bonjourPeerDevice reconfirm];
          goto LABEL_48;
        }

        v24 = self->_ucat;
        retryCount = self->_retryCount;
        bonjourPeerDevice = self->_bonjourPeerDevice;
      }

      LogPrintF(v24, "[RPConnection _clientError:]", 30, "Too many retries, invalidating: retries %d, %@\n", retryCount, bonjourPeerDevice);
      goto LABEL_43;
    }
  }

  v26 = self->_ucat;
  var0 = v26->var0;
  if (!self->_present)
  {
    if (var0 <= 30)
    {
      if (var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_48;
        }

        v26 = self->_ucat;
      }

      LogPrintF(v26, "[RPConnection _clientError:]", 30, "Peer appears missing, invalidating\n");
    }

    goto LABEL_48;
  }

  if (var0 <= 30)
  {
    if (var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_39;
      }

      v26 = self->_ucat;
    }

    LogPrintF(v26, "[RPConnection _clientError:]", 30, "Peer appears present, retrying\n");
  }

LABEL_39:
  v28 = 1;
LABEL_49:

  return v28;
}

- (void)_clientNetworkError:(id)error label:(const char *)label
{
  errorCopy = error;
  if ([errorCopy code] == -6758)
  {
    [(RPConnection *)self sendReachabilityProbe:"client no ack"];
  }

  else
  {
    if (!self->_stepError)
    {
      v11 = RPNestedErrorF(errorCopy, 4294896153, "%s", v6, v7, v8, v9, v10, label);
      stepError = self->_stepError;
      self->_stepError = v11;
    }

    [(RPConnection *)self _run];
  }
}

- (void)_clientPreAuthStart
{
  self->_stepDone = 0;
  stepError = self->_stepError;
  self->_stepError = 0;

  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v6 setObject:@"715.2" forKeyedSubscript:@"_sv"];
  ucat = self->_ucat;
  if (ucat->var0 <= 30)
  {
    v5 = v6;
    if (ucat->var0 != -1)
    {
LABEL_3:
      LogPrintF(ucat, "[RPConnection _clientPreAuthStart]", 30, "Send PreAuthRequest: %##@\n", v5);
      goto LABEL_5;
    }

    if (_LogCategory_Initialize())
    {
      ucat = self->_ucat;
      v5 = v6;
      goto LABEL_3;
    }
  }

LABEL_5:
  [(RPConnection *)self _sendFrameType:10 unencryptedObject:v6];
}

- (void)_clientPreAuthResponseWithData:(id)data
{
  v4 = OPACKDecodeData();
  if (!v4)
  {
    ucat = self->_ucat;
    if (ucat->var0 > 90)
    {
      goto LABEL_23;
    }

    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_23;
      }

      ucat = self->_ucat;
    }

    v10 = 0;
    v8 = "### PreAuthResponse decode failed: %#m\n";
LABEL_13:
    LogPrintF(ucat, "[RPConnection _clientPreAuthResponseWithData:]", 90, v8, v10);
    goto LABEL_23;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    ucat = self->_ucat;
    if (ucat->var0 > 90)
    {
      goto LABEL_23;
    }

    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_23;
      }

      ucat = self->_ucat;
    }

    v8 = "### PreAuthResponse bad type\n";
    goto LABEL_13;
  }

  v5 = self->_ucat;
  var0 = v5->var0;
  if (self->_internalState == 13)
  {
    if (var0 <= 30)
    {
      if (var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_22;
        }

        v5 = self->_ucat;
      }

      LogPrintF(v5, "[RPConnection _clientPreAuthResponseWithData:]", 30, "Received PreAuthResponse: %##@\n", v4);
    }

LABEL_22:
    stepError = self->_stepError;
    self->_stepError = 0;

    self->_stepDone = 1;
    [(RPConnection *)self _run];
    goto LABEL_23;
  }

  if (var0 <= 60)
  {
    if (var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_23;
      }

      v5 = self->_ucat;
    }

    LogPrintF(v5, "[RPConnection _clientPreAuthResponseWithData:]", 60, "### Ignoring received PreAuthResponse when not expected: %##@\n", v4);
  }

LABEL_23:
}

- (void)_clientPairSetupStart
{
  v29 = *MEMORY[0x1E69E9840];
  [(RPConnection *)self _pairSetupInvalidate];
  self->_stepDone = 0;
  stepError = self->_stepError;
  self->_stepError = 0;

  v4 = objc_alloc_init(MEMORY[0x1E69994F8]);
  pairSetupSession = self->_pairSetupSession;
  self->_pairSetupSession = v4;

  [(CUPairingSession *)self->_pairSetupSession setDispatchQueue:self->_dispatchQueue];
  [(CUPairingSession *)self->_pairSetupSession setFlags:self->_pairSetupFlags];
  if (self->_label)
  {
    label = self->_label;
  }

  else
  {
    label = @"RPCnx";
  }

  [(CUPairingSession *)self->_pairSetupSession setLabel:label];
  [(CUPairingSession *)self->_pairSetupSession setSessionType:1];
  if ([(NSArray *)self->_allowedMACAddresses count])
  {
    [(CUPairingSession *)self->_pairSetupSession setAllowedMACAddresses:self->_allowedMACAddresses];
  }

  if ((self->_controlFlags & 0x1000000000) != 0)
  {
    ucat = self->_ucat;
    if (ucat->var0 <= 30)
    {
      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_11;
        }

        ucat = self->_ucat;
      }

      LogPrintF(ucat, "[RPConnection _clientPairSetupStart]", 30, "Enabling FitnessPairing \n");
    }

LABEL_11:
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v8 setObject:&unk_1F2EEC698 forKeyedSubscript:@"RPIdentityFeatureFlags"];
    [(CUPairingSession *)self->_pairSetupSession setAdditionalPeerInfo:v8];
  }

  if ([(NSString *)self->_password length])
  {
    password = self->_password;
    v10 = self->_pairSetupSession;
LABEL_14:
    [(CUPairingSession *)v10 setFixedPIN:password];
    goto LABEL_16;
  }

  if (!self->_passwordType)
  {
    v10 = self->_pairSetupSession;
    password = @"public";
    goto LABEL_14;
  }

LABEL_16:
  if (self->_passwordType)
  {
    [(CUPairingSession *)self->_pairSetupSession setFlags:[(CUPairingSession *)self->_pairSetupSession flags]& 0xFFFFFFEFLL];
  }

  v11 = self->_pairSetupACL;
  if (v11)
  {
    v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v13 = v11;
    v14 = [(NSArray *)v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v25;
      v17 = MEMORY[0x1E695E118];
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v25 != v16)
          {
            objc_enumerationMutation(v13);
          }

          [v12 setObject:v17 forKeyedSubscript:*(*(&v24 + 1) + 8 * i)];
        }

        v15 = [(NSArray *)v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v15);
    }

    [(CUPairingSession *)self->_pairSetupSession setAcl:v12];
  }

  v19 = _Block_copy(self->_promptForPasswordHandler);
  v20 = v19;
  if (v19)
  {
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __37__RPConnection__clientPairSetupStart__block_invoke;
    v23[3] = &unk_1E7C93A80;
    v23[4] = self;
    v23[5] = v19;
    [(CUPairingSession *)self->_pairSetupSession setPromptForPINHandler:v23];
  }

  if (self->_pairSetupAuthType == 8)
  {
    if ((self->_controlFlags & 0x800000000000) != 0)
    {
      [(CUPairingSession *)self->_pairSetupSession setFlags:[(CUPairingSession *)self->_pairSetupSession flags]& 0xFFBFFFE3];
    }

    [(RPConnection *)self _configureForSessionPairing:self->_pairSetupSession];
  }

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __37__RPConnection__clientPairSetupStart__block_invoke_2;
  v22[3] = &unk_1E7C93AA8;
  v22[4] = self;
  [(CUPairingSession *)self->_pairSetupSession setSendDataHandler:v22];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __37__RPConnection__clientPairSetupStart__block_invoke_3;
  v21[3] = &unk_1E7C92D58;
  v21[4] = self;
  [(CUPairingSession *)self->_pairSetupSession setCompletionHandler:v21];
  [(CUPairingSession *)self->_pairSetupSession activate];
}

void __37__RPConnection__clientPairSetupStart__block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = MEMORY[0x1E695DF90];
  v6 = a3;
  v11 = objc_alloc_init(v5);
  [v11 setObject:v6 forKeyedSubscript:@"_pd"];

  v7 = *(a1 + 32);
  if (v7[50] == 8)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInt:8];
    [v11 setObject:v8 forKeyedSubscript:@"_auTy"];

    v7 = *(a1 + 32);
  }

  if (v7[86])
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInt:?];
    [v11 setObject:v9 forKeyedSubscript:@"_pwTy"];

    v7 = *(a1 + 32);
  }

  if (a2)
  {
    v10 = 3;
  }

  else
  {
    v10 = 4;
  }

  [v7 _sendFrameType:v10 unencryptedObject:v11];
}

- (void)_clientPairSetupWithData:(id)data
{
  dataCopy = data;
  v32 = 0;
  if (!self->_pairSetupSession)
  {
    v29 = RPErrorF(4294960551, "No PairSetup client session", v4, v5, v6, v7, v8, v9, v31);
    v19 = 0;
    goto LABEL_19;
  }

  ucat = self->_ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 != -1)
    {
LABEL_4:
      LogPrintF(ucat, "-[RPConnection _clientPairSetupWithData:]", 30, "PairSetup next (%d bytes)\n", [dataCopy length]);
      goto LABEL_6;
    }

    if (_LogCategory_Initialize())
    {
      ucat = self->_ucat;
      goto LABEL_4;
    }
  }

LABEL_6:
  v19 = OPACKDecodeData();
  if (!v19)
  {
    [(RPConnection *)&v32 _clientPairSetupWithData:v12, v13, v14, v15, v16, v17, v18];
    v28 = 0;
    goto LABEL_11;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(RPConnection *)v19 _clientPairSetupWithData:?];
LABEL_17:
    v29 = v33;
    goto LABEL_19;
  }

  Int64Ranged = CFDictionaryGetInt64Ranged();
  v32 = Int64Ranged;
  if (Int64Ranged)
  {
    [(RPConnection *)v19 _clientPairSetupWithData:&v33];
    goto LABEL_17;
  }

  CFDataGetTypeID();
  v21 = CFDictionaryGetTypedValue();
  if (!v21)
  {
    v29 = RPErrorF(v32, "PairSetup request with no pairing data", v22, v23, v24, v25, v26, v27, v31);
LABEL_19:
    if (!v29)
    {
LABEL_25:
      v28 = 0;
      goto LABEL_12;
    }

    v30 = self->_ucat;
    if (v30->var0 <= 60)
    {
      if (v30->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_24;
        }

        v30 = self->_ucat;
      }

      LogPrintF(v30, "[RPConnection _clientPairSetupWithData:]", 60, "### PairSetup client receive failed: %{error}\n", v29);
    }

LABEL_24:
    [(RPConnection *)self _clientPairSetupCompleted:v29];
    goto LABEL_25;
  }

  v28 = v21;
  [(CUPairingSession *)self->_pairSetupSession receivedData:v21];
LABEL_11:
  v29 = 0;
LABEL_12:
}

- (void)_clientPairSetupPromptWithFlags:(unsigned int)flags throttleSeconds:(int)seconds handler:(id)handler
{
  v5 = *&seconds;
  v6 = *&flags;
  pairSetupSession = self->_pairSetupSession;
  handlerCopy = handler;
  v9 = [(CUPairingSession *)pairSetupSession pinTypeActual]- 1;
  if (v9 > 7)
  {
    v10 = 0;
  }

  else
  {
    v10 = dword_1B6F2E178[v9];
  }

  self->_passwordTypeActual = v10;
  handlerCopy[2](handlerCopy, v6, v5);
}

- (void)_clientPairSetupCompleted:(id)completed
{
  completedCopy = completed;
  v5 = completedCopy;
  if (completedCopy)
  {
    v13 = completedCopy;
    goto LABEL_14;
  }

  pairSetupSession = self->_pairSetupSession;
  v22 = 0;
  v7 = [(CUPairingSession *)pairSetupSession openStreamWithName:@"main" error:&v22];
  v8 = v22;
  mainStream = self->_mainStream;
  self->_mainStream = v7;

  v10 = self->_mainStream;
  if (v10)
  {
    self->_mainAuthTagLength = [(CUPairingStream *)v10 authTagLength];
    if (self->_btPipeHighPriority)
    {
      v11 = self->_pairSetupSession;
      v21 = v8;
      v12 = [(CUPairingSession *)v11 openStreamWithName:@"hipri" error:&v21];
      v13 = v21;

      highPriorityStream = self->_highPriorityStream;
      self->_highPriorityStream = v12;

      v15 = self->_highPriorityStream;
      if (!v15)
      {
        goto LABEL_13;
      }

      self->_highPriorityAuthTagLength = [(CUPairingStream *)v15 authTagLength];
    }

    else
    {
      v13 = v8;
    }

    self->_statusFlags &= 0xFFFFFFAFFFF51FFFLL;
    if (([(CUPairingSession *)self->_pairSetupSession flags]& 0x10) != 0)
    {
      v16 = self->_flags | 1;
    }

    else
    {
      self->_statusFlags |= 0x8000uLL;
      v16 = self->_flags & 0xFFFFFFFE;
    }

    self->_flags = v16;
    ucat = self->_ucat;
    if (ucat->var0 <= 30)
    {
      [(RPConnection *)ucat->var0 _clientPairSetupCompleted:&self->_ucat];
    }

    self->_stepDone = 1;
LABEL_13:
    if (!v13)
    {
      goto LABEL_21;
    }

    goto LABEL_14;
  }

  v13 = v8;
  if (!v8)
  {
    goto LABEL_21;
  }

LABEL_14:
  v18 = self->_ucat;
  if (v18->var0 <= 60)
  {
    if (v18->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_18;
      }

      v18 = self->_ucat;
    }

    LogPrintF(v18, "[RPConnection _clientPairSetupCompleted:]", 60, "### PairSetup client completion failed: %{error}\n", v13);
  }

LABEL_18:
  if (!self->_stepError)
  {
    objc_storeStrong(&self->_stepError, v13);
  }

  [(RPConnection *)self _pairSetupInvalidate];
LABEL_21:
  v19 = _Block_copy(self->_authCompletionHandler);
  v20 = v19;
  if (v19)
  {
    (*(v19 + 2))(v19, v13);
  }

  [(RPConnection *)self _run];
}

- (void)_clientPairVerifyStart
{
  v25[1] = *MEMORY[0x1E69E9840];
  [(RPConnection *)self _pairVerifyInvalidate];
  self->_pairVerifyCompleted = 0;
  self->_pairVerifyUsedIdentity = 0;
  self->_stepDone = 0;
  stepError = self->_stepError;
  self->_stepError = 0;

  v4 = objc_alloc_init(MEMORY[0x1E69994F8]);
  pairVerifySession = self->_pairVerifySession;
  self->_pairVerifySession = v4;

  [(CUPairingSession *)self->_pairVerifySession setDispatchQueue:self->_dispatchQueue];
  [(CUPairingSession *)self->_pairVerifySession setFlags:self->_pairVerifyFlags];
  if (self->_label)
  {
    label = self->_label;
  }

  else
  {
    label = @"RPCnx";
  }

  [(CUPairingSession *)self->_pairVerifySession setLabel:label];
  [(CUPairingSession *)self->_pairVerifySession setSessionType:3];
  controlFlags = self->_controlFlags;
  if ((controlFlags & 0x20000000) != 0)
  {
    v24 = @"_cf";
    0x20000000 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:controlFlags & 0x20000000];
    v25[0] = 0x20000000;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    [(CUPairingSession *)self->_pairVerifySession setAppInfoSelf:v9];

    controlFlags = self->_controlFlags;
  }

  self->_pairVerifyAuthType = 0;
  passwordType = self->_passwordType;
  preferredIdentityType = self->_preferredIdentityType;
  if (preferredIdentityType == 2)
  {
    if ((controlFlags & 0xC00000000000) != 0)
    {
LABEL_8:
      self->_pairVerifyAuthType = 8;
      self->_pairSetupAuthType = 8;
      [(CUPairingSession *)self->_pairVerifySession setFlags:[(CUPairingSession *)self->_pairVerifySession flags]& 0xFFBFFFE3];
LABEL_9:
      [(CUPairingSession *)self->_pairVerifySession setSelfAppFlags:1];
      goto LABEL_32;
    }
  }

  else
  {
    if ((controlFlags & 0x8000000) != 0)
    {
      pairVerifyAuthType = 2;
      self->_pairVerifyAuthType = 2;
LABEL_37:
      GestaltGetDeviceClass();
      goto LABEL_41;
    }

    switch(preferredIdentityType)
    {
      case 13:
        goto LABEL_8;
      case 9:
        self->_pairVerifyAuthType = 3;
        [(CUPairingSession *)self->_pairVerifySession setFlags:[(CUPairingSession *)self->_pairVerifySession flags]& 0xFFBFFFFFLL];
        v13 = self->_pairVerifySession;
        v14 = [(CUPairingSession *)v13 flags]| 0x4000000;
        goto LABEL_31;
      case 8:
        goto LABEL_29;
    }

    if ((controlFlags & 0xC00000000000) != 0)
    {
      goto LABEL_8;
    }

    if (preferredIdentityType == 15 && self->_configurePairingHandler)
    {
      self->_pairVerifyAuthType = 9;
      [(CUPairingSession *)self->_pairVerifySession setFlags:[(CUPairingSession *)self->_pairVerifySession flags]& 0xFFBFFFFFLL];
      [(CUPairingSession *)self->_pairVerifySession setSelfAppFlags:1];
      (*(self->_configurePairingHandler + 2))();
      goto LABEL_32;
    }
  }

  if (((controlFlags & 0x400) != 0 || (self->_flags & 1) != 0 || (controlFlags & 0x8000000000) != 0) && passwordType)
  {
    if (passwordType == 4)
    {
      self->_pairVerifyAuthType = 7;
      [(CUPairingSession *)self->_pairVerifySession setFlags:[(CUPairingSession *)self->_pairVerifySession flags]& 0xFFBFFFFFLL];
      v13 = self->_pairVerifySession;
      v14 = [(CUPairingSession *)v13 flags]| 0x1000;
LABEL_31:
      [(CUPairingSession *)v13 setFlags:v14];
      goto LABEL_32;
    }

    if ((passwordType - 1) > 1)
    {
      goto LABEL_32;
    }

LABEL_29:
    self->_pairVerifyAuthType = 4;
    [(CUPairingSession *)self->_pairVerifySession setFlags:[(CUPairingSession *)self->_pairVerifySession flags]& 0xFFBFFFFFLL];
    v13 = self->_pairVerifySession;
    v14 = [(CUPairingSession *)v13 flags]| 0xC;
    goto LABEL_31;
  }

  if ((controlFlags & 0x40) != 0 || !self->_pairVerifyFailed)
  {
    goto LABEL_9;
  }

LABEL_32:
  pairVerifyAuthType = self->_pairVerifyAuthType;
  if (pairVerifyAuthType != 8)
  {
    goto LABEL_37;
  }

  [(RPConnection *)self _configureForSessionPairing:self->_pairVerifySession];
  if (GestaltGetDeviceClass() == 4)
  {
    ucat = self->_ucat;
    if (ucat->var0 <= 30)
    {
      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_40;
        }

        ucat = self->_ucat;
      }

      LogPrintF(ucat, "[RPConnection _clientPairVerifyStart]", 30, "Backwards compatibility change authType (%s) -> (%s)", "SessionPaired", "RPIdentity");
    }

LABEL_40:
    pairVerifyAuthType = 1;
    goto LABEL_41;
  }

  pairVerifyAuthType = 8;
LABEL_41:
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __38__RPConnection__clientPairVerifyStart__block_invoke;
  v22[3] = &unk_1E7C93AD0;
  v23 = pairVerifyAuthType;
  v22[4] = self;
  [(CUPairingSession *)self->_pairVerifySession setSendDataHandler:v22];
  if (pairVerifyAuthType > 7 || ((1 << pairVerifyAuthType) & 0x98) == 0)
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __38__RPConnection__clientPairVerifyStart__block_invoke_2;
    v21[3] = &unk_1E7C93AF8;
    v21[4] = self;
    [(CUPairingSession *)self->_pairVerifySession setSignDataHandler:v21];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __38__RPConnection__clientPairVerifyStart__block_invoke_3;
    v20[3] = &unk_1E7C93B20;
    v20[4] = self;
    [(CUPairingSession *)self->_pairVerifySession setVerifySignatureHandler:v20];
  }

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __38__RPConnection__clientPairVerifyStart__block_invoke_4;
  v19[3] = &unk_1E7C92D58;
  v19[4] = self;
  [(CUPairingSession *)self->_pairVerifySession setCompletionHandler:v19];
  v16 = self->_ucat;
  if (v16->var0 <= 30)
  {
    if (v16->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_55;
      }

      v16 = self->_ucat;
    }

    if (pairVerifyAuthType > 0xA)
    {
      v17 = "?";
    }

    else
    {
      v17 = off_1E7C94130[pairVerifyAuthType];
    }

    if (passwordType > 0xB)
    {
      v18 = "?";
    }

    else
    {
      v18 = off_1E7C940D0[passwordType];
    }

    LogPrintF(v16, "[RPConnection _clientPairVerifyStart]", 30, "PairVerify start client: AT %s, CF %#ll{flags}, FL %#{flags}, PWT %s\n", v17, self->_controlFlags, &unk_1B6F2DC4E, self->_flags, &unk_1B6F2E0D0, v18);
  }

LABEL_55:
  [(CUPairingSession *)self->_pairVerifySession activate];
}

void __38__RPConnection__clientPairVerifyStart__block_invoke(uint64_t a1, char a2, void *a3)
{
  v8 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (a2)
  {
    if (*(a1 + 40))
    {
      v7 = [MEMORY[0x1E696AD98] numberWithInt:?];
      [v5 setObject:v7 forKeyedSubscript:@"_auTy"];
    }

    v6 = 5;
  }

  else
  {
    v6 = 6;
  }

  [v5 setObject:v8 forKeyedSubscript:@"_pd"];
  [*(a1 + 32) _sendFrameType:v6 unencryptedObject:v5];
}

- (void)_clientPairVerifyWithData:(id)data
{
  dataCopy = data;
  v31 = 0;
  if (!self->_pairVerifySession)
  {
    v28 = RPErrorF(4294960551, "No PairVerify client session", v4, v5, v6, v7, v8, v9, v30);
    v19 = 0;
    goto LABEL_16;
  }

  ucat = self->_ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 != -1)
    {
LABEL_4:
      LogPrintF(ucat, "-[RPConnection _clientPairVerifyWithData:]", 30, "PairVerify next (%d bytes)\n", [dataCopy length]);
      goto LABEL_6;
    }

    if (_LogCategory_Initialize())
    {
      ucat = self->_ucat;
      goto LABEL_4;
    }
  }

LABEL_6:
  v19 = OPACKDecodeData();
  if (!v19)
  {
    [(RPConnection *)&v31 _clientPairSetupWithData:v12, v13, v14, v15, v16, v17, v18];
    v27 = 0;
    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(RPConnection *)v19 _clientPairVerifyWithData:?];
    v28 = v32;
    goto LABEL_16;
  }

  CFDataGetTypeID();
  v20 = CFDictionaryGetTypedValue();
  if (!v20)
  {
    v28 = RPErrorF(v31, "PairVerify request with no pairing data", v21, v22, v23, v24, v25, v26, v30);
LABEL_16:
    if (!v28)
    {
LABEL_22:
      v27 = 0;
      goto LABEL_11;
    }

    v29 = self->_ucat;
    if (v29->var0 <= 60)
    {
      if (v29->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_21;
        }

        v29 = self->_ucat;
      }

      LogPrintF(v29, "[RPConnection _clientPairVerifyWithData:]", 60, "### PairVerify client receive failed: %{error}\n", v28);
    }

LABEL_21:
    [(RPConnection *)self _clientPairVerifyCompleted:v28];
    goto LABEL_22;
  }

  v27 = v20;
  [(CUPairingSession *)self->_pairVerifySession receivedData:v20];
LABEL_10:
  v28 = 0;
LABEL_11:
}

- (void)_clientPairVerifyCompleted:(id)completed
{
  completedCopy = completed;
  v6 = completedCopy;
  if (completedCopy)
  {
    v11 = completedCopy;
    self->_pairVerifyFailed = 1;
    goto LABEL_71;
  }

  if ((self->_controlFlags & 0x20000000) != 0 && ([(CUPairingSession *)self->_pairVerifySession appInfoPeer], v7 = objc_claimAutoreleasedReturnValue(), Int64 = CFDictionaryGetInt64(), v7, (Int64 & 0x20000000) != 0))
  {
    pairVerifySession = self->_pairVerifySession;
    v65 = 0;
    v17 = [(CUPairingSession *)pairVerifySession openStreamWithName:@"main" type:2 error:&v65];
    v11 = v65;
    mainStream = self->_mainStream;
    self->_mainStream = v17;

    if (!self->_btPipeHighPriority)
    {
      goto LABEL_10;
    }

    v19 = self->_pairVerifySession;
    v64 = v11;
    v14 = [(CUPairingSession *)v19 openStreamWithName:@"hipri" type:2 error:&v64];
    v15 = v64;
  }

  else
  {
    v9 = self->_pairVerifySession;
    v63 = 0;
    v10 = [(CUPairingSession *)v9 openStreamWithName:@"main" error:&v63];
    v11 = v63;
    v12 = self->_mainStream;
    self->_mainStream = v10;

    if (!self->_btPipeHighPriority)
    {
      goto LABEL_10;
    }

    v13 = self->_pairVerifySession;
    v62 = v11;
    v14 = [(CUPairingSession *)v13 openStreamWithName:@"hipri" error:&v62];
    v15 = v62;
  }

  v20 = v15;

  highPriorityStream = self->_highPriorityStream;
  self->_highPriorityStream = v14;

  v22 = self->_highPriorityStream;
  v11 = v20;
  if (!v22)
  {
    goto LABEL_70;
  }

  self->_highPriorityAuthTagLength = [(CUPairingStream *)v22 authTagLength];
  v11 = v20;
LABEL_10:
  v23 = self->_mainStream;
  if (!v23)
  {
    goto LABEL_70;
  }

  self->_mainAuthTagLength = [(CUPairingStream *)v23 authTagLength];
  self->_pairVerifyCompleted = 1;
  [(RPEndpoint *)self->_peerDeviceInfo setStatusFlags:[(RPEndpoint *)self->_peerDeviceInfo statusFlags]& 0xFFFFFF8FFFF50FFFLL];
  v24 = self->_statusFlags & 0xFFFFFF8FFFF50FFFLL;
  self->_statusFlags = v24;
  pairVerifyAuthType = self->_pairVerifyAuthType;
  if (pairVerifyAuthType > 5)
  {
    if (pairVerifyAuthType <= 7)
    {
      if (pairVerifyAuthType == 6)
      {
        v28 = "PSGuest";
      }

      else
      {
        [(RPEndpoint *)self->_peerDeviceInfo setStatusFlags:[(RPEndpoint *)self->_peerDeviceInfo statusFlags]| 0x20000];
        self->_statusFlags |= 0x20000uLL;
        v28 = "PV-AID";
      }

      goto LABEL_62;
    }

    if ((pairVerifyAuthType - 8) >= 2)
    {
      if (pairVerifyAuthType == 10)
      {
        v28 = "AuthEnd";
        goto LABEL_62;
      }

      goto LABEL_44;
    }
  }

  else
  {
    if (pairVerifyAuthType > 2)
    {
      if (pairVerifyAuthType == 3)
      {
        [(RPEndpoint *)self->_peerDeviceInfo setStatusFlags:[(RPEndpoint *)self->_peerDeviceInfo statusFlags]| 0x2000];
        self->_statusFlags |= 0x2000uLL;
        pairedPeer = [(CUPairingSession *)self->_pairVerifySession pairedPeer];
        identifier = [pairedPeer identifier];
        uUIDString = [identifier UUIDString];
        peerHomeKitUserIdentifier = self->_peerHomeKitUserIdentifier;
        self->_peerHomeKitUserIdentifier = uUIDString;

        v28 = "HKShared";
      }

      else
      {
        if (pairVerifyAuthType != 4)
        {
          v28 = "PSAuth";
          goto LABEL_62;
        }

        aclActual = [(CUPairingSession *)self->_pairVerifySession aclActual];
        v34 = CFDictionaryGetInt64();

        if (v34)
        {
          homeKitIdentity = [(RPIdentityDaemon *)self->_identityDaemon homeKitIdentity];
          identifier2 = [homeKitIdentity identifier];
          v37 = self->_peerHomeKitUserIdentifier;
          self->_peerHomeKitUserIdentifier = identifier2;

          v38 = 557056;
        }

        else
        {
          v38 = 0x8000;
        }

        [(RPEndpoint *)self->_peerDeviceInfo setStatusFlags:[(RPEndpoint *)self->_peerDeviceInfo statusFlags]| v38];
        self->_statusFlags |= v38;
        v28 = "CUPair";
      }

      goto LABEL_57;
    }

    if (pairVerifyAuthType >= 3)
    {
LABEL_44:
      v28 = "?";
      goto LABEL_62;
    }
  }

  pairVerifyIdentityType = self->_pairVerifyIdentityType;
  if (pairVerifyIdentityType <= 5)
  {
    if (!pairVerifyIdentityType || pairVerifyIdentityType == 2)
    {
      self->_flags &= ~1u;
      [(RPEndpoint *)self->_peerDeviceInfo setStatusFlags:[(RPEndpoint *)self->_peerDeviceInfo statusFlags]| 0x80000];
      v24 = self->_statusFlags | 0x80000;
      self->_statusFlags = v24;
      pairVerifyUsedIdentity = self->_pairVerifyUsedIdentity;
      v32 = "(RPI-Owner)";
      goto LABEL_46;
    }

    if (pairVerifyIdentityType == 4)
    {
      [(RPEndpoint *)self->_peerDeviceInfo setStatusFlags:[(RPEndpoint *)self->_peerDeviceInfo statusFlags]| 0x4000];
      v29 = self->_statusFlags | 0x4000;
      self->_statusFlags = v29;
      v28 = "(RPI-Family)";
      if ((v29 & 0x80000) == 0)
      {
        goto LABEL_57;
      }

      goto LABEL_54;
    }
  }

  else if (pairVerifyIdentityType > 12)
  {
    if (pairVerifyIdentityType == 13)
    {
      [(RPEndpoint *)self->_peerDeviceInfo setStatusFlags:[(RPEndpoint *)self->_peerDeviceInfo statusFlags]| 0x2000000000];
      v44 = self->_statusFlags | 0x2000000000;
      self->_statusFlags = v44;
      v28 = "(RPI-SessionPaired)";
      if ((v44 & 0x80000) == 0)
      {
        goto LABEL_57;
      }

LABEL_54:
      homeKitIdentity2 = [(RPIdentityDaemon *)self->_identityDaemon homeKitIdentity];
      identifier3 = [homeKitIdentity2 identifier];
      v47 = self->_peerHomeKitUserIdentifier;
      self->_peerHomeKitUserIdentifier = identifier3;

      goto LABEL_57;
    }

    if (pairVerifyIdentityType == 15)
    {
      [(RPEndpoint *)self->_peerDeviceInfo setStatusFlags:[(RPEndpoint *)self->_peerDeviceInfo statusFlags]| 0x4000000000];
      v30 = self->_statusFlags | 0x4000000000;
      self->_statusFlags = v30;
      v28 = "(RPI-AdHocPaired)";
      if ((v30 & 0x80000) == 0)
      {
        goto LABEL_57;
      }

      goto LABEL_54;
    }
  }

  else
  {
    if (pairVerifyIdentityType == 6)
    {
      [(RPEndpoint *)self->_peerDeviceInfo setStatusFlags:[(RPEndpoint *)self->_peerDeviceInfo statusFlags]| 0x20000];
      v43 = self->_statusFlags | 0x20000;
      self->_statusFlags = v43;
      v28 = "(RPI-Friend)";
      if ((v43 & 0x80000) == 0)
      {
        goto LABEL_57;
      }

      goto LABEL_54;
    }

    if (pairVerifyIdentityType == 12)
    {
      [(RPEndpoint *)self->_peerDeviceInfo setStatusFlags:[(RPEndpoint *)self->_peerDeviceInfo statusFlags]| 0x1000000000];
      v27 = self->_statusFlags | 0x1000000000;
      self->_statusFlags = v27;
      v28 = "(RPI-SharedTVUser)";
      if ((v27 & 0x80000) == 0)
      {
        goto LABEL_57;
      }

      goto LABEL_54;
    }
  }

  pairVerifyUsedIdentity = self->_pairVerifyUsedIdentity;
  v32 = "(RPI-?)";
LABEL_46:
  if (pairVerifyUsedIdentity)
  {
    v28 = v32;
  }

  else
  {
    v28 = "(HK)";
  }

  if ((v24 & 0x80000) != 0)
  {
    goto LABEL_54;
  }

LABEL_57:
  if ((pairVerifyAuthType - 3) <= 1 && !self->_identityVerified)
  {
    pairedPeer2 = [(CUPairingSession *)self->_pairVerifySession pairedPeer];
    if (pairedPeer2)
    {
      v49 = objc_alloc_init(RPIdentity);
      publicKey = [pairedPeer2 publicKey];
      [(RPIdentity *)v49 setEdPKData:publicKey];

      identifier4 = [pairedPeer2 identifier];
      uUIDString2 = [identifier4 UUIDString];
      [(RPIdentity *)v49 setIdentifier:uUIDString2];

      [(RPIdentity *)v49 setType:8];
      identityVerified = self->_identityVerified;
      self->_identityVerified = v49;
      v54 = v49;

      identifier5 = [(RPIdentity *)self->_identityVerified identifier];
      [(RPEndpoint *)self->_peerDeviceInfo setVerifiedIdentity:identifier5];
    }
  }

LABEL_62:
  self->_stepDone = 1;
  ucat = self->_ucat;
  if (ucat->var0 > 30)
  {
    goto LABEL_66;
  }

  if (ucat->var0 != -1)
  {
    goto LABEL_64;
  }

  if (_LogCategory_Initialize())
  {
    ucat = self->_ucat;
LABEL_64:
    LogPrintF(ucat, "[RPConnection _clientPairVerifyCompleted:]", 30, "PairVerify completed client %s, %#{flags}, %#ll{flags}, RPI %@\n", v28, self->_flags, &unk_1B6F2E0D0, self->_statusFlags, &unk_1B6F2DEF3, self->_identityVerified);
  }

LABEL_66:
  v57 = _Block_copy(self->_authCompletionHandler);
  v58 = v57;
  if (v57 && pairVerifyAuthType)
  {
    (*(v57 + 2))(v57, 0);
  }

LABEL_70:
  self->_pairVerifyFailed = v11 != 0;
  if (!v11)
  {
    goto LABEL_78;
  }

LABEL_71:
  v59 = self->_ucat;
  if (v59->var0 <= 60)
  {
    if (v59->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_75;
      }

      v59 = self->_ucat;
    }

    LogPrintF(v59, "[RPConnection _clientPairVerifyCompleted:]", 60, "### PairVerify client completion failed: %{error}\n", v11);
  }

LABEL_75:
  if (!self->_stepError)
  {
    objc_storeStrong(&self->_stepError, completed);
  }

  [(RPConnection *)self _pairVerifyInvalidate];
LABEL_78:
  v60 = _Block_copy(self->_pairVerifyCompletion);
  v61 = v60;
  if (v60)
  {
    (*(v60 + 2))(v60, v11);
  }

  [(RPConnection *)self _run];
}

- (void)_clientStartSession
{
  self->_stepDone = 0;
  stepError = self->_stepError;
  self->_stepError = 0;

  _systeminfo = [(RPConnection *)self _systeminfo];
  ucat = self->_ucat;
  if (ucat->var0 <= 10)
  {
    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_5;
      }

      ucat = self->_ucat;
    }

    LogPrintF(ucat, "[RPConnection _clientStartSession]", 10, "Sending system info: %@", _systeminfo);
  }

LABEL_5:
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __35__RPConnection__clientStartSession__block_invoke;
  v9[3] = &unk_1E7C93B48;
  v9[4] = self;
  [(RPConnection *)self _sendEncryptedRequestID:@"_systemInfo" request:_systeminfo xpcID:0 options:0 sendEntry:0 responseHandler:v9];
  v6 = self->_statusFlags & 0x50000AE000;
  v7 = _Block_copy(self->_proxyDeviceUpdateHandler);
  v8 = v7;
  if (v6 && v7)
  {
    (*(v7 + 2))(v7);
  }
}

void __35__RPConnection__clientStartSession__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v18 = a2;
  v7 = a3;
  v13 = a4;
  if (v18)
  {
    v14 = [*(a1 + 32) _receivedSystemInfo:v18 xid:0];
    if (!v13 && (v14 & 1) == 0)
    {
      v13 = RPErrorF(4294960534, "Rejected connection", v15, v8, v9, v10, v11, v12, v17);
    }
  }

  if (v13)
  {
    v16 = RPNestedErrorF(v13, 4294896153, "Start session response failed", v8, v9, v10, v11, v12, v17);
  }

  else
  {
    v16 = 0;
  }

  objc_storeStrong((*(a1 + 32) + 144), v16);
  if (v13)
  {
  }

  *(*(a1 + 32) + 140) = 1;
  [*(a1 + 32) _run];
}

- (void)_clientRetryStart
{
  retryTimer = self->_retryTimer;
  if (retryTimer)
  {
    v4 = retryTimer;
    dispatch_source_cancel(v4);
    v5 = self->_retryTimer;
    self->_retryTimer = 0;
  }

  v6 = mach_absolute_time();
  if (self->_retryTicks)
  {
    UpTicksToSecondsF();
    v8 = v7;
  }

  else
  {
    v8 = -1.0;
  }

  self->_retryTicks = v6;
  if (v8 >= 10.0 || v8 < 0.0)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = 10.0 - v8;
  }

  ucat = self->_ucat;
  var0 = ucat->var0;
  if (v10 > 0.0)
  {
    if (var0 <= 30)
    {
      if (var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_24;
        }

        ucat = self->_ucat;
      }

      LogPrintF(ucat, "[RPConnection _clientRetryStart]", 30, "Retrying delayed: %.3f seconds\n", v10);
    }

LABEL_24:
    self->_retryFired = 0;
    v13 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_dispatchQueue);
    v14 = self->_retryTimer;
    self->_retryTimer = v13;

    v15 = self->_retryTimer;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __33__RPConnection__clientRetryStart__block_invoke;
    handler[3] = &unk_1E7C92CE8;
    handler[4] = self;
    dispatch_source_set_event_handler(v15, handler);
    CUDispatchTimerSet();
    dispatch_resume(self->_retryTimer);
    return;
  }

  if (v8 < 0.0)
  {
    if (var0 <= 30)
    {
      if (var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_28;
        }

        ucat = self->_ucat;
      }

      LogPrintF(ucat, "[RPConnection _clientRetryStart]", 30, "Retrying immediately: first retry\n");
    }
  }

  else if (var0 <= 30)
  {
    if (var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_28;
      }

      ucat = self->_ucat;
    }

    LogPrintF(ucat, "[RPConnection _clientRetryStart]", 30, "Retrying immediately: %{dur} since last retry\n", v8);
  }

LABEL_28:
  self->_retryFired = 1;
}

uint64_t __33__RPConnection__clientRetryStart__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 112) = mach_absolute_time();
  v2 = *(a1 + 32);

  return [v2 _clientRetryFired];
}

- (void)_clientRetryFired
{
  retryTimer = self->_retryTimer;
  if (retryTimer)
  {
    v10 = retryTimer;
    dispatch_source_cancel(v10);
    v11 = self->_retryTimer;
    self->_retryTimer = 0;
  }

  if (self->_present)
  {
    self->_retryFired = 1;

    [(RPConnection *)self _run];
    return;
  }

  ucat = self->_ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_11;
      }

      ucat = self->_ucat;
    }

    LogPrintF(ucat, "[RPConnection _clientRetryFired]", 30, "Peer missing after retry timer, invalidating\n");
  }

LABEL_11:
  v14 = RPErrorF(4294896153, "Peer missing after retry", v2, v3, v4, v5, v6, v7, v13);
  [(RPConnection *)self _invalidateWithError:v14];
}

- (void)_clientStarted
{
  startTimer = self->_startTimer;
  if (startTimer)
  {
    v4 = startTimer;
    dispatch_source_cancel(v4);
    v5 = self->_startTimer;
    self->_startTimer = 0;
  }

  self->_retryCount = 0;
}

- (void)_serverRun
{
  if (!self->_invalidateCalled)
  {
    while (1)
    {
      internalState = self->_internalState;
      if (internalState > 26)
      {
        switch(internalState)
        {
          case 27:
            if (self->_stepError)
            {
              goto LABEL_20;
            }

            if (self->_stepDone)
            {
              self->_stepDone = 0;
              [(RPConnection *)self _serverStarted];
              v4 = self->_internalState + 1;
              goto LABEL_16;
            }

            break;
          case 28:
            if (!self->_stepError)
            {
              [(RPConnection *)self _processSends];
              break;
            }

LABEL_20:
            self->_internalState = 29;
            break;
          case 29:
LABEL_12:
            self->_internalState = 25;
            break;
        }
      }

      else
      {
        switch(internalState)
        {
          case 0:
            goto LABEL_12;
          case 25:
            self->_internalState = 26;
            [(RPConnection *)self _serverAccept];
            if (self->_pskData)
            {
              [(RPConnection *)self _pskPrepare:0];
              [(RPConnection *)self _serverStarted];
              self->_internalState = 28;
            }

            break;
          case 26:
            if (self->_stepError)
            {
              goto LABEL_20;
            }

            if (self->_stepDone)
            {
              self->_stepDone = 0;
              v4 = 27;
LABEL_16:
              self->_internalState = v4;
            }

            break;
        }
      }

      v5 = self->_internalState;
      if (v5 == internalState)
      {
        return;
      }

      ucat = self->_ucat;
      if (ucat->var0 <= 30)
      {
        if (ucat->var0 != -1)
        {
          goto LABEL_24;
        }

        if (_LogCategory_Initialize())
        {
          ucat = self->_ucat;
          v5 = self->_internalState;
LABEL_24:
          v7 = _StateToString(internalState);
          v8 = _StateToString(v5);
          LogPrintF(ucat, "[RPConnection _serverRun]", 30, "Server state: %s -> %s\n", v7, v8);
        }
      }

      [(RPConnection *)self _updateExternalState];
    }
  }
}

- (void)_serverAccept
{
  startTimer = self->_startTimer;
  if (startTimer)
  {
    v4 = startTimer;
    dispatch_source_cancel(v4);
    v5 = self->_startTimer;
    self->_startTimer = 0;
  }

  v6 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_dispatchQueue);
  v7 = self->_startTimer;
  self->_startTimer = v6;

  v8 = self->_startTimer;
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __29__RPConnection__serverAccept__block_invoke;
  handler[3] = &unk_1E7C92CE8;
  handler[4] = self;
  dispatch_source_set_event_handler(v8, handler);
  CUDispatchTimerSet();
  dispatch_resume(self->_startTimer);
  [(RPConnection *)self _pairSetupInvalidate];
  [(RPConnection *)self _pairVerifyInvalidate];
  self->_pairVerifyCompleted = 0;
  self->_pairVerifyUsedIdentity = 0;
  self->_stepDone = 0;
  stepError = self->_stepError;
  self->_stepError = 0;

  [(RPConnection *)self _updateLinkInfo];
  if (self->_bleConnection)
  {
    [(RPConnection *)self _serverAcceptBLE];
  }

  else if (self->_btPipe)
  {
    [(RPConnection *)self _serverAcceptBTPipe];
  }

  else
  {
    [(RPConnection *)self _serverAcceptTCP];
  }
}

void __29__RPConnection__serverAccept__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(*(a1 + 32) + 128);
  if (v9)
  {
    v10 = v9;
    dispatch_source_cancel(v10);
    v11 = *(a1 + 32);
    v12 = *(v11 + 128);
    *(v11 + 128) = 0;
  }

  v13 = *(a1 + 32);
  v15 = RPErrorF(4294896153, "Start session timeout", a3, a4, a5, a6, a7, a8, v14);
  [v13 _serverError:v15];
}

- (void)_serverAcceptBLE
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __32__RPConnection__serverAcceptBLE__block_invoke;
  v4[3] = &unk_1E7C92D58;
  v4[4] = self;
  [(CUBLEConnection *)self->_bleConnection setErrorHandler:v4];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __32__RPConnection__serverAcceptBLE__block_invoke_2;
  v3[3] = &unk_1E7C92CE8;
  v3[4] = self;
  [(CUBLEConnection *)self->_bleConnection setInvalidationHandler:v3];
  [(RPConnection *)self _receiveStart:0 readFrame:&self->_readFrame requestable:self->_requestable];
}

uint64_t __32__RPConnection__serverAcceptBLE__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 296);
  if (*v3 <= 30)
  {
    if (*v3 != -1)
    {
LABEL_3:
      LogPrintF(v3, "[RPConnection _serverAcceptBLE]_block_invoke_2", 30, "BLE server connection invalidated\n");
      v2 = *(a1 + 32);
      goto LABEL_5;
    }

    v4 = _LogCategory_Initialize();
    v2 = *(a1 + 32);
    if (v4)
    {
      v3 = *(v2 + 296);
      goto LABEL_3;
    }
  }

LABEL_5:
  v5 = *(v2 + 472);
  *(v2 + 472) = 0;

  v6 = *(a1 + 32);
  v7 = *(v6 + 256);
  *(v6 + 256) = 0;

  v8 = *(a1 + 32);

  return [v8 _invalidated];
}

- (void)_serverAcceptBTPipe
{
  if (!self->_readFrame.readRequested)
  {
    ucat = self->_ucat;
    if (ucat->var0 <= 40)
    {
      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_6;
        }

        ucat = self->_ucat;
      }

      LogPrintF(ucat, "[RPConnection _serverAcceptBTPipe]", 40, "Start receiving data from the default pipe");
    }

LABEL_6:
    [(RPConnection *)self _receiveStart:0 readFrame:&self->_readFrame requestable:self->_requestable];
  }

  if (self->_readFrameBTPipeHighPriority.readRequested)
  {
    return;
  }

  v4 = self->_ucat;
  if (v4->var0 <= 40)
  {
    if (v4->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_12;
      }

      v4 = self->_ucat;
    }

    LogPrintF(v4, "[RPConnection _serverAcceptBTPipe]", 40, "Start receiving data from high priority pipe");
  }

LABEL_12:
  btPipeHighPriority = self->_btPipeHighPriority;

  [(RPConnection *)self _receiveStart:0 readFrame:&self->_readFrameBTPipeHighPriority requestable:btPipeHighPriority];
}

- (void)_serverAcceptTCP
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __32__RPConnection__serverAcceptTCP__block_invoke;
  v5[3] = &unk_1E7C92D58;
  v5[4] = self;
  [(CUTCPConnection *)self->_tcpConnection setErrorHandler:v5];
  if (self->_flowControlWriteChangedHandler)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __32__RPConnection__serverAcceptTCP__block_invoke_2;
    v4[3] = &unk_1E7C92CE8;
    v4[4] = self;
    [(CUTCPConnection *)self->_tcpConnection setFlowControlChangedHandler:v4];
  }

  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __32__RPConnection__serverAcceptTCP__block_invoke_3;
  v3[3] = &unk_1E7C92CE8;
  v3[4] = self;
  [(CUTCPConnection *)self->_tcpConnection setInvalidationHandler:v3];
  [(RPConnection *)self _receiveStart:0 readFrame:&self->_readFrame requestable:self->_requestable];
}

void __32__RPConnection__serverAcceptTCP__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 768))
  {
    v2 = _Block_copy(*(v1 + 560));
    if (v2)
    {
      v3 = v2;
      v2[2]();
      v2 = v3;
    }
  }
}

uint64_t __32__RPConnection__serverAcceptTCP__block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 296);
  if (*v3 <= 30)
  {
    if (*v3 != -1)
    {
LABEL_3:
      LogPrintF(v3, "[RPConnection _serverAcceptTCP]_block_invoke_3", 30, "TCP server connection invalidated\n");
      v2 = *(a1 + 32);
      goto LABEL_5;
    }

    v4 = _LogCategory_Initialize();
    v2 = *(a1 + 32);
    if (v4)
    {
      v3 = *(v2 + 296);
      goto LABEL_3;
    }
  }

LABEL_5:
  v5 = *(v2 + 768);
  *(v2 + 768) = 0;

  v6 = *(a1 + 32);
  v7 = *(v6 + 256);
  *(v6 + 256) = 0;

  v8 = *(a1 + 32);

  return [v8 _invalidated];
}

- (void)_serverError:(id)error
{
  errorCopy = error;
  ucat = self->_ucat;
  v8 = errorCopy;
  if (ucat->var0 <= 60)
  {
    if (ucat->var0 != -1)
    {
LABEL_3:
      LogPrintF(ucat, "[RPConnection _serverError:]", 60, "### Server error: %{error}\n", errorCopy);
      errorCopy = v8;
      goto LABEL_5;
    }

    v7 = _LogCategory_Initialize();
    errorCopy = v8;
    if (v7)
    {
      ucat = self->_ucat;
      goto LABEL_3;
    }
  }

LABEL_5:
  if (self->_btPipe)
  {
    [(RPConnection *)self _invalidateCore:errorCopy];
    if (!self->_stepError)
    {
      objc_storeStrong(&self->_stepError, error);
    }

    [(RPConnection *)self _run];
  }

  else
  {
    [(RPConnection *)self _invalidateWithError:errorCopy];
  }
}

- (void)_serverNetworkError:(id)error label:(const char *)label
{
  errorCopy = error;
  if ([errorCopy code] == -6758)
  {
    [(RPConnection *)self sendReachabilityProbe:"server no ack"];
  }

  else
  {
    v11 = RPNestedErrorF(errorCopy, 4294896153, "%s", v6, v7, v8, v9, v10, label);
    [(RPConnection *)self _serverError:v11];
  }
}

- (void)_serverPreAuthRequestWithData:(id)data
{
  v4 = OPACKDecodeData();
  if (v4)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    ucat = self->_ucat;
    var0 = ucat->var0;
    if (isKindOfClass)
    {
      if (var0 > 30)
      {
        goto LABEL_15;
      }

      if (var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
LABEL_15:
          v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
          [v9 setObject:@"715.2" forKeyedSubscript:@"_sv"];
          v10 = self->_ucat;
          if (v10->var0 <= 30)
          {
            if (v10->var0 == -1)
            {
              if (!_LogCategory_Initialize())
              {
                goto LABEL_21;
              }

              v10 = self->_ucat;
            }

            LogPrintF(v10, "[RPConnection _serverPreAuthRequestWithData:]", 30, "Send PreAuthResponse: %##@\n", v9);
          }

LABEL_21:
          [(RPConnection *)self _sendFrameType:11 unencryptedObject:v9];

          goto LABEL_22;
        }

        ucat = self->_ucat;
      }

      LogPrintF(ucat, "[RPConnection _serverPreAuthRequestWithData:]", 30, "Received PreAuthRequest: %##@\n", v4);
      goto LABEL_15;
    }

    if (var0 <= 90)
    {
      if (var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_22;
        }

        ucat = self->_ucat;
      }

      LogPrintF(ucat, "[RPConnection _serverPreAuthRequestWithData:]", 90, "### PreAuthRequest bad type\n");
    }
  }

  else
  {
    v8 = self->_ucat;
    if (v8->var0 <= 90)
    {
      if (v8->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_22;
        }

        v8 = self->_ucat;
      }

      LogPrintF(v8, "[RPConnection _serverPreAuthRequestWithData:]", 90, "### PreAuthRequest decode failed: %#m\n", 0);
    }
  }

LABEL_22:
}

- (BOOL)_serverPairingAllowed
{
  v2 = [getMCProfileConnectionClass(self a2)];
  v3 = getMCFeatureRemoteAppPairingAllowed(v2);
  v4 = [v2 effectiveBoolValueForSetting:v3];

  return v4 != 2;
}

- (void)_serverPairSetupWithData:(id)data start:(BOOL)start
{
  v74[2] = *MEMORY[0x1E69E9840];
  v68 = 0;
  v13 = OPACKDecodeData();
  if (!v13)
  {
    [(RPConnection *)&v68 _clientPairSetupWithData:v6, v7, v8, v9, v10, v11, v12];
    goto LABEL_92;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(RPConnection *)v13 _clientPairSetupWithData:?];
    v57 = v69;
    goto LABEL_98;
  }

  passwordType = self->_passwordType;
  if (!passwordType)
  {
    if (([(RPCompanionLinkDevice *)self->_localDeviceInfo flags]& 8) != 0)
    {
      goto LABEL_7;
    }

    passwordType = self->_passwordType;
  }

  if (passwordType != 3)
  {
    if ((self->_flags & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_12;
  }

LABEL_7:
  if ((self->_flags & 0x4000) == 0)
  {
    ucat = self->_ucat;
    if (ucat->var0 <= 50)
    {
      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_34;
        }

        ucat = self->_ucat;
      }

      LogPrintF(ucat, "[RPConnection _serverPairSetupWithData:start:]", 50, "PairSetup server rejecting when not allowing non-Home devices\n");
    }

LABEL_34:
    v73[0] = @"_ec";
    v73[1] = @"_em";
    v74[0] = &unk_1F2EEC6B0;
    v74[1] = @"Non-home access not allowed";
    v26 = MEMORY[0x1E695DF20];
    v27 = v74;
    v28 = v73;
LABEL_37:
    v29 = [v26 dictionaryWithObjects:v27 forKeys:v28 count:2];
    [(RPConnection *)self _sendFrameType:4 unencryptedObject:v29];
LABEL_91:

LABEL_92:
    v57 = 0;
    goto LABEL_93;
  }

LABEL_12:
  v16 = self->_ucat;
  if (v16->var0 <= 30)
  {
    if (v16->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_16;
      }

      v16 = self->_ucat;
    }

    LogPrintF(v16, "[RPConnection _serverPairSetupWithData:start:]", 30, "AirPlay restrictions ignored\n");
  }

LABEL_16:
  Int64Ranged = CFDictionaryGetInt64Ranged();
  v18 = Int64Ranged;
  if (Int64Ranged <= 0xA && ((1 << Int64Ranged) & 0x426) != 0 && ![(RPConnection *)self _serverPairingAllowed])
  {
    v25 = self->_ucat;
    if (v25->var0 <= 50)
    {
      if (v25->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_36;
        }

        v25 = self->_ucat;
      }

      LogPrintF(v25, "[RPConnection _serverPairSetupWithData:start:]", 50, "PairSetup server rejecting when not allowed\n");
    }

LABEL_36:
    v71[0] = @"_ec";
    v71[1] = @"_em";
    v72[0] = &unk_1F2EEC6B0;
    v72[1] = @"Pairing not allowed";
    v26 = MEMORY[0x1E695DF20];
    v27 = v72;
    v28 = v71;
    goto LABEL_37;
  }

  if (start || !self->_pairSetupSession)
  {
    [(RPConnection *)self _pairSetupInvalidate];
    v19 = objc_alloc_init(MEMORY[0x1E69994F8]);
    pairSetupSession = self->_pairSetupSession;
    self->_pairSetupSession = v19;

    [(CUPairingSession *)self->_pairSetupSession setDispatchQueue:self->_dispatchQueue];
    [(CUPairingSession *)self->_pairSetupSession setFlags:self->_pairSetupFlags];
    if (self->_label)
    {
      label = self->_label;
    }

    else
    {
      label = @"RPCnx";
    }

    [(CUPairingSession *)self->_pairSetupSession setLabel:label];
    [(CUPairingSession *)self->_pairSetupSession setSessionType:2];
    v22 = CFDictionaryGetInt64Ranged();
    DeviceClass = GestaltGetDeviceClass();
    if (v18 != 10 || DeviceClass != 4 || v22)
    {
LABEL_40:
      v30 = self->_ucat;
      if (v30->var0 > 30)
      {
        goto LABEL_51;
      }

      if (v30->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_51;
        }

        v30 = self->_ucat;
      }

      if (v18 > 0xB)
      {
        v31 = "?";
      }

      else
      {
        v31 = off_1E7C940D0[v18 & 0xF];
      }

      if (v22 > 0xA)
      {
        v32 = "?";
      }

      else
      {
        v32 = off_1E7C94130[v22];
      }

      LogPrintF(v30, "[RPConnection _serverPairSetupWithData:start:]", 30, "Requested password type: %s auth type: %s\n", v31, v32);
LABEL_51:
      if (v22 == 8)
      {
        self->_pairSetupAuthType = 8;
        self->_pairVerifyAuthType = 8;
        if (v18 == 1)
        {
          v33 = 1;
        }

        else
        {
          v33 = 8;
        }

        [(CUPairingSession *)self->_pairSetupSession setPinType:v33];
        [(CUPairingSession *)self->_pairSetupSession setFlags:[(CUPairingSession *)self->_pairSetupSession flags]& 0xFFBFFFE3];
        [(RPConnection *)self _configureForSessionPairing:self->_pairSetupSession];
      }

      v34 = self->_passwordType;
      if (v34 == 2)
      {
        self->_pairSetupAuthType = 5;
        v35 = self->_pairSetupSession;
        v36 = 2;
        goto LABEL_60;
      }

      if (v34 == 1)
      {
        self->_pairSetupAuthType = 5;
        v35 = self->_pairSetupSession;
        v36 = 1;
LABEL_60:
        [(CUPairingSession *)v35 setPinType:v36];
        [(CUPairingSession *)self->_pairSetupSession setFlags:[(CUPairingSession *)self->_pairSetupSession flags]& 0xFFFFFFEFLL];
LABEL_72:
        v41 = self->_pairSetupACL;
        if (v41)
        {
          v42 = objc_alloc_init(MEMORY[0x1E695DF90]);
          v64 = 0u;
          v65 = 0u;
          v66 = 0u;
          v67 = 0u;
          v43 = v41;
          v44 = [(NSArray *)v43 countByEnumeratingWithState:&v64 objects:v70 count:16];
          if (v44)
          {
            v45 = v44;
            v46 = *v65;
            v47 = MEMORY[0x1E695E118];
            do
            {
              for (i = 0; i != v45; ++i)
              {
                if (*v65 != v46)
                {
                  objc_enumerationMutation(v43);
                }

                [v42 setObject:v47 forKeyedSubscript:*(*(&v64 + 1) + 8 * i)];
              }

              v45 = [(NSArray *)v43 countByEnumeratingWithState:&v64 objects:v70 count:16];
            }

            while (v45);
          }

          [(CUPairingSession *)self->_pairSetupSession setAcl:v42];
        }

        if (self->_showPasswordHandler)
        {
          v63[0] = MEMORY[0x1E69E9820];
          v63[1] = 3221225472;
          v63[2] = __47__RPConnection__serverPairSetupWithData_start___block_invoke;
          v63[3] = &unk_1E7C93B70;
          v63[4] = self;
          [(CUPairingSession *)self->_pairSetupSession setShowPINHandlerEx:v63];
        }

        else
        {
          [(CUPairingSession *)self->_pairSetupSession setFlags:[(CUPairingSession *)self->_pairSetupSession flags]| 0x80];
        }

        if (self->_hidePasswordHandler)
        {
          v62[0] = MEMORY[0x1E69E9820];
          v62[1] = 3221225472;
          v62[2] = __47__RPConnection__serverPairSetupWithData_start___block_invoke_2;
          v62[3] = &unk_1E7C92CE8;
          v62[4] = self;
          [(CUPairingSession *)self->_pairSetupSession setHidePINHandler:v62];
        }

        v61[0] = MEMORY[0x1E69E9820];
        v61[1] = 3221225472;
        v61[2] = __47__RPConnection__serverPairSetupWithData_start___block_invoke_3;
        v61[3] = &unk_1E7C93AA8;
        v61[4] = self;
        [(CUPairingSession *)self->_pairSetupSession setSendDataHandler:v61];
        v60[0] = MEMORY[0x1E69E9820];
        v60[1] = 3221225472;
        v60[2] = __47__RPConnection__serverPairSetupWithData_start___block_invoke_4;
        v60[3] = &unk_1E7C92D58;
        v60[4] = self;
        [(CUPairingSession *)self->_pairSetupSession setCompletionHandler:v60];
        [(CUPairingSession *)self->_pairSetupSession activate];
        goto LABEL_87;
      }

      v37 = self->_password;
      if (![(NSString *)v37 length])
      {
        password = [(RPCompanionLinkDevice *)self->_localDeviceInfo password];

        v37 = password;
      }

      if ([(NSString *)v37 length])
      {
        self->_pairSetupAuthType = 5;
        [(CUPairingSession *)self->_pairSetupSession setFixedPIN:v37];
        [(CUPairingSession *)self->_pairSetupSession setFlags:[(CUPairingSession *)self->_pairSetupSession flags]& 0xFFFFFFEFLL];
        [(CUPairingSession *)self->_pairSetupSession setPinType:5];
LABEL_71:

        goto LABEL_72;
      }

      switch(v18)
      {
        case 1u:
          self->_pairSetupAuthType = 5;
          v39 = self->_pairSetupSession;
          v40 = 1;
          break;
        case 0xAu:
          goto LABEL_71;
        case 2u:
          self->_pairSetupAuthType = 5;
          v39 = self->_pairSetupSession;
          v40 = 2;
          break;
        default:
          self->_pairSetupAuthType = 6;
          [(CUPairingSession *)self->_pairSetupSession setFixedPIN:@"public"];
          goto LABEL_71;
      }

      [(CUPairingSession *)v39 setPinType:v40];
      [(CUPairingSession *)self->_pairSetupSession setFlags:[(CUPairingSession *)self->_pairSetupSession flags]& 0xFFFFFFEFLL];
      goto LABEL_71;
    }

    v24 = self->_ucat;
    if (v24->var0 <= 30)
    {
      if (v24->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_39;
        }

        v24 = self->_ucat;
      }

      LogPrintF(v24, "[RPConnection _serverPairSetupWithData:start:]", 30, "Backwards compatibility authType (%s) -> (%s)", "Invalid", "SessionPaired");
    }

LABEL_39:
    v22 = 8;
    goto LABEL_40;
  }

LABEL_87:
  configurePairingHandler = self->_configurePairingHandler;
  if (configurePairingHandler)
  {
    configurePairingHandler[2](configurePairingHandler, self->_pairSetupSession);
  }

  CFDataGetTypeID();
  v50 = CFDictionaryGetTypedValue();
  if (v50)
  {
    v29 = v50;
    [(CUPairingSession *)self->_pairSetupSession receivedData:v50];
    goto LABEL_91;
  }

  v57 = RPErrorF(v68, "PairSetup request with no pairing data", v51, v52, v53, v54, v55, v56, v59);
LABEL_98:
  if (v57)
  {
    v58 = self->_ucat;
    if (v58->var0 <= 60)
    {
      if (v58->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_93;
        }

        v58 = self->_ucat;
      }

      LogPrintF(v58, "[RPConnection _serverPairSetupWithData:start:]", 60, "### PairSetup server receive failed: %{error}\n", v57);
    }
  }

LABEL_93:
}

void __47__RPConnection__serverPairSetupWithData_start___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v5 = _Block_copy(*(*(a1 + 32) + 408));
  v6 = v5;
  if (v5)
  {
    *(*(a1 + 32) + 288) = 1;
    (*(v5 + 2))(v5, a2, v7);
  }
}

void __47__RPConnection__serverPairSetupWithData_start___block_invoke_2(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 416));
  if (v2)
  {
    v3 = *(a1 + 32);
    if (*(v3 + 288) == 1)
    {
      *(v3 + 288) = 0;
      v4 = v2;
      (*(v2 + 2))(v2, 0);
      v2 = v4;
    }
  }
}

void __47__RPConnection__serverPairSetupWithData_start___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v7 = @"_pd";
  v8[0] = a3;
  v4 = MEMORY[0x1E695DF20];
  v5 = a3;
  v6 = [v4 dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [v3 _sendFrameType:4 unencryptedObject:v6];
}

- (void)_serverPairSetupCompleted:(id)completed
{
  completedCopy = completed;
  v5 = completedCopy;
  if (completedCopy)
  {
    v13 = completedCopy;
    goto LABEL_20;
  }

  pairSetupSession = self->_pairSetupSession;
  v26 = 0;
  v7 = [(CUPairingSession *)pairSetupSession openStreamWithName:@"main" error:&v26];
  v8 = v26;
  mainStream = self->_mainStream;
  self->_mainStream = v7;

  v10 = self->_mainStream;
  if (!v10)
  {
    v13 = v8;
    if (!v8)
    {
      goto LABEL_29;
    }

LABEL_20:
    ucat = self->_ucat;
    if (ucat->var0 <= 60)
    {
      if (ucat->var0 != -1)
      {
LABEL_22:
        pairSetupAuthType = self->_pairSetupAuthType;
        if (pairSetupAuthType > 0xA)
        {
          v24 = "?";
        }

        else
        {
          v24 = off_1E7C94130[pairSetupAuthType];
        }

        LogPrintF(ucat, "[RPConnection _serverPairSetupCompleted:]", 60, "### PairSetup server completion failed: %s, %{error}\n", v24, v13);
        goto LABEL_28;
      }

      if (_LogCategory_Initialize())
      {
        ucat = self->_ucat;
        goto LABEL_22;
      }
    }

LABEL_28:
    [(RPConnection *)self _pairSetupInvalidate];

    goto LABEL_29;
  }

  self->_mainAuthTagLength = [(CUPairingStream *)v10 authTagLength];
  if (self->_btPipeHighPriority)
  {
    v11 = self->_pairSetupSession;
    v25 = v8;
    v12 = [(CUPairingSession *)v11 openStreamWithName:@"hipri" error:&v25];
    v13 = v25;

    highPriorityStream = self->_highPriorityStream;
    self->_highPriorityStream = v12;

    v15 = self->_highPriorityStream;
    if (!v15)
    {
      goto LABEL_19;
    }

    self->_highPriorityAuthTagLength = [(CUPairingStream *)v15 authTagLength];
  }

  else
  {
    v13 = v8;
  }

  v16 = self->_ucat;
  if (v16->var0 <= 30)
  {
    [(RPConnection *)v16->var0 _serverPairSetupCompleted:v16, self, &self->_ucat];
  }

  v17 = self->_pairSetupAuthType;
  statusFlags = self->_statusFlags;
  if (v17 == 8)
  {
    v19 = statusFlags & 0xFFFFFFDFFFFFEFFFLL | 0x2000000000;
    goto LABEL_13;
  }

  if (v17 == 5)
  {
    v19 = statusFlags & 0xFFFFFFFFFFFF6FFFLL | 0x8000;
LABEL_13:
    self->_statusFlags = v19;
    goto LABEL_15;
  }

  self->_statusFlags = statusFlags & 0xFFFFFFAFFFF50FFFLL | 0x1000;
  self->_flags |= 1u;
LABEL_15:
  if (self->_internalState == 26)
  {
    self->_stepDone = 1;
    v20 = _Block_copy(self->_authCompletionHandler);
    v21 = v20;
    if (v20)
    {
      (*(v20 + 2))(v20, v13);
    }

    [(RPConnection *)self _run];
  }

LABEL_19:
  if (v13)
  {
    goto LABEL_20;
  }

LABEL_29:
}

- (void)_serverPairVerifyWithData:(id)data start:(BOOL)start
{
  v43[1] = *MEMORY[0x1E69E9840];
  v40 = 0;
  v13 = OPACKDecodeData();
  if (!v13)
  {
    [(RPConnection *)&v40 _clientPairSetupWithData:v6, v7, v8, v9, v10, v11, v12];
    goto LABEL_26;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(RPConnection *)v13 _clientPairVerifyWithData:?];
    v33 = v41;
    goto LABEL_31;
  }

  if (start || !self->_pairVerifySession)
  {
    [(RPConnection *)self _pairVerifyInvalidate];
    self->_pairVerifyUsedIdentity = 0;
    v14 = objc_alloc_init(MEMORY[0x1E69994F8]);
    pairVerifySession = self->_pairVerifySession;
    self->_pairVerifySession = v14;

    if ((self->_controlFlags & 0xC0) != 0)
    {
      [(CUPairingSession *)self->_pairVerifySession setSelfAppFlags:1];
    }

    [(CUPairingSession *)self->_pairVerifySession setDispatchQueue:self->_dispatchQueue];
    [(CUPairingSession *)self->_pairVerifySession setFlags:self->_pairVerifyFlags];
    if (self->_label)
    {
      label = self->_label;
    }

    else
    {
      label = @"RPCnx";
    }

    [(CUPairingSession *)self->_pairVerifySession setLabel:label];
    [(CUPairingSession *)self->_pairVerifySession setSessionType:4];
    controlFlags = self->_controlFlags;
    if ((controlFlags & 0x20000000) != 0)
    {
      v42 = @"_cf";
      0x20000000 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:controlFlags & 0x20000000];
      v43[0] = 0x20000000;
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:&v42 count:1];
      [(CUPairingSession *)self->_pairVerifySession setAppInfoSelf:v19];
    }

    Int64Ranged = CFDictionaryGetInt64Ranged();
    v21 = Int64Ranged;
    if (Int64Ranged != 3)
    {
      if (Int64Ranged == 8)
      {
        [(CUPairingSession *)self->_pairVerifySession setFlags:[(CUPairingSession *)self->_pairVerifySession flags]& 0xFFBFFFE3];
        [(RPConnection *)self _configureForSessionPairing:self->_pairVerifySession];
      }

      else if (Int64Ranged == 4)
      {
        [(CUPairingSession *)self->_pairVerifySession setFlags:[(CUPairingSession *)self->_pairVerifySession flags]& 0xFFBFFFFFLL];
        v22 = self->_pairVerifySession;
        v23 = [(CUPairingSession *)v22 flags]| 0xC;
LABEL_18:
        [(CUPairingSession *)v22 setFlags:v23];
      }

      self->_pairVerifyAuthType = v21;
      self->_pairSetupAuthType = v21;
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __48__RPConnection__serverPairVerifyWithData_start___block_invoke;
      v39[3] = &unk_1E7C93AA8;
      v39[4] = self;
      [(CUPairingSession *)self->_pairVerifySession setSendDataHandler:v39];
      if ((v21 - 5) <= 0xFFFFFFFD)
      {
        v38[0] = MEMORY[0x1E69E9820];
        v38[1] = 3221225472;
        v38[2] = __48__RPConnection__serverPairVerifyWithData_start___block_invoke_2;
        v38[3] = &unk_1E7C93AF8;
        v38[4] = self;
        [(CUPairingSession *)self->_pairVerifySession setSignDataHandler:v38];
        v37[0] = MEMORY[0x1E69E9820];
        v37[1] = 3221225472;
        v37[2] = __48__RPConnection__serverPairVerifyWithData_start___block_invoke_3;
        v37[3] = &unk_1E7C93B20;
        v37[4] = self;
        [(CUPairingSession *)self->_pairVerifySession setVerifySignatureHandler:v37];
      }

      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __48__RPConnection__serverPairVerifyWithData_start___block_invoke_4;
      v36[3] = &unk_1E7C92D58;
      v36[4] = self;
      [(CUPairingSession *)self->_pairVerifySession setCompletionHandler:v36];
      configurePairingHandler = self->_configurePairingHandler;
      if (configurePairingHandler)
      {
        configurePairingHandler[2](configurePairingHandler, self->_pairVerifySession);
      }

      [(CUPairingSession *)self->_pairVerifySession activate];
      goto LABEL_24;
    }

    [(CUPairingSession *)self->_pairVerifySession setFlags:[(CUPairingSession *)self->_pairVerifySession flags]& 0xFFBFFFFFLL];
    v22 = self->_pairVerifySession;
    v23 = [(CUPairingSession *)v22 flags]| 0x4000000;
    goto LABEL_18;
  }

LABEL_24:
  CFDataGetTypeID();
  v25 = CFDictionaryGetTypedValue();
  if (v25)
  {
    v32 = v25;
    [(CUPairingSession *)self->_pairVerifySession receivedData:v25];

LABEL_26:
    v33 = 0;
    goto LABEL_27;
  }

  v33 = RPErrorF(v40, "PairVerify request with no pairing data", v26, v27, v28, v29, v30, v31, v35);
LABEL_31:
  if (v33)
  {
    ucat = self->_ucat;
    if (ucat->var0 <= 60)
    {
      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_27;
        }

        ucat = self->_ucat;
      }

      LogPrintF(ucat, "[RPConnection _serverPairVerifyWithData:start:]", 60, "### PairVerify server receive failed: %{error}\n", v33);
    }
  }

LABEL_27:
}

void __48__RPConnection__serverPairVerifyWithData_start___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v7 = @"_pd";
  v8[0] = a3;
  v4 = MEMORY[0x1E695DF20];
  v5 = a3;
  v6 = [v4 dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [v3 _sendFrameType:6 unencryptedObject:v6];
}

- (void)_serverPairVerifyCompleted:(id)completed
{
  completedCopy = completed;
  v5 = completedCopy;
  if (completedCopy)
  {
    v10 = completedCopy;
    goto LABEL_69;
  }

  if ((self->_controlFlags & 0x20000000) != 0 && ([(CUPairingSession *)self->_pairVerifySession appInfoPeer], v6 = objc_claimAutoreleasedReturnValue(), Int64 = CFDictionaryGetInt64(), v6, (Int64 & 0x20000000) != 0))
  {
    pairVerifySession = self->_pairVerifySession;
    v64 = 0;
    v16 = [(CUPairingSession *)pairVerifySession openStreamWithName:@"main" type:2 error:&v64];
    v10 = v64;
    mainStream = self->_mainStream;
    self->_mainStream = v16;

    if (!self->_btPipeHighPriority)
    {
      goto LABEL_10;
    }

    v18 = self->_pairVerifySession;
    v63 = v10;
    v13 = [(CUPairingSession *)v18 openStreamWithName:@"hipri" type:2 error:&v63];
    v14 = v63;
  }

  else
  {
    v8 = self->_pairVerifySession;
    v62 = 0;
    v9 = [(CUPairingSession *)v8 openStreamWithName:@"main" error:&v62];
    v10 = v62;
    v11 = self->_mainStream;
    self->_mainStream = v9;

    if (!self->_btPipeHighPriority)
    {
      goto LABEL_10;
    }

    v12 = self->_pairVerifySession;
    v61 = v10;
    v13 = [(CUPairingSession *)v12 openStreamWithName:@"hipri" error:&v61];
    v14 = v61;
  }

  v19 = v14;

  highPriorityStream = self->_highPriorityStream;
  self->_highPriorityStream = v13;

  v21 = self->_highPriorityStream;
  v10 = v19;
  if (!v21)
  {
    goto LABEL_68;
  }

  self->_highPriorityAuthTagLength = [(CUPairingStream *)v21 authTagLength];
  v10 = v19;
LABEL_10:
  v22 = self->_mainStream;
  if (!v22)
  {
    goto LABEL_68;
  }

  self->_mainAuthTagLength = [(CUPairingStream *)v22 authTagLength];
  self->_pairVerifyCompleted = 1;
  [(RPEndpoint *)self->_peerDeviceInfo setStatusFlags:[(RPEndpoint *)self->_peerDeviceInfo statusFlags]& 0xFFFFFF8FFFF50FFFLL];
  v23 = self->_statusFlags & 0xFFFFFF8FFFF50FFFLL;
  self->_statusFlags = v23;
  pairVerifyAuthType = self->_pairVerifyAuthType;
  if (pairVerifyAuthType > 5)
  {
    if (pairVerifyAuthType <= 7)
    {
      if (pairVerifyAuthType == 6)
      {
        v27 = "PSGuest";
      }

      else
      {
        v27 = "PV-AID";
      }

      goto LABEL_62;
    }

    if ((pairVerifyAuthType - 8) >= 2)
    {
      if (pairVerifyAuthType == 10)
      {
        v27 = "AuthEnd";
        goto LABEL_62;
      }

      goto LABEL_44;
    }
  }

  else
  {
    if (pairVerifyAuthType > 2)
    {
      if (pairVerifyAuthType == 3)
      {
        [(RPEndpoint *)self->_peerDeviceInfo setStatusFlags:[(RPEndpoint *)self->_peerDeviceInfo statusFlags]| 0x2000];
        self->_statusFlags |= 0x2000uLL;
        pairedPeer = [(CUPairingSession *)self->_pairVerifySession pairedPeer];
        identifier = [pairedPeer identifier];
        uUIDString = [identifier UUIDString];
        peerHomeKitUserIdentifier = self->_peerHomeKitUserIdentifier;
        self->_peerHomeKitUserIdentifier = uUIDString;

        v27 = "HKShared";
      }

      else
      {
        if (pairVerifyAuthType != 4)
        {
          v27 = "PSAuth";
          goto LABEL_62;
        }

        aclActual = [(CUPairingSession *)self->_pairVerifySession aclActual];
        v33 = CFDictionaryGetInt64();

        if (v33)
        {
          homeKitIdentity = [(RPIdentityDaemon *)self->_identityDaemon homeKitIdentity];
          identifier2 = [homeKitIdentity identifier];
          v36 = self->_peerHomeKitUserIdentifier;
          self->_peerHomeKitUserIdentifier = identifier2;

          v37 = 557056;
        }

        else
        {
          v37 = 0x8000;
        }

        [(RPEndpoint *)self->_peerDeviceInfo setStatusFlags:[(RPEndpoint *)self->_peerDeviceInfo statusFlags]| v37];
        self->_statusFlags |= v37;
        v27 = "CUPair";
      }

      goto LABEL_57;
    }

    if (pairVerifyAuthType >= 3)
    {
LABEL_44:
      v27 = "?";
      goto LABEL_62;
    }
  }

  pairVerifyIdentityType = self->_pairVerifyIdentityType;
  if (pairVerifyIdentityType <= 5)
  {
    if (!pairVerifyIdentityType || pairVerifyIdentityType == 2)
    {
      self->_flags &= ~1u;
      [(RPEndpoint *)self->_peerDeviceInfo setStatusFlags:[(RPEndpoint *)self->_peerDeviceInfo statusFlags]| 0x80000];
      v23 = self->_statusFlags | 0x80000;
      self->_statusFlags = v23;
      pairVerifyUsedIdentity = self->_pairVerifyUsedIdentity;
      v31 = "(RPI-Owner)";
      goto LABEL_46;
    }

    if (pairVerifyIdentityType == 4)
    {
      [(RPEndpoint *)self->_peerDeviceInfo setStatusFlags:[(RPEndpoint *)self->_peerDeviceInfo statusFlags]| 0x4000];
      v28 = self->_statusFlags | 0x4000;
      self->_statusFlags = v28;
      v27 = "(RPI-Family)";
      if ((v28 & 0x80000) == 0)
      {
        goto LABEL_57;
      }

      goto LABEL_54;
    }
  }

  else if (pairVerifyIdentityType > 12)
  {
    if (pairVerifyIdentityType == 13)
    {
      [(RPEndpoint *)self->_peerDeviceInfo setStatusFlags:[(RPEndpoint *)self->_peerDeviceInfo statusFlags]| 0x2000000000];
      v43 = self->_statusFlags | 0x2000000000;
      self->_statusFlags = v43;
      v27 = "(RPI-SessionPaired)";
      if ((v43 & 0x80000) == 0)
      {
        goto LABEL_57;
      }

LABEL_54:
      homeKitIdentity2 = [(RPIdentityDaemon *)self->_identityDaemon homeKitIdentity];
      identifier3 = [homeKitIdentity2 identifier];
      v46 = self->_peerHomeKitUserIdentifier;
      self->_peerHomeKitUserIdentifier = identifier3;

      goto LABEL_57;
    }

    if (pairVerifyIdentityType == 15)
    {
      [(RPEndpoint *)self->_peerDeviceInfo setStatusFlags:[(RPEndpoint *)self->_peerDeviceInfo statusFlags]| 0x4000000000];
      v29 = self->_statusFlags | 0x4000000000;
      self->_statusFlags = v29;
      v27 = "(RPI-AdHocPaired)";
      if ((v29 & 0x80000) == 0)
      {
        goto LABEL_57;
      }

      goto LABEL_54;
    }
  }

  else
  {
    if (pairVerifyIdentityType == 6)
    {
      [(RPEndpoint *)self->_peerDeviceInfo setStatusFlags:[(RPEndpoint *)self->_peerDeviceInfo statusFlags]| 0x20000];
      v42 = self->_statusFlags | 0x20000;
      self->_statusFlags = v42;
      v27 = "(RPI-Friend)";
      if ((v42 & 0x80000) == 0)
      {
        goto LABEL_57;
      }

      goto LABEL_54;
    }

    if (pairVerifyIdentityType == 12)
    {
      [(RPEndpoint *)self->_peerDeviceInfo setStatusFlags:[(RPEndpoint *)self->_peerDeviceInfo statusFlags]| 0x1000000000];
      v26 = self->_statusFlags | 0x1000000000;
      self->_statusFlags = v26;
      v27 = "(RPI-SharedTVUser)";
      if ((v26 & 0x80000) == 0)
      {
        goto LABEL_57;
      }

      goto LABEL_54;
    }
  }

  pairVerifyUsedIdentity = self->_pairVerifyUsedIdentity;
  v31 = "(RPI-?)";
LABEL_46:
  if (pairVerifyUsedIdentity)
  {
    v27 = v31;
  }

  else
  {
    v27 = "(HK)";
  }

  if ((v23 & 0x80000) != 0)
  {
    goto LABEL_54;
  }

LABEL_57:
  if ((pairVerifyAuthType - 3) <= 1 && !self->_identityVerified)
  {
    pairedPeer2 = [(CUPairingSession *)self->_pairVerifySession pairedPeer];
    if (pairedPeer2)
    {
      v48 = objc_alloc_init(RPIdentity);
      publicKey = [pairedPeer2 publicKey];
      [(RPIdentity *)v48 setEdPKData:publicKey];

      identifier4 = [pairedPeer2 identifier];
      uUIDString2 = [identifier4 UUIDString];
      [(RPIdentity *)v48 setIdentifier:uUIDString2];

      [(RPIdentity *)v48 setType:8];
      identityVerified = self->_identityVerified;
      self->_identityVerified = v48;
      v53 = v48;

      identifier5 = [(RPIdentity *)self->_identityVerified identifier];
      [(RPEndpoint *)self->_peerDeviceInfo setVerifiedIdentity:identifier5];
    }
  }

LABEL_62:
  ucat = self->_ucat;
  if (ucat->var0 > 30)
  {
    goto LABEL_66;
  }

  if (ucat->var0 != -1)
  {
    goto LABEL_64;
  }

  if (_LogCategory_Initialize())
  {
    ucat = self->_ucat;
LABEL_64:
    LogPrintF(ucat, "[RPConnection _serverPairVerifyCompleted:]", 30, "PairVerify completed server: %s, %#{flags}, %#ll{flags}, RPI %@\n", v27, self->_flags, &unk_1B6F2E0D0, self->_statusFlags, &unk_1B6F2DEF3, self->_identityVerified);
  }

LABEL_66:
  if (self->_internalState == 26)
  {
    self->_stepDone = 1;
    [(RPConnection *)self _run];
  }

LABEL_68:
  if (!v10)
  {
    goto LABEL_80;
  }

LABEL_69:
  v56 = self->_ucat;
  if (v56->var0 <= 60)
  {
    if (v56->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_77;
      }

      v56 = self->_ucat;
    }

    v57 = self->_pairVerifyAuthType;
    if (v57 > 0xA)
    {
      v58 = "?";
    }

    else
    {
      v58 = off_1E7C94130[v57];
    }

    LogPrintF(v56, "[RPConnection _serverPairVerifyCompleted:]", 60, "### PairVerify server completion failed: %s, %{error}\n", v58, v10);
  }

LABEL_77:
  [(RPConnection *)self _pairVerifyInvalidate];
  v59 = _Block_copy(self->_pairVerifyCompletion);
  v60 = v59;
  if (v59)
  {
    (*(v59 + 2))(v59, v10);
  }

LABEL_80:
}

- (void)_serverStarted
{
  startTimer = self->_startTimer;
  if (startTimer)
  {
    v4 = startTimer;
    dispatch_source_cancel(v4);
    v5 = self->_startTimer;
    self->_startTimer = 0;
  }

  if (!self->_peerIdentifier)
  {
    RandomBytes();
    v6 = NSPrintF("ri%.3H", v8, 5, 5);
    peerIdentifier = self->_peerIdentifier;
    self->_peerIdentifier = v6;
  }
}

- (void)_processSends
{
  if ([(NSMutableArray *)self->_sendArray count])
  {
    v3 = 0;
    do
    {
      v4 = [(NSMutableArray *)self->_sendArray objectAtIndexedSubscript:v3];
      options = [v4 options];
      v6 = [(RPConnection *)self _isEligibleToSendWithOptions:options];

      if (v6)
      {
        [(NSMutableArray *)self->_sendArray removeObjectAtIndex:v3];
        requestID = [v4 requestID];

        if (requestID)
        {
          requestID2 = [v4 requestID];
          request = [v4 request];
          xpcID = [v4 xpcID];
          options2 = [v4 options];
          responseHandler = [v4 responseHandler];
          [(RPConnection *)self _sendEncryptedRequestID:requestID2 request:request xpcID:xpcID options:options2 sendEntry:v4 responseHandler:responseHandler];
LABEL_9:

          goto LABEL_10;
        }

        eventID = [v4 eventID];

        if (eventID)
        {
          requestID2 = [v4 eventID];
          request = [v4 eventData];
          v14 = [v4 xid];
          options2 = [v4 options];
          responseHandler = [v4 completion];
          [(RPConnection *)self _sendEncryptedEventID:requestID2 data:request xid:v14 options:options2 completion:responseHandler];
          goto LABEL_9;
        }

        ucat = self->_ucat;
        if (ucat->var0 <= 90)
        {
          if (ucat->var0 == -1)
          {
            if (!_LogCategory_Initialize())
            {
              goto LABEL_10;
            }

            ucat = self->_ucat;
          }

          LogPrintF(ucat, "[RPConnection _processSends]", 90, "### Process unsupported request\n");
        }
      }

      else
      {
        ++v3;
      }

LABEL_10:
    }

    while ([(NSMutableArray *)self->_sendArray count]> v3);
  }
}

- (unint64_t)_eligiblePendingSendCount
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = self->_sendArray;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v3);
        }

        options = [*(*(&v12 + 1) + 8 * i) options];
        v10 = [(RPConnection *)self _isEligibleToSendWithOptions:options];

        v6 += v10;
      }

      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)sendEncryptedEventID:(id)d data:(id)data xid:(unsigned int)xid options:(id)options completion:(id)completion
{
  v9 = *&xid;
  dCopy = d;
  dataCopy = data;
  optionsCopy = options;
  completionCopy = completion;
  if (self->_invalidateCalled)
  {
    ucat = self->_ucat;
    if (ucat->var0 > 60)
    {
      goto LABEL_17;
    }

    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
LABEL_17:
        if (completionCopy)
        {
          v25 = RPErrorF(4294896148, "Connection invalidating", v14, v15, v16, v17, v18, v19, v28);
          completionCopy[2](completionCopy, v25);
        }

        goto LABEL_26;
      }

      ucat = self->_ucat;
    }

    LogPrintF(ucat, "[RPConnection sendEncryptedEventID:data:xid:options:completion:]", 60, "### Ignoring call to send event ID '%@' when invalidating\n", dCopy);
    goto LABEL_17;
  }

  internalState = self->_internalState;
  v23 = internalState == 28 || internalState == 21;
  if (v23 && ![(RPConnection *)self _eligiblePendingSendCount]&& [(RPConnection *)self _isEligibleToSendWithOptions:optionsCopy])
  {
    [(RPConnection *)self _sendEncryptedEventID:dCopy data:dataCopy xid:v9 options:optionsCopy completion:completionCopy];
    goto LABEL_26;
  }

  v24 = self->_ucat;
  if (v24->var0 <= 30)
  {
    if (v24->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_20;
      }

      v24 = self->_ucat;
    }

    LogPrintF(v24, "[RPConnection sendEncryptedEventID:data:xid:options:completion:]", 30, "Queuing send event ID '%@', XID 0x%X (%d send(s) pending)\n", dCopy, v9, [(NSMutableArray *)self->_sendArray count]);
  }

LABEL_20:
  v26 = objc_alloc_init(RPSendEntry);
  [(RPSendEntry *)v26 setCompletion:completionCopy];
  [(RPSendEntry *)v26 setEventID:dCopy];
  [(RPSendEntry *)v26 setEventData:dataCopy];
  [(RPSendEntry *)v26 setOptions:optionsCopy];
  [(RPSendEntry *)v26 setQueueTicks:mach_absolute_time()];
  if (!v9)
  {
    xidLast = self->_xidLast;
    if (xidLast + 1 > 1)
    {
      v9 = xidLast + 1;
    }

    else
    {
      v9 = 1;
    }

    self->_xidLast = v9;
  }

  [(RPSendEntry *)v26 setXid:v9];
  [(NSMutableArray *)self->_sendArray addObject:v26];

LABEL_26:
}

- (void)sendEncryptedEventID:(id)d event:(id)event options:(id)options completion:(id)completion
{
  dCopy = d;
  optionsCopy = options;
  completionCopy = completion;
  xidLast = self->_xidLast;
  if (xidLast + 1 > 1)
  {
    v14 = xidLast + 1;
  }

  else
  {
    v14 = 1;
  }

  self->_xidLast = v14;
  eventCopy = event;
  Int64 = CFDictionaryGetInt64();
  v17 = MEMORY[0x1E695DF90];
  v31 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v14];
  v18 = [v17 dictionaryWithObjectsAndKeys:eventCopy];

  if (Int64)
  {
    [v18 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"_cht"];
  }

  v19 = [optionsCopy objectForKeyedSubscript:@"inUseProcess"];
  if (v19)
  {
    clientMode = self->_clientMode;

    if (clientMode)
    {
      v21 = [optionsCopy objectForKeyedSubscript:@"inUseProcess"];
      [v18 setObject:v21 forKeyedSubscript:@"_inUseProc"];
    }
  }

  v32 = 0;
  if (self->_canDecode128bit)
  {
    v22 = 16;
  }

  else
  {
    v22 = 0;
  }

  v29 = MEMORY[0x1B8C9E170](v18, v22, &v32);
  if (v29)
  {
    [(RPConnection *)self sendEncryptedEventID:dCopy data:v29 xid:v14 options:optionsCopy completion:completionCopy];
  }

  else if (completionCopy)
  {
    v30 = RPErrorF(v32, "OPACK encode failed", v23, v24, v25, v26, v27, v28, @"_c");
    completionCopy[2](completionCopy, v30);
  }
}

- (void)_sendEncryptedEventID:(id)d data:(id)data xid:(unsigned int)xid options:(id)options completion:(id)completion
{
  v71 = *&xid;
  v95[2] = *MEMORY[0x1E69E9840];
  dCopy = d;
  dataCopy = data;
  optionsCopy = options;
  completionCopy = completion;
  v89 = 0;
  v90 = &v89;
  v91 = 0x3032000000;
  v92 = __Block_byref_object_copy__2;
  v93 = __Block_byref_object_dispose__2;
  v94 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __66__RPConnection__sendEncryptedEventID_data_xid_options_completion___block_invoke;
  aBlock[3] = &unk_1E7C93B98;
  v88 = &v89;
  v72 = completionCopy;
  v87 = v72;
  v12 = _Block_copy(aBlock);
  btPipe = self->_btPipe;
  if (btPipe && [(CUBluetoothScalablePipe *)btPipe peerHostState]!= 2 && CFDictionaryGetInt64())
  {
    v20 = RPErrorF(4294896140, "Peer asleep with FailIfAsleep option", v14, v15, v16, v17, v18, v19, v70);
    ucat = self->_ucat;
    if (ucat->var0 <= 30)
    {
      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_61;
        }

        ucat = self->_ucat;
      }

      LogPrintF(ucat, "[RPConnection _sendEncryptedEventID:data:xid:options:completion:]", 30, "Send encrypted event failed: '%@', %{error}\n", dCopy, v20);
    }

LABEL_61:
    v12[2](v12, v20);
    v59 = 0;
    v66 = 0;
    v50 = 0;
    v49 = 0;
    goto LABEL_59;
  }

  v74 = self->_requestable;
  if ([(CUBluetoothScalablePipe *)self->_btPipeHighPriority state]== 1 && CFDictionaryGetInt64())
  {
    v22 = self->_btPipeHighPriority;

    v23 = 1;
    v74 = v22;
  }

  else
  {
    v23 = 0;
  }

  v85 = 8;
  v24 = [dataCopy length];
  mainAuthTagLength = self->_mainAuthTagLength;
  v26 = self->_mainStream;
  if (v23)
  {
    v27 = self->_highPriorityStream;

    LOBYTE(v85) = 12;
    v28 = self->_highPriorityAuthTagLength + [dataCopy length];
    v26 = v27;
  }

  else
  {
    v28 = mainAuthTagLength + v24;
  }

  Int64 = CFDictionaryGetInt64();
  if (v28 >> 24)
  {
    v20 = RPErrorF(4294960553, "Frame too big (%zu vs %u)", v30, v31, v32, v33, v34, v35, v28);
    v59 = 0;
    v66 = 0;
    v50 = 0;
    v49 = 0;
    goto LABEL_52;
  }

  v36 = Int64;
  if (v28 >= 0x800000)
  {
    v37 = self->_ucat;
    if (v37->var0 <= 90)
    {
      if (v37->var0 != -1)
      {
LABEL_18:
        linkType = self->_linkType;
        if (linkType > 0xB)
        {
          v39 = "?";
        }

        else
        {
          v39 = off_1E7C94188[linkType];
        }

        LogPrintF(v37, "[RPConnection _sendEncryptedEventID:data:xid:options:completion:]", 90, "Large Frame: SendEventID '%@', XID 0x%X, <%.16@> (%zu bytes) on link type %s\n", dCopy, v71, 0, v28, v39);
        goto LABEL_24;
      }

      if (_LogCategory_Initialize())
      {
        v37 = self->_ucat;
        goto LABEL_18;
      }
    }

LABEL_24:
    v40 = [optionsCopy objectForKeyedSubscript:@"_rP"];
    v70 = v28;
    v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"len:%zu, check:%d"];
    v42 = +[RPAutoBugCapture sharedReporter];
    [v42 reportIssueOfType:3 issueContext:@"sendEncryptedEventID" processName:v40 triggerThresholdValues:v41];
  }

  BYTE1(v85) = BYTE2(v28);
  BYTE2(v85) = BYTE1(v28);
  HIBYTE(v85) = v28;
  v49 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:&v85 length:4];
  if (!v26)
  {
    v20 = RPErrorF(4294960593, "Encryption not setup", v43, v44, v45, v46, v47, v48, v70);
    v59 = 0;
    v66 = 0;
    v50 = 0;
    goto LABEL_52;
  }

  v84 = 0;
  v50 = [(CUPairingStream *)v26 encryptData:dataCopy aadData:v49 error:&v84];
  v20 = v84;
  if (!v50)
  {
    v59 = 0;
    v66 = 0;
    goto LABEL_52;
  }

  if (v36)
  {
    goto LABEL_33;
  }

  v51 = dCopy;
  if ([v51 isEqual:@"HIDRelay"] & 1) != 0 || (objc_msgSend(v51, "isEqual:", @"synchSetupStateFromStereoCounterpart") & 1) != 0 || (objc_msgSend(v51, "isEqual:", @"_hidT") & 1) != 0 || (objc_msgSend(v51, "isEqual:", @"_laData"))
  {

LABEL_33:
    v52 = 10;
    goto LABEL_34;
  }

  v69 = [v51 isEqual:@"_siA"];

  if (v69)
  {
    goto LABEL_33;
  }

  v52 = 30;
LABEL_34:
  v53 = self->_ucat;
  if (v52 >= v53->var0)
  {
    if (v53->var0 != -1)
    {
LABEL_36:
      v54 = self->_linkType;
      if (v54 > 0xB)
      {
        v55 = "?";
      }

      else
      {
        v55 = off_1E7C94188[v54];
      }

      v56 = "";
      if (v23)
      {
        v56 = "at high priority";
      }

      LogPrintF(v53, "[RPConnection _sendEncryptedEventID:data:xid:options:completion:]", v52, "SendEventID '%@', XID 0x%X, <%.16@> (%zu bytes) on link type %s %s\n", dCopy, v71, v50, v28, v55, v56);
      goto LABEL_44;
    }

    if (_LogCategory_Initialize())
    {
      v53 = self->_ucat;
      goto LABEL_36;
    }
  }

LABEL_44:
  v57 = +[RPConnectionMetrics sharedMetrics];
  [v57 logMessageForClient:self->_initiator length:v28 linkType:self->_linkType];

  v58 = [optionsCopy objectForKeyedSubscript:@"nwActivityMetrics"];
  v59 = v58;
  if (v58)
  {
    [v58 setEventSize:v28];
    [v59 submitMetrics];
  }

  v60 = [RPNWActivityMessageMetrics startMessageMetrics:1 withParent:v59];
  v61 = v90[5];
  v90[5] = v60;

  [v90[5] setMessageSize:v28];
  [v90[5] setLinkType:self->_linkType];
  model = [(RPEndpoint *)self->_peerDeviceInfo model];
  [v90[5] setPeerDeviceModel:model];

  peerDeviceInfo = self->_peerDeviceInfo;
  if (peerDeviceInfo)
  {
    objc_msgSend_operatingSystemVersion(peerDeviceInfo);
  }

  else
  {
    v82 = 0uLL;
    v83 = 0;
  }

  v64 = v90[5];
  v80 = v82;
  v81 = v83;
  [v64 setPeerOSVersion:&v80];
  [v90[5] submitMetrics];
  v65 = objc_alloc_init(MEMORY[0x1E6999570]);
  v66 = v65;
  if (v12)
  {
    v77[0] = MEMORY[0x1E69E9820];
    v77[1] = 3221225472;
    v77[2] = __66__RPConnection__sendEncryptedEventID_data_xid_options_completion___block_invoke_2;
    v77[3] = &unk_1E7C92E20;
    v78 = v65;
    v79 = v12;
    [v78 setCompletion:v77];
  }

  v95[0] = v49;
  v95[1] = v50;
  v67 = [MEMORY[0x1E695DEC8] arrayWithObjects:v95 count:2];
  [v66 setDataArray:v67];

  [(CUReadWriteRequestable *)v74 writeWithRequest:v66];
LABEL_52:
  if (v20)
  {
    v68 = self->_ucat;
    if (v68->var0 <= 90)
    {
      if (v68->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_57;
        }

        v68 = self->_ucat;
      }

      LogPrintF(v68, "[RPConnection _sendEncryptedEventID:data:xid:options:completion:]", 90, "### Send encrypted data (%zu bytes) failed: '%@', %{error}\n", v28, dCopy, v20);
    }

LABEL_57:
    v12[2](v12, v20);
  }

LABEL_59:
  _Block_object_dispose(&v89, 8);
}

void __66__RPConnection__sendEncryptedEventID_data_xid_options_completion___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(*(*(a1 + 40) + 8) + 40) nwActivity];
  if (v3)
  {
    if (v5)
    {
      [RPNWActivityUtils failActivity:v3 error:?];
    }

    else
    {
      nw_activity_complete_with_reason();
    }
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, v5);
  }
}

void __66__RPConnection__sendEncryptedEventID_data_xid_options_completion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) error];
  v8 = *(a1 + 40);
  v11 = v2;
  if (v2)
  {
    v9 = RPNestedErrorF(v2, 4294896153, "Send event failed", v3, v4, v5, v6, v7, v10);
    (*(v8 + 16))(v8, v9);
  }

  else
  {
    (*(v8 + 16))(v8, 0);
  }
}

- (void)sendEncryptedRequestID:(id)d request:(id)request xpcID:(unsigned int)iD options:(id)options responseHandler:(id)handler
{
  v9 = *&iD;
  dCopy = d;
  requestCopy = request;
  optionsCopy = options;
  handlerCopy = handler;
  if (self->_invalidateCalled)
  {
    ucat = self->_ucat;
    if (ucat->var0 <= 60)
    {
      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_17;
        }

        ucat = self->_ucat;
      }

      LogPrintF(ucat, "[RPConnection sendEncryptedRequestID:request:xpcID:options:responseHandler:]", 60, "### Ignoring send request ID '%@' when invalidating\n", dCopy);
    }

LABEL_17:
    v26 = RPErrorF(4294896148, "Connection invalidating", v15, v16, v17, v18, v19, v20, v30);
    (*(handlerCopy + 2))(handlerCopy, 0, 0, v26);

    goto LABEL_23;
  }

  internalState = self->_internalState;
  v24 = internalState == 28 || internalState == 21;
  if (v24 && ![(RPConnection *)self _eligiblePendingSendCount]&& [(RPConnection *)self _isEligibleToSendWithOptions:optionsCopy])
  {
    [(RPConnection *)self _sendEncryptedRequestID:dCopy request:requestCopy xpcID:v9 options:optionsCopy sendEntry:0 responseHandler:handlerCopy];
    goto LABEL_23;
  }

  v25 = self->_ucat;
  if (v25->var0 <= 30)
  {
    if (v25->var0 != -1)
    {
LABEL_15:
      LogPrintF(v25, "[RPConnection sendEncryptedRequestID:request:xpcID:options:responseHandler:]", 30, "Queuing send request ID '%@' (%d send(s) pending)\n", dCopy, [(NSMutableArray *)self->_sendArray count]);
      goto LABEL_19;
    }

    if (_LogCategory_Initialize())
    {
      v25 = self->_ucat;
      goto LABEL_15;
    }
  }

LABEL_19:
  v27 = objc_alloc_init(RPSendEntry);
  [(RPSendEntry *)v27 setOptions:optionsCopy];
  [(RPSendEntry *)v27 setQueueTicks:mach_absolute_time()];
  [(RPSendEntry *)v27 setRequestID:dCopy];
  [(RPSendEntry *)v27 setRequest:requestCopy];
  [(RPSendEntry *)v27 setXpcID:v9];
  [(RPSendEntry *)v27 setResponseHandler:handlerCopy];
  if (optionsCopy)
  {
    CFDictionaryGetDouble();
    if (v28 > 0.0)
    {
      v29 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_dispatchQueue);
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __77__RPConnection_sendEncryptedRequestID_request_xpcID_options_responseHandler___block_invoke;
      handler[3] = &unk_1E7C93BC0;
      handler[4] = v29;
      handler[5] = self;
      handler[6] = v27;
      dispatch_source_set_event_handler(v29, handler);
      CUDispatchTimerSet();
      dispatch_resume(v29);
      [(RPSendEntry *)v27 setTimer:v29];
    }
  }

  [(NSMutableArray *)self->_sendArray addObject:v27];

LABEL_23:
}

uint64_t __77__RPConnection_sendEncryptedRequestID_request_xpcID_options_responseHandler___block_invoke(uint64_t a1)
{
  dispatch_source_cancel(*(a1 + 32));
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);

  return [v2 _timeoutForSendEntry:v3];
}

- (void)_sendEncryptedRequestID:(id)d request:(id)request xpcID:(unsigned int)iD options:(id)options sendEntry:(id)entry responseHandler:(id)handler
{
  v11 = *&iD;
  v142 = *MEMORY[0x1E69E9840];
  dCopy = d;
  requestCopy = request;
  optionsCopy = options;
  entryCopy = entry;
  handlerCopy = handler;
  v125 = 0;
  v126 = &v125;
  v127 = 0x3032000000;
  v128 = __Block_byref_object_copy__2;
  v129 = __Block_byref_object_dispose__2;
  v130 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __88__RPConnection__sendEncryptedRequestID_request_xpcID_options_sendEntry_responseHandler___block_invoke;
  aBlock[3] = &unk_1E7C93BE8;
  v123 = 0;
  v124 = &v125;
  v104 = _Block_copy(aBlock);
  btPipe = self->_btPipe;
  if (btPipe && [(CUBluetoothScalablePipe *)btPipe peerHostState]!= 2 && CFDictionaryGetInt64())
  {
    v110 = RPErrorF(4294896140, "Peer asleep with FailIfAsleep option", v16, v17, v18, v19, v20, v21, v100);
    ucat = self->_ucat;
    if (ucat->var0 <= 30)
    {
      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_88;
        }

        ucat = self->_ucat;
      }

      LogPrintF(ucat, "[RPConnection _sendEncryptedRequestID:request:xpcID:options:sendEntry:responseHandler:]", 30, "Send encrypted requestID '%@' failed: %{error}\n", dCopy, v110);
    }

LABEL_88:
    (*(handlerCopy + 2))(handlerCopy, 0, 0, v110);
    v87 = 0;
    v65 = 0;
    v93 = 0;
    v63 = 0;
    v64 = 0;
    v41 = 0;
    goto LABEL_86;
  }

  v106 = self->_requestable;
  v23 = self->_mainStream;
  if ([(CUBluetoothScalablePipe *)self->_btPipeHighPriority state]== 1 && CFDictionaryGetInt64())
  {
    v24 = v23;
    v25 = self->_btPipeHighPriority;

    v107 = 1;
    v106 = v25;
    v23 = v24;
  }

  else
  {
    v107 = 0;
  }

  v113 = v23;
  xidLast = self->_xidLast;
  if (xidLast + 1 > 1)
  {
    v27 = xidLast + 1;
  }

  else
  {
    v27 = 1;
  }

  self->_xidLast = v27;
  spid = v27;
  v112 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
  v28 = MEMORY[0x1E695DF90];
  v102 = [MEMORY[0x1E696AD98] numberWithBool:v107];
  v101 = @"_c";
  v109 = [v28 dictionaryWithObjectsAndKeys:requestCopy];

  Int64 = CFDictionaryGetInt64();
  if (Int64)
  {
    [v109 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"_cht"];
  }

  v30 = [optionsCopy objectForKeyedSubscript:@"inUseProcess"];
  if (v30)
  {
    clientMode = self->_clientMode;

    if (clientMode)
    {
      v32 = [optionsCopy objectForKeyedSubscript:@"inUseProcess"];
      [v109 setObject:v32 forKeyedSubscript:@"_inUseProc"];
    }
  }

  if (CFDictionaryGetInt64())
  {
    [v109 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"_pttEligible"];
  }

  v121 = 0;
  if (self->_canDecode128bit)
  {
    v33 = 16;
  }

  else
  {
    v33 = 0;
  }

  v34 = MEMORY[0x1B8C9E170](v109, v33, &v121);
  v41 = v34;
  if (!v34)
  {
    v110 = RPErrorF(v121, "OPACK encode failed", v35, v36, v37, v38, v39, v40, @"_c");
LABEL_91:
    v87 = 0;
    v65 = 0;
    v93 = 0;
    v63 = 0;
LABEL_93:
    v64 = 0;
    goto LABEL_79;
  }

  v120 = 8;
  v42 = [v34 length];
  if (v107)
  {
    v49 = self->_highPriorityStream;

    LOBYTE(v120) = 12;
    v50 = self->_highPriorityAuthTagLength + [v41 length];
  }

  else
  {
    v50 = self->_mainAuthTagLength + v42;
    v49 = v113;
  }

  v113 = v49;
  if (v50 >> 24)
  {
    v110 = RPErrorF(4294960553, "Frame too big (%zu vs %u)", v43, v44, v45, v46, v47, v48, v50);
    goto LABEL_91;
  }

  if (v50 < 0x800000)
  {
    goto LABEL_39;
  }

  v51 = self->_ucat;
  if (v51->var0 <= 90)
  {
    if (v51->var0 != -1)
    {
LABEL_32:
      linkType = self->_linkType;
      if (linkType > 0xB)
      {
        v53 = "?";
      }

      else
      {
        v53 = off_1E7C94188[linkType];
      }

      LogPrintF(v51, "[RPConnection _sendEncryptedRequestID:request:xpcID:options:sendEntry:responseHandler:]", 90, "Large Frame: Send request ID '%@', XID 0x%X, <%.16@> (%zu bytes) on link type %s\n", dCopy, spid, 0, v50, v53);
      goto LABEL_38;
    }

    if (_LogCategory_Initialize())
    {
      v51 = self->_ucat;
      goto LABEL_32;
    }
  }

LABEL_38:
  0x7FFFFFLL = [MEMORY[0x1E696AEC0] stringWithFormat:@"len:%zu, check:%d", v50, 0x7FFFFFLL];
  v55 = [optionsCopy objectForKeyedSubscript:@"_rP"];
  v56 = +[RPAutoBugCapture sharedReporter];
  [v56 reportIssueOfType:3 issueContext:@"sendEncryptedRequestID" processName:v55 triggerThresholdValues:0x7FFFFFLL];

LABEL_39:
  BYTE1(v120) = BYTE2(v50);
  BYTE2(v120) = BYTE1(v50);
  HIBYTE(v120) = v50;
  v63 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:&v120 length:4];
  if (!v113)
  {
    v110 = RPErrorF(4294960593, "Encryption not setup", v57, v58, v59, v60, v61, v62, v101);
    v113 = 0;
    v87 = 0;
    v65 = 0;
    v93 = 0;
    goto LABEL_93;
  }

  v119 = 0;
  v64 = [(CUPairingStream *)v113 encryptData:v41 aadData:v63 error:&v119];
  v110 = v119;
  if (!v64)
  {
    v87 = 0;
    v65 = 0;
    v93 = 0;
    goto LABEL_79;
  }

  v65 = objc_alloc_init(RPRequestEntry);
  [(RPRequestEntry *)v65 setOptions:optionsCopy];
  [(RPRequestEntry *)v65 setRequestID:dCopy];
  [(RPRequestEntry *)v65 setResponseHandler:handlerCopy];
  [(RPRequestEntry *)v65 setSendTicks:mach_absolute_time()];
  [(RPRequestEntry *)v65 setXpcID:v11];
  [(RPRequestEntry *)v65 setLength:v50];
  if (entryCopy)
  {
    timer = [entryCopy timer];
    [(RPRequestEntry *)v65 setTimer:timer];

    [entryCopy setXidObj:v112];
  }

  requests = self->_requests;
  if (!requests)
  {
    v68 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v69 = self->_requests;
    self->_requests = v68;

    requests = self->_requests;
  }

  v70 = RPConnectionLog([(NSMutableDictionary *)requests setObject:v65 forKeyedSubscript:v112]);
  if (os_signpost_enabled(v70))
  {
    v71 = dCopy;
    uTF8String = [dCopy UTF8String];
    label = self->_label;
    v74 = self->_linkType;
    if (v74 > 0xB)
    {
      v75 = "?";
    }

    else
    {
      v75 = off_1E7C94188[v74];
    }

    peerIdentifier = self->_peerIdentifier;
    *buf = 67110658;
    *&buf[4] = spid;
    *&buf[8] = 2080;
    *&buf[10] = uTF8String;
    *&buf[18] = 2112;
    *&buf[20] = label;
    v134 = 2048;
    v135 = v50;
    v136 = 2080;
    v137 = v75;
    v138 = 1024;
    v139 = v107;
    v140 = 2112;
    v141 = peerIdentifier;
    _os_signpost_emit_with_name_impl(&dword_1B6E85000, v70, OS_SIGNPOST_INTERVAL_BEGIN, spid, "RPConnectionSendRequestTime", " enableTelemetry=YES {XID:0x%X, requestID=%{signpost.telemetry:string1}s, connectionID:%@, requestSize:%zu, linkType:%s, highPriority:%d, peer:%@, signpost.description:begin_time}", buf, 0x40u);
  }

  v77 = Int64 == 0;

  v78 = dCopy;
  v79 = v78;
  if (v77)
  {
    if ([v78 isEqual:@"_ftSm"] & 1) != 0 || (objc_msgSend(v79, "isEqual:", @"_ftLg"))
    {
      v80 = 9;
    }

    else if ([v79 isEqual:@"_ftRs"])
    {
      v80 = 9;
    }

    else
    {
      v80 = 30;
    }
  }

  else
  {
    v80 = 10;
  }

  v81 = self->_ucat;
  if (v80 >= v81->var0)
  {
    if (v81->var0 != -1)
    {
LABEL_60:
      v82 = self->_linkType;
      if (v82 > 0xB)
      {
        v83 = "?";
      }

      else
      {
        v83 = off_1E7C94188[v82];
      }

      v84 = "";
      if (v107)
      {
        v84 = "at high priority";
      }

      LogPrintF(v81, "[RPConnection _sendEncryptedRequestID:request:xpcID:options:sendEntry:responseHandler:]", v80, "Send request ID '%@', XID 0x%X, <%.16@> (%zu bytes) on link type %s %s\n", v79, spid, v64, v50, v83, v84);
      goto LABEL_68;
    }

    if (_LogCategory_Initialize())
    {
      v81 = self->_ucat;
      goto LABEL_60;
    }
  }

LABEL_68:
  v85 = +[RPConnectionMetrics sharedMetrics];
  [v85 logMessageForClient:self->_initiator length:v50 linkType:self->_linkType];

  v86 = [optionsCopy objectForKeyedSubscript:@"nwActivityMetrics"];
  v87 = v86;
  if (v86)
  {
    [v86 setRequestSize:v50];
  }

  v88 = [RPNWActivityMessageMetrics startMessageMetrics:2 withParent:v87];
  v89 = v126[5];
  v126[5] = v88;

  [v126[5] setMessageSize:v50];
  [v126[5] setLinkType:self->_linkType];
  model = [(RPEndpoint *)self->_peerDeviceInfo model];
  [v126[5] setPeerDeviceModel:model];

  peerDeviceInfo = self->_peerDeviceInfo;
  if (peerDeviceInfo)
  {
    objc_msgSend_operatingSystemVersion(peerDeviceInfo);
  }

  else
  {
    v117 = 0uLL;
    v118 = 0;
  }

  v92 = v126[5];
  *buf = v117;
  *&buf[16] = v118;
  [v92 setPeerOSVersion:buf];
  [v126[5] submitMetrics];
  v93 = objc_alloc_init(MEMORY[0x1E6999570]);
  [v93 setCompletion:v104];
  if (v50)
  {
    v132[0] = v63;
    v132[1] = v64;
    v94 = v132;
    v95 = 2;
  }

  else
  {
    v131 = v63;
    v94 = &v131;
    v95 = 1;
  }

  v96 = [MEMORY[0x1E695DEC8] arrayWithObjects:v94 count:v95];
  [v93 setDataArray:v96];

  [(CUReadWriteRequestable *)v106 writeWithRequest:v93];
  if (optionsCopy)
  {
    CFDictionaryGetDouble();
    if (v97 > 0.0)
    {
      v98 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_dispatchQueue);
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __88__RPConnection__sendEncryptedRequestID_request_xpcID_options_sendEntry_responseHandler___block_invoke_421;
      handler[3] = &unk_1E7C93C10;
      handler[4] = v98;
      handler[5] = self;
      handler[6] = v112;
      v116 = spid;
      dispatch_source_set_event_handler(v98, handler);
      CUDispatchTimerSet();
      dispatch_resume(v98);
      [(RPRequestEntry *)v65 setTimer:v98];
    }
  }

LABEL_79:
  if (v110)
  {
    v99 = self->_ucat;
    if (v99->var0 <= 90)
    {
      if (v99->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_84;
        }

        v99 = self->_ucat;
      }

      LogPrintF(v99, "[RPConnection _sendEncryptedRequestID:request:xpcID:options:sendEntry:responseHandler:]", 90, "### Send encrypted requestID '%@' failed: %{error}\n", dCopy, v110);
    }

LABEL_84:
    (*(handlerCopy + 2))(handlerCopy, 0, 0, v110);
  }

LABEL_86:
  _Block_object_dispose(&v125, 8);
}

void __88__RPConnection__sendEncryptedRequestID_request_xpcID_options_sendEntry_responseHandler___block_invoke(uint64_t a1)
{
  v2 = [*(*(*(a1 + 40) + 8) + 40) nwActivity];
  if (v2)
  {
    v4 = v2;
    v3 = [*(a1 + 32) error];
    if (v3)
    {
      [RPNWActivityUtils failActivity:v4 error:v3];
    }

    else
    {
      nw_activity_complete_with_reason();
    }

    v2 = v4;
  }
}

void __88__RPConnection__sendEncryptedRequestID_request_xpcID_options_sendEntry_responseHandler___block_invoke_421(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  dispatch_source_cancel(*(a1 + 32));
  v2 = RPConnectionLog([*(a1 + 40) _timeoutForXID:*(a1 + 48)]);
  v3 = v2;
  v4 = *(a1 + 56);
  if (v4 && os_signpost_enabled(v2))
  {
    v5 = *(a1 + 40);
    v6 = *(v5 + 632);
    v7 = *(v5 + 672);
    v8[0] = 67109634;
    v8[1] = v4;
    v9 = 2112;
    v10 = v6;
    v11 = 2112;
    v12 = v7;
    _os_signpost_emit_with_name_impl(&dword_1B6E85000, v3, OS_SIGNPOST_INTERVAL_END, v4, "RPConnectionSendRequestTime", " enableTelemetry=YES {XID:0x%X, connectionID:%@, peer:%@, signpost.description:end_time, error:request_timed_out}", v8, 0x1Cu);
  }
}

- (void)_sendEncryptedResponse:(id)response options:(id)options error:(id)error xid:(id)xid requestID:(id)d highPriority:(BOOL)priority isChatty:(BOOL)chatty replyStartTime:(id)self0
{
  priorityCopy = priority;
  v122 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  optionsCopy = options;
  errorCopy = error;
  xidCopy = xid;
  dCopy = d;
  timeCopy = time;
  v107 = 0;
  v108 = &v107;
  v109 = 0x3032000000;
  v110 = __Block_byref_object_copy__2;
  v111 = __Block_byref_object_dispose__2;
  v112 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __104__RPConnection__sendEncryptedResponse_options_error_xid_requestID_highPriority_isChatty_replyStartTime___block_invoke;
  aBlock[3] = &unk_1E7C93BE8;
  v105 = 0;
  v106 = &v107;
  v90 = _Block_copy(aBlock);
  v15 = self->_requestable;
  v16 = self->_mainStream;
  btPipeHighPriority = self->_btPipeHighPriority;
  if (btPipeHighPriority && priorityCopy)
  {
    v18 = btPipeHighPriority;

    v15 = v18;
  }

  mach_absolute_time();
  v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v20 = v19;
  if (errorCopy)
  {
    v21 = 1;
  }

  else
  {
    v21 = responseCopy == 0;
  }

  if (v21)
  {
    v22 = MEMORY[0x1E695E0F8];
  }

  else
  {
    v22 = responseCopy;
  }

  [v19 setObject:v22 forKeyedSubscript:@"_c"];
  [v20 setObject:&unk_1F2EEC6F8 forKeyedSubscript:@"_t"];
  [v20 setObject:xidCopy forKeyedSubscript:@"_x"];
  spid = [xidCopy unsignedIntValue];
  if (errorCopy)
  {
    ucat = self->_ucat;
    if (ucat->var0 <= 60)
    {
      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_15;
        }

        ucat = self->_ucat;
      }

      LogPrintF(ucat, "[RPConnection _sendEncryptedResponse:options:error:xid:requestID:highPriority:isChatty:replyStartTime:]", 60, "### Sending response XID 0x%X, error: %{error}\n", spid, errorCopy);
    }

LABEL_15:
    RPEncodeNSError(errorCopy, v20);
  }

  v97 = v16;
  v89 = v15;
  if (timeCopy)
  {
    [timeCopy unsignedLongLongValue];
    v24 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:UpTicksToMilliseconds()];
    [v20 setObject:v24 forKeyedSubscript:@"_rT"];
  }

  v103 = 0;
  if (self->_canDecode128bit)
  {
    v25 = 16;
  }

  else
  {
    v25 = 0;
  }

  v26 = MEMORY[0x1B8C9E170](v20, v25, &v103);
  v33 = v26;
  if (!v26)
  {
    v86 = RPErrorF(v103, "OPACK encode failed", v27, v28, v29, v30, v31, v32, v87);
LABEL_77:
    v59 = v86;
    v81 = 0;
    v57 = 0;
LABEL_79:
    v58 = 0;
    goto LABEL_69;
  }

  v102 = 8;
  v34 = [v26 length];
  if (priorityCopy)
  {
    LOBYTE(v102) = 12;
    v41 = [v33 length];
    highPriorityAuthTagLength = self->_highPriorityAuthTagLength;
    v43 = self->_highPriorityStream;

    v44 = highPriorityAuthTagLength + v41;
    v97 = v43;
  }

  else
  {
    v44 = self->_mainAuthTagLength + v34;
  }

  if (v44 >> 24)
  {
    v86 = RPErrorF(4294960553, "Frame too big (%zu vs %u)", v35, v36, v37, v38, v39, v40, v44);
    goto LABEL_77;
  }

  if (v44 < 0x800000)
  {
    goto LABEL_36;
  }

  v45 = self->_ucat;
  if (v45->var0 <= 90)
  {
    if (v45->var0 != -1)
    {
LABEL_29:
      linkType = self->_linkType;
      if (linkType > 0xB)
      {
        v47 = "?";
      }

      else
      {
        v47 = off_1E7C94188[linkType];
      }

      LogPrintF(v45, "-[RPConnection _sendEncryptedResponse:options:error:xid:requestID:highPriority:isChatty:replyStartTime:]", 90, "Large Frame: Send response XID 0x%X, <%.16@> (%zu bytes) on link type %s, %#m\n", spid, 0, v44, v47, [errorCopy code]);
      goto LABEL_35;
    }

    if (_LogCategory_Initialize())
    {
      v45 = self->_ucat;
      goto LABEL_29;
    }
  }

LABEL_35:
  v48 = [optionsCopy objectForKeyedSubscript:@"_rP"];
  v87 = v44;
  v49 = [MEMORY[0x1E696AEC0] stringWithFormat:@"len:%zu, check:%d"];
  v50 = +[RPAutoBugCapture sharedReporter];
  [v50 reportIssueOfType:3 issueContext:@"sendEncryptedResponse" processName:v48 triggerThresholdValues:v49];

LABEL_36:
  BYTE1(v102) = BYTE2(v44);
  BYTE2(v102) = BYTE1(v44);
  HIBYTE(v102) = v44;
  v57 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:&v102 length:4];
  if (!v97)
  {
    v59 = RPErrorF(4294960593, "Encryption not setup", v51, v52, v53, v54, v55, v56, v87);
    v97 = 0;
    v81 = 0;
    goto LABEL_79;
  }

  v101 = 0;
  v58 = [(CUPairingStream *)v97 encryptData:v33 aadData:v57 error:&v101];
  v59 = v101;
  if (!v58)
  {
    v81 = 0;
    goto LABEL_69;
  }

  v60 = dCopy;
  v61 = v60;
  if (chatty)
  {
    v62 = 10;
  }

  else if ([v60 isEqual:@"_ftSm"] & 1) != 0 || (objc_msgSend(v61, "isEqual:", @"_ftLg"))
  {
    v62 = 9;
  }

  else if ([v61 isEqual:@"_ftRs"])
  {
    v62 = 9;
  }

  else
  {
    v62 = 30;
  }

  v63 = self->_ucat;
  if (v62 < v63->var0)
  {
    goto LABEL_56;
  }

  if (v63->var0 != -1)
  {
    goto LABEL_48;
  }

  if (_LogCategory_Initialize())
  {
    v63 = self->_ucat;
LABEL_48:
    v64 = self->_linkType;
    if (v64 > 0xB)
    {
      v65 = "?";
    }

    else
    {
      v65 = off_1E7C94188[v64];
    }

    code = [errorCopy code];
    v67 = "";
    if (priorityCopy)
    {
      v67 = " at high priority";
    }

    LogPrintF(v63, "[RPConnection _sendEncryptedResponse:options:error:xid:requestID:highPriority:isChatty:replyStartTime:]", v62, "Send response XID 0x%X, <%.16@> (%zu bytes) on link type %s%s, %#m\n", spid, v58, v44, v65, v67, code);
  }

LABEL_56:
  v68 = +[RPConnectionMetrics sharedMetrics];
  [v68 logMessageForClient:self->_initiator length:v44 linkType:self->_linkType];

  v70 = RPConnectionLog(v69);
  v71 = v70;
  if (spid && os_signpost_enabled(v70))
  {
    label = self->_label;
    v73 = self->_linkType;
    if (v73 > 0xB)
    {
      v74 = "?";
    }

    else
    {
      v74 = off_1E7C94188[v73];
    }

    peerIdentifier = self->_peerIdentifier;
    *buf = 67110402;
    *&buf[4] = spid;
    *&buf[8] = 2112;
    *&buf[10] = label;
    *&buf[18] = 2048;
    *&buf[20] = v44;
    v116 = 2080;
    v117 = v74;
    v118 = 1024;
    v119 = priorityCopy;
    v120 = 2112;
    v121 = peerIdentifier;
    _os_signpost_emit_with_name_impl(&dword_1B6E85000, v71, OS_SIGNPOST_INTERVAL_END, spid, "RPConnectionClientResponseTime", " enableTelemetry=YES {XID:0x%X, connectionID:%@, responseSize:%zu, linkType:%s, highPriority:%d, peer:%@, signpost.description:end_time}", buf, 0x36u);
  }

  v76 = [RPNWActivityMessageMetrics startMessageMetrics:3 withParent:0];
  v77 = v108[5];
  v108[5] = v76;

  [v108[5] setMessageSize:v44];
  [v108[5] setLinkType:self->_linkType];
  model = [(RPEndpoint *)self->_peerDeviceInfo model];
  [v108[5] setPeerDeviceModel:model];

  peerDeviceInfo = self->_peerDeviceInfo;
  if (peerDeviceInfo)
  {
    objc_msgSend_operatingSystemVersion(peerDeviceInfo);
  }

  else
  {
    v99 = 0uLL;
    v100 = 0;
  }

  v80 = v108[5];
  *buf = v99;
  *&buf[16] = v100;
  [v80 setPeerOSVersion:buf];
  [v108[5] submitMetrics];
  v81 = objc_alloc_init(MEMORY[0x1E6999570]);
  [v81 setCompletion:v90];
  if (v44)
  {
    v114[0] = v57;
    v114[1] = v58;
    v82 = v114;
    v83 = 2;
  }

  else
  {
    v113 = v57;
    v82 = &v113;
    v83 = 1;
  }

  v84 = [MEMORY[0x1E695DEC8] arrayWithObjects:v82 count:v83];
  [v81 setDataArray:v84];

  [(CUReadWriteRequestable *)v89 writeWithRequest:v81];
LABEL_69:
  if (v59)
  {
    v85 = self->_ucat;
    if (v85->var0 <= 90)
    {
      if (v85->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_74;
        }

        v85 = self->_ucat;
      }

      LogPrintF(v85, "[RPConnection _sendEncryptedResponse:options:error:xid:requestID:highPriority:isChatty:replyStartTime:]", 90, "### Send encrypted response XID 0x%X failed: %{error}\n", spid, v59);
    }
  }

LABEL_74:

  _Block_object_dispose(&v107, 8);
}

void __104__RPConnection__sendEncryptedResponse_options_error_xid_requestID_highPriority_isChatty_replyStartTime___block_invoke(uint64_t a1)
{
  v2 = [*(*(*(a1 + 40) + 8) + 40) nwActivity];
  if (v2)
  {
    v4 = v2;
    v3 = [*(a1 + 32) error];
    if (v3)
    {
      [RPNWActivityUtils failActivity:v4 error:v3];
    }

    else
    {
      nw_activity_complete_with_reason();
    }

    v2 = v4;
  }
}

- (void)_sendFrameType:(unsigned __int8)type body:(id)body
{
  typeCopy = type;
  v31[2] = *MEMORY[0x1E69E9840];
  bodyCopy = body;
  v29 = typeCopy;
  v7 = [bodyCopy length];
  v14 = v7;
  if (!(v7 >> 24))
  {
    if (v7 < 0x800000)
    {
      goto LABEL_39;
    }

    ucat = self->_ucat;
    if (ucat->var0 <= 90)
    {
      if (ucat->var0 != -1)
      {
        goto LABEL_5;
      }

      if (_LogCategory_Initialize())
      {
        ucat = self->_ucat;
LABEL_5:
        if (typeCopy <= 47)
        {
          v16 = "Invalid";
          switch(typeCopy)
          {
            case 0:
              goto LABEL_37;
            case 1:
              v16 = "NoOp";
              break;
            case 3:
              v16 = "PS_Start";
              break;
            case 4:
              v16 = "PS_Next";
              break;
            case 5:
              v16 = "PV_Start";
              break;
            case 6:
              v16 = "PV_Next";
              break;
            case 7:
              v16 = "U_OPACK";
              break;
            case 8:
              v16 = "E_OPACK";
              break;
            case 9:
              v16 = "P_OPACK";
              break;
            case 10:
              v16 = "PA_Req";
              break;
            case 11:
              v16 = "PA_Rsp";
              break;
            case 16:
              v16 = "SessionStartRequest";
              break;
            case 17:
              v16 = "SessionStartResponse";
              break;
            case 18:
              v16 = "SessionData";
              break;
            case 32:
              v16 = "FamilyIdentityRequest";
              break;
            case 33:
              v16 = "FamilyIdentityResponse";
              break;
            case 34:
              v16 = "FamilyIdentityUpdate";
              break;
            default:
              goto LABEL_36;
          }

          goto LABEL_37;
        }

        if (typeCopy <= 63)
        {
          if (typeCopy == 48)
          {
            v16 = "WatchIdentityRequest";
            goto LABEL_37;
          }

          if (typeCopy == 49)
          {
            v16 = "WatchIdentityResponse";
            goto LABEL_37;
          }
        }

        else
        {
          switch(typeCopy)
          {
            case '@':
              v16 = "FriendIdentityRequest";
              goto LABEL_37;
            case 'A':
              v16 = "FriendIdentityResponse";
              goto LABEL_37;
            case 'B':
              v16 = "FriendIdentityUpdate";
LABEL_37:
              LogPrintF(ucat, "[RPConnection _sendFrameType:body:]", 90, "Large Frame: Send frame 0x%02X (%s), <%.16@> (%zu bytes)\n", typeCopy, v16, bodyCopy, v14);
              goto LABEL_38;
          }
        }

LABEL_36:
        v16 = "?";
        goto LABEL_37;
      }
    }

LABEL_38:
    0x7FFFFFLL = [MEMORY[0x1E696AEC0] stringWithFormat:@"len:%zu, check:%d", v14, 0x7FFFFFLL];
    v18 = +[RPAutoBugCapture sharedReporter];
    [v18 reportIssueOfType:3 issueContext:@"sendFrameType" processName:@"rapportd" triggerThresholdValues:0x7FFFFFLL];

LABEL_39:
    BYTE1(v29) = BYTE2(v14);
    BYTE2(v29) = BYTE1(v14);
    HIBYTE(v29) = v14;
    v19 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:&v29 length:4];
    v20 = self->_ucat;
    if (v20->var0 <= 9)
    {
      if (v20->var0 != -1)
      {
        goto LABEL_41;
      }

      if (_LogCategory_Initialize())
      {
        v20 = self->_ucat;
LABEL_41:
        if (typeCopy <= 47)
        {
          v21 = "Invalid";
          switch(typeCopy)
          {
            case 0:
              goto LABEL_73;
            case 1:
              v21 = "NoOp";
              break;
            case 3:
              v21 = "PS_Start";
              break;
            case 4:
              v21 = "PS_Next";
              break;
            case 5:
              v21 = "PV_Start";
              break;
            case 6:
              v21 = "PV_Next";
              break;
            case 7:
              v21 = "U_OPACK";
              break;
            case 8:
              v21 = "E_OPACK";
              break;
            case 9:
              v21 = "P_OPACK";
              break;
            case 10:
              v21 = "PA_Req";
              break;
            case 11:
              v21 = "PA_Rsp";
              break;
            case 16:
              v21 = "SessionStartRequest";
              break;
            case 17:
              v21 = "SessionStartResponse";
              break;
            case 18:
              v21 = "SessionData";
              break;
            case 32:
              v21 = "FamilyIdentityRequest";
              break;
            case 33:
              v21 = "FamilyIdentityResponse";
              break;
            case 34:
              v21 = "FamilyIdentityUpdate";
              break;
            default:
              goto LABEL_72;
          }

          goto LABEL_73;
        }

        if (typeCopy <= 63)
        {
          if (typeCopy == 48)
          {
            v21 = "WatchIdentityRequest";
            goto LABEL_73;
          }

          if (typeCopy == 49)
          {
            v21 = "WatchIdentityResponse";
            goto LABEL_73;
          }
        }

        else
        {
          switch(typeCopy)
          {
            case '@':
              v21 = "FriendIdentityRequest";
              goto LABEL_73;
            case 'A':
              v21 = "FriendIdentityResponse";
              goto LABEL_73;
            case 'B':
              v21 = "FriendIdentityUpdate";
LABEL_73:
              LogPrintF(v20, "[RPConnection _sendFrameType:body:]", 9, "Send frame 0x%02X (%s), <%.16@> (%zu bytes)\n", typeCopy, v21, bodyCopy, v14);
              goto LABEL_74;
          }
        }

LABEL_72:
        v21 = "?";
        goto LABEL_73;
      }
    }

LABEL_74:
    v22 = objc_alloc_init(MEMORY[0x1E6999570]);
    if (v14)
    {
      v31[0] = v19;
      v31[1] = bodyCopy;
      v23 = MEMORY[0x1E695DEC8];
      v24 = v31;
      v25 = 2;
    }

    else
    {
      v30 = v19;
      v23 = MEMORY[0x1E695DEC8];
      v24 = &v30;
      v25 = 1;
    }

    v26 = [v23 arrayWithObjects:v24 count:v25];
    [v22 setDataArray:v26];

    [(CUReadWriteRequestable *)self->_requestable writeWithRequest:v22];
    v27 = 0;
    goto LABEL_78;
  }

  v27 = RPErrorF(4294960553, "Frame too big (%zu vs %u)", v8, v9, v10, v11, v12, v13, v7);
  if (v27)
  {
    v28 = self->_ucat;
    if (v28->var0 <= 90)
    {
      if (v28->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_78;
        }

        v28 = self->_ucat;
      }

      LogPrintF(v28, "[RPConnection _sendFrameType:body:]", 90, "### Send frame type 0x%X failed: %{error}\n", typeCopy, v27);
    }
  }

LABEL_78:
}

- (void)_sendFrameType:(unsigned __int8)type unencryptedObject:(id)object
{
  typeCopy = type;
  v8 = 0;
  if (self->_canDecode128bit)
  {
    v6 = 16;
  }

  else
  {
    v6 = 0;
  }

  v7 = MEMORY[0x1B8C9E170](object, v6, &v8);
  if (v7)
  {
    [(RPConnection *)self _sendFrameType:typeCopy body:v7];
  }

  else
  {
    [RPConnection _sendFrameType:typeCopy unencryptedObject:?];
  }
}

- (void)sendReachabilityProbe:(const char *)probe
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  ucat = self->_ucat;
  if (ucat->var0 <= 60)
  {
    if (ucat->var0 != -1)
    {
LABEL_3:
      LogPrintF(ucat, "[RPConnection sendReachabilityProbe:]", 60, "Peer may be unreachable, sending reachability probe (%s)\n", probe);
      goto LABEL_5;
    }

    if (_LogCategory_Initialize())
    {
      ucat = self->_ucat;
      goto LABEL_3;
    }
  }

LABEL_5:

  [(RPConnection *)self _sendFrameType:1 body:0];
}

- (void)processSendsUsingConnection:(id)connection
{
  connectionCopy = connection;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if ([(NSMutableArray *)self->_sendArray count])
  {
    v4 = 0;
    do
    {
      v5 = [(NSMutableArray *)self->_sendArray objectAtIndexedSubscript:v4];
      options = [v5 options];
      v7 = [(RPConnection *)self _isEligibleToSendWithOptions:options];

      if (v7)
      {
        [(NSMutableArray *)self->_sendArray removeObjectAtIndex:v4];
        options2 = [v5 options];
        v9 = 0.0;
        v10 = 0.0;
        if (options2)
        {
          options3 = [v5 options];
          CFDictionaryGetDouble();
          v10 = v12;
        }

        timer = [v5 timer];

        if (timer && v10 > 0.0)
        {
          mach_absolute_time();
          [v5 queueTicks];
          UpTicksToSecondsF();
          v15 = v10 - v14;
          if (v15 > 1.0)
          {
            v9 = v15;
          }

          else
          {
            v9 = 1.0;
          }

          options4 = [v5 options];
          v17 = [options4 mutableCopy];

          v18 = [MEMORY[0x1E696AD98] numberWithDouble:v9];
          [v17 setObject:v18 forKeyedSubscript:@"timeoutSeconds"];

          [v5 setOptions:v17];
          timer2 = [v5 timer];
          dispatch_source_cancel(timer2);

          [v5 setTimer:0];
        }

        requestID = [v5 requestID];

        if (requestID)
        {
          ucat = self->_ucat;
          if (ucat->var0 <= 30)
          {
            if (ucat->var0 != -1)
            {
              goto LABEL_15;
            }

            if (_LogCategory_Initialize())
            {
              ucat = self->_ucat;
LABEL_15:
              requestID2 = [v5 requestID];
              label = [connectionCopy label];
              LogPrintF(ucat, "[RPConnection processSendsUsingConnection:]", 30, "Transferring request ID %@ to connection %@ with timeout %f\n", requestID2, label, *&v9);
            }
          }

          requestID3 = [v5 requestID];
          request = [v5 request];
          xpcID = [v5 xpcID];
          options5 = [v5 options];
          responseHandler = [v5 responseHandler];
          [connectionCopy sendEncryptedRequestID:requestID3 request:request xpcID:xpcID options:options5 responseHandler:responseHandler];

LABEL_28:
          goto LABEL_29;
        }

        eventID = [v5 eventID];

        v25 = self->_ucat;
        var0 = v25->var0;
        if (eventID)
        {
          if (var0 <= 30)
          {
            if (var0 != -1)
            {
              goto LABEL_20;
            }

            if (_LogCategory_Initialize())
            {
              v25 = self->_ucat;
LABEL_20:
              eventID2 = [v5 eventID];
              label2 = [connectionCopy label];
              LogPrintF(v25, "[RPConnection processSendsUsingConnection:]", 30, "Transferring event ID %@ to connection %@", eventID2, label2);
            }
          }

          requestID3 = [v5 eventID];
          eventData = [v5 eventData];
          options6 = [v5 options];
          completion = [v5 completion];
          [connectionCopy sendEncryptedEventID:requestID3 data:eventData xid:0 options:options6 completion:completion];

          goto LABEL_28;
        }

        if (var0 <= 90)
        {
          if (var0 == -1)
          {
            if (!_LogCategory_Initialize())
            {
              goto LABEL_29;
            }

            v25 = self->_ucat;
          }

          LogPrintF(v25, "[RPConnection processSendsUsingConnection:]", 90, "### Unsupported send attempt\n");
        }
      }

      else
      {
        ++v4;
      }

LABEL_29:
    }

    while ([(NSMutableArray *)self->_sendArray count]> v4);
  }
}

- (void)_receiveStart:(id)start readFrame:(id *)frame requestable:(id)requestable
{
  startCopy = start;
  requestableCopy = requestable;
  ucat = self->_ucat;
  var0 = ucat->var0;
  if (self->_flowControlReadEnabled)
  {
    if (var0 <= 9)
    {
      if (var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_9;
        }

        ucat = self->_ucat;
      }

      LogPrintF(ucat, "[RPConnection _receiveStart:readFrame:requestable:]", 9, "Start receiving header\n");
    }

LABEL_9:
    frame->var1 = 1;
    if (!startCopy)
    {
      startCopy = objc_alloc_init(MEMORY[0x1E6999518]);
    }

    [startCopy setBufferBytes:frame];
    [startCopy setBufferData:0];
    [startCopy setMinLength:4];
    [startCopy setMaxLength:4];
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __52__RPConnection__receiveStart_readFrame_requestable___block_invoke;
    v16 = &unk_1E7C93C38;
    selfCopy = self;
    startCopy = startCopy;
    v18 = startCopy;
    frameCopy = frame;
    v12 = requestableCopy;
    v19 = v12;
    [startCopy setCompletion:&v13];
    [v12 readWithRequest:{startCopy, v13, v14, v15, v16, selfCopy}];
    frame->var2 = 1;

    goto LABEL_12;
  }

  if (var0 <= 9)
  {
    if (var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_12;
      }

      ucat = self->_ucat;
    }

    LogPrintF(ucat, "[RPConnection _receiveStart:readFrame:requestable:]", 9, "Flow control read suppress\n");
  }

LABEL_12:
}

- (void)_receiveCompletion:(id)completion readFrame:(id *)frame requestable:(id)requestable
{
  completionCopy = completion;
  requestableCopy = requestable;
  frame->var2 = 0;
  error = [completionCopy error];
  if (error)
  {
    ucat = self->_ucat;
    if (ucat->var0 > 60)
    {
      goto LABEL_17;
    }

    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
LABEL_17:
        v19 = _Block_copy(self->_readErrorHandler);
        0x4000 = v19;
        if (v19)
        {
          (*(v19 + 2))(v19, error);
        }

        goto LABEL_19;
      }

      ucat = self->_ucat;
    }

    LogPrintF(ucat, "[RPConnection _receiveCompletion:readFrame:requestable:]", 60, "### Receive failed: %{error}\n", error);
    goto LABEL_17;
  }

  if (!frame->var1)
  {
    v32 = 0;
    v17 = [completionCopy length];
    v31 = v17;
    v18 = self->_ucat;
    if (v18->var0 <= 9)
    {
      if (v18->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_29;
        }

        v18 = self->_ucat;
      }

      LogPrintF(v18, "[RPConnection _receiveCompletion:readFrame:requestable:]", 9, "Received body: %zu byte(s)\n", v17);
    }

LABEL_29:
    v23 = completionCopy;
LABEL_30:
    data = [v23 data];
    [(RPConnection *)self _receivedHeader:frame body:data ctx:&v31];

    [(RPConnection *)self _receiveStart:completionCopy readFrame:frame requestable:requestableCopy];
    goto LABEL_45;
  }

  v12 = frame->var0.var1[0];
  v13 = frame->var0.var1[2] | (v12 << 16) | (frame->var0.var1[1] << 8);
  var0 = frame->var0.var0;
  if ((var0 - 3) > 3 || v13 <= 0x4000)
  {
    if ((v12 & 0x80000000) == 0)
    {
      if (!v13)
      {
        v21 = self->_ucat;
        if (v21->var0 <= 9)
        {
          if (v21->var0 == -1)
          {
            if (!_LogCategory_Initialize())
            {
              goto LABEL_47;
            }

            v21 = self->_ucat;
          }

          LogPrintF(v21, "[RPConnection _receiveCompletion:readFrame:requestable:]", 9, "Received header: empty body\n");
        }

LABEL_47:
        v31 = 0;
        v32 = [completionCopy statusFlags] & 1;
        v23 = MEMORY[0x1E695DEF0];
        goto LABEL_30;
      }

LABEL_40:
      v27 = self->_ucat;
      if (v27->var0 <= 9)
      {
        if (v27->var0 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_44;
          }

          v27 = self->_ucat;
        }

        LogPrintF(v27, "[RPConnection _receiveCompletion:readFrame:requestable:]", 9, "Received header. Start receiving %zu byte body\n", v13);
      }

LABEL_44:
      frame->var1 = 0;
      [completionCopy setBufferBytes:0];
      [completionCopy setBufferData:0];
      [completionCopy setMinLength:v13];
      [completionCopy setMaxLength:v13];
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __57__RPConnection__receiveCompletion_readFrame_requestable___block_invoke;
      v33[3] = &unk_1E7C93C38;
      v33[4] = self;
      v28 = completionCopy;
      v34 = v28;
      frameCopy = frame;
      v29 = requestableCopy;
      v35 = v29;
      [v28 setCompletion:v33];
      [v29 readWithRequest:v28];
      frame->var2 = 1;

      goto LABEL_45;
    }

    v22 = self->_ucat;
    if (v22->var0 <= 90)
    {
      if (v22->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_39;
        }

        v22 = self->_ucat;
      }

      LogPrintF(v22, "[RPConnection _receiveCompletion:readFrame:requestable:]", 90, "Large Frame: Received header. Start receiving %zu byte body\n", v13);
    }

LABEL_39:
    0x7FFFFFLL = [MEMORY[0x1E696AEC0] stringWithFormat:@"len:%zu, check:%d", v13, 0x7FFFFFLL];
    v26 = +[RPAutoBugCapture sharedReporter];
    [v26 reportIssueOfType:4 issueContext:@"receiveFrameHeader" processName:@"rapportd" triggerThresholdValues:0x7FFFFFLL];

    goto LABEL_40;
  }

  v15 = self->_ucat;
  if (v15->var0 <= 90)
  {
    if (v15->var0 != -1)
    {
      goto LABEL_10;
    }

    if (_LogCategory_Initialize())
    {
      v15 = self->_ucat;
      var0 = frame->var0.var0;
LABEL_10:
      if (var0 <= 47)
      {
        v16 = "Invalid";
        switch(var0)
        {
          case 0:
            goto LABEL_70;
          case 1:
            v16 = "NoOp";
            break;
          case 3:
            v16 = "PS_Start";
            break;
          case 4:
            v16 = "PS_Next";
            break;
          case 5:
            v16 = "PV_Start";
            break;
          case 6:
            v16 = "PV_Next";
            break;
          case 7:
            v16 = "U_OPACK";
            break;
          case 8:
            v16 = "E_OPACK";
            break;
          case 9:
            v16 = "P_OPACK";
            break;
          case 10:
            v16 = "PA_Req";
            break;
          case 11:
            v16 = "PA_Rsp";
            break;
          case 16:
            v16 = "SessionStartRequest";
            break;
          case 17:
            v16 = "SessionStartResponse";
            break;
          case 18:
            v16 = "SessionData";
            break;
          case 32:
            v16 = "FamilyIdentityRequest";
            break;
          case 33:
            v16 = "FamilyIdentityResponse";
            break;
          case 34:
            v16 = "FamilyIdentityUpdate";
            break;
          default:
            goto LABEL_69;
        }

        goto LABEL_70;
      }

      if (var0 <= 63)
      {
        if (var0 == 48)
        {
          v16 = "WatchIdentityRequest";
          goto LABEL_70;
        }

        if (var0 == 49)
        {
          v16 = "WatchIdentityResponse";
          goto LABEL_70;
        }
      }

      else
      {
        switch(var0)
        {
          case '@':
            v16 = "FriendIdentityRequest";
            goto LABEL_70;
          case 'A':
            v16 = "FriendIdentityResponse";
            goto LABEL_70;
          case 'B':
            v16 = "FriendIdentityUpdate";
LABEL_70:
            LogPrintF(v15, "[RPConnection _receiveCompletion:readFrame:requestable:]", 90, "### Received frame too big for pair/verify type:%d (%s) (%zu bytes)\n", var0, v16, v13);
            goto LABEL_71;
        }
      }

LABEL_69:
      v16 = "?";
      goto LABEL_70;
    }
  }

LABEL_71:
  0x4000 = [MEMORY[0x1E696AEC0] stringWithFormat:@"len:%zu, check:%d", v13, 0x4000];
  v30 = +[RPAutoBugCapture sharedReporter];
  [v30 reportIssueOfType:5 issueContext:@"receivePairVerifyHeader" processName:@"rapportd" triggerThresholdValues:0x4000];

LABEL_19:
LABEL_45:
}

- (void)_receivedHeader:(id *)header body:(id)body ctx:(id *)ctx
{
  bodyCopy = body;
  ++self->_receivedFrameCountCurrent;
  var0 = header->var0;
  ucat = self->_ucat;
  v28 = bodyCopy;
  if (ucat->var0 <= 9)
  {
    if (ucat->var0 == -1)
    {
      v12 = _LogCategory_Initialize();
      bodyCopy = v28;
      if (!v12)
      {
        goto LABEL_36;
      }

      ucat = self->_ucat;
    }

    if (var0 <= 47)
    {
      v11 = "Invalid";
      switch(var0)
      {
        case 0:
          goto LABEL_35;
        case 1:
          v11 = "NoOp";
          break;
        case 3:
          v11 = "PS_Start";
          break;
        case 4:
          v11 = "PS_Next";
          break;
        case 5:
          v11 = "PV_Start";
          break;
        case 6:
          v11 = "PV_Next";
          break;
        case 7:
          v11 = "U_OPACK";
          break;
        case 8:
          v11 = "E_OPACK";
          break;
        case 9:
          v11 = "P_OPACK";
          break;
        case 10:
          v11 = "PA_Req";
          break;
        case 11:
          v11 = "PA_Rsp";
          break;
        case 16:
          v11 = "SessionStartRequest";
          break;
        case 17:
          v11 = "SessionStartResponse";
          break;
        case 18:
          v11 = "SessionData";
          break;
        case 32:
          v11 = "FamilyIdentityRequest";
          break;
        case 33:
          v11 = "FamilyIdentityResponse";
          break;
        case 34:
          v11 = "FamilyIdentityUpdate";
          break;
        default:
          goto LABEL_34;
      }

      goto LABEL_35;
    }

    if (var0 <= 63)
    {
      if (var0 == 48)
      {
        v11 = "WatchIdentityRequest";
        goto LABEL_35;
      }

      if (var0 == 49)
      {
        v11 = "WatchIdentityResponse";
        goto LABEL_35;
      }
    }

    else
    {
      switch(var0)
      {
        case '@':
          v11 = "FriendIdentityRequest";
          goto LABEL_35;
        case 'A':
          v11 = "FriendIdentityResponse";
          goto LABEL_35;
        case 'B':
          v11 = "FriendIdentityUpdate";
LABEL_35:
          LogPrintF(ucat, "-[RPConnection _receivedHeader:body:ctx:]", 9, "Received frame 0x%02X (%s), <%.16@> (%ld bytes)\n", var0, v11, v28, [bodyCopy length]);
          bodyCopy = v28;
          goto LABEL_36;
      }
    }

LABEL_34:
    v11 = "?";
    goto LABEL_35;
  }

LABEL_36:
  if (var0 <= 5)
  {
    if (var0 > 3)
    {
      if (var0 != 4)
      {
        if (self->_clientMode)
        {
          v14 = self->_ucat;
          if (v14->var0 > 60)
          {
            goto LABEL_91;
          }

          if (v14->var0 == -1)
          {
            if (!_LogCategory_Initialize())
            {
              goto LABEL_91;
            }

            v14 = self->_ucat;
          }

          LogPrintF(v14, "[RPConnection _receivedHeader:body:ctx:]", 60, "### Ignoring PairVerifyStart on client\n", v25, v26, v27);
          goto LABEL_91;
        }

        selfCopy4 = self;
        v19 = bodyCopy;
        v22 = 1;
        goto LABEL_76;
      }

      selfCopy3 = self;
      v16 = bodyCopy;
      if (self->_clientMode)
      {
        [(RPConnection *)self _clientPairSetupWithData:bodyCopy];
        goto LABEL_91;
      }

      v21 = 0;
    }

    else
    {
      if (var0 == 1)
      {
        goto LABEL_91;
      }

      if (var0 != 3)
      {
        goto LABEL_67;
      }

      if (self->_clientMode)
      {
        v13 = self->_ucat;
        if (v13->var0 > 60)
        {
          goto LABEL_91;
        }

        if (v13->var0 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_91;
          }

          v13 = self->_ucat;
        }

        LogPrintF(v13, "[RPConnection _receivedHeader:body:ctx:]", 60, "### Ignoring PairSetupStart on client\n", v25, v26, v27);
        goto LABEL_91;
      }

      selfCopy3 = self;
      v16 = bodyCopy;
      v21 = 1;
    }

    [(RPConnection *)selfCopy3 _serverPairSetupWithData:v16 start:v21];
    goto LABEL_91;
  }

  if (var0 <= 9)
  {
    if (var0 != 6)
    {
      if (var0 != 8)
      {
LABEL_67:
        v20 = self->_ucat;
        if (v20->var0 > 60)
        {
          goto LABEL_91;
        }

        if (v20->var0 == -1)
        {
          v24 = _LogCategory_Initialize();
          bodyCopy = v28;
          if (!v24)
          {
            goto LABEL_91;
          }

          v20 = self->_ucat;
        }

        [bodyCopy length];
        LogPrintF(v20, "[RPConnection _receivedHeader:body:ctx:]", 60, "### Ignoring unhandled frame 0x%02X (%s), %d bytes\n");
        goto LABEL_91;
      }

LABEL_56:
      [(RPConnection *)self _receivedHeader:header encryptedObjectData:v28 ctx:ctx];
      goto LABEL_91;
    }

    selfCopy4 = self;
    v19 = bodyCopy;
    if (self->_clientMode)
    {
      [(RPConnection *)self _clientPairVerifyWithData:bodyCopy];
      goto LABEL_91;
    }

    v22 = 0;
LABEL_76:
    [(RPConnection *)selfCopy4 _serverPairVerifyWithData:v19 start:v22];
    goto LABEL_91;
  }

  if (var0 == 10)
  {
    if (!self->_clientMode)
    {
      [(RPConnection *)self _serverPreAuthRequestWithData:bodyCopy];
      goto LABEL_91;
    }

    v17 = self->_ucat;
    if (v17->var0 > 60)
    {
      goto LABEL_91;
    }

    if (v17->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_91;
      }

      v17 = self->_ucat;
    }

    LogPrintF(v17, "[RPConnection _receivedHeader:body:ctx:]", 60, "### Ignoring PreAuthRequest on client\n", v25, v26, v27);
    goto LABEL_91;
  }

  if (var0 != 11)
  {
    if (var0 != 12)
    {
      goto LABEL_67;
    }

    goto LABEL_56;
  }

  if (self->_clientMode)
  {
    [(RPConnection *)self _clientPreAuthResponseWithData:bodyCopy];
    goto LABEL_91;
  }

  v23 = self->_ucat;
  if (v23->var0 <= 60)
  {
    if (v23->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_91;
      }

      v23 = self->_ucat;
    }

    LogPrintF(v23, "[RPConnection _receivedHeader:body:ctx:]", 60, "### Ignoring PreAuthResponse on server\n");
  }

LABEL_91:

  MEMORY[0x1EEE66C30]();
}

- (void)_receivedObject:(id)object ctx:(id *)ctx
{
  objectCopy = object;
  Int64Ranged = CFDictionaryGetInt64Ranged();
  if (Int64Ranged == 3)
  {
    [(RPConnection *)self _receivedResponse:objectCopy ctx:ctx];
    goto LABEL_10;
  }

  v7 = Int64Ranged;
  if (Int64Ranged == 2)
  {
    [(RPConnection *)self _receivedRequest:objectCopy ctx:ctx];
    goto LABEL_10;
  }

  v8 = objectCopy;
  if (Int64Ranged == 1)
  {
    [(RPConnection *)self _receivedEvent:objectCopy ctx:ctx];
LABEL_10:
    v8 = objectCopy;
    goto LABEL_11;
  }

  ucat = self->_ucat;
  if (ucat->var0 > 60)
  {
    goto LABEL_11;
  }

  if (ucat->var0 != -1)
  {
LABEL_9:
    LogPrintF(ucat, "[RPConnection _receivedObject:ctx:]", 60, "### Unknown message type: %d\n", v7);
    goto LABEL_10;
  }

  v10 = _LogCategory_Initialize();
  v8 = objectCopy;
  if (v10)
  {
    ucat = self->_ucat;
    goto LABEL_9;
  }

LABEL_11:
}

- (void)_receivedEvent:(id)event ctx:(id *)ctx
{
  v82 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  CFDictionaryGetTypeID();
  v7 = CFDictionaryGetTypedValue();
  if (v7)
  {
    CFStringGetTypeID();
    v8 = CFDictionaryGetTypedValue();
    if (v8)
    {
      Int64 = CFDictionaryGetInt64();
      CFStringGetTypeID();
      v10 = CFDictionaryGetTypedValue();
      if (v10 && !self->_clientMode)
      {
        inUseProcesses = self->_inUseProcesses;
        if (!inUseProcesses)
        {
          v12 = objc_alloc_init(MEMORY[0x1E695DFA8]);
          v13 = self->_inUseProcesses;
          self->_inUseProcesses = v12;

          inUseProcesses = self->_inUseProcesses;
        }

        [(NSMutableSet *)inUseProcesses addObject:v10];
        ucat = self->_ucat;
        if (ucat->var0 <= 30)
        {
          if (ucat->var0 != -1)
          {
LABEL_9:
            inUseProcessesToString = [(RPConnection *)self inUseProcessesToString];
            LogPrintF(ucat, "[RPConnection _receivedEvent:ctx:]", 30, "In use processes updated to: %@\n", inUseProcessesToString);

            goto LABEL_21;
          }

          if (_LogCategory_Initialize())
          {
            ucat = self->_ucat;
            goto LABEL_9;
          }
        }
      }

LABEL_21:
      v66 = NSDictionaryGetNSNumber();
      unsignedIntValue = [v66 unsignedIntValue];
      if (!Int64)
      {
        v19 = v8;
        if (([v19 isEqual:@"HIDRelay"] & 1) != 0 || (objc_msgSend(v19, "isEqual:", @"synchSetupStateFromStereoCounterpart") & 1) != 0 || (objc_msgSend(v19, "isEqual:", @"_hidT") & 1) != 0 || objc_msgSend(v19, "isEqual:", @"_laData"))
        {
        }

        else
        {
          v54 = [v19 isEqual:@"_siA"];

          if (!v54)
          {
            v20 = 30;
LABEL_28:
            v21 = self->_ucat;
            if (v20 >= v21->var0)
            {
              if (v21->var0 == -1)
              {
                if (!_LogCategory_Initialize())
                {
                  goto LABEL_32;
                }

                v21 = self->_ucat;
              }

              LogPrintF(v21, "-[RPConnection _receivedEvent:ctx:]", v20, "Received event ID '%@', XID 0x%X, %d keys, from %@\n", v8, unsignedIntValue, [v7 count], self->_peerIdentifier);
            }

LABEL_32:
            if ([v8 isEqual:@"_systemInfoUpdate"])
            {
              [(RPConnection *)self _receivedSystemInfo:v7 xid:0];
            }

            else if (self->_receivedEventHandler)
            {
              v64 = v10;
              peerIdentifier = self->_peerIdentifier;
              if (!peerIdentifier)
              {
                peerIdentifier = @"?";
              }

              v65 = peerIdentifier;
              if ([v8 isEqualToString:@"ids-message"])
              {
                publicIdentifier = [(RPCompanionLinkDevice *)self->_peerDeviceInfo publicIdentifier];

                if (publicIdentifier)
                {
                  publicIdentifier2 = [(RPCompanionLinkDevice *)self->_peerDeviceInfo publicIdentifier];

                  v65 = publicIdentifier2;
                }
              }

              peerDeviceInfo = self->_peerDeviceInfo;
              v67[0] = @"dlt";
              v26 = MEMORY[0x1E696AD98];
              linkType = self->_linkType;
              v28 = peerDeviceInfo;
              v63 = [v26 numberWithInt:linkType];
              v68[0] = v63;
              v67[1] = @"senderIDSCID";
              idsCorrelationIdentifier = [(RPEndpoint *)v28 idsCorrelationIdentifier];
              v62 = idsCorrelationIdentifier;
              if (idsCorrelationIdentifier)
              {
                v30 = idsCorrelationIdentifier;
              }

              else
              {
                v30 = &stru_1F2ED6FB8;
              }

              v68[1] = v30;
              v67[2] = @"length";
              v61 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:ctx->var0];
              v68[2] = v61;
              v67[3] = @"moreComing";
              v60 = [MEMORY[0x1E696AD98] numberWithBool:ctx->var1];
              v68[3] = v60;
              v67[4] = @"peerAddr";
              v67[5] = @"peerHomeKitUserIdentifier";
              v69 = vbslq_s8(vceqzq_s64(*&self->_peerAddrString), vdupq_n_s64(&stru_1F2ED6FB8), *&self->_peerAddrString);
              v67[6] = @"peerVerifiedIdentity";
              verifiedIdentity = [(RPEndpoint *)v28 verifiedIdentity];
              v59 = verifiedIdentity;
              if (verifiedIdentity)
              {
                v32 = verifiedIdentity;
              }

              else
              {
                v32 = @"?";
              }

              selfAddrString = self->_selfAddrString;
              if (!selfAddrString)
              {
                selfAddrString = &stru_1F2ED6FB8;
              }

              v70 = v32;
              v71 = selfAddrString;
              v67[7] = @"selfAddr";
              v67[8] = @"senderAccountAltDSID";
              accountAltDSID = [(RPEndpoint *)v28 accountAltDSID];
              v58 = accountAltDSID;
              if (accountAltDSID)
              {
                v35 = accountAltDSID;
              }

              else
              {
                v35 = &stru_1F2ED6FB8;
              }

              v72 = v35;
              v67[9] = @"senderAccountID";
              accountID = [(RPEndpoint *)v28 accountID];
              v57 = accountID;
              if (accountID)
              {
                v37 = accountID;
              }

              else
              {
                v37 = &stru_1F2ED6FB8;
              }

              v73 = v37;
              v67[10] = @"senderDeviceName";
              name = [(RPEndpoint *)v28 name];
              v56 = name;
              if (name)
              {
                v39 = name;
              }

              else
              {
                v39 = &stru_1F2ED6FB8;
              }

              v74 = v39;
              v67[11] = @"senderFileTransferTargetID";
              idsDeviceIdentifier = [(RPEndpoint *)v28 idsDeviceIdentifier];
              v55 = idsDeviceIdentifier;
              if (idsDeviceIdentifier)
              {
                v41 = idsDeviceIdentifier;
              }

              else
              {
                v41 = @"?";
              }

              v75 = v41;
              v76 = v65;
              v67[12] = @"senderID";
              v67[13] = @"senderIDS";
              idsDeviceIdentifier2 = [(RPEndpoint *)v28 idsDeviceIdentifier];
              v43 = idsDeviceIdentifier2;
              if (idsDeviceIdentifier2)
              {
                v44 = idsDeviceIdentifier2;
              }

              else
              {
                v44 = @"?";
              }

              v77 = v44;
              v67[14] = @"senderModelID";
              model = [(RPEndpoint *)v28 model];
              v46 = model;
              if (model)
              {
                v47 = model;
              }

              else
              {
                v47 = @"?";
              }

              v78 = v47;
              v67[15] = @"statusFlags";
              v48 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[RPEndpoint statusFlags](v28, "statusFlags")}];
              v79 = v48;
              v67[16] = @"senderSessionPairingID";
              sessionPairingIdentifier = [(RPEndpoint *)v28 sessionPairingIdentifier];
              v50 = sessionPairingIdentifier;
              v51 = &stru_1F2ED6FB8;
              if (sessionPairingIdentifier)
              {
                v51 = sessionPairingIdentifier;
              }

              v67[17] = @"xid";
              v52 = &unk_1F2EEC728;
              if (v66)
              {
                v52 = v66;
              }

              v80 = v51;
              v81 = v52;
              v53 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v68 forKeys:v67 count:18];

              (*(self->_receivedEventHandler + 2))();
              v10 = v64;
            }

            goto LABEL_72;
          }
        }
      }

      v20 = 10;
      goto LABEL_28;
    }

    v17 = self->_ucat;
    if (v17->var0 <= 90)
    {
      if (v17->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_72;
        }

        v17 = self->_ucat;
      }

      LogPrintF(v17, "[RPConnection _receivedEvent:ctx:]", 90, "### Received event with no ID from %@: %#m\n", self->_peerIdentifier, 0);
    }

LABEL_72:

    goto LABEL_73;
  }

  v16 = self->_ucat;
  if (v16->var0 <= 90)
  {
    if (v16->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_73;
      }

      v16 = self->_ucat;
    }

    LogPrintF(v16, "[RPConnection _receivedEvent:ctx:]", 90, "### Received event with no content from %@: %#m\n", self->_peerIdentifier, 0);
  }

LABEL_73:
}

- (void)_receivedRequest:(id)request ctx:(id *)ctx
{
  v126 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v101 = 0;
  v7 = NSDictionaryGetNSNumber();
  unsignedIntValue = [v7 unsignedIntValue];
  if (unsignedIntValue)
  {
    v9 = unsignedIntValue;
    CFStringGetTypeID();
    v10 = CFDictionaryGetTypedValue();
    if (v10)
    {
      CFDictionaryGetTypeID();
      v11 = CFDictionaryGetTypedValue();
      v12 = v11;
      if (v11)
      {
        v96 = v11;
        Int64 = CFDictionaryGetInt64();
        v92 = Int64 != 0;
        v13 = CFDictionaryGetInt64();
        v91 = v13 != 0;
        v89 = CFDictionaryGetInt64();
        CFStringGetTypeID();
        v14 = CFDictionaryGetTypedValue();
        v15 = v14;
        if (v14 && !self->_clientMode)
        {
          inUseProcesses = self->_inUseProcesses;
          if (!inUseProcesses)
          {
            v17 = objc_alloc_init(MEMORY[0x1E695DFA8]);
            v18 = self->_inUseProcesses;
            self->_inUseProcesses = v17;

            inUseProcesses = self->_inUseProcesses;
          }

          v14 = [(NSMutableSet *)inUseProcesses addObject:v15];
          ucat = self->_ucat;
          if (ucat->var0 <= 30)
          {
            if (ucat->var0 != -1)
            {
LABEL_10:
              inUseProcessesToString = [(RPConnection *)self inUseProcessesToString];
              LogPrintF(ucat, "[RPConnection _receivedRequest:ctx:]", 30, "In use processes updated to: %@\n");

              goto LABEL_27;
            }

            v14 = _LogCategory_Initialize();
            if (v14)
            {
              ucat = self->_ucat;
              goto LABEL_10;
            }
          }
        }

LABEL_27:
        v95 = v15;
        v23 = RPConnectionLog(v14);
        if (os_signpost_enabled(v23))
        {
          uTF8String = [v10 UTF8String];
          label = self->_label;
          peerIdentifier = self->_peerIdentifier;
          *buf = 67109890;
          v119 = v9;
          v120 = 2080;
          v121 = uTF8String;
          v122 = 2112;
          v123 = label;
          v124 = 2112;
          v125 = peerIdentifier;
          _os_signpost_emit_with_name_impl(&dword_1B6E85000, v23, OS_SIGNPOST_INTERVAL_BEGIN, v9, "RPConnectionClientResponseTime", " enableTelemetry=YES {XID:0x%X, requestID=%{signpost.telemetry:string1}s, connectionID:%@, peer:%@, signpost.description:begin_time}", buf, 0x26u);
        }

        v27 = v10;
        v28 = v27;
        if (v13)
        {
          v29 = 10;
        }

        else if ([v27 isEqual:@"_ftSm"])
        {
          v29 = 9;
        }

        else
        {
          v29 = 9;
          if (([v28 isEqual:@"_ftLg"] & 1) == 0)
          {
            if ([v28 isEqual:@"_ftRs"])
            {
              v29 = 9;
            }

            else
            {
              v29 = 30;
            }
          }
        }

        v30 = self->_ucat;
        if (v29 >= v30->var0)
        {
          if (v30->var0 != -1)
          {
LABEL_39:
            [v96 count];
            inUseProcessesToString = v28;
            LogPrintF(v30, "[RPConnection _receivedRequest:ctx:]", v29, "Received requestID '%@', XID 0x%X, %d keys, from %@\n");
            goto LABEL_41;
          }

          if (_LogCategory_Initialize())
          {
            v30 = self->_ucat;
            goto LABEL_39;
          }
        }

LABEL_41:
        v31 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:mach_absolute_time()];
        if ([v28 isEqual:@"_ping"])
        {
          LOBYTE(inUseProcessesToString) = v13 != 0;
          v12 = v96;
          [(RPConnection *)self _sendEncryptedResponse:v96 options:0 error:0 xid:v7 requestID:v28 highPriority:Int64 != 0 isChatty:inUseProcessesToString replyStartTime:v31];
          v32 = v31;
LABEL_82:

          goto LABEL_83;
        }

        v88 = v31;
        if ([v28 isEqual:@"_systemInfo"])
        {
          v12 = v96;
          [(RPConnection *)self _receivedSystemInfo:v96 xid:v7];
          v32 = v31;
          goto LABEL_82;
        }

        if (self->_receivedRequestHandler)
        {
          v84 = v89 != 0;
          v39 = v13 != 0;
          peerDeviceInfo = self->_peerDeviceInfo;
          v102[0] = @"dlt";
          v41 = MEMORY[0x1E696AD98];
          linkType = self->_linkType;
          v43 = peerDeviceInfo;
          v94 = [v41 numberWithInt:linkType];
          v103[0] = v94;
          v102[1] = @"senderIDSCID";
          idsCorrelationIdentifier = [(RPEndpoint *)v43 idsCorrelationIdentifier];
          v90 = idsCorrelationIdentifier;
          if (idsCorrelationIdentifier)
          {
            v45 = idsCorrelationIdentifier;
          }

          else
          {
            v45 = &stru_1F2ED6FB8;
          }

          v103[1] = v45;
          v102[2] = @"length";
          v87 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:ctx->var0];
          v103[2] = v87;
          v102[3] = @"chatty";
          v86 = [MEMORY[0x1E696AD98] numberWithBool:v39];
          v103[3] = v86;
          v102[4] = @"moreComing";
          v83 = [MEMORY[0x1E696AD98] numberWithBool:ctx->var1];
          v103[4] = v83;
          v102[5] = @"peerAddr";
          v102[6] = @"peerHomeKitUserIdentifier";
          v104 = vbslq_s8(vceqzq_s64(*&self->_peerAddrString), vdupq_n_s64(&stru_1F2ED6FB8), *&self->_peerAddrString);
          v102[7] = @"peerVerifiedIdentity";
          verifiedIdentity = [(RPEndpoint *)self->_peerDeviceInfo verifiedIdentity];
          v82 = verifiedIdentity;
          if (verifiedIdentity)
          {
            v47 = verifiedIdentity;
          }

          else
          {
            v47 = @"?";
          }

          selfAddrString = self->_selfAddrString;
          if (!selfAddrString)
          {
            selfAddrString = &stru_1F2ED6FB8;
          }

          v105 = v47;
          v106 = selfAddrString;
          v102[8] = @"selfAddr";
          v102[9] = @"senderAccountAltDSID";
          accountAltDSID = [(RPEndpoint *)v43 accountAltDSID];
          v81 = accountAltDSID;
          if (accountAltDSID)
          {
            v50 = accountAltDSID;
          }

          else
          {
            v50 = &stru_1F2ED6FB8;
          }

          v107 = v50;
          v102[10] = @"senderAccountID";
          accountID = [(RPEndpoint *)v43 accountID];
          v79 = accountID;
          if (accountID)
          {
            v52 = accountID;
          }

          else
          {
            v52 = &stru_1F2ED6FB8;
          }

          v108 = v52;
          v102[11] = @"senderDeviceName";
          name = [(RPEndpoint *)v43 name];
          v78 = name;
          if (name)
          {
            v54 = name;
          }

          else
          {
            v54 = &stru_1F2ED6FB8;
          }

          v109 = v54;
          v102[12] = @"senderFileTransferTargetID";
          idsDeviceIdentifier = [(RPEndpoint *)v43 idsDeviceIdentifier];
          v77 = idsDeviceIdentifier;
          if (idsDeviceIdentifier)
          {
            v56 = idsDeviceIdentifier;
          }

          else
          {
            v56 = @"?";
          }

          v57 = self->_peerIdentifier;
          if (!v57)
          {
            v57 = @"?";
          }

          v110 = v56;
          v111 = v57;
          v102[13] = @"senderID";
          v102[14] = @"senderIDS";
          idsDeviceIdentifier2 = [(RPEndpoint *)v43 idsDeviceIdentifier];
          v59 = idsDeviceIdentifier2;
          if (idsDeviceIdentifier2)
          {
            v60 = idsDeviceIdentifier2;
          }

          else
          {
            v60 = @"?";
          }

          v112 = v60;
          v102[15] = @"senderModelID";
          model = [(RPEndpoint *)v43 model];
          v62 = model;
          if (model)
          {
            v63 = model;
          }

          else
          {
            v63 = @"?";
          }

          v113 = v63;
          v102[16] = @"statusFlags";
          v80 = v43;
          v64 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[RPEndpoint statusFlags](v43, "statusFlags")}];
          v114 = v64;
          v102[17] = @"senderSessionPairingID";
          sessionPairingIdentifier = [(RPEndpoint *)v43 sessionPairingIdentifier];
          v66 = sessionPairingIdentifier;
          v67 = &stru_1F2ED6FB8;
          if (sessionPairingIdentifier)
          {
            v67 = sessionPairingIdentifier;
          }

          v115 = v67;
          v116 = v7;
          v102[18] = @"xid";
          v102[19] = @"_pttEligible";
          v68 = [MEMORY[0x1E696AD98] numberWithBool:v84];
          v117 = v68;
          v85 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v103 forKeys:v102 count:20];

          receivedRequestHandler = self->_receivedRequestHandler;
          v97[0] = MEMORY[0x1E69E9820];
          v97[1] = 3221225472;
          v97[2] = __37__RPConnection__receivedRequest_ctx___block_invoke;
          v97[3] = &unk_1E7C93C60;
          v97[4] = self;
          v97[5] = v28;
          v97[6] = v7;
          v99 = v92;
          v100 = v91;
          v32 = v88;
          v98 = v88;
          v70 = receivedRequestHandler[2];
          v71 = receivedRequestHandler;
          v12 = v96;
          v70(v71, v28, v96, v85, v97);

          goto LABEL_82;
        }

        v72 = self->_ucat;
        if (v72->var0 <= 90)
        {
          if (v72->var0 == -1)
          {
            if (!_LogCategory_Initialize())
            {
              goto LABEL_81;
            }

            v72 = self->_ucat;
          }

          LogPrintF(v72, "[RPConnection _receivedRequest:ctx:]", 90, "### Received requestID '%@', XID 0x%X, from %@ with no handler\n", v28, v9, self->_peerIdentifier);
        }

LABEL_81:
        v73 = v13 != 0;
        v74 = RPErrorF(4294960582, "No receive request handler", v33, v34, v35, v36, v37, v38, inUseProcessesToString);
        v32 = v88;
        LOBYTE(v76) = v73;
        [(RPConnection *)self _sendEncryptedResponse:0 options:0 error:v74 xid:v7 requestID:v28 highPriority:Int64 != 0 isChatty:v76 replyStartTime:v88];

        v12 = v96;
        goto LABEL_82;
      }

      v22 = self->_ucat;
      if (v22->var0 <= 90)
      {
        if (v22->var0 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_83;
          }

          v22 = self->_ucat;
        }

        LogPrintF(v22, "[RPConnection _receivedRequest:ctx:]", 90, "### Received requestID '%@', XID 0x%X with no content from %@: %#m\n", v10, v9, self->_peerIdentifier, v101);
      }

LABEL_83:

      goto LABEL_84;
    }

    v21 = self->_ucat;
    if (v21->var0 <= 90)
    {
      if (v21->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_84;
        }

        v21 = self->_ucat;
      }

      LogPrintF(v21, "[RPConnection _receivedRequest:ctx:]", 90, "### Received request XID 0x%X with no ID from %@: %#m\n", v9, self->_peerIdentifier, v101);
    }

LABEL_84:

    goto LABEL_85;
  }

  v20 = self->_ucat;
  if (v20->var0 <= 90)
  {
    if (v20->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_85;
      }

      v20 = self->_ucat;
    }

    LogPrintF(v20, "[RPConnection _receivedRequest:ctx:]", 90, "### Received request with no XID from %@: %#m\n", self->_peerIdentifier, v101);
  }

LABEL_85:
}

void __37__RPConnection__receivedRequest_ctx___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v12 = a2;
  v7 = a3;
  v8 = a4;
  v9 = *(a1 + 32);
  if (*(v9 + 80) == 1)
  {
    v10 = *(v9 + 296);
    if (*v10 > 90)
    {
      goto LABEL_6;
    }

    if (*v10 != -1)
    {
      goto LABEL_4;
    }

    if (_LogCategory_Initialize())
    {
      v9 = *(a1 + 32);
      v10 = *(v9 + 296);
LABEL_4:
      LogPrintF(v10, "[RPConnection _receivedRequest:ctx:]_block_invoke", 90, "### Ignoring response to requestID '%@' from %@ after invalidation\n", *(a1 + 40), *(v9 + 672));
    }
  }

  else
  {
    LOBYTE(v11) = *(a1 + 65);
    [v9 _sendEncryptedResponse:v12 options:v7 error:v8 xid:*(a1 + 48) requestID:*(a1 + 40) highPriority:*(a1 + 64) isChatty:v11 replyStartTime:*(a1 + 56)];
  }

LABEL_6:
}

- (void)_receivedResponse:(id)response ctx:(id *)ctx
{
  v109 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  v7 = NSDictionaryGetNSNumber();
  unsignedIntValue = [v7 unsignedIntValue];
  if (unsignedIntValue)
  {
    v9 = unsignedIntValue;
    v10 = [(NSMutableDictionary *)self->_requests objectForKeyedSubscript:v7];
    if (v10)
    {
      [(NSMutableDictionary *)self->_requests setObject:0 forKeyedSubscript:v7];
      requestID = [v10 requestID];
      options = [v10 options];
      timer = [v10 timer];
      [v10 setTimer:0];
      if (timer)
      {
        dispatch_source_cancel(timer);
      }

      CFDictionaryGetTypeID();
      v14 = CFDictionaryGetTypedValue();
      v15 = v14;
      if (v14)
      {
        v81 = v14;
        mach_absolute_time();
        [v10 sendTicks];
        v79 = UpTicksToMilliseconds();
        v80 = RPDecodeNSError(responseCopy);
        if (v80)
        {
          ucat = self->_ucat;
          v17 = v80;
          v15 = v81;
          if (ucat->var0 <= 90)
          {
            if (ucat->var0 == -1)
            {
              if (!_LogCategory_Initialize())
              {
                goto LABEL_30;
              }

              ucat = self->_ucat;
            }

            LogPrintF(ucat, "[RPConnection _receivedResponse:ctx:]", 90, "### Received response XID 0x%X, error %{error}, from %@, %llu ms\n", v9, v80, self->_peerIdentifier, v79);
          }

LABEL_30:
          responseHandler = [v10 responseHandler];
          responseHandler[2](responseHandler, 0, 0, v80);
LABEL_76:

          goto LABEL_77;
        }

        Int64 = CFDictionaryGetInt64();
        v77 = options;
        v21 = CFDictionaryGetInt64();
        v22 = RPConnectionLog(v21);
        v75 = timer;
        v76 = requestID;
        if (os_signpost_enabled(v22))
        {
          label = self->_label;
          v24 = [v10 length];
          peerIdentifier = self->_peerIdentifier;
          *buf = 67110402;
          v98 = v9;
          v99 = 2112;
          v100 = label;
          requestID = v76;
          v101 = 2048;
          v102 = v79;
          v103 = 2048;
          v104 = v24;
          v105 = 2048;
          v106 = Int64;
          v107 = 2112;
          v108 = peerIdentifier;
          _os_signpost_emit_with_name_impl(&dword_1B6E85000, v22, OS_SIGNPOST_INTERVAL_END, v9, "RPConnectionSendRequestTime", " enableTelemetry=YES {XID:0x%X, connectionID:%@, rtt:%llu, requestSize:%zu, responseSize:%zu, peer:%@, signpost.description:end_time}", buf, 0x3Au);
        }

        v26 = requestID;
        v27 = v26;
        if (v21)
        {
          v28 = 10;
        }

        else if ([v26 isEqual:@"_ftSm"])
        {
          v28 = 9;
        }

        else
        {
          v28 = 9;
          if (([v27 isEqual:@"_ftLg"] & 1) == 0)
          {
            if ([v27 isEqual:@"_ftRs"])
            {
              v28 = 9;
            }

            else
            {
              v28 = 30;
            }
          }
        }

        v30 = self->_ucat;
        if (v28 >= v30->var0)
        {
          if (v30->var0 == -1)
          {
            if (!_LogCategory_Initialize())
            {
              goto LABEL_41;
            }

            v30 = self->_ucat;
          }

          LogPrintF(v30, "-[RPConnection _receivedResponse:ctx:]", v28, "Received response XID 0x%X, %d keys, from %@, %llu ms request size %llu response size %llu\n", v9, [v81 count], self->_peerIdentifier, v79, objc_msgSend(v10, "length"), Int64);
        }

LABEL_41:
        v31 = [v77 objectForKeyedSubscript:@"nwActivityMetrics"];
        v32 = v31;
        if (v31)
        {
          [v31 setResponseSize:Int64];
          *buf = 0;
          v33 = CFDictionaryGetInt64();
          if (!*buf)
          {
            [v32 setReplyTime:v33];
          }

          [v32 submitMetrics];
        }

        peerDeviceInfo = self->_peerDeviceInfo;
        v82[0] = @"dlt";
        spid = v32;
        v35 = MEMORY[0x1E696AD98];
        linkType = self->_linkType;
        v37 = peerDeviceInfo;
        v73 = [v35 numberWithInt:linkType];
        v83[0] = v73;
        v82[1] = @"senderIDSCID";
        idsCorrelationIdentifier = [(RPEndpoint *)v37 idsCorrelationIdentifier];
        v72 = idsCorrelationIdentifier;
        if (idsCorrelationIdentifier)
        {
          v39 = idsCorrelationIdentifier;
        }

        else
        {
          v39 = &stru_1F2ED6FB8;
        }

        v83[1] = v39;
        v82[2] = @"length";
        v71 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:ctx->var0];
        v83[2] = v71;
        v82[3] = @"peerAddr";
        v82[4] = @"peerHomeKitUserIdentifier";
        v84 = vbslq_s8(vceqzq_s64(*&self->_peerAddrString), vdupq_n_s64(&stru_1F2ED6FB8), *&self->_peerAddrString);
        selfAddrString = self->_selfAddrString;
        if (!selfAddrString)
        {
          selfAddrString = &stru_1F2ED6FB8;
        }

        v85 = selfAddrString;
        v82[5] = @"selfAddr";
        v82[6] = @"peerVerifiedIdentity";
        verifiedIdentity = [(RPEndpoint *)v37 verifiedIdentity];
        v70 = verifiedIdentity;
        if (verifiedIdentity)
        {
          v42 = verifiedIdentity;
        }

        else
        {
          v42 = @"?";
        }

        v86 = v42;
        v82[7] = @"senderAccountAltDSID";
        accountAltDSID = [(RPEndpoint *)v37 accountAltDSID];
        v69 = accountAltDSID;
        if (accountAltDSID)
        {
          v44 = accountAltDSID;
        }

        else
        {
          v44 = &stru_1F2ED6FB8;
        }

        v87 = v44;
        v82[8] = @"senderAccountID";
        accountID = [(RPEndpoint *)v37 accountID];
        v68 = accountID;
        if (accountID)
        {
          v46 = accountID;
        }

        else
        {
          v46 = &stru_1F2ED6FB8;
        }

        v88 = v46;
        v82[9] = @"senderDeviceName";
        name = [(RPEndpoint *)v37 name];
        v67 = name;
        if (name)
        {
          v48 = name;
        }

        else
        {
          v48 = &stru_1F2ED6FB8;
        }

        v89 = v48;
        v82[10] = @"senderFileTransferTargetID";
        idsDeviceIdentifier = [(RPEndpoint *)v37 idsDeviceIdentifier];
        v66 = idsDeviceIdentifier;
        if (idsDeviceIdentifier)
        {
          v50 = idsDeviceIdentifier;
        }

        else
        {
          v50 = @"?";
        }

        v51 = self->_peerIdentifier;
        if (!v51)
        {
          v51 = @"?";
        }

        v90 = v50;
        v91 = v51;
        v82[11] = @"senderID";
        v82[12] = @"senderIDS";
        idsDeviceIdentifier2 = [(RPEndpoint *)v37 idsDeviceIdentifier];
        v53 = idsDeviceIdentifier2;
        if (idsDeviceIdentifier2)
        {
          v54 = idsDeviceIdentifier2;
        }

        else
        {
          v54 = @"?";
        }

        v92 = v54;
        v82[13] = @"senderModelID";
        model = [(RPEndpoint *)v37 model];
        v56 = model;
        if (model)
        {
          v57 = model;
        }

        else
        {
          v57 = @"?";
        }

        v93 = v57;
        v82[14] = @"statusFlags";
        v58 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[RPEndpoint statusFlags](v37, "statusFlags")}];
        v94 = v58;
        v82[15] = @"senderSessionPairingID";
        sessionPairingIdentifier = [(RPEndpoint *)v37 sessionPairingIdentifier];
        v60 = sessionPairingIdentifier;
        v61 = &stru_1F2ED6FB8;
        if (sessionPairingIdentifier)
        {
          v61 = sessionPairingIdentifier;
        }

        v82[16] = @"xid";
        v95 = v61;
        v96 = v7;
        v62 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v83 forKeys:v82 count:17];

        options = v77;
        responseHandler2 = [v10 responseHandler];
        (responseHandler2)[2](responseHandler2, v81, v62, 0);

        v64 = +[RPConnectionMetrics sharedMetrics];
        v65 = self->_linkType;

        v15 = v81;
        [v64 logRequestOnLinkType:v65 length:objc_msgSend(v10 rtt:{"length") + Int64, v79}];

        responseHandler = spid;
        timer = v75;
        requestID = v76;
        v17 = 0;
        goto LABEL_76;
      }

      v20 = self->_ucat;
      if (v20->var0 <= 90)
      {
        if (v20->var0 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_77;
          }

          v20 = self->_ucat;
        }

        LogPrintF(v20, "[RPConnection _receivedResponse:ctx:]", 90, "### Received response XID 0x%X with no content from %@: %#m\n", v9, self->_peerIdentifier, 0);
      }

LABEL_77:

      goto LABEL_78;
    }

    v19 = self->_ucat;
    if (v19->var0 <= 90)
    {
      if (v19->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_78;
        }

        v19 = self->_ucat;
      }

      LogPrintF(v19, "[RPConnection _receivedResponse:ctx:]", 90, "### Received response XID 0x%X with no request from %@\n", v9, self->_peerIdentifier);
    }

LABEL_78:

    goto LABEL_79;
  }

  v18 = self->_ucat;
  if (v18->var0 <= 90)
  {
    if (v18->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_79;
      }

      v18 = self->_ucat;
    }

    LogPrintF(v18, "[RPConnection _receivedResponse:ctx:]", 90, "### Received response with no XID from %@: %#m\n", self->_peerIdentifier, 0);
  }

LABEL_79:
}

- (void)_abortSendEntry:(id)entry withError:(id)error
{
  entryCopy = entry;
  errorCopy = error;
  ucat = self->_ucat;
  if (ucat->var0 <= 60)
  {
    v8 = entryCopy;
    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_9;
      }

      ucat = self->_ucat;
      v8 = entryCopy;
    }

    requestID = [v8 requestID];
    v10 = requestID;
    if (requestID)
    {
      LogPrintF(ucat, "[RPConnection _abortSendEntry:withError:]", 60, "### Abort queued ID '%@': %{error}\n", requestID, errorCopy);
    }

    else
    {
      eventID = [entryCopy eventID];
      LogPrintF(ucat, "[RPConnection _abortSendEntry:withError:]", 60, "### Abort queued ID '%@': %{error}\n", eventID, errorCopy);
    }
  }

LABEL_9:
  timer = [entryCopy timer];
  [entryCopy setTimer:0];
  if (timer)
  {
    dispatch_source_cancel(timer);
  }

  completion = [entryCopy completion];
  [entryCopy setCompletion:0];
  if (completion)
  {
    (completion)[2](completion, errorCopy);
  }

  else
  {
    responseHandler = [entryCopy responseHandler];
    [entryCopy setResponseHandler:0];
    if (responseHandler)
    {
      (responseHandler)[2](responseHandler, 0, 0, errorCopy);
    }
  }
}

- (void)_abortRequestsWithError:(id)error
{
  errorCopy = error;
  requests = self->_requests;
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __40__RPConnection__abortRequestsWithError___block_invoke;
  v10 = &unk_1E7C93C88;
  selfCopy = self;
  v12 = errorCopy;
  v6 = errorCopy;
  [(NSMutableDictionary *)requests enumerateKeysAndObjectsUsingBlock:&v7];
  [(NSMutableDictionary *)self->_requests removeAllObjects:v7];
}

void __40__RPConnection__abortRequestsWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = *(*(a1 + 32) + 296);
  if (*v6 <= 60)
  {
    if (*v6 != -1)
    {
LABEL_3:
      LogPrintF(v6, "-[RPConnection _abortRequestsWithError:]_block_invoke", 60, "### Abort request XID 0x%X: %{error}\n", [v9 unsignedIntValue], *(a1 + 40));
      goto LABEL_5;
    }

    if (_LogCategory_Initialize())
    {
      v6 = *(*(a1 + 32) + 296);
      goto LABEL_3;
    }
  }

LABEL_5:
  v7 = [v5 timer];
  [v5 setTimer:0];
  if (v7)
  {
    dispatch_source_cancel(v7);
  }

  v8 = [v5 responseHandler];
  [v5 setResponseHandler:0];
  if (v8)
  {
    v8[2](v8, 0, 0, *(a1 + 40));
  }
}

- (void)_timeoutForSendEntry:(id)entry
{
  entryCopy = entry;
  xidObj = [entryCopy xidObj];
  if (xidObj)
  {
    [(RPConnection *)self _timeoutForXID:xidObj];
    goto LABEL_15;
  }

  mach_absolute_time();
  [entryCopy queueTicks];
  UpTicksToSecondsF();
  v6 = v5;
  v7 = [(NSMutableArray *)self->_sendArray indexOfObject:entryCopy];
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSMutableArray *)self->_sendArray removeObjectAtIndex:v7];
    ucat = self->_ucat;
    if (ucat->var0 <= 60)
    {
      v11 = entryCopy;
      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_13;
        }

        ucat = self->_ucat;
        v11 = entryCopy;
      }

      requestID = [v11 requestID];
      LogPrintF(ucat, "[RPConnection _timeoutForSendEntry:]", 60, "### Request timeout '%@', %.3f seconds\n");
    }

LABEL_13:
    responseHandler = [entryCopy responseHandler];
    v18 = RPErrorF(4294960574, "Request timed out before send", v12, v13, v14, v15, v16, v17, requestID);
    (responseHandler)[2](responseHandler, 0, 0, v18);

    goto LABEL_14;
  }

  v8 = self->_ucat;
  if (v8->var0 > 90)
  {
    goto LABEL_15;
  }

  if (v8->var0 == -1)
  {
    if (!_LogCategory_Initialize())
    {
      goto LABEL_15;
    }

    v8 = self->_ucat;
  }

  responseHandler = [entryCopy requestID];
  LogPrintF(v8, "[RPConnection _timeoutForSendEntry:]", 90, "### Request timeout '%@' not found, %.3f seconds\n", responseHandler, v6);
LABEL_14:

LABEL_15:
}

- (void)_timeoutForXID:(id)d
{
  dCopy = d;
  unsignedIntValue = [dCopy unsignedIntValue];
  v5 = [(NSMutableDictionary *)self->_requests objectForKeyedSubscript:dCopy];
  if (v5)
  {
    [(NSMutableDictionary *)self->_requests setObject:0 forKeyedSubscript:dCopy];
    mach_absolute_time();
    [v5 sendTicks];
    UpTicksToSecondsF();
    ucat = self->_ucat;
    if (ucat->var0 <= 60)
    {
      v8 = v6;
      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_9;
        }

        ucat = self->_ucat;
      }

      LogPrintF(ucat, "[RPConnection _timeoutForXID:]", 60, "### Request timeout XID 0x%X, %.3f seconds\n", unsignedIntValue, v8);
    }

LABEL_9:
    responseHandler = [v5 responseHandler];
    v17 = RPErrorF(4294960574, "Request timed out", v11, v12, v13, v14, v15, v16, v18);
    (responseHandler)[2](responseHandler, 0, 0, v17);

    goto LABEL_10;
  }

  v9 = self->_ucat;
  if (v9->var0 > 90)
  {
    goto LABEL_10;
  }

  if (v9->var0 != -1)
  {
LABEL_7:
    LogPrintF(v9, "[RPConnection _timeoutForXID:]", 90, "### Timeout for XID 0x%X with no request\n", unsignedIntValue);
    goto LABEL_10;
  }

  if (_LogCategory_Initialize())
  {
    v9 = self->_ucat;
    goto LABEL_7;
  }

LABEL_10:
}

- (id)_identityProofDataClient
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = self->_pairVerifySession;
  v4 = v3;
  if (v3)
  {
    v5 = [(CUPairingSession *)v3 deriveKeyWithSaltPtr:"IdentityProofClient-Salt" saltLen:24 infoPtr:"IdentityProofClient-Info" infoLen:24 keyLen:32 outputKeyPtr:__s];
    if (!v5)
    {
      v8 = [MEMORY[0x1E695DEF0] _newZeroingDataWithBytes:__s length:32];
      memset_s(__s, 0x20uLL, 0, 0x20uLL);
      goto LABEL_9;
    }

    v6 = v5;
    ucat = self->_ucat;
    if (ucat->var0 <= 90)
    {
      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_8;
        }

        ucat = self->_ucat;
      }

      LogPrintF(ucat, "[RPConnection _identityProofDataClient]", 90, "### IdentityProofDataClient derive key failed: %#m\n", v6);
    }
  }

LABEL_8:
  v8 = 0;
LABEL_9:

  return v8;
}

- (id)_identityProofDataServer
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = self->_pairVerifySession;
  v4 = v3;
  if (v3)
  {
    v5 = [(CUPairingSession *)v3 deriveKeyWithSaltPtr:"IdentityProofServer-Salt" saltLen:24 infoPtr:"IdentityProofServer-Info" infoLen:24 keyLen:32 outputKeyPtr:__s];
    if (!v5)
    {
      v8 = [MEMORY[0x1E695DEF0] _newZeroingDataWithBytes:__s length:32];
      memset_s(__s, 0x20uLL, 0, 0x20uLL);
      goto LABEL_9;
    }

    v6 = v5;
    ucat = self->_ucat;
    if (ucat->var0 <= 90)
    {
      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_8;
        }

        ucat = self->_ucat;
      }

      LogPrintF(ucat, "[RPConnection _identityProofDataServer]", 90, "### IdentityProofDataServer derive key failed: %#m\n", v6);
    }
  }

LABEL_8:
  v8 = 0;
LABEL_9:

  return v8;
}

- (void)_identityProofsAdd:(id)add update:(BOOL)update
{
  addCopy = add;
  v7 = self->_identityDaemon;
  if (v7)
  {
    if (self->_clientMode)
    {
      [(RPConnection *)self _identityProofDataClient];
    }

    else
    {
      [(RPConnection *)self _identityProofDataServer];
    }
    v8 = ;
    if (!v8)
    {
      goto LABEL_26;
    }

    if (update)
    {
LABEL_17:
      homeKitIdentity = [(RPIdentityDaemon *)v7 homeKitIdentity];
      v16 = homeKitIdentity;
      if (!homeKitIdentity)
      {
LABEL_25:

LABEL_26:
        goto LABEL_27;
      }

      v21 = 0;
      v17 = [homeKitIdentity signData:v8 error:&v21];
      v18 = v21;
      ucat = self->_ucat;
      if (ucat->var0 < 31)
      {
        if (ucat->var0 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_22;
          }

          ucat = self->_ucat;
        }

        LogPrintF(ucat, "[RPConnection _identityProofsAdd:update:]", 30, "IdentityProofsAdd HK: %{error}\n", v18);
      }

LABEL_22:
      if (v17)
      {
        identifier = [v16 identifier];
        [addCopy setObject:identifier forKeyedSubscript:@"_idHKU"];

        [addCopy setObject:v17 forKeyedSubscript:@"_sigHKU"];
      }

      goto LABEL_25;
    }

    v9 = [(RPIdentityDaemon *)v7 identityOfSelfAndReturnError:0];
    v10 = v9;
    if (!v9)
    {
LABEL_15:

      if ((self->_statusFlags & 0x8000) == 0)
      {
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __42__RPConnection__identityProofsAdd_update___block_invoke;
        aBlock[3] = &unk_1E7C93CB0;
        aBlock[4] = self;
        aBlock[5] = v8;
        v14 = _Block_copy(aBlock);
        [(RPIdentityDaemon *)v7 getPairedIdentityWithCompletion:v14];
      }

      goto LABEL_17;
    }

    v23 = 0;
    v11 = [v9 signData:v8 error:&v23];
    v12 = v23;
    v13 = self->_ucat;
    if (v13->var0 < 31)
    {
      if (v13->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_12;
        }

        v13 = self->_ucat;
      }

      LogPrintF(v13, "[RPConnection _identityProofsAdd:update:]", 30, "IdentityProofsAdd RP: %{error}\n", v12);
    }

LABEL_12:
    if (v11)
    {
      [addCopy setObject:v11 forKeyedSubscript:@"_sigRP"];
    }

    goto LABEL_15;
  }

LABEL_27:
}

void __42__RPConnection__identityProofsAdd_update___block_invoke(int8x16_t *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (v5 && !a3)
  {
    v7 = *(a1[2].i64[0] + 552);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __42__RPConnection__identityProofsAdd_update___block_invoke_2;
    block[3] = &unk_1E7C93BC0;
    v9 = v5;
    v10 = vextq_s8(a1[2], a1[2], 8uLL);
    dispatch_async(v7, block);
  }
}

void __42__RPConnection__identityProofsAdd_update___block_invoke_2(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v8 = 0;
  v5 = [v3 signData:v4 error:&v8];
  v6 = v8;
  v7 = *(*(a1 + 48) + 296);
  if (*v7 <= 30)
  {
    if (*v7 != -1)
    {
LABEL_3:
      LogPrintF(v7, "-[RPConnection _identityProofsAdd:update:]_block_invoke_2", 30, "IdentityProofsAdd PD: %{error} length %llu \n", v6, [v5 length]);
      goto LABEL_5;
    }

    if (_LogCategory_Initialize())
    {
      v7 = *(*(a1 + 48) + 296);
      goto LABEL_3;
    }
  }

LABEL_5:
  if (v5)
  {
    [v2 setObject:v5 forKeyedSubscript:@"_sigPD"];
  }

  if ([v2 count])
  {
    [*(a1 + 48) sendEncryptedEventID:@"_systemInfoUpdate" event:v2 options:0 completion:0];
  }
}

- (void)_identityProofsAddWithHomeKitUUID:(id)d
{
  dCopy = d;
  v5 = self->_identityDaemon;
  if (v5)
  {
    if (self->_clientMode)
    {
      [(RPConnection *)self _identityProofDataClient];
    }

    else
    {
      [(RPConnection *)self _identityProofDataServer];
    }
    v6 = ;
    if (v6)
    {
      ucat = self->_ucat;
      if (ucat->var0 <= 30)
      {
        [(RPConnection *)ucat->var0 _identityProofsAddWithHomeKitUUID:&self->_ucat];
      }

      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __50__RPConnection__identityProofsAddWithHomeKitUUID___block_invoke;
      v8[3] = &unk_1E7C93CB0;
      v8[4] = self;
      v8[5] = v6;
      [(RPIdentityDaemon *)v5 getPairingIdentityFromHomeWithAccessory:dCopy completion:v8];
    }
  }
}

void __50__RPConnection__identityProofsAddWithHomeKitUUID___block_invoke(int8x16_t *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  v8 = a1[2].i64[0];
  if (!v5 || v6)
  {
    v10 = *(v8 + 296);
    if (*v10 <= 30)
    {
      if (*v10 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_8;
        }

        v10 = *(a1[2].i64[0] + 296);
      }

      LogPrintF(v10, "[RPConnection _identityProofsAddWithHomeKitUUID:]_block_invoke", 30, "### Failed to get HomeKit pairing identity: %@", v7);
    }
  }

  else
  {
    v9 = *(v8 + 552);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __50__RPConnection__identityProofsAddWithHomeKitUUID___block_invoke_2;
    block[3] = &unk_1E7C93BC0;
    v12 = v5;
    v13 = vextq_s8(a1[2], a1[2], 8uLL);
    dispatch_async(v9, block);
  }

LABEL_8:
}

void __50__RPConnection__identityProofsAddWithHomeKitUUID___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v11 = 0;
  v4 = [v2 signData:v3 error:&v11];
  v5 = v11;
  if (v4)
  {
    v6 = *(*(a1 + 48) + 296);
    if (*v6 <= 30)
    {
      if (*v6 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_6;
        }

        v6 = *(*(a1 + 48) + 296);
      }

      LogPrintF(v6, "[RPConnection _identityProofsAddWithHomeKitUUID:]_block_invoke_2", 30, "IdentityProofsAdd HKPI: %{error}\n", v5);
    }

LABEL_6:
    v7 = [MEMORY[0x1E695DF90] dictionary];
    v8 = [*(a1 + 32) identifier];
    [v7 setObject:v8 forKeyedSubscript:@"_idHKU"];

    [v7 setObject:v4 forKeyedSubscript:@"_sigHKU"];
    v9 = *(a1 + 48);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __50__RPConnection__identityProofsAddWithHomeKitUUID___block_invoke_3;
    v10[3] = &unk_1E7C92D58;
    v10[4] = v9;
    [v9 sendEncryptedEventID:@"_systemInfoUpdate" event:v7 options:0 completion:v10];
  }
}

void __50__RPConnection__identityProofsAddWithHomeKitUUID___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = *(*(a1 + 32) + 296);
    if (*v4 <= 30)
    {
      v6 = v3;
      if (*v4 != -1)
      {
LABEL_4:
        LogPrintF(v4, "[RPConnection _identityProofsAddWithHomeKitUUID:]_block_invoke_3", 30, "### Failed to send HomeKit user signature event: %@\n", v3);
        v3 = v6;
        goto LABEL_6;
      }

      v5 = _LogCategory_Initialize();
      v3 = v6;
      if (v5)
      {
        v4 = *(*(a1 + 32) + 296);
        goto LABEL_4;
      }
    }
  }

LABEL_6:
}

- (void)_identityProofsVerify:(id)verify
{
  verifyCopy = verify;
  v4 = self->_identityDaemon;
  if (!v4)
  {
    goto LABEL_26;
  }

  if (self->_clientMode)
  {
    [(RPConnection *)self _identityProofDataServer];
  }

  else
  {
    [(RPConnection *)self _identityProofDataClient];
  }
  v5 = ;
  if ((*(&self->_statusFlags + 1) & 0x240) == 0)
  {
    CFDataGetTypeID();
    v6 = CFDictionaryGetTypedValue();
    v7 = v6;
    if (!v5)
    {
      goto LABEL_12;
    }

    if (!v6)
    {
      goto LABEL_12;
    }

    objc_storeStrong(&self->_identityKeyData, v5);
    objc_storeStrong(&self->_identitySignature, v7);
    v8 = [(RPIdentityDaemon *)v4 resolveIdentityTypesForSignature:v7 data:v5 typeFlags:19496];
    v9 = ((v8 << 12) & 0x20000 | (((v8 >> 3) & 1) << 14)) & 0xFFFFFF8FFFFFFFFFLL | ((((v8 & 0xC00) >> 10) & 3) << 36) & 0xFFFFFFBFFFFFFFFFLL | ((((v8 & 0x4000) >> 14) & 1) << 38);
    [(RPEndpoint *)self->_peerDeviceInfo setStatusFlags:v9 | [(RPEndpoint *)self->_peerDeviceInfo statusFlags]];
    statusFlags = v9 | self->_statusFlags;
    self->_statusFlags = statusFlags;
    ucat = self->_ucat;
    if (ucat->var0 > 30)
    {
      goto LABEL_12;
    }

    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_12;
      }

      ucat = self->_ucat;
      statusFlags = self->_statusFlags;
    }

    LogPrintF(ucat, "[RPConnection _identityProofsVerify:]", 30, "IdentityProofsVerify RP: %s, %#ll{flags} current status flags %#ll{flags}\n", "yes", v9, &unk_1B6F2DEF3, statusFlags, &unk_1B6F2DEF3);
LABEL_12:
  }

  CFDataGetTypeID();
  v12 = CFDictionaryGetTypedValue();
  v13 = v12;
  if (!v5 || !v12 || (self->_statusFlags & 0x8000) != 0)
  {
    goto LABEL_22;
  }

  v14 = [(RPIdentityDaemon *)v4 resolveIdentityForSignature:v12 data:v5 typeFlags:128 error:0];
  if (v14)
  {
    [(RPEndpoint *)self->_peerDeviceInfo setStatusFlags:[(RPEndpoint *)self->_peerDeviceInfo statusFlags]| 0x8000];
    v15 = [v14 acl];
    [(RPEndpoint *)self->_peerDeviceInfo setVerifiedAcl:v15];

    self->_statusFlags |= 0x8000uLL;
    v16 = self->_ucat;
    if (v16->var0 <= 30)
    {
      if (v16->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_21;
        }

        v16 = self->_ucat;
      }

      LogPrintF(v16, "[RPConnection _identityProofsVerify:]", 30, "IdentityProofsVerify PD: %s\n", "yes");
    }
  }

LABEL_21:

LABEL_22:
  CFStringGetTypeID();
  v17 = CFDictionaryGetTypedValue();
  CFDataGetTypeID();
  v18 = CFDictionaryGetTypedValue();
  v19 = v18;
  if (v17 && v18)
  {
    objc_storeStrong(&self->_homeKitIdentityIdentifier, v17);
    objc_storeStrong(&self->_homeKitIdentitySignature, v19);
    [(RPConnection *)self _identityProofsVerifyHomeKitSignature:v19 identifier:v17];
  }

LABEL_26:
}

- (void)_identityProofsVerifyHomeKitSignature:(id)signature identifier:(id)identifier
{
  signatureCopy = signature;
  identifierCopy = identifier;
  if ((self->_statusFlags & 0x80000) == 0)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __65__RPConnection__identityProofsVerifyHomeKitSignature_identifier___block_invoke;
    v9[3] = &unk_1E7C93CD8;
    v9[4] = self;
    [(RPConnection *)self _identityProofsVerifyHomeKitSignatureOwner:signatureCopy completion:v9];
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __65__RPConnection__identityProofsVerifyHomeKitSignature_identifier___block_invoke_2;
  v8[3] = &unk_1E7C93D00;
  v8[4] = self;
  [(RPConnection *)self _identityProofsVerifyHomeKitSignatureSharedUser:signatureCopy identifier:identifierCopy completion:v8];
}

void __65__RPConnection__identityProofsVerifyHomeKitSignature_identifier___block_invoke(uint64_t a1, int a2, void *a3)
{
  if (a3 && a2)
  {
    v4 = *(*(a1 + 32) + 664);
    v5 = a3;
    [v4 setStatusFlags:{objc_msgSend(v4, "statusFlags") | 0x80000}];
    *(*(a1 + 32) + 760) |= 0x80000uLL;
    v6 = [v5 identifier];

    v7 = *(a1 + 32);
    v8 = *(v7 + 64);
    *(v7 + 64) = v6;

    v9 = _Block_copy(*(*(a1 + 32) + 680));
    if (v9)
    {
      v10 = v9;
      v9[2]();
      v9 = v10;
    }
  }
}

void __65__RPConnection__identityProofsVerifyHomeKitSignature_identifier___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v12 = v5;
    [*(*(a1 + 32) + 664) setStatusFlags:{objc_msgSend(*(*(a1 + 32) + 664), "statusFlags") | 0x2000}];
    *(*(a1 + 32) + 760) |= 0x2000uLL;
    v6 = *(a1 + 32);
    if (!*(v6 + 64))
    {
      v7 = [v12 identifierStr];
      v8 = *(a1 + 32);
      v9 = *(v8 + 64);
      *(v8 + 64) = v7;

      v6 = *(a1 + 32);
    }

    v10 = _Block_copy(*(v6 + 680));
    v11 = v10;
    if (v10)
    {
      (*(v10 + 2))(v10);
    }

    v5 = v12;
  }
}

- (void)_identityProofsVerifyHomeKitSignatureOwner:(id)owner completion:(id)completion
{
  ownerCopy = owner;
  completionCopy = completion;
  homeKitIdentity = [(RPIdentityDaemon *)self->_identityDaemon homeKitIdentity];
  if (!homeKitIdentity)
  {
    goto LABEL_9;
  }

  if (self->_clientMode)
  {
    [(RPConnection *)self _identityProofDataServer];
  }

  else
  {
    [(RPConnection *)self _identityProofDataClient];
  }
  v9 = ;
  if (!v9)
  {
LABEL_9:
    v10 = 0;
    v13 = 0;
    goto LABEL_14;
  }

  v14 = 0;
  v10 = [homeKitIdentity verifySignature:ownerCopy data:v9 error:&v14];
  v11 = v14;
  ucat = self->_ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 != -1)
    {
LABEL_8:
      LogPrintF(ucat, "[RPConnection _identityProofsVerifyHomeKitSignatureOwner:completion:]", 30, "IdentityProofsVerify HKO: %{error}\n", v11);
      goto LABEL_11;
    }

    if (_LogCategory_Initialize())
    {
      ucat = self->_ucat;
      goto LABEL_8;
    }
  }

LABEL_11:

  if (v10)
  {
    v13 = homeKitIdentity;
  }

  else
  {
    v13 = 0;
  }

LABEL_14:
  (completionCopy)[2](completionCopy, v10, v13);
}

- (void)_identityProofsVerifyHomeKitSignatureSharedUser:(id)user identifier:(id)identifier completion:(id)completion
{
  userCopy = user;
  identifierCopy = identifier;
  completionCopy = completion;
  v11 = completionCopy;
  if (self->_homeKitManager)
  {
    ucat = self->_ucat;
    if (ucat->var0 <= 30)
    {
      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_7;
        }

        ucat = self->_ucat;
      }

      LogPrintF(ucat, "[RPConnection _identityProofsVerifyHomeKitSignatureSharedUser:identifier:completion:]", 30, "IdentityProofsVerify check HKU: ID %@\n", identifierCopy);
    }

LABEL_7:
    v13 = objc_alloc_init(MEMORY[0x1E69994E8]);
    v14 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:identifierCopy];
    [v13 setIdentifier:v14];

    homeKitManager = self->_homeKitManager;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __86__RPConnection__identityProofsVerifyHomeKitSignatureSharedUser_identifier_completion___block_invoke;
    v16[3] = &unk_1E7C93D50;
    v16[4] = self;
    v17 = identifierCopy;
    v19 = v11;
    v18 = userCopy;
    [(CUHomeKitManager *)homeKitManager findPairedPeer:v13 options:32 completion:v16];

    goto LABEL_8;
  }

  (*(completionCopy + 2))(completionCopy, 0, 0);
LABEL_8:
}

void __86__RPConnection__identityProofsVerifyHomeKitSignatureSharedUser_identifier_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 552);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __86__RPConnection__identityProofsVerifyHomeKitSignatureSharedUser_identifier_completion___block_invoke_2;
  block[3] = &unk_1E7C93D28;
  v15 = v5;
  v16 = v6;
  v13 = *(a1 + 32);
  v8 = *(&v13 + 1);
  v9 = *(a1 + 56);
  *&v10 = *(a1 + 48);
  *(&v10 + 1) = v9;
  v17 = v13;
  v18 = v10;
  v11 = v6;
  v12 = v5;
  dispatch_async(v7, block);
}

void __86__RPConnection__identityProofsVerifyHomeKitSignatureSharedUser_identifier_completion___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32) && !*(a1 + 40))
  {
    v3 = *(a1 + 48);
    if (v3[328])
    {
      [v3 _identityProofDataServer];
    }

    else
    {
      [v3 _identityProofDataClient];
    }
    v5 = ;
    if (!v5)
    {
      (*(*(a1 + 72) + 16))();
LABEL_23:

      return;
    }

    v6 = objc_alloc_init(RPIdentity);
    v7 = [*(a1 + 32) publicKey];
    [(RPIdentity *)v6 setEdPKData:v7];

    v8 = *(a1 + 64);
    v13 = 0;
    v9 = [(RPIdentity *)v6 verifySignature:v8 data:v5 error:&v13];
    v10 = v13;
    v11 = *(*(a1 + 48) + 296);
    if (*v11 <= 30)
    {
      if (*v11 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_19;
        }

        v11 = *(*(a1 + 48) + 296);
      }

      LogPrintF(v11, "[RPConnection _identityProofsVerifyHomeKitSignatureSharedUser:identifier:completion:]_block_invoke_2", 30, "IdentityProofsVerify verify HKU: ID %@, %{error}\n", *(a1 + 56), v10);
    }

LABEL_19:
    if (v9)
    {
      v12 = *(a1 + 32);
    }

    else
    {
      v12 = 0;
    }

    (*(*(a1 + 72) + 16))(*(a1 + 72), v9, v12);

    goto LABEL_23;
  }

  v2 = *(*(a1 + 48) + 296);
  if (*v2 <= 30)
  {
    if (*v2 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_9;
      }

      v2 = *(*(a1 + 48) + 296);
    }

    LogPrintF(v2, "[RPConnection _identityProofsVerifyHomeKitSignatureSharedUser:identifier:completion:]_block_invoke_2", 30, "IdentityProofsVerify find failed HKU: ID %@, %{error}\n", *(a1 + 56), *(a1 + 40));
  }

LABEL_9:
  v4 = *(*(a1 + 72) + 16);

  v4();
}

- (void)_idleTimerStart:(unsigned int)start repeat:(unsigned int)repeat
{
  receivedFrameCountCurrent = self->_receivedFrameCountCurrent;
  self->_receivedFrameCountLast = receivedFrameCountCurrent;
  ucat = self->_ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 != -1)
    {
LABEL_3:
      LogPrintF(ucat, "[RPConnection _idleTimerStart:repeat:]", 30, "Idle timer start: %u/%u seconds, %llu frames\n", start, repeat, receivedFrameCountCurrent);
      goto LABEL_5;
    }

    if (_LogCategory_Initialize())
    {
      ucat = self->_ucat;
      receivedFrameCountCurrent = self->_receivedFrameCountLast;
      goto LABEL_3;
    }
  }

LABEL_5:
  idleTimer = self->_idleTimer;
  if (idleTimer)
  {
    v10 = idleTimer;
    dispatch_source_cancel(v10);
    v11 = self->_idleTimer;
    self->_idleTimer = 0;
  }

  v12 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_dispatchQueue);
  v13 = self->_idleTimer;
  self->_idleTimer = v12;
  v14 = v12;

  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __39__RPConnection__idleTimerStart_repeat___block_invoke;
  handler[3] = &unk_1E7C92D80;
  handler[4] = v14;
  handler[5] = self;
  dispatch_source_set_event_handler(v14, handler);
  CUDispatchTimerSet();
  dispatch_activate(v14);
}

void *__39__RPConnection__idleTimerStart_repeat___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = *(a1 + 40);
  if (v2 == result[11])
  {
    return [result _idleTimerFired];
  }

  return result;
}

- (void)_idleTimerFired
{
  receivedFrameCountCurrent = self->_receivedFrameCountCurrent;
  ucat = self->_ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 != -1)
    {
LABEL_3:
      LogPrintF(ucat, "[RPConnection _idleTimerFired]", 30, "Idle timer check: %llu -> %llu frames\n", self->_receivedFrameCountLast, receivedFrameCountCurrent);
      goto LABEL_5;
    }

    if (_LogCategory_Initialize())
    {
      ucat = self->_ucat;
      goto LABEL_3;
    }
  }

LABEL_5:
  if (receivedFrameCountCurrent == self->_receivedFrameCountLast)
  {
    v12 = RPErrorF(4294896153, "Idle disconnect", v2, v3, v4, v5, v6, v7, v11);
    [(RPConnection *)self _invalidateWithError:v12];
  }

  else
  {
    self->_receivedFrameCountLast = receivedFrameCountCurrent;
  }
}

- (BOOL)_receivedSystemInfo:(id)info xid:(id)xid
{
  v134 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  xidCopy = xid;
  statusFlags = self->_statusFlags;
  if (self->_pairVerifyCompleted && (self->_controlFlags & 0x200) == 0)
  {
    [(RPConnection *)self _identityProofsVerify:infoCopy];
  }

  v132 = 0;
  if ((statusFlags & 0x50000AE000) != 0)
  {
    CFStringGetTypeID();
    v9 = CFDictionaryGetTypedValue();
    if (v9)
    {
      [(RPEndpoint *)self->_peerDeviceInfo setAccountAltDSID:v9];
    }

    CFStringGetTypeID();
    v10 = CFDictionaryGetTypedValue();
    if (v10)
    {
      [(RPEndpoint *)self->_peerDeviceInfo setAccountID:v10];
    }
  }

  [(RPEndpoint *)self->_peerDeviceInfo setActivityLevel:CFDictionaryGetInt64Ranged()];
  v101 = statusFlags & 0x50000AE000;
  CFStringGetTypeID();
  v11 = CFDictionaryGetTypedValue();
  if (v11)
  {
    objc_storeStrong(&self->_appID, v11);
  }

  CFDictionaryGetTypeID();
  v12 = CFDictionaryGetTypedValue();
  if (v12)
  {
    objc_storeStrong(&self->_appInfoPeer, v12);
  }

  Int64 = CFDictionaryGetInt64();
  LODWORD(v125) = [(RPCompanionLinkDevice *)self->_peerDeviceInfo flags];
  RPCompanionLinkFlagsWithUpdateBonjourFlags(&v125, Int64);
  [(RPCompanionLinkDevice *)self->_peerDeviceInfo setFlags:v125];
  v14 = statusFlags & 0x50000AE000;
  if (!v101 && (self->_statusFlags & 0x2000000000) == 0)
  {
    v15 = v11;
    goto LABEL_26;
  }

  CFStringGetTypeID();
  v15 = CFDictionaryGetTypedValue();

  if (v15 || v132 == -6756)
  {
    [(RPConnection *)self setServiceType:v15];
  }

  ucat = self->_ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_23;
      }

      ucat = self->_ucat;
    }

    LogPrintF(ucat, "[RPConnection _receivedSystemInfo:xid:]", 30, "Received client service type %@\n", v15);
  }

LABEL_23:
  if (v101)
  {
    Int64Ranged = CFDictionaryGetInt64Ranged();
    if (!v132)
    {
      [(RPCompanionLinkDevice *)self->_peerDeviceInfo setFlags:[(RPCompanionLinkDevice *)self->_peerDeviceInfo flags]& 0xFFFFFD7F | Int64Ranged & 0x280];
    }
  }

LABEL_26:
  if ((CFDictionaryGetInt64() & 0x200) != 0)
  {
    self->_controlFlags |= 0x200uLL;
  }

  if (!v101)
  {
LABEL_32:
    if ((statusFlags & 0x80000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_35;
  }

  CFStringGetTypeID();
  v18 = CFDictionaryGetTypedValue();

  if (!v18 && v132 != -6756)
  {
    v15 = 0;
    goto LABEL_32;
  }

  [(RPCompanionLinkDevice *)self->_peerDeviceInfo setDeviceColor:v18];
  v15 = v18;
  if ((statusFlags & 0x80000) == 0)
  {
    goto LABEL_39;
  }

LABEL_35:
  CFStringGetTypeID();
  v19 = CFDictionaryGetTypedValue();

  if (v19 || v132 == -6756)
  {
    [(RPCompanionLinkDevice *)self->_peerDeviceInfo setRole:v19];
    v15 = v19;
  }

  else
  {
    v15 = 0;
  }

LABEL_39:
  v99 = statusFlags;
  if (v101)
  {
    v20 = NSDictionaryGetNSUUID();
    if (v20)
    {
      [(RPCompanionLinkDevice *)self->_peerDeviceInfo setHomeKitIdentifier:v20];
      homeKitIdentifier = [(RPCompanionLinkDevice *)self->_peerDeviceInfo homeKitIdentifier];
      [(RPConnection *)self _identityProofsAddWithHomeKitUUID:homeKitIdentifier];
    }

    LODWORD(v125) = 0;
    objc_opt_class();
    v22 = NSDictionaryGetNSArrayOfClass();
    if (v22 && self->_homeKitUserIdentifierHandler)
    {
      [(RPEndpoint *)self->_peerDeviceInfo setHomeKitUserIdentifiers:v22];
      v23 = _Block_copy(self->_homeKitUserIdentifierHandler);
      statusFlags = v23;
      if (v23)
      {
        v23[2](v23);
      }

      LODWORD(statusFlags) = v99;
    }

    v14 = v101;
  }

  else
  {
    v20 = 0;
  }

  if (self->_identifierOverride)
  {
    if (v14)
    {
      goto LABEL_51;
    }

LABEL_60:
    v25 = 0;
    v100 = 0;
    goto LABEL_61;
  }

  CFStringGetTypeID();
  v26 = CFDictionaryGetTypedValue();

  if (v26)
  {
    [(RPEndpoint *)self->_peerDeviceInfo setIdentifier:v26];
    objc_storeStrong(&self->_peerIdentifier, v26);
    v15 = v26;
  }

  else
  {
    v15 = 0;
  }

  v14 = v101;
  if (!v101)
  {
    goto LABEL_60;
  }

LABEL_51:
  CFStringGetTypeID();
  v24 = CFDictionaryGetTypedValue();
  v25 = v24 != 0;
  v100 = v24;
  if ((statusFlags & 0x80000) == 0 || !v24)
  {
LABEL_61:
    if ((self->_statusFlags & 0x2000) == 0 || (DeviceClass = GestaltGetDeviceClass(), !RPDeviceIsCommunal(DeviceClass)))
    {
LABEL_73:
      if (!v14)
      {
        goto LABEL_92;
      }

      goto LABEL_74;
    }

    v28 = self->_ucat;
    if (v28->var0 <= 30)
    {
      if (v28->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_72;
        }

        v28 = self->_ucat;
      }

      LogPrintF(v28, "[RPConnection _receivedSystemInfo:xid:]", 30, "Received SharedHome identity: ID '%.8@'\n", v100);
    }

LABEL_72:
    [(RPIdentityDaemon *)self->_identityDaemon addSharedHomeIdentityWithRPMessage:infoCopy];
    goto LABEL_73;
  }

  if (!self->_pairVerifyCompleted || self->_pairVerifyIdentityType == 2)
  {
    v25 = 1;
    goto LABEL_61;
  }

  v29 = [infoCopy objectForKeyedSubscript:@"_dIRK"];

  if (v29 || ([infoCopy objectForKeyedSubscript:@"_edPK"], v30 = objc_claimAutoreleasedReturnValue(), v30, v30))
  {
    v31 = self->_ucat;
    if (v31->var0 <= 30)
    {
      if (v31->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_90;
        }

        v31 = self->_ucat;
      }

      LogPrintF(v31, "[RPConnection _receivedSystemInfo:xid:]", 30, "Received identity from IDS '%.8@'\n", v100);
    }

LABEL_90:
    [(RPIdentityDaemon *)self->_identityDaemon saveIdentityWithIDSDeviceID:v100 message:infoCopy error:0];
  }

  v25 = 1;
  if (!v14)
  {
LABEL_92:
    if (!v14)
    {
      goto LABEL_116;
    }

    goto LABEL_93;
  }

LABEL_74:
  if (!v25)
  {
    goto LABEL_92;
  }

  if (!self->_clientMode || (-[RPCloudDaemon idsDeviceIDSelf](self->_cloudDaemon, "idsDeviceIDSelf"), v32 = objc_claimAutoreleasedReturnValue(), v33 = [v32 isEqual:v100], v32, !v33))
  {
    if ([(RPIdentity *)self->_identityVerified type]== 15)
    {
      identifier = [(RPIdentity *)self->_identityVerified identifier];
      [(RPEndpoint *)self->_peerDeviceInfo setIdsDeviceIdentifier:identifier];

      v36 = self->_ucat;
      if (v36->var0 > 30)
      {
        goto LABEL_93;
      }

      if (v36->var0 != -1)
      {
        goto LABEL_83;
      }

      if (_LogCategory_Initialize())
      {
        v36 = self->_ucat;
LABEL_83:
        idsDeviceIdentifier = [(RPEndpoint *)self->_peerDeviceInfo idsDeviceIdentifier];
        LogPrintF(v36, "[RPConnection _receivedSystemInfo:xid:]", 30, "Using AdHocPaired identifier for connection: %@", idsDeviceIdentifier);
      }
    }

    else
    {
      [(RPEndpoint *)self->_peerDeviceInfo setIdsDeviceIdentifier:v100];
    }

LABEL_93:
    CFStringGetTypeID();
    v39 = CFDictionaryGetTypedValue();

    if (v39 || v132 == -6756)
    {
      [(RPEndpoint *)self->_peerDeviceInfo setIdsCorrelationIdentifier:v39];
    }

    if (CFDictionaryGetInt64Ranged())
    {
      [(RPCompanionLinkDevice *)self->_peerDeviceInfo setListeningPort:?];
    }

    CFStringGetTypeID();
    v40 = CFDictionaryGetTypedValue();
    if (v40 || v132 == -6756)
    {
      [(RPEndpoint *)self->_peerDeviceInfo setMediaRemoteIdentifier:v40];
    }

    CFStringGetTypeID();
    v41 = CFDictionaryGetTypedValue();
    if (v41 || v132 == -6756)
    {
      [(RPEndpoint *)self->_peerDeviceInfo setMediaRouteIdentifier:v41];
    }

    v42 = NSDictionaryGetNSUUID();

    if (v42 || v132 == -6756)
    {
      [(RPCompanionLinkDevice *)self->_peerDeviceInfo setMediaSystemIdentifier:v42];
      v20 = v42;
    }

    else
    {
      v20 = 0;
    }

    CFStringGetTypeID();
    v15 = CFDictionaryGetTypedValue();
    if (v15 || v132 == -6756)
    {
      [(RPCompanionLinkDevice *)self->_peerDeviceInfo setMediaSystemName:v15];
    }

    else
    {
      v15 = 0;
    }

    v43 = CFDictionaryGetInt64Ranged();
    if (!v132)
    {
      [(RPCompanionLinkDevice *)self->_peerDeviceInfo setMediaSystemRole:v43];
    }

    v44 = CFDictionaryGetInt64Ranged();
    if (!v132)
    {
      [(RPCompanionLinkDevice *)self->_peerDeviceInfo setMediaSystemState:v44];
    }

LABEL_116:
    CFStringGetTypeID();
    v45 = CFDictionaryGetTypedValue();

    if (v45)
    {
      [(RPEndpoint *)self->_peerDeviceInfo setModel:v45];
    }

    CFStringGetTypeID();
    v46 = CFDictionaryGetTypedValue();

    if (v46)
    {
      [(RPEndpoint *)self->_peerDeviceInfo setName:v46];
    }

    CFStringGetTypeID();
    v47 = CFDictionaryGetTypedValue();

    if (!v47)
    {
      goto LABEL_123;
    }

    peerDeviceInfo = self->_peerDeviceInfo;
    if (peerDeviceInfo)
    {
      objc_msgSend_operatingSystemVersion(peerDeviceInfo);
      if (v129)
      {
LABEL_123:
        if (!v25)
        {
          goto LABEL_135;
        }

        v49 = self->_peerDeviceInfo;
        if (v49)
        {
          objc_msgSend_operatingSystemVersion(v49);
          if (v122)
          {
            goto LABEL_135;
          }
        }

        else
        {
          v122 = 0;
          v123 = 0;
          v124 = 0;
        }

        cloudDaemon = self->_cloudDaemon;
        if (cloudDaemon)
        {
          objc_msgSend_operatingSystemVersionForID_(cloudDaemon);
        }

        else
        {
          v120 = 0uLL;
          v121 = 0;
        }

        v50 = self->_peerDeviceInfo;
        v125 = v120;
        v51 = v121;
LABEL_134:
        v126 = v51;
        [(RPEndpoint *)v50 setOperatingSystemVersion:&v125];
LABEL_135:
        model = [(RPEndpoint *)self->_peerDeviceInfo model];
        if (!model)
        {
          goto LABEL_147;
        }

        v54 = model;
        v55 = self->_peerDeviceInfo;
        if (!v55)
        {
          v117 = 0;
          v118 = 0;
          v119 = 0;

          goto LABEL_147;
        }

        objc_msgSend_operatingSystemVersion(v55);

        if (v117 < 1)
        {
          goto LABEL_147;
        }

        model2 = [(RPEndpoint *)self->_peerDeviceInfo model];
        GestaltProductTypeStringToDeviceClass();

        v57 = self->_peerDeviceInfo;
        if (v57)
        {
          objc_msgSend_operatingSystemVersion(v57);
          v58 = self->_peerDeviceInfo;
          if (v58)
          {
            objc_msgSend_operatingSystemVersion(v58);
            v59 = self->_peerDeviceInfo;
            if (v59)
            {
              objc_msgSend_operatingSystemVersion(v59);
LABEL_146:
              LODWORD(v96) = 20200;
              self->_canDecode128bit = DeviceOSVersionAtOrLaterEx();
LABEL_147:
              CFStringGetTypeID();
              v60 = CFDictionaryGetTypedValue();

              if (v60)
              {
                [(RPCompanionLinkDevice *)self->_peerDeviceInfo setPublicIdentifier:v60];
              }

              CFStringGetTypeID();
              v61 = CFDictionaryGetTypedValue();

              if (v61)
              {
                [(RPEndpoint *)self->_peerDeviceInfo setSessionPairingIdentifier:v61];
              }

              if (v14)
              {
                CFStringGetTypeID();
                v62 = CFDictionaryGetTypedValue();

                if (v62)
                {
                  [(RPCompanionLinkDevice *)self->_peerDeviceInfo setRoomName:v62];
                }

                CFArrayGetTypeID();
                v63 = CFDictionaryGetTypedValue();
                v64 = v63;
                if (v63)
                {
                  v106 = 0u;
                  v107 = 0u;
                  v104 = 0u;
                  v105 = 0u;
                  v65 = v63;
                  v66 = [v65 countByEnumeratingWithState:&v104 objects:v133 count:16];
                  if (v66)
                  {
                    v67 = v66;
                    v68 = *v105;
                    v98 = xidCopy;
                    while (2)
                    {
                      for (i = 0; i != v67; ++i)
                      {
                        if (*v105 != v68)
                        {
                          objc_enumerationMutation(v65);
                        }

                        objc_opt_class();
                        if ((objc_opt_isKindOfClass() & 1) == 0)
                        {

                          xidCopy = v98;
                          goto LABEL_166;
                        }
                      }

                      v67 = [v65 countByEnumeratingWithState:&v104 objects:v133 count:16];
                      xidCopy = v98;
                      if (v67)
                      {
                        continue;
                      }

                      break;
                    }
                  }

                  [(RPEndpoint *)self->_peerDeviceInfo setServiceTypes:v65];
LABEL_166:
                  v14 = v101;
                }

                CFDictionaryGetTypeID();
                v70 = CFDictionaryGetTypedValue();
                if (v70)
                {
                  [(RPCompanionLinkDevice *)self->_peerDeviceInfo setSiriInfo:v70];
                }
              }

              else
              {
                v62 = v61;
              }

              CFStringGetTypeID();
              v15 = CFDictionaryGetTypedValue();

              if (v15)
              {
                [(RPEndpoint *)self->_peerDeviceInfo setSourceVersion:v15];
              }

              if (v14)
              {
                v71 = CFDictionaryGetInt64();
                if (!v132)
                {
                  v72 = v71;
                  v73 = v20;
                  v74 = xidCopy;
                  if ((*&v99 & 0x80000) != 0)
                  {
                    v75 = (v71 >> 33) & 0x80;
                  }

                  else
                  {
                    v75 = 0;
                  }

                  statusFlags = [(RPEndpoint *)self->_peerDeviceInfo statusFlags];
                  v77 = v75 | v72 & 0x10000010180;
                  xidCopy = v74;
                  v20 = v73;
                  [(RPEndpoint *)self->_peerDeviceInfo setStatusFlags:v77 | statusFlags & 0xFFFFFEFFFFFEFE7FLL];
                }
              }

              else if ((self->_statusFlags & 0x2000000000) == 0)
              {
                goto LABEL_184;
              }

              CFStringGetTypeID();
              v78 = CFDictionaryGetTypedValue();
              if (v78)
              {
                [(RPCompanionLinkDevice *)self->_peerDeviceInfo setActiveUserAltDSID:v78];
              }

              v79 = CFDictionaryGetInt64Ranged();
              if (!v132)
              {
                [(RPCompanionLinkDevice *)self->_peerDeviceInfo setDeviceCapabilityFlags:[(RPCompanionLinkDevice *)self->_peerDeviceInfo deviceCapabilityFlags]& 0xFFFFFFFC | v79 & 3];
              }

LABEL_184:
              if (([(RPEndpoint *)self->_peerDeviceInfo statusFlags]& 0x2000000000) != 0)
              {
                v80 = objc_alloc_init(RPIdentity);
                verifiedIdentity = [(RPEndpoint *)self->_peerDeviceInfo verifiedIdentity];
                [(RPIdentity *)v80 setIdentifier:verifiedIdentity];

                model3 = [(RPEndpoint *)self->_peerDeviceInfo model];
                [(RPIdentity *)v80 setModel:model3];

                name = [(RPEndpoint *)self->_peerDeviceInfo name];
                [(RPIdentity *)v80 setName:name];

                [(RPIdentityDaemon *)self->_identityDaemon updateSessionPairedIdentity:v80];
                verifiedIdentity2 = [(RPEndpoint *)self->_peerDeviceInfo verifiedIdentity];
                [(RPEndpoint *)self->_peerDeviceInfo setIdsDeviceIdentifier:verifiedIdentity2];

                verifiedIdentity3 = [(RPEndpoint *)self->_peerDeviceInfo verifiedIdentity];
                [(RPEndpoint *)self->_peerDeviceInfo setIdentifier:verifiedIdentity3];
              }

              if (xidCopy)
              {
                if (self->_internalState == 27)
                {
                  aBlock[0] = MEMORY[0x1E69E9820];
                  aBlock[1] = 3221225472;
                  aBlock[2] = __40__RPConnection__receivedSystemInfo_xid___block_invoke;
                  aBlock[3] = &unk_1E7C92D10;
                  aBlock[4] = self;
                  v103 = xidCopy;
                  v86 = _Block_copy(aBlock);
                  sessionStartHandler = self->_sessionStartHandler;
                  if (sessionStartHandler)
                  {
                    sessionStartHandler[2](sessionStartHandler, v86);
                    v88 = self->_sessionStartHandler;
                    self->_sessionStartHandler = 0;
                  }

                  else
                  {
                    v86[2](v86, 0);
                  }
                }

                else
                {
                  _systeminfo = [(RPConnection *)self _systeminfo];
                  LOBYTE(v97) = 0;
                  [(RPConnection *)self _sendEncryptedResponse:_systeminfo options:0 error:0 xid:xidCopy requestID:@"_systemInfo" highPriority:0 isChatty:v97 replyStartTime:0];
                }
              }

              else if (self->_state == 1)
              {
                peerUpdatedHandler = self->_peerUpdatedHandler;
                if (peerUpdatedHandler)
                {
                  peerUpdatedHandler[2]();
                }
              }

              proxyDeviceUpdateHandler = [(RPConnection *)self proxyDeviceUpdateHandler];
              v92 = proxyDeviceUpdateHandler;
              if (v14 && proxyDeviceUpdateHandler)
              {
                (*(proxyDeviceUpdateHandler + 16))(proxyDeviceUpdateHandler);
              }

              v93 = self->_ucat;
              if (v93->var0 > 10)
              {
                goto LABEL_203;
              }

              if (v93->var0 == -1)
              {
                if (!_LogCategory_Initialize())
                {
                  goto LABEL_203;
                }

                v93 = self->_ucat;
              }

              v94 = [(RPConnection *)self descriptionWithLevel:10];
              LogPrintF(v93, "[RPConnection _receivedSystemInfo:xid:]", 10, "Received peerDeviceInfo for connection: %@", v94);

LABEL_203:
              v38 = 1;
              goto LABEL_204;
            }

LABEL_145:
            v108 = 0;
            v109 = 0;
            v110 = 0;
            goto LABEL_146;
          }
        }

        else
        {
          v114 = 0;
          v115 = 0;
          v116 = 0;
        }

        v111 = 0;
        v112 = 0;
        v113 = 0;
        goto LABEL_145;
      }
    }

    else
    {
      v129 = 0;
      v130 = 0;
      v131 = 0;
    }

    RPStringToOperatingSystemVersion(v47, &v127);
    v50 = self->_peerDeviceInfo;
    v125 = v127;
    v51 = v128;
    goto LABEL_134;
  }

  v34 = self->_ucat;
  if (v34->var0 <= 90)
  {
    if (v34->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_88;
      }

      v34 = self->_ucat;
    }

    LogPrintF(v34, "[RPConnection _receivedSystemInfo:xid:]", 90, "### Rejecting connection to self");
  }

LABEL_88:
  [(CUBonjourDevice *)self->_bonjourPeerDevice reconfirm];
  v38 = 0;
LABEL_204:

  return v38;
}

void __40__RPConnection__receivedSystemInfo_xid___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  if (v8)
  {
    v3 = 0;
  }

  else
  {
    v3 = [*(a1 + 32) _systeminfo];
  }

  v4 = *(a1 + 32);
  v5 = v4[37];
  if (*v5 <= 10)
  {
    if (*v5 != -1)
    {
LABEL_6:
      LogPrintF(v5, "[RPConnection _receivedSystemInfo:xid:]_block_invoke", 10, "Sending system info: %@", v3);
      v4 = *(a1 + 32);
      goto LABEL_8;
    }

    v6 = _LogCategory_Initialize();
    v4 = *(a1 + 32);
    if (v6)
    {
      v5 = v4[37];
      goto LABEL_6;
    }
  }

LABEL_8:
  LOBYTE(v7) = 0;
  [v4 _sendEncryptedResponse:v3 options:0 error:v8 xid:*(a1 + 40) requestID:@"_systemInfo" highPriority:0 isChatty:v7 replyStartTime:0];
  *(*(a1 + 32) + 140) = 1;
  [*(a1 + 32) _run];
}

- (id)_systeminfo
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  statusFlags = self->_statusFlags;
  v5 = statusFlags & 0x50000AE000;
  accountAltDSID = [(RPEndpoint *)self->_localDeviceInfo accountAltDSID];
  v7 = accountAltDSID;
  if ((statusFlags & 0x50000AE000) != 0 && accountAltDSID != 0)
  {
    [v3 setObject:accountAltDSID forKeyedSubscript:@"_accAltDSID"];
  }

  accountID = [(RPEndpoint *)self->_localDeviceInfo accountID];

  if (v5)
  {
    v10 = accountID == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    [v3 setObject:accountID forKeyedSubscript:@"_accID"];
  }

  v11 = self->_appID;

  if (v11)
  {
    [v3 setObject:v11 forKeyedSubscript:@"_appID"];
  }

  v12 = self->_appInfoSelf;

  if (v12)
  {
    [v3 setObject:v12 forKeyedSubscript:@"_appInfo"];
  }

  v63 = 0;
  RPBonjourFlagsUpdateWithRPCompanionLinkFlags(&v63, [(RPCompanionLinkDevice *)self->_localDeviceInfo flags]);
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v63];
  [v3 setObject:v13 forKeyedSubscript:@"_bf"];

  if (!v5 && (self->_statusFlags & 0x2000000000) == 0)
  {
    p_isa = &v12->super.isa;
    goto LABEL_31;
  }

  p_isa = self->_serviceType;

  if (p_isa)
  {
    [v3 setObject:p_isa forKeyedSubscript:@"_clSrv"];
  }

  ucat = self->_ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_24;
      }

      ucat = self->_ucat;
    }

    LogPrintF(ucat, "[RPConnection _systeminfo]", 30, "Sending client service type %@\n", self->_serviceType);
  }

LABEL_24:
  if (v5 || (self->_statusFlags & 0x2000000000) != 0)
  {
    deviceCapabilityFlags = [(RPCompanionLinkDevice *)self->_localDeviceInfo deviceCapabilityFlags];
    if (deviceCapabilityFlags)
    {
      v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:deviceCapabilityFlags];
      [v3 setObject:v18 forKeyedSubscript:@"_dCapF"];
    }

    if (v5)
    {
      flags = [(RPCompanionLinkDevice *)self->_localDeviceInfo flags];
      v14 = flags & 0x280;
      if ((flags & 0x280) != 0)
      {
        v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v14];
        [v3 setObject:v20 forKeyedSubscript:@"_clFl"];
      }
    }
  }

LABEL_31:
  if ((self->_controlFlags & 0x200) != 0)
  {
    0x200 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_controlFlags & 0x200];
    [v3 setObject:0x200 forKeyedSubscript:@"_cf"];
  }

  if (v5)
  {
    deviceColor = [(RPCompanionLinkDevice *)self->_localDeviceInfo deviceColor];

    if (!deviceColor)
    {
      p_isa = 0;
      if ((statusFlags & 0x80000) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_37;
    }

    [v3 setObject:deviceColor forKeyedSubscript:@"_dC"];
    p_isa = deviceColor;
  }

  if ((statusFlags & 0x80000) == 0)
  {
    goto LABEL_42;
  }

LABEL_37:
  role = [(RPCompanionLinkDevice *)self->_localDeviceInfo role];

  if (role)
  {
    [v3 setObject:role forKeyedSubscript:@"_forcedRole"];
    p_isa = role;
  }

  else
  {
    p_isa = 0;
  }

LABEL_42:
  if (v5)
  {
    homeKitIdentifier = [(RPCompanionLinkDevice *)self->_localDeviceInfo homeKitIdentifier];

    if (homeKitIdentifier)
    {
      [v3 setObject:homeKitIdentifier forKeyedSubscript:@"_hkID"];
    }

    homeKitUserIdentifiers = [(RPEndpoint *)self->_localDeviceInfo homeKitUserIdentifiers];

    if (homeKitUserIdentifiers)
    {
      homeKitUserIdentifiers2 = [(RPEndpoint *)self->_localDeviceInfo homeKitUserIdentifiers];
      [v3 setObject:homeKitUserIdentifiers2 forKeyedSubscript:@"_hkUID"];
    }

    if (self->_btPipe)
    {
      DeviceClass = GestaltGetDeviceClass();
      v28 = @"BTPipe-Phone";
      if (DeviceClass == 6)
      {
        v28 = @"BTPipe-Watch";
      }

      p_isa = v28;

      goto LABEL_52;
    }

    p_isa = [(RPEndpoint *)self->_localDeviceInfo identifier];

    if (p_isa)
    {
LABEL_52:
      [v3 setObject:p_isa forKeyedSubscript:@"_i"];
    }
  }

  if ((statusFlags & 0x80000) != 0 && self->_pairVerifyCompleted && self->_pairVerifyIdentityType != 2)
  {
    v31 = self->_ucat;
    if (v31->var0 <= 30)
    {
      if (v31->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_68;
        }

        v31 = self->_ucat;
      }

      LogPrintF(v31, "[RPConnection _systeminfo]", 30, "Send identity\n");
      goto LABEL_68;
    }

    goto LABEL_68;
  }

  if ((self->_statusFlags & 0x2000) != 0)
  {
    v29 = GestaltGetDeviceClass();
    if (!RPDeviceIsCommunal(v29))
    {
      v30 = self->_ucat;
      if (v30->var0 <= 30)
      {
        if (v30->var0 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_68;
          }

          v30 = self->_ucat;
        }

        LogPrintF(v30, "[RPConnection _systeminfo]", 30, "Send SharedHome identity\n");
      }

LABEL_68:
      [(RPIdentityDaemon *)self->_identityDaemon addSelfIdentityInfoToMessage:v3 flags:0];
    }
  }

  if (v5)
  {
    idsDeviceIdentifier = [(RPEndpoint *)self->_localDeviceInfo idsDeviceIdentifier];

    if (idsDeviceIdentifier)
    {
      [v3 setObject:idsDeviceIdentifier forKeyedSubscript:@"_idsID"];
    }

    idsCorrelationIdentifier = [(RPEndpoint *)self->_localDeviceInfo idsCorrelationIdentifier];

    if (idsCorrelationIdentifier)
    {
      [v3 setObject:idsCorrelationIdentifier forKeyedSubscript:@"_idsCID"];
    }

    listeningPort = [(RPCompanionLinkDevice *)self->_localDeviceInfo listeningPort];
    if (listeningPort)
    {
      v35 = [MEMORY[0x1E696AD98] numberWithInt:listeningPort];
      [v3 setObject:v35 forKeyedSubscript:@"_lP"];
    }

    mediaRemoteIdentifier = [(RPEndpoint *)self->_localDeviceInfo mediaRemoteIdentifier];

    if (mediaRemoteIdentifier)
    {
      [v3 setObject:mediaRemoteIdentifier forKeyedSubscript:@"_mrID"];
    }

    mediaRouteIdentifier = [(RPEndpoint *)self->_localDeviceInfo mediaRouteIdentifier];

    if (mediaRouteIdentifier)
    {
      [v3 setObject:mediaRouteIdentifier forKeyedSubscript:@"_mRtID"];
    }

    mediaSystemIdentifier = [(RPCompanionLinkDevice *)self->_localDeviceInfo mediaSystemIdentifier];

    if (mediaSystemIdentifier)
    {
      [v3 setObject:mediaSystemIdentifier forKeyedSubscript:@"_msId"];
    }

    mediaSystemName = [(RPCompanionLinkDevice *)self->_localDeviceInfo mediaSystemName];

    if (mediaSystemName)
    {
      [v3 setObject:mediaSystemName forKeyedSubscript:@"_msNm"];
    }

    mediaSystemRole = [(RPCompanionLinkDevice *)self->_localDeviceInfo mediaSystemRole];
    if (mediaSystemRole)
    {
      v41 = [MEMORY[0x1E696AD98] numberWithInt:mediaSystemRole];
      [v3 setObject:v41 forKeyedSubscript:@"_msRo"];
    }

    mediaSystemState = [(RPCompanionLinkDevice *)self->_localDeviceInfo mediaSystemState];
    if (mediaSystemState)
    {
      v43 = [MEMORY[0x1E696AD98] numberWithInt:mediaSystemState];
      [v3 setObject:v43 forKeyedSubscript:@"_msSt"];
    }

    p_isa = [(RPCompanionLinkDevice *)self->_localDeviceInfo activeUserAltDSID];

    if (p_isa)
    {
      [v3 setObject:p_isa forKeyedSubscript:@"_aaltDSID"];
    }
  }

  v44 = [v3 objectForKeyedSubscript:@"model"];

  if (!v44)
  {
    model = [(RPEndpoint *)self->_localDeviceInfo model];

    if (model)
    {
      [v3 setObject:model forKeyedSubscript:@"model"];
      p_isa = model;
    }

    else
    {
      p_isa = 0;
    }
  }

  v46 = [v3 objectForKeyedSubscript:@"name"];

  if (!v46)
  {
    v47 = GestaltCopyAnswer();

    if (v47)
    {
      [v3 setObject:v47 forKeyedSubscript:@"name"];
      p_isa = v47;
    }

    else
    {
      p_isa = 0;
    }
  }

  localDeviceInfo = self->_localDeviceInfo;
  if (v5)
  {
    if (localDeviceInfo)
    {
      objc_msgSend_operatingSystemVersion(localDeviceInfo);
      localDeviceInfo = self->_localDeviceInfo;
      if (v60 >= 1)
      {
        if (localDeviceInfo)
        {
          objc_msgSend_operatingSystemVersion(localDeviceInfo);
        }

        else
        {
          memset(v59, 0, sizeof(v59));
        }

        v49 = RPNSOperatingSystemVersionToString(v59);
        if (v49)
        {
          [v3 setObject:v49 forKeyedSubscript:@"_osV"];
        }

        localDeviceInfo = self->_localDeviceInfo;
      }
    }

    else
    {
      v60 = 0;
      v61 = 0;
      v62 = 0;
    }
  }

  publicIdentifier = [(RPCompanionLinkDevice *)localDeviceInfo publicIdentifier];

  if (publicIdentifier)
  {
    [v3 setObject:publicIdentifier forKeyedSubscript:@"_pubID"];
  }

  sessionPairingIdentifier = [(RPEndpoint *)self->_localDeviceInfo sessionPairingIdentifier];

  if (sessionPairingIdentifier)
  {
    [v3 setObject:sessionPairingIdentifier forKeyedSubscript:@"_spID"];
  }

  if (v5)
  {
    roomName = [(RPCompanionLinkDevice *)self->_localDeviceInfo roomName];

    if (roomName)
    {
      [v3 setObject:roomName forKeyedSubscript:@"_roomName"];
    }

    serviceTypes = [(RPEndpoint *)self->_localDeviceInfo serviceTypes];

    if (serviceTypes)
    {
      [v3 setObject:serviceTypes forKeyedSubscript:@"_stA"];
    }

    sessionPairingIdentifier = [(RPCompanionLinkDevice *)self->_localDeviceInfo siriInfo];

    if (sessionPairingIdentifier)
    {
      [v3 setObject:sessionPairingIdentifier forKeyedSubscript:@"_siriInfo"];
    }
  }

  [v3 setObject:@"715.2" forKeyedSubscript:@"_sv"];
  if (self->_pairVerifyIdentityType == 2)
  {
    v54 = [MEMORY[0x1E696AD98] numberWithInt:{-[RPEndpoint activityLevel](self->_localDeviceInfo, "activityLevel")}];
    [v3 setObject:v54 forKeyedSubscript:@"_actLvl"];
  }

  if (v5)
  {
    v55 = [(RPEndpoint *)self->_localDeviceInfo statusFlags]& 0x10000010100;
    if (v55)
    {
      v56 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v55];
      [v3 setObject:v56 forKeyedSubscript:@"_sf"];
    }
  }

  if (self->_pairVerifyCompleted && (self->_controlFlags & 0x200) == 0)
  {
    [(RPConnection *)self _identityProofsAdd:v3 update:0];
  }

  v57 = v3;

  return v57;
}

- (id)_allowedMACAddressesForMCFeature:(id)feature
{
  v22 = *MEMORY[0x1E69E9840];
  featureCopy = feature;
  v5 = [getMCProfileConnectionClass(featureCopy v4)];
  v6 = [v5 effectiveValuesForUnionSetting:featureCopy];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v6 count])
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v17 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [v13 UTF8String] && !TextToHardwareAddress())
          {
            v14 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v16 length:6];
            [v7 addObject:v14];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v10);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_configureForSessionPairing:(id)pairing
{
  pairingCopy = pairing;
  v5 = self->_identityDaemon;
  if (v5)
  {
    ucat = self->_ucat;
    if (ucat->var0 <= 30)
    {
      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_6;
        }

        ucat = self->_ucat;
      }

      LogPrintF(ucat, "[RPConnection _configureForSessionPairing:]", 30, "Configuring for session pairing\n");
    }

LABEL_6:
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __44__RPConnection__configureForSessionPairing___block_invoke;
    v9[3] = &unk_1E7C93D78;
    v9[4] = v5;
    v9[5] = self;
    [pairingCopy setCopyIdentityHandler:v9];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __44__RPConnection__configureForSessionPairing___block_invoke_2;
    v8[3] = &unk_1E7C93DA0;
    v8[4] = self;
    v8[5] = v5;
    [pairingCopy setFindPeerHandler:v8];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __44__RPConnection__configureForSessionPairing___block_invoke_3;
    v7[3] = &unk_1E7C93DC8;
    v7[4] = self;
    v7[5] = v5;
    [pairingCopy setSavePeerHandler:v7];
  }
}

id __44__RPConnection__configureForSessionPairing___block_invoke(uint64_t a1, char a2, void *a3)
{
  v6 = *(a1 + 32);
  v18 = 0;
  v7 = [v6 identityOfSelfAndReturnError:&v18];
  v8 = v18;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = v7 == 0;
  }

  if (v9)
  {
    v10 = *(*(a1 + 40) + 296);
    if (*v10 > 90)
    {
      goto LABEL_12;
    }

    if (*v10 == -1)
    {
      if (!_LogCategory_Initialize())
      {
LABEL_12:
        if (a3)
        {
          v16 = v8;
          v11 = 0;
          *a3 = v8;
        }

        else
        {
          v11 = 0;
        }

        goto LABEL_15;
      }

      v10 = *(*(a1 + 40) + 296);
    }

    LogPrintF(v10, "[RPConnection _configureForSessionPairing:]_block_invoke", 90, "### Failed to get self identity: %@\n.", v8);
    goto LABEL_12;
  }

  v11 = objc_alloc_init(MEMORY[0x1E69994F0]);
  v12 = [*(a1 + 32) sessionPairingIdentifier];
  [v11 setIdentifier:v12];

  v13 = [v7 deviceIRKData];
  [v11 setAltIRK:v13];

  v14 = [v7 edPKData];
  [v11 setPublicKey:v14];

  if ((a2 & 2) != 0)
  {
    v15 = [v7 edSKData];
    [v11 setSecretKey:v15];

    [v11 rp_setSEPPrivateKey:{objc_msgSend(v7, "sepPrivateKey")}];
  }

LABEL_15:

  return v11;
}

uint64_t __44__RPConnection__configureForSessionPairing___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v42 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = *(*(a1 + 32) + 296);
  if (*v8 <= 30)
  {
    if (*v8 != -1)
    {
LABEL_3:
      LogPrintF(v8, "[RPConnection _configureForSessionPairing:]_block_invoke_2", 30, "Find paired peer handler for peer %@ options %lu\n", v7, a3);
      goto LABEL_5;
    }

    if (_LogCategory_Initialize())
    {
      v8 = *(*(a1 + 32) + 296);
      goto LABEL_3;
    }
  }

LABEL_5:
  v9 = *(a1 + 40);
  v40 = 0;
  v10 = [v9 identitiesOfType:13 error:&v40];
  v11 = v40;
  v12 = v11;
  if (v11)
  {
    if (a4)
    {
      v13 = v11;
      *a4 = v12;
    }
  }

  else
  {
    v14 = [v7 identifier];
    v15 = [v14 UUIDString];

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v16 = v10;
    v17 = [v16 countByEnumeratingWithState:&v36 objects:v41 count:16];
    if (v17)
    {
      v34 = v10;
      v35 = v7;
      v18 = *v37;
      while (2)
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v37 != v18)
          {
            objc_enumerationMutation(v16);
          }

          v20 = *(*(&v36 + 1) + 8 * i);
          v21 = [v20 identifier];
          v22 = [v21 isEqual:v15];

          if (v22)
          {
            v17 = v20;
            goto LABEL_18;
          }
        }

        v17 = [v16 countByEnumeratingWithState:&v36 objects:v41 count:16];
        if (v17)
        {
          continue;
        }

        break;
      }

LABEL_18:
      v10 = v34;
      v7 = v35;
    }

    if (!a4 || v17)
    {
      v29 = [v17 name];
      [0 setName:v29];

      v30 = [v17 model];
      [0 setModel:v30];

      v31 = [v17 edPKData];
      [0 setPublicKey:v31];
    }

    else
    {
      *a4 = RPErrorF(4294960569, "Temporary identity of the peer was not found.", v23, v24, v25, v26, v27, v28, v33);
    }
  }

  return 0;
}

BOOL __44__RPConnection__configureForSessionPairing___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(*(a1 + 32) + 296);
  if (*v6 <= 30)
  {
    if (*v6 != -1)
    {
LABEL_3:
      LogPrintF(v6, "[RPConnection _configureForSessionPairing:]_block_invoke_3", 30, "Save paired peer handler for peer %@ options %lu\n", v5, a3);
      goto LABEL_5;
    }

    if (_LogCategory_Initialize())
    {
      v6 = *(*(a1 + 32) + 296);
      goto LABEL_3;
    }
  }

LABEL_5:
  v7 = [[RPIdentity alloc] initWithPairedPeer:v5 type:13];
  if (v7)
  {
    [*(*(a1 + 32) + 664) setStatusFlags:{objc_msgSend(*(*(a1 + 32) + 664), "statusFlags") | 0x2000000000}];
    v8 = [(RPIdentity *)v7 identifier];
    [*(*(a1 + 32) + 664) setVerifiedIdentity:v8];

    [*(a1 + 40) addSessionPairedIdentity:v7];
  }

  return v7 != 0;
}

- (void)addInUseProcess:(int)process
{
  v4 = RPProcessIDToNameString(*&process);
  inUseProcesses = self->_inUseProcesses;
  v8 = v4;
  if (!inUseProcesses)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v7 = self->_inUseProcesses;
    self->_inUseProcesses = v6;

    v4 = v8;
    inUseProcesses = self->_inUseProcesses;
  }

  [(NSMutableSet *)inUseProcesses addObject:v4];
}

- (BOOL)containsInUseProcess:(int)process
{
  if (!self->_inUseProcesses)
  {
    return 0;
  }

  selfCopy = self;
  v4 = RPProcessIDToNameString(*&process);
  LOBYTE(selfCopy) = [(NSMutableSet *)selfCopy->_inUseProcesses containsObject:v4];

  return selfCopy;
}

- (id)inUseProcessesToString
{
  inUseProcesses = self->_inUseProcesses;
  if (inUseProcesses)
  {
    allObjects = [(NSMutableSet *)inUseProcesses allObjects];
    v4 = [allObjects sortedArrayUsingSelector:sel_caseInsensitiveCompare_];
    v5 = [v4 componentsJoinedByString:{@", "}];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)removeInUseProcess:(int)process
{
  if (self->_inUseProcesses)
  {
    v4 = RPProcessIDToNameString(*&process);
    [(NSMutableSet *)self->_inUseProcesses removeObject:v4];
  }
}

- (void)_receivedHeader:(id *)header encryptedObjectData:(id)data ctx:(id *)ctx
{
  dataCopy = data;
  var0 = header->var0;
  v16 = self->_mainStream;
  if (var0 == 12)
  {
    v17 = self->_highPriorityStream;

    v16 = v17;
  }

  if (v16)
  {
    v43 = 0;
    v18 = [(CUPairingStream *)v16 decryptData:dataCopy aadBytes:header aadLength:4 error:&v43];
    v19 = v43;
    if (v18)
    {
      v20 = OPACKDecodeData();
      if (v20)
      {
        v27 = v20;
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v33 = objc_opt_class();
          v34 = NSStringFromClass(v33);
          v41 = RPErrorF(4294960540, "Bad object type %@", v35, v36, v37, v38, v39, v40, v34);

          v19 = v41;
          goto LABEL_9;
        }

        v28 = [v27 mutableCopy];
        v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(dataCopy, "length")}];
        [v28 setObject:v29 forKeyedSubscript:&unk_1F2EEC710];

        v30 = v28;
        [(RPConnection *)self _receivedObject:v30 ctx:ctx];
      }

      else
      {
        v32 = RPErrorF(0, "OPACK decode failed", v21, v22, v23, v24, v25, v26, v42);
      }
    }
  }

  else
  {
    v19 = RPErrorF(4294960593, "Encryption not setup", v10, v11, v12, v13, v14, v15, v42);
  }

LABEL_9:
  if (v19)
  {
    ucat = self->_ucat;
    if (ucat->var0 <= 90)
    {
      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_14;
        }

        ucat = self->_ucat;
      }

      LogPrintF(ucat, "[RPConnection _receivedHeader:encryptedObjectData:ctx:]", 90, "### Receive encrypted object failed: %{error}\n", v19);
    }
  }

LABEL_14:
}

- (void)_clientPairSetupWithData:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t *a2)
{
  v4 = objc_opt_class();
  NSStringFromClass(v4);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_0_3();
  *a2 = RPErrorF(4294960540, "Bad PairSetup request object type %@", v5, v6, v7, v8, v9, v10, v11);
}

- (uint64_t)_clientPairSetupWithData:(uint64_t *)a3 .cold.2(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  CFStringGetTypeID();
  TypedValue = CFDictionaryGetTypedValue();
  v12 = &stru_1F2ED6FB8;
  if (TypedValue)
  {
    v12 = TypedValue;
  }

  result = RPErrorF(a2, "PairSetup response error: '%@'", v6, v7, v8, v9, v10, v11, v12);
  *a3 = result;
  return result;
}

- (uint64_t)_clientPairSetupCompleted:(uint64_t *)a3 .cold.1(int a1, uint64_t a2, uint64_t *a3)
{
  if (a1 != -1)
  {
    return LogPrintF(a2, "[RPConnection _clientPairSetupCompleted:]", 30, "PairSetup completed client.\n");
  }

  result = _LogCategory_Initialize();
  if (result)
  {
    a2 = *a3;
    return LogPrintF(a2, "[RPConnection _clientPairSetupCompleted:]", 30, "PairSetup completed client.\n");
  }

  return result;
}

- (void)_clientPairVerifyWithData:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t *a2)
{
  v4 = objc_opt_class();
  NSStringFromClass(v4);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_0_3();
  *a2 = RPErrorF(4294960540, "Bad PairVerify request object type %@", v5, v6, v7, v8, v9, v10, v11);
}

- (uint64_t)_serverPairSetupCompleted:(uint64_t)a3 .cold.1(int a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a1 == -1)
  {
    result = _LogCategory_Initialize();
    if (!result)
    {
      return result;
    }

    a2 = *a4;
  }

  v6 = *(a3 + 200);
  if (v6 >= 0xB)
  {
    v7 = "?";
  }

  else
  {
    v7 = off_1E7C94130[v6];
  }

  return LogPrintF(a2, "[RPConnection _serverPairSetupCompleted:]", 30, "PairSetup completed server: %s\n", v7);
}

- (uint64_t)_sendFrameType:(uint64_t)result unencryptedObject:(unsigned __int8)a2 .cold.1(uint64_t result, unsigned __int8 a2)
{
  v2 = *(result + 296);
  if (*v2 <= 90)
  {
    if (*v2 != -1)
    {
LABEL_3:
      v4 = RPFrameTypeToString(a2);
      return LogPrintF(v2, "[RPConnection _sendFrameType:unencryptedObject:]", 90, "### Send %s encode failed: %#m\n", v4);
    }

    v5 = result;
    result = _LogCategory_Initialize();
    if (result)
    {
      v2 = *(v5 + 296);
      goto LABEL_3;
    }
  }

  return result;
}

- (uint64_t)_identityProofsAddWithHomeKitUUID:(uint64_t *)a3 .cold.1(int a1, uint64_t a2, uint64_t *a3)
{
  if (a1 == -1)
  {
    result = _LogCategory_Initialize();
    if (!result)
    {
      return result;
    }

    a2 = *a3;
  }

  return LogPrintF(a2, "[RPConnection _identityProofsAddWithHomeKitUUID:]", 30, "Getting pairing identity using HomeKit UUID\n");
}

@end