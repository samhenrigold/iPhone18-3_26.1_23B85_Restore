@interface _CSVisualizerPredicate
+ (id)constantValueForExpression:(id)expression;
+ (id)predicateWithFormatString:(id)string error:(id *)error;
+ (id)translateNSPredicate:(id)predicate error:(id *)error;
+ (void)getRanges:(void *)ranges matchingPredicate:(id)predicate inDescription:(id)description;
- (BOOL)evaluateNumerically:(id)numerically;
- (BOOL)evaluateWithObject:(id)object substitutionVariables:(id)variables;
- (BOOL)getRanges:(void *)ranges inDescription:(id)description options:(unint64_t)options limit:(unint64_t)limit searchedInRange:(_NSRange *)range;
- (_CSVisualizerPredicate)initWithExpression:(id)expression;
- (_CSVisualizerPredicate)initWithSearchString:(id)string forTitle:(id)title operator:(unint64_t)operator error:(id *)error;
- (id)debugDescription;
- (id)predicateFormat;
@end

@implementation _CSVisualizerPredicate

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  predicateFormat = [(_CSVisualizerPredicate *)self predicateFormat];
  v6 = [v3 stringWithFormat:@"<%@ %p> { %@ }", v4, self, predicateFormat];

  return v6;
}

- (id)predicateFormat
{
  v3 = objc_autoreleasePoolPush();
  if (self->_title)
  {
    title = self->_title;
  }

  else
  {
    title = @"*";
  }

  v5 = [MEMORY[0x1E696ABC8] expressionForConstantValue:title];
  v6 = [MEMORY[0x1E696ABC8] expressionForConstantValue:self->_searchString];
  v7 = [objc_alloc(MEMORY[0x1E696AB18]) initWithLeftExpression:v5 rightExpression:v6 modifier:0 type:self->_operator options:0];
  predicateFormat = [v7 predicateFormat];

  objc_autoreleasePoolPop(v3);

  return predicateFormat;
}

- (BOOL)evaluateWithObject:(id)object substitutionVariables:(id)variables
{
  v9 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    __p = 0;
    v7 = 0;
    v8 = 0;
    operator new();
  }

  return 0;
}

- (BOOL)getRanges:(void *)ranges inDescription:(id)description options:(unint64_t)options limit:(unint64_t)limit searchedInRange:(_NSRange *)range
{
  v36[2] = *MEMORY[0x1E69E9840];
  descriptionCopy = description;
  context = objc_autoreleasePoolPush();
  v32 = self->_searchString;
  string = [descriptionCopy string];
  v14 = string;
  title = self->_title;
  if (title)
  {
    v16 = [_CSVisualizer rangeOfValueForTitle:title inDescription:descriptionCopy];
    v18 = v17;
    v34.location = v16;
    v34.length = v17;
    v19 = v16 != 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v18 = [string length];
    v16 = 0;
    v34.location = 0;
    v34.length = v18;
    v19 = 1;
  }

  v30 = v19;
  if (range)
  {
    *range = v34;
  }

  if (v14 && v16 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (self->_numericPredicate)
    {
      if ([(_CSVisualizerPredicate *)self evaluateNumerically:descriptionCopy])
      {
        std::vector<_NSRange>::push_back[abi:nn200100](ranges, &v34);
      }
    }

    else if ((self->_operator & 0xFFFFFFFFFFFFFFFELL) == 6)
    {
      if ([_CSVisualizerPredicate getRanges:inDescription:options:limit:searchedInRange:]::once != -1)
      {
        dispatch_once(&[_CSVisualizerPredicate getRanges:inDescription:options:limit:searchedInRange:]::once, &__block_literal_global_273);
      }

      if (self->_operator == 7)
      {
        v20 = &[_CSVisualizerPredicate getRanges:inDescription:options:limit:searchedInRange:]::likePredicate;
      }

      else
      {
        v20 = &[_CSVisualizerPredicate getRanges:inDescription:options:limit:searchedInRange:]::matchesPredicate;
      }

      v21 = *v20;
      v35[0] = @"HAYSTACK";
      v22 = [v14 substringWithRange:{v16, v18}];
      v35[1] = @"NEEDLE";
      v36[0] = v22;
      v36[1] = v32;
      v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:2];

      if ([v21 evaluateWithObject:0 substitutionVariables:v23])
      {
        std::vector<_NSRange>::push_back[abi:nn200100](ranges, &v34);
      }
    }

    else if (v18)
    {
      v24 = v18;
      v25 = v16;
      do
      {
        if (limit <= (*(ranges + 1) - *ranges) >> 4)
        {
          break;
        }

        v26 = [v14 rangeOfString:v32 options:options | 1 range:{v25, v24}];
        v28 = v27;
        *&v33 = v26;
        *(&v33 + 1) = v27;
        if (v26 == 0x7FFFFFFFFFFFFFFFLL)
        {
          break;
        }

        std::vector<_NSRange>::push_back[abi:nn200100](ranges, &v33);
        v25 = v28 + v26;
        if (v28 + v26 == 0x7FFFFFFFFFFFFFFFLL)
        {
          break;
        }

        v24 = v16 - v25 + v18;
      }

      while (v24);
    }
  }

  objc_autoreleasePoolPop(context);
  return v30;
}

- (BOOL)evaluateNumerically:(id)numerically
{
  v25[1] = *MEMORY[0x1E69E9840];
  numericallyCopy = numerically;
  v5 = numericallyCopy;
  title = self->_title;
  if (title)
  {
    v8 = [_CSVisualizer rangeOfValueForTitle:title inDescription:numericallyCopy];
  }

  else
  {
    v7 = [numericallyCopy length];
    v8 = 0;
  }

  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = [v5 attributedSubstringFromRange:{v8, v7}];
    v11 = [v10 attribute:@"_CSVNum" atIndex:0 effectiveRange:0];
    if (!v11)
    {
      v16 = objc_alloc(MEMORY[0x1E696AE88]);
      string = [v10 string];
      v14 = [v16 initWithString:string];

      [v14 setCaseSensitive:0];
      v23 = 0;
      v21 = 0uLL;
      v22 = 0;
      if ([v14 scanString:@"0x" intoString:0] && objc_msgSend(v14, "scanHexLongLong:", &v23))
      {
        v18 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v23];
      }

      else
      {
        if (([v14 scanDecimal:&v21] & 1) == 0)
        {
          v9 = 0;
          goto LABEL_8;
        }

        v19 = v21;
        v20 = v22;
        v18 = [MEMORY[0x1E696AB90] decimalNumberWithDecimal:&v19];
      }

      v11 = v18;

      if (!v11)
      {
        v9 = 0;
        goto LABEL_9;
      }
    }

    numericPredicate = self->_numericPredicate;
    v24 = @"HAYSTACK";
    v25[0] = v11;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    v9 = [(NSPredicate *)numericPredicate evaluateWithObject:0 substitutionVariables:v13];

    v14 = v11;
LABEL_8:

LABEL_9:
    goto LABEL_10;
  }

  v9 = 0;
LABEL_10:

  return v9;
}

- (_CSVisualizerPredicate)initWithSearchString:(id)string forTitle:(id)title operator:(unint64_t)operator error:(id *)error
{
  v41[6] = *MEMORY[0x1E69E9840];
  stringCopy = string;
  titleCopy = title;
  v35.receiver = self;
  v35.super_class = _CSVisualizerPredicate;
  v12 = [(_CSVisualizerPredicate *)&v35 init];
  if (!v12)
  {
    v24 = MEMORY[0x1E696ABC0];
    v36[0] = *MEMORY[0x1E696A278];
    v36[1] = @"Line";
    v37[0] = @"mFulErr";
    v37[1] = &unk_1F37D7F58;
    v25 = *MEMORY[0x1E696A588];
    v37[2] = @"Failed to allocate NSPredicate instance.";
    v36[2] = v25;
    v36[3] = @"Operator";
    v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:operator];
    v37[3] = v26;
    v37[4] = stringCopy;
    v36[4] = @"SearchString";
    v36[5] = @"Title";
    v37[5] = titleCopy;
    v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:v36 count:6];
    v28 = [v24 errorWithDomain:*MEMORY[0x1E696A768] code:-41 userInfo:v27];
LABEL_8:
    v17 = v28;

    if (error)
    {
      v29 = v17;
      v12 = 0;
      *error = v17;
    }

    else
    {
      v12 = 0;
    }

    goto LABEL_11;
  }

  v13 = [stringCopy copy];
  searchString = v12->_searchString;
  v12->_searchString = v13;

  v15 = [titleCopy copy];
  title = v12->_title;
  v12->_title = v15;

  v17 = 0;
  v12->_operator = operator;
  if (operator - 4 >= 6 && operator != 99)
  {
    if (titleCopy)
    {
      if ([objc_opt_class() operatorIsNumeric:operator])
      {
        v18 = [MEMORY[0x1E696AB90] decimalNumberWithString:stringCopy];
        v19 = objc_alloc(MEMORY[0x1E696AB18]);
        v20 = [MEMORY[0x1E696ABC8] expressionForVariable:@"HAYSTACK"];
        v21 = [MEMORY[0x1E696ABC8] expressionForConstantValue:v18];
        v22 = [v19 initWithLeftExpression:v20 rightExpression:v21 modifier:0 type:operator options:0];
        numericPredicate = v12->_numericPredicate;
        v12->_numericPredicate = v22;

        v17 = 0;
        goto LABEL_11;
      }

      v33 = MEMORY[0x1E696ABC0];
      v40[0] = *MEMORY[0x1E696A278];
      v40[1] = @"Line";
      v41[0] = @"kCSStorePredicateErr";
      v41[1] = &unk_1F37D7F28;
      v34 = *MEMORY[0x1E696A588];
      v41[2] = @"Unsupported operator type.";
      v40[2] = v34;
      v40[3] = @"Operator";
      v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:operator];
      v41[3] = v26;
      v41[4] = stringCopy;
      v40[4] = @"SearchString";
      v40[5] = @"Title";
      v41[5] = titleCopy;
      v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:v40 count:6];
      v28 = [v33 errorWithDomain:*MEMORY[0x1E696A768] code:-9495 userInfo:v27];
    }

    else
    {

      v31 = MEMORY[0x1E696ABC0];
      v38[0] = *MEMORY[0x1E696A278];
      v38[1] = @"Line";
      v39[0] = @"kCSStorePredicateErr";
      v39[1] = &unk_1F37D7F40;
      v32 = *MEMORY[0x1E696A588];
      v39[2] = @"Unsupported operator type.";
      v38[2] = v32;
      v38[3] = @"Operator";
      v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:operator];
      v38[4] = @"SearchString";
      v39[3] = v26;
      v39[4] = stringCopy;
      v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:v38 count:5];
      v28 = [v31 errorWithDomain:*MEMORY[0x1E696A768] code:-9495 userInfo:v27];
    }

    goto LABEL_8;
  }

LABEL_11:

  return v12;
}

- (_CSVisualizerPredicate)initWithExpression:(id)expression
{
  expressionCopy = expression;
  v5 = [objc_opt_class() constantValueForExpression:expressionCopy];
  if (v5)
  {
    v6 = [(_CSVisualizerPredicate *)self initWithSearchString:v5 operator:99 error:0];
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

+ (void)getRanges:(void *)ranges matchingPredicate:(id)predicate inDescription:(id)description
{
  v26 = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  descriptionCopy = description;
  v11 = descriptionCopy;
  if (predicateCopy)
  {
    if (descriptionCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"CSPredicate.mm" lineNumber:373 description:{@"Invalid parameter not satisfying: %@", @"predicate != nil"}];

    if (v11)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"CSPredicate.mm" lineNumber:374 description:{@"Invalid parameter not satisfying: %@", @"description != nil"}];

LABEL_3:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = predicateCopy;
    v13 = v12;
    if (v12[4] != 5)
    {
      [v12 getRanges:ranges inDescription:v11 options:0 limit:-1 searchedInRange:0];
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = predicateCopy;
      if ([v14 compoundPredicateType])
      {
        v23 = 0u;
        v24 = 0u;
        v21 = 0u;
        v22 = 0u;
        subpredicates = [v14 subpredicates];
        v16 = [subpredicates countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v16)
        {
          v17 = *v22;
          do
          {
            v18 = 0;
            do
            {
              if (*v22 != v17)
              {
                objc_enumerationMutation(subpredicates);
              }

              [self getRanges:ranges matchingPredicate:*(*(&v21 + 1) + 8 * v18++) inDescription:v11];
            }

            while (v16 != v18);
            v16 = [subpredicates countByEnumeratingWithState:&v21 objects:v25 count:16];
          }

          while (v16);
        }
      }
    }
  }
}

+ (id)predicateWithFormatString:(id)string error:(id *)error
{
  v19[15] = *MEMORY[0x1E69E9840];
  stringCopy = string;
  v7 = objc_autoreleasePoolPush();
  v8 = [MEMORY[0x1E696AE18] predicateWithFormat:stringCopy argumentArray:MEMORY[0x1E695E0F0]];
  if (v8)
  {
    v17[0] = 0;
    v9 = [self translateNSPredicate:v8 error:v17];
    v10 = v17[0];

    if (v9)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = [MEMORY[0x1E696ABC8] expressionWithFormat:stringCopy argumentArray:MEMORY[0x1E695E0F0]];
  if (v11)
  {
    v9 = [[self alloc] initWithExpression:v11];
    if (!v9)
    {
      v12 = MEMORY[0x1E696ABC0];
      v18[0] = *MEMORY[0x1E696A278];
      v18[1] = @"Line";
      v19[0] = @"kCSStorePredicateErr";
      v19[1] = &unk_1F37D7EF8;
      v18[2] = *MEMORY[0x1E696A588];
      v18[3] = @"Expression";
      v19[2] = @"Could not translate generated expression to a form usable by CoreServicesStore.";
      v19[3] = v11;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:4];
      v14 = [v12 errorWithDomain:*MEMORY[0x1E696A768] code:-9495 userInfo:v13];

      v9 = 0;
      v10 = v14;
    }
  }

  else
  {
    v9 = 0;
  }

LABEL_10:
  objc_autoreleasePoolPop(v7);
  if (error && !v9)
  {
    v15 = v10;
    *error = v10;
  }

  return v9;
}

+ (id)translateNSPredicate:(id)predicate error:(id *)error
{
  v57 = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  v38 = [MEMORY[0x1E696AE18] predicateWithValue:1];
  v37 = [MEMORY[0x1E696AE18] predicateWithValue:0];
  if (([predicateCopy isEqual:v38] & 1) != 0 || objc_msgSend(predicateCopy, "isEqual:", v37))
  {
    goto LABEL_3;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v35 = predicateCopy;
    subpredicates = [v35 subpredicates];
    if ([subpredicates count] == 1)
    {
      compoundPredicateType = [v35 compoundPredicateType];

      if (compoundPredicateType)
      {
        subpredicates2 = [v35 subpredicates];
        array = [subpredicates2 objectAtIndexedSubscript:0];
        v47 = 0;
        v5 = [self translateNSPredicate:array error:&v47];
        v6 = v47;
LABEL_35:

        array = subpredicates2;
        goto LABEL_36;
      }
    }

    else
    {
    }

    array = [MEMORY[0x1E695DF70] array];
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    subpredicates2 = [v35 subpredicates];
    v6 = 0;
    v24 = [subpredicates2 countByEnumeratingWithState:&v43 objects:v56 count:16];
    if (v24)
    {
      v25 = *v44;
      while (2)
      {
        v26 = 0;
        v27 = v6;
        do
        {
          if (*v44 != v25)
          {
            objc_enumerationMutation(subpredicates2);
          }

          v28 = *(*(&v43 + 1) + 8 * v26);
          v42 = v27;
          v29 = [self translateNSPredicate:v28 error:&v42];
          v6 = v42;

          if (!v29)
          {
            v5 = 0;
            goto LABEL_35;
          }

          [array addObject:v29];

          ++v26;
          v27 = v6;
        }

        while (v24 != v26);
        v24 = [subpredicates2 countByEnumeratingWithState:&v43 objects:v56 count:16];
        if (v24)
        {
          continue;
        }

        break;
      }
    }

    if (!array)
    {
      v5 = 0;
      goto LABEL_37;
    }

    v5 = [objc_alloc(MEMORY[0x1E696AB28]) initWithType:objc_msgSend(v35 subpredicates:{"compoundPredicateType"), array}];
LABEL_36:

LABEL_37:
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = predicateCopy;
    leftExpression = [v15 leftExpression];
    v17 = [self constantValueForExpression:leftExpression];

    predicateOperatorType = [v15 predicateOperatorType];
    rightExpression = [v15 rightExpression];
    v20 = [self constantValueForExpression:rightExpression];

    if (v17)
    {
      if (v20)
      {
        if (![v15 comparisonPredicateModifier])
        {
          v22 = v17;
          v32 = v20;
          if ([v22 isEqualToString:@"*"])
          {
            v41 = 0;
            v33 = &v41;
            v34 = [[_CSVisualizerPredicate alloc] initWithSearchString:v32 operator:predicateOperatorType error:&v41];
          }

          else
          {
            v40 = 0;
            v33 = &v40;
            v34 = [[_CSVisualizerPredicate alloc] initWithSearchString:v32 forTitle:v22 operator:predicateOperatorType error:&v40];
          }

          v5 = v34;
          v6 = *v33;

          goto LABEL_41;
        }

        v21 = MEMORY[0x1E696ABC0];
        v50[0] = *MEMORY[0x1E696A278];
        v50[1] = @"Line";
        v51[0] = @"kCSStorePredicateErr";
        v51[1] = &unk_1F37D7EB0;
        v50[2] = *MEMORY[0x1E696A588];
        v50[3] = @"Predicate";
        v51[2] = @"Aggregate operations (ANY, ALL, etc.) are not supported.";
        v51[3] = v15;
        v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v51 forKeys:v50 count:4];
        v23 = [v21 errorWithDomain:*MEMORY[0x1E696A768] code:-9495 userInfo:v22];
      }

      else
      {
        v31 = MEMORY[0x1E696ABC0];
        v52[0] = *MEMORY[0x1E696A278];
        v52[1] = @"Line";
        v53[0] = @"kCSStorePredicateErr";
        v53[1] = &unk_1F37D7E98;
        v52[2] = *MEMORY[0x1E696A588];
        v52[3] = @"Predicate";
        v53[2] = @"Unsupported expression type (right-hand side).";
        v53[3] = v15;
        v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v53 forKeys:v52 count:4];
        v23 = [v31 errorWithDomain:*MEMORY[0x1E696A768] code:-9495 userInfo:v22];
      }
    }

    else
    {
      v30 = MEMORY[0x1E696ABC0];
      v54[0] = *MEMORY[0x1E696A278];
      v54[1] = @"Line";
      v55[0] = @"kCSStorePredicateErr";
      v55[1] = &unk_1F37D7E80;
      v54[2] = *MEMORY[0x1E696A588];
      v54[3] = @"Predicate";
      v55[2] = @"Unsupported expression type (left-hand side).";
      v55[3] = v15;
      v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v55 forKeys:v54 count:4];
      v23 = [v30 errorWithDomain:*MEMORY[0x1E696A768] code:-9495 userInfo:v22];
    }

    v6 = v23;
    v5 = 0;
LABEL_41:

    goto LABEL_4;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = 0;
    v5 = 0;
    goto LABEL_4;
  }

LABEL_3:
  v5 = predicateCopy;
  v6 = 0;
LABEL_4:
  if (error && !v5)
  {
    if (!v6)
    {
      v7 = MEMORY[0x1E696ABC0];
      v48[0] = *MEMORY[0x1E696A278];
      v48[1] = @"Line";
      v49[0] = @"kCSStorePredicateErr";
      v49[1] = &unk_1F37D7EC8;
      v48[2] = *MEMORY[0x1E696A588];
      v48[3] = @"Predicate";
      v49[2] = @"Could not translate generated predicate to a form usable by CoreServicesStore.";
      v49[3] = predicateCopy;
      v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v49 forKeys:v48 count:4];
      v6 = [v7 errorWithDomain:*MEMORY[0x1E696A768] code:-9495 userInfo:v8];
    }

    v9 = v6;
    *error = v6;
  }

  return v5;
}

+ (id)constantValueForExpression:(id)expression
{
  expressionCopy = expression;
  v4 = expressionCopy;
  if (!expressionCopy)
  {
    goto LABEL_11;
  }

  if ([expressionCopy expressionType])
  {
    if ([v4 expressionType] != 3)
    {
LABEL_11:
      v11 = 0;
      goto LABEL_14;
    }

    keyPath = [v4 keyPath];
  }

  else
  {
    keyPath = [v4 constantValue];
  }

  v6 = keyPath;
  if (!keyPath)
  {
    goto LABEL_11;
  }

  TypeID = CFBooleanGetTypeID();
  if (TypeID == CFGetTypeID(v6))
  {
    bOOLValue = [v6 BOOLValue];
    v9 = @"false";
    if (bOOLValue)
    {
      v9 = @"true";
    }

    v10 = v9;
  }

  else
  {
    v10 = [v6 description];
  }

  v11 = v10;

LABEL_14:

  return v11;
}

@end