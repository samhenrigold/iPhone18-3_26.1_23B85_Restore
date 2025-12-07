@interface WFQuantityUnitPickerParameter
- (WFQuantityUnitPickerParameter)initWithDefinition:(id)definition;
- (id)defaultSerializedRepresentation;
- (id)localizedLabelForPossibleState:(id)state;
- (id)possibleStates;
- (void)setQuantityType:(id)type;
- (void)updatePossibleStates;
@end

@implementation WFQuantityUnitPickerParameter

- (id)localizedLabelForPossibleState:(id)state
{
  value = [state value];
  quantityType = [(WFQuantityUnitPickerParameter *)self quantityType];
  identifier = [quantityType identifier];
  v7 = [WFHealthKitHelper localizedDisplayNameForUnit:value quantityTypeIdentifier:identifier];

  return v7;
}

- (id)possibleStates
{
  possibleStateLoadingGroup = self->_possibleStateLoadingGroup;
  v4 = dispatch_time(0, 2000000000);
  dispatch_group_wait(possibleStateLoadingGroup, v4);
  possibleStates = self->_possibleStates;

  return possibleStates;
}

- (void)updatePossibleStates
{
  quantityType = [(WFQuantityUnitPickerParameter *)self quantityType];
  if (quantityType)
  {
    dispatch_group_enter(self->_possibleStateLoadingGroup);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __53__WFQuantityUnitPickerParameter_updatePossibleStates__block_invoke;
    v5[3] = &unk_278C21868;
    v6 = quantityType;
    selfCopy = self;
    [WFHealthKitHelper validUnitsForQuantityType:v6 completion:v5];
  }

  else
  {
    possibleStates = self->_possibleStates;
    self->_possibleStates = 0;

    [(WFQuantityUnitPickerParameter *)self possibleStatesDidChange];
    [(WFQuantityUnitPickerParameter *)self defaultSerializedRepresentationDidChange];
  }
}

void __53__WFQuantityUnitPickerParameter_updatePossibleStates__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) quantityType];
  LOBYTE(v4) = [v4 isEqual:v5];

  if (v4)
  {
    v6 = [v3 if_map:&__block_literal_global_14716];
    v7 = *(a1 + 40);
    v8 = *(v7 + 248);
    *(v7 + 248) = v6;

    dispatch_group_leave(*(*(a1 + 40) + 264));
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__WFQuantityUnitPickerParameter_updatePossibleStates__block_invoke_3;
    block[3] = &unk_278C224A0;
    block[4] = *(a1 + 40);
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    dispatch_group_leave(*(*(a1 + 40) + 264));
  }
}

uint64_t __53__WFQuantityUnitPickerParameter_updatePossibleStates__block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) possibleStatesDidChange];
  v2 = *(a1 + 32);

  return [v2 defaultSerializedRepresentationDidChange];
}

WFHKUnitSubstitutableState *__53__WFQuantityUnitPickerParameter_updatePossibleStates__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [(WFVariableSubstitutableParameterState *)[WFHKUnitSubstitutableState alloc] initWithValue:v2];

  return v3;
}

- (id)defaultSerializedRepresentation
{
  possibleStates = [(WFQuantityUnitPickerParameter *)self possibleStates];
  firstObject = [possibleStates firstObject];
  serializedRepresentation = [firstObject serializedRepresentation];

  return serializedRepresentation;
}

- (void)setQuantityType:(id)type
{
  typeCopy = type;
  quantityType = self->_quantityType;
  v8 = typeCopy;
  if (quantityType == typeCopy)
  {
    objc_storeStrong(&self->_quantityType, type);
  }

  else
  {
    v7 = [(HKQuantityType *)quantityType isEqual:typeCopy];
    objc_storeStrong(&self->_quantityType, type);
    if ((v7 & 1) == 0)
    {
      [(WFQuantityUnitPickerParameter *)self updatePossibleStates];
    }
  }
}

- (WFQuantityUnitPickerParameter)initWithDefinition:(id)definition
{
  v27 = *MEMORY[0x277D85DE8];
  definitionCopy = definition;
  v18.receiver = self;
  v18.super_class = WFQuantityUnitPickerParameter;
  v5 = [(WFQuantityUnitPickerParameter *)&v18 initWithDefinition:definitionCopy];
  if (v5)
  {
    v6 = [definitionCopy objectForKey:@"QuantityTypeIdentifier"];
    v7 = objc_opt_class();
    v8 = v6;
    if (v8 && (objc_opt_isKindOfClass() & 1) == 0)
    {
      v10 = getWFGeneralLogObject();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        v11 = objc_opt_class();
        *buf = 136315906;
        v20 = "WFEnforceClass";
        v21 = 2114;
        v22 = v8;
        v23 = 2114;
        v24 = v11;
        v25 = 2114;
        v26 = v7;
        v12 = v11;
        _os_log_impl(&dword_23DE30000, v10, OS_LOG_TYPE_FAULT, "%s Warning: %{public}@ is of type %{public}@, not %{public}@! Falling back to nil.", buf, 0x2Au);
      }

      v9 = 0;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      v13 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:v9];
    }

    else
    {
      v13 = 0;
    }

    objc_storeStrong(&v5->_quantityType, v13);
    if (v9)
    {
    }

    v14 = dispatch_group_create();
    possibleStateLoadingGroup = v5->_possibleStateLoadingGroup;
    v5->_possibleStateLoadingGroup = v14;

    [(WFQuantityUnitPickerParameter *)v5 updatePossibleStates];
    v16 = v5;
  }

  return v5;
}

@end