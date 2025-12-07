@interface PCNativeElement
- (PCNativeElement)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PCNativeElement

- (PCNativeElement)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7 = objc_msgSend_init(self, v5, v6);
  if (v7)
  {
    v8 = objc_opt_class();
    v10 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v9, v8, @"accessibleCaption");
    accessibleCaption = v7->_accessibleCaption;
    v7->_accessibleCaption = v10;

    v12 = objc_opt_class();
    v14 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v13, v12, @"actionURL");
    actionURL = v7->_actionURL;
    v7->_actionURL = v14;

    v16 = objc_opt_class();
    v18 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v17, v16, @"asset");
    asset = v7->_asset;
    v7->_asset = v18;

    v20 = objc_opt_class();
    v22 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v21, v20, @"button");
    button = v7->_button;
    v7->_button = v22;

    v24 = objc_opt_class();
    v26 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v25, v24, @"caption");
    caption = v7->_caption;
    v7->_caption = v26;

    v7->_elementID = objc_msgSend_decodeIntForKey_(coderCopy, v28, @"elementID");
    v29 = objc_opt_class();
    v31 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v30, v29, @"style");
    style = v7->_style;
    v7->_style = v31;

    v33 = objc_opt_class();
    v35 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v34, v33, @"tapAction");
    tapAction = v7->_tapAction;
    v7->_tapAction = v35;
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v7 = objc_msgSend_accessibleCaption(self, v5, v6);
  objc_msgSend_encodeObject_forKey_(coderCopy, v8, v7, @"accessibleCaption");

  v11 = objc_msgSend_actionURL(self, v9, v10);
  objc_msgSend_encodeObject_forKey_(coderCopy, v12, v11, @"actionURL");

  v15 = objc_msgSend_asset(self, v13, v14);
  objc_msgSend_encodeObject_forKey_(coderCopy, v16, v15, @"asset");

  v19 = objc_msgSend_button(self, v17, v18);
  objc_msgSend_encodeObject_forKey_(coderCopy, v20, v19, @"button");

  v23 = objc_msgSend_caption(self, v21, v22);
  objc_msgSend_encodeObject_forKey_(coderCopy, v24, v23, @"caption");

  v27 = objc_msgSend_elementID(self, v25, v26);
  objc_msgSend_encodeInteger_forKey_(coderCopy, v28, v27, @"elementID");
  v31 = objc_msgSend_style(self, v29, v30);
  objc_msgSend_encodeObject_forKey_(coderCopy, v32, v31, @"style");

  v36 = objc_msgSend_tapAction(self, v33, v34);
  objc_msgSend_encodeObject_forKey_(coderCopy, v35, v36, @"tapAction");
}

@end