@interface CLMiLoConnectionStatus
- (CLMiLoConnectionStatus)initWithCoder:(id)coder;
- (CLMiLoConnectionStatus)initWithConnectionState:(unint64_t)state;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation CLMiLoConnectionStatus

- (CLMiLoConnectionStatus)initWithConnectionState:(unint64_t)state
{
  v5.receiver = self;
  v5.super_class = CLMiLoConnectionStatus;
  result = [(CLMiLoConnectionStatus *)&v5 init];
  if (result)
  {
    result->_connectionState = state;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v8 = objc_msgSend_allocWithZone_(v5, v6, zone, v7);
  connectionState = self->_connectionState;

  return MEMORY[0x1EEE66B58](v8, sel_initWithConnectionState_, connectionState, v9);
}

- (CLMiLoConnectionStatus)initWithCoder:(id)coder
{
  v5 = objc_msgSend_decodeIntegerForKey_(coder, a2, @"kCLMiLoConnectionCodingKeyConnectionState", v3);

  return MEMORY[0x1EEE66B58](self, sel_initWithConnectionState_, v5, v6);
}

@end