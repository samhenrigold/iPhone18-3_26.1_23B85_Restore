@interface CFXRemoteFunctionDescription
- (BOOL)isEqual:(id)equal;
- (CFXRemoteFunctionDescription)initWithCoder:(id)coder;
- (unint64_t)stableHashForDictionary:(id)dictionary;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CFXRemoteFunctionDescription

- (BOOL)isEqual:(id)equal
{
  isEqualToString = objc_msgSend_isEqualToString_(self->_functionName, a2, *(equal + 1));
  if (isEqualToString)
  {
    functionConstantValues = self->_functionConstantValues;
    v8 = *(equal + 2);

    LOBYTE(isEqualToString) = objc_msgSend_isEqual_(functionConstantValues, v6, v8);
  }

  return isEqualToString;
}

- (unint64_t)stableHashForDictionary:(id)dictionary
{
  v23 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(dictionary, a2, &v18, v22, 16);
  if (!v4)
  {
    return 0;
  }

  v7 = v4;
  v8 = 0;
  v9 = *v19;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v19 != v9)
      {
        objc_enumerationMutation(dictionary);
      }

      v11 = *(*(&v18 + 1) + 8 * i);
      v12 = objc_msgSend_hash(v11, v5, v6);
      v14 = objc_msgSend_objectForKeyedSubscript_(dictionary, v13, v11);
      v8 ^= v12 ^ objc_msgSend_hash(v14, v15, v16);
    }

    v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(dictionary, v5, &v18, v22, 16);
  }

  while (v7);
  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  functionName = self->_functionName;
  if (functionName)
  {
    objc_msgSend_encodeObject_forKey_(coder, a2, functionName, @"functionName");
  }

  functionConstantValues = self->_functionConstantValues;
  if (functionConstantValues)
  {

    objc_msgSend_encodeObject_forKey_(coder, a2, functionConstantValues, @"constants");
  }
}

- (CFXRemoteFunctionDescription)initWithCoder:(id)coder
{
  v19[2] = *MEMORY[0x1E69E9840];
  v18.receiver = self;
  v18.super_class = CFXRemoteFunctionDescription;
  v4 = [(CFXRemoteFunctionDescription *)&v18 init];
  if (v4)
  {
    v5 = objc_opt_class();
    v7 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v6, v5, @"functionName");
    objc_msgSend_setFunctionName_(v4, v8, v7);
    v9 = MEMORY[0x1E695DFD8];
    v19[0] = objc_opt_class();
    v19[1] = objc_opt_class();
    v11 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v10, v19, 2);
    v13 = objc_msgSend_setWithArray_(v9, v12, v11);
    v15 = objc_msgSend_decodeObjectOfClasses_forKey_(coder, v14, v13, @"constants");
    objc_msgSend_setFunctionConstantValues_(v4, v16, v15);
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CFXRemoteFunctionDescription;
  [(CFXRemoteFunctionDescription *)&v3 dealloc];
}

@end