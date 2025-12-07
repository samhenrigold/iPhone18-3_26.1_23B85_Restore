@interface SDBroadwayAgent
+ (id)sharedAgent;
- (NSString)description;
- (SDBroadwayAgent)init;
- (void)_applePayCardDectected:(id)dectected;
- (void)_invalidate;
- (void)_preparePresentationWithBroadwayActivationCode:(id)code testInfo:(id)info;
- (void)_startUIWithPhysicalCard:(id)card activationCode:(id)code testInfo:(id)info;
- (void)activate;
- (void)invalidate;
- (void)lookUpValidAccountWithBroadwayActivationCode:(id)code testInfo:(id)info;
- (void)lookupPhysicalCardWithBroadwayActivationCode:(id)code testInfo:(id)info;
- (void)preparePresentationWithBroadwayActivationCode:(id)code testInfo:(id)info;
- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error;
- (void)remoteAlertHandleDidActivate:(id)activate;
- (void)remoteAlertHandleDidDeactivate:(id)deactivate;
@end

@implementation SDBroadwayAgent

+ (id)sharedAgent
{
  if (qword_100989FB0 != -1)
  {
    sub_100164CB8();
  }

  v3 = qword_100989FB8;

  return v3;
}

- (SDBroadwayAgent)init
{
  v6.receiver = self;
  v6.super_class = SDBroadwayAgent;
  v2 = [(SDBroadwayAgent *)&v6 init];
  if (v2)
  {
    v3 = CUMainQueue();
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v3;
  }

  return v2;
}

- (NSString)description
{
  v2 = objc_alloc_init(NSMutableString);
  [v2 appendFormat:@"-- SDBroadwayAgent --"];
  if (byte_1009A0614)
  {
    v3 = "yes";
  }

  else
  {
    v3 = "no";
  }

  [v2 appendFormat:@"Suppressed: %s", v3];

  return v2;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100163610;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100163728;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_100971838 <= 30)
  {
    if (dword_100971838 != -1 || (v3 = _LogCategory_Initialize(), v3))
    {
      sub_100164CE8(v3, v4, v5);
    }
  }

  v6 = +[NSDistributedNotificationCenter defaultCenter];
  [v6 removeObserver:self];
}

- (void)_applePayCardDectected:(id)dectected
{
  dectectedCopy = dectected;
  object = [dectectedCopy object];
  userInfo = [dectectedCopy userInfo];

  [(SDBroadwayAgent *)self preparePresentationWithBroadwayActivationCode:object testInfo:userInfo];
}

- (void)preparePresentationWithBroadwayActivationCode:(id)code testInfo:(id)info
{
  codeCopy = code;
  infoCopy = info;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100163918;
  block[3] = &unk_1008CE900;
  block[4] = self;
  v12 = codeCopy;
  v13 = infoCopy;
  v9 = infoCopy;
  v10 = codeCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)_preparePresentationWithBroadwayActivationCode:(id)code testInfo:(id)info
{
  codeCopy = code;
  infoCopy = info;
  v9 = infoCopy;
  if (byte_1009A0614 == 1)
  {
    if (dword_100971838 <= 30)
    {
      if (dword_100971838 != -1 || (infoCopy = _LogCategory_Initialize(), infoCopy))
      {
        sub_100164D44(infoCopy, v7, v8);
      }
    }
  }

  else
  {
    if (dword_100971838 <= 30 && (dword_100971838 != -1 || _LogCategory_Initialize()))
    {
      sub_100164D04(codeCopy);
    }

    [(SDBroadwayAgent *)self lookUpValidAccountWithBroadwayActivationCode:codeCopy testInfo:v9];
  }
}

- (void)lookUpValidAccountWithBroadwayActivationCode:(id)code testInfo:(id)info
{
  codeCopy = code;
  infoCopy = info;
  if (dword_100971838 <= 30 && (dword_100971838 != -1 || _LogCategory_Initialize()))
  {
    sub_100164D60(codeCopy);
  }

  v8 = [infoCopy objectForKeyedSubscript:@"testParams"];
  if (v8)
  {
    v9 = SFTestFlagsFromString() & 1;
  }

  else
  {
    v9 = 0;
  }

  sharedInstance = [(objc_class *)off_1009718A8() sharedInstance];
  objc_initWeak(&location, self);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100163BA4;
  v13[3] = &unk_1008D1AD8;
  v17 = v9;
  objc_copyWeak(&v16, &location);
  v11 = codeCopy;
  v14 = v11;
  v12 = infoCopy;
  v15 = v12;
  [sharedInstance defaultAccountForFeature:2 completion:v13];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (void)lookupPhysicalCardWithBroadwayActivationCode:(id)code testInfo:(id)info
{
  codeCopy = code;
  infoCopy = info;
  if (dword_100971838 <= 30 && (dword_100971838 != -1 || _LogCategory_Initialize()))
  {
    sub_100164E08(codeCopy);
  }

  v8 = [infoCopy objectForKeyedSubscript:@"testParams"];
  if (v8)
  {
    v9 = SFTestFlagsFromString();
  }

  else
  {
    v9 = 0;
  }

  sharedInstance = [(objc_class *)off_1009718A8() sharedInstance];
  objc_initWeak(&location, self);
  v11 = v9 & 1;
  v12 = HIDWORD(v9) & 1;
  if (objc_opt_respondsToSelector())
  {
    v13 = v20;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100163F2C;
    v20[3] = &unk_1008D1B28;
    v20[4] = self;
    v22 = v11;
    v23 = v12;
    v14 = &v21;
    objc_copyWeak(&v21, &location);
    v15 = codeCopy;
    v20[5] = v15;
    v20[6] = infoCopy;
    [sharedInstance physicalCardForFeatureIdentifier:2 activationCode:v15 completion:v20];
  }

  else
  {
    if (dword_100971838 <= 90 && (dword_100971838 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_100971838, "[SDBroadwayAgent lookupPhysicalCardWithBroadwayActivationCode:testInfo:]", 90, "PKAccountService does not respond to new selector");
    }

    v13 = v16;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100164118;
    v16[3] = &unk_1008D1B28;
    v16[4] = self;
    v18 = v11;
    v19 = v12;
    v14 = &v17;
    objc_copyWeak(&v17, &location);
    v16[5] = codeCopy;
    v16[6] = infoCopy;
    [sharedInstance inactivePhysicalCardForFeatureIdentifier:2 completion:v16];
  }

  objc_destroyWeak(v14);
  objc_destroyWeak(&location);
}

- (void)_startUIWithPhysicalCard:(id)card activationCode:(id)code testInfo:(id)info
{
  cardCopy = card;
  codeCopy = code;
  infoCopy = info;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!codeCopy)
  {
    NSErrorWithOSStatusF(4294960591, "Missing activation code");
    v14 = LABEL_37:;
LABEL_9:
    v15 = 0;
    v16 = 0;
    v17 = 0;
    if (!v14)
    {
      goto LABEL_27;
    }

LABEL_10:
    if (dword_100971838 <= 60 && (dword_100971838 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_100971838, "[SDBroadwayAgent _startUIWithPhysicalCard:activationCode:testInfo:]", 60, "### Start UI failed: %{error}, with activation code: %@", v14, codeCopy);
    }

    goto LABEL_27;
  }

  if (cardCopy)
  {
    v10 = [infoCopy objectForKeyedSubscript:@"physicalCard"];
    if (v10)
    {
      v11 = [infoCopy objectForKeyedSubscript:@"physicalCard"];
      unsignedIntegerValue = [v11 unsignedIntegerValue];
    }

    else
    {
      unsignedIntegerValue = [cardCopy state];
    }

    if (unsignedIntegerValue == 5 || !unsignedIntegerValue)
    {
      v13 = off_1009718C0(unsignedIntegerValue);
      v14 = NSErrorWithOSStatusF(4294960591, "Physical card has invalid state %@", v13);

      goto LABEL_9;
    }
  }

  if (gSDProxCardsSuppressed == 1)
  {
    NSErrorWithOSStatusF(4294960561, "");
    goto LABEL_37;
  }

  if ([(SDBroadwayAgent *)self _uiShowing])
  {
    NSErrorWithOSStatusF(4294960575, "");
    goto LABEL_37;
  }

  v18 = +[SDStatusMonitor sharedMonitor];
  v19 = [v18 systemUIFlags] & 0x5C808;

  if (v19)
  {
    NSErrorWithOSStatusF(4294960587, "");
    goto LABEL_37;
  }

  if (dword_100971838 <= 30 && (dword_100971838 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_100971838, "[SDBroadwayAgent _startUIWithPhysicalCard:activationCode:testInfo:]", 30, "UI Start for card: %@ with code: %@", cardCopy, codeCopy);
  }

  v16 = [[NSMutableDictionary alloc] initWithDictionary:infoCopy];
  [v16 setObject:codeCopy forKeyedSubscript:@"activationCode"];
  v17 = [[SBSRemoteAlertDefinition alloc] initWithServiceName:@"com.apple.SharingViewService" viewControllerClassName:@"BroadwayActivationMainController"];
  v15 = objc_opt_new();
  [v15 setUserInfo:v16];
  alertHandle = self->_alertHandle;
  if (alertHandle)
  {
    [(SBSRemoteAlertHandle *)alertHandle removeObserver:self];
    [(SBSRemoteAlertHandle *)self->_alertHandle invalidate];
  }

  v21 = [SBSRemoteAlertHandle newHandleWithDefinition:v17 configurationContext:v15];
  v22 = self->_alertHandle;
  self->_alertHandle = v21;

  v23 = self->_alertHandle;
  if (!v23)
  {
    v14 = NSErrorWithOSStatusF(4294960556, "Create remote alert handle failed");
    if (!v14)
    {
      goto LABEL_27;
    }

    goto LABEL_10;
  }

  [(SBSRemoteAlertHandle *)v23 addObserver:self];
  [(SBSRemoteAlertHandle *)self->_alertHandle activateWithContext:0];
  if (dword_100971838 <= 30 && (dword_100971838 != -1 || _LogCategory_Initialize()))
  {
    sub_100164E9C(codeCopy);
  }

  v14 = 0;
LABEL_27:
}

- (void)remoteAlertHandleDidActivate:(id)activate
{
  activateCopy = activate;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100164700;
  v7[3] = &unk_1008CE028;
  v8 = activateCopy;
  selfCopy = self;
  v6 = activateCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)remoteAlertHandleDidDeactivate:(id)deactivate
{
  deactivateCopy = deactivate;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100164858;
  v7[3] = &unk_1008CE028;
  v8 = deactivateCopy;
  selfCopy = self;
  v6 = deactivateCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error
{
  handleCopy = handle;
  errorCopy = error;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001649DC;
  block[3] = &unk_1008CE900;
  v12 = handleCopy;
  selfCopy = self;
  v14 = errorCopy;
  v9 = errorCopy;
  v10 = handleCopy;
  dispatch_async(dispatchQueue, block);
}

@end