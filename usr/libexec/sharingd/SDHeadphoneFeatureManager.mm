@interface SDHeadphoneFeatureManager
- (BOOL)isProxCardSupportedByProductID:(int)d;
- (BOOL)shouldShowProxCardForFeature:(int)feature;
- (SDHeadphoneFeatureManager)initWithBluetoothAddress:(id)address productID:(unsigned int)d;
- (id)getFeatureName:(int)name;
@end

@implementation SDHeadphoneFeatureManager

- (SDHeadphoneFeatureManager)initWithBluetoothAddress:(id)address productID:(unsigned int)d
{
  addressCopy = address;
  v25.receiver = self;
  v25.super_class = SDHeadphoneFeatureManager;
  v7 = [(SDHeadphoneFeatureManager *)&v25 init];
  v8 = [addressCopy copy];
  bluetoothAddressString = v7->_bluetoothAddressString;
  v7->_bluetoothAddressString = v8;

  v7->_productID = d;
  if (dword_100970DC0 <= 30 && (dword_100970DC0 != -1 || _LogCategory_Initialize()))
  {
    sub_100123460(&v7->_bluetoothAddressString);
  }

  v10 = +[BluetoothManager sharedInstance];
  btManager = v7->_btManager;
  v7->_btManager = v10;

  [(BluetoothManager *)v7->_btManager pairedDevices];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v12 = v24 = 0u;
  v13 = [v12 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v22;
    while (2)
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v21 + 1) + 8 * i);
        address = [v17 address];
        v19 = [address isEqualToString:v7->_bluetoothAddressString];

        if (v19)
        {
          objc_storeStrong(&v7->_bluetoothDevice, v17);
          if (dword_100970DC0 <= 30 && (dword_100970DC0 != -1 || _LogCategory_Initialize()))
          {
            sub_1001234A4(&v7->_bluetoothDevice);
          }

          goto LABEL_16;
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v21 objects:v26 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

LABEL_16:

  return v7;
}

- (BOOL)shouldShowProxCardForFeature:(int)feature
{
  v3 = *&feature;
  if (!feature)
  {
    v5 = 1;
    goto LABEL_5;
  }

  if (feature == 1)
  {
    v5 = 2;
LABEL_5:
    v6 = [(BluetoothDevice *)self->_bluetoothDevice isProxCardShowedForFeature:v5];
    v7 = [(BluetoothDevice *)self->_bluetoothDevice isProxCardSupportedForFeature:v5];
    v8 = [(SDHeadphoneFeatureManager *)self isProxCardSupportedByProductID:v3];
    v9 = (v6 ^ 1) & v7 & v8;
    if (dword_100970DC0 <= 115)
    {
      v10 = v8;
      if (dword_100970DC0 != -1 || _LogCategory_Initialize())
      {
        v11 = [(SDHeadphoneFeatureManager *)self getFeatureName:v3];
        v12 = @"NO";
        if (v9)
        {
          v13 = @"YES";
        }

        else
        {
          v13 = @"NO";
        }

        if (v6)
        {
          v14 = @"YES";
        }

        else
        {
          v14 = @"NO";
        }

        if (v7)
        {
          v15 = @"YES";
        }

        else
        {
          v15 = @"NO";
        }

        if (v10)
        {
          v12 = @"YES";
        }

        LogPrintF(&dword_100970DC0, "[SDHeadphoneFeatureManager shouldShowProxCardForFeature:]", 115, "Should show Prox Card for %@ -- should prompt: %@, isProxCardShowed: %@, isProxCardSupportedByDevice: %@, isProxCardSupportedByProductID: %@, inDevice: %@", v11, v13, v14, v15, v12, self->_bluetoothAddressString);
      }
    }

    return v9;
  }

  if (dword_100970DC0 <= 115 && (dword_100970DC0 != -1 || _LogCategory_Initialize()))
  {
    sub_1001234E8(v3);
  }

  LOBYTE(v9) = 0;
  return v9;
}

- (BOOL)isProxCardSupportedByProductID:(int)d
{
  if (d == 1)
  {
    v3 = [[SFHeadphoneProduct alloc] initWithProductID:self->_productID];
    supportsAdaptiveControlsProx = [v3 supportsAdaptiveControlsProx];
  }

  else
  {
    if (d)
    {
      return 0;
    }

    v3 = [[SFHeadphoneProduct alloc] initWithProductID:self->_productID];
    supportsAdaptiveControlsProx = [v3 supportsMuteCallProx];
  }

  v5 = supportsAdaptiveControlsProx;

  return v5;
}

- (id)getFeatureName:(int)name
{
  v3 = @"Unknown";
  if (name == 1)
  {
    v3 = @"Adaptive Controls";
  }

  if (name)
  {
    return v3;
  }

  else
  {
    return @"Mute Call";
  }
}

@end