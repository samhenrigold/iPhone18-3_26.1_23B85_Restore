@interface NSArray(NSNull)
- (id)arrayDroppingNSNullValues;
@end

@implementation NSArray(NSNull)

- (id)arrayDroppingNSNullValues
{
  v18 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  selfCopy = self;
  v4 = [selfCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(selfCopy);
        }

        v8 = *(*(&v13 + 1) + 8 * v7);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            arrayDroppingNSNullValues = [v8 arrayDroppingNSNullValues];
LABEL_13:
            v10 = arrayDroppingNSNullValues;
            [array addObject:{arrayDroppingNSNullValues, v13}];

            goto LABEL_14;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            arrayDroppingNSNullValues = [v8 setDroppingNSNullValues];
            goto LABEL_13;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            arrayDroppingNSNullValues = [v8 dictionaryDroppingNSNullValues];
            goto LABEL_13;
          }

          [array addObject:{v8, v13}];
        }

LABEL_14:
        ++v7;
      }

      while (v5 != v7);
      v11 = [selfCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
      v5 = v11;
    }

    while (v11);
  }

  return array;
}

@end