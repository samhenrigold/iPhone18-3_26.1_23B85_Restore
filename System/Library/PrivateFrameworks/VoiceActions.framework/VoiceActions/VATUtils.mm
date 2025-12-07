@interface VATUtils
+ (id)formatFromTokens:(id)tokens;
@end

@implementation VATUtils

+ (id)formatFromTokens:(id)tokens
{
  v22 = *MEMORY[0x277D85DE8];
  tokensCopy = tokens;
  v4 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = tokensCopy;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    LOBYTE(hasSpaceAfter) = 0;
    v9 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        if ([v4 length] && ((hasSpaceAfter & 1) != 0 || objc_msgSend(v11, "hasSpaceBefore")))
        {
          [v4 appendString:@" "];
        }

        tokenName = [v11 tokenName];
        [v4 appendString:tokenName];

        hasSpaceAfter = [v11 hasSpaceAfter];
        [v4 appendString:@" Confidence: "];
        v13 = MEMORY[0x277CCABB0];
        [v11 confidence];
        v14 = [v13 numberWithDouble:?];
        stringValue = [v14 stringValue];
        [v4 appendString:stringValue];
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);

    if (hasSpaceAfter)
    {
      [v4 appendString:@" "];
    }
  }

  else
  {
  }

  return v4;
}

@end