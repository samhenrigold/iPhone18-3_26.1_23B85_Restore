@interface PCNativeColor
- (PCNativeColor)init;
- (PCNativeColor)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PCNativeColor

- (PCNativeColor)init
{
  v3.receiver = self;
  v3.super_class = PCNativeColor;
  result = [(PCNativeColor *)&v3 init];
  if (result)
  {
    result->_gradientOrientation = 20000;
  }

  return result;
}

- (PCNativeColor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7 = objc_msgSend_init(self, v5, v6);
  if (v7)
  {
    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v12 = objc_msgSend_setWithObjects_(v8, v11, v9, v10, 0);
    v14 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v13, v12, @"lightModeColors");
    lightModeColors = v7->_lightModeColors;
    v7->_lightModeColors = v14;

    v17 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v16, v12, @"darkModeColors");
    darkModeColors = v7->_darkModeColors;
    v7->_darkModeColors = v17;

    v7->_gradientOrientation = objc_msgSend_decodeInt32ForKey_(coderCopy, v19, @"gradientOrientation");
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = objc_msgSend_lightModeColors(self, v4, v5);
  objc_msgSend_encodeObject_forKey_(coderCopy, v7, v6, @"lightModeColors");

  v10 = objc_msgSend_darkModeColors(self, v8, v9);
  objc_msgSend_encodeObject_forKey_(coderCopy, v11, v10, @"darkModeColors");

  v14 = objc_msgSend_gradientOrientation(self, v12, v13);
  objc_msgSend_encodeInt32_forKey_(coderCopy, v15, v14, @"gradientOrientation");
}

@end