@interface NSString(PowerlogExtensions)
- (id)stringByReplacingOccurrencesOfStrings:()PowerlogExtensions withString:;
- (id)strip;
- (id)tokenizedByString:()PowerlogExtensions;
- (id)tokenizedByStrings:()PowerlogExtensions;
- (uint64_t)compareFloat:()PowerlogExtensions;
- (uint64_t)compareInt:()PowerlogExtensions;
- (uint64_t)containsStringInArray:()PowerlogExtensions;
- (uint64_t)matchingStringInArray:()PowerlogExtensions;
@end

@implementation NSString(PowerlogExtensions)

- (id)strip
{
  whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v3 = [self stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

  return v3;
}

- (id)tokenizedByString:()PowerlogExtensions
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [MEMORY[0x1E696AE88] scannerWithString:self];
  v7 = objc_opt_new();
  if (([v6 isAtEnd] & 1) == 0)
  {
    v8 = 0;
    do
    {
      v9 = v8;
      v12 = v8;
      v10 = [v6 scanUpToString:v4 intoString:&v12];
      v8 = v12;

      if (v10)
      {
        [v7 addObject:v8];
      }

      else
      {
        [v6 setScanLocation:{objc_msgSend(v6, "scanLocation") + 1}];
      }
    }

    while (![v6 isAtEnd]);
  }

  objc_autoreleasePoolPop(v5);

  return v7;
}

- (id)tokenizedByStrings:()PowerlogExtensions
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{self, 0}];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v25;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v24 + 1) + 8 * i);
        array = [MEMORY[0x1E695DF70] array];
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v12 = v5;
        v13 = [v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v21;
          do
          {
            for (j = 0; j != v14; ++j)
            {
              if (*v21 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = [*(*(&v20 + 1) + 8 * j) tokenizedByString:v10];
              [array addObjectsFromArray:v17];
            }

            v14 = [v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
          }

          while (v14);
        }

        v5 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:array];
      }

      v7 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v7);
  }

  return v5;
}

- (uint64_t)matchingStringInArray:()PowerlogExtensions
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v7 |= [self caseInsensitiveCompare:*(*(&v11 + 1) + 8 * i)] == 0;
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

- (uint64_t)containsStringInArray:()PowerlogExtensions
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v7 |= [self rangeOfString:*(*(&v11 + 1) + 8 * i)] != 0x7FFFFFFFFFFFFFFFLL;
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

- (uint64_t)compareFloat:()PowerlogExtensions
{
  v4 = a3;
  [self floatValue];
  v6 = v5;
  [v4 floatValue];
  v8 = v7;

  v9 = -1;
  if (v6 >= v8)
  {
    v9 = 1;
  }

  if (v6 == v8)
  {
    return 0;
  }

  else
  {
    return v9;
  }
}

- (uint64_t)compareInt:()PowerlogExtensions
{
  v4 = a3;
  intValue = [self intValue];
  intValue2 = [v4 intValue];

  v7 = -1;
  if (intValue >= intValue2)
  {
    v7 = 1;
  }

  if (intValue == intValue2)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

- (id)stringByReplacingOccurrencesOfStrings:()PowerlogExtensions withString:
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  selfCopy = self;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      v13 = selfCopy;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v6);
        }

        selfCopy = [v13 stringByReplacingOccurrencesOfString:*(*(&v15 + 1) + 8 * v12) withString:v7];

        ++v12;
        v13 = selfCopy;
      }

      while (v10 != v12);
      v10 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  return selfCopy;
}

@end