@interface WFShortcutFolderWidgetConfigurationIntent
- (id)parameterOverrides;
- (id)serializedParametersForDonatedIntent:(id)intent allowDroppingUnconfigurableValues:(BOOL)values;
@end

@implementation WFShortcutFolderWidgetConfigurationIntent

- (id)serializedParametersForDonatedIntent:(id)intent allowDroppingUnconfigurableValues:(BOOL)values
{
  v55 = *MEMORY[0x1E69E9840];
  intentCopy = intent;
  metadata = [(WFAppIntentExecutionAction *)self metadata];
  customIntentClassName = [metadata customIntentClassName];
  _className = [intentCopy _className];
  isEqualToString = objc_msgSend_isEqualToString_(customIntentClassName);

  if (!isEqualToString)
  {
    v10 = getWFWidgetLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      _className2 = [intentCopy _className];
      *buf = 136315394;
      v52 = "[WFShortcutFolderWidgetConfigurationIntent serializedParametersForDonatedIntent:allowDroppingUnconfigurableValues:]";
      v53 = 2114;
      v54 = _className2;
      _os_log_impl(&dword_1CA256000, v10, OS_LOG_TYPE_ERROR, "%s Attempted to migrate WFShortcutFolderWidgetConfigurationIntent to App Intent but the intent was of the wrong class type: %{public}@", buf, 0x16u);
    }

    goto LABEL_10;
  }

  v10 = [intentCopy valueForKey:@"folder"];
  if (!v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    v10 = getWFWidgetLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v52 = "[WFShortcutFolderWidgetConfigurationIntent serializedParametersForDonatedIntent:allowDroppingUnconfigurableValues:]";
      v53 = 2112;
      v54 = intentCopy;
      _os_log_impl(&dword_1CA256000, v10, OS_LOG_TYPE_ERROR, "%s Did not find folder object on WFShortcutFolderWidgetConfigurationIntent: %@", buf, 0x16u);
    }

LABEL_10:
    v16 = 0;
    goto LABEL_11;
  }

  identifier = [v10 identifier];

  if (identifier)
  {
    v12 = MEMORY[0x1E696AEC0];
    identifier2 = [v10 identifier];
    v14 = [v12 stringWithFormat:@"shortcuts://widget/folder/%@", identifier2];
  }

  else
  {
    v14 = @"shortcuts://widget/folder/all-shortcuts";
  }

  displayString = [v10 displayString];
  v19 = displayString;
  if (displayString)
  {
    v20 = displayString;
  }

  else
  {
    v20 = WFLocalizedAllShortcutsString();
  }

  v47 = v20;

  v45 = objc_alloc(MEMORY[0x1E69AC7D0]);
  v21 = [objc_alloc(MEMORY[0x1E69AC7D8]) initWithTypeIdentifier:@"ConfiguredCollection" instanceIdentifier:v14];
  v22 = objc_alloc(MEMORY[0x1E69AC950]);
  v23 = objc_alloc(MEMORY[0x1E69ACA90]);
  v46 = v14;
  v44 = [MEMORY[0x1E695DFF8] URLWithString:v14];
  uRLValueType = [MEMORY[0x1E69AC938] URLValueType];
  v24 = [v23 initWithValue:v44 valueType:uRLValueType];
  v25 = [v22 initWithIdentifier:@"identifierURL" value:v24];
  v50[0] = v25;
  v26 = objc_alloc(MEMORY[0x1E69AC950]);
  v27 = objc_alloc(MEMORY[0x1E69ACA90]);
  stringValueType = [MEMORY[0x1E69AC938] stringValueType];
  v29 = [v27 initWithValue:v47 valueType:stringValueType];
  v30 = [v26 initWithIdentifier:@"name" value:v29];
  v50[1] = v30;
  v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:2];
  v32 = v21;
  v33 = [v45 initWithTransient:1 identifier:v21 properties:v31 managedAccountIdentifier:0];

  v34 = objc_alloc(MEMORY[0x1E69ACA90]);
  v35 = [objc_alloc(MEMORY[0x1E69AC818]) initWithIdentifier:@"ConfiguredCollection"];
  v36 = objc_alloc(MEMORY[0x1E69AC7A0]);
  v37 = [objc_alloc(MEMORY[0x1E69AC9E0]) initWithKey:v47 table:0 bundleURL:0];
  v38 = [v36 initWithTitle:v37 subtitle:0 image:0];
  v39 = [v34 initWithValue:v33 valueType:v35 displayRepresentation:v38];

  wfSerializedRepresentation = [v39 wfSerializedRepresentation];
  v41 = wfSerializedRepresentation;
  if (wfSerializedRepresentation)
  {
    v48 = @"folder";
    v49 = wfSerializedRepresentation;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
  }

  else
  {
    v42 = getWFWidgetLogObject();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v52 = "[WFShortcutFolderWidgetConfigurationIntent serializedParametersForDonatedIntent:allowDroppingUnconfigurableValues:]";
      v53 = 2112;
      v54 = v39;
      _os_log_impl(&dword_1CA256000, v42, OS_LOG_TYPE_ERROR, "%s Failed to create serialized representation from entity value: %@", buf, 0x16u);
    }

    v16 = 0;
  }

LABEL_11:

  return v16;
}

- (id)parameterOverrides
{
  v19[4] = *MEMORY[0x1E69E9840];
  v18[0] = *MEMORY[0x1E69AC188];
  v3 = [MEMORY[0x1E696B098] valueWithRange:{1, 16}];
  v19[0] = v3;
  v18[1] = *MEMORY[0x1E69AC190];
  v4 = [MEMORY[0x1E696B098] valueWithRange:{1, 8}];
  v19[1] = v4;
  v18[2] = *MEMORY[0x1E69AC198];
  v5 = [MEMORY[0x1E696B098] valueWithRange:{1, 4}];
  v19[2] = v5;
  v18[3] = *MEMORY[0x1E69AC1A0];
  v6 = [MEMORY[0x1E696B098] valueWithRange:{1, 2}];
  v19[3] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:4];

  v15.receiver = self;
  v15.super_class = WFShortcutFolderWidgetConfigurationIntent;
  parameterOverrides = [(WFOverridableLinkAction *)&v15 parameterOverrides];
  v9 = [parameterOverrides mutableCopy];

  v16[0] = @"Class";
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v17[0] = v11;
  v17[1] = &stru_1F4A1C408;
  v16[1] = @"Label";
  v16[2] = @"AllowsMultipleValues";
  v17[2] = MEMORY[0x1E695E118];
  v17[3] = MEMORY[0x1E695E118];
  v16[3] = @"RangedSizeArray";
  v16[4] = @"DefaultValue";
  v17[4] = MEMORY[0x1E695E0F0];
  v16[5] = @"Placeholder";
  v12 = WFLocalizedString(@"Shortcut");
  v16[6] = @"ArraySizeRangesForWidgetFamily";
  v17[5] = v12;
  v17[6] = v7;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:7];
  WFAddEntriesToDictionary(v9, @"shortcut", v13);

  return v9;
}

@end