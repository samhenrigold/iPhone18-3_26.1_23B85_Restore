@interface NSDictionary(AVTSecureDecoding)
- (id)avt_objectForKey:()AVTSecureDecoding ofClass:didFail:error:;
- (id)avt_objectForKey:()AVTSecureDecoding ofClasses:didFail:error:;
- (void)avt_mutableContainersCopy;
@end

@implementation NSDictionary(AVTSecureDecoding)

- (id)avt_objectForKey:()AVTSecureDecoding ofClass:didFail:error:
{
  v23 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = [self objectForKeyedSubscript:?];
  if (v10 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v12 = MEMORY[0x1E696AEC0];
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v15 = [v12 stringWithFormat:v14, v9];

    v17 = avt_default_log(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22 = v15;
      _os_log_impl(&dword_1BB472000, v17, OS_LOG_TYPE_DEFAULT, "Decoding error: %@", buf, 0xCu);
    }

    if (a6)
    {
      v18 = MEMORY[0x1E696ABC0];
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:? forKeys:? count:?];
      *a6 = [v18 errorWithDomain:? code:? userInfo:?];
    }

    *a5 = 1;

    v11 = 0;
  }

  else
  {
    v11 = v10;
  }

  return v11;
}

- (id)avt_objectForKey:()AVTSecureDecoding ofClasses:didFail:error:
{
  v29 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = [self objectForKeyedSubscript:?];
  if (v12)
  {
    v13 = v11;
    v14 = [v13 countByEnumeratingWithState:? objects:? count:?];
    if (v14)
    {
      v15 = v14;
      v16 = MEMORY[0];
      while (2)
      {
        for (i = 0; i != v15; i = (i + 1))
        {
          if (MEMORY[0] != v16)
          {
            objc_enumerationMutation(v13);
          }

          if (objc_opt_isKindOfClass())
          {
            v25 = v12;
            goto LABEL_16;
          }
        }

        v15 = [v13 countByEnumeratingWithState:? objects:? count:?];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    v18 = MEMORY[0x1E696AEC0];
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    v13 = [v18 stringWithFormat:v20, v10, 0];

    v22 = avt_default_log(v21);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v28 = v13;
      _os_log_impl(&dword_1BB472000, v22, OS_LOG_TYPE_DEFAULT, "Decoding error: %@", buf, 0xCu);
    }

    if (a6)
    {
      v23 = MEMORY[0x1E696ABC0];
      v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:? forKeys:? count:?];
      *a6 = [v23 errorWithDomain:? code:? userInfo:?];
    }

    v25 = 0;
    *a5 = 1;
LABEL_16:
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

- (void)avt_mutableContainersCopy
{
  v2 = objc_alloc(MEMORY[0x1E695DF90]);
  [self count];
  v3 = [v2 initWithCapacity:?];
  [self enumerateKeysAndObjectsUsingBlock:?];

  return v3;
}

@end