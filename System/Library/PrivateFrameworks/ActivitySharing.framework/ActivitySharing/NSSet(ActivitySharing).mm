@interface NSSet(ActivitySharing)
- (id)as_autoreleasingCompactMap:()ActivitySharing;
@end

@implementation NSSet(ActivitySharing)

- (id)as_autoreleasingCompactMap:()ActivitySharing
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    selfCopy = self;
    v7 = [selfCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(selfCopy);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          v12 = objc_autoreleasePoolPush();
          v13 = v4[2](v4, v11);
          if (v13)
          {
            [v5 addObject:{v13, v15}];
          }

          objc_autoreleasePoolPop(v12);
        }

        v8 = [selfCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v5 = [self copy];
  }

  return v5;
}

@end