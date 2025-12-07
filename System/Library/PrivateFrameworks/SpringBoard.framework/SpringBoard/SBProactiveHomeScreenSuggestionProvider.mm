@interface SBProactiveHomeScreenSuggestionProvider
- (SBHIconManager)iconManager;
- (SBProactiveHomeScreenSuggestionProvider)initWithIconManager:(id)manager;
- (id)_iconDataSourceInIcon:(id)icon withUniqueIdentifier:(id)identifier extensionBundleIdentifier:(id)bundleIdentifier widgetKind:(id)kind suggestionSource:(int64_t)source;
- (id)_makeDataSourceForAtxWidget:(id)widget;
- (id)_supportedElementClasses;
- (id)iconModel;
- (id)rootFolder;
- (void)addObserver:(id)observer;
- (void)processUpdatedPredictions:(id)predictions;
- (void)updatePredictions;
@end

@implementation SBProactiveHomeScreenSuggestionProvider

- (SBProactiveHomeScreenSuggestionProvider)initWithIconManager:(id)manager
{
  managerCopy = manager;
  v9.receiver = self;
  v9.super_class = SBProactiveHomeScreenSuggestionProvider;
  v5 = [(SBProactiveHomeScreenSuggestionProvider *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_iconManager, managerCopy);
    mEMORY[0x277CEB5A0] = [MEMORY[0x277CEB5A0] sharedInstance];
    [mEMORY[0x277CEB5A0] registerObserver:v6];

    [(SBProactiveHomeScreenSuggestionProvider *)v6 updatePredictions];
  }

  return v6;
}

- (id)iconModel
{
  iconManager = [(SBProactiveHomeScreenSuggestionProvider *)self iconManager];
  iconModel = [iconManager iconModel];

  return iconModel;
}

- (id)rootFolder
{
  iconModel = [(SBProactiveHomeScreenSuggestionProvider *)self iconModel];
  rootFolder = [iconModel rootFolder];

  return rootFolder;
}

- (void)updatePredictions
{
  v3 = SBLogProactiveHome(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_INFO, "fetching new home screen predictions", buf, 2u);
  }

  mEMORY[0x277CEB5A0] = [MEMORY[0x277CEB5A0] sharedInstance];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __60__SBProactiveHomeScreenSuggestionProvider_updatePredictions__block_invoke;
  v5[3] = &unk_2783B9270;
  v5[4] = self;
  [mEMORY[0x277CEB5A0] homeScreenPredictionWithReply:v5];
}

void __60__SBProactiveHomeScreenSuggestionProvider_updatePredictions__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v7 = a3;
  v5 = v7;
  v6 = v4;
  BSDispatchMain();
}

uint64_t __60__SBProactiveHomeScreenSuggestionProvider_updatePredictions__block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *(a1 + 40);

    return [v2 processUpdatedPredictions:?];
  }

  else
  {
    v4 = *(a1 + 48);
    v5 = SBLogProactiveHome(a1);
    v6 = v5;
    if (v4)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        __60__SBProactiveHomeScreenSuggestionProvider_updatePredictions__block_invoke_2_cold_1((a1 + 48), v6);
      }
    }

    else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "No prediction when fetching home screen widget predictions", v7, 2u);
    }

    return [*(a1 + 40) setCurrentPrediction:0];
  }
}

- (void)processUpdatedPredictions:(id)predictions
{
  v25 = *MEMORY[0x277D85DE8];
  predictionsCopy = predictions;
  v5 = SBLogProactiveHome(predictionsCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(SBProactiveHomeScreenSuggestionProvider *)predictionsCopy processUpdatedPredictions:v5];
  }

  currentPrediction = [(SBProactiveHomeScreenSuggestionProvider *)self currentPrediction];
  [(SBProactiveHomeScreenSuggestionProvider *)self setCurrentPrediction:predictionsCopy];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = self->_observers;
  v8 = [(NSHashTable *)v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      v11 = 0;
      do
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v20 + 1) + 8 * v11);
        if (objc_opt_respondsToSelector())
        {
          [v12 proactiveHomeScreenSuggestionProviderDidUpdatePrediction:self];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSHashTable *)v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  rootFolder = [(SBProactiveHomeScreenSuggestionProvider *)self rootFolder];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __69__SBProactiveHomeScreenSuggestionProvider_processUpdatedPredictions___block_invoke;
  v16[3] = &unk_2783B92C0;
  v17 = predictionsCopy;
  v18 = currentPrediction;
  selfCopy = self;
  v14 = currentPrediction;
  v15 = predictionsCopy;
  [rootFolder enumerateAllIconsUsingBlock:v16];
}

void __69__SBProactiveHomeScreenSuggestionProvider_processUpdatedPredictions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isWidgetStackIcon])
  {
    v4 = v3;
    v5 = [v4 uniqueIdentifier];
    v6 = [*(a1 + 32) suggestionForStackIdentifier:v5];
    v7 = [*(a1 + 40) suggestionForStackIdentifier:v5];
    v8 = SBLogProactiveHome(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __69__SBProactiveHomeScreenSuggestionProvider_processUpdatedPredictions___block_invoke_cold_1();
    }

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __69__SBProactiveHomeScreenSuggestionProvider_processUpdatedPredictions___block_invoke_17;
    v14[3] = &unk_2783A8F00;
    v9 = *(a1 + 48);
    v15 = v6;
    v16 = v9;
    v17 = v4;
    v18 = v5;
    v19 = v7;
    v10 = v7;
    v11 = v5;
    v12 = v4;
    v13 = v6;
    [v12 performCoalescedDataSourceUpdate:v14];
  }
}

void __69__SBProactiveHomeScreenSuggestionProvider_processUpdatedPredictions___block_invoke_17(uint64_t a1)
{
  v72 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  obj = [*(a1 + 32) suggestedWidgets];
  v55 = [obj countByEnumeratingWithState:&v64 objects:v71 count:16];
  if (v55)
  {
    v54 = *v65;
    *&v3 = 138412290;
    v50 = v3;
    v51 = v2;
    do
    {
      v4 = 0;
      do
      {
        if (*v65 != v54)
        {
          objc_enumerationMutation(obj);
        }

        v56 = v4;
        v5 = *(*(&v64 + 1) + 8 * v4);
        v6 = *(a1 + 40);
        v7 = *(a1 + 48);
        v8 = [v5 widgetUniqueId];
        v9 = [v5 extensionBundleId];
        v10 = [v5 widgetKind];
        v11 = [v6 _iconDataSourceInIcon:v7 withUniqueIdentifier:v8 extensionBundleIdentifier:v9 widgetKind:v10 suggestionSource:1];

        if (v11)
        {
          v13 = SBLogProactiveHome(v12);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            *buf = v50;
            v70 = v11;
            _os_log_debug_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_DEBUG, "skipping adding data source because the suggested widget %@ is already suggested in stack", buf, 0xCu);
          }

          [v2 addObject:v11];
        }

        else
        {
          v14 = [*(a1 + 40) _makeDataSourceForAtxWidget:v5];
          v15 = v14;
          if (v14)
          {
            v16 = SBLogProactiveHome(v14);
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
            {
              *buf = v50;
              v70 = v15;
              _os_log_debug_impl(&dword_21ED4E000, v16, OS_LOG_TYPE_DEBUG, "adding new suggested widget data source %@", buf, 0xCu);
            }

            v52 = v15;

            v62 = 0u;
            v63 = 0u;
            v60 = 0u;
            v61 = 0u;
            v57 = *(*(a1 + 40) + 8);
            v17 = [v57 countByEnumeratingWithState:&v60 objects:v68 count:16];
            if (v17)
            {
              v18 = v17;
              v19 = *v61;
              do
              {
                for (i = 0; i != v18; ++i)
                {
                  if (*v61 != v19)
                  {
                    objc_enumerationMutation(v57);
                  }

                  v21 = *(*(&v60 + 1) + 8 * i);
                  if (objc_opt_respondsToSelector())
                  {
                    v22 = *(a1 + 40);
                    v23 = [v5 intent];
                    v24 = *(a1 + 56);
                    [v5 widgetUniqueId];
                    v25 = v5;
                    v27 = v26 = a1;
                    [v21 proactiveHomeScreenSuggestionProvider:v22 willUseTemporaryIntent:v23 forIconWithIdentifier:v24 widgetUniqueIdentifier:v27];

                    a1 = v26;
                    v5 = v25;
                  }
                }

                v18 = [v57 countByEnumeratingWithState:&v60 objects:v68 count:16];
              }

              while (v18);
            }

            v28 = [*(a1 + 48) allowsSuggestions];
            v29 = *(a1 + 48);
            if (v28)
            {
              v15 = v52;
              [v29 addIconDataSource:v52];
            }

            else
            {
              v30 = [v29 activeDataSource];
              v15 = v52;
              [*(a1 + 48) insertIconDataSource:v52 beforeIconDataSource:v30];
            }

            v2 = v51;
            v11 = 0;
            [v51 addObject:v15];
          }
        }

        v4 = v56 + 1;
      }

      while (v56 + 1 != v55);
      v55 = [obj countByEnumeratingWithState:&v64 objects:v71 count:16];
    }

    while (v55);
  }

  v32 = (a1 + 48);
  v31 = *(a1 + 48);
  v58[0] = MEMORY[0x277D85DD0];
  v58[1] = 3221225472;
  v58[2] = __69__SBProactiveHomeScreenSuggestionProvider_processUpdatedPredictions___block_invoke_21;
  v58[3] = &unk_2783B9298;
  v33 = v2;
  v59 = v33;
  [v31 removeIconDataSourcesPassingTest:v58];
  v34 = [*(a1 + 40) iconManager];
  v35 = [v34 isShowingModalInteraction];
  if (v35)
  {
    v36 = SBLogProactiveHome(v35);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      __69__SBProactiveHomeScreenSuggestionProvider_processUpdatedPredictions___block_invoke_17_cold_5(v36);
    }
  }

  else
  {
    v37 = [*(a1 + 32) topWidget];

    if (v37)
    {
      v36 = [*(a1 + 32) topWidget];
      v39 = [*(a1 + 64) topWidget];
      v40 = [v36 isEqual:v39];
      if (v40)
      {
        v41 = SBLogProactiveHome(v40);
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
        {
          __69__SBProactiveHomeScreenSuggestionProvider_processUpdatedPredictions___block_invoke_17_cold_3();
        }
      }

      else
      {
        v43 = *(a1 + 40);
        v42 = *(a1 + 48);
        v44 = [v36 widgetUniqueId];
        v45 = [v36 extensionBundleId];
        v46 = [v36 widgetKind];
        v41 = [v43 _iconDataSourceInIcon:v42 withUniqueIdentifier:v44 extensionBundleIdentifier:v45 widgetKind:v46 suggestionSource:0];

        v48 = SBLogProactiveHome(v47);
        v49 = v48;
        if (v41)
        {
          if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
          {
            __69__SBProactiveHomeScreenSuggestionProvider_processUpdatedPredictions___block_invoke_17_cold_1(v41, v32, v49);
          }

          [*v32 setStackChangeReason:2];
          [*v32 setActiveDataSource:v41];
        }

        else
        {
          if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
          {
            __69__SBProactiveHomeScreenSuggestionProvider_processUpdatedPredictions___block_invoke_17_cold_2(v36, v49);
          }
        }
      }
    }

    else
    {
      v36 = SBLogProactiveHome(v38);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
      {
        __69__SBProactiveHomeScreenSuggestionProvider_processUpdatedPredictions___block_invoke_17_cold_4(v36);
      }
    }
  }
}

uint64_t __69__SBProactiveHomeScreenSuggestionProvider_processUpdatedPredictions___block_invoke_21(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass())) && [v3 suggestionSource] == 1 && (v4 = objc_msgSend_containsObject_(*(a1 + 32)), (v4 & 1) == 0))
  {
    v7 = SBLogProactiveHome(v4);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __69__SBProactiveHomeScreenSuggestionProvider_processUpdatedPredictions___block_invoke_21_cold_1(v3, v7);
    }

    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  observers = self->_observers;
  v8 = observerCopy;
  if (!observers)
  {
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v7 = self->_observers;
    self->_observers = weakObjectsHashTable;

    observerCopy = v8;
    observers = self->_observers;
  }

  [(NSHashTable *)observers addObject:observerCopy];
}

- (id)_supportedElementClasses
{
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_self();
  v4 = objc_opt_self();
  v5 = objc_opt_self();
  v6 = objc_opt_self();
  v7 = objc_opt_self();
  v8 = [v2 setWithObjects:{v3, v4, v5, v6, v7, 0}];

  return v8;
}

- (id)_iconDataSourceInIcon:(id)icon withUniqueIdentifier:(id)identifier extensionBundleIdentifier:(id)bundleIdentifier widgetKind:(id)kind suggestionSource:(int64_t)source
{
  iconCopy = icon;
  bundleIdentifierCopy = bundleIdentifier;
  kindCopy = kind;
  if (identifier)
  {
    v15 = [iconCopy firstIconDataSourceWithUniqueIdentifier:identifier];
LABEL_3:
    v16 = v15;
    goto LABEL_8;
  }

  v17 = [MEMORY[0x277D66148] elementClassWithIdentifier:bundleIdentifierCopy];
  if (v17)
  {
    v18 = v17;
    _supportedElementClasses = [(SBProactiveHomeScreenSuggestionProvider *)self _supportedElementClasses];
    v20 = objc_msgSend_containsObject_(_supportedElementClasses);

    if (v20)
    {
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __140__SBProactiveHomeScreenSuggestionProvider__iconDataSourceInIcon_withUniqueIdentifier_extensionBundleIdentifier_widgetKind_suggestionSource___block_invoke;
      v26[3] = &__block_descriptor_48_e32_B16__0___SBLeafIconDataSource__8lu40l8;
      v26[4] = source;
      v26[5] = v18;
      v15 = [iconCopy firstIconDataSourcePassingTest:v26];
      goto LABEL_3;
    }
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __140__SBProactiveHomeScreenSuggestionProvider__iconDataSourceInIcon_withUniqueIdentifier_extensionBundleIdentifier_widgetKind_suggestionSource___block_invoke_2;
  v22[3] = &unk_2783B9308;
  sourceCopy = source;
  v23 = bundleIdentifierCopy;
  v24 = kindCopy;
  v16 = [iconCopy firstWidgetPassingTest:v22];

LABEL_8:

  return v16;
}

uint64_t __140__SBProactiveHomeScreenSuggestionProvider__iconDataSourceInIcon_withUniqueIdentifier_extensionBundleIdentifier_widgetKind_suggestionSource___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32))
  {
    v4 = objc_opt_self();
    isKindOfClass = (objc_opt_isKindOfClass() & 1) != 0 && [v3 suggestionSource] == *(a1 + 32);
  }

  else
  {
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

uint64_t __140__SBProactiveHomeScreenSuggestionProvider__iconDataSourceInIcon_withUniqueIdentifier_extensionBundleIdentifier_widgetKind_suggestionSource___block_invoke_2(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1[6] && [v3 suggestionSource] != a1[6])
  {
    v9 = 0;
  }

  else
  {
    v5 = [v4 extensionBundleIdentifier];
    if ([v5 isEqualToString:a1[4]])
    {
      v7 = a1[5];
      v6 = a1 + 5;
      if (v7)
      {
        v8 = [v4 kind];
        v9 = [v8 isEqualToString:*v6];
      }

      else
      {
        v9 = 1;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (id)_makeDataSourceForAtxWidget:(id)widget
{
  v30 = *MEMORY[0x277D85DE8];
  widgetCopy = widget;
  v5 = MEMORY[0x277D66148];
  extensionBundleId = [widgetCopy extensionBundleId];
  v7 = [v5 elementClassWithIdentifier:extensionBundleId];

  if (!v7 || (-[SBProactiveHomeScreenSuggestionProvider _supportedElementClasses](self, "_supportedElementClasses"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend_containsObject_(v8), v8, !v9) || (v10 = [v7 alloc], [widgetCopy widgetUniqueId], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v10, "initWithUniqueIdentifier:", v11), v11, v13 = objc_msgSend(v12, "copyWithSuggestionSource:", 1), v12, !v13))
  {
    widgetKind = [widgetCopy widgetKind];

    if (widgetKind)
    {
      v16 = objc_alloc(MEMORY[0x277D66320]);
      widgetUniqueId = [widgetCopy widgetUniqueId];
      widgetKind2 = [widgetCopy widgetKind];
      extensionBundleId2 = [widgetCopy extensionBundleId];
      appBundleId = [widgetCopy appBundleId];
      v21 = [v16 initWithUniqueIdentifier:widgetUniqueId kind:widgetKind2 extensionBundleIdentifier:extensionBundleId2 containerBundleIdentifier:appBundleId];

      v13 = [v21 copyWithSuggestionSource:1];
      v22 = SBLogWidgets();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        extensionBundleIdentifier = [v21 extensionBundleIdentifier];
        uniqueIdentifier = [v21 uniqueIdentifier];
        v26 = 138543618;
        v27 = extensionBundleIdentifier;
        v28 = 2114;
        v29 = uniqueIdentifier;
        _os_log_impl(&dword_21ED4E000, v22, OS_LOG_TYPE_DEFAULT, "Widget %{public}@ %{public}@ created for home screen suggestion.", &v26, 0x16u);
      }
    }

    else
    {
      v21 = SBLogProactiveHome(v15);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
      {
        [SBProactiveHomeScreenSuggestionProvider _makeDataSourceForAtxWidget:v21];
      }

      v13 = 0;
    }
  }

  return v13;
}

- (SBHIconManager)iconManager
{
  WeakRetained = objc_loadWeakRetained(&self->_iconManager);

  return WeakRetained;
}

void __60__SBProactiveHomeScreenSuggestionProvider_updatePredictions__block_invoke_2_cold_1(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "Error fetching home screen widget predictions: %@", &v3, 0xCu);
}

- (void)processUpdatedPredictions:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 suggestionsForAllStacks];
  v4 = 138412290;
  v5 = v3;
  _os_log_debug_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_DEBUG, "process updated predictions: %@", &v4, 0xCu);
}

void __69__SBProactiveHomeScreenSuggestionProvider_processUpdatedPredictions___block_invoke_17_cold_1(uint64_t a1, id *a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = [*a2 activeDataSource];
  v6 = 138412546;
  v7 = a1;
  v8 = 2112;
  v9 = v5;
  _os_log_debug_impl(&dword_21ED4E000, a3, OS_LOG_TYPE_DEBUG, "setting active data source to widget %@ (previously: %@)", &v6, 0x16u);
}

void __69__SBProactiveHomeScreenSuggestionProvider_processUpdatedPredictions___block_invoke_17_cold_2(void *a1, NSObject *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = [a1 widgetUniqueId];
  v5 = [a1 extensionBundleId];
  v6 = 138412546;
  v7 = v4;
  v8 = 2112;
  v9 = v5;
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "suggested top widget not found in stack for widget identifier: %@, extension bundle identifier: %@", &v6, 0x16u);
}

void __69__SBProactiveHomeScreenSuggestionProvider_processUpdatedPredictions___block_invoke_21_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_DEBUG, "removing suggested widget data source %@ because it's no longer suggested", &v2, 0xCu);
}

@end