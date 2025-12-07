@interface MTSDeviceSetupDevicePredicate
- (BOOL)isEqual:(id)equal;
- (MTSDeviceSetupDevicePredicate)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MTSDeviceSetupDevicePredicate

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  uuid = [(MTSDeviceSetupDevicePredicate *)self uuid];
  [coderCopy encodeObject:uuid forKey:@"MTSDSDP.uuid"];

  serialNumber = [(MTSDeviceSetupDevicePredicate *)self serialNumber];
  [coderCopy encodeObject:serialNumber forKey:@"MTSDSDP.serialNumber"];

  productID = [(MTSDeviceSetupDevicePredicate *)self productID];
  [coderCopy encodeObject:productID forKey:@"MTSDSDP.productID"];

  vendorID = [(MTSDeviceSetupDevicePredicate *)self vendorID];
  [coderCopy encodeObject:vendorID forKey:@"MTSDSDP.vendorID"];
}

- (MTSDeviceSetupDevicePredicate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MTSDSDP.uuid"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MTSDSDP.serialNumber"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MTSDSDP.productID"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MTSDSDP.vendorID"];

  v9 = [(MTSDeviceSetupDevicePredicate *)self init];
  [(MTSDeviceSetupDevicePredicate *)v9 setUuid:v5];
  [(MTSDeviceSetupDevicePredicate *)v9 setSerialNumber:v6];
  [(MTSDeviceSetupDevicePredicate *)v9 setProductID:v7];
  [(MTSDeviceSetupDevicePredicate *)v9 setVendorID:v8];

  return v9;
}

- (unint64_t)hash
{
  uuid = [(MTSDeviceSetupDevicePredicate *)self uuid];
  v3 = [uuid hash];

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
  if (v6 && (-[MTSDeviceSetupDevicePredicate uuid](self, "uuid"), v7 = objc_claimAutoreleasedReturnValue(), [v6 uuid], v8 = objc_claimAutoreleasedReturnValue(), v9 = HMFEqualObjects(), v8, v7, v9) && (-[MTSDeviceSetupDevicePredicate serialNumber](self, "serialNumber"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "serialNumber"), v11 = objc_claimAutoreleasedReturnValue(), v12 = HMFEqualObjects(), v11, v10, v12) && (-[MTSDeviceSetupDevicePredicate vendorID](self, "vendorID"), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "vendorID"), v14 = objc_claimAutoreleasedReturnValue(), v15 = HMFEqualObjects(), v14, v13, v15))
  {
    productID = [(MTSDeviceSetupDevicePredicate *)self productID];
    productID2 = [v6 productID];
    v18 = HMFEqualObjects();
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTSDeviceSetupDevicePredicate);
  uuid = [(MTSDeviceSetupDevicePredicate *)self uuid];
  [(MTSDeviceSetupDevicePredicate *)v4 setUuid:uuid];

  serialNumber = [(MTSDeviceSetupDevicePredicate *)self serialNumber];
  [(MTSDeviceSetupDevicePredicate *)v4 setSerialNumber:serialNumber];

  vendorID = [(MTSDeviceSetupDevicePredicate *)self vendorID];
  [(MTSDeviceSetupDevicePredicate *)v4 setVendorID:vendorID];

  productID = [(MTSDeviceSetupDevicePredicate *)self productID];
  [(MTSDeviceSetupDevicePredicate *)v4 setProductID:productID];

  return v4;
}

@end