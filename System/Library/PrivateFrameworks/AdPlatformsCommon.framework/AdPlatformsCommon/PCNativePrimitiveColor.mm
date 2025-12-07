@interface PCNativePrimitiveColor
- (PCNativePrimitiveColor)initWithCoder:(id)coder;
- (PCNativePrimitiveColor)initWithRGBA:(int64_t)a;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PCNativePrimitiveColor

- (PCNativePrimitiveColor)initWithRGBA:(int64_t)a
{
  v5.receiver = self;
  v5.super_class = PCNativePrimitiveColor;
  result = [(PCNativePrimitiveColor *)&v5 init];
  if (result)
  {
    result->_rawValue = a;
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = objc_msgSend_rawValue(self, v4, v5);
  objc_msgSend_encodeInt32_forKey_(coderCopy, v7, v6, @"rawValue");
}

- (PCNativePrimitiveColor)initWithCoder:(id)coder
{
  v4 = objc_msgSend_decodeInt32ForKey_(coder, a2, @"rawValue");

  return MEMORY[0x1EEE66B58](self, sel_initWithRGBA_, v4);
}

@end