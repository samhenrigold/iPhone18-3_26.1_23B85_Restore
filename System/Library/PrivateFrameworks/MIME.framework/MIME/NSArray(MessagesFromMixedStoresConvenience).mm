@interface NSArray(MessagesFromMixedStoresConvenience)
- (id)mf_dictionaryWithMessagesSortedByStore;
@end

@implementation NSArray(MessagesFromMixedStoresConvenience)

- (id)mf_dictionaryWithMessagesSortedByStore
{
  v16 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  selfCopy = self;
  v4 = [selfCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(selfCopy);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          messageStore = [v7 messageStore];
          if (messageStore)
          {
            v9 = [dictionary objectForKey:messageStore];
            if (!v9)
            {
              v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(selfCopy, "count")}];
              [dictionary setObject:v9 forKey:messageStore];
            }

            [v9 addObject:v7];
          }
        }
      }

      v4 = [selfCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  return dictionary;
}

@end