@interface WFActionParameterSummaryValue
+ (id)parenthesisRegularExpression;
- (NSString)localizedString;
- (WFActionParameterSummaryValue)initWithKey:(id)key localizedSummaryString:(id)string;
- (WFActionParameterSummaryValue)initWithKey:(id)key summaryString:(id)string;
- (id)matchVisibleParameterKeys:(id)keys checkingRequiredValuesInAction:(id)action;
@end

@implementation WFActionParameterSummaryValue

- (id)matchVisibleParameterKeys:(id)keys checkingRequiredValuesInAction:(id)action
{
  v41 = *MEMORY[0x1E69E9840];
  keysCopy = keys;
  actionCopy = action;
  v8 = objc_alloc(MEMORY[0x1E695DFD8]);
  requiredVisibleParameterKeys = [(WFActionParameterSummaryValue *)self requiredVisibleParameterKeys];
  v10 = [v8 initWithArray:requiredVisibleParameterKeys];

  if ([v10 isSubsetOfSet:keysCopy])
  {
    v31 = v10;
    v32 = keysCopy;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    obj = [(WFActionParameterSummaryValue *)self requiredValues];
    v11 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v37;
      v33 = actionCopy;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v37 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v36 + 1) + 8 * i);
          requiredValues = [(WFActionParameterSummaryValue *)self requiredValues];
          v17 = [requiredValues objectForKey:v15];

          v18 = [actionCopy parameterStateForKey:v15];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v19 = v18;
            v35 = v17;
            v20 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v17, "BOOLValue")}];
            number = [v19 number];
            v22 = [number isEqualToNumber:v20];

            if (!v22)
            {
              v29 = [WFActionParameterSummaryValueMatchResult noMatchWithValue:self];

              keysCopy = v32;
              actionCopy = v33;
              v10 = v31;
              v17 = v35;
              goto LABEL_23;
            }

            actionCopy = v33;
            v23 = v35;
          }

          else
          {
            if (!v18)
            {
              goto LABEL_22;
            }

            serializedRepresentation = [v18 serializedRepresentation];
            v23 = v17;
            v25 = [serializedRepresentation isEqual:v17];

            if ((v25 & 1) == 0)
            {
              v17 = v23;
LABEL_22:
              v29 = [WFActionParameterSummaryValueMatchResult noMatchWithValue:self];
              v19 = v18;
              v10 = v31;
              keysCopy = v32;
LABEL_23:

              goto LABEL_24;
            }
          }
        }

        v12 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    v10 = v31;
    v26 = [v31 count];
    keysCopy = v32;
    if (v26 == [v32 count])
    {
      v27 = 2;
    }

    else
    {
      v27 = 1;
    }

    v28 = -[WFActionParameterSummaryValueMatchResult initWithValue:matchType:numberOfMatchingParameters:]([WFActionParameterSummaryValueMatchResult alloc], "initWithValue:matchType:numberOfMatchingParameters:", self, v27, [v31 count]);
  }

  else
  {
    v28 = [WFActionParameterSummaryValueMatchResult noMatchWithValue:self];
  }

  v29 = v28;
LABEL_24:

  return v29;
}

- (NSString)localizedString
{
  summaryString = [(WFActionParameterSummaryValue *)self summaryString];
  if (summaryString)
  {
    v4 = summaryString;
    localizedSummaryString = [(WFActionParameterSummaryValue *)self localizedSummaryString];

    if (!localizedSummaryString)
    {
      summaryString2 = [(WFActionParameterSummaryValue *)self summaryString];
      localize = [summaryString2 localize];
      [(WFActionParameterSummaryValue *)self setLocalizedSummaryString:localize];
    }
  }

  localizedSummaryString2 = [(WFActionParameterSummaryValue *)self localizedSummaryString];

  if (localizedSummaryString2)
  {
    localizedSummaryString3 = [(WFActionParameterSummaryValue *)self localizedSummaryString];
  }

  else
  {
    localizedSummaryString3 = &stru_1F4A1C408;
  }

  return localizedSummaryString3;
}

- (WFActionParameterSummaryValue)initWithKey:(id)key localizedSummaryString:(id)string
{
  keyCopy = key;
  stringCopy = string;
  v14.receiver = self;
  v14.super_class = WFActionParameterSummaryValue;
  v8 = [(WFActionParameterSummaryValue *)&v14 init];
  v9 = v8;
  if (v8)
  {
    WFActionParameterSummaryValueCommonInit(v8, keyCopy);
    v10 = [stringCopy copy];
    localizedSummaryString = v9->_localizedSummaryString;
    v9->_localizedSummaryString = v10;

    v12 = v9;
  }

  return v9;
}

- (WFActionParameterSummaryValue)initWithKey:(id)key summaryString:(id)string
{
  keyCopy = key;
  stringCopy = string;
  v14.receiver = self;
  v14.super_class = WFActionParameterSummaryValue;
  v8 = [(WFActionParameterSummaryValue *)&v14 init];
  v9 = v8;
  if (v8)
  {
    WFActionParameterSummaryValueCommonInit(v8, keyCopy);
    v10 = [stringCopy copy];
    summaryString = v9->_summaryString;
    v9->_summaryString = v10;

    v12 = v9;
  }

  return v9;
}

+ (id)parenthesisRegularExpression
{
  if (parenthesisRegularExpression_onceToken != -1)
  {
    dispatch_once(&parenthesisRegularExpression_onceToken, &__block_literal_global_52418);
  }

  v3 = parenthesisRegularExpression_regularExpression;

  return v3;
}

void __61__WFActionParameterSummaryValue_parenthesisRegularExpression__block_invoke()
{
  v0 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"\\((.*)\\)" options:0 error:0];
  v1 = parenthesisRegularExpression_regularExpression;
  parenthesisRegularExpression_regularExpression = v0;
}

@end