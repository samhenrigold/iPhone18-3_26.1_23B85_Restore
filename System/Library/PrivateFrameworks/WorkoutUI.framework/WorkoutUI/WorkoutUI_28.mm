CGFloat one-time initialization function for topSpacersHeight()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;

  v10.origin.x = v2;
  v10.origin.y = v4;
  v10.size.width = v6;
  v10.size.height = v8;
  result = CGRectGetHeight(v10) * 0.09;
  static EffortEntryView.Layout.topSpacersHeight = *&result;
  return result;
}

void *EffortEntryView.explanationString.getter()
{
  v1 = type metadata accessor for ExertionValue();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AppleExertionScale();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v0 + 40);
  v10 = *(v0 + 48);
  v11 = *(v0 + 64);
  LOBYTE(v20) = *(v0 + 56);
  v21 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
  State.wrappedValue.getter();
  if (LOBYTE(v22) == 1)
  {
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v12 = WorkoutUIBundle.super.isa;
    v23._object = 0xE000000000000000;
    v13._countAndFlagsBits = 0x44455050494B53;
    v14.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v14.value._object = 0xEB00000000656C62;
    v13._object = 0xE700000000000000;
    v15._countAndFlagsBits = 0;
    v15._object = 0xE000000000000000;
    v23._countAndFlagsBits = 0;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v13, v14, v12, v15, v23)._countAndFlagsBits;

    return countAndFlagsBits;
  }

  v20 = v9;
  v21 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySdGMd, &_s7SwiftUI5StateVySdGMR);
  result = State.wrappedValue.getter();
  v18 = round(v22);
  if ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v18 <= -9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v18 >= 9.22337204e18)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v18 < 1)
  {
    return 0;
  }

  v20 = v9;
  v21 = v10;
  result = State.wrappedValue.getter();
  v19 = round(v22);
  if ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_19;
  }

  if (v19 <= -9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v19 >= 9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  result = (v19 - 1);
  if (!__OFSUB__(v19, 1))
  {
    static AppleExertionScale.exertionForRow(_:)();
    AppleExertionScale.exertionValue.getter();
    (*(v6 + 8))(v8, v5);
    countAndFlagsBits = ExertionValue.shortDescription.getter();
    (*(v2 + 8))(v4, v1);
    return countAndFlagsBits;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t EffortEntryView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v55 = a1;
  v2 = type metadata accessor for ScrollIndicatorVisibility();
  v46 = *(v2 - 8);
  v47 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAA15ModifiedContentVyAA6ZStackVyAA05TupleC0VyAHyAA14LinearGradientVAA30_SafeAreaRegionsIgnoringLayoutVG_AHyAHyAA14GeometryReaderVyAHyAA6VStackVyALyAHyAA6SpacerVAA06_FrameR0VG_ALyALyAHyAA4TextVAA31AccessibilityAttachmentModifierVG_AZtGSg_AHyAUyALyAcAE15sensoryFeedback_7triggerQrAA15SensoryFeedbackV_qd__tSQRd__lFQOyAHyAcAE9focusableyQrSbFQOyAHy07WorkoutB0010EffortZoneC0VAYG_Qo_AA21_TraitWritingModifierVyAA18TransitionTraitKeyVGG_SiQo_Sg_AZSgA11_17EffortValueButtonVtGGA20_GtGSgAWA11_06EffortC21CurrentWorkloadButtonVSgtGGA20_GGAA08_PaddingR0VGAA05_FlexwR0VGtGGAA25_AppearanceActionModifierVG_SdQo_Md, &_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAA15ModifiedContentVyAA6ZStackVyAA05TupleC0VyAHyAA14LinearGradientVAA30_SafeAreaRegionsIgnoringLayoutVG_AHyAHyAA14GeometryReaderVyAHyAA6VStackVyALyAHyAA6SpacerVAA06_FrameR0VG_ALyALyAHyAA4TextVAA31AccessibilityAttachmentModifierVG_AZtGSg_AHyAUyALyAcAE15sensoryFeedback_7triggerQrAA15SensoryFeedbackV_qd__tSQRd__lFQOyAHyAcAE9focusableyQrSbFQOyAHy07WorkoutB0010EffortZoneC0VAYG_Qo_AA21_TraitWritingModifierVyAA18TransitionTraitKeyVGG_SiQo_Sg_AZSgA11_17EffortValueButtonVtGGA20_GtGSgAWA11_06EffortC21CurrentWorkloadButtonVSgtGGA20_GGAA08_PaddingR0VGAA05_FlexwR0VGtGGAA25_AppearanceActionModifierVG_SdQo_MR);
  v45 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v6 = &v45 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE16scrollIndicators_4axesQrAA25ScrollIndicatorVisibilityV_AA4AxisO3SetVtFQOyAcAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAA15ModifiedContentVyAA6ZStackVyAA05TupleC0VyAPyAA14LinearGradientVAA30_SafeAreaRegionsIgnoringLayoutVG_APyAPyAA14GeometryReaderVyAPyAA6VStackVyATyAPyAA6SpacerVAA06_FrameZ0VG_ATyATyAPyAA4TextVAA31AccessibilityAttachmentModifierVG_A6_tGSg_APyA1_yATyAcAE15sensoryFeedback_7triggerQrAA15SensoryFeedbackV_qd__tSQRd__lFQOyAPyAcAE9focusableyQrSbFQOyAPy07WorkoutB0010EffortZoneC0VA5_G_Qo_AA21_TraitWritingModifierVyAA18TransitionTraitKeyVGG_SiQo_Sg_A6_SgA19_17EffortValueButtonVtGGA28_GtGSgA3_A19_06EffortC21CurrentWorkloadButtonVSgtGGA28_GGAA08_PaddingZ0VGAA010_FlexFrameZ0VGtGGAA25_AppearanceActionModifierVG_SdQo__Qo_Md, &_s7SwiftUI4ViewPAAE16scrollIndicators_4axesQrAA25ScrollIndicatorVisibilityV_AA4AxisO3SetVtFQOyAcAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAA15ModifiedContentVyAA6ZStackVyAA05TupleC0VyAPyAA14LinearGradientVAA30_SafeAreaRegionsIgnoringLayoutVG_APyAPyAA14GeometryReaderVyAPyAA6VStackVyATyAPyAA6SpacerVAA06_FrameZ0VG_ATyATyAPyAA4TextVAA31AccessibilityAttachmentModifierVG_A6_tGSg_APyA1_yATyAcAE15sensoryFeedback_7triggerQrAA15SensoryFeedbackV_qd__tSQRd__lFQOyAPyAcAE9focusableyQrSbFQOyAPy07WorkoutB0010EffortZoneC0VA5_G_Qo_AA21_TraitWritingModifierVyAA18TransitionTraitKeyVGG_SiQo_Sg_A6_SgA19_17EffortValueButtonVtGGA28_GtGSgA3_A19_06EffortC21CurrentWorkloadButtonVSgtGGA28_GGAA08_PaddingZ0VGAA010_FlexFrameZ0VGtGGAA25_AppearanceActionModifierVG_SdQo__Qo_MR);
  v50 = *(v7 - 8);
  v51 = v7;
  MEMORY[0x28223BE20](v7);
  v49 = &v45 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE7toolbar7contentQrqd__yXE_tAA14ToolbarContentRd__lFQOyAcAE16scrollIndicators_4axesQrAA25ScrollIndicatorVisibilityV_AA4AxisO3SetVtFQOyAcAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAA08ModifiedG0VyAA6ZStackVyAA05TupleC0VyASyAA14LinearGradientVAA30_SafeAreaRegionsIgnoringLayoutVG_ASyASyAA14GeometryReaderVyASyAA6VStackVyAWyASyAA6SpacerVAA12_FrameLayoutVG_AWyAWyASyAA4TextVAA31AccessibilityAttachmentModifierVG_A9_tGSg_ASyA4_yAWyAcAE15sensoryFeedback_7triggerQrAA15SensoryFeedbackV_qd__tSQRd__lFQOyASyAcAE9focusableyQrSbFQOyASy07WorkoutB0010EffortZoneC0VA8_G_Qo_AA21_TraitWritingModifierVyAA18TransitionTraitKeyVGG_SiQo_Sg_A9_SgA22_17EffortValueButtonVtGGA31_GtGSgA6_A22_06EffortC21CurrentWorkloadButtonVSgtGGA31_GGAA14_PaddingLayoutVGAA16_FlexFrameLayoutVGtGGAA25_AppearanceActionModifierVG_SdQo__Qo__AA0vfG0VyAA0fG7BuilderV10buildBlockyQrxAaFRzlFZQOy_AA0F4ItemVyytAA6ButtonVyAA5ImageVGGQo_Sg_A69_yytASyASyA71_yASyA73_A13_GGAA32_EnvironmentKeyTransformModifierVySbGGAA14_OpacityEffectVGGtGQo_Md, &_s7SwiftUI4ViewPAAE7toolbar7contentQrqd__yXE_tAA14ToolbarContentRd__lFQOyAcAE16scrollIndicators_4axesQrAA25ScrollIndicatorVisibilityV_AA4AxisO3SetVtFQOyAcAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAA08ModifiedG0VyAA6ZStackVyAA05TupleC0VyASyAA14LinearGradientVAA30_SafeAreaRegionsIgnoringLayoutVG_ASyASyAA14GeometryReaderVyASyAA6VStackVyAWyASyAA6SpacerVAA12_FrameLayoutVG_AWyAWyASyAA4TextVAA31AccessibilityAttachmentModifierVG_A9_tGSg_ASyA4_yAWyAcAE15sensoryFeedback_7triggerQrAA15SensoryFeedbackV_qd__tSQRd__lFQOyASyAcAE9focusableyQrSbFQOyASy07WorkoutB0010EffortZoneC0VA8_G_Qo_AA21_TraitWritingModifierVyAA18TransitionTraitKeyVGG_SiQo_Sg_A9_SgA22_17EffortValueButtonVtGGA31_GtGSgA6_A22_06EffortC21CurrentWorkloadButtonVSgtGGA31_GGAA14_PaddingLayoutVGAA16_FlexFrameLayoutVGtGGAA25_AppearanceActionModifierVG_SdQo__Qo__AA0vfG0VyAA0fG7BuilderV10buildBlockyQrxAaFRzlFZQOy_AA0F4ItemVyytAA6ButtonVyAA5ImageVGGQo_Sg_A69_yytASyASyA71_yASyA73_A13_GGAA32_EnvironmentKeyTransformModifierVySbGGAA14_OpacityEffectVGGtGQo_MR);
  v53 = *(v9 - 8);
  v54 = v9;
  MEMORY[0x28223BE20](v9);
  v52 = &v45 - v10;
  v11 = v1[5];
  v61 = v1[4];
  v62 = v11;
  v12 = v1[7];
  v63 = v1[6];
  v64 = v12;
  v13 = v1[1];
  v58 = *v1;
  v59 = v13;
  v14 = v1[3];
  v60[0] = v1[2];
  v60[1] = v14;
  v15 = static Alignment.center.getter();
  v17 = v16;
  closure #1 in EffortEntryView.body.getter(&v58, v82);
  v77 = v82[12];
  v78 = v82[13];
  v73 = v82[8];
  v74 = v82[9];
  v75 = v82[10];
  v76 = v82[11];
  v69 = v82[4];
  v70 = v82[5];
  v71 = v82[6];
  v72 = v82[7];
  v65 = v82[0];
  v66 = v82[1];
  v67 = v82[2];
  v68 = v82[3];
  v80[12] = v82[12];
  v80[13] = v82[13];
  v80[8] = v82[8];
  v80[9] = v82[9];
  v80[10] = v82[10];
  v80[11] = v82[11];
  v80[4] = v82[4];
  v80[5] = v82[5];
  v80[6] = v82[6];
  v80[7] = v82[7];
  v80[0] = v82[0];
  v80[1] = v82[1];
  v79 = *&v82[14];
  v81 = *&v82[14];
  v80[2] = v82[2];
  v80[3] = v82[3];
  outlined init with copy of TupleView<(ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>, ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<VStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, TupleView<(TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, ModifiedContent<Spacer, _FrameLayout>)>?, ModifiedContent<VStack<TupleView<((<<opaque return type of View.sensoryFeedback<A>(_:trigger:)>>.0)?, ModifiedContent<Spacer, _FrameLayout>?, EffortValueButton)>>, _TraitWritingModifier<TransitionTraitKey>>)>?, Spacer, EffortViewCurrentWorkloadButton?)>>, _TraitWritingModifier<TransitionTraitKey>>>, _PaddingLayout>, _FlexFrameLayout>)>(&v65, v57, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA14LinearGradientVAA30_SafeAreaRegionsIgnoringLayoutVG_AEyAEyAA14GeometryReaderVyAEyAA6VStackVyACyAEyAA6SpacerVAA06_FrameM0VG_ACyACyAEyAA4TextVAA31AccessibilityAttachmentModifierVG_AStGSg_AEyANyACyAA0D0PAAE15sensoryFeedback_7triggerQrAA07SensoryX0V_qd__tSQRd__lFQOyAEyA0_AAE9focusableyQrSbFQOyAEy07WorkoutB0010EffortZoneD0VARG_Qo_AA013_TraitWritingV0VyAA18TransitionTraitKeyVGG_SiQo_Sg_ASSgA6_17EffortValueButtonVtGGA15_GtGSgAPA6_06EffortD21CurrentWorkloadButtonVSgtGGA15_GGAA08_PaddingM0VGAA05_FlexrM0VGtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA14LinearGradientVAA30_SafeAreaRegionsIgnoringLayoutVG_AEyAEyAA14GeometryReaderVyAEyAA6VStackVyACyAEyAA6SpacerVAA06_FrameM0VG_ACyACyAEyAA4TextVAA31AccessibilityAttachmentModifierVG_AStGSg_AEyANyACyAA0D0PAAE15sensoryFeedback_7triggerQrAA07SensoryX0V_qd__tSQRd__lFQOyAEyA0_AAE9focusableyQrSbFQOyAEy07WorkoutB0010EffortZoneD0VARG_Qo_AA013_TraitWritingV0VyAA18TransitionTraitKeyVGG_SiQo_Sg_ASSgA6_17EffortValueButtonVtGGA15_GtGSgAPA6_06EffortD21CurrentWorkloadButtonVSgtGGA15_GGAA08_PaddingM0VGAA05_FlexrM0VGtGMR);
  outlined destroy of TupleView<(ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>, ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<VStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, TupleView<(TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, ModifiedContent<Spacer, _FrameLayout>)>?, ModifiedContent<VStack<TupleView<((<<opaque return type of View.sensoryFeedback<A>(_:trigger:)>>.0)?, ModifiedContent<Spacer, _FrameLayout>?, EffortValueButton)>>, _TraitWritingModifier<TransitionTraitKey>>)>?, Spacer, EffortViewCurrentWorkloadButton?)>>, _TraitWritingModifier<TransitionTraitKey>>>, _PaddingLayout>, _FlexFrameLayout>)>(v80, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA14LinearGradientVAA30_SafeAreaRegionsIgnoringLayoutVG_AEyAEyAA14GeometryReaderVyAEyAA6VStackVyACyAEyAA6SpacerVAA06_FrameM0VG_ACyACyAEyAA4TextVAA31AccessibilityAttachmentModifierVG_AStGSg_AEyANyACyAA0D0PAAE15sensoryFeedback_7triggerQrAA07SensoryX0V_qd__tSQRd__lFQOyAEyA0_AAE9focusableyQrSbFQOyAEy07WorkoutB0010EffortZoneD0VARG_Qo_AA013_TraitWritingV0VyAA18TransitionTraitKeyVGG_SiQo_Sg_ASSgA6_17EffortValueButtonVtGGA15_GtGSgAPA6_06EffortD21CurrentWorkloadButtonVSgtGGA15_GGAA08_PaddingM0VGAA05_FlexrM0VGtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA14LinearGradientVAA30_SafeAreaRegionsIgnoringLayoutVG_AEyAEyAA14GeometryReaderVyAEyAA6VStackVyACyAEyAA6SpacerVAA06_FrameM0VG_ACyACyAEyAA4TextVAA31AccessibilityAttachmentModifierVG_AStGSg_AEyANyACyAA0D0PAAE15sensoryFeedback_7triggerQrAA07SensoryX0V_qd__tSQRd__lFQOyAEyA0_AAE9focusableyQrSbFQOyAEy07WorkoutB0010EffortZoneD0VARG_Qo_AA013_TraitWritingV0VyAA18TransitionTraitKeyVGG_SiQo_Sg_ASSgA6_17EffortValueButtonVtGGA15_GtGSgAPA6_06EffortD21CurrentWorkloadButtonVSgtGGA15_GGAA08_PaddingM0VGAA05_FlexrM0VGtGMR);
  *&v57[208] = v77;
  *&v57[224] = v78;
  *&v57[240] = v79;
  *&v57[144] = v73;
  *&v57[160] = v74;
  *&v57[192] = v76;
  *&v57[176] = v75;
  *&v57[80] = v69;
  *&v57[96] = v70;
  *&v57[128] = v72;
  *&v57[112] = v71;
  *&v57[16] = v65;
  *&v57[32] = v66;
  *&v57[64] = v68;
  *&v57[48] = v67;
  v18 = swift_allocObject();
  v19 = v62;
  v18[5] = v61;
  v18[6] = v19;
  v20 = v64;
  v18[7] = v63;
  v18[8] = v20;
  v21 = v59;
  v18[1] = v58;
  v18[2] = v21;
  v22 = v60[1];
  v18[3] = v60[0];
  v18[4] = v22;
  *v57 = v15;
  *&v57[8] = v17;
  *&v57[248] = partial apply for closure #2 in EffortEntryView.body.getter;
  *&v57[256] = v18;
  *&v57[264] = 0;
  *&v57[272] = 0;
  v56 = *(v60 + 8);
  outlined init with copy of EffortEntryView(&v58, v82);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySdGMd, &_s7SwiftUI5StateVySdGMR);
  State.wrappedValue.getter();
  v23 = swift_allocObject();
  v24 = v62;
  v23[5] = v61;
  v23[6] = v24;
  v25 = v64;
  v23[7] = v63;
  v23[8] = v25;
  v26 = v59;
  v23[1] = v58;
  v23[2] = v26;
  v27 = v60[1];
  v23[3] = v60[0];
  v23[4] = v27;
  outlined init with copy of EffortEntryView(&v58, v82);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyACyAA14LinearGradientVAA30_SafeAreaRegionsIgnoringLayoutVG_ACyACyAA14GeometryReaderVyACyAA6VStackVyAGyACyAA6SpacerVAA06_FrameN0VG_AGyAGyACyAA4TextVAA31AccessibilityAttachmentModifierVG_AUtGSg_ACyAPyAGyAA0G0PAAE15sensoryFeedback_7triggerQrAA07SensoryY0V_qd__tSQRd__lFQOyACyA2_AAE9focusableyQrSbFQOyACy07WorkoutB0010EffortZoneG0VATG_Qo_AA013_TraitWritingW0VyAA18TransitionTraitKeyVGG_SiQo_Sg_AUSgA8_17EffortValueButtonVtGGA17_GtGSgARA8_06EffortG21CurrentWorkloadButtonVSgtGGA17_GGAA08_PaddingN0VGAA05_FlexsN0VGtGGAA017_AppearanceActionW0VGMd, &_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyACyAA14LinearGradientVAA30_SafeAreaRegionsIgnoringLayoutVG_ACyACyAA14GeometryReaderVyACyAA6VStackVyAGyACyAA6SpacerVAA06_FrameN0VG_AGyAGyACyAA4TextVAA31AccessibilityAttachmentModifierVG_AUtGSg_ACyAPyAGyAA0G0PAAE15sensoryFeedback_7triggerQrAA07SensoryY0V_qd__tSQRd__lFQOyACyA2_AAE9focusableyQrSbFQOyACy07WorkoutB0010EffortZoneG0VATG_Qo_AA013_TraitWritingW0VyAA18TransitionTraitKeyVGG_SiQo_Sg_AUSgA8_17EffortValueButtonVtGGA17_GtGSgARA8_06EffortG21CurrentWorkloadButtonVSgtGGA17_GGAA08_PaddingN0VGAA05_FlexsN0VGtGGAA017_AppearanceActionW0VGMR);
  v29 = lazy protocol witness table accessor for type ModifiedContent<ZStack<TupleView<(ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>, ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<VStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, TupleView<(TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, ModifiedContent<Spacer, _FrameLayout>)>?, ModifiedContent<VStack<TupleView<((<<opaque return type of View.sensoryFeedback<A>(_:trigger:)>>.0)?, ModifiedContent<Spacer, _FrameLayout>?, EffortValueButton)>>, _TraitWritingModifier<TransitionTraitKey>>)>?, Spacer, EffortViewCurrentWorkloadButton?)>>, _TraitWritingModifier<TransitionTraitKey>>>, _PaddingLayout>, _FlexFrameLayout>)>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>();
  View.onChange<A>(of:initial:_:)();

  memcpy(v82, v57, 0x118uLL);
  v30 = outlined destroy of TupleView<(ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>, ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<VStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, TupleView<(TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, ModifiedContent<Spacer, _FrameLayout>)>?, ModifiedContent<VStack<TupleView<((<<opaque return type of View.sensoryFeedback<A>(_:trigger:)>>.0)?, ModifiedContent<Spacer, _FrameLayout>?, EffortValueButton)>>, _TraitWritingModifier<TransitionTraitKey>>)>?, Spacer, EffortViewCurrentWorkloadButton?)>>, _TraitWritingModifier<TransitionTraitKey>>>, _PaddingLayout>, _FlexFrameLayout>)>(v82, &_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyACyAA14LinearGradientVAA30_SafeAreaRegionsIgnoringLayoutVG_ACyACyAA14GeometryReaderVyACyAA6VStackVyAGyACyAA6SpacerVAA06_FrameN0VG_AGyAGyACyAA4TextVAA31AccessibilityAttachmentModifierVG_AUtGSg_ACyAPyAGyAA0G0PAAE15sensoryFeedback_7triggerQrAA07SensoryY0V_qd__tSQRd__lFQOyACyA2_AAE9focusableyQrSbFQOyACy07WorkoutB0010EffortZoneG0VATG_Qo_AA013_TraitWritingW0VyAA18TransitionTraitKeyVGG_SiQo_Sg_AUSgA8_17EffortValueButtonVtGGA17_GtGSgARA8_06EffortG21CurrentWorkloadButtonVSgtGGA17_GGAA08_PaddingN0VGAA05_FlexsN0VGtGGAA017_AppearanceActionW0VGMd, &_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyACyAA14LinearGradientVAA30_SafeAreaRegionsIgnoringLayoutVG_ACyACyAA14GeometryReaderVyACyAA6VStackVyAGyACyAA6SpacerVAA06_FrameN0VG_AGyAGyACyAA4TextVAA31AccessibilityAttachmentModifierVG_AUtGSg_ACyAPyAGyAA0G0PAAE15sensoryFeedback_7triggerQrAA07SensoryY0V_qd__tSQRd__lFQOyACyA2_AAE9focusableyQrSbFQOyACy07WorkoutB0010EffortZoneG0VATG_Qo_AA013_TraitWritingW0VyAA18TransitionTraitKeyVGG_SiQo_Sg_AUSgA8_17EffortValueButtonVtGGA17_GtGSgARA8_06EffortG21CurrentWorkloadButtonVSgtGGA17_GGAA08_PaddingN0VGAA05_FlexsN0VGtGGAA017_AppearanceActionW0VGMR);
  MEMORY[0x20F309B80](v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI4AxisO3SetVGMd, &_ss23_ContiguousArrayStorageCy7SwiftUI4AxisO3SetVGMR);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_20CB5DA80;
  v32 = static Axis.Set.vertical.getter();
  *(v31 + 32) = v32;
  v33 = static Axis.Set.horizontal.getter();
  *(v31 + 33) = v33;
  Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v32)
  {
    Axis.Set.init(rawValue:)();
  }

  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v33)
  {
    Axis.Set.init(rawValue:)();
  }

  *v57 = v28;
  *&v57[8] = MEMORY[0x277D839F8];
  *&v57[16] = v29;
  *&v57[24] = MEMORY[0x277D83A28];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v36 = v48;
  v35 = v49;
  View.scrollIndicators(_:axes:)();
  (*(v46 + 8))(v4, v47);
  v37 = (*(v45 + 8))(v6, v36);
  v47 = &v45;
  MEMORY[0x28223BE20](v37);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19TupleToolbarContentVyAA0dE7BuilderV10buildBlockyQrxAA0dE0RzlFZQOy_AA0D4ItemVyytAA6ButtonVyAA5ImageVGGQo_Sg_AIyytAA08ModifiedE0VyASyAKyASyAmA31AccessibilityAttachmentModifierVGGAA024_EnvironmentKeyTransformO0VySbGGAA14_OpacityEffectVGGtGMd, &_s7SwiftUI19TupleToolbarContentVyAA0dE7BuilderV10buildBlockyQrxAA0dE0RzlFZQOy_AA0D4ItemVyytAA6ButtonVyAA5ImageVGGQo_Sg_AIyytAA08ModifiedE0VyASyAKyASyAmA31AccessibilityAttachmentModifierVGGAA024_EnvironmentKeyTransformO0VySbGGAA14_OpacityEffectVGGtGMR);
  *v57 = v36;
  *&v57[8] = OpaqueTypeConformance2;
  v38 = swift_getOpaqueTypeConformance2();
  v39 = lazy protocol witness table accessor for type ZStack<TupleView<(ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>, ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<VStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, TupleView<(TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, ModifiedContent<Spacer, _FrameLayout>)>?, ModifiedContent<VStack<TupleView<((<<opaque return type of View.sensoryFeedback<A>(_:trigger:)>>.0)?, ModifiedContent<Spacer, _FrameLayout>?, EffortValueButton)>>, _TraitWritingModifier<TransitionTraitKey>>)>?, Spacer, EffortViewCurrentWorkloadButton?)>>, _TraitWritingModifier<TransitionTraitKey>>>, _PaddingLayout>, _FlexFrameLayout>)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type TupleToolbarContent<((<<opaque return type of static ToolbarContentBuilder.buildBlock<A>(_:)>>.0)?, ToolbarItem<(), ModifiedContent<ModifiedContent<Button<ModifiedContent<Image, AccessibilityAttachmentModifier>>, _EnvironmentKeyTransformModifier<Bool>>, _OpacityEffect>>)> and conformance TupleToolbarContent<A>, &_s7SwiftUI19TupleToolbarContentVyAA0dE7BuilderV10buildBlockyQrxAA0dE0RzlFZQOy_AA0D4ItemVyytAA6ButtonVyAA5ImageVGGQo_Sg_AIyytAA08ModifiedE0VyASyAKyASyAmA31AccessibilityAttachmentModifierVGGAA024_EnvironmentKeyTransformO0VySbGGAA14_OpacityEffectVGGtGMd, &_s7SwiftUI19TupleToolbarContentVyAA0dE7BuilderV10buildBlockyQrxAA0dE0RzlFZQOy_AA0D4ItemVyytAA6ButtonVyAA5ImageVGGQo_Sg_AIyytAA08ModifiedE0VyASyAKyASyAmA31AccessibilityAttachmentModifierVGGAA024_EnvironmentKeyTransformO0VySbGGAA14_OpacityEffectVGGtGMR, MEMORY[0x277CDDF68]);
  v40 = v51;
  v41 = v52;
  View.toolbar<A>(content:)();
  (*(v50 + 8))(v35, v40);
  v56 = v64;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
  v42 = State.projectedValue.getter();
  MEMORY[0x28223BE20](v42);
  *v57 = v40;
  *&v57[8] = v46;
  *&v57[16] = v38;
  *&v57[24] = v39;
  swift_getOpaqueTypeConformance2();
  lazy protocol witness table accessor for type EffortListView and conformance EffortListView();
  v43 = v54;
  View.navigationDestination<A>(isPresented:destination:)();

  return (*(v53 + 8))(v41, v43);
}

void closure #1 in EffortEntryView.body.getter(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore18AppleExertionScaleOSgMd, &_s11WorkoutCore18AppleExertionScaleOSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v33 - v5;
  v63 = *(a1 + 40);
  v40 = *(a1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySdGMd, &_s7SwiftUI5StateVySdGMR);
  State.wrappedValue.getter();
  v7 = round(*&v38);
  if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v7 <= -9.22337204e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v7 >= 9.22337204e18)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v7 < 1)
  {
    v9 = 1;
    goto LABEL_11;
  }

  v40 = v63;
  State.wrappedValue.getter();
  v8 = round(*&v38);
  if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_15;
  }

  if (v8 <= -9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v8 >= 9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (!__OFSUB__(v8, 1))
  {
    static AppleExertionScale.exertionForRow(_:)();
    v9 = 0;
LABEL_11:
    v10 = type metadata accessor for AppleExertionScale();
    (*(*(v10 - 8) + 56))(v6, v9, 1, v10);
    specialized static EffortColors.gradient(exertion:)(v6);
    _s11WorkoutCore18AppleExertionScaleOSgWOhTm_3(v6, &_s11WorkoutCore18AppleExertionScaleOSgMd, &_s11WorkoutCore18AppleExertionScaleOSgMR);
    static UnitPoint.topLeading.getter();
    static UnitPoint.bottomTrailing.getter();
    LinearGradient.init(gradient:startPoint:endPoint:)();
    v34 = static SafeAreaRegions.all.getter();
    v11 = static Edge.Set.all.getter();
    v12 = v53;
    v13 = swift_allocObject();
    v14 = a1[5];
    v13[5] = a1[4];
    v13[6] = v14;
    v15 = a1[7];
    v13[7] = a1[6];
    v13[8] = v15;
    v16 = a1[1];
    v13[1] = *a1;
    v13[2] = v16;
    v17 = a1[3];
    v13[3] = a1[2];
    v13[4] = v17;
    outlined init with copy of EffortEntryView(a1, &v40);
    v18 = static Edge.Set.horizontal.getter();
    static Alignment.center.getter();
    v37 = 1;
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v19 = v37;
    *&v52[55] = v59;
    *&v52[71] = v60;
    *&v52[87] = v61;
    *&v52[103] = v62;
    *&v52[7] = v56;
    *&v52[23] = v57;
    *&v52[39] = v58;
    *&v38 = partial apply for closure #1 in closure #1 in EffortEntryView.body.getter;
    *(&v38 + 1) = v13;
    LOBYTE(v39[0]) = v18;
    *(&v39[1] + 8) = 0u;
    *(v39 + 8) = 0u;
    BYTE8(v39[2]) = v37;
    *(&v39[2] + 9) = *v52;
    v20 = *v52;
    v21 = *&v52[16];
    *(&v39[3] + 9) = *&v52[16];
    v23 = *&v52[64];
    v22 = *&v52[80];
    *(&v39[7] + 9) = *&v52[80];
    *(&v39[6] + 9) = *&v52[64];
    v24 = *&v52[96];
    *(&v39[8] + 9) = *&v52[96];
    *(&v39[4] + 9) = *&v52[32];
    v25 = *&v52[32];
    v26 = *&v52[48];
    *(&v39[5] + 9) = *&v52[48];
    *&v36[39] = v39[1];
    *&v36[23] = v39[0];
    *&v36[7] = v38;
    *&v36[103] = v39[5];
    *&v36[87] = v39[4];
    *(&v39[9] + 1) = *(&v62 + 1);
    *&v36[71] = v39[3];
    *&v36[55] = v39[2];
    *&v36[167] = v39[9];
    *&v36[151] = v39[8];
    *&v36[135] = v39[7];
    *&v36[119] = v39[6];
    v27 = v54;
    *(a2 + 24) = v55;
    *(a2 + 8) = v27;
    v28 = *&v36[144];
    *(a2 + 177) = *&v36[128];
    *(a2 + 193) = v28;
    *(a2 + 209) = *&v36[160];
    v29 = *&v36[80];
    *(a2 + 113) = *&v36[64];
    *(a2 + 129) = v29;
    v30 = *&v36[112];
    *(a2 + 145) = *&v36[96];
    *(a2 + 161) = v30;
    v31 = *&v36[16];
    *(a2 + 49) = *v36;
    *(a2 + 65) = v31;
    v32 = *&v36[48];
    *(a2 + 81) = *&v36[32];
    *(a2 + 97) = v32;
    v42 = 0u;
    v43 = 0u;
    v49 = v23;
    v50 = v22;
    *a2 = v12;
    *(a2 + 40) = v34;
    *(a2 + 48) = v11;
    *(a2 + 224) = *&v36[175];
    *&v40 = partial apply for closure #1 in closure #1 in EffortEntryView.body.getter;
    *(&v40 + 1) = v13;
    v41 = v18;
    v44 = v19;
    *v51 = v24;
    *&v51[15] = *&v52[111];
    v45 = v20;
    v46 = v21;
    v47 = v25;
    v48 = v26;

    outlined init with copy of TupleView<(ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>, ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<VStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, TupleView<(TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, ModifiedContent<Spacer, _FrameLayout>)>?, ModifiedContent<VStack<TupleView<((<<opaque return type of View.sensoryFeedback<A>(_:trigger:)>>.0)?, ModifiedContent<Spacer, _FrameLayout>?, EffortValueButton)>>, _TraitWritingModifier<TransitionTraitKey>>)>?, Spacer, EffortViewCurrentWorkloadButton?)>>, _TraitWritingModifier<TransitionTraitKey>>>, _PaddingLayout>, _FlexFrameLayout>)>(&v38, &v35, &_s7SwiftUI15ModifiedContentVyACyAA14GeometryReaderVyACyAA6VStackVyAA9TupleViewVyACyAA6SpacerVAA12_FrameLayoutVG_AIyAIyACyAA4TextVAA31AccessibilityAttachmentModifierVG_ANtGSg_ACyAGyAIyAA0I0PAAE15sensoryFeedback_7triggerQrAA07SensoryR0V_qd__tSQRd__lFQOyACyAwAE9focusableyQrSbFQOyACy07WorkoutB0010EffortZoneI0VAMG_Qo_AA013_TraitWritingP0VyAA010TransitionY3KeyVGG_SiQo_Sg_ANSgA1_0W11ValueButtonVtGGA10_GtGSgAKA1_0wI21CurrentWorkloadButtonVSgtGGA10_GGAA08_PaddingL0VGAA05_FlexkL0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA14GeometryReaderVyACyAA6VStackVyAA9TupleViewVyACyAA6SpacerVAA12_FrameLayoutVG_AIyAIyACyAA4TextVAA31AccessibilityAttachmentModifierVG_ANtGSg_ACyAGyAIyAA0I0PAAE15sensoryFeedback_7triggerQrAA07SensoryR0V_qd__tSQRd__lFQOyACyAwAE9focusableyQrSbFQOyACy07WorkoutB0010EffortZoneI0VAMG_Qo_AA013_TraitWritingP0VyAA010TransitionY3KeyVGG_SiQo_Sg_ANSgA1_0W11ValueButtonVtGGA10_GtGSgAKA1_0wI21CurrentWorkloadButtonVSgtGGA10_GGAA08_PaddingL0VGAA05_FlexkL0VGMR);
    outlined destroy of TupleView<(ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>, ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<VStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, TupleView<(TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, ModifiedContent<Spacer, _FrameLayout>)>?, ModifiedContent<VStack<TupleView<((<<opaque return type of View.sensoryFeedback<A>(_:trigger:)>>.0)?, ModifiedContent<Spacer, _FrameLayout>?, EffortValueButton)>>, _TraitWritingModifier<TransitionTraitKey>>)>?, Spacer, EffortViewCurrentWorkloadButton?)>>, _TraitWritingModifier<TransitionTraitKey>>>, _PaddingLayout>, _FlexFrameLayout>)>(&v40, &_s7SwiftUI15ModifiedContentVyACyAA14GeometryReaderVyACyAA6VStackVyAA9TupleViewVyACyAA6SpacerVAA12_FrameLayoutVG_AIyAIyACyAA4TextVAA31AccessibilityAttachmentModifierVG_ANtGSg_ACyAGyAIyAA0I0PAAE15sensoryFeedback_7triggerQrAA07SensoryR0V_qd__tSQRd__lFQOyACyAwAE9focusableyQrSbFQOyACy07WorkoutB0010EffortZoneI0VAMG_Qo_AA013_TraitWritingP0VyAA010TransitionY3KeyVGG_SiQo_Sg_ANSgA1_0W11ValueButtonVtGGA10_GtGSgAKA1_0wI21CurrentWorkloadButtonVSgtGGA10_GGAA08_PaddingL0VGAA05_FlexkL0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA14GeometryReaderVyACyAA6VStackVyAA9TupleViewVyACyAA6SpacerVAA12_FrameLayoutVG_AIyAIyACyAA4TextVAA31AccessibilityAttachmentModifierVG_ANtGSg_ACyAGyAIyAA0I0PAAE15sensoryFeedback_7triggerQrAA07SensoryR0V_qd__tSQRd__lFQOyACyAwAE9focusableyQrSbFQOyACy07WorkoutB0010EffortZoneI0VAMG_Qo_AA013_TraitWritingP0VyAA010TransitionY3KeyVGG_SiQo_Sg_ANSgA1_0W11ValueButtonVtGGA10_GtGSgAKA1_0wI21CurrentWorkloadButtonVSgtGGA10_GGAA08_PaddingL0VGAA05_FlexkL0VGMR);

    return;
  }

LABEL_18:
  __break(1u);
}

uint64_t closure #1 in closure #1 in EffortEntryView.body.getter@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = static HorizontalAlignment.center.getter();
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA6SpacerVAA06_FrameG0VG_AIyAIyAKyAA4TextVAA31AccessibilityAttachmentModifierVG_APtGSg_AKyAA0F0VyAIyAA0D0PAAE15sensoryFeedback_7triggerQrAA07SensoryR0V_qd__tSQRd__lFQOyAKyA_AAE9focusableyQrSbFQOyAKy07WorkoutB0010EffortZoneD0VAOG_Qo_AA013_TraitWritingP0VyAA010TransitionY3KeyVGG_SiQo_Sg_APSgA5_0W11ValueButtonVtGGA14_GtGSgAMA5_0wD21CurrentWorkloadButtonVSgtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA6SpacerVAA06_FrameG0VG_AIyAIyAKyAA4TextVAA31AccessibilityAttachmentModifierVG_APtGSg_AKyAA0F0VyAIyAA0D0PAAE15sensoryFeedback_7triggerQrAA07SensoryR0V_qd__tSQRd__lFQOyAKyA_AAE9focusableyQrSbFQOyAKy07WorkoutB0010EffortZoneD0VAOG_Qo_AA013_TraitWritingP0VyAA010TransitionY3KeyVGG_SiQo_Sg_APSgA5_0W11ValueButtonVtGGA14_GtGSgAMA5_0wD21CurrentWorkloadButtonVSgtGGMR);
  closure #1 in closure #1 in closure #1 in EffortEntryView.body.getter(a2, a1, a3 + *(v6 + 44));
  static AnyTransition.move(edge:)();
  static AnyTransition.opacity.getter();
  v7 = static AnyTransition.asymmetric(insertion:removal:)();

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyAA6SpacerVAA12_FrameLayoutVG_AGyAGyACyAA4TextVAA31AccessibilityAttachmentModifierVG_ALtGSg_ACyAEyAGyAA0G0PAAE15sensoryFeedback_7triggerQrAA07SensoryP0V_qd__tSQRd__lFQOyACyAuAE9focusableyQrSbFQOyACy07WorkoutB0010EffortZoneG0VAKG_Qo_AA013_TraitWritingN0VyAA010TransitionW3KeyVGG_SiQo_Sg_ALSgA_0U11ValueButtonVtGGA8_GtGSgAIA_0uG21CurrentWorkloadButtonVSgtGGA8_GMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyAA6SpacerVAA12_FrameLayoutVG_AGyAGyACyAA4TextVAA31AccessibilityAttachmentModifierVG_ALtGSg_ACyAEyAGyAA0G0PAAE15sensoryFeedback_7triggerQrAA07SensoryP0V_qd__tSQRd__lFQOyACyAuAE9focusableyQrSbFQOyACy07WorkoutB0010EffortZoneG0VAKG_Qo_AA013_TraitWritingN0VyAA010TransitionW3KeyVGG_SiQo_Sg_ALSgA_0U11ValueButtonVtGGA8_GtGSgAIA_0uG21CurrentWorkloadButtonVSgtGGA8_GMR);
  *(a3 + *(result + 36)) = v7;
  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in EffortEntryView.body.getter@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v103 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyACyAA15ModifiedContentVyAA4TextVAA31AccessibilityAttachmentModifierVG_AEyAA6SpacerVAA12_FrameLayoutVGtGSg_AEyAA6VStackVyACyAA0D0PAAE15sensoryFeedback_7triggerQrAA07SensoryP0V_qd__tSQRd__lFQOyAEyAuAE9focusableyQrSbFQOyAEy07WorkoutB0010EffortZoneD0VANG_Qo_AA013_TraitWritingJ0VyAA010TransitionW3KeyVGG_SiQo_Sg_AOSgA_0U11ValueButtonVtGGA8_GtGMd, &_s7SwiftUI9TupleViewVyACyAA15ModifiedContentVyAA4TextVAA31AccessibilityAttachmentModifierVG_AEyAA6SpacerVAA12_FrameLayoutVGtGSg_AEyAA6VStackVyACyAA0D0PAAE15sensoryFeedback_7triggerQrAA07SensoryP0V_qd__tSQRd__lFQOyAEyAuAE9focusableyQrSbFQOyAEy07WorkoutB0010EffortZoneD0VANG_Qo_AA013_TraitWritingJ0VyAA010TransitionW3KeyVGG_SiQo_Sg_AOSgA_0U11ValueButtonVtGGA8_GtGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v104 = &v84 - v7;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA0G0PAAE15sensoryFeedback_7triggerQrAA07SensoryI0V_qd__tSQRd__lFQOyACyAiAE9focusableyQrSbFQOyACy07WorkoutB0010EffortZoneG0VAA12_FrameLayoutVG_Qo_AA21_TraitWritingModifierVyAA010TransitionR3KeyVGG_SiQo_Sg_ACyAA6SpacerVASGSgAO0N11ValueButtonVtGGAZGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA0G0PAAE15sensoryFeedback_7triggerQrAA07SensoryI0V_qd__tSQRd__lFQOyACyAiAE9focusableyQrSbFQOyACy07WorkoutB0010EffortZoneG0VAA12_FrameLayoutVG_Qo_AA21_TraitWritingModifierVyAA010TransitionR3KeyVGG_SiQo_Sg_ACyAA6SpacerVASGSgAO0N11ValueButtonVtGGAZGMR);
  MEMORY[0x28223BE20](v102);
  v9 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v84 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA4TextVAA31AccessibilityAttachmentModifierVG_AEyAA6SpacerVAA12_FrameLayoutVGtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA4TextVAA31AccessibilityAttachmentModifierVG_AEyAA6SpacerVAA12_FrameLayoutVGtGMR);
  v98 = *(v13 - 8);
  v99 = v13;
  MEMORY[0x28223BE20](v13);
  v97 = &v84 - v14;
  v15 = type metadata accessor for AccessibilityTraits();
  v93 = *(v15 - 8);
  v94 = v15;
  MEMORY[0x28223BE20](v15);
  v92 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA31AccessibilityAttachmentModifierVGMR);
  MEMORY[0x28223BE20](v17 - 8);
  v96 = &v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v95 = &v84 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA4TextVAA31AccessibilityAttachmentModifierVG_AEyAA6SpacerVAA12_FrameLayoutVGtGSgMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA4TextVAA31AccessibilityAttachmentModifierVG_AEyAA6SpacerVAA12_FrameLayoutVGtGSgMR);
  MEMORY[0x28223BE20](v21 - 8);
  v101 = &v84 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v100 = &v84 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyACyAA15ModifiedContentVyAA4TextVAA31AccessibilityAttachmentModifierVG_AEyAA6SpacerVAA12_FrameLayoutVGtGSg_AEyAA6VStackVyACyAA0D0PAAE15sensoryFeedback_7triggerQrAA07SensoryP0V_qd__tSQRd__lFQOyAEyAuAE9focusableyQrSbFQOyAEy07WorkoutB0010EffortZoneD0VANG_Qo_AA013_TraitWritingJ0VyAA010TransitionW3KeyVGG_SiQo_Sg_AOSgA_0U11ValueButtonVtGGA8_GtGSgMd, &_s7SwiftUI9TupleViewVyACyAA15ModifiedContentVyAA4TextVAA31AccessibilityAttachmentModifierVG_AEyAA6SpacerVAA12_FrameLayoutVGtGSg_AEyAA6VStackVyACyAA0D0PAAE15sensoryFeedback_7triggerQrAA07SensoryP0V_qd__tSQRd__lFQOyAEyAuAE9focusableyQrSbFQOyAEy07WorkoutB0010EffortZoneD0VANG_Qo_AA013_TraitWritingJ0VyAA010TransitionW3KeyVGG_SiQo_Sg_AOSgA_0U11ValueButtonVtGGA8_GtGSgMR);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v84 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v109 = &v84 - v29;
  if (one-time initialization token for topSpacersHeight != -1)
  {
    swift_once();
  }

  v30 = static EffortEntryView.Layout.topSpacersHeight;
  static Alignment.center.getter();
  v91 = v30;
  _FrameLayout.init(width:height:alignment:)();
  v107 = v117;
  v108 = v115;
  v105 = v120;
  v106 = v119;
  v129 = 1;
  v128 = v116;
  v127 = v118;
  v110 = *(a1 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
  State.wrappedValue.getter();
  if ((v121 & 1) == 0)
  {
    v84 = v12;
    v85 = v9;
    v86 = v27;
    v87 = v6;
    v88 = v5;
    v89 = a1;
    v90 = a3;
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v33 = WorkoutUIBundle.super.isa;
    v130._object = 0xE000000000000000;
    v34.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v34.value._object = 0xEB00000000656C62;
    v35._object = 0x800000020CB9E200;
    v35._countAndFlagsBits = 0xD000000000000010;
    v36._countAndFlagsBits = 0;
    v36._object = 0xE000000000000000;
    v130._countAndFlagsBits = 0;
    v37 = NSLocalizedString(_:tableName:bundle:value:comment:)(v35, v34, v33, v36, v130);

    v110 = v37;
    lazy protocol witness table accessor for type String and conformance String();
    v38 = Text.init<A>(_:)();
    v40 = v39;
    v42 = v41;
    static Font.title.getter();
    static Font.Weight.bold.getter();
    Font.weight(_:)();

    v43 = Text.font(_:)();
    v45 = v44;
    v47 = v46;
    v49 = v48;

    outlined consume of Text.Storage(v38, v40, v42 & 1);

    v110._countAndFlagsBits = v43;
    v110._object = v45;
    v47 &= 1u;
    v111 = v47;
    v112 = v49;
    v50 = v92;
    static AccessibilityTraits.isHeader.getter();
    v51 = v95;
    MEMORY[0x20F30A9C0](v50, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8]);
    (*(v93 + 8))(v50, v94);
    outlined consume of Text.Storage(v43, v45, v47);

    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v93 = v123;
    v94 = v121;
    v52 = v125;
    v92 = v126;
    LOBYTE(v110._countAndFlagsBits) = 1;
    v114 = v122;
    v113 = v124;
    v53 = v96;
    _s11WorkoutCore18AppleExertionScaleOSgWOcTm_2(v51, v96, &_s7SwiftUI15ModifiedContentVyAA4TextVAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA31AccessibilityAttachmentModifierVGMR);
    countAndFlagsBits = v110._countAndFlagsBits;
    v55 = v114;
    LOBYTE(v43) = v113;
    v56 = v97;
    _s11WorkoutCore18AppleExertionScaleOSgWOcTm_2(v53, v97, &_s7SwiftUI15ModifiedContentVyAA4TextVAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA31AccessibilityAttachmentModifierVGMR);
    v57 = v56 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA31AccessibilityAttachmentModifierVG_ACyAA6SpacerVAA12_FrameLayoutVGtMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA31AccessibilityAttachmentModifierVG_ACyAA6SpacerVAA12_FrameLayoutVGtMR) + 48);
    *v57 = 0;
    *(v57 + 8) = countAndFlagsBits;
    v58 = v93;
    *(v57 + 16) = v94;
    *(v57 + 24) = v55;
    *(v57 + 32) = v58;
    *(v57 + 40) = v43;
    v59 = v92;
    *(v57 + 48) = v52;
    *(v57 + 56) = v59;
    _s11WorkoutCore18AppleExertionScaleOSgWOhTm_3(v51, &_s7SwiftUI15ModifiedContentVyAA4TextVAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA31AccessibilityAttachmentModifierVGMR);
    _s11WorkoutCore18AppleExertionScaleOSgWOhTm_3(v53, &_s7SwiftUI15ModifiedContentVyAA4TextVAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA31AccessibilityAttachmentModifierVGMR);
    v60 = v100;
    outlined init with take of ModifiedContent<Button<ModifiedContent<Image, AccessibilityAttachmentModifier>>, _EnvironmentKeyTransformModifier<Bool>>(v56, v100, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA4TextVAA31AccessibilityAttachmentModifierVG_AEyAA6SpacerVAA12_FrameLayoutVGtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA4TextVAA31AccessibilityAttachmentModifierVG_AEyAA6SpacerVAA12_FrameLayoutVGtGMR);
    (*(v98 + 56))(v60, 0, 1, v99);
    v61 = static HorizontalAlignment.center.getter();
    v62 = v84;
    *v84 = v61;
    *(v62 + 8) = 0;
    *(v62 + 16) = 0;
    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA0D0PAAE15sensoryFeedback_7triggerQrAA07SensoryJ0V_qd__tSQRd__lFQOyAA15ModifiedContentVyAkAE9focusableyQrSbFQOyAQy07WorkoutB0010EffortZoneD0VAA06_FrameG0VG_Qo_AA21_TraitWritingModifierVyAA010TransitionT3KeyVGG_SiQo_Sg_AQyAA6SpacerVAWGSgAS0Q11ValueButtonVtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA0D0PAAE15sensoryFeedback_7triggerQrAA07SensoryJ0V_qd__tSQRd__lFQOyAA15ModifiedContentVyAkAE9focusableyQrSbFQOyAQy07WorkoutB0010EffortZoneD0VAA06_FrameG0VG_Qo_AA21_TraitWritingModifierVyAA010TransitionT3KeyVGG_SiQo_Sg_AQyAA6SpacerVAWGSgAS0Q11ValueButtonVtGGMR);
    a1 = v89;
    closure #1 in closure #1 in closure #1 in closure #1 in EffortEntryView.body.getter(v89, v103, v62 + *(v63 + 44));
    static AnyTransition.move(edge:)();
    static AnyTransition.opacity.getter();
    v64 = static AnyTransition.asymmetric(insertion:removal:)();

    v65 = v101;
    *(v62 + *(v102 + 36)) = v64;
    _s11WorkoutCore18AppleExertionScaleOSgWOcTm_2(v60, v65, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA4TextVAA31AccessibilityAttachmentModifierVG_AEyAA6SpacerVAA12_FrameLayoutVGtGSgMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA4TextVAA31AccessibilityAttachmentModifierVG_AEyAA6SpacerVAA12_FrameLayoutVGtGSgMR);
    v66 = v85;
    outlined init with copy of TupleView<(ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>, ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<VStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, TupleView<(TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, ModifiedContent<Spacer, _FrameLayout>)>?, ModifiedContent<VStack<TupleView<((<<opaque return type of View.sensoryFeedback<A>(_:trigger:)>>.0)?, ModifiedContent<Spacer, _FrameLayout>?, EffortValueButton)>>, _TraitWritingModifier<TransitionTraitKey>>)>?, Spacer, EffortViewCurrentWorkloadButton?)>>, _TraitWritingModifier<TransitionTraitKey>>>, _PaddingLayout>, _FlexFrameLayout>)>(v62, v85, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA0G0PAAE15sensoryFeedback_7triggerQrAA07SensoryI0V_qd__tSQRd__lFQOyACyAiAE9focusableyQrSbFQOyACy07WorkoutB0010EffortZoneG0VAA12_FrameLayoutVG_Qo_AA21_TraitWritingModifierVyAA010TransitionR3KeyVGG_SiQo_Sg_ACyAA6SpacerVASGSgAO0N11ValueButtonVtGGAZGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA0G0PAAE15sensoryFeedback_7triggerQrAA07SensoryI0V_qd__tSQRd__lFQOyACyAiAE9focusableyQrSbFQOyACy07WorkoutB0010EffortZoneG0VAA12_FrameLayoutVG_Qo_AA21_TraitWritingModifierVyAA010TransitionR3KeyVGG_SiQo_Sg_ACyAA6SpacerVASGSgAO0N11ValueButtonVtGGAZGMR);
    v67 = v104;
    _s11WorkoutCore18AppleExertionScaleOSgWOcTm_2(v65, v104, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA4TextVAA31AccessibilityAttachmentModifierVG_AEyAA6SpacerVAA12_FrameLayoutVGtGSgMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA4TextVAA31AccessibilityAttachmentModifierVG_AEyAA6SpacerVAA12_FrameLayoutVGtGSgMR);
    v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA4TextVAA31AccessibilityAttachmentModifierVG_AEyAA6SpacerVAA12_FrameLayoutVGtGSg_AEyAA6VStackVyACyAA0D0PAAE15sensoryFeedback_7triggerQrAA07SensoryP0V_qd__tSQRd__lFQOyAEyAuAE9focusableyQrSbFQOyAEy07WorkoutB0010EffortZoneD0VANG_Qo_AA013_TraitWritingJ0VyAA010TransitionW3KeyVGG_SiQo_Sg_AOSgA_0U11ValueButtonVtGGA8_GtMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA4TextVAA31AccessibilityAttachmentModifierVG_AEyAA6SpacerVAA12_FrameLayoutVGtGSg_AEyAA6VStackVyACyAA0D0PAAE15sensoryFeedback_7triggerQrAA07SensoryP0V_qd__tSQRd__lFQOyAEyAuAE9focusableyQrSbFQOyAEy07WorkoutB0010EffortZoneD0VANG_Qo_AA013_TraitWritingJ0VyAA010TransitionW3KeyVGG_SiQo_Sg_AOSgA_0U11ValueButtonVtGGA8_GtMR);
    outlined init with copy of TupleView<(ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>, ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<VStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, TupleView<(TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, ModifiedContent<Spacer, _FrameLayout>)>?, ModifiedContent<VStack<TupleView<((<<opaque return type of View.sensoryFeedback<A>(_:trigger:)>>.0)?, ModifiedContent<Spacer, _FrameLayout>?, EffortValueButton)>>, _TraitWritingModifier<TransitionTraitKey>>)>?, Spacer, EffortViewCurrentWorkloadButton?)>>, _TraitWritingModifier<TransitionTraitKey>>>, _PaddingLayout>, _FlexFrameLayout>)>(v66, v67 + *(v68 + 48), &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA0G0PAAE15sensoryFeedback_7triggerQrAA07SensoryI0V_qd__tSQRd__lFQOyACyAiAE9focusableyQrSbFQOyACy07WorkoutB0010EffortZoneG0VAA12_FrameLayoutVG_Qo_AA21_TraitWritingModifierVyAA010TransitionR3KeyVGG_SiQo_Sg_ACyAA6SpacerVASGSgAO0N11ValueButtonVtGGAZGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA0G0PAAE15sensoryFeedback_7triggerQrAA07SensoryI0V_qd__tSQRd__lFQOyACyAiAE9focusableyQrSbFQOyACy07WorkoutB0010EffortZoneG0VAA12_FrameLayoutVG_Qo_AA21_TraitWritingModifierVyAA010TransitionR3KeyVGG_SiQo_Sg_ACyAA6SpacerVASGSgAO0N11ValueButtonVtGGAZGMR);
    outlined destroy of TupleView<(ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>, ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<VStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, TupleView<(TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, ModifiedContent<Spacer, _FrameLayout>)>?, ModifiedContent<VStack<TupleView<((<<opaque return type of View.sensoryFeedback<A>(_:trigger:)>>.0)?, ModifiedContent<Spacer, _FrameLayout>?, EffortValueButton)>>, _TraitWritingModifier<TransitionTraitKey>>)>?, Spacer, EffortViewCurrentWorkloadButton?)>>, _TraitWritingModifier<TransitionTraitKey>>>, _PaddingLayout>, _FlexFrameLayout>)>(v62, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA0G0PAAE15sensoryFeedback_7triggerQrAA07SensoryI0V_qd__tSQRd__lFQOyACyAiAE9focusableyQrSbFQOyACy07WorkoutB0010EffortZoneG0VAA12_FrameLayoutVG_Qo_AA21_TraitWritingModifierVyAA010TransitionR3KeyVGG_SiQo_Sg_ACyAA6SpacerVASGSgAO0N11ValueButtonVtGGAZGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA0G0PAAE15sensoryFeedback_7triggerQrAA07SensoryI0V_qd__tSQRd__lFQOyACyAiAE9focusableyQrSbFQOyACy07WorkoutB0010EffortZoneG0VAA12_FrameLayoutVG_Qo_AA21_TraitWritingModifierVyAA010TransitionR3KeyVGG_SiQo_Sg_ACyAA6SpacerVASGSgAO0N11ValueButtonVtGGAZGMR);
    _s11WorkoutCore18AppleExertionScaleOSgWOhTm_3(v60, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA4TextVAA31AccessibilityAttachmentModifierVG_AEyAA6SpacerVAA12_FrameLayoutVGtGSgMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA4TextVAA31AccessibilityAttachmentModifierVG_AEyAA6SpacerVAA12_FrameLayoutVGtGSgMR);
    outlined destroy of TupleView<(ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>, ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<VStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, TupleView<(TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, ModifiedContent<Spacer, _FrameLayout>)>?, ModifiedContent<VStack<TupleView<((<<opaque return type of View.sensoryFeedback<A>(_:trigger:)>>.0)?, ModifiedContent<Spacer, _FrameLayout>?, EffortValueButton)>>, _TraitWritingModifier<TransitionTraitKey>>)>?, Spacer, EffortViewCurrentWorkloadButton?)>>, _TraitWritingModifier<TransitionTraitKey>>>, _PaddingLayout>, _FlexFrameLayout>)>(v66, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA0G0PAAE15sensoryFeedback_7triggerQrAA07SensoryI0V_qd__tSQRd__lFQOyACyAiAE9focusableyQrSbFQOyACy07WorkoutB0010EffortZoneG0VAA12_FrameLayoutVG_Qo_AA21_TraitWritingModifierVyAA010TransitionR3KeyVGG_SiQo_Sg_ACyAA6SpacerVASGSgAO0N11ValueButtonVtGGAZGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA0G0PAAE15sensoryFeedback_7triggerQrAA07SensoryI0V_qd__tSQRd__lFQOyACyAiAE9focusableyQrSbFQOyACy07WorkoutB0010EffortZoneG0VAA12_FrameLayoutVG_Qo_AA21_TraitWritingModifierVyAA010TransitionR3KeyVGG_SiQo_Sg_ACyAA6SpacerVASGSgAO0N11ValueButtonVtGGAZGMR);
    _s11WorkoutCore18AppleExertionScaleOSgWOhTm_3(v65, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA4TextVAA31AccessibilityAttachmentModifierVG_AEyAA6SpacerVAA12_FrameLayoutVGtGSgMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA4TextVAA31AccessibilityAttachmentModifierVG_AEyAA6SpacerVAA12_FrameLayoutVGtGSgMR);
    v69 = v109;
    sub_20C68E118(v67, v109);
    (*(v87 + 56))(v69, 0, 1, v88);
    a3 = v90;
    v27 = v86;
    if ((a1[2] & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    v32 = swift_allocObject();
    v70 = a1[5];
    v32[5] = a1[4];
    v32[6] = v70;
    v71 = a1[7];
    v32[7] = a1[6];
    v32[8] = v71;
    v72 = a1[1];
    v32[1] = *a1;
    v32[2] = v72;
    v73 = a1[3];
    v32[3] = a1[2];
    v32[4] = v73;
    outlined init with copy of EffortEntryView(a1, &v110);

    v31 = partial apply for closure #2 in closure #1 in closure #1 in closure #1 in EffortEntryView.body.getter;
    goto LABEL_10;
  }

  (*(v6 + 56))(v109, 1, 1, v5);
  if (a1[2])
  {
    goto LABEL_9;
  }

LABEL_5:
  v31 = 0;
  v32 = 0;
LABEL_10:
  v74 = v129;
  v75 = v128;
  v76 = v127;
  v77 = v109;
  outlined init with copy of TupleView<(ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>, ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<VStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, TupleView<(TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, ModifiedContent<Spacer, _FrameLayout>)>?, ModifiedContent<VStack<TupleView<((<<opaque return type of View.sensoryFeedback<A>(_:trigger:)>>.0)?, ModifiedContent<Spacer, _FrameLayout>?, EffortValueButton)>>, _TraitWritingModifier<TransitionTraitKey>>)>?, Spacer, EffortViewCurrentWorkloadButton?)>>, _TraitWritingModifier<TransitionTraitKey>>>, _PaddingLayout>, _FlexFrameLayout>)>(v109, v27, &_s7SwiftUI9TupleViewVyACyAA15ModifiedContentVyAA4TextVAA31AccessibilityAttachmentModifierVG_AEyAA6SpacerVAA12_FrameLayoutVGtGSg_AEyAA6VStackVyACyAA0D0PAAE15sensoryFeedback_7triggerQrAA07SensoryP0V_qd__tSQRd__lFQOyAEyAuAE9focusableyQrSbFQOyAEy07WorkoutB0010EffortZoneD0VANG_Qo_AA013_TraitWritingJ0VyAA010TransitionW3KeyVGG_SiQo_Sg_AOSgA_0U11ValueButtonVtGGA8_GtGSgMd, &_s7SwiftUI9TupleViewVyACyAA15ModifiedContentVyAA4TextVAA31AccessibilityAttachmentModifierVG_AEyAA6SpacerVAA12_FrameLayoutVGtGSg_AEyAA6VStackVyACyAA0D0PAAE15sensoryFeedback_7triggerQrAA07SensoryP0V_qd__tSQRd__lFQOyAEyAuAE9focusableyQrSbFQOyAEy07WorkoutB0010EffortZoneD0VANG_Qo_AA013_TraitWritingJ0VyAA010TransitionW3KeyVGG_SiQo_Sg_AOSgA_0U11ValueButtonVtGGA8_GtGSgMR);
  *a3 = 0;
  *(a3 + 8) = v74;
  v78 = v107;
  *(a3 + 16) = v108;
  *(a3 + 24) = v75;
  *(a3 + 32) = v78;
  *(a3 + 40) = v76;
  v79 = v105;
  *(a3 + 48) = v106;
  *(a3 + 56) = v79;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVG_AA9TupleViewVyAJyACyAA4TextVAA31AccessibilityAttachmentModifierVG_AHtGSg_ACyAA6VStackVyAJyAA0I0PAAE15sensoryFeedback_7triggerQrAA07SensoryP0V_qd__tSQRd__lFQOyACyAuAE9focusableyQrSbFQOyACy07WorkoutB0010EffortZoneI0VAGG_Qo_AA013_TraitWritingM0VyAA010TransitionW3KeyVGG_SiQo_Sg_AHSgA_0U11ValueButtonVtGGA8_GtGSgAEA_0uI21CurrentWorkloadButtonVSgtMd, &_s7SwiftUI15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVG_AA9TupleViewVyAJyACyAA4TextVAA31AccessibilityAttachmentModifierVG_AHtGSg_ACyAA6VStackVyAJyAA0I0PAAE15sensoryFeedback_7triggerQrAA07SensoryP0V_qd__tSQRd__lFQOyACyAuAE9focusableyQrSbFQOyACy07WorkoutB0010EffortZoneI0VAGG_Qo_AA013_TraitWritingM0VyAA010TransitionW3KeyVGG_SiQo_Sg_AHSgA_0U11ValueButtonVtGGA8_GtGSgAEA_0uI21CurrentWorkloadButtonVSgtMR);
  outlined init with copy of TupleView<(ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>, ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<VStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, TupleView<(TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, ModifiedContent<Spacer, _FrameLayout>)>?, ModifiedContent<VStack<TupleView<((<<opaque return type of View.sensoryFeedback<A>(_:trigger:)>>.0)?, ModifiedContent<Spacer, _FrameLayout>?, EffortValueButton)>>, _TraitWritingModifier<TransitionTraitKey>>)>?, Spacer, EffortViewCurrentWorkloadButton?)>>, _TraitWritingModifier<TransitionTraitKey>>>, _PaddingLayout>, _FlexFrameLayout>)>(v27, a3 + v80[12], &_s7SwiftUI9TupleViewVyACyAA15ModifiedContentVyAA4TextVAA31AccessibilityAttachmentModifierVG_AEyAA6SpacerVAA12_FrameLayoutVGtGSg_AEyAA6VStackVyACyAA0D0PAAE15sensoryFeedback_7triggerQrAA07SensoryP0V_qd__tSQRd__lFQOyAEyAuAE9focusableyQrSbFQOyAEy07WorkoutB0010EffortZoneD0VANG_Qo_AA013_TraitWritingJ0VyAA010TransitionW3KeyVGG_SiQo_Sg_AOSgA_0U11ValueButtonVtGGA8_GtGSgMd, &_s7SwiftUI9TupleViewVyACyAA15ModifiedContentVyAA4TextVAA31AccessibilityAttachmentModifierVG_AEyAA6SpacerVAA12_FrameLayoutVGtGSg_AEyAA6VStackVyACyAA0D0PAAE15sensoryFeedback_7triggerQrAA07SensoryP0V_qd__tSQRd__lFQOyAEyAuAE9focusableyQrSbFQOyAEy07WorkoutB0010EffortZoneD0VANG_Qo_AA013_TraitWritingJ0VyAA010TransitionW3KeyVGG_SiQo_Sg_AOSgA_0U11ValueButtonVtGGA8_GtGSgMR);
  v81 = a3 + v80[16];
  *v81 = 0;
  *(v81 + 8) = 1;
  v82 = (a3 + v80[20]);
  outlined copy of EffortViewCurrentWorkloadButton?(v31, v32);
  outlined consume of EffortViewCurrentWorkloadButton?(v31, v32);
  *v82 = v31;
  v82[1] = v32;
  outlined destroy of TupleView<(ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>, ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<VStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, TupleView<(TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, ModifiedContent<Spacer, _FrameLayout>)>?, ModifiedContent<VStack<TupleView<((<<opaque return type of View.sensoryFeedback<A>(_:trigger:)>>.0)?, ModifiedContent<Spacer, _FrameLayout>?, EffortValueButton)>>, _TraitWritingModifier<TransitionTraitKey>>)>?, Spacer, EffortViewCurrentWorkloadButton?)>>, _TraitWritingModifier<TransitionTraitKey>>>, _PaddingLayout>, _FlexFrameLayout>)>(v77, &_s7SwiftUI9TupleViewVyACyAA15ModifiedContentVyAA4TextVAA31AccessibilityAttachmentModifierVG_AEyAA6SpacerVAA12_FrameLayoutVGtGSg_AEyAA6VStackVyACyAA0D0PAAE15sensoryFeedback_7triggerQrAA07SensoryP0V_qd__tSQRd__lFQOyAEyAuAE9focusableyQrSbFQOyAEy07WorkoutB0010EffortZoneD0VANG_Qo_AA013_TraitWritingJ0VyAA010TransitionW3KeyVGG_SiQo_Sg_AOSgA_0U11ValueButtonVtGGA8_GtGSgMd, &_s7SwiftUI9TupleViewVyACyAA15ModifiedContentVyAA4TextVAA31AccessibilityAttachmentModifierVG_AEyAA6SpacerVAA12_FrameLayoutVGtGSg_AEyAA6VStackVyACyAA0D0PAAE15sensoryFeedback_7triggerQrAA07SensoryP0V_qd__tSQRd__lFQOyAEyAuAE9focusableyQrSbFQOyAEy07WorkoutB0010EffortZoneD0VANG_Qo_AA013_TraitWritingJ0VyAA010TransitionW3KeyVGG_SiQo_Sg_AOSgA_0U11ValueButtonVtGGA8_GtGSgMR);
  outlined consume of EffortViewCurrentWorkloadButton?(v31, v32);
  return outlined destroy of TupleView<(ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>, ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<VStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, TupleView<(TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, ModifiedContent<Spacer, _FrameLayout>)>?, ModifiedContent<VStack<TupleView<((<<opaque return type of View.sensoryFeedback<A>(_:trigger:)>>.0)?, ModifiedContent<Spacer, _FrameLayout>?, EffortValueButton)>>, _TraitWritingModifier<TransitionTraitKey>>)>?, Spacer, EffortViewCurrentWorkloadButton?)>>, _TraitWritingModifier<TransitionTraitKey>>>, _PaddingLayout>, _FlexFrameLayout>)>(v27, &_s7SwiftUI9TupleViewVyACyAA15ModifiedContentVyAA4TextVAA31AccessibilityAttachmentModifierVG_AEyAA6SpacerVAA12_FrameLayoutVGtGSg_AEyAA6VStackVyACyAA0D0PAAE15sensoryFeedback_7triggerQrAA07SensoryP0V_qd__tSQRd__lFQOyAEyAuAE9focusableyQrSbFQOyAEy07WorkoutB0010EffortZoneD0VANG_Qo_AA013_TraitWritingJ0VyAA010TransitionW3KeyVGG_SiQo_Sg_AOSgA_0U11ValueButtonVtGGA8_GtGSgMd, &_s7SwiftUI9TupleViewVyACyAA15ModifiedContentVyAA4TextVAA31AccessibilityAttachmentModifierVG_AEyAA6SpacerVAA12_FrameLayoutVGtGSg_AEyAA6VStackVyACyAA0D0PAAE15sensoryFeedback_7triggerQrAA07SensoryP0V_qd__tSQRd__lFQOyAEyAuAE9focusableyQrSbFQOyAEy07WorkoutB0010EffortZoneD0VANG_Qo_AA013_TraitWritingJ0VyAA010TransitionW3KeyVGG_SiQo_Sg_AOSgA_0U11ValueButtonVtGGA8_GtGSgMR);
}

void *closure #1 in closure #1 in closure #1 in closure #1 in EffortEntryView.body.getter@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v51 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE15sensoryFeedback_7triggerQrAA07SensoryE0V_qd__tSQRd__lFQOyAA15ModifiedContentVyAcAE9focusableyQrSbFQOyAIy07WorkoutB0010EffortZoneC0VAA12_FrameLayoutVG_Qo_AA21_TraitWritingModifierVyAA010TransitionP3KeyVGG_SiQo_Md, &_s7SwiftUI4ViewPAAE15sensoryFeedback_7triggerQrAA07SensoryE0V_qd__tSQRd__lFQOyAA15ModifiedContentVyAcAE9focusableyQrSbFQOyAIy07WorkoutB0010EffortZoneC0VAA12_FrameLayoutVG_Qo_AA21_TraitWritingModifierVyAA010TransitionP3KeyVGG_SiQo_MR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v41 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE15sensoryFeedback_7triggerQrAA07SensoryE0V_qd__tSQRd__lFQOyAA15ModifiedContentVyAcAE9focusableyQrSbFQOyAIy07WorkoutB0010EffortZoneC0VAA12_FrameLayoutVG_Qo_AA21_TraitWritingModifierVyAA010TransitionP3KeyVGG_SiQo_SgMd, &_s7SwiftUI4ViewPAAE15sensoryFeedback_7triggerQrAA07SensoryE0V_qd__tSQRd__lFQOyAA15ModifiedContentVyAcAE9focusableyQrSbFQOyAIy07WorkoutB0010EffortZoneC0VAA12_FrameLayoutVG_Qo_AA21_TraitWritingModifierVyAA010TransitionP3KeyVGG_SiQo_SgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14.n128_f64[0] = MEMORY[0x28223BE20](v12);
  v15 = &v41 - v13;
  if (*(a1 + 33))
  {
    (*(v6 + 56))(&v41 - v13, 1, 1, v5, v14);
  }

  else
  {
    v16 = static Animation.timingCurve(_:_:_:_:duration:)();
    MEMORY[0x28223BE20](v16);
    *(&v41 - 2) = a1;
    *(&v41 - 1) = a2;
    withAnimation<A>(_:_:)();

    (*(v6 + 32))(v15, v8, v5);
    (*(v6 + 56))(v15, 0, 1, v5, v17);
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v18 = v67;
  v19 = v68;
  v20 = v69;
  v21 = v70;
  v22 = v71;
  v50 = v72;
  v65 = 1;
  v64 = v68;
  v63 = v70;
  v66 = 0;
  v55 = *(a1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySdGMd, &_s7SwiftUI5StateVySdGMR);
  result = State.wrappedValue.getter();
  v24 = round(*&v52);
  if ((*&v24 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v24 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v24 < 9.22337204e18)
  {
    v49 = v24;
    v25 = a1[5];
    v59 = a1[4];
    v60 = v25;
    v26 = a1[7];
    v61 = a1[6];
    v62 = v26;
    v27 = a1[1];
    v55 = *a1;
    v56 = v27;
    v28 = a1[3];
    v57 = a1[2];
    v58 = v28;
    v29 = EffortEntryView.explanationString.getter();
    v47 = v30;
    v48 = v29;
    v46 = v19;
    v52 = *(a1 + 56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
    v45 = v22;
    State.wrappedValue.getter();
    v44 = v54;
    v54 = a1[7];
    State.projectedValue.getter();
    v41 = v21;
    v31 = v52;
    v43 = v15;
    v42 = v53;
    outlined init with copy of TupleView<(ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>, ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<VStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, TupleView<(TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, ModifiedContent<Spacer, _FrameLayout>)>?, ModifiedContent<VStack<TupleView<((<<opaque return type of View.sensoryFeedback<A>(_:trigger:)>>.0)?, ModifiedContent<Spacer, _FrameLayout>?, EffortValueButton)>>, _TraitWritingModifier<TransitionTraitKey>>)>?, Spacer, EffortViewCurrentWorkloadButton?)>>, _TraitWritingModifier<TransitionTraitKey>>>, _PaddingLayout>, _FlexFrameLayout>)>(v15, v11, &_s7SwiftUI4ViewPAAE15sensoryFeedback_7triggerQrAA07SensoryE0V_qd__tSQRd__lFQOyAA15ModifiedContentVyAcAE9focusableyQrSbFQOyAIy07WorkoutB0010EffortZoneC0VAA12_FrameLayoutVG_Qo_AA21_TraitWritingModifierVyAA010TransitionP3KeyVGG_SiQo_SgMd, &_s7SwiftUI4ViewPAAE15sensoryFeedback_7triggerQrAA07SensoryE0V_qd__tSQRd__lFQOyAA15ModifiedContentVyAcAE9focusableyQrSbFQOyAIy07WorkoutB0010EffortZoneC0VAA12_FrameLayoutVG_Qo_AA21_TraitWritingModifierVyAA010TransitionP3KeyVGG_SiQo_SgMR);
    v32 = v18;
    v33 = v51;
    v34 = v66;
    outlined init with copy of TupleView<(ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>, ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<VStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, TupleView<(TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, ModifiedContent<Spacer, _FrameLayout>)>?, ModifiedContent<VStack<TupleView<((<<opaque return type of View.sensoryFeedback<A>(_:trigger:)>>.0)?, ModifiedContent<Spacer, _FrameLayout>?, EffortValueButton)>>, _TraitWritingModifier<TransitionTraitKey>>)>?, Spacer, EffortViewCurrentWorkloadButton?)>>, _TraitWritingModifier<TransitionTraitKey>>>, _PaddingLayout>, _FlexFrameLayout>)>(v11, v51, &_s7SwiftUI4ViewPAAE15sensoryFeedback_7triggerQrAA07SensoryE0V_qd__tSQRd__lFQOyAA15ModifiedContentVyAcAE9focusableyQrSbFQOyAIy07WorkoutB0010EffortZoneC0VAA12_FrameLayoutVG_Qo_AA21_TraitWritingModifierVyAA010TransitionP3KeyVGG_SiQo_SgMd, &_s7SwiftUI4ViewPAAE15sensoryFeedback_7triggerQrAA07SensoryE0V_qd__tSQRd__lFQOyAA15ModifiedContentVyAcAE9focusableyQrSbFQOyAIy07WorkoutB0010EffortZoneC0VAA12_FrameLayoutVG_Qo_AA21_TraitWritingModifierVyAA010TransitionP3KeyVGG_SiQo_SgMR);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE15sensoryFeedback_7triggerQrAA07SensoryE0V_qd__tSQRd__lFQOyAA15ModifiedContentVyAcAE9focusableyQrSbFQOyAIy07WorkoutB0010EffortZoneC0VAA12_FrameLayoutVG_Qo_AA21_TraitWritingModifierVyAA010TransitionP3KeyVGG_SiQo_Sg_AIyAA6SpacerVAOGSgAK0L11ValueButtonVtMd, &_s7SwiftUI4ViewPAAE15sensoryFeedback_7triggerQrAA07SensoryE0V_qd__tSQRd__lFQOyAA15ModifiedContentVyAcAE9focusableyQrSbFQOyAIy07WorkoutB0010EffortZoneC0VAA12_FrameLayoutVG_Qo_AA21_TraitWritingModifierVyAA010TransitionP3KeyVGG_SiQo_Sg_AIyAA6SpacerVAOGSgAK0L11ValueButtonVtMR);
    v36 = v33 + *(v35 + 48);
    *v36 = 0;
    *(v36 + 8) = 1;
    *(v36 + 16) = v32;
    *(v36 + 24) = v46;
    *(v36 + 32) = v20;
    *(v36 + 40) = v41;
    v37 = v49;
    v38 = v50;
    *(v36 + 48) = v45;
    *(v36 + 56) = v38;
    *(v36 + 64) = v34;
    v39 = v33 + *(v35 + 64);
    *v39 = v37;
    v40 = v47;
    *(v39 + 8) = v48;
    *(v39 + 16) = v40;
    *(v39 + 24) = v44;
    *(v39 + 32) = v31;
    *(v39 + 48) = v42;

    outlined destroy of TupleView<(ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>, ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<VStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, TupleView<(TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, ModifiedContent<Spacer, _FrameLayout>)>?, ModifiedContent<VStack<TupleView<((<<opaque return type of View.sensoryFeedback<A>(_:trigger:)>>.0)?, ModifiedContent<Spacer, _FrameLayout>?, EffortValueButton)>>, _TraitWritingModifier<TransitionTraitKey>>)>?, Spacer, EffortViewCurrentWorkloadButton?)>>, _TraitWritingModifier<TransitionTraitKey>>>, _PaddingLayout>, _FlexFrameLayout>)>(v43, &_s7SwiftUI4ViewPAAE15sensoryFeedback_7triggerQrAA07SensoryE0V_qd__tSQRd__lFQOyAA15ModifiedContentVyAcAE9focusableyQrSbFQOyAIy07WorkoutB0010EffortZoneC0VAA12_FrameLayoutVG_Qo_AA21_TraitWritingModifierVyAA010TransitionP3KeyVGG_SiQo_SgMd, &_s7SwiftUI4ViewPAAE15sensoryFeedback_7triggerQrAA07SensoryE0V_qd__tSQRd__lFQOyAA15ModifiedContentVyAcAE9focusableyQrSbFQOyAIy07WorkoutB0010EffortZoneC0VAA12_FrameLayoutVG_Qo_AA21_TraitWritingModifierVyAA010TransitionP3KeyVGG_SiQo_SgMR);

    return outlined destroy of TupleView<(ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>, ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<VStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, TupleView<(TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, ModifiedContent<Spacer, _FrameLayout>)>?, ModifiedContent<VStack<TupleView<((<<opaque return type of View.sensoryFeedback<A>(_:trigger:)>>.0)?, ModifiedContent<Spacer, _FrameLayout>?, EffortValueButton)>>, _TraitWritingModifier<TransitionTraitKey>>)>?, Spacer, EffortViewCurrentWorkloadButton?)>>, _TraitWritingModifier<TransitionTraitKey>>>, _PaddingLayout>, _FlexFrameLayout>)>(v11, &_s7SwiftUI4ViewPAAE15sensoryFeedback_7triggerQrAA07SensoryE0V_qd__tSQRd__lFQOyAA15ModifiedContentVyAcAE9focusableyQrSbFQOyAIy07WorkoutB0010EffortZoneC0VAA12_FrameLayoutVG_Qo_AA21_TraitWritingModifierVyAA010TransitionP3KeyVGG_SiQo_SgMd, &_s7SwiftUI4ViewPAAE15sensoryFeedback_7triggerQrAA07SensoryE0V_qd__tSQRd__lFQOyAA15ModifiedContentVyAcAE9focusableyQrSbFQOyAIy07WorkoutB0010EffortZoneC0VAA12_FrameLayoutVG_Qo_AA21_TraitWritingModifierVyAA010TransitionP3KeyVGG_SiQo_SgMR);
  }

LABEL_10:
  __break(1u);
  return result;
}

void *closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in EffortEntryView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v47 = a3;
  v49 = a2;
  v4 = type metadata accessor for SensoryFeedback();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OpacityTransition();
  v54 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v50 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v51 = &v41 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore18AppleExertionScaleOSgMd, &_s11WorkoutCore18AppleExertionScaleOSgMR);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v41 - v13;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB014EffortZoneViewVAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB014EffortZoneViewVAA12_FrameLayoutVGMR);
  MEMORY[0x28223BE20](v48);
  v16 = &v41 - v15;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE9focusableyQrSbFQOyACy07WorkoutB0010EffortZoneE0VAA12_FrameLayoutVG_Qo_AA21_TraitWritingModifierVyAA010TransitionL3KeyVGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE9focusableyQrSbFQOyACy07WorkoutB0010EffortZoneE0VAA12_FrameLayoutVG_Qo_AA21_TraitWritingModifierVyAA010TransitionL3KeyVGGMR);
  MEMORY[0x28223BE20](v52);
  v53 = &v41 - v17;
  v60 = *(a1 + 40);
  v18 = a1;
  v57 = *(a1 + 40);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySdGMd, &_s7SwiftUI5StateVySdGMR);
  result = State.wrappedValue.getter();
  v21 = round(*&v56);
  if ((*&v21 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v21 <= -9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v21 >= 9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v42 = v4;
  v41 = v5;
  v46 = v7;
  v45 = v8;
  if (v21 < 1)
  {
    v23 = 1;
LABEL_11:
    v24 = type metadata accessor for AppleExertionScale();
    (*(*(v24 - 8) + 56))(v14, v23, 1, v24);
    specialized static EffortColors.midpointColor(exertion:)(v14);
    v43 = Color.opacity(_:)();

    _s11WorkoutCore18AppleExertionScaleOSgWOhTm_3(v14, &_s11WorkoutCore18AppleExertionScaleOSgMd, &_s11WorkoutCore18AppleExertionScaleOSgMR);
    v56 = v60;
    v44 = v19;
    State.projectedValue.getter();
    v25 = v57;
    v26 = v58;
    v56 = *(v18 + 56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
    State.projectedValue.getter();
    v27 = v57;
    v28 = v58;
    v57 = *(v18 + 72);
    State.wrappedValue.getter();
    v29 = v56;
    *v16 = xmmword_20CB7EC70;
    *(v16 + 3) = 0x3FF0000000000000;
    *(v16 + 4) = &outlined read-only object #0 of closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in EffortEntryView.body.getter;
    v30 = *(type metadata accessor for EffortZoneView(0) + 52);
    *&v16[v30] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA15LayoutDirectionO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA15LayoutDirectionO_GMR);
    swift_storeEnumTagMultiPayload();
    *(v16 + 2) = v43;
    *(v16 + 40) = v25;
    *(v16 + 7) = v26;
    *(v16 + 4) = v27;
    v16[80] = v28;
    v16[81] = v29;
    LOBYTE(v56) = v29;
    State.init(wrappedValue:)();
    v31 = *(&v57 + 1);
    v16[88] = v57;
    *(v16 + 12) = v31;
    GeometryProxy.size.getter();
    GeometryProxy.size.getter();
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v32 = &v16[*(v48 + 36)];
    v33 = v58;
    *v32 = v57;
    *(v32 + 1) = v33;
    *(v32 + 2) = v59;
    lazy protocol witness table accessor for type ModifiedContent<EffortZoneView, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    v34 = v53;
    View.focusable(_:)();
    _s11WorkoutCore18AppleExertionScaleOSgWOhTm_3(v16, &_s7SwiftUI15ModifiedContentVy07WorkoutB014EffortZoneViewVAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB014EffortZoneViewVAA12_FrameLayoutVGMR);
    v35 = v51;
    OpacityTransition.init()();
    v36 = v54;
    v37 = v45;
    (*(v54 + 16))(v50, v35, v45);
    _s7SwiftUI31AccessibilityAttachmentModifierVAcA04ViewE0AAWlTm_6(&lazy protocol witness table cache variable for type OpacityTransition and conformance OpacityTransition, MEMORY[0x277CE0068], MEMORY[0x277CE0060]);
    v38 = AnyTransition.init<A>(_:)();
    (*(v36 + 8))(v35, v37);
    *(v34 + *(v52 + 36)) = v38;
    v39 = v46;
    static SensoryFeedback.levelChange.getter();
    v56 = v60;
    result = State.wrappedValue.getter();
    v40 = round(v55);
    if ((*&v40 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v40 > -9.22337204e18)
      {
        if (v40 < 9.22337204e18)
        {
          *&v56 = v40;
          lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.focusable(_:)>>.0, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>();
          View.sensoryFeedback<A>(_:trigger:)();
          (*(v41 + 8))(v39, v42);
          return outlined destroy of TupleView<(ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>, ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<VStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, TupleView<(TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, ModifiedContent<Spacer, _FrameLayout>)>?, ModifiedContent<VStack<TupleView<((<<opaque return type of View.sensoryFeedback<A>(_:trigger:)>>.0)?, ModifiedContent<Spacer, _FrameLayout>?, EffortValueButton)>>, _TraitWritingModifier<TransitionTraitKey>>)>?, Spacer, EffortViewCurrentWorkloadButton?)>>, _TraitWritingModifier<TransitionTraitKey>>>, _PaddingLayout>, _FlexFrameLayout>)>(v34, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE9focusableyQrSbFQOyACy07WorkoutB0010EffortZoneE0VAA12_FrameLayoutVG_Qo_AA21_TraitWritingModifierVyAA010TransitionL3KeyVGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE9focusableyQrSbFQOyACy07WorkoutB0010EffortZoneE0VAA12_FrameLayoutVG_Qo_AA21_TraitWritingModifierVyAA010TransitionL3KeyVGGMR);
        }

        goto LABEL_20;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v57 = *(a1 + 40);
  result = State.wrappedValue.getter();
  v22 = round(*&v56);
  if ((*&v22 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v22 <= -9.22337204e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v22 >= 9.22337204e18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  result = (v22 - 1);
  if (!__OFSUB__(v22, 1))
  {
    static AppleExertionScale.exertionForRow(_:)();
    v23 = 0;
    goto LABEL_11;
  }

LABEL_24:
  __break(1u);
  return result;
}

double closure #2 in EffortEntryView.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v8 = &v21[-v7];
  v22 = *(a1 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
  State.wrappedValue.getter();
  if (v21[15] == 1)
  {
    static WOLog.app.getter();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *&v22 = v13;
      *v12 = 136315138;
      *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6E4574726F666645, 0xEF77656956797274, &v22);
      _os_log_impl(&dword_20C66F000, v10, v11, "[%s]: animating scene appearance", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x20F30E080](v13, -1, -1);
      MEMORY[0x20F30E080](v12, -1, -1);
    }

    v14 = *(v3 + 8);
    v15 = v14(v8, v2);
    MEMORY[0x28223BE20](v15);
    *&v21[-16] = a1;
    static Animation.default.getter();
    withAnimation<A>(_:_:)();

    static WOLog.app.getter();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *&v22 = v19;
      *v18 = 136315138;
      *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6E4574726F666645, 0xEF77656956797274, &v22);
      _os_log_impl(&dword_20C66F000, v16, v17, "[%s]: animating cancel button appearance", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x20F30E080](v19, -1, -1);
      MEMORY[0x20F30E080](v18, -1, -1);
    }

    v14(v5, v2);
    static Animation.default.getter();
    Animation.delay(_:)();

    MEMORY[0x28223BE20](v20);
    *&v21[-16] = a1;
    withAnimation<A>(_:_:)();
  }

  return result;
}

uint64_t closure #3 in EffortEntryView.body.getter(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySdGMd, &_s7SwiftUI5StateVySdGMR);
  State.wrappedValue.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
  return State.wrappedValue.setter();
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ZStack<TupleView<(ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>, ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<VStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, TupleView<(TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, ModifiedContent<Spacer, _FrameLayout>)>?, ModifiedContent<VStack<TupleView<((<<opaque return type of View.sensoryFeedback<A>(_:trigger:)>>.0)?, ModifiedContent<Spacer, _FrameLayout>?, EffortValueButton)>>, _TraitWritingModifier<TransitionTraitKey>>)>?, Spacer, EffortViewCurrentWorkloadButton?)>>, _TraitWritingModifier<TransitionTraitKey>>>, _PaddingLayout>, _FlexFrameLayout>)>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>, ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<VStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, TupleView<(TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, ModifiedContent<Spacer, _FrameLayout>)>?, ModifiedContent<VStack<TupleView<((<<opaque return type of View.sensoryFeedback<A>(_:trigger:)>>.0)?, ModifiedContent<Spacer, _FrameLayout>?, EffortValueButton)>>, _TraitWritingModifier<TransitionTraitKey>>)>?, Spacer, EffortViewCurrentWorkloadButton?)>>, _TraitWritingModifier<TransitionTraitKey>>>, _PaddingLayout>, _FlexFrameLayout>)>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>, ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<VStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, TupleView<(TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, ModifiedContent<Spacer, _FrameLayout>)>?, ModifiedContent<VStack<TupleView<((<<opaque return type of View.sensoryFeedback<A>(_:trigger:)>>.0)?, ModifiedContent<Spacer, _FrameLayout>?, EffortValueButton)>>, _TraitWritingModifier<TransitionTraitKey>>)>?, Spacer, EffortViewCurrentWorkloadButton?)>>, _TraitWritingModifier<TransitionTraitKey>>>, _PaddingLayout>, _FlexFrameLayout>)>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyACyAA14LinearGradientVAA30_SafeAreaRegionsIgnoringLayoutVG_ACyACyAA14GeometryReaderVyACyAA6VStackVyAGyACyAA6SpacerVAA06_FrameN0VG_AGyAGyACyAA4TextVAA31AccessibilityAttachmentModifierVG_AUtGSg_ACyAPyAGyAA0G0PAAE15sensoryFeedback_7triggerQrAA07SensoryY0V_qd__tSQRd__lFQOyACyA2_AAE9focusableyQrSbFQOyACy07WorkoutB0010EffortZoneG0VATG_Qo_AA013_TraitWritingW0VyAA18TransitionTraitKeyVGG_SiQo_Sg_AUSgA8_17EffortValueButtonVtGGA17_GtGSgARA8_06EffortG21CurrentWorkloadButtonVSgtGGA17_GGAA08_PaddingN0VGAA05_FlexsN0VGtGGAA017_AppearanceActionW0VGMd, &_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyACyAA14LinearGradientVAA30_SafeAreaRegionsIgnoringLayoutVG_ACyACyAA14GeometryReaderVyACyAA6VStackVyAGyACyAA6SpacerVAA06_FrameN0VG_AGyAGyACyAA4TextVAA31AccessibilityAttachmentModifierVG_AUtGSg_ACyAPyAGyAA0G0PAAE15sensoryFeedback_7triggerQrAA07SensoryY0V_qd__tSQRd__lFQOyACyA2_AAE9focusableyQrSbFQOyACy07WorkoutB0010EffortZoneG0VATG_Qo_AA013_TraitWritingW0VyAA18TransitionTraitKeyVGG_SiQo_Sg_AUSgA8_17EffortValueButtonVtGGA17_GtGSgARA8_06EffortG21CurrentWorkloadButtonVSgtGGA17_GGAA08_PaddingN0VGAA05_FlexsN0VGtGGAA017_AppearanceActionW0VGMR);
    lazy protocol witness table accessor for type ZStack<TupleView<(ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>, ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<VStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, TupleView<(TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, ModifiedContent<Spacer, _FrameLayout>)>?, ModifiedContent<VStack<TupleView<((<<opaque return type of View.sensoryFeedback<A>(_:trigger:)>>.0)?, ModifiedContent<Spacer, _FrameLayout>?, EffortValueButton)>>, _TraitWritingModifier<TransitionTraitKey>>)>?, Spacer, EffortViewCurrentWorkloadButton?)>>, _TraitWritingModifier<TransitionTraitKey>>>, _PaddingLayout>, _FlexFrameLayout>)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type ZStack<TupleView<(ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>, ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<VStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, TupleView<(TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, ModifiedContent<Spacer, _FrameLayout>)>?, ModifiedContent<VStack<TupleView<((<<opaque return type of View.sensoryFeedback<A>(_:trigger:)>>.0)?, ModifiedContent<Spacer, _FrameLayout>?, EffortValueButton)>>, _TraitWritingModifier<TransitionTraitKey>>)>?, Spacer, EffortViewCurrentWorkloadButton?)>>, _TraitWritingModifier<TransitionTraitKey>>>, _PaddingLayout>, _FlexFrameLayout>)>> and conformance ZStack<A>, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAA14LinearGradientVAA30_SafeAreaRegionsIgnoringLayoutVG_AGyAGyAA14GeometryReaderVyAGyAA6VStackVyAEyAGyAA6SpacerVAA06_FrameN0VG_AEyAEyAGyAA4TextVAA31AccessibilityAttachmentModifierVG_AUtGSg_AGyAPyAEyAA0E0PAAE15sensoryFeedback_7triggerQrAA07SensoryY0V_qd__tSQRd__lFQOyAGyA2_AAE9focusableyQrSbFQOyAGy07WorkoutB0010EffortZoneE0VATG_Qo_AA013_TraitWritingW0VyAA18TransitionTraitKeyVGG_SiQo_Sg_AUSgA8_17EffortValueButtonVtGGA17_GtGSgARA8_06EffortE21CurrentWorkloadButtonVSgtGGA17_GGAA08_PaddingN0VGAA05_FlexsN0VGtGGMd, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAA14LinearGradientVAA30_SafeAreaRegionsIgnoringLayoutVG_AGyAGyAA14GeometryReaderVyAGyAA6VStackVyAEyAGyAA6SpacerVAA06_FrameN0VG_AEyAEyAGyAA4TextVAA31AccessibilityAttachmentModifierVG_AUtGSg_AGyAPyAEyAA0E0PAAE15sensoryFeedback_7triggerQrAA07SensoryY0V_qd__tSQRd__lFQOyAGyA2_AAE9focusableyQrSbFQOyAGy07WorkoutB0010EffortZoneE0VATG_Qo_AA013_TraitWritingW0VyAA18TransitionTraitKeyVGG_SiQo_Sg_AUSgA8_17EffortValueButtonVtGGA17_GtGSgARA8_06EffortE21CurrentWorkloadButtonVSgtGGA17_GGAA08_PaddingN0VGAA05_FlexsN0VGtGGMR, MEMORY[0x277CE11A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>, ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<VStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, TupleView<(TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, ModifiedContent<Spacer, _FrameLayout>)>?, ModifiedContent<VStack<TupleView<((<<opaque return type of View.sensoryFeedback<A>(_:trigger:)>>.0)?, ModifiedContent<Spacer, _FrameLayout>?, EffortValueButton)>>, _TraitWritingModifier<TransitionTraitKey>>)>?, Spacer, EffortViewCurrentWorkloadButton?)>>, _TraitWritingModifier<TransitionTraitKey>>>, _PaddingLayout>, _FlexFrameLayout>)>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t closure #4 in EffortEntryView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a1;
  v37 = a2;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA6ButtonVyAA5ImageVGGQo_Sg_AGyytAA08ModifiedD0VyAQyAIyAQyAkA31AccessibilityAttachmentModifierVGGAA024_EnvironmentKeyTransformN0VySbGGAA14_OpacityEffectVGGtMd, &_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA6ButtonVyAA5ImageVGGQo_Sg_AGyytAA08ModifiedD0VyAQyAIyAQyAkA31AccessibilityAttachmentModifierVGGAA024_EnvironmentKeyTransformN0VySbGGAA14_OpacityEffectVGGtMR);
  MEMORY[0x28223BE20](v36);
  v34 = &v28 - v3;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11ToolbarItemVyytAA15ModifiedContentVyAEyAA6ButtonVyAEyAA5ImageVAA31AccessibilityAttachmentModifierVGGAA024_EnvironmentKeyTransformK0VySbGGAA14_OpacityEffectVGGMd, &_s7SwiftUI11ToolbarItemVyytAA15ModifiedContentVyAEyAA6ButtonVyAEyAA5ImageVAA31AccessibilityAttachmentModifierVGGAA024_EnvironmentKeyTransformK0VySbGGAA14_OpacityEffectVGGMR);
  v33 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v32 = &v28 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA6ButtonVyAA5ImageVGGQo_Md, &_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA6ButtonVyAA5ImageVGGQo_MR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v30 = &v28 - v7;
  v8 = type metadata accessor for ToolbarItemPlacement();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11ToolbarItemVyytAA6ButtonVyAA5ImageVGGMd, &_s7SwiftUI11ToolbarItemVyytAA6ButtonVyAA5ImageVGGMR);
  v31 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA6ButtonVyAA5ImageVGGQo_SgMd, &_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA6ButtonVyAA5ImageVGGQo_SgMR);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v28 - v16;
  static ToolbarItemPlacement.cancellationAction.getter();
  v39 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA5ImageVGMd, &_s7SwiftUI6ButtonVyAA5ImageVGMR);
  lazy protocol witness table accessor for type ZStack<TupleView<(ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>, ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<VStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, TupleView<(TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, ModifiedContent<Spacer, _FrameLayout>)>?, ModifiedContent<VStack<TupleView<((<<opaque return type of View.sensoryFeedback<A>(_:trigger:)>>.0)?, ModifiedContent<Spacer, _FrameLayout>?, EffortValueButton)>>, _TraitWritingModifier<TransitionTraitKey>>)>?, Spacer, EffortViewCurrentWorkloadButton?)>>, _TraitWritingModifier<TransitionTraitKey>>>, _PaddingLayout>, _FlexFrameLayout>)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type Button<Image> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA5ImageVGMd, &_s7SwiftUI6ButtonVyAA5ImageVGMR, MEMORY[0x277CDF028]);
  ToolbarItem<>.init(placement:content:)();
  v18 = lazy protocol witness table accessor for type ZStack<TupleView<(ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>, ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<VStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, TupleView<(TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, ModifiedContent<Spacer, _FrameLayout>)>?, ModifiedContent<VStack<TupleView<((<<opaque return type of View.sensoryFeedback<A>(_:trigger:)>>.0)?, ModifiedContent<Spacer, _FrameLayout>?, EffortValueButton)>>, _TraitWritingModifier<TransitionTraitKey>>)>?, Spacer, EffortViewCurrentWorkloadButton?)>>, _TraitWritingModifier<TransitionTraitKey>>>, _PaddingLayout>, _FlexFrameLayout>)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type ToolbarItem<(), Button<Image>> and conformance ToolbarItem<A, B>, &_s7SwiftUI11ToolbarItemVyytAA6ButtonVyAA5ImageVGGMd, &_s7SwiftUI11ToolbarItemVyytAA6ButtonVyAA5ImageVGGMR, MEMORY[0x277CDD7A8]);
  v19 = v30;
  MEMORY[0x20F3098F0](v11, v9, v18);
  (*(v6 + 16))(v14, v19, v5);
  (*(v6 + 56))(v14, 0, 1, v5);
  v40 = v9;
  v41 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x20F309920](v14, v5, OpaqueTypeConformance2);
  outlined destroy of TupleView<(ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>, ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<VStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, TupleView<(TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, ModifiedContent<Spacer, _FrameLayout>)>?, ModifiedContent<VStack<TupleView<((<<opaque return type of View.sensoryFeedback<A>(_:trigger:)>>.0)?, ModifiedContent<Spacer, _FrameLayout>?, EffortValueButton)>>, _TraitWritingModifier<TransitionTraitKey>>)>?, Spacer, EffortViewCurrentWorkloadButton?)>>, _TraitWritingModifier<TransitionTraitKey>>>, _PaddingLayout>, _FlexFrameLayout>)>(v14, &_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA6ButtonVyAA5ImageVGGQo_SgMd, &_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA6ButtonVyAA5ImageVGGQo_SgMR);
  (*(v6 + 8))(v19, v5);
  (*(v31 + 8))(v11, v9);
  static ToolbarItemPlacement.confirmationAction.getter();
  v38 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyACyAA5ImageVAA31AccessibilityAttachmentModifierVGGAA024_EnvironmentKeyTransformI0VySbGGAA14_OpacityEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyACyAA5ImageVAA31AccessibilityAttachmentModifierVGGAA024_EnvironmentKeyTransformI0VySbGGAA14_OpacityEffectVGMR);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<ModifiedContent<Image, AccessibilityAttachmentModifier>>, _EnvironmentKeyTransformModifier<Bool>>, _OpacityEffect> and conformance <> ModifiedContent<A, B>();
  v21 = v32;
  ToolbarItem<>.init(placement:content:)();
  v22 = *(v36 + 48);
  v23 = v34;
  outlined init with copy of TupleView<(ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>, ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<VStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, TupleView<(TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, ModifiedContent<Spacer, _FrameLayout>)>?, ModifiedContent<VStack<TupleView<((<<opaque return type of View.sensoryFeedback<A>(_:trigger:)>>.0)?, ModifiedContent<Spacer, _FrameLayout>?, EffortValueButton)>>, _TraitWritingModifier<TransitionTraitKey>>)>?, Spacer, EffortViewCurrentWorkloadButton?)>>, _TraitWritingModifier<TransitionTraitKey>>>, _PaddingLayout>, _FlexFrameLayout>)>(v17, v34, &_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA6ButtonVyAA5ImageVGGQo_SgMd, &_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA6ButtonVyAA5ImageVGGQo_SgMR);
  v24 = v33;
  v25 = v23 + v22;
  v26 = v35;
  (*(v33 + 16))(v25, v21, v35);
  TupleToolbarContent.init(_:)();
  (*(v24 + 8))(v21, v26);
  return outlined destroy of TupleView<(ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>, ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<VStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, TupleView<(TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, ModifiedContent<Spacer, _FrameLayout>)>?, ModifiedContent<VStack<TupleView<((<<opaque return type of View.sensoryFeedback<A>(_:trigger:)>>.0)?, ModifiedContent<Spacer, _FrameLayout>?, EffortValueButton)>>, _TraitWritingModifier<TransitionTraitKey>>)>?, Spacer, EffortViewCurrentWorkloadButton?)>>, _TraitWritingModifier<TransitionTraitKey>>>, _PaddingLayout>, _FlexFrameLayout>)>(v17, &_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA6ButtonVyAA5ImageVGGQo_SgMd, &_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA6ButtonVyAA5ImageVGGQo_SgMR);
}

double closure #1 in closure #4 in EffortEntryView.body.getter(_OWORD *a1)
{
  v2 = swift_allocObject();
  v3 = a1[5];
  v2[5] = a1[4];
  v2[6] = v3;
  v4 = a1[7];
  v2[7] = a1[6];
  v2[8] = v4;
  v5 = a1[1];
  v2[1] = *a1;
  v2[2] = v5;
  v6 = a1[3];
  v2[3] = a1[2];
  v2[4] = v6;
  outlined init with copy of EffortEntryView(a1, &v8);
  Button.init(action:label:)();
  return result;
}

uint64_t closure #2 in closure #1 in closure #4 in EffortEntryView.body.getter@<X0>(uint64_t *a1@<X8>)
{
  result = Image.init(systemName:)();
  *a1 = result;
  return result;
}

void *closure #2 in closure #4 in EffortEntryView.body.getter@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyACyAA5ImageVAA31AccessibilityAttachmentModifierVGGAA024_EnvironmentKeyTransformI0VySbGGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyACyAA5ImageVAA31AccessibilityAttachmentModifierVGGAA024_EnvironmentKeyTransformI0VySbGGMR);
  MEMORY[0x28223BE20](v4);
  v6 = &v19 - v5;
  v7 = swift_allocObject();
  v8 = a1[5];
  v7[5] = a1[4];
  v7[6] = v8;
  v9 = a1[7];
  v7[7] = a1[6];
  v7[8] = v9;
  v10 = a1[1];
  v7[1] = *a1;
  v7[2] = v10;
  v11 = a1[3];
  v7[3] = a1[2];
  v7[4] = v11;
  outlined init with copy of EffortEntryView(a1, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA31AccessibilityAttachmentModifierVGMR);
  lazy protocol witness table accessor for type ModifiedContent<Image, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
  Button.init(action:label:)();
  v21[0] = *(a1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySdGMd, &_s7SwiftUI5StateVySdGMR);
  result = State.wrappedValue.getter();
  v13 = round(v20);
  if ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v13 <= -9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v13 >= 9.22337204e18)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v21[0] = *(a1 + 56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
    State.wrappedValue.getter();
    v14 = LOBYTE(v20) ^ 1;
  }

  KeyPath = swift_getKeyPath();
  v16 = swift_allocObject();
  *(v16 + 16) = v14 & 1;
  v17 = &v6[*(v4 + 36)];
  *v17 = KeyPath;
  v17[1] = _s7SwiftUI4ViewPAAE8disabledyQrSbFySbzcfU_TA_15;
  v17[2] = v16;
  v21[0] = *(a1 + 88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
  State.wrappedValue.getter();
  if (LOBYTE(v20))
  {
    v18 = 1.0;
  }

  else
  {
    v18 = 0.0;
  }

  outlined init with take of ModifiedContent<Button<ModifiedContent<Image, AccessibilityAttachmentModifier>>, _EnvironmentKeyTransformModifier<Bool>>(v6, a2, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyACyAA5ImageVAA31AccessibilityAttachmentModifierVGGAA024_EnvironmentKeyTransformI0VySbGGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyACyAA5ImageVAA31AccessibilityAttachmentModifierVGGAA024_EnvironmentKeyTransformI0VySbGGMR);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyACyAA5ImageVAA31AccessibilityAttachmentModifierVGGAA024_EnvironmentKeyTransformI0VySbGGAA14_OpacityEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyACyAA5ImageVAA31AccessibilityAttachmentModifierVGGAA024_EnvironmentKeyTransformI0VySbGGAA14_OpacityEffectVGMR);
  *(a2 + *(result + 9)) = v18;
  return result;
}

void *closure #2 in closure #1 in closure #1 in closure #1 in EffortEntryView.body.getter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore18AppleExertionScaleOSgMd, &_s11WorkoutCore18AppleExertionScaleOSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  v12 = *(a1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySdGMd, &_s7SwiftUI5StateVySdGMR);
  result = State.wrappedValue.getter();
  v6 = round(v11);
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v6 <= -9.22337204e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v6 >= 9.22337204e18)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v6 < 1)
  {
    v8 = 1;
    goto LABEL_11;
  }

  v12 = *(a1 + 40);
  result = State.wrappedValue.getter();
  v7 = round(v11);
  if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_15;
  }

  if (v7 <= -9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v7 >= 9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  result = (v7 - 1);
  if (!__OFSUB__(v7, 1))
  {
    static AppleExertionScale.exertionForRow(_:)();
    v8 = 0;
LABEL_11:
    v9 = type metadata accessor for AppleExertionScale();
    (*(*(v9 - 8) + 56))(v4, v8, 1, v9);
    (*a1)(v4);
    return _s11WorkoutCore18AppleExertionScaleOSgWOhTm_3(v4, &_s11WorkoutCore18AppleExertionScaleOSgMd, &_s11WorkoutCore18AppleExertionScaleOSgMR);
  }

LABEL_18:
  __break(1u);
  return result;
}

double closure #2 in closure #2 in closure #4 in EffortEntryView.body.getter()
{
  Image.init(systemName:)();
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = WorkoutUIBundle.super.isa;
  v5._object = 0xE000000000000000;
  v1._countAndFlagsBits = 0x415F455441445055;
  v1._object = 0xEF454C5449545F58;
  v2.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v2.value._object = 0xEB00000000656C62;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v1, v2, v0, v3, v5);

  lazy protocol witness table accessor for type String and conformance String();
  View.accessibilityLabel<A>(_:)();

  return result;
}

double closure #5 in EffortEntryView.body.getter@<D0>(uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySdGMd, &_s7SwiftUI5StateVySdGMR);
  State.projectedValue.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
  State.projectedValue.getter();
  v3 = static Font.body.getter();
  static Font.title2.getter();
  static Font.Weight.bold.getter();
  v4 = Font.weight(_:)();

  v5 = static Font.subheadline.getter();
  v6 = static Color.white.getter();
  *a2 = v8;
  *(a2 + 8) = v9;
  *(a2 + 16) = v10;
  *(a2 + 24) = v8;
  *(a2 + 32) = v9;
  *(a2 + 40) = v10;
  result = 30.0;
  *(a2 + 48) = xmmword_20CB7EC80;
  *(a2 + 64) = xmmword_20CB7EC90;
  *(a2 + 80) = 0x4034000000000000;
  *(a2 + 88) = v3;
  *(a2 + 96) = v4;
  *(a2 + 104) = v5;
  *(a2 + 112) = v6;
  return result;
}

unint64_t lazy protocol witness table accessor for type EffortListView and conformance EffortListView()
{
  result = lazy protocol witness table cache variable for type EffortListView and conformance EffortListView;
  if (!lazy protocol witness table cache variable for type EffortListView and conformance EffortListView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EffortListView and conformance EffortListView);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EffortEntryView(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for EffortEntryView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<ModifiedContent<Image, AccessibilityAttachmentModifier>>, _EnvironmentKeyTransformModifier<Bool>>, _OpacityEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<ModifiedContent<Image, AccessibilityAttachmentModifier>>, _EnvironmentKeyTransformModifier<Bool>>, _OpacityEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<ModifiedContent<Image, AccessibilityAttachmentModifier>>, _EnvironmentKeyTransformModifier<Bool>>, _OpacityEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyACyAA5ImageVAA31AccessibilityAttachmentModifierVGGAA024_EnvironmentKeyTransformI0VySbGGAA14_OpacityEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyACyAA5ImageVAA31AccessibilityAttachmentModifierVGGAA024_EnvironmentKeyTransformI0VySbGGAA14_OpacityEffectVGMR);
    lazy protocol witness table accessor for type ModifiedContent<Button<ModifiedContent<Image, AccessibilityAttachmentModifier>>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<ModifiedContent<Image, AccessibilityAttachmentModifier>>, _EnvironmentKeyTransformModifier<Bool>>, _OpacityEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Button<ModifiedContent<Image, AccessibilityAttachmentModifier>>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Button<ModifiedContent<Image, AccessibilityAttachmentModifier>>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Button<ModifiedContent<Image, AccessibilityAttachmentModifier>>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyACyAA5ImageVAA31AccessibilityAttachmentModifierVGGAA024_EnvironmentKeyTransformI0VySbGGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyACyAA5ImageVAA31AccessibilityAttachmentModifierVGGAA024_EnvironmentKeyTransformI0VySbGGMR);
    lazy protocol witness table accessor for type ZStack<TupleView<(ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>, ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<VStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, TupleView<(TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, ModifiedContent<Spacer, _FrameLayout>)>?, ModifiedContent<VStack<TupleView<((<<opaque return type of View.sensoryFeedback<A>(_:trigger:)>>.0)?, ModifiedContent<Spacer, _FrameLayout>?, EffortValueButton)>>, _TraitWritingModifier<TransitionTraitKey>>)>?, Spacer, EffortViewCurrentWorkloadButton?)>>, _TraitWritingModifier<TransitionTraitKey>>>, _PaddingLayout>, _FlexFrameLayout>)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type Button<ModifiedContent<Image, AccessibilityAttachmentModifier>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA5ImageVAA31AccessibilityAttachmentModifierVGGMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA5ImageVAA31AccessibilityAttachmentModifierVGGMR, MEMORY[0x277CDF028]);
    lazy protocol witness table accessor for type ZStack<TupleView<(ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>, ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<VStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, TupleView<(TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, ModifiedContent<Spacer, _FrameLayout>)>?, ModifiedContent<VStack<TupleView<((<<opaque return type of View.sensoryFeedback<A>(_:trigger:)>>.0)?, ModifiedContent<Spacer, _FrameLayout>?, EffortValueButton)>>, _TraitWritingModifier<TransitionTraitKey>>)>?, Spacer, EffortViewCurrentWorkloadButton?)>>, _TraitWritingModifier<TransitionTraitKey>>>, _PaddingLayout>, _FlexFrameLayout>)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<Bool> and conformance _EnvironmentKeyTransformModifier<A>, &_s7SwiftUI32_EnvironmentKeyTransformModifierVySbGMd, &_s7SwiftUI32_EnvironmentKeyTransformModifierVySbGMR, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Button<ModifiedContent<Image, AccessibilityAttachmentModifier>>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined init with take of ModifiedContent<Button<ModifiedContent<Image, AccessibilityAttachmentModifier>>, _EnvironmentKeyTransformModifier<Bool>>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t _s11WorkoutCore18AppleExertionScaleOSgWOcTm_2(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

double outlined copy of EffortViewCurrentWorkloadButton?(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

double outlined consume of EffortViewCurrentWorkloadButton?(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

uint64_t objectdestroyTm_63()
{

  return swift_deallocObject();
}

uint64_t outlined init with copy of TupleView<(ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>, ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<VStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, TupleView<(TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, ModifiedContent<Spacer, _FrameLayout>)>?, ModifiedContent<VStack<TupleView<((<<opaque return type of View.sensoryFeedback<A>(_:trigger:)>>.0)?, ModifiedContent<Spacer, _FrameLayout>?, EffortValueButton)>>, _TraitWritingModifier<TransitionTraitKey>>)>?, Spacer, EffortViewCurrentWorkloadButton?)>>, _TraitWritingModifier<TransitionTraitKey>>>, _PaddingLayout>, _FlexFrameLayout>)>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<EffortZoneView, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<EffortZoneView, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<EffortZoneView, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB014EffortZoneViewVAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB014EffortZoneViewVAA12_FrameLayoutVGMR);
    _s7SwiftUI31AccessibilityAttachmentModifierVAcA04ViewE0AAWlTm_6(&lazy protocol witness table cache variable for type EffortZoneView and conformance EffortZoneView, type metadata accessor for EffortZoneView, &protocol conformance descriptor for EffortZoneView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<EffortZoneView, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t _s11WorkoutCore18AppleExertionScaleOSgWOhTm_3(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _s7SwiftUI31AccessibilityAttachmentModifierVAcA04ViewE0AAWlTm_6(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.focusable(_:)>>.0, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.focusable(_:)>>.0, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.focusable(_:)>>.0, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE9focusableyQrSbFQOyACy07WorkoutB0010EffortZoneE0VAA12_FrameLayoutVG_Qo_AA21_TraitWritingModifierVyAA010TransitionL3KeyVGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE9focusableyQrSbFQOyACy07WorkoutB0010EffortZoneE0VAA12_FrameLayoutVG_Qo_AA21_TraitWritingModifierVyAA010TransitionL3KeyVGGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB014EffortZoneViewVAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB014EffortZoneViewVAA12_FrameLayoutVGMR);
    lazy protocol witness table accessor for type ModifiedContent<EffortZoneView, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type ZStack<TupleView<(ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>, ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<VStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, TupleView<(TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, ModifiedContent<Spacer, _FrameLayout>)>?, ModifiedContent<VStack<TupleView<((<<opaque return type of View.sensoryFeedback<A>(_:trigger:)>>.0)?, ModifiedContent<Spacer, _FrameLayout>?, EffortValueButton)>>, _TraitWritingModifier<TransitionTraitKey>>)>?, Spacer, EffortViewCurrentWorkloadButton?)>>, _TraitWritingModifier<TransitionTraitKey>>>, _PaddingLayout>, _FlexFrameLayout>)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type _TraitWritingModifier<TransitionTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA010TransitionC3KeyVGMd, &_s7SwiftUI21_TraitWritingModifierVyAA010TransitionC3KeyVGMR, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.focusable(_:)>>.0, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ZStack<TupleView<(ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>, ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<VStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, TupleView<(TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, ModifiedContent<Spacer, _FrameLayout>)>?, ModifiedContent<VStack<TupleView<((<<opaque return type of View.sensoryFeedback<A>(_:trigger:)>>.0)?, ModifiedContent<Spacer, _FrameLayout>?, EffortValueButton)>>, _TraitWritingModifier<TransitionTraitKey>>)>?, Spacer, EffortViewCurrentWorkloadButton?)>>, _TraitWritingModifier<TransitionTraitKey>>>, _PaddingLayout>, _FlexFrameLayout>)>> and conformance ZStack<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined destroy of TupleView<(ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>, ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<VStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, TupleView<(TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, ModifiedContent<Spacer, _FrameLayout>)>?, ModifiedContent<VStack<TupleView<((<<opaque return type of View.sensoryFeedback<A>(_:trigger:)>>.0)?, ModifiedContent<Spacer, _FrameLayout>?, EffortValueButton)>>, _TraitWritingModifier<TransitionTraitKey>>)>?, Spacer, EffortViewCurrentWorkloadButton?)>>, _TraitWritingModifier<TransitionTraitKey>>>, _PaddingLayout>, _FlexFrameLayout>)>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

id @objc WorkoutStartLocationAnnotation.init()(void *a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t))
{
  v4.receiver = a1;
  v4.super_class = a3(a1, a2);
  return objc_msgSendSuper2(&v4, sel_init);
}

id WorkoutLocationAnnotationView.init(annotation:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = MEMORY[0x20F30BAD0](a2, a3);
  }

  else
  {
    v5 = 0;
  }

  v12.receiver = v3;
  v12.super_class = type metadata accessor for WorkoutLocationAnnotationView();
  v6 = objc_msgSendSuper2(&v12, sel_initWithAnnotation_reuseIdentifier_, a1, v5);

  v7 = v6;
  [v7 setFrame_];
  v8 = objc_opt_self();
  v9 = v7;
  v10 = [v8 clearColor];
  [v9 setBackgroundColor_];

  [v9 setCanShowCallout_];
  WorkoutLocationAnnotationView.setTintColor(_:)(a1);

  swift_unknownObjectRelease();
  return v9;
}

void WorkoutLocationAnnotationView.setTintColor(_:)(uint64_t a1)
{
  if (!a1)
  {
    goto LABEL_6;
  }

  type metadata accessor for WorkoutStartLocationAnnotation();
  if (swift_dynamicCastClass())
  {
    v2 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.0 green:1.0 blue:0.62745098 alpha:1.0];
    goto LABEL_8;
  }

  type metadata accessor for WorkoutEndLocationAnnotation();
  if (swift_dynamicCastClass())
  {
    v3 = [objc_opt_self() systemRedColor];
  }

  else
  {
LABEL_6:
    v3 = [objc_opt_self() whiteColor];
  }

  v2 = v3;
LABEL_8:
  v4 = v2;
  [v1 setTintColor_];
}

Swift::Void __swiftcall WorkoutLocationAnnotationView.draw(_:)(__C::CGRect a1)
{
  height = a1.size.height;
  width = a1.size.width;
  y = a1.origin.y;
  x = a1.origin.x;
  v6 = UIGraphicsGetCurrentContext();
  if (v6)
  {
    c = v6;
    CGContextSetLineWidth(v6, 2.0);
    v7 = [v1 tintColor];
    if (v7)
    {
      v8 = v7;
      v9 = [v7 CGColor];

      CGContextSetFillColorWithColor(c, v9);
      v10 = [objc_opt_self() whiteColor];
      v11 = [v10 CGColor];

      CGContextSetStrokeColorWithColor(c, v11);
      v14.origin.x = x;
      v14.origin.y = y;
      v14.size.width = width;
      v14.size.height = height;
      v15 = CGRectInset(v14, 4.0, 4.0);
      CGContextAddEllipseInRect(c, v15);
      CGContextDrawPath(c, kCGPathFillStroke);
    }

    else
    {
      __break(1u);
    }
  }
}

id WorkoutLocationAnnotation.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t getEnumTagSinglePayload for EffortListView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for EffortListView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double _s7SwiftUI11ViewBuilderV10buildBlockyAA05TupleC0VyxxQp_tGxxQpRvzAA0C0RzlFZ07WorkoutB0020UnitsSettingsSectionC0VyAI04Unitj6EnergyL0OGSg_AKyAI0lj10PoolLengthL0OGAKyAI0lj8DistanceL0OGAuKyAI0lj5TrackpL0OGA5UQP_Tt1g5@<D0>(uint64_t **a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = **a1;
  v6 = (*a1)[1];
  v7 = *v4;
  v8 = v4[2];
  v48 = v4[1];
  v49 = v4[3];
  LOBYTE(v4) = *(v4 + 32);
  v9 = a1[2];
  v10 = a1[3];
  v11 = *v9;
  v12 = v9[1];
  v13 = v9[2];
  v14 = v9[3];
  v15 = *(v9 + 32);
  v16 = *v10;
  v17 = v10[1];
  v18 = v10[2];
  v54 = v10[3];
  LOBYTE(v9) = *(v10 + 32);
  v20 = a1[4];
  v19 = a1[5];
  v21 = *v20;
  v55 = v20[1];
  v52 = v20[3];
  v53 = v20[2];
  v22 = *(v20 + 32);
  v23 = *v19;
  v50 = v19[1];
  v24 = v19[3];
  v51 = v19[2];
  LOBYTE(v20) = *(v19 + 32);
  *(a2 + 40) = v7;
  v26 = a1[6];
  v25 = a1[7];
  *(a2 + 72) = v4;
  *(a2 + 80) = v11;
  v27 = *v26;
  v43 = v26[1];
  *(a2 + 112) = v15;
  *(a2 + 120) = v16;
  v28 = v26[2];
  v44 = v26[3];
  LOBYTE(v26) = *(v26 + 32);
  *(a2 + 152) = v9;
  *(a2 + 160) = v21;
  v30 = *v25;
  v29 = v25[1];
  *(a2 + 192) = v22;
  *(a2 + 200) = v23;
  v31 = v25[3];
  v45 = v25[2];
  v32 = *(v25 + 32);
  *(a2 + 232) = v20;
  v34 = a1[8];
  v33 = a1[9];
  *(a2 + 240) = v27;
  *(a2 + 272) = v26;
  v35 = *v34;
  v46 = v34[1];
  *(a2 + 280) = v30;
  *(a2 + 312) = v32;
  v36 = v34[2];
  v47 = v34[3];
  LOBYTE(v26) = *(v34 + 32);
  *(a2 + 320) = v35;
  *(a2 + 352) = v26;
  v37 = v33[1];
  *(a2 + 360) = *v33;
  *(a2 + 392) = *(v33 + 32);
  v39 = v33[2];
  v38 = v33[3];
  v40 = v3[2];
  v41 = v3[3];
  LOBYTE(v21) = *(v3 + 32);
  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 16) = v40;
  *(a2 + 24) = v41;
  *(a2 + 32) = v21;
  *(a2 + 48) = v48;
  *(a2 + 56) = v8;
  *(a2 + 64) = v49;
  *(a2 + 88) = v12;
  *(a2 + 96) = v13;
  *(a2 + 104) = v14;
  *(a2 + 128) = v17;
  *(a2 + 136) = v18;
  *(a2 + 144) = v54;
  *(a2 + 168) = v55;
  *(a2 + 176) = v53;
  *(a2 + 184) = v52;
  *(a2 + 208) = v50;
  *(a2 + 216) = v51;
  *(a2 + 224) = v24;
  *(a2 + 248) = v43;
  *(a2 + 256) = v28;
  *(a2 + 264) = v44;
  *(a2 + 288) = v29;
  *(a2 + 296) = v45;
  *(a2 + 304) = v31;
  *(a2 + 328) = v46;
  *(a2 + 336) = v36;
  *(a2 + 344) = v47;
  *(a2 + 368) = v37;
  *(a2 + 376) = v39;
  *(a2 + 384) = v38;
  outlined copy of UnitsSettingsSectionView<UnitSettingsEnergyUnit>?(v5, v6, v40, v41);

  return result;
}

uint64_t _s7SwiftUI11ViewBuilderV10buildBlockyAA05TupleC0VyxxQp_tGxxQpRvzAA0C0RzlFZAA15ModifiedContentVyAA4TextVAA14_PaddingLayoutVG_07WorkoutB018EffortSectionTitle33_06FC76556B25F7BE4859D6C5967358FALLVAJyAP0N6ButtonVANGA2vs3vs2vs2vJyAA7DividerVANGAvaHPAAE05sceneK0yQrAA4EdgeO3SetVFQOyAO_Qo_QP_Tt1g5@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = *a1;
  v14[0] = **a1;
  v6 = v4[2];
  v5 = v4[3];
  v7 = v4[1];
  *&v15[9] = *(v4 + 57);
  v14[2] = v6;
  *v15 = v5;
  v14[1] = v7;
  memmove(a2, v4, 0x49uLL);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA14_PaddingLayoutVG_07WorkoutB018EffortSectionTitle33_06FC76556B25F7BE4859D6C5967358FALLVACyAI0I6ButtonVAGGA2ol3ol2ol2oCyAA7DividerVAGGAoA4ViewPAAE05sceneF0yQrAA4EdgeO3SetVFQOyAH_Qo_tMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA14_PaddingLayoutVG_07WorkoutB018EffortSectionTitle33_06FC76556B25F7BE4859D6C5967358FALLVACyAI0I6ButtonVAGGA2ol3ol2ol2oCyAA7DividerVAGGAoA4ViewPAAE05sceneF0yQrAA4EdgeO3SetVFQOyAH_Qo_tMR);
  outlined init with copy of EffortSectionTitle(*(a1 + 8), &a2[v8[12]], type metadata accessor for EffortSectionTitle);
  outlined init with copy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(*(a1 + 16), &a2[v8[16]], &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMR);
  outlined init with copy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(*(a1 + 24), &a2[v8[20]], &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMR);
  outlined init with copy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(*(a1 + 32), &a2[v8[24]], &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMR);
  outlined init with copy of EffortSectionTitle(*(a1 + 40), &a2[v8[28]], type metadata accessor for EffortSectionTitle);
  outlined init with copy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(*(a1 + 48), &a2[v8[32]], &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMR);
  outlined init with copy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(*(a1 + 56), &a2[v8[36]], &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMR);
  outlined init with copy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(*(a1 + 64), &a2[v8[40]], &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMR);
  outlined init with copy of EffortSectionTitle(*(a1 + 72), &a2[v8[44]], type metadata accessor for EffortSectionTitle);
  outlined init with copy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(*(a1 + 80), &a2[v8[48]], &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMR);
  outlined init with copy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(*(a1 + 88), &a2[v8[52]], &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMR);
  outlined init with copy of EffortSectionTitle(*(a1 + 96), &a2[v8[56]], type metadata accessor for EffortSectionTitle);
  outlined init with copy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(*(a1 + 104), &a2[v8[60]], &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMR);
  outlined init with copy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(*(a1 + 112), &a2[v8[64]], &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMR);
  outlined init with copy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(*(a1 + 120), &a2[v8[68]], &_s7SwiftUI15ModifiedContentVyAA7DividerVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA7DividerVAA14_PaddingLayoutVGMR);
  outlined init with copy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(*(a1 + 128), &a2[v8[72]], &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMR);
  v9 = v8[76];
  v10 = *(a1 + 136);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA15ModifiedContentVyAA4TextVAA01_E6LayoutVG_Qo_Md, &_s7SwiftUI4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA15ModifiedContentVyAA4TextVAA01_E6LayoutVG_Qo_MR);
  (*(*(v11 - 8) + 16))(&a2[v9], v10, v11);
  return outlined init with copy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v14, &v13, &_s7SwiftUI15ModifiedContentVyAA4TextVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA14_PaddingLayoutVGMR);
}

uint64_t closure #1 in EffortListView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = static HorizontalAlignment.leading.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA4TextVAA08_PaddingG0VG_07WorkoutB018EffortSectionTitle33_06FC76556B25F7BE4859D6C5967358FALLVAKyAQ0N6ButtonVAOGA2wt3wt2wt2wKyAA7DividerVAOGAwA0D0PAAE05sceneL0yQrAA4EdgeO3SetVFQOyAP_Qo_tGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA4TextVAA08_PaddingG0VG_07WorkoutB018EffortSectionTitle33_06FC76556B25F7BE4859D6C5967358FALLVAKyAQ0N6ButtonVAOGA2wt3wt2wt2wKyAA7DividerVAOGAwA0D0PAAE05sceneL0yQrAA4EdgeO3SetVFQOyAP_Qo_tGGMR);
  closure #1 in closure #1 in EffortListView.body.getter(a1, (a2 + *(v4 + 44)));
  LOBYTE(a1) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyAA4TextVAA14_PaddingLayoutVG_07WorkoutB018EffortSectionTitle33_06FC76556B25F7BE4859D6C5967358FALLVACyAM0L6ButtonVAKGA2sp3sp2sp2sCyAA7DividerVAKGAsA0G0PAAE05sceneI0yQrAA4EdgeO3SetVFQOyAL_Qo_tGGAKGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyAA4TextVAA14_PaddingLayoutVG_07WorkoutB018EffortSectionTitle33_06FC76556B25F7BE4859D6C5967358FALLVACyAM0L6ButtonVAKGA2sp3sp2sp2sCyAA7DividerVAKGAsA0G0PAAE05sceneI0yQrAA4EdgeO3SetVFQOyAL_Qo_tGGAKGMR);
  v14 = a2 + *(result + 36);
  *v14 = a1;
  *(v14 + 8) = v6;
  *(v14 + 16) = v8;
  *(v14 + 24) = v10;
  *(v14 + 32) = v12;
  *(v14 + 40) = 0;
  return result;
}

uint64_t closure #1 in closure #1 in EffortListView.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v386 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA15ModifiedContentVyAA4TextVAA01_E6LayoutVG_Qo_Md, &_s7SwiftUI4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA15ModifiedContentVyAA4TextVAA01_E6LayoutVG_Qo_MR);
  v388 = *(v3 - 8);
  v389 = v3;
  MEMORY[0x28223BE20](v3);
  v387 = &v374[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v385 = &v374[-v6];
  v384 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA7DividerVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA7DividerVAA14_PaddingLayoutVGMR);
  MEMORY[0x28223BE20](v384);
  v408 = &v374[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v396 = &v374[-v9];
  v426 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMR);
  MEMORY[0x28223BE20](v426);
  v400 = &v374[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v407 = &v374[-v12];
  MEMORY[0x28223BE20](v13);
  v404 = &v374[-v14];
  MEMORY[0x28223BE20](v15);
  v406 = &v374[-v16];
  MEMORY[0x28223BE20](v17);
  v403 = &v374[-v18];
  MEMORY[0x28223BE20](v19);
  v405 = &v374[-v20];
  MEMORY[0x28223BE20](v21);
  v402 = &v374[-v22];
  MEMORY[0x28223BE20](v23);
  v399 = &v374[-v24];
  MEMORY[0x28223BE20](v25);
  v401 = &v374[-v26];
  MEMORY[0x28223BE20](v27);
  v398 = &v374[-v28];
  MEMORY[0x28223BE20](v29);
  v397 = &v374[-v30];
  MEMORY[0x28223BE20](v31);
  v391 = &v374[-v32];
  MEMORY[0x28223BE20](v33);
  v421 = &v374[-v34];
  MEMORY[0x28223BE20](v35);
  v418 = &v374[-v36];
  MEMORY[0x28223BE20](v37);
  v420 = &v374[-v38];
  MEMORY[0x28223BE20](v39);
  v417 = &v374[-v40];
  MEMORY[0x28223BE20](v41);
  v419 = &v374[-v42];
  MEMORY[0x28223BE20](v43);
  v416 = &v374[-v44];
  MEMORY[0x28223BE20](v45);
  v414 = &v374[-v46];
  MEMORY[0x28223BE20](v47);
  v415 = &v374[-v48];
  MEMORY[0x28223BE20](v49);
  v413 = &v374[-v50];
  MEMORY[0x28223BE20](v51);
  v409 = &v374[-v52];
  v422 = type metadata accessor for EffortSectionTitle(0);
  MEMORY[0x28223BE20](v422);
  v392 = &v374[-((v53 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v54);
  v393 = &v374[-v55];
  MEMORY[0x28223BE20](v56);
  v394 = &v374[-v57];
  MEMORY[0x28223BE20](v58);
  v395 = &v374[-v59];
  MEMORY[0x28223BE20](v60);
  v410 = &v374[-v61];
  MEMORY[0x28223BE20](v62);
  v411 = &v374[-v63];
  MEMORY[0x28223BE20](v64);
  v412 = &v374[-v65];
  MEMORY[0x28223BE20](v66);
  v68 = &v374[-v67];
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v69 = WorkoutUIBundle.super.isa;
  v457._object = 0xE000000000000000;
  v70._countAndFlagsBits = 0x4549565F5453494CLL;
  v70._object = 0xEF454C5449545F57;
  v71.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v71.value._object = 0xEB00000000656C62;
  v72._countAndFlagsBits = 0;
  v72._object = 0xE000000000000000;
  v457._countAndFlagsBits = 0;
  v73 = NSLocalizedString(_:tableName:bundle:value:comment:)(v70, v71, v69, v72, v457);

  v435 = v73;
  v378 = lazy protocol witness table accessor for type String and conformance String();
  v74 = Text.init<A>(_:)();
  v76 = v75;
  v78 = v77;
  v79 = Text.font(_:)();
  v382 = v80;
  v383 = v79;
  v82 = v81;
  v381 = v83;
  outlined consume of Text.Storage(v74, v76, v78 & 1);

  v380 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v85 = v84;
  v87 = v86;
  v89 = v88;
  v91 = v90;
  v379 = v82 & 1;
  LOBYTE(v435._countAndFlagsBits) = v82 & 1;
  LOBYTE(v453) = 0;
  LODWORD(v427) = *MEMORY[0x277D7E248];
  v92 = v427;
  v430 = type metadata accessor for AppleExertionScale();
  v93 = *(v430 - 8);
  v94 = *(v93 + 104);
  v94(v68, v92, v430);
  v428 = v94;
  v429 = v93 + 104;
  v95 = v422;
  *&v68[*(v422 + 20)] = 0x403E000000000000;
  *&v68[v95[6]] = 0x4010000000000000;
  v96 = v68;
  v390 = v68;
  v97 = v95[7];
  static Font.title2.getter();
  static Font.Weight.bold.getter();
  v98 = Font.weight(_:)();

  *&v96[v97] = v98;
  v99 = v95[8];
  *&v96[v99] = static Font.subheadline.getter();
  v100 = v95[9];
  *&v96[v100] = static Color.white.getter();
  v101 = v409;
  v102 = v430;
  v94(v409, v427, v430);
  v103 = *(v93 + 56);
  v424 = v93 + 56;
  v425 = v103;
  v103(v101, 0, 1, v102);
  v449 = *a1;
  v450 = *(a1 + 16);
  v435 = *a1;
  *&v436 = *(a1 + 16);
  v423 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySdGMd, &_s7SwiftUI7BindingVySdGMR);
  Binding.projectedValue.getter();
  v104 = v453;
  v105 = v101;
  v106 = v454;
  v447 = *(a1 + 24);
  v448 = *(a1 + 40);
  v435 = *(a1 + 24);
  LOBYTE(v436) = *(a1 + 40);
  v427 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd, &_s7SwiftUI7BindingVySbGMR);
  Binding.projectedValue.getter();
  v107 = v453;
  LOBYTE(v96) = v454;
  v108 = type metadata accessor for EffortButton(0);
  *&v101[v108[5]] = 3;
  v109 = &v101[v108[6]];
  *v109 = v104;
  *(v109 + 2) = v106;
  v110 = &v101[v108[7]];
  *v110 = v107;
  v110[16] = v96;
  v111 = v108[8];
  static Font.title2.getter();
  static Font.Weight.medium.getter();
  v112 = Font.weight(_:)();

  *&v105[v111] = v112;
  v113 = v108[9];
  static Font.body.getter();
  v114 = Font.bold()();

  *&v105[v113] = v114;
  *&v105[v108[10]] = 0x4049000000000000;
  *&v105[v108[11]] = 0x402C000000000000;
  LOBYTE(v92) = static Edge.Set.top.getter();
  v377 = a1;
  EdgeInsets.init(_all:)();
  v115 = &v105[*(v426 + 36)];
  *v115 = v92;
  *(v115 + 1) = v116;
  *(v115 + 2) = v117;
  *(v115 + 3) = v118;
  *(v115 + 4) = v119;
  v115[40] = 0;
  v120 = v413;
  v428(v413, *MEMORY[0x277D7E250], v102);
  v121 = v102;
  v122 = v425;
  v425(v120, 0, 1, v121);
  v435 = v449;
  *&v436 = v450;
  Binding.projectedValue.getter();
  v123 = v453;
  v124 = v454;
  v435 = v447;
  LOBYTE(v436) = v448;
  Binding.projectedValue.getter();
  v125 = v453;
  *&v120[v108[5]] = 0;
  v126 = v454;
  v127 = &v120[v108[6]];
  *v127 = v123;
  *(v127 + 2) = v124;
  v128 = &v120[v108[7]];
  *v128 = v125;
  v128[16] = v126;
  v129 = v108[8];
  static Font.title2.getter();
  static Font.Weight.medium.getter();
  v130 = Font.weight(_:)();

  *&v120[v129] = v130;
  v131 = v108[9];
  static Font.body.getter();
  v132 = Font.bold()();

  *&v120[v131] = v132;
  *&v120[v108[10]] = 0x4049000000000000;
  *&v120[v108[11]] = 0x402C000000000000;
  LOBYTE(v92) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v133 = v426;
  v134 = &v120[*(v426 + 36)];
  *v134 = v92;
  *(v134 + 1) = v135;
  *(v134 + 2) = v136;
  *(v134 + 3) = v137;
  *(v134 + 4) = v138;
  v134[40] = 0;
  v139 = v415;
  v140 = v430;
  v428(v415, *MEMORY[0x277D7E258], v430);
  v122(v139, 0, 1, v140);
  v435 = v449;
  *&v436 = v450;
  Binding.projectedValue.getter();
  v141 = v453;
  v142 = v454;
  v435 = v447;
  LOBYTE(v436) = v448;
  Binding.projectedValue.getter();
  v143 = v453;
  *&v139[v108[5]] = 0;
  v144 = v454;
  v145 = &v139[v108[6]];
  *v145 = v141;
  *(v145 + 2) = v142;
  v146 = &v139[v108[7]];
  *v146 = v143;
  v146[16] = v144;
  v147 = v108[8];
  static Font.title2.getter();
  static Font.Weight.medium.getter();
  v148 = Font.weight(_:)();

  *&v139[v147] = v148;
  v149 = v108[9];
  static Font.body.getter();
  v150 = Font.bold()();

  *&v139[v149] = v150;
  *&v139[v108[10]] = 0x4049000000000000;
  *&v139[v108[11]] = 0x402C000000000000;
  LOBYTE(v140) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v151 = &v139[*(v133 + 36)];
  *v151 = v140;
  *(v151 + 1) = v152;
  *(v151 + 2) = v153;
  *(v151 + 3) = v154;
  *(v151 + 4) = v155;
  v151[40] = 0;
  v375 = *MEMORY[0x277D7E260];
  v156 = v412;
  v157 = v430;
  v158 = v428;
  (v428)(v412);
  v159 = v422;
  *&v156[*(v422 + 20)] = 0x403E000000000000;
  *&v156[v159[6]] = 0x4010000000000000;
  v160 = v156;
  v161 = v159[7];
  static Font.title2.getter();
  static Font.Weight.bold.getter();
  v162 = Font.weight(_:)();

  *&v160[v161] = v162;
  v163 = v159[8];
  *&v160[v163] = static Font.subheadline.getter();
  v164 = v159[9];
  *&v160[v164] = static Color.white.getter();
  v165 = v414;
  v158(v414, v375, v157);
  v425(v165, 0, 1, v157);
  v435 = v449;
  *&v436 = v450;
  Binding.projectedValue.getter();
  v166 = v453;
  v167 = v454;
  v435 = v447;
  LOBYTE(v436) = v448;
  Binding.projectedValue.getter();
  v168 = v453;
  *&v165[v108[5]] = 0;
  v169 = v454;
  v170 = &v165[v108[6]];
  *v170 = v166;
  *(v170 + 2) = v167;
  v171 = &v165[v108[7]];
  *v171 = v168;
  v171[16] = v169;
  v172 = v108[8];
  static Font.title2.getter();
  static Font.Weight.medium.getter();
  v173 = Font.weight(_:)();

  *&v165[v172] = v173;
  v174 = v108[9];
  static Font.body.getter();
  v175 = Font.bold()();

  *&v165[v174] = v175;
  *&v165[v108[10]] = 0x4049000000000000;
  *&v165[v108[11]] = 0x402C000000000000;
  LOBYTE(v157) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v176 = &v165[*(v426 + 36)];
  *v176 = v157;
  *(v176 + 1) = v177;
  *(v176 + 2) = v178;
  *(v176 + 3) = v179;
  *(v176 + 4) = v180;
  v176[40] = 0;
  v181 = v416;
  v182 = v430;
  v428(v416, *MEMORY[0x277D7E268], v430);
  v183 = v425;
  v425(v181, 0, 1, v182);
  v435 = v449;
  *&v436 = v450;
  Binding.projectedValue.getter();
  v184 = v453;
  v185 = v454;
  v435 = v447;
  LOBYTE(v436) = v448;
  Binding.projectedValue.getter();
  v186 = v453;
  *&v181[v108[5]] = 0;
  v187 = v454;
  v188 = &v181[v108[6]];
  *v188 = v184;
  *(v188 + 2) = v185;
  v189 = &v181[v108[7]];
  *v189 = v186;
  v189[16] = v187;
  v190 = v108[8];
  static Font.title2.getter();
  static Font.Weight.medium.getter();
  v191 = Font.weight(_:)();

  *&v181[v190] = v191;
  v192 = v108[9];
  static Font.body.getter();
  v193 = Font.bold()();

  *&v181[v192] = v193;
  *&v181[v108[10]] = 0x4049000000000000;
  *&v181[v108[11]] = 0x402C000000000000;
  LOBYTE(v182) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v194 = v426;
  v195 = &v181[*(v426 + 36)];
  *v195 = v182;
  *(v195 + 1) = v196;
  *(v195 + 2) = v197;
  *(v195 + 3) = v198;
  *(v195 + 4) = v199;
  v195[40] = 0;
  v200 = v419;
  v201 = v430;
  v202 = v428;
  v428(v419, *MEMORY[0x277D7E270], v430);
  v183(v200, 0, 1, v201);
  v435 = v449;
  *&v436 = v450;
  Binding.projectedValue.getter();
  v203 = v453;
  v204 = v454;
  v435 = v447;
  LOBYTE(v436) = v448;
  Binding.projectedValue.getter();
  v205 = v453;
  *&v200[v108[5]] = 0;
  v206 = v454;
  v207 = &v200[v108[6]];
  *v207 = v203;
  *(v207 + 2) = v204;
  v208 = &v200[v108[7]];
  *v208 = v205;
  v208[16] = v206;
  v209 = v108[8];
  static Font.title2.getter();
  static Font.Weight.medium.getter();
  v210 = Font.weight(_:)();

  *&v200[v209] = v210;
  v211 = v108[9];
  static Font.body.getter();
  v212 = Font.bold()();

  *&v200[v211] = v212;
  *&v200[v108[10]] = 0x4049000000000000;
  *&v200[v108[11]] = 0x402C000000000000;
  LOBYTE(v182) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v213 = &v200[*(v194 + 36)];
  *v213 = v182;
  *(v213 + 1) = v214;
  *(v213 + 2) = v215;
  *(v213 + 3) = v216;
  *(v213 + 4) = v217;
  v213[40] = 0;
  v218 = *MEMORY[0x277D7E278];
  v219 = v411;
  v220 = v202;
  v202(v411, v218, v201);
  v221 = v422;
  *&v219[*(v422 + 20)] = 0x403E000000000000;
  *&v219[v221[6]] = 0x4010000000000000;
  v222 = v219;
  v223 = v221[7];
  static Font.title2.getter();
  static Font.Weight.bold.getter();
  v224 = Font.weight(_:)();

  *&v222[v223] = v224;
  v225 = v221[8];
  *&v222[v225] = static Font.subheadline.getter();
  v226 = v221[9];
  *&v222[v226] = static Color.white.getter();
  v227 = v417;
  v228 = v218;
  v229 = v430;
  v220(v417, v228, v430);
  v425(v227, 0, 1, v229);
  v435 = v449;
  *&v436 = v450;
  Binding.projectedValue.getter();
  v230 = v453;
  v231 = v454;
  v435 = v447;
  LOBYTE(v436) = v448;
  Binding.projectedValue.getter();
  v232 = v453;
  *&v227[v108[5]] = 0;
  v233 = v454;
  v234 = &v227[v108[6]];
  *v234 = v230;
  *(v234 + 2) = v231;
  v235 = &v227[v108[7]];
  *v235 = v232;
  v235[16] = v233;
  v236 = v108[8];
  static Font.title2.getter();
  static Font.Weight.medium.getter();
  v237 = Font.weight(_:)();

  *&v227[v236] = v237;
  v238 = v108[9];
  static Font.body.getter();
  v239 = Font.bold()();

  *&v227[v238] = v239;
  *&v227[v108[10]] = 0x4049000000000000;
  *&v227[v108[11]] = 0x402C000000000000;
  LOBYTE(v229) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v240 = v426;
  v241 = &v227[*(v426 + 36)];
  *v241 = v229;
  *(v241 + 1) = v242;
  *(v241 + 2) = v243;
  *(v241 + 3) = v244;
  *(v241 + 4) = v245;
  v241[40] = 0;
  v246 = v420;
  v247 = v430;
  v428(v420, *MEMORY[0x277D7E280], v430);
  v425(v246, 0, 1, v247);
  v435 = v449;
  *&v436 = v450;
  Binding.projectedValue.getter();
  v248 = v453;
  v249 = v454;
  v435 = v447;
  LOBYTE(v436) = v448;
  Binding.projectedValue.getter();
  v250 = v453;
  *&v246[v108[5]] = 0;
  v251 = v454;
  v252 = &v246[v108[6]];
  *v252 = v248;
  *(v252 + 2) = v249;
  v253 = &v246[v108[7]];
  *v253 = v250;
  v253[16] = v251;
  v254 = v108[8];
  static Font.title2.getter();
  static Font.Weight.medium.getter();
  v255 = Font.weight(_:)();

  *&v246[v254] = v255;
  v256 = v108[9];
  static Font.body.getter();
  v257 = Font.bold()();

  *&v246[v256] = v257;
  v376 = v108;
  *&v246[v108[10]] = 0x4049000000000000;
  *&v246[v108[11]] = 0x402C000000000000;
  LOBYTE(v247) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v258 = &v246[*(v240 + 36)];
  *v258 = v247;
  *(v258 + 1) = v259;
  *(v258 + 2) = v260;
  *(v258 + 3) = v261;
  *(v258 + 4) = v262;
  v258[40] = 0;
  v375 = *MEMORY[0x277D7E288];
  v263 = v410;
  v264 = v430;
  v265 = v428;
  (v428)(v410);
  v266 = v422;
  *&v263[*(v422 + 20)] = 0x403E000000000000;
  *&v263[*(v266 + 24)] = 0x4010000000000000;
  v267 = v263;
  v268 = *(v266 + 28);
  v269 = v266;
  static Font.title2.getter();
  static Font.Weight.bold.getter();
  v270 = Font.weight(_:)();

  *&v267[v268] = v270;
  v271 = *(v269 + 32);
  *&v267[v271] = static Font.subheadline.getter();
  v272 = *(v269 + 36);
  *&v267[v272] = static Color.white.getter();
  v273 = v418;
  v265(v418, v375, v264);
  v274 = v425;
  v425(v273, 0, 1, v264);
  v435 = v449;
  *&v436 = v450;
  Binding.projectedValue.getter();
  v275 = v453;
  v276 = v454;
  v435 = v447;
  LOBYTE(v436) = v448;
  Binding.projectedValue.getter();
  v277 = v453;
  v278 = v376;
  *&v273[v376[5]] = 0;
  v279 = v454;
  v280 = &v273[v278[6]];
  *v280 = v275;
  *(v280 + 2) = v276;
  v281 = &v273[v278[7]];
  *v281 = v277;
  v281[16] = v279;
  v282 = v278[8];
  static Font.title2.getter();
  static Font.Weight.medium.getter();
  v283 = Font.weight(_:)();

  *&v273[v282] = v283;
  v284 = v278[9];
  static Font.body.getter();
  v285 = Font.bold()();

  *&v273[v284] = v285;
  *&v273[v278[10]] = 0x4049000000000000;
  *&v273[v278[11]] = 0x402C000000000000;
  LOBYTE(v264) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v286 = v426;
  v287 = &v273[*(v426 + 36)];
  *v287 = v264;
  *(v287 + 1) = v288;
  *(v287 + 2) = v289;
  *(v287 + 3) = v290;
  *(v287 + 4) = v291;
  v287[40] = 0;
  v292 = v421;
  v293 = v430;
  v428(v421, *MEMORY[0x277D7E290], v430);
  v274(v292, 0, 1, v293);
  v435 = v449;
  *&v436 = v450;
  Binding.projectedValue.getter();
  v294 = v453;
  v295 = v454;
  v435 = v447;
  LOBYTE(v436) = v448;
  Binding.projectedValue.getter();
  v296 = v453;
  *&v292[v278[5]] = 12;
  v297 = v454;
  v298 = &v292[v278[6]];
  *v298 = v294;
  *(v298 + 2) = v295;
  v299 = &v292[v278[7]];
  *v299 = v296;
  v299[16] = v297;
  v300 = v278[8];
  static Font.title2.getter();
  static Font.Weight.medium.getter();
  v301 = Font.weight(_:)();

  *&v292[v300] = v301;
  v302 = v278[9];
  static Font.body.getter();
  v303 = Font.bold()();

  *&v292[v302] = v303;
  *&v292[v278[10]] = 0x4049000000000000;
  *&v292[v278[11]] = 0x402C000000000000;
  LOBYTE(v293) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v304 = &v292[*(v286 + 36)];
  *v304 = v293;
  *(v304 + 1) = v305;
  *(v304 + 2) = v306;
  *(v304 + 3) = v307;
  *(v304 + 4) = v308;
  v304[40] = 0;
  v309 = v396;
  Divider.init()();
  LOBYTE(v293) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v310 = &v309[*(v384 + 36)];
  *v310 = v293;
  *(v310 + 1) = v311;
  *(v310 + 2) = v312;
  *(v310 + 3) = v313;
  *(v310 + 4) = v314;
  v310[40] = 0;
  v315 = v391;
  v274(v391, 1, 1, v430);
  v435 = v449;
  *&v436 = v450;
  Binding.projectedValue.getter();
  v316 = v453;
  v317 = v454;
  v435 = v447;
  LOBYTE(v436) = v448;
  Binding.projectedValue.getter();
  v318 = v453;
  *&v315[v278[5]] = 15;
  v319 = v454;
  v320 = &v315[v278[6]];
  *v320 = v316;
  *(v320 + 2) = v317;
  v321 = &v315[v278[7]];
  *v321 = v318;
  v321[16] = v319;
  v322 = v278[8];
  static Font.title2.getter();
  static Font.Weight.medium.getter();
  v323 = Font.weight(_:)();

  *&v315[v322] = v323;
  v324 = v278[9];
  static Font.body.getter();
  v325 = Font.bold()();

  *&v315[v324] = v325;
  *&v315[v278[10]] = 0x4049000000000000;
  *&v315[v278[11]] = 0x402C000000000000;
  LOBYTE(v293) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v326 = &v315[*(v286 + 36)];
  *v326 = v293;
  *(v326 + 1) = v327;
  *(v326 + 2) = v328;
  *(v326 + 3) = v329;
  *(v326 + 4) = v330;
  v326[40] = 0;
  v331 = WorkoutUIBundle.super.isa;
  v458._object = 0xE000000000000000;
  v332._object = 0x800000020CB9E360;
  v332._countAndFlagsBits = 0xD000000000000017;
  v333.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v333.value._object = 0xEB00000000656C62;
  v334._countAndFlagsBits = 0;
  v334._object = 0xE000000000000000;
  v458._countAndFlagsBits = 0;
  v335 = NSLocalizedString(_:tableName:bundle:value:comment:)(v332, v333, v331, v334, v458);

  v435 = v335;
  v336 = Text.init<A>(_:)();
  v338 = v337;
  LOBYTE(v324) = v339;
  static Font.footnote.getter();
  static Font.Weight.medium.getter();
  Font.weight(_:)();

  v340 = Text.font(_:)();
  v342 = v341;
  LOBYTE(v278) = v343;
  v345 = v344;

  outlined consume of Text.Storage(v336, v338, v324 & 1);

  LOBYTE(v336) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  LOBYTE(v453) = v278 & 1;
  LOBYTE(v431) = 0;
  v435._countAndFlagsBits = v340;
  v435._object = v342;
  LOBYTE(v436) = v278 & 1;
  *(&v436 + 1) = v345;
  LOBYTE(v437) = v336;
  *(&v437 + 1) = v346;
  *&v438[0] = v347;
  *(&v438[0] + 1) = v348;
  *&v438[1] = v349;
  BYTE8(v438[1]) = 0;
  static Edge.Set.horizontal.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA14_PaddingLayoutVGMR);
  lazy protocol witness table accessor for type ModifiedContent<Text, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
  v350 = v385;
  View.scenePadding(_:)();
  v451[2] = v437;
  v452[0] = v438[0];
  *(v452 + 9) = *(v438 + 9);
  v451[0] = v435;
  v451[1] = v436;
  outlined destroy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v451, &_s7SwiftUI15ModifiedContentVyAA4TextVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA14_PaddingLayoutVGMR);
  *&v431 = v383;
  *(&v431 + 1) = v382;
  LOBYTE(v432) = v379;
  *(&v432 + 1) = v381;
  LOBYTE(v433) = v380;
  *(&v433 + 1) = v85;
  *&v434[0] = v87;
  *(&v434[0] + 1) = v89;
  *&v434[1] = v91;
  BYTE8(v434[1]) = 0;
  v435._countAndFlagsBits = &v431;
  v351 = v395;
  outlined init with copy of EffortSectionTitle(v390, v395, type metadata accessor for EffortSectionTitle);
  v435._object = v351;
  v352 = v397;
  outlined init with copy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v409, v397, &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMR);
  *&v436 = v352;
  v353 = v398;
  outlined init with copy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v413, v398, &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMR);
  *(&v436 + 1) = v353;
  v354 = v401;
  outlined init with copy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v415, v401, &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMR);
  *&v437 = v354;
  v355 = v394;
  outlined init with copy of EffortSectionTitle(v412, v394, type metadata accessor for EffortSectionTitle);
  *(&v437 + 1) = v355;
  v356 = v399;
  outlined init with copy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v414, v399, &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMR);
  *&v438[0] = v356;
  v357 = v402;
  outlined init with copy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v416, v402, &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMR);
  *(&v438[0] + 1) = v357;
  v358 = v405;
  outlined init with copy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v419, v405, &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMR);
  *&v438[1] = v358;
  v359 = v393;
  outlined init with copy of EffortSectionTitle(v411, v393, type metadata accessor for EffortSectionTitle);
  *(&v438[1] + 1) = v359;
  v360 = v403;
  outlined init with copy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v417, v403, &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMR);
  v439 = v360;
  v361 = v406;
  outlined init with copy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v420, v406, &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMR);
  v440 = v361;
  v362 = v392;
  outlined init with copy of EffortSectionTitle(v410, v392, type metadata accessor for EffortSectionTitle);
  v441 = v362;
  v363 = v404;
  outlined init with copy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v418, v404, &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMR);
  v442 = v363;
  v364 = v407;
  outlined init with copy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v421, v407, &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMR);
  v443 = v364;
  v365 = v396;
  v366 = v408;
  outlined init with copy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v396, v408, &_s7SwiftUI15ModifiedContentVyAA7DividerVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA7DividerVAA14_PaddingLayoutVGMR);
  v444 = v366;
  v367 = v391;
  v368 = v400;
  outlined init with copy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v391, v400, &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMR);
  v445 = v368;
  v369 = v387;
  v370 = v388;
  v371 = v389;
  (*(v388 + 16))(v387, v350, v389);
  v446 = v369;
  _s7SwiftUI11ViewBuilderV10buildBlockyAA05TupleC0VyxxQp_tGxxQpRvzAA0C0RzlFZAA15ModifiedContentVyAA4TextVAA14_PaddingLayoutVG_07WorkoutB018EffortSectionTitle33_06FC76556B25F7BE4859D6C5967358FALLVAJyAP0N6ButtonVANGA2vs3vs2vs2vJyAA7DividerVANGAvaHPAAE05sceneK0yQrAA4EdgeO3SetVFQOyAO_Qo_QP_Tt1g5(&v435, v386);
  v372 = *(v370 + 8);
  v372(v350, v371);
  outlined destroy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v367, &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMR);
  outlined destroy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v365, &_s7SwiftUI15ModifiedContentVyAA7DividerVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA7DividerVAA14_PaddingLayoutVGMR);
  outlined destroy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v421, &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMR);
  outlined destroy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v418, &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMR);
  outlined destroy of EffortSectionTitle(v410);
  outlined destroy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v420, &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMR);
  outlined destroy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v417, &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMR);
  outlined destroy of EffortSectionTitle(v411);
  outlined destroy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v419, &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMR);
  outlined destroy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v416, &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMR);
  outlined destroy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v414, &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMR);
  outlined destroy of EffortSectionTitle(v412);
  outlined destroy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v415, &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMR);
  outlined destroy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v413, &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMR);
  outlined destroy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v409, &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMR);
  outlined destroy of EffortSectionTitle(v390);
  v372(v369, v371);
  outlined destroy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v400, &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMR);
  outlined destroy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v408, &_s7SwiftUI15ModifiedContentVyAA7DividerVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA7DividerVAA14_PaddingLayoutVGMR);
  outlined destroy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v407, &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMR);
  outlined destroy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v404, &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMR);
  outlined destroy of EffortSectionTitle(v392);
  outlined destroy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v406, &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMR);
  outlined destroy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v403, &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMR);
  outlined destroy of EffortSectionTitle(v393);
  outlined destroy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v405, &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMR);
  outlined destroy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v402, &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMR);
  outlined destroy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v399, &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMR);
  outlined destroy of EffortSectionTitle(v394);
  outlined destroy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v401, &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMR);
  outlined destroy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v398, &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMR);
  outlined destroy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v397, &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB012EffortButtonVAA14_PaddingLayoutVGMR);
  outlined destroy of EffortSectionTitle(v395);
  v455 = v433;
  v456[0] = v434[0];
  *(v456 + 9) = *(v434 + 9);
  v453 = v431;
  v454 = v432;
  return outlined destroy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(&v453, &_s7SwiftUI15ModifiedContentVyAA4TextVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA14_PaddingLayoutVGMR);
}

double closure #2 in EffortListView.body.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore18AppleExertionScaleOSgMd, &_s11WorkoutCore18AppleExertionScaleOSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = [objc_opt_self() appleEffortScoreUnit];
  *v15 = *a1;
  *&v15[16] = *(a1 + 16);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySdGMd, &_s7SwiftUI7BindingVySdGMR);
  MEMORY[0x20F30B100](&v14, v8);
  v9 = [objc_opt_self() quantityWithUnit:v7 doubleValue:v14];

  AppleExertionScale.init(quantity:)();
  specialized static EffortColors.gradient(exertion:)(v6);
  outlined destroy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v6, &_s11WorkoutCore18AppleExertionScaleOSgMd, &_s11WorkoutCore18AppleExertionScaleOSgMR);
  static UnitPoint.topLeading.getter();
  static UnitPoint.bottomTrailing.getter();
  LinearGradient.init(gradient:startPoint:endPoint:)();
  v10 = static SafeAreaRegions.all.getter();
  v11 = static Edge.Set.all.getter();
  *a2 = *v15;
  *(a2 + 8) = *&v15[8];
  result = v16[0];
  *(a2 + 24) = *v16;
  *(a2 + 40) = v10;
  *(a2 + 48) = v11;
  return result;
}

uint64_t protocol witness for View.body.getter in conformance EffortListView@<X0>(uint64_t a2@<X8>)
{
  v4 = *(v2 + 80);
  v19[4] = *(v2 + 64);
  v19[5] = v4;
  v19[6] = *(v2 + 96);
  v20 = *(v2 + 112);
  v5 = *(v2 + 16);
  v19[0] = *v2;
  v19[1] = v5;
  v6 = *(v2 + 48);
  v19[2] = *(v2 + 32);
  v19[3] = v6;
  static Axis.Set.vertical.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyAA4TextVAA14_PaddingLayoutVG_07WorkoutB018EffortSectionTitle33_06FC76556B25F7BE4859D6C5967358FALLVACyAM0L6ButtonVAKGA2sp3sp2sp2sCyAA7DividerVAKGAsA0G0PAAE05sceneI0yQrAA4EdgeO3SetVFQOyAL_Qo_tGGAKGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyAA4TextVAA14_PaddingLayoutVG_07WorkoutB018EffortSectionTitle33_06FC76556B25F7BE4859D6C5967358FALLVACyAM0L6ButtonVAKGA2sp3sp2sp2sCyAA7DividerVAKGAsA0G0PAAE05sceneI0yQrAA4EdgeO3SetVFQOyAL_Qo_tGGAKGMR);
  lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<Divider, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, <<opaque return type of View.scenePadding(_:)>>.0)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
  ScrollView.init(_:showsIndicators:content:)();
  v7 = static Alignment.center.getter();
  v9 = v8;
  closure #2 in EffortListView.body.getter(v19, &v26);
  v10 = v26;
  v11 = v27;
  v12 = v28;
  v13 = v29;
  v21 = v26;
  v22 = v27;
  v23 = v28;
  LOBYTE(v24) = v29;
  *(&v24 + 1) = v7;
  v25 = v9;
  v14 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA10ScrollViewVyACyAA6VStackVyAA05TupleF0VyACyAA4TextVAA14_PaddingLayoutVG_07WorkoutB018EffortSectionTitle33_06FC76556B25F7BE4859D6C5967358FALLVACyAO0M6ButtonVAMGA2ur3ur2ur2uCyAA7DividerVAMGAuA0F0PAAE05sceneJ0yQrAA4EdgeO3SetVFQOyAN_Qo_tGGAMGGAA19_BackgroundModifierVyACyAA14LinearGradientVAA024_SafeAreaRegionsIgnoringK0VGGGMd, &_s7SwiftUI15ModifiedContentVyAA10ScrollViewVyACyAA6VStackVyAA05TupleF0VyACyAA4TextVAA14_PaddingLayoutVG_07WorkoutB018EffortSectionTitle33_06FC76556B25F7BE4859D6C5967358FALLVACyAO0M6ButtonVAMGA2ur3ur2ur2uCyAA7DividerVAMGAuA0F0PAAE05sceneJ0yQrAA4EdgeO3SetVFQOyAN_Qo_tGGAMGGAA19_BackgroundModifierVyACyAA14LinearGradientVAA024_SafeAreaRegionsIgnoringK0VGGGMR) + 36);
  v15 = v24;
  *(v14 + 32) = v23;
  *(v14 + 48) = v15;
  *(v14 + 64) = v25;
  v16 = v22;
  *v14 = v21;
  *(v14 + 16) = v16;
  v26 = v10;
  v27 = v11;
  v28 = v12;
  v29 = v13;
  v30 = v7;
  v31 = v9;
  outlined init with copy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(&v21, v18, &_s7SwiftUI19_BackgroundModifierVyAA15ModifiedContentVyAA14LinearGradientVAA30_SafeAreaRegionsIgnoringLayoutVGGMd, &_s7SwiftUI19_BackgroundModifierVyAA15ModifiedContentVyAA14LinearGradientVAA30_SafeAreaRegionsIgnoringLayoutVGGMR);
  return outlined destroy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(&v26, &_s7SwiftUI19_BackgroundModifierVyAA15ModifiedContentVyAA14LinearGradientVAA30_SafeAreaRegionsIgnoringLayoutVGGMd, &_s7SwiftUI19_BackgroundModifierVyAA15ModifiedContentVyAA14LinearGradientVAA30_SafeAreaRegionsIgnoringLayoutVGGMR);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<Divider, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, <<opaque return type of View.scenePadding(_:)>>.0)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<Divider, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, <<opaque return type of View.scenePadding(_:)>>.0)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<Divider, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, <<opaque return type of View.scenePadding(_:)>>.0)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyAA4TextVAA14_PaddingLayoutVG_07WorkoutB018EffortSectionTitle33_06FC76556B25F7BE4859D6C5967358FALLVACyAM0L6ButtonVAKGA2sp3sp2sp2sCyAA7DividerVAKGAsA0G0PAAE05sceneI0yQrAA4EdgeO3SetVFQOyAL_Qo_tGGAKGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyAA4TextVAA14_PaddingLayoutVG_07WorkoutB018EffortSectionTitle33_06FC76556B25F7BE4859D6C5967358FALLVACyAM0L6ButtonVAKGA2sp3sp2sp2sCyAA7DividerVAKGAsA0G0PAAE05sceneI0yQrAA4EdgeO3SetVFQOyAL_Qo_tGGAKGMR);
    lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<Divider, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, <<opaque return type of View.scenePadding(_:)>>.0)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<Divider, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, <<opaque return type of View.scenePadding(_:)>>.0)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextVAA14_PaddingLayoutVG_07WorkoutB018EffortSectionTitle33_06FC76556B25F7BE4859D6C5967358FALLVAGyAM0L6ButtonVAKGA2sp3sp2sp2sGyAA7DividerVAKGAsA0E0PAAE05sceneI0yQrAA4EdgeO3SetVFQOyAL_Qo_tGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextVAA14_PaddingLayoutVG_07WorkoutB018EffortSectionTitle33_06FC76556B25F7BE4859D6C5967358FALLVAGyAM0L6ButtonVAKGA2sp3sp2sp2sGyAA7DividerVAKGAsA0E0PAAE05sceneI0yQrAA4EdgeO3SetVFQOyAL_Qo_tGGMR, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<Divider, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, <<opaque return type of View.scenePadding(_:)>>.0)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t closure #1 in EffortSectionTitle.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a2;
  v3 = type metadata accessor for AccessibilityTraits();
  v75 = *(v3 - 8);
  v76 = v3;
  MEMORY[0x28223BE20](v3);
  v74 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ExertionValue();
  v72 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA14_PaddingLayoutVGAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA14_PaddingLayoutVGAA31AccessibilityAttachmentModifierVGMR);
  MEMORY[0x28223BE20](v9 - 8);
  v79 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v78 = &v67 - v12;
  AppleExertionScale.exertionValue.getter();
  v13 = ExertionValue.shortDescription.getter();
  v15 = v14;
  v16 = *(v6 + 8);
  v71 = v6 + 8;
  v73 = v16;
  v16(v8, v5);
  *&v92 = v13;
  *(&v92 + 1) = v15;
  v70 = lazy protocol witness table accessor for type String and conformance String();
  v17 = Text.init<A>(_:)();
  v19 = v18;
  v21 = v20;
  v69 = type metadata accessor for EffortSectionTitle(0);
  v22 = Text.font(_:)();
  v67 = v24;
  v68 = v23;
  LOBYTE(v6) = v25;
  outlined consume of Text.Storage(v17, v19, v21 & 1);

  LOBYTE(v17) = static Edge.Set.top.getter();
  v26 = a1;
  EdgeInsets.init(_all:)();
  LOBYTE(v86) = v6 & 1;
  v83 = 0;
  *&v92 = v22;
  *(&v92 + 1) = v68;
  LOBYTE(v93) = v6 & 1;
  *(&v93 + 1) = v67;
  LOBYTE(v94) = v17;
  *(&v94 + 1) = v27;
  *v95 = v28;
  *&v95[8] = v29;
  *&v95[16] = v30;
  v95[24] = 0;
  v31 = v74;
  static AccessibilityTraits.isHeader.getter();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA14_PaddingLayoutVGMR);
  v33 = lazy protocol witness table accessor for type ModifiedContent<Text, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
  v34 = v78;
  MEMORY[0x20F30A9C0](v31, v32, v33);
  (*(v75 + 8))(v31, v76);
  v84[2] = v94;
  v85[0] = *v95;
  *(v85 + 9) = *&v95[9];
  v84[0] = v92;
  v84[1] = v93;
  outlined destroy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v84, &_s7SwiftUI15ModifiedContentVyAA4TextVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA14_PaddingLayoutVGMR);
  AppleExertionScale.exertionValue.getter();
  v35 = ExertionValue.longDescription.getter();
  v37 = v36;
  v73(v8, v72);
  *&v92 = v35;
  *(&v92 + 1) = v37;
  v38 = Text.init<A>(_:)();
  v40 = v39;
  LOBYTE(v31) = v41;
  v42 = v69;
  v43 = v26;
  v44 = Text.font(_:)();
  v75 = v45;
  v76 = v46;
  LOBYTE(v26) = v47;
  outlined consume of Text.Storage(v38, v40, v31 & 1);

  LOBYTE(v40) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v55 = v54;
  LOBYTE(v26) = v26 & 1;
  LOBYTE(v92) = v26;
  LOBYTE(v86) = 0;
  v56 = *(v43 + *(v42 + 36));
  v57 = v79;
  outlined init with copy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v34, v79, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA14_PaddingLayoutVGAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA14_PaddingLayoutVGAA31AccessibilityAttachmentModifierVGMR);
  v58 = v77;
  outlined init with copy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v57, v77, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA14_PaddingLayoutVGAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA14_PaddingLayoutVGAA31AccessibilityAttachmentModifierVGMR);
  v59 = v58 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA14_PaddingLayoutVGAA31AccessibilityAttachmentModifierVG_ACyAhA016_ForegroundStyleJ0VyAA5ColorVGGtMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA14_PaddingLayoutVGAA31AccessibilityAttachmentModifierVG_ACyAhA016_ForegroundStyleJ0VyAA5ColorVGGtMR) + 48);
  v60 = v44;
  v61 = v75;
  *&v86 = v44;
  *(&v86 + 1) = v75;
  LOBYTE(v87) = v26;
  *(&v87 + 1) = *v81;
  DWORD1(v87) = *&v81[3];
  v62 = v76;
  *(&v87 + 1) = v76;
  LOBYTE(v88) = v40;
  *(&v88 + 1) = *v80;
  DWORD1(v88) = *&v80[3];
  *(&v88 + 1) = v49;
  *&v89 = v51;
  *(&v89 + 1) = v53;
  *&v90 = v55;
  BYTE8(v90) = 0;
  HIDWORD(v90) = *(v82 + 3);
  *(&v90 + 9) = v82[0];
  v91 = v56;
  v63 = v89;
  v64 = v90;
  *(v59 + 80) = v56;
  *(v59 + 48) = v63;
  *(v59 + 64) = v64;
  v65 = v88;
  *(v59 + 16) = v87;
  *(v59 + 32) = v65;
  *v59 = v86;

  outlined init with copy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(&v86, &v92, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA14_PaddingLayoutVGAA24_ForegroundStyleModifierVyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA14_PaddingLayoutVGAA24_ForegroundStyleModifierVyAA5ColorVGGMR);
  outlined destroy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v78, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA14_PaddingLayoutVGAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA14_PaddingLayoutVGAA31AccessibilityAttachmentModifierVGMR);
  *&v92 = v60;
  *(&v92 + 1) = v61;
  LOBYTE(v93) = v26;
  *(&v93 + 1) = *v81;
  DWORD1(v93) = *&v81[3];
  *(&v93 + 1) = v62;
  LOBYTE(v94) = v40;
  *(&v94 + 1) = *v80;
  DWORD1(v94) = *&v80[3];
  *(&v94 + 1) = v49;
  *v95 = v51;
  *&v95[8] = v53;
  *&v95[16] = v55;
  v95[24] = 0;
  *&v96[3] = *(v82 + 3);
  *v96 = v82[0];
  v97 = v56;
  outlined destroy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(&v92, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA14_PaddingLayoutVGAA24_ForegroundStyleModifierVyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA14_PaddingLayoutVGAA24_ForegroundStyleModifierVyAA5ColorVGGMR);
  return outlined destroy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v79, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA14_PaddingLayoutVGAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA14_PaddingLayoutVGAA31AccessibilityAttachmentModifierVGMR);
}

BOOL EffortButton.isSelectedLevel.getter()
{
  v1 = v0;
  v2 = type metadata accessor for ExertionValue();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore18AppleExertionScaleOSgMd, &_s11WorkoutCore18AppleExertionScaleOSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v35 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v35 - v13;
  v15 = type metadata accessor for EffortButton(0);
  v16 = v0 + *(v15 + 28);
  v17 = *v16;
  v18 = *(v16 + 8);
  LOBYTE(v16) = *(v16 + 16);
  v40 = v17;
  v41 = v18;
  LOBYTE(v42) = v16;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd, &_s7SwiftUI7BindingVySbGMR);
  MEMORY[0x20F30B100](&v39, v19);
  if (LOBYTE(v39) != 1)
  {
    v37 = v2;
    v38 = v3;
    outlined init with copy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v0, v11, &_s11WorkoutCore18AppleExertionScaleOSgMd, &_s11WorkoutCore18AppleExertionScaleOSgMR);
    v23 = type metadata accessor for AppleExertionScale();
    v24 = *(v23 - 8);
    v25 = *(v24 + 48);
    if (v25(v11, 1, v23) == 1)
    {
      outlined destroy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v11, &_s11WorkoutCore18AppleExertionScaleOSgMd, &_s11WorkoutCore18AppleExertionScaleOSgMR);
    }

    else
    {
      AppleExertionScale.exertionValue.getter();
      v36 = *(v24 + 8);
      v36(v11, v23);
      v27 = ExertionValue.level.getter();
      v28 = *(v38 + 8);
      v38 += 8;
      v28(v5, v37);
      if (v27 > 0)
      {
        v29 = (v1 + *(v15 + 24));
        v30 = v29[1];
        v31 = v29[2];
        v40 = *v29;
        v41 = v30;
        v42 = v31;
        v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySdGMd, &_s7SwiftUI7BindingVySdGMR);
        MEMORY[0x20F30B100](&v39, v32);
        v33 = v39;
        outlined init with copy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v1, v8, &_s11WorkoutCore18AppleExertionScaleOSgMd, &_s11WorkoutCore18AppleExertionScaleOSgMR);
        if (v25(v8, 1, v23) == 1)
        {
          outlined destroy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v8, &_s11WorkoutCore18AppleExertionScaleOSgMd, &_s11WorkoutCore18AppleExertionScaleOSgMR);
          if (v33 != 0.0)
          {
            return 0;
          }
        }

        else
        {
          AppleExertionScale.exertionValue.getter();
          v36(v8, v23);
          v34 = ExertionValue.level.getter();
          v28(v5, v37);
          if (v33 != v34)
          {
            return 0;
          }
        }

        return 1;
      }
    }

    return 0;
  }

  outlined init with copy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v0, v14, &_s11WorkoutCore18AppleExertionScaleOSgMd, &_s11WorkoutCore18AppleExertionScaleOSgMR);
  v20 = type metadata accessor for AppleExertionScale();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v14, 1, v20) == 1)
  {
    outlined destroy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v14, &_s11WorkoutCore18AppleExertionScaleOSgMd, &_s11WorkoutCore18AppleExertionScaleOSgMR);
    return 1;
  }

  else
  {
    AppleExertionScale.exertionValue.getter();
    (*(v21 + 8))(v14, v20);
    v26 = ExertionValue.level.getter();
    (*(v3 + 8))(v5, v2);
    return v26 == 0;
  }
}

double closure #1 in EffortButton.body.getter(uint64_t a1, double a2)
{
  static Animation.default.getter();
  withAnimation<A>(_:_:)();

  return result;
}

void closure #1 in closure #1 in EffortButton.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for ExertionValue();
  v29 = *(v2 - 8);
  v30 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore18AppleExertionScaleOSgMd, &_s11WorkoutCore18AppleExertionScaleOSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v28 - v6;
  v8 = type metadata accessor for AppleExertionScale();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1;
  outlined init with copy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(a1, v7, &_s11WorkoutCore18AppleExertionScaleOSgMd, &_s11WorkoutCore18AppleExertionScaleOSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v7, &_s11WorkoutCore18AppleExertionScaleOSgMd, &_s11WorkoutCore18AppleExertionScaleOSgMR);
    v13 = type metadata accessor for EffortButton(0);
    v14 = (a1 + *(v13 + 24));
    v15 = v14[1];
    v16 = v14[2];
    v32 = *v14;
    v33 = v15;
    v34 = v16;
    v31 = 0.0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySdGMd, &_s7SwiftUI7BindingVySdGMR);
    Binding.wrappedValue.setter();
    v17 = (a1 + *(v13 + 28));
    v18 = *v17;
    v19 = v17[1];
    LOBYTE(v17) = *(v17 + 16);
    v32 = v18;
    v33 = v19;
    LOBYTE(v34) = v17;
    LOBYTE(v31) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd, &_s7SwiftUI7BindingVySbGMR);
    Binding.wrappedValue.setter();
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    AppleExertionScale.exertionValue.getter();
    v20 = ExertionValue.level.getter();
    (*(v29 + 8))(v4, v30);
    v21 = type metadata accessor for EffortButton(0);
    v22 = (v12 + *(v21 + 24));
    v23 = v22[1];
    v24 = v22[2];
    v32 = *v22;
    v33 = v23;
    v34 = v24;
    v31 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySdGMd, &_s7SwiftUI7BindingVySdGMR);
    Binding.wrappedValue.setter();
    v25 = v12 + *(v21 + 28);
    v26 = *v25;
    v27 = *(v25 + 8);
    LOBYTE(v25) = *(v25 + 16);
    v32 = v26;
    v33 = v27;
    LOBYTE(v34) = v25;
    LOBYTE(v31) = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd, &_s7SwiftUI7BindingVySbGMR);
    Binding.wrappedValue.setter();
    (*(v9 + 8))(v11, v8);
  }
}

uint64_t closure #2 in EffortButton.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyACyAA5GroupVyAA012_ConditionalD0VyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGGAA023AccessibilityAttachmentN0VGAA17_FlipForRTLEffectVGACyAmUGGGARGAOyAA19SymbolRenderingModeVSgGG_ACyAA4TextVAA14_PaddingLayoutVGAA6SpacerVAKyACyAmOyAA4FontVSgGGACyA18_AA07_HiddenN0VGGtGGA10_GA17_GMd, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyACyAA5GroupVyAA012_ConditionalD0VyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGGAA023AccessibilityAttachmentN0VGAA17_FlipForRTLEffectVGACyAmUGGGARGAOyAA19SymbolRenderingModeVSgGG_ACyAA4TextVAA14_PaddingLayoutVGAA6SpacerVAKyACyAmOyAA4FontVSgGGACyA18_AA07_HiddenN0VGGtGGA10_GA17_GMR);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v41 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyACyACyAA5GroupVyAA012_ConditionalD0VyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGGAA023AccessibilityAttachmentN0VGAA17_FlipForRTLEffectVGACyAmUGGGARGAOyAA19SymbolRenderingModeVSgGG_ACyAA4TextVAA14_PaddingLayoutVGAA6SpacerVAKyACyAmOyAA4FontVSgGGACyA18_AA07_HiddenN0VGGtGGA10_GA17_GAA010_FlexFrameZ0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyACyACyAA5GroupVyAA012_ConditionalD0VyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGGAA023AccessibilityAttachmentN0VGAA17_FlipForRTLEffectVGACyAmUGGGARGAOyAA19SymbolRenderingModeVSgGG_ACyAA4TextVAA14_PaddingLayoutVGAA6SpacerVAKyACyAmOyAA4FontVSgGGACyA18_AA07_HiddenN0VGGtGGA10_GA17_GAA010_FlexFrameZ0VGMR);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = &v41 - v9;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA6HStackVyAA9TupleViewVyACyACyAA5GroupVyAA012_ConditionalD0VyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGGAA023AccessibilityAttachmentN0VGAA17_FlipForRTLEffectVGACyAmUGGGARGAOyAA19SymbolRenderingModeVSgGG_ACyAA4TextVAA14_PaddingLayoutVGAA6SpacerVAKyACyAmOyAA4FontVSgGGACyA18_AA07_HiddenN0VGGtGGA10_GA17_GAA010_FlexFrameZ0VGA28_GMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6HStackVyAA9TupleViewVyACyACyAA5GroupVyAA012_ConditionalD0VyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGGAA023AccessibilityAttachmentN0VGAA17_FlipForRTLEffectVGACyAmUGGGARGAOyAA19SymbolRenderingModeVSgGG_ACyAA4TextVAA14_PaddingLayoutVGAA6SpacerVAKyACyAmOyAA4FontVSgGGACyA18_AA07_HiddenN0VGGtGGA10_GA17_GAA010_FlexFrameZ0VGA28_GMR);
  MEMORY[0x28223BE20](v41);
  v12 = &v41 - v11;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6HStackVyAA9TupleViewVyACyACyAA5GroupVyAA012_ConditionalD0VyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGGAA023AccessibilityAttachmentN0VGAA17_FlipForRTLEffectVGACyAmUGGGARGAOyAA19SymbolRenderingModeVSgGG_ACyAA4TextVAA14_PaddingLayoutVGAA6SpacerVAKyACyAmOyAA4FontVSgGGACyA18_AA07_HiddenN0VGGtGGA10_GA17_GAA010_FlexFrameZ0VGA28_GAA016_BackgroundStyleN0VyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6HStackVyAA9TupleViewVyACyACyAA5GroupVyAA012_ConditionalD0VyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGGAA023AccessibilityAttachmentN0VGAA17_FlipForRTLEffectVGACyAmUGGGARGAOyAA19SymbolRenderingModeVSgGG_ACyAA4TextVAA14_PaddingLayoutVGAA6SpacerVAKyACyAmOyAA4FontVSgGGACyA18_AA07_HiddenN0VGGtGGA10_GA17_GAA010_FlexFrameZ0VGA28_GAA016_BackgroundStyleN0VyAA5ColorVGGMR);
  MEMORY[0x28223BE20](v43);
  v14 = &v41 - v13;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA6HStackVyAA9TupleViewVyACyACyAA5GroupVyAA012_ConditionalD0VyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGGAA023AccessibilityAttachmentN0VGAA17_FlipForRTLEffectVGACyAmUGGGARGAOyAA19SymbolRenderingModeVSgGG_ACyAA4TextVAA14_PaddingLayoutVGAA6SpacerVAKyACyAmOyAA4FontVSgGGACyA18_AA07_HiddenN0VGGtGGA10_GA17_GAA010_FlexFrameZ0VGA28_GAA016_BackgroundStyleN0VyAA5ColorVGGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA6HStackVyAA9TupleViewVyACyACyAA5GroupVyAA012_ConditionalD0VyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGGAA023AccessibilityAttachmentN0VGAA17_FlipForRTLEffectVGACyAmUGGGARGAOyAA19SymbolRenderingModeVSgGG_ACyAA4TextVAA14_PaddingLayoutVGAA6SpacerVAKyACyAmOyAA4FontVSgGGACyA18_AA07_HiddenN0VGGtGGA10_GA17_GAA010_FlexFrameZ0VGA28_GAA016_BackgroundStyleN0VyAA5ColorVGGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGMR);
  MEMORY[0x28223BE20](v42);
  v44 = &v41 - v15;
  *v6 = static VerticalAlignment.center.getter();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAA5GroupVyAA012_ConditionalJ0VyAKyAKyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGGAA023AccessibilityAttachmentQ0VGAA17_FlipForRTLEffectVGAKyAqYGGGAVGASyAA19SymbolRenderingModeVSgGG_AKyAA4TextVAA08_PaddingG0VGAA6SpacerVAOyAKyAqSyAA4FontVSgGGAKyA22_AA07_HiddenQ0VGGtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAA5GroupVyAA012_ConditionalJ0VyAKyAKyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGGAA023AccessibilityAttachmentQ0VGAA17_FlipForRTLEffectVGAKyAqYGGGAVGASyAA19SymbolRenderingModeVSgGG_AKyAA4TextVAA08_PaddingG0VGAA6SpacerVAOyAKyAqSyAA4FontVSgGGAKyA22_AA07_HiddenQ0VGGtGGMR);
  closure #1 in closure #2 in EffortButton.body.getter(a1, &v6[*(v16 + 44)]);
  v17 = static Edge.Set.horizontal.getter();
  v18 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyACyAA5GroupVyAA012_ConditionalD0VyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGGAA023AccessibilityAttachmentN0VGAA17_FlipForRTLEffectVGACyAmUGGGARGAOyAA19SymbolRenderingModeVSgGG_ACyAA4TextVAA14_PaddingLayoutVGAA6SpacerVAKyACyAmOyAA4FontVSgGGACyA18_AA07_HiddenN0VGGtGGA10_GMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyACyAA5GroupVyAA012_ConditionalD0VyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGGAA023AccessibilityAttachmentN0VGAA17_FlipForRTLEffectVGACyAmUGGGARGAOyAA19SymbolRenderingModeVSgGG_ACyAA4TextVAA14_PaddingLayoutVGAA6SpacerVAKyACyAmOyAA4FontVSgGGACyA18_AA07_HiddenN0VGGtGGA10_GMR) + 36)];
  *v18 = v17;
  *(v18 + 8) = 0u;
  *(v18 + 24) = 0u;
  v18[40] = 1;
  v19 = type metadata accessor for EffortButton(0);
  v20 = *(a1 + v19[8]);
  KeyPath = swift_getKeyPath();
  v22 = &v6[*(v4 + 44)];
  *v22 = KeyPath;
  v22[1] = v20;

  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  outlined init with take of ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, _FlipForRTLEffect>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, ModifiedContent<Text, _PaddingLayout>, Spacer, _ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _HiddenModifier>>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>(v6, v10, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyACyAA5GroupVyAA012_ConditionalD0VyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGGAA023AccessibilityAttachmentN0VGAA17_FlipForRTLEffectVGACyAmUGGGARGAOyAA19SymbolRenderingModeVSgGG_ACyAA4TextVAA14_PaddingLayoutVGAA6SpacerVAKyACyAmOyAA4FontVSgGGACyA18_AA07_HiddenN0VGGtGGA10_GA17_GMd, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyACyAA5GroupVyAA012_ConditionalD0VyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGGAA023AccessibilityAttachmentN0VGAA17_FlipForRTLEffectVGACyAmUGGGARGAOyAA19SymbolRenderingModeVSgGG_ACyAA4TextVAA14_PaddingLayoutVGAA6SpacerVAKyACyAmOyAA4FontVSgGGACyA18_AA07_HiddenN0VGGtGGA10_GA17_GMR);
  v23 = &v10[*(v8 + 44)];
  v24 = v51;
  *(v23 + 4) = v50;
  *(v23 + 5) = v24;
  *(v23 + 6) = v52;
  v25 = v47;
  *v23 = v46;
  *(v23 + 1) = v25;
  v26 = v49;
  *(v23 + 2) = v48;
  *(v23 + 3) = v26;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  outlined init with take of ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, _FlipForRTLEffect>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, ModifiedContent<Text, _PaddingLayout>, Spacer, _ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _HiddenModifier>>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>(v10, v12, &_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyACyACyAA5GroupVyAA012_ConditionalD0VyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGGAA023AccessibilityAttachmentN0VGAA17_FlipForRTLEffectVGACyAmUGGGARGAOyAA19SymbolRenderingModeVSgGG_ACyAA4TextVAA14_PaddingLayoutVGAA6SpacerVAKyACyAmOyAA4FontVSgGGACyA18_AA07_HiddenN0VGGtGGA10_GA17_GAA010_FlexFrameZ0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyACyACyAA5GroupVyAA012_ConditionalD0VyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGGAA023AccessibilityAttachmentN0VGAA17_FlipForRTLEffectVGACyAmUGGGARGAOyAA19SymbolRenderingModeVSgGG_ACyAA4TextVAA14_PaddingLayoutVGAA6SpacerVAKyACyAmOyAA4FontVSgGGACyA18_AA07_HiddenN0VGGtGGA10_GA17_GAA010_FlexFrameZ0VGMR);
  v27 = &v12[*(v41 + 36)];
  v28 = v58;
  *(v27 + 4) = v57;
  *(v27 + 5) = v28;
  *(v27 + 6) = v59;
  v29 = v54;
  *v27 = v53;
  *(v27 + 1) = v29;
  v30 = v56;
  *(v27 + 2) = v55;
  *(v27 + 3) = v30;
  static Color.white.getter();
  v31 = Color.opacity(_:)();

  LOBYTE(v6) = static Edge.Set.all.getter();
  outlined init with take of ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, _FlipForRTLEffect>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, ModifiedContent<Text, _PaddingLayout>, Spacer, _ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _HiddenModifier>>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>(v12, v14, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6HStackVyAA9TupleViewVyACyACyAA5GroupVyAA012_ConditionalD0VyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGGAA023AccessibilityAttachmentN0VGAA17_FlipForRTLEffectVGACyAmUGGGARGAOyAA19SymbolRenderingModeVSgGG_ACyAA4TextVAA14_PaddingLayoutVGAA6SpacerVAKyACyAmOyAA4FontVSgGGACyA18_AA07_HiddenN0VGGtGGA10_GA17_GAA010_FlexFrameZ0VGA28_GMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6HStackVyAA9TupleViewVyACyACyAA5GroupVyAA012_ConditionalD0VyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGGAA023AccessibilityAttachmentN0VGAA17_FlipForRTLEffectVGACyAmUGGGARGAOyAA19SymbolRenderingModeVSgGG_ACyAA4TextVAA14_PaddingLayoutVGAA6SpacerVAKyACyAmOyAA4FontVSgGGACyA18_AA07_HiddenN0VGGtGGA10_GA17_GAA010_FlexFrameZ0VGA28_GMR);
  v32 = &v14[*(v43 + 36)];
  *v32 = v31;
  v32[8] = v6;
  v33 = *(a1 + v19[11]);
  v34 = *(a1 + v19[5]);
  v35 = v44;
  outlined init with take of ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, _FlipForRTLEffect>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, ModifiedContent<Text, _PaddingLayout>, Spacer, _ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _HiddenModifier>>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>(v14, v44, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6HStackVyAA9TupleViewVyACyACyAA5GroupVyAA012_ConditionalD0VyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGGAA023AccessibilityAttachmentN0VGAA17_FlipForRTLEffectVGACyAmUGGGARGAOyAA19SymbolRenderingModeVSgGG_ACyAA4TextVAA14_PaddingLayoutVGAA6SpacerVAKyACyAmOyAA4FontVSgGGACyA18_AA07_HiddenN0VGGtGGA10_GA17_GAA010_FlexFrameZ0VGA28_GAA016_BackgroundStyleN0VyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6HStackVyAA9TupleViewVyACyACyAA5GroupVyAA012_ConditionalD0VyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGGAA023AccessibilityAttachmentN0VGAA17_FlipForRTLEffectVGACyAmUGGGARGAOyAA19SymbolRenderingModeVSgGG_ACyAA4TextVAA14_PaddingLayoutVGAA6SpacerVAKyACyAmOyAA4FontVSgGGACyA18_AA07_HiddenN0VGGtGGA10_GA17_GAA010_FlexFrameZ0VGA28_GAA016_BackgroundStyleN0VyAA5ColorVGGMR);
  v36 = v35 + *(v42 + 36);
  *v36 = v33;
  *(v36 + 8) = v34;
  *(v36 + 16) = 256;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA6HStackVyAA9TupleViewVyACyACyAA5GroupVyAA012_ConditionalD0VyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGGAA023AccessibilityAttachmentN0VGAA17_FlipForRTLEffectVGACyAmUGGGARGAOyAA19SymbolRenderingModeVSgGG_ACyAA4TextVAA14_PaddingLayoutVGAA6SpacerVAKyACyAmOyAA4FontVSgGGACyA18_AA07_HiddenN0VGGtGGA10_GA17_GAA010_FlexFrameZ0VGA28_GAA016_BackgroundStyleN0VyAA5ColorVGGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA01_d9ShapeKindN0VyA41_GGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA6HStackVyAA9TupleViewVyACyACyAA5GroupVyAA012_ConditionalD0VyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGGAA023AccessibilityAttachmentN0VGAA17_FlipForRTLEffectVGACyAmUGGGARGAOyAA19SymbolRenderingModeVSgGG_ACyAA4TextVAA14_PaddingLayoutVGAA6SpacerVAKyACyAmOyAA4FontVSgGGACyA18_AA07_HiddenN0VGGtGGA10_GA17_GAA010_FlexFrameZ0VGA28_GAA016_BackgroundStyleN0VyAA5ColorVGGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA01_d9ShapeKindN0VyA41_GGMR);
  v38 = v45;
  v39 = v45 + *(v37 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI25_ContentShapeKindModifierVy07WorkoutB013RoundedCornerVGMd, &_s7SwiftUI25_ContentShapeKindModifierVy07WorkoutB013RoundedCornerVGMR);
  static ContentShapeKinds.accessibility.getter();
  *v39 = v33;
  *(v39 + 8) = v34;
  *(v39 + 16) = 0;
  return outlined init with take of ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, _FlipForRTLEffect>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, ModifiedContent<Text, _PaddingLayout>, Spacer, _ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _HiddenModifier>>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>(v35, v38, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA6HStackVyAA9TupleViewVyACyACyAA5GroupVyAA012_ConditionalD0VyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGGAA023AccessibilityAttachmentN0VGAA17_FlipForRTLEffectVGACyAmUGGGARGAOyAA19SymbolRenderingModeVSgGG_ACyAA4TextVAA14_PaddingLayoutVGAA6SpacerVAKyACyAmOyAA4FontVSgGGACyA18_AA07_HiddenN0VGGtGGA10_GA17_GAA010_FlexFrameZ0VGA28_GAA016_BackgroundStyleN0VyAA5ColorVGGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA6HStackVyAA9TupleViewVyACyACyAA5GroupVyAA012_ConditionalD0VyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGGAA023AccessibilityAttachmentN0VGAA17_FlipForRTLEffectVGACyAmUGGGARGAOyAA19SymbolRenderingModeVSgGG_ACyAA4TextVAA14_PaddingLayoutVGAA6SpacerVAKyACyAmOyAA4FontVSgGGACyA18_AA07_HiddenN0VGGtGGA10_GA17_GAA010_FlexFrameZ0VGA28_GAA016_BackgroundStyleN0VyAA5ColorVGGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGMR);
}

uint64_t closure #1 in closure #2 in EffortButton.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v3 = type metadata accessor for ExertionValue();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &countAndFlagsBits - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore18AppleExertionScaleOSgMd, &_s11WorkoutCore18AppleExertionScaleOSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &countAndFlagsBits - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA012_ConditionalD0VyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA023AccessibilityAttachmentK0VGAA17_FlipForRTLEffectVGACyAiQGGGANGAKyAA19SymbolRenderingModeVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA012_ConditionalD0VyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA023AccessibilityAttachmentK0VGAA17_FlipForRTLEffectVGACyAiQGGGANGAKyAA19SymbolRenderingModeVSgGGMR);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v59 = &countAndFlagsBits - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &countAndFlagsBits - v14;
  closure #1 in closure #1 in closure #2 in EffortButton.body.getter(a1, &countAndFlagsBits - v14);
  v16 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0VyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA023AccessibilityAttachmentK0VGAA17_FlipForRTLEffectVGACyAiQGGGANGMd, &_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0VyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA023AccessibilityAttachmentK0VGAA17_FlipForRTLEffectVGACyAiQGGGANGMR) + 36)];
  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMR) + 28);
  v18 = *MEMORY[0x277CE1048];
  v19 = type metadata accessor for Image.Scale();
  (*(*(v19 - 8) + 104))(v16 + v17, v18, v19);
  *v16 = swift_getKeyPath();
  v20 = v15;
  v21 = &v15[*(v11 + 44)];
  v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGMR) + 28);
  static SymbolRenderingMode.hierarchical.getter();
  v23 = type metadata accessor for SymbolRenderingMode();
  (*(*(v23 - 8) + 56))(v21 + v22, 0, 1, v23);
  *v21 = swift_getKeyPath();
  outlined init with copy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(a1, v9, &_s11WorkoutCore18AppleExertionScaleOSgMd, &_s11WorkoutCore18AppleExertionScaleOSgMR);
  v24 = type metadata accessor for AppleExertionScale();
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v9, 1, v24) == 1)
  {
    outlined destroy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v9, &_s11WorkoutCore18AppleExertionScaleOSgMd, &_s11WorkoutCore18AppleExertionScaleOSgMR);
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v26 = WorkoutUIBundle.super.isa;
    v77._object = 0xE000000000000000;
    v27._countAndFlagsBits = 0x4646455F50494B53;
    v27._object = 0xEB0000000054524FLL;
    v28.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v28.value._object = 0xEB00000000656C62;
    v29._countAndFlagsBits = 0;
    v29._object = 0xE000000000000000;
    v77._countAndFlagsBits = 0;
    v30 = NSLocalizedString(_:tableName:bundle:value:comment:)(v27, v28, v26, v29, v77);
    countAndFlagsBits = v30._countAndFlagsBits;
    object = v30._object;
  }

  else
  {
    AppleExertionScale.exertionValue.getter();
    (*(v25 + 8))(v9, v24);
    countAndFlagsBits = ExertionValue.shortDescription.getter();
    object = v31;
    (*(v4 + 8))(v6, v3);
  }

  v57 = static Edge.Set.vertical.getter();
  v76 = 0;
  v73 = 1;
  v32 = EffortButton.isSelectedLevel.getter();
  v33 = Image.init(systemName:)();
  v34 = *(a1 + *(type metadata accessor for EffortButton(0) + 36));
  KeyPath = swift_getKeyPath();
  *&v61 = v33;
  *(&v61 + 1) = KeyPath;
  *&v62 = v34;
  BYTE8(v62) = !v32;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA07_HiddenI0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA07_HiddenI0VGMR);
  lazy protocol witness table accessor for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _HiddenModifier> and conformance <> ModifiedContent<A, B>();
  _ConditionalContent<>.init(storage:)();
  v36 = v64;
  v37 = v65;
  v38 = v66;
  v39 = v67;
  v40 = v20;
  v41 = v20;
  v42 = v59;
  outlined init with copy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v41, v59, &_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA012_ConditionalD0VyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA023AccessibilityAttachmentK0VGAA17_FlipForRTLEffectVGACyAiQGGGANGAKyAA19SymbolRenderingModeVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA012_ConditionalD0VyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA023AccessibilityAttachmentK0VGAA17_FlipForRTLEffectVGACyAiQGGGANGAKyAA19SymbolRenderingModeVSgGGMR);
  v43 = v60;
  outlined init with copy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v42, v60, &_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA012_ConditionalD0VyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA023AccessibilityAttachmentK0VGAA17_FlipForRTLEffectVGACyAiQGGGANGAKyAA19SymbolRenderingModeVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA012_ConditionalD0VyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA023AccessibilityAttachmentK0VGAA17_FlipForRTLEffectVGACyAiQGGGANGAKyAA19SymbolRenderingModeVSgGGMR);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA012_ConditionalD0VyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA023AccessibilityAttachmentK0VGAA17_FlipForRTLEffectVGACyAiQGGGANGAKyAA19SymbolRenderingModeVSgGG_ACyAA4TextVAA14_PaddingLayoutVGAA6SpacerVAGyACyAiKyAA4FontVSgGGACyA14_AA07_HiddenK0VGGtMd, &_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA012_ConditionalD0VyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA023AccessibilityAttachmentK0VGAA17_FlipForRTLEffectVGACyAiQGGGANGAKyAA19SymbolRenderingModeVSgGG_ACyAA4TextVAA14_PaddingLayoutVGAA6SpacerVAGyACyAiKyAA4FontVSgGGACyA14_AA07_HiddenK0VGGtMR);
  v45 = (v43 + v44[12]);
  v46 = countAndFlagsBits;
  *&v61 = countAndFlagsBits;
  v47 = object;
  *(&v61 + 1) = object;
  LOBYTE(v62) = 0;
  *(&v62 + 1) = *v75;
  DWORD1(v62) = *&v75[3];
  *(&v62 + 1) = MEMORY[0x277D84F90];
  v48 = v57;
  v63[0] = v57;
  *&v63[1] = *v74;
  *&v63[4] = *&v74[3];
  memset(&v63[8], 0, 32);
  v63[40] = 1;
  v49 = v62;
  *v45 = v61;
  v45[1] = v49;
  v50 = *&v63[16];
  v45[2] = *v63;
  v45[3] = v50;
  *(v45 + 57) = *&v63[25];
  v51 = v43 + v44[16];
  *v51 = 0;
  *(v51 + 8) = 1;
  v52 = v43 + v44[20];
  v53 = v36;
  *v52 = v36;
  *(v52 + 8) = v37;
  *(v52 + 16) = v38;
  *(v52 + 24) = v39;
  v54 = v46;
  outlined init with copy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(&v61, &v64, &_s7SwiftUI15ModifiedContentVyAA4TextVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA14_PaddingLayoutVGMR);
  outlined copy of _ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _HiddenModifier>>.Storage(v53, v37, v38);
  outlined destroy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v40, &_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA012_ConditionalD0VyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA023AccessibilityAttachmentK0VGAA17_FlipForRTLEffectVGACyAiQGGGANGAKyAA19SymbolRenderingModeVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA012_ConditionalD0VyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA023AccessibilityAttachmentK0VGAA17_FlipForRTLEffectVGACyAiQGGGANGAKyAA19SymbolRenderingModeVSgGGMR);
  outlined consume of _ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _HiddenModifier>>.Storage(v53, v37, v38);
  v64 = v54;
  v65 = v47;
  LOBYTE(v66) = 0;
  *(&v66 + 1) = *v75;
  HIDWORD(v66) = *&v75[3];
  v67 = MEMORY[0x277D84F90];
  v68 = v48;
  *v69 = *v74;
  *&v69[3] = *&v74[3];
  v70 = 0u;
  v71 = 0u;
  v72 = 1;
  outlined destroy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(&v64, &_s7SwiftUI15ModifiedContentVyAA4TextVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA14_PaddingLayoutVGMR);
  return outlined destroy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v42, &_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA012_ConditionalD0VyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA023AccessibilityAttachmentK0VGAA17_FlipForRTLEffectVGACyAiQGGGANGAKyAA19SymbolRenderingModeVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA012_ConditionalD0VyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA023AccessibilityAttachmentK0VGAA17_FlipForRTLEffectVGACyAiQGGGANGAKyAA19SymbolRenderingModeVSgGGMR);
}

uint64_t closure #1 in closure #1 in closure #2 in EffortButton.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA31AccessibilityAttachmentModifierVGMR);
  MEMORY[0x28223BE20](v56);
  v50 = &v43 - v3;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA023AccessibilityAttachmentK0VGAA17_FlipForRTLEffectVGAGyAiQG_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA023AccessibilityAttachmentK0VGAA17_FlipForRTLEffectVGAGyAiQG_GMR);
  MEMORY[0x28223BE20](v54);
  v55 = &v43 - v4;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMd, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMR);
  MEMORY[0x28223BE20](v52);
  v6 = (&v43 - v5);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA023AccessibilityAttachmentI0VGAA17_FlipForRTLEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA023AccessibilityAttachmentI0VGAA17_FlipForRTLEffectVGMR);
  MEMORY[0x28223BE20](v53);
  v8 = &v43 - v7;
  v9 = type metadata accessor for ExertionValue();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore18AppleExertionScaleOSgMd, &_s11WorkoutCore18AppleExertionScaleOSgMR);
  MEMORY[0x28223BE20](v13 - 8);
  v48 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v43 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v43 - v19;
  v49 = a1;
  outlined init with copy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(a1, &v43 - v19, &_s11WorkoutCore18AppleExertionScaleOSgMd, &_s11WorkoutCore18AppleExertionScaleOSgMR);
  v21 = type metadata accessor for AppleExertionScale();
  v22 = *(v21 - 8);
  v51 = *(v22 + 48);
  if (v51(v20, 1, v21) == 1)
  {
    outlined destroy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v20, &_s11WorkoutCore18AppleExertionScaleOSgMd, &_s11WorkoutCore18AppleExertionScaleOSgMR);
LABEL_6:
    v28 = Image.init(_internalSystemName:)();
    v29 = (v6 + *(v52 + 36));
    v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMR) + 28);
    v31 = *MEMORY[0x277CE1058];
    v32 = type metadata accessor for Image.Scale();
    (*(*(v32 - 8) + 104))(v29 + v30, v31, v32);
    *v29 = swift_getKeyPath();
    *v6 = v28;
    lazy protocol witness table accessor for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>();
    View.accessibilityHidden(_:)();
    outlined destroy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v6, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMd, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMR);
    v8[*(v53 + 36)] = 1;
    outlined init with copy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v8, v55, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA023AccessibilityAttachmentI0VGAA17_FlipForRTLEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA023AccessibilityAttachmentI0VGAA17_FlipForRTLEffectVGMR);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, _FlipForRTLEffect> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<Image, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    v33 = v8;
    v34 = &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA023AccessibilityAttachmentI0VGAA17_FlipForRTLEffectVGMd;
    v35 = &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA023AccessibilityAttachmentI0VGAA17_FlipForRTLEffectVGMR;
    return outlined destroy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v33, v34, v35);
  }

  AppleExertionScale.exertionValue.getter();
  v45 = *(v22 + 8);
  v45(v20, v21);
  v23 = ExertionValue.level.getter();
  v24 = *(v10 + 8);
  v46 = v12;
  v47 = v9;
  v44 = v24;
  v24(v12, v9);
  if (!v23)
  {
    goto LABEL_6;
  }

  v59 = 0;
  v60 = 0xE000000000000000;
  v25 = v49;
  outlined init with copy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v49, v17, &_s11WorkoutCore18AppleExertionScaleOSgMd, &_s11WorkoutCore18AppleExertionScaleOSgMR);
  if (v51(v17, 1, v21) == 1)
  {
    outlined destroy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v17, &_s11WorkoutCore18AppleExertionScaleOSgMd, &_s11WorkoutCore18AppleExertionScaleOSgMR);
    v26 = 0;
    v27 = v47;
  }

  else
  {
    v36 = v46;
    AppleExertionScale.exertionValue.getter();
    v45(v17, v21);
    v26 = ExertionValue.level.getter();
    v27 = v47;
    v44(v36, v47);
  }

  v37 = v48;
  v58 = v26;
  v38 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x20F30BC00](v38);

  MEMORY[0x20F30BC00](0x2E656C637269632ELL, 0xEC0000006C6C6966);
  v58 = Image.init(systemName:)();
  outlined init with copy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v25, v37, &_s11WorkoutCore18AppleExertionScaleOSgMd, &_s11WorkoutCore18AppleExertionScaleOSgMR);
  if (v51(v37, 1, v21) == 1)
  {
    outlined destroy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v37, &_s11WorkoutCore18AppleExertionScaleOSgMd, &_s11WorkoutCore18AppleExertionScaleOSgMR);
  }

  else
  {
    v39 = v46;
    AppleExertionScale.exertionValue.getter();
    v45(v37, v21);
    ExertionValue.level.getter();
    v44(v39, v27);
  }

  v59 = Int.localizedString.getter();
  v60 = v40;
  lazy protocol witness table accessor for type String and conformance String();
  v41 = v50;
  View.accessibilityLabel<A>(_:)();

  outlined init with copy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v41, v55, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA31AccessibilityAttachmentModifierVGMR);
  swift_storeEnumTagMultiPayload();
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, _FlipForRTLEffect> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type ModifiedContent<Image, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
  _ConditionalContent<>.init(storage:)();
  v33 = v41;
  v34 = &_s7SwiftUI15ModifiedContentVyAA5ImageVAA31AccessibilityAttachmentModifierVGMd;
  v35 = &_s7SwiftUI15ModifiedContentVyAA5ImageVAA31AccessibilityAttachmentModifierVGMR;
  return outlined destroy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(v33, v34, v35);
}

uint64_t protocol witness for View.body.getter in conformance EffortButton@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18[1] = a2;
  v4 = type metadata accessor for PlainButtonStyle();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAEyAEyAEyAEyAA6HStackVyAA9TupleViewVyAEyAEyAA5GroupVyAA012_ConditionalE0VyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAO5ScaleOGGAA023AccessibilityAttachmentO0VGAA17_FlipForRTLEffectVGAEyAoWGGGATGAQyAA19SymbolRenderingModeVSgGG_AEyAA4TextVAA14_PaddingLayoutVGAA6SpacerVAMyAEyAoQyAA4FontVSgGGAEyA20_AA07_HiddenO0VGGtGGA12_GA19_GAA16_FlexFrameLayoutVGA30_GAA016_BackgroundStyleO0VyAA5ColorVGGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA01_e9ShapeKindO0VyA43_GGGMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAEyAEyAEyAEyAA6HStackVyAA9TupleViewVyAEyAEyAA5GroupVyAA012_ConditionalE0VyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAO5ScaleOGGAA023AccessibilityAttachmentO0VGAA17_FlipForRTLEffectVGAEyAoWGGGATGAQyAA19SymbolRenderingModeVSgGG_AEyAA4TextVAA14_PaddingLayoutVGAA6SpacerVAMyAEyAoQyAA4FontVSgGGAEyA20_AA07_HiddenO0VGGtGGA12_GA19_GAA16_FlexFrameLayoutVGA30_GAA016_BackgroundStyleO0VyAA5ColorVGGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA01_e9ShapeKindO0VyA43_GGGMR);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v18 - v13;
  outlined init with copy of EffortSectionTitle(v2, v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for EffortButton);
  v15 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v16 = swift_allocObject();
  outlined init with take of EffortButton(v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  v19 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA6HStackVyAA9TupleViewVyACyACyAA5GroupVyAA012_ConditionalD0VyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGGAA023AccessibilityAttachmentN0VGAA17_FlipForRTLEffectVGACyAmUGGGARGAOyAA19SymbolRenderingModeVSgGG_ACyAA4TextVAA14_PaddingLayoutVGAA6SpacerVAKyACyAmOyAA4FontVSgGGACyA18_AA07_HiddenN0VGGtGGA10_GA17_GAA010_FlexFrameZ0VGA28_GAA016_BackgroundStyleN0VyAA5ColorVGGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA01_d9ShapeKindN0VyA41_GGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA6HStackVyAA9TupleViewVyACyACyAA5GroupVyAA012_ConditionalD0VyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGGAA023AccessibilityAttachmentN0VGAA17_FlipForRTLEffectVGACyAmUGGGARGAOyAA19SymbolRenderingModeVSgGG_ACyAA4TextVAA14_PaddingLayoutVGAA6SpacerVAKyACyAmOyAA4FontVSgGGACyA18_AA07_HiddenN0VGGtGGA10_GA17_GAA010_FlexFrameZ0VGA28_GAA016_BackgroundStyleN0VyAA5ColorVGGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA01_d9ShapeKindN0VyA41_GGMR);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, _FlipForRTLEffect>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, ModifiedContent<Text, _PaddingLayout>, Spacer, _ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _HiddenModifier>>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FlexFrameLayout>, _FlexFrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedCorner>>, _ContentShapeKindModifier<RoundedCorner>> and conformance <> ModifiedContent<A, B>();
  Button.init(action:label:)();
  PlainButtonStyle.init()();
  lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<Divider, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, <<opaque return type of View.scenePadding(_:)>>.0)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type Button<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, _FlipForRTLEffect>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, ModifiedContent<Text, _PaddingLayout>, Spacer, _ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _HiddenModifier>>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FlexFrameLayout>, _FlexFrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedCorner>>, _ContentShapeKindModifier<RoundedCorner>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAEyAEyAEyAEyAA6HStackVyAA9TupleViewVyAEyAEyAA5GroupVyAA012_ConditionalE0VyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAO5ScaleOGGAA023AccessibilityAttachmentO0VGAA17_FlipForRTLEffectVGAEyAoWGGGATGAQyAA19SymbolRenderingModeVSgGG_AEyAA4TextVAA14_PaddingLayoutVGAA6SpacerVAMyAEyAoQyAA4FontVSgGGAEyA20_AA07_HiddenO0VGGtGGA12_GA19_GAA16_FlexFrameLayoutVGA30_GAA016_BackgroundStyleO0VyAA5ColorVGGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA01_e9ShapeKindO0VyA43_GGGMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAEyAEyAEyAEyAA6HStackVyAA9TupleViewVyAEyAEyAA5GroupVyAA012_ConditionalE0VyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAO5ScaleOGGAA023AccessibilityAttachmentO0VGAA17_FlipForRTLEffectVGAEyAoWGGGATGAQyAA19SymbolRenderingModeVSgGG_AEyAA4TextVAA14_PaddingLayoutVGAA6SpacerVAMyAEyAoQyAA4FontVSgGGAEyA20_AA07_HiddenO0VGGtGGA12_GA19_GAA16_FlexFrameLayoutVGA30_GAA016_BackgroundStyleO0VyAA5ColorVGGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA01_e9ShapeKindO0VyA43_GGGMR, MEMORY[0x277CDF028]);
  _s7SwiftUI16PlainButtonStyleVAcA09PrimitivedE0AAWlTm_4(&lazy protocol witness table cache variable for type PlainButtonStyle and conformance PlainButtonStyle, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  View.buttonStyle<A>(_:)();
  (*(v5 + 8))(v7, v4);
  return (*(v12 + 8))(v14, v11);
}

uint64_t type metadata accessor for EffortSectionTitle(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined destroy of EffortSectionTitle(uint64_t a1)
{
  v2 = type metadata accessor for EffortSectionTitle(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double outlined copy of UnitsSettingsSectionView<UnitSettingsEnergyUnit>?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }

  return result;
}

void type metadata completion function for EffortButton(uint64_t a1)
{
  type metadata accessor for AppleExertionScale?(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UIRectCorner(319);
    if (v2 <= 0x3F)
    {
      _s7SwiftUI7BindingVySdGMaTm_0(319, &lazy cache variable for type metadata for Binding<Double>, MEMORY[0x277D839F8]);
      if (v3 <= 0x3F)
      {
        _s7SwiftUI7BindingVySdGMaTm_0(319, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x277D839B0]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void _s7SwiftUI7BindingVySdGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = type metadata accessor for Binding();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t type metadata completion function for EffortSectionTitle(uint64_t a1)
{
  result = type metadata accessor for AppleExertionScale();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ScrollView<ModifiedContent<VStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<Divider, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, <<opaque return type of View.scenePadding(_:)>>.0)>>, _PaddingLayout>>, _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ScrollView<ModifiedContent<VStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<Divider, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, <<opaque return type of View.scenePadding(_:)>>.0)>>, _PaddingLayout>>, _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ScrollView<ModifiedContent<VStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<Divider, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, <<opaque return type of View.scenePadding(_:)>>.0)>>, _PaddingLayout>>, _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA10ScrollViewVyACyAA6VStackVyAA05TupleF0VyACyAA4TextVAA14_PaddingLayoutVG_07WorkoutB018EffortSectionTitle33_06FC76556B25F7BE4859D6C5967358FALLVACyAO0M6ButtonVAMGA2ur3ur2ur2uCyAA7DividerVAMGAuA0F0PAAE05sceneJ0yQrAA4EdgeO3SetVFQOyAN_Qo_tGGAMGGAA19_BackgroundModifierVyACyAA14LinearGradientVAA024_SafeAreaRegionsIgnoringK0VGGGMd, &_s7SwiftUI15ModifiedContentVyAA10ScrollViewVyACyAA6VStackVyAA05TupleF0VyACyAA4TextVAA14_PaddingLayoutVG_07WorkoutB018EffortSectionTitle33_06FC76556B25F7BE4859D6C5967358FALLVACyAO0M6ButtonVAMGA2ur3ur2ur2uCyAA7DividerVAMGAuA0F0PAAE05sceneJ0yQrAA4EdgeO3SetVFQOyAN_Qo_tGGAMGGAA19_BackgroundModifierVyACyAA14LinearGradientVAA024_SafeAreaRegionsIgnoringK0VGGGMR);
    lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<Divider, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, <<opaque return type of View.scenePadding(_:)>>.0)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type ScrollView<ModifiedContent<VStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<Divider, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, <<opaque return type of View.scenePadding(_:)>>.0)>>, _PaddingLayout>> and conformance ScrollView<A>, &_s7SwiftUI10ScrollViewVyAA15ModifiedContentVyAA6VStackVyAA05TupleD0VyAEyAA4TextVAA14_PaddingLayoutVG_07WorkoutB018EffortSectionTitle33_06FC76556B25F7BE4859D6C5967358FALLVAEyAO0M6ButtonVAMGA2ur3ur2ur2uEyAA7DividerVAMGAuA0D0PAAE05sceneJ0yQrAA4EdgeO3SetVFQOyAN_Qo_tGGAMGGMd, &_s7SwiftUI10ScrollViewVyAA15ModifiedContentVyAA6VStackVyAA05TupleD0VyAEyAA4TextVAA14_PaddingLayoutVG_07WorkoutB018EffortSectionTitle33_06FC76556B25F7BE4859D6C5967358FALLVAEyAO0M6ButtonVAMGA2ur3ur2ur2uEyAA7DividerVAMGAuA0D0PAAE05sceneJ0yQrAA4EdgeO3SetVFQOyAN_Qo_tGGAMGGMR, MEMORY[0x277CDD6E0]);
    lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<Divider, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, <<opaque return type of View.scenePadding(_:)>>.0)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>> and conformance _BackgroundModifier<A>, &_s7SwiftUI19_BackgroundModifierVyAA15ModifiedContentVyAA14LinearGradientVAA30_SafeAreaRegionsIgnoringLayoutVGGMd, &_s7SwiftUI19_BackgroundModifierVyAA15ModifiedContentVyAA14LinearGradientVAA30_SafeAreaRegionsIgnoringLayoutVGGMR, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ScrollView<ModifiedContent<VStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<Divider, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, <<opaque return type of View.scenePadding(_:)>>.0)>>, _PaddingLayout>>, _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined init with copy of EffortSectionTitle(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of EffortButton(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EffortButton(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double partial apply for closure #1 in EffortButton.body.getter()
{
  v1 = *(type metadata accessor for EffortButton(0) - 8);
  v3 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return closure #1 in EffortButton.body.getter(v3, v2);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, _FlipForRTLEffect>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, ModifiedContent<Text, _PaddingLayout>, Spacer, _ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _HiddenModifier>>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FlexFrameLayout>, _FlexFrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedCorner>>, _ContentShapeKindModifier<RoundedCorner>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, _FlipForRTLEffect>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, ModifiedContent<Text, _PaddingLayout>, Spacer, _ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _HiddenModifier>>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FlexFrameLayout>, _FlexFrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedCorner>>, _ContentShapeKindModifier<RoundedCorner>> and conformance <> ModifiedContent<A,;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, _FlipForRTLEffect>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, ModifiedContent<Text, _PaddingLayout>, Spacer, _ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _HiddenModifier>>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FlexFrameLayout>, _FlexFrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedCorner>>, _ContentShapeKindModifier<RoundedCorner>> and conformance <> ModifiedContent<A,)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA6HStackVyAA9TupleViewVyACyACyAA5GroupVyAA012_ConditionalD0VyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGGAA023AccessibilityAttachmentN0VGAA17_FlipForRTLEffectVGACyAmUGGGARGAOyAA19SymbolRenderingModeVSgGG_ACyAA4TextVAA14_PaddingLayoutVGAA6SpacerVAKyACyAmOyAA4FontVSgGGACyA18_AA07_HiddenN0VGGtGGA10_GA17_GAA010_FlexFrameZ0VGA28_GAA016_BackgroundStyleN0VyAA5ColorVGGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA01_d9ShapeKindN0VyA41_GGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA6HStackVyAA9TupleViewVyACyACyAA5GroupVyAA012_ConditionalD0VyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGGAA023AccessibilityAttachmentN0VGAA17_FlipForRTLEffectVGACyAmUGGGARGAOyAA19SymbolRenderingModeVSgGG_ACyAA4TextVAA14_PaddingLayoutVGAA6SpacerVAKyACyAmOyAA4FontVSgGGACyA18_AA07_HiddenN0VGGtGGA10_GA17_GAA010_FlexFrameZ0VGA28_GAA016_BackgroundStyleN0VyAA5ColorVGGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA01_d9ShapeKindN0VyA41_GGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, _FlipForRTLEffect>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, ModifiedContent<Text, _PaddingLayout>, Spacer, _ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _HiddenModifier>>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FlexFrameLayout>, _FlexFrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedCorner>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<Divider, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, <<opaque return type of View.scenePadding(_:)>>.0)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type _ContentShapeKindModifier<RoundedCorner> and conformance _ContentShapeKindModifier<A>, &_s7SwiftUI25_ContentShapeKindModifierVy07WorkoutB013RoundedCornerVGMd, &_s7SwiftUI25_ContentShapeKindModifierVy07WorkoutB013RoundedCornerVGMR, MEMORY[0x277CE07A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, _FlipForRTLEffect>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, ModifiedContent<Text, _PaddingLayout>, Spacer, _ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _HiddenModifier>>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FlexFrameLayout>, _FlexFrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedCorner>>, _ContentShapeKindModifier<RoundedCorner>> and conformance <> ModifiedContent<A,);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, _FlipForRTLEffect>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, ModifiedContent<Text, _PaddingLayout>, Spacer, _ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _HiddenModifier>>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FlexFrameLayout>, _FlexFrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedCorner>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, _FlipForRTLEffect>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, ModifiedContent<Text, _PaddingLayout>, Spacer, _ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _HiddenModifier>>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FlexFrameLayout>, _FlexFrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedCorner>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, _FlipForRTLEffect>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, ModifiedContent<Text, _PaddingLayout>, Spacer, _ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _HiddenModifier>>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FlexFrameLayout>, _FlexFrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedCorner>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA6HStackVyAA9TupleViewVyACyACyAA5GroupVyAA012_ConditionalD0VyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGGAA023AccessibilityAttachmentN0VGAA17_FlipForRTLEffectVGACyAmUGGGARGAOyAA19SymbolRenderingModeVSgGG_ACyAA4TextVAA14_PaddingLayoutVGAA6SpacerVAKyACyAmOyAA4FontVSgGGACyA18_AA07_HiddenN0VGGtGGA10_GA17_GAA010_FlexFrameZ0VGA28_GAA016_BackgroundStyleN0VyAA5ColorVGGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA6HStackVyAA9TupleViewVyACyACyAA5GroupVyAA012_ConditionalD0VyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGGAA023AccessibilityAttachmentN0VGAA17_FlipForRTLEffectVGACyAmUGGGARGAOyAA19SymbolRenderingModeVSgGG_ACyAA4TextVAA14_PaddingLayoutVGAA6SpacerVAKyACyAmOyAA4FontVSgGGACyA18_AA07_HiddenN0VGGtGGA10_GA17_GAA010_FlexFrameZ0VGA28_GAA016_BackgroundStyleN0VyAA5ColorVGGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, _FlipForRTLEffect>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, ModifiedContent<Text, _PaddingLayout>, Spacer, _ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _HiddenModifier>>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FlexFrameLayout>, _FlexFrameLayout>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<Divider, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, <<opaque return type of View.scenePadding(_:)>>.0)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type _ClipEffect<RoundedCorner> and conformance _ClipEffect<A>, &_s7SwiftUI11_ClipEffectVy07WorkoutB013RoundedCornerVGMd, &_s7SwiftUI11_ClipEffectVy07WorkoutB013RoundedCornerVGMR, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, _FlipForRTLEffect>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, ModifiedContent<Text, _PaddingLayout>, Spacer, _ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _HiddenModifier>>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FlexFrameLayout>, _FlexFrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedCorner>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, _FlipForRTLEffect>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, ModifiedContent<Text, _PaddingLayout>, Spacer, _ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _HiddenModifier>>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FlexFrameLayout>, _FlexFrameLayout>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, _FlipForRTLEffect>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, ModifiedContent<Text, _PaddingLayout>, Spacer, _ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _HiddenModifier>>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FlexFrameLayout>, _FlexFrameLayout>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, _FlipForRTLEffect>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, ModifiedContent<Text, _PaddingLayout>, Spacer, _ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _HiddenModifier>>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FlexFrameLayout>, _FlexFrameLayout>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6HStackVyAA9TupleViewVyACyACyAA5GroupVyAA012_ConditionalD0VyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGGAA023AccessibilityAttachmentN0VGAA17_FlipForRTLEffectVGACyAmUGGGARGAOyAA19SymbolRenderingModeVSgGG_ACyAA4TextVAA14_PaddingLayoutVGAA6SpacerVAKyACyAmOyAA4FontVSgGGACyA18_AA07_HiddenN0VGGtGGA10_GA17_GAA010_FlexFrameZ0VGA28_GAA016_BackgroundStyleN0VyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6HStackVyAA9TupleViewVyACyACyAA5GroupVyAA012_ConditionalD0VyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGGAA023AccessibilityAttachmentN0VGAA17_FlipForRTLEffectVGACyAmUGGGARGAOyAA19SymbolRenderingModeVSgGG_ACyAA4TextVAA14_PaddingLayoutVGAA6SpacerVAKyACyAmOyAA4FontVSgGGACyA18_AA07_HiddenN0VGGtGGA10_GA17_GAA010_FlexFrameZ0VGA28_GAA016_BackgroundStyleN0VyAA5ColorVGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, _FlipForRTLEffect>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, ModifiedContent<Text, _PaddingLayout>, Spacer, _ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _HiddenModifier>>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>( &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, _FlipForRTLEffect>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, ModifiedContent<Text, _PaddingLayout>, Spacer, _ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _HiddenModifier>>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FlexFrameLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>,  &_s7SwiftUI15ModifiedContentVyACyACyACyAA6HStackVyAA9TupleViewVyACyACyAA5GroupVyAA012_ConditionalD0VyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGGAA023AccessibilityAttachmentN0VGAA17_FlipForRTLEffectVGACyAmUGGGARGAOyAA19SymbolRenderingModeVSgGG_ACyAA4TextVAA14_PaddingLayoutVGAA6SpacerVAKyACyAmOyAA4FontVSgGGACyA18_AA07_HiddenN0VGGtGGA10_GA17_GAA010_FlexFrameZ0VGA28_GMd,  &_s7SwiftUI15ModifiedContentVyACyACyACyAA6HStackVyAA9TupleViewVyACyACyAA5GroupVyAA012_ConditionalD0VyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGGAA023AccessibilityAttachmentN0VGAA17_FlipForRTLEffectVGACyAmUGGGARGAOyAA19SymbolRenderingModeVSgGG_ACyAA4TextVAA14_PaddingLayoutVGAA6SpacerVAKyACyAmOyAA4FontVSgGGACyA18_AA07_HiddenN0VGGtGGA10_GA17_GAA010_FlexFrameZ0VGA28_GMR,  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, _FlipForRTLEffect>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, ModifiedContent<Text, _PaddingLayout>, Spacer, _ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _HiddenModifier>>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
    lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<Divider, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, <<opaque return type of View.scenePadding(_:)>>.0)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type _BackgroundStyleModifier<Color> and conformance _BackgroundStyleModifier<A>, &_s7SwiftUI24_BackgroundStyleModifierVyAA5ColorVGMd, &_s7SwiftUI24_BackgroundStyleModifierVyAA5ColorVGMR, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, _FlipForRTLEffect>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, ModifiedContent<Text, _PaddingLayout>, Spacer, _ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _HiddenModifier>>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FlexFrameLayout>, _FlexFrameLayout>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, _FlipForRTLEffect>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, ModifiedContent<Text, _PaddingLayout>, Spacer, _ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _HiddenModifier>>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, _FlipForRTLEffect>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, ModifiedContent<Text, _PaddingLayout>, Spacer, _ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _HiddenModifier>>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, _FlipForRTLEffect>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, ModifiedContent<Text, _PaddingLayout>, Spacer, _ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _HiddenModifier>>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, _FlipForRTLEffect>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, ModifiedContent<Text, _PaddingLayout>, Spacer, _ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _HiddenModifier>>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyACyAA5GroupVyAA012_ConditionalD0VyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGGAA023AccessibilityAttachmentN0VGAA17_FlipForRTLEffectVGACyAmUGGGARGAOyAA19SymbolRenderingModeVSgGG_ACyAA4TextVAA14_PaddingLayoutVGAA6SpacerVAKyACyAmOyAA4FontVSgGGACyA18_AA07_HiddenN0VGGtGGA10_GA17_GMd, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyACyAA5GroupVyAA012_ConditionalD0VyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGGAA023AccessibilityAttachmentN0VGAA17_FlipForRTLEffectVGACyAmUGGGARGAOyAA19SymbolRenderingModeVSgGG_ACyAA4TextVAA14_PaddingLayoutVGAA6SpacerVAKyACyAmOyAA4FontVSgGGACyA18_AA07_HiddenN0VGGtGGA10_GA17_GMR);
    lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, _FlipForRTLEffect>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, ModifiedContent<Text, _PaddingLayout>, Spacer, _ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _HiddenModifier>>)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<Divider, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, <<opaque return type of View.scenePadding(_:)>>.0)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMR, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, _FlipForRTLEffect>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, ModifiedContent<Text, _PaddingLayout>, Spacer, _ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _HiddenModifier>>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, _FlipForRTLEffect>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, ModifiedContent<Text, _PaddingLayout>, Spacer, _ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _HiddenModifier>>)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, _FlipForRTLEffect>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, ModifiedContent<Text, _PaddingLayout>, Spacer, _ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _HiddenModifier>>)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, _FlipForRTLEffect>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, ModifiedContent<Text, _PaddingLayout>, Spacer, _ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _HiddenModifier>>)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyACyAA5GroupVyAA012_ConditionalD0VyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGGAA023AccessibilityAttachmentN0VGAA17_FlipForRTLEffectVGACyAmUGGGARGAOyAA19SymbolRenderingModeVSgGG_ACyAA4TextVAA14_PaddingLayoutVGAA6SpacerVAKyACyAmOyAA4FontVSgGGACyA18_AA07_HiddenN0VGGtGGA10_GMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyACyAA5GroupVyAA012_ConditionalD0VyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGGAA023AccessibilityAttachmentN0VGAA17_FlipForRTLEffectVGACyAmUGGGARGAOyAA19SymbolRenderingModeVSgGG_ACyAA4TextVAA14_PaddingLayoutVGAA6SpacerVAKyACyAmOyAA4FontVSgGGACyA18_AA07_HiddenN0VGGtGGA10_GMR);
    lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<Divider, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, <<opaque return type of View.scenePadding(_:)>>.0)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, _FlipForRTLEffect>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, ModifiedContent<Text, _PaddingLayout>, Spacer, _ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _HiddenModifier>>)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA5GroupVyAA012_ConditionalG0VyAGyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGGAA023AccessibilityAttachmentN0VGAA17_FlipForRTLEffectVGAGyAmUGGGARGAOyAA19SymbolRenderingModeVSgGG_AGyAA4TextVAA14_PaddingLayoutVGAA6SpacerVAKyAGyAmOyAA4FontVSgGGAGyA18_AA07_HiddenN0VGGtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA5GroupVyAA012_ConditionalG0VyAGyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGGAA023AccessibilityAttachmentN0VGAA17_FlipForRTLEffectVGAGyAmUGGGARGAOyAA19SymbolRenderingModeVSgGG_AGyAA4TextVAA14_PaddingLayoutVGAA6SpacerVAKyAGyAmOyAA4FontVSgGGAGyA18_AA07_HiddenN0VGGtGGMR, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, _FlipForRTLEffect>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, ModifiedContent<Text, _PaddingLayout>, Spacer, _ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _HiddenModifier>>)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined init with take of ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, _FlipForRTLEffect>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, ModifiedContent<Text, _PaddingLayout>, Spacer, _ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _HiddenModifier>>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _HiddenModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _HiddenModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _HiddenModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA07_HiddenI0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA07_HiddenI0VGMR);
    lazy protocol witness table accessor for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _HiddenModifier and conformance _HiddenModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _HiddenModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

double outlined copy of _ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _HiddenModifier>>.Storage(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return result;
}

double outlined consume of _ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _HiddenModifier>>.Storage(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, _FlipForRTLEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, _FlipForRTLEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, _FlipForRTLEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA023AccessibilityAttachmentI0VGAA17_FlipForRTLEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA023AccessibilityAttachmentI0VGAA17_FlipForRTLEffectVGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _FlipForRTLEffect and conformance _FlipForRTLEffect();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, _FlipForRTLEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA023AccessibilityAttachmentI0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA023AccessibilityAttachmentI0VGMR);
    lazy protocol witness table accessor for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>();
    _s7SwiftUI16PlainButtonStyleVAcA09PrimitivedE0AAWlTm_4(&lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t _s7SwiftUI16PlainButtonStyleVAcA09PrimitivedE0AAWlTm_4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with copy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of _BackgroundModifier<ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t lazy protocol witness table accessor for type Group<TupleView<(ModifiedContent<ModifiedContent<Text, _PaddingLayout>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _ForegroundStyleModifier<Color>>)>> and conformance <A> Group<A>()
{
  result = lazy protocol witness table cache variable for type Group<TupleView<(ModifiedContent<ModifiedContent<Text, _PaddingLayout>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _ForegroundStyleModifier<Color>>)>> and conformance <A> Group<A>;
  if (!lazy protocol witness table cache variable for type Group<TupleView<(ModifiedContent<ModifiedContent<Text, _PaddingLayout>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _ForegroundStyleModifier<Color>>)>> and conformance <A> Group<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI5GroupVyAA9TupleViewVyAA15ModifiedContentVyAGyAA4TextVAA14_PaddingLayoutVGAA31AccessibilityAttachmentModifierVG_AGyAlA016_ForegroundStyleM0VyAA5ColorVGGtGGMd, &_s7SwiftUI5GroupVyAA9TupleViewVyAA15ModifiedContentVyAGyAA4TextVAA14_PaddingLayoutVGAA31AccessibilityAttachmentModifierVG_AGyAlA016_ForegroundStyleM0VyAA5ColorVGGtGGMR);
    lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<Divider, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, <<opaque return type of View.scenePadding(_:)>>.0)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<ModifiedContent<Text, _PaddingLayout>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _ForegroundStyleModifier<Color>>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA4TextVAA14_PaddingLayoutVGAA31AccessibilityAttachmentModifierVG_AEyAjA016_ForegroundStyleL0VyAA5ColorVGGtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA4TextVAA14_PaddingLayoutVGAA31AccessibilityAttachmentModifierVG_AEyAjA016_ForegroundStyleL0VyAA5ColorVGGtGMR, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Group<TupleView<(ModifiedContent<ModifiedContent<Text, _PaddingLayout>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _ForegroundStyleModifier<Color>>)>> and conformance <A> Group<A>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<Divider, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, <<opaque return type of View.scenePadding(_:)>>.0)>> and conformance VStack<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IntervalStepAddTypeView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for IntervalStepAddTypeView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t closure #1 in IntervalStepAddTypeView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v12[1] = a2;
  v3 = type metadata accessor for PlainListStyle();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ListVys5NeverOAA9TupleViewVyAA7ForEachVySay11WorkoutCore8StepTypeOGSiAA14NavigationLinkVyAA6HStackVyAGyAA6SpacerV_AA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0S9AlignmentOGGAStGGAUy0iB008Intervalk10ChooseGoalF0VAYyA4_013ConfigurationM5ModelCSgGGGG_AUyAOyA3_AUyA4_0yk9SelectionF0VA10_GGAA01_tu9TransformW0VySbGGtGGMd, &_s7SwiftUI4ListVys5NeverOAA9TupleViewVyAA7ForEachVySay11WorkoutCore8StepTypeOGSiAA14NavigationLinkVyAA6HStackVyAGyAA6SpacerV_AA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0S9AlignmentOGGAStGGAUy0iB008Intervalk10ChooseGoalF0VAYyA4_013ConfigurationM5ModelCSgGGGG_AUyAOyA3_AUyA4_0yk9SelectionF0VA10_GGAA01_tu9TransformW0VySbGGtGGMR);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v12 - v9;
  v12[4] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA7ForEachVySay11WorkoutCore8StepTypeOGSiAA14NavigationLinkVyAA6HStackVyACyAA6SpacerV_AA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0Q9AlignmentOGGAOtGGAQy0gB008Intervali10ChooseGoalD0VAUyA0_013ConfigurationK5ModelCSgGGGG_AQyAKyA_AQyA0_0wi9SelectionD0VA6_GGAA01_rs9TransformU0VySbGGtGMd, &_s7SwiftUI9TupleViewVyAA7ForEachVySay11WorkoutCore8StepTypeOGSiAA14NavigationLinkVyAA6HStackVyACyAA6SpacerV_AA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0Q9AlignmentOGGAOtGGAQy0gB008Intervali10ChooseGoalD0VAUyA0_013ConfigurationK5ModelCSgGGGG_AQyAKyA_AQyA0_0wi9SelectionD0VA6_GGAA01_rs9TransformU0VySbGGtGMR);
  lazy protocol witness table accessor for type List<Never, TupleView<(ForEach<[StepType], Int, NavigationLink<HStack<TupleView<(Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer)>>, ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>>, ModifiedContent<NavigationLink<HStack<TupleView<(Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer)>>, ModifiedContent<IntervalStepSelectionView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, _EnvironmentKeyTransformModifier<Bool>>)>> and conformance List<A, B>(&lazy protocol witness table cache variable for type TupleView<(ForEach<[StepType], Int, NavigationLink<HStack<TupleView<(Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer)>>, ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>>, ModifiedContent<NavigationLink<HStack<TupleView<(Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer)>>, ModifiedContent<IntervalStepSelectionView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, _EnvironmentKeyTransformModifier<Bool>>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA7ForEachVySay11WorkoutCore8StepTypeOGSiAA14NavigationLinkVyAA6HStackVyACyAA6SpacerV_AA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0Q9AlignmentOGGAOtGGAQy0gB008Intervali10ChooseGoalD0VAUyA0_013ConfigurationK5ModelCSgGGGG_AQyAKyA_AQyA0_0wi9SelectionD0VA6_GGAA01_rs9TransformU0VySbGGtGMd, &_s7SwiftUI9TupleViewVyAA7ForEachVySay11WorkoutCore8StepTypeOGSiAA14NavigationLinkVyAA6HStackVyACyAA6SpacerV_AA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0Q9AlignmentOGGAOtGGAQy0gB008Intervali10ChooseGoalD0VAUyA0_013ConfigurationK5ModelCSgGGGG_AQyAKyA_AQyA0_0wi9SelectionD0VA6_GGAA01_rs9TransformU0VySbGGtGMR, MEMORY[0x277CE14C0]);
  List<>.init(content:)();
  PlainListStyle.init()();
  lazy protocol witness table accessor for type List<Never, TupleView<(ForEach<[StepType], Int, NavigationLink<HStack<TupleView<(Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer)>>, ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>>, ModifiedContent<NavigationLink<HStack<TupleView<(Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer)>>, ModifiedContent<IntervalStepSelectionView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, _EnvironmentKeyTransformModifier<Bool>>)>> and conformance List<A, B>(&lazy protocol witness table cache variable for type List<Never, TupleView<(ForEach<[StepType], Int, NavigationLink<HStack<TupleView<(Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer)>>, ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>>, ModifiedContent<NavigationLink<HStack<TupleView<(Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer)>>, ModifiedContent<IntervalStepSelectionView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, _EnvironmentKeyTransformModifier<Bool>>)>> and conformance List<A, B>, &_s7SwiftUI4ListVys5NeverOAA9TupleViewVyAA7ForEachVySay11WorkoutCore8StepTypeOGSiAA14NavigationLinkVyAA6HStackVyAGyAA6SpacerV_AA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0S9AlignmentOGGAStGGAUy0iB008Intervalk10ChooseGoalF0VAYyA4_013ConfigurationM5ModelCSgGGGG_AUyAOyA3_AUyA4_0yk9SelectionF0VA10_GGAA01_tu9TransformW0VySbGGtGGMd, &_s7SwiftUI4ListVys5NeverOAA9TupleViewVyAA7ForEachVySay11WorkoutCore8StepTypeOGSiAA14NavigationLinkVyAA6HStackVyAGyAA6SpacerV_AA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0S9AlignmentOGGAStGGAUy0iB008Intervalk10ChooseGoalF0VAYyA4_013ConfigurationM5ModelCSgGGGG_AUyAOyA3_AUyA4_0yk9SelectionF0VA10_GGAA01_tu9TransformW0VySbGGtGGMR, MEMORY[0x277CDE5A0]);
  View.listStyle<A>(_:)();
  (*(v4 + 8))(v6, v3);
  return (*(v8 + 8))(v10, v7);
}

uint64_t closure #1 in closure #1 in IntervalStepAddTypeView.body.getter@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v65 = a2;
  v3 = type metadata accessor for IntervalStepSelectionView(0);
  v4 = (v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB025IntervalStepSelectionViewVAA30_EnvironmentKeyWritingModifierVyAD28ConfigurationNavigationModelCSgGGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB025IntervalStepSelectionViewVAA30_EnvironmentKeyWritingModifierVyAD28ConfigurationNavigationModelCSgGGMR);
  MEMORY[0x28223BE20](v54);
  v52 = v51 - v7;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI14NavigationLinkVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0K9AlignmentOGGAItGGAKy07WorkoutB0021IntervalStepSelectionG0VAOyAV013ConfigurationC5ModelCSgGGGMd, &_s7SwiftUI14NavigationLinkVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0K9AlignmentOGGAItGGAKy07WorkoutB0021IntervalStepSelectionG0VAOyAV013ConfigurationC5ModelCSgGGGMR);
  v58 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v57 = v51 - v8;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA14NavigationLinkVyAA6HStackVyAA9TupleViewVyAA6SpacerV_ACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0K9AlignmentOGGAKtGGACy07WorkoutB0021IntervalStepSelectionI0VAOyAV013ConfigurationE5ModelCSgGGGAA01_lm9TransformO0VySbGGMd, &_s7SwiftUI15ModifiedContentVyAA14NavigationLinkVyAA6HStackVyAA9TupleViewVyAA6SpacerV_ACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0K9AlignmentOGGAKtGGACy07WorkoutB0021IntervalStepSelectionI0VAOyAV013ConfigurationE5ModelCSgGGGAA01_lm9TransformO0VySbGGMR);
  MEMORY[0x28223BE20](v55);
  v64 = v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v53 = v51 - v11;
  MEMORY[0x28223BE20](v12);
  v61 = v51 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySay11WorkoutCore8StepTypeOGSiAA14NavigationLinkVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0Q9AlignmentOGGAOtGGAQy0eB008Intervalg10ChooseGoalM0VAUyA0_013ConfigurationI5ModelCSgGGGGMd, &_s7SwiftUI7ForEachVySay11WorkoutCore8StepTypeOGSiAA14NavigationLinkVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0Q9AlignmentOGGAOtGGAQy0eB008Intervalg10ChooseGoalM0VAUyA0_013ConfigurationI5ModelCSgGGGGMR);
  v62 = *(v14 - 8);
  v63 = v14;
  MEMORY[0x28223BE20](v14);
  v59 = v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = v51 - v17;
  v67 = a1[6];
  v68 = v67;
  v19 = swift_allocObject();
  v20 = *(a1 + 1);
  *(v19 + 16) = *a1;
  *(v19 + 32) = v20;
  *(v19 + 48) = *(a1 + 2);
  *(v19 + 64) = a1[6];
  outlined init with copy of [StepType](&v68, v66, &_sSay11WorkoutCore8StepTypeOGMd, &_sSay11WorkoutCore8StepTypeOGMR);
  outlined init with copy of IntervalStepAddTypeView(a1, v66);
  v51[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore8StepTypeOGMd, &_sSay11WorkoutCore8StepTypeOGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI14NavigationLinkVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0K9AlignmentOGGAItGGAKy07WorkoutB0022IntervalStepChooseGoalG0VAOyAV013ConfigurationC5ModelCSgGGGMd, &_s7SwiftUI14NavigationLinkVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0K9AlignmentOGGAItGGAKy07WorkoutB0022IntervalStepChooseGoalG0VAOyAV013ConfigurationC5ModelCSgGGGMR);
  lazy protocol witness table accessor for type List<Never, TupleView<(ForEach<[StepType], Int, NavigationLink<HStack<TupleView<(Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer)>>, ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>>, ModifiedContent<NavigationLink<HStack<TupleView<(Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer)>>, ModifiedContent<IntervalStepSelectionView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, _EnvironmentKeyTransformModifier<Bool>>)>> and conformance List<A, B>(&lazy protocol witness table cache variable for type [StepType] and conformance [A], &_sSay11WorkoutCore8StepTypeOGMd, &_sSay11WorkoutCore8StepTypeOGMR, MEMORY[0x277D83980]);
  lazy protocol witness table accessor for type List<Never, TupleView<(ForEach<[StepType], Int, NavigationLink<HStack<TupleView<(Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer)>>, ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>>, ModifiedContent<NavigationLink<HStack<TupleView<(Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer)>>, ModifiedContent<IntervalStepSelectionView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, _EnvironmentKeyTransformModifier<Bool>>)>> and conformance List<A, B>(&lazy protocol witness table cache variable for type NavigationLink<HStack<TupleView<(Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer)>>, ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>> and conformance NavigationLink<A, B>, &_s7SwiftUI14NavigationLinkVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0K9AlignmentOGGAItGGAKy07WorkoutB0022IntervalStepChooseGoalG0VAOyAV013ConfigurationC5ModelCSgGGGMd, &_s7SwiftUI14NavigationLinkVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0K9AlignmentOGGAItGGAKy07WorkoutB0022IntervalStepChooseGoalG0VAOyAV013ConfigurationC5ModelCSgGGGMR, MEMORY[0x277CDD938]);
  lazy protocol witness table accessor for type StepType and conformance StepType(&lazy protocol witness table cache variable for type StepType and conformance StepType, MEMORY[0x277D7E728], MEMORY[0x277D7E740]);
  v56 = v18;
  ForEach<>.init(_:content:)();
  v21 = IntervalWorkoutConfiguration.intervalWorkout.getter();
  v22 = a1[5];
  type metadata accessor for ConfigurationNavigationModel(0);
  lazy protocol witness table accessor for type StepType and conformance StepType(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel, &protocol conformance descriptor for ConfigurationNavigationModel);
  v23 = v22;
  *v6 = EnvironmentObject.init()();
  v6[1] = v24;
  v25 = v4[7];
  *(v6 + v25) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMR);
  swift_storeEnumTagMultiPayload();
  *(v6 + v4[8]) = v21;
  *(v6 + v4[9]) = v23;
  v26 = v21;
  v27 = IntervalWorkout.stepBlocks.getter();

  v28 = (v6 + v4[10]);
  *v28 = v27;
  v28[1] = 0;
  v29 = (v6 + v4[11]);
  *v29 = MEMORY[0x277D84F90];
  v29[1] = 0;
  v30 = *a1;
  if (*a1)
  {

    v31 = static ObservableObject.environmentStore.getter();
    v32 = v52;
    outlined init with take of IntervalStepSelectionView(v6, v52, type metadata accessor for IntervalStepSelectionView);
    v33 = (v32 + *(v54 + 36));
    *v33 = v31;
    v33[1] = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGGAGtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGGAGtGGMR);
    lazy protocol witness table accessor for type List<Never, TupleView<(ForEach<[StepType], Int, NavigationLink<HStack<TupleView<(Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer)>>, ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>>, ModifiedContent<NavigationLink<HStack<TupleView<(Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer)>>, ModifiedContent<IntervalStepSelectionView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, _EnvironmentKeyTransformModifier<Bool>>)>> and conformance List<A, B>(&lazy protocol witness table cache variable for type HStack<TupleView<(Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGGAGtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGGAGtGGMR, MEMORY[0x277CE1138]);
    lazy protocol witness table accessor for type ModifiedContent<IntervalStepSelectionView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>();
    v34 = v57;
    NavigationLink.init(destination:label:)();
    v35 = IntervalWorkoutConfiguration.intervalWorkout.getter();
    LOBYTE(v31) = IntervalWorkout.canAddRepeat.getter();

    KeyPath = swift_getKeyPath();
    v37 = swift_allocObject();
    *(v37 + 16) = (v31 & 1) == 0;
    v38 = v53;
    (*(v58 + 32))(v53, v34, v60);
    v39 = (v38 + *(v55 + 36));
    *v39 = KeyPath;
    v39[1] = _s7SwiftUI4ViewPAAE8disabledyQrSbFySbzcfU_TA_16;
    v39[2] = v37;
    v40 = v61;
    outlined init with take of ModifiedContent<NavigationLink<HStack<TupleView<(Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer)>>, ModifiedContent<IntervalStepSelectionView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, _EnvironmentKeyTransformModifier<Bool>>(v38, v61);
    v42 = v62;
    v41 = v63;
    v43 = *(v62 + 16);
    v44 = v59;
    v45 = v56;
    v43(v59, v56, v63);
    v46 = v64;
    outlined init with copy of [StepType](v40, v64, &_s7SwiftUI15ModifiedContentVyAA14NavigationLinkVyAA6HStackVyAA9TupleViewVyAA6SpacerV_ACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0K9AlignmentOGGAKtGGACy07WorkoutB0021IntervalStepSelectionI0VAOyAV013ConfigurationE5ModelCSgGGGAA01_lm9TransformO0VySbGGMd, &_s7SwiftUI15ModifiedContentVyAA14NavigationLinkVyAA6HStackVyAA9TupleViewVyAA6SpacerV_ACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0K9AlignmentOGGAKtGGACy07WorkoutB0021IntervalStepSelectionI0VAOyAV013ConfigurationE5ModelCSgGGGAA01_lm9TransformO0VySbGGMR);
    v47 = v65;
    v43(v65, v44, v41);
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySay11WorkoutCore8StepTypeOGSiAA14NavigationLinkVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0Q9AlignmentOGGAOtGGAQy0eB008Intervalg10ChooseGoalM0VAUyA0_013ConfigurationI5ModelCSgGGGG_AQyAIyA_AQyA0_0wg9SelectionM0VA6_GGAA01_rs9TransformU0VySbGGtMd, &_s7SwiftUI7ForEachVySay11WorkoutCore8StepTypeOGSiAA14NavigationLinkVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0Q9AlignmentOGGAOtGGAQy0eB008Intervalg10ChooseGoalM0VAUyA0_013ConfigurationI5ModelCSgGGGG_AQyAIyA_AQyA0_0wg9SelectionM0VA6_GGAA01_rs9TransformU0VySbGGtMR);
    outlined init with copy of [StepType](v46, &v47[*(v48 + 48)], &_s7SwiftUI15ModifiedContentVyAA14NavigationLinkVyAA6HStackVyAA9TupleViewVyAA6SpacerV_ACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0K9AlignmentOGGAKtGGACy07WorkoutB0021IntervalStepSelectionI0VAOyAV013ConfigurationE5ModelCSgGGGAA01_lm9TransformO0VySbGGMd, &_s7SwiftUI15ModifiedContentVyAA14NavigationLinkVyAA6HStackVyAA9TupleViewVyAA6SpacerV_ACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0K9AlignmentOGGAKtGGACy07WorkoutB0021IntervalStepSelectionI0VAOyAV013ConfigurationE5ModelCSgGGGAA01_lm9TransformO0VySbGGMR);
    outlined destroy of ModifiedContent<NavigationLink<HStack<TupleView<(Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer)>>, ModifiedContent<IntervalStepSelectionView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, _EnvironmentKeyTransformModifier<Bool>>(v40, &_s7SwiftUI15ModifiedContentVyAA14NavigationLinkVyAA6HStackVyAA9TupleViewVyAA6SpacerV_ACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0K9AlignmentOGGAKtGGACy07WorkoutB0021IntervalStepSelectionI0VAOyAV013ConfigurationE5ModelCSgGGGAA01_lm9TransformO0VySbGGMd, &_s7SwiftUI15ModifiedContentVyAA14NavigationLinkVyAA6HStackVyAA9TupleViewVyAA6SpacerV_ACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0K9AlignmentOGGAKtGGACy07WorkoutB0021IntervalStepSelectionI0VAOyAV013ConfigurationE5ModelCSgGGGAA01_lm9TransformO0VySbGGMR);
    v49 = *(v42 + 8);
    v49(v45, v41);
    outlined destroy of ModifiedContent<NavigationLink<HStack<TupleView<(Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer)>>, ModifiedContent<IntervalStepSelectionView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, _EnvironmentKeyTransformModifier<Bool>>(v46, &_s7SwiftUI15ModifiedContentVyAA14NavigationLinkVyAA6HStackVyAA9TupleViewVyAA6SpacerV_ACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0K9AlignmentOGGAKtGGACy07WorkoutB0021IntervalStepSelectionI0VAOyAV013ConfigurationE5ModelCSgGGGAA01_lm9TransformO0VySbGGMd, &_s7SwiftUI15ModifiedContentVyAA14NavigationLinkVyAA6HStackVyAA9TupleViewVyAA6SpacerV_ACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0K9AlignmentOGGAKtGGACy07WorkoutB0021IntervalStepSelectionI0VAOyAV013ConfigurationE5ModelCSgGGGAA01_lm9TransformO0VySbGGMR);
    return (v49)(v44, v41);
  }

  else
  {
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in IntervalStepAddTypeView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a3;
  v5 = type metadata accessor for IntervalStepChooseGoalView(0);
  v6 = (v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (&v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB026IntervalStepChooseGoalViewVAA30_EnvironmentKeyWritingModifierVyAD28ConfigurationNavigationModelCSgGGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB026IntervalStepChooseGoalViewVAA30_EnvironmentKeyWritingModifierVyAD28ConfigurationNavigationModelCSgGGMR);
  MEMORY[0x28223BE20](v28);
  v10 = &v26 - v9;
  v11 = v6[7];
  v12 = type metadata accessor for StepType();
  v13 = *(*(v12 - 8) + 16);
  v27 = a1;
  v13(v8 + v11, a1, v12);
  v14 = a2[2];
  v26 = a2[3];
  v16 = a2[4];
  v15 = a2[5];
  type metadata accessor for ConfigurationNavigationModel(0);
  lazy protocol witness table accessor for type StepType and conformance StepType(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel, &protocol conformance descriptor for ConfigurationNavigationModel);
  v17 = v14;
  v18 = v16;
  v19 = v15;
  *v8 = EnvironmentObject.init()();
  v8[1] = v20;
  *(v8 + v6[8]) = v17;
  *(v8 + v6[9]) = v26;
  *(v8 + v6[10]) = v18;
  *(v8 + v6[11]) = v19;
  *(v8 + v6[12]) = 0;
  v21 = *a2;
  if (*a2)
  {

    v22 = static ObservableObject.environmentStore.getter();
    v23 = outlined init with take of IntervalStepSelectionView(v8, v10, type metadata accessor for IntervalStepChooseGoalView);
    v24 = &v10[*(v28 + 36)];
    *v24 = v22;
    v24[1] = v21;
    MEMORY[0x28223BE20](v23);
    *(&v26 - 2) = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGGAGtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGGAGtGGMR);
    lazy protocol witness table accessor for type List<Never, TupleView<(ForEach<[StepType], Int, NavigationLink<HStack<TupleView<(Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer)>>, ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>>, ModifiedContent<NavigationLink<HStack<TupleView<(Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer)>>, ModifiedContent<IntervalStepSelectionView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, _EnvironmentKeyTransformModifier<Bool>>)>> and conformance List<A, B>(&lazy protocol witness table cache variable for type HStack<TupleView<(Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGGAGtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGGAGtGGMR, MEMORY[0x277CE1138]);
    lazy protocol witness table accessor for type ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>();
    return NavigationLink.init(destination:label:)();
  }

  else
  {
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

double closure #1 in closure #1 in closure #1 in closure #1 in IntervalStepAddTypeView.body.getter@<D0>(uint64_t a2@<X8>)
{
  v3 = static VerticalAlignment.center.getter();
  v14 = 1;
  closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in IntervalStepAddTypeView.body.getter(&v9);
  v16 = v10;
  v17 = v11;
  v18[0] = v12[0];
  *(v18 + 9) = *(v12 + 9);
  v15 = v9;
  v19[2] = v11;
  v20[0] = v12[0];
  *(v20 + 9) = *(v12 + 9);
  v19[0] = v9;
  v19[1] = v10;
  outlined init with copy of [StepType](&v15, v8, &_s7SwiftUI9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGGAEtGMd, &_s7SwiftUI9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGGAEtGMR);
  outlined destroy of ModifiedContent<NavigationLink<HStack<TupleView<(Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer)>>, ModifiedContent<IntervalStepSelectionView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, _EnvironmentKeyTransformModifier<Bool>>(v19, &_s7SwiftUI9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGGAEtGMd, &_s7SwiftUI9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGGAEtGMR);
  *&v13[7] = v15;
  *&v13[64] = *(v18 + 9);
  *&v13[55] = v18[0];
  *&v13[39] = v17;
  *&v13[23] = v16;
  v4 = *v13;
  *(a2 + 33) = *&v13[16];
  v5 = *&v13[48];
  *(a2 + 49) = *&v13[32];
  *(a2 + 65) = v5;
  result = *&v13[64];
  *(a2 + 81) = *&v13[64];
  v7 = v14;
  *a2 = v3;
  *(a2 + 8) = 0;
  *(a2 + 16) = v7;
  *(a2 + 17) = v4;
  return result;
}

double closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in IntervalStepAddTypeView.body.getter@<D0>(uint64_t a1@<X8>)
{
  StepType.displayStringToAddStep.getter();
  lazy protocol witness table accessor for type String and conformance String();
  v2 = Text.init<A>(_:)();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  KeyPath = swift_getKeyPath();
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v4;
  *(a1 + 32) = v6 & 1;
  *(a1 + 40) = v8;
  *(a1 + 48) = KeyPath;
  *(a1 + 56) = 1;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  outlined copy of Text.Storage(v2, v4, v6 & 1);

  outlined consume of Text.Storage(v2, v4, v6 & 1);

  return result;
}

double closure #2 in closure #1 in closure #1 in IntervalStepAddTypeView.body.getter@<D0>(uint64_t a2@<X8>)
{
  v3 = static VerticalAlignment.center.getter();
  v14 = 1;
  closure #1 in closure #2 in closure #1 in closure #1 in IntervalStepAddTypeView.body.getter(&v9);
  v16 = v10;
  v17 = v11;
  v18[0] = v12[0];
  *(v18 + 9) = *(v12 + 9);
  v15 = v9;
  v19[2] = v11;
  v20[0] = v12[0];
  *(v20 + 9) = *(v12 + 9);
  v19[0] = v9;
  v19[1] = v10;
  outlined init with copy of [StepType](&v15, v8, &_s7SwiftUI9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGGAEtGMd, &_s7SwiftUI9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGGAEtGMR);
  outlined destroy of ModifiedContent<NavigationLink<HStack<TupleView<(Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer)>>, ModifiedContent<IntervalStepSelectionView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, _EnvironmentKeyTransformModifier<Bool>>(v19, &_s7SwiftUI9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGGAEtGMd, &_s7SwiftUI9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGGAEtGMR);
  *&v13[7] = v15;
  *&v13[64] = *(v18 + 9);
  *&v13[55] = v18[0];
  *&v13[39] = v17;
  *&v13[23] = v16;
  v4 = *v13;
  *(a2 + 33) = *&v13[16];
  v5 = *&v13[48];
  *(a2 + 49) = *&v13[32];
  *(a2 + 65) = v5;
  result = *&v13[64];
  *(a2 + 81) = *&v13[64];
  v7 = v14;
  *a2 = v3;
  *(a2 + 8) = 0;
  *(a2 + 16) = v7;
  *(a2 + 17) = v4;
  return result;
}

double closure #1 in closure #2 in closure #1 in closure #1 in IntervalStepAddTypeView.body.getter@<D0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = WorkoutUIBundle.super.isa;
  v3 = Text.init(_:tableName:bundle:comment:)();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  KeyPath = swift_getKeyPath();
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = v3;
  *(a1 + 24) = v5;
  *(a1 + 32) = v7 & 1;
  *(a1 + 40) = v9;
  *(a1 + 48) = KeyPath;
  *(a1 + 56) = 1;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  outlined copy of Text.Storage(v3, v5, v7 & 1);

  outlined consume of Text.Storage(v3, v5, v7 & 1);

  return result;
}

uint64_t protocol witness for View.body.getter in conformance IntervalStepAddTypeView()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE9listStyleyQrqd__AA04ListE0Rd__lFQOyAA0F0Vys5NeverOAA05TupleC0VyAA7ForEachVySay11WorkoutCore8StepTypeOGSiAA14NavigationLinkVyAA6HStackVyAKyAA6SpacerV_AA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0U9AlignmentOGGAWtGGAYy0kB008Intervalm10ChooseGoalC0VA1_yA8_013ConfigurationO5ModelCSgGGGG_AYyASyA7_AYyA8_08Intervalm9SelectionC0VA14_GGAA01_vw9TransformY0VySbGGtGG_AA05PlainfE0VQo_Md, &_s7SwiftUI4ViewPAAE9listStyleyQrqd__AA04ListE0Rd__lFQOyAA0F0Vys5NeverOAA05TupleC0VyAA7ForEachVySay11WorkoutCore8StepTypeOGSiAA14NavigationLinkVyAA6HStackVyAKyAA6SpacerV_AA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0U9AlignmentOGGAWtGGAYy0kB008Intervalm10ChooseGoalC0VA1_yA8_013ConfigurationO5ModelCSgGGGG_AYyASyA7_AYyA8_08Intervalm9SelectionC0VA14_GGAA01_vw9TransformY0VySbGGtGG_AA05PlainfE0VQo_MR);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ListVys5NeverOAA9TupleViewVyAA7ForEachVySay11WorkoutCore8StepTypeOGSiAA14NavigationLinkVyAA6HStackVyAGyAA6SpacerV_AA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0S9AlignmentOGGAStGGAUy0iB008Intervalk10ChooseGoalF0VAYyA4_013ConfigurationM5ModelCSgGGGG_AUyAOyA3_AUyA4_0yk9SelectionF0VA10_GGAA01_tu9TransformW0VySbGGtGGMd, &_s7SwiftUI4ListVys5NeverOAA9TupleViewVyAA7ForEachVySay11WorkoutCore8StepTypeOGSiAA14NavigationLinkVyAA6HStackVyAGyAA6SpacerV_AA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0S9AlignmentOGGAStGGAUy0iB008Intervalk10ChooseGoalF0VAYyA4_013ConfigurationM5ModelCSgGGGG_AUyAOyA3_AUyA4_0yk9SelectionF0VA10_GGAA01_tu9TransformW0VySbGGtGGMR);
  type metadata accessor for PlainListStyle();
  lazy protocol witness table accessor for type List<Never, TupleView<(ForEach<[StepType], Int, NavigationLink<HStack<TupleView<(Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer)>>, ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>>, ModifiedContent<NavigationLink<HStack<TupleView<(Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer)>>, ModifiedContent<IntervalStepSelectionView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, _EnvironmentKeyTransformModifier<Bool>>)>> and conformance List<A, B>(&lazy protocol witness table cache variable for type List<Never, TupleView<(ForEach<[StepType], Int, NavigationLink<HStack<TupleView<(Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer)>>, ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>>, ModifiedContent<NavigationLink<HStack<TupleView<(Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer)>>, ModifiedContent<IntervalStepSelectionView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, _EnvironmentKeyTransformModifier<Bool>>)>> and conformance List<A, B>, &_s7SwiftUI4ListVys5NeverOAA9TupleViewVyAA7ForEachVySay11WorkoutCore8StepTypeOGSiAA14NavigationLinkVyAA6HStackVyAGyAA6SpacerV_AA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0S9AlignmentOGGAStGGAUy0iB008Intervalk10ChooseGoalF0VAYyA4_013ConfigurationM5ModelCSgGGGG_AUyAOyA3_AUyA4_0yk9SelectionF0VA10_GGAA01_tu9TransformW0VySbGGtGGMd, &_s7SwiftUI4ListVys5NeverOAA9TupleViewVyAA7ForEachVySay11WorkoutCore8StepTypeOGSiAA14NavigationLinkVyAA6HStackVyAGyAA6SpacerV_AA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0S9AlignmentOGGAStGGAUy0iB008Intervalk10ChooseGoalF0VAYyA4_013ConfigurationM5ModelCSgGGGG_AUyAOyA3_AUyA4_0yk9SelectionF0VA10_GGAA01_tu9TransformW0VySbGGtGGMR, MEMORY[0x277CDE5A0]);
  swift_getOpaqueTypeConformance2();
  return NavigationStack.init<>(root:)();
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<IntervalStepSelectionView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<IntervalStepSelectionView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<IntervalStepSelectionView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB025IntervalStepSelectionViewVAA30_EnvironmentKeyWritingModifierVyAD28ConfigurationNavigationModelCSgGGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB025IntervalStepSelectionViewVAA30_EnvironmentKeyWritingModifierVyAD28ConfigurationNavigationModelCSgGGMR);
    lazy protocol witness table accessor for type StepType and conformance StepType(&lazy protocol witness table cache variable for type IntervalStepSelectionView and conformance IntervalStepSelectionView, type metadata accessor for IntervalStepSelectionView, &protocol conformance descriptor for IntervalStepSelectionView);
    lazy protocol witness table accessor for type List<Never, TupleView<(ForEach<[StepType], Int, NavigationLink<HStack<TupleView<(Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer)>>, ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>>, ModifiedContent<NavigationLink<HStack<TupleView<(Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer)>>, ModifiedContent<IntervalStepSelectionView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, _EnvironmentKeyTransformModifier<Bool>>)>> and conformance List<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy07WorkoutB028ConfigurationNavigationModelCSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy07WorkoutB028ConfigurationNavigationModelCSgGMR, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<IntervalStepSelectionView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined init with take of ModifiedContent<NavigationLink<HStack<TupleView<(Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer)>>, ModifiedContent<IntervalStepSelectionView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, _EnvironmentKeyTransformModifier<Bool>>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA14NavigationLinkVyAA6HStackVyAA9TupleViewVyAA6SpacerV_ACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0K9AlignmentOGGAKtGGACy07WorkoutB0021IntervalStepSelectionI0VAOyAV013ConfigurationE5ModelCSgGGGAA01_lm9TransformO0VySbGGMd, &_s7SwiftUI15ModifiedContentVyAA14NavigationLinkVyAA6HStackVyAA9TupleViewVyAA6SpacerV_ACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0K9AlignmentOGGAKtGGACy07WorkoutB0021IntervalStepSelectionI0VAOyAV013ConfigurationE5ModelCSgGGGAA01_lm9TransformO0VySbGGMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of [StepType](uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of ModifiedContent<NavigationLink<HStack<TupleView<(Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer)>>, ModifiedContent<IntervalStepSelectionView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, _EnvironmentKeyTransformModifier<Bool>>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined init with take of IntervalStepSelectionView(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB026IntervalStepChooseGoalViewVAA30_EnvironmentKeyWritingModifierVyAD28ConfigurationNavigationModelCSgGGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB026IntervalStepChooseGoalViewVAA30_EnvironmentKeyWritingModifierVyAD28ConfigurationNavigationModelCSgGGMR);
    lazy protocol witness table accessor for type StepType and conformance StepType(&lazy protocol witness table cache variable for type IntervalStepChooseGoalView and conformance IntervalStepChooseGoalView, type metadata accessor for IntervalStepChooseGoalView, &protocol conformance descriptor for IntervalStepChooseGoalView);
    lazy protocol witness table accessor for type List<Never, TupleView<(ForEach<[StepType], Int, NavigationLink<HStack<TupleView<(Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer)>>, ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>>, ModifiedContent<NavigationLink<HStack<TupleView<(Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer)>>, ModifiedContent<IntervalStepSelectionView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, _EnvironmentKeyTransformModifier<Bool>>)>> and conformance List<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy07WorkoutB028ConfigurationNavigationModelCSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy07WorkoutB028ConfigurationNavigationModelCSgGMR, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type StepType and conformance StepType(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type List<Never, TupleView<(ForEach<[StepType], Int, NavigationLink<HStack<TupleView<(Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer)>>, ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>>, ModifiedContent<NavigationLink<HStack<TupleView<(Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer)>>, ModifiedContent<IntervalStepSelectionView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, _EnvironmentKeyTransformModifier<Bool>>)>> and conformance List<A, B>(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t TimelineSchedule.paused(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = a1;
  v9 = *(a2 - 8);
  v10 = MEMORY[0x28223BE20](a1);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, v4, a2, v10);
  (*(v9 + 32))(a4, v12, a2);
  result = type metadata accessor for PausableTimelineSchedule(0, a2, a3, v13);
  *(a4 + *(result + 36)) = v7;
  return result;
}

uint64_t PausableTimelineSchedule.entries(from:mode:)@<X0>(uint64_t a3@<X2>, uint64_t x8_0@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for Optional();
  v9.n128_f64[0] = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v14 - v10;
  if (*(v4 + *(a3 + 36)) == 1)
  {
    (*(*(AssociatedTypeWitness - 8) + 56))(v11, 1, 1, AssociatedTypeWitness, v9);
  }

  else
  {
    dispatch thunk of TimelineSchedule.entries(from:mode:)();
    (*(*(AssociatedTypeWitness - 8) + 56))(v11, 0, 1, AssociatedTypeWitness, v12);
  }

  return PausableTimelineSchedule.Entries.init(base:)(v11, x8_0);
}

uint64_t PausableTimelineSchedule.Entries.init(base:)@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  swift_getAssociatedTypeWitness();
  v6 = type metadata accessor for Optional();
  v7 = *(*(v6 - 8) + 32);

  return v7(a4, a1, v6);
}

uint64_t PausableTimelineSchedule.Entries.makeIterator()@<X0>(uint64_t a2@<X8>)
{
  v3 = v2;
  v17 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  swift_getAssociatedConformanceWitness();
  v9 = swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for Optional();
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v16 - v12;
  (*(v6 + 16))(v8, v3, v5, v11);
  if ((*(*(AssociatedTypeWitness - 8) + 48))(v8, 1, AssociatedTypeWitness) == 1)
  {
    (*(v6 + 8))(v8, v5);
    v14 = 1;
  }

  else
  {
    dispatch thunk of Sequence.makeIterator()();
    v14 = 0;
  }

  (*(*(v9 - 8) + 56))(v13, v14, 1, v9);
  return PausableTimelineSchedule.Iterator.init(base:)(v13, v17);
}

uint64_t PausableTimelineSchedule.Iterator.init(base:)@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v6 = type metadata accessor for Optional();
  v7 = *(*(v6 - 8) + 32);

  return v7(a4, a1, v6);
}

uint64_t protocol witness for Sequence.makeIterator() in conformance PausableTimelineSchedule<A>.Entries@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  PausableTimelineSchedule.Entries.makeIterator()(a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance PausableTimelineSchedule<A>.Entries(uint64_t a1, uint64_t a2)
{
  v4 = specialized Sequence._copyToContiguousArray()();
  (*(*(a1 - 8) + 8))(v2, a1);
  return v4;
}

void *PausableTimelineSchedule.Iterator.next()@<X0>(void *a2@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  if ((*(*(AssociatedTypeWitness - 8) + 48))(v2, 1, AssociatedTypeWitness))
  {
    v5 = type metadata accessor for Date();
    v6 = *(*(v5 - 8) + 56);

    return v6(a2, 1, 1, v5);
  }

  else
  {
    swift_getAssociatedConformanceWitness();

    return dispatch thunk of IteratorProtocol.next()();
  }
}

uint64_t type metadata completion function for PausableTimelineSchedule(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PausableTimelineSchedule(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_25;
  }

  v9 = v6 + 1;
  v10 = 8 * (v6 + 1);
  if ((v6 + 1) > 3)
  {
    goto LABEL_7;
  }

  v12 = ((v8 + ~(-1 << v10)) >> v10) + 1;
  if (HIWORD(v12))
  {
    v11 = *(a1 + v9);
    if (v11)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v12 <= 0xFF)
    {
      if (v12 < 2)
      {
        goto LABEL_25;
      }

LABEL_7:
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_25;
      }

LABEL_14:
      v13 = (v11 - 1) << v10;
      if (v9 > 3)
      {
        v13 = 0;
      }

      if (v9)
      {
        if (v9 > 3)
        {
          LODWORD(v9) = 4;
        }

        if (v9 > 2)
        {
          if (v9 == 3)
          {
            LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            LODWORD(v9) = *a1;
          }
        }

        else if (v9 == 1)
        {
          LODWORD(v9) = *a1;
        }

        else
        {
          LODWORD(v9) = *a1;
        }
      }

      return v7 + (v9 | v13) + 1;
    }

    v11 = *(a1 + v9);
    if (*(a1 + v9))
    {
      goto LABEL_14;
    }
  }

LABEL_25:
  if (v5 >= 0xFE)
  {
    return (*(v4 + 48))();
  }

  v15 = *(a1 + v6);
  if (v15 < 2)
  {
    return 0;
  }

  return ((v15 + 2147483646) & 0x7FFFFFFF) + 1;
}

unsigned int *storeEnumTagSinglePayload for PausableTimelineSchedule(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = v8 + 1;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    v12 = 1;
    if (v9 <= 3)
    {
      v13 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      v14 = HIWORD(v13);
      if (v13 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v13 >= 2)
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      if (v14)
      {
        v12 = 4;
      }

      else
      {
        v12 = v16;
      }
    }

    if (v7 >= a2)
    {
LABEL_21:
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v12)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0xFE)
      {
        *(result + v8) = a2 + 1;
      }

      else
      {
        v22 = *(v5 + 56);

        return v22();
      }

      return result;
    }
  }

  else
  {
    v12 = 0;
    if (v7 >= a2)
    {
      goto LABEL_21;
    }
  }

  v17 = ~v7 + a2;
  if (v9 >= 4)
  {
    v18 = result;
    bzero(result, v8 + 1);
    result = v18;
    *v18 = v17;
    v19 = 1;
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v19 = (v17 >> (8 * v9)) + 1;
  if (v8 == -1)
  {
LABEL_41:
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v20 = v17 & ~(-1 << (8 * v9));
  v21 = result;
  bzero(result, v9);
  result = v21;
  if (v9 == 3)
  {
    *v21 = v20;
    *(v21 + 2) = BYTE2(v20);
    goto LABEL_41;
  }

  if (v9 == 2)
  {
    *v21 = v20;
    if (v12 > 1)
    {
LABEL_45:
      if (v12 == 2)
      {
        *(result + v9) = v19;
      }

      else
      {
        *(result + v9) = v19;
      }

      return result;
    }
  }

  else
  {
    *v21 = v17;
    if (v12 > 1)
    {
      goto LABEL_45;
    }
  }

LABEL_42:
  if (v12)
  {
    *(result + v9) = v19;
  }

  return result;
}

uint64_t type metadata completion function for PausableTimelineSchedule.Iterator(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  result = type metadata accessor for Optional();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PausableTimelineSchedule.Iterator(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  v9 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!v7)
  {
    ++v9;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 > v8)
  {
    v10 = 8 * v9;
    if (v9 > 3)
    {
      goto LABEL_8;
    }

    v12 = ((a2 - v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v12))
    {
      v11 = *(a1 + v9);
      if (v11)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v12 <= 0xFF)
      {
        if (v12 < 2)
        {
          goto LABEL_26;
        }

LABEL_8:
        v11 = *(a1 + v9);
        if (!*(a1 + v9))
        {
          goto LABEL_26;
        }

LABEL_15:
        v13 = (v11 - 1) << v10;
        if (v9 > 3)
        {
          v13 = 0;
        }

        if (v9)
        {
          if (v9 > 3)
          {
            LODWORD(v9) = 4;
          }

          if (v9 > 2)
          {
            if (v9 == 3)
            {
              LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              LODWORD(v9) = *a1;
            }
          }

          else if (v9 == 1)
          {
            LODWORD(v9) = *a1;
          }

          else
          {
            LODWORD(v9) = *a1;
          }
        }

        return v8 + (v9 | v13) + 1;
      }

      v11 = *(a1 + v9);
      if (*(a1 + v9))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_26:
  if (v7 < 2)
  {
    return 0;
  }

  v15 = (*(v6 + 48))(a1);
  if (v15 >= 2)
  {
    return v15 - 1;
  }

  else
  {
    return 0;
  }
}

void storeEnumTagSinglePayload for PausableTimelineSchedule.Iterator(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v7 = 0;
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = *(v8 + 84);
  v10 = v9 - 1;
  if (v9)
  {
    v11 = *(v8 + 64);
  }

  else
  {
    v10 = 0;
    v11 = *(v8 + 64) + 1;
  }

  if (a3 <= v10)
  {
    goto LABEL_15;
  }

  if (v11 <= 3)
  {
    v12 = ((a3 - v10 + ~(-1 << (8 * v11))) >> (8 * v11)) + 1;
    if (HIWORD(v12))
    {
      v7 = 4;
      if (v10 >= a2)
      {
        goto LABEL_25;
      }

      goto LABEL_16;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    if (v12 >= 2)
    {
      v7 = v13;
    }

    else
    {
      v7 = 0;
    }

LABEL_15:
    if (v10 >= a2)
    {
      goto LABEL_25;
    }

    goto LABEL_16;
  }

  v7 = 1;
  if (v10 >= a2)
  {
LABEL_25:
    if (v7 > 1)
    {
      if (v7 != 2)
      {
        *&a1[v11] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      *&a1[v11] = 0;
    }

    else if (v7)
    {
      a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_32;
    }

    if (!a2)
    {
      return;
    }

LABEL_32:
    if (v9 >= 2)
    {
      v17 = *(v8 + 56);

      v17(a1, a2 + 1);
    }

    return;
  }

LABEL_16:
  v14 = ~v10 + a2;
  if (v11 >= 4)
  {
    bzero(a1, v11);
    *a1 = v14;
    v15 = 1;
    if (v7 > 1)
    {
      goto LABEL_43;
    }

    goto LABEL_40;
  }

  v15 = (v14 >> (8 * v11)) + 1;
  if (!v11)
  {
LABEL_39:
    if (v7 > 1)
    {
      goto LABEL_43;
    }

    goto LABEL_40;
  }

  v16 = v14 & ~(-1 << (8 * v11));
  bzero(a1, v11);
  if (v11 == 3)
  {
    *a1 = v16;
    a1[2] = BYTE2(v16);
    goto LABEL_39;
  }

  if (v11 == 2)
  {
    *a1 = v16;
    if (v7 > 1)
    {
LABEL_43:
      if (v7 == 2)
      {
        *&a1[v11] = v15;
      }

      else
      {
        *&a1[v11] = v15;
      }

      return;
    }
  }

  else
  {
    *a1 = v14;
    if (v7 > 1)
    {
      goto LABEL_43;
    }
  }

LABEL_40:
  if (v7)
  {
    a1[v11] = v15;
  }
}

uint64_t type metadata completion function for PausableTimelineSchedule.Entries(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  result = type metadata accessor for Optional();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PausableTimelineSchedule.Entries(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  v9 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!v7)
  {
    ++v9;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 > v8)
  {
    v10 = 8 * v9;
    if (v9 > 3)
    {
      goto LABEL_8;
    }

    v12 = ((a2 - v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v12))
    {
      v11 = *(a1 + v9);
      if (v11)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v12 <= 0xFF)
      {
        if (v12 < 2)
        {
          goto LABEL_26;
        }

LABEL_8:
        v11 = *(a1 + v9);
        if (!*(a1 + v9))
        {
          goto LABEL_26;
        }

LABEL_15:
        v13 = (v11 - 1) << v10;
        if (v9 > 3)
        {
          v13 = 0;
        }

        if (v9)
        {
          if (v9 > 3)
          {
            LODWORD(v9) = 4;
          }

          if (v9 > 2)
          {
            if (v9 == 3)
            {
              LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              LODWORD(v9) = *a1;
            }
          }

          else if (v9 == 1)
          {
            LODWORD(v9) = *a1;
          }

          else
          {
            LODWORD(v9) = *a1;
          }
        }

        return v8 + (v9 | v13) + 1;
      }

      v11 = *(a1 + v9);
      if (*(a1 + v9))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_26:
  if (v7 < 2)
  {
    return 0;
  }

  v15 = (*(v6 + 48))(a1);
  if (v15 >= 2)
  {
    return v15 - 1;
  }

  else
  {
    return 0;
  }
}

void storeEnumTagSinglePayload for PausableTimelineSchedule.Entries(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = 0;
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = *(v8 + 84);
  v10 = v9 - 1;
  if (v9)
  {
    v11 = *(v8 + 64);
  }

  else
  {
    v10 = 0;
    v11 = *(v8 + 64) + 1;
  }

  if (a3 <= v10)
  {
    goto LABEL_15;
  }

  if (v11 <= 3)
  {
    v12 = ((a3 - v10 + ~(-1 << (8 * v11))) >> (8 * v11)) + 1;
    if (HIWORD(v12))
    {
      v7 = 4;
      if (v10 >= a2)
      {
        goto LABEL_25;
      }

      goto LABEL_16;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    if (v12 >= 2)
    {
      v7 = v13;
    }

    else
    {
      v7 = 0;
    }

LABEL_15:
    if (v10 >= a2)
    {
      goto LABEL_25;
    }

    goto LABEL_16;
  }

  v7 = 1;
  if (v10 >= a2)
  {
LABEL_25:
    if (v7 > 1)
    {
      if (v7 != 2)
      {
        *&a1[v11] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      *&a1[v11] = 0;
    }

    else if (v7)
    {
      a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_32;
    }

    if (!a2)
    {
      return;
    }

LABEL_32:
    if (v9 >= 2)
    {
      v17 = *(v8 + 56);

      v17(a1, a2 + 1);
    }

    return;
  }

LABEL_16:
  v14 = ~v10 + a2;
  if (v11 >= 4)
  {
    bzero(a1, v11);
    *a1 = v14;
    v15 = 1;
    if (v7 > 1)
    {
      goto LABEL_43;
    }

    goto LABEL_40;
  }

  v15 = (v14 >> (8 * v11)) + 1;
  if (!v11)
  {
LABEL_39:
    if (v7 > 1)
    {
      goto LABEL_43;
    }

    goto LABEL_40;
  }

  v16 = v14 & ~(-1 << (8 * v11));
  bzero(a1, v11);
  if (v11 == 3)
  {
    *a1 = v16;
    a1[2] = BYTE2(v16);
    goto LABEL_39;
  }

  if (v11 == 2)
  {
    *a1 = v16;
    if (v7 > 1)
    {
LABEL_43:
      if (v7 == 2)
      {
        *&a1[v11] = v15;
      }

      else
      {
        *&a1[v11] = v15;
      }

      return;
    }
  }

  else
  {
    *a1 = v14;
    if (v7 > 1)
    {
      goto LABEL_43;
    }
  }

LABEL_40:
  if (v7)
  {
    a1[v11] = v15;
  }
}

double View.workoutViewStyle(_:)(char *a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  View.environment<A>(_:_:)();

  return result;
}

Swift::Int WorkoutViewStyle.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance WorkoutViewStyle()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance WorkoutViewStyle(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for static EnvironmentKey._valuesEqual(_:_:) in conformance WorkoutViewStyleKey(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = lazy protocol witness table accessor for type WorkoutViewStyle and conformance WorkoutViewStyle();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

void *EnvironmentValues.workoutViewStyle.getter()
{
  lazy protocol witness table accessor for type WorkoutViewStyleKey and conformance WorkoutViewStyleKey();

  return EnvironmentValues.subscript.getter();
}

uint64_t (*EnvironmentValues.workoutViewStyle.modify(void *a1))(uint64_t a1)
{
  *a1 = v1;
  a1[1] = lazy protocol witness table accessor for type WorkoutViewStyleKey and conformance WorkoutViewStyleKey();
  EnvironmentValues.subscript.getter();
  return EnvironmentValues.workoutViewStyle.modify;
}

unint64_t lazy protocol witness table accessor for type WorkoutViewStyle and conformance WorkoutViewStyle()
{
  result = lazy protocol witness table cache variable for type WorkoutViewStyle and conformance WorkoutViewStyle;
  if (!lazy protocol witness table cache variable for type WorkoutViewStyle and conformance WorkoutViewStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutViewStyle and conformance WorkoutViewStyle);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WorkoutViewStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WorkoutViewStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<WorkoutViewStyle> and conformance _EnvironmentKeyWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<WorkoutViewStyle> and conformance _EnvironmentKeyWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<WorkoutViewStyle> and conformance _EnvironmentKeyWritingModifier<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVy07WorkoutB00G9ViewStyleOGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy07WorkoutB00G9ViewStyleOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<WorkoutViewStyle> and conformance _EnvironmentKeyWritingModifier<A>);
  }

  return result;
}

uint64_t type metadata accessor for MediaSuggestionsList(uint64_t a1)
{
  result = type metadata singleton initialization cache for MediaSuggestionsList;
  if (!type metadata singleton initialization cache for MediaSuggestionsList)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for MediaSuggestionsList(uint64_t a1)
{
  type metadata accessor for [WorkoutMediaSuggestion](319, &lazy cache variable for type metadata for [WorkoutMediaSuggestion], MEMORY[0x277D7DAB0], MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for FIUIWorkoutActivityType();
    if (v2 <= 0x3F)
    {
      type metadata accessor for [WorkoutMediaSuggestion](319, &lazy cache variable for type metadata for Binding<MediaPlaybackConfigurationItem>, MEMORY[0x277D7E648], MEMORY[0x277CE11F8]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Binding<WorkoutMediaSuggestion?>(319);
        if (v4 <= 0x3F)
        {
          type metadata accessor for Binding<Bool>();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata accessor for [WorkoutMediaSuggestion](uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

double closure #1 in MediaSuggestionsList.body.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v37 = a3;
  v5 = type metadata accessor for PlainButtonStyle();
  v6 = *(v5 - 8);
  v35 = v5;
  v36 = v6;
  MEMORY[0x28223BE20](v5);
  v34 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for WorkoutMediaSuggestion();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = type metadata accessor for MediaSuggestionsList(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEy07WorkoutB005MediaE3RowVAA16_FlexFrameLayoutVGAA01_E13ShapeModifierVyAA9RectangleVGGGMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEy07WorkoutB005MediaE3RowVAA16_FlexFrameLayoutVGAA01_E13ShapeModifierVyAA9RectangleVGGGMR);
  v16 = *(v15 - 8);
  v32 = v15;
  v33 = v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v32 - v17;
  outlined init with copy of MediaSuggestionsList(a2, v14);
  v19 = a1;
  (*(v9 + 16))(&v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
  v20 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v21 = (v13 + *(v9 + 80) + v20) & ~*(v9 + 80);
  v22 = swift_allocObject();
  outlined init with take of MediaSuggestionsList(v14, v22 + v20, type metadata accessor for MediaSuggestionsList);
  (*(v9 + 32))(v22 + v21, &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  v38 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB005MediaD3RowVAA16_FlexFrameLayoutVGAA01_D13ShapeModifierVyAA9RectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB005MediaD3RowVAA16_FlexFrameLayoutVGAA01_D13ShapeModifierVyAA9RectangleVGGMR);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<MediaContentRow, _FlexFrameLayout>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>();
  Button.init(action:label:)();
  v23 = v34;
  PlainButtonStyle.init()();
  lazy protocol witness table accessor for type [WorkoutMediaSuggestion] and conformance [A](&lazy protocol witness table cache variable for type Button<ModifiedContent<ModifiedContent<MediaContentRow, _FlexFrameLayout>, _ContentShapeModifier<Rectangle>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEy07WorkoutB005MediaE3RowVAA16_FlexFrameLayoutVGAA01_E13ShapeModifierVyAA9RectangleVGGGMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEy07WorkoutB005MediaE3RowVAA16_FlexFrameLayoutVGAA01_E13ShapeModifierVyAA9RectangleVGGGMR, MEMORY[0x277CDF028]);
  _s7SwiftUI16PlainButtonStyleVAcA09PrimitivedE0AAWlTm_5(&lazy protocol witness table cache variable for type PlainButtonStyle and conformance PlainButtonStyle, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  v24 = v37;
  v25 = v32;
  v26 = v35;
  View.buttonStyle<A>(_:)();
  (*(v36 + 8))(v23, v26);
  (*(v33 + 8))(v18, v25);
  v27 = static Color.white.getter();
  KeyPath = swift_getKeyPath();
  v29 = (v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACy07WorkoutB005MediaD3RowVAA16_FlexFrameLayoutVGAA01_D13ShapeModifierVyAA9RectangleVGGG_AA05PlainiG0VQo_AA022_EnvironmentKeyWritingQ0VyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACy07WorkoutB005MediaD3RowVAA16_FlexFrameLayoutVGAA01_D13ShapeModifierVyAA9RectangleVGGG_AA05PlainiG0VQo_AA022_EnvironmentKeyWritingQ0VyAA5ColorVSgGGMR) + 36));
  *v29 = KeyPath;
  v29[1] = v27;
  v30 = v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACy07WorkoutB005MediaD3RowVAA16_FlexFrameLayoutVGAA01_D13ShapeModifierVyAA9RectangleVGGG_AA05PlainiG0VQo_AA022_EnvironmentKeyWritingQ0VyAA5ColorVSgGGAA06_TraitvQ0VyAA04Listl6InsetsxU0VGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACy07WorkoutB005MediaD3RowVAA16_FlexFrameLayoutVGAA01_D13ShapeModifierVyAA9RectangleVGGG_AA05PlainiG0VQo_AA022_EnvironmentKeyWritingQ0VyAA5ColorVSgGGAA06_TraitvQ0VyAA04Listl6InsetsxU0VGGMR) + 36);
  *(v30 + 32) = 0;
  result = 0.0;
  *v30 = 0u;
  *(v30 + 16) = 0u;
  return result;
}

uint64_t closure #1 in closure #1 in MediaSuggestionsList.body.getter(uint64_t a1, uint64_t a2)
{
  v45 = type metadata accessor for MediaSuggestionsList(0);
  MEMORY[0x28223BE20](v45);
  v38 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for WorkoutMediaSuggestion();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v39 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v42 = *(v8 - 8);
  v43 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore0A15MediaSuggestionVSgMd, "r2\a");
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v38 - v15;
  v47 = *(a1 + 16);
  v48 = *(a1 + 24);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore30MediaPlaybackConfigurationItemCGMd, &_s7SwiftUI7BindingVy11WorkoutCore30MediaPlaybackConfigurationItemCGMR);
  MEMORY[0x20F30B100](&v46, v17);
  v18 = v46;
  WorkoutMediaSuggestion.msSuggestion.getter();
  dispatch thunk of MediaPlaybackConfigurationItem.mediaSuggestion.setter();

  v19 = *(v6 + 16);
  (v19)(v16, a2, v5);
  v40 = v6;
  (*(v6 + 56))(v16, 0, 1, v5);
  v20 = v38;
  outlined init with copy of WorkoutMediaSuggestion?(v16, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore0D15MediaSuggestionVSgGMd, &_s7SwiftUI7BindingVy11WorkoutCore0D15MediaSuggestionVSgGMR);
  Binding.wrappedValue.setter();
  _s11WorkoutCore0A15MediaSuggestionVSgWOhTm_0(v16, &_s11WorkoutCore0A15MediaSuggestionVSgMd, "r2\a");
  static WOLog.mediaPlayback.getter();
  v21 = v39;
  v19();
  v44 = a1;
  v22 = v20;
  outlined init with copy of MediaSuggestionsList(a1, v20);
  v41 = v10;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v47 = v27;
    *v25 = 138412546;
    v28 = WorkoutMediaSuggestion.msSuggestion.getter();
    (*(v40 + 8))(v21, v5);
    *(v25 + 4) = v28;
    *v26 = v28;
    *(v25 + 12) = 2080;
    v29 = [*(v20 + 8) localizedName];
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    outlined destroy of MediaSuggestionsList(v22);
    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, &v47);

    *(v25 + 14) = v33;
    _os_log_impl(&dword_20C66F000, v23, v24, "Selecting media suggestion: %@ for activity type: %s", v25, 0x16u);
    _s11WorkoutCore0A15MediaSuggestionVSgWOhTm_0(v26, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F30E080](v26, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x20F30E080](v27, -1, -1);
    MEMORY[0x20F30E080](v25, -1, -1);

    (*(v42 + 8))(v41, v43);
  }

  else
  {

    (*(v40 + 8))(v21, v5);
    (*(v42 + 8))(v41, v43);
    outlined destroy of MediaSuggestionsList(v20);
  }

  v34 = v44 + *(v45 + 32);
  v35 = *v34;
  v36 = *(v34 + 8);
  LOBYTE(v34) = *(v34 + 16);
  v47 = v35;
  *&v48 = v36;
  BYTE8(v48) = v34;
  LOBYTE(v46) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd, &_s7SwiftUI7BindingVySbGMR);
  return Binding.wrappedValue.setter();
}

uint64_t closure #2 in closure #1 in MediaSuggestionsList.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = type metadata accessor for Font.TextStyle();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MediaContentRow(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB005MediaD3RowVAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB005MediaD3RowVAA16_FlexFrameLayoutVGMR);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v24 = &v24 - v12;
  v13 = type metadata accessor for WorkoutMediaSuggestion();
  (*(*(v13 - 8) + 16))(v9, a1, v13);
  *&v26 = 0x4044000000000000;
  v14 = *MEMORY[0x277CE0A68];
  v15 = *(v4 + 104);
  v15(v6, v14, v3);
  lazy protocol witness table accessor for type Double and conformance Double();
  ScaledMetric.init(wrappedValue:relativeTo:)();
  *&v26 = 0x4020000000000000;
  v15(v6, v14, v3);
  ScaledMetric.init(wrappedValue:relativeTo:)();
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v16 = v24;
  outlined init with take of MediaSuggestionsList(v9, v24, type metadata accessor for MediaContentRow);
  v17 = (v16 + *(v11 + 44));
  v18 = v31;
  v17[4] = v30;
  v17[5] = v18;
  v17[6] = v32;
  v19 = v27;
  *v17 = v26;
  v17[1] = v19;
  v20 = v29;
  v17[2] = v28;
  v17[3] = v20;
  v21 = v16;
  v22 = v25;
  outlined init with take of ModifiedContent<MediaContentRow, _FlexFrameLayout>(v21, v25);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB005MediaD3RowVAA16_FlexFrameLayoutVGAA01_D13ShapeModifierVyAA9RectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB005MediaD3RowVAA16_FlexFrameLayoutVGAA01_D13ShapeModifierVyAA9RectangleVGGMR);
  *(v22 + *(result + 36)) = 0;
  return result;
}

uint64_t protocol witness for View.body.getter in conformance MediaSuggestionsList(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  v7[1] = *v1;
  outlined init with copy of MediaSuggestionsList(v1, v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  outlined init with take of MediaSuggestionsList(v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4, type metadata accessor for MediaSuggestionsList);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore0A15MediaSuggestionVGMd, &_sSay11WorkoutCore0A15MediaSuggestionVGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACy07WorkoutB005MediaD3RowVAA16_FlexFrameLayoutVGAA01_D13ShapeModifierVyAA9RectangleVGGG_AA05PlainiG0VQo_AA022_EnvironmentKeyWritingQ0VyAA5ColorVSgGGAA06_TraitvQ0VyAA04Listl6InsetsxU0VGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACy07WorkoutB005MediaD3RowVAA16_FlexFrameLayoutVGAA01_D13ShapeModifierVyAA9RectangleVGGG_AA05PlainiG0VQo_AA022_EnvironmentKeyWritingQ0VyAA5ColorVSgGGAA06_TraitvQ0VyAA04Listl6InsetsxU0VGGMR);
  lazy protocol witness table accessor for type [WorkoutMediaSuggestion] and conformance [A](&lazy protocol witness table cache variable for type [WorkoutMediaSuggestion] and conformance [A], &_sSay11WorkoutCore0A15MediaSuggestionVGMd, &_sSay11WorkoutCore0A15MediaSuggestionVGMR, MEMORY[0x277D83980]);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>();
  _s7SwiftUI16PlainButtonStyleVAcA09PrimitivedE0AAWlTm_5(&lazy protocol witness table cache variable for type WorkoutMediaSuggestion and conformance WorkoutMediaSuggestion, MEMORY[0x277D7DAB0], MEMORY[0x277D7DAB8]);
  return ForEach<>.init(_:content:)();
}

uint64_t outlined init with copy of MediaSuggestionsList(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MediaSuggestionsList(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double partial apply for closure #1 in MediaSuggestionsList.body.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for MediaSuggestionsList(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return closure #1 in MediaSuggestionsList.body.getter(a1, v6, a2);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACy07WorkoutB005MediaD3RowVAA16_FlexFrameLayoutVGAA01_D13ShapeModifierVyAA9RectangleVGGG_AA05PlainiG0VQo_AA022_EnvironmentKeyWritingQ0VyAA5ColorVSgGGAA06_TraitvQ0VyAA04Listl6InsetsxU0VGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACy07WorkoutB005MediaD3RowVAA16_FlexFrameLayoutVGAA01_D13ShapeModifierVyAA9RectangleVGGG_AA05PlainiG0VQo_AA022_EnvironmentKeyWritingQ0VyAA5ColorVSgGGAA06_TraitvQ0VyAA04Listl6InsetsxU0VGGMR);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type [WorkoutMediaSuggestion] and conformance [A](&lazy protocol witness table cache variable for type _TraitWritingModifier<ListRowInsetsTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA013ListRowInsetsC3KeyVGMd, &_s7SwiftUI21_TraitWritingModifierVyAA013ListRowInsetsC3KeyVGMR, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in MediaSuggestionsList.body.getter()
{
  v1 = *(type metadata accessor for MediaSuggestionsList(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for WorkoutMediaSuggestion() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return closure #1 in closure #1 in MediaSuggestionsList.body.getter(v0 + v2, v5);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<MediaContentRow, _FlexFrameLayout>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<MediaContentRow, _FlexFrameLayout>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<MediaContentRow, _FlexFrameLayout>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB005MediaD3RowVAA16_FlexFrameLayoutVGAA01_D13ShapeModifierVyAA9RectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB005MediaD3RowVAA16_FlexFrameLayoutVGAA01_D13ShapeModifierVyAA9RectangleVGGMR);
    lazy protocol witness table accessor for type ModifiedContent<MediaContentRow, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type [WorkoutMediaSuggestion] and conformance [A](&lazy protocol witness table cache variable for type _ContentShapeModifier<Rectangle> and conformance _ContentShapeModifier<A>, &_s7SwiftUI21_ContentShapeModifierVyAA9RectangleVGMd, &_s7SwiftUI21_ContentShapeModifierVyAA9RectangleVGMR, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<MediaContentRow, _FlexFrameLayout>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<MediaContentRow, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<MediaContentRow, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<MediaContentRow, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB005MediaD3RowVAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB005MediaD3RowVAA16_FlexFrameLayoutVGMR);
    _s7SwiftUI16PlainButtonStyleVAcA09PrimitivedE0AAWlTm_5(&lazy protocol witness table cache variable for type MediaContentRow and conformance MediaContentRow, type metadata accessor for MediaContentRow, &protocol conformance descriptor for MediaContentRow);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<MediaContentRow, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t _s7SwiftUI16PlainButtonStyleVAcA09PrimitivedE0AAWlTm_5(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [WorkoutMediaSuggestion] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with take of MediaSuggestionsList(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of ModifiedContent<MediaContentRow, _FlexFrameLayout>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB005MediaD3RowVAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB005MediaD3RowVAA16_FlexFrameLayoutVGMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of MediaSuggestionsList(uint64_t a1)
{
  v2 = type metadata accessor for MediaSuggestionsList(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s11WorkoutCore0A15MediaSuggestionVSgWOhTm_0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t lazy protocol witness table accessor for type ForEach<[WorkoutMediaSuggestion], String, ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _TraitWritingModifier<ListRowInsetsTraitKey>>> and conformance <> ForEach<A, B, C>()
{
  result = lazy protocol witness table cache variable for type ForEach<[WorkoutMediaSuggestion], String, ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _TraitWritingModifier<ListRowInsetsTraitKey>>> and conformance <> ForEach<A, B, C>;
  if (!lazy protocol witness table cache variable for type ForEach<[WorkoutMediaSuggestion], String, ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _TraitWritingModifier<ListRowInsetsTraitKey>>> and conformance <> ForEach<A, B, C>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7ForEachVySay11WorkoutCore0E15MediaSuggestionVGSSAA15ModifiedContentVyAIyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonM0Rd__lFQOyAA0O0VyAIyAIy0eB00gJ3RowVAA16_FlexFrameLayoutVGAA01_J13ShapeModifierVyAA9RectangleVGGG_AA05PlainoM0VQo_AA022_EnvironmentKeyWritingU0VyAA5ColorVSgGGAA06_TraitzU0VyAA04Listp11InsetsTraitY0VGGGMd, &_s7SwiftUI7ForEachVySay11WorkoutCore0E15MediaSuggestionVGSSAA15ModifiedContentVyAIyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonM0Rd__lFQOyAA0O0VyAIyAIy0eB00gJ3RowVAA16_FlexFrameLayoutVGAA01_J13ShapeModifierVyAA9RectangleVGGG_AA05PlainoM0VQo_AA022_EnvironmentKeyWritingU0VyAA5ColorVSgGGAA06_TraitzU0VyAA04Listp11InsetsTraitY0VGGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForEach<[WorkoutMediaSuggestion], String, ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _TraitWritingModifier<ListRowInsetsTraitKey>>> and conformance <> ForEach<A, B, C>);
  }

  return result;
}

void WorkoutUIController.__allocating_init(rootViewController:unitManager:workoutController:fitnessIntelligenceConnection:inferenceClient:snapshotClient:seymourSubscriptionProvider:workoutVoiceAvailabilityProvider:summaryViewControllerCompletion:)(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, uint64_t a9, uint64_t a10)
{
  v15 = swift_allocObject();
  *(v15 + 4) = 0;
  *(v15 + 5) = 0;
  *(v15 + 3) = 0;
  v38 = OBJC_IVAR____TtC9WorkoutUI19WorkoutUIController_workoutSummaryCoordinator;
  *&v15[OBJC_IVAR____TtC9WorkoutUI19WorkoutUIController_workoutSummaryCoordinator] = 0;
  v16 = &v15[OBJC_IVAR____TtC9WorkoutUI19WorkoutUIController_summaryViewControllerCompletion];
  *v16 = 0;
  v16[1] = 0;
  *(v15 + 2) = a1;
  *(v15 + 6) = a2;
  v37 = a1;
  v39 = a2;
  v17 = [a3 healthStore];
  v18 = [objc_opt_self() standardUserDefaults];
  v19 = [objc_allocWithZone(MEMORY[0x277D7E7C0]) initWithHealthStore:v17 userDefaults:v18 workoutController:a3];

  if (v19)
  {
    *(v15 + 7) = v19;
    *(v15 + 8) = a3;
    v20 = OBJC_IVAR____TtC9WorkoutUI19WorkoutUIController_fitnessIntelligenceConnection;
    v35 = type metadata accessor for FitnessIntelligenceConnection();
    v21 = *(v35 - 8);
    (*(v21 + 16))(&v15[v20], a4, v35);
    v22 = OBJC_IVAR____TtC9WorkoutUI19WorkoutUIController_inferenceClient;
    v23 = type metadata accessor for InferenceClient();
    v24 = *(v23 - 8);
    (*(v24 + 16))(&v15[v22], a5, v23);
    *&v15[OBJC_IVAR____TtC9WorkoutUI19WorkoutUIController_seymourSubscriptionProvider] = a7;
    *&v15[OBJC_IVAR____TtC9WorkoutUI19WorkoutUIController_workoutVoiceAvailabilityProvider] = a8;
    type metadata accessor for MediaPlaybackController();
    v34 = a4;
    v25 = a3;
    v33 = a7;
    v26 = a8;
    *&v15[OBJC_IVAR____TtC9WorkoutUI19WorkoutUIController_mediaPlaybackController] = MediaPlaybackController.__allocating_init()();
    v27 = *v16;
    v28 = v16[1];
    *v16 = a9;
    v16[1] = a10;

    outlined consume of (@escaping @callee_guaranteed (@guaranteed WorkoutSummaryDataSource) -> (@owned UIViewController))?(v27, v28);
    type metadata accessor for WorkoutSummaryCoordinator();
    v29 = swift_allocObject();
    *(v29 + 16) = v37;
    *(v29 + 24) = 0;
    *&v15[v38] = v29;
    v30 = v37;

    type metadata accessor for HealthDatabaseAccessAssertionManager();
    swift_allocObject();
    v31 = v25;
    *&v15[OBJC_IVAR____TtC9WorkoutUI19WorkoutUIController_healthDatabaseAccessAssertionManager] = HealthDatabaseAccessAssertionManager.init(workoutController:)();
    [v31 addObserver_];
    [v31 setInterfaceDelegate_];
    NLWorkoutRecoveryController.recoverFromCrashIfNeeded()();

    v32 = type metadata accessor for SnapshotClient();
    (*(*(v32 - 8) + 8))(a6, v32);
    (*(v24 + 8))(a5, v23);
    (*(v21 + 8))(v34, v35);
  }

  else
  {
    __break(1u);
  }
}

void WorkoutUIController.init(rootViewController:unitManager:workoutController:fitnessIntelligenceConnection:inferenceClient:snapshotClient:seymourSubscriptionProvider:workoutVoiceAvailabilityProvider:summaryViewControllerCompletion:)(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, uint64_t a9, uint64_t a10)
{
  v11 = v10;
  v10[3] = 0;
  v10[4] = 0;
  v10[5] = 0;
  v38 = OBJC_IVAR____TtC9WorkoutUI19WorkoutUIController_workoutSummaryCoordinator;
  *(v10 + OBJC_IVAR____TtC9WorkoutUI19WorkoutUIController_workoutSummaryCoordinator) = 0;
  v16 = (v10 + OBJC_IVAR____TtC9WorkoutUI19WorkoutUIController_summaryViewControllerCompletion);
  *v16 = 0;
  v16[1] = 0;
  v10[2] = a1;
  v10[6] = a2;
  v37 = a1;
  v39 = a2;
  v17 = [a3 healthStore];
  v18 = [objc_opt_self() standardUserDefaults];
  v19 = [objc_allocWithZone(MEMORY[0x277D7E7C0]) initWithHealthStore:v17 userDefaults:v18 workoutController:a3];

  if (v19)
  {
    v10[7] = v19;
    v10[8] = a3;
    v20 = OBJC_IVAR____TtC9WorkoutUI19WorkoutUIController_fitnessIntelligenceConnection;
    v35 = type metadata accessor for FitnessIntelligenceConnection();
    v21 = *(v35 - 8);
    (*(v21 + 16))(v11 + v20, a4, v35);
    v22 = OBJC_IVAR____TtC9WorkoutUI19WorkoutUIController_inferenceClient;
    v34 = a4;
    v23 = type metadata accessor for InferenceClient();
    v24 = *(v23 - 8);
    (*(v24 + 16))(v11 + v22, a5, v23);
    *(v11 + OBJC_IVAR____TtC9WorkoutUI19WorkoutUIController_seymourSubscriptionProvider) = a7;
    *(v11 + OBJC_IVAR____TtC9WorkoutUI19WorkoutUIController_workoutVoiceAvailabilityProvider) = a8;
    type metadata accessor for MediaPlaybackController();
    v25 = a3;
    v33 = a7;
    v26 = a8;
    *(v11 + OBJC_IVAR____TtC9WorkoutUI19WorkoutUIController_mediaPlaybackController) = MediaPlaybackController.__allocating_init()();
    v27 = *v16;
    v28 = v16[1];
    *v16 = a9;
    v16[1] = a10;

    outlined consume of (@escaping @callee_guaranteed (@guaranteed WorkoutSummaryDataSource) -> (@owned UIViewController))?(v27, v28);
    type metadata accessor for WorkoutSummaryCoordinator();
    v29 = swift_allocObject();
    *(v29 + 16) = v37;
    *(v29 + 24) = 0;
    *(v11 + v38) = v29;
    v30 = v37;

    type metadata accessor for HealthDatabaseAccessAssertionManager();
    swift_allocObject();
    v31 = v25;
    *(v11 + OBJC_IVAR____TtC9WorkoutUI19WorkoutUIController_healthDatabaseAccessAssertionManager) = HealthDatabaseAccessAssertionManager.init(workoutController:)();
    [v31 addObserver_];
    [v31 setInterfaceDelegate_];
    NLWorkoutRecoveryController.recoverFromCrashIfNeeded()();

    v32 = type metadata accessor for SnapshotClient();
    (*(*(v32 - 8) + 8))(a6, v32);
    (*(v24 + 8))(a5, v23);
    (*(v21 + 8))(v34, v35);
  }

  else
  {
    __break(1u);
  }
}

void WorkoutUIController.handleWorkoutSessionCompletion(with:workout:)(void *a1, void *a2)
{
  v3 = v2;
  v87 = a2;
  v81 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore25MirroredHostSummaryUpdateVSgMd, &_s11WorkoutCore25MirroredHostSummaryUpdateVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v77 = &v75 - v5;
  v6 = type metadata accessor for Logger();
  v85 = *(v6 - 8);
  v86 = v6;
  MEMORY[0x28223BE20](v6);
  v84 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v78 = &v75 - v9;
  MEMORY[0x28223BE20](v10);
  v76 = &v75 - v11;
  MEMORY[0x28223BE20](v12);
  v79 = &v75 - v13;
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v83 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  MEMORY[0x28223BE20](v17);
  v19 = &v75 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v75 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v75 - v24;
  v28 = MEMORY[0x28223BE20](v26);
  v29 = &v75 - v27;
  v82 = v3;
  v30 = *(v3 + 24);
  v31 = &unk_277DA8000;
  if (v30)
  {
    v32 = [*(v30 + OBJC_IVAR____TtC9WorkoutUI28WorkoutSessionViewController_workout) identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v31 = &unk_277DA8000;
    v33 = *(v15 + 56);
    v33(v29, 0, 1, v14);
  }

  else
  {
    v33 = *(v15 + 56);
    v33(&v75 - v27, 1, 1, v14);
  }

  v34 = [v87 v31[418]];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v33(v25, 0, 1, v14);
  v35 = *(v17 + 48);
  outlined init with copy of UUID?(v29, v19);
  outlined init with copy of UUID?(v25, &v19[v35]);
  v36 = *(v15 + 48);
  v37 = v36(v19, 1, v14);
  v80 = v15;
  if (v37 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_1(v25, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    _s10Foundation4UUIDVSgWOhTm_1(v29, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if (v36(&v19[v35], 1, v14) == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_1(v19, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      goto LABEL_15;
    }

    goto LABEL_9;
  }

  outlined init with copy of UUID?(v19, v22);
  if (v36(&v19[v35], 1, v14) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_1(v25, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    _s10Foundation4UUIDVSgWOhTm_1(v29, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    (*(v15 + 8))(v22, v14);
LABEL_9:
    _s10Foundation4UUIDVSgWOhTm_1(v19, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
    goto LABEL_10;
  }

  v50 = &v19[v35];
  v51 = v83;
  (*(v15 + 32))(v83, v50, v14);
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  v52 = dispatch thunk of static Equatable.== infix(_:_:)();
  v53 = *(v15 + 8);
  v53(v51, v14);
  _s10Foundation4UUIDVSgWOhTm_1(v25, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  _s10Foundation4UUIDVSgWOhTm_1(v29, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v53(v22, v14);
  _s10Foundation4UUIDVSgWOhTm_1(v19, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if (v52)
  {
LABEL_15:
    if (v81)
    {
      v54 = v82;
      v55 = *(v82 + OBJC_IVAR____TtC9WorkoutUI19WorkoutUIController_summaryViewControllerCompletion);
      v56 = v81;
      if (v55)
      {
        v57 = v79;
        static WOLog.app.getter();
        v58 = Logger.logObject.getter();
        v59 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v58, v59))
        {
          v60 = swift_slowAlloc();
          *v60 = 0;
          _os_log_impl(&dword_20C66F000, v58, v59, "Presenting SummaryView in WorkoutSessionViewController", v60, 2u);
          MEMORY[0x20F30E080](v60, -1, -1);
        }

        (*(v85 + 8))(v57, v86);
        if (*(v54 + 24) && (v61 = v56, , v62 = v77, MirroredHostSummaryUpdate.init(hkWorkout:)(), v63 = type metadata accessor for MirroredHostSummaryUpdate(), (*(*(v63 - 8) + 56))(v62, 0, 1, v63), SessionViewModel.summaryUpdate.setter(v62), , (v64 = *(v54 + 24)) != 0))
        {
          v65 = *(v64 + OBJC_IVAR____TtC9WorkoutUI28WorkoutSessionViewController_sessionViewModel);
          swift_beginAccess();
          if (*(v65 + 17) == 3)
          {

            *(v65 + 17) = 3;
          }

          else
          {
            KeyPath = swift_getKeyPath();
            MEMORY[0x28223BE20](KeyPath);
            *(&v75 - 2) = v65;
            *(&v75 - 8) = 3;
            v88 = v65;
            _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, type metadata accessor for SessionViewModel, &protocol conformance descriptor for SessionViewModel);

            ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
          }
        }

        else
        {
        }
      }

      else
      {
        v70 = v76;
        static WOLog.app.getter();
        v71 = Logger.logObject.getter();
        v72 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v71, v72))
        {
          v73 = swift_slowAlloc();
          *v73 = 0;
          _os_log_impl(&dword_20C66F000, v71, v72, "summaryViewControllerCompletion is nil. Dismissing WorkoutSessionViewController", v73, 2u);
          MEMORY[0x20F30E080](v73, -1, -1);
        }

        (*(v85 + 8))(v70, v86);
        WorkoutUIController.dismissWorkoutSessionViewController(completion:)(0, 0);
      }
    }

    else
    {
      v66 = v78;
      static WOLog.app.getter();
      v67 = Logger.logObject.getter();
      v68 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        *v69 = 0;
        _os_log_impl(&dword_20C66F000, v67, v68, "HKWorkout snapshot is empty. Dismissing WorkoutSessionViewController", v69, 2u);
        MEMORY[0x20F30E080](v69, -1, -1);
      }

      (*(v85 + 8))(v66, v86);
      WorkoutUIController.dismissWorkoutSessionViewController(completion:)(0, 0);
    }

    return;
  }

LABEL_10:
  v38 = v84;
  static WOLog.app.getter();
  v39 = v87;
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v89[0] = v43;
    *v42 = 136315394;
    *(v42 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002DLL, 0x800000020CB9E3B0, v89);
    *(v42 + 12) = 2080;
    v44 = [v39 identifier];
    v45 = v83;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v46 = dispatch thunk of CustomStringConvertible.description.getter();
    v48 = v47;
    (*(v80 + 8))(v45, v14);
    v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v48, v89);

    *(v42 + 14) = v49;
    _os_log_impl(&dword_20C66F000, v40, v41, "%s workoutSessionViewController's workout doesn't match completed workout=%s, ignoring", v42, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F30E080](v43, -1, -1);
    MEMORY[0x20F30E080](v42, -1, -1);
  }

  (*(v85 + 8))(v38, v86);
}

void WorkoutUIController.dismissWorkoutSessionViewController(completion:)(void (*a1)(void), uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + 40);
  if (v6)
  {
    v7 = v6;
    dispatch thunk of LiveWorkoutContextManager.cancelAnyPendingAnnouncements()();
  }

  v8 = *(v3 + 24);
  if (v8)
  {
    v9 = v8;
    v10 = [v9 presentedViewController];
    if (v10)
    {
      v11 = v10;
      [v10 dismissViewControllerAnimated:1 completion:0];
    }

    v12 = swift_allocObject();
    v12[2] = v3;
    v12[3] = a1;
    v12[4] = a2;
    v14[4] = partial apply for closure #1 in WorkoutUIController.dismissWorkoutSessionViewController(completion:);
    v14[5] = v12;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 1107296256;
    v14[2] = thunk for @escaping @callee_guaranteed () -> ();
    v14[3] = &block_descriptor_71_1;
    v13 = _Block_copy(v14);

    sub_20C68F094(a1, a2);

    [v9 dismissViewControllerAnimated:1 completion:v13];
    _Block_release(v13);
  }

  else if (a1)
  {
    a1();
  }
}

id *WorkoutUIController.deinit()
{
  v1 = OBJC_IVAR____TtC9WorkoutUI19WorkoutUIController_fitnessIntelligenceConnection;
  v2 = type metadata accessor for FitnessIntelligenceConnection();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC9WorkoutUI19WorkoutUIController_inferenceClient;
  v4 = type metadata accessor for InferenceClient();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  outlined consume of (@escaping @callee_guaranteed (@guaranteed WorkoutSummaryDataSource) -> (@owned UIViewController))?(*(v0 + OBJC_IVAR____TtC9WorkoutUI19WorkoutUIController_summaryViewControllerCompletion), *(v0 + OBJC_IVAR____TtC9WorkoutUI19WorkoutUIController_summaryViewControllerCompletion + 8));

  return v0;
}

uint64_t WorkoutUIController.__deallocating_deinit()
{
  WorkoutUIController.deinit();

  return swift_deallocClassInstance();
}

uint64_t closure #1 in WorkoutUIController.workoutController(_:transitionedWorkout:toState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x2822009F8](closure #1 in WorkoutUIController.workoutController(_:transitionedWorkout:toState:), 0, 0);
}

uint64_t closure #1 in WorkoutUIController.workoutController(_:transitionedWorkout:toState:)()
{
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC9WorkoutUI19WorkoutUIController_mediaPlaybackController);
  *(v0 + 32) = v1;
  if (v1)
  {
    v5 = (*MEMORY[0x277D7E3E8] + MEMORY[0x277D7E3E8]);
    v2 = swift_task_alloc();
    *(v0 + 40) = v2;
    *v2 = v0;
    v2[1] = closure #1 in WorkoutUIController.workoutController(_:transitionedWorkout:toState:);

    return v5();
  }

  else
  {
    **(v0 + 16) = 1;
    v4 = *(v0 + 8);

    return v4();
  }
}

{

  return MEMORY[0x2822009F8](closure #1 in WorkoutUIController.workoutController(_:transitionedWorkout:toState:), 0, 0);
}

{
  **(v0 + 16) = *(v0 + 32) == 0;
  return (*(v0 + 8))();
}

void WorkoutUIController.workoutController(_:startSource:sessionControl:)(void *a1, uint64_t a2)
{
  if (*(v2 + 24))
  {
    v5 = swift_allocObject();
    v5[2] = v2;
    v5[3] = a1;
    v5[4] = a2;
    v6 = a1;

    WorkoutUIController.dismissWorkoutSessionViewController(completion:)(partial apply for closure #1 in WorkoutUIController.workoutController(_:startSource:sessionControl:), v5);
  }

  else if (a1)
  {

    WorkoutUIController.presentWorkoutSessionViewController(workoutController:startSource:)(a1, a2, 0);
  }

  else
  {
    __break(1u);
  }
}

void WorkoutUIController.presentWorkoutSessionViewController(workoutController:startSource:)(void *a1, uint64_t a2, int a3)
{
  v4 = v3;
  LODWORD(v56) = a3;
  v55 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v55 - v7;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v59 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v55 - v13;
  static WOLog.app.getter();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  v17 = os_log_type_enabled(v15, v16);
  v58 = v10;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v60[0] = v19;
    *v18 = 136315138;
    *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000043, 0x800000020CB9E5D0, v60);
    _os_log_impl(&dword_20C66F000, v15, v16, "%s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x20F30E080](v19, -1, -1);
    MEMORY[0x20F30E080](v18, -1, -1);
  }

  v57 = *(v10 + 8);
  v57(v14, v9);
  v20 = *(v4 + OBJC_IVAR____TtC9WorkoutUI19WorkoutUIController_workoutVoiceAvailabilityProvider);
  v21 = *(v4 + OBJC_IVAR____TtC9WorkoutUI19WorkoutUIController_summaryViewControllerCompletion);
  v22 = *(v4 + OBJC_IVAR____TtC9WorkoutUI19WorkoutUIController_summaryViewControllerCompletion + 8);
  v23 = objc_allocWithZone(type metadata accessor for WorkoutSessionViewController());
  v24 = v20;
  v25 = a1;
  sub_20C68F094(v21, v22);
  v26 = WorkoutSessionViewController.init(workoutController:workoutVoiceAvailabilityProvider:summaryViewControllerCompletion:)(v25, v24, v21, v22);
  [v26 setModalPresentationStyle_];
  v27 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];

  [v27 setModalPresentationStyle_];
  v28 = [v27 navigationBar];
  [v28 setHidden_];

  [v27 setDelegate_];
  v29 = *(v4 + 24);
  *(v4 + 24) = v26;
  v30 = v26;

  v31 = [v25 activeWorkout];
  if (v31)
  {
    v32 = v31;
    v33 = [v31 analyticsEventBuilder];
    v34 = *(v4 + OBJC_IVAR____TtC9WorkoutUI19WorkoutUIController_seymourSubscriptionProvider);
    v35 = OBJC_IVAR___NLSeymourSubscriptionProvider_subscriptionStatus;
    swift_beginAccess();
    [v33 recordHasFitnessPlusSubscription_];

    if ((v56 & 1) != 0 || v55 != 10)
    {
      v36 = [v32 activityType];
      WorkoutUIController.startMediaPlaybackIfEnabled(for:)(v36);
    }

    v37 = type metadata accessor for TaskPriority();
    (*(*(v37 - 8) + 56))(v8, 1, 1, v37);
    type metadata accessor for MainActor();
    v38 = v30;
    v39 = v32;

    v40 = static MainActor.shared.getter();
    v41 = swift_allocObject();
    v42 = MEMORY[0x277D85700];
    v41[2] = v40;
    v41[3] = v42;
    v41[4] = v39;
    v41[5] = v4;
    v41[6] = v38;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v8, &async function pointer to partial apply for closure #1 in WorkoutUIController.presentWorkoutSessionViewController(workoutController:startSource:), v41);

    static WOLog.app.getter();
    v43 = v38;
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v56 = v39;
      v47 = v46;
      v48 = v30;
      v49 = v9;
      v50 = swift_slowAlloc();
      *v47 = 138412290;
      *(v47 + 4) = v43;
      *v50 = v26;
      v51 = v43;
      _os_log_impl(&dword_20C66F000, v44, v45, "Presenting WorkoutSessionViewController=%@", v47, 0xCu);
      _s10Foundation4UUIDVSgWOhTm_1(v50, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v52 = v50;
      v9 = v49;
      v30 = v48;
      MEMORY[0x20F30E080](v52, -1, -1);
      v53 = v47;
      v39 = v56;
      MEMORY[0x20F30E080](v53, -1, -1);
    }

    v57(v59, v9);
    v54 = *(v4 + 16);
    [v54 presentViewController:v27 animated:1 completion:0];
  }
}

void WorkoutUIController.workoutController(_:mirroredStart:)(void *a1, void *a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (dispatch thunk of LiveWorkoutConfiguration.isMirroredStart.getter())
  {

    WorkoutUIController.presentMirroredStartViewController(workoutController:liveWorkoutConfiguration:)(a1, a2);
  }

  else
  {
    static WOLog.app.getter();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_20C66F000, v8, v9, "MirroredStart source not .mirroredStart or .mirroredStartSiri, ignoring", v10, 2u);
      MEMORY[0x20F30E080](v10, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
  }
}

void WorkoutUIController.presentMirroredStartViewController(workoutController:liveWorkoutConfiguration:)(void *a1, void *a2)
{
  v81 = a1;
  started = type metadata accessor for MirroredStartContentType();
  v83 = *(started - 8);
  v84 = started;
  MEMORY[0x28223BE20](started);
  v87 = &v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Logger();
  v88 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v82 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v74 - v8;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v80 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v74 - v14;
  v79 = v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v74 - v18;
  v20 = LiveWorkoutConfiguration.configuration.getter();
  dispatch thunk of WorkoutConfiguration.uuid.getter();

  static WOLog.dataLink.getter();
  v21 = *(v11 + 16);
  v86 = v19;
  v77 = v21;
  v78 = v11 + 16;
  v21(v15, v19, v10);
  v22 = a2;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();

  v25 = os_log_type_enabled(v23, v24);
  v85 = v5;
  v90 = v11;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v91 = v27;
    *v26 = 136315394;
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = v29;
    (*(v90 + 8))(v15, v10);
    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, &v91);

    *(v26 + 4) = v31;
    *(v26 + 12) = 2080;
    v32 = dispatch thunk of LiveWorkoutConfiguration.logString.getter();
    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, &v91);

    *(v26 + 14) = v34;
    _os_log_impl(&dword_20C66F000, v23, v24, "[mirrored] MirroredStart workout_configuration %s, %s", v26, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F30E080](v27, -1, -1);
    MEMORY[0x20F30E080](v26, -1, -1);

    (*(v88 + 8))(v9, v85);
  }

  else
  {

    (*(v11 + 8))(v15, v10);
    (*(v88 + 8))(v9, v5);
  }

  v35 = v10;
  v83[13](v87, *MEMORY[0x277D7E478], v84);
  v36 = LiveWorkoutConfiguration.configuration.getter();
  v37 = [v36 serialize];

  v38 = [v37 protobuf];
  v39 = [v38 data];

  if (v39)
  {
    type metadata accessor for MirroredStart();
    v40 = swift_allocBox();
    static Data._unconditionallyBridgeFromObjectiveC(_:)();

    dispatch thunk of LiveWorkoutConfiguration.startSource.getter();
    MirroredStart.init(contentType:contentData:startSource:)();
    type metadata accessor for WorkoutCoreInjector();
    v41 = static WorkoutCoreInjector.shared.getter();
    v75 = dispatch thunk of WorkoutCoreInjector.inject()();

    v42 = swift_allocObject();
    v76 = v42;
    v43 = v81;
    *(v42 + 16) = v22;
    *(v42 + 24) = v43;
    v44 = v22;
    v45 = v80;
    v77(v80, v86, v35);
    v46 = v90;
    v47 = (*(v90 + 80) + 24) & ~*(v90 + 80);
    v48 = (v79 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
    v49 = swift_allocObject();
    *(v49 + 16) = v40;
    v50 = *(v46 + 32);
    v87 = v35;
    v50(v49 + v47, v45, v35);
    *(v49 + v48) = v44;
    v51 = v75;
    *(v49 + ((v48 + 15) & 0xFFFFFFFFFFFFFFF8)) = v75;
    v44;
    v83 = v43;
    v84 = v40;

    v81 = v51;
    v52 = LiveWorkoutConfiguration.configuration.getter();
    LiveWorkoutConfiguration.domainAccessor.getter();
    LOBYTE(v46) = WorkoutConfiguration.isUltraModeEnabledOnWatch(domainAccessor:)();

    swift_unknownObjectRelease();
    v53 = (v46 & 1) == 0;
    v54 = LiveWorkoutConfiguration.configuration.getter();
    v55 = objc_allocWithZone(type metadata accessor for SafetyMonitorManager(0));
    outlined copy of MirroredStartCurrentView(v53);
    v56 = [v55 init];
    v57 = [objc_allocWithZone(type metadata accessor for WorkoutSafetyCheckIn(0)) init];
    v58 = swift_allocObject();
    swift_weakInit();
    type metadata accessor for MirroredStartViewModel(0);
    v59 = swift_allocObject();
    *(v59 + 96) = 0;

    v60 = v76;

    ObservationRegistrar.init()();
    *(v59 + 16) = v54;
    *(v59 + 24) = v53;
    *(v59 + 32) = v56;
    *(v59 + 40) = v57;
    *(v59 + 48) = partial apply for closure #2 in WorkoutUIController.presentMirroredStartViewController(workoutController:liveWorkoutConfiguration:);
    *(v59 + 56) = v49;
    *(v59 + 64) = partial apply for closure #1 in WorkoutUIController.presentMirroredStartViewController(workoutController:liveWorkoutConfiguration:);
    *(v59 + 72) = v60;
    *(v59 + 80) = partial apply for closure #3 in WorkoutUIController.presentMirroredStartViewController(workoutController:liveWorkoutConfiguration:);
    *(v59 + 88) = v58;

    v61 = v82;
    static WOLog.dataLink.getter();
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&dword_20C66F000, v62, v63, "Presenting MirroredStartViewController", v64, 2u);
      MEMORY[0x20F30E080](v64, -1, -1);
    }

    (*(v88 + 8))(v61, v85);
    v65 = objc_allocWithZone(type metadata accessor for MirroredStartViewController());
    v66 = v83;

    v67 = MirroredStartViewController.init(workoutController:mirroredStartViewModel:)(v66, v59);
    [v67 setModalPresentationStyle_];
    if (dispatch thunk of LiveWorkoutConfiguration.startSource.getter() != 10)
    {
      v68 = dispatch thunk of LiveWorkoutConfiguration.currentActivityType.getter();
      WorkoutUIController.startMediaPlaybackIfEnabled(for:)(v68);
    }

    v69 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];

    [v69 setModalPresentationStyle_];
    v70 = [v69 navigationBar];
    [v70 setHidden_];

    [v69 setDelegate_];
    v71 = v89;
    v72 = *(v89 + 32);
    *(v89 + 32) = v67;
    v73 = v67;

    [*(v71 + 16) presentViewController:v69 animated:1 completion:0];

    outlined consume of MirroredStartCurrentView(v53);
    (*(v90 + 8))(v86, v87);
  }

  else
  {
    __break(1u);
  }
}

double WorkoutUIController.startMediaPlaybackIfEnabled(for:)(uint64_t a1)
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  if (*(v1 + OBJC_IVAR____TtC9WorkoutUI19WorkoutUIController_mediaPlaybackController))
  {
    v6 = *(v1 + OBJC_IVAR____TtC9WorkoutUI19WorkoutUIController_mediaPlaybackController);
  }

  else
  {
    type metadata accessor for MediaPlaybackController();
    v6 = MediaPlaybackController.__allocating_init()();
  }

  dispatch thunk of MediaPlaybackController.setActivityType(_:)();
  v7 = [*(v2 + 64) activeWorkout];
  if (v7)
  {
    v8 = v7;
    dispatch thunk of MediaPlaybackController.setActiveWorkout(_:)();
  }

  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v6;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v5, &async function pointer to partial apply for closure #1 in WorkoutUIController.startMediaPlaybackIfEnabled(for:), v10);

  return result;
}

uint64_t closure #1 in WorkoutUIController.presentWorkoutSessionViewController(workoutController:startSource:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v6[11] = swift_task_alloc();
  v7 = type metadata accessor for InferenceClient();
  v6[12] = v7;
  v6[13] = *(v7 - 8);
  v6[14] = swift_task_alloc();
  v8 = type metadata accessor for FitnessIntelligenceConnection();
  v6[15] = v8;
  v6[16] = *(v8 - 8);
  v6[17] = swift_task_alloc();
  v6[18] = type metadata accessor for MainActor();
  v6[19] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in WorkoutUIController.presentWorkoutSessionViewController(workoutController:startSource:), v10, v9);
}

uint64_t closure #1 in WorkoutUIController.presentWorkoutSessionViewController(workoutController:startSource:)()
{
  v1 = v0[8];

  v2 = [v1 sessionActivity];
  v3 = NLSessionActivity.coreLiveWorkoutConfiguration.getter();

  LOBYTE(v2) = dispatch thunk of LiveWorkoutConfiguration.configureWithWorkoutVoiceMotivation(shouldLog:)();
  if (v2)
  {
    v4 = v0[16];
    v38 = v0[15];
    v39 = v0[17];
    v5 = v0[13];
    v40 = v0[12];
    v41 = v0[14];
    v6 = v0[9];
    v7 = v0[10];
    v8 = v0[8];
    v42 = *(v6 + 48);
    v9 = OBJC_IVAR____TtC9WorkoutUI19WorkoutUIController_fitnessIntelligenceConnection;
    v37 = OBJC_IVAR____TtC9WorkoutUI19WorkoutUIController_inferenceClient;
    v10 = *(v6 + OBJC_IVAR____TtC9WorkoutUI19WorkoutUIController_workoutVoiceAvailabilityProvider);
    type metadata accessor for LiveWorkoutContextManager();
    type metadata accessor for LocationManager();
    v11 = v8;
    v12 = static LocationManager.shared.getter();
    dispatch thunk of LocationManager.lastLocation.getter();

    v13 = *(v7 + OBJC_IVAR____TtC9WorkoutUI28WorkoutSessionViewController_activityRingProgressMonitor);
    (*(v4 + 16))(v39, v6 + v9, v38);
    (*(v5 + 16))(v41, v6 + v37, v40);
    type metadata accessor for WorkoutVoiceAvailabilityProvider();
    v14 = v13;
    v15 = v42;
    v16 = v10;
    v17 = LiveWorkoutContextManager.__allocating_init(workout:lastKnownLocation:activityRingProgressMonitor:unitManager:fitnessIntelligenceConnection:inferenceClient:workoutVoiceAvailabilityProvider:momentCoordinator:)();
    v18 = [v11 sessionActivity];
    [v18 addSessionDataObserver_];

    v19 = [v11 sessionActivity];
    [v19 addSplitsUpdateObserver_];

    [v11 addStateObserver_];
    result = dispatch thunk of LiveWorkoutContextManager.setDelegate(_:)();
    v21 = *(v7 + OBJC_IVAR____TtC9WorkoutUI28WorkoutSessionViewController_workoutAlertPresenter);
    if (!v21)
    {
      __break(1u);
      return result;
    }

    v23 = v0[10];
    v22 = v0[11];
    v24 = v21;
    dispatch thunk of LiveWorkoutContextManager.setAlertDelegate(_:)();

    v25 = *(v23 + OBJC_IVAR____TtC9WorkoutUI28WorkoutSessionViewController_metricsPublisher);
    dispatch thunk of LiveWorkoutContextManager.setMetricsPublisher(_:)();

    v26 = type metadata accessor for TaskPriority();
    (*(*(v26 - 8) + 56))(v22, 1, 1, v26);
    v27 = v17;
    v28 = static MainActor.shared.getter();
    v29 = swift_allocObject();
    v30 = MEMORY[0x277D85700];
    v29[2] = v28;
    v29[3] = v30;
    v29[4] = v27;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v22, &async function pointer to partial apply for closure #1 in WorkoutSessionViewController.configureLiveWorkoutContextManager(workout:unitManager:fitnessIntelligenceConnection:inferenceClient:workoutVoiceAvailabilityProvider:), v29);

    outlined init with copy of SessionControls(v23 + OBJC_IVAR____TtC9WorkoutUI28WorkoutSessionViewController_sessionControls, (v0 + 2));
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI15SessionControls_pMd, &_s9WorkoutUI15SessionControls_pMR);
    type metadata accessor for WorkoutSessionControls();
    if (swift_dynamicCast())
    {
      v31 = v0[7];
      v32 = *(v31 + 40);
      *(v31 + 40) = v27;
      v33 = v27;
    }

    v34 = v0[9];
    v35 = *(v34 + 40);
    *(v34 + 40) = v27;
  }

  v36 = v0[1];

  return v36();
}

double closure #1 in WorkoutUIController.presentMirroredStartViewController(workoutController:liveWorkoutConfiguration:)(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  type metadata accessor for MainActor();
  v8 = a1;
  v9 = a2;
  v10 = static MainActor.shared.getter();
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D85700];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = v8;
  v11[5] = v9;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v6, &async function pointer to partial apply for closure #1 in closure #1 in WorkoutUIController.presentMirroredStartViewController(workoutController:liveWorkoutConfiguration:), v11);

  return result;
}

uint64_t closure #1 in closure #1 in WorkoutUIController.presentMirroredStartViewController(workoutController:liveWorkoutConfiguration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[19] = a4;
  v5[20] = a5;
  type metadata accessor for MainActor();
  v5[21] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[22] = v7;
  v5[23] = v6;

  return MEMORY[0x2822009F8](closure #1 in closure #1 in WorkoutUIController.presentMirroredStartViewController(workoutController:liveWorkoutConfiguration:), v7, v6);
}

uint64_t closure #1 in closure #1 in WorkoutUIController.presentMirroredStartViewController(workoutController:liveWorkoutConfiguration:)()
{
  v1 = v0[19];
  v2 = v0[20];
  dispatch thunk of LiveWorkoutConfiguration.startSource.setter();
  v3 = [objc_opt_self() defaultDeadline];
  v0[24] = v3;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = closure #1 in closure #1 in WorkoutUIController.presentMirroredStartViewController(workoutController:liveWorkoutConfiguration:);
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo16NLSessionControlCSgs5NeverOGMd, &_sSccySo16NLSessionControlCSgs5NeverOGMR);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) (@unowned NLSessionControl?) -> () with result type NLSessionControl?;
  v0[13] = &block_descriptor_52;
  v0[14] = v4;
  [v2 startSessionWith:v1 countdownDeadline:v3 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 176);

  return MEMORY[0x2822009F8](closure #1 in closure #1 in WorkoutUIController.presentMirroredStartViewController(workoutController:liveWorkoutConfiguration:), v2, v1);
}

{
  v1 = v0[24];

  v2 = v0[18];

  v3 = v0[1];

  return v3();
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) (@unowned NLSessionControl?) -> () with result type NLSessionControl?(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return MEMORY[0x282200948](v4);
}

void closure #2 in WorkoutUIController.presentMirroredStartViewController(workoutController:liveWorkoutConfiguration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v98 = a6;
  v103 = a5;
  v106 = a4;
  v9 = type metadata accessor for UUID();
  v107 = *(v9 - 8);
  v108 = v9;
  MEMORY[0x28223BE20](v9);
  v101 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v97 = &v93 - v12;
  v96 = v13;
  MEMORY[0x28223BE20](v14);
  v99 = &v93 - v15;
  v16 = type metadata accessor for MirroredStart();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for Logger();
  isa = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v102 = &v93 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v100 = &v93 - v23;
  MEMORY[0x28223BE20](v24);
  v26 = &v93 - v25;
  v110 = a3;
  v27 = swift_projectBox();
  v104 = v20;
  v105 = a1;
  if ((a2 - 19) >= 2)
  {
    swift_beginAccess();
    MirroredStart.startSource.getter();
    swift_endAccess();
    swift_beginAccess();
    MirroredStart.startSource.setter();
    swift_endAccess();
    static WOLog.dataLink.getter();

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v28, v29))
    {
      LODWORD(v95) = v29;
      v30 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      v118[0] = v94;
      *v30 = 136315394;
      v31 = NLWorkoutStartSourceDescription();
      if (v31)
      {
        v32 = v31;
        v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v35 = v34;
      }

      else
      {
        v33 = 0;
        v35 = 0;
      }

      aBlock = v33;
      v112 = v35;
      v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
      v36 = Optional.description.getter();
      v38 = v37;

      v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v38, v118);

      *(v30 + 4) = v39;
      *(v30 + 12) = 2080;
      swift_beginAccess();
      MirroredStart.startSource.getter();
      swift_endAccess();
      v40 = NLWorkoutStartSourceDescription();
      if (v40)
      {
        v41 = v40;
        v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v44 = v43;
      }

      else
      {
        v42 = 0;
        v44 = 0;
      }

      aBlock = v42;
      v112 = v44;
      v45 = Optional.description.getter();
      v47 = v46;

      v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v47, v118);

      *(v30 + 14) = v48;
      _os_log_impl(&dword_20C66F000, v28, v95, "[mirrored] MirroredStart startSource changed from %s to %s", v30, 0x16u);
      v49 = v94;
      swift_arrayDestroy();
      MEMORY[0x20F30E080](v49, -1, -1);
      MEMORY[0x20F30E080](v30, -1, -1);

      v20 = v104;
      (*(isa + 1))(v26, v104);
      a1 = v105;
    }

    else
    {

      v20 = v104;
      (*(isa + 1))(v26, v104);
    }
  }

  swift_beginAccess();
  (*(v17 + 16))(v19, v27, v16);
  v50 = MirroredStart.serialize()();
  v102 = v51;
  v101 = v50;
  (*(v17 + 8))(v19, v16);
  type metadata accessor for WorkoutSignposter();
  v52 = static WorkoutSignposter.shared.getter();
  dispatch thunk of WorkoutSignposter.emit(signpost:)();

  static Double.machTimestamp.getter();
  v54 = v53;
  v55 = v100;
  static WOLog.dataLink.getter();
  v56 = v107;
  v57 = v99;
  v58 = v108;
  v95 = *(v107 + 16);
  v94 = v107 + 16;
  v95(v99, v106, v108);

  v59 = Logger.logObject.getter();
  v60 = static os_log_type_t.default.getter();

  v61 = v60;
  if (os_log_type_enabled(v59, v60))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v117[0] = v63;
    *v62 = 136315394;
    swift_beginAccess();
    MirroredStart.startSource.getter();
    swift_endAccess();
    v64 = NLWorkoutStartSourceDescription();
    if (v64)
    {
      v65 = v64;
      v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v68 = v67;
    }

    else
    {
      v66 = 0;
      v68 = 0;
    }

    v71 = v108;
    v72 = v100;
    aBlock = v66;
    v112 = v68;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v73 = Optional.description.getter();
    v75 = v74;

    v76 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v73, v75, v117);

    *(v62 + 4) = v76;
    *(v62 + 12) = 2080;
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v77 = v99;
    v78 = dispatch thunk of CustomStringConvertible.description.getter();
    v80 = v79;
    v70 = v107;
    v81 = v77;
    v69 = v71;
    (*(v107 + 8))(v81, v71);
    v82 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v78, v80, v117);

    *(v62 + 14) = v82;
    _os_log_impl(&dword_20C66F000, v59, v61, "[mirrored] MirroredStart is sending (startSource: %s, workout_configuration: %s)", v62, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F30E080](v63, -1, -1);
    MEMORY[0x20F30E080](v62, -1, -1);

    (*(isa + 1))(v72, v104);
    a1 = v105;
  }

  else
  {

    (*(v56 + 8))(v57, v58);
    (*(isa + 1))(v55, v20);
    v69 = v58;
    v70 = v56;
  }

  v83 = v101;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v84 = v97;
  v85 = v69;
  v95(v97, v106, v69);
  v86 = (*(v70 + 80) + 32) & ~*(v70 + 80);
  v87 = (v96 + v86 + 7) & 0xFFFFFFFFFFFFFFF8;
  v88 = swift_allocObject();
  *(v88 + 16) = v54;
  *(v88 + 24) = v110;
  (*(v70 + 32))(v88 + v86, v84, v85);
  v89 = v103;
  *(v88 + v87) = v103;
  *(v88 + ((v87 + 15) & 0xFFFFFFFFFFFFFFF8)) = a1;
  v115 = partial apply for closure #1 in closure #2 in WorkoutUIController.presentMirroredStartViewController(workoutController:liveWorkoutConfiguration:);
  v116 = v88;
  aBlock = MEMORY[0x277D85DD0];
  v112 = 1107296256;
  v113 = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
  v114 = &block_descriptor_25;
  v90 = _Block_copy(&aBlock);

  v91 = v89;

  v92 = isa;
  [v98 _startWatchAppWithMirroredStartData_completion_];
  outlined consume of Data._Representation(v83, v102);
  _Block_release(v90);
}

void closure #1 in closure #2 in WorkoutUIController.presentMirroredStartViewController(workoutController:liveWorkoutConfiguration:)(int a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, double a7)
{
  v63 = a6;
  v60 = a1;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for Logger();
  v16 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v18 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Double.machTimestamp.getter();
  v20 = v19;
  static WOLog.dataLink.getter();
  (*(v13 + 16))(v15, a4, v12);

  v21 = a2;
  v22 = a5;
  v23 = Logger.logObject.getter();
  LODWORD(a5) = static os_log_type_t.default.getter();
  v57 = a3;

  v61 = a2;

  v58 = v22;
  v59 = a5;
  if (os_log_type_enabled(v23, a5))
  {
    v24 = v13;
    v55 = v18;
    v56 = v16;
    v25 = v20 - a7;
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v66[0] = v54;
    *v26 = 136316418;
    type metadata accessor for MirroredStart();
    swift_projectBox();
    swift_beginAccess();
    MirroredStart.startSource.getter();
    swift_endAccess();
    v28 = NLWorkoutStartSourceDescription();
    if (v28)
    {
      v29 = v28;
      v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = v31;
    }

    else
    {
      v30 = 0;
      v32 = 0;
    }

    v64 = v30;
    v65 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v35 = Optional.description.getter();
    v37 = v36;

    v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v37, v66);

    *(v26 + 4) = v38;
    *(v26 + 12) = 2080;
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v39 = dispatch thunk of CustomStringConvertible.description.getter();
    v41 = v40;
    (*(v24 + 8))(v15, v12);
    v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v41, v66);

    *(v26 + 14) = v42;
    *(v26 + 22) = 2048;
    *(v26 + 24) = v25;
    *(v26 + 32) = 1024;
    *(v26 + 34) = v60 & 1;
    *(v26 + 38) = 2112;
    v33 = v61;
    if (v61)
    {
      v43 = v61;
      v44 = _swift_stdlib_bridgeErrorToNSError();
      v45 = v44;
    }

    else
    {
      v44 = 0;
      v45 = 0;
    }

    v47 = v55;
    v46 = v56;
    *(v26 + 40) = v44;
    *v27 = v45;
    *(v26 + 48) = 2080;
    v48 = dispatch thunk of LiveWorkoutConfiguration.logString.getter();
    v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v49, v66);

    *(v26 + 50) = v50;
    _os_log_impl(&dword_20C66F000, v23, v59, "[mirrored] MirroredStart completion (startSource: %s, workout_configuration: %s) with roundtripTime: %f (success: %{BOOL}d, error: %@) %s", v26, 0x3Au);
    _s10Foundation4UUIDVSgWOhTm_1(v27, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F30E080](v27, -1, -1);
    v51 = v54;
    swift_arrayDestroy();
    MEMORY[0x20F30E080](v51, -1, -1);
    MEMORY[0x20F30E080](v26, -1, -1);

    (*(v46 + 8))(v47, v62);
    v34 = v63;
    if (v33)
    {
      goto LABEL_11;
    }
  }

  else
  {

    (*(v13 + 8))(v15, v12);
    (*(v16 + 8))(v18, v62);
    v33 = v61;
    v34 = v63;
    if (v61)
    {
LABEL_11:
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      *(&v54 - 2) = v34;
      *(&v54 - 1) = v33;
      v64 = v34;
      v53 = v33;
      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type MirroredStartViewModel and conformance MirroredStartViewModel, type metadata accessor for MirroredStartViewModel, &protocol conformance descriptor for MirroredStartViewModel);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }
}

double closure #3 in WorkoutUIController.presentMirroredStartViewController(workoutController:liveWorkoutConfiguration:)(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + 32);
    if (v3)
    {
      v4 = v3;
      [v4 dismissViewControllerAnimated:0 completion:0];
    }
  }

  return result;
}

uint64_t closure #1 in WorkoutUIController.startMediaPlaybackIfEnabled(for:)()
{
  v1 = type metadata accessor for Logger();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  v4 = (*MEMORY[0x277D7E3F0] + MEMORY[0x277D7E3F0]);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = closure #1 in WorkoutUIController.startMediaPlaybackIfEnabled(for:);

  return v4();
}

{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](closure #1 in WorkoutUIController.startMediaPlaybackIfEnabled(for:), 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t closure #1 in WorkoutUIController.startMediaPlaybackIfEnabled(for:)(double a1)
{
  v2 = v1[6];
  static WOLog.mediaPlayback.getter();
  v3 = v2;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v1[6];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_20C66F000, v4, v5, "Failed to start media playback: %@", v8, 0xCu);
    _s10Foundation4UUIDVSgWOhTm_1(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F30E080](v9, -1, -1);
    MEMORY[0x20F30E080](v8, -1, -1);
  }

  else
  {
  }

  (*(v1[3] + 8))(v1[4], v1[2]);

  v12 = v1[1];

  return v12();
}

void specialized WorkoutUIController.workoutController(_:transitionedWorkout:toState:)(void *a1, unint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = v18 - v7;
  if (a2 < 6)
  {
    return;
  }

  if (a2 != 6)
  {
LABEL_9:
    v18[2] = 0;
    v18[3] = 0xE000000000000000;
    _StringGuts.grow(_:)(30);
    MEMORY[0x20F30BC00](0xD000000000000016, 0x800000020CB9E650);
    v18[1] = a2;
    type metadata accessor for NLWorkoutStateIdentifier(0);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x20F30BC00](544106784, 0xE400000000000000);
    MEMORY[0x20F30BC00](0xD000000000000031, 0x800000020CB9E670);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  if (!a1)
  {
    __break(1u);
    goto LABEL_9;
  }

  v9 = v2;
  v10 = [a1 sessionActivity];
  v11 = NLSessionActivity.coreLiveWorkoutConfiguration.getter();

  v12 = dispatch thunk of LiveWorkoutConfiguration.configureWithWorkoutVoiceMotivation(shouldLog:)();
  v13 = v9;
  if (v12)
  {
    v14 = *(v9 + 40);
    if (v14)
    {
      v15 = v14;
      dispatch thunk of LiveWorkoutContextManager.generateOutroMoment(for:)();
      v13 = v9;
    }
  }

  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v8, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v13;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5(0, 0, v8, &async function pointer to partial apply for closure #1 in WorkoutUIController.workoutController(_:transitionedWorkout:toState:), v17);
}

uint64_t objectdestroyTm_64()
{

  return swift_deallocObject();
}

void partial apply for closure #1 in WorkoutUIController.workoutController(_:startSource:sessionControl:)()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    WorkoutUIController.presentWorkoutSessionViewController(workoutController:startSource:)(v1, *(v0 + 32), 0);
  }

  else
  {
    __break(1u);
  }
}

void partial apply for closure #2 in WorkoutUIController.presentMirroredStartViewController(workoutController:liveWorkoutConfiguration:)(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + 16);
  v9 = *(v2 + v7);
  v10 = *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  closure #2 in WorkoutUIController.presentMirroredStartViewController(workoutController:liveWorkoutConfiguration:)(a1, a2, v8, v2 + v6, v9, v10);
}

id outlined copy of MirroredStartCurrentView(id result)
{
  if (result >= 3)
  {
    return result;
  }

  return result;
}

uint64_t partial apply for closure #1 in WorkoutUIController.startMediaPlaybackIfEnabled(for:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = partial apply for closure #1 in WorkoutUIController.startMediaPlaybackIfEnabled(for:);

  return closure #1 in WorkoutUIController.startMediaPlaybackIfEnabled(for:)();
}

uint64_t _s10Foundation4UUIDVSgWOhTm_1(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void partial apply for closure #1 in closure #2 in WorkoutUIController.presentMirroredStartViewController(workoutController:liveWorkoutConfiguration:)(int a1, void *a2)
{
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + 16);
  v9 = *(v2 + 24);
  v10 = *(v2 + v7);
  v11 = *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  closure #1 in closure #2 in WorkoutUIController.presentMirroredStartViewController(workoutController:liveWorkoutConfiguration:)(a1, a2, v9, v2 + v6, v10, v11, v8);
}

double block_copy_helper_25(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in WorkoutUIController.presentMirroredStartViewController(workoutController:liveWorkoutConfiguration:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in closure #1 in WorkoutUIController.presentMirroredStartViewController(workoutController:liveWorkoutConfiguration:);

  return closure #1 in closure #1 in WorkoutUIController.presentMirroredStartViewController(workoutController:liveWorkoutConfiguration:)(a1, v4, v5, v7, v6);
}

uint64_t partial apply for closure #1 in WorkoutUIController.presentWorkoutSessionViewController(workoutController:startSource:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in WorkoutUIController.presentWorkoutSessionViewController(workoutController:startSource:);

  return closure #1 in WorkoutUIController.presentWorkoutSessionViewController(workoutController:startSource:)(a1, v4, v5, v6, v7, v8);
}

uint64_t partial apply for closure #1 in WorkoutUIController.presentWorkoutSessionViewController(workoutController:startSource:)()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t partial apply for closure #1 in WorkoutSessionViewController.configureLiveWorkoutContextManager(workout:unitManager:fitnessIntelligenceConnection:inferenceClient:workoutVoiceAvailabilityProvider:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = partial apply for closure #1 in WorkoutSessionViewController.configureLiveWorkoutContextManager(workout:unitManager:fitnessIntelligenceConnection:inferenceClient:workoutVoiceAvailabilityProvider:);

  return closure #1 in WorkoutSessionViewController.configureLiveWorkoutContextManager(workout:unitManager:fitnessIntelligenceConnection:inferenceClient:workoutVoiceAvailabilityProvider:)();
}

uint64_t objectdestroy_34Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in WorkoutUIController.workoutController(_:transitionedWorkout:toState:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in WorkoutUIController.workoutController(_:transitionedWorkout:toState:);

  return closure #1 in WorkoutUIController.workoutController(_:transitionedWorkout:toState:)(a1, v4, v5, v6);
}

void partial apply for closure #1 in WorkoutUIController.dismissWorkoutSessionViewController(completion:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 24);
  *(v1 + 24) = 0;

  if (v2)
  {
    v2();
  }
}

void closure #1 in MirroredStartViewModel.currentView.setterpartial apply()
{
  partial apply for closure #1 in MirroredStartViewModel.currentView.setter();
}

{
  _s9WorkoutUI22MirroredStartViewModelC07currentE0AA0cd7CurrentE0OvsyyXEfU_TA_0();
}

uint64_t getEnumTagSinglePayload for GoalWorkoutConfigurationView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for GoalWorkoutConfigurationView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t GoalWorkoutConfigurationView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v133 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10ScrollViewVyAA05TupleD0VyAA0D0PAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA6VStackVyAEyAA19_ConditionalContentVyAA08ModifiedL0VyARyARyARyARyARyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0N9AlignmentOGGAVyAT4CaseOSgGGAA16_FlexFrameLayoutVGAVyAA4FontVSgGGAVySiSgGG07WorkoutB015BodyHyphenationVGSgAPyA18_A19_GGSg_A19_tGG_Qo_Sg_ARyANyAEyAPyARyA15_15GoalValueButtonVAVy0Y4Core0Y23ConfigurationDataSourceCSgGGARyARyA15_025EmbeddedGoalConfigurationD0VAA01_gW0VGAA011_BackgroundR0VyARyAA017StrokeBorderShapeD0VyAA16RoundedRectangleVAA22HierarchicalShapeStyleVAA05EmptyD0VGA5_GGGGSg_AgAEAHyQrALFQOyANyAEyA15_05StartY6ButtonV_A15_14SaveCopyButtonVSgA15_05ShareY19ConfigurationButtonVSgA15_12DeleteButtonVSgARyARyARyARyARyARyARyAtVyAA5ColorVSgGGAYGA2_GA5_GA10_GA13_GA17_GSgtGG_Qo_tGGAVyAA13AnyShapeStyleVSgGGtGGMd, &_s7SwiftUI10ScrollViewVyAA05TupleD0VyAA0D0PAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA6VStackVyAEyAA19_ConditionalContentVyAA08ModifiedL0VyARyARyARyARyARyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0N9AlignmentOGGAVyAT4CaseOSgGGAA16_FlexFrameLayoutVGAVyAA4FontVSgGGAVySiSgGG07WorkoutB015BodyHyphenationVGSgAPyA18_A19_GGSg_A19_tGG_Qo_Sg_ARyANyAEyAPyARyA15_15GoalValueButtonVAVy0Y4Core0Y23ConfigurationDataSourceCSgGGARyARyA15_025EmbeddedGoalConfigurationD0VAA01_gW0VGAA011_BackgroundR0VyARyAA017StrokeBorderShapeD0VyAA16RoundedRectangleVAA22HierarchicalShapeStyleVAA05EmptyD0VGA5_GGGGSg_AgAEAHyQrALFQOyANyAEyA15_05StartY6ButtonV_A15_14SaveCopyButtonVSgA15_05ShareY19ConfigurationButtonVSgA15_12DeleteButtonVSgARyARyARyARyARyARyARyAtVyAA5ColorVSgGGAYGA2_GA5_GA10_GA13_GA17_GSgtGG_Qo_tGGAVyAA13AnyShapeStyleVSgGGtGGMR);
  v119 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v118 - v3;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE18navigationBarTitleyQrqd__SyRd__lFQOyAA06ScrollC0VyAA05TupleC0VyAcAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA6VStackVyAHyAA19_ConditionalContentVyAA08ModifiedO0VyASyASyASyASyASyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0Q9AlignmentOGGAWyAU4CaseOSgGGAA16_FlexFrameLayoutVGAWyAA4FontVSgGGAWySiSgGG07WorkoutB015BodyHyphenationVGSgAQyA19_A20_GGSg_A20_tGG_Qo_Sg_ASyAOyAHyAQyASyA16_15GoalValueButtonVAWy11WorkoutCore30WorkoutConfigurationDataSourceCSgGGASyASyA16_025EmbeddedGoalConfigurationC0VAA01_jZ0VGAA011_BackgroundU0VyASyAA017StrokeBorderShapeC0VyAA16RoundedRectangleVAA22HierarchicalShapeStyleVAA05EmptyC0VGA6_GGGGSg_AcAEAIyQrAMFQOyAOyAHyA16_18StartWorkoutButtonV_A16_14SaveCopyButtonVSgA16_31ShareWorkoutConfigurationButtonVSgA16_12DeleteButtonVSgASyASyASyASyASyASyASyAuWyAA5ColorVSgGGAZGA3_GA6_GA11_GA14_GA18_GSgtGG_Qo_tGGAWyAA13AnyShapeStyleVSgGGtGG_SSQo_Md, &_s7SwiftUI4ViewPAAE18navigationBarTitleyQrqd__SyRd__lFQOyAA06ScrollC0VyAA05TupleC0VyAcAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA6VStackVyAHyAA19_ConditionalContentVyAA08ModifiedO0VyASyASyASyASyASyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0Q9AlignmentOGGAWyAU4CaseOSgGGAA16_FlexFrameLayoutVGAWyAA4FontVSgGGAWySiSgGG07WorkoutB015BodyHyphenationVGSgAQyA19_A20_GGSg_A20_tGG_Qo_Sg_ASyAOyAHyAQyASyA16_15GoalValueButtonVAWy11WorkoutCore30WorkoutConfigurationDataSourceCSgGGASyASyA16_025EmbeddedGoalConfigurationC0VAA01_jZ0VGAA011_BackgroundU0VyASyAA017StrokeBorderShapeC0VyAA16RoundedRectangleVAA22HierarchicalShapeStyleVAA05EmptyC0VGA6_GGGGSg_AcAEAIyQrAMFQOyAOyAHyA16_18StartWorkoutButtonV_A16_14SaveCopyButtonVSgA16_31ShareWorkoutConfigurationButtonVSgA16_12DeleteButtonVSgASyASyASyASyASyASyASyAuWyAA5ColorVSgGGAZGA3_GA6_GA11_GA14_GA18_GSgtGG_Qo_tGGAWyAA13AnyShapeStyleVSgGGtGG_SSQo_MR);
  v121 = *(v122 - 1);
  MEMORY[0x28223BE20](v122);
  v120 = &v118 - v5;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI16SubscriptionViewVy7Combine25ObservableObjectPublisherCAA0D0PAAE22toolbarForegroundStyle_3forQrqd___AA16ToolbarPlacementVdtAA05ShapeK0Rd__lFQOyAhAE18navigationBarTitleyQrqd__SyRd__lFQOyAA06ScrollD0VyAA05TupleD0VyAhAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA6VStackVyARyAA19_ConditionalContentVyAA15ModifiedContentVyA1_yA1_yA1_yA1_yA1_yAA4TextVAA30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGGA5_yA3_4CaseOSgGGAA16_FlexFrameLayoutVGA5_yAA4FontVSgGGA5_ySiSgGG07WorkoutB015BodyHyphenationVGSgA_yA29_A30_GGSg_A30_tGG_Qo_Sg_A1_yAYyARyA_yA1_yA26_15GoalValueButtonVA5_y11WorkoutCore30WorkoutConfigurationDataSourceCSgGGA1_yA1_yA26_025EmbeddedGoalConfigurationD0VAA01_V6LayoutVGAA19_BackgroundModifierVyA1_yAA012StrokeBorderoD0VyAA16RoundedRectangleVAA012HierarchicaloK0VAA05EmptyD0VGA16_GGGGSg_AhAEASyQrAWFQOyAYyARyA26_18StartWorkoutButtonV_A26_14SaveCopyButtonVSgA26_31ShareWorkoutConfigurationButtonVSgA26_12DeleteButtonVSgA1_yA1_yA1_yA1_yA1_yA1_yA1_yA3_A5_yAA5ColorVSgGGA8_GA13_GA16_GA21_GA24_GA28_GSgtGG_Qo_tGGA5_yAA03AnyoK0VSgGGtGG_SSQo__A79_Qo_GMd, &_s7SwiftUI16SubscriptionViewVy7Combine25ObservableObjectPublisherCAA0D0PAAE22toolbarForegroundStyle_3forQrqd___AA16ToolbarPlacementVdtAA05ShapeK0Rd__lFQOyAhAE18navigationBarTitleyQrqd__SyRd__lFQOyAA06ScrollD0VyAA05TupleD0VyAhAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA6VStackVyARyAA19_ConditionalContentVyAA15ModifiedContentVyA1_yA1_yA1_yA1_yA1_yAA4TextVAA30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGGA5_yA3_4CaseOSgGGAA16_FlexFrameLayoutVGA5_yAA4FontVSgGGA5_ySiSgGG07WorkoutB015BodyHyphenationVGSgA_yA29_A30_GGSg_A30_tGG_Qo_Sg_A1_yAYyARyA_yA1_yA26_15GoalValueButtonVA5_y11WorkoutCore30WorkoutConfigurationDataSourceCSgGGA1_yA1_yA26_025EmbeddedGoalConfigurationD0VAA01_V6LayoutVGAA19_BackgroundModifierVyA1_yAA012StrokeBorderoD0VyAA16RoundedRectangleVAA012HierarchicaloK0VAA05EmptyD0VGA16_GGGGSg_AhAEASyQrAWFQOyAYyARyA26_18StartWorkoutButtonV_A26_14SaveCopyButtonVSgA26_31ShareWorkoutConfigurationButtonVSgA26_12DeleteButtonVSgA1_yA1_yA1_yA1_yA1_yA1_yA1_yA3_A5_yAA5ColorVSgGGA8_GA13_GA16_GA21_GA24_GA28_GSgtGG_Qo_tGGA5_yAA03AnyoK0VSgGGtGG_SSQo__A79_Qo_GMR);
  MEMORY[0x28223BE20](v123);
  v130 = &v118 - v6;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA16SubscriptionViewVy7Combine25ObservableObjectPublisherCAA0F0PAAE22toolbarForegroundStyle_3forQrqd___AA16ToolbarPlacementVdtAA05ShapeM0Rd__lFQOyAjAE18navigationBarTitleyQrqd__SyRd__lFQOyAA06ScrollF0VyAA05TupleF0VyAjAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA6VStackVyATyAA012_ConditionalD0VyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGGA5_yA3_4CaseOSgGGAA16_FlexFrameLayoutVGA5_yAA4FontVSgGGA5_ySiSgGG07WorkoutB015BodyHyphenationVGSgA1_yA29_A30_GGSg_A30_tGG_Qo_Sg_ACyA_yATyA1_yACyA26_15GoalValueButtonVA5_y11WorkoutCore30WorkoutConfigurationDataSourceCSgGGACyACyA26_025EmbeddedGoalConfigurationF0VAA01_X6LayoutVGAA19_BackgroundModifierVyACyAA012StrokeBorderqF0VyAA16RoundedRectangleVAA012HierarchicalqM0VAA05EmptyF0VGA16_GGGGSg_AjAEAUyQrAYFQOyA_yATyA26_18StartWorkoutButtonV_A26_14SaveCopyButtonVSgA26_31ShareWorkoutConfigurationButtonVSgA26_12DeleteButtonVSgACyACyACyACyACyACyACyA3_A5_yAA5ColorVSgGGA8_GA13_GA16_GA21_GA24_GA28_GSgtGG_Qo_tGGA5_yAA03AnyqM0VSgGGtGG_SSQo__A79_Qo_GA26_020WorkoutConfigurationO0VGMd, &_s7SwiftUI15ModifiedContentVyAA16SubscriptionViewVy7Combine25ObservableObjectPublisherCAA0F0PAAE22toolbarForegroundStyle_3forQrqd___AA16ToolbarPlacementVdtAA05ShapeM0Rd__lFQOyAjAE18navigationBarTitleyQrqd__SyRd__lFQOyAA06ScrollF0VyAA05TupleF0VyAjAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA6VStackVyATyAA012_ConditionalD0VyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGGA5_yA3_4CaseOSgGGAA16_FlexFrameLayoutVGA5_yAA4FontVSgGGA5_ySiSgGG07WorkoutB015BodyHyphenationVGSgA1_yA29_A30_GGSg_A30_tGG_Qo_Sg_ACyA_yATyA1_yACyA26_15GoalValueButtonVA5_y11WorkoutCore30WorkoutConfigurationDataSourceCSgGGACyACyA26_025EmbeddedGoalConfigurationF0VAA01_X6LayoutVGAA19_BackgroundModifierVyACyAA012StrokeBorderqF0VyAA16RoundedRectangleVAA012HierarchicalqM0VAA05EmptyF0VGA16_GGGGSg_AjAEAUyQrAYFQOyA_yATyA26_18StartWorkoutButtonV_A26_14SaveCopyButtonVSgA26_31ShareWorkoutConfigurationButtonVSgA26_12DeleteButtonVSgACyACyACyACyACyACyACyA3_A5_yAA5ColorVSgGGA8_GA13_GA16_GA21_GA24_GA28_GSgtGG_Qo_tGGA5_yAA03AnyqM0VSgGGtGG_SSQo__A79_Qo_GA26_020WorkoutConfigurationO0VGMR);
  MEMORY[0x28223BE20](v135);
  v129 = &v118 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v118 - v9;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2( &_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAA4ViewPAAE14contentMargins__3forQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA0D15MarginPlacementVtFQOyAA012SubscriptionG0Vy7Combine25ObservableObjectPublisherCAA4ListVys5NeverOAA05TupleG0VyAGyAA4TextV07WorkoutB005ClearW5Style33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_AGyAGyAGyAA6VStackVyA4_yACyAGyAGyAGyAGyAGyAGyA6_AA30_EnvironmentKeyWritingModifierVyAA0Z9AlignmentOGGA15_yA6_4CaseOSgGGAA16_FlexFrameLayoutVGA15_yAA4FontVSgGGA15_ySiSgGGA7_15BodyHyphenationVGSgACyA38_A39_GGSg_A39_tGGAA21_TraitWritingModifierVyAA0W21RowBackgroundTraitKeyVGGA46_yAA0W17RowInsetsTraitKeyVGGA7_04HideW12RowSeparatorA9_LLVGSgACyAA7SectionVyAA05EmptyG0VA7_15GoalValuePickerVA62_GAGyAGyAGyAGyA7_025EmbeddedGoalConfigurationG0VAA14_PaddingLayoutVGAA19_BackgroundModifierVyAGyAA017StrokeBorderShapeG0VyAA16RoundedRectangleVAA22HierarchicalShapeStyleVA62_GA26_GGGA49_GA53_GGSgA7_18StartWorkoutButtonVAGyAGyAGyA7_14SaveCopyButtonVA53_GA56_GA15_yAA11ControlSizeOGGSgAGyAGyAGyAGyAGyAGyAGyAGyAGyA6_A15_yAA5ColorVSgGGA18_GA23_GA26_GA31_GA34_GA37_GA53_GA49_GSgtGGG_Qo_A7_27WorkoutConfigurationToolbarVGAGyAWyAziAE22toolbarForegroundStyle_AKQrqd___AA07ToolbarQ0VdtAA10ShapeStyleRd__lFQOyAiAE18navigationBarTitleyQrqd__SyRd__lFQOyAA06ScrollG0VyA4_yAiAE12scenePaddingyQrAOFQOyA44__Qo_Sg_AGyA13_yA4_yACyAGyA7_15GoalValueButtonVA15_y07WorkoutM030WorkoutConfigurationDataSourceCSgGGA82_GSg_AiAEA126_yQrAOFQOyA13_yA4_yA88__A90_SgA7_31ShareWorkoutConfigurationButtonVSgA7_12DeleteButtonVSgA108_SgtGG_Qo_tGGA15_yAA13AnyShapeStyleVSgGGtGG_SSQo__A99_Qo_GA117_G_GMd,  &_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAA4ViewPAAE14contentMargins__3forQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA0D15MarginPlacementVtFQOyAA012SubscriptionG0Vy7Combine25ObservableObjectPublisherCAA4ListVys5NeverOAA05TupleG0VyAGyAA4TextV07WorkoutB005ClearW5Style33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_AGyAGyAGyAA6VStackVyA4_yACyAGyAGyAGyAGyAGyAGyA6_AA30_EnvironmentKeyWritingModifierVyAA0Z9AlignmentOGGA15_yA6_4CaseOSgGGAA16_FlexFrameLayoutVGA15_yAA4FontVSgGGA15_ySiSgGGA7_15BodyHyphenationVGSgACyA38_A39_GGSg_A39_tGGAA21_TraitWritingModifierVyAA0W21RowBackgroundTraitKeyVGGA46_yAA0W17RowInsetsTraitKeyVGGA7_04HideW12RowSeparatorA9_LLVGSgACyAA7SectionVyAA05EmptyG0VA7_15GoalValuePickerVA62_GAGyAGyAGyAGyA7_025EmbeddedGoalConfigurationG0VAA14_PaddingLayoutVGAA19_BackgroundModifierVyAGyAA017StrokeBorderShapeG0VyAA16RoundedRectangleVAA22HierarchicalShapeStyleVA62_GA26_GGGA49_GA53_GGSgA7_18StartWorkoutButtonVAGyAGyAGyA7_14SaveCopyButtonVA53_GA56_GA15_yAA11ControlSizeOGGSgAGyAGyAGyAGyAGyAGyAGyAGyAGyA6_A15_yAA5ColorVSgGGA18_GA23_GA26_GA31_GA34_GA37_GA53_GA49_GSgtGGG_Qo_A7_27WorkoutConfigurationToolbarVGAGyAWyAziAE22toolbarForegroundStyle_AKQrqd___AA07ToolbarQ0VdtAA10ShapeStyleRd__lFQOyAiAE18navigationBarTitleyQrqd__SyRd__lFQOyAA06ScrollG0VyA4_yAiAE12scenePaddingyQrAOFQOyA44__Qo_Sg_AGyA13_yA4_yACyAGyA7_15GoalValueButtonVA15_y07WorkoutM030WorkoutConfigurationDataSourceCSgGGA82_GSg_AiAEA126_yQrAOFQOyA13_yA4_yA88__A90_SgA7_31ShareWorkoutConfigurationButtonVSgA7_12DeleteButtonVSgA108_SgtGG_Qo_tGGA15_yAA13AnyShapeStyleVSgGGtGG_SSQo__A99_Qo_GA117_G_GMR);
  MEMORY[0x28223BE20](v131);
  v132 = &v118 - v11;
  v12 = type metadata accessor for ContentMarginPlacement();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v118 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI16SubscriptionViewVy7Combine25ObservableObjectPublisherCAA4ListVys5NeverOAA05TupleD0VyAA15ModifiedContentVyAA4TextV07WorkoutB005ClearI5Style33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_ANyANyANyAA6VStackVyALyAA012_ConditionalM0VyANyANyANyANyANyANyApA30_EnvironmentKeyWritingModifierVyAA0N9AlignmentOGGA_yAP4CaseOSgGGAA16_FlexFrameLayoutVGA_yAA4FontVSgGGA_ySiSgGGAQ15BodyHyphenationVGSgAYyA22_A23_GGSg_A23_tGGAA21_TraitWritingModifierVyAA0I21RowBackgroundTraitKeyVGGA30_yAA0I17RowInsetsTraitKeyVGGAQ04HideI12RowSeparatorASLLVGSgAYyAA7SectionVyAA05EmptyD0VAQ15GoalValuePickerVA46_GANyANyANyANyAQ025EmbeddedGoalConfigurationD0VAA14_PaddingLayoutVGAA19_BackgroundModifierVyANyAA017StrokeBorderShapeD0VyAA16RoundedRectangleVAA017HierarchicalShapeQ0VA46_GA10_GGGA33_GA37_GGSgAQ05StartO6ButtonVANyANyANyAQ14SaveCopyButtonVA37_GA40_GA_yAA11ControlSizeOGGSgANyANyANyANyANyANyANyANyANyAPA_yAA5ColorVSgGGA2_GA7_GA10_GA15_GA18_GA21_GA37_GA33_GSgtGGGMd, &_s7SwiftUI16SubscriptionViewVy7Combine25ObservableObjectPublisherCAA4ListVys5NeverOAA05TupleD0VyAA15ModifiedContentVyAA4TextV07WorkoutB005ClearI5Style33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_ANyANyANyAA6VStackVyALyAA012_ConditionalM0VyANyANyANyANyANyANyApA30_EnvironmentKeyWritingModifierVyAA0N9AlignmentOGGA_yAP4CaseOSgGGAA16_FlexFrameLayoutVGA_yAA4FontVSgGGA_ySiSgGGAQ15BodyHyphenationVGSgAYyA22_A23_GGSg_A23_tGGAA21_TraitWritingModifierVyAA0I21RowBackgroundTraitKeyVGGA30_yAA0I17RowInsetsTraitKeyVGGAQ04HideI12RowSeparatorASLLVGSgAYyAA7SectionVyAA05EmptyD0VAQ15GoalValuePickerVA46_GANyANyANyANyAQ025EmbeddedGoalConfigurationD0VAA14_PaddingLayoutVGAA19_BackgroundModifierVyANyAA017StrokeBorderShapeD0VyAA16RoundedRectangleVAA017HierarchicalShapeQ0VA46_GA10_GGGA33_GA37_GGSgAQ05StartO6ButtonVANyANyANyAQ14SaveCopyButtonVA37_GA40_GA_yAA11ControlSizeOGGSgANyANyANyANyANyANyANyANyANyAPA_yAA5ColorVSgGGA2_GA7_GA10_GA15_GA18_GA21_GA37_GA33_GSgtGGGMR);
  MEMORY[0x28223BE20](v16);
  v18 = &v118 - v17;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE14contentMargins__3forQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA22ContentMarginPlacementVtFQOyAA012SubscriptionC0Vy7Combine25ObservableObjectPublisherCAA4ListVys5NeverOAA05TupleC0VyAA08ModifiedL0VyAA4TextV07WorkoutB005ClearT5Style33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_A0_yA0_yA0_yAA6VStackVyAZyAA012_ConditionalL0VyA0_yA0_yA0_yA0_yA0_yA0_yA2_AA30_EnvironmentKeyWritingModifierVyAA0X9AlignmentOGGA13_yA2_4CaseOSgGGAA16_FlexFrameLayoutVGA13_yAA4FontVSgGGA13_ySiSgGGA3_15BodyHyphenationVGSgA11_yA36_A37_GGSg_A37_tGGAA21_TraitWritingModifierVyAA0T21RowBackgroundTraitKeyVGGA44_yAA0T17RowInsetsTraitKeyVGGA3_04HideT12RowSeparatorA5_LLVGSgA11_yAA7SectionVyAA05EmptyC0VA3_15GoalValuePickerVA60_GA0_yA0_yA0_yA0_yA3_025EmbeddedGoalConfigurationC0VAA14_PaddingLayoutVGAA19_BackgroundModifierVyA0_yAA017StrokeBorderShapeC0VyAA16RoundedRectangleVAA22HierarchicalShapeStyleVA60_GA24_GGGA47_GA51_GGSgA3_05StartY6ButtonVA0_yA0_yA0_yA3_14SaveCopyButtonVA51_GA54_GA13_yAA11ControlSizeOGGSgA0_yA0_yA0_yA0_yA0_yA0_yA0_yA0_yA0_yA2_A13_yAA5ColorVSgGGA16_GA21_GA24_GA29_GA32_GA35_GA51_GA47_GSgtGGG_Qo_Md, &_s7SwiftUI4ViewPAAE14contentMargins__3forQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA22ContentMarginPlacementVtFQOyAA012SubscriptionC0Vy7Combine25ObservableObjectPublisherCAA4ListVys5NeverOAA05TupleC0VyAA08ModifiedL0VyAA4TextV07WorkoutB005ClearT5Style33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_A0_yA0_yA0_yAA6VStackVyAZyAA012_ConditionalL0VyA0_yA0_yA0_yA0_yA0_yA0_yA2_AA30_EnvironmentKeyWritingModifierVyAA0X9AlignmentOGGA13_yA2_4CaseOSgGGAA16_FlexFrameLayoutVGA13_yAA4FontVSgGGA13_ySiSgGGA3_15BodyHyphenationVGSgA11_yA36_A37_GGSg_A37_tGGAA21_TraitWritingModifierVyAA0T21RowBackgroundTraitKeyVGGA44_yAA0T17RowInsetsTraitKeyVGGA3_04HideT12RowSeparatorA5_LLVGSgA11_yAA7SectionVyAA05EmptyC0VA3_15GoalValuePickerVA60_GA0_yA0_yA0_yA0_yA3_025EmbeddedGoalConfigurationC0VAA14_PaddingLayoutVGAA19_BackgroundModifierVyA0_yAA017StrokeBorderShapeC0VyAA16RoundedRectangleVAA22HierarchicalShapeStyleVA60_GA24_GGGA47_GA51_GGSgA3_05StartY6ButtonVA0_yA0_yA0_yA3_14SaveCopyButtonVA51_GA54_GA13_yAA11ControlSizeOGGSgA0_yA0_yA0_yA0_yA0_yA0_yA0_yA0_yA0_yA2_A13_yAA5ColorVSgGGA16_GA21_GA24_GA29_GA32_GA35_GA51_GA47_GSgtGGG_Qo_MR);
  v124 = *(v126 - 8);
  MEMORY[0x28223BE20](v126);
  v128 = &v118 - v19;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE14contentMargins__3forQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA0D15MarginPlacementVtFQOyAA012SubscriptionE0Vy7Combine25ObservableObjectPublisherCAA4ListVys5NeverOAA05TupleE0VyACyAA4TextV07WorkoutB005ClearU5Style33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_ACyACyACyAA6VStackVyA0_yAA012_ConditionalD0VyACyACyACyACyACyACyA2_AA30_EnvironmentKeyWritingModifierVyAA0X9AlignmentOGGA13_yA2_4CaseOSgGGAA16_FlexFrameLayoutVGA13_yAA4FontVSgGGA13_ySiSgGGA3_15BodyHyphenationVGSgA11_yA36_A37_GGSg_A37_tGGAA21_TraitWritingModifierVyAA0U21RowBackgroundTraitKeyVGGA44_yAA0U17RowInsetsTraitKeyVGGA3_04HideU12RowSeparatorA5_LLVGSgA11_yAA7SectionVyAA05EmptyE0VA3_15GoalValuePickerVA60_GACyACyACyACyA3_025EmbeddedGoalConfigurationE0VAA14_PaddingLayoutVGAA19_BackgroundModifierVyACyAA017StrokeBorderShapeE0VyAA16RoundedRectangleVAA22HierarchicalShapeStyleVA60_GA24_GGGA47_GA51_GGSgA3_05StartY6ButtonVACyACyACyA3_14SaveCopyButtonVA51_GA54_GA13_yAA11ControlSizeOGGSgACyACyACyACyACyACyACyACyACyA2_A13_yAA5ColorVSgGGA16_GA21_GA24_GA29_GA32_GA35_GA51_GA47_GSgtGGG_Qo_A3_0Y20ConfigurationToolbarVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE14contentMargins__3forQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA0D15MarginPlacementVtFQOyAA012SubscriptionE0Vy7Combine25ObservableObjectPublisherCAA4ListVys5NeverOAA05TupleE0VyACyAA4TextV07WorkoutB005ClearU5Style33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_ACyACyACyAA6VStackVyA0_yAA012_ConditionalD0VyACyACyACyACyACyACyA2_AA30_EnvironmentKeyWritingModifierVyAA0X9AlignmentOGGA13_yA2_4CaseOSgGGAA16_FlexFrameLayoutVGA13_yAA4FontVSgGGA13_ySiSgGGA3_15BodyHyphenationVGSgA11_yA36_A37_GGSg_A37_tGGAA21_TraitWritingModifierVyAA0U21RowBackgroundTraitKeyVGGA44_yAA0U17RowInsetsTraitKeyVGGA3_04HideU12RowSeparatorA5_LLVGSgA11_yAA7SectionVyAA05EmptyE0VA3_15GoalValuePickerVA60_GACyACyACyACyA3_025EmbeddedGoalConfigurationE0VAA14_PaddingLayoutVGAA19_BackgroundModifierVyACyAA017StrokeBorderShapeE0VyAA16RoundedRectangleVAA22HierarchicalShapeStyleVA60_GA24_GGGA47_GA51_GGSgA3_05StartY6ButtonVACyACyACyA3_14SaveCopyButtonVA51_GA54_GA13_yAA11ControlSizeOGGSgACyACyACyACyACyACyACyACyACyA2_A13_yAA5ColorVSgGGA16_GA21_GA24_GA29_GA32_GA35_GA51_GA47_GSgtGGG_Qo_A3_0Y20ConfigurationToolbarVGMR);
  MEMORY[0x28223BE20](v134);
  v127 = &v118 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v125 = &v118 - v22;
  v23 = v1[3];
  v144 = v1[2];
  *v145 = v23;
  *&v145[16] = v1[4];
  v24 = v1[1];
  v142 = *v1;
  v143 = v24;
  v25 = static Platform.current.getter();
  v136 = &v142;
  if (v25)
  {
    v128 = v10;
    static Axis.Set.vertical.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA0D0PAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA6VStackVyACyAA19_ConditionalContentVyAA08ModifiedK0VyAPyAPyAPyAPyAPyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0M9AlignmentOGGATyAR4CaseOSgGGAA16_FlexFrameLayoutVGATyAA4FontVSgGGATySiSgGG07WorkoutB015BodyHyphenationVGSgANyA16_A17_GGSg_A17_tGG_Qo_Sg_APyALyACyANyAPyA13_15GoalValueButtonVATy0X4Core0X23ConfigurationDataSourceCSgGGAPyAPyA13_025EmbeddedGoalConfigurationD0VAA01_fV0VGAA011_BackgroundQ0VyAPyAA017StrokeBorderShapeD0VyAA16RoundedRectangleVAA22HierarchicalShapeStyleVAA05EmptyD0VGA3_GGGGSg_AeAEAFyQrAJFQOyALyACyA13_05StartX6ButtonV_A13_14SaveCopyButtonVSgA13_05ShareX19ConfigurationButtonVSgA13_12DeleteButtonVSgAPyAPyAPyAPyAPyAPyAPyArTyAA5ColorVSgGGAWGA0_GA3_GA8_GA11_GA15_GSgtGG_Qo_tGGATyAA13AnyShapeStyleVSgGGtGMd, &_s7SwiftUI9TupleViewVyAA0D0PAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA6VStackVyACyAA19_ConditionalContentVyAA08ModifiedK0VyAPyAPyAPyAPyAPyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0M9AlignmentOGGATyAR4CaseOSgGGAA16_FlexFrameLayoutVGATyAA4FontVSgGGATySiSgGG07WorkoutB015BodyHyphenationVGSgANyA16_A17_GGSg_A17_tGG_Qo_Sg_APyALyACyANyAPyA13_15GoalValueButtonVATy0X4Core0X23ConfigurationDataSourceCSgGGAPyAPyA13_025EmbeddedGoalConfigurationD0VAA01_fV0VGAA011_BackgroundQ0VyAPyAA017StrokeBorderShapeD0VyAA16RoundedRectangleVAA22HierarchicalShapeStyleVAA05EmptyD0VGA3_GGGGSg_AeAEAFyQrAJFQOyALyACyA13_05StartX6ButtonV_A13_14SaveCopyButtonVSgA13_05ShareX19ConfigurationButtonVSgA13_12DeleteButtonVSgAPyAPyAPyAPyAPyAPyAPyArTyAA5ColorVSgGGAWGA0_GA3_GA8_GA11_GA15_GSgtGG_Qo_tGGATyAA13AnyShapeStyleVSgGGtGMR);
    lazy protocol witness table accessor for type TupleView<((<<opaque return type of View.scenePadding(_:)>>.0)?, ModifiedContent<VStack<TupleView<(_ConditionalContent<ModifiedContent<GoalValueButton, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, ModifiedContent<ModifiedContent<EmbeddedGoalConfigurationView, _PaddingLayout>, _BackgroundModifier<ModifiedContent<StrokeBorderShapeView<RoundedRectangle, HierarchicalShapeStyle, EmptyView>, _FlexFrameLayout>>>>?, <<opaque return type of View.scenePadding(_:)>>.0)>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<((<<opaque return type of View.scenePadding(_:)>>.0)?, ModifiedContent<VStack<TupleView<(_ConditionalContent<ModifiedContent<GoalValueButton, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, ModifiedContent<ModifiedContent<EmbeddedGoalConfigurationView, _PaddingLayout>, _BackgroundModifier<ModifiedContent<StrokeBorderShapeView<RoundedRectangle, HierarchicalShapeStyle, EmptyView>, _FlexFrameLayout>>>>?, <<opaque return type of View.scenePadding(_:)>>.0)>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA0D0PAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA6VStackVyACyAA19_ConditionalContentVyAA08ModifiedK0VyAPyAPyAPyAPyAPyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0M9AlignmentOGGATyAR4CaseOSgGGAA16_FlexFrameLayoutVGATyAA4FontVSgGGATySiSgGG07WorkoutB015BodyHyphenationVGSgANyA16_A17_GGSg_A17_tGG_Qo_Sg_APyALyACyANyAPyA13_15GoalValueButtonVATy0X4Core0X23ConfigurationDataSourceCSgGGAPyAPyA13_025EmbeddedGoalConfigurationD0VAA01_fV0VGAA011_BackgroundQ0VyAPyAA017StrokeBorderShapeD0VyAA16RoundedRectangleVAA22HierarchicalShapeStyleVAA05EmptyD0VGA3_GGGGSg_AeAEAFyQrAJFQOyALyACyA13_05StartX6ButtonV_A13_14SaveCopyButtonVSgA13_05ShareX19ConfigurationButtonVSgA13_12DeleteButtonVSgAPyAPyAPyAPyAPyAPyAPyArTyAA5ColorVSgGGAWGA0_GA3_GA8_GA11_GA15_GSgtGG_Qo_tGGATyAA13AnyShapeStyleVSgGGtGMd, &_s7SwiftUI9TupleViewVyAA0D0PAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA6VStackVyACyAA19_ConditionalContentVyAA08ModifiedK0VyAPyAPyAPyAPyAPyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0M9AlignmentOGGATyAR4CaseOSgGGAA16_FlexFrameLayoutVGATyAA4FontVSgGGATySiSgGG07WorkoutB015BodyHyphenationVGSgANyA16_A17_GGSg_A17_tGG_Qo_Sg_APyALyACyANyAPyA13_15GoalValueButtonVATy0X4Core0X23ConfigurationDataSourceCSgGGAPyAPyA13_025EmbeddedGoalConfigurationD0VAA01_fV0VGAA011_BackgroundQ0VyAPyAA017StrokeBorderShapeD0VyAA16RoundedRectangleVAA22HierarchicalShapeStyleVAA05EmptyD0VGA3_GGGGSg_AeAEAFyQrAJFQOyALyACyA13_05StartX6ButtonV_A13_14SaveCopyButtonVSgA13_05ShareX19ConfigurationButtonVSgA13_12DeleteButtonVSgAPyAPyAPyAPyAPyAPyAPyArTyAA5ColorVSgGGAWGA0_GA3_GA8_GA11_GA15_GSgtGG_Qo_tGGATyAA13AnyShapeStyleVSgGGtGMR, MEMORY[0x277CE14C0]);
    ScrollView.init(_:showsIndicators:content:)();
    v146 = v143;
    v26 = *(&v143 + 1);
    v27 = GoalWorkoutConfiguration.goal.getter();
    _s7SwiftUI14ObservedObjectVy11WorkoutCore04GoalE13ConfigurationCGWOhTm_0(&v146, &_s7SwiftUI14ObservedObjectVy11WorkoutCore04GoalE13ConfigurationCGMd, &_s7SwiftUI14ObservedObjectVy11WorkoutCore04GoalE13ConfigurationCGMR);
    v28 = v144;
    v29 = v26;
    v30 = dispatch thunk of WorkoutConfiguration.activityType.getter();
    _s7SwiftUI14ObservedObjectVy11WorkoutCore04GoalE13ConfigurationCGWOhTm_0(&v146, &_s7SwiftUI14ObservedObjectVy11WorkoutCore04GoalE13ConfigurationCGMd, &_s7SwiftUI14ObservedObjectVy11WorkoutCore04GoalE13ConfigurationCGMR);
    FIUIDistanceTypeForActivityType();

    v127 = v28;
    v31 = NLSessionActivityGoal.displayString(formattingManager:distanceType:localizedOpenString:)();
    v33 = v32;

    v137 = v31;
    v138 = v33;
    v34 = lazy protocol witness table accessor for type TupleView<((<<opaque return type of View.scenePadding(_:)>>.0)?, ModifiedContent<VStack<TupleView<(_ConditionalContent<ModifiedContent<GoalValueButton, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, ModifiedContent<ModifiedContent<EmbeddedGoalConfigurationView, _PaddingLayout>, _BackgroundModifier<ModifiedContent<StrokeBorderShapeView<RoundedRectangle, HierarchicalShapeStyle, EmptyView>, _FlexFrameLayout>>>>?, <<opaque return type of View.scenePadding(_:)>>.0)>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type ScrollView<TupleView<((<<opaque return type of View.scenePadding(_:)>>.0)?, ModifiedContent<VStack<TupleView<(_ConditionalContent<ModifiedContent<GoalValueButton, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, ModifiedContent<ModifiedContent<EmbeddedGoalConfigurationView, _PaddingLayout>, _BackgroundModifier<ModifiedContent<StrokeBorderShapeView<RoundedRectangle, HierarchicalShapeStyle, EmptyView>, _FlexFrameLayout>>>>?, <<opaque return type of View.scenePadding(_:)>>.0)>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>)>> and conformance ScrollView<A>, &_s7SwiftUI10ScrollViewVyAA05TupleD0VyAA0D0PAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA6VStackVyAEyAA19_ConditionalContentVyAA08ModifiedL0VyARyARyARyARyARyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0N9AlignmentOGGAVyAT4CaseOSgGGAA16_FlexFrameLayoutVGAVyAA4FontVSgGGAVySiSgGG07WorkoutB015BodyHyphenationVGSgAPyA18_A19_GGSg_A19_tGG_Qo_Sg_ARyANyAEyAPyARyA15_15GoalValueButtonVAVy0Y4Core0Y23ConfigurationDataSourceCSgGGARyARyA15_025EmbeddedGoalConfigurationD0VAA01_gW0VGAA011_BackgroundR0VyARyAA017StrokeBorderShapeD0VyAA16RoundedRectangleVAA22HierarchicalShapeStyleVAA05EmptyD0VGA5_GGGGSg_AgAEAHyQrALFQOyANyAEyA15_05StartY6ButtonV_A15_14SaveCopyButtonVSgA15_05ShareY19ConfigurationButtonVSgA15_12DeleteButtonVSgARyARyARyARyARyARyARyAtVyAA5ColorVSgGGAYGA2_GA5_GA10_GA13_GA17_GSgtGG_Qo_tGGAVyAA13AnyShapeStyleVSgGGtGGMd, &_s7SwiftUI10ScrollViewVyAA05TupleD0VyAA0D0PAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA6VStackVyAEyAA19_ConditionalContentVyAA08ModifiedL0VyARyARyARyARyARyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0N9AlignmentOGGAVyAT4CaseOSgGGAA16_FlexFrameLayoutVGAVyAA4FontVSgGGAVySiSgGG07WorkoutB015BodyHyphenationVGSgAPyA18_A19_GGSg_A19_tGG_Qo_Sg_ARyANyAEyAPyARyA15_15GoalValueButtonVAVy0Y4Core0Y23ConfigurationDataSourceCSgGGARyARyA15_025EmbeddedGoalConfigurationD0VAA01_gW0VGAA011_BackgroundR0VyARyAA017StrokeBorderShapeD0VyAA16RoundedRectangleVAA22HierarchicalShapeStyleVAA05EmptyD0VGA5_GGGGSg_AgAEAHyQrALFQOyANyAEyA15_05StartY6ButtonV_A15_14SaveCopyButtonVSgA15_05ShareY19ConfigurationButtonVSgA15_12DeleteButtonVSgARyARyARyARyARyARyARyAtVyAA5ColorVSgGGAYGA2_GA5_GA10_GA13_GA17_GSgtGG_Qo_tGGAVyAA13AnyShapeStyleVSgGGtGGMR, MEMORY[0x277CDD6E0]);
    v35 = lazy protocol witness table accessor for type String and conformance String();
    v36 = v120;
    View.navigationTitle<A>(_:)();

    v119[1](v4, v2);
    v37 = v29;
    WorkoutConfiguration.displayColor.getter();
    _s7SwiftUI14ObservedObjectVy11WorkoutCore04GoalE13ConfigurationCGWOhTm_0(&v146, &_s7SwiftUI14ObservedObjectVy11WorkoutCore04GoalE13ConfigurationCGMd, &_s7SwiftUI14ObservedObjectVy11WorkoutCore04GoalE13ConfigurationCGMR);
    *&v141 = Color.init(uiColor:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI16ToolbarPlacementVGMd, &_ss23_ContiguousArrayStorageCy7SwiftUI16ToolbarPlacementVGMR);
    type metadata accessor for ToolbarPlacement();
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_20CB5DA70;
    static ToolbarPlacement.navigationBar.getter();
    v137 = v2;
    v138 = MEMORY[0x277D837D0];
    v139 = v34;
    v140 = v35;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v40 = v130;
    v41 = v122;
    MEMORY[0x20F30A9F0](&v141, v38, v122, MEMORY[0x277CE0F78], OpaqueTypeConformance2, MEMORY[0x277CE0F60]);

    (*(v121 + 8))(v36, v41);
    type metadata accessor for GoalWorkoutConfiguration();
    lazy protocol witness table accessor for type GoalWorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type GoalWorkoutConfiguration and conformance WorkoutConfiguration, MEMORY[0x277D7D928], MEMORY[0x277D7DA48]);
    v42 = v37;
    v43 = ObservableObject<>.objectWillChange.getter();
    _s7SwiftUI14ObservedObjectVy11WorkoutCore04GoalE13ConfigurationCGWOhTm_0(&v146, &_s7SwiftUI14ObservedObjectVy11WorkoutCore04GoalE13ConfigurationCGMd, &_s7SwiftUI14ObservedObjectVy11WorkoutCore04GoalE13ConfigurationCGMR);
    v44 = swift_allocObject();
    v45 = *v145;
    v44[3] = v144;
    v44[4] = v45;
    v44[5] = *&v145[16];
    v46 = v143;
    v44[1] = v142;
    v44[2] = v46;
    v47 = v123;
    *(v40 + *(v123 + 52)) = v43;
    v48 = (v40 + *(v47 + 56));
    *v48 = partial apply for closure #4 in GoalWorkoutConfigurationView.body.getter;
    v48[1] = v44;
    v141 = *&v145[8];
    outlined init with copy of GoalWorkoutConfigurationView(&v142, &v137);
    outlined init with copy of ObservedObject<GoalWorkoutConfiguration>(&v146, &v137, &_s7SwiftUI14ObservedObjectVy11WorkoutCore04GoalE13ConfigurationCGMd, &_s7SwiftUI14ObservedObjectVy11WorkoutCore04GoalE13ConfigurationCGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
    State.projectedValue.getter();
    v49 = v142;
    if (v142)
    {
      v120 = v137;
      v50 = v138;
      LODWORD(v125) = v139;
      LODWORD(v126) = v145[0];
      outlined init with copy of ObservedObject<GoalWorkoutConfiguration>(&v146, &v137, &_s7SwiftUI14ObservedObjectVy11WorkoutCore04GoalE13ConfigurationCGMd, &_s7SwiftUI14ObservedObjectVy11WorkoutCore04GoalE13ConfigurationCGMR);
      v51 = v49;
      WorkoutConfiguration.displayColor.getter();
      _s7SwiftUI14ObservedObjectVy11WorkoutCore04GoalE13ConfigurationCGWOhTm_0(&v146, &_s7SwiftUI14ObservedObjectVy11WorkoutCore04GoalE13ConfigurationCGMd, &_s7SwiftUI14ObservedObjectVy11WorkoutCore04GoalE13ConfigurationCGMR);
      v123 = Color.init(uiColor:)();
      LOBYTE(v141) = 0;
      static Binding.constant(_:)();
      v121 = v137;
      v52 = v138;
      LODWORD(v122) = v139;
      v53 = swift_allocObject();
      *(v53 + 16) = v51;
      KeyPath = swift_getKeyPath();
      v55 = &v129[*(v135 + 36)];
      *v55 = KeyPath;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMR);
      swift_storeEnumTagMultiPayload();
      type metadata accessor for ConfigurationNavigationModel(0);
      lazy protocol witness table accessor for type GoalWorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel, &protocol conformance descriptor for ConfigurationNavigationModel);
      v124 = v51;
      v56 = v120;

      v57 = EnvironmentObject.init()();
      v59 = v58;
      v60 = type metadata accessor for WorkoutConfigurationToolbar(0);
      v61 = (v55 + v60[5]);
      *v61 = v57;
      v61[1] = v59;
      v62 = v42;
      v63 = (v55 + v60[6]);
      type metadata accessor for WorkoutConfiguration();
      lazy protocol witness table accessor for type GoalWorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type WorkoutConfiguration and conformance WorkoutConfiguration, MEMORY[0x277D7DA50], MEMORY[0x277D7DA48]);
      v64 = v62;
      *v63 = ObservedObject.init(wrappedValue:)();
      v63[1] = v65;
      v66 = v55 + v60[7];
      *v66 = v56;
      *(v66 + 1) = v50;
      v66[16] = v125;
      v67 = v55 + v60[8];
      *v67 = _s7SwiftUI4ViewP07WorkoutB0E27workoutConfigurationToolbar0eF015hasBeenModified10dataSource17formattingManager6intent5color20showEditConfirmationQr0D4Core0dF0C_AA7BindingVySbGSgAM0df4DataL0CSo014FIUIFormattingN0CAD0dF6IntentOAA5ColorVARtFAUycfu0_TA_0;
      *(v67 + 1) = v53;
      v67[16] = 0;
      v68 = v127;
      *(v55 + v60[9]) = v127;
      *(v55 + v60[10]) = v126;
      *(v55 + v60[11]) = v123;
      v69 = v55 + v60[12];
      *v69 = v121;
      *(v69 + 1) = v52;
      v69[16] = v122;
      v70 = v55 + v60[13];
      LOBYTE(v141) = 0;

      v71 = v68;

      State.init(wrappedValue:)();
      v72 = v138;
      *v70 = v137;
      *(v70 + 1) = v72;
      v73 = v55 + v60[14];
      LOBYTE(v141) = 0;
      State.init(wrappedValue:)();

      _s7SwiftUI14ObservedObjectVy11WorkoutCore04GoalE13ConfigurationCGWOhTm_0(&v146, &_s7SwiftUI14ObservedObjectVy11WorkoutCore04GoalE13ConfigurationCGMd, &_s7SwiftUI14ObservedObjectVy11WorkoutCore04GoalE13ConfigurationCGMR);

      v74 = v138;
      *v73 = v137;
      *(v73 + 1) = v74;
      v75 = v129;
      outlined init with take of SubscriptionView<ObservableObjectPublisher, <<opaque return type of View.toolbarForegroundStyle<A>(_:for:)>>.0>(v130, v129, &_s7SwiftUI16SubscriptionViewVy7Combine25ObservableObjectPublisherCAA0D0PAAE22toolbarForegroundStyle_3forQrqd___AA16ToolbarPlacementVdtAA05ShapeK0Rd__lFQOyAhAE18navigationBarTitleyQrqd__SyRd__lFQOyAA06ScrollD0VyAA05TupleD0VyAhAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA6VStackVyARyAA19_ConditionalContentVyAA15ModifiedContentVyA1_yA1_yA1_yA1_yA1_yAA4TextVAA30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGGA5_yA3_4CaseOSgGGAA16_FlexFrameLayoutVGA5_yAA4FontVSgGGA5_ySiSgGG07WorkoutB015BodyHyphenationVGSgA_yA29_A30_GGSg_A30_tGG_Qo_Sg_A1_yAYyARyA_yA1_yA26_15GoalValueButtonVA5_y11WorkoutCore30WorkoutConfigurationDataSourceCSgGGA1_yA1_yA26_025EmbeddedGoalConfigurationD0VAA01_V6LayoutVGAA19_BackgroundModifierVyA1_yAA012StrokeBorderoD0VyAA16RoundedRectangleVAA012HierarchicaloK0VAA05EmptyD0VGA16_GGGGSg_AhAEASyQrAWFQOyAYyARyA26_18StartWorkoutButtonV_A26_14SaveCopyButtonVSgA26_31ShareWorkoutConfigurationButtonVSgA26_12DeleteButtonVSgA1_yA1_yA1_yA1_yA1_yA1_yA1_yA3_A5_yAA5ColorVSgGGA8_GA13_GA16_GA21_GA24_GA28_GSgtGG_Qo_tGGA5_yAA03AnyoK0VSgGGtGG_SSQo__A79_Qo_GMd, &_s7SwiftUI16SubscriptionViewVy7Combine25ObservableObjectPublisherCAA0D0PAAE22toolbarForegroundStyle_3forQrqd___AA16ToolbarPlacementVdtAA05ShapeK0Rd__lFQOyAhAE18navigationBarTitleyQrqd__SyRd__lFQOyAA06ScrollD0VyAA05TupleD0VyAhAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA6VStackVyARyAA19_ConditionalContentVyAA15ModifiedContentVyA1_yA1_yA1_yA1_yA1_yAA4TextVAA30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGGA5_yA3_4CaseOSgGGAA16_FlexFrameLayoutVGA5_yAA4FontVSgGGA5_ySiSgGG07WorkoutB015BodyHyphenationVGSgA_yA29_A30_GGSg_A30_tGG_Qo_Sg_A1_yAYyARyA_yA1_yA26_15GoalValueButtonVA5_y11WorkoutCore30WorkoutConfigurationDataSourceCSgGGA1_yA1_yA26_025EmbeddedGoalConfigurationD0VAA01_V6LayoutVGAA19_BackgroundModifierVyA1_yAA012StrokeBorderoD0VyAA16RoundedRectangleVAA012HierarchicaloK0VAA05EmptyD0VGA16_GGGGSg_AhAEASyQrAWFQOyAYyARyA26_18StartWorkoutButtonV_A26_14SaveCopyButtonVSgA26_31ShareWorkoutConfigurationButtonVSgA26_12DeleteButtonVSgA1_yA1_yA1_yA1_yA1_yA1_yA1_yA3_A5_yAA5ColorVSgGGA8_GA13_GA16_GA21_GA24_GA28_GSgtGG_Qo_tGGA5_yAA03AnyoK0VSgGGtGG_SSQo__A79_Qo_GMR);
      v76 = &_s7SwiftUI15ModifiedContentVyAA16SubscriptionViewVy7Combine25ObservableObjectPublisherCAA0F0PAAE22toolbarForegroundStyle_3forQrqd___AA16ToolbarPlacementVdtAA05ShapeM0Rd__lFQOyAjAE18navigationBarTitleyQrqd__SyRd__lFQOyAA06ScrollF0VyAA05TupleF0VyAjAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA6VStackVyATyAA012_ConditionalD0VyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGGA5_yA3_4CaseOSgGGAA16_FlexFrameLayoutVGA5_yAA4FontVSgGGA5_ySiSgGG07WorkoutB015BodyHyphenationVGSgA1_yA29_A30_GGSg_A30_tGG_Qo_Sg_ACyA_yATyA1_yACyA26_15GoalValueButtonVA5_y11WorkoutCore30WorkoutConfigurationDataSourceCSgGGACyACyA26_025EmbeddedGoalConfigurationF0VAA01_X6LayoutVGAA19_BackgroundModifierVyACyAA012StrokeBorderqF0VyAA16RoundedRectangleVAA012HierarchicalqM0VAA05EmptyF0VGA16_GGGGSg_AjAEAUyQrAYFQOyA_yATyA26_18StartWorkoutButtonV_A26_14SaveCopyButtonVSgA26_31ShareWorkoutConfigurationButtonVSgA26_12DeleteButtonVSgACyACyACyACyACyACyACyA3_A5_yAA5ColorVSgGGA8_GA13_GA16_GA21_GA24_GA28_GSgtGG_Qo_tGGA5_yAA03AnyqM0VSgGGtGG_SSQo__A79_Qo_GA26_020WorkoutConfigurationO0VGMd;
      v77 = &_s7SwiftUI15ModifiedContentVyAA16SubscriptionViewVy7Combine25ObservableObjectPublisherCAA0F0PAAE22toolbarForegroundStyle_3forQrqd___AA16ToolbarPlacementVdtAA05ShapeM0Rd__lFQOyAjAE18navigationBarTitleyQrqd__SyRd__lFQOyAA06ScrollF0VyAA05TupleF0VyAjAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA6VStackVyATyAA012_ConditionalD0VyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGGA5_yA3_4CaseOSgGGAA16_FlexFrameLayoutVGA5_yAA4FontVSgGGA5_ySiSgGG07WorkoutB015BodyHyphenationVGSgA1_yA29_A30_GGSg_A30_tGG_Qo_Sg_ACyA_yATyA1_yACyA26_15GoalValueButtonVA5_y11WorkoutCore30WorkoutConfigurationDataSourceCSgGGACyACyA26_025EmbeddedGoalConfigurationF0VAA01_X6LayoutVGAA19_BackgroundModifierVyACyAA012StrokeBorderqF0VyAA16RoundedRectangleVAA012HierarchicalqM0VAA05EmptyF0VGA16_GGGGSg_AjAEAUyQrAYFQOyA_yATyA26_18StartWorkoutButtonV_A26_14SaveCopyButtonVSgA26_31ShareWorkoutConfigurationButtonVSgA26_12DeleteButtonVSgACyACyACyACyACyACyACyA3_A5_yAA5ColorVSgGGA8_GA13_GA16_GA21_GA24_GA28_GSgtGG_Qo_tGGA5_yAA03AnyqM0VSgGGtGG_SSQo__A79_Qo_GA26_020WorkoutConfigurationO0VGMR;
      v78 = v128;
      outlined init with take of SubscriptionView<ObservableObjectPublisher, <<opaque return type of View.toolbarForegroundStyle<A>(_:for:)>>.0>(v75, v128, &_s7SwiftUI15ModifiedContentVyAA16SubscriptionViewVy7Combine25ObservableObjectPublisherCAA0F0PAAE22toolbarForegroundStyle_3forQrqd___AA16ToolbarPlacementVdtAA05ShapeM0Rd__lFQOyAjAE18navigationBarTitleyQrqd__SyRd__lFQOyAA06ScrollF0VyAA05TupleF0VyAjAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA6VStackVyATyAA012_ConditionalD0VyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGGA5_yA3_4CaseOSgGGAA16_FlexFrameLayoutVGA5_yAA4FontVSgGGA5_ySiSgGG07WorkoutB015BodyHyphenationVGSgA1_yA29_A30_GGSg_A30_tGG_Qo_Sg_ACyA_yATyA1_yACyA26_15GoalValueButtonVA5_y11WorkoutCore30WorkoutConfigurationDataSourceCSgGGACyACyA26_025EmbeddedGoalConfigurationF0VAA01_X6LayoutVGAA19_BackgroundModifierVyACyAA012StrokeBorderqF0VyAA16RoundedRectangleVAA012HierarchicalqM0VAA05EmptyF0VGA16_GGGGSg_AjAEAUyQrAYFQOyA_yATyA26_18StartWorkoutButtonV_A26_14SaveCopyButtonVSgA26_31ShareWorkoutConfigurationButtonVSgA26_12DeleteButtonVSgACyACyACyACyACyACyACyA3_A5_yAA5ColorVSgGGA8_GA13_GA16_GA21_GA24_GA28_GSgtGG_Qo_tGGA5_yAA03AnyqM0VSgGGtGG_SSQo__A79_Qo_GA26_020WorkoutConfigurationO0VGMd, &_s7SwiftUI15ModifiedContentVyAA16SubscriptionViewVy7Combine25ObservableObjectPublisherCAA0F0PAAE22toolbarForegroundStyle_3forQrqd___AA16ToolbarPlacementVdtAA05ShapeM0Rd__lFQOyAjAE18navigationBarTitleyQrqd__SyRd__lFQOyAA06ScrollF0VyAA05TupleF0VyAjAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA6VStackVyATyAA012_ConditionalD0VyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGGA5_yA3_4CaseOSgGGAA16_FlexFrameLayoutVGA5_yAA4FontVSgGGA5_ySiSgGG07WorkoutB015BodyHyphenationVGSgA1_yA29_A30_GGSg_A30_tGG_Qo_Sg_ACyA_yATyA1_yACyA26_15GoalValueButtonVA5_y11WorkoutCore30WorkoutConfigurationDataSourceCSgGGACyACyA26_025EmbeddedGoalConfigurationF0VAA01_X6LayoutVGAA19_BackgroundModifierVyACyAA012StrokeBorderqF0VyAA16RoundedRectangleVAA012HierarchicalqM0VAA05EmptyF0VGA16_GGGGSg_AjAEAUyQrAYFQOyA_yATyA26_18StartWorkoutButtonV_A26_14SaveCopyButtonVSgA26_31ShareWorkoutConfigurationButtonVSgA26_12DeleteButtonVSgACyACyACyACyACyACyACyA3_A5_yAA5ColorVSgGGA8_GA13_GA16_GA21_GA24_GA28_GSgtGG_Qo_tGGA5_yAA03AnyqM0VSgGGtGG_SSQo__A79_Qo_GA26_020WorkoutConfigurationO0VGMR);
      outlined init with copy of ModifiedContent<SubscriptionView<ObservableObjectPublisher, <<opaque return type of View.toolbarForegroundStyle<A>(_:for:)>>.0>, WorkoutConfigurationToolbar>(v78, v132, &_s7SwiftUI15ModifiedContentVyAA16SubscriptionViewVy7Combine25ObservableObjectPublisherCAA0F0PAAE22toolbarForegroundStyle_3forQrqd___AA16ToolbarPlacementVdtAA05ShapeM0Rd__lFQOyAjAE18navigationBarTitleyQrqd__SyRd__lFQOyAA06ScrollF0VyAA05TupleF0VyAjAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA6VStackVyATyAA012_ConditionalD0VyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGGA5_yA3_4CaseOSgGGAA16_FlexFrameLayoutVGA5_yAA4FontVSgGGA5_ySiSgGG07WorkoutB015BodyHyphenationVGSgA1_yA29_A30_GGSg_A30_tGG_Qo_Sg_ACyA_yATyA1_yACyA26_15GoalValueButtonVA5_y11WorkoutCore30WorkoutConfigurationDataSourceCSgGGACyACyA26_025EmbeddedGoalConfigurationF0VAA01_X6LayoutVGAA19_BackgroundModifierVyACyAA012StrokeBorderqF0VyAA16RoundedRectangleVAA012HierarchicalqM0VAA05EmptyF0VGA16_GGGGSg_AjAEAUyQrAYFQOyA_yATyA26_18StartWorkoutButtonV_A26_14SaveCopyButtonVSgA26_31ShareWorkoutConfigurationButtonVSgA26_12DeleteButtonVSgACyACyACyACyACyACyACyA3_A5_yAA5ColorVSgGGA8_GA13_GA16_GA21_GA24_GA28_GSgtGG_Qo_tGGA5_yAA03AnyqM0VSgGGtGG_SSQo__A79_Qo_GA26_020WorkoutConfigurationO0VGMd, &_s7SwiftUI15ModifiedContentVyAA16SubscriptionViewVy7Combine25ObservableObjectPublisherCAA0F0PAAE22toolbarForegroundStyle_3forQrqd___AA16ToolbarPlacementVdtAA05ShapeM0Rd__lFQOyAjAE18navigationBarTitleyQrqd__SyRd__lFQOyAA06ScrollF0VyAA05TupleF0VyAjAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA6VStackVyATyAA012_ConditionalD0VyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGGA5_yA3_4CaseOSgGGAA16_FlexFrameLayoutVGA5_yAA4FontVSgGGA5_ySiSgGG07WorkoutB015BodyHyphenationVGSgA1_yA29_A30_GGSg_A30_tGG_Qo_Sg_ACyA_yATyA1_yACyA26_15GoalValueButtonVA5_y11WorkoutCore30WorkoutConfigurationDataSourceCSgGGACyACyA26_025EmbeddedGoalConfigurationF0VAA01_X6LayoutVGAA19_BackgroundModifierVyACyAA012StrokeBorderqF0VyAA16RoundedRectangleVAA012HierarchicalqM0VAA05EmptyF0VGA16_GGGGSg_AjAEAUyQrAYFQOyA_yATyA26_18StartWorkoutButtonV_A26_14SaveCopyButtonVSgA26_31ShareWorkoutConfigurationButtonVSgA26_12DeleteButtonVSgACyACyACyACyACyACyACyA3_A5_yAA5ColorVSgGGA8_GA13_GA16_GA21_GA24_GA28_GSgtGG_Qo_tGGA5_yAA03AnyqM0VSgGGtGG_SSQo__A79_Qo_GA26_020WorkoutConfigurationO0VGMR);
LABEL_6:
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.contentMargins(_:_:for:)>>.0, WorkoutConfigurationToolbar> and conformance <> ModifiedContent<A, B>();
      lazy protocol witness table accessor for type ModifiedContent<SubscriptionView<ObservableObjectPublisher, <<opaque return type of View.toolbarForegroundStyle<A>(_:for:)>>.0>, WorkoutConfigurationToolbar> and conformance <> ModifiedContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      return outlined destroy of ModifiedContent<SubscriptionView<ObservableObjectPublisher, <<opaque return type of View.toolbarForegroundStyle<A>(_:for:)>>.0>, WorkoutConfigurationToolbar>(v78, v76, v77);
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA4TextV07WorkoutB014ClearListStyle33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_AEyAEyAEyAA6VStackVyACyAA012_ConditionalF0VyAEyAEyAEyAEyAEyAEyAgA30_EnvironmentKeyWritingModifierVyAA0G9AlignmentOGGARyAG4CaseOSgGGAA16_FlexFrameLayoutVGARyAA4FontVSgGGARySiSgGGAH15BodyHyphenationVGSgAPyA13_A14_GGSg_A14_tGGAA06_TraityZ0VyAA0j18RowBackgroundTraitX0VGGA21_yAA0j14RowInsetsTraitX0VGGAH04HideJ12RowSeparatorAJLLVGSgAPyAA7SectionVyAA05EmptyD0VAH15GoalValuePickerVA37_GAEyAEyAEyAEyAH025EmbeddedGoalConfigurationD0VAA14_PaddingLayoutVGAA011_BackgroundZ0VyAEyAA017StrokeBorderShapeD0VyAA16RoundedRectangleVAA017HierarchicalShapeK0VA37_GA1_GGGA24_GA28_GGSgAH05StartH6ButtonVAEyAEyAEyAH14SaveCopyButtonVA28_GA31_GARyAA11ControlSizeOGGSgAEyAEyAEyAEyAEyAEyAEyAEyAEyAgRyAA5ColorVSgGGAUGAZGA1_GA6_GA9_GA12_GA28_GA24_GSgtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA4TextV07WorkoutB014ClearListStyle33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_AEyAEyAEyAA6VStackVyACyAA012_ConditionalF0VyAEyAEyAEyAEyAEyAEyAgA30_EnvironmentKeyWritingModifierVyAA0G9AlignmentOGGARyAG4CaseOSgGGAA16_FlexFrameLayoutVGARyAA4FontVSgGGARySiSgGGAH15BodyHyphenationVGSgAPyA13_A14_GGSg_A14_tGGAA06_TraityZ0VyAA0j18RowBackgroundTraitX0VGGA21_yAA0j14RowInsetsTraitX0VGGAH04HideJ12RowSeparatorAJLLVGSgAPyAA7SectionVyAA05EmptyD0VAH15GoalValuePickerVA37_GAEyAEyAEyAEyAH025EmbeddedGoalConfigurationD0VAA14_PaddingLayoutVGAA011_BackgroundZ0VyAEyAA017StrokeBorderShapeD0VyAA16RoundedRectangleVAA017HierarchicalShapeK0VA37_GA1_GGGA24_GA28_GGSgAH05StartH6ButtonVAEyAEyAEyAH14SaveCopyButtonVA28_GA31_GARyAA11ControlSizeOGGSgAEyAEyAEyAEyAEyAEyAEyAEyAEyAgRyAA5ColorVSgGGAUGAZGA1_GA6_GA9_GA12_GA28_GA24_GSgtGMR);
    lazy protocol witness table accessor for type TupleView<((<<opaque return type of View.scenePadding(_:)>>.0)?, ModifiedContent<VStack<TupleView<(_ConditionalContent<ModifiedContent<GoalValueButton, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, ModifiedContent<ModifiedContent<EmbeddedGoalConfigurationView, _PaddingLayout>, _BackgroundModifier<ModifiedContent<StrokeBorderShapeView<RoundedRectangle, HierarchicalShapeStyle, EmptyView>, _FlexFrameLayout>>>>?, <<opaque return type of View.scenePadding(_:)>>.0)>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>)> and conformance TupleView<A>( &lazy protocol witness table cache variable for type TupleView<(ModifiedContent<Text, ClearListStyle>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>?, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>,  &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA4TextV07WorkoutB014ClearListStyle33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_AEyAEyAEyAA6VStackVyACyAA012_ConditionalF0VyAEyAEyAEyAEyAEyAEyAgA30_EnvironmentKeyWritingModifierVyAA0G9AlignmentOGGARyAG4CaseOSgGGAA16_FlexFrameLayoutVGARyAA4FontVSgGGARySiSgGGAH15BodyHyphenationVGSgAPyA13_A14_GGSg_A14_tGGAA06_TraityZ0VyAA0j18RowBackgroundTraitX0VGGA21_yAA0j14RowInsetsTraitX0VGGAH04HideJ12RowSeparatorAJLLVGSgAPyAA7SectionVyAA05EmptyD0VAH15GoalValuePickerVA37_GAEyAEyAEyAEyAH025EmbeddedGoalConfigurationD0VAA14_PaddingLayoutVGAA011_BackgroundZ0VyAEyAA017StrokeBorderShapeD0VyAA16RoundedRectangleVAA017HierarchicalShapeK0VA37_GA1_GGGA24_GA28_GGSgAH05StartH6ButtonVAEyAEyAEyAH14SaveCopyButtonVA28_GA31_GARyAA11ControlSizeOGGSgAEyAEyAEyAEyAEyAEyAEyAEyAEyAgRyAA5ColorVSgGGAUGAZGA1_GA6_GA9_GA12_GA28_GA24_GSgtGMd,  &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA4TextV07WorkoutB014ClearListStyle33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_AEyAEyAEyAA6VStackVyACyAA012_ConditionalF0VyAEyAEyAEyAEyAEyAEyAgA30_EnvironmentKeyWritingModifierVyAA0G9AlignmentOGGARyAG4CaseOSgGGAA16_FlexFrameLayoutVGARyAA4FontVSgGGARySiSgGGAH15BodyHyphenationVGSgAPyA13_A14_GGSg_A14_tGGAA06_TraityZ0VyAA0j18RowBackgroundTraitX0VGGA21_yAA0j14RowInsetsTraitX0VGGAH04HideJ12RowSeparatorAJLLVGSgAPyAA7SectionVyAA05EmptyD0VAH15GoalValuePickerVA37_GAEyAEyAEyAEyAH025EmbeddedGoalConfigurationD0VAA14_PaddingLayoutVGAA011_BackgroundZ0VyAEyAA017StrokeBorderShapeD0VyAA16RoundedRectangleVAA017HierarchicalShapeK0VA37_GA1_GGGA24_GA28_GGSgAH05StartH6ButtonVAEyAEyAEyAH14SaveCopyButtonVA28_GA31_GARyAA11ControlSizeOGGSgAEyAEyAEyAEyAEyAEyAEyAEyAEyAgRyAA5ColorVSgGGAUGAZGA1_GA6_GA9_GA12_GA28_GA24_GSgtGMR,  MEMORY[0x277CE14C0]);
    List<>.init(content:)();
    v146 = v143;
    v79 = *(&v143 + 1);
    type metadata accessor for GoalWorkoutConfiguration();
    lazy protocol witness table accessor for type GoalWorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type GoalWorkoutConfiguration and conformance WorkoutConfiguration, MEMORY[0x277D7D928], MEMORY[0x277D7DA48]);
    v80 = v79;
    v81 = ObservableObject<>.objectWillChange.getter();
    _s7SwiftUI14ObservedObjectVy11WorkoutCore04GoalE13ConfigurationCGWOhTm_0(&v146, &_s7SwiftUI14ObservedObjectVy11WorkoutCore04GoalE13ConfigurationCGMd, &_s7SwiftUI14ObservedObjectVy11WorkoutCore04GoalE13ConfigurationCGMR);
    v82 = swift_allocObject();
    v83 = *v145;
    v82[3] = v144;
    v82[4] = v83;
    v82[5] = *&v145[16];
    v84 = v143;
    v82[1] = v142;
    v82[2] = v84;
    *&v18[*(v16 + 52)] = v81;
    v85 = &v18[*(v16 + 56)];
    *v85 = partial apply for closure #2 in GoalWorkoutConfigurationView.body.getter;
    *(v85 + 1) = v82;
    outlined init with copy of GoalWorkoutConfigurationView(&v142, &v137);
    v86 = static Edge.Set.top.getter();
    static ContentMarginPlacement.scrollContent.getter();
    v87 = lazy protocol witness table accessor for type TupleView<((<<opaque return type of View.scenePadding(_:)>>.0)?, ModifiedContent<VStack<TupleView<(_ConditionalContent<ModifiedContent<GoalValueButton, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, ModifiedContent<ModifiedContent<EmbeddedGoalConfigurationView, _PaddingLayout>, _BackgroundModifier<ModifiedContent<StrokeBorderShapeView<RoundedRectangle, HierarchicalShapeStyle, EmptyView>, _FlexFrameLayout>>>>?, <<opaque return type of View.scenePadding(_:)>>.0)>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>)> and conformance TupleView<A>( &lazy protocol witness table cache variable for type SubscriptionView<ObservableObjectPublisher, List<Never, TupleView<(ModifiedContent<Text, ClearListStyle>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>?, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Tex,  &_s7SwiftUI16SubscriptionViewVy7Combine25ObservableObjectPublisherCAA4ListVys5NeverOAA05TupleD0VyAA15ModifiedContentVyAA4TextV07WorkoutB005ClearI5Style33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_ANyANyANyAA6VStackVyALyAA012_ConditionalM0VyANyANyANyANyANyANyApA30_EnvironmentKeyWritingModifierVyAA0N9AlignmentOGGA_yAP4CaseOSgGGAA16_FlexFrameLayoutVGA_yAA4FontVSgGGA_ySiSgGGAQ15BodyHyphenationVGSgAYyA22_A23_GGSg_A23_tGGAA21_TraitWritingModifierVyAA0I21RowBackgroundTraitKeyVGGA30_yAA0I17RowInsetsTraitKeyVGGAQ04HideI12RowSeparatorASLLVGSgAYyAA7SectionVyAA05EmptyD0VAQ15GoalValuePickerVA46_GANyANyANyANyAQ025EmbeddedGoalConfigurationD0VAA14_PaddingLayoutVGAA19_BackgroundModifierVyANyAA017StrokeBorderShapeD0VyAA16RoundedRectangleVAA017HierarchicalShapeQ0VA46_GA10_GGGA33_GA37_GGSgAQ05StartO6ButtonVANyANyANyAQ14SaveCopyButtonVA37_GA40_GA_yAA11ControlSizeOGGSgANyANyANyANyANyANyANyANyANyAPA_yAA5ColorVSgGGA2_GA7_GA10_GA15_GA18_GA21_GA37_GA33_GSgtGGGMd,  &_s7SwiftUI16SubscriptionViewVy7Combine25ObservableObjectPublisherCAA4ListVys5NeverOAA05TupleD0VyAA15ModifiedContentVyAA4TextV07WorkoutB005ClearI5Style33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_ANyANyANyAA6VStackVyALyAA012_ConditionalM0VyANyANyANyANyANyANyApA30_EnvironmentKeyWritingModifierVyAA0N9AlignmentOGGA_yAP4CaseOSgGGAA16_FlexFrameLayoutVGA_yAA4FontVSgGGA_ySiSgGGAQ15BodyHyphenationVGSgAYyA22_A23_GGSg_A23_tGGAA21_TraitWritingModifierVyAA0I21RowBackgroundTraitKeyVGGA30_yAA0I17RowInsetsTraitKeyVGGAQ04HideI12RowSeparatorASLLVGSgAYyAA7SectionVyAA05EmptyD0VAQ15GoalValuePickerVA46_GANyANyANyANyAQ025EmbeddedGoalConfigurationD0VAA14_PaddingLayoutVGAA19_BackgroundModifierVyANyAA017StrokeBorderShapeD0VyAA16RoundedRectangleVAA017HierarchicalShapeQ0VA46_GA10_GGGA33_GA37_GGSgAQ05StartO6ButtonVANyANyANyAQ14SaveCopyButtonVA37_GA40_GA_yAA11ControlSizeOGGSgANyANyANyANyANyANyANyANyANyAPA_yAA5ColorVSgGGA2_GA7_GA10_GA15_GA18_GA21_GA37_GA33_GSgtGGGMR,  MEMORY[0x277CDDB50]);
    MEMORY[0x20F30A640](v86, 0, 0, v15, v16, v87);
    (*(v13 + 8))(v15, v12);
    _s7SwiftUI14ObservedObjectVy11WorkoutCore04GoalE13ConfigurationCGWOhTm_0(v18, &_s7SwiftUI16SubscriptionViewVy7Combine25ObservableObjectPublisherCAA4ListVys5NeverOAA05TupleD0VyAA15ModifiedContentVyAA4TextV07WorkoutB005ClearI5Style33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_ANyANyANyAA6VStackVyALyAA012_ConditionalM0VyANyANyANyANyANyANyApA30_EnvironmentKeyWritingModifierVyAA0N9AlignmentOGGA_yAP4CaseOSgGGAA16_FlexFrameLayoutVGA_yAA4FontVSgGGA_ySiSgGGAQ15BodyHyphenationVGSgAYyA22_A23_GGSg_A23_tGGAA21_TraitWritingModifierVyAA0I21RowBackgroundTraitKeyVGGA30_yAA0I17RowInsetsTraitKeyVGGAQ04HideI12RowSeparatorASLLVGSgAYyAA7SectionVyAA05EmptyD0VAQ15GoalValuePickerVA46_GANyANyANyANyAQ025EmbeddedGoalConfigurationD0VAA14_PaddingLayoutVGAA19_BackgroundModifierVyANyAA017StrokeBorderShapeD0VyAA16RoundedRectangleVAA017HierarchicalShapeQ0VA46_GA10_GGGA33_GA37_GGSgAQ05StartO6ButtonVANyANyANyAQ14SaveCopyButtonVA37_GA40_GA_yAA11ControlSizeOGGSgANyANyANyANyANyANyANyANyANyAPA_yAA5ColorVSgGGA2_GA7_GA10_GA15_GA18_GA21_GA37_GA33_GSgtGGGMd, &_s7SwiftUI16SubscriptionViewVy7Combine25ObservableObjectPublisherCAA4ListVys5NeverOAA05TupleD0VyAA15ModifiedContentVyAA4TextV07WorkoutB005ClearI5Style33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_ANyANyANyAA6VStackVyALyAA012_ConditionalM0VyANyANyANyANyANyANyApA30_EnvironmentKeyWritingModifierVyAA0N9AlignmentOGGA_yAP4CaseOSgGGAA16_FlexFrameLayoutVGA_yAA4FontVSgGGA_ySiSgGGAQ15BodyHyphenationVGSgAYyA22_A23_GGSg_A23_tGGAA21_TraitWritingModifierVyAA0I21RowBackgroundTraitKeyVGGA30_yAA0I17RowInsetsTraitKeyVGGAQ04HideI12RowSeparatorASLLVGSgAYyAA7SectionVyAA05EmptyD0VAQ15GoalValuePickerVA46_GANyANyANyANyAQ025EmbeddedGoalConfigurationD0VAA14_PaddingLayoutVGAA19_BackgroundModifierVyANyAA017StrokeBorderShapeD0VyAA16RoundedRectangleVAA017HierarchicalShapeQ0VA46_GA10_GGGA33_GA37_GGSgAQ05StartO6ButtonVANyANyANyAQ14SaveCopyButtonVA37_GA40_GA_yAA11ControlSizeOGGSgANyANyANyANyANyANyANyANyANyAPA_yAA5ColorVSgGGA2_GA7_GA10_GA15_GA18_GA21_GA37_GA33_GSgtGGGMR);
    v141 = *&v145[8];
    v88 = v80;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
    State.projectedValue.getter();
    v89 = v142;
    if (v142)
    {
      v90 = v137;
      v91 = v138;
      LODWORD(v123) = v139;
      v129 = v144;
      LODWORD(v130) = v145[0];
      outlined init with copy of ObservedObject<GoalWorkoutConfiguration>(&v146, &v137, &_s7SwiftUI14ObservedObjectVy11WorkoutCore04GoalE13ConfigurationCGMd, &_s7SwiftUI14ObservedObjectVy11WorkoutCore04GoalE13ConfigurationCGMR);
      v92 = v89;
      WorkoutConfiguration.displayColor.getter();
      _s7SwiftUI14ObservedObjectVy11WorkoutCore04GoalE13ConfigurationCGWOhTm_0(&v146, &_s7SwiftUI14ObservedObjectVy11WorkoutCore04GoalE13ConfigurationCGMd, &_s7SwiftUI14ObservedObjectVy11WorkoutCore04GoalE13ConfigurationCGMR);
      v121 = Color.init(uiColor:)();
      LOBYTE(v141) = 0;
      static Binding.constant(_:)();
      v119 = v137;
      v93 = v138;
      LODWORD(v120) = v139;
      v94 = swift_allocObject();
      *(v94 + 16) = v92;
      v95 = swift_getKeyPath();
      v96 = &v127[*(v134 + 36)];
      *v96 = v95;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMR);
      swift_storeEnumTagMultiPayload();
      type metadata accessor for ConfigurationNavigationModel(0);
      lazy protocol witness table accessor for type GoalWorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel, &protocol conformance descriptor for ConfigurationNavigationModel);
      v122 = v92;
      v97 = v90;

      v98 = EnvironmentObject.init()();
      v100 = v99;
      v101 = type metadata accessor for WorkoutConfigurationToolbar(0);
      v102 = (v96 + v101[5]);
      *v102 = v98;
      v102[1] = v100;
      v103 = v88;
      v104 = (v96 + v101[6]);
      type metadata accessor for WorkoutConfiguration();
      lazy protocol witness table accessor for type GoalWorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type WorkoutConfiguration and conformance WorkoutConfiguration, MEMORY[0x277D7DA50], MEMORY[0x277D7DA48]);
      v105 = v103;
      *v104 = ObservedObject.init(wrappedValue:)();
      v104[1] = v106;
      v107 = v96 + v101[7];
      *v107 = v97;
      *(v107 + 1) = v91;
      v107[16] = v123;
      v108 = v96 + v101[8];
      *v108 = implicit closure #2 in View.workoutConfigurationToolbar(workoutConfiguration:hasBeenModified:dataSource:formattingManager:intent:color:showEditConfirmation:)partial apply;
      *(v108 + 1) = v94;
      v108[16] = 0;
      v109 = v129;
      *(v96 + v101[9]) = v129;
      *(v96 + v101[10]) = v130;
      *(v96 + v101[11]) = v121;
      v110 = v96 + v101[12];
      *v110 = v119;
      *(v110 + 1) = v93;
      v110[16] = v120;
      v111 = v96 + v101[13];
      LOBYTE(v141) = 0;

      v112 = v109;

      State.init(wrappedValue:)();
      v113 = v138;
      *v111 = v137;
      *(v111 + 1) = v113;
      v114 = v96 + v101[14];
      LOBYTE(v141) = 0;
      State.init(wrappedValue:)();

      _s7SwiftUI14ObservedObjectVy11WorkoutCore04GoalE13ConfigurationCGWOhTm_0(&v146, &_s7SwiftUI14ObservedObjectVy11WorkoutCore04GoalE13ConfigurationCGMd, &_s7SwiftUI14ObservedObjectVy11WorkoutCore04GoalE13ConfigurationCGMR);

      v115 = v138;
      *v114 = v137;
      *(v114 + 1) = v115;
      v116 = v127;
      (*(v124 + 4))(v127, v128, v126);
      v76 = &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE14contentMargins__3forQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA0D15MarginPlacementVtFQOyAA012SubscriptionE0Vy7Combine25ObservableObjectPublisherCAA4ListVys5NeverOAA05TupleE0VyACyAA4TextV07WorkoutB005ClearU5Style33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_ACyACyACyAA6VStackVyA0_yAA012_ConditionalD0VyACyACyACyACyACyACyA2_AA30_EnvironmentKeyWritingModifierVyAA0X9AlignmentOGGA13_yA2_4CaseOSgGGAA16_FlexFrameLayoutVGA13_yAA4FontVSgGGA13_ySiSgGGA3_15BodyHyphenationVGSgA11_yA36_A37_GGSg_A37_tGGAA21_TraitWritingModifierVyAA0U21RowBackgroundTraitKeyVGGA44_yAA0U17RowInsetsTraitKeyVGGA3_04HideU12RowSeparatorA5_LLVGSgA11_yAA7SectionVyAA05EmptyE0VA3_15GoalValuePickerVA60_GACyACyACyACyA3_025EmbeddedGoalConfigurationE0VAA14_PaddingLayoutVGAA19_BackgroundModifierVyACyAA017StrokeBorderShapeE0VyAA16RoundedRectangleVAA22HierarchicalShapeStyleVA60_GA24_GGGA47_GA51_GGSgA3_05StartY6ButtonVACyACyACyA3_14SaveCopyButtonVA51_GA54_GA13_yAA11ControlSizeOGGSgACyACyACyACyACyACyACyACyACyA2_A13_yAA5ColorVSgGGA16_GA21_GA24_GA29_GA32_GA35_GA51_GA47_GSgtGGG_Qo_A3_0Y20ConfigurationToolbarVGMd;
      v77 = &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE14contentMargins__3forQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA0D15MarginPlacementVtFQOyAA012SubscriptionE0Vy7Combine25ObservableObjectPublisherCAA4ListVys5NeverOAA05TupleE0VyACyAA4TextV07WorkoutB005ClearU5Style33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_ACyACyACyAA6VStackVyA0_yAA012_ConditionalD0VyACyACyACyACyACyACyA2_AA30_EnvironmentKeyWritingModifierVyAA0X9AlignmentOGGA13_yA2_4CaseOSgGGAA16_FlexFrameLayoutVGA13_yAA4FontVSgGGA13_ySiSgGGA3_15BodyHyphenationVGSgA11_yA36_A37_GGSg_A37_tGGAA21_TraitWritingModifierVyAA0U21RowBackgroundTraitKeyVGGA44_yAA0U17RowInsetsTraitKeyVGGA3_04HideU12RowSeparatorA5_LLVGSgA11_yAA7SectionVyAA05EmptyE0VA3_15GoalValuePickerVA60_GACyACyACyACyA3_025EmbeddedGoalConfigurationE0VAA14_PaddingLayoutVGAA19_BackgroundModifierVyACyAA017StrokeBorderShapeE0VyAA16RoundedRectangleVAA22HierarchicalShapeStyleVA60_GA24_GGGA47_GA51_GGSgA3_05StartY6ButtonVACyACyACyA3_14SaveCopyButtonVA51_GA54_GA13_yAA11ControlSizeOGGSgACyACyACyACyACyACyACyACyACyA2_A13_yAA5ColorVSgGGA16_GA21_GA24_GA29_GA32_GA35_GA51_GA47_GSgtGGG_Qo_A3_0Y20ConfigurationToolbarVGMR;
      v78 = v125;
      outlined init with take of SubscriptionView<ObservableObjectPublisher, <<opaque return type of View.toolbarForegroundStyle<A>(_:for:)>>.0>(v116, v125, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE14contentMargins__3forQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA0D15MarginPlacementVtFQOyAA012SubscriptionE0Vy7Combine25ObservableObjectPublisherCAA4ListVys5NeverOAA05TupleE0VyACyAA4TextV07WorkoutB005ClearU5Style33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_ACyACyACyAA6VStackVyA0_yAA012_ConditionalD0VyACyACyACyACyACyACyA2_AA30_EnvironmentKeyWritingModifierVyAA0X9AlignmentOGGA13_yA2_4CaseOSgGGAA16_FlexFrameLayoutVGA13_yAA4FontVSgGGA13_ySiSgGGA3_15BodyHyphenationVGSgA11_yA36_A37_GGSg_A37_tGGAA21_TraitWritingModifierVyAA0U21RowBackgroundTraitKeyVGGA44_yAA0U17RowInsetsTraitKeyVGGA3_04HideU12RowSeparatorA5_LLVGSgA11_yAA7SectionVyAA05EmptyE0VA3_15GoalValuePickerVA60_GACyACyACyACyA3_025EmbeddedGoalConfigurationE0VAA14_PaddingLayoutVGAA19_BackgroundModifierVyACyAA017StrokeBorderShapeE0VyAA16RoundedRectangleVAA22HierarchicalShapeStyleVA60_GA24_GGGA47_GA51_GGSgA3_05StartY6ButtonVACyACyACyA3_14SaveCopyButtonVA51_GA54_GA13_yAA11ControlSizeOGGSgACyACyACyACyACyACyACyACyACyA2_A13_yAA5ColorVSgGGA16_GA21_GA24_GA29_GA32_GA35_GA51_GA47_GSgtGGG_Qo_A3_0Y20ConfigurationToolbarVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE14contentMargins__3forQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA0D15MarginPlacementVtFQOyAA012SubscriptionE0Vy7Combine25ObservableObjectPublisherCAA4ListVys5NeverOAA05TupleE0VyACyAA4TextV07WorkoutB005ClearU5Style33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_ACyACyACyAA6VStackVyA0_yAA012_ConditionalD0VyACyACyACyACyACyACyA2_AA30_EnvironmentKeyWritingModifierVyAA0X9AlignmentOGGA13_yA2_4CaseOSgGGAA16_FlexFrameLayoutVGA13_yAA4FontVSgGGA13_ySiSgGGA3_15BodyHyphenationVGSgA11_yA36_A37_GGSg_A37_tGGAA21_TraitWritingModifierVyAA0U21RowBackgroundTraitKeyVGGA44_yAA0U17RowInsetsTraitKeyVGGA3_04HideU12RowSeparatorA5_LLVGSgA11_yAA7SectionVyAA05EmptyE0VA3_15GoalValuePickerVA60_GACyACyACyACyA3_025EmbeddedGoalConfigurationE0VAA14_PaddingLayoutVGAA19_BackgroundModifierVyACyAA017StrokeBorderShapeE0VyAA16RoundedRectangleVAA22HierarchicalShapeStyleVA60_GA24_GGGA47_GA51_GGSgA3_05StartY6ButtonVACyACyACyA3_14SaveCopyButtonVA51_GA54_GA13_yAA11ControlSizeOGGSgACyACyACyACyACyACyACyACyACyA2_A13_yAA5ColorVSgGGA16_GA21_GA24_GA29_GA32_GA35_GA51_GA47_GSgtGGG_Qo_A3_0Y20ConfigurationToolbarVGMR);
      outlined init with copy of ModifiedContent<SubscriptionView<ObservableObjectPublisher, <<opaque return type of View.toolbarForegroundStyle<A>(_:for:)>>.0>, WorkoutConfigurationToolbar>(v78, v132, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE14contentMargins__3forQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA0D15MarginPlacementVtFQOyAA012SubscriptionE0Vy7Combine25ObservableObjectPublisherCAA4ListVys5NeverOAA05TupleE0VyACyAA4TextV07WorkoutB005ClearU5Style33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_ACyACyACyAA6VStackVyA0_yAA012_ConditionalD0VyACyACyACyACyACyACyA2_AA30_EnvironmentKeyWritingModifierVyAA0X9AlignmentOGGA13_yA2_4CaseOSgGGAA16_FlexFrameLayoutVGA13_yAA4FontVSgGGA13_ySiSgGGA3_15BodyHyphenationVGSgA11_yA36_A37_GGSg_A37_tGGAA21_TraitWritingModifierVyAA0U21RowBackgroundTraitKeyVGGA44_yAA0U17RowInsetsTraitKeyVGGA3_04HideU12RowSeparatorA5_LLVGSgA11_yAA7SectionVyAA05EmptyE0VA3_15GoalValuePickerVA60_GACyACyACyACyA3_025EmbeddedGoalConfigurationE0VAA14_PaddingLayoutVGAA19_BackgroundModifierVyACyAA017StrokeBorderShapeE0VyAA16RoundedRectangleVAA22HierarchicalShapeStyleVA60_GA24_GGGA47_GA51_GGSgA3_05StartY6ButtonVACyACyACyA3_14SaveCopyButtonVA51_GA54_GA13_yAA11ControlSizeOGGSgACyACyACyACyACyACyACyACyACyA2_A13_yAA5ColorVSgGGA16_GA21_GA24_GA29_GA32_GA35_GA51_GA47_GSgtGGG_Qo_A3_0Y20ConfigurationToolbarVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE14contentMargins__3forQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA0D15MarginPlacementVtFQOyAA012SubscriptionE0Vy7Combine25ObservableObjectPublisherCAA4ListVys5NeverOAA05TupleE0VyACyAA4TextV07WorkoutB005ClearU5Style33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_ACyACyACyAA6VStackVyA0_yAA012_ConditionalD0VyACyACyACyACyACyACyA2_AA30_EnvironmentKeyWritingModifierVyAA0X9AlignmentOGGA13_yA2_4CaseOSgGGAA16_FlexFrameLayoutVGA13_yAA4FontVSgGGA13_ySiSgGGA3_15BodyHyphenationVGSgA11_yA36_A37_GGSg_A37_tGGAA21_TraitWritingModifierVyAA0U21RowBackgroundTraitKeyVGGA44_yAA0U17RowInsetsTraitKeyVGGA3_04HideU12RowSeparatorA5_LLVGSgA11_yAA7SectionVyAA05EmptyE0VA3_15GoalValuePickerVA60_GACyACyACyACyA3_025EmbeddedGoalConfigurationE0VAA14_PaddingLayoutVGAA19_BackgroundModifierVyACyAA017StrokeBorderShapeE0VyAA16RoundedRectangleVAA22HierarchicalShapeStyleVA60_GA24_GGGA47_GA51_GGSgA3_05StartY6ButtonVACyACyACyA3_14SaveCopyButtonVA51_GA54_GA13_yAA11ControlSizeOGGSgACyACyACyACyACyACyACyACyACyA2_A13_yAA5ColorVSgGGA16_GA21_GA24_GA29_GA32_GA35_GA51_GA47_GSgtGGG_Qo_A3_0Y20ConfigurationToolbarVGMR);
      goto LABEL_6;
    }
  }

  type metadata accessor for WorkoutConfigurationDataSource();
  lazy protocol witness table accessor for type GoalWorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type WorkoutConfigurationDataSource and conformance WorkoutConfigurationDataSource, MEMORY[0x277D7DC28], MEMORY[0x277D7DC20]);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

void closure #1 in GoalWorkoutConfigurationView.body.getter(uint64_t a1@<X0>, void *a2@<X8>)
{
  v240 = a2;
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGMR);
  MEMORY[0x28223BE20](v208);
  v214 = &v203 - v3;
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGMR);
  MEMORY[0x28223BE20](v212);
  v220 = &v203 - v4;
  v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGMR);
  MEMORY[0x28223BE20](v218);
  v219 = &v203 - v5;
  v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGGMR);
  MEMORY[0x28223BE20](v217);
  v216 = &v203 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGG07WorkoutB015BodyHyphenationVGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGG07WorkoutB015BodyHyphenationVGMR);
  MEMORY[0x28223BE20](v7 - 8);
  v213 = &v203 - v8;
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGG07WorkoutB015BodyHyphenationVGAA06_TraithI0VyAA013ListRowInsetstG0VGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGG07WorkoutB015BodyHyphenationVGAA06_TraithI0VyAA013ListRowInsetstG0VGGMR);
  MEMORY[0x28223BE20](v209);
  v215 = &v203 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGG07WorkoutB015BodyHyphenationVGAA06_TraithI0VyAA013ListRowInsetstG0VGGA10_yAA0uv10BackgroundtG0VGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGG07WorkoutB015BodyHyphenationVGAA06_TraithI0VyAA013ListRowInsetstG0VGGA10_yAA0uv10BackgroundtG0VGGMR);
  v237 = *(v10 - 8);
  v238 = v10;
  MEMORY[0x28223BE20](v10);
  v211 = &v203 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v210 = &v203 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGG07WorkoutB015BodyHyphenationVGAA06_TraithI0VyAA013ListRowInsetstG0VGGA10_yAA0uv10BackgroundtG0VGGSgMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGG07WorkoutB015BodyHyphenationVGAA06_TraithI0VyAA013ListRowInsetstG0VGGA10_yAA0uv10BackgroundtG0VGGSgMR);
  MEMORY[0x28223BE20](v14 - 8);
  v239 = &v203 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v256 = &v203 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB014SaveCopyButtonVAA21_TraitWritingModifierVyAA013ListRowInsetsI3KeyVGGAD04HidelM9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVGAA012_EnvironmentojK0VyAA11ControlSizeOGGMd, &_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB014SaveCopyButtonVAA21_TraitWritingModifierVyAA013ListRowInsetsI3KeyVGGAD04HidelM9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVGAA012_EnvironmentojK0VyAA11ControlSizeOGGMR);
  v235 = *(v18 - 8);
  v236 = v18;
  MEMORY[0x28223BE20](v18);
  v207 = &v203 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v206 = &v203 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB014SaveCopyButtonVAA21_TraitWritingModifierVyAA013ListRowInsetsI3KeyVGGAD04HidelM9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVGAA012_EnvironmentojK0VyAA11ControlSizeOGGSgMd, &_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB014SaveCopyButtonVAA21_TraitWritingModifierVyAA013ListRowInsetsI3KeyVGGAD04HidelM9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVGAA012_EnvironmentojK0VyAA11ControlSizeOGGSgMR);
  MEMORY[0x28223BE20](v22 - 8);
  v255 = &v203 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v261 = &v203 - v25;
  v221 = type metadata accessor for RoundedRectangle();
  MEMORY[0x28223BE20](v221);
  v223 = &v203 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21StrokeBorderShapeViewVyAA16RoundedRectangleVAA012HierarchicalE5StyleVAA05EmptyF0VGMd, &_s7SwiftUI21StrokeBorderShapeViewVyAA16RoundedRectangleVAA012HierarchicalE5StyleVAA05EmptyF0VGMR);
  MEMORY[0x28223BE20](v222);
  v226 = &v203 - v27;
  v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA21StrokeBorderShapeViewVyAA16RoundedRectangleVAA012HierarchicalG5StyleVAA05EmptyH0VGAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA21StrokeBorderShapeViewVyAA16RoundedRectangleVAA012HierarchicalG5StyleVAA05EmptyH0VGAA16_FlexFrameLayoutVGMR);
  MEMORY[0x28223BE20](v224);
  v227 = &v203 - v28;
  v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB029EmbeddedGoalConfigurationViewVAA14_PaddingLayoutVGAA19_BackgroundModifierVyACyAA017StrokeBorderShapeI0VyAA16RoundedRectangleVAA012HierarchicalP5StyleVAA05EmptyI0VGAA010_FlexFrameK0VGGGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB029EmbeddedGoalConfigurationViewVAA14_PaddingLayoutVGAA19_BackgroundModifierVyACyAA017StrokeBorderShapeI0VyAA16RoundedRectangleVAA012HierarchicalP5StyleVAA05EmptyI0VGAA010_FlexFrameK0VGGGMR);
  MEMORY[0x28223BE20](v225);
  v231 = &v203 - v29;
  v230 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB029EmbeddedGoalConfigurationViewVAA14_PaddingLayoutVGAA19_BackgroundModifierVyACyAA017StrokeBorderShapeI0VyAA16RoundedRectangleVAA012HierarchicalP5StyleVAA05EmptyI0VGAA010_FlexFrameK0VGGGAA013_TraitWritingM0VyAA07ListRowlX3KeyVGGMd, &_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB029EmbeddedGoalConfigurationViewVAA14_PaddingLayoutVGAA19_BackgroundModifierVyACyAA017StrokeBorderShapeI0VyAA16RoundedRectangleVAA012HierarchicalP5StyleVAA05EmptyI0VGAA010_FlexFrameK0VGGGAA013_TraitWritingM0VyAA07ListRowlX3KeyVGGMR);
  MEMORY[0x28223BE20](v230);
  v229 = &v203 - v30;
  object = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACy07WorkoutB029EmbeddedGoalConfigurationViewVAA14_PaddingLayoutVGAA19_BackgroundModifierVyACyAA017StrokeBorderShapeI0VyAA16RoundedRectangleVAA012HierarchicalP5StyleVAA05EmptyI0VGAA010_FlexFrameK0VGGGAA013_TraitWritingM0VyAA07ListRowlX3KeyVGGA_yAA0z9RowInsetsX3KeyVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACy07WorkoutB029EmbeddedGoalConfigurationViewVAA14_PaddingLayoutVGAA19_BackgroundModifierVyACyAA017StrokeBorderShapeI0VyAA16RoundedRectangleVAA012HierarchicalP5StyleVAA05EmptyI0VGAA010_FlexFrameK0VGGGAA013_TraitWritingM0VyAA07ListRowlX3KeyVGGA_yAA0z9RowInsetsX3KeyVGGMR);
  MEMORY[0x28223BE20](object);
  v228 = &v203 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v232 = &v203 - v33;
  v242 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA7SectionVyAA9EmptyViewV07WorkoutB015GoalValuePickerVAIGAA08ModifiedD0VyAOyAOyAOyAJ08Embeddedj13ConfigurationH0VAA14_PaddingLayoutVGAA19_BackgroundModifierVyAOyAA017StrokeBorderShapeH0VyAA16RoundedRectangleVAA012HierarchicalV5StyleVAIGAA010_FlexFrameQ0VGGGAA013_TraitWritingS0VyAA07ListRowR8TraitKeyVGGA8_yAA21ListRowInsetsTraitKeyVGG_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyAA7SectionVyAA9EmptyViewV07WorkoutB015GoalValuePickerVAIGAA08ModifiedD0VyAOyAOyAOyAJ08Embeddedj13ConfigurationH0VAA14_PaddingLayoutVGAA19_BackgroundModifierVyAOyAA017StrokeBorderShapeH0VyAA16RoundedRectangleVAA012HierarchicalV5StyleVAIGAA010_FlexFrameQ0VGGGAA013_TraitWritingS0VyAA07ListRowR8TraitKeyVGGA8_yAA21ListRowInsetsTraitKeyVGG_GMR);
  MEMORY[0x28223BE20](v242);
  v243 = &v203 - v34;
  v244 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA9EmptyViewV07WorkoutB015GoalValuePickerVAEGMd, &_s7SwiftUI7SectionVyAA9EmptyViewV07WorkoutB015GoalValuePickerVAEGMR);
  v204 = *(v244 - 8);
  MEMORY[0x28223BE20](v244);
  v203 = &v203 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA7SectionVyAA9EmptyViewV07WorkoutB015GoalValuePickerVAGGAA08ModifiedD0VyAMyAMyAMyAH08Embeddedi13ConfigurationG0VAA14_PaddingLayoutVGAA19_BackgroundModifierVyAMyAA017StrokeBorderShapeG0VyAA16RoundedRectangleVAA012HierarchicalU5StyleVAGGAA010_FlexFrameP0VGGGAA013_TraitWritingR0VyAA07ListRowQ8TraitKeyVGGA6_yAA21ListRowInsetsTraitKeyVGGGMd, &_s7SwiftUI19_ConditionalContentVyAA7SectionVyAA9EmptyViewV07WorkoutB015GoalValuePickerVAGGAA08ModifiedD0VyAMyAMyAMyAH08Embeddedi13ConfigurationG0VAA14_PaddingLayoutVGAA19_BackgroundModifierVyAMyAA017StrokeBorderShapeG0VyAA16RoundedRectangleVAA012HierarchicalU5StyleVAGGAA010_FlexFrameP0VGGGAA013_TraitWritingR0VyAA07ListRowQ8TraitKeyVGGA6_yAA21ListRowInsetsTraitKeyVGGGMR);
  v249 = *(v36 - 8);
  v250 = v36;
  MEMORY[0x28223BE20](v36);
  v241 = &v203 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA7SectionVyAA9EmptyViewV07WorkoutB015GoalValuePickerVAGGAA08ModifiedD0VyAMyAMyAMyAH08Embeddedi13ConfigurationG0VAA14_PaddingLayoutVGAA19_BackgroundModifierVyAMyAA017StrokeBorderShapeG0VyAA16RoundedRectangleVAA012HierarchicalU5StyleVAGGAA010_FlexFrameP0VGGGAA013_TraitWritingR0VyAA07ListRowQ8TraitKeyVGGA6_yAA21ListRowInsetsTraitKeyVGGGSgMd, &_s7SwiftUI19_ConditionalContentVyAA7SectionVyAA9EmptyViewV07WorkoutB015GoalValuePickerVAGGAA08ModifiedD0VyAMyAMyAMyAH08Embeddedi13ConfigurationG0VAA14_PaddingLayoutVGAA19_BackgroundModifierVyAMyAA017StrokeBorderShapeG0VyAA16RoundedRectangleVAA012HierarchicalU5StyleVAGGAA010_FlexFrameP0VGGGAA013_TraitWritingR0VyAA07ListRowQ8TraitKeyVGGA6_yAA21ListRowInsetsTraitKeyVGGGSgMR);
  MEMORY[0x28223BE20](v38 - 8);
  v254 = &v203 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v257 = &v203 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGGAMyAK4CaseOSgGGAA16_FlexFrameLayoutVGAMyAA4FontVSgGGAMySiSgGG07WorkoutB015BodyHyphenationVGSgAIyA9_A10_GGSg_A10_tGGAA06_TraitlM0VyAA017ListRowBackgroundwK0VGGA17_yAA0xy6InsetswK0VGGA6_04HidexY9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGGAMyAK4CaseOSgGGAA16_FlexFrameLayoutVGAMyAA4FontVSgGGAMySiSgGG07WorkoutB015BodyHyphenationVGSgAIyA9_A10_GGSg_A10_tGGAA06_TraitlM0VyAA017ListRowBackgroundwK0VGGA17_yAA0xy6InsetswK0VGGA6_04HidexY9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVGMR);
  countAndFlagsBits = *(v42 - 8);
  v247 = v42;
  MEMORY[0x28223BE20](v42);
  v44 = &v203 - v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGGAMyAK4CaseOSgGGAA16_FlexFrameLayoutVGAMyAA4FontVSgGGAMySiSgGG07WorkoutB015BodyHyphenationVGSgAIyA9_A10_GGSg_A10_tGGAA06_TraitlM0VyAA017ListRowBackgroundwK0VGGA17_yAA0xy6InsetswK0VGGA6_04HidexY9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVGSgMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGGAMyAK4CaseOSgGGAA16_FlexFrameLayoutVGAMyAA4FontVSgGGAMySiSgGG07WorkoutB015BodyHyphenationVGSgAIyA9_A10_GGSg_A10_tGGAA06_TraitlM0VyAA017ListRowBackgroundwK0VGGA17_yAA0xy6InsetswK0VGGA6_04HidexY9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVGSgMR);
  MEMORY[0x28223BE20](v45 - 8);
  v253 = &v203 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47);
  v259 = &v203 - v48;
  v306[0] = *(a1 + 16);
  v49 = *(&v306[0] + 1);
  outlined init with copy of ObservedObject<GoalWorkoutConfiguration>(v306, &v271, &_s7SwiftUI14ObservedObjectVy11WorkoutCore04GoalE13ConfigurationCGMd, &_s7SwiftUI14ObservedObjectVy11WorkoutCore04GoalE13ConfigurationCGMR);
  v260 = v49;
  v50 = GoalWorkoutConfiguration.goal.getter();
  v51 = [v50 goalTypeIdentifier];

  v233 = a1;
  v248 = *(a1 + 32);
  _HKWorkoutGoalType.goalTypeDisplayName(formattingManager:)(v248, v51);
  v271 = v52;
  v272 = v53;
  v205 = lazy protocol witness table accessor for type String and conformance String();
  v54 = Text.init<A>(_:)();
  v56 = v55;
  v58 = v57;
  static Font.Weight.bold.getter();
  v59 = Text.fontWeight(_:)();
  v61 = v60;
  LOBYTE(a1) = v62;
  outlined consume of Text.Storage(v54, v56, v58 & 1);

  static Font.largeTitle.getter();
  v258 = Text.font(_:)();
  v251 = v63;
  v252 = v64;
  v234 = v65;

  v66 = v61;
  v67 = v260;
  outlined consume of Text.Storage(v59, v66, a1 & 1);

  if (dispatch thunk of WorkoutConfiguration.externalProvider.getter())
  {

    *v44 = static HorizontalAlignment.leading.getter();
    *(v44 + 1) = 0;
    v44[16] = 0;
    v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA19_ConditionalContentVyAA08ModifiedJ0VyAMyAMyAMyAMyAMyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0L9AlignmentOGGAQyAO4CaseOSgGGAA010_FlexFrameG0VGAQyAA4FontVSgGGAQySiSgGG07WorkoutB015BodyHyphenationVGSgAKyA13_A14_GGSg_A14_tGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA19_ConditionalContentVyAA08ModifiedJ0VyAMyAMyAMyAMyAMyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0L9AlignmentOGGAQyAO4CaseOSgGGAA010_FlexFrameG0VGAQyAA4FontVSgGGAQySiSgGG07WorkoutB015BodyHyphenationVGSgAKyA13_A14_GGSg_A14_tGGMR);
    closure #2 in WorkoutConfiguration.externalProviderDescriptionHeaderStack()(v67, &v44[*(v68 + 44)]);
    v271 = static Color.clear.getter();
    v69 = AnyView.init<A>(_:)();
    *&v44[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGGAMyAK4CaseOSgGGAA16_FlexFrameLayoutVGAMyAA4FontVSgGGAMySiSgGG07WorkoutB015BodyHyphenationVGSgAIyA9_A10_GGSg_A10_tGGAA06_TraitlM0VyAA017ListRowBackgroundwK0VGGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGGAMyAK4CaseOSgGGAA16_FlexFrameLayoutVGAMyAA4FontVSgGGAMySiSgGG07WorkoutB015BodyHyphenationVGSgAIyA9_A10_GGSg_A10_tGGAA06_TraitlM0VyAA017ListRowBackgroundwK0VGGMR) + 36)] = v69;
    v70 = &v44[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGGAMyAK4CaseOSgGGAA16_FlexFrameLayoutVGAMyAA4FontVSgGGAMySiSgGG07WorkoutB015BodyHyphenationVGSgAIyA9_A10_GGSg_A10_tGGAA06_TraitlM0VyAA017ListRowBackgroundwK0VGGA17_yAA0xy6InsetswK0VGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGGAMyAK4CaseOSgGGAA16_FlexFrameLayoutVGAMyAA4FontVSgGGAMySiSgGG07WorkoutB015BodyHyphenationVGSgAIyA9_A10_GGSg_A10_tGGAA06_TraitlM0VyAA017ListRowBackgroundwK0VGGA17_yAA0xy6InsetswK0VGGMR) + 36)];
    *v70 = xmmword_20CB7E4D0;
    *(v70 + 1) = xmmword_20CB7F940;
    v70[32] = 0;
    v71 = v259;
    outlined init with take of ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>(v44, v259, &_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGGAMyAK4CaseOSgGGAA16_FlexFrameLayoutVGAMyAA4FontVSgGGAMySiSgGG07WorkoutB015BodyHyphenationVGSgAIyA9_A10_GGSg_A10_tGGAA06_TraitlM0VyAA017ListRowBackgroundwK0VGGA17_yAA0xy6InsetswK0VGGA6_04HidexY9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGGAMyAK4CaseOSgGGAA16_FlexFrameLayoutVGAMyAA4FontVSgGGAMySiSgGG07WorkoutB015BodyHyphenationVGSgAIyA9_A10_GGSg_A10_tGGAA06_TraitlM0VyAA017ListRowBackgroundwK0VGGA17_yAA0xy6InsetswK0VGGA6_04HidexY9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVGMR);
    v72 = 0;
    v73 = v71;
  }

  else
  {
    v72 = 1;
    v73 = v259;
  }

  (*(countAndFlagsBits + 56))(v73, v72, 1, v247);
  v74 = GoalWorkoutConfiguration.goal.getter();
  v75 = [v74 goalTypeIdentifier];

  v76 = v257;
  if (v75)
  {
    if (dispatch thunk of WorkoutConfiguration.externalProvider.getter())
    {

      LODWORD(v247) = static Edge.Set.all.getter();
      LOBYTE(v271) = 1;
      v77 = *(v221 + 20);
      v78 = *MEMORY[0x277CE0118];
      v79 = type metadata accessor for RoundedCornerStyle();
      v80 = v223;
      (*(*(v79 - 8) + 104))(&v223[v77], v78, v79);
      __asm { FMOV            V0.2D, #26.0 }

      *v80 = _Q0;
      LODWORD(v78) = static HierarchicalShapeStyle.tertiary.getter();
      StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
      v86 = v226;
      outlined init with copy of RoundedRectangle(v80, v226);
      v87 = *&v295 * 0.5;
      v88 = v86 + *(v222 + 68);
      outlined init with copy of RoundedRectangle(v80, v88);
      *(v88 + *(type metadata accessor for RoundedRectangle._Inset() + 20)) = v87;
      v89 = v88 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_StrokedShapeVyAA16RoundedRectangleV6_InsetVGMd, &_s7SwiftUI13_StrokedShapeVyAA16RoundedRectangleV6_InsetVGMR) + 36);
      v90 = v296;
      *v89 = v295;
      *(v89 + 16) = v90;
      *(v89 + 32) = v297;
      v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10_ShapeViewVyAA08_StrokedC0VyAA16RoundedRectangleV6_InsetVGAA012HierarchicalC5StyleVGMd, &_s7SwiftUI10_ShapeViewVyAA08_StrokedC0VyAA16RoundedRectangleV6_InsetVGAA012HierarchicalC5StyleVGMR);
      *(v88 + *(v91 + 52)) = v78;
      *(v88 + *(v91 + 56)) = 256;
      v92 = static Alignment.center.getter();
      v93 = v76;
      v95 = v94;
      outlined destroy of RoundedRectangle(v80);
      v96 = (v88 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVyAA08_StrokedE0VyAA16RoundedRectangleV6_InsetVGAA012HierarchicalE5StyleVGAA19_BackgroundModifierVyAA05EmptyF0VGGMd, &_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVyAA08_StrokedE0VyAA16RoundedRectangleV6_InsetVGAA012HierarchicalE5StyleVGAA19_BackgroundModifierVyAA05EmptyF0VGGMR) + 36));
      *v96 = v92;
      v96[1] = v95;
      static Alignment.center.getter();
      _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
      v97 = v86;
      v98 = v227;
      outlined init with take of SubscriptionView<ObservableObjectPublisher, <<opaque return type of View.toolbarForegroundStyle<A>(_:for:)>>.0>(v97, v227, &_s7SwiftUI21StrokeBorderShapeViewVyAA16RoundedRectangleVAA012HierarchicalE5StyleVAA05EmptyF0VGMd, &_s7SwiftUI21StrokeBorderShapeViewVyAA16RoundedRectangleVAA012HierarchicalE5StyleVAA05EmptyF0VGMR);
      v99 = (v98 + *(v224 + 36));
      v100 = v303;
      v99[4] = v302;
      v99[5] = v100;
      v99[6] = v304;
      v101 = v299;
      *v99 = v298;
      v99[1] = v101;
      v102 = v301;
      v99[2] = v300;
      v99[3] = v102;
      v103 = static Alignment.center.getter();
      v105 = v104;
      v106 = v231;
      v107 = &v231[*(v225 + 36)];
      outlined init with take of SubscriptionView<ObservableObjectPublisher, <<opaque return type of View.toolbarForegroundStyle<A>(_:for:)>>.0>(v98, v107, &_s7SwiftUI15ModifiedContentVyAA21StrokeBorderShapeViewVyAA16RoundedRectangleVAA012HierarchicalG5StyleVAA05EmptyH0VGAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA21StrokeBorderShapeViewVyAA16RoundedRectangleVAA012HierarchicalG5StyleVAA05EmptyH0VGAA16_FlexFrameLayoutVGMR);
      v108 = (v107 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_BackgroundModifierVyAA15ModifiedContentVyAA21StrokeBorderShapeViewVyAA16RoundedRectangleVAA012HierarchicalI5StyleVAA05EmptyJ0VGAA16_FlexFrameLayoutVGGMd, &_s7SwiftUI19_BackgroundModifierVyAA15ModifiedContentVyAA21StrokeBorderShapeViewVyAA16RoundedRectangleVAA012HierarchicalI5StyleVAA05EmptyJ0VGAA16_FlexFrameLayoutVGGMR) + 36));
      v76 = v93;
      *v108 = v103;
      v108[1] = v105;
      v109 = v248;
      *v106 = v67;
      *(v106 + 8) = v109;
      *(v106 + 16) = v247;
      *(v106 + 20) = *(&v262 + 3);
      *(v106 + 17) = v262;
      *(v106 + 40) = 0u;
      *(v106 + 24) = 0u;
      *(v106 + 56) = 1;
      v271 = static Color.clear.getter();
      v110 = AnyView.init<A>(_:)();
      v111 = v229;
      outlined init with take of SubscriptionView<ObservableObjectPublisher, <<opaque return type of View.toolbarForegroundStyle<A>(_:for:)>>.0>(v106, v229, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB029EmbeddedGoalConfigurationViewVAA14_PaddingLayoutVGAA19_BackgroundModifierVyACyAA017StrokeBorderShapeI0VyAA16RoundedRectangleVAA012HierarchicalP5StyleVAA05EmptyI0VGAA010_FlexFrameK0VGGGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB029EmbeddedGoalConfigurationViewVAA14_PaddingLayoutVGAA19_BackgroundModifierVyACyAA017StrokeBorderShapeI0VyAA16RoundedRectangleVAA012HierarchicalP5StyleVAA05EmptyI0VGAA010_FlexFrameK0VGGGMR);
      *(v111 + *(v230 + 36)) = v110;
      v112 = v228;
      outlined init with take of SubscriptionView<ObservableObjectPublisher, <<opaque return type of View.toolbarForegroundStyle<A>(_:for:)>>.0>(v111, v228, &_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB029EmbeddedGoalConfigurationViewVAA14_PaddingLayoutVGAA19_BackgroundModifierVyACyAA017StrokeBorderShapeI0VyAA16RoundedRectangleVAA012HierarchicalP5StyleVAA05EmptyI0VGAA010_FlexFrameK0VGGGAA013_TraitWritingM0VyAA07ListRowlX3KeyVGGMd, &_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB029EmbeddedGoalConfigurationViewVAA14_PaddingLayoutVGAA19_BackgroundModifierVyACyAA017StrokeBorderShapeI0VyAA16RoundedRectangleVAA012HierarchicalP5StyleVAA05EmptyI0VGAA010_FlexFrameK0VGGGAA013_TraitWritingM0VyAA07ListRowlX3KeyVGGMR);
      v113 = v112 + *(object + 36);
      *v113 = xmmword_20CB7EC90;
      *(v113 + 16) = xmmword_20CB7E4D0;
      *(v113 + 32) = 0;
      v114 = v232;
      outlined init with take of SubscriptionView<ObservableObjectPublisher, <<opaque return type of View.toolbarForegroundStyle<A>(_:for:)>>.0>(v112, v232, &_s7SwiftUI15ModifiedContentVyACyACyACy07WorkoutB029EmbeddedGoalConfigurationViewVAA14_PaddingLayoutVGAA19_BackgroundModifierVyACyAA017StrokeBorderShapeI0VyAA16RoundedRectangleVAA012HierarchicalP5StyleVAA05EmptyI0VGAA010_FlexFrameK0VGGGAA013_TraitWritingM0VyAA07ListRowlX3KeyVGGA_yAA0z9RowInsetsX3KeyVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACy07WorkoutB029EmbeddedGoalConfigurationViewVAA14_PaddingLayoutVGAA19_BackgroundModifierVyACyAA017StrokeBorderShapeI0VyAA16RoundedRectangleVAA012HierarchicalP5StyleVAA05EmptyI0VGAA010_FlexFrameK0VGGGAA013_TraitWritingM0VyAA07ListRowlX3KeyVGGA_yAA0z9RowInsetsX3KeyVGGMR);
      outlined init with copy of ModifiedContent<SubscriptionView<ObservableObjectPublisher, <<opaque return type of View.toolbarForegroundStyle<A>(_:for:)>>.0>, WorkoutConfigurationToolbar>(v114, v243, &_s7SwiftUI15ModifiedContentVyACyACyACy07WorkoutB029EmbeddedGoalConfigurationViewVAA14_PaddingLayoutVGAA19_BackgroundModifierVyACyAA017StrokeBorderShapeI0VyAA16RoundedRectangleVAA012HierarchicalP5StyleVAA05EmptyI0VGAA010_FlexFrameK0VGGGAA013_TraitWritingM0VyAA07ListRowlX3KeyVGGA_yAA0z9RowInsetsX3KeyVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACy07WorkoutB029EmbeddedGoalConfigurationViewVAA14_PaddingLayoutVGAA19_BackgroundModifierVyACyAA017StrokeBorderShapeI0VyAA16RoundedRectangleVAA012HierarchicalP5StyleVAA05EmptyI0VGAA010_FlexFrameK0VGGGAA013_TraitWritingM0VyAA07ListRowlX3KeyVGGA_yAA0z9RowInsetsX3KeyVGGMR);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type Section<EmptyView, GoalValuePicker, EmptyView> and conformance <> Section<A, B, C>();
      lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<EmbeddedGoalConfigurationView, _PaddingLayout>, _BackgroundModifier<ModifiedContent<StrokeBorderShapeView<RoundedRectangle, HierarchicalShapeStyle, EmptyView>, _FlexFrameLayout>>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>();
      v115 = v241;
      _ConditionalContent<>.init(storage:)();
      outlined destroy of ModifiedContent<SubscriptionView<ObservableObjectPublisher, <<opaque return type of View.toolbarForegroundStyle<A>(_:for:)>>.0>, WorkoutConfigurationToolbar>(v114, &_s7SwiftUI15ModifiedContentVyACyACyACy07WorkoutB029EmbeddedGoalConfigurationViewVAA14_PaddingLayoutVGAA19_BackgroundModifierVyACyAA017StrokeBorderShapeI0VyAA16RoundedRectangleVAA012HierarchicalP5StyleVAA05EmptyI0VGAA010_FlexFrameK0VGGGAA013_TraitWritingM0VyAA07ListRowlX3KeyVGGA_yAA0z9RowInsetsX3KeyVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACy07WorkoutB029EmbeddedGoalConfigurationViewVAA14_PaddingLayoutVGAA19_BackgroundModifierVyACyAA017StrokeBorderShapeI0VyAA16RoundedRectangleVAA012HierarchicalP5StyleVAA05EmptyI0VGAA010_FlexFrameK0VGGGAA013_TraitWritingM0VyAA07ListRowlX3KeyVGGA_yAA0z9RowInsetsX3KeyVGGMR);
    }

    else
    {

      v117 = _s7SwiftUI14ObservedObjectVy11WorkoutCore04GoalE13ConfigurationCGWOhTm_0(v306, &_s7SwiftUI14ObservedObjectVy11WorkoutCore04GoalE13ConfigurationCGMd, &_s7SwiftUI14ObservedObjectVy11WorkoutCore04GoalE13ConfigurationCGMR);
      MEMORY[0x28223BE20](v117);
      type metadata accessor for GoalValuePicker(0);
      lazy protocol witness table accessor for type GoalWorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type GoalValuePicker and conformance GoalValuePicker, type metadata accessor for GoalValuePicker, &protocol conformance descriptor for GoalValuePicker);
      v118 = v203;
      Section<>.init(content:)();
      v119 = v204;
      v120 = v244;
      (*(v204 + 16))(v243, v118, v244);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type Section<EmptyView, GoalValuePicker, EmptyView> and conformance <> Section<A, B, C>();
      lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<EmbeddedGoalConfigurationView, _PaddingLayout>, _BackgroundModifier<ModifiedContent<StrokeBorderShapeView<RoundedRectangle, HierarchicalShapeStyle, EmptyView>, _FlexFrameLayout>>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>();
      v115 = v241;
      _ConditionalContent<>.init(storage:)();
      (*(v119 + 8))(v118, v120);
    }

    outlined init with take of SubscriptionView<ObservableObjectPublisher, <<opaque return type of View.toolbarForegroundStyle<A>(_:for:)>>.0>(v115, v76, &_s7SwiftUI19_ConditionalContentVyAA7SectionVyAA9EmptyViewV07WorkoutB015GoalValuePickerVAGGAA08ModifiedD0VyAMyAMyAMyAH08Embeddedi13ConfigurationG0VAA14_PaddingLayoutVGAA19_BackgroundModifierVyAMyAA017StrokeBorderShapeG0VyAA16RoundedRectangleVAA012HierarchicalU5StyleVAGGAA010_FlexFrameP0VGGGAA013_TraitWritingR0VyAA07ListRowQ8TraitKeyVGGA6_yAA21ListRowInsetsTraitKeyVGGGMd, &_s7SwiftUI19_ConditionalContentVyAA7SectionVyAA9EmptyViewV07WorkoutB015GoalValuePickerVAGGAA08ModifiedD0VyAMyAMyAMyAH08Embeddedi13ConfigurationG0VAA14_PaddingLayoutVGAA19_BackgroundModifierVyAMyAA017StrokeBorderShapeG0VyAA16RoundedRectangleVAA012HierarchicalU5StyleVAGGAA010_FlexFrameP0VGGGAA013_TraitWritingR0VyAA07ListRowQ8TraitKeyVGGA6_yAA21ListRowInsetsTraitKeyVGGGMR);
    v116 = 0;
  }

  else
  {

    _s7SwiftUI14ObservedObjectVy11WorkoutCore04GoalE13ConfigurationCGWOhTm_0(v306, &_s7SwiftUI14ObservedObjectVy11WorkoutCore04GoalE13ConfigurationCGMd, &_s7SwiftUI14ObservedObjectVy11WorkoutCore04GoalE13ConfigurationCGMR);
    v116 = 1;
  }

  v249[7](v76, v116, 1, v250);
  type metadata accessor for ConfigurationNavigationModel(0);
  lazy protocol witness table accessor for type GoalWorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel, &protocol conformance descriptor for ConfigurationNavigationModel);
  v121 = EnvironmentObject.init()();
  v249 = v122;
  v250 = v121;
  type metadata accessor for WorkoutConfigurationDataSource();
  lazy protocol witness table accessor for type GoalWorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type WorkoutConfigurationDataSource and conformance WorkoutConfigurationDataSource, MEMORY[0x277D7DC28], MEMORY[0x277D7DC20]);
  v123 = EnvironmentObject.init()();
  v247 = v124;
  v248 = v123;
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v125 = WorkoutUIBundle.super.isa;
  v307._object = 0xE000000000000000;
  v126.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v126.value._object = 0xEB00000000656C62;
  v127._object = 0x800000020CB93C90;
  v127._countAndFlagsBits = 0xD00000000000001ALL;
  v128._countAndFlagsBits = 0;
  v128._object = 0xE000000000000000;
  v307._countAndFlagsBits = 0;
  v129 = NSLocalizedString(_:tableName:bundle:value:comment:)(v127, v126, v125, v128, v307);
  object = v129._object;
  countAndFlagsBits = v129._countAndFlagsBits;

  LOBYTE(v262) = 0;
  State.init(wrappedValue:)();
  LODWORD(v243) = v271;
  v244 = v272;
  specialized MirroredStartProvider.supportsMirroredStart.getter();
  v131 = 15;
  if (v130)
  {
    v131 = 19;
  }

  *&v262 = v131;
  type metadata accessor for NLWorkoutStartSource(0);
  State.init(wrappedValue:)();
  v241 = v272;
  v242 = v271;
  v292 = 0;
  if ((WorkoutConfiguration.isOpenGoal.getter() & 1) != 0 || !dispatch thunk of WorkoutConfiguration.externalProvider.getter())
  {
    _s7SwiftUI14ObservedObjectVy11WorkoutCore04GoalE13ConfigurationCGWOhTm_0(v306, &_s7SwiftUI14ObservedObjectVy11WorkoutCore04GoalE13ConfigurationCGMd, &_s7SwiftUI14ObservedObjectVy11WorkoutCore04GoalE13ConfigurationCGMR);
    (*(v235 + 56))(v261, 1, 1, v236);
  }

  else
  {

    if (!*v233)
    {
      EnvironmentObject.error()();
      __break(1u);
      return;
    }

    v132 = *v233;
    v133 = WorkoutConfigurationDataSource.isConfigurationStored(_:)();

    v134 = EnvironmentObject.init()();
    v232 = v135;
    v233 = v134;
    LOBYTE(v262) = 0;
    State.init(wrappedValue:)();
    LOBYTE(v132) = v271;
    v136 = v272;
    v137 = v133 & 1;
    LOBYTE(v271) = 0;
    v138 = v236;
    v139 = v67;
    v140 = v207;
    v141 = &v207[*(v236 + 36)];
    v142 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGMR) + 28);
    v143 = *MEMORY[0x277CDF420];
    v144 = type metadata accessor for ControlSize();
    (*(*(v144 - 8) + 104))(v141 + v142, v143, v144);
    *v141 = swift_getKeyPath();
    v145 = v232;
    *v140 = v233;
    *(v140 + 1) = v145;
    *(v140 + 2) = v139;
    v140[24] = v137;
    *(v140 + 4) = 0;
    v140[40] = v132;
    *(v140 + 6) = v136;
    *(v140 + 56) = xmmword_20CB7EC90;
    *(v140 + 72) = xmmword_20CB7E4D0;
    v140[88] = 0;
    v146 = v140;
    v147 = v206;
    outlined init with take of ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>(v146, v206, &_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB014SaveCopyButtonVAA21_TraitWritingModifierVyAA013ListRowInsetsI3KeyVGGAD04HidelM9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVGAA012_EnvironmentojK0VyAA11ControlSizeOGGMd, &_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB014SaveCopyButtonVAA21_TraitWritingModifierVyAA013ListRowInsetsI3KeyVGGAD04HidelM9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVGAA012_EnvironmentojK0VyAA11ControlSizeOGGMR);
    v148 = v147;
    v149 = v261;
    outlined init with take of ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>(v148, v261, &_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB014SaveCopyButtonVAA21_TraitWritingModifierVyAA013ListRowInsetsI3KeyVGGAD04HidelM9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVGAA012_EnvironmentojK0VyAA11ControlSizeOGGMd, &_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB014SaveCopyButtonVAA21_TraitWritingModifierVyAA013ListRowInsetsI3KeyVGGAD04HidelM9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVGAA012_EnvironmentojK0VyAA11ControlSizeOGGMR);
    (*(v235 + 56))(v149, 0, 1, v138);
    v76 = v257;
  }

  if ((WorkoutConfiguration.isOpenGoal.getter() & 1) != 0 || !dispatch thunk of WorkoutConfiguration.externalProvider.getter())
  {
    v188 = v256;
    (*(v237 + 56))(v256, 1, 1, v238);
  }

  else
  {

    v271 = WorkoutConfiguration.saveConfigurationFooterText.getter();
    v272 = v150;
    v151 = Text.init<A>(_:)();
    v153 = v152;
    v155 = v154;
    v157 = v156;
    v236 = static Color.secondary.getter();
    KeyPath = swift_getKeyPath();
    v159 = swift_getKeyPath();
    v160 = v155 & 1;
    LOBYTE(v271) = v155 & 1;
    v161 = v214;
    v162 = &v214[*(v208 + 36)];
    v163 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4TextV4CaseOSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4TextV4CaseOSgGMR) + 28);
    v164 = type metadata accessor for Text.Case();
    (*(*(v164 - 8) + 56))(v162 + v163, 1, 1, v164);
    *v162 = swift_getKeyPath();
    v165 = v257;
    *v161 = v151;
    *(v161 + 8) = v153;
    *(v161 + 16) = v160;
    *(v161 + 17) = v262;
    *(v161 + 20) = *(&v262 + 3);
    *(v161 + 24) = v157;
    *(v161 + 32) = KeyPath;
    *(v161 + 40) = v236;
    *(v161 + 48) = v159;
    *(v161 + 56) = 0;
    static Alignment.leading.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v166 = v220;
    outlined init with take of ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>(v161, v220, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGMR);
    v167 = (v166 + *(v212 + 36));
    v168 = v305[5];
    v167[4] = v305[4];
    v167[5] = v168;
    v167[6] = v305[6];
    v169 = v305[1];
    *v167 = v305[0];
    v167[1] = v169;
    v170 = v305[3];
    v167[2] = v305[2];
    v167[3] = v170;
    v171 = static Font.subheadline.getter();
    v172 = swift_getKeyPath();
    v173 = v166;
    v174 = v219;
    outlined init with take of ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>(v173, v219, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGMR);
    v175 = (v174 + *(v218 + 36));
    *v175 = v172;
    v175[1] = v171;
    v176 = swift_getKeyPath();
    v177 = v216;
    outlined init with take of ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>(v174, v216, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGMR);
    v178 = v177 + *(v217 + 36);
    *v178 = v176;
    *(v178 + 8) = 0;
    *(v178 + 16) = 1;
    v179 = v213;
    outlined init with take of ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>(v177, v213, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGGMR);
    v180 = v215;
    outlined init with take of ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>(v179, v215, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGG07WorkoutB015BodyHyphenationVGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGG07WorkoutB015BodyHyphenationVGMR);
    v181 = v180 + *(v209 + 36);
    *v181 = xmmword_20CB7EC90;
    *(v181 + 16) = xmmword_20CB7E4D0;
    *(v181 + 32) = 0;
    v271 = static Color.clear.getter();
    v182 = AnyView.init<A>(_:)();
    v183 = v211;
    outlined init with take of ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>(v180, v211, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGG07WorkoutB015BodyHyphenationVGAA06_TraithI0VyAA013ListRowInsetstG0VGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGG07WorkoutB015BodyHyphenationVGAA06_TraithI0VyAA013ListRowInsetstG0VGGMR);
    v184 = v238;
    *(v183 + *(v238 + 9)) = v182;
    v185 = v183;
    v186 = v210;
    outlined init with take of ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>(v185, v210, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGG07WorkoutB015BodyHyphenationVGAA06_TraithI0VyAA013ListRowInsetstG0VGGA10_yAA0uv10BackgroundtG0VGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGG07WorkoutB015BodyHyphenationVGAA06_TraithI0VyAA013ListRowInsetstG0VGGA10_yAA0uv10BackgroundtG0VGGMR);
    v187 = v186;
    v76 = v165;
    v188 = v256;
    outlined init with take of ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>(v187, v256, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGG07WorkoutB015BodyHyphenationVGAA06_TraithI0VyAA013ListRowInsetstG0VGGA10_yAA0uv10BackgroundtG0VGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGG07WorkoutB015BodyHyphenationVGAA06_TraithI0VyAA013ListRowInsetstG0VGGA10_yAA0uv10BackgroundtG0VGGMR);
    (*(v237 + 56))(v188, 0, 1, v184);
  }

  v189 = v253;
  outlined init with copy of ObservedObject<GoalWorkoutConfiguration>(v259, v253, &_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGGAMyAK4CaseOSgGGAA16_FlexFrameLayoutVGAMyAA4FontVSgGGAMySiSgGG07WorkoutB015BodyHyphenationVGSgAIyA9_A10_GGSg_A10_tGGAA06_TraitlM0VyAA017ListRowBackgroundwK0VGGA17_yAA0xy6InsetswK0VGGA6_04HidexY9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVGSgMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGGAMyAK4CaseOSgGGAA16_FlexFrameLayoutVGAMyAA4FontVSgGGAMySiSgGG07WorkoutB015BodyHyphenationVGSgAIyA9_A10_GGSg_A10_tGGAA06_TraitlM0VyAA017ListRowBackgroundwK0VGGA17_yAA0xy6InsetswK0VGGA6_04HidexY9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVGSgMR);
  v190 = v76;
  v191 = v254;
  outlined init with copy of ModifiedContent<SubscriptionView<ObservableObjectPublisher, <<opaque return type of View.toolbarForegroundStyle<A>(_:for:)>>.0>, WorkoutConfigurationToolbar>(v190, v254, &_s7SwiftUI19_ConditionalContentVyAA7SectionVyAA9EmptyViewV07WorkoutB015GoalValuePickerVAGGAA08ModifiedD0VyAMyAMyAMyAH08Embeddedi13ConfigurationG0VAA14_PaddingLayoutVGAA19_BackgroundModifierVyAMyAA017StrokeBorderShapeG0VyAA16RoundedRectangleVAA012HierarchicalU5StyleVAGGAA010_FlexFrameP0VGGGAA013_TraitWritingR0VyAA07ListRowQ8TraitKeyVGGA6_yAA21ListRowInsetsTraitKeyVGGGSgMd, &_s7SwiftUI19_ConditionalContentVyAA7SectionVyAA9EmptyViewV07WorkoutB015GoalValuePickerVAGGAA08ModifiedD0VyAMyAMyAMyAH08Embeddedi13ConfigurationG0VAA14_PaddingLayoutVGAA19_BackgroundModifierVyAMyAA017StrokeBorderShapeG0VyAA16RoundedRectangleVAA012HierarchicalU5StyleVAGGAA010_FlexFrameP0VGGGAA013_TraitWritingR0VyAA07ListRowQ8TraitKeyVGGA6_yAA21ListRowInsetsTraitKeyVGGGSgMR);
  v192 = v255;
  outlined init with copy of ObservedObject<GoalWorkoutConfiguration>(v261, v255, &_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB014SaveCopyButtonVAA21_TraitWritingModifierVyAA013ListRowInsetsI3KeyVGGAD04HidelM9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVGAA012_EnvironmentojK0VyAA11ControlSizeOGGSgMd, &_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB014SaveCopyButtonVAA21_TraitWritingModifierVyAA013ListRowInsetsI3KeyVGGAD04HidelM9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVGAA012_EnvironmentojK0VyAA11ControlSizeOGGSgMR);
  v193 = v239;
  outlined init with copy of ObservedObject<GoalWorkoutConfiguration>(v188, v239, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGG07WorkoutB015BodyHyphenationVGAA06_TraithI0VyAA013ListRowInsetstG0VGGA10_yAA0uv10BackgroundtG0VGGSgMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGG07WorkoutB015BodyHyphenationVGAA06_TraithI0VyAA013ListRowInsetstG0VGGA10_yAA0uv10BackgroundtG0VGGSgMR);
  v194 = v240;
  v195 = v251;
  *v240 = v258;
  v194[1] = v195;
  LODWORD(v237) = v234 & 1;
  *(v194 + 16) = v234 & 1;
  v194[3] = v252;
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4TextV07WorkoutB014ClearListStyle33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_ACyACyACyAA6VStackVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyACyACyACyAeA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGARyAE4CaseOSgGGAA16_FlexFrameLayoutVGARyAA4FontVSgGGARySiSgGGAF15BodyHyphenationVGSgAPyA13_A14_GGSg_A14_tGGAA06_TraityZ0VyAA0h18RowBackgroundTraitX0VGGA21_yAA0h14RowInsetsTraitX0VGGAF04HideH12RowSeparatorAHLLVGSgAPyAA7SectionVyAA05EmptyU0VAF15GoalValuePickerVA37_GACyACyACyACyAF025EmbeddedGoalConfigurationU0VAA14_PaddingLayoutVGAA011_BackgroundZ0VyACyAA017StrokeBorderShapeU0VyAA16RoundedRectangleVAA017HierarchicalShapeI0VA37_GA1_GGGA24_GA28_GGSgAF05StartF6ButtonVACyACyACyAF14SaveCopyButtonVA28_GA31_GARyAA11ControlSizeOGGSgACyACyACyACyACyACyACyACyACyAeRyAA5ColorVSgGGAUGAZGA1_GA6_GA9_GA12_GA28_GA24_GSgtMd, &_s7SwiftUI15ModifiedContentVyAA4TextV07WorkoutB014ClearListStyle33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_ACyACyACyAA6VStackVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyACyACyACyAeA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGARyAE4CaseOSgGGAA16_FlexFrameLayoutVGARyAA4FontVSgGGARySiSgGGAF15BodyHyphenationVGSgAPyA13_A14_GGSg_A14_tGGAA06_TraityZ0VyAA0h18RowBackgroundTraitX0VGGA21_yAA0h14RowInsetsTraitX0VGGAF04HideH12RowSeparatorAHLLVGSgAPyAA7SectionVyAA05EmptyU0VAF15GoalValuePickerVA37_GACyACyACyACyAF025EmbeddedGoalConfigurationU0VAA14_PaddingLayoutVGAA011_BackgroundZ0VyACyAA017StrokeBorderShapeU0VyAA16RoundedRectangleVAA017HierarchicalShapeI0VA37_GA1_GGGA24_GA28_GGSgAF05StartF6ButtonVACyACyACyAF14SaveCopyButtonVA28_GA31_GARyAA11ControlSizeOGGSgACyACyACyACyACyACyACyACyACyAeRyAA5ColorVSgGGAUGAZGA1_GA6_GA9_GA12_GA28_GA24_GSgtMR);
  outlined init with copy of ObservedObject<GoalWorkoutConfiguration>(v189, v194 + v196[12], &_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGGAMyAK4CaseOSgGGAA16_FlexFrameLayoutVGAMyAA4FontVSgGGAMySiSgGG07WorkoutB015BodyHyphenationVGSgAIyA9_A10_GGSg_A10_tGGAA06_TraitlM0VyAA017ListRowBackgroundwK0VGGA17_yAA0xy6InsetswK0VGGA6_04HidexY9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVGSgMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGGAMyAK4CaseOSgGGAA16_FlexFrameLayoutVGAMyAA4FontVSgGGAMySiSgGG07WorkoutB015BodyHyphenationVGSgAIyA9_A10_GGSg_A10_tGGAA06_TraitlM0VyAA017ListRowBackgroundwK0VGGA17_yAA0xy6InsetswK0VGGA6_04HidexY9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVGSgMR);
  outlined init with copy of ModifiedContent<SubscriptionView<ObservableObjectPublisher, <<opaque return type of View.toolbarForegroundStyle<A>(_:for:)>>.0>, WorkoutConfigurationToolbar>(v191, v194 + v196[16], &_s7SwiftUI19_ConditionalContentVyAA7SectionVyAA9EmptyViewV07WorkoutB015GoalValuePickerVAGGAA08ModifiedD0VyAMyAMyAMyAH08Embeddedi13ConfigurationG0VAA14_PaddingLayoutVGAA19_BackgroundModifierVyAMyAA017StrokeBorderShapeG0VyAA16RoundedRectangleVAA012HierarchicalU5StyleVAGGAA010_FlexFrameP0VGGGAA013_TraitWritingR0VyAA07ListRowQ8TraitKeyVGGA6_yAA21ListRowInsetsTraitKeyVGGGSgMd, &_s7SwiftUI19_ConditionalContentVyAA7SectionVyAA9EmptyViewV07WorkoutB015GoalValuePickerVAGGAA08ModifiedD0VyAMyAMyAMyAH08Embeddedi13ConfigurationG0VAA14_PaddingLayoutVGAA19_BackgroundModifierVyAMyAA017StrokeBorderShapeG0VyAA16RoundedRectangleVAA012HierarchicalU5StyleVAGGAA010_FlexFrameP0VGGGAA013_TraitWritingR0VyAA07ListRowQ8TraitKeyVGGA6_yAA21ListRowInsetsTraitKeyVGGGSgMR);
  v197 = v194 + v196[20];
  *&v262 = v250;
  *(&v262 + 1) = v249;
  *&v263 = v248;
  *(&v263 + 1) = v247;
  LOBYTE(v264) = 0;
  *(&v264 + 1) = v294[0];
  DWORD1(v264) = *(v294 + 3);
  *(&v264 + 1) = countAndFlagsBits;
  *&v265 = object;
  *(&v265 + 1) = v260;
  LOBYTE(v266) = v243;
  *(&v266 + 1) = *v293;
  DWORD1(v266) = *&v293[3];
  *(&v266 + 1) = v244;
  *&v267 = v242;
  *(&v267 + 1) = v241;
  v238 = implicit closure #2 in implicit closure #1 in variable initialization expression of StartWorkoutButton._devicesProvider;
  *&v268 = implicit closure #2 in implicit closure #1 in variable initialization expression of StartWorkoutButton._devicesProvider;
  *(&v268 + 1) = 0;
  LOBYTE(v269) = 0;
  *(&v269 + 1) = *v291;
  DWORD1(v269) = *&v291[3];
  *(&v269 + 1) = 0;
  v270 = 0;
  *(v197 + 16) = 0;
  v198 = v265;
  *(v197 + 2) = v264;
  *(v197 + 3) = v198;
  v199 = v263;
  *v197 = v262;
  *(v197 + 1) = v199;
  v200 = v267;
  *(v197 + 4) = v266;
  *(v197 + 5) = v200;
  v201 = v269;
  *(v197 + 6) = v268;
  *(v197 + 7) = v201;
  outlined init with copy of ObservedObject<GoalWorkoutConfiguration>(v192, v194 + v196[24], &_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB014SaveCopyButtonVAA21_TraitWritingModifierVyAA013ListRowInsetsI3KeyVGGAD04HidelM9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVGAA012_EnvironmentojK0VyAA11ControlSizeOGGSgMd, &_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB014SaveCopyButtonVAA21_TraitWritingModifierVyAA013ListRowInsetsI3KeyVGGAD04HidelM9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVGAA012_EnvironmentojK0VyAA11ControlSizeOGGSgMR);
  outlined init with copy of ObservedObject<GoalWorkoutConfiguration>(v193, v194 + v196[28], &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGG07WorkoutB015BodyHyphenationVGAA06_TraithI0VyAA013ListRowInsetstG0VGGA10_yAA0uv10BackgroundtG0VGGSgMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGG07WorkoutB015BodyHyphenationVGAA06_TraithI0VyAA013ListRowInsetstG0VGGA10_yAA0uv10BackgroundtG0VGGSgMR);
  v202 = v251;
  LOBYTE(v189) = v237;
  outlined copy of Text.Storage(v258, v251, v237);

  outlined init with copy of StartWorkoutButton(&v262, &v271);
  _s7SwiftUI14ObservedObjectVy11WorkoutCore04GoalE13ConfigurationCGWOhTm_0(v256, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGG07WorkoutB015BodyHyphenationVGAA06_TraithI0VyAA013ListRowInsetstG0VGGA10_yAA0uv10BackgroundtG0VGGSgMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGG07WorkoutB015BodyHyphenationVGAA06_TraithI0VyAA013ListRowInsetstG0VGGA10_yAA0uv10BackgroundtG0VGGSgMR);
  _s7SwiftUI14ObservedObjectVy11WorkoutCore04GoalE13ConfigurationCGWOhTm_0(v261, &_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB014SaveCopyButtonVAA21_TraitWritingModifierVyAA013ListRowInsetsI3KeyVGGAD04HidelM9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVGAA012_EnvironmentojK0VyAA11ControlSizeOGGSgMd, &_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB014SaveCopyButtonVAA21_TraitWritingModifierVyAA013ListRowInsetsI3KeyVGGAD04HidelM9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVGAA012_EnvironmentojK0VyAA11ControlSizeOGGSgMR);
  outlined destroy of ModifiedContent<SubscriptionView<ObservableObjectPublisher, <<opaque return type of View.toolbarForegroundStyle<A>(_:for:)>>.0>, WorkoutConfigurationToolbar>(v257, &_s7SwiftUI19_ConditionalContentVyAA7SectionVyAA9EmptyViewV07WorkoutB015GoalValuePickerVAGGAA08ModifiedD0VyAMyAMyAMyAH08Embeddedi13ConfigurationG0VAA14_PaddingLayoutVGAA19_BackgroundModifierVyAMyAA017StrokeBorderShapeG0VyAA16RoundedRectangleVAA012HierarchicalU5StyleVAGGAA010_FlexFrameP0VGGGAA013_TraitWritingR0VyAA07ListRowQ8TraitKeyVGGA6_yAA21ListRowInsetsTraitKeyVGGGSgMd, &_s7SwiftUI19_ConditionalContentVyAA7SectionVyAA9EmptyViewV07WorkoutB015GoalValuePickerVAGGAA08ModifiedD0VyAMyAMyAMyAH08Embeddedi13ConfigurationG0VAA14_PaddingLayoutVGAA19_BackgroundModifierVyAMyAA017StrokeBorderShapeG0VyAA16RoundedRectangleVAA012HierarchicalU5StyleVAGGAA010_FlexFrameP0VGGGAA013_TraitWritingR0VyAA07ListRowQ8TraitKeyVGGA6_yAA21ListRowInsetsTraitKeyVGGGSgMR);
  _s7SwiftUI14ObservedObjectVy11WorkoutCore04GoalE13ConfigurationCGWOhTm_0(v259, &_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGGAMyAK4CaseOSgGGAA16_FlexFrameLayoutVGAMyAA4FontVSgGGAMySiSgGG07WorkoutB015BodyHyphenationVGSgAIyA9_A10_GGSg_A10_tGGAA06_TraitlM0VyAA017ListRowBackgroundwK0VGGA17_yAA0xy6InsetswK0VGGA6_04HidexY9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVGSgMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGGAMyAK4CaseOSgGGAA16_FlexFrameLayoutVGAMyAA4FontVSgGGAMySiSgGG07WorkoutB015BodyHyphenationVGSgAIyA9_A10_GGSg_A10_tGGAA06_TraitlM0VyAA017ListRowBackgroundwK0VGGA17_yAA0xy6InsetswK0VGGA6_04HidexY9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVGSgMR);
  _s7SwiftUI14ObservedObjectVy11WorkoutCore04GoalE13ConfigurationCGWOhTm_0(v193, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGG07WorkoutB015BodyHyphenationVGAA06_TraithI0VyAA013ListRowInsetstG0VGGA10_yAA0uv10BackgroundtG0VGGSgMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGG07WorkoutB015BodyHyphenationVGAA06_TraithI0VyAA013ListRowInsetstG0VGGA10_yAA0uv10BackgroundtG0VGGSgMR);
  _s7SwiftUI14ObservedObjectVy11WorkoutCore04GoalE13ConfigurationCGWOhTm_0(v255, &_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB014SaveCopyButtonVAA21_TraitWritingModifierVyAA013ListRowInsetsI3KeyVGGAD04HidelM9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVGAA012_EnvironmentojK0VyAA11ControlSizeOGGSgMd, &_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB014SaveCopyButtonVAA21_TraitWritingModifierVyAA013ListRowInsetsI3KeyVGGAD04HidelM9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVGAA012_EnvironmentojK0VyAA11ControlSizeOGGSgMR);
  v271 = v250;
  v272 = v249;
  v273 = v248;
  v274 = v247;
  v275 = 0;
  *v276 = v294[0];
  *&v276[3] = *(v294 + 3);
  v277 = countAndFlagsBits;
  v278 = object;
  v279 = v260;
  v280 = v243;
  *v281 = *v293;
  *&v281[3] = *&v293[3];
  v282 = v244;
  v283 = v242;
  v284 = v241;
  v285 = v238;
  v286 = 0;
  v287 = 0;
  *v288 = *v291;
  *&v288[3] = *&v291[3];
  v289 = 0;
  v290 = 0;
  outlined destroy of StartWorkoutButton(&v271);
  outlined destroy of ModifiedContent<SubscriptionView<ObservableObjectPublisher, <<opaque return type of View.toolbarForegroundStyle<A>(_:for:)>>.0>, WorkoutConfigurationToolbar>(v254, &_s7SwiftUI19_ConditionalContentVyAA7SectionVyAA9EmptyViewV07WorkoutB015GoalValuePickerVAGGAA08ModifiedD0VyAMyAMyAMyAH08Embeddedi13ConfigurationG0VAA14_PaddingLayoutVGAA19_BackgroundModifierVyAMyAA017StrokeBorderShapeG0VyAA16RoundedRectangleVAA012HierarchicalU5StyleVAGGAA010_FlexFrameP0VGGGAA013_TraitWritingR0VyAA07ListRowQ8TraitKeyVGGA6_yAA21ListRowInsetsTraitKeyVGGGSgMd, &_s7SwiftUI19_ConditionalContentVyAA7SectionVyAA9EmptyViewV07WorkoutB015GoalValuePickerVAGGAA08ModifiedD0VyAMyAMyAMyAH08Embeddedi13ConfigurationG0VAA14_PaddingLayoutVGAA19_BackgroundModifierVyAMyAA017StrokeBorderShapeG0VyAA16RoundedRectangleVAA012HierarchicalU5StyleVAGGAA010_FlexFrameP0VGGGAA013_TraitWritingR0VyAA07ListRowQ8TraitKeyVGGA6_yAA21ListRowInsetsTraitKeyVGGGSgMR);
  _s7SwiftUI14ObservedObjectVy11WorkoutCore04GoalE13ConfigurationCGWOhTm_0(v253, &_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGGAMyAK4CaseOSgGGAA16_FlexFrameLayoutVGAMyAA4FontVSgGGAMySiSgGG07WorkoutB015BodyHyphenationVGSgAIyA9_A10_GGSg_A10_tGGAA06_TraitlM0VyAA017ListRowBackgroundwK0VGGA17_yAA0xy6InsetswK0VGGA6_04HidexY9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVGSgMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGGAMyAK4CaseOSgGGAA16_FlexFrameLayoutVGAMyAA4FontVSgGGAMySiSgGG07WorkoutB015BodyHyphenationVGSgAIyA9_A10_GGSg_A10_tGGAA06_TraitlM0VyAA017ListRowBackgroundwK0VGGA17_yAA0xy6InsetswK0VGGA6_04HidexY9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVGSgMR);
  outlined consume of Text.Storage(v258, v202, v189);
}

void *closure #1 in closure #1 in GoalWorkoutConfigurationView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v21 = *(a1 + 16);
  v3 = *(a1 + 32);
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMR);
  swift_storeEnumTagMultiPayload();
  outlined init with copy of ObservedObject<GoalWorkoutConfiguration>(&v21, v19, &_s7SwiftUI14ObservedObjectVy11WorkoutCore04GoalE13ConfigurationCGMd, &_s7SwiftUI14ObservedObjectVy11WorkoutCore04GoalE13ConfigurationCGMR);
  type metadata accessor for WorkoutConfigurationDataSource();
  lazy protocol witness table accessor for type GoalWorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type WorkoutConfigurationDataSource and conformance WorkoutConfigurationDataSource, MEMORY[0x277D7DC28], MEMORY[0x277D7DC20]);
  v4 = v3;
  v5 = EnvironmentObject.init()();
  v7 = v6;
  type metadata accessor for ConfigurationNavigationModel(0);
  lazy protocol witness table accessor for type GoalWorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel, &protocol conformance descriptor for ConfigurationNavigationModel);
  v8 = EnvironmentObject.init()();
  v10 = v9;
  v11 = type metadata accessor for GoalValuePicker(0);
  v12 = (a2 + v11[5]);
  *v12 = v5;
  v12[1] = v7;
  v13 = (a2 + v11[6]);
  *v13 = v8;
  v13[1] = v10;
  v14 = (a2 + v11[7]);
  type metadata accessor for GoalWorkoutConfiguration();
  lazy protocol witness table accessor for type GoalWorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type GoalWorkoutConfiguration and conformance WorkoutConfiguration, MEMORY[0x277D7D928], MEMORY[0x277D7DA48]);
  *v14 = ObservedObject.init(wrappedValue:)();
  v14[1] = v15;
  *(a2 + v11[8]) = v4;
  *(a2 + v11[9]) = 0;
  v16 = a2 + v11[10];
  result = State.init(wrappedValue:)();
  v18 = v20;
  *v16 = v19[0];
  *(v16 + 1) = v18;
  return result;
}

uint64_t closure #3 in GoalWorkoutConfigurationView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA012_ConditionalD0VyACy07WorkoutB015GoalValueButtonVAA30_EnvironmentKeyWritingModifierVy0I4Core0I23ConfigurationDataSourceCSgGGACyACyAJ08EmbeddedjrG0VAA14_PaddingLayoutVGAA011_BackgroundP0VyACyAA017StrokeBorderShapeG0VyAA16RoundedRectangleVAA22HierarchicalShapeStyleVAA05EmptyG0VGAA010_FlexFrameW0VGGGGSg_AA0G0PAAE05sceneV0yQrAA4EdgeO3SetVFQOyAEyAGyAJ05StartiL0V_AJ08SaveCopyL0VSgAJ05ShareirL0VSgAJ06DeleteL0VSgACyACyACyACyACyACyACyAA4TextVANyAA5ColorVSgGGANyAA13TextAlignmentOGGANyA35_4CaseOSgGGA10_GANyAA4FontVSgGGANySiSgGGAJ15BodyHyphenationVGSgtGG_Qo_tGGANyAA13AnyShapeStyleVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA012_ConditionalD0VyACy07WorkoutB015GoalValueButtonVAA30_EnvironmentKeyWritingModifierVy0I4Core0I23ConfigurationDataSourceCSgGGACyACyAJ08EmbeddedjrG0VAA14_PaddingLayoutVGAA011_BackgroundP0VyACyAA017StrokeBorderShapeG0VyAA16RoundedRectangleVAA22HierarchicalShapeStyleVAA05EmptyG0VGAA010_FlexFrameW0VGGGGSg_AA0G0PAAE05sceneV0yQrAA4EdgeO3SetVFQOyAEyAGyAJ05StartiL0V_AJ08SaveCopyL0VSgAJ05ShareirL0VSgAJ06DeleteL0VSgACyACyACyACyACyACyACyAA4TextVANyAA5ColorVSgGGANyAA13TextAlignmentOGGANyA35_4CaseOSgGGA10_GANyAA4FontVSgGGANySiSgGGAJ15BodyHyphenationVGSgtGG_Qo_tGGANyAA13AnyShapeStyleVSgGGMR);
  MEMORY[0x28223BE20](v3);
  v32 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v31 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA19_ConditionalContentVyAA08ModifiedG0VyAIyAIyAIyAIyAIyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGGAMyAK4CaseOSgGGAA16_FlexFrameLayoutVGAMyAA4FontVSgGGAMySiSgGG07WorkoutB015BodyHyphenationVGSgAGyA9_A10_GGSg_A10_tGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA19_ConditionalContentVyAA08ModifiedG0VyAIyAIyAIyAIyAIyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGGAMyAK4CaseOSgGGAA16_FlexFrameLayoutVGAMyAA4FontVSgGGAMySiSgGG07WorkoutB015BodyHyphenationVGSgAGyA9_A10_GGSg_A10_tGGMR);
  MEMORY[0x28223BE20](v8);
  v10 = &v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA6VStackVyAA05TupleC0VyAA19_ConditionalContentVyAA08ModifiedK0VyAPyAPyAPyAPyAPyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0M9AlignmentOGGATyAR4CaseOSgGGAA16_FlexFrameLayoutVGATyAA4FontVSgGGATySiSgGG07WorkoutB015BodyHyphenationVGSgANyA16_A17_GGSg_A17_tGG_Qo_SgMd, &_s7SwiftUI4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA6VStackVyAA05TupleC0VyAA19_ConditionalContentVyAA08ModifiedK0VyAPyAPyAPyAPyAPyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0M9AlignmentOGGATyAR4CaseOSgGGAA16_FlexFrameLayoutVGATyAA4FontVSgGGATySiSgGG07WorkoutB015BodyHyphenationVGSgANyA16_A17_GGSg_A17_tGG_Qo_SgMR);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v31 - v15;
  v17 = *(a1 + 24);
  if (dispatch thunk of WorkoutConfiguration.externalProvider.getter())
  {

    *v10 = static HorizontalAlignment.leading.getter();
    *(v10 + 1) = 0;
    v10[16] = 0;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA19_ConditionalContentVyAA08ModifiedJ0VyAMyAMyAMyAMyAMyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0L9AlignmentOGGAQyAO4CaseOSgGGAA010_FlexFrameG0VGAQyAA4FontVSgGGAQySiSgGG07WorkoutB015BodyHyphenationVGSgAKyA13_A14_GGSg_A14_tGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA19_ConditionalContentVyAA08ModifiedJ0VyAMyAMyAMyAMyAMyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0L9AlignmentOGGAQyAO4CaseOSgGGAA010_FlexFrameG0VGAQyAA4FontVSgGGAQySiSgGG07WorkoutB015BodyHyphenationVGSgAKyA13_A14_GGSg_A14_tGGMR);
    closure #2 in WorkoutConfiguration.externalProviderDescriptionHeaderStack()(v17, &v10[*(v18 + 44)]);
    static Edge.Set.all.getter();
    lazy protocol witness table accessor for type TupleView<((<<opaque return type of View.scenePadding(_:)>>.0)?, ModifiedContent<VStack<TupleView<(_ConditionalContent<ModifiedContent<GoalValueButton, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, ModifiedContent<ModifiedContent<EmbeddedGoalConfigurationView, _PaddingLayout>, _BackgroundModifier<ModifiedContent<StrokeBorderShapeView<RoundedRectangle, HierarchicalShapeStyle, EmptyView>, _FlexFrameLayout>>>>?, <<opaque return type of View.scenePadding(_:)>>.0)>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>?, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA19_ConditionalContentVyAA08ModifiedG0VyAIyAIyAIyAIyAIyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGGAMyAK4CaseOSgGGAA16_FlexFrameLayoutVGAMyAA4FontVSgGGAMySiSgGG07WorkoutB015BodyHyphenationVGSgAGyA9_A10_GGSg_A10_tGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA19_ConditionalContentVyAA08ModifiedG0VyAIyAIyAIyAIyAIyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGGAMyAK4CaseOSgGGAA16_FlexFrameLayoutVGAMyAA4FontVSgGGAMySiSgGG07WorkoutB015BodyHyphenationVGSgAGyA9_A10_GGSg_A10_tGGMR, MEMORY[0x277CE1198]);
    View.scenePadding(_:)();
    _s7SwiftUI14ObservedObjectVy11WorkoutCore04GoalE13ConfigurationCGWOhTm_0(v10, &_s7SwiftUI6VStackVyAA9TupleViewVyAA19_ConditionalContentVyAA08ModifiedG0VyAIyAIyAIyAIyAIyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGGAMyAK4CaseOSgGGAA16_FlexFrameLayoutVGAMyAA4FontVSgGGAMySiSgGG07WorkoutB015BodyHyphenationVGSgAGyA9_A10_GGSg_A10_tGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA19_ConditionalContentVyAA08ModifiedG0VyAIyAIyAIyAIyAIyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGGAMyAK4CaseOSgGGAA16_FlexFrameLayoutVGAMyAA4FontVSgGGAMySiSgGG07WorkoutB015BodyHyphenationVGSgAGyA9_A10_GGSg_A10_tGGMR);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA6VStackVyAA05TupleC0VyAA19_ConditionalContentVyAA08ModifiedK0VyAPyAPyAPyAPyAPyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0M9AlignmentOGGATyAR4CaseOSgGGAA16_FlexFrameLayoutVGATyAA4FontVSgGGATySiSgGG07WorkoutB015BodyHyphenationVGSgANyA16_A17_GGSg_A17_tGG_Qo_Md, &_s7SwiftUI4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA6VStackVyAA05TupleC0VyAA19_ConditionalContentVyAA08ModifiedK0VyAPyAPyAPyAPyAPyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0M9AlignmentOGGATyAR4CaseOSgGGAA16_FlexFrameLayoutVGATyAA4FontVSgGGATySiSgGG07WorkoutB015BodyHyphenationVGSgANyA16_A17_GGSg_A17_tGG_Qo_MR);
    (*(*(v19 - 8) + 56))(v16, 0, 1, v19);
  }

  else
  {
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA6VStackVyAA05TupleC0VyAA19_ConditionalContentVyAA08ModifiedK0VyAPyAPyAPyAPyAPyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0M9AlignmentOGGATyAR4CaseOSgGGAA16_FlexFrameLayoutVGATyAA4FontVSgGGATySiSgGG07WorkoutB015BodyHyphenationVGSgANyA16_A17_GGSg_A17_tGG_Qo_Md, &_s7SwiftUI4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA6VStackVyAA05TupleC0VyAA19_ConditionalContentVyAA08ModifiedK0VyAPyAPyAPyAPyAPyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0M9AlignmentOGGATyAR4CaseOSgGGAA16_FlexFrameLayoutVGATyAA4FontVSgGGATySiSgGG07WorkoutB015BodyHyphenationVGSgANyA16_A17_GGSg_A17_tGG_Qo_MR);
    (*(*(v20 - 8) + 56))(v16, 1, 1, v20);
  }

  v21 = *(a1 + 72);
  *v7 = static HorizontalAlignment.center.getter();
  *(v7 + 1) = v21;
  v7[16] = 0;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA19_ConditionalContentVyAA08ModifiedJ0Vy07WorkoutB015GoalValueButtonVAA30_EnvironmentKeyWritingModifierVy0L4Core0L23ConfigurationDataSourceCSgGGAMyAMyAN08EmbeddedmuD0VAA08_PaddingG0VGAA011_BackgroundS0VyAMyAA017StrokeBorderShapeD0VyAA16RoundedRectangleVAA22HierarchicalShapeStyleVAA05EmptyD0VGAA010_FlexFrameG0VGGGGSg_AA0D0PAAE05sceneY0yQrAA4EdgeO3SetVFQOyAA0F0VyAIyAN05StartlO0V_AN08SaveCopyO0VSgAN05ShareluO0VSgAN06DeleteO0VSgAMyAMyAMyAMyAMyAMyAMyAA4TextVARyAA5ColorVSgGGARyAA13TextAlignmentOGGARyA41_4CaseOSgGGA14_GARyAA4FontVSgGGARySiSgGGAN15BodyHyphenationVGSgtGG_Qo_tGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA19_ConditionalContentVyAA08ModifiedJ0Vy07WorkoutB015GoalValueButtonVAA30_EnvironmentKeyWritingModifierVy0L4Core0L23ConfigurationDataSourceCSgGGAMyAMyAN08EmbeddedmuD0VAA08_PaddingG0VGAA011_BackgroundS0VyAMyAA017StrokeBorderShapeD0VyAA16RoundedRectangleVAA22HierarchicalShapeStyleVAA05EmptyD0VGAA010_FlexFrameG0VGGGGSg_AA0D0PAAE05sceneY0yQrAA4EdgeO3SetVFQOyAA0F0VyAIyAN05StartlO0V_AN08SaveCopyO0VSgAN05ShareluO0VSgAN06DeleteO0VSgAMyAMyAMyAMyAMyAMyAMyAA4TextVARyAA5ColorVSgGGARyAA13TextAlignmentOGGARyA41_4CaseOSgGGA14_GARyAA4FontVSgGGARySiSgGGAN15BodyHyphenationVGSgtGG_Qo_tGGMR);
  closure #1 in closure #3 in GoalWorkoutConfigurationView.body.getter(a1, &v7[*(v22 + 44)]);
  WorkoutConfiguration.displayColor.getter();
  v23 = Color.init(uiColor:)();
  KeyPath = swift_getKeyPath();
  v34 = v23;
  v25 = AnyShapeStyle.init<A>(_:)();
  v26 = &v7[*(v3 + 36)];
  *v26 = KeyPath;
  v26[1] = v25;
  outlined init with copy of ModifiedContent<SubscriptionView<ObservableObjectPublisher, <<opaque return type of View.toolbarForegroundStyle<A>(_:for:)>>.0>, WorkoutConfigurationToolbar>(v16, v13, &_s7SwiftUI4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA6VStackVyAA05TupleC0VyAA19_ConditionalContentVyAA08ModifiedK0VyAPyAPyAPyAPyAPyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0M9AlignmentOGGATyAR4CaseOSgGGAA16_FlexFrameLayoutVGATyAA4FontVSgGGATySiSgGG07WorkoutB015BodyHyphenationVGSgANyA16_A17_GGSg_A17_tGG_Qo_SgMd, &_s7SwiftUI4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA6VStackVyAA05TupleC0VyAA19_ConditionalContentVyAA08ModifiedK0VyAPyAPyAPyAPyAPyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0M9AlignmentOGGATyAR4CaseOSgGGAA16_FlexFrameLayoutVGATyAA4FontVSgGGATySiSgGG07WorkoutB015BodyHyphenationVGSgANyA16_A17_GGSg_A17_tGG_Qo_SgMR);
  v27 = v32;
  outlined init with copy of ModifiedContent<SubscriptionView<ObservableObjectPublisher, <<opaque return type of View.toolbarForegroundStyle<A>(_:for:)>>.0>, WorkoutConfigurationToolbar>(v7, v32, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA012_ConditionalD0VyACy07WorkoutB015GoalValueButtonVAA30_EnvironmentKeyWritingModifierVy0I4Core0I23ConfigurationDataSourceCSgGGACyACyAJ08EmbeddedjrG0VAA14_PaddingLayoutVGAA011_BackgroundP0VyACyAA017StrokeBorderShapeG0VyAA16RoundedRectangleVAA22HierarchicalShapeStyleVAA05EmptyG0VGAA010_FlexFrameW0VGGGGSg_AA0G0PAAE05sceneV0yQrAA4EdgeO3SetVFQOyAEyAGyAJ05StartiL0V_AJ08SaveCopyL0VSgAJ05ShareirL0VSgAJ06DeleteL0VSgACyACyACyACyACyACyACyAA4TextVANyAA5ColorVSgGGANyAA13TextAlignmentOGGANyA35_4CaseOSgGGA10_GANyAA4FontVSgGGANySiSgGGAJ15BodyHyphenationVGSgtGG_Qo_tGGANyAA13AnyShapeStyleVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA012_ConditionalD0VyACy07WorkoutB015GoalValueButtonVAA30_EnvironmentKeyWritingModifierVy0I4Core0I23ConfigurationDataSourceCSgGGACyACyAJ08EmbeddedjrG0VAA14_PaddingLayoutVGAA011_BackgroundP0VyACyAA017StrokeBorderShapeG0VyAA16RoundedRectangleVAA22HierarchicalShapeStyleVAA05EmptyG0VGAA010_FlexFrameW0VGGGGSg_AA0G0PAAE05sceneV0yQrAA4EdgeO3SetVFQOyAEyAGyAJ05StartiL0V_AJ08SaveCopyL0VSgAJ05ShareirL0VSgAJ06DeleteL0VSgACyACyACyACyACyACyACyAA4TextVANyAA5ColorVSgGGANyAA13TextAlignmentOGGANyA35_4CaseOSgGGA10_GANyAA4FontVSgGGANySiSgGGAJ15BodyHyphenationVGSgtGG_Qo_tGGANyAA13AnyShapeStyleVSgGGMR);
  v28 = v33;
  outlined init with copy of ModifiedContent<SubscriptionView<ObservableObjectPublisher, <<opaque return type of View.toolbarForegroundStyle<A>(_:for:)>>.0>, WorkoutConfigurationToolbar>(v13, v33, &_s7SwiftUI4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA6VStackVyAA05TupleC0VyAA19_ConditionalContentVyAA08ModifiedK0VyAPyAPyAPyAPyAPyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0M9AlignmentOGGATyAR4CaseOSgGGAA16_FlexFrameLayoutVGATyAA4FontVSgGGATySiSgGG07WorkoutB015BodyHyphenationVGSgANyA16_A17_GGSg_A17_tGG_Qo_SgMd, &_s7SwiftUI4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA6VStackVyAA05TupleC0VyAA19_ConditionalContentVyAA08ModifiedK0VyAPyAPyAPyAPyAPyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0M9AlignmentOGGATyAR4CaseOSgGGAA16_FlexFrameLayoutVGATyAA4FontVSgGGATySiSgGG07WorkoutB015BodyHyphenationVGSgANyA16_A17_GGSg_A17_tGG_Qo_SgMR);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA6VStackVyAA05TupleC0VyAA19_ConditionalContentVyAA08ModifiedK0VyAPyAPyAPyAPyAPyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0M9AlignmentOGGATyAR4CaseOSgGGAA16_FlexFrameLayoutVGATyAA4FontVSgGGATySiSgGG07WorkoutB015BodyHyphenationVGSgANyA16_A17_GGSg_A17_tGG_Qo_Sg_APyAJyALyANyAPyA13_15GoalValueButtonVATy0X4Core0X23ConfigurationDataSourceCSgGGAPyAPyA13_025EmbeddedGoalConfigurationC0VAA01_eV0VGAA011_BackgroundQ0VyAPyAA017StrokeBorderShapeC0VyAA16RoundedRectangleVAA22HierarchicalShapeStyleVAA05EmptyC0VGA3_GGGGSg_AcAEADyQrAHFQOyAJyALyA13_05StartX6ButtonV_A13_14SaveCopyButtonVSgA13_05ShareX19ConfigurationButtonVSgA13_12DeleteButtonVSgAPyAPyAPyAPyAPyAPyAPyArTyAA5ColorVSgGGAWGA0_GA3_GA8_GA11_GA15_GSgtGG_Qo_tGGATyAA13AnyShapeStyleVSgGGtMd, &_s7SwiftUI4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA6VStackVyAA05TupleC0VyAA19_ConditionalContentVyAA08ModifiedK0VyAPyAPyAPyAPyAPyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0M9AlignmentOGGATyAR4CaseOSgGGAA16_FlexFrameLayoutVGATyAA4FontVSgGGATySiSgGG07WorkoutB015BodyHyphenationVGSgANyA16_A17_GGSg_A17_tGG_Qo_Sg_APyAJyALyANyAPyA13_15GoalValueButtonVATy0X4Core0X23ConfigurationDataSourceCSgGGAPyAPyA13_025EmbeddedGoalConfigurationC0VAA01_eV0VGAA011_BackgroundQ0VyAPyAA017StrokeBorderShapeC0VyAA16RoundedRectangleVAA22HierarchicalShapeStyleVAA05EmptyC0VGA3_GGGGSg_AcAEADyQrAHFQOyAJyALyA13_05StartX6ButtonV_A13_14SaveCopyButtonVSgA13_05ShareX19ConfigurationButtonVSgA13_12DeleteButtonVSgAPyAPyAPyAPyAPyAPyAPyArTyAA5ColorVSgGGAWGA0_GA3_GA8_GA11_GA15_GSgtGG_Qo_tGGATyAA13AnyShapeStyleVSgGGtMR);
  outlined init with copy of ModifiedContent<SubscriptionView<ObservableObjectPublisher, <<opaque return type of View.toolbarForegroundStyle<A>(_:for:)>>.0>, WorkoutConfigurationToolbar>(v27, v28 + *(v29 + 48), &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA012_ConditionalD0VyACy07WorkoutB015GoalValueButtonVAA30_EnvironmentKeyWritingModifierVy0I4Core0I23ConfigurationDataSourceCSgGGACyACyAJ08EmbeddedjrG0VAA14_PaddingLayoutVGAA011_BackgroundP0VyACyAA017StrokeBorderShapeG0VyAA16RoundedRectangleVAA22HierarchicalShapeStyleVAA05EmptyG0VGAA010_FlexFrameW0VGGGGSg_AA0G0PAAE05sceneV0yQrAA4EdgeO3SetVFQOyAEyAGyAJ05StartiL0V_AJ08SaveCopyL0VSgAJ05ShareirL0VSgAJ06DeleteL0VSgACyACyACyACyACyACyACyAA4TextVANyAA5ColorVSgGGANyAA13TextAlignmentOGGANyA35_4CaseOSgGGA10_GANyAA4FontVSgGGANySiSgGGAJ15BodyHyphenationVGSgtGG_Qo_tGGANyAA13AnyShapeStyleVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA012_ConditionalD0VyACy07WorkoutB015GoalValueButtonVAA30_EnvironmentKeyWritingModifierVy0I4Core0I23ConfigurationDataSourceCSgGGACyACyAJ08EmbeddedjrG0VAA14_PaddingLayoutVGAA011_BackgroundP0VyACyAA017StrokeBorderShapeG0VyAA16RoundedRectangleVAA22HierarchicalShapeStyleVAA05EmptyG0VGAA010_FlexFrameW0VGGGGSg_AA0G0PAAE05sceneV0yQrAA4EdgeO3SetVFQOyAEyAGyAJ05StartiL0V_AJ08SaveCopyL0VSgAJ05ShareirL0VSgAJ06DeleteL0VSgACyACyACyACyACyACyACyAA4TextVANyAA5ColorVSgGGANyAA13TextAlignmentOGGANyA35_4CaseOSgGGA10_GANyAA4FontVSgGGANySiSgGGAJ15BodyHyphenationVGSgtGG_Qo_tGGANyAA13AnyShapeStyleVSgGGMR);
  outlined destroy of ModifiedContent<SubscriptionView<ObservableObjectPublisher, <<opaque return type of View.toolbarForegroundStyle<A>(_:for:)>>.0>, WorkoutConfigurationToolbar>(v7, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA012_ConditionalD0VyACy07WorkoutB015GoalValueButtonVAA30_EnvironmentKeyWritingModifierVy0I4Core0I23ConfigurationDataSourceCSgGGACyACyAJ08EmbeddedjrG0VAA14_PaddingLayoutVGAA011_BackgroundP0VyACyAA017StrokeBorderShapeG0VyAA16RoundedRectangleVAA22HierarchicalShapeStyleVAA05EmptyG0VGAA010_FlexFrameW0VGGGGSg_AA0G0PAAE05sceneV0yQrAA4EdgeO3SetVFQOyAEyAGyAJ05StartiL0V_AJ08SaveCopyL0VSgAJ05ShareirL0VSgAJ06DeleteL0VSgACyACyACyACyACyACyACyAA4TextVANyAA5ColorVSgGGANyAA13TextAlignmentOGGANyA35_4CaseOSgGGA10_GANyAA4FontVSgGGANySiSgGGAJ15BodyHyphenationVGSgtGG_Qo_tGGANyAA13AnyShapeStyleVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA012_ConditionalD0VyACy07WorkoutB015GoalValueButtonVAA30_EnvironmentKeyWritingModifierVy0I4Core0I23ConfigurationDataSourceCSgGGACyACyAJ08EmbeddedjrG0VAA14_PaddingLayoutVGAA011_BackgroundP0VyACyAA017StrokeBorderShapeG0VyAA16RoundedRectangleVAA22HierarchicalShapeStyleVAA05EmptyG0VGAA010_FlexFrameW0VGGGGSg_AA0G0PAAE05sceneV0yQrAA4EdgeO3SetVFQOyAEyAGyAJ05StartiL0V_AJ08SaveCopyL0VSgAJ05ShareirL0VSgAJ06DeleteL0VSgACyACyACyACyACyACyACyAA4TextVANyAA5ColorVSgGGANyAA13TextAlignmentOGGANyA35_4CaseOSgGGA10_GANyAA4FontVSgGGANySiSgGGAJ15BodyHyphenationVGSgtGG_Qo_tGGANyAA13AnyShapeStyleVSgGGMR);
  outlined destroy of ModifiedContent<SubscriptionView<ObservableObjectPublisher, <<opaque return type of View.toolbarForegroundStyle<A>(_:for:)>>.0>, WorkoutConfigurationToolbar>(v16, &_s7SwiftUI4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA6VStackVyAA05TupleC0VyAA19_ConditionalContentVyAA08ModifiedK0VyAPyAPyAPyAPyAPyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0M9AlignmentOGGATyAR4CaseOSgGGAA16_FlexFrameLayoutVGATyAA4FontVSgGGATySiSgGG07WorkoutB015BodyHyphenationVGSgANyA16_A17_GGSg_A17_tGG_Qo_SgMd, &_s7SwiftUI4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA6VStackVyAA05TupleC0VyAA19_ConditionalContentVyAA08ModifiedK0VyAPyAPyAPyAPyAPyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0M9AlignmentOGGATyAR4CaseOSgGGAA16_FlexFrameLayoutVGATyAA4FontVSgGGATySiSgGG07WorkoutB015BodyHyphenationVGSgANyA16_A17_GGSg_A17_tGG_Qo_SgMR);
  outlined destroy of ModifiedContent<SubscriptionView<ObservableObjectPublisher, <<opaque return type of View.toolbarForegroundStyle<A>(_:for:)>>.0>, WorkoutConfigurationToolbar>(v27, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA012_ConditionalD0VyACy07WorkoutB015GoalValueButtonVAA30_EnvironmentKeyWritingModifierVy0I4Core0I23ConfigurationDataSourceCSgGGACyACyAJ08EmbeddedjrG0VAA14_PaddingLayoutVGAA011_BackgroundP0VyACyAA017StrokeBorderShapeG0VyAA16RoundedRectangleVAA22HierarchicalShapeStyleVAA05EmptyG0VGAA010_FlexFrameW0VGGGGSg_AA0G0PAAE05sceneV0yQrAA4EdgeO3SetVFQOyAEyAGyAJ05StartiL0V_AJ08SaveCopyL0VSgAJ05ShareirL0VSgAJ06DeleteL0VSgACyACyACyACyACyACyACyAA4TextVANyAA5ColorVSgGGANyAA13TextAlignmentOGGANyA35_4CaseOSgGGA10_GANyAA4FontVSgGGANySiSgGGAJ15BodyHyphenationVGSgtGG_Qo_tGGANyAA13AnyShapeStyleVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA012_ConditionalD0VyACy07WorkoutB015GoalValueButtonVAA30_EnvironmentKeyWritingModifierVy0I4Core0I23ConfigurationDataSourceCSgGGACyACyAJ08EmbeddedjrG0VAA14_PaddingLayoutVGAA011_BackgroundP0VyACyAA017StrokeBorderShapeG0VyAA16RoundedRectangleVAA22HierarchicalShapeStyleVAA05EmptyG0VGAA010_FlexFrameW0VGGGGSg_AA0G0PAAE05sceneV0yQrAA4EdgeO3SetVFQOyAEyAGyAJ05StartiL0V_AJ08SaveCopyL0VSgAJ05ShareirL0VSgAJ06DeleteL0VSgACyACyACyACyACyACyACyAA4TextVANyAA5ColorVSgGGANyAA13TextAlignmentOGGANyA35_4CaseOSgGGA10_GANyAA4FontVSgGGANySiSgGGAJ15BodyHyphenationVGSgtGG_Qo_tGGANyAA13AnyShapeStyleVSgGGMR);
  return outlined destroy of ModifiedContent<SubscriptionView<ObservableObjectPublisher, <<opaque return type of View.toolbarForegroundStyle<A>(_:for:)>>.0>, WorkoutConfigurationToolbar>(v13, &_s7SwiftUI4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA6VStackVyAA05TupleC0VyAA19_ConditionalContentVyAA08ModifiedK0VyAPyAPyAPyAPyAPyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0M9AlignmentOGGATyAR4CaseOSgGGAA16_FlexFrameLayoutVGATyAA4FontVSgGGATySiSgGG07WorkoutB015BodyHyphenationVGSgANyA16_A17_GGSg_A17_tGG_Qo_SgMd, &_s7SwiftUI4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA6VStackVyAA05TupleC0VyAA19_ConditionalContentVyAA08ModifiedK0VyAPyAPyAPyAPyAPyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0M9AlignmentOGGATyAR4CaseOSgGGAA16_FlexFrameLayoutVGATyAA4FontVSgGGATySiSgGG07WorkoutB015BodyHyphenationVGSgANyA16_A17_GGSg_A17_tGG_Qo_SgMR);
}

uint64_t closure #1 in closure #3 in GoalWorkoutConfigurationView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v103 = a2;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVy07WorkoutB005StartF6ButtonV_AF08SaveCopyH0VSgAF05Sharef13ConfigurationH0VSgAF06DeleteH0VSgAA15ModifiedContentVyASyASyASyASyASyASyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAWyAA0P9AlignmentOGGAWyAU4CaseOSgGGAA16_FlexFrameLayoutVGAWyAA4FontVSgGGAWySiSgGGAF15BodyHyphenationVGSgtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVy07WorkoutB005StartF6ButtonV_AF08SaveCopyH0VSgAF05Sharef13ConfigurationH0VSgAF06DeleteH0VSgAA15ModifiedContentVyASyASyASyASyASyASyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAWyAA0P9AlignmentOGGAWyAU4CaseOSgGGAA16_FlexFrameLayoutVGAWyAA4FontVSgGGAWySiSgGGAF15BodyHyphenationVGSgtGGMR);
  MEMORY[0x28223BE20](v98);
  v4 = &v86[-v3];
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA6VStackVyAA05TupleC0Vy07WorkoutB005StartJ6ButtonV_AM08SaveCopyL0VSgAM05Sharej13ConfigurationL0VSgAM06DeleteL0VSgAA15ModifiedContentVyAZyAZyAZyAZyAZyAZyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGA2_yAA0T9AlignmentOGGA2_yA0_4CaseOSgGGAA16_FlexFrameLayoutVGA2_yAA4FontVSgGGA2_ySiSgGGAM15BodyHyphenationVGSgtGG_Qo_Md, &_s7SwiftUI4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA6VStackVyAA05TupleC0Vy07WorkoutB005StartJ6ButtonV_AM08SaveCopyL0VSgAM05Sharej13ConfigurationL0VSgAM06DeleteL0VSgAA15ModifiedContentVyAZyAZyAZyAZyAZyAZyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGA2_yAA0T9AlignmentOGGA2_yA0_4CaseOSgGGAA16_FlexFrameLayoutVGA2_yAA4FontVSgGGA2_ySiSgGGAM15BodyHyphenationVGSgtGG_Qo_MR);
  v101 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v100 = &v86[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v99 = &v86[-v7];
  v8 = type metadata accessor for RoundedRectangle();
  MEMORY[0x28223BE20](v8);
  v10 = &v86[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21StrokeBorderShapeViewVyAA16RoundedRectangleVAA012HierarchicalE5StyleVAA05EmptyF0VGMd, &_s7SwiftUI21StrokeBorderShapeViewVyAA16RoundedRectangleVAA012HierarchicalE5StyleVAA05EmptyF0VGMR);
  MEMORY[0x28223BE20](v11);
  v13 = &v86[-v12];
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA21StrokeBorderShapeViewVyAA16RoundedRectangleVAA012HierarchicalG5StyleVAA05EmptyH0VGAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA21StrokeBorderShapeViewVyAA16RoundedRectangleVAA012HierarchicalG5StyleVAA05EmptyH0VGAA16_FlexFrameLayoutVGMR);
  MEMORY[0x28223BE20](v90);
  v89 = &v86[-v14];
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB029EmbeddedGoalConfigurationViewVAA14_PaddingLayoutVGAA19_BackgroundModifierVyACyAA017StrokeBorderShapeI0VyAA16RoundedRectangleVAA012HierarchicalP5StyleVAA05EmptyI0VGAA010_FlexFrameK0VGGGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB029EmbeddedGoalConfigurationViewVAA14_PaddingLayoutVGAA19_BackgroundModifierVyACyAA017StrokeBorderShapeI0VyAA16RoundedRectangleVAA012HierarchicalP5StyleVAA05EmptyI0VGAA010_FlexFrameK0VGGGMR);
  MEMORY[0x28223BE20](v94);
  v16 = &v86[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v17);
  v91 = &v86[-v18];
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0Vy07WorkoutB015GoalValueButtonVAA30_EnvironmentKeyWritingModifierVy0G4Core0G23ConfigurationDataSourceCSgGGAGyAGyAH08EmbeddedhP4ViewVAA14_PaddingLayoutVGAA011_BackgroundN0VyAGyAA017StrokeBorderShapeT0VyAA16RoundedRectangleVAA012HierarchicalZ5StyleVAA05EmptyT0VGAA010_FlexFrameV0VGGG_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0Vy07WorkoutB015GoalValueButtonVAA30_EnvironmentKeyWritingModifierVy0G4Core0G23ConfigurationDataSourceCSgGGAGyAGyAH08EmbeddedhP4ViewVAA14_PaddingLayoutVGAA011_BackgroundN0VyAGyAA017StrokeBorderShapeT0VyAA16RoundedRectangleVAA012HierarchicalZ5StyleVAA05EmptyT0VGAA010_FlexFrameV0VGGG_GMR);
  MEMORY[0x28223BE20](v92);
  v20 = &v86[-v19];
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB015GoalValueButtonVAA30_EnvironmentKeyWritingModifierVy0F4Core0F23ConfigurationDataSourceCSgGGAEyAEyAF08EmbeddedgO4ViewVAA14_PaddingLayoutVGAA011_BackgroundM0VyAEyAA017StrokeBorderShapeS0VyAA16RoundedRectangleVAA012HierarchicalY5StyleVAA05EmptyS0VGAA010_FlexFrameU0VGGGGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB015GoalValueButtonVAA30_EnvironmentKeyWritingModifierVy0F4Core0F23ConfigurationDataSourceCSgGGAEyAEyAF08EmbeddedgO4ViewVAA14_PaddingLayoutVGAA011_BackgroundM0VyAEyAA017StrokeBorderShapeS0VyAA16RoundedRectangleVAA012HierarchicalY5StyleVAA05EmptyS0VGAA010_FlexFrameU0VGGGGMR);
  v95 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v93 = &v86[-v21];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB015GoalValueButtonVAA30_EnvironmentKeyWritingModifierVy0F4Core0F23ConfigurationDataSourceCSgGGAEyAEyAF08EmbeddedgO4ViewVAA14_PaddingLayoutVGAA011_BackgroundM0VyAEyAA017StrokeBorderShapeS0VyAA16RoundedRectangleVAA012HierarchicalY5StyleVAA05EmptyS0VGAA010_FlexFrameU0VGGGGSgMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB015GoalValueButtonVAA30_EnvironmentKeyWritingModifierVy0F4Core0F23ConfigurationDataSourceCSgGGAEyAEyAF08EmbeddedgO4ViewVAA14_PaddingLayoutVGAA011_BackgroundM0VyAEyAA017StrokeBorderShapeS0VyAA16RoundedRectangleVAA012HierarchicalY5StyleVAA05EmptyS0VGAA010_FlexFrameU0VGGGGSgMR);
  MEMORY[0x28223BE20](v22 - 8);
  v97 = &v86[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v24);
  v105 = &v86[-v25];
  v104 = a1;
  v118 = *(a1 + 16);
  v26 = *(&v118 + 1);
  v27 = GoalWorkoutConfiguration.goal.getter();
  v28 = [v27 goalTypeIdentifier];

  if (!v28)
  {
    _s7SwiftUI14ObservedObjectVy11WorkoutCore04GoalE13ConfigurationCGWOhTm_0(&v118, &_s7SwiftUI14ObservedObjectVy11WorkoutCore04GoalE13ConfigurationCGMd, &_s7SwiftUI14ObservedObjectVy11WorkoutCore04GoalE13ConfigurationCGMR);
    _s7SwiftUI14ObservedObjectVy11WorkoutCore04GoalE13ConfigurationCGWOhTm_0(&v118, &_s7SwiftUI14ObservedObjectVy11WorkoutCore04GoalE13ConfigurationCGMd, &_s7SwiftUI14ObservedObjectVy11WorkoutCore04GoalE13ConfigurationCGMR);
    v60 = 1;
    v61 = v105;
LABEL_8:
    (*(v95 + 56))(v61, v60, 1, v96);
    *v4 = static HorizontalAlignment.center.getter();
    *(v4 + 1) = 0x4010000000000000;
    v4[16] = 0;
    v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0Vy07WorkoutB005StartI6ButtonV_AJ08SaveCopyK0VSgAJ05Sharei13ConfigurationK0VSgAJ06DeleteK0VSgAA15ModifiedContentVyAWyAWyAWyAWyAWyAWyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGA_yAA0S9AlignmentOGGA_yAY4CaseOSgGGAA010_FlexFrameG0VGA_yAA4FontVSgGGA_ySiSgGGAJ15BodyHyphenationVGSgtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0Vy07WorkoutB005StartI6ButtonV_AJ08SaveCopyK0VSgAJ05Sharei13ConfigurationK0VSgAJ06DeleteK0VSgAA15ModifiedContentVyAWyAWyAWyAWyAWyAWyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGA_yAA0S9AlignmentOGGA_yAY4CaseOSgGGAA010_FlexFrameG0VGA_yAA4FontVSgGGA_ySiSgGGAJ15BodyHyphenationVGSgtGGMR);
    closure #1 in closure #1 in closure #3 in GoalWorkoutConfigurationView.body.getter(v104, &v4[*(v75 + 44)]);
    static Edge.Set.horizontal.getter();
    lazy protocol witness table accessor for type TupleView<((<<opaque return type of View.scenePadding(_:)>>.0)?, ModifiedContent<VStack<TupleView<(_ConditionalContent<ModifiedContent<GoalValueButton, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, ModifiedContent<ModifiedContent<EmbeddedGoalConfigurationView, _PaddingLayout>, _BackgroundModifier<ModifiedContent<StrokeBorderShapeView<RoundedRectangle, HierarchicalShapeStyle, EmptyView>, _FlexFrameLayout>>>>?, <<opaque return type of View.scenePadding(_:)>>.0)>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(StartWorkoutButton, SaveCopyButton?, ShareWorkoutConfigurationButton?, DeleteButton?, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>?)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVy07WorkoutB005StartF6ButtonV_AF08SaveCopyH0VSgAF05Sharef13ConfigurationH0VSgAF06DeleteH0VSgAA15ModifiedContentVyASyASyASyASyASyASyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAWyAA0P9AlignmentOGGAWyAU4CaseOSgGGAA16_FlexFrameLayoutVGAWyAA4FontVSgGGAWySiSgGGAF15BodyHyphenationVGSgtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVy07WorkoutB005StartF6ButtonV_AF08SaveCopyH0VSgAF05Sharef13ConfigurationH0VSgAF06DeleteH0VSgAA15ModifiedContentVyASyASyASyASyASyASyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAWyAA0P9AlignmentOGGAWyAU4CaseOSgGGAA16_FlexFrameLayoutVGAWyAA4FontVSgGGAWySiSgGGAF15BodyHyphenationVGSgtGGMR, MEMORY[0x277CE1198]);
    v76 = v99;
    View.scenePadding(_:)();
    _s7SwiftUI14ObservedObjectVy11WorkoutCore04GoalE13ConfigurationCGWOhTm_0(v4, &_s7SwiftUI6VStackVyAA9TupleViewVy07WorkoutB005StartF6ButtonV_AF08SaveCopyH0VSgAF05Sharef13ConfigurationH0VSgAF06DeleteH0VSgAA15ModifiedContentVyASyASyASyASyASyASyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAWyAA0P9AlignmentOGGAWyAU4CaseOSgGGAA16_FlexFrameLayoutVGAWyAA4FontVSgGGAWySiSgGGAF15BodyHyphenationVGSgtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVy07WorkoutB005StartF6ButtonV_AF08SaveCopyH0VSgAF05Sharef13ConfigurationH0VSgAF06DeleteH0VSgAA15ModifiedContentVyASyASyASyASyASyASyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAWyAA0P9AlignmentOGGAWyAU4CaseOSgGGAA16_FlexFrameLayoutVGAWyAA4FontVSgGGAWySiSgGGAF15BodyHyphenationVGSgtGGMR);
    v77 = v97;
    outlined init with copy of ModifiedContent<SubscriptionView<ObservableObjectPublisher, <<opaque return type of View.toolbarForegroundStyle<A>(_:for:)>>.0>, WorkoutConfigurationToolbar>(v61, v97, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB015GoalValueButtonVAA30_EnvironmentKeyWritingModifierVy0F4Core0F23ConfigurationDataSourceCSgGGAEyAEyAF08EmbeddedgO4ViewVAA14_PaddingLayoutVGAA011_BackgroundM0VyAEyAA017StrokeBorderShapeS0VyAA16RoundedRectangleVAA012HierarchicalY5StyleVAA05EmptyS0VGAA010_FlexFrameU0VGGGGSgMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB015GoalValueButtonVAA30_EnvironmentKeyWritingModifierVy0F4Core0F23ConfigurationDataSourceCSgGGAEyAEyAF08EmbeddedgO4ViewVAA14_PaddingLayoutVGAA011_BackgroundM0VyAEyAA017StrokeBorderShapeS0VyAA16RoundedRectangleVAA012HierarchicalY5StyleVAA05EmptyS0VGAA010_FlexFrameU0VGGGGSgMR);
    v78 = v101;
    v79 = *(v101 + 16);
    v80 = v100;
    v81 = v102;
    v79(v100, v76, v102);
    v82 = v103;
    outlined init with copy of ModifiedContent<SubscriptionView<ObservableObjectPublisher, <<opaque return type of View.toolbarForegroundStyle<A>(_:for:)>>.0>, WorkoutConfigurationToolbar>(v77, v103, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB015GoalValueButtonVAA30_EnvironmentKeyWritingModifierVy0F4Core0F23ConfigurationDataSourceCSgGGAEyAEyAF08EmbeddedgO4ViewVAA14_PaddingLayoutVGAA011_BackgroundM0VyAEyAA017StrokeBorderShapeS0VyAA16RoundedRectangleVAA012HierarchicalY5StyleVAA05EmptyS0VGAA010_FlexFrameU0VGGGGSgMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB015GoalValueButtonVAA30_EnvironmentKeyWritingModifierVy0F4Core0F23ConfigurationDataSourceCSgGGAEyAEyAF08EmbeddedgO4ViewVAA14_PaddingLayoutVGAA011_BackgroundM0VyAEyAA017StrokeBorderShapeS0VyAA16RoundedRectangleVAA012HierarchicalY5StyleVAA05EmptyS0VGAA010_FlexFrameU0VGGGGSgMR);
    v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB015GoalValueButtonVAA30_EnvironmentKeyWritingModifierVy0F4Core0F23ConfigurationDataSourceCSgGGAEyAEyAF08EmbeddedgO4ViewVAA14_PaddingLayoutVGAA011_BackgroundM0VyAEyAA017StrokeBorderShapeS0VyAA16RoundedRectangleVAA012HierarchicalY5StyleVAA05EmptyS0VGAA010_FlexFrameU0VGGGGSg_AA0S0PAAE05sceneT0yQrAA4EdgeO3SetVFQOyAA6VStackVyAA05TupleS0VyAF05StartfI0V_AF08SaveCopyI0VSgAF05SharefoI0VSgAF06DeleteI0VSgAEyAEyAEyAEyAEyAEyAEyAA4TextVAJyAA5ColorVSgGGAJyAA13TextAlignmentOGGAJyA35_4CaseOSgGGA6_GAJyAA4FontVSgGGAJySiSgGGAF15BodyHyphenationVGSgtGG_Qo_tMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB015GoalValueButtonVAA30_EnvironmentKeyWritingModifierVy0F4Core0F23ConfigurationDataSourceCSgGGAEyAEyAF08EmbeddedgO4ViewVAA14_PaddingLayoutVGAA011_BackgroundM0VyAEyAA017StrokeBorderShapeS0VyAA16RoundedRectangleVAA012HierarchicalY5StyleVAA05EmptyS0VGAA010_FlexFrameU0VGGGGSg_AA0S0PAAE05sceneT0yQrAA4EdgeO3SetVFQOyAA6VStackVyAA05TupleS0VyAF05StartfI0V_AF08SaveCopyI0VSgAF05SharefoI0VSgAF06DeleteI0VSgAEyAEyAEyAEyAEyAEyAEyAA4TextVAJyAA5ColorVSgGGAJyAA13TextAlignmentOGGAJyA35_4CaseOSgGGA6_GAJyAA4FontVSgGGAJySiSgGGAF15BodyHyphenationVGSgtGG_Qo_tMR);
    v79((v82 + *(v83 + 48)), v80, v81);
    v84 = *(v78 + 8);
    v84(v76, v81);
    outlined destroy of ModifiedContent<SubscriptionView<ObservableObjectPublisher, <<opaque return type of View.toolbarForegroundStyle<A>(_:for:)>>.0>, WorkoutConfigurationToolbar>(v105, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB015GoalValueButtonVAA30_EnvironmentKeyWritingModifierVy0F4Core0F23ConfigurationDataSourceCSgGGAEyAEyAF08EmbeddedgO4ViewVAA14_PaddingLayoutVGAA011_BackgroundM0VyAEyAA017StrokeBorderShapeS0VyAA16RoundedRectangleVAA012HierarchicalY5StyleVAA05EmptyS0VGAA010_FlexFrameU0VGGGGSgMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB015GoalValueButtonVAA30_EnvironmentKeyWritingModifierVy0F4Core0F23ConfigurationDataSourceCSgGGAEyAEyAF08EmbeddedgO4ViewVAA14_PaddingLayoutVGAA011_BackgroundM0VyAEyAA017StrokeBorderShapeS0VyAA16RoundedRectangleVAA012HierarchicalY5StyleVAA05EmptyS0VGAA010_FlexFrameU0VGGGGSgMR);
    v84(v80, v81);
    return outlined destroy of ModifiedContent<SubscriptionView<ObservableObjectPublisher, <<opaque return type of View.toolbarForegroundStyle<A>(_:for:)>>.0>, WorkoutConfigurationToolbar>(v77, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB015GoalValueButtonVAA30_EnvironmentKeyWritingModifierVy0F4Core0F23ConfigurationDataSourceCSgGGAEyAEyAF08EmbeddedgO4ViewVAA14_PaddingLayoutVGAA011_BackgroundM0VyAEyAA017StrokeBorderShapeS0VyAA16RoundedRectangleVAA012HierarchicalY5StyleVAA05EmptyS0VGAA010_FlexFrameU0VGGGGSgMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB015GoalValueButtonVAA30_EnvironmentKeyWritingModifierVy0F4Core0F23ConfigurationDataSourceCSgGGAEyAEyAF08EmbeddedgO4ViewVAA14_PaddingLayoutVGAA011_BackgroundM0VyAEyAA017StrokeBorderShapeS0VyAA16RoundedRectangleVAA012HierarchicalY5StyleVAA05EmptyS0VGAA010_FlexFrameU0VGGGGSgMR);
  }

  if (dispatch thunk of WorkoutConfiguration.externalProvider.getter())
  {
    _s7SwiftUI14ObservedObjectVy11WorkoutCore04GoalE13ConfigurationCGWOhTm_0(&v118, &_s7SwiftUI14ObservedObjectVy11WorkoutCore04GoalE13ConfigurationCGMd, &_s7SwiftUI14ObservedObjectVy11WorkoutCore04GoalE13ConfigurationCGMR);

    v88 = v104[4];
    v87 = static Edge.Set.all.getter();
    v106 = 1;
    v29 = *(v8 + 20);
    v30 = *MEMORY[0x277CE0118];
    v31 = type metadata accessor for RoundedCornerStyle();
    (*(*(v31 - 8) + 104))(&v10[v29], v30, v31);
    __asm { FMOV            V0.2D, #10.0 }

    *v10 = _Q0;
    v37 = static HierarchicalShapeStyle.tertiary.getter();
    StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
    outlined init with copy of RoundedRectangle(v10, v13);
    v38 = *&v108 * 0.5;
    v39 = &v13[*(v11 + 68)];
    outlined init with copy of RoundedRectangle(v10, v39);
    *(v39 + *(type metadata accessor for RoundedRectangle._Inset() + 20)) = v38;
    v40 = v39 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_StrokedShapeVyAA16RoundedRectangleV6_InsetVGMd, &_s7SwiftUI13_StrokedShapeVyAA16RoundedRectangleV6_InsetVGMR) + 36);
    v41 = v109;
    *v40 = v108;
    *(v40 + 16) = v41;
    *(v40 + 32) = v110;
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10_ShapeViewVyAA08_StrokedC0VyAA16RoundedRectangleV6_InsetVGAA012HierarchicalC5StyleVGMd, &_s7SwiftUI10_ShapeViewVyAA08_StrokedC0VyAA16RoundedRectangleV6_InsetVGAA012HierarchicalC5StyleVGMR);
    *(v39 + *(v42 + 52)) = v37;
    *(v39 + *(v42 + 56)) = 256;
    v43 = static Alignment.center.getter();
    v45 = v44;
    outlined destroy of RoundedRectangle(v10);
    v46 = (v39 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVyAA08_StrokedE0VyAA16RoundedRectangleV6_InsetVGAA012HierarchicalE5StyleVGAA19_BackgroundModifierVyAA05EmptyF0VGGMd, &_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVyAA08_StrokedE0VyAA16RoundedRectangleV6_InsetVGAA012HierarchicalE5StyleVGAA19_BackgroundModifierVyAA05EmptyF0VGGMR) + 36));
    *v46 = v43;
    v46[1] = v45;
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v47 = v89;
    outlined init with take of SubscriptionView<ObservableObjectPublisher, <<opaque return type of View.toolbarForegroundStyle<A>(_:for:)>>.0>(v13, v89, &_s7SwiftUI21StrokeBorderShapeViewVyAA16RoundedRectangleVAA012HierarchicalE5StyleVAA05EmptyF0VGMd, &_s7SwiftUI21StrokeBorderShapeViewVyAA16RoundedRectangleVAA012HierarchicalE5StyleVAA05EmptyF0VGMR);
    v48 = &v47[*(v90 + 36)];
    v49 = v116;
    v48[4] = v115;
    v48[5] = v49;
    v48[6] = v117;
    v50 = v112;
    *v48 = v111;
    v48[1] = v50;
    v51 = v114;
    v48[2] = v113;
    v48[3] = v51;
    v52 = static Alignment.center.getter();
    v54 = v53;
    v55 = &v16[*(v94 + 36)];
    outlined init with take of SubscriptionView<ObservableObjectPublisher, <<opaque return type of View.toolbarForegroundStyle<A>(_:for:)>>.0>(v47, v55, &_s7SwiftUI15ModifiedContentVyAA21StrokeBorderShapeViewVyAA16RoundedRectangleVAA012HierarchicalG5StyleVAA05EmptyH0VGAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA21StrokeBorderShapeViewVyAA16RoundedRectangleVAA012HierarchicalG5StyleVAA05EmptyH0VGAA16_FlexFrameLayoutVGMR);
    v56 = (v55 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_BackgroundModifierVyAA15ModifiedContentVyAA21StrokeBorderShapeViewVyAA16RoundedRectangleVAA012HierarchicalI5StyleVAA05EmptyJ0VGAA16_FlexFrameLayoutVGGMd, &_s7SwiftUI19_BackgroundModifierVyAA15ModifiedContentVyAA21StrokeBorderShapeViewVyAA16RoundedRectangleVAA012HierarchicalI5StyleVAA05EmptyJ0VGAA16_FlexFrameLayoutVGGMR) + 36));
    *v56 = v52;
    v56[1] = v54;
    v57 = v88;
    *v16 = v26;
    *(v16 + 1) = v57;
    v16[16] = v87;
    *(v16 + 5) = *&v107[3];
    *(v16 + 17) = *v107;
    *(v16 + 40) = 0u;
    *(v16 + 24) = 0u;
    v16[56] = 1;
    v58 = v91;
    outlined init with take of SubscriptionView<ObservableObjectPublisher, <<opaque return type of View.toolbarForegroundStyle<A>(_:for:)>>.0>(v16, v91, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB029EmbeddedGoalConfigurationViewVAA14_PaddingLayoutVGAA19_BackgroundModifierVyACyAA017StrokeBorderShapeI0VyAA16RoundedRectangleVAA012HierarchicalP5StyleVAA05EmptyI0VGAA010_FlexFrameK0VGGGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB029EmbeddedGoalConfigurationViewVAA14_PaddingLayoutVGAA19_BackgroundModifierVyACyAA017StrokeBorderShapeI0VyAA16RoundedRectangleVAA012HierarchicalP5StyleVAA05EmptyI0VGAA010_FlexFrameK0VGGGMR);
    outlined init with copy of ModifiedContent<SubscriptionView<ObservableObjectPublisher, <<opaque return type of View.toolbarForegroundStyle<A>(_:for:)>>.0>, WorkoutConfigurationToolbar>(v58, v20, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB029EmbeddedGoalConfigurationViewVAA14_PaddingLayoutVGAA19_BackgroundModifierVyACyAA017StrokeBorderShapeI0VyAA16RoundedRectangleVAA012HierarchicalP5StyleVAA05EmptyI0VGAA010_FlexFrameK0VGGGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB029EmbeddedGoalConfigurationViewVAA14_PaddingLayoutVGAA19_BackgroundModifierVyACyAA017StrokeBorderShapeI0VyAA16RoundedRectangleVAA012HierarchicalP5StyleVAA05EmptyI0VGAA010_FlexFrameK0VGGGMR);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB015GoalValueButtonVAA30_EnvironmentKeyWritingModifierVy0E4Core0E23ConfigurationDataSourceCSgGGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB015GoalValueButtonVAA30_EnvironmentKeyWritingModifierVy0E4Core0E23ConfigurationDataSourceCSgGGMR);
    lazy protocol witness table accessor for type ModifiedContent<GoalValueButton, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<EmbeddedGoalConfigurationView, _PaddingLayout>, _BackgroundModifier<ModifiedContent<StrokeBorderShapeView<RoundedRectangle, HierarchicalShapeStyle, EmptyView>, _FlexFrameLayout>>> and conformance <> ModifiedContent<A, B>();
    v59 = v93;
    _ConditionalContent<>.init(storage:)();
    outlined destroy of ModifiedContent<SubscriptionView<ObservableObjectPublisher, <<opaque return type of View.toolbarForegroundStyle<A>(_:for:)>>.0>, WorkoutConfigurationToolbar>(v58, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB029EmbeddedGoalConfigurationViewVAA14_PaddingLayoutVGAA19_BackgroundModifierVyACyAA017StrokeBorderShapeI0VyAA16RoundedRectangleVAA012HierarchicalP5StyleVAA05EmptyI0VGAA010_FlexFrameK0VGGGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB029EmbeddedGoalConfigurationViewVAA14_PaddingLayoutVGAA19_BackgroundModifierVyACyAA017StrokeBorderShapeI0VyAA16RoundedRectangleVAA012HierarchicalP5StyleVAA05EmptyI0VGAA010_FlexFrameK0VGGGMR);
LABEL_7:
    v74 = v59;
    v61 = v105;
    outlined init with take of SubscriptionView<ObservableObjectPublisher, <<opaque return type of View.toolbarForegroundStyle<A>(_:for:)>>.0>(v74, v105, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB015GoalValueButtonVAA30_EnvironmentKeyWritingModifierVy0F4Core0F23ConfigurationDataSourceCSgGGAEyAEyAF08EmbeddedgO4ViewVAA14_PaddingLayoutVGAA011_BackgroundM0VyAEyAA017StrokeBorderShapeS0VyAA16RoundedRectangleVAA012HierarchicalY5StyleVAA05EmptyS0VGAA010_FlexFrameU0VGGGGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB015GoalValueButtonVAA30_EnvironmentKeyWritingModifierVy0F4Core0F23ConfigurationDataSourceCSgGGAEyAEyAF08EmbeddedgO4ViewVAA14_PaddingLayoutVGAA011_BackgroundM0VyAEyAA017StrokeBorderShapeS0VyAA16RoundedRectangleVAA012HierarchicalY5StyleVAA05EmptyS0VGAA010_FlexFrameU0VGGGGMR);
    v60 = 0;
    goto LABEL_8;
  }

  _s7SwiftUI14ObservedObjectVy11WorkoutCore04GoalE13ConfigurationCGWOhTm_0(&v118, &_s7SwiftUI14ObservedObjectVy11WorkoutCore04GoalE13ConfigurationCGMd, &_s7SwiftUI14ObservedObjectVy11WorkoutCore04GoalE13ConfigurationCGMR);
  v62 = v104;
  v63 = v104[4];
  type metadata accessor for WorkoutConfigurationDataSource();
  lazy protocol witness table accessor for type GoalWorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type WorkoutConfigurationDataSource and conformance WorkoutConfigurationDataSource, MEMORY[0x277D7DC28], MEMORY[0x277D7DC20]);
  v64 = v63;
  v91 = EnvironmentObject.init()();
  v66 = v65;
  type metadata accessor for GoalWorkoutConfiguration();
  lazy protocol witness table accessor for type GoalWorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type GoalWorkoutConfiguration and conformance WorkoutConfiguration, MEMORY[0x277D7D928], MEMORY[0x277D7DA48]);
  v67 = ObservedObject.init(wrappedValue:)();
  v69 = *v62;
  if (v69)
  {
    v70 = v67;
    v71 = v68;
    v72 = v69;
    v73 = static ObservableObject.environmentStore.getter();
    *v20 = v91;
    v20[1] = v66;
    v20[2] = v70;
    v20[3] = v71;
    v20[4] = v64;
    v20[5] = v73;
    v20[6] = v69;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB015GoalValueButtonVAA30_EnvironmentKeyWritingModifierVy0E4Core0E23ConfigurationDataSourceCSgGGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB015GoalValueButtonVAA30_EnvironmentKeyWritingModifierVy0E4Core0E23ConfigurationDataSourceCSgGGMR);
    lazy protocol witness table accessor for type ModifiedContent<GoalValueButton, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<EmbeddedGoalConfigurationView, _PaddingLayout>, _BackgroundModifier<ModifiedContent<StrokeBorderShapeView<RoundedRectangle, HierarchicalShapeStyle, EmptyView>, _FlexFrameLayout>>> and conformance <> ModifiedContent<A, B>();
    v59 = v93;
    _ConditionalContent<>.init(storage:)();
    goto LABEL_7;
  }

  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t closure #1 in closure #1 in closure #3 in GoalWorkoutConfigurationView.body.getter@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v118 = a2;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGMR);
  MEMORY[0x28223BE20](v103);
  v107 = &v100 - v3;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGMR);
  MEMORY[0x28223BE20](v106);
  v112 = &v100 - v4;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGMR);
  MEMORY[0x28223BE20](v110);
  v111 = &v100 - v5;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGGMR);
  MEMORY[0x28223BE20](v109);
  v108 = &v100 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGG07WorkoutB015BodyHyphenationVGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGG07WorkoutB015BodyHyphenationVGMR);
  v119 = *(v7 - 8);
  v120 = v7;
  MEMORY[0x28223BE20](v7);
  v105 = &v100 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v104 = &v100 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGG07WorkoutB015BodyHyphenationVGSgMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGG07WorkoutB015BodyHyphenationVGSgMR);
  MEMORY[0x28223BE20](v11 - 8);
  v121 = &v100 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v100 - v14;
  v16 = type metadata accessor for DeleteButton(0);
  v115 = *(v16 - 1);
  MEMORY[0x28223BE20](v16);
  v18 = (&v100 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI12DeleteButtonVSgMd, &_s9WorkoutUI12DeleteButtonVSgMR);
  MEMORY[0x28223BE20](v19 - 8);
  v141 = &v100 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v135 = a1;
  v136 = &v100 - v22;
  v182[0] = *(a1 + 1);
  v23 = *(&v182[0] + 1);
  outlined init with copy of ObservedObject<GoalWorkoutConfiguration>(v182, &v151, &_s7SwiftUI14ObservedObjectVy11WorkoutCore04GoalE13ConfigurationCGMd, &_s7SwiftUI14ObservedObjectVy11WorkoutCore04GoalE13ConfigurationCGMR);
  outlined init with copy of ObservedObject<GoalWorkoutConfiguration>(v182, &v151, &_s7SwiftUI14ObservedObjectVy11WorkoutCore04GoalE13ConfigurationCGMd, &_s7SwiftUI14ObservedObjectVy11WorkoutCore04GoalE13ConfigurationCGMR);
  type metadata accessor for ConfigurationNavigationModel(0);
  lazy protocol witness table accessor for type GoalWorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel, &protocol conformance descriptor for ConfigurationNavigationModel);
  v24 = v23;
  v25 = EnvironmentObject.init()();
  v134 = v26;
  type metadata accessor for WorkoutConfigurationDataSource();
  lazy protocol witness table accessor for type GoalWorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type WorkoutConfigurationDataSource and conformance WorkoutConfigurationDataSource, MEMORY[0x277D7DC28], MEMORY[0x277D7DC20]);
  v27 = EnvironmentObject.init()();
  v132 = v28;
  v133 = v27;
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v29 = WorkoutUIBundle.super.isa;
  v183._object = 0xE000000000000000;
  v30.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v30.value._object = 0xEB00000000656C62;
  v31._object = 0x800000020CB93C90;
  v31._countAndFlagsBits = 0xD00000000000001ALL;
  v32._countAndFlagsBits = 0;
  v32._object = 0xE000000000000000;
  v183._countAndFlagsBits = 0;
  v33 = NSLocalizedString(_:tableName:bundle:value:comment:)(v31, v30, v29, v32, v183);
  object = v33._object;
  countAndFlagsBits = v33._countAndFlagsBits;

  LOBYTE(v142) = 0;
  State.init(wrappedValue:)();
  v128 = v151;
  v129 = v152;
  specialized MirroredStartProvider.supportsMirroredStart.getter();
  v35 = 15;
  if (v34)
  {
    v35 = 19;
  }

  *&v142 = v35;
  type metadata accessor for NLWorkoutStartSource(0);
  State.init(wrappedValue:)();
  v126 = v152;
  v127 = v151;
  v172 = 0;
  if ((WorkoutConfiguration.isOpenGoal.getter() & 1) != 0 || !dispatch thunk of WorkoutConfiguration.externalProvider.getter())
  {
    _s7SwiftUI14ObservedObjectVy11WorkoutCore04GoalE13ConfigurationCGWOhTm_0(v182, &_s7SwiftUI14ObservedObjectVy11WorkoutCore04GoalE13ConfigurationCGMd, &_s7SwiftUI14ObservedObjectVy11WorkoutCore04GoalE13ConfigurationCGMR);
    v139 = 0;
    v140 = 0;
    v124 = 0;
    v125 = 0;
    v137 = 0;
    v138 = 0;
  }

  else
  {

    if (!*v135)
    {
      result = EnvironmentObject.error()();
      __break(1u);
      return result;
    }

    v36 = *v135;
    v37 = WorkoutConfigurationDataSource.isConfigurationStored(_:)();

    v140 = EnvironmentObject.init()();
    v125 = v38;
    LOBYTE(v142) = 0;
    State.init(wrappedValue:)();
    v124 = v151;
    v138 = v37 & 1;
    v139 = v152;
    v137 = v24;
  }

  if (dispatch thunk of WorkoutConfiguration.externalProvider.getter())
  {
    _s7SwiftUI14ObservedObjectVy11WorkoutCore04GoalE13ConfigurationCGWOhTm_0(v182, &_s7SwiftUI14ObservedObjectVy11WorkoutCore04GoalE13ConfigurationCGMd, &_s7SwiftUI14ObservedObjectVy11WorkoutCore04GoalE13ConfigurationCGMR);

    v122 = 0;
    v123 = 0;
    v117 = 0;
    v116 = 0;
  }

  else
  {
    v135 = v135[4];
    type metadata accessor for WorkoutConfiguration();
    lazy protocol witness table accessor for type GoalWorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type WorkoutConfiguration and conformance WorkoutConfiguration, MEMORY[0x277D7DA50], MEMORY[0x277D7DA48]);
    v117 = v135;
    v39 = ObservedObject.init(wrappedValue:)();
    v122 = v40;
    v123 = v39;
    v116 = 256;
  }

  if (dispatch thunk of WorkoutConfiguration.externalProvider.getter())
  {
    _s7SwiftUI14ObservedObjectVy11WorkoutCore04GoalE13ConfigurationCGWOhTm_0(v182, &_s7SwiftUI14ObservedObjectVy11WorkoutCore04GoalE13ConfigurationCGMd, &_s7SwiftUI14ObservedObjectVy11WorkoutCore04GoalE13ConfigurationCGMR);

    v41 = 1;
    v42 = v136;
  }

  else
  {
    *v18 = EnvironmentObject.init()();
    v18[1] = v43;
    v44 = v16[5];
    *(v18 + v44) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMR);
    swift_storeEnumTagMultiPayload();
    v45 = v18 + v16[7];
    LOBYTE(v142) = 0;
    State.init(wrappedValue:)();
    v46 = v152;
    *v45 = v151;
    *(v45 + 1) = v46;
    *(v18 + v16[6]) = v24;
    v47 = v18;
    v42 = v136;
    outlined init with take of DeleteButton(v47, v136);
    v41 = 0;
  }

  v135 = v25;
  (*(v115 + 56))(v42, v41, 1, v16);
  if ((WorkoutConfiguration.isOpenGoal.getter() & 1) != 0 || !dispatch thunk of WorkoutConfiguration.externalProvider.getter())
  {
    (*(v119 + 56))(v15, 1, 1, v120);
  }

  else
  {

    v151 = WorkoutConfiguration.saveConfigurationFooterText.getter();
    v152 = v48;
    lazy protocol witness table accessor for type String and conformance String();
    v101 = Text.init<A>(_:)();
    v50 = v49;
    v52 = v51;
    v115 = v53;
    v102 = static Color.secondary.getter();
    v54 = v24;
    KeyPath = swift_getKeyPath();
    v56 = swift_getKeyPath();
    v52 &= 1u;
    LOBYTE(v142) = v52;
    v57 = v107;
    v58 = v15;
    v59 = &v107[*(v103 + 36)];
    v60 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4TextV4CaseOSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4TextV4CaseOSgGMR) + 28);
    v61 = type metadata accessor for Text.Case();
    (*(*(v61 - 8) + 56))(v59 + v60, 1, 1, v61);
    *v59 = swift_getKeyPath();
    *v57 = v101;
    *(v57 + 8) = v50;
    v42 = v136;
    *(v57 + 16) = v52;
    *(v57 + 17) = v151;
    *(v57 + 20) = *(&v151 + 3);
    *(v57 + 24) = v115;
    *(v57 + 32) = KeyPath;
    v24 = v54;
    *(v57 + 40) = v102;
    *(v57 + 48) = v56;
    *(v57 + 56) = 0;
    static Alignment.leading.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v62 = v112;
    outlined init with take of ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>(v57, v112, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGMR);
    v63 = (v62 + *(v106 + 36));
    v64 = v180;
    v63[4] = v179;
    v63[5] = v64;
    v63[6] = v181;
    v65 = v176;
    *v63 = v175;
    v63[1] = v65;
    v66 = v178;
    v63[2] = v177;
    v63[3] = v66;
    v67 = static Font.caption2.getter();
    v68 = swift_getKeyPath();
    v69 = v62;
    v70 = v111;
    outlined init with take of ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>(v69, v111, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGMR);
    v71 = (v70 + *(v110 + 36));
    *v71 = v68;
    v71[1] = v67;
    v72 = swift_getKeyPath();
    v73 = v108;
    outlined init with take of ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>(v70, v108, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGMR);
    v74 = v73 + *(v109 + 36);
    *v74 = v72;
    *(v74 + 8) = 0;
    *(v74 + 16) = 1;
    v75 = v105;
    outlined init with take of ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>(v73, v105, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGGMR);
    v76 = v75;
    v77 = v104;
    outlined init with take of ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>(v76, v104, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGG07WorkoutB015BodyHyphenationVGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGG07WorkoutB015BodyHyphenationVGMR);
    v15 = v58;
    outlined init with take of ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>(v77, v58, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGG07WorkoutB015BodyHyphenationVGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGG07WorkoutB015BodyHyphenationVGMR);
    (*(v119 + 56))(v58, 0, 1, v120);
  }

  v113 = v24;
  v114 = v15;
  outlined init with copy of ObservedObject<GoalWorkoutConfiguration>(v42, v141, &_s9WorkoutUI12DeleteButtonVSgMd, &_s9WorkoutUI12DeleteButtonVSgMR);
  v78 = v121;
  outlined init with copy of ObservedObject<GoalWorkoutConfiguration>(v15, v121, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGG07WorkoutB015BodyHyphenationVGSgMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGG07WorkoutB015BodyHyphenationVGSgMR);
  *&v142 = v135;
  *(&v142 + 1) = v134;
  *&v143 = v133;
  *(&v143 + 1) = v132;
  LOBYTE(v144) = 0;
  *(&v144 + 1) = *v174;
  DWORD1(v144) = *&v174[3];
  *(&v144 + 1) = countAndFlagsBits;
  *&v145 = object;
  *(&v145 + 1) = v24;
  LOBYTE(v146) = v128;
  *(&v146 + 1) = *v173;
  DWORD1(v146) = *&v173[3];
  *(&v146 + 1) = v129;
  *&v147 = v127;
  v120 = implicit closure #2 in implicit closure #1 in variable initialization expression of StartWorkoutButton._devicesProvider;
  *(&v147 + 1) = v126;
  *&v148 = implicit closure #2 in implicit closure #1 in variable initialization expression of StartWorkoutButton._devicesProvider;
  *(&v148 + 1) = 0;
  LOBYTE(v149) = 0;
  *(&v149 + 1) = *v171;
  DWORD1(v149) = *&v171[3];
  *(&v149 + 1) = 0;
  v150 = 0;
  v79 = v142;
  v80 = v143;
  v81 = v147;
  v82 = v118;
  *(v118 + 64) = v146;
  *(v82 + 80) = v81;
  v83 = v145;
  *(v82 + 32) = v144;
  *(v82 + 48) = v83;
  *v82 = v79;
  *(v82 + 16) = v80;
  v84 = v149;
  *(v82 + 96) = v148;
  *(v82 + 112) = v84;
  v85 = v139;
  v86 = v140;
  *(v82 + 128) = 0;
  *(v82 + 136) = v86;
  v139 = v85;
  v140 = v86;
  v87 = v124;
  v88 = v137;
  v89 = v138;
  *(v82 + 144) = v125;
  *(v82 + 152) = v88;
  v137 = v88;
  v138 = v89;
  *(v82 + 160) = v89;
  *(v82 + 168) = 0;
  *(v82 + 176) = v87;
  *(v82 + 184) = v85;
  v90 = v122;
  *(v82 + 192) = v123;
  *(v82 + 200) = v90;
  v91 = v117;
  *(v82 + 208) = v117;
  *(v82 + 216) = v116;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI05StartA6ButtonV_AA08SaveCopyD0VSgAA05Sharea13ConfigurationD0VSgAA06DeleteD0VSg05SwiftB015ModifiedContentVyAOyAOyAOyAOyAOyAOyAM4TextVAM30_EnvironmentKeyWritingModifierVyAM5ColorVSgGGASyAM0M9AlignmentOGGASyAQ4CaseOSgGGAM16_FlexFrameLayoutVGASyAM4FontVSgGGASySiSgGGAA15BodyHyphenationVGSgtMd, &_s9WorkoutUI05StartA6ButtonV_AA08SaveCopyD0VSgAA05Sharea13ConfigurationD0VSgAA06DeleteD0VSg05SwiftB015ModifiedContentVyAOyAOyAOyAOyAOyAOyAM4TextVAM30_EnvironmentKeyWritingModifierVyAM5ColorVSgGGASyAM0M9AlignmentOGGASyAQ4CaseOSgGGAM16_FlexFrameLayoutVGASyAM4FontVSgGGASySiSgGGAA15BodyHyphenationVGSgtMR);
  outlined init with copy of ObservedObject<GoalWorkoutConfiguration>(v141, v82 + *(v92 + 80), &_s9WorkoutUI12DeleteButtonVSgMd, &_s9WorkoutUI12DeleteButtonVSgMR);
  outlined init with copy of ObservedObject<GoalWorkoutConfiguration>(v78, v82 + *(v92 + 96), &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGG07WorkoutB015BodyHyphenationVGSgMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGG07WorkoutB015BodyHyphenationVGSgMR);
  outlined init with copy of StartWorkoutButton(&v142, &v151);
  v93 = v86;
  v94 = v125;
  v95 = v88;
  v96 = v124;
  outlined copy of SaveCopyButton?(v93, v125, v95, v89, 0, v124, v85);
  v98 = v122;
  v97 = v123;
  outlined copy of ShareWorkoutConfigurationButton?(v123, v122, v91);
  _s7SwiftUI14ObservedObjectVy11WorkoutCore04GoalE13ConfigurationCGWOhTm_0(v114, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGG07WorkoutB015BodyHyphenationVGSgMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGG07WorkoutB015BodyHyphenationVGSgMR);
  _s7SwiftUI14ObservedObjectVy11WorkoutCore04GoalE13ConfigurationCGWOhTm_0(v136, &_s9WorkoutUI12DeleteButtonVSgMd, &_s9WorkoutUI12DeleteButtonVSgMR);
  _s7SwiftUI14ObservedObjectVy11WorkoutCore04GoalE13ConfigurationCGWOhTm_0(v78, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGG07WorkoutB015BodyHyphenationVGSgMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGG07WorkoutB015BodyHyphenationVGSgMR);
  _s7SwiftUI14ObservedObjectVy11WorkoutCore04GoalE13ConfigurationCGWOhTm_0(v141, &_s9WorkoutUI12DeleteButtonVSgMd, &_s9WorkoutUI12DeleteButtonVSgMR);
  outlined consume of ShareWorkoutConfigurationButton?(v97, v98, v91);
  outlined consume of SaveCopyButton?(v140, v94, v137, v138, 0, v96, v139);
  v151 = v135;
  v152 = v134;
  v153 = v133;
  v154 = v132;
  v155 = 0;
  *v156 = *v174;
  *&v156[3] = *&v174[3];
  v157 = countAndFlagsBits;
  v158 = object;
  v159 = v113;
  v160 = v128;
  *v161 = *v173;
  *&v161[3] = *&v173[3];
  v162 = v129;
  v163 = v127;
  v164 = v126;
  v165 = v120;
  v166 = 0;
  v167 = 0;
  *v168 = *v171;
  *&v168[3] = *&v171[3];
  v169 = 0;
  v170 = 0;
  return outlined destroy of StartWorkoutButton(&v151);
}

void *closure #2 in GoalWorkoutConfigurationView.body.getter(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
  result = State.wrappedValue.getter();
  if ((v3 & 1) == 0)
  {
    return State.wrappedValue.setter();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.contentMargins(_:_:for:)>>.0, WorkoutConfigurationToolbar> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.contentMargins(_:_:for:)>>.0, WorkoutConfigurationToolbar> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.contentMargins(_:_:for:)>>.0, WorkoutConfigurationToolbar> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE14contentMargins__3forQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA0D15MarginPlacementVtFQOyAA012SubscriptionE0Vy7Combine25ObservableObjectPublisherCAA4ListVys5NeverOAA05TupleE0VyACyAA4TextV07WorkoutB005ClearU5Style33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_ACyACyACyAA6VStackVyA0_yAA012_ConditionalD0VyACyACyACyACyACyACyA2_AA30_EnvironmentKeyWritingModifierVyAA0X9AlignmentOGGA13_yA2_4CaseOSgGGAA16_FlexFrameLayoutVGA13_yAA4FontVSgGGA13_ySiSgGGA3_15BodyHyphenationVGSgA11_yA36_A37_GGSg_A37_tGGAA21_TraitWritingModifierVyAA0U21RowBackgroundTraitKeyVGGA44_yAA0U17RowInsetsTraitKeyVGGA3_04HideU12RowSeparatorA5_LLVGSgA11_yAA7SectionVyAA05EmptyE0VA3_15GoalValuePickerVA60_GACyACyACyACyA3_025EmbeddedGoalConfigurationE0VAA14_PaddingLayoutVGAA19_BackgroundModifierVyACyAA017StrokeBorderShapeE0VyAA16RoundedRectangleVAA22HierarchicalShapeStyleVA60_GA24_GGGA47_GA51_GGSgA3_05StartY6ButtonVACyACyACyA3_14SaveCopyButtonVA51_GA54_GA13_yAA11ControlSizeOGGSgACyACyACyACyACyACyACyACyACyA2_A13_yAA5ColorVSgGGA16_GA21_GA24_GA29_GA32_GA35_GA51_GA47_GSgtGGG_Qo_A3_0Y20ConfigurationToolbarVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE14contentMargins__3forQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA0D15MarginPlacementVtFQOyAA012SubscriptionE0Vy7Combine25ObservableObjectPublisherCAA4ListVys5NeverOAA05TupleE0VyACyAA4TextV07WorkoutB005ClearU5Style33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_ACyACyACyAA6VStackVyA0_yAA012_ConditionalD0VyACyACyACyACyACyACyA2_AA30_EnvironmentKeyWritingModifierVyAA0X9AlignmentOGGA13_yA2_4CaseOSgGGAA16_FlexFrameLayoutVGA13_yAA4FontVSgGGA13_ySiSgGGA3_15BodyHyphenationVGSgA11_yA36_A37_GGSg_A37_tGGAA21_TraitWritingModifierVyAA0U21RowBackgroundTraitKeyVGGA44_yAA0U17RowInsetsTraitKeyVGGA3_04HideU12RowSeparatorA5_LLVGSgA11_yAA7SectionVyAA05EmptyE0VA3_15GoalValuePickerVA60_GACyACyACyACyA3_025EmbeddedGoalConfigurationE0VAA14_PaddingLayoutVGAA19_BackgroundModifierVyACyAA017StrokeBorderShapeE0VyAA16RoundedRectangleVAA22HierarchicalShapeStyleVA60_GA24_GGGA47_GA51_GGSgA3_05StartY6ButtonVACyACyACyA3_14SaveCopyButtonVA51_GA54_GA13_yAA11ControlSizeOGGSgACyACyACyACyACyACyACyACyACyA2_A13_yAA5ColorVSgGGA16_GA21_GA24_GA29_GA32_GA35_GA51_GA47_GSgtGGG_Qo_A3_0Y20ConfigurationToolbarVGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI16SubscriptionViewVy7Combine25ObservableObjectPublisherCAA4ListVys5NeverOAA05TupleD0VyAA15ModifiedContentVyAA4TextV07WorkoutB005ClearI5Style33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_ANyANyANyAA6VStackVyALyAA012_ConditionalM0VyANyANyANyANyANyANyApA30_EnvironmentKeyWritingModifierVyAA0N9AlignmentOGGA_yAP4CaseOSgGGAA16_FlexFrameLayoutVGA_yAA4FontVSgGGA_ySiSgGGAQ15BodyHyphenationVGSgAYyA22_A23_GGSg_A23_tGGAA21_TraitWritingModifierVyAA0I21RowBackgroundTraitKeyVGGA30_yAA0I17RowInsetsTraitKeyVGGAQ04HideI12RowSeparatorASLLVGSgAYyAA7SectionVyAA05EmptyD0VAQ15GoalValuePickerVA46_GANyANyANyANyAQ025EmbeddedGoalConfigurationD0VAA14_PaddingLayoutVGAA19_BackgroundModifierVyANyAA017StrokeBorderShapeD0VyAA16RoundedRectangleVAA017HierarchicalShapeQ0VA46_GA10_GGGA33_GA37_GGSgAQ05StartO6ButtonVANyANyANyAQ14SaveCopyButtonVA37_GA40_GA_yAA11ControlSizeOGGSgANyANyANyANyANyANyANyANyANyAPA_yAA5ColorVSgGGA2_GA7_GA10_GA15_GA18_GA21_GA37_GA33_GSgtGGGMd, &_s7SwiftUI16SubscriptionViewVy7Combine25ObservableObjectPublisherCAA4ListVys5NeverOAA05TupleD0VyAA15ModifiedContentVyAA4TextV07WorkoutB005ClearI5Style33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_ANyANyANyAA6VStackVyALyAA012_ConditionalM0VyANyANyANyANyANyANyApA30_EnvironmentKeyWritingModifierVyAA0N9AlignmentOGGA_yAP4CaseOSgGGAA16_FlexFrameLayoutVGA_yAA4FontVSgGGA_ySiSgGGAQ15BodyHyphenationVGSgAYyA22_A23_GGSg_A23_tGGAA21_TraitWritingModifierVyAA0I21RowBackgroundTraitKeyVGGA30_yAA0I17RowInsetsTraitKeyVGGAQ04HideI12RowSeparatorASLLVGSgAYyAA7SectionVyAA05EmptyD0VAQ15GoalValuePickerVA46_GANyANyANyANyAQ025EmbeddedGoalConfigurationD0VAA14_PaddingLayoutVGAA19_BackgroundModifierVyANyAA017StrokeBorderShapeD0VyAA16RoundedRectangleVAA017HierarchicalShapeQ0VA46_GA10_GGGA33_GA37_GGSgAQ05StartO6ButtonVANyANyANyAQ14SaveCopyButtonVA37_GA40_GA_yAA11ControlSizeOGGSgANyANyANyANyANyANyANyANyANyAPA_yAA5ColorVSgGGA2_GA7_GA10_GA15_GA18_GA21_GA37_GA33_GSgtGGGMR);
    lazy protocol witness table accessor for type TupleView<((<<opaque return type of View.scenePadding(_:)>>.0)?, ModifiedContent<VStack<TupleView<(_ConditionalContent<ModifiedContent<GoalValueButton, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, ModifiedContent<ModifiedContent<EmbeddedGoalConfigurationView, _PaddingLayout>, _BackgroundModifier<ModifiedContent<StrokeBorderShapeView<RoundedRectangle, HierarchicalShapeStyle, EmptyView>, _FlexFrameLayout>>>>?, <<opaque return type of View.scenePadding(_:)>>.0)>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>)> and conformance TupleView<A>( &lazy protocol witness table cache variable for type SubscriptionView<ObservableObjectPublisher, List<Never, TupleView<(ModifiedContent<Text, ClearListStyle>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>?, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Tex,  &_s7SwiftUI16SubscriptionViewVy7Combine25ObservableObjectPublisherCAA4ListVys5NeverOAA05TupleD0VyAA15ModifiedContentVyAA4TextV07WorkoutB005ClearI5Style33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_ANyANyANyAA6VStackVyALyAA012_ConditionalM0VyANyANyANyANyANyANyApA30_EnvironmentKeyWritingModifierVyAA0N9AlignmentOGGA_yAP4CaseOSgGGAA16_FlexFrameLayoutVGA_yAA4FontVSgGGA_ySiSgGGAQ15BodyHyphenationVGSgAYyA22_A23_GGSg_A23_tGGAA21_TraitWritingModifierVyAA0I21RowBackgroundTraitKeyVGGA30_yAA0I17RowInsetsTraitKeyVGGAQ04HideI12RowSeparatorASLLVGSgAYyAA7SectionVyAA05EmptyD0VAQ15GoalValuePickerVA46_GANyANyANyANyAQ025EmbeddedGoalConfigurationD0VAA14_PaddingLayoutVGAA19_BackgroundModifierVyANyAA017StrokeBorderShapeD0VyAA16RoundedRectangleVAA017HierarchicalShapeQ0VA46_GA10_GGGA33_GA37_GGSgAQ05StartO6ButtonVANyANyANyAQ14SaveCopyButtonVA37_GA40_GA_yAA11ControlSizeOGGSgANyANyANyANyANyANyANyANyANyAPA_yAA5ColorVSgGGA2_GA7_GA10_GA15_GA18_GA21_GA37_GA33_GSgtGGGMd,  &_s7SwiftUI16SubscriptionViewVy7Combine25ObservableObjectPublisherCAA4ListVys5NeverOAA05TupleD0VyAA15ModifiedContentVyAA4TextV07WorkoutB005ClearI5Style33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_ANyANyANyAA6VStackVyALyAA012_ConditionalM0VyANyANyANyANyANyANyApA30_EnvironmentKeyWritingModifierVyAA0N9AlignmentOGGA_yAP4CaseOSgGGAA16_FlexFrameLayoutVGA_yAA4FontVSgGGA_ySiSgGGAQ15BodyHyphenationVGSgAYyA22_A23_GGSg_A23_tGGAA21_TraitWritingModifierVyAA0I21RowBackgroundTraitKeyVGGA30_yAA0I17RowInsetsTraitKeyVGGAQ04HideI12RowSeparatorASLLVGSgAYyAA7SectionVyAA05EmptyD0VAQ15GoalValuePickerVA46_GANyANyANyANyAQ025EmbeddedGoalConfigurationD0VAA14_PaddingLayoutVGAA19_BackgroundModifierVyANyAA017StrokeBorderShapeD0VyAA16RoundedRectangleVAA017HierarchicalShapeQ0VA46_GA10_GGGA33_GA37_GGSgAQ05StartO6ButtonVANyANyANyAQ14SaveCopyButtonVA37_GA40_GA_yAA11ControlSizeOGGSgANyANyANyANyANyANyANyANyANyAPA_yAA5ColorVSgGGA2_GA7_GA10_GA15_GA18_GA21_GA37_GA33_GSgtGGGMR,  MEMORY[0x277CDDB50]);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type GoalWorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type WorkoutConfigurationToolbar and conformance WorkoutConfigurationToolbar, type metadata accessor for WorkoutConfigurationToolbar, &protocol conformance descriptor for WorkoutConfigurationToolbar);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.contentMargins(_:_:for:)>>.0, WorkoutConfigurationToolbar> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.contentMargins(_:_:for:)>>.0, WorkoutConfigurationToolbar> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.contentMargins(_:_:for:)>>.0, WorkoutConfigurationToolbar> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE14contentMargins__3forQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA0D15MarginPlacementVtFQOyAA012SubscriptionE0Vy7Combine25ObservableObjectPublisherCAA4ListVys5NeverOAA05TupleE0VyACyAA4TextV07WorkoutB005ClearU5Style33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_ACyACyACyAA6VStackVyA0_yAA012_ConditionalD0VyACyACyACyACyACyACyA2_AA30_EnvironmentKeyWritingModifierVyAA0X9AlignmentOGGA13_yA2_4CaseOSgGGAA16_FlexFrameLayoutVGA13_yAA4FontVSgGGA13_ySiSgGGA3_15BodyHyphenationVGSgA11_yA36_A37_GGSg_A37_tGGAA21_TraitWritingModifierVyAA0U21RowBackgroundTraitKeyVGGA44_yAA0U17RowInsetsTraitKeyVGGA3_04HideU12RowSeparatorA5_LLVGSgA11_yAeAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAeAEA57_A58_A59__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA7SectionVyAA05EmptyE0VA0_yA3_24PacerDistanceValuePickerV_A3_24PacerDurationValuePickerVA11_yA2_ACyA3_023AlignedLeadingAccessorydE0VyAA5ImageVA0_yA2__AA6SpacerVA2_tGGAA24_ForegroundStyleModifierVyAA5ColorVGGGtGA63_G_SbQo__SbQo_ACyACyACyACyA3_026EmbeddedPacerConfigurationE0VAA14_PaddingLayoutVGAA19_BackgroundModifierVyACyAA017StrokeBorderShapeE0VyAA16RoundedRectangleVAA22HierarchicalShapeStyleVA63_GA24_GGGA47_GA51_GGA3_05StartY6ButtonVACyACyACyA3_14SaveCopyButtonVA51_GA54_GA13_yAA11ControlSizeOGGSgACyACyACyACyACyACyACyACyACyA2_A13_yA79_SgGGA16_GA21_GA24_GA29_GA32_GA35_GA51_GA47_GSgtGGG_Qo_A3_0Y20ConfigurationToolbarVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE14contentMargins__3forQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA0D15MarginPlacementVtFQOyAA012SubscriptionE0Vy7Combine25ObservableObjectPublisherCAA4ListVys5NeverOAA05TupleE0VyACyAA4TextV07WorkoutB005ClearU5Style33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_ACyACyACyAA6VStackVyA0_yAA012_ConditionalD0VyACyACyACyACyACyACyA2_AA30_EnvironmentKeyWritingModifierVyAA0X9AlignmentOGGA13_yA2_4CaseOSgGGAA16_FlexFrameLayoutVGA13_yAA4FontVSgGGA13_ySiSgGGA3_15BodyHyphenationVGSgA11_yA36_A37_GGSg_A37_tGGAA21_TraitWritingModifierVyAA0U21RowBackgroundTraitKeyVGGA44_yAA0U17RowInsetsTraitKeyVGGA3_04HideU12RowSeparatorA5_LLVGSgA11_yAeAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAeAEA57_A58_A59__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA7SectionVyAA05EmptyE0VA0_yA3_24PacerDistanceValuePickerV_A3_24PacerDurationValuePickerVA11_yA2_ACyA3_023AlignedLeadingAccessorydE0VyAA5ImageVA0_yA2__AA6SpacerVA2_tGGAA24_ForegroundStyleModifierVyAA5ColorVGGGtGA63_G_SbQo__SbQo_ACyACyACyACyA3_026EmbeddedPacerConfigurationE0VAA14_PaddingLayoutVGAA19_BackgroundModifierVyACyAA017StrokeBorderShapeE0VyAA16RoundedRectangleVAA22HierarchicalShapeStyleVA63_GA24_GGGA47_GA51_GGA3_05StartY6ButtonVACyACyACyA3_14SaveCopyButtonVA51_GA54_GA13_yAA11ControlSizeOGGSgACyACyACyACyACyACyACyACyACyA2_A13_yA79_SgGGA16_GA21_GA24_GA29_GA32_GA35_GA51_GA47_GSgtGGG_Qo_A3_0Y20ConfigurationToolbarVGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI16SubscriptionViewVy7Combine25ObservableObjectPublisherCAA4ListVys5NeverOAA05TupleD0VyAA15ModifiedContentVyAA4TextV07WorkoutB005ClearI5Style33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_ANyANyANyAA6VStackVyALyAA012_ConditionalM0VyANyANyANyANyANyANyApA30_EnvironmentKeyWritingModifierVyAA0N9AlignmentOGGA_yAP4CaseOSgGGAA16_FlexFrameLayoutVGA_yAA4FontVSgGGA_ySiSgGGAQ15BodyHyphenationVGSgAYyA22_A23_GGSg_A23_tGGAA21_TraitWritingModifierVyAA0I21RowBackgroundTraitKeyVGGA30_yAA0I17RowInsetsTraitKeyVGGAQ04HideI12RowSeparatorASLLVGSgAYyAA0D0PAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyA44_AAEA45_A46_A47__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA7SectionVyAA05EmptyD0VALyAQ24PacerDistanceValuePickerV_AQ24PacerDurationValuePickerVAYyApNyAQ023AlignedLeadingAccessorymD0VyAA5ImageVALyAP_AA6SpacerVAPtGGAA011_ForegroundQ8ModifierVyAA5ColorVGGGtGA51_G_SbQo__SbQo_ANyANyANyANyAQ026EmbeddedPacerConfigurationD0VAA14_PaddingLayoutVGAA19_BackgroundModifierVyANyAA017StrokeBorderShapeD0VyAA16RoundedRectangleVAA017HierarchicalShapeQ0VA51_GA10_GGGA33_GA37_GGAQ05StartO6ButtonVANyANyANyAQ14SaveCopyButtonVA37_GA40_GA_yAA11ControlSizeOGGSgANyANyANyANyANyANyANyANyANyAPA_yA67_SgGGA2_GA7_GA10_GA15_GA18_GA21_GA37_GA33_GSgtGGGMd, &_s7SwiftUI16SubscriptionViewVy7Combine25ObservableObjectPublisherCAA4ListVys5NeverOAA05TupleD0VyAA15ModifiedContentVyAA4TextV07WorkoutB005ClearI5Style33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_ANyANyANyAA6VStackVyALyAA012_ConditionalM0VyANyANyANyANyANyANyApA30_EnvironmentKeyWritingModifierVyAA0N9AlignmentOGGA_yAP4CaseOSgGGAA16_FlexFrameLayoutVGA_yAA4FontVSgGGA_ySiSgGGAQ15BodyHyphenationVGSgAYyA22_A23_GGSg_A23_tGGAA21_TraitWritingModifierVyAA0I21RowBackgroundTraitKeyVGGA30_yAA0I17RowInsetsTraitKeyVGGAQ04HideI12RowSeparatorASLLVGSgAYyAA0D0PAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyA44_AAEA45_A46_A47__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA7SectionVyAA05EmptyD0VALyAQ24PacerDistanceValuePickerV_AQ24PacerDurationValuePickerVAYyApNyAQ023AlignedLeadingAccessorymD0VyAA5ImageVALyAP_AA6SpacerVAPtGGAA011_ForegroundQ8ModifierVyAA5ColorVGGGtGA51_G_SbQo__SbQo_ANyANyANyANyAQ026EmbeddedPacerConfigurationD0VAA14_PaddingLayoutVGAA19_BackgroundModifierVyANyAA017StrokeBorderShapeD0VyAA16RoundedRectangleVAA017HierarchicalShapeQ0VA51_GA10_GGGA33_GA37_GGAQ05StartO6ButtonVANyANyANyAQ14SaveCopyButtonVA37_GA40_GA_yAA11ControlSizeOGGSgANyANyANyANyANyANyANyANyANyAPA_yA67_SgGGA2_GA7_GA10_GA15_GA18_GA21_GA37_GA33_GSgtGGGMR);
    lazy protocol witness table accessor for type TupleView<(Section<EmptyView, ModifiedContent<ModifiedContent<VStack<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>?, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWriti( &lazy protocol witness table cache variable for type SubscriptionView<ObservableObjectPublisher, List<Never, TupleView<(ModifiedContent<Text, ClearListStyle>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>?, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Tex,  &_s7SwiftUI16SubscriptionViewVy7Combine25ObservableObjectPublisherCAA4ListVys5NeverOAA05TupleD0VyAA15ModifiedContentVyAA4TextV07WorkoutB005ClearI5Style33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_ANyANyANyAA6VStackVyALyAA012_ConditionalM0VyANyANyANyANyANyANyApA30_EnvironmentKeyWritingModifierVyAA0N9AlignmentOGGA_yAP4CaseOSgGGAA16_FlexFrameLayoutVGA_yAA4FontVSgGGA_ySiSgGGAQ15BodyHyphenationVGSgAYyA22_A23_GGSg_A23_tGGAA21_TraitWritingModifierVyAA0I21RowBackgroundTraitKeyVGGA30_yAA0I17RowInsetsTraitKeyVGGAQ04HideI12RowSeparatorASLLVGSgAYyAA0D0PAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyA44_AAEA45_A46_A47__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA7SectionVyAA05EmptyD0VALyAQ24PacerDistanceValuePickerV_AQ24PacerDurationValuePickerVAYyApNyAQ023AlignedLeadingAccessorymD0VyAA5ImageVALyAP_AA6SpacerVAPtGGAA011_ForegroundQ8ModifierVyAA5ColorVGGGtGA51_G_SbQo__SbQo_ANyANyANyANyAQ026EmbeddedPacerConfigurationD0VAA14_PaddingLayoutVGAA19_BackgroundModifierVyANyAA017StrokeBorderShapeD0VyAA16RoundedRectangleVAA017HierarchicalShapeQ0VA51_GA10_GGGA33_GA37_GGAQ05StartO6ButtonVANyANyANyAQ14SaveCopyButtonVA37_GA40_GA_yAA11ControlSizeOGGSgANyANyANyANyANyANyANyANyANyAPA_yA67_SgGGA2_GA7_GA10_GA15_GA18_GA21_GA37_GA33_GSgtGGGMd,  &_s7SwiftUI16SubscriptionViewVy7Combine25ObservableObjectPublisherCAA4ListVys5NeverOAA05TupleD0VyAA15ModifiedContentVyAA4TextV07WorkoutB005ClearI5Style33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_ANyANyANyAA6VStackVyALyAA012_ConditionalM0VyANyANyANyANyANyANyApA30_EnvironmentKeyWritingModifierVyAA0N9AlignmentOGGA_yAP4CaseOSgGGAA16_FlexFrameLayoutVGA_yAA4FontVSgGGA_ySiSgGGAQ15BodyHyphenationVGSgAYyA22_A23_GGSg_A23_tGGAA21_TraitWritingModifierVyAA0I21RowBackgroundTraitKeyVGGA30_yAA0I17RowInsetsTraitKeyVGGAQ04HideI12RowSeparatorASLLVGSgAYyAA0D0PAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyA44_AAEA45_A46_A47__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA7SectionVyAA05EmptyD0VALyAQ24PacerDistanceValuePickerV_AQ24PacerDurationValuePickerVAYyApNyAQ023AlignedLeadingAccessorymD0VyAA5ImageVALyAP_AA6SpacerVAPtGGAA011_ForegroundQ8ModifierVyAA5ColorVGGGtGA51_G_SbQo__SbQo_ANyANyANyANyAQ026EmbeddedPacerConfigurationD0VAA14_PaddingLayoutVGAA19_BackgroundModifierVyANyAA017StrokeBorderShapeD0VyAA16RoundedRectangleVAA017HierarchicalShapeQ0VA51_GA10_GGGA33_GA37_GGAQ05StartO6ButtonVANyANyANyAQ14SaveCopyButtonVA37_GA40_GA_yAA11ControlSizeOGGSgANyANyANyANyANyANyANyANyANyAPA_yA67_SgGGA2_GA7_GA10_GA15_GA18_GA21_GA37_GA33_GSgtGGGMR,  MEMORY[0x277CDDB50]);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type PacerWorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type WorkoutConfigurationToolbar and conformance WorkoutConfigurationToolbar, type metadata accessor for WorkoutConfigurationToolbar, &protocol conformance descriptor for WorkoutConfigurationToolbar);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.contentMargins(_:_:for:)>>.0, WorkoutConfigurationToolbar> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.contentMargins(_:_:for:)>>.0, WorkoutConfigurationToolbar> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.contentMargins(_:_:for:)>>.0, WorkoutConfigurationToolbar> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2( &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE14contentMargins__3forQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA0D15MarginPlacementVtFQOyAeAE26interactiveDismissDisabledyQrSbFQOyAA012SubscriptionE0Vy7Combine25ObservableObjectPublisherCACyAeAE22toolbarForegroundStyle_AGQrqd___AA07ToolbarO0VdtAA05ShapeZ0Rd__lFQOyACyAeAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAeAE5sheet11isPresented02onQ00F0QrAA7BindingVySbG_yycSgqd__yctAaDRd__lFQOyACyAeAE23scrollDismissesKeyboardyQrAA27ScrollDismissesKeyboardModeVFQOyACyAA4ListVys5NeverOAA05TupleE0VyAA7SectionVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGGA25_yA23_4CaseOSgGGAA16_FlexFrameLayoutVGAA05EmptyE0VA39_GSg_ACyA21_yAA6VStackVyA19_yACyAeAE20writingToolsBehavioryQrAA20WritingToolsBehaviorVFQOyACyACyAeAE10fontWeightyQrAA4FontV6WeightVSgFQOyAA9TextFieldVyA23_G_Qo_A25_yA49_SgGG07WorkoutB009ClearListZ033_A607961C6E65DD4DD1C2818C5FE69B58LLVG_Qo_A25_ySSSgGG_ACyA43_yA19_yAA012_ConditionalD0VyACyACyACyA37_A58_GA25_ySiSgGGA60_15BodyHyphenationVGSgA70_yA77_A78_GGSg_A78_tGGAA21_TraitWritingModifierVyAA25ListRowBackgroundTraitKeyVGGSgtGGA39_A39_GA85_yAA21ListRowInsetsTraitKeyVGGSgA70_yACyACyA60_21IntervalBlocksSectionVA25_yA60_28ConfigurationNavigationModelCSgGGA25_y07WorkoutK028IntervalWorkoutConfigurationCSgGGACyA60_029EmbeddedIntervalConfigurationE0VA60_017ListRowBackgroundE8ModifierVGGA21_yACyA23_A60_31UnstackedSectionSpacingModifier33_B33B451D6D59C74C7A089BCD2EE64343LLVGACyACyA55_A96_GA88_GA39_GSgA70_yA19_yA60_18StartWorkoutButtonV_ACyACyACyA60_14SaveCopyButtonVA96_GA60_20HideListRowSeparatorA62_LLVGA25_yAA11ControlSizeOGGACyACyACyACyACyACyACyACyACyA23_A25_yAA5ColorVSgGGA28_GA33_GA36_GA58_GA73_GA76_GA96_GA88_GtGA21_yACyACyA23_AA12_FrameLayoutVGA120_GA19_yACyA127_AA32_EnvironmentKeyTransformModifierVySbGGSg_ACyA60_19WorkoutTintedButtonVA158_GSgA164_A60_31ShareWorkoutConfigurationButtonVSgA129_SgA60_12DeleteButtonVSgtGA23_SgGGtGGA25_yAA08AnyShapeZ0VSgGG_Qo_A60_23NillableNavigationTitleVG_A70_yACyA60_019IntervalStepAddTypeE0VA104_GAA010NavigationE0VyACyA60_021IntervalStepSelectionE0VA104_GGGSgQo__A102_17BlockPresentationOSgQo_A60_27StackedListSectionsModifierA119_LLVG_A139_Qo_AA25_AppearanceActionModifierVGG_Qo__Qo_A60_27WorkoutConfigurationToolbarVGMd,  &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE14contentMargins__3forQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA0D15MarginPlacementVtFQOyAeAE26interactiveDismissDisabledyQrSbFQOyAA012SubscriptionE0Vy7Combine25ObservableObjectPublisherCACyAeAE22toolbarForegroundStyle_AGQrqd___AA07ToolbarO0VdtAA05ShapeZ0Rd__lFQOyACyAeAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAeAE5sheet11isPresented02onQ00F0QrAA7BindingVySbG_yycSgqd__yctAaDRd__lFQOyACyAeAE23scrollDismissesKeyboardyQrAA27ScrollDismissesKeyboardModeVFQOyACyAA4ListVys5NeverOAA05TupleE0VyAA7SectionVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGGA25_yA23_4CaseOSgGGAA16_FlexFrameLayoutVGAA05EmptyE0VA39_GSg_ACyA21_yAA6VStackVyA19_yACyAeAE20writingToolsBehavioryQrAA20WritingToolsBehaviorVFQOyACyACyAeAE10fontWeightyQrAA4FontV6WeightVSgFQOyAA9TextFieldVyA23_G_Qo_A25_yA49_SgGG07WorkoutB009ClearListZ033_A607961C6E65DD4DD1C2818C5FE69B58LLVG_Qo_A25_ySSSgGG_ACyA43_yA19_yAA012_ConditionalD0VyACyACyACyA37_A58_GA25_ySiSgGGA60_15BodyHyphenationVGSgA70_yA77_A78_GGSg_A78_tGGAA21_TraitWritingModifierVyAA25ListRowBackgroundTraitKeyVGGSgtGGA39_A39_GA85_yAA21ListRowInsetsTraitKeyVGGSgA70_yACyACyA60_21IntervalBlocksSectionVA25_yA60_28ConfigurationNavigationModelCSgGGA25_y07WorkoutK028IntervalWorkoutConfigurationCSgGGACyA60_029EmbeddedIntervalConfigurationE0VA60_017ListRowBackgroundE8ModifierVGGA21_yACyA23_A60_31UnstackedSectionSpacingModifier33_B33B451D6D59C74C7A089BCD2EE64343LLVGACyACyA55_A96_GA88_GA39_GSgA70_yA19_yA60_18StartWorkoutButtonV_ACyACyACyA60_14SaveCopyButtonVA96_GA60_20HideListRowSeparatorA62_LLVGA25_yAA11ControlSizeOGGACyACyACyACyACyACyACyACyACyA23_A25_yAA5ColorVSgGGA28_GA33_GA36_GA58_GA73_GA76_GA96_GA88_GtGA21_yACyACyA23_AA12_FrameLayoutVGA120_GA19_yACyA127_AA32_EnvironmentKeyTransformModifierVySbGGSg_ACyA60_19WorkoutTintedButtonVA158_GSgA164_A60_31ShareWorkoutConfigurationButtonVSgA129_SgA60_12DeleteButtonVSgtGA23_SgGGtGGA25_yAA08AnyShapeZ0VSgGG_Qo_A60_23NillableNavigationTitleVG_A70_yACyA60_019IntervalStepAddTypeE0VA104_GAA010NavigationE0VyACyA60_021IntervalStepSelectionE0VA104_GGGSgQo__A102_17BlockPresentationOSgQo_A60_27StackedListSectionsModifierA119_LLVG_A139_Qo_AA25_AppearanceActionModifierVGG_Qo__Qo_A60_27WorkoutConfigurationToolbarVGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2( &_s7SwiftUI4ViewPAAE26interactiveDismissDisabledyQrSbFQOyAA012SubscriptionC0Vy7Combine25ObservableObjectPublisherCAA15ModifiedContentVyAcAE22toolbarForegroundStyle_3forQrqd___AA16ToolbarPlacementVdtAA05ShapeP0Rd__lFQOyAKyAcAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAcAE5sheet11isPresented0uE07contentQrAA7BindingVySbG_yycSgqd__yctAaBRd__lFQOyAKyAcAE23scrollDismissesKeyboardyQrAA27ScrollDismissesKeyboardModeVFQOyAKyAA4ListVys5NeverOAA05TupleC0VyAA7SectionVyAKyAKyAKyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGGA14_yA12_4CaseOSgGGAA16_FlexFrameLayoutVGAA05EmptyC0VA28_GSg_AKyA10_yAA6VStackVyA8_yAKyAcAE20writingToolsBehavioryQrAA20WritingToolsBehaviorVFQOyAKyAKyAcAE10fontWeightyQrAA4FontV6WeightVSgFQOyAA9TextFieldVyA12_G_Qo_A14_yA38_SgGG07WorkoutB009ClearListP033_A607961C6E65DD4DD1C2818C5FE69B58LLVG_Qo_A14_ySSSgGG_AKyA32_yA8_yAA012_ConditionalM0VyAKyAKyAKyA26_A47_GA14_ySiSgGGA49_15BodyHyphenationVGSgA59_yA66_A67_GGSg_A67_tGGAA21_TraitWritingModifierVyAA25ListRowBackgroundTraitKeyVGGSgtGGA28_A28_GA74_yAA21ListRowInsetsTraitKeyVGGSgA59_yAKyAKyA49_21IntervalBlocksSectionVA14_yA49_28ConfigurationNavigationModelCSgGGA14_y11WorkoutCore28IntervalWorkoutConfigurationCSgGGAKyA49_029EmbeddedIntervalConfigurationC0VA49_017ListRowBackgroundC8ModifierVGGA10_yAKyA12_A49_31UnstackedSectionSpacingModifier33_B33B451D6D59C74C7A089BCD2EE64343LLVGAKyAKyA44_A85_GA77_GA28_GSgA59_yA8_yA49_18StartWorkoutButtonV_AKyAKyAKyA49_14SaveCopyButtonVA85_GA49_20HideListRowSeparatorA51_LLVGA14_yAA11ControlSizeOGGAKyAKyAKyAKyAKyAKyAKyAKyAKyA12_A14_yAA5ColorVSgGGA17_GA22_GA25_GA47_GA62_GA65_GA85_GA77_GtGA10_yAKyAKyA12_AA12_FrameLayoutVGA109_GA8_yAKyA116_AA32_EnvironmentKeyTransformModifierVySbGGSg_AKyA49_19WorkoutTintedButtonVA147_GSgA153_A49_31ShareWorkoutConfigurationButtonVSgA118_SgA49_12DeleteButtonVSgtGA12_SgGGtGGA14_yAA03AnytP0VSgGG_Qo_A49_23NillableNavigationTitleVG_A59_yAKyA49_019IntervalStepAddTypeC0VA93_GAA010NavigationC0VyAKyA49_021IntervalStepSelectionC0VA93_GGGSgQo__A91_17BlockPresentationOSgQo_A49_27StackedListSectionsModifierA108_LLVG_A128_Qo_AA25_AppearanceActionModifierVGG_Qo_Md,  &_s7SwiftUI4ViewPAAE26interactiveDismissDisabledyQrSbFQOyAA012SubscriptionC0Vy7Combine25ObservableObjectPublisherCAA15ModifiedContentVyAcAE22toolbarForegroundStyle_3forQrqd___AA16ToolbarPlacementVdtAA05ShapeP0Rd__lFQOyAKyAcAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAcAE5sheet11isPresented0uE07contentQrAA7BindingVySbG_yycSgqd__yctAaBRd__lFQOyAKyAcAE23scrollDismissesKeyboardyQrAA27ScrollDismissesKeyboardModeVFQOyAKyAA4ListVys5NeverOAA05TupleC0VyAA7SectionVyAKyAKyAKyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGGA14_yA12_4CaseOSgGGAA16_FlexFrameLayoutVGAA05EmptyC0VA28_GSg_AKyA10_yAA6VStackVyA8_yAKyAcAE20writingToolsBehavioryQrAA20WritingToolsBehaviorVFQOyAKyAKyAcAE10fontWeightyQrAA4FontV6WeightVSgFQOyAA9TextFieldVyA12_G_Qo_A14_yA38_SgGG07WorkoutB009ClearListP033_A607961C6E65DD4DD1C2818C5FE69B58LLVG_Qo_A14_ySSSgGG_AKyA32_yA8_yAA012_ConditionalM0VyAKyAKyAKyA26_A47_GA14_ySiSgGGA49_15BodyHyphenationVGSgA59_yA66_A67_GGSg_A67_tGGAA21_TraitWritingModifierVyAA25ListRowBackgroundTraitKeyVGGSgtGGA28_A28_GA74_yAA21ListRowInsetsTraitKeyVGGSgA59_yAKyAKyA49_21IntervalBlocksSectionVA14_yA49_28ConfigurationNavigationModelCSgGGA14_y11WorkoutCore28IntervalWorkoutConfigurationCSgGGAKyA49_029EmbeddedIntervalConfigurationC0VA49_017ListRowBackgroundC8ModifierVGGA10_yAKyA12_A49_31UnstackedSectionSpacingModifier33_B33B451D6D59C74C7A089BCD2EE64343LLVGAKyAKyA44_A85_GA77_GA28_GSgA59_yA8_yA49_18StartWorkoutButtonV_AKyAKyAKyA49_14SaveCopyButtonVA85_GA49_20HideListRowSeparatorA51_LLVGA14_yAA11ControlSizeOGGAKyAKyAKyAKyAKyAKyAKyAKyAKyA12_A14_yAA5ColorVSgGGA17_GA22_GA25_GA47_GA62_GA65_GA85_GA77_GtGA10_yAKyAKyA12_AA12_FrameLayoutVGA109_GA8_yAKyA116_AA32_EnvironmentKeyTransformModifierVySbGGSg_AKyA49_19WorkoutTintedButtonVA147_GSgA153_A49_31ShareWorkoutConfigurationButtonVSgA118_SgA49_12DeleteButtonVSgtGA12_SgGGtGGA14_yAA03AnytP0VSgGG_Qo_A49_23NillableNavigationTitleVG_A59_yAKyA49_019IntervalStepAddTypeC0VA93_GAA010NavigationC0VyAKyA49_021IntervalStepSelectionC0VA93_GGGSgQo__A91_17BlockPresentationOSgQo_A49_27StackedListSectionsModifierA108_LLVG_A128_Qo_AA25_AppearanceActionModifierVGG_Qo_MR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2( &_s7SwiftUI16SubscriptionViewVy7Combine25ObservableObjectPublisherCAA15ModifiedContentVyAA0D0PAAE22toolbarForegroundStyle_3forQrqd___AA16ToolbarPlacementVdtAA05ShapeM0Rd__lFQOyAHyAjAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAjAE5sheet11isPresented0R7Dismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaIRd__lFQOyAHyAjAE23scrollDismissesKeyboardyQrAA27ScrollDismissesKeyboardModeVFQOyAHyAA4ListVys5NeverOAA05TupleD0VyAA7SectionVyAHyAHyAHyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGGA13_yA11_4CaseOSgGGAA16_FlexFrameLayoutVGAA05EmptyD0VA27_GSg_AHyA9_yAA6VStackVyA7_yAHyAjAE20writingToolsBehavioryQrAA20WritingToolsBehaviorVFQOyAHyAHyAjAE10fontWeightyQrAA4FontV6WeightVSgFQOyAA9TextFieldVyA11_G_Qo_A13_yA37_SgGG07WorkoutB009ClearListM033_A607961C6E65DD4DD1C2818C5FE69B58LLVG_Qo_A13_ySSSgGG_AHyA31_yA7_yAA012_ConditionalJ0VyAHyAHyAHyA25_A46_GA13_ySiSgGGA48_15BodyHyphenationVGSgA58_yA65_A66_GGSg_A66_tGGAA21_TraitWritingModifierVyAA25ListRowBackgroundTraitKeyVGGSgtGGA27_A27_GA73_yAA21ListRowInsetsTraitKeyVGGSgA58_yAHyAHyA48_21IntervalBlocksSectionVA13_yA48_28ConfigurationNavigationModelCSgGGA13_y11WorkoutCore28IntervalWorkoutConfigurationCSgGGAHyA48_029EmbeddedIntervalConfigurationD0VA48_017ListRowBackgroundD8ModifierVGGA9_yAHyA11_A48_31UnstackedSectionSpacingModifier33_B33B451D6D59C74C7A089BCD2EE64343LLVGAHyAHyA43_A84_GA76_GA27_GSgA58_yA7_yA48_18StartWorkoutButtonV_AHyAHyAHyA48_14SaveCopyButtonVA84_GA48_20HideListRowSeparatorA50_LLVGA13_yAA11ControlSizeOGGAHyAHyAHyAHyAHyAHyAHyAHyAHyA11_A13_yAA5ColorVSgGGA16_GA21_GA24_GA46_GA61_GA64_GA84_GA76_GtGA9_yAHyAHyA11_AA12_FrameLayoutVGA108_GA7_yAHyA115_AA32_EnvironmentKeyTransformModifierVySbGGSg_AHyA48_19WorkoutTintedButtonVA146_GSgA152_A48_31ShareWorkoutConfigurationButtonVSgA117_SgA48_12DeleteButtonVSgtGA11_SgGGtGGA13_yAA03AnyqM0VSgGG_Qo_A48_23NillableNavigationTitleVG_A58_yAHyA48_019IntervalStepAddTypeD0VA92_GAA010NavigationD0VyAHyA48_021IntervalStepSelectionD0VA92_GGGSgQo__A90_17BlockPresentationOSgQo_A48_27StackedListSectionsModifierA107_LLVG_A127_Qo_AA25_AppearanceActionModifierVGGMd,  &_s7SwiftUI16SubscriptionViewVy7Combine25ObservableObjectPublisherCAA15ModifiedContentVyAA0D0PAAE22toolbarForegroundStyle_3forQrqd___AA16ToolbarPlacementVdtAA05ShapeM0Rd__lFQOyAHyAjAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAjAE5sheet11isPresented0R7Dismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaIRd__lFQOyAHyAjAE23scrollDismissesKeyboardyQrAA27ScrollDismissesKeyboardModeVFQOyAHyAA4ListVys5NeverOAA05TupleD0VyAA7SectionVyAHyAHyAHyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGGA13_yA11_4CaseOSgGGAA16_FlexFrameLayoutVGAA05EmptyD0VA27_GSg_AHyA9_yAA6VStackVyA7_yAHyAjAE20writingToolsBehavioryQrAA20WritingToolsBehaviorVFQOyAHyAHyAjAE10fontWeightyQrAA4FontV6WeightVSgFQOyAA9TextFieldVyA11_G_Qo_A13_yA37_SgGG07WorkoutB009ClearListM033_A607961C6E65DD4DD1C2818C5FE69B58LLVG_Qo_A13_ySSSgGG_AHyA31_yA7_yAA012_ConditionalJ0VyAHyAHyAHyA25_A46_GA13_ySiSgGGA48_15BodyHyphenationVGSgA58_yA65_A66_GGSg_A66_tGGAA21_TraitWritingModifierVyAA25ListRowBackgroundTraitKeyVGGSgtGGA27_A27_GA73_yAA21ListRowInsetsTraitKeyVGGSgA58_yAHyAHyA48_21IntervalBlocksSectionVA13_yA48_28ConfigurationNavigationModelCSgGGA13_y11WorkoutCore28IntervalWorkoutConfigurationCSgGGAHyA48_029EmbeddedIntervalConfigurationD0VA48_017ListRowBackgroundD8ModifierVGGA9_yAHyA11_A48_31UnstackedSectionSpacingModifier33_B33B451D6D59C74C7A089BCD2EE64343LLVGAHyAHyA43_A84_GA76_GA27_GSgA58_yA7_yA48_18StartWorkoutButtonV_AHyAHyAHyA48_14SaveCopyButtonVA84_GA48_20HideListRowSeparatorA50_LLVGA13_yAA11ControlSizeOGGAHyAHyAHyAHyAHyAHyAHyAHyAHyA11_A13_yAA5ColorVSgGGA16_GA21_GA24_GA46_GA61_GA64_GA84_GA76_GtGA9_yAHyAHyA11_AA12_FrameLayoutVGA108_GA7_yAHyA115_AA32_EnvironmentKeyTransformModifierVySbGGSg_AHyA48_19WorkoutTintedButtonVA146_GSgA152_A48_31ShareWorkoutConfigurationButtonVSgA117_SgA48_12DeleteButtonVSgtGA11_SgGGtGGA13_yAA03AnyqM0VSgGG_Qo_A48_23NillableNavigationTitleVG_A58_yAHyA48_019IntervalStepAddTypeD0VA92_GAA010NavigationD0VyAHyA48_021IntervalStepSelectionD0VA92_GGGSgQo__A90_17BlockPresentationOSgQo_A48_27StackedListSectionsModifierA107_LLVG_A127_Qo_AA25_AppearanceActionModifierVGGMR);
    lazy protocol witness table accessor for type TupleView<(Section<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, EmptyView, EmptyView>?, ModifiedContent<Section<VStack<TupleView<(ModifiedContent<<<opaque return type of View.writingToolsBehavior(_:)>>.0, _EnvironmentKeyWritingModifier<String?>>, ModifiedContent<VStack<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>?, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _Environm( &lazy protocol witness table cache variable for type SubscriptionView<ObservableObjectPublisher, ModifiedContent<<<opaque return type of View.toolbarForegroundStyle<A>(_:for:)>>.0, _AppearanceActionModifier>> and conformance SubscriptionView<A, B>,  &_s7SwiftUI16SubscriptionViewVy7Combine25ObservableObjectPublisherCAA15ModifiedContentVyAA0D0PAAE22toolbarForegroundStyle_3forQrqd___AA16ToolbarPlacementVdtAA05ShapeM0Rd__lFQOyAHyAjAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAjAE5sheet11isPresented0R7Dismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaIRd__lFQOyAHyAjAE23scrollDismissesKeyboardyQrAA27ScrollDismissesKeyboardModeVFQOyAHyAA4ListVys5NeverOAA05TupleD0VyAA7SectionVyAHyAHyAHyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGGA13_yA11_4CaseOSgGGAA16_FlexFrameLayoutVGAA05EmptyD0VA27_GSg_AHyA9_yAA6VStackVyA7_yAHyAjAE20writingToolsBehavioryQrAA20WritingToolsBehaviorVFQOyAHyAHyAjAE10fontWeightyQrAA4FontV6WeightVSgFQOyAA9TextFieldVyA11_G_Qo_A13_yA37_SgGG07WorkoutB009ClearListM033_A607961C6E65DD4DD1C2818C5FE69B58LLVG_Qo_A13_ySSSgGG_AHyA31_yA7_yAA012_ConditionalJ0VyAHyAHyAHyA25_A46_GA13_ySiSgGGA48_15BodyHyphenationVGSgA58_yA65_A66_GGSg_A66_tGGAA21_TraitWritingModifierVyAA25ListRowBackgroundTraitKeyVGGSgtGGA27_A27_GA73_yAA21ListRowInsetsTraitKeyVGGSgA58_yAHyAHyA48_21IntervalBlocksSectionVA13_yA48_28ConfigurationNavigationModelCSgGGA13_y11WorkoutCore28IntervalWorkoutConfigurationCSgGGAHyA48_029EmbeddedIntervalConfigurationD0VA48_017ListRowBackgroundD8ModifierVGGA9_yAHyA11_A48_31UnstackedSectionSpacingModifier33_B33B451D6D59C74C7A089BCD2EE64343LLVGAHyAHyA43_A84_GA76_GA27_GSgA58_yA7_yA48_18StartWorkoutButtonV_AHyAHyAHyA48_14SaveCopyButtonVA84_GA48_20HideListRowSeparatorA50_LLVGA13_yAA11ControlSizeOGGAHyAHyAHyAHyAHyAHyAHyAHyAHyA11_A13_yAA5ColorVSgGGA16_GA21_GA24_GA46_GA61_GA64_GA84_GA76_GtGA9_yAHyAHyA11_AA12_FrameLayoutVGA108_GA7_yAHyA115_AA32_EnvironmentKeyTransformModifierVySbGGSg_AHyA48_19WorkoutTintedButtonVA146_GSgA152_A48_31ShareWorkoutConfigurationButtonVSgA117_SgA48_12DeleteButtonVSgtGA11_SgGGtGGA13_yAA03AnyqM0VSgGG_Qo_A48_23NillableNavigationTitleVG_A58_yAHyA48_019IntervalStepAddTypeD0VA92_GAA010NavigationD0VyAHyA48_021IntervalStepSelectionD0VA92_GGGSgQo__A90_17BlockPresentationOSgQo_A48_27StackedListSectionsModifierA107_LLVG_A127_Qo_AA25_AppearanceActionModifierVGGMd,  &_s7SwiftUI16SubscriptionViewVy7Combine25ObservableObjectPublisherCAA15ModifiedContentVyAA0D0PAAE22toolbarForegroundStyle_3forQrqd___AA16ToolbarPlacementVdtAA05ShapeM0Rd__lFQOyAHyAjAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAjAE5sheet11isPresented0R7Dismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaIRd__lFQOyAHyAjAE23scrollDismissesKeyboardyQrAA27ScrollDismissesKeyboardModeVFQOyAHyAA4ListVys5NeverOAA05TupleD0VyAA7SectionVyAHyAHyAHyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGGA13_yA11_4CaseOSgGGAA16_FlexFrameLayoutVGAA05EmptyD0VA27_GSg_AHyA9_yAA6VStackVyA7_yAHyAjAE20writingToolsBehavioryQrAA20WritingToolsBehaviorVFQOyAHyAHyAjAE10fontWeightyQrAA4FontV6WeightVSgFQOyAA9TextFieldVyA11_G_Qo_A13_yA37_SgGG07WorkoutB009ClearListM033_A607961C6E65DD4DD1C2818C5FE69B58LLVG_Qo_A13_ySSSgGG_AHyA31_yA7_yAA012_ConditionalJ0VyAHyAHyAHyA25_A46_GA13_ySiSgGGA48_15BodyHyphenationVGSgA58_yA65_A66_GGSg_A66_tGGAA21_TraitWritingModifierVyAA25ListRowBackgroundTraitKeyVGGSgtGGA27_A27_GA73_yAA21ListRowInsetsTraitKeyVGGSgA58_yAHyAHyA48_21IntervalBlocksSectionVA13_yA48_28ConfigurationNavigationModelCSgGGA13_y11WorkoutCore28IntervalWorkoutConfigurationCSgGGAHyA48_029EmbeddedIntervalConfigurationD0VA48_017ListRowBackgroundD8ModifierVGGA9_yAHyA11_A48_31UnstackedSectionSpacingModifier33_B33B451D6D59C74C7A089BCD2EE64343LLVGAHyAHyA43_A84_GA76_GA27_GSgA58_yA7_yA48_18StartWorkoutButtonV_AHyAHyAHyA48_14SaveCopyButtonVA84_GA48_20HideListRowSeparatorA50_LLVGA13_yAA11ControlSizeOGGAHyAHyAHyAHyAHyAHyAHyAHyAHyA11_A13_yAA5ColorVSgGGA16_GA21_GA24_GA46_GA61_GA64_GA84_GA76_GtGA9_yAHyAHyA11_AA12_FrameLayoutVGA108_GA7_yAHyA115_AA32_EnvironmentKeyTransformModifierVySbGGSg_AHyA48_19WorkoutTintedButtonVA146_GSgA152_A48_31ShareWorkoutConfigurationButtonVSgA117_SgA48_12DeleteButtonVSgtGA11_SgGGtGGA13_yAA03AnyqM0VSgGG_Qo_A48_23NillableNavigationTitleVG_A58_yAHyA48_019IntervalStepAddTypeD0VA92_GAA010NavigationD0VyAHyA48_021IntervalStepSelectionD0VA92_GGGSgQo__A90_17BlockPresentationOSgQo_A48_27StackedListSectionsModifierA107_LLVG_A127_Qo_AA25_AppearanceActionModifierVGGMR,  MEMORY[0x277CDDB50]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    _s11WorkoutCore0A23ConfigurationDataSourceCAC7Combine16ObservableObjectAAWlTm_9(&lazy protocol witness table cache variable for type WorkoutConfigurationToolbar and conformance WorkoutConfigurationToolbar, type metadata accessor for WorkoutConfigurationToolbar, &protocol conformance descriptor for WorkoutConfigurationToolbar);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.contentMargins(_:_:for:)>>.0, WorkoutConfigurationToolbar> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t objectdestroyTm_65()
{

  return swift_deallocObject();
}

uint64_t lazy protocol witness table accessor for type GoalWorkoutConfiguration and conformance WorkoutConfiguration(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Section<EmptyView, GoalValuePicker, EmptyView> and conformance <> Section<A, B, C>()
{
  result = lazy protocol witness table cache variable for type Section<EmptyView, GoalValuePicker, EmptyView> and conformance <> Section<A, B, C>;
  if (!lazy protocol witness table cache variable for type Section<EmptyView, GoalValuePicker, EmptyView> and conformance <> Section<A, B, C>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7SectionVyAA9EmptyViewV07WorkoutB015GoalValuePickerVAEGMd, &_s7SwiftUI7SectionVyAA9EmptyViewV07WorkoutB015GoalValuePickerVAEGMR);
    lazy protocol witness table accessor for type GoalWorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type GoalValuePicker and conformance GoalValuePicker, type metadata accessor for GoalValuePicker, &protocol conformance descriptor for GoalValuePicker);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Section<EmptyView, GoalValuePicker, EmptyView> and conformance <> Section<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<EmbeddedGoalConfigurationView, _PaddingLayout>, _BackgroundModifier<ModifiedContent<StrokeBorderShapeView<RoundedRectangle, HierarchicalShapeStyle, EmptyView>, _FlexFrameLayout>>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<EmbeddedGoalConfigurationView, _PaddingLayout>, _BackgroundModifier<ModifiedContent<StrokeBorderShapeView<RoundedRectangle, HierarchicalShapeStyle, EmptyView>, _FlexFrameLayout>>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<EmbeddedGoalConfigurationView, _PaddingLayout>, _BackgroundModifier<ModifiedContent<StrokeBorderShapeView<RoundedRectangle, HierarchicalShapeStyle, EmptyView>, _FlexFrameLayout>>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACy07WorkoutB029EmbeddedGoalConfigurationViewVAA14_PaddingLayoutVGAA19_BackgroundModifierVyACyAA017StrokeBorderShapeI0VyAA16RoundedRectangleVAA012HierarchicalP5StyleVAA05EmptyI0VGAA010_FlexFrameK0VGGGAA013_TraitWritingM0VyAA07ListRowlX3KeyVGGA_yAA0z9RowInsetsX3KeyVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACy07WorkoutB029EmbeddedGoalConfigurationViewVAA14_PaddingLayoutVGAA19_BackgroundModifierVyACyAA017StrokeBorderShapeI0VyAA16RoundedRectangleVAA012HierarchicalP5StyleVAA05EmptyI0VGAA010_FlexFrameK0VGGGAA013_TraitWritingM0VyAA07ListRowlX3KeyVGGA_yAA0z9RowInsetsX3KeyVGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<EmbeddedGoalConfigurationView, _PaddingLayout>, _BackgroundModifier<ModifiedContent<StrokeBorderShapeView<RoundedRectangle, HierarchicalShapeStyle, EmptyView>, _FlexFrameLayout>>>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type TupleView<((<<opaque return type of View.scenePadding(_:)>>.0)?, ModifiedContent<VStack<TupleView<(_ConditionalContent<ModifiedContent<GoalValueButton, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, ModifiedContent<ModifiedContent<EmbeddedGoalConfigurationView, _PaddingLayout>, _BackgroundModifier<ModifiedContent<StrokeBorderShapeView<RoundedRectangle, HierarchicalShapeStyle, EmptyView>, _FlexFrameLayout>>>>?, <<opaque return type of View.scenePadding(_:)>>.0)>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type _TraitWritingModifier<ListRowInsetsTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA013ListRowInsetsC3KeyVGMd, &_s7SwiftUI21_TraitWritingModifierVyAA013ListRowInsetsC3KeyVGMR, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<EmbeddedGoalConfigurationView, _PaddingLayout>, _BackgroundModifier<ModifiedContent<StrokeBorderShapeView<RoundedRectangle, HierarchicalShapeStyle, EmptyView>, _FlexFrameLayout>>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<EmbeddedGoalConfigurationView, _PaddingLayout>, _BackgroundModifier<ModifiedContent<StrokeBorderShapeView<RoundedRectangle, HierarchicalShapeStyle, EmptyView>, _FlexFrameLayout>>>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<EmbeddedGoalConfigurationView, _PaddingLayout>, _BackgroundModifier<ModifiedContent<StrokeBorderShapeView<RoundedRectangle, HierarchicalShapeStyle, EmptyView>, _FlexFrameLayout>>>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<EmbeddedGoalConfigurationView, _PaddingLayout>, _BackgroundModifier<ModifiedContent<StrokeBorderShapeView<RoundedRectangle, HierarchicalShapeStyle, EmptyView>, _FlexFrameLayout>>>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB029EmbeddedGoalConfigurationViewVAA14_PaddingLayoutVGAA19_BackgroundModifierVyACyAA017StrokeBorderShapeI0VyAA16RoundedRectangleVAA012HierarchicalP5StyleVAA05EmptyI0VGAA010_FlexFrameK0VGGGAA013_TraitWritingM0VyAA07ListRowlX3KeyVGGMd, &_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB029EmbeddedGoalConfigurationViewVAA14_PaddingLayoutVGAA19_BackgroundModifierVyACyAA017StrokeBorderShapeI0VyAA16RoundedRectangleVAA012HierarchicalP5StyleVAA05EmptyI0VGAA010_FlexFrameK0VGGGAA013_TraitWritingM0VyAA07ListRowlX3KeyVGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<EmbeddedGoalConfigurationView, _PaddingLayout>, _BackgroundModifier<ModifiedContent<StrokeBorderShapeView<RoundedRectangle, HierarchicalShapeStyle, EmptyView>, _FlexFrameLayout>>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type TupleView<((<<opaque return type of View.scenePadding(_:)>>.0)?, ModifiedContent<VStack<TupleView<(_ConditionalContent<ModifiedContent<GoalValueButton, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, ModifiedContent<ModifiedContent<EmbeddedGoalConfigurationView, _PaddingLayout>, _BackgroundModifier<ModifiedContent<StrokeBorderShapeView<RoundedRectangle, HierarchicalShapeStyle, EmptyView>, _FlexFrameLayout>>>>?, <<opaque return type of View.scenePadding(_:)>>.0)>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type _TraitWritingModifier<ListRowBackgroundTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA017ListRowBackgroundC3KeyVGMd, &_s7SwiftUI21_TraitWritingModifierVyAA017ListRowBackgroundC3KeyVGMR, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<EmbeddedGoalConfigurationView, _PaddingLayout>, _BackgroundModifier<ModifiedContent<StrokeBorderShapeView<RoundedRectangle, HierarchicalShapeStyle, EmptyView>, _FlexFrameLayout>>>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<EmbeddedGoalConfigurationView, _PaddingLayout>, _BackgroundModifier<ModifiedContent<StrokeBorderShapeView<RoundedRectangle, HierarchicalShapeStyle, EmptyView>, _FlexFrameLayout>>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<EmbeddedGoalConfigurationView, _PaddingLayout>, _BackgroundModifier<ModifiedContent<StrokeBorderShapeView<RoundedRectangle, HierarchicalShapeStyle, EmptyView>, _FlexFrameLayout>>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<EmbeddedGoalConfigurationView, _PaddingLayout>, _BackgroundModifier<ModifiedContent<StrokeBorderShapeView<RoundedRectangle, HierarchicalShapeStyle, EmptyView>, _FlexFrameLayout>>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB029EmbeddedGoalConfigurationViewVAA14_PaddingLayoutVGAA19_BackgroundModifierVyACyAA017StrokeBorderShapeI0VyAA16RoundedRectangleVAA012HierarchicalP5StyleVAA05EmptyI0VGAA010_FlexFrameK0VGGGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB029EmbeddedGoalConfigurationViewVAA14_PaddingLayoutVGAA19_BackgroundModifierVyACyAA017StrokeBorderShapeI0VyAA16RoundedRectangleVAA012HierarchicalP5StyleVAA05EmptyI0VGAA010_FlexFrameK0VGGGMR);
    lazy protocol witness table accessor for type ModifiedContent<EmbeddedGoalConfigurationView, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type TupleView<((<<opaque return type of View.scenePadding(_:)>>.0)?, ModifiedContent<VStack<TupleView<(_ConditionalContent<ModifiedContent<GoalValueButton, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, ModifiedContent<ModifiedContent<EmbeddedGoalConfigurationView, _PaddingLayout>, _BackgroundModifier<ModifiedContent<StrokeBorderShapeView<RoundedRectangle, HierarchicalShapeStyle, EmptyView>, _FlexFrameLayout>>>>?, <<opaque return type of View.scenePadding(_:)>>.0)>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type _BackgroundModifier<ModifiedContent<StrokeBorderShapeView<RoundedRectangle, HierarchicalShapeStyle, EmptyView>, _FlexFrameLayout>> and conformance _BackgroundModifier<A>, &_s7SwiftUI19_BackgroundModifierVyAA15ModifiedContentVyAA21StrokeBorderShapeViewVyAA16RoundedRectangleVAA012HierarchicalI5StyleVAA05EmptyJ0VGAA16_FlexFrameLayoutVGGMd, &_s7SwiftUI19_BackgroundModifierVyAA15ModifiedContentVyAA21StrokeBorderShapeViewVyAA16RoundedRectangleVAA012HierarchicalI5StyleVAA05EmptyJ0VGAA16_FlexFrameLayoutVGGMR, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<EmbeddedGoalConfigurationView, _PaddingLayout>, _BackgroundModifier<ModifiedContent<StrokeBorderShapeView<RoundedRectangle, HierarchicalShapeStyle, EmptyView>, _FlexFrameLayout>>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<EmbeddedGoalConfigurationView, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<EmbeddedGoalConfigurationView, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<EmbeddedGoalConfigurationView, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB029EmbeddedGoalConfigurationViewVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB029EmbeddedGoalConfigurationViewVAA14_PaddingLayoutVGMR);
    lazy protocol witness table accessor for type EmbeddedGoalConfigurationView and conformance EmbeddedGoalConfigurationView();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<EmbeddedGoalConfigurationView, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EmbeddedGoalConfigurationView and conformance EmbeddedGoalConfigurationView()
{
  result = lazy protocol witness table cache variable for type EmbeddedGoalConfigurationView and conformance EmbeddedGoalConfigurationView;
  if (!lazy protocol witness table cache variable for type EmbeddedGoalConfigurationView and conformance EmbeddedGoalConfigurationView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmbeddedGoalConfigurationView and conformance EmbeddedGoalConfigurationView);
  }

  return result;
}

uint64_t key path setter for EnvironmentValues.controlSize : EnvironmentValues, serialized(uint64_t a1)
{
  v2 = type metadata accessor for ControlSize();
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return MEMORY[0x20F308E80](v5);
}

uint64_t key path setter for EnvironmentValues.textCase : EnvironmentValues, serialized(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4TextV4CaseOSgMd, &_s7SwiftUI4TextV4CaseOSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  outlined init with copy of ObservedObject<GoalWorkoutConfiguration>(a1, &v5 - v3, &_s7SwiftUI4TextV4CaseOSgMd, &_s7SwiftUI4TextV4CaseOSgMR);
  return EnvironmentValues.textCase.setter();
}

uint64_t outlined init with take of ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<GoalValueButton, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<GoalValueButton, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<GoalValueButton, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB015GoalValueButtonVAA30_EnvironmentKeyWritingModifierVy0E4Core0E23ConfigurationDataSourceCSgGGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB015GoalValueButtonVAA30_EnvironmentKeyWritingModifierVy0E4Core0E23ConfigurationDataSourceCSgGGMR);
    lazy protocol witness table accessor for type GoalValueButton and conformance GoalValueButton();
    lazy protocol witness table accessor for type TupleView<((<<opaque return type of View.scenePadding(_:)>>.0)?, ModifiedContent<VStack<TupleView<(_ConditionalContent<ModifiedContent<GoalValueButton, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, ModifiedContent<ModifiedContent<EmbeddedGoalConfigurationView, _PaddingLayout>, _BackgroundModifier<ModifiedContent<StrokeBorderShapeView<RoundedRectangle, HierarchicalShapeStyle, EmptyView>, _FlexFrameLayout>>>>?, <<opaque return type of View.scenePadding(_:)>>.0)>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy11WorkoutCore0G23ConfigurationDataSourceCSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy11WorkoutCore0G23ConfigurationDataSourceCSgGMR, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<GoalValueButton, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}