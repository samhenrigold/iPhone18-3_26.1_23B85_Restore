@interface HPSProductUtils
+ (BOOL)isAirPods:(id)pods;
+ (BOOL)isAppleHeadphone:(id)headphone;
+ (BOOL)isBeatsNonWx:(id)wx;
+ (BOOL)isFeatureSupported:(int)supported byDevice:(id)device;
+ (BOOL)isFeatureSupported:(int)supported byProductId:(unsigned int)id;
+ (BOOL)isRealityDevice;
+ (id)getProductIDString:(unsigned int)string;
+ (id)getProductSpecificString:(unsigned int)string descriptionKey:(id)key;
@end

@implementation HPSProductUtils

+ (id)getProductSpecificString:(unsigned int)string descriptionKey:(id)key
{
  v20 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v6 = keyCopy;
  if (string <= 8214)
  {
    if (string > 8210)
    {
      if (string == 8211)
      {
        v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v8 = v7;
        v9 = @"DeviceConfig-B688";
        goto LABEL_30;
      }

      if (string == 8212)
      {
        goto LABEL_24;
      }

      if (string != 8214)
      {
        goto LABEL_36;
      }

      v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v8 = v7;
      v9 = @"DeviceConfig-B607";
    }

    else
    {
      if (string == 8202)
      {
LABEL_23:
        v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v8 = v7;
        v9 = @"DeviceConfig-b515";
        goto LABEL_30;
      }

      if (string == 8209)
      {
        v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v8 = v7;
        v9 = @"DeviceConfig-B507";
        goto LABEL_30;
      }

      if (string != 8210)
      {
        goto LABEL_36;
      }

      v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v8 = v7;
      v9 = @"DeviceConfig-B494";
    }

LABEL_30:
    v10 = [v7 localizedStringForKey:v6 value:&stru_28634F910 table:v9];

    goto LABEL_31;
  }

  if (string <= 8222)
  {
    if (string == 8215)
    {
      v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v8 = v7;
      v9 = @"DeviceConfig-B453";
      goto LABEL_30;
    }

    if (string == 8218)
    {
      v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v8 = v7;
      v9 = @"DeviceConfig-B487";
      goto LABEL_30;
    }

    if (string != 8221)
    {
      goto LABEL_36;
    }

    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = v7;
    v9 = @"DeviceConfig-B498-v2";
    goto LABEL_30;
  }

  if (string <= 8229)
  {
    if (string != 8223)
    {
      if (string != 8228)
      {
        goto LABEL_36;
      }

LABEL_24:
      v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v8 = v7;
      v9 = @"DeviceConfig-B698";
      goto LABEL_30;
    }

    goto LABEL_23;
  }

  if (string == 8230)
  {
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = v7;
    v9 = @"DeviceConfig-B463";
    goto LABEL_30;
  }

  if (string == 8239)
  {
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = v7;
    v9 = @"DeviceConfig-B494b";
    goto LABEL_30;
  }

LABEL_36:
  v14 = sharedBluetoothSettingsLogComponent(keyCopy);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    [(HPSProductUtils *)v6 getProductSpecificString:string descriptionKey:v14];
  }

  v10 = &stru_28634F910;
LABEL_31:
  v12 = sharedBluetoothSettingsLogComponent(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v15[0] = 67109634;
    v15[1] = string;
    v16 = 2112;
    v17 = v6;
    v18 = 2112;
    v19 = v10;
    _os_log_impl(&dword_25126C000, v12, OS_LOG_TYPE_DEFAULT, "HPSProductUtils: getProductSpecificString called with pid %d and descKey %@ value %@", v15, 0x1Cu);
  }

  return v10;
}

+ (BOOL)isAppleHeadphone:(id)headphone
{
  headphoneCopy = headphone;
  v4 = headphoneCopy;
  if (headphoneCopy)
  {
    v5 = ([headphoneCopy isAppleAudioDevice] & 1) != 0 || objc_msgSend(v4, "productId") == 8209;
    if ([v4 productId] == 8214)
    {
      v5 = 1;
    }
  }

  else
  {
    v6 = sharedBluetoothSettingsLogComponent(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(HPSProductUtils *)v6 isAppleHeadphone:v7, v8, v9, v10, v11, v12, v13];
    }

    v5 = 0;
  }

  return v5;
}

+ (BOOL)isAirPods:(id)pods
{
  v19 = *MEMORY[0x277D85DE8];
  podsCopy = pods;
  v4 = podsCopy;
  if (podsCopy)
  {
    productId = [podsCopy productId];
    v6 = ((productId - 8194) < 0x23) & (0x420063101uLL >> (productId - 2));
    v7 = sharedBluetoothSettingsLogComponent(productId);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v16[0] = 67109376;
      v16[1] = v6;
      v17 = 1024;
      productId2 = [v4 productId];
      _os_log_impl(&dword_25126C000, v7, OS_LOG_TYPE_DEFAULT, "HPSProductUtils: isAirPods:%i productID:%i", v16, 0xEu);
    }
  }

  else
  {
    v7 = sharedBluetoothSettingsLogComponent(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(HPSProductUtils *)v7 isAirPods:v8, v9, v10, v11, v12, v13, v14];
    }

    LOBYTE(v6) = 0;
  }

  return v6;
}

+ (BOOL)isBeatsNonWx:(id)wx
{
  wxCopy = wx;
  v4 = wxCopy;
  if (wxCopy)
  {
    productId = [wxCopy productId];
    productId2 = [v4 productId];
    productId3 = [v4 productId];
    v10 = productId == 8209 || productId2 == 8214 || productId3 == 8230;
  }

  else
  {
    v11 = sharedBluetoothSettingsLogComponent(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(HPSProductUtils *)v11 isBeatsNonWx:v12, v13, v14, v15, v16, v17, v18];
    }

    v10 = 0;
  }

  return v10;
}

+ (BOOL)isFeatureSupported:(int)supported byDevice:(id)device
{
  v4 = *&supported;
  productId = [device productId];
  if (v4 > 1)
  {
    return 0;
  }

  return [self isFeatureSupported:v4 byProductId:productId];
}

+ (BOOL)isFeatureSupported:(int)supported byProductId:(unsigned int)id
{
  v4 = 0x201C6B37FF01uLL >> (id - 2);
  if (id - 8194 >= 0x2E)
  {
    LOBYTE(v4) = 0;
  }

  v5 = 0x14630611u >> (id - 10);
  if (id - 8202 >= 0x1D)
  {
    LOBYTE(v5) = 0;
  }

  if (supported)
  {
    LOBYTE(v5) = 0;
  }

  if (supported != 1)
  {
    LOBYTE(v4) = v5;
  }

  return v4 & 1;
}

+ (BOOL)isRealityDevice
{
  v2 = MGGetStringAnswer();
  v3 = [v2 isEqualToString:@"RealityDevice"];

  return v3;
}

+ (id)getProductIDString:(unsigned int)string
{
  if (string - 8194 > 0x2D)
  {
    return @"UNKNOWN";
  }

  else
  {
    return off_2796B2AC8[string - 8194];
  }
}

+ (void)getProductSpecificString:(os_log_t)log descriptionKey:.cold.1(uint64_t a1, int a2, os_log_t log)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 67109378;
  v3[1] = a2;
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&dword_25126C000, log, OS_LOG_TYPE_ERROR, "HPSProductUtils: getProductSpecificString called with invalid pid %d and (or) descKey %@", v3, 0x12u);
}

@end