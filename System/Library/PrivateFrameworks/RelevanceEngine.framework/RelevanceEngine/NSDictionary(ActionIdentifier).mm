@interface NSDictionary(ActionIdentifier)
- (uint64_t)re_actionIdentifierHashValue;
@end

@implementation NSDictionary(ActionIdentifier)

- (uint64_t)re_actionIdentifierHashValue
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  selfCopy = self;
  v2 = [selfCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v5 = *v10;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(selfCopy);
        }

        v7 = [selfCopy objectForKeyedSubscript:{*(*(&v9 + 1) + 8 * i), v9}];
        if (objc_opt_respondsToSelector())
        {
          v4 ^= [v7 re_actionIdentifierHashValue];
        }
      }

      v3 = [selfCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end