@interface NSArray
@end

@implementation NSArray

uint64_t __50__NSArray_MTAdditions__mt_firstObjectPassingTest___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    return (*(v1 + 16))();
  }

  else
  {
    return 1;
  }
}

uint64_t __50__NSArray_MTAdditions__mt_firstObjectPassingTest___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = (*(*(a1 + 32) + 16))();
  *a4 = result;
  return result;
}

uint64_t __40__NSArray_MTAdditions__mt_uniqueOrdered__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v6 = v3;
    v3 = [*(a1 + 32) containsObject:v3];
    v4 = v6;
    if ((v3 & 1) == 0)
    {
      v3 = [*(a1 + 40) addObject:v6];
      v4 = v6;
    }
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

void __62__NSArray_MTStride__concurrentMapWithStrideSize_on_withBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = objc_autoreleasePoolPush();
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [*(a1 + 32) subarrayForStrideIndex:a2 withStrideSize:{*(a1 + 48), 0}];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v5);
        }

        (*(*(a1 + 40) + 16))();
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  objc_autoreleasePoolPop(v4);
}

@end