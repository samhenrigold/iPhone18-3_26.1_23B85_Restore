@interface CLMiLoPredictionDeviceDistanceIndication
- (CLMiLoPredictionDeviceDistanceIndication)initWithCoder:(id)coder;
- (CLMiLoPredictionDeviceDistanceIndication)initWithDeviceIdentifier:(id)identifier uwbRange:(id)range bleRSSI:(id)i;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLMiLoPredictionDeviceDistanceIndication

- (CLMiLoPredictionDeviceDistanceIndication)initWithDeviceIdentifier:(id)identifier uwbRange:(id)range bleRSSI:(id)i
{
  v19.receiver = self;
  v19.super_class = CLMiLoPredictionDeviceDistanceIndication;
  v11 = [(CLMiLoPredictionDeviceDistanceIndication *)&v19 init];
  if (v11)
  {
    v11->_deviceIdentifier = objc_msgSend_copy(identifier, v8, v9, v10);
    v11->_uwbRange = objc_msgSend_copy(range, v12, v13, v14);
    v11->_bleRSSI = objc_msgSend_copy(i, v15, v16, v17);
  }

  return v11;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLMiLoPredictionDeviceDistanceIndication;
  [(CLMiLoPredictionDeviceDistanceIndication *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v8 = objc_msgSend_allocWithZone_(v5, v6, zone, v7);
  deviceIdentifier = self->_deviceIdentifier;
  uwbRange = self->_uwbRange;

  return MEMORY[0x1EEE66B58](v8, sel_initWithDeviceIdentifier_uwbRange_bleRSSI_, deviceIdentifier, uwbRange);
}

- (CLMiLoPredictionDeviceDistanceIndication)initWithCoder:(id)coder
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v6, v5, @"kCLMiLoConnectionCodingKeyDeviceDistanceIndicationDeviceIdentifier");
  v8 = objc_opt_class();
  v10 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v9, v8, @"kCLMiLoConnectionCodingKeyDeviceDistanceIndicationUwbRange");
  v11 = objc_opt_class();
  objc_msgSend_decodeObjectOfClass_forKey_(coder, v12, v11, @"kCLMiLoConnectionCodingKeyDeviceDistanceIndicationBleRSSI");

  return MEMORY[0x1EEE66B58](self, sel_initWithDeviceIdentifier_uwbRange_bleRSSI_, v7, v10);
}

- (void)encodeWithCoder:(id)coder
{
  objc_msgSend_encodeObject_forKey_(coder, a2, self->_deviceIdentifier, @"kCLMiLoConnectionCodingKeyDeviceDistanceIndicationDeviceIdentifier");
  objc_msgSend_encodeObject_forKey_(coder, v5, self->_uwbRange, @"kCLMiLoConnectionCodingKeyDeviceDistanceIndicationUwbRange");
  bleRSSI = self->_bleRSSI;

  objc_msgSend_encodeObject_forKey_(coder, v6, bleRSSI, @"kCLMiLoConnectionCodingKeyDeviceDistanceIndicationBleRSSI");
}

@end