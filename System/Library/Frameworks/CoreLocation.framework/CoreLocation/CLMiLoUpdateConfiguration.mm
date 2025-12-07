@interface CLMiLoUpdateConfiguration
- (CLMiLoUpdateConfiguration)initWithCoder:(id)coder;
- (CLMiLoUpdateConfiguration)initWithIsLowLatency:(BOOL)latency;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation CLMiLoUpdateConfiguration

- (CLMiLoUpdateConfiguration)initWithIsLowLatency:(BOOL)latency
{
  v5.receiver = self;
  v5.super_class = CLMiLoUpdateConfiguration;
  result = [(CLMiLoUpdateConfiguration *)&v5 init];
  if (result)
  {
    result->_isLowLatency = latency;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v8 = objc_msgSend_allocWithZone_(v5, v6, zone, v7);
  isLowLatency = self->_isLowLatency;

  return MEMORY[0x1EEE66B58](v8, sel_initWithIsLowLatency_, isLowLatency, v9);
}

- (CLMiLoUpdateConfiguration)initWithCoder:(id)coder
{
  v5 = objc_msgSend_decodeBoolForKey_(coder, a2, @"kCLMiLoConnectionCodingKeySessionIsLowLatency", v3);

  return MEMORY[0x1EEE66B58](self, sel_initWithIsLowLatency_, v5, v6);
}

@end