@interface AAMessage
- (AAMessage)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AAMessage

- (AAMessage)initWithCoder:(id)coder
{
  v20 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [(AAMessage *)self init];
  v6 = v5;
  if (v5)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    keysForEncoding = [(AAMessage *)v5 keysForEncoding];
    v8 = [keysForEncoding countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(keysForEncoding);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          v13 = [coderCopy decodeObjectForKey:v12];
          [(AAMessage *)v6 setValue:v13 forKey:v12];
        }

        v9 = [keysForEncoding countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  v17 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  keysForEncoding = [(AAMessage *)self keysForEncoding];
  v6 = [keysForEncoding countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(keysForEncoding);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        v11 = [(AAMessage *)self valueForKey:v10];
        [coderCopy encodeObject:v11 forKey:v10];
      }

      v7 = [keysForEncoding countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

@end