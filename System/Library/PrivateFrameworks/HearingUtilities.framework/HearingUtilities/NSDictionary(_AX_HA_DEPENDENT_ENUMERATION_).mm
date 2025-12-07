@interface NSDictionary(_AX_HA_DEPENDENT_ENUMERATION_)
- (void)enumerateKeysAndObjectsInDependentOrderUsingBlock:()_AX_HA_DEPENDENT_ENUMERATION_;
@end

@implementation NSDictionary(_AX_HA_DEPENDENT_ENUMERATION_)

- (void)enumerateKeysAndObjectsInDependentOrderUsingBlock:()_AX_HA_DEPENDENT_ENUMERATION_
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  allKeys = [self allKeys];
  v6 = [allKeys sortedArrayUsingComparator:&__block_literal_global_119];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v16 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v15 + 1) + 8 * v11);
      v13 = [self objectForKeyedSubscript:v12];
      v14 = 0;
      v4[2](v4, v12, v13, &v14);
      LOBYTE(v12) = v14;

      if (v12)
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

@end