@interface WFCurrencyQuantityFieldParameter
- (WFCurrencyQuantityFieldParameter)initWithDefinition:(id)definition;
- (id)defaultUnit;
@end

@implementation WFCurrencyQuantityFieldParameter

- (id)defaultUnit
{
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  currencyCode = [currentLocale currencyCode];

  possibleUnits = [(WFQuantityFieldParameter *)self possibleUnits];
  if ([possibleUnits containsObject:currencyCode])
  {
    firstObject = currencyCode;
  }

  else
  {
    firstObject = [possibleUnits firstObject];
  }

  v7 = firstObject;

  return v7;
}

- (WFCurrencyQuantityFieldParameter)initWithDefinition:(id)definition
{
  v15[1] = *MEMORY[0x1E69E9840];
  definitionCopy = definition;
  v5 = [definitionCopy objectForKey:@"PossibleUnits"];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (![v7 count])
  {
    iSOCurrencyCodes = [MEMORY[0x1E695DF58] ISOCurrencyCodes];

    v14 = @"PossibleUnits";
    v15[0] = iSOCurrencyCodes;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    v10 = [definitionCopy definitionByAddingEntriesInDictionary:v9];

    v7 = iSOCurrencyCodes;
    definitionCopy = v10;
  }

  v13.receiver = self;
  v13.super_class = WFCurrencyQuantityFieldParameter;
  v11 = [(WFQuantityFieldParameter *)&v13 initWithDefinition:definitionCopy];

  return v11;
}

@end