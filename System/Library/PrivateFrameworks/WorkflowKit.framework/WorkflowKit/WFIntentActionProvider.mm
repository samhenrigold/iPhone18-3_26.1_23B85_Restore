@interface WFIntentActionProvider
+ (id)disabledPlatformsForIntentWithTypeName:(id)name;
+ (void)initialize;
- (BOOL)shouldCreateActionForIntentClassName:(id)name actionIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier inSchema:(id)schema;
- (NSSet)cachedSystemIntentActions;
- (WFIntentActionProvider)initWithOptions:(unint64_t)options;
- (id)actionIdentifiersForBundleIdentifier:(id)identifier schema:(id)schema;
- (id)actionIdentifiersRequiringBundledActionProvider;
- (id)actionIdentifiersRequiringBundledActionProviderMappedByApp;
- (id)availableActionIdentifiers;
- (id)createActionsForBundleIdentifier:(id)identifier;
- (id)createAllAvailableActions;
- (id)schemaForBundleIdentifier:(id)identifier ignoreCache:(BOOL)cache;
- (id)schemasByBundleIdentifier;
- (void)createActionsForRequests:(id)requests forceLocalActionsOnly:(BOOL)only;
- (void)handleApplicationDidChangeNotification:(id)notification;
- (void)installedApplicationsDidChange:(id)change;
- (void)observeInstalledApplicationsChangesIfNeeded;
@end

@implementation WFIntentActionProvider

+ (void)initialize
{
  if (objc_opt_class() == self)
  {

    WFDisableAppTrustChecking();
  }
}

- (void)handleApplicationDidChangeNotification:(id)notification
{
  v50 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  queue = [(WFIntentActionProvider *)self queue];
  dispatch_assert_queue_V2(queue);

  userInfo = [notificationCopy userInfo];
  v7 = [userInfo objectForKey:@"bundleIDs"];

  v8 = v7;
  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v9 = getWFActionRegistryLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v42 = "[WFIntentActionProvider handleApplicationDidChangeNotification:]";
      v43 = 2114;
      v44 = v8;
      _os_log_impl(&dword_1CA256000, v9, OS_LOG_TYPE_INFO, "%s Installed applications changed: %{public}@", buf, 0x16u);
    }

    cachedSchemasByBundleIdentifier = [(WFIntentActionProvider *)self cachedSchemasByBundleIdentifier];
    v11 = [cachedSchemasByBundleIdentifier mutableCopy];

    v36 = v11;
    if (v11)
    {
      v29 = notificationCopy;
      v34 = objc_opt_new();
      v33 = objc_opt_new();
      v35 = objc_opt_new();
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v28 = v8;
      obj = v8;
      v12 = [obj countByEnumeratingWithState:&v37 objects:v49 count:16];
      if (v12)
      {
        v13 = v12;
        v31 = *v38;
        selfCopy = self;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v38 != v31)
            {
              objc_enumerationMutation(obj);
            }

            v15 = *(*(&v37 + 1) + 8 * i);
            v16 = objc_opt_new();
            v17 = [v36 objectForKey:v15];
            if (v17)
            {
              v18 = [(WFIntentActionProvider *)self actionIdentifiersForBundleIdentifier:v15 schema:v17];

              v16 = v18;
            }

            v19 = [(WFIntentActionProvider *)self schemaForBundleIdentifier:v15 ignoreCache:1];
            v20 = objc_opt_new();
            if (v19)
            {
              v21 = [(WFIntentActionProvider *)self actionIdentifiersForBundleIdentifier:v15 schema:v19];

              v20 = v21;
            }

            v22 = [v16 mutableCopy];
            [v22 minusSet:v20];
            v23 = [v20 mutableCopy];
            [v23 minusSet:v16];
            v24 = [v20 mutableCopy];
            [v24 intersectSet:v16];
            [v34 unionSet:v22];
            [v33 unionSet:v23];
            [v35 unionSet:v24];
            [v36 setValue:v19 forKey:v15];

            self = selfCopy;
          }

          v13 = [obj countByEnumeratingWithState:&v37 objects:v49 count:16];
        }

        while (v13);
      }

      [(WFIntentActionProvider *)self setCachedSchemasByBundleIdentifier:v36];
      v25 = getWFActionRegistryLogObject();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        *buf = 136315906;
        v42 = "[WFIntentActionProvider handleApplicationDidChangeNotification:]";
        v43 = 2114;
        v44 = v35;
        v45 = 2114;
        v46 = v33;
        v47 = 2114;
        v48 = v34;
        _os_log_impl(&dword_1CA256000, v25, OS_LOG_TYPE_INFO, "%s Updated: %{public}@, Added: %{public}@, Removed: %{public}@", buf, 0x2Au);
      }

      v8 = v28;
      notificationCopy = v29;
      if ([v34 count] || objc_msgSend(v33, "count") || -[NSObject count](v35, "count"))
      {
        delegate = [(WFActionProvider *)self delegate];
        [delegate actionProviderDidChange:self updatedActions:v35 removedActions:v34 addedActions:v33];
      }
    }

    v27 = v8;
  }

  else
  {

    v27 = getWFActionRegistryLogObject();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v42 = "[WFIntentActionProvider handleApplicationDidChangeNotification:]";
      _os_log_impl(&dword_1CA256000, v27, OS_LOG_TYPE_FAULT, "%s Got an application did change notification, but couldn't extract bundle identifiers out of it", buf, 0xCu);
    }
  }
}

- (void)installedApplicationsDidChange:(id)change
{
  changeCopy = change;
  queue = [(WFIntentActionProvider *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__WFIntentActionProvider_installedApplicationsDidChange___block_invoke;
  v7[3] = &unk_1E837F870;
  v7[4] = self;
  v8 = changeCopy;
  v6 = changeCopy;
  dispatch_async(queue, v7);
}

- (void)observeInstalledApplicationsChangesIfNeeded
{
  if (![(WFIntentActionProvider *)self isObservingInstalledApplicationsChanges])
  {
    [(WFIntentActionProvider *)self setObservingInstalledApplicationsChanges:1];
    defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
    [defaultCenter addObserver:self selector:sel_installedApplicationsDidChange_ name:@"com.apple.LaunchServices.applicationRegistered" object:0];
    [defaultCenter addObserver:self selector:sel_installedApplicationsDidChange_ name:@"com.apple.LaunchServices.applicationUnregistered" object:0];
  }
}

- (BOOL)shouldCreateActionForIntentClassName:(id)name actionIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier inSchema:(id)schema
{
  nameCopy = name;
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  schemaCopy = schema;
  if (objc_msgSend_isEqualToString_(identifierCopy) & 1) != 0 || ![identifierCopy hasSuffix:@"Intent"] || (objc_msgSend_isEqualToString_(bundleIdentifierCopy) & 1) != 0 || (objc_msgSend_isEqualToString_(bundleIdentifierCopy) & 1) != 0 || (objc_msgSend_isEqualToString_(bundleIdentifierCopy) & 1) != 0 || (objc_msgSend(MEMORY[0x1E698B0D0], "applicationWithBundleIdentifier:", bundleIdentifierCopy), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "isHidden"), v14, (v15) || (-[WFIntentActionProvider actionIdentifiersRequiringBundledActionProvider](self, "actionIdentifiersRequiringBundledActionProvider"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "containsObject:", identifierCopy), v16, (v17))
  {
    v18 = 0;
  }

  else if (schemaCopy)
  {
    v20 = [schemaCopy intentCodableDescriptionWithIntentClassName:nameCopy];
    v21 = [schemaCopy _parameterCombinationsForClassName:nameCopy];
    v22 = [v20 resolvableParameterCombinationsWithParameterCombinations:v21];
    v23 = [v22 count];

    NSClassFromString(nameCopy);
    v24 = INIntentSchemaGetIntentDescriptionWithFacadeClass();

    isConfigurable = [v20 isConfigurable];
    if (v23)
    {
      v26 = 1;
    }

    else
    {
      v26 = isConfigurable;
    }

    if (v24)
    {
      v18 = 0;
    }

    else
    {
      v18 = v26;
    }
  }

  else
  {
    v18 = 1;
  }

  return v18;
}

- (id)actionIdentifiersRequiringBundledActionProvider
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__WFIntentActionProvider_actionIdentifiersRequiringBundledActionProvider__block_invoke;
  block[3] = &unk_1E837FA70;
  block[4] = self;
  if (actionIdentifiersRequiringBundledActionProvider_onceToken != -1)
  {
    dispatch_once(&actionIdentifiersRequiringBundledActionProvider_onceToken, block);
  }

  return actionIdentifiersRequiringBundledActionProvider_actionIdentifiersRequiringBundledActionProvider;
}

void __73__WFIntentActionProvider_actionIdentifiersRequiringBundledActionProvider__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = objc_opt_new();
  v3 = actionIdentifiersRequiringBundledActionProvider_actionIdentifiersRequiringBundledActionProvider;
  actionIdentifiersRequiringBundledActionProvider_actionIdentifiersRequiringBundledActionProvider = v2;

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [*(a1 + 32) actionIdentifiersRequiringBundledActionProviderMappedByApp];
  v5 = [v4 allValues];

  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = actionIdentifiersRequiringBundledActionProvider_actionIdentifiersRequiringBundledActionProvider;
        v11 = [*(*(&v12 + 1) + 8 * v9) allKeys];
        [v10 addObjectsFromArray:v11];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (id)actionIdentifiersRequiringBundledActionProviderMappedByApp
{
  if (actionIdentifiersRequiringBundledActionProviderMappedByApp_onceToken != -1)
  {
    dispatch_once(&actionIdentifiersRequiringBundledActionProviderMappedByApp_onceToken, &__block_literal_global_202_56895);
  }

  v3 = actionIdentifiersRequiringBundledActionProviderMappedByApp_map;

  return v3;
}

void __84__WFIntentActionProvider_actionIdentifiersRequiringBundledActionProviderMappedByApp__block_invoke()
{
  v0 = actionIdentifiersRequiringBundledActionProviderMappedByApp_map;
  actionIdentifiersRequiringBundledActionProviderMappedByApp_map = &unk_1F4A99FA0;
}

- (id)actionIdentifiersForBundleIdentifier:(id)identifier schema:(id)schema
{
  v22 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  schemaCopy = schema;
  v15 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = [schemaCopy _classNamesForClass:objc_opt_class()];
  v8 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", identifierCopy, v12];
        if ([(WFIntentActionProvider *)self shouldCreateActionForIntentClassName:v12 actionIdentifier:v13 bundleIdentifier:identifierCopy inSchema:schemaCopy])
        {
          [v15 addObject:v13];
        }
      }

      v9 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  return v15;
}

- (NSSet)cachedSystemIntentActions
{
  if (!self->_cachedSystemIntentActions && [(WFIntentActionProvider *)self shouldConsiderSystemIntents])
  {
    v3 = WFLoadAllSystemIntentActions(self);
    cachedSystemIntentActions = self->_cachedSystemIntentActions;
    self->_cachedSystemIntentActions = v3;
  }

  v5 = self->_cachedSystemIntentActions;

  return v5;
}

- (id)schemaForBundleIdentifier:(id)identifier ignoreCache:(BOOL)cache
{
  identifierCopy = identifier;
  if (cache || ([(WFIntentActionProvider *)self cachedSchemasByBundleIdentifier], v7 = objc_claimAutoreleasedReturnValue(), v7, !v7))
  {
    mEMORY[0x1E696E878] = [MEMORY[0x1E696E878] sharedConnection];
    v10 = [MEMORY[0x1E695DFD8] setWithObject:identifierCopy];
    v11 = [mEMORY[0x1E696E878] loadSchemasForBundleIdentifiers:v10 error:0];
    v9 = [v11 objectForKey:identifierCopy];
  }

  else
  {
    mEMORY[0x1E696E878] = [(WFIntentActionProvider *)self cachedSchemasByBundleIdentifier];
    v9 = [mEMORY[0x1E696E878] objectForKey:identifierCopy];
  }

  return v9;
}

- (id)schemasByBundleIdentifier
{
  cachedSchemasByBundleIdentifier = [(WFIntentActionProvider *)self cachedSchemasByBundleIdentifier];

  if (!cachedSchemasByBundleIdentifier)
  {
    mEMORY[0x1E696E878] = [MEMORY[0x1E696E878] sharedConnection];
    v5 = [mEMORY[0x1E696E878] availableSchemasWithError:0];
    [(WFIntentActionProvider *)self setCachedSchemasByBundleIdentifier:v5];
  }

  return [(WFIntentActionProvider *)self cachedSchemasByBundleIdentifier];
}

- (id)createActionsForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  mEMORY[0x1E696E878] = [MEMORY[0x1E696E878] sharedConnection];
  v7 = [MEMORY[0x1E695DFD8] setWithObject:identifierCopy];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __59__WFIntentActionProvider_createActionsForBundleIdentifier___block_invoke;
  v13[3] = &unk_1E837C1E8;
  v13[4] = self;
  v14 = identifierCopy;
  v8 = v5;
  v15 = v8;
  v9 = identifierCopy;
  [mEMORY[0x1E696E878] wf_accessBundleContentForBundleIdentifiers:v7 withBlock:v13];

  v10 = v15;
  v11 = v8;

  return v8;
}

void __59__WFIntentActionProvider_createActionsForBundleIdentifier___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) schemaForBundleIdentifier:*(a1 + 40) ignoreCache:0];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = [v2 _classNamesForClass:objc_opt_class()];
  v3 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v22;
    v6 = 0x1E696A000uLL;
    v18 = *v22;
    do
    {
      v7 = 0;
      v19 = v4;
      do
      {
        if (*v22 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v21 + 1) + 8 * v7);
        v9 = objc_autoreleasePoolPush();
        v10 = [*(v6 + 3776) stringWithFormat:@"%@.%@", *(a1 + 40), v8];
        if ([*(a1 + 32) shouldCreateActionForIntentClassName:v8 actionIdentifier:v10 bundleIdentifier:*(a1 + 40) inSchema:v2])
        {
          v11 = [WFHandleCustomIntentAction alloc];
          v12 = [*(a1 + 32) defaultActionDefinition];
          v13 = v2;
          v14 = *(a1 + 40);
          v15 = [*(a1 + 32) stringLocalizer];
          v17 = v14;
          v2 = v13;
          v16 = [(WFHandleCustomIntentAction *)v11 initWithIdentifier:v10 definition:v12 serializedParameters:0 schema:v13 intent:0 className:v8 bundleIdentifier:v17 stringLocalizer:v15];

          if (v16)
          {
            [*(a1 + 48) addObject:v16];
          }

          v5 = v18;
          v4 = v19;
          v6 = 0x1E696A000;
        }

        objc_autoreleasePoolPop(v9);
        ++v7;
      }

      while (v4 != v7);
      v4 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v4);
  }
}

- (void)createActionsForRequests:(id)requests forceLocalActionsOnly:(BOOL)only
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __73__WFIntentActionProvider_createActionsForRequests_forceLocalActionsOnly___block_invoke;
  v4[3] = &unk_1E837C260;
  v4[4] = self;
  [requests enumerateObjectsUsingBlock:{v4, only}];
}

void __73__WFIntentActionProvider_createActionsForRequests_forceLocalActionsOnly___block_invoke(uint64_t a1, void *a2)
{
  v61 = *MEMORY[0x1E69E9840];
  v42 = a2;
  v3 = [v42 actionIdentifier];
  v43 = [v3 componentsSeparatedByString:@"."];
  v4 = v43;
  if ([v43 count] >= 2)
  {
    v5 = [v43 subarrayWithRange:{0, objc_msgSend(v43, "count") - 1}];
    v39 = [v5 componentsJoinedByString:@"."];

    v44 = [v43 lastObject];
    if ([*(a1 + 32) shouldConsiderSystemIntents] && (WFSupportedSystemIntentClasses(), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "containsObject:", v44), v6, v7) && (WFGetSystemIntentActionForBundleIdentifierAndIntentClassName(v39, v44, *(a1 + 32)), (v8 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      [v42 setResult:v8];
    }

    else if ([v44 hasSuffix:@"Intent"])
    {
      v9 = [v42 serializedParameters];
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

      v37 = v11;
      v12 = [v11 objectForKey:@"AppIntentDescriptor"];

      if (!v12)
      {
        v13 = [v42 serializedParameters];
        v36 = [v13 objectForKey:@"SerializedIntentDescriptor"];

        if (v36 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v14 = [objc_alloc(MEMORY[0x1E696E890]) initWithSerializedRepresentation:v36];
        }

        else
        {

          v14 = [objc_alloc(MEMORY[0x1E696E890]) initWithIntentClassName:v44 launchableAppBundleId:v39];
          v36 = 0;
        }

        v15 = [MEMORY[0x1E696E748] sharedResolver];
        v38 = [v15 resolvedIntentMatchingDescriptor:v14];

        v16 = objc_opt_new();
        v17 = [v38 extensionBundleIdentifier];

        if (v17)
        {
          v18 = [v38 extensionBundleIdentifier];
          [v16 addObject:v18];
        }

        v19 = [v38 bundleIdentifier];

        if (v19)
        {
          v20 = [v38 bundleIdentifier];
          [v16 addObject:v20];
        }

        v21 = [v38 intentClassName];
        v22 = [v21 length];

        if (v22)
        {
          v23 = [v38 intentClassName];

          v44 = v23;
        }

        [v16 addObject:v39];
        v58 = 0u;
        v59 = 0u;
        v56 = 0u;
        v57 = 0u;
        obj = v16;
        v24 = [obj countByEnumeratingWithState:&v56 objects:v60 count:16];
        if (!v24)
        {

          v26 = 0;
          v41 = 0;
          goto LABEL_40;
        }

        v41 = 0;
        v25 = 0;
        v26 = 0;
        v27 = *v57;
LABEL_25:
        v28 = 0;
        while (1)
        {
          if (*v57 != v27)
          {
            objc_enumerationMutation(obj);
          }

          v29 = *(*(&v56 + 1) + 8 * v28);
          v30 = [*(a1 + 32) schemaForBundleIdentifier:v29 ignoreCache:0];

          v26 = v30;
          if ([*(a1 + 32) shouldCreateActionForIntentClassName:v44 actionIdentifier:v3 bundleIdentifier:v29 inSchema:v30])
          {
            if (v30)
            {
              v31 = v29;

              v41 = v31;
              goto LABEL_38;
            }

            if (!v41)
            {
              v41 = v29;
            }

            v25 = 1;
          }

          if (v24 == ++v28)
          {
            v24 = [obj countByEnumeratingWithState:&v56 objects:v60 count:16];
            if (v24)
            {
              goto LABEL_25;
            }

            if ((v25 & 1) == 0)
            {
LABEL_40:

              break;
            }

LABEL_38:
            v50 = 0;
            v51 = &v50;
            v52 = 0x3032000000;
            v53 = __Block_byref_object_copy__56969;
            v54 = __Block_byref_object_dispose__56970;
            v55 = 0;
            v32 = [MEMORY[0x1E696E878] sharedConnection];
            v33 = [MEMORY[0x1E695DFD8] setWithObject:v41];
            v45[0] = MEMORY[0x1E69E9820];
            v45[1] = 3221225472;
            v45[2] = __73__WFIntentActionProvider_createActionsForRequests_forceLocalActionsOnly___block_invoke_186;
            v45[3] = &unk_1E837C238;
            v49 = &v50;
            v34 = *(a1 + 32);
            v45[4] = v3;
            v45[5] = v34;
            v35 = v42;
            v46 = v35;
            v26 = v30;
            v47 = v26;
            v48 = v38;
            [v32 wf_accessBundleContentForBundleIdentifiers:v33 withBlock:v45];

            [v35 setResult:v51[5]];
            _Block_object_dispose(&v50, 8);

            goto LABEL_40;
          }
        }
      }
    }

    v4 = v43;
  }
}

void __73__WFIntentActionProvider_createActionsForRequests_forceLocalActionsOnly___block_invoke_186(uint64_t a1)
{
  v2 = [WFHandleCustomIntentAction alloc];
  v3 = *(a1 + 32);
  v11 = [*(a1 + 40) defaultActionDefinition];
  v4 = [*(a1 + 48) serializedParameters];
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = [*(a1 + 40) stringLocalizer];
  v8 = [(WFHandleCustomIntentAction *)v2 initWithIdentifier:v3 definition:v11 serializedParameters:v4 schema:v5 intent:0 resolvedIntentDescriptor:v6 stringLocalizer:v7];
  v9 = *(*(a1 + 72) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

- (id)availableActionIdentifiers
{
  v3 = objc_opt_new();
  schemasByBundleIdentifier = [(WFIntentActionProvider *)self schemasByBundleIdentifier];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __52__WFIntentActionProvider_availableActionIdentifiers__block_invoke;
  v9[3] = &unk_1E837C1C0;
  v9[4] = v3;
  v9[5] = self;
  [schemasByBundleIdentifier enumerateKeysAndObjectsUsingBlock:v9];

  if ([(WFIntentActionProvider *)self shouldConsiderSystemIntents])
  {
    cachedSystemIntentActions = [(WFIntentActionProvider *)self cachedSystemIntentActions];
    v6 = [cachedSystemIntentActions if_compactMap:&__block_literal_global_56976];

    [v3 unionSet:v6];
  }

  v7 = v3;

  return v3;
}

void __52__WFIntentActionProvider_availableActionIdentifiers__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) actionIdentifiersForBundleIdentifier:a2 schema:a3];
  [v3 unionSet:v4];
}

- (id)createAllAvailableActions
{
  [(WFIntentActionProvider *)self observeInstalledApplicationsChangesIfNeeded];
  v3 = objc_opt_new();
  schemasByBundleIdentifier = [(WFIntentActionProvider *)self schemasByBundleIdentifier];
  if (schemasByBundleIdentifier)
  {
    mEMORY[0x1E696E878] = [MEMORY[0x1E696E878] sharedConnection];
    v6 = MEMORY[0x1E695DFD8];
    allKeys = [schemasByBundleIdentifier allKeys];
    v8 = [v6 setWithArray:allKeys];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __51__WFIntentActionProvider_createAllAvailableActions__block_invoke;
    v12[3] = &unk_1E837C1E8;
    v12[4] = schemasByBundleIdentifier;
    v12[5] = self;
    v12[6] = v3;
    [mEMORY[0x1E696E878] wf_accessBundleContentForBundleIdentifiers:v8 withBlock:v12];

    if ([(WFIntentActionProvider *)self shouldConsiderSystemIntents])
    {
      cachedSystemIntentActions = [(WFIntentActionProvider *)self cachedSystemIntentActions];
      [v3 unionSet:cachedSystemIntentActions];
    }

    v10 = v3;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t __51__WFIntentActionProvider_createAllAvailableActions__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __51__WFIntentActionProvider_createAllAvailableActions__block_invoke_2;
  v3[3] = &unk_1E837C1C0;
  v4 = *(a1 + 40);
  return [v1 enumerateKeysAndObjectsUsingBlock:v3];
}

void __51__WFIntentActionProvider_createAllAvailableActions__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v22 = a2;
  v5 = a3;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = [v5 _classNamesForClass:objc_opt_class()];
  v21 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v21)
  {
    v6 = *v24;
    v7 = 0x1E696A000uLL;
    do
    {
      v8 = 0;
      do
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v23 + 1) + 8 * v8);
        v10 = objc_autoreleasePoolPush();
        v11 = [*(v7 + 3776) stringWithFormat:@"%@.%@", v22, v9];
        if ([*(a1 + 32) shouldCreateActionForIntentClassName:v9 actionIdentifier:v11 bundleIdentifier:v22 inSchema:v5])
        {
          v12 = v6;
          v13 = v5;
          v14 = [WFHandleCustomIntentAction alloc];
          v15 = [*(a1 + 32) defaultActionDefinition];
          [*(a1 + 32) stringLocalizer];
          v17 = v16 = a1;
          v18 = v14;
          v5 = v13;
          v19 = [(WFHandleCustomIntentAction *)v18 initWithIdentifier:v11 definition:v15 serializedParameters:0 schema:v13 intent:0 className:v9 bundleIdentifier:v22 stringLocalizer:v17];

          a1 = v16;
          if (v19)
          {
            [*(v16 + 40) addObject:v19];
          }

          v6 = v12;
          v7 = 0x1E696A000;
        }

        objc_autoreleasePoolPop(v10);
        ++v8;
      }

      while (v21 != v8);
      v21 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v21);
  }
}

- (WFIntentActionProvider)initWithOptions:(unint64_t)options
{
  v11.receiver = self;
  v11.super_class = WFIntentActionProvider;
  v4 = [(WFIntentActionProvider *)&v11 init];
  if (v4)
  {
    v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v6 = dispatch_get_global_queue(21, 0);
    v7 = dispatch_queue_create_with_target_V2("com.apple.shortcuts.intentsactionprovider", v5, v6);
    queue = v4->_queue;
    v4->_queue = v7;

    v4->_options = options;
    v9 = v4;
  }

  return v4;
}

+ (id)disabledPlatformsForIntentWithTypeName:(id)name
{
  v21 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v4 = nameCopy;
  if (nameCopy == @"sirikit.intents.custom.com.apple.mobilecal.EKUICreateEventIntent")
  {
    goto LABEL_6;
  }

  if (nameCopy)
  {
    isEqualToString = objc_msgSend_isEqualToString_(nameCopy);

    if ((isEqualToString & 1) != 0 || (v6 = v4, v6 == @"sirikit.intents.custom.com.apple.mobilesafari.OpenURLsIntent") || (v7 = v6, v8 = objc_msgSend_isEqualToString_(v6), v7, v8))
    {
LABEL_6:
      v20 = @"Watch";
      v9 = &v20;
LABEL_7:
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:{1, v18, v19, v20, v21}];
      goto LABEL_15;
    }

    v11 = v7;
    if (v11 == @"sirikit.intents.custom.com.apple.weather.WeatherIntent" || (v12 = v11, v13 = objc_msgSend_isEqualToString_(v11), v12, v13))
    {
      v19 = @"Watch";
      v9 = &v19;
      goto LABEL_7;
    }

    v14 = v12;
    if (v14 == @"sirikit.intent.payments.SendPaymentIntent" || (v15 = v14, v16 = objc_msgSend_isEqualToString_(v14), v15, v16))
    {
      v18 = @"Desktop";
      v9 = &v18;
      goto LABEL_7;
    }
  }

  v10 = MEMORY[0x1E695E0F0];
LABEL_15:

  return v10;
}

@end