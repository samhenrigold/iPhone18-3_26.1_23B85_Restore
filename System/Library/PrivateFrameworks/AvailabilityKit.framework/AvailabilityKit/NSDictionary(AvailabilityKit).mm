@interface NSDictionary(AvailabilityKit)
- (id)availabilityKit_stringArrayForKey:()AvailabilityKit allowEmptyString:;
- (id)availabilityKit_stringForKey:()AvailabilityKit;
- (uint64_t)availabilityKit_BOOLForKey:()AvailabilityKit defaultValue:;
@end

@implementation NSDictionary(AvailabilityKit)

- (uint64_t)availabilityKit_BOOLForKey:()AvailabilityKit defaultValue:
{
  v5 = [self objectForKeyedSubscript:a3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    a4 = [v5 BOOLValue];
  }

  return a4;
}

- (id)availabilityKit_stringForKey:()AvailabilityKit
{
  v1 = [self objectForKeyedSubscript:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)availabilityKit_stringArrayForKey:()AvailabilityKit allowEmptyString:
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = [self objectForKeyedSubscript:a3];
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v5;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v17 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v13 = v12;
            v14 = v13;
            if (v13 && ((a4 & 1) != 0 || [v13 length]))
            {
              [v6 addObject:v14];
            }
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }
  }

  v15 = [v6 copy];

  return v15;
}

@end