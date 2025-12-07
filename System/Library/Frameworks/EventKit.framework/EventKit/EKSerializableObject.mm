@interface EKSerializableObject
- (EKSerializableObject)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation EKSerializableObject

- (void)encodeWithCoder:(id)coder
{
  v18 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  classesForKey = [objc_opt_class() classesForKey];
  allKeys = [classesForKey allKeys];

  v7 = [allKeys countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(allKeys);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        v12 = [(EKSerializableObject *)self valueForKey:v11];
        [coderCopy encodeObject:v12 forKey:v11];
      }

      v8 = [allKeys countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }
}

- (EKSerializableObject)initWithCoder:(id)coder
{
  v25 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = EKSerializableObject;
  v5 = [(EKSerializableObject *)&v23 init];
  if (v5)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    classesForKey = [objc_opt_class() classesForKey];
    allKeys = [classesForKey allKeys];

    obj = allKeys;
    v8 = [allKeys countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v20;
      do
      {
        v11 = 0;
        do
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v19 + 1) + 8 * v11);
          classesForKey2 = [objc_opt_class() classesForKey];
          v14 = [classesForKey2 objectForKey:v12];

          v15 = [MEMORY[0x1E695DFD8] setWithArray:v14];
          v16 = [coderCopy decodeObjectOfClasses:v15 forKey:v12];

          [(EKSerializableObject *)v5 setValue:v16 forKey:v12];
          ++v11;
        }

        while (v9 != v11);
        v9 = [obj countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v9);
    }
  }

  return v5;
}

@end