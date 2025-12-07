@interface NSArray(CPLCopying)
- (__CFString)cplFullDescription;
- (uint64_t)cplDeepCopy;
@end

@implementation NSArray(CPLCopying)

- (uint64_t)cplDeepCopy
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = [self count];
  if (v2)
  {
    v3 = v2;
    memset(v11, 0, sizeof(v11));
    if (v2 >= 0xB)
    {
      v4 = malloc_type_calloc(v2, 8uLL, 0x80040B8603338uLL);
    }

    else
    {
      v4 = v11;
    }

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __34__NSArray_CPLCopying__cplDeepCopy__block_invoke;
    v10[3] = &__block_descriptor_40_e15_v32__0_8Q16_B24l;
    v10[4] = v4;
    [self enumerateObjectsUsingBlock:v10];
    v6 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:v4 count:v3];
    for (i = 0; i != v3; ++i)
    {
      v8 = *(v4 + i);
      *(v4 + i) = 0;
    }

    if (v4 != v11)
    {
      free(v4);
    }

    for (j = 72; j != -8; j -= 8)
    {
    }

    return v6;
  }

  else
  {

    return [self copy];
  }
}

- (__CFString)cplFullDescription
{
  v18 = *MEMORY[0x1E69E9840];
  if ([self count])
  {
    v2 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"["];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    obj = self;
    v3 = [obj countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v14;
      v6 = @"\n  %@";
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v14 != v5)
          {
            objc_enumerationMutation(obj);
          }

          cplFullDescription = [*(*(&v13 + 1) + 8 * i) cplFullDescription];
          v9 = [cplFullDescription componentsSeparatedByString:@"\n"];
          v10 = [v9 componentsJoinedByString:@"\n  "];
          [(__CFString *)v2 appendFormat:v6, v10];

          v6 = @",\n  %@";
        }

        v4 = [obj countByEnumeratingWithState:&v13 objects:v17 count:16];
        v6 = @",\n  %@";
      }

      while (v4);
    }

    [(__CFString *)v2 appendString:@"\n]"];
  }

  else
  {
    v2 = @"[]";
  }

  return v2;
}

@end