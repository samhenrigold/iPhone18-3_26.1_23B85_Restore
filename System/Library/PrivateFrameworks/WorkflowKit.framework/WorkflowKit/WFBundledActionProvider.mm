@interface WFBundledActionProvider
- (NSSet)identifiersOfActionsDisabledOnWatch;
- (id)actionDefinitionsWithIdentifiers:(id)identifiers;
- (id)availableActionIdentifiers;
- (id)createActionWithIdentifier:(id)identifier definition:(id)definition serializedParameters:(id)parameters fallbackToMissing:(BOOL)missing isForLocalization:(BOOL)localization;
- (id)createAllAvailableActionsForLocalization;
- (id)createAllAvailableActionsIncludingMissingActions:(BOOL)actions;
- (void)createActionsForRequests:(id)requests forceLocalActionsOnly:(BOOL)only;
@end

@implementation WFBundledActionProvider

- (NSSet)identifiersOfActionsDisabledOnWatch
{
  v3 = os_transaction_create();
  v4 = objc_opt_new();
  v5 = objc_autoreleasePoolPush();
  v6 = [(WFBundledActionProvider *)self actionDefinitionsWithIdentifiers:0];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __79__WFBundledActionProvider_DisabledOnWatch__identifiersOfActionsDisabledOnWatch__block_invoke;
  v9[3] = &unk_1E8373260;
  v7 = v4;
  v10 = v7;
  [v6 enumerateKeysAndObjectsUsingBlock:v9];

  objc_autoreleasePoolPop(v5);

  return v7;
}

void __79__WFBundledActionProvider_DisabledOnWatch__identifiersOfActionsDisabledOnWatch__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = [v5 objectForKey:@"DisabledOnPlatforms"];
  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  v10 = [v9 containsObject:@"Watch"];
  if (v10)
  {
    [*(a1 + 32) addObject:v11];
  }

  objc_autoreleasePoolPop(v6);
}

- (id)createAllAvailableActionsForLocalization
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [(WFBundledActionProvider *)self actionDefinitionsWithIdentifiers:0];
  v4 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v5 objectForKey:{v10, v14}];
        v12 = [(WFBundledActionProvider *)self createActionWithIdentifier:v10 definition:v11 serializedParameters:0 fallbackToMissing:1 isForLocalization:1];
        if (v12)
        {
          [v4 addObject:v12];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)createAllAvailableActionsIncludingMissingActions:(BOOL)actions
{
  actionsCopy = actions;
  v21 = *MEMORY[0x1E69E9840];
  v5 = [(WFBundledActionProvider *)self actionDefinitionsWithIdentifiers:0];
  v6 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        v13 = [v7 objectForKey:{v12, v16}];
        v14 = [(WFBundledActionProvider *)self createActionWithIdentifier:v12 definition:v13 serializedParameters:0 fallbackToMissing:actionsCopy isForLocalization:0];
        if (v14)
        {
          [v6 addObject:v14];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  return v6;
}

- (void)createActionsForRequests:(id)requests forceLocalActionsOnly:(BOOL)only
{
  v41 = *MEMORY[0x1E69E9840];
  requestsCopy = requests;
  v5 = objc_opt_new();
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v6 = requestsCopy;
  v7 = [v6 countByEnumeratingWithState:&v31 objects:v40 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v32;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v32 != v9)
        {
          objc_enumerationMutation(v6);
        }

        actionIdentifier = [*(*(&v31 + 1) + 8 * i) actionIdentifier];
        [v5 addObject:actionIdentifier];
      }

      v8 = [v6 countByEnumeratingWithState:&v31 objects:v40 count:16];
    }

    while (v8);
  }

  v25 = v5;
  v12 = [(WFBundledActionProvider *)self actionDefinitionsWithIdentifiers:v5];
  v13 = getWFActionRegistryLogObject();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    allKeys = [v12 allKeys];
    *buf = 136315394;
    v37 = "[WFBundledActionProvider createActionsForRequests:forceLocalActionsOnly:]";
    v38 = 2114;
    v39 = allKeys;
    _os_log_impl(&dword_1CA256000, v13, OS_LOG_TYPE_DEFAULT, "%s Found actions: %{public}@", buf, 0x16u);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v15 = v6;
  v16 = [v15 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v28;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v28 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v27 + 1) + 8 * j);
        actionIdentifier2 = [v20 actionIdentifier];
        v22 = [v12 objectForKey:actionIdentifier2];
        if (v22)
        {
          serializedParameters = [v20 serializedParameters];
          v24 = [(WFBundledActionProvider *)self createActionWithIdentifier:actionIdentifier2 definition:v22 serializedParameters:serializedParameters fallbackToMissing:1 isForLocalization:0];

          if (v24)
          {
            [v20 setResult:v24];
          }
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v17);
  }
}

- (id)createActionWithIdentifier:(id)identifier definition:(id)definition serializedParameters:(id)parameters fallbackToMissing:(BOOL)missing isForLocalization:(BOOL)localization
{
  localizationCopy = localization;
  missingCopy = missing;
  v28 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  definitionCopy = definition;
  parametersCopy = parameters;
  v15 = WFActionSkipList();
  v16 = [v15 containsObject:identifierCopy];

  if (v16)
  {
    v17 = 0;
    goto LABEL_14;
  }

  v18 = [definitionCopy objectForKey:@"ActionClass"];
  v19 = NSClassFromString(v18);

  if ([(objc_class *)v19 isSubclassOfClass:objc_opt_class()])
  {
    v20 = [v19 alloc];
    stringLocalizer = [(WFActionProvider *)self stringLocalizer];
    v17 = [v20 initWithIdentifier:identifierCopy definition:definitionCopy serializedParameters:parametersCopy stringLocalizer:stringLocalizer];

    if (v17)
    {
      goto LABEL_14;
    }
  }

  else if ([(objc_class *)v19 isSubclassOfClass:objc_opt_class()])
  {
    v17 = [[v19 alloc] initWithIdentifier:identifierCopy definition:definitionCopy serializedParameters:parametersCopy];
    if (v17)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v17 = 0;
  }

  if (missingCopy)
  {
    v22 = getWFActionRegistryLogObject();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v24 = 136315394;
      v25 = "[WFBundledActionProvider createActionWithIdentifier:definition:serializedParameters:fallbackToMissing:isForLocalization:]";
      v26 = 2114;
      v27 = identifierCopy;
      _os_log_impl(&dword_1CA256000, v22, OS_LOG_TYPE_ERROR, "%s Action %{public}@ is missing", &v24, 0x16u);
    }

    v17 = [(WFAction *)[WFMissingAction alloc] initWithIdentifier:identifierCopy definition:definitionCopy serializedParameters:parametersCopy];
    [(WFMissingAction *)v17 setIsForLocalization:localizationCopy];
  }

LABEL_14:

  return v17;
}

- (id)availableActionIdentifiers
{
  v3 = objc_alloc(MEMORY[0x1E695DFD8]);
  v4 = [(WFBundledActionProvider *)self actionDefinitionsWithIdentifiers:0];
  allKeys = [v4 allKeys];
  v6 = [v3 initWithArray:allKeys];

  return v6;
}

- (id)actionDefinitionsWithIdentifiers:(id)identifiers
{
  v49 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  v5 = +[WFActionDefinitionRegistry registeredDefinitions];
  v6 = objc_opt_new();
  v7 = v6;
  v29 = identifiersCopy;
  if (identifiersCopy)
  {
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    obj = identifiersCopy;
    v8 = [obj countByEnumeratingWithState:&v39 objects:v48 count:16];
    if (v8)
    {
      v9 = v8;
      v32 = *v40;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v40 != v32)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v39 + 1) + 8 * i);
          v12 = [v5 objectForKey:v11];
          if (v12)
          {
            [(WFActionProvider *)self defaultActionDefinition];
            v13 = v7;
            selfCopy = self;
            v16 = v15 = v5;
            v17 = v12[2](v12);
            v18 = [v16 definitionByMergingWithDefinition:v17];

            v5 = v15;
            self = selfCopy;
            v7 = v13;
            [v13 setObject:v18 forKey:v11];
          }
        }

        v9 = [obj countByEnumeratingWithState:&v39 objects:v48 count:16];
      }

      while (v9);
    }

    identifiersCopy = v29;
  }

  else
  {
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __60__WFBundledActionProvider_actionDefinitionsWithIdentifiers___block_invoke;
    v37[3] = &unk_1E837DED0;
    v37[4] = self;
    v38 = v6;
    [v5 enumerateKeysAndObjectsUsingBlock:v37];
  }

  v19 = WFActionSkipList();
  if ([v19 count])
  {
    v28 = v19;
    obja = v5;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v20 = WFActionSkipList();
    v21 = [v20 countByEnumeratingWithState:&v33 objects:v47 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v34;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v34 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v33 + 1) + 8 * j);
          v26 = getWFActionRegistryLogObject();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
          {
            *buf = 136315394;
            v44 = "[WFBundledActionProvider actionDefinitionsWithIdentifiers:]";
            v45 = 2114;
            v46 = v25;
            _os_log_impl(&dword_1CA256000, v26, OS_LOG_TYPE_INFO, "%s Skipping action with identifier: %{public}@", buf, 0x16u);
          }

          [v7 removeObjectForKey:v25];
        }

        v22 = [v20 countByEnumeratingWithState:&v33 objects:v47 count:16];
      }

      while (v22);
    }

    identifiersCopy = v29;
    v5 = obja;
    v19 = v28;
  }

  return v7;
}

void __60__WFBundledActionProvider_actionDefinitionsWithIdentifiers___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [v5 defaultActionDefinition];
  v9 = v6[2](v6);

  v10 = [v8 definitionByMergingWithDefinition:v9];

  [*(a1 + 40) setObject:v10 forKey:v7];
}

@end