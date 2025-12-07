@interface SBSALayoutTransitionProvider
- (NSString)description;
- (id)_adjunctElementIdentificationInContext:(id)context;
- (id)_elementLayoutModeSupportingChildProvider;
- (id)_layoutProviderForLayoutMode:(int64_t)mode;
- (id)preferencesFromContext:(id)context;
- (void)_removeChildMitosisAndRecombinationProviders;
- (void)removeFromParentProvider;
@end

@implementation SBSALayoutTransitionProvider

- (void)removeFromParentProvider
{
  [(SBSALayoutTransitionProvider *)self _removeChildMitosisAndRecombinationProviders];
  v3.receiver = self;
  v3.super_class = SBSALayoutTransitionProvider;
  [(SBSABasePreferencesProvider *)&v3 removeFromParentProvider];
}

- (void)_removeChildMitosisAndRecombinationProviders
{
  [(SBSABasePreferencesProvider *)self->_childMitosisProvider removeFromParentProvider];
  childMitosisProvider = self->_childMitosisProvider;
  self->_childMitosisProvider = 0;

  [(SBSABasePreferencesProvider *)self->_childRecombinationProvider removeFromParentProvider];
  childRecombinationProvider = self->_childRecombinationProvider;
  self->_childRecombinationProvider = 0;

  [(SBSABasePreferencesProvider *)self->_childPopProvider removeFromParentProvider];
  childPopProvider = self->_childPopProvider;
  self->_childPopProvider = 0;
}

- (NSString)description
{
  isInitialized = [(SBSALayoutTransitionProvider *)self isInitialized];
  v4 = objc_alloc(MEMORY[0x277CCAB68]);
  v5 = objc_opt_class();
  v6 = NSStringFromBOOL();
  v7 = [v4 initWithFormat:@"<%@: %p; initialized: %@", v5, self, v6];

  if (isInitialized)
  {
    [(SBSALayoutTransitionProvider *)self previousElementLayoutMode];
    v8 = SAUIStringFromElementViewLayoutMode();
    [(SBSALayoutTransitionProvider *)self targetElementLayoutMode];
    v9 = SAUIStringFromElementViewLayoutMode();
    [v7 appendFormat:@"; previousElementLayoutMode: %@; targetElementLayoutMode: %@", v8, v9];
  }

  [v7 appendString:@">"];

  return v7;
}

- (id)preferencesFromContext:(id)context
{
  v123 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v6 = objc_opt_class();
  v7 = contextCopy;
  if (v6)
  {
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

  v10 = objc_opt_self();
  v11 = [(SBSABasePreferencesProvider *)self firstChildPreferenceProviderOfClass:v10];

  v12 = &OBJC_IVAR___SBAlwaysOnTelemetryEmitter__mq_deferredLoggingTimer;
  if (!v9)
  {
LABEL_74:
    v76 = 0;
    goto LABEL_75;
  }

  targetLayoutProvider = self->_targetLayoutProvider;
  v110 = a2;
  if (!targetLayoutProvider)
  {
    v14 = SBLogSystemAperturePreferencesStackElements(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [SBSALayoutTransitionProvider preferencesFromContext:v9];
    }

    [(SBSABasePreferencesProvider *)v11 removeFromParentProvider];
    elementContexts = [v9 elementContexts];
    v16 = [elementContexts bs_filter:&__block_literal_global_179];

    firstObject = [v16 firstObject];
    layoutMode = [firstObject layoutMode];
    if (layoutMode == 3)
    {
      if ([firstObject systemApertureCustomLayout] == 5)
      {
        if ([v16 count] > 1)
        {
          layoutMode = 1;
        }

        else
        {
          layoutMode = 2;
        }
      }

      else
      {
        layoutMode = 3;
      }
    }

    v19 = [(SBSALayoutTransitionProvider *)self _layoutProviderForLayoutMode:layoutMode];
    v20 = self->_targetLayoutProvider;
    self->_targetLayoutProvider = v19;

    v22 = SBLogSystemAperturePreferencesStackElements(v21);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      [SBSALayoutTransitionProvider preferencesFromContext:];
    }

    _elementLayoutModeSupportingChildProvider = [(SBSALayoutTransitionProvider *)self _elementLayoutModeSupportingChildProvider];
    previousLayoutProvider = self->_previousLayoutProvider;
    self->_previousLayoutProvider = _elementLayoutModeSupportingChildProvider;
    v25 = _elementLayoutModeSupportingChildProvider;

    preferences = [v9 preferences];
    self->_awaitingCollision = [preferences isCollisionImminent];

    v28 = SBLogSystemAperturePreferencesStackElements(v27);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      [SBSALayoutTransitionProvider preferencesFromContext:];
    }

    [(SBSAElementLayoutModeSupporting *)v25 removeFromParentProvider];
    preferences2 = [v9 preferences];
    lastChangingElementLayoutTransition = [preferences2 lastChangingElementLayoutTransition];
    v31 = [SBSAElementContentProvider disappearanceTransitionElementContentProviderWithParentProvider:self staticLayoutTransition:lastChangingElementLayoutTransition];

    targetLayoutProvider = self->_targetLayoutProvider;
    v11 = v31;
    v12 = &OBJC_IVAR___SBAlwaysOnTelemetryEmitter__mq_deferredLoggingTimer;
  }

  parentProvider = [(SBSAElementLayoutModeSupporting *)targetLayoutProvider parentProvider];
  v33 = parentProvider != 0;

  if (parentProvider)
  {
    v35 = [v9 containsAnyOfSignals:2];
    if (!v35)
    {
      v33 = 0;
      goto LABEL_52;
    }

    _elementLayoutModeSupportingChildProvider2 = SBLogSystemAperturePreferencesStackElements(v35);
    if (os_log_type_enabled(_elementLayoutModeSupportingChildProvider2, OS_LOG_TYPE_DEBUG))
    {
      [SBSALayoutTransitionProvider preferencesFromContext:];
    }

    v37 = v11;
    goto LABEL_50;
  }

  v38 = SBLogSystemAperturePreferencesStackElements(v34);
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
  {
    [SBSALayoutTransitionProvider preferencesFromContext:];
  }

  v108 = parentProvider != 0;
  v39 = self->_awaitingCollision && ([v9 signals] & 1) == 0;
  self->_awaitingCollision = v39;
  preferences3 = [v9 preferences];
  elementLayoutTransition = [preferences3 elementLayoutTransition];
  isSingleElementExpansion = [elementLayoutTransition isSingleElementExpansion];

  if (!self->_awaitingCollision && ((self->_initialized | isSingleElementExpansion) & 1) != 0)
  {
    v44 = SBLogSystemAperturePreferencesStackElements(v43);
    v106 = isSingleElementExpansion;
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
    {
      queryIteration = [v9 queryIteration];
      v98 = NSStringFromBOOL();
      v99 = NSStringFromBOOL();
      v100 = NSStringFromBOOL();
      *buf = 134349826;
      v114 = queryIteration;
      v115 = 2112;
      v116 = v98;
      v117 = 2112;
      v118 = v99;
      v119 = 2112;
      v120 = v100;
      _os_log_debug_impl(&dword_21ED4E000, v44, OS_LOG_TYPE_DEBUG, "[%{public}lu] awaitingCollision: %@; initialized: %@; isSingleElementExpansion: %@", buf, 0x2Au);
    }

    [(SBSABasePreferencesProvider *)v11 removeFromParentProvider];
    if (isSingleElementExpansion)
    {
      [(SBSABasePreferencesProvider *)self->_childRecombinationProvider removeFromParentProvider];
      childRecombinationProvider = self->_childRecombinationProvider;
      self->_childRecombinationProvider = 0;
    }

    _elementLayoutModeSupportingChildProvider2 = [(SBSALayoutTransitionProvider *)self _elementLayoutModeSupportingChildProvider];
    [_elementLayoutModeSupportingChildProvider2 removeFromParentProvider];
    childMitosisProvider = self->_childMitosisProvider;
    if (!childMitosisProvider)
    {
      childMitosisProvider = self->_childRecombinationProvider;
      if (!childMitosisProvider)
      {
        childMitosisProvider = self;
      }
    }

    v104 = childMitosisProvider;
    [v104 setChildProvider:self->_targetLayoutProvider];
    v47 = self->_targetLayoutProvider;
    preferences4 = [v9 preferences];
    lastChangingElementLayoutTransition2 = [preferences4 lastChangingElementLayoutTransition];
    v37 = [SBSAElementContentProvider appearanceTransitionElementContentProviderWithParentProvider:v47 staticLayoutTransition:lastChangingElementLayoutTransition2];

    v33 = v108;
    if (v106)
    {
      supportedElementLayoutMode = [(SBSAElementLayoutModeSupporting *)self->_targetLayoutProvider supportedElementLayoutMode];
      if (supportedElementLayoutMode == 3)
      {
        elementInteractionResults = [v9 elementInteractionResults];
        v52 = [elementInteractionResults bs_containsObjectPassingTest:&__block_literal_global_13];

        if (v52)
        {
          v53 = [(SBSABasePreferencesProvider *)[SBSAPopTransitionProvider alloc] initWithParentProvider:self];
          childPopProvider = self->_childPopProvider;
          self->_childPopProvider = v53;

          v56 = SBLogSystemAperturePreferencesStackElements(v55);
          if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
          {
            [SBSALayoutTransitionProvider preferencesFromContext:];
          }
        }
      }
    }

    v57 = SBLogSystemAperturePreferencesStackElements(supportedElementLayoutMode);
    v12 = &OBJC_IVAR___SBAlwaysOnTelemetryEmitter__mq_deferredLoggingTimer;
    if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
    {
      queryIteration2 = [v9 queryIteration];
      v102 = self->_targetLayoutProvider;
      *buf = 134350082;
      v114 = queryIteration2;
      v115 = 2112;
      v116 = v37;
      v117 = 2112;
      v118 = _elementLayoutModeSupportingChildProvider2;
      v119 = 2112;
      v120 = v102;
      v121 = 2112;
      v122 = v37;
      _os_log_debug_impl(&dword_21ED4E000, v57, OS_LOG_TYPE_DEBUG, "[%{public}lu] Removed content provider '%@', removed layout provider '%@', inserted layout provider '%@', added content provider '%@'", buf, 0x34u);
    }

LABEL_50:
    v11 = v37;
    goto LABEL_52;
  }

  v33 = 0;
LABEL_52:
  if (self->_transitionKind)
  {
    goto LABEL_63;
  }

  preferences5 = [v9 preferences];
  isCollisionImminent = [preferences5 isCollisionImminent];

  targetElementLayoutMode = [(SBSALayoutTransitionProvider *)self targetElementLayoutMode];
  if (!isCollisionImminent)
  {
    if (targetElementLayoutMode == 1)
    {
      preferences6 = [v9 preferences];
      elementLayoutTransition2 = [preferences6 elementLayoutTransition];
      targetElementContexts = [elementLayoutTransition2 targetElementContexts];
      if ([targetElementContexts count] >= 2)
      {

LABEL_62:
        self->_transitionKind = 2;
        v69 = [SBSAMitosisTransitionProvider alloc];
        v70 = [(SBSALayoutTransitionProvider *)self _adjunctElementIdentificationInContext:v9];
        v71 = [(SBSASequencedBehaviorProvider *)v69 initWithParticipantIdentifier:v70];
        v72 = self->_childMitosisProvider;
        self->_childMitosisProvider = v71;

        [(SBSABasePreferencesProvider *)self setChildProvider:self->_childMitosisProvider];
LABEL_63:
        if (!v33)
        {
          goto LABEL_68;
        }

        goto LABEL_64;
      }

      preferences7 = [v9 preferences];
      elementLayoutTransition3 = [preferences7 elementLayoutTransition];
      targetElementContexts2 = [elementLayoutTransition3 targetElementContexts];
      [targetElementContexts2 firstObject];
      v68 = v109 = preferences6;
      v105 = [v68 interfaceOrientation] - 3;

      v12 = &OBJC_IVAR___SBAlwaysOnTelemetryEmitter__mq_deferredLoggingTimer;
      if (v105 < 2)
      {
        goto LABEL_62;
      }
    }

    self->_transitionKind = 1;
    if (!v33)
    {
      goto LABEL_68;
    }

    goto LABEL_64;
  }

  v61 = 3;
  if (targetElementLayoutMode == 1)
  {
    v61 = 4;
  }

  self->_transitionKind = v61;
  v62 = [(SBSABasePreferencesProvider *)[SBSARecombinationTransitionProvider alloc] initWithParentProvider:self];
  v63 = self->_childRecombinationProvider;
  self->_childRecombinationProvider = v62;

  if (!v33)
  {
LABEL_68:
    if (self->_transitionKind == 4 && !self->_awaitingCollision)
    {
      v77 = self->_childRecombinationProvider;
      if (v77)
      {
        [(SBSABasePreferencesProvider *)v77 removeFromParentProvider];
        v78 = self->_childRecombinationProvider;
        self->_childRecombinationProvider = 0;

        v79 = [SBSAMitosisTransitionProvider alloc];
        v80 = [(SBSALayoutTransitionProvider *)self _adjunctElementIdentificationInContext:v9];
        v81 = [(SBSASequencedBehaviorProvider *)v79 initWithParticipantIdentifier:v80];
        v82 = self->_childMitosisProvider;
        self->_childMitosisProvider = v81;

        [(SBSABasePreferencesProvider *)self setChildProvider:self->_childMitosisProvider];
      }
    }

    settings = [objc_opt_class() settings];
    highlightTransitions = [settings highlightTransitions];

    if (highlightTransitions)
    {
      preferences8 = [v9 preferences];
      v112[0] = MEMORY[0x277D85DD0];
      v112[1] = 3221225472;
      v112[2] = __55__SBSALayoutTransitionProvider_preferencesFromContext___block_invoke_17;
      v112[3] = &unk_2783A93E8;
      v112[4] = self;
      v112[5] = v110;
      v86 = [preferences8 copyWithBlock:v112];
      v87 = [v9 copyByUpdatingPreferences:v86];

      v76 = 0;
      v9 = v87;
      goto LABEL_75;
    }

    goto LABEL_74;
  }

LABEL_64:
  [(SBSALayoutTransitionProvider *)self _removeChildMitosisAndRecombinationProviders];
  v73 = v11;
  [(SBSABasePreferencesProvider *)v73 removeFromParentProvider];
  v11 = [[SBSAElementContentProvider alloc] initWithParentProvider:self->_targetLayoutProvider];

  v75 = SBLogSystemAperturePreferencesStackElements(v74);
  if (os_log_type_enabled(v75, OS_LOG_TYPE_DEBUG))
  {
    queryIteration3 = [v9 queryIteration];
    *buf = 134349570;
    v114 = queryIteration3;
    v115 = 2112;
    v116 = v73;
    v117 = 2112;
    v118 = v11;
    _os_log_debug_impl(&dword_21ED4E000, v75, OS_LOG_TYPE_DEBUG, "[%{public}lu] Transition complete – removed appearance content provider '%@', added steady state content provider '%@'", buf, 0x20u);
  }

  v76 = 1;
LABEL_75:
  *(&self->super.super.isa + v12[963]) = 1;
  v111.receiver = self;
  v111.super_class = SBSALayoutTransitionProvider;
  v88 = [(SBSABasePreferencesProvider *)&v111 preferencesFromContext:v9];
  v89 = objc_opt_class();
  v90 = v88;
  if (v89)
  {
    if (objc_opt_isKindOfClass())
    {
      v91 = v90;
    }

    else
    {
      v91 = 0;
    }
  }

  else
  {
    v91 = 0;
  }

  v92 = v91;

  if (v76)
  {
    v94 = SBLogSystemAperturePreferencesStackElements(v93);
    if (os_log_type_enabled(v94, OS_LOG_TYPE_DEBUG))
    {
      [SBSALayoutTransitionProvider preferencesFromContext:];
    }

    [(SBSALayoutTransitionProvider *)self removeFromParentProvider];
  }

  return v92;
}

BOOL __55__SBSALayoutTransitionProvider_preferencesFromContext___block_invoke_10(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 interactionSource] == 2 && objc_msgSend(v2, "viewInteractionResult") == 1;

  return v3;
}

void __55__SBSALayoutTransitionProvider_preferencesFromContext___block_invoke_17(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = objc_opt_self();
    v5 = v3;
    if (v4)
    {
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    if (!v7)
    {
      __55__SBSALayoutTransitionProvider_preferencesFromContext___block_invoke_17_cold_1(a1, v5);
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = [v7 containerViewDescriptions];
  v9 = [v8 mutableCopy];

  if ([v9 count])
  {
    v10 = 0;
    do
    {
      v11 = [v9 objectAtIndex:v10];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __55__SBSALayoutTransitionProvider_preferencesFromContext___block_invoke_2;
      v14[3] = &unk_2783AD750;
      v12 = *(a1 + 32);
      v16 = *(a1 + 40);
      v14[4] = v12;
      v15 = v7;
      v13 = [v11 copyWithBlock:v14];
      [v9 replaceObjectAtIndex:v10 withObject:v13];

      ++v10;
    }

    while (v10 < [v9 count]);
  }

  [v7 setContainerViewDescriptions:v9];
}

void __55__SBSALayoutTransitionProvider_preferencesFromContext___block_invoke_2(uint64_t a1, void *a2)
{
  v14 = a2;
  if (v14)
  {
    v3 = objc_opt_self();
    v4 = v14;
    if (v3)
    {
      if (objc_opt_isKindOfClass())
      {
        v5 = v4;
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;

    if (!v6)
    {
      __55__SBSALayoutTransitionProvider_preferencesFromContext___block_invoke_2_cold_1(a1, v4);
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = [MEMORY[0x277D75348] systemBlueColor];
  v8 = [v7 colorWithAlphaComponent:0.5];
  [v6 setBackgroundColor:v8];

  v9 = *(a1 + 40);
  v10 = [*(a1 + 32) newAnimatedTransitionDescriptionForProperty:@"backgroundColor"];
  v11 = [SBSAInterfaceElementPropertyIdentity alloc];
  v12 = [v6 interfaceElementIdentifier];
  v13 = [(SBSAInterfaceElementPropertyIdentity *)v11 initWithAssociatedInterfaceElementIdentifier:v12 andProperty:@"backgroundColor"];
  [v9 setAnimatedTransitionDescription:v10 forProperty:v13 withMilestones:0];
}

- (id)_layoutProviderForLayoutMode:(int64_t)mode
{
  if (mode < 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = [[SBSALayoutModeLayoutProvider alloc] initWithLayoutMode:mode];
  }

  return v4;
}

- (id)_elementLayoutModeSupportingChildProvider
{
  v3 = objc_opt_self();
  v4 = [(SBSABasePreferencesProvider *)self firstChildPreferenceProviderOfClass:v3];

  return v4;
}

- (id)_adjunctElementIdentificationInContext:(id)context
{
  elementContexts = [context elementContexts];
  if ([elementContexts count])
  {
    v4 = 0;
    while (SBSAIsElementInCollectionSensorAttached(v4, elementContexts))
    {
      if (++v4 >= [elementContexts count])
      {
        goto LABEL_5;
      }
    }

    v5 = [elementContexts objectAtIndex:v4];
  }

  else
  {
LABEL_5:
    v5 = 0;
  }

  return v5;
}

- (void)preferencesFromContext:(void *)a1 .cold.1(void *a1)
{
  [a1 queryIteration];
  OUTLINED_FUNCTION_0_4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)preferencesFromContext:.cold.2()
{
  OUTLINED_FUNCTION_5_1();
  [v0 queryIteration];
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_0_4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
}

- (void)preferencesFromContext:.cold.3()
{
  OUTLINED_FUNCTION_5_1();
  [v0 queryIteration];
  v6 = NSStringFromBOOL();
  OUTLINED_FUNCTION_0_4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
}

- (void)preferencesFromContext:.cold.4()
{
  OUTLINED_FUNCTION_5_1();
  [v0 queryIteration];
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_0_4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
}

- (void)preferencesFromContext:.cold.5()
{
  OUTLINED_FUNCTION_5_1();
  [v0 queryIteration];
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_0_4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
}

- (void)preferencesFromContext:.cold.6()
{
  OUTLINED_FUNCTION_5_1();
  [v0 queryIteration];
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_0_4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
}

- (void)preferencesFromContext:.cold.7()
{
  OUTLINED_FUNCTION_5_1();
  [v0 queryIteration];
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_0_4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
}

void __55__SBSALayoutTransitionProvider_preferencesFromContext___block_invoke_17_cold_1(uint64_t a1, uint64_t a2)
{
  v9 = [MEMORY[0x277CCA890] currentHandler];
  v5 = a1 + 32;
  v3 = *(a1 + 32);
  v4 = *(v5 + 8);
  v6 = NSClassFromString(&cfstr_Sbsapreference_0.isa);
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v9 handleFailureInMethod:v4 object:v3 file:@"SBSALayoutTransitionProvider.m" lineNumber:193 description:{@"Unexpected class – expected '%@', got '%@'", v6, v8}];
}

void __55__SBSALayoutTransitionProvider_preferencesFromContext___block_invoke_2_cold_1(uint64_t a1, uint64_t a2)
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  v3 = *(a1 + 48);
  v4 = *(a1 + 32);
  v5 = NSClassFromString(&cfstr_Sbsacontainerv.isa);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v8 handleFailureInMethod:v3 object:v4 file:@"SBSALayoutTransitionProvider.m" lineNumber:197 description:{@"Unexpected class – expected '%@', got '%@'", v5, v7}];
}

@end