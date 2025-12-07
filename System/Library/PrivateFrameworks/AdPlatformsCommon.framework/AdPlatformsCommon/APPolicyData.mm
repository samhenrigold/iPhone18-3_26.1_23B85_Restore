@interface APPolicyData
- (APPolicyData)initWithCoder:(id)coder;
- (BOOL)isEqualToAPPolicyData:(id)data;
- (void)encodeWithCoder:(id)coder;
@end

@implementation APPolicyData

- (APPolicyData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = APPolicyData;
  v5 = [(APPolicyData *)&v20 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v8 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v7, v6, @"creativeIdentifier");
    creativeIdentifier = v5->_creativeIdentifier;
    v5->_creativeIdentifier = v8;

    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v15 = objc_msgSend_setWithObjects_(v10, v14, v11, v12, v13, 0);
    v17 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v16, v15, @"policyValue");
    policyValue = v5->_policyValue;
    v5->_policyValue = v17;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  creativeIdentifier = self->_creativeIdentifier;
  coderCopy = coder;
  objc_msgSend_encodeObject_forKey_(coderCopy, v5, creativeIdentifier, @"creativeIdentifier");
  objc_msgSend_encodeObject_forKey_(coderCopy, v6, self->_policyValue, @"policyValue");
}

- (BOOL)isEqualToAPPolicyData:(id)data
{
  dataCopy = data;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = objc_msgSend_creativeIdentifier(self, v5, v6);
    v10 = objc_msgSend_creativeIdentifier(dataCopy, v8, v9);
    if (objc_msgSend_isEqualToString_(v7, v11, v10))
    {
      v14 = objc_msgSend_policyValue(self, v12, v13);
      v17 = objc_msgSend_policyValue(dataCopy, v15, v16);
      isEqualToDictionary = objc_msgSend_isEqualToDictionary_(v14, v18, v17);
    }

    else
    {
      isEqualToDictionary = 0;
    }
  }

  else
  {
    isEqualToDictionary = 0;
  }

  return isEqualToDictionary;
}

@end