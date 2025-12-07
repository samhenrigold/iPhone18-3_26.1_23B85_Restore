@interface PCNativeLocalizedHeadline
- (PCNativeLocalizedHeadline)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PCNativeLocalizedHeadline

- (PCNativeLocalizedHeadline)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7 = objc_msgSend_init(self, v5, v6);
  if (v7)
  {
    v8 = objc_opt_class();
    v10 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v9, v8, @"languageIdentifier");
    languageIdentifier = v7->_languageIdentifier;
    v7->_languageIdentifier = v10;

    v12 = objc_opt_class();
    v14 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v13, v12, @"value");
    value = v7->_value;
    v7->_value = v14;
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v7 = objc_msgSend_languageIdentifier(self, v5, v6);
  objc_msgSend_encodeObject_forKey_(coderCopy, v8, v7, @"languageIdentifier");

  v12 = objc_msgSend_value(self, v9, v10);
  objc_msgSend_encodeObject_forKey_(coderCopy, v11, v12, @"value");
}

@end