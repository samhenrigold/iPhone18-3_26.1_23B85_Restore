@interface NSCountedSet(Additions)
- (id)mf_debugDescription;
@end

@implementation NSCountedSet(Additions)

- (id)mf_debugDescription
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(self, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  selfCopy = self;
  v4 = [selfCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(selfCopy);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        v9 = MEMORY[0x277CCACA8];
        v10 = [selfCopy countForObject:v8];
        v11 = [v9 stringWithFormat:@"\t%@ : %lu", v8, v10, v16];
        [v2 vf_insertObject:v11 usingComparator:&__block_literal_global_20 allowDuplicates:1];
      }

      v5 = [selfCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  v12 = MEMORY[0x277CCACA8];
  v13 = [v2 componentsJoinedByString:{@", \n"}];
  v14 = [v12 stringWithFormat:@"{\n%@\n}", v13];

  return v14;
}

@end