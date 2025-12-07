@interface NRLinkWiFi
- (BOOL)cancelWithReason:(id)reason;
- (BOOL)initializeExternalDeviceLink;
- (BOOL)resume;
- (BOOL)sendControlData:(id)data;
- (BOOL)start;
- (BOOL)suspend;
- (id)copyDescriptionInner;
- (id)copyStatusString;
- (id)initLinkWithQueue:(id)queue linkDelegate:(id)delegate nrUUID:(id)d wifiInterfaceName:(id)name localOuterEndpoint:(id)endpoint remoteOuterEndpoint:(id)outerEndpoint listenerPortString:(id)string;
- (void)checkPeerAvailabilityWithForceAggressive:(BOOL)aggressive;
- (void)didStartTrackingNOI:(id)i;
- (void)didStopTrackingAllNOIs:(id)is;
- (void)invalidateLink;
- (void)refreshCompanionProxyAgent;
- (void)requestConfigurationForListener:(id)listener session:(id)session sessionConfig:(id)config childConfig:(id)childConfig validateAuthBlock:(id)block responseBlock:(id)responseBlock;
- (void)setIsPrimary:(BOOL)primary;
@end

@implementation NRLinkWiFi

- (BOOL)resume
{
  if (self->super._state == 255)
  {
    v4 = _NRCopyLogObjectForNRUUID();
    v5 = 1;
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v7 = _NRCopyLogObjectForNRUUID();
      copyDescription = [(NRLink *)self copyDescription];
      _NRLogWithArgs(v7, 1, "%s%.30s:%-4d %@: Already cancelled. Ignoring 'resume'", ", "[NRLinkWiFi resume]"", 1361, copyDescription);
    }
  }

  else
  {
    v15.receiver = self;
    v15.super_class = NRLinkWiFi;
    if ([(NRLink *)&v15 resume])
    {
      companionProxyAgent = self->super._companionProxyAgent;
      if (companionProxyAgent)
      {
        if (sub_100070DD8(&companionProxyAgent->super.isa, self))
        {
          [(NRLink *)self reportEvent:12002];
        }

        else
        {
          v9 = _NRCopyLogObjectForNRUUID();
          v10 = _NRLogIsLevelEnabled();

          if (v10)
          {
            v11 = _NRCopyLogObjectForNRUUID();
            copyDescription2 = [(NRLink *)self copyDescription];
            _NRLogWithArgs(v11, 16, "%s%.30s:%-4d %@: failed to register companion agent", ", "[NRLinkWiFi resume]"", 1372, copyDescription2);
          }
        }
      }

      [(NRLink *)self changeStateTo:8 details:@"(resume)"];
      [(NRLink *)self setInterfaceRank];
      linkDelegate = [(NRLink *)self linkDelegate];
      [linkDelegate linkIsReady:self];

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return v5;
}

- (BOOL)suspend
{
  v13.receiver = self;
  v13.super_class = NRLinkWiFi;
  [(NRLink *)&v13 suspend];
  if (self->super._state != 255)
  {
    [(NRLink *)self changeStateTo:9 details:@"(suspend)"];
    companionProxyAgent = self->super._companionProxyAgent;
    if (companionProxyAgent)
    {
      if (sub_100070270(companionProxyAgent))
      {
        [(NRLink *)self reportEvent:12003];
      }

      else
      {
        v8 = _NRCopyLogObjectForNRUUID();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (IsLevelEnabled)
        {
          v10 = _NRCopyLogObjectForNRUUID();
          copyDescription = [(NRLink *)self copyDescription];
          _NRLogWithArgs(v10, 16, "%s%.30s:%-4d %@: failed to unregister companion agent", ", "[NRLinkWiFi suspend]"", 1345, copyDescription);
        }
      }
    }

    [(NRLink *)self setInterfaceRank];
    linkDelegate = [(NRLink *)self linkDelegate];
    [linkDelegate linkIsSuspended:self];
    goto LABEL_10;
  }

  v4 = _NRCopyLogObjectForNRUUID();
  v5 = _NRLogIsLevelEnabled();

  if (v5)
  {
    linkDelegate = _NRCopyLogObjectForNRUUID();
    copyDescription2 = [(NRLink *)self copyDescription];
    _NRLogWithArgs(linkDelegate, 1, "%s%.30s:%-4d %@: Already cancelled. Ignoring 'suspend'", ", "[NRLinkWiFi suspend]"", 1337, copyDescription2);

LABEL_10:
  }

  return 1;
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
      objc_initWeak(&location, self);
      v7 = *(&self->_ikeListener + 7);
      v20 = v5;
      v8 = [NSArray arrayWithObjects:&v20 count:1];
      queue = [(NRLink *)self queue];
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_10004005C;
      v17[3] = &unk_1001FC018;
      objc_copyWeak(&v18, &location);
      [v7 sendPrivateNotifies:v8 maxRetries:10 retryIntervalInMilliseconds:1000 callbackQueue:queue callback:v17];

      objc_destroyWeak(&v18);
      objc_destroyWeak(&location);
    }

    else
    {
      v14 = sub_100040008();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v16 = sub_100040008();
        _NRLogWithArgs(v16, 17, "NEIKEv2PrivateNotify init %u %@ failed", 50702, dataCopy);
      }
    }
  }

  else
  {
    v11 = sub_100040008();
    v12 = _NRLogIsLevelEnabled();

    if (v12)
    {
      v13 = sub_100040008();
      _NRLogWithArgs(v13, 17, "%s called with null data", "[NRLinkWiFi sendControlData:]");
    }

    v6 = 0;
  }

  return v6;
}

- (void)requestConfigurationForListener:(id)listener session:(id)session sessionConfig:(id)config childConfig:(id)childConfig validateAuthBlock:(id)block responseBlock:(id)responseBlock
{
  listenerCopy = listener;
  sessionCopy = session;
  sessionCopy2 = session;
  configCopy = config;
  childConfigCopy = childConfig;
  blockCopy = block;
  responseBlockCopy = responseBlock;
  v20 = responseBlockCopy;
  if (!listenerCopy)
  {
    v51 = sub_100040008();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_59;
    }

    v53 = sub_100040008();
    _NRLogWithArgs(v53, 17, "%s called with null listener");
LABEL_51:

    goto LABEL_59;
  }

  if (!sessionCopy2)
  {
    v54 = sub_100040008();
    v55 = _NRLogIsLevelEnabled();

    if (!v55)
    {
      goto LABEL_59;
    }

    v53 = sub_100040008();
    _NRLogWithArgs(v53, 17, "%s called with null session");
    goto LABEL_51;
  }

  if (!configCopy)
  {
    v56 = sub_100040008();
    v57 = _NRLogIsLevelEnabled();

    if (!v57)
    {
      goto LABEL_59;
    }

    v53 = sub_100040008();
    _NRLogWithArgs(v53, 17, "%s called with null sessionConfig");
    goto LABEL_51;
  }

  if (!blockCopy)
  {
    v58 = sub_100040008();
    v59 = _NRLogIsLevelEnabled();

    if (!v59)
    {
      goto LABEL_59;
    }

    v53 = sub_100040008();
    _NRLogWithArgs(v53, 17, "%s called with null validateAuthBlock");
    goto LABEL_51;
  }

  if (responseBlockCopy)
  {
    v21 = _NRCopyLogObjectForNRUUID();
    v22 = _NRLogIsLevelEnabled();

    if (v22)
    {
      v23 = _NRCopyLogObjectForNRUUID();
      copyDescription = [(NRLink *)self copyDescription];
      _NRLogWithArgs(v23, 0, "%s%.30s:%-4d %@: Got config request for listener %@ session %@ sessionConfig %@ childConfig %@", ", "[NRLinkWiFi requestConfigurationForListener:session:sessionConfig:childConfig:validateAuthBlock:responseBlock:]"", 1110, copyDescription, listenerCopy, sessionCopy2, configCopy, childConfigCopy);
    }

    remoteEndpoint = [sessionCopy2 remoteEndpoint];
    [(NRLink *)self setRemoteOuterEndpoint:remoteEndpoint];

    state = self->super._state;
    v72 = configCopy;
    if (state == 255)
    {
      goto LABEL_56;
    }

    localIdentifier = [configCopy localIdentifier];
    v71 = childConfigCopy;
    if (qword_1002292F8 != -1)
    {
      dispatch_once(&qword_1002292F8, &stru_1001FC578);
    }

    v28 = qword_1002292F0;
    v29 = [localIdentifier isEqual:v28];

    if (!v29)
    {
      v31 = _NRCopyLogObjectForNRUUID();
      v32 = _NRLogIsLevelEnabled();

      if (v32)
      {
        v33 = _NRCopyLogObjectForNRUUID();
        copyDescription2 = [(NRLink *)self copyDescription];
        localIdentifier2 = [configCopy localIdentifier];
        _NRLogWithArgs(v33, 16, "%s%.30s:%-4d %@: Unrecognized identifier %@", ", "[NRLinkWiFi requestConfigurationForListener:session:sessionConfig:childConfig:validateAuthBlock:responseBlock:]"", 1171, copyDescription2, localIdentifier2);
      }

      v30 = 0;
      v36 = 0;
      childConfigCopy = v71;
      goto LABEL_57;
    }

    childConfigCopy = v71;
    if (v71)
    {
      v30 = sub_100146D34(1, 0);
      [v30 setMode:2];
      [v30 setReplayWindowSize:4];
    }

    else
    {
      if ([(NRLink *)self hasCompanionDatapath])
      {
LABEL_55:
        [(NRLink *)self reportEvent:3024 detailsFormat:@"ClassC %@", sessionCopy2];
LABEL_56:
        v30 = 0;
        v36 = 0;
        goto LABEL_57;
      }

      v30 = 0;
    }

    v37 = *(&self->_symptomsNOIManager + 7);
    if (v37)
    {
      ++v37[9];
    }

    v38 = nr_absolute_time();
    v39 = *(&self->_symptomsNOIManager + 7);
    if (v39)
    {
      *(v39 + 40) = v38;
    }

    childConfigCopy = [(NRLink *)self nrUUID];
    v40 = sub_100163A30(NRDLocalDevice, childConfigCopy);

    if (v40)
    {
      v36 = sub_100147400(0, v40, 3);
      v41 = objc_alloc_init(NSMutableArray);
      v69 = listenerCopy;
      if (sub_100147B98(v40))
      {
        v42 = v40[18];
        hasCompanionDatapath = [v42 hasCompanionDatapath];

        if (hasCompanionDatapath)
        {
          localOuterEndpoint = 0;
        }

        else
        {
          localOuterEndpoint = [(NRLink *)self localOuterEndpoint];
        }

        v45 = sub_100147C1C(v40, localOuterEndpoint);
        if (v45)
        {
          [v41 addObject:v45];
        }

        listenerCopy = v69;
      }

      v46 = sub_1000409E8(self);
      if (v46)
      {
        [v41 addObject:v46];
      }

      if ([v41 count])
      {
        [v36 setCustomIKEAuthPrivateNotifies:v41];
      }

      if (blockCopy[2](blockCopy, v36))
      {
        v73.receiver = self;
        v73.super_class = NRLinkWiFi;
        [(NRLink *)&v73 invalidateIKESessionForClass:3];
        [(NRLink *)self setIkeClassDEstablished:0];
        self->super._peerAvailabilityCheckInProgress = 0;
        [(NRLink *)self invalidateIKESession:&self->_ikeListener + 7];
        objc_storeStrong((&self->_ikeListener + 7), sessionCopy);
        sub_100040BCC(self);
        [(NRLink *)self reportEvent:3016 detailsFormat:@"ClassC %@", sessionCopy2];

        if ([(NRLink *)self setupVirtualInterface])
        {
          (v20)[2](v20, v36, v30, [(NRLink *)self virtualInterface]);
          listenerCopy = v69;
          childConfigCopy = v71;
LABEL_58:

          configCopy = v72;
          goto LABEL_59;
        }

        v47 = _NRCopyLogObjectForNRUUID();
        v48 = _NRLogIsLevelEnabled();

        listenerCopy = v69;
        childConfigCopy = v71;
        if (v48)
        {
          v49 = _NRCopyLogObjectForNRUUID();
          copyDescription3 = [(NRLink *)self copyDescription];
          _NRLogWithArgs(v49, 17, "%@: Failed to setup virtual interface", copyDescription3);
        }
      }

      else
      {
        [(NRLink *)self reportEvent:3021 detailsFormat:@"ClassC %@", sessionCopy2];

        childConfigCopy = v71;
      }

LABEL_57:
      v20[2](v20, 0, 0, 0);
      goto LABEL_58;
    }

    v62 = sub_100040008();
    v63 = _NRLogIsLevelEnabled();

    if (v63)
    {
      v64 = sub_100040008();
      _NRLogWithArgs(v64, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (localDevice) != ((void*)0)", ", "[NRLinkWiFi requestConfigurationForListener:session:sessionConfig:childConfig:validateAuthBlock:responseBlock:]"", 1136);
    }

    v65 = _os_log_pack_size();
    sessionCopy2 = &v68 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    v66 = __error();
    v67 = _os_log_pack_fill(sessionCopy2, v65, *v66, &_mh_execute_header, "%{public}s Assertion Failed: (localDevice) != ((void*)0)");
    *v67 = 136446210;
    *(v67 + 4) = "[NRLinkWiFi requestConfigurationForListener:session:sessionConfig:childConfig:validateAuthBlock:responseBlock:]";
    sub_100040008();
    _NRLogAbortWithPack();
    goto LABEL_55;
  }

  v60 = sub_100040008();
  v61 = _NRLogIsLevelEnabled();

  if (v61)
  {
    v53 = sub_100040008();
    _NRLogWithArgs(v53, 17, "%s called with null responseBlock");
    goto LABEL_51;
  }

LABEL_59:
}

- (void)checkPeerAvailabilityWithForceAggressive:(BOOL)aggressive
{
  aggressiveCopy = aggressive;
  peerAvailabilityCheckInProgress = [(NRLink *)self peerAvailabilityCheckInProgress];
  v6 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (peerAvailabilityCheckInProgress)
  {
    if (IsLevelEnabled)
    {
      v16 = _NRCopyLogObjectForNRUUID();
      copyDescription = [(NRLink *)self copyDescription];
      _NRLogWithArgs(v16, 0, "%s%.30s:%-4d %@: peer availability check already in progress, ignoring request", ", "[NRLinkWiFi checkPeerAvailabilityWithForceAggressive:]"", 733, copyDescription);
    }
  }

  else
  {
    if (IsLevelEnabled)
    {
      v9 = _NRCopyLogObjectForNRUUID();
      copyDescription2 = [(NRLink *)self copyDescription];
      _NRLogWithArgs(v9, 0, "%s%.30s:%-4d %@: peer availability check requested (aggresive: %d)", ", "[NRLinkWiFi checkPeerAvailabilityWithForceAggressive:]"", 736, copyDescription2, aggressiveCopy);
    }

    self->super._peerAvailabilityCheckInProgress = 1;
    objc_initWeak(&location, self);
    v11 = *(&self->_ikeListener + 7);
    queue = [(NRLink *)self queue];
    v13 = !aggressiveCopy;
    if (aggressiveCopy)
    {
      v14 = 1000;
    }

    else
    {
      v14 = 3000;
    }

    if (v13)
    {
      v15 = 3;
    }

    else
    {
      v15 = 5;
    }

    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100043BC8;
    v17[3] = &unk_1001FC018;
    objc_copyWeak(&v18, &location);
    [v11 sendKeepaliveWithRetries:v15 retryIntervalInMilliseconds:v14 callbackQueue:queue callback:v17];

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }
}

- (void)didStopTrackingAllNOIs:(id)is
{
  if ([(NRLink *)self state]!= 255)
  {
    v4 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v6 = _NRCopyLogObjectForNRUUID();
      copyDescription = [(NRLink *)self copyDescription];
      _NRLogWithArgs(v6, 0, "%s%.30s:%-4d %@: re-submitting live-link monitor preferences", ", "[NRLinkWiFi didStopTrackingAllNOIs:]"", 723, copyDescription);
    }

    sub_100043E38(self);

    sub_100043264(self);
  }
}

- (void)didStartTrackingNOI:(id)i
{
  v4 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v6 = _NRCopyLogObjectForNRUUID();
    copyDescription = [(NRLink *)self copyDescription];
    _NRLogWithArgs(v6, 0, "%s%.30s:%-4d %@: submitting live-link monitor preferences", ", "[NRLinkWiFi didStartTrackingNOI:]"", 711, copyDescription);
  }

  v8 = nr_absolute_time();
  v9 = *(&self->_symptomsNOIManager + 7);
  if (v9)
  {
    *(v9 + 120) = v8;
  }

  if (*(&self->_symptomsAdvisoryCounter + 3) == -1)
  {
    if (!&_symptom_new)
    {
      v11 = _NRCopyLogObjectForNRUUID();
      v12 = _NRLogIsLevelEnabled();

      if (v12)
      {
        v28 = _NRCopyLogObjectForNRUUID();
        copyDescription2 = [(NRLink *)self copyDescription];
        _NRLogWithArgs(v28, 16, "%s%.30s:%-4d %@: SymptomReporterFramework not present, skipping.", ", "[NRLinkWiFi startSymptomsMonitor]"", 606, copyDescription2);
      }

      return;
    }

    if (qword_100229278 != -1)
    {
      dispatch_once(&qword_100229278, &stru_1001FC410);
    }

    if (!symptom_new())
    {
      if (qword_100228F90 != -1)
      {
        dispatch_once(&qword_100228F90, &stru_1001FAA30);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100228F90 != -1)
        {
          dispatch_once(&qword_100228F90, &stru_1001FAA30);
        }

        v14 = qword_100228F88;

        _NRLogWithArgs(v14, 17, "symptom_new failed");
      }

      return;
    }

    if ([(NRLink *)self hasCompanionDatapath])
    {
      [(NRLink *)self virtualInterface];
      localInterfaceName = NEVirtualInterfaceCopyName();
    }

    else
    {
      localInterfaceName = [(NRLink *)self localInterfaceName];
    }

    v15 = localInterfaceName;
    [localInterfaceName length];
    [v15 UTF8String];
    symptom_set_additional_qualifier();
    if (symptom_send())
    {
      v16 = _NRCopyLogObjectForNRUUID();
      v17 = _NRLogIsLevelEnabled();

      if (v17)
      {
        v18 = _NRCopyLogObjectForNRUUID();
        copyDescription3 = [(NRLink *)self copyDescription];
        _NRLogWithArgs(v18, 17, "%@: failed to send symptom to start link monitoring", copyDescription3);
      }

      goto LABEL_41;
    }

    objc_initWeak(&location, self);
    queue = [(NRLink *)self queue];
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1000446AC;
    handler[3] = &unk_1001FD278;
    objc_copyWeak(&v30, &location);
    v21 = notify_register_dispatch("com.apple.symptoms.liveLinkHasAdvice", (&self->_symptomsAdvisoryCounter + 3), queue, handler);

    if (v21 || *(&self->_symptomsAdvisoryCounter + 3) == -1)
    {
      if (qword_100228F90 != -1)
      {
        dispatch_once(&qword_100228F90, &stru_1001FAA30);
      }

      v22 = qword_100228F88;
      v23 = _NRLogIsLevelEnabled();

      if ((v23 & 1) == 0)
      {
        goto LABEL_40;
      }

      if (qword_100228F90 != -1)
      {
        dispatch_once(&qword_100228F90, &stru_1001FAA30);
      }

      v24 = qword_100228F88;
      _NRLogWithArgs(v24, 17, "notify_register_dispatch (status: %u, token: %d) failed", v21, *(&self->_symptomsAdvisoryCounter + 3));
    }

    else
    {
      v25 = _NRCopyLogObjectForNRUUID();
      v26 = _NRLogIsLevelEnabled();

      if (!v26)
      {
LABEL_40:
        objc_destroyWeak(&v30);
        objc_destroyWeak(&location);
LABEL_41:

        return;
      }

      v24 = _NRCopyLogObjectForNRUUID();
      copyDescription4 = [(NRLink *)self copyDescription];
      _NRLogWithArgs(v24, 0, "%s%.30s:%-4d %@: successfully sent symptom to start link monitoring on interface: %@", ", "[NRLinkWiFi startSymptomsMonitor]"", 662, copyDescription4, v15);
    }

    goto LABEL_40;
  }
}

- (BOOL)cancelWithReason:(id)reason
{
  reasonCopy = reason;
  if (reasonCopy)
  {
    v37 = &v39;
    v5 = [[NSString alloc] initWithFormat:reasonCopy arguments:&v39];
    v6 = [(NRLink *)self changeStateTo:255 details:v5];
    v7 = _NRCopyLogObjectForNRUUID();
    if (v6)
    {
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v9 = _NRCopyLogObjectForNRUUID();
        copyDescription = [(NRLink *)self copyDescription];
        _NRLogWithArgs(v9, 16, "%s%.30s:%-4d %@: Cancelling due to %@, dumping last status:", ", "[NRLinkWiFi cancelWithReason:]"", 393, copyDescription, v5);
      }

      v32 = v5;
      copyStatusString = [(NRLinkWiFi *)self copyStatusString];
      copyDescription3 = [copyStatusString componentsSeparatedByString:@"\n"];
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v12 = [copyDescription3 countByEnumeratingWithState:&v33 objects:v38 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v34;
        do
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v34 != v14)
            {
              objc_enumerationMutation(copyDescription3);
            }

            v16 = *(*(&v33 + 1) + 8 * i);
            v17 = _NRCopyLogObjectForNRUUID();
            v18 = _NRLogIsLevelEnabled();

            if (v18)
            {
              v19 = _NRCopyLogObjectForNRUUID();
              copyDescription2 = [(NRLink *)self copyDescription];
              _NRLogWithArgs(v19, 16, "%s%.30s:%-4d %@: %@", ", "[NRLinkWiFi cancelWithReason:]"", 397, copyDescription2, v16);
            }
          }

          v13 = [copyDescription3 countByEnumeratingWithState:&v33 objects:v38 count:16];
        }

        while (v13);
      }

      linkDelegate = [(NRLink *)self linkDelegate];
      [linkDelegate linkIsUnavailable:self];

      [(NRLinkWiFi *)self invalidateLink];
      v24 = *(&self->_symptomsNOIManager + 7);
      if (v24)
      {
        *(v24 + 136) = *(&self->_ikeRetryCounter + 3);
      }

      [(NRLink *)self linkTotalReadyTimeInSec];
      v26 = *(&self->_symptomsNOIManager + 7);
      v5 = v32;
      if (v26)
      {
        *(v26 + 24) = v25;
        v27 = *(&self->_symptomsNOIManager + 7);
      }

      else
      {
        v27 = 0;
      }

      v22 = copyStatusString;
      [v27 submit];
      goto LABEL_21;
    }

    v21 = _NRLogIsLevelEnabled();

    if (v21)
    {
      v22 = _NRCopyLogObjectForNRUUID();
      copyDescription3 = [(NRLink *)self copyDescription];
      _NRLogWithArgs(v22, 0, "%s%.30s:%-4d %@: link already cancelled", ", "[NRLinkWiFi cancelWithReason:]"", 389, copyDescription3);
LABEL_21:
    }
  }

  else
  {
    v29 = sub_100040008();
    v30 = _NRLogIsLevelEnabled();

    if (!v30)
    {
      goto LABEL_23;
    }

    v5 = sub_100040008();
    _NRLogWithArgs(v5, 17, "%s called with null reasonFormat", "[NRLinkWiFi cancelWithReason:]");
  }

LABEL_23:
  return reasonCopy != 0;
}

- (BOOL)initializeExternalDeviceLink
{
  v7.receiver = self;
  v7.super_class = NRLinkWiFi;
  initializeExternalDeviceLink = [(NRLink *)&v7 initializeExternalDeviceLink];
  if (initializeExternalDeviceLink)
  {
    v4 = initializeExternalDeviceLink;
    [(NRLink *)self changeStateTo:8];
    linkDelegate = [(NRLink *)self linkDelegate];
    [linkDelegate linkIsReady:self];

    LOBYTE(initializeExternalDeviceLink) = v4;
  }

  return initializeExternalDeviceLink;
}

- (BOOL)start
{
  queue = [(NRLink *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([(NRLink *)self state]== 255)
  {
    v6 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      return 0;
    }

    v8 = _NRCopyLogObjectForNRUUID();
    copyDescription = [(NRLink *)self copyDescription];
    _NRLogWithArgs(v8, 1, "%s%.30s:%-4d %@: Ignoring start request as link is cancelled", ", "[NRLinkWiFi start]"", 294, copyDescription);
    goto LABEL_6;
  }

  if ([(NRLink *)self state]== 8)
  {
    linkDelegate = [(NRLink *)self linkDelegate];
    [linkDelegate linkIsReady:self];

    return 1;
  }

  if ([(NRLink *)self state]!= 9)
  {
    if ([(NRLink *)self startRequested])
    {
      return 1;
    }

    [(NRLink *)self updateIKEv2Role:&self->_isResponder];
    if (!self)
    {
      return 0;
    }

    if (!self->_isResponder)
    {
      remoteOuterEndpoint = [(NRLink *)self remoteOuterEndpoint];

      if (!remoteOuterEndpoint)
      {
        return 0;
      }

      v11 = sub_100163A30(NRDLocalDevice, self->super._nrUUID);
      v8 = v11;
      if (v11 && (*(v11 + 49) & 0x20) != 0 || [(NRLink *)self ikev2Role])
      {
      }

      else
      {
        peerToken = [(NRLink *)self peerToken];
        if (!peerToken)
        {
          goto LABEL_7;
        }

        v27 = peerToken;
        localToken = [(NRLink *)self localToken];

        if (!localToken)
        {
          return 0;
        }
      }
    }

    [(NRLink *)self setStartRequested:1];
    localInterfaceName = [(NRLink *)self localInterfaceName];

    if (localInterfaceName)
    {
      if ([(NRLink *)self state]== 1)
      {
        v13 = sub_100163A30(NRDLocalDevice, self->super._nrUUID);
        v14 = v13;
        if (v13)
        {
          v15 = *(v13 + 48);
          if ((v15 & 8) != 0)
          {
            v20 = *(&self->_symptomsNOIManager + 7);
            if (v20)
            {
              *(v20 + 16) = 1;
            }

            if (![(NRLinkWiFi *)self initializeExternalDeviceLink])
            {
              v21 = _NRCopyLogObjectForNRUUID();
              v22 = _NRLogIsLevelEnabled();

              if (v22)
              {
                v23 = _NRCopyLogObjectForNRUUID();
                copyDescription2 = [(NRLink *)self copyDescription];
                _NRLogWithArgs(v23, 17, "%@: failed to setup external device link", copyDescription2);
              }

              v25 = 0;
              goto LABEL_39;
            }

LABEL_36:
            if ([(NRLink *)self subtype]== 102)
            {
              sub_100045628(self);
            }

            v25 = 1;
LABEL_39:

            return v25;
          }

          if ((v15 & 0x2000) != 0)
          {
            sub_10004530C(self);
            goto LABEL_36;
          }
        }

        sub_100045068(self);
        goto LABEL_36;
      }

      v16 = _NRCopyLogObjectForNRUUID();
      v17 = _NRLogIsLevelEnabled();

      if (v17)
      {
        v8 = _NRCopyLogObjectForNRUUID();
        copyDescription3 = [(NRLink *)self copyDescription];
        v19 = sub_1001415A0([(NRLink *)self state]);
        _NRLogWithArgs(v8, 17, "%@: Cannot start link in state %@", copyDescription3, v19);

        goto LABEL_7;
      }

      return 0;
    }

    v29 = _NRCopyLogObjectForNRUUID();
    v30 = _NRLogIsLevelEnabled();

    if (!v30)
    {
      return 0;
    }

    v8 = _NRCopyLogObjectForNRUUID();
    copyDescription = [(NRLink *)self copyDescription];
    _NRLogWithArgs(v8, 17, "%@: Cannot start Wi-Fi link without wifiInterfaceName", copyDescription);
LABEL_6:

LABEL_7:
    return 0;
  }

  return [(NRLinkWiFi *)self resume];
}

- (id)copyDescriptionInner
{
  v3 = [NSString alloc];
  v9.receiver = self;
  v9.super_class = NRLinkWiFi;
  copyDescriptionInner = [(NRLink *)&v9 copyDescriptionInner];
  localOuterEndpoint = [(NRLink *)self localOuterEndpoint];
  remoteOuterEndpoint = [(NRLink *)self remoteOuterEndpoint];
  v7 = [v3 initWithFormat:@"%@, %@ -> %@", copyDescriptionInner, localOuterEndpoint, remoteOuterEndpoint];

  return v7;
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
      _NRLogWithArgs(v7, 1, "%s%.30s:%-4d %@: Already cancelled. Ignoring 'refreshCompanionProxyAgent'", ", "[NRLinkWiFi refreshCompanionProxyAgent]"", 202, copyDescription);
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
  v19.receiver = self;
  v19.super_class = NRLinkWiFi;
  [(NRLink *)&v19 invalidateLink];
  if (self)
  {
    v20.receiver = self;
    v20.super_class = NRLinkWiFi;
    [(NRLink *)&v20 invalidateIKESessionForClass:3];
    [(NRLink *)self setIkeClassDEstablished:0];
    self->super._peerAvailabilityCheckInProgress = 0;
    [(NRLink *)self invalidateIKESession:&self->_ikeListener + 7];
    v3 = *(&self->_listenerPortString + 7);
    if (v3)
    {
      [v3 cancel];
      v4 = *(&self->_listenerPortString + 7);
      *(&self->_listenerPortString + 7) = 0;
    }

    v5 = *(&self->_randomUUIDForWiFiAssertion + 7);
    if (v5)
    {
      nw_browser_cancel(v5);
      v6 = *(&self->_randomUUIDForWiFiAssertion + 7);
      *(&self->_randomUUIDForWiFiAssertion + 7) = 0;

      v7 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v9 = _NRCopyLogObjectForNRUUID();
        copyDescription = [(NRLink *)self copyDescription];
        _NRLogWithArgs(v9, 0, "%s%.30s:%-4d %@: stopped AWDL browser", ", "[NRLinkWiFi stopAWDLBrowser]"", 495, copyDescription);
      }
    }

    sub_100043E38(self);
    v11 = *(&self->_ikeSessionClassC + 7);
    if (v11)
    {
      [v11 setDelegate:0];
      [*(&self->_ikeSessionClassC + 7) destroy];
      v12 = *(&self->_ikeSessionClassC + 7);
      *(&self->_ikeSessionClassC + 7) = 0;
    }
  }

  else
  {
    sub_100043E38(0);
  }

  if ([(NRLink *)self virtualInterface])
  {
    [(NRLink *)self virtualInterface];
    NEVirtualInterfaceSetRankNever();
    [(NRLink *)self virtualInterface];
    NEVirtualInterfaceUpdateAdHocService();
  }

  [(NRLink *)self invalidateVirtualInterface];
  companionProxyAgent = self->super._companionProxyAgent;
  if (companionProxyAgent)
  {
    sub_100070270(companionProxyAgent);
    [(NRLink *)self reportEvent:12003];
    v14 = self->super._companionProxyAgent;
    self->super._companionProxyAgent = 0;
  }

  objc_opt_self();
  if (qword_1002290C0 != -1)
  {
    dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
  }

  v15 = qword_1002290B8;
  v16 = v15;
  if (v15)
  {
    v17 = *(v15 + 6);
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;
  sub_10017EDB4(v18, 0, *(&self->_linkAnalytics + 7));

  *(&self->_ikeRetryCounter + 3) = 0;
  *(&self->_ikeRetryBackoffScheduled + 2) = 0;
  *(&self->_startRetryCounter + 3) = 0;
}

- (void)setIsPrimary:(BOOL)primary
{
  primaryCopy = primary;
  v21.receiver = self;
  v21.super_class = NRLinkWiFi;
  [(NRLink *)&v21 setIsPrimary:?];
  objc_opt_self();
  if (qword_1002290C0 != -1)
  {
    dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
  }

  v5 = qword_1002290B8;
  v6 = v5;
  if (v5)
  {
    v7 = *(v5 + 6);
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  v9 = v8;
  if (primaryCopy)
  {
    if (self)
    {
      v10 = *(&self->_linkAnalytics + 7);
    }

    else
    {
      v10 = 0;
    }

    sub_10017F43C(v8, 32, v10, &off_10020A048);

    objc_opt_self();
    if (qword_1002290C0 != -1)
    {
      dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
    }

    v11 = qword_1002290B8;
    v12 = v11;
    if (v11)
    {
      v13 = *(v11 + 6);
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;
    v15 = v14;
    if (self)
    {
      v16 = *(&self->_linkAnalytics + 7);
    }

    else
    {
      v16 = 0;
    }

    v17 = 1;
  }

  else
  {
    if (self)
    {
      v18 = *(&self->_linkAnalytics + 7);
    }

    else
    {
      v18 = 0;
    }

    sub_10017F364(v8, v18);

    objc_opt_self();
    if (qword_1002290C0 != -1)
    {
      dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
    }

    v19 = qword_1002290B8;
    v12 = v19;
    if (v19)
    {
      v20 = *(v19 + 6);
    }

    else
    {
      v20 = 0;
    }

    v14 = v20;
    v15 = v14;
    if (self)
    {
      v16 = *(&self->_linkAnalytics + 7);
    }

    else
    {
      v16 = 0;
    }

    v17 = 0;
  }

  sub_10017EDB4(v14, v17, v16);
}

- (id)initLinkWithQueue:(id)queue linkDelegate:(id)delegate nrUUID:(id)d wifiInterfaceName:(id)name localOuterEndpoint:(id)endpoint remoteOuterEndpoint:(id)outerEndpoint listenerPortString:(id)string
{
  queueCopy = queue;
  delegateCopy = delegate;
  dCopy = d;
  nameCopy = name;
  endpointCopy = endpoint;
  outerEndpointCopy = outerEndpoint;
  stringCopy = string;
  if (!queueCopy)
  {
    v32 = sub_100040008();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_26;
    }

    v34 = sub_100040008();
    _NRLogWithArgs(v34, 17, "%s called with null queue");
LABEL_22:

    selfCopy = 0;
    goto LABEL_9;
  }

  if (!delegateCopy)
  {
    v35 = sub_100040008();
    v36 = _NRLogIsLevelEnabled();

    if (!v36)
    {
      goto LABEL_26;
    }

    v34 = sub_100040008();
    _NRLogWithArgs(v34, 17, "%s called with null linkDelegate");
    goto LABEL_22;
  }

  if (!dCopy)
  {
    v37 = sub_100040008();
    v38 = _NRLogIsLevelEnabled();

    if (!v38)
    {
      goto LABEL_26;
    }

    v34 = sub_100040008();
    _NRLogWithArgs(v34, 17, "%s called with null nrUUID");
    goto LABEL_22;
  }

  if ((_NRIsUUIDNonZero() & 1) == 0)
  {
    v39 = sub_100040008();
    v40 = _NRLogIsLevelEnabled();

    if (!v40)
    {
      goto LABEL_26;
    }

    v34 = sub_100040008();
    _NRLogWithArgs(v34, 17, "called with all-zero nrUUID");
    goto LABEL_22;
  }

  if (!nameCopy)
  {
    v41 = sub_100040008();
    v42 = _NRLogIsLevelEnabled();

    if (!v42)
    {
      goto LABEL_26;
    }

    v34 = sub_100040008();
    _NRLogWithArgs(v34, 17, "%s called with null wifiInterfaceName");
    goto LABEL_22;
  }

  if (!endpointCopy)
  {
    v43 = sub_100040008();
    v44 = _NRLogIsLevelEnabled();

    if (v44)
    {
      v34 = sub_100040008();
      _NRLogWithArgs(v34, 17, "%s called with null localOuterEndpoint");
      goto LABEL_22;
    }

LABEL_26:
    selfCopy = 0;
    goto LABEL_9;
  }

  v48.receiver = self;
  v48.super_class = NRLinkWiFi;
  v22 = [(NRLink *)&v48 initLinkWithQueue:queueCopy linkDelegate:delegateCopy nrUUID:dCopy];
  if (!v22)
  {
    v45 = sub_100040008();
    v46 = _NRLogIsLevelEnabled();

    if (v46)
    {
      v47 = sub_100040008();
      _NRLogWithArgs(v47, 17, "[NRLink initLinkWithQueue:] failed");
    }

    self = 0;
    goto LABEL_26;
  }

  v23 = v22;
  [v22 setType:2];
  [v23 setSubtype:101];
  [v23 setLocalInterfaceName:nameCopy];
  [v23 setLocalOuterEndpoint:endpointCopy];
  [v23 setRemoteOuterEndpoint:outerEndpointCopy];
  objc_storeStrong((v23 + 279), string);
  *(v23 + 271) = -1;
  v24 = objc_alloc_init(NRAnalyticsCmpnLinkWiFi);
  v25 = *(v23 + 311);
  *(v23 + 311) = v24;

  v26 = +[NSUUID UUID];
  v27 = *(v23 + 319);
  *(v23 + 319) = v26;

  uUIDString = [dCopy UUIDString];
  [v23 reportEvent:3000 details:uUIDString];

  linkDelegate = [v23 linkDelegate];
  [linkDelegate linkIsAvailable:v23];

  self = v23;
  selfCopy = self;
LABEL_9:

  return selfCopy;
}

- (id)copyStatusString
{
  v3 = [NSMutableString alloc];
  v4 = [(NRLink *)self description];
  v5 = [v3 initWithString:v4];

  [v5 appendFormat:@"\n %35s = %@", "nrUUID", self->super._nrUUID];
  localInterfaceName = [(NRLink *)self localInterfaceName];
  [v5 appendFormat:@"\n %35s = %@", "localInterfaceName", localInterfaceName];

  [v5 appendFormat:@"\n %35s = %@", "listenerPortString", *(&self->_notifyToken + 7)];
  [v5 appendFormat:@"\n %35s = %@", "ikeSessionClassC", *(&self->_ikeListener + 7)];
  if (self->super._virtualInterface)
  {
    v7 = NEVirtualInterfaceCopyName();
    [v5 appendFormat:@"\n %35s = %@", "virtualInterfaceName", v7];
  }

  v8 = *(&self->_symptomsNOIManager + 7);
  if (v8)
  {
    v8 = *(v8 + 128);
  }

  [v5 appendFormat:@"\n %35s = %llu", "symptomsAdvisoryFalsePositives", v8];
  return v5;
}

@end