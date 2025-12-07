@interface NSXPCConnection(StatusKitAgent)
- (id)sk_stringArrayValueForEntitlement:()StatusKitAgent;
- (id)sk_stringValueForEntitlement:()StatusKitAgent;
- (uint64_t)sk_BOOLeanValueForEntitlement:()StatusKitAgent;
@end

@implementation NSXPCConnection(StatusKitAgent)

- (id)sk_stringArrayValueForEntitlement:()StatusKitAgent
{
  v16 = *MEMORY[0x277D85DE8];
  v1 = [self valueForEntitlement:?];
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v1;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v12;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v11 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v2 addObject:v8];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v5);
    }
  }

  v9 = [v2 copy];

  return v9;
}

- (uint64_t)sk_BOOLeanValueForEntitlement:()StatusKitAgent
{
  v1 = [self valueForEntitlement:?];
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    bOOLValue = [v1 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (id)sk_stringValueForEntitlement:()StatusKitAgent
{
  v1 = [self valueForEntitlement:?];
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end