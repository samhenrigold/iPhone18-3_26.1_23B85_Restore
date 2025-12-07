@interface NSComparisonPredicate(PPSSQLitePredicate)
- (id)_checkTypeForValue:()PPSSQLitePredicate inKeyPath:;
- (id)pps_sqlPredicateForSelect;
@end

@implementation NSComparisonPredicate(PPSSQLitePredicate)

- (id)pps_sqlPredicateForSelect
{
  leftExpression = [self leftExpression];
  rightExpression = [self rightExpression];
  predicateOperatorType = [self predicateOperatorType];
  if (predicateOperatorType > 3)
  {
    if (predicateOperatorType > 6)
    {
      if (predicateOperatorType == 7)
      {
        v5 = 0;
        v6 = 7;
      }

      else
      {
        if (predicateOperatorType != 10)
        {
          goto LABEL_37;
        }

        v5 = 1;
        v6 = 8;
      }
    }

    else if (predicateOperatorType == 4)
    {
      v5 = 0;
      v6 = 1;
    }

    else
    {
      if (predicateOperatorType != 5)
      {
        goto LABEL_37;
      }

      v5 = 0;
      v6 = 2;
    }

LABEL_19:
    if ([leftExpression expressionType] == 3)
    {
      [leftExpression keyPath];
    }

    else
    {
      [leftExpression description];
    }
    v7 = ;
    expressionType = [rightExpression expressionType];
    if (expressionType)
    {
      v9 = v5 ^ 1;
      if (expressionType != 14)
      {
        v9 = 1;
      }

      if (v9)
      {
        [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Unexpected constant value in right side of comparison expression: %@", self}];
        v11 = 0;
        goto LABEL_30;
      }

      collection = [rightExpression collection];
    }

    else
    {
      collection = [rightExpression constantValue];
    }

    v11 = collection;
LABEL_30:
    v12 = [self _checkTypeForValue:v11 inKeyPath:v7];

    if (v5)
    {
      [PPSSQLiteContainsPredicate containsPredicateWithProperty:v7 values:v12];
    }

    else
    {
      [PPSSQLiteComparisonPredicate predicateWithProperty:v7 value:v12 comparisonType:v6];
    }
    v13 = ;

    goto LABEL_34;
  }

  if (predicateOperatorType > 1)
  {
    v5 = 0;
    if (predicateOperatorType == 2)
    {
      v6 = 5;
    }

    else
    {
      v6 = 6;
    }

    goto LABEL_19;
  }

  if (!predicateOperatorType)
  {
    v5 = 0;
    v6 = 3;
    goto LABEL_19;
  }

  if (predicateOperatorType == 1)
  {
    v5 = 0;
    v6 = 4;
    goto LABEL_19;
  }

LABEL_37:
  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Unsupported operator type in comparison expression: %@", self}];
  v13 = 0;
LABEL_34:

  return v13;
}

- (id)_checkTypeForValue:()PPSSQLitePredicate inKeyPath:
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (v3)
    {
LABEL_3:
      null = v3;
LABEL_16:
      allObjects = null;
      goto LABEL_17;
    }

LABEL_15:
    null = [MEMORY[0x277CBEB68] null];
    goto LABEL_16;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (v3)
    {
      v5 = MEMORY[0x277CCABB0];
      [v3 timeIntervalSinceReferenceDate];
      null = [v5 numberWithDouble:?];
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (v3)
    {
      null = [v3 UUIDString];
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (v3)
    {
      null = [v3 absoluteString];
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (v3)
    {
      goto LABEL_3;
    }

    goto LABEL_15;
  }

  if (![v3 conformsToProtocol:&unk_28702FB30])
  {
    goto LABEL_3;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  v8 = [MEMORY[0x277CBEB58] set];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = v3;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v16 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && ![v14 expressionType])
        {
          constantValue = [v14 constantValue];

          v14 = constantValue;
        }

        [v8 addObject:{v14, v16}];
      }

      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  allObjects = [v8 allObjects];

LABEL_17:

  return allObjects;
}

@end