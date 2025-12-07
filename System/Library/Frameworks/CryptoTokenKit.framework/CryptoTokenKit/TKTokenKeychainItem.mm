@interface TKTokenKeychainItem
+ (NSDictionary)operationMap;
+ (TKTokenKeychainItem)keychainItemWithInfo:(id)info;
+ (id)accessControlForConstraints:(id)constraints tokenID:(id)d error:(id *)error;
- (NSData)accessControl;
- (NSMutableDictionary)keychainAttributes;
- (TKTokenKeychainItem)initWithItemInfo:(id)info;
- (TKTokenKeychainItem)initWithObjectID:(TKTokenObjectID)objectID;
- (id)description;
- (void)setAccessControl:(id)control;
@end

@implementation TKTokenKeychainItem

- (TKTokenKeychainItem)initWithObjectID:(TKTokenObjectID)objectID
{
  v5 = objectID;
  v9.receiver = self;
  v9.super_class = TKTokenKeychainItem;
  v6 = [(TKTokenKeychainItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_objectID, objectID);
  }

  return v7;
}

- (id)description
{
  objectID = [(TKTokenKeychainItem *)self objectID];
  v4 = [objectID description];

  if ([v4 length] >= 0x21)
  {
    v5 = [v4 substringToIndex:32];
    v6 = [v5 stringByAppendingString:@"..."];

    v4 = v6;
  }

  label = [(TKTokenKeychainItem *)self label];

  v8 = MEMORY[0x1E696AEC0];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v11 = v10;
  if (label)
  {
    label2 = [(TKTokenKeychainItem *)self label];
    v13 = [v8 stringWithFormat:@"<%@: %@ '%@'>", v11, v4, label2];
  }

  else
  {
    v13 = [v8 stringWithFormat:@"<%@: %@>", v10, v4];
  }

  return v13;
}

+ (NSDictionary)operationMap
{
  v5[4] = *MEMORY[0x1E69E9840];
  v4[0] = @"ord";
  v4[1] = @"osgn";
  v5[0] = &unk_1F5A85150;
  v5[1] = &unk_1F5A85168;
  v4[2] = @"od";
  v4[3] = @"ock";
  v5[2] = &unk_1F5A85180;
  v5[3] = &unk_1F5A85198;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:4];

  return v2;
}

+ (id)accessControlForConstraints:(id)constraints tokenID:(id)d error:(id *)error
{
  v21[1] = *MEMORY[0x1E69E9840];
  constraintsCopy = constraints;
  dCopy = d;
  v9 = SecAccessControlCreate();
  if (v9)
  {
    v20 = @"tkid";
    stringRepresentation = [dCopy stringRepresentation];
    v21[0] = stringRepresentation;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];

    if (SecAccessControlSetProtection())
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      operationMap = [self operationMap];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __65__TKTokenKeychainItem_accessControlForConstraints_tokenID_error___block_invoke;
      v17[3] = &unk_1E86B7DF8;
      v18 = constraintsCopy;
      v19 = dictionary;
      v14 = dictionary;
      [operationMap enumerateKeysAndObjectsUsingBlock:v17];

      SecAccessControlSetConstraints();
      v15 = SecAccessControlCopyData();
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

void __65__TKTokenKeychainItem_accessControlForConstraints_tokenID_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  v5 = [*(a1 + 32) objectForKeyedSubscript:a3];
  v6 = v5;
  if (v5 && ([v5 isEqual:MEMORY[0x1E695E110]] & 1) == 0)
  {
    [*(a1 + 40) setObject:v6 forKeyedSubscript:v7];
  }
}

- (void)setAccessControl:(id)control
{
  v35 = *MEMORY[0x1E69E9840];
  controlCopy = control;
  objc_storeStrong(&self->_accessControl, control);
  if (controlCopy)
  {
    v33 = 0;
    v6 = SecAccessControlCreateFromData();
    if (v6)
    {
      v7 = SecAccessControlGetProtection();
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = [v7 objectForKeyedSubscript:@"tkid"];
        tokenID = [(TKTokenKeychainItem *)self tokenID];
        stringRepresentation = [tokenID stringRepresentation];
        v11 = [v8 isEqual:stringRepresentation];

        if (v11)
        {
          v12 = SecAccessControlGetConstraints();
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v27 = v7;
            v28 = v6;
            v13 = [MEMORY[0x1E695E0F8] mutableCopy];
            v29 = 0u;
            v30 = 0u;
            v31 = 0u;
            v32 = 0u;
            v26 = v12;
            v14 = v12;
            v15 = [v14 countByEnumeratingWithState:&v29 objects:v34 count:16];
            if (v15)
            {
              v16 = v15;
              v17 = *v30;
              do
              {
                for (i = 0; i != v16; ++i)
                {
                  if (*v30 != v17)
                  {
                    objc_enumerationMutation(v14);
                  }

                  v19 = *(*(&v29 + 1) + 8 * i);
                  operationMap = [objc_opt_class() operationMap];
                  v21 = [operationMap objectForKeyedSubscript:v19];

                  if (v21)
                  {
                    v22 = [v14 objectForKeyedSubscript:v19];
                    [v13 setObject:v22 forKeyedSubscript:v21];
                  }
                }

                v16 = [v14 countByEnumeratingWithState:&v29 objects:v34 count:16];
              }

              while (v16);
            }

            v23 = [v13 copy];
            constraints = self->_constraints;
            self->_constraints = v23;

            v7 = v27;
            v6 = v28;
            v12 = v26;
          }
        }
      }
    }

    else
    {
      v7 = TK_LOG_token_2(0);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [(TKTokenKeychainItem *)&v33 setAccessControl:controlCopy, v7];
      }
    }

    v25 = v33;
  }

  else
  {
    v25 = self->_constraints;
    self->_constraints = MEMORY[0x1E695E0F8];
  }
}

- (NSData)accessControl
{
  accessControl = self->_accessControl;
  if (!accessControl)
  {
    constraints = [(TKTokenKeychainItem *)self constraints];
    if (constraints)
    {
      tokenID = [(TKTokenKeychainItem *)self tokenID];

      if (tokenID)
      {
        v6 = objc_opt_class();
        tokenID2 = [(TKTokenKeychainItem *)self tokenID];
        v8 = [v6 accessControlForConstraints:constraints tokenID:tokenID2 error:0];
        v9 = self->_accessControl;
        self->_accessControl = v8;
      }
    }

    accessControl = self->_accessControl;
  }

  return accessControl;
}

- (NSMutableDictionary)keychainAttributes
{
  v15[3] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF90];
  v14[0] = *MEMORY[0x1E697AEC8];
  tokenID = [(TKTokenKeychainItem *)self tokenID];
  stringRepresentation = [tokenID stringRepresentation];
  v15[0] = stringRepresentation;
  v14[1] = *MEMORY[0x1E697AEE8];
  encodedObjectID = [(TKTokenKeychainItem *)self encodedObjectID];
  v14[2] = *MEMORY[0x1E697ABD8];
  v7 = *MEMORY[0x1E697ABF8];
  v15[1] = encodedObjectID;
  v15[2] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:3];
  v9 = [v3 dictionaryWithDictionary:v8];

  label = [(TKTokenKeychainItem *)self label];

  if (label)
  {
    label2 = [(TKTokenKeychainItem *)self label];
    [v9 setObject:label2 forKeyedSubscript:*MEMORY[0x1E697ADC8]];
  }

  accessControl = [(TKTokenKeychainItem *)self accessControl];
  if (accessControl)
  {
    [v9 setObject:accessControl forKeyedSubscript:*MEMORY[0x1E697ABC8]];
  }

  return v9;
}

- (TKTokenKeychainItem)initWithItemInfo:(id)info
{
  v30 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  v5 = [TKTokenID alloc];
  v6 = *MEMORY[0x1E697AEC8];
  v7 = [infoCopy objectForKeyedSubscript:*MEMORY[0x1E697AEC8]];
  v8 = [(TKTokenID *)v5 initWithTokenID:v7];

  if (v8)
  {
    v25 = 0;
    v10 = *MEMORY[0x1E697AEE8];
    v11 = [infoCopy objectForKeyedSubscript:*MEMORY[0x1E697AEE8]];
    v24 = 0;
    v12 = [(TKTokenID *)v8 decodedObjectID:v11 isCertificate:&v25 error:&v24];
    v13 = v24;

    if (v12)
    {
      v23.receiver = self;
      v23.super_class = TKTokenKeychainItem;
      v15 = [(TKTokenKeychainItem *)&v23 init];
      v16 = v15;
      if (v15)
      {
        objc_storeStrong(&v15->_objectID, v12);
        [(TKTokenKeychainItem *)v16 setTokenID:v8];
        v17 = [infoCopy objectForKeyedSubscript:*MEMORY[0x1E697ADC8]];
        [(TKTokenKeychainItem *)v16 setLabel:v17];

        v18 = [infoCopy objectForKeyedSubscript:*MEMORY[0x1E697ABC8]];
        [(TKTokenKeychainItem *)v16 setAccessControl:v18];
      }

      self = v16;
      selfCopy = self;
    }

    else
    {
      v20 = TK_LOG_token_2(v14);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v22 = [infoCopy objectForKeyedSubscript:v10];
        *buf = 138543618;
        v27 = v22;
        v28 = 2114;
        v29 = v13;
        _os_log_error_impl(&dword_1DF413000, v20, OS_LOG_TYPE_ERROR, "Failed to recreate TKTokenKeychainItem from attributes: invalid kSecAttrTokenOID: %{public}@, error:%{public}@", buf, 0x16u);
      }

      selfCopy = 0;
    }
  }

  else
  {
    v13 = TK_LOG_token_2(v9);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(TKTokenKeychainItem *)infoCopy initWithItemInfo:v6];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

+ (TKTokenKeychainItem)keychainItemWithInfo:(id)info
{
  infoCopy = info;
  v4 = [infoCopy objectForKeyedSubscript:*MEMORY[0x1E697AFF8]];
  if ([v4 isEqual:*MEMORY[0x1E697B000]])
  {
    v5 = off_1E86B6928;
LABEL_5:
    v6 = [objc_alloc(*v5) initWithItemInfo:infoCopy];
    goto LABEL_7;
  }

  if ([v4 isEqual:*MEMORY[0x1E697B020]])
  {
    v5 = off_1E86B6940;
    goto LABEL_5;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

- (void)setAccessControl:(os_log_t)log .cold.1(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = 138543618;
  v5 = v3;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_1DF413000, log, OS_LOG_TYPE_ERROR, "TKTokenKeychainItem got invalid accessControl, error:%{public}@ data:%{public}@", &v4, 0x16u);
}

- (void)initWithItemInfo:(void *)a1 .cold.1(void *a1, uint64_t a2)
{
  v7 = [a1 objectForKeyedSubscript:a2];
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

@end