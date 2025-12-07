@interface NSArray(AVTExtension)
+ (id)avt_arrayWithFloat3:()AVTExtension;
+ (id)avt_arrayWithFloat3:()AVTExtension roundingBehavior:;
+ (id)avt_arrayWithFloat4:()AVTExtension;
+ (id)avt_arrayWithFloat4:()AVTExtension roundingBehavior:;
+ (id)avt_arrayWithFloat4x4:()AVTExtension;
+ (id)avt_arrayWithFloat4x4:()AVTExtension roundingBehavior:;
- (__n128)avt_float3;
- (__n128)avt_float4;
- (__n128)avt_float4x4;
- (void)avt_mutableContainersCopy;
- (void)avt_randomObject;
@end

@implementation NSArray(AVTExtension)

+ (id)avt_arrayWithFloat4x4:()AVTExtension
{
  v18 = [MEMORY[0x1E696AD98] numberWithFloat:?];
  v19 = [MEMORY[0x1E696AD98] numberWithFloat:?];
  v20 = [MEMORY[0x1E696AD98] numberWithFloat:?];
  v21 = [MEMORY[0x1E696AD98] numberWithFloat:?];
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:? count:?];
  v14 = [MEMORY[0x1E696AD98] numberWithFloat:?];
  v15 = [MEMORY[0x1E696AD98] numberWithFloat:?];
  v16 = [MEMORY[0x1E696AD98] numberWithFloat:?];
  v17 = [MEMORY[0x1E696AD98] numberWithFloat:?];
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:? count:?];
  v10 = [MEMORY[0x1E696AD98] numberWithFloat:?];
  v11 = [MEMORY[0x1E696AD98] numberWithFloat:?];
  v12 = [MEMORY[0x1E696AD98] numberWithFloat:?];
  v13 = [MEMORY[0x1E696AD98] numberWithFloat:?];
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:? count:?];
  v6 = [MEMORY[0x1E696AD98] numberWithFloat:?];
  v7 = [MEMORY[0x1E696AD98] numberWithFloat:?];
  v8 = [MEMORY[0x1E696AD98] numberWithFloat:?];
  v9 = [MEMORY[0x1E696AD98] numberWithFloat:?];
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:? count:?];
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:? count:?];

  return v5;
}

+ (id)avt_arrayWithFloat4x4:()AVTExtension roundingBehavior:
{
  v7 = MEMORY[0x1E696AD98];
  v8 = a7;
  v23 = [v7 avt_numberWithFloat:? roundingBehavior:?];
  v24 = [MEMORY[0x1E696AD98] avt_numberWithFloat:? roundingBehavior:?];
  v25 = [MEMORY[0x1E696AD98] avt_numberWithFloat:? roundingBehavior:?];
  v26 = [MEMORY[0x1E696AD98] avt_numberWithFloat:? roundingBehavior:?];
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:? count:?];
  v19 = [MEMORY[0x1E696AD98] avt_numberWithFloat:? roundingBehavior:?];
  v20 = [MEMORY[0x1E696AD98] avt_numberWithFloat:? roundingBehavior:?];
  v21 = [MEMORY[0x1E696AD98] avt_numberWithFloat:? roundingBehavior:?];
  v22 = [MEMORY[0x1E696AD98] avt_numberWithFloat:? roundingBehavior:?];
  v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:? count:?];
  v15 = [MEMORY[0x1E696AD98] avt_numberWithFloat:? roundingBehavior:?];
  v16 = [MEMORY[0x1E696AD98] avt_numberWithFloat:? roundingBehavior:?];
  v17 = [MEMORY[0x1E696AD98] avt_numberWithFloat:? roundingBehavior:?];
  v18 = [MEMORY[0x1E696AD98] avt_numberWithFloat:? roundingBehavior:?];
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:? count:?];
  v12 = [MEMORY[0x1E696AD98] avt_numberWithFloat:? roundingBehavior:?];
  v13 = [MEMORY[0x1E696AD98] avt_numberWithFloat:? roundingBehavior:?];
  v14 = [MEMORY[0x1E696AD98] avt_numberWithFloat:? roundingBehavior:?];
  v9 = [MEMORY[0x1E696AD98] avt_numberWithFloat:? roundingBehavior:?];

  v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:? count:?];
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:? count:?];

  return v10;
}

- (__n128)avt_float4x4
{
  if ([self count] == 4)
  {
    selfCopy = self;
    v40 = [selfCopy objectAtIndexedSubscript:?];
    v39 = [v40 objectAtIndexedSubscript:?];
    [v39 floatValue];
    v43 = v3;
    v38 = [selfCopy objectAtIndexedSubscript:?];
    v37 = [v38 objectAtIndexedSubscript:?];
    [v37 floatValue];
    v42 = v4;
    v36 = [selfCopy objectAtIndexedSubscript:?];
    v35 = [v36 objectAtIndexedSubscript:?];
    [v35 floatValue];
    v41 = v5;
    v34 = [selfCopy objectAtIndexedSubscript:?];
    v33 = [v34 objectAtIndexedSubscript:?];
    [v33 floatValue];
    *&v6 = __PAIR64__(v42, v43);
    *(&v6 + 1) = __PAIR64__(v7, v41);
    v44 = v6;
    v32 = [selfCopy objectAtIndexedSubscript:?];
    v31 = [v32 objectAtIndexedSubscript:?];
    [v31 floatValue];
    v30 = [selfCopy objectAtIndexedSubscript:?];
    v29 = [v30 objectAtIndexedSubscript:?];
    [v29 floatValue];
    v28 = [selfCopy objectAtIndexedSubscript:?];
    v27 = [v28 objectAtIndexedSubscript:?];
    [v27 floatValue];
    v26 = [selfCopy objectAtIndexedSubscript:?];
    v25 = [v26 objectAtIndexedSubscript:?];
    [v25 floatValue];
    v24 = [selfCopy objectAtIndexedSubscript:?];
    v23 = [v24 objectAtIndexedSubscript:?];
    [v23 floatValue];
    v22 = [selfCopy objectAtIndexedSubscript:?];
    v21 = [v22 objectAtIndexedSubscript:?];
    [v21 floatValue];
    v20 = [selfCopy objectAtIndexedSubscript:?];
    v19 = [v20 objectAtIndexedSubscript:?];
    [v19 floatValue];
    v8 = [selfCopy objectAtIndexedSubscript:?];
    v9 = [v8 objectAtIndexedSubscript:?];
    [v9 floatValue];
    v10 = [selfCopy objectAtIndexedSubscript:?];
    v11 = [v10 objectAtIndexedSubscript:?];
    [v11 floatValue];
    v12 = [selfCopy objectAtIndexedSubscript:?];
    v13 = [v12 objectAtIndexedSubscript:?];
    [v13 floatValue];
    v14 = [selfCopy objectAtIndexedSubscript:?];
    v15 = [v14 objectAtIndexedSubscript:?];
    [v15 floatValue];
    v16 = [selfCopy objectAtIndexedSubscript:?];

    v17 = [v16 objectAtIndexedSubscript:?];
    [v17 floatValue];

    return v44;
  }

  else
  {
    return *MEMORY[0x1E69E9B18];
  }
}

+ (id)avt_arrayWithFloat3:()AVTExtension
{
  v3 = [MEMORY[0x1E696AD98] numberWithFloat:?];
  v4 = [MEMORY[0x1E696AD98] numberWithFloat:?];
  v5 = [MEMORY[0x1E696AD98] numberWithFloat:?];
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:? count:?];

  return v1;
}

+ (id)avt_arrayWithFloat3:()AVTExtension roundingBehavior:
{
  v4 = MEMORY[0x1E696AD98];
  v5 = a4;
  v9 = [v4 avt_numberWithFloat:? roundingBehavior:?];
  v10 = [MEMORY[0x1E696AD98] avt_numberWithFloat:? roundingBehavior:?];
  v6 = [MEMORY[0x1E696AD98] avt_numberWithFloat:? roundingBehavior:?];

  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:? count:?];

  return v7;
}

+ (id)avt_arrayWithFloat4:()AVTExtension
{
  v3 = [MEMORY[0x1E696AD98] numberWithFloat:?];
  v4 = [MEMORY[0x1E696AD98] numberWithFloat:?];
  v5 = [MEMORY[0x1E696AD98] numberWithFloat:?];
  v6 = [MEMORY[0x1E696AD98] numberWithFloat:?];
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:? count:?];

  return v1;
}

+ (id)avt_arrayWithFloat4:()AVTExtension roundingBehavior:
{
  v4 = MEMORY[0x1E696AD98];
  v5 = a4;
  v9 = [v4 avt_numberWithFloat:? roundingBehavior:?];
  v10 = [MEMORY[0x1E696AD98] avt_numberWithFloat:? roundingBehavior:?];
  v11 = [MEMORY[0x1E696AD98] avt_numberWithFloat:? roundingBehavior:?];
  v6 = [MEMORY[0x1E696AD98] avt_numberWithFloat:? roundingBehavior:?];

  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:? count:?];

  return v7;
}

- (__n128)avt_float3
{
  v2 = [self count];
  result.n128_u64[0] = 0;
  if (v2 >= 3)
  {
    selfCopy = self;
    v5 = [selfCopy objectAtIndexedSubscript:?];
    [v5 floatValue];
    v13 = v6;
    v7 = [selfCopy objectAtIndexedSubscript:?];
    [v7 floatValue];
    v12 = v8;
    v9 = [selfCopy objectAtIndexedSubscript:?];

    [v9 floatValue];
    v10 = v13;
    DWORD1(v10) = v12;
    DWORD2(v10) = v11;
    v14 = v10;

    return v14;
  }

  return result;
}

- (__n128)avt_float4
{
  v2 = [self count];
  result.n128_u64[0] = 0;
  if (v2 >= 4)
  {
    selfCopy = self;
    v5 = [selfCopy objectAtIndexedSubscript:?];
    [v5 floatValue];
    v16 = v6;
    v7 = [selfCopy objectAtIndexedSubscript:?];
    [v7 floatValue];
    v15 = v8;
    v9 = [selfCopy objectAtIndexedSubscript:?];
    [v9 floatValue];
    v14 = v10;
    v11 = [selfCopy objectAtIndexedSubscript:?];

    [v11 floatValue];
    *&v12 = __PAIR64__(v15, v16);
    *(&v12 + 1) = __PAIR64__(v13, v14);
    v17 = v12;

    return v17;
  }

  return result;
}

- (void)avt_randomObject
{
  v2 = [self count];
  if (v2)
  {
    arc4random_uniform(v2);
    v2 = [self objectAtIndexedSubscript:?];
  }

  return v2;
}

- (void)avt_mutableContainersCopy
{
  v2 = objc_alloc(MEMORY[0x1E695DF70]);
  [self count];
  v3 = [v2 initWithCapacity:?];
  [self enumerateObjectsUsingBlock:?];

  return v3;
}

@end