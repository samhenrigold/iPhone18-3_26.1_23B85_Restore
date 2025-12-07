unint64_t closure #5 in ScreenShareButtonViewModel.buttonStyle()(uint64_t a1)
{
  if (*(a1 + 17) != 1 || (*(a1 + 1) & 1) != 0)
  {
    v1 = *MEMORY[0x1E69DDCF8];
    v6 = 0;
    v7 = 0xD000000000000028;
    v8 = 0x80000001BC4F3800;
    v9 = 3;
    v10 = v1;
    v11 = 0;
    v12 = 4;
    v13 = 0;
    v14 = 0;
    v15 = 0xD000000000000028;
    v16 = 0x80000001BC4F3800;
  }

  else
  {
    v1 = *MEMORY[0x1E69DDCF8];
    v6 = 0;
    v7 = 0x616C706572616873;
    v8 = 0xE900000000000079;
    v9 = 3;
    v10 = v1;
    v11 = 0;
    v12 = 4;
    v13 = 0;
    v14 = 0;
    v15 = 0x616C706572616873;
    v16 = 0xE900000000000079;
  }

  v17 = 3;
  v18 = v1;
  v19 = 0;
  v20 = 4;
  v21 = 0;
  v22 = 0;
  v2 = v1;
  outlined init with copy of SymbolImageDescription(&v7, v5);
  outlined destroy of SymbolImageDescription(&v15);
  v3 = v7;

  outlined destroy of SymbolImageDescription(&v7);
  return v3;
}

uint64_t closure #6 in ScreenShareButtonViewModel.buttonStyle()(uint64_t a1)
{
  v1 = *(a1 + 1);
  v2 = *(a1 + 17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI15IconButtonStyleV12SystemSymbolVySb_GMd, &_s16CommunicationsUI15IconButtonStyleV12SystemSymbolVySb_GMR);
  v3 = IconButtonStyle.SystemSymbol.color.getter();
  v6 = (v1 | v2) & 1;
  v4 = v3(&v6);

  return v4;
}

uint64_t closure #7 in ScreenShareButtonViewModel.buttonStyle()(uint64_t a1)
{
  v1 = *(a1 + 1);
  v2 = *(a1 + 17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI15IconButtonStyleV12SystemSymbolVySb_GMd, &_s16CommunicationsUI15IconButtonStyleV12SystemSymbolVySb_GMR);
  v3 = IconButtonStyle.SystemSymbol.background.getter();
  v5 = (v1 | v2) & 1;
  v3(&v5);
}

uint64_t closure #1 in ScreenShareButtonViewModel.shareButtonConfig.getter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    ScreenShareButtonViewModel.didTapAskToScreenShare(_:)(a1);
  }

  return result;
}

uint64_t closure #1 in ScreenShareButtonViewModel.iconButtonConfig.getter(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    ScreenShareButtonViewModel.didTapScreenShare()();
  }

  return result;
}

uint64_t ScreenShareButtonViewModel.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return v0;
}

uint64_t ScreenShareButtonViewModel.__deallocating_deinit()
{
  ScreenShareButtonViewModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t specialized closure #1 in default argument 3 of static IconButtonStyle.SystemSymbol.iosCallControl(name:color:background:glass:font:)@<X0>(uint64_t a2@<X8>)
{
  static IconButtonStyle.SystemSymbol<A>.controlGlassOff.getter();
  v3 = type metadata accessor for _Glass();

  return __swift_storeEnumTagSinglePayload(a2, 0, 1, v3);
}

{
  return specialized closure #1 in default argument 3 of static IconButtonStyle.SystemSymbol.iosCallControl(name:color:background:glass:font:)(a2);
}

uint64_t partial apply for closure #6 in ScreenShareButtonViewModel.buttonStyle()(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI15IconButtonStyleV12SystemSymbolVySb_GMd, &_s16CommunicationsUI15IconButtonStyleV12SystemSymbolVySb_GMR);
  OUTLINED_FUNCTION_22(v2);

  return closure #6 in ScreenShareButtonViewModel.buttonStyle()(a1);
}

uint64_t objectdestroy_12Tm()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI15IconButtonStyleV12SystemSymbolVySb_GMd, &_s16CommunicationsUI15IconButtonStyleV12SystemSymbolVySb_GMR);
  OUTLINED_FUNCTION_7_0();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t partial apply for closure #7 in ScreenShareButtonViewModel.buttonStyle()(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI15IconButtonStyleV12SystemSymbolVySb_GMd, &_s16CommunicationsUI15IconButtonStyleV12SystemSymbolVySb_GMR);
  OUTLINED_FUNCTION_22(v2);

  return closure #7 in ScreenShareButtonViewModel.buttonStyle()(a1);
}

uint64_t ShutterButtonStyle.init(shutterModel:)()
{
  type metadata accessor for ShutterModel(0);
  OUTLINED_FUNCTION_1_189();
  lazy protocol witness table accessor for type ShutterModel and conformance ShutterModel(v0, v1, &protocol conformance descriptor for ShutterModel);
  OUTLINED_FUNCTION_46();
  ObservedObject.init(wrappedValue:)();
  State.init(wrappedValue:)();
  return OUTLINED_FUNCTION_46();
}

Swift::Int ShutterButtonStyle.InnerStyle.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1BFB22640](a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ShutterButtonStyle.InnerStyle(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  ShutterButtonStyle.InnerStyle.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

uint64_t key path getter for ShutterButtonStyle.shutterModel : ShutterButtonStyle@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = ShutterButtonStyle.shutterModel.getter();
  *a2 = v3;
  return result;
}

uint64_t ShutterButtonStyle.shutterModel.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

void ShutterButtonStyle.$shutterModel.getter()
{
  OUTLINED_FUNCTION_6_7();
  type metadata accessor for ShutterModel(0);
  OUTLINED_FUNCTION_1_189();
  lazy protocol witness table accessor for type ShutterModel and conformance ShutterModel(v0, v1, &protocol conformance descriptor for ShutterModel);

  JUMPOUT(0x1BFB1E3A0);
}

void ShutterButtonStyle.makeBody(configuration:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v21[5] = a5;
  type metadata accessor for AccessibilityChildBehavior();
  OUTLINED_FUNCTION_1();
  v21[1] = v12;
  v21[2] = v11;
  MEMORY[0x1EEE9AC00](v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyAA011StrokeShapeG0VyAA4PathVAA15ForegroundStyleVAA05EmptyG0VG_AA0G0PAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAIyAA08_TrimmedI0VyAKGAA04TintiL0VAOG_12CoreGraphics7CGFloatVQo_SgACyACyACyACyACyAA01_iG0VyAA9RectangleVAZGAA12_FrameLayoutVGAA11_ClipEffectVyAA07RoundedW0VGGAA18_AnimationModifierVySbGGA20_y15ConversationKit013ShutterButtonL0V05InnerL0OGGA21_GtGGA11_GMd, &_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyAA011StrokeShapeG0VyAA4PathVAA15ForegroundStyleVAA05EmptyG0VG_AA0G0PAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAIyAA08_TrimmedI0VyAKGAA04TintiL0VAOG_12CoreGraphics7CGFloatVQo_SgACyACyACyACyACyAA01_iG0VyAA9RectangleVAZGAA12_FrameLayoutVGAA11_ClipEffectVyAA07RoundedW0VGGAA18_AnimationModifierVySbGGA20_y15ConversationKit013ShutterButtonL0V05InnerL0OGGA21_GtGGA11_GMR);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = (v21 - v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAA6ZStackVyAA05TupleC0VyAA011StrokeShapeC0VyAA4PathVAA15ForegroundStyleVAA05EmptyC0VG_AcAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAOyAA08_TrimmedO0VyAQGAA04TintoR0VAUG_12CoreGraphics7CGFloatVQo_SgAIyAIyAIyAIyAIyAA01_oC0VyAA9RectangleVA2_GAA12_FrameLayoutVGAA11_ClipEffectVyAA16RoundedRectangleVGGAA18_AnimationModifierVySbGGA24_y15ConversationKit013ShutterButtonR0V05InnerR0OGGA25_GtGGA15_G_Qo_Md, &_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAA6ZStackVyAA05TupleC0VyAA011StrokeShapeC0VyAA4PathVAA15ForegroundStyleVAA05EmptyC0VG_AcAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAOyAA08_TrimmedO0VyAQGAA04TintoR0VAUG_12CoreGraphics7CGFloatVQo_SgAIyAIyAIyAIyAIyAA01_oC0VyAA9RectangleVA2_GAA12_FrameLayoutVGAA11_ClipEffectVyAA16RoundedRectangleVGGAA18_AnimationModifierVySbGGA24_y15ConversationKit013ShutterButtonR0V05InnerR0OGGA25_GtGGA15_G_Qo_MR);
  OUTLINED_FUNCTION_1();
  v21[3] = v16;
  v21[4] = v17;
  MEMORY[0x1EEE9AC00](v16);
  v21[0] = v21 - v18;
  *v15 = static Alignment.center.getter();
  v15[1] = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA05TupleD0VyAA011StrokeShapeD0VyAA4PathVAA15ForegroundStyleVAA05EmptyD0VG_AA0D0PAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAKyAA08_TrimmedJ0VyAMGAA04TintjM0VAQG_12CoreGraphics7CGFloatVQo_SgAA15ModifiedContentVyA8_yA8_yA8_yA8_yAA01_jD0VyAA9RectangleVA0_GAA06_FrameG0VGAA11_ClipEffectVyAA07RoundedZ0VGGAA18_AnimationModifierVySbGGA24_y15ConversationKit013ShutterButtonM0V05InnerM0OGGA25_GtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA05TupleD0VyAA011StrokeShapeD0VyAA4PathVAA15ForegroundStyleVAA05EmptyD0VG_AA0D0PAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAKyAA08_TrimmedJ0VyAMGAA04TintjM0VAQG_12CoreGraphics7CGFloatVQo_SgAA15ModifiedContentVyA8_yA8_yA8_yA8_yAA01_jD0VyAA9RectangleVA0_GAA06_FrameG0VGAA11_ClipEffectVyAA07RoundedZ0VGGAA18_AnimationModifierVySbGGA24_y15ConversationKit013ShutterButtonM0V05InnerM0OGGA25_GtGGMR);
  closure #1 in ShutterButtonStyle.makeBody(configuration:)(a2, a3, a4, a1, v15 + *(v20 + 44), a6);
}

void closure #1 in ShutterButtonStyle.makeBody(configuration:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v86 = a4;
  v88 = a5;
  v74 = type metadata accessor for RoundedRectangle();
  MEMORY[0x1EEE9AC00](v74);
  v81 = (&v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVyAA9RectangleVAA04TintE5StyleVGAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVyAA9RectangleVAA04TintE5StyleVGAA12_FrameLayoutVGMR);
  MEMORY[0x1EEE9AC00](v70);
  v78 = &v63 - v11;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA10_ShapeViewVyAA9RectangleVAA04TintE5StyleVGAA12_FrameLayoutVGAA11_ClipEffectVyAA07RoundedG0VGGMd, &_s7SwiftUI15ModifiedContentVyACyAA10_ShapeViewVyAA9RectangleVAA04TintE5StyleVGAA12_FrameLayoutVGAA11_ClipEffectVyAA07RoundedG0VGGMR);
  MEMORY[0x1EEE9AC00](v73);
  v79 = &v63 - v12;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA10_ShapeViewVyAA9RectangleVAA04TintE5StyleVGAA12_FrameLayoutVGAA11_ClipEffectVyAA07RoundedG0VGGAA18_AnimationModifierVySbGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA10_ShapeViewVyAA9RectangleVAA04TintE5StyleVGAA12_FrameLayoutVGAA11_ClipEffectVyAA07RoundedG0VGGAA18_AnimationModifierVySbGGMR);
  MEMORY[0x1EEE9AC00](v76);
  v83 = &v63 - v13;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA10_ShapeViewVyAA9RectangleVAA04TintE5StyleVGAA12_FrameLayoutVGAA11_ClipEffectVyAA07RoundedG0VGGAA18_AnimationModifierVySbGGAUy15ConversationKit013ShutterButtonI0V05InnerI0OGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA10_ShapeViewVyAA9RectangleVAA04TintE5StyleVGAA12_FrameLayoutVGAA11_ClipEffectVyAA07RoundedG0VGGAA18_AnimationModifierVySbGGAUy15ConversationKit013ShutterButtonI0V05InnerI0OGGMR);
  MEMORY[0x1EEE9AC00](v80);
  v84 = &v63 - v14;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA10_ShapeViewVyAA9RectangleVAA04TintE5StyleVGAA12_FrameLayoutVGAA11_ClipEffectVyAA07RoundedG0VGGAA18_AnimationModifierVySbGGAUy15ConversationKit013ShutterButtonI0V05InnerI0OGGAVGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA10_ShapeViewVyAA9RectangleVAA04TintE5StyleVGAA12_FrameLayoutVGAA11_ClipEffectVyAA07RoundedG0VGGAA18_AnimationModifierVySbGGAUy15ConversationKit013ShutterButtonI0V05InnerI0OGGAVGMR);
  MEMORY[0x1EEE9AC00](v82);
  v87 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v77 = &v63 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v85 = &v63 - v19;
  v20 = type metadata accessor for TintShapeStyle();
  v65 = *(v20 - 8);
  v66 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15StrokeShapeViewVyAA08_TrimmedD0VyAA4PathVGAA04TintD5StyleVAA05EmptyE0VGMd, &_s7SwiftUI15StrokeShapeViewVyAA08_TrimmedD0VyAA4PathVGAA04TintD5StyleVAA05EmptyE0VGMR);
  MEMORY[0x1EEE9AC00](v69);
  v24 = &v63 - v23;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA011StrokeShapeC0VyAA08_TrimmedI0VyAA4PathVGAA04TintI5StyleVAA05EmptyC0VG_12CoreGraphics7CGFloatVQo_Md, &_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA011StrokeShapeC0VyAA08_TrimmedI0VyAA4PathVGAA04TintI5StyleVAA05EmptyC0VG_12CoreGraphics7CGFloatVQo_MR);
  v68 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v67 = &v63 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA011StrokeShapeC0VyAA08_TrimmedI0VyAA4PathVGAA04TintI5StyleVAA05EmptyC0VG_12CoreGraphics7CGFloatVQo_SgMd, &_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA011StrokeShapeC0VyAA08_TrimmedI0VyAA4PathVGAA04TintI5StyleVAA05EmptyC0VG_12CoreGraphics7CGFloatVQo_SgMR);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v75 = &v63 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v90 = a1;
  v91 = &v63 - v29;
  v92 = a1;
  v93 = a2;
  v94 = a6;
  v95 = a3;
  v30 = Path.init(_:)();
  v31 = *(*a2 + 368);
  v31(v30);
  v32 = 1;
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v33 = static Alignment.center.getter();
  v71 = v34;
  v72 = v33;
  v35 = (*(*a2 + 512))();
  if (v35)
  {
    MEMORY[0x1EEE9AC00](v35);
    v36 = v90;
    *(&v63 - 4) = v90;
    *(&v63 - 3) = a2;
    *(&v63 - 2) = a6;
    *(&v63 - 1) = a3;
    Path.init(_:)();
    v37 = v104;
    v63 = v103;
    v64 = v102;
    v100 = a6;
    v101 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy12CoreGraphics7CGFloatVGMd, &_s7SwiftUI5StateVy12CoreGraphics7CGFloatVGMR);
    State.wrappedValue.getter();
    v38 = v99;
    v39 = TintShapeStyle.init()();
    v31(v39);
    StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10_ShapeViewVyAA08_StrokedC0VyAA08_TrimmedC0VyAA4PathVGGAA04TintC5StyleVGMd, &_s7SwiftUI10_ShapeViewVyAA08_StrokedC0VyAA08_TrimmedC0VyAA4PathVGGAA04TintC5StyleVGMR);
    v42 = v65;
    v41 = v66;
    (*(v65 + 16))(&v24[*(v40 + 52)], v22, v66);
    v43 = v63;
    *v24 = v64;
    *(v24 + 1) = v43;
    v24[32] = v37;
    *(v24 + 5) = 0;
    *(v24 + 6) = v38;
    v44 = v97;
    *(v24 + 56) = v96;
    *(v24 + 72) = v44;
    *(v24 + 11) = v98;
    *&v24[*(v40 + 56)] = 256;
    v45 = static Alignment.center.getter();
    v47 = v46;
    (*(v42 + 8))(v22, v41);
    v48 = &v24[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVyAA08_StrokedE0VyAA08_TrimmedE0VyAA4PathVGGAA04TintE5StyleVGAA19_BackgroundModifierVyAA05EmptyF0VGGMd, &_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVyAA08_StrokedE0VyAA08_TrimmedE0VyAA4PathVGGAA04TintE5StyleVGAA19_BackgroundModifierVyAA05EmptyF0VGGMR) + 36)];
    *v48 = v45;
    v48[1] = v47;
    v100 = (*(*a2 + 176))();
    v49 = swift_allocObject();
    *(v49 + 16) = v36;
    *(v49 + 24) = a2;
    *(v49 + 32) = a6;
    *(v49 + 40) = a3;
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type StrokeShapeView<_TrimmedShape<Path>, TintShapeStyle, EmptyView> and conformance StrokeShapeView<A, B, C>, &_s7SwiftUI15StrokeShapeViewVyAA08_TrimmedD0VyAA4PathVGAA04TintD5StyleVAA05EmptyE0VGMd, &_s7SwiftUI15StrokeShapeViewVyAA08_TrimmedD0VyAA4PathVGAA04TintD5StyleVAA05EmptyE0VGMR, MEMORY[0x1E697E8C0]);
    lazy protocol witness table accessor for type CGFloat and conformance CGFloat();

    v50 = v67;
    View.onChange<A>(of:initial:_:)();

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v24, &_s7SwiftUI15StrokeShapeViewVyAA08_TrimmedD0VyAA4PathVGAA04TintD5StyleVAA05EmptyE0VGMd, &_s7SwiftUI15StrokeShapeViewVyAA08_TrimmedD0VyAA4PathVGAA04TintD5StyleVAA05EmptyE0VGMR);
    (*(v68 + 32))(v91, v50, v89);
    v32 = 0;
  }

  __swift_storeEnumTagSinglePayload(v91, v32, 1, v89);
  v51 = v78;
  TintShapeStyle.init()();
  *&v51[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10_ShapeViewVyAA9RectangleVAA04TintC5StyleVGMd, &_s7SwiftUI10_ShapeViewVyAA9RectangleVAA04TintC5StyleVGMR) + 56)] = 256;
  v52 = v86;
  v53 = v90;
  ShutterButtonStyle.rectangleSize(from:)(v86, v90, a2, a3, a6);
  ShutterButtonStyle.rectangleSize(from:)(v52, v53, a2, a3, a6);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v54 = &v51[*(v70 + 36)];
  v55 = v105[1];
  *v54 = v105[0];
  *(v54 + 1) = v55;
  *(v54 + 2) = v105[2];
  if (ShutterButtonStyle.resolvedMode(from:)(v52, v53, a2) == 1)
  {
    v56 = 0.5;
  }

  else
  {
    v56 = 0.125;
  }

  v57 = ShutterButtonStyle.rectangleSize(from:)(v52, v53, a2, a3, a6) * v56;
  v58 = *(v74 + 20);
  v59 = *MEMORY[0x1E697F468];
  v60 = type metadata accessor for RoundedCornerStyle();
  v61 = v81;
  (*(*(v60 - 8) + 104))(v81 + v58, v59, v60);
  *v61 = v57;
  v61[1] = v57;
  v62 = &v79[*(v73 + 36)];
  outlined init with take of RoundedRectangle(v61, v62);
  *(v62 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11_ClipEffectVyAA16RoundedRectangleVGMd, &_s7SwiftUI11_ClipEffectVyAA16RoundedRectangleVGMR) + 36)) = 256;
  outlined init with take of CaptionSectioner.SpeakerSection?();
  static Animation.interactiveSpring(duration:extraBounce:blendDuration:)();
}

uint64_t sub_1BC3E7B84(uint64_t a1, double a2)
{
  v6 = ButtonStyleConfiguration.isPressed.getter();
  v7 = *(v2 + 184);
  outlined init with take of CaptionSectioner.SpeakerSection?();
  v8 = v7 + *(*(v2 + 128) + 36);
  *v8 = a1;
  *(v8 + 8) = v6 & 1;
  v9 = static Animation.easeInOut(duration:)();
  v10 = (*(*v3 + 272))();
  v11 = *(v2 + 192);
  outlined init with take of CaptionSectioner.SpeakerSection?();
  v12 = v11 + *(*(v2 + 160) + 36);
  *v12 = v9;
  *(v12 + 8) = v10;
  v13 = static Animation.easeInOut(duration:)();
  v14 = (*(*v3 + 224))();
  v15 = *(v2 + 136);
  outlined init with take of CaptionSectioner.SpeakerSection?();
  v16 = v15 + *(*(v2 + 176) + 36);
  *v16 = v13;
  *(v16 + 8) = v14 & 1;
  v17 = *(v2 + 200);
  outlined init with take of CaptionSectioner.SpeakerSection?();
  v18 = *(v2 + 120);
  sub_1BBD055B8();
  v19 = *(v2 + 216);
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  memcpy((v2 + 352), (v2 + 560), 0x50uLL);
  *(v2 + 432) = 256;
  *(v2 + 434) = *(v4 - 118);
  *(v2 + 438) = *(v4 - 114);
  v20 = *(v2 + 88);
  v21 = *(v2 + 96);
  *(v2 + 440) = v21;
  *(v2 + 448) = v20;
  memcpy(*(v2 + 224), (v2 + 352), 0x68uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15StrokeShapeViewVyAA4PathVAA15ForegroundStyleVAA05EmptyE0VG_AA0E0PAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyACyAA08_TrimmedD0VyAEGAA04TintdH0VAIG_12CoreGraphics7CGFloatVQo_SgAA15ModifiedContentVyA0_yA0_yA0_yA0_yAA01_dE0VyAA9RectangleVATGAA12_FrameLayoutVGAA11_ClipEffectVyAA07RoundedU0VGGAA18_AnimationModifierVySbGGA16_y15ConversationKit013ShutterButtonH0V05InnerH0OGGA17_GtMd, &_s7SwiftUI15StrokeShapeViewVyAA4PathVAA15ForegroundStyleVAA05EmptyE0VG_AA0E0PAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyACyAA08_TrimmedD0VyAEGAA04TintdH0VAIG_12CoreGraphics7CGFloatVQo_SgAA15ModifiedContentVyA0_yA0_yA0_yA0_yAA01_dE0VyAA9RectangleVATGAA12_FrameLayoutVGAA11_ClipEffectVyAA07RoundedU0VGGAA18_AnimationModifierVySbGGA16_y15ConversationKit013ShutterButtonH0V05InnerH0OGGA17_GtMR);
  sub_1BBD055B8();
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v17, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA10_ShapeViewVyAA9RectangleVAA04TintE5StyleVGAA12_FrameLayoutVGAA11_ClipEffectVyAA07RoundedG0VGGAA18_AnimationModifierVySbGGAUy15ConversationKit013ShutterButtonI0V05InnerI0OGGAVGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA10_ShapeViewVyAA9RectangleVAA04TintE5StyleVGAA12_FrameLayoutVGAA11_ClipEffectVyAA07RoundedG0VGGAA18_AnimationModifierVySbGGAUy15ConversationKit013ShutterButtonI0V05InnerI0OGGAVGMR);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(*(v2 + 248), &_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA011StrokeShapeC0VyAA08_TrimmedI0VyAA4PathVGAA04TintI5StyleVAA05EmptyC0VG_12CoreGraphics7CGFloatVQo_SgMd, &_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA011StrokeShapeC0VyAA08_TrimmedI0VyAA4PathVGAA04TintI5StyleVAA05EmptyC0VG_12CoreGraphics7CGFloatVQo_SgMR);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v19, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA10_ShapeViewVyAA9RectangleVAA04TintE5StyleVGAA12_FrameLayoutVGAA11_ClipEffectVyAA07RoundedG0VGGAA18_AnimationModifierVySbGGAUy15ConversationKit013ShutterButtonI0V05InnerI0OGGAVGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA10_ShapeViewVyAA9RectangleVAA04TintE5StyleVGAA12_FrameLayoutVGAA11_ClipEffectVyAA07RoundedG0VGGAA18_AnimationModifierVySbGGAUy15ConversationKit013ShutterButtonI0V05InnerI0OGGAVGMR);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v18, &_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA011StrokeShapeC0VyAA08_TrimmedI0VyAA4PathVGAA04TintI5StyleVAA05EmptyC0VG_12CoreGraphics7CGFloatVQo_SgMd, &_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA011StrokeShapeC0VyAA08_TrimmedI0VyAA4PathVGAA04TintI5StyleVAA05EmptyC0VG_12CoreGraphics7CGFloatVQo_SgMR);
  memcpy((v2 + 456), (v2 + 560), 0x50uLL);
  *(v2 + 536) = 256;
  *(v2 + 538) = *(v4 - 118);
  *(v2 + 542) = *(v4 - 114);
  *(v2 + 544) = v21;
  *(v2 + 552) = v20;
  return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v2 + 456, &_s7SwiftUI15StrokeShapeViewVyAA4PathVAA15ForegroundStyleVAA05EmptyE0VGMd, &_s7SwiftUI15StrokeShapeViewVyAA4PathVAA15ForegroundStyleVAA05EmptyE0VGMR);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ZStack<TupleView<(StrokeShapeView<Path, ForegroundStyle, EmptyView>, (<<opaque return type of View.onChange<A>(of:initial:_:)>>.0)?, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Rectangle, TintShapeStyle>, _FrameLayout>, _ClipEffect<RoundedRectangle>>, _AnimationModifier<Bool>>, _AnimationModifier<ShutterButtonStyle.InnerStyle>>, _AnimationModifier<Bool>>)>>, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(StrokeShapeView<Path, ForegroundStyle, EmptyView>, (<<opaque return type of View.onChange<A>(of:initial:_:)>>.0)?, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Rectangle, TintShapeStyle>, _FrameLayout>, _ClipEffect<RoundedRectangle>>, _AnimationModifier<Bool>>, _AnimationModifier<ShutterButtonStyle.InnerStyle>>, _AnimationModifier<Bool>>)>>, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(StrokeShapeView<Path, ForegroundStyle, EmptyView>, (<<opaque return type of View.onChange<A>(of:initial:_:)>>.0)?, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Rectangle, TintShapeStyle>, _FrameLayout>, _ClipEffect<RoundedRectangle>>, _AnimationModifier<Bool>>, _AnimationModifier<ShutterButtonStyle.InnerStyle>>, _AnimationModifier<Bool>>)>>, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyAA011StrokeShapeG0VyAA4PathVAA15ForegroundStyleVAA05EmptyG0VG_AA0G0PAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAIyAA08_TrimmedI0VyAKGAA04TintiL0VAOG_12CoreGraphics7CGFloatVQo_SgACyACyACyACyACyAA01_iG0VyAA9RectangleVAZGAA12_FrameLayoutVGAA11_ClipEffectVyAA07RoundedW0VGGAA18_AnimationModifierVySbGGA20_y15ConversationKit013ShutterButtonL0V05InnerL0OGGA21_GtGGA11_GMd, &_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyAA011StrokeShapeG0VyAA4PathVAA15ForegroundStyleVAA05EmptyG0VG_AA0G0PAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAIyAA08_TrimmedI0VyAKGAA04TintiL0VAOG_12CoreGraphics7CGFloatVQo_SgACyACyACyACyACyAA01_iG0VyAA9RectangleVAZGAA12_FrameLayoutVGAA11_ClipEffectVyAA07RoundedW0VGGAA18_AnimationModifierVySbGGA20_y15ConversationKit013ShutterButtonL0V05InnerL0OGGA21_GtGGA11_GMR);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type ZStack<TupleView<(StrokeShapeView<Path, ForegroundStyle, EmptyView>, (<<opaque return type of View.onChange<A>(of:initial:_:)>>.0)?, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Rectangle, TintShapeStyle>, _FrameLayout>, _ClipEffect<RoundedRectangle>>, _AnimationModifier<Bool>>, _AnimationModifier<ShutterButtonStyle.InnerStyle>>, _AnimationModifier<Bool>>)>> and conformance ZStack<A>, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA011StrokeShapeE0VyAA4PathVAA15ForegroundStyleVAA05EmptyE0VG_AA0E0PAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAGyAA08_TrimmedG0VyAIGAA04TintgJ0VAMG_12CoreGraphics7CGFloatVQo_SgAA15ModifiedContentVyA4_yA4_yA4_yA4_yAA01_gE0VyAA9RectangleVAXGAA12_FrameLayoutVGAA11_ClipEffectVyAA07RoundedW0VGGAA18_AnimationModifierVySbGGA20_y15ConversationKit013ShutterButtonJ0V05InnerJ0OGGA21_GtGGMd, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA011StrokeShapeE0VyAA4PathVAA15ForegroundStyleVAA05EmptyE0VG_AA0E0PAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAGyAA08_TrimmedG0VyAIGAA04TintgJ0VAMG_12CoreGraphics7CGFloatVQo_SgAA15ModifiedContentVyA4_yA4_yA4_yA4_yAA01_gE0VyAA9RectangleVAXGAA12_FrameLayoutVGAA11_ClipEffectVyAA07RoundedW0VGGAA18_AnimationModifierVySbGGA20_y15ConversationKit013ShutterButtonJ0V05InnerJ0OGGA21_GtGGMR, MEMORY[0x1E6981880]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(StrokeShapeView<Path, ForegroundStyle, EmptyView>, (<<opaque return type of View.onChange<A>(of:initial:_:)>>.0)?, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Rectangle, TintShapeStyle>, _FrameLayout>, _ClipEffect<RoundedRectangle>>, _AnimationModifier<Bool>>, _AnimationModifier<ShutterButtonStyle.InnerStyle>>, _AnimationModifier<Bool>>)>>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ShutterButtonStyle.InnerStyle and conformance ShutterButtonStyle.InnerStyle()
{
  result = lazy protocol witness table cache variable for type ShutterButtonStyle.InnerStyle and conformance ShutterButtonStyle.InnerStyle;
  if (!lazy protocol witness table cache variable for type ShutterButtonStyle.InnerStyle and conformance ShutterButtonStyle.InnerStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShutterButtonStyle.InnerStyle and conformance ShutterButtonStyle.InnerStyle);
  }

  return result;
}

uint64_t closure #1 in closure #1 in ShutterButtonStyle.makeBody(configuration:)(double *a1, double *a2, uint64_t a3, double *a4, uint64_t a5, double a6)
{
  ShutterButtonStyle.duration(from:to:)(*a1, *a2, a3, a4);
  static Animation.linear(duration:)();
  withAnimation<A>(_:_:)();
}

double ShutterButtonStyle.duration(from:to:)(double a1, double a2, uint64_t a3, double *a4)
{
  v4 = 0.0;
  if (a1 < a2 && ((*(*a4 + 224))(a3) & 1) == 0)
  {
    return (a2 - a1) * a4[2];
  }

  return v4;
}

double ShutterButtonStyle.rectangleSize(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v8 = (*(*a3 + 416))();
  v9 = (*a3 + 368);
  v10 = *v9;
  v11 = (*v9)();
  v12 = ButtonStyleConfiguration.isPressed.getter();
  v13 = 0.0;
  if (v12)
  {
    v13 = 3.0;
  }

  v14 = v8 + v11 + v13;
  if (ShutterButtonStyle.resolvedMode(from:)(a1, a2, a3) != 1)
  {
    v14 = v14 + (*(*a3 + 320))() * 0.24;
  }

  v15 = (*a3 + 320);
  v16 = *v15;
  v17 = (*v15)();
  v18 = v10();
  v19 = v17 + v18 + v18;
  v20 = v16();
  (v10)(v20);
  return v19 - (v14 + v14);
}

_BYTE *storeEnumTagSinglePayload for ShutterButtonStyle.InnerStyle(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ShutterModel and conformance ShutterModel(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t closure #1 in ShutterButtonStyle.circlePath()(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = (*a3 + 320);
  v5 = *v4;
  (*v4)(a1, a2);
  v6 = (*a3 + 368);
  v7 = *v6;
  (*v6)();
  v5();
  v7();
  v5();
  v7();
  return Path.addArc(center:radius:startAngle:endAngle:clockwise:transform:)();
}

uint64_t ShutterButtonStyle.resolvedMode(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (*a3 + 272);
  v5 = *v4;
  if ((*v4)(a1, a2) != 2)
  {
    return v5();
  }

  v6 = ButtonStyleConfiguration.isPressed.getter();
  return (*(*a3 + 224))() & ~v6 & 1;
}

uint64_t outlined init with take of RoundedRectangle(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RoundedRectangle();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *PeoplePickerActionBar.__allocating_init(frame:buttonsStyle:)(uint64_t a1)
{
  v2 = a1;
  OUTLINED_FUNCTION_20_2();
  v3 = objc_allocWithZone(v1);
  OUTLINED_FUNCTION_18_1();
  return PeoplePickerActionBar.init(frame:buttonsStyle:)(v2);
}

ConversationKit::RTTType_optional __swiftcall RTTType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of RTTType.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t RTTType.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 1701736302;
  }

  if (a1 == 1)
  {
    return 0x746365726964;
  }

  return 0x79616C6572;
}

ConversationKit::RTTType_optional protocol witness for RawRepresentable.init(rawValue:) in conformance RTTType@<W0>(Swift::String *a1@<X0>, ConversationKit::RTTType_optional *a2@<X8>)
{
  result.value = RTTType.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance RTTType@<X0>(uint64_t *a1@<X8>)
{
  result = RTTType.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t PeoplePickerAction.description.getter(uint64_t a1, unsigned __int8 a2)
{
  if (a2 >> 6)
  {
    if (a2 >> 6 == 1)
    {
      return 0x4C6574616572632ELL;
    }

    else
    {
      result = 0x695674726174732ELL;
      switch(a1)
      {
        case 1:
          return result;
        case 2:
          result = 0x737265506464612ELL;
          break;
        case 3:
          result = 0xD000000000000016;
          break;
        case 4:
          result = 0x654D69646E65732ELL;
          break;
        case 5:
          result = 0x6C65636E61632ELL;
          break;
        default:
          result = 0xD000000000000017;
          break;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      return 0xD000000000000025;
    }

    else
    {
      return 0xD000000000000024;
    }
  }

  else
  {
    return 0xD000000000000013;
  }

  return result;
}

uint64_t static ActionBarButtonsStyle.== infix(_:_:)(char a1, char a2)
{
  switch(a1)
  {
    case 2:
      if (a2 != 2)
      {
        goto LABEL_11;
      }

      break;
    case 3:
      if (a2 != 3)
      {
        goto LABEL_11;
      }

      break;
    case 4:
      if (a2 != 4)
      {
LABEL_11:
        v2 = 0;
        return v2 & 1;
      }

      break;
    default:
      if ((a2 - 2) >= 3u)
      {
        v2 = a2 ^ a1 ^ 1;
        return v2 & 1;
      }

      goto LABEL_11;
  }

  v2 = 1;
  return v2 & 1;
}

uint64_t key path getter for PeoplePickerActionBar.delegate : PeoplePickerActionBar@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x110))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for PeoplePickerActionBar.delegate : PeoplePickerActionBar(uint64_t a1, void **a2)
{
  v2 = *(a1 + 8);
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x118);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t PeoplePickerActionBar.delegate.getter()
{
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t PeoplePickerActionBar.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t PeoplePickerActionBar.delegate.modify(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar_delegate;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  OUTLINED_FUNCTION_30_2(v5, v3);
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v7;
  return OUTLINED_FUNCTION_28_3();
}

uint64_t key path getter for PeoplePickerActionBar.buttonsStyle : PeoplePickerActionBar@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x128))();
  *a2 = result;
  return result;
}

void PeoplePickerActionBar.buttonsStyle.didset(int a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar_buttonsStyle;
  swift_beginAccess();
  v4 = *(v1 + v3);
  switch(v4)
  {
    case 2:
      if (a1 == 2)
      {
        return;
      }

      break;
    case 3:
      if (a1 == 3)
      {
        return;
      }

      break;
    case 4:
      if (a1 == 4)
      {
        return;
      }

      break;
    default:
      if ((a1 - 2) >= 3u && ((v4 ^ a1) & 1) == 0)
      {
        return;
      }

      break;
  }

  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  v5 = static OS_os_log.conversationKit;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1BC4BA940;
  v7 = String.init<A>(reflecting:)();
  v9 = v8;
  *(v6 + 56) = MEMORY[0x1E69E6158];
  *(v6 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v6 + 32) = v7;
  *(v6 + 40) = v9;
  v10 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("People picker button style updated: %@", 38, 2, &dword_1BBC58000, v5, v10, v6);

  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x3C0))(v11);
}

uint64_t PeoplePickerActionBar.buttonsStyle.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar_buttonsStyle;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  return *(v0 + v1);
}

void PeoplePickerActionBar.buttonsStyle.setter(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar_buttonsStyle;
  OUTLINED_FUNCTION_3_12(a1);
  v4 = *(v1 + v3);
  *(v1 + v3) = v2;
  PeoplePickerActionBar.buttonsStyle.didset(v4);
}

uint64_t PeoplePickerActionBar.buttonsStyle.modify()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  OUTLINED_FUNCTION_18_7(v2);
  v3 = OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar_buttonsStyle;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  *(v1 + 32) = *(v0 + v3);
  return OUTLINED_FUNCTION_28_3();
}

void PeoplePickerActionBar.buttonsStyle.modify(uint64_t a1)
{
  v1 = *a1;
  PeoplePickerActionBar.buttonsStyle.setter(*(*a1 + 32));

  free(v1);
}

uint64_t key path getter for PeoplePickerActionBar.handleToDisplay : PeoplePickerActionBar@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x140))();
  *a2 = result;
  return result;
}

uint64_t key path setter for PeoplePickerActionBar.handleToDisplay : PeoplePickerActionBar(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x148);
  v4 = *a1;
  return v3(v2);
}

void *PeoplePickerActionBar.handleToDisplay.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar_handleToDisplay;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void PeoplePickerActionBar.handleToDisplay.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar_handleToDisplay;
  OUTLINED_FUNCTION_3_12(a1);
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t key path getter for PeoplePickerActionBar.generatingLinksEnabled : PeoplePickerActionBar@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x158))();
  *a2 = result & 1;
  return result;
}

void PeoplePickerActionBar.generatingLinksEnabled.didset(char a1)
{
  v2 = a1 & 1;
  v3 = OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar_generatingLinksEnabled;
  swift_beginAccess();
  if (*(v1 + v3) != v2)
  {
    PeoplePickerActionBar.updateLinkButtonsEnabled()();
  }
}

uint64_t PeoplePickerActionBar.generatingLinksEnabled.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar_generatingLinksEnabled;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  return *(v0 + v1);
}

void PeoplePickerActionBar.generatingLinksEnabled.setter(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar_generatingLinksEnabled;
  OUTLINED_FUNCTION_3_12(a1);
  v4 = *(v1 + v3);
  *(v1 + v3) = v2;
  PeoplePickerActionBar.generatingLinksEnabled.didset(v4);
}

uint64_t PeoplePickerActionBar.generatingLinksEnabled.modify()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  OUTLINED_FUNCTION_18_7(v2);
  v3 = OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar_generatingLinksEnabled;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  *(v1 + 32) = *(v0 + v3);
  return OUTLINED_FUNCTION_28_3();
}

void PeoplePickerActionBar.generatingLinksEnabled.modify(uint64_t a1)
{
  v1 = *a1;
  PeoplePickerActionBar.generatingLinksEnabled.setter(*(*a1 + 32));

  free(v1);
}

int8x8_t key path getter for PeoplePickerActionBar.serviceAvailability : PeoplePickerActionBar@<D0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x170))();
  *a2 = v3 & 1;
  v4 = vdupq_n_s64(v3);
  *v4.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v4, xmmword_1BC4DFB90), vshlq_u64(v4, xmmword_1BC4DFB80))), 0x1000100010001);
  result = vuzp1_s8(*v4.i8, *v4.i8);
  *(a2 + 1) = result.i32[0];
  *(a2 + 5) = BYTE5(v3) & 1;
  return result;
}

uint64_t key path setter for PeoplePickerActionBar.serviceAvailability : PeoplePickerActionBar(unsigned __int8 *a1, void **a2)
{
  v2 = 0x10000000000;
  if (!a1[5])
  {
    v2 = 0;
  }

  v3 = 0x100000000;
  if (!a1[4])
  {
    v3 = 0;
  }

  v4 = 0x1000000;
  if (!a1[3])
  {
    v4 = 0;
  }

  v5 = 0x10000;
  if (!a1[2])
  {
    v5 = 0;
  }

  v6 = 256;
  if (!a1[1])
  {
    v6 = 0;
  }

  return (*((*MEMORY[0x1E69E7D40] & **a2) + 0x178))(v6 | *a1 | v5 | v4 | v3 | v2);
}

void PeoplePickerActionBar.serviceAvailability.didset(unint64_t a1)
{
  v3 = a1 & 1;
  v4 = v1 + OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar_serviceAvailability;
  swift_beginAccess();
  if (*v4 != v3 || (((a1 >> 8) & 1 ^ v4[1]) & 1) != 0 || (((a1 >> 16) & 1 ^ v4[2]) & 1) != 0 || (((a1 >> 24) & 1 ^ v4[3]) & 1) != 0 || ((BYTE4(a1) & 1 ^ v4[4]) & 1) != 0 || (((a1 >> 40) & 1 ^ v4[5]) & 1) != 0)
  {
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v5 = static OS_os_log.conversationKit;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1BC4BA940;
    v7 = String.init<A>(reflecting:)();
    v9 = v8;
    *(v6 + 56) = MEMORY[0x1E69E6158];
    *(v6 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v6 + 32) = v7;
    *(v6 + 40) = v9;
    v10 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Service availability updated: %@", 32, 2, &dword_1BBC58000, v5, v10, v6);

    (*((*MEMORY[0x1E69E7D40] & *v1) + 0x3C0))(v11);
  }
}

uint64_t PeoplePickerActionBar.serviceAvailability.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar_serviceAvailability);
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  return OUTLINED_FUNCTION_3_170(*v1);
}

void PeoplePickerActionBar.serviceAvailability.setter(unint64_t a1)
{
  v3 = (v1 + OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar_serviceAvailability);
  swift_beginAccess();
  v4 = *v3;
  *v3 = a1 & 1;
  v5 = vdupq_n_s64(a1);
  *v5.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v5, xmmword_1BC4DFB90), vshlq_u64(v5, xmmword_1BC4DFB80))), 0x1000100010001);
  *(v3 + 1) = vuzp1_s8(*v5.i8, *v5.i8).u32[0];
  v3[5] = BYTE5(a1) & 1;
  v6 = OUTLINED_FUNCTION_3_170(v4);
  PeoplePickerActionBar.serviceAvailability.didset(v6);
}

uint64_t PeoplePickerActionBar.serviceAvailability.modify()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  OUTLINED_FUNCTION_18_7(v2);
  v3 = (v0 + OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar_serviceAvailability);
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[3];
  v7 = v3[4];
  v8 = v3[5];
  *(v1 + 32) = *v3;
  v9 = (v1 + 32);
  v9[1] = v4;
  v9[2] = v5;
  v9[3] = v6;
  v9[4] = v7;
  v9[5] = v8;
  return OUTLINED_FUNCTION_28_3();
}

void PeoplePickerActionBar.serviceAvailability.modify(uint64_t a1)
{
  v1 = *a1;
  v2 = OUTLINED_FUNCTION_3_170(*(*a1 + 32));
  PeoplePickerActionBar.serviceAvailability.setter(v2);

  free(v1);
}

id closure #1 in PeoplePickerActionBar.videoButton.getter()
{
  v0 = objc_opt_self();
  v1 = [v0 conversationKit];
  v14._object = 0xE000000000000000;
  v2._countAndFlagsBits = 0x454D495445434146;
  v2._object = 0xE800000000000000;
  v3.value._countAndFlagsBits = 0x61737265766E6F43;
  v3.value._object = 0xEF74694B6E6F6974;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v14._countAndFlagsBits = 0;
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v3, v1, v4, v14);

  v6 = static PeoplePickerActionBar.createPeoplePickerButton(title:symbolName:)(v5._countAndFlagsBits, v5._object, 0x69662E6F65646976, 0xEA00000000006C6CLL);

  v7 = v6;
  v8 = [v0 conversationKit];
  v15._object = 0xE000000000000000;
  v9._object = 0xEE004F454449565FLL;
  v9._countAndFlagsBits = 0x454D495445434146;
  v10.value._countAndFlagsBits = 0x61737265766E6F43;
  v10.value._object = 0xEF74694B6E6F6974;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  v15._countAndFlagsBits = 0;
  v12 = NSLocalizedString(_:tableName:bundle:value:comment:)(v9, v10, v8, v11, v15);

  outlined bridged method (mbnn) of @objc NSObject.accessibilityLabel.setter(v12._countAndFlagsBits, v12._object, v7);
  return v7;
}

id static PeoplePickerActionBar.createPeoplePickerButton(title:symbolName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for UITraitOverrides();
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v20 - v10;
  v12 = [objc_opt_self() buttonWithType_];
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  [v12 setShowsLargeContentViewer_];

  v13 = [objc_allocWithZone(MEMORY[0x1E69DCC18]) init];
  [v12 addInteraction_];

  static PeoplePickerActionBar.createButtonBaseConfiguration(title:symbolName:titleLineBreakMode:)(a1, a2, a3, a4, 5, 0);
  v14 = type metadata accessor for UIButton.Configuration();
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v14);
  UIButton.configuration.setter();
  [v12 setPreferredBehavioralStyle_];
  [v12 setPointerInteractionEnabled_];
  v15 = [v12 titleLabel];
  if (v15)
  {
    v16 = v15;
    UIView.traitOverrides.getter();
    UIMutableTraits._userInterfaceRenderingMode.setter();
    UIView.traitOverrides.setter();
  }

  v17 = [v12 imageView];
  if (v17)
  {
    v18 = v17;
    UIView.traitOverrides.getter();
    UIMutableTraits._userInterfaceRenderingMode.setter();
    UIView.traitOverrides.setter();
  }

  return v12;
}

id closure #1 in PeoplePickerActionBar.audioButton.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMR);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v17 - v1;
  v3 = [objc_opt_self() buttonWithType_];
  type metadata accessor for PeoplePickerActionBar(0);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage, 0x1E69DCAB8);
  v4 = @nonobjc UIImage.__allocating_init(systemName:)(0x69662E656E6F6870, 0xEA00000000006C6CLL);
  static PeoplePickerActionBar.createCircledButtonConfiguration(image:)(v4);

  v5 = type metadata accessor for UIButton.Configuration();
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v5);
  UIButton.configuration.setter();
  [v3 setPointerInteractionEnabled_];
  v6 = v3;
  v7 = [v6 layer];
  [v7 setMasksToBounds_];

  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  LODWORD(v8) = 1148846080;
  [v6 setContentCompressionResistancePriority:0 forAxis:v8];
  [v6 setPreferredBehavioralStyle_];
  v9 = objc_opt_self();
  v10 = v6;
  v11 = [v9 conversationKit];
  v18._object = 0xE000000000000000;
  v12._countAndFlagsBits = 0x454E4F48505F5841;
  v12._object = 0xED00004C4C41435FLL;
  v13.value._countAndFlagsBits = 0x61737265766E6F43;
  v13.value._object = 0xEF74694B6E6F6974;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  v18._countAndFlagsBits = 0;
  v15 = NSLocalizedString(_:tableName:bundle:value:comment:)(v12, v13, v11, v14, v18);

  outlined bridged method (mbnn) of @objc NSObject.accessibilityLabel.setter(v15._countAndFlagsBits, v15._object, v10);
  return v10;
}

uint64_t static PeoplePickerActionBar.createCircledButtonConfiguration(image:)(void *a1)
{
  v2 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1BFB21AA0](v4);
  v7 = a1;
  UIButton.Configuration.image.setter();
  v8 = [objc_opt_self() configurationWithTextStyle:*MEMORY[0x1E69DDCF8] scale:2];
  UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
  (*(v3 + 104))(v6, *MEMORY[0x1E69DC508], v2);
  UIButton.Configuration.cornerStyle.setter();
  if (one-time initialization token for activeButtonBackgroundColor != -1)
  {
    swift_once();
  }

  v9 = static Colors.PeoplePickerViewController.activeButtonBackgroundColor;
  return UIButton.Configuration.baseBackgroundColor.setter();
}

id PeoplePickerActionBar.audioButton.getter(void *a1, uint64_t (*a2)(void))
{
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2();
    v5 = OUTLINED_FUNCTION_36_39(v6);

    v4 = 0;
  }

  v7 = v4;
  return v5;
}

id closure #1 in PeoplePickerActionBar.createLinkButton.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMR);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v17 - v1;
  v3 = [objc_opt_self() buttonWithType_];
  type metadata accessor for PeoplePickerActionBar(0);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage, 0x1E69DCAB8);
  v4 = @nonobjc UIImage.__allocating_init(systemName:)(1802398060, 0xE400000000000000);
  static PeoplePickerActionBar.createCircledButtonConfiguration(image:)(v4);

  v5 = type metadata accessor for UIButton.Configuration();
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v5);
  UIButton.configuration.setter();
  [v3 setPreferredBehavioralStyle_];
  v6 = v3;
  v7 = [v6 layer];
  [v7 setMasksToBounds_];

  [v6 setPointerInteractionEnabled_];
  v8 = objc_opt_self();
  v9 = v6;
  v10 = [v8 conversationKit];
  v18._object = 0xE000000000000000;
  v11._countAndFlagsBits = 0x4C5F455441455243;
  v11._object = 0xEB000000004B4E49;
  v12.value._countAndFlagsBits = 0x61737265766E6F43;
  v12.value._object = 0xEF74694B6E6F6974;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  v18._countAndFlagsBits = 0;
  v14 = NSLocalizedString(_:tableName:bundle:value:comment:)(v11, v12, v10, v13, v18);

  outlined bridged method (mbnn) of @objc NSObject.accessibilityLabel.setter(v14._countAndFlagsBits, v14._object, v9);
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];

  LODWORD(v15) = 1148846080;
  [v9 setContentCompressionResistancePriority:0 forAxis:v15];
  return v9;
}

uint64_t PeoplePickerActionBar.cancelButtonConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16[-v7];
  v9 = OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar____lazy_storage___cancelButtonConfiguration;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  outlined init with copy of Participant?(v1 + v9, v8, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMd, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMR);
  v10 = type metadata accessor for UIButton.Configuration();
  if (__swift_getEnumTagSinglePayload(v8, 1, v10) != 1)
  {
    return (*(*(v10 - 8) + 32))(a1, v8, v10);
  }

  v11 = OUTLINED_FUNCTION_32_2();
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v11, v12, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMR);
  closure #1 in PeoplePickerActionBar.cancelButtonConfiguration.getter();
  v13 = OUTLINED_FUNCTION_45_1();
  v14(v13);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v10);
  OUTLINED_FUNCTION_30_2(v1 + v9, v16);
  outlined assign with take of Participant?(v5, v1 + v9, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMd, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMR);
  return swift_endAccess();
}

uint64_t closure #1 in PeoplePickerActionBar.cancelButtonConfiguration.getter()
{
  v0 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for UIButton.Configuration.Size();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UIButton.Configuration.gray()();
  (*(v5 + 104))(v7, *MEMORY[0x1E69DC568], v4);
  UIButton.Configuration.buttonSize.setter();
  (*(v1 + 104))(v3, *MEMORY[0x1E69DC4F8], v0);
  UIButton.Configuration.cornerStyle.setter();
  v8 = [objc_opt_self() conversationKit];
  v14._object = 0xE000000000000000;
  v9._countAndFlagsBits = 0x4C45434E4143;
  v10.value._countAndFlagsBits = 0x61737265766E6F43;
  v10.value._object = 0xEF74694B6E6F6974;
  v9._object = 0xE600000000000000;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  v14._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v9, v10, v8, v11, v14);

  return UIButton.Configuration.title.setter();
}

id closure #1 in PeoplePickerActionBar.cancelButton.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMR);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v9 - v1;
  v3 = [objc_opt_self() buttonWithType_];
  PeoplePickerActionBar.cancelButtonConfiguration.getter(v2);
  v4 = type metadata accessor for UIButton.Configuration();
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v4);
  UIButton.configuration.setter();
  [v3 setPointerInteractionEnabled_];
  v5 = v3;
  v6 = [v5 layer];
  [v6 setMasksToBounds_];

  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  LODWORD(v7) = 1148846080;
  [v5 setContentCompressionResistancePriority:0 forAxis:v7];
  [v5 setPreferredBehavioralStyle_];
  return v5;
}

id PeoplePickerActionBar.isMessagesAppInstalled.getter()
{
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v1 = result;
    v2 = MEMORY[0x1BFB209B0](0xD000000000000013, 0x80000001BC5082B0);
    v3 = [v1 applicationIsInstalled_];

    if (one-time initialization token for conversationControls != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, &static Logger.conversationControls);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 67109120;
      *(v7 + 4) = v3;
      _os_log_impl(&dword_1BBC58000, v5, v6, "PeoplePickerActionBar: messagesAppInstalled = %{BOOL}d", v7, 8u);
      MEMORY[0x1BFB23DF0](v7, -1, -1);
    }

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id PeoplePickerActionBar.sharePlayAddPersonButton.getter(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *(v3 + *a1);
  if (v5)
  {
    v6 = *(v3 + *a1);
  }

  else
  {
    ObjectType = swift_getObjectType();
    v10 = closure #1 in PeoplePickerActionBar.faceTimeAddPersonButton.getter(ObjectType, a2, a3);
    v11 = *(v3 + v4);
    *(v3 + v4) = v10;
    v6 = v10;

    v5 = 0;
  }

  v12 = v5;
  return v6;
}

id closure #1 in PeoplePickerActionBar.faceTimeAddPersonButton.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_opt_self() conversationKit];
  OUTLINED_FUNCTION_5_5();
  v6.super.isa = v5;
  OUTLINED_FUNCTION_17_0(v7, 0xEA0000000000454CLL, v8, v9, v6);

  v10 = OUTLINED_FUNCTION_32_2();
  v12 = static PeoplePickerActionBar.createPeoplePickerButton(title:symbolName:)(v10, v11, a2, a3);

  return v12;
}

void __swiftcall PeoplePickerActionBar.addPersonButton(avLess:)(UIButton *__return_ptr retstr, Swift::Bool avLess)
{
  if (avLess)
  {
    PeoplePickerActionBar.sharePlayAddPersonButton.getter();
  }

  else
  {
    PeoplePickerActionBar.faceTimeAddPersonButton.getter();
  }
}

id PeoplePickerActionBar.messagesButton.getter()
{
  v2 = *(v0 + OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar____lazy_storage___messagesButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar____lazy_storage___messagesButton);
  }

  else
  {
    swift_getObjectType();
    v4 = closure #1 in PeoplePickerActionBar.messagesButton.getter();
    v3 = OUTLINED_FUNCTION_36_39(v4);

    v2 = 0;
  }

  v5 = v2;
  return v3;
}

id closure #1 in PeoplePickerActionBar.messagesButton.getter()
{
  v0 = [objc_opt_self() conversationKit];
  v14._object = 0xE000000000000000;
  v1._countAndFlagsBits = 0x534547415353454DLL;
  v2.value._countAndFlagsBits = 0x61737265766E6F43;
  v2.value._object = 0xEF74694B6E6F6974;
  v1._object = 0xE800000000000000;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v14._countAndFlagsBits = 0;
  v4 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, v2, v0, v3, v14);

  v5 = static PeoplePickerActionBar.createPeoplePickerButton(title:symbolName:)(v4._countAndFlagsBits, v4._object, 0x2E6567617373656DLL, 0xEC0000006C6C6966);

  v6 = [v5 titleLabel];
  if (v6)
  {
    v7 = v6;
    [v6 setNumberOfLines_];
  }

  v8 = [v5 titleLabel];
  if (v8)
  {
    v9 = v8;
    [v8 setAdjustsFontSizeToFitWidth_];
  }

  v10 = [v5 titleLabel];
  if (v10)
  {
    v11 = v10;
    [v10 setMinimumScaleFactor_];
  }

  v12 = v5;
  [v12 setEnabled_];

  return v12;
}

id PeoplePickerActionBar.inviteWithMessagesButtonStackView.getter(void *a1, uint64_t a2)
{
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = closure #1 in PeoplePickerActionBar.messageAndFaceTimeStackView.getter();
    v5 = OUTLINED_FUNCTION_36_39(v6);

    v4 = 0;
  }

  v7 = v4;
  return v5;
}

objc_class *PeoplePickerActionBar.audioVideoCallMenu.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar____lazy_storage___audioVideoCallMenu;
  v2 = *(v0 + OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar____lazy_storage___audioVideoCallMenu);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar____lazy_storage___audioVideoCallMenu);
  }

  else
  {
    v4 = v0;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAction, 0x1E69DC628);
    v5 = objc_opt_self();
    v6 = [v5 conversationKit];
    OUTLINED_FUNCTION_24_2();
    OUTLINED_FUNCTION_5_5();
    v7.super.isa = v6;
    OUTLINED_FUNCTION_17_0(v8, v9, v10, v11, v7);

    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage, 0x1E69DCAB8);
    @nonobjc UIImage.__allocating_init(systemName:)(0x6F65646976, 0xE500000000000000);
    OUTLINED_FUNCTION_20();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    OUTLINED_FUNCTION_3_0();
    v20 = OUTLINED_FUNCTION_20_63(v12, v13, v14, v15, v16, v17, v18, v19, 0);
    v21 = [v5 conversationKit];
    OUTLINED_FUNCTION_24_2();
    OUTLINED_FUNCTION_5_5();
    v22.super.isa = v21;
    OUTLINED_FUNCTION_17_0(v23, v24, v25, v26, v22);

    @nonobjc UIImage.__allocating_init(systemName:)(0x656E6F6870, 0xE500000000000000);
    OUTLINED_FUNCTION_20();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    OUTLINED_FUNCTION_32_2();
    OUTLINED_FUNCTION_3_0();
    v35 = OUTLINED_FUNCTION_20_63(v27, v28, v29, v30, v31, v32, v33, v34, 0);
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIMenu, 0x1E69DCC60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_1BC4BA930;
    *(v36 + 32) = v20;
    *(v36 + 40) = v35;
    preferredElementSize = v36;
    OUTLINED_FUNCTION_3_0();
    v44.value.super.isa = 0;
    v44.is_nil = 0;
    v39.super.super.isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v37, v38, v44, 0, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, 0).super.super.isa;
    v40 = *(v4 + v1);
    *(v4 + v1) = v39;
    v3 = v39.super.super.isa;

    v2 = 0;
  }

  v41 = v2;
  return v3;
}

UIMenu closure #1 in PeoplePickerActionBar.audioCallDisambiguationMenu.getter()
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAction, 0x1E69DC628);
  v0 = objc_opt_self();
  v1 = [v0 conversationKit];
  v2 = 0xE000000000000000;
  swift__string._object = 0xE000000000000000;
  v3.value._countAndFlagsBits = 0x61737265766E6F43;
  v3.value._object = 0xEF74694B6E6F6974;
  v4._countAndFlagsBits = 1280065859;
  v4._object = 0xE400000000000000;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  swift__string._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v4, v3, v1, v5, swift__string);

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage, 0x1E69DCAB8);
  @nonobjc UIImage.__allocating_init(systemName:)(0x656E6F6870, 0xE500000000000000);
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v8 = [v0 conversationKit];
  swift__stringa._object = 0xE000000000000000;
  v9._countAndFlagsBits = 0x454D495445434146;
  v9._object = 0xEE004F494455415FLL;
  v10.value._countAndFlagsBits = 0x61737265766E6F43;
  v10.value._object = 0xEF74694B6E6F6974;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  swift__stringa._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v9, v10, v8, v11, swift__stringa);

  @nonobjc UIImage.__allocating_init(systemName:)(0x656E6F6870, 0xE500000000000000);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v13 = [objc_opt_self() faceTimeSupplementalDialTelephonyCallStringIncludingFTA_];
  if (v13)
  {
    v14 = v13;
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v2 = v16;
  }

  else
  {
    v15 = 0;
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIMenu, 0x1E69DCC60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1BC4BA930;
  *(v17 + 32) = v7;
  *(v17 + 40) = v12;
  preferredElementSize = v17;
  v18._countAndFlagsBits = v15;
  v18._object = v2;
  v21.value.super.isa = 0;
  v21.is_nil = 0;
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v18, 0, v21, 2, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, 2);
}

void closure #1 in closure #1 in PeoplePickerActionBar.audioCallDisambiguationMenu.getter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = MEMORY[0x1E69E7D40];
    if ((*((*MEMORY[0x1E69E7D40] & *Strong) + 0x110))())
    {
      v6 = v5;
      ObjectType = swift_getObjectType();
      v8 = (*((*v4 & *v3) + 0x140))();
      (*(v6 + 8))(v3, v8, 0, ObjectType, v6);

      swift_unknownObjectRelease();
      v3 = v8;
    }
  }
}

void closure #1 in closure #1 in PeoplePickerActionBar.audioVideoCallMenu.getter()
{
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if ((*((*MEMORY[0x1E69E7D40] & *Strong) + 0x110))())
    {
      swift_getObjectType();
      v2 = OUTLINED_FUNCTION_45_1();
      v3(v2);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t key path getter for PeoplePickerActionBar.audioVideoDropdownViewModel : PeoplePickerActionBar@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x2B8))();
  *a2 = result;
  return result;
}

uint64_t closure #1 in PeoplePickerActionBar.audioVideoDropdownViewModel.getter()
{
  v0 = [objc_opt_self() conversationKit];
  v5._object = 0xE000000000000000;
  v1._countAndFlagsBits = 0x454D495445434146;
  v2.value._countAndFlagsBits = 0x61737265766E6F43;
  v2.value._object = 0xEF74694B6E6F6974;
  v1._object = 0xE800000000000000;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v1, v2, v0, v3, v5);

  static Color.green.getter();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for DropdownViewModel(0);
  swift_allocObject();
  return DropdownViewModel.init(primaryText:primaryColor:symbolName:primaryAction:menuItems:isEnabled:)();
}

void closure #1 in closure #1 in PeoplePickerActionBar.audioVideoDropdownViewModel.getter(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong videoButtonTapped];
  }
}

uint64_t key path getter for PeoplePickerActionBar.inviteWithMessageDropDownViewModel : PeoplePickerActionBar@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x2D0))();
  *a2 = result;
  return result;
}

uint64_t PeoplePickerActionBar.audioVideoDropdownViewModel.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = a2(v2);
    *(v2 + v3) = v5;
  }

  return v5;
}

uint64_t closure #1 in PeoplePickerActionBar.inviteWithMessageDropDownViewModel.getter()
{
  v0 = [objc_opt_self() conversationKit];
  v5._object = 0xE000000000000000;
  v1.value._countAndFlagsBits = 0x61737265766E6F43;
  v1.value._object = 0xEF74694B6E6F6974;
  v2._object = 0x80000001BC524AE0;
  v2._countAndFlagsBits = 0xD000000000000014;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v1, v0, v3, v5);

  static Color.green.getter();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for DropdownViewModel(0);
  swift_allocObject();
  return DropdownViewModel.init(primaryText:primaryColor:symbolName:primaryAction:menuItems:isEnabled:)();
}

void closure #1 in closure #1 in PeoplePickerActionBar.inviteWithMessageDropDownViewModel.getter(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if ((*((*MEMORY[0x1E69E7D40] & *Strong) + 0x110))())
    {
      v4 = v3;
      ObjectType = swift_getObjectType();
      (*(v4 + 8))(v2, 3, 128, ObjectType, v4);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t key path getter for PeoplePickerActionBar.inviteWithMessagesButton : PeoplePickerActionBar@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x300))();
  *a2 = result;
  return result;
}

id PeoplePickerActionBar.videoButton.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    ObjectType = swift_getObjectType();
    v8 = a2(ObjectType);
    v9 = *(v2 + v3);
    *(v2 + v3) = v8;
    v5 = v8;

    v4 = 0;
  }

  v10 = v4;
  return v5;
}

id closure #1 in PeoplePickerActionBar.inviteWithMessagesButton.getter()
{
  v0 = [objc_opt_self() conversationKit];
  v13._object = 0xE000000000000000;
  v1.value._countAndFlagsBits = 0x61737265766E6F43;
  v1.value._object = 0xEF74694B6E6F6974;
  v2._object = 0x80000001BC524AE0;
  v2._countAndFlagsBits = 0xD000000000000014;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v13._countAndFlagsBits = 0;
  v4 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v1, v0, v3, v13);

  v5 = static PeoplePickerActionBar.createPeoplePickerButton(title:symbolName:)(v4._countAndFlagsBits, v4._object, 0x2E6567617373656DLL, 0xEC0000006C6C6966);

  v6 = [v5 titleLabel];
  if (v6)
  {
    v7 = v6;
    [v6 setNumberOfLines_];
  }

  v8 = [v5 titleLabel];
  if (v8)
  {
    v9 = v8;
    [v8 setAdjustsFontSizeToFitWidth_];
  }

  v10 = [v5 titleLabel];
  if (v10)
  {
    v11 = v10;
    [v10 setMinimumScaleFactor_];
  }

  return v5;
}

void PeoplePickerActionBar.inviteWithMessagesButton.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar____lazy_storage___inviteWithMessagesButton);
  *(v1 + OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar____lazy_storage___inviteWithMessagesButton) = a1;
}

id closure #1 in PeoplePickerActionBar.messageAndFaceTimeStackView.getter()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DCF90]) init];
  OUTLINED_FUNCTION_19_54([v0 setTranslatesAutoresizingMaskIntoConstraints_], sel_setDistribution_);
  [v0 setAxis_];
  [v0 setSpacing_];
  return v0;
}

id PeoplePickerActionBar.cancelButton.getter(void *a1, uint64_t (*a2)(uint64_t))
{
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v5 = OUTLINED_FUNCTION_36_39(v6);

    v4 = 0;
  }

  v7 = v4;
  return v5;
}

void *closure #1 in PeoplePickerActionBar.audioVideoDropdownButton.getter(void *a1)
{
  (*((*MEMORY[0x1E69E7D40] & *a1) + 0x2B8))();
  type metadata accessor for DropdownViewModel(0);
  State.init(wrappedValue:)();
  v1 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit21SelfSizingHostingViewCyAA18DropdownMenuButtonVGMd, &_s15ConversationKit21SelfSizingHostingViewCyAA18DropdownMenuButtonVGMR));
  v2 = _UIHostingView.init(rootView:)();
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  return v2;
}

uint64_t key path setter for PeoplePickerActionBar.faceTimeAudioDropdownMenuItem : PeoplePickerActionBar(uint64_t a1)
{
  v2 = type metadata accessor for DropdownViewModel.MenuItem(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of DropdownViewModel.MenuItem(a1, v4);
  return PeoplePickerActionBar.faceTimeAudioDropdownMenuItem.setter(v4);
}

uint64_t PeoplePickerActionBar.faceTimeAudioDropdownMenuItem.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_32_2();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16[-v9];
  v11 = OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar____lazy_storage___faceTimeAudioDropdownMenuItem;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  outlined init with copy of Participant?(v1 + v11, v10, &_s15ConversationKit17DropdownViewModelC8MenuItemVSgMd, &_s15ConversationKit17DropdownViewModelC8MenuItemVSgMR);
  v12 = type metadata accessor for DropdownViewModel.MenuItem(0);
  if (__swift_getEnumTagSinglePayload(v10, 1, v12) != 1)
  {
    return outlined init with take of DropdownViewModel.MenuItem(v10, a1);
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v10, &_s15ConversationKit17DropdownViewModelC8MenuItemVSgMd, &_s15ConversationKit17DropdownViewModelC8MenuItemVSgMR);
  closure #1 in PeoplePickerActionBar.faceTimeAudioDropdownMenuItem.getter(v1, a1);
  v13 = OUTLINED_FUNCTION_45_1();
  outlined init with copy of DropdownViewModel.MenuItem(v13, v14);
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v12);
  OUTLINED_FUNCTION_30_2(v1 + v11, v16);
  outlined assign with take of Participant?(v7, v1 + v11, &_s15ConversationKit17DropdownViewModelC8MenuItemVSgMd, &_s15ConversationKit17DropdownViewModelC8MenuItemVSgMR);
  return swift_endAccess();
}

int *closure #1 in PeoplePickerActionBar.faceTimeAudioDropdownMenuItem.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [objc_opt_self() conversationKit];
  v14._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0x454D495445434146;
  v5._object = 0xEE004F494455415FLL;
  v6.value._countAndFlagsBits = 0x61737265766E6F43;
  v6.value._object = 0xEF74694B6E6F6974;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v14._countAndFlagsBits = 0;
  v8 = NSLocalizedString(_:tableName:bundle:value:comment:)(v5, v6, v4, v7, v14);

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  v10 = a1;
  UUID.init()();
  result = type metadata accessor for DropdownViewModel.MenuItem(0);
  *(a2 + result[5]) = v8;
  v12 = (a2 + result[6]);
  *v12 = partial apply for closure #1 in closure #1 in PeoplePickerActionBar.faceTimeAudioDropdownMenuItem.getter;
  v12[1] = v9;
  v13 = (a2 + result[7]);
  strcpy(v13, "facetime-audio");
  v13[15] = -18;
  *(a2 + result[8]) = 1;
  return result;
}

uint64_t closure #1 in closure #1 in PeoplePickerActionBar.faceTimeAudioDropdownMenuItem.getter(void *a1)
{
  result = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x110))();
  if (result)
  {
    v4 = v3;
    ObjectType = swift_getObjectType();
    (*(v4 + 8))(a1, 0, 128, ObjectType, v4);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t PeoplePickerActionBar.faceTimeAudioDropdownMenuItem.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit17DropdownViewModelC8MenuItemVSgMd, &_s15ConversationKit17DropdownViewModelC8MenuItemVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10[-v4 - 8];
  outlined init with take of DropdownViewModel.MenuItem(a1, &v10[-v4 - 8]);
  v6 = type metadata accessor for DropdownViewModel.MenuItem(0);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v6);
  v7 = OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar____lazy_storage___faceTimeAudioDropdownMenuItem;
  OUTLINED_FUNCTION_30_2(v1 + OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar____lazy_storage___faceTimeAudioDropdownMenuItem, v10);
  outlined assign with take of Participant?(v5, v1 + v7, &_s15ConversationKit17DropdownViewModelC8MenuItemVSgMd, &_s15ConversationKit17DropdownViewModelC8MenuItemVSgMR);
  return swift_endAccess();
}

void *PeoplePickerActionBar.init(frame:buttonsStyle:)(char a1)
{
  OUTLINED_FUNCTION_20_2();
  *(v1 + OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar_handleToDisplay) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar_generatingLinksEnabled) = 1;
  v3 = v1 + OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar_serviceAvailability;
  *(v3 + 4) = 0;
  *v3 = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar____lazy_storage___videoButton) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar____lazy_storage___audioButton) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar____lazy_storage___createLinkButton) = 0;
  v4 = OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar____lazy_storage___cancelButtonConfiguration;
  v5 = type metadata accessor for UIButton.Configuration();
  __swift_storeEnumTagSinglePayload(v1 + v4, 1, 1, v5);
  *(v1 + OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar____lazy_storage___cancelButton) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar____lazy_storage___faceTimeAddPersonButton) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar____lazy_storage___sharePlayAddPersonButton) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar____lazy_storage___messagesButton) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar____lazy_storage___messageAndFaceTimeStackView) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar____lazy_storage___audioVideoCallMenu) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar____lazy_storage___audioCallDisambiguationMenu) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar_allButtons) = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar____lazy_storage___audioVideoDropdownViewModel) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar____lazy_storage___inviteWithMessageDropDownViewModel) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar____lazy_storage___inviteWithMessageDropDown) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar____lazy_storage___inviteWithMessagesButton) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar____lazy_storage___inviteWithMessagesButtonStackView) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar____lazy_storage___audioVideoDropdownButton) = 0;
  v6 = OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar____lazy_storage___faceTimeAudioDropdownMenuItem;
  v7 = type metadata accessor for DropdownViewModel.MenuItem(0);
  __swift_storeEnumTagSinglePayload(v1 + v6, 1, 1, v7);
  *(v1 + OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar_buttonsStyle) = a1;
  v19 = v1;
  v20 = type metadata accessor for PeoplePickerActionBar(0);
  v8 = OUTLINED_FUNCTION_18_1();
  v11 = objc_msgSendSuper2(v9, v10, v8);
  [v11 setPreservesSuperviewLayoutMargins_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1BC4C48E0;
  *(v12 + 32) = PeoplePickerActionBar.videoButton.getter();
  *(v12 + 40) = PeoplePickerActionBar.audioButton.getter();
  *(v12 + 48) = PeoplePickerActionBar.faceTimeAddPersonButton.getter();
  *(v12 + 56) = PeoplePickerActionBar.sharePlayAddPersonButton.getter();
  v13 = MEMORY[0x1E69E7D40];
  *(v12 + 64) = (*((*MEMORY[0x1E69E7D40] & *v11) + 0x300))();
  *(v12 + 72) = PeoplePickerActionBar.messagesButton.getter();
  *(v12 + 80) = PeoplePickerActionBar.cancelButton.getter();
  *(v12 + 88) = PeoplePickerActionBar.audioVideoDropdownButton.getter();
  *(v11 + OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar_allButtons) = v12;

  PeoplePickerActionBar.configureButtons()();
  OUTLINED_FUNCTION_13_2();
  (*((*v13 & v14) + 0x3C0))();
  v18[3] = type metadata accessor for _GlassGroup();
  v18[4] = MEMORY[0x1E69DBEA8];
  __swift_allocate_boxed_opaque_existential_1(v18);
  v15 = v11;
  _GlassGroup.init(foreground:)();
  UIView._background.setter();

  v16 = [objc_opt_self() defaultCenter];
  [v16 addObserver:v15 selector:sel_rttEnablementDidChange name:*MEMORY[0x1E69C6B30] object:0];

  return v15;
}

uint64_t outlined init with take of DropdownViewModel.MenuItem(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DropdownViewModel.MenuItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for PeoplePickerActionBar(uint64_t a1)
{
  result = type metadata singleton initialization cache for PeoplePickerActionBar;
  if (!type metadata singleton initialization cache for PeoplePickerActionBar)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id PeoplePickerActionBar.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void PeoplePickerActionBar.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar_handleToDisplay) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar_generatingLinksEnabled) = 1;
  v1 = v0 + OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar_serviceAvailability;
  *(v1 + 4) = 0;
  *v1 = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar____lazy_storage___videoButton) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar____lazy_storage___audioButton) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar____lazy_storage___createLinkButton) = 0;
  v2 = type metadata accessor for UIButton.Configuration();
  OUTLINED_FUNCTION_0_11(v2);
  *(v0 + OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar____lazy_storage___cancelButton) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar____lazy_storage___faceTimeAddPersonButton) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar____lazy_storage___sharePlayAddPersonButton) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar____lazy_storage___messagesButton) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar____lazy_storage___messageAndFaceTimeStackView) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar____lazy_storage___audioVideoCallMenu) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar____lazy_storage___audioCallDisambiguationMenu) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar_allButtons) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar____lazy_storage___audioVideoDropdownViewModel) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar____lazy_storage___inviteWithMessageDropDownViewModel) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar____lazy_storage___inviteWithMessageDropDown) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar____lazy_storage___inviteWithMessagesButton) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar____lazy_storage___inviteWithMessagesButtonStackView) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar____lazy_storage___audioVideoDropdownButton) = 0;
  v3 = type metadata accessor for DropdownViewModel.MenuItem(0);
  OUTLINED_FUNCTION_0_11(v3);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void PeoplePickerActionBar.configureButtons()()
{
  type metadata accessor for UITraitOverrides();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_8();
  PeoplePickerActionBar.configureButtonActions()();
  PeoplePickerActionBar.configureViewHierarchy()();
  v2 = *(v0 + OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar_allButtons);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC4BAC30;

  *(inited + 32) = PeoplePickerActionBar.createLinkButton.getter();
  specialized Array.append<A>(contentsOf:)(inited);
  v4 = v2;
  v5 = MEMORY[0x1E69E7CC0];
  v18 = MEMORY[0x1E69E7CC0];
  v6 = specialized Array.count.getter();
  v7 = 0;
  while (v6 != v7)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1BFB22010](v7, v4);
    }

    else
    {
      if (v7 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_27;
      }

      v8 = *(v4 + 8 * v7 + 32);
    }

    v9 = v8;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
      return;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      MEMORY[0x1BFB20CC0]();
      if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v5 = v18;
      ++v7;
    }

    else
    {

      ++v7;
    }
  }

  v10 = specialized Array.count.getter();
  for (i = 0; v10 != i; ++i)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x1BFB22010](i, v5);
    }

    else
    {
      if (i >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      v12 = *(v5 + 8 * i + 32);
    }

    v13 = v12;
    if (__OFADD__(i, 1))
    {
      goto LABEL_28;
    }

    v14 = [v12 titleLabel];
    if (v14)
    {
      v15 = v14;
      UIView.traitOverrides.getter();
      OUTLINED_FUNCTION_31_40();
      UIView.traitOverrides.setter();
    }

    v16 = [v13 imageView];
    if (v16)
    {
      v17 = v16;
      UIView.traitOverrides.getter();
      OUTLINED_FUNCTION_31_40();
      UIView.traitOverrides.setter();
    }
  }
}

void PeoplePickerActionBar.configureButtonActions()()
{
  v0 = PeoplePickerActionBar.cancelButton.getter();
  OUTLINED_FUNCTION_6_124(v0, v1, v2, sel_cancelButtonTapped_);

  v3 = PeoplePickerActionBar.audioButton.getter();
  OUTLINED_FUNCTION_6_124(v3, v4, v5, sel_audioButtonTapped_);

  v6 = PeoplePickerActionBar.createLinkButton.getter();
  OUTLINED_FUNCTION_6_124(v6, v7, v8, sel_createLinkButtonTapped_);

  v9 = PeoplePickerActionBar.videoButton.getter();
  OUTLINED_FUNCTION_6_124(v9, v10, v11, sel_videoButtonTapped);

  v12 = PeoplePickerActionBar.faceTimeAddPersonButton.getter();
  OUTLINED_FUNCTION_30_37(v12);

  v13 = PeoplePickerActionBar.sharePlayAddPersonButton.getter();
  OUTLINED_FUNCTION_30_37(v13);

  OUTLINED_FUNCTION_13_2();
  v15 = (*((*MEMORY[0x1E69E7D40] & v14) + 0x300))();
  OUTLINED_FUNCTION_6_124(v15, v16, v17, sel_inviteWithMessagesButtonTapped_);

  v20 = PeoplePickerActionBar.messagesButton.getter();
  OUTLINED_FUNCTION_6_124(v20, v18, v19, sel_messagesButtonTapped_);
}

void PeoplePickerActionBar.configureViewHierarchy()()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x128))();
  if (v1 == 2)
  {
    PeoplePickerActionBar.configureViewForInviteFlow()();
  }

  else if (v1 != 3)
  {
    if (v1 == 4)
    {

      PeoplePickerActionBar.configureViewForSharePlayFlow()();
      return;
    }

    PeoplePickerActionBar.configureViewForAddPersonFlow(avLess:)();
  }

  PeoplePickerActionBar.configureViewWithInviteWithMessagesButton()();
}

void PeoplePickerActionBar.configureViewForInviteFlow()()
{
  OUTLINED_FUNCTION_34_0();
  v1 = v0;
  v2 = PeoplePickerActionBar.audioButton.getter();
  OUTLINED_FUNCTION_19_54(v2, sel_addSubview_);

  v3 = PeoplePickerActionBar.createLinkButton.getter();
  OUTLINED_FUNCTION_19_54(v3, sel_addSubview_);

  v4 = PeoplePickerActionBar.videoButton.getter();
  OUTLINED_FUNCTION_19_54(v4, sel_addSubview_);

  v79 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1BC4EA6F0;
  v6 = OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar____lazy_storage___videoButton;
  v7 = [*&v1[OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar____lazy_storage___videoButton] trailingAnchor];
  v8 = OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar____lazy_storage___audioButton;
  v9 = [*&v1[OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar____lazy_storage___audioButton] leadingAnchor];
  v10 = OUTLINED_FUNCTION_79();
  v12 = [v10 v11];

  *(v5 + 32) = v12;
  v13 = [*&v1[v6] leadingAnchor];
  v14 = [v1 layoutMarginsGuide];
  v15 = [v14 leadingAnchor];

  v16 = OUTLINED_FUNCTION_26_54();
  v18 = [v16 v17];

  *(v5 + 40) = v18;
  v19 = [*&v1[v6] centerXAnchor];
  v20 = [v1 centerXAnchor];
  v21 = OUTLINED_FUNCTION_79();
  v23 = [v21 v22];

  *(v5 + 48) = v23;
  v24 = [*&v1[v6] topAnchor];
  v25 = [v1 topAnchor];
  v26 = OUTLINED_FUNCTION_79();
  v28 = [v26 v27];

  *(v5 + 56) = v28;
  v29 = [*&v1[v6] bottomAnchor];
  v30 = [v1 &off_1E7FE9D20 + 5];
  v31 = OUTLINED_FUNCTION_79();
  v33 = [v31 v32];

  *(v5 + 64) = v33;
  v34 = [*&v1[v8] heightAnchor];
  v35 = [*&v1[v6] heightAnchor];
  v36 = OUTLINED_FUNCTION_79();
  v38 = [v36 v37];

  *(v5 + 72) = v38;
  v39 = [*&v1[v8] trailingAnchor];
  v40 = [v1 layoutMarginsGuide];
  v41 = [v40 trailingAnchor];

  v42 = OUTLINED_FUNCTION_26_54();
  v44 = [v42 v43];

  *(v5 + 80) = v44;
  v45 = [*&v1[v8] widthAnchor];
  v46 = [*&v1[v8] heightAnchor];
  v47 = OUTLINED_FUNCTION_79();
  v49 = [v47 v48];

  *(v5 + 88) = v49;
  v50 = [*&v1[v8] bottomAnchor];
  v51 = [v1 bottomAnchor];
  v52 = OUTLINED_FUNCTION_79();
  v54 = [v52 v53];

  *(v5 + 96) = v54;
  v55 = OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar____lazy_storage___createLinkButton;
  v56 = [*&v1[OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar____lazy_storage___createLinkButton] heightAnchor];
  v57 = [*&v1[v6] heightAnchor];
  v58 = OUTLINED_FUNCTION_79();
  v60 = [v58 v59];

  *(v5 + 104) = v60;
  v61 = [*&v1[v55] widthAnchor];
  v62 = [*&v1[v55] heightAnchor];
  v63 = OUTLINED_FUNCTION_79();
  v65 = [v63 v64];

  *(v5 + 112) = v65;
  v66 = [*&v1[v55] bottomAnchor];
  v67 = [v1 bottomAnchor];
  v68 = OUTLINED_FUNCTION_79();
  v70 = [v68 v69];

  *(v5 + 120) = v70;
  v71 = [*&v1[v55] leadingAnchor];
  v72 = [v1 layoutMarginsGuide];
  v73 = [v72 leadingAnchor];

  v74 = OUTLINED_FUNCTION_79();
  v76 = [v74 v75];

  *(v5 + 128) = v76;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x1E696ACD8);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v79 activateConstraints_];
  OUTLINED_FUNCTION_1_3();
}

void PeoplePickerActionBar.configureViewForAddPersonFlow(avLess:)()
{
  OUTLINED_FUNCTION_34_0();
  v1 = v0;
  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x238))();
  OUTLINED_FUNCTION_19_54(v2, sel_addSubview_);
  v3 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1BC4BA920;
  v5 = [v2 leadingAnchor];
  v6 = [v1 layoutMarginsGuide];
  v7 = [v6 leadingAnchor];

  v8 = [v5 constraintGreaterThanOrEqualToAnchor:v7 constant:10.0];
  *(v4 + 32) = v8;
  v9 = [v2 trailingAnchor];

  v10 = [v1 layoutMarginsGuide];
  v11 = [v10 trailingAnchor];

  v12 = [v9 constraintLessThanOrEqualToAnchor:v11 constant:-10.0];
  *(v4 + 40) = v12;
  v13 = [v2 centerXAnchor];

  v14 = [v1 centerXAnchor];
  v15 = [v13 constraintEqualToAnchor_];

  *(v4 + 48) = v15;
  v16 = [v2 topAnchor];

  v17 = [v1 topAnchor];
  v18 = [v16 constraintEqualToAnchor:v17 constant:12.0];

  *(v4 + 56) = v18;
  v19 = [v2 bottomAnchor];

  v20 = [v1 bottomAnchor];
  v21 = [v19 constraintEqualToAnchor:v20 constant:-8.0];

  *(v4 + 64) = v21;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x1E696ACD8);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v3 activateConstraints_];

  OUTLINED_FUNCTION_1_3();
}

void PeoplePickerActionBar.configureViewWithInviteWithMessagesButton()()
{
  OUTLINED_FUNCTION_34_0();
  v1 = PeoplePickerActionBar.inviteWithMessagesButtonStackView.getter();
  OUTLINED_FUNCTION_19_54(v1, sel_addSubview_);

  v2 = OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar____lazy_storage___inviteWithMessagesButtonStackView;
  v3 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x300);
  v4 = *(v0 + OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar____lazy_storage___inviteWithMessagesButtonStackView);
  v5 = v3();
  OUTLINED_FUNCTION_23_57(v5, sel_addArrangedSubview_);

  objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1BC4BA920;
  v7 = [*(v0 + v2) centerXAnchor];
  v8 = [v0 centerXAnchor];
  v9 = OUTLINED_FUNCTION_79();
  v11 = [v9 v10];

  *(v6 + 32) = v11;
  v12 = [*(v0 + v2) topAnchor];
  v13 = [v0 topAnchor];
  v14 = OUTLINED_FUNCTION_79();
  v16 = [v14 v15];

  *(v6 + 40) = v16;
  v17 = [*(v0 + v2) bottomAnchor];
  v18 = [v0 bottomAnchor];
  v19 = OUTLINED_FUNCTION_79();
  v21 = [v19 v20];

  *(v6 + 48) = v21;
  v22 = v3();
  v23 = [v22 leadingAnchor];

  v24 = OUTLINED_FUNCTION_35_32();
  v25 = [v24 leadingAnchor];

  v26 = OUTLINED_FUNCTION_26_54();
  v28 = [v26 v27];

  *(v6 + 56) = v28;
  v29 = v3();
  v30 = [v29 trailingAnchor];

  v31 = OUTLINED_FUNCTION_35_32();
  v32 = [v31 trailingAnchor];

  v33 = [v30 constraintLessThanOrEqualToAnchor_];
  *(v6 + 64) = v33;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x1E696ACD8);
  isa = Array._bridgeToObjectiveC()().super.isa;

  OUTLINED_FUNCTION_23_57(v35, sel_activateConstraints_);

  v39 = v3();
  LODWORD(v36) = 1148846080;
  [v39 setContentCompressionResistancePriority:1 forAxis:v36];
  OUTLINED_FUNCTION_1_3();
}

void PeoplePickerActionBar.configureViewForSharePlayFlow()()
{
  OUTLINED_FUNCTION_34_0();
  v1 = PeoplePickerActionBar.messageAndFaceTimeStackView.getter();
  OUTLINED_FUNCTION_19_54(v1, sel_addSubview_);

  v2 = OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar____lazy_storage___messageAndFaceTimeStackView;
  v3 = *&v0[OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar____lazy_storage___messageAndFaceTimeStackView];
  v4 = PeoplePickerActionBar.messagesButton.getter();
  OUTLINED_FUNCTION_23_57(v4, sel_addArrangedSubview_);

  OUTLINED_FUNCTION_13_2();
  if (((*((*MEMORY[0x1E69E7D40] & v5) + 0x170))() & 0x100) != 0)
  {
    v6 = PeoplePickerActionBar.videoButton.getter();
    [v6 removeTarget:v0 action:0 forControlEvents:64];

    v7 = OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar____lazy_storage___videoButton;
    v8 = *&v0[OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar____lazy_storage___videoButton];
    v9 = PeoplePickerActionBar.audioVideoCallMenu.getter();
    OUTLINED_FUNCTION_23_57(v9, sel_setMenu_);

    [*&v0[v7] setShowsMenuAsPrimaryAction_];
  }

  v10 = *&v0[v2];
  v11 = PeoplePickerActionBar.videoButton.getter();
  OUTLINED_FUNCTION_23_57(v11, sel_addArrangedSubview_);

  v12 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1BC4BA920;
  v14 = [*&v0[v2] centerXAnchor];
  v15 = [v0 centerXAnchor];
  v16 = OUTLINED_FUNCTION_79();
  v18 = [v16 v17];

  *(v13 + 32) = v18;
  v19 = [*&v0[v2] topAnchor];
  v20 = [v0 topAnchor];
  v21 = OUTLINED_FUNCTION_79();
  v23 = [v21 v22];

  *(v13 + 40) = v23;
  v24 = [*&v0[v2] bottomAnchor];
  v25 = [v0 bottomAnchor];
  v26 = OUTLINED_FUNCTION_79();
  v28 = [v26 v27];

  *(v13 + 48) = v28;
  v29 = [*&v0[v2] leadingAnchor];
  v30 = OUTLINED_FUNCTION_35_32();
  v31 = [v30 leadingAnchor];

  v32 = OUTLINED_FUNCTION_26_54();
  v34 = [v32 v33];

  *(v13 + 56) = v34;
  v35 = [*&v0[v2] trailingAnchor];
  v36 = OUTLINED_FUNCTION_35_32();
  v37 = [v36 trailingAnchor];

  v38 = OUTLINED_FUNCTION_79();
  v40 = [v38 v39];

  *(v13 + 64) = v40;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x1E696ACD8);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v12 activateConstraints_];
  OUTLINED_FUNCTION_1_3();
}

Swift::Void __swiftcall PeoplePickerActionBar.updateButtonsState()()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x128))();
  switch(v1)
  {
    case 2:
      OUTLINED_FUNCTION_1_190();
      v3 = *(v5 + 968);

      goto LABEL_12;
    case 3:
      OUTLINED_FUNCTION_1_190();
      v3 = *(v4 + 976);

      goto LABEL_12;
    case 4:
      OUTLINED_FUNCTION_1_190();
      v3 = *(v2 + 992);

LABEL_12:
      v3();
      return;
  }

  OUTLINED_FUNCTION_1_190();
  v7 = *(v6 + 984);
  v9 = v8 & 1;

  v7(v9);
}

Swift::Void __swiftcall PeoplePickerActionBar.updateStateForAudioVideoButtons()()
{
  v1 = PeoplePickerActionBar.audioButton.getter();
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x170);
  v3 = v2();
  PeoplePickerActionBar.updateButton(_:isEnabled:)(v1, (v3 | HIBYTE(v3)) & 1);

  v4 = PeoplePickerActionBar.videoButton.getter();
  v5 = v2();
  PeoplePickerActionBar.updateButton(_:isEnabled:)(v4, BYTE2(v5) & 1);

  PeoplePickerActionBar.updateAudioButtonAction()();

  PeoplePickerActionBar.showAudioAndVideoButtons()();
}

Swift::Void __swiftcall PeoplePickerActionBar.updateStateForInviteWithButton()()
{
  v1 = PeoplePickerActionBar.audioButton.getter();
  v2 = MEMORY[0x1E69E7D40];
  v3 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x170);
  v4 = v3();
  PeoplePickerActionBar.updateButton(_:isEnabled:)(v1, (v4 | HIBYTE(v4)) & 1);

  OUTLINED_FUNCTION_13_2();
  v6 = (*((*v2 & v5) + 0x300))();
  v7 = v3();
  PeoplePickerActionBar.updateButton(_:isEnabled:)(v6, BYTE2(v7) & 1);

  PeoplePickerActionBar.updateAudioButtonAction()();

  PeoplePickerActionBar.showInviteWithMessagesButton()();
}

Swift::Void __swiftcall PeoplePickerActionBar.updateStateForAddPersonButton(avLess:)(Swift::Bool avLess)
{
  v2 = avLess;
  v3 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_15_49();
  v5 = (*(v4 + 368))();
  v6 = 0x1000000;
  if (v2)
  {
    v6 = 0x100000000;
  }

  v7 = (v5 & v6) != 0;
  v8 = (*((*v3 & *v1) + 0x238))(v2);
  PeoplePickerActionBar.updateButton(_:isEnabled:)(v8, v7);

  PeoplePickerActionBar.showAddPersonButton(avLess:)(v2);
}

Swift::Void __swiftcall PeoplePickerActionBar.updateStateForSharePlayButtons()()
{
  v1 = PeoplePickerActionBar.messagesButton.getter();
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x170);
  v3 = v2();
  PeoplePickerActionBar.updateButton(_:isEnabled:)(v1, BYTE4(v3) & 1);

  v4 = PeoplePickerActionBar.videoButton.getter();
  v5 = v2();
  PeoplePickerActionBar.updateButton(_:isEnabled:)(v4, BYTE2(v5) & 1);

  PeoplePickerActionBar.showMessagesAndVideoButtons()();
}

id PeoplePickerActionBar.updateButton(_:isEnabled:)(void *a1, char a2)
{
  v3 = a2 & 1;
  result = [a1 isEnabled];
  if (result != v3)
  {

    return [a1 setEnabled_];
  }

  return result;
}

id PeoplePickerActionBar.updateAudioButtonAction()()
{
  v1 = PeoplePickerActionBar.audioCallsRequireDisambiguation()();
  if (v1)
  {
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
    }

    v2 = static OS_os_log.conversationKit;
    v3 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Updating audio button with disambiguation menu", 46, 2, &dword_1BBC58000, v2, v3, MEMORY[0x1E69E7CC0]);
    v4 = PeoplePickerActionBar.audioButton.getter();
    [v4 removeTarget:v0 action:0 forControlEvents:64];

    v5 = (v0 + OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar____lazy_storage___audioButton);
    v6 = *(v0 + OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar____lazy_storage___audioButton);
    v7 = PeoplePickerActionBar.audioCallDisambiguationMenu.getter();
    [v6 setMenu_];
  }

  else
  {
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
    }

    v8 = static OS_os_log.conversationKit;
    v9 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Updating audio button to default behavior", 41, 2, &dword_1BBC58000, v8, v9, MEMORY[0x1E69E7CC0]);
    v10 = PeoplePickerActionBar.audioButton.getter();
    [v10 addTarget:v0 action:sel_audioButtonTapped_ forControlEvents:64];

    v5 = (v0 + OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar____lazy_storage___audioButton);
    [*(v0 + OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar____lazy_storage___audioButton) setMenu_];
  }

  v11 = *v5;

  return [v11 setShowsMenuAsPrimaryAction_];
}

unint64_t PeoplePickerActionBar.audioCallsRequireDisambiguation()()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x170);
  if (v1())
  {
    return (v1() >> 8) & 1;
  }

  else
  {
    return 0;
  }
}

void PeoplePickerActionBar.hideAllButtons()()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar_allButtons);
  v2 = specialized Array.count.getter();

  for (i = 0; v2 != i; ++i)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v6 = OUTLINED_FUNCTION_45_1();
      v4 = MEMORY[0x1BFB22010](v6);
    }

    else
    {
      if (i >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v4 = *(v1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    [v4 setHidden_];
  }
}

void PeoplePickerActionBar.showInviteWithMessagesButton()()
{
  PeoplePickerActionBar.hideAllButtons()();
  v2 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_15_49();
  v4 = (*(v3 + 768))();
  OUTLINED_FUNCTION_32_32(v4);

  OUTLINED_FUNCTION_13_2();
  v6 = (*((*v2 & v5) + 0x170))();
  v8 = 1;
  if (v6 & 0x100) != 0 || (v6)
  {
    OUTLINED_FUNCTION_15_49();
    if (((*(v7 + 296))() - 2) < 3u)
    {
      v8 = 0;
    }
  }

  v9 = PeoplePickerActionBar.audioButton.getter();
  [v9 (v1 + 1656)];
}

void PeoplePickerActionBar.showAddPersonButton(avLess:)(uint64_t a1)
{
  PeoplePickerActionBar.hideAllButtons()();
  v3 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x238))(a1);
  [v3 setHidden_];
}

void PeoplePickerActionBar.showAudioAndVideoButtons()(uint64_t (*a1)(void))
{
  PeoplePickerActionBar.hideAllButtons()();
  v3 = a1();
  OUTLINED_FUNCTION_32_32(v3);

  v4 = PeoplePickerActionBar.videoButton.getter();
  [v4 (v1 + 1656)];
}

uint64_t PeoplePickerActionBar.updateLinkButtonsEnabled()()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  v6 = v5 - v4;
  v7 = type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8();
  v13 = v12 - v11;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  v14 = static OS_dispatch_queue.main.getter();
  OUTLINED_FUNCTION_20();
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = partial apply for closure #1 in PeoplePickerActionBar.updateLinkButtonsEnabled();
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_122;
  v16 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1BFB215C0](0, v13, v6, v16);
  _Block_release(v16);

  (*(v2 + 8))(v6, v0);
  return (*(v9 + 8))(v13, v7);
}

void closure #1 in PeoplePickerActionBar.updateLinkButtonsEnabled()(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = MEMORY[0x1E69E7D40];
    v4 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x300))();
    [v4 setEnabled_];
  }
}

id PeoplePickerActionBar.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_20_2();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_18_1();

  return [v2 v3];
}

id PeoplePickerActionBar.layoutSubviews()(SEL *a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for PeoplePickerActionBar(0);
  return objc_msgSendSuper2(&v4, *a1);
}

void PeoplePickerActionBar.audioButtonTapped(_:)()
{
  v1 = MEMORY[0x1E69E7D40];
  if (((*((*MEMORY[0x1E69E7D40] & *v0) + 0x170))() & 1) != 0 && (v2 = (*((*v1 & *v0) + 0x140))()) != 0)
  {
    v12 = v2;
    if ((*((*v1 & *v0) + 0x110))())
    {
      v4 = v3;
      ObjectType = swift_getObjectType();
      v6 = *(v4 + 8);
      v11 = v12;
      v6(v0, v12, 0, ObjectType, v4);
      swift_unknownObjectRelease();

      v7 = v11;
    }

    else
    {
      v7 = v12;
    }
  }

  else if ((*((*v1 & *v0) + 0x110))())
  {
    v9 = v8;
    v10 = swift_getObjectType();
    (*(v9 + 8))(v0, 0, 128, v10, v9);

    swift_unknownObjectRelease();
  }
}

uint64_t PeoplePickerActionBar.createLinkButtonTapped(_:)(uint64_t a1)
{
  result = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x110))();
  if (result)
  {
    v5 = v4;
    ObjectType = swift_getObjectType();
    (*(v5 + 8))(v1, a1, 64, ObjectType, v5);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t PeoplePickerActionBar.videoButtonTapped()()
{
  result = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x110))();
  if (result)
  {
    v3 = v2;
    ObjectType = swift_getObjectType();
    (*(v3 + 8))(v0, 1, 128, ObjectType, v3);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t PeoplePickerActionBar.cancelButtonTapped(_:)(uint64_t a1, uint64_t a2)
{
  result = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x110))(a1);
  if (result)
  {
    v6 = v5;
    ObjectType = swift_getObjectType();
    (*(v6 + 8))(v2, a2, 128, ObjectType, v6);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t static PeoplePickerActionBar.createButtonBaseConfiguration(title:symbolName:titleLineBreakMode:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v30 = a6;
  v26 = a5;
  v27 = a1;
  v28 = a3;
  v29 = a4;
  v6 = type metadata accessor for AttributeContainer();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v26 - v8;
  v10 = type metadata accessor for UIButton.Configuration.Size();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1BFB21AA0](v16);
  (*(v15 + 104))(v18, *MEMORY[0x1E69DC508], v14);
  UIButton.Configuration.cornerStyle.setter();
  (*(v11 + 104))(v13, *MEMORY[0x1E69DC568], v10);
  UIButton.Configuration.buttonSize.setter();

  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  v19 = type metadata accessor for AttributedString();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v19);
  UIButton.Configuration.attributedTitle.setter();
  v20 = UIButton.Configuration.attributedTitle.modify();
  if (!__swift_getEnumTagSinglePayload(v21, 1, v19))
  {
    v31 = [objc_opt_self() preferredFontForTextStyle_];
    lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.FontAttribute and conformance AttributeScopes.UIKitAttributes.FontAttribute();
    AttributedString.subscript.setter();
  }

  v20(v32, 0);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage, 0x1E69DCAB8);
  v22 = v29;

  @nonobjc UIImage.__allocating_init(systemName:)(v28, v22);
  UIButton.Configuration.image.setter();
  v23 = [objc_opt_self() configurationWithTextStyle:*MEMORY[0x1E69DDCF8] scale:2];
  UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
  UIButton.Configuration.imagePadding.setter();
  UIButton.Configuration.contentInsets.setter();
  if (one-time initialization token for activeButtonBackgroundColor != -1)
  {
    swift_once();
  }

  v24 = static Colors.PeoplePickerViewController.activeButtonBackgroundColor;
  result = UIButton.Configuration.baseBackgroundColor.setter();
  if ((v30 & 1) == 0)
  {
    return UIButton.Configuration.titleLineBreakMode.setter();
  }

  return result;
}

Swift::Void __swiftcall PeoplePickerActionBar.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  isa = a1.value.super.isa;
  v11.receiver = v1;
  v11.super_class = type metadata accessor for PeoplePickerActionBar(0);
  objc_msgSendSuper2(&v11, sel_traitCollectionDidChange_, isa);
  if (isa)
  {
    isa = [(objc_class *)isa preferredContentSizeCategory];
  }

  v3 = [v1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  if (!isa)
  {

    goto LABEL_11;
  }

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  if (v5 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v7 == v8)
  {

    return;
  }

  v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v10 & 1) == 0)
  {
LABEL_11:
    PeoplePickerActionBar.updateFonts()();
  }
}

void PeoplePickerActionBar.updateFonts()()
{
  v1 = &_sSo8UIButtonC5UIKitE13ConfigurationVSgMd;
  v2 = &_sSo8UIButtonC5UIKitE13ConfigurationVSgMR;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v27 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v24 - v6;
  v8 = *(v0 + OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar_allButtons);
  v9 = specialized Array.count.getter();
  v10 = v8 & 0xC000000000000001;
  v28 = v8 & 0xFFFFFFFFFFFFFF8;
  v25 = *MEMORY[0x1E69DDD40];

  v11 = 0;
  v26 = v8 & 0xC000000000000001;
  while (1)
  {
    if (v9 == v11)
    {

      return;
    }

    if (v10)
    {
      v12 = MEMORY[0x1BFB22010](v11, v8);
    }

    else
    {
      if (v11 >= *(v28 + 16))
      {
        goto LABEL_19;
      }

      v12 = *(v8 + 8 * v11 + 32);
    }

    v13 = v12;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    objc_opt_self();
    v14 = swift_dynamicCastObjCClass();
    if (v14)
    {
      v15 = v14;
      UIButton.configuration.getter();
      v16 = type metadata accessor for UIButton.Configuration();
      if (__swift_getEnumTagSinglePayload(v7, 1, v16))
      {
        outlined init with copy of Participant?(v7, v27, v1, v2);
        UIButton.configuration.setter();
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v7, v1, v2);
      }

      else
      {
        v17 = v2;
        v18 = v1;
        v19 = UIButton.Configuration.attributedTitle.modify();
        v21 = v20;
        v22 = type metadata accessor for AttributedString();
        if (__swift_getEnumTagSinglePayload(v21, 1, v22))
        {
          v19(v30, 0);
          v1 = v18;
          v23 = v18;
          v2 = v17;
          outlined init with copy of Participant?(v7, v27, v23, v17);
          UIButton.configuration.setter();
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v7, v1, v17);
        }

        else
        {
          v29 = [objc_opt_self() preferredFontForTextStyle_];
          lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.FontAttribute and conformance AttributeScopes.UIKitAttributes.FontAttribute();
          AttributedString.subscript.setter();
          v19(v30, 0);
          UIButton.configuration.setter();
          v1 = v18;
          v2 = v17;
        }

        v10 = v26;
      }

      [v15 setNeedsUpdateConfiguration];
    }

    ++v11;
  }

  __break(1u);
LABEL_19:
  __break(1u);
}

unint64_t lazy protocol witness table accessor for type RTTType and conformance RTTType()
{
  result = lazy protocol witness table cache variable for type RTTType and conformance RTTType;
  if (!lazy protocol witness table cache variable for type RTTType and conformance RTTType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RTTType and conformance RTTType);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RTTType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_15ConversationKit18PeoplePickerActionO(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = v1;
  v3 = v1 >> 6;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t getEnumTagSinglePayload for PeoplePickerAction(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x3E && *(a1 + 9))
    {
      v2 = *a1 + 61;
    }

    else
    {
      v2 = (*(a1 + 8) & 0x3C | (*(a1 + 8) >> 6)) ^ 0x3F;
      if (v2 >= 0x3D)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t storeEnumTagSinglePayload for PeoplePickerAction(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3D)
  {
    *(result + 8) = 0;
    *result = a2 - 62;
    if (a3 >= 0x3E)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3E)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 4 * (((-a2 >> 2) & 0xF) - 16 * a2);
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for PeoplePickerAction(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    v2 = *(result + 8) & 3 | (a2 << 6);
  }

  else
  {
    *result = a2 - 2;
    v2 = 0x80;
  }

  *(result + 8) = v2;
  return result;
}

unint64_t getEnumTagSinglePayload for ActionBarButtonsStyle(unint64_t result, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
LABEL_17:
    v6 = *result;
    if (v6 >= 2)
    {
      v7 = (v6 + 2147483646) & 0x7FFFFFFF;
      result = v7 - 2;
      if (v7 > 2)
      {
        return result;
      }
    }

    return 0;
  }

  v2 = a2 + 4;
  if (a2 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  switch(v4)
  {
    case 1:
      v5 = *(result + 1);
      if (!*(result + 1))
      {
        goto LABEL_17;
      }

      goto LABEL_15;
    case 2:
      v5 = *(result + 1);
      if (!*(result + 1))
      {
        goto LABEL_17;
      }

      goto LABEL_15;
    case 3:
      __break(1u);
      return result;
    case 4:
      v5 = *(result + 1);
      if (!v5)
      {
        goto LABEL_17;
      }

LABEL_15:
      result = (*result | (v5 << 8)) - 4;
      break;
    default:
      goto LABEL_17;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ActionBarButtonsStyle(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 4;
  if (a3 + 4 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 >= 0xFC)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xFB)
  {
    v7 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v6)
    {
      case 1:
        result[1] = v7;
        break;
      case 2:
        *(result + 1) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 1) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

void type metadata completion function for PeoplePickerActionBar(uint64_t a1)
{
  _sSo8UIButtonC5UIKitE13ConfigurationVSgMaTm_0(319, &lazy cache variable for type metadata for UIButton.Configuration?, MEMORY[0x1E69DC598]);
  if (v1 <= 0x3F)
  {
    _sSo8UIButtonC5UIKitE13ConfigurationVSgMaTm_0(319, &lazy cache variable for type metadata for DropdownViewModel.MenuItem?, type metadata accessor for DropdownViewModel.MenuItem);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void _sSo8UIButtonC5UIKitE13ConfigurationVSgMaTm_0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t InCallBannerViewConstraintManager.__allocating_init(layoutIdiom:containingGuide:containingView:visibleGuide:bannerView:bannerDodgingGuide:)(char *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v12 = swift_allocObject();
  InCallBannerViewConstraintManager.init(layoutIdiom:containingGuide:containingView:visibleGuide:bannerView:bannerDodgingGuide:)(a1, a2, a3, a4, a5, a6);
  return v12;
}

id (*InCallBannerViewConstraintManager.visibleTranslation.modify(void *a1))(uint64_t a1)
{
  v3 = *(v1 + 56);
  a1[1] = v3;
  [v3 constant];
  *a1 = v4;
  return InCallBannerViewConstraintManager.visibleTranslation.modify;
}

uint64_t InCallBannerViewConstraintManager.init(layoutIdiom:containingGuide:containingView:visibleGuide:bannerView:bannerDodgingGuide:)(char *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v7 = v6;
  v13 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo18NSLayoutConstraintCGMd, &_sSaySo18NSLayoutConstraintCGMR);
  lazy protocol witness table accessor for type InCallBannerState and conformance InCallBannerState();
  *(v7 + 64) = Dictionary.init(dictionaryLiteral:)();
  v14 = [objc_allocWithZone(MEMORY[0x1E69DCC20]) init];
  [a3 addLayoutGuide_];
  *(v7 + 16) = v13;
  *(v7 + 24) = a2;
  *(v7 + 32) = a3;
  *(v7 + 72) = v14;
  *(v7 + 80) = a4;
  *(v7 + 40) = a5;
  *(v7 + 48) = a6;
  v15 = a2;
  v16 = a3;
  v17 = v14;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = [v19 topAnchor];
  v22 = [v18 topAnchor];
  Layout.MultiwayFaceTime.init()(v30);
  v23 = [v21 constraintEqualToAnchor:v22 constant:v30[32]];

  *(v7 + 56) = v23;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if (Features.isICUIRedesignEnabled.getter())
  {
    v24 = [objc_opt_self() currentDevice];
    v25 = [v24 userInterfaceIdiom];

    if (v25 == 1)
    {
      v26 = *(v7 + 56);
      [v16 safeAreaInsets];
      [v26 setConstant_];
    }
  }

  v27 = objc_opt_self();
  InCallBannerViewConstraintManager.layoutGuideConstraints()();
  type metadata accessor for NSLayoutConstraint();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v27 activateConstraints_];

  return v7;
}

unint64_t lazy protocol witness table accessor for type InCallBannerState and conformance InCallBannerState()
{
  result = lazy protocol witness table cache variable for type InCallBannerState and conformance InCallBannerState;
  if (!lazy protocol witness table cache variable for type InCallBannerState and conformance InCallBannerState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InCallBannerState and conformance InCallBannerState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InCallBannerState and conformance InCallBannerState;
  if (!lazy protocol witness table cache variable for type InCallBannerState and conformance InCallBannerState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InCallBannerState and conformance InCallBannerState);
  }

  return result;
}

uint64_t InCallBannerViewConstraintManager.layoutGuideConstraints()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1BC4BA920;
  v3 = *(v1 + 48);
  v4 = [v3 leadingAnchor];
  v5 = *(v1 + 32);
  v6 = [v5 leadingAnchor];
  v7 = [v4 constraintEqualToAnchor_];

  *(v2 + 32) = v7;
  v8 = [v3 trailingAnchor];
  v9 = [v5 trailingAnchor];
  v10 = [v8 constraintEqualToAnchor_];

  *(v2 + 40) = v10;
  v11 = *(v1 + 72);
  v12 = [v11 leadingAnchor];
  v13 = *(v1 + 80);
  v14 = [v13 leadingAnchor];
  v15 = [v12 constraintEqualToAnchor_];

  *(v2 + 48) = v15;
  v16 = [v11 trailingAnchor];
  v17 = v1;
  v18 = [v13 trailingAnchor];
  v19 = [v16 constraintEqualToAnchor_];

  *(v2 + 56) = v19;
  v20 = [v11 heightAnchor];
  v21 = [v13 heightAnchor];
  v22 = [v20 constraintEqualToAnchor_];

  *(v2 + 64) = v22;
  v71 = v2;
  if ((*(v1 + 16) & 1) == 0)
  {
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1BC4BAC30;
    v27 = [v11 topAnchor];
    v28 = &off_1E7FE9000;
    v29 = [v5 bottomAnchor];
    Layout.MultiwayFaceTime.init()(v72);
    v30 = [v27 constraintEqualToAnchor:v29 constant:v73];

    *(v26 + 32) = v30;
    specialized Array.append<A>(contentsOf:)(v26);
    if (static Platform.current.getter() == 2)
    {
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      if (Features.isICUIRedesignEnabled.getter())
      {
        v31 = swift_allocObject();
        *(v31 + 16) = xmmword_1BC4BAC30;
        v32 = [v13 trailingAnchor];
        v33 = *(v1 + 24);
        v34 = [v33 trailingAnchor];
        Layout.MultiwayFaceTime.init()(v76);
        v35 = [v32 &selRef_uniqueProxyIdentifier + 6];

        *(v31 + 32) = v35;
        v28 = &off_1E7FE9000;
        goto LABEL_21;
      }
    }

    v36 = [v13 leadingAnchor];
    v33 = *(v1 + 24);
    v37 = [v33 leadingAnchor];
    Layout.MultiwayFaceTime.init()(v74);
    v38 = [v36 constraintEqualToAnchor:v37 constant:v75];

    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    if (Features.isICUIRedesignEnabled.getter())
    {
      v39 = objc_opt_self();
      v40 = [v39 currentDevice];
      v41 = [v40 0x1FAB4ADF8];

      if (v41 == 1)
      {
        v42 = [v13 leadingAnchor];
        v43 = [v5 leadingAnchor];
        Layout.MultiwayFaceTime.init()(v76);
        v44 = [v42 constraintEqualToAnchor:v43 constant:v78];

        v38 = v44;
      }

      else
      {
        v54 = [v39 currentDevice];
        v55 = [v54 0x1FAB4ADF8];

        if (!v55)
        {
          swift_beginAccess();
          v28 = &off_1E7FE9000;
          if (static AmbientState.isPresented == 1 && (Features.isICUIRedesignEnabled.getter() & 1) != 0)
          {
            v67 = [v13 leadingAnchor];
            v68 = [v5 safeAreaLayoutGuide];
            v69 = [v68 leadingAnchor];

            v70 = [v67 constraintEqualToAnchor_];
            v28 = &off_1E7FE9000;

            v38 = v70;
          }

          goto LABEL_20;
        }
      }

      v28 = &off_1E7FE9000;
    }

LABEL_20:
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1BC4BAC30;
    *(v31 + 32) = v38;
LABEL_21:
    specialized Array.append<A>(contentsOf:)(v31);
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    if (Features.isICUIRedesignEnabled.getter())
    {
      if (static Platform.current.getter() == 2)
      {
        v56 = swift_allocObject();
        *(v56 + 16) = xmmword_1BC4BAC30;
        v57 = [v13 v28[480]];
        v58 = [v5 v28[480]];
        Layout.MultiwayFaceTime.init()(v79);
        v59 = [v57 constraintEqualToAnchor:v58 constant:-v81];
      }

      else
      {
        v60 = objc_opt_self();
        v61 = [v60 currentDevice];
        v62 = [v61 0x1FAB4ADF8];

        if (v62 != 1)
        {
          v65 = [v60 currentDevice];
          v66 = [v65 0x1FAB4ADF8];

          if (v66)
          {
            return v71;
          }

          swift_beginAccess();
          if (static AmbientState.isPresented != 1 || (Features.isICUIRedesignEnabled.getter() & 1) == 0)
          {
            return v71;
          }
        }

        v56 = swift_allocObject();
        *(v56 + 16) = xmmword_1BC4BAC30;
        v57 = [v13 topAnchor];
        v58 = [v33 topAnchor];
        Layout.MultiwayFaceTime.init()(v79);
        v59 = [v57 constraintEqualToAnchor:v58 constant:v81];
      }
    }

    else
    {
      v56 = swift_allocObject();
      *(v56 + 16) = xmmword_1BC4BAC30;
      v57 = [v13 v28[480]];
      v58 = [v33 v28[480]];
      Layout.MultiwayFaceTime.init()(v79);
      v59 = [v57 constraintEqualToAnchor:v58 constant:-v81];
    }

    v63 = v59;

    *(v56 + 32) = v63;
    specialized Array.append<A>(contentsOf:)(v56);
    return v71;
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if (Features.isICUIRedesignEnabled.getter())
  {
    v23 = [v13 leadingAnchor];
    v24 = [v5 leadingAnchor];
    v25 = [v23 constraintEqualToAnchor:v24 constant:20.0];
  }

  else
  {
    v23 = [v13 centerXAnchor];
    v24 = [*(v1 + 24) centerXAnchor];
    v25 = [v23 constraintEqualToAnchor_];
  }

  v45 = v25;

  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_1BC4BC370;
  *(v46 + 32) = v45;
  v47 = v45;
  v48 = [v13 topAnchor];
  v49 = [*(v17 + 24) topAnchor];
  v50 = [v48 constraintEqualToAnchor_];

  *(v46 + 40) = v50;
  v51 = [v11 bottomAnchor];
  v52 = [v5 topAnchor];
  Layout.MultiwayFaceTime.init()(v79);
  v53 = [v51 constraintEqualToAnchor:v52 constant:-v80];

  *(v46 + 48) = v53;
  specialized Array.append<A>(contentsOf:)(v46);

  return v71;
}

id *InCallBannerViewConstraintManager.deinit()
{

  return v0;
}

uint64_t InCallBannerViewConstraintManager.__deallocating_deinit()
{
  InCallBannerViewConstraintManager.deinit();

  return swift_deallocClassInstance();
}

void InCallBannerViewConstraintManager.constraints(forState:)(unsigned __int8 *a1)
{
  v2 = *a1;
  swift_beginAccess();
  if (*(*(v1 + 64) + 16))
  {
    specialized __RawDictionaryStorage.find<A>(_:)(v2);
    if (v3)
    {

      return;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySaySo18NSLayoutConstraintCGGMd, &_ss23_ContiguousArrayStorageCySaySo18NSLayoutConstraintCGGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC4BB980;
  *(inited + 32) = InCallBannerViewConstraintManager.horizontalConstraints(forState:)();
  v5 = inited + 32;
  *(inited + 40) = InCallBannerViewConstraintManager.verticalConstraints(forState:)();
  v34[0] = v2;
  v29 = v1;
  v6 = 0;
  *(inited + 48) = InCallBannerViewConstraintManager.layoutGuideConstraints(forState:)(v34);
  v7 = MEMORY[0x1E69E7CC0];
  v30 = v5;
  while (1)
  {
    if (v6 == 3)
    {
      swift_setDeallocating();
      specialized _ContiguousArrayStorage.__deallocating_deinit();
      swift_beginAccess();

      swift_isUniquelyReferenced_nonNull_native();
      v33 = *(v29 + 64);
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)();
      *(v29 + 64) = v33;
      swift_endAccess();
      return;
    }

    v8 = *(v5 + 8 * v6);
    v9 = v8 >> 62 ? __CocoaSet.count.getter() : *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v10 = v7 >> 62;
    v11 = v7 >> 62 ? __CocoaSet.count.getter() : *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v12 = v11 + v9;
    if (__OFADD__(v11, v9))
    {
      break;
    }

    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v10)
      {
LABEL_16:
        __CocoaSet.count.getter();
      }

LABEL_17:
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v13 = v7 & 0xFFFFFFFFFFFFFF8;
      goto LABEL_18;
    }

    if (v10)
    {
      goto LABEL_16;
    }

    v13 = v7 & 0xFFFFFFFFFFFFFF8;
    if (v12 > *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_17;
    }

LABEL_18:
    v32 = v6 + 1;
    v14 = *(v13 + 16);
    v15 = (*(v13 + 24) >> 1) - v14;
    v16 = v13 + 8 * v14;
    if (v8 >> 62)
    {
      v18 = __CocoaSet.count.getter();
      if (v18)
      {
        v19 = v18;
        v20 = __CocoaSet.count.getter();
        if (v15 < v20)
        {
          goto LABEL_41;
        }

        if (v19 < 1)
        {
          goto LABEL_42;
        }

        v31 = v20;
        v21 = v16 + 32;
        lazy protocol witness table accessor for type [NSLayoutConstraint] and conformance [A]();
        for (i = 0; i != v19; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo18NSLayoutConstraintCGMd, &_sSaySo18NSLayoutConstraintCGMR);
          v23 = specialized protocol witness for Collection.subscript.read in conformance [A](v34, i, v8);
          v25 = *v24;
          v23(v34, 0);
          *(v21 + 8 * i) = v25;
        }

        v5 = v30;
        v17 = v31;
        goto LABEL_28;
      }

LABEL_32:

      v6 = v32;
      if (v9 > 0)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v17 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v17)
      {
        goto LABEL_32;
      }

      if (v15 < v17)
      {
        goto LABEL_40;
      }

      type metadata accessor for NSLayoutConstraint();
      swift_arrayInitWithCopy();
LABEL_28:

      v6 = v32;
      if (v17 < v9)
      {
        goto LABEL_38;
      }

      if (v17 > 0)
      {
        v26 = *(v13 + 16);
        v27 = __OFADD__(v26, v17);
        v28 = v26 + v17;
        if (v27)
        {
          goto LABEL_39;
        }

        *(v13 + 16) = v28;
      }
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
}

uint64_t InCallBannerViewConstraintManager.horizontalConstraints(forState:)()
{
  v1 = *(v0 + 40);
  v2 = [v1 centerXAnchor];
  v3 = *(v0 + 80);
  v4 = [v3 centerXAnchor];
  v5 = [v2 constraintEqualToAnchor_];

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if (Features.isICUIRedesignEnabled.getter())
  {
    v6 = [v1 leadingAnchor];
    v7 = [v3 leadingAnchor];
    v8 = [v6 constraintEqualToAnchor_];

    v5 = v8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1BC4BA930;
  *(v9 + 32) = v5;
  v10 = v5;
  v11 = [v1 widthAnchor];
  v12 = [v3 widthAnchor];
  v13 = [v11 constraintEqualToAnchor_];

  *(v9 + 40) = v13;
  return v9;
}

uint64_t InCallBannerViewConstraintManager.verticalConstraints(forState:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1BC4BA930;
  v2 = *(v0 + 56);
  *(v1 + 32) = v2;
  v3 = *(v0 + 40);
  v4 = v2;
  v5 = [v3 heightAnchor];
  v6 = [*(v0 + 80) heightAnchor];
  v7 = [v5 constraintEqualToAnchor_];

  *(v1 + 40) = v7;
  return v1;
}

uint64_t InCallBannerViewConstraintManager.layoutGuideConstraints(forState:)(unsigned __int8 *a1)
{
  v2 = v1;
  v3 = *a1;
  if (one-time initialization token for bottomInsetAfterPadding != -1)
  {
    swift_once();
  }

  v4 = *&static Layout.MediaPip.bottomInsetAfterPadding;
  v5 = static Layout.MediaPip.padding.getter();
  if (*(v1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1BC4BA930;
    v7 = *(v2 + 48);
    v8 = [v7 topAnchor];
    if (v3)
    {
      if (v3 == 1)
      {
        v9 = [*(v2 + 80) bottomAnchor];
        v10 = [v8 constraintEqualToAnchor:v9 constant:v4];
      }

      else
      {
        v9 = [*(v2 + 80) bottomAnchor];
        v10 = [v8 constraintEqualToAnchor:v9 constant:58.0];
      }

      *(v6 + 32) = v10;
      v11 = [v7 bottomAnchor];
      v12 = [*(v2 + 24) bottomAnchor];
      v13 = [v11 constraintEqualToAnchor:v12 constant:v5];
    }

    else
    {
      v27 = *(v2 + 24);
      v28 = [v27 topAnchor];
      v29 = [v8 constraintEqualToAnchor:v28 constant:-v5];

      *(v6 + 32) = v29;
      v11 = [v7 bottomAnchor];
      v12 = [v27 bottomAnchor];
      v13 = [v11 constraintEqualToAnchor:v12 constant:v5];
    }

    v30 = v13;

    *(v6 + 40) = v30;
  }

  else
  {
    v14 = *(v1 + 48);
    v15 = [v14 bottomAnchor];
    v16 = [*(v2 + 80) topAnchor];
    v17 = -v4;
    v18 = [v15 constraintEqualToAnchor:v16 constant:v17];

    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    if (Features.isICUIRedesignEnabled.getter())
    {
      v19 = [objc_opt_self() currentDevice];
      v20 = [v19 userInterfaceIdiom];

      if (v20 == 1)
      {
        v21 = [v14 bottomAnchor];
        v22 = [*(v2 + 24) bottomAnchor];
        v23 = [v21 constraintEqualToAnchor:v22 constant:v17];

        v18 = v23;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1BC4BA930;
    v24 = [v14 topAnchor];
    v25 = [*(v2 + 24) topAnchor];
    v26 = [v24 constraintEqualToAnchor:v25 constant:-v5];

    *(v6 + 32) = v26;
    *(v6 + 40) = v18;
  }

  return v6;
}

BOOL static CallScreeningAnsweringState.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2];
  v6 = a2[2];

  return _s15ConversationKit23CKStateMachineContainerC2eeoiySbACyxG_AEtFZAA13CallScreeningO5StateO_Tt1g5(v5, v6);
}

uint64_t CallScreeningAnsweringState.init(prevState:callUUID:onEnterState:)@<X0>(uint64_t a1@<X3>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X6>, void *a5@<X8>)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit23CKStateMachineContainerCyAA13CallScreeningO5StateOGMd, &_s15ConversationKit23CKStateMachineContainerCyAA13CallScreeningO5StateOGMR);
  v10 = swift_allocObject();
  result = swift_weakInit();
  *a5 = a1;
  a5[1] = a2;
  a5[2] = v10;
  a5[3] = a3;
  a5[4] = a4;
  return result;
}

uint64_t CallScreeningAnsweringState.init(prevState:onEnterState:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit23CKStateMachineContainerCyAA13CallScreeningO5StateOGMd, &_s15ConversationKit23CKStateMachineContainerCyAA13CallScreeningO5StateOGMR);
  v8 = swift_allocObject();
  swift_weakInit();
  v10 = *(a1 + 16);
  v9 = *(a1 + 24);

  *a4 = v10;
  a4[1] = v9;
  a4[2] = v8;
  a4[3] = a2;
  a4[4] = a3;
  return result;
}

uint64_t CallScreeningAnsweringState.callUUID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t CallScreeningAnsweringState.onEnterState.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t CallScreeningAnsweringState.willExit(to:)(uint64_t a1, uint64_t a2)
{
  v33 = a1;
  v5 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v2[1];
  v30[0] = *v2;
  v30[1] = v11;
  v31 = *(v2 + 4);
  OUTLINED_FUNCTION_1_191();
  WitnessTable = swift_getWitnessTable();
  result = CallScreeningState.stateMachine.getter(a2, WitnessTable);
  if (result)
  {
    v27 = v7;
    v28 = v5;
    v29 = v3;
    OUTLINED_FUNCTION_19_55();
    v14();
    v32 = *v2;
    outlined init with copy of String(&v32, v30);

    v15 = v33;
    outlined init with copy of CallScreening.State(v33, v30);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    outlined destroy of CallScreening.State(v15);
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *&v30[0] = v26;
      *v18 = 136446466;
      v19 = CallScreeningAnsweringState.description.getter();
      v21 = v20;
      outlined destroy of String(&v32);

      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, v30);

      *(v18 + 4) = v22;
      *(v18 + 12) = 2082;
      v23 = CallScreening.State.description.getter();
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, v30);

      *(v18 + 14) = v25;
      _os_log_impl(&dword_1BBC58000, v16, v17, "%{public}s Exiting to %{public}s", v18, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_3_4();
      MEMORY[0x1BFB23DF0]();
      OUTLINED_FUNCTION_3_4();
      MEMORY[0x1BFB23DF0]();

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
      outlined destroy of String(&v32);
    }

    return (*(v27 + 8))(v10, v28);
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CallScreeningAnsweringState.enteredState()()
{
  v3 = v2;
  v4 = v1;
  v5 = v0;
  v6 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v1 + 1);
  v33[0] = *v1;
  v33[1] = v12;
  v34 = v1[4];
  OUTLINED_FUNCTION_1_191();
  WitnessTable = swift_getWitnessTable();
  if (CallScreeningState.stateMachine.getter(v5, WitnessTable))
  {
    v31 = v8;
    OUTLINED_FUNCTION_19_55();
    v14();
    v16 = *v1;
    v15 = v1[1];
    v29 = v1[3];
    v30 = v16;
    v17 = v1[4];
    v35 = v15;

    v32 = v17;

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      OUTLINED_FUNCTION_13_10();
      swift_slowAlloc();
      v28 = v3;
      OUTLINED_FUNCTION_6_125();
      v20 = swift_slowAlloc();
      v27 = v6;
      v21 = v20;
      *&v33[0] = v20;
      *v3 = 136446210;
      v26 = CallScreeningAnsweringState.description.getter();
      v23 = v22;

      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v23, v33);

      *(v3 + 4) = v24;
      _os_log_impl(&dword_1BBC58000, v18, v19, "EnteredState %{public}s", v3, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      OUTLINED_FUNCTION_3_4();
      MEMORY[0x1BFB23DF0]();
      OUTLINED_FUNCTION_3_4();
      MEMORY[0x1BFB23DF0]();

      (*(v31 + 8))(v11, v27);
    }

    else
    {

      (*(v31 + 8))(v11, v6);
    }

    v29(v4, v30, v35);
    swift_unknownObjectRelease();
  }
}

uint64_t CallScreeningAnsweringState.update(with:)(uint64_t a1, uint64_t a2)
{
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  v3[23] = type metadata accessor for AnsweringMachineCallStatus(0);
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v4 = type metadata accessor for CallScreeningStatus();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v3[29] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit10CallStatusO6status_Sb22isEligibleForScreeningSb0fI020CommunicationsUICore0ciD0OtMd, &_s15ConversationKit10CallStatusO6status_Sb22isEligibleForScreeningSb0fI020CommunicationsUICore0ciD0OtMR);
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v3[32] = v5;
  v3[33] = *(v5 - 8);
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v6 = static CKStateMachineActor.shared;
  v3[40] = static CKStateMachineActor.shared;

  return MEMORY[0x1EEE6DFA0](CallScreeningAnsweringState.update(with:), v6, 0);
}

uint64_t CallScreeningAnsweringState.update(with:)()
{
  v179 = v0;
  v1 = v0;
  v3 = *(v0 + 176);
  v2 = *(v0 + 184);
  v5 = *(v0 + 160);
  v4 = *(v0 + 168);
  v177 = 0;
  v178 = 0xE000000000000000;
  _StringGuts.grow(_:)(84);
  MEMORY[0x1BFB20B10](0x617473206C6C6163, 0xED0000203A737574);
  v6 = *(v5 + 32);
  v7 = CallStatus.description.getter(*(v5 + 32));
  MEMORY[0x1BFB20B10](v7);

  MEMORY[0x1BFB20B10](0xD00000000000001ALL, 0x80000001BC524C20);
  LODWORD(v181) = *(v5 + v2[9]);
  if (v181)
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  if (v181)
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  MEMORY[0x1BFB20B10](v8, v9);

  MEMORY[0x1BFB20B10](0xD000000000000013, 0x80000001BC4FA7B0);
  v10 = v2[7];
  lazy protocol witness table accessor for type CallScreeningStatus and conformance CallScreeningStatus();
  v174 = v10;
  v11 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1BFB20B10](v11);

  MEMORY[0x1BFB20B10](0xD000000000000012, 0x80000001BC524C40);
  v170 = *(v5 + v2[10]);
  *(v0 + 152) = v170;
  v12 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1BFB20B10](v12);

  v13 = v177;
  v14 = v178;
  v15 = *v3;
  v16 = v3[1];
  *(v0 + 48) = *(v3 + 4);
  *(v0 + 32) = v16;
  *(v0 + 16) = v15;
  OUTLINED_FUNCTION_1_191();
  WitnessTable = swift_getWitnessTable();
  v18 = CallScreeningState.stateMachine.getter(v4, WitnessTable);
  *(v0 + 328) = v18;
  if (v18)
  {
    v19 = *(v0 + 160);
    v21 = *(v19 + 16);
    v20 = *(v19 + 24);
    *(v0 + 56) = **(v0 + 176);
    v22 = v21 == *(v0 + 56) && v20 == *(v0 + 64);
    if (v22 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v169 = v0 + 56;
      v173 = v6;
      v159 = v20;
      v160 = v21;
      OUTLINED_FUNCTION_19_55();
      v175 = v24;
      v176 = v23;
      v25();

      v26 = Logger.logObject.getter();
      static os_log_type_t.default.getter();
      OUTLINED_FUNCTION_25_56();
      v27 = OUTLINED_FUNCTION_112_2();
      v171 = *(v0 + 312);
      v29 = *(v0 + 256);
      v28 = *(v0 + 264);
      v164 = v13;
      if (v27)
      {
        OUTLINED_FUNCTION_13_10();
        swift_slowAlloc();
        OUTLINED_FUNCTION_6_125();
        v30 = swift_slowAlloc();
        v177 = v30;
        *v13 = 136446210;
        *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v177);
        OUTLINED_FUNCTION_7_111(&dword_1BBC58000, v31, v32, "Answering machine state updating with %{public}s");
        __swift_destroy_boxed_opaque_existential_1(v30);
        OUTLINED_FUNCTION_3_4();
        MEMORY[0x1BFB23DF0]();
        OUTLINED_FUNCTION_3_4();
        MEMORY[0x1BFB23DF0]();
      }

      v165 = *(v28 + 8);
      v165(v171, v29);
      v33 = *(v0 + 240);
      v34 = *(v0 + 248);
      v35 = *(v0 + 224);
      v168 = *(v0 + 232);
      v36 = *(v0 + 216);
      v166 = *(v0 + 208);
      v37 = *(v0 + 176);
      v172 = *(v168 + 80);
      *v34 = v173;
      v34[1] = v181;
      (*(v36 + 104))(v35, *MEMORY[0x1E6995E98]);
      v38 = CallScreeningStatus.isBaseCase(_:)();
      v39 = *(v36 + 8);
      *(v0 + 336) = v39;
      *(v0 + 344) = (v36 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v161 = v39;
      v162 = v36 + 8;
      v39(v35, v166);
      HIDWORD(v163) = v38;
      v167 = (v38 & 1) == 0;
      v34[2] = v167;
      v40 = *(v36 + 16);
      v40(&v34[v172], v5 + v174, v166);
      v41 = swift_allocObject();
      *(v0 + 352) = v41;
      *(v41 + 16) = v176;
      *(v41 + 24) = v175;
      v43 = *v37;
      v42 = v37[1];
      *(v41 + 64) = *(v37 + 4);
      *(v41 + 32) = v43;
      *(v41 + 48) = v42;
      v44 = *(v168 + 80);
      *(v0 + 408) = v44;
      *v33 = v173;
      v33[1] = v181;
      v33[2] = v167;
      v45 = v33;
      v40(&v33[v44], &v34[v172], v166);
      if (v173 != 1)
      {
        v46 = v0 + 56;
        v47 = &stru_1BC4BA000;
        if (v173 == 4 && v181)
        {
          v48 = *(v0 + 248);
          v49 = v1[26];
          outlined init with copy of String(v169, (v1 + 17));

          outlined destroy of (status: CallStatus, isEligibleForScreening: Bool, isScreening: Bool, CallScreeningStatus)(v48);

          swift_unknownObjectRelease();

          v161(&v45[v44], v49);
          goto LABEL_39;
        }

        goto LABEL_25;
      }

      v46 = v0 + 56;
      v47 = &stru_1BC4BA000;
      if (v38)
      {
LABEL_25:
        outlined init with copy of String(v46, v0 + 72);

        v61 = OUTLINED_FUNCTION_14_76();
        v62(v61);

        v63 = Logger.logObject.getter();
        static os_log_type_t.default.getter();
        OUTLINED_FUNCTION_25_56();
        if (OUTLINED_FUNCTION_112_2())
        {
          OUTLINED_FUNCTION_13_10();
          swift_slowAlloc();
          OUTLINED_FUNCTION_6_125();
          v64 = swift_slowAlloc();
          v177 = v64;
          v72 = OUTLINED_FUNCTION_11_108(COERCE_FLOAT(v47[196].super.isa), v64, v65, v66, v67, v68, v69, v70, v71, v158, v159, v160, v161, v162, v163, v164);

          *(v46 + 4) = v72;
          OUTLINED_FUNCTION_7_111(&dword_1BBC58000, v73, v74, "Transitioning to ending state, recieved %{public}s");
          __swift_destroy_boxed_opaque_existential_1(v64);
          OUTLINED_FUNCTION_3_4();
          MEMORY[0x1BFB23DF0]();
          OUTLINED_FUNCTION_3_4();
          MEMORY[0x1BFB23DF0]();
        }

        else
        {
        }

        v90 = OUTLINED_FUNCTION_8_109();
        v91(v90);
        OUTLINED_FUNCTION_2_174();
        v181 = v92 + *v92;
        v93 = swift_task_alloc();
        *(v0 + 392) = v93;
        *v93 = v0;
        OUTLINED_FUNCTION_0_224(v93);
        goto LABEL_31;
      }

      if ((*(*(v0 + 216) + 88))(&v45[v44], *(v0 + 208)) != *MEMORY[0x1E6995EA0])
      {
        outlined init with copy of String(v169, v0 + 88);

        v111 = OUTLINED_FUNCTION_14_76();
        v112(v111);

        v113 = Logger.logObject.getter();
        static os_log_type_t.default.getter();
        OUTLINED_FUNCTION_25_56();
        if (OUTLINED_FUNCTION_112_2())
        {
          OUTLINED_FUNCTION_13_10();
          swift_slowAlloc();
          OUTLINED_FUNCTION_6_125();
          v114 = swift_slowAlloc();
          v177 = v114;
          v122 = OUTLINED_FUNCTION_11_108(4.8751e-34, v114, v115, v116, v117, v118, v119, v120, v121, v158, v159, v160, v161, v162, v163, v164);

          *(v0 + 60) = v122;
          OUTLINED_FUNCTION_7_111(&dword_1BBC58000, v123, v124, "Transitioning to screening state, recieved %{public}s");
          __swift_destroy_boxed_opaque_existential_1(v114);
          OUTLINED_FUNCTION_3_4();
          MEMORY[0x1BFB23DF0]();
          OUTLINED_FUNCTION_3_4();
          MEMORY[0x1BFB23DF0]();
        }

        else
        {
        }

        v125 = OUTLINED_FUNCTION_8_109();
        v126(v125);
        OUTLINED_FUNCTION_2_174();
        v181 = v127 + *v127;
        v128 = swift_task_alloc();
        *(v0 + 376) = v128;
        *v128 = v0;
        v129 = OUTLINED_FUNCTION_0_224(v128);
        OUTLINED_FUNCTION_12_99(v129, v130, v131, v132, v133, v134, v135, v136, v158, v159, v160);
LABEL_31:
        v94 = v181;

        __asm { BRAA            X8, X16 }
      }

      if (v170)
      {
        outlined init with copy of String(v169, v0 + 104);

        v95 = OUTLINED_FUNCTION_17_72();
        v96(v95);

        v97 = Logger.logObject.getter();
        static os_log_type_t.default.getter();
        OUTLINED_FUNCTION_25_56();
        if (OUTLINED_FUNCTION_112_2())
        {
          OUTLINED_FUNCTION_13_10();
          swift_slowAlloc();
          OUTLINED_FUNCTION_6_125();
          v98 = swift_slowAlloc();
          v177 = v98;
          v106 = OUTLINED_FUNCTION_11_108(4.8751e-34, v98, v99, v100, v101, v102, v103, v104, v105, v158, v159, v160, v161, v162, v163, v164);

          *(v0 + 60) = v106;
          OUTLINED_FUNCTION_7_111(&dword_1BBC58000, v107, v108, "Transitioning to screening state, not waiting for streaming token because this is not LiveVoicemail, recieved %{public}s");
          __swift_destroy_boxed_opaque_existential_1(v98);
          OUTLINED_FUNCTION_3_4();
          MEMORY[0x1BFB23DF0]();
          OUTLINED_FUNCTION_3_4();
          MEMORY[0x1BFB23DF0]();
        }

        else
        {
        }

        v146 = OUTLINED_FUNCTION_8_109();
        v147(v146);
        OUTLINED_FUNCTION_2_174();
        v181 = v148 + *v148;
        v149 = swift_task_alloc();
        *(v0 + 360) = v149;
        *v149 = v0;
        v150 = OUTLINED_FUNCTION_0_224(v149);
        OUTLINED_FUNCTION_12_99(v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160);
        goto LABEL_31;
      }

      outlined init with copy of String(v169, v0 + 120);

      v137 = OUTLINED_FUNCTION_17_72();
      v138(v137);
      v139 = Logger.logObject.getter();
      v140 = static os_log_type_t.default.getter();
      v141 = os_log_type_enabled(v139, v140);
      v142 = *(v0 + 304);
      v143 = *(v0 + 256);
      v144 = *(v0 + 248);
      if (v141)
      {
        v145 = swift_slowAlloc();
        *v145 = 0;
        _os_log_impl(&dword_1BBC58000, v139, v140, "Call is answered but the streaming token is 0, waiting for updates.", v145, 2u);
        OUTLINED_FUNCTION_3_4();
        MEMORY[0x1BFB23DF0]();
      }

      swift_unknownObjectRelease();

      v165(v142, v143);
      outlined destroy of (status: CallStatus, isEligibleForScreening: Bool, isScreening: Bool, CallScreeningStatus)(v144);
    }

    else
    {
      v75 = *(v0 + 200);
      v76 = *(v0 + 160);

      OUTLINED_FUNCTION_19_55();
      v77();
      outlined init with copy of AnsweringMachineCallStatus(v76, v75);
      v78 = Logger.logObject.getter();
      v79 = static os_log_type_t.default.getter();
      v80 = os_log_type_enabled(v78, v79);
      v82 = v1[33];
      v81 = v1[34];
      v83 = v1[32];
      v84 = v1[25];
      if (v80)
      {
        OUTLINED_FUNCTION_13_10();
        v181 = v81;
        v85 = swift_slowAlloc();
        v86 = swift_slowAlloc();
        v177 = v86;
        *v85 = 136446210;
        v87 = *(v84 + 16);
        v88 = *(v84 + 24);

        outlined destroy of AnsweringMachineCallStatus(v84);
        v89 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v87, v88, &v177);

        *(v85 + 4) = v89;
        _os_log_impl(&dword_1BBC58000, v78, v79, "Answering machine state ignoreing stateupdate for call with nonmathcing uuid %{public}s", v85, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v86);
        OUTLINED_FUNCTION_3_4();
        MEMORY[0x1BFB23DF0]();
        OUTLINED_FUNCTION_3_4();
        MEMORY[0x1BFB23DF0]();
        swift_unknownObjectRelease();

        (*(v82 + 8))(v181, v83);
      }

      else
      {
        swift_unknownObjectRelease();

        outlined destroy of AnsweringMachineCallStatus(v84);
        (*(v82 + 8))(v81, v83);
      }
    }
  }

  else
  {

    if (one-time initialization token for answeringMachine != -1)
    {
      swift_once();
    }

    v50 = *(v0 + 192);
    v51 = *(v0 + 160);
    __swift_project_value_buffer(v1[32], static Logger.answeringMachine);
    outlined init with copy of AnsweringMachineCallStatus(v51, v50);
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.default.getter();
    v54 = os_log_type_enabled(v52, v53);
    v55 = v1[24];
    if (v54)
    {
      OUTLINED_FUNCTION_13_10();
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v177 = v57;
      *v56 = 136446210;
      v58 = *(v55 + 16);
      v59 = *(v55 + 24);

      outlined destroy of AnsweringMachineCallStatus(v55);
      v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v59, &v177);

      *(v56 + 4) = v60;
      _os_log_impl(&dword_1BBC58000, v52, v53, "Answering machine state ignoring stateupdate uuid %{public}s because our statemachine is nill", v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v57);
      OUTLINED_FUNCTION_3_4();
      MEMORY[0x1BFB23DF0]();
      OUTLINED_FUNCTION_3_4();
      MEMORY[0x1BFB23DF0]();
    }

    else
    {

      outlined destroy of AnsweringMachineCallStatus(v55);
    }
  }

LABEL_39:
  v181 = v1[24];

  v109 = v1[1];

  return v109();
}

{
  v2 = *v1;
  OUTLINED_FUNCTION_1_2();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 368) = v0;

  v5 = *(v2 + 320);
  if (v0)
  {
    v6 = CallScreeningAnsweringState.update(with:);
  }

  else
  {
    v6 = CallScreeningAnsweringState.update(with:);
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

{
  v2 = *v1;
  OUTLINED_FUNCTION_1_2();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 384) = v0;

  v5 = *(v2 + 320);
  if (v0)
  {
    v6 = CallScreeningAnsweringState.update(with:);
  }

  else
  {
    v6 = CallScreeningAnsweringState.update(with:);
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

{
  v2 = *v1;
  OUTLINED_FUNCTION_1_2();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 400) = v0;

  v5 = *(v2 + 320);
  if (v0)
  {
    v6 = CallScreeningAnsweringState.update(with:);
  }

  else
  {
    v6 = CallScreeningAnsweringState.update(with:);
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t CallScreeningAnsweringState.update(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_18_64();
  v13 = *(v12 + 248);

  swift_unknownObjectRelease();
  outlined destroy of (status: CallStatus, isEligibleForScreening: Bool, isScreening: Bool, CallScreeningStatus)(v13);
  OUTLINED_FUNCTION_3_171();

  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_17_3();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_15_65();
  swift_unknownObjectRelease();
  outlined destroy of (status: CallStatus, isEligibleForScreening: Bool, isScreening: Bool, CallScreeningStatus)(v12);
  v15(v16 + v14, v13);
  OUTLINED_FUNCTION_3_171();

  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_17_3();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_18_64();
  v14 = *(v12 + 240);
  v13 = *(v12 + 248);

  swift_unknownObjectRelease();
  outlined destroy of (status: CallStatus, isEligibleForScreening: Bool, isScreening: Bool, CallScreeningStatus)(v13);
  outlined destroy of (status: CallStatus, isEligibleForScreening: Bool, isScreening: Bool, CallScreeningStatus)(v14);
  OUTLINED_FUNCTION_3_171();

  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_17_3();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
}

uint64_t CallScreeningAnsweringState.update(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_58_14();
  OUTLINED_FUNCTION_18_64();
  v15 = *(v14 + 248);

  swift_unknownObjectRelease();
  outlined destroy of (status: CallStatus, isEligibleForScreening: Bool, isScreening: Bool, CallScreeningStatus)(v15);
  OUTLINED_FUNCTION_4_152();

  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_13_3();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12, a13, a14);
}

{
  OUTLINED_FUNCTION_58_14();
  OUTLINED_FUNCTION_15_65();
  swift_unknownObjectRelease();
  outlined destroy of (status: CallStatus, isEligibleForScreening: Bool, isScreening: Bool, CallScreeningStatus)(v14);
  v17(v18 + v16, v15);
  OUTLINED_FUNCTION_4_152();

  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_13_3();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12, a13, a14);
}

{
  OUTLINED_FUNCTION_58_14();
  OUTLINED_FUNCTION_18_64();
  v16 = *(v14 + 240);
  v15 = *(v14 + 248);

  swift_unknownObjectRelease();
  outlined destroy of (status: CallStatus, isEligibleForScreening: Bool, isScreening: Bool, CallScreeningStatus)(v15);
  outlined destroy of (status: CallStatus, isEligibleForScreening: Bool, isScreening: Bool, CallScreeningStatus)(v16);
  OUTLINED_FUNCTION_4_152();

  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_13_3();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12, a13, a14);
}

void closure #1 in CallScreeningAnsweringState.update(with:)(uint64_t *a1, void *a2)
{
  if (a1[6] >> 61 == 3)
  {
    if (*a1 == *a2 && a1[1] == a2[1])
    {
      v3 = 1;
    }

    else
    {
      v3 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v3 = 0;
  }

  lazy protocol witness table accessor for type CKStateMachineError and conformance CKStateMachineError();
  v4 = swift_allocError();
  if (v3)
  {
  }

  else
  {
    swift_willThrow();
  }
}

uint64_t protocol witness for UpdatesWithCallStatus.update(with:) in conformance CallScreeningAnsweringState<A>(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  *(v3 + 16) = *v2;
  *(v3 + 32) = v6;
  *(v3 + 48) = *(v2 + 32);
  v7 = swift_task_alloc();
  *(v3 + 56) = v7;
  *v7 = v3;
  v7[1] = protocol witness for UpdatesWithCallStatus.update(with:) in conformance CallScreeningAnsweringState<A>;

  return CallScreeningAnsweringState.update(with:)(a1, a2);
}

uint64_t protocol witness for UpdatesWithCallStatus.update(with:) in conformance CallScreeningAnsweringState<A>()
{

  OUTLINED_FUNCTION_13();

  return v0();
}

unint64_t CallScreeningAnsweringState.description.getter()
{
  _StringGuts.grow(_:)(28);

  MEMORY[0x1BFB20B10](*v0, v0[1]);
  MEMORY[0x1BFB20B10](41, 0xE100000000000000);
  return 0xD000000000000019;
}

uint64_t outlined destroy of (status: CallStatus, isEligibleForScreening: Bool, isScreening: Bool, CallScreeningStatus)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit10CallStatusO6status_Sb22isEligibleForScreeningSb0fI020CommunicationsUICore0ciD0OtMd, &_s15ConversationKit10CallStatusO6status_Sb22isEligibleForScreeningSb0fI020CommunicationsUICore0ciD0OtMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t instantiation function for generic protocol witness table for CallScreeningAnsweringState<A>(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata instantiation function for CallScreeningAnsweringState(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t CallScreeningActor.ActorType.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t CallScreeningActor.ActorType.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  return v0;
}

uint64_t static CallScreeningActor.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }
}

_BYTE *storeEnumTagSinglePayload for CallScreeningActor(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t AlternatingLabelController.__allocating_init(label:timeInterval:alternatingBetween:observer:)(uint64_t a1)
{
  OUTLINED_FUNCTION_2_175(a1);
  v8 = OUTLINED_FUNCTION_0_225();

  return specialized AlternatingLabelController.__allocating_init(label:timeInterval:alternatingBetween:observer:)(v1, v8, v2, v3, v4, v5, v6, v7);
}

uint64_t AlternatingLabelController.init(label:timeInterval:alternatingBetween:observer:)(uint64_t a1)
{
  OUTLINED_FUNCTION_2_175(a1);
  v8 = OUTLINED_FUNCTION_0_225();

  return specialized AlternatingLabelController.init(label:timeInterval:alternatingBetween:observer:)(v1, v2, v8, v3, v4, v5, v6, v7);
}

Swift::Void __swiftcall AlternatingLabelController.start()()
{
  v2 = v0;
  type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_1_192();
  *v1 = static OS_dispatch_queue.main.getter();
  v5 = OUTLINED_FUNCTION_23_6();
  v6(v5);
  _dispatchPreconditionTest(_:)();
  v7 = OUTLINED_FUNCTION_3_7();
  v9 = v8(v7);
  if (v4)
  {
    (*(*v2 + 264))(v9);
    v10 = objc_opt_self();
    v11 = v2[5];
    OUTLINED_FUNCTION_20();
    v12 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = partial apply for closure #1 in AlternatingLabelController.start();
    aBlock[5] = v12;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
    aBlock[3] = &block_descriptor_123;
    v13 = _Block_copy(aBlock);

    v14 = [v10 scheduledTimerWithTimeInterval:1 repeats:v13 block:v11];
    _Block_release(v13);
    v15 = *(v2 + 2);
    *(v2 + 2) = v14;
  }

  else
  {
    __break(1u);
  }
}

uint64_t closure #1 in AlternatingLabelController.start()(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
  v6 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v6;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5();
}

uint64_t closure #1 in closure #1 in AlternatingLabelController.start()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in AlternatingLabelController.start(), 0, 0);
}

uint64_t closure #1 in closure #1 in AlternatingLabelController.start()()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    type metadata accessor for MainActor();
    *(v0 + 64) = static MainActor.shared.getter();
    v3 = dispatch thunk of Actor.unownedExecutor.getter();

    return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in AlternatingLabelController.start(), v3, v2);
  }

  else
  {
    **(v0 + 40) = 1;
    v4 = *(v0 + 8);

    return v4();
  }
}

{

  AlternatingLabelController.updateLabel()();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in DurationLabelController.start(), 0, 0);
}

Swift::Void __swiftcall AlternatingLabelController.stop()()
{
  v2 = v0;
  type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_1_192();
  *v1 = static OS_dispatch_queue.main.getter();
  v5 = OUTLINED_FUNCTION_23_6();
  v6(v5);
  _dispatchPreconditionTest(_:)();
  v7 = OUTLINED_FUNCTION_3_7();
  v8(v7);
  if (v4)
  {
    [*(v2 + 16) invalidate];
    v9 = *(v2 + 16);
    *(v2 + 16) = 0;
  }

  else
  {
    __break(1u);
  }
}

void AlternatingLabelController.updateLabel()()
{
  v2 = *(v0 + 56);
  v3 = specialized Array.count.getter();
  if (__OFSUB__(v3, 1))
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v2 >= v3 - 1)
  {
    goto LABEL_6;
  }

  v4 = *(v0 + 56);
  v2 = v4 + 1;
  if (__OFADD__(v4, 1))
  {
    __break(1u);
LABEL_6:
    v2 = 0;
  }

  *(v0 + 56) = v2;
  v1 = *(v0 + 48);
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v2, (v1 & 0xC000000000000001) == 0, v1);
  if ((v1 & 0xC000000000000001) != 0)
  {
LABEL_11:

    v5 = MEMORY[0x1BFB22010](v2, v1);

    goto LABEL_9;
  }

  v5 = *(v1 + 8 * v2 + 32);
LABEL_9:
  v6 = objc_opt_self();
  OUTLINED_FUNCTION_20();
  v7 = swift_allocObject();
  swift_weakInit();
  v17 = partial apply for closure #1 in AlternatingLabelController.updateLabel();
  v18 = v7;
  v13 = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = thunk for @escaping @callee_guaranteed () -> ();
  v16 = &block_descriptor_20_3;
  v8 = _Block_copy(&v13);

  OUTLINED_FUNCTION_20();
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = v5;
  v17 = partial apply for closure #2 in AlternatingLabelController.updateLabel();
  v18 = v10;
  v13 = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  v16 = &block_descriptor_27_0;
  v11 = _Block_copy(&v13);
  v12 = v5;

  [v6 animateWithDuration:v8 animations:v11 completion:0.2];
  _Block_release(v11);
  _Block_release(v8);
}

void closure #2 in AlternatingLabelController.updateLabel()(char a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = swift_unknownObjectWeakLoadStrong();
    v8 = *(v6 + 32);

    if (v7)
    {
      if ((a1 & 1) == 0)
      {
        [v7 setAlpha_];
      }

      ObjectType = swift_getObjectType();
      v10 = *(v8 + 16);
      v11 = a3;
      v10(a3, ObjectType, v8);
      swift_beginAccess();
      v12 = swift_weakLoadStrong();
      if (v12)
      {
        v13 = v12;
        v14 = swift_unknownObjectWeakLoadStrong();
        v15 = *(v13 + 72);

        if (v14)
        {
          v16 = swift_getObjectType();
          (*(v15 + 8))(v16, v15);
          swift_unknownObjectRelease();
        }
      }

      v17 = objc_opt_self();
      v18 = swift_allocObject();
      swift_beginAccess();
      swift_weakLoadStrong();
      swift_weakInit();

      aBlock[4] = partial apply for closure #1 in closure #2 in AlternatingLabelController.updateLabel();
      aBlock[5] = v18;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
      aBlock[3] = &block_descriptor_31_2;
      v19 = _Block_copy(aBlock);

      [v17 animateWithDuration:v19 animations:0.2];
      _Block_release(v19);
    }
  }
}

void closure #1 in AlternatingLabelController.updateLabel()(uint64_t a1, double a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      [Strong setAlpha_];
    }
  }
}

uint64_t AlternatingLabelController.deinit()
{
  outlined destroy of weak InCallControlsBaseCellDelegate?(v0 + 24);

  outlined destroy of weak InCallControlsBaseCellDelegate?(v0 + 64);
  return v0;
}

uint64_t AlternatingLabelController.__deallocating_deinit()
{
  AlternatingLabelController.deinit();

  return swift_deallocClassInstance();
}

uint64_t specialized AlternatingLabelController.__allocating_init(label:timeInterval:alternatingBetween:observer:)(void *a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  type metadata accessor for AlternatingLabelController();
  v15 = swift_allocObject();

  return specialized AlternatingLabelController.init(label:timeInterval:alternatingBetween:observer:)(a1, a3, a2, a4, a5, v15, a7, a8);
}

uint64_t specialized AlternatingLabelController.init(label:timeInterval:alternatingBetween:observer:)(void *a1, uint64_t a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(a6 + 16) = 0;
  *(a6 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(a6 + 56) = 0;
  *(a6 + 72) = 0;
  swift_unknownObjectWeakInit();
  v15 = specialized Array.count.getter();
  if (v15)
  {
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (a2 & 0xC000000000000001) == 0, a2);
    if ((a2 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x1BFB22010](0, a2);
    }

    else
    {
      v15 = *(a2 + 32);
    }
  }

  (*(a8 + 16))(v15, a7, a8);
  *(a6 + 32) = a8;
  swift_unknownObjectWeakAssign();

  *(a6 + 48) = a2;
  *(a6 + 40) = a3;
  *(a6 + 72) = a5;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return a6;
}

uint64_t partial apply for closure #1 in closure #1 in AlternatingLabelController.start()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in SyncedScreeningAlphaGradientView.gradient(for:);

  return closure #1 in closure #1 in AlternatingLabelController.start()(a1, v4, v5, v6);
}

Swift::Void __swiftcall UIVisualEffectView.applyEffect(_:)(ConversationKit::PlatformEffectViewStyle a1)
{
  v2 = [objc_opt_self() effectWithStyle_];
  [v1 setEffect_];
}

id static ClarityUIContactAvatar.requiredDescriptor(for:)(uint64_t a1)
{
  v1 = [objc_opt_self() settingsWithContactStore_];
  v2 = [objc_allocWithZone(MEMORY[0x1E695D0C8]) initWithSettings_];

  v3 = [v2 descriptorForRequiredKeys];
  return v3;
}

ConversationKit::ClarityUIContactAvatar __swiftcall ClarityUIContactAvatar.init(cnContact:contactStore:)(CNContact cnContact, CNContactStore contactStore)
{
  *v2 = cnContact;
  *(v2 + 8) = contactStore;
  result.contactStore = contactStore;
  result.cnContact = cnContact;
  return result;
}

id ClarityUIContactAvatar.makeUIViewController(context:)()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 settingsWithContactStore_];
  v6 = [objc_allocWithZone(MEMORY[0x1E695D0C8]) initWithSettings_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1BC4BAC30;
  *(v7 + 32) = v4;
  type metadata accessor for CNContact();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v6 setContacts_];

  return v6;
}

void ClarityUIContactAvatar.updateUIViewController(_:context:)(void *a1)
{
  v3 = *v1;
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1BC4BAC30;
    *(v6 + 32) = v3;
    type metadata accessor for CNContact();
    v7 = a1;
    v8 = v3;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v5 setContacts_];
  }
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance ClarityUIContactAvatar(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ClarityUIContactAvatar and conformance ClarityUIContactAvatar();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance ClarityUIContactAvatar(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ClarityUIContactAvatar and conformance ClarityUIContactAvatar();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void protocol witness for View.body.getter in conformance ClarityUIContactAvatar(uint64_t a1)
{
  lazy protocol witness table accessor for type ClarityUIContactAvatar and conformance ClarityUIContactAvatar();
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

uint64_t static ViewBuilder.buildBlock<each A>(_:)(uint64_t *TupleTypeMetadata, uint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata);
    v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    for (i = 0; a2 != i; ++i)
    {
      *&v8[8 * i] = *((a3 & 0xFFFFFFFFFFFFFFFELL) + 8 * i);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  v10.n128_f64[0] = MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v13 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v14 = (v6 + 32);
    v15 = a2;
    do
    {
      if (a2 == 1)
      {
        v16 = 0;
      }

      else
      {
        v16 = *v14;
      }

      v18 = *v13++;
      v17 = v18;
      v19 = *v5++;
      (*(*(v17 - 8) + 16))(&v12[v16], v19, v10);
      v14 += 4;
      --v15;
    }

    while (v15);
  }

  return TupleView.init(_:)();
}

uint64_t ClarityUIShadowedContent.init(shape:isPressed:invertsInnerShadows:includesDropShadow:content:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, char a4@<W3>, void (*a5)(uint64_t)@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10)
{
  v23[0] = a6;
  v23[1] = a7;
  v23[2] = a9;
  v23[3] = a10;
  v17 = type metadata accessor for ClarityUIShadowedContent(0, v23);
  v18 = v17[17];
  *(a8 + v18) = static Color.white.getter();
  *(a8 + v17[18]) = 1050253722;
  v19 = v17[19];
  *(a8 + v19) = static Color.black.getter();
  *(a8 + v17[20]) = 1050253722;
  *(a8 + v17[21]) = 0x4000000000000000;
  *(a8 + v17[22]) = 0x3FF0000000000000;
  *(a8 + v17[23]) = 0xBFF0000000000000;
  v20 = *(a7 - 8);
  v21 = (*(v20 + 16))(a8, a1, a7);
  *(a8 + v17[13]) = a2;
  *(a8 + v17[14]) = a3;
  *(a8 + v17[15]) = a4;
  a5(v21);
  return (*(v20 + 8))(a1, a7);
}

uint64_t ClarityUIShadowedContent.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v4 = a1[3];
  v49 = a1[5];
  v45 = *(v49 + 8);
  v5 = type metadata accessor for _ShadowView();
  OUTLINED_FUNCTION_2_7();
  v58 = v6;
  MEMORY[0x1EEE9AC00](v7);
  v57 = &v41 - v8;
  v42 = a1[2];
  OUTLINED_FUNCTION_4_153();
  WitnessTable = swift_getWitnessTable();
  v70 = v5;
  v71 = WitnessTable;
  v51 = v5;
  v52 = WitnessTable;
  OUTLINED_FUNCTION_3_172();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_10_91();
  v10 = type metadata accessor for TupleView();
  v43 = OUTLINED_FUNCTION_7_112(v10);
  v44 = type metadata accessor for _OverlayModifier();
  v11 = type metadata accessor for ModifiedContent();
  OUTLINED_FUNCTION_2_7();
  v47 = v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v41 - v14;
  v50 = type metadata accessor for _ClipEffect();
  v48 = type metadata accessor for ModifiedContent();
  OUTLINED_FUNCTION_2_7();
  v55 = v16;
  MEMORY[0x1EEE9AC00](v17);
  v60 = &v41 - v18;
  v54 = type metadata accessor for _BackgroundModifier();
  v19 = type metadata accessor for ModifiedContent();
  OUTLINED_FUNCTION_2_7();
  v56 = v20;
  MEMORY[0x1EEE9AC00](v21);
  v46 = &v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v53 = &v41 - v24;
  v25 = a1[4];
  *&v26 = v25;
  *(&v26 + 1) = v49;
  *&v27 = v42;
  *(&v27 + 1) = v4;
  v61 = v27;
  v62 = v26;
  v63 = v2;
  static Alignment.center.getter();
  View.overlay<A>(alignment:content:)();
  OUTLINED_FUNCTION_2_176();
  v28 = swift_getWitnessTable();
  v68 = v25;
  v69 = v28;
  v29 = swift_getWitnessTable();
  View.clipShape<A>(_:style:)();
  (*(v47 + 8))(v15, v11);
  static Color.clarityUIButtonShadowColor.getter();
  ClarityUIShadowedContent.shadowRadius.getter(a1);
  ClarityUIShadowedContent.shadowXOffset.getter(a1);
  ClarityUIShadowedContent.shadowYOffset.getter(a1);
  v30 = v57;
  Shape.fillShadow(color:radius:x:y:)();

  OUTLINED_FUNCTION_5_142();
  v31 = swift_getWitnessTable();
  v66 = v29;
  v67 = v31;
  v32 = v48;
  v33 = swift_getWitnessTable();
  static Alignment.center.getter();
  v34 = v46;
  v35 = v51;
  v36 = v60;
  View.background<A>(_:alignment:)();
  (*(v58 + 8))(v30, v35);
  (*(v55 + 8))(v36, v32);
  OUTLINED_FUNCTION_1_193();
  v37 = swift_getWitnessTable();
  v64 = v33;
  v65 = v37;
  swift_getWitnessTable();
  v38 = v53;
  static ViewBuilder.buildExpression<A>(_:)();
  v39 = *(v56 + 8);
  v39(v34, v19);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v39)(v38, v19);
}

uint64_t closure #1 in ClarityUIShadowedContent.body.getter@<X0>(uint64_t a1@<X0>, void (*a2)(void, void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v63 = a4;
  v62 = a2;
  v71 = a6;
  v9 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v70 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v55 - v12;
  v74 = *(v14 + 8);
  v15 = type metadata accessor for _ShadowView();
  v72 = v15;
  v77 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v68 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v61 = &v55 - v18;
  WitnessTable = swift_getWitnessTable();
  v83 = v15;
  v84 = WitnessTable;
  OpaqueTypeConformance2 = MEMORY[0x1E69811F8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v76 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v69 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v67 = &v55 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v65 = &v55 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v66 = &v55 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v55 - v28;
  v31 = MEMORY[0x1EEE9AC00](v30);
  v75 = &v55 - v32;
  v33 = *(v9 + 16);
  v59 = v9 + 16;
  v60 = v33;
  (v33)(v13, a1, a3, v31);
  v83 = v62;
  v84 = a3;
  v85 = v63;
  v86 = a5;
  v34 = type metadata accessor for ClarityUIShadowedContent(0, &v83);
  v35 = 68;
  if (!*(a1 + v34[14]))
  {
    v35 = 76;
  }

  v63 = v35;

  v36 = v61;
  v56 = a3;
  Shape.fillShadow(color:radius:x:y:)();

  v37 = *(v9 + 8);
  v58 = v9 + 8;
  v62 = v37;
  v37(v13, a3);
  ClarityUIShadowedContent.innerShadowMatrix(opacity:)(v82, *(a1 + v34[18]));
  v38 = v72;
  v39 = WitnessTable;
  View._colorMatrix(_:)();
  v40 = *(v77 + 8);
  v77 += 8;
  v57 = v40;
  v40(v36, v38);
  v83 = v38;
  v84 = v39;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  static ViewBuilder.buildExpression<A>(_:)();
  v41 = *(v76 + 8);
  v41(v29, OpaqueTypeMetadata2);
  v42 = v70;
  v43 = v56;
  v60(v70, a1, v56);

  v44 = v68;
  Shape.fillShadow(color:radius:x:y:)();

  v62(v42, v43);
  ClarityUIShadowedContent.innerShadowMatrix(opacity:)(&v83, *(a1 + v34[20]));
  v45 = v65;
  v46 = v72;
  View._colorMatrix(_:)();
  v57(v44, v46);
  v47 = v66;
  v48 = OpaqueTypeConformance2;
  static ViewBuilder.buildExpression<A>(_:)();
  v41(v45, OpaqueTypeMetadata2);
  v49 = *(v76 + 16);
  v50 = v67;
  v51 = v75;
  v49(v67, v75, OpaqueTypeMetadata2);
  v81[0] = v50;
  v52 = v50;
  v53 = v69;
  v49(v69, v47, OpaqueTypeMetadata2);
  v81[1] = v53;
  v80[0] = OpaqueTypeMetadata2;
  v80[1] = OpaqueTypeMetadata2;
  v78 = v48;
  v79 = v48;
  static ViewBuilder.buildBlock<each A>(_:)(v81, 2, v80);
  v41(v47, OpaqueTypeMetadata2);
  v41(v51, OpaqueTypeMetadata2);
  v41(v53, OpaqueTypeMetadata2);
  return (v41)(v52, OpaqueTypeMetadata2);
}

void *ClarityUIShadowedContent.innerShadowMatrix(opacity:)@<X0>(float *a1@<X8>, float a2@<S0>)
{
  MEMORY[0x1BFB1E170](__src);
  memcpy(__dst, __src, sizeof(__dst));
  result = memcpy(a1, __dst, 0x48uLL);
  a1[18] = -a2;
  a1[19] = a2;
  return result;
}

uint64_t ClarityUIShadowedContent.shadowRadius.getter(uint64_t result)
{
  if (*(v1 + *(result + 60)) == 1 && (*(v1 + *(result + 52)) & 1) == 0)
  {
    return MEMORY[0x1EEDDA068]();
  }

  return result;
}

uint64_t ClarityUIShadowedContent.shadowXOffset.getter(uint64_t result)
{
  if (*(v1 + *(result + 60)) == 1 && (*(v1 + *(result + 52)) & 1) == 0)
  {
    return static ClarityUIMetrics.buttonShadowOffset.getter();
  }

  return result;
}

double ClarityUIShadowedContent.shadowYOffset.getter(uint64_t a1)
{
  result = 0.0;
  if (*(v1 + *(a1 + 60)) == 1 && (*(v1 + *(a1 + 52)) & 1) == 0)
  {
    static ClarityUIMetrics.buttonShadowOffset.getter();
    return v3;
  }

  return result;
}

uint64_t type metadata completion function for ClarityUIShadowedContent(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ClarityUIShadowedContent(uint64_t result, unsigned int a2, uint64_t a3)
{
  v6 = a3 + 16;
  v4 = *(a3 + 16);
  v5 = *(v6 + 8);
  v7 = *(*(v5 - 8) + 84);
  v8 = *(v4 - 8);
  v9 = *(v8 + 84);
  if (v7 <= v9)
  {
    v10 = *(v8 + 84);
  }

  else
  {
    v10 = *(*(v5 - 8) + 84);
  }

  v11 = *(*(v5 - 8) + 64);
  v12 = *(v8 + 80);
  if (v10 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v10;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = *(*(v4 - 8) + 64) + 7;
  if (v13 >= a2)
  {
LABEL_28:
    if (v7 == v13)
    {
      v9 = *(*(v5 - 8) + 84);
      v4 = v5;
    }

    else
    {
      result = (result + v11 + v12 + 3) & ~v12;
      if (v9 != v13)
      {
        v24 = *((v14 + result) & 0xFFFFFFFFFFFFFFF8);
        if (v24 >= 0xFFFFFFFF)
        {
          LODWORD(v24) = -1;
        }

        return (v24 + 1);
      }
    }

    return __swift_getEnumTagSinglePayload(result, v9, v4);
  }

  v15 = ((((((((((((((v14 + ((v11 + v12 + 3) & ~v12)) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v16 = a2 - v13;
  v17 = v15 & 0xFFFFFFF8;
  if ((v15 & 0xFFFFFFF8) != 0)
  {
    v18 = 2;
  }

  else
  {
    v18 = v16 + 1;
  }

  if (v18 >= 0x10000)
  {
    v19 = 4;
  }

  else
  {
    v19 = 2;
  }

  if (v18 < 0x100)
  {
    v19 = 1;
  }

  if (v18 >= 2)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  switch(v20)
  {
    case 1:
      v21 = *(result + v15);
      if (!v21)
      {
        goto LABEL_28;
      }

      goto LABEL_25;
    case 2:
      v21 = *(result + v15);
      if (!v21)
      {
        goto LABEL_28;
      }

      goto LABEL_25;
    case 3:
      __break(1u);
      return result;
    case 4:
      v21 = *(result + v15);
      if (!v21)
      {
        goto LABEL_28;
      }

LABEL_25:
      v22 = v21 - 1;
      if (v17)
      {
        v22 = 0;
        v23 = *result;
      }

      else
      {
        v23 = 0;
      }

      result = v13 + (v23 | v22) + 1;
      break;
    default:
      goto LABEL_28;
  }

  return result;
}

void storeEnumTagSinglePayload for ClarityUIShadowedContent(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = a1;
  v7 = *(a4 + 24);
  v8 = *(a4 + 16);
  v9 = *(*(v7 - 8) + 84);
  v10 = *(v8 - 8);
  v11 = *(v10 + 84);
  if (v9 <= v11)
  {
    v12 = *(v10 + 84);
  }

  else
  {
    v12 = *(*(v7 - 8) + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  v13 = *(*(v7 - 8) + 64);
  v14 = *(v10 + 80);
  v15 = *(*(v8 - 8) + 64) + 7;
  v16 = ((((((((((((((v15 + ((v13 + v14 + 3) & ~v14)) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v12 >= a3)
  {
    v20 = 0;
  }

  else
  {
    v17 = a3 - v12;
    if (((((((((((((((v15 + ((v13 + v14 + 3) & ~v14)) & 0xFFFFFFF8) + 11) & 0xFFFFFFF8) + 11) & 0xFFFFFFF8) + 11) & 0xFFFFFFF8) + 11) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v18 = v17 + 1;
    }

    else
    {
      v18 = 2;
    }

    if (v18 >= 0x10000)
    {
      v19 = 4;
    }

    else
    {
      v19 = 2;
    }

    if (v18 < 0x100)
    {
      v19 = 1;
    }

    if (v18 >= 2)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }
  }

  if (a2 <= v12)
  {
    switch(v20)
    {
      case 1:
        a1[v16] = 0;
        if (a2)
        {
          goto LABEL_34;
        }

        return;
      case 2:
        *&a1[v16] = 0;
        if (a2)
        {
          goto LABEL_34;
        }

        return;
      case 3:
LABEL_48:
        __break(1u);
        return;
      case 4:
        *&a1[v16] = 0;
        goto LABEL_33;
      default:
LABEL_33:
        if (!a2)
        {
          return;
        }

LABEL_34:
        if (v9 == v12)
        {
          v11 = v9;
        }

        else
        {
          a1 = (&a1[v13 + 3 + v14] & ~v14);
          if (v11 != v12)
          {
            if ((a2 & 0x80000000) != 0)
            {
              v23 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v23 = (a2 - 1);
            }

            *(&a1[v15] & 0xFFFFFFFFFFFFFFF8) = v23;
            return;
          }

          v7 = v8;
        }

        __swift_storeEnumTagSinglePayload(a1, a2, v11, v7);
        break;
    }
  }

  else
  {
    if (((((((((((((((v15 + ((v13 + v14 + 3) & ~v14)) & 0xFFFFFFF8) + 11) & 0xFFFFFFF8) + 11) & 0xFFFFFFF8) + 11) & 0xFFFFFFF8) + 11) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v21 = a2 - v12;
    }

    else
    {
      v21 = 1;
    }

    if (((((((((((((((v15 + ((v13 + v14 + 3) & ~v14)) & 0xFFFFFFF8) + 11) & 0xFFFFFFF8) + 11) & 0xFFFFFFF8) + 11) & 0xFFFFFFF8) + 11) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v22 = ~v12 + a2;
      bzero(a1, ((((((((((((((v15 + ((v13 + v14 + 3) & ~v14)) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
      *v6 = v22;
    }

    switch(v20)
    {
      case 1:
        *(v6 + v16) = v21;
        break;
      case 2:
        *(v6 + v16) = v21;
        break;
      case 3:
        goto LABEL_48;
      case 4:
        *(v6 + v16) = v21;
        break;
      default:
        return;
    }
  }
}

uint64_t PlayerParticipantInfo.init(handle:contacts:isUnknownCaller:location:action:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  return result;
}

void *specialized VideoMessagePlayerManager.init(videoMessageViewModel:)(uint64_t a1)
{
  v1[2] = 0;
  v1[4] = MEMORY[0x1E69E7CD0];
  v1[5] = 0;
  swift_unknownObjectWeakInit();
  v1[3] = a1;
  return v1;
}

uint64_t specialized VideoMessagePlayerManager.setupVideo(with:)(void *a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;

  v4 = [a1 currentItem];
  if (v4)
  {
    v5 = v4;

    v6 = v5;
    specialized VideoMessagePlayerManager.fetchDuration(from:)(v6);
  }

  return specialized VideoMessagePlayerManager.setUpNotifications()();
}

void *specialized VideoMessagePlayerManager.fetchDuration(from:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v5.n128_f64[0] = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14 - v6;
  result = (*((*MEMORY[0x1E69E7D40] & **(v1 + 24)) + 0x120))(&v15, v5);
  if ((v15 & 1) == 0)
  {
    v9 = type metadata accessor for TaskPriority();
    __swift_storeEnumTagSinglePayload(v7, 1, 1, v9);
    v10 = swift_allocObject();
    swift_weakInit();
    v11 = swift_allocObject();
    v11[2] = 0;
    v11[3] = 0;
    v11[4] = v10;
    v11[5] = a1;
    v12 = a1;
    v13 = _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v7, &async function pointer to partial apply for specialized closure #1 in VideoMessagePlayerManager.fetchDuration(from:), v11);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v7, &_sScPSgMd, &_sScPSgMR);
    *(v2 + 40) = v13;
  }

  return result;
}

uint64_t specialized VideoMessagePlayerManager.setUpNotifications()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy15ConversationKit24VideoMessageControlsViewV9PlayStateO_GMd, &_s7Combine9PublishedV9PublisherVy15ConversationKit24VideoMessageControlsViewV9PlayStateO_GMR);
  v32 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v27 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v27 - v6;
  v8 = type metadata accessor for NSNotificationCenter.Publisher();
  v31 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_So20NSNotificationCenterC10FoundationE9PublisherVSo9NSRunLoopCGMd, &_s7Combine10PublishersO9ReceiveOnVy_So20NSNotificationCenterC10FoundationE9PublisherVSo9NSRunLoopCGMR);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v27 - v13;
  swift_beginAccess();
  v15 = *(v0 + 16);
  if (v15)
  {
    v15 = [v15 currentItem];
    if (v15)
    {
      v16 = v15;
      v17 = [objc_opt_self() defaultCenter];
      v30 = v2;
      v18 = v17;
      v19 = MEMORY[0x1BFB209B0](0xD000000000000028, 0x80000001BC5130D0);
      v29 = v12;
      v20 = v19;
      v21 = v16;
      v28 = v11;
      v22 = v21;
      NSNotificationCenter.publisher(for:object:)();

      v23 = [objc_opt_self() mainRunLoop];
      v33 = v23;
      v24 = type metadata accessor for NSRunLoop.SchedulerOptions();
      __swift_storeEnumTagSinglePayload(v7, 1, 1, v24);
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSRunLoop, 0x1E695DFD0);
      _s15ConversationKit27VideoMessagePlayerViewModelCAC7Combine16ObservableObjectAAWlTm_1(&lazy protocol witness table cache variable for type NSNotificationCenter.Publisher and conformance NSNotificationCenter.Publisher, MEMORY[0x1E6969F20], MEMORY[0x1E6969F18]);
      lazy protocol witness table accessor for type NSRunLoop and conformance NSRunLoop();
      Publisher.receive<A>(on:options:)();
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v7, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);

      v2 = v30;
      (*(v31 + 8))(v10, v8);
      swift_allocObject();
      swift_weakInit();
      lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<NSNotificationCenter.Publisher, NSRunLoop> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_So20NSNotificationCenterC10FoundationE9PublisherVSo9NSRunLoopCGMd, &_s7Combine10PublishersO9ReceiveOnVy_So20NSNotificationCenterC10FoundationE9PublisherVSo9NSRunLoopCGMR, MEMORY[0x1E695BE98]);
      v25 = v28;
      Publisher<>.sink(receiveValue:)();

      (*(v29 + 8))(v14, v25);
      swift_beginAccess();
      AnyCancellable.store(in:)();
      swift_endAccess();
    }
  }

  (*((*MEMORY[0x1E69E7D40] & **(v1 + 24)) + 0x108))(v15);
  swift_allocObject();
  swift_weakInit();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Published<VideoMessageControlsView.PlayState>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVy15ConversationKit24VideoMessageControlsViewV9PlayStateO_GMd, &_s7Combine9PublishedV9PublisherVy15ConversationKit24VideoMessageControlsViewV9PlayStateO_GMR, MEMORY[0x1E695C068]);
  Publisher<>.sink(receiveValue:)();

  (*(v32 + 8))(v4, v2);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

id specialized VideoMessagePlayerManager.setupVideo(with:)(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for AVAsset, 0x1E6987E28);
  (*(v3 + 16))(v5, a1, v2);
  v7 = @nonobjc AVAsset.__allocating_init(url:)(v5, v6);
  v8 = objc_allocWithZone(MEMORY[0x1E69880B0]);
  v10 = @nonobjc AVPlayerItem.init(asset:automaticallyLoadedAssetKeys:)(v7, &outlined read-only object #0 of specialized VideoMessagePlayerManager.setupVideo(with:), v9);
  v11 = [objc_allocWithZone(MEMORY[0x1E6988098]) initWithPlayerItem_];
  specialized VideoMessagePlayerManager.setupVideo(with:)(v11);

  return v11;
}

void specialized closure #1 in VideoMessagePlayerManager.setUpNotifications()(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v3 = MEMORY[0x1E69E7D40];
  if (Strong && (v4 = *(Strong + 24), v5 = , v6 = (*((*v3 & *v4) + 0xF0))(v5), v4, !v6) || (swift_beginAccess(), (v7 = swift_weakLoadStrong()) != 0) && (v8 = *(v7 + 24), v9 = , v10 = (*((*v3 & *v8) + 0xF0))(v9), v8, v10 == 1))
  {
    swift_beginAccess();
    v11 = swift_weakLoadStrong();
    if (v11)
    {
      v12 = *(v11 + 24);

      (*((*v3 & *v12) + 0xF8))(3);
    }

    swift_beginAccess();
    v13 = swift_weakLoadStrong();
    if (v13)
    {
      v14 = v13;
      swift_beginAccess();
      v15 = *(v14 + 16);
      if (v15)
      {
        v16 = v15;

        v17 = *(MEMORY[0x1E6960CC0] + 16);
        v18[0] = *MEMORY[0x1E6960CC0];
        v18[1] = *(MEMORY[0x1E6960CC0] + 8);
        v18[2] = v17;
        [v16 seekToTime_];
      }

      else
      {
      }
    }
  }
}

uint64_t specialized closure #2 in VideoMessagePlayerManager.setUpNotifications()(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    specialized VideoMessagePlayerManager.updatePlayer(with:)(v2);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    specialized VideoMessagePlayerManager.updateHostController(using:)(v2);
  }

  return result;
}

uint64_t specialized VideoMessagePlayerManager.updatePlayer(with:)(unsigned __int8 a1)
{
  if (a1 >= 2u)
  {
    swift_beginAccess();
    v4 = *(v1 + 16);
    if (v4)
    {
      [v4 setRate_];
    }
  }

  else
  {
    swift_beginAccess();
    v3 = *(v1 + 16);
    if (v3)
    {
      LODWORD(v2) = 1.0;
      [v3 setRate_];
    }
  }

  return swift_endAccess();
}

void specialized VideoMessagePlayerManager.updateHostController(using:)(char a1)
{
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;
  v6[4] = partial apply for specialized closure #1 in VideoMessagePlayerManager.updateHostController(using:);
  v6[5] = v4;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = thunk for @escaping @callee_guaranteed () -> ();
  v6[3] = &block_descriptor_124;
  v5 = _Block_copy(v6);

  [v3 animateWithDuration:v5 animations:0.25];
  _Block_release(v5);
}

uint64_t specialized closure #1 in VideoMessagePlayerManager.fetchDuration(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return MEMORY[0x1EEE6DFA0](specialized closure #1 in VideoMessagePlayerManager.fetchDuration(from:), 0, 0);
}

uint64_t specialized closure #1 in VideoMessagePlayerManager.fetchDuration(from:)()
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v0[8] = type metadata accessor for MainActor();
    v0[9] = static MainActor.shared.getter();
    v3 = dispatch thunk of Actor.unownedExecutor.getter();

    return MEMORY[0x1EEE6DFA0](specialized closure #1 in VideoMessagePlayerManager.fetchDuration(from:), v3, v2);
  }

  else
  {
    OUTLINED_FUNCTION_13();

    return v4();
  }
}

{
  OUTLINED_FUNCTION_24_0();
  v1 = *(v0 + 48);

  *(v0 + 80) = [v1 asset];
  OUTLINED_FUNCTION_5_6();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

{
  OUTLINED_FUNCTION_24_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12AVFoundation15AVAsyncPropertyCySo7AVAssetCSo6CMTimeaGMd, &_s12AVFoundation15AVAsyncPropertyCySo7AVAssetCSo6CMTimeaGMR);
  *(v0 + 88) = static AVPartialAsyncProperty<A>.duration.getter();
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = specialized closure #1 in VideoMessagePlayerManager.fetchDuration(from:);
  OUTLINED_FUNCTION_3_0();

  return MEMORY[0x1EEE68140]();
}

{
  v2 = *v1;

  v3 = *(v2 + 80);
  if (v0)
  {
  }

  OUTLINED_FUNCTION_5_6();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

{
  OUTLINED_FUNCTION_24_0();
  v1 = v0[16];
  v0[19] = v0[17];
  v2 = v0[18];
  v0[13] = v1;
  v0[14] = v2;
  v0[15] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](specialized closure #1 in VideoMessagePlayerManager.fetchDuration(from:), v4, v3);
}

{

  CMTime.seconds.getter();
  if (v0 <= 0.0)
  {
    goto LABEL_6;
  }

  if (one-time initialization token for timeFormatter != -1)
  {
    OUTLINED_FUNCTION_3_173(&one-time initialization token for timeFormatter);
  }

  v1 = static NSDateComponentsFormatter.timeFormatter;
  CMTime.seconds.getter();
  v2 = [v1 stringFromTimeInterval_];

  if (v2)
  {
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
  }

  else
  {
LABEL_6:
    OUTLINED_FUNCTION_17_73();
    v3 = static String.localizedStringWithFormat(_:_:)();
    v5 = v6;
  }

  OUTLINED_FUNCTION_5_18();
  (*(v7 + 344))(v3, v5);
  OUTLINED_FUNCTION_5_6();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

Swift::String __swiftcall TimeFormattable.durationString()()
{
  v2 = v1;
  v3 = v0;
  v4 = *(v1 + 8);
  if (v4() <= 0.0)
  {
    goto LABEL_6;
  }

  if (one-time initialization token for timeFormatter != -1)
  {
    OUTLINED_FUNCTION_3_173(&one-time initialization token for timeFormatter);
  }

  v5 = static NSDateComponentsFormatter.timeFormatter;
  (v4)(v3, v2);
  v6 = [v5 stringFromTimeInterval_];

  if (v6)
  {
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    v10 = v7;
    v11 = v9;
  }

  else
  {
LABEL_6:
    OUTLINED_FUNCTION_17_73();

    v10 = static String.localizedStringWithFormat(_:_:)();
  }

  result._object = v11;
  result._countAndFlagsBits = v10;
  return result;
}

void specialized closure #1 in VideoMessagePlayerManager.updateHostController(using:)(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [Strong navigationController];

    if (v5)
    {
      v6 = [v5 navigationBar];

      v7 = 1.0;
      if (!a2)
      {
        v7 = 0.0;
      }

      [v6 setAlpha_];
    }
  }
}

uint64_t VideoMessagePlayerViewModel.showsSaveInMenu.getter()
{
  OUTLINED_FUNCTION_5_18();
  if ((*(v0 + 528))())
  {
    return [objc_opt_self() isCommunicationSafetyEnabled] ^ 1;
  }

  else
  {
    return 0;
  }
}

id VideoMessagePlayerViewController.controls.getter()
{
  v1 = v0;
  v2 = type metadata accessor for VideoMessageControlsView(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  v6 = v5 - v4;
  v7 = OBJC_IVAR____TtC15ConversationKit32VideoMessagePlayerViewController____lazy_storage___controls;
  v8 = *(v0 + OBJC_IVAR____TtC15ConversationKit32VideoMessagePlayerViewController____lazy_storage___controls);
  if (v8)
  {
    v9 = *(v0 + OBJC_IVAR____TtC15ConversationKit32VideoMessagePlayerViewController____lazy_storage___controls);
  }

  else
  {
    v10 = *(v0 + OBJC_IVAR____TtC15ConversationKit32VideoMessagePlayerViewController_videoMessageViewModel);
    v11 = VideoMessagePlayerViewController.playerStateManager.getter();
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    v12 = v11[2];
    v13 = v12;

    *(v6 + v2[5]) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMR);
    swift_storeEnumTagMultiPayload();
    *(v6 + v2[6]) = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    *v6 = swift_getKeyPath();
    *(v6 + 8) = 0;
    v14 = (v6 + v2[7]);
    type metadata accessor for VideoMessagePlayerViewModel(0);
    _s15ConversationKit27VideoMessagePlayerViewModelCAC7Combine16ObservableObjectAAWlTm_1(&lazy protocol witness table cache variable for type VideoMessagePlayerViewModel and conformance VideoMessagePlayerViewModel, type metadata accessor for VideoMessagePlayerViewModel, &protocol conformance descriptor for VideoMessagePlayerViewModel);
    *v14 = ObservedObject.init(wrappedValue:)();
    v14[1] = v15;
    v16 = v6 + v2[8];
    State.init(wrappedValue:)();
    *v16 = v21;
    *(v16 + 8) = v22;
    *(v6 + v2[9]) = v12;
    *(v6 + v2[10]) = 0x3FC51EB851EB851FLL;
    *(v6 + v2[11]) = 0x4077C00000000000;
    _s15ConversationKit27VideoMessagePlayerViewModelCAC7Combine16ObservableObjectAAWlTm_1(&lazy protocol witness table cache variable for type VideoMessageControlsView and conformance VideoMessageControlsView, type metadata accessor for VideoMessageControlsView, &protocol conformance descriptor for VideoMessageControlsView);
    v17 = View.inLockScreenHostingController()();
    outlined destroy of VideoMessageControlsView(v6);
    v18 = *(v1 + v7);
    *(v1 + v7) = v17;
    v9 = v17;

    v8 = 0;
  }

  v19 = v8;
  return v9;
}

void *VideoMessagePlayerViewController.playerStateManager.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit32VideoMessagePlayerViewController____lazy_storage___playerStateManager;
  if (*(v0 + OBJC_IVAR____TtC15ConversationKit32VideoMessagePlayerViewController____lazy_storage___playerStateManager))
  {
    v2 = *(v0 + OBJC_IVAR____TtC15ConversationKit32VideoMessagePlayerViewController____lazy_storage___playerStateManager);
  }

  else
  {
    v3 = v0;
    v4 = *(v0 + OBJC_IVAR____TtC15ConversationKit32VideoMessagePlayerViewController_videoMessageViewModel);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit25VideoMessagePlayerManagerCySo8AVPlayerCGMd, &_s15ConversationKit25VideoMessagePlayerManagerCySo8AVPlayerCGMR);
    swift_allocObject();
    v2 = specialized VideoMessagePlayerManager.init(videoMessageViewModel:)(v4);
    *(v3 + v1) = v2;
    v5 = v4;
  }

  return v2;
}

id VideoMessagePlayerViewController.init(viewModel:participantInfo:)(uint64_t a1, _OWORD *a2)
{
  v5 = OBJC_IVAR____TtC15ConversationKit32VideoMessagePlayerViewController_avPlayerLayer;
  *(v2 + v5) = [objc_allocWithZone(MEMORY[0x1E69880E0]) init];
  *(v2 + OBJC_IVAR____TtC15ConversationKit32VideoMessagePlayerViewController____lazy_storage___controls) = 0;
  *(v2 + OBJC_IVAR____TtC15ConversationKit32VideoMessagePlayerViewController____lazy_storage___playerStateManager) = 0;
  *(v2 + OBJC_IVAR____TtC15ConversationKit32VideoMessagePlayerViewController_videoMessageViewModel) = a1;
  v6 = (v2 + OBJC_IVAR____TtC15ConversationKit32VideoMessagePlayerViewController_participantInfo);
  v7 = a2[1];
  *v6 = *a2;
  v6[1] = v7;
  v8 = a2[3];
  v6[2] = a2[2];
  v6[3] = v8;
  v12 = type metadata accessor for VideoMessagePlayerViewController();
  OUTLINED_FUNCTION_3_0();
  return objc_msgSendSuper2(v9, v10, v2, v12);
}

id VideoMessagePlayerViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void VideoMessagePlayerViewController.init(coder:)()
{
  v1 = OBJC_IVAR____TtC15ConversationKit32VideoMessagePlayerViewController_avPlayerLayer;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E69880E0]) init];
  *(v0 + OBJC_IVAR____TtC15ConversationKit32VideoMessagePlayerViewController____lazy_storage___controls) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit32VideoMessagePlayerViewController____lazy_storage___playerStateManager) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall VideoMessagePlayerViewController.viewDidLoad()()
{
  v1 = v0;
  v30[3] = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_8();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v28 - v8;
  v10 = type metadata accessor for VideoMessagePlayerViewController();
  v29.receiver = v0;
  v29.super_class = v10;
  objc_msgSendSuper2(&v29, sel_viewDidLoad);
  v11 = [v0 view];
  if (!v11)
  {
    __break(1u);
  }

  v12 = v11;
  v13 = [objc_opt_self() blackColor];
  [v12 setBackgroundColor_];

  v14 = objc_opt_self();
  v15 = [v14 sharedInstance];
  v16 = *MEMORY[0x1E6958068];
  v17 = *MEMORY[0x1E6958148];
  v30[0] = 0;
  v18 = [v15 setCategory:v16 mode:v17 options:14 error:v30];

  if (v18)
  {
    v19 = v30[0];
  }

  else
  {
    v20 = v30[0];
    v21 = _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v22 = [v14 sharedInstance];
  v30[0] = 0;
  v23 = [v22 setActive:1 error:v30];

  if (v23)
  {
    v24 = v30[0];
  }

  else
  {
    v25 = v30[0];
    v26 = _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  VideoMessagePlayerViewController.configureNavigationBar()();
  VideoMessagePlayerViewController.configureNavigationTitleView()();
  outlined init with copy of Notice?(*&v1[OBJC_IVAR____TtC15ConversationKit32VideoMessagePlayerViewController_videoMessageViewModel] + OBJC_IVAR____TtC15ConversationKit27VideoMessagePlayerViewModel_videoMessageURL, v9, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if (__swift_getEnumTagSinglePayload(v9, 1, v2) != 1)
  {
    (*(v3 + 32))(v6, v9, v2);
    v27 = v1;
    VideoMessagePlayerViewController.setupVideo(with:)(v6);
    (*(v3 + 8))(v6, v2);
  }

  VideoMessagePlayerViewController.addControls()();
  VideoMessagePlayerViewController.playerStateManager.getter();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

Swift::Void __swiftcall VideoMessagePlayerViewController.viewDidLayoutSubviews()()
{
  v12.receiver = v0;
  v12.super_class = type metadata accessor for VideoMessagePlayerViewController();
  objc_msgSendSuper2(&v12, sel_viewDidLayoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC15ConversationKit32VideoMessagePlayerViewController_avPlayerLayer];
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    [v2 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    [v1 setFrame_];
  }

  else
  {
    __break(1u);
  }
}

void VideoMessagePlayerViewController.configureNavigationBar()()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit32VideoMessagePlayerViewController_videoMessageViewModel);
  OUTLINED_FUNCTION_2_177();
  if ((*(v2 + 624))() & 1) != 0 || (OUTLINED_FUNCTION_2_177(), ((*(v3 + 672))()))
  {
    OUTLINED_FUNCTION_2_177();
    (*(v4 + 480))(v78);
    v5 = v78[0];
    v75 = v78[1];
    v6 = v78[2];
    v7 = v79;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo8UIActionCSgGMd, &_ss23_ContiguousArrayStorageCySo8UIActionCSgGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BC4BB980;
    v9 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAction, 0x1E69DC628);
    v10 = objc_opt_self();
    v11 = [v10 conversationKit];
    OUTLINED_FUNCTION_5_64();
    OUTLINED_FUNCTION_1_194(0xD000000000000015, 0x80000001BC516500, 0x61737265766E6F43);

    OUTLINED_FUNCTION_109();
    v12 = swift_allocObject();
    v12[2] = v5;
    v12[3] = v75;
    v12[4] = v6;
    v12[5] = v7;

    v72 = partial apply for closure #1 in VideoMessagePlayerViewController.configureNavigationBar();
    v73 = v12;
    OUTLINED_FUNCTION_0_226();
    *(inited + 32) = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v13 = v1;
    v14 = VideoMessagePlayerViewModel.showsSaveInMenu.getter();
    v15 = 0;
    v16 = v77;
    if (v14)
    {
      v17 = [v10 conversationKit];
      OUTLINED_FUNCTION_5_64();
      OUTLINED_FUNCTION_1_194(0xD000000000000012, 0x80000001BC516270, 0x61737265766E6F43);

      v18 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v72 = partial apply for closure #2 in VideoMessagePlayerViewController.configureNavigationBar();
      v73 = v18;
      OUTLINED_FUNCTION_0_226();
      v13 = v9;
      v15 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    }

    *(inited + 40) = v15;
    v19 = [v10 conversationKit];
    OUTLINED_FUNCTION_5_64();
    OUTLINED_FUNCTION_1_194(0xD00000000000001ALL, 0x80000001BC516520, 0x61737265766E6F43);

    OUTLINED_FUNCTION_109();
    v20 = swift_allocObject();
    v20[2] = v5;
    v20[3] = v75;
    v20[4] = v6;
    v20[5] = v7;

    OUTLINED_FUNCTION_0_226();
    v21 = 0;
    *(inited + 48) = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v22 = MEMORY[0x1E69E7CC0];
    v78[0] = MEMORY[0x1E69E7CC0];
    while (v21 != 3)
    {
      if (v21 > 2)
      {
        __break(1u);
        goto LABEL_30;
      }

      v23 = *(inited + 8 * v21++ + 32);
      if (v23)
      {
        v24 = v23;
        MEMORY[0x1BFB20CC0](v24, v25, v26, v27, v28);
        if (*((v78[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v78[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v22 = v78[0];
      }
    }

    swift_setDeallocating();
    specialized _ContiguousArrayStorage.__deallocating_deinit();
    if (!(v22 >> 62))
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIMenuElement, 0x1E69DCC78);
      preferredElementSize = v22;
      goto LABEL_14;
    }

LABEL_30:
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIMenuElement, 0x1E69DCC78);

    preferredElementSize = _bridgeCocoaArray<A>(_:)();

LABEL_14:

    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIMenu, 0x1E69DCC60);
    OUTLINED_FUNCTION_0_226();
    isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v30, v31, v81, v32, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, 2).super.super.isa;
    v34 = [v77 navigationItem];
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIBarButtonItem, 0x1E69DC708);
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage, 0x1E69DCAB8);
    v35 = @nonobjc UIImage.__allocating_init(systemName:)(0xD00000000000001DLL, 0x80000001BC512450);
    v36 = isa;
    v80.value.super.isa = v35;
    v80.is_nil = 0;
    v82.value.super.super.isa = isa;
    v37.super.super.isa = UIBarButtonItem.init(title:image:primaryAction:menu:)(0, v80, v82, v83).super.super.isa;
    [v34 setRightBarButtonItem_];
  }

  else
  {
    OUTLINED_FUNCTION_2_177();
    v16 = v77;
    if (((*(v68 + 528))() & 1) == 0)
    {
      goto LABEL_16;
    }

    v69 = [v77 navigationItem];
    v79 = type metadata accessor for VideoMessagePlayerViewController();
    v78[0] = v77;
    objc_allocWithZone(MEMORY[0x1E69DC708]);
    v70 = v77;
    @nonobjc UIBarButtonItem.init(barButtonSystemItem:target:action:)();
    v37.super.super.isa = v71;
    [v69 setRightBarButtonItem_];
  }

LABEL_16:
  v38 = [v16 navigationItem];
  [v38 setLargeTitleDisplayMode_];

  v39 = [v16 navigationController];
  if (!v39 || (v40 = v39, v41 = [v39 navigationBar], v40, v42 = objc_msgSend(v41, sel_standardAppearance), v41, !v42))
  {
    v42 = [objc_allocWithZone(MEMORY[0x1E69DCCC8]) init];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMd, &_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMR);
  v43 = swift_initStackObject();
  v44 = MEMORY[0x1E69DB650];
  *(v43 + 16) = xmmword_1BC4BA940;
  v45 = *v44;
  *(v43 + 32) = *v44;
  v46 = objc_opt_self();
  v74 = v45;
  v47 = [v46 systemWhiteColor];
  v48 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIColor, 0x1E69DC888);
  *(v43 + 64) = v48;
  *(v43 + 40) = v47;
  type metadata accessor for NSAttributedStringKey(0);
  _s15ConversationKit27VideoMessagePlayerViewModelCAC7Combine16ObservableObjectAAWlTm_1(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey, &protocol conformance descriptor for NSAttributedStringKey);
  OUTLINED_FUNCTION_18_65();
  Dictionary.init(dictionaryLiteral:)();
  OUTLINED_FUNCTION_18_65();
  v49 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v42 setTitleTextAttributes_];

  v76 = [objc_allocWithZone(MEMORY[0x1E69DC710]) initWithStyle_];
  v50 = [v76 normal];
  v51 = swift_initStackObject();
  *(v51 + 16) = xmmword_1BC4BA940;
  *(v51 + 32) = v74;
  v52 = v46;
  v53 = [v46 systemWhiteColor];
  *(v51 + 64) = v48;
  *(v51 + 40) = v53;
  OUTLINED_FUNCTION_18_65();
  Dictionary.init(dictionaryLiteral:)();
  OUTLINED_FUNCTION_18_65();
  v54 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v50 setTitleTextAttributes_];

  v55 = [v42 backButtonAppearance];
  v56 = [v55 normal];
  v57 = [v55 normal];
  v58 = [v57 backgroundImage];

  if (v58)
  {
    v59 = [v52 systemWhiteColor];
    v60 = [v58 imageWithTintColor_];
  }

  else
  {
    v60 = 0;
  }

  [v56 setBackgroundImage_];

  [v42 setButtonAppearance_];
  [v42 setBackButtonAppearance_];
  v61 = [v77 navigationController];
  if (v61)
  {
    v62 = v61;
    v63 = [v61 navigationBar];

    [v63 setStandardAppearance_];
  }

  v64 = [v77 navigationController];
  if (v64)
  {
    v65 = v64;
    v66 = [v64 navigationBar];

    v67 = [v52 systemWhiteColor];
    [v66 setTintColor_];
  }
}

void closure #2 in VideoMessagePlayerViewController.configureNavigationBar()(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    VideoMessagePlayerViewController.save()();
  }
}

void VideoMessagePlayerViewController.configureNavigationTitleView()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v33 - v3;
  v5 = type metadata accessor for VoicemailDetailNavigationTitleView();
  MEMORY[0x1EEE9AC00](v5 - 8);
  OUTLINED_FUNCTION_8();
  v6 = &v0[OBJC_IVAR____TtC15ConversationKit32VideoMessagePlayerViewController_participantInfo];
  v7 = *&v0[OBJC_IVAR____TtC15ConversationKit32VideoMessagePlayerViewController_participantInfo + 16];
  v36 = *&v0[OBJC_IVAR____TtC15ConversationKit32VideoMessagePlayerViewController_participantInfo];
  v37 = v7;
  v8 = *&v0[OBJC_IVAR____TtC15ConversationKit32VideoMessagePlayerViewController_participantInfo + 48];
  v38 = *&v0[OBJC_IVAR____TtC15ConversationKit32VideoMessagePlayerViewController_participantInfo + 32];
  v39 = v8;
  v9 = *(&v36 + 1);
  if (*(&v36 + 1))
  {
    v34 = v4;
    v35 = v1;
    v10 = v38;
    v11 = v37;
    v12 = v36;
    v13 = BYTE8(v37);
    v14 = swift_allocObject();
    *(v14 + 16) = v12;
    *(v14 + 24) = v9;
    *(v14 + 32) = v11;
    *(v14 + 40) = v13;
    *(v14 + 41) = *(v6 + 25);
    *(v14 + 44) = *(v6 + 7);
    *(v14 + 48) = v10;
    *(v14 + 64) = *(v6 + 3);
    type metadata accessor for VoicemailDetailNavigationTitleViewModel();
    v33[1] = swift_allocObject();
    OUTLINED_FUNCTION_19_56();
    OUTLINED_FUNCTION_19_56();

    v15 = v35;
    VoicemailDetailNavigationTitleViewModel.init(messageSenderHandleString:contacts:isUnknownCaller:location:avatarAction:)();
    v16 = type metadata accessor for Date();
    __swift_storeEnumTagSinglePayload(v34, 1, 1, v16);

    OUTLINED_FUNCTION_5_6();
    VoicemailDetailNavigationTitleView.init(viewModel:contactLabel:date:)();
    v17 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI14_UIHostingViewCy014CommunicationsB0030VoicemailDetailNavigationTitleD0VGMd, &_s7SwiftUI14_UIHostingViewCy014CommunicationsB0030VoicemailDetailNavigationTitleD0VGMR));
    v18 = _UIHostingView.init(rootView:)();
    v19 = objc_allocWithZone(type metadata accessor for VoicemailNavigationBarTitleViewWrapper());
    v20 = v18;
    v21 = VoicemailNavigationBarTitleViewWrapper.init(titleView:)();
    v22 = [v15 traitCollection];
    v23 = [v22 horizontalSizeClass];

    if (v23 == 2)
    {
      v24 = [objc_opt_self() currentDevice];
      v25 = [v24 userInterfaceIdiom];

      if (v25 != 6)
      {
        v26 = [v15 navigationItem];
        v27 = [v26 titleView];

        [v27 removeFromSuperview];
        v28 = [v15 navigationItem];
        [v28 setTitleView_];
      }
    }

    v29 = [v15 navigationItem];
    [v29 setTitleView_];

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v36, &_s15ConversationKit21PlayerParticipantInfoVSgMd, &_s15ConversationKit21PlayerParticipantInfoVSgMR);
  }

  else
  {
    OUTLINED_FUNCTION_5_18();
    v31 = (*(v30 + 384))();

    outlined bridged method (mbnn) of @objc UIViewController.title.setter(v31, v32, v1);
  }
}

uint64_t VideoMessagePlayerViewController.save()()
{
  v1 = [v0 navigationItem];
  [v1 setRightBarButtonItem_];

  v2 = *&v0[OBJC_IVAR____TtC15ConversationKit32VideoMessagePlayerViewController_videoMessageViewModel];
  v3 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_5_18();
  v5 = (*(v4 + 584))(1);
  (*((*v3 & *v2) + 0x1B0))(v9, v5);
  v6 = v9[6];

  v7 = outlined destroy of VideoMessagePlayerViewActions(v9);
  v6(v7);
}

void VideoMessagePlayerViewController.setupVideo(with:)(uint64_t a1)
{
  v2 = v1;
  v4 = [v1 view];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 layer];

    v7 = *&v2[OBJC_IVAR____TtC15ConversationKit32VideoMessagePlayerViewController_avPlayerLayer];
    [v6 insertSublayer:v7 atIndex:0];

    VideoMessagePlayerViewController.playerStateManager.getter();
    v8 = specialized VideoMessagePlayerManager.setupVideo(with:)(a1);

    [v7 setPlayer_];

    OUTLINED_FUNCTION_5_18();
    (*(v9 + 288))(&v12);
    v10 = MEMORY[0x1E69874E8];
    if (!v12)
    {
      v10 = MEMORY[0x1E69874F0];
    }

    v11 = *v10;
    [v7 setVideoGravity_];
  }

  else
  {
    __break(1u);
  }
}

void VideoMessagePlayerViewController.addControls()()
{
  v1 = VideoMessagePlayerViewController.controls.getter();
  v2 = [v1 view];

  if (!v2)
  {
    __break(1u);
    goto LABEL_17;
  }

  [v2 setTranslatesAutoresizingMaskIntoConstraints_];

  v3 = OBJC_IVAR____TtC15ConversationKit32VideoMessagePlayerViewController____lazy_storage___controls;
  v4 = OUTLINED_FUNCTION_11_110();
  if (!v4)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v5 = v4;
  v6 = [objc_opt_self() clearColor];
  [v5 setBackgroundColor_];

  v7 = OUTLINED_FUNCTION_12_101();
  if (!v7)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v8 = v7;
  v9 = OUTLINED_FUNCTION_11_110();
  if (!v9)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v10 = v9;
  [v8 addSubview_];

  [v0 addChildViewController_];
  [*&v0[v3] didMoveToParentViewController_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1BC4BA7F0;
  v12 = OUTLINED_FUNCTION_11_110();
  if (!v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v13 = v12;
  v14 = [v12 leadingAnchor];

  v15 = OUTLINED_FUNCTION_12_101();
  if (!v15)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v16 = v15;
  v17 = [v15 leadingAnchor];

  v18 = OUTLINED_FUNCTION_83();
  *(v11 + 32) = v18;
  v19 = OUTLINED_FUNCTION_11_110();
  if (!v19)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v20 = v19;
  v21 = [v19 trailingAnchor];

  v22 = OUTLINED_FUNCTION_12_101();
  if (!v22)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v23 = v22;
  v24 = [v22 trailingAnchor];

  v25 = OUTLINED_FUNCTION_83();
  *(v11 + 40) = v25;
  v26 = OUTLINED_FUNCTION_11_110();
  if (!v26)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v27 = v26;
  v28 = [v26 topAnchor];

  v29 = OUTLINED_FUNCTION_12_101();
  if (!v29)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v30 = v29;
  v31 = [v29 topAnchor];

  v32 = OUTLINED_FUNCTION_83();
  *(v11 + 48) = v32;
  v33 = OUTLINED_FUNCTION_11_110();
  if (!v33)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v34 = v33;
  v35 = [v33 bottomAnchor];

  v36 = OUTLINED_FUNCTION_12_101();
  if (!v36)
  {
LABEL_27:
    __break(1u);
    return;
  }

  v37 = v36;
  v38 = objc_opt_self();
  v39 = [v37 bottomAnchor];

  v40 = [v35 constraintEqualToAnchor_];
  *(v11 + 56) = v40;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x1E696ACD8);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v38 activateConstraints_];
}

Swift::Void __swiftcall VideoMessagePlayerViewController.viewDidDisappear(_:)(Swift::Bool a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v10.receiver = v1;
  v10.super_class = type metadata accessor for VideoMessagePlayerViewController();
  objc_msgSendSuper2(&v10, sel_viewDidDisappear_, a1);
  v3 = [objc_opt_self() sharedInstance];
  v9 = 0;
  v4 = [v3 setActive:0 error:&v9];

  v5 = v9;
  if (v4)
  {

    v6 = v5;
  }

  else
  {
    v7 = v9;
    v8 = _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

id VideoMessagePlayerViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = MEMORY[0x1BFB209B0](a1);
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id VideoMessagePlayerViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VideoMessagePlayerViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id one-time initialization function for timeFormatter()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696AB70]) init];
  [v0 setZeroFormattingBehavior_];
  result = [v0 setAllowedUnits_];
  static NSDateComponentsFormatter.timeFormatter = v0;
  return result;
}

uint64_t _s15ConversationKit27VideoMessagePlayerViewModelCAC7Combine16ObservableObjectAAWlTm_1(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined destroy of VideoMessageControlsView(uint64_t a1)
{
  v2 = type metadata accessor for VideoMessageControlsView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double outlined consume of PlayerParticipantInfo?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t partial apply for specialized closure #1 in VideoMessagePlayerManager.fetchDuration(from:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #2 in closure #1 in variable initialization expression of static CallScreeningViewModelComposer.viewModel;

  return specialized closure #1 in VideoMessagePlayerManager.fetchDuration(from:)(a1, v4, v5, v7, v6);
}

uint64_t objectdestroy_27Tm()
{

  OUTLINED_FUNCTION_109();

  return swift_deallocObject();
}

uint64_t ConversationControlsJoinCountdownActionController.__allocating_init()()
{
  v0 = swift_allocObject();
  ConversationControlsJoinCountdownActionController.init()();
  return v0;
}

uint64_t key path getter for CountdownVoucher.countdownObject : CountdownVoucher@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for CountdownVoucher(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of CountdownVoucher(a1, v6);
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 1);
  result = outlined destroy of CountdownVoucher(v6);
  *a2 = Strong;
  a2[1] = v8;
  return result;
}

uint64_t CountdownVoucher.countdownObject.setter(uint64_t a1, uint64_t a2)
{
  *(v2 + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t (*CountdownVoucher.countdownObject.modify(uint64_t *a1))(uint64_t a1)
{
  a1[2] = v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = *(v1 + 8);
  *a1 = Strong;
  a1[1] = v4;
  return DefaultParticipantCaptionsProviderCreator.participantCaptionsProviderDelegate.modify;
}

uint64_t CountdownVoucher.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CountdownVoucher(0) + 20);
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_7_0();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t CountdownVoucher.hash(into:)(uint64_t a1)
{
  type metadata accessor for CountdownVoucher(0);
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_2_178();
  _s10Foundation4UUIDVACSHAAWlTm_9(v1, v2, MEMORY[0x1E69695B8]);
  return dispatch thunk of Hashable.hash(into:)();
}

uint64_t static CountdownVoucher.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for CountdownVoucher(0);

  return static UUID.== infix(_:_:)();
}

Swift::Int CountdownVoucher.hashValue.getter()
{
  Hasher.init(_seed:)();
  type metadata accessor for CountdownVoucher(0);
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_2_178();
  _s10Foundation4UUIDVACSHAAWlTm_9(v0, v1, MEMORY[0x1E69695B8]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t CountdownVoucher.init()@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 8) = 0;
  swift_unknownObjectWeakInit();
  type metadata accessor for CountdownVoucher(0);
  return UUID.init()();
}

uint64_t CountdownVoucher.init(countdownObject:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *(a2 + 8) = a1;
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  type metadata accessor for CountdownVoucher(0);
  return UUID.init()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CountdownVoucher(uint64_t a1)
{
  Hasher.init(_seed:)();
  CountdownVoucher.hash(into:)(v2);
  return Hasher._finalize()();
}

uint64_t key path setter for ConversationControlsJoinCountdownActionController.CountdownInfo.lastCountdownStart : ConversationControlsJoinCountdownActionController.CountdownInfo(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v8 - v5;
  outlined init with copy of Date?(a1, &v8 - v5);
  return (*(**a2 + 104))(v6);
}

uint64_t key path setter for ConversationControlsJoinCountdownActionController.CountdownInfo.lastCountdownEnded : ConversationControlsJoinCountdownActionController.CountdownInfo(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v8 - v5;
  outlined init with copy of Date?(a1, &v8 - v5);
  return (*(**a2 + 128))(v6);
}

uint64_t ConversationControlsJoinCountdownActionController.CountdownInfo.lastCountdownStart.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  return outlined init with copy of Date?(v2 + v4, a2);
}

uint64_t ConversationControlsJoinCountdownActionController.CountdownInfo.lastCountdownStart.setter(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  outlined assign with take of Date?(a1, v2 + v4);
  return swift_endAccess();
}

uint64_t ConversationControlsJoinCountdownActionController.CountdownInfo.deinit()
{
  OUTLINED_FUNCTION_10_92(OBJC_IVAR____TtCC15ConversationKit49ConversationControlsJoinCountdownActionController13CountdownInfo_lastCountdownStart);
  OUTLINED_FUNCTION_10_92(OBJC_IVAR____TtCC15ConversationKit49ConversationControlsJoinCountdownActionController13CountdownInfo_lastCountdownEnded);
  return v0;
}

uint64_t ConversationControlsJoinCountdownActionController.CountdownInfo.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = type metadata accessor for Date();
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v1);
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v1);
  return v0;
}

uint64_t ConversationControlsJoinCountdownActionController.CountdownInfo.init()()
{
  v1 = type metadata accessor for Date();
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v1);
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v1);
  return v0;
}

uint64_t ConversationControlsJoinCountdownActionController.startCountdownIfNecessary(for:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for CountdownVoucher(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &aBlock[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &aBlock[-v11];
  *&aBlock[-v11 + 8] = a2;
  swift_unknownObjectWeakInit();
  UUID.init()();
  v13 = *(v3 + 16);
  outlined init with copy of CountdownVoucher(v12, v9);
  v14 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v3;
  outlined init with take of CountdownVoucher(v9, v15 + v14);
  v16 = (v15 + ((v8 + v14 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v16 = a1;
  v16[1] = a2;
  v17 = swift_allocObject();
  *(v17 + 16) = partial apply for closure #1 in ConversationControlsJoinCountdownActionController.startCountdownIfNecessary(for:);
  *(v17 + 24) = v15;
  v34 = partial apply for thunk for @callee_guaranteed (@guaranteed UIGraphicsImageRendererContext) -> ();
  v35 = v17;
  OUTLINED_FUNCTION_5_73();
  v31 = 1107296256;
  OUTLINED_FUNCTION_3_174();
  v32 = v18;
  v33 = &block_descriptor_125;
  v19 = _Block_copy(aBlock);
  v20 = v13;

  swift_unknownObjectRetain();

  [v20 performWhileLocked_];

  _Block_release(v19);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  else if (one-time initialization token for conversationControls == -1)
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
LABEL_3:
  v21 = type metadata accessor for Logger();
  __swift_project_value_buffer(v21, &static Logger.conversationControls);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    OUTLINED_FUNCTION_120(&dword_1BBC58000, v25, v26, "Generating countdown voucher");
    MEMORY[0x1BFB23DF0](v24, -1, -1);
  }

  v27 = OUTLINED_FUNCTION_45_1();
  outlined init with take of CountdownVoucher(v27, v28);
}

uint64_t closure #1 in ConversationControlsJoinCountdownActionController.startCountdownIfNecessary(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v39 = a4;
  v40 = a5;
  v38 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v34 - v8;
  v10 = type metadata accessor for Date();
  v37 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v36 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v35 = &v34 - v13;
  v14 = type metadata accessor for CountdownVoucher(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v34 - v18;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v20 = (*static Defaults.shared + 1088);
  v21 = *v20;
  v22 = (*v20)();
  outlined init with copy of CountdownVoucher(v38, v16);
  swift_beginAccess();
  specialized Set._Variant.insert(_:)();
  outlined destroy of CountdownVoucher(v19);
  swift_endAccess();
  if (ConversationControlsJoinCountdownActionController.isInCountdown(_:)(a1))
  {
    (*(*a1 + 96))();
    if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v9, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    }

    else
    {
      v23 = v37;
      v24 = v35;
      v25 = (*(v37 + 32))(v35, v9, v10);
      v26 = (v21)(v25);
      v27 = v36;
      Date.init()();
      Date.timeIntervalSince(_:)();
      v29 = v28;
      v30 = *(v23 + 8);
      v30(v27, v10);
      v30(v24, v10);
      v22 = v26 - v29;
    }
  }

  else
  {
    (*(*a2 + 272))();
  }

  ObjectType = swift_getObjectType();
  v32 = v21();
  return (*(v40 + 8))(ObjectType, v22, v32);
}

uint64_t partial apply for closure #1 in ConversationControlsJoinCountdownActionController.startCountdownIfNecessary(for:)(uint64_t a1)
{
  v3 = *(type metadata accessor for CountdownVoucher(0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];

  return closure #1 in ConversationControlsJoinCountdownActionController.startCountdownIfNecessary(for:)(a1, v5, v1 + v4, v7, v8);
}

uint64_t ConversationControlsJoinCountdownActionController.invalidate(voucher:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit16CountdownVoucherVSgMd, &_s15ConversationKit16CountdownVoucherVSgMR);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v10 - v1;
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, &static Logger.conversationControls);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    OUTLINED_FUNCTION_120(&dword_1BBC58000, v7, v8, "Invalidating countdown voucher");
    MEMORY[0x1BFB23DF0](v6, -1, -1);
  }

  swift_beginAccess();
  specialized Set._Variant.remove(_:)();
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v2, &_s15ConversationKit16CountdownVoucherVSgMd, &_s15ConversationKit16CountdownVoucherVSgMR);
  return swift_endAccess();
}

Swift::Void __swiftcall ConversationControlsJoinCountdownActionController.storeCountdownEndedDate()()
{
  [*(v0 + 32) invalidate];
  v1 = *(v0 + 32);
  *(v0 + 32) = 0;

  v2 = *(v0 + 16);
  v10 = specialized thunk for @callee_guaranteed (@guaranteed ConversationControlsJoinCountdownActionController.CountdownInfo) -> ();
  v11 = 0;
  v6 = MEMORY[0x1E69E9820];
  v7 = 1107296256;
  OUTLINED_FUNCTION_3_174();
  v8 = v3;
  v9 = &block_descriptor_7_1;
  v4 = _Block_copy(&v6);
  v5 = v2;

  [v5 performWhileLocked_];

  _Block_release(v4);
  if (swift_isEscapingClosureAtFileLocation())
  {
    __break(1u);
  }
}

uint64_t closure #1 in ConversationControlsJoinCountdownActionController.storeCountdownEndedDate()(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v7 - v3;
  Date.init()();
  v5 = type metadata accessor for Date();
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v5);
  return (*(*a1 + 128))(v4);
}

Swift::Void __swiftcall ConversationControlsJoinCountdownActionController.setupPlayerAndStartCountdown()()
{
  v1 = v0;
  type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_8();
  v5 = v4 - v3;
  v6 = type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8();
  v12 = v11 - v10;
  v13 = type metadata accessor for DispatchQoS.QoSClass();
  OUTLINED_FUNCTION_1();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_8();
  v19 = v18 - v17;
  if ((*(v1 + 48) & 1) == 0)
  {
    *(v1 + 48) = 1;
    type metadata accessor for OS_dispatch_queue();
    (*(v15 + 104))(v19, *MEMORY[0x1E69E7F88], v13);
    v24 = static OS_dispatch_queue.global(qos:)();
    (*(v15 + 8))(v19, v13);
    v20 = swift_allocObject();
    swift_weakInit();
    v29 = partial apply for closure #1 in ConversationControlsJoinCountdownActionController.setupPlayerAndStartCountdown();
    v30 = v20;
    OUTLINED_FUNCTION_5_73();
    v26 = 1107296256;
    v27 = thunk for @escaping @callee_guaranteed () -> ();
    v28 = &block_descriptor_13_5;
    v21 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    _s10Foundation4UUIDVACSHAAWlTm_9(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1BFB215C0](0, v12, v5, v21);
    _Block_release(v21);

    v22 = OUTLINED_FUNCTION_309();
    v23(v22);
    (*(v8 + 8))(v12, v6);
  }
}

uint64_t closure #1 in ConversationControlsJoinCountdownActionController.setupPlayerAndStartCountdown()(uint64_t a1)
{
  v60 = *MEMORY[0x1E69E9840];
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v57 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for DispatchQoS();
  v56 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v5 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v52 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v52 - v14;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v17 = result;
    v54 = v2;
    v18 = [objc_opt_self() conversationKit];
    v19 = outlined bridged method (mbbnn) of @objc NSBundle.url(forResource:withExtension:)(0x776F64746E756F63, 0xEE00746165622D6ELL, 6709603, 0xE300000000000000, v18);

    if (v19)
    {
      v53 = v1;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v55 = v7;
      (*(v7 + 32))(v15, v12, v6);
      v20 = objc_opt_self();
      v21 = [v20 sharedInstance];
      v22 = *MEMORY[0x1E6958068];
      v23 = *MEMORY[0x1E6958130];
      aBlock[0] = 0;
      v24 = [v21 setCategory:v22 mode:v23 options:2 error:aBlock];

      if (v24)
      {
        v25 = aBlock[0];
        v26 = [v20 sharedInstance];
        aBlock[0] = 0;
        v27 = [v26 setActive:1 error:aBlock];

        v28 = aBlock[0];
        if (v27)
        {
          v29 = v55;
          (*(v55 + 16))(v9, v15, v6);
          objc_allocWithZone(MEMORY[0x1E6958448]);
          v30 = v28;
          v31 = @nonobjc AVAudioPlayer.init(contentsOf:)(v9);
          v44 = *(v17 + 40);
          *(v17 + 40) = v31;
          v45 = v31;

          if (v45)
          {
            LODWORD(v46) = 1.0;
            [v45 setVolume_];
          }

          type metadata accessor for OS_dispatch_queue();
          v52 = static OS_dispatch_queue.main.getter();
          v47 = swift_allocObject();
          swift_weakInit();
          aBlock[4] = partial apply for closure #1 in closure #1 in ConversationControlsJoinCountdownActionController.setupPlayerAndStartCountdown();
          aBlock[5] = v47;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
          aBlock[3] = &block_descriptor_60_0;
          v48 = _Block_copy(aBlock);

          static DispatchQoS.unspecified.getter();
          aBlock[0] = MEMORY[0x1E69E7CC0];
          _s10Foundation4UUIDVACSHAAWlTm_9(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
          lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
          v49 = v57;
          v50 = v53;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          v51 = v52;
          MEMORY[0x1BFB215C0](0, v5, v49, v48);
          _Block_release(v48);

          (*(v54 + 8))(v49, v50);
          (*(v56 + 8))(v5, v58);
          return (*(v29 + 8))(v15, v6);
        }

        v36 = aBlock[0];
        v35 = _convertNSErrorToError(_:)();
      }

      else
      {
        v34 = aBlock[0];
        v35 = _convertNSErrorToError(_:)();
      }

      swift_willThrow();
      if (one-time initialization token for conversationKit != -1)
      {
        swift_once();
      }

      v37 = static OS_os_log.conversationKit;
      v38 = static os_log_type_t.error.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v39 = swift_allocObject();
      *(v39 + 16) = xmmword_1BC4BA940;
      aBlock[0] = v35;
      v40 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v41 = String.init<A>(reflecting:)();
      v43 = v42;
      *(v39 + 56) = MEMORY[0x1E69E6158];
      *(v39 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v39 + 32) = v41;
      *(v39 + 40) = v43;
      os_log(_:dso:log:type:_:)("Error setting up audio player for countdown sound: %@", 53, 2, &dword_1BBC58000, v37, v38, v39);

      return (*(v55 + 8))(v15, v6);
    }

    else
    {
      if (one-time initialization token for conversationKit != -1)
      {
        swift_once();
      }

      v32 = static OS_os_log.conversationKit;
      v33 = static os_log_type_t.error.getter();
      os_log(_:dso:log:type:_:)("Unable to create audio player for countdown sound because the sound file was not found", 86, 2, &dword_1BBC58000, v32, v33, MEMORY[0x1E69E7CC0]);
    }
  }

  return result;
}

uint64_t closure #1 in closure #1 in ConversationControlsJoinCountdownActionController.setupPlayerAndStartCountdown()(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = result;
    (*(*result + 280))(result);
    v3 = *(v2 + 16);
    aBlock[4] = specialized thunk for @callee_guaranteed (@guaranteed ConversationControlsJoinCountdownActionController.CountdownInfo) -> ();
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed RecentLinkCallItems) -> ();
    aBlock[3] = &block_descriptor_63_2;
    v4 = _Block_copy(aBlock);
    v5 = v3;

    [v5 performWhileLocked_];

    _Block_release(v4);
    result = swift_isEscapingClosureAtFileLocation();
    if (result)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in ConversationControlsJoinCountdownActionController.setupPlayerAndStartCountdown()(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v7 - v3;
  Date.init()();
  v5 = type metadata accessor for Date();
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v5);
  return (*(*a1 + 104))(v4);
}

Swift::Void __swiftcall ConversationControlsJoinCountdownActionController.startCountingDown()()
{
  v1 = v0;
  v2 = type metadata accessor for CountdownVoucher(0);
  v41 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  OUTLINED_FUNCTION_8();
  v5 = v4 - v3;
  [*(v0 + 32) invalidate];
  v6 = *(v0 + 32);
  *(v0 + 32) = 0;

  v40 = swift_allocObject();
  *(v40 + 16) = 0;
  v39 = [objc_allocWithZone(MEMORY[0x1E69DCAE8]) initWithStyle_];
  [v39 impactOccurred];
  swift_beginAccess();
  v7 = *(v0 + 24);
  v8 = 1 << *(v7 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v7 + 56);
  v11 = (v8 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v12 = 0;
  v13 = MEMORY[0x1E69E7CC0];
  while (v10)
  {
LABEL_9:
    v15 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    outlined init with copy of CountdownVoucher(*(v7 + 48) + *(v41 + 72) * (v15 | (v12 << 6)), v5);
    Strong = swift_unknownObjectWeakLoadStrong();
    v17 = *(v5 + 8);
    outlined destroy of CountdownVoucher(v5);
    if (Strong)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v13 = v21;
      }

      v18 = v13[2];
      v19 = v18 + 1;
      if (v18 >= v13[3] >> 1)
      {
        v38 = v18 + 1;
        v22 = v13[2];
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v18 = v22;
        v19 = v38;
        v13 = v23;
      }

      v13[2] = v19;
      v20 = &v13[2 * v18];
      v20[4] = Strong;
      v20[5] = v17;
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    if (v14 >= v11)
    {
      break;
    }

    v10 = *(v7 + 56 + 8 * v14);
    ++v12;
    if (v10)
    {
      v12 = v14;
      goto LABEL_9;
    }
  }

  v24 = 0;
  v25 = v13[2];
  v26 = v13 + 5;
  while (v25 != v24)
  {
    if (v24 >= v13[2])
    {
      goto LABEL_22;
    }

    ++v24;
    v27 = *v26;
    ObjectType = swift_getObjectType();
    v29 = *(v27 + 16);
    swift_unknownObjectRetain();
    v29(ObjectType, v27);
    swift_unknownObjectRelease();
    v26 += 2;
  }

  v30 = objc_opt_self();
  v31 = swift_allocObject();
  swift_weakInit();
  v32 = swift_allocObject();
  *(v32 + 16) = v31;
  *(v32 + 24) = v40;
  aBlock[4] = partial apply for closure #3 in ConversationControlsJoinCountdownActionController.startCountingDown();
  aBlock[5] = v32;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
  aBlock[3] = &block_descriptor_23_0;
  v33 = _Block_copy(aBlock);

  v34 = [v30 scheduledTimerWithTimeInterval:1 repeats:v33 block:1.0];
  _Block_release(v33);
  v35 = *(v1 + 32);
  *(v1 + 32) = v34;

  if (one-time initialization token for conversationKit != -1)
  {
LABEL_23:
    swift_once();
  }

  v36 = static OS_os_log.conversationKit;
  v37 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Started countdown to join conversation", 38, 2, &dword_1BBC58000, v36, v37, MEMORY[0x1E69E7CC0]);
}

void *closure #3 in ConversationControlsJoinCountdownActionController.startCountingDown()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for CountdownVoucher(0);
  v41 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  ObjectType = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    swift_beginAccess();
    v10 = *(a3 + 16);
    v11 = __OFADD__(v10, 1);
    v12 = v10 + 1;
    if (v11)
    {
LABEL_33:
      __break(1u);
    }

    else
    {
      *(a3 + 16) = v12;
      v3 = v9[2];
      v13 = swift_allocObject();
      *(v13 + 16) = partial apply for closure #1 in closure #3 in ConversationControlsJoinCountdownActionController.startCountingDown();
      *(v13 + 24) = v9;
      aBlock[4] = partial apply for thunk for @callee_guaranteed (@guaranteed RecentsLinkControllerModel) -> ();
      aBlock[5] = v13;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed RecentLinkCallItems) -> ();
      aBlock[3] = &block_descriptor_56_2;
      v14 = _Block_copy(aBlock);
      v15 = v3;

      [v15 performWhileLocked_];

      _Block_release(v14);
      LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

      if ((v14 & 1) == 0)
      {
        swift_beginAccess();
        v3 = *(a3 + 16);
        if (one-time initialization token for shared == -1)
        {
          goto LABEL_5;
        }

        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_35:
    swift_once();
LABEL_5:
    v16 = (*(*static Defaults.shared + 1088))();
    if ((*&v16 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v16 > -9.22337204e18)
    {
      if (v16 < 9.22337204e18)
      {
        if (v3 < v16)
        {
        }

        (*(*v9 + 264))();
        swift_beginAccess();
        v17 = v9[3];
        v18 = 1 << *(v17 + 32);
        v19 = -1;
        if (v18 < 64)
        {
          v19 = ~(-1 << v18);
        }

        v20 = v19 & *(v17 + 56);
        v21 = (v18 + 63) >> 6;
        swift_bridgeObjectRetain_n();
        v22 = 0;
        v23 = MEMORY[0x1E69E7CC0];
        while (v20)
        {
LABEL_17:
          v25 = __clz(__rbit64(v20));
          v20 &= v20 - 1;
          outlined init with copy of CountdownVoucher(*(v17 + 48) + *(v41 + 72) * (v25 | (v22 << 6)), ObjectType);
          Strong = swift_unknownObjectWeakLoadStrong();
          v3 = *(ObjectType + 1);
          outlined destroy of CountdownVoucher(ObjectType);
          if (Strong)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
              v23 = v30;
            }

            v27 = *(v23 + 16);
            v28 = v27 + 1;
            if (v27 >= *(v23 + 24) >> 1)
            {
              v40 = v27 + 1;
              v31 = v27;
              specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
              v27 = v31;
              v28 = v40;
              v23 = v32;
            }

            *(v23 + 16) = v28;
            v29 = v23 + 16 * v27;
            *(v29 + 32) = Strong;
            *(v29 + 40) = v3;
          }
        }

        while (1)
        {
          v24 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
            __break(1u);
LABEL_32:
            __break(1u);
            goto LABEL_33;
          }

          if (v24 >= v21)
          {
            break;
          }

          v20 = *(v17 + 56 + 8 * v24);
          ++v22;
          if (v20)
          {
            v22 = v24;
            goto LABEL_17;
          }
        }

        v33 = 0;
        v34 = *(v23 + 16);
        v35 = (v23 + 40);
        while (v34 != v33)
        {
          if (v33 >= *(v23 + 16))
          {
            goto LABEL_32;
          }

          ++v33;
          v3 = *v35;
          ObjectType = swift_getObjectType();
          v36 = v3[4];
          swift_unknownObjectRetain();
          v36(ObjectType, v3);
          swift_unknownObjectRelease();
          v35 += 2;
        }

        if (one-time initialization token for conversationKit != -1)
        {
          goto LABEL_39;
        }

LABEL_28:
        v37 = static OS_os_log.conversationKit;
        v38 = static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)("Finished countdown, joining conversation", 40, 2, &dword_1BBC58000, v37, v38, MEMORY[0x1E69E7CC0]);
      }

LABEL_38:
      __break(1u);
LABEL_39:
      swift_once();
      goto LABEL_28;
    }

    __break(1u);
    goto LABEL_38;
  }

  return result;
}

void closure #1 in closure #3 in ConversationControlsJoinCountdownActionController.startCountingDown()(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for CountdownVoucher(0);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  [*(a2 + 40) play];
  swift_beginAccess();
  v8 = *(a2 + 24);
  v9 = 1 << *(v8 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v8 + 56);
  v12 = (v9 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v13 = 0;
  v14 = MEMORY[0x1E69E7CC0];
  while (v11)
  {
LABEL_9:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    outlined init with copy of CountdownVoucher(*(v8 + 48) + *(v4 + 72) * (v16 | (v13 << 6)), v7);
    Strong = swift_unknownObjectWeakLoadStrong();
    v18 = *(v7 + 1);
    outlined destroy of CountdownVoucher(v7);
    if (Strong)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v14 = v22;
      }

      v19 = v14[2];
      v20 = v19 + 1;
      if (v19 >= v14[3] >> 1)
      {
        v31 = v19 + 1;
        v23 = v19;
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v19 = v23;
        v20 = v31;
        v14 = v24;
      }

      v14[2] = v20;
      v21 = &v14[2 * v19];
      v21[4] = Strong;
      v21[5] = v18;
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v12)
    {

      v25 = 0;
      v26 = v14[2];
      v27 = v14 + 5;
      while (v26 != v25)
      {
        if (v25 >= v14[2])
        {
          goto LABEL_21;
        }

        ++v25;
        v28 = *v27;
        ObjectType = swift_getObjectType();
        v30 = *(v28 + 24);
        swift_unknownObjectRetain();
        v30(ObjectType, v28);
        swift_unknownObjectRelease();
        v27 += 2;
      }

      return;
    }

    v11 = *(v8 + 56 + 8 * v15);
    ++v13;
    if (v11)
    {
      v13 = v15;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

uint64_t ConversationControlsJoinCountdownActionController.isInCountdown(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v66 = &v59 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v59 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v59 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v59 - v14;
  v16 = type metadata accessor for Date();
  OUTLINED_FUNCTION_1();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  v64 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v65 = &v59 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = &v59 - v26;
  (*(*a1 + 96))(v25);
  if (OUTLINED_FUNCTION_20_7(v15) == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v15, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
LABEL_12:
    v44 = 0;
    return v44 & 1;
  }

  v63 = v4;
  v28 = *(v18 + 32);
  v28(v27, v15, v16);
  Date.init()();
  if (static Date.> infix(_:_:)())
  {
LABEL_11:
    v41 = *(v18 + 8);
    v42 = OUTLINED_FUNCTION_309();
    v41(v42);
    v43 = OUTLINED_FUNCTION_45_1();
    v41(v43);
    goto LABEL_12;
  }

  v60 = v28;
  Date.timeIntervalSince(_:)();
  v30 = v29;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v31 = *(*static Defaults.shared + 1088);
  v61 = *static Defaults.shared + 1088;
  v62 = v31;
  v32 = v31();
  v33 = *(*a1 + 120);
  if (v30 <= v32 + 0.01)
  {
    v33();
    if (OUTLINED_FUNCTION_20_7(v12) == 1)
    {
      v45 = *(v18 + 8);
      v46 = OUTLINED_FUNCTION_309();
      v45(v46);
      v47 = OUTLINED_FUNCTION_45_1();
      v45(v47);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v12, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    }

    else
    {
      v48 = v65;
      v60(v65, v12, v16);
      _s10Foundation4UUIDVACSHAAWlTm_9(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
      if ((dispatch thunk of static Comparable.< infix(_:_:)() & 1) == 0)
      {
        v52 = v64;
        static Date.+ infix(_:_:)();
        v53 = dispatch thunk of static Comparable.< infix(_:_:)();
        v54 = *(v18 + 8);
        v54(v52, v16);
        v54(v48, v16);
        v55 = OUTLINED_FUNCTION_309();
        (v54)(v55);
        v56 = OUTLINED_FUNCTION_45_1();
        (v54)(v56);
        v44 = v53 ^ 1;
        return v44 & 1;
      }

      v49 = *(v18 + 8);
      v49(v48, v16);
      v50 = OUTLINED_FUNCTION_309();
      (v49)(v50);
      v51 = OUTLINED_FUNCTION_45_1();
      (v49)(v51);
    }

    v44 = 1;
    return v44 & 1;
  }

  v65 = *(*a1 + 120);
  v33();
  v34 = OUTLINED_FUNCTION_20_7(v9);
  v35 = outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v9, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if (v34 == 1)
  {
LABEL_10:
    (v62)(v35);
    v40 = v63;
    static Date.+ infix(_:_:)();
    __swift_storeEnumTagSinglePayload(v40, 0, 1, v16);
    (*(*a1 + 128))(v40);
    goto LABEL_11;
  }

  v36 = v66;
  (v65)(v35);
  result = OUTLINED_FUNCTION_20_7(v36);
  if (result != 1)
  {
    v38 = static Date.< infix(_:_:)();
    v39 = *(v18 + 8);
    v35 = v39(v36, v16);
    if ((v38 & 1) == 0)
    {
      v57 = OUTLINED_FUNCTION_309();
      (v39)(v57);
      v58 = OUTLINED_FUNCTION_45_1();
      (v39)(v58);
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t _s10Foundation4UUIDVACSHAAWlTm_9(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata completion function for CountdownVoucher(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void type metadata completion function for ConversationControlsJoinCountdownActionController.CountdownInfo(uint64_t a1)
{
  type metadata accessor for Date?(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Date?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Date?)
  {
    type metadata accessor for Date();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Date?);
    }
  }
}

uint64_t key path getter for LinkDetailViewModel.canRevokeLink : LinkDetailViewModel@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 144))();
  *a2 = result & 1;
  return result;
}

uint64_t key path getter for LinkDetailViewModel.canShareLink : LinkDetailViewModel@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 192))();
  *a2 = result & 1;
  return result;
}

uint64_t key path setter for LinkDetailViewModel.$canRevokeLink : LinkDetailViewModel(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_21();
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v15 - v11;
  (*(v13 + 16))(&v15 - v11, a1, v10);
  return a7(v12);
}

uint64_t LinkDetailViewModel.$canRevokeLink.setter(uint64_t a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  OUTLINED_FUNCTION_21();
  v9 = MEMORY[0x1EEE9AC00](v8);
  (*(v7 + 16))(&v13[-v10 - 8], a1, v5, v9);
  OUTLINED_FUNCTION_30_2(v2 + *a2, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v7 + 8))(a1, v5);
}

uint64_t key path getter for LinkDetailViewModel.invitedMemberHandles : LinkDetailViewModel@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 240))();
  *a2 = result;
  return result;
}

uint64_t key path setter for LinkDetailViewModel.invitedMemberHandles : LinkDetailViewModel(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 248);

  return v2(v3);
}

uint64_t LinkDetailViewModel.invitedMemberHandles.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t LinkDetailViewModel.invitedMemberHandles.setter(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*LinkDetailViewModel.invitedMemberHandles.modify())()
{
  v1 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_47(v1);
  *(v0 + 32) = swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_42_2(KeyPath);
  return LinkDetailHeaderView.invitedMemberHandles.modify;
}

uint64_t key path setter for LinkDetailViewModel.$invitedMemberHandles : LinkDetailViewModel(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVyShySo8TUHandleCGSg_GMd, &_s7Combine9PublishedV9PublisherVyShySo8TUHandleCGSg_GMR);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6, a1, v5);
  return (*(**a2 + 272))(v7);
}

uint64_t LinkDetailViewModel.$invitedMemberHandles.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVyShySo8TUHandleCGSg_GMd, &_s7Combine9PublishedV9PublisherVyShySo8TUHandleCGSg_GMR);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_25_0(v1, v8);
  v3(v2);
  OUTLINED_FUNCTION_50();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVyShySo8TUHandleCGSgGMd, &_s7Combine9PublishedVyShySo8TUHandleCGSgGMR);
  OUTLINED_FUNCTION_67(v4);
  swift_endAccess();
  v5 = OUTLINED_FUNCTION_61();
  return v6(v5);
}

void (*LinkDetailViewModel.$invitedMemberHandles.modify())(uint64_t a1, uint64_t a2)
{
  v2 = __swift_coroFrameAllocStub(0x40uLL);
  *(OUTLINED_FUNCTION_47(v2) + 24) = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVyShySo8TUHandleCGSg_GMd, &_s7Combine9PublishedV9PublisherVyShySo8TUHandleCGSg_GMR);
  OUTLINED_FUNCTION_46_0(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = __swift_coroFrameAllocStub(v6);
  v1[7] = __swift_coroFrameAllocStub(v6);
  OUTLINED_FUNCTION_30_2(v0 + OBJC_IVAR____TtC15ConversationKit19LinkDetailViewModel__invitedMemberHandles, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVyShySo8TUHandleCGSgGMd, &_s7Combine9PublishedVyShySo8TUHandleCGSgGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return LinkDetailViewModel.$invitedMemberHandles.modify;
}

uint64_t key path getter for LinkDetailViewModel.linkTitle : LinkDetailViewModel@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 288))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for LinkDetailViewModel.linkTitle : LinkDetailViewModel(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 296);

  return v4(v2, v3);
}

uint64_t LinkDetailViewModel.linkTitle.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t LinkDetailViewModel.linkTitle.setter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*LinkDetailViewModel.linkTitle.modify())()
{
  v1 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_47(v1);
  *(v0 + 32) = swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_42_2(KeyPath);
  return AudioPowerSpectrumViewModel.remotePowerSpectrum.modify;
}

uint64_t key path setter for LinkDetailViewModel.$linkTitle : LinkDetailViewModel(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySSSg_GMd, &_s7Combine9PublishedV9PublisherVySSSg_GMR);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6, a1, v5);
  return (*(**a2 + 320))(v7);
}

uint64_t LinkDetailViewModel.$linkTitle.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySSSg_GMd, &_s7Combine9PublishedV9PublisherVySSSg_GMR);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_25_0(v1, v8);
  v3(v2);
  OUTLINED_FUNCTION_50();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSSgGMd, &_s7Combine9PublishedVySSSgGMR);
  OUTLINED_FUNCTION_67(v4);
  swift_endAccess();
  v5 = OUTLINED_FUNCTION_61();
  return v6(v5);
}

void (*LinkDetailViewModel.$linkTitle.modify())(uint64_t a1, uint64_t a2)
{
  v2 = __swift_coroFrameAllocStub(0x40uLL);
  *(OUTLINED_FUNCTION_47(v2) + 24) = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySSSg_GMd, &_s7Combine9PublishedV9PublisherVySSSg_GMR);
  OUTLINED_FUNCTION_46_0(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = __swift_coroFrameAllocStub(v6);
  v1[7] = __swift_coroFrameAllocStub(v6);
  OUTLINED_FUNCTION_30_2(v0 + OBJC_IVAR____TtC15ConversationKit19LinkDetailViewModel__linkTitle, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSSgGMd, &_s7Combine9PublishedVySSSgGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return LinkDetailViewModel.$linkTitle.modify;
}

void LinkDetailViewModel.$invitedMemberHandles.modify(uint64_t a1, char a2, void (*a3)(void *))
{
  v4 = *a1;
  v5 = *(*a1 + 48);
  v6 = *(*a1 + 56);
  if (a2)
  {
    v7 = v4[4];
    v8 = v4[5];
    (*(v8 + 16))(*(*a1 + 48), v6, v7);
    a3(v5);
    (*(v8 + 8))(v6, v7);
  }

  else
  {
    a3(*(*a1 + 56));
  }

  free(v6);
  free(v5);

  free(v4);
}

double key path getter for LinkDetailViewModel.conversationLink : LinkDetailViewModel@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(**a1 + 336))(&v5);
  v3 = v6;
  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v3;
  return result;
}

uint64_t key path setter for LinkDetailViewModel.conversationLink : LinkDetailViewModel(void *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  *&v5 = *a1;
  *(&v5 + 1) = v1;
  v6 = v2;
  v3 = v5;

  return LinkDetailViewModel.conversationLink.setter(&v5);
}

uint64_t LinkDetailViewModel.conversationLink.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_15_14();
  static Published.subscript.getter();
}

uint64_t LinkDetailViewModel.conversationLink.setter(__int128 *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t LinkDetailViewModel.$conversationLink.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy15ConversationKit0D4LinkV_GMd, &_s7Combine9PublishedV9PublisherVy15ConversationKit0D4LinkV_GMR);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_25_0(v1, v8);
  v3(v2);
  OUTLINED_FUNCTION_50();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15ConversationKit0C4LinkVGMd, &_s7Combine9PublishedVy15ConversationKit0C4LinkVGMR);
  OUTLINED_FUNCTION_67(v4);
  swift_endAccess();
  v5 = OUTLINED_FUNCTION_61();
  return v6(v5);
}

uint64_t LinkDetailViewModel.wantsCustomContactDetailsPresentation.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit19LinkDetailViewModel_wantsCustomContactDetailsPresentation;
  swift_beginAccess();
  return *(v0 + v1);
}

void LinkDetailViewModel.wantsCustomContactDetailsPresentation.setter(char a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit19LinkDetailViewModel_wantsCustomContactDetailsPresentation;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t key path setter for LinkDetailViewModel.delegate : LinkDetailViewModel(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(**a2 + 416);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t LinkDetailViewModel.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC15ConversationKit19LinkDetailViewModel_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  OUTLINED_FUNCTION_15_14();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*LinkDetailViewModel.delegate.modify())(uint64_t a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x38uLL);
  v3 = OUTLINED_FUNCTION_47(v2);
  v4 = OBJC_IVAR____TtC15ConversationKit19LinkDetailViewModel_delegate;
  *(v3 + 40) = v0;
  *(v3 + 48) = v4;
  v5 = v0 + v4;
  v6 = OUTLINED_FUNCTION_15_14();
  OUTLINED_FUNCTION_30_2(v6, v7);
  Strong = swift_unknownObjectWeakLoadStrong();
  v9 = *(v5 + 8);
  *(v1 + 24) = Strong;
  *(v1 + 32) = v9;
  return InCallControlsBaseCell.delegate.modify;
}

uint64_t key path setter for LinkDetailViewModel.recentsCallItem : LinkDetailViewModel(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for RecentsCallItem(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of RecentsCallItem(a1, v6);
  v7 = *a2;
  v8 = OBJC_IVAR____TtC15ConversationKit19LinkDetailViewModel_recentsCallItem;
  swift_beginAccess();
  outlined assign with take of RecentsCallItem(v6, v7 + v8);
  return swift_endAccess();
}

uint64_t LinkDetailViewModel.recentsCallItem.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15ConversationKit19LinkDetailViewModel_recentsCallItem;
  swift_beginAccess();
  return outlined init with copy of RecentsCallItem(v1 + v3, a1);
}

uint64_t LinkDetailViewModel.init(recentsCallItem:)(uint64_t a1)
{
  v2 = v1;
  v45 = a1;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSSgGMd, &_s7Combine9PublishedVySSSgGMR);
  OUTLINED_FUNCTION_1();
  v46 = v3;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  v44 = &v37 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVyShySo8TUHandleCGSgGMd, &_s7Combine9PublishedVyShySo8TUHandleCGSgGMR);
  OUTLINED_FUNCTION_1();
  v8 = v7;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v37 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  OUTLINED_FUNCTION_1();
  v14 = v13;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v37 - v16;
  v18 = OBJC_IVAR____TtC15ConversationKit19LinkDetailViewModel__canRevokeLink;
  LOBYTE(v50) = 0;
  Published.init(initialValue:)();
  v39 = v18;
  v40 = v14;
  v19 = *(v14 + 32);
  v19(v2 + v18, v17, v12);
  v20 = OBJC_IVAR____TtC15ConversationKit19LinkDetailViewModel__canShareLink;
  LOBYTE(v50) = 0;
  Published.init(initialValue:)();
  v38 = v20;
  v19(v2 + v20, v17, v12);
  v21 = v43;
  v22 = OBJC_IVAR____TtC15ConversationKit19LinkDetailViewModel__invitedMemberHandles;
  v50 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sShySo8TUHandleCGSgMd, &_sShySo8TUHandleCGSgMR);
  Published.init(initialValue:)();
  v41 = v8;
  v42 = v6;
  (*(v8 + 32))(v2 + v22, v11, v6);
  v23 = OBJC_IVAR____TtC15ConversationKit19LinkDetailViewModel__linkTitle;
  v50 = 0;
  v51 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v24 = v44;
  Published.init(initialValue:)();
  (*(v46 + 32))(v2 + v23, v24, v21);
  *(v2 + OBJC_IVAR____TtC15ConversationKit19LinkDetailViewModel_wantsCustomContactDetailsPresentation) = 0;
  v25 = v2 + OBJC_IVAR____TtC15ConversationKit19LinkDetailViewModel_delegate;
  *(v2 + OBJC_IVAR____TtC15ConversationKit19LinkDetailViewModel_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v26 = v45;
  RecentsCallItem.conversationLink.getter();
  v27 = v50;
  if (v50)
  {
    v29 = v51;
    v28 = v52;
    OUTLINED_FUNCTION_30_2(v2 + OBJC_IVAR____TtC15ConversationKit19LinkDetailViewModel__conversationLink, &v50);
    v47 = v27;
    v48 = v29;
    v49 = v28;
    v30 = v27;

    Published.init(initialValue:)();
    swift_endAccess();
    outlined init with copy of RecentsCallItem(v26, v2 + OBJC_IVAR____TtC15ConversationKit19LinkDetailViewModel_recentsCallItem);
    RecentsCallItem.tuHandles.getter();
    LinkDetailViewModel.invitedMemberHandles.setter(v31);
    v32 = (v26 + *(type metadata accessor for RecentsCallItem(0) + 20));
    v33 = *v32;
    v34 = v32[1];

    LinkDetailViewModel.linkTitle.setter(v33, v34);
    LinkDetailViewModel.validateEditingPermissions()();
    outlined consume of ConversationLink?(v27, v29, v28);
    outlined destroy of RecentsCallItem(v26);
  }

  else
  {
    outlined destroy of RecentsCallItem(v26);
    v35 = *(v40 + 8);
    v35(v2 + v39, v12);
    v35(v2 + v38, v12);
    (*(v41 + 8))(v2 + v22, v42);
    (*(v46 + 8))(v2 + v23, v21);
    outlined destroy of weak InCallControlsBaseCellDelegate?(v25);
    type metadata accessor for LinkDetailViewModel(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v2;
}

uint64_t type metadata accessor for LinkDetailViewModel(uint64_t a1)
{
  result = type metadata singleton initialization cache for LinkDetailViewModel;
  if (!type metadata singleton initialization cache for LinkDetailViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t LinkDetailViewModel.validateEditingPermissions()()
{
  (*(*v0 + 336))(&v4);
  v1 = v4;

  v2 = [v1 isLocallyCreated];

  LinkDetailViewModel.canRevokeLink.setter(v2);

  return LinkDetailViewModel.canShareLink.setter(1);
}

Swift::Void __swiftcall LinkDetailViewModel.joinCall()()
{
  if ((*(*v0 + 408))())
  {
    v2 = v1;
    ObjectType = swift_getObjectType();
    (*(v2 + 8))(v0, ObjectType, v2);

    swift_unknownObjectRelease();
  }
}

uint64_t LinkDetailViewModel.deinit()
{
  v1 = OBJC_IVAR____TtC15ConversationKit19LinkDetailViewModel__canRevokeLink;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  OUTLINED_FUNCTION_7_0();
  v4 = *(v3 + 8);
  v4(v0 + v1, v2);
  v4(v0 + OBJC_IVAR____TtC15ConversationKit19LinkDetailViewModel__canShareLink, v2);
  v5 = OBJC_IVAR____TtC15ConversationKit19LinkDetailViewModel__invitedMemberHandles;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVyShySo8TUHandleCGSgGMd, &_s7Combine9PublishedVyShySo8TUHandleCGSgGMR);
  OUTLINED_FUNCTION_7_0();
  (*(v6 + 8))(v0 + v5);
  v7 = OBJC_IVAR____TtC15ConversationKit19LinkDetailViewModel__linkTitle;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSSgGMd, &_s7Combine9PublishedVySSSgGMR);
  OUTLINED_FUNCTION_7_0();
  (*(v8 + 8))(v0 + v7);
  v9 = OBJC_IVAR____TtC15ConversationKit19LinkDetailViewModel__conversationLink;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15ConversationKit0C4LinkVGMd, &_s7Combine9PublishedVy15ConversationKit0C4LinkVGMR);
  OUTLINED_FUNCTION_7_0();
  (*(v10 + 8))(v0 + v9);
  outlined destroy of weak InCallControlsBaseCellDelegate?(v0 + OBJC_IVAR____TtC15ConversationKit19LinkDetailViewModel_delegate);
  outlined destroy of RecentsCallItem(v0 + OBJC_IVAR____TtC15ConversationKit19LinkDetailViewModel_recentsCallItem);
  return v0;
}

uint64_t LinkDetailViewModel.__deallocating_deinit()
{
  LinkDetailViewModel.deinit();

  return swift_deallocClassInstance();
}

void type metadata completion function for LinkDetailViewModel(uint64_t a1)
{
  type metadata accessor for Published<Bool>(319, &lazy cache variable for type metadata for Published<Bool>, MEMORY[0x1E69E6370]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Published<Set<TUHandle>?>(319, &lazy cache variable for type metadata for Published<Set<TUHandle>?>, &_sShySo8TUHandleCGSgMd, &_sShySo8TUHandleCGSgMR);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Published<Set<TUHandle>?>(319, &lazy cache variable for type metadata for Published<String?>, &_sSSSgMd, &_sSSSgMR);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Published<Bool>(319, &lazy cache variable for type metadata for Published<ConversationLink>, &type metadata for ConversationLink);
        if (v4 <= 0x3F)
        {
          type metadata accessor for RecentsCallItem(319);
          if (v5 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

uint64_t outlined assign with take of RecentsCallItem(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecentsCallItem(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t static InCallControlsMode.== infix(_:_:)(unsigned __int8 a1, unsigned __int8 a2)
{
  switch(a1 >> 5)
  {
    case 1:
      if ((a2 & 0xE0) != 0x20)
      {
        goto LABEL_23;
      }

      goto LABEL_13;
    case 2:
      if ((a2 & 0xE0) != 0x40)
      {
        goto LABEL_23;
      }

LABEL_13:
      v2 = a2 ^ a1 ^ 1;
      return v2 & 1;
    case 3:
      if (a1 == 96)
      {
        if (a2 == 96)
        {
          goto LABEL_21;
        }
      }

      else if (a2 == 97)
      {
        goto LABEL_21;
      }

      goto LABEL_23;
    case 4:
      if (a1 == 128)
      {
        if (a2 == 128)
        {
          goto LABEL_21;
        }

        goto LABEL_23;
      }

      if (a2 != 129)
      {
        goto LABEL_23;
      }

      goto LABEL_21;
    case 5:
      if (a1 == 160)
      {
        if (a2 == 160)
        {
          goto LABEL_21;
        }
      }

      else if (a2 == 161)
      {
        goto LABEL_21;
      }

      goto LABEL_23;
    case 6:
      if (a1 != 192)
      {
        if (a2 != 193)
        {
          goto LABEL_23;
        }

LABEL_21:
        v2 = 1;
        return v2 & 1;
      }

      if (a2 == 192)
      {
        goto LABEL_21;
      }

LABEL_23:
      v2 = 0;
      return v2 & 1;
    default:
      if (a2 >= 0x20u)
      {
        goto LABEL_23;
      }

      goto LABEL_21;
  }
}

unint64_t InCallControlsMode.debugDescription.getter(unsigned __int8 a1)
{
  v2 = a1 >> 5;
  result = 0x6C6C61436E692ELL;
  switch(v2)
  {
    case 1:
      _StringGuts.grow(_:)(20);

      v4 = 0xD000000000000011;
      goto LABEL_7;
    case 2:
      _StringGuts.grow(_:)(29);

      v4 = 0xD00000000000001ALL;
LABEL_7:
      v15 = v4;
      if (a1)
      {
        v9 = 1702195828;
      }

      else
      {
        v9 = 0x65736C6166;
      }

      if (a1)
      {
        v10 = 0xE400000000000000;
      }

      else
      {
        v10 = 0xE500000000000000;
      }

      MEMORY[0x1BFB20B10](v9, v10);

      MEMORY[0x1BFB20B10](41, 0xE100000000000000);
      result = v15;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      OUTLINED_FUNCTION_1_195();
      v7 = v6 | 3;
      if (v8 == 128)
      {
        result = v5;
      }

      else
      {
        result = v7;
      }

      break;
    case 5:
      if (a1 == 160)
      {
        result = 0xD000000000000014;
      }

      else
      {
        result = 0xD000000000000015;
      }

      break;
    case 6:
      OUTLINED_FUNCTION_1_195();
      v13 = v12 | 1;
      if (v14 == 192)
      {
        result = v13;
      }

      else
      {
        result = v11;
      }

      break;
    default:
      return result;
  }

  return result;
}