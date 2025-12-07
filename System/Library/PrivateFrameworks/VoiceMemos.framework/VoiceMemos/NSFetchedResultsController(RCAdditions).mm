@interface NSFetchedResultsController(RCAdditions)
- (id)rc_sectionsByName;
@end

@implementation NSFetchedResultsController(RCAdditions)

- (id)rc_sectionsByName
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  sections = [self sections];
  v4 = [sections countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(sections);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        name = [v8 name];
        [v2 setObject:v8 forKeyedSubscript:name];
      }

      v5 = [sections countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  return v2;
}

@end