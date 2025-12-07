@interface CUFileResponse
- (CUFileResponse)initWithDictionary:(id)dictionary error:(id *)error;
- (void)encodeWithDictionary:(id)dictionary;
@end

@implementation CUFileResponse

- (void)encodeWithDictionary:(id)dictionary
{
  v21 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v5 = self->_fileItems;
  if ([(NSArray *)v5 count])
  {
    v15 = dictionaryCopy;
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = v5;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        v11 = 0;
        do
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v16 + 1) + 8 * v11);
          v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
          [v12 encodeWithDictionary:v13];
          [v6 addObject:v13];

          ++v11;
        }

        while (v9 != v11);
        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }

    dictionaryCopy = v15;
    [v15 setObject:v6 forKeyedSubscript:@"fIts"];
  }

  if (self->_flags)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
    [dictionaryCopy setObject:v14 forKeyedSubscript:&unk_1F06A2F80];
  }
}

- (CUFileResponse)initWithDictionary:(id)dictionary error:(id *)error
{
  v34 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [(CUFileResponse *)self init];
  if (!v7)
  {
    if (error)
    {
      NSErrorF_safe(*MEMORY[0x1E696A768], 4294960596, "Init failed");
      *error = v23 = 0;
    }

    else
    {
      v23 = 0;
    }

    goto LABEL_17;
  }

  TypeID = CFArrayGetTypeID();
  v9 = CFDictionaryGetTypedValue(dictionaryCopy, @"fIts", TypeID, 0);
  if (!v9)
  {
    goto LABEL_13;
  }

  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v26 = v9;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (!v12)
  {
    goto LABEL_12;
  }

  v13 = v12;
  v14 = *v30;
  while (2)
  {
    for (i = 0; i != v13; ++i)
    {
      if (*v30 != v14)
      {
        objc_enumerationMutation(v11);
      }

      v16 = *(*(&v29 + 1) + 8 * i);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v9 = v26;
        if (error)
        {
          *error = NSErrorF_safe(*MEMORY[0x1E696A768], 4294960540, "Non-dict file item");
        }

        goto LABEL_23;
      }

      v17 = [CUFileItem alloc];
      v28 = 0;
      v18 = [(CUFileItem *)v17 initWithDictionary:v16 error:&v28];
      v19 = v28;
      v20 = v19;
      if (!v18)
      {
        v9 = v26;
        if (error)
        {
          v25 = v19;
          *error = v20;
        }

LABEL_23:
        v23 = 0;
        goto LABEL_16;
      }

      [(NSArray *)v10 addObject:v18];
    }

    v13 = [v11 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v13)
    {
      continue;
    }

    break;
  }

LABEL_12:

  fileItems = v7->_fileItems;
  v7->_fileItems = v10;

  v9 = v26;
LABEL_13:
  v27 = 0;
  Int64Ranged = CFDictionaryGetInt64Ranged(dictionaryCopy, &unk_1F06A2F80, 0, 0xFFFFFFFFLL, &v27);
  if (!v27)
  {
    v7->_flags = Int64Ranged;
  }

  v23 = v7;
LABEL_16:

LABEL_17:
  return v23;
}

@end