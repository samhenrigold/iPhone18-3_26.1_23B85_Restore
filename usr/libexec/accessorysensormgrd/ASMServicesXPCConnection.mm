@interface ASMServicesXPCConnection
- (BOOL)_entitledAndReturnError:(id *)error;
- (BOOL)_entitledForPrivateSPIAndReturnError:(id *)error;
- (BOOL)_shouldSendXPCMessage;
- (void)modify:(id)modify peripheralConfiguration:(id)configuration identifier:(id)identifier completion:(id)completion;
- (void)write:(id)write withData:(id)data characteristic:(id)characteristic identifier:(id)identifier completion:(id)completion;
- (void)xpcConnectionInterrupted;
- (void)xpcConnectionInvalidated;
@end

@implementation ASMServicesXPCConnection

- (BOOL)_entitledAndReturnError:(id *)error
{
  if (self->_entitled)
  {
    return 1;
  }

  p_xpcCnx = &self->_xpcCnx;
  v7 = [(NSXPCConnection *)self->_xpcCnx cuValueForEntitlementNoCache:@"com.apple.AccessorySensorManager"];
  v8 = [v7 isEqual:&__kCFBooleanTrue];

  if (v8)
  {
    result = 1;
    self->_entitled = 1;
    return result;
  }

  if (dword_10001A478 <= 90 && (dword_10001A478 != -1 || _LogCategory_Initialize()))
  {
    sub_1000097F8(p_xpcCnx);
    if (error)
    {
      goto LABEL_9;
    }
  }

  else if (error)
  {
LABEL_9:
    v9 = ASMErrorF(4294896128, "Missing entitlement '%@'", @"com.apple.AccessorySensorManager");
    v10 = v9;
    result = 0;
    *error = v9;
    return result;
  }

  return 0;
}

- (BOOL)_entitledForPrivateSPIAndReturnError:(id *)error
{
  if (self->_entitledForPrivateSPI)
  {
    return 1;
  }

  p_xpcCnx = &self->_xpcCnx;
  v7 = [(NSXPCConnection *)self->_xpcCnx cuValueForEntitlementNoCache:@"com.apple.private.AccessorySensorManager"];
  v8 = [v7 isEqual:&__kCFBooleanTrue];

  if (v8)
  {
    result = 1;
    self->_entitledForPrivateSPI = 1;
    return result;
  }

  if (dword_10001A478 <= 90 && (dword_10001A478 != -1 || _LogCategory_Initialize()))
  {
    sub_100009848(p_xpcCnx);
    if (error)
    {
      goto LABEL_9;
    }
  }

  else if (error)
  {
LABEL_9:
    v9 = ASMErrorF(4294896128, "Missing entitlement for private SPI '%@'", @"com.apple.private.AccessorySensorManager");
    v10 = v9;
    result = 0;
    *error = v9;
    return result;
  }

  return 0;
}

- (void)xpcConnectionInvalidated
{
  if (dword_10001A478 <= 30)
  {
    if (dword_10001A478 != -1 || (self = _LogCategory_Initialize(), self))
    {
      sub_100009898(self, a2, v2);
    }
  }
}

- (void)xpcConnectionInterrupted
{
  if (dword_10001A478 <= 30)
  {
    if (dword_10001A478 != -1 || (self = _LogCategory_Initialize(), self))
    {
      sub_1000098B4(self, a2, v2);
    }
  }
}

- (void)modify:(id)modify peripheralConfiguration:(id)configuration identifier:(id)identifier completion:(id)completion
{
  modifyCopy = modify;
  configurationCopy = configuration;
  identifierCopy = identifier;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_100007B64;
  v25 = sub_100007B74;
  v26 = 0;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100007B7C;
  v18[3] = &unk_100014728;
  v20 = &v21;
  completionCopy = completion;
  v19 = completionCopy;
  v14 = objc_retainBlock(v18);
  v15 = (v22 + 5);
  obj = v22[5];
  LOBYTE(self) = [(ASMServicesXPCConnection *)self _entitledAndReturnError:&obj];
  objc_storeStrong(v15, obj);
  if (self)
  {
    if (dword_10001A478 <= 30 && (dword_10001A478 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_10001A478, "[ASMServicesXPCConnection modify:peripheralConfiguration:identifier:completion:]", 30, "modifyPeripheralConfiguration: %@, identifier: %@", modifyCopy, identifierCopy);
    }

    v16 = +[ASMPeripheralControl sharedInstance];
    [v16 modifyPeripheralConfiguration:configurationCopy identifier:identifierCopy completion:completionCopy];
  }

  (v14[2])(v14);

  _Block_object_dispose(&v21, 8);
}

- (void)write:(id)write withData:(id)data characteristic:(id)characteristic identifier:(id)identifier completion:(id)completion
{
  writeCopy = write;
  dataCopy = data;
  characteristicCopy = characteristic;
  identifierCopy = identifier;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_100007B64;
  v28 = sub_100007B74;
  v29 = 0;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100007E88;
  v21[3] = &unk_100014728;
  v23 = &v24;
  completionCopy = completion;
  v22 = completionCopy;
  v17 = objc_retainBlock(v21);
  v18 = (v25 + 5);
  obj = v25[5];
  LOBYTE(self) = [(ASMServicesXPCConnection *)self _entitledAndReturnError:&obj];
  objc_storeStrong(v18, obj);
  if (self)
  {
    if (dword_10001A478 <= 30 && (dword_10001A478 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_10001A478, "[ASMServicesXPCConnection write:withData:characteristic:identifier:completion:]", 30, "writeWithData: %@, identifier: %@", writeCopy, identifierCopy);
    }

    v19 = +[ASMPeripheralControl sharedInstance];
    [v19 writeWithData:dataCopy characteristic:characteristicCopy identifier:identifierCopy completion:completionCopy];
  }

  (v17[2])(v17);

  _Block_object_dispose(&v24, 8);
}

- (BOOL)_shouldSendXPCMessage
{
  p_xpcMessageCounter = &self->_xpcMessageCounter;
  xpcMessageCounter = self->_xpcMessageCounter;
  if (xpcMessageCounter == -1)
  {
    return 0;
  }

  *p_xpcMessageCounter = xpcMessageCounter + 1;
  if (xpcMessageCounter > 0xC7)
  {
    return 0;
  }

  if (xpcMessageCounter == 99)
  {
    xpcCnx = self->_xpcCnx;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100008070;
    v8[3] = &unk_1000143A0;
    v8[4] = self;
    [(NSXPCConnection *)xpcCnx scheduleSendBarrierBlock:v8];
  }

  else if (xpcMessageCounter == 199)
  {
    if (dword_10001A478 <= 30 && (dword_10001A478 != -1 || _LogCategory_Initialize()))
    {
      sub_1000098D0(self, p_xpcMessageCounter);
    }

    remoteObjectProxy = [(NSXPCConnection *)self->_xpcCnx remoteObjectProxy];
    [remoteObjectProxy asmServicesRequireReset];

    return 0;
  }

  return 1;
}

@end