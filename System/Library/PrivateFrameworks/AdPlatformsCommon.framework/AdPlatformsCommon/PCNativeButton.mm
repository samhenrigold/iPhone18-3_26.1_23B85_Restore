@interface PCNativeButton
- (PCNativeButton)init;
- (PCNativeButton)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PCNativeButton

- (PCNativeButton)init
{
  v3.receiver = self;
  v3.super_class = PCNativeButton;
  result = [(PCNativeButton *)&v3 init];
  if (result)
  {
    result->_type = -1;
  }

  return result;
}

- (PCNativeButton)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8 = objc_msgSend_init(self, v5, v6);
  if (v8)
  {
    v8->_type = objc_msgSend_decodeInt32ForKey_(coderCopy, v7, @"type");
    v9 = objc_opt_class();
    v11 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v10, v9, @"text");
    text = v8->_text;
    v8->_text = v11;

    v13 = objc_opt_class();
    v15 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v14, v13, @"accessibleText");
    accessibleText = v8->_accessibleText;
    v8->_accessibleText = v15;

    v17 = objc_opt_class();
    v19 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v18, v17, @"style");
    style = v8->_style;
    v8->_style = v19;
  }

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v7 = objc_msgSend_type(self, v5, v6);
  objc_msgSend_encodeInt32_forKey_(coderCopy, v8, v7, @"type");
  v11 = objc_msgSend_text(self, v9, v10);
  objc_msgSend_encodeObject_forKey_(coderCopy, v12, v11, @"text");

  v15 = objc_msgSend_accessibleText(self, v13, v14);
  objc_msgSend_encodeObject_forKey_(coderCopy, v16, v15, @"accessibleText");

  v20 = objc_msgSend_style(self, v17, v18);
  objc_msgSend_encodeObject_forKey_(coderCopy, v19, v20, @"style");
}

@end