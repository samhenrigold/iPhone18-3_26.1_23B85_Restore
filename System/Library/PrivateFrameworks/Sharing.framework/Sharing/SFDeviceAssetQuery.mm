@interface SFDeviceAssetQuery
+ (BOOL)deviceWantsH264;
- (BOOL)isEqual:(id)equal;
- (NSString)effectiveProductType;
- (NSString)stringIdentifier;
- (NSString)variantIdentifier;
- (SFDeviceAssetQuery)initWithAssetType:(id)type productType:(id)productType;
- (SFDeviceAssetQuery)initWithBluetoothProductIdentifier:(unint64_t)identifier color:(unint64_t)color;
- (SFDeviceAssetQuery)initWithHomePodColor:(unint64_t)color version:(unsigned int)version;
- (SFDeviceAssetQuery)initWithProductType:(id)type additionalQueryParameters:(id)parameters;
- (SFDeviceAssetQuery)initWithSingleHomePodColor:(unsigned __int8)color version:(unsigned int)version;
- (SFDeviceAssetQuery)initWithTagColor:(unint64_t)color;
- (id)description;
- (id)loggingProductType;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation SFDeviceAssetQuery

+ (BOOL)deviceWantsH264
{
  if (deviceWantsH264_onceToken != -1)
  {
    +[SFDeviceAssetQuery deviceWantsH264];
  }

  return deviceWantsH264_deviceWantsH264;
}

uint64_t __37__SFDeviceAssetQuery_deviceWantsH264__block_invoke()
{
  result = softLinkVTIsHardwareDecodeSupported(1752589105);
  deviceWantsH264_deviceWantsH264 = result == 0;
  return result;
}

- (SFDeviceAssetQuery)initWithAssetType:(id)type productType:(id)productType
{
  typeCopy = type;
  productTypeCopy = productType;
  v17.receiver = self;
  v17.super_class = SFDeviceAssetQuery;
  v8 = [(SFDeviceAssetQuery *)&v17 init];
  v9 = v8;
  if (v8)
  {
    v8->_version = 1;
    v8->_legacyAsset = 0;
    v8->_h264 = [objc_opt_class() deviceWantsH264];
    v10 = [typeCopy copy];
    assetType = v9->_assetType;
    v9->_assetType = v10;

    v12 = [productTypeCopy copy];
    productType = v9->_productType;
    v9->_productType = v12;

    v16 = 0;
    v15 = 0;
    ASPrintF(&v15, "Asset-%{ptr}", v9);
    v9->_ucat = LogCategoryCreateEx();
    if (v16)
    {
      v9->_ucat = LogCategoryCreateEx();
    }

    if (v15)
    {
      free(v15);
    }
  }

  return v9;
}

- (SFDeviceAssetQuery)initWithHomePodColor:(unint64_t)color version:(unsigned int)version
{
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"AudioAccessory%d, 1", *&version];
  v7 = [(SFDeviceAssetQuery *)self initWithAssetType:@"com.apple.MobileAsset.SharingDeviceAssets" productType:v6];
  if (v7)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:color];
    stringValue = [v8 stringValue];
    color = v7->_color;
    v7->_color = stringValue;
  }

  return v7;
}

- (SFDeviceAssetQuery)initWithSingleHomePodColor:(unsigned __int8)color version:(unsigned int)version
{
  colorCopy = color;
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"AudioAccessorySingle%d, 1", *&version];
  v7 = [(SFDeviceAssetQuery *)self initWithAssetType:@"com.apple.MobileAsset.SharingDeviceAssets" productType:v6];
  if (v7)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:colorCopy];
    stringValue = [v8 stringValue];
    color = v7->_color;
    v7->_color = stringValue;
  }

  return v7;
}

- (SFDeviceAssetQuery)initWithBluetoothProductIdentifier:(unint64_t)identifier color:(unint64_t)color
{
  identifier = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%d", @"Device1, ", identifier];
  v7 = [(SFDeviceAssetQuery *)self initWithAssetType:@"com.apple.MobileAsset.SharingDeviceAssets" productType:identifier];
  if (v7)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:color];
    stringValue = [v8 stringValue];
    color = v7->_color;
    v7->_color = stringValue;
  }

  return v7;
}

- (SFDeviceAssetQuery)initWithTagColor:(unint64_t)color
{
  v4 = [(SFDeviceAssetQuery *)self initWithAssetType:@"com.apple.MobileAsset.SharingDeviceAssets" productType:@"AirTag1, 1"];
  if (v4)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:color];
    stringValue = [v5 stringValue];
    color = v4->_color;
    v4->_color = stringValue;
  }

  return v4;
}

- (SFDeviceAssetQuery)initWithProductType:(id)type additionalQueryParameters:(id)parameters
{
  parametersCopy = parameters;
  v7 = [(SFDeviceAssetQuery *)self initWithAssetType:@"com.apple.MobileAsset.SharingDeviceAssets" productType:type];
  if (v7)
  {
    v8 = objc_opt_new();
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __68__SFDeviceAssetQuery_initWithProductType_additionalQueryParameters___block_invoke;
    v17 = &unk_1E788C610;
    v9 = v7;
    v18 = v9;
    v19 = v8;
    v10 = v8;
    [parametersCopy enumerateKeysAndObjectsUsingBlock:&v14];
    v11 = [v10 copy];
    additionalQueryParameters = v9->_additionalQueryParameters;
    v9->_additionalQueryParameters = v11;
  }

  return v7;
}

void __68__SFDeviceAssetQuery_initWithProductType_additionalQueryParameters___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v5;
  v15 = v7;
  if (@"ProductType" == v7)
  {

    goto LABEL_22;
  }

  if ((v7 != 0) == (@"ProductType" == 0))
  {

LABEL_7:
    v9 = v15;
    v10 = v9;
    if (@"H264" == v9)
    {
    }

    else
    {
      if ((v15 != 0) == (@"H264" == 0))
      {

        goto LABEL_14;
      }

      v11 = [(__CFString *)v9 isEqual:@"H264"];

      if (!v11)
      {
LABEL_14:
        v12 = v10;
        v13 = v12;
        if (@"CL" == v12)
        {
        }

        else
        {
          if ((v15 != 0) == (@"CL" == 0))
          {

LABEL_21:
            [*(a1 + 40) setObject:v6 forKeyedSubscript:v13];
            goto LABEL_22;
          }

          v14 = [(__CFString *)v12 isEqual:@"CL"];

          if (!v14)
          {
            goto LABEL_21;
          }
        }

        objc_storeStrong((*(a1 + 32) + 56), a3);
        goto LABEL_22;
      }
    }

    *(*(a1 + 32) + 9) = [v6 BOOLValueSafe];
    goto LABEL_22;
  }

  v8 = [(__CFString *)v7 isEqual:@"ProductType"];

  if ((v8 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_22:
}

- (void)dealloc
{
  ucat = self->_ucat;
  if (ucat && (ucat->var3 & 0x40000) != 0)
  {
    LogCategory_Remove();
    self->_ucat = 0;
  }

  v4.receiver = self;
  v4.super_class = SFDeviceAssetQuery;
  [(SFDeviceAssetQuery *)&v4 dealloc];
}

- (NSString)stringIdentifier
{
  v20 = 0;
  loggingProductType = [(SFDeviceAssetQuery *)self loggingProductType];
  NSAppendPrintF(&v20, "productType: %@", loggingProductType);
  v4 = v20;

  if ([(SFDeviceAssetQuery *)self legacyAsset])
  {
    v19 = v4;
    NSAppendPrintF(&v19, ", legacy: YES");
    v5 = v19;

    v4 = v5;
  }

  if ([(SFDeviceAssetQuery *)self h264])
  {
    v18 = v4;
    NSAppendPrintF(&v18, ", h264: YES");
    v6 = v18;

    v4 = v6;
  }

  color = [(SFDeviceAssetQuery *)self color];

  if (color)
  {
    v17 = v4;
    color2 = [(SFDeviceAssetQuery *)self color];
    NSAppendPrintF(&v17, ", color: %@", color2);
    v9 = v17;

    v4 = v9;
  }

  additionalQueryParameters = [(SFDeviceAssetQuery *)self additionalQueryParameters];
  v11 = [additionalQueryParameters count];

  if (v11)
  {
    v16 = v4;
    additionalQueryParameters2 = [(SFDeviceAssetQuery *)self additionalQueryParameters];
    v13 = SFCompactStringFromCollection(additionalQueryParameters2);
    NSAppendPrintF(&v16, ", additionalQueryParameters: %@", v13);
    v14 = v16;

    v4 = v14;
  }

  return v4;
}

- (NSString)variantIdentifier
{
  v2 = MEMORY[0x1E696AEC0];
  color = [(SFDeviceAssetQuery *)self color];
  v4 = [v2 stringWithFormat:@"CL_%@", color];

  return v4;
}

- (NSString)effectiveProductType
{
  mappedProductType = [(SFDeviceAssetQuery *)self mappedProductType];
  v4 = mappedProductType;
  if (mappedProductType)
  {
    productType = mappedProductType;
  }

  else
  {
    productType = [(SFDeviceAssetQuery *)self productType];
  }

  v6 = productType;

  if (![(SFDeviceAssetQuery *)self legacyAsset])
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", v6, @"-v2"];

    v6 = v7;
  }

  return v6;
}

- (id)loggingProductType
{
  v10 = 0;
  productType = [(SFDeviceAssetQuery *)self productType];
  NSAppendPrintF(&v10, "%@", productType);
  v4 = v10;

  mappedProductType = [(SFDeviceAssetQuery *)self mappedProductType];

  if (mappedProductType)
  {
    v9 = v4;
    mappedProductType2 = [(SFDeviceAssetQuery *)self mappedProductType];
    NSAppendPrintF(&v9, " (%@)", mappedProductType2);
    v7 = v9;

    v4 = v7;
  }

  return v4;
}

- (id)description
{
  v12 = 0;
  v3 = objc_opt_class();
  NSAppendPrintF(&v12, "<%@: %{ptr}", v3, self);
  v4 = v12;
  v11 = v4;
  stringIdentifier = [(SFDeviceAssetQuery *)self stringIdentifier];
  NSAppendPrintF(&v11, ", %@", stringIdentifier);
  v6 = v11;

  v10 = v6;
  NSAppendPrintF(&v10, ">");
  v7 = v10;
  v8 = v10;

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      productType = [(SFDeviceAssetQuery *)self productType];
      productType2 = [(SFDeviceAssetQuery *)v5 productType];
      v8 = productType;
      v9 = productType2;
      v10 = v9;
      if (v8 == v9)
      {
      }

      else
      {
        if ((v8 != 0) == (v9 == 0))
        {
          v12 = 0;
          v17 = v9;
          v15 = v8;
          goto LABEL_26;
        }

        v11 = [v8 isEqual:v9];

        if (!v11)
        {
          v12 = 0;
LABEL_27:

          goto LABEL_28;
        }
      }

      color = [(SFDeviceAssetQuery *)self color];
      color2 = [(SFDeviceAssetQuery *)v5 color];
      v15 = color;
      v16 = color2;
      v17 = v16;
      if (v15 == v16)
      {
      }

      else
      {
        if ((v15 != 0) == (v16 == 0))
        {
          v12 = 0;
          v23 = v16;
          v21 = v15;
          goto LABEL_25;
        }

        v18 = [v15 isEqual:v16];

        if (!v18)
        {
          v12 = 0;
LABEL_26:

          goto LABEL_27;
        }
      }

      additionalQueryParameters = [(SFDeviceAssetQuery *)self additionalQueryParameters];
      additionalQueryParameters2 = [(SFDeviceAssetQuery *)v5 additionalQueryParameters];
      v21 = additionalQueryParameters;
      v22 = additionalQueryParameters2;
      v23 = v22;
      if (v21 == v22)
      {
      }

      else
      {
        if ((v21 != 0) == (v22 == 0))
        {

LABEL_24:
          v12 = 0;
          goto LABEL_25;
        }

        v24 = [v21 isEqual:v22];

        if (!v24)
        {
          goto LABEL_24;
        }
      }

      version = [(SFDeviceAssetQuery *)self version];
      v12 = version == [(SFDeviceAssetQuery *)v5 version];
LABEL_25:

      goto LABEL_26;
    }

    v12 = 0;
  }

LABEL_28:

  return v12;
}

- (unint64_t)hash
{
  productType = [(SFDeviceAssetQuery *)self productType];
  v4 = [productType hash];
  color = [(SFDeviceAssetQuery *)self color];
  v6 = [color hash] ^ v4;
  additionalQueryParameters = [(SFDeviceAssetQuery *)self additionalQueryParameters];
  v8 = [additionalQueryParameters hash];

  return v6 ^ v8;
}

@end