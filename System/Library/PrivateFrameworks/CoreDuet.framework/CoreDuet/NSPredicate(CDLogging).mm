@interface NSPredicate(CDLogging)
- (id)cd_sanitizeForLogging;
@end

@implementation NSPredicate(CDLogging)

- (id)cd_sanitizeForLogging
{
  v35 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    selfCopy = self;
    v11 = selfCopy;
    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_20;
    }

    leftExpression = [selfCopy leftExpression];
    cd_containsSensitiveKeyPath = [leftExpression cd_containsSensitiveKeyPath];

    if (cd_containsSensitiveKeyPath)
    {
      v16 = [MEMORY[0x1E696ABC8] expressionForConstantValue:@"<redacted>"];
      v17 = objc_alloc(MEMORY[0x1E696AB18]);
      leftExpression2 = [v11 leftExpression];
      comparisonPredicateModifier = [v11 comparisonPredicateModifier];
      predicateOperatorType = [v11 predicateOperatorType];
      options = [v11 options];
      v22 = v17;
      v23 = leftExpression2;
      v24 = v16;
    }

    else
    {
      rightExpression = [v11 rightExpression];
      cd_containsSensitiveKeyPath2 = [rightExpression cd_containsSensitiveKeyPath];

      if (!cd_containsSensitiveKeyPath2)
      {
        v28 = v11;
        goto LABEL_19;
      }

      v16 = [MEMORY[0x1E696ABC8] expressionForConstantValue:@"<redacted>"];
      v27 = objc_alloc(MEMORY[0x1E696AB18]);
      leftExpression2 = [v11 rightExpression];
      comparisonPredicateModifier = [v11 comparisonPredicateModifier];
      predicateOperatorType = [v11 predicateOperatorType];
      options = [v11 options];
      v22 = v27;
      v23 = v16;
      v24 = leftExpression2;
    }

    v28 = [v22 initWithLeftExpression:v23 rightExpression:v24 modifier:comparisonPredicateModifier type:predicateOperatorType options:options];

LABEL_19:
    v11 = v28;
    goto LABEL_20;
  }

  selfCopy2 = self;
  v4 = objc_opt_new();
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  subpredicates = [selfCopy2 subpredicates];
  v6 = [subpredicates countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v31;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v31 != v8)
        {
          objc_enumerationMutation(subpredicates);
        }

        cd_sanitizeForLogging = [*(*(&v30 + 1) + 8 * i) cd_sanitizeForLogging];
        if (cd_sanitizeForLogging)
        {
          [v4 addObject:cd_sanitizeForLogging];
        }
      }

      v7 = [subpredicates countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v7);
  }

  v11 = [objc_alloc(MEMORY[0x1E696AB28]) initWithType:objc_msgSend(selfCopy2 subpredicates:{"compoundPredicateType"), v4}];
LABEL_20:

  return v11;
}

@end