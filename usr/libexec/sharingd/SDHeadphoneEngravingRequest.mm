@interface SDHeadphoneEngravingRequest
- (SDHeadphoneEngravingRequest)initWithBluetoothAddress:(id)address;
- (void)handleEngravingData:(id)data;
- (void)requestEngravingInfo;
- (void)start;
@end

@implementation SDHeadphoneEngravingRequest

- (SDHeadphoneEngravingRequest)initWithBluetoothAddress:(id)address
{
  v10.receiver = self;
  v10.super_class = SDHeadphoneEngravingRequest;
  addressCopy = address;
  v4 = [(SDHeadphoneEngravingRequest *)&v10 init];
  v5 = [addressCopy copy];

  bluetoothAddressString = v4->_bluetoothAddressString;
  v4->_bluetoothAddressString = v5;

  v7 = SFMainQueue();
  dispatchQueue = v4->_dispatchQueue;
  v4->_dispatchQueue = v7;

  return v4;
}

- (void)start
{
  if (dword_100970B50 <= 30 && (dword_100970B50 != -1 || _LogCategory_Initialize()))
  {
    sub_100106CC8(self);
  }

  selfCopy = self;
  if (BTSessionAttachWithQueue())
  {
    CFRelease(selfCopy);
  }

  BTAccessoryManagerGetDefault();
  v4 = BTAccessoryManagerRegisterCustomMessageClient();
  if (v4)
  {
    if (dword_100970B50 <= 90)
    {
      v5 = v4;
      if (dword_100970B50 != -1 || _LogCategory_Initialize())
      {
        sub_100106D0C(v5);
      }
    }
  }
}

- (void)requestEngravingInfo
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  [(NSString *)self->_bluetoothAddressString UTF8String];
  BTDeviceAddressFromString();
  v3 = BTDeviceFromAddress();
  if (v3)
  {
    if (dword_100970B50 <= 90)
    {
      v4 = v3;
      if (dword_100970B50 != -1 || _LogCategory_Initialize())
      {
        sub_100106E6C(v4);
      }
    }

LABEL_18:
    [(SDHeadphoneEngravingRequest *)self handleEngravingData:0];
    return;
  }

  Default = BTAccessoryManagerGetDefault();
  if (Default)
  {
    if (dword_100970B50 <= 90)
    {
      v6 = Default;
      if (dword_100970B50 != -1 || _LogCategory_Initialize())
      {
        sub_100106EAC(v6);
      }
    }

    goto LABEL_18;
  }

  if (dword_100970B50 <= 40 && (dword_100970B50 != -1 || _LogCategory_Initialize()))
  {
    sub_100106EEC();
  }

  v7 = BTAccessoryManagerSendCustomMessage();
  if (v7)
  {
    if (dword_100970B50 <= 90)
    {
      v8 = v7;
      if (dword_100970B50 != -1 || _LogCategory_Initialize())
      {
        sub_100106F20(v8);
      }
    }

    goto LABEL_18;
  }
}

- (void)handleEngravingData:(id)data
{
  dataCopy = data;
  completion = [(SDHeadphoneEngravingRequest *)self completion];
  (completion)[2](completion, dataCopy);

  [(SDHeadphoneEngravingRequest *)self cancel];
}

@end