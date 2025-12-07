@interface WFWorkflowPickerParameter
- (WFWorkflow)workflow;
- (WFWorkflowPickerParameter)initWithDefinition:(id)definition;
- (id)accessoryIconForPossibleState:(id)state;
- (id)accessoryImageForPossibleState:(id)state;
- (id)enumeration:(id)enumeration localizedLabelForPossibleState:(id)state;
- (id)workflowForState:(id)state;
- (void)loadPossibleStatesForEnumeration:(id)enumeration searchTerm:(id)term completionHandler:(id)handler;
@end

@implementation WFWorkflowPickerParameter

- (WFWorkflow)workflow
{
  WeakRetained = objc_loadWeakRetained(&self->_workflow);

  return WeakRetained;
}

- (id)enumeration:(id)enumeration localizedLabelForPossibleState:(id)state
{
  value = [state value];
  v6 = +[WFDatabaseProxy defaultDatabase];
  workflow = [(WFWorkflowPickerParameter *)self workflow];
  reference = [workflow reference];
  v9 = [value displayNameWithDatabase:v6 containingWorkflow:reference];

  return v9;
}

- (void)loadPossibleStatesForEnumeration:(id)enumeration searchTerm:(id)term completionHandler:(id)handler
{
  v19 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v7 = +[WFDatabaseProxy defaultDatabase];
  v14 = 0;
  v8 = [v7 sortedVisibleWorkflowsByNameWithError:&v14];
  v9 = v14;

  if (!v8)
  {
    v10 = getWFGeneralLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v16 = "[WFWorkflowPickerParameter loadPossibleStatesForEnumeration:searchTerm:completionHandler:]";
      v17 = 2112;
      v18 = v9;
      _os_log_impl(&dword_1CA256000, v10, OS_LOG_TYPE_ERROR, "%s Failed to load workflows in WFWorkflowPickerParameter: %@", buf, 0x16u);
    }
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __91__WFWorkflowPickerParameter_loadPossibleStatesForEnumeration_searchTerm_completionHandler___block_invoke;
  v13[3] = &unk_1E8375AB0;
  v13[4] = self;
  v11 = [v8 if_map:v13];
  v12 = [objc_alloc(MEMORY[0x1E696E918]) initWithItems:v11];
  handlerCopy[2](handlerCopy, v12, 0);
}

WFWorkflowParameterState *__91__WFWorkflowPickerParameter_loadPossibleStatesForEnumeration_searchTerm_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 identifier];
  v5 = [*(a1 + 32) workflow];
  v6 = [v5 workflowID];
  isEqualToString = objc_msgSend_isEqualToString_(v4);

  v8 = [[WFWorkflowParameterStateDescriptor alloc] initWithWorkflowReference:v3 isSelf:isEqualToString];
  v9 = [(WFVariableSubstitutableParameterState *)[WFWorkflowParameterState alloc] initWithValue:v8];

  return v9;
}

- (id)accessoryIconForPossibleState:(id)state
{
  v3 = [(WFWorkflowPickerParameter *)self workflowForState:state];
  attributionIcon = [v3 attributionIcon];

  return attributionIcon;
}

- (id)accessoryImageForPossibleState:(id)state
{
  v3 = [(WFWorkflowPickerParameter *)self workflowForState:state];
  currentDevice = [MEMORY[0x1E69E0A90] currentDevice];
  [currentDevice screenScale];
  v6 = [v3 attributionIconWithSize:1 scale:38.0 rounded:{38.0, v5}];

  return v6;
}

- (id)workflowForState:(id)state
{
  value = [state value];
  if (value)
  {
    v5 = +[WFDatabaseProxy defaultDatabase];
    workflow = [(WFWorkflowPickerParameter *)self workflow];
    reference = [workflow reference];
    v8 = [value matchingWorkflowInDatabase:v5 containingWorkflow:reference];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (WFWorkflowPickerParameter)initWithDefinition:(id)definition
{
  v7.receiver = self;
  v7.super_class = WFWorkflowPickerParameter;
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