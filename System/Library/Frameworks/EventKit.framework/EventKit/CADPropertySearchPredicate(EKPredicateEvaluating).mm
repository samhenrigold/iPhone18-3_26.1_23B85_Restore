@interface CADPropertySearchPredicate(EKPredicateEvaluating)
- (uint64_t)ekPredicateEvaluateWithObject:()EKPredicateEvaluating;
@end

@implementation CADPropertySearchPredicate(EKPredicateEvaluating)

- (uint64_t)ekPredicateEvaluateWithObject:()EKPredicateEvaluating
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  entityType = [self entityType];
  if (entityType != 101 && entityType != 3 && entityType != 2 || !objc_opt_class() || (objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_24;
  }

  calendarIDs = [self calendarIDs];

  if (calendarIDs)
  {
    v7 = [v4 valueForKeyPath:@"calendar"];
    cADObjectID = [v7 CADObjectID];

    calendarIDs2 = [self calendarIDs];
    v10 = [calendarIDs2 containsObject:cADObjectID];
  }

  else
  {
    v10 = 1;
  }

  sourceID = [self sourceID];

  if (sourceID)
  {
    v12 = [v4 valueForKeyPath:@"calendar.source"];
    cADObjectID2 = [v12 CADObjectID];
    sourceID2 = [self sourceID];
    v15 = [cADObjectID2 isEqual:sourceID2];

    if ((v15 & 1) == 0)
    {
LABEL_24:
      v10 = 0;
      goto LABEL_25;
    }
  }

  else if (!v10)
  {
    goto LABEL_25;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ![v4 isMasterOrDetachedOccurrence])
  {
    goto LABEL_24;
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  filters = [self filters];
  v17 = [filters countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v23;
    while (2)
    {
      v20 = 0;
      do
      {
        if (*v23 != v19)
        {
          objc_enumerationMutation(filters);
        }

        if (![*(*(&v22 + 1) + 8 * v20) ekPredicateFilterMatches:v4])
        {
          v10 = 0;
          goto LABEL_27;
        }

        ++v20;
      }

      while (v18 != v20);
      v18 = [filters countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v18)
      {
        continue;
      }

      break;
    }
  }

  v10 = 1;
LABEL_27:

LABEL_25:
  return v10;
}

@end