@interface NSDictionary(FlatDescription)
- (id)flatDescription;
@end

@implementation NSDictionary(FlatDescription)

- (id)flatDescription
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(self, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  selfCopy = self;
  v4 = [selfCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(selfCopy);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v9 = [selfCopy objectForKey:v8];
        v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %@", v8, v9, v15];
        [v2 addObject:v10];
      }

      v5 = [selfCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  v11 = MEMORY[0x277CCACA8];
  v12 = [v2 componentsJoinedByString:{@", "}];
  v13 = [v11 stringWithFormat:@"{%@}", v12];

  return v13;
}

@end