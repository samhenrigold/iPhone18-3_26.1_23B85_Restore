@interface NSCountedSet(Additions)
- (uint64_t)mf_debugDescription;
@end

@implementation NSCountedSet(Additions)

- (uint64_t)mf_debugDescription
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(self, "count")}];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [self countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(self);
        }

        [v2 ef_insertObject:objc_msgSend(MEMORY[0x277CCACA8] usingComparator:"stringWithFormat:" allowDuplicates:{@"\t%@ : %lu", *(*(&v8 + 1) + 8 * v6), objc_msgSend(self, "countForObject:", *(*(&v8 + 1) + 8 * v6))), &__block_literal_global_18, 1}];
        ++v6;
      }

      while (v4 != v6);
      v4 = [self countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"{\n%@\n}", objc_msgSend(v2, "componentsJoinedByString:", @", \n")];
}

@end