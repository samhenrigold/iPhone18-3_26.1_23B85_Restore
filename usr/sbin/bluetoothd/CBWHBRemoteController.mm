@interface CBWHBRemoteController
- (id)description;
- (void)activate;
- (void)invalidate;
- (void)setDiscoveryFlags:(unint64_t)flags;
@end

@implementation CBWHBRemoteController

- (id)description
{
  v2 = sub_100119550(self->_remoteDevice);
  v3 = NSPrintF_safe("CBWHBRemoteController: %@", v2);

  return v3;
}

- (void)setDiscoveryFlags:(unint64_t)flags
{
  if (self->_discoveryFlags != flags)
  {
    self->_discoveryFlags = flags;
    [(CBDiscovery *)self->_activatedDiscovery setDiscoveryFlags:flags & 0xFFFFBFFFFFFFFFFFLL];
  }
}

- (void)activate
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_100B50DC0 <= 30 && (dword_100B50DC0 != -1 || _LogCategory_Initialize()))
  {
    sub_100806E94(self);
  }

  v3 = self->_activatedDiscovery;
  if (!v3)
  {
    v3 = objc_alloc_init(CBDiscovery);
    activatedDiscovery = self->_activatedDiscovery;
    self->_activatedDiscovery = v3;

    [(CBDiscovery *)v3 setDiscoveryFlags:self->_discoveryFlags & 0xFFFFBFFFFFFFFFFFLL];
    [(CBDiscovery *)v3 setDispatchQueue:self->_dispatchQueue];
    xpcListenerEndpoint = [(CBDaemonServer *)self->_daemonServer xpcListenerEndpoint];
    if (xpcListenerEndpoint)
    {
      [(CBDiscovery *)v3 setTestListenerEndpoint:xpcListenerEndpoint];
      v8 = objc_alloc_init(CBDevice);
      idsDeviceIdentifier = [(RPCompanionLinkDevice *)self->_remoteDevice idsDeviceIdentifier];
      [v8 setIdentifier:idsDeviceIdentifier];

      [(CBDiscovery *)v3 setRemoteDevice:v8];
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_100119888;
      v18[3] = &unk_100ADF718;
      v10 = v3;
      v19 = v10;
      selfCopy = self;
      [(CBDiscovery *)v10 setDeviceFoundHandler:v18];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_1001198A8;
      v15[3] = &unk_100ADF718;
      v11 = v10;
      v16 = v11;
      selfCopy2 = self;
      [(CBDiscovery *)v11 setDeviceLostHandler:v15];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_1001198C8;
      v12[3] = &unk_100ADF740;
      v13 = v11;
      selfCopy3 = self;
      [(CBDiscovery *)v13 activateWithCompletion:v12];
    }

    else
    {
      sub_100806EF4(0, v5, v6);
    }
  }
}

- (void)invalidate
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_100B50DC0 <= 30 && (dword_100B50DC0 != -1 || _LogCategory_Initialize()))
  {
    sub_100807008(self);
  }

  [(CBDiscovery *)self->_activatedDiscovery invalidate];
  activatedDiscovery = self->_activatedDiscovery;
  self->_activatedDiscovery = 0;

  self->_invalidated = 1;
}

@end