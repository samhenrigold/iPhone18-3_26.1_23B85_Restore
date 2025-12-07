@interface NSArray(MSArrayUtilities)
- (void)MSMutableDeepCopyWithZone:()MSArrayUtilities;
@end

@implementation NSArray(MSArrayUtilities)

- (void)MSMutableDeepCopyWithZone:()MSArrayUtilities
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(self, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  selfCopy = self;
  v7 = [selfCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      v10 = 0;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(selfCopy);
        }

        v11 = *(*(&v16 + 1) + 8 * v10);
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          v12 = [v11 MSMutableDeepCopyWithZone:{a3, v16}];
LABEL_9:
          v13 = v12;
          [v5 addObject:v12];

          goto LABEL_10;
        }

        if ([v11 conformsToProtocol:{&unk_2858D0650, v16}])
        {
          v12 = [v11 copyWithZone:a3];
          goto LABEL_9;
        }

        [v5 addObject:v11];
LABEL_10:
        ++v10;
      }

      while (v8 != v10);
      v14 = [selfCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
      v8 = v14;
    }

    while (v14);
  }

  return v5;
}

@end