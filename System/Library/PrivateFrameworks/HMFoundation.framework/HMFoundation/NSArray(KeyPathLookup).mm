@interface NSArray(KeyPathLookup)
- (id)hmf_firstObjectWithValue:()KeyPathLookup forKeyPath:;
@end

@implementation NSArray(KeyPathLookup)

- (id)hmf_firstObjectWithValue:()KeyPathLookup forKeyPath:
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    _HMFPreconditionFailure(@"keyPath");
  }

  v8 = v7;
  if (v6)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    selfCopy = self;
    v10 = [selfCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v10)
    {
      v11 = *v19;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(selfCopy);
          }

          v13 = *(*(&v18 + 1) + 8 * i);
          v14 = [v13 valueForKeyPath:{v8, v18}];
          v15 = [v14 isEqual:v6];

          if (v15)
          {
            v16 = v13;

            goto LABEL_14;
          }
        }

        v10 = [selfCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }
  }

  v16 = 0;
LABEL_14:

  return v16;
}

@end