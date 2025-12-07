@interface HMCHIPAccessorySetupPayload
+ (id)shortDescription;
- (BOOL)isEqual:(id)equal;
- (HMCHIPAccessorySetupPayload)initWithCoder:(id)coder;
- (HMCHIPAccessorySetupPayload)initWithSetupCode:(id)code discriminator:(id)discriminator;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMCHIPAccessorySetupPayload

- (NSArray)attributeDescriptions
{
  array = [MEMORY[0x1E695DF70] array];
  if ([(HMCHIPAccessorySetupPayload *)self hasShortDiscriminator])
  {
    v4 = objc_alloc(MEMORY[0x1E69A29C8]);
    [(HMCHIPAccessorySetupPayload *)self hasShortDiscriminator];
    v5 = HMFBooleanToString();
    v6 = [v4 initWithName:@"Has Short Discriminator" value:v5];
    [array addObject:v6];
  }

  v7 = objc_alloc(MEMORY[0x1E69A29C8]);
  discriminator = [(HMCHIPAccessorySetupPayload *)self discriminator];
  v9 = [v7 initWithName:@"Discriminator" value:discriminator];
  [array addObject:v9];

  v10 = objc_alloc(MEMORY[0x1E69A29C8]);
  setupCode = [(HMCHIPAccessorySetupPayload *)self setupCode];
  v12 = [v10 initWithName:@"Setup Code" value:setupCode];
  [array addObject:v12];

  setupPayloadString = [(HMCHIPAccessorySetupPayload *)self setupPayloadString];

  if (setupPayloadString)
  {
    v14 = objc_alloc(MEMORY[0x1E69A29C8]);
    setupPayloadString2 = [(HMCHIPAccessorySetupPayload *)self setupPayloadString];
    v16 = [v14 initWithName:@"Setup Payload String" value:setupPayloadString2];
    [array addObject:v16];
  }

  vendorID = [(HMCHIPAccessorySetupPayload *)self vendorID];

  if (vendorID)
  {
    v18 = objc_alloc(MEMORY[0x1E69A29C8]);
    vendorID2 = [(HMCHIPAccessorySetupPayload *)self vendorID];
    v20 = [v18 initWithName:@"Vendor ID" value:vendorID2];
    [array addObject:v20];
  }

  productID = [(HMCHIPAccessorySetupPayload *)self productID];

  if (productID)
  {
    v22 = objc_alloc(MEMORY[0x1E69A29C8]);
    productID2 = [(HMCHIPAccessorySetupPayload *)self productID];
    v24 = [v22 initWithName:@"Product ID" value:productID2];
    [array addObject:v24];
  }

  deviceTypeID = [(HMCHIPAccessorySetupPayload *)self deviceTypeID];

  if (deviceTypeID)
  {
    v26 = objc_alloc(MEMORY[0x1E69A29C8]);
    deviceTypeID2 = [(HMCHIPAccessorySetupPayload *)self deviceTypeID];
    v28 = [v26 initWithName:@"Device Type ID" value:deviceTypeID2];
    [array addObject:v28];
  }

  serialNumber = [(HMCHIPAccessorySetupPayload *)self serialNumber];

  if (serialNumber)
  {
    v30 = objc_alloc(MEMORY[0x1E69A29C8]);
    serialNumber2 = [(HMCHIPAccessorySetupPayload *)self serialNumber];
    v32 = [v30 initWithName:@"Serial Number" value:serialNumber2];
    [array addObject:v32];
  }

  if ([(HMCHIPAccessorySetupPayload *)self requiresCustomFlow])
  {
    v33 = objc_alloc(MEMORY[0x1E69A29C8]);
    [(HMCHIPAccessorySetupPayload *)self requiresCustomFlow];
    v34 = HMFBooleanToString();
    v35 = [v33 initWithName:@"Requires Custom Flow" value:v34];
    [array addObject:v35];
  }

  v36 = [array copy];

  return v36;
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (HMCHIPAccessorySetupPayload)initWithCoder:(id)coder
{
  v26 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMCASP.ck.setupCode"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMCASP.ck.discriminator"];
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v20 = 138543874;
      v21 = v11;
      v22 = 2112;
      v23 = v5;
      v24 = 2112;
      v25 = v7;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Could not initialize from decoded setupCode: %@ discriminator: %@ ", &v20, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    v18 = 0;
  }

  else
  {
    selfCopy = [(HMCHIPAccessorySetupPayload *)self initWithSetupCode:v5 discriminator:v6];
    -[HMCHIPAccessorySetupPayload setHasShortDiscriminator:](selfCopy, "setHasShortDiscriminator:", [coderCopy decodeBoolForKey:@"HMCASP.ck.hasShortDiscriminator"]);
    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMCASP.ck.setupPayloadString"];
    [(HMCHIPAccessorySetupPayload *)selfCopy setSetupPayloadString:v13];

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMCASP.ck.vendorID"];
    [(HMCHIPAccessorySetupPayload *)selfCopy setVendorID:v14];

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMCASP.ck.productID"];
    [(HMCHIPAccessorySetupPayload *)selfCopy setProductID:v15];

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMCASP.ck.deviceTypeID"];
    [(HMCHIPAccessorySetupPayload *)selfCopy setDeviceTypeID:v16];

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMCASP.ck.serialNumber"];
    [(HMCHIPAccessorySetupPayload *)selfCopy setSerialNumber:v17];

    -[HMCHIPAccessorySetupPayload setRequiresCustomFlow:](selfCopy, "setRequiresCustomFlow:", [coderCopy decodeBoolForKey:@"HMCASP.ck.requiresCustomFlow"]);
    v18 = selfCopy;
  }

  return v18;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  setupCode = [(HMCHIPAccessorySetupPayload *)self setupCode];
  [coderCopy encodeObject:setupCode forKey:@"HMCASP.ck.setupCode"];

  [coderCopy encodeBool:-[HMCHIPAccessorySetupPayload hasShortDiscriminator](self forKey:{"hasShortDiscriminator"), @"HMCASP.ck.hasShortDiscriminator"}];
  discriminator = [(HMCHIPAccessorySetupPayload *)self discriminator];
  [coderCopy encodeObject:discriminator forKey:@"HMCASP.ck.discriminator"];

  setupPayloadString = [(HMCHIPAccessorySetupPayload *)self setupPayloadString];
  [coderCopy encodeObject:setupPayloadString forKey:@"HMCASP.ck.setupPayloadString"];

  vendorID = [(HMCHIPAccessorySetupPayload *)self vendorID];
  [coderCopy encodeObject:vendorID forKey:@"HMCASP.ck.vendorID"];

  productID = [(HMCHIPAccessorySetupPayload *)self productID];
  [coderCopy encodeObject:productID forKey:@"HMCASP.ck.productID"];

  deviceTypeID = [(HMCHIPAccessorySetupPayload *)self deviceTypeID];
  [coderCopy encodeObject:deviceTypeID forKey:@"HMCASP.ck.deviceTypeID"];

  serialNumber = [(HMCHIPAccessorySetupPayload *)self serialNumber];
  [coderCopy encodeObject:serialNumber forKey:@"HMCASP.ck.serialNumber"];

  [coderCopy encodeBool:-[HMCHIPAccessorySetupPayload requiresCustomFlow](self forKey:{"requiresCustomFlow"), @"HMCASP.ck.requiresCustomFlow"}];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [HMMutableCHIPAccessorySetupPayload allocWithZone:zone];
  setupCode = [(HMCHIPAccessorySetupPayload *)self setupCode];
  discriminator = [(HMCHIPAccessorySetupPayload *)self discriminator];
  v7 = [(HMCHIPAccessorySetupPayload *)v4 initWithSetupCode:setupCode discriminator:discriminator];

  setupPayloadString = [(HMCHIPAccessorySetupPayload *)self setupPayloadString];
  [(HMCHIPAccessorySetupPayload *)v7 setSetupPayloadString:setupPayloadString];

  vendorID = [(HMCHIPAccessorySetupPayload *)self vendorID];
  [(HMCHIPAccessorySetupPayload *)v7 setVendorID:vendorID];

  productID = [(HMCHIPAccessorySetupPayload *)self productID];
  [(HMCHIPAccessorySetupPayload *)v7 setProductID:productID];

  deviceTypeID = [(HMCHIPAccessorySetupPayload *)self deviceTypeID];
  [(HMCHIPAccessorySetupPayload *)v7 setDeviceTypeID:deviceTypeID];

  serialNumber = [(HMCHIPAccessorySetupPayload *)self serialNumber];
  [(HMCHIPAccessorySetupPayload *)v7 setSerialNumber:serialNumber];

  [(HMCHIPAccessorySetupPayload *)v7 setRequiresCustomFlow:[(HMCHIPAccessorySetupPayload *)self requiresCustomFlow]];
  return v7;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (unint64_t)hash
{
  setupCode = [(HMCHIPAccessorySetupPayload *)self setupCode];
  v3 = [setupCode hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v6)
  {
    setupCode = [(HMCHIPAccessorySetupPayload *)self setupCode];
    setupCode2 = [v6 setupCode];
    if ([setupCode isEqualToNumber:setupCode2])
    {
      discriminator = [(HMCHIPAccessorySetupPayload *)self discriminator];
      discriminator2 = [v6 discriminator];
      if ([discriminator isEqualToNumber:discriminator2] && (-[HMCHIPAccessorySetupPayload setupPayloadString](self, "setupPayloadString"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "setupPayloadString"), v12 = objc_claimAutoreleasedReturnValue(), v13 = HMFEqualObjects(), v12, v11, v13) && (-[HMCHIPAccessorySetupPayload vendorID](self, "vendorID"), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "vendorID"), v15 = objc_claimAutoreleasedReturnValue(), v16 = HMFEqualObjects(), v15, v14, v16) && (-[HMCHIPAccessorySetupPayload productID](self, "productID"), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "productID"), v18 = objc_claimAutoreleasedReturnValue(), v19 = HMFEqualObjects(), v18, v17, v19) && (-[HMCHIPAccessorySetupPayload serialNumber](self, "serialNumber"), v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "serialNumber"), v21 = objc_claimAutoreleasedReturnValue(), v22 = HMFEqualObjects(), v21, v20, v22) && (v23 = -[HMCHIPAccessorySetupPayload requiresCustomFlow](self, "requiresCustomFlow"), v23 == objc_msgSend(v6, "requiresCustomFlow")))
      {
        deviceTypeID = [(HMCHIPAccessorySetupPayload *)self deviceTypeID];
        deviceTypeID2 = [v6 deviceTypeID];
        v24 = HMFEqualObjects();
      }

      else
      {
        v24 = 0;
      }
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (HMCHIPAccessorySetupPayload)initWithSetupCode:(id)code discriminator:(id)discriminator
{
  codeCopy = code;
  discriminatorCopy = discriminator;
  if (!codeCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v9 = discriminatorCopy;
  if (!discriminatorCopy)
  {
LABEL_7:
    v13 = _HMFPreconditionFailure();
    [(HMUserCloudShareRepairInfo *)v13 .cxx_destruct];
    return result;
  }

  v15.receiver = self;
  v15.super_class = HMCHIPAccessorySetupPayload;
  v10 = [(HMCHIPAccessorySetupPayload *)&v15 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_setupCode, code);
    objc_storeStrong(&v11->_discriminator, discriminator);
  }

  return v11;
}

@end