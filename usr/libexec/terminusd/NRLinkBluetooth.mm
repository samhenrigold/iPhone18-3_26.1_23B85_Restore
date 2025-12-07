@interface NRLinkBluetooth
- (BOOL)cancelWithReason:(id)reason;
- (BOOL)initializeExternalDeviceLink;
- (BOOL)resume;
- (BOOL)sendControlData:(id)data;
- (BOOL)sendPacketData:(id)data;
- (BOOL)start;
- (BOOL)suspend;
- (id)copyDescriptionInner;
- (id)copyShortDescriptionInner;
- (id)copyStatusString;
- (void)acceptNewFlow:(id)flow fromNexus:(id)nexus completionHandler:(id)handler;
- (void)checkProxyAgentWithForceUpdate:(BOOL)update;
- (void)invalidateIKESessionForClass:(unsigned __int8)class;
- (void)invalidateLink;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)refreshCompanionProxyAgent;
- (void)requestConfigurationForListener:(id)listener session:(id)session sessionConfig:(id)config childConfig:(id)childConfig validateAuthBlock:(id)block responseBlock:(id)responseBlock;
- (void)setPacketReceiver:(id)receiver;
- (void)stream:(id)stream handleEvent:(unint64_t)event;
@end

@implementation NRLinkBluetooth

- (void)setPacketReceiver:(id)receiver
{
  receiverCopy = receiver;
  if (receiverCopy)
  {
    v6 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v8 = _NRCopyLogObjectForNRUUID();
      copyDescription = [(NRLink *)self copyDescription];
      _NRLogWithArgs(v8, 0, "%s%.30s:%-4d %@: Setting IKEv2 packet receiver", ", "[NRLinkBluetooth setPacketReceiver:]"", 10345, copyDescription);
    }

    objc_storeStrong((&self->_ikeSessionPairing + 7), receiver);
    if ([*(&self->_urgentLinkWriteBuffer + 7) count])
    {
      v10 = _NRCopyLogObjectForNRUUID();
      v11 = _NRLogIsLevelEnabled();

      if (v11)
      {
        v12 = _NRCopyLogObjectForNRUUID();
        copyDescription2 = [(NRLink *)self copyDescription];
        _NRLogWithArgs(v12, 1, "%s%.30s:%-4d %@: processing %llu previously received IKE packets", ", "-[NRLinkBluetooth setPacketReceiver:]"", 10349, copyDescription2, [*(&self->_urgentLinkWriteBuffer + 7) count]);
      }
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v14 = *(&self->_urgentLinkWriteBuffer + 7);
    v15 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v23;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v23 != v17)
          {
            objc_enumerationMutation(v14);
          }

          [*(&self->_ikeSessionPairing + 7) receivePacketData:*(*(&v22 + 1) + 8 * i)];
        }

        v16 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v16);
    }

    [*(&self->_urgentLinkWriteBuffer + 7) removeAllObjects];
  }

  else
  {
    v19 = sub_10007CF34();
    v20 = _NRLogIsLevelEnabled();

    if (v20)
    {
      v21 = sub_10007CF34();
      _NRLogWithArgs(v21, 17, "%s called with null receiver", "[NRLinkBluetooth setPacketReceiver:]");
    }
  }
}

- (BOOL)sendPacketData:(id)data
{
  dataCopy = data;
  if (!dataCopy)
  {
    v11 = sub_10007CF34();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v13 = sub_10007CF34();
      _NRLogWithArgs(v13, 17, "%s called with null data", "[NRLinkBluetooth sendPacketData:]");
    }

    goto LABEL_6;
  }

  if (self->super._state == 255)
  {
    v6 = _NRCopyLogObjectForNRUUID();
    v7 = _NRLogIsLevelEnabled();

    if (v7)
    {
      v8 = _NRCopyLogObjectForNRUUID();
      copyDescription = [(NRLink *)self copyDescription];
      _NRLogWithArgs(v8, 16, "%s%.30s:%-4d %@: Asked to send IKEv2 data but cancelled", ", "[NRLinkBluetooth sendPacketData:]"", 10335, copyDescription);
    }

LABEL_6:
    v5 = 0;
    goto LABEL_7;
  }

  v5 = sub_10007D0EC(self, dataCopy);
LABEL_7:

  return v5;
}

- (void)requestConfigurationForListener:(id)listener session:(id)session sessionConfig:(id)config childConfig:(id)childConfig validateAuthBlock:(id)block responseBlock:(id)responseBlock
{
  listenerCopy = listener;
  sessionCopy = session;
  configCopy = config;
  childConfigCopy = childConfig;
  blockCopy = block;
  responseBlockCopy = responseBlock;
  v20 = responseBlockCopy;
  if (!listenerCopy)
  {
    v124 = sub_10007CF34();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_37;
    }

    v126 = sub_10007CF34();
    _NRLogWithArgs(v126, 17, "%s called with null listener");
LABEL_127:

    goto LABEL_37;
  }

  if (!sessionCopy)
  {
    v127 = sub_10007CF34();
    v128 = _NRLogIsLevelEnabled();

    if (!v128)
    {
      goto LABEL_37;
    }

    v126 = sub_10007CF34();
    _NRLogWithArgs(v126, 17, "%s called with null session");
    goto LABEL_127;
  }

  if (!configCopy)
  {
    v129 = sub_10007CF34();
    v130 = _NRLogIsLevelEnabled();

    if (!v130)
    {
      goto LABEL_37;
    }

    v126 = sub_10007CF34();
    _NRLogWithArgs(v126, 17, "%s called with null sessionConfig");
    goto LABEL_127;
  }

  if (!blockCopy)
  {
    v131 = sub_10007CF34();
    v132 = _NRLogIsLevelEnabled();

    if (!v132)
    {
      goto LABEL_37;
    }

    v126 = sub_10007CF34();
    _NRLogWithArgs(v126, 17, "%s called with null validateAuthBlock");
    goto LABEL_127;
  }

  if (!responseBlockCopy)
  {
    v133 = sub_10007CF34();
    v134 = _NRLogIsLevelEnabled();

    if (!v134)
    {
      goto LABEL_37;
    }

    v126 = sub_10007CF34();
    _NRLogWithArgs(v126, 17, "%s called with null responseBlock");
    goto LABEL_127;
  }

  v21 = _NRCopyLogObjectForNRUUID();
  v22 = _NRLogIsLevelEnabled();

  if (v22)
  {
    v23 = _NRCopyLogObjectForNRUUID();
    copyDescription = [(NRLink *)self copyDescription];
    _NRLogWithArgs(v23, 0, "%s%.30s:%-4d %@: Got config request for listener %@ session %@ sessionConfig %@ childConfig %@", ", "[NRLinkBluetooth requestConfigurationForListener:session:sessionConfig:childConfig:validateAuthBlock:responseBlock:]"", 10076, copyDescription, listenerCopy, sessionCopy, configCopy, childConfigCopy);
  }

  if (self->super._state == 255)
  {
    goto LABEL_34;
  }

  localIdentifier = [configCopy localIdentifier];
  identifierType = [localIdentifier identifierType];

  if (identifierType != 11)
  {
    v45 = _NRCopyLogObjectForNRUUID();
    v46 = _NRLogIsLevelEnabled();

    if (v46)
    {
      v42 = _NRCopyLogObjectForNRUUID();
      copyDescription2 = [(NRLink *)self copyDescription];
      localIdentifier2 = [configCopy localIdentifier];
      _NRLogWithArgs(v42, 16, "%s%.30s:%-4d %@: Local identifier has wrong type %zu", ", "-[NRLinkBluetooth requestConfigurationForListener:session:sessionConfig:childConfig:validateAuthBlock:responseBlock:]"", 10090, copyDescription2, [localIdentifier2 identifierType]);
LABEL_31:

      goto LABEL_32;
    }

LABEL_34:
    v51 = 0;
    goto LABEL_35;
  }

  remoteIdentifier = [configCopy remoteIdentifier];
  identifierType2 = [remoteIdentifier identifierType];

  if (identifierType2 != 11)
  {
    v49 = _NRCopyLogObjectForNRUUID();
    v50 = _NRLogIsLevelEnabled();

    if (v50)
    {
      v42 = _NRCopyLogObjectForNRUUID();
      copyDescription2 = [(NRLink *)self copyDescription];
      localIdentifier2 = [configCopy remoteIdentifier];
      _NRLogWithArgs(v42, 16, "%s%.30s:%-4d %@: Remote identifier has wrong type %zu", ", "-[NRLinkBluetooth requestConfigurationForListener:session:sessionConfig:childConfig:validateAuthBlock:responseBlock:]"", 10094, copyDescription2, [localIdentifier2 identifierType]);
      goto LABEL_31;
    }

    goto LABEL_34;
  }

  v146 = childConfigCopy;
  nrUUID = [(NRLink *)self nrUUID];
  v145 = sub_100163A30(NRDLocalDevice, nrUUID);

  localIdentifier3 = [configCopy localIdentifier];
  remoteIdentifier2 = [configCopy remoteIdentifier];
  v32 = [localIdentifier3 isEqual:remoteIdentifier2];

  v33 = &qword_100229000;
  v144 = blockCopy;
  v34 = &qword_100229000;
  if (v32)
  {
    goto LABEL_20;
  }

  localIdentifier4 = [configCopy localIdentifier];
  if (qword_1002292E8 != -1)
  {
    dispatch_once(&qword_1002292E8, &stru_1001FC558);
  }

  v36 = qword_1002292E0;
  if ([localIdentifier4 isEqual:v36])
  {
    goto LABEL_19;
  }

  [configCopy localIdentifier];
  v37 = v143 = localIdentifier4;
  if (qword_1002292F8 != -1)
  {
    dispatch_once(&qword_1002292F8, &stru_1001FC578);
  }

  v38 = qword_1002292F0;
  if ([v37 isEqual:v38])
  {

    localIdentifier4 = v143;
LABEL_19:

    v33 = &qword_100229000;
    goto LABEL_20;
  }

  [configCopy localIdentifier];
  v78 = v141 = listenerCopy;
  v79 = sub_100145B5C();
  v142 = [v78 isEqual:v79];

  v34 = &qword_100229000;
  listenerCopy = v141;

  v33 = &qword_100229000;
  if ((v142 & 1) == 0)
  {
    v80 = _NRCopyLogObjectForNRUUID();
    v81 = _NRLogIsLevelEnabled();

    if (v81)
    {
      v82 = _NRCopyLogObjectForNRUUID();
      copyDescription3 = [(NRLink *)self copyDescription];
      localIdentifier5 = [configCopy localIdentifier];
      remoteIdentifier3 = [configCopy remoteIdentifier];
      _NRLogWithArgs(v82, 16, "%s%.30s:%-4d %@: Local identifier %@ does not match remote identifier %@", ", "[NRLinkBluetooth requestConfigurationForListener:session:sessionConfig:childConfig:validateAuthBlock:responseBlock:]"", 10106, copyDescription3, localIdentifier5, remoteIdentifier3);
    }

    v51 = 0;
    childConfigCopy = v146;
    goto LABEL_115;
  }

LABEL_20:
  localIdentifier6 = [configCopy localIdentifier];
  if (v34[93] != -1)
  {
    dispatch_once(&qword_1002292E8, &stru_1001FC558);
  }

  v40 = v33[92];
  v41 = [localIdentifier6 isEqual:v40];

  childConfigCopy = v146;
  if (v41)
  {
    blockCopy = v144;
    v42 = v145;
    if (v145)
    {
      v43 = v145[18];
    }

    else
    {
      v43 = 0;
    }

    v44 = v43;
    if ([v44 usesTLS])
    {

LABEL_46:
      v57 = nr_absolute_time();
      v58 = *(&self->_counterForDataStallRemediation + 7);
      if (v58)
      {
        *(v58 + 56) = v57;
        v59 = *(&self->_counterForDataStallRemediation + 7);
        if (v59)
        {
          ++v59[10];
        }
      }

      else
      {
        v59 = 0;
      }

      selfCopy2 = self;
      v61 = sessionCopy;
      v62 = configCopy;
      v63 = 4;
      goto LABEL_50;
    }

    if (v146)
    {
      goto LABEL_46;
    }

    [(NRLink *)self reportEvent:3024 detailsFormat:@"ClassD %@", sessionCopy];
    goto LABEL_32;
  }

  localIdentifier7 = [configCopy localIdentifier];
  if (qword_1002292F8 != -1)
  {
    dispatch_once(&qword_1002292F8, &stru_1001FC578);
  }

  v53 = qword_1002292F0;
  v54 = [localIdentifier7 isEqual:v53];

  if (v54)
  {
    blockCopy = v144;
    v42 = v145;
    if (v145)
    {
      v55 = v145[18];
    }

    else
    {
      v55 = 0;
    }

    v56 = v55;
    if ([v56 usesTLS])
    {

LABEL_73:
      objc_opt_self();
      if (qword_1002294C8 != -1)
      {
        dispatch_once(&qword_1002294C8, &stru_1001FD250);
      }

      v86 = qword_1002294C0;
      v87 = v86;
      if (v86)
      {
        dispatch_assert_queue_V2(*(v86 + 2));
        if ((v87[10] & 1) == 0)
        {
          v87[10] = 1;
          if (v87[8] == 4)
          {
            sub_100181020(v87);
            if (v87[9] == 1)
            {
              v87[8] = 3;
              sub_100181284(v87);
            }
          }
        }

        if ((v87[8] & 0xFD) == 1)
        {
          v88 = nr_absolute_time();
          v89 = *(&self->_counterForDataStallRemediation + 7);
          if (v89)
          {
            *(v89 + 40) = v88;
            v90 = *(&self->_counterForDataStallRemediation + 7);
            if (v90)
            {
              ++v90[9];
            }
          }

          else
          {
            v90 = 0;
          }

          v51 = sub_1000828DC(self, sessionCopy, configCopy, 3, v144);

          goto LABEL_51;
        }
      }

      [(NRLink *)self reportEvent:3020 detailsFormat:@"ClassC %@", sessionCopy];

      v51 = 0;
      childConfigCopy = v146;
LABEL_33:

      goto LABEL_35;
    }

    if (v146)
    {
      goto LABEL_73;
    }

    [(NRLink *)self reportEvent:3024 detailsFormat:@"ClassC %@", sessionCopy];
LABEL_32:
    v51 = 0;
    goto LABEL_33;
  }

  localIdentifier8 = [configCopy localIdentifier];
  if (qword_100229308 != -1)
  {
    dispatch_once(&qword_100229308, &stru_1001FC598);
  }

  v69 = qword_100229300;
  v70 = [localIdentifier8 isEqual:v69];

  if (v70)
  {
    v42 = v145;
    if (v145)
    {
      v71 = v145[18];
    }

    else
    {
      v71 = 0;
    }

    blockCopy = v144;
    v72 = v71;
    if ([v72 usesTLS])
    {
    }

    else
    {

      if (!v146)
      {
        [(NRLink *)self reportEvent:3024 detailsFormat:@"ClassA %@", sessionCopy];
        goto LABEL_32;
      }
    }

    selfCopy2 = self;
    v61 = sessionCopy;
    v62 = configCopy;
    v63 = 1;
LABEL_50:
    v51 = sub_1000828DC(selfCopy2, v61, v62, v63, blockCopy);
LABEL_51:
    v64 = 0;
    v65 = 0;
    v66 = 0;
    goto LABEL_52;
  }

  localIdentifier9 = [configCopy localIdentifier];
  v92 = sub_100145C94();
  v93 = [localIdentifier9 isEqual:v92];

  if (v93)
  {
    v94 = nr_absolute_time();
    v95 = *(&self->_counterForDataStallRemediation + 7);
    if (v95)
    {
      *(v95 + 120) = v94;
      v96 = *(&self->_counterForDataStallRemediation + 7);
      v97 = v145;
      if (v96)
      {
        ++v96[14];
      }
    }

    else
    {
      v96 = 0;
      v97 = v145;
    }

    objc_storeStrong((&self->_ikeSessionClassA + 7), session);
    sub_100083088(self);
    v98 = [[NEIKEv2AuthenticationProtocol alloc] initWithMethod:2];
    v99 = sub_100145C94();
    v51 = sub_1001472F0(0, v99, v98);

    v100 = sub_100165598(v97);
    [v51 setSharedSecret:v100];

    sharedSecret = [v51 sharedSecret];

    v102 = sub_10007CF34();
    if (!sharedSecret)
    {
      v139 = _NRLogIsLevelEnabled();

      if (v139)
      {
        v140 = sub_10007CF34();
        _NRLogWithArgs(v140, 17, "Missing out of band key for %@, %@", v145, self);
      }

      childConfigCopy = v146;
      goto LABEL_115;
    }

    v103 = _NRLogIsLevelEnabled();

    if (v103)
    {
      v104 = sub_10007CF34();
      _NRLogWithArgs(v104, 0, "%s%.30s:%-4d Receiving session for pairing with OOBK", ", "[NRLinkBluetooth requestConfigurationForListener:session:sessionConfig:childConfig:validateAuthBlock:responseBlock:]"", 10166);
    }

    v66 = 0;
    v64 = 1;
    v65 = 1;
  }

  else
  {
    localIdentifier10 = [configCopy localIdentifier];
    v109 = sub_100145BF8();
    v110 = [localIdentifier10 isEqual:v109];

    if (!v110)
    {
      v119 = _NRCopyLogObjectForNRUUID();
      v120 = _NRLogIsLevelEnabled();

      if (v120)
      {
        v121 = _NRCopyLogObjectForNRUUID();
        copyDescription4 = [(NRLink *)self copyDescription];
        localIdentifier11 = [configCopy localIdentifier];
        _NRLogWithArgs(v121, 16, "%s%.30s:%-4d %@: Unrecognized IKEv2 identifier %@", ", "[NRLinkBluetooth requestConfigurationForListener:session:sessionConfig:childConfig:validateAuthBlock:responseBlock:]"", 10181, copyDescription4, localIdentifier11);
      }

      v51 = 0;
      goto LABEL_115;
    }

    v111 = nr_absolute_time();
    v112 = *(&self->_counterForDataStallRemediation + 7);
    if (v112)
    {
      *(v112 + 120) = v111;
      v113 = *(&self->_counterForDataStallRemediation + 7);
      if (v113)
      {
        ++v113[14];
      }
    }

    else
    {
      v113 = 0;
    }

    objc_storeStrong((&self->_ikeSessionClassA + 7), session);
    sub_100083088(self);
    v114 = [[NEIKEv2AuthenticationProtocol alloc] initWithNonStandardDigitalSignature:2];
    v115 = sub_100145BF8();
    v51 = sub_1001472F0(0, v115, v114);

    v116 = sub_10007CF34();
    v117 = _NRLogIsLevelEnabled();

    if (v117)
    {
      v118 = sub_10007CF34();
      _NRLogWithArgs(v118, 0, "%s%.30s:%-4d Receiving session for pairing from IDS", ", "[NRLinkBluetooth requestConfigurationForListener:session:sessionConfig:childConfig:validateAuthBlock:responseBlock:]"", 10179);
    }

    v65 = 0;
    v64 = 1;
    v66 = 1;
  }

LABEL_52:
  if (!self->super._virtualInterface)
  {
    v135 = _NRCopyLogObjectForNRUUID();
    v136 = _NRLogIsLevelEnabled();

    if (v136)
    {
      v137 = _NRCopyLogObjectForNRUUID();
      copyDescription5 = [(NRLink *)self copyDescription];
      _NRLogWithArgs(v137, 17, "%@: virtualInterface is NULL", copyDescription5);
    }

    childConfigCopy = v146;
LABEL_115:
    blockCopy = v144;
    v42 = v145;
    goto LABEL_33;
  }

  childConfigCopy = v146;
  if (v51)
  {
    if (v65)
    {
      nrUUID = self->super._nrUUID;
      v152[0] = _NSConcreteStackBlock;
      v152[1] = 3221225472;
      v152[2] = sub_1000835D4;
      v152[3] = &unk_1001FB178;
      v152[4] = self;
      v51 = v51;
      v153 = v51;
      v155 = v20;
      v154 = v146;
      sub_10016D738(NRDLocalDevice, nrUUID, 1, 0, v152);
    }

    else if (v66)
    {
      v73 = _NRCopyLogObjectForNRUUID();
      v74 = _NRLogIsLevelEnabled();

      if (v74)
      {
        v75 = _NRCopyLogObjectForNRUUID();
        copyDescription6 = [(NRLink *)self copyDescription];
        _NRLogWithArgs(v75, 0, "%s%.30s:%-4d %@: Responder %@ querying IDS keys for pairing", ", "[NRLinkBluetooth requestConfigurationForListener:session:sessionConfig:childConfig:validateAuthBlock:responseBlock:]"", 10248, copyDescription6, sessionCopy);
      }

      v77 = self->super._nrUUID;
      v147[0] = _NSConcreteStackBlock;
      v147[1] = 3221225472;
      v147[2] = sub_1000838F4;
      v147[3] = &unk_1001FB1A0;
      v147[4] = self;
      v151 = v20;
      v148 = sessionCopy;
      v51 = v51;
      v149 = v51;
      v150 = v146;
      sub_10016E0BC(NRDLocalDevice, v77, 4, v147);
    }

    else
    {
      v105 = sub_100146D34(1, 1);
      virtualInterface = [(NRLink *)self virtualInterface];
      if (![(NRLink *)self hasCompanionDatapath])
      {

        v105 = 0;
        virtualInterface = 0;
      }

      if (v64)
      {
        v107 = 0;
      }

      else
      {
        v107 = virtualInterface;
      }

      (v20)[2](v20, v51, v105, v107);
    }

    blockCopy = v144;
    goto LABEL_36;
  }

  blockCopy = v144;
LABEL_35:
  v20[2](v20, 0, 0, 0);
LABEL_36:

LABEL_37:
}

- (BOOL)sendControlData:(id)data
{
  dataCopy = data;
  if (dataCopy)
  {
    v5 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:50702 notifyData:dataCopy];
    v6 = v5 != 0;
    if (v5)
    {
      if (self)
      {
        ++*(&self->_handledUrgentLinkWriteBufferBytes + 3);
      }

      objc_initWeak(&location, self);
      v7 = *(&self->_ikeListener + 7);
      v20 = v5;
      v8 = [NSArray arrayWithObjects:&v20 count:1];
      queue = [(NRLink *)self queue];
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_10008E814;
      v17[3] = &unk_1001FC018;
      objc_copyWeak(&v18, &location);
      [v7 sendPrivateNotifies:v8 maxRetries:10 retryIntervalInMilliseconds:10000 callbackQueue:queue callback:v17];

      objc_destroyWeak(&v18);
      objc_destroyWeak(&location);
    }

    else
    {
      v14 = sub_10007CF34();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v16 = sub_10007CF34();
        _NRLogWithArgs(v16, 17, "NEIKEv2PrivateNotify init %u %@ failed", 50702, dataCopy);
      }
    }
  }

  else
  {
    v11 = sub_10007CF34();
    v12 = _NRLogIsLevelEnabled();

    if (v12)
    {
      v13 = sub_10007CF34();
      _NRLogWithArgs(v13, 17, "%s called with null data", "[NRLinkBluetooth sendControlData:]");
    }

    v6 = 0;
  }

  return v6;
}

- (void)acceptNewFlow:(id)flow fromNexus:(id)nexus completionHandler:(id)handler
{
  handlerCopy = handler;
  v6 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v8 = _NRCopyLogObjectForNRUUID();
    copyDescription = [(NRLink *)self copyDescription];
    _NRLogWithArgs(v8, 1, "%s%.30s:%-4d %@: oh boy got a flow", ", "[NRLinkBluetooth acceptNewFlow:fromNexus:completionHandler:]"", 7988, copyDescription);
  }

  handlerCopy[2](handlerCopy, 0);
}

- (void)checkProxyAgentWithForceUpdate:(BOOL)update
{
  v18.receiver = self;
  v18.super_class = NRLinkBluetooth;
  [(NRLink *)&v18 checkProxyAgentWithForceUpdate:update];
  shoesProxyAgentRegistration = [(NRLink *)self shoesProxyAgentRegistration];
  if (shoesProxyAgentRegistration || ([(NRLink *)self publishedMasqueProxyConfig], (shoesProxyAgentRegistration = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = shoesProxyAgentRegistration;
    state = [(NRLink *)self state];

    if (state == 8)
    {
      if ([(NRLink *)self shouldCreateCompanionProxyAgent])
      {
        companionProxyAgent = self->super._companionProxyAgent;
        if (!companionProxyAgent)
        {
          interfaceName = [*(&self->_linkOutgoingData + 7) interfaceName];
          if (![(NRLink *)self hasCompanionDatapath])
          {
            [(NRLink *)self virtualInterface];
            v9 = NEVirtualInterfaceCopyName();

            interfaceName = v9;
          }

          if (interfaceName && *(&self->_l2CAPChannel + 7))
          {
            v10 = [NRCompanionProxyAgent alloc];
            queue = [(NRLink *)self queue];
            v12 = sub_100070A9C(&v10->super.isa, queue, interfaceName, *(&self->_l2CAPChannel + 7), self->super._nrUUID);
            v13 = self->super._companionProxyAgent;
            self->super._companionProxyAgent = v12;

            [(NRLink *)self reportEvent:12001];
          }

          companionProxyAgent = self->super._companionProxyAgent;
        }

        if ((sub_100070DD8(&companionProxyAgent->super.isa, self) & 1) == 0)
        {
          v14 = _NRCopyLogObjectForNRUUID();
          IsLevelEnabled = _NRLogIsLevelEnabled();

          if (IsLevelEnabled)
          {
            v16 = _NRCopyLogObjectForNRUUID();
            copyDescription = [(NRLink *)self copyDescription];
            _NRLogWithArgs(v16, 16, "%s%.30s:%-4d %@: failed to register companion agent", ", "[NRLinkBluetooth checkProxyAgentWithForceUpdate:]"", 6350, copyDescription);
          }
        }
      }
    }
  }

  sub_10008EB24(self);
}

- (void)stream:(id)stream handleEvent:(unint64_t)event
{
  streamCopy = stream;
  if ([(NRLink *)self state]!= 255)
  {
    if (event == 16 || event == 8)
    {
      [(NRLinkBluetooth *)self cancelWithReason:@"L2CAP stream event %d", event];
    }

    else if ([streamCopy isEqual:*(&self->_writeContext + 7)])
    {
      sub_10008F50C(self, event);
    }

    else if ([streamCopy isEqual:*(&self->_linkInputStream + 7)] && -[NRLink state](self, "state") != 255)
    {
      if (gNRPacketLoggingEnabled == 1)
      {
        v7 = sub_10007CF34();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (IsLevelEnabled)
        {
          v9 = sub_10007CF34();
          _NRLogWithArgs(v9, 1, "%s%.30s:%-4d received write stream event %u", ", "[NRLinkBluetooth handleWriteStreamEvent:]"", 3494, event);
        }
      }

      if (event == 4)
      {
        if (gNRPacketLoggingEnabled == 1)
        {
          v10 = sub_10007CF34();
          v11 = _NRLogIsLevelEnabled();

          if (v11)
          {
            v12 = sub_10007CF34();
            _NRLogWithArgs(v12, 1, "%s%.30s:%-4d write stream has space available", ", "[NRLinkBluetooth handleWriteStreamEvent:]"", 3498);
          }
        }

        v6 = *(&self->_readContext + 7);
        if (v6)
        {
          (*(v6 + 16))(*(v6 + 24));
        }
      }

      else if (event == 1)
      {
        self->_linkOutputStreamOpen = 1;
      }
    }
  }
}

- (BOOL)initializeExternalDeviceLink
{
  v12.receiver = self;
  v12.super_class = NRLinkBluetooth;
  initializeExternalDeviceLink = [(NRLink *)&v12 initializeExternalDeviceLink];
  if (initializeExternalDeviceLink)
  {
    initializeExternalDeviceLink = sub_100090058(self);
    if (initializeExternalDeviceLink)
    {
      if (sub_100090538(self))
      {
        if (self)
        {
          if (self->super._subtype == 121)
          {
            v4 = 1;
          }

          else
          {
            v4 = 4;
          }
        }

        else
        {
          v4 = 0;
        }

        v5 = sub_10013F0B0([(NRLink *)self virtualInterface], v4);
        v6 = [v5 count];
        v7 = v6 == v4;
        if (v6 == v4)
        {
          sub_100090978(self, v5);
          if (self)
          {
            if (self->_bluetoothChannelPacketized)
            {
              v8 = 3;
            }

            else
            {
              v8 = 1;
            }
          }

          else
          {
            v8 = 1;
          }

          v9 = [NSNumber numberWithInteger:v8];
          sub_100090BF4(self, 0, v9);

          [(NRLink *)self changeStateTo:8];
          linkDelegate = [(NRLink *)self linkDelegate];
          [linkDelegate linkIsReady:self];
        }

        else
        {
          [(NRLinkBluetooth *)self cancelWithReason:@"Failed to setup nexus instance"];
        }

        LOBYTE(initializeExternalDeviceLink) = v7;
      }

      else
      {
        [(NRLinkBluetooth *)self cancelWithReason:@"Failed to setup utun interface"];
        LOBYTE(initializeExternalDeviceLink) = 0;
      }
    }
  }

  return initializeExternalDeviceLink;
}

- (BOOL)resume
{
  if (self->super._state == 255)
  {
    v10 = _NRCopyLogObjectForNRUUID();
    v9 = 1;
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v12 = _NRCopyLogObjectForNRUUID();
      copyDescription = [(NRLink *)self copyDescription];
      _NRLogWithArgs(v12, 1, "%s%.30s:%-4d %@: Already cancelled. Ignoring 'resume'", ", "[NRLinkBluetooth resume]"", 1892, copyDescription);
    }
  }

  else
  {
    v15.receiver = self;
    v15.super_class = NRLinkBluetooth;
    if ([(NRLink *)&v15 resume])
    {
      companionProxyAgent = self->super._companionProxyAgent;
      if (companionProxyAgent)
      {
        if ((sub_100070DD8(&companionProxyAgent->super.isa, self) & 1) == 0)
        {
          v4 = _NRCopyLogObjectForNRUUID();
          v5 = _NRLogIsLevelEnabled();

          if (v5)
          {
            v6 = _NRCopyLogObjectForNRUUID();
            copyDescription2 = [(NRLink *)self copyDescription];
            _NRLogWithArgs(v6, 16, "%s%.30s:%-4d %@: failed to register companion agent", ", "[NRLinkBluetooth resume]"", 1903, copyDescription2);
          }
        }
      }

      [(NRLink *)self changeStateTo:8 details:@"(resume)"];
      sub_10008EA14(self, 0);
      linkDelegate = [(NRLink *)self linkDelegate];
      [linkDelegate linkIsReady:self];

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return v9;
}

- (BOOL)suspend
{
  v17.receiver = self;
  v17.super_class = NRLinkBluetooth;
  [(NRLink *)&v17 suspend];
  if (self->super._state != 255)
  {
    companionProxyAgent = self->super._companionProxyAgent;
    if (companionProxyAgent)
    {
      if ((sub_100070270(companionProxyAgent) & 1) == 0)
      {
        v4 = _NRCopyLogObjectForNRUUID();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (IsLevelEnabled)
        {
          v6 = _NRCopyLogObjectForNRUUID();
          copyDescription = [(NRLink *)self copyDescription];
          _NRLogWithArgs(v6, 16, "%s%.30s:%-4d %@: failed to unregister companion agent", ", "[NRLinkBluetooth suspend]"", 1870, copyDescription);
        }
      }
    }

    if (*(&self->_handledUrgentLinkWriteBufferBytes + 3))
    {
      v8 = _NRCopyLogObjectForNRUUID();
      v9 = _NRLogIsLevelEnabled();

      if (v9)
      {
        v10 = _NRCopyLogObjectForNRUUID();
        copyDescription2 = [(NRLink *)self copyDescription];
        _NRLogWithArgs(v10, 1, "%s%.30s:%-4d %@: Will suspend the link once all the control data is sent", ", "[NRLinkBluetooth suspend]"", 1878, copyDescription2);
      }

      self->_shouldSuspend = 1;
    }

    else
    {
      sub_10008EA14(self, 1);
    }

    [(NRLink *)self changeStateTo:9 details:@"(suspend)"];
    linkDelegate = [(NRLink *)self linkDelegate];
    [linkDelegate linkIsSuspended:self];
    goto LABEL_14;
  }

  v12 = _NRCopyLogObjectForNRUUID();
  v13 = _NRLogIsLevelEnabled();

  if (v13)
  {
    linkDelegate = _NRCopyLogObjectForNRUUID();
    copyDescription3 = [(NRLink *)self copyDescription];
    _NRLogWithArgs(linkDelegate, 1, "%s%.30s:%-4d %@: Already cancelled. Ignoring 'suspend'", ", "[NRLinkBluetooth suspend]"", 1864, copyDescription3);

LABEL_14:
  }

  return 1;
}

- (BOOL)cancelWithReason:(id)reason
{
  reasonCopy = reason;
  if (reasonCopy)
  {
    v41 = &v43;
    v5 = [[NSString alloc] initWithFormat:reasonCopy arguments:&v43];
    if ([(NRLink *)self changeStateTo:255 details:v5])
    {
      if (self)
      {
        v6 = *(&self->_counterForDataStallRemediation + 7);
        if (v6)
        {
          *(v6 + 32) = *(&self->_recvKnownIPv6Hdr_TCP_ECT0 + 7) + *(&self->_sentKnownIPv6Hdr_TCP_ECT0 + 7);
          v6 = *(&self->_counterForDataStallRemediation + 7);
        }

        if (v6)
        {
          *(v6 + 88) = *(&self->_packetsToNexusBK + 7) + *(&self->_packetsToNexus + 7) + *(&self->_packetsToNexusVI + 7) + *(&self->_packetsToNexusVO + 7) + *(&self->_bytesToNexusVO + 7);
          v7 = *(&self->_counterForDataStallRemediation + 7);
          if (v7)
          {
            *(v7 + 96) = *(&self->_bytesFromNexusBK + 7) + *(&self->_bytesFromNexus + 7) + *(&self->_bytesFromNexusVI + 7) + *(&self->_bytesFromNexusVO + 7) + *(&self->_bytesToL2CAP + 7);
          }
        }

        [(NRLink *)self linkTotalReadyTimeInSec];
        v9 = *(&self->_counterForDataStallRemediation + 7);
        if (v9)
        {
          *(v9 + 24) = v8;
        }
      }

      else
      {
        [0 linkTotalReadyTimeInSec];
      }

      linkDelegate = [(NRLink *)self linkDelegate];
      [linkDelegate linkIsUnavailable:self];

      v11 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v13 = _NRCopyLogObjectForNRUUID();
        copyDescription = [(NRLink *)self copyDescription];
        _NRLogWithArgs(v13, 16, "%s%.30s:%-4d %@: Cancelling due to %@, dumping last status:", ", "[NRLinkBluetooth cancelWithReason:]"", 1818, copyDescription, v5);
      }

      v36 = v5;
      copyStatusString = [(NRLinkBluetooth *)self copyStatusString];
      copyDescription4 = [copyStatusString componentsSeparatedByString:@"\n"];
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v16 = [copyDescription4 countByEnumeratingWithState:&v37 objects:v42 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v38;
        do
        {
          for (i = 0; i != v17; i = i + 1)
          {
            if (*v38 != v18)
            {
              objc_enumerationMutation(copyDescription4);
            }

            v20 = *(*(&v37 + 1) + 8 * i);
            v21 = _NRCopyLogObjectForNRUUID();
            v22 = _NRLogIsLevelEnabled();

            if (v22)
            {
              v23 = _NRCopyLogObjectForNRUUID();
              copyDescription2 = [(NRLink *)self copyDescription];
              _NRLogWithArgs(v23, 16, "%s%.30s:%-4d %@: %@", ", "[NRLinkBluetooth cancelWithReason:]"", 1822, copyDescription2, v20);
            }
          }

          v17 = [copyDescription4 countByEnumeratingWithState:&v37 objects:v42 count:16];
        }

        while (v17);
      }

      [(NRLinkBluetooth *)self invalidateLink];
      [*(&self->_counterForDataStallRemediation + 7) submit];
      v28 = _NRCopyLogObjectForNRUUID();
      v29 = _NRLogIsLevelEnabled();

      if (v29)
      {
        v30 = _NRCopyLogObjectForNRUUID();
        copyDescription3 = [(NRLink *)self copyDescription];
        _NRLogWithArgs(v30, 1, "%s%.30s:%-4d %@: Done cancelling", ", "[NRLinkBluetooth cancelWithReason:]"", 1828, copyDescription3);
      }

      v5 = v36;
      v27 = copyStatusString;
      goto LABEL_27;
    }

    v25 = _NRCopyLogObjectForNRUUID();
    v26 = _NRLogIsLevelEnabled();

    if (v26)
    {
      v27 = _NRCopyLogObjectForNRUUID();
      copyDescription4 = [(NRLink *)self copyDescription];
      _NRLogWithArgs(v27, 0, "%s%.30s:%-4d %@: link already cancelled", ", "[NRLinkBluetooth cancelWithReason:]"", 1804, copyDescription4);
LABEL_27:
    }
  }

  else
  {
    v33 = sub_10007CF34();
    v34 = _NRLogIsLevelEnabled();

    if (!v34)
    {
      goto LABEL_29;
    }

    v5 = sub_10007CF34();
    _NRLogWithArgs(v5, 17, "%s called with null reasonFormat", "[NRLinkBluetooth cancelWithReason:]");
  }

LABEL_29:
  return reasonCopy != 0;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  if ([pathCopy isEqualToString:@"hostState"])
  {
    v10 = objectCopy;
    if (qword_100229088 != -1)
    {
      dispatch_once(&qword_100229088, &stru_1001FB1C0);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100229088 != -1)
      {
        dispatch_once(&qword_100229088, &stru_1001FB1C0);
      }

      v11 = qword_100229080;
      hostState = [v10 hostState];
      if (hostState >= 3)
      {
        v13 = [[NSString alloc] initWithFormat:@"Unknown(%lld)", hostState];
      }

      else
      {
        v13 = *(&off_1001FB208 + hostState);
      }

      _NRLogWithArgs(v11, 2, "%s%.30s:%-4d Got notification for keyPath: %@, %@ (%@)", ", "[NRLinkBluetooth observeValueForKeyPath:ofObject:change:context:]"", 1763, pathCopy, v10, v13);
    }

    queue = [(NRLink *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000AD65C;
    block[3] = &unk_1001FD060;
    block[4] = self;
    v17 = v10;
    v15 = v10;
    dispatch_async(queue, block);
  }

  else
  {
    if (qword_100229088 != -1)
    {
      dispatch_once(&qword_100229088, &stru_1001FB1C0);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100229088 != -1)
      {
        dispatch_once(&qword_100229088, &stru_1001FB1C0);
      }

      _NRLogWithArgs(qword_100229080, 17, "Unexpected KVO notification for keyPath: %@", pathCopy);
    }
  }
}

- (void)refreshCompanionProxyAgent
{
  if (self->super._state == 255)
  {
    v4 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v7 = _NRCopyLogObjectForNRUUID();
      copyDescription = [(NRLink *)self copyDescription];
      _NRLogWithArgs(v7, 1, "%s%.30s:%-4d %@: Already cancelled. Ignoring 'refreshCompanionProxyAgent'", ", "[NRLinkBluetooth refreshCompanionProxyAgent]"", 1744, copyDescription);
    }
  }

  else
  {
    companionProxyAgent = self->super._companionProxyAgent;

    sub_100071A14(companionProxyAgent);
  }
}

- (void)invalidateLink
{
  v3 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v5 = _NRCopyLogObjectForNRUUID();
    copyDescription = [(NRLink *)self copyDescription];
    _NRLogWithArgs(v5, 0, "%s%.30s:%-4d %@: Invalidating", ", "[NRLinkBluetooth invalidateLink]"", 1649, copyDescription);
  }

  v91.receiver = self;
  v91.super_class = NRLinkBluetooth;
  [(NRLink *)&v91 invalidateLink];
  v7 = *(&self->_linkInputStreamBufferSize + 7);
  if (v7)
  {
    free(v7);
    *(&self->_linkInputStreamBufferSize + 7) = 0;
  }

  v8 = *(&self->_lastReadNexusOutputActivityCounter + 7);
  if (v8)
  {
    free(v8);
    *(&self->_lastReadNexusOutputActivityCounter + 7) = 0;
  }

  v9 = *(&self->_linkOutputStream + 7);
  if (v9)
  {
    free(v9);
    *(&self->_linkOutputStream + 7) = 0;
  }

  if (self->_addedHostStateObserver)
  {
    v10 = *(&self->_bluetoothUUID + 7);
    peer = [v10 peer];
    [peer removeObserver:self forKeyPath:@"hostState" context:0];

    self->_addedHostStateObserver = 0;
  }

  v12 = *(&self->_nexusOutputRing + 7);
  if (v12)
  {
    if (self->_dNexusInputSourceSuspended)
    {
      self->_dNexusInputSourceSuspended = 0;
      ++*(&self->_nexusGroup + 7);
      if (gNRPacketLoggingEnabled == 1)
      {
        v51 = _NRCopyLogObjectForNRUUID();
        v52 = _NRLogIsLevelEnabled();

        if (v52)
        {
          v53 = _NRCopyLogObjectForNRUUID();
          copyDescription2 = [(NRLink *)self copyDescription];
          _NRLogWithArgs(v53, 1, "%s%.30s:%-4d %@: source-resume: NexusInput", ", "NRLinkResumeNexusInputSource"", 873, copyDescription2);
        }
      }

      dispatch_resume(*(&self->_nexusOutputRing + 7));
      v12 = *(&self->_nexusOutputRing + 7);
    }

    dispatch_source_cancel(v12);
    v13 = *(&self->_nexusOutputRing + 7);
    *(&self->_nexusOutputRing + 7) = 0;
  }

  v14 = *(&self->_dNexusInputSource + 7);
  if (v14)
  {
    if (self->_dNexusOutputSourceSuspended)
    {
      self->_dNexusOutputSourceSuspended = 0;
      ++*(&self->_dNexusInputSourceActivityCounter + 7);
      if (gNRPacketLoggingEnabled == 1)
      {
        v55 = _NRCopyLogObjectForNRUUID();
        v56 = _NRLogIsLevelEnabled();

        if (v56)
        {
          v57 = _NRCopyLogObjectForNRUUID();
          copyDescription3 = [(NRLink *)self copyDescription];
          _NRLogWithArgs(v57, 1, "%s%.30s:%-4d %@: source-resume: NexusOutput", ", "NRLinkResumeNexusOutputSource"", 874, copyDescription3);
        }
      }

      dispatch_resume(*(&self->_dNexusInputSource + 7));
      v14 = *(&self->_dNexusInputSource + 7);
    }

    dispatch_source_cancel(v14);
    v15 = *(&self->_dNexusInputSource + 7);
    *(&self->_dNexusInputSource + 7) = 0;
  }

  if (*(&self->_receivedPrelude + 7))
  {
    if (!*(&self->_dNexusOutputSource + 7))
    {
      os_channel_destroy();
    }

    *(&self->_receivedPrelude + 7) = 0;
  }

  *(&self->_nexusChannel + 7) = 0;
  *(&self->_nexusInputRing + 7) = 0;
  v16 = *(&self->_nexusVIOutputRing + 7);
  if (v16)
  {
    if (self->_dNexusVIInputSourceSuspended)
    {
      self->_dNexusVIInputSourceSuspended = 0;
      ++*(&self->_dNexusVIOutputSource + 7);
      if (gNRPacketLoggingEnabled == 1)
      {
        v59 = _NRCopyLogObjectForNRUUID();
        v60 = _NRLogIsLevelEnabled();

        if (v60)
        {
          v61 = _NRCopyLogObjectForNRUUID();
          copyDescription4 = [(NRLink *)self copyDescription];
          _NRLogWithArgs(v61, 1, "%s%.30s:%-4d %@: source-resume: NexusVIInput", ", "NRLinkResumeNexusVIInputSource"", 877, copyDescription4);
        }
      }

      dispatch_resume(*(&self->_nexusVIOutputRing + 7));
      v16 = *(&self->_nexusVIOutputRing + 7);
    }

    dispatch_source_cancel(v16);
    v17 = *(&self->_nexusVIOutputRing + 7);
    *(&self->_nexusVIOutputRing + 7) = 0;
  }

  v18 = *(&self->_dNexusVIInputSource + 7);
  if (v18)
  {
    if (self->_dNexusVIOutputSourceSuspended)
    {
      self->_dNexusVIOutputSourceSuspended = 0;
      ++*(&self->_dNexusVIInputSourceActivityCounter + 7);
      if (gNRPacketLoggingEnabled == 1)
      {
        v63 = _NRCopyLogObjectForNRUUID();
        v64 = _NRLogIsLevelEnabled();

        if (v64)
        {
          v65 = _NRCopyLogObjectForNRUUID();
          copyDescription5 = [(NRLink *)self copyDescription];
          _NRLogWithArgs(v65, 1, "%s%.30s:%-4d %@: source-resume: NexusVIOutput", ", "NRLinkResumeNexusVIOutputSource"", 878, copyDescription5);
        }
      }

      dispatch_resume(*(&self->_dNexusVIInputSource + 7));
      v18 = *(&self->_dNexusVIInputSource + 7);
    }

    dispatch_source_cancel(v18);
    v19 = *(&self->_dNexusVIInputSource + 7);
    *(&self->_dNexusVIInputSource + 7) = 0;
  }

  if (*(&self->_nexusVIGroup + 7))
  {
    if (!*(&self->_bytesFromL2CAP + 7))
    {
      os_channel_destroy();
    }

    *(&self->_nexusVIGroup + 7) = 0;
  }

  *(&self->_nexusVIChannel + 7) = 0;
  *(&self->_nexusVIInputRing + 7) = 0;
  v20 = *(&self->_nexusVOOutputRing + 7);
  if (v20)
  {
    if (self->_dNexusVOInputSourceSuspended)
    {
      self->_dNexusVOInputSourceSuspended = 0;
      ++*(&self->_dNexusVOOutputSource + 7);
      if (gNRPacketLoggingEnabled == 1)
      {
        v67 = _NRCopyLogObjectForNRUUID();
        v68 = _NRLogIsLevelEnabled();

        if (v68)
        {
          v69 = _NRCopyLogObjectForNRUUID();
          copyDescription6 = [(NRLink *)self copyDescription];
          _NRLogWithArgs(v69, 1, "%s%.30s:%-4d %@: source-resume: NexusVOInput", ", "NRLinkResumeNexusVOInputSource"", 875, copyDescription6);
        }
      }

      dispatch_resume(*(&self->_nexusVOOutputRing + 7));
      v20 = *(&self->_nexusVOOutputRing + 7);
    }

    dispatch_source_cancel(v20);
    v21 = *(&self->_nexusVOOutputRing + 7);
    *(&self->_nexusVOOutputRing + 7) = 0;
  }

  v22 = *(&self->_dNexusVOInputSource + 7);
  if (v22)
  {
    if (self->_dNexusVOOutputSourceSuspended)
    {
      self->_dNexusVOOutputSourceSuspended = 0;
      ++*(&self->_dNexusVOInputSourceActivityCounter + 7);
      if (gNRPacketLoggingEnabled == 1)
      {
        v71 = _NRCopyLogObjectForNRUUID();
        v72 = _NRLogIsLevelEnabled();

        if (v72)
        {
          v73 = _NRCopyLogObjectForNRUUID();
          copyDescription7 = [(NRLink *)self copyDescription];
          _NRLogWithArgs(v73, 1, "%s%.30s:%-4d %@: source-resume: NexusVOOutput", ", "NRLinkResumeNexusVOOutputSource"", 876, copyDescription7);
        }
      }

      dispatch_resume(*(&self->_dNexusVOInputSource + 7));
      v22 = *(&self->_dNexusVOInputSource + 7);
    }

    dispatch_source_cancel(v22);
    v23 = *(&self->_dNexusVOInputSource + 7);
    *(&self->_dNexusVOInputSource + 7) = 0;
  }

  if (*(&self->_nexusVOGroup + 7))
  {
    if (!*(&self->_bytesToNexus + 7))
    {
      os_channel_destroy();
    }

    *(&self->_nexusVOGroup + 7) = 0;
  }

  *(&self->_nexusVOChannel + 7) = 0;
  *(&self->_nexusVOInputRing + 7) = 0;
  v24 = *(&self->_nexusBKOutputRing + 7);
  if (v24)
  {
    if (self->_dNexusBKInputSourceSuspended)
    {
      self->_dNexusBKInputSourceSuspended = 0;
      ++*(&self->_dNexusBKOutputSource + 7);
      if (gNRPacketLoggingEnabled == 1)
      {
        v75 = _NRCopyLogObjectForNRUUID();
        v76 = _NRLogIsLevelEnabled();

        if (v76)
        {
          v77 = _NRCopyLogObjectForNRUUID();
          copyDescription8 = [(NRLink *)self copyDescription];
          _NRLogWithArgs(v77, 1, "%s%.30s:%-4d %@: source-resume: NexusBKInput", ", "NRLinkResumeNexusBKInputSource"", 879, copyDescription8);
        }
      }

      dispatch_resume(*(&self->_nexusBKOutputRing + 7));
      v24 = *(&self->_nexusBKOutputRing + 7);
    }

    dispatch_source_cancel(v24);
    v25 = *(&self->_nexusBKOutputRing + 7);
    *(&self->_nexusBKOutputRing + 7) = 0;
  }

  v26 = *(&self->_dNexusBKInputSource + 7);
  if (v26)
  {
    if (self->_dNexusBKOutputSourceSuspended)
    {
      self->_dNexusBKOutputSourceSuspended = 0;
      ++*(&self->_dNexusBKInputSourceActivityCounter + 7);
      if (gNRPacketLoggingEnabled == 1)
      {
        v79 = _NRCopyLogObjectForNRUUID();
        v80 = _NRLogIsLevelEnabled();

        if (v80)
        {
          v81 = _NRCopyLogObjectForNRUUID();
          copyDescription9 = [(NRLink *)self copyDescription];
          _NRLogWithArgs(v81, 1, "%s%.30s:%-4d %@: source-resume: NexusBKOutput", ", "NRLinkResumeNexusBKOutputSource"", 880, copyDescription9);
        }
      }

      dispatch_resume(*(&self->_dNexusBKInputSource + 7));
      v26 = *(&self->_dNexusBKInputSource + 7);
    }

    dispatch_source_cancel(v26);
    v27 = *(&self->_dNexusBKInputSource + 7);
    *(&self->_dNexusBKInputSource + 7) = 0;
  }

  if (*(&self->_nexusBKGroup + 7))
  {
    if (!*(&self->_bytesToNexusVI + 7))
    {
      os_channel_destroy();
    }

    *(&self->_nexusBKGroup + 7) = 0;
  }

  *(&self->_nexusBKChannel + 7) = 0;
  *(&self->_nexusBKInputRing + 7) = 0;
  v28 = *(&self->_linkOutputRing + 7);
  if (v28)
  {
    if (self->_dLinkInputSourceSuspended)
    {
      self->_dLinkInputSourceSuspended = 0;
      ++*(&self->_dLinkOutputSource + 7);
      if (gNRPacketLoggingEnabled == 1)
      {
        v83 = _NRCopyLogObjectForNRUUID();
        v84 = _NRLogIsLevelEnabled();

        if (v84)
        {
          v85 = _NRCopyLogObjectForNRUUID();
          copyDescription10 = [(NRLink *)self copyDescription];
          _NRLogWithArgs(v85, 1, "%s%.30s:%-4d %@: source-resume: LinkInput", ", "NRLinkResumeLinkInputSource"", 853, copyDescription10);
        }
      }

      dispatch_resume(*(&self->_linkOutputRing + 7));
      v28 = *(&self->_linkOutputRing + 7);
    }

    dispatch_source_cancel(v28);
    v29 = *(&self->_linkOutputRing + 7);
    *(&self->_linkOutputRing + 7) = 0;
  }

  v30 = *(&self->_dLinkInputSource + 7);
  if (v30)
  {
    if (self->_dLinkOutputSourceSuspended)
    {
      self->_dLinkOutputSourceSuspended = 0;
      ++*(&self->_dLinkInputSourceActivityCounter + 7);
      if (gNRPacketLoggingEnabled == 1)
      {
        v87 = _NRCopyLogObjectForNRUUID();
        v88 = _NRLogIsLevelEnabled();

        if (v88)
        {
          v89 = _NRCopyLogObjectForNRUUID();
          copyDescription11 = [(NRLink *)self copyDescription];
          _NRLogWithArgs(v89, 1, "%s%.30s:%-4d %@: source-resume: LinkOutput", ", "NRLinkResumeLinkOutputSource"", 854, copyDescription11);
        }
      }

      dispatch_resume(*(&self->_dLinkInputSource + 7));
      v30 = *(&self->_dLinkInputSource + 7);
    }

    dispatch_source_cancel(v30);
    v31 = *(&self->_dLinkInputSource + 7);
    *(&self->_dLinkInputSource + 7) = 0;
  }

  v32 = *(&self->_lastWrittenUrgentLink + 7);
  if (v32)
  {
    dispatch_source_cancel(v32);
    v33 = *(&self->_lastWrittenUrgentLink + 7);
    *(&self->_lastWrittenUrgentLink + 7) = 0;
  }

  if (*(&self->_pipe + 7))
  {
    [*(&self->_writeContext + 7) close];
    [*(&self->_writeContext + 7) setDelegate:0];
    [*(&self->_linkInputStream + 7) close];
    [*(&self->_linkInputStream + 7) setDelegate:0];
    v34 = *(&self->_pipe + 7);
    *(&self->_pipe + 7) = 0;
  }

  v35 = *(&self->_localPublicClassAKeysEncryptedWithIDS + 7);
  if (v35)
  {
    [v35 cancel];
    v36 = *(&self->_localPublicClassAKeysEncryptedWithIDS + 7);
    *(&self->_localPublicClassAKeysEncryptedWithIDS + 7) = 0;
  }

  *(&self->_writeCounter + 7) = 0;
  *(&self->_linkChannel + 7) = 0;
  *(&self->_linkInputRing + 7) = 0;
  v37 = *(&self->_linkLogToken + 7);
  if (v37)
  {
    free(v37);
    *(&self->_linkLogToken + 7) = 0;
  }

  v38 = *(&self->_ntlLogToken + 7);
  if (v38)
  {
    free(v38);
    *(&self->_ntlLogToken + 7) = 0;
  }

  if (self->super._virtualInterface)
  {
    if (NEVirtualInterfaceGetType() == 1)
    {
      [(NRLink *)self virtualInterface];
      NEVirtualInterfaceInvalidate();
      if ([(NRLink *)self virtualInterface])
      {
        free([(NRLink *)self virtualInterface]);
        [(NRLink *)self setVirtualInterface:0];
      }
    }
  }

  [(NRLink *)self setVirtualInterface:0];
  v39 = *(&self->_linkOutgoingData + 7);
  if (v39)
  {
    [v39 setAvailability:0];
    [*(&self->_linkOutgoingData + 7) cancel];
    v40 = *(&self->_linkOutgoingData + 7);
    *(&self->_linkOutgoingData + 7) = 0;
  }

  v41 = *(&self->_dummyPacketNexus + 7);
  *(&self->_dummyPacketNexus + 7) = 0;

  v42 = *(&self->_bluetoothUUID + 7);
  *(&self->_bluetoothUUID + 7) = 0;

  sub_1000AE684(self, 0);
  sub_1000AF784(self, 0);
  [(NRLinkBluetooth *)self invalidateIKESessionForClass:4];
  [(NRLinkBluetooth *)self invalidateIKESessionForClass:3];
  [(NRLinkBluetooth *)self invalidateIKESessionForClass:1];
  [(NRLink *)self invalidateIKESession:&self->_ikeSessionClassA + 7];
  v43 = *(&self->_latencyContexts + 7);
  if (v43)
  {
    [v43 cancel];
    v44 = *(&self->_latencyContexts + 7);
    *(&self->_latencyContexts + 7) = 0;
  }

  companionProxyAgent = self->super._companionProxyAgent;
  if (companionProxyAgent)
  {
    sub_100070270(companionProxyAgent);
    v46 = self->super._companionProxyAgent;
    self->super._companionProxyAgent = 0;
  }

  v47 = _NRCopyLogObjectForNRUUID();
  v48 = _NRLogIsLevelEnabled();

  if (v48)
  {
    v49 = _NRCopyLogObjectForNRUUID();
    copyDescription12 = [(NRLink *)self copyDescription];
    _NRLogWithArgs(v49, 0, "%s%.30s:%-4d %@: Invalidated", ", "[NRLinkBluetooth invalidateLink]"", 1738, copyDescription12);
  }
}

- (void)invalidateIKESessionForClass:(unsigned __int8)class
{
  classCopy = class;
  v6.receiver = self;
  v6.super_class = NRLinkBluetooth;
  [(NRLink *)&v6 invalidateIKESessionForClass:?];
  sub_1000857F4(self, classCopy);
  [(NRLink *)self invalidateIKESession:v5];
}

- (BOOL)start
{
  selfCopy = self;
  if (self->super._state != 8)
  {
    if ([(NRLink *)self state]== 9)
    {

      LOBYTE(IsLevelEnabled) = [selfCopy resume];
      return IsLevelEnabled;
    }

    if (*(selfCopy + 16) >= 2u)
    {
      if (qword_100229088 != -1)
      {
        dispatch_once(&qword_100229088, &stru_1001FB1C0);
      }

      IsLevelEnabled = _NRLogIsLevelEnabled();
      if (!IsLevelEnabled)
      {
        return IsLevelEnabled;
      }

      if (qword_100229088 != -1)
      {
        dispatch_once(&qword_100229088, &stru_1001FB1C0);
      }

      _NRLogWithArgs(qword_100229080, 17, "Cannot start link: %@", selfCopy);
      goto LABEL_16;
    }

    [selfCopy reportEvent:3001];
    [selfCopy updateIKEv2Role:0];
    queue = [selfCopy queue];

    if (queue)
    {
      v10 = *(selfCopy + 399);
      if (v10)
      {
      }

      else if (!*(selfCopy + 407))
      {
        if (qword_100229088 != -1)
        {
          dispatch_once(&qword_100229088, &stru_1001FB1C0);
        }

        IsLevelEnabled = _NRLogIsLevelEnabled();
        if (!IsLevelEnabled)
        {
          return IsLevelEnabled;
        }

        if (qword_100229088 != -1)
        {
          dispatch_once(&qword_100229088, &stru_1001FB1C0);
        }

        _NRLogWithArgs(qword_100229080, 17, "%s called with null self.pipe != nil || self.l2CAPChannel != nil");
LABEL_16:
        LOBYTE(IsLevelEnabled) = 0;
        return IsLevelEnabled;
      }

      v11 = *(selfCopy + 391);

      if (v11)
      {
        v12 = *(selfCopy + 415);

        if (v12)
        {
          if ([selfCopy ikev2Role] == 2 || objc_msgSend(selfCopy, "ikev2Role") == 1)
          {
            ikev2Role = [selfCopy ikev2Role];
            v14 = 255;
            if (ikev2Role != 1)
            {
              v14 = 0;
            }

            memptr[0] = (0x101010101010101 * v14);
            memptr[1] = 0;
            arc4random_buf(&memptr[1], 8uLL);
            v15 = [[NSUUID alloc] initWithUUIDBytes:memptr];
          }

          else
          {
            v15 = +[NSUUID UUID];
          }

          v16 = *(selfCopy + 1503);
          *(selfCopy + 1503) = v15;

          v17 = *(selfCopy + 1511);
          *(selfCopy + 1511) = &stru_1001FDE68;

          v18 = 315;
          v19 = *(selfCopy + 315);
          if (v19)
          {
            v20 = malloc_type_malloc(v19, 0xD2019250uLL);
            if (!v20)
            {
              v171 = sub_10007CF34();
              v172 = _NRLogIsLevelEnabled();

              if (v172)
              {
                v173 = sub_10007CF34();
                _NRLogWithArgs(v173, 16, "%s%.30s:%-4d ABORTING: strict allocator failed", ", "[NRLinkBluetooth start]"", 1218);
              }

LABEL_164:
              selfCopy = _os_log_pack_size();
              v27 = v274 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
              v174 = *__error();
              v116 = _os_log_pack_fill(v27, selfCopy, v174, &_mh_execute_header, "%{public}s strict allocator failed");
              goto LABEL_117;
            }

            *(selfCopy + 1455) = v20;
            *(selfCopy + 371) = 0;
            *(selfCopy + 375) = 0;
            if (gNRPacketLoggingEnabled == 1)
            {
              v108 = _NRCopyLogObjectForNRUUID();
              v109 = _NRLogIsLevelEnabled();

              if (v109)
              {
                v110 = _NRCopyLogObjectForNRUUID();
                copyDescription = [selfCopy copyDescription];
                _NRLogWithArgs(v110, 1, "%s%.30s:%-4d %@: Initialized linkReadBuffer with size %u", ", "[NRLinkBluetooth start]"", 1221, copyDescription, *(selfCopy + 315));
              }
            }

            v2 = 331;
            v21 = *(selfCopy + 331);
            if (v21)
            {
              v22 = malloc_type_malloc(v21, 0x3A56B233uLL);
              if (v22)
              {
                v5 = 519;
                *(selfCopy + 519) = v22;
                v3 = 339;
                *(selfCopy + 339) = 0;
                v4 = 343;
                *(selfCopy + 343) = 0;
                if (gNRPacketLoggingEnabled == 1)
                {
                  v117 = _NRCopyLogObjectForNRUUID();
                  v118 = _NRLogIsLevelEnabled();

                  if (v118)
                  {
                    v119 = _NRCopyLogObjectForNRUUID();
                    copyDescription2 = [selfCopy copyDescription];
                    _NRLogWithArgs(v119, 1, "%s%.30s:%-4d %@: Initialized linkWriteBuffer with size %u", ", "[NRLinkBluetooth start]"", 1225, copyDescription2, *(selfCopy + 331));
                  }
                }

                v23 = objc_alloc_init(NSMutableArray);
                v24 = *(selfCopy + 1287);
                *(selfCopy + 1287) = v23;

                *(selfCopy + 297) = 10;
                memptr[0] = 0;
                if (malloc_type_posix_memalign(memptr, 8uLL, 0x50uLL, 0x57080EDuLL) || !memptr[0])
                {
                  v121 = sub_10007CF34();
                  v122 = _NRLogIsLevelEnabled();

                  if (v122)
                  {
                    v123 = sub_10007CF34();
                    _NRLogWithArgs(v123, 16, "%s%.30s:%-4d ABORTING: posix_memalign(..., %zu, %zu) failed", ", "[NRLinkBluetooth start]"", 1230, 8uLL, 0x50uLL);
                  }
                }

                else
                {
                  *(selfCopy + 2023) = memptr[0];
                  *(selfCopy + 303) = 10;
                  memptr[0] = 0;
                  if (!malloc_type_posix_memalign(memptr, 8uLL, 0x50uLL, 0xC1B3E6E9uLL) && memptr[0])
                  {
                    *(selfCopy + 2071) = memptr[0];
                    if (*(selfCopy + 18) == 121 && (sub_100090058(selfCopy) & 1) == 0)
                    {
                      v58 = _NRCopyLogObjectForNRUUID();
                      v59 = _NRLogIsLevelEnabled();

                      if (v59)
                      {
                        v27 = _NRCopyLogObjectForNRUUID();
                        copyDescription3 = [selfCopy copyDescription];
                        _NRLogWithArgs(v27, 17, "%@: failed to setup parser for L2CAP channel", copyDescription3);
                        goto LABEL_64;
                      }
                    }

                    else
                    {
                      if (*(selfCopy + 128) != 1)
                      {
                        if (*(selfCopy + 293))
                        {
                          while (1)
                          {
LABEL_46:
                            if (*(selfCopy + 128))
                            {
                              goto LABEL_56;
                            }

                            v18 = *(selfCopy + 248);
                            v29 = selfCopy;
                            v30 = malloc_type_malloc(0x26uLL, 0xF891214AuLL);
                            if (v30)
                            {
                              v31 = v30;
                              *v30 = 0x53554E494D524554;
                              v30[8] = 1;
                              v30[9] = v18;
                              *(v30 + 5) = 6144;
                              v30[12] = 4;
                              *(v30 + 13) = 4096;
                              memptr[0] = 0;
                              memptr[1] = 0;
                              [*(selfCopy + 1503) getUUIDBytes:memptr];
                              *(v31 + 15) = *memptr;
                              v31[31] = 5;
                              *(v31 + 16) = 512;
                              *(v31 + 17) = sub_1000952E8(v29) << 8;
                              *(v31 + 18) = ~os_inet_checksum();

                              if (*(selfCopy + v2) > 0x25u)
                              {
                                v32 = *(v29 + 423);

                                if (v32)
                                {
                                  v33 = _NRCopyLogObjectForNRUUID();
                                  v34 = _NRLogIsLevelEnabled();

                                  if (v34)
                                  {
                                    v35 = _NRCopyLogObjectForNRUUID();
                                    copyDescription4 = [v29 copyDescription];
                                    _NRLogWithArgs(v35, 17, "%@: Sending prelude but sentPrelude is %@", copyDescription4, *(v29 + 423));
                                  }
                                }

                                v37 = [[NSData alloc] initWithBytes:v31 length:38];
                                objc_storeStrong((v29 + 423), v37);

                                v38 = *(selfCopy + v5);
                                v39 = *v31;
                                v40 = *(v31 + 1);
                                *(v38 + 30) = *(v31 + 30);
                                *v38 = v39;
                                *(v38 + 16) = v40;
                                free(v31);
                                *(selfCopy + v3) += 38;
                                v41 = _NRCopyLogObjectForNRUUID();
                                LODWORD(v37) = _NRLogIsLevelEnabled();

                                if (v37)
                                {
                                  v42 = _NRCopyLogObjectForNRUUID();
                                  copyDescription5 = [v29 copyDescription];
                                  v44 = *(selfCopy + v3);
                                  v45 = *(selfCopy + v4);
                                  v46 = _NRCreateDataString();
                                  _NRLogWithArgs(v42, 1, "%s%.30s:%-4d %@: Sending prelude %u bytes filledIn=%u handled=%u %@", ", "[NRLinkBluetooth start]"", 1462, copyDescription5, 38, v44, v45, v46);
                                }

                                [v29 changeStateTo:2];
                                if (v29[293] == 1)
                                {
                                  sub_10007D788(v29, *(v29 + 423), &off_100209B90);
                                }

LABEL_56:
                                v47 = _NRCopyLogObjectForNRUUID();
                                v48 = _NRLogIsLevelEnabled();

                                if (v48)
                                {
                                  v49 = _NRCopyLogObjectForNRUUID();
                                  copyDescription6 = [selfCopy copyDescription];
                                  _NRLogWithArgs(v49, 1, "%s%.30s:%-4d %@: Created new link", ", "[NRLinkBluetooth start]"", 1471, copyDescription6);
                                }

                                v51 = _NRCopyLogObjectForNRUUID();
                                v52 = _NRLogIsLevelEnabled();

                                if (v52)
                                {
                                  v53 = _NRCopyLogObjectForNRUUID();
                                  copyDescription7 = [selfCopy copyDescription];
                                  _NRLogWithArgs(v53, 1, "%s%.30s:%-4d %@: NtL LOOP async start before async", ", "[NRLinkBluetooth start]"", 1473, copyDescription7);
                                }

                                v55 = *(selfCopy + 8);
                                block[0] = _NSConcreteStackBlock;
                                block[1] = 3221225472;
                                block[2] = sub_1000B4DE4;
                                block[3] = &unk_1001FD3C8;
                                block[4] = selfCopy;
                                dispatch_async(v55, block);
                                if ((*(selfCopy + 251) & 1) == 0)
                                {
                                  v56 = *(selfCopy + 399);
                                  peer = [v56 peer];
                                  [peer addObserver:selfCopy forKeyPath:@"hostState" options:5 context:0];

                                  *(selfCopy + 251) = 1;
                                }

                                goto LABEL_3;
                              }

                              v189 = sub_10007CF34();
                              v190 = _NRLogIsLevelEnabled();

                              if (v190)
                              {
                                v191 = sub_10007CF34();
                                _NRLogWithArgs(v191, 16, "%s%.30s:%-4d ABORTING: well this is absurd %u", ", "[NRLinkBluetooth start]"", 1451, 38);
                              }

                              selfCopy = _os_log_pack_size();
                              v27 = v274 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
                              v192 = __error();
                              v193 = _os_log_pack_fill(v27, selfCopy, *v192, &_mh_execute_header, "%{public}s well this is absurd %u");
                              *v193 = 136446466;
                              *(v193 + 4) = "[NRLinkBluetooth start]";
                              *(v193 + 12) = 1024;
                              *(v193 + 14) = 38;
                            }

                            else
                            {
                              v184 = sub_10007CF34();
                              v185 = _NRLogIsLevelEnabled();

                              if (v185)
                              {
                                v186 = sub_10007CF34();
                                _NRLogWithArgs(v186, 16, "%s%.30s:%-4d ABORTING: strict allocator failed", ", "createPreludeBuffer"", 7682);
                              }

                              selfCopy = _os_log_pack_size();
                              v27 = v274 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
                              v187 = __error();
                              v188 = _os_log_pack_fill(v27, selfCopy, *v187, &_mh_execute_header, "%{public}s strict allocator failed");
                              *v188 = 136446210;
                              *(v188 + 4) = "createPreludeBuffer";
                            }

LABEL_126:
                            sub_10007CF34();
                            _NRLogAbortWithPack();
LABEL_127:
                            v129 = _NRLogIsLevelEnabled();

                            if (v129)
                            {
                              v130 = _NRCopyLogObjectForNRUUID();
                              copyDescription8 = [selfCopy copyDescription];
                              _NRLogWithArgs(v130, 2, "%s%.30s:%-4d %@: Link Channel TX_SLOTS = %llu", ", "[NRLinkBluetooth start]"", 1299, copyDescription8, memptr[0]);
                            }

                            memptr[0] = 0;
                            v132 = os_channel_attr_get();
                            v133 = _NRCopyLogObjectForNRUUID();
                            if (v132)
                            {
                              v134 = _NRLogIsLevelEnabled();

                              if (!v134)
                              {
                                goto LABEL_220;
                              }

                              v70 = _NRCopyLogObjectForNRUUID();
                              copyDescription9 = [selfCopy copyDescription];
                              _NRLogWithArgs(v70, 17, "%@: os_channel_attr_get(RX_SLOTS) returned %d", copyDescription9, v132);
                              goto LABEL_219;
                            }

                            v135 = _NRLogIsLevelEnabled();

                            if (v135)
                            {
                              v136 = _NRCopyLogObjectForNRUUID();
                              copyDescription10 = [selfCopy copyDescription];
                              _NRLogWithArgs(v136, 2, "%s%.30s:%-4d %@: Link Channel RX_SLOTS = %llu", ", "[NRLinkBluetooth start]"", 1300, copyDescription10, memptr[0]);
                            }

                            memptr[0] = 0;
                            v138 = os_channel_attr_get();
                            v139 = _NRCopyLogObjectForNRUUID();
                            if (v138)
                            {
                              v140 = _NRLogIsLevelEnabled();

                              if (!v140)
                              {
                                goto LABEL_220;
                              }

                              v70 = _NRCopyLogObjectForNRUUID();
                              copyDescription9 = [selfCopy copyDescription];
                              _NRLogWithArgs(v70, 17, "%@: os_channel_attr_get(SLOT_BUF_SIZE) returned %d", copyDescription9, v138);
                              goto LABEL_219;
                            }

                            v141 = _NRLogIsLevelEnabled();

                            if (v141)
                            {
                              v142 = _NRCopyLogObjectForNRUUID();
                              copyDescription11 = [selfCopy copyDescription];
                              _NRLogWithArgs(v142, 2, "%s%.30s:%-4d %@: Link Channel SLOT_BUF_SIZE = %llu", ", "[NRLinkBluetooth start]"", 1301, copyDescription11, memptr[0]);
                            }

                            memptr[0] = 0;
                            v144 = os_channel_attr_get();
                            v145 = _NRCopyLogObjectForNRUUID();
                            if (v144)
                            {
                              v146 = _NRLogIsLevelEnabled();

                              if (!v146)
                              {
                                goto LABEL_220;
                              }

                              v70 = _NRCopyLogObjectForNRUUID();
                              copyDescription9 = [selfCopy copyDescription];
                              _NRLogWithArgs(v70, 17, "%@: os_channel_attr_get(SLOT_META_SIZE) returned %d", copyDescription9, v144);
                              goto LABEL_219;
                            }

                            v147 = _NRLogIsLevelEnabled();

                            if (v147)
                            {
                              v148 = _NRCopyLogObjectForNRUUID();
                              copyDescription12 = [selfCopy copyDescription];
                              _NRLogWithArgs(v148, 2, "%s%.30s:%-4d %@: Link Channel SLOT_META_SIZE = %llu", ", "[NRLinkBluetooth start]"", 1302, copyDescription12, memptr[0]);
                            }

                            memptr[0] = 0;
                            v150 = os_channel_attr_get();
                            v151 = _NRCopyLogObjectForNRUUID();
                            if (v150)
                            {
                              v152 = _NRLogIsLevelEnabled();

                              if (!v152)
                              {
                                goto LABEL_220;
                              }

                              v70 = _NRCopyLogObjectForNRUUID();
                              copyDescription9 = [selfCopy copyDescription];
                              _NRLogWithArgs(v70, 17, "%@: os_channel_attr_get(EXCLUSIVE) returned %d", copyDescription9, v150);
                              goto LABEL_219;
                            }

                            v153 = _NRLogIsLevelEnabled();

                            if (v153)
                            {
                              v154 = _NRCopyLogObjectForNRUUID();
                              copyDescription13 = [selfCopy copyDescription];
                              _NRLogWithArgs(v154, 2, "%s%.30s:%-4d %@: Link Channel EXCLUSIVE = %llu", ", "[NRLinkBluetooth start]"", 1303, copyDescription13, memptr[0]);
                            }

                            memptr[0] = 0;
                            v156 = os_channel_attr_get();
                            v157 = _NRCopyLogObjectForNRUUID();
                            if (v156)
                            {
                              v158 = _NRLogIsLevelEnabled();

                              if (!v158)
                              {
                                goto LABEL_220;
                              }

                              v70 = _NRCopyLogObjectForNRUUID();
                              copyDescription9 = [selfCopy copyDescription];
                              _NRLogWithArgs(v70, 17, "%@: os_channel_attr_get(NO_AUTO_SYNC) returned %d", copyDescription9, v156);
                              goto LABEL_219;
                            }

                            v159 = _NRLogIsLevelEnabled();

                            if (v159)
                            {
                              v160 = _NRCopyLogObjectForNRUUID();
                              copyDescription14 = [selfCopy copyDescription];
                              _NRLogWithArgs(v160, 2, "%s%.30s:%-4d %@: Link Channel NO_AUTO_SYNC = %llu", ", "[NRLinkBluetooth start]"", 1304, copyDescription14, memptr[0]);
                            }

                            memptr[0] = 0;
                            v162 = os_channel_attr_get();
                            v163 = _NRCopyLogObjectForNRUUID();
                            if (v162)
                            {
                              v164 = _NRLogIsLevelEnabled();

                              if (!v164)
                              {
                                goto LABEL_220;
                              }

                              v70 = _NRCopyLogObjectForNRUUID();
                              copyDescription9 = [selfCopy copyDescription];
                              _NRLogWithArgs(v70, 17, "%@: os_channel_attr_get(TX_LOWAT_UNIT) returned %d", copyDescription9, v162);
                              goto LABEL_219;
                            }

                            v165 = _NRLogIsLevelEnabled();

                            if (v165)
                            {
                              v166 = _NRCopyLogObjectForNRUUID();
                              copyDescription15 = [selfCopy copyDescription];
                              _NRLogWithArgs(v166, 2, "%s%.30s:%-4d %@: Link Channel TX_LOWAT_UNIT = %llu", ", "[NRLinkBluetooth start]"", 1305, copyDescription15, memptr[0]);
                            }

                            memptr[0] = 0;
                            v168 = os_channel_attr_get();
                            v169 = _NRCopyLogObjectForNRUUID();
                            if (v168)
                            {
                              v170 = _NRLogIsLevelEnabled();

                              if (!v170)
                              {
                                goto LABEL_220;
                              }

                              v70 = _NRCopyLogObjectForNRUUID();
                              copyDescription9 = [selfCopy copyDescription];
                              _NRLogWithArgs(v70, 17, "%@: os_channel_attr_get(TX_LOWAT_VALUE) returned %d", copyDescription9, v168);
                              goto LABEL_219;
                            }

                            v178 = _NRLogIsLevelEnabled();

                            if (v178)
                            {
                              v179 = _NRCopyLogObjectForNRUUID();
                              copyDescription16 = [selfCopy copyDescription];
                              _NRLogWithArgs(v179, 2, "%s%.30s:%-4d %@: Link Channel TX_LOWAT_VALUE = %llu", ", "[NRLinkBluetooth start]"", 1306, copyDescription16, memptr[0]);
                            }

                            memptr[0] = 0;
                            v181 = os_channel_attr_get();
                            v182 = _NRCopyLogObjectForNRUUID();
                            if (v181)
                            {
                              v183 = _NRLogIsLevelEnabled();

                              if (!v183)
                              {
                                goto LABEL_220;
                              }

                              v70 = _NRCopyLogObjectForNRUUID();
                              copyDescription9 = [selfCopy copyDescription];
                              _NRLogWithArgs(v70, 17, "%@: os_channel_attr_get(RX_LOWAT_UNIT) returned %d", copyDescription9, v181);
                              goto LABEL_219;
                            }

                            v194 = _NRLogIsLevelEnabled();

                            if (v194)
                            {
                              v195 = _NRCopyLogObjectForNRUUID();
                              copyDescription17 = [selfCopy copyDescription];
                              _NRLogWithArgs(v195, 2, "%s%.30s:%-4d %@: Link Channel RX_LOWAT_UNIT = %llu", ", "[NRLinkBluetooth start]"", 1307, copyDescription17, memptr[0]);
                            }

                            memptr[0] = 0;
                            v197 = os_channel_attr_get();
                            v198 = _NRCopyLogObjectForNRUUID();
                            if (v197)
                            {
                              v199 = _NRLogIsLevelEnabled();

                              if (!v199)
                              {
                                goto LABEL_220;
                              }

                              v70 = _NRCopyLogObjectForNRUUID();
                              copyDescription9 = [selfCopy copyDescription];
                              _NRLogWithArgs(v70, 17, "%@: os_channel_attr_get(RX_LOWAT_VALUE) returned %d", copyDescription9, v197);
                              goto LABEL_219;
                            }

                            v200 = _NRLogIsLevelEnabled();

                            if (v200)
                            {
                              v201 = _NRCopyLogObjectForNRUUID();
                              copyDescription18 = [selfCopy copyDescription];
                              _NRLogWithArgs(v201, 2, "%s%.30s:%-4d %@: Link Channel RX_LOWAT_VALUE = %llu", ", "[NRLinkBluetooth start]"", 1308, copyDescription18, memptr[0]);
                            }

                            memptr[0] = 0;
                            v203 = os_channel_attr_get();
                            v204 = _NRCopyLogObjectForNRUUID();
                            if (v203)
                            {
                              v205 = _NRLogIsLevelEnabled();

                              if (!v205)
                              {
                                goto LABEL_220;
                              }

                              v70 = _NRCopyLogObjectForNRUUID();
                              copyDescription9 = [selfCopy copyDescription];
                              _NRLogWithArgs(v70, 17, "%@: os_channel_attr_get(NEXUS_TYPE) returned %d", copyDescription9, v203);
                              goto LABEL_219;
                            }

                            v206 = _NRLogIsLevelEnabled();

                            if (v206)
                            {
                              v207 = _NRCopyLogObjectForNRUUID();
                              copyDescription19 = [selfCopy copyDescription];
                              _NRLogWithArgs(v207, 2, "%s%.30s:%-4d %@: Link Channel NEXUS_TYPE = %llu", ", "[NRLinkBluetooth start]"", 1309, copyDescription19, memptr[0]);
                            }

                            memptr[0] = 0;
                            v209 = os_channel_attr_get();
                            v210 = _NRCopyLogObjectForNRUUID();
                            if (v209)
                            {
                              v211 = _NRLogIsLevelEnabled();

                              if (!v211)
                              {
                                goto LABEL_220;
                              }

                              v70 = _NRCopyLogObjectForNRUUID();
                              copyDescription9 = [selfCopy copyDescription];
                              _NRLogWithArgs(v70, 17, "%@: os_channel_attr_get(NEXUS_EXTENSIONS) returned %d", copyDescription9, v209);
                              goto LABEL_219;
                            }

                            v212 = _NRLogIsLevelEnabled();

                            if (v212)
                            {
                              v213 = _NRCopyLogObjectForNRUUID();
                              copyDescription20 = [selfCopy copyDescription];
                              _NRLogWithArgs(v213, 2, "%s%.30s:%-4d %@: Link Channel NEXUS_EXTENSIONS = %llu", ", "[NRLinkBluetooth start]"", 1310, copyDescription20, memptr[0]);
                            }

                            memptr[0] = 0;
                            v215 = os_channel_attr_get();
                            v216 = _NRCopyLogObjectForNRUUID();
                            if (v215)
                            {
                              v217 = _NRLogIsLevelEnabled();

                              if (!v217)
                              {
                                goto LABEL_220;
                              }

                              v70 = _NRCopyLogObjectForNRUUID();
                              copyDescription9 = [selfCopy copyDescription];
                              _NRLogWithArgs(v70, 17, "%@: os_channel_attr_get(NEXUS_MHINTS) returned %d", copyDescription9, v215);
                              goto LABEL_219;
                            }

                            v218 = _NRLogIsLevelEnabled();

                            if (v218)
                            {
                              v219 = _NRCopyLogObjectForNRUUID();
                              copyDescription21 = [selfCopy copyDescription];
                              _NRLogWithArgs(v219, 2, "%s%.30s:%-4d %@: Link Channel NEXUS_MHINTS = %llu", ", "[NRLinkBluetooth start]"", 1311, copyDescription21, memptr[0]);
                            }

                            memptr[0] = 0;
                            v221 = os_channel_attr_get();
                            v222 = _NRCopyLogObjectForNRUUID();
                            if (v221)
                            {
                              v223 = _NRLogIsLevelEnabled();

                              if (!v223)
                              {
                                goto LABEL_220;
                              }

                              v70 = _NRCopyLogObjectForNRUUID();
                              copyDescription9 = [selfCopy copyDescription];
                              _NRLogWithArgs(v70, 17, "%@: os_channel_attr_get(NEXUS_IFINDEX) returned %d", copyDescription9, v221);
                              goto LABEL_219;
                            }

                            v224 = _NRLogIsLevelEnabled();

                            if (v224)
                            {
                              v225 = _NRCopyLogObjectForNRUUID();
                              copyDescription22 = [selfCopy copyDescription];
                              _NRLogWithArgs(v225, 2, "%s%.30s:%-4d %@: Link Channel NEXUS_IFINDEX = %llu", ", "[NRLinkBluetooth start]"", 1312, copyDescription22, memptr[0]);
                            }

                            memptr[0] = 0;
                            v227 = os_channel_attr_get();
                            v228 = _NRCopyLogObjectForNRUUID();
                            if (v227)
                            {
                              v229 = _NRLogIsLevelEnabled();

                              if (!v229)
                              {
                                goto LABEL_220;
                              }

                              v70 = _NRCopyLogObjectForNRUUID();
                              copyDescription9 = [selfCopy copyDescription];
                              _NRLogWithArgs(v70, 17, "%@: os_channel_attr_get(NEXUS_STATS_SIZE) returned %d", copyDescription9, v227);
                              goto LABEL_219;
                            }

                            v230 = _NRLogIsLevelEnabled();

                            if (v230)
                            {
                              v231 = _NRCopyLogObjectForNRUUID();
                              copyDescription23 = [selfCopy copyDescription];
                              _NRLogWithArgs(v231, 2, "%s%.30s:%-4d %@: Link Channel NEXUS_STATS_SIZE = %llu", ", "[NRLinkBluetooth start]"", 1313, copyDescription23, memptr[0]);
                            }

                            memptr[0] = 0;
                            v233 = os_channel_attr_get();
                            v234 = _NRCopyLogObjectForNRUUID();
                            if (v233)
                            {
                              v235 = _NRLogIsLevelEnabled();

                              if (!v235)
                              {
                                goto LABEL_220;
                              }

                              v70 = _NRCopyLogObjectForNRUUID();
                              copyDescription9 = [selfCopy copyDescription];
                              _NRLogWithArgs(v70, 17, "%@: os_channel_attr_get(NEXUS_FLOWADV_MAX) returned %d", copyDescription9, v233);
                              goto LABEL_219;
                            }

                            v236 = _NRLogIsLevelEnabled();

                            if (v236)
                            {
                              v237 = _NRCopyLogObjectForNRUUID();
                              copyDescription24 = [selfCopy copyDescription];
                              _NRLogWithArgs(v237, 2, "%s%.30s:%-4d %@: Link Channel NEXUS_FLOWADV_MAX = %llu", ", "[NRLinkBluetooth start]"", 1314, copyDescription24, memptr[0]);
                            }

                            memptr[0] = 0;
                            v239 = os_channel_attr_get();
                            if (v239)
                            {
                              v240 = v239;
                              v241 = _NRCopyLogObjectForNRUUID();
                              v242 = _NRLogIsLevelEnabled();

                              if (!v242)
                              {
                                goto LABEL_220;
                              }

                              v70 = _NRCopyLogObjectForNRUUID();
                              copyDescription9 = [selfCopy copyDescription];
                              _NRLogWithArgs(v70, 17, "%@: link os_channel_attr_get(TX_SLOTS) returned %d", copyDescription9, v240);
                              goto LABEL_219;
                            }

                            v243 = memptr[0] >> 1;
                            v244 = os_channel_attr_set();
                            if (v244)
                            {
                              v245 = v244;
                              v246 = _NRCopyLogObjectForNRUUID();
                              v247 = _NRLogIsLevelEnabled();

                              if (!v247)
                              {
                                goto LABEL_220;
                              }

                              v70 = _NRCopyLogObjectForNRUUID();
                              copyDescription9 = [selfCopy copyDescription];
                              _NRLogWithArgs(v70, 17, "%@: link os_channel_attr_set(TX_LOWAT_VALUE, %llu) returned %d", copyDescription9, v243, v245);
                              goto LABEL_219;
                            }

                            v248 = os_channel_write_attr();
                            if (v248)
                            {
                              v249 = v248;
                              v250 = _NRCopyLogObjectForNRUUID();
                              v251 = _NRLogIsLevelEnabled();

                              if (!v251)
                              {
                                goto LABEL_220;
                              }

                              v70 = _NRCopyLogObjectForNRUUID();
                              copyDescription9 = [selfCopy copyDescription];
                              _NRLogWithArgs(v70, 17, "%@: link os_channel_write_attr returned %d (linkOutputLowat=%llu)", copyDescription9, v249, v243);
                              goto LABEL_219;
                            }

                            os_channel_attr_destroy();
                            v252 = _NRCopyLogObjectForNRUUID();
                            v253 = _NRLogIsLevelEnabled();

                            if (v253)
                            {
                              v254 = _NRCopyLogObjectForNRUUID();
                              copyDescription25 = [selfCopy copyDescription];
                              _NRLogWithArgs(v254, 1, "%s%.30s:%-4d %@: Successfully set linkOutputLowat to %llu (linkOutputSlotCount=%llu)", ", "[NRLinkBluetooth start]"", 1348, copyDescription25, v243, memptr[0]);
                            }

                            v256 = *(selfCopy + 8);
                            v275 = v275;
                            v257 = dispatch_source_create(&_dispatch_source_type_read, v275, 0, v256);
                            v258 = *(selfCopy + 1071);
                            *(selfCopy + 1071) = v257;

                            v259 = *(selfCopy + 1071);
                            if (!v259)
                            {
                              break;
                            }

                            handler[0] = _NSConcreteStackBlock;
                            handler[1] = 3221225472;
                            handler[2] = sub_1000B487C;
                            handler[3] = &unk_1001FD3C8;
                            handler[4] = selfCopy;
                            dispatch_source_set_event_handler(v259, handler);
                            v260 = *(selfCopy + 1071);
                            v280[0] = _NSConcreteStackBlock;
                            v280[1] = 3221225472;
                            v280[2] = nullsub_11;
                            v280[3] = &unk_1001FD3C8;
                            v261 = v27;
                            v281 = v261;
                            dispatch_source_set_cancel_handler(v260, v280);
                            dispatch_activate(*(selfCopy + 1071));
                            v262 = dispatch_source_create(&_dispatch_source_type_write, v275, 0, *(selfCopy + 8));
                            v263 = *(selfCopy + 1079);
                            *(selfCopy + 1079) = v262;

                            v264 = *(selfCopy + 1079);
                            if (v264)
                            {
                              v279[0] = _NSConcreteStackBlock;
                              v279[1] = 3221225472;
                              v279[2] = sub_1000B4AD8;
                              v279[3] = &unk_1001FD3C8;
                              v279[4] = selfCopy;
                              dispatch_source_set_event_handler(v264, v279);
                              v265 = *(selfCopy + 1079);
                              v277[0] = _NSConcreteStackBlock;
                              v277[1] = 3221225472;
                              v277[2] = nullsub_12;
                              v277[3] = &unk_1001FD3C8;
                              v278 = v261;
                              dispatch_source_set_cancel_handler(v265, v277);
                              *(selfCopy + 262) = 1;
                            }

                            else
                            {
                              v268 = _NRCopyLogObjectForNRUUID();
                              v269 = _NRLogIsLevelEnabled();

                              if (v269)
                              {
                                v270 = _NRCopyLogObjectForNRUUID();
                                copyDescription26 = [selfCopy copyDescription];
                                _NRLogWithArgs(v270, 17, "%@: _dLinkOutputSource is NULL", copyDescription26);
                              }
                            }

                            if (!v264)
                            {
                              goto LABEL_237;
                            }
                          }

                          v266 = _NRCopyLogObjectForNRUUID();
                          v267 = _NRLogIsLevelEnabled();

                          if (!v267)
                          {
                            goto LABEL_220;
                          }

                          v70 = _NRCopyLogObjectForNRUUID();
                          copyDescription9 = [selfCopy copyDescription];
                          _NRLogWithArgs(v70, 17, "%@: _dLinkInputSource is NULL", copyDescription9, v273);
                        }

                        else
                        {
                          v27 = *(selfCopy + 399);
                          channel = [v27 channel];
                          *(selfCopy + 1047) = channel;
                          if (channel)
                          {
                            os_channel_ring_id();
                            v61 = os_channel_rx_ring();
                            *(selfCopy + 1055) = v61;
                            if (v61)
                            {
                              os_channel_ring_id();
                              v62 = os_channel_tx_ring();
                              *(selfCopy + 1063) = v62;
                              if (v62)
                              {
                                fd = os_channel_get_fd();
                                if (fd < 0)
                                {
                                  v78 = _NRCopyLogObjectForNRUUID();
                                  v79 = _NRLogIsLevelEnabled();

                                  if (!v79)
                                  {
                                    goto LABEL_220;
                                  }

                                  v70 = _NRCopyLogObjectForNRUUID();
                                  copyDescription9 = [selfCopy copyDescription];
                                  _NRLogWithArgs(v70, 17, "%@: os_channel_get_fd failed", copyDescription9);
                                }

                                else
                                {
                                  LODWORD(v275) = fd;
                                  v64 = os_channel_attr_create();
                                  if (v64)
                                  {
                                    v65 = v64;
                                    attr = os_channel_read_attr();
                                    if (attr)
                                    {
                                      v67 = attr;
                                      v68 = _NRCopyLogObjectForNRUUID();
                                      v69 = _NRLogIsLevelEnabled();

                                      if (!v69)
                                      {
                                        goto LABEL_220;
                                      }

                                      v70 = _NRCopyLogObjectForNRUUID();
                                      copyDescription9 = [selfCopy copyDescription];
                                      _NRLogWithArgs(v70, 17, "%@: os_channel_read_attr returned %d", copyDescription9, v67);
                                    }

                                    else
                                    {
                                      memptr[0] = 0;
                                      v82 = os_channel_attr_get();
                                      v83 = _NRCopyLogObjectForNRUUID();
                                      v84 = v65;
                                      v85 = v83;
                                      if (v82)
                                      {
                                        v86 = _NRLogIsLevelEnabled();

                                        if (!v86)
                                        {
                                          goto LABEL_220;
                                        }

                                        v70 = _NRCopyLogObjectForNRUUID();
                                        copyDescription9 = [selfCopy copyDescription];
                                        _NRLogWithArgs(v70, 17, "%@: os_channel_attr_get(TX_RINGS) returned %d", copyDescription9, v82);
                                      }

                                      else
                                      {
                                        v274[1] = v84;
                                        v87 = _NRLogIsLevelEnabled();

                                        if (v87)
                                        {
                                          v88 = _NRCopyLogObjectForNRUUID();
                                          copyDescription27 = [selfCopy copyDescription];
                                          _NRLogWithArgs(v88, 2, "%s%.30s:%-4d %@: Link Channel TX_RINGS = %llu", ", "[NRLinkBluetooth start]"", 1297, copyDescription27, memptr[0]);
                                        }

                                        memptr[0] = 0;
                                        v90 = os_channel_attr_get();
                                        v91 = _NRCopyLogObjectForNRUUID();
                                        if (v90)
                                        {
                                          v92 = _NRLogIsLevelEnabled();

                                          if (!v92)
                                          {
                                            goto LABEL_220;
                                          }

                                          v70 = _NRCopyLogObjectForNRUUID();
                                          copyDescription9 = [selfCopy copyDescription];
                                          _NRLogWithArgs(v70, 17, "%@: os_channel_attr_get(RX_RINGS) returned %d", copyDescription9, v90);
                                        }

                                        else
                                        {
                                          v93 = _NRLogIsLevelEnabled();

                                          if (v93)
                                          {
                                            v94 = _NRCopyLogObjectForNRUUID();
                                            copyDescription28 = [selfCopy copyDescription];
                                            _NRLogWithArgs(v94, 2, "%s%.30s:%-4d %@: Link Channel RX_RINGS = %llu", ", "[NRLinkBluetooth start]"", 1298, copyDescription28, memptr[0]);
                                          }

                                          memptr[0] = 0;
                                          v96 = os_channel_attr_get();
                                          v18 = _NRCopyLogObjectForNRUUID();
                                          if (!v96)
                                          {
                                            goto LABEL_127;
                                          }

                                          v97 = _NRLogIsLevelEnabled();

                                          if (!v97)
                                          {
                                            goto LABEL_220;
                                          }

                                          v70 = _NRCopyLogObjectForNRUUID();
                                          copyDescription9 = [selfCopy copyDescription];
                                          _NRLogWithArgs(v70, 17, "%@: os_channel_attr_get(TX_SLOTS) returned %d", copyDescription9, v96);
                                        }
                                      }
                                    }
                                  }

                                  else
                                  {
                                    v80 = _NRCopyLogObjectForNRUUID();
                                    v81 = _NRLogIsLevelEnabled();

                                    if (!v81)
                                    {
                                      goto LABEL_220;
                                    }

                                    v70 = _NRCopyLogObjectForNRUUID();
                                    copyDescription9 = [selfCopy copyDescription];
                                    _NRLogWithArgs(v70, 17, "%@: os_channel_attr_create failed", copyDescription9);
                                  }
                                }
                              }

                              else
                              {
                                v76 = _NRCopyLogObjectForNRUUID();
                                v77 = _NRLogIsLevelEnabled();

                                if (!v77)
                                {
                                  goto LABEL_220;
                                }

                                v70 = _NRCopyLogObjectForNRUUID();
                                copyDescription9 = [selfCopy copyDescription];
                                _NRLogWithArgs(v70, 17, "%@: _linkOutputRing is NULL", copyDescription9);
                              }
                            }

                            else
                            {
                              v74 = _NRCopyLogObjectForNRUUID();
                              v75 = _NRLogIsLevelEnabled();

                              if (!v75)
                              {
                                goto LABEL_220;
                              }

                              v70 = _NRCopyLogObjectForNRUUID();
                              copyDescription9 = [selfCopy copyDescription];
                              _NRLogWithArgs(v70, 17, "%@: _linkInputRing is NULL", copyDescription9);
                            }
                          }

                          else
                          {
                            v72 = _NRCopyLogObjectForNRUUID();
                            v73 = _NRLogIsLevelEnabled();

                            if (!v73)
                            {
                              goto LABEL_220;
                            }

                            v70 = _NRCopyLogObjectForNRUUID();
                            copyDescription9 = [selfCopy copyDescription];
                            _NRLogWithArgs(v70, 17, "%@: pipe.channel is NULL", copyDescription9);
                          }
                        }

LABEL_219:

                        goto LABEL_220;
                      }

                      if ([selfCopy initializeExternalDeviceLink])
                      {
                        goto LABEL_46;
                      }

                      v25 = _NRCopyLogObjectForNRUUID();
                      v26 = _NRLogIsLevelEnabled();

                      if (v26)
                      {
                        v27 = _NRCopyLogObjectForNRUUID();
                        copyDescription3 = [selfCopy copyDescription];
                        _NRLogWithArgs(v27, 17, "%@: failed to setup external device link", copyDescription3);
LABEL_64:

LABEL_220:
                        LOBYTE(IsLevelEnabled) = 0;
                        return IsLevelEnabled;
                      }
                    }

LABEL_237:
                    LOBYTE(IsLevelEnabled) = 0;
                    return IsLevelEnabled;
                  }

                  v124 = sub_10007CF34();
                  v125 = _NRLogIsLevelEnabled();

                  if (v125)
                  {
                    v126 = sub_10007CF34();
                    _NRLogWithArgs(v126, 16, "%s%.30s:%-4d ABORTING: posix_memalign(..., %zu, %zu) failed", ", "[NRLinkBluetooth start]"", 1233, 8uLL, 0x50uLL);
                  }
                }

                selfCopy = _os_log_pack_size();
                v27 = v274 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
                v127 = *__error();
                v128 = _os_log_pack_fill(v27, selfCopy, v127, &_mh_execute_header, "%{public}s posix_memalign(..., %zu, %zu) failed");
                *v128 = 136446722;
                *(v128 + 4) = "[NRLinkBluetooth start]";
                *(v128 + 12) = 2048;
                *(v128 + 14) = 8;
                *(v128 + 22) = 2048;
                *(v128 + 24) = 80;
                goto LABEL_126;
              }

              v175 = sub_10007CF34();
              v176 = _NRLogIsLevelEnabled();

              if (v176)
              {
                v177 = sub_10007CF34();
                _NRLogWithArgs(v177, 16, "%s%.30s:%-4d ABORTING: strict allocator failed", ", "[NRLinkBluetooth start]"", 1222);
              }

              goto LABEL_164;
            }

            v112 = sub_10007CF34();
            v113 = _NRLogIsLevelEnabled();

            if (v113)
            {
              v114 = sub_10007CF34();
              _NRLogWithArgs(v114, 16, "%s%.30s:%-4d ABORTING: strict_malloc called with size 0", ", "[NRLinkBluetooth start]"", 1222);
            }
          }

          else
          {
            v105 = sub_10007CF34();
            v106 = _NRLogIsLevelEnabled();

            if (v106)
            {
              v107 = sub_10007CF34();
              _NRLogWithArgs(v107, 16, "%s%.30s:%-4d ABORTING: strict_malloc called with size 0", ", "[NRLinkBluetooth start]"", 1218);
            }
          }

          selfCopy = _os_log_pack_size();
          v27 = v274 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
          v115 = *__error();
          v116 = _os_log_pack_fill(v27, selfCopy, v115, &_mh_execute_header, "%{public}s strict_malloc called with size 0");
LABEL_117:
          *v116 = 136446210;
          *(v116 + 4) = "[NRLinkBluetooth start]";
          goto LABEL_126;
        }

        v103 = sub_10007CF34();
        v104 = _NRLogIsLevelEnabled();

        if (!v104)
        {
          goto LABEL_237;
        }

        v100 = sub_10007CF34();
        _NRLogWithArgs(v100, 17, "%s called with null self.remoteDeviceName");
      }

      else
      {
        v101 = sub_10007CF34();
        v102 = _NRLogIsLevelEnabled();

        if (!v102)
        {
          goto LABEL_237;
        }

        v100 = sub_10007CF34();
        _NRLogWithArgs(v100, 17, "%s called with null self.bluetoothUUID");
      }
    }

    else
    {
      v98 = sub_10007CF34();
      v99 = _NRLogIsLevelEnabled();

      if (!v99)
      {
        goto LABEL_237;
      }

      v100 = sub_10007CF34();
      _NRLogWithArgs(v100, 17, "%s called with null self.queue");
    }

    LOBYTE(IsLevelEnabled) = 0;
    return IsLevelEnabled;
  }

  linkDelegate = [(NRLink *)self linkDelegate];
  [linkDelegate linkIsReady:selfCopy];

LABEL_3:
  LOBYTE(IsLevelEnabled) = 1;
  return IsLevelEnabled;
}

- (id)copyShortDescriptionInner
{
  v3 = [NSString alloc];
  v9.receiver = self;
  v9.super_class = NRLinkBluetooth;
  copyShortDescriptionInner = [(NRLink *)&v9 copyShortDescriptionInner];
  v5 = *(&self->_l2CAPChannel + 7);
  if ([*(&self->_randomUUID + 7) length])
  {
    if (self->_isResponder)
    {
      v6 = " R";
    }

    else
    {
      v6 = " I";
    }
  }

  else
  {
    v6 = "";
  }

  v7 = [v3 initWithFormat:@"%@ %@%s%@", copyShortDescriptionInner, v5, v6, *(&self->_randomUUID + 7)];

  return v7;
}

- (id)copyDescriptionInner
{
  v3 = [NSMutableString alloc];
  v10.receiver = self;
  v10.super_class = NRLinkBluetooth;
  copyDescriptionInner = [(NRLink *)&v10 copyDescriptionInner];
  v5 = [v3 initWithString:copyDescriptionInner];

  [(NRLink *)self type];
  StringFromNRLinkType = createStringFromNRLinkType();
  [v5 appendFormat:@", %@", StringFromNRLinkType];

  if (self)
  {
    v7 = *(&self->_l2CAPChannel + 7);
  }

  else
  {
    v7 = 0;
  }

  [v5 appendFormat:@", %@", v7];
  if ([*(&self->_randomUUID + 7) length])
  {
    if (self->_isResponder)
    {
      v8 = " R";
    }

    else
    {
      v8 = " I";
    }
  }

  else
  {
    v8 = "";
  }

  [v5 appendFormat:@", %s", v8];
  [v5 appendFormat:@", %@", *(&self->_randomUUID + 7)];
  return v5;
}

- (id)copyStatusString
{
  v3 = [NSMutableString alloc];
  v4 = [(NRLink *)self description];
  v5 = [v3 initWithString:v4];

  [v5 appendFormat:@"\n %35s = %@", "nrUUID", self->super._nrUUID];
  [v5 appendFormat:@"\n %35s = %@", "bluetoothUUID", *(&self->_handledUrgentLinkReadBufferBytes + 7)];
  [v5 appendFormat:@"\n %35s = %@", "pipe", *(&self->_bluetoothUUID + 7)];
  [v5 appendFormat:@"\n %35s = %@", "urgentPipe", *(&self->_lastReadDatagramLinkOutputActivityCounter + 7)];
  [v5 appendFormat:@"\n %35s = %@", "datagramPipe", *(&self->_lastReadLinkOutputActivityCounter + 7)];
  [v5 appendFormat:@"\n %35s = %p", "linkChannel", *(&self->_writeCounter + 7)];
  [v5 appendFormat:@"\n %35s = %p", "linkInputRing", *(&self->_linkChannel + 7)];
  [v5 appendFormat:@"\n %35s = %p", "linkOutputRing", *(&self->_linkInputRing + 7)];
  [v5 appendFormat:@"\n %35s = %p", "dLinkInputSource", *(&self->_linkOutputRing + 7)];
  [v5 appendFormat:@"\n %35s = %p", "dLinkOutputSource", *(&self->_dLinkInputSource + 7)];
  [v5 appendFormat:@"\n %35s = %p", "datagramLinkChannel", *(&self->_datagramPipe + 7)];
  [v5 appendFormat:@"\n %35s = %p", "datagramLinkInputRing", *(&self->_datagramLinkChannel + 7)];
  [v5 appendFormat:@"\n %35s = %p", "datagramLinkOutputRing", *(&self->_datagramLinkInputRing + 7)];
  [v5 appendFormat:@"\n %35s = %p", "dDatagramLinkInputSource", *(&self->_datagramLinkOutputRing + 7)];
  [v5 appendFormat:@"\n %35s = %p", "dDatagramLinkOutputSource", *(&self->_dDatagramLinkInputSource + 7)];
  if (self->_datagramPipeNeeded)
  {
    v6 = "YES";
  }

  else
  {
    v6 = "NO";
  }

  [v5 appendFormat:@"\n %35s = %s", "datagramPipeNeeded", v6];
  if (self->super._virtualInterface)
  {
    v7 = NEVirtualInterfaceCopyName();
    [v5 appendFormat:@"\n %35s = %@", "virtualInterfaceName", v7];
  }

  [v5 appendFormat:@"\n %35s = %@", "ikeSessionClassD", *(&self->_ikeListener + 7)];
  [v5 appendFormat:@"\n %35s = %@", "ikeSessionClassC", *(&self->_ikeSessionClassD + 7)];
  [v5 appendFormat:@"\n %35s = %@", "ikeSessionClassA", *(&self->_ikeSessionClassC + 7)];
  IPv6AddrString = createIPv6AddrString();
  [v5 appendFormat:@"\n %35s = %@", "localAddrClassD", IPv6AddrString];

  v9 = createIPv6AddrString();
  [v5 appendFormat:@"\n %35s = %@", "remoteAddrClassD", v9];

  v10 = createIPv6AddrString();
  [v5 appendFormat:@"\n %35s = %@", "localAddrClassC", v10];

  v11 = createIPv6AddrString();
  [v5 appendFormat:@"\n %35s = %@", "remoteAddrClassC", v11];

  [v5 appendFormat:@"\n %35s = %llu", "packetsFromNexus", *(&self->_syncNexusOutput + 7)];
  [v5 appendFormat:@"\n %35s = %llu", "packetsToNexus", *(&self->_packetsFromNexus + 7)];
  [v5 appendFormat:@"\n %35s = %llu", "bytesFromNexus", *(&self->_packetsToNexus + 7)];
  [v5 appendFormat:@"\n %35s = %llu", "bytesToNexus", *(&self->_bytesFromNexus + 7)];
  [v5 appendFormat:@"\n %35s = %llu", "bytesFromNexusVO", *(&self->_packetsToNexusVO + 7)];
  [v5 appendFormat:@"\n %35s = %llu", "bytesToNexusVO", *(&self->_bytesFromNexusVO + 7)];
  [v5 appendFormat:@"\n %35s = %llu", "bytesFromNexusVI", *(&self->_packetsToNexusVI + 7)];
  [v5 appendFormat:@"\n %35s = %llu", "bytesToNexusVI", *(&self->_bytesFromNexusVI + 7)];
  [v5 appendFormat:@"\n %35s = %llu", "bytesFromNexusBK", *(&self->_packetsToNexusBK + 7)];
  [v5 appendFormat:@"\n %35s = %llu", "bytesToNexusBK", *(&self->_bytesFromNexusBK + 7)];
  [v5 appendFormat:@"\n %35s = %llu", "bytesFromLink", *(&self->_jointUUIDHash + 7)];
  [v5 appendFormat:@"\n %35s = %llu", "bytesToLink", *(&self->_bytesFromLink + 7)];
  [v5 appendFormat:@"\n %35s = %llu", "datagramBytesFromLink", *(&self->_bytesToLink + 7)];
  [v5 appendFormat:@"\n %35s = %llu", "datagramBytesToLink", *(&self->_datagramBytesFromLink + 7)];
  [v5 appendFormat:@"\n %35s = %llu", "urgentBytesFromLink", *(&self->_datagramBytesToLink + 7)];
  [v5 appendFormat:@"\n %35s = %llu", "urgentBytesToLink", *(&self->_urgentBytesFromLink + 7)];
  [v5 appendFormat:@"\n %35s = %llu", "syncNexusInput", *(&self->_nexusOutputAvailWake + 7)];
  [v5 appendFormat:@"\n %35s = %llu", "syncNexusOutput", *(&self->_syncNexusInput + 7)];
  [v5 appendFormat:@"\n %35s = %llu", "syncNexusVOInput", *(&self->_nexusVOOutputAvailWake + 7)];
  [v5 appendFormat:@"\n %35s = %llu", "syncNexusVOOutput", *(&self->_syncNexusVOInput + 7)];
  [v5 appendFormat:@"\n %35s = %llu", "syncNexusVIInput", *(&self->_nexusVIOutputAvailWake + 7)];
  [v5 appendFormat:@"\n %35s = %llu", "syncNexusVIOutput", *(&self->_syncNexusVIInput + 7)];
  [v5 appendFormat:@"\n %35s = %llu", "syncNexusBKInput", *(&self->_nexusBKOutputAvailWake + 7)];
  [v5 appendFormat:@"\n %35s = %llu", "syncNexusBKOutput", *(&self->_syncNexusBKInput + 7)];
  [v5 appendFormat:@"\n %35s = %llu", "syncLinkInput", *(&self->_urgentBytesToLink + 7)];
  [v5 appendFormat:@"\n %35s = %llu", "syncLinkOutput", *(&self->_syncLinkInput + 7)];
  [v5 appendFormat:@"\n %35s = %llu", "syncDatagramLinkInput", *(&self->_syncLinkOutput + 7)];
  [v5 appendFormat:@"\n %35s = %llu", "syncDatagramLinkOutput", *(&self->_syncDatagramLinkInput + 7)];
  [v5 appendFormat:@"\n %35s = %llu", "syncUrgentLinkInput", *(&self->_syncDatagramLinkOutput + 7)];
  [v5 appendFormat:@"\n %35s = %llu", "syncUrgentLinkOutput", *(&self->_syncUrgentLinkInput + 7)];
  [v5 appendFormat:@"\n %35s = %u", "filledInLinkWriteBufferBytes", *(&self->_urgentLinkWriteBufferLength + 3)];
  [v5 appendFormat:@"\n %35s = %u", "handledLinkWriteBufferBytes", *(&self->_filledInLinkWriteBufferBytes + 3)];
  [v5 appendFormat:@"\n %35s = %u", "filledInUrgentLinkWriteBufferBytes", *(&self->_controlPacketCounter + 3)];
  [v5 appendFormat:@"\n %35s = %u", "handledUrgentLinkWriteBufferBytes", *(&self->_filledInUrgentLinkWriteBufferBytes + 3)];
  if (self->_hasUrgentPrelude)
  {
    v12 = "YES";
  }

  else
  {
    v12 = "NO";
  }

  [v5 appendFormat:@"\n %35s = %s", "hasUrgentPrelude", v12];
  [v5 appendFormat:@"\n %35s = %llu", "linkInputAvailWake", *(&self->_syncUrgentLinkOutput + 7)];
  [v5 appendFormat:@"\n %35s = %llu", "linkOutputAvailWake", *(&self->_linkInputAvailWake + 7)];
  [v5 appendFormat:@"\n %35s = %llu", "datagramLinkInputAvailWake", *(&self->_linkOutputAvailWake + 7)];
  [v5 appendFormat:@"\n %35s = %llu", "datagramLinkOutputAvailWake", *(&self->_datagramLinkInputAvailWake + 7)];
  [v5 appendFormat:@"\n %35s = %llu", "nexusInputAvailWake", *(&self->_linkWriteBuffer + 7)];
  [v5 appendFormat:@"\n %35s = %llu", "nexusOutputAvailWake", *(&self->_nexusInputAvailWake + 7)];
  [v5 appendFormat:@"\n %35s = %llu", "nexusVOInputAvailWake", *(&self->_lastReadNexusVOOutputActivityCounter + 7)];
  [v5 appendFormat:@"\n %35s = %llu", "nexusVOOutputAvailWake", *(&self->_nexusVOInputAvailWake + 7)];
  [v5 appendFormat:@"\n %35s = %llu", "nexusVIInputAvailWake", *(&self->_lastReadNexusVIOutputActivityCounter + 7)];
  [v5 appendFormat:@"\n %35s = %llu", "nexusVIOutputAvailWake", *(&self->_nexusVIInputAvailWake + 7)];
  [v5 appendFormat:@"\n %35s = %llu", "nexusBKInputAvailWake", *(&self->_lastReadNexusBKOutputActivityCounter + 7)];
  [v5 appendFormat:@"\n %35s = %llu", "nexusBKOutputAvailWake", *(&self->_nexusBKInputAvailWake + 7)];
  [v5 appendFormat:@"\n %35s = %llu", "pendingBytesToLink", objc_msgSend(*(&self->_urgentLinkReadBuffer + 7), "length")];
  [v5 appendFormat:@"\n %35s = %lld (%u - %u)", "pendingBytesFromLink", *(&self->_handledlinkInputStreamBufferBytes + 3) - *(&self->_filledInLinkReadBufferBytes + 3), *(&self->_handledlinkInputStreamBufferBytes + 3), *(&self->_filledInLinkReadBufferBytes + 3)];
  [v5 appendFormat:@"\n %35s = %llu", "sentUncompressedIP", *(&self->_urgentLinkOutputAvailWake + 7)];
  [v5 appendFormat:@"\n %35s = %llu", "sentEncapsulated6LoWPAN", *(&self->_sentUncompressedIP + 7)];
  [v5 appendFormat:@"\n %35s = %llu", "sentKnownIPv6Hdr_ESP", *(&self->_sentEncapsulated6LoWPAN + 7)];
  [v5 appendFormat:@"\n %35s = %llu", "sentKnownIPv6Hdr_ESP_ECT0", *(&self->_sentKnownIPv6Hdr_ESP + 7)];
  [v5 appendFormat:@"\n %35s = %llu", "sentKnownIPv6Hdr_ESP_ClassC", *(&self->_sentKnownIPv6Hdr_ESP_ECT0 + 7)];
  [v5 appendFormat:@"\n %35s = %llu", "sentKnownIPv6Hdr_ESP_ClassC_ECT0", *(&self->_sentKnownIPv6Hdr_ESP_ClassC + 7)];
  [v5 appendFormat:@"\n %35s = %llu", "sentKnownIPv6Hdr_TCP", *(&self->_sentKnownIPv6Hdr_ESP_ClassC_ECT0 + 7)];
  [v5 appendFormat:@"\n %35s = %llu", "sentKnownIPv6Hdr_TCP_ECT0", *(&self->_sentKnownIPv6Hdr_TCP + 7)];
  [v5 appendFormat:@"\n %35s = %llu", "sentIKEv2PointToPoint", *(&self->_sentKnownIPv6Hdr_TCP_ECT0 + 7)];
  [v5 appendFormat:@"\n %35s = %llu", "recvUncompressedIP", *(&self->_sentIKEv2PointToPoint + 7)];
  [v5 appendFormat:@"\n %35s = %llu", "recvEncapsulated6LoWPAN", *(&self->_recvUncompressedIP + 7)];
  [v5 appendFormat:@"\n %35s = %llu", "recvKnownIPv6Hdr_ESP", *(&self->_recvEncapsulated6LoWPAN + 7)];
  [v5 appendFormat:@"\n %35s = %llu", "recvKnownIPv6Hdr_ESP_ECT0", *(&self->_recvKnownIPv6Hdr_ESP + 7)];
  [v5 appendFormat:@"\n %35s = %llu", "recvKnownIPv6Hdr_ESP_ClassC", *(&self->_recvKnownIPv6Hdr_ESP_ECT0 + 7)];
  [v5 appendFormat:@"\n %35s = %llu", "recvKnownIPv6Hdr_ESP_ClassC_ECT0", *(&self->_recvKnownIPv6Hdr_ESP_ClassC + 7)];
  [v5 appendFormat:@"\n %35s = %llu", "recvKnownIPv6Hdr_TCP", *(&self->_recvKnownIPv6Hdr_ESP_ClassC_ECT0 + 7)];
  [v5 appendFormat:@"\n %35s = %llu", "recvKnownIPv6Hdr_TCP_ECT0", *(&self->_recvKnownIPv6Hdr_TCP + 7)];
  [v5 appendFormat:@"\n %35s = %llu", "recvIKEv2PointToPoint", *(&self->_recvKnownIPv6Hdr_TCP_ECT0 + 7)];
  v13 = _NRCopyTimeStringForDate();
  [v5 appendFormat:@"\n %35s = %@", "lastReadNexus", v13];

  v14 = _NRCopyTimeStringForDate();
  [v5 appendFormat:@"\n %35s = %@", "lastWrittenNexus", v14];

  v15 = _NRCopyTimeStringForDate();
  [v5 appendFormat:@"\n %35s = %@", "lastReadLink", v15];

  v16 = _NRCopyTimeStringForDate();
  [v5 appendFormat:@"\n %35s = %@", "lastWrittenLink", v16];

  v17 = _NRCopyTimeStringForDate();
  [v5 appendFormat:@"\n %35s = %@", "lastReadUrgentLink", v17];

  v18 = _NRCopyTimeStringForDate();
  [v5 appendFormat:@"\n %35s = %@", "lastWrittenUrgentLink", v18];

  [v5 appendFormat:@"\n %35s = %u", "nexusRecvWindow", objc_msgSend(*(&self->_dummyPacketNexus + 7), "receiveWindowPacketCount")];
  if (self->_dLinkInputSourceSuspended)
  {
    v19 = "YES";
  }

  else
  {
    v19 = "NO";
  }

  [v5 appendFormat:@"\n %35s = %s", "dLinkInputSourceSuspended", v19];
  if (self->_dLinkOutputSourceSuspended)
  {
    v20 = "YES";
  }

  else
  {
    v20 = "NO";
  }

  [v5 appendFormat:@"\n %35s = %s", "dLinkOutputSourceSuspended", v20];
  if (self->_dUrgentLinkInputSourceSuspended)
  {
    v21 = "YES";
  }

  else
  {
    v21 = "NO";
  }

  [v5 appendFormat:@"\n %35s = %s", "dUrgentLinkInputSourceSuspended", v21];
  if (self->_dUrgentLinkOutputSourceSuspended)
  {
    v22 = "YES";
  }

  else
  {
    v22 = "NO";
  }

  [v5 appendFormat:@"\n %35s = %s", "dUrgentLinkOutputSourceSuspended", v22];
  if (self->_dDatagramLinkInputSourceSuspended)
  {
    v23 = "YES";
  }

  else
  {
    v23 = "NO";
  }

  [v5 appendFormat:@"\n %35s = %s", "dDatagramLinkInputSourceSuspended", v23];
  if (self->_dDatagramLinkOutputSourceSuspended)
  {
    v24 = "YES";
  }

  else
  {
    v24 = "NO";
  }

  [v5 appendFormat:@"\n %35s = %s", "dDatagramLinkOutputSourceSuspended", v24];
  if (self->_dNexusInputSourceSuspended)
  {
    v25 = "YES";
  }

  else
  {
    v25 = "NO";
  }

  [v5 appendFormat:@"\n %35s = %s", "dNexusInputSourceSuspended", v25];
  if (self->_dNexusOutputSourceSuspended)
  {
    v26 = "YES";
  }

  else
  {
    v26 = "NO";
  }

  [v5 appendFormat:@"\n %35s = %s", "dNexusOutputSourceSuspended", v26];
  if (self->_dNexusVOInputSourceSuspended)
  {
    v27 = "YES";
  }

  else
  {
    v27 = "NO";
  }

  [v5 appendFormat:@"\n %35s = %s", "dNexusVOInputSourceSuspended", v27];
  if (self->_dNexusVOOutputSourceSuspended)
  {
    v28 = "YES";
  }

  else
  {
    v28 = "NO";
  }

  [v5 appendFormat:@"\n %35s = %s", "dNexusVOOutputSourceSuspended", v28];
  if (self->_dNexusVIInputSourceSuspended)
  {
    v29 = "YES";
  }

  else
  {
    v29 = "NO";
  }

  [v5 appendFormat:@"\n %35s = %s", "dNexusVIInputSourceSuspended", v29];
  if (self->_dNexusVIOutputSourceSuspended)
  {
    v30 = "YES";
  }

  else
  {
    v30 = "NO";
  }

  [v5 appendFormat:@"\n %35s = %s", "dNexusVIOutputSourceSuspended", v30];
  if (self->_dNexusBKInputSourceSuspended)
  {
    v31 = "YES";
  }

  else
  {
    v31 = "NO";
  }

  [v5 appendFormat:@"\n %35s = %s", "dNexusBKInputSourceSuspended", v31];
  if (self->_dNexusBKOutputSourceSuspended)
  {
    v32 = "YES";
  }

  else
  {
    v32 = "NO";
  }

  [v5 appendFormat:@"\n %35s = %s", "dNexusBKOutputSourceSuspended", v32];
  return v5;
}

@end