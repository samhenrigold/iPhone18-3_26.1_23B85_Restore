@interface URLForDictionary
@end

@implementation URLForDictionary

uint64_t ___geo_URLForDictionary_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 hasPrefix:@"_"];
  if (v6 == [v5 hasPrefix:@"_"])
  {
    v7 = [v4 compare:v5];
  }

  else if (v6)
  {
    v7 = 1;
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

void ___geo_URLForDictionary_block_invoke_476(uint64_t a1, void *a2, void *a3, void *a4)
{
  v21 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (v8)
    {
      v10 = v8;
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v17;
        do
        {
          v14 = 0;
          do
          {
            if (*v17 != v13)
            {
              objc_enumerationMutation(v10);
            }

            (*(*(*(*(a1 + 32) + 8) + 40) + 16))();
            ++v14;
          }

          while (v12 != v14);
          v12 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v12);
      }
    }
  }

  else
  {
    v15 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:v7 value:v8];
    [v9 addObject:v15];
  }
}

@end