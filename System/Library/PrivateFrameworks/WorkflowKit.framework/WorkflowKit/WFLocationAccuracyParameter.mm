@interface WFLocationAccuracyParameter
- (id)localizedLabelForPossibleState:(id)state;
- (id)possibleStates;
@end

@implementation WFLocationAccuracyParameter

- (id)localizedLabelForPossibleState:(id)state
{
  stateCopy = state;
  value = [stateCopy value];
  isEqualToString = objc_msgSend_isEqualToString_(value);

  if (isEqualToString)
  {
    v6 = @"Best";
LABEL_11:
    v15 = WFLocalizedString(v6);
    goto LABEL_12;
  }

  value2 = [stateCopy value];
  v8 = objc_msgSend_isEqualToString_(value2);

  if (v8)
  {
    v6 = @"Nearest Ten Meters";
    goto LABEL_11;
  }

  value3 = [stateCopy value];
  v10 = objc_msgSend_isEqualToString_(value3);

  if (v10)
  {
    v6 = @"Nearest Hundred Meters";
    goto LABEL_11;
  }

  value4 = [stateCopy value];
  v12 = objc_msgSend_isEqualToString_(value4);

  if (v12)
  {
    v6 = @"Nearest Kilometer";
    goto LABEL_11;
  }

  value5 = [stateCopy value];
  v14 = objc_msgSend_isEqualToString_(value5);

  if (v14)
  {
    v6 = @"Nearest Three Kilometers";
    goto LABEL_11;
  }

  v15 = 0;
LABEL_12:

  return v15;
}

- (id)possibleStates
{
  v5[5] = *MEMORY[0x1E69E9840];
  v5[0] = @"Best";
  v5[1] = @"NearestTenMeters";
  v5[2] = @"HundredMeters";
  v5[3] = @"Kilometer";
  v5[4] = @"ThreeKilometers";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:5];
  v3 = [v2 if_map:&__block_literal_global_9489];

  return v3;
}

WFStringSubstitutableState *__45__WFLocationAccuracyParameter_possibleStates__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [(WFVariableSubstitutableParameterState *)[WFStringSubstitutableState alloc] initWithValue:v2];

  return v3;
}

@end