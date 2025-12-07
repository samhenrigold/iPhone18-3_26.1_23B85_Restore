@interface NRLinkFixedInterface
- (BOOL)cancelWithReason:(id)reason;
- (BOOL)resume;
- (BOOL)sendControlData:(id)data;
- (BOOL)start;
- (BOOL)suspend;
- (id)copyDescriptionInner;
- (id)copyStatusString;
- (void)invalidateIKESessionForClass:(unsigned __int8)class;
- (void)invalidateLink;
- (void)requestConfigurationForListener:(id)listener session:(id)session sessionConfig:(id)config childConfig:(id)childConfig validateAuthBlock:(id)block responseBlock:(id)responseBlock;
@end

@implementation NRLinkFixedInterface

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
      _NRLogWithArgs(v7, 1, "%s%.30s:%-4d %@: Already cancelled. Ignoring 'resume'", ", "[NRLinkFixedInterface resume]"", 672, copyDescription);
    }
  }

  else
  {
    v15.receiver = self;
    v15.super_class = NRLinkFixedInterface;
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
            _NRLogWithArgs(v11, 16, "%s%.30s:%-4d %@: failed to register companion agent", ", "[NRLinkFixedInterface resume]"", 683, copyDescription2);
          }
        }
      }

      [(NRLink *)self changeStateTo:8 details:@"(resume)"];
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
  v13.super_class = NRLinkFixedInterface;
  [(NRLink *)&v13 suspend];
  if (self->super._state != 255)
  {
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
          _NRLogWithArgs(v10, 16, "%s%.30s:%-4d %@: failed to unregister companion agent", ", "[NRLinkFixedInterface suspend]"", 656, copyDescription);
        }
      }
    }

    [(NRLink *)self changeStateTo:9 details:@"(suspend)"];
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
    _NRLogWithArgs(linkDelegate, 1, "%s%.30s:%-4d %@: Already cancelled. Ignoring 'suspend'", ", "[NRLinkFixedInterface suspend]"", 650, copyDescription2);

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
      v17[2] = sub_1000747E0;
      v17[3] = &unk_1001FC018;
      objc_copyWeak(&v18, &location);
      [v7 sendPrivateNotifies:v8 maxRetries:10 retryIntervalInMilliseconds:1000 callbackQueue:queue callback:v17];

      objc_destroyWeak(&v18);
      objc_destroyWeak(&location);
    }

    else
    {
      v14 = sub_10007478C();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v16 = sub_10007478C();
        _NRLogWithArgs(v16, 17, "NEIKEv2PrivateNotify init %u %@ failed", 50702, dataCopy);
      }
    }
  }

  else
  {
    v11 = sub_10007478C();
    v12 = _NRLogIsLevelEnabled();

    if (v12)
    {
      v13 = sub_10007478C();
      _NRLogWithArgs(v13, 17, "%s called with null data", "[NRLinkFixedInterface sendControlData:]");
    }

    v6 = 0;
  }

  return v6;
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
    v46 = sub_10007478C();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_45;
    }

    v48 = sub_10007478C();
    _NRLogWithArgs(v48, 17, "%s called with null listener");
LABEL_37:

    goto LABEL_45;
  }

  if (!sessionCopy)
  {
    v49 = sub_10007478C();
    v50 = _NRLogIsLevelEnabled();

    if (!v50)
    {
      goto LABEL_45;
    }

    v48 = sub_10007478C();
    _NRLogWithArgs(v48, 17, "%s called with null session");
    goto LABEL_37;
  }

  if (!configCopy)
  {
    v51 = sub_10007478C();
    v52 = _NRLogIsLevelEnabled();

    if (!v52)
    {
      goto LABEL_45;
    }

    v48 = sub_10007478C();
    _NRLogWithArgs(v48, 17, "%s called with null sessionConfig");
    goto LABEL_37;
  }

  if (!blockCopy)
  {
    v53 = sub_10007478C();
    v54 = _NRLogIsLevelEnabled();

    if (!v54)
    {
      goto LABEL_45;
    }

    v48 = sub_10007478C();
    _NRLogWithArgs(v48, 17, "%s called with null validateAuthBlock");
    goto LABEL_37;
  }

  if (responseBlockCopy)
  {
    v21 = _NRCopyLogObjectForNRUUID();
    v22 = _NRLogIsLevelEnabled();

    if (v22)
    {
      v23 = _NRCopyLogObjectForNRUUID();
      copyDescription = [(NRLink *)self copyDescription];
      _NRLogWithArgs(v23, 0, "%s%.30s:%-4d %@: Got config request for listener %@ session %@ sessionConfig %@ childConfig %@", ", "[NRLinkFixedInterface requestConfigurationForListener:session:sessionConfig:childConfig:validateAuthBlock:responseBlock:]"", 540, copyDescription, listenerCopy, sessionCopy, configCopy, childConfigCopy);
    }

    state = self->super._state;
    v67 = sessionCopy;
    if (state == 255)
    {
      goto LABEL_42;
    }

    localIdentifier = [configCopy localIdentifier];
    sessionCopy2 = session;
    if (qword_1002292E8 != -1)
    {
      dispatch_once(&qword_1002292E8, &stru_1001FC558);
    }

    v27 = qword_1002292E0;
    v28 = [localIdentifier isEqual:v27];

    if (!v28)
    {
      v30 = listenerCopy;
      v31 = _NRCopyLogObjectForNRUUID();
      v32 = _NRLogIsLevelEnabled();

      if (v32)
      {
        v33 = _NRCopyLogObjectForNRUUID();
        copyDescription2 = [(NRLink *)self copyDescription];
        [configCopy localIdentifier];
        v35 = childConfigCopy;
        v37 = v36 = configCopy;
        _NRLogWithArgs(v33, 16, "%s%.30s:%-4d %@: Unrecognized identifier %@", ", "[NRLinkFixedInterface requestConfigurationForListener:session:sessionConfig:childConfig:validateAuthBlock:responseBlock:]"", 585, copyDescription2, v37);

        configCopy = v36;
        childConfigCopy = v35;
      }

      v38 = 0;
      v29 = 0;
      listenerCopy = v30;
      goto LABEL_43;
    }

    if (childConfigCopy)
    {
      v29 = sub_100146D34(1, 0);
      [v29 setMode:2];
      [v29 setReplayWindowSize:4];
    }

    else
    {
      if ([(NRLink *)self hasCompanionDatapath])
      {
LABEL_41:
        [(NRLink *)self reportEvent:3024 detailsFormat:@"ClassD %@", sessionCopy];
LABEL_42:
        v38 = 0;
        v29 = 0;
        goto LABEL_43;
      }

      v29 = 0;
    }

    sessionCopy = [(NRLink *)self nrUUID];
    v39 = sub_100163A30(NRDLocalDevice, sessionCopy);

    if (v39)
    {
      v63 = childConfigCopy;
      v38 = sub_100147400(0, v39, 4);
      v40 = v39[18];
      hasCompanionDatapath = [v40 hasCompanionDatapath];

      v64 = configCopy;
      v65 = listenerCopy;
      if (hasCompanionDatapath)
      {
        localOuterEndpoint = 0;
      }

      else
      {
        localOuterEndpoint = [(NRLink *)self localOuterEndpoint];
      }

      v43 = sub_100147C1C(v39, localOuterEndpoint);
      v68[0] = v43;
      v44 = sub_100147A80();
      v68[1] = v44;
      v45 = [NSArray arrayWithObjects:v68 count:2];
      [v38 setCustomIKEAuthPrivateNotifies:v45];

      if (blockCopy[2](blockCopy, v38))
      {
        [(NRLinkFixedInterface *)self invalidateIKESessionForClass:4];
        objc_storeStrong((&self->_ikeListener + 7), sessionCopy2);
        sub_10007501C(self);
        [(NRLink *)self reportEvent:3016 detailsFormat:@"ClassD %@", v67];

        configCopy = v64;
        listenerCopy = v65;
        childConfigCopy = v63;
        if ([(NRLink *)self setupVirtualInterface])
        {
          (v20)[2](v20, v38, v29, [(NRLink *)self virtualInterface]);
LABEL_44:

          sessionCopy = v67;
          goto LABEL_45;
        }
      }

      else
      {
        [(NRLink *)self reportEvent:3021 detailsFormat:@"ClassD %@", v67];

        configCopy = v64;
        listenerCopy = v65;
        childConfigCopy = v63;
      }

LABEL_43:
      v20[2](v20, 0, 0, 0);
      goto LABEL_44;
    }

    v57 = sub_10007478C();
    v58 = _NRLogIsLevelEnabled();

    if (v58)
    {
      v59 = sub_10007478C();
      _NRLogWithArgs(v59, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (localDevice) != ((void*)0)", ", "[NRLinkFixedInterface requestConfigurationForListener:session:sessionConfig:childConfig:validateAuthBlock:responseBlock:]"", 561);
    }

    v60 = _os_log_pack_size();
    listenerCopy = &v63 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    v61 = __error();
    v62 = _os_log_pack_fill(listenerCopy, v60, *v61, &_mh_execute_header, "%{public}s Assertion Failed: (localDevice) != ((void*)0)");
    *v62 = 136446210;
    *(v62 + 4) = "[NRLinkFixedInterface requestConfigurationForListener:session:sessionConfig:childConfig:validateAuthBlock:responseBlock:]";
    sub_10007478C();
    _NRLogAbortWithPack();
    goto LABEL_41;
  }

  v55 = sub_10007478C();
  v56 = _NRLogIsLevelEnabled();

  if (v56)
  {
    v48 = sub_10007478C();
    _NRLogWithArgs(v48, 17, "%s called with null responseBlock");
    goto LABEL_37;
  }

LABEL_45:
}

- (void)invalidateIKESessionForClass:(unsigned __int8)class
{
  classCopy = class;
  v5.receiver = self;
  v5.super_class = NRLinkFixedInterface;
  [(NRLink *)&v5 invalidateIKESessionForClass:?];
  [(NRLink *)self invalidateIKESession:sub_100076C30(self, classCopy)];
}

- (BOOL)cancelWithReason:(id)reason
{
  reasonCopy = reason;
  if (reasonCopy)
  {
    v5 = [[NSString alloc] initWithFormat:reasonCopy arguments:&v11];
    [(NRLink *)self reportEvent:3005 details:v5];
    if ([(NRLink *)self changeStateTo:255])
    {
      linkDelegate = [(NRLink *)self linkDelegate];
      [linkDelegate linkIsUnavailable:self];

      [(NRLinkFixedInterface *)self invalidateLink];
    }

    else
    {
      if (qword_100229000 != -1)
      {
        dispatch_once(&qword_100229000, &stru_1001FAE30);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100229000 != -1)
        {
          dispatch_once(&qword_100229000, &stru_1001FAE30);
        }

        _NRLogWithArgs(qword_100228FF8, 1, "%s%.30s:%-4d link already cancelled: %@", ", "[NRLinkFixedInterface cancelWithReason:]"", 207, self);
      }
    }
  }

  else
  {
    v8 = sub_10007478C();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v10 = sub_10007478C();
      _NRLogWithArgs(v10, 17, "%s called with null reasonFormat", "[NRLinkFixedInterface cancelWithReason:]");
    }
  }

  return reasonCopy != 0;
}

- (BOOL)start
{
  selfCopy = self;
  if ([(NRLink *)self state]== 8)
  {
    linkDelegate = [selfCopy linkDelegate];
    [linkDelegate linkIsReady:selfCopy];

    return 1;
  }

  if ([selfCopy state] != 9)
  {
    if ([selfCopy startRequested])
    {
      return 1;
    }

    [selfCopy setStartRequested:1];
    localInterfaceName = [selfCopy localInterfaceName];

    if (!localInterfaceName)
    {
      v21 = sub_10007478C();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (!IsLevelEnabled)
      {
        return 0;
      }

      v19 = sub_10007478C();
      _NRLogWithArgs(v19, 17, "Cannot start Wi-Fi link without wifiInterfaceName");
LABEL_24:

      return 0;
    }

    if ([selfCopy state] == 1)
    {
      [selfCopy reportEvent:3001];
      nrUUID = [selfCopy nrUUID];
      v8 = sub_100163A30(NRDLocalDevice, nrUUID);

      if (v8)
      {
        [selfCopy setIkev2Role:sub_10013FF60(v8)];
        if ([selfCopy ikev2Role] == 2 && (objc_msgSend(selfCopy, "remoteOuterEndpoint"), v9 = objc_claimAutoreleasedReturnValue(), v9, !v9))
        {
          v20 = @"No remote outer endpoint present";
        }

        else
        {
          if ([selfCopy setupVirtualInterface])
          {
            v10 = nw_parameters_create();
            localInterfaceName2 = [selfCopy localInterfaceName];
            [localInterfaceName2 UTF8String];
            v12 = nw_interface_create_with_name();
            nw_parameters_require_interface(v10, v12);
            remoteOuterEndpoint = [selfCopy remoteOuterEndpoint];
            copyCEndpoint = [remoteOuterEndpoint copyCEndpoint];
            evaluator_for_endpoint = nw_path_create_evaluator_for_endpoint();

            objc_initWeak(&location, selfCopy);
            queue = [selfCopy queue];
            v29[1] = _NSConcreteStackBlock;
            v29[2] = 3221225472;
            v29[3] = sub_100077488;
            v29[4] = &unk_1001FBEB8;
            objc_copyWeak(&v30, &location);
            nw_path_evaluator_set_update_handler();

            nw_path_evaluator_start();
            if (selfCopy)
            {
              objc_storeStrong((selfCopy + 287), evaluator_for_endpoint);
            }

            sub_1000766CC(selfCopy);
            objc_destroyWeak(&v30);
            objc_destroyWeak(&location);

            v5 = 1;
            goto LABEL_29;
          }

          v20 = @"failed to setup virtual interface";
        }

        [selfCopy cancelWithReason:v20];
        v5 = 0;
LABEL_29:

        return v5;
      }

      v23 = sub_10007478C();
      v24 = _NRLogIsLevelEnabled();

      p_vtable = "[NRLinkFixedInterface start]";
      if (v24)
      {
        v25 = sub_10007478C();
        _NRLogWithArgs(v25, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (localDevice) != ((void*)0)", ", "[NRLinkFixedInterface start]"", 153);
      }

      selfCopy = _os_log_pack_size();
      v26 = v29 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
      v27 = __error();
      v28 = _os_log_pack_fill(v26, selfCopy, *v27, &_mh_execute_header, "%{public}s Assertion Failed: (localDevice) != ((void*)0)");
      *v28 = 136446210;
      *(v28 + 4) = "[NRLinkFixedInterface start]";
      sub_10007478C();
      _NRLogAbortWithPack();
      __break(1u);
    }

    else
    {
      if (qword_100229000 != -1)
      {
        dispatch_once(&qword_100229000, &stru_1001FAE30);
      }

      p_vtable = NRSCDInterfaceConfig.vtable;
      if (!_NRLogIsLevelEnabled())
      {
        return 0;
      }

      if (qword_100229000 == -1)
      {
        goto LABEL_23;
      }
    }

    dispatch_once(&qword_100229000, &stru_1001FAE30);
LABEL_23:
    v18 = p_vtable[511];
    v19 = sub_1001415A0([selfCopy state]);
    _NRLogWithArgs(v18, 17, "Cannot start link in state %@", v19);

    goto LABEL_24;
  }

  return [selfCopy resume];
}

- (id)copyDescriptionInner
{
  v3 = [NSString alloc];
  v9.receiver = self;
  v9.super_class = NRLinkFixedInterface;
  copyDescriptionInner = [(NRLink *)&v9 copyDescriptionInner];
  localOuterEndpoint = [(NRLink *)self localOuterEndpoint];
  remoteOuterEndpoint = [(NRLink *)self remoteOuterEndpoint];
  v7 = [v3 initWithFormat:@"%@, %@ -> %@", copyDescriptionInner, localOuterEndpoint, remoteOuterEndpoint];

  return v7;
}

- (void)invalidateLink
{
  v8.receiver = self;
  v8.super_class = NRLinkFixedInterface;
  [(NRLink *)&v8 invalidateLink];
  if (!self)
  {
    [0 invalidateVirtualInterface];
    companionProxyAgent = MEMORY[0x58];
    if (!MEMORY[0x58])
    {
      return;
    }

    goto LABEL_7;
  }

  [(NRLinkFixedInterface *)self invalidateIKESessionForClass:4];
  v3 = *(&self->_listenerPort + 7);
  if (v3)
  {
    [v3 cancel];
    v4 = *(&self->_listenerPort + 7);
    *(&self->_listenerPort + 7) = 0;
  }

  [(NRLink *)self invalidateVirtualInterface];
  if (*(&self->_listenerPortString + 7))
  {
    nw_path_evaluator_cancel();
    v5 = *(&self->_listenerPortString + 7);
    *(&self->_listenerPortString + 7) = 0;
  }

  companionProxyAgent = self->super._companionProxyAgent;
  if (companionProxyAgent)
  {
LABEL_7:
    sub_100070270(companionProxyAgent);
    [(NRLink *)self reportEvent:12003];
    v7 = self->super._companionProxyAgent;
    self->super._companionProxyAgent = 0;
  }
}

- (id)copyStatusString
{
  v3 = [NSMutableString alloc];
  v4 = [(NRLink *)self description];
  v5 = [v3 initWithString:v4];

  [v5 appendFormat:@"\n %35s = %@", "nrUUID", self->super._nrUUID];
  [v5 appendFormat:@"\n %35s = %@", "localInterfaceName", self->super._localInterfaceName];
  [v5 appendFormat:@"\n %35s = %@", "listenerPortString", *(&self->_ikeSessionClassD + 7)];
  [v5 appendFormat:@"\n %35s = %@", "ikeSessionClassD", *(&self->_ikeListener + 7)];
  if (self->super._virtualInterface)
  {
    v6 = NEVirtualInterfaceCopyName();
    [v5 appendFormat:@"\n %35s = %@", "virtualInterfaceName", v6];
  }

  return v5;
}

@end