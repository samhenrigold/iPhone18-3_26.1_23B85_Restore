@interface NSSet(FriendKit)
- (id)fkSanitizedDestinationSet;
@end

@implementation NSSet(FriendKit)

- (id)fkSanitizedDestinationSet
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB58] set];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  selfCopy = self;
  v4 = [selfCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(selfCopy);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = v8;
          if ([v9 fkMessageDestinationType])
          {
            fkMessageCanonicalRawAddress = [v9 fkMessageCanonicalRawAddress];
            [v2 addObject:fkMessageCanonicalRawAddress];
          }
        }
      }

      v5 = [selfCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  return v2;
}

@end