@interface NSArray(MSVSequence)
- (double)msv_reduceIntoCGFloat:()MSVSequence by:;
- (double)msv_reduceIntoCGFloat:()MSVSequence enumeratedBy:;
- (double)msv_reduceIntoDouble:()MSVSequence by:;
- (double)msv_reduceIntoDouble:()MSVSequence enumeratedBy:;
- (float)msv_reduceIntoFloat:()MSVSequence by:;
- (float)msv_reduceIntoFloat:()MSVSequence enumeratedBy:;
- (id)msv_compactMap:()MSVSequence;
- (id)msv_enumeratedCompactMap:()MSVSequence;
- (id)msv_enumeratedMap:()MSVSequence;
- (id)msv_filter:()MSVSequence;
- (id)msv_firstWhere:()MSVSequence;
- (id)msv_flatMap:()MSVSequence;
- (id)msv_map:()MSVSequence;
- (id)msv_prefixUpToIndex:()MSVSequence;
- (id)msv_reduceIntoObject:()MSVSequence by:;
- (id)msv_reduceIntoObject:()MSVSequence enumeratedBy:;
- (id)msv_suffixFromIndex:()MSVSequence;
- (uint64_t)msv_reduceIntoBool:()MSVSequence by:;
- (uint64_t)msv_reduceIntoBool:()MSVSequence enumeratedBy:;
- (uint64_t)msv_reduceIntoInt32:()MSVSequence by:;
- (uint64_t)msv_reduceIntoInt32:()MSVSequence enumeratedBy:;
- (uint64_t)msv_reduceIntoInt64:()MSVSequence by:;
- (uint64_t)msv_reduceIntoInt64:()MSVSequence enumeratedBy:;
- (uint64_t)msv_reduceIntoInt:()MSVSequence by:;
- (uint64_t)msv_reduceIntoInt:()MSVSequence enumeratedBy:;
- (uint64_t)msv_reduceIntoUInt32:()MSVSequence by:;
- (uint64_t)msv_reduceIntoUInt32:()MSVSequence enumeratedBy:;
- (uint64_t)msv_reduceIntoUInt64:()MSVSequence by:;
- (uint64_t)msv_reduceIntoUInt64:()MSVSequence enumeratedBy:;
- (uint64_t)msv_reduceIntoUInt:()MSVSequence by:;
- (uint64_t)msv_reduceIntoUInt:()MSVSequence enumeratedBy:;
@end

@implementation NSArray(MSVSequence)

- (id)msv_reduceIntoObject:()MSVSequence enumeratedBy:
{
  v6 = a3;
  v7 = a4;
  v8 = v6;
  v9 = v8;
  if ([self count])
  {
    v10 = 0;
    v11 = v8;
    do
    {
      v12 = [self objectAtIndexedSubscript:v10];
      v9 = v7[2](v7, v11, v12, v10);

      ++v10;
      v11 = v9;
    }

    while (v10 < [self count]);
  }

  return v9;
}

- (uint64_t)msv_reduceIntoUInt64:()MSVSequence enumeratedBy:
{
  v6 = a4;
  if ([self count])
  {
    v7 = 0;
    do
    {
      v8 = [self objectAtIndexedSubscript:v7];
      a3 = v6[2](v6, a3, v8, v7);

      ++v7;
    }

    while (v7 < [self count]);
  }

  return a3;
}

- (uint64_t)msv_reduceIntoUInt32:()MSVSequence enumeratedBy:
{
  v6 = a4;
  if ([self count])
  {
    v7 = 0;
    do
    {
      v8 = [self objectAtIndexedSubscript:v7];
      a3 = v6[2](v6, a3, v8, v7);

      ++v7;
    }

    while (v7 < [self count]);
  }

  return a3;
}

- (uint64_t)msv_reduceIntoUInt:()MSVSequence enumeratedBy:
{
  v6 = a4;
  if ([self count])
  {
    v7 = 0;
    do
    {
      v8 = [self objectAtIndexedSubscript:v7];
      a3 = v6[2](v6, a3, v8, v7);

      ++v7;
    }

    while (v7 < [self count]);
  }

  return a3;
}

- (uint64_t)msv_reduceIntoInt64:()MSVSequence enumeratedBy:
{
  v6 = a4;
  if ([self count])
  {
    v7 = 0;
    do
    {
      v8 = [self objectAtIndexedSubscript:v7];
      a3 = v6[2](v6, a3, v8, v7);

      ++v7;
    }

    while (v7 < [self count]);
  }

  return a3;
}

- (uint64_t)msv_reduceIntoInt32:()MSVSequence enumeratedBy:
{
  v6 = a4;
  if ([self count])
  {
    v7 = 0;
    do
    {
      v8 = [self objectAtIndexedSubscript:v7];
      a3 = v6[2](v6, a3, v8, v7);

      ++v7;
    }

    while (v7 < [self count]);
  }

  return a3;
}

- (uint64_t)msv_reduceIntoInt:()MSVSequence enumeratedBy:
{
  v6 = a4;
  if ([self count])
  {
    v7 = 0;
    do
    {
      v8 = [self objectAtIndexedSubscript:v7];
      a3 = v6[2](v6, a3, v8, v7);

      ++v7;
    }

    while (v7 < [self count]);
  }

  return a3;
}

- (double)msv_reduceIntoDouble:()MSVSequence enumeratedBy:
{
  v6 = a4;
  if ([self count])
  {
    v7 = 0;
    do
    {
      v8 = [self objectAtIndexedSubscript:v7];
      a2 = v6[2](v6, v8, v7, a2);

      ++v7;
    }

    while (v7 < [self count]);
  }

  return a2;
}

- (double)msv_reduceIntoCGFloat:()MSVSequence enumeratedBy:
{
  v6 = a4;
  if ([self count])
  {
    v7 = 0;
    do
    {
      v8 = [self objectAtIndexedSubscript:v7];
      a2 = v6[2](v6, v8, v7, a2);

      ++v7;
    }

    while (v7 < [self count]);
  }

  return a2;
}

- (float)msv_reduceIntoFloat:()MSVSequence enumeratedBy:
{
  v6 = a4;
  if ([self count])
  {
    v7 = 0;
    do
    {
      v8 = [self objectAtIndexedSubscript:v7];
      a2 = v6[2](v6, v8, v7, a2);

      ++v7;
    }

    while (v7 < [self count]);
  }

  return a2;
}

- (uint64_t)msv_reduceIntoBool:()MSVSequence enumeratedBy:
{
  v6 = a4;
  if ([self count])
  {
    v7 = 0;
    do
    {
      v8 = [self objectAtIndexedSubscript:v7];
      a3 = v6[2](v6, a3 & 1, v8, v7);

      ++v7;
    }

    while (v7 < [self count]);
  }

  return a3;
}

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
  v4 = a3;
  v5 = [self mutableCopy];
  if ([self count])
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = [self objectAtIndexedSubscript:v7];
      if ((v4[2](v4, v8) & 1) == 0)
      {
        [v5 removeObjectAtIndex:v7 - v6++];
      }

      ++v7;
    }

    while (v7 < [self count]);
  }

  v9 = [v5 copy];

  return v9;
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

- (id)msv_enumeratedCompactMap:()MSVSequence
{
  v4 = a3;
  v5 = [self mutableCopy];
  if ([self count])
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = [self objectAtIndexedSubscript:v7];
      v9 = v4[2](v4, v8, v7);
      v10 = v9;
      if (v9)
      {
        if (v9 != v8)
        {
          [v5 setObject:v9 atIndexedSubscript:v7 - v6];
        }
      }

      else
      {
        [v5 removeObjectAtIndex:v7 - v6++];
      }

      ++v7;
    }

    while (v7 < [self count]);
  }

  v11 = [v5 copy];

  return v11;
}

- (id)msv_compactMap:()MSVSequence
{
  v4 = MEMORY[0x1B26EC6C0](a3, a2);
  v5 = [self msv_enumeratedCompactMap:v4];

  return v5;
}

- (id)msv_enumeratedMap:()MSVSequence
{
  v4 = a3;
  v5 = [self mutableCopy];
  if ([self count])
  {
    v6 = 0;
    do
    {
      v7 = [self objectAtIndexedSubscript:v6];
      v8 = v4[2](v4, v7, v6);
      if (v8 != v7)
      {
        [v5 setObject:v8 atIndexedSubscript:v6];
      }

      ++v6;
    }

    while (v6 < [self count]);
  }

  v9 = [v5 copy];

  return v9;
}

- (id)msv_map:()MSVSequence
{
  v4 = MEMORY[0x1B26EC6C0](a3, a2);
  v5 = [self msv_enumeratedMap:v4];

  return v5;
}

- (id)msv_suffixFromIndex:()MSVSequence
{
  if (a3)
  {
    if ([self count] <= a3)
    {
      selfCopy = MEMORY[0x1E695E0F0];
    }

    else
    {
      selfCopy = [self subarrayWithRange:{a3, objc_msgSend(self, "count") - a3}];
    }
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (id)msv_prefixUpToIndex:()MSVSequence
{
  if ([self count] == a3)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = [self subarrayWithRange:{0, a3}];
  }

  return selfCopy;
}

@end