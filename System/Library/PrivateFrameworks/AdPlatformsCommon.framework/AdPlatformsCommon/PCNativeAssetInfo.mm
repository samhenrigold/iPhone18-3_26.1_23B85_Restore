@interface PCNativeAssetInfo
- (PCNativeAssetInfo)init;
- (PCNativeAssetInfo)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PCNativeAssetInfo

- (PCNativeAssetInfo)init
{
  v3.receiver = self;
  v3.super_class = PCNativeAssetInfo;
  result = [(PCNativeAssetInfo *)&v3 init];
  if (result)
  {
    result->_contentType = -1;
  }

  return result;
}

- (PCNativeAssetInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8 = objc_msgSend_init(self, v5, v6);
  if (v8)
  {
    *(v8 + 16) = objc_msgSend_decodeInt32ForKey_(coderCopy, v7, @"contentType");
    *(v8 + 24) = objc_msgSend_decodeInt32ForKey_(coderCopy, v9, @"width");
    *(v8 + 32) = objc_msgSend_decodeInt32ForKey_(coderCopy, v10, @"height");
    *(v8 + 48) = objc_msgSend_decodeInt32ForKey_(coderCopy, v11, @"length");
    objc_msgSend_decodeDoubleForKey_(coderCopy, v12, @"bitrate");
    *(v8 + 56) = v13;
    v14 = objc_opt_class();
    v16 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v15, v14, @"url");
    v17 = *(v8 + 40);
    *(v8 + 40) = v16;

    *(v8 + 8) = objc_msgSend_decodeBoolForKey_(coderCopy, v18, @"autoloop");
  }

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = objc_msgSend_contentType(self, v4, v5);
  objc_msgSend_encodeInt32_forKey_(coderCopy, v7, v6, @"contentType");
  v10 = objc_msgSend_width(self, v8, v9);
  objc_msgSend_encodeInt32_forKey_(coderCopy, v11, v10, @"width");
  v14 = objc_msgSend_height(self, v12, v13);
  objc_msgSend_encodeInt32_forKey_(coderCopy, v15, v14, @"height");
  v18 = objc_msgSend_url(self, v16, v17);
  objc_msgSend_encodeObject_forKey_(coderCopy, v19, v18, @"url");

  v22 = objc_msgSend_length(self, v20, v21);
  objc_msgSend_encodeInt32_forKey_(coderCopy, v23, v22, @"length");
  objc_msgSend_bitrate(self, v24, v25);
  objc_msgSend_encodeDouble_forKey_(coderCopy, v26, @"bitrate");
  v29 = objc_msgSend_autoloop(self, v27, v28);
  objc_msgSend_encodeBool_forKey_(coderCopy, v30, v29, @"autoloop");
}

@end