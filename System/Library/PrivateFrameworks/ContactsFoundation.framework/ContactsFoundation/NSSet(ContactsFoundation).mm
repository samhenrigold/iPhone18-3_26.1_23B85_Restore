@interface NSSet(ContactsFoundation)
- (id)_cn_filter:()ContactsFoundation;
- (id)_cn_firstObjectPassingTest:()ContactsFoundation;
- (id)_cn_indexBy:()ContactsFoundation;
- (id)_cn_map:()ContactsFoundation;
- (uint64_t)_cn_any:()ContactsFoundation;
- (void)_cn_each:()ContactsFoundation;
@end

@implementation NSSet(ContactsFoundation)

- (uint64_t)_cn_any:()ContactsFoundation
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  selfCopy = self;
  v6 = [selfCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(selfCopy);
        }

        if (v4[2](v4, *(*(&v10 + 1) + 8 * i)))
        {
          v6 = 1;
          goto LABEL_11;
        }
      }

      v6 = [selfCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (id)_cn_map:()ContactsFoundation
{
  v4 = a3;
  allObjects = [self allObjects];
  v6 = MEMORY[0x1E695DFD8];
  v7 = [allObjects _cn_map:v4];

  v8 = [v6 setWithArray:v7];

  return v8;
}

- (id)_cn_filter:()ContactsFoundation
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [self mutableCopy];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  selfCopy = self;
  v7 = [selfCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(selfCopy);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if ((v4[2](v4, v11) & 1) == 0)
        {
          [v5 removeObject:{v11, v14}];
        }
      }

      v8 = [selfCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];

  return v12;
}

- (id)_cn_firstObjectPassingTest:()ContactsFoundation
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  selfCopy = self;
  v6 = [selfCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(selfCopy);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if (v4[2](v4, v9))
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [selfCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (id)_cn_indexBy:()ContactsFoundation
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  selfCopy = self;
  v7 = [selfCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(selfCopy);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        v12 = v4[2](v4, v11);
        [dictionary setObject:v11 forKey:{v12, v14}];
      }

      v8 = [selfCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  return dictionary;
}

- (void)_cn_each:()ContactsFoundation
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  selfCopy = self;
  v6 = [selfCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(selfCopy);
        }

        v4[2](v4, *(*(&v10 + 1) + 8 * v9++));
      }

      while (v7 != v9);
      v7 = [selfCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

@end