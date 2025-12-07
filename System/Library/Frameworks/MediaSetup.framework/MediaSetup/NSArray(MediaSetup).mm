@interface NSArray(MediaSetup)
- (id)ms_objectsWithOptions:()MediaSetup passingTest:;
- (uint64_t)ms_anyPassingTest:()MediaSetup;
@end

@implementation NSArray(MediaSetup)

- (id)ms_objectsWithOptions:()MediaSetup passingTest:
{
  v6 = a4;
  if (v6)
  {
    v7 = [self indexesOfObjectsWithOptions:a3 passingTest:v6];
    if ([v7 count])
    {
      v8 = [self objectsAtIndexes:v7];
    }

    else
    {
      v8 = MEMORY[0x277CBEBF8];
    }
  }

  else
  {
    v8 = MEMORY[0x277CBEBF8];
  }

  return v8;
}

- (uint64_t)ms_anyPassingTest:()MediaSetup
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  selfCopy = self;
  v6 = [selfCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(selfCopy);
        }

        if (v4[2](v4, *(*(&v10 + 1) + 8 * i)))
        {
          v6 = 1;
          goto LABEL_11;
        }
      }

      v6 = [selfCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

@end