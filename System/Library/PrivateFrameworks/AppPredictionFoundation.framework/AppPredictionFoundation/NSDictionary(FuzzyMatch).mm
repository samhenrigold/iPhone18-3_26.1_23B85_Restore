@interface NSDictionary(FuzzyMatch)
- (uint64_t)atx_isFuzzyMatch:()FuzzyMatch;
@end

@implementation NSDictionary(FuzzyMatch)

- (uint64_t)atx_isFuzzyMatch:()FuzzyMatch
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    if (self == v5)
    {
      v16 = 1;
    }

    else
    {
      v6 = [self count];
      if (v6 == [v5 count])
      {
        v20 = 0u;
        v21 = 0u;
        v18 = 0u;
        v19 = 0u;
        selfCopy = self;
        v8 = [selfCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v19;
          while (2)
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v19 != v10)
              {
                objc_enumerationMutation(selfCopy);
              }

              v12 = *(*(&v18 + 1) + 8 * i);
              v13 = [selfCopy objectForKey:{v12, v18}];
              v14 = [v5 objectForKey:v12];
              v15 = [v13 atx_isFuzzyMatch:v14];

              if (!v15)
              {
                v16 = 0;
                goto LABEL_17;
              }
            }

            v9 = [selfCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
            if (v9)
            {
              continue;
            }

            break;
          }
        }

        v16 = 1;
LABEL_17:
      }

      else
      {
        v16 = 0;
      }
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

@end