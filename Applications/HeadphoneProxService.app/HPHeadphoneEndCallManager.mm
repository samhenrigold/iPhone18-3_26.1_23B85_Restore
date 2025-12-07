@interface HPHeadphoneEndCallManager
- (BOOL)isStatusUnknown;
- (HPHeadphoneEndCallManager)initWithBluetoothAddress:(id)address;
@end

@implementation HPHeadphoneEndCallManager

- (HPHeadphoneEndCallManager)initWithBluetoothAddress:(id)address
{
  v10.receiver = self;
  v10.super_class = HPHeadphoneEndCallManager;
  addressCopy = address;
  v4 = [(HPHeadphoneEndCallManager *)&v10 init];
  v5 = [addressCopy copy];

  bluetoothAddressString = v4->_bluetoothAddressString;
  v4->_bluetoothAddressString = v5;

  if (dword_10011C420 <= 30 && (dword_10011C420 != -1 || _LogCategory_Initialize()))
  {
    sub_1000CF84C();
  }

  v7 = +[BluetoothManager sharedInstance];
  btManager = v4->_btManager;
  v4->_btManager = v7;

  return v4;
}

- (BOOL)isStatusUnknown
{
  [(BluetoothManager *)self->_btManager pairedDevices];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = v18 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        address = [v8 address];
        v10 = [address isEqualToString:self->_bluetoothAddressString];

        if (v10)
        {
          objc_storeStrong(&self->_bluetoothDevice, v8);
          if (dword_10011C420 <= 30 && (dword_10011C420 != -1 || _LogCategory_Initialize()))
          {
            sub_1000CF890();
          }

          goto LABEL_13;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  getCallManagementConfig = [(BluetoothDevice *)self->_bluetoothDevice getCallManagementConfig];
  if ([(BluetoothDevice *)self->_bluetoothDevice getAACPCapabilityBit:80])
  {
    v12 = getCallManagementConfig == 0;
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
    v13 = (getCallManagementConfig & 0xFE00) == 0;
  }

  else
  {
    if (dword_10011C420 <= 30 && (dword_10011C420 != -1 || _LogCategory_Initialize()))
    {
      sub_1000CF8D4();
    }

    v13 = 0;
  }

  return v13;
}

@end