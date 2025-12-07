@interface PCNativeShadowStyle
- (PCNativeShadowStyle)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PCNativeShadowStyle

- (PCNativeShadowStyle)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7 = objc_msgSend_init(self, v5, v6);
  if (v7)
  {
    v8 = objc_opt_class();
    v10 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v9, v8, @"color");
    v11 = *(v7 + 8);
    *(v7 + 8) = v10;

    objc_msgSend_decodeDoubleForKey_(coderCopy, v12, @"opacity");
    *(v7 + 16) = v13;
    objc_msgSend_decodeDoubleForKey_(coderCopy, v14, @"radius");
    *(v7 + 24) = v15;
    v16 = MEMORY[0x1E695DFD8];
    v17 = objc_opt_class();
    v18 = objc_opt_class();
    v20 = objc_msgSend_setWithObjects_(v16, v19, v17, v18, 0);
    v22 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v21, v20, @"offsets");
    v23 = *(v7 + 32);
    *(v7 + 32) = v22;
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v7 = objc_msgSend_color(self, v5, v6);
  objc_msgSend_encodeObject_forKey_(coderCopy, v8, v7, @"color");

  objc_msgSend_opacity(self, v9, v10);
  objc_msgSend_encodeDouble_forKey_(coderCopy, v11, @"opacity");
  objc_msgSend_radius(self, v12, v13);
  objc_msgSend_encodeDouble_forKey_(coderCopy, v14, @"radius");
  v18 = objc_msgSend_offsets(self, v15, v16);
  objc_msgSend_encodeObject_forKey_(coderCopy, v17, v18, @"offsets");
}

@end