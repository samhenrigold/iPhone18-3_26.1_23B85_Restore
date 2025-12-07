@interface CLMiLoServiceQualityReason
- (CLMiLoServiceQualityReason)initWithCoder:(id)coder;
- (CLMiLoServiceQualityReason)initWithQualityReasonEnum:(unint64_t)enum;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation CLMiLoServiceQualityReason

- (CLMiLoServiceQualityReason)initWithQualityReasonEnum:(unint64_t)enum
{
  v5.receiver = self;
  v5.super_class = CLMiLoServiceQualityReason;
  result = [(CLMiLoServiceQualityReason *)&v5 init];
  if (result)
  {
    result->_qualityReasonEnum = enum;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v8 = objc_msgSend_allocWithZone_(v5, v6, zone, v7);
  qualityReasonEnum = self->_qualityReasonEnum;

  return MEMORY[0x1EEE66B58](v8, sel_initWithQualityReasonEnum_, qualityReasonEnum, v9);
}

- (CLMiLoServiceQualityReason)initWithCoder:(id)coder
{
  v5 = objc_msgSend_decodeIntegerForKey_(coder, a2, @"kCLMiLoConnectionCodingKeyServiceQualityReason", v3);

  return MEMORY[0x1EEE66B58](self, sel_initWithQualityReasonEnum_, v5, v6);
}

@end