@interface CLLocationSourceInformation
- (CLLocationSourceInformation)initWithCoder:(id)coder;
- (CLLocationSourceInformation)initWithSoftwareSimulationState:(BOOL)isSoftware andExternalAccessoryState:(BOOL)isAccessory;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLLocationSourceInformation

- (CLLocationSourceInformation)initWithSoftwareSimulationState:(BOOL)isSoftware andExternalAccessoryState:(BOOL)isAccessory
{
  v7.receiver = self;
  v7.super_class = CLLocationSourceInformation;
  result = [(CLLocationSourceInformation *)&v7 init];
  if (result)
  {
    result->isSimulatedBySoftware = isSoftware;
    result->isProducedByAccessory = isAccessory;
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  if (objc_msgSend_allowsKeyedCoding(coder, a2, coder))
  {
    objc_msgSend_encodeBool_forKey_(coder, v5, self->isSimulatedBySoftware, @"kCLLocationCodingKeyFromSoftwareSimulator");
    isProducedByAccessory = self->isProducedByAccessory;

    objc_msgSend_encodeBool_forKey_(coder, v6, isProducedByAccessory, @"kCLLocationCodingKeyFromExternalAccessory");
  }

  else
  {
    objc_msgSend_encodeValueOfObjCType_at_(coder, v5, "B", &self->isSimulatedBySoftware);

    objc_msgSend_encodeValueOfObjCType_at_(coder, v8, "B", &self->isProducedByAccessory);
  }
}

- (CLLocationSourceInformation)initWithCoder:(id)coder
{
  v11.receiver = self;
  v11.super_class = CLLocationSourceInformation;
  v6 = [(CLLocationSourceInformation *)&v11 init];
  if (v6)
  {
    if (objc_msgSend_allowsKeyedCoding(coder, v4, v5))
    {
      v6->isSimulatedBySoftware = objc_msgSend_decodeBoolForKey_(coder, v7, @"kCLLocationCodingKeyFromSoftwareSimulator");
      v6->isProducedByAccessory = objc_msgSend_decodeBoolForKey_(coder, v8, @"kCLLocationCodingKeyFromExternalAccessory");
    }

    else
    {
      objc_msgSend_decodeValueOfObjCType_at_(coder, v7, "B", &v6->isSimulatedBySoftware);
      objc_msgSend_decodeValueOfObjCType_at_(coder, v9, "B", &v6->isProducedByAccessory);
    }
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  isSimulatedBySoftware = self->isSimulatedBySoftware;
  isProducedByAccessory = self->isProducedByAccessory;

  return objc_msgSend_initWithSoftwareSimulationState_andExternalAccessoryState_(v7, v8, isSimulatedBySoftware, isProducedByAccessory);
}

@end