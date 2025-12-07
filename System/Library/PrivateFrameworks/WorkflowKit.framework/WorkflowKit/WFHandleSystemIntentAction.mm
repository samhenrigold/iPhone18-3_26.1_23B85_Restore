@interface WFHandleSystemIntentAction
+ (id)sharedEnumerator;
- (BOOL)setParameterState:(id)state forKey:(id)key;
- (BOOL)shouldBeIncludedInAppsList;
- (INIntentDescriptor)intentDescriptor;
- (NSSet)supportedIdentifiers;
- (WFHandleSystemIntentAction)initWithIdentifier:(id)identifier definition:(id)definition serializedParameters:(id)parameters intentDescription:(id)description stringLocalizer:(id)localizer;
- (WFHandleSystemIntentAction)initWithIdentifier:(id)identifier definition:(id)definition serializedParameters:(id)parameters stringLocalizer:(id)localizer;
- (id)accessoryIcon;
- (id)actionForAppIdentifier:(id)identifier;
- (id)copyWithSerializedParameters:(id)parameters;
- (id)displayableAppDescriptor;
- (id)displayableAppIdentifier;
- (id)enumeration:(id)enumeration accessoryImageForPossibleState:(id)state;
- (id)enumeration:(id)enumeration localizedLabelForPossibleState:(id)state;
- (id)generatedIntentWithIdentifier:(id)identifier input:(id)input processedParameters:(id)parameters error:(id *)error;
- (id)intentClassName;
- (id)intentDescriptorFromParameterState;
- (id)intentDescriptorWithIntentClassName:(id)name launchableBundleId:(id)id;
- (id)launchableAppIdentifier;
- (id)launchableAppIdentifiers;
- (id)localizedAppName;
- (id)localizedNameWithContext:(id)context;
- (id)possibleStatesForEnumeration:(id)enumeration;
- (id)selectedAppNotSupportedError;
- (id)slots;
- (id)supportedAppIdentifiers;
- (int64_t)intentCategory;
- (void)dealloc;
- (void)initializeParameters;
- (void)selectedAppDidChange;
@end

@implementation WFHandleSystemIntentAction

- (id)enumeration:(id)enumeration accessoryImageForPossibleState:(id)state
{
  value = [state value];
  bundleIdentifier = [value bundleIdentifier];

  v7 = [(WFHandleSystemIntentAction *)self customImageForBundleIdentifier:bundleIdentifier];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = [MEMORY[0x1E69E0B58] applicationIconImageForBundleIdentifier:bundleIdentifier format:0];
  }

  v10 = v9;

  return v10;
}

- (id)enumeration:(id)enumeration localizedLabelForPossibleState:(id)state
{
  stateCopy = state;
  value = [stateCopy value];
  bundleIdentifier = [value bundleIdentifier];
  v8 = [(WFHandleSystemIntentAction *)self customAppNameForBundleIdentifier:bundleIdentifier];

  if (v8)
  {
    localizedName = v8;
  }

  else
  {
    value2 = [stateCopy value];
    localizedName = [value2 localizedName];
  }

  return localizedName;
}

- (id)possibleStatesForEnumeration:(id)enumeration
{
  v18[1] = *MEMORY[0x1E69E9840];
  intentClassName = [(WFHandleSystemIntentAction *)self intentClassName];
  supportedIdentifiers = [(WFHandleSystemIntentAction *)self supportedIdentifiers];
  v6 = MEMORY[0x1E696AEB0];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __59__WFHandleSystemIntentAction_possibleStatesForEnumeration___block_invoke;
  v16[3] = &unk_1E8376880;
  v7 = intentClassName;
  v17 = v7;
  v8 = [v6 sortDescriptorWithKey:@"self" ascending:1 comparator:v16];
  v18[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
  v10 = [supportedIdentifiers sortedArrayUsingDescriptors:v9];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __59__WFHandleSystemIntentAction_possibleStatesForEnumeration___block_invoke_2;
  v14[3] = &unk_1E83768A8;
  v15 = v7;
  v11 = v7;
  v12 = [v10 if_map:v14];

  return v12;
}

uint64_t __59__WFHandleSystemIntentAction_possibleStatesForEnumeration___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x1E696E890];
  v6 = a3;
  v7 = a2;
  v8 = [[v5 alloc] initWithIntentClassName:*(a1 + 32) launchableAppBundleId:v7];

  v9 = [objc_alloc(MEMORY[0x1E696E890]) initWithIntentClassName:*(a1 + 32) launchableAppBundleId:v6];
  v10 = [MEMORY[0x1E696E748] sharedResolver];
  v11 = [v10 resolvedIntentMatchingDescriptor:v8];

  v12 = [MEMORY[0x1E696E748] sharedResolver];
  v13 = [v12 resolvedIntentMatchingDescriptor:v9];

  v14 = [v11 localizedName];
  v15 = [v13 localizedName];
  v16 = [v14 localizedStandardCompare:v15];

  return v16;
}

WFIntentDescriptorParameterState *__59__WFHandleSystemIntentAction_possibleStatesForEnumeration___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696E890];
  v4 = a2;
  v5 = [[v3 alloc] initWithIntentClassName:*(a1 + 32) launchableAppBundleId:v4];

  v6 = [MEMORY[0x1E696E748] sharedResolver];
  v7 = [v6 resolvedIntentMatchingDescriptor:v5];

  v8 = [(WFVariableSubstitutableParameterState *)[WFIntentDescriptorParameterState alloc] initWithValue:v7];

  return v8;
}

- (id)actionForAppIdentifier:(id)identifier
{
  v31 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = [(WFHandleSystemIntentAction *)self supportedIdentifiers];
  v5 = [obj countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v25;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v24 + 1) + 8 * i);
        intentClassName = [(WFHandleSystemIntentAction *)self intentClassName];
        v11 = [(WFHandleSystemIntentAction *)self intentDescriptorWithIntentClassName:intentClassName launchableBundleId:v9];

        mEMORY[0x1E696E748] = [MEMORY[0x1E696E748] sharedResolver];
        v13 = [mEMORY[0x1E696E748] resolvedIntentMatchingDescriptor:v11];

        displayableBundleIdentifier = [v13 displayableBundleIdentifier];
        isEqualToString = objc_msgSend_isEqualToString_(displayableBundleIdentifier);

        if (isEqualToString)
        {
          appDescriptor = [v13 appDescriptor];
          v18 = [(WFVariableSubstitutableParameterState *)[WFAppDescriptorParameterState alloc] initWithValue:appDescriptor];
          v28 = @"IntentAppDefinition";
          serializedRepresentation = [(WFVariableSubstitutableParameterState *)v18 serializedRepresentation];
          v29 = serializedRepresentation;
          v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
          v16 = [(WFHandleSystemIntentAction *)self copyWithSerializedParameters:v20];

          objc_storeStrong(v16 + 52, self->_supportedAppIdentifiers);
          goto LABEL_11;
        }
      }

      v6 = [obj countByEnumeratingWithState:&v24 objects:v30 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v23.receiver = self;
  v23.super_class = WFHandleSystemIntentAction;
  v16 = [(WFAction *)&v23 actionForAppIdentifier:identifierCopy];
LABEL_11:

  return v16;
}

- (BOOL)shouldBeIncludedInAppsList
{
  supportedAppIdentifiers = [(WFHandleSystemIntentAction *)self supportedAppIdentifiers];
  if ([supportedAppIdentifiers count])
  {
    v4 = ![(WFAction *)self isDiscontinued];
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (id)launchableAppIdentifiers
{
  launchableIdentifiers = self->_launchableIdentifiers;
  if (!launchableIdentifiers)
  {
    supportedIdentifiers = [(WFHandleSystemIntentAction *)self supportedIdentifiers];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __54__WFHandleSystemIntentAction_launchableAppIdentifiers__block_invoke;
    v8[3] = &unk_1E8376830;
    v8[4] = self;
    v5 = [supportedIdentifiers if_compactMap:v8];
    v6 = self->_launchableIdentifiers;
    self->_launchableIdentifiers = v5;

    launchableIdentifiers = self->_launchableIdentifiers;
  }

  return launchableIdentifiers;
}

id __54__WFHandleSystemIntentAction_launchableAppIdentifiers__block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696E890];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = [*(a1 + 32) intentClassName];
  v7 = [v5 initWithIntentClassName:v6 launchableAppBundleId:v4];

  v8 = [MEMORY[0x1E696E748] sharedResolver];
  v9 = [v8 resolvedIntentMatchingDescriptor:v7];

  v10 = [v9 bundleIdentifier];

  return v10;
}

- (id)supportedAppIdentifiers
{
  supportedAppIdentifiers = self->_supportedAppIdentifiers;
  if (!supportedAppIdentifiers)
  {
    supportedIdentifiers = [(WFHandleSystemIntentAction *)self supportedIdentifiers];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __53__WFHandleSystemIntentAction_supportedAppIdentifiers__block_invoke;
    v9[3] = &unk_1E8376830;
    v9[4] = self;
    v5 = [supportedIdentifiers if_compactMap:v9];
    allObjects = [v5 allObjects];
    v7 = self->_supportedAppIdentifiers;
    self->_supportedAppIdentifiers = allObjects;

    supportedAppIdentifiers = self->_supportedAppIdentifiers;
  }

  return supportedAppIdentifiers;
}

id __53__WFHandleSystemIntentAction_supportedAppIdentifiers__block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696E890];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = [*(a1 + 32) intentClassName];
  v7 = [v5 initWithIntentClassName:v6 launchableAppBundleId:v4];

  v8 = [MEMORY[0x1E696E748] sharedResolver];
  v9 = [v8 resolvedIntentMatchingDescriptor:v7];

  v10 = [v9 displayableBundleIdentifier];

  return v10;
}

- (NSSet)supportedIdentifiers
{
  if (!self->_supportedIdentifiers)
  {
    v3 = +[WFHandleSystemIntentAction sharedEnumerator];
    intentClassName = [(WFHandleSystemIntentAction *)self intentClassName];
    v5 = [v3 supportedIdentifiersForIntentClassName:intentClassName includingUserActivityBasedApps:1];
    v6 = [v5 set];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __50__WFHandleSystemIntentAction_supportedIdentifiers__block_invoke;
    v22[3] = &unk_1E8376830;
    v22[4] = self;
    v7 = [v6 if_compactMap:v22];
    supportedIdentifiers = self->_supportedIdentifiers;
    self->_supportedIdentifiers = v7;
  }

  appDefinition = [(WFAction *)self appDefinition];
  v10 = [appDefinition objectForKey:*MEMORY[0x1E69E0900]];

  v11 = [objc_alloc(MEMORY[0x1E696E720]) initWithBundleIdentifier:v10];
  mEMORY[0x1E696E748] = [MEMORY[0x1E696E748] sharedResolver];
  v13 = [mEMORY[0x1E696E748] resolvedAppMatchingDescriptor:v11];

  bundleIdentifier = [v13 bundleIdentifier];

  processedParameters = [(WFAction *)self processedParameters];

  if (processedParameters)
  {
    v16 = [(WFAction *)self parameterForKey:@"IntentAppDefinition"];
    if ([v16 isHidden] && bundleIdentifier)
    {
      v17 = self->_supportedIdentifiers;
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __50__WFHandleSystemIntentAction_supportedIdentifiers__block_invoke_2;
      v20[3] = &unk_1E8376858;
      v20[4] = self;
      v21 = bundleIdentifier;
      v18 = [(NSSet *)v17 if_compactMap:v20];

      goto LABEL_9;
    }
  }

  v18 = self->_supportedIdentifiers;
LABEL_9:

  return v18;
}

id __50__WFHandleSystemIntentAction_supportedIdentifiers__block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_alloc(MEMORY[0x1E696E890]);
  v5 = [*(a1 + 32) intentClassName];
  v6 = [v4 initWithIntentClassName:v5 launchableAppBundleId:v3];

  v7 = [MEMORY[0x1E696E748] sharedResolver];
  v8 = [v7 resolvedIntentMatchingDescriptor:v6];

  v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
  v10 = [v8 bundleIdentifier];

  if (v10)
  {
    v11 = [v8 bundleIdentifier];
    [v9 addObject:v11];
  }

  v12 = [v8 displayableBundleIdentifier];

  if (v12)
  {
    v13 = [v8 displayableBundleIdentifier];
    [v9 addObject:v13];
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v14 = v9;
  v15 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v15)
  {
    v16 = *v25;
    while (2)
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v25 != v16)
        {
          objc_enumerationMutation(v14);
        }

        v18 = *(*(&v24 + 1) + 8 * i);
        v19 = objc_alloc(MEMORY[0x1E69635F8]);
        v23 = 0;
        v20 = [v19 initWithBundleIdentifier:v18 allowPlaceholder:0 error:&v23];
        v21 = v23;
        if (v20 && ([v20 wf_isAvailableInContext:0] & 1) != 0)
        {
          v15 = v3;

          goto LABEL_16;
        }
      }

      v15 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

LABEL_16:

  return v15;
}

void *__50__WFHandleSystemIntentAction_supportedIdentifiers__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696E890];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = [*(a1 + 32) intentClassName];
  v7 = [v5 initWithIntentClassName:v6 launchableAppBundleId:v4];

  v8 = [MEMORY[0x1E696E748] sharedResolver];
  v9 = [v8 resolvedIntentMatchingDescriptor:v7];

  v10 = [v9 displayableBundleIdentifier];
  if (objc_msgSend_isEqualToString_(v10))
  {
    v11 = v4;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  return v11;
}

- (id)intentDescriptorFromParameterState
{
  v2 = [(WFAction *)self serializedParameterStateForKey:@"IntentAppDefinition"];
  v3 = [(WFVariableSubstitutableParameterState *)[WFIntentDescriptorParameterState alloc] initWithSerializedRepresentation:v2 variableProvider:0 parameter:0];
  v4 = v3;
  if (v3)
  {
    value = [(WFVariableSubstitutableParameterState *)v3 value];
  }

  else
  {
    value = 0;
  }

  return value;
}

- (id)intentDescriptorWithIntentClassName:(id)name launchableBundleId:(id)id
{
  v5 = MEMORY[0x1E696E890];
  idCopy = id;
  nameCopy = name;
  v8 = [[v5 alloc] initWithIntentClassName:nameCopy launchableAppBundleId:idCopy];

  return v8;
}

- (BOOL)setParameterState:(id)state forKey:(id)key
{
  stateCopy = state;
  keyCopy = key;
  v15.receiver = self;
  v15.super_class = WFHandleSystemIntentAction;
  v8 = [(WFAction *)&v15 setParameterState:stateCopy forKey:keyCopy];
  if (v8 && objc_msgSend_isEqualToString_(keyCopy))
  {
    [(WFHandleSystemIntentAction *)self selectedAppDidChange];
    v9 = stateCopy;
    if (v9)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    value = [v11 value];

    bundleIdentifier = [value bundleIdentifier];
    [(WFAction *)self setSupplementalParameterValue:bundleIdentifier forKey:@"IntentAppIdentifier"];

    [(WFAction *)self recreateResourcesIfNeeded];
  }

  return v8;
}

- (id)selectedAppNotSupportedError
{
  v14[2] = *MEMORY[0x1E69E9840];
  v3 = WFLocalizedString(@"Invalid App");
  v4 = MEMORY[0x1E696AEC0];
  v5 = WFLocalizedString(@"Please select a valid app for %@.");
  localizedName = [(WFAction *)self localizedName];
  v7 = [v4 localizedStringWithFormat:v5, localizedName];

  v8 = MEMORY[0x1E696ABC0];
  v9 = *MEMORY[0x1E696A578];
  v13[0] = *MEMORY[0x1E696A588];
  v13[1] = v9;
  v14[0] = v3;
  v14[1] = v7;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
  v11 = [v8 errorWithDomain:@"WFActionErrorDomain" code:10 userInfo:v10];

  return v11;
}

- (id)generatedIntentWithIdentifier:(id)identifier input:(id)input processedParameters:(id)parameters error:(id *)error
{
  v8 = [(WFHandleSystemIntentAction *)self intentDescription:identifier];
  v9 = objc_alloc_init([v8 facadeClass]);

  intentDescriptor = [(WFHandleSystemIntentAction *)self intentDescriptor];
  bundleIdentifier = [intentDescriptor bundleIdentifier];
  if (bundleIdentifier)
  {
    v12 = 1;
  }

  else
  {
    extensionBundleIdentifier = [intentDescriptor extensionBundleIdentifier];
    v12 = extensionBundleIdentifier != 0;
  }

  launchableAppIdentifiers = [(WFHandleSystemIntentAction *)self launchableAppIdentifiers];
  bundleIdentifier2 = [intentDescriptor bundleIdentifier];
  v16 = [launchableAppIdentifiers containsObject:bundleIdentifier2];

  extensionBundleIdentifier2 = [intentDescriptor extensionBundleIdentifier];

  if (extensionBundleIdentifier2)
  {
    v18 = 1;
  }

  else
  {
    v18 = v16;
  }

  if (v12 && (v18 & 1) != 0)
  {
    bundleIdentifier3 = [intentDescriptor bundleIdentifier];
    [v9 _setLaunchId:bundleIdentifier3];

    extensionBundleIdentifier3 = [intentDescriptor extensionBundleIdentifier];
    [v9 _setExtensionBundleId:extensionBundleIdentifier3];

    v21 = v9;
  }

  else if (error)
  {
    [(WFHandleSystemIntentAction *)self selectedAppNotSupportedError];
    *error = v21 = 0;
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (id)copyWithSerializedParameters:(id)parameters
{
  v13[1] = *MEMORY[0x1E69E9840];
  parametersCopy = parameters;
  if (!parametersCopy)
  {
    serializedParameters = [(WFAction *)self serializedParameters];
    v6 = [serializedParameters objectForKey:@"IntentAppDefinition"];

    if (v6)
    {
      v12 = @"IntentAppDefinition";
      serializedParameters2 = [(WFAction *)self serializedParameters];
      v8 = [serializedParameters2 objectForKey:@"IntentAppDefinition"];
      v13[0] = v8;
      parametersCopy = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    }

    else
    {
      parametersCopy = 0;
    }
  }

  v11.receiver = self;
  v11.super_class = WFHandleSystemIntentAction;
  v9 = [(WFAction *)&v11 copyWithSerializedParameters:parametersCopy];

  return v9;
}

- (void)initializeParameters
{
  v4.receiver = self;
  v4.super_class = WFHandleSystemIntentAction;
  [(WFHandleIntentAction *)&v4 initializeParameters];
  v3 = [(WFAction *)self parameterForKey:@"IntentAppDefinition"];
  [v3 setDataSource:self];
}

- (id)slots
{
  intentDescription = [(WFHandleSystemIntentAction *)self intentDescription];
  slotDescriptions = [intentDescription slotDescriptions];

  return slotDescriptions;
}

- (id)intentClassName
{
  intentDescription = [(WFHandleSystemIntentAction *)self intentDescription];
  v3 = NSStringFromClass([intentDescription facadeClass]);

  return v3;
}

- (int64_t)intentCategory
{
  intentDescription = [(WFHandleSystemIntentAction *)self intentDescription];
  v3 = objc_alloc_init([intentDescription facadeClass]);
  _intentCategory = [v3 _intentCategory];

  return _intentCategory;
}

- (id)accessoryIcon
{
  intentDescriptor = [(WFHandleSystemIntentAction *)self intentDescriptor];
  bundleIdentifier = [intentDescriptor bundleIdentifier];
  v5 = [(WFHandleSystemIntentAction *)self customImageForBundleIdentifier:bundleIdentifier];

  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v7 = MEMORY[0x1E69E0B58];
    displayableAppIdentifier = [(WFHandleSystemIntentAction *)self displayableAppIdentifier];
    v6 = [v7 applicationIconImageForBundleIdentifier:displayableAppIdentifier format:0];
  }

  return v6;
}

- (id)launchableAppIdentifier
{
  intentDescriptor = [(WFHandleSystemIntentAction *)self intentDescriptor];
  bundleIdentifier = [intentDescriptor bundleIdentifier];

  return bundleIdentifier;
}

- (id)displayableAppIdentifier
{
  intentDescriptor = [(WFHandleSystemIntentAction *)self intentDescriptor];
  displayableBundleIdentifier = [intentDescriptor displayableBundleIdentifier];

  return displayableBundleIdentifier;
}

- (id)localizedAppName
{
  intentDescriptor = [(WFHandleSystemIntentAction *)self intentDescriptor];
  bundleIdentifier = [intentDescriptor bundleIdentifier];
  v5 = [(WFHandleSystemIntentAction *)self customAppNameForBundleIdentifier:bundleIdentifier];

  if (v5)
  {
    localizedName = v5;
  }

  else
  {
    intentDescriptor2 = [(WFHandleSystemIntentAction *)self intentDescriptor];
    localizedName = [intentDescriptor2 localizedName];
  }

  return localizedName;
}

- (id)displayableAppDescriptor
{
  displayableAppIdentifier = [(WFHandleSystemIntentAction *)self displayableAppIdentifier];
  if (displayableAppIdentifier)
  {
    v3 = [objc_alloc(MEMORY[0x1E696E720]) initWithBundleIdentifier:displayableAppIdentifier];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)localizedNameWithContext:(id)context
{
  contextCopy = context;
  definition = [(WFAction *)self definition];
  name = [definition name];

  if (name)
  {
    v14.receiver = self;
    v14.super_class = WFHandleSystemIntentAction;
    v7 = [(WFHandleIntentAction *)&v14 localizedNameWithContext:contextCopy];
  }

  else
  {
    intentDescription = [(WFHandleSystemIntentAction *)self intentDescription];
    name2 = [intentDescription name];
    v10 = [name2 rangeOfString:@"Intent" options:12];
    if (v10 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = name2;
    }

    else
    {
      v11 = [name2 substringToIndex:v10];
    }

    v12 = v11;

    v7 = WFAddSpacesToCamelCaseName(v12);
  }

  return v7;
}

- (INIntentDescriptor)intentDescriptor
{
  intentDescriptor = self->_intentDescriptor;
  if (!intentDescriptor)
  {
    intentDescriptorFromParameterState = [(WFHandleSystemIntentAction *)self intentDescriptorFromParameterState];
    if (!intentDescriptorFromParameterState)
    {
      goto LABEL_5;
    }

    v5 = intentDescriptorFromParameterState;
    mEMORY[0x1E696E748] = [MEMORY[0x1E696E748] sharedResolver];
    v7 = [mEMORY[0x1E696E748] resolvedIntentMatchingDescriptor:v5];
    v8 = self->_intentDescriptor;
    self->_intentDescriptor = v7;

    intentDescriptor = self->_intentDescriptor;
  }

  intentDescriptorFromParameterState = intentDescriptor;
LABEL_5:

  return intentDescriptorFromParameterState;
}

- (void)selectedAppDidChange
{
  v17 = *MEMORY[0x1E69E9840];
  intentDescriptor = self->_intentDescriptor;
  self->_intentDescriptor = 0;

  [(WFHandleSystemIntentAction *)self intentDescriptor];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  parameters = [(WFAction *)self parameters];
  v5 = [parameters countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(parameters);
        }

        resourceManager = [*(*(&v11 + 1) + 8 * v8) resourceManager];
        v15 = objc_opt_class();
        v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1];
        [resourceManager refreshAvailabilityOfRequiredResourcesOfClasses:v10];

        ++v8;
      }

      while (v6 != v8);
      v6 = [parameters countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v6);
  }

  [(WFAction *)self iconUpdated];
}

- (void)dealloc
{
  notify_cancel(self->_token);
  v3.receiver = self;
  v3.super_class = WFHandleSystemIntentAction;
  [(WFHandleSystemIntentAction *)&v3 dealloc];
}

- (WFHandleSystemIntentAction)initWithIdentifier:(id)identifier definition:(id)definition serializedParameters:(id)parameters intentDescription:(id)description stringLocalizer:(id)localizer
{
  v67[4] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  definitionCopy = definition;
  parametersCopy = parameters;
  obj = description;
  descriptionCopy = description;
  localizerCopy = localizer;
  if (definitionCopy)
  {
    if (!descriptionCopy)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v16 = [WFActionDefinition alloc];
    definitionCopy = [(WFActionDefinition *)v16 initWithDictionary:MEMORY[0x1E695E0F8]];
    if (!descriptionCopy)
    {
      goto LABEL_7;
    }
  }

  v17 = [(WFActionDefinition *)definitionCopy objectForKey:@"Parameters"];

  if (!v17)
  {
    v18 = objc_opt_new();
    slotDescriptions = [descriptionCopy slotDescriptions];
    v58[0] = MEMORY[0x1E69E9820];
    v58[1] = 3221225472;
    v58[2] = __115__WFHandleSystemIntentAction_initWithIdentifier_definition_serializedParameters_intentDescription_stringLocalizer___block_invoke;
    v58[3] = &unk_1E83767E0;
    selfCopy = self;
    v60 = identifierCopy;
    v61 = v18;
    v51 = v18;
    [slotDescriptions enumerateObjectsUsingBlock:v58];

    v20 = [WFParameterDefinition alloc];
    v66[0] = @"Class";
    v21 = objc_opt_class();
    v22 = NSStringFromClass(v21);
    v67[0] = v22;
    v67[1] = @"IntentAppDefinition";
    v66[1] = @"Key";
    v66[2] = @"Label";
    v23 = WFLocalizedStringResourceWithKey(@"App (SystemIntentAppIdentifier)", @"App");
    v67[2] = v23;
    v66[3] = @"IntentName";
    v24 = NSStringFromClass([descriptionCopy facadeClass]);
    v67[3] = v24;
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v67 forKeys:v66 count:4];
    v26 = [(WFParameterDefinition *)v20 initWithDictionary:v25];

    [v51 insertObject:v26 atIndex:0];
    v27 = [WFParameterDefinition alloc];
    v64[0] = @"Class";
    v28 = objc_opt_class();
    v29 = NSStringFromClass(v28);
    v65[0] = v29;
    v65[1] = @"OpenInApp";
    v64[1] = @"Key";
    v64[2] = @"Label";
    v30 = WFLocalizedStringResourceWithKey(@"Open in App (SystemIntentOpenInApp)", @"Open in App");
    v65[2] = v30;
    v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v65 forKeys:v64 count:3];
    v32 = [(WFParameterDefinition *)v27 initWithDictionary:v31];

    [v51 addObject:v32];
    v62 = @"Parameters";
    v63 = v51;
    v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
    v34 = [(WFActionDefinition *)definitionCopy definitionByAddingEntriesInDictionary:v33];

    definitionCopy = v34;
  }

LABEL_7:
  v35 = [(WFActionDefinition *)definitionCopy objectForKey:@"Parameters"];
  v36 = [v35 if_firstObjectPassingTest:&__block_literal_global_202_21235];

  if (!parametersCopy || ([parametersCopy objectForKeyedSubscript:@"IntentAppDefinition"], v37 = objc_claimAutoreleasedReturnValue(), v38 = v37 == 0, v37, v38))
  {
    v39 = [v36 objectForKey:@"DefaultValue"];
    v40 = v39 == 0;

    if (!v40)
    {
      if (parametersCopy)
      {
        v41 = [parametersCopy mutableCopy];
      }

      else
      {
        v41 = objc_opt_new();
      }

      v42 = v41;
      v43 = [v36 objectForKey:@"DefaultValue"];
      [v42 setObject:v43 forKeyedSubscript:@"IntentAppDefinition"];

      v44 = [v42 copy];
      parametersCopy = v44;
    }
  }

  v57.receiver = self;
  v57.super_class = WFHandleSystemIntentAction;
  v45 = [(WFHandleIntentAction *)&v57 initWithIdentifier:identifierCopy definition:definitionCopy serializedParameters:parametersCopy stringLocalizer:localizerCopy];
  v46 = v45;
  if (v45)
  {
    objc_storeStrong(&v45->_intentDescription, obj);
    objc_initWeak(&location, v46);
    uTF8String = [*MEMORY[0x1E6963548] UTF8String];
    v48 = MEMORY[0x1E69E96A0];
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __115__WFHandleSystemIntentAction_initWithIdentifier_definition_serializedParameters_intentDescription_stringLocalizer___block_invoke_3;
    handler[3] = &unk_1E837C5F8;
    objc_copyWeak(&v55, &location);
    notify_register_dispatch(uTF8String, &v46->_token, MEMORY[0x1E69E96A0], handler);

    v49 = v46;
    objc_destroyWeak(&v55);
    objc_destroyWeak(&location);
  }

  return v46;
}

void __115__WFHandleSystemIntentAction_initWithIdentifier_definition_serializedParameters_intentDescription_stringLocalizer___block_invoke(uint64_t a1, void *a2)
{
  v17[2] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 wf_parameterClass];
  if (v4)
  {
    v5 = v4;
    v6 = [WFParameterDefinition alloc];
    v7 = [(WFParameterDefinition *)v6 initWithDictionary:MEMORY[0x1E695E0F8]];
    v8 = [*(a1 + 32) stringLocalizer];
    v9 = [v3 wf_updatedParameterDefinition:v7 parameterClass:v5 localizer:v8];

    v10 = [v9 objectForKey:@"Class"];
    v11 = NSClassFromString(v10);
    LODWORD(v11) = [(objc_class *)v11 isSubclassOfClass:objc_opt_class()];

    if (v11)
    {
      v12 = *(a1 + 40);
      v16[0] = @"IntentType";
      v16[1] = @"SlotName";
      v17[0] = v12;
      v13 = [v3 wf_slotName];
      v17[1] = v13;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];
      v15 = [v9 definitionByAddingEntriesInDictionary:v14];

      v9 = v15;
    }

    [*(a1 + 48) addObject:v9];
  }
}

void __115__WFHandleSystemIntentAction_initWithIdentifier_definition_serializedParameters_intentDescription_stringLocalizer___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[52];
    WeakRetained[52] = 0;
    v3 = WeakRetained;

    WeakRetained = v3;
  }
}

uint64_t __115__WFHandleSystemIntentAction_initWithIdentifier_definition_serializedParameters_intentDescription_stringLocalizer___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 objectForKey:@"Key"];
  isEqualToString = objc_msgSend_isEqualToString_(v2);

  return isEqualToString;
}

- (WFHandleSystemIntentAction)initWithIdentifier:(id)identifier definition:(id)definition serializedParameters:(id)parameters stringLocalizer:(id)localizer
{
  v26 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  definitionCopy = definition;
  parametersCopy = parameters;
  localizerCopy = localizer;
  v14 = [definitionCopy objectForKey:@"IntentIdentifier"];
  v15 = objc_opt_class();
  v16 = v14;
  if (v16 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v18 = getWFGeneralLogObject();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      *v23 = 136315906;
      *&v23[4] = "WFEnforceClass";
      *&v23[12] = 2114;
      *&v23[14] = v16;
      *&v23[22] = 2114;
      v24 = objc_opt_class();
      LOWORD(v25) = 2114;
      *(&v25 + 2) = v15;
      v19 = v24;
      _os_log_impl(&dword_1CA256000, v18, OS_LOG_TYPE_FAULT, "%s Warning: %{public}@ is of type %{public}@, not %{public}@! Falling back to nil.", v23, 0x2Au);
    }

    v17 = 0;
  }

  else
  {
    v17 = v16;
  }

  if (v17)
  {
    v20 = INIntentSchemaGetIntentDescriptionWithType();
  }

  else
  {
    v20 = 0;
  }

  v21 = [(WFHandleSystemIntentAction *)self initWithIdentifier:identifierCopy definition:definitionCopy serializedParameters:parametersCopy intentDescription:v20 stringLocalizer:localizerCopy, *v23, *&v23[8], v24, v25];

  return v21;
}

+ (id)sharedEnumerator
{
  if (sharedEnumerator_onceToken != -1)
  {
    dispatch_once(&sharedEnumerator_onceToken, &__block_literal_global_21259);
  }

  v3 = sharedEnumerator_enumerator;

  return v3;
}

void __46__WFHandleSystemIntentAction_sharedEnumerator__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedEnumerator_enumerator;
  sharedEnumerator_enumerator = v0;
}

@end