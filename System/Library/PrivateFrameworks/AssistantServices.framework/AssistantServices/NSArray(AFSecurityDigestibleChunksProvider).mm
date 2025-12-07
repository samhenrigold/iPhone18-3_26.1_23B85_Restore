@interface NSArray(AFSecurityDigestibleChunksProvider)
- (void)af_enumerateDigestibleChunksWithOptions:()AFSecurityDigestibleChunksProvider usingBlock:;
@end

@implementation NSArray(AFSecurityDigestibleChunksProvider)

- (void)af_enumerateDigestibleChunksWithOptions:()AFSecurityDigestibleChunksProvider usingBlock:
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    if ((a3 & 1) == 0)
    {
      v8 = (v6 + 16);
      (*(v6 + 2))(v6, AFSecurityDigestibleChunksProviderType, 4);
      strcpy(v21, "{NSArray=#}");
      (*v8)(v7, v21, 12);
      (*v8)(v7, AFSecurityDigestibleChunksProviderData, 4);
    }

    v9 = objc_autoreleasePoolPush();
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    selfCopy = self;
    v11 = [selfCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
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
            objc_enumerationMutation(selfCopy);
          }

          v15 = *(*(&v16 + 1) + 8 * v14);
          if (objc_opt_respondsToSelector())
          {
            [v15 af_enumerateDigestibleChunksWithOptions:0 usingBlock:{v7, v16}];
          }

          ++v14;
        }

        while (v12 != v14);
        v12 = [selfCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v12);
    }

    objc_autoreleasePoolPop(v9);
    if ((a3 & 1) == 0)
    {
      (*(v7 + 2))(v7, AFSecurityDigestibleChunksProviderEnd, 4);
    }
  }
}

@end