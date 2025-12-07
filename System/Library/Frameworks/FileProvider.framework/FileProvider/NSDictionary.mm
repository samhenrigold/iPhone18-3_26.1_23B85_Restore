@interface NSDictionary
@end

@implementation NSDictionary

void __73__NSDictionary_FPFrameworkAdditions__fp_removingObjectsNotKindOfClasses___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v18 = a1;
  v7 = *(a1 + 32);
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = 0;
    v12 = *v20;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v7);
        }

        if (objc_opt_isKindOfClass())
        {
          v14 = v5;

          v10 = v14;
        }

        if (objc_opt_isKindOfClass())
        {
          v15 = v6;

          v11 = v15;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v16 = v18;
    v17 = [v11 fp_removingObjectsNotKindOfClasses:*(v18 + 32)];

    v11 = v17;
    if (!v10)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v16 = v18;
    if (!v10)
    {
      goto LABEL_21;
    }
  }

  if (v11)
  {
    [*(v16 + 40) setObject:v11 forKeyedSubscript:v10];
  }

LABEL_21:
}

void __48__NSDictionary_FPFrameworkAdditions__fp_filter___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ((*(*(a1 + 40) + 16))())
  {
    [*(a1 + 32) setObject:v5 forKey:v6];
  }
}

@end