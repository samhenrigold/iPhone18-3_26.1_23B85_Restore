@interface NSCompoundPredicate(_NSCoreDataSQLPredicateCategories)
- (id)_keypathsForDerivedPropertyValidation:()_NSCoreDataSQLPredicateCategories;
- (id)minimalFormInContext:()_NSCoreDataSQLPredicateCategories;
@end

@implementation NSCompoundPredicate(_NSCoreDataSQLPredicateCategories)

- (id)minimalFormInContext:()_NSCoreDataSQLPredicateCategories
{
  v5 = objc_autoreleasePoolPush();
  v6 = [objc_msgSend(self "predicateOperator")];
  v7 = v6;
  objc_autoreleasePoolPop(v5);

  return v6;
}

- (id)_keypathsForDerivedPropertyValidation:()_NSCoreDataSQLPredicateCategories
{
  v23 = *MEMORY[0x1E69E9840];
  v21 = 0;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  subpredicates = [self subpredicates];
  v5 = [subpredicates countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (!v5)
  {
    goto LABEL_14;
  }

  v6 = 0;
  v7 = *v18;
  while (2)
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v18 != v7)
      {
        objc_enumerationMutation(subpredicates);
      }

      v9 = [*(*(&v17 + 1) + 8 * i) _keypathsForDerivedPropertyValidation:&v21];
      v10 = v9;
      if (!v9)
      {
        v11 = 0;
        goto LABEL_17;
      }

      if ([v9 count])
      {
        if (v6)
        {
          [v6 addObjectsFromArray:{objc_msgSend(v10, "allObjects")}];
        }

        else
        {
          v6 = v10;
        }
      }
    }

    v5 = [subpredicates countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v5)
    {
      continue;
    }

    break;
  }

  if (!v6)
  {
LABEL_14:
    v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  }

  v11 = v6;
LABEL_17:
  v12 = v21;
  if (a3 && v21)
  {
    *a3 = v21;
  }

  [0 drain];
  v13 = 0;
  v14 = v21;
  v15 = v6;
  return v11;
}

@end