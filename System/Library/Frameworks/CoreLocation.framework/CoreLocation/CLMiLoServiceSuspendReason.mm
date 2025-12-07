@interface CLMiLoServiceSuspendReason
- (CLMiLoServiceSuspendReason)initWithCoder:(id)coder;
- (CLMiLoServiceSuspendReason)initWithSuspendReasonEnum:(unint64_t)enum;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation CLMiLoServiceSuspendReason

- (CLMiLoServiceSuspendReason)initWithSuspendReasonEnum:(unint64_t)enum
{
  v5.receiver = self;
  v5.super_class = CLMiLoServiceSuspendReason;
  result = [(CLMiLoServiceSuspendReason *)&v5 init];
  if (result)
  {
    result->_suspendReasonEnum = enum;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v8 = objc_msgSend_allocWithZone_(v5, v6, zone, v7);
  suspendReasonEnum = self->_suspendReasonEnum;

  return MEMORY[0x1EEE66B58](v8, sel_initWithSuspendReasonEnum_, suspendReasonEnum, v9);
}

- (CLMiLoServiceSuspendReason)initWithCoder:(id)coder
{
  v5 = objc_msgSend_decodeIntegerForKey_(coder, a2, @"kCLMiLoConnectionCodingKeyServiceSuspendReason", v3);

  return MEMORY[0x1EEE66B58](self, sel_initWithSuspendReasonEnum_, v5, v6);
}

@end