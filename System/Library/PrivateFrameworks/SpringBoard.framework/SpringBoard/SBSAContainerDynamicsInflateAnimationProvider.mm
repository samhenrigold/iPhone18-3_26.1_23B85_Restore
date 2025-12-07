@interface SBSAContainerDynamicsInflateAnimationProvider
- (id)_identitiesWithMilestoneReached:(id)reached;
- (id)preferencesFromContext:(id)context;
- (void)_addMilestonesIfNecessaryForUntrackedBoundsExpansionsForElementIdentities:(id)identities preferencesMutator:(id)mutator context:(id)context;
@end

@implementation SBSAContainerDynamicsInflateAnimationProvider

- (id)preferencesFromContext:(id)context
{
  v173 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v5 = objc_opt_class();
  v6 = contextCopy;
  if (v5)
  {
    v7 = v6;
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
    v7 = v6;
    v8 = 0;
  }

  v9 = v8;
  v111 = v7;

  v160 = 0;
  v161 = &v160;
  v162 = 0x3032000000;
  v163 = __Block_byref_object_copy__25;
  v164 = __Block_byref_object_dispose__25;
  v115 = v9;
  preferences = [v9 preferences];
  v11 = objc_opt_class();
  v12 = preferences;
  if (v11)
  {
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  v165 = v14;
  containerViewDescriptions = [v161[5] containerViewDescriptions];
  v117 = [containerViewDescriptions mutableCopy];

  elementDescriptions = [v161[5] elementDescriptions];
  v112 = [elementDescriptions mutableCopy];

  v121 = [MEMORY[0x277CBEB58] set];
  v116 = [MEMORY[0x277CBEB58] set];
  v114 = [MEMORY[0x277CBEB58] set];
  elementIdentitiesWaitingToExpandBeforeInflation = self->_elementIdentitiesWaitingToExpandBeforeInflation;
  if (elementIdentitiesWaitingToExpandBeforeInflation)
  {
    v18 = elementIdentitiesWaitingToExpandBeforeInflation;
  }

  else
  {
    v18 = [MEMORY[0x277CBEB58] set];
  }

  v19 = self->_elementIdentitiesWaitingToExpandBeforeInflation;
  self->_elementIdentitiesWaitingToExpandBeforeInflation = v18;

  elementIdentitiesThatFinishedWaitingToExpandBeforeInflation = self->_elementIdentitiesThatFinishedWaitingToExpandBeforeInflation;
  if (elementIdentitiesThatFinishedWaitingToExpandBeforeInflation)
  {
    v21 = elementIdentitiesThatFinishedWaitingToExpandBeforeInflation;
  }

  else
  {
    v21 = [MEMORY[0x277CBEB58] set];
  }

  v22 = self->_elementIdentitiesThatFinishedWaitingToExpandBeforeInflation;
  self->_elementIdentitiesThatFinishedWaitingToExpandBeforeInflation = v21;

  pendingMilestonePropertyIdentitiesToElementIdentities = self->_pendingMilestonePropertyIdentitiesToElementIdentities;
  if (pendingMilestonePropertyIdentitiesToElementIdentities)
  {
    strongToStrongObjectsMapTable = pendingMilestonePropertyIdentitiesToElementIdentities;
  }

  else
  {
    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
  }

  v25 = self->_pendingMilestonePropertyIdentitiesToElementIdentities;
  self->_pendingMilestonePropertyIdentitiesToElementIdentities = strongToStrongObjectsMapTable;

  [(SBSAContainerDynamicsInflateAnimationProvider *)self _identitiesWithMilestoneReached:v115];
  v158 = 0u;
  v159 = 0u;
  v156 = 0u;
  obj = v157 = 0u;
  v26 = [obj countByEnumeratingWithState:&v156 objects:v172 count:16];
  if (v26)
  {
    v119 = *v157;
    do
    {
      v122 = 0;
      v120 = v26;
      do
      {
        if (*v157 != v119)
        {
          objc_enumerationMutation(obj);
        }

        v27 = *(*(&v156 + 1) + 8 * v122);
        v152 = 0u;
        v153 = 0u;
        v154 = 0u;
        v155 = 0u;
        keyEnumerator = [(NSMapTable *)self->_pendingMilestonePropertyIdentitiesToElementIdentities keyEnumerator];
        allObjects = [keyEnumerator allObjects];

        v30 = [allObjects countByEnumeratingWithState:&v152 objects:v171 count:16];
        if (v30)
        {
          v31 = *v153;
          do
          {
            for (i = 0; i != v30; ++i)
            {
              if (*v153 != v31)
              {
                objc_enumerationMutation(allObjects);
              }

              v33 = *(*(&v152 + 1) + 8 * i);
              v34 = [(NSMapTable *)self->_pendingMilestonePropertyIdentitiesToElementIdentities objectForKey:v33];
              v35 = SAElementIdentityEqualToIdentity();

              if (v35)
              {
                [(NSMapTable *)self->_pendingMilestonePropertyIdentitiesToElementIdentities removeObjectForKey:v33];
              }
            }

            v30 = [allObjects countByEnumeratingWithState:&v152 objects:v171 count:16];
          }

          while (v30);
        }

        [(NSMutableSet *)self->_elementIdentitiesWaitingToExpandBeforeInflation removeObject:v27];
        [(NSMutableSet *)self->_elementIdentitiesThatFinishedWaitingToExpandBeforeInflation addObject:v27];
        ++v122;
      }

      while (v122 != v120);
      v26 = [obj countByEnumeratingWithState:&v156 objects:v172 count:16];
    }

    while (v26);
  }

  for (j = 0; j < [v117 count]; ++j)
  {
    v37 = [v117 objectAtIndexedSubscript:j];
    v38 = [SBSAElementIdentification alloc];
    associatedSystemApertureElementIdentity = [v37 associatedSystemApertureElementIdentity];
    v40 = [(SBSAElementIdentification *)v38 initWithElementIdentification:associatedSystemApertureElementIdentity];

    elementContexts = [v115 elementContexts];
    v42 = SBSAElementContextAssociatedWithContainerViewDescription(v37, elementContexts, 0);

    activeDynamicAnimation = [v42 activeDynamicAnimation];
    if (activeDynamicAnimation == 2)
    {
      [v121 addObject:v40];
      if (j)
      {
        goto LABEL_56;
      }
    }

    else
    {
      v44 = objc_msgSend_containsObject_(self->_elementIdentitiesWithInflateApplied);
      if (j)
      {
        v45 = 0;
      }

      else
      {
        v45 = v44;
      }

      if ((v45 & 1) == 0)
      {
        goto LABEL_56;
      }
    }

    preferences2 = [v115 preferences];
    lastChangingElementLayoutTransition = [preferences2 lastChangingElementLayoutTransition];

    targetElementContexts = [lastChangingElementLayoutTransition targetElementContexts];
    firstObject = [targetElementContexts firstObject];

    if (![lastChangingElementLayoutTransition isTransitionToSingleCompact] || !SAElementIdentityEqualToIdentity())
    {

LABEL_52:
      if (activeDynamicAnimation == 2)
      {
        v50 = v116;
      }

      else
      {
        v50 = v114;
      }

      [v50 addObject:v40];
      goto LABEL_56;
    }

    if ((objc_msgSend_containsObject_(self->_elementIdentitiesThatFinishedWaitingToExpandBeforeInflation) & 1) == 0)
    {
      [(NSMutableSet *)self->_elementIdentitiesWaitingToExpandBeforeInflation addObject:v40];
    }

    if (objc_msgSend_containsObject_(self->_elementIdentitiesWaitingToExpandBeforeInflation))
    {

      goto LABEL_56;
    }

    v51 = objc_msgSend_containsObject_(self->_elementIdentitiesThatFinishedWaitingToExpandBeforeInflation);

    if (v51)
    {
      goto LABEL_52;
    }

LABEL_56:
  }

  [(NSMutableSet *)self->_elementIdentitiesWaitingToExpandBeforeInflation intersectSet:v121];
  [(NSMutableSet *)self->_elementIdentitiesThatFinishedWaitingToExpandBeforeInflation intersectSet:v121];
  v150 = 0u;
  v151 = 0u;
  v148 = 0u;
  v149 = 0u;
  keyEnumerator2 = [(NSMapTable *)self->_pendingMilestonePropertyIdentitiesToElementIdentities keyEnumerator];
  allObjects2 = [keyEnumerator2 allObjects];

  v54 = [allObjects2 countByEnumeratingWithState:&v148 objects:v170 count:16];
  if (v54)
  {
    v55 = *v149;
    do
    {
      for (k = 0; k != v54; ++k)
      {
        if (*v149 != v55)
        {
          objc_enumerationMutation(allObjects2);
        }

        v57 = *(*(&v148 + 1) + 8 * k);
        v58 = [(NSMapTable *)self->_pendingMilestonePropertyIdentitiesToElementIdentities objectForKey:v57];
        v59 = objc_msgSend_containsObject_(v121);

        if ((v59 & 1) == 0)
        {
          [(NSMapTable *)self->_pendingMilestonePropertyIdentitiesToElementIdentities removeObjectForKey:v57];
        }
      }

      v54 = [allObjects2 countByEnumeratingWithState:&v148 objects:v170 count:16];
    }

    while (v54);
  }

  v60 = v161[5];
  v145[0] = MEMORY[0x277D85DD0];
  v145[1] = 3221225472;
  v145[2] = __72__SBSAContainerDynamicsInflateAnimationProvider_preferencesFromContext___block_invoke;
  v145[3] = &unk_2783AD750;
  v147 = a2;
  v145[4] = self;
  v123 = v115;
  v146 = v123;
  v61 = [v60 copyWithBlock:v145];
  v62 = v161[5];
  v161[5] = v61;

  for (m = 0; m < [v117 count]; ++m)
  {
    v64 = [v117 objectAtIndexedSubscript:m];
    v65 = [SBSAElementIdentification alloc];
    associatedSystemApertureElementIdentity2 = [v64 associatedSystemApertureElementIdentity];
    v67 = [(SBSAElementIdentification *)v65 initWithElementIdentification:associatedSystemApertureElementIdentity2];

    elementContexts2 = [v123 elementContexts];
    v69 = SBSAElementContextAssociatedWithContainerViewDescription(v64, elementContexts2, 0);

    v70 = objc_msgSend_containsObject_(v116);
    systemApertureLayoutCustomizingOptions = objc_msgSend_containsObject_(v114);
    if (systemApertureLayoutCustomizingOptions)
    {
      systemApertureLayoutCustomizingOptions = [v69 systemApertureLayoutCustomizingOptions];
      v72 = (systemApertureLayoutCustomizingOptions & 1) == 0;
    }

    else
    {
      v72 = 0;
    }

    if ((v70 | v72))
    {
      elementContexts3 = [v123 elementContexts];
      v74 = SBSAElementContextAssociatedWithContainerViewDescription(v64, elementContexts3, 0);

      *buf = 0x7FFFFFFFFFFFFFFFLL;
      v75 = SBSAElementDescriptionAssociatedWithElementIdentity(v74, v112, buf);
      if (v70)
      {
        [v116 addObject:v67];
        v141[0] = MEMORY[0x277D85DD0];
        v141[1] = 3221225472;
        v141[2] = __72__SBSAContainerDynamicsInflateAnimationProvider_preferencesFromContext___block_invoke_2;
        v141[3] = &unk_2783AD778;
        v144 = a2;
        v141[4] = self;
        v76 = v64;
        v142 = v76;
        v143 = v123;
        v64 = [v76 copyWithBlock:v141];

        [v117 replaceObjectAtIndex:m withObject:v64];
        if (v75)
        {
          v140[0] = MEMORY[0x277D85DD0];
          v140[1] = 3221225472;
          v140[2] = __72__SBSAContainerDynamicsInflateAnimationProvider_preferencesFromContext___block_invoke_3;
          v140[3] = &unk_2783A93E8;
          v140[4] = self;
          v140[5] = a2;
          v77 = [v75 copyWithBlock:v140];
          [v112 replaceObjectAtIndex:*buf withObject:v77];
        }
      }

      v78 = v161[5];
      v133[0] = MEMORY[0x277D85DD0];
      v133[1] = 3221225472;
      v133[2] = __72__SBSAContainerDynamicsInflateAnimationProvider_preferencesFromContext___block_invoke_4;
      v133[3] = &unk_2783B01C0;
      v138 = a2;
      v133[4] = self;
      v139 = v70;
      v64 = v64;
      v134 = v64;
      v79 = v75;
      v135 = v79;
      v137 = &v160;
      v136 = v123;
      v80 = [v78 copyWithBlock:v133];
      v81 = v161[5];
      v161[5] = v80;
    }

    if (v72)
    {
      v82 = SBLogSystemAperturePreferencesStackDynamicsAnimations(systemApertureLayoutCustomizingOptions);
      if (os_log_type_enabled(v82, OS_LOG_TYPE_DEBUG))
      {
        queryIteration = [v123 queryIteration];
        *buf = 134349314;
        *&buf[4] = queryIteration;
        v168 = 2112;
        v169 = v67;
        _os_log_debug_impl(&dword_21ED4E000, v82, OS_LOG_TYPE_DEBUG, "[%{public}lu] [Inflate] Applying deflate to element:'%@'", buf, 0x16u);
      }
    }
  }

  v84 = [v116 mutableCopy];
  elementIdentitiesWithInflateApplied = self->_elementIdentitiesWithInflateApplied;
  v86 = elementIdentitiesWithInflateApplied;
  if (!elementIdentitiesWithInflateApplied)
  {
    v86 = [MEMORY[0x277CBEB98] set];
  }

  [v84 minusSet:v86];
  if (!elementIdentitiesWithInflateApplied)
  {
  }

  v131 = 0u;
  v132 = 0u;
  v129 = 0u;
  v130 = 0u;
  v87 = v84;
  v88 = [v87 countByEnumeratingWithState:&v129 objects:v166 count:16];
  v89 = v88;
  if (v88)
  {
    v90 = *v130;
    do
    {
      v91 = 0;
      do
      {
        if (*v130 != v90)
        {
          objc_enumerationMutation(v87);
        }

        v92 = *(*(&v129 + 1) + 8 * v91);
        v93 = SBLogSystemAperturePreferencesStackDynamicsAnimations(v88);
        if (os_log_type_enabled(v93, OS_LOG_TYPE_DEBUG))
        {
          queryIteration2 = [v123 queryIteration];
          *buf = 134349314;
          *&buf[4] = queryIteration2;
          v168 = 2112;
          v169 = v92;
          _os_log_debug_impl(&dword_21ED4E000, v93, OS_LOG_TYPE_DEBUG, "[%{public}lu] [Inflate] Applying inflate to element:'%@'", buf, 0x16u);
        }

        ++v91;
      }

      while (v89 != v91);
      v88 = [v87 countByEnumeratingWithState:&v129 objects:v166 count:16];
      v89 = v88;
    }

    while (v88);
  }

  v95 = [v116 copy];
  v96 = self->_elementIdentitiesWithInflateApplied;
  self->_elementIdentitiesWithInflateApplied = v95;

  v97 = v161[5];
  v125[0] = MEMORY[0x277D85DD0];
  v125[1] = 3221225472;
  v125[2] = __72__SBSAContainerDynamicsInflateAnimationProvider_preferencesFromContext___block_invoke_52;
  v125[3] = &unk_2783AD778;
  v128 = a2;
  v125[4] = self;
  v98 = v117;
  v126 = v98;
  v99 = v112;
  v127 = v99;
  v100 = [v97 copyWithBlock:v125];
  v101 = v161[5];
  v161[5] = v100;

  v102 = [v123 copyByUpdatingPreferences:v161[5]];
  v124.receiver = self;
  v124.super_class = SBSAContainerDynamicsInflateAnimationProvider;
  v103 = [(SBSABasePreferencesProvider *)&v124 preferencesFromContext:v102];
  v104 = objc_opt_class();
  v105 = v103;
  if (v104)
  {
    if (objc_opt_isKindOfClass())
    {
      v106 = v105;
    }

    else
    {
      v106 = 0;
    }
  }

  else
  {
    v106 = 0;
  }

  v107 = v106;

  v108 = v161[5];
  v161[5] = v107;

  if (![v121 count])
  {
    [(SBSABasePreferencesProvider *)self removeFromParentProvider];
  }

  v109 = v161[5];

  _Block_object_dispose(&v160, 8);

  return v109;
}

void __72__SBSAContainerDynamicsInflateAnimationProvider_preferencesFromContext___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  if (v7)
  {
    v3 = objc_opt_self();
    v4 = v7;
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
      __72__SBSAContainerDynamicsInflateAnimationProvider_preferencesFromContext___block_invoke_cold_1();
    }
  }

  else
  {
    v6 = 0;
  }

  [*(a1 + 32) _addMilestonesIfNecessaryForUntrackedBoundsExpansionsForElementIdentities:*(*(a1 + 32) + 48) preferencesMutator:v6 context:*(a1 + 40)];
}

void __72__SBSAContainerDynamicsInflateAnimationProvider_preferencesFromContext___block_invoke_2(uint64_t a1, void *a2)
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
      __72__SBSAContainerDynamicsInflateAnimationProvider_preferencesFromContext___block_invoke_2_cold_1();
    }
  }

  else
  {
    v7 = 0;
  }

  v37 = 0u;
  v38 = 0u;
  v8 = [objc_opt_class() settings];
  [v8 inflateAnimationScale];
  v10 = v9;

  [*(a1 + 40) bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  [*(a1 + 40) center];
  v20 = v19;
  v22 = v21;
  v23 = [objc_opt_class() settings];
  [v23 inflateVerticalOffsetProportion];
  SBSAScaledAndClippedFrameByScalingLeadingTrailingViews(&v37, *(a1 + 48), v12, v14, v16, v18, v20, v22, v10, v10, v24);

  BSRectWithSize();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  UIRectGetCenter();
  v34 = v33;
  v36 = v35;
  [v7 setBounds:{v26, v28, v30, v32}];
  [v7 setCenter:{v34, v36}];
  [v7 setContentBounds:{v37, v38}];
  UIRectGetCenter();
  [v7 setContentCenter:?];
}

void __72__SBSAContainerDynamicsInflateAnimationProvider_preferencesFromContext___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = objc_opt_self();
    v4 = v2;
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
      __72__SBSAContainerDynamicsInflateAnimationProvider_preferencesFromContext___block_invoke_3_cold_1();
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_opt_class() settings];
  [v7 inflateAnimationContentScale];
  v9 = v8;

  if (v6)
  {
    objc_msgSend_leadingViewTransform(v6);
  }

  else
  {
    memset(&v10, 0, sizeof(v10));
  }

  CGAffineTransformScale(&v11, &v10, v9, v9);
  [v6 setLeadingViewTransform:&v11];
  if (v6)
  {
    objc_msgSend_trailingViewTransform(v6);
  }

  else
  {
    memset(&v10, 0, sizeof(v10));
  }

  CGAffineTransformScale(&v11, &v10, v9, v9);
  [v6 setTrailingViewTransform:&v11];
  if (v6)
  {
    objc_msgSend_minimalViewTransform(v6);
  }

  else
  {
    memset(&v10, 0, sizeof(v10));
  }

  CGAffineTransformScale(&v11, &v10, v9, v9);
  [v6 setMinimalViewTransform:&v11];
}

void __72__SBSAContainerDynamicsInflateAnimationProvider_preferencesFromContext___block_invoke_4(uint64_t a1, void *a2)
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
      __72__SBSAContainerDynamicsInflateAnimationProvider_preferencesFromContext___block_invoke_4_cold_1();
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a1 + 80);
  v9 = [objc_opt_class() settings];
  v10 = v9;
  if (v8)
  {
    [v9 inflateAnimationScaleUpSettings];
  }

  else
  {
    [v9 inflateAnimationScaleDownSettings];
  }
  v11 = ;

  v12 = [objc_opt_class() newAnimatedTransitionDescriptionWithBehaviorSettings:v11];
  v13 = [SBSAInterfaceElementPropertyIdentity alloc];
  v14 = [*(a1 + 40) interfaceElementIdentifier];
  v15 = [(SBSAInterfaceElementPropertyIdentity *)v13 initWithAssociatedInterfaceElementIdentifier:v14 andProperty:@"bounds"];

  v72 = v12;
  [v7 setAnimatedTransitionDescription:v12 forProperty:v15 withMilestones:0];
  v73 = v11;
  v16 = [objc_opt_class() newAnimatedTransitionDescriptionWithBehaviorSettings:v11];
  v17 = [SBSAInterfaceElementPropertyIdentity alloc];
  v18 = [*(a1 + 40) interfaceElementIdentifier];
  v19 = [(SBSAInterfaceElementPropertyIdentity *)v17 initWithAssociatedInterfaceElementIdentifier:v18 andProperty:@"center"];

  v71 = v16;
  [v7 setAnimatedTransitionDescription:v16 forProperty:v19 withMilestones:0];
  v20 = [SBSAInterfaceElementPropertyIdentity alloc];
  v21 = [*(a1 + 40) interfaceElementIdentifier];
  v22 = [(SBSAInterfaceElementPropertyIdentity *)v20 initWithAssociatedInterfaceElementIdentifier:v21 andProperty:@"contentBounds"];
  [v7 associateAnimatedTransitionDescriptionOfProperty:v15 withProperty:v22 withMilestones:0];

  v23 = [SBSAInterfaceElementPropertyIdentity alloc];
  v24 = [*(a1 + 40) interfaceElementIdentifier];
  v25 = [(SBSAInterfaceElementPropertyIdentity *)v23 initWithAssociatedInterfaceElementIdentifier:v24 andProperty:@"contentCenter"];
  [v7 associateAnimatedTransitionDescriptionOfProperty:v19 withProperty:v25 withMilestones:0];

  if (*(a1 + 48))
  {
    v26 = [SBSAInterfaceElementPropertyIdentity alloc];
    v27 = [*(a1 + 48) interfaceElementIdentifier];
    v28 = [(SBSAInterfaceElementPropertyIdentity *)v26 initWithAssociatedInterfaceElementIdentifier:v27 andProperty:@"leadingViewTransform"];

    [v7 associateAnimatedTransitionDescriptionOfProperty:v15 withProperty:v28 withMilestones:0];
    v29 = [SBSAInterfaceElementPropertyIdentity alloc];
    v30 = [*(a1 + 48) interfaceElementIdentifier];
    v31 = [(SBSAInterfaceElementPropertyIdentity *)v29 initWithAssociatedInterfaceElementIdentifier:v30 andProperty:@"trailingViewTransform"];

    [v7 associateAnimatedTransitionDescriptionOfProperty:v15 withProperty:v31 withMilestones:0];
    v32 = [SBSAInterfaceElementPropertyIdentity alloc];
    [*(a1 + 48) interfaceElementIdentifier];
    v34 = v33 = v3;
    v35 = [(SBSAInterfaceElementPropertyIdentity *)v32 initWithAssociatedInterfaceElementIdentifier:v34 andProperty:@"minimalViewTransform"];

    v3 = v33;
    [v7 associateAnimatedTransitionDescriptionOfProperty:v15 withProperty:v35 withMilestones:0];
  }

  v36 = [*(*(*(a1 + 64) + 8) + 40) indicatorContainerViewDescription];
  v37 = [*(*(*(a1 + 64) + 8) + 40) indicatorElementDescription];
  v38 = v37;
  if (v36 && v37)
  {
    v39 = [*(*(*(a1 + 64) + 8) + 40) maintainedPreferences];
    v40 = [v39 indicatorAppearanceStateContext];

    v41 = [v40 microIndicatorEjectionPhase];
    if (*(a1 + 80) == 1)
    {
      v68 = v3;
      v69 = v41;
      v42 = v41 > 1;
      v82[0] = 0;
      v82[1] = v82;
      v82[2] = 0x5010000000;
      v82[3] = &unk_21F9DA6A3;
      v43 = *(MEMORY[0x277CBF2C0] + 16);
      v83 = *MEMORY[0x277CBF2C0];
      v84 = v43;
      v85 = *(MEMORY[0x277CBF2C0] + 32);
      v75[0] = MEMORY[0x277D85DD0];
      v75[1] = 3221225472;
      v75[2] = __72__SBSAContainerDynamicsInflateAnimationProvider_preferencesFromContext___block_invoke_5;
      v75[3] = &unk_2783B01C0;
      v44 = *(a1 + 32);
      v45 = *(a1 + 40);
      v80 = *(a1 + 72);
      v75[4] = v44;
      v76 = v45;
      v46 = *(a1 + 56);
      v81 = v42;
      v77 = v46;
      v79 = v82;
      v67 = v40;
      v78 = v40;
      v70 = [v36 copyWithBlock:v75];

      [v7 setIndicatorContainerViewDescription:v70];
      v47 = [SBSAInterfaceElementPropertyIdentity alloc];
      v48 = [*(a1 + 40) interfaceElementIdentifier];
      v49 = [(SBSAInterfaceElementPropertyIdentity *)v47 initWithAssociatedInterfaceElementIdentifier:v48 andProperty:@"bounds"];
      v50 = [SBSAInterfaceElementPropertyIdentity alloc];
      v51 = [v70 interfaceElementIdentifier];
      v52 = [(SBSAInterfaceElementPropertyIdentity *)v50 initWithAssociatedInterfaceElementIdentifier:v51 andProperty:@"bounds"];
      [v7 associateAnimatedTransitionDescriptionOfProperty:v49 withProperty:v52 withMilestones:0];

      v53 = [SBSAInterfaceElementPropertyIdentity alloc];
      v54 = [*(a1 + 40) interfaceElementIdentifier];
      v55 = [(SBSAInterfaceElementPropertyIdentity *)v53 initWithAssociatedInterfaceElementIdentifier:v54 andProperty:@"center"];
      v56 = [SBSAInterfaceElementPropertyIdentity alloc];
      v57 = [v70 interfaceElementIdentifier];
      v58 = [(SBSAInterfaceElementPropertyIdentity *)v56 initWithAssociatedInterfaceElementIdentifier:v57 andProperty:@"center"];
      [v7 associateAnimatedTransitionDescriptionOfProperty:v55 withProperty:v58 withMilestones:0];

      if (v69 >= 2)
      {
        v74[0] = MEMORY[0x277D85DD0];
        v74[1] = 3221225472;
        v74[2] = __72__SBSAContainerDynamicsInflateAnimationProvider_preferencesFromContext___block_invoke_6;
        v74[3] = &unk_2783B01E8;
        v59 = *(a1 + 72);
        v74[4] = *(a1 + 32);
        v74[5] = v82;
        v74[6] = v59;
        v60 = [v38 copyWithBlock:v74];

        [v7 setIndicatorElementDescription:v60];
        v61 = [SBSAInterfaceElementPropertyIdentity alloc];
        v62 = [*(a1 + 40) interfaceElementIdentifier];
        v63 = [(SBSAInterfaceElementPropertyIdentity *)v61 initWithAssociatedInterfaceElementIdentifier:v62 andProperty:@"bounds"];
        v64 = [SBSAInterfaceElementPropertyIdentity alloc];
        v65 = [v60 interfaceElementIdentifier];
        v66 = [(SBSAInterfaceElementPropertyIdentity *)v64 initWithAssociatedInterfaceElementIdentifier:v65 andProperty:@"indicatorViewTransform"];
        [v7 associateAnimatedTransitionDescriptionOfProperty:v63 withProperty:v66 withMilestones:0];

        v38 = v60;
      }

      _Block_object_dispose(v82, 8);
      v36 = v70;
      v40 = v67;
      v3 = v68;
    }
  }
}

void __72__SBSAContainerDynamicsInflateAnimationProvider_preferencesFromContext___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v24 = v3;
  if (v3)
  {
    v4 = objc_opt_self();
    v5 = v24;
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

    v3 = v24;
    if (!v7)
    {
      __72__SBSAContainerDynamicsInflateAnimationProvider_preferencesFromContext___block_invoke_5_cold_1();
      v3 = v24;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a1 + 40);
  v9 = [*(a1 + 48) elementContexts];
  v10 = SBSAElementContextAssociatedWithContainerViewDescription(v8, v9, 0);

  v11 = 0;
  if ([v10 layoutMode] == 3)
  {
    v11 = [v10 systemApertureCustomLayout];
  }

  [*(a1 + 40) bounds];
  [*(a1 + 40) center];
  SBUnintegralizedRectCenteredAboutPoint();
  SBSAMicroIndicatorFrameNearContainer(v11, *(a1 + 80), (*(*(a1 + 64) + 8) + 32), *(a1 + 56), *(a1 + 48), v12, v13, v14, v15);
  BSRectWithSize();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  [v7 setBounds:?];
  UIRectGetCenter();
  [v7 setCenter:?];
  [v7 setContentBounds:{v17, v19, v21, v23}];
  UIRectGetCenter();
  [v7 setContentCenter:?];
}

void __72__SBSAContainerDynamicsInflateAnimationProvider_preferencesFromContext___block_invoke_6(uint64_t a1, void *a2)
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
      __72__SBSAContainerDynamicsInflateAnimationProvider_preferencesFromContext___block_invoke_6_cold_1();
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = *(*(a1 + 40) + 8);
  v9 = v8[3];
  v10[0] = v8[2];
  v10[1] = v9;
  v10[2] = v8[4];
  [v7 setIndicatorViewTransform:v10];
}

void __72__SBSAContainerDynamicsInflateAnimationProvider_preferencesFromContext___block_invoke_52(uint64_t a1, void *a2)
{
  v8 = a2;
  if (v8)
  {
    v3 = objc_opt_self();
    v4 = objc_opt_self();
    v5 = v8;
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
      __72__SBSAContainerDynamicsInflateAnimationProvider_preferencesFromContext___block_invoke_52_cold_1();
    }
  }

  else
  {
    v7 = 0;
  }

  [v7 setContainerViewDescriptions:*(a1 + 40)];
  [v7 setElementDescriptions:*(a1 + 48)];
}

- (id)_identitiesWithMilestoneReached:(id)reached
{
  v40 = *MEMORY[0x277D85DE8];
  reachedCopy = reached;
  v4 = [MEMORY[0x277CBEB58] set];
  settings = [objc_opt_class() settings];
  [settings expansionToCompactBeginInflationProgress];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  selfCopy = self;
  keyEnumerator = [(NSMapTable *)self->_pendingMilestonePropertyIdentitiesToElementIdentities keyEnumerator];
  allObjects = [keyEnumerator allObjects];

  obj = allObjects;
  v24 = [allObjects countByEnumeratingWithState:&v30 objects:v39 count:16];
  if (v24)
  {
    v22 = *v31;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v31 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v30 + 1) + 8 * i);
        v10 = [(NSMapTable *)selfCopy->_pendingMilestonePropertyIdentitiesToElementIdentities objectForKey:v9];
        if (v10)
        {
          v28 = 0u;
          v29 = 0u;
          v26 = 0u;
          v27 = 0u;
          animatedTransitionResults = [reachedCopy animatedTransitionResults];
          v12 = [animatedTransitionResults countByEnumeratingWithState:&v26 objects:v38 count:16];
          if (!v12)
          {
            goto LABEL_21;
          }

          v13 = v12;
          v14 = *v27;
          while (1)
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v27 != v14)
              {
                objc_enumerationMutation(animatedTransitionResults);
              }

              v16 = *(*(&v26 + 1) + 8 * j);
              associatedInterfaceElementPropertyIdentity = [v16 associatedInterfaceElementPropertyIdentity];
              if (BSEqualObjects())
              {
                [v16 targetedMilestone];
                if (BSFloatApproximatelyEqualToFloat())
                {
                }

                else
                {
                  finished = [v16 finished];

                  if ((finished & 1) == 0)
                  {
                    continue;
                  }
                }

                associatedInterfaceElementPropertyIdentity = SBLogSystemAperturePreferencesStackDynamicsAnimations([v4 addObject:v10]);
                if (os_log_type_enabled(associatedInterfaceElementPropertyIdentity, OS_LOG_TYPE_DEBUG))
                {
                  queryIteration = [reachedCopy queryIteration];
                  *buf = 134349314;
                  v35 = queryIteration;
                  v36 = 2112;
                  v37 = v9;
                  _os_log_debug_impl(&dword_21ED4E000, associatedInterfaceElementPropertyIdentity, OS_LOG_TYPE_DEBUG, "[%{public}lu] [Inflate] Reached milestone for expansion'%@'", buf, 0x16u);
                }
              }
            }

            v13 = [animatedTransitionResults countByEnumeratingWithState:&v26 objects:v38 count:16];
            if (!v13)
            {
LABEL_21:

              break;
            }
          }
        }
      }

      v24 = [obj countByEnumeratingWithState:&v30 objects:v39 count:16];
    }

    while (v24);
  }

  return v4;
}

- (void)_addMilestonesIfNecessaryForUntrackedBoundsExpansionsForElementIdentities:(id)identities preferencesMutator:(id)mutator context:(id)context
{
  v48 = *MEMORY[0x277D85DE8];
  identitiesCopy = identities;
  mutatorCopy = mutator;
  contextCopy = context;
  v9 = MEMORY[0x277CBEB98];
  objectEnumerator = [(NSMapTable *)self->_pendingMilestonePropertyIdentitiesToElementIdentities objectEnumerator];
  allObjects = [objectEnumerator allObjects];
  v12 = [v9 setWithArray:allObjects];

  v34 = identitiesCopy;
  v13 = [identitiesCopy mutableCopy];
  v33 = v12;
  [v13 minusSet:v12];
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = v13;
  v14 = [obj countByEnumeratingWithState:&v39 objects:v47 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v40;
    do
    {
      v17 = 0;
      do
      {
        if (*v40 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v39 + 1) + 8 * v17);
        preferences = [contextCopy preferences];
        containerViewDescriptions = [preferences containerViewDescriptions];
        v38[0] = MEMORY[0x277D85DD0];
        v38[1] = 3221225472;
        v38[2] = __150__SBSAContainerDynamicsInflateAnimationProvider__addMilestonesIfNecessaryForUntrackedBoundsExpansionsForElementIdentities_preferencesMutator_context___block_invoke;
        v38[3] = &unk_2783B0210;
        v38[4] = v18;
        v21 = [containerViewDescriptions bs_firstObjectPassingTest:v38];

        v22 = [SBSAInterfaceElementPropertyIdentity alloc];
        interfaceElementIdentifier = [v21 interfaceElementIdentifier];
        v24 = [(SBSAInterfaceElementPropertyIdentity *)v22 initWithAssociatedInterfaceElementIdentifier:interfaceElementIdentifier andProperty:@"bounds"];

        settings = [objc_opt_class() settings];
        [settings expansionToCompactBeginInflationProgress];
        v27 = v26;

        v28 = MEMORY[0x277CBEB98];
        v29 = [MEMORY[0x277CCABB0] numberWithDouble:v27];
        v30 = [v28 setWithObject:v29];
        [mutatorCopy addMilestones:v30 forPropertyIdentity:v24];

        v31 = SBLogSystemAperturePreferencesStackDynamicsAnimations([(NSMapTable *)self->_pendingMilestonePropertyIdentitiesToElementIdentities setObject:v18 forKey:v24]);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          queryIteration = [contextCopy queryIteration];
          *buf = 134349314;
          v44 = queryIteration;
          v45 = 2112;
          v46 = v24;
          _os_log_debug_impl(&dword_21ED4E000, v31, OS_LOG_TYPE_DEBUG, "[%{public}lu] [Inflate] Adding milestone for expansion'%@'", buf, 0x16u);
        }

        ++v17;
      }

      while (v15 != v17);
      v15 = [obj countByEnumeratingWithState:&v39 objects:v47 count:16];
    }

    while (v15);
  }
}

uint64_t __150__SBSAContainerDynamicsInflateAnimationProvider__addMilestonesIfNecessaryForUntrackedBoundsExpansionsForElementIdentities_preferencesMutator_context___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 associatedSystemApertureElementIdentity];
  v3 = SAElementIdentityEqualToIdentity();

  return v3;
}

void __72__SBSAContainerDynamicsInflateAnimationProvider_preferencesFromContext___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  v11 = [MEMORY[0x277CCA890] currentHandler];
  NSClassFromString(&cfstr_Sbsapreference_0.isa);
  v1 = OUTLINED_FUNCTION_3_7();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2_5();
  [OUTLINED_FUNCTION_0_12(v2 v3];
}

void __72__SBSAContainerDynamicsInflateAnimationProvider_preferencesFromContext___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  v11 = [MEMORY[0x277CCA890] currentHandler];
  NSClassFromString(&cfstr_Sbsacontainerv.isa);
  v1 = OUTLINED_FUNCTION_3_7();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2_5();
  [OUTLINED_FUNCTION_0_12(v2 v3];
}

void __72__SBSAContainerDynamicsInflateAnimationProvider_preferencesFromContext___block_invoke_3_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  v11 = [MEMORY[0x277CCA890] currentHandler];
  NSClassFromString(&cfstr_Sbsaelementdes.isa);
  v1 = OUTLINED_FUNCTION_3_7();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2_5();
  [OUTLINED_FUNCTION_0_12(v2 v3];
}

void __72__SBSAContainerDynamicsInflateAnimationProvider_preferencesFromContext___block_invoke_4_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  v11 = [MEMORY[0x277CCA890] currentHandler];
  NSClassFromString(&cfstr_Sbsapreference_0.isa);
  v1 = OUTLINED_FUNCTION_3_7();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2_5();
  [OUTLINED_FUNCTION_0_12(v2 v3];
}

void __72__SBSAContainerDynamicsInflateAnimationProvider_preferencesFromContext___block_invoke_5_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  v11 = [MEMORY[0x277CCA890] currentHandler];
  NSClassFromString(&cfstr_Sbsacontainerv.isa);
  v1 = OUTLINED_FUNCTION_3_7();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2_5();
  [OUTLINED_FUNCTION_0_12(v2 v3];
}

void __72__SBSAContainerDynamicsInflateAnimationProvider_preferencesFromContext___block_invoke_6_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  v11 = [MEMORY[0x277CCA890] currentHandler];
  NSClassFromString(&cfstr_Sbsaindicatore.isa);
  v1 = OUTLINED_FUNCTION_3_7();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2_5();
  [OUTLINED_FUNCTION_0_12(v2 v3];
}

void __72__SBSAContainerDynamicsInflateAnimationProvider_preferencesFromContext___block_invoke_52_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  v11 = [MEMORY[0x277CCA890] currentHandler];
  NSClassFromString(&cfstr_Sbsapreference_1.isa);
  v1 = OUTLINED_FUNCTION_3_7();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2_5();
  [OUTLINED_FUNCTION_0_12(v2 v3];
}

@end