@interface CLMiLoPlaceConfidenceReason
- (CLMiLoPlaceConfidenceReason)initWithCoder:(id)coder;
- (CLMiLoPlaceConfidenceReason)initWithConfidenceReasonEnum:(unint64_t)enum;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation CLMiLoPlaceConfidenceReason

- (CLMiLoPlaceConfidenceReason)initWithConfidenceReasonEnum:(unint64_t)enum
{
  v5.receiver = self;
  v5.super_class = CLMiLoPlaceConfidenceReason;
  result = [(CLMiLoPlaceConfidenceReason *)&v5 init];
  if (result)
  {
    result->_confidenceReasonEnum = enum;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v8 = objc_msgSend_allocWithZone_(v5, v6, zone, v7);
  confidenceReasonEnum = self->_confidenceReasonEnum;

  return MEMORY[0x1EEE66B58](v8, sel_initWithConfidenceReasonEnum_, confidenceReasonEnum, v9);
}

- (CLMiLoPlaceConfidenceReason)initWithCoder:(id)coder
{
  v5 = objc_msgSend_decodeIntegerForKey_(coder, a2, @"kCLMiLoConnectionCodingKeyPlaceConfidenceReasonEnum", v3);

  return MEMORY[0x1EEE66B58](self, sel_initWithConfidenceReasonEnum_, v5, v6);
}

@end