@interface SBSystemApertureSecureElementRenderingOverlayViewController
- (SBSystemApertureSecureElementRenderingOverlayDelegate)delegate;
- (SBSystemApertureSecureElementRenderingOverlayViewController)initWithDelegate:(id)delegate;
- (id)_componentNamesToSecureStateMap;
- (id)_compositeStateNameForComponentStateAndLayoutMode:(id)mode layoutMode:(int64_t)layoutMode;
- (id)currentSecureFlipBookRenderingContext;
- (void)_applyFlipBookComponentStatesForSecureElementPreferences:(id)preferences;
- (void)_decrementActiveTransitionCount;
- (void)_ensureFlipBooksAreLoadedForSecureElementPreferences:(id)preferences;
- (void)_notifyRegisteredElementsOfActiveStatesAndConfigurations;
- (void)_updateActiveComponent:(id)component withState:(id)state;
- (void)_updateAppliedComponent:(id)component withState:(id)state;
- (void)handleUpdatesForSecureElementPreferences:(id)preferences;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation SBSystemApertureSecureElementRenderingOverlayViewController

- (SBSystemApertureSecureElementRenderingOverlayViewController)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = SBSystemApertureSecureElementRenderingOverlayViewController;
  v5 = [(SBSystemApertureSecureElementRenderingOverlayViewController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
  }

  return v6;
}

- (void)handleUpdatesForSecureElementPreferences:(id)preferences
{
  preferencesCopy = preferences;
  [(SBSystemApertureSecureElementRenderingOverlayViewController *)self _ensureFlipBooksAreLoadedForSecureElementPreferences:preferencesCopy];
  [(SBSystemApertureSecureElementRenderingOverlayViewController *)self _applyFlipBookComponentStatesForSecureElementPreferences:preferencesCopy];

  [(SBSystemApertureSecureElementRenderingOverlayViewController *)self _notifyRegisteredElementsOfActiveStatesAndConfigurations];
}

- (id)currentSecureFlipBookRenderingContext
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __100__SBSystemApertureSecureElementRenderingOverlayViewController_currentSecureFlipBookRenderingContext__block_invoke;
  v4[3] = &unk_2783BC570;
  v4[4] = self;
  v2 = [(SBSAAbstractDictionaryBackedContext *)SBSASecureFlipBookRenderingContext instanceWithBlock:v4];

  return v2;
}

void __100__SBSystemApertureSecureElementRenderingOverlayViewController_currentSecureFlipBookRenderingContext__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 992);
  v5 = a2;
  [v5 setActiveSecureElementIdentity:v3];
  [v5 setActiveConfigurationName:*(*(a1 + 32) + 1016)];
  v4 = [*(a1 + 32) _componentNamesToSecureStateMap];
  [v5 setComponentToSecureTransitionMapping:v4];

  [v5 setRequestedComponentsToStates:*(*(a1 + 32) + 1024)];
  [v5 setAppliedComponentsToStates:*(*(a1 + 32) + 1032)];
  [v5 setActiveComponentsToStates:*(*(a1 + 32) + 1040)];
  [v5 setTransitionInProgress:{objc_msgSend(*(a1 + 32), "_transitionInProgress")}];
}

- (void)viewDidLoad
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  installedFlipBooksByName = self->_installedFlipBooksByName;
  self->_installedFlipBooksByName = v3;

  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  componentNameToFlipBookName = self->_componentNameToFlipBookName;
  self->_componentNameToFlipBookName = v5;

  view = [(SBSystemApertureSecureElementRenderingOverlayViewController *)self view];
  [view setUserInteractionEnabled:0];
}

- (void)viewWillLayoutSubviews
{
  v31 = *MEMORY[0x277D85DE8];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  allValues = [(NSMutableDictionary *)self->_installedFlipBooksByName allValues];
  v4 = [allValues countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v27;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v27 != v6)
        {
          objc_enumerationMutation(allValues);
        }

        v8 = *(*(&v26 + 1) + 8 * i);
        [v8 nominalFrame];
        v10 = v9;
        v12 = v11;
        v14 = v13;
        v16 = v15;
        view = [(SBSystemApertureSecureElementRenderingOverlayViewController *)self view];
        [view convertRect:0 fromView:{v10, v12, v14, v16}];
        v19 = v18;
        v21 = v20;
        v23 = v22;
        v25 = v24;

        [v8 setFrame:{v19, v21, v23, v25}];
      }

      v5 = [allValues countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v5);
  }
}

- (void)_ensureFlipBooksAreLoadedForSecureElementPreferences:(id)preferences
{
  v77 = *MEMORY[0x277D85DE8];
  preferencesCopy = preferences;
  activeSecureElementIdentity = [preferencesCopy activeSecureElementIdentity];
  requestedConfigurationName = [preferencesCopy requestedConfigurationName];
  layoutDirection = [preferencesCopy layoutDirection];
  orientation = [preferencesCopy orientation];
  v75[0] = MEMORY[0x277D85DD0];
  v75[1] = 3221225472;
  v75[2] = __116__SBSystemApertureSecureElementRenderingOverlayViewController__ensureFlipBooksAreLoadedForSecureElementPreferences___block_invoke;
  v75[3] = &unk_2783A8C18;
  v75[4] = self;
  v10 = MEMORY[0x223D6F7F0](v75);
  v12 = v10;
  if (activeSecureElementIdentity)
  {
    v60 = v10;
    v13 = SBScreenMaximumFramesPerSecond(v10, v11);
    v14 = [SBSystemApertureSecureElementUtilities flipBookNameAndFallbacksForElement:activeSecureElementIdentity configurationName:requestedConfigurationName componentIndex:0 layoutDirection:layoutDirection orientation:orientation layoutMode:3 deviceMaxFPS:v13 artworkSubtype:SBFEffectiveArtworkSubtype()];
    requestedComponentsToStates = [preferencesCopy requestedComponentsToStates];
    allKeys = [requestedComponentsToStates allKeys];

    firstObject = [v14 firstObject];
    v16 = [firstObject isEqualToString:self->_loadedBaseFlipBookName];
    if (self->_loadedBaseFlipBookIsAFallback)
    {
      v17 = objc_msgSend_containsObject_(v14);
    }

    else
    {
      v17 = 0;
    }

    if (((v16 | v17) & 1) == 0)
    {
      v62 = requestedConfigurationName;
      v60[2]();
      v58 = v14;
      v18 = [[SBSASecureFlipBookView alloc] initWithSecureFlipBookNameAndFallbacks:v14];
      if (v18)
      {
        v56 = a2;
        view = [(SBSystemApertureSecureElementRenderingOverlayViewController *)self view];
        [view addSubview:v18];

        installedFlipBooksByName = self->_installedFlipBooksByName;
        flipBookName = [(SBSASecureFlipBookView *)v18 flipBookName];
        [(NSMutableDictionary *)installedFlipBooksByName setObject:v18 forKey:flipBookName];

        v66 = v18;
        componentCount = [(SBSASecureFlipBookView *)v18 componentCount];
        v24 = componentCount;
        if (!componentCount)
        {
          componentCount = [allKeys count];
          v24 = componentCount;
        }

        v57 = preferencesCopy;
        v61 = activeSecureElementIdentity;
        if (v24 >= 2)
        {
          for (i = 1; i != v24; ++i)
          {
            v26 = SBScreenMaximumFramesPerSecond(componentCount, v23);
            v27 = [SBSystemApertureSecureElementUtilities flipBookNameAndFallbacksForElement:activeSecureElementIdentity configurationName:v62 componentIndex:i layoutDirection:layoutDirection orientation:orientation layoutMode:3 deviceMaxFPS:v26 artworkSubtype:SBFEffectiveArtworkSubtype()];
            v28 = [[SBSASecureFlipBookView alloc] initWithSecureFlipBookNameAndFallbacks:v27];
            if (v28)
            {
              view2 = [(SBSystemApertureSecureElementRenderingOverlayViewController *)self view];
              [view2 addSubview:v28];

              v30 = self->_installedFlipBooksByName;
              flipBookName2 = [(SBSASecureFlipBookView *)v28 flipBookName];
              [(NSMutableDictionary *)v30 setObject:v28 forKey:flipBookName2];

              activeSecureElementIdentity = v61;
            }
          }
        }

        v73 = 0u;
        v74 = 0u;
        v71 = 0u;
        v72 = 0u;
        obj = [(NSMutableDictionary *)self->_installedFlipBooksByName allValues];
        v32 = [obj countByEnumeratingWithState:&v71 objects:v76 count:16];
        v18 = v66;
        if (v32)
        {
          v33 = v32;
          v65 = *v72;
          do
          {
            for (j = 0; j != v33; ++j)
            {
              if (*v72 != v65)
              {
                objc_enumerationMutation(obj);
              }

              v35 = *(*(&v71 + 1) + 8 * j);
              componentName = [v35 componentName];
              if (!componentName)
              {
                v70[0] = MEMORY[0x277D85DD0];
                v70[1] = 3221225472;
                v70[2] = __116__SBSystemApertureSecureElementRenderingOverlayViewController__ensureFlipBooksAreLoadedForSecureElementPreferences___block_invoke_9;
                v70[3] = &unk_2783B5428;
                v70[4] = self;
                componentName = [allKeys bs_firstObjectPassingTest:v70];
              }

              [(SBSystemApertureSecureElementRenderingOverlayViewController *)self _incrementActiveTransitionCount];
              initialStateName = [v35 initialStateName];
              v38 = [initialStateName componentsSeparatedByString:@"."];
              v39 = [v38 mutableCopy];

              [v39 removeObjectAtIndex:0];
              v40 = [v39 componentsJoinedByString:@"."];
              [(SBSystemApertureSecureElementRenderingOverlayViewController *)self _updateAppliedComponent:componentName withState:v40];
              v67[0] = MEMORY[0x277D85DD0];
              v67[1] = 3221225472;
              v67[2] = __116__SBSystemApertureSecureElementRenderingOverlayViewController__ensureFlipBooksAreLoadedForSecureElementPreferences___block_invoke_2;
              v67[3] = &unk_2783A9940;
              v67[4] = self;
              v41 = componentName;
              v68 = v41;
              v42 = v40;
              v69 = v42;
              [v35 transitionToState:initialStateName completion:v67];
              if (!v41)
              {
                [(SBSystemApertureSecureElementRenderingOverlayViewController *)v56 _ensureFlipBooksAreLoadedForSecureElementPreferences:v61];
              }

              componentNameToFlipBookName = self->_componentNameToFlipBookName;
              flipBookName3 = [v35 flipBookName];
              [(NSMutableDictionary *)componentNameToFlipBookName setObject:flipBookName3 forKey:v41];

              v18 = v66;
            }

            v33 = [obj countByEnumeratingWithState:&v71 objects:v76 count:16];
          }

          while (v33);
        }

        preferencesCopy = v57;
        activeSecureElementIdentity = v61;
      }

      v45 = [SBSAElementIdentification alloc];
      clientIdentifier = [activeSecureElementIdentity clientIdentifier];
      [activeSecureElementIdentity elementIdentifier];
      v48 = v47 = v18;
      v49 = [(SBSAElementIdentification *)v45 initWithClientIdentifier:clientIdentifier elementIdentifier:v48];
      displayedElement = self->_displayedElement;
      self->_displayedElement = v49;

      flipBookName4 = [(SBSASecureFlipBookView *)v47 flipBookName];
      loadedBaseFlipBookName = self->_loadedBaseFlipBookName;
      self->_loadedBaseFlipBookName = flipBookName4;

      firstObject2 = [v58 firstObject];
      flipBookName5 = [(SBSASecureFlipBookView *)v47 flipBookName];
      self->_loadedBaseFlipBookIsAFallback = [firstObject2 isEqualToString:flipBookName5] ^ 1;

      v14 = v58;
      requestedConfigurationName = v62;
      objc_storeStrong(&self->_installedFlipBookConfigurationName, v62);
      view3 = [(SBSystemApertureSecureElementRenderingOverlayViewController *)self view];
      [view3 setNeedsLayout];
    }

    v12 = v60;
  }

  else
  {
    (*(v10 + 16))(v10);
  }
}

void __116__SBSystemApertureSecureElementRenderingOverlayViewController__ensureFlipBooksAreLoadedForSecureElementPreferences___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 1048) count];
  if (v2)
  {
    v3 = SBLogSystemAperturePreferencesStackSecureFlipBookElements(v2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "[Overlay] Unloading all flipbooks", buf, 2u);
    }
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v4 = [*(*(a1 + 32) + 1048) allKeys];
  v5 = [v4 copy];

  v6 = [v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    do
    {
      v9 = 0;
      do
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(a1 + 32) + 1048) objectForKey:*(*(&v23 + 1) + 8 * v9)];
        [v10 removeFromSuperview];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v7);
  }

  [*(*(a1 + 32) + 1048) removeAllObjects];
  [*(*(a1 + 32) + 1056) removeAllObjects];
  v11 = *(a1 + 32);
  v12 = *(v11 + 992);
  *(v11 + 992) = 0;

  v13 = *(a1 + 32);
  v14 = *(v13 + 1008);
  *(v13 + 1008) = 0;

  v15 = *(a1 + 32);
  v16 = *(v15 + 1016);
  *(v15 + 1016) = 0;

  v17 = *(a1 + 32);
  v18 = *(v17 + 1024);
  *(v17 + 1024) = 0;

  v19 = *(a1 + 32);
  v20 = *(v19 + 1032);
  *(v19 + 1032) = 0;

  v21 = *(a1 + 32);
  v22 = *(v21 + 1040);
  *(v21 + 1040) = 0;
}

uint64_t __116__SBSystemApertureSecureElementRenderingOverlayViewController__ensureFlipBooksAreLoadedForSecureElementPreferences___block_invoke_9(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 1056);
  v3 = a2;
  v4 = [v2 allKeys];
  v5 = objc_msgSend_containsObject_(v4);

  return v5 ^ 1u;
}

uint64_t __116__SBSystemApertureSecureElementRenderingOverlayViewController__ensureFlipBooksAreLoadedForSecureElementPreferences___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _decrementActiveTransitionCount];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);

  return [v2 _updateActiveComponent:v3 withState:v4];
}

- (void)_applyFlipBookComponentStatesForSecureElementPreferences:(id)preferences
{
  v32 = *MEMORY[0x277D85DE8];
  preferencesCopy = preferences;
  requestedComponentsToStates = [preferencesCopy requestedComponentsToStates];
  objc_storeStrong(&self->_lastRequestedComponentToStateNames, requestedComponentsToStates);
  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  v27 = 0u;
  v20 = requestedComponentsToStates;
  obj = [requestedComponentsToStates allKeys];
  v5 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v5)
  {
    v6 = v5;
    v19 = *v28;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v28 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v27 + 1) + 8 * i);
        v9 = [v20 objectForKeyedSubscript:v8];
        v10 = -[SBSystemApertureSecureElementRenderingOverlayViewController _compositeStateNameForComponentStateAndLayoutMode:layoutMode:](self, "_compositeStateNameForComponentStateAndLayoutMode:layoutMode:", v9, [preferencesCopy activeLayoutMode]);
        v11 = [(NSMutableDictionary *)self->_componentNameToFlipBookName objectForKeyedSubscript:v8];
        v12 = [(NSMutableDictionary *)self->_installedFlipBooksByName objectForKeyedSubscript:v11];
        v13 = v12;
        if (v12)
        {
          state = [v12 state];
          v15 = [state isEqual:v10];

          if (v15)
          {
            goto LABEL_13;
          }

          [(SBSystemApertureSecureElementRenderingOverlayViewController *)self _incrementActiveTransitionCount];
          [(SBSystemApertureSecureElementRenderingOverlayViewController *)self _updateAppliedComponent:v8 withState:v9];
          v25[0] = MEMORY[0x277D85DD0];
          v25[1] = 3221225472;
          v25[2] = __120__SBSystemApertureSecureElementRenderingOverlayViewController__applyFlipBookComponentStatesForSecureElementPreferences___block_invoke;
          v25[3] = &unk_2783A9940;
          v25[4] = self;
          v25[5] = v8;
          v26 = v9;
          [v13 transitionToState:v10 completion:v25];
          v16 = &v26;
        }

        else
        {
          v17 = SBLogSystemAperturePreferencesStackSecureFlipBookElements(0);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_21ED4E000, v17, OS_LOG_TYPE_DEFAULT, "[Overlay] FlipBooks failed to load. Allowing state machine forward progress.", buf, 2u);
          }

          [(SBSystemApertureSecureElementRenderingOverlayViewController *)self _updateAppliedComponent:v8 withState:v9];
          [(SBSystemApertureSecureElementRenderingOverlayViewController *)self _incrementActiveTransitionCount];
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __120__SBSystemApertureSecureElementRenderingOverlayViewController__applyFlipBookComponentStatesForSecureElementPreferences___block_invoke_23;
          block[3] = &unk_2783A8ED8;
          block[4] = self;
          block[5] = v8;
          v23 = v9;
          dispatch_async(MEMORY[0x277D85CD0], block);
          v16 = &v23;
        }

LABEL_13:
      }

      v6 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v6);
  }
}

void *__120__SBSystemApertureSecureElementRenderingOverlayViewController__applyFlipBookComponentStatesForSecureElementPreferences___block_invoke(uint64_t a1, int a2)
{
  result = [*(a1 + 32) _decrementActiveTransitionCount];
  if (a2)
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);

    return [v5 _updateActiveComponent:v6 withState:v7];
  }

  return result;
}

uint64_t __120__SBSystemApertureSecureElementRenderingOverlayViewController__applyFlipBookComponentStatesForSecureElementPreferences___block_invoke_23(uint64_t a1)
{
  [*(a1 + 32) _decrementActiveTransitionCount];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);

  return [v2 _updateActiveComponent:v3 withState:v4];
}

- (void)_notifyRegisteredElementsOfActiveStatesAndConfigurations
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  currentSecureFlipBookRenderingContext = [(SBSystemApertureSecureElementRenderingOverlayViewController *)self currentSecureFlipBookRenderingContext];
  [WeakRetained renderingOverlay:self updatedRenderedConfiguration:currentSecureFlipBookRenderingContext];
}

- (void)_updateAppliedComponent:(id)component withState:(id)state
{
  componentCopy = component;
  stateCopy = state;
  lastAppliedComponentToStateNames = self->_lastAppliedComponentToStateNames;
  if (!lastAppliedComponentToStateNames)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v9 = self->_lastAppliedComponentToStateNames;
    self->_lastAppliedComponentToStateNames = dictionary;

    lastAppliedComponentToStateNames = self->_lastAppliedComponentToStateNames;
  }

  [(NSMutableDictionary *)lastAppliedComponentToStateNames setObject:stateCopy forKey:componentCopy];
  [(SBSystemApertureSecureElementRenderingOverlayViewController *)self _notifyRegisteredElementsOfActiveStatesAndConfigurations];
}

- (void)_updateActiveComponent:(id)component withState:(id)state
{
  componentCopy = component;
  stateCopy = state;
  lastActiveComponentToStateNames = self->_lastActiveComponentToStateNames;
  if (!lastActiveComponentToStateNames)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v9 = self->_lastActiveComponentToStateNames;
    self->_lastActiveComponentToStateNames = dictionary;

    lastActiveComponentToStateNames = self->_lastActiveComponentToStateNames;
  }

  [(NSMutableDictionary *)lastActiveComponentToStateNames setObject:stateCopy forKey:componentCopy];
  [(SBSystemApertureSecureElementRenderingOverlayViewController *)self _notifyRegisteredElementsOfActiveStatesAndConfigurations];
}

- (id)_componentNamesToSecureStateMap
{
  v19 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = [(NSMutableDictionary *)self->_componentNameToFlipBookName allKeys];
  v4 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v9 = [(NSMutableDictionary *)self->_componentNameToFlipBookName objectForKeyedSubscript:v8];
        v10 = [(NSMutableDictionary *)self->_installedFlipBooksByName objectForKeyedSubscript:v9];
        secureSequenceMap = [v10 secureSequenceMap];
        [dictionary setObject:secureSequenceMap forKey:v8];
      }

      v5 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  return dictionary;
}

- (id)_compositeStateNameForComponentStateAndLayoutMode:(id)mode layoutMode:(int64_t)layoutMode
{
  v4 = @"presented";
  if (layoutMode < 1)
  {
    v4 = @"hidden";
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", v4, mode];
}

- (void)_decrementActiveTransitionCount
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"SBSystemApertureSecureElementRenderingOverlayViewController.m" lineNumber:259 description:@"Trying to decrement active transition count when no transitions are active"];

  *a4 = *a3;
}

- (SBSystemApertureSecureElementRenderingOverlayDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_ensureFlipBooksAreLoadedForSecureElementPreferences:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"SBSystemApertureSecureElementRenderingOverlayViewController.m" lineNumber:169 description:{@"Couldn't determine component names for element: %@", a3}];
}

@end