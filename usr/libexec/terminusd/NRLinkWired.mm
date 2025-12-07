@interface NRLinkWired
- (BOOL)cancelWithReason:(id)reason;
- (BOOL)initializeExternalDeviceLink;
- (BOOL)initiateConnection;
- (BOOL)resume;
- (BOOL)sendControlData:(id)data;
- (BOOL)start;
- (BOOL)suspend;
- (id)copyDescriptionInner;
- (id)copyNotifyPayloadsToSendWithProxy:(BOOL)proxy sendingClassC:(BOOL *)c;
- (id)copyStatusString;
- (id)getOrSendIDSDeviceID;
- (id)ikeSessionPointerForDataProtectionClass:(unsigned __int8)class;
- (id)respondToIKESession:(id)session dataProtectionClass:(unsigned __int8)class validateAuthBlock:(id)block;
- (void)checkPeerAvailabilityWithForceAggressive:(BOOL)aggressive;
- (void)handleNotifyCode:(unsigned __int16)code payload:(id)payload;
- (void)initiatePairing;
- (void)invalidateIKESessionForClass:(unsigned __int8)class;
- (void)invalidateLink;
- (void)requestConfigurationForListener:(id)listener session:(id)session sessionConfig:(id)config childConfig:(id)childConfig validateAuthBlock:(id)block responseBlock:(id)responseBlock;
- (void)restartIKESessionForDataProtectionClass:(unsigned __int8)class;
- (void)retrySetupIPsec:(unsigned __int8)psec;
- (void)sendClassCUnlockedNotify;
- (void)sendNotifyPayload;
- (void)setupIKECallbacks:(unsigned __int8)callbacks;
- (void)setupIPsecIfNecessary:(unsigned __int8)necessary;
- (void)upgradeSessionsIfNeeded;
@end

@implementation NRLinkWired

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
      _NRLogWithArgs(v7, 1, "%s%.30s:%-4d %@: Already cancelled. Ignoring 'resume'", ", "[NRLinkWired resume]"", 1193, copyDescription);
    }
  }

  else
  {
    v15.receiver = self;
    v15.super_class = NRLinkWired;
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
            _NRLogWithArgs(v11, 16, "%s%.30s:%-4d %@: failed to register companion agent", ", "[NRLinkWired resume]"", 1204, copyDescription2);
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
  v13.super_class = NRLinkWired;
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
          _NRLogWithArgs(v10, 16, "%s%.30s:%-4d %@: failed to unregister companion agent", ", "[NRLinkWired suspend]"", 1176, copyDescription);
        }
      }
    }

    [(NRLink *)self changeStateTo:9 details:@"(suspend)"];
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
    _NRLogWithArgs(linkDelegate, 1, "%s%.30s:%-4d %@: Already cancelled. Ignoring 'suspend'", ", "[NRLinkWired suspend]"", 1170, copyDescription2);

LABEL_10:
  }

  return 1;
}

- (void)handleNotifyCode:(unsigned __int16)code payload:(id)payload
{
  codeCopy = code;
  payloadCopy = payload;
  v7 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v9 = _NRCopyLogObjectForNRUUID();
    copyDescription = [(NRLink *)self copyDescription];
    _NRLogWithArgs(v9, 1, "%s%.30s:%-4d %@: Received notify code %u %@", ", "[NRLinkWired handleNotifyCode:payload:]"", 1101, copyDescription, codeCopy, payloadCopy);
  }

  if (codeCopy <= 48606)
  {
    switch(codeCopy)
    {
      case 0xBDDA:
        LOWORD(location) = 0;
        if ([payloadCopy length] <= 1)
        {
          [(NRLinkWired *)self cancelWithReason:@"Private notify Terminus Version too short %@", payloadCopy];
        }

        else
        {
          [payloadCopy getBytes:&location length:2];
          v18 = bswap32(location) >> 16;
          v19 = _NRCopyLogObjectForNRUUID();
          v20 = _NRLogIsLevelEnabled();

          if (v20)
          {
            v21 = _NRCopyLogObjectForNRUUID();
            copyDescription2 = [(NRLink *)self copyDescription];
            _NRLogWithArgs(v21, 0, "%s%.30s:%-4d %@: Received remote terminus version %u", ", "[NRLinkWired handleNotifyCode:payload:]"", 1116, copyDescription2, v18);
          }

          nrUUID = [(NRLink *)self nrUUID];
          sub_100171304(NRDLocalDevice, v18, nrUUID);
        }

        goto LABEL_35;
      case 0xBDDB:
        linkDelegate = [[NSString alloc] initWithData:payloadCopy encoding:4];
        v29 = _NRCopyLogObjectForNRUUID();
        if (linkDelegate)
        {
          v30 = _NRLogIsLevelEnabled();

          if (v30)
          {
            v31 = _NRCopyLogObjectForNRUUID();
            copyDescription3 = [(NRLink *)self copyDescription];
            _NRLogWithArgs(v31, 0, "%s%.30s:%-4d %@: Received remote device name %@", ", "[NRLinkWired handleNotifyCode:payload:]"", 1124, copyDescription3, linkDelegate);
          }

          nrUUID2 = [(NRLink *)self nrUUID];
          sub_1001716D4(NRDLocalDevice, linkDelegate, nrUUID2);
          goto LABEL_33;
        }

        v37 = _NRLogIsLevelEnabled();

        if (!v37)
        {
          goto LABEL_34;
        }

        v38 = _NRCopyLogObjectForNRUUID();
        selfCopy = self;
        nrUUID2 = v38;
        copyDescription4 = [(NRLink *)selfCopy copyDescription];
        _NRLogWithArgs(nrUUID2, 16, "%s%.30s:%-4d %@: Failed to decode remote device name %@", ", "[NRLinkWired handleNotifyCode:payload:]"", 1121, copyDescription4, payloadCopy);
        break;
      case 0xBDDC:
        linkDelegate = [[NSString alloc] initWithData:payloadCopy encoding:4];
        v13 = _NRCopyLogObjectForNRUUID();
        if (linkDelegate)
        {
          v14 = _NRLogIsLevelEnabled();

          if (v14)
          {
            v15 = _NRCopyLogObjectForNRUUID();
            copyDescription5 = [(NRLink *)self copyDescription];
            _NRLogWithArgs(v15, 0, "%s%.30s:%-4d %@: Received remote build version %@", ", "[NRLinkWired handleNotifyCode:payload:]"", 1132, copyDescription5, linkDelegate);
          }

          nrUUID2 = [(NRLink *)self nrUUID];
          sub_1001718D8(NRDLocalDevice, linkDelegate, nrUUID2);
          goto LABEL_33;
        }

        v33 = _NRLogIsLevelEnabled();

        if (!v33)
        {
          goto LABEL_34;
        }

        v34 = _NRCopyLogObjectForNRUUID();
        selfCopy2 = self;
        nrUUID2 = v34;
        copyDescription4 = [(NRLink *)selfCopy2 copyDescription];
        _NRLogWithArgs(nrUUID2, 16, "%s%.30s:%-4d %@: Failed to decode remote build version %@", ", "[NRLinkWired handleNotifyCode:payload:]"", 1129, copyDescription4, payloadCopy);
        break;
      default:
        goto LABEL_35;
    }

LABEL_33:
    goto LABEL_34;
  }

  if (codeCopy <= 50700)
  {
    if (codeCopy != 48607)
    {
      if (codeCopy == 48701)
      {
        v43 = 0;
        if ([payloadCopy length])
        {
          [payloadCopy getBytes:&v43 length:1];
          if (v43 < 0 && ![(NRLinkWired *)self remoteClassCUnlocked])
          {
            [(NRLinkWired *)self setRemoteClassCUnlocked:1];
            objc_initWeak(&location, self);
            v11 = sub_100180AC4(NRDKeyManager);
            v40[0] = _NSConcreteStackBlock;
            v40[1] = 3221225472;
            v40[2] = sub_1000DD2A0;
            v40[3] = &unk_1001FC730;
            objc_copyWeak(&v41, &location);
            sub_1001816DC(v11, v40);

            objc_destroyWeak(&v41);
            objc_destroyWeak(&location);
          }
        }
      }

      goto LABEL_35;
    }

    linkDelegate = [[NSString alloc] initWithData:payloadCopy encoding:4];
    v24 = _NRCopyLogObjectForNRUUID();
    v25 = _NRLogIsLevelEnabled();

    if (v25)
    {
      v26 = _NRCopyLogObjectForNRUUID();
      copyDescription6 = [(NRLink *)self copyDescription];
      LogString = _NRKeyCreateLogString();
      _NRLogWithArgs(v26, 0, "%s%.30s:%-4d %@: Received remote IDS device ID %@", ", "[NRLinkWired handleNotifyCode:payload:]"", 1160, copyDescription6, LogString);
    }

    nrUUID2 = [(NRLink *)self nrUUID];
    sub_1001756C0(NRDLocalDevice, linkDelegate, nrUUID2);
    goto LABEL_33;
  }

  if (codeCopy == 50701)
  {
    sub_100171CD8(NRDLocalDevice, payloadCopy, self->super._nrUUID);
    [(NRLink *)self checkProxyAgentWithForceUpdate:0];
    goto LABEL_35;
  }

  if (codeCopy == 50702)
  {
    linkDelegate = [(NRLink *)self linkDelegate];
    [linkDelegate linkDidReceiveData:self data:payloadCopy];
LABEL_34:
  }

LABEL_35:
}

- (void)upgradeSessionsIfNeeded
{
  if (!self || !self->_upgradeSessionAfterFirstUnlock || ![(NRLinkWired *)self isIKEResponder]&& ![(NRLinkWired *)self sentLocalClassCUnlockNotify]|| ![(NRLinkWired *)self remoteClassCUnlocked])
  {
    return;
  }

  objc_opt_self();
  if (qword_1002294C8 != -1)
  {
    dispatch_once(&qword_1002294C8, &stru_1001FD250);
  }

  v3 = qword_1002294C0;
  if (!v3)
  {
    goto LABEL_22;
  }

  v4 = v3;
  dispatch_assert_queue_V2(v3[2]);
  if ((*(v4 + 10) & 1) == 0)
  {
    *(v4 + 10) = 1;
    if (*(v4 + 8) == 4)
    {
      sub_100181020(v4);
      if (*(v4 + 9) == 1)
      {
        *(v4 + 8) = 3;
        sub_100181284(v4);
      }
    }
  }

  v5 = v4[1] & 0xFD;

  if (v5 == 1 && ![(NRLink *)self ikeClassCEstablished])
  {
    if ([(NRLink *)self state]== 8)
    {
      [(NRLinkWired *)self suspend];
      [(NRLinkWired *)self invalidateIKESessionClassD];

      [(NRLinkWired *)self setupIPsecIfNecessary:3];
      return;
    }

    v6 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      return;
    }

    v9 = _NRCopyLogObjectForNRUUID();
    copyDescription = [(NRLink *)self copyDescription];
    _NRLogWithArgs(v9, 16, "%s%.30s:%-4d %@: both sides unlocked with unexpected link state", ", "[NRLinkWired upgradeSessionsIfNeeded]"", 1089, copyDescription);

    v3 = v9;
LABEL_22:
  }
}

- (void)sendNotifyPayload
{
  if (![(NRLinkWired *)self isIKEResponder])
  {
    nrUUID = [(NRLink *)self nrUUID];
    v4 = sub_100163A30(NRDLocalDevice, nrUUID);

    v15 = 0;
    v5 = [(NRLinkWired *)self copyNotifyPayloadsToSendWithProxy:sub_100147B98(v4) sendingClassC:&v15];
    [(NRLinkWired *)self setNeedsToSendLocalClassCUnlockNotify:(v15 & 1) == 0];
    getOrSendIDSDeviceID = [(NRLinkWired *)self getOrSendIDSDeviceID];
    if (getOrSendIDSDeviceID)
    {
      [v5 addObject:getOrSendIDSDeviceID];
    }

    ikeSessionClassD = [(NRLinkWired *)self ikeSessionClassD];
    ikeSessionClassC = [(NRLinkWired *)self ikeSessionClassC];

    if (ikeSessionClassC)
    {
      ikeSessionClassC2 = [(NRLinkWired *)self ikeSessionClassC];

      ikeSessionClassD = ikeSessionClassC2;
    }

    objc_initWeak(&location, self);
    queue = [(NRLink *)self queue];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000DD6E0;
    v11[3] = &unk_1001FB928;
    objc_copyWeak(&v12, &location);
    v13 = v15;
    [ikeSessionClassD sendPrivateNotifies:v5 maxRetries:10 retryIntervalInMilliseconds:1000 callbackQueue:queue callback:v11];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

- (void)sendClassCUnlockedNotify
{
  if ([(NRLink *)self state]== 8)
  {
    ikeSessionClassD = [(NRLinkWired *)self ikeSessionClassD];

    if (ikeSessionClassD)
    {
      if (![(NRLinkWired *)self hasScheduledSendingLocalClassCUnlock])
      {
        [(NRLinkWired *)self setHasScheduledSendingLocalClassCUnlock:1];
        objc_initWeak(&location, self);
        objc_opt_self();
        if (qword_1002294C8 != -1)
        {
          dispatch_once(&qword_1002294C8, &stru_1001FD250);
        }

        v4 = qword_1002294C0;
        v5[0] = _NSConcreteStackBlock;
        v5[1] = 3221225472;
        v5[2] = sub_1000DD98C;
        v5[3] = &unk_1001FC730;
        objc_copyWeak(&v6, &location);
        sub_1001816DC(v4, v5);

        objc_destroyWeak(&v6);
        objc_destroyWeak(&location);
      }
    }
  }
}

- (id)getOrSendIDSDeviceID
{
  if ([(NRLink *)self state]== 255 || ![(NRLink *)self shouldSendIDSDeviceID])
  {
    v7 = 0;
  }

  else
  {
    objc_opt_self();
    if (qword_1002290C0 != -1)
    {
      dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
    }

    v3 = qword_1002290B8;
    v4 = sub_1000CAD2C(v3, 0);

    if (v4)
    {
      v5 = [v4 dataUsingEncoding:4];
      v6 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:48607 notifyData:v5];
    }

    else
    {
      objc_initWeak(&location, self);
      objc_opt_self();
      if (qword_1002290C0 != -1)
      {
        dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
      }

      v8 = qword_1002290B8;
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_1000DDE40;
      v10[3] = &unk_1001FBF00;
      objc_copyWeak(&v11, &location);

      objc_destroyWeak(&v11);
      objc_destroyWeak(&location);
      v6 = 0;
    }

    v7 = v6;
  }

  return v7;
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
      v7 = *(&self->_ikeSessionClassD + 7);
      v20 = v5;
      v8 = [NSArray arrayWithObjects:&v20 count:1];
      queue = [(NRLink *)self queue];
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_1000DE4BC;
      v17[3] = &unk_1001FC018;
      objc_copyWeak(&v18, &location);
      [v7 sendPrivateNotifies:v8 maxRetries:10 retryIntervalInMilliseconds:1000 callbackQueue:queue callback:v17];

      objc_destroyWeak(&v18);
      objc_destroyWeak(&location);
    }

    else
    {
      v14 = sub_1000DE468();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v16 = sub_1000DE468();
        _NRLogWithArgs(v16, 17, "NEIKEv2PrivateNotify init %u %@ failed", 50702, dataCopy);
      }
    }
  }

  else
  {
    v11 = sub_1000DE468();
    v12 = _NRLogIsLevelEnabled();

    if (v12)
    {
      v13 = sub_1000DE468();
      _NRLogWithArgs(v13, 17, "%s called with null data", "[NRLinkWired sendControlData:]");
    }

    v6 = 0;
  }

  return v6;
}

- (id)copyNotifyPayloadsToSendWithProxy:(BOOL)proxy sendingClassC:(BOOL *)c
{
  proxyCopy = proxy;
  v7 = objc_alloc_init(NSMutableArray);
  v30 = 6144;
  v8 = [[NSMutableData alloc] initWithBytes:&v30 length:2];
  v9 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:48602 notifyData:v8];
  [v7 addObject:v9];

  if (qword_100229228 != -1)
  {
    dispatch_once(&qword_100229228, &stru_1001FC320);
  }

  v10 = qword_100229220;
  v11 = [v10 dataUsingEncoding:4];

  v12 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:48603 notifyData:v11];
  [v7 addObject:v12];

  if (qword_100229218 != -1)
  {
    dispatch_once(&qword_100229218, &stru_1001FC300);
  }

  v13 = qword_100229210;
  v14 = [v13 dataUsingEncoding:4];

  v15 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:48604 notifyData:v14];
  [v7 addObject:v15];

  v16 = sub_100147A80();
  [v7 addObject:v16];
  v29 = 0;
  notifyData = [v16 notifyData];
  [notifyData getBytes:&v29 length:1];

  *c = v29 >> 7;
  if (proxyCopy)
  {
    nrUUID = [(NRLink *)self nrUUID];
    v19 = sub_100163A30(NRDLocalDevice, nrUUID);

    if (v19)
    {
      v20 = v19[18];
    }

    else
    {
      v20 = 0;
    }

    v21 = v20;
    proxyCapability = [v21 proxyCapability];

    if (proxyCapability == 1)
    {
      if (v19)
      {
        v23 = v19[18];
      }

      else
      {
        v23 = 0;
      }

      v24 = v23;
      hasCompanionDatapath = [v24 hasCompanionDatapath];

      if (hasCompanionDatapath)
      {
        localOuterEndpoint = 0;
      }

      else
      {
        localOuterEndpoint = [(NRLink *)self localOuterEndpoint];
      }

      v27 = sub_100147C1C(v19, localOuterEndpoint);
      [v7 addObject:v27];
    }
  }

  return v7;
}

- (id)respondToIKESession:(id)session dataProtectionClass:(unsigned __int8)class validateAuthBlock:(id)block
{
  classCopy = class;
  sessionCopy = session;
  blockCopy = block;
  if (sessionCopy)
  {
    String = NRDataProtectionClassCreateString();
    v12 = sub_100163A30(NRDLocalDevice, self->super._nrUUID);
    v13 = sub_100164D70(v12, classCopy);
    v14 = v13;
    if (v13)
    {
      v15 = *(v13 + 1);
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;

    if (!v16)
    {
      [(NRLink *)self reportEvent:3019 detailsFormat:@"%@ %@ %@", String, sessionCopy, v12];
      v21 = 0;
LABEL_19:

      goto LABEL_20;
    }

    v31 = blockCopy;
    if (classCopy == 3)
    {
      if (v12)
      {
        v22 = sub_100003490();
        dispatch_assert_queue_V2(v22);

        v18 = sub_1001679E0(v12, @"0");
        v23 = sub_100003490();
        dispatch_assert_queue_V2(v23);

        v20 = sub_100167B9C(v12, @"0");
        goto LABEL_12;
      }
    }

    else
    {
      if (classCopy != 4)
      {
LABEL_13:
        v24 = sub_100147400(0, v12, classCopy);
        if (blockCopy[2](blockCopy, v24))
        {
          v32 = 0;
          v25 = [(NRLinkWired *)self copyNotifyPayloadsToSendWithProxy:sub_100147B98(v12) sendingClassC:&v32];
          [(NRLinkWired *)self setNeedsToSendLocalClassCUnlockNotify:(v32 & 1) == 0];
          getOrSendIDSDeviceID = [(NRLinkWired *)self getOrSendIDSDeviceID];
          if (getOrSendIDSDeviceID)
          {
            [v25 addObject:getOrSendIDSDeviceID];
          }

          [v24 setCustomIKEAuthPrivateNotifies:v25];
          [(NRLinkWired *)self invalidateIKESessionForClass:classCopy];
          objc_storeStrong([(NRLinkWired *)self ikeSessionPointerForDataProtectionClass:classCopy], session);
          [(NRLinkWired *)self setupIKECallbacks:classCopy];
          [(NRLink *)self reportEvent:3016 detailsFormat:@"%@ %@", String, sessionCopy];
          v21 = v24;

          blockCopy = v31;
        }

        else
        {
          [(NRLink *)self reportEvent:3021 detailsFormat:@"%@ %@", String, sessionCopy];
          v21 = 0;
        }

        goto LABEL_19;
      }

      if (v12)
      {
        v17 = sub_100003490();
        dispatch_assert_queue_V2(v17);

        v18 = sub_1001672A0(v12, @"0");
        v19 = sub_100003490();
        dispatch_assert_queue_V2(v19);

        v20 = sub_1001677D0(v12, @"0");
LABEL_12:

        blockCopy = v31;
        goto LABEL_13;
      }
    }

    v20 = 0;
    v18 = 0;
    goto LABEL_12;
  }

  v28 = sub_1000DE468();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v30 = sub_1000DE468();
    _NRLogWithArgs(v30, 17, "%s called with null session", "[NRLinkWired respondToIKESession:dataProtectionClass:validateAuthBlock:]");
  }

  v21 = 0;
LABEL_20:

  return v21;
}

- (void)requestConfigurationForListener:(id)listener session:(id)session sessionConfig:(id)config childConfig:(id)childConfig validateAuthBlock:(id)block responseBlock:(id)responseBlock
{
  listenerCopy = listener;
  sessionCopy = session;
  configCopy = config;
  childConfigCopy = childConfig;
  blockCopy = block;
  responseBlockCopy = responseBlock;
  if (listenerCopy)
  {
    if (sessionCopy)
    {
      if (configCopy)
      {
        if (blockCopy)
        {
          if (responseBlockCopy)
          {
            v19 = _NRCopyLogObjectForNRUUID();
            IsLevelEnabled = _NRLogIsLevelEnabled();

            if (IsLevelEnabled)
            {
              v21 = _NRCopyLogObjectForNRUUID();
              copyDescription = [(NRLink *)self copyDescription];
              _NRLogWithArgs(v21, 0, "%s%.30s:%-4d %@: Got config request for listener %@ session %@ sessionConfig %@ childConfig %@", ", "[NRLinkWired requestConfigurationForListener:session:sessionConfig:childConfig:validateAuthBlock:responseBlock:]"", 707, copyDescription, listenerCopy, sessionCopy, configCopy, childConfigCopy);
            }

            if (self->super._state != 255)
            {
              localIdentifier = [configCopy localIdentifier];
              if (qword_1002292E8 != -1)
              {
                dispatch_once(&qword_1002292E8, &stru_1001FC558);
              }

              v24 = qword_1002292E0;
              v25 = [localIdentifier isEqual:v24];

              if (v25)
              {
                if (childConfigCopy)
                {
                  v26 = sub_100146D34(1, 0);
                  [v26 setMode:2];
                  v27 = 4;
                  [v26 setReplayWindowSize:4];
                  goto LABEL_36;
                }

                if (![(NRLink *)self hasCompanionDatapath])
                {
                  v26 = 0;
                  v27 = 4;
                  goto LABEL_36;
                }

                [(NRLink *)self reportEvent:3024 detailsFormat:@"ClassD %@", sessionCopy];
                goto LABEL_21;
              }

              localIdentifier2 = [configCopy localIdentifier];
              if (qword_1002292F8 != -1)
              {
                dispatch_once(&qword_1002292F8, &stru_1001FC578);
              }

              v29 = qword_1002292F0;
              v30 = [localIdentifier2 isEqual:v29];

              if (v30)
              {
                if (childConfigCopy)
                {
                  v26 = sub_100146D34(1, 0);
                  [v26 setMode:2];
                  [v26 setReplayWindowSize:4];
LABEL_27:
                  objc_opt_self();
                  if (qword_1002294C8 != -1)
                  {
                    dispatch_once(&qword_1002294C8, &stru_1001FD250);
                  }

                  v37 = qword_1002294C0;
                  if (v37)
                  {
                    v38 = v37;
                    dispatch_assert_queue_V2(*(v37 + 2));
                    if ((v38[10] & 1) == 0)
                    {
                      v38[10] = 1;
                      if (v38[8] == 4)
                      {
                        sub_100181020(v38);
                        if (v38[9] == 1)
                        {
                          v38[8] = 3;
                          sub_100181284(v38);
                        }
                      }
                    }

                    v39 = v38[8] & 0xFD;

                    if (v39 == 1)
                    {
                      v27 = 3;
LABEL_36:
                      v36 = [(NRLinkWired *)self respondToIKESession:sessionCopy dataProtectionClass:v27 validateAuthBlock:blockCopy];
                      if ([(NRLink *)self setupVirtualInterface])
                      {
                        responseBlockCopy[2](responseBlockCopy, v36, v26, [(NRLink *)self virtualInterface]);
LABEL_39:

LABEL_40:
                        goto LABEL_41;
                      }

LABEL_38:
                      responseBlockCopy[2](responseBlockCopy, 0, 0, 0);
                      goto LABEL_39;
                    }
                  }

                  [(NRLink *)self reportEvent:3020 detailsFormat:@"ClassC %@", sessionCopy];
                  [(NRLinkWired *)self sendClassCUnlockedNotify];
LABEL_22:
                  v36 = 0;
                  goto LABEL_38;
                }

                if (![(NRLink *)self hasCompanionDatapath])
                {
                  v26 = 0;
                  goto LABEL_27;
                }

                [(NRLink *)self reportEvent:3024 detailsFormat:@"ClassC %@", sessionCopy];
              }

              else
              {
                v31 = _NRCopyLogObjectForNRUUID();
                v32 = _NRLogIsLevelEnabled();

                if (v32)
                {
                  v33 = _NRCopyLogObjectForNRUUID();
                  copyDescription2 = [(NRLink *)self copyDescription];
                  localIdentifier3 = [configCopy localIdentifier];
                  _NRLogWithArgs(v33, 16, "%s%.30s:%-4d %@: Unrecognized identifier %@", ", "[NRLinkWired requestConfigurationForListener:session:sessionConfig:childConfig:validateAuthBlock:responseBlock:]"", 749, copyDescription2, localIdentifier3);
                }
              }
            }

LABEL_21:
            v26 = 0;
            goto LABEL_22;
          }

          v48 = sub_1000DE468();
          v49 = _NRLogIsLevelEnabled();

          if (v49)
          {
            v36 = sub_1000DE468();
            _NRLogWithArgs(v36, 17, "%s called with null responseBlock");
            goto LABEL_40;
          }
        }

        else
        {
          v46 = sub_1000DE468();
          v47 = _NRLogIsLevelEnabled();

          if (v47)
          {
            v36 = sub_1000DE468();
            _NRLogWithArgs(v36, 17, "%s called with null validateAuthBlock");
            goto LABEL_40;
          }
        }
      }

      else
      {
        v44 = sub_1000DE468();
        v45 = _NRLogIsLevelEnabled();

        if (v45)
        {
          v36 = sub_1000DE468();
          _NRLogWithArgs(v36, 17, "%s called with null sessionConfig");
          goto LABEL_40;
        }
      }
    }

    else
    {
      v42 = sub_1000DE468();
      v43 = _NRLogIsLevelEnabled();

      if (v43)
      {
        v36 = sub_1000DE468();
        _NRLogWithArgs(v36, 17, "%s called with null session");
        goto LABEL_40;
      }
    }
  }

  else
  {
    v40 = sub_1000DE468();
    v41 = _NRLogIsLevelEnabled();

    if (v41)
    {
      v36 = sub_1000DE468();
      _NRLogWithArgs(v36, 17, "%s called with null listener");
      goto LABEL_40;
    }
  }

LABEL_41:
}

- (void)retrySetupIPsec:(unsigned __int8)psec
{
  [(NRLinkWired *)self setSetupIPsecRetryCounter:[(NRLinkWired *)self setupIPsecRetryCounter]+ 1];
  if ([(NRLinkWired *)self setupIPsecRetryCounter]> 4)
  {

    [(NRLinkWired *)self cancelWithReason:@"IKE session creation hit max retries"];
  }

  else
  {
    [(NRLink *)self reportEvent:3026];
    objc_initWeak(&location, self);
    v5 = dispatch_time(0, 1000000000);
    queue = [(NRLink *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000DF310;
    block[3] = &unk_1001FB900;
    objc_copyWeak(&v8, &location);
    psecCopy = psec;
    dispatch_after(v5, queue, block);

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

- (void)setupIPsecIfNecessary:(unsigned __int8)necessary
{
  necessaryCopy = necessary;
  if (![(NRLinkWired *)self isIKEResponder])
  {
    v5 = [(NRLinkWired *)self ikeSessionPointerForDataProtectionClass:necessaryCopy];
    if (!*v5)
    {
      v6 = v5;
      String = NRDataProtectionClassCreateString();
      if (self->super._state == 255)
      {
        v17 = _NRCopyLogObjectForNRUUID();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (IsLevelEnabled)
        {
          v19 = _NRCopyLogObjectForNRUUID();
          copyDescription = [(NRLink *)self copyDescription];
          _NRLogWithArgs(v19, 0, "%s%.30s:%-4d %@: Not starting %@ initiator session because cancelled", ", "[NRLinkWired setupIPsecIfNecessary:]"", 608, copyDescription, String);
        }

        goto LABEL_25;
      }

      v8 = sub_100163A30(NRDLocalDevice, self->super._nrUUID);
      v9 = v8;
      if (v8)
      {
        v10 = sub_100164D70(v8, necessaryCopy);

        if (v10)
        {
          v11 = sub_100146654(v9, 1);
          [v11 setRandomizeLocalPort:1];
          localInterfaceName = [(NRLink *)self localInterfaceName];
          [v11 setOutgoingInterfaceName:localInterfaceName];

          remoteOuterEndpoint = [(NRLink *)self remoteOuterEndpoint];
          [v11 setRemoteEndpoint:remoteOuterEndpoint];

          [v11 setRequestChildlessSA:{-[NRLink hasCompanionDatapath](self, "hasCompanionDatapath") ^ 1}];
          if (qword_100229238 != -1)
          {
            dispatch_once(&qword_100229238, &stru_1001FC340);
          }

          if (byte_100229230 == 1)
          {
            remoteOuterEndpoint2 = [(NRLink *)self remoteOuterEndpoint];
            addressFamily = [remoteOuterEndpoint2 addressFamily];

            if (addressFamily == 2)
            {
              LODWORD(v48) = 0;
              v47 = 0;
              v16 = 528;
            }

            else
            {
              v47 = 0;
              v48 = 0;
              v49 = 0;
              v16 = 7708;
            }

            v46 = v16 | 0x94110000;
            v24 = [NWAddressEndpoint endpointWithAddress:&v46];
            [v11 setLocalEndpoint:v24];

            [v11 setForceUDPEncapsulation:1];
          }

          v25 = sub_100147400(1, v9, necessaryCopy);
          [(NRLinkWired *)self invalidateIKESessionForClass:necessaryCopy];
          v26 = String;
          string = [[NSString alloc] initWithFormat:@"terminus-Wired-%@", String];
          v28 = [NEIKEv2Session alloc];
          v44 = v9;
          v29 = v9;
          v30 = sub_100146D34(0, 0);
          [v30 setMode:2];
          [v30 setReplayWindowSize:4];
          sub_100147008(v30, v29, 1);

          v45 = string;
          v31 = [v28 initWithIKEConfig:v11 firstChildConfig:v30 sessionConfig:v25 queue:self->super._queue ipsecInterface:-[NRLink virtualInterface](self ikeSocketHandler:"virtualInterface") kernelSASessionName:0 packetDelegate:{string, 0}];
          v32 = *v6;
          *v6 = v31;

          if (*v6)
          {
            [(NRLink *)self reportEvent:3015 detailsFormat:@"%@ %@", v26, *v6];
            [(NRLinkWired *)self setupIKECallbacks:necessaryCopy];
            v33 = _NRCopyLogObjectForNRUUID();
            v34 = _NRLogIsLevelEnabled();

            String = v26;
            if (v34)
            {
              v35 = _NRCopyLogObjectForNRUUID();
              copyDescription2 = [(NRLink *)self copyDescription];
              _NRLogWithArgs(v35, 0, "%s%.30s:%-4d %@: Connecting initiator %@ session %@", ", "[NRLinkWired setupIPsecIfNecessary:]"", 667, copyDescription2, v26, *v6);
            }

            [*v6 connect];
            v37 = v45;
          }

          else
          {
            v40 = _NRCopyLogObjectForNRUUID();
            v41 = _NRLogIsLevelEnabled();

            if (v41)
            {
              v42 = _NRCopyLogObjectForNRUUID();
              copyDescription3 = [(NRLink *)self copyDescription];
              _NRLogWithArgs(v42, 17, "%@: Failed to create initiator %@ IKE session", copyDescription3, v26);
            }

            [(NRLinkWired *)self retrySetupIPsec:necessaryCopy];
            v37 = string;
            String = v26;
          }

          v9 = v44;

          goto LABEL_23;
        }

        v21 = _NRCopyLogObjectForNRUUID();
        v22 = _NRLogIsLevelEnabled();

        if (!v22)
        {
LABEL_24:

LABEL_25:
          return;
        }

        v11 = _NRCopyLogObjectForNRUUID();
        copyDescription4 = [(NRLink *)self copyDescription];
        _NRLogWithArgs(v11, 0, "%s%.30s:%-4d %@: Not starting %@ IKE initiator session because we do not have keys %@", ", "[NRLinkWired setupIPsecIfNecessary:]"", 617, copyDescription4, String, v9);
      }

      else
      {
        v38 = _NRCopyLogObjectForNRUUID();
        v39 = _NRLogIsLevelEnabled();

        if (!v39)
        {
          goto LABEL_24;
        }

        v11 = _NRCopyLogObjectForNRUUID();
        copyDescription4 = [(NRLink *)self copyDescription];
        _NRLogWithArgs(v11, 17, "%@: Not starting %@ IKE initiator session because localDevice is missing", copyDescription4, String);
      }

LABEL_23:
      goto LABEL_24;
    }
  }
}

- (void)setupIKECallbacks:(unsigned __int8)callbacks
{
  callbacksCopy = callbacks;
  String = NRDataProtectionClassCreateString();
  if (callbacksCopy == 3)
  {
    v6 = *(&self->_ikeSessionClassD + 7);
    if (!v6)
    {
      v33 = sub_1000DE468();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v9 = sub_1000DE468();
        _NRLogWithArgs(v9, 17, "%s called with null _ikeSessionClassC");
        goto LABEL_16;
      }

LABEL_12:
      v24 = 0;
      goto LABEL_13;
    }
  }

  else
  {
    if (callbacksCopy != 4)
    {
      v29 = _NRCopyLogObjectForNRUUID();
      v30 = _NRLogIsLevelEnabled();

      if (v30)
      {
        v31 = _NRCopyLogObjectForNRUUID();
        copyDescription = [(NRLink *)self copyDescription];
        _NRLogWithArgs(v31, 17, "%@: Cannot setup IKE callbacks for %@", copyDescription, String);
      }

      goto LABEL_12;
    }

    v6 = *(&self->_ikeListener + 7);
    if (!v6)
    {
      v7 = sub_1000DE468();
      v8 = _NRLogIsLevelEnabled();

      if (v8)
      {
        v9 = sub_1000DE468();
        _NRLogWithArgs(v9, 17, "%s called with null _ikeSessionClassD");
LABEL_16:

        goto LABEL_12;
      }

      goto LABEL_12;
    }
  }

  v10 = v6;
  [v10 setClientQueue:self->super._queue];
  objc_initWeak(location, self);
  v60[0] = _NSConcreteStackBlock;
  v60[1] = 3221225472;
  v60[2] = sub_1000DFF08;
  v60[3] = &unk_1001FB810;
  objc_copyWeak(&v63, location);
  v64 = callbacksCopy;
  v11 = String;
  v61 = v11;
  v12 = v10;
  v62 = v12;
  [v12 setStateUpdateBlock:v60];
  v55[0] = _NSConcreteStackBlock;
  v55[1] = 3221225472;
  v55[2] = sub_1000E065C;
  v55[3] = &unk_1001FB838;
  objc_copyWeak(&v58, location);
  v13 = v11;
  v56 = v13;
  v14 = v12;
  v57 = v14;
  v59 = callbacksCopy;
  [v14 setChildStateUpdateBlock:v55];
  v51[0] = _NSConcreteStackBlock;
  v51[1] = 3221225472;
  v51[2] = sub_1000E0794;
  v51[3] = &unk_1001FB860;
  objc_copyWeak(&v54, location);
  v15 = v13;
  v52 = v15;
  v16 = v14;
  v53 = v16;
  [v16 setConfigurationUpdateBlock:v51];
  v47[0] = _NSConcreteStackBlock;
  v47[1] = 3221225472;
  v47[2] = sub_1000E0874;
  v47[3] = &unk_1001FB888;
  objc_copyWeak(&v50, location);
  v17 = v15;
  v48 = v17;
  v18 = v16;
  v49 = v18;
  [v18 setTrafficSelectorUpdateBlock:v47];
  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_1000E0974;
  v43[3] = &unk_1001FB8B0;
  objc_copyWeak(&v46, location);
  v19 = v17;
  v44 = v19;
  v20 = v18;
  v45 = v20;
  [v20 setAdditionalAddressesUpdateBlock:v43];
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_1000E0A54;
  v39[3] = &unk_1001FB8D8;
  objc_copyWeak(&v42, location);
  v21 = v19;
  v40 = v21;
  v22 = v20;
  v41 = v22;
  [v22 setShortDPDEventBlock:v39];
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_1000E0B28;
  v35[3] = &unk_1001FB8B0;
  objc_copyWeak(&v38, location);
  v23 = v21;
  v36 = v23;
  v24 = v22;
  v37 = v24;
  [v24 setPrivateNotifyStatusEvent:v35];
  v25 = _NRCopyLogObjectForNRUUID();
  v26 = _NRLogIsLevelEnabled();

  if (v26)
  {
    v27 = _NRCopyLogObjectForNRUUID();
    copyDescription2 = [(NRLink *)self copyDescription];
    _NRLogWithArgs(v27, 0, "%s%.30s:%-4d %@: Setup IKE %@ %@ callbacks", ", "[NRLinkWired setupIKECallbacks:]"", 593, copyDescription2, v23, v24);
  }

  objc_destroyWeak(&v38);
  objc_destroyWeak(&v42);

  objc_destroyWeak(&v46);
  objc_destroyWeak(&v50);

  objc_destroyWeak(&v54);
  objc_destroyWeak(&v58);

  objc_destroyWeak(&v63);
  objc_destroyWeak(location);

LABEL_13:
}

- (void)restartIKESessionForDataProtectionClass:(unsigned __int8)class
{
  classCopy = class;
  String = NRDataProtectionClassCreateString();
  if (self->super._state == 255)
  {
    v9 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_12;
    }

    v11 = _NRCopyLogObjectForNRUUID();
    copyDescription = [(NRLink *)self copyDescription];
    _NRLogWithArgs(v11, 0, "%s%.30s:%-4d %@: Not restarting %@ session because cancelled", ", "[NRLinkWired restartIKESessionForDataProtectionClass:]"", 374, copyDescription, String);
LABEL_11:

    goto LABEL_12;
  }

  [(NRLinkWired *)self invalidateIKESessionForClass:classCopy];
  if (classCopy == 3 && ![(NRLinkWired *)self remoteClassCUnlocked])
  {
    v13 = _NRCopyLogObjectForNRUUID();
    v14 = _NRLogIsLevelEnabled();

    if (!v14)
    {
      goto LABEL_12;
    }

    v11 = _NRCopyLogObjectForNRUUID();
    copyDescription = [(NRLink *)self copyDescription];
    _NRLogWithArgs(v11, 0, "%s%.30s:%-4d %@: Not restarting %@ session because remote not unlocked", ", "[NRLinkWired restartIKESessionForDataProtectionClass:]"", 379, copyDescription, String);
    goto LABEL_11;
  }

  v5 = _NRCopyLogObjectForNRUUID();
  v6 = _NRLogIsLevelEnabled();

  if (v6)
  {
    v7 = _NRCopyLogObjectForNRUUID();
    copyDescription2 = [(NRLink *)self copyDescription];
    _NRLogWithArgs(v7, 0, "%s%.30s:%-4d %@: Restarting %@ session", ", "[NRLinkWired restartIKESessionForDataProtectionClass:]"", 382, copyDescription2, String);
  }

  [(NRLinkWired *)self setupIPsecIfNecessary:classCopy];
LABEL_12:
}

- (id)ikeSessionPointerForDataProtectionClass:(unsigned __int8)class
{
  if (class == 4)
  {
    v3 = &OBJC_IVAR___NRLinkWired__ikeSessionClassD;
    return (&self->super.super.isa + *v3);
  }

  if (class == 3)
  {
    v3 = &OBJC_IVAR___NRLinkWired__ikeSessionClassC;
    return (&self->super.super.isa + *v3);
  }

  v16[1] = class;
  v5 = sub_1000DE468();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v7 = sub_1000DE468();
    String = NRDataProtectionClassCreateString();
    _NRLogWithArgs(v7, 16, "%s%.30s:%-4d ABORTING: Cannot copy IKE session pointer for %@", ", "[NRLinkWired ikeSessionPointerForDataProtectionClass:]"", 352, String);
  }

  v9 = _os_log_pack_size();
  v10 = __error();
  v11 = _os_log_pack_fill(v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v9, *v10, &_mh_execute_header, "%{public}s Cannot copy IKE session pointer for %@");
  v12 = NRDataProtectionClassCreateString();
  *v11 = 136446466;
  *(v11 + 4) = "[NRLinkWired ikeSessionPointerForDataProtectionClass:]";
  *(v11 + 12) = 2112;
  *(v11 + 14) = v12;
  sub_1000DE468();
  v13 = _NRLogAbortWithPack();
  [(NRLinkWired *)v13 invalidateIKESessionForClass:v14, v15];
  return result;
}

- (void)invalidateIKESessionForClass:(unsigned __int8)class
{
  classCopy = class;
  v5.receiver = self;
  v5.super_class = NRLinkWired;
  [(NRLink *)&v5 invalidateIKESessionForClass:?];
  [(NRLink *)self invalidateIKESession:[(NRLinkWired *)self ikeSessionPointerForDataProtectionClass:classCopy]];
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
      _NRLogWithArgs(v16, 0, "%s%.30s:%-4d %@: peer availability check already in progress, ignoring request", ", "[NRLinkWired checkPeerAvailabilityWithForceAggressive:]"", 303, copyDescription);
    }
  }

  else
  {
    if (IsLevelEnabled)
    {
      v9 = _NRCopyLogObjectForNRUUID();
      copyDescription2 = [(NRLink *)self copyDescription];
      _NRLogWithArgs(v9, 0, "%s%.30s:%-4d %@: peer availability check requested (aggresive: %d)", ", "[NRLinkWired checkPeerAvailabilityWithForceAggressive:]"", 306, copyDescription2, aggressiveCopy);
    }

    v11 = !aggressiveCopy;
    if (aggressiveCopy)
    {
      v12 = 5;
    }

    else
    {
      v12 = 3;
    }

    if (v11)
    {
      v13 = 3000;
    }

    else
    {
      v13 = 1000;
    }

    self->super._peerAvailabilityCheckInProgress = 1;
    objc_initWeak(&location, self);
    ikeSessionClassC = [(NRLinkWired *)self ikeSessionClassC];
    queue = [(NRLink *)self queue];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000E1308;
    v17[3] = &unk_1001FC018;
    objc_copyWeak(&v18, &location);
    [ikeSessionClassC sendKeepaliveWithRetries:v12 retryIntervalInMilliseconds:v13 callbackQueue:queue callback:v17];

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }
}

- (BOOL)initiateConnection
{
  v3 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v5 = _NRCopyLogObjectForNRUUID();
    copyDescription = [(NRLink *)self copyDescription];
    _NRLogWithArgs(v5, 0, "%s%.30s:%-4d %@: initiating connection with peer", ", "[NRLinkWired initiateConnection]"", 266, copyDescription);
  }

  if ([(NRLinkWired *)self isIKEResponder])
  {
    objc_opt_self();
    if (qword_100228E88 != -1)
    {
      dispatch_once(&qword_100228E88, &stru_1001FA180);
    }

    v7 = qword_100228E80;
    localInterfaceName = [(NRLink *)self localInterfaceName];
    localOuterEndpoint = [(NRLink *)self localOuterEndpoint];
    v10 = sub_100016A08(v7, self, localInterfaceName, localOuterEndpoint);

    return v10;
  }

  remoteOuterEndpoint = [(NRLink *)self remoteOuterEndpoint];

  if (!remoteOuterEndpoint)
  {
    v14 = @"No remote outer endpoint present";
LABEL_16:
    [(NRLinkWired *)self cancelWithReason:v14];
    return 0;
  }

  if (![(NRLink *)self setupVirtualInterface])
  {
    v14 = @"failed to setup virtual interface";
    goto LABEL_16;
  }

  if (self->_upgradeSessionAfterFirstUnlock || ![(NRLinkWired *)self onlyAllowClassC])
  {
    [(NRLinkWired *)self setupIPsecIfNecessary:4];
  }

  else
  {
    objc_initWeak(&location, self);
    objc_opt_self();
    if (qword_1002294C8 != -1)
    {
      dispatch_once(&qword_1002294C8, &stru_1001FD250);
    }

    v13 = qword_1002294C0;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000E16F0;
    v15[3] = &unk_1001FC730;
    objc_copyWeak(&v16, &location);
    sub_1001816DC(v13, v15);

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  return 1;
}

- (void)initiatePairing
{
  v3 = sub_100163A30(NRDLocalDevice, self->super._nrUUID);
  v4 = objc_alloc_init(NRPairingParameters);
  localInterfaceName = [(NRLink *)self localInterfaceName];
  if (v4)
  {
    objc_storeStrong(&v4->_localInterfaceName, localInterfaceName);
  }

  localOuterEndpoint = [(NRLink *)self localOuterEndpoint];
  if (v4)
  {
    objc_storeStrong(&v4->_localEndpoint, localOuterEndpoint);
  }

  remoteOuterEndpoint = [(NRLink *)self remoteOuterEndpoint];
  v8 = remoteOuterEndpoint;
  if (v4)
  {
    objc_storeStrong(&v4->_remoteEndpoint, remoteOuterEndpoint);

    isIKEResponder = self->_isIKEResponder;
    v4->_isResponder = isIKEResponder;
    v4->_deferIKESessionInvalidation = isIKEResponder;
  }

  else
  {
  }

  objc_initWeak(&location, self);
  v10 = sub_100012448([NRPairingClient alloc], self->super._queue, self->super._nrUUID, &v4->super.isa);
  objc_initWeak(&from, v10);
  v19 = _NSConcreteStackBlock;
  v20 = 3221225472;
  v21 = sub_1000E19D0;
  v22 = &unk_1001FB7E8;
  objc_copyWeak(&v24, &location);
  objc_copyWeak(&v25, &from);
  selfCopy = self;
  v11 = &v19;
  v12 = v11;
  if (v10 && (*(v10 + 10) & 1) == 0)
  {
    v13 = objc_retainBlock(v11);
    v14 = v10[18];
    v10[18] = v13;
  }

  sub_1000127C0(v10);
  [(NRLink *)self setPairingClient:v10];
  v15 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v17 = _NRCopyLogObjectForNRUUID();
    copyDescription = [(NRLink *)self copyDescription];
    _NRLogWithArgs(v17, 0, "%s%.30s:%-4d %@: initiated pairing with %@", ", "[NRLinkWired initiatePairing]"", 261, copyDescription, v3, v19, v20, v21, v22);
  }

  objc_destroyWeak(&v25);
  objc_destroyWeak(&v24);
  objc_destroyWeak(&from);

  objc_destroyWeak(&location);
}

- (BOOL)initializeExternalDeviceLink
{
  v7.receiver = self;
  v7.super_class = NRLinkWired;
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

- (BOOL)cancelWithReason:(id)reason
{
  reasonCopy = reason;
  if (reasonCopy)
  {
    v5 = [[NSString alloc] initWithFormat:reasonCopy arguments:&v14];
    [(NRLink *)self reportEvent:3005 details:v5];
    if ([(NRLink *)self changeStateTo:255])
    {
      linkDelegate = [(NRLink *)self linkDelegate];
      [linkDelegate linkIsUnavailable:self];

      [(NRLinkWired *)self invalidateLink];
    }

    else
    {
      v7 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v9 = _NRCopyLogObjectForNRUUID();
        copyDescription = [(NRLink *)self copyDescription];
        _NRLogWithArgs(v9, 1, "%s%.30s:%-4d %@: link already cancelled: %@", ", "[NRLinkWired cancelWithReason:]"", 195, copyDescription, self);
      }
    }
  }

  else
  {
    v12 = sub_1000DE468();
    v13 = _NRLogIsLevelEnabled();

    if (!v13)
    {
      goto LABEL_7;
    }

    v5 = sub_1000DE468();
    _NRLogWithArgs(v5, 17, "%s called with null reasonFormat", "[NRLinkWired cancelWithReason:]");
  }

LABEL_7:
  return reasonCopy != 0;
}

- (BOOL)start
{
  if ([(NRLink *)self state]== 8)
  {
    linkDelegate = [(NRLink *)self linkDelegate];
    [linkDelegate linkIsReady:self];

    return 1;
  }

  if ([(NRLink *)self startRequested])
  {
    return 1;
  }

  [(NRLink *)self setStartRequested:1];
  localInterfaceName = [(NRLink *)self localInterfaceName];

  if (!localInterfaceName)
  {
    v20 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      return 0;
    }

    v12 = _NRCopyLogObjectForNRUUID();
    copyDescription = [(NRLink *)self copyDescription];
    _NRLogWithArgs(v12, 17, "%@: Cannot start Wi-Fi link without local interface name", copyDescription);

    goto LABEL_15;
  }

  if ([(NRLink *)self state]!= 1)
  {
    v10 = _NRCopyLogObjectForNRUUID();
    v11 = _NRLogIsLevelEnabled();

    if (!v11)
    {
      return 0;
    }

    v12 = _NRCopyLogObjectForNRUUID();
    copyDescription2 = [(NRLink *)self copyDescription];
    v14 = sub_1001415A0([(NRLink *)self state]);
    _NRLogWithArgs(v12, 17, "%@: Cannot start link in state %@", copyDescription2, v14);

LABEL_15:
    return 0;
  }

  [(NRLink *)self reportEvent:3001];
  [(NRLink *)self updateIKEv2Role:&self->_isIKEResponder];
  if ([(NRLinkWired *)self isIKEResponder]|| ([(NRLink *)self remoteOuterEndpoint], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    v7 = sub_100163A30(NRDLocalDevice, self->super._nrUUID);
    v8 = v7;
    if (v7)
    {
      v9 = *(v7 + 48);
      if ((v9 & 8) != 0)
      {
        if (![(NRLinkWired *)self initializeExternalDeviceLink])
        {
          v15 = _NRCopyLogObjectForNRUUID();
          v16 = _NRLogIsLevelEnabled();

          if (v16)
          {
            v17 = _NRCopyLogObjectForNRUUID();
            copyDescription3 = [(NRLink *)self copyDescription];
            _NRLogWithArgs(v17, 17, "%@: failed to setup external device link", copyDescription3);
          }

          v19 = 0;
          goto LABEL_23;
        }

LABEL_22:
        v19 = 1;
LABEL_23:

        return v19;
      }

      if ((v9 & 0x1000) != 0)
      {
        [(NRLinkWired *)self initiateConnection];
        goto LABEL_22;
      }
    }

    [(NRLinkWired *)self initiatePairing];
    goto LABEL_22;
  }

  [(NRLinkWired *)self cancelWithReason:@"No remote outer endpoint present"];
  return 0;
}

- (id)copyDescriptionInner
{
  v3 = [NSString alloc];
  v9.receiver = self;
  v9.super_class = NRLinkWired;
  copyDescriptionInner = [(NRLink *)&v9 copyDescriptionInner];
  localOuterEndpoint = [(NRLink *)self localOuterEndpoint];
  remoteOuterEndpoint = [(NRLink *)self remoteOuterEndpoint];
  v7 = [v3 initWithFormat:@"%@, %@ -> %@", copyDescriptionInner, localOuterEndpoint, remoteOuterEndpoint];

  return v7;
}

- (void)invalidateLink
{
  v9.receiver = self;
  v9.super_class = NRLinkWired;
  [(NRLink *)&v9 invalidateLink];
  [(NRLinkWired *)self invalidateIKESessionClassD];
  [(NRLinkWired *)self invalidateIKESessionClassC];
  ikeListener = [(NRLinkWired *)self ikeListener];

  if (ikeListener)
  {
    ikeListener2 = [(NRLinkWired *)self ikeListener];
    [ikeListener2 cancel];

    [(NRLinkWired *)self setIkeListener:0];
  }

  companionProxyAgent = self->super._companionProxyAgent;
  if (companionProxyAgent)
  {
    sub_100070270(companionProxyAgent);
    [(NRLink *)self reportEvent:12003];
    v6 = self->super._companionProxyAgent;
    self->super._companionProxyAgent = 0;
  }

  [(NRLink *)self invalidateVirtualInterface];
  pathEvaluator = [(NRLinkWired *)self pathEvaluator];

  if (pathEvaluator)
  {
    pathEvaluator2 = [(NRLinkWired *)self pathEvaluator];
    nw_path_evaluator_cancel();

    [(NRLinkWired *)self setPathEvaluator:0];
  }
}

- (id)copyStatusString
{
  v3 = [NSMutableString alloc];
  v4 = [(NRLink *)self description];
  v5 = [v3 initWithString:v4];

  [v5 appendFormat:@"\n %35s = %@", "nrUUID", self->super._nrUUID];
  localInterfaceName = [(NRLink *)self localInterfaceName];
  [v5 appendFormat:@"\n %35s = %@", "localInterfaceName", localInterfaceName];

  [v5 appendFormat:@"\n %35s = %@", "listenerPortString", *(&self->_ikeSessionClassC + 7)];
  [v5 appendFormat:@"\n %35s = %@", "ikeSessionClassD", *(&self->_ikeListener + 7)];
  [v5 appendFormat:@"\n %35s = %@", "ikeSessionClassC", *(&self->_ikeSessionClassD + 7)];
  if (self->super._virtualInterface)
  {
    v7 = NEVirtualInterfaceCopyName();
    [v5 appendFormat:@"\n %35s = %@", "virtualInterfaceName", v7];
  }

  return v5;
}

@end