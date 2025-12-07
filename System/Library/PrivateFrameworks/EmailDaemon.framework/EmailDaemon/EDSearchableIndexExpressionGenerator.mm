@interface EDSearchableIndexExpressionGenerator
+ (BOOL)_keyPathIsSuggestable:(id)suggestable;
+ (OS_os_log)log;
+ (id)_comparisonOperationMatchingValue:(id)value operatorType:(unint64_t)type;
+ (id)_operandStringForCompoundPredicateType:(unint64_t)type;
+ (id)_queryWithAttributes:(id)attributes matchingValue:(id)value operatorType:(unint64_t)type;
+ (id)expressionForPredicate:(id)predicate suggestion:(id)suggestion bundleID:(id)d nonSpotlightPredicates:(id *)predicates;
+ (id)queryStringByJoiningQueries:(id)queries withPredicateType:(unint64_t)type;
+ (id)searchableIndexQueryStringForComparisionPredicate:(id)predicate hasSuggestion:(BOOL)suggestion;
@end

@implementation EDSearchableIndexExpressionGenerator

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__EDSearchableIndexExpressionGenerator_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_25 != -1)
  {
    dispatch_once(&log_onceToken_25, block);
  }

  v2 = log_log_24;

  return v2;
}

void __43__EDSearchableIndexExpressionGenerator_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_24;
  log_log_24 = v1;
}

+ (id)expressionForPredicate:(id)predicate suggestion:(id)suggestion bundleID:(id)d nonSpotlightPredicates:(id *)predicates
{
  v32[2] = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  suggestionCopy = suggestion;
  dCopy = d;
  v29 = 0;
  v11 = [predicateCopy ed_searchableIndexQueryStringForQueryWithSuggestion:suggestionCopy != 0 originalSearchString:&v29 nonSpotlightPredicates:predicates];
  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ = %@", *MEMORY[0x1E6963EA0], *MEMORY[0x1E6982DA8]];
  if (v29)
  {
    v13 = objc_alloc(MEMORY[0x1E696AEC0]);
    v14 = [v13 initWithFormat:@"%@ == '*'", *MEMORY[0x1E6964A30]];
    v15 = MEMORY[0x1E699AE78];
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ == 'com.apple.spotlight.events'", *MEMORY[0x1E6963D40]];
    v32[0] = v16;
    dCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ == '%@'", *MEMORY[0x1E6964230], dCopy];
    v32[1] = dCopy;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:2];
    v19 = [v15 queryStringByJoiningQueries:v18 withOperand:1];

    v20 = MEMORY[0x1E699AE78];
    v31[0] = v12;
    v31[1] = v14;
    v31[2] = v19;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:3];
    v22 = [v20 queryStringByJoiningQueries:v21 withOperand:2];

    v12 = v22;
  }

  if (v11)
  {
    v23 = MEMORY[0x1E699AE78];
    v30[0] = v12;
    v30[1] = v11;
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:2];
    v25 = [v23 queryStringByJoiningQueries:v24 withOperand:1];
  }

  else
  {
    v25 = v12;
  }

  v26 = [MEMORY[0x1E699AE80] expressionWithQueryString:v25 searchString:v29 updatedSuggestion:suggestionCopy];

  return v26;
}

+ (id)searchableIndexQueryStringForComparisionPredicate:(id)predicate hasSuggestion:(BOOL)suggestion
{
  suggestionCopy = suggestion;
  v18[1] = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  if (searchableIndexQueryStringForComparisionPredicate_hasSuggestion__onceToken != -1)
  {
    +[EDSearchableIndexExpressionGenerator searchableIndexQueryStringForComparisionPredicate:hasSuggestion:];
  }

  leftExpression = [predicateCopy leftExpression];
  keyPath = [leftExpression keyPath];

  if (suggestionCopy && ([self _keyPathIsSuggestable:keyPath] & 1) != 0)
  {
    v9 = 0;
  }

  else
  {
    predicateOperatorType = [predicateCopy predicateOperatorType];
    rightExpression = [predicateCopy rightExpression];
    constantValue = [rightExpression constantValue];

    if ([keyPath isEqualToString:*MEMORY[0x1E699A880]])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [constantValue timeIntervalSinceReferenceDate];
        v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"$time.absolute(%f)", v13];
        v18[0] = *MEMORY[0x1E6964D10];
        v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
        v9 = [self _queryWithAttributes:v15 matchingValue:v14 operatorType:predicateOperatorType];
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v16 = [searchableIndexQueryStringForComparisionPredicate_hasSuggestion__spotlightAttributesForKeypath objectForKeyedSubscript:keyPath];
      if (v16)
      {
        v9 = [self _queryWithAttributes:v16 matchingValue:constantValue operatorType:predicateOperatorType];
      }

      else
      {
        v9 = 0;
      }
    }
  }

  return v9;
}

void __104__EDSearchableIndexExpressionGenerator_searchableIndexQueryStringForComparisionPredicate_hasSuggestion___block_invoke()
{
  v15[5] = *MEMORY[0x1E69E9840];
  v14[0] = *MEMORY[0x1E699A9B0];
  v0 = *MEMORY[0x1E69649F0];
  v13[0] = *MEMORY[0x1E69649F8];
  v13[1] = v0;
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
  v15[0] = v1;
  v14[1] = *MEMORY[0x1E699A980];
  v2 = *MEMORY[0x1E6963D00];
  v12[0] = *MEMORY[0x1E6963D18];
  v12[1] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
  v15[1] = v3;
  v14[2] = *MEMORY[0x1E699A970];
  v11 = *MEMORY[0x1E6964B58];
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v11 count:1];
  v15[2] = v4;
  v14[3] = *MEMORY[0x1E699A968];
  v10 = *MEMORY[0x1E6964BB0];
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v10 count:1];
  v15[3] = v5;
  v14[4] = *MEMORY[0x1E699A920];
  v9 = *MEMORY[0x1E69645B0];
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v9 count:1];
  v15[4] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:5];
  v8 = searchableIndexQueryStringForComparisionPredicate_hasSuggestion__spotlightAttributesForKeypath;
  searchableIndexQueryStringForComparisionPredicate_hasSuggestion__spotlightAttributesForKeypath = v7;
}

+ (id)queryStringByJoiningQueries:(id)queries withPredicateType:(unint64_t)type
{
  queriesCopy = queries;
  if ([queriesCopy count] > 1)
  {
    v8 = MEMORY[0x1E696AEC0];
    v9 = [self _operandStringForCompoundPredicateType:type];
    v10 = [v8 stringWithFormat:@" %@ ", v9];

    v11 = MEMORY[0x1E696AEC0];
    firstObject2 = [queriesCopy componentsJoinedByString:v10];
    v13 = [v11 stringWithFormat:@"(%@)", firstObject2];
  }

  else
  {
    if (type)
    {
      firstObject = [queriesCopy firstObject];
      goto LABEL_7;
    }

    v10 = [self _operandStringForCompoundPredicateType:0];
    v14 = MEMORY[0x1E696AEC0];
    firstObject2 = [queriesCopy firstObject];
    v13 = [v14 stringWithFormat:@"%@(%@)", v10, firstObject2];
  }

  firstObject = v13;

LABEL_7:

  return firstObject;
}

+ (id)_operandStringForCompoundPredicateType:(unint64_t)type
{
  v3 = @"&&";
  if (type == 2)
  {
    v3 = @"||";
  }

  if (type)
  {
    return v3;
  }

  else
  {
    return @"!";
  }
}

+ (id)_queryWithAttributes:(id)attributes matchingValue:(id)value operatorType:(unint64_t)type
{
  attributesCopy = attributes;
  valueCopy = value;
  v10 = [self _comparisonOperationMatchingValue:valueCopy operatorType:type];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __88__EDSearchableIndexExpressionGenerator__queryWithAttributes_matchingValue_operatorType___block_invoke;
  v16[3] = &unk_1E8255B10;
  v11 = v10;
  v17 = v11;
  v12 = [attributesCopy ef_map:v16];
  if (type == 5)
  {
    v13 = 1;
  }

  else
  {
    v13 = 2;
  }

  v14 = [MEMORY[0x1E699AE78] queryStringByJoiningQueries:v12 withOperand:v13];

  return v14;
}

id __88__EDSearchableIndexExpressionGenerator__queryWithAttributes_matchingValue_operatorType___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", a2, *(a1 + 32)];

  return v2;
}

+ (id)_comparisonOperationMatchingValue:(id)value operatorType:(unint64_t)type
{
  valueCopy = value;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v10 = 0;
      goto LABEL_27;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [valueCopy em_stringForQuotingWithCharacter:39];
  }

  else
  {
    [valueCopy stringValue];
  }
  v9 = ;
  if (type <= 3)
  {
    if (type > 1)
    {
      if (type == 2)
      {
        v8 = @"> %@";
      }

      else
      {
        v8 = @">= %@";
      }

      goto LABEL_25;
    }

    if (!type)
    {
      v8 = @"< %@";
      goto LABEL_25;
    }

    if (type == 1)
    {
      v8 = @"<= %@";
      goto LABEL_25;
    }

LABEL_30:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EDSearchableIndexExpressionGenerator.m" lineNumber:286 description:@"unexpected operator type"];

    v10 = 0;
    goto LABEL_26;
  }

  if (type <= 7)
  {
    if (type == 4)
    {
      v8 = @"= '%@'cd";
      goto LABEL_25;
    }

    if (type == 5)
    {
      v8 = @"!= '%@'cd";
      goto LABEL_25;
    }

    goto LABEL_30;
  }

  v8 = @"= '%@*'cdwt";
  if (type == 8 || type == 99)
  {
    goto LABEL_25;
  }

  if (type != 9)
  {
    goto LABEL_30;
  }

  v8 = @"= '*%@'cdwt";
LABEL_25:
  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:v8, v9];
LABEL_26:

LABEL_27:

  return v10;
}

+ (BOOL)_keyPathIsSuggestable:(id)suggestable
{
  suggestableCopy = suggestable;
  if (_keyPathIsSuggestable__onceToken != -1)
  {
    +[EDSearchableIndexExpressionGenerator _keyPathIsSuggestable:];
  }

  v4 = [_keyPathIsSuggestable__suggestableKeyPaths containsObject:suggestableCopy];

  return v4;
}

void __62__EDSearchableIndexExpressionGenerator__keyPathIsSuggestable___block_invoke()
{
  v0 = [MEMORY[0x1E695DFD8] setWithObjects:{*MEMORY[0x1E699A9B0], *MEMORY[0x1E699A9B8], *MEMORY[0x1E699A858], *MEMORY[0x1E699A818], *MEMORY[0x1E699A820], *MEMORY[0x1E699A980], *MEMORY[0x1E699A988], *MEMORY[0x1E699A970], *MEMORY[0x1E699A968], *MEMORY[0x1E699A880], 0}];
  v1 = _keyPathIsSuggestable__suggestableKeyPaths;
  _keyPathIsSuggestable__suggestableKeyPaths = v0;
}

@end