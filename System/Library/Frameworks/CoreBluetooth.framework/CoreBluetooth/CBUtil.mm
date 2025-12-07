@interface CBUtil
+ (BOOL)isAppleVID:(unsigned __int16)d forVIDSrc:(unsigned __int8)src;
+ (BOOL)isDeviceSupported:(id)supported;
+ (BOOL)isDeviceSupportedOnWatchOS:(id)s;
+ (BOOL)isDeviceSupportedOnXROS:(id)s;
+ (BOOL)isDeviceSupportedWithType:(unsigned __int8)type VIDsrc:(unsigned __int8)dsrc VID:(unsigned __int16)d PID:(unsigned __int16)iD;
+ (id)decodeApplePayloadByteStream:(id)stream;
+ (id)encodeApplePayloadByteStream:(id)stream;
+ (id)getBluetoothDebugSettingString:(__CFString *)string InKey:(__CFString *)key;
+ (id)preSSPPairingCodeToString:(int64_t)string;
+ (int64_t)preSSPStringToPairingCode:(id)code;
+ (void)setBluetoothDebugSetting:(__CFString *)setting InKey:(__CFString *)key InValue:(void *)value;
@end

@implementation CBUtil

+ (BOOL)isAppleVID:(unsigned __int16)d forVIDSrc:(unsigned __int8)src
{
  if (src == 2)
  {
    v4 = 1452;
  }

  else
  {
    v4 = 76;
  }

  return v4 == d;
}

+ (BOOL)isDeviceSupportedOnXROS:(id)s
{
  v33 = *MEMORY[0x1E69E9840];
  sCopy = s;
  if (CBLogInitOnce != -1)
  {
    [CBRFCOMMChannel configureChannelPortParams:dataBits:parity:stopBits:];
  }

  v4 = CBLogComponent;
  if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 136315394;
    v26 = "+[CBUtil isDeviceSupportedOnXROS:]";
    v27 = 2112;
    *v28 = sCopy;
    _os_log_impl(&dword_1C0AC1000, v4, OS_LOG_TYPE_DEFAULT, "%s - %@", &v25, 0x16u);
  }

  v5 = [sCopy valueForKey:@"DeviceType"];
  unsignedCharValue = [v5 unsignedCharValue];

  v7 = [sCopy valueForKey:@"VendorIDSrc"];
  unsignedCharValue2 = [v7 unsignedCharValue];

  v9 = [sCopy valueForKey:@"VendorID"];
  unsignedShortValue = [v9 unsignedShortValue];

  v11 = [sCopy valueForKey:@"ProductID"];
  unsignedShortValue2 = [v11 unsignedShortValue];

  if (unsignedCharValue2 >= 3)
  {
    if (CBLogInitOnce == -1)
    {
      v13 = CBLogComponent;
      if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_8;
      }

LABEL_22:
      [(CBUtil *)unsignedCharValue2 isDeviceSupportedOnXROS:v13];
      if ([CBUtil isAppleVID:unsignedShortValue forVIDSrc:unsignedCharValue2])
      {
        goto LABEL_9;
      }

LABEL_23:
      if (unsignedCharValue - 16 < 5 && ((0x1Bu >> (unsignedCharValue - 16)) & 1) != 0)
      {
        goto LABEL_29;
      }

      if (CBLogInitOnce == -1)
      {
        v23 = CBLogComponent;
        if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_29;
        }
      }

      else
      {
        [CBClassicPeer handlePeerUpdated:];
        v23 = CBLogComponent;
        if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_29;
        }
      }

      v25 = 136446210;
      v26 = "+[CBUtil isDeviceSupportedOnXROS:]";
      v20 = "%{public}s - Third party non-audio device - APPROVED";
      v21 = v23;
      v22 = 12;
      goto LABEL_28;
    }

    [CBClassicPeer handlePeerUpdated:];
    v13 = CBLogComponent;
    if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }
  }

LABEL_8:
  if (![CBUtil isAppleVID:unsignedShortValue forVIDSrc:unsignedCharValue2])
  {
    goto LABEL_23;
  }

LABEL_9:
  if (unsignedCharValue > 0x31)
  {
    goto LABEL_18;
  }

  if (((1 << unsignedCharValue) & 0x1B0000) != 0)
  {
    goto LABEL_29;
  }

  if (((1 << unsignedCharValue) & 0x2000023000000) == 0)
  {
LABEL_18:
    if (CBLogInitOnce != -1)
    {
      [CBClassicPeer handlePeerUpdated:];
      v19 = CBLogComponent;
      if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_29;
      }

      goto LABEL_20;
    }

    v19 = CBLogComponent;
    if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
    {
LABEL_20:
      v25 = 136446466;
      v26 = "+[CBUtil isDeviceSupportedOnXROS:]";
      v27 = 1024;
      *v28 = unsignedCharValue;
      v20 = "%{public}s - Apple device type=%d (not HID or audio) - APPROVED";
      v21 = v19;
      v22 = 18;
LABEL_28:
      _os_log_impl(&dword_1C0AC1000, v21, OS_LOG_TYPE_DEFAULT, v20, &v25, v22);
    }

LABEL_29:
    v18 = 1;
    goto LABEL_30;
  }

  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:unsignedShortValue2];
  v15 = [&unk_1F40210E0 containsObject:v14];

  if (CBLogInitOnce == -1)
  {
    v16 = CBLogComponent;
    if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
    {
LABEL_14:
      v17 = "APPROVED";
      v25 = 136447234;
      v26 = "+[CBUtil isDeviceSupportedOnXROS:]";
      *v28 = unsignedCharValue;
      v27 = 1024;
      if (v15)
      {
        v17 = "REJECTED";
      }

      *&v28[4] = 1024;
      *&v28[6] = unsignedShortValue2;
      v29 = 2112;
      v30 = &unk_1F40210E0;
      v31 = 2082;
      v32 = v17;
      _os_log_impl(&dword_1C0AC1000, v16, OS_LOG_TYPE_DEFAULT, "%{public}s - Apple device type=%d (HID) - checking PID 0x%04X against rejected list %@ ->%{public}s", &v25, 0x2Cu);
    }
  }

  else
  {
    [CBClassicPeer handlePeerUpdated:];
    v16 = CBLogComponent;
    if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }
  }

  v18 = v15 ^ 1;
LABEL_30:

  return v18;
}

+ (BOOL)isDeviceSupportedOnWatchOS:(id)s
{
  v27 = *MEMORY[0x1E69E9840];
  sCopy = s;
  if (CBLogInitOnce != -1)
  {
    [CBRFCOMMChannel configureChannelPortParams:dataBits:parity:stopBits:];
  }

  v4 = CBLogComponent;
  if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 136315394;
    v22 = "+[CBUtil isDeviceSupportedOnWatchOS:]";
    v23 = 2112;
    *v24 = sCopy;
    _os_log_impl(&dword_1C0AC1000, v4, OS_LOG_TYPE_DEFAULT, "%s - %@", &v21, 0x16u);
  }

  v5 = [sCopy valueForKey:@"DeviceType"];
  unsignedCharValue = [v5 unsignedCharValue];

  v7 = [sCopy valueForKey:@"VendorIDSrc"];
  unsignedCharValue2 = [v7 unsignedCharValue];

  v9 = [sCopy valueForKey:@"VendorID"];
  unsignedShortValue = [v9 unsignedShortValue];

  v11 = [sCopy valueForKey:@"ProductID"];
  unsignedShortValue2 = [v11 unsignedShortValue];

  if (unsignedCharValue == 24)
  {
    if ([CBUtil isAppleVID:unsignedShortValue forVIDSrc:unsignedCharValue2])
    {
      v15 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:unsignedShortValue2];
      v14 = [&unk_1F40210F8 containsObject:v15];

      if (CBLogInitOnce == -1)
      {
        v16 = CBLogComponent;
        if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_24;
        }
      }

      else
      {
        [CBClassicPeer handlePeerUpdated:];
        v16 = CBLogComponent;
        if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_24;
        }
      }

      v17 = "REJECTED";
      v22 = "+[CBUtil isDeviceSupportedOnWatchOS:]";
      v23 = 1024;
      v21 = 136446978;
      *v24 = unsignedShortValue2;
      if (v14)
      {
        v17 = "APPROVED";
      }

      *&v24[4] = 2112;
      *&v24[6] = &unk_1F40210F8;
      v25 = 2082;
      v26 = v17;
      _os_log_impl(&dword_1C0AC1000, v16, OS_LOG_TYPE_DEFAULT, "%{public}s - Apple keyboard - checking PID 0x%04X against approved list %@ ->%{public}s", &v21, 0x26u);
      goto LABEL_24;
    }

    if (CBLogInitOnce == -1)
    {
      v18 = CBLogComponent;
      if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_23;
      }
    }

    else
    {
      [CBClassicPeer handlePeerUpdated:];
      v18 = CBLogComponent;
      if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_23;
      }
    }

    v21 = 136446210;
    v22 = "+[CBUtil isDeviceSupportedOnWatchOS:]";
    v19 = "%{public}s - Third party keyboard - APPROVED";
    goto LABEL_22;
  }

  if (unsignedCharValue != 25)
  {
    if (CBLogInitOnce != -1)
    {
      [CBClassicPeer handlePeerUpdated:];
      v18 = CBLogComponent;
      if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_23;
      }

      goto LABEL_18;
    }

    v18 = CBLogComponent;
    if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
    {
LABEL_18:
      v21 = 136446210;
      v22 = "+[CBUtil isDeviceSupportedOnWatchOS:]";
      v19 = "%{public}s - Not a mouse or a keyboard - APPROVED";
LABEL_22:
      _os_log_impl(&dword_1C0AC1000, v18, OS_LOG_TYPE_DEFAULT, v19, &v21, 0xCu);
    }

LABEL_23:
    LOBYTE(v14) = 1;
    goto LABEL_24;
  }

  if (CBLogInitOnce != -1)
  {
    [CBClassicPeer handlePeerUpdated:];
    v13 = CBLogComponent;
    LOBYTE(v14) = 0;
    if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_24;
    }

    goto LABEL_9;
  }

  v13 = CBLogComponent;
  LOBYTE(v14) = 0;
  if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
  {
LABEL_9:
    v21 = 136446210;
    v22 = "+[CBUtil isDeviceSupportedOnWatchOS:]";
    _os_log_impl(&dword_1C0AC1000, v13, OS_LOG_TYPE_DEFAULT, "%{public}s - Mouse - REJECTED", &v21, 0xCu);
    LOBYTE(v14) = 0;
  }

LABEL_24:

  return v14;
}

+ (BOOL)isDeviceSupportedWithType:(unsigned __int8)type VIDsrc:(unsigned __int8)dsrc VID:(unsigned __int16)d PID:(unsigned __int16)iD
{
  iDCopy = iD;
  dCopy = d;
  dsrcCopy = dsrc;
  v16[4] = *MEMORY[0x1E69E9840];
  v15[0] = @"DeviceType";
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:type];
  v16[0] = v9;
  v15[1] = @"VendorIDSrc";
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:dsrcCopy];
  v16[1] = v10;
  v15[2] = @"VendorID";
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:dCopy];
  v16[2] = v11;
  v15[3] = @"ProductID";
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:iDCopy];
  v16[3] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:4];
  LOBYTE(iDCopy) = [CBUtil isDeviceSupported:v13];

  return iDCopy;
}

+ (BOOL)isDeviceSupported:(id)supported
{
  v12 = *MEMORY[0x1E69E9840];
  supportedCopy = supported;
  if (CBLogInitOnce != -1)
  {
    [CBRFCOMMChannel configureChannelPortParams:dataBits:parity:stopBits:];
  }

  v4 = CBLogComponent;
  if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136446466;
    v9 = "+[CBUtil isDeviceSupported:]";
    v10 = 2114;
    v11 = supportedCopy;
    _os_log_impl(&dword_1C0AC1000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s - %{public}@", &v8, 0x16u);
  }

  if (+[CBUtil isWatchOS])
  {
    v5 = [CBUtil isDeviceSupportedOnWatchOS:supportedCopy];
  }

  else
  {
    if (!+[CBUtil isXROS])
    {
      v6 = 1;
      goto LABEL_11;
    }

    v5 = [CBUtil isDeviceSupportedOnXROS:supportedCopy];
  }

  v6 = v5;
LABEL_11:

  return v6;
}

+ (int64_t)preSSPStringToPairingCode:(id)code
{
  v13 = *MEMORY[0x1E69E9840];
  codeCopy = code;
  v4 = [codeCopy dataUsingEncoding:4];
  [v4 bytes];
  [v4 length];
  __memcpy_chk();
  if (CBLogInitOnce != -1)
  {
    [CBClassicPeer handlePeerUpdated:];
  }

  v5 = CBLogComponent;
  if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v8 = "+[CBUtil preSSPStringToPairingCode:]";
    v9 = 2114;
    v10 = codeCopy;
    v11 = 2048;
    v12 = 0;
    _os_log_impl(&dword_1C0AC1000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s - str:%{public}@ -> pairingcode:0x%016llX", buf, 0x20u);
  }

  return 0;
}

+ (id)preSSPPairingCodeToString:(int64_t)string
{
  v13 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:&stringCopy];
  if (CBLogInitOnce != -1)
  {
    [CBClassicPeer handlePeerUpdated:];
  }

  v4 = CBLogComponent;
  if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v8 = "+[CBUtil preSSPPairingCodeToString:]";
    v9 = 2048;
    v10 = stringCopy;
    v11 = 2114;
    v12 = v3;
    _os_log_impl(&dword_1C0AC1000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s - pairingcode:0x%016llX -> str:%{public}@", buf, 0x20u);
  }

  return v3;
}

+ (void)setBluetoothDebugSetting:(__CFString *)setting InKey:(__CFString *)key InValue:(void *)value
{
  v8 = CFPreferencesCopyAppValue(setting, @"com.apple.MobileBluetooth.debug");
  if (v8)
  {
    v9 = v8;
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v8);
    CFRelease(v9);
    Mutable = MutableCopy;
    keyCopy2 = key;
    if (value)
    {
LABEL_3:
      CFDictionarySetValue(Mutable, keyCopy2, value);
      goto LABEL_6;
    }
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    MutableCopy = Mutable;
    keyCopy2 = key;
    if (value)
    {
      goto LABEL_3;
    }
  }

  CFDictionaryRemoveValue(Mutable, keyCopy2);
  if (CFDictionaryGetCount(MutableCopy))
  {
LABEL_6:
    CFPreferencesSetAppValue(setting, MutableCopy, @"com.apple.MobileBluetooth.debug");
    if (MutableCopy)
    {

      CFRelease(MutableCopy);
    }

    return;
  }

  CFRelease(MutableCopy);

  CFPreferencesSetAppValue(setting, 0, @"com.apple.MobileBluetooth.debug");
}

+ (id)getBluetoothDebugSettingString:(__CFString *)string InKey:(__CFString *)key
{
  v6 = [MEMORY[0x1E696AEC0] stringWithCString:"" encoding:1];
  v7 = CFPreferencesCopyAppValue(string, @"com.apple.MobileBluetooth.debug");
  if (!v7)
  {
    goto LABEL_14;
  }

  v8 = v7;
  MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v7);
  v10 = MutableCopy;
  if (key)
  {
    Value = CFDictionaryGetValue(MutableCopy, key);
    if (Value)
    {
      v12 = Value;
      v13 = CFGetTypeID(Value);
      if (v13 == CFStringGetTypeID())
      {
        v14 = CFRetain(v12);
LABEL_10:
        v18 = v14;

        v6 = v18;
        goto LABEL_11;
      }

      v15 = CFGetTypeID(v12);
      if (v15 == CFBooleanGetTypeID())
      {
        v16 = CFBooleanGetValue(v12);
        v17 = @"true";
        if (!v16)
        {
          v17 = @"false";
        }

        v14 = v17;
        goto LABEL_10;
      }
    }
  }

LABEL_11:
  if (v10)
  {
    CFRelease(v10);
  }

  CFRelease(v8);
LABEL_14:

  return v6;
}

+ (id)decodeApplePayloadByteStream:(id)stream
{
  streamCopy = stream;
  v4 = objc_opt_new();
  bytes = [streamCopy bytes];
  if ([streamCopy length] < 3)
  {
LABEL_8:
    v11 = v4;
    goto LABEL_19;
  }

  v6 = 2;
  v7 = 2;
  while (1)
  {
    v8 = bytes + v6;
    if (*(bytes + v6) != 100)
    {
      goto LABEL_3;
    }

    if ([streamCopy length] - 1 <= v6)
    {
      break;
    }

    v9 = *(v8 + 1);
    if (!*(v8 + 1))
    {
      if (CBLogInitOnce != -1)
      {
        [CBRFCOMMChannel configureChannelPortParams:dataBits:parity:stopBits:];
      }

      v12 = CBLogComponent;
      if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v13 = buf;
        goto LABEL_17;
      }

      goto LABEL_18;
    }

    v10 = [MEMORY[0x1E695DEF0] dataWithBytes:v8 + 2 length:*(v8 + 1)];
    [v4 setObject:v10 forKeyedSubscript:&unk_1F4020990];

    v7 += v9;
LABEL_3:
    v6 = ++v7;
    if ([streamCopy length] <= v7)
    {
      goto LABEL_8;
    }
  }

  if (CBLogInitOnce != -1)
  {
    [CBRFCOMMChannel configureChannelPortParams:dataBits:parity:stopBits:];
  }

  v12 = CBLogComponent;
  if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 0;
    v13 = &v15;
LABEL_17:
    _os_log_impl(&dword_1C0AC1000, v12, OS_LOG_TYPE_DEFAULT, "decodeApplePayloadByteStream failed to decode payload", v13, 2u);
  }

LABEL_18:
  v11 = 0;
LABEL_19:

  return v11;
}

+ (id)encodeApplePayloadByteStream:(id)stream
{
  v22 = *MEMORY[0x1E69E9840];
  streamCopy = stream;
  v20 = 76;
  v4 = [MEMORY[0x1E695DF88] dataWithBytes:&v20 length:2];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = streamCopy;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 == v8)
        {
          v10 = *(*(&v16 + 1) + 8 * i);
          if ([v10 integerValue] != 100)
          {
            continue;
          }
        }

        else
        {
          objc_enumerationMutation(v5);
          v10 = *(*(&v16 + 1) + 8 * i);
          if ([v10 integerValue] != 100)
          {
            continue;
          }
        }

        v11 = [v5 objectForKeyedSubscript:v10];
        v12 = v11;
        if (v11 && [v11 length])
        {
          v15 = 100;
          v14 = [v12 length];
          [v4 appendBytes:&v15 length:1];
          [v4 appendBytes:&v14 length:1];
          [v4 appendData:v12];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v7);
  }

  return v4;
}

+ (void)isDeviceSupportedOnXROS:(int)a1 .cold.3(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_1C0AC1000, a2, OS_LOG_TYPE_ERROR, "API MISUSE: CBUtil isDeviceSupported - invalid value provided for vendorIdSrc:%d (assuming CBVendorIDSourceBluetooth)", v2, 8u);
}

@end