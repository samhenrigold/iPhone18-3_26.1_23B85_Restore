@interface PCNativeButtonStyle
- (PCNativeButtonStyle)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PCNativeButtonStyle

- (PCNativeButtonStyle)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7 = objc_msgSend_init(self, v5, v6);
  if (v7)
  {
    v8 = objc_opt_class();
    v10 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v9, v8, @"color");
    v11 = *(v7 + 8);
    *(v7 + 8) = v10;

    v12 = objc_opt_class();
    v14 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v13, v12, @"highlightColor");
    v15 = *(v7 + 16);
    *(v7 + 16) = v14;

    v16 = objc_opt_class();
    v18 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v17, v16, @"disabledColor");
    v19 = *(v7 + 24);
    *(v7 + 24) = v18;

    v20 = objc_opt_class();
    v22 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v21, v20, @"textColor");
    v23 = *(v7 + 32);
    *(v7 + 32) = v22;

    objc_msgSend_decodeDoubleForKey_(coderCopy, v24, @"cornerRadius");
    *(v7 + 40) = v25;
    v26 = objc_opt_class();
    v28 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v27, v26, @"borderStyle");
    v29 = *(v7 + 48);
    *(v7 + 48) = v28;
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v7 = objc_msgSend_color(self, v5, v6);
  objc_msgSend_encodeObject_forKey_(coderCopy, v8, v7, @"color");

  v11 = objc_msgSend_highlightColor(self, v9, v10);
  objc_msgSend_encodeObject_forKey_(coderCopy, v12, v11, @"highlightColor");

  v15 = objc_msgSend_disabledColor(self, v13, v14);
  objc_msgSend_encodeObject_forKey_(coderCopy, v16, v15, @"disabledColor");

  v19 = objc_msgSend_textColor(self, v17, v18);
  objc_msgSend_encodeObject_forKey_(coderCopy, v20, v19, @"textColor");

  objc_msgSend_cornerRadius(self, v21, v22);
  objc_msgSend_encodeDouble_forKey_(coderCopy, v23, @"cornerRadius");
  v27 = objc_msgSend_borderStyle(self, v24, v25);
  objc_msgSend_encodeObject_forKey_(coderCopy, v26, v27, @"borderStyle");
}

@end