@interface NSArray(HUAdditions)
- (uint64_t)computeHashFromContents;
@end

@implementation NSArray(HUAdditions)

- (uint64_t)computeHashFromContents
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [self hash];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  selfCopy = self;
  v4 = [selfCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(selfCopy);
        }

        v2 ^= HFComputeHashFromContents(*(*(&v9 + 1) + 8 * v7++));
      }

      while (v5 != v7);
      v5 = [selfCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  return v2;
}

@end