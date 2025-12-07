@interface ASMailboxSearchPredicate
- (ASMailboxSearchPredicate)initWithPredicate:(id)predicate;
- (BOOL)isValid;
- (id)getString;
- (id)getStringForComparisonPredicate:(id)predicate;
- (id)getStringForCompoundPredicate:(id)predicate;
- (id)getStringForPredicate:(id)predicate;
@end

@implementation ASMailboxSearchPredicate

- (ASMailboxSearchPredicate)initWithPredicate:(id)predicate
{
  predicateCopy = predicate;
  v9.receiver = self;
  v9.super_class = ASMailboxSearchPredicate;
  v6 = [(ASMailboxSearchPredicate *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_predicate, predicate);
  }

  return v7;
}

- (BOOL)isValid
{
  getString = [(ASMailboxSearchPredicate *)self getString];
  v3 = getString != 0;

  return v3;
}

- (id)getStringForComparisonPredicate:(id)predicate
{
  v27 = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
  predicateOperatorType = [predicateCopy predicateOperatorType];
  leftExpression = [predicateCopy leftExpression];
  rightExpression = [predicateCopy rightExpression];
  if ([leftExpression expressionType] || objc_msgSend(rightExpression, "expressionType"))
  {
    v7 = 0;
    goto LABEL_4;
  }

  constantValue = [leftExpression constantValue];
  constantValue2 = [rightExpression constantValue];
  if (predicateOperatorType >= 5)
  {
    if (predicateOperatorType == 99)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = constantValue;
          if ([v11 isEqualToString:*MEMORY[0x277D03F48]])
          {
            v20 = objc_opt_new();
            v7 = v20;
LABEL_62:
            [v20 appendString:@""];
            [v7 appendString:constantValue2];
            v14 = v7;
            v13 = @"";
LABEL_63:
            [v14 appendString:v13];
            goto LABEL_52;
          }

          if (([v11 isEqualToString:*MEMORY[0x277D03F78]]& 1) == 0 && ([v11 isEqualToString:*MEMORY[0x277D03F20]]& 1) == 0 && ([v11 isEqualToString:*MEMORY[0x277D03F28]]& 1) == 0 && ([v11 isEqualToString:*MEMORY[0x277D03F50]]& 1) == 0 && ([v11 isEqualToString:*MEMORY[0x277D03F68]]& 1) == 0 && ([v11 isEqualToString:*MEMORY[0x277D03F80]]& 1) == 0 && ([v11 isEqualToString:*MEMORY[0x277D03F70]]& 1) == 0 && ![v11 isEqualToString:*MEMORY[0x277D03F18]])
          {
            v15 = DALoggingwithCategory();
            v16 = *(MEMORY[0x277D03988] + 3);
            if (!os_log_type_enabled(v15, v16))
            {
              goto LABEL_50;
            }

            v25 = 138412290;
            v26 = v11;
            v17 = "Predicate left string is not supported for contains operator type. Left string: %@";
            goto LABEL_49;
          }

LABEL_61:
          v7 = objc_opt_new();
          [v7 appendString:v11];
          [v7 appendString:@":"];
          v20 = v7;
          goto LABEL_62;
        }
      }

      v11 = DALoggingwithCategory();
      v18 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v11, v18))
      {
        LOWORD(v25) = 0;
        v19 = "Predicate left or right value is not string type for contains operator type.";
        goto LABEL_39;
      }
    }

    else
    {
      v11 = DALoggingwithCategory();
      v21 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v11, v21))
      {
        v25 = 134217984;
        v26 = predicateOperatorType;
        v19 = "Predicate operator type is not supported. Operator type: %lu";
        v22 = v11;
        v23 = v21;
        v24 = 12;
LABEL_40:
        _os_log_impl(&dword_24A0AC000, v22, v23, v19, &v25, v24);
      }
    }

LABEL_51:
    v7 = 0;
    goto LABEL_52;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = constantValue;
        if (([v11 isEqualToString:*MEMORY[0x277D03F58]]& 1) == 0 && ![v11 isEqualToString:*MEMORY[0x277D03F60]])
        {
          v15 = DALoggingwithCategory();
          v16 = *(MEMORY[0x277D03988] + 3);
          if (os_log_type_enabled(v15, v16))
          {
            v25 = 138412290;
            v26 = v11;
            v17 = "Predicate left value is not supported for right value type. Left value is :%@";
            goto LABEL_49;
          }

          goto LABEL_50;
        }

        if (predicateOperatorType == 4)
        {
          v7 = objc_opt_new();
          [v7 appendString:v11];
          [v7 appendString:@":"];
          if ([constantValue2 BOOLValue])
          {
            v13 = @"yes";
          }

          else
          {
            v13 = @"no";
          }

          v14 = v7;
          goto LABEL_63;
        }

        v15 = DALoggingwithCategory();
        v16 = *(MEMORY[0x277D03988] + 3);
        if (!os_log_type_enabled(v15, v16))
        {
          goto LABEL_50;
        }

        v25 = 138412290;
        v26 = v11;
        v17 = "Predicate operator is not supported for given left value. Left value is :%@";
LABEL_49:
        _os_log_impl(&dword_24A0AC000, v15, v16, v17, &v25, 0xCu);
        goto LABEL_50;
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = constantValue;
        if (![v11 isEqualToString:*MEMORY[0x277D03F30]])
        {
          v15 = DALoggingwithCategory();
          v16 = *(MEMORY[0x277D03988] + 3);
          if (!os_log_type_enabled(v15, v16))
          {
            goto LABEL_50;
          }

          v25 = 138412290;
          v26 = v11;
          v17 = "Predicate left value is not supported for right value type. Left value is :%@";
          goto LABEL_49;
        }

        if (predicateOperatorType != 4)
        {
          v15 = DALoggingwithCategory();
          v16 = *(MEMORY[0x277D03988] + 3);
          if (!os_log_type_enabled(v15, v16))
          {
            goto LABEL_50;
          }

          v25 = 138412290;
          v26 = v11;
          v17 = "Predicate operator is not supported for given left value. Left value is :%@";
          goto LABEL_49;
        }

        goto LABEL_61;
      }
    }

    v11 = DALoggingwithCategory();
    v18 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v11, v18))
    {
      LOWORD(v25) = 0;
      v19 = "Predicate left value is not string type or right value is not date, number, or string type for less, less than, greater, greater than, or equal operator type.";
LABEL_39:
      v22 = v11;
      v23 = v18;
      v24 = 2;
      goto LABEL_40;
    }

    goto LABEL_51;
  }

  v11 = constantValue;
  if (([v11 isEqualToString:*MEMORY[0x277D03F40]]& 1) == 0 && ![v11 isEqualToString:*MEMORY[0x277D03F38]])
  {
    v15 = DALoggingwithCategory();
    v16 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v15, v16))
    {
      v25 = 138412290;
      v26 = v11;
      v17 = "Predicate left value is not supported for less, less than, greater, greater than, or equal operator type. Left value is :%@";
      goto LABEL_49;
    }

LABEL_50:

    goto LABEL_51;
  }

  v7 = objc_opt_new();
  [v7 appendString:v11];
  [v7 appendString:off_278FC7ED8[predicateOperatorType]];
  activeSyncString = [constantValue2 activeSyncString];
  [v7 appendString:activeSyncString];

LABEL_52:
LABEL_4:

  return v7;
}

- (id)getStringForCompoundPredicate:(id)predicate
{
  v36 = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
  compoundPredicateType = [predicateCopy compoundPredicateType];
  if (compoundPredicateType > 2)
  {
    v28 = 0;
  }

  else
  {
    v28 = off_278FC7F00[compoundPredicateType];
  }

  if ([predicateCopy compoundPredicateType])
  {
    v6 = objc_opt_new();
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    subpredicates = [predicateCopy subpredicates];
    v8 = [subpredicates countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (!v8)
    {
      goto LABEL_33;
    }

    v9 = v8;
    v27 = predicateCopy;
    v10 = *v30;
    v11 = 1;
LABEL_7:
    v12 = 0;
    while (1)
    {
      if (*v30 != v10)
      {
        objc_enumerationMutation(subpredicates);
      }

      v13 = *(*(&v29 + 1) + 8 * v12);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        break;
      }

      v14 = [(ASMailboxSearchPredicate *)self getStringForComparisonPredicate:v13];
      if (!v14)
      {
        goto LABEL_23;
      }

      v15 = v14;
      if ((v11 & 1) == 0)
      {
        v18 = @" ";
        [v6 appendString:@" "];
        [v6 appendString:v28];
        v16 = v15;
LABEL_19:
        [v6 appendString:{v18, v27}];
        goto LABEL_20;
      }

      v16 = v14;
LABEL_20:
      [v6 appendString:{v15, v27}];

      v11 = 0;
      if (v9 == ++v12)
      {
        v9 = [subpredicates countByEnumeratingWithState:&v29 objects:v33 count:16];
        v11 = 0;
        if (v9)
        {
          goto LABEL_7;
        }

LABEL_24:
        predicateCopy = v27;
LABEL_33:

        goto LABEL_34;
      }
    }

    v17 = [(ASMailboxSearchPredicate *)self getStringForCompoundPredicate:v13];
    if (!v17)
    {
LABEL_23:

      v6 = 0;
      goto LABEL_24;
    }

    v18 = v17;
    if ((v11 & 1) == 0)
    {
      [v6 appendString:@" "];
      [v6 appendString:v28];
      [v6 appendString:@" "];
    }

    objc_msgSend(v6, "appendString:", @"("), v27;
    v15 = @"");
    v16 = v18;
    goto LABEL_19;
  }

  subpredicates2 = [predicateCopy subpredicates];
  v20 = [subpredicates2 count];

  if (v20 == 1)
  {
    subpredicates3 = [predicateCopy subpredicates];
    subpredicates = [subpredicates3 firstObject];

    v22 = [(ASMailboxSearchPredicate *)self getStringForPredicate:subpredicates];
    if (v22)
    {
      v6 = [MEMORY[0x277CCAB68] stringWithString:v28];
      [v6 appendString:@" "];
      [v6 appendString:v22];
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_33;
  }

  v23 = DALoggingwithCategory();
  v24 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v23, v24))
  {
    subpredicates4 = [predicateCopy subpredicates];
    *buf = 134217984;
    v35 = [subpredicates4 count];
    _os_log_impl(&dword_24A0AC000, v23, v24, "Invalid NOT predicate, because it contains %lu subpredicates.", buf, 0xCu);
  }

  v6 = 0;
LABEL_34:

  return v6;
}

- (id)getStringForPredicate:(id)predicate
{
  predicateCopy = predicate;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(ASMailboxSearchPredicate *)self getStringForComparisonPredicate:predicateCopy];
LABEL_5:
    v8 = v5;
    goto LABEL_7;
  }

  predicate = [(ASMailboxSearchPredicate *)self predicate];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(ASMailboxSearchPredicate *)self getStringForCompoundPredicate:predicateCopy];
    goto LABEL_5;
  }

  v8 = 0;
LABEL_7:

  return v8;
}

- (id)getString
{
  predicate = [(ASMailboxSearchPredicate *)self predicate];
  v4 = [(ASMailboxSearchPredicate *)self getStringForPredicate:predicate];

  return v4;
}

@end