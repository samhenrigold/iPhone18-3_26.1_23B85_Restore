@interface AudioDeviceManager
+ (id)sharedAudioDeviceManager;
- (AudioDeviceManager)init;
- (BOOL)_isDevicePairedCheck:(id)check;
- (BOOL)_isUSBDevice:(id)device;
- (id)_ensureXPCStarted;
- (id)_myBluetoothAddressString;
- (void)_activate;
- (void)_bluetoothStateUpdate:(int64_t)update;
- (void)_connectedDeviceFound:(id)found;
- (void)_connectedDeviceLost:(id)lost;
- (void)_connectedUSBDeviceMonitorStart;
- (void)_ensureXPCStopped;
- (void)_hostBTAddress:(id)address;
- (void)_invalidate;
- (void)_newUSBDeviceFound:(id)found;
- (void)_startXPCConnection;
- (void)_usbDeviceLost:(id)lost;
- (void)_usbDevicePropertyChanged:(id)changed;
- (void)_xpcConnectionEvent:(id)event;
- (void)_xpcConnectionInvalidated:(id)invalidated;
- (void)activate:(BOOL)activate;
- (void)getAllAudioAccessoriesPublishedUIDsWithCompletion:(id)completion;
- (void)sendMsg:(int)msg forUID:(id)d withArgs:(id)args;
- (void)usbDeviceDisableAirPlaneMode:(id)mode;
- (void)usbDeviceEnableAirPlaneMode:(id)mode;
- (void)usbDeviceHideDevice:(id)device;
- (void)usbDeviceUnHideDevice:(id)device;
@end

@implementation AudioDeviceManager

+ (id)sharedAudioDeviceManager
{
  if (qword_1002FA018 != -1)
  {
    sub_1001D0FA0();
  }

  v3 = qword_1002FA010;

  return v3;
}

- (AudioDeviceManager)init
{
  v8.receiver = self;
  v8.super_class = AudioDeviceManager;
  v2 = [(AudioDeviceManager *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.AudioDeviceManager", v3);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v4;

    v6 = v2;
  }

  return v2;
}

- (void)activate:(BOOL)activate
{
  v5 = _os_feature_enabled_impl();
  if (v5)
  {
    dispatchQueue = self->_dispatchQueue;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100009B04;
    v9[3] = &unk_1002B67F0;
    activateCopy = activate;
    v9[4] = self;
    dispatch_async(dispatchQueue, v9);
  }

  else if (dword_1002F5DA0 <= 30)
  {
    if (dword_1002F5DA0 != -1 || (v5 = _LogCategory_Initialize(), v5))
    {
      sub_1001D0FB4(v5, v6, v7);
    }
  }
}

- (void)getAllAudioAccessoriesPublishedUIDsWithCompletion:(id)completion
{
  completionCopy = completion;
  v7 = completionCopy;
  if (dword_1002F5DA0 <= 50)
  {
    if (dword_1002F5DA0 != -1 || (completionCopy = _LogCategory_Initialize(), completionCopy))
    {
      sub_1001D102C(completionCopy, v5, v6);
    }
  }

  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x3032000000;
  v14[3] = sub_1000038B8;
  v14[4] = sub_100003808;
  v15 = objc_alloc_init(NSMutableArray);
  if (self->_xpcConnection)
  {
    if (dword_1002F5DA0 <= 50 && (dword_1002F5DA0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1002F5DA0, "[AudioDeviceManager getAllAudioAccessoriesPublishedUIDsWithCompletion:]", 50, "Getting published devices");
    }

    v8 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v8, "kBTAudioMsgId", 0x16uLL);
    xpcConnection = self->_xpcConnection;
    dispatchQueue = self->_dispatchQueue;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100009D9C;
    v11[3] = &unk_1002B6818;
    v13 = v14;
    v12 = v7;
    xpc_connection_send_message_with_reply(xpcConnection, v8, dispatchQueue, v11);
  }

  else if (dword_1002F5DA0 <= 90 && (dword_1002F5DA0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1002F5DA0, "[AudioDeviceManager getAllAudioAccessoriesPublishedUIDsWithCompletion:]", 90, "###No valid XPC connection");
  }

  _Block_object_dispose(v14, 8);
}

- (void)sendMsg:(int)msg forUID:(id)d withArgs:(id)args
{
  v6 = *&msg;
  dCopy = d;
  argsCopy = args;
  v12 = argsCopy;
  if (self->_xpcConnection)
  {
    *keys = *off_1002B6838;
    v19 = "kBTAudioMsgArgs";
    values[0] = xpc_uint64_create(v6);
    values[1] = xpc_string_create([dCopy UTF8String]);
    if (v12)
    {
      v13 = 3;
    }

    else
    {
      v13 = 2;
    }

    v14 = xpc_dictionary_create(keys, values, v13);
    if (v14)
    {
      if (dword_1002F5DA0 <= 40 && (dword_1002F5DA0 != -1 || _LogCategory_Initialize()))
      {
        sub_1001D1170(v6);
      }

      xpc_connection_send_message(self->_xpcConnection, v14);
    }

    else
    {
      sub_1001D11B0(dword_1002F5DA0);
    }

    for (i = 2; i != -1; --i)
    {
    }
  }

  else
  {
    sub_1001D1210(argsCopy, v10, v11);
  }
}

- (void)usbDeviceEnableAirPlaneMode:(id)mode
{
  modeCopy = mode;
  if (modeCopy)
  {
    if (self->_xpcConnection)
    {
      if (dword_1002F5DA0 <= 40 && (dword_1002F5DA0 != -1 || _LogCategory_Initialize()))
      {
        sub_1001D1270(modeCopy);
      }

      v6 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_uint64(v6, "kBTAudioMsgId", 0x23uLL);
      xpc_dictionary_set_string(v6, "kAccAudioMsgArgUSBDeviceBTAddress", [modeCopy UTF8String]);
      xpc_connection_send_message(self->_xpcConnection, v6);
    }

    else
    {
      sub_1001D12B0(dword_1002F5DA0, v4, v5);
    }
  }

  else
  {
    sub_1001D1308(0, v4, v5);
  }
}

- (void)usbDeviceDisableAirPlaneMode:(id)mode
{
  modeCopy = mode;
  if (modeCopy)
  {
    if (self->_xpcConnection)
    {
      if (dword_1002F5DA0 <= 40 && (dword_1002F5DA0 != -1 || _LogCategory_Initialize()))
      {
        sub_1001D1368(modeCopy);
      }

      v6 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_uint64(v6, "kBTAudioMsgId", 0x24uLL);
      xpc_dictionary_set_string(v6, "kAccAudioMsgArgUSBDeviceBTAddress", [modeCopy UTF8String]);
      xpc_connection_send_message(self->_xpcConnection, v6);
    }

    else
    {
      sub_1001D13A8(dword_1002F5DA0, v4, v5);
    }
  }

  else
  {
    sub_1001D1400(0, v4, v5);
  }
}

- (void)usbDeviceHideDevice:(id)device
{
  deviceCopy = device;
  if (deviceCopy)
  {
    if (self->_xpcConnection)
    {
      if (dword_1002F5DA0 <= 40 && (dword_1002F5DA0 != -1 || _LogCategory_Initialize()))
      {
        sub_1001D1460(deviceCopy);
      }

      v6 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_uint64(v6, "kBTAudioMsgId", 0x20uLL);
      xpc_dictionary_set_string(v6, "kAccAudioMsgArgUSBDeviceBTAddress", [deviceCopy UTF8String]);
      xpc_connection_send_message(self->_xpcConnection, v6);
    }

    else
    {
      sub_1001D14A0(dword_1002F5DA0, v4, v5);
    }
  }

  else
  {
    sub_1001D14F8(0, v4, v5);
  }
}

- (void)usbDeviceUnHideDevice:(id)device
{
  deviceCopy = device;
  if (deviceCopy)
  {
    if (self->_xpcConnection)
    {
      if (dword_1002F5DA0 <= 40 && (dword_1002F5DA0 != -1 || _LogCategory_Initialize()))
      {
        sub_1001D1558(deviceCopy);
      }

      v6 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_uint64(v6, "kBTAudioMsgId", 0x21uLL);
      xpc_dictionary_set_string(v6, "kAccAudioMsgArgUSBDeviceBTAddress", [deviceCopy UTF8String]);
      xpc_connection_send_message(self->_xpcConnection, v6);
    }

    else
    {
      sub_1001D1598(dword_1002F5DA0, v4, v5);
    }
  }

  else
  {
    sub_1001D15F0(0, v4, v5);
  }
}

- (void)_activate
{
  _ensureXPCStarted = [(AudioDeviceManager *)self _ensureXPCStarted];
  [(AudioDeviceManager *)self _startXPCConnection];

  [(AudioDeviceManager *)self _connectedUSBDeviceMonitorStart];
}

- (void)_bluetoothStateUpdate:(int64_t)update
{
  selfCopy = self;
  if (update == 5)
  {
    btPowerState = self->_btPowerState;
    if (!btPowerState)
    {
      if (dword_1002F5DA0 <= 50)
      {
        if (dword_1002F5DA0 != -1 || (self = _LogCategory_Initialize(), self))
        {
          self = sub_1001D1650(self, a2, update);
        }

        btPowerState = selfCopy->_btPowerState;
      }

      if (!btPowerState)
      {
        selfCopy->_btPowerState = 1;
LABEL_17:
        if (dword_1002F5DA0 <= 50)
        {
          if (dword_1002F5DA0 != -1 || (self = _LogCategory_Initialize(), self))
          {
            sub_1001D1688(self, a2, update);
          }
        }

        xdict = xpc_dictionary_create(0, 0, 0);
        xpc_dictionary_set_uint64(xdict, "kBTAudioMsgId", 0x1EuLL);
        xpc_dictionary_set_BOOL(xdict, "kAccAudioMsgArgUSBDeviceHiddenState", selfCopy->_btPowerState);
        _ensureXPCStarted = [(AudioDeviceManager *)selfCopy _ensureXPCStarted];
        xpc_connection_send_message(_ensureXPCStarted, xdict);
      }
    }
  }

  else if (update == 4 && self->_btPowerState)
  {
    if (dword_1002F5DA0 <= 50)
    {
      if (dword_1002F5DA0 != -1 || (self = _LogCategory_Initialize(), self))
      {
        self = sub_1001D166C(self, a2, update);
      }
    }

    if (selfCopy->_btPowerState)
    {
      selfCopy->_btPowerState = 0;
      goto LABEL_17;
    }
  }
}

- (void)_connectedDeviceFound:(id)found
{
  foundCopy = found;
  v4 = [(AudioDeviceManager *)self _isUSBDevice:foundCopy];
  v5 = foundCopy;
  if (v4)
  {
    btAddressData = [foundCopy btAddressData];
    v7 = CUPrintNSDataAddress();

    if (v7)
    {
      if (dword_1002F5DA0 <= 50 && (dword_1002F5DA0 != -1 || _LogCategory_Initialize()))
      {
        sub_1001D16A4(v7);
      }

      [(NSMutableDictionary *)self->_connectedBTUSBDevices setObject:foundCopy forKeyedSubscript:v7];
    }

    v5 = foundCopy;
  }

  _objc_release_x1(v4, v5);
}

- (void)_connectedDeviceLost:(id)lost
{
  lostCopy = lost;
  v4 = [(AudioDeviceManager *)self _isUSBDevice:lostCopy];
  v5 = lostCopy;
  if (v4)
  {
    btAddressData = [lostCopy btAddressData];
    v7 = CUPrintNSDataAddress();

    if (v7)
    {
      v8 = [(NSMutableDictionary *)self->_connectedBTUSBDevices objectForKeyedSubscript:v7];

      if (v8)
      {
        if (dword_1002F5DA0 <= 50 && (dword_1002F5DA0 != -1 || _LogCategory_Initialize()))
        {
          sub_1001D16E4(v7);
        }

        [(NSMutableDictionary *)self->_connectedBTUSBDevices setObject:0 forKeyedSubscript:v7];
      }
    }

    v5 = lostCopy;
  }

  _objc_release_x1(v4, v5);
}

- (void)_connectedUSBDeviceMonitorStart
{
  if (!self->_connectedBTDiscovery)
  {
    v14[5] = v6;
    v14[6] = v5;
    v14[11] = v3;
    v14[12] = v4;
    selfCopy = self;
    if (dword_1002F5DA0 <= 30)
    {
      if (dword_1002F5DA0 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_1001D1724(self, a2, v2);
      }
    }

    v8 = objc_alloc_init(CBDiscovery);
    connectedBTDiscovery = selfCopy->_connectedBTDiscovery;
    selfCopy->_connectedBTDiscovery = v8;
    v10 = v8;

    [(CBDiscovery *)v10 setDispatchQueue:selfCopy->_dispatchQueue];
    [(CBDiscovery *)v10 setLabel:@"AudioDeviceManager"];
    [(CBDiscovery *)v10 setDiscoveryFlags:[(CBDiscovery *)v10 discoveryFlags]| 0x200000];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10000AACC;
    v14[3] = &unk_1002B6858;
    v14[4] = selfCopy;
    [(CBDiscovery *)v10 setDeviceFoundHandler:v14];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10000AAD8;
    v13[3] = &unk_1002B6880;
    v13[4] = selfCopy;
    [(CBDiscovery *)v10 setBluetoothStateChangedHandler:v13];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10000AB18;
    v12[3] = &unk_1002B6858;
    v12[4] = selfCopy;
    [(CBDiscovery *)v10 setDeviceLostHandler:v12];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10000AB24;
    v11[3] = &unk_1002B68A8;
    v11[4] = selfCopy;
    v11[5] = v10;
    [(CBDiscovery *)v10 activateWithCompletion:v11];
  }
}

- (void)_hostBTAddress:(id)address
{
  xdict = xpc_dictionary_create_reply(address);
  _myBluetoothAddressString = [(AudioDeviceManager *)self _myBluetoothAddressString];
  v5 = _myBluetoothAddressString;
  if (_myBluetoothAddressString)
  {
    xpc_dictionary_set_string(xdict, "kAccAudioMsgArgUSBHostBTAddress", [_myBluetoothAddressString UTF8String]);
  }

  xpc_connection_send_message(self->_xpcConnection, xdict);
}

- (BOOL)_isUSBDevice:(id)device
{
  deviceCopy = device;
  v4 = ([deviceCopy connectedServices] & 0x11) != 0 && objc_msgSend(deviceCopy, "productID") == 8223;

  return v4;
}

- (id)_myBluetoothAddressString
{
  p_myBTAddress = &self->_myBTAddress;
  myBTAddress = self->_myBTAddress;
  if (!myBTAddress || -[NSString length](myBTAddress, "length") != 17 || !strcmp([*p_myBTAddress UTF8String], "00:00:00:00:00:00") || objc_msgSend(*p_myBTAddress, "isEqualToString:", @"NULL"))
  {
    v4 = [CBController controllerInfoAndReturnError:0];
    hardwareAddressData = [v4 hardwareAddressData];
    v6 = CUPrintNSDataAddress();
    v7 = *p_myBTAddress;
    *p_myBTAddress = v6;

    if (!*p_myBTAddress || [*p_myBTAddress length] != 17 || !strcmp(objc_msgSend(*p_myBTAddress, "UTF8String"), "00:00:00:00:00:00") || objc_msgSend(*p_myBTAddress, "isEqualToString:", @"NULL"))
    {
      v8 = MGCopyAnswer();
      uppercaseString = [v8 uppercaseString];
      v10 = *p_myBTAddress;
      *p_myBTAddress = uppercaseString;
    }
  }

  if (dword_1002F5DA0 <= 30 && (dword_1002F5DA0 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D1780(p_myBTAddress);
  }

  v11 = *p_myBTAddress;

  return v11;
}

- (void)_newUSBDeviceFound:(id)found
{
  foundCopy = found;
  xdict = foundCopy;
  if (!self->_usbDeviceMap)
  {
    v7 = objc_alloc_init(NSMutableDictionary);
    usbDeviceMap = self->_usbDeviceMap;
    self->_usbDeviceMap = v7;
  }

  if (self->_xpcConnection)
  {
    string = xpc_dictionary_get_string(xdict, "kAccAudioMsgArgBTAddress");
    v10 = xpc_dictionary_get_string(xdict, "kAccAudioMsgArgUSBID");
    v11 = xpc_dictionary_get_string(xdict, "kAccAudioMsgArgUSBModelID");
    v12 = xpc_dictionary_get_string(xdict, "kAccAudioMsgArgUSBName");
    if (string)
    {
      if (v10)
      {
        v15 = v12;
        v16 = [NSString stringWithUTF8String:string];
        v17 = [NSString stringWithUTF8String:v10];
        reply = xpc_dictionary_create_reply(xdict);
        v19 = [(NSMutableDictionary *)self->_usbDeviceMap objectForKeyedSubscript:v16];

        if (v19)
        {
          if (dword_1002F5DA0 <= 50)
          {
            if (dword_1002F5DA0 != -1 || (v20 = _LogCategory_Initialize(), v20))
            {
              sub_1001D17C4(v20, v21, v22);
            }
          }

          [(NSMutableDictionary *)self->_usbDeviceMap setObject:0 forKeyedSubscript:v16];
        }

        v23 = objc_alloc_init(USBDevice);
        [(USBDevice *)v23 setUsbUID:v17];
        [(USBDevice *)v23 setBtAddress:v16];
        [(USBDevice *)v23 setColor:0];
        [(USBDevice *)v23 setFwVersion:0];
        [(USBDevice *)v23 setFeatureBitmask:0];
        [(USBDevice *)v23 setPid:0];
        if (v11)
        {
          v24 = [NSString stringWithUTF8String:v11];
          [(USBDevice *)v23 setUsbModel:v24];
        }

        if (v15)
        {
          v25 = [NSString stringWithUTF8String:v15];
          [(USBDevice *)v23 setUsbName:v25];
        }

        uint64 = xpc_dictionary_get_uint64(xdict, "kAccAudioMsgArgUSBColor");
        if (uint64)
        {
          v27 = [NSNumber numberWithUnsignedLong:uint64];
          [(USBDevice *)v23 setColor:v27];
        }

        v28 = xpc_dictionary_get_uint64(xdict, "kAccAudioMsgArgUSBPairingMode");
        if (v28)
        {
          v29 = [NSNumber numberWithUnsignedLong:v28];
          [(USBDevice *)v23 setPairingMode:v29];
        }

        v59 = reply;
        v30 = xpc_dictionary_get_uint64(xdict, "kAccAudioMsgArgUSBPid");
        if (v30)
        {
          v31 = [NSNumber numberWithUnsignedLong:v30];
          [(USBDevice *)v23 setPid:v31];
        }

        v32 = v17;
        v33 = xpc_dictionary_get_uint64(xdict, "kAccAudioMsgArgUSBFeatureBitMask");
        if (v33)
        {
          v34 = [NSNumber numberWithUnsignedLong:v33];
          [(USBDevice *)v23 setFeatureBitmask:v34];
        }

        v35 = xpc_dictionary_get_value(xdict, "kAccAudioMsgArgUSBFwVersion");
        count = xpc_array_get_count(v35);
        v37 = objc_alloc_init(NSMutableArray);
        if (v35 && xpc_get_type(v35) == &_xpc_type_array && count)
        {
          for (i = 0; i != count; ++i)
          {
            v39 = [NSNumber numberWithUnsignedLong:xpc_array_get_uint64(v35, i)];
            [v37 addObject:v39];
          }
        }

        [(USBDevice *)v23 setFwVersion:v37, v59];
        if (dword_1002F5DA0 <= 50 && (dword_1002F5DA0 != -1 || _LogCategory_Initialize()))
        {
          sub_1001D17E0(v23);
        }

        [(USBDevice *)v23 setIsCurrentRoute:1];
        [(USBDevice *)v23 setIsStreaming:0];
        [(NSMutableDictionary *)self->_usbDeviceMap setObject:v23 forKeyedSubscript:v16];
        v40 = v32;
        objc_storeStrong(&self->_lastConnectedUSBDevice, v32);
        if (self->_btPowerState)
        {
          v41 = [(NSMutableDictionary *)self->_connectedBTUSBDevices objectForKeyedSubscript:v16];

          v42 = v60;
          if (v41)
          {
            xpc_dictionary_set_uint64(v60, "kBTAudioMsgMethod", 0x1AuLL);
            if (dword_1002F5DA0 <= 50)
            {
              if (dword_1002F5DA0 != -1 || (v43 = _LogCategory_Initialize(), v43))
              {
                sub_1001D199C(v43, v44, v45);
              }
            }
          }

          else
          {
            v49 = +[BTSmartRoutingDaemon sharedBTSmartRoutingDaemon];
            v50 = [v49 _isWxPaired:v16];

            if (v50)
            {
              xpc_dictionary_set_uint64(v60, "kBTAudioMsgMethod", 0x1BuLL);
              if (dword_1002F5DA0 <= 50)
              {
                if (dword_1002F5DA0 != -1 || (v54 = _LogCategory_Initialize(), v54))
                {
                  sub_1001D19D4(v54, v55, v56);
                }
              }
            }

            else
            {
              if (dword_1002F5DA0 <= 50)
              {
                if (dword_1002F5DA0 != -1 || (v51 = _LogCategory_Initialize(), v51))
                {
                  sub_1001D19B8(v51, v52, v53);
                }
              }

              xpc_dictionary_set_uint64(v60, "kBTAudioMsgMethod", 0x1CuLL);
            }
          }
        }

        else
        {
          v42 = v60;
          xpc_dictionary_set_uint64(v60, "kBTAudioMsgMethod", 0x1DuLL);
          if (dword_1002F5DA0 <= 50)
          {
            if (dword_1002F5DA0 != -1 || (v46 = _LogCategory_Initialize(), v46))
            {
              sub_1001D1980(v46, v47, v48);
            }
          }
        }

        v57 = +[BTSmartRoutingDaemon sharedBTSmartRoutingDaemon];
        [v57 usbDeviceFound:v23];

        v58 = +[AAUSBSupportedDeviceManagerDaemon sharedAAUSBSupportedDeviceManagerDaemon];
        [v58 usbDeviceFound:v23];

        xpc_connection_send_message(self->_xpcConnection, v42);
      }

      else
      {
        sub_1001D19F0(v12, v13, v14);
      }
    }

    else
    {
      sub_1001D1A50(v12, v13, v14);
    }
  }

  else
  {
    sub_1001D1AB0(foundCopy, v5, v6);
  }
}

- (void)_usbDeviceLost:(id)lost
{
  lostCopy = lost;
  xdict = lostCopy;
  if (dword_1002F5DA0 <= 50)
  {
    if (dword_1002F5DA0 != -1 || (lostCopy = _LogCategory_Initialize(), lostCopy))
    {
      sub_1001D1B10(lostCopy, v5, v6);
    }
  }

  if (self->_usbDeviceMap)
  {
    string = xpc_dictionary_get_string(xdict, "kAccAudioMsgArgBTAddress");
    v8 = xpc_dictionary_get_string(xdict, "kAccAudioMsgArgUSBID");
    if (string)
    {
      v11 = v8;
      if (v8)
      {
        v12 = [NSString stringWithUTF8String:string];
        v13 = [NSString stringWithUTF8String:v11];
        if (dword_1002F5DA0 <= 50 && (dword_1002F5DA0 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&dword_1002F5DA0, "[AudioDeviceManager _usbDeviceLost:]", 50, "USB device with uid %@ and btaddress %@ unplugged", v13, v12);
        }

        v14 = [(NSMutableDictionary *)self->_usbDeviceMap objectForKeyedSubscript:v12];

        if (v14)
        {
          [(NSMutableDictionary *)self->_usbDeviceMap setObject:0 forKeyedSubscript:v12];
        }

        lastConnectedUSBDevice = self->_lastConnectedUSBDevice;
        self->_lastConnectedUSBDevice = 0;

        v16 = +[BTSmartRoutingDaemon sharedBTSmartRoutingDaemon];
        [v16 usbDeviceLost:v12];

        v17 = +[AAUSBSupportedDeviceManagerDaemon sharedAAUSBSupportedDeviceManagerDaemon];
        [v17 usbDeviceLost:v12];
      }

      else
      {
        sub_1001D1B2C(0, v9, v10);
      }
    }

    else
    {
      sub_1001D1B8C(v8, v9, v10);
    }
  }
}

- (void)_usbDevicePropertyChanged:(id)changed
{
  changedCopy = changed;
  v6 = changedCopy;
  xdict = changedCopy;
  if (dword_1002F5DA0 <= 50)
  {
    if (dword_1002F5DA0 != -1 || (changedCopy = _LogCategory_Initialize(), v6 = xdict, changedCopy))
    {
      sub_1001D1BEC(changedCopy, v5, v6);
      v6 = xdict;
    }
  }

  if (self->_usbDeviceMap)
  {
    string = xpc_dictionary_get_string(v6, "kAccAudioMsgArgBTAddress");
    v8 = xpc_dictionary_get_string(xdict, "kAccAudioMsgArgUSBID");
    if (string)
    {
      v11 = v8;
      if (v8)
      {
        v12 = [NSString stringWithUTF8String:string];
        v13 = [NSString stringWithUTF8String:v11];
        v14 = [(NSMutableDictionary *)self->_usbDeviceMap objectForKeyedSubscript:v12];

        if (v14)
        {
          v18 = xpc_dictionary_get_dictionary(xdict, "kAccAudioMsgArgUSBDeviceStreamingState");
          if (v18)
          {
            v19 = xpc_dictionary_get_BOOL(xdict, "kAccAudioMsgArgUSBDeviceStreamingState");
            if (dword_1002F5DA0 < 51)
            {
              v20 = v19;
              if (dword_1002F5DA0 != -1 || _LogCategory_Initialize())
              {
                v21 = @"Not Streaming";
                if (v20)
                {
                  v21 = @"Streaming";
                }

                LogPrintF(&dword_1002F5DA0, "[AudioDeviceManager _usbDevicePropertyChanged:]", 50, "USB device with btAddress %@ and USB UID %@ is %@", v12, v13, v21);
              }
            }
          }

          if (xpc_dictionary_get_BOOL(xdict, "kAccAudioMsgArgUSBDevicePairingState"))
          {
            if (dword_1002F5DA0 < 51 && (dword_1002F5DA0 != -1 || _LogCategory_Initialize()))
            {
              LogPrintF(&dword_1002F5DA0, "[AudioDeviceManager _usbDevicePropertyChanged:]", 50, "USB device with btAddress %@ and USB UID %@ is %@", v12, v13, @"Ready to Pair.");
            }

            v27 = +[AAUSBSupportedDeviceManagerDaemon sharedAAUSBSupportedDeviceManagerDaemon];
            [v27 usbDevicePairingModeChanged:1 address:v12];
          }

          if (xpc_dictionary_get_BOOL(xdict, "kAccAudioMsgArgUSBDeviceAirPlaneModeOff"))
          {
            if (dword_1002F5DA0 <= 50 && (dword_1002F5DA0 != -1 || _LogCategory_Initialize()))
            {
              LogPrintF(&dword_1002F5DA0, "[AudioDeviceManager _usbDevicePropertyChanged:]", 50, "USB device with btAddress %@ and USB UID %@, indicated that AirPlane Mode is OFF", v12, v13);
            }

            v28 = +[AAUSBSupportedDeviceManagerDaemon sharedAAUSBSupportedDeviceManagerDaemon];
            [v28 usbDeviceAirplaneModeChanged:0 address:v12];
          }

          if (xpc_dictionary_get_BOOL(xdict, "kAccAudioMsgArgUSBDeviceAirPlaneModeOn"))
          {
            if (dword_1002F5DA0 <= 50 && (dword_1002F5DA0 != -1 || _LogCategory_Initialize()))
            {
              LogPrintF(&dword_1002F5DA0, "[AudioDeviceManager _usbDevicePropertyChanged:]", 50, "USB device with btAddress %@ and USB UID %@, indicated that AirPlane Mode is ON", v12, v13);
            }

            v29 = +[AAUSBSupportedDeviceManagerDaemon sharedAAUSBSupportedDeviceManagerDaemon];
            [v29 usbDeviceAirplaneModeChanged:1 address:v12];
          }
        }

        else if (dword_1002F5DA0 <= 90)
        {
          if (dword_1002F5DA0 != -1 || (v15 = _LogCategory_Initialize(), v15))
          {
            sub_1001D1C08(v15, v16, v17);
          }
        }
      }

      else
      {
        sub_1001D1C24(0, v9, v10);
      }
    }

    else
    {
      sub_1001D1C84(v8, v9, v10);
    }
  }

  else
  {
    v22 = objc_alloc_init(NSMutableDictionary);
    usbDeviceMap = self->_usbDeviceMap;
    self->_usbDeviceMap = v22;

    if (dword_1002F5DA0 <= 90)
    {
      if (dword_1002F5DA0 != -1 || (v24 = _LogCategory_Initialize(), v24))
      {
        sub_1001D1C08(v24, v25, v26);
      }
    }
  }
}

- (id)_ensureXPCStarted
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  xpcConnection = selfCopy->_xpcConnection;
  if (!xpcConnection)
  {
    if (dword_1002F5DA0 <= 50 && (dword_1002F5DA0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1002F5DA0, "[AudioDeviceManager _ensureXPCStarted]", 50, "Starting XPC Listener Client.");
    }

    mach_service = xpc_connection_create_mach_service("com.apple.BTAudioHALPluginAccessories", selfCopy->_dispatchQueue, 0);
    v5 = selfCopy->_xpcConnection;
    selfCopy->_xpcConnection = mach_service;

    v6 = selfCopy->_xpcConnection;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10000BB78;
    handler[3] = &unk_1002B68D0;
    handler[4] = selfCopy;
    xpc_connection_set_event_handler(v6, handler);
    xpc_connection_activate(selfCopy->_xpcConnection);
    if (dword_1002F5DA0 <= 50 && (dword_1002F5DA0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1002F5DA0, "[AudioDeviceManager _ensureXPCStarted]", 50, "XPC Listener Activated.");
    }

    xpcConnection = selfCopy->_xpcConnection;
  }

  v7 = xpcConnection;
  objc_sync_exit(selfCopy);

  return v7;
}

- (void)_invalidate
{
  obj = self;
  objc_sync_enter(obj);
  [(AudioDeviceManager *)obj _ensureXPCStopped];
  if (dword_1002F5DA0 <= 50 && (dword_1002F5DA0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1002F5DA0, "[AudioDeviceManager _invalidate]", 50, "Invalidated");
  }

  objc_sync_exit(obj);
}

- (BOOL)_isDevicePairedCheck:(id)check
{
  checkCopy = check;
  v4 = +[CBIDSManager sharedInstance];
  v5 = [v4 idsDeviceForBTAddress:checkCopy];

  if (dword_1002F5DA0 <= 30 && (dword_1002F5DA0 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D1CE4(v5 != 0);
  }

  return v5 != 0;
}

- (void)_startXPCConnection
{
  selfCopy = self;
  if (dword_1002F5DA0 <= 50)
  {
    if (dword_1002F5DA0 != -1 || (self = _LogCategory_Initialize(), self))
    {
      sub_1001D1D3C(self, a2, v2);
    }
  }

  _myBluetoothAddressString = [(AudioDeviceManager *)selfCopy _myBluetoothAddressString];
  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v4, "kBTAudioMsgId", 0x17uLL);
  if (_myBluetoothAddressString)
  {
    xpc_dictionary_set_string(v4, "kBTAudioMsgDeviceUid", [_myBluetoothAddressString UTF8String]);
  }

  _ensureXPCStarted = [(AudioDeviceManager *)selfCopy _ensureXPCStarted];
  xpc_connection_send_message(_ensureXPCStarted, v4);
  if (dword_1002F5DA0 <= 50)
  {
    if (dword_1002F5DA0 != -1 || (v6 = _LogCategory_Initialize(), v6))
    {
      sub_1001D1D58(v6, v7, v8);
    }
  }
}

- (void)_xpcConnectionEvent:(id)event
{
  eventCopy = event;
  type = xpc_get_type(eventCopy);
  if (eventCopy == &_xpc_error_connection_invalid)
  {
    if (dword_1002F5DA0 <= 90)
    {
      if (dword_1002F5DA0 != -1 || (type = _LogCategory_Initialize(), type))
      {
        sub_1001D1E80(type, v6, v7);
      }
    }

    [(AudioDeviceManager *)self _xpcConnectionInvalidated:&_xpc_error_connection_invalid];
    xpcTimer = self->_xpcTimer;
    if (xpcTimer)
    {
      v10 = xpcTimer;
      dispatch_source_cancel(v10);
      v11 = self->_xpcTimer;
      self->_xpcTimer = 0;
    }

    v12 = dispatch_time(0, 180000000000);
    v13 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
    v14 = self->_xpcTimer;
    self->_xpcTimer = v13;

    v15 = self->_xpcTimer;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10000C184;
    handler[3] = &unk_1002B6880;
    handler[4] = self;
    dispatch_source_set_event_handler(v15, handler);
    dispatch_source_set_timer(self->_xpcTimer, v12, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_resume(self->_xpcTimer);
  }

  else if (eventCopy == &_xpc_error_connection_interrupted || type == &_xpc_type_error)
  {
    if (dword_1002F5DA0 <= 90)
    {
      if (dword_1002F5DA0 != -1 || (type = _LogCategory_Initialize(), type))
      {
        sub_1001D1E64(type, v6, v7);
      }
    }

    [(AudioDeviceManager *)self _xpcConnectionInvalidated:eventCopy];
    [(AudioDeviceManager *)self activate:1];
  }

  else
  {
    if (type != &_xpc_type_dictionary)
    {
      if (dword_1002F5DA0 <= 90 && (dword_1002F5DA0 != -1 || _LogCategory_Initialize()))
      {
        sub_1001D1D74(eventCopy);
      }

      goto LABEL_47;
    }

    uint64 = xpc_dictionary_get_uint64(eventCopy, "kBTAudioMsgMethod");
    v19 = uint64;
    if (uint64 > 29)
    {
      if (uint64 == 30)
      {
        if (dword_1002F5DA0 <= 50)
        {
          if (dword_1002F5DA0 != -1 || (uint64 = _LogCategory_Initialize(), uint64))
          {
            sub_1001D1DD0(uint64, v17, v18);
          }
        }

        [(AudioDeviceManager *)self _usbDevicePropertyChanged:eventCopy];
      }

      else
      {
        if (uint64 != 34)
        {
LABEL_35:
          if (dword_1002F5DA0 <= 90 && (dword_1002F5DA0 != -1 || _LogCategory_Initialize()))
          {
            sub_1001D1E24(v19);
          }

          goto LABEL_47;
        }

        if (dword_1002F5DA0 <= 50)
        {
          if (dword_1002F5DA0 != -1 || (uint64 = _LogCategory_Initialize(), uint64))
          {
            sub_1001D1DB4(uint64, v17, v18);
          }
        }

        [(AudioDeviceManager *)self _hostBTAddress:eventCopy];
      }
    }

    else
    {
      if (uint64 != 24)
      {
        if (uint64 == 25)
        {
          if (dword_1002F5DA0 <= 50)
          {
            if (dword_1002F5DA0 != -1 || (uint64 = _LogCategory_Initialize(), uint64))
            {
              sub_1001D1DEC(uint64, v17, v18);
            }
          }

          [(AudioDeviceManager *)self _usbDeviceLost:eventCopy];
          goto LABEL_47;
        }

        goto LABEL_35;
      }

      if (dword_1002F5DA0 <= 50)
      {
        if (dword_1002F5DA0 != -1 || (uint64 = _LogCategory_Initialize(), uint64))
        {
          sub_1001D1E08(uint64, v17, v18);
        }
      }

      [(AudioDeviceManager *)self _newUSBDeviceFound:eventCopy];
    }
  }

LABEL_47:
}

- (void)_xpcConnectionInvalidated:(id)invalidated
{
  invalidatedCopy = invalidated;
  v9 = invalidatedCopy;
  if (dword_1002F5DA0 <= 50)
  {
    if (dword_1002F5DA0 != -1 || (invalidatedCopy = _LogCategory_Initialize(), invalidatedCopy))
    {
      sub_1001D1EB8(invalidatedCopy, v5, v6);
    }
  }

  xpcConnection = self->_xpcConnection;
  if (xpcConnection)
  {
    xpc_connection_cancel(xpcConnection);
    v8 = self->_xpcConnection;
    self->_xpcConnection = 0;
  }
}

- (void)_ensureXPCStopped
{
  xpcConnection = self->_xpcConnection;
  if (xpcConnection)
  {
    v5 = xpcConnection;
    xpc_connection_cancel(v5);
    v4 = self->_xpcConnection;
    self->_xpcConnection = 0;
  }
}

@end