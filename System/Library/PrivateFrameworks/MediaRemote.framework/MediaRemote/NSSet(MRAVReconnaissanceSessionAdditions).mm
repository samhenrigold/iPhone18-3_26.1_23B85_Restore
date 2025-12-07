@interface NSSet(MRAVReconnaissanceSessionAdditions)
- (uint64_t)mr_containsObjectUsingWeakMatching:()MRAVReconnaissanceSessionAdditions;
@end

@implementation NSSet(MRAVReconnaissanceSessionAdditions)

- (uint64_t)mr_containsObjectUsingWeakMatching:()MRAVReconnaissanceSessionAdditions
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    [self allObjects];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = v21 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v7)
    {
      v8 = *v19;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v19 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v18 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v11 = v10;
            v12 = [v11 length];
            v13 = v12 >= [v5 length] ? v5 : v11;
            v14 = v13 == v11 ? v5 : v11;
            v15 = v13;
            v16 = [v14 containsString:v15];

            if (v16)
            {
              v7 = 1;
              goto LABEL_20;
            }
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_20:
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end