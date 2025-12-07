@interface SBSALayoutModeSupportingProvider
- (id)preferencesFromContext:(id)context;
- (void)_transitionToLayoutModeIfNecessary:(int64_t)necessary customLayoutCustomizingOptions:(int64_t)options context:(id)context;
@end

@implementation SBSALayoutModeSupportingProvider

- (id)preferencesFromContext:(id)context
{
  contextCopy = context;
  v5 = objc_opt_class();
  v6 = contextCopy;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  elementContexts = [v8 elementContexts];
  systemApertureCustomLayout = [elementContexts count];
  if (systemApertureCustomLayout)
  {
    v11 = [elementContexts bs_firstObjectPassingTest:&__block_literal_global_349];
    v12 = v11;
    if (v11)
    {
      systemApertureCustomLayout = [v11 systemApertureCustomLayout];
      v13 = 3;
    }

    else if (systemApertureCustomLayout == 1 && ([elementContexts sbsa_onlyObjectOrNil], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "layoutMode"), v14, v15 != 1))
    {
      systemApertureCustomLayout = 0;
      v13 = 2;
    }

    else
    {
      systemApertureCustomLayout = 0;
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  [(SBSALayoutModeSupportingProvider *)self _transitionToLayoutModeIfNecessary:v13 customLayoutCustomizingOptions:systemApertureCustomLayout context:v8];
  v18.receiver = self;
  v18.super_class = SBSALayoutModeSupportingProvider;
  v16 = [(SBSABasePreferencesProvider *)&v18 preferencesFromContext:v8];

  return v16;
}

BOOL __59__SBSALayoutModeSupportingProvider_preferencesFromContext___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 layoutMode];
  v4 = [v2 systemApertureCustomLayout];

  return SBSABehavesLikeCustom(v3, v4);
}

- (void)_transitionToLayoutModeIfNecessary:(int64_t)necessary customLayoutCustomizingOptions:(int64_t)options context:(id)context
{
  v37 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  WeakRetained = objc_loadWeakRetained(&self->_activeTransitionProvider);
  v11 = objc_loadWeakRetained(&self->_elementRemovalTransitionProvider);
  _firstElementLayoutModeSupportingProvider = [(SBSALayoutModeSupportingProvider *)self _firstElementLayoutModeSupportingProvider];
  v13 = _firstElementLayoutModeSupportingProvider;
  if ((necessary - 1) < 3)
  {
    if (v11)
    {
      v14 = SBLogSystemAperturePreferencesStackElements(_firstElementLayoutModeSupportingProvider);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        queryIteration = [contextCopy queryIteration];
        v30 = SAUIStringFromElementViewLayoutMode();
        *buf = 134349570;
        v32 = queryIteration;
        v33 = 2112;
        v34 = v30;
        v35 = 2112;
        v36 = v11;
        _os_log_debug_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_DEBUG, "[%{public}lu] Cleaning up ContainerDisappearanceTransitionProvider for change to layoutMode: %@; %@", buf, 0x20u);
      }

      [(SBSAElementRemovalTransitionProvider *)v11 removeFromParentProvider];
      _firstElementLayoutModeSupportingProvider = objc_storeWeak(&self->_elementRemovalTransitionProvider, 0);
    }

    if (v13)
    {
      _firstElementLayoutModeSupportingProvider = SBSALayoutModeAndCustomLayoutOptionBehavesLikeTargetLayoutMode(necessary, options, [v13 supportedElementLayoutMode]);
      if (_firstElementLayoutModeSupportingProvider)
      {
        v15 = v13;
        preferences = [contextCopy preferences];
        isCollisionImminent = [preferences isCollisionImminent];

        if (!isCollisionImminent)
        {
LABEL_22:

          v11 = 0;
          goto LABEL_37;
        }

        v19 = SBLogSystemAperturePreferencesStackElements(v18);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          queryIteration2 = [contextCopy queryIteration];
          *buf = 134349570;
          v32 = queryIteration2;
          v33 = 2112;
          v34 = v15;
          v35 = 2112;
          v36 = WeakRetained;
          _os_log_debug_impl(&dword_21ED4E000, v19, OS_LOG_TYPE_DEBUG, "[%{public}lu] Layout provider for desired layout mode exists, but collision required – removing layout provider '%@', transition provider '%@'", buf, 0x20u);
        }

        [v15 removeFromParentProvider];
        [(SBSAElementRemovalTransitionProvider *)WeakRetained removeFromParentProvider];

        _firstElementLayoutModeSupportingProvider = objc_storeWeak(&self->_activeTransitionProvider, 0);
        WeakRetained = 0;
      }
    }

    v20 = SBLogSystemAperturePreferencesStackElements(_firstElementLayoutModeSupportingProvider);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      [SBSALayoutModeSupportingProvider _transitionToLayoutModeIfNecessary:contextCopy customLayoutCustomizingOptions:v20 context:?];
    }

    targetElementLayoutMode = [(SBSAElementRemovalTransitionProvider *)WeakRetained targetElementLayoutMode];
    v22 = [(SBSAElementRemovalTransitionProvider *)WeakRetained isInitialized]^ 1;
    if (targetElementLayoutMode == necessary)
    {
      LOBYTE(v22) = 1;
    }

    if (!WeakRetained || (v22 & 1) == 0)
    {
      v23 = objc_alloc_init(SBSALayoutTransitionProvider);
      objc_storeWeak(&self->_activeTransitionProvider, v23);
      v24 = SBLogSystemAperturePreferencesStackElements([(SBSABasePreferencesProvider *)self setChildProvider:v23]);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        [SBSALayoutModeSupportingProvider _transitionToLayoutModeIfNecessary:contextCopy customLayoutCustomizingOptions:v23 context:v24];
      }

      [(SBSAElementRemovalTransitionProvider *)WeakRetained removeFromParentProvider];
    }

    v15 = 0;
    goto LABEL_22;
  }

  if ((necessary + 1) <= 1)
  {
    if (_firstElementLayoutModeSupportingProvider)
    {
      if ([_firstElementLayoutModeSupportingProvider supportedElementLayoutMode] <= 0)
      {
        [SBSALayoutModeSupportingProvider _transitionToLayoutModeIfNecessary:a2 customLayoutCustomizingOptions:self context:?];
      }

      [v13 removeFromParentProvider];
    }

    if (WeakRetained)
    {
      [(SBSAElementRemovalTransitionProvider *)WeakRetained removeFromParentProvider];

      objc_storeWeak(&self->_activeTransitionProvider, 0);
    }

    if (!v11)
    {
      v25 = [(SBSABasePreferencesProvider *)self firstChildPreferenceProviderOfClass:objc_opt_class()];
      if (v25)
      {
        v26 = v25;
        [v25 removeFromParentProvider];
      }

      v27 = [(SBSABasePreferencesProvider *)self firstChildPreferenceProviderOfClass:objc_opt_class()];

      if (v27)
      {
        [SBSALayoutModeSupportingProvider _transitionToLayoutModeIfNecessary:a2 customLayoutCustomizingOptions:self context:?];
      }

      v11 = [(SBSABasePreferencesProvider *)[SBSAElementRemovalTransitionProvider alloc] initWithParentProvider:self];
      objc_storeWeak(&self->_elementRemovalTransitionProvider, v11);
    }

    WeakRetained = 0;
  }

LABEL_37:
}

- (void)_transitionToLayoutModeIfNecessary:(void *)a1 customLayoutCustomizingOptions:(NSObject *)a2 context:.cold.1(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134349056;
  v4 = [a1 queryIteration];
  _os_log_debug_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_DEBUG, "[%{public}lu] No layout provider for desired layout mode – transition required", &v3, 0xCu);
}

- (void)_transitionToLayoutModeIfNecessary:(void *)a1 customLayoutCustomizingOptions:(uint64_t)a2 context:(NSObject *)a3 .cold.2(void *a1, uint64_t a2, NSObject *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = 134349314;
  v6 = [a1 queryIteration];
  v7 = 2112;
  v8 = a2;
  _os_log_debug_impl(&dword_21ED4E000, a3, OS_LOG_TYPE_DEBUG, "[%{public}lu] Added new transition provider: %@", &v5, 0x16u);
}

- (void)_transitionToLayoutModeIfNecessary:(uint64_t)a1 customLayoutCustomizingOptions:(uint64_t)a2 context:.cold.3(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSALayoutModeSupportingProvider.m" lineNumber:79 description:@"All SBSAElementLayoutModeSupporting providers currently do not support LayoutModeNone."];
}

- (void)_transitionToLayoutModeIfNecessary:(uint64_t)a1 customLayoutCustomizingOptions:(uint64_t)a2 context:.cold.4(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSALayoutModeSupportingProvider.m" lineNumber:95 description:@"There is still an element content provider in the stack?"];
}

@end