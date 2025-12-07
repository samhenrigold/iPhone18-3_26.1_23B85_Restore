@interface CLMiLoPlaceLabel
- (CLMiLoPlaceLabel)initWithCoder:(id)coder;
- (CLMiLoPlaceLabel)initWithPlaceIdentifier:(id)identifier placeAdditionalInformation:(id)information;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLMiLoPlaceLabel

- (CLMiLoPlaceLabel)initWithPlaceIdentifier:(id)identifier placeAdditionalInformation:(id)information
{
  v14.receiver = self;
  v14.super_class = CLMiLoPlaceLabel;
  v9 = [(CLMiLoPlaceLabel *)&v14 init];
  if (v9)
  {
    v9->_placeIdentifier = objc_msgSend_copy(identifier, v6, v7, v8);
    v9->_placeAdditionalInformation = objc_msgSend_copy(information, v10, v11, v12);
  }

  return v9;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLMiLoPlaceLabel;
  [(CLMiLoPlaceLabel *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v8 = objc_msgSend_allocWithZone_(v5, v6, zone, v7);
  placeIdentifier = self->_placeIdentifier;
  placeAdditionalInformation = self->_placeAdditionalInformation;

  return MEMORY[0x1EEE66B58](v8, sel_initWithPlaceIdentifier_placeAdditionalInformation_, placeIdentifier, placeAdditionalInformation);
}

- (CLMiLoPlaceLabel)initWithCoder:(id)coder
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v6, v5, @"kCLMiLoConnectionCodingKeyLocationPlaceIdentifier");
  v8 = objc_opt_class();
  v10 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v9, v8, @"kCLMiLoConnectionCodingKeyLocationPlaceAdditionalInformation");

  return MEMORY[0x1EEE66B58](self, sel_initWithPlaceIdentifier_placeAdditionalInformation_, v7, v10);
}

- (void)encodeWithCoder:(id)coder
{
  objc_msgSend_encodeObject_forKey_(coder, a2, self->_placeIdentifier, @"kCLMiLoConnectionCodingKeyLocationPlaceIdentifier");
  placeAdditionalInformation = self->_placeAdditionalInformation;

  objc_msgSend_encodeObject_forKey_(coder, v5, placeAdditionalInformation, @"kCLMiLoConnectionCodingKeyLocationPlaceAdditionalInformation");
}

@end