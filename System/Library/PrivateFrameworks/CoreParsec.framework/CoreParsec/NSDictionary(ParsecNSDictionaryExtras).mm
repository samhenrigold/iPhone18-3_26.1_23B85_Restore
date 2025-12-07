@interface NSDictionary(ParsecNSDictionaryExtras)
- (id)parsec_URLForKey:()ParsecNSDictionaryExtras;
- (id)parsec_dictionaryByMappingKeysUsingBlock:()ParsecNSDictionaryExtras;
- (uint64_t)parsec_BOOLForKey:()ParsecNSDictionaryExtras;
- (void)parsec_UUIDForKey:()ParsecNSDictionaryExtras;
- (void)parsec_arrayForKey:()ParsecNSDictionaryExtras;
- (void)parsec_dataForKey:()ParsecNSDictionaryExtras;
- (void)parsec_dateForKey:()ParsecNSDictionaryExtras;
- (void)parsec_dictionaryForKey:()ParsecNSDictionaryExtras;
- (void)parsec_numberForKey:()ParsecNSDictionaryExtras;
- (void)parsec_stringForKey:()ParsecNSDictionaryExtras;
@end

@implementation NSDictionary(ParsecNSDictionaryExtras)

- (id)parsec_dictionaryByMappingKeysUsingBlock:()ParsecNSDictionaryExtras
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(self, "count")}];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  selfCopy = self;
  v7 = [selfCopy countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v26;
    v10 = v4 + 16;
    v11 = 0x1E695D000uLL;
    v24 = v4;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(selfCopy);
        }

        v13 = *(*(&v25 + 1) + 8 * i);
        v14 = (*(v4 + 2))(v4, v13);
        v15 = [selfCopy objectForKeyedSubscript:v13];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v15 parsec_dictionaryByMappingKeysUsingBlock:v4];
          v16 = selfCopy;
          v17 = v8;
          v18 = v10;
          v19 = v9;
          v20 = v5;
          v22 = v21 = v11;

          v15 = v22;
          v11 = v21;
          v5 = v20;
          v9 = v19;
          v10 = v18;
          v8 = v17;
          selfCopy = v16;
          v4 = v24;
        }

        [v5 setObject:v15 forKeyedSubscript:v14];
      }

      v8 = [selfCopy countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v8);
  }

  return v5;
}

- (void)parsec_UUIDForKey:()ParsecNSDictionaryExtras
{
  v1 = [self objectForKey:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;

  return v2;
}

- (id)parsec_URLForKey:()ParsecNSDictionaryExtras
{
  v1 = [self objectForKey:?];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v1 length])
  {
    v2 = [MEMORY[0x1E695DFF8] URLWithString:v1];
LABEL_6:
    v3 = v2;
    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
    goto LABEL_6;
  }

  v3 = 0;
LABEL_8:

  return v3;
}

- (void)parsec_dictionaryForKey:()ParsecNSDictionaryExtras
{
  v1 = [self objectForKey:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;

  return v2;
}

- (void)parsec_arrayForKey:()ParsecNSDictionaryExtras
{
  v1 = [self objectForKey:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;

  return v2;
}

- (void)parsec_dateForKey:()ParsecNSDictionaryExtras
{
  v1 = [self objectForKey:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;

  return v2;
}

- (void)parsec_dataForKey:()ParsecNSDictionaryExtras
{
  v1 = [self objectForKey:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;

  return v2;
}

- (void)parsec_numberForKey:()ParsecNSDictionaryExtras
{
  v1 = [self objectForKey:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;

  return v2;
}

- (void)parsec_stringForKey:()ParsecNSDictionaryExtras
{
  v1 = [self objectForKey:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;

  return v2;
}

- (uint64_t)parsec_BOOLForKey:()ParsecNSDictionaryExtras
{
  v1 = [self parsec_numberForKey:?];
  bOOLValue = [v1 BOOLValue];

  return bOOLValue;
}

@end