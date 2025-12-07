@interface PCNativeBorderStyle
- (PCNativeBorderStyle)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PCNativeBorderStyle

- (PCNativeBorderStyle)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7 = objc_msgSend_init(self, v5, v6);
  if (v7)
  {
    v8 = objc_opt_class();
    v10 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v9, v8, @"color");
    v11 = *(v7 + 8);
    *(v7 + 8) = v10;

    objc_msgSend_decodeDoubleForKey_(coderCopy, v12, @"width");
    *(v7 + 16) = v13;
    objc_msgSend_decodeDoubleForKey_(coderCopy, v14, @"cornerRadius");
    *(v7 + 24) = v15;
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = objc_msgSend_color(self, v4, v5);
  objc_msgSend_encodeObject_forKey_(coderCopy, v7, v6, @"color");

  objc_msgSend_width(self, v8, v9);
  objc_msgSend_encodeDouble_forKey_(coderCopy, v10, @"width");
  objc_msgSend_cornerRadius(self, v11, v12);
  objc_msgSend_encodeDouble_forKey_(coderCopy, v13, @"cornerRadius");
}

@end