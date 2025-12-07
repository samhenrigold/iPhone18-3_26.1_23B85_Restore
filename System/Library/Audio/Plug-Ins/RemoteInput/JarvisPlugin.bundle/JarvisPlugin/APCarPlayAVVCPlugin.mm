@interface APCarPlayAVVCPlugin
- (APCarPlayAVVCPlugin)initWithPluginDelegate:(id)delegate;
- (int)createNewDevice;
- (int)destroyDevice:(id)device;
- (void)clientInit;
- (void)dealloc;
- (void)handleNotification:(__CFString *)notification fromObject:(const void *)object;
- (void)invalidate;
@end

@implementation APCarPlayAVVCPlugin

- (APCarPlayAVVCPlugin)initWithPluginDelegate:(id)delegate
{
  v31.receiver = self;
  v31.super_class = APCarPlayAVVCPlugin;
  v4 = [(APCarPlayAVVCPlugin *)&v31 init];
  v5 = v4;
  if (!v4)
  {
    return v5;
  }

  v4->_delegate = delegate;
  v6 = [[NSMutableArray alloc] initWithCapacity:1];
  v5->_devices = v6;
  if (!v6)
  {
    v23 = 114;
LABEL_20:
    sub_347C(v23, v5);
    return 0;
  }

  v7 = dispatch_queue_create("CarPlayAVVCPluginDevicesQueue", 0);
  v5->_devicesQueue = v7;
  if (!v7)
  {
    v23 = 117;
    goto LABEL_20;
  }

  v5->_carPlayAVVCClient = 0;
  v8 = _os_feature_enabled_impl();
  v5->_isAVOutputDeviceEnabled = v8;
  if (v8)
  {
    v9 = [objc_msgSend(+[AVOutputContext sharedSystemRemoteDisplayContext](AVOutputContext "sharedSystemRemoteDisplayContext")];
    if (v9 == &dword_0 + 2)
    {
      if (dword_C9B0 <= 50)
      {
        if (dword_C9B0 != -1 || (v9 = _LogCategory_Initialize(), v9))
        {
          sub_341C(v9, v10, v11);
        }
      }

      devicesQueue = v5->_devicesQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_120C;
      block[3] = &unk_8388;
      block[4] = v5;
      dispatch_sync(devicesQueue, block);
    }

    objc_initWeak(&location, v5);
    objc_initWeak(&from, v5->_devicesQueue);
    v5->_sharedSystemRemoteDisplayContext = +[AVOutputContext sharedSystemRemoteDisplayContext];
    v13 = +[NSNotificationCenter defaultCenter];
    v14 = AVOutputContextOutputDeviceDidChangeNotification;
    sharedSystemRemoteDisplayContext = v5->_sharedSystemRemoteDisplayContext;
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_1214;
    v25[3] = &unk_83B0;
    objc_copyWeak(&v26, &location);
    objc_copyWeak(&v27, &from);
    v5->_observer = [(NSNotificationCenter *)v13 addObserverForName:v14 object:sharedSystemRemoteDisplayContext queue:0 usingBlock:v25];
    objc_destroyWeak(&v27);
    objc_destroyWeak(&v26);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }

  else
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v5, sub_13C4, kFigEndpointNotification_EndpointActivated, 0, 0);
    v20 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v20, v5, sub_13C4, kFigEndpointNotification_EndpointDeactivated, 0, 0);
    v21 = v5->_devicesQueue;
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_13CC;
    v24[3] = &unk_8388;
    v24[4] = v5;
    dispatch_sync(v21, v24);
  }

  if (dword_C9B0 <= 50)
  {
    if (dword_C9B0 != -1 || (v16 = _LogCategory_Initialize(), v16))
    {
      sub_344C(v16, v17, v18);
    }
  }

  return v5;
}

- (void)invalidate
{
  if (self->_isAVOutputDeviceEnabled)
  {
    if (self->_observer)
    {
      [+[NSNotificationCenter defaultCenter](NSNotificationCenter removeObserver:"removeObserver:", self->_observer];
      self->_observer = 0;
    }

    self->_sharedSystemRemoteDisplayContext = 0;
  }

  else
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, kFigEndpointNotification_EndpointDeactivated, 0);
    v4 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveObserver(v4, self, kFigEndpointNotification_EndpointActivated, 0);
  }

  devicesQueue = self->_devicesQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_14D4;
  block[3] = &unk_8388;
  block[4] = self;
  dispatch_sync(devicesQueue, block);
  v6 = self->_devicesQueue;
  if (v6)
  {
    dispatch_release(v6);
    self->_devicesQueue = 0;
  }

  self->_delegate = 0;
}

- (void)dealloc
{
  carPlayAVVCClient = self->_carPlayAVVCClient;
  if (carPlayAVVCClient)
  {
    CFRelease(carPlayAVVCClient);
  }

  v4.receiver = self;
  v4.super_class = APCarPlayAVVCPlugin;
  [(APCarPlayAVVCPlugin *)&v4 dealloc];
}

- (void)handleNotification:(__CFString *)notification fromObject:(const void *)object
{
  if (dword_C9B0 <= 30 && (dword_C9B0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_C9B0, "[APCarPlayAVVCPlugin handleNotification:fromObject:]", 33554462, "CarPlayAVVCPlugin: Received notification %@ for device %lx\n", notification, object);
  }

  selfCopy = self;
  devicesQueue = self->_devicesQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_3330;
  block[3] = &unk_83D8;
  block[4] = self;
  block[5] = notification;
  block[6] = object;
  dispatch_async(devicesQueue, block);
}

- (void)clientInit
{
  values = @"avvcDevice_ConnectionLost";
  keys = kFigXPCRemoteClientOption_DeathNoticeName;
  if (!self->_carPlayAVVCClient)
  {
    Default = CFAllocatorGetDefault();
    v3 = CFDictionaryCreate(Default, &keys, &values, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v4 = FigXPCRemoteClientCreate();
    if (v4 && dword_C9B0 <= 90 && ((v5 = v4, dword_C9B0 != -1) || _LogCategory_Initialize()))
    {
      sub_34F0(v5);
      if (!v3)
      {
        return;
      }
    }

    else if (!v3)
    {
      return;
    }

    CFRelease(v3);
  }
}

- (int)createNewDevice
{
  [(APCarPlayAVVCPlugin *)self clientInit];
  if (self->_carPlayAVVCClient)
  {
    v3 = [[APCarPlayAVVCDevice alloc] initWithXPCClient:self->_carPlayAVVCClient];
    if (v3)
    {
      v4 = v3;
      [(NSMutableArray *)self->_devices addObject:v3];
      if (!self->_isAVOutputDeviceEnabled)
      {
        LocalCenter = CFNotificationCenterGetLocalCenter();
        CFNotificationCenterAddObserver(LocalCenter, self, sub_13C4, kFigEndpointNotification_EndpointDeactivated, v4, 0);
      }

      if (dword_C9B0 <= 50 && (dword_C9B0 != -1 || _LogCategory_Initialize()))
      {
        v8 = v4;
        deviceIdentifier = [(APCarPlayAVVCDevice *)v4 deviceIdentifier];
        sub_18FC(&dword_C9B0, "[APCarPlayAVVCPlugin createNewDevice]", v6, "CarPlayAVVCPlugin: Publishing device %{ptr} with id %'@\n");
      }

      [(AVAudioRemoteInputPluginDelegate *)self->_delegate inputPlugin:self didPublishDevice:v4, v8, deviceIdentifier];
      return 0;
    }

    else
    {
      return -6718;
    }
  }

  else
  {
    APSLogErrorAt();
    return -6728;
  }
}

- (int)destroyDevice:(id)device
{
  devices = self->_devices;
  if (devices && [(NSMutableArray *)devices containsObject:?])
  {
    if (dword_C9B0 <= 50 && (dword_C9B0 != -1 || _LogCategory_Initialize()))
    {
      deviceCopy = device;
      deviceIdentifier = [device deviceIdentifier];
      sub_18FC(&dword_C9B0, "[APCarPlayAVVCPlugin destroyDevice:]", v6, "CarPlayAVVCPlugin: Destroying and un-publishing device %{ptr} with id %'@\n");
    }

    [(AVAudioRemoteInputPluginDelegate *)self->_delegate inputPlugin:self didUnpublishDevice:device, deviceCopy, deviceIdentifier];
    [(NSMutableArray *)self->_devices removeObject:device];
    if (!self->_isAVOutputDeviceEnabled)
    {
      LocalCenter = CFNotificationCenterGetLocalCenter();
      CFNotificationCenterRemoveObserver(LocalCenter, self, kFigEndpointNotification_EndpointDeactivated, device);
    }
  }

  return 0;
}

@end