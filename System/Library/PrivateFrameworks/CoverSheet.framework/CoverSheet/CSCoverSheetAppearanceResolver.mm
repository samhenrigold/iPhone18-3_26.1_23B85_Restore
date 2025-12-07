@interface CSCoverSheetAppearanceResolver
- (CGRect)bounds;
- (CSCoverSheetAppearanceResolver)init;
- (double)_alphaForTransitionFromHidden:(uint64_t)hidden toHidden:(uint64_t)toHidden unhiddenAlpha:(uint64_t)alpha timingFunction:(void *)function;
- (double)_alphaForTransitionFromHidden:(uint64_t)hidden toHidden:(void *)toHidden timingFunction:;
- (double)_dateViewAlphaForCurrentWakeState;
- (double)_finalizeOffset:(double)offset referenceFrame:;
- (double)_offsetForTransitionFromOffset:(uint64_t)offset toOffset:timingFunction:;
- (double)_scaleForTransitionFromScale:(uint64_t)scale toScale:timingFunction:;
- (double)_valueForTransitionInterval:(void *)interval timingFunction:;
- (id)_resolveBackgroundComponent;
- (id)_resolveBackgroundContentComponent;
- (id)_resolveComplicationContainerComponent;
- (id)_resolveComplicationSidebarComponent;
- (id)_resolveComponentWithType:(int64_t)type;
- (id)_resolveContentComponent;
- (id)_resolveControlCenterGrabberComponent;
- (id)_resolveDateViewComponent;
- (id)_resolveDimmingLayerComponent;
- (id)_resolveFooterCallToActionLabelComponentWithHomeAffordance:(id)affordance;
- (id)_resolveFullBleedContentComponent;
- (id)_resolveHomeAffordanceComponent;
- (id)_resolveLegibilitySettings;
- (id)_resolveModalContentComponent;
- (id)_resolveNotificationDimmingLayerComponent;
- (id)_resolvePageContentComponent;
- (id)_resolvePoseidonComponent;
- (id)_resolveProudLockComponent;
- (id)_resolveQuickActionsComponent;
- (id)_resolveRemoteInlineContentComponent;
- (id)_resolveSlideableContentComponent;
- (id)_resolveStatusBarBackgroundComponent;
- (id)_resolveStatusBarComponent;
- (id)_resolveStatusBarGradientComponent;
- (id)_resolveTintingComponent;
- (id)_resolveWallpaperComponent;
- (id)_resolveWallpaperFloatingLayerComponent;
- (id)_resolveWhitePointComponent;
- (id)newActiveAppearanceGivenDesiredAppearance:(id)appearance oldAppearance:(id)oldAppearance activeAppearance:(id)activeAppearance activeBehavior:(id)behavior startIndex:(unint64_t)index targetIndex:(unint64_t)targetIndex indexOfMainPage:(unint64_t)page targetAppearance:(id)self0 modalAppearance:(id)self1 currentTransitionSource:(id)self2 contentTransitionIsAtCoverSheetLevel:(BOOL)self3 legibilityProvider:(id)self4 bounds:(CGRect)self5 whitePointValues:(id)self6 hasContentAboveCoverSheet:(BOOL)self7;
- (uint64_t)_levelForTransitionFromLevel:(uint64_t)level toLevel:;
- (uint64_t)_resolveContentComponent;
@end

@implementation CSCoverSheetAppearanceResolver

- (id)_resolveBackgroundComponent
{
  v3 = objc_opt_new();
  v4 = [v3 priority:100];

  v5 = [(CSAppearance *)self->_desiredAppearance componentForType:19 property:4];
  value = [v5 value];
  [v4 setStyle:value];

  v7 = [(CSAppearance *)self->_desiredAppearance componentForType:19 property:64];
  color = [v7 color];
  [v4 setColor:color];

  [(SBFSteppedAnimationTimingFunctionCalculator *)self->_interactiveAnimationCalculator valueForFunctionWithName:@"backgroundStyle"];
  [v4 setTransitionProgress:?];

  return v4;
}

- (id)_resolveLegibilitySettings
{
  legibilitySettings = [(CSAppearance *)self->_modalAppearance legibilitySettings];
  sb_copy = [legibilitySettings sb_copy];

  legibilitySettings2 = [(CSAppearance *)self->_oldAppearance legibilitySettings];
  sb_copy2 = [legibilitySettings2 sb_copy];

  legibilitySettings3 = [(CSAppearance *)self->_targetAppearance legibilitySettings];
  sb_copy3 = [legibilitySettings3 sb_copy];

  legibilitySettings4 = [(CSAppearance *)self->_desiredAppearance legibilitySettings];
  sb_copy4 = [legibilitySettings4 sb_copy];

  if (sb_copy)
  {
    v11 = sb_copy;
LABEL_7:
    discreteLegibilitySettings = self->_discreteLegibilitySettings;
    self->_discreteLegibilitySettings = v11;
    goto LABEL_8;
  }

  if (sb_copy3)
  {
    v11 = sb_copy3;
    goto LABEL_7;
  }

  if (sb_copy4)
  {
    v11 = sb_copy4;
    goto LABEL_7;
  }

  discreteLegibilitySettings = [(CSLegibilityProviding *)self->_legibilityProvider currentLegibilitySettings];
  sb_copy5 = [discreteLegibilitySettings sb_copy];
  v17 = self->_discreteLegibilitySettings;
  self->_discreteLegibilitySettings = sb_copy5;

LABEL_8:
  if (self->_isTransitioning)
  {
    [(SBFSteppedAnimationTimingFunctionCalculator *)self->_interactiveAnimationCalculator valueForFunctionWithName:@"legibilitySettings"];
    v13 = _SBUIInterpolatedLegibilitySettings();
    if (self->_fraction < 0.5)
    {
      objc_storeStrong(&self->_discreteLegibilitySettings, sb_copy2);
    }
  }

  else
  {
    v13 = self->_discreteLegibilitySettings;
  }

  [(_UILegibilitySettings *)v13 setMinFillHeight:0.0];
  [(_UILegibilitySettings *)self->_discreteLegibilitySettings setMinFillHeight:0.0];
  v14 = v13;

  return v13;
}

- (id)_resolveDateViewComponent
{
  v3 = objc_opt_new();
  v4 = [v3 priority:100];

  v5 = [(CSAppearance *)self->_oldAppearance componentForType:1 identifier:@"(active)"];
  v6 = [(CSAppearance *)self->_desiredAppearance componentForType:1 property:1];
  isHidden = [v6 isHidden];

  isHidden2 = [v5 isHidden];
  v9 = [(CSAppearance *)self->_desiredAppearance componentForType:1 property:4];
  value = [v9 value];
  [v4 setValue:value];

  [v4 setPageIndex:0];
  v11 = [(CSAppearance *)self->_desiredAppearance componentForType:1 property:128];
  transitionModifiers = [v11 transitionModifiers];

  v30 = 0u;
  v29 = 0u;
  v13 = [(CSAppearance *)self->_desiredAppearance componentForType:1 property:256];
  v14 = v13;
  if (v13)
  {
    objc_msgSend_transitionInputs(v13);
  }

  else
  {
    v30 = 0u;
    v29 = 0u;
  }

  if ((transitionModifiers & 8) != 0)
  {
    SBFMainScreenScale();
    v15 = BSPointRoundForScale(*(&v29 + 1));
    v16 = v17;
    [v4 setAnimationDuration:*&v29];
    if ((transitionModifiers & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v15 = *MEMORY[0x277CBF348];
  v16 = *(MEMORY[0x277CBF348] + 8);
  if ((transitionModifiers & 0x10) != 0)
  {
LABEL_8:
    [v5 scale];
    v31 = v18;
    v32 = 1;
    memset(v33, 0, sizeof(v33));
    v34 = *(&v30 + 1);
    v35 = 1;
    memset(v36, 0, sizeof(v36));
    [v4 setScale:{-[CSCoverSheetAppearanceResolver _valueForTransitionInterval:timingFunction:](self, &v31, 0)}];
    [v4 setAnimationDuration:*&v29];
  }

LABEL_9:
  if ((transitionModifiers & 4) != 0)
  {
    [v4 setStretch:1];
  }

  [v5 offset];
  [v4 setOffset:-[CSCoverSheetAppearanceResolver _offsetForTransitionFromOffset:toOffset:timingFunction:](self)];
  v19 = [(CSAppearance *)self->_desiredAppearance componentForType:1 property:16];
  view = [v19 view];
  [v4 setView:view];

  v21 = [(CSAppearance *)self->_desiredAppearance componentForType:1 property:8];
  [v4 setVibrantAndCentered:{objc_msgSend(v21, "flag")}];

  if (self->_startIndex != self->_targetIndex && (BSFloatIsOne() & 1) == 0)
  {
    if (isHidden != isHidden2)
    {
      v22 = 72;
      if (isHidden2)
      {
        v22 = 80;
      }

      v23 = *(&self->super.isa + v22) - self->_indexOfMainPage;
      if (isHidden)
      {
        [v5 offset];
        v15 = v24;
        v16 = v25;
      }

      [v4 setOffset:{v15, v16}];
      v26 = [MEMORY[0x277CCABB0] numberWithInteger:v23];
      [v4 setPageIndex:v26];
    }

    isHidden = isHidden2 & isHidden;
  }

  [v4 setHidden:isHidden];
  if ([v4 isHidden])
  {
    [v4 setHidesTime:1];
  }

  rootSettings = [MEMORY[0x277D65FB8] rootSettings];
  [rootSettings awakeDateAlpha];

  [v4 setAlpha:{-[CSCoverSheetAppearanceResolver _alphaForTransitionFromHidden:toHidden:unhiddenAlpha:timingFunction:](self, objc_msgSend(v5, "isHidden"), objc_msgSend(v4, "isHidden"), @"dateViewAlpha"}];

  return v4;
}

- (id)_resolveRemoteInlineContentComponent
{
  if (self)
  {
    objc_opt_new();
    OUTLINED_FUNCTION_3_2();
    v5 = [v4 priority:?];

    v6 = [*(self + 56) componentForType:21 identifier:@"(active)"];
    [v6 isHidden];
    v7 = [*(self + 48) componentForType:21 property:1];
    isHidden = [v7 isHidden];

    [v5 setHidden:isHidden];
    v9 = OUTLINED_FUNCTION_2_3();
    [v5 setAlpha:{-[CSCoverSheetAppearanceResolver _alphaForTransitionFromHidden:toHidden:unhiddenAlpha:timingFunction:](v9, v10, isHidden, v11)}];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_resolveComplicationContainerComponent
{
  if (self)
  {
    objc_opt_new();
    OUTLINED_FUNCTION_3_2();
    v5 = [v4 priority:?];

    [*(self + 56) componentForType:20 identifier:@"(active)"];
    objc_claimAutoreleasedReturnValue();
    v6 = [OUTLINED_FUNCTION_5_0() componentForType:20 property:128];
    transitionModifiers = [v6 transitionModifiers];

    v8 = [*(self + 48) componentForType:20 property:{256, OUTLINED_FUNCTION_1_5()}];
    v16 = v8;
    if (v8)
    {
      OUTLINED_FUNCTION_9_0(v8, v9, v10, v11, v12, v13, v14, v15, v41);
    }

    else
    {
      OUTLINED_FUNCTION_1_5();
    }

    if ((transitionModifiers & 8) != 0)
    {
      SBFMainScreenScale();
      v17 = BSPointRoundForScale(v42);
      OUTLINED_FUNCTION_7_0(v17, v18, v19, v20, v21, v22, v23, v24, *&v41);
      if ((transitionModifiers & 0x10) == 0)
      {
LABEL_10:
        [v2 offset];
        [v5 setOffset:-[CSCoverSheetAppearanceResolver _offsetForTransitionFromOffset:toOffset:timingFunction:](self)];
        v35 = [*(self + 48) componentForType:20 property:1];
        [v35 isHidden];

        OUTLINED_FUNCTION_19();
        [v2 isHidden];
        OUTLINED_FUNCTION_16();
        v36 = OUTLINED_FUNCTION_2_3();
        [v5 setAlpha:{-[CSCoverSheetAppearanceResolver _alphaForTransitionFromHidden:toHidden:unhiddenAlpha:timingFunction:](v36, v37, v38, v39)}];

        goto LABEL_11;
      }
    }

    else if ((transitionModifiers & 0x10) == 0)
    {
      goto LABEL_10;
    }

    [v2 scale];
    OUTLINED_FUNCTION_0_10();
    [v5 setScale:{OUTLINED_FUNCTION_17(v25, v26)}];
    OUTLINED_FUNCTION_7_0(v27, v28, v29, v30, v31, v32, v33, v34, *&v41);
    goto LABEL_10;
  }

  v5 = 0;
LABEL_11:

  return v5;
}

- (id)_resolveStatusBarBackgroundComponent
{
  objc_opt_new();
  OUTLINED_FUNCTION_3_2();
  v5 = [v4 priority:?];

  [(CSAppearance *)self->_oldAppearance componentForType:8 identifier:@"(active)"];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_5_0() flagForComponentType:8];
  IsExplicitNo = BSSettingFlagIsExplicitNo();
  [(CSAppearance *)self->_oldAppearance flagForComponentType:8];
  v7 = BSSettingFlagIsExplicitNo();
  v8 = [(CSAppearance *)self->_desiredAppearance componentForType:8 property:1];
  isHidden = [v8 isHidden];

  isHidden2 = [v2 isHidden];
  v11 = isHidden;
  if (self->_startIndex != self->_targetIndex)
  {
    v12 = isHidden2;
    IsOne = BSFloatIsOne();
    v11 = isHidden;
    if ((IsOne & 1) == 0)
    {
      if (IsExplicitNo == v7)
      {
        v11 = v12 & isHidden;
      }

      else
      {
        IsYes = BSSettingFlagIsYes();
        v15 = 72;
        if (IsYes)
        {
          v15 = 80;
        }

        v16 = [MEMORY[0x277CCABB0] numberWithInteger:*(&self->super.isa + v15) - self->_indexOfMainPage];
        [v5 setValue:v16];

        if (BSSettingFlagIsYes())
        {
          v11 = v12;
        }

        else
        {
          v11 = isHidden;
        }
      }
    }
  }

  [v5 setHidden:v11];
  [OUTLINED_FUNCTION_14() setShowBackgroundWhileTransitioning:?];
  [v2 isHidden];
  v17 = OUTLINED_FUNCTION_4_0();
  [v5 setAlpha:{-[CSCoverSheetAppearanceResolver _alphaForTransitionFromHidden:toHidden:unhiddenAlpha:timingFunction:](v17, v18, isHidden, v19)}];

  return v5;
}

- (id)_resolveStatusBarComponent
{
  objc_opt_new();
  OUTLINED_FUNCTION_3_2();
  v5 = [v4 priority:?];

  v6 = [(CSAppearance *)self->_oldAppearance componentForType:2 identifier:@"(active)"];
  v7 = [OUTLINED_FUNCTION_13() componentForType:? property:?];
  value = [v7 value];
  [v5 setFakeStatusBarLevel:value];

  v9 = [OUTLINED_FUNCTION_13() componentForType:? property:?];
  [v5 setHidden:{objc_msgSend(v9, "isHidden")}];

  lastObject = [(NSArray *)self->_whitePointValues lastObject];
  v11 = lastObject;
  if (!lastObject)
  {
    lastObject = &unk_2830790A0;
  }

  [lastObject doubleValue];

  [v5 setAlpha:{-[CSCoverSheetAppearanceResolver _alphaForTransitionFromHidden:toHidden:unhiddenAlpha:timingFunction:](self, objc_msgSend(v6, "isHidden"), objc_msgSend(v5, "isHidden"), @"statusBarAlpha"}];
  v12 = [OUTLINED_FUNCTION_13() componentForType:? property:?];
  transitionModifiers = [v12 transitionModifiers];

  OUTLINED_FUNCTION_1_5();
  v14 = [OUTLINED_FUNCTION_13() componentForType:? property:?];
  v22 = v14;
  if (v14)
  {
    OUTLINED_FUNCTION_9_0(v14, v15, v16, v17, v18, v19, v20, v21, v28);
  }

  else
  {
    OUTLINED_FUNCTION_1_5();
  }

  if ((transitionModifiers & 0x20) != 0)
  {
    [v6 blurRadius];
    OUTLINED_FUNCTION_0_10();
    [v5 setBlurRadius:{-[CSCoverSheetAppearanceResolver _valueForTransitionInterval:timingFunction:](self, v26, 0)}];
    [v5 setAnimationDuration:*&v28];
    if ((transitionModifiers & 0x10) == 0)
    {
      goto LABEL_8;
    }

LABEL_19:
    [v6 scale];
    OUTLINED_FUNCTION_0_10();
    [v5 setScale:{-[CSCoverSheetAppearanceResolver _valueForTransitionInterval:timingFunction:](self, v27, 0)}];
    [v5 setAnimationDuration:*&v28];
    goto LABEL_8;
  }

  if ((transitionModifiers & 0x10) != 0)
  {
    goto LABEL_19;
  }

LABEL_8:
  v23 = [OUTLINED_FUNCTION_13() flagForComponentType:?];
  [(CSAppearance *)self->_oldAppearance flagForComponentType:2];
  if (self->_isTransitioning && ((BSSettingFlagIsYes() & 1) != 0 || (BSSettingFlagIsYes() & 1) != 0))
  {
    v24 = 1;
  }

  else if (self->_hasContentAboveCoverSheet)
  {
    v24 = 0;
  }

  else
  {
    v24 = v23;
  }

  [v5 setFakeStatusBar:v24];
  [v5 setLegibilitySettings:self->_discreteLegibilitySettings];

  return v5;
}

- (id)_resolvePageContentComponent
{
  objc_opt_new();
  OUTLINED_FUNCTION_3_2();
  v5 = [v4 priority:?];

  [(CSAppearance *)self->_oldAppearance componentForType:4 identifier:@"(active)"];
  objc_claimAutoreleasedReturnValue();
  v6 = [OUTLINED_FUNCTION_5_0() componentForType:4 property:1];
  [v6 isHidden];
  [OUTLINED_FUNCTION_8_0() setHidden:?];

  [(CSAppearance *)self->_desiredAppearance flagForComponentType:4];
  [OUTLINED_FUNCTION_8_0() setSuppressHorizontalBounce:?];
  [v2 isHidden];
  OUTLINED_FUNCTION_16();
  v7 = OUTLINED_FUNCTION_2_3();
  [v5 setAlpha:{-[CSCoverSheetAppearanceResolver _alphaForTransitionFromHidden:toHidden:unhiddenAlpha:timingFunction:](v7, v8, v9, v10)}];

  return v5;
}

- (id)_resolveProudLockComponent
{
  v3 = objc_opt_new();
  v4 = [v3 priority:100];

  v5 = [(CSAppearance *)self->_oldAppearance componentForType:11 identifier:@"(active)"];
  [v5 offset];
  v6 = MEMORY[0x277CBF348];
  v7 = [OUTLINED_FUNCTION_12() componentForType:? property:?];
  transitionModifiers = [v7 transitionModifiers];

  OUTLINED_FUNCTION_1_5();
  v9 = [OUTLINED_FUNCTION_12() componentForType:? property:?];
  v17 = v9;
  if (v9)
  {
    OUTLINED_FUNCTION_9_0(v9, v10, v11, v12, v13, v14, v15, v16, v57);
  }

  else
  {
    OUTLINED_FUNCTION_1_5();
  }

  v18 = *v6;
  v19 = v6[1];

  v20 = v19;
  v21 = v18;
  if ((transitionModifiers & 8) == 0)
  {
    if ((transitionModifiers & 0x10) == 0)
    {
      goto LABEL_6;
    }

LABEL_21:
    [v5 scale];
    OUTLINED_FUNCTION_0_10();
    [v4 setScale:{-[CSCoverSheetAppearanceResolver _valueForTransitionInterval:timingFunction:](self, v48, 0)}];
    OUTLINED_FUNCTION_7_0(v49, v50, v51, v52, v53, v54, v55, v56, *&v57);
    if ((transitionModifiers & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  SBFMainScreenScale();
  v21 = BSPointRoundForScale(v58);
  v20 = v41;
  OUTLINED_FUNCTION_7_0(v21, v41, v42, v43, v44, v45, v46, v47, *&v57);
  if ((transitionModifiers & 0x10) != 0)
  {
    goto LABEL_21;
  }

LABEL_6:
  if ((transitionModifiers & 0x20) != 0)
  {
LABEL_7:
    [v5 blurRadius];
    OUTLINED_FUNCTION_0_10();
    [v4 setBlurRadius:{-[CSCoverSheetAppearanceResolver _valueForTransitionInterval:timingFunction:](self, v22, 0)}];
    OUTLINED_FUNCTION_7_0(v23, v24, v25, v26, v27, v28, v29, v30, *&v57);
  }

LABEL_8:
  v31 = [CSCoverSheetAppearanceResolver _offsetForTransitionFromOffset:? toOffset:? timingFunction:?];
  v33 = v32;
  v34 = [OUTLINED_FUNCTION_12() componentForType:? property:?];
  [v34 isHidden];
  [OUTLINED_FUNCTION_8_0() setHidden:?];

  v35 = [OUTLINED_FUNCTION_12() componentForType:? property:?];
  [v35 value];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_10() setValue:?];

  [v5 isHidden];
  v36 = OUTLINED_FUNCTION_16();
  [OUTLINED_FUNCTION_12() flagForComponentType:?];
  [(CSAppearance *)self->_oldAppearance flagForComponentType:11];
  [v5 alpha];
  OUTLINED_FUNCTION_20();
  if (v38 && ((v39 = v37, (BSSettingFlagIsYes() & 1) != 0) || BSSettingFlagIsYes()))
  {
    [v4 setAlpha:v39];
  }

  else
  {
    v39 = [CSCoverSheetAppearanceResolver _alphaForTransitionFromHidden:v35 toHidden:v36 unhiddenAlpha:@"proudLockAlpha" timingFunction:?];
    [v4 setAlpha:{fmin(fmax(v39 * 2.0 + -1.0, 0.0), 1.0)}];
    [v4 setOffset:{v31, v33}];
  }

  if (BSPointEqualToPoint() && !BSFloatIsZero() && v35 != v36)
  {
    [v4 setAlpha:v39];
    [v4 setOffset:{v21, v20}];
  }

  return v4;
}

- (id)_resolveHomeAffordanceComponent
{
  objc_opt_new();
  OUTLINED_FUNCTION_3_2();
  v5 = [v4 priority:?];

  v6 = [(CSAppearance *)self->_oldAppearance componentForType:12 identifier:@"(active)"];
  if ([(CSBehavior *)self->_activeBehavior areRestrictedCapabilities:4096])
  {
    v7 = 0;
  }

  else
  {
    v7 = ![(CSBehavior *)self->_activeBehavior areRestrictedCapabilities:56];
  }

  v8 = [OUTLINED_FUNCTION_15() componentForType:? property:?];
  isHidden = [v8 isHidden];

  [v5 setHidden:isHidden & 1 | (((self->_isTransitioning | v7) & 1) == 0)];
  v10 = [OUTLINED_FUNCTION_15() componentForType:? property:?];
  value = [v10 value];
  [v5 setValue:value];

  [v6 isHidden];
  v12 = OUTLINED_FUNCTION_4_0();
  [v5 setAlpha:{-[CSCoverSheetAppearanceResolver _alphaForTransitionFromHidden:toHidden:unhiddenAlpha:timingFunction:](v12, v13, v14, v15)}];
  v16 = [OUTLINED_FUNCTION_15() flagForComponentType:?];
  if (self->_hasContentAboveCoverSheet)
  {
    v17 = 1;
  }

  else
  {
    v17 = v16;
  }

  [v5 setSuppressTeachableMomentsAnimation:v17];
  v18 = [OUTLINED_FUNCTION_15() componentForType:? property:?];
  transitionModifiers = [v18 transitionModifiers];

  OUTLINED_FUNCTION_1_5();
  v20 = [OUTLINED_FUNCTION_15() componentForType:? property:?];
  v28 = v20;
  if (v20)
  {
    OUTLINED_FUNCTION_9_0(v20, v21, v22, v23, v24, v25, v26, v27, v53);
  }

  else
  {
    OUTLINED_FUNCTION_1_5();
  }

  if ((transitionModifiers & 8) != 0)
  {
    OUTLINED_FUNCTION_7_0(v29.n128_f64[0], v30.n128_f64[0], v31.n128_f64[0], v32.n128_f64[0], v33.n128_f64[0], v34.n128_f64[0], v35, v36, *&v53);
  }

  v37 = OUTLINED_FUNCTION_18(v29, v30, v31, v32, v33, v34);
  v45 = v37;
  v46 = v38;
  v47 = 1.0;
  if ((transitionModifiers & 0x10) != 0)
  {
    v47 = v54;
    OUTLINED_FUNCTION_7_0(v37, v38, v39, v40, v41, v42, v43, v44, *&v53);
  }

  [v6 isHidden];
  v48 = OUTLINED_FUNCTION_16();
  if (!transitionModifiers || v48)
  {
    [v6 offset];
    v45 = [CSCoverSheetAppearanceResolver _offsetForTransitionFromOffset:? toOffset:? timingFunction:?];
    v46 = v50;
    scale = [v6 scale];
    v55 = v52;
    v56 = 1;
    memset(v57, 0, sizeof(v57));
    v58 = v47;
    v59 = 1;
    memset(v60, 0, sizeof(v60));
    v47 = OUTLINED_FUNCTION_17(scale, &v55);
  }

  [v5 setOffset:{v45, v46}];
  [v5 setScale:v47];

  return v5;
}

- (id)_resolveControlCenterGrabberComponent
{
  objc_opt_new();
  OUTLINED_FUNCTION_3_2();
  v5 = [v4 priority:?];

  v6 = [(CSAppearance *)self->_oldAppearance componentForType:13 identifier:@"(active)"];
  if ([(CSBehavior *)self->_activeBehavior areRestrictedCapabilities:128])
  {
    [v5 setHidden:1];
  }

  else
  {
    v7 = [(CSAppearance *)self->_desiredAppearance componentForType:13 property:1];
    [v7 isHidden];
    [OUTLINED_FUNCTION_8_0() setHidden:?];
  }

  [v6 isHidden];
  OUTLINED_FUNCTION_16();
  v8 = OUTLINED_FUNCTION_2_3();
  [v5 setAlpha:{-[CSCoverSheetAppearanceResolver _alphaForTransitionFromHidden:toHidden:unhiddenAlpha:timingFunction:](v8, v9, v10, v11)}];
  v12 = [(CSAppearance *)self->_desiredAppearance componentForType:2 property:128];
  transitionModifiers = [v12 transitionModifiers];

  v14 = [(CSAppearance *)self->_desiredAppearance componentForType:2 property:256, OUTLINED_FUNCTION_1_5()];
  v22 = v14;
  if (v14)
  {
    OUTLINED_FUNCTION_9_0(v14, v15, v16, v17, v18, v19, v20, v21, v44);
  }

  else
  {
    OUTLINED_FUNCTION_1_5();
  }

  if ((transitionModifiers & 0x20) != 0)
  {
    [v6 blurRadius];
    OUTLINED_FUNCTION_0_10();
    [v5 setBlurRadius:{OUTLINED_FUNCTION_17(v24, v25)}];
    OUTLINED_FUNCTION_7_0(v26, v27, v28, v29, v30, v31, v32, v33, *&v44);
    if ((transitionModifiers & 0x10) == 0)
    {
      goto LABEL_9;
    }
  }

  else if ((transitionModifiers & 0x10) == 0)
  {
    goto LABEL_9;
  }

  [v6 scale];
  OUTLINED_FUNCTION_0_10();
  [v5 setScale:{OUTLINED_FUNCTION_17(v34, v35)}];
  OUTLINED_FUNCTION_7_0(v36, v37, v38, v39, v40, v41, v42, v43, *&v44);
LABEL_9:

  return v5;
}

- (id)_resolveQuickActionsComponent
{
  objc_opt_new();
  OUTLINED_FUNCTION_3_2();
  v5 = [v4 priority:?];

  v6 = [(CSAppearance *)self->_oldAppearance componentForType:14 identifier:@"(active)"];
  v7 = [(CSAppearance *)self->_oldAppearance componentForType:14 property:1];
  [v7 isHidden];

  v8 = [OUTLINED_FUNCTION_23() componentForType:? property:?];
  isHidden = [v8 isHidden];

  v10 = [OUTLINED_FUNCTION_23() componentForType:? property:?];
  [v10 flag];

  [v5 setSuppressVisibleChanges:BSSettingFlagIsYes()];
  v11 = OUTLINED_FUNCTION_2_3();
  v14 = [CSCoverSheetAppearanceResolver _alphaForTransitionFromHidden:v11 toHidden:v12 unhiddenAlpha:isHidden timingFunction:v13];
  [v5 setHidden:isHidden];
  [v5 setAlpha:v14];
  v15 = [OUTLINED_FUNCTION_23() componentForType:? property:?];
  transitionModifiers = [v15 transitionModifiers];

  OUTLINED_FUNCTION_1_5();
  v17 = [OUTLINED_FUNCTION_23() componentForType:? property:?];
  v25 = v17;
  if (v17)
  {
    OUTLINED_FUNCTION_9_0(v17, v18, v19, v20, v21, v22, v23, v24, v55);
  }

  else
  {
    OUTLINED_FUNCTION_1_5();
  }

  if ((transitionModifiers & 8) == 0)
  {
    if ((transitionModifiers & 0x10) == 0)
    {
      goto LABEL_6;
    }

LABEL_11:
    [v6 scale];
    OUTLINED_FUNCTION_0_10();
    [v5 setScale:{OUTLINED_FUNCTION_17(v35, v36)}];
    OUTLINED_FUNCTION_7_0(v37, v38, v39, v40, v41, v42, v43, v44, *&v55);
    if ((transitionModifiers & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_12;
  }

  [v6 offset];
  [v5 setOffset:-[CSCoverSheetAppearanceResolver _offsetForTransitionFromOffset:toOffset:timingFunction:](self)];
  OUTLINED_FUNCTION_7_0(v27, v28, v29, v30, v31, v32, v33, v34, *&v55);
  if ((transitionModifiers & 0x10) != 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  if ((transitionModifiers & 0x20) == 0)
  {
    goto LABEL_7;
  }

LABEL_12:
  [v6 blurRadius];
  OUTLINED_FUNCTION_0_10();
  [v5 setBlurRadius:{OUTLINED_FUNCTION_17(v45, v46)}];
  OUTLINED_FUNCTION_7_0(v47, v48, v49, v50, v51, v52, v53, v54, *&v55);
LABEL_7:

  return v5;
}

- (id)_resolveTintingComponent
{
  v3 = objc_opt_new();
  v4 = [v3 priority:100];

  v5 = [(CSAppearance *)self->_oldAppearance componentForType:7 identifier:@"(active)"];
  v6 = [(CSAppearance *)self->_desiredAppearance componentForType:7 property:1];
  isHidden = [v5 isHidden];
  isHidden2 = [v6 isHidden];
  if (self->_isTransitioning && (BSIntervalSubIntervalValueForValue(), [v4 setAlpha:{0, 1, 0x3FE0000000000000, 1, 0x3FD999999999999ALL, 1, 0x3FF0000000000000, 1, 0, 1, 0x3FF0000000000000, 1}], self->_isTransitioning) && (isHidden2 & isHidden & 1) == 0)
  {
    [v4 setHidden:0];
  }

  else
  {
    [v4 setHidden:isHidden2];
    if (isHidden2)
    {
      [v4 setAlpha:0.0];
    }
  }

  return v4;
}

- (id)_resolveContentComponent
{
  v3 = objc_opt_new();
  v4 = [v3 priority:100];

  v5 = [(CSAppearance *)self->_oldAppearance componentForType:15 identifier:@"(active)"];
  v6 = [(CSAppearance *)self->_desiredAppearance componentForType:15 property:128];
  transitionModifiers = [v6 transitionModifiers];

  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  v8 = [(CSAppearance *)self->_desiredAppearance componentForType:15 property:256];
  v9 = v8;
  if (v8)
  {
    objc_msgSend_transitionInputs(v8);
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
    v12 = 0u;
  }

  if ((transitionModifiers & 8) != 0)
  {
    [(CSCoverSheetAppearanceResolver *)v5 _resolveContentComponent:self];
    if ((transitionModifiers & 0x10) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((transitionModifiers & 0x10) == 0)
  {
    goto LABEL_6;
  }

  [v5 scale];
  v15 = v11;
  v16 = 1;
  memset(v17, 0, sizeof(v17));
  v18 = *(&v13 + 1);
  v19 = 1;
  memset(v20, 0, sizeof(v20));
  [v4 setScale:{-[CSCoverSheetAppearanceResolver _valueForTransitionInterval:timingFunction:](self, &v15, 0)}];
  [v4 setAnimationDuration:*&v12];
LABEL_6:

  return v4;
}

- (id)_resolveSlideableContentComponent
{
  objc_opt_new();
  OUTLINED_FUNCTION_3_2();
  v5 = [v4 priority:?];

  [(CSAppearance *)self->_oldAppearance componentForType:5 identifier:@"(active)"];
  objc_claimAutoreleasedReturnValue();
  v6 = [OUTLINED_FUNCTION_5_0() componentForType:5 property:128];
  transitionModifiers = [v6 transitionModifiers];

  v8 = [(CSAppearance *)self->_desiredAppearance componentForType:5 property:256, OUTLINED_FUNCTION_1_5()];
  v16 = v8;
  if (v8)
  {
    OUTLINED_FUNCTION_9_0(v8, v9, v10, v11, v12, v13, v14, v15, v26);
  }

  else
  {
    OUTLINED_FUNCTION_1_5();
  }

  if ((transitionModifiers & 8) != 0)
  {
    OUTLINED_FUNCTION_7_0(v17.n128_f64[0], v18.n128_f64[0], v19.n128_f64[0], v20.n128_f64[0], v21.n128_f64[0], v22.n128_f64[0], v23, v24, *&v26);
  }

  OUTLINED_FUNCTION_18(v17, v18, v19, v20, v21, v22);
  [v2 offset];
  [v5 setOffset:-[CSCoverSheetAppearanceResolver _offsetForTransitionFromOffset:toOffset:timingFunction:](self)];

  return v5;
}

- (id)_resolveWallpaperComponent
{
  if (self)
  {
    v3 = objc_opt_new();
    v4 = [v3 priority:100];

    v5 = [*(self + 56) componentForType:6 identifier:@"(active)"];
    v6 = [*(self + 48) componentForType:6 property:1];
    isHidden = [v5 isHidden];
    [v6 isHidden];
    OUTLINED_FUNCTION_20();
    if (v9 && v8 && !((*(self + 56) == 0) | isHidden & 1))
    {
      v8 = 0;
    }

    [v4 setHidden:v8];
    v10 = [*(self + 48) flagForComponentType:6];
    [*(self + 56) flagForComponentType:6];
    OUTLINED_FUNCTION_20();
    if (v9 && ((BSSettingFlagIsExplicitNo() & 1) != 0 || *(self + 56) && (BSSettingFlagIsExplicitNo() & 1) != 0))
    {
      v11 = 0;
    }

    else
    {
      v11 = BSSettingFlagIsExplicitNo() ^ 1;
    }

    [v4 setShouldMatchBackgroundStyle:v11];
    [v6 level];
    [OUTLINED_FUNCTION_8_0() setLevel:?];
    v12 = [*(self + 48) componentForType:6 property:64];
    [v12 color];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_10() setColor:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_resolveModalContentComponent
{
  if (self)
  {
    objc_opt_new();
    OUTLINED_FUNCTION_3_2();
    v5 = [v4 priority:?];

    [*(self + 56) componentForType:22 identifier:@"(active)"];
    objc_claimAutoreleasedReturnValue();
    v6 = [OUTLINED_FUNCTION_5_0() componentForType:22 property:128];
    transitionModifiers = [v6 transitionModifiers];

    v8 = [*(self + 48) componentForType:22 property:{256, OUTLINED_FUNCTION_1_5()}];
    v16 = v8;
    if (v8)
    {
      OUTLINED_FUNCTION_9_0(v8, v9, v10, v11, v12, v13, v14, v15, v18);
    }

    else
    {
      OUTLINED_FUNCTION_1_5();
    }

    if ((transitionModifiers & 0x40) != 0)
    {
      [v2 level];
      if (*(self + 16) == 1)
      {
        BSFloatIsZero();
      }

      [OUTLINED_FUNCTION_14() setLevel:?];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_resolveStatusBarGradientComponent
{
  v3 = objc_opt_new();
  v4 = [v3 priority:100];

  v5 = [(CSAppearance *)self->_desiredAppearance componentForType:16 property:1];
  isHidden = [v5 isHidden];

  [v4 setHidden:isHidden];

  return v4;
}

- (id)_resolvePoseidonComponent
{
  v3 = objc_opt_new();
  v4 = [v3 priority:100];

  v5 = [(CSAppearance *)self->_desiredAppearance componentForType:17 property:1];
  isHidden = [v5 isHidden];

  [v4 setHidden:isHidden];
  [v4 setAlpha:(isHidden ^ 1)];

  return v4;
}

- (id)_resolveWhitePointComponent
{
  v3 = objc_opt_new();
  v4 = [v3 priority:100];

  v5 = [(CSAppearance *)self->_desiredAppearance componentForType:18 property:1];
  isHidden = [v5 isHidden];

  v7 = [(CSAppearance *)self->_desiredAppearance componentForType:18 property:8];
  flag = [v7 flag];

  v9 = [(CSAppearance *)self->_desiredAppearance componentForType:18 property:1024];
  [v9 animationDuration];
  v11 = v10;

  if (v11 == 0.0)
  {
    v12 = +[CSLockScreenDomain rootSettings];
    dashBoardRemoteContentSettings = [v12 dashBoardRemoteContentSettings];
    v14 = dashBoardRemoteContentSettings;
    if (isHidden)
    {
      if ([dashBoardRemoteContentSettings animatesUndimming])
      {
        [v14 undimDuration];
LABEL_7:
        v11 = v15;
      }
    }

    else if ([dashBoardRemoteContentSettings animatesDimming])
    {
      [v14 dimDuration];
      goto LABEL_7;
    }
  }

  [v4 setHidden:isHidden];
  [v4 setLighterReduction:flag];
  [v4 setAnimationDuration:v11];

  return v4;
}

- (id)_resolveWallpaperFloatingLayerComponent
{
  if (self)
  {
    objc_opt_new();
    OUTLINED_FUNCTION_3_2();
    v5 = [v4 priority:?];

    v6 = [OUTLINED_FUNCTION_22() componentForType:? property:?];
    [v6 shouldRenderInline];
    [OUTLINED_FUNCTION_8_0() setShouldRenderInline:?];
    v7 = [OUTLINED_FUNCTION_22() componentForType:? property:?];
    [v7 shouldRenderForPosterSwitcher];
    [OUTLINED_FUNCTION_8_0() setShouldRenderForPosterSwitcher:?];

    if (CSFeatureEnabled(12))
    {
      if (v6)
      {
        [v6 alpha];
      }

      else
      {
        v8 = 1.0;
      }

      [v5 setAlpha:v8];
    }

    [OUTLINED_FUNCTION_22() flagForComponentType:?];
    [*(self + 56) flagForComponentType:23];
    if (*(self + 16) == 1 && ((BSSettingFlagIsExplicitNo() & 1) != 0 || *(self + 56) && (BSSettingFlagIsExplicitNo() & 1) != 0))
    {
      v9 = 0;
    }

    else
    {
      v9 = BSSettingFlagIsExplicitNo() ^ 1;
    }

    [v5 setShouldMatchMove:v9];
    v10 = [OUTLINED_FUNCTION_22() componentForType:? property:?];
    [v10 level];
    [OUTLINED_FUNCTION_8_0() setLevel:?];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_resolveBackgroundContentComponent
{
  if (self)
  {
    objc_opt_new();
    OUTLINED_FUNCTION_3_2();
    v5 = [v4 priority:?];

    [*(self + 56) componentForType:24 identifier:@"(active)"];
    objc_claimAutoreleasedReturnValue();
    v6 = [OUTLINED_FUNCTION_5_0() componentForType:24 property:128];
    transitionModifiers = [v6 transitionModifiers];

    v8 = [*(self + 48) componentForType:24 property:{256, OUTLINED_FUNCTION_1_5()}];
    v16 = v8;
    if (v8)
    {
      OUTLINED_FUNCTION_9_0(v8, v9, v10, v11, v12, v13, v14, v15, v22);
    }

    else
    {
      OUTLINED_FUNCTION_1_5();
    }

    if ((transitionModifiers & 0x40) != 0)
    {
      [v2 level];
      if (*(self + 16) == 1)
      {
        BSFloatIsZero();
      }

      [OUTLINED_FUNCTION_14() setLevel:?];
    }

    v17 = [*(self + 48) componentForType:24 property:1];
    isHidden = [v17 isHidden];

    OUTLINED_FUNCTION_19();
    v19 = 1.0;
    if (isHidden)
    {
      v19 = 0.0;
    }

    [v5 setAlpha:v19];
    v20 = [*(self + 48) componentForType:24 property:8];
    [v20 flag];

    [OUTLINED_FUNCTION_14() setFlag:?];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_resolveComplicationSidebarComponent
{
  if (self)
  {
    objc_opt_new();
    OUTLINED_FUNCTION_3_2();
    v5 = [v4 priority:?];

    [*(self + 56) componentForType:25 identifier:@"(active)"];
    objc_claimAutoreleasedReturnValue();
    v6 = [OUTLINED_FUNCTION_5_0() componentForType:25 property:1];
    [v6 isHidden];

    OUTLINED_FUNCTION_19();
    [v2 isHidden];
    OUTLINED_FUNCTION_16();
    v7 = OUTLINED_FUNCTION_2_3();
    [v5 setAlpha:{-[CSCoverSheetAppearanceResolver _alphaForTransitionFromHidden:toHidden:unhiddenAlpha:timingFunction:](v7, v8, v9, v10)}];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_resolveFullBleedContentComponent
{
  if (self)
  {
    objc_opt_new();
    OUTLINED_FUNCTION_3_2();
    v5 = [v4 priority:?];

    [*(self + 48) flagForComponentType:26];
    [OUTLINED_FUNCTION_8_0() setFlag:?];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_resolveDimmingLayerComponent
{
  if (self)
  {
    objc_opt_new();
    OUTLINED_FUNCTION_3_2();
    v5 = [v4 priority:?];

    [*(self + 56) componentForType:27 identifier:@"(active)"];
    objc_claimAutoreleasedReturnValue();
    v6 = [OUTLINED_FUNCTION_5_0() componentForType:27 property:1];
    [v6 isHidden];

    OUTLINED_FUNCTION_19();
    [v2 isHidden];
    OUTLINED_FUNCTION_16();
    v7 = OUTLINED_FUNCTION_2_3();
    [v5 setAlpha:{-[CSCoverSheetAppearanceResolver _alphaForTransitionFromHidden:toHidden:unhiddenAlpha:timingFunction:](v7, v8, v9, v10)}];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (CSCoverSheetAppearanceResolver)init
{
  v30.receiver = self;
  v30.super_class = CSCoverSheetAppearanceResolver;
  v2 = [(CSCoverSheetAppearanceResolver *)&v30 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277D65F58]);
    interactiveAnimationCalculator = v2->_interactiveAnimationCalculator;
    v2->_interactiveAnimationCalculator = v3;

    v5 = v2->_interactiveAnimationCalculator;
    v6 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B0]];
    [(SBFSteppedAnimationTimingFunctionCalculator *)v5 addTimingFunction:v6 withName:@"backgroundStyle"];

    v7 = v2->_interactiveAnimationCalculator;
    v8 = *MEMORY[0x277CDA7A8];
    v9 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7A8]];
    [(SBFSteppedAnimationTimingFunctionCalculator *)v7 addTimingFunction:v9 withName:@"dateViewAlpha"];

    v10 = v2->_interactiveAnimationCalculator;
    v11 = [MEMORY[0x277CD9EF8] functionWithName:v8];
    [(SBFSteppedAnimationTimingFunctionCalculator *)v10 addTimingFunction:v11 withName:@"statusBarAlpha"];

    v12 = v2->_interactiveAnimationCalculator;
    v13 = [MEMORY[0x277CD9EF8] functionWithName:v8];
    [(SBFSteppedAnimationTimingFunctionCalculator *)v12 addTimingFunction:v13 withName:@"fixedFooterAlpha"];

    v14 = v2->_interactiveAnimationCalculator;
    v15 = [MEMORY[0x277CD9EF8] functionWithName:v8];
    [(SBFSteppedAnimationTimingFunctionCalculator *)v14 addTimingFunction:v15 withName:@"pageContentAlpha"];

    v16 = v2->_interactiveAnimationCalculator;
    v17 = *MEMORY[0x277CDA7B8];
    v18 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B8]];
    [(SBFSteppedAnimationTimingFunctionCalculator *)v16 addTimingFunction:v18 withName:@"proudLockAlpha"];

    v19 = v2->_interactiveAnimationCalculator;
    v20 = [MEMORY[0x277CD9EF8] functionWithName:v8];
    [(SBFSteppedAnimationTimingFunctionCalculator *)v19 addTimingFunction:v20 withName:@"legibilitySettings"];

    v21 = v2->_interactiveAnimationCalculator;
    v22 = [MEMORY[0x277CD9EF8] functionWithName:v8];
    [(SBFSteppedAnimationTimingFunctionCalculator *)v21 addTimingFunction:v22 withName:@"homeAffordance"];

    v23 = v2->_interactiveAnimationCalculator;
    v24 = [MEMORY[0x277CD9EF8] functionWithName:v8];
    [(SBFSteppedAnimationTimingFunctionCalculator *)v23 addTimingFunction:v24 withName:@"controlCenterGrabber"];

    v25 = v2->_interactiveAnimationCalculator;
    v26 = [MEMORY[0x277CD9EF8] functionWithName:v8];
    [(SBFSteppedAnimationTimingFunctionCalculator *)v25 addTimingFunction:v26 withName:@"complicationContainer"];

    v27 = v2->_interactiveAnimationCalculator;
    v28 = [MEMORY[0x277CD9EF8] functionWithName:v17];
    [(SBFSteppedAnimationTimingFunctionCalculator *)v27 addTimingFunction:v28 withName:@"notificationDimViewAlpha"];
  }

  return v2;
}

- (id)newActiveAppearanceGivenDesiredAppearance:(id)appearance oldAppearance:(id)oldAppearance activeAppearance:(id)activeAppearance activeBehavior:(id)behavior startIndex:(unint64_t)index targetIndex:(unint64_t)targetIndex indexOfMainPage:(unint64_t)page targetAppearance:(id)self0 modalAppearance:(id)self1 currentTransitionSource:(id)self2 contentTransitionIsAtCoverSheetLevel:(BOOL)self3 legibilityProvider:(id)self4 bounds:(CGRect)self5 whitePointValues:(id)self6 hasContentAboveCoverSheet:(BOOL)self7
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  appearanceCopy = appearance;
  oldAppearanceCopy = oldAppearance;
  activeAppearanceCopy = activeAppearance;
  behaviorCopy = behavior;
  targetAppearanceCopy = targetAppearance;
  modalAppearanceCopy = modalAppearance;
  sourceCopy = source;
  providerCopy = provider;
  objc_storeStrong(&self->_desiredAppearance, appearance);
  valuesCopy = values;
  objc_storeStrong(&self->_oldAppearance, oldAppearance);
  self->_activeBehavior = behaviorCopy;
  self->_startIndex = index;
  self->_targetIndex = targetIndex;
  self->_indexOfMainPage = page;
  objc_storeStrong(&self->_targetAppearance, targetAppearance);
  objc_storeStrong(&self->_modalAppearance, modalAppearance);
  objc_storeStrong(&self->_currentTransitionSource, source);
  self->_contentTransitionIsAtCoverSheetLevel = level;
  objc_storeStrong(&self->_legibilityProvider, provider);
  self->_bounds.origin.x = x;
  self->_bounds.origin.y = y;
  self->_bounds.size.width = width;
  self->_bounds.size.height = height;
  v29 = [valuesCopy copy];

  whitePointValues = self->_whitePointValues;
  self->_whitePointValues = v29;

  self->_hasContentAboveCoverSheet = sheet;
  self->_fraction = 1.0;
  isTransitioning = [(CSCoverSheetViewTransitionSource *)self->_currentTransitionSource isTransitioning];
  self->_isTransitioning = isTransitioning;
  if (isTransitioning)
  {
    currentTransitionSource = self->_currentTransitionSource;
    if (currentTransitionSource)
    {
      objc_msgSend_transitionContext(currentTransitionSource, 0.0);
    }

    BSIntervalFractionForValue();
    self->_fraction = v33;
  }

  BSIntervalClip();
  self->_appearanceFraction = v34;
  [(SBFSteppedAnimationTimingFunctionCalculator *)self->_interactiveAnimationCalculator setPercentComplete:?];
  _resolveLegibilitySettings = [(CSCoverSheetAppearanceResolver *)self _resolveLegibilitySettings];
  [activeAppearanceCopy setLegibilitySettings:_resolveLegibilitySettings];

  _resolveBackgroundComponent = [(CSCoverSheetAppearanceResolver *)self _resolveBackgroundComponent];
  [activeAppearanceCopy addComponent:_resolveBackgroundComponent];

  _resolveDateViewComponent = [(CSCoverSheetAppearanceResolver *)self _resolveDateViewComponent];
  [activeAppearanceCopy addComponent:_resolveDateViewComponent];

  _resolveComplicationContainerComponent = [(CSCoverSheetAppearanceResolver *)self _resolveComplicationContainerComponent];
  [activeAppearanceCopy addComponent:_resolveComplicationContainerComponent];

  _resolveRemoteInlineContentComponent = [(CSCoverSheetAppearanceResolver *)self _resolveRemoteInlineContentComponent];
  [activeAppearanceCopy addComponent:_resolveRemoteInlineContentComponent];

  _resolveStatusBarBackgroundComponent = [(CSCoverSheetAppearanceResolver *)self _resolveStatusBarBackgroundComponent];
  [activeAppearanceCopy addComponent:_resolveStatusBarBackgroundComponent];

  _resolveStatusBarComponent = [(CSCoverSheetAppearanceResolver *)self _resolveStatusBarComponent];
  [activeAppearanceCopy addComponent:_resolveStatusBarComponent];

  _resolvePageContentComponent = [(CSCoverSheetAppearanceResolver *)self _resolvePageContentComponent];
  [activeAppearanceCopy addComponent:_resolvePageContentComponent];

  _resolveProudLockComponent = [(CSCoverSheetAppearanceResolver *)self _resolveProudLockComponent];
  [activeAppearanceCopy addComponent:_resolveProudLockComponent];

  _resolveHomeAffordanceComponent = [(CSCoverSheetAppearanceResolver *)self _resolveHomeAffordanceComponent];
  [activeAppearanceCopy addComponent:_resolveHomeAffordanceComponent];

  v47 = [(CSCoverSheetAppearanceResolver *)self _resolveComponentWithType:3];
  [activeAppearanceCopy addComponent:v47];

  v48 = [(CSCoverSheetAppearanceResolver *)self _resolveComponentWithType:10];
  [activeAppearanceCopy addComponent:v48];

  v49 = [activeAppearanceCopy componentForType:12 identifier:@"(active)"];
  v50 = [(CSCoverSheetAppearanceResolver *)self _resolveFooterCallToActionLabelComponentWithHomeAffordance:v49];
  [activeAppearanceCopy addComponent:v50];

  _resolveControlCenterGrabberComponent = [(CSCoverSheetAppearanceResolver *)self _resolveControlCenterGrabberComponent];
  [activeAppearanceCopy addComponent:_resolveControlCenterGrabberComponent];

  _resolveQuickActionsComponent = [(CSCoverSheetAppearanceResolver *)self _resolveQuickActionsComponent];
  [activeAppearanceCopy addComponent:_resolveQuickActionsComponent];

  _resolveSlideableContentComponent = [(CSCoverSheetAppearanceResolver *)self _resolveSlideableContentComponent];
  [activeAppearanceCopy addComponent:_resolveSlideableContentComponent];

  _resolveWallpaperComponent = [(CSCoverSheetAppearanceResolver *)self _resolveWallpaperComponent];
  [activeAppearanceCopy addComponent:_resolveWallpaperComponent];

  _resolveTintingComponent = [(CSCoverSheetAppearanceResolver *)self _resolveTintingComponent];
  [activeAppearanceCopy addComponent:_resolveTintingComponent];

  _resolveContentComponent = [(CSCoverSheetAppearanceResolver *)self _resolveContentComponent];
  [activeAppearanceCopy addComponent:_resolveContentComponent];

  _resolveModalContentComponent = [(CSCoverSheetAppearanceResolver *)self _resolveModalContentComponent];
  [activeAppearanceCopy addComponent:_resolveModalContentComponent];

  _resolveStatusBarGradientComponent = [(CSCoverSheetAppearanceResolver *)self _resolveStatusBarGradientComponent];
  [activeAppearanceCopy addComponent:_resolveStatusBarGradientComponent];

  _resolvePoseidonComponent = [(CSCoverSheetAppearanceResolver *)self _resolvePoseidonComponent];
  [activeAppearanceCopy addComponent:_resolvePoseidonComponent];

  _resolveWhitePointComponent = [(CSCoverSheetAppearanceResolver *)self _resolveWhitePointComponent];
  [activeAppearanceCopy addComponent:_resolveWhitePointComponent];

  _resolveWallpaperFloatingLayerComponent = [(CSCoverSheetAppearanceResolver *)self _resolveWallpaperFloatingLayerComponent];
  [activeAppearanceCopy addComponent:_resolveWallpaperFloatingLayerComponent];

  _resolveBackgroundContentComponent = [(CSCoverSheetAppearanceResolver *)self _resolveBackgroundContentComponent];
  [activeAppearanceCopy addComponent:_resolveBackgroundContentComponent];

  _resolveComplicationSidebarComponent = [(CSCoverSheetAppearanceResolver *)self _resolveComplicationSidebarComponent];
  [activeAppearanceCopy addComponent:_resolveComplicationSidebarComponent];

  _resolveFullBleedContentComponent = [(CSCoverSheetAppearanceResolver *)self _resolveFullBleedContentComponent];
  [activeAppearanceCopy addComponent:_resolveFullBleedContentComponent];

  _resolveDimmingLayerComponent = [(CSCoverSheetAppearanceResolver *)self _resolveDimmingLayerComponent];
  [activeAppearanceCopy addComponent:_resolveDimmingLayerComponent];

  _resolveNotificationDimmingLayerComponent = [(CSCoverSheetAppearanceResolver *)self _resolveNotificationDimmingLayerComponent];
  [activeAppearanceCopy addComponent:_resolveNotificationDimmingLayerComponent];

  return activeAppearanceCopy;
}

- (CGRect)bounds
{
  x = self->_bounds.origin.x;
  y = self->_bounds.origin.y;
  width = self->_bounds.size.width;
  height = self->_bounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (id)_resolveNotificationDimmingLayerComponent
{
  if (self)
  {
    objc_opt_new();
    OUTLINED_FUNCTION_3_2();
    v5 = [v4 priority:?];

    [*(self + 56) componentForType:28 identifier:@"(active)"];
    objc_claimAutoreleasedReturnValue();
    v6 = [OUTLINED_FUNCTION_5_0() componentForType:28 property:1];
    isHidden = [v6 isHidden];

    OUTLINED_FUNCTION_19();
    [v2 isHidden];
    v8 = OUTLINED_FUNCTION_4_0();
    [v5 setAlpha:{-[CSCoverSheetAppearanceResolver _alphaForTransitionFromHidden:toHidden:unhiddenAlpha:timingFunction:](v8, v9, isHidden, v10)}];
    v11 = [*(self + 48) componentForType:28 property:1024];
    [v11 animationDuration];
    [v5 setAnimationDuration:?];

    v12 = [*(self + 48) componentForType:28 property:4];
    [v12 value];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_10() setValue:?];

    v13 = [*(self + 48) componentForType:28 property:2];
    [v13 offset];
    v15 = v14;
    v17 = v16;

    [v5 setOffset:{v15, v17}];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (double)_scaleForTransitionFromScale:(uint64_t)scale toScale:timingFunction:
{
  if (!scale)
  {
    return 0.0;
  }

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_6_0();
  return [(CSCoverSheetAppearanceResolver *)v1 _valueForTransitionInterval:v2 timingFunction:v3];
}

- (double)_offsetForTransitionFromOffset:(uint64_t)offset toOffset:timingFunction:
{
  if (!offset)
  {
    return 0.0;
  }

  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_6_0();
  v4 = [(CSCoverSheetAppearanceResolver *)v2 _valueForTransitionInterval:v3 timingFunction:0];
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_6_0();
  [(CSCoverSheetAppearanceResolver *)offset _valueForTransitionInterval:v5 timingFunction:0];
  return v4;
}

- (double)_dateViewAlphaForCurrentWakeState
{
  if (!self)
  {
    return 0.0;
  }

  rootSettings = [MEMORY[0x277D65FB8] rootSettings];
  [rootSettings awakeDateAlpha];
  v3 = v2;

  return v3;
}

- (double)_alphaForTransitionFromHidden:(uint64_t)hidden toHidden:(uint64_t)toHidden unhiddenAlpha:(uint64_t)alpha timingFunction:(void *)function
{
  if (!hidden)
  {
    return 0.0;
  }

  functionCopy = function;
  BSEqualBools();
  OUTLINED_FUNCTION_11();
  v5 = OUTLINED_FUNCTION_14();
  v8 = [(CSCoverSheetAppearanceResolver *)v5 _valueForTransitionInterval:v6 timingFunction:v7];

  return v8;
}

- (double)_alphaForTransitionFromHidden:(uint64_t)hidden toHidden:(void *)toHidden timingFunction:
{
  if (self)
  {
    return [CSCoverSheetAppearanceResolver _alphaForTransitionFromHidden:self toHidden:a2 unhiddenAlpha:hidden timingFunction:toHidden];
  }

  else
  {
    return 0.0;
  }
}

- (double)_finalizeOffset:(double)offset referenceFrame:
{
  if (!self)
  {
    return 0.0;
  }

  if (BSFloatEqualToFloat())
  {
    v6.origin.x = OUTLINED_FUNCTION_21();
    CGRectGetHeight(v6);
  }

  if (BSFloatEqualToFloat())
  {
    v7.origin.x = OUTLINED_FUNCTION_21();
    Width = CGRectGetWidth(v7);
    if (a2 >= 0.0)
    {
      return Width;
    }

    else
    {
      return -Width;
    }
  }

  return a2;
}

- (id)_resolveComponentWithType:(int64_t)type
{
  [CSComponent componentWithType:?];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_2();
  v7 = [v6 priority:?];

  [(CSAppearance *)self->_oldAppearance componentForType:type identifier:@"(active)"];
  objc_claimAutoreleasedReturnValue();
  v8 = [OUTLINED_FUNCTION_5_0() componentForType:type property:1];
  [v8 isHidden];
  [OUTLINED_FUNCTION_8_0() setHidden:?];

  isHidden = [v3 isHidden];
  [v7 isHidden];
  v10 = OUTLINED_FUNCTION_4_0();
  [v7 setAlpha:{-[CSCoverSheetAppearanceResolver _alphaForTransitionFromHidden:toHidden:unhiddenAlpha:timingFunction:](v10, isHidden, v11, v12)}];
  v13 = [(CSAppearance *)self->_desiredAppearance componentForType:type property:128];
  transitionModifiers = [v13 transitionModifiers];

  v15 = [(CSAppearance *)self->_desiredAppearance componentForType:type property:256, OUTLINED_FUNCTION_1_5()];
  v16 = v15;
  if (v15)
  {
    objc_msgSend_transitionInputs(v15);
  }

  else
  {
    OUTLINED_FUNCTION_1_5();
  }

  if ((transitionModifiers & 8) != 0)
  {
    [v3 offset];
    [v7 setOffset:-[CSCoverSheetAppearanceResolver _offsetForTransitionFromOffset:toOffset:timingFunction:](self)];
    OUTLINED_FUNCTION_7_0(v18, v19, v20, v21, v22, v23, v24, v25, v36);
    if ((transitionModifiers & 0x10) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((transitionModifiers & 0x10) == 0)
  {
    goto LABEL_6;
  }

  [v3 scale];
  OUTLINED_FUNCTION_0_10();
  [v7 setScale:{OUTLINED_FUNCTION_17(v26, v27)}];
  OUTLINED_FUNCTION_7_0(v28, v29, v30, v31, v32, v33, v34, v35, v36);
LABEL_6:

  return v7;
}

- (id)_resolveFooterCallToActionLabelComponentWithHomeAffordance:(id)affordance
{
  affordanceCopy = affordance;
  v5 = objc_opt_new();
  v6 = [v5 priority:100];

  v7 = [(CSAppearance *)self->_oldAppearance componentForType:9 identifier:@"(active)"];
  v8 = [(CSAppearance *)self->_desiredAppearance componentForType:9 property:1];
  isHidden = [v8 isHidden];

  if (SBFEffectiveHomeButtonType() == 2)
  {
    isHidden2 = [affordanceCopy isHidden];
  }

  else
  {
    isHidden2 = 0;
  }

  [v6 setHidden:(isHidden | isHidden2) & 1];
  isHidden3 = [v7 isHidden];
  [v6 isHidden];
  v12 = OUTLINED_FUNCTION_4_0();
  [v6 setAlpha:{-[CSCoverSheetAppearanceResolver _alphaForTransitionFromHidden:toHidden:unhiddenAlpha:timingFunction:](v12, isHidden3, v13, v14)}];

  return v6;
}

- (uint64_t)_levelForTransitionFromLevel:(uint64_t)level toLevel:
{
  if (!self)
  {
    return 0;
  }

  if (*(self + 16) == 1 && BSFloatIsZero())
  {
    return a2;
  }

  return level;
}

- (double)_valueForTransitionInterval:(void *)interval timingFunction:
{
  intervalCopy = interval;
  if (self)
  {
    OUTLINED_FUNCTION_20();
    if (v6)
    {
      if (intervalCopy)
      {
        [*(self + 8) valueForFunctionWithName:intervalCopy];
      }

      BSIntervalValueForFraction();
      v7 = v8;
    }

    else
    {
      v7 = a2[2];
    }
  }

  else
  {
    v7 = 0.0;
  }

  return v7;
}

- (uint64_t)_resolveContentComponent
{
  [self offset];
  [a4 setOffset:-[CSCoverSheetAppearanceResolver _offsetForTransitionFromOffset:toOffset:timingFunction:](a3)];
  return [a4 setAnimationDuration:*a2];
}

@end