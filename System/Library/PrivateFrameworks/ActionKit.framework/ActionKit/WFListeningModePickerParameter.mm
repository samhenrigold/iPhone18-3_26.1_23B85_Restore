@interface WFListeningModePickerParameter
- (WFAction)action;
- (WFListeningModePickerParameter)initWithDefinition:(id)definition;
- (id)enumeration:(id)enumeration localizedLabelForPossibleState:(id)state;
- (void)action:(id)action parameterStateDidChangeForKey:(id)key;
- (void)loadPossibleStatesForEnumeration:(id)enumeration searchTerm:(id)term completionHandler:(id)handler;
- (void)setAction:(id)action;
@end

@implementation WFListeningModePickerParameter

- (WFAction)action
{
  WeakRetained = objc_loadWeakRetained(&self->_action);

  return WeakRetained;
}

- (void)action:(id)action parameterStateDidChangeForKey:(id)key
{
  if ([key isEqualToString:@"WFRoute"])
  {

    [(WFDynamicEnumerationParameter *)self clearPossibleStates];
  }
}

- (id)enumeration:(id)enumeration localizedLabelForPossibleState:(id)state
{
  stateCopy = state;
  value = [stateCopy value];
  v6 = [value isEqualToString:@"Normal"];

  if (v6)
  {
    v7 = @"Off";
LABEL_9:
    v14 = WFLocalizedString(v7);
    goto LABEL_10;
  }

  value2 = [stateCopy value];
  v9 = [value2 isEqualToString:@"ActiveNoiseCancellation"];

  if (v9)
  {
    v7 = @"Noise Cancellation";
    goto LABEL_9;
  }

  value3 = [stateCopy value];
  v11 = [value3 isEqualToString:@"Transparency"];

  if (v11)
  {
    v7 = @"Transparency";
    goto LABEL_9;
  }

  value4 = [stateCopy value];
  v13 = [value4 isEqualToString:@"Adaptive"];

  if (v13)
  {
    v7 = @"Adaptive";
    goto LABEL_9;
  }

  v14 = 0;
LABEL_10:

  return v14;
}

- (void)loadPossibleStatesForEnumeration:(id)enumeration searchTerm:(id)term completionHandler:(id)handler
{
  v21[1] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  action = [(WFListeningModePickerParameter *)self action];
  v8 = [action parameterStateForKey:@"WFRoute"];

  value = [v8 value];
  if (value)
  {
    v10 = objc_opt_new();
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __96__WFListeningModePickerParameter_loadPossibleStatesForEnumeration_searchTerm_completionHandler___block_invoke;
    v16[3] = &unk_278C1C3A0;
    v19 = handlerCopy;
    v17 = value;
    v18 = v10;
    v11 = v10;
    [v11 findRouteMatchingDescriptor:v17 timeout:v16 completionHandler:15.0];

    v12 = v19;
  }

  else
  {
    v13 = MEMORY[0x277CCA9B8];
    v14 = *MEMORY[0x277D7CB30];
    v20 = *MEMORY[0x277CCA450];
    v11 = WFLocalizedString(@"Please select a valid route first");
    v21[0] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    v15 = [v13 errorWithDomain:v14 code:5 userInfo:v12];
    (*(handlerCopy + 2))(handlerCopy, 0, v15);
  }
}

void __96__WFListeningModePickerParameter_loadPossibleStatesForEnumeration_searchTerm_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v31[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    goto LABEL_7;
  }

  v24 = 0;
  v25 = &v24;
  v26 = 0x2050000000;
  v7 = getMPAVOutputDeviceRouteClass_softClass_21407;
  v27 = getMPAVOutputDeviceRouteClass_softClass_21407;
  if (!getMPAVOutputDeviceRouteClass_softClass_21407)
  {
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __getMPAVOutputDeviceRouteClass_block_invoke_21408;
    v23[3] = &unk_278C222B8;
    v23[4] = &v24;
    __getMPAVOutputDeviceRouteClass_block_invoke_21408(v23);
    v7 = v25[3];
  }

  v8 = v7;
  _Block_object_dispose(&v24, 8);
  if (objc_opt_isKindOfClass())
  {
    v9 = v5;
    v10 = WFAvailableListeningModesForRoute(v9);
    if ([v10 count])
    {
      v11 = [v10 if_map:&__block_literal_global_21415];
      v12 = [objc_alloc(MEMORY[0x277CD3E28]) initWithItems:v11];
      (*(*(a1 + 48) + 16))();
    }

    else
    {
      v17 = *(a1 + 48);
      v18 = MEMORY[0x277CCA9B8];
      v28 = *MEMORY[0x277CCA450];
      v19 = MEMORY[0x277CCACA8];
      v11 = WFLocalizedString(@"Noise Control mode is not supported on %@");
      v12 = [v9 routeName];
      v20 = [v19 localizedStringWithFormat:v11, v12];
      v29 = v20;
      v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
      v22 = [v18 errorWithDomain:*MEMORY[0x277D7CB30] code:5 userInfo:v21];
      (*(v17 + 16))(v17, 0, v22);
    }
  }

  else
  {
LABEL_7:
    v13 = *(a1 + 48);
    v14 = MEMORY[0x277CCA9B8];
    v30 = *MEMORY[0x277CCA450];
    v15 = MEMORY[0x277CCACA8];
    v9 = WFLocalizedStringWithKey(@"Could Not Find “%@” (Listening Mode)", @"Could Not Find “%@”");
    v10 = [*(a1 + 32) routeName];
    v11 = [v15 localizedStringWithFormat:v9, v10];
    v31[0] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:&v30 count:1];
    v16 = [v14 errorWithDomain:*MEMORY[0x277D7CB30] code:5 userInfo:v12];
    (*(v13 + 16))(v13, 0, v16);
  }
}

id __96__WFListeningModePickerParameter_loadPossibleStatesForEnumeration_searchTerm_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D7C928];
  v3 = a2;
  v4 = [[v2 alloc] initWithValue:v3];

  return v4;
}

- (void)setAction:(id)action
{
  obj = action;
  WeakRetained = objc_loadWeakRetained(&self->_action);
  [WeakRetained removeEventObserver:self];

  v5 = objc_storeWeak(&self->_action, obj);
  [obj addEventObserver:self];
}

- (WFListeningModePickerParameter)initWithDefinition:(id)definition
{
  v7.receiver = self;
  v7.super_class = WFListeningModePickerParameter;
  v3 = [(WFDynamicEnumerationParameter *)&v7 initWithDefinition:definition];
  v4 = v3;
  if (v3)
  {
    [(WFDynamicEnumerationParameter *)v3 setDataSource:v3];
    v5 = v4;
  }

  return v4;
}

@end