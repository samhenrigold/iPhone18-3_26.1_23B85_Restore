@interface CADCompoundFilter(EKPredicateEvaluating)
- (uint64_t)ekPredicateFilterMatches:()EKPredicateEvaluating;
@end

@implementation CADCompoundFilter(EKPredicateEvaluating)

- (uint64_t)ekPredicateFilterMatches:()EKPredicateEvaluating
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  filters = [self filters];
  v6 = [filters countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(filters);
        }

        v10 = [*(*(&v13 + 1) + 8 * v9) ekPredicateFilterMatches:v4];
        operation = [self operation];
        if (v10)
        {
          if (operation == 1)
          {
            goto LABEL_13;
          }
        }

        else if (!operation)
        {
LABEL_13:

          goto LABEL_14;
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [filters countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = [self operation] == 0;
LABEL_14:

  return v10;
}

@end