@interface SBSASettlingBehaviorProvider
- (UIEdgeInsets)_overshootOutsetsForTransitionPhase:(int64_t)phase baseOutsets:(UIEdgeInsets)outsets elementContext:(id)context;
- (UIEdgeInsets)_overshootOutsetsTargetingContainerDescription:(id)description initialContainerDescription:(id)containerDescription settings:(id)settings context:(id)context;
- (double)_overshootFractionForDampingRatio:(double)ratio;
- (double)_progressMilestoneForTransitionPhase:(int64_t)phase;
- (id)_fluidBehaviorSettingsForTransitionPhase:(int64_t)phase forElementContext:(id)context;
- (id)preferencesFromContext:(id)context;
- (void)_setActivePhase:(int64_t)phase context:(id)context logReason:(id)reason;
@end

@implementation SBSASettlingBehaviorProvider

- (id)preferencesFromContext:(id)context
{
  v275 = *MEMORY[0x277D85DE8];
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
      [(SBSASettlingBehaviorProvider *)v6 preferencesFromContext:a2, self];
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  preferences = [v9 preferences];
  lastChangingElementLayoutTransition = [preferences lastChangingElementLayoutTransition];

  v12 = BSEqualObjects();
  v206 = v12;
  if ((v12 & 1) == 0)
  {
    v13 = SBLogSystemAperturePreferencesStackSettling(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [SBSASettlingBehaviorProvider preferencesFromContext:v9];
    }

    objc_storeStrong(&self->_lastChangingElementLayoutTransition, lastChangingElementLayoutTransition);
    [(SBSASettlingBehaviorProvider *)self _setActivePhase:0 context:v9 logReason:@"Element Layout Changed"];
    containerIDsToOvershootOutsets = self->_containerIDsToOvershootOutsets;
    self->_containerIDsToOvershootOutsets = 0;

    pendingPhaseTransitionPropertyIdentities = self->_pendingPhaseTransitionPropertyIdentities;
    self->_pendingPhaseTransitionPropertyIdentities = 0;
  }

  requests = [v9 requests];
  v17 = [requests bs_firstObjectOfClass:objc_opt_class()];

  if (v17)
  {
    self->_collisionImminent = 1;
  }

  else if ((v206 & 1) == 0)
  {
    self->_collisionImminent = [(SBSAElementLayoutTransition *)self->_lastChangingElementLayoutTransition isCollisionRequired];
  }

  v198 = contextCopy;
  v199 = lastChangingElementLayoutTransition;
  [(SBSASettlingBehaviorProvider *)self _progressMilestoneForTransitionPhase:self->_activePhase];
  v19 = v18;
  v259 = 0u;
  v260 = 0u;
  v261 = 0u;
  v262 = 0u;
  obj = [v9 animatedTransitionResults];
  v20 = [obj countByEnumeratingWithState:&v259 objects:v274 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v260;
    do
    {
      v23 = 0;
      do
      {
        if (*v260 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v259 + 1) + 8 * v23);
        if (v19 <= 0.0)
        {
          goto LABEL_33;
        }

        v25 = self->_pendingPhaseTransitionPropertyIdentities;
        associatedInterfaceElementPropertyIdentity = [*(*(&v259 + 1) + 8 * v23) associatedInterfaceElementPropertyIdentity];
        v27 = objc_msgSend_containsObject_(v25);

        [v24 targetedMilestone];
        v28 = BSFloatApproximatelyEqualToFloat();
        isTransitionEndTargeted = [v24 isTransitionEndTargeted];
        if (isTransitionEndTargeted)
        {
          isTransitionEndTargeted = [v24 finished];
        }

        if ((v27 & (v28 | isTransitionEndTargeted)) != 1)
        {
          goto LABEL_33;
        }

        v30 = self->_pendingPhaseTransitionPropertyIdentities;
        self->_pendingPhaseTransitionPropertyIdentities = 0;

        v32 = SBLogSystemAperturePreferencesStackSettling(v31);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
        {
          queryIteration = [v9 queryIteration];
          *buf = 134349314;
          v54 = @"skipped";
          if (v28)
          {
            v54 = @"hit";
          }

          v264 = queryIteration;
          v265 = 2112;
          v266 = v54;
          _os_log_debug_impl(&dword_21ED4E000, v32, OS_LOG_TYPE_DEBUG, "[%{public}lu] Pending phase transition property identity %@.", buf, 0x16u);
        }

        if (self->_collisionImminent && self->_activePhase == -3)
        {
          v33 = [v9 copyByAddingSignals:1 debugRequestingProvider:self];

          v35 = SBLogSystemAperturePreferencesStackSettling(v34);
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
          {
            [(SBSASettlingBehaviorProvider *)v273 preferencesFromContext:v33];
          }

          self->_collisionImminent = 0;
        }

        else
        {
LABEL_33:
          v33 = v9;
        }

        pendingCollisionPropertyIdentities = self->_pendingCollisionPropertyIdentities;
        associatedInterfaceElementPropertyIdentity2 = [v24 associatedInterfaceElementPropertyIdentity];
        v38 = objc_msgSend_containsObject_(pendingCollisionPropertyIdentities);

        [v24 targetedMilestone];
        settings = [objc_opt_class() settings];
        [settings boundsCollisionProgress];
        v40 = BSFloatApproximatelyEqualToFloat();

        isTransitionEndTargeted2 = [v24 isTransitionEndTargeted];
        if (isTransitionEndTargeted2)
        {
          isTransitionEndTargeted2 = [v24 finished];
        }

        if ((v38 & (v40 | isTransitionEndTargeted2)) == 1)
        {
          v42 = self->_pendingCollisionPropertyIdentities;
          self->_pendingCollisionPropertyIdentities = 0;

          v9 = [v33 copyByAddingSignals:1 debugRequestingProvider:self];
          v44 = SBLogSystemAperturePreferencesStackSettling(v43);
          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
          {
            queryIteration2 = [v9 queryIteration];
            *buf = 134349314;
            v52 = @"skipped";
            if (v40)
            {
              v52 = @"reached";
            }

            v264 = queryIteration2;
            v265 = 2112;
            v266 = v52;
            _os_log_debug_impl(&dword_21ED4E000, v44, OS_LOG_TYPE_DEBUG, "[%{public}lu] Collision threshold %@ (explicit)", buf, 0x16u);
          }

          self->_collisionImminent = 0;
          if (self->_collisionIsNotOvershooting)
          {
            self->_collisionIsNotOvershooting = 0;
            [(SBSASettlingBehaviorProvider *)self _setActivePhase:0 context:v9 logReason:@"Reset due to handling collision with no overshooting"];
          }
        }

        else
        {
          v9 = v33;
        }

        pendingSteadyPropertyIdentities = self->_pendingSteadyPropertyIdentities;
        associatedInterfaceElementPropertyIdentity3 = [v24 associatedInterfaceElementPropertyIdentity];
        if (objc_msgSend_containsObject_(pendingSteadyPropertyIdentities) && [v24 isTransitionEndTargeted])
        {
          finished = [v24 finished];

          if (!finished)
          {
            goto LABEL_48;
          }

          v48 = self->_pendingSteadyPropertyIdentities;
          self->_pendingSteadyPropertyIdentities = 0;

          v49 = [v9 copyByAddingSignals:2 debugRequestingProvider:self];
          associatedInterfaceElementPropertyIdentity3 = SBLogSystemAperturePreferencesStackSettling(v50);
          if (os_log_type_enabled(associatedInterfaceElementPropertyIdentity3, OS_LOG_TYPE_DEBUG))
          {
            [(SBSASettlingBehaviorProvider *)v272 preferencesFromContext:v49];
          }
        }

        else
        {
          v49 = v9;
        }

        v9 = v49;
LABEL_48:
        ++v23;
      }

      while (v21 != v23);
      v55 = [obj countByEnumeratingWithState:&v259 objects:v274 count:16];
      v21 = v55;
    }

    while (v55);
  }

  if ((v206 & 1) == 0)
  {
    v56 = self->_pendingCollisionPropertyIdentities;
    self->_pendingCollisionPropertyIdentities = 0;
  }

  v57 = 88;
  if (self->_collisionImminent)
  {
    preferences2 = [v9 preferences];
    v258[0] = MEMORY[0x277D85DD0];
    v258[1] = 3221225472;
    v258[2] = __55__SBSASettlingBehaviorProvider_preferencesFromContext___block_invoke;
    v258[3] = &unk_2783A93E8;
    v258[5] = a2;
    v258[4] = self;
    v59 = [preferences2 copyWithBlock:v258];
    v60 = [v9 copyByUpdatingPreferences:v59];

    v62 = SBLogSystemAperturePreferencesStackSettling(v61);
    if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
    {
      [SBSASettlingBehaviorProvider preferencesFromContext:v60];
    }
  }

  else
  {
    v60 = v9;
  }

  v214 = v60;
  v257.receiver = self;
  v257.super_class = SBSASettlingBehaviorProvider;
  v63 = [(SBSABasePreferencesProvider *)&v257 preferencesFromContext:v60];
  v64 = objc_opt_class();
  v65 = v63;
  if (v64)
  {
    if (objc_opt_isKindOfClass())
    {
      v66 = v65;
    }

    else
    {
      v66 = 0;
    }
  }

  else
  {
    v66 = 0;
  }

  v67 = v66;

  v210 = v67;
  containerViewDescriptions = [v67 containerViewDescriptions];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v253 = 0u;
  v254 = 0u;
  v255 = 0u;
  v256 = 0u;
  v70 = containerViewDescriptions;
  v71 = [v70 countByEnumeratingWithState:&v253 objects:v271 count:16];
  if (v71)
  {
    v72 = v71;
    v73 = *v254;
    do
    {
      for (i = 0; i != v72; ++i)
      {
        if (*v254 != v73)
        {
          objc_enumerationMutation(v70);
        }

        v75 = *(*(&v253 + 1) + 8 * i);
        v76 = MEMORY[0x277CCAE60];
        [v75 bounds];
        v77 = [v76 valueWithCGRect:?];
        interfaceElementIdentifier = [v75 interfaceElementIdentifier];
        [dictionary setObject:v77 forKey:interfaceElementIdentifier];
      }

      v72 = [v70 countByEnumeratingWithState:&v253 objects:v271 count:16];
    }

    while (v72);
  }

  v79 = [(SBSABasePreferencesProvider *)self firstChildPreferenceProviderOfClass:objc_opt_class()];

  v80 = v214;
  if (self->_activePhase)
  {
    if (v79)
    {
      stackContainerInterfaceElementIdentifiersToBounds = self->_stackContainerInterfaceElementIdentifiersToBounds;
      if (stackContainerInterfaceElementIdentifiersToBounds)
      {
        if (([(NSDictionary *)stackContainerInterfaceElementIdentifiersToBounds isEqual:dictionary]& 1) == 0)
        {
          objc_storeStrong(&self->_lastChangingElementLayoutTransition, v199);
          [(SBSASettlingBehaviorProvider *)self _setActivePhase:0 context:v214 logReason:@"Reset due to container frames changing during dynamic animation"];
          v82 = self->_containerIDsToOvershootOutsets;
          self->_containerIDsToOvershootOutsets = 0;

          v83 = self->_pendingPhaseTransitionPropertyIdentities;
          self->_pendingPhaseTransitionPropertyIdentities = 0;
        }
      }
    }
  }

  v84 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:dictionary];
  v85 = self->_stackContainerInterfaceElementIdentifiersToBounds;
  self->_stackContainerInterfaceElementIdentifiersToBounds = v84;

  v86 = [v214 containsAnyOfSignals:1];
  obja = v70;
  v200 = dictionary;
  if (v86)
  {
    if (!self->_activePhase)
    {
      goto LABEL_106;
    }

    v87 = [(NSDictionary *)self->_containerIDsToOvershootOutsets mutableCopy];
    v249 = 0u;
    v250 = 0u;
    v251 = 0u;
    v252 = 0u;
    containerViewDescriptions2 = [v214 containerViewDescriptions];
    v89 = [containerViewDescriptions2 countByEnumeratingWithState:&v249 objects:v270 count:16];
    if (v89)
    {
      v90 = v89;
      v91 = 0;
      v92 = *v250;
      v211 = containerViewDescriptions2;
      do
      {
        for (j = 0; j != v90; ++j)
        {
          if (*v250 != v92)
          {
            objc_enumerationMutation(containerViewDescriptions2);
          }

          v94 = *(*(&v249 + 1) + 8 * j);
          v248[0] = MEMORY[0x277D85DD0];
          v248[1] = 3221225472;
          v248[2] = __55__SBSASettlingBehaviorProvider_preferencesFromContext___block_invoke_37;
          v248[3] = &unk_2783B0210;
          v248[4] = v94;
          v95 = [v70 bs_firstObjectPassingTest:v248];
          [v94 bounds];
          v97 = v96;
          v99 = v98;
          v101 = v100;
          v103 = v102;
          [v95 bounds];
          x = v276.origin.x;
          y = v276.origin.y;
          width = v276.size.width;
          height = v276.size.height;
          v282.origin.x = v97;
          v282.origin.y = v99;
          v282.size.width = v101;
          v282.size.height = v103;
          if (CGRectContainsRect(v276, v282))
          {
            v277.origin.x = x;
            v277.origin.y = y;
            v277.size.width = width;
            v277.size.height = height;
            v215 = CGRectGetHeight(v277);
            v278.origin.x = v97;
            v278.origin.y = v99;
            v278.size.width = v101;
            v278.size.height = v103;
            if (v215 > CGRectGetHeight(v278))
            {
              v279.origin.x = x;
              v279.origin.y = y;
              v279.size.width = width;
              v279.size.height = height;
              v108 = CGRectGetWidth(v279);
              v280.origin.x = v97;
              v280.origin.y = v99;
              v280.size.width = v101;
              v280.size.height = v103;
              if (v108 > CGRectGetWidth(v280))
              {
                v110 = v87;
                v111 = SBLogSystemAperturePreferencesStackSettling(v109);
                if (os_log_type_enabled(v111, OS_LOG_TYPE_DEBUG))
                {
                  queryIteration3 = [v214 queryIteration];
                  interfaceElementIdentifier2 = [v94 interfaceElementIdentifier];
                  *buf = 134349314;
                  v264 = queryIteration3;
                  v265 = 2112;
                  v266 = interfaceElementIdentifier2;
                  _os_log_debug_impl(&dword_21ED4E000, v111, OS_LOG_TYPE_DEBUG, "[%{public}lu] Container is now Expanding, dropping overshoot offsets for: (%@)", buf, 0x16u);
                }

                interfaceElementIdentifier3 = [v94 interfaceElementIdentifier];
                v87 = v110;
                [v110 removeObjectForKey:interfaceElementIdentifier3];

                v91 = 1;
                containerViewDescriptions2 = v211;
              }
            }
          }

          v70 = obja;
        }

        v90 = [containerViewDescriptions2 countByEnumeratingWithState:&v249 objects:v270 count:16];
      }

      while (v90);

      v80 = v214;
      v57 = 88;
      if ((v91 & 1) == 0)
      {
        goto LABEL_101;
      }

      if ([v87 count])
      {
        v114 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v87];
        containerViewDescriptions2 = self->_containerIDsToOvershootOutsets;
        self->_containerIDsToOvershootOutsets = v114;
      }

      else
      {
        [(SBSASettlingBehaviorProvider *)self _setActivePhase:0 context:v214 logReason:@"Reset due to No container overshoot offsets left after something started expanding"];
        v115 = self->_containerIDsToOvershootOutsets;
        self->_containerIDsToOvershootOutsets = 0;

        containerViewDescriptions2 = self->_pendingPhaseTransitionPropertyIdentities;
        self->_pendingPhaseTransitionPropertyIdentities = 0;
      }
    }

LABEL_101:
  }

  activePhase = self->_activePhase;
  if (activePhase)
  {
    if (activePhase >= -1)
    {
      activePhase = -1;
    }

    v117 = activePhase + 1;
    goto LABEL_125;
  }

LABEL_106:
  v118 = SBLogSystemAperturePreferencesStackSettling(v86);
  if (os_log_type_enabled(v118, OS_LOG_TYPE_DEBUG))
  {
    [SBSASettlingBehaviorProvider preferencesFromContext:v80];
  }

  v212 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v244 = 0u;
  v245 = 0u;
  v246 = 0u;
  v247 = 0u;
  containerViewDescriptions3 = [v80 containerViewDescriptions];
  v119 = [containerViewDescriptions3 countByEnumeratingWithState:&v244 objects:v269 count:16];
  if (v119)
  {
    v120 = v119;
    v219 = *v245;
    do
    {
      for (k = 0; k != v120; ++k)
      {
        if (*v245 != v219)
        {
          objc_enumerationMutation(containerViewDescriptions3);
        }

        v122 = *(*(&v244 + 1) + 8 * k);
        v243[0] = MEMORY[0x277D85DD0];
        v243[1] = 3221225472;
        v243[2] = __55__SBSASettlingBehaviorProvider_preferencesFromContext___block_invoke_42;
        v243[3] = &unk_2783B0210;
        v243[4] = v122;
        v123 = [v70 bs_firstObjectPassingTest:v243];
        if (v123)
        {
          elementContexts = [v80 elementContexts];
          v125 = SBSAElementContextAssociatedWithContainerViewDescription(v123, elementContexts, 0);

          v126 = [(SBSASettlingBehaviorProvider *)self _fluidBehaviorSettingsForTransitionPhase:-3 forElementContext:v125];
          [(SBSASettlingBehaviorProvider *)self _overshootOutsetsTargetingContainerDescription:v123 initialContainerDescription:v122 settings:v126 context:v80];
          v131 = v127;
          v132 = v128;
          v133 = v129;
          v134 = v130;
          if (v127 != 0.0 || v129 != 0.0 || v128 != 0.0 || v130 != 0.0)
          {
            *v242 = v127;
            *&v242[1] = v128;
            *&v242[2] = v129;
            *&v242[3] = v130;
            v135 = [MEMORY[0x277CCAE60] valueWithBytes:v242 objCType:"{UIEdgeInsets=dddd}"];
            interfaceElementIdentifier4 = [v122 interfaceElementIdentifier];
            [v212 setObject:v135 forKey:interfaceElementIdentifier4];

            v138 = SBLogSystemAperturePreferencesStackSettling(v137);
            if (os_log_type_enabled(v138, OS_LOG_TYPE_DEBUG))
            {
              queryIteration4 = [v214 queryIteration];
              interfaceElementIdentifier5 = [v122 interfaceElementIdentifier];
              v281.top = v131;
              v281.left = v132;
              v281.bottom = v133;
              v281.right = v134;
              v140 = NSStringFromUIEdgeInsets(v281);
              *buf = 134349570;
              v264 = queryIteration4;
              v265 = 2112;
              v266 = interfaceElementIdentifier5;
              v267 = 2112;
              v268 = v140;
              _os_log_debug_impl(&dword_21ED4E000, v138, OS_LOG_TYPE_DEBUG, "[%{public}lu] Updated overshoot outsets for container description '%@': %@", buf, 0x20u);
            }

            v80 = v214;
          }

          v70 = obja;
        }
      }

      v120 = [containerViewDescriptions3 countByEnumeratingWithState:&v244 objects:v269 count:16];
    }

    while (v120);
  }

  objc_storeStrong(&self->_containerIDsToOvershootOutsets, v212);
  v117 = -3;
  v57 = 88;
  dictionary = v200;
LABEL_125:
  v141 = [(NSDictionary *)self->_containerIDsToOvershootOutsets count];
  v142 = v141;
  v203 = v141 != 0;
  if (self->_collisionImminent)
  {
    v143 = self->_activePhase;
    v144 = v143 == 0;
    if (!v141)
    {
      if (v143)
      {
        goto LABEL_134;
      }

      self->_collisionIsNotOvershooting = 1;
      goto LABEL_133;
    }
  }

  else
  {
    if (!v141)
    {
      goto LABEL_134;
    }

    v144 = 0;
  }

  if (!self->_pendingPhaseTransitionPropertyIdentities || v144)
  {
LABEL_133:
    [(SBSASettlingBehaviorProvider *)self _setActivePhase:v117 context:v80 logReason:@"Incremented Phase"];
  }

LABEL_134:
  v205 = [v70 mutableCopy];
  v208 = [v70 count];
  if (v208)
  {
    v201 = objc_alloc_init(MEMORY[0x277CBEB58]);

    v204 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v202 = objc_alloc_init(MEMORY[0x277CBEB58]);

    v146 = 0;
    v147 = @"Will Not Overshoot";
    if (v142)
    {
      v147 = @"Will Overshoot";
    }

    v197 = v147;
    *&v145 = 134349314;
    v196 = v145;
    v213 = v142;
    while (1)
    {
      v148 = [obja objectAtIndex:{v146, v196}];
      v149 = [SBSAInterfaceElementPropertyIdentity alloc];
      interfaceElementIdentifier6 = [v148 interfaceElementIdentifier];
      v218 = [(SBSAInterfaceElementPropertyIdentity *)v149 initWithAssociatedInterfaceElementIdentifier:interfaceElementIdentifier6 andProperty:@"bounds"];

      v151 = self->_containerIDsToOvershootOutsets;
      interfaceElementIdentifier7 = [v148 interfaceElementIdentifier];
      v153 = [(NSDictionary *)v151 objectForKey:interfaceElementIdentifier7];

      v154 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v220 = v154;
      if (v142 && v153)
      {
        v155 = v154;
        [v153 UIEdgeInsetsValue];
        v157 = v156;
        v159 = v158;
        v161 = v160;
        v163 = v162;
        elementContexts2 = [v80 elementContexts];
        SBSAElementContextAssociatedWithContainerViewDescription(v148, elementContexts2, 0);
        v166 = v165 = v155;

        [(SBSASettlingBehaviorProvider *)self _overshootOutsetsForTransitionPhase:self->_activePhase baseOutsets:v166 elementContext:v157, v159, v161, v163];
        v235[0] = MEMORY[0x277D85DD0];
        v235[1] = 3221225472;
        v235[2] = __55__SBSASettlingBehaviorProvider_preferencesFromContext___block_invoke_52;
        v235[3] = &unk_2783B8748;
        v237 = a2;
        v235[4] = self;
        v238 = v167;
        v239 = v168;
        v240 = v169;
        v241 = v170;
        v171 = v80;
        v236 = v171;
        v172 = [v148 copyWithBlock:v235];
        [v205 replaceObjectAtIndex:v146 withObject:v172];

        v227[0] = MEMORY[0x277D85DD0];
        v227[1] = 3221225472;
        v227[2] = __55__SBSASettlingBehaviorProvider_preferencesFromContext___block_invoke_57;
        v227[3] = &unk_2783C0B10;
        v233 = a2;
        v227[4] = self;
        v234 = v203;
        v228 = v148;
        v229 = v171;
        v230 = v218;
        v231 = v165;
        v232 = v204;
        v173 = [v210 copyWithBlock:v227];

        v142 = v213;
        v210 = v173;
      }

      if (*(&self->super.super.isa + v57) == 1 && self->_activePhase == -3)
      {
        if (!v153 || ([v153 UIEdgeInsetsValue], BSFloatIsZero()))
        {
          v174 = MEMORY[0x277CCABB0];
          settings2 = [objc_opt_class() settings];
          [settings2 boundsCollisionProgress];
          v176 = [v174 numberWithDouble:?];
          [v220 addObject:v176];

          v177 = SBLogSystemAperturePreferencesStackSettling([v201 addObject:v218]);
          if (os_log_type_enabled(v177, OS_LOG_TYPE_DEBUG))
          {
            queryIteration5 = [v214 queryIteration];
            *buf = v196;
            v264 = queryIteration5;
            v265 = 2112;
            v266 = v218;
            _os_log_debug_impl(&dword_21ED4E000, v177, OS_LOG_TYPE_DEBUG, "[%{public}lu] Added pending collision property ID: %@", buf, 0x16u);
          }
        }
      }

      elementLayoutTransition = [v210 elementLayoutTransition];
      isLayoutChange = [elementLayoutTransition isLayoutChange];

      v180 = self->_activePhase;
      if (!v142)
      {
        break;
      }

      v80 = v214;
      if (v180 == -1)
      {
        goto LABEL_154;
      }

LABEL_157:
      v184 = v57;
      v185 = v220;
      if ([v220 count])
      {
        v223[0] = MEMORY[0x277D85DD0];
        v223[1] = 3221225472;
        v223[2] = __55__SBSASettlingBehaviorProvider_preferencesFromContext___block_invoke_74;
        v223[3] = &unk_2783AD778;
        v226 = a2;
        v223[4] = self;
        v224 = v220;
        v186 = v218;
        v225 = v218;
        v187 = [v210 copyWithBlock:v223];

        v142 = v213;
        v210 = v187;
        v185 = v220;
      }

      else
      {
        v186 = v218;
      }

      ++v146;
      v57 = v184;
      if (v208 == v146)
      {
        dictionary = v200;
        v190 = v201;
        v191 = v204;
        v192 = v202;
        goto LABEL_163;
      }
    }

    v181 = v180 == 0;
    v182 = v206 ^ 1;
    if (!v181)
    {
      v182 = 1;
    }

    v80 = v214;
    if (((v182 | isLayoutChange) & 1) == 0)
    {
      goto LABEL_157;
    }

LABEL_154:
    [v220 addObject:0x28336F620];
    v183 = SBLogSystemAperturePreferencesStackSettling([v202 addObject:v218]);
    if (os_log_type_enabled(v183, OS_LOG_TYPE_DEBUG))
    {
      queryIteration6 = [v80 queryIteration];
      *buf = 134349570;
      v264 = queryIteration6;
      v265 = 2112;
      v266 = v197;
      v267 = 2112;
      v268 = v218;
      _os_log_debug_impl(&dword_21ED4E000, v183, OS_LOG_TYPE_DEBUG, "[%{public}lu] Added pending steady state (%@) property ID: %@", buf, 0x20u);
    }

    goto LABEL_157;
  }

  v191 = 0;
  v190 = 0;
  v192 = 0;
LABEL_163:
  if ([v190 count])
  {
    objc_storeStrong(&self->_pendingCollisionPropertyIdentities, v190);
  }

  if ([v191 count])
  {
    objc_storeStrong(&self->_pendingPhaseTransitionPropertyIdentities, v191);
  }

  if ([v192 count])
  {
    objc_storeStrong(&self->_pendingSteadyPropertyIdentities, v192);
  }

  v193 = [v210 copyByUpdatingContainerViewDescriptions:v205];

  v194 = v193;
  return v193;
}

void __55__SBSASettlingBehaviorProvider_preferencesFromContext___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  if (v6)
  {
    v2 = objc_opt_self();
    v3 = v6;
    if (v2)
    {
      if (objc_opt_isKindOfClass())
      {
        v4 = v3;
      }

      else
      {
        v4 = 0;
      }
    }

    else
    {
      v4 = 0;
    }

    v5 = v4;

    if (!v5)
    {
      __55__SBSASettlingBehaviorProvider_preferencesFromContext___block_invoke_cold_1();
    }
  }

  else
  {
    v5 = 0;
  }

  [v5 setCollisionImminent:1];
}

uint64_t __55__SBSASettlingBehaviorProvider_preferencesFromContext___block_invoke_37(uint64_t a1, void *a2)
{
  v3 = [a2 interfaceElementIdentifier];
  v4 = [*(a1 + 32) interfaceElementIdentifier];
  v5 = BSEqualObjects();

  return v5;
}

uint64_t __55__SBSASettlingBehaviorProvider_preferencesFromContext___block_invoke_42(uint64_t a1, void *a2)
{
  v3 = [a2 interfaceElementIdentifier];
  v4 = [*(a1 + 32) interfaceElementIdentifier];
  v5 = BSEqualObjects();

  return v5;
}

void __55__SBSASettlingBehaviorProvider_preferencesFromContext___block_invoke_52(uint64_t a1, void *a2)
{
  v39 = *MEMORY[0x277D85DE8];
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
      __55__SBSASettlingBehaviorProvider_preferencesFromContext___block_invoke_52_cold_1();
    }
  }

  else
  {
    v7 = 0;
  }

  [v7 bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12 - (*(a1 + 64) + *(a1 + 80));
  v15 = v14 - (*(a1 + 56) + *(a1 + 72));
  v16 = SBLogSystemAperturePreferencesStackSettling([v7 setBounds:{v8, v10, v13, v15}]);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v29 = [*(a1 + 40) queryIteration];
    v30 = [v7 interfaceElementIdentifier];
    v43.origin.x = v9;
    v43.origin.y = v11;
    v43.size.width = v13;
    v43.size.height = v15;
    v31 = NSStringFromCGRect(v43);
    LODWORD(buf.a) = 134349570;
    *(&buf.a + 4) = v29;
    WORD2(buf.b) = 2112;
    *(&buf.b + 6) = v30;
    HIWORD(buf.c) = 2112;
    *&buf.d = v31;
    _os_log_debug_impl(&dword_21ED4E000, v16, OS_LOG_TYPE_DEBUG, "[%{public}lu] Updated bounds for container description '%@': %@", &buf, 0x20u);
  }

  [v7 center];
  __asm { FMOV            V3.2D, #0.5 }

  v23.f64[1] = v22;
  v24 = vaddq_f64(v23, vmulq_f64(vsubq_f64(*(a1 + 56), *(a1 + 72)), _Q3));
  v25 = v24.f64[1];
  point = v24.f64[0];
  v26 = SBLogSystemAperturePreferencesStackSettling([v7 setCenter:v24.f64[1]]);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    v32 = [*(a1 + 40) queryIteration];
    v33 = [v7 interfaceElementIdentifier];
    v40.x = v25;
    v40.y = point;
    v34 = NSStringFromCGPoint(v40);
    LODWORD(buf.a) = 134349570;
    *(&buf.a + 4) = v32;
    WORD2(buf.b) = 2112;
    *(&buf.b + 6) = v33;
    HIWORD(buf.c) = 2112;
    *&buf.d = v34;
    _os_log_debug_impl(&dword_21ED4E000, v26, OS_LOG_TYPE_DEBUG, "[%{public}lu] Updated center for container description '%@': %@", &buf, 0x20u);
  }

  memset(&buf, 0, sizeof(buf));
  [v7 contentScale];
  SBSAAffineTransformFromContentScale(&buf, v27, v28);
  v36 = buf;
  CGAffineTransformInvert(&v37, &v36);
  v41.origin.x = v9;
  v41.origin.y = v11;
  v41.size.width = v13;
  v41.size.height = v15;
  v42 = CGRectApplyAffineTransform(v41, &v37);
  [v7 setContentBounds:{v42.origin.x, v42.origin.y, v42.size.width, v42.size.height}];
  UIRectGetCenter();
  [v7 setContentCenter:?];
}

void __55__SBSASettlingBehaviorProvider_preferencesFromContext___block_invoke_57(uint64_t a1, void *a2)
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
      __55__SBSASettlingBehaviorProvider_preferencesFromContext___block_invoke_57_cold_1();
    }
  }

  else
  {
    v7 = 0;
  }

  if (*(a1 + 88) == 1)
  {
    v8 = *(a1 + 40);
    v9 = [*(a1 + 48) elementContexts];
    v10 = SBSAElementContextAssociatedWithContainerViewDescription(v8, v9, 0);

    v11 = [*(a1 + 32) _fluidBehaviorSettingsForTransitionPhase:*(*(a1 + 32) + 40) forElementContext:v10];
    v12 = [objc_opt_class() newAnimatedTransitionDescriptionWithBehaviorSettings:v11];
    [v7 setAnimatedTransitionDescription:v12 forProperty:*(a1 + 56) withMilestones:0];
    v13 = *(a1 + 56);
    v14 = [SBSAInterfaceElementPropertyIdentity alloc];
    v15 = [*(a1 + 40) interfaceElementIdentifier];
    v16 = [(SBSAInterfaceElementPropertyIdentity *)v14 initWithAssociatedInterfaceElementIdentifier:v15 andProperty:@"center"];
    [v7 associateAnimatedTransitionDescriptionOfProperty:v13 withProperty:v16 withMilestones:0];

    v17 = *(a1 + 56);
    v18 = [SBSAInterfaceElementPropertyIdentity alloc];
    v19 = [*(a1 + 40) interfaceElementIdentifier];
    v20 = [(SBSAInterfaceElementPropertyIdentity *)v18 initWithAssociatedInterfaceElementIdentifier:v19 andProperty:@"contentBounds"];
    [v7 associateAnimatedTransitionDescriptionOfProperty:v17 withProperty:v20 withMilestones:0];

    v21 = *(a1 + 56);
    v22 = [SBSAInterfaceElementPropertyIdentity alloc];
    v23 = [*(a1 + 40) interfaceElementIdentifier];
    v24 = [(SBSAInterfaceElementPropertyIdentity *)v22 initWithAssociatedInterfaceElementIdentifier:v23 andProperty:@"contentCenter"];
    [v7 associateAnimatedTransitionDescriptionOfProperty:v21 withProperty:v24 withMilestones:0];
  }

  v25 = *(a1 + 32);
  if (!v25[7])
  {
    [v25 _progressMilestoneForTransitionPhase:v25[5]];
    if (v26 > 0.0)
    {
      v27 = *(a1 + 64);
      v28 = [MEMORY[0x277CCABB0] numberWithDouble:?];
      [v27 addObject:v28];

      v29 = SBLogSystemAperturePreferencesStackSettling([*(a1 + 72) addObject:*(a1 + 56)]);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        __55__SBSASettlingBehaviorProvider_preferencesFromContext___block_invoke_57_cold_2(a1);
      }
    }
  }
}

void __55__SBSASettlingBehaviorProvider_preferencesFromContext___block_invoke_74(uint64_t a1, void *a2)
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
      __55__SBSASettlingBehaviorProvider_preferencesFromContext___block_invoke_74_cold_1();
    }
  }

  else
  {
    v6 = 0;
  }

  [v6 addMilestones:*(a1 + 40) forPropertyIdentity:*(a1 + 48)];
}

- (void)_setActivePhase:(int64_t)phase context:(id)context logReason:(id)reason
{
  v31 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  reasonCopy = reason;
  activePhase = self->_activePhase;
  v11 = SBLogSystemAperturePreferencesStackSettling(reasonCopy);
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG);
  if (activePhase == phase)
  {
    if (v12)
    {
      queryIteration = [contextCopy queryIteration];
      v14 = self->_activePhase + 3;
      if (v14 != 3 && self->_activePhase < 0xFFFFFFFFFFFFFFFDLL)
      {
        v15 = @"[invalid]";
      }

      else
      {
        v15 = off_2783C0B30[v14];
      }

      v23 = 134349570;
      v24 = queryIteration;
      v25 = 2112;
      v26 = v15;
      v27 = 2112;
      v28 = reasonCopy;
      v19 = "[%{public}lu] (%@) Active Phase Not updated: %@";
      v20 = v11;
      v21 = 32;
LABEL_16:
      _os_log_debug_impl(&dword_21ED4E000, v20, OS_LOG_TYPE_DEBUG, v19, &v23, v21);
    }
  }

  else if (v12)
  {
    queryIteration2 = [contextCopy queryIteration];
    v17 = self->_activePhase + 3;
    if (v17 != 3 && self->_activePhase < 0xFFFFFFFFFFFFFFFDLL)
    {
      v18 = @"[invalid]";
    }

    else
    {
      v18 = off_2783C0B30[v17];
    }

    if (phase != 0 && phase < 0xFFFFFFFFFFFFFFFDLL)
    {
      v22 = @"[invalid]";
    }

    else
    {
      v22 = off_2783C0B30[phase + 3];
    }

    v23 = 134349826;
    v24 = queryIteration2;
    v25 = 2112;
    v26 = v18;
    v27 = 2112;
    v28 = v22;
    v29 = 2112;
    v30 = reasonCopy;
    v19 = "[%{public}lu] (%@) -> (%@) Active Phase Updated: %@";
    v20 = v11;
    v21 = 42;
    goto LABEL_16;
  }

  self->_activePhase = phase;
}

- (id)_fluidBehaviorSettingsForTransitionPhase:(int64_t)phase forElementContext:(id)context
{
  systemApertureCustomLayoutCustomAnimationStyle = [context systemApertureCustomLayoutCustomAnimationStyle];
  settings = [objc_opt_class() settings];
  v7 = settings;
  if (systemApertureCustomLayoutCustomAnimationStyle == 3)
  {
    jindoBoundsOval = [settings jindoBoundsOval];
  }

  else
  {
    inertInterfaceElementTransitionSettings = [settings inertInterfaceElementTransitionSettings];
    jindoBoundsOval = [inertInterfaceElementTransitionSettings boundsBehaviorSettings];
  }

  if (phase == -2)
  {
    settings2 = [objc_opt_class() settings];
    inertCompensatingInterfaceElementTransitionSettings = [settings2 inertCompensatingInterfaceElementTransitionSettings];
    goto LABEL_9;
  }

  if (phase == -3 && systemApertureCustomLayoutCustomAnimationStyle != 3)
  {
    settings2 = [objc_opt_class() settings];
    inertCompensatingInterfaceElementTransitionSettings = [settings2 inertCollapsingInterfaceElementTransitionSettings];
LABEL_9:
    v12 = inertCompensatingInterfaceElementTransitionSettings;
    boundsBehaviorSettings = [inertCompensatingInterfaceElementTransitionSettings boundsBehaviorSettings];

    jindoBoundsOval = boundsBehaviorSettings;
  }

  return jindoBoundsOval;
}

- (double)_progressMilestoneForTransitionPhase:(int64_t)phase
{
  if (phase == -2)
  {
    settings = [objc_opt_class() settings];
    [settings boundsCompensatingPhaseChangeProgress];
    goto LABEL_5;
  }

  v3 = 0.0;
  if (phase == -3)
  {
    settings = [objc_opt_class() settings];
    [settings boundsCollapsingPhaseChangeProgress];
LABEL_5:
    v3 = v5;
  }

  return v3;
}

- (double)_overshootFractionForDampingRatio:(double)ratio
{
  if (!BSFloatLessThanFloat())
  {
    return 0.0;
  }

  v4 = ratio * -3.14159265 / sqrt(1.0 - ratio * ratio);

  return exp(v4);
}

- (UIEdgeInsets)_overshootOutsetsTargetingContainerDescription:(id)description initialContainerDescription:(id)containerDescription settings:(id)settings context:(id)context
{
  v87 = *MEMORY[0x277D85DE8];
  descriptionCopy = description;
  containerDescriptionCopy = containerDescription;
  settingsCopy = settings;
  contextCopy = context;
  v14 = *(MEMORY[0x277D768C8] + 8);
  v76 = *(MEMORY[0x277D768C8] + 16);
  v74 = *MEMORY[0x277D768C8];
  v75 = *(MEMORY[0x277D768C8] + 24);
  [containerDescriptionCopy bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  [descriptionCopy bounds];
  height = v88.size.height;
  x = v88.origin.x;
  width = v88.size.width;
  y = v88.origin.y;
  v101.origin.x = v16;
  v101.origin.y = v18;
  aRect = v20;
  v101.size.width = v20;
  v101.size.height = v22;
  v23 = CGRectContainsRect(v88, v101);
  if (v23)
  {
    goto LABEL_5;
  }

  v68 = v14;
  v24 = SBLogSystemAperturePreferencesStackSettling(v23);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    queryIteration = [contextCopy queryIteration];
    v98.origin.x = v16;
    v98.origin.y = v18;
    v98.size.width = v20;
    v98.size.height = v22;
    v59 = NSStringFromRect(v98);
    v99.size.height = height;
    v99.origin.x = x;
    v99.size.width = width;
    v99.origin.y = y;
    v60 = NSStringFromRect(v99);
    associatedSystemApertureElementIdentity = [descriptionCopy associatedSystemApertureElementIdentity];
    elementIdentifier = [associatedSystemApertureElementIdentity elementIdentifier];
    interfaceElementIdentifier = [descriptionCopy interfaceElementIdentifier];
    *buf = 134350082;
    v78 = queryIteration;
    v79 = 2112;
    v80 = v59;
    v81 = 2112;
    v82 = v60;
    v83 = 2112;
    v84 = elementIdentifier;
    v85 = 2112;
    v86 = interfaceElementIdentifier;
    _os_log_debug_impl(&dword_21ED4E000, v24, OS_LOG_TYPE_DEBUG, "[%{public}lu] initial:(%@) target:(%@) '%@' -> %@", buf, 0x34u);
  }

  [settingsCopy dampingRatio];
  [(SBSASettlingBehaviorProvider *)self _overshootFractionForDampingRatio:?];
  if (BSFloatIsZero())
  {
LABEL_5:
    v25 = v74;
  }

  else
  {
    [descriptionCopy boundsVelocity];
    v31 = v30;
    v64 = v32;
    v65 = v30;
    v33 = v32;
    v35 = v34;
    v63 = v34;
    v37 = v36;
    v89.origin.x = v16;
    v89.origin.y = v18;
    v89.size.height = v22;
    v89.size.width = aRect;
    CGRectGetMaxX(v89);
    v90.size.width = width;
    v90.origin.y = y;
    v90.size.height = height;
    v90.origin.x = x;
    CGRectGetMaxX(v90);
    v91.origin.x = v31;
    v91.origin.y = v33;
    v91.size.width = v35;
    v91.size.height = v37;
    CGRectGetWidth(v91);
    v92.origin.y = v18;
    v92.origin.x = v16;
    v92.size.width = aRect;
    v92.size.height = v22;
    CGRectGetMaxY(v92);
    v93.origin.x = x;
    v93.origin.y = y;
    v93.size.width = width;
    v93.size.height = height;
    CGRectGetMaxY(v93);
    v94.origin.y = v64;
    v94.origin.x = v65;
    v94.size.width = v63;
    v94.size.height = v37;
    CGRectGetHeight(v94);
    [contextCopy displayScale];
    BSFloatRoundForScale();
    v39 = v38;
    BSFloatRoundForScale();
    v41 = v40;
    v95.origin.x = x;
    v95.origin.y = y;
    v95.size.width = width;
    v95.size.height = height;
    CGRectGetWidth(v95);
    v96.origin.x = x;
    v96.origin.y = y;
    v96.size.width = width;
    v96.size.height = height;
    CGRectGetHeight(v96);
    BSRectWithSize();
    v43 = v42;
    v45 = v44;
    v47 = v46;
    v49 = v48;
    [contextCopy inertContainerFrame];
    BSRectWithSize();
    v102.origin.x = v50;
    v102.origin.y = v51;
    v102.size.width = v52;
    v102.size.height = v53;
    v97.origin.x = v43;
    v97.origin.y = v45;
    v97.size.width = v47;
    v97.size.height = v49;
    v14 = v68;
    v25 = v74;
    if (!CGRectContainsRect(v97, v102))
    {
      elementContexts = [contextCopy elementContexts];
      v55 = SBSAElementContextAssociatedWithContainerViewDescription(containerDescriptionCopy, elementContexts, 0);

      interfaceOrientation = [v55 interfaceOrientation];
      v57 = v39 * -2.0;
      if (interfaceOrientation == 3)
      {
        v58 = v39 * -2.0;
      }

      else
      {
        v58 = -v39;
      }

      if (interfaceOrientation == 4)
      {
        v58 = -v39;
      }

      else
      {
        v57 = -v39;
      }

      if (interfaceOrientation < 3)
      {
        v58 = -v39;
      }

      v75 = v58;
      v76 = -v41;
      if (interfaceOrientation >= 3)
      {
        v14 = v57;
      }

      else
      {
        v14 = -v39;
      }

      if (interfaceOrientation >= 3)
      {
        v25 = -v41;
      }

      else
      {
        v25 = v41 * -2.0;
      }
    }
  }

  v26 = v25;
  v27 = v14;
  v29 = v75;
  v28 = v76;
  result.right = v29;
  result.bottom = v28;
  result.left = v27;
  result.top = v26;
  return result;
}

- (UIEdgeInsets)_overshootOutsetsForTransitionPhase:(int64_t)phase baseOutsets:(UIEdgeInsets)outsets elementContext:(id)context
{
  right = outsets.right;
  bottom = outsets.bottom;
  left = outsets.left;
  top = outsets.top;
  contextCopy = context;
  v11 = contextCopy;
  if ((phase + 1) < 2)
  {
    top = *MEMORY[0x277D768C8];
    left = *(MEMORY[0x277D768C8] + 8);
    bottom = *(MEMORY[0x277D768C8] + 16);
    right = *(MEMORY[0x277D768C8] + 24);
  }

  else if (phase == -2)
  {
    interfaceOrientation = [contextCopy interfaceOrientation];
    v16 = top + top;
    v17 = bottom + bottom;
    v18 = right + left;
    v19 = left + right;
    if (interfaceOrientation == 3)
    {
      v20 = 0.0;
    }

    else
    {
      v20 = right;
    }

    if (interfaceOrientation == 3)
    {
      v21 = bottom + bottom;
    }

    else
    {
      v21 = bottom;
    }

    if (interfaceOrientation == 3)
    {
      v22 = top + top;
    }

    else
    {
      v19 = left;
      v22 = top;
    }

    if (interfaceOrientation == 4)
    {
      v19 = 0.0;
    }

    else
    {
      v18 = v20;
      v17 = v21;
      v16 = v22;
    }

    if (interfaceOrientation >= 3)
    {
      right = v18;
    }

    else
    {
      right = right + right;
    }

    if (interfaceOrientation >= 3)
    {
      bottom = v17;
    }

    else
    {
      bottom = bottom + top;
    }

    if (interfaceOrientation >= 3)
    {
      left = v19;
    }

    else
    {
      left = left + left;
    }

    if (interfaceOrientation >= 3)
    {
      top = v16;
    }

    else
    {
      top = 0.0;
    }
  }

  else if (phase == -3)
  {
    interfaceOrientation2 = [contextCopy interfaceOrientation];
    v13 = right * 0.5;
    v14 = left * 0.5;
    if (interfaceOrientation2 != 3)
    {
      v14 = left;
    }

    if (interfaceOrientation2 == 4)
    {
      v14 = left;
    }

    else
    {
      v13 = right;
    }

    if (interfaceOrientation2 < 3)
    {
      bottom = 0.0;
    }

    else
    {
      right = v13;
    }

    if (interfaceOrientation2 >= 3)
    {
      left = v14;
    }
  }

  v23 = top;
  v24 = left;
  v25 = bottom;
  v26 = right;
  result.right = v26;
  result.bottom = v25;
  result.left = v24;
  result.top = v23;
  return result;
}

- (void)preferencesFromContext:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSClassFromString(&cfstr_Sbsacontext.isa);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v8 handleFailureInMethod:a2 object:a3 file:@"SBSASettlingBehaviorProvider.m" lineNumber:94 description:{@"Unexpected class – expected '%@', got '%@'", v5, v7}];
}

- (void)preferencesFromContext:(void *)a1 .cold.2(void *a1)
{
  [a1 queryIteration];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)preferencesFromContext:(uint64_t)a1 .cold.3(uint64_t a1, void *a2)
{
  v4 = OUTLINED_FUNCTION_6_12(a1, a2);
  *v3 = 134349056;
  *v2 = v4;
  OUTLINED_FUNCTION_5_14(&dword_21ED4E000, v5, v6, "[%{public}lu] Collision threshold reached (collapsing)");
}

- (void)preferencesFromContext:(uint64_t)a1 .cold.4(uint64_t a1, void *a2)
{
  v4 = OUTLINED_FUNCTION_6_12(a1, a2);
  *v3 = 134349056;
  *v2 = v4;
  OUTLINED_FUNCTION_5_14(&dword_21ED4E000, v5, v6, "[%{public}lu] Steady state reached");
}

- (void)preferencesFromContext:(void *)a1 .cold.5(void *a1)
{
  [a1 queryIteration];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)preferencesFromContext:(void *)a1 .cold.6(void *a1)
{
  [a1 queryIteration];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void __55__SBSASettlingBehaviorProvider_preferencesFromContext___block_invoke_cold_1()
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

void __55__SBSASettlingBehaviorProvider_preferencesFromContext___block_invoke_52_cold_1()
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

void __55__SBSASettlingBehaviorProvider_preferencesFromContext___block_invoke_57_cold_1()
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

void __55__SBSASettlingBehaviorProvider_preferencesFromContext___block_invoke_57_cold_2(uint64_t a1)
{
  [*(a1 + 48) queryIteration];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
}

void __55__SBSASettlingBehaviorProvider_preferencesFromContext___block_invoke_74_cold_1()
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