@interface SBMainDisplayLayoutStateManager
+ (id)_initialLayoutStateWithDisplayOrdinal:(int64_t)ordinal isDisplayExternal:(BOOL)external;
- (BOOL)_doesSceneIDSpecifyPrimaryScene:(id)scene forApplicationIdentifier:(id)identifier sceneSessionRole:(id)role;
- (BOOL)_hasAppLayoutBeenUserKilledWithinThresholdToCreateNewScene:(id)scene;
- (SBRecentAppLayouts)_recentAppLayouts;
- (id)_applicationSceneEntityFromApplicationBundleIdentifier:(id)identifier uniqueIdentifier:(id)uniqueIdentifier displayIdentity:(id)identity;
- (id)_displayItemLayoutAttributesProvider;
- (id)_layoutStateForApplicationTransitionContext:(id)context;
- (id)_layoutStateForDisplayIdentity:(id)identity;
- (id)_mostRecentAppLayoutForBundleIdentifier:(id)identifier ignoringUniqueIdentifiers:(id)identifiers inMedusaOnStageManagerCapableDevice:(BOOL)device multitaskingSupported:(BOOL)supported;
- (id)_mostRecentAppLayoutMatchingAnyUniqueIdentifier:(id)identifier inMedusaOnStageManagerCapableDevice:(BOOL)device multitaskingSupported:(BOOL)supported;
- (id)_sceneIDIfAppLayoutContainsPrimarySceneIDForBundleIdentifier:(id)identifier layoutState:(id)state bundleIdentifier:(id)bundleIdentifier sceneSessionRole:(id)role;
- (id)_sceneManagerForDisplayIdentity:(id)identity;
- (id)_switcherControllerForDisplayIdentity:(id)identity;
- (id)_zOrderComparatorFor:(id)for;
- (id)defaultSceneIdentifierForBundleIdentifier:(id)identifier targetContentIdentifier:(id)contentIdentifier allowCanMatches:(BOOL)matches preferNewScene:(BOOL)scene visibleSceneIdentifiers:(id)identifiers excludingSceneIdentifiers:(id)sceneIdentifiers sceneSessionRole:(id)role preferredDisplay:(id)self0;
- (id)layoutStateForApplicationTransitionContext:(id)context;
- (id)primarySceneIdentifierForBundleIdentifier:(id)identifier sceneSessionRole:(id)role displayIdentity:(id)identity;
- (unint64_t)_autoLayoutOptionsForNewAppLayout:(id)layout previousAppLayout:(id)appLayout request:(id)request;
- (void)_updateSceneRelevancyManager:(id)manager forAppLayout:(id)layout applicationTransitionContext:(id)context elementIdentifiersToLayoutAttributes:(id)attributes interfaceOrientation:(int64_t)orientation layoutAttributesProvider:(id)provider layoutElements:(id)elements;
@end

@implementation SBMainDisplayLayoutStateManager

- (SBRecentAppLayouts)_recentAppLayouts
{
  v2 = +[SBMainSwitcherControllerCoordinator sharedInstance];
  _recentAppLayoutsController = [v2 _recentAppLayoutsController];

  return _recentAppLayoutsController;
}

+ (id)_initialLayoutStateWithDisplayOrdinal:(int64_t)ordinal isDisplayExternal:(BOOL)external
{
  v6 = objc_alloc([self _layoutStateClass]);
  LOBYTE(v11) = external;
  LOBYTE(v10) = 0;
  LOBYTE(v9) = 0;
  v7 = [v6 _initWithLayoutElements:0 interfaceOrientation:0 interfaceOrientationByLayoutElement:0 spaceConfiguration:0 elementIdentifiersToLayoutAttributes:MEMORY[0x277CBEC10] floatingConfiguration:0 unlockedEnvironmentMode:1 floatingSwitcherVisible:v9 centerConfiguration:0 centerEntityModal:v10 peekConfiguration:0 bundleIDShowingAppExpose:0 windowPickerRole:0 displayOrdinal:ordinal isDisplayExternal:v11];

  return v7;
}

- (id)layoutStateForApplicationTransitionContext:(id)context
{
  v5.receiver = self;
  v5.super_class = SBMainDisplayLayoutStateManager;
  v3 = [(SBLayoutStateManager *)&v5 layoutStateForApplicationTransitionContext:context];

  return v3;
}

- (id)defaultSceneIdentifierForBundleIdentifier:(id)identifier targetContentIdentifier:(id)contentIdentifier allowCanMatches:(BOOL)matches preferNewScene:(BOOL)scene visibleSceneIdentifiers:(id)identifiers excludingSceneIdentifiers:(id)sceneIdentifiers sceneSessionRole:(id)role preferredDisplay:(id)self0
{
  sceneCopy = scene;
  matchesCopy = matches;
  v107 = a2;
  v159 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  contentIdentifierCopy = contentIdentifier;
  identifiersCopy = identifiers;
  sceneIdentifiersCopy = sceneIdentifiers;
  roleCopy = role;
  displayCopy = display;
  selfCopy = self;
  _recentAppLayouts = [(SBMainDisplayLayoutStateManager *)self _recentAppLayouts];
  v144 = identifierCopy;
  v17 = [_recentAppLayouts recentsForBundleIdentifier:identifierCopy includingHiddenAppLayouts:0];
  v18 = [v17 count];
  v130 = contentIdentifierCopy;
  v133 = v18;
  if (contentIdentifierCopy || !v18)
  {
    v19 = [_recentAppLayouts recentsForBundleIdentifier:v144 includingHiddenAppLayouts:1];

    v17 = v19;
  }

  if (displayCopy)
  {
    v150[0] = MEMORY[0x277D85DD0];
    v150[1] = 3221225472;
    v150[2] = __216__SBMainDisplayLayoutStateManager_defaultSceneIdentifierForBundleIdentifier_targetContentIdentifier_allowCanMatches_preferNewScene_visibleSceneIdentifiers_excludingSceneIdentifiers_sceneSessionRole_preferredDisplay___block_invoke;
    v150[3] = &unk_2783A8CB8;
    v151 = displayCopy;
    v20 = [v17 bs_filter:v150];

    v17 = v20;
  }

  v148 = 0u;
  v149 = 0u;
  v146 = 0u;
  v147 = 0u;
  v111 = v17;
  v116 = [v111 countByEnumeratingWithState:&v146 objects:v158 count:16];
  if (v116)
  {
    v115 = 0;
    v22 = 0;
    v112 = !matchesCopy;
    v114 = *v147;
    v109 = 4;
    v110 = 1;
    v108 = 2;
    v134 = @"sceneSessionRole";
    v123 = @"activationConditions";
    *&v21 = 138543874;
    v117 = v21;
    *&v21 = 138543619;
    v104 = v21;
    *&v21 = 138543618;
    v113 = v21;
    while (1)
    {
      v23 = 0;
      do
      {
        if (*v147 != v114)
        {
          objc_enumerationMutation(v111);
        }

        v120 = v23;
        v24 = *(*(&v146 + 1) + 8 * v23);
        if (!v130 || ([MEMORY[0x277D75418] currentDevice], v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v25, "userInterfaceIdiom"), v25, (v26 & 0xFFFFFFFFFFFFFFFBLL) != 1))
        {
          isHidden = [v24 isHidden];
          if (isHidden)
          {
            isHidden = [(SBMainDisplayLayoutStateManager *)selfCopy _hasAppLayoutBeenUserKilledWithinThresholdToCreateNewScene:v24];
            if (isHidden)
            {
              goto LABEL_104;
            }
          }
        }

        v29 = SBLayoutRoleMax(isHidden, v28);
        v119 = &v104;
        MEMORY[0x28223BE20](v29);
        v31 = (&v104 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
        v32 = +[SBMainSwitcherControllerCoordinator sharedInstance];
        v33 = [v32 switcherControllerForAppLayout:v24];

        v121 = v33;
        windowManagementContext = [v33 windowManagementContext];
        if (![windowManagementContext baseStyle])
        {
          v118 = windowManagementContext;
          v122 = v22;
          *v31 = v110;
          v36 = 1;
LABEL_34:
          v48 = v133;
          v131 = 0;
          v139 = v24;
          while (2)
          {
            v49 = *v31++;
            v50 = [v24 itemForLayoutRole:{v49, v104}];
            v51 = v50;
            if (v50)
            {
              uniqueIdentifier = [v50 uniqueIdentifier];
              v53 = objc_msgSend_containsObject_(sceneIdentifiersCopy);
              v54 = objc_msgSend_containsObject_(identifiersCopy);
              v143 = v31;
              v141 = v54;
              if (v48)
              {
                isHidden2 = [v24 isHidden];
              }

              else
              {
                isHidden2 = 0;
              }

              _applicationController = [(SBMainDisplayLayoutStateManager *)selfCopy _applicationController];
              v56 = [_applicationController applicationWithBundleIdentifier:v144];

              _dataStore = [v56 _dataStore];
              uniqueIdentifier2 = [v51 uniqueIdentifier];
              v59 = [_dataStore sceneStoreForIdentifier:uniqueIdentifier2 creatingIfNecessary:0];

              v60 = [v59 objectForKey:v134];
              v61 = v60;
              if (!roleCopy || !v60 || [v60 isEqual:roleCopy])
              {
                v137 = v53;
                bundleIdentifier = [v51 bundleIdentifier];
                v63 = [v144 isEqualToString:bundleIdentifier];

                if (!v63)
                {
                  goto LABEL_95;
                }

                if (__sb__runningInSpringBoard())
                {
                  v64 = SBFEffectiveDeviceClass();
                  if (!v130 || v64 != 2)
                  {
                    goto LABEL_51;
                  }

LABEL_49:
                  v125 = v56;
                  v67 = [v59 objectForKey:v123];
                  v68 = MEMORY[0x277CCAAC8];
                  v69 = objc_opt_class();
                  v126 = v67;
                  v70 = [v68 unarchivedObjectOfClass:v69 fromData:v67 error:0];
                  v127 = v70;
                  if (v70)
                  {
                    v71 = v70;
                  }

                  else
                  {
                    v71 = objc_alloc_init(MEMORY[0x277D75948]);
                  }

                  v132 = v71;
                  v77 = v130;
                  v78 = +[SBFocusAppConfigurationContextMonitor sharedInstance];
                  v79 = [v78 targetContentIdentifierPrefixForBundleIdentifier:v144];

                  v56 = v125;
                  v128 = v79;
                  if (v79)
                  {
                    v80 = SBLogSceneResolution();
                    if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
                    {
                      v152 = v113;
                      v153 = v144;
                      v154 = 2114;
                      v155 = v128;
                      _os_log_impl(&dword_21ED4E000, v80, OS_LOG_TYPE_DEFAULT, "Found TCI Prefix for scene evaluation %{public}@:%{public}@", &v152, 0x16u);
                    }

                    v81 = [v128 stringByAppendingString:v77];

                    v82 = v81;
                  }

                  else
                  {
                    v82 = v77;
                  }

                  v83 = v132;
                  v145 = 0;
                  v84 = v82;
                  v85 = [v132 _suitabilityForTargetContentIdentifier:? errorString:?];
                  v129 = v145;
                  v132 = v83;
                  if (v85 != 2)
                  {
                    if (v85 != 1)
                    {
                      if (!v85)
                      {
                        v86 = SBLogSceneResolution();
                        if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
                        {
                          v152 = v117;
                          v153 = uniqueIdentifier;
                          v154 = 2114;
                          v155 = v127;
                          v156 = 2114;
                          v157 = v84;
                          v87 = v86;
                          v88 = "Scene is not suitable for activationConditions %{public}@:%{public}@ %{public}@";
                          goto LABEL_87;
                        }

LABEL_88:
                      }

                      v76 = v131;
                      if (v129)
                      {
                        v95 = SBLogSceneResolution();
                        if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
                        {
                          v152 = v104;
                          v153 = v144;
                          v154 = 2113;
                          v155 = v129;
                          _os_log_error_impl(&dword_21ED4E000, v95, OS_LOG_TYPE_ERROR, "error evaluating UISceneActivationConditions for %{public}@: %{private}@", &v152, 0x16u);
                        }
                      }

                      v75 = v126;
LABEL_94:

                      v131 = v76;
                      goto LABEL_95;
                    }

                    if (((v137 | v141 | v112 | isHidden2) & 1) == 0)
                    {
                      v89 = v122;
                      if (v122)
                      {
                        v90 = v122;
                      }

                      else
                      {
                        v90 = uniqueIdentifier;
                      }

                      v91 = v90;

                      v122 = v91;
                    }

                    v86 = SBLogSceneResolution();
                    if (!os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
                    {
                      goto LABEL_88;
                    }

                    v152 = v117;
                    v153 = uniqueIdentifier;
                    v154 = 2114;
                    v155 = v127;
                    v156 = 2114;
                    v157 = v84;
                    v87 = v86;
                    v88 = "Scene is suitable for activationConditions %{public}@:%{public}@ %{public}@";
LABEL_87:
                    _os_log_impl(&dword_21ED4E000, v87, OS_LOG_TYPE_DEFAULT, v88, &v152, 0x20u);
                    goto LABEL_88;
                  }

                  v92 = v115;
                  if ((v137 | v141))
                  {
                    if (!(v137 & 1 | ((v141 & 1) == 0)))
                    {
                      if (v115)
                      {
                        v93 = v115;
                      }

                      else
                      {
                        v93 = uniqueIdentifier;
                      }

                      v115 = v93;
                      goto LABEL_84;
                    }
                  }

                  else
                  {
                    v92 = v131;
                    if (v131)
                    {
                      v93 = v131;
                    }

                    else
                    {
                      v93 = uniqueIdentifier;
                    }

                    v131 = v93;
LABEL_84:
                    v94 = v93;
                  }

                  v86 = SBLogSceneResolution();
                  if (!os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
                  {
                    goto LABEL_88;
                  }

                  v152 = v117;
                  v153 = uniqueIdentifier;
                  v154 = 2114;
                  v155 = v127;
                  v156 = 2114;
                  v157 = v84;
                  v87 = v86;
                  v88 = "Scene is preferred for activationConditions %{public}@:%{public}@ %{public}@";
                  goto LABEL_87;
                }

                currentDevice = [MEMORY[0x277D75418] currentDevice];
                userInterfaceIdiom = [currentDevice userInterfaceIdiom];

                if (userInterfaceIdiom == 1 && v130)
                {
                  goto LABEL_49;
                }

LABEL_51:
                if (((v137 | v141 | sceneCopy | isHidden2) & 1) == 0)
                {
                  v72 = v131;
                  if (v131)
                  {
                    v73 = v131;
                  }

                  else
                  {
                    v73 = uniqueIdentifier;
                  }

                  v74 = v73;
                  v75 = v72;
                  v76 = v74;
                  goto LABEL_94;
                }

LABEL_95:
                v48 = v133;
              }

              v24 = v139;
              v31 = v143;
            }

            if (!--v36)
            {
              goto LABEL_100;
            }

            continue;
          }
        }

        if ([windowManagementContext isMedusaEnabled])
        {
          v118 = windowManagementContext;
          v122 = v22;
          v35 = v110;
          *v31 = v109;
          v31[1] = v35;
          v36 = 3;
          v31[2] = v108;
          goto LABEL_34;
        }

        if ([windowManagementContext isChamoisOrFlexibleWindowing])
        {
          v122 = v22;
          v118 = windowManagementContext;
          if (sceneCopy)
          {
            sceneCopy = 1;
          }

          else
          {
            v38 = [MEMORY[0x277CBEBC0] URLWithString:v130];
            sceneCopy = [v38 isFileURL];
          }

          v39 = v121;
          displayItemLayoutAttributesProvider = [v121 displayItemLayoutAttributesProvider];
          interfaceOrientation = [v39 interfaceOrientation];
          if ((interfaceOrientation - 1) < 2)
          {
            v42 = 1;
          }

          else
          {
            v42 = 2 * ((interfaceOrientation - 3) < 2);
          }

          v43 = [displayItemLayoutAttributesProvider lastInteractedDisplayItemsInAppLayout:v24 orientation:v42];

          v44 = [v43 count];
          v36 = v44;
          if (v44 >= v29)
          {
            v45 = v29;
          }

          else
          {
            v45 = v44;
          }

          if (v45 >= 1)
          {
            for (i = 0; i != v45; ++i)
            {
              v47 = [v43 objectAtIndex:i];
              v31[i] = [v24 layoutRoleForItem:v47];
            }
          }

          if (v36 >= 1)
          {
            goto LABEL_34;
          }

          v131 = 0;
LABEL_100:
          v22 = v122;
          windowManagementContext = v118;
        }

        else
        {
          currentHandler = [MEMORY[0x277CCA890] currentHandler];
          [currentHandler handleFailureInMethod:v107 object:selfCopy file:@"SBMainDisplayLayoutStateManager.m" lineNumber:148 description:@"Unexpected window management context"];

          v131 = 0;
        }

        if (v131)
        {
          goto LABEL_106;
        }

        v23 = v120 + 1;
      }

      while (v120 + 1 != v116);
      v116 = [v111 countByEnumeratingWithState:&v146 objects:v158 count:16];
      if (!v116)
      {
LABEL_104:
        v131 = 0;
        goto LABEL_106;
      }
    }
  }

  v115 = 0;
  v131 = 0;
  v22 = 0;
LABEL_106:

  if (_os_feature_enabled_impl())
  {
    if (sceneCopy)
    {
      v96 = SBLogSceneResolution();
      if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
      {
        v152 = 138543618;
        v153 = v130;
        v154 = 2114;
        v155 = v131;
        _os_log_impl(&dword_21ED4E000, v96, OS_LOG_TYPE_DEFAULT, "Mapping TCI to prefersScene %{public}@:%{public}@", &v152, 0x16u);
      }

      v97 = v131;
      v98 = v131;
      v99 = v115;
    }

    else
    {
      v99 = v115;
      if (v22)
      {
        v101 = v22;
      }

      else
      {
        v101 = v115;
      }

      v97 = v131;
      if (v131)
      {
        v98 = v131;
      }

      else
      {
        v98 = v101;
      }
    }
  }

  else
  {
    v99 = v115;
    if (v22)
    {
      v100 = v22;
    }

    else
    {
      v100 = v115;
    }

    v97 = v131;
    if (v131)
    {
      v98 = v131;
    }

    else
    {
      v98 = v100;
    }
  }

  v102 = v98;

  return v98;
}

uint64_t __216__SBMainDisplayLayoutStateManager_defaultSceneIdentifierForBundleIdentifier_targetContentIdentifier_allowCanMatches_preferNewScene_visibleSceneIdentifiers_excludingSceneIdentifiers_sceneSessionRole_preferredDisplay___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 preferredDisplayIdentity];
  v4 = [v2 isEqual:v3];

  return v4;
}

- (id)primarySceneIdentifierForBundleIdentifier:(id)identifier sceneSessionRole:(id)role displayIdentity:(id)identity
{
  v64 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  roleCopy = role;
  identityCopy = identity;
  v9 = [(SBMainDisplayLayoutStateManager *)self _layoutStateForDisplayIdentity:identityCopy];
  selfCopy = self;
  v10 = [(SBMainDisplayLayoutStateManager *)self _switcherControllerForDisplayIdentity:identityCopy];
  windowManagementContext = [v10 windowManagementContext];
  LODWORD(identity) = [windowManagementContext isFlexibleWindowingEnabled];
  v12 = SBPeekConfigurationIsValid([v9 peekConfiguration]) & (identity ^ 1);
  v48 = v9;
  [v9 appLayout];
  v49 = v13 = 0;
  if (v49 && (v12 & 1) == 0)
  {
    v13 = [(SBMainDisplayLayoutStateManager *)selfCopy _sceneIDIfAppLayoutContainsPrimarySceneIDForBundleIdentifier:v49 layoutState:v9 bundleIdentifier:identifierCopy sceneSessionRole:roleCopy];
  }

  floatingAppLayout = [v9 floatingAppLayout];
  v15 = floatingAppLayout;
  if (!v13)
  {
    v18 = floatingAppLayout ? v12 : 1;
    if ((v18 & 1) != 0 || ([(SBMainDisplayLayoutStateManager *)selfCopy _sceneIDIfAppLayoutContainsPrimarySceneIDForBundleIdentifier:floatingAppLayout layoutState:v9 bundleIdentifier:identifierCopy sceneSessionRole:roleCopy], (v13 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      _recentAppLayouts = [(SBMainDisplayLayoutStateManager *)selfCopy _recentAppLayouts];
      v20 = [_recentAppLayouts recentsForBundleIdentifier:identifierCopy includingHiddenAppLayouts:0];
      v46 = windowManagementContext;
      v47 = v10;
      if (![v20 count])
      {
        v21 = [_recentAppLayouts recentsForBundleIdentifier:identifierCopy includingHiddenAppLayouts:1];

        v20 = v21;
      }

      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v22 = v20;
      v23 = [v22 countByEnumeratingWithState:&v58 objects:v63 count:16];
      v50 = v15;
      if (v23)
      {
        v24 = v23;
        v25 = identityCopy;
        v26 = *v59;
        while (2)
        {
          for (i = 0; i != v24; ++i)
          {
            if (*v59 != v26)
            {
              objc_enumerationMutation(v22);
            }

            v28 = *(*(&v58 + 1) + 8 * i);
            if ([v28 isHidden])
            {
              v29 = [(SBMainDisplayLayoutStateManager *)selfCopy _hasAppLayoutBeenUserKilledWithinThresholdToCreateNewScene:v28];
            }

            else
            {
              v29 = 0;
            }

            if ([v49 isOrContainsAppLayout:v28])
            {
              v30 = 1;
            }

            else
            {
              v30 = [v50 isOrContainsAppLayout:v28];
            }

            if (((v29 | v12 & v30) & 1) == 0)
            {
              v31 = [(SBMainDisplayLayoutStateManager *)selfCopy _sceneIDIfAppLayoutContainsPrimarySceneIDForBundleIdentifier:v28 layoutState:v48 bundleIdentifier:identifierCopy sceneSessionRole:roleCopy];
              if (v31)
              {
                v13 = v31;
                goto LABEL_30;
              }
            }
          }

          v24 = [v22 countByEnumeratingWithState:&v58 objects:v63 count:16];
          if (v24)
          {
            continue;
          }

          break;
        }

        v13 = 0;
LABEL_30:
        identityCopy = v25;
        v15 = v50;
      }

      else
      {
        v13 = 0;
      }

      windowManagementContext = v46;
      v10 = v47;
      if (!((v13 != 0) | v12 & 1))
      {
        v56 = 0u;
        v57 = 0u;
        v54 = 0u;
        v55 = 0u;
        v45 = identityCopy;
        v32 = [(SBMainDisplayLayoutStateManager *)selfCopy _sceneManagerForDisplayIdentity:identityCopy];
        externalApplicationSceneHandles = [v32 externalApplicationSceneHandles];

        v34 = externalApplicationSceneHandles;
        v35 = [externalApplicationSceneHandles countByEnumeratingWithState:&v54 objects:v62 count:16];
        if (!v35)
        {
          v13 = 0;
          goto LABEL_48;
        }

        v36 = v35;
        v13 = 0;
        v37 = *v55;
        v38 = identifierCopy;
        while (1)
        {
          for (j = 0; j != v36; ++j)
          {
            if (*v55 != v37)
            {
              objc_enumerationMutation(v34);
            }

            v40 = *(*(&v54 + 1) + 8 * j);
            application = [v40 application];
            bundleIdentifier = [application bundleIdentifier];
            if (([bundleIdentifier isEqual:v38] & 1) == 0)
            {

              goto LABEL_42;
            }

            sceneIdentifier = [v40 sceneIdentifier];
            v44 = [(SBMainDisplayLayoutStateManager *)selfCopy _doesSceneIDSpecifyPrimaryScene:sceneIdentifier forApplicationIdentifier:v38 sceneSessionRole:roleCopy];

            if (v44)
            {
              [v40 sceneIdentifier];
              v13 = application = v13;
              v15 = v50;
              v38 = identifierCopy;
LABEL_42:

              continue;
            }

            v15 = v50;
            v38 = identifierCopy;
          }

          v36 = [v34 countByEnumeratingWithState:&v54 objects:v62 count:16];
          if (!v36)
          {
LABEL_48:

            identityCopy = v45;
            windowManagementContext = v46;
            v10 = v47;
            break;
          }
        }
      }
    }
  }

  v16 = v13;

  return v13;
}

- (BOOL)_doesSceneIDSpecifyPrimaryScene:(id)scene forApplicationIdentifier:(id)identifier sceneSessionRole:(id)role
{
  v38 = *MEMORY[0x277D85DE8];
  sceneCopy = scene;
  identifierCopy = identifier;
  roleCopy = role;
  _applicationController = [(SBMainDisplayLayoutStateManager *)self _applicationController];
  v12 = [_applicationController applicationWithBundleIdentifier:identifierCopy];

  _dataStore = [v12 _dataStore];
  v14 = [_dataStore sceneStoreForIdentifier:sceneCopy creatingIfNecessary:0];

  v15 = [v14 objectForKey:@"activationConditions"];
  v16 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v15 error:0];
  if (!v16)
  {
    v21 = 1;
    if (!roleCopy)
    {
      goto LABEL_23;
    }

    goto LABEL_18;
  }

  v30 = sceneCopy;
  v17 = +[SBFocusAppConfigurationContextMonitor sharedInstance];
  v18 = [v17 targetContentIdentifierPrefixForBundleIdentifier:identifierCopy];

  v29 = v12;
  if (v18)
  {
    v19 = v18;
    v20 = SBLogSceneResolution();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v33 = identifierCopy;
      v34 = 2114;
      v35 = v19;
      _os_log_impl(&dword_21ED4E000, v20, OS_LOG_TYPE_DEFAULT, "Found TCI Prefix for primary scene evaluation %{public}@:%{public}@", buf, 0x16u);
    }
  }

  else
  {
    v19 = &stru_283094718;
  }

  v31 = 0;
  v22 = [v16 _suitabilityForTargetContentIdentifier:v19 errorString:&v31];
  v23 = v31;
  v21 = v22 != 0;
  if (!v22)
  {
    v24 = SBLogSceneResolution();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v33 = identifierCopy;
      v34 = 2114;
      v35 = v30;
      v36 = 2114;
      v37 = v16;
      _os_log_impl(&dword_21ED4E000, v24, OS_LOG_TYPE_DEFAULT, "Scene is not suitable for primary role %{public}@:%{public}@ %{public}@", buf, 0x20u);
    }
  }

  if (v23)
  {
    v25 = SBLogSceneResolution();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [SBMainDisplayLayoutStateManager _doesSceneIDSpecifyPrimaryScene:identifierCopy forApplicationIdentifier:v23 sceneSessionRole:v25];
    }
  }

  v12 = v29;
  sceneCopy = v30;
  if (roleCopy)
  {
LABEL_18:
    if (v21)
    {
      v26 = [v14 objectForKey:@"sceneSessionRole"];
      v27 = v26;
      if (v26)
      {
        LOBYTE(v21) = [v26 isEqualToString:roleCopy];
      }

      else
      {
        LOBYTE(v21) = 1;
      }
    }
  }

LABEL_23:

  return v21;
}

- (id)_sceneIDIfAppLayoutContainsPrimarySceneIDForBundleIdentifier:(id)identifier layoutState:(id)state bundleIdentifier:(id)bundleIdentifier sceneSessionRole:(id)role
{
  bundleIdentifierCopy = bundleIdentifier;
  roleCopy = role;
  stateCopy = state;
  identifierCopy = identifier;
  _displayItemLayoutAttributesProvider = [(SBMainDisplayLayoutStateManager *)self _displayItemLayoutAttributesProvider];
  interfaceOrientation = [stateCopy interfaceOrientation];

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __142__SBMainDisplayLayoutStateManager__sceneIDIfAppLayoutContainsPrimarySceneIDForBundleIdentifier_layoutState_bundleIdentifier_sceneSessionRole___block_invoke;
  v22[3] = &unk_2783B9418;
  if ((interfaceOrientation - 1) < 2)
  {
    v16 = 1;
  }

  else
  {
    v16 = 2 * ((interfaceOrientation - 3) < 2);
  }

  v23 = bundleIdentifierCopy;
  selfCopy = self;
  v25 = roleCopy;
  v17 = roleCopy;
  v18 = bundleIdentifierCopy;
  v19 = [_displayItemLayoutAttributesProvider lastInteractedDisplayItemInAppLayout:identifierCopy orientation:v16 passingTest:v22];

  uniqueIdentifier = [v19 uniqueIdentifier];

  return uniqueIdentifier;
}

uint64_t __142__SBMainDisplayLayoutStateManager__sceneIDIfAppLayoutContainsPrimarySceneIDForBundleIdentifier_layoutState_bundleIdentifier_sceneSessionRole___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = [v3 bundleIdentifier];
  if ([v4 isEqualToString:v5])
  {
    v6 = a1[5];
    v7 = [v3 uniqueIdentifier];
    v8 = [v6 _doesSceneIDSpecifyPrimaryScene:v7 forApplicationIdentifier:a1[4] sceneSessionRole:a1[6]];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_mostRecentAppLayoutMatchingAnyUniqueIdentifier:(id)identifier inMedusaOnStageManagerCapableDevice:(BOOL)device multitaskingSupported:(BOOL)supported
{
  supportedCopy = supported;
  deviceCopy = device;
  v67 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  selfCopy = self;
  _recentAppLayouts = [(SBMainDisplayLayoutStateManager *)self _recentAppLayouts];
  v9 = [_recentAppLayouts recentsIncludingHiddenAppLayouts:1];

  v10 = [v9 countByEnumeratingWithState:&v59 objects:v66 count:16];
  if (v10)
  {
    v11 = v10;
    v38 = supportedCopy;
    v12 = *v60;
    v46 = v9;
    v40 = *v60;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v60 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v59 + 1) + 8 * i);
        v55 = 0u;
        v56 = 0u;
        v57 = 0u;
        v58 = 0u;
        allItems = [v14 allItems];
        v16 = [allItems countByEnumeratingWithState:&v55 objects:v65 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v56;
          while (2)
          {
            for (j = 0; j != v17; ++j)
            {
              if (*v56 != v18)
              {
                objc_enumerationMutation(allItems);
              }

              uniqueIdentifier = [*(*(&v55 + 1) + 8 * j) uniqueIdentifier];
              v21 = objc_msgSend_containsObject_(identifierCopy);

              if (v21)
              {

                v22 = v14;
                if (deviceCopy)
                {
                  _applicationController = [(SBMainDisplayLayoutStateManager *)selfCopy _applicationController];
                  v24 = [v22 appLayoutsBySplittingMedusaIncompatibleItemsWithApplicationController:_applicationController multitaskingSupported:v38];

                  if (v24)
                  {
                    v53 = 0u;
                    v54 = 0u;
                    v51 = 0u;
                    v52 = 0u;
                    v25 = v24;
                    v41 = [v25 countByEnumeratingWithState:&v51 objects:v64 count:16];
                    if (v41)
                    {
                      v26 = *v52;
                      v45 = v25;
                      v39 = *v52;
                      do
                      {
                        for (k = 0; k != v41; ++k)
                        {
                          if (*v52 != v26)
                          {
                            objc_enumerationMutation(v25);
                          }

                          v28 = *(*(&v51 + 1) + 8 * k);
                          v47 = 0u;
                          v48 = 0u;
                          v49 = 0u;
                          v50 = 0u;
                          v43 = v28;
                          allItems2 = [v28 allItems];
                          v30 = [allItems2 countByEnumeratingWithState:&v47 objects:v63 count:16];
                          if (v30)
                          {
                            v31 = v30;
                            v32 = *v48;
                            while (2)
                            {
                              for (m = 0; m != v31; ++m)
                              {
                                if (*v48 != v32)
                                {
                                  objc_enumerationMutation(allItems2);
                                }

                                uniqueIdentifier2 = [*(*(&v47 + 1) + 8 * m) uniqueIdentifier];
                                v35 = objc_msgSend_containsObject_(identifierCopy);

                                if (v35)
                                {

                                  v36 = v43;
                                  v22 = v36;
                                  v25 = v45;
                                  v9 = v46;
                                  goto LABEL_38;
                                }
                              }

                              v31 = [allItems2 countByEnumeratingWithState:&v47 objects:v63 count:16];
                              if (v31)
                              {
                                continue;
                              }

                              break;
                            }
                          }

                          v26 = v39;
                          v25 = v45;
                        }

                        v41 = [v45 countByEnumeratingWithState:&v51 objects:v64 count:16];
                      }

                      while (v41);
                    }

                    v9 = v46;
LABEL_38:
                  }

                  else
                  {
                    v9 = v46;
                  }
                }

                else
                {
                  v9 = v46;
                }

                goto LABEL_41;
              }
            }

            v17 = [allItems countByEnumeratingWithState:&v55 objects:v65 count:16];
            if (v17)
            {
              continue;
            }

            break;
          }
        }

        v9 = v46;
        v12 = v40;
      }

      v11 = [v46 countByEnumeratingWithState:&v59 objects:v66 count:16];
      v22 = 0;
    }

    while (v11);
  }

  else
  {
    v22 = 0;
  }

LABEL_41:

  return v22;
}

- (id)_mostRecentAppLayoutForBundleIdentifier:(id)identifier ignoringUniqueIdentifiers:(id)identifiers inMedusaOnStageManagerCapableDevice:(BOOL)device multitaskingSupported:(BOOL)supported
{
  supportedCopy = supported;
  deviceCopy = device;
  v77 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  identifiersCopy = identifiers;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  _recentAppLayouts = [(SBMainDisplayLayoutStateManager *)self _recentAppLayouts];
  v12 = [_recentAppLayouts recentsIncludingHiddenAppLayouts:0];

  v50 = [v12 countByEnumeratingWithState:&v69 objects:v76 count:16];
  if (v50)
  {
    selfCopy = self;
    v46 = supportedCopy;
    v13 = *v70;
    v56 = v12;
    v48 = *v70;
    do
    {
      for (i = 0; i != v50; ++i)
      {
        if (*v70 != v13)
        {
          objc_enumerationMutation(v12);
        }

        v15 = *(*(&v69 + 1) + 8 * i);
        v65 = 0u;
        v66 = 0u;
        v67 = 0u;
        v68 = 0u;
        v54 = v15;
        allItems = [v15 allItems];
        v17 = [allItems countByEnumeratingWithState:&v65 objects:v75 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v66;
          while (2)
          {
            for (j = 0; j != v18; ++j)
            {
              if (*v66 != v19)
              {
                objc_enumerationMutation(allItems);
              }

              v21 = *(*(&v65 + 1) + 8 * j);
              bundleIdentifier = [v21 bundleIdentifier];
              if ([identifierCopy isEqualToString:bundleIdentifier])
              {
                uniqueIdentifier = [v21 uniqueIdentifier];
                v24 = objc_msgSend_containsObject_(identifiersCopy);

                if (!v24)
                {

                  v26 = v54;
                  v25 = v26;
                  if (deviceCopy)
                  {
                    _applicationController = [(SBMainDisplayLayoutStateManager *)selfCopy _applicationController];
                    v28 = [v25 appLayoutsBySplittingMedusaIncompatibleItemsWithApplicationController:_applicationController multitaskingSupported:v46];

                    v12 = v56;
                    if (v28)
                    {
                      v63 = 0u;
                      v64 = 0u;
                      v61 = 0u;
                      v62 = 0u;
                      v29 = v28;
                      v47 = [v29 countByEnumeratingWithState:&v61 objects:v74 count:16];
                      if (v47)
                      {
                        v30 = *v62;
                        v53 = v29;
                        v55 = v28;
                        v45 = *v62;
                        do
                        {
                          v31 = 0;
                          do
                          {
                            if (*v62 != v30)
                            {
                              objc_enumerationMutation(v29);
                            }

                            v32 = *(*(&v61 + 1) + 8 * v31);
                            v57 = 0u;
                            v58 = 0u;
                            v59 = 0u;
                            v60 = 0u;
                            v49 = v31;
                            v51 = v32;
                            allItems2 = [v32 allItems];
                            v34 = [allItems2 countByEnumeratingWithState:&v57 objects:v73 count:16];
                            if (v34)
                            {
                              v35 = v34;
                              v36 = *v58;
                              do
                              {
                                for (k = 0; k != v35; ++k)
                                {
                                  if (*v58 != v36)
                                  {
                                    objc_enumerationMutation(allItems2);
                                  }

                                  v38 = *(*(&v57 + 1) + 8 * k);
                                  bundleIdentifier2 = [v38 bundleIdentifier];
                                  if ([identifierCopy isEqualToString:bundleIdentifier2])
                                  {
                                    uniqueIdentifier2 = [v38 uniqueIdentifier];
                                    v41 = objc_msgSend_containsObject_(identifiersCopy);

                                    if ((v41 & 1) == 0)
                                    {

                                      v42 = v51;
                                      v25 = v42;
                                      v28 = v55;
                                      v12 = v56;
                                      v29 = v53;
                                      goto LABEL_43;
                                    }
                                  }

                                  else
                                  {
                                  }
                                }

                                v35 = [allItems2 countByEnumeratingWithState:&v57 objects:v73 count:16];
                              }

                              while (v35);
                            }

                            v31 = v49 + 1;
                            v28 = v55;
                            v12 = v56;
                            v29 = v53;
                            v30 = v45;
                          }

                          while (v49 + 1 != v47);
                          v47 = [v53 countByEnumeratingWithState:&v61 objects:v74 count:16];
                        }

                        while (v47);
                      }

LABEL_43:
                    }
                  }

                  else
                  {
                    v12 = v56;
                  }

                  goto LABEL_45;
                }
              }

              else
              {
              }
            }

            v18 = [allItems countByEnumeratingWithState:&v65 objects:v75 count:16];
            if (v18)
            {
              continue;
            }

            break;
          }
        }

        v13 = v48;
        v12 = v56;
      }

      v25 = 0;
      v50 = [v56 countByEnumeratingWithState:&v69 objects:v76 count:16];
    }

    while (v50);
  }

  else
  {
    v25 = 0;
  }

LABEL_45:

  return v25;
}

- (id)_zOrderComparatorFor:(id)for
{
  forCopy = for;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__SBMainDisplayLayoutStateManager__zOrderComparatorFor___block_invoke;
  v7[3] = &unk_2783B9CF8;
  v8 = forCopy;
  v4 = forCopy;
  v5 = MEMORY[0x223D6F7F0](v7);

  return v5;
}

uint64_t __56__SBMainDisplayLayoutStateManager__zOrderComparatorFor___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [a2 uniqueIdentifier];
  v8 = [v5 objectForKey:v7];

  v9 = *(a1 + 32);
  v10 = [v6 uniqueIdentifier];

  v11 = [v9 objectForKey:v10];

  v12 = [(SBHomeScreenConfigurationServer *)v8 queue];
  v13 = [(SBHomeScreenConfigurationServer *)v11 queue];
  [(SBDisplayItemLayoutAttributes *)v8 slideOverConfiguration];
  IsValid = SBDisplayItemSlideOverConfigurationIsValid(v19);
  [(SBDisplayItemLayoutAttributes *)v11 slideOverConfiguration];
  v15 = SBDisplayItemSlideOverConfigurationIsValid(v19);
  if (!IsValid || v15)
  {
    v17 = -1;
    if (v12 <= v13)
    {
      v17 = v12 < v13;
    }

    if (IsValid & 1 | ((v15 & 1) == 0))
    {
      v16 = v17;
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = -1;
  }

  return v16;
}

- (unint64_t)_autoLayoutOptionsForNewAppLayout:(id)layout previousAppLayout:(id)appLayout request:(id)request
{
  layoutCopy = layout;
  appLayoutCopy = appLayout;
  requestCopy = request;
  if ([requestCopy source] != 3 && objc_msgSend(requestCopy, "source") != 63)
  {
    goto LABEL_6;
  }

  allItems = [layoutCopy allItems];
  v11 = [allItems count];
  allItems2 = [appLayoutCopy allItems];
  if (v11 <= [allItems2 count])
  {

LABEL_6:
    v14 = 0;
    goto LABEL_7;
  }

  v13 = [layoutCopy containsAnyItemFromAppLayout:appLayoutCopy];

  v14 = v13 & 1;
LABEL_7:

  return v14;
}

- (void)_updateSceneRelevancyManager:(id)manager forAppLayout:(id)layout applicationTransitionContext:(id)context elementIdentifiersToLayoutAttributes:(id)attributes interfaceOrientation:(int64_t)orientation layoutAttributesProvider:(id)provider layoutElements:(id)elements
{
  v58 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  layoutCopy = layout;
  contextCopy = context;
  attributesCopy = attributes;
  providerCopy = provider;
  elementsCopy = elements;
  v42 = attributesCopy;
  v19 = [(SBMainDisplayLayoutStateManager *)self _zOrderComparatorFor:attributesCopy];
  v41 = elementsCopy;
  bs_array = [elementsCopy bs_array];
  v40 = v19;
  v21 = [bs_array sortedArrayUsingComparator:v19];

  v22 = [v21 count];
  v48 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:5 valueOptions:0 capacity:v22];
  v52 = [MEMORY[0x277CBEB18] arrayWithCapacity:v22];
  v45 = contextCopy;
  displayIdentity = [contextCopy displayIdentity];
  v24 = [(SBMainDisplayLayoutStateManager *)self _switcherControllerForDisplayIdentity:displayIdentity];

  v47 = v24;
  v50 = layoutCopy;
  v46 = [v24 _autoLayoutSpaceForAppLayout:layoutCopy];
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = v21;
  v25 = [obj countByEnumeratingWithState:&v53 objects:v57 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = 0;
    v28 = *v54;
    if ((orientation - 1) < 2)
    {
      v29 = 1;
    }

    else
    {
      v29 = 2 * ((orientation - 3) < 2);
    }

    v44 = v29;
    v30 = v45;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v54 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v32 = [v30 entityForLayoutRole:{objc_msgSend(*(*(&v53 + 1) + 8 * i), "layoutRole")}];
        deviceApplicationSceneEntity = [v32 deviceApplicationSceneEntity];
        if (deviceApplicationSceneEntity)
        {
          [v52 addObject:deviceApplicationSceneEntity];
          displayItemRepresentation = [deviceApplicationSceneEntity displayItemRepresentation];
          if (displayItemRepresentation)
          {
            v35 = [providerCopy layoutAttributesForDisplayItem:displayItemRepresentation inAppLayout:v50 displayOrdinal:objc_msgSend(v50 orientation:{"preferredDisplayOrdinal"), v44}];
            v36 = [v46 flexibleAutoLayoutItemForDisplayItem:displayItemRepresentation];
            sceneRelevancyHint = [v36 sceneRelevancyHint];

            v38 = [MEMORY[0x277CCABB0] numberWithInteger:sceneRelevancyHint];
            [v48 setObject:v38 forKey:deviceApplicationSceneEntity];

            if ([v47 _isDisplayItemFullScreen:displayItemRepresentation preferredAttributes:v35])
            {
              v39 = v27 == 0;
            }

            else
            {
              v39 = 0;
            }

            if (v39)
            {
              v27 = deviceApplicationSceneEntity;
            }

            v30 = v45;
          }
        }
      }

      v26 = [obj countByEnumeratingWithState:&v53 objects:v57 count:16];
    }

    while (v26);
  }

  else
  {
    v27 = 0;
    v30 = v45;
  }

  [managerCopy configureWithZOrderedDeviceApplicationSceneEntities:v52 deviceApplicationSceneEntitiesToOcclusionStates:v48 firstMaximizedDeviceApplicationSceneEntity:v27 isStageInPeek:{SBPeekConfigurationIsValid(objc_msgSend(v30, "requestedPeekConfiguration"))}];
}

- (id)_layoutStateForApplicationTransitionContext:(id)context
{
  v3 = MEMORY[0x28223BE20](self);
  v1027 = v4;
  v1053 = v3;
  v1264 = *MEMORY[0x277D85DE8];
  v1039 = v5;
  request = [v1039 request];
  source = [request source];
  rect_16 = [v1039 previousLayoutState];
  displayIdentity = [request displayIdentity];
  rect_24 = [v1053 _switcherControllerForDisplayIdentity:displayIdentity];
  isBackground = [v1039 isBackground];
  isContingencyPlan = [v1039 isContingencyPlan];
  displayItemLayoutAttributesProvider = [rect_24 displayItemLayoutAttributesProvider];
  windowManagementContext = [rect_24 windowManagementContext];
  isChamoisOrFlexibleWindowing = [windowManagementContext isChamoisOrFlexibleWindowing];
  isFlexibleWindowingEnabled = [windowManagementContext isFlexibleWindowingEnabled];
  isAutomaticStageCreationEnabled = [windowManagementContext isAutomaticStageCreationEnabled];
  backgroundNethermostWindows = [rect_24 backgroundNethermostWindows];
  v8 = backgroundNethermostWindows;
  v953 = SBLayoutSupportsManyForegroundWindows(backgroundNethermostWindows, v9);
  restoresPreviouslyOpenWindows = [windowManagementContext restoresPreviouslyOpenWindows];
  v960 = [MEMORY[0x277CBEB98] set];
  v952 = v8 & (isBackground ^ 1);
  if (v952)
  {
    entities = [v1039 entities];
    [entities enumerateObjectsUsingBlock:&__block_literal_global_27];

    previousEntities = [v1039 previousEntities];
    [previousEntities enumerateObjectsUsingBlock:&__block_literal_global_29_1];
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  _desktopSpaceItems = [rect_24 _desktopSpaceItems];
  if (isBackground)
  {
    v12 = [v1039 applicationSceneEntityForLayoutRole:4];
    v1057 = rect_16;
    if (v12)
    {
      activationSettings = [v12 activationSettings];
      if ([activationSettings _settingsAreValidToMoveContentToNewScene])
      {
        v1040 = [SBMainDisplayLayoutState alloc];
        elements = [v1057 elements];
        spaceConfiguration = [v1057 spaceConfiguration];
        elementIdentifiersToLayoutAttributes = [v1057 elementIdentifiersToLayoutAttributes];
        floatingConfiguration = [v1057 floatingConfiguration];
        unlockedEnvironmentMode = [v1057 unlockedEnvironmentMode];
        isFloatingSwitcherVisible = [v1057 isFloatingSwitcherVisible];
        peekConfiguration = [v1057 peekConfiguration];
        bundleIDShowingAppExpose = [v1057 bundleIDShowingAppExpose];
        windowPickerRole = [v1057 windowPickerRole];
        displayOrdinal = [v1057 displayOrdinal];
        LOBYTE(v910) = [v1057 isDisplayExternal];
        LOBYTE(v907) = 1;
        v21 = [(SBMainDisplayLayoutState *)v1040 _initWithLayoutElements:elements spaceConfiguration:spaceConfiguration elementIdentifiersToLayoutAttributes:elementIdentifiersToLayoutAttributes floatingConfiguration:floatingConfiguration unlockedEnvironmentMode:unlockedEnvironmentMode floatingSwitcherVisible:isFloatingSwitcherVisible centerConfiguration:1 centerEntityModal:v907 peekConfiguration:peekConfiguration bundleIDShowingAppExpose:bundleIDShowingAppExpose windowPickerRole:windowPickerRole displayOrdinal:displayOrdinal isDisplayExternal:v910];

        v1057 = v21;
      }
    }

    goto LABEL_1108;
  }

  if (!((source != 14) | isContingencyPlan & 1))
  {
    v1057 = [[SBMainDisplayLayoutState alloc] _initWithLayoutState:rect_16];
    v1080 = 0u;
    v1081 = 0u;
    v1082 = 0u;
    v1083 = 0u;
    previousEntities2 = [v1039 previousEntities];
    v25 = [previousEntities2 countByEnumeratingWithState:&v1080 objects:v1243 count:16];
    if (v25)
    {
      v26 = *v1081;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v1081 != v26)
          {
            objc_enumerationMutation(previousEntities2);
          }

          [v1039 setEntity:*(*(&v1080 + 1) + 8 * i) forLayoutRole:{objc_msgSend(*(*(&v1080 + 1) + 8 * i), "layoutRole")}];
        }

        v25 = [previousEntities2 countByEnumeratingWithState:&v1080 objects:v1243 count:16];
      }

      while (v25);
    }

    goto LABEL_1108;
  }

  displayIdentity2 = [request displayIdentity];
  windowScene = [rect_24 windowScene];
  supportsMultitasking = [windowScene supportsMultitasking];

  baseStyle = [windowManagementContext baseStyle];
  if ([windowManagementContext isMedusaEnabled])
  {
    v1004 = SBFIsChamoisWindowingUIAvailable();
  }

  else
  {
    v1004 = 0;
  }

  activatingEntity = [v1039 activatingEntity];
  v29 = [v1039 entityForLayoutRole:?];
  v30 = [v1039 entityForLayoutRole:?];
  v31 = [v1039 entityForLayoutRole:?];
  v32 = [v1039 entityForLayoutRole:?];
  if (!activatingEntity && v29 && !v30 && !v31)
  {
    activatingEntity = v29;

    v29 = 0;
  }

  v946 = activatingEntity;
  v33 = v29;
  v34 = v30;
  v35 = v31;
  v36 = v32;
  rect = [v1039 requestedSpaceConfiguration];
  requestedCenterConfiguration = [v1039 requestedCenterConfiguration];
  requestedFloatingConfiguration = [v1039 requestedFloatingConfiguration];
  requestedPeekConfiguration = [v1039 requestedPeekConfiguration];
  requestedUnlockedEnvironmentMode = [v1039 requestedUnlockedEnvironmentMode];
  [v1039 requestedFloatingSwitcherVisible];
  [v1039 requestedCenterEntityModal];
  rect_8 = [v1039 requestedAppExposeBundleID];
  requestedWindowPickerRole = [v1039 requestedWindowPickerRole];
  v920 = [v1039 previousEntityForLayoutRole:1];
  v917 = [v1039 previousEntityForLayoutRole:2];
  v918 = [v1039 previousEntityForLayoutRole:3];
  v916 = [v1039 previousEntityForLayoutRole:4];
  interfaceOrientation = [rect_16 interfaceOrientation];
  spaceConfiguration2 = [rect_16 spaceConfiguration];
  floatingConfiguration2 = [rect_16 floatingConfiguration];
  centerConfiguration = [rect_16 centerConfiguration];
  peekConfiguration2 = [rect_16 peekConfiguration];
  unlockedEnvironmentMode2 = [rect_16 unlockedEnvironmentMode];
  v1233[0] = MEMORY[0x277D85DD0];
  v1233[1] = 3221225472;
  v1233[2] = __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_4;
  v1233[3] = &unk_2783B9D60;
  v1002 = v1039;
  v1234 = v1002;
  v930 = v33;
  v1235 = v930;
  v931 = v34;
  v1236 = v931;
  v933 = v35;
  v1237 = v933;
  v928 = v36;
  v1238 = v928;
  v929 = MEMORY[0x223D6F7F0](v1233);
  entitiesWithRemovalContexts = [v1002 entitiesWithRemovalContexts];
  v941 = [entitiesWithRemovalContexts bs_compactMap:&__block_literal_global_35_1];

  itemsCrossingToOtherDisplay = [v1002 itemsCrossingToOtherDisplay];
  minimizingDisplayItem = [v1002 minimizingDisplayItem];
  [rect_24 _slideOverDisplayItem];
  v1227 = 0;
  v1228 = &v1227;
  v1229 = 0x3032000000;
  v1230 = __Block_byref_object_copy__77;
  v912 = v1231 = __Block_byref_object_dispose__77;
  v1232 = v912;
  if ([request isCrossingDisplays])
  {
    entities2 = [v1002 entities];
    v39 = [entities2 objectsPassingTest:&__block_literal_global_39_2];

    v1226 = 0u;
    v1225 = 0u;
    v1224 = 0u;
    v1223 = 0u;
    v40 = v39;
    v41 = [v40 countByEnumeratingWithState:&v1223 objects:v1261 count:16];
    if (v41)
    {
      v42 = *v1224;
      while (2)
      {
        for (j = 0; j != v41; ++j)
        {
          if (*v1224 != v42)
          {
            objc_enumerationMutation(v40);
          }

          v44 = [SBDisplayItem displayItemForWorkspaceEntity:*(*(&v1223 + 1) + 8 * j)];
          if (v44)
          {
            appLayout = [rect_16 appLayout];
            v46 = [appLayout containsItem:v44];

            if ((v46 & 1) == 0)
            {
              uniqueIdentifier = [v44 uniqueIdentifier];
              requestedEntityIdentifierToLayoutAttributes = [v1002 requestedEntityIdentifierToLayoutAttributes];
              v49 = [requestedEntityIdentifierToLayoutAttributes objectForKey:uniqueIdentifier];

              memset(&v1262, 0, 40);
              switcherCoordinator = [rect_24 switcherCoordinator];
              v51 = switcherCoordinator;
              if (switcherCoordinator)
              {
                objc_msgSend_slideOverConfigurationOnAnySwitcherForDisplayItem_(switcherCoordinator);
              }

              else
              {
                memset(&v1262, 0, 40);
              }

              *&v1239.a = *&v1262.a;
              *&v1239.c = *&v1262.c;
              v1239.tx = v1262.tx;
              if (SBDisplayItemSlideOverConfigurationIsValid(&v1239))
              {
                [(SBDisplayItemLayoutAttributes *)v49 slideOverConfiguration];
                if ((SBDisplayItemSlideOverConfigurationIsValid(&v1239) & 1) == 0)
                {
                  *&v1239.a = *&v1262.a;
                  *&v1239.c = *&v1262.c;
                  v1239.tx = v1262.tx;
                  v52 = [SBDisplayItemLayoutAttributes attributesByModifyingSlideOverConfiguration:v49];

                  v53 = [v1002 entityForIdentifier:uniqueIdentifier];
                  [v1002 setRequestedLayoutAttributes:v52 forEntity:v53];

                  objc_storeStrong(v1228 + 5, v44);
                  goto LABEL_46;
                }
              }

              [(SBDisplayItemLayoutAttributes *)v49 slideOverConfiguration];
              if (SBDisplayItemSlideOverConfigurationIsValid(&v1239))
              {
                objc_storeStrong(v1228 + 5, v44);
              }
            }
          }
        }

        v41 = [v40 countByEnumeratingWithState:&v1223 objects:v1261 count:16];
        if (v41)
        {
          continue;
        }

        break;
      }
    }

LABEL_46:
  }

  if (v1228[5] && ([v941 count] && (objc_msgSend_containsObject_(v941) & 1) != 0 || objc_msgSend(itemsCrossingToOtherDisplay, "count") && objc_msgSend_containsObject_(itemsCrossingToOtherDisplay)))
  {
    v54 = v1228[5];
    v1228[5] = 0;
  }

  v951 = objc_opt_new();
  if ([v941 count])
  {
    [v951 addObjectsFromArray:v941];
  }

  if ([itemsCrossingToOtherDisplay count])
  {
    [v951 unionSet:itemsCrossingToOtherDisplay];
  }

  [v951 bs_safeAddObject:minimizingDisplayItem];
  if ([v951 count])
  {
    v1222 = 0u;
    v1221 = 0u;
    v1220 = 0u;
    v1219 = 0u;
    v55 = v951;
    v56 = [v55 countByEnumeratingWithState:&v1219 objects:v1260 count:16];
    if (!v56)
    {
LABEL_72:

      goto LABEL_73;
    }

    v57 = 0;
    v58 = *v1220;
    do
    {
      for (k = 0; k != v56; ++k)
      {
        if (*v1220 != v58)
        {
          objc_enumerationMutation(v55);
        }

        v60 = *(*(&v1219 + 1) + 8 * k);
        if (v60 && objc_msgSend_containsObject_(_desktopSpaceItems))
        {
          if (!v57)
          {
            v57 = [_desktopSpaceItems mutableCopy];
          }

          [v57 removeObject:v60];
        }
      }

      v56 = [v55 countByEnumeratingWithState:&v1219 objects:v1260 count:16];
    }

    while (v56);

    if (v57)
    {
      v55 = v57;

      _desktopSpaceItems = v55;
      goto LABEL_72;
    }
  }

LABEL_73:
  if (v1228[5])
  {
    _displayItemLayoutAttributesProvider = [v1053 _displayItemLayoutAttributesProvider];
    v62 = v1228[5];
    appLayout2 = [rect_16 appLayout];
    displayOrdinal2 = [rect_16 displayOrdinal];
    interfaceOrientation2 = [rect_16 interfaceOrientation];
    if ((interfaceOrientation2 - 1) < 2)
    {
      v66 = 1;
    }

    else
    {
      v66 = 2 * ((interfaceOrientation2 - 3) < 2);
    }

    v67 = [_displayItemLayoutAttributesProvider layoutAttributesForDisplayItem:v62 inAppLayout:appLayout2 displayOrdinal:displayOrdinal2 orientation:v66];
    [(SBDisplayItemLayoutAttributes *)v67 slideOverConfiguration];
    v68 = v1218[33];

    if (v68)
    {
      v948 = 1;
    }

    else
    {
      requestedEntityIdentifierToLayoutAttributes2 = [v1002 requestedEntityIdentifierToLayoutAttributes];
      uniqueIdentifier2 = [v1228[5] uniqueIdentifier];
      v71 = [requestedEntityIdentifierToLayoutAttributes2 objectForKey:uniqueIdentifier2];

      if (v71)
      {
        [(SBDisplayItemLayoutAttributes *)v71 slideOverConfiguration];
        v948 = v1217[33];
      }

      else
      {
        v948 = 0;
      }
    }
  }

  else
  {
    v948 = 0;
  }

  if (!supportsMultitasking)
  {

    v73 = v930;
    if (!v930)
    {
      v73 = v946;
      if (!v73)
      {
        v73 = +[(SBWorkspaceEntity *)SBPreviousWorkspaceEntity];
        if (!v73)
        {
          currentHandler = [MEMORY[0x277CCA890] currentHandler];
          [currentHandler handleFailureInMethod:v1027 object:v1053 file:@"SBMainDisplayLayoutStateManager.m" lineNumber:1856 description:@"Primary workspace entity may not be nil at this point!"];

          v73 = 0;
        }
      }
    }

    v1157[0] = MEMORY[0x277D85DD0];
    v1157[1] = 3221225472;
    v1157[2] = __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_15;
    v1157[3] = &unk_2783B9E68;
    v74 = v920;
    v1158 = v74;
    v75 = MEMORY[0x223D6F7F0](v1157);
    if ([v73 isPreviousWorkspaceEntity])
    {
      v76 = (v75)[2](v75, v73, v74);

      v73 = v76;
    }

    if ([v73 isEmptyWorkspaceEntity])
    {
    }

    else
    {
      v80 = v73;
      if (v73)
      {
        goto LABEL_105;
      }
    }

    v80 = +[(SBWorkspaceEntity *)SBHomeScreenEntity];
    if (!v80)
    {
      v965 = 0;
      v914 = 0;
      goto LABEL_107;
    }

LABEL_105:
    v965 = v80;
    v914 = [v80 isHomeScreenEntity] ^ 1;
LABEL_107:

    v979 = 0;
    v966 = 0;
    v967 = 0;
    v942 = 0;
    requestedFloatingConfiguration = 0;
    v932 = v946;

LABEL_769:
    v968 = 0;
    v922 = 0;
    goto LABEL_770;
  }

  v72 = requestedUnlockedEnvironmentMode;
  if (v930 || v931 || v933 || v928)
  {
    v77 = [MEMORY[0x277CBEB58] set];
    if (v930)
    {
      uniqueIdentifier3 = [v930 uniqueIdentifier];

      v964 = v930;
      if (uniqueIdentifier3)
      {
        uniqueIdentifier4 = [v930 uniqueIdentifier];
        [v77 addObject:uniqueIdentifier4];

        v964 = v930;
      }
    }

    else
    {
      v964 = +[(SBWorkspaceEntity *)SBPreviousWorkspaceEntity];
    }

    if (v931)
    {
      uniqueIdentifier5 = [v931 uniqueIdentifier];

      v967 = v931;
      if (uniqueIdentifier5)
      {
        uniqueIdentifier6 = [v931 uniqueIdentifier];
        [v77 addObject:uniqueIdentifier6];

        v967 = v931;
      }
    }

    else
    {
      v967 = +[(SBWorkspaceEntity *)SBPreviousWorkspaceEntity];
    }

    if (v933)
    {
      uniqueIdentifier7 = [v933 uniqueIdentifier];

      v966 = v933;
      if (uniqueIdentifier7)
      {
        uniqueIdentifier8 = [v933 uniqueIdentifier];
        [v77 addObject:uniqueIdentifier8];

        v966 = v933;
      }
    }

    else
    {
      v966 = +[(SBWorkspaceEntity *)SBPreviousWorkspaceEntity];
    }

    if (v928)
    {
      uniqueIdentifier9 = [v928 uniqueIdentifier];

      v968 = v928;
      if (uniqueIdentifier9)
      {
        uniqueIdentifier10 = [v928 uniqueIdentifier];
        [v77 addObject:uniqueIdentifier10];

        v968 = v928;
      }
    }

    else
    {
      v968 = +[(SBWorkspaceEntity *)SBEmptyWorkspaceEntity];
    }

    if ([v77 count] >= 2 && !rect)
    {
      v87 = [v1053 _mostRecentAppLayoutMatchingAnyUniqueIdentifier:v77 inMedusaOnStageManagerCapableDevice:v1004 multitaskingSupported:baseStyle != 0];
      v88 = v87;
      if (v87)
      {
        configuration = [v87 configuration];
        if ((configuration - 2) >= 3)
        {
          v90 = 0;
        }

        else
        {
          v90 = configuration;
        }

        rect = v90;
      }

      else
      {
        rect = 0;
      }
    }

    goto LABEL_146;
  }

  if (!v946)
  {
    v964 = +[(SBWorkspaceEntity *)SBPreviousWorkspaceEntity];
    v967 = +[(SBWorkspaceEntity *)SBPreviousWorkspaceEntity];
    v966 = +[(SBWorkspaceEntity *)SBPreviousWorkspaceEntity];
    v968 = +[(SBWorkspaceEntity *)SBPreviousWorkspaceEntity];
    goto LABEL_147;
  }

  if ([v946 isHomeScreenEntity])
  {
    v964 = v946;
    v967 = +[(SBWorkspaceEntity *)SBEmptyWorkspaceEntity];
    v966 = +[(SBWorkspaceEntity *)SBEmptyWorkspaceEntity];
    v968 = +[(SBWorkspaceEntity *)SBEmptyWorkspaceEntity];
    goto LABEL_147;
  }

  if (SBWorkspaceEntitiesAreAnalagous(v946, v918) && ([v946 isEmptyWorkspaceEntity] & 1) == 0)
  {
    v964 = +[(SBWorkspaceEntity *)SBPreviousWorkspaceEntity];
    v967 = +[(SBWorkspaceEntity *)SBPreviousWorkspaceEntity];
    v966 = v946;
    v968 = +[(SBWorkspaceEntity *)SBPreviousWorkspaceEntity];
  }

  else if (SBWorkspaceEntitiesAreAnalagous(v946, v920) && ([v946 isEmptyWorkspaceEntity] & 1) == 0)
  {
    v964 = v946;
    v967 = +[(SBWorkspaceEntity *)SBPreviousWorkspaceEntity];
    v966 = +[(SBWorkspaceEntity *)SBPreviousWorkspaceEntity];
    v968 = +[(SBWorkspaceEntity *)SBPreviousWorkspaceEntity];
  }

  else if (SBWorkspaceEntitiesAreAnalagous(v946, v917) && ([v946 isEmptyWorkspaceEntity] & 1) == 0)
  {
    v964 = +[(SBWorkspaceEntity *)SBPreviousWorkspaceEntity];
    v967 = v946;
    v966 = +[(SBWorkspaceEntity *)SBPreviousWorkspaceEntity];
    v968 = +[(SBWorkspaceEntity *)SBPreviousWorkspaceEntity];
  }

  else
  {
    if (!SBWorkspaceEntitiesAreAnalagous(v946, v916) || ([v946 isEmptyWorkspaceEntity] & 1) != 0)
    {
      v1014 = [MEMORY[0x277CBEB58] set];
      uniqueIdentifier11 = [v946 uniqueIdentifier];

      if (uniqueIdentifier11)
      {
        uniqueIdentifier12 = [v946 uniqueIdentifier];
        [v1014 addObject:uniqueIdentifier12];
      }

      v93 = [v1053 _mostRecentAppLayoutMatchingAnyUniqueIdentifier:v1014 inMedusaOnStageManagerCapableDevice:v1004 multitaskingSupported:baseStyle != 0];
      v94 = v93;
      if (((v1228[5] != 0) & v948) == 1 && [v93 containsItem:?])
      {
        uniqueIdentifier13 = [v946 uniqueIdentifier];
        uniqueIdentifier14 = [v1228[5] uniqueIdentifier];
        v97 = [uniqueIdentifier13 isEqualToString:uniqueIdentifier14];

        if (v97)
        {
          appLayout3 = [rect_16 appLayout];
          v99 = [appLayout3 appLayoutByInsertingItem:v1228[5]];

          v94 = appLayout3;
        }

        else
        {
          v99 = [v94 appLayoutByRemovingItemInLayoutRole:{objc_msgSend(v94, "layoutRoleForItem:", v1228[5])}];
        }
      }

      else
      {
        v99 = v94;
      }

      if (!v99)
      {
        v964 = v946;
        v967 = +[(SBWorkspaceEntity *)SBEmptyWorkspaceEntity];
        v966 = +[(SBWorkspaceEntity *)SBPreviousWorkspaceEntity];
        v968 = +[(SBWorkspaceEntity *)SBEmptyWorkspaceEntity];
LABEL_410:

LABEL_146:
        v72 = requestedUnlockedEnvironmentMode;
        goto LABEL_147;
      }

      if (SBPeekConfigurationIsValid(peekConfiguration2) && [windowManagementContext isFlexibleWindowingEnabled] && objc_msgSend(windowManagementContext, "isAutomaticStageCreationEnabled"))
      {
        appLayout4 = [rect_16 appLayout];
        if ([appLayout4 isOrContainsAppLayout:v99])
        {
        }

        else
        {
          isDeviceApplicationSceneEntity = [v946 isDeviceApplicationSceneEntity];

          if (isDeviceApplicationSceneEntity)
          {
            uniqueIdentifier15 = [v946 uniqueIdentifier];
            allItems = [v99 allItems];
            v1215[0] = MEMORY[0x277D85DD0];
            v1215[1] = 3221225472;
            v1215[2] = __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_2_43;
            v1215[3] = &unk_2783A8C90;
            v943 = uniqueIdentifier15;
            v1216 = v943;
            v210 = [allItems bs_firstObjectPassingTest:v1215];

            bundleIdentifier = [v210 bundleIdentifier];
            uniqueIdentifier16 = [v210 uniqueIdentifier];
            v213 = [v1053 _applicationSceneEntityFromApplicationBundleIdentifier:bundleIdentifier uniqueIdentifier:uniqueIdentifier16 displayIdentity:displayIdentity2];
            v1259 = v213;
            v214 = [MEMORY[0x277CBEA60] arrayWithObjects:&v1259 count:1];
            [v1002 setEntities:v214 withPolicy:1 centerEntity:0 floatingEntity:0];

            v967 = 0;
            v968 = 0;
            v964 = 0;
            v966 = 0;

LABEL_408:
            v238 = v943;
LABEL_409:

            goto LABEL_410;
          }
        }
      }

      if ([v99 environment] != 2 || (objc_msgSend(v920, "isHomeScreenEntity") & 1) != 0)
      {
        v215 = [v99 itemForLayoutRole:1];
        v943 = v215;
        if (!v215)
        {
          currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
          [currentHandler2 handleFailureInMethod:v1027 object:v1053 file:@"SBMainDisplayLayoutStateManager.m" lineNumber:951 description:@"App layout should always have primary display item!"];

          v215 = 0;
        }

        uniqueIdentifier17 = [v946 uniqueIdentifier];
        uniqueIdentifier18 = [v215 uniqueIdentifier];
        v218 = [uniqueIdentifier17 isEqualToString:uniqueIdentifier18];

        if (v218)
        {
          v964 = v946;
        }

        else
        {
          bundleIdentifier2 = [v943 bundleIdentifier];
          uniqueIdentifier19 = [v943 uniqueIdentifier];
          v964 = [v1053 _applicationSceneEntityFromApplicationBundleIdentifier:bundleIdentifier2 uniqueIdentifier:uniqueIdentifier19 displayIdentity:displayIdentity2];

          if (!v964)
          {
            currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
            [currentHandler3 handleFailureInMethod:v1027 object:v1053 file:@"SBMainDisplayLayoutStateManager.m" lineNumber:957 description:@"Failed to create primary workspace entity from app layout's primary display item!"];

            v964 = 0;
          }
        }

        v981 = [v99 itemForLayoutRole:2];
        if (v981)
        {
          uniqueIdentifier20 = [v946 uniqueIdentifier];
          uniqueIdentifier21 = [v981 uniqueIdentifier];
          v223 = [uniqueIdentifier20 isEqualToString:uniqueIdentifier21];

          if (v223)
          {
            v967 = v946;
          }

          else
          {
            bundleIdentifier3 = [v981 bundleIdentifier];
            uniqueIdentifier22 = [v981 uniqueIdentifier];
            v967 = [v1053 _applicationSceneEntityFromApplicationBundleIdentifier:bundleIdentifier3 uniqueIdentifier:uniqueIdentifier22 displayIdentity:displayIdentity2];

            if (!v967)
            {
              currentHandler4 = [MEMORY[0x277CCA890] currentHandler];
              [currentHandler4 handleFailureInMethod:v1027 object:v1053 file:@"SBMainDisplayLayoutStateManager.m" lineNumber:966 description:@"Failed to create side workspace entity from app layout's side display item!"];

              v967 = 0;
            }
          }

          configuration2 = [v99 configuration];
          if (configuration2 > 2)
          {
            if (configuration2 != 3 && configuration2 != 4)
            {
              goto LABEL_377;
            }
          }

          else
          {
            if (configuration2 < 2)
            {
              currentHandler5 = [MEMORY[0x277CCA890] currentHandler];
              [currentHandler5 handleFailureInMethod:v1027 object:v1053 file:@"SBMainDisplayLayoutStateManager.m" lineNumber:971 description:@"Unexpected app layout configuration!"];

              goto LABEL_377;
            }

            if (configuration2 != 2)
            {
              goto LABEL_377;
            }
          }

          rect = configuration2;
          goto LABEL_377;
        }

        v967 = +[(SBWorkspaceEntity *)SBEmptyWorkspaceEntity];
LABEL_377:
        if (isChamoisOrFlexibleWindowing)
        {
          itemsWithoutCenterOrFloatingItems = [v99 itemsWithoutCenterOrFloatingItems];
          v239 = [itemsWithoutCenterOrFloatingItems count];
          if (v239 <= 2)
          {
            v240 = 0;
          }

          else
          {
            v240 = [itemsWithoutCenterOrFloatingItems subarrayWithRange:{2, v239 - 2}];
          }

          v241 = [v240 count];
          v242 = v241;
          if (v241 >= 1)
          {
            v243 = 0;
            v244 = 5;
            v245 = v241;
            do
            {
              v246 = [v240 objectAtIndex:v243];
              uniqueIdentifier23 = [v946 uniqueIdentifier];
              uniqueIdentifier24 = [v246 uniqueIdentifier];
              v249 = [uniqueIdentifier23 isEqualToString:uniqueIdentifier24];

              if (v249)
              {
                v250 = v946;
              }

              else
              {
                bundleIdentifier4 = [v246 bundleIdentifier];
                uniqueIdentifier25 = [v246 uniqueIdentifier];
                v250 = [v1053 _applicationSceneEntityFromApplicationBundleIdentifier:bundleIdentifier4 uniqueIdentifier:uniqueIdentifier25 displayIdentity:displayIdentity2];

                if (!v250)
                {
                  currentHandler6 = [MEMORY[0x277CCA890] currentHandler];
                  v256 = SBLayoutRoleDescription(v244);
                  [currentHandler6 handleFailureInMethod:v1027 object:v1053 file:@"SBMainDisplayLayoutStateManager.m" lineNumber:1009 description:{@"Failed to create additional side workspace entity from app layout's role: %@!", v256}];

                  v250 = 0;
                }
              }

              if ((isFlexibleWindowingEnabled & 1) == 0 || ([windowManagementContext isAutomaticStageCreationEnabled] & 1) != 0 || (objc_msgSend(v250, "uniqueIdentifier"), v253 = objc_claimAutoreleasedReturnValue(), objc_msgSend(rect_16, "elementWithIdentifier:", v253), v254 = objc_claimAutoreleasedReturnValue(), v254, v253, v254))
              {
                [v1002 setEntity:v250 forLayoutRole:v244];
              }

              ++v243;
              ++v244;
              --v245;
            }

            while (v245);
          }

          appLayout5 = [rect_16 appLayout];
          itemsWithoutCenterOrFloatingItems2 = [appLayout5 itemsWithoutCenterOrFloatingItems];

          v259 = [itemsWithoutCenterOrFloatingItems2 count];
          v260 = (v259 - 2) & ~((v259 - 2) >> 31);
          v261 = v242;
          v472 = v242 < v260;
          v262 = v242 - v260;
          if (v472)
          {
            v263 = v261 + 5;
            if (v261 + 5 < v260 + 5)
            {
              do
              {
                v264 = +[(SBWorkspaceEntity *)SBEmptyWorkspaceEntity];
                [v1002 setEntity:v264 forLayoutRole:v263];

                ++v263;
              }

              while (!__CFADD__(v262++, 1));
            }
          }
        }

        v266 = [v99 itemForLayoutRole:4];
        if (v266)
        {
          uniqueIdentifier26 = [v946 uniqueIdentifier];
          uniqueIdentifier27 = [v266 uniqueIdentifier];
          v269 = [uniqueIdentifier26 isEqualToString:uniqueIdentifier27];

          if (v269)
          {
            v270 = v946;
          }

          else
          {
            bundleIdentifier5 = [v266 bundleIdentifier];
            uniqueIdentifier28 = [v266 uniqueIdentifier];
            v273 = [v1053 _applicationSceneEntityFromApplicationBundleIdentifier:bundleIdentifier5 uniqueIdentifier:uniqueIdentifier28 displayIdentity:displayIdentity2];

            v270 = v273;
          }

          v968 = v270;
          if (!v270)
          {
            currentHandler7 = [MEMORY[0x277CCA890] currentHandler];
            [currentHandler7 handleFailureInMethod:v1027 object:v1053 file:@"SBMainDisplayLayoutStateManager.m" lineNumber:1042 description:@"Failed to create center workspace entity from app layout's center display item!"];
          }

          if (!requestedCenterConfiguration)
          {
            requestedCenterConfiguration = SBMainDisplayLayoutStateCenterConfigurationFromAppLayoutCenterConfiguration([v99 centerConfiguration]);
          }
        }

        else
        {
          v968 = +[(SBWorkspaceEntity *)SBEmptyWorkspaceEntity];
        }

        v966 = +[(SBWorkspaceEntity *)SBPreviousWorkspaceEntity];

        goto LABEL_408;
      }

      if (isChamoisOrFlexibleWindowing)
      {
        v224 = [v99 itemForLayoutRole:1];
        v225 = v224;
        if (!v224)
        {
          currentHandler8 = [MEMORY[0x277CCA890] currentHandler];
          [currentHandler8 handleFailureInMethod:v1027 object:v1053 file:@"SBMainDisplayLayoutStateManager.m" lineNumber:923 description:@"App layout should always have primary display item!"];

          v224 = 0;
        }

        uniqueIdentifier29 = [v946 uniqueIdentifier];
        uniqueIdentifier30 = [v224 uniqueIdentifier];
        v228 = [uniqueIdentifier29 isEqualToString:uniqueIdentifier30];

        if (v228)
        {
          v964 = v946;
        }

        else
        {
          bundleIdentifier6 = [v225 bundleIdentifier];
          uniqueIdentifier31 = [v225 uniqueIdentifier];
          v964 = [v1053 _applicationSceneEntityFromApplicationBundleIdentifier:bundleIdentifier6 uniqueIdentifier:uniqueIdentifier31 displayIdentity:displayIdentity2];
        }

        v238 = v225;
        v967 = +[(SBWorkspaceEntity *)SBEmptyWorkspaceEntity];
        v966 = +[(SBWorkspaceEntity *)SBEmptyWorkspaceEntity];
        v968 = +[(SBWorkspaceEntity *)SBEmptyWorkspaceEntity];
        goto LABEL_409;
      }

      v233 = [v99 itemForLayoutRole:1];
      v234 = v233;
      if (!v233)
      {
        currentHandler9 = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler9 handleFailureInMethod:v1027 object:v1053 file:@"SBMainDisplayLayoutStateManager.m" lineNumber:937 description:@"App layout should always have primary display item!"];

        v233 = 0;
      }

      uniqueIdentifier32 = [v946 uniqueIdentifier];
      uniqueIdentifier33 = [v233 uniqueIdentifier];
      v237 = [uniqueIdentifier32 isEqualToString:uniqueIdentifier33];

      if (v237)
      {
        v966 = v946;
      }

      else
      {
        bundleIdentifier7 = [v234 bundleIdentifier];
        uniqueIdentifier34 = [v234 uniqueIdentifier];
        v966 = [v1053 _applicationSceneEntityFromApplicationBundleIdentifier:bundleIdentifier7 uniqueIdentifier:uniqueIdentifier34 displayIdentity:displayIdentity2];

        v238 = v234;
        if (v966)
        {
          goto LABEL_414;
        }

        currentHandler10 = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler10 handleFailureInMethod:v1027 object:v1053 file:@"SBMainDisplayLayoutStateManager.m" lineNumber:943 description:@"Failed to create primary workspace entity from app layout's primary display item!"];

        v966 = 0;
      }

      v238 = v234;
LABEL_414:
      v964 = +[(SBWorkspaceEntity *)SBPreviousWorkspaceEntity];
      v967 = +[(SBWorkspaceEntity *)SBPreviousWorkspaceEntity];
      v968 = +[(SBWorkspaceEntity *)SBPreviousWorkspaceEntity];
      goto LABEL_409;
    }

    v964 = +[(SBWorkspaceEntity *)SBPreviousWorkspaceEntity];
    v967 = +[(SBWorkspaceEntity *)SBPreviousWorkspaceEntity];
    v966 = +[(SBWorkspaceEntity *)SBPreviousWorkspaceEntity];
    v968 = v946;
  }

LABEL_147:
  if (!isChamoisOrFlexibleWindowing)
  {
    v942 = 1;
    v932 = v946;
    v100 = v964;
    goto LABEL_454;
  }

  if (![v968 isPreviousWorkspaceEntity])
  {
    IsValidForSplitView = [v968 isEmptyWorkspaceEntity];
    if (IsValidForSplitView)
    {
      v938 = v968;
      goto LABEL_154;
    }

    for (m = 2; m <= SBLayoutRoleMax(IsValidForSplitView, v102); ++m)
    {
      IsValidForSplitView = SBLayoutRoleIsValidForSplitView(m);
      if (IsValidForSplitView)
      {
        v105 = [v1002 entityForLayoutRole:m];
        if (!v105)
        {
          v105 = [v1002 previousEntityForLayoutRole:m];
          if (!v105)
          {
            goto LABEL_176;
          }
        }

        isEmptyWorkspaceEntity = [v105 isEmptyWorkspaceEntity];

        if (isEmptyWorkspaceEntity)
        {
          goto LABEL_176;
        }
      }
    }

    m = 0;
LABEL_176:
    if (!m)
    {
      v938 = v968;
      goto LABEL_150;
    }

    [v1002 setEntity:v968 forLayoutRole:m];
    if (m == 2)
    {
      v118 = v968;

      v967 = v118;
    }
  }

  v938 = +[(SBWorkspaceEntity *)SBEmptyWorkspaceEntity];

LABEL_150:
  v72 = requestedUnlockedEnvironmentMode;
LABEL_154:
  windowManagementContext2 = [rect_24 windowManagementContext];
  if (![windowManagementContext2 isFlexibleWindowingEnabled] || (objc_msgSend(windowManagementContext2, "isAutomaticStageCreationEnabled") & 1) != 0)
  {
    v103 = v967;
    v980 = v964;
    v932 = v946;
    goto LABEL_222;
  }

  previousEntities3 = [v1002 previousEntities];
  v108 = [previousEntities3 bs_compactMap:&__block_literal_global_65_0];

  if ([v946 isApplicationSceneEntity])
  {
    uniqueIdentifier35 = [v946 uniqueIdentifier];
    v110 = objc_msgSend_containsObject_(v108);

    if ((v110 & 1) == 0)
    {
      v932 = v946;
      if (([v946 isEmptyWorkspaceEntity] & 1) == 0)
      {
        v932 = v946;
        if (([v946 isPreviousWorkspaceEntity] & 1) == 0)
        {
          [v1002 setEntity:v946 forLayoutRole:1];

          v932 = 0;
        }
      }

      v1214 = 0u;
      v1213 = 0u;
      v1212 = 0u;
      v1211 = 0u;
      previousEntities4 = [v1002 previousEntities];
      v120 = [previousEntities4 countByEnumeratingWithState:&v1211 objects:v1258 count:16];
      if (v120)
      {
        v121 = *v1212;
        do
        {
          for (n = 0; n != v120; ++n)
          {
            if (*v1212 != v121)
            {
              objc_enumerationMutation(previousEntities4);
            }

            v123 = *(*(&v1211 + 1) + 8 * n);
            if (([v123 isHomeScreenEntity] & 1) == 0 && (objc_msgSend(v123, "isPreviousWorkspaceEntity") & 1) == 0 && (objc_msgSend(v123, "isEmptyWorkspaceEntity") & 1) == 0)
            {
              entities3 = [v1002 entities];
              v125 = objc_msgSend_containsObject_(entities3);

              if ((v125 & 1) == 0)
              {
                for (ii = 1; ii <= SBLayoutRoleMax(v126, v127); ++ii)
                {
                  v126 = SBLayoutRoleIsValidForSplitView(ii);
                  if (v126)
                  {
                    v129 = [v1002 entityForLayoutRole:ii];
                    v130 = v129;
                    if (!v129)
                    {
                      goto LABEL_202;
                    }

                    isEmptyWorkspaceEntity2 = [v129 isEmptyWorkspaceEntity];

                    if (isEmptyWorkspaceEntity2)
                    {
                      goto LABEL_202;
                    }
                  }
                }

                ii = 0;
LABEL_202:
                if (ii)
                {
                  [v1002 setEntity:v123 forLayoutRole:ii];
                }
              }
            }
          }

          v120 = [previousEntities4 countByEnumeratingWithState:&v1211 objects:v1258 count:16];
        }

        while (v120);
      }

      v132 = [v1002 entityForLayoutRole:1];
      v133 = v132;
      if (v132)
      {
        v980 = v132;
        v134 = v964;
      }

      else
      {
        v980 = +[(SBWorkspaceEntity *)SBEmptyWorkspaceEntity];

        v134 = v980;
      }

      v135 = [v1002 entityForLayoutRole:2];
      v136 = v135;
      if (v135)
      {
        v103 = v135;
        v137 = v967;
      }

      else
      {
        v103 = +[(SBWorkspaceEntity *)SBEmptyWorkspaceEntity];

        v137 = v103;
      }

      v138 = +[(SBWorkspaceEntity *)SBEmptyWorkspaceEntity];

      v139 = +[(SBWorkspaceEntity *)SBEmptyWorkspaceEntity];

      isEmptyWorkspaceEntity3 = [v980 isEmptyWorkspaceEntity];
      v141 = 3;
      if (isEmptyWorkspaceEntity3)
      {
        v141 = 1;
      }

      requestedUnlockedEnvironmentMode = v141;
      v938 = v138;
      v966 = v139;
      goto LABEL_221;
    }
  }

  if (v946)
  {
    v103 = v967;
    v980 = v964;
  }

  else
  {
    if (v964)
    {
      if ([v964 isDeviceApplicationSceneEntity])
      {
        uniqueIdentifier36 = [v964 uniqueIdentifier];
        v112 = objc_msgSend_containsObject_(v108);

        if ((v112 & 1) == 0)
        {
          displayItemRepresentation = [v964 displayItemRepresentation];
          if (displayItemRepresentation)
          {
            _recentAppLayouts = [v1053 _recentAppLayouts];
            bundleIdentifier8 = [displayItemRepresentation bundleIdentifier];
            v116 = [_recentAppLayouts recentDisplayItemsForBundleIdentifier:bundleIdentifier8 includingHiddenAppLayouts:0];
            v117 = objc_msgSend_containsObject_(v116);

            if ((v117 & 1) == 0)
            {
              [v1002 _setRequestedFrontmostEntity:v964];
            }
          }
        }
      }

      v932 = 0;
      v103 = v967;
      v980 = v964;
      goto LABEL_221;
    }

    v103 = v967;
    v980 = 0;
  }

  v932 = v946;
LABEL_221:

  v72 = requestedUnlockedEnvironmentMode;
LABEL_222:
  if (restoresPreviouslyOpenWindows && [rect_16 unlockedEnvironmentMode] == 3 && requestedPeekConfiguration != 1 && (source - 52) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v142 = v103;
    if (v72 == 1)
    {
      goto LABEL_230;
    }

    if (!v72)
    {
      entities4 = [v1002 entities];
      if (![entities4 count])
      {
        v72 = 0;
LABEL_249:

        v103 = v142;
        goto LABEL_250;
      }

      entities5 = [v1002 entities];
      v145 = [entities5 bs_containsObjectPassingTest:&__block_literal_global_69_0];

      if (v145)
      {
LABEL_230:
        if (v1228[5])
        {
          if (v948)
          {
            v146 = _desktopSpaceItems;
          }

          else
          {
            v146 = [_desktopSpaceItems setByAddingObject:?];
          }

          appLayout6 = [rect_16 appLayout];
          allItems2 = [appLayout6 allItems];
          v1209[0] = MEMORY[0x277D85DD0];
          v1209[1] = 3221225472;
          v1209[2] = __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_5_70;
          v1209[3] = &unk_2783A8C90;
          allItems3 = v146;
          v1210 = allItems3;
          v149 = [allItems2 bs_filter:v1209];

          v154 = [allItems3 count];
          if (v154 != [v149 count])
          {
            v155 = [allItems3 mutableCopy];
            bs_set = [v149 bs_set];
            [v155 minusSet:bs_set];

            bs_array = [v155 bs_array];
            v158 = [v149 arrayByAddingObjectsFromArray:bs_array];

            v149 = v158;
          }

          v1207[0] = MEMORY[0x277D85DD0];
          v1207[1] = 3221225472;
          v1207[2] = __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_6;
          v1207[3] = &unk_2783B9DC8;
          v1207[4] = v1053;
          v1208 = displayIdentity2;
          entities4 = [v149 bs_compactMap:v1207];
          v150 = &v1210;
          v151 = &v1208;
        }

        else
        {
          appLayout7 = [rect_16 appLayout];
          allItems3 = [appLayout7 allItems];

          v1205[0] = MEMORY[0x277D85DD0];
          v1205[1] = 3221225472;
          v1205[2] = __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_7;
          v1205[3] = &unk_2783A8C90;
          v1206 = _desktopSpaceItems;
          v149 = [allItems3 bs_filter:v1205];
          v1203[0] = MEMORY[0x277D85DD0];
          v1203[1] = 3221225472;
          v1203[2] = __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_8;
          v1203[3] = &unk_2783B9DC8;
          v1203[4] = v1053;
          v1204 = displayIdentity2;
          entities4 = [v149 bs_compactMap:v1203];
          v150 = &v1206;
          v151 = &v1204;
        }

        if ([entities4 count])
        {
          [v1002 setEntities:entities4 withPolicy:0 centerEntity:0 floatingEntity:0];
          v159 = [v1002 entityForLayoutRole:1];
          v160 = v159;
          if (v159)
          {
            v161 = v159;
            v162 = v980;
          }

          else
          {
            v161 = +[(SBWorkspaceEntity *)SBEmptyWorkspaceEntity];

            v162 = v161;
          }

          v163 = [v1002 entityForLayoutRole:2];
          v164 = v163;
          if (v163)
          {
            v165 = v163;
          }

          else
          {
            v165 = +[(SBWorkspaceEntity *)SBEmptyWorkspaceEntity];

            v142 = v165;
          }

          requestedPeekConfiguration = 2;
          v72 = 1;
          v142 = v165;
          v980 = v161;
        }

        else
        {
          v72 = 1;
        }

        goto LABEL_249;
      }

      v103 = v142;
      v72 = 0;
    }
  }

LABEL_250:
  v1058 = v103;
  if (SBPeekConfigurationIsValid(requestedPeekConfiguration) && !SBPeekConfigurationIsValid(peekConfiguration2))
  {
    isFlexibleWindowingEnabled2 = [windowManagementContext2 isFlexibleWindowingEnabled];
    if (v72)
    {
      v168 = isFlexibleWindowingEnabled2;
    }

    else
    {
      v168 = 0;
    }

    if (v168)
    {
      v1047 = v72;
    }

    else
    {
      _recentAppLayouts2 = [v1053 _recentAppLayouts];
      v179 = [_recentAppLayouts2 recentsIncludingHiddenAppLayouts:0];
      v180 = [v179 count] < 2;

      v181 = 1;
      if (!v180)
      {
        v181 = 2;
      }

      v1047 = v181;
    }

    goto LABEL_451;
  }

  v942 = 1;
  v1047 = v72;
  if (requestedPeekConfiguration == 1 || v72 == 2)
  {
    goto LABEL_259;
  }

  if (requestedPeekConfiguration)
  {
    goto LABEL_255;
  }

  if (SBPeekConfigurationIsValid(peekConfiguration2))
  {
    entities6 = [v1002 entities];
    v969 = [entities6 objectsPassingTest:&__block_literal_global_73];

    previousEntities5 = [v1002 previousEntities];
    if (BSEqualSets())
    {
      previousEntities6 = [v1002 previousEntities];
      activatingEntity2 = [v1002 activatingEntity];
      v173 = objc_msgSend_containsObject_(previousEntities6);

      if ((v173 & 1) == 0)
      {
        v1202 = 0u;
        v1201 = 0u;
        v1200 = 0u;
        v1199 = 0u;
        previousEntities7 = [v1002 previousEntities];
        v175 = [previousEntities7 countByEnumeratingWithState:&v1199 objects:v1257 count:16];
        if (v175)
        {
          v176 = *v1200;
          do
          {
            for (jj = 0; jj != v175; ++jj)
            {
              if (*v1200 != v176)
              {
                objc_enumerationMutation(previousEntities7);
              }

              [v1002 setEntity:*(*(&v1199 + 1) + 8 * jj) forLayoutRole:{objc_msgSend(*(*(&v1199 + 1) + 8 * jj), "layoutRole")}];
            }

            v175 = [previousEntities7 countByEnumeratingWithState:&v1199 objects:v1257 count:16];
          }

          while (v175);
        }

LABEL_300:
        requestedPeekConfiguration = peekConfiguration2;
LABEL_442:

        v288 = [v1002 entityForLayoutRole:1];
        v289 = v288;
        if (v288)
        {
          v290 = v288;
          v291 = v980;
        }

        else
        {
          v290 = +[(SBWorkspaceEntity *)SBEmptyWorkspaceEntity];

          v291 = v290;
        }

        v292 = [v1002 entityForLayoutRole:2];
        v293 = v1058;
        v294 = v292;
        if (v292)
        {
          v295 = v292;
        }

        else
        {
          v295 = +[(SBWorkspaceEntity *)SBEmptyWorkspaceEntity];

          v293 = v295;
        }

        v296 = +[(SBWorkspaceEntity *)SBEmptyWorkspaceEntity];

        v297 = +[(SBWorkspaceEntity *)SBEmptyWorkspaceEntity];

        isEmptyWorkspaceEntity4 = [v290 isEmptyWorkspaceEntity];
        v299 = v1047;
        if (isEmptyWorkspaceEntity4)
        {
          v299 = 1;
        }

        v1047 = v299;

        v932 = 0;
        v938 = v296;
        v966 = v297;
        v1058 = v295;
        v980 = v290;
        goto LABEL_451;
      }
    }

    else
    {
    }

    if ((!v980 || [v980 isPreviousWorkspaceEntity]) && (!v932 || objc_msgSend(v932, "isPreviousWorkspaceEntity")))
    {
      v1198 = 0u;
      v1197 = 0u;
      v1196 = 0u;
      v1195 = 0u;
      previousEntities7 = [v1002 previousEntities];
      v187 = [previousEntities7 countByEnumeratingWithState:&v1195 objects:v1256 count:16];
      if (v187)
      {
        v188 = *v1196;
        do
        {
          for (kk = 0; kk != v187; ++kk)
          {
            if (*v1196 != v188)
            {
              objc_enumerationMutation(previousEntities7);
            }

            [v1002 setEntity:*(*(&v1195 + 1) + 8 * kk) forLayoutRole:{objc_msgSend(*(*(&v1195 + 1) + 8 * kk), "layoutRole")}];
          }

          v187 = [previousEntities7 countByEnumeratingWithState:&v1195 objects:v1256 count:16];
        }

        while (v187);
      }

      goto LABEL_300;
    }

    if ([v932 isHomeScreenEntity])
    {
      if (unlockedEnvironmentMode2 == 1)
      {
        if (([rect_24 _homeScreenIsOnFirstPage] & 1) == 0)
        {
          v1190 = 0u;
          v1189 = 0u;
          v1188 = 0u;
          v1187 = 0u;
          previousEntities8 = [v1002 previousEntities];
          v278 = [previousEntities8 countByEnumeratingWithState:&v1187 objects:v1254 count:16];
          if (v278)
          {
            v279 = *v1188;
            do
            {
              for (mm = 0; mm != v278; ++mm)
              {
                if (*v1188 != v279)
                {
                  objc_enumerationMutation(previousEntities8);
                }

                [v1002 setEntity:*(*(&v1187 + 1) + 8 * mm) forLayoutRole:{objc_msgSend(*(*(&v1187 + 1) + 8 * mm), "layoutRole")}];
              }

              v278 = [previousEntities8 countByEnumeratingWithState:&v1187 objects:v1254 count:16];
            }

            while (v278);
          }

          goto LABEL_422;
        }
      }

      else if (unlockedEnvironmentMode2 == 2)
      {
        v1194 = 0u;
        v1193 = 0u;
        v1192 = 0u;
        v1191 = 0u;
        previousEntities8 = [v1002 previousEntities];
        v191 = [previousEntities8 countByEnumeratingWithState:&v1191 objects:v1255 count:16];
        if (v191)
        {
          v192 = *v1192;
          do
          {
            for (nn = 0; nn != v191; ++nn)
            {
              if (*v1192 != v192)
              {
                objc_enumerationMutation(previousEntities8);
              }

              [v1002 setEntity:*(*(&v1191 + 1) + 8 * nn) forLayoutRole:{objc_msgSend(*(*(&v1191 + 1) + 8 * nn), "layoutRole")}];
            }

            v191 = [previousEntities8 countByEnumeratingWithState:&v1191 objects:v1255 count:16];
          }

          while (v191);
        }

LABEL_422:

        [v1002 setActivatingEntity:0];
        v1047 = 1;
        previousEntities7 = v932;
        v206 = peekConfiguration2;
        goto LABEL_423;
      }

      v1047 = 1;
      previousEntities7 = v932;
      v206 = 1;
LABEL_423:
      requestedPeekConfiguration = v206;
      v932 = 0;
      goto LABEL_442;
    }

    appLayout8 = [rect_16 appLayout];
    allItems4 = [appLayout8 allItems];
    if ([allItems4 count] == 1)
    {
      appLayout9 = [rect_16 appLayout];
      allItems5 = [appLayout9 allItems];
      firstObject = [allItems5 firstObject];
      v199 = BSEqualObjects();

      if (v199)
      {
        if (([v980 isEmptyWorkspaceEntity] & 1) == 0 && (objc_msgSend(v980, "isPreviousWorkspaceEntity") & 1) == 0)
        {
          [v1002 setEntity:v980 forLayoutRole:1];
        }

        if (([v1058 isEmptyWorkspaceEntity] & 1) == 0 && (objc_msgSend(v1058, "isPreviousWorkspaceEntity") & 1) == 0)
        {
          [v1002 setEntity:v1058 forLayoutRole:2];
        }

        goto LABEL_426;
      }
    }

    else
    {
    }

    if (!v932 || ([v932 isEmptyWorkspaceEntity] & 1) != 0 || (objc_msgSend(v932, "isPreviousWorkspaceEntity") & 1) != 0)
    {
      if (!v980)
      {
        goto LABEL_426;
      }

      displayItemRepresentation2 = [v980 displayItemRepresentation];
      if (displayItemRepresentation2)
      {
        _recentAppLayouts3 = [v1053 _recentAppLayouts];
        bundleIdentifier9 = [displayItemRepresentation2 bundleIdentifier];
        v204 = [_recentAppLayouts3 recentDisplayItemsForBundleIdentifier:bundleIdentifier9 includingHiddenAppLayouts:0];
        v205 = objc_msgSend_containsObject_(v204);

        if ((v205 & 1) == 0)
        {
          [v1002 _setRequestedFrontmostEntity:v980];
        }
      }
    }

    else
    {
      [v1002 setEntity:v932 forLayoutRole:1];
      displayItemRepresentation2 = v932;
      v932 = 0;
    }

LABEL_426:
    v1186 = 0u;
    v1185 = 0u;
    v1184 = 0u;
    v1183 = 0u;
    previousEntities7 = [v1002 previousEntities];
    v281 = [previousEntities7 countByEnumeratingWithState:&v1183 objects:v1253 count:16];
    if (v281)
    {
      v282 = *v1184;
      requestedPeekConfiguration = 1;
      v1047 = 3;
      do
      {
        for (i1 = 0; i1 != v281; ++i1)
        {
          if (*v1184 != v282)
          {
            objc_enumerationMutation(previousEntities7);
          }

          v284 = *(*(&v1183 + 1) + 8 * i1);
          if (([v284 isHomeScreenEntity] & 1) == 0 && (objc_msgSend(v284, "isPreviousWorkspaceEntity") & 1) == 0 && (objc_msgSend(v284, "isEmptyWorkspaceEntity") & 1) == 0)
          {
            entities7 = [v1002 entities];
            v286 = objc_msgSend_containsObject_(entities7);

            if ((v286 & 1) == 0)
            {
              v1262.a = 0.0;
              *&v1262.b = &v1262;
              *&v1262.c = 0x2020000000uLL;
              v1180[0] = MEMORY[0x277D85DD0];
              v1180[1] = 3221225472;
              v1180[2] = __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_10;
              v1180[3] = &unk_2783B9DF0;
              v1182 = &v1262;
              v287 = v1002;
              v1181 = v287;
              SBLayoutRoleEnumerateValidRoles(v1180);
              if (*(*&v1262.b + 24))
              {
                [v287 setEntity:v284 forLayoutRole:?];
              }

              _Block_object_dispose(&v1262, 8);
            }
          }
        }

        v281 = [previousEntities7 countByEnumeratingWithState:&v1183 objects:v1253 count:16];
      }

      while (v281);
    }

    else
    {
      requestedPeekConfiguration = 1;
      v1047 = 3;
    }

    goto LABEL_442;
  }

  if (!SBPeekConfigurationIsValid(peekConfiguration2))
  {
    if (([v980 isHomeScreenEntity] & 1) != 0 || ((v182 = objc_msgSend(v980, "isEmptyWorkspaceEntity"), unlockedEnvironmentMode2 != 1) ? (v183 = v182) : (v183 = 0), v183 == 1))
    {
      if ([windowManagementContext2 restoresPreviouslyOpenWindows])
      {
        if (v1228[5])
        {
          appLayout10 = [rect_16 appLayout];
          v185 = [appLayout10 containsItem:v1228[5]];

          v186 = v185 & (v948 ^ 1);
        }

        else
        {
          v186 = 0;
        }

        v942 = 1;
        if (!(([_desktopSpaceItems count] != 0) | v186 & 1) || (unlockedEnvironmentMode2 & 0xFFFFFFFFFFFFFFFELL) != 2)
        {
          goto LABEL_259;
        }

        [v1002 setRestoresDesktopSpacesImmediately:1];
        v166 = 3;
        goto LABEL_258;
      }
    }
  }

LABEL_255:
  if (!SBPeekConfigurationIsValid(requestedPeekConfiguration) || !SBPeekConfigurationIsValid(peekConfiguration2))
  {
    v166 = 1;
LABEL_258:
    v942 = v166;
    goto LABEL_259;
  }

LABEL_451:

  if (requestedPeekConfiguration)
  {
    v942 = requestedPeekConfiguration;
    goto LABEL_453;
  }

  windowManagementContext2 = [MEMORY[0x277CCA890] currentHandler];
  [windowManagementContext2 handleFailureInMethod:v1027 object:v1053 file:@"SBMainDisplayLayoutStateManager.m" lineNumber:1345 description:@"Peek configuration should not be undefined at this point"];
  v942 = 0;
LABEL_259:

LABEL_453:
  v100 = v980;
  v967 = v1058;
  v968 = v938;
  v72 = v1047;
LABEL_454:
  v1048 = v72;
  v965 = v100;
  if (!v100)
  {
    currentHandler11 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler11 handleFailureInMethod:v1027 object:v1053 file:@"SBMainDisplayLayoutStateManager.m" lineNumber:1349 description:@"Primary workspace entity may not be nil at this point!"];
  }

  if (!v967)
  {
    currentHandler12 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler12 handleFailureInMethod:v1027 object:v1053 file:@"SBMainDisplayLayoutStateManager.m" lineNumber:1350 description:@"Side workspace entity may not be nil at this point!"];
  }

  if (!v966)
  {
    currentHandler13 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler13 handleFailureInMethod:v1027 object:v1053 file:@"SBMainDisplayLayoutStateManager.m" lineNumber:1351 description:@"Floating workspace entity may not be nil at this point!"];
  }

  if (!v968)
  {
    currentHandler14 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler14 handleFailureInMethod:v1027 object:v1053 file:@"SBMainDisplayLayoutStateManager.m" lineNumber:1352 description:@"Center workspace entity may not be nil at this point!"];
  }

  if ([v965 isPreviousWorkspaceEntity])
  {
    v300 = (v929)[2](v929, v965, v920);

    v965 = v300;
  }

  if ([v967 isPreviousWorkspaceEntity])
  {
    v301 = (v929)[2](v929, v967, v917);

    v967 = v301;
  }

  if ([v966 isPreviousWorkspaceEntity])
  {
    v302 = (v929)[2](v929, v966, v918);

    v966 = v302;
  }

  if ([v968 isPreviousWorkspaceEntity])
  {
    v303 = (v929)[2](v929, v968, v916);

    v968 = v303;
  }

  v304 = [v1002 entityForLayoutRole:1];
  v305 = v304 == v965;

  if (!v305)
  {
    [v1002 setEntity:v965 forLayoutRole:1];
  }

  v306 = [v1002 entityForLayoutRole:2];
  v307 = v306 == v967;

  if (!v307)
  {
    [v1002 setEntity:v967 forLayoutRole:2];
  }

  v308 = [v1002 entityForLayoutRole:3];
  v309 = v308 == v966;

  if (!v309)
  {
    [v1002 setEntity:v966 forLayoutRole:3];
  }

  v310 = [v1002 entityForLayoutRole:4];
  v311 = v310 == v968;

  if (!v311)
  {
    v312 = [v1002 setEntity:v968 forLayoutRole:4];
  }

  if (!v946)
  {
    v313 = SBLayoutRoleSetAll(v312);
    v1177[0] = MEMORY[0x277D85DD0];
    v1177[1] = 3221225472;
    v1177[2] = __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_11;
    v1177[3] = &unk_2783B9E18;
    v1178 = v1002;
    v1179 = v929;
    [v313 enumerateRolesUsingBlock:v1177];
  }

  if ((isFlexibleWindowingEnabled & 1) == 0 || (isAutomaticStageCreationEnabled & 1) != 0 || ![_desktopSpaceItems count])
  {
    v979 = 0;
    goto LABEL_489;
  }

  v1262.a = 0.0;
  *&v1262.b = &v1262;
  *&v1262.c = 0x2020000000;
  LOBYTE(v1262.d) = 0;
  v1174[0] = MEMORY[0x277D85DD0];
  v1174[1] = 3221225472;
  v1174[2] = __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_12;
  v1174[3] = &unk_2783B9E40;
  v314 = v1002;
  v1175 = v314;
  v1176 = &v1262;
  v1059 = MEMORY[0x223D6F7F0](v1174);
  restoresDesktopSpacesImmediately = [v314 restoresDesktopSpacesImmediately];
  if ([rect_24 _restoreDesktopSpaceAfterClosingFullScreenSpace] && objc_msgSend(_desktopSpaceItems, "count"))
  {
    if ([v965 isHomeScreenEntity])
    {
      if (unlockedEnvironmentMode2 != 3)
      {
        goto LABEL_550;
      }
    }

    else
    {
      isEmptyWorkspaceEntity5 = [v965 isEmptyWorkspaceEntity];
      if (unlockedEnvironmentMode2 == 3)
      {
        v350 = isEmptyWorkspaceEntity5;
      }

      else
      {
        v350 = 0;
      }

      if ((v350 & 1) == 0)
      {
        goto LABEL_550;
      }
    }

    appLayout11 = [rect_16 appLayout];
    if (([appLayout11 containsAnyItemFromSet:_desktopSpaceItems] & 1) == 0)
    {
      previousEntities9 = [v314 previousEntities];
      v1172[0] = MEMORY[0x277D85DD0];
      v1172[1] = 3221225472;
      v1172[2] = __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_13;
      v1172[3] = &unk_2783B65A8;
      v1173 = v314;
      v794 = [previousEntities9 bs_containsObjectPassingTest:v1172];

      if (minimizingDisplayItem)
      {
        v795 = [appLayout11 containsItem:?];
      }

      else
      {
        v795 = 0;
      }

      v807 = v794 | v795;
      v808 = v942;
      if ((v794 | v795))
      {
        v808 = 1;
      }

      v942 = v808;

      if ((v807 | restoresDesktopSpacesImmediately))
      {
        goto LABEL_584;
      }

      goto LABEL_551;
    }
  }

LABEL_550:
  if (restoresDesktopSpacesImmediately)
  {
LABEL_584:
    v1162 = 0u;
    v1161 = 0u;
    v1160 = 0u;
    v1159 = 0u;
    v373 = _desktopSpaceItems;
    v374 = [v373 countByEnumeratingWithState:&v1159 objects:v1250 count:16];
    if (v374)
    {
      v979 = 0;
      v375 = *v1160;
      do
      {
        for (i2 = 0; i2 != v374; ++i2)
        {
          if (*v1160 != v375)
          {
            objc_enumerationMutation(v373);
          }

          v377 = *(*(&v1159 + 1) + 8 * i2);
          bundleIdentifier10 = [v377 bundleIdentifier];
          uniqueIdentifier37 = [v377 uniqueIdentifier];
          displayIdentity3 = [rect_24 displayIdentity];
          v381 = [v1053 _applicationSceneEntityFromApplicationBundleIdentifier:bundleIdentifier10 uniqueIdentifier:uniqueIdentifier37 displayIdentity:displayIdentity3];

          if (v381)
          {
            entities8 = [v314 entities];
            v383 = objc_msgSend_containsObject_(entities8);

            if ((v383 & 1) == 0)
            {
              (v1059)[2](v1059, v381);
              v384 = v979;
              if (!v979)
              {
                v384 = objc_opt_new();
              }

              v979 = v384;
              [v384 addObject:v381];
            }
          }
        }

        v374 = [v373 countByEnumeratingWithState:&v1159 objects:v1250 count:16];
      }

      while (v374);
    }

    else
    {
      v979 = 0;
    }

    goto LABEL_599;
  }

LABEL_551:
  layoutAttributesMap = [rect_16 layoutAttributesMap];
  appLayout12 = [rect_16 appLayout];
  allItems6 = [appLayout12 allItems];

  v1171 = 0u;
  v1170 = 0u;
  v1169 = 0u;
  v1168 = 0u;
  obj = [v314 entities];
  v353 = [obj countByEnumeratingWithState:&v1168 objects:v1252 count:16];
  v354 = obj;
  v355 = v353;
  if (v353)
  {
    v923 = *v1169;
    while (2)
    {
      v356 = 0;
      v921 = v355;
      do
      {
        if (*v1169 != v923)
        {
          objc_enumerationMutation(obj);
        }

        v939 = v356;
        v357 = *(*(&v1168 + 1) + 8 * v356);
        deviceApplicationSceneEntity = [v357 deviceApplicationSceneEntity];
        if (deviceApplicationSceneEntity)
        {
          v359 = [v314 requestedLayoutAttributesForEntity:v357];
          v1167[0] = MEMORY[0x277D85DD0];
          v1167[1] = 3221225472;
          v1167[2] = __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_14;
          v1167[3] = &unk_2783A8C90;
          v1167[4] = v357;
          if ([allItems6 bs_containsObjectPassingTest:v1167])
          {
            v1166 = 0u;
            v1165 = 0u;
            v1164 = 0u;
            v1163 = 0u;
            v360 = allItems6;
            v361 = [v360 countByEnumeratingWithState:&v1163 objects:v1251 count:16];
            v1016 = v359;
            v982 = deviceApplicationSceneEntity;
            if (v361)
            {
              v362 = *v1164;
              while (2)
              {
                for (i3 = 0; i3 != v361; ++i3)
                {
                  if (*v1164 != v362)
                  {
                    objc_enumerationMutation(v360);
                  }

                  v364 = *(*(&v1163 + 1) + 8 * i3);
                  uniqueIdentifier38 = [v357 uniqueIdentifier];
                  uniqueIdentifier39 = [v364 uniqueIdentifier];
                  v367 = [uniqueIdentifier38 isEqual:uniqueIdentifier39];

                  if (v367)
                  {
                    v368 = [layoutAttributesMap objectForKey:v364];
                    if ([rect_24 _isDisplayItemFullScreen:v364 preferredAttributes:v368])
                    {
                      v369 = [SBDisplayItem displayItemForWorkspaceEntity:v982];
                      if (v1016 && ([rect_24 _isDisplayItemFullScreen:v369 preferredAttributes:v1016] & 1) == 0)
                      {

                        deviceApplicationSceneEntity = v982;
                        goto LABEL_583;
                      }
                    }
                  }
                }

                v361 = [v360 countByEnumeratingWithState:&v1163 objects:v1251 count:16];
                if (v361)
                {
                  continue;
                }

                break;
              }
            }

            deviceApplicationSceneEntity = v982;
          }

          else
          {
            v370 = [SBDisplayItem displayItemForWorkspaceEntity:deviceApplicationSceneEntity];
            v371 = v370;
            if (v359)
            {
              v372 = [rect_24 _isDisplayItemFullScreen:v370 preferredAttributes:v359];

              if ((v372 & 1) == 0)
              {
LABEL_583:

                goto LABEL_584;
              }
            }

            else
            {
            }
          }
        }

        v356 = v939 + 1;
      }

      while (v939 + 1 != v921);
      v355 = [obj countByEnumeratingWithState:&v1168 objects:v1252 count:16];
      v354 = obj;
      if (v355)
      {
        continue;
      }

      break;
    }
  }

  if (!SBPeekConfigurationIsValid(peekConfiguration2) && ([v965 isHomeScreenEntity] & 1) == 0 && !((unlockedEnvironmentMode2 != 1) | SBPeekConfigurationIsValid(v942)))
  {
    [v314 setSettlesMultiAppFullScreenSpacesImmediately:1];
    goto LABEL_584;
  }

  v979 = 0;
LABEL_599:
  if (*(*&v1262.b + 24) == 1)
  {
    v385 = [v314 entityForLayoutRole:1];
    v386 = v385;
    if (v385)
    {
      v387 = v385;
      v388 = v965;
    }

    else
    {
      v387 = +[(SBWorkspaceEntity *)SBEmptyWorkspaceEntity];

      v388 = v387;
    }

    v390 = [v314 entityForLayoutRole:2];
    v391 = v390;
    if (v390)
    {
      v389 = v390;
      v392 = v967;
    }

    else
    {
      v389 = +[(SBWorkspaceEntity *)SBEmptyWorkspaceEntity];

      v392 = v389;
    }

    v393 = +[(SBWorkspaceEntity *)SBEmptyWorkspaceEntity];

    v394 = +[(SBWorkspaceEntity *)SBEmptyWorkspaceEntity];

    isEmptyWorkspaceEntity6 = [v387 isEmptyWorkspaceEntity];
    if (v942 == 1)
    {
      v396 = isEmptyWorkspaceEntity6;
    }

    else
    {
      v396 = 1;
    }

    v336 = v396 == 0;
    v397 = 3;
    if (!v336)
    {
      v397 = 1;
    }

    v1048 = v397;
    v968 = v393;
    v966 = v394;
  }

  else
  {
    v389 = v967;
    v387 = v965;
  }

  _Block_object_dispose(&v1262, 8);
  v967 = v389;
  v965 = v387;
  v72 = v1048;
LABEL_489:
  v316 = v1228[5];
  requestedUnlockedEnvironmentMode = v72;
  if (v316)
  {
    uniqueIdentifier40 = [v316 uniqueIdentifier];
    v318 = v72;
    if (!v72)
    {
      if (([v965 isHomeScreenEntity] & 1) != 0 || SBPeekConfigurationIsValid(v942))
      {
        v318 = 1;
      }

      else
      {
        v318 = 3;
      }
    }

    if ([rect_16 unlockedEnvironmentMode] == 3 && v318 == 3)
    {
      appLayout13 = [v1002 entityForIdentifier:uniqueIdentifier40];
      if (appLayout13)
      {
        goto LABEL_619;
      }

      appLayout13 = [rect_16 elementWithIdentifier:uniqueIdentifier40];
      if ((appLayout13 == 0) | v948 & 1)
      {
        goto LABEL_619;
      }

      v320 = BSEqualObjects();

      if ((v320 & 1) == 0)
      {
        for (i4 = 1; i4 <= SBLayoutRoleMax(v321, v322); ++i4)
        {
          v321 = SBLayoutRoleIsValidForSplitView(i4);
          if (i4 == 3)
          {
            v324 = 0;
          }

          else
          {
            v324 = v321;
          }

          if (v324 == 1)
          {
            v325 = [v1002 entityForLayoutRole:i4];
            v326 = v325;
            if (!v325)
            {
              goto LABEL_615;
            }

            isEmptyWorkspaceEntity7 = [v325 isEmptyWorkspaceEntity];

            if (isEmptyWorkspaceEntity7)
            {
              goto LABEL_615;
            }
          }
        }

        i4 = 0;
LABEL_615:
        appLayout13 = [v1002 previousEntityForIdentifier:uniqueIdentifier40];
        if (i4)
        {
          [v1002 setEntity:appLayout13 forLayoutRole:i4];
          goto LABEL_617;
        }

        goto LABEL_619;
      }

      goto LABEL_620;
    }

    if ([rect_16 unlockedEnvironmentMode] == 2 && v318 == 3)
    {
      v328 = [v1002 entityForIdentifier:uniqueIdentifier40];
      v329 = v328 != 0;

      if (((v329 | v948) & 1) == 0)
      {
        for (i4 = 1; i4 <= SBLayoutRoleMax(v330, v331); ++i4)
        {
          v330 = SBLayoutRoleIsValidForSplitView(i4);
          if (i4 == 3)
          {
            v332 = 0;
          }

          else
          {
            v332 = v330;
          }

          if (v332 == 1)
          {
            v333 = [v1002 entityForLayoutRole:i4];
            v334 = v333;
            if (!v333)
            {
              goto LABEL_542;
            }

            isEmptyWorkspaceEntity8 = [v333 isEmptyWorkspaceEntity];

            if (isEmptyWorkspaceEntity8)
            {
              goto LABEL_542;
            }
          }
        }

        i4 = 0;
LABEL_542:
        if (i4)
        {
          bundleIdentifier11 = [v1228[5] bundleIdentifier];
          displayIdentity4 = [rect_24 displayIdentity];
          appLayout13 = [v1053 _applicationSceneEntityFromApplicationBundleIdentifier:bundleIdentifier11 uniqueIdentifier:uniqueIdentifier40 displayIdentity:displayIdentity4];

          [v1002 setEntity:appLayout13 forLayoutRole:i4];
          goto LABEL_617;
        }
      }

      goto LABEL_620;
    }

    v336 = [rect_16 unlockedEnvironmentMode] == 2 && v318 == 1;
    v337 = !v336;
    if (((v337 | v948) & 1) == 0)
    {
      appLayout13 = [rect_16 appLayout];
      if (![appLayout13 containsItem:v1228[5]])
      {
        goto LABEL_619;
      }

      IsValid = SBPeekConfigurationIsValid(v942);

      if (IsValid)
      {
        v339 = [v1002 entityForIdentifier:uniqueIdentifier40];
        v340 = v339 == 0;

        if (v340)
        {
          for (i4 = 1; ; ++i4)
          {
            if (i4 > SBLayoutRoleMax(v341, v342))
            {
              i4 = 0;
              goto LABEL_1246;
            }

            v341 = SBLayoutRoleIsValidForSplitView(i4);
            if (i4 == 3)
            {
              v343 = 0;
            }

            else
            {
              v343 = v341;
            }

            if (v343 == 1)
            {
              v344 = [v1002 entityForLayoutRole:i4];
              v345 = v344;
              if (!v344 || ([v344 isEmptyWorkspaceEntity] & 1) != 0)
              {

LABEL_1246:
                appLayout13 = [v1002 previousEntityForIdentifier:uniqueIdentifier40];
                if (i4)
                {
                  [v1002 setEntity:appLayout13 forLayoutRole:i4];
                  if (i4 == 1)
                  {
                    v869 = appLayout13;

                    v965 = v869;
                  }

LABEL_617:
                  if (i4 == 2)
                  {
                    v398 = appLayout13;

                    v967 = v398;
                  }
                }

LABEL_619:

                break;
              }

              isHomeScreenEntity = [v345 isHomeScreenEntity];

              if (isHomeScreenEntity)
              {
                goto LABEL_1246;
              }
            }
          }
        }
      }
    }

LABEL_620:

    v72 = requestedUnlockedEnvironmentMode;
  }

  if (!v965)
  {
    currentHandler15 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler15 handleFailureInMethod:v1027 object:v1053 file:@"SBMainDisplayLayoutStateManager.m" lineNumber:1605 description:@"Primary workspace entity may not be nil at this point!"];

    v72 = requestedUnlockedEnvironmentMode;
  }

  if (!v967)
  {
    currentHandler16 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler16 handleFailureInMethod:v1027 object:v1053 file:@"SBMainDisplayLayoutStateManager.m" lineNumber:1606 description:@"Side workspace entity may not be nil at this point!"];

    v72 = requestedUnlockedEnvironmentMode;
  }

  if (!v966)
  {
    currentHandler17 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler17 handleFailureInMethod:v1027 object:v1053 file:@"SBMainDisplayLayoutStateManager.m" lineNumber:1607 description:@"Floating workspace entity may not be nil at this point!"];

    v72 = requestedUnlockedEnvironmentMode;
  }

  if (!v968)
  {
    currentHandler18 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler18 handleFailureInMethod:v1027 object:v1053 file:@"SBMainDisplayLayoutStateManager.m" lineNumber:1608 description:@"Center workspace entity may not be nil at this point!"];

    v72 = requestedUnlockedEnvironmentMode;
  }

  if ([v965 isPreviousWorkspaceEntity])
  {
    currentHandler19 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler19 handleFailureInMethod:v1027 object:v1053 file:@"SBMainDisplayLayoutStateManager.m" lineNumber:1610 description:@"Primary workspace entity may not be previous entity at this point!"];

    v72 = requestedUnlockedEnvironmentMode;
  }

  if ([v967 isPreviousWorkspaceEntity])
  {
    currentHandler20 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler20 handleFailureInMethod:v1027 object:v1053 file:@"SBMainDisplayLayoutStateManager.m" lineNumber:1611 description:@"Side workspace entity may not be previous entity at this point!"];

    v72 = requestedUnlockedEnvironmentMode;
  }

  if ([v966 isPreviousWorkspaceEntity])
  {
    currentHandler21 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler21 handleFailureInMethod:v1027 object:v1053 file:@"SBMainDisplayLayoutStateManager.m" lineNumber:1612 description:@"Floating workspace entity may not be previous entity at this point!"];

    v72 = requestedUnlockedEnvironmentMode;
  }

  if ([v968 isPreviousWorkspaceEntity])
  {
    currentHandler22 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler22 handleFailureInMethod:v1027 object:v1053 file:@"SBMainDisplayLayoutStateManager.m" lineNumber:1613 description:@"Center workspace entity may not be previous entity at this point!"];

    v72 = requestedUnlockedEnvironmentMode;
  }

  if ([v968 isApplicationSceneEntity] && objc_msgSend(v965, "isEmptyWorkspaceEntity") && objc_msgSend(v967, "isEmptyWorkspaceEntity"))
  {
    applicationSceneEntity = [v968 applicationSceneEntity];
    application = [applicationSceneEntity application];
    bundleIdentifier12 = [application bundleIdentifier];

    v402 = MEMORY[0x277CBEB98];
    uniqueIdentifier41 = [v968 uniqueIdentifier];
    v404 = [v402 setWithObject:uniqueIdentifier41];
    v405 = [v1053 _mostRecentAppLayoutForBundleIdentifier:bundleIdentifier12 ignoringUniqueIdentifiers:v404 inMedusaOnStageManagerCapableDevice:v1004 multitaskingSupported:baseStyle != 0];

    if (v405)
    {
      v406 = [v405 itemForLayoutRole:1];
      bundleIdentifier13 = [v406 bundleIdentifier];
      uniqueIdentifier42 = [v406 uniqueIdentifier];
      v409 = [v1053 _applicationSceneEntityFromApplicationBundleIdentifier:bundleIdentifier13 uniqueIdentifier:uniqueIdentifier42 displayIdentity:displayIdentity2];

      v965 = v409;
    }

    else
    {
      v410 = [v1053 _sceneManagerForDisplayIdentity:displayIdentity2];
      v406 = [v410 newSceneIdentifierForBundleIdentifier:bundleIdentifier12];

      [v1053 _applicationSceneEntityFromApplicationBundleIdentifier:bundleIdentifier12 uniqueIdentifier:v406 displayIdentity:displayIdentity2];
      v965 = bundleIdentifier13 = v965;
    }

    v411 = [v405 itemForLayoutRole:2];
    bundleIdentifier14 = [v411 bundleIdentifier];
    uniqueIdentifier43 = [v411 uniqueIdentifier];
    v414 = [v1053 _applicationSceneEntityFromApplicationBundleIdentifier:bundleIdentifier14 uniqueIdentifier:uniqueIdentifier43 displayIdentity:displayIdentity2];

    SBMainDisplayLayoutStateSpaceConfigurationFromAppLayoutConfiguration([v405 configuration]);
    v967 = v414;
    v72 = requestedUnlockedEnvironmentMode;
  }

  if (([v965 isEmptyWorkspaceEntity] & 1) != 0 || objc_msgSend(v965, "isHomeScreenEntity"))
  {
    if (!SBPeekConfigurationIsValid(v942))
    {
      v415 = +[(SBWorkspaceEntity *)SBEmptyWorkspaceEntity];

      v416 = +[(SBWorkspaceEntity *)SBEmptyWorkspaceEntity];

      v967 = v415;
      v968 = v416;
      v72 = requestedUnlockedEnvironmentMode;
    }

    if (v72 != 2 && !SBPeekConfigurationIsValid(v942))
    {
      if ([rect_16 unlockedEnvironmentMode] == 2 && (objc_msgSend(v966, "isEmptyWorkspaceEntity") & 1) == 0 && (objc_msgSend(v966, "isHomeScreenEntity") & 1) == 0)
      {
        v417 = v966;

        v965 = v417;
      }

      v418 = +[(SBWorkspaceEntity *)SBEmptyWorkspaceEntity];

      v966 = v418;
    }
  }

  if (([v968 isEmptyWorkspaceEntity] & 1) == 0 && ((SBWorkspaceEntitiesAreAnalagous(v968, v965) & 1) != 0 || (SBWorkspaceEntitiesAreAnalagous(v968, v967) & 1) != 0 || SBWorkspaceEntitiesAreAnalagous(v968, v966)))
  {
    v419 = +[(SBWorkspaceEntity *)SBEmptyWorkspaceEntity];

    v968 = v419;
  }

  if (([v967 isEmptyWorkspaceEntity] & 1) == 0 && SBWorkspaceEntitiesAreAnalagous(v967, v965))
  {
    v420 = +[(SBWorkspaceEntity *)SBEmptyWorkspaceEntity];

    v967 = v420;
  }

  if (([v966 isEmptyWorkspaceEntity] & 1) == 0 && ((SBWorkspaceEntitiesAreAnalagous(v966, v965) & 1) != 0 || SBWorkspaceEntitiesAreAnalagous(v966, v967)))
  {
    v421 = +[(SBWorkspaceEntity *)SBEmptyWorkspaceEntity];

    v966 = v421;
  }

  if (([v967 isEmptyWorkspaceEntity] & 1) == 0 && (!objc_msgSend(v965, "supportsSplitView") || (objc_msgSend(v967, "supportsSplitView") & 1) == 0))
  {
    if ([v967 isEqual:v946])
    {
      v422 = v967;

      v965 = v422;
    }

    v423 = +[(SBWorkspaceEntity *)SBEmptyWorkspaceEntity];

    v967 = v423;
  }

  if (([v966 isEmptyWorkspaceEntity] & 1) == 0 && (objc_msgSend(v966, "supportsPresentationAtAnySize") & 1) == 0)
  {
    v424 = +[(SBWorkspaceEntity *)SBEmptyWorkspaceEntity];

    v966 = v424;
  }

  if (([v968 isEmptyWorkspaceEntity] & 1) == 0 && (objc_msgSend(v968, "supportsPresentationAtAnySize") & 1) == 0)
  {
    v425 = +[(SBWorkspaceEntity *)SBEmptyWorkspaceEntity];

    v968 = v425;
  }

  isEmptyWorkspaceEntity9 = [v967 isEmptyWorkspaceEntity];
  if (baseStyle)
  {
    v427 = 1;
  }

  else
  {
    v427 = isEmptyWorkspaceEntity9;
  }

  if ((v427 & 1) == 0)
  {
    v428 = +[(SBWorkspaceEntity *)SBEmptyWorkspaceEntity];

    v967 = v428;
  }

  isEmptyWorkspaceEntity10 = [v966 isEmptyWorkspaceEntity];
  if (baseStyle)
  {
    v430 = 1;
  }

  else
  {
    v430 = isEmptyWorkspaceEntity10;
  }

  if ((v430 & 1) == 0)
  {
    v431 = +[(SBWorkspaceEntity *)SBEmptyWorkspaceEntity];

    v966 = v431;
  }

  if (!v965)
  {
    currentHandler23 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler23 handleFailureInMethod:v1027 object:v1053 file:@"SBMainDisplayLayoutStateManager.m" lineNumber:1699 description:@"Primary workspace entity may not be nil at this point!"];
  }

  if (!v967)
  {
    currentHandler24 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler24 handleFailureInMethod:v1027 object:v1053 file:@"SBMainDisplayLayoutStateManager.m" lineNumber:1700 description:@"Side workspace entity may not be nil at this point!"];
  }

  if (!v966)
  {
    currentHandler25 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler25 handleFailureInMethod:v1027 object:v1053 file:@"SBMainDisplayLayoutStateManager.m" lineNumber:1701 description:@"Floating workspace entity may not be nil at this point!"];
  }

  if (!v968)
  {
    currentHandler26 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler26 handleFailureInMethod:v1027 object:v1053 file:@"SBMainDisplayLayoutStateManager.m" lineNumber:1702 description:@"Center workspace entity may not be nil at this point!"];
  }

  if ([v965 isPreviousWorkspaceEntity])
  {
    currentHandler27 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler27 handleFailureInMethod:v1027 object:v1053 file:@"SBMainDisplayLayoutStateManager.m" lineNumber:1704 description:@"Primary workspace entity may not be previous entity at this point!"];
  }

  if ([v967 isPreviousWorkspaceEntity])
  {
    currentHandler28 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler28 handleFailureInMethod:v1027 object:v1053 file:@"SBMainDisplayLayoutStateManager.m" lineNumber:1705 description:@"Side workspace entity may not be previous entity at this point!"];
  }

  if ([v966 isPreviousWorkspaceEntity])
  {
    currentHandler29 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler29 handleFailureInMethod:v1027 object:v1053 file:@"SBMainDisplayLayoutStateManager.m" lineNumber:1706 description:@"Floating workspace entity may not be previous entity at this point!"];
  }

  if ([v968 isPreviousWorkspaceEntity])
  {
    currentHandler30 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler30 handleFailureInMethod:v1027 object:v1053 file:@"SBMainDisplayLayoutStateManager.m" lineNumber:1707 description:@"Center workspace entity may not be previous entity at this point!"];
  }

  if ([v965 isEmptyWorkspaceEntity])
  {

    v965 = 0;
  }

  if ([v967 isEmptyWorkspaceEntity])
  {

    v967 = 0;
  }

  if ([v966 isEmptyWorkspaceEntity])
  {

    v966 = 0;
  }

  if ([v968 isEmptyWorkspaceEntity])
  {

    v968 = 0;
  }

  if (!v965)
  {
    v965 = +[(SBWorkspaceEntity *)SBHomeScreenEntity];
  }

  if (v967)
  {
    if (SBSpaceConfigurationIsSplitView(rect))
    {
      v432 = rect;
    }

    else
    {
      v432 = spaceConfiguration2;
    }

    IsSplitView = SBSpaceConfigurationIsSplitView(v432);
    v434 = 3;
    if (IsSplitView)
    {
      v434 = v432;
    }

    goto LABEL_721;
  }

  if (v965 && ([v965 isHomeScreenEntity] & 1) == 0)
  {
    if (SBPeekConfigurationIsValid(v942))
    {
      if (SBSpaceConfigurationIsValid(rect))
      {
        v680 = rect;
      }

      else
      {
        v680 = spaceConfiguration2;
      }

      if (SBSpaceConfigurationIsValid(v680))
      {
        v434 = v680;
      }

      else
      {
        v434 = 1;
      }
    }

    else
    {
      v434 = 1;
    }

LABEL_721:
    v914 = v434;
    goto LABEL_725;
  }

  v914 = 0;
LABEL_725:
  v435 = floatingConfiguration2;
  if (v966)
  {
    if (SBFloatingConfigurationIsValid(requestedFloatingConfiguration))
    {
      v435 = requestedFloatingConfiguration;
    }

    if (v966 == v932 || v966 == v933)
    {
      v436 = SBFloatingConfigurationIsValid(v435);
      if (v435 != 4 && v436)
      {
        if (v435 == 3)
        {
          v435 = 1;
        }
      }

      else
      {
        v435 = 2;
      }
    }

    v439 = SBFloatingConfigurationIsValid(v435);
    v440 = 4;
    if (v439)
    {
      v440 = v435;
    }

    requestedFloatingConfiguration = v440;
    if (SBPeekConfigurationIsValid(v942) && ([v965 isHomeScreenEntity] & 1) == 0)
    {
      IsLeft = SBFloatingConfigurationIsLeft(requestedFloatingConfiguration);
      goto LABEL_749;
    }
  }

  else
  {
    if (SBFloatingConfigurationIsStashed(floatingConfiguration2) && SBFloatingConfigurationIsValid(floatingConfiguration2))
    {
      requestedFloatingConfiguration = floatingConfiguration2;
      goto LABEL_752;
    }

    if ([v932 isHomeScreenEntity] && SBFloatingConfigurationIsValid(floatingConfiguration2))
    {
      IsLeft = SBFloatingConfigurationIsLeft(floatingConfiguration2);
LABEL_749:
      v441 = 3;
      if (!IsLeft)
      {
        v441 = 4;
      }

      requestedFloatingConfiguration = v441;
    }
  }

LABEL_752:
  if (([v966 isEmptyWorkspaceEntity] & 1) == 0 && SBFloatingConfigurationIsStashed(requestedFloatingConfiguration))
  {

    v966 = 0;
  }

  if (v968)
  {
    if (SBCenterConfigurationIsValid(requestedCenterConfiguration))
    {
      v442 = requestedCenterConfiguration;
    }

    else
    {
      v442 = centerConfiguration;
    }

    v922 = v442;
    if (!SBCenterConfigurationIsValid(v442))
    {
      request2 = [v1002 request];
      centerConfiguration2 = [request2 centerConfiguration];
      v445 = 1;
      if (centerConfiguration2 == 2)
      {
        v445 = 2;
      }

      v922 = v445;
    }
  }

  else
  {
    v922 = 0;
  }

  isEmptyWorkspaceEntity11 = [v968 isEmptyWorkspaceEntity];
  if (v922)
  {
    v447 = 1;
  }

  else
  {
    v447 = isEmptyWorkspaceEntity11;
  }

  if ((v447 & 1) == 0)
  {

    goto LABEL_769;
  }

LABEL_770:
  v940 = requestedUnlockedEnvironmentMode;
  if (!requestedUnlockedEnvironmentMode)
  {
    if (([v965 isHomeScreenEntity] & 1) != 0 || SBPeekConfigurationIsValid(v942))
    {
      v448 = 1;
    }

    else
    {
      v448 = 3;
    }

    v940 = v448;
  }

  IsYes = BSSettingFlagIsYes();
  if (v968)
  {
    v913 = BSSettingFlagIsYes();
  }

  else
  {
    v913 = 0;
  }

  v924 = rect_8;
  v449 = SBPeekConfigurationIsValid([rect_16 peekConfiguration]);
  unlockedEnvironmentMode3 = [rect_16 unlockedEnvironmentMode];
  bundleIDShowingAppExpose4 = v924;
  if (!v924)
  {
    v451 = unlockedEnvironmentMode3;
    v452 = isChamoisOrFlexibleWindowing;
    if (unlockedEnvironmentMode3 != 2)
    {
      v452 = 0;
    }

    if (((v452 | v449) & 1) != 0 || ![v932 isApplicationSceneEntity])
    {
      bundleIDShowingAppExpose4 = 0;
    }

    else
    {
      v453 = v932;
      application2 = [v453 application];
      bundleIdentifier15 = [application2 bundleIdentifier];
      v998 = v451;
      v1017 = v453;
      activationSettings2 = [v453 activationSettings];
      v455 = [activationSettings2 objectForActivationSetting:46];

      LODWORD(activationSettings2) = [v453 BOOLForActivationSetting:41];
      if (!((v455 == 0) | (activationSettings2 | [application2 isWebApplication]) & 1) && (objc_msgSend(MEMORY[0x277D75418], "currentDevice"), v456 = objc_claimAutoreleasedReturnValue(), v457 = objc_msgSend(v456, "userInterfaceIdiom"), v456, (v457 & 0xFFFFFFFFFFFFFFFBLL) == 1) && (objc_msgSend(application2, "info"), v458 = objc_claimAutoreleasedReturnValue(), v459 = objc_msgSend(v458, "supportsMultiwindow"), v458, v459))
      {
        if (isChamoisOrFlexibleWindowing)
        {
          v1156 = 0u;
          v1155 = 0u;
          v1154 = 0u;
          v1153 = 0u;
          elements2 = [rect_16 elements];
          previousEntities10 = 0;
          v462 = [elements2 countByEnumeratingWithState:&v1153 objects:v1249 count:16];
          if (v462)
          {
            v463 = 0;
            v464 = *v1154;
            do
            {
              for (i5 = 0; i5 != v462; ++i5)
              {
                if (*v1154 != v464)
                {
                  objc_enumerationMutation(elements2);
                }

                v466 = *(*(&v1153 + 1) + 8 * i5);
                v467 = [rect_16 layoutAttributesForElement:v466];
                workspaceEntity = [v466 workspaceEntity];
                applicationSceneEntity2 = [workspaceEntity applicationSceneEntity];

                queue = [(SBHomeScreenConfigurationServer *)v467 queue];
                v471 = queue;
                if (applicationSceneEntity2)
                {
                  v472 = queue <= v463;
                }

                else
                {
                  v472 = 1;
                }

                if (!v472)
                {
                  v473 = applicationSceneEntity2;

                  v463 = v471;
                  previousEntities10 = v473;
                }
              }

              v462 = [elements2 countByEnumeratingWithState:&v1153 objects:v1249 count:16];
            }

            while (v462);
          }

          application3 = [previousEntities10 application];
          bundleIdentifier16 = [application3 bundleIdentifier];
          v476 = [bundleIdentifier16 isEqualToString:bundleIdentifier15];

          v477 = v476 ^ 1;
        }

        else
        {
          v1152 = 0u;
          v1151 = 0u;
          v1150 = 0u;
          v1149 = 0u;
          previousEntities10 = [v1002 previousEntities];
          v796 = [previousEntities10 countByEnumeratingWithState:&v1149 objects:v1248 count:16];
          if (v796)
          {
            v797 = *v1150;
            while (2)
            {
              for (i6 = 0; i6 != v796; ++i6)
              {
                if (*v1150 != v797)
                {
                  objc_enumerationMutation(previousEntities10);
                }

                v799 = *(*(&v1149 + 1) + 8 * i6);
                v800 = objc_opt_class();
                v801 = v799;
                if (v800)
                {
                  if (objc_opt_isKindOfClass())
                  {
                    v802 = v801;
                  }

                  else
                  {
                    v802 = 0;
                  }
                }

                else
                {
                  v802 = 0;
                }

                v803 = v802;

                if (v803)
                {
                  application4 = [v803 application];
                  bundleIdentifier17 = [application4 bundleIdentifier];
                  v806 = [bundleIdentifier17 isEqualToString:bundleIdentifier15];

                  if (v806)
                  {

                    v477 = 0;
                    goto LABEL_1210;
                  }
                }
              }

              v796 = [previousEntities10 countByEnumeratingWithState:&v1149 objects:v1248 count:16];
              v477 = 1;
              if (v796)
              {
                continue;
              }

              break;
            }
          }

          else
          {
            v477 = 1;
          }
        }

LABEL_1210:

        bundleIDShowingAppExpose2 = [rect_16 bundleIDShowingAppExpose];
        v810 = bundleIDShowingAppExpose2;
        if (v998 != 2 || bundleIDShowingAppExpose2 == 0)
        {
          v812 = v477;
        }

        else
        {
          v812 = 1;
        }

        if (v812 & 1) != 0 || (BSEqualStrings())
        {
          bundleIDShowingAppExpose4 = 0;
        }

        else
        {
          bundleIDShowingAppExpose4 = bundleIdentifier15;
        }
      }

      else
      {
        bundleIDShowingAppExpose4 = 0;
      }
    }
  }

  v478 = 0;
  if (isChamoisOrFlexibleWindowing)
  {
    v479 = 0;
  }

  else
  {
    applicationSceneEntity3 = [v932 applicationSceneEntity];
    _recentAppLayouts4 = [v1053 _recentAppLayouts];
    v482 = [_recentAppLayouts4 _transitionContextRepresentsAmbiguousLaunch:v1002 forApplicationSceneEntity:applicationSceneEntity3];

    if (v482)
    {
      v483 = SBPeekConfigurationIsValid([rect_16 peekConfiguration]);
      if (v966)
      {
        v484 = 0;
      }

      else
      {
        v484 = v483;
      }

      v485 = requestedWindowPickerRole;
      if (v484)
      {
        v486 = 2;
        if (v932 != v967)
        {
          v486 = 0;
        }

        if (v932 == v965)
        {
          v486 = 1;
        }

        if (v486)
        {
          v485 = v486;
        }

        requestedWindowPickerRole = v485;
      }

      else
      {
        application5 = [applicationSceneEntity3 application];
        bundleIdentifier18 = [application5 bundleIdentifier];

        bundleIDShowingAppExpose4 = bundleIdentifier18;
      }
    }

    v479 = requestedWindowPickerRole;
  }

  if (bundleIDShowingAppExpose4)
  {
    _applicationController = [v1053 _applicationController];
    v490 = [_applicationController applicationWithBundleIdentifier:bundleIDShowingAppExpose4];

    if ((isChamoisOrFlexibleWindowing & 1) == 0 && ([v490 supportsMultitaskingShelf] & 1) == 0)
    {

      bundleIDShowingAppExpose4 = 0;
    }
  }

  else
  {
    bundleIDShowingAppExpose4 = 0;
  }

  if (v479)
  {
    v491 = v965;
    if (v479 == 1 || (v491 = v967, v479 == 2) || (v491 = v966, v479 == 3) || (v491 = v968, v479 == 4))
    {
      v492 = v491;
    }

    else
    {
      v492 = 0;
    }

    v493 = v479;
    applicationSceneEntity4 = [v492 applicationSceneEntity];
    application6 = [applicationSceneEntity4 application];

    if (!application6 || ([application6 supportsMultitaskingShelf] & 1) == 0)
    {
      v493 = 0;
    }

    v478 = v493;
  }

  v935 = v478;
  v496 = requestedUnlockedEnvironmentMode;
  if (bundleIDShowingAppExpose4)
  {
LABEL_837:
    v497 = v496 - 1;
    if ([rect_16 unlockedEnvironmentMode] == 3)
    {
      if (isFlexibleWindowingEnabled & 1 | (v497 < 2))
      {
LABEL_853:
        v503 = 2;
        goto LABEL_854;
      }
    }

    else
    {
      isApplicationSceneEntity = [v932 isApplicationSceneEntity];
      if (v497 < 2 || ((isApplicationSceneEntity ^ 1 | isFlexibleWindowingEnabled) & 1) != 0)
      {
        goto LABEL_853;
      }
    }

    v503 = 3;
LABEL_854:
    v940 = v503;
    IsYes = 0;
    v504 = v942;
    if (isFlexibleWindowingEnabled)
    {
      v504 = 1;
    }

    v942 = v504;
    goto LABEL_858;
  }

  bundleIDShowingAppExpose3 = [rect_16 bundleIDShowingAppExpose];
  if (bundleIDShowingAppExpose3 && ((v499 = [rect_16 unlockedEnvironmentMode], v940 == 2) ? (v500 = v499 == 2) : (v500 = 0), !v500 ? (v501 = 0) : (v501 = 1), bundleIDShowingAppExpose3, v501))
  {
    bundleIDShowingAppExpose4 = [rect_16 bundleIDShowingAppExpose];
    v496 = requestedUnlockedEnvironmentMode;
    if (bundleIDShowingAppExpose4)
    {
      goto LABEL_837;
    }

    bundleIDShowingAppExpose4 = 0;
    v940 = 2;
  }

  else
  {
    bundleIDShowingAppExpose4 = 0;
  }

LABEL_858:
  if ([v965 isPreviousWorkspaceEntity])
  {
    currentHandler31 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler31 handleFailureInMethod:v1027 object:v1053 file:@"SBMainDisplayLayoutStateManager.m" lineNumber:2060 description:@"Primary workspace entity may not be previous entity at this point!"];
  }

  if ([v967 isPreviousWorkspaceEntity])
  {
    currentHandler32 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler32 handleFailureInMethod:v1027 object:v1053 file:@"SBMainDisplayLayoutStateManager.m" lineNumber:2061 description:@"Side workspace entity may not be previous entity at this point!"];
  }

  if ([v966 isPreviousWorkspaceEntity])
  {
    currentHandler33 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler33 handleFailureInMethod:v1027 object:v1053 file:@"SBMainDisplayLayoutStateManager.m" lineNumber:2062 description:@"Floating workspace entity may not be previous entity at this point!"];
  }

  if ([v968 isPreviousWorkspaceEntity])
  {
    currentHandler34 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler34 handleFailureInMethod:v1027 object:v1053 file:@"SBMainDisplayLayoutStateManager.m" lineNumber:2063 description:@"Center workspace entity may not be previous entity at this point!"];
  }

  if ([v965 isEmptyWorkspaceEntity])
  {
    currentHandler35 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler35 handleFailureInMethod:v1027 object:v1053 file:@"SBMainDisplayLayoutStateManager.m" lineNumber:2065 description:@"Primary workspace entity may not be empty entity at this point!"];
  }

  if ([v967 isEmptyWorkspaceEntity])
  {
    currentHandler36 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler36 handleFailureInMethod:v1027 object:v1053 file:@"SBMainDisplayLayoutStateManager.m" lineNumber:2066 description:@"Side workspace entity may not be empty entity at this point!"];
  }

  if ([v966 isEmptyWorkspaceEntity])
  {
    currentHandler37 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler37 handleFailureInMethod:v1027 object:v1053 file:@"SBMainDisplayLayoutStateManager.m" lineNumber:2067 description:@"Floating workspace entity may not be empty entity at this point!"];
  }

  if ([v968 isEmptyWorkspaceEntity])
  {
    currentHandler38 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler38 handleFailureInMethod:v1027 object:v1053 file:@"SBMainDisplayLayoutStateManager.m" lineNumber:2068 description:@"Center workspace entity may not be empty entity at this point!"];
  }

  [v1002 setActivatingEntity:0];
  [v1002 setEntity:v965 forLayoutRole:1];
  [v1002 setEntity:v967 forLayoutRole:2];
  [v1002 setEntity:v966 forLayoutRole:3];
  [v1002 setEntity:v968 forLayoutRole:4];
  v505 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v945 = v505;
  if (v965)
  {
    v506 = __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke(v505, v965);
    if (v506)
    {
      [v945 addObject:v506];
    }
  }

  if (v967)
  {
    v507 = __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke(v505, v967);
    if (v507)
    {
      [v945 addObject:v507];
      v1262.a = 0.0;
      *&v1262.b = &v1262;
      *&v1262.c = 0x2020000000;
      *&v1262.d = 5;
      v1139[0] = MEMORY[0x277D85DD0];
      v1139[1] = 3221225472;
      v1139[2] = __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_16;
      v1139[3] = &unk_2783B9E90;
      v1140 = v1002;
      v1146 = v929;
      v1141 = v965;
      v1142 = v967;
      v1143 = v968;
      v1148 = &v1262;
      v1144 = v966;
      v1147 = &__block_literal_global_216;
      v1145 = v945;
      SBLayoutRoleEnumerateValidRoles(v1139);

      _Block_object_dispose(&v1262, 8);
    }
  }

  if (v966)
  {
    v508 = __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke(v505, v966);
    if (v508)
    {
      [v945 addObject:v508];
    }
  }

  if (v968)
  {
    v509 = __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke(v505, v968);
    if (v509)
    {
      [v945 addObject:v509];
    }
  }

  if ([v945 count])
  {
    v510 = v945;
  }

  else
  {
    v510 = 0;
  }

  v511 = v510;
  v512 = objc_opt_class();
  v513 = SBSafeCast(v512, rect_16);
  elementIdentifiersToLayoutAttributes2 = [v513 elementIdentifiersToLayoutAttributes];

  requestedEntityIdentifierToLayoutAttributes3 = [v1002 requestedEntityIdentifierToLayoutAttributes];
  v1035 = objc_opt_new();
  v1138 = 0u;
  v1137 = 0u;
  v1136 = 0u;
  v1135 = 0u;
  v1041 = v511;
  v514 = [v1041 countByEnumeratingWithState:&v1135 objects:v1247 count:16];
  if (v514)
  {
    v1029 = *v1136;
    if ((interfaceOrientation - 1) < 2)
    {
      v515 = 1;
    }

    else
    {
      v515 = 2 * ((interfaceOrientation - 3) < 2);
    }

    v972 = v515;
    do
    {
      v1061 = v514;
      for (i7 = 0; i7 != v1061; ++i7)
      {
        if (*v1136 != v1029)
        {
          objc_enumerationMutation(v1041);
        }

        v517 = *(*(&v1135 + 1) + 8 * i7);
        uniqueIdentifier44 = [v517 uniqueIdentifier];
        v519 = [requestedEntityIdentifierToLayoutAttributes3 objectForKey:uniqueIdentifier44];
        if (v519)
        {
          goto LABEL_940;
        }

        v520 = [elementIdentifiersToLayoutAttributes2 objectForKey:uniqueIdentifier44];
        v521 = v520;
        if (!((v520 == 0) | isFlexibleWindowingEnabled & (source == 64)))
        {
          v519 = v520;
          v529 = MEMORY[0x277CBEB98];
          uniqueIdentifier45 = [v517 uniqueIdentifier];
          v531 = [v529 setWithObject:uniqueIdentifier45];
          v532 = [v1053 _mostRecentAppLayoutMatchingAnyUniqueIdentifier:v531 inMedusaOnStageManagerCapableDevice:v1004 multitaskingSupported:baseStyle != 0];

          allItems7 = [v532 allItems];
          v1134[0] = MEMORY[0x277D85DD0];
          v1134[1] = 3221225472;
          v1134[2] = __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_17;
          v1134[3] = &unk_2783A8C90;
          v1134[4] = v517;
          v534 = [allItems7 bs_firstObjectPassingTest:v1134];

          if (v534)
          {
            [dictionary setObject:v517 forKey:v534];
            [dictionary2 setObject:v519 forKey:v534];
          }

          goto LABEL_940;
        }

        v522 = MEMORY[0x277CBEB98];
        uniqueIdentifier46 = [v517 uniqueIdentifier];
        v524 = [v522 setWithObject:uniqueIdentifier46];
        v525 = [v1053 _mostRecentAppLayoutMatchingAnyUniqueIdentifier:v524 inMedusaOnStageManagerCapableDevice:v1004 multitaskingSupported:baseStyle != 0];

        if (v525)
        {
          allItems8 = [v525 allItems];
          v1133[0] = MEMORY[0x277D85DD0];
          v1133[1] = 3221225472;
          v1133[2] = __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_18;
          v1133[3] = &unk_2783A8C90;
          v1133[4] = v517;
          v527 = [allItems8 bs_firstObjectPassingTest:v1133];

          if (source != 11 && source != 50)
          {
            v528 = [displayItemLayoutAttributesProvider layoutAttributesForDisplayItem:v527 inAppLayout:v525 displayOrdinal:objc_msgSend(rect_16 orientation:{"displayOrdinal"), v972}];

            if (v527 && v528)
            {
              [dictionary setObject:v517 forKey:v527];
              [dictionary2 setObject:v528 forKey:v527];
LABEL_931:
              v521 = v528;

              v519 = v521;
              goto LABEL_939;
            }

            v521 = v528;
          }

          v528 = v521;
          if (!v521)
          {
            v549 = 1;
            if (v527)
            {
              v549 = [v525 layoutRoleForItem:v527];
            }

            v550 = [v525 itemForLayoutRole:v549];
            preferredDisplayOrdinal = [v525 preferredDisplayOrdinal];
            interfaceOrientation3 = [rect_16 interfaceOrientation];
            if ((interfaceOrientation3 - 1) < 2)
            {
              v553 = 1;
            }

            else
            {
              v553 = 2 * ((interfaceOrientation3 - 3) < 2);
            }

            v528 = [displayItemLayoutAttributesProvider layoutAttributesForDisplayItem:v550 inAppLayout:v525 displayOrdinal:preferredDisplayOrdinal orientation:v553];
          }

          goto LABEL_931;
        }

        workspaceEntity2 = [v517 workspaceEntity];
        applicationSceneEntity5 = [workspaceEntity2 applicationSceneEntity];
        application7 = [applicationSceneEntity5 application];
        bundleIdentifier19 = [application7 bundleIdentifier];

        if (bundleIdentifier19)
        {
          _recentAppLayouts5 = [v1053 _recentAppLayouts];
          v1131[0] = MEMORY[0x277D85DD0];
          v1131[1] = 3221225472;
          v1131[2] = __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_19;
          v1131[3] = &unk_2783A8CB8;
          v540 = bundleIdentifier19;
          v1132 = v540;
          rect_8a = [_recentAppLayouts5 mostRecentAppLayoutIncludingHiddenAppLayouts:1 passingTest:v1131];

          if (rect_8a)
          {
            interfaceOrientation4 = [0 interfaceOrientation];
            if ((interfaceOrientation4 - 1) < 2)
            {
              v542 = 1;
            }

            else
            {
              v542 = 2 * ((interfaceOrientation4 - 3) < 2);
            }

            v1129[0] = MEMORY[0x277D85DD0];
            v1129[1] = 3221225472;
            v1129[2] = __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_20;
            v1129[3] = &unk_2783A8C90;
            v1130 = v540;
            v543 = [displayItemLayoutAttributesProvider lastInteractedDisplayItemInAppLayout:rect_8a orientation:v542 passingTest:v1129];
            if (v543)
            {
              preferredDisplayOrdinal2 = [rect_8a preferredDisplayOrdinal];
              interfaceOrientation5 = [0 interfaceOrientation];
              if ((interfaceOrientation5 - 1) < 2)
              {
                v546 = 1;
              }

              else
              {
                v546 = 2 * ((interfaceOrientation5 - 3) < 2);
              }

              v547 = [displayItemLayoutAttributesProvider layoutAttributesForDisplayItem:v543 inAppLayout:rect_8a displayOrdinal:preferredDisplayOrdinal2 orientation:v546];
              [(SBDisplayItemLayoutAttributes *)v547 attributedSize];
              v548 = [SBDisplayItemLayoutAttributes attributesByModifyingAttributedSize:?];
              [(SBHomeScreenConfigurationServer *)v547 connections];
              v519 = [SBDisplayItemLayoutAttributes attributesByModifyingSizingPolicy:v548];
            }

            else
            {
              v519 = 0;
            }
          }

          else
          {
            v519 = 0;
          }

          v554 = [v1002 entityForLayoutRole:4];
          v555 = v554 == 0;

          if (!v555)
          {
            SBDisplayItemAttributedSizeUnspecified(&v1262);
            v556 = [SBDisplayItemLayoutAttributes attributesByModifyingAttributedSize:v519];

            v519 = [SBDisplayItemLayoutAttributes attributesByModifyingSizingPolicy:v556];
          }
        }

        else
        {
          v519 = 0;
        }

LABEL_939:
        if (!v519)
        {
          v557 = objc_alloc_init(SBDisplayItemLayoutAttributes);
          goto LABEL_944;
        }

LABEL_940:
        if ((isFlexibleWindowingEnabled & 1) != 0 && ([windowManagementContext isAutomaticStageCreationEnabled] & 1) == 0)
        {
          allCameraShutterButtonPIDs = [(SBCameraHardwareButton *)v519 allCameraShutterButtonPIDs];
          if (SBDisplayItemLayoutAttributesVersionIsCurrent(allCameraShutterButtonPIDs))
          {
            v557 = v519;
            goto LABEL_944;
          }

          v572 = objc_alloc_init(SBDisplayItemLayoutAttributes);

          v573 = [requestedEntityIdentifierToLayoutAttributes3 objectForKey:uniqueIdentifier44];
          v519 = v573;
          if (v573)
          {
            [(SBHomeScreenConfigurationServer *)v573 queue];
            v557 = [SBDisplayItemLayoutAttributes attributesByModifyingLastInteractionTime:v572];

            workspaceEntity3 = [v517 workspaceEntity];
            [v1002 setRequestedLayoutAttributes:v557 forEntity:workspaceEntity3];
          }

          else
          {
            v557 = v572;
          }
        }

        else
        {
          v557 = [SBDisplayItemLayoutAttributes attributesByModifyingVersion:v519];
        }

LABEL_944:
        if (SBDisplayItemSizeIsUnspecified(v557) && ((SBFIsChamoisWindowingUIAvailable() & 1) != 0 || SBFIsFlexibleWindowingUIAvailable()))
        {
          workspaceEntity4 = [v517 workspaceEntity];
          deviceApplicationSceneEntity2 = [workspaceEntity4 deviceApplicationSceneEntity];
          sceneHandle = [deviceApplicationSceneEntity2 sceneHandle];

          if (sceneHandle && ([sceneHandle supportsCenterWindow] & 1) == 0)
          {
            application8 = [sceneHandle application];
            v562 = application8;
            if (application8)
            {
              bundleIdentifier20 = [application8 bundleIdentifier];
              v564 = [MEMORY[0x277CBEB98] set];
              v565 = [v1053 _mostRecentAppLayoutForBundleIdentifier:bundleIdentifier20 ignoringUniqueIdentifiers:v564 inMedusaOnStageManagerCapableDevice:v1004 multitaskingSupported:baseStyle != 0];

              if (!v565)
              {
                v566 = [v562 lastWindowLayoutAttributesForDisplayOrdinal:{objc_msgSend(rect_16, "displayOrdinal")}];
                v567 = v566;
                if (!v566)
                {
                  v570 = [(SBDisplayItemLayoutAttributes *)v557 attributesByModifyingPositionIsSystemManaged:?];

                  goto LABEL_965;
                }

                rect_8d = [(SBHomeScreenConfigurationServer *)v566 connections];
                v1263 = 0;
                memset(&v1262, 0, sizeof(v1262));
                [(SBDisplayItemLayoutAttributes *)v567 attributedSize];
                v1127 = 0uLL;
                v1128 = 0;
                [(SBDisplayItemLayoutAttributes *)v567 tileConfiguration];
                v1126 = 0;
                v1125 = 0u;
                v1124 = 0u;
                [(SBDisplayItemLayoutAttributes *)v567 slideOverConfiguration];
                SBInactiveDisplayItemSlideOverConfigurationFromSlideOverConfiguration(&v1239, &v1124);
                [(SBDisplayItemLayoutAttributes *)v567 normalizedCenter];
                isPositionSystemManaged = [(SBDisplayItemLayoutAttributes *)v567 isPositionSystemManaged];
                isCascaded = [(SBDisplayItemLayoutAttributes *)v567 isCascaded];
                if (SBDisplayItemSizingPolicyIsValid(rect_8d) && (v1239 = v1262, *&v1240 = v1263, SBDisplayItemAttributedSizeIsValid(&v1239)))
                {
                  authenticator = [(SBHomeScreenConfigurationServer *)v567 authenticator];
                  if (authenticator)
                  {
                    v949 = +[SBMainSwitcherControllerCoordinator sharedInstance];
                    [v949 _setInterfaceOrientationFromUserResizingIfSupported:authenticator forSceneHandle:sceneHandle];
                  }

                  v950 = [SBDisplayItemLayoutAttributes alloc];
                  [(SBHomeScreenConfigurationServer *)v557 queue];
                  SBDisplayItemAttributedSizeUnspecified(&v1239);
                  v1122 = v1262;
                  v1123 = v1263;
                  v1120 = v1127;
                  v1121 = v1128;
                  v1117 = v1124;
                  v1118 = v1125;
                  v1119 = v1126;
                  LOBYTE(v908) = isPositionSystemManaged;
                  v906 = 0;
                  v907 = &v1239;
                  v570 = [SBDisplayItemLayoutAttributes initWithContentOrientation:v950 lastInteractionTime:? sizingPolicy:? attributedSize:? tileConfiguration:? slideOverConfiguration:? normalizedCenter:? cascaded:? occlusionState:? attributedUserSizeBeforeOverlapping:? unoccludedPeekingCenter:? positionIsSystemManaged:?];

LABEL_965:
                  v557 = v570;
                }

                else
                {
                  v575 = [(SBDisplayItemLayoutAttributes *)v557 attributesByModifyingCascaded:isCascaded];
                }
              }
            }
          }
        }

        if ((isFlexibleWindowingEnabled & (v940 == 3)) != 0 && [v1041 count] == 1)
        {
          _windowingConfiguration = [elementIdentifiersToLayoutAttributes2 objectForKey:uniqueIdentifier44];
          if (!_windowingConfiguration)
          {
            normalizedCenter = [(SBDisplayItemLayoutAttributes *)v557 normalizedCenter];
            if (SBDisplayItemCenterIsUnspecified(normalizedCenter, v582))
            {
              goto LABEL_974;
            }

            _windowingConfiguration = [rect_24 _windowingConfiguration];
            [rect_24 containerBoundsForInterfaceOrientation:{objc_msgSend(rect_16, "interfaceOrientation")}];
            v584 = v583;
            v586 = v585;
            v588 = v587;
            v590 = v589;
            [(SBDisplayItemLayoutAttributes *)v557 centerInBounds:v583, v585, v587];
            [_windowingConfiguration defaultWindowSize];
            [_windowingConfiguration screenEdgePadding];
            [SBDisplayItemLayoutAttributes sizeInBounds:v557 defaultSize:? screenEdgePadding:?];
            SBRectWithSize();
            UIRectCenteredAboutPoint();
            v592 = v591;
            v594 = v593;
            v596 = v595;
            v598 = v597;
            v1266.origin.x = v584;
            v1266.origin.y = v586;
            v1266.size.width = v588;
            v1266.size.height = v590;
            v1277.origin.x = v592;
            v1277.origin.y = v594;
            v1277.size.width = v596;
            v1277.size.height = v598;
            if (!CGRectContainsRect(v1266, v1277))
            {
              UIRectGetCenter();
              v590 = [SBDisplayItemLayoutAttributes normalizedPointForPoint:v599 inBounds:v600, v584, v586, v588, v590];
              v602 = [(SBDisplayItemLayoutAttributes *)v557 attributesByModifyingNormalizedCenter:v590, v602];

              v557 = v602;
            }
          }
        }

LABEL_974:
        memset(&v1262, 0, 40);
        [(SBDisplayItemLayoutAttributes *)v557 slideOverConfiguration];
        *&v1239.a = *&v1262.a;
        *&v1239.c = *&v1262.c;
        v1239.tx = v1262.tx;
        if (SBDisplayItemSlideOverConfigurationIsValid(&v1239) && BYTE1(v1262.tx) == 1)
        {
          BYTE1(v1262.tx) = 0;
          *&v1239.a = *&v1262.a;
          *&v1239.c = *&v1262.c;
          v1239.tx = v1262.tx;
          v577 = [SBDisplayItemLayoutAttributes attributesByModifyingSlideOverConfiguration:v557];
        }

        else
        {
          *&v1239.a = *&v1262.a;
          *&v1239.c = *&v1262.c;
          v1239.tx = v1262.tx;
          if (!SBDisplayItemSlideOverConfigurationIsValid(&v1239) || ([SBDisplayItem displayItemForLayoutElement:v517], v578 = objc_claimAutoreleasedReturnValue(), v579 = BSEqualObjects(), v578, (v579 & 1) != 0))
          {
            v580 = v557;
            goto LABEL_982;
          }

          [(SBDisplayItemLayoutAttributes *)v557 slideOverConfiguration];
          SBInactiveDisplayItemSlideOverConfigurationFromSlideOverConfiguration(&v1122, &v1239);
          v577 = [SBDisplayItemLayoutAttributes attributesByModifyingSlideOverConfiguration:v557];
        }

        v580 = v577;

LABEL_982:
        [v1035 setObject:v580 forKey:{uniqueIdentifier44, v906, v907, v908}];
      }

      v514 = [v1041 countByEnumeratingWithState:&v1135 objects:v1247 count:16];
    }

    while (v514);
  }

  if ((isFlexibleWindowingEnabled & 1) == 0)
  {
    v624 = 0;
    goto LABEL_1107;
  }

  allObjects = [v1041 allObjects];
  v1115[0] = MEMORY[0x277D85DD0];
  v1115[1] = 3221225472;
  v1115[2] = __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_21;
  v1115[3] = &unk_2783B9CF8;
  v1008 = v1035;
  v1116 = v1008;
  v1062 = [allObjects sortedArrayUsingComparator:v1115];

  v605 = [v979 count];
  if (!v979 || [v1041 count] <= v605)
  {
    goto LABEL_1010;
  }

  firstObject2 = [v1062 firstObject];
  uniqueIdentifier47 = [firstObject2 uniqueIdentifier];
  v608 = [v1008 objectForKey:uniqueIdentifier47];
  queue2 = [(SBHomeScreenConfigurationServer *)v608 queue];

  v1114 = 0u;
  v1113 = 0u;
  v1112 = 0u;
  v1111 = 0u;
  reverseObjectEnumerator = [v1062 reverseObjectEnumerator];
  v611 = [reverseObjectEnumerator countByEnumeratingWithState:&v1111 objects:v1246 count:16];
  if (!v611)
  {
LABEL_1009:

    goto LABEL_1010;
  }

  LOBYTE(v612) = 0;
  v613 = 0;
  v614 = *v1112;
  while (2)
  {
    for (i8 = 0; i8 != v611; ++i8)
    {
      if (*v1112 != v614)
      {
        objc_enumerationMutation(reverseObjectEnumerator);
      }

      v616 = *(*(&v1111 + 1) + 8 * i8);
      workspaceEntity5 = [v616 workspaceEntity];
      deviceApplicationSceneEntity3 = [workspaceEntity5 deviceApplicationSceneEntity];

      if (deviceApplicationSceneEntity3 && (objc_msgSend_containsObject_(v979) & 1) == 0)
      {
        uniqueIdentifier48 = [v616 uniqueIdentifier];
        v620 = [v1008 objectForKey:uniqueIdentifier48];
        ++queue2;
        v621 = [SBDisplayItemLayoutAttributes attributesByModifyingLastInteractionTime:v620];

        [v1008 setObject:v621 forKey:uniqueIdentifier48];
        ++v613;
LABEL_1002:
        v612 = 1;
        goto LABEL_1003;
      }

      ++v613;
      if (v612)
      {
        goto LABEL_1002;
      }

      if (v613 == [v979 count])
      {

        goto LABEL_1009;
      }

      v612 = 0;
LABEL_1003:
    }

    v611 = [reverseObjectEnumerator countByEnumeratingWithState:&v1111 objects:v1246 count:16];
    if (v611)
    {
      continue;
    }

    break;
  }

  if (v612)
  {
    allObjects2 = [v1041 allObjects];
    v1109[0] = MEMORY[0x277D85DD0];
    v1109[1] = 3221225472;
    v1109[2] = __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_22;
    v1109[3] = &unk_2783B9CF8;
    v1110 = v1008;
    v623 = [allObjects2 sortedArrayUsingComparator:v1109];

    reverseObjectEnumerator = v1110;
    v1062 = v623;
    goto LABEL_1009;
  }

LABEL_1010:
  maximumNumberOfScenesOnStage = [rect_24 maximumNumberOfScenesOnStage];
  v1025 = objc_opt_new();
  settlesMultiAppFullScreenSpacesImmediately = [v1002 settlesMultiAppFullScreenSpacesImmediately];
  v1030 = [v1062 count];
  if (v1030 < 1)
  {
    goto LABEL_1030;
  }

  v625 = 0;
  v1005 = 0;
  v626 = 0;
  v627 = 1;
  while (2)
  {
    v628 = [v1062 objectAtIndex:v625];
    if (!SBLayoutRoleIsValidForSplitView([v628 layoutRole]))
    {
      [v1025 addObject:v628];
      goto LABEL_1029;
    }

    if (isAutomaticStageCreationEnabled)
    {
      goto LABEL_1026;
    }

    uniqueIdentifier49 = [v628 uniqueIdentifier];
    v630 = [v1008 objectForKey:uniqueIdentifier49];

    workspaceEntity6 = [v628 workspaceEntity];
    deviceApplicationSceneEntity4 = [workspaceEntity6 deviceApplicationSceneEntity];

    if (!deviceApplicationSceneEntity4)
    {

LABEL_1026:
      if (v626 < maximumNumberOfScenesOnStage)
      {
        [v1025 addObject:v628];
      }

      ++v626;
LABEL_1029:

      v627 = 0;
      if (v1030 == ++v625)
      {
        goto LABEL_1030;
      }

      continue;
    }

    break;
  }

  v633 = [SBDisplayItem displayItemForLayoutElement:v628];
  v634 = [rect_24 _isDisplayItemFullScreen:v633 preferredAttributes:v630];
  v635 = v634;
  if ((v627 & v634) != 1)
  {
    v641 = v634 & v1005 ^ 1;
LABEL_1025:

    v1005 |= v635;
    if (!v641)
    {
      goto LABEL_1029;
    }

    goto LABEL_1026;
  }

  [v1025 addObject:v628];
  if (settlesMultiAppFullScreenSpacesImmediately)
  {
    goto LABEL_1184;
  }

  if (v625 >= v1030 - 1)
  {
LABEL_1021:
    v641 = 1;
    goto LABEL_1025;
  }

  recta = [v1062 objectAtIndex:v625 + 1];
  workspaceEntity7 = [recta workspaceEntity];
  deviceApplicationSceneEntity5 = [workspaceEntity7 deviceApplicationSceneEntity];

  if (!deviceApplicationSceneEntity5 || ([recta uniqueIdentifier], v637 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v1008, "objectForKey:", v637), v638 = objc_claimAutoreleasedReturnValue(), v637, +[SBDisplayItem displayItemForLayoutElement:](SBDisplayItem, "displayItemForLayoutElement:", recta), v639 = objc_claimAutoreleasedReturnValue(), v640 = objc_msgSend(rect_24, "_isDisplayItemFullScreen:preferredAttributes:", v639, v638), v639, v638, (v640 & 1) == 0))
  {

    goto LABEL_1021;
  }

LABEL_1184:
LABEL_1030:
  v642 = [v1025 count];
  if (v642 == [v1062 count])
  {
    v1035 = v1008;
    v1009 = v1062;
  }

  else
  {
    if (v1228[5])
    {
      v1108[0] = MEMORY[0x277D85DD0];
      v1108[1] = 3221225472;
      v1108[2] = __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_23;
      v1108[3] = &unk_2783B9EB8;
      v1108[4] = &v1227;
      v643 = [v1062 bs_firstObjectPassingTest:v1108];
      if (v643)
      {
        [v1025 addObject:v643];
      }
    }

    entities9 = [v1002 entities];
    v1106[0] = MEMORY[0x277D85DD0];
    v1106[1] = 3221225472;
    v1106[2] = __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_24;
    v1106[3] = &unk_2783B9EE0;
    v645 = entities9;
    v1107 = v645;
    v646 = MEMORY[0x223D6F7F0](v1106);
    v1104[0] = MEMORY[0x277D85DD0];
    v1104[1] = 3221225472;
    v1104[2] = __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_26;
    v1104[3] = &unk_2783B9F08;
    v647 = v646;
    v1105 = v647;
    v648 = [v1025 bs_map:v1104];
    allObjects3 = [v648 allObjects];
    v1102[0] = MEMORY[0x277D85DD0];
    v1102[1] = 3221225472;
    v1102[2] = __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_27;
    v1102[3] = &unk_2783B9F08;
    v650 = v647;
    v1103 = v650;
    v651 = [v1025 bs_compactMap:v1102];
    anyObject = [v651 anyObject];
    v1100[0] = MEMORY[0x277D85DD0];
    v1100[1] = 3221225472;
    v1100[2] = __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_28;
    v1100[3] = &unk_2783B9F08;
    v653 = v650;
    v1101 = v653;
    v654 = [v1025 bs_compactMap:v1100];
    anyObject2 = [v654 anyObject];
    [v1002 setEntities:allObjects3 withPolicy:0 centerEntity:anyObject floatingEntity:anyObject2];

    v1099 = 0u;
    v1098 = 0u;
    v1097 = 0u;
    v1096 = 0u;
    entities10 = [v1002 entities];
    v657 = [entities10 copy];

    v658 = [v657 countByEnumeratingWithState:&v1096 objects:v1245 count:16];
    if (v658)
    {
      v659 = *v1097;
      do
      {
        for (i9 = 0; i9 != v658; ++i9)
        {
          if (*v1097 != v659)
          {
            objc_enumerationMutation(v657);
          }

          v661 = *(*(&v1096 + 1) + 8 * i9);
          if (([v661 isEmptyWorkspaceEntity] & 1) != 0 || objc_msgSend(v661, "isPreviousWorkspaceEntity"))
          {
            [v1002 setEntity:0 forLayoutRole:{objc_msgSend(v661, "layoutRole")}];
          }
        }

        v658 = [v657 countByEnumeratingWithState:&v1096 objects:v1245 count:16];
      }

      while (v658);
    }

    entities11 = [v1002 entities];
    v1094[0] = MEMORY[0x277D85DD0];
    v1094[1] = 3221225472;
    v1094[2] = __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_29;
    v1094[3] = &unk_2783B9F30;
    v1095 = &__block_literal_global_216;
    v663 = [entities11 bs_map:v1094];

    v1092[0] = MEMORY[0x277D85DD0];
    v1092[1] = 3221225472;
    v1092[2] = __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_30;
    v1092[3] = &unk_2783B9F58;
    v1041 = v663;
    v1093 = v1041;
    v664 = [v1008 bs_filter:v1092];
    v1035 = [v664 mutableCopy];

    v665 = [v1053 _zOrderComparatorFor:v1035];
    bs_array2 = [v1041 bs_array];
    v1009 = [bs_array2 sortedArrayUsingComparator:v665];

    v1030 = [v1009 count];
  }

  if (v940 == 3)
  {
    v667 = [elementIdentifiersToLayoutAttributes2 count];
    if (v667 < [v1035 count])
    {
      allKeys = [elementIdentifiersToLayoutAttributes2 allKeys];
      bs_set2 = [allKeys bs_set];

      allKeys2 = [v1035 allKeys];
      v1090[0] = MEMORY[0x277D85DD0];
      v1090[1] = 3221225472;
      v1090[2] = __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_32;
      v1090[3] = &unk_2783A8B78;
      v671 = bs_set2;
      v1091 = v671;
      v672 = [allKeys2 bs_containsObjectPassingTest:v1090];

      if (v672)
      {
        v1088[0] = MEMORY[0x277D85DD0];
        v1088[1] = 3221225472;
        v1088[2] = __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_33;
        v1088[3] = &unk_2783B9F80;
        v1089 = elementIdentifiersToLayoutAttributes2;
        v673 = [v1009 bs_compactMap:v1088];
        bs_set3 = [v673 bs_set];

        v960 = bs_set3;
      }
    }
  }

  firstObject3 = [v1009 firstObject];
  v676 = firstObject3;
  if (!firstObject3)
  {
    v624 = 0;
    goto LABEL_1106;
  }

  uniqueIdentifier50 = [firstObject3 uniqueIdentifier];
  v1006 = [v1035 objectForKey:uniqueIdentifier50];
  v1063 = uniqueIdentifier50;
  if (![(SBDisplayItemLayoutAttributes *)v1006 isPositionSystemManaged])
  {
    v624 = 0;
    goto LABEL_1105;
  }

  isCascaded2 = [(SBDisplayItemLayoutAttributes *)v1006 isCascaded];
  elements3 = [rect_16 elements];
  if ([elements3 count])
  {
    v679 = 0;
  }

  else
  {
    v679 = [v1041 count] == 1;
  }

  v1001 = [v1041 bs_compactMap:&__block_literal_global_125_0];
  v1000 = [elements3 bs_compactMap:&__block_literal_global_127];
  if ([v1001 isSubsetOfSet:?])
  {
    v681 = 0;
    v682 = 1;
  }

  else
  {
    v683 = [v1041 bs_map:&__block_literal_global_129];
    rectb = v679;
    rect_8b = isCascaded2;
    v1087 = 0u;
    v1086 = 0u;
    v1084 = 0u;
    v1085 = 0u;
    _recentAppLayouts6 = [v1053 _recentAppLayouts];
    v685 = [_recentAppLayouts6 recentsIncludingHiddenAppLayouts:0];

    v686 = 0;
    v687 = [v685 countByEnumeratingWithState:&v1084 objects:v1244 count:16];
    if (v687)
    {
      v688 = *v1085;
      while (2)
      {
        for (i10 = 0; i10 != v687; ++i10)
        {
          if (*v1085 != v688)
          {
            objc_enumerationMutation(v685);
          }

          v690 = *(*(&v1084 + 1) + 8 * i10);
          if (v686)
          {
            v686 = 1;
          }

          else if ([*(*(&v1084 + 1) + 8 * i10) containsItemWithUniqueIdentifier:v1063])
          {
            preferredDisplayIdentity = [v690 preferredDisplayIdentity];
            displayIdentity5 = [rect_24 displayIdentity];
            v693 = [preferredDisplayIdentity isEqual:displayIdentity5];

            v686 = v693 ^ 1;
          }

          else
          {
            v686 = 0;
          }

          allItems9 = [v690 allItems];
          bs_set4 = [allItems9 bs_set];
          v696 = [v683 isEqual:bs_set4];

          if (v696)
          {
            v681 = 0;
            goto LABEL_1083;
          }
        }

        v687 = [v685 countByEnumeratingWithState:&v1084 objects:v1244 count:16];
        if (v687)
        {
          continue;
        }

        break;
      }
    }

    v681 = 1;
LABEL_1083:

    v682 = v686 ^ 1;
    isCascaded2 = rect_8b;
    v679 = rectb;
  }

  if ((isCascaded2 & (v681 | v679)) == 1)
  {
    v697 = [(SBDisplayItemLayoutAttributes *)v1006 attributesByModifyingCascaded:?];

    v1006 = [(SBDisplayItemLayoutAttributes *)v697 attributesByModifyingNormalizedCenter:0.0];

    [v1035 setObject:v1006 forKey:v1063];
  }

  if ((v681 & [rect_16 isDisplayExternal]) != 1 || objc_msgSend(v1041, "count") < 2)
  {
    v624 = 0;
    goto LABEL_1104;
  }

  v698 = [SBDisplayItem displayItemForLayoutElement:v676];
  if ([rect_24 _isDisplayItemFullScreen:v698 preferredAttributes:v1006] & v682)
  {
    v624 = 0;
    goto LABEL_1103;
  }

  if (v1030 < 2)
  {
LABEL_1101:
    v706 = 0;
    v707 = 0;
    v624 = 0;
    goto LABEL_1102;
  }

  v699 = 1;
  while (2)
  {
    v700 = [v1009 objectAtIndex:v699];
    workspaceEntity8 = [v700 workspaceEntity];
    isDeviceApplicationSceneEntity2 = [workspaceEntity8 isDeviceApplicationSceneEntity];

    if (!isDeviceApplicationSceneEntity2)
    {
LABEL_1100:

      if (v1030 == ++v699)
      {
        goto LABEL_1101;
      }

      continue;
    }

    break;
  }

  v703 = [SBDisplayItem displayItemForLayoutElement:v700];
  uniqueIdentifier51 = [v700 uniqueIdentifier];
  v705 = [v1035 objectForKey:uniqueIdentifier51];

  if (([rect_24 _isDisplayItemFullScreen:v703 preferredAttributes:v705] & 1) == 0)
  {
    if (([(SBDisplayItemLayoutAttributes *)v705 isCascaded]& 1) != 0 || [(SBDisplayItemLayoutAttributes *)v705 isPositionSystemManaged])
    {
      v707 = v700;
      v706 = v703;
      goto LABEL_1222;
    }

    goto LABEL_1100;
  }

  v707 = 0;
  v706 = 0;
LABEL_1222:

  v624 = 0;
  if (v707 && v706)
  {
    rect_8c = objc_alloc_init(SBDisplayItemLayoutAttributesCalculator);
    windowScene2 = [rect_24 windowScene];
    v813 = [SBMainDisplayLayoutState alloc];
    displayOrdinal3 = [rect_16 displayOrdinal];
    LOBYTE(v910) = [rect_16 isDisplayExternal];
    LOBYTE(v907) = v913;
    v624 = [(SBMainDisplayLayoutState *)v813 _initWithLayoutElements:v1041 spaceConfiguration:v914 elementIdentifiersToLayoutAttributes:v1035 floatingConfiguration:requestedFloatingConfiguration unlockedEnvironmentMode:v940 floatingSwitcherVisible:IsYes centerConfiguration:v922 centerEntityModal:v907 peekConfiguration:v942 bundleIDShowingAppExpose:bundleIDShowingAppExpose4 windowPickerRole:v935 displayOrdinal:displayOrdinal3 isDisplayExternal:v910];
    interfaceOrientation6 = [v624 interfaceOrientation];
    appLayout14 = [v624 appLayout];
    layoutAttributesMap2 = [v624 layoutAttributesMap];
    appLayout15 = [rect_16 appLayout];
    v819 = -[SBDisplayItemLayoutAttributesCalculator appLayoutByPerformingAutoLayoutForAppLayout:previousAppLayout:usingLayoutAttributes:options:containerOrientation:windowScene:source:itemsNeedingPositionSnapping:itemsNeedingSizeSnapping:](rect_8c, "appLayoutByPerformingAutoLayoutForAppLayout:previousAppLayout:usingLayoutAttributes:options:containerOrientation:windowScene:source:itemsNeedingPositionSnapping:itemsNeedingSizeSnapping:", appLayout14, appLayout15, layoutAttributesMap2, [v1053 _autoLayoutOptionsForNewAppLayout:appLayout14 previousAppLayout:appLayout15 request:request], interfaceOrientation6, windowScene2, objc_msgSend(request, "source"), v960, 0);
    v973 = appLayout15;

    -[SBDisplayItemLayoutAttributesCalculator frameForLayoutRole:inAppLayout:containerOrientation:windowScene:](rect_8c, "frameForLayoutRole:inAppLayout:containerOrientation:windowScene:", [v819 layoutRoleForItem:v698], v819, interfaceOrientation6, windowScene2);
    v821 = v820;
    v823 = v822;
    -[SBDisplayItemLayoutAttributesCalculator frameForLayoutRole:inAppLayout:containerOrientation:windowScene:](rect_8c, "frameForLayoutRole:inAppLayout:containerOrientation:windowScene:", [v819 layoutRoleForItem:v706], v819, interfaceOrientation6, windowScene2);
    v825 = v824;
    v827 = v826;
    [rect_24 containerBoundsForInterfaceOrientation:interfaceOrientation6];
    v984 = v828;
    v976 = v829;
    v977 = v830;
    v978 = v831;
    _windowingConfiguration2 = [rect_24 _windowingConfiguration];
    _prefersDockHidden = [rect_24 _prefersDockHidden];
    [_windowingConfiguration2 floatingDockHeightWithTopAndBottomPadding];
    v835 = v834;
    rectc = v825;
    v836 = [rect_24 _autoLayoutSpaceForAppLayout:v819];
    [v836 boundingBox];
    v838 = v837;
    v840 = v839;

    [_windowingConfiguration2 statusBarHeight];
    v842 = v841;
    v843 = v838 + v840;
    if (v838 + v840 > v977 - v835)
    {
      v844 = 1;
    }

    else
    {
      v844 = _prefersDockHidden;
    }

    if (v844)
    {
      v845 = v977;
    }

    else
    {
      v845 = v977 - v835;
    }

    v846 = v984;
    v847 = v978;
    if ([windowManagementContext isAutomaticStageCreationEnabled])
    {
      v846 = v984;
      v847 = v978;
      if (([rect_24 _prefersStripHiddenAndDisabled] & 1) == 0)
      {
        v846 = v984;
        v847 = v978;
        if ([rect_24 _areContinuousExposeStripsUnoccluded])
        {
          [_windowingConfiguration2 stripWidth];
          v846 = v984 + v848;
          v847 = v978 - v848;
        }
      }
    }

    v849 = v976 + v842;
    v850 = v845 - v842;
    v851 = v850;
    v852 = v847;
    v853 = atan2f(v851, v852);
    v854 = __sincosf_stret(v853);
    memset(&v1262, 0, sizeof(v1262));
    v855 = *(MEMORY[0x277CBF2C0] + 16);
    *&v1239.a = *MEMORY[0x277CBF2C0];
    *&v1239.c = v855;
    *&v1239.tx = *(MEMORY[0x277CBF2C0] + 32);
    CGAffineTransformTranslate(&v1262, &v1239, (v854.__cosval * ((v842 + v842) / v854.__sinval)), v842 + v842);
    v1239 = v1262;
    v1267.origin.x = rectc;
    v1267.origin.y = v827;
    v1267.size.width = v821;
    v1267.size.height = v823;
    v1268 = CGRectApplyAffineTransform(v1267, &v1239);
    x = v1268.origin.x;
    y = v1268.origin.y;
    width = v1268.size.width;
    height = v1268.size.height;
    rectd = v846;
    v1268.origin.x = v846;
    v860 = v849;
    v1268.origin.y = v849;
    v1268.size.width = v847;
    v1268.size.height = v850;
    v1278.origin.x = x;
    v1278.origin.y = y;
    v1278.size.width = width;
    v1278.size.height = height;
    if (!CGRectContainsRect(v1268, v1278))
    {
      v1269.origin.x = x;
      v1269.origin.y = y;
      v1269.size.width = width;
      v1269.size.height = height;
      MaxX = CGRectGetMaxX(v1269);
      v1270.origin.x = rectd;
      v1270.origin.y = v860;
      v1270.size.width = v847;
      v1270.size.height = v850;
      if (MaxX > CGRectGetMaxX(v1270))
      {
        v1271.origin.x = rectd;
        v1271.origin.y = v860;
        v1271.size.width = v847;
        v1271.size.height = v850;
        x = CGRectGetMinX(v1271);
      }
    }

    v1272.origin.x = rectd;
    v1272.origin.y = v860;
    v1272.size.width = v847;
    v1272.size.height = v850;
    v1279.origin.x = x;
    v1279.origin.y = y;
    v1279.size.width = width;
    v1279.size.height = height;
    if (!CGRectContainsRect(v1272, v1279))
    {
      v1273.origin.x = x;
      v1273.origin.y = y;
      v1273.size.width = width;
      v1273.size.height = height;
      MaxY = CGRectGetMaxY(v1273);
      v1274.origin.x = rectd;
      v1274.origin.y = v860;
      v1274.size.width = v847;
      v1274.size.height = v850;
      if (MaxY > CGRectGetMaxY(v1274))
      {
        v1275.origin.x = rectd;
        v1275.origin.y = v860;
        v1275.size.width = v847;
        v1275.size.height = v850;
        y = CGRectGetMinY(v1275);
      }
    }

    v1276.origin.x = rectd;
    v1276.origin.y = v860;
    v1276.size.width = v847;
    v1276.size.height = v850;
    v1280.origin.x = x;
    v1280.origin.y = y;
    v1280.size.width = width;
    v1280.size.height = height;
    v863 = CGRectContainsRect(v1276, v1280);
    v977 = 0.5;
    v865 = 0.5;
    if (v863)
    {
      UIRectGetCenter();
      v977 = [SBDisplayItemLayoutAttributes normalizedPointForPoint:v866 inBounds:v867, v984, v976, v978, v977];
    }

    v865 = [(SBDisplayItemLayoutAttributes *)v1006 attributesByModifyingNormalizedCenter:v977, v865];

    v1006 = [(SBDisplayItemLayoutAttributes *)v865 attributesByModifyingCascaded:?];

    [v1035 setObject:v1006 forKey:v1063];
  }

LABEL_1102:

LABEL_1103:
LABEL_1104:

LABEL_1105:
LABEL_1106:

LABEL_1107:
  v708 = [SBMainDisplayLayoutState alloc];
  displayOrdinal4 = [rect_16 displayOrdinal];
  LOBYTE(v910) = [rect_16 isDisplayExternal];
  LOBYTE(v907) = v913;
  v1057 = [(SBMainDisplayLayoutState *)v708 _initWithLayoutElements:v1041 spaceConfiguration:v914 elementIdentifiersToLayoutAttributes:v1035 floatingConfiguration:requestedFloatingConfiguration unlockedEnvironmentMode:v940 floatingSwitcherVisible:IsYes centerConfiguration:v922 centerEntityModal:v907 peekConfiguration:v942 bundleIDShowingAppExpose:bundleIDShowingAppExpose4 windowPickerRole:v935 displayOrdinal:displayOrdinal4 isDisplayExternal:v910];

  _Block_object_dispose(&v1227, 8);
LABEL_1108:
  *&v1122.a = [v1057 interfaceOrientation];
  v710 = SBLogCommon();
  if (os_log_type_enabled(v710, OS_LOG_TYPE_DEFAULT))
  {
    v711 = SBStringForUnlockedEnvironmentMode([v1057 unlockedEnvironmentMode]);
    LODWORD(v1262.a) = 138543362;
    *(&v1262.a + 4) = v711;
    _os_log_impl(&dword_21ED4E000, v710, OS_LOG_TYPE_DEFAULT, "[92869424] unlockedEnvironmentMode: %{public}@", &v1262, 0xCu);
  }

  v1079 = 0;
  [rect_24 switcherOrientation:&v1122 elementsOrientations:&v1079 forTransitionRequest:request previousLayoutState:rect_16 layoutState:v1057];
  v1026 = v1079;
  [v1057 setInterfaceOrientation:*&v1122.a];
  [v1057 setInterfaceOrientationByLayoutElementIdentifier:v1026];
  v712 = [rect_24 layoutElementSizingPoliciesForLayoutState:v1057];
  [v1057 _updateSizingPoliciesForLayoutElements:v712];

  if (source == 14)
  {
    interfaceOrientation7 = [v1057 interfaceOrientation];
    v714 = interfaceOrientation7 == [rect_16 interfaceOrientation] ? 1 : isBackground;
    if ((v714 & 1) == 0)
    {
      appLayout16 = [rect_16 appLayout];
      displayOrdinal5 = [v1057 displayOrdinal];
      if ((*&v1122.a - 1) < 2)
      {
        v717 = 1;
      }

      else
      {
        v717 = 2 * ((*&v1122.a - 3) < 2);
      }

      v718 = [displayItemLayoutAttributesProvider layoutAttributesMapForAppLayout:appLayout16 displayOrdinal:displayOrdinal5 orientation:v717];

      v719 = [v718 mutableCopy];
      v1076[0] = MEMORY[0x277D85DD0];
      v1076[1] = 3221225472;
      v1076[2] = __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_131;
      v1076[3] = &unk_2783B9FA8;
      v1042 = v1026;
      v1077 = v1042;
      v720 = v719;
      v1078 = v720;
      [v718 enumerateKeysAndObjectsUsingBlock:v1076];
      v721 = v720;

      v1037 = [SBMainDisplayLayoutState alloc];
      elements4 = [v1057 elements];
      interfaceOrientation8 = [v1057 interfaceOrientation];
      spaceConfiguration3 = [v1057 spaceConfiguration];
      v722 = v721;
      dictionary3 = [MEMORY[0x277CBEB38] dictionary];
      v1240 = 0u;
      memset(&v1239, 0, sizeof(v1239));
      allKeys3 = [v722 allKeys];
      v725 = [allKeys3 countByEnumeratingWithState:&v1239 objects:&v1262 count:16];
      if (v725)
      {
        v726 = **&v1239.c;
        do
        {
          for (i11 = 0; i11 != v725; ++i11)
          {
            if (**&v1239.c != v726)
            {
              objc_enumerationMutation(allKeys3);
            }

            v728 = *(*&v1239.b + 8 * i11);
            v729 = [v722 objectForKey:v728];
            uniqueIdentifier52 = [v728 uniqueIdentifier];
            [dictionary3 setObject:v729 forKey:uniqueIdentifier52];
          }

          v725 = [allKeys3 countByEnumeratingWithState:&v1239 objects:&v1262 count:16];
        }

        while (v725);
      }

      v731 = [dictionary3 copy];
      floatingConfiguration3 = [v1057 floatingConfiguration];
      unlockedEnvironmentMode4 = [v1057 unlockedEnvironmentMode];
      isFloatingSwitcherVisible2 = [v1057 isFloatingSwitcherVisible];
      centerConfiguration3 = [v1057 centerConfiguration];
      isCenterEntityModal = [v1057 isCenterEntityModal];
      peekConfiguration3 = [v1057 peekConfiguration];
      bundleIDShowingAppExpose5 = [v1057 bundleIDShowingAppExpose];
      windowPickerRole2 = [v1057 windowPickerRole];
      displayOrdinal6 = [v1057 displayOrdinal];
      LOBYTE(v911) = [v1057 isDisplayExternal];
      LOBYTE(v909) = isCenterEntityModal;
      LOBYTE(v907) = isFloatingSwitcherVisible2;
      v740 = [(SBMainDisplayLayoutState *)v1037 _initWithLayoutElements:elements4 interfaceOrientation:interfaceOrientation8 interfaceOrientationByLayoutElement:v1042 spaceConfiguration:spaceConfiguration3 elementIdentifiersToLayoutAttributes:v731 floatingConfiguration:floatingConfiguration3 unlockedEnvironmentMode:unlockedEnvironmentMode4 floatingSwitcherVisible:v907 centerConfiguration:centerConfiguration3 centerEntityModal:v909 peekConfiguration:peekConfiguration3 bundleIDShowingAppExpose:bundleIDShowingAppExpose5 windowPickerRole:windowPickerRole2 displayOrdinal:displayOrdinal6 isDisplayExternal:v911];

      v1057 = v740;
    }
  }

  v1074 = 0u;
  v1075 = 0u;
  v1072 = 0u;
  v1073 = 0u;
  allKeys4 = [dictionary allKeys];
  v741 = [allKeys4 countByEnumeratingWithState:&v1072 objects:v1242 count:16];
  if (v741)
  {
    v742 = *v1073;
    do
    {
      for (i12 = 0; i12 != v741; ++i12)
      {
        if (*v1073 != v742)
        {
          objc_enumerationMutation(allKeys4);
        }

        v744 = *(*(&v1072 + 1) + 8 * i12);
        v745 = [dictionary objectForKey:v744];
        v746 = [dictionary2 objectForKey:v744];
        elementIdentifiersToLayoutAttributes3 = [v1057 elementIdentifiersToLayoutAttributes];
        uniqueIdentifier53 = [v745 uniqueIdentifier];
        v749 = [elementIdentifiersToLayoutAttributes3 objectForKey:uniqueIdentifier53];
        v750 = [v746 isEqual:v749];

        if (*&v1122.a)
        {
          v751 = v750;
        }

        else
        {
          v751 = 0;
        }

        if (v751 == 1)
        {
          appLayout17 = [v1057 appLayout];
          displayOrdinal7 = [v1057 displayOrdinal];
          if ((*&v1122.a - 1) < 2)
          {
            v754 = 1;
          }

          else
          {
            v754 = 2 * ((*&v1122.a - 3) < 2);
          }

          v755 = [displayItemLayoutAttributesProvider layoutAttributesForDisplayItem:v744 inAppLayout:appLayout17 displayOrdinal:displayOrdinal7 orientation:v754];

          [v1057 _setLayoutAttributes:v755 forLayoutElement:v745];
        }
      }

      v741 = [allKeys4 countByEnumeratingWithState:&v1072 objects:v1242 count:16];
    }

    while (v741);
  }

  appLayout18 = [v1057 appLayout];
  windowScene3 = [rect_24 windowScene];
  if (windowScene3)
  {
    v757 = appLayout18 == 0;
  }

  else
  {
    v757 = 1;
  }

  v758 = !v757;
  if ((v758 & isChamoisOrFlexibleWindowing) == 1)
  {
    v1011 = objc_alloc_init(SBDisplayItemLayoutAttributesCalculator);
    appLayout19 = [rect_16 appLayout];
    v759 = [v1053 _autoLayoutOptionsForNewAppLayout:appLayout18 previousAppLayout:appLayout19 request:request];
    if ((v953 | v952 & isFlexibleWindowingEnabled) & (isBackground ^ 1))
    {
      layoutAttributesMap3 = [v1057 layoutAttributesMap];
      v761 = -[SBDisplayItemLayoutAttributesCalculator appLayoutByPerformingAutoLayoutForAppLayout:previousAppLayout:usingLayoutAttributes:options:containerOrientation:windowScene:source:itemsNeedingPositionSnapping:itemsNeedingSizeSnapping:](v1011, "appLayoutByPerformingAutoLayoutForAppLayout:previousAppLayout:usingLayoutAttributes:options:containerOrientation:windowScene:source:itemsNeedingPositionSnapping:itemsNeedingSizeSnapping:", appLayout18, appLayout19, layoutAttributesMap3, v759, [v1057 interfaceOrientation], windowScene3, objc_msgSend(request, "source"), v960, 0);

      sceneRelevancyManager = [rect_24 sceneRelevancyManager];
      elementIdentifiersToLayoutAttributes4 = [v1057 elementIdentifiersToLayoutAttributes];
      a = v1122.a;
      elements5 = [v1057 elements];
      [v1053 _updateSceneRelevancyManager:sceneRelevancyManager forAppLayout:v761 applicationTransitionContext:v1039 elementIdentifiersToLayoutAttributes:elementIdentifiersToLayoutAttributes4 interfaceOrientation:*&a layoutAttributesProvider:displayItemLayoutAttributesProvider layoutElements:elements5];

      if ((v952 & isFlexibleWindowingEnabled) != 0)
      {
        zOrderedDeviceApplicationSceneEntities = [sceneRelevancyManager zOrderedDeviceApplicationSceneEntities];
        v1068[0] = MEMORY[0x277D85DD0];
        v1068[1] = 3221225472;
        v1068[2] = __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_2_133;
        v1068[3] = &unk_2783B9FD0;
        v1069 = sceneRelevancyManager;
        v1070 = _desktopSpaceItems;
        v1071 = v1057;
        [zOrderedDeviceApplicationSceneEntities enumerateObjectsUsingBlock:v1068];
      }
    }

    else
    {
      v761 = appLayout18;
    }

    layoutAttributesMap4 = [v1057 layoutAttributesMap];
    appLayout18 = -[SBDisplayItemLayoutAttributesCalculator appLayoutByPerformingAutoLayoutForAppLayout:previousAppLayout:usingLayoutAttributes:options:containerOrientation:windowScene:source:itemsNeedingPositionSnapping:itemsNeedingSizeSnapping:](v1011, "appLayoutByPerformingAutoLayoutForAppLayout:previousAppLayout:usingLayoutAttributes:options:containerOrientation:windowScene:source:itemsNeedingPositionSnapping:itemsNeedingSizeSnapping:", v761, appLayout19, layoutAttributesMap4, v759, [v1057 interfaceOrientation], windowScene3, objc_msgSend(request, "source"), v960, 0);

    v1066 = 0u;
    v1067 = 0u;
    v1064 = 0u;
    v1065 = 0u;
    allItems10 = [appLayout18 allItems];
    v1052 = [allItems10 countByEnumeratingWithState:&v1064 objects:v1241 count:16];
    if (v1052)
    {
      v1043 = *v1065;
      do
      {
        for (i13 = 0; i13 != v1052; i13 = i13 + 1)
        {
          if (*v1065 != v1043)
          {
            objc_enumerationMutation(allItems10);
          }

          v769 = *(*(&v1064 + 1) + 8 * i13);
          _displayItemLayoutAttributesProvider2 = [v1053 _displayItemLayoutAttributesProvider];
          displayOrdinal8 = [v1057 displayOrdinal];
          interfaceOrientation9 = [v1057 interfaceOrientation];
          if ((interfaceOrientation9 - 1) < 2)
          {
            v773 = 1;
          }

          else
          {
            v773 = 2 * ((interfaceOrientation9 - 3) < 2);
          }

          v774 = [_displayItemLayoutAttributesProvider2 layoutAttributesForDisplayItem:v769 inAppLayout:appLayout18 displayOrdinal:displayOrdinal8 orientation:v773];

          v775 = [v1057 elementWithRole:{objc_msgSend(appLayout18, "layoutRoleForItem:", v769)}];
          [v1057 _setLayoutAttributes:v774 forLayoutElement:v775];
          workspaceEntity9 = [v775 workspaceEntity];
          deviceApplicationSceneEntity6 = [workspaceEntity9 deviceApplicationSceneEntity];
          sceneHandle2 = [deviceApplicationSceneEntity6 sceneHandle];

          if (sceneHandle2 && ([sceneHandle2 supportsCenterWindow] & 1) == 0)
          {
            application9 = [sceneHandle2 application];
            if (application9)
            {
              v780 = [application9 lastWindowLayoutAttributesForDisplayOrdinal:{objc_msgSend(v1057, "displayOrdinal")}];
              v781 = v780;
              if (!v780 || (v782 = [(SBHomeScreenConfigurationServer *)v780 connections], v782 != [(SBHomeScreenConfigurationServer *)v774 connections]) || ([(SBDisplayItemLayoutAttributes *)v781 attributedSize], [(SBDisplayItemLayoutAttributes *)v774 attributedSize], !SBEqualDisplayItemAttributedSizes(&v1262, &v1239)) || (v783 = [(SBDisplayItemLayoutAttributes *)v781 normalizedCenter], v785 = v784, v783 != [(SBDisplayItemLayoutAttributes *)v774 normalizedCenter]) || v785 != v786 || (v787 = [(SBDisplayItemLayoutAttributes *)v781 isPositionSystemManaged], v787 != [(SBDisplayItemLayoutAttributes *)v774 isPositionSystemManaged]) || ([(SBDisplayItemLayoutAttributes *)v781 slideOverConfiguration], [(SBDisplayItemLayoutAttributes *)v774 slideOverConfiguration], !SBEqualDisplayItemSlideOverConfigurations(&v1262, &v1239)))
              {
                v788 = v774;
                _interfaceOrientationFromUserResizing = [sceneHandle2 _interfaceOrientationFromUserResizing];
                if (!_interfaceOrientationFromUserResizing || _interfaceOrientationFromUserResizing != [(SBHomeScreenConfigurationServer *)v788 authenticator])
                {
                  v790 = [SBDisplayItemLayoutAttributes attributesByModifyingContentOrientation:v788];

                  v788 = v790;
                }

                [application9 setLastWindowLayoutAttributes:v788 forDisplayOrdinal:{objc_msgSend(v1057, "displayOrdinal")}];
              }
            }
          }
        }

        v1052 = [allItems10 countByEnumeratingWithState:&v1064 objects:v1241 count:16];
      }

      while (v1052);
    }
  }

  v791 = v1057;

  return v791;
}

id __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isHomeScreenEntity] & 1) != 0 || (objc_msgSend(v2, "isEmptyWorkspaceEntity"))
  {
    v3 = 0;
  }

  else
  {
    v3 = [SBLayoutElement elementWithDescriptor:v2];
  }

  return v3;
}

void __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 applicationSceneEntity];
  [v2 setFrozen:0];
}

void __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 applicationSceneEntity];
  [v2 setFrozen:0];
}

id __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_4(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (![v5 isPreviousWorkspaceEntity])
  {
    goto LABEL_22;
  }

  v7 = [v5 previousLayoutRole];
  if (v7)
  {
    v9 = [a1[4] previousEntityForLayoutRole:v7];
    v8 = [v9 copy];

    if (!v8)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v8 = [v6 copy];
    if (!v8)
    {
      goto LABEL_22;
    }
  }

  v10 = [v8 layoutRole];
  if ([a1[5] isAnalogousToEntity:v8])
  {
    v11 = [a1[5] layoutRole] != v10;
  }

  else
  {
    v11 = 0;
  }

  if ([a1[6] isAnalogousToEntity:v8])
  {
    v12 = [a1[6] layoutRole] != v10;
  }

  else
  {
    v12 = 0;
  }

  if ([a1[7] isAnalogousToEntity:v8])
  {
    v13 = [a1[7] layoutRole] != v10;
  }

  else
  {
    v13 = 0;
  }

  if ([a1[8] isAnalogousToEntity:v8])
  {
    v14 = [a1[8] layoutRole] != v10;
  }

  else
  {
    v14 = 0;
  }

  if (!v11 && !v12 && !v13 && !v14)
  {
    [v8 clearActivationSettings];
    v15 = [v5 activationSettings];
    [v8 applyActivationSettings:v15];

    [v8 clearDeactivationSettings];
    v16 = [v5 deactivationSettings];
    [v8 applyDeactivationSettings:v16];

    goto LABEL_23;
  }

LABEL_22:
  v8 = +[(SBWorkspaceEntity *)SBEmptyWorkspaceEntity];
LABEL_23:

  return v8;
}

uint64_t __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_36(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isEmptyWorkspaceEntity])
  {
    v3 = 0;
  }

  else
  {
    v3 = [v2 isPreviousWorkspaceEntity] ^ 1;
  }

  return v3;
}

uint64_t __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_2_43(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

id __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 bundleIdentifier];
  v6 = [v4 uniqueIdentifier];

  v7 = [v3 _applicationSceneEntityFromApplicationBundleIdentifier:v5 uniqueIdentifier:v6 displayIdentity:*(a1 + 40)];

  return v7;
}

id __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 bundleIdentifier];
  v6 = [v4 uniqueIdentifier];

  v7 = [v3 _applicationSceneEntityFromApplicationBundleIdentifier:v5 uniqueIdentifier:v6 displayIdentity:*(a1 + 40)];

  return v7;
}

uint64_t __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_9(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isEmptyWorkspaceEntity])
  {
    v3 = 0;
  }

  else
  {
    v3 = [v2 isPreviousWorkspaceEntity] ^ 1;
  }

  return v3;
}

void __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_10(uint64_t a1, uint64_t a2)
{
  if (*(*(*(a1 + 40) + 8) + 24))
  {
    v2 = 0;
  }

  else
  {
    v2 = a2 >= 1;
  }

  if (v2 && SBLayoutRoleIsValidForSplitView(a2))
  {
    v5 = [*(a1 + 32) entityForLayoutRole:a2];
    v6 = v5;
    if (!v5 || (v8 = v5, v7 = [v5 isEmptyWorkspaceEntity], v6 = v8, v7))
    {
      *(*(*(a1 + 40) + 8) + 24) = a2;
    }
  }
}

void __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_11(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (a2 >= 5)
  {
    v7 = [*(a1 + 32) entityForLayoutRole:a2];
    if (v7)
    {
      v11 = v7;
      if ([v7 isPreviousWorkspaceEntity])
      {
        v8 = [*(a1 + 32) previousEntityForLayoutRole:a2];
        v9 = (*(*(a1 + 40) + 16))();

        v11 = v9;
      }

      v10 = [*(a1 + 32) entityForLayoutRole:a2];

      v7 = v11;
      if (v10 != v11)
      {
        [*(a1 + 32) setEntity:v11 forLayoutRole:a2];
        v7 = v11;
      }
    }

    else
    {
      *a3 = 1;
    }
  }
}

void __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_12(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = 1;
  v5 = SBLayoutRoleMax(v13, v4);
  v6 = v13;
  if (v5 < 1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    IsValidForSplitView = SBLayoutRoleIsValidForSplitView(v3);
    if (IsValidForSplitView)
    {
      break;
    }

LABEL_6:
    if (v3++ >= SBLayoutRoleMax(IsValidForSplitView, v8))
    {
      v3 = 0;
      goto LABEL_9;
    }
  }

  v9 = [*(a1 + 32) entityForLayoutRole:v3];
  v10 = v9;
  if (v9 && ![v9 isEmptyWorkspaceEntity])
  {
    v11 = [v10 isHomeScreenEntity];

    if (v11)
    {
      goto LABEL_9;
    }

    goto LABEL_6;
  }

LABEL_9:
  v6 = v13;
  if (v3)
  {
    [*(a1 + 32) setEntity:v13 forLayoutRole:v3];
    v6 = v13;
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

LABEL_11:
}

BOOL __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_13(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) removalContextForEntity:a2];
  v3 = v2 != 0;

  return v3;
}

uint64_t __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_14(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 uniqueIdentifier];
  v5 = [v3 uniqueIdentifier];

  v6 = [v4 isEqual:v5];
  return v6;
}

id __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_15(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (![v5 isPreviousWorkspaceEntity])
  {
    goto LABEL_7;
  }

  v7 = [v5 previousLayoutRole];
  v8 = v6;
  if (v7)
  {
    if (v7 != 1)
    {
      goto LABEL_7;
    }

    v8 = *(a1 + 32);
  }

  v9 = [v8 copy];
  if (v9)
  {
    v10 = v9;
    [v9 clearActivationSettings];
    v11 = [v5 activationSettings];
    [v10 applyActivationSettings:v11];

    [v10 clearDeactivationSettings];
    v12 = [v5 deactivationSettings];
    [v10 applyDeactivationSettings:v12];

    goto LABEL_8;
  }

LABEL_7:
  v10 = +[(SBWorkspaceEntity *)SBEmptyWorkspaceEntity];
LABEL_8:

  return v10;
}

void __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_16(uint64_t a1, uint64_t a2)
{
  if (a2 < 5)
  {
    return;
  }

  v4 = [*(a1 + 32) entityForLayoutRole:a2];
  if (!v4)
  {
    v5 = [SBPreviousWorkspaceEntity entityWithPreviousLayoutRole:a2];
LABEL_7:
    v8 = *(a1 + 80);
    v9 = [*(a1 + 32) previousEntityForLayoutRole:a2];
    v21 = (*(v8 + 16))(v8, v5, v9);

    v10 = [*(a1 + 32) entities];
    LODWORD(v8) = objc_msgSend_containsObject_(v10);

    if (v8)
    {

      v7 = 0;
    }

    else
    {
      v7 = v21;
    }

    goto LABEL_10;
  }

  v5 = v4;
  v6 = [v4 isPreviousWorkspaceEntity];
  v7 = v5;
  if (v6)
  {
    goto LABEL_7;
  }

LABEL_10:
  v22 = v7;
  if (([v7 isEmptyWorkspaceEntity] & 1) == 0 && (objc_msgSend(v22, "isHomeScreenEntity") & 1) == 0)
  {
    v11 = v22;
    if (!v22)
    {
      return;
    }

    v12 = *(a1 + 40);
    if (v12 && (v13 = [v12 isAnalogousToEntity:v22], v11 = v22, (v13 & 1) != 0) || (v14 = *(a1 + 48)) != 0 && (v15 = objc_msgSend(v14, "isAnalogousToEntity:", v22), v11 = v22, (v15 & 1) != 0) || (v16 = *(a1 + 56)) != 0 && (v17 = objc_msgSend(v16, "isAnalogousToEntity:", v22), v11 = v22, (v17 & 1) != 0) || (v18 = *(a1 + 64)) != 0 && (v19 = objc_msgSend(v18, "isAnalogousToEntity:", v22), v11 = v22, (v19 & 1) != 0))
    {
      [*(a1 + 32) setEntity:0 forLayoutRole:a2];
    }

    else
    {
      [*(a1 + 32) setEntity:v11 forLayoutRole:*(*(*(a1 + 96) + 8) + 24)];
      v20 = (*(*(a1 + 88) + 16))();
      if (v20)
      {
        [*(a1 + 72) addObject:v20];
        ++*(*(*(a1 + 96) + 8) + 24);
      }
    }
  }
}

uint64_t __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_17(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [*(a1 + 32) uniqueIdentifier];
  v5 = [v3 isEqual:v4];

  return v5;
}

uint64_t __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_18(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [*(a1 + 32) uniqueIdentifier];
  v5 = [v3 isEqual:v4];

  return v5;
}

uint64_t __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_19(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 type])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 containsItemWithBundleIdentifier:*(a1 + 32)];
  }

  return v4;
}

uint64_t __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_20(uint64_t a1, void *a2)
{
  v3 = [a2 bundleIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

uint64_t __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_21(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [a2 uniqueIdentifier];
  v8 = [v5 objectForKey:v7];

  v9 = *(a1 + 32);
  v10 = [v6 uniqueIdentifier];

  v11 = [v9 objectForKey:v10];

  v12 = [MEMORY[0x277CCABB0] numberWithInteger:-[SBHomeScreenConfigurationServer queue](v11)];
  v13 = [MEMORY[0x277CCABB0] numberWithInteger:-[SBHomeScreenConfigurationServer queue](v8)];
  v14 = [v12 compare:v13];

  return v14;
}

uint64_t __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_22(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [a2 uniqueIdentifier];
  v8 = [v5 objectForKey:v7];

  v9 = *(a1 + 32);
  v10 = [v6 uniqueIdentifier];

  v11 = [v9 objectForKey:v10];

  v12 = [MEMORY[0x277CCABB0] numberWithInteger:-[SBHomeScreenConfigurationServer queue](v11)];
  v13 = [MEMORY[0x277CCABB0] numberWithInteger:-[SBHomeScreenConfigurationServer queue](v8)];
  v14 = [v12 compare:v13];

  return v14;
}

uint64_t __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_23(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [*(*(*(a1 + 32) + 8) + 40) uniqueIdentifier];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

id __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_24(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_25;
  v11[3] = &unk_2783B65A8;
  v5 = v3;
  v12 = v5;
  v6 = [v4 bs_firstObjectPassingTest:v11];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [v5 workspaceEntity];
  }

  v9 = v8;

  return v9;
}

uint64_t __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_25(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [*(a1 + 32) uniqueIdentifier];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

id __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_27(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 layoutRole] == 4)
  {
    v4 = (*(*(a1 + 32) + 16))();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_28(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 layoutRole] == 3)
  {
    v4 = (*(*(a1 + 32) + 16))();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_30(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_31;
  v8[3] = &unk_2783AC4F8;
  v9 = v3;
  v5 = v3;
  v6 = [v4 bs_containsObjectPassingTest:v8];

  return v6;
}

uint64_t __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_31(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

id __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_33(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 uniqueIdentifier];
  v6 = [v4 objectForKey:v5];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = [SBDisplayItem displayItemForLayoutElement:v3];
  }

  return v7;
}

void __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_131(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = [v11 uniqueIdentifier];
  v8 = [v6 objectForKey:v7];
  v9 = [v8 integerValue];

  v10 = v5;
  if (v9)
  {
    v10 = [SBDisplayItemLayoutAttributes attributesByModifyingContentOrientation:v5];

    [*(a1 + 40) setObject:v10 forKey:v11];
  }
}

void __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_2_133(id *a1, void *a2)
{
  v5 = a2;
  if ([a1[4] shouldFreezeSceneEntity:?])
  {
    v3 = 1;
  }

  else if ([a1[5] count])
  {
    v4 = [v5 displayItemRepresentation];
    v3 = v4 && objc_msgSend_containsObject_(a1[5]) && [a1[6] peekConfiguration] == 3 && objc_msgSend(a1[6], "unlockedEnvironmentMode") == 1;
  }

  else
  {
    v3 = 0;
  }

  [v5 setFrozen:v3];
}

- (id)_displayItemLayoutAttributesProvider
{
  _recentAppLayouts = [(SBMainDisplayLayoutStateManager *)self _recentAppLayouts];
  layoutAttributesProvider = [_recentAppLayouts layoutAttributesProvider];

  return layoutAttributesProvider;
}

- (id)_layoutStateForDisplayIdentity:(id)identity
{
  v3 = SBApp;
  identityCopy = identity;
  windowSceneManager = [v3 windowSceneManager];
  v6 = [windowSceneManager windowSceneForDisplayIdentity:identityCopy];

  layoutStateProvider = [v6 layoutStateProvider];
  layoutState = [layoutStateProvider layoutState];

  return layoutState;
}

- (id)_sceneManagerForDisplayIdentity:(id)identity
{
  identityCopy = identity;
  v4 = +[SBSceneManagerCoordinator sharedInstance];
  v5 = [v4 sceneManagerForDisplayIdentity:identityCopy];

  return v5;
}

- (id)_switcherControllerForDisplayIdentity:(id)identity
{
  v3 = SBApp;
  identityCopy = identity;
  windowSceneManager = [v3 windowSceneManager];
  v6 = [windowSceneManager windowSceneForDisplayIdentity:identityCopy];

  switcherController = [v6 switcherController];

  return switcherController;
}

- (BOOL)_hasAppLayoutBeenUserKilledWithinThresholdToCreateNewScene:(id)scene
{
  sceneCopy = scene;
  v4 = +[SBMainSwitcherControllerCoordinator sharedInstance];
  v5 = [v4 _hasAppLayoutBeenUserKilledWithinThresholdToCreateNewScene:sceneCopy];

  return v5;
}

- (id)_applicationSceneEntityFromApplicationBundleIdentifier:(id)identifier uniqueIdentifier:(id)uniqueIdentifier displayIdentity:(id)identity
{
  uniqueIdentifierCopy = uniqueIdentifier;
  identityCopy = identity;
  identifierCopy = identifier;
  _applicationController = [(SBMainDisplayLayoutStateManager *)self _applicationController];
  v12 = [_applicationController applicationWithBundleIdentifier:identifierCopy];

  if (v12)
  {
    v13 = [SBDeviceApplicationSceneEntity alloc];
    v14 = [(SBMainDisplayLayoutStateManager *)self _sceneManagerForDisplayIdentity:identityCopy];
    v15 = [(SBDeviceApplicationSceneEntity *)v13 initWithApplication:v12 uniqueIdentifier:uniqueIdentifierCopy sceneHandleProvider:v14 displayIdentity:identityCopy];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)_doesSceneIDSpecifyPrimaryScene:(uint64_t)a1 forApplicationIdentifier:(uint64_t)a2 sceneSessionRole:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&dword_21ED4E000, log, OS_LOG_TYPE_ERROR, "Error decoding activation conditions for %{public}@:%{public}@", &v3, 0x16u);
}

@end