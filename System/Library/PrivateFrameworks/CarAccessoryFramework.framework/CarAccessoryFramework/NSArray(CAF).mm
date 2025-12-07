@interface NSArray(CAF)
- (id)arrayRepresentation;
@end

@implementation NSArray(CAF)

- (id)arrayRepresentation
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
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
        if (objc_opt_respondsToSelector())
        {
          dictionaryRepresentation = [v8 dictionaryRepresentation];
LABEL_10:
          v10 = dictionaryRepresentation;
          [v2 addObject:{dictionaryRepresentation, v12}];

          continue;
        }

        if (objc_opt_respondsToSelector())
        {
          dictionaryRepresentation = [v8 arrayRepresentation];
          goto LABEL_10;
        }

        [v2 addObject:{v8, v12}];
      }

      v5 = [selfCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  return v2;
}

@end