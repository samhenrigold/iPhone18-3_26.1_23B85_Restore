@interface CBStackControllerBTStack
- (BOOL)_deleteDevice:(id)device error:(id *)error;
- (BOOL)_disconnectDevice:(id)device serviceFlags:(unsigned int)flags error:(id *)error;
- (BOOL)addDiscoverableController:(id)controller error:(id *)error;
- (BOOL)addPairingClient:(id)client error:(id *)error;
- (BOOL)connectDevice:(id)device connectionFlags:(unsigned int)flags serviceFlags:(unsigned int)serviceFlags error:(id *)error;
- (BOOL)deleteDevice:(id)device error:(id *)error;
- (BOOL)disconnectDevice:(id)device serviceFlags:(unsigned int)flags error:(id *)error;
- (BOOL)isDeviceConnected:(id)connected error:(id *)error;
- (BOOL)modifyDevice:(id)device btDevice:(void *)btDevice settings:(id)settings error:(id *)error;
- (BOOL)modifyDevice:(id)device error:(id *)error;
- (BOOL)modifyDevice:(id)device leDevice:(void *)leDevice settings:(id)settings error:(id *)error;
- (BOOL)modifyDevice:(id)device peerSourceDevice:(id)sourceDevice peerSourceState:(char)state requestFlags:(unsigned int)flags error:(id *)error;
- (BOOL)modifyDevice:(id)device settings:(id)settings error:(id *)error;
- (BOOL)pairingContinueWithPairingInfo:(id)info error:(id *)error;
- (BOOL)poweredOn;
- (BOOL)sendAudioAccessoryConfig:(id)config device:(id)device error:(id *)error;
- (BOOL)sendAudioAccessoryEventMessage:(id)message eventType:(unsigned __int8)type device:(id)device error:(id *)error;
- (BOOL)sendConversationDetectMessage:(id)message device:(id)device error:(id *)error;
- (BOOL)sendRelayMessageType:(unsigned __int8)type messageData:(id)data conduitDevice:(id)device destinationDevice:(id)destinationDevice error:(id *)error;
- (BOOL)sendSmartRoutingInformation:(id)information device:(id)device error:(id *)error;
- (BOOL)setLowPowerModeWithReason:(int)reason error:(id *)error;
- (BOOL)setPowerState:(int64_t)state error:(id *)error;
- (BOOL)updateControllerInfo:(id)info error:(id *)error;
- (CBControllerInfo)controllerInfo;
- (CBStackControllerBTStack)init;
- (id)_btUUIDWithID:(id)d error:(id *)error;
- (id)descriptionWithLevel:(int)level;
- (id)diagnosticControl:(id)control error:(id *)error;
- (id)getDevicesWithFlags:(unsigned int)flags error:(id *)error;
- (int)discoverableState;
- (int)inquiryState;
- (int64_t)powerState;
- (unsigned)softwareUpdateAdvertisingInstanceLimit;
- (void)_accessoryCommandStatusWithDevice:(id)device type:(int)type result:(unsigned __int16)result reason:(unsigned __int16)reason;
- (void)_accessoryReceivedRelayMessageType:(unsigned __int8)type messageData:(id)data conduitDevice:(id)device sourceDevice:(id)sourceDevice;
- (void)_btDeviceWithID:(id)d createIfNeeded:(BOOL)needed error:(id *)error;
- (void)_completePerformDeviceRequest:(id)request error:(id)error;
- (void)_connectDeviceCompleteRequest:(id)request error:(id)error;
- (void)_connectDeviceUpdateRequests:(id)requests btResult:(int)result;
- (void)_deleteAllDevices;
- (void)_disconnectAllDevicesWithServiceFlags:(unsigned int)flags;
- (void)_modifyDeviceCompleteRequest:(id)request error:(id)error;
- (void)_pairingAgentTearDown;
- (void)_pairingCompletedWithBTDevice:(void *)device result:(int)result;
- (void)_pairingPromptWithBTDevice:(void *)device pairingType:(int64_t)type pinString:(id)string flags:(unsigned int)flags;
- (void)_readRSSIWithConnectionHandle:(_OI_HCI_CONNECTION *)handle status:(int)status rssi:(char)rssi;
- (void)_readTxPowerWithFlags:(unsigned int)flags status:(int)status connectionHandle:(_OI_HCI_CONNECTION *)handle txPowerLevel:(char)level;
- (void)activate;
- (void)connectWithCBConnection:(id)connection completionHandler:(id)handler;
- (void)invalidate;
- (void)localDeviceEvent:(int)event;
- (void)modifyDevice:(id)device connectionPriorityDevices:(id)devices timeoutSeconds:(double)seconds completionHandler:(id)handler;
- (void)performDeviceRequest:(id)request device:(id)device completionHandler:(id)handler;
- (void)removeDiscoverableController:(id)controller;
- (void)removePairingClient:(id)client;
- (void)setLowPowerModeWithParams:(int)params params:(id)a4 completionHandler:(id)handler;
- (void)setLowPowerModeWithReason:(int)reason completionHandler:(id)handler;
- (void)setOfflineAdvertisingParams:(id)params;
@end

@implementation CBStackControllerBTStack

- (BOOL)poweredOn
{
  if (qword_100B512C8 != -1)
  {
    sub_10080EAFC();
  }

  return sub_10000EE78(off_100B512C0) == 1;
}

- (int64_t)powerState
{
  if (qword_100B512C8 != -1)
  {
    sub_10080EAFC();
  }

  v2 = sub_10000EE78(off_100B512C0);
  result = 4;
  if (v2 > 2)
  {
    if ((v2 - 3) < 2)
    {
      return result;
    }

    return 0;
  }

  if (!v2)
  {
    return result;
  }

  if (v2 != 1)
  {
    return 0;
  }

  if (qword_100B50AA0 != -1)
  {
    sub_10080EB10();
  }

  if (sub_10006DBF8(off_100B50A98))
  {
    return 10;
  }

  else
  {
    return 5;
  }
}

- (CBControllerInfo)controllerInfo
{
  v3 = objc_alloc_init(CBControllerInfo);
  if (qword_100B512B8 != -1)
  {
    sub_10080EA2C();
  }

  v4 = sub_10009BB10(qword_100B512B0);
  [v3 setAudioLinkQualityArray:v4];

  v5 = [v3 setBluetoothState:{-[CBStackControllerBTStack powerState](self, "powerState")}];
  v7 = sub_10000C7D0(v5, v6);
  v8 = *(v7 + 800);
  v9 = [NSString stringWithUTF8String:sub_10009B750(v7, v8)];
  [v3 setChipsetID:v9];

  v10 = [v3 setDiscoverableState:{-[CBStackControllerBTStack discoverableState](self, "discoverableState")}];
  if (v8)
  {
    __s1 = 0;
    v56 = 0;
    v57 = 0;
    v12 = sub_10009BD9C(v10, v11);
    v13 = (*(*v12 + 64))(v12, &__s1);
    v15 = HIBYTE(v57);
    if (v57 < 0)
    {
      v15 = v56;
    }

    if (v15)
    {
      if ((SHIBYTE(v57) & 0x80000000) == 0)
      {
        p_s1 = &__s1;
LABEL_11:
        v17 = [NSString stringWithUTF8String:p_s1];
        [v3 setFirmwareName:v17];

        goto LABEL_12;
      }

      p_s1 = __s1;
      if (v56 != 43)
      {
        goto LABEL_11;
      }

      v13 = memcmp(__s1, "No Bluetooth automatic firmware update file", 0x2BuLL);
      if (v13)
      {
        goto LABEL_11;
      }
    }

LABEL_12:
    v18 = sub_10009BD9C(v13, v14);
    v19 = (*(*v18 + 80))(v18);
    if (v19 > 11)
    {
      switch(v19)
      {
        case 12:
          v20 = CBErrorF(310012, "Bluetooth not initialized");
          [v3 setLastChipsetInitError:v20];
          goto LABEL_25;
        case 213:
          v20 = CBErrorF(310213, "Bluetooth chipboot timeout");
          [v3 setLastChipsetInitError:v20];
          goto LABEL_25;
        case 214:
          v20 = CBErrorF(310214, "Bluetooth chipboot crash loop");
          [v3 setLastChipsetInitError:v20];
          goto LABEL_25;
      }
    }

    else
    {
      switch(v19)
      {
        case 0:
          goto LABEL_26;
        case 1:
          v20 = CBErrorF(310001, "Bluetooth error");
          [v3 setLastChipsetInitError:v20];
          goto LABEL_25;
        case 2:
          v20 = CBErrorF(310002, "Bluetooth chipboot FW Update not implemented");
          [v3 setLastChipsetInitError:v20];
LABEL_25:

LABEL_26:
          if (SHIBYTE(v57) < 0)
          {
            operator delete(__s1);
          }

          goto LABEL_28;
      }
    }

    v20 = CBErrorF((v19 + 310000), "Undefined error");
    [v3 setLastChipsetInitError:v20];
    goto LABEL_25;
  }

LABEL_28:
  if (qword_100B50AA0 != -1)
  {
    sub_10009AF30();
  }

  if (*(off_100B50A98 + 60) == 1)
  {
    WORD2(__s1) = 0;
    LODWORD(__s1) = 0;
    sub_10009BE34(off_100B50A98, &__s1);
    v21 = [[NSData alloc] initWithBytes:&__s1 length:6];
    [v3 setHardwareAddressData:v21];
  }

  fastLEConnectionInfoData = [(CBStackControllerBTStack *)self fastLEConnectionInfoData];
  [v3 setFastLEConnectionInfoData:fastLEConnectionInfoData];

  v23 = [v3 setFastLEConnectionInfoVersion:{-[CBStackControllerBTStack fastLEConnectionInfoVersion](self, "fastLEConnectionInfoVersion")}];
  v25 = sub_10009B9DC(v23, v24);
  v26 = 0;
  v27 = 4;
  v28 = 1;
  if (v25 > 5)
  {
    if (v25 <= 7)
    {
      if (v25 == 6)
      {
        v26 = 0;
        v28 = 0;
        v27 = 1;
        goto LABEL_45;
      }
    }

    else if (v25 != 8 && v25 != 9)
    {
      if (v25 == 11)
      {
        goto LABEL_45;
      }

      goto LABEL_43;
    }

    v26 = 0;
    v28 = 0;
    v27 = 2;
    goto LABEL_45;
  }

  if ((v25 - 1) < 5)
  {
    v28 = 0;
    v27 = 3;
    v26 = 1;
    goto LABEL_45;
  }

  if (v25)
  {
LABEL_43:
    v26 = 0;
    v28 = 0;
    v27 = 0;
  }

LABEL_45:
  [v3 setHciTransportType:v27];
  v29 = [v3 setInquiryState:{-[CBStackControllerBTStack inquiryState](self, "inquiryState")}];
  v31 = sub_10000C7D0(v29, v30);
  [v3 setLeaVersion:sub_10009BF08(v31)];
  [v3 setLmpVersion:BYTE8(xmmword_100BCDFD8)];
  [v3 setProductID:sub_10009BAE4()];
  if (qword_100B50AC0 != -1)
  {
    sub_10080EA40();
  }

  [v3 setSupportedServices:sub_10009C474(off_100B50AB8)];
  [v3 setVendorID:sub_10009BB08()];
  v32 = [v3 setVendorIDSource:sub_10000C240()];
  if (!v8)
  {
    v35 = [NSString alloc];
    firmwareName = [v35 initWithFormat:@"v%u c%u", WORD5(xmmword_100BCDFD8), WORD3(xmmword_100BCDFD8)];
    [v3 setFirmwareVersion:firmwareName];
    goto LABEL_51;
  }

  if (v8 - 2000 <= 0x7CF)
  {
    firmwareName = [v3 firmwareName];
    [v3 setFirmwareVersion:firmwareName];
LABEL_51:

    goto LABEL_52;
  }

  if (v8 > 0x7CF)
  {
    v39 = v8 - 4000;
    if (v39 <= 0x7CF)
    {
      v40 = [NSString alloc];
      v41 = [v40 initWithFormat:@"HCI Revision:%04x, LMP Subrevision:%04x", WORD3(xmmword_100BCDFD8), WORD5(xmmword_100BCDFD8)];
      [v3 setFirmwareVersion:v41];

      if (v39 <= 0x3E7)
      {
        v42 = [NSString stringWithUTF8String:sub_10022EC10()];
        [v3 setFirmwareName:v42];

        [v3 setHciTransportType:4];
      }

      goto LABEL_52;
    }
  }

  else
  {
    v37 = sub_10000C798(v32, v33);
    if (((v26 | v28) & (*(*v37 + 416))(v37)) == 1)
    {
      v38 = [NSString alloc];
      firmwareName = [v38 initWithFormat:@"v%d c%u", BYTE10(xmmword_100BCDFD8), WORD3(xmmword_100BCDFD8)];
      [v3 setFirmwareVersion:firmwareName];
      goto LABEL_51;
    }
  }

  firmwareName2 = [v3 firmwareName];
  uTF8String = [firmwareName2 UTF8String];
  if (uTF8String)
  {
    v45 = uTF8String;
  }

  else
  {
    v45 = "";
  }

  while (1)
  {
    v46 = *v45;
    if (!*v45 || v46 == 95)
    {
      break;
    }

    ++v45;
  }

  v47 = 0;
  v48 = v46 == 95;
  v49 = v46 == 95;
  if (v48)
  {
    v50 = v45 + 1;
  }

  else
  {
    v50 = v45;
  }

  while (1)
  {
    v51 = v45[v49 + v47];
    if (!v45[v49 + v47] || v51 == 95)
    {
      break;
    }

    ++v47;
  }

  if (v47 && v51 == 95)
  {
    v52 = [[NSString alloc] initWithBytes:v50 length:v47 encoding:4];
    [v3 setFirmwareVersion:v52];
  }

  firmwareVersion = [v3 firmwareVersion];

  if (!firmwareVersion)
  {
    v54 = [NSString alloc];
    firmwareName = [v54 initWithFormat:@"v%u", WORD5(xmmword_100BCDFD8)];
    [v3 setFirmwareVersion:firmwareName];
    goto LABEL_51;
  }

LABEL_52:

  return v3;
}

- (int)inquiryState
{
  if (qword_100B508A0 != -1)
  {
    sub_10080EA68();
  }

  if (sub_10009BA5C(off_100B50898))
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (int)discoverableState
{
  v3 = 0;
  if (qword_100B508A0 != -1)
  {
    sub_10080EA68();
  }

  sub_100061EC8(off_100B50898, &v3);
  if (v3)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (CBStackControllerBTStack)init
{
  v8.receiver = self;
  v8.super_class = CBStackControllerBTStack;
  v2 = [(CBStackControllerBTStack *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v2->_powerStateNotifyToken = -1;
    v4 = [CBUtil getBluetoothDebugSettingString:@"BluetoothCustomerLogging" InKey:@"PrivateDataLogging"];
    privateDataLoggingEnabled = v3->_privateDataLoggingEnabled;
    v3->_privateDataLoggingEnabled = v4;

    v3->_profileChangedToken = -1;
    v6 = v3;
  }

  return v3;
}

- (BOOL)addDiscoverableController:(id)controller error:(id *)error
{
  controllerCopy = controller;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_100150B9C;
  v27[3] = &unk_100AE1120;
  v27[4] = &v28;
  v7 = objc_retainBlock(v27);
  v8 = [NSValue valueWithNonretainedObject:controllerCopy];
  v9 = [(NSMutableDictionary *)self->_discoverableSessionMap objectForKeyedSubscript:v8];

  if (!v9)
  {
    appID = [controllerCopy appID];
    if (!appID)
    {
      if (error)
      {
        CBErrorF(4294960591, "No app ID");
        *error = v10 = 0;
      }

      else
      {
        v10 = 0;
      }

      goto LABEL_25;
    }

    v12 = [[NSString alloc] initWithFormat:@"%@-0x%08X", appID, objc_msgSend(controllerCopy, "clientID")];
    uTF8String = [v12 UTF8String];
    if (qword_100B50B88 != -1)
    {
      sub_10080EA7C();
    }

    v14 = qword_100B50B80;
    sub_100007E30(__p, uTF8String);
    v15 = sub_100044414(v14, __p, v29 + 3, 2);
    if (v26 < 0)
    {
      operator delete(__p[0]);
    }

    if (v15 && v15 != -310000)
    {
      if (error)
      {
        CBErrorF((v15 + 310000), "Attach session failed");
        *error = v10 = 0;
      }

      else
      {
        v10 = 0;
      }

      goto LABEL_24;
    }

    if (qword_100B508A0 != -1)
    {
      sub_10080EAA4();
    }

    v16 = sub_100571C4C(off_100B50898, v29[3]);
    if (v16)
    {
      if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe(&dword_100B511E0, "[CBStackControllerBTStack addDiscoverableController:error:]", 30, "AddDiscoverableController: %@", v12);
      }

      if (qword_100B508A0 != -1)
      {
        sub_10080EAA4();
      }

      v17 = sub_100572080(off_100B50898, v16, 1);
      if (!v17 || (v18 = (v17 + 310000), !v18))
      {
        v19 = objc_alloc_init(CBStackDiscoverableSession);
        [(CBStackDiscoverableSession *)v19 setBtSessionHandle:v29[3]];
        discoverableSessionMap = self->_discoverableSessionMap;
        if (!discoverableSessionMap)
        {
          v21 = objc_alloc_init(NSMutableDictionary);
          v22 = self->_discoverableSessionMap;
          self->_discoverableSessionMap = v21;

          discoverableSessionMap = self->_discoverableSessionMap;
        }

        [(NSMutableDictionary *)discoverableSessionMap setObject:v19 forKeyedSubscript:v8];
        v29[3] = 0;

        v10 = 1;
        goto LABEL_24;
      }

      if (error)
      {
        v24 = CBErrorF(v18, "setDiscoverable failed");
        goto LABEL_35;
      }
    }

    else if (error)
    {
      v24 = CBErrorF(0, "Get LocalDevice handle failed");
LABEL_35:
      v10 = 0;
      *error = v24;
LABEL_24:

LABEL_25:
      goto LABEL_26;
    }

    v10 = 0;
    goto LABEL_24;
  }

  v10 = 1;
LABEL_26:

  (v7[2])(v7);
  _Block_object_dispose(&v28, 8);

  return v10;
}

- (void)removeDiscoverableController:(id)controller
{
  controllerCopy = controller;
  if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
  {
    appID = [controllerCopy appID];
    LogPrintF_safe(&dword_100B511E0, "-[CBStackControllerBTStack removeDiscoverableController:]", 30, "RemoveDiscoverableController: %@-0x%08X", appID, [controllerCopy clientID]);
  }

  v5 = [NSValue valueWithNonretainedObject:controllerCopy];
  v6 = [(NSMutableDictionary *)self->_discoverableSessionMap objectForKeyedSubscript:v5];
  if (v6)
  {
    [(NSMutableDictionary *)self->_discoverableSessionMap setObject:0 forKeyedSubscript:v5];
    btSessionHandle = [v6 btSessionHandle];
    if (qword_100B50B88 != -1)
    {
      sub_10080EAE8();
    }

    sub_100079604(qword_100B50B80, btSessionHandle);
  }
}

- (unsigned)softwareUpdateAdvertisingInstanceLimit
{
  v2 = sub_10000C7D0(self, a2);
  v3 = (*(*v2 + 3128))(v2);
  if (v3)
  {
    v5 = *(*sub_10000C7D0(v3, v4) + 3912);

    LOBYTE(v3) = v5();
  }

  return v3;
}

- (BOOL)setPowerState:(int64_t)state error:(id *)error
{
  switch(state)
  {
    case 4:
      if (qword_100B512C8 != -1)
      {
        sub_10080EAFC();
      }

      v11 = sub_10057A03C(off_100B512C0);
      v12 = (v11 + 310000);
      if (v11)
      {
        v13 = v12 == 0;
      }

      else
      {
        v13 = 1;
      }

      if (!v13)
      {
        if (error)
        {
          CBErrorF(v12, "Power off failed");
          goto LABEL_35;
        }

        goto LABEL_38;
      }

      LOBYTE(v6) = 1;
      break;
    case 10:
      if (qword_100B508A0 != -1)
      {
        sub_10080EA68();
      }

      sub_100574640(off_100B50898, 0, 1);
      if (qword_100B512C8 != -1)
      {
        sub_10080EAFC();
      }

      LODWORD(v6) = sub_10000EE78(off_100B512C0);
      if (v6 != 1)
      {
        if (qword_100B512C8 != -1)
        {
          sub_10080EAFC();
        }

        v9 = sub_100579C50(off_100B512C0);
        LOBYTE(v6) = 1;
        if (v9)
        {
          v7 = (v9 + 310000);
          if (v7)
          {
            if (error)
            {
              v8 = "Power on restricted failed";
              goto LABEL_23;
            }

LABEL_38:
            LOBYTE(v6) = 0;
          }
        }
      }

      break;
    case 5:
      if (qword_100B508A0 != -1)
      {
        sub_10080EA68();
      }

      sub_100574640(off_100B50898, 0, 0);
      if (qword_100B512C8 != -1)
      {
        sub_10080EAFC();
      }

      v5 = sub_100579C50(off_100B512C0);
      LOBYTE(v6) = 1;
      if (v5)
      {
        v7 = (v5 + 310000);
        if (v7)
        {
          if (error)
          {
            v8 = "Power on failed";
LABEL_23:
            v10 = v7;
LABEL_34:
            CBErrorF(v10, v8, stateCopy);
            v14 = LABEL_35:;
            v6 = v14;
            LOBYTE(v6) = 0;
            *error = v14;
            return v6;
          }

          goto LABEL_38;
        }
      }

      break;
    default:
      if (error)
      {
        stateCopy = state;
        v8 = "Unsupported power state: %d";
        v10 = 4294960561;
        goto LABEL_34;
      }

      goto LABEL_38;
  }

  return v6;
}

- (void)setLowPowerModeWithParams:(int)params params:(id)a4 completionHandler:(id)handler
{
  v6 = *&params;
  v13 = a4;
  handlerCopy = handler;
  if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe(&dword_100B511E0, "[CBStackControllerBTStack setLowPowerModeWithParams:params:completionHandler:]", 30, "setLowPowerModeWithParams %d, params %@", v6, v13);
  }

  if (v6 == 3)
  {
    if (qword_100B512D8 != -1)
    {
      sub_10080EB24();
    }

    v9 = sub_100311A24(off_100B512D0, 3, v13);
    v10 = v9;
    if (v9)
    {
      v11 = CBErrorF(4294960591, "BTWake: failed to set params with error %d", v9);
      if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
      {
        v12 = [v11 description];
        LogPrintF_safe(&dword_100B511E0, "[CBStackControllerBTStack setLowPowerModeWithParams:params:completionHandler:]", 30, "setLowPowerModeWithParams return %d with error %@", v10, v12);
      }

      handlerCopy[2](handlerCopy, v11);
    }

    else
    {
      if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe(&dword_100B511E0, "[CBStackControllerBTStack setLowPowerModeWithParams:params:completionHandler:]", 30, "setLowPowerModeWithParams return %d", 0);
      }

      v11 = 0;
      if (([v13 configFlags] & 0x10) != 0)
      {
        [(CBStackControllerBTStack *)self setLowPowerModeWithReason:3 completionHandler:handlerCopy];
      }

      else
      {
        handlerCopy[2](handlerCopy, 0);
      }
    }
  }
}

- (void)setLowPowerModeWithReason:(int)reason completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v8 = dispatch_queue_create("CBStackSetLowPowerMode", v7);

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100151370;
  block[3] = &unk_100AE2528;
  reasonCopy = reason;
  block[4] = self;
  v11 = handlerCopy;
  v9 = handlerCopy;
  dispatch_async(v8, block);
}

- (BOOL)setLowPowerModeWithReason:(int)reason error:(id *)error
{
  v5 = *&reason;
  v6 = sub_1000B11F4();
  v7 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, 0);
  v8 = dispatch_time(0, 9000000000);
  dispatch_source_set_timer(v7, v8, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10015180C;
  handler[3] = &unk_100ADF8F8;
  handler[4] = v6;
  dispatch_source_set_event_handler(v7, handler);
  dispatch_activate(v7);
  v9 = sub_100017E6C();
  if (((*(*v9 + 96))(v9, v5) & 1) == 0)
  {
    if (error)
    {
      v22 = CBErrorF(4294960587, "notifySystemWillShutdown returned disallowed");
LABEL_24:
      v20 = 0;
      *error = v22;
      goto LABEL_19;
    }

LABEL_25:
    v20 = 0;
    goto LABEL_19;
  }

  if (qword_100B512D8 != -1)
  {
    sub_10080EB38();
  }

  sub_100309A18(off_100B512D0);
  if (qword_100B512D8 != -1)
  {
    sub_10080EB38();
  }

  v10 = sub_10030A8A0(off_100B512D0, v5);
  if (qword_100B512D8 != -1)
  {
    sub_10080EB38();
  }

  sub_100309B0C(off_100B512D0);
  if (v10)
  {
    v11 = (v10 + 310000);
  }

  else
  {
    v11 = 0;
  }

  v12 = sub_1000B11F4() - v6;
  if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe(&dword_100B511E0, "[CBStackControllerBTStack setLowPowerModeWithReason:error:]", 30, "LPM entry took %llums", v12);
  }

  dispatch_source_cancel(v7);
  if (v12 >> 3 <= 0x464)
  {
    v24[0] = @"errorCode";
    v13 = [NSNumber numberWithInt:v11];
    v25[0] = v13;
    v24[1] = @"errorCount";
    v14 = [NSNumber numberWithInt:v11 != 0];
    v25[1] = v14;
    v24[2] = @"timeToEnter";
    v15 = [NSNumber numberWithUnsignedLongLong:v12];
    v25[2] = v15;
    v16 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:3];

    v19 = sub_10000F034(v17, v18);
    (*(*v19 + 224))(v19, v16);
  }

  if (v11)
  {
    if (error)
    {
      v22 = CBErrorF(v11, "enterLPM failed");
      goto LABEL_24;
    }

    goto LABEL_25;
  }

  v20 = 1;
LABEL_19:

  return v20;
}

- (void)setOfflineAdvertisingParams:(id)params
{
  paramsCopy = params;
  v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v5 = dispatch_queue_create("CBStackSetOfflineAdvertisingParams", v4);

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100151AAC;
  block[3] = &unk_100ADF820;
  v8 = paramsCopy;
  v6 = paramsCopy;
  dispatch_async(v5, block);
}

- (id)descriptionWithLevel:(int)level
{
  v71 = 0;
  powerState = [(CBStackControllerBTStack *)self powerState];
  if (powerState > 0xA)
  {
    v4 = "?";
  }

  else
  {
    v4 = off_100AE2BC8[powerState];
  }

  discoverableState = [(CBStackControllerBTStack *)self discoverableState];
  if (discoverableState > 2)
  {
    v6 = "?";
  }

  else
  {
    v6 = off_100AE2BB0[discoverableState];
  }

  controllerInfo = [(CBStackControllerBTStack *)self controllerInfo];
  fastLEConnectionInfoVersion = [controllerInfo fastLEConnectionInfoVersion];
  stackControllerInfoCloudSyncStatus = self->_stackControllerInfoCloudSyncStatus;
  if (stackControllerInfoCloudSyncStatus > 3)
  {
    v10 = "?";
  }

  else
  {
    v10 = off_100AE2B90[stackControllerInfoCloudSyncStatus];
  }

  inquiryState = [(CBStackControllerBTStack *)self inquiryState];
  if (inquiryState > 2)
  {
    v12 = "?";
  }

  else
  {
    v12 = off_100AE2BB0[inquiryState];
  }

  if (self->_btSessionPtr)
  {
    v13 = "yes";
  }

  else
  {
    v13 = "no";
  }

  NSAppendPrintF_safe(&v71, "CBStackController: state %s, discoverable %s, fastLE v%d (%s), inquiry %s, session %s", v4, v6, fastLEConnectionInfoVersion, v10, v12, v13);
  v14 = v71;

  v45 = self->_connectDeviceRequests;
  if ([(NSMutableSet *)v45 count])
  {
    v70 = v14;
    NSAppendPrintF_safe(&v70, ", connectDeviceRequests [");
    v15 = v70;

    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    obj = v45;
    v16 = [(NSMutableSet *)obj countByEnumeratingWithState:&v66 objects:v74 count:16];
    if (v16)
    {
      v17 = *v67;
      v18 = "";
      do
      {
        v19 = 0;
        v20 = v15;
        do
        {
          if (*v67 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v66 + 1) + 8 * v19);
          v65 = v20;
          connection = [v21 connection];
          peerDevice = [connection peerDevice];
          NSAppendPrintF_safe(&v65, "%s%@", v18, peerDevice);
          v15 = v65;

          v19 = v19 + 1;
          v18 = ", ";
          v20 = v15;
        }

        while (v16 != v19);
        v16 = [(NSMutableSet *)obj countByEnumeratingWithState:&v66 objects:v74 count:16];
        v18 = ", ";
      }

      while (v16);
    }

    v64 = v15;
    NSAppendPrintF_safe(&v64, "]");
    v14 = v64;
  }

  v44 = self->_modifyDeviceRequests;
  if ([(NSMutableSet *)v44 count])
  {
    v63 = v14;
    NSAppendPrintF_safe(&v63, ", modifyDeviceRequests [");
    v24 = v63;

    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v25 = v44;
    v26 = [(NSMutableSet *)v25 countByEnumeratingWithState:&v59 objects:v73 count:16];
    if (v26)
    {
      v27 = *v60;
      v28 = "";
      do
      {
        v29 = 0;
        v30 = v24;
        do
        {
          if (*v60 != v27)
          {
            objc_enumerationMutation(v25);
          }

          v31 = *(*(&v59 + 1) + 8 * v29);
          v58 = v30;
          device = [v31 device];
          NSAppendPrintF_safe(&v58, "%s%@", v28, device);
          v24 = v58;

          v29 = v29 + 1;
          v28 = ", ";
          v30 = v24;
        }

        while (v26 != v29);
        v26 = [(NSMutableSet *)v25 countByEnumeratingWithState:&v59 objects:v73 count:16];
        v28 = ", ";
      }

      while (v26);
    }

    v57 = v24;
    NSAppendPrintF_safe(&v57, "]");
    v14 = v57;
  }

  v47 = self->_performDeviceRequests;
  if ([(NSMutableSet *)v47 count])
  {
    v56 = v14;
    NSAppendPrintF_safe(&v56, ", performDeviceRequests [");
    v33 = v56;

    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    obja = v47;
    v34 = [(NSMutableSet *)obja countByEnumeratingWithState:&v52 objects:v72 count:16];
    if (v34)
    {
      v35 = *v53;
      v36 = "";
      do
      {
        v37 = 0;
        v38 = v33;
        do
        {
          if (*v53 != v35)
          {
            objc_enumerationMutation(obja);
          }

          v39 = *(*(&v52 + 1) + 8 * v37);
          v51 = v38;
          device2 = [v39 device];
          request = [v39 request];
          NSAppendPrintF_safe(&v51, "%s{%@, %@}", v36, device2, request);
          v33 = v51;

          v37 = v37 + 1;
          v38 = v33;
          v36 = ", ";
        }

        while (v34 != v37);
        v34 = [(NSMutableSet *)obja countByEnumeratingWithState:&v52 objects:v72 count:16];
        v36 = ", ";
      }

      while (v34);
    }

    v50 = v33;
    NSAppendPrintF_safe(&v50, "]");
    v14 = v50;
  }

  v42 = v14;

  return v14;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  if (!dispatchQueue)
  {
    sub_10080EC14(0, a2);
LABEL_31:
    sub_10080EAE8();
    goto LABEL_7;
  }

  dispatch_assert_queue_V2(dispatchQueue);
  objc_storeStrong(&qword_100B55358, self);
  v7 = sub_10000E92C();
  v8 = (*(*v7 + 160))(v7);
  p_btSessionHandle = &self->_btSessionHandle;
  btSessionHandle = self->_btSessionHandle;
  self->_logPrivateData = v8;
  if (btSessionHandle)
  {
    goto LABEL_20;
  }

  v4 = &off_100B51000;
  if (dword_100B511E0 <= 30)
  {
    if (dword_100B511E0 != -1 || (v8 = _LogCategory_Initialize(), v8))
    {
      sub_10080EBF8(v8, v9, v10);
    }
  }

  p_info = &OBJC_METACLASS___BTVCDevice.info;
  if (qword_100B50B88 != -1)
  {
    goto LABEL_31;
  }

LABEL_7:
  v12 = qword_100B50B80;
  sub_100007E30(__p, "CBDaemon");
  v13 = sub_100044414(v12, __p, p_btSessionHandle, 2);
  v14 = v13;
  if (v20 < 0)
  {
    operator delete(__p[0]);
    if (!v14)
    {
      goto LABEL_16;
    }

LABEL_11:
    if (v14 != -310000)
    {
      v15 = *(v4 + 120);
      if (v15 <= 90 && (v15 != -1 || _LogCategory_Initialize()))
      {
        v16 = CUPrintErrorCode();
        LogPrintF_safe(&dword_100B511E0, "[CBStackControllerBTStack activate]", 90, "### Attach session failed: %@", v16);
      }
    }

    goto LABEL_16;
  }

  if (v13)
  {
    goto LABEL_11;
  }

LABEL_16:
  if (*p_btSessionHandle)
  {
    if (p_info[369] != -1)
    {
      sub_10080EA7C();
    }

    self->_btSessionPtr = sub_1000117DC(qword_100B50B80, self->_btSessionHandle);
  }

LABEL_20:
  if (!self->_addedController)
  {
    os_unfair_lock_lock(&unk_100B55360);
    if (!qword_100B55368)
    {
      operator new();
    }

    sub_100152538(qword_100B55368, self);
    os_unfair_lock_unlock(&unk_100B55360);
    self->_addedController = 1;
  }

  if (self->_powerStateNotifyToken == -1)
  {
    notify_register_check("com.apple.bluetooth.state", &self->_powerStateNotifyToken);
    notify_set_state(self->_powerStateNotifyToken, [(CBStackControllerBTStack *)self powerState]);
    notify_post("com.apple.bluetooth.state");
  }

  if (self->_profileChangedToken == -1)
  {
    v17 = self->_dispatchQueue;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1001526F8;
    handler[3] = &unk_100ADF848;
    handler[4] = self;
    notify_register_dispatch("com.apple.MCX._managementStatusChangedForDomains", &self->_profileChangedToken, v17, handler);
  }
}

- (void)invalidate
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_addedController)
  {
    if (dword_100B511E0 <= 30)
    {
      if (dword_100B511E0 != -1 || (v3 = _LogCategory_Initialize(), v3))
      {
        sub_10080EC7C(v3, v4, v5);
      }
    }

    os_unfair_lock_lock(&unk_100B55360);
    if (qword_100B55368)
    {
      sub_100152CB8(qword_100B55368, self);
    }

    os_unfair_lock_unlock(&unk_100B55360);
    self->_addedController = 0;
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  allObjects = [(NSMutableSet *)self->_connectDeviceRequests allObjects];
  v7 = [allObjects countByEnumeratingWithState:&v45 objects:v51 count:16];
  if (v7)
  {
    v8 = *v46;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v46 != v8)
        {
          objc_enumerationMutation(allObjects);
        }

        v10 = *(*(&v45 + 1) + 8 * i);
        v11 = CBErrorF(4294896148, "StackController invalidated");
        [(CBStackControllerBTStack *)self _connectDeviceCompleteRequest:v10 error:v11];
      }

      v7 = [allObjects countByEnumeratingWithState:&v45 objects:v51 count:16];
    }

    while (v7);
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  allObjects2 = [(NSMutableSet *)self->_modifyDeviceRequests allObjects];
  v13 = [allObjects2 countByEnumeratingWithState:&v41 objects:v50 count:16];
  if (v13)
  {
    v14 = *v42;
    do
    {
      for (j = 0; j != v13; j = j + 1)
      {
        if (*v42 != v14)
        {
          objc_enumerationMutation(allObjects2);
        }

        v16 = *(*(&v41 + 1) + 8 * j);
        v17 = CBErrorF(4294896148, "StackController invalidated");
        [(CBStackControllerBTStack *)self _modifyDeviceCompleteRequest:v16 error:v17];
      }

      v13 = [allObjects2 countByEnumeratingWithState:&v41 objects:v50 count:16];
    }

    while (v13);
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  allObjects3 = [(NSMutableSet *)self->_performDeviceRequests allObjects];
  v19 = [allObjects3 countByEnumeratingWithState:&v37 objects:v49 count:16];
  if (v19)
  {
    v20 = *v38;
    do
    {
      for (k = 0; k != v19; k = k + 1)
      {
        if (*v38 != v20)
        {
          objc_enumerationMutation(allObjects3);
        }

        v22 = *(*(&v37 + 1) + 8 * k);
        v23 = CBErrorF(4294896148, "StackController invalidated");
        [(CBStackControllerBTStack *)self _completePerformDeviceRequest:v22 error:v23];
      }

      v19 = [allObjects3 countByEnumeratingWithState:&v37 objects:v49 count:16];
    }

    while (v19);
  }

  [(CBStackControllerBTStack *)self _pairingAgentTearDown];
  btSessionHandle = self->_btSessionHandle;
  if (btSessionHandle)
  {
    if (qword_100B50B88 != -1)
    {
      sub_10080EA7C();
    }

    v25 = sub_100079604(qword_100B50B80, btSessionHandle);
    if (v25 && v25 != -310000 && dword_100B511E0 <= 90 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
    {
      v26 = CUPrintErrorCode();
      LogPrintF_safe(&dword_100B511E0, "[CBStackControllerBTStack invalidate]", 90, "### Detach session failed: %@", v26);
    }
  }

  powerStateNotifyToken = self->_powerStateNotifyToken;
  if (powerStateNotifyToken != -1)
  {
    notify_cancel(powerStateNotifyToken);
    self->_powerStateNotifyToken = -1;
  }

  profileChangedToken = self->_profileChangedToken;
  if (profileChangedToken != -1)
  {
    notify_cancel(profileChangedToken);
    self->_profileChangedToken = -1;
  }

  self->_btSessionHandle = 0;
  self->_btSessionPtr = 0;
  controllerDataChangedHandler = self->_controllerDataChangedHandler;
  self->_controllerDataChangedHandler = 0;

  discoverableStateChangedHandler = self->_discoverableStateChangedHandler;
  self->_discoverableStateChangedHandler = 0;

  inquiryStateChangedHandler = self->_inquiryStateChangedHandler;
  self->_inquiryStateChangedHandler = 0;

  v32 = objc_retainBlock(self->_invalidationHandler);
  invalidationHandler = self->_invalidationHandler;
  self->_invalidationHandler = 0;

  powerChangedHandler = self->_powerChangedHandler;
  self->_powerChangedHandler = 0;

  relayMessageHandler = self->_relayMessageHandler;
  self->_relayMessageHandler = 0;

  v36 = qword_100B55358;
  qword_100B55358 = 0;

  if (v32)
  {
    v32[2](v32);
  }
}

- (void)_accessoryCommandStatusWithDevice:(id)device type:(int)type result:(unsigned __int16)result reason:(unsigned __int16)reason
{
  resultCopy = result;
  reasonCopy = reason;
  deviceCopy = device;
  if (type == 1 && self->_addedController)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    allObjects = [(NSMutableSet *)self->_modifyDeviceRequests allObjects];
    v10 = [allObjects countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      v11 = *v20;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(allObjects);
          }

          v13 = *(*(&v19 + 1) + 8 * i);
          device = [v13 device];
          v15 = [device isEquivalentToCBDevice:deviceCopy compareFlags:8];

          if (v15)
          {
            if (reasonCopy | resultCopy)
            {
              v16 = CBErrorF(4294960584, "Connection priority update failed: result %u, reason %u", resultCopy, reasonCopy);
            }

            else
            {
              v16 = 0;
            }

            [(CBStackControllerBTStack *)self _modifyDeviceCompleteRequest:v13 error:v16];
          }
        }

        v10 = [allObjects countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v10);
    }
  }
}

- (void)_accessoryReceivedRelayMessageType:(unsigned __int8)type messageData:(id)data conduitDevice:(id)device sourceDevice:(id)sourceDevice
{
  typeCopy = type;
  dataCopy = data;
  deviceCopy = device;
  sourceDeviceCopy = sourceDevice;
  if (self->_addedController)
  {
    v12 = objc_retainBlock(self->_relayMessageHandler);
    v13 = v12;
    if (v12)
    {
      (*(v12 + 2))(v12, deviceCopy, sourceDeviceCopy, typeCopy, dataCopy);
    }
  }
}

- (void)_btDeviceWithID:(id)d createIfNeeded:(BOOL)needed error:(id *)error
{
  neededCopy = needed;
  dCopy = d;
  if (dCopy)
  {
    v8 = [[NSUUID alloc] initWithUUIDString:dCopy];
    if (v8)
    {
      if (qword_100B508D0 != -1)
      {
        sub_10080EC98();
      }

      v9 = sub_100046458(off_100B508C8, v8, 0);
      if (v9)
      {
        if (qword_100B508F0 != -1)
        {
          sub_10080ECAC();
        }

        v10 = sub_1000504C8(off_100B508E8, v9, neededCopy);
        if (v10)
        {
          goto LABEL_15;
        }

        if (error)
        {
          v11 = CBErrorF(4294960569, "No BT device %@", v8);
LABEL_26:
          v10 = 0;
          *error = v11;
LABEL_15:

          goto LABEL_16;
        }
      }

      else if (error)
      {
        v11 = CBErrorF(4294960569, "No LE device %@", v8);
        goto LABEL_26;
      }
    }

    else
    {
      [dCopy UTF8String];
      if (TextToHardwareAddress())
      {
        if (error)
        {
          v11 = CBErrorF(4294960588, "Bad device ID '%@'", dCopy);
          goto LABEL_26;
        }
      }

      else
      {
        if (qword_100B508F0 != -1)
        {
          sub_10080ECC0();
        }

        v10 = sub_1000504C8(off_100B508E8, 0, neededCopy);
        if (v10)
        {
          goto LABEL_15;
        }

        if (error)
        {
          v11 = CBErrorF(4294960569, "No BT device %@", dCopy);
          goto LABEL_26;
        }
      }
    }

    v10 = 0;
    goto LABEL_15;
  }

  if (error)
  {
    CBErrorF(4294960591, "No device ID");
    *error = v10 = 0;
  }

  else
  {
    v10 = 0;
  }

LABEL_16:

  return v10;
}

- (id)_btUUIDWithID:(id)d error:(id *)error
{
  dCopy = d;
  v6 = [[NSUUID alloc] initWithUUIDString:dCopy];
  if (v6)
  {
    v7 = v6;
    goto LABEL_8;
  }

  [dCopy UTF8String];
  if (TextToHardwareAddress())
  {
    if (error)
    {
      v11 = CBErrorF(4294960588, "Bad device ID '%@'", dCopy);
      v7 = 0;
LABEL_15:
      *error = v11;
      goto LABEL_8;
    }

    v7 = 0;
  }

  else
  {
    v12[0] = 0;
    v12[1] = 0;
    if (qword_100B508D0 != -1)
    {
      sub_10080ECE8();
    }

    sub_1000498D4(off_100B508C8, 0, 0, 1u, 0, 0, v12);
    v8 = sub_10004DF60(v12);
    v7 = v8;
    if (v8)
    {
      v9 = v8;
      goto LABEL_8;
    }

    if (error)
    {
      v11 = CBErrorF(4294960569, "ID not found");
      goto LABEL_15;
    }
  }

LABEL_8:

  return v7;
}

- (BOOL)connectDevice:(id)device connectionFlags:(unsigned int)flags serviceFlags:(unsigned int)serviceFlags error:(id *)error
{
  deviceCopy = device;
  if (qword_100B50AA0 != -1)
  {
    sub_10080EB10();
  }

  if (*(off_100B50A98 + 60))
  {
    identifier = [deviceCopy identifier];
    v12 = [(CBStackControllerBTStack *)self _btDeviceWithID:identifier createIfNeeded:(flags >> 5) & 1 error:error];
    v13 = v12;
    if (v12)
    {
      sub_100546F5C(v12, (flags & 4) != 0);
      if (qword_100B50950 != -1)
      {
        sub_10080ED10();
      }

      sub_10035BBE0(off_100B50948, v13, (flags & 4) != 0);
      if (flags)
      {
        sub_100546F14(v13, 1);
      }

      if ((flags & 8) != 0)
      {
        if (qword_100B50950 != -1)
        {
          sub_10080ED10();
        }

        sub_100338418(off_100B50948, v13, 1);
      }

      if ((flags & 0x10) != 0)
      {
        sub_100007E30(&__str, "");
        *(v13 + 1499) = 1;
        std::string::operator=((v13 + 1544), &__str);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }
      }

      if (qword_100B50AC0 != -1)
      {
        sub_10080EA40();
      }

      memset(&__str, 0, sizeof(__str));
      v14 = sub_10059234C(off_100B50AB8, v13, serviceFlags, &__str, 2);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      if (!v14)
      {
        v15 = 1;
LABEL_22:

        goto LABEL_23;
      }

      if (error)
      {
        if (v14 == -310000)
        {
          v17 = 4294960596;
        }

        else
        {
          v17 = (v14 + 310000);
        }

        CBErrorF(v17, "Connect failed %@", identifier);
        *error = v15 = 0;
        goto LABEL_22;
      }
    }

    v15 = 0;
    goto LABEL_22;
  }

  if (error)
  {
    CBErrorF(4294896144, "Bluetooth powered off");
    *error = v15 = 0;
  }

  else
  {
    v15 = 0;
  }

LABEL_23:

  return v15;
}

- (void)connectWithCBConnection:(id)connection completionHandler:(id)handler
{
  connectionCopy = connection;
  handlerCopy = handler;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = sub_100042254;
  v44 = sub_1000425BC;
  v45 = 0;
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_100153E24;
  v37[3] = &unk_100AE2420;
  v39 = &v40;
  v7 = handlerCopy;
  v38 = v7;
  v32 = objc_retainBlock(v37);
  if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe(&dword_100B511E0, "[CBStackControllerBTStack connectWithCBConnection:completionHandler:]", 30, "ConnectDevice start: %@", connectionCopy);
  }

  if (qword_100B50AA0 != -1)
  {
    sub_10009AF30();
  }

  if ((*(off_100B50A98 + 60) & 1) == 0)
  {
    v27 = CBErrorF(4294896144, "Bluetooth powered off");
    identifier = v41[5];
    v41[5] = v27;
    goto LABEL_38;
  }

  peerDevice = [connectionCopy peerDevice];
  identifier = [peerDevice identifier];

  if (!identifier)
  {
    v28 = CBErrorF(4294960588, "No device ID");
LABEL_42:
    v29 = v41[5];
    v41[5] = v28;

    goto LABEL_38;
  }

  serviceFlags = [connectionCopy serviceFlags];
  if (!serviceFlags)
  {
    v28 = CBErrorF(4294960591, "No service flags");
    goto LABEL_42;
  }

  connectionFlags = [connectionCopy connectionFlags];
  v12 = v41;
  obj = v41[5];
  v13 = [(CBStackControllerBTStack *)self _btDeviceWithID:identifier createIfNeeded:(connectionFlags >> 5) & 1 error:&obj];
  objc_storeStrong(v12 + 5, obj);
  if (v13)
  {
    connectionFlags2 = [connectionCopy connectionFlags];
    v15 = connectionFlags2;
    v16 = (connectionFlags2 >> 2) & 1;
    sub_100546F5C(v13, (connectionFlags2 & 4) != 0);
    if (qword_100B50950 != -1)
    {
      sub_10080ED24();
    }

    sub_10035BBE0(off_100B50948, v13, v16);
    if (v15)
    {
      sub_100546F14(v13, 1);
    }

    if ((v15 & 8) != 0)
    {
      if (qword_100B50950 != -1)
      {
        sub_10080ED24();
      }

      sub_100338418(off_100B50948, v13, 1);
    }

    if ((v15 & 0x10) != 0)
    {
      sub_100007E30(&__str, "");
      v13[1499] = 1;
      std::string::operator=((v13 + 1544), &__str);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }
    }

    memset(&__str, 0, sizeof(__str));
    sub_100007E30(&__str, "Unknown");
    clientBundleID = [connectionCopy clientBundleID];
    v18 = [clientBundleID length];

    if (v18)
    {
      clientBundleID2 = [connectionCopy clientBundleID];
      sub_100007E30(&v34, [clientBundleID2 UTF8String]);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      __str = v34;
      *(&v34.__r_.__value_.__s + 23) = 0;
      v34.__r_.__value_.__s.__data_[0] = 0;
    }

    if ((v15 & 0x400) != 0 && sub_1000E2140(v13, 0x15u))
    {
      sub_10054E1E8(v13, 0);
    }

    if (qword_100B50AC0 != -1)
    {
      sub_10080EA40();
    }

    v20 = sub_10059234C(off_100B50AB8, v13, serviceFlags, &__str, 2);
    if (v20 && (v21 = (v20 + 310000), v21))
    {
      v30 = CBErrorF(v21, "connectServices failed %@", identifier);
      v22 = v41[5];
      v41[5] = v30;
    }

    else
    {
      v22 = objc_alloc_init(CBStackConnectDeviceRequest);
      [(CBStackConnectDeviceRequest *)v22 setCompletionHandler:v7];
      [(CBStackConnectDeviceRequest *)v22 setConnection:connectionCopy];
      [(CBStackConnectDeviceRequest *)v22 setStartTicks:mach_absolute_time()];
      v23 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
      [(CBStackConnectDeviceRequest *)v22 setTimer:v23];
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_100153F18;
      handler[3] = &unk_100AE2550;
      handler[4] = v23;
      handler[5] = v22;
      handler[6] = self;
      dispatch_source_set_event_handler(v23, handler);
      [connectionCopy connectTimeoutSeconds];
      CUDispatchTimerSet();
      dispatch_activate(v23);
      connectDeviceRequests = self->_connectDeviceRequests;
      if (!connectDeviceRequests)
      {
        v25 = objc_alloc_init(NSMutableSet);
        v26 = self->_connectDeviceRequests;
        self->_connectDeviceRequests = v25;

        connectDeviceRequests = self->_connectDeviceRequests;
      }

      [(NSMutableSet *)connectDeviceRequests addObject:v22];
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }

LABEL_38:

  (v32[2])(v32);
  _Block_object_dispose(&v40, 8);
}

- (void)_connectDeviceCompleteRequest:(id)request error:(id)error
{
  requestCopy = request;
  errorCopy = error;
  if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
  {
    connection = [requestCopy connection];
    v8 = CUPrintNSError();
    mach_absolute_time();
    [requestCopy startTicks];
    v9 = UpTicksToMilliseconds();
    LogPrintF_safe(&dword_100B511E0, "[CBStackControllerBTStack _connectDeviceCompleteRequest:error:]", 30, "ConnectDevice completed: %@, %@, %llu ms", connection, v8, v9);
  }

  timer = [requestCopy timer];
  v11 = requestCopy;
  if (timer)
  {
    dispatch_source_cancel(timer);
    [requestCopy setTimer:0];
    v11 = requestCopy;
  }

  completionHandler = [v11 completionHandler];
  v13 = completionHandler;
  if (completionHandler)
  {
    (*(completionHandler + 16))(completionHandler, errorCopy);
    [requestCopy setCompletionHandler:0];
  }

  [(NSMutableSet *)self->_connectDeviceRequests removeObject:requestCopy];
}

- (void)_connectDeviceUpdateRequests:(id)requests btResult:(int)result
{
  requestsCopy = requests;
  if (self->_addedController)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    [(NSMutableSet *)self->_connectDeviceRequests allObjects];
    obj = v18 = self;
    v7 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v7)
    {
      v8 = *v21;
      v9 = result + 310000;
      if (result == -310000)
      {
        v9 = -6700;
      }

      v17 = v9;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v21 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v20 + 1) + 8 * i);
          connection = [v11 connection];
          peerDevice = [connection peerDevice];
          if ([peerDevice isEquivalentToCBDevice:requestsCopy compareFlags:8])
          {
            if (result)
            {
              v14 = CBErrorF(v17, "Connect failed");
              [(CBStackControllerBTStack *)v18 _connectDeviceCompleteRequest:v11 error:v14];
            }

            else
            {
              serviceFlags = [connection serviceFlags];
              supportedServices = [requestsCopy supportedServices];
              if ((supportedServices & serviceFlags & ~[requestsCopy connectedServices]) == 0)
              {
                [(CBStackControllerBTStack *)v18 _connectDeviceCompleteRequest:v11 error:0];
              }
            }
          }
        }

        v7 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v7);
    }
  }
}

- (id)diagnosticControl:(id)control error:(id *)error
{
  controlCopy = control;
  string = xpc_dictionary_get_string(controlCopy, "iStr");
  if (string)
  {
    v8 = string;
  }

  else
  {
    v8 = "";
  }

  if (!strcasecmp(v8, "aop-read-debug"))
  {
    v13 = CUXPCCreateCFObjectFromXPCObject();
    if (v13)
    {
      Int64Ranged = CFDictionaryGetInt64Ranged();
      if (qword_100B51098 != -1)
      {
        sub_10080ED60();
      }

      v53 = 0;
      v15 = sub_10048B078(qword_100B51090, Int64Ranged, &v53);
      v16 = v53;
      if (v15)
      {
        v12 = [NSString stringWithFormat:@"### AOPInterfaceManager::getInstance()->getReport() BTResult %d", v15];
      }

      else
      {
        v52 = 0;
        v18 = [NSJSONSerialization dataWithJSONObject:v16 options:0 error:&v52];
        v19 = v52;
        v20 = v19;
        if (v19)
        {
          v12 = [v19 description];
        }

        else
        {
          v12 = [[NSString alloc] initWithData:v18 encoding:4];
          if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF_safe(&dword_100B511E0, "[CBStackControllerBTStack diagnosticControl:error:]", 30, "Diags: descriptorString %@", v12);
          }
        }
      }
    }

    else
    {
      v12 = @"### Convert params failed";
    }

    goto LABEL_65;
  }

  if (!strcasecmp(v8, "aop-write-debug"))
  {
    v17 = CUXPCCreateCFObjectFromXPCObject();
    if (v17)
    {
      if (qword_100B51098 != -1)
      {
        sub_10080ED60();
      }

      sub_10048A1BC(qword_100B51090, v17);
      v12 = &stru_100B0F9E0;
      goto LABEL_29;
    }

    goto LABEL_82;
  }

  if (!strcasecmp(v8, "coredump"))
  {
    if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe(&dword_100B511E0, "[CBStackControllerBTStack diagnosticControl:error:]", 30, "Diag: CoreDump");
    }

    if (qword_100B50AA0 != -1)
    {
      sub_10080EB10();
    }

    if (*(off_100B50A98 + 60))
    {
      v27 = off_100B50A98;
      sub_100007E30(&v51, "");
      sub_100007E30(v50, "");
      sub_1005A24D4(v27, 3703, &v51, 0, 0, 0, v50);
    }

    if (error)
    {
      CBErrorF(4294896144, "Bluetooth powered off");
      *error = v12 = 0;
    }

    else
    {
      v12 = 0;
    }

    goto LABEL_65;
  }

  if (!strcasecmp(v8, "crash-FE"))
  {
    LOBYTE(v50[0]) = 0;
    sub_1000216B4(v50);
    sub_1000C52F4(4004);
LABEL_95:
    __break(1u);
    return result;
  }

  if (!strcasecmp(v8, "crash-RC"))
  {
    LOBYTE(v50[0]) = 0;
    sub_1000216B4(v50);
    sub_1001BAA68(4058, "Test Context");
  }

  if (!strcasecmp(v8, "crash-sim"))
  {
    v22 = _os_log_pack_size();
    v23 = &v47[-1] - ((__chkstk_darwin(v22) + 15) & 0xFFFFFFFFFFFFFFF0);
    v24 = __error();
    v25 = _os_log_pack_fill(v23, v22, *v24, &_mh_execute_header, "Diag crash simulated: '%s'", v46);
    *v25 = 136315138;
    *(v25 + 4) = v8;
    v26 = os_log_create("com.apple.bluetooth", "CBCrash");
    qword_100B55118 = os_log_pack_send_and_compose();
    os_fault_with_payload();

    goto LABEL_64;
  }

  if (!strcasecmp(v8, "crash"))
  {
    v41 = _os_log_pack_size();
    v42 = &v47[-1] - ((__chkstk_darwin(v41) + 15) & 0xFFFFFFFFFFFFFFF0);
    v43 = __error();
    v44 = _os_log_pack_fill(v42, v41, *v43, &_mh_execute_header, "Diag crash: '%s'", v46);
    *v44 = 136315138;
    *(v44 + 4) = v8;
    os_log_create("com.apple.bluetooth", "CBCrash");
    qword_100B55118 = os_log_pack_send_and_compose();
    result = abort_with_payload();
    goto LABEL_95;
  }

  if (!strcasecmp(v8, "restart"))
  {
    v45 = sub_10000E92C();
    sub_100007E30(v49, "");
    sub_100693260(v45, 3602, v49, 1);
  }

  v9 = strcasecmp(v8, "HostAwakeVSC");
  v11 = v9;
  if (!v9 || (v9 = strcasecmp(v8, "HostSleptVSC"), !v9))
  {
    v21 = sub_10000C7D0(v9, v10);
    (*(*v21 + 552))(v21, v11 == 0, 0);
LABEL_64:
    v12 = &stru_100B0F9E0;
    goto LABEL_65;
  }

  if (!stricmp_prefix())
  {
    WORD2(v50[0]) = 0;
    LODWORD(v50[0]) = 0;
    if (stricmp_prefix())
    {
      v28 = RandomBytes();
    }

    else
    {
      v28 = TextToHardwareAddress();
      if (v28)
      {
        v12 = @"Bad Bluetooth address";
        goto LABEL_65;
      }
    }

    v36 = sub_10000EE80(v28, v29);
    (*(*v36 + 144))(v36, LODWORD(v50[0]) | (WORD2(v50[0]) << 32), 8206, @"Fake Accessory", @"Fake Version");
    goto LABEL_64;
  }

  if (!strcasecmp(v8, "gapa"))
  {
    v17 = CUXPCCreateCFObjectFromXPCObject();
    if (v17)
    {
      CFStringGetTypeID();
      v30 = CFDictionaryGetTypedValue();
      if (v30)
      {
        v31 = [(CBStackControllerBTStack *)self _btDeviceWithID:v30 error:0];
        if (v31)
        {
          v32 = CFDictionaryGetInt64Ranged();
          v33 = CFDictionaryGetInt64Ranged();
          sub_100540890(v31, v32, v33);
LABEL_77:
          v12 = &stru_100B0F9E0;
LABEL_78:

LABEL_29:
          goto LABEL_65;
        }

LABEL_87:
        v12 = @"### Device not found";
        goto LABEL_78;
      }

LABEL_86:
      v12 = @"### No device ID";
      goto LABEL_78;
    }

LABEL_82:
    v12 = @"### Convert params failed";
    goto LABEL_29;
  }

  if (!strcasecmp(v8, "mp-error"))
  {
    v17 = CUXPCCreateCFObjectFromXPCObject();
    if (v17)
    {
      CFStringGetTypeID();
      v30 = CFDictionaryGetTypedValue();
      if (v30)
      {
        v34 = [(CBStackControllerBTStack *)self _btDeviceWithID:v30 error:0];
        if (v34)
        {
          v35 = CFDictionaryGetInt64Ranged();
          if ((v35 - 8) < 0xFFFFFFF9)
          {
            v12 = @"### Invalid status";
            goto LABEL_78;
          }

          if (qword_100B50AB0 != -1)
          {
            sub_10080ED4C();
          }

          sub_10055B928(off_100B50AA8, v34, v35);
          goto LABEL_77;
        }

        goto LABEL_87;
      }

      goto LABEL_86;
    }

    goto LABEL_82;
  }

  if (!strcasecmp(v8, "mp-keys-reset"))
  {
    v17 = CUXPCCreateCFObjectFromXPCObject();
    if (v17)
    {
      CFStringGetTypeID();
      v30 = CFDictionaryGetTypedValue();
      if (v30)
      {
        v38 = [(CBStackControllerBTStack *)self _btDeviceWithID:v30 error:0];
        if (v38)
        {
          if (qword_100B50AB0 != -1)
          {
            sub_10080ED4C();
          }

          v39 = sub_100558DB8(off_100B50AA8, v38);
          if (!v39)
          {
            v12 = @"### Magic Paired Device not found";
            goto LABEL_78;
          }

          if (qword_100B50AB0 != -1)
          {
            sub_10080ED4C();
          }

          sub_10055ACB4(off_100B50AA8, v39);
          goto LABEL_77;
        }

        goto LABEL_87;
      }

      goto LABEL_86;
    }

    goto LABEL_82;
  }

  if (!stricmp_prefix())
  {
    v40 = sub_10000E92C();
    sub_100007E30(v47, "btutil manual stackshot");
    sub_100693FC4(v40, v47, 3172327085);
    if (v48 < 0)
    {
      operator delete(v47[0]);
    }

    goto LABEL_64;
  }

  v12 = NSPrintF_safe("### Unsupported command: '%s'\n", v8);
LABEL_65:

  return v12;
}

- (BOOL)disconnectDevice:(id)device serviceFlags:(unsigned int)flags error:(id *)error
{
  v6 = *&flags;
  deviceCopy = device;
  if (qword_100B50AA0 != -1)
  {
    sub_10080EB10();
  }

  if (*(off_100B50A98 + 60))
  {
    identifier = [deviceCopy identifier];
    v10 = identifier;
    if (identifier)
    {
      if ([identifier caseInsensitiveCompare:@"all"])
      {
        v11 = [(CBStackControllerBTStack *)self _disconnectDevice:deviceCopy serviceFlags:v6 error:error];
      }

      else
      {
        [(CBStackControllerBTStack *)self _disconnectAllDevicesWithServiceFlags:v6];
        v11 = 1;
      }
    }

    else if (error)
    {
      CBErrorF(4294960588, "No device identifier");
      *error = v11 = 0;
    }

    else
    {
      v11 = 0;
    }
  }

  else if (error)
  {
    CBErrorF(4294896144, "Bluetooth powered off");
    *error = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)_disconnectAllDevicesWithServiceFlags:(unsigned int)flags
{
  if (dword_100B511E0 <= 30)
  {
    if (dword_100B511E0 != -1 || (self = _LogCategory_Initialize(), self))
    {
      sub_10080ED74(self, a2, *&flags);
    }
  }

  __p = 0;
  v27 = 0;
  v28 = 0;
  if (qword_100B508A0 != -1)
  {
    sub_10080EA68();
  }

  v4 = sub_1000AD9D8(off_100B50898, &__p);
  if (v4)
  {
    v5 = v4 == -310000;
  }

  else
  {
    v5 = 1;
  }

  if (!v5 && dword_100B511E0 <= 90 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
  {
    v6 = CUPrintErrorCode();
    LogPrintF_safe(&dword_100B511E0, "[CBStackControllerBTStack _disconnectAllDevicesWithServiceFlags:]", 90, "### GetConnectedDevices failed: %@", v6);
  }

  v7 = __p;
  v8 = v27;
  if (__p != v27)
  {
    do
    {
      v9 = *v7;
      if (qword_100B50AC0 != -1)
      {
        sub_10080EA40();
      }

      sub_100593A4C(off_100B50AB8, v9, flags);
      if (dword_100B511E0 < 31 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
      {
        sub_1000E5A58(v9, v30);
        v10 = v31;
        v11 = v30[0];
        v12 = CUPrintErrorCode();
        v13 = v12;
        v14 = v30;
        if (v10 < 0)
        {
          v14 = v11;
        }

        LogPrintF_safe(&dword_100B511E0, "[CBStackControllerBTStack _disconnectAllDevicesWithServiceFlags:]", 30, "Disconnect: classic, %s, %@", v14, v12);

        if (v31 < 0)
        {
          operator delete(v30[0]);
        }
      }

      ++v7;
    }

    while (v7 != v8);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  if (qword_100B508B0 != -1)
  {
    sub_10080ED90();
  }

  v15 = sub_100029630(off_100B508A8);
  v16 = [v15 countByEnumeratingWithState:&v22 objects:v29 count:16];
  if (v16)
  {
    v17 = *v23;
    do
    {
      v18 = 0;
      do
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(v15);
        }

        v19 = *(*(&v22 + 1) + 8 * v18);
        if (qword_100B508B0 != -1)
        {
          sub_10080ED90();
        }

        v20 = off_100B508A8;
        sub_10004DFB4(v30, v19);
        sub_10074CD90(v20, v30, 2);
        if (dword_100B511E0 < 31 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
        {
          v21 = CUPrintErrorCode();
          LogPrintF_safe(&dword_100B511E0, "[CBStackControllerBTStack _disconnectAllDevicesWithServiceFlags:]", 30, "Disconnect: BLE, %@, %@", v19, v21, v22);
        }

        v18 = v18 + 1;
      }

      while (v16 != v18);
      v16 = [v15 countByEnumeratingWithState:&v22 objects:v29 count:16];
    }

    while (v16);
  }

  if (__p)
  {
    v27 = __p;
    operator delete(__p);
  }
}

- (BOOL)_disconnectDevice:(id)device serviceFlags:(unsigned int)flags error:(id *)error
{
  deviceCopy = device;
  identifier = [deviceCopy identifier];
  if (identifier)
  {
    v10 = [(CBStackControllerBTStack *)self _btDeviceWithID:identifier error:0];
    v11 = v10;
    if (v10 && sub_1000C0348(v10))
    {
      if (qword_100B50AC0 != -1)
      {
        sub_10080EC68();
      }

      v12 = sub_100593A4C(off_100B50AB8, v11, flags);
      if (v12)
      {
        v13 = (v12 + 310000);
      }

      else
      {
        v13 = 0;
      }

      if (dword_100B511E0 < 31 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
      {
        v14 = CUPrintErrorCode();
        LogPrintF_safe(&dword_100B511E0, "[CBStackControllerBTStack _disconnectDevice:serviceFlags:error:]", 30, "Disconnect: classic, %@, %@", deviceCopy, v14);
      }

      v15 = 1;
    }

    else
    {
      v15 = 0;
      v13 = 1;
    }

    v16 = [(CBStackControllerBTStack *)self _btUUIDWithID:identifier error:0];
    if (v16)
    {
      if (qword_100B508B0 != -1)
      {
        sub_10080EC54();
      }

      v17 = off_100B508A8;
      sub_10004DFB4(v31, v16);
      if (sub_100050290(v17, v31))
      {
        if (qword_100B508B0 != -1)
        {
          sub_10080ED90();
        }

        v18 = off_100B508A8;
        sub_10004DFB4(v31, v16);
        v19 = sub_10074CD90(v18, v31, 2);
        if (v19)
        {
          v20 = (v19 + 310000);
        }

        else
        {
          v20 = 0;
        }

        if (dword_100B511E0 < 31 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
        {
          v21 = CUPrintErrorCode();
          LogPrintF_safe(&dword_100B511E0, "[CBStackControllerBTStack _disconnectDevice:serviceFlags:error:]", 30, "Disconnect: BLE, %@, %@", deviceCopy, v21);
        }

        v23 = 1;
        goto LABEL_44;
      }
    }

    if (v11)
    {
      v22 = v15;
    }

    else
    {
      v22 = 1;
    }

    if (v22)
    {
      if (v15)
      {
        v23 = 0;
        v20 = 1;
LABEL_44:
        if (v13)
        {
          v27 = v15;
        }

        else
        {
          v27 = 0;
        }

        if (v27)
        {
          CBErrorF(v13, "Disconnect failed, classic");
          goto LABEL_53;
        }

        if (!v20)
        {
          v23 = 0;
        }

        if (v23 == 1)
        {
          CBErrorF(v20, "Disconnect failed, BLE");
          goto LABEL_53;
        }

        LOBYTE(v25) = 0;
LABEL_57:
        v28 = 0;
LABEL_58:

        v29 = v25 ^ 1;
        goto LABEL_59;
      }
    }

    else
    {
      v31[0] = 0;
      sub_1000216B4(v31);
      v24 = sub_10023BD60(v11 + 128);
      sub_100022214(v31);
      if (v24)
      {
        v25 = v24 + 330000;
      }

      else
      {
        v25 = 0;
      }

      if (dword_100B511E0 < 31 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
      {
        v26 = CUPrintErrorCode();
        LogPrintF_safe(&dword_100B511E0, "[CBStackControllerBTStack _disconnectDevice:serviceFlags:error:]", 30, "Disconnect: HCI, %@, %@", deviceCopy, v26);
      }

      sub_10002249C(v31);
      if (!v25)
      {
        goto LABEL_57;
      }
    }

    CBErrorF(4294960569, "Not connected");
    v28 = LABEL_53:;
    LOBYTE(v25) = v28 != 0;
    if (error && v28)
    {
      v28 = v28;
      *error = v28;
      LOBYTE(v25) = 1;
    }

    goto LABEL_58;
  }

  if (error)
  {
    CBErrorF(4294960588, "No device identifier");
    *error = v29 = 0;
  }

  else
  {
    v29 = 0;
  }

LABEL_59:

  return v29;
}

- (BOOL)deleteDevice:(id)device error:(id *)error
{
  deviceCopy = device;
  if (qword_100B50AA0 != -1)
  {
    sub_10080EB10();
  }

  if (*(off_100B50A98 + 60))
  {
    identifier = [deviceCopy identifier];
    v8 = identifier;
    if (identifier)
    {
      if ([identifier caseInsensitiveCompare:@"all"])
      {
        v9 = [(CBStackControllerBTStack *)self _deleteDevice:deviceCopy error:error];
      }

      else
      {
        [(CBStackControllerBTStack *)self _deleteAllDevices];
        v9 = 1;
      }
    }

    else if (error)
    {
      CBErrorF(4294960588, "No device identifier");
      *error = v9 = 0;
    }

    else
    {
      v9 = 0;
    }
  }

  else if (error)
  {
    CBErrorF(4294896144, "Bluetooth off");
    *error = v9 = 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_deleteAllDevices
{
  if (dword_100B511E0 <= 30)
  {
    if (dword_100B511E0 != -1 || (self = _LogCategory_Initialize(), self))
    {
      sub_10080EDB8(self, a2, v2);
    }
  }

  v32 = 0;
  v33 = 0;
  v34 = 0;
  if (qword_100B508A0 != -1)
  {
    sub_10080EA68();
  }

  v3 = sub_10009E064(off_100B50898, &v32);
  if (v3)
  {
    v4 = v3 == -310000;
  }

  else
  {
    v4 = 1;
  }

  if (!v4 && dword_100B511E0 <= 90 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
  {
    v5 = CUPrintErrorCode();
    LogPrintF_safe(&dword_100B511E0, "[CBStackControllerBTStack _deleteAllDevices]", 90, "### GetPairedDevices failed: %@", v5);
  }

  v6 = v32;
  v7 = v33;
  if (v32 != v33)
  {
    do
    {
      v8 = *v6;
      if (qword_100B50F88 != -1)
      {
        sub_10080EDD4();
      }

      sub_1006E0DBC(off_100B50F80, v8);
      if (dword_100B511E0 < 31 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
      {
        sub_1000E5A58(v8, &__p);
        v9 = SHIBYTE(v26);
        v10 = __p;
        v11 = CUPrintErrorCode();
        v12 = v11;
        p_p = &__p;
        if (v9 < 0)
        {
          p_p = v10;
        }

        LogPrintF_safe(&dword_100B511E0, "[CBStackControllerBTStack _deleteAllDevices]", 30, "Delete pairing: classic, %s, %@", p_p, v11);

        if (SHIBYTE(v26) < 0)
        {
          operator delete(__p);
        }
      }

      ++v6;
    }

    while (v6 != v7);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  if (qword_100B508C0 != -1)
  {
    sub_10080EDFC();
  }

  obj = sub_10009DA04(off_100B508B8);
  v14 = [obj countByEnumeratingWithState:&v28 objects:v35 count:16];
  if (v14)
  {
    v15 = *v29;
    do
    {
      v16 = 0;
      do
      {
        if (*v29 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v28 + 1) + 8 * v16);
        __p = 0;
        v25 = &__p;
        v26 = 0x2020000000;
        v27 = 0;
        if (qword_100B508D0 != -1)
        {
          sub_10080ECE8();
        }

        v23[0] = _NSConcreteStackBlock;
        v23[1] = 3221225472;
        v23[2] = sub_100155F44;
        v23[3] = &unk_100ADF8D8;
        v23[4] = &__p;
        v18 = sub_1000C320C(off_100B508C8, v17, v23);
        if (v18 && (v25[3] & 1) == 0)
        {
          if (dword_100B511E0 <= 30)
          {
            if (dword_100B511E0 != -1 || (v18 = _LogCategory_Initialize(), v18))
            {
              v18 = LogPrintF_safe(&dword_100B511E0, "[CBStackControllerBTStack _deleteAllDevices]", 30, "Delete pairing: BLE, %@", v17);
            }
          }

          v20 = sub_100007EE8(v18, v19);
          v22[0] = _NSConcreteStackBlock;
          v22[1] = 3221225472;
          v22[2] = sub_100155FD4;
          v22[3] = &unk_100ADF820;
          v22[4] = v17;
          sub_10000CA94(v20, v22);
        }

        _Block_object_dispose(&__p, 8);
        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [obj countByEnumeratingWithState:&v28 objects:v35 count:16];
    }

    while (v14);
  }

  if (v32)
  {
    v33 = v32;
    operator delete(v32);
  }
}

- (BOOL)_deleteDevice:(id)device error:(id *)error
{
  deviceCopy = device;
  identifier = [deviceCopy identifier];
  if (identifier)
  {
    v8 = [(CBStackControllerBTStack *)self _btDeviceWithID:identifier error:0];
    if (!v8)
    {
      goto LABEL_14;
    }

    if (qword_100B50F88 != -1)
    {
      sub_10080EE38();
    }

    if (sub_1006E0D68(off_100B50F80, v8))
    {
      if (qword_100B50F88 != -1)
      {
        sub_10080EE38();
      }

      v9 = sub_1006E0DBC(off_100B50F80, v8);
      if (v9)
      {
        v10 = (v9 + 310000);
      }

      else
      {
        v10 = 0;
      }

      if (dword_100B511E0 < 31 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
      {
        v11 = CUPrintErrorCode();
        LogPrintF_safe(&dword_100B511E0, "[CBStackControllerBTStack _deleteDevice:error:]", 30, "Delete pairing: classic, %@, %@", deviceCopy, v11);
      }

      v12 = 1;
    }

    else
    {
LABEL_14:
      v12 = 0;
      v10 = 1;
    }

    v13 = [(CBStackControllerBTStack *)self _btUUIDWithID:identifier error:0];
    if (!v13)
    {
      goto LABEL_24;
    }

    if (qword_100B508C0 != -1)
    {
      sub_10080EE24();
    }

    v14 = sub_10004EE74(off_100B508B8, v13);
    if (v14)
    {
      if (dword_100B511E0 <= 30)
      {
        if (dword_100B511E0 != -1 || (v14 = _LogCategory_Initialize(), v14))
        {
          v14 = LogPrintF_safe(&dword_100B511E0, "[CBStackControllerBTStack _deleteDevice:error:]", 30, "Delete pairing: BLE, %@", deviceCopy);
        }
      }

      v16 = sub_100007EE8(v14, v15);
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_10015634C;
      v22[3] = &unk_100ADF820;
      v22[4] = v13;
      sub_10000CA94(v16, v22);
    }

    else
    {
LABEL_24:
      if ((v12 & 1) == 0)
      {
        CBErrorF(4294960569, "Not paired");
        goto LABEL_33;
      }
    }

    if (v10)
    {
      v17 = v12;
    }

    else
    {
      v17 = 0;
    }

    if (v17 != 1)
    {
      v19 = 0;
      v18 = 0;
LABEL_37:
      v20 = !v19;

      goto LABEL_38;
    }

    CBErrorF(v10, "Delete pairing failed");
    v18 = LABEL_33:;
    v19 = v18 != 0;
    if (error && v18)
    {
      v18 = v18;
      *error = v18;
      v19 = 1;
    }

    goto LABEL_37;
  }

  if (error)
  {
    CBErrorF(4294960588, "No device identifier");
    *error = v20 = 0;
  }

  else
  {
    v20 = 0;
  }

LABEL_38:

  return v20;
}

- (id)getDevicesWithFlags:(unsigned int)flags error:(id *)error
{
  flagsCopy = flags;
  v56 = objc_alloc_init(NSMutableArray);
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  if (qword_100B508C0 != -1)
  {
    sub_10080EE24();
  }

  v4 = sub_10009DA04(off_100B508B8);
  obj = v4;
  v5 = [v4 countByEnumeratingWithState:&v65 objects:v84 count:16];
  if (v5)
  {
    v59 = *v66;
    do
    {
      v6 = 0;
      do
      {
        if (*v66 != v59)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v65 + 1) + 8 * v6);
        v80 = 0;
        v81 = &v80;
        v82 = 0x2020000000;
        v83 = 0;
        __p.n128_u64[0] = 0;
        __p.n128_u64[1] = &__p;
        v76 = 0x3032000000;
        v77 = sub_100042254;
        v78 = sub_1000425BC;
        v79 = 0;
        if (qword_100B508D0 != -1)
        {
          sub_10080ECE8();
        }

        v64[0] = _NSConcreteStackBlock;
        v64[1] = 3221225472;
        v64[2] = sub_100156F0C;
        v64[3] = &unk_100AE2578;
        v64[4] = &v80;
        v64[5] = &__p;
        if (sub_1000C320C(off_100B508C8, v7, v64))
        {
          v8 = objc_alloc_init(CBDevice);
          uUIDString = [v7 UUIDString];
          [v8 setIdentifier:uUIDString];

          [v8 setName:*(__p.n128_u64[1] + 40)];
          v10 = v81[3];
          LOBYTE(v69) = BYTE5(v10);
          BYTE1(v69) = BYTE4(v10);
          BYTE2(v69) = BYTE3(v10);
          BYTE3(v69) = BYTE2(v10);
          BYTE4(v69) = BYTE1(v10);
          BYTE5(v69) = v10;
          v11 = [[NSData alloc] initWithBytes:&v69 length:6];
          [v8 setBtAddressData:v11];

          logPrivateData = self->_logPrivateData;
          internalFlags = [v8 internalFlags];
          if (logPrivateData)
          {
            v14 = 0x20000;
          }

          else
          {
            v14 = 0;
          }

          [v8 setInternalFlags:v14 | internalFlags];
          v15 = flagsCopy;
          if ((flagsCopy & 2) != 0)
          {
            if (qword_100B508D0 != -1)
            {
              sub_10080ECE8();
            }

            v16 = off_100B508C8;
            v17 = sub_1000AFA48(off_100B508C8, v7);
            if ([v17 length])
            {
              v18 = sub_1000DFED0(v16, v17);
              if (v18)
              {
                if (sub_1007908B4(v16, v18) == 2)
                {
                  uUIDString2 = [v18 UUIDString];
                  [v8 setFindMyCaseIdentifier:uUIDString2];
                }

                v20 = sub_100790774(v16, v18);
                v21 = v20;
                if (v20)
                {
                  uUIDString3 = [v20 UUIDString];
                  [v8 setFindMyGroupIdentifier:uUIDString3];
                }
              }
            }

            v15 = flagsCopy;
          }

          if (v15)
          {
            v74 = 0;
            memset(v73, 0, sizeof(v73));
            v71 = 0u;
            v72 = 0u;
            v70 = 0u;
            if (qword_100B508C0 != -1)
            {
              sub_10080EDFC();
            }

            sub_1007C5A1C(off_100B508B8, v7, &v70);
            v23 = v74;
            if ((v74 & 0x40) != 0)
            {
              v24 = [[NSData alloc] initWithBytes:&v73[8] length:16];
              [v8 setIrkData:v24];

              v23 = v74;
            }

            if (v23)
            {
              v27 = [NSData alloc];
              v26 = [v27 initWithBytes:&v70 length:v71];
              [v8 setLtkData:v26];
LABEL_35:
            }

            else if ((v23 & 8) != 0)
            {
              v25 = [NSData alloc];
              v26 = [v25 initWithBytes:&v71 + 12 length:BYTE12(v72)];
              [v8 setLtkData:v26];
              goto LABEL_35;
            }
          }

          [v56 addObject:v8];
        }

        _Block_object_dispose(&__p, 8);

        _Block_object_dispose(&v80, 8);
        v6 = v6 + 1;
      }

      while (v5 != v6);
      v4 = obj;
      v5 = [obj countByEnumeratingWithState:&v65 objects:v84 count:16];
    }

    while (v5);
  }

  v70 = 0uLL;
  *&v71 = 0;
  if (qword_100B508A0 != -1)
  {
    sub_10080EAA4();
  }

  v28 = sub_10009E064(off_100B50898, &v70);
  if (v28 && v28 != -310000 && dword_100B511E0 <= 90 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
  {
    v29 = CUPrintErrorCode();
    LogPrintF_safe(&dword_100B511E0, "[CBStackControllerBTStack getDevicesWithFlags:error:]", 90, "### GetPairedDevices failed: %@", v29);
  }

  v30 = v70;
  if (v70 != *(&v70 + 1))
  {
    v31 = *(&v70 + 1);
    do
    {
      v32 = *v30;
      v62 = *(*v30 + 128);
      v63 = *(v32 + 132);
      v80 = 0;
      v81 = 0;
      if (qword_100B508D0 != -1)
      {
        sub_10080ECE8();
      }

      sub_1000498D4(off_100B508C8, (v62 << 40) | (BYTE1(v62) << 32) | (BYTE2(v62) << 24) | (HIBYTE(v62) << 16) | (v63 << 8) | HIBYTE(v63), 1u, 1u, 0, 0, &v80);
      v33 = sub_10004DF60(&v80);
      if (v33)
      {
        v60 = 0;
        v61 = 0;
        v34 = sub_1000C2364(v32, &v61 + 1, &v61, &v60 + 1, &v60);
        v35 = objc_alloc_init(CBDevice);
        [v35 setColorInfo:sub_1000C2398(v32)];
        uUIDString4 = [v33 UUIDString];
        [v35 setIdentifier:uUIDString4];

        sub_1000C23E0(v32, &__p);
        if (v76 >= 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.n128_u64[0];
        }

        v38 = [NSString stringWithUTF8String:p_p];
        [v35 setName:v38];

        if (SHIBYTE(v76) < 0)
        {
          operator delete(__p.n128_u64[0]);
        }

        if (v34)
        {
          v39 = HIDWORD(v60);
        }

        else
        {
          v39 = 0;
        }

        [v35 setProductID:v39];
        v40 = [[NSData alloc] initWithBytes:&v62 length:6];
        [v35 setBtAddressData:v40];

        LODWORD(v40) = self->_logPrivateData;
        internalFlags2 = [v35 internalFlags];
        if (v40)
        {
          v42 = 0x20000;
        }

        else
        {
          v42 = 0;
        }

        [v35 setInternalFlags:v42 | internalFlags2];
        if ((flagsCopy & 2) != 0)
        {
          __p = 0uLL;
          v76 = 0;
          sub_1000DFC04(v32, &__p);
          if (0xAAAAAAAAAAAAAAABLL * ((__p.n128_u64[1] - __p.n128_u64[0]) >> 3) < 4)
          {
            v44 = 0;
          }

          else
          {
            v43 = (__p.n128_u64[0] + 72);
            if (*(__p.n128_u64[0] + 95) < 0)
            {
              v43 = *v43;
            }

            v44 = [NSString stringWithUTF8String:v43];
          }

          if ([v44 length])
          {
            if (qword_100B508D0 != -1)
            {
              sub_10080ECE8();
            }

            v45 = off_100B508C8;
            v46 = sub_1000DFED0(off_100B508C8, v44);
            if (v46)
            {
              if (sub_1007908B4(v45, v46) == 2)
              {
                uUIDString5 = [v46 UUIDString];
                [v35 setFindMyCaseIdentifier:uUIDString5];
              }

              v48 = sub_100790774(v45, v46);
              v49 = v48;
              if (v48)
              {
                uUIDString6 = [v48 UUIDString];
                [v35 setFindMyGroupIdentifier:uUIDString6];
              }
            }
          }

          v69 = &__p;
          sub_1000161FC(&v69);
        }

        if (flagsCopy)
        {
          __p = 0uLL;
          LODWORD(v76) = 0;
          sub_1006D1B74(&__p);
          if (qword_100B512E8 != -1)
          {
            sub_10080EE4C();
          }

          if (!sub_1006E7E2C(off_100B512E0, v32, &__p))
          {
            v51 = [NSData alloc];
            nullsub_21();
            v53 = [v51 initWithBytes:v52 length:sub_1006D1C18()];
            [v35 setLinkKeyData:v53];
          }

          nullsub_21();
        }

        [v56 addObject:v35];
      }

      ++v30;
    }

    while (v30 != v31);
  }

  if (v70)
  {
    *(&v70 + 1) = v70;
    operator delete(v70);
  }

  return v56;
}

- (void)localDeviceEvent:(int)event
{
  if (!self->_addedController)
  {
    return;
  }

  if (event <= 5)
  {
    if (event)
    {
      if (event != 2)
      {
        return;
      }

      if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
      {
        sub_10080EF94(self);
      }

      v6 = objc_retainBlock(self->_discoverableStateChangedHandler);
      if (!v6)
      {
        goto LABEL_16;
      }

LABEL_15:
      v6[2]();
LABEL_16:

      return;
    }

    if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
    {
      sub_10080EECC(self);
    }

    v8 = objc_retainBlock(self->_controllerDataChangedHandler);
    if (v8)
    {
      v8[2]();
    }

    v9 = objc_retainBlock(self->_discoverableStateChangedHandler);
    if (v9)
    {
      v9[2]();
    }

    v10 = objc_retainBlock(self->_inquiryStateChangedHandler);
    if (v10)
    {
      v10[2]();
    }

    v7 = objc_retainBlock(self->_powerChangedHandler);
    if (v7)
    {
      goto LABEL_38;
    }
  }

  else
  {
    if ((event - 6) < 2)
    {
      if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
      {
        sub_10080EF30(self);
      }

      v6 = objc_retainBlock(self->_inquiryStateChangedHandler);
      if (!v6)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    if (event != 10)
    {
      return;
    }

    if (qword_100B50AA0 != -1)
    {
      sub_10080EB10();
    }

    v4 = sub_10006DBF8(off_100B50A98);
    if (dword_100B511E0 <= 30)
    {
      v5 = v4;
      if (dword_100B511E0 != -1 || _LogCategory_Initialize())
      {
        sub_10080EE74(v5);
      }
    }

    v7 = objc_retainBlock(self->_powerChangedHandler);
    if (v7)
    {
LABEL_38:
      v7[2]();
    }
  }

  notify_set_state(self->_powerStateNotifyToken, [(CBStackControllerBTStack *)self powerState]);

  notify_post("com.apple.bluetooth.state");
}

- (BOOL)modifyDevice:(id)device error:(id *)error
{
  deviceCopy = device;
  v7 = objc_alloc_init(CBDeviceSettings);
  [v7 setDoubleTapActionLeft:{objc_msgSend(deviceCopy, "doubleTapActionLeft")}];
  [v7 setDoubleTapActionRight:{objc_msgSend(deviceCopy, "doubleTapActionRight")}];
  [v7 setMicrophoneMode:{objc_msgSend(deviceCopy, "microphoneMode")}];
  [v7 setPlacementMode:{objc_msgSend(deviceCopy, "placementMode")}];
  [v7 setSmartRoutingMode:{objc_msgSend(deviceCopy, "smartRoutingMode")}];
  LOBYTE(error) = [(CBStackControllerBTStack *)self modifyDevice:deviceCopy settings:v7 error:error];

  return error;
}

- (void)modifyDevice:(id)device connectionPriorityDevices:(id)devices timeoutSeconds:(double)seconds completionHandler:(id)handler
{
  deviceCopy = device;
  devicesCopy = devices;
  handlerCopy = handler;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v53 = 0;
  v54 = &v53;
  v55 = 0x3032000000;
  v56 = sub_100042254;
  v57 = sub_1000425BC;
  v58 = 0;
  v50[0] = _NSConcreteStackBlock;
  v50[1] = 3221225472;
  v50[2] = sub_1001579C8;
  v50[3] = &unk_100AE2420;
  v52 = &v53;
  v9 = handlerCopy;
  v51 = v9;
  v39 = objc_retainBlock(v50);
  if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
  {
    v10 = CUPrintNSObjectOneLine();
    LogPrintF_safe(&dword_100B511E0, "[CBStackControllerBTStack modifyDevice:connectionPriorityDevices:timeoutSeconds:completionHandler:]", 30, "ModifyDevice CnxPri start: %@, %@", deviceCopy, v10, handlerCopy);
  }

  identifier = [deviceCopy identifier];
  v12 = (v54 + 5);
  obj = v54[5];
  v13 = [(CBStackControllerBTStack *)self _btDeviceWithID:identifier error:&obj];
  objc_storeStrong(v12, obj);

  if (v13)
  {
    v14 = [devicesCopy count];
    v15 = v14;
    if (v14 >= 0x100)
    {
      v36 = CBErrorF(4294960591, "Too many devices");
      v16 = v54[5];
      v54[5] = v36;
    }

    else
    {
      v16 = objc_alloc_init(NSMutableData);
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v17 = devicesCopy;
      v18 = [(CBStackModifyDeviceRequest *)v17 countByEnumeratingWithState:&v45 objects:v59 count:16];
      if (v18)
      {
        v19 = *v46;
        while (2)
        {
          for (i = 0; i != v18; i = i + 1)
          {
            if (*v46 != v19)
            {
              objc_enumerationMutation(v17);
            }

            uTF8String = [*(*(&v45 + 1) + 8 * i) UTF8String];
            if (!uTF8String)
            {
              v32 = CBErrorF(4294960591, "Bad deviceAddress");
              v33 = v54[5];
              v54[5] = v32;

              goto LABEL_23;
            }

            v44 = 0;
            v43 = 0;
            v22 = TextToHardwareAddress();
            if (v22)
            {
              v34 = CBErrorF(v22, "Bad deviceAddress: '%s'", uTF8String);
              v35 = v54[5];
              v54[5] = v34;

              goto LABEL_23;
            }

            [v16 appendBytes:&v43 length:6];
          }

          v18 = [(CBStackModifyDeviceRequest *)v17 countByEnumeratingWithState:&v45 objects:v59 count:16];
          if (v18)
          {
            continue;
          }

          break;
        }
      }

      if (qword_100B50950 != -1)
      {
        sub_10080ED24();
      }

      v23 = off_100B50948;
      v24 = v16;
      v25 = sub_100335434(v23, v13, 1, [v16 bytes], v15);
      if (v25 && (v26 = (v25 + 310000), v26))
      {
        v37 = CBErrorF(v26, "AACP updateConnPriorityList failed");
        v17 = v54[5];
        v54[5] = v37;
      }

      else
      {
        v17 = objc_alloc_init(CBStackModifyDeviceRequest);
        [(CBStackModifyDeviceRequest *)v17 setCompletionHandler:v9];
        [(CBStackModifyDeviceRequest *)v17 setDevice:deviceCopy];
        v27 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
        [(CBStackModifyDeviceRequest *)v17 setTimer:v27];
        handler[0] = _NSConcreteStackBlock;
        handler[1] = 3221225472;
        handler[2] = sub_100157ABC;
        handler[3] = &unk_100AE2550;
        handler[4] = v27;
        handler[5] = v17;
        handler[6] = self;
        dispatch_source_set_event_handler(v27, handler);
        CUDispatchTimerSet();
        dispatch_activate(v27);
        modifyDeviceRequests = self->_modifyDeviceRequests;
        if (!modifyDeviceRequests)
        {
          v29 = objc_alloc_init(NSMutableSet);
          v31 = self->_modifyDeviceRequests;
          p_modifyDeviceRequests = &self->_modifyDeviceRequests;
          *p_modifyDeviceRequests = v29;

          modifyDeviceRequests = *p_modifyDeviceRequests;
        }

        [(NSMutableSet *)modifyDeviceRequests addObject:v17];
      }

LABEL_23:
    }
  }

  (v39[2])(v39);

  _Block_object_dispose(&v53, 8);
}

- (BOOL)modifyDevice:(id)device peerSourceDevice:(id)sourceDevice peerSourceState:(char)state requestFlags:(unsigned int)flags error:(id *)error
{
  flagsCopy = flags;
  stateCopy = state;
  deviceCopy = device;
  sourceDeviceCopy = sourceDevice;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  identifier = [deviceCopy identifier];
  v15 = [(CBStackControllerBTStack *)self _btDeviceWithID:identifier error:error];

  if (!v15)
  {
    v19 = 0;
    goto LABEL_9;
  }

  identifier2 = [sourceDeviceCopy identifier];
  v17 = identifier2;
  if (identifier2)
  {
    WORD2(v23) = 0;
    LODWORD(v23) = 0;
    [identifier2 UTF8String];
    if (!TextToHardwareAddress())
    {
      if (qword_100B50950 != -1)
      {
        sub_10080ED24();
      }

      v18 = sub_100337B04(off_100B50948, v15, &v23, stateCopy, (flagsCopy & 0x10) != 0);
      v19 = 1;
      if (!v18)
      {
        goto LABEL_8;
      }

      v20 = (v18 + 310000);
      if (!v20)
      {
        goto LABEL_8;
      }

      if (error)
      {
        v22 = CBErrorF(v20, "setDeviceStateOnPeerSrc failed");
        goto LABEL_17;
      }

LABEL_18:
      v19 = 0;
      goto LABEL_8;
    }

    if (!error)
    {
      goto LABEL_18;
    }

    v22 = CBErrorF(4294960591, "Bad peer address: '%@'", v17, v23);
  }

  else
  {
    if (!error)
    {
      goto LABEL_18;
    }

    v22 = CBErrorF(4294960591, "No peer address");
  }

LABEL_17:
  v19 = 0;
  *error = v22;
LABEL_8:

LABEL_9:
  return v19;
}

- (BOOL)modifyDevice:(id)device settings:(id)settings error:(id *)error
{
  deviceCopy = device;
  settingsCopy = settings;
  identifier = [deviceCopy identifier];
  if (identifier)
  {
    logPrivateData = self->_logPrivateData;
    internalFlags = [deviceCopy internalFlags];
    if (logPrivateData)
    {
      v13 = 0x20000;
    }

    else
    {
      v13 = 0;
    }

    [deviceCopy setInternalFlags:v13 | internalFlags];
    idsDeviceID = [deviceCopy idsDeviceID];
    if (idsDeviceID)
    {
      idsDeviceID2 = [deviceCopy idsDeviceID];
      v16 = [idsDeviceID2 length];

      if (v16)
      {
        v44 = 0;
        v45 = &v44;
        v46 = 0x3032000000;
        v47 = sub_100042254;
        v48 = sub_1000425BC;
        v49 = 0;
        if (qword_100B508D0 != -1)
        {
          sub_10080ECE8();
        }

        v17 = off_100B508C8;
        idsDeviceID3 = [deviceCopy idsDeviceID];
        v40[0] = _NSConcreteStackBlock;
        v40[1] = 3221225472;
        v40[2] = sub_100158248;
        v40[3] = &unk_100AE25A0;
        v40[4] = self;
        v41 = deviceCopy;
        v42 = settingsCopy;
        v43 = &v44;
        v19 = sub_10078E458(v17, idsDeviceID3, v40);

        if (v19)
        {
          v20 = v45[5];
          if (!v20)
          {
            v21 = 1;
LABEL_12:

LABEL_23:
            _Block_object_dispose(&v44, 8);

            goto LABEL_24;
          }

          if (error)
          {
            v27 = v20;
            goto LABEL_31;
          }
        }

        else if (error)
        {
          v27 = CBErrorF(4294960569, "Cloud Paired Device not found '%@'", identifier);
LABEL_31:
          v21 = 0;
          *error = v27;
          goto LABEL_12;
        }

        v21 = 0;
        goto LABEL_12;
      }
    }

    v22 = [(CBStackControllerBTStack *)self _btDeviceWithID:identifier error:0];
    if (v22)
    {
      v21 = [(CBStackControllerBTStack *)self modifyDevice:deviceCopy btDevice:v22 settings:settingsCopy error:error];
      goto LABEL_24;
    }

    v44 = 0;
    v45 = &v44;
    v46 = 0x3032000000;
    v47 = sub_100042254;
    v48 = sub_1000425BC;
    v49 = 0;
    obj = 0;
    v23 = [(CBStackControllerBTStack *)self _btUUIDWithID:identifier error:&obj];
    objc_storeStrong(&v49, obj);
    if (!v23)
    {
      if (error)
      {
        v28 = v45[5];
        if (v28)
        {
          v21 = 0;
          *error = v28;
          goto LABEL_22;
        }

        v30 = CBErrorF(4294960534, "Bad device UUID: '%@'", identifier);
        *error = v30;
      }

      v21 = 0;
      goto LABEL_22;
    }

    if (qword_100B508D0 != -1)
    {
      sub_10080ECE8();
    }

    v24 = off_100B508C8;
    v31 = _NSConcreteStackBlock;
    v32 = 3221225472;
    v33 = sub_10015829C;
    v34 = &unk_100AE25A0;
    selfCopy = self;
    v36 = deviceCopy;
    v37 = settingsCopy;
    v38 = &v44;
    if (sub_1000C320C(v24, v23, &v31))
    {
      v25 = v45[5];
      if (!v25)
      {
        v21 = 1;
LABEL_21:

LABEL_22:
        goto LABEL_23;
      }

      if (error)
      {
        v29 = v25;
        goto LABEL_41;
      }
    }

    else if (error)
    {
      v29 = CBErrorF(4294960569, "Device not found '%@'", identifier, v31, v32, v33, v34, selfCopy, v36);
LABEL_41:
      v21 = 0;
      *error = v29;
      goto LABEL_21;
    }

    v21 = 0;
    goto LABEL_21;
  }

  if (error)
  {
    CBErrorF(4294960588, "No device ID");
    *error = v21 = 0;
  }

  else
  {
    v21 = 0;
  }

LABEL_24:

  return v21;
}

- (BOOL)modifyDevice:(id)device btDevice:(void *)btDevice settings:(id)settings error:(id *)error
{
  deviceCopy = device;
  settingsCopy = settings;
  v134 = deviceCopy;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  identifier = [deviceCopy identifier];
  if (!identifier)
  {
    if (!error)
    {
      goto LABEL_366;
    }

    v131 = CBErrorF(4294960588, "No device ID");
    goto LABEL_365;
  }

  if (qword_100B508E0 != -1)
  {
    sub_10080EC2C();
  }

  v135 = off_100B508D8;
  aclLinkState = [settingsCopy aclLinkState];
  if (aclLinkState)
  {
    if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
    {
      if (aclLinkState > 3)
      {
        v13 = "?";
      }

      else
      {
        v13 = off_100AE2C20[aclLinkState - 1];
      }

      LogPrintF_safe(&dword_100B511E0, "[CBStackControllerBTStack modifyDevice:btDevice:settings:error:]", 30, "setLinkMode: device %@, %s", identifier, v13);
    }

    sub_1005501A8(btDevice, [settingsCopy aclLinkState], 0);
  }

  aclPriority = [settingsCopy aclPriority];
  v16 = aclPriority;
  if (aclPriority)
  {
    v17 = sub_10000C7D0(aclPriority, v15);
    v18 = (*(*v17 + 3240))(v17);
    if ((v18 & 1) == 0)
    {
      if (!error)
      {
        goto LABEL_366;
      }

      v131 = CBErrorF(4294960561, "ACL priority not supported");
      goto LABEL_365;
    }

    if (dword_100B511E0 > 30)
    {
      goto LABEL_31;
    }

    if (dword_100B511E0 == -1)
    {
      v18 = _LogCategory_Initialize();
      if (!v18)
      {
        goto LABEL_31;
      }
    }

    if (v16 > 0x31u)
    {
      if (v16 == 50)
      {
        v20 = "Medium";
        goto LABEL_30;
      }

      if (v16 == 80)
      {
        v20 = "High";
        goto LABEL_30;
      }
    }

    else
    {
      if (v16 == 1)
      {
        v20 = "Default";
        goto LABEL_30;
      }

      if (v16 == 20)
      {
        v20 = "Low";
LABEL_30:
        v18 = LogPrintF_safe(&dword_100B511E0, "[CBStackControllerBTStack modifyDevice:btDevice:settings:error:]", 30, "aclPriority: device %@, priority %s", identifier, v20);
LABEL_31:
        v21 = sub_10000C7D0(v18, v19);
        v22 = *(btDevice + 66);
        v23 = *(btDevice + 32);
        v24 = sub_1000DEB14(btDevice);
        v25 = (*(*v21 + 56))(v21, (v23 | (v22 << 32)) & 0xFFFFFFFFFFFFLL, v24, 32, v16 == 80, v16 == 80, 1, 1);
        if (!v25)
        {
          goto LABEL_33;
        }

        v26 = (v25 + 310000);
        if (!v26)
        {
          goto LABEL_33;
        }

        if (!error)
        {
          goto LABEL_366;
        }

        v131 = CBErrorF(v26, "aclPriority failed");
LABEL_365:
        v126 = 0;
        *error = v131;
        goto LABEL_328;
      }
    }

    v20 = "?";
    goto LABEL_30;
  }

LABEL_33:
  adaptiveVolumeConfig = [settingsCopy adaptiveVolumeConfig];
  if (adaptiveVolumeConfig)
  {
    if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
    {
      name = [v134 name];
      LogPrintF_safe(&dword_100B511E0, "[CBStackControllerBTStack modifyDevice:btDevice:settings:error:]", 30, "adaptiveVolumeConfig sendControlCommand for %@: device %@, value 0x%04X", name, identifier, adaptiveVolumeConfig);
    }

    if (qword_100B50950 != -1)
    {
      sub_10080ED10();
    }

    v29 = sub_100331844(off_100B50948, btDevice, 38, adaptiveVolumeConfig, 2);
    if (v29)
    {
      v30 = (v29 + 310000);
      if (v30)
      {
        if (!error)
        {
          goto LABEL_366;
        }

        v131 = CBErrorF(v30, "set adaptiveVolumeConfig failed");
        goto LABEL_365;
      }
    }
  }

  allowsAutoRoute = [settingsCopy allowsAutoRoute];
  if (allowsAutoRoute)
  {
    if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
    {
      v32 = "?";
      if (allowsAutoRoute == 1)
      {
        v32 = "Yes";
      }

      if (allowsAutoRoute == 2)
      {
        v32 = "No";
      }

      LogPrintF_safe(&dword_100B511E0, "[CBStackControllerBTStack modifyDevice:btDevice:settings:error:]", 30, "allowsAutoRoute: device %@, allows %s", identifier, v32);
    }

    if (qword_100B50950 != -1)
    {
      sub_10080ED10();
    }

    v33 = sub_10035B9A8(off_100B50948, btDevice, allowsAutoRoute == 1);
    if (v33)
    {
      v34 = (v33 + 310000);
      if (v34)
      {
        if (!error)
        {
          goto LABEL_366;
        }

        v131 = CBErrorF(v34, "setAllowsAutoRoute failed");
        goto LABEL_365;
      }
    }
  }

  audioRouteHidden = [settingsCopy audioRouteHidden];
  if (audioRouteHidden)
  {
    if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
    {
      v36 = "?";
      if (audioRouteHidden == 1)
      {
        v36 = "Yes";
      }

      if (audioRouteHidden == 2)
      {
        v36 = "No";
      }

      LogPrintF_safe(&dword_100B511E0, "[CBStackControllerBTStack modifyDevice:btDevice:settings:error:]", 30, "audioRouteHidden: device %@, hidden %s", identifier, v36);
    }

    if (qword_100B50950 != -1)
    {
      sub_10080ED10();
    }

    v37 = sub_10035BBE0(off_100B50948, btDevice, audioRouteHidden == 1);
    if (v37)
    {
      v38 = (v37 + 310000);
      if (v38)
      {
        if (!error)
        {
          goto LABEL_366;
        }

        v131 = CBErrorF(v38, "setAudioRouteHidden failed");
        goto LABEL_365;
      }
    }
  }

  endCallConfig = [settingsCopy endCallConfig];
  muteControlConfig = [settingsCopy muteControlConfig];
  if (endCallConfig | muteControlConfig)
  {
    v41 = sub_1000E0734(btDevice) & 0xF0FF | ((endCallConfig & 0xF) << 8) | ((muteControlConfig & 0xF) << 16);
    if (qword_100B50950 != -1)
    {
      sub_10080ED10();
    }

    v42 = sub_100331844(off_100B50948, btDevice, 36, v41, 2);
    if (v42)
    {
      v43 = (v42 + 310000);
      if (v43)
      {
        if (!error)
        {
          goto LABEL_366;
        }

        v131 = CBErrorF(v43, "set callMgmtConfig failed");
        goto LABEL_365;
      }
    }
  }

  conversationDetectConfig = [settingsCopy conversationDetectConfig];
  if (conversationDetectConfig)
  {
    if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
    {
      name2 = [v134 name];
      LogPrintF_safe(&dword_100B511E0, "[CBStackControllerBTStack modifyDevice:btDevice:settings:error:]", 30, "conversationDetectConfig sendControlCommand for %@: device %@, value 0x%04X", name2, identifier, conversationDetectConfig);
    }

    if (qword_100B50950 != -1)
    {
      sub_10080ED10();
    }

    v46 = sub_100331844(off_100B50948, btDevice, 40, conversationDetectConfig, 2);
    if (v46)
    {
      v47 = (v46 + 310000);
      if (v47)
      {
        if (!error)
        {
          goto LABEL_366;
        }

        v131 = CBErrorF(v47, "set conversationDetectConfig failed");
        goto LABEL_365;
      }
    }
  }

  clickHoldModeLeft = [settingsCopy clickHoldModeLeft];
  clickHoldModeRight = [settingsCopy clickHoldModeRight];
  if (clickHoldModeLeft | clickHoldModeRight)
  {
    v50 = sub_1000E06EC(btDevice);
    if (clickHoldModeLeft)
    {
      v51 = clickHoldModeLeft;
    }

    else
    {
      v51 = HIBYTE(v50);
    }

    if (!clickHoldModeRight)
    {
      LOBYTE(clickHoldModeRight) = v50;
    }

    if (dword_100B511E0 < 31 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
    {
      if (v51 > 7u)
      {
        v52 = @"?";
      }

      else
      {
        v52 = *(&off_100AE2C38 + v51);
      }

      if (clickHoldModeRight > 7u)
      {
        v53 = @"?";
      }

      else
      {
        v53 = *(&off_100AE2C38 + clickHoldModeRight);
      }

      LogPrintF_safe(&dword_100B511E0, "[CBStackControllerBTStack modifyDevice:btDevice:settings:error:]", 30, "clickHoldMode: device %@, left %@, right %@, value 0x%04X", identifier, v52, v53, clickHoldModeRight | (v51 << 8));
    }

    if (qword_100B50950 != -1)
    {
      sub_10080ED10();
    }

    v54 = sub_100331844(off_100B50948, btDevice, 22, clickHoldModeRight | (v51 << 8), 2);
    if (v54)
    {
      v55 = (v54 + 310000);
      if (v55)
      {
        if (!error)
        {
          goto LABEL_366;
        }

        v131 = CBErrorF(v55, "set clickHoldMode failed");
        goto LABEL_365;
      }
    }
  }

  crownRotationDirection = [settingsCopy crownRotationDirection];
  if (crownRotationDirection)
  {
    if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
    {
      v57 = @"?";
      if (crownRotationDirection == 1)
      {
        v57 = @"BackToFront";
      }

      if (crownRotationDirection == 2)
      {
        v57 = @"FrontToBack";
      }

      v58 = v57;
      LogPrintF_safe(&dword_100B511E0, "[CBStackControllerBTStack modifyDevice:btDevice:settings:error:]", 30, "crownRotationDirection: device %@, %@", identifier, v58);
    }

    if (qword_100B50950 != -1)
    {
      sub_10080ED10();
    }

    v59 = sub_100331844(off_100B50948, btDevice, 28, crownRotationDirection, 2);
    if (v59)
    {
      v60 = (v59 + 310000);
      if (v60)
      {
        if (!error)
        {
          goto LABEL_366;
        }

        v131 = CBErrorF(v60, "set crownRotationDirection failed");
        goto LABEL_365;
      }
    }
  }

  deviceFlagsMask = [settingsCopy deviceFlagsMask];
  deviceFlagsValue = [settingsCopy deviceFlagsValue];
  if ((deviceFlagsMask & 0x400000) != 0)
  {
    v63 = *(btDevice + 1500);
    v64 = *&deviceFlagsValue & 0x400000;
    if (v63 != (*&deviceFlagsValue & 0x400000uLL) >> 22)
    {
      if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
      {
        v65 = "no";
        if (v63)
        {
          v66 = "yes";
        }

        else
        {
          v66 = "no";
        }

        if (v64)
        {
          v65 = "yes";
        }

        LogPrintF_safe(&dword_100B511E0, "[CBStackControllerBTStack modifyDevice:btDevice:settings:error:]", 30, "userRouted: device %@, %s -> %s", identifier, v66, v65);
      }

      sub_10053914C(btDevice, v64 != 0);
    }
  }

  if ((deviceFlagsMask & 0x80000000) != 0)
  {
    if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
    {
      v67 = "yes";
      if (deviceFlagsValue >= 0)
      {
        v67 = "no";
      }

      LogPrintF_safe(&dword_100B511E0, "[CBStackControllerBTStack modifyDevice:btDevice:settings:error:]", 30, "autoAnswerCalls: device %@, %s", identifier, v67);
    }

    if (qword_100B50950 != -1)
    {
      sub_10080ED10();
    }

    v68 = deviceFlagsValue < 0 ? 1 : 2;
    v69 = sub_100331844(off_100B50948, btDevice, 30, v68, 2);
    if (v69)
    {
      v70 = (v69 + 310000);
      if (v70)
      {
        if (!error)
        {
          goto LABEL_366;
        }

        v131 = CBErrorF(v70, "set autoAnswerCalls failed");
        goto LABEL_365;
      }
    }
  }

  v71 = sub_1000E3188(btDevice);
  doubleTapActionLeft = [settingsCopy doubleTapActionLeft];
  doubleTapActionRight = [settingsCopy doubleTapActionRight];
  v74 = doubleTapActionRight;
  v75 = HIBYTE(v71);
  if (doubleTapActionLeft > 2u)
  {
    if (doubleTapActionLeft == 3)
    {
      v76 = 2;
      goto LABEL_156;
    }

    if (doubleTapActionLeft != 4)
    {
      if (doubleTapActionLeft == 5)
      {
        v76 = 4;
        goto LABEL_156;
      }

      goto LABEL_153;
    }

    v76 = 3;
  }

  else
  {
    if (!doubleTapActionLeft)
    {
      v76 = HIBYTE(v71);
      goto LABEL_156;
    }

    if (doubleTapActionLeft != 1)
    {
      if (doubleTapActionLeft == 2)
      {
        v76 = 1;
        goto LABEL_156;
      }

LABEL_153:
      v76 = 0xFFFFLL;
      goto LABEL_156;
    }

    v76 = 0;
  }

LABEL_156:
  v77 = v71;
  v78 = 0xFFFFLL;
  if (doubleTapActionRight > 2u)
  {
    switch(doubleTapActionRight)
    {
      case 3u:
        v78 = 2;
        goto LABEL_169;
      case 4u:
        v78 = 3;
        goto LABEL_169;
      case 5u:
        v78 = 4;
        goto LABEL_169;
    }
  }

  else
  {
    if (!doubleTapActionRight)
    {
      v78 = v77;
      goto LABEL_169;
    }

    if (doubleTapActionRight == 1)
    {
      v78 = 0;
      goto LABEL_169;
    }

    if (doubleTapActionRight == 2)
    {
      v78 = 1;
LABEL_169:
      if (v76 == v75 && v78 == v77)
      {
        goto LABEL_184;
      }
    }
  }

  if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
  {
    if (doubleTapActionLeft > 5)
    {
      v79 = "?";
    }

    else
    {
      v79 = off_100AE2C78[doubleTapActionLeft];
    }

    if (v74 > 5)
    {
      v80 = "?";
    }

    else
    {
      v80 = off_100AE2C78[v74];
    }

    LogPrintF_safe(&dword_100B511E0, "[CBStackControllerBTStack modifyDevice:btDevice:settings:error:]", 30, "setDoubleTapActionEx: device %@, left %d (%s), right %d (%s)", identifier, v76, v79, v78, v80);
  }

  v81 = sub_1005190B8(v135, btDevice, v76, v78);
  if (v81)
  {
    v82 = (v81 + 310000);
    if (v82)
    {
      if (!error)
      {
        goto LABEL_366;
      }

      v131 = CBErrorF(v82, "setDoubleTapActionEx failed");
      goto LABEL_365;
    }
  }

LABEL_184:
  listeningMode = [settingsCopy listeningMode];
  if (listeningMode && listeningMode != sub_1000E3284(btDevice))
  {
    if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
    {
      if (listeningMode > 4)
      {
        v84 = "?";
      }

      else
      {
        v84 = off_100AE2CA8[listeningMode - 1];
      }

      LogPrintF_safe(&dword_100B511E0, "[CBStackControllerBTStack modifyDevice:btDevice:settings:error:]", 30, "setListeningMode: device %@, %s", identifier, v84);
    }

    if (qword_100B50950 != -1)
    {
      sub_10080ED10();
    }

    v85 = sub_100331844(off_100B50948, btDevice, 13, listeningMode, 2);
    if (v85)
    {
      v86 = (v85 + 310000);
      if (v86)
      {
        if (!error)
        {
          goto LABEL_366;
        }

        v131 = CBErrorF(v86, "set setListeningMode failed");
        goto LABEL_365;
      }
    }
  }

  listeningModeConfigs = [settingsCopy listeningModeConfigs];
  if (listeningModeConfigs)
  {
    if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
    {
      v88 = CUPrintFlags32();
      LogPrintF_safe(&dword_100B511E0, "[CBStackControllerBTStack modifyDevice:btDevice:settings:error:]", 30, "setListeningModeConfigs: device %@, %@", identifier, v88);
    }

    if (qword_100B50950 != -1)
    {
      sub_10080ED10();
    }

    v89 = sub_100331844(off_100B50948, btDevice, 26, listeningModeConfigs, 2);
    if (v89)
    {
      v90 = (v89 + 310000);
      if (v90)
      {
        if (!error)
        {
          goto LABEL_366;
        }

        v131 = CBErrorF(v90, "set listeningModeConfigs failed");
        goto LABEL_365;
      }
    }
  }

  microphoneMode = [settingsCopy microphoneMode];
  v92 = microphoneMode;
  if (microphoneMode)
  {
    v93 = microphoneMode == 3 ? 1 : 2 * (microphoneMode == 2);
    if (v93 != sub_1000E3314(btDevice))
    {
      if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
      {
        if (v92 > 3)
        {
          v94 = "?";
        }

        else
        {
          v94 = off_100AE2CC8[v92 - 1];
        }

        LogPrintF_safe(&dword_100B511E0, "[CBStackControllerBTStack modifyDevice:btDevice:settings:error:]", 30, "setMicMode: device %@, %d (%s)", identifier, v93, v94);
      }

      v95 = sub_100518FFC(v135, btDevice, v93);
      if (v95)
      {
        v96 = (v95 + 310000);
        if (v96)
        {
          if (error)
          {
            v131 = CBErrorF(v96, "setMicMode failed");
            goto LABEL_365;
          }

LABEL_366:
          v126 = 0;
          goto LABEL_328;
        }
      }
    }
  }

  name3 = [settingsCopy name];
  if (![name3 length])
  {
    goto LABEL_241;
  }

  sub_1000C23E0(btDevice, __p);
  if (v139 >= 0)
  {
    v98 = __p;
  }

  else
  {
    v98 = __p[0];
  }

  v99 = [NSString stringWithUTF8String:v98];
  if (v139 < 0)
  {
    operator delete(__p[0]);
  }

  v100 = name3;
  v101 = v99;
  v102 = v101;
  if (v100 != v101)
  {
    if ((v100 != 0) != (v101 == 0))
    {
      v103 = [v100 isEqual:v101];

      if (v103)
      {
        goto LABEL_240;
      }
    }

    else
    {
    }

    if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe(&dword_100B511E0, "[CBStackControllerBTStack modifyDevice:btDevice:settings:error:]", 30, "setName: device %@, '%@' -> '%@'", identifier, v102, v100);
    }

    sub_100007E30(__p, [v100 UTF8String]);
    sub_100538D30(btDevice, __p, 1);
    if (v139 < 0)
    {
      operator delete(__p[0]);
    }

    goto LABEL_240;
  }

LABEL_240:
LABEL_241:
  placementMode = [settingsCopy placementMode];
  if (placementMode && (placementMode == 1) != sub_1000E356C(btDevice))
  {
    if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
    {
      v105 = "no";
      if (placementMode == 1)
      {
        v105 = "yes";
      }

      LogPrintF_safe(&dword_100B511E0, "[CBStackControllerBTStack modifyDevice:btDevice:settings:error:]", 30, "enableInEarDetection: device %@, enabled %s", identifier, v105);
    }

    v106 = sub_100519DD4(v135, btDevice, placementMode == 1);
    if (v106)
    {
      v107 = (v106 + 310000);
      if (v107)
      {
        if (error)
        {
          v132 = CBErrorF(v107, "enableInEarDetection failed");
          goto LABEL_369;
        }

        goto LABEL_372;
      }
    }
  }

  relinquishAudioRoute = [settingsCopy relinquishAudioRoute];
  if (relinquishAudioRoute)
  {
    if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
    {
      v109 = "?";
      if (relinquishAudioRoute == 1)
      {
        v109 = "Yes";
      }

      v110 = "false";
      if (relinquishAudioRoute != 1)
      {
        v110 = "true";
      }

      if (relinquishAudioRoute == 2)
      {
        v109 = "No";
      }

      LogPrintF_safe(&dword_100B511E0, "[CBStackControllerBTStack modifyDevice:btDevice:settings:error:]", 30, "relinquishAudioRoute: device %@, hijack %s ownership %s", identifier, v109, v110);
    }

    if (relinquishAudioRoute == 1)
    {
      if (qword_100B50950 != -1)
      {
        sub_10080ED24();
      }

      v111 = sub_100349058(off_100B50948, btDevice, 1);
      if (!v111)
      {
        goto LABEL_276;
      }
    }

    else
    {
      if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe(&dword_100B511E0, "[CBStackControllerBTStack modifyDevice:btDevice:settings:error:]", 30, "relinquishAudioRoute: telling Wx without notifying HAL/MX");
      }

      if (qword_100B50950 != -1)
      {
        sub_10080ED24();
      }

      v112 = off_100B50948;
      sub_1000BE6F8(btDevice + 128, v136);
      v113 = sub_1003347E8(v112, v136, 1);
      v111 = v113;
      if (v137 < 0)
      {
        operator delete(v136[0]);
        if (!v111)
        {
          goto LABEL_276;
        }
      }

      else if (!v113)
      {
        goto LABEL_276;
      }
    }

    if (v111 != -310000)
    {
      if (!error)
      {
        goto LABEL_372;
      }

      v132 = CBErrorF((v111 + 310000), "setHijackAudioRoute failed");
LABEL_369:
      v126 = 0;
      *error = v132;
      goto LABEL_327;
    }
  }

LABEL_276:
  selectiveSpeechListeningConfig = [settingsCopy selectiveSpeechListeningConfig];
  if (selectiveSpeechListeningConfig)
  {
    if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
    {
      name4 = [v134 name];
      LogPrintF_safe(&dword_100B511E0, "[CBStackControllerBTStack modifyDevice:btDevice:settings:error:]", 30, "selectiveSpeechListeningConfig sendControlCommand for %@: device %@, value 0x%04X", name4, identifier, selectiveSpeechListeningConfig);
    }

    if (qword_100B50950 != -1)
    {
      sub_10080ED24();
    }

    v116 = sub_100331844(off_100B50948, btDevice, 41, selectiveSpeechListeningConfig, 2);
    if (v116)
    {
      v117 = (v116 + 310000);
      if (v117)
      {
        if (!error)
        {
          goto LABEL_372;
        }

        v132 = CBErrorF(v117, "set selectiveSpeechListeningConfig failed");
        goto LABEL_369;
      }
    }
  }

  smartRoutingMode = [settingsCopy smartRoutingMode];
  if (smartRoutingMode == 1)
  {
    v119 = 1;
  }

  else
  {
    v119 = 2 * (smartRoutingMode == 2);
  }

  if (v119 && v119 != sub_1000E5DB8(btDevice))
  {
    if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
    {
      if (smartRoutingMode > 2)
      {
        v120 = "?";
      }

      else
      {
        v120 = off_100AE2CE0[smartRoutingMode];
      }

      LogPrintF_safe(&dword_100B511E0, "[CBStackControllerBTStack modifyDevice:btDevice:settings:error:]", 30, "setSmartRouteMode: device %@, %d (%s)", identifier, v119, v120);
    }

    sub_100546280(btDevice, v119);
  }

  spatialAudioAllowed = [settingsCopy spatialAudioAllowed];
  if (spatialAudioAllowed)
  {
    LODWORD(__p[0]) = 0;
    if (qword_100B508F0 != -1)
    {
      sub_10080ECC0();
    }

    sub_10056C0AC(off_100B508E8, btDevice, __p);
    if (SLOBYTE(__p[0]) != spatialAudioAllowed)
    {
      if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
      {
        v122 = "?";
        if (spatialAudioAllowed == 1)
        {
          v122 = "Yes";
        }

        if (spatialAudioAllowed == 2)
        {
          v122 = "No";
        }

        LogPrintF_safe(&dword_100B511E0, "[CBStackControllerBTStack modifyDevice:btDevice:settings:error:]", 30, "setSpatialAudioAllowed: device %@, %s", identifier, v122);
      }

      v123 = sub_100519550(v135, btDevice, spatialAudioAllowed);
      if (v123)
      {
        v124 = (v123 + 310000);
        if (v124)
        {
          if (error)
          {
            *error = CBErrorF(v124, "setSpatialAudioAllowed failed");
          }

          goto LABEL_372;
        }
      }
    }
  }

  spatialAudioMode = [settingsCopy spatialAudioMode];
  if (spatialAudioMode != 255)
  {
    if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
    {
      if (spatialAudioMode > 3)
      {
        v127 = "?";
      }

      else
      {
        v127 = off_100AE2CF8[spatialAudioMode];
      }

      LogPrintF_safe(&dword_100B511E0, "[CBStackControllerBTStack modifyDevice:btDevice:settings:error:]", 30, "setSpatialAudioMode: device %@, %s", identifier, v127);
    }

    v128 = sub_100519AF8(v135, btDevice, @"global", spatialAudioMode, -1);
    v126 = 1;
    if (!v128)
    {
      goto LABEL_327;
    }

    v129 = (v128 + 310000);
    if (!v129)
    {
      goto LABEL_327;
    }

    if (error)
    {
      v132 = CBErrorF(v129, "setSpatialAudioMode failed");
      goto LABEL_369;
    }

LABEL_372:
    v126 = 0;
    goto LABEL_327;
  }

  v126 = 1;
LABEL_327:

LABEL_328:
  return v126;
}

- (BOOL)modifyDevice:(id)device leDevice:(void *)leDevice settings:(id)settings error:(id *)error
{
  deviceCopy = device;
  settingsCopy = settings;
  v51 = settingsCopy;
  name = [settingsCopy name];
  if (!name)
  {
    goto LABEL_24;
  }

  btSessionPtr = self->_btSessionPtr;
  if (btSessionPtr)
  {
    if (*(leDevice + 127) < 0)
    {
      sub_100008904(&__dst, *(leDevice + 13), *(leDevice + 14));
    }

    else
    {
      __dst = *(leDevice + 104);
      v63 = *(leDevice + 15);
    }

    if (v63 >= 0)
    {
      p_dst = &__dst;
    }

    else
    {
      p_dst = __dst;
    }

    v14 = [NSString stringWithUTF8String:p_dst];
    if (SHIBYTE(v63) < 0)
    {
      operator delete(__dst);
    }

    v15 = name;
    v16 = v14;
    v17 = v16;
    if (v15 == v16)
    {
    }

    else
    {
      if (v16)
      {
        v18 = [v15 isEqual:v16];

        if (v18)
        {
          goto LABEL_23;
        }
      }

      else
      {
      }

      v19 = *leDevice;
      v21 = v19;
      if (dword_100B511E0 <= 30)
      {
        if (dword_100B511E0 != -1 || (v19 = _LogCategory_Initialize(), v19))
        {
          uUIDString = [v21 UUIDString];
          LogPrintF_safe(&dword_100B511E0, "[CBStackControllerBTStack modifyDevice:leDevice:settings:error:]", 30, "setName: device %@, '%@' -> '%@'", uUIDString, v17, v15);
        }
      }

      v23 = sub_100007EE8(v19, v20);
      v61[0] = _NSConcreteStackBlock;
      v61[1] = 3221225472;
      v61[2] = sub_10015A22C;
      v61[3] = &unk_100AE25C8;
      v61[4] = v15;
      v61[5] = v21;
      v61[6] = btSessionPtr;
      sub_10000CA94(v23, v61);
      v15 = v21;
    }

LABEL_23:
    settingsCopy = v51;
LABEL_24:
    v24 = [deviceCopy internalFlags] & 0x400;
    if (dword_100B511E0 <= 40 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
    {
      identifier = [deviceCopy identifier];
      v26 = *leDevice;
      controllerInfo = [deviceCopy controllerInfo];
      v28 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [controllerInfo fastLEConnectionInfoVersion]);
      controllerInfo2 = [deviceCopy controllerInfo];
      fastLEConnectionInfoData = [controllerInfo2 fastLEConnectionInfoData];
      controllerInfo3 = [deviceCopy controllerInfo];
      LogPrintF_safe(&dword_100B511E0, "-[CBStackControllerBTStack modifyDevice:leDevice:settings:error:]", 40, "FastLEConnection:modifyDevice changed:%d cloudID:%@ deviceUUID:%@ inDevice.controllerInfo.fastLEConnectionInfoVersion %@ data:%@ allowed:%d", v24 >> 10, identifier, v26, v28, fastLEConnectionInfoData, [controllerInfo3 fastLEConnectionAllowed]);

      settingsCopy = v51;
    }

    v32 = *leDevice;
    if (v24)
    {
      controllerInfo4 = [deviceCopy controllerInfo];
      fastLEConnectionInfoVersion = [controllerInfo4 fastLEConnectionInfoVersion];

      controllerInfo5 = [deviceCopy controllerInfo];
      fastLEConnectionInfoData2 = [controllerInfo5 fastLEConnectionInfoData];

      v39 = sub_100007EE8(v37, v38);
      v56[0] = _NSConcreteStackBlock;
      v56[1] = 3221225472;
      v56[2] = sub_10015A3E4;
      v56[3] = &unk_100AE1600;
      v57 = v32;
      v60 = fastLEConnectionInfoVersion;
      v40 = fastLEConnectionInfoData2;
      v58 = v40;
      v59 = deviceCopy;
      sub_10000CA94(v39, v56);
    }

    model = [deviceCopy model];
    if (model)
    {
      model2 = [deviceCopy model];
      v43 = [model2 length];

      if (v43)
      {
        model3 = [deviceCopy model];
        v46 = sub_100007EE8(model3, v45);
        v53[0] = _NSConcreteStackBlock;
        v53[1] = 3221225472;
        v53[2] = sub_10015A4AC;
        v53[3] = &unk_100AE0B60;
        v54 = v32;
        v55 = model3;
        v47 = model3;
        sub_10000CA94(v46, v53);
      }
    }

    v48 = 1;
    goto LABEL_34;
  }

  if (error)
  {
    v49 = name;
    CBErrorF(4294960534, "No BT session");
    *error = v48 = 0;
    goto LABEL_35;
  }

  v48 = 0;
LABEL_34:
  v49 = name;
LABEL_35:

  return v48;
}

- (void)_modifyDeviceCompleteRequest:(id)request error:(id)error
{
  requestCopy = request;
  errorCopy = error;
  if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
  {
    device = [requestCopy device];
    v8 = CUPrintNSError();
    LogPrintF_safe(&dword_100B511E0, "[CBStackControllerBTStack _modifyDeviceCompleteRequest:error:]", 30, "ModifyDevice CnxPri completed: %@, %@", device, v8);
  }

  timer = [requestCopy timer];
  v10 = requestCopy;
  if (timer)
  {
    dispatch_source_cancel(timer);
    [requestCopy setTimer:0];
    v10 = requestCopy;
  }

  completionHandler = [v10 completionHandler];
  v12 = completionHandler;
  if (completionHandler)
  {
    (*(completionHandler + 16))(completionHandler, errorCopy);
    [requestCopy setCompletionHandler:0];
  }

  [(NSMutableSet *)self->_modifyDeviceRequests removeObject:requestCopy];
}

- (void)performDeviceRequest:(id)request device:(id)device completionHandler:(id)handler
{
  requestCopy = request;
  deviceCopy = device;
  v105 = 0;
  v106 = &v105;
  v107 = 0x3032000000;
  v108 = sub_100042254;
  v109 = sub_1000425BC;
  v110 = 0;
  v102[0] = _NSConcreteStackBlock;
  v102[1] = 3221225472;
  v102[2] = sub_10015B52C;
  v102[3] = &unk_100AE2420;
  v104 = &v105;
  handlerCopy = handler;
  v103 = handlerCopy;
  v79 = objc_retainBlock(v102);
  if (qword_100B50AA0 != -1)
  {
    sub_10009AF30();
  }

  if ((*(off_100B50A98 + 60) & 1) == 0)
  {
    v60 = CBErrorF(4294896144, "Bluetooth off");
    v84 = v106[5];
    v106[5] = v60;

    goto LABEL_99;
  }

  identifier = [deviceCopy identifier];
  if (!identifier)
  {
    v61 = CBErrorF(4294960588, "No device ID");
    v62 = v106[5];
    v106[5] = v61;

    goto LABEL_98;
  }

  v101 = 0;
  v100 = 0;
  v81 = [[NSUUID alloc] initWithUUIDString:identifier];
  if (!v81)
  {
    v8 = identifier;
    [identifier UTF8String];
    if (!TextToHardwareAddress())
    {
      goto LABEL_11;
    }

    v63 = CBErrorF(4294960569, "Device address not found");
LABEL_114:
    v90 = v106[5];
    v106[5] = v63;

    goto LABEL_97;
  }

  if (qword_100B508D0 != -1)
  {
    sub_10080ECE8();
  }

  v7 = sub_100046458(off_100B508C8, v81, 0);
  if (!v7)
  {
    v63 = CBErrorF(4294960569, "Device UUID not found");
    goto LABEL_114;
  }

  LOBYTE(v100) = BYTE5(v7);
  BYTE1(v100) = BYTE4(v7);
  BYTE2(v100) = BYTE3(v7);
  HIBYTE(v100) = BYTE2(v7);
  LOBYTE(v101) = BYTE1(v7);
  HIBYTE(v101) = v7;
LABEL_11:
  if (dword_100B511E0 <= 20 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe(&dword_100B511E0, "[CBStackControllerBTStack performDeviceRequest:device:completionHandler:]", 20, "PerformDeviceRequest start: %@, %@", deviceCopy, requestCopy);
  }

  v89 = objc_alloc_init(CBDeviceResponse);
  requestFlags = [requestCopy requestFlags];
  v91 = requestFlags;
  if ((requestFlags & 0x28) != 0)
  {
    LOBYTE(v111) = 0;
    sub_1000216B4(&v111);
    v11 = sub_100255934(&v100);
    v86 = v11;
    if (!v11)
    {
      v64 = CBErrorF(4294960543, "Device not connected");
      v65 = v106[5];
      v106[5] = v64;

      goto LABEL_121;
    }

    [v89 setConnectionHandle:sub_100255698(v11)];
    requestFlags = sub_10002249C(&v111);
    v88 = 8;
  }

  else
  {
    v86 = 0;
    v88 = 0;
  }

  if ((v91 & 0x40) != 0)
  {
    v116[0] = 0;
    v116[1] = 0;
    if (qword_100B508D0 != -1)
    {
      sub_10080ECE8();
    }

    sub_1000CC438(off_100B508C8, &v100, v116);
    v12 = sub_10004DF60(v116);
    if (!v12)
    {
      v98 = 0u;
      v99 = 0u;
      v96 = 0u;
      v97 = 0u;
      if (qword_100B508C0 != -1)
      {
        sub_10080EDFC();
      }

      v13 = sub_10009DA04(off_100B508B8);
      v14 = [v13 countByEnumeratingWithState:&v96 objects:v115 count:16];
      if (!v14)
      {
LABEL_39:

LABEL_40:
        v20 = CBErrorF(4294960588, "Device not found");
        v21 = v106[5];
        v106[5] = v20;

        goto LABEL_96;
      }

      v15 = *v97;
LABEL_27:
      v16 = 0;
      while (1)
      {
        if (*v97 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(*(&v96 + 1) + 8 * v16);
        v111 = 0;
        v112 = &v111;
        v113 = 0x2020000000;
        v114 = 0;
        if (qword_100B508D0 != -1)
        {
          sub_10080ECE8();
        }

        v95[0] = _NSConcreteStackBlock;
        v95[1] = 3221225472;
        v95[2] = sub_10015B624;
        v95[3] = &unk_100ADF8D8;
        v95[4] = &v111;
        sub_1000C320C(off_100B508C8, v17, v95);
        v18 = v112[3];
        if (v18)
        {
          LOBYTE(v93) = WORD2(v112[3]) >> 8;
          BYTE1(v93) = BYTE4(v18);
          BYTE2(v93) = BYTE3(v18);
          HIBYTE(v93) = BYTE2(v18);
          LOBYTE(v94) = BYTE1(v18);
          HIBYTE(v94) = v18;
          if (v93 == v100 && v94 == v101)
          {
            break;
          }
        }

        _Block_object_dispose(&v111, 8);
        if (v14 == ++v16)
        {
          v14 = [v13 countByEnumeratingWithState:&v96 objects:v115 count:16];
          if (v14)
          {
            goto LABEL_27;
          }

          goto LABEL_39;
        }
      }

      v12 = v17;
      _Block_object_dispose(&v111, 8);

      if (!v12)
      {
        goto LABEL_40;
      }
    }

    uUIDString = [v12 UUIDString];
    [v89 setIdentifier:uUIDString];

    v88 |= 0x40u;
  }

  if (v91)
  {
    LOBYTE(v111) = 0;
    v23 = sub_10000C7D0(requestFlags, v10);
    if ((*(*v23 + 304))(v23, &v100, &v111))
    {
      LOBYTE(v116[0]) = 0;
      sub_1000216B4(v116);
      v30 = sub_100255934(&v100);
      if (v30)
      {
        v31 = sub_10024DE3C(sub_10015B638, v30, v24, v25, v26, v27, v28, v29);
        v86 = v30;
        if (!v31 || (v32 = (v31 + 330000), !v32))
        {
          requestFlags = sub_10002249C(v116);
          goto LABEL_50;
        }

        CBErrorF(v32, "Read RSSI start failed");
      }

      else
      {
        CBErrorF(4294960543, "Device not connected");
      }
      v75 = ;
      v76 = v106[5];
      v106[5] = v75;

      v77 = v116;
LABEL_122:
      sub_10002249C(v77);
      goto LABEL_96;
    }

    requestFlags = [v89 setRssi:v111];
    v88 |= 1u;
  }

LABEL_50:
  if ((v91 & 6) != 0)
  {
    LOBYTE(v111) = 0;
    sub_1000216B4(&v111);
    v86 = sub_100255934(&v100);
    if (!v86)
    {
LABEL_104:
      v66 = CBErrorF(4294960543, "Device not connected");
LABEL_120:
      v78 = v106[5];
      v106[5] = v66;

      goto LABEL_121;
    }

    if ((v91 & 2) != 0)
    {
      v38 = sub_10024E134(sub_10015B70C, v86, 0, v33, v34, v35, v36, v37);
      if (v38)
      {
        v39 = (v38 + 330000);
        if (v39)
        {
          v66 = CBErrorF(v39, "ReadTransmitPowerLevel current failed");
          goto LABEL_120;
        }
      }
    }

    if ((v91 & 4) != 0)
    {
      v40 = sub_10024E134(sub_10015B7E0, v86, 1, v33, v34, v35, v36, v37);
      if (v40)
      {
        v41 = (v40 + 330000);
        if (v41)
        {
          v66 = CBErrorF(v41, "ReadTransmitPowerLevel max failed");
          goto LABEL_120;
        }
      }
    }

    requestFlags = sub_10002249C(&v111);
  }

  if ((v91 & 0x20) == 0)
  {
    goto LABEL_64;
  }

  LODWORD(v112) = 0;
  v111 = 0;
  LOBYTE(v116[0]) = 0;
  v42 = sub_10000C7D0(requestFlags, v10);
  v43 = (*(*v42 + 1984))(v42, [v89 connectionHandle], &v111, v116, 1);
  if (v43)
  {
    v44 = (v43 + 310000);
    if (v44)
    {
      v67 = CBErrorF(v44, "ReadPowerCapState failed");
LABEL_107:
      v68 = v106[5];
      v106[5] = v67;

      goto LABEL_96;
    }
  }

  if (LOBYTE(v116[0]) != 12)
  {
    v67 = CBErrorF(0, "ReadPowerCapState bad length: %d", LOBYTE(v116[0]));
    goto LABEL_107;
  }

  [v89 setCurrentPCAP:SBYTE4(v111)];
  [v89 setCore0TargetPower:SBYTE2(v112)];
  [v89 setCore1TargetPower:SBYTE3(v112)];
  v88 |= 0x20u;
LABEL_64:
  if ((v91 & 0x80) != 0)
  {
    if (qword_100B51308 != -1)
    {
      sub_10080F048();
    }

    v45 = sub_1004B22F4(qword_100B51300, &v100, 5, 1u);
    if (v45)
    {
      v46 = (v45 + 310000);
      if (v46)
      {
        v69 = CBErrorF(v46, "Send LogReport failed");
        v70 = v106[5];
        v106[5] = v69;

        goto LABEL_96;
      }
    }

    v88 |= 0x80u;
  }

  if ((v91 & 0x100) == 0)
  {
LABEL_76:
    if ((v91 & 0x200) == 0)
    {
      goto LABEL_79;
    }

    LOBYTE(v111) = 0;
    sub_1000216B4(&v111);
    v49 = sub_1000E1FE8(&v100);
    if (v49)
    {
      [v89 setSniffInterval:625 * *(v49 + 136)];
      v88 |= 0x200u;
      sub_10002249C(&v111);
LABEL_79:
      if ((v91 & 0x400) == 0)
      {
        v50 = v88;
        goto LABEL_87;
      }

      LOBYTE(v111) = 0;
      sub_1000216B4(&v111);
      v51 = sub_100255934(&v100);
      v86 = v51;
      if (v51)
      {
        v53 = sub_10000C7D0(v51, v52);
        if ((*(*v53 + 2872))(v53))
        {
          if (*(v86 + 291) <= 1u)
          {
            v54 = 1;
          }

          else
          {
            v54 = *(v86 + 291);
          }

          [v89 setBtBand:v54];
          v50 = v88 | 0x400;
          sub_10002249C(&v111);
LABEL_87:
          if ((v91 & ~v50) != 0)
          {
            v55 = objc_alloc_init(CBStackPerformDeviceRequest);
            [(CBStackPerformDeviceRequest *)v55 setDevice:deviceCopy];
            [(CBStackPerformDeviceRequest *)v55 setCompletedFlags:v50];
            [(CBStackPerformDeviceRequest *)v55 setCompletionHandler:handlerCopy];
            [(CBStackPerformDeviceRequest *)v55 setConnectionHandle:v86];
            [(CBStackPerformDeviceRequest *)v55 setRequest:requestCopy];
            [(CBStackPerformDeviceRequest *)v55 setResponse:v89];
            v56 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
            [(CBStackPerformDeviceRequest *)v55 setTimer:v56];
            handler[0] = _NSConcreteStackBlock;
            handler[1] = 3221225472;
            handler[2] = sub_10015B8B4;
            handler[3] = &unk_100AE2550;
            handler[4] = v56;
            handler[5] = v55;
            handler[6] = self;
            dispatch_source_set_event_handler(v56, handler);
            [requestCopy timeoutSeconds];
            CUDispatchTimerSet();
            dispatch_activate(v56);
            performDeviceRequests = self->_performDeviceRequests;
            if (!performDeviceRequests)
            {
              v58 = objc_alloc_init(NSMutableSet);
              v59 = self->_performDeviceRequests;
              self->_performDeviceRequests = v58;

              performDeviceRequests = self->_performDeviceRequests;
            }

            [(NSMutableSet *)performDeviceRequests addObject:v55];
          }

          else
          {
            if (dword_100B511E0 <= 20 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
            {
              LogPrintF_safe(&dword_100B511E0, "[CBStackControllerBTStack performDeviceRequest:device:completionHandler:]", 20, "PerformDeviceRequest completed: %@, %@, %@", deviceCopy, requestCopy, v89);
            }

            (*(handlerCopy + 2))(handlerCopy, v89, 0);
          }

          goto LABEL_96;
        }

        v66 = CBErrorF(4294960561, "HRB is not supported");
        goto LABEL_120;
      }

      goto LABEL_104;
    }

    v73 = CBErrorF(4294960543, "Device not connected");
    v74 = v106[5];
    v106[5] = v73;

LABEL_121:
    v77 = &v111;
    goto LABEL_122;
  }

  if (qword_100B51308 != -1)
  {
    sub_10080F048();
  }

  v47 = sub_1004B22F4(qword_100B51300, &v100, 6, 1u);
  if (!v47 || (v48 = (v47 + 310000), !v48))
  {
    v88 |= 0x100u;
    goto LABEL_76;
  }

  v71 = CBErrorF(v48, "Send LogClear failed");
  v72 = v106[5];
  v106[5] = v71;

LABEL_96:
LABEL_97:

LABEL_98:
LABEL_99:
  (v79[2])(v79);

  _Block_object_dispose(&v105, 8);
}

- (void)_completePerformDeviceRequest:(id)request error:(id)error
{
  requestCopy = request;
  errorCopy = error;
  if (dword_100B511E0 <= 20 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
  {
    device = [requestCopy device];
    request = [requestCopy request];
    v9 = CUPrintNSError();
    LogPrintF_safe(&dword_100B511E0, "[CBStackControllerBTStack _completePerformDeviceRequest:error:]", 20, "PerformDeviceRequest completed: %@, %@, %@", device, request, v9);
  }

  timer = [requestCopy timer];
  v11 = requestCopy;
  if (timer)
  {
    dispatch_source_cancel(timer);
    [requestCopy setTimer:0];
    v11 = requestCopy;
  }

  completionHandler = [v11 completionHandler];
  if (completionHandler)
  {
    if (errorCopy)
    {
      response = 0;
    }

    else
    {
      response = [requestCopy response];
    }

    (completionHandler)[2](completionHandler, response, errorCopy);
    if (!errorCopy)
    {
    }

    [requestCopy setCompletionHandler:0];
  }

  [(NSMutableSet *)self->_performDeviceRequests removeObject:requestCopy];
}

- (void)_readRSSIWithConnectionHandle:(_OI_HCI_CONNECTION *)handle status:(int)status rssi:(char)rssi
{
  HIDWORD(v18) = rssi;
  if (dword_100B511E0 <= 20 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
  {
    sub_10080F070(SBYTE4(v18), self, status);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  allObjects = [(NSMutableSet *)self->_performDeviceRequests allObjects];
  v8 = [allObjects countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = *v21;
    v10 = status + 330000;
    if (!status)
    {
      v10 = -6700;
    }

    LODWORD(v18) = v10;
    if (HIDWORD(v18))
    {
      v11 = status != 0;
    }

    else
    {
      v11 = 1;
    }

    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(allObjects);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        if ([v13 connectionHandle] == handle)
        {
          request = [v13 request];
          requestFlags = [request requestFlags];

          if (requestFlags)
          {
            if (v11)
            {
              response = CBErrorF(v18, "ReadRSSI failed");
              [(CBStackControllerBTStack *)self _completePerformDeviceRequest:v13 error:response];
            }

            else
            {
              response = [v13 response];
              [response setRssi:HIDWORD(v18)];
              v17 = [v13 completedFlags] | 1;
              [v13 setCompletedFlags:v17];
              if ((requestFlags & ~v17) == 0)
              {
                [(CBStackControllerBTStack *)self _completePerformDeviceRequest:v13 error:0];
              }
            }
          }
        }
      }

      v8 = [allObjects countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }
}

- (void)_readTxPowerWithFlags:(unsigned int)flags status:(int)status connectionHandle:(_OI_HCI_CONNECTION *)handle txPowerLevel:(char)level
{
  levelCopy = level;
  v7 = *&status;
  if (dword_100B511E0 <= 20 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
  {
    v8 = CUPrintFlags32();
    LogPrintF_safe(&dword_100B511E0, "[CBStackControllerBTStack _readTxPowerWithFlags:status:connectionHandle:txPowerLevel:]", 20, "ReadTxPower completed: Flags %@, Status %d, TxPower %d, Requests %d", v8, v7, levelCopy, [(NSMutableSet *)self->_performDeviceRequests count]);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  allObjects = [(NSMutableSet *)self->_performDeviceRequests allObjects];
  v10 = [allObjects countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v10)
  {
    v11 = *v23;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(allObjects);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        if ([v13 connectionHandle] == handle)
        {
          request = [v13 request];
          requestFlags = [request requestFlags];

          if ((requestFlags & flags) != 0)
          {
            if (v7)
            {
              v16 = CBErrorF((v7 + 330000), "ReadTransmitPowerLevel failed");
              [(CBStackControllerBTStack *)self _completePerformDeviceRequest:v13 error:v16];
            }

            else
            {
              response = [v13 response];
              v16 = response;
              if ((flags & 2) != 0)
              {
                [response setTxPower:levelCopy];
              }

              if ((flags & 4) != 0)
              {
                [v16 setTxPowerMax:levelCopy];
              }

              v18 = [v13 completedFlags] | flags;
              [v13 setCompletedFlags:v18];
              if ((requestFlags & ~v18) == 0)
              {
                [(CBStackControllerBTStack *)self _completePerformDeviceRequest:v13 error:0];
              }
            }
          }
        }
      }

      v10 = [allObjects countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v10);
  }
}

- (BOOL)sendRelayMessageType:(unsigned __int8)type messageData:(id)data conduitDevice:(id)device destinationDevice:(id)destinationDevice error:(id *)error
{
  typeCopy = type;
  dataCopy = data;
  deviceCopy = device;
  destinationDeviceCopy = destinationDevice;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  identifier = [deviceCopy identifier];
  v16 = [(CBStackControllerBTStack *)self _btDeviceWithID:identifier error:error];

  if (!v16)
  {
    v22 = 0;
    goto LABEL_10;
  }

  identifier2 = [destinationDeviceCopy identifier];
  v18 = identifier2;
  if (identifier2)
  {
    v27 = 0;
    v26 = 0;
    [identifier2 UTF8String];
    if (TextToHardwareAddress())
    {
      if (!error)
      {
        goto LABEL_21;
      }

      v25 = CBErrorF(4294960591, "Bad destination address: '%@'", v18);
    }

    else
    {
      v19 = [dataCopy length];
      v20 = v19;
      if (v19 < 0x3E7)
      {
        if (qword_100B50950 != -1)
        {
          sub_10080ED24();
        }

        v21 = sub_100335068(off_100B50948, v16, &v26, typeCopy, v20, [dataCopy bytes]);
        v22 = 1;
        if (!v21)
        {
          goto LABEL_9;
        }

        v23 = (v21 + 310000);
        if (!v23)
        {
          goto LABEL_9;
        }

        if (error)
        {
          v25 = CBErrorF(v23, "AACP sendRelayMsg failed");
          goto LABEL_20;
        }

LABEL_21:
        v22 = 0;
        goto LABEL_9;
      }

      if (!error)
      {
        goto LABEL_21;
      }

      v25 = CBErrorF(4294960553, "Relay message too big: %zu vs %d", v19, 998);
    }
  }

  else
  {
    if (!error)
    {
      goto LABEL_21;
    }

    v25 = CBErrorF(4294960591, "No destination address");
  }

LABEL_20:
  v22 = 0;
  *error = v25;
LABEL_9:

LABEL_10:
  return v22;
}

- (BOOL)sendSmartRoutingInformation:(id)information device:(id)device error:(id *)error
{
  informationCopy = information;
  deviceCopy = device;
  identifier = [deviceCopy identifier];
  if (!identifier)
  {
    if (!error)
    {
      goto LABEL_20;
    }

    v17 = CBErrorF(4294960588, "No device ID");
LABEL_19:
    LOBYTE(v11) = 0;
    *error = v17;
    goto LABEL_12;
  }

  v11 = [(CBStackControllerBTStack *)self _btDeviceWithID:identifier error:0];
  if (!v11)
  {
    goto LABEL_12;
  }

  v12 = [informationCopy length];
  v13 = v12;
  if (v12 >= 0x3E7)
  {
    if (!error)
    {
      goto LABEL_20;
    }

    v17 = CBErrorF(4294960553, "AACP message too big: %u vs %d", v12, 998);
    goto LABEL_19;
  }

  if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe(&dword_100B511E0, "[CBStackControllerBTStack sendSmartRoutingInformation:device:error:]", 30, "SendSmartRoutingInformation: device %@ with length %hu", identifier, v13);
  }

  if (qword_100B50950 != -1)
  {
    sub_10080ED10();
  }

  v14 = sub_10033F444(off_100B50948, v11, [informationCopy bytes], v13);
  LOBYTE(v11) = 1;
  if (v14)
  {
    v15 = (v14 + 310000);
    if (v15)
    {
      if (error)
      {
        v17 = CBErrorF(v15, "SendSmartRoutingInformation failed");
        goto LABEL_19;
      }

LABEL_20:
      LOBYTE(v11) = 0;
    }
  }

LABEL_12:

  return v11;
}

- (BOOL)sendConversationDetectMessage:(id)message device:(id)device error:(id *)error
{
  messageCopy = message;
  deviceCopy = device;
  identifier = [deviceCopy identifier];
  if (!identifier)
  {
    if (!error)
    {
      goto LABEL_20;
    }

    v17 = CBErrorF(4294960588, "No device ID");
LABEL_19:
    LOBYTE(v11) = 0;
    *error = v17;
    goto LABEL_12;
  }

  v11 = [(CBStackControllerBTStack *)self _btDeviceWithID:identifier error:0];
  if (!v11)
  {
    goto LABEL_12;
  }

  v12 = [messageCopy length];
  v13 = v12;
  if (v12 >= 0x3E7)
  {
    if (!error)
    {
      goto LABEL_20;
    }

    v17 = CBErrorF(4294960553, "AACP message too big: %u vs %d", v12, 998);
    goto LABEL_19;
  }

  if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe(&dword_100B511E0, "[CBStackControllerBTStack sendConversationDetectMessage:device:error:]", 30, "SendConversationDetectMessage: device %@ with length %hu", identifier, v13);
  }

  if (qword_100B50950 != -1)
  {
    sub_10080ED10();
  }

  v14 = sub_10033F61C(off_100B50948, v11, [messageCopy bytes], v13);
  LOBYTE(v11) = 1;
  if (v14)
  {
    v15 = (v14 + 310000);
    if (v15)
    {
      if (error)
      {
        v17 = CBErrorF(v15, "SendConversationDetectMessage failed");
        goto LABEL_19;
      }

LABEL_20:
      LOBYTE(v11) = 0;
    }
  }

LABEL_12:

  return v11;
}

- (BOOL)sendAudioAccessoryConfig:(id)config device:(id)device error:(id *)error
{
  configCopy = config;
  deviceCopy = device;
  identifier = [deviceCopy identifier];
  if (identifier)
  {
    v11 = [(CBStackControllerBTStack *)self _btDeviceWithID:identifier error:0];
    if (v11)
    {
      errorCopy = error;
      v35 = 0;
      v12 = [[AudioAccessoryDeviceConfig alloc] initWithXPCObject:configCopy error:&v35];
      v13 = v35;
      if (v13)
      {
        if (errorCopy)
        {
          v33 = CBErrorF(4294960591, "failed to receive accessory data");
LABEL_158:
          LOBYTE(v11) = 0;
          *errorCopy = v33;
LABEL_150:

          goto LABEL_151;
        }

LABEL_159:
        LOBYTE(v11) = 0;
        goto LABEL_150;
      }

      if ([(AudioAccessoryDeviceConfig *)v12 allowOffListeningMode])
      {
        if ([(AudioAccessoryDeviceConfig *)v12 allowOffListeningMode]== 1)
        {
          v14 = 1;
        }

        else
        {
          v14 = 2;
        }

        if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF_safe(&dword_100B511E0, "[CBStackControllerBTStack sendAudioAccessoryConfig:device:error:]", 30, "SendAudioAccessoryConfig sendControlCommand for device %@ allowOffListeningMode: %u", identifier, v14);
        }

        if (qword_100B50950 != -1)
        {
          sub_10080ED24();
        }

        v15 = sub_100331844(off_100B50948, v11, 52, v14, 2);
      }

      else
      {
        v15 = 0;
      }

      if (_os_feature_enabled_impl() && [(AudioAccessoryDeviceConfig *)v12 allowTemporaryManagedPairing])
      {
        if ([(AudioAccessoryDeviceConfig *)v12 allowTemporaryManagedPairing]== 1)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF_safe(&dword_100B511E0, "[CBStackControllerBTStack sendAudioAccessoryConfig:device:error:]", 30, "SendAudioAccessoryConfig sendControlCommand for device %@ allowTemporaryManagedPairing: %u", identifier, v16);
        }

        if (qword_100B50950 != -1)
        {
          sub_10080ED24();
        }

        v15 = sub_100331844(off_100B50948, v11, 58, v16, 2);
      }

      if ([(AudioAccessoryDeviceConfig *)v12 autoANCStrength])
      {
        v17 = [(AudioAccessoryDeviceConfig *)v12 autoANCStrength]- 1000;
        if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF_safe(&dword_100B511E0, "[CBStackControllerBTStack sendAudioAccessoryConfig:device:error:]", 30, "SendAudioAccessoryConfig sendControlCommand for device %@ autoANCStrength: %u", identifier, v17);
        }

        if (qword_100B50950 != -1)
        {
          sub_10080ED24();
        }

        v15 = sub_100331844(off_100B50948, v11, 46, v17, 2);
      }

      if ([(AudioAccessoryDeviceConfig *)v12 enableSiriMultitone])
      {
        if ([(AudioAccessoryDeviceConfig *)v12 enableSiriMultitone]== 1)
        {
          v18 = 1;
        }

        else
        {
          v18 = 2;
        }

        if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF_safe(&dword_100B511E0, "[CBStackControllerBTStack sendAudioAccessoryConfig:device:error:]", 30, "SendAudioAccessoryConfig sendControlCommand for device %@ enableSiriMultitone: %u", identifier, v18);
        }

        if (qword_100B50950 != -1)
        {
          sub_10080ED24();
        }

        v15 = sub_100331844(off_100B50948, v11, 50, v18, 2);
      }

      if ([(AudioAccessoryDeviceConfig *)v12 enableSleepDetection])
      {
        if ([(AudioAccessoryDeviceConfig *)v12 enableSleepDetection]== 1)
        {
          v19 = 1;
        }

        else
        {
          v19 = 2;
        }

        if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF_safe(&dword_100B511E0, "[CBStackControllerBTStack sendAudioAccessoryConfig:device:error:]", 30, "SendAudioAccessoryConfig sendControlCommand for device %@ enableSleepDetection: %u", identifier, v19);
        }

        if (qword_100B50950 != -1)
        {
          sub_10080ED24();
        }

        v15 = sub_100331844(off_100B50948, v11, 53, v19, 2);
      }

      if ([(AudioAccessoryDeviceConfig *)v12 enableHearingAidGainSwipe])
      {
        if ([(AudioAccessoryDeviceConfig *)v12 enableHearingAidGainSwipe]== 1)
        {
          v20 = 1;
        }

        else
        {
          v20 = 2;
        }

        if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF_safe(&dword_100B511E0, "[CBStackControllerBTStack sendAudioAccessoryConfig:device:error:]", 30, "SendAudioAccessoryConfig sendControlCommand for device %@ enableHearingAidGainSwipe: %u", identifier, v20);
        }

        if (qword_100B50950 != -1)
        {
          sub_10080ED24();
        }

        v15 = sub_100331844(off_100B50948, v11, 47, v20, 2);
      }

      if ([(AudioAccessoryDeviceConfig *)v12 enableHearingAssist])
      {
        if ([(AudioAccessoryDeviceConfig *)v12 enableHearingAssist]== 1)
        {
          v21 = 1;
        }

        else
        {
          v21 = 2;
        }

        if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF_safe(&dword_100B511E0, "[CBStackControllerBTStack sendAudioAccessoryConfig:device:error:]", 30, "SendAudioAccessoryConfig sendControlCommand for device %@ enableHearingAssist: %u", identifier, v21);
        }

        if (qword_100B50950 != -1)
        {
          sub_10080ED24();
        }

        v15 = sub_100331844(off_100B50948, v11, 51, v21, 2);
      }

      if ([(AudioAccessoryDeviceConfig *)v12 hearingAidToggle]&& ![(AudioAccessoryDeviceConfig *)v12 hearingAidEnrolled])
      {
        hearingAidToggle = [(AudioAccessoryDeviceConfig *)v12 hearingAidToggle];
        v25 = sub_10054FBB0(v11);
        if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF_safe(&dword_100B511E0, "[CBStackControllerBTStack sendAudioAccessoryConfig:device:error:]", 30, "SendAudioAccessoryConfig sendControlCommand for device %@ hearingAidToggle: %d", identifier, [(AudioAccessoryDeviceConfig *)v12 hearingAidToggle]);
        }

        v26 = v25 | (hearingAidToggle << 8);
        if (qword_100B50950 == -1)
        {
          goto LABEL_95;
        }
      }

      else
      {
        if ([(AudioAccessoryDeviceConfig *)v12 hearingAidToggle]|| ![(AudioAccessoryDeviceConfig *)v12 hearingAidEnrolled])
        {
LABEL_96:
          if ([(AudioAccessoryDeviceConfig *)v12 enableHearingProtectionPPE])
          {
            if ([(AudioAccessoryDeviceConfig *)v12 enableHearingProtectionPPE]== 1)
            {
              v27 = 1;
            }

            else
            {
              v27 = 2;
            }

            if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
            {
              LogPrintF_safe(&dword_100B511E0, "[CBStackControllerBTStack sendAudioAccessoryConfig:device:error:]", 30, "SendAudioAccessoryConfig sendControlCommand for device %@ enableHearingProtectionPPE: %u", identifier, v27);
            }

            if (qword_100B50950 != -1)
            {
              sub_10080ED24();
            }

            v15 = sub_100331844(off_100B50948, v11, 55, v27, 2);
          }

          if ([(AudioAccessoryDeviceConfig *)v12 enableHeartRateMonitor])
          {
            if ([(AudioAccessoryDeviceConfig *)v12 enableHeartRateMonitor]== 1)
            {
              v28 = 1;
            }

            else
            {
              v28 = 2;
            }

            if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
            {
              LogPrintF_safe(&dword_100B511E0, "[CBStackControllerBTStack sendAudioAccessoryConfig:device:error:]", 30, "SendAudioAccessoryConfig sendControlCommand for device %@ enableHeartRateMonitor: %u", identifier, v28);
            }

            if (qword_100B50950 != -1)
            {
              sub_10080ED24();
            }

            v15 = sub_100331844(off_100B50948, v11, 48, v28, 2);
          }

          if ([(AudioAccessoryDeviceConfig *)v12 enableDynamicEndOfCharge])
          {
            if ([(AudioAccessoryDeviceConfig *)v12 enableDynamicEndOfCharge]== 1)
            {
              v29 = 1;
            }

            else
            {
              v29 = 2;
            }

            if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
            {
              LogPrintF_safe(&dword_100B511E0, "[CBStackControllerBTStack sendAudioAccessoryConfig:device:error:]", 30, "SendAudioAccessoryConfig sendControlCommand for device %@ enableDynamicEndOfCharge: %u", identifier, v29);
            }

            if (qword_100B50950 != -1)
            {
              sub_10080ED24();
            }

            v15 = sub_100331844(off_100B50948, v11, 59, v29, 2);
          }

          if ([(AudioAccessoryDeviceConfig *)v12 hearingAidV2SourceRegionSupport])
          {
            if ([(AudioAccessoryDeviceConfig *)v12 hearingAidV2SourceRegionSupport]== 1)
            {
              v30 = 1;
            }

            else
            {
              v30 = 2;
            }

            if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
            {
              LogPrintF_safe(&dword_100B511E0, "[CBStackControllerBTStack sendAudioAccessoryConfig:device:error:]", 30, "SendAudioAccessoryConfig sendControlCommand for device %@ hearingAidV2SourceRegionSupport: %u", identifier, v30);
            }

            if (qword_100B50950 != -1)
            {
              sub_10080ED24();
            }

            v15 = sub_100331844(off_100B50948, v11, 61, v30, 2);
          }

          if ([(AudioAccessoryDeviceConfig *)v12 rawGesturesConfiguration])
          {
            v31 = [(AudioAccessoryDeviceConfig *)v12 rawGesturesConfiguration]& 0xFFFF7FFF;
            if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
            {
              LogPrintF_safe(&dword_100B511E0, "[CBStackControllerBTStack sendAudioAccessoryConfig:device:error:]", 30, "SendAudioAccessoryConfig sendControlCommand for device %@ rawGesturesConfiguration: %u", identifier, v31);
            }

            if (qword_100B50950 != -1)
            {
              sub_10080ED24();
            }

            v15 = sub_100331844(off_100B50948, v11, 57, v31, 2);
          }

          LOBYTE(v11) = 1;
          if (!v15 || v15 == -310000)
          {
            goto LABEL_150;
          }

          if (errorCopy)
          {
            v33 = CBErrorF((v15 + 310000), "SendAudioAccessoryConfig failed");
            goto LABEL_158;
          }

          goto LABEL_159;
        }

        v22 = sub_10054FC88(v11);
        hearingAidEnrolled = [(AudioAccessoryDeviceConfig *)v12 hearingAidEnrolled];
        if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF_safe(&dword_100B511E0, "[CBStackControllerBTStack sendAudioAccessoryConfig:device:error:]", 30, "SendAudioAccessoryConfig sendControlCommand for device %@ hearingAidEnrolled: %d", identifier, [(AudioAccessoryDeviceConfig *)v12 hearingAidEnrolled]);
        }

        v26 = hearingAidEnrolled | (v22 << 8);
        if (qword_100B50950 == -1)
        {
LABEL_95:
          v15 = sub_100331844(off_100B50948, v11, 44, v26, 2);
          goto LABEL_96;
        }
      }

      sub_10080ED24();
      goto LABEL_95;
    }
  }

  else if (error)
  {
    CBErrorF(4294960588, "No device ID");
    *error = LOBYTE(v11) = 0;
  }

  else
  {
    LOBYTE(v11) = 0;
  }

LABEL_151:

  return v11;
}

- (BOOL)sendAudioAccessoryEventMessage:(id)message eventType:(unsigned __int8)type device:(id)device error:(id *)error
{
  typeCopy = type;
  messageCopy = message;
  deviceCopy = device;
  identifier = [deviceCopy identifier];
  if (!identifier)
  {
    if (!error)
    {
      goto LABEL_58;
    }

    v21 = CBErrorF(4294960588, "No device ID");
    goto LABEL_51;
  }

  v13 = [(CBStackControllerBTStack *)self _btDeviceWithID:identifier error:0];
  if (!v13)
  {
    goto LABEL_48;
  }

  v14 = [messageCopy length];
  v15 = v14;
  if (v14 >= 0x3E7)
  {
    if (!error)
    {
      goto LABEL_58;
    }

    v21 = CBErrorF(4294960553, "AACP message too big: %u vs %d", v14, 998);
    goto LABEL_51;
  }

  if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
  {
    if (typeCopy > 0xD)
    {
      v16 = "?";
    }

    else
    {
      v16 = off_100AE2D18[typeCopy];
    }

    LogPrintF_safe(&dword_100B511E0, "[CBStackControllerBTStack sendAudioAccessoryEventMessage:eventType:device:error:]", 30, "SendAudioAccessoryEventMessage: type %s, device %@ with length %hu", v16, identifier, v15);
  }

  if (typeCopy > 5)
  {
    if (typeCopy > 11)
    {
      if (typeCopy == 12)
      {
        if (qword_100B50950 != -1)
        {
          sub_10080ED10();
        }

        v17 = sub_100340694(off_100B50948, v13, [messageCopy bytes], v15);
        goto LABEL_46;
      }

      if (typeCopy == 13)
      {
        if (qword_100B50950 != -1)
        {
          sub_10080ED10();
        }

        v17 = sub_10034086C(off_100B50948, v13, [messageCopy bytes], v15);
        goto LABEL_46;
      }
    }

    else
    {
      if (typeCopy == 6)
      {
        if (qword_100B50950 != -1)
        {
          sub_10080ED10();
        }

        v17 = sub_1003384F8(off_100B50948, v13);
        goto LABEL_46;
      }

      if (typeCopy == 8)
      {
        if (qword_100B50950 != -1)
        {
          sub_10080ED10();
        }

        v17 = sub_10033F7F4(off_100B50948, v13, [messageCopy bytes], v15);
        goto LABEL_46;
      }
    }

LABEL_49:
    if (!error)
    {
      goto LABEL_58;
    }

    v20 = sub_10015D610(typeCopy);
    v21 = CBErrorF(4294960591, "bad accessory event type: %s", v20);
LABEL_51:
    LOBYTE(v13) = 0;
    *error = v21;
    goto LABEL_48;
  }

  if (typeCopy > 3)
  {
    if (typeCopy == 4)
    {
      if (qword_100B50950 != -1)
      {
        sub_10080ED10();
      }

      v17 = sub_10033FBB0(off_100B50948, v13, v15, [messageCopy bytes]);
    }

    else
    {
      if (qword_100B50950 != -1)
      {
        sub_10080ED10();
      }

      v17 = sub_10033FFAC(off_100B50948, v13, v15, [messageCopy bytes]);
    }
  }

  else
  {
    if (typeCopy != 2)
    {
      if (typeCopy == 3)
      {
        if (qword_100B50950 != -1)
        {
          sub_10080ED10();
        }

        v17 = sub_10033F444(off_100B50948, v13, [messageCopy bytes], v15);
        goto LABEL_46;
      }

      goto LABEL_49;
    }

    if (qword_100B50950 != -1)
    {
      sub_10080ED10();
    }

    v17 = sub_10033F61C(off_100B50948, v13, [messageCopy bytes], v15);
  }

LABEL_46:
  LOBYTE(v13) = 1;
  if (v17)
  {
    v18 = (v17 + 310000);
    if (v18)
    {
      if (error)
      {
        v21 = CBErrorF(v18, "SendAudioAccessoryEventMessage failed");
        goto LABEL_51;
      }

LABEL_58:
      LOBYTE(v13) = 0;
    }
  }

LABEL_48:

  return v13;
}

- (BOOL)updateControllerInfo:(id)info error:(id *)error
{
  infoCopy = info;
  v7 = infoCopy;
  if (infoCopy)
  {
    self->_stackControllerInfoCloudSyncStatus = [infoCopy cloudSyncStatus];
  }

  else if (error)
  {
    *error = CBErrorF(4294960588, "No Controller Info");
  }

  return v7 != 0;
}

- (BOOL)isDeviceConnected:(id)connected error:(id *)error
{
  identifier = [connected identifier];
  if (identifier)
  {
    v7 = [(CBStackControllerBTStack *)self _btUUIDWithID:identifier error:0];
    if (qword_100B508B0 != -1)
    {
      sub_10080EC54();
    }

    v8 = off_100B508A8;
    sub_10004DFB4(v11, v7);
    v9 = sub_100050290(v8, v11);
  }

  else if (error)
  {
    CBErrorF(4294960588, "No device identifier");
    *error = v9 = 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_pairingAgentTearDown
{
  pairingAgentHandle = self->_pairingAgentHandle;
  self->_pairingAgentHandle = 0;
  pairingAgentStarted = self->_pairingAgentStarted;
  self->_pairingAgentStarted = 0;
  pairingClients = self->_pairingClients;
  self->_pairingClients = 0;

  if (pairingAgentHandle)
  {
    if (qword_100B50F88 != -1)
    {
      sub_10080EE38();
    }

    v5 = sub_1006DB834(off_100B50F80, pairingAgentHandle);
    if (v5)
    {
      if (pairingAgentStarted)
      {
        v8 = sub_1006D703C(v5, pairingAgentHandle);
        if (!v8 || v8 == -310000)
        {
          if (dword_100B511E0 <= 30)
          {
            if (dword_100B511E0 != -1 || (v8 = _LogCategory_Initialize(), v8))
            {
              sub_10080F0D0(v8, v9, v10);
            }
          }
        }

        else if (dword_100B511E0 <= 90 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
        {
          v11 = CUPrintErrorCode();
          LogPrintF_safe(&dword_100B511E0, "[CBStackControllerBTStack _pairingAgentTearDown]", 90, "### Stop pairing agent failed: %@", v11);
        }
      }

      if (qword_100B50F88 != -1)
      {
        sub_10080EE38();
      }

      v12 = off_100B50F80;

      sub_1006DB54C(v12, pairingAgentHandle);
    }

    else
    {
      sub_10080F0EC(0, v6, v7);
    }
  }
}

- (BOOL)addPairingClient:(id)client error:(id *)error
{
  clientCopy = client;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  pairingClients = self->_pairingClients;
  if (!pairingClients)
  {
    v8 = objc_alloc_init(NSMutableSet);
    v9 = self->_pairingClients;
    self->_pairingClients = v8;

    pairingClients = self->_pairingClients;
  }

  [(CBPairable *)pairingClients addObject:clientCopy];
  if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe(&dword_100B511E0, "[CBStackControllerBTStack addPairingClient:error:]", 30, "AddPairingClient: %d total", [(CBPairable *)self->_pairingClients count]);
  }

  if (!self->_pairingAgentHandle)
  {
    v25 = 0;
    v26 = &v25;
    v27 = 0x3032000000;
    v28 = sub_100042254;
    v29 = sub_1000425BC;
    v30 = 0;
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10015DCD4;
    v24[3] = &unk_100AE25F0;
    v24[4] = &v25;
    v24[5] = error;
    v11 = objc_retainBlock(v24);
    if (self->_btSessionHandle)
    {
      v23 = 0;
      if (qword_100B50F88 != -1)
      {
        sub_10080EDD4();
      }

      v12 = sub_1006DB230(off_100B50F80, self->_btSessionHandle, &v23, &self->_pairingAgentHandle);
      if (v12 && (v13 = (v12 + 310000), v13))
      {
        v18 = CBErrorF(v13, "Create pairing agent failed");
      }

      else
      {
        if (v23)
        {
          v22[0] = *off_100AE2610;
          v22[1] = *off_100AE2620;
          v22[2] = *off_100AE2630;
          sub_1006D71EC(v23, self->_pairingAgentHandle, v22, self);
          v14 = sub_1006D7488(v23, self->_pairingAgentHandle);
          v16 = v14 == 0;
          v15 = (v14 + 310000);
          v16 = v16 || v15 == 0;
          v10 = v16;
          if (v16)
          {
            self->_pairingAgentStarted = 1;
            if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
            {
              LogPrintF_safe(&dword_100B511E0, "[CBStackControllerBTStack addPairingClient:error:]", 30, "Pairing agent started");
            }
          }

          else
          {
            v20 = CBErrorF(v15, "Start pairing agent failed");
            v21 = v26[5];
            v26[5] = v20;
          }

          goto LABEL_27;
        }

        v18 = CBErrorF(4294960534, "Create pairing agent null");
      }
    }

    else
    {
      v18 = CBErrorF(4294960534, "No BTSession");
    }

    v19 = v26[5];
    v26[5] = v18;

    v10 = 0;
LABEL_27:
    (v11[2])(v11);

    _Block_object_dispose(&v25, 8);
    goto LABEL_28;
  }

  v10 = 1;
LABEL_28:

  return v10;
}

- (void)removePairingClient:(id)client
{
  clientCopy = client;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  [(CBPairable *)self->_pairingClients removeObject:clientCopy];
  v4 = [(CBPairable *)self->_pairingClients count];
  if (dword_100B511E0 <= 30 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe(&dword_100B511E0, "[CBStackControllerBTStack removePairingClient:]", 30, "RemovePairingClient: %d total", v4);
  }

  if (!v4)
  {
    [(CBStackControllerBTStack *)self _pairingAgentTearDown];
  }
}

- (BOOL)pairingContinueWithPairingInfo:(id)info error:(id *)error
{
  infoCopy = info;
  device = [infoCopy device];
  v8 = device;
  if (device)
  {
    identifier = [device identifier];
    v10 = [(CBStackControllerBTStack *)self _btDeviceWithID:identifier error:error];
    if (!v10)
    {
LABEL_20:

      goto LABEL_21;
    }

    if (self->_pairingAgentHandle)
    {
      if (qword_100B50F88 != -1)
      {
        sub_10080EE38();
      }

      v11 = sub_1006DB834(off_100B50F80, self->_pairingAgentHandle);
      if (v11)
      {
        error = [infoCopy error];
        if (!error)
        {
          v18 = [infoCopy pin];
          uTF8String = [v18 UTF8String];

          if (uTF8String)
          {
            sub_1006E5ED8(v22, uTF8String);
            sub_1006D8AA8(v11, v10, v22);
          }
        }

        if ([error code] == -6723)
        {
          v13 = sub_1006D8A50(v11);
          LOBYTE(v10) = 1;
          if (!v13)
          {
            goto LABEL_19;
          }

          v14 = (v13 + 310000);
          if (!v14)
          {
            goto LABEL_19;
          }

          if (error)
          {
            v15 = CBErrorF(v14, "Cancel pairing failed");
LABEL_31:
            LOBYTE(v10) = 0;
            *error = v15;
LABEL_19:

            goto LABEL_20;
          }
        }

        else
        {
          error2 = [infoCopy error];
          v17 = sub_1006D8CE8(v11, v10, error2 != 0);

          LOBYTE(v10) = 1;
          if (!v17 || v17 == -310000)
          {
            goto LABEL_19;
          }

          if (error)
          {
            v15 = CBErrorF((v17 + 310000), "Accept/Reject pairing failed");
            goto LABEL_31;
          }
        }

        LOBYTE(v10) = 0;
        goto LABEL_19;
      }

      if (error)
      {
        v21 = CBErrorF(4294960534, "No pairing agent to continue");
        goto LABEL_28;
      }
    }

    else if (error)
    {
      v21 = CBErrorF(4294960551, "No pairing agent handle to continue");
LABEL_28:
      LOBYTE(v10) = 0;
      *error = v21;
      goto LABEL_20;
    }

    LOBYTE(v10) = 0;
    goto LABEL_20;
  }

  if (error)
  {
    CBErrorF(4294960591, "No pairing device");
    *error = LOBYTE(v10) = 0;
  }

  else
  {
    LOBYTE(v10) = 0;
  }

LABEL_21:

  return v10;
}

- (void)_pairingCompletedWithBTDevice:(void *)device result:(int)result
{
  v4 = *&result;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v6 = self->_pairingClients;
  v7 = [(CBPairable *)v6 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v7)
  {
    v8 = 0;
    v9 = *v27;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v26 + 1) + 8 * i);
        pairingCompletedHandler = [v11 pairingCompletedHandler];
        if (pairingCompletedHandler)
        {
          dispatchQueue = [v11 dispatchQueue];
          dispatch_assert_queue_V2(dispatchQueue);

          if (!v8)
          {
            v14 = [CBDevice alloc];
            v25 = 0;
            v8 = [v14 initWithBTStackDevice:device error:&v25];
            v15 = v25;
            v16 = v15;
            if (!v8)
            {
              if (dword_100B511E0 <= 90 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
              {
                sub_1000E5A58(device, __p);
                v18 = v24;
                v19 = __p[0];
                v20 = CUPrintNSError();
                v21 = v20;
                v22 = __p;
                if (v18 < 0)
                {
                  v22 = v19;
                }

                LogPrintF_safe(&dword_100B511E0, "[CBStackControllerBTStack _pairingCompletedWithBTDevice:result:]", 90, "### Pairing completed failed init device: %s, %@", v22, v20);

                if (v24 < 0)
                {
                  operator delete(__p[0]);
                }
              }

              goto LABEL_25;
            }
          }

          if (v4)
          {
            v17 = CBErrorF(v4, "Pairing error");
          }

          else
          {
            v17 = 0;
          }

          (pairingCompletedHandler)[2](pairingCompletedHandler, v8, v17);
        }
      }

      v7 = [(CBPairable *)v6 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  else
  {
LABEL_25:
    v8 = 0;
  }
}

- (void)_pairingPromptWithBTDevice:(void *)device pairingType:(int64_t)type pinString:(id)string flags:(unsigned int)flags
{
  v6 = *&flags;
  stringCopy = string;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = self->_pairingClients;
  v10 = [(CBPairable *)obj countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v10)
  {
    v11 = 0;
    v12 = *v32;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v32 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v31 + 1) + 8 * i);
        pairingPromptHandler = [v14 pairingPromptHandler];
        if (pairingPromptHandler)
        {
          dispatchQueue = [v14 dispatchQueue];
          dispatch_assert_queue_V2(dispatchQueue);

          if (!v11)
          {
            v17 = [CBDevice alloc];
            v30 = 0;
            v11 = [v17 initWithBTStackDevice:device error:&v30];
            v18 = v30;
            v19 = v18;
            if (!v11)
            {
              if (dword_100B511E0 <= 90 && (dword_100B511E0 != -1 || _LogCategory_Initialize()))
              {
                sub_1000E5A58(device, __p);
                v21 = v29;
                v22 = __p[0];
                v23 = CUPrintNSError();
                v24 = v23;
                v25 = __p;
                if (v21 < 0)
                {
                  v25 = v22;
                }

                LogPrintF_safe(&dword_100B511E0, "[CBStackControllerBTStack _pairingPromptWithBTDevice:pairingType:pinString:flags:]", 90, "### Pairing prompt failed init device: %s, %@", v25, v23);

                if (v29 < 0)
                {
                  operator delete(__p[0]);
                }
              }

              goto LABEL_22;
            }
          }

          v20 = objc_alloc_init(CBPairingInfo);
          [v20 setDevice:v11];
          [v20 setFlags:v6];
          [v20 setPairingType:type];
          [v20 setPin:stringCopy];
          (pairingPromptHandler)[2](pairingPromptHandler, v20);
        }
      }

      v10 = [(CBPairable *)obj countByEnumeratingWithState:&v31 objects:v35 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  else
  {
LABEL_22:
    v11 = 0;
  }
}

@end