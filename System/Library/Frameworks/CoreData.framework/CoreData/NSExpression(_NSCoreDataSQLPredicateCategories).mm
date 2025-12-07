@interface NSExpression(_NSCoreDataSQLPredicateCategories)
- (id)_keypathsForDerivedPropertyValidation:()_NSCoreDataSQLPredicateCategories;
@end

@implementation NSExpression(_NSCoreDataSQLPredicateCategories)

- (id)_keypathsForDerivedPropertyValidation:()_NSCoreDataSQLPredicateCategories
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v26 = 0;
  expressionType = [self expressionType];
  if (expressionType > 9)
  {
    if (expressionType == 10)
    {
      keyPath = [self keyPath];
      goto LABEL_19;
    }

    if (expressionType != 14)
    {
      goto LABEL_27;
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    collection = [self collection];
    v9 = [collection countByEnumeratingWithState:&v22 objects:v29 count:16];
    if (v9)
    {
      v10 = *v23;
LABEL_9:
      v11 = 0;
      while (1)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(collection);
        }

        v12 = [*(*(&v22 + 1) + 8 * v11) _keypathsForDerivedPropertyValidation:&v26];
        v13 = v12;
        if (!v12)
        {
          goto LABEL_29;
        }

        if ([v12 count])
        {
          [v5 addObjectsFromArray:{objc_msgSend(v13, "allObjects")}];
        }

        if (v9 == ++v11)
        {
          v9 = [collection countByEnumeratingWithState:&v22 objects:v29 count:16];
          v14 = 1;
          if (v9)
          {
            goto LABEL_9;
          }

          goto LABEL_21;
        }
      }
    }
  }

  else if (expressionType >= 2)
  {
    if (expressionType == 2)
    {
      keyPath = [self predicateFormat];
LABEL_19:
      [v5 addObject:keyPath];
      goto LABEL_20;
    }

LABEL_27:
    if (a3)
    {
      v20 = MEMORY[0x1E696ABC0];
      v27 = @"expression";
      selfCopy = self;
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&selfCopy forKeys:&v27 count:1];
      v14 = 0;
      *a3 = [v20 errorWithDomain:*MEMORY[0x1E696A250] code:134097 userInfo:v21];
      goto LABEL_21;
    }

LABEL_29:
    v14 = 0;
    goto LABEL_21;
  }

LABEL_20:
  v14 = 1;
LABEL_21:
  v15 = v26;
  if (a3 && v26)
  {
    *a3 = v26;
  }

  [0 drain];
  v16 = 0;
  v17 = v26;
  v18 = v5;
  if (v14)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

@end