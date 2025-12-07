@interface CLMiLoLocationType
- (CLMiLoLocationType)initWithCoder:(id)coder;
- (CLMiLoLocationType)initWithLocationTypeEnum:(unint64_t)enum;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation CLMiLoLocationType

- (CLMiLoLocationType)initWithLocationTypeEnum:(unint64_t)enum
{
  v5.receiver = self;
  v5.super_class = CLMiLoLocationType;
  result = [(CLMiLoLocationType *)&v5 init];
  if (result)
  {
    result->_locationType = enum;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v8 = objc_msgSend_allocWithZone_(v5, v6, zone, v7);
  v12 = objc_msgSend_locationType(self, v9, v10, v11);

  return MEMORY[0x1EEE66B58](v8, sel_initWithLocationTypeEnum_, v12, v13);
}

- (CLMiLoLocationType)initWithCoder:(id)coder
{
  v5 = objc_msgSend_decodeIntegerForKey_(coder, a2, @"kCLMiLoConnectionCodingKeyLocationType", v3);

  return MEMORY[0x1EEE66B58](self, sel_initWithLocationTypeEnum_, v5, v6);
}

@end