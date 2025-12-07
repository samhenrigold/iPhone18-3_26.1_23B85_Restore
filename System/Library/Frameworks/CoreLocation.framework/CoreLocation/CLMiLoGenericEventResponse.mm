@interface CLMiLoGenericEventResponse
- (CLMiLoGenericEventResponse)initWithCoder:(id)coder;
- (CLMiLoGenericEventResponse)initWithEventType:(unint64_t)type withDescription:(id)description withError:(id)error;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLMiLoGenericEventResponse

- (CLMiLoGenericEventResponse)initWithEventType:(unint64_t)type withDescription:(id)description withError:(id)error
{
  v11.receiver = self;
  v11.super_class = CLMiLoGenericEventResponse;
  v8 = [(CLMiLoGenericEventResponse *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_eventType = type;
    v8->_genericEventDescription = description;
    v9->_error = error;
  }

  return v9;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLMiLoGenericEventResponse;
  [(CLMiLoGenericEventResponse *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v8 = objc_msgSend_allocWithZone_(v5, v6, zone, v7);
  eventType = self->_eventType;
  genericEventDescription = self->_genericEventDescription;

  return MEMORY[0x1EEE66B58](v8, sel_initWithEventType_withDescription_withError_, eventType, genericEventDescription);
}

- (CLMiLoGenericEventResponse)initWithCoder:(id)coder
{
  v6 = objc_msgSend_decodeIntegerForKey_(coder, a2, @"kCLMiLoConnectionCodingKeyGenericEventType", v3);
  v7 = objc_opt_class();
  v9 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v8, v7, @"kCLMiLoConnectionCodingKeyGenericEventDescription");
  v10 = objc_opt_class();
  objc_msgSend_decodeObjectOfClass_forKey_(coder, v11, v10, @"kCLMiLoConnectionCodingKeyGenericEventError");

  return MEMORY[0x1EEE66B58](self, sel_initWithEventType_withDescription_withError_, v6, v9);
}

- (void)encodeWithCoder:(id)coder
{
  objc_msgSend_encodeInteger_forKey_(coder, a2, self->_eventType, @"kCLMiLoConnectionCodingKeyGenericEventType");
  objc_msgSend_encodeObject_forKey_(coder, v5, self->_genericEventDescription, @"kCLMiLoConnectionCodingKeyGenericEventDescription");
  error = self->_error;

  objc_msgSend_encodeObject_forKey_(coder, v6, error, @"kCLMiLoConnectionCodingKeyGenericEventError");
}

@end