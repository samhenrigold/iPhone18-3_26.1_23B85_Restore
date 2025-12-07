@interface NSDictionary(HUAdditions)
- (uint64_t)computeHashFromContents;
@end

@implementation NSDictionary(HUAdditions)

- (uint64_t)computeHashFromContents
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [self hash];
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
        v9 = HFComputeHashFromContents(v8) ^ v2;
        v10 = [selfCopy objectForKeyedSubscript:{v8, v12}];
        v2 = v9 ^ HFComputeHashFromContents(v10);
      }

      v5 = [selfCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  return v2;
}

@end