@interface NSSet(MSVSequence)
- (double)msv_reduceIntoCGFloat:()MSVSequence by:;
- (double)msv_reduceIntoDouble:()MSVSequence by:;
- (float)msv_reduceIntoFloat:()MSVSequence by:;
- (id)msv_compactMap:()MSVSequence;
- (id)msv_filter:()MSVSequence;
- (id)msv_firstWhere:()MSVSequence;
- (id)msv_flatMap:()MSVSequence;
- (id)msv_map:()MSVSequence;
- (id)msv_reduceIntoObject:()MSVSequence by:;
- (uint64_t)msv_reduceIntoBool:()MSVSequence by:;
- (uint64_t)msv_reduceIntoInt32:()MSVSequence by:;
- (uint64_t)msv_reduceIntoInt64:()MSVSequence by:;
- (uint64_t)msv_reduceIntoInt:()MSVSequence by:;
- (uint64_t)msv_reduceIntoUInt32:()MSVSequence by:;
- (uint64_t)msv_reduceIntoUInt64:()MSVSequence by:;
- (uint64_t)msv_reduceIntoUInt:()MSVSequence by:;
@end

@implementation NSSet(MSVSequence)

- (id)msv_reduceIntoObject:()MSVSequence by:
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v6;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  selfCopy = self;
  v10 = [selfCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
  v11 = v8;
  if (v10)
  {
    v12 = v10;
    v13 = *v18;
    v11 = v8;
    do
    {
      v14 = 0;
      v15 = v11;
      do
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(selfCopy);
        }

        v11 = v7[2](v7, v15, *(*(&v17 + 1) + 8 * v14));

        ++v14;
        v15 = v11;
      }

      while (v12 != v14);
      v12 = [selfCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }

  return v11;
}

- (uint64_t)msv_reduceIntoUInt64:()MSVSequence by:
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  selfCopy = self;
  v8 = [selfCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(selfCopy);
        }

        a3 = v6[2](v6, a3, *(*(&v13 + 1) + 8 * v11++));
      }

      while (v9 != v11);
      v9 = [selfCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  return a3;
}

- (uint64_t)msv_reduceIntoUInt32:()MSVSequence by:
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  selfCopy = self;
  v8 = [selfCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(selfCopy);
        }

        a3 = v6[2](v6, a3, *(*(&v13 + 1) + 8 * v11++));
      }

      while (v9 != v11);
      v9 = [selfCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  return a3;
}

- (uint64_t)msv_reduceIntoUInt:()MSVSequence by:
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  selfCopy = self;
  v8 = [selfCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(selfCopy);
        }

        a3 = v6[2](v6, a3, *(*(&v13 + 1) + 8 * v11++));
      }

      while (v9 != v11);
      v9 = [selfCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  return a3;
}

- (uint64_t)msv_reduceIntoInt64:()MSVSequence by:
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  selfCopy = self;
  v8 = [selfCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(selfCopy);
        }

        a3 = v6[2](v6, a3, *(*(&v13 + 1) + 8 * v11++));
      }

      while (v9 != v11);
      v9 = [selfCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  return a3;
}

- (uint64_t)msv_reduceIntoInt32:()MSVSequence by:
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  selfCopy = self;
  v8 = [selfCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(selfCopy);
        }

        a3 = v6[2](v6, a3, *(*(&v13 + 1) + 8 * v11++));
      }

      while (v9 != v11);
      v9 = [selfCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  return a3;
}

- (uint64_t)msv_reduceIntoInt:()MSVSequence by:
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  selfCopy = self;
  v8 = [selfCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(selfCopy);
        }

        a3 = v6[2](v6, a3, *(*(&v13 + 1) + 8 * v11++));
      }

      while (v9 != v11);
      v9 = [selfCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  return a3;
}

- (double)msv_reduceIntoDouble:()MSVSequence by:
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  selfCopy = self;
  v8 = [selfCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(selfCopy);
        }

        a2 = v6[2](v6, *(*(&v13 + 1) + 8 * v11++), a2);
      }

      while (v9 != v11);
      v9 = [selfCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  return a2;
}

- (double)msv_reduceIntoCGFloat:()MSVSequence by:
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  selfCopy = self;
  v8 = [selfCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(selfCopy);
        }

        a2 = v6[2](v6, *(*(&v13 + 1) + 8 * v11++), a2);
      }

      while (v9 != v11);
      v9 = [selfCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  return a2;
}

- (float)msv_reduceIntoFloat:()MSVSequence by:
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  selfCopy = self;
  v8 = [selfCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(selfCopy);
        }

        a2 = v6[2](v6, *(*(&v13 + 1) + 8 * v11++), a2);
      }

      while (v9 != v11);
      v9 = [selfCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  return a2;
}

- (uint64_t)msv_reduceIntoBool:()MSVSequence by:
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  selfCopy = self;
  v8 = [selfCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(selfCopy);
        }

        a3 = v6[2](v6, a3 & 1, *(*(&v13 + 1) + 8 * v11++));
      }

      while (v9 != v11);
      v9 = [selfCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  return a3;
}

- (id)msv_flatMap:()MSVSequence
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [self count];
  selfCopy = self;
  v7 = v4;
  v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:v5];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = selfCopy;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = v7[2](v7, *(*(&v17 + 1) + 8 * i));
        [v8 addObjectsFromArray:{v14, v17}];
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  v15 = [v8 copy];

  return v15;
}

- (id)msv_firstWhere:()MSVSequence
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

- (id)msv_filter:()MSVSequence
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(self, "count")}];
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
        if (v4[2](v4, v11))
        {
          [v5 addObject:{v11, v14}];
        }
      }

      v8 = [selfCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];

  return v12;
}

- (id)msv_compactMap:()MSVSequence
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(self, "count")}];
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

        v11 = v4[2](v4, *(*(&v14 + 1) + 8 * i));
        if (v11)
        {
          [v5 addObject:{v11, v14}];
        }
      }

      v8 = [selfCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];

  return v12;
}

- (id)msv_map:()MSVSequence
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(self, "count")}];
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

        v11 = v4[2](v4, *(*(&v14 + 1) + 8 * i));
        [v5 addObject:{v11, v14}];
      }

      v8 = [selfCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];

  return v12;
}

@end