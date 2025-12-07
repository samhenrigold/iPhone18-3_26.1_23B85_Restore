@interface SBSAKeyLinePreferencesProvider
- (id)behaviorSettingsForProperty:(id)property;
- (id)preferencesFromContext:(id)context;
@end

@implementation SBSAKeyLinePreferencesProvider

- (id)behaviorSettingsForProperty:(id)property
{
  propertyCopy = property;
  if ((BSEqualStrings() & 1) != 0 || BSEqualStrings())
  {
    settings = [objc_opt_class() settings];
    keyLineStyleTransition = [settings keyLineStyleTransition];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SBSAKeyLinePreferencesProvider;
    keyLineStyleTransition = [(SBSABasePreferencesProvider *)&v8 behaviorSettingsForProperty:propertyCopy];
  }

  return keyLineStyleTransition;
}

- (id)preferencesFromContext:(id)context
{
  v191 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  if (contextCopy)
  {
    v5 = objc_opt_self();
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

    if (!v8)
    {
      [(SBSAKeyLinePreferencesProvider *)v6 preferencesFromContext:a2, self];
    }
  }

  else
  {
    v8 = 0;
  }

  preferences = [v8 preferences];
  v10 = objc_opt_class();
  v11 = preferences;
  if (v10)
  {
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v138 = v12;

  elementContexts = [v8 elementContexts];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v178 = 0u;
  v179 = 0u;
  v180 = 0u;
  v181 = 0u;
  v15 = elementContexts;
  v16 = [v15 countByEnumeratingWithState:&v178 objects:v190 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v179;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v179 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v178 + 1) + 8 * i);
        elementIdentifier = [v20 elementIdentifier];
        keyColor = [v20 keyColor];
        if (keyColor)
        {
          [dictionary setObject:keyColor forKey:elementIdentifier];
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v178 objects:v190 count:16];
    }

    while (v17);
  }

  isBlobEnabled = [v138 isBlobEnabled];
  v24 = [v8 containsAnyOfSignals:1];
  preferences2 = [v8 preferences];
  lastChangingElementLayoutTransition = [preferences2 lastChangingElementLayoutTransition];

  v27 = BSEqualObjects();
  v134 = lastChangingElementLayoutTransition;
  v135 = contextCopy;
  if (v27)
  {
    v28 = 0;
  }

  else
  {
    objc_storeStrong(&self->_lastChangingElementLayoutTransition, lastChangingElementLayoutTransition);
    initialElementContexts = [lastChangingElementLayoutTransition initialElementContexts];
    if ([initialElementContexts count] > 1)
    {
      v28 = 0;
    }

    else
    {
      targetElementContexts = [lastChangingElementLayoutTransition targetElementContexts];
      v28 = [targetElementContexts count] == 2;
    }
  }

  mitosisSuppressionState = self->_mitosisSuppressionState;
  selfCopy = self;
  v141 = v8;
  v137 = dictionary;
  v144 = v15;
  if (!isBlobEnabled)
  {
    if (mitosisSuppressionState == 2)
    {
      v50 = SBLogSystemApertureController(v27);
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21ED4E000, v50, OS_LOG_TYPE_DEFAULT, "Key Line: Mitosis restoration milestone not hit! Falling back to visible.", buf, 2u);
      }
    }

    v32 = 0;
    pendingMitosisKeyLineSuppressionUnhidePropertyIdentity = self->_pendingMitosisKeyLineSuppressionUnhidePropertyIdentity;
    self->_pendingMitosisKeyLineSuppressionUnhidePropertyIdentity = 0;
    goto LABEL_60;
  }

  if (mitosisSuppressionState <= 1)
  {
    v32 = 1;
  }

  else
  {
    v32 = self->_mitosisSuppressionState;
  }

  if ((v24 | v28))
  {
    v33 = !mitosisSuppressionState && v28;
    if (mitosisSuppressionState == 1 || v33)
    {
      containerViewDescriptions = [v138 containerViewDescriptions];
      lastObject = [containerViewDescriptions lastObject];
      interfaceElementIdentifier = [lastObject interfaceElementIdentifier];

      v37 = [[SBSAInterfaceElementPropertyIdentity alloc] initWithAssociatedInterfaceElementIdentifier:interfaceElementIdentifier andProperty:@"bounds"];
      v38 = self->_pendingMitosisKeyLineSuppressionUnhidePropertyIdentity;
      self->_pendingMitosisKeyLineSuppressionUnhidePropertyIdentity = v37;

      v177[0] = MEMORY[0x277D85DD0];
      v177[1] = 3221225472;
      v177[2] = __57__SBSAKeyLinePreferencesProvider_preferencesFromContext___block_invoke;
      v177[3] = &unk_2783A93E8;
      v177[5] = a2;
      v177[4] = self;
      v39 = [v138 copyWithBlock:v177];

      mitosisSuppressionState = self->_mitosisSuppressionState;
      v32 = 2;
      v138 = v39;
    }
  }

  if (mitosisSuppressionState == 2 && self->_pendingMitosisKeyLineSuppressionUnhidePropertyIdentity)
  {
    v175 = 0u;
    v176 = 0u;
    v173 = 0u;
    v174 = 0u;
    pendingMitosisKeyLineSuppressionUnhidePropertyIdentity = [v8 animatedTransitionResults];
    v41 = [pendingMitosisKeyLineSuppressionUnhidePropertyIdentity countByEnumeratingWithState:&v173 objects:v189 count:16];
    if (v41)
    {
      v42 = v41;
      v43 = *v174;
      do
      {
        for (j = 0; j != v42; ++j)
        {
          if (*v174 != v43)
          {
            objc_enumerationMutation(pendingMitosisKeyLineSuppressionUnhidePropertyIdentity);
          }

          v45 = *(*(&v173 + 1) + 8 * j);
          associatedInterfaceElementPropertyIdentity = [v45 associatedInterfaceElementPropertyIdentity];
          v47 = [associatedInterfaceElementPropertyIdentity isEqual:self->_pendingMitosisKeyLineSuppressionUnhidePropertyIdentity];

          if (v47)
          {
            [v45 targetedMilestone];
            self = selfCopy;
            if (v48 >= 0.7)
            {
              v49 = selfCopy->_pendingMitosisKeyLineSuppressionUnhidePropertyIdentity;
              selfCopy->_pendingMitosisKeyLineSuppressionUnhidePropertyIdentity = 0;

              v32 = 3;
            }
          }

          else
          {
            self = selfCopy;
          }
        }

        v42 = [pendingMitosisKeyLineSuppressionUnhidePropertyIdentity countByEnumeratingWithState:&v173 objects:v189 count:16];
      }

      while (v42);
    }

LABEL_60:
  }

  if (v32 != self->_mitosisSuppressionState)
  {
    v51 = SBLogSystemApertureController(v27);
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      v52 = self->_mitosisSuppressionState - 1;
      if (v52 > 2)
      {
        v53 = @"idle";
      }

      else
      {
        v53 = off_2783AE088[v52];
      }

      if ((v32 - 1) > 2)
      {
        v54 = @"idle";
      }

      else
      {
        v54 = off_2783AE088[v32 - 1];
      }

      *buf = 138543618;
      v186 = v53;
      v187 = 2114;
      v188 = v54;
      _os_log_impl(&dword_21ED4E000, v51, OS_LOG_TYPE_DEFAULT, "Key Line: Updating mitosis suppression state: (%{public}@) -> (%{public}@)", buf, 0x16u);
    }

    self->_mitosisSuppressionState = v32;
  }

  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  v55 = self->_mitosisSuppressionState;
  v169 = 0u;
  v170 = 0u;
  v171 = 0u;
  v172 = 0u;
  containerViewDescriptions2 = [v138 containerViewDescriptions];
  v57 = [containerViewDescriptions2 countByEnumeratingWithState:&v169 objects:v184 count:16];
  if (v57)
  {
    v58 = v57;
    v59 = v55 - 3;
    v60 = *v170;
    do
    {
      for (k = 0; k != v58; ++k)
      {
        if (*v170 != v60)
        {
          objc_enumerationMutation(containerViewDescriptions2);
        }

        v62 = *(*(&v169 + 1) + 8 * k);
        associatedSystemApertureElementIdentity = [v62 associatedSystemApertureElementIdentity];
        elementIdentifier2 = [associatedSystemApertureElementIdentity elementIdentifier];

        v65 = SBSAElementContextAssociatedWithContainerViewDescription(v62, v144, 0);
        if (v65)
        {
          [v62 bounds];
          [v62 center];
          SBUnintegralizedRectCenteredAboutPoint();
          v67 = v66;
          v69 = v68;
          v71 = v70;
          v73 = v72;
          [v8 inertContainerFrame];
          v75 = v74;
          v76.n128_u64[0] = v67;
          v80 = [MEMORY[0x277CCABB0] numberWithInteger:{(v59 < 0xFFFFFFFFFFFFFFFELL) & (SBSARectApproximatelyEqualToRect(v76, v69, v71, v73, v75, v77, v78, v79, 0.01) ^ 1)}];
          [dictionary2 setObject:v80 forKey:elementIdentifier2];
        }
      }

      v58 = [containerViewDescriptions2 countByEnumeratingWithState:&v169 objects:v184 count:16];
    }

    while (v58);
  }

  v167 = 0u;
  v168 = 0u;
  v165 = 0u;
  v166 = 0u;
  obj = [v8 containerViewDescriptions];
  v81 = [obj countByEnumeratingWithState:&v165 objects:v183 count:16];
  if (v81)
  {
    v82 = v81;
    v83 = 0;
    v84 = *v166;
    v143 = 2;
    do
    {
      v85 = 0;
      v139 = v83;
      v86 = -v83;
      do
      {
        if (*v166 != v84)
        {
          objc_enumerationMutation(obj);
        }

        v87 = *(*(&v165 + 1) + 8 * v85);
        associatedSystemApertureElementIdentity2 = [v87 associatedSystemApertureElementIdentity];
        elementIdentifier3 = [associatedSystemApertureElementIdentity2 elementIdentifier];

        if (v86 == v85)
        {
          isKeyLineRequiredForTransition = [v141 isKeyLineRequiredForTransition];
        }

        else
        {
          isKeyLineRequiredForTransition = 0;
        }

        v91 = [dictionary2 objectForKey:elementIdentifier3];
        v92 = [v91 isEqualToNumber:&unk_283370310];

        if (v92)
        {
          v93 = isKeyLineRequiredForTransition == 0;
        }

        else
        {
          v93 = 0;
        }

        if (!v93)
        {
          sampledBackgroundLuminanceLevel = [v87 sampledBackgroundLuminanceLevel];
          v95 = v143;
          if (sampledBackgroundLuminanceLevel == 1)
          {
            v95 = 1;
          }

          v143 = v95;
        }

        ++v85;
      }

      while (v82 != v85);
      v83 = v139 + v82;
      v82 = [obj countByEnumeratingWithState:&v165 objects:v183 count:16];
    }

    while (v82);
  }

  else
  {
    v143 = 2;
  }

  v97 = v144;
  if (selfCopy->_lastKnownConsensusBackgroundLuma != v143)
  {
    v98 = SBLogSystemApertureController(v96);
    if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
    {
      v99 = SBStringFromSystemApertureBackgroundLuminanceLevel(selfCopy->_lastKnownConsensusBackgroundLuma);
      v100 = SBStringFromSystemApertureBackgroundLuminanceLevel(v143);
      *buf = 138543618;
      v186 = v99;
      v187 = 2114;
      v188 = v100;
      _os_log_impl(&dword_21ED4E000, v98, OS_LOG_TYPE_DEFAULT, "Key Line: Updating consensus background luma (%{public}@) -> (%{public}@)", buf, 0x16u);
    }

    selfCopy->_lastKnownConsensusBackgroundLuma = v143;
  }

  if (v143 == 2)
  {
    v163 = 0u;
    v164 = 0u;
    v161 = 0u;
    v162 = 0u;
    v101 = [dictionary2 copy];
    v102 = [v101 countByEnumeratingWithState:&v161 objects:v182 count:16];
    if (v102)
    {
      v103 = v102;
      v104 = *v162;
      do
      {
        for (m = 0; m != v103; ++m)
        {
          if (*v162 != v104)
          {
            objc_enumerationMutation(v101);
          }

          v106 = *(*(&v161 + 1) + 8 * m);
          v107 = [dictionary2 objectForKey:v106];
          integerValue = [v107 integerValue];

          if (integerValue == 1)
          {
            [dictionary2 setObject:&unk_283370328 forKey:v106];
          }
        }

        v103 = [v101 countByEnumeratingWithState:&v161 objects:v182 count:16];
      }

      while (v103);
    }
  }

  containerViewDescriptions3 = [v138 containerViewDescriptions];
  v110 = [containerViewDescriptions3 mutableCopy];

  if ([v144 count])
  {
    v111 = 0;
    do
    {
      v112 = [v97 objectAtIndex:v111];
      elementIdentifier4 = [v112 elementIdentifier];
      v159[0] = MEMORY[0x277D85DD0];
      v159[1] = 3221225472;
      v159[2] = __57__SBSAKeyLinePreferencesProvider_preferencesFromContext___block_invoke_30;
      v159[3] = &unk_2783AE040;
      v114 = v112;
      v160 = v114;
      v115 = [v110 indexOfObjectPassingTest:v159];
      if (v115 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v116 = v115;
        v117 = [v110 objectAtIndexedSubscript:v115];
        if (v117)
        {
          v118 = v117;
          v154[0] = MEMORY[0x277D85DD0];
          v154[1] = 3221225472;
          v154[2] = __57__SBSAKeyLinePreferencesProvider_preferencesFromContext___block_invoke_2;
          v154[3] = &unk_2783AE068;
          v158 = a2;
          v154[4] = selfCopy;
          v155 = dictionary2;
          v156 = elementIdentifier4;
          v157 = v137;
          v119 = [v118 copyWithBlock:v154];

          v151[0] = MEMORY[0x277D85DD0];
          v151[1] = 3221225472;
          v151[2] = __57__SBSAKeyLinePreferencesProvider_preferencesFromContext___block_invoke_3;
          v151[3] = &unk_2783AD750;
          v152 = v119;
          v153 = a2;
          v97 = v144;
          v151[4] = selfCopy;
          v120 = v119;
          v121 = [v138 copyWithBlock:v151];

          [v110 replaceObjectAtIndex:v116 withObject:v120];
          v138 = v121;
        }
      }

      ++v111;
    }

    while (v111 < [v97 count]);
  }

  firstObject = [v110 firstObject];
  if ([v141 isKeyLineRequiredForTransition])
  {
    v123 = v135;
    v124 = selfCopy;
    if (![firstObject keyLineMode] && firstObject)
    {
      v150[0] = MEMORY[0x277D85DD0];
      v150[1] = 3221225472;
      v150[2] = __57__SBSAKeyLinePreferencesProvider_preferencesFromContext___block_invoke_4;
      v150[3] = &unk_2783ACD90;
      v150[4] = selfCopy;
      v150[5] = a2;
      v150[6] = v143;
      v125 = [firstObject copyWithBlock:v150];

      v147[0] = MEMORY[0x277D85DD0];
      v147[1] = 3221225472;
      v147[2] = __57__SBSAKeyLinePreferencesProvider_preferencesFromContext___block_invoke_5;
      v147[3] = &unk_2783AD750;
      v149 = a2;
      v147[4] = selfCopy;
      firstObject = v125;
      v148 = firstObject;
      v126 = [v138 copyWithBlock:v147];

      [v110 replaceObjectAtIndex:0 withObject:firstObject];
      v138 = v126;
    }
  }

  else
  {
    v123 = v135;
    v124 = selfCopy;
  }

  v127 = [v138 copyByUpdatingContainerViewDescriptions:v110];

  v128 = [v141 copyByUpdatingPreferences:v127];
  v146.receiver = v124;
  v146.super_class = SBSAKeyLinePreferencesProvider;
  v129 = [(SBSABasePreferencesProvider *)&v146 preferencesFromContext:v128];
  v130 = objc_opt_class();
  v131 = v129;
  if (v130)
  {
    if (objc_opt_isKindOfClass())
    {
      v130 = v131;
    }

    else
    {
      v130 = 0;
    }
  }

  v132 = v130;

  return v130;
}

void __57__SBSAKeyLinePreferencesProvider_preferencesFromContext___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  if (v8)
  {
    v3 = objc_opt_self();
    v4 = v8;
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
      __57__SBSAKeyLinePreferencesProvider_preferencesFromContext___block_invoke_cold_1();
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = [MEMORY[0x277CBEB98] setWithObject:&unk_28336F210];
  [v6 addMilestones:v7 forPropertyIdentity:*(*(a1 + 32) + 48)];
}

uint64_t __57__SBSAKeyLinePreferencesProvider_preferencesFromContext___block_invoke_30(uint64_t a1, void *a2)
{
  v2 = [a2 associatedSystemApertureElementIdentity];
  v3 = SAElementIdentityEqualToIdentity();

  return v3;
}

void __57__SBSAKeyLinePreferencesProvider_preferencesFromContext___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v10 = v3;
  if (v3)
  {
    v4 = objc_opt_self();
    v5 = v10;
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

    v3 = v10;
    if (!v7)
    {
      __57__SBSAKeyLinePreferencesProvider_preferencesFromContext___block_invoke_2_cold_1();
      v3 = v10;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = [*(a1 + 40) objectForKey:*(a1 + 48)];
  [v7 setKeyLineMode:{objc_msgSend(v8, "integerValue")}];

  v9 = [*(a1 + 56) objectForKey:*(a1 + 48)];
  if (v9)
  {
    [v7 setKeyLineTintColor:v9];
  }
}

void __57__SBSAKeyLinePreferencesProvider_preferencesFromContext___block_invoke_3(uint64_t a1, void *a2)
{
  v15 = a2;
  if (v15)
  {
    v3 = objc_opt_self();
    v4 = v15;
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
      __57__SBSAKeyLinePreferencesProvider_preferencesFromContext___block_invoke_3_cold_1();
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = [*(a1 + 32) newAnimatedTransitionDescriptionForProperty:@"keyLineMode"];
  v8 = [SBSAInterfaceElementPropertyIdentity alloc];
  v9 = [*(a1 + 40) interfaceElementIdentifier];
  v10 = [(SBSAInterfaceElementPropertyIdentity *)v8 initWithAssociatedInterfaceElementIdentifier:v9 andProperty:@"keyLineMode"];
  [v6 setAnimatedTransitionDescription:v7 forProperty:v10 withMilestones:0];

  v11 = [*(a1 + 32) newAnimatedTransitionDescriptionForProperty:@"keyLineTintColor"];
  v12 = [SBSAInterfaceElementPropertyIdentity alloc];
  v13 = [*(a1 + 40) interfaceElementIdentifier];
  v14 = [(SBSAInterfaceElementPropertyIdentity *)v12 initWithAssociatedInterfaceElementIdentifier:v13 andProperty:@"keyLineTintColor"];
  [v6 setAnimatedTransitionDescription:v11 forProperty:v14 withMilestones:0];
}

void __57__SBSAKeyLinePreferencesProvider_preferencesFromContext___block_invoke_4(uint64_t a1, void *a2)
{
  v8 = a2;
  if (v8)
  {
    v3 = objc_opt_self();
    v4 = v8;
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
      __57__SBSAKeyLinePreferencesProvider_preferencesFromContext___block_invoke_4_cold_1();
    }
  }

  else
  {
    v6 = 0;
  }

  if (*(a1 + 48) == 2)
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  [v6 setKeyLineMode:v7];
}

void __57__SBSAKeyLinePreferencesProvider_preferencesFromContext___block_invoke_5(uint64_t a1, void *a2)
{
  v17 = a2;
  if (v17)
  {
    v3 = objc_opt_self();
    v4 = v17;
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
      __57__SBSAKeyLinePreferencesProvider_preferencesFromContext___block_invoke_5_cold_1();
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_opt_class() settings];
  v8 = [v7 keyLineAppearForSwoopTransition];

  v9 = [objc_opt_class() newAnimatedTransitionDescriptionWithBehaviorSettings:v8];
  v10 = [SBSAInterfaceElementPropertyIdentity alloc];
  v11 = [*(a1 + 40) interfaceElementIdentifier];
  v12 = [(SBSAInterfaceElementPropertyIdentity *)v10 initWithAssociatedInterfaceElementIdentifier:v11 andProperty:@"keyLineMode"];
  [v6 setAnimatedTransitionDescription:v9 forProperty:v12 withMilestones:0];

  v13 = [objc_opt_class() newAnimatedTransitionDescriptionWithBehaviorSettings:v8];
  v14 = [SBSAInterfaceElementPropertyIdentity alloc];
  v15 = [*(a1 + 40) interfaceElementIdentifier];
  v16 = [(SBSAInterfaceElementPropertyIdentity *)v14 initWithAssociatedInterfaceElementIdentifier:v15 andProperty:@"keyLineTintColor"];
  [v6 setAnimatedTransitionDescription:v13 forProperty:v16 withMilestones:0];
}

- (void)preferencesFromContext:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSClassFromString(&cfstr_Sbsacontext.isa);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v8 handleFailureInMethod:a2 object:a3 file:@"SBSAKeyLinePreferencesProvider.m" lineNumber:54 description:{@"Unexpected class – expected '%@', got '%@'", v5, v7}];
}

void __57__SBSAKeyLinePreferencesProvider_preferencesFromContext___block_invoke_cold_1()
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

void __57__SBSAKeyLinePreferencesProvider_preferencesFromContext___block_invoke_2_cold_1()
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

void __57__SBSAKeyLinePreferencesProvider_preferencesFromContext___block_invoke_3_cold_1()
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

void __57__SBSAKeyLinePreferencesProvider_preferencesFromContext___block_invoke_4_cold_1()
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

void __57__SBSAKeyLinePreferencesProvider_preferencesFromContext___block_invoke_5_cold_1()
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

@end