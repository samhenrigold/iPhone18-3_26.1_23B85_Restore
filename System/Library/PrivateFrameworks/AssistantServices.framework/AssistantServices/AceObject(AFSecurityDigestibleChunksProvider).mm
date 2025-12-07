@interface AceObject(AFSecurityDigestibleChunksProvider)
- (void)af_enumerateDigestibleChunksWithOptions:()AFSecurityDigestibleChunksProvider usingBlock:;
@end

@implementation AceObject(AFSecurityDigestibleChunksProvider)

- (void)af_enumerateDigestibleChunksWithOptions:()AFSecurityDigestibleChunksProvider usingBlock:
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    if (a3)
    {
      v25 = objc_autoreleasePoolPush();
      dictionary = [self dictionary];
      [dictionary af_enumerateDigestibleChunksWithOptions:0 usingBlock:v7];

      objc_autoreleasePoolPop(v25);
    }

    else
    {
      v8 = (v6 + 16);
      (*(v6 + 2))(v6, AFSecurityDigestibleChunksProviderType, 4);
      groupIdentifier = [self groupIdentifier];
      [groupIdentifier af_enumerateDigestibleChunksWithOptions:1 usingBlock:v7];

      encodedClassName = [self encodedClassName];
      [encodedClassName af_enumerateDigestibleChunksWithOptions:1 usingBlock:v7];

      (*v8)(v7, &AFSecurityDigestibleChunksProviderAceId, 4);
      aceId = [self aceId];
      [aceId af_enumerateDigestibleChunksWithOptions:1 usingBlock:v7];

      (*v8)(v7, "!FER", 4);
      refId = [self refId];
      [refId af_enumerateDigestibleChunksWithOptions:1 usingBlock:v7];

      v28 = v7;
      (*v8)(v7, AFSecurityDigestibleChunksProviderData, 4);
      context = objc_autoreleasePoolPush();
      dictionary2 = [self dictionary];
      allKeys = [dictionary2 allKeys];
      v14 = [allKeys sortedArrayUsingSelector:sel_compare_];

      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v15 = v14;
      v16 = [v15 countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v31;
        v19 = *MEMORY[0x1E69C76D0];
        do
        {
          v20 = 0;
          do
          {
            if (*v31 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v21 = *(*(&v30 + 1) + 8 * v20);
            v22 = objc_autoreleasePoolPush();
            if ((objc_msgSend_isEqualToString_(v21) & 1) == 0 && (objc_msgSend_isEqualToString_(v21) & 1) == 0 && (objc_msgSend_isEqualToString_(v21) & 1) == 0 && (objc_msgSend_isEqualToString_(v21) & 1) == 0)
            {
              v23 = v19;
              v24 = [dictionary2 objectForKey:v21];
              if (objc_opt_respondsToSelector())
              {
                [v21 af_enumerateDigestibleChunksWithOptions:0 usingBlock:v28];
                [v24 af_enumerateDigestibleChunksWithOptions:0 usingBlock:v28];
              }

              v19 = v23;
            }

            objc_autoreleasePoolPop(v22);
            ++v20;
          }

          while (v17 != v20);
          v17 = [v15 countByEnumeratingWithState:&v30 objects:v34 count:16];
        }

        while (v17);
      }

      objc_autoreleasePoolPop(context);
      v7 = v28;
      (*(v28 + 2))(v28, AFSecurityDigestibleChunksProviderEnd, 4);
    }
  }
}

@end