@interface SBSAElementContentProvider
+ (id)appearanceTransitionElementContentProviderWithParentProvider:(id)provider staticLayoutTransition:(id)transition;
+ (id)disappearanceTransitionElementContentProviderWithParentProvider:(id)provider staticLayoutTransition:(id)transition;
- (double)_sensorObscuringShadowApexMilestone;
- (id)_initWithParentProvider:(id)provider transitionDirection:(int64_t)direction staticLayoutTransition:(id)transition;
- (id)_updatedElementDescriptionFromDescription:(id)description layoutTransition:(id)transition transitionDescriptions:(id)descriptions context:(id)context;
- (id)defaultTransitionSettings;
- (id)description;
- (id)preferencesFromContext:(id)context;
@end

@implementation SBSAElementContentProvider

- (double)_sensorObscuringShadowApexMilestone
{
  settings = [objc_opt_class() settings];
  [settings sensorObscuringShadowApexProgress];
  v4 = v3;

  return v4;
}

- (id)defaultTransitionSettings
{
  settings = [objc_opt_class() settings];
  elementContentTransitionSettings = [settings elementContentTransitionSettings];

  return elementContentTransitionSettings;
}

- (id)_initWithParentProvider:(id)provider transitionDirection:(int64_t)direction staticLayoutTransition:(id)transition
{
  transitionCopy = transition;
  v14.receiver = self;
  v14.super_class = SBSAElementContentProvider;
  v9 = [(SBSABasePreferencesProvider *)&v14 initWithParentProvider:provider];
  v10 = v9;
  if (v9)
  {
    v9->_transitionDirection = direction;
    v11 = [transitionCopy copy];
    staticLayoutTransition = v10->_staticLayoutTransition;
    v10->_staticLayoutTransition = v11;
  }

  return v10;
}

+ (id)disappearanceTransitionElementContentProviderWithParentProvider:(id)provider staticLayoutTransition:(id)transition
{
  transitionCopy = transition;
  providerCopy = provider;
  v7 = [objc_alloc(objc_opt_class()) _initWithParentProvider:providerCopy transitionDirection:-1 staticLayoutTransition:transitionCopy];

  return v7;
}

+ (id)appearanceTransitionElementContentProviderWithParentProvider:(id)provider staticLayoutTransition:(id)transition
{
  transitionCopy = transition;
  providerCopy = provider;
  v7 = [objc_alloc(objc_opt_class()) _initWithParentProvider:providerCopy transitionDirection:1 staticLayoutTransition:transitionCopy];

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = self->_transitionDirection + 1;
  if (v5 > 2)
  {
    v6 = @"[invalid]";
  }

  else
  {
    v6 = off_2783B29D8[v5];
  }

  return [v3 stringWithFormat:@"<%@: %p; transitionDirection: %@; staticLayoutTransition: %@>", v4, self, v6, self->_staticLayoutTransition];
}

- (id)preferencesFromContext:(id)context
{
  v70 = *MEMORY[0x277D85DE8];
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
      [(SBSAElementContentProvider *)v6 preferencesFromContext:a2, self];
    }
  }

  else
  {
    v8 = 0;
  }

  v51 = v8;

  preferences = [v8 preferences];
  v46 = contextCopy;
  if (preferences)
  {
    v10 = objc_opt_self();
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

    v13 = v12;

    if (!v13)
    {
      [(SBSAElementContentProvider *)v11 preferencesFromContext:a2, self];
    }
  }

  else
  {
    v13 = 0;
  }

  v49 = v13;
  if (self->_pendingSensorObscuringShadowProperty)
  {
    [(SBSAElementContentProvider *)self _sensorObscuringShadowApexMilestone];
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    animatedTransitionResults = [v8 animatedTransitionResults];
    v15 = [animatedTransitionResults countByEnumeratingWithState:&v64 objects:v69 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v65;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v65 != v17)
          {
            objc_enumerationMutation(animatedTransitionResults);
          }

          v19 = *(*(&v64 + 1) + 8 * i);
          associatedInterfaceElementPropertyIdentity = [v19 associatedInterfaceElementPropertyIdentity];
          if (BSEqualObjects())
          {
            [v19 targetedMilestone];
            v21 = BSFloatApproximatelyEqualToFloat();

            if (v21)
            {
              self->_sensorObscuringShadowDisappearingIfTransitioning = 1;
            }
          }

          else
          {
          }
        }

        v16 = [animatedTransitionResults countByEnumeratingWithState:&v64 objects:v69 count:16];
      }

      while (v16);
    }

    v13 = v49;
  }

  v22 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v50 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  elementDescriptions = [v13 elementDescriptions];
  v24 = [elementDescriptions countByEnumeratingWithState:&v60 objects:v68 count:16];
  if (!v24)
  {
    v26 = 0;
    goto LABEL_48;
  }

  v25 = v24;
  v26 = 0;
  v27 = *v61;
  do
  {
    for (j = 0; j != v25; ++j)
    {
      if (*v61 != v27)
      {
        objc_enumerationMutation(elementDescriptions);
      }

      v29 = *(*(&v60 + 1) + 8 * j);
      staticLayoutTransition = self->_staticLayoutTransition;
      if (staticLayoutTransition)
      {
        v31 = [(SBSAElementContentProvider *)self _updatedElementDescriptionFromDescription:*(*(&v60 + 1) + 8 * j) layoutTransition:staticLayoutTransition transitionDescriptions:v22 context:v8];
        if (!v31)
        {
          goto LABEL_44;
        }
      }

      else
      {
        elementLayoutTransition = [v49 elementLayoutTransition];
        v31 = [(SBSAElementContentProvider *)self _updatedElementDescriptionFromDescription:v29 layoutTransition:elementLayoutTransition transitionDescriptions:v22 context:v51];

        v8 = v51;
        if (!v31)
        {
          goto LABEL_44;
        }
      }

      [v50 addObject:{v31, v46}];
      if (v26)
      {
        v26 = 1;
      }

      else
      {
        [v31 sensorObscuringShadowProgress];
        v26 = v33 > 0.0;
      }

LABEL_44:
    }

    v25 = [elementDescriptions countByEnumeratingWithState:&v60 objects:v68 count:16];
  }

  while (v25);
LABEL_48:

  v56[0] = MEMORY[0x277D85DD0];
  v56[1] = 3221225472;
  v56[2] = __53__SBSAElementContentProvider_preferencesFromContext___block_invoke;
  v56[3] = &unk_2783AD778;
  v59 = a2;
  v56[4] = self;
  v34 = v50;
  v57 = v34;
  v35 = v22;
  v58 = v35;
  v36 = MEMORY[0x223D6F7F0](v56);
  if (v49)
  {
    v37 = [v49 copyWithBlock:v36];
  }

  else
  {
    v37 = [SBSAPreferences instanceWithBlock:v36];
  }

  v38 = [v8 copyByUpdatingPreferences:{v37, v46}];

  v55.receiver = self;
  v55.super_class = SBSAElementContentProvider;
  v39 = [(SBSABasePreferencesProvider *)&v55 preferencesFromContext:v38];
  v40 = objc_opt_class();
  v41 = v39;
  if (v40)
  {
    if (objc_opt_isKindOfClass())
    {
      v42 = v41;
    }

    else
    {
      v42 = 0;
    }
  }

  else
  {
    v42 = 0;
  }

  v43 = v42;

  if (v26)
  {
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __53__SBSAElementContentProvider_preferencesFromContext___block_invoke_2;
    v52[3] = &unk_2783AD750;
    v53 = v43;
    v54 = a2;
    v52[4] = self;
    v43 = [v43 copyWithBlock:v52];
  }

  v44 = v43;

  return v43;
}

void __53__SBSAElementContentProvider_preferencesFromContext___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
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
      __53__SBSAElementContentProvider_preferencesFromContext___block_invoke_cold_1(a1, v5);
    }
  }

  else
  {
    v7 = 0;
  }

  v19 = v3;

  [v7 setElementDescriptions:*(a1 + 40)];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = *(a1 + 48);
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        v14 = [*(a1 + 48) objectForKey:v13];
        v15 = objc_opt_class();
        v16 = v14;
        if (v15)
        {
          if (objc_opt_isKindOfClass())
          {
            v17 = v16;
          }

          else
          {
            v17 = 0;
          }
        }

        else
        {
          v17 = 0;
        }

        v18 = v17;

        if (v18)
        {
          [v7 associateAnimatedTransitionDescriptionOfProperty:v18 withProperty:v13 withMilestones:0];
        }

        else
        {
          [v7 setAnimatedTransitionDescription:v16 forProperty:v13 withMilestones:0];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }
}

void __53__SBSAElementContentProvider_preferencesFromContext___block_invoke_2(uint64_t a1, void *a2)
{
  v18 = a2;
  if (v18)
  {
    v3 = objc_opt_self();
    v4 = v18;
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
      __53__SBSAElementContentProvider_preferencesFromContext___block_invoke_2_cold_1(a1, v4);
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = [SBSAInterfaceElementPropertyIdentity alloc];
  v8 = [*(a1 + 40) containerViewDescriptions];
  v9 = [v8 firstObject];
  v10 = [v9 interfaceElementIdentifier];
  v11 = [(SBSAInterfaceElementPropertyIdentity *)v7 initWithAssociatedInterfaceElementIdentifier:v10 andProperty:@"bounds"];
  v12 = *(a1 + 32);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  v14 = MEMORY[0x277CBEB98];
  v15 = MEMORY[0x277CCABB0];
  [*(a1 + 32) _sensorObscuringShadowApexMilestone];
  v16 = [v15 numberWithDouble:?];
  v17 = [v14 setWithObject:v16];
  [v6 addMilestones:v17 forPropertyIdentity:*(*(a1 + 32) + 40)];
}

- (id)_updatedElementDescriptionFromDescription:(id)description layoutTransition:(id)transition transitionDescriptions:(id)descriptions context:(id)context
{
  descriptionCopy = description;
  transitionCopy = transition;
  descriptionsCopy = descriptions;
  contextCopy = context;
  v15 = contextCopy;
  if (descriptionCopy)
  {
    preferences = [contextCopy preferences];
    associatedSystemApertureElementIdentity = [descriptionCopy associatedSystemApertureElementIdentity];
    elementContexts = [v15 elementContexts];
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __120__SBSAElementContentProvider__updatedElementDescriptionFromDescription_layoutTransition_transitionDescriptions_context___block_invoke;
    v38[3] = &unk_2783AD700;
    v19 = associatedSystemApertureElementIdentity;
    v39 = v19;
    v20 = [elementContexts bs_firstObjectPassingTest:v38];

    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __120__SBSAElementContentProvider__updatedElementDescriptionFromDescription_layoutTransition_transitionDescriptions_context___block_invoke_2;
    v36[3] = &unk_2783AD7A0;
    v36[4] = self;
    v37 = descriptionsCopy;
    v21 = MEMORY[0x223D6F7F0](v36);
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __120__SBSAElementContentProvider__updatedElementDescriptionFromDescription_layoutTransition_transitionDescriptions_context___block_invoke_3;
    v27[3] = &unk_2783B29B8;
    v35 = a2;
    v27[4] = self;
    v28 = transitionCopy;
    v29 = v19;
    v30 = preferences;
    v31 = v20;
    v32 = descriptionCopy;
    v33 = v15;
    v34 = v21;
    v22 = v21;
    v23 = v20;
    v24 = preferences;
    v25 = v19;
    descriptionCopy = [descriptionCopy copyWithBlock:v27];
  }

  return descriptionCopy;
}

void __120__SBSAElementContentProvider__updatedElementDescriptionFromDescription_layoutTransition_transitionDescriptions_context___block_invoke_2(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a2 && a3)
  {
    v7 = *(a1 + 32);
    v8 = a3;
    v9 = a2;
    v12 = [v7 newAnimatedTransitionDescriptionForProperty:v8 animated:a4];
    v10 = *(a1 + 40);
    v11 = [[SBSAInterfaceElementPropertyIdentity alloc] initWithAssociatedInterfaceElementIdentifier:v9 andProperty:v8];

    [v10 setObject:v12 forKey:v11];
  }
}

void __120__SBSAElementContentProvider__updatedElementDescriptionFromDescription_layoutTransition_transitionDescriptions_context___block_invoke_3(uint64_t a1, void *a2)
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
      __120__SBSAElementContentProvider__updatedElementDescriptionFromDescription_layoutTransition_transitionDescriptions_context___block_invoke_3_cold_1(a1, v5);
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = [*(a1 + 40) initialElementContexts];
  v71[0] = MEMORY[0x277D85DD0];
  v71[1] = 3221225472;
  v71[2] = __120__SBSAElementContentProvider__updatedElementDescriptionFromDescription_layoutTransition_transitionDescriptions_context___block_invoke_4;
  v71[3] = &unk_2783AD700;
  v72 = *(a1 + 48);
  v65 = v8;
  v9 = [v8 bs_firstObjectPassingTest:v71];
  v10 = [*(a1 + 56) isCollisionImminent];
  v11 = v9 != 0;
  v12 = [*(a1 + 64) viewControllerAppearState] != 0;
  v13 = [*(a1 + 72) associatedSystemApertureElementIdentity];
  v14 = [*(a1 + 80) containerViewDescriptions];
  v15 = SBSAObjectInCollectionAssociatedWithElementIdentity(v13, v14, 0);

  [v15 bounds];
  v64 = v15;
  [v15 center];
  SBUnintegralizedRectCenteredAboutPoint();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  [*(a1 + 80) inertContainerFrame];
  v25 = v24;
  v26.n128_f64[0] = v17;
  LOBYTE(v13) = SBSARectApproximatelyEqualToRect(v26, v19, v21, v23, v25, v27, v28, v29, 0.01);
  [*(a1 + 80) inertContainerFrame];
  v77.origin.x = v17;
  v77.origin.y = v19;
  v77.size.width = v21;
  v77.size.height = v23;
  v30 = (*(a1 + 64) == 0) | v13 | CGRectContainsRect(v73, v77);
  v31 = [*(a1 + 56) lastChangingElementLayoutTransition];
  v66 = [v31 elementWithIdentityWasOrIsSensorAttached:*(a1 + 48)];

  if (v11 && v12)
  {
    v32 = 2;
  }

  else
  {
    v32 = 1;
  }

  if (v11 && v12)
  {
    v33 = 3;
  }

  else
  {
    v33 = 0;
  }

  if (v30)
  {
    v34 = v33;
  }

  else
  {
    v34 = v32;
  }

  v35 = *(*(a1 + 32) + 48);
  if (!v35)
  {
    goto LABEL_27;
  }

  if (v35 == -1)
  {
    v36 = v10;
  }

  else
  {
    v36 = 0;
  }

  v37 = 1;
  if ((v34 - 1) >= 2)
  {
    v37 = -1;
  }

  if ((v36 & 1) != 0 || v35 == v37)
  {
LABEL_27:
    v38 = [*(a1 + 80) layoutDirection];
    v39 = *(a1 + 64);
    if (v39)
    {
      v40 = [v39 layoutMode];
      if (v9)
      {
LABEL_29:
        v41 = [v9 layoutMode];
LABEL_32:
        v63 = v3;
        v42 = [v7 interfaceElementIdentifier];
        [v7 setAppearState:v34];
        v43 = 0.0;
        if (v66 && (!v40 || v41 != v40))
        {
          v43 = 1.0;
          if (*(*(a1 + 32) + 32))
          {
            v43 = 0.0;
          }
        }

        [v7 setSensorObscuringShadowProgress:v43];
        (*(*(a1 + 88) + 16))();
        if (v40 == 3)
        {
          v44 = v10;
        }

        else
        {
          v44 = 1;
        }

        if (v40 == 2)
        {
          v45 = v10;
        }

        else
        {
          v45 = 1;
        }

        if (v40 < 2)
        {
          v46 = 1;
        }

        else
        {
          v46 = v10;
        }

        if (v45)
        {
          v47 = 1.0;
        }

        else
        {
          v47 = 0.0;
        }

        if (v45)
        {
          v48 = 0.0;
        }

        else
        {
          v48 = 1.0;
        }

        [v7 setLeadingViewBlurProgress:v47];
        (*(*(a1 + 88) + 16))();
        [v7 setLeadingViewAlpha:v48];
        (*(*(a1 + 88) + 16))();
        if (v46)
        {
          v49 = 1.0;
        }

        else
        {
          v49 = 0.0;
        }

        if (v7)
        {
          objc_msgSend_leadingViewTransform(v7);
        }

        else
        {
          v68 = 0u;
          v69 = 0u;
          v67 = 0u;
        }

        [*(a1 + 64) preferredLeadingBounds];
        Width = CGRectGetWidth(v74);
        SBSASquishedTransform(&v67, 1, v38 == 1, &v70, v49, Width);
        [v7 setLeadingViewTransform:&v70];
        (*(*(a1 + 88) + 16))();
        v51 = v45 | ([*(a1 + 64) systemApertureLayoutCustomizingOptions] >> 1) & 1;
        if (v51)
        {
          v52 = 1.0;
        }

        else
        {
          v52 = 0.0;
        }

        if (v51)
        {
          v53 = 0.0;
        }

        else
        {
          v53 = 1.0;
        }

        [v7 setTrailingViewBlurProgress:v52];
        (*(*(a1 + 88) + 16))();
        [v7 setTrailingViewAlpha:v53];
        (*(*(a1 + 88) + 16))();
        if (v7)
        {
          objc_msgSend_trailingViewTransform(v7);
        }

        else
        {
          v68 = 0u;
          v69 = 0u;
          v67 = 0u;
        }

        v54 = v40 < 2;
        [*(a1 + 64) preferredTrailingBounds];
        v55 = CGRectGetWidth(v75);
        SBSASquishedTransform(&v67, 0, v38 == 1, &v70, v49, v55);
        [v7 setTrailingViewTransform:&v70];
        (*(*(a1 + 88) + 16))();
        if (v40 == 1)
        {
          v56 = v10;
        }

        else
        {
          v56 = 1;
        }

        if (v56)
        {
          v57 = 1.0;
        }

        else
        {
          v57 = 0.0;
        }

        if (v56)
        {
          v58 = 0.0;
        }

        else
        {
          v58 = 1.0;
        }

        [v7 setMinimalViewBlurProgress:v57];
        (*(*(a1 + 88) + 16))();
        [v7 setMinimalViewAlpha:v58];
        (*(*(a1 + 88) + 16))();
        if ((v56 & v66 & (v54 | v10)) != 0)
        {
          v59 = 1.0;
        }

        else
        {
          v59 = 0.0;
        }

        if (v7)
        {
          objc_msgSend_minimalViewTransform(v7);
        }

        else
        {
          v68 = 0u;
          v69 = 0u;
          v67 = 0u;
        }

        v3 = v63;
        [*(a1 + 64) preferredMinimalBounds];
        v60 = CGRectGetWidth(v76);
        SBSASquishedTransform(&v67, 1, v38 == 1, &v70, v59, v60);
        [v7 setMinimalViewTransform:&v70];
        (*(*(a1 + 88) + 16))();
        SBSABehavesLikeCustom([v9 layoutMode], objc_msgSend(v9, "systemApertureCustomLayout"));
        SBSABehavesLikeCustom([*(a1 + 64) layoutMode], objc_msgSend(*(a1 + 64), "systemApertureCustomLayout"));
        if (v44)
        {
          v61 = 1.0;
        }

        else
        {
          v61 = 0.0;
        }

        if (v44)
        {
          v62 = 0.0;
        }

        else
        {
          v62 = 1.0;
        }

        [v7 setCustomContentBlurProgress:v61];
        (*(*(a1 + 88) + 16))();
        [v7 setCustomContentAlpha:v62];
        (*(*(a1 + 88) + 16))();

        goto LABEL_89;
      }
    }

    else
    {
      v40 = 0;
      if (v9)
      {
        goto LABEL_29;
      }
    }

    v41 = 0;
    goto LABEL_32;
  }

LABEL_89:
}

- (void)preferencesFromContext:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSClassFromString(&cfstr_Sbsacontext.isa);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v8 handleFailureInMethod:a2 object:a3 file:@"SBSAElementContentProvider.m" lineNumber:96 description:{@"Unexpected class – expected '%@', got '%@'", v5, v7}];
}

- (void)preferencesFromContext:(uint64_t)a3 .cold.2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSClassFromString(&cfstr_Sbsapreference.isa);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v8 handleFailureInMethod:a2 object:a3 file:@"SBSAElementContentProvider.m" lineNumber:97 description:{@"Unexpected class – expected '%@', got '%@'", v5, v7}];
}

void __53__SBSAElementContentProvider_preferencesFromContext___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v11 = [MEMORY[0x277CCA890] currentHandler];
  v2 = NSClassFromString(&cfstr_Sbsapreference_0.isa);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  [OUTLINED_FUNCTION_0_12(v4 v5];
}

void __53__SBSAElementContentProvider_preferencesFromContext___block_invoke_2_cold_1(uint64_t a1, uint64_t a2)
{
  v11 = [MEMORY[0x277CCA890] currentHandler];
  v2 = NSClassFromString(&cfstr_Sbsapreference_0.isa);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  [OUTLINED_FUNCTION_0_12(v4 v5];
}

void __120__SBSAElementContentProvider__updatedElementDescriptionFromDescription_layoutTransition_transitionDescriptions_context___block_invoke_3_cold_1(uint64_t a1, uint64_t a2)
{
  v11 = [MEMORY[0x277CCA890] currentHandler];
  v2 = NSClassFromString(&cfstr_Sbsaelementdes.isa);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  [OUTLINED_FUNCTION_0_12(v4 v5];
}

@end