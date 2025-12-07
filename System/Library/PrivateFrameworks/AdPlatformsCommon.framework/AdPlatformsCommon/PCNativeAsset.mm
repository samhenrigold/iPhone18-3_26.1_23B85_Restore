@interface PCNativeAsset
- (PCNativeAsset)init;
- (PCNativeAsset)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PCNativeAsset

- (PCNativeAsset)init
{
  v3.receiver = self;
  v3.super_class = PCNativeAsset;
  result = [(PCNativeAsset *)&v3 init];
  if (result)
  {
    result->_location = -1;
  }

  return result;
}

- (PCNativeAsset)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7 = objc_msgSend_init(self, v5, v6);
  if (v7)
  {
    v8 = objc_opt_class();
    v10 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v9, v8, @"name");
    name = v7->_name;
    v7->_name = v10;

    v7->_location = objc_msgSend_decodeInt32ForKey_(coderCopy, v12, @"location");
    v13 = objc_alloc(MEMORY[0x1E695DFD8]);
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v17 = objc_msgSend_initWithObjects_(v13, v16, v14, v15, 0);
    v19 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v18, v17, @"assetInformation");
    assetInformation = v7->_assetInformation;
    v7->_assetInformation = v19;

    v7->_adamID = objc_msgSend_decodeInt64ForKey_(coderCopy, v21, @"adamID");
    v22 = objc_opt_class();
    v24 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v23, v22, @"treatment");
    treatment = v7->_treatment;
    v7->_treatment = v24;
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v7 = objc_msgSend_name(self, v5, v6);
  objc_msgSend_encodeObject_forKey_(coderCopy, v8, v7, @"name");

  v11 = objc_msgSend_location(self, v9, v10);
  objc_msgSend_encodeInt32_forKey_(coderCopy, v12, v11, @"location");
  v15 = objc_msgSend_assetInformation(self, v13, v14);
  objc_msgSend_encodeObject_forKey_(coderCopy, v16, v15, @"assetInformation");

  v19 = objc_msgSend_adamID(self, v17, v18);
  objc_msgSend_encodeInt64_forKey_(coderCopy, v20, v19, @"adamID");
  v24 = objc_msgSend_treatment(self, v21, v22);
  objc_msgSend_encodeObject_forKey_(coderCopy, v23, v24, @"treatment");
}

@end