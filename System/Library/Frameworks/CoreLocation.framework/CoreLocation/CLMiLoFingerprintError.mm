@interface CLMiLoFingerprintError
- (CLMiLoFingerprintError)initWithCoder:(id)coder;
- (CLMiLoFingerprintError)initWithFingerprintErrorEnum:(unint64_t)enum;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation CLMiLoFingerprintError

- (CLMiLoFingerprintError)initWithFingerprintErrorEnum:(unint64_t)enum
{
  v5.receiver = self;
  v5.super_class = CLMiLoFingerprintError;
  result = [(CLMiLoFingerprintError *)&v5 init];
  if (result)
  {
    result->_fingerprintErrorEnum = enum;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v8 = objc_msgSend_allocWithZone_(v5, v6, zone, v7);
  fingerprintErrorEnum = self->_fingerprintErrorEnum;

  return MEMORY[0x1EEE66B58](v8, sel_initWithFingerprintErrorEnum_, fingerprintErrorEnum, v9);
}

- (CLMiLoFingerprintError)initWithCoder:(id)coder
{
  v5 = objc_msgSend_decodeIntegerForKey_(coder, a2, @"kCLMiLoConnectionCodingKeyFingerprintErrorEnum", v3);

  return MEMORY[0x1EEE66B58](self, sel_initWithFingerprintErrorEnum_, v5, v6);
}

@end