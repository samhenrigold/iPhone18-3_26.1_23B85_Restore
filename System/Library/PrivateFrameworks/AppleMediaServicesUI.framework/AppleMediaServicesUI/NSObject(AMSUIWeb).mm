@interface NSObject(AMSUIWeb)
- (id)_sanitizedServerObject:()AMSUIWeb;
@end

@implementation NSObject(AMSUIWeb)

- (id)_sanitizedServerObject:()AMSUIWeb
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v5 = v4;
LABEL_5:
    v6 = v5;
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = MEMORY[0x1E696AEC0];
    [v4 timeIntervalSince1970];
    v5 = [v8 stringWithFormat:@"%lld", v9];
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = [v4 base64EncodedStringWithOptions:0];
    v6 = [v10 stringWithFormat:@"%@", v11];
LABEL_34:

    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v11 = v4;
    v12 = [v11 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v32;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v32 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [self _sanitizedServerObject:*(*(&v31 + 1) + 8 * i)];
          if (v16)
          {
            [v6 addObject:v16];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v13);
    }

    goto LABEL_34;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v11 = v4;
    v17 = [v11 countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v28;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v28 != v19)
          {
            objc_enumerationMutation(v11);
          }

          v21 = [self _sanitizedServerObject:*(*(&v27 + 1) + 8 * j)];
          if (v21)
          {
            [v6 addObject:v21];
          }
        }

        v18 = [v11 countByEnumeratingWithState:&v27 objects:v35 count:16];
      }

      while (v18);
    }

    goto LABEL_34;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v22 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __45__NSObject_AMSUIWeb___sanitizedServerObject___block_invoke;
    v25[3] = &unk_1E7F27218;
    v25[4] = self;
    v23 = v22;
    v26 = v23;
    [v4 enumerateKeysAndObjectsUsingBlock:v25];
    v24 = v26;
    v6 = v23;
  }

  else
  {
    v6 = 0;
  }

LABEL_6:

  return v6;
}

@end