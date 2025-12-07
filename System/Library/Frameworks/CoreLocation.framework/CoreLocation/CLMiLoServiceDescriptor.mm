@interface CLMiLoServiceDescriptor
- (CLMiLoServiceDescriptor)initWithCoder:(id)coder;
- (CLMiLoServiceDescriptor)initWithServiceIdentifier:(id)identifier serviceType:(unint64_t)type locationTypes:(id)types;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLMiLoServiceDescriptor

- (CLMiLoServiceDescriptor)initWithServiceIdentifier:(id)identifier serviceType:(unint64_t)type locationTypes:(id)types
{
  v13.receiver = self;
  v13.super_class = CLMiLoServiceDescriptor;
  v11 = [(CLMiLoServiceDescriptor *)&v13 init];
  if (v11)
  {
    v11->_serviceIdentifier = objc_msgSend_copy(identifier, v8, v9, v10);
    v11->_serviceType = type;
    v11->_locationTypes = types;
  }

  return v11;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLMiLoServiceDescriptor;
  [(CLMiLoServiceDescriptor *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v8 = objc_msgSend_allocWithZone_(v5, v6, zone, v7);
  serviceIdentifier = self->_serviceIdentifier;
  serviceType = self->_serviceType;

  return MEMORY[0x1EEE66B58](v8, sel_initWithServiceIdentifier_serviceType_locationTypes_, serviceIdentifier, serviceType);
}

- (CLMiLoServiceDescriptor)initWithCoder:(id)coder
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v6, v5, @"kCLMiLoConnectionCodingKeyServiceIdentifier");
  v10 = objc_msgSend_decodeIntegerForKey_(coder, v8, @"kCLMiLoConnectionCodingKeyServiceType", v9);
  v11 = MEMORY[0x1E695DFD8];
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v16 = objc_msgSend_setWithObjects_(v11, v14, v12, v15, v13, 0);
  objc_msgSend_decodeObjectOfClasses_forKey_(coder, v17, v16, @"kCLMiLoConnectionCodingKeyLocationTypeArray");

  return MEMORY[0x1EEE66B58](self, sel_initWithServiceIdentifier_serviceType_locationTypes_, v7, v10);
}

- (void)encodeWithCoder:(id)coder
{
  objc_msgSend_encodeObject_forKey_(coder, a2, self->_serviceIdentifier, @"kCLMiLoConnectionCodingKeyServiceIdentifier");
  objc_msgSend_encodeInteger_forKey_(coder, v5, self->_serviceType, @"kCLMiLoConnectionCodingKeyServiceType");
  locationTypes = self->_locationTypes;

  objc_msgSend_encodeObject_forKey_(coder, v6, locationTypes, @"kCLMiLoConnectionCodingKeyLocationTypeArray");
}

@end