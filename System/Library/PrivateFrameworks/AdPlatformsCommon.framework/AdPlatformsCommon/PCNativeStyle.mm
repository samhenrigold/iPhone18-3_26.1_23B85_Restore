@interface PCNativeStyle
- (PCNativeStyle)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PCNativeStyle

- (PCNativeStyle)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7 = objc_msgSend_init(self, v5, v6);
  if (v7)
  {
    v8 = objc_opt_class();
    v10 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v9, v8, @"backgroundColor");
    backgroundColor = v7->_backgroundColor;
    v7->_backgroundColor = v10;

    v12 = objc_opt_class();
    v14 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v13, v12, @"borderStyle");
    borderStyle = v7->_borderStyle;
    v7->_borderStyle = v14;

    v16 = objc_opt_class();
    v18 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v17, v16, @"buttonStyle");
    buttonStyle = v7->_buttonStyle;
    v7->_buttonStyle = v18;

    v20 = objc_opt_class();
    v22 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v21, v20, @"shadowStyle");
    shadowStyle = v7->_shadowStyle;
    v7->_shadowStyle = v22;

    v24 = objc_opt_class();
    v26 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v25, v24, @"textColor");
    textColor = v7->_textColor;
    v7->_textColor = v26;
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v7 = objc_msgSend_backgroundColor(self, v5, v6);
  objc_msgSend_encodeObject_forKey_(coderCopy, v8, v7, @"backgroundColor");

  v11 = objc_msgSend_borderStyle(self, v9, v10);
  objc_msgSend_encodeObject_forKey_(coderCopy, v12, v11, @"borderStyle");

  v15 = objc_msgSend_buttonStyle(self, v13, v14);
  objc_msgSend_encodeObject_forKey_(coderCopy, v16, v15, @"buttonStyle");

  v19 = objc_msgSend_shadowStyle(self, v17, v18);
  objc_msgSend_encodeObject_forKey_(coderCopy, v20, v19, @"shadowStyle");

  v24 = objc_msgSend_textColor(self, v21, v22);
  objc_msgSend_encodeObject_forKey_(coderCopy, v23, v24, @"textColor");
}

@end