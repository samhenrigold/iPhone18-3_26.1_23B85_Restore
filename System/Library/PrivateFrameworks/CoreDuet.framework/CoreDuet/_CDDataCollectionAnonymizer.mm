@interface _CDDataCollectionAnonymizer
- (id)anonymizeArray:(void *)array;
- (id)anonymizeDictionary:(void *)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initWithSalt:(id *)salt;
- (void)anonymizeObject:(void *)object;
@end

@implementation _CDDataCollectionAnonymizer

- (id)initWithSalt:(id *)salt
{
  v4 = a2;
  if (salt)
  {
    v7.receiver = salt;
    v7.super_class = _CDDataCollectionAnonymizer;
    v5 = objc_msgSendSuper2(&v7, sel_init);
    salt = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 1, a2);
    }
  }

  return salt;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [_CDDataCollectionAnonymizer allocWithZone:zone];
  if (self)
  {
    salt = self->_salt;
  }

  else
  {
    salt = 0;
  }

  return [(_CDDataCollectionAnonymizer *)&v4->super.isa initWithSalt:?];
}

- (id)anonymizeArray:(void *)array
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (array)
  {
    v5 = MEMORY[0x1E695DF70];
    [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v3, "count")}];
    objc_claimAutoreleasedReturnValue();
    v6 = OUTLINED_FUNCTION_3_10();
    v7 = [v6 countByEnumeratingWithState:v13 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [(_CDDataCollectionAnonymizer *)array anonymizeObject:?];
          if (v11)
          {
            [v5 addObject:v11];
          }
        }

        v8 = [v6 countByEnumeratingWithState:v13 objects:v15 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)anonymizeObject:(void *)object
{
  v3 = a2;
  if (object)
  {
    v4 = objc_opt_class();
    if (OUTLINED_FUNCTION_8_5(v4))
    {
      v5 = [_CDHashUtilities sha256Hash:v3 withSalt:object[1]];
LABEL_6:
      object = v5;
      goto LABEL_10;
    }

    v6 = objc_opt_class();
    if (OUTLINED_FUNCTION_8_5(v6))
    {
      v5 = v3;
      goto LABEL_6;
    }

    v7 = objc_opt_class();
    if (OUTLINED_FUNCTION_8_5(v7))
    {
      v5 = [(_CDDataCollectionAnonymizer *)object anonymizeArray:v3];
      goto LABEL_6;
    }

    v8 = objc_opt_class();
    if (OUTLINED_FUNCTION_8_5(v8))
    {
      v5 = [(_CDDataCollectionAnonymizer *)object anonymizeDictionary:v3];
      goto LABEL_6;
    }

    object = 0;
  }

LABEL_10:

  return object;
}

- (id)anonymizeDictionary:(void *)dictionary
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (dictionary)
  {
    v5 = MEMORY[0x1E695DF90];
    [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v3, "count")}];
    objc_claimAutoreleasedReturnValue();
    v6 = OUTLINED_FUNCTION_3_10();
    v7 = [v6 countByEnumeratingWithState:v15 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(v15[1] + 8 * i);
          v12 = [v6 objectForKeyedSubscript:v11];
          v13 = [(_CDDataCollectionAnonymizer *)dictionary anonymizeObject:v12];

          if (v13)
          {
            [v5 setObject:v13 forKey:v11];
          }
        }

        v8 = [v6 countByEnumeratingWithState:v15 objects:v17 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end