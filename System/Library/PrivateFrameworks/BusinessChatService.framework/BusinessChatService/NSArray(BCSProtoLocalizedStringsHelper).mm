@interface NSArray(BCSProtoLocalizedStringsHelper)
- (id)defaultLocalizedStringsValue;
- (id)localizedStringsToDictionary;
@end

@implementation NSArray(BCSProtoLocalizedStringsHelper)

- (id)localizedStringsToDictionary
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(self, "count")}];
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
        text = [v8 text];
        locale = [v8 locale];
        [v2 setObject:text forKeyedSubscript:locale];
      }

      v5 = [selfCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  return v2;
}

- (id)defaultLocalizedStringsValue
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
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(selfCopy);
        }

        v6 = *(*(&v9 + 1) + 8 * i);
        if ([v6 isDefault])
        {
          text = [v6 text];

          goto LABEL_11;
        }
      }

      v3 = [selfCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  selfCopy = [selfCopy firstObject];
  text = [selfCopy text];
LABEL_11:

  return text;
}

@end