@interface NSDictionary(AFSecurityDigestibleChunksProvider)
- (void)af_enumerateDigestibleChunksWithOptions:()AFSecurityDigestibleChunksProvider usingBlock:;
@end

@implementation NSDictionary(AFSecurityDigestibleChunksProvider)

- (void)af_enumerateDigestibleChunksWithOptions:()AFSecurityDigestibleChunksProvider usingBlock:
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    v19 = a3;
    if ((a3 & 1) == 0)
    {
      v8 = (v6 + 16);
      (*(v6 + 2))(v6, AFSecurityDigestibleChunksProviderType, 4);
      strcpy(v25, "{NSDictionary=#}");
      (*v8)(v7, v25, 17);
      (*v8)(v7, AFSecurityDigestibleChunksProviderData, 4);
    }

    allKeys = [self allKeys];
    v10 = [allKeys sortedArrayUsingSelector:sel_compare_];

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v11 = v10;
    v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v21;
      do
      {
        v15 = 0;
        do
        {
          if (*v21 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v20 + 1) + 8 * v15);
          v17 = objc_autoreleasePoolPush();
          if (objc_opt_respondsToSelector())
          {
            v18 = [self objectForKey:v16];
            if (objc_opt_respondsToSelector())
            {
              [v16 af_enumerateDigestibleChunksWithOptions:0 usingBlock:v7];
              [v18 af_enumerateDigestibleChunksWithOptions:0 usingBlock:v7];
            }
          }

          objc_autoreleasePoolPop(v17);
          ++v15;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v13);
    }

    if ((v19 & 1) == 0)
    {
      (*(v7 + 2))(v7, AFSecurityDigestibleChunksProviderEnd, 4);
    }
  }
}

@end