@interface DNDApplicationIdentifier(Record)
+ (uint64_t)newWithDictionaryRepresentation:()Record context:;
- (id)dictionaryRepresentationWithContext:()Record;
@end

@implementation DNDApplicationIdentifier(Record)

+ (uint64_t)newWithDictionaryRepresentation:()Record context:
{
  v4 = a3;
  v5 = [v4 bs_safeStringForKey:@"bundleID"];
  v6 = [v4 bs_safeNumberForKey:@"platform"];

  unsignedIntegerValue = [v6 unsignedIntegerValue];
  v8 = [[self alloc] initWithBundleID:v5 platform:unsignedIntegerValue];

  return v8;
}

- (id)dictionaryRepresentationWithContext:()Record
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  arrayHealingSource = [v4 arrayHealingSource];
  v7 = [arrayHealingSource countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(arrayHealingSource);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [objc_opt_class() newWithDictionaryRepresentation:v11 context:v4];
        if ([self isEqual:v12])
        {
          v13 = [v11 mutableCopy];

          dictionary = v13;
          goto LABEL_11;
        }
      }

      v8 = [arrayHealingSource countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  bundleID = [self bundleID];
  [dictionary setObject:bundleID forKeyedSubscript:@"bundleID"];

  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(self, "platform")}];
  [dictionary setObject:v15 forKeyedSubscript:@"platform"];

  return dictionary;
}

@end