uint64_t storeEnumTagSinglePayload for SessionExtraControlsButton(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t SessionExtraControlsButton.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v49 = a1;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGMd, &_ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGMR);
  MEMORY[0x28223BE20](v40);
  v4 = &v40 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA6ZStackVyAA9TupleViewVyAA06_ShapeF0VyAA16RoundedRectangleVAA03AnyG5StyleVG_AA19_ConditionalContentVyAA08ModifiedM0VyARyARyAA6HStackVyAGyARyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtGGAA022_EnvironmentKeyWritingS0VyAA4FontVSgGGAA011_ForegroundkS0VyAA5ColorVGGAA07_HiddenS0VGA15_GAPyARyARyAA0F0PAAE08progressfK0yQrqd__AA08ProgressfK0Rd__lFQOyAA08ProgressF0VyAA05EmptyF0VA27_G_AA016CircularProgressfK0VQo_A4_yAA11ControlSizeOGGA17_GA35_GtGGGMd, &_s7SwiftUI6ButtonVyAA6ZStackVyAA9TupleViewVyAA06_ShapeF0VyAA16RoundedRectangleVAA03AnyG5StyleVG_AA19_ConditionalContentVyAA08ModifiedM0VyARyARyAA6HStackVyAGyARyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtGGAA022_EnvironmentKeyWritingS0VyAA4FontVSgGGAA011_ForegroundkS0VyAA5ColorVGGAA07_HiddenS0VGA15_GAPyARyARyAA0F0PAAE08progressfK0yQrqd__AA08ProgressfK0Rd__lFQOyAA08ProgressF0VyAA05EmptyF0VA27_G_AA016CircularProgressfK0VQo_A4_yAA11ControlSizeOGGA17_GA35_GtGGGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v40 - v7;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamiceF0O5BoundRtd__lFQOyAA6ButtonVyAA6ZStackVyAA05TupleC0VyAA06_ShapeC0VyAA16RoundedRectangleVAA03AnyL5StyleVG_AA19_ConditionalContentVyAA08ModifiedR0VyAYyAYyAA6HStackVyANyAYyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtGGAA022_EnvironmentKeyWritingX0VyAA4FontVSgGGAA011_ForegroundpX0VyAA5ColorVGGAA07_HiddenX0VGA22_GAWyAYyAYyAcAE08progresscP0yQrqd__AA08ProgresscP0Rd__lFQOyAA08ProgressC0VyAA05EmptyC0VA32_G_AA016CircularProgresscP0VQo_A11_yAA07ControlF0OGGA24_GA40_GtGGG_s19PartialRangeThroughVyAFGQo_Md, &_s7SwiftUI4ViewPAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamiceF0O5BoundRtd__lFQOyAA6ButtonVyAA6ZStackVyAA05TupleC0VyAA06_ShapeC0VyAA16RoundedRectangleVAA03AnyL5StyleVG_AA19_ConditionalContentVyAA08ModifiedR0VyAYyAYyAA6HStackVyANyAYyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtGGAA022_EnvironmentKeyWritingX0VyAA4FontVSgGGAA011_ForegroundpX0VyAA5ColorVGGAA07_HiddenX0VGA22_GAWyAYyAYyAcAE08progresscP0yQrqd__AA08ProgresscP0Rd__lFQOyAA08ProgressC0VyAA05EmptyC0VA32_G_AA016CircularProgresscP0VQo_A11_yAA07ControlF0OGGA24_GA40_GtGGG_s19PartialRangeThroughVyAFGQo_MR);
  v43 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v42 = &v40 - v9;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicgH0O5BoundRtd__lFQOyAA6ButtonVyAA6ZStackVyAA05TupleE0VyAA06_ShapeE0VyAA16RoundedRectangleVAA03AnyN5StyleVG_AA012_ConditionalD0VyACyACyACyAA6HStackVyAPyACyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtGGAA022_EnvironmentKeyWritingX0VyAA4FontVSgGGAA011_ForegroundrX0VyAA5ColorVGGAA07_HiddenX0VGA22_GAYyACyACyAeAE08progresseR0yQrqd__AA08ProgresseR0Rd__lFQOyAA08ProgressE0VyAA05EmptyE0VA32_G_AA016CircularProgresseR0VQo_A11_yAA07ControlH0OGGA24_GA40_GtGGG_s19PartialRangeThroughVyAHGQo_AA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicgH0O5BoundRtd__lFQOyAA6ButtonVyAA6ZStackVyAA05TupleE0VyAA06_ShapeE0VyAA16RoundedRectangleVAA03AnyN5StyleVG_AA012_ConditionalD0VyACyACyACyAA6HStackVyAPyACyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtGGAA022_EnvironmentKeyWritingX0VyAA4FontVSgGGAA011_ForegroundrX0VyAA5ColorVGGAA07_HiddenX0VGA22_GAYyACyACyAeAE08progresseR0yQrqd__AA08ProgresseR0Rd__lFQOyAA08ProgressE0VyAA05EmptyE0VA32_G_AA016CircularProgresseR0VQo_A11_yAA07ControlH0OGGA24_GA40_GtGGG_s19PartialRangeThroughVyAHGQo_AA12_FrameLayoutVGMR);
  MEMORY[0x28223BE20](v41);
  v11 = &v40 - v10;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicgH0O5BoundRtd__lFQOyAA6ButtonVyAA6ZStackVyAA05TupleE0VyAA06_ShapeE0VyAA16RoundedRectangleVAA03AnyN5StyleVG_AA012_ConditionalD0VyACyACyACyAA6HStackVyAPyACyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtGGAA022_EnvironmentKeyWritingX0VyAA4FontVSgGGAA011_ForegroundrX0VyAA5ColorVGGAA07_HiddenX0VGA22_GAYyACyACyAeAE08progresseR0yQrqd__AA08ProgresseR0Rd__lFQOyAA08ProgressE0VyAA05EmptyE0VA32_G_AA016CircularProgresseR0VQo_A11_yAA07ControlH0OGGA24_GA40_GtGGG_s19PartialRangeThroughVyAHGQo_AA12_FrameLayoutVGA21_GMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicgH0O5BoundRtd__lFQOyAA6ButtonVyAA6ZStackVyAA05TupleE0VyAA06_ShapeE0VyAA16RoundedRectangleVAA03AnyN5StyleVG_AA012_ConditionalD0VyACyACyACyAA6HStackVyAPyACyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtGGAA022_EnvironmentKeyWritingX0VyAA4FontVSgGGAA011_ForegroundrX0VyAA5ColorVGGAA07_HiddenX0VGA22_GAYyACyACyAeAE08progresseR0yQrqd__AA08ProgresseR0Rd__lFQOyAA08ProgressE0VyAA05EmptyE0VA32_G_AA016CircularProgresseR0VQo_A11_yAA07ControlH0OGGA24_GA40_GtGGG_s19PartialRangeThroughVyAHGQo_AA12_FrameLayoutVGA21_GMR);
  MEMORY[0x28223BE20](v45);
  v47 = &v40 - v12;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicgH0O5BoundRtd__lFQOyAA6ButtonVyAA6ZStackVyAA05TupleE0VyAA06_ShapeE0VyAA16RoundedRectangleVAA03AnyN5StyleVG_AA012_ConditionalD0VyACyACyACyAA6HStackVyAPyACyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtGGAA022_EnvironmentKeyWritingX0VyAA4FontVSgGGAA011_ForegroundrX0VyAA5ColorVGGAA07_HiddenX0VGA22_GAYyACyACyAeAE08progresseR0yQrqd__AA08ProgresseR0Rd__lFQOyAA08ProgressE0VyAA05EmptyE0VA32_G_AA016CircularProgresseR0VQo_A11_yAA07ControlH0OGGA24_GA40_GtGGG_s19PartialRangeThroughVyAHGQo_AA12_FrameLayoutVGA21_GAA01_z12KeyTransformX0VySbGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicgH0O5BoundRtd__lFQOyAA6ButtonVyAA6ZStackVyAA05TupleE0VyAA06_ShapeE0VyAA16RoundedRectangleVAA03AnyN5StyleVG_AA012_ConditionalD0VyACyACyACyAA6HStackVyAPyACyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtGGAA022_EnvironmentKeyWritingX0VyAA4FontVSgGGAA011_ForegroundrX0VyAA5ColorVGGAA07_HiddenX0VGA22_GAYyACyACyAeAE08progresseR0yQrqd__AA08ProgresseR0Rd__lFQOyAA08ProgressE0VyAA05EmptyE0VA32_G_AA016CircularProgresseR0VQo_A11_yAA07ControlH0OGGA24_GA40_GtGGG_s19PartialRangeThroughVyAHGQo_AA12_FrameLayoutVGA21_GAA01_z12KeyTransformX0VySbGGMR);
  MEMORY[0x28223BE20](v46);
  v48 = &v40 - v13;
  v14 = swift_allocObject();
  v15 = *(v1 + 48);
  *(v14 + 48) = *(v1 + 32);
  *(v14 + 64) = v15;
  *(v14 + 80) = *(v1 + 64);
  v16 = *(v1 + 16);
  *(v14 + 16) = *v1;
  *(v14 + 32) = v16;
  v50 = v1;
  outlined init with copy of SessionExtraControlsButton(v1, v52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ZStackVyAA9TupleViewVyAA06_ShapeE0VyAA16RoundedRectangleVAA03AnyF5StyleVG_AA19_ConditionalContentVyAA08ModifiedL0VyAPyAPyAA6HStackVyAEyAPyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtGGAA022_EnvironmentKeyWritingR0VyAA4FontVSgGGAA011_ForegroundjR0VyAA5ColorVGGAA07_HiddenR0VGA13_GANyAPyAPyAA0E0PAAE08progresseJ0yQrqd__AA08ProgresseJ0Rd__lFQOyAA08ProgressE0VyAA05EmptyE0VA25_G_AA016CircularProgresseJ0VQo_A2_yAA11ControlSizeOGGA15_GA33_GtGGMd, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA06_ShapeE0VyAA16RoundedRectangleVAA03AnyF5StyleVG_AA19_ConditionalContentVyAA08ModifiedL0VyAPyAPyAA6HStackVyAEyAPyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtGGAA022_EnvironmentKeyWritingR0VyAA4FontVSgGGAA011_ForegroundjR0VyAA5ColorVGGAA07_HiddenR0VGA13_GANyAPyAPyAA0E0PAAE08progresseJ0yQrqd__AA08ProgresseJ0Rd__lFQOyAA08ProgressE0VyAA05EmptyE0VA25_G_AA016CircularProgresseJ0VQo_A2_yAA11ControlSizeOGGA15_GA33_GtGGMR);
  lazy protocol witness table accessor for type ZStack<TupleView<(_ShapeView<RoundedRectangle, AnyShapeStyle>, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _HiddenModifier>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>>, _ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _HiddenModifier>, ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>>)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type ZStack<TupleView<(_ShapeView<RoundedRectangle, AnyShapeStyle>, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _HiddenModifier>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>>, _ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _HiddenModifier>, ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>>)>> and conformance ZStack<A>, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA06_ShapeE0VyAA16RoundedRectangleVAA03AnyF5StyleVG_AA19_ConditionalContentVyAA08ModifiedL0VyAPyAPyAA6HStackVyAEyAPyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtGGAA022_EnvironmentKeyWritingR0VyAA4FontVSgGGAA011_ForegroundjR0VyAA5ColorVGGAA07_HiddenR0VGA13_GANyAPyAPyAA0E0PAAE08progresseJ0yQrqd__AA08ProgresseJ0Rd__lFQOyAA08ProgressE0VyAA05EmptyE0VA25_G_AA016CircularProgresseJ0VQo_A2_yAA11ControlSizeOGGA15_GA33_GtGGMd, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA06_ShapeE0VyAA16RoundedRectangleVAA03AnyF5StyleVG_AA19_ConditionalContentVyAA08ModifiedL0VyAPyAPyAA6HStackVyAEyAPyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtGGAA022_EnvironmentKeyWritingR0VyAA4FontVSgGGAA011_ForegroundjR0VyAA5ColorVGGAA07_HiddenR0VGA13_GANyAPyAPyAA0E0PAAE08progresseJ0yQrqd__AA08ProgresseJ0Rd__lFQOyAA08ProgressE0VyAA05EmptyE0VA25_G_AA016CircularProgresseJ0VQo_A2_yAA11ControlSizeOGGA15_GA33_GtGGMR, MEMORY[0x277CE11A8]);
  Button.init(action:label:)();
  v17 = *MEMORY[0x277CDF9D8];
  v18 = type metadata accessor for DynamicTypeSize();
  (*(*(v18 - 8) + 104))(v4, v17, v18);
  _s7SwiftUI15DynamicTypeSizeOACSQAAWlTm_0(&lazy protocol witness table cache variable for type DynamicTypeSize and conformance DynamicTypeSize, MEMORY[0x277CDFA28], MEMORY[0x277CDFA48]);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    lazy protocol witness table accessor for type ZStack<TupleView<(_ShapeView<RoundedRectangle, AnyShapeStyle>, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _HiddenModifier>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>>, _ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _HiddenModifier>, ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>>)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type Button<ZStack<TupleView<(_ShapeView<RoundedRectangle, AnyShapeStyle>, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _HiddenModifier>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>>, _ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _HiddenModifier>, ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>>)>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA6ZStackVyAA9TupleViewVyAA06_ShapeF0VyAA16RoundedRectangleVAA03AnyG5StyleVG_AA19_ConditionalContentVyAA08ModifiedM0VyARyARyAA6HStackVyAGyARyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtGGAA022_EnvironmentKeyWritingS0VyAA4FontVSgGGAA011_ForegroundkS0VyAA5ColorVGGAA07_HiddenS0VGA15_GAPyARyARyAA0F0PAAE08progressfK0yQrqd__AA08ProgressfK0Rd__lFQOyAA08ProgressF0VyAA05EmptyF0VA27_G_AA016CircularProgressfK0VQo_A4_yAA11ControlSizeOGGA17_GA35_GtGGGMd, &_s7SwiftUI6ButtonVyAA6ZStackVyAA9TupleViewVyAA06_ShapeF0VyAA16RoundedRectangleVAA03AnyG5StyleVG_AA19_ConditionalContentVyAA08ModifiedM0VyARyARyAA6HStackVyAGyARyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtGGAA022_EnvironmentKeyWritingS0VyAA4FontVSgGGAA011_ForegroundkS0VyAA5ColorVGGAA07_HiddenS0VGA15_GAPyARyARyAA0F0PAAE08progressfK0yQrqd__AA08ProgressfK0Rd__lFQOyAA08ProgressF0VyAA05EmptyF0VA27_G_AA016CircularProgressfK0VQo_A4_yAA11ControlSizeOGGA17_GA35_GtGGGMR, MEMORY[0x277CDF028]);
    lazy protocol witness table accessor for type ZStack<TupleView<(_ShapeView<RoundedRectangle, AnyShapeStyle>, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _HiddenModifier>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>>, _ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _HiddenModifier>, ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>>)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type PartialRangeThrough<DynamicTypeSize> and conformance PartialRangeThrough<A>, &_ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGMd, &_ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGMR, MEMORY[0x277D84470]);
    v20 = v42;
    View.dynamicTypeSize<A>(_:)();
    _ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGWOhTm_0(v4, &_ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGMd, &_ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGMR);
    (*(v6 + 8))(v8, v5);

    v21 = objc_opt_self();
    v22 = [v21 mainScreen];
    [v22 scale];

    v23 = [v21 mainScreen];
    [v23 nativeScale];

    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    (*(v43 + 32))(v11, v20, v44);
    v24 = &v11[*(v41 + 36)];
    v25 = v52[1];
    *v24 = v52[0];
    *(v24 + 1) = v25;
    *(v24 + 2) = v52[2];
    v26 = *(v2 + 49);
    if (v26 == 1)
    {
      static Color.white.getter();
      v27 = Color.opacity(_:)();
    }

    else
    {
      v51 = *(v2 + 32);
      lazy protocol witness table accessor for type Color and conformance Color();

      v27 = Color.init<A>(_:)();
    }

    v28 = v47;
    outlined init with take of ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, _FrameLayout>(v11, v47, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicgH0O5BoundRtd__lFQOyAA6ButtonVyAA6ZStackVyAA05TupleE0VyAA06_ShapeE0VyAA16RoundedRectangleVAA03AnyN5StyleVG_AA012_ConditionalD0VyACyACyACyAA6HStackVyAPyACyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtGGAA022_EnvironmentKeyWritingX0VyAA4FontVSgGGAA011_ForegroundrX0VyAA5ColorVGGAA07_HiddenX0VGA22_GAYyACyACyAeAE08progresseR0yQrqd__AA08ProgresseR0Rd__lFQOyAA08ProgressE0VyAA05EmptyE0VA32_G_AA016CircularProgresseR0VQo_A11_yAA07ControlH0OGGA24_GA40_GtGGG_s19PartialRangeThroughVyAHGQo_AA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicgH0O5BoundRtd__lFQOyAA6ButtonVyAA6ZStackVyAA05TupleE0VyAA06_ShapeE0VyAA16RoundedRectangleVAA03AnyN5StyleVG_AA012_ConditionalD0VyACyACyACyAA6HStackVyAPyACyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtGGAA022_EnvironmentKeyWritingX0VyAA4FontVSgGGAA011_ForegroundrX0VyAA5ColorVGGAA07_HiddenX0VGA22_GAYyACyACyAeAE08progresseR0yQrqd__AA08ProgresseR0Rd__lFQOyAA08ProgressE0VyAA05EmptyE0VA32_G_AA016CircularProgresseR0VQo_A11_yAA07ControlH0OGGA24_GA40_GtGGG_s19PartialRangeThroughVyAHGQo_AA12_FrameLayoutVGMR);
    *(v28 + *(v45 + 36)) = v27;
    KeyPath = swift_getKeyPath();
    v30 = swift_allocObject();
    *(v30 + 16) = v26;
    v31 = v48;
    outlined init with take of ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, _FrameLayout>(v28, v48, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicgH0O5BoundRtd__lFQOyAA6ButtonVyAA6ZStackVyAA05TupleE0VyAA06_ShapeE0VyAA16RoundedRectangleVAA03AnyN5StyleVG_AA012_ConditionalD0VyACyACyACyAA6HStackVyAPyACyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtGGAA022_EnvironmentKeyWritingX0VyAA4FontVSgGGAA011_ForegroundrX0VyAA5ColorVGGAA07_HiddenX0VGA22_GAYyACyACyAeAE08progresseR0yQrqd__AA08ProgresseR0Rd__lFQOyAA08ProgressE0VyAA05EmptyE0VA32_G_AA016CircularProgresseR0VQo_A11_yAA07ControlH0OGGA24_GA40_GtGGG_s19PartialRangeThroughVyAHGQo_AA12_FrameLayoutVGA21_GMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicgH0O5BoundRtd__lFQOyAA6ButtonVyAA6ZStackVyAA05TupleE0VyAA06_ShapeE0VyAA16RoundedRectangleVAA03AnyN5StyleVG_AA012_ConditionalD0VyACyACyACyAA6HStackVyAPyACyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtGGAA022_EnvironmentKeyWritingX0VyAA4FontVSgGGAA011_ForegroundrX0VyAA5ColorVGGAA07_HiddenX0VGA22_GAYyACyACyAeAE08progresseR0yQrqd__AA08ProgresseR0Rd__lFQOyAA08ProgressE0VyAA05EmptyE0VA32_G_AA016CircularProgresseR0VQo_A11_yAA07ControlH0OGGA24_GA40_GtGGG_s19PartialRangeThroughVyAHGQo_AA12_FrameLayoutVGA21_GMR);
    v32 = (v31 + *(v46 + 36));
    *v32 = KeyPath;
    v32[1] = _s7SwiftUI4ViewPAAE8disabledyQrSbFySbzcfU_TA_21;
    v32[2] = v30;
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicgH0O5BoundRtd__lFQOyAA6ButtonVyAA6ZStackVyAA05TupleE0VyAA06_ShapeE0VyAA16RoundedRectangleVAA03AnyN5StyleVG_AA012_ConditionalD0VyACyACyACyAA6HStackVyAPyACyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtGGAA022_EnvironmentKeyWritingX0VyAA4FontVSgGGAA011_ForegroundrX0VyAA5ColorVGGAA07_HiddenX0VGA22_GAYyACyACyAeAE08progresseR0yQrqd__AA08ProgresseR0Rd__lFQOyAA08ProgressE0VyAA05EmptyE0VA32_G_AA016CircularProgresseR0VQo_A11_yAA07ControlH0OGGA24_GA40_GtGGG_s19PartialRangeThroughVyAHGQo_AA12_FrameLayoutVGA21_GAA01_z12KeyTransformX0VySbGGAA01_dn4KindX0VyATGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicgH0O5BoundRtd__lFQOyAA6ButtonVyAA6ZStackVyAA05TupleE0VyAA06_ShapeE0VyAA16RoundedRectangleVAA03AnyN5StyleVG_AA012_ConditionalD0VyACyACyACyAA6HStackVyAPyACyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtGGAA022_EnvironmentKeyWritingX0VyAA4FontVSgGGAA011_ForegroundrX0VyAA5ColorVGGAA07_HiddenX0VGA22_GAYyACyACyAeAE08progresseR0yQrqd__AA08ProgresseR0Rd__lFQOyAA08ProgressE0VyAA05EmptyE0VA32_G_AA016CircularProgresseR0VQo_A11_yAA07ControlH0OGGA24_GA40_GtGGG_s19PartialRangeThroughVyAHGQo_AA12_FrameLayoutVGA21_GAA01_z12KeyTransformX0VySbGGAA01_dn4KindX0VyATGGMR);
    v34 = v49;
    v35 = (v49 + *(v33 + 36));
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI25_ContentShapeKindModifierVyAA16RoundedRectangleVGMd, &_s7SwiftUI25_ContentShapeKindModifierVyAA16RoundedRectangleVGMR);
    static ContentShapeKinds.accessibility.getter();
    v37 = *(type metadata accessor for RoundedRectangle() + 20);
    v38 = *MEMORY[0x277CE0118];
    v39 = type metadata accessor for RoundedCornerStyle();
    (*(*(v39 - 8) + 104))(&v35->i8[v37], v38, v39);
    *v35 = vdupq_n_s64(0x7FF0000000000000uLL);
    v35->i8[*(v36 + 36)] = 0;
    return outlined init with take of ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, _FrameLayout>(v31, v34, &_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicgH0O5BoundRtd__lFQOyAA6ButtonVyAA6ZStackVyAA05TupleE0VyAA06_ShapeE0VyAA16RoundedRectangleVAA03AnyN5StyleVG_AA012_ConditionalD0VyACyACyACyAA6HStackVyAPyACyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtGGAA022_EnvironmentKeyWritingX0VyAA4FontVSgGGAA011_ForegroundrX0VyAA5ColorVGGAA07_HiddenX0VGA22_GAYyACyACyAeAE08progresseR0yQrqd__AA08ProgresseR0Rd__lFQOyAA08ProgressE0VyAA05EmptyE0VA32_G_AA016CircularProgresseR0VQo_A11_yAA07ControlH0OGGA24_GA40_GtGGG_s19PartialRangeThroughVyAHGQo_AA12_FrameLayoutVGA21_GAA01_z12KeyTransformX0VySbGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicgH0O5BoundRtd__lFQOyAA6ButtonVyAA6ZStackVyAA05TupleE0VyAA06_ShapeE0VyAA16RoundedRectangleVAA03AnyN5StyleVG_AA012_ConditionalD0VyACyACyACyAA6HStackVyAPyACyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtGGAA022_EnvironmentKeyWritingX0VyAA4FontVSgGGAA011_ForegroundrX0VyAA5ColorVGGAA07_HiddenX0VGA22_GAYyACyACyAeAE08progresseR0yQrqd__AA08ProgresseR0Rd__lFQOyAA08ProgressE0VyAA05EmptyE0VA32_G_AA016CircularProgresseR0VQo_A11_yAA07ControlH0OGGA24_GA40_GtGGG_s19PartialRangeThroughVyAHGQo_AA12_FrameLayoutVGA21_GAA01_z12KeyTransformX0VySbGGMR);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #2 in SessionExtraControlsButton.body.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = static HorizontalAlignment.center.getter();
  v5 = static VerticalAlignment.firstTextLineCenter.getter();
  *a2 = v4;
  a2[1] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA05TupleD0VyAA06_ShapeD0VyAA16RoundedRectangleVAA03AnyI5StyleVG_AA19_ConditionalContentVyAA08ModifiedO0VyATyATyAA6HStackVyAIyATyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtGGAA022_EnvironmentKeyWritingU0VyAA4FontVSgGGAA011_ForegroundmU0VyAA5ColorVGGAA07_HiddenU0VGA17_GARyATyATyAA0D0PAAE08progressdM0yQrqd__AA08ProgressdM0Rd__lFQOyAA08ProgressD0VyAA05EmptyD0VA29_G_AA016CircularProgressdM0VQo_A6_yAA11ControlSizeOGGA19_GA37_GtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA05TupleD0VyAA06_ShapeD0VyAA16RoundedRectangleVAA03AnyI5StyleVG_AA19_ConditionalContentVyAA08ModifiedO0VyATyATyAA6HStackVyAIyATyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtGGAA022_EnvironmentKeyWritingU0VyAA4FontVSgGGAA011_ForegroundmU0VyAA5ColorVGGAA07_HiddenU0VGA17_GARyATyATyAA0D0PAAE08progressdM0yQrqd__AA08ProgressdM0Rd__lFQOyAA08ProgressD0VyAA05EmptyD0VA29_G_AA016CircularProgressdM0VQo_A6_yAA11ControlSizeOGGA19_GA37_GtGGMR);
  return closure #1 in closure #2 in SessionExtraControlsButton.body.getter(a1, a2 + *(v6 + 44));
}

uint64_t closure #1 in closure #2 in SessionExtraControlsButton.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a1;
  v106 = a2;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGyAA4ViewPAAE08progressG5StyleyQrqd__AA08ProgressgI0Rd__lFQOyAA0jG0VyAA05EmptyG0VAOG_AA08CircularjgI0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGAA07_HiddenP0VGAY_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGyAA4ViewPAAE08progressG5StyleyQrqd__AA08ProgressgI0Rd__lFQOyAA0jG0VyAA05EmptyG0VAOG_AA08CircularjgI0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGAA07_HiddenP0VGAY_GMR);
  MEMORY[0x28223BE20](v102);
  v105 = &v79 - v2;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE08progressE5StyleyQrqd__AA08ProgresseG0Rd__lFQOyAA0hE0VyAA05EmptyE0VAKG_AA08CircularheG0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGAA07_HiddenN0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE08progressE5StyleyQrqd__AA08ProgresseG0Rd__lFQOyAA0hE0VyAA05EmptyE0VAKG_AA08CircularheG0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGAA07_HiddenN0VGMR);
  MEMORY[0x28223BE20](v104);
  v80 = &v79 - v3;
  v99 = type metadata accessor for CircularProgressViewStyle();
  v97 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v94 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12ProgressViewVyAA05EmptyD0VAEGMd, &_s7SwiftUI12ProgressViewVyAA05EmptyD0VAEGMR);
  v92 = *(v5 - 8);
  v93 = v5;
  MEMORY[0x28223BE20](v5);
  v110 = &v79 - v6;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE08progressC5StyleyQrqd__AA08ProgresscE0Rd__lFQOyAA0fC0VyAA05EmptyC0VAIG_AA08CircularfcE0VQo_Md, &_s7SwiftUI4ViewPAAE08progressC5StyleyQrqd__AA08ProgresscE0Rd__lFQOyAA0fC0VyAA05EmptyC0VAIG_AA08CircularfcE0VQo_MR);
  v96 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v95 = &v79 - v7;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE08progressE5StyleyQrqd__AA08ProgresseG0Rd__lFQOyAA0hE0VyAA05EmptyE0VAKG_AA08CircularheG0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE08progressE5StyleyQrqd__AA08ProgresseG0Rd__lFQOyAA0hE0VyAA05EmptyE0VAKG_AA08CircularheG0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGMR);
  MEMORY[0x28223BE20](v100);
  v101 = &v79 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA4ViewPAAE08progressF5StyleyQrqd__AA08ProgressfH0Rd__lFQOyAA0iF0VyAA05EmptyF0VAMG_AA08CircularifH0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGAA07_HiddenO0VGAWGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA4ViewPAAE08progressF5StyleyQrqd__AA08ProgressfH0Rd__lFQOyAA0iF0VyAA05EmptyF0VAMG_AA08CircularifH0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGAA07_HiddenO0VGAWGMR);
  MEMORY[0x28223BE20](v9 - 8);
  v103 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v108 = &v79 - v12;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGyAGyAA6HStackVyAA9TupleViewVyAGyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtGGAA022_EnvironmentKeyWritingM0VyAA4FontVSgGGAA016_ForegroundStyleM0VyAA5ColorVGGAA07_HiddenM0VGA6__GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGyAGyAA6HStackVyAA9TupleViewVyAGyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtGGAA022_EnvironmentKeyWritingM0VyAA4FontVSgGGAA016_ForegroundStyleM0VyAA5ColorVGGAA07_HiddenM0VGA6__GMR);
  MEMORY[0x28223BE20](v86);
  v88 = &v79 - v13;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyACyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtGGAA022_EnvironmentKeyWritingK0VyAA4FontVSgGGAA016_ForegroundStyleK0VyAA5ColorVGGAA07_HiddenK0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyACyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtGGAA022_EnvironmentKeyWritingK0VyAA4FontVSgGGAA016_ForegroundStyleK0VyAA5ColorVGGAA07_HiddenK0VGMR);
  MEMORY[0x28223BE20](v87);
  v79 = &v79 - v14;
  v83 = type metadata accessor for Font.Leading();
  v82 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v16 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v79 - v18;
  v81 = type metadata accessor for Font.TextStyle();
  v20 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v22 = &v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtGGAA022_EnvironmentKeyWritingK0VyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtGGAA022_EnvironmentKeyWritingK0VyAA4FontVSgGGMR);
  v24 = v23 - 8;
  MEMORY[0x28223BE20](v23);
  v26 = &v79 - v25;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtGGAA022_EnvironmentKeyWritingK0VyAA4FontVSgGGAA016_ForegroundStyleK0VyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtGGAA022_EnvironmentKeyWritingK0VyAA4FontVSgGGAA016_ForegroundStyleK0VyAA5ColorVGGMR);
  MEMORY[0x28223BE20](v84);
  v107 = &v79 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAA6HStackVyAA9TupleViewVyAEyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtGGAA022_EnvironmentKeyWritingL0VyAA4FontVSgGGAA016_ForegroundStyleL0VyAA5ColorVGGAA07_HiddenL0VGA4_GMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAA6HStackVyAA9TupleViewVyAEyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtGGAA022_EnvironmentKeyWritingL0VyAA4FontVSgGGAA016_ForegroundStyleL0VyAA5ColorVGGAA07_HiddenL0VGA4_GMR);
  MEMORY[0x28223BE20](v28 - 8);
  v91 = &v79 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v109 = &v79 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA03AnyC5StyleVGMd, &_s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA03AnyC5StyleVGMR);
  v33 = v32 - 8;
  MEMORY[0x28223BE20](v32);
  v90 = &v79 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v37 = (&v79 - v36);
  v38 = *(type metadata accessor for RoundedRectangle() + 20);
  v39 = *MEMORY[0x277CE0118];
  v40 = type metadata accessor for RoundedCornerStyle();
  (*(*(v40 - 8) + 104))(&v37->i8[v38], v39, v40);
  *v37 = vdupq_n_s64(0x7FF0000000000000uLL);
  v41 = v85;
  *(v37->i64 + *(v33 + 60)) = *(v85 + 40);
  v42 = *(v33 + 64);
  v89 = v37;
  *(v37->i16 + v42) = 256;

  *v26 = static VerticalAlignment.firstTextBaseline.getter();
  *(v26 + 1) = 0;
  v26[16] = 1;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtGGMR);
  v44 = v41;
  closure #1 in closure #1 in closure #2 in SessionExtraControlsButton.body.getter(v41, &v26[*(v43 + 44)]);
  v45 = v81;
  (*(v20 + 104))(v22, *MEMORY[0x277CE0A70], v81);
  v46 = type metadata accessor for Font.Design();
  (*(*(v46 - 8) + 56))(v19, 1, 1, v46);
  static Font.Weight.medium.getter();
  static Font.system(_:design:weight:)();
  _ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGWOhTm_0(v19, &_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  (*(v20 + 8))(v22, v45);
  v47 = v82;
  v48 = v83;
  (*(v82 + 104))(v16, *MEMORY[0x277CE0A10], v83);
  v49 = Font.leading(_:)();

  (*(v47 + 8))(v16, v48);
  KeyPath = swift_getKeyPath();
  v51 = &v26[*(v24 + 44)];
  *v51 = KeyPath;
  v51[1] = v49;
  v52 = *(v44 + 49);
  if (v52)
  {
    static Color.white.getter();
    v53 = Color.opacity(_:)();
  }

  else
  {
    v111 = v44[4];
    lazy protocol witness table accessor for type Color and conformance Color();

    v53 = Color.init<A>(_:)();
  }

  v54 = v107;
  outlined init with take of ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>(v26, v107, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtGGAA022_EnvironmentKeyWritingK0VyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtGGAA022_EnvironmentKeyWritingK0VyAA4FontVSgGGMR);
  *(v54 + *(v84 + 36)) = v53;
  v55 = v108;
  v56 = v100;
  v57 = v101;
  LODWORD(v83) = *(v44 + 48);
  if (v83)
  {
    v58 = v79;
    outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>(v54, v79, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtGGAA022_EnvironmentKeyWritingK0VyAA4FontVSgGGAA016_ForegroundStyleK0VyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtGGAA022_EnvironmentKeyWritingK0VyAA4FontVSgGGAA016_ForegroundStyleK0VyAA5ColorVGGMR);
    outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>(v58, v88, &_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyACyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtGGAA022_EnvironmentKeyWritingK0VyAA4FontVSgGGAA016_ForegroundStyleK0VyAA5ColorVGGAA07_HiddenK0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyACyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtGGAA022_EnvironmentKeyWritingK0VyAA4FontVSgGGAA016_ForegroundStyleK0VyAA5ColorVGGAA07_HiddenK0VGMR);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _HiddenModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _HiddenModifier> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyACyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtGGAA022_EnvironmentKeyWritingK0VyAA4FontVSgGGAA016_ForegroundStyleK0VyAA5ColorVGGAA07_HiddenK0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyACyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtGGAA022_EnvironmentKeyWritingK0VyAA4FontVSgGGAA016_ForegroundStyleK0VyAA5ColorVGGAA07_HiddenK0VGMR, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
    v54 = v107;
    _ConditionalContent<>.init(storage:)();
    v59 = v58;
    v55 = v108;
    _ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGWOhTm_0(v59, &_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyACyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtGGAA022_EnvironmentKeyWritingK0VyAA4FontVSgGGAA016_ForegroundStyleK0VyAA5ColorVGGAA07_HiddenK0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyACyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtGGAA022_EnvironmentKeyWritingK0VyAA4FontVSgGGAA016_ForegroundStyleK0VyAA5ColorVGGAA07_HiddenK0VGMR);
  }

  else
  {
    outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>(v54, v88, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtGGAA022_EnvironmentKeyWritingK0VyAA4FontVSgGGAA016_ForegroundStyleK0VyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtGGAA022_EnvironmentKeyWritingK0VyAA4FontVSgGGAA016_ForegroundStyleK0VyAA5ColorVGGMR);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _HiddenModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _HiddenModifier> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyACyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtGGAA022_EnvironmentKeyWritingK0VyAA4FontVSgGGAA016_ForegroundStyleK0VyAA5ColorVGGAA07_HiddenK0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyACyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtGGAA022_EnvironmentKeyWritingK0VyAA4FontVSgGGAA016_ForegroundStyleK0VyAA5ColorVGGAA07_HiddenK0VGMR, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
  }

  _ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGWOhTm_0(v54, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtGGAA022_EnvironmentKeyWritingK0VyAA4FontVSgGGAA016_ForegroundStyleK0VyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtGGAA022_EnvironmentKeyWritingK0VyAA4FontVSgGGAA016_ForegroundStyleK0VyAA5ColorVGGMR);
  ProgressView<>.init<>()();
  if (v52)
  {
    static Color.white.getter();
    Color.opacity(_:)();
  }

  else
  {
    v111 = v44[4];
    lazy protocol witness table accessor for type Color and conformance Color();

    Color.init<A>(_:)();
  }

  v60 = v94;
  CircularProgressViewStyle.init(tint:)();
  lazy protocol witness table accessor for type ZStack<TupleView<(_ShapeView<RoundedRectangle, AnyShapeStyle>, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _HiddenModifier>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>>, _ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _HiddenModifier>, ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>>)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type ProgressView<EmptyView, EmptyView> and conformance ProgressView<A, B>, &_s7SwiftUI12ProgressViewVyAA05EmptyD0VAEGMd, &_s7SwiftUI12ProgressViewVyAA05EmptyD0VAEGMR, MEMORY[0x277CDD7F8]);
  _s7SwiftUI15DynamicTypeSizeOACSQAAWlTm_0(&lazy protocol witness table cache variable for type CircularProgressViewStyle and conformance CircularProgressViewStyle, MEMORY[0x277CDE330], MEMORY[0x277CDE318]);
  v61 = v95;
  v62 = v93;
  v63 = v99;
  v64 = v110;
  View.progressViewStyle<A>(_:)();
  (*(v97 + 8))(v60, v63);
  (*(v92 + 8))(v64, v62);
  v65 = (v57 + *(v56 + 36));
  v66 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGMR) + 28);
  v67 = *MEMORY[0x277CDF420];
  v68 = type metadata accessor for ControlSize();
  (*(*(v68 - 8) + 104))(v65 + v66, v67, v68);
  *v65 = swift_getKeyPath();
  (*(v96 + 32))(v57, v61, v98);
  if (v83)
  {
    outlined init with copy of ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>(v57, v105, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE08progressE5StyleyQrqd__AA08ProgresseG0Rd__lFQOyAA0hE0VyAA05EmptyE0VAKG_AA08CircularheG0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE08progressE5StyleyQrqd__AA08ProgresseG0Rd__lFQOyAA0hE0VyAA05EmptyE0VAKG_AA08CircularheG0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGMR);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _HiddenModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _HiddenModifier> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE08progressE5StyleyQrqd__AA08ProgresseG0Rd__lFQOyAA0hE0VyAA05EmptyE0VAKG_AA08CircularheG0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGAA07_HiddenN0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE08progressE5StyleyQrqd__AA08ProgresseG0Rd__lFQOyAA0hE0VyAA05EmptyE0VAKG_AA08CircularheG0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGAA07_HiddenN0VGMR, lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>> and conformance <> ModifiedContent<A, B>);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v69 = v80;
    outlined init with copy of ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>(v57, v80, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE08progressE5StyleyQrqd__AA08ProgresseG0Rd__lFQOyAA0hE0VyAA05EmptyE0VAKG_AA08CircularheG0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE08progressE5StyleyQrqd__AA08ProgresseG0Rd__lFQOyAA0hE0VyAA05EmptyE0VAKG_AA08CircularheG0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGMR);
    outlined init with copy of ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>(v69, v105, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE08progressE5StyleyQrqd__AA08ProgresseG0Rd__lFQOyAA0hE0VyAA05EmptyE0VAKG_AA08CircularheG0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGAA07_HiddenN0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE08progressE5StyleyQrqd__AA08ProgresseG0Rd__lFQOyAA0hE0VyAA05EmptyE0VAKG_AA08CircularheG0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGAA07_HiddenN0VGMR);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _HiddenModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _HiddenModifier> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE08progressE5StyleyQrqd__AA08ProgresseG0Rd__lFQOyAA0hE0VyAA05EmptyE0VAKG_AA08CircularheG0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGAA07_HiddenN0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE08progressE5StyleyQrqd__AA08ProgresseG0Rd__lFQOyAA0hE0VyAA05EmptyE0VAKG_AA08CircularheG0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGAA07_HiddenN0VGMR, lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>> and conformance <> ModifiedContent<A, B>);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    outlined destroy of ModifiedContent<ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _HiddenModifier>(v69, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE08progressE5StyleyQrqd__AA08ProgresseG0Rd__lFQOyAA0hE0VyAA05EmptyE0VAKG_AA08CircularheG0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGAA07_HiddenN0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE08progressE5StyleyQrqd__AA08ProgresseG0Rd__lFQOyAA0hE0VyAA05EmptyE0VAKG_AA08CircularheG0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGAA07_HiddenN0VGMR);
  }

  v70 = v55;
  outlined destroy of ModifiedContent<ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _HiddenModifier>(v57, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE08progressE5StyleyQrqd__AA08ProgresseG0Rd__lFQOyAA0hE0VyAA05EmptyE0VAKG_AA08CircularheG0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE08progressE5StyleyQrqd__AA08ProgresseG0Rd__lFQOyAA0hE0VyAA05EmptyE0VAKG_AA08CircularheG0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGMR);
  v71 = v89;
  v72 = v90;
  outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>(v89, v90, &_s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA03AnyC5StyleVGMd, &_s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA03AnyC5StyleVGMR);
  v73 = v109;
  v74 = v91;
  outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>(v109, v91, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAA6HStackVyAA9TupleViewVyAEyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtGGAA022_EnvironmentKeyWritingL0VyAA4FontVSgGGAA016_ForegroundStyleL0VyAA5ColorVGGAA07_HiddenL0VGA4_GMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAA6HStackVyAA9TupleViewVyAEyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtGGAA022_EnvironmentKeyWritingL0VyAA4FontVSgGGAA016_ForegroundStyleL0VyAA5ColorVGGAA07_HiddenL0VGA4_GMR);
  v75 = v103;
  outlined init with copy of ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>(v70, v103, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA4ViewPAAE08progressF5StyleyQrqd__AA08ProgressfH0Rd__lFQOyAA0iF0VyAA05EmptyF0VAMG_AA08CircularifH0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGAA07_HiddenO0VGAWGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA4ViewPAAE08progressF5StyleyQrqd__AA08ProgressfH0Rd__lFQOyAA0iF0VyAA05EmptyF0VAMG_AA08CircularifH0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGAA07_HiddenO0VGAWGMR);
  v76 = v106;
  outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>(v72, v106, &_s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA03AnyC5StyleVGMd, &_s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA03AnyC5StyleVGMR);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA03AnyC5StyleVG_AA19_ConditionalContentVyAA08ModifiedJ0VyALyALyAA6HStackVyAA05TupleD0VyALyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtGGAA022_EnvironmentKeyWritingQ0VyAA4FontVSgGGAA011_ForegroundhQ0VyAA5ColorVGGAA07_HiddenQ0VGA11_GAJyALyALyAA0D0PAAE08progressdH0yQrqd__AA08ProgressdH0Rd__lFQOyAA08ProgressD0VyAA05EmptyD0VA23_G_AA016CircularProgressdH0VQo_A0_yAA11ControlSizeOGGA13_GA31_GtMd, &_s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA03AnyC5StyleVG_AA19_ConditionalContentVyAA08ModifiedJ0VyALyALyAA6HStackVyAA05TupleD0VyALyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtGGAA022_EnvironmentKeyWritingQ0VyAA4FontVSgGGAA011_ForegroundhQ0VyAA5ColorVGGAA07_HiddenQ0VGA11_GAJyALyALyAA0D0PAAE08progressdH0yQrqd__AA08ProgressdH0Rd__lFQOyAA08ProgressD0VyAA05EmptyD0VA23_G_AA016CircularProgressdH0VQo_A0_yAA11ControlSizeOGGA13_GA31_GtMR);
  outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>(v74, v76 + *(v77 + 48), &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAA6HStackVyAA9TupleViewVyAEyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtGGAA022_EnvironmentKeyWritingL0VyAA4FontVSgGGAA016_ForegroundStyleL0VyAA5ColorVGGAA07_HiddenL0VGA4_GMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAA6HStackVyAA9TupleViewVyAEyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtGGAA022_EnvironmentKeyWritingL0VyAA4FontVSgGGAA016_ForegroundStyleL0VyAA5ColorVGGAA07_HiddenL0VGA4_GMR);
  outlined init with copy of ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>(v75, v76 + *(v77 + 64), &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA4ViewPAAE08progressF5StyleyQrqd__AA08ProgressfH0Rd__lFQOyAA0iF0VyAA05EmptyF0VAMG_AA08CircularifH0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGAA07_HiddenO0VGAWGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA4ViewPAAE08progressF5StyleyQrqd__AA08ProgressfH0Rd__lFQOyAA0iF0VyAA05EmptyF0VAMG_AA08CircularifH0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGAA07_HiddenO0VGAWGMR);
  outlined destroy of ModifiedContent<ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _HiddenModifier>(v70, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA4ViewPAAE08progressF5StyleyQrqd__AA08ProgressfH0Rd__lFQOyAA0iF0VyAA05EmptyF0VAMG_AA08CircularifH0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGAA07_HiddenO0VGAWGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA4ViewPAAE08progressF5StyleyQrqd__AA08ProgressfH0Rd__lFQOyAA0iF0VyAA05EmptyF0VAMG_AA08CircularifH0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGAA07_HiddenO0VGAWGMR);
  _ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGWOhTm_0(v73, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAA6HStackVyAA9TupleViewVyAEyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtGGAA022_EnvironmentKeyWritingL0VyAA4FontVSgGGAA016_ForegroundStyleL0VyAA5ColorVGGAA07_HiddenL0VGA4_GMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAA6HStackVyAA9TupleViewVyAEyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtGGAA022_EnvironmentKeyWritingL0VyAA4FontVSgGGAA016_ForegroundStyleL0VyAA5ColorVGGAA07_HiddenL0VGA4_GMR);
  _ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGWOhTm_0(v71, &_s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA03AnyC5StyleVGMd, &_s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA03AnyC5StyleVGMR);
  outlined destroy of ModifiedContent<ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _HiddenModifier>(v75, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA4ViewPAAE08progressF5StyleyQrqd__AA08ProgressfH0Rd__lFQOyAA0iF0VyAA05EmptyF0VAMG_AA08CircularifH0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGAA07_HiddenO0VGAWGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA4ViewPAAE08progressF5StyleyQrqd__AA08ProgressfH0Rd__lFQOyAA0iF0VyAA05EmptyF0VAMG_AA08CircularifH0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGAA07_HiddenO0VGAWGMR);
  _ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGWOhTm_0(v74, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAA6HStackVyAA9TupleViewVyAEyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtGGAA022_EnvironmentKeyWritingL0VyAA4FontVSgGGAA016_ForegroundStyleL0VyAA5ColorVGGAA07_HiddenL0VGA4_GMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAA6HStackVyAA9TupleViewVyAEyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtGGAA022_EnvironmentKeyWritingL0VyAA4FontVSgGGAA016_ForegroundStyleL0VyAA5ColorVGGAA07_HiddenL0VGA4_GMR);
  return _ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGWOhTm_0(v72, &_s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA03AnyC5StyleVGMd, &_s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA03AnyC5StyleVGMR);
}

uint64_t closure #1 in closure #1 in closure #2 in SessionExtraControlsButton.body.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA31AccessibilityAttachmentModifierVGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA31AccessibilityAttachmentModifierVGSgMd, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA31AccessibilityAttachmentModifierVGSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v24 - v12;
  if (a1[1])
  {

    v24[0] = Image.init(_internalSystemName:)();
    View.accessibilityHidden(_:)();

    outlined init with take of ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>(v7, v13, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA31AccessibilityAttachmentModifierVGMR);
    (*(v5 + 56))(v13, 0, 1, v4);
  }

  else
  {
    (*(v5 + 56))(v24 - v12, 1, 1, v4);
  }

  v14 = a1[3];
  v24[0] = a1[2];
  v24[1] = v14;
  lazy protocol witness table accessor for type String and conformance String();

  v15 = Text.init<A>(_:)();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>(v13, v10, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA31AccessibilityAttachmentModifierVGSgMd, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA31AccessibilityAttachmentModifierVGSgMR);
  outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>(v10, a2, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA31AccessibilityAttachmentModifierVGSgMd, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA31AccessibilityAttachmentModifierVGSgMR);
  v22 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtMd, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtMR) + 48);
  *v22 = v15;
  *(v22 + 8) = v17;
  *(v22 + 16) = v19 & 1;
  *(v22 + 24) = v21;
  outlined copy of Text.Storage(v15, v17, v19 & 1);

  _ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGWOhTm_0(v13, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA31AccessibilityAttachmentModifierVGSgMd, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA31AccessibilityAttachmentModifierVGSgMR);
  outlined consume of Text.Storage(v15, v17, v19 & 1);

  return _ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGWOhTm_0(v10, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA31AccessibilityAttachmentModifierVGSgMd, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA31AccessibilityAttachmentModifierVGSgMR);
}

uint64_t outlined init with take of ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, _FrameLayout>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtGGAA022_EnvironmentKeyWritingK0VyAA4FontVSgGGAA016_ForegroundStyleK0VyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtGGAA022_EnvironmentKeyWritingK0VyAA4FontVSgGGAA016_ForegroundStyleK0VyAA5ColorVGGMR);
    lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ZStack<TupleView<(_ShapeView<RoundedRectangle, AnyShapeStyle>, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _HiddenModifier>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>>, _ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _HiddenModifier>, ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>>)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type _ForegroundStyleModifier<Color> and conformance _ForegroundStyleModifier<A>, &_s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGMd, &_s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGMR, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtGGAA022_EnvironmentKeyWritingK0VyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtGGAA022_EnvironmentKeyWritingK0VyAA4FontVSgGGMR);
    lazy protocol witness table accessor for type ZStack<TupleView<(_ShapeView<RoundedRectangle, AnyShapeStyle>, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _HiddenModifier>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>>, _ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _HiddenModifier>, ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>>)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtGGMR, MEMORY[0x277CE1138]);
    lazy protocol witness table accessor for type ZStack<TupleView<(_ShapeView<RoundedRectangle, AnyShapeStyle>, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _HiddenModifier>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>>, _ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _HiddenModifier>, ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>>)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMR, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t _s7SwiftUI15DynamicTypeSizeOACSQAAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _HiddenModifier> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    lazy protocol witness table accessor for type _HiddenModifier and conformance _HiddenModifier();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE08progressE5StyleyQrqd__AA08ProgresseG0Rd__lFQOyAA0hE0VyAA05EmptyE0VAKG_AA08CircularheG0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE08progressE5StyleyQrqd__AA08ProgresseG0Rd__lFQOyAA0hE0VyAA05EmptyE0VAKG_AA08CircularheG0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI12ProgressViewVyAA05EmptyD0VAEGMd, &_s7SwiftUI12ProgressViewVyAA05EmptyD0VAEGMR);
    type metadata accessor for CircularProgressViewStyle();
    lazy protocol witness table accessor for type ZStack<TupleView<(_ShapeView<RoundedRectangle, AnyShapeStyle>, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _HiddenModifier>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>>, _ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _HiddenModifier>, ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>>)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type ProgressView<EmptyView, EmptyView> and conformance ProgressView<A, B>, &_s7SwiftUI12ProgressViewVyAA05EmptyD0VAEGMd, &_s7SwiftUI12ProgressViewVyAA05EmptyD0VAEGMR, MEMORY[0x277CDD7F8]);
    _s7SwiftUI15DynamicTypeSizeOACSQAAWlTm_0(&lazy protocol witness table cache variable for type CircularProgressViewStyle and conformance CircularProgressViewStyle, MEMORY[0x277CDE330], MEMORY[0x277CDE318]);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type ZStack<TupleView<(_ShapeView<RoundedRectangle, AnyShapeStyle>, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _HiddenModifier>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>>, _ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _HiddenModifier>, ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>>)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ControlSize> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGMR, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined init with copy of ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of ModifiedContent<ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _HiddenModifier>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t _ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGWOhTm_0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined init with take of ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, _FrameLayout>, _ForegroundStyleModifier<Color>>, _EnvironmentKeyTransformModifier<Bool>>, _ContentShapeKindModifier<RoundedRectangle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, _FrameLayout>, _ForegroundStyleModifier<Color>>, _EnvironmentKeyTransformModifier<Bool>>, _ContentShapeKindModifier<RoundedRectangle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, _FrameLayout>, _ForegroundStyleModifier<Color>>, _EnvironmentKeyTransformModifier<Bool>>, _ContentShapeKindModifier<RoundedRectangle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicgH0O5BoundRtd__lFQOyAA6ButtonVyAA6ZStackVyAA05TupleE0VyAA06_ShapeE0VyAA16RoundedRectangleVAA03AnyN5StyleVG_AA012_ConditionalD0VyACyACyACyAA6HStackVyAPyACyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtGGAA022_EnvironmentKeyWritingX0VyAA4FontVSgGGAA011_ForegroundrX0VyAA5ColorVGGAA07_HiddenX0VGA22_GAYyACyACyAeAE08progresseR0yQrqd__AA08ProgresseR0Rd__lFQOyAA08ProgressE0VyAA05EmptyE0VA32_G_AA016CircularProgresseR0VQo_A11_yAA07ControlH0OGGA24_GA40_GtGGG_s19PartialRangeThroughVyAHGQo_AA12_FrameLayoutVGA21_GAA01_z12KeyTransformX0VySbGGAA01_dn4KindX0VyATGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicgH0O5BoundRtd__lFQOyAA6ButtonVyAA6ZStackVyAA05TupleE0VyAA06_ShapeE0VyAA16RoundedRectangleVAA03AnyN5StyleVG_AA012_ConditionalD0VyACyACyACyAA6HStackVyAPyACyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtGGAA022_EnvironmentKeyWritingX0VyAA4FontVSgGGAA011_ForegroundrX0VyAA5ColorVGGAA07_HiddenX0VGA22_GAYyACyACyAeAE08progresseR0yQrqd__AA08ProgresseR0Rd__lFQOyAA08ProgressE0VyAA05EmptyE0VA32_G_AA016CircularProgresseR0VQo_A11_yAA07ControlH0OGGA24_GA40_GtGGG_s19PartialRangeThroughVyAHGQo_AA12_FrameLayoutVGA21_GAA01_z12KeyTransformX0VySbGGAA01_dn4KindX0VyATGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, _FrameLayout>, _ForegroundStyleModifier<Color>>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ZStack<TupleView<(_ShapeView<RoundedRectangle, AnyShapeStyle>, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _HiddenModifier>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>>, _ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _HiddenModifier>, ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>>)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type _ContentShapeKindModifier<RoundedRectangle> and conformance _ContentShapeKindModifier<A>, &_s7SwiftUI25_ContentShapeKindModifierVyAA16RoundedRectangleVGMd, &_s7SwiftUI25_ContentShapeKindModifierVyAA16RoundedRectangleVGMR, MEMORY[0x277CE07A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, _FrameLayout>, _ForegroundStyleModifier<Color>>, _EnvironmentKeyTransformModifier<Bool>>, _ContentShapeKindModifier<RoundedRectangle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, _FrameLayout>, _ForegroundStyleModifier<Color>>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, _FrameLayout>, _ForegroundStyleModifier<Color>>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, _FrameLayout>, _ForegroundStyleModifier<Color>>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicgH0O5BoundRtd__lFQOyAA6ButtonVyAA6ZStackVyAA05TupleE0VyAA06_ShapeE0VyAA16RoundedRectangleVAA03AnyN5StyleVG_AA012_ConditionalD0VyACyACyACyAA6HStackVyAPyACyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtGGAA022_EnvironmentKeyWritingX0VyAA4FontVSgGGAA011_ForegroundrX0VyAA5ColorVGGAA07_HiddenX0VGA22_GAYyACyACyAeAE08progresseR0yQrqd__AA08ProgresseR0Rd__lFQOyAA08ProgressE0VyAA05EmptyE0VA32_G_AA016CircularProgresseR0VQo_A11_yAA07ControlH0OGGA24_GA40_GtGGG_s19PartialRangeThroughVyAHGQo_AA12_FrameLayoutVGA21_GAA01_z12KeyTransformX0VySbGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicgH0O5BoundRtd__lFQOyAA6ButtonVyAA6ZStackVyAA05TupleE0VyAA06_ShapeE0VyAA16RoundedRectangleVAA03AnyN5StyleVG_AA012_ConditionalD0VyACyACyACyAA6HStackVyAPyACyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtGGAA022_EnvironmentKeyWritingX0VyAA4FontVSgGGAA011_ForegroundrX0VyAA5ColorVGGAA07_HiddenX0VGA22_GAYyACyACyAeAE08progresseR0yQrqd__AA08ProgresseR0Rd__lFQOyAA08ProgressE0VyAA05EmptyE0VA32_G_AA016CircularProgresseR0VQo_A11_yAA07ControlH0OGGA24_GA40_GtGGG_s19PartialRangeThroughVyAHGQo_AA12_FrameLayoutVGA21_GAA01_z12KeyTransformX0VySbGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, _FrameLayout>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ZStack<TupleView<(_ShapeView<RoundedRectangle, AnyShapeStyle>, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _HiddenModifier>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>>, _ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _HiddenModifier>, ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>>)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<Bool> and conformance _EnvironmentKeyTransformModifier<A>, &_s7SwiftUI32_EnvironmentKeyTransformModifierVySbGMd, &_s7SwiftUI32_EnvironmentKeyTransformModifierVySbGMR, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, _FrameLayout>, _ForegroundStyleModifier<Color>>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, _FrameLayout>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, _FrameLayout>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, _FrameLayout>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicgH0O5BoundRtd__lFQOyAA6ButtonVyAA6ZStackVyAA05TupleE0VyAA06_ShapeE0VyAA16RoundedRectangleVAA03AnyN5StyleVG_AA012_ConditionalD0VyACyACyACyAA6HStackVyAPyACyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtGGAA022_EnvironmentKeyWritingX0VyAA4FontVSgGGAA011_ForegroundrX0VyAA5ColorVGGAA07_HiddenX0VGA22_GAYyACyACyAeAE08progresseR0yQrqd__AA08ProgresseR0Rd__lFQOyAA08ProgressE0VyAA05EmptyE0VA32_G_AA016CircularProgresseR0VQo_A11_yAA07ControlH0OGGA24_GA40_GtGGG_s19PartialRangeThroughVyAHGQo_AA12_FrameLayoutVGA21_GMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicgH0O5BoundRtd__lFQOyAA6ButtonVyAA6ZStackVyAA05TupleE0VyAA06_ShapeE0VyAA16RoundedRectangleVAA03AnyN5StyleVG_AA012_ConditionalD0VyACyACyACyAA6HStackVyAPyACyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtGGAA022_EnvironmentKeyWritingX0VyAA4FontVSgGGAA011_ForegroundrX0VyAA5ColorVGGAA07_HiddenX0VGA22_GAYyACyACyAeAE08progresseR0yQrqd__AA08ProgresseR0Rd__lFQOyAA08ProgressE0VyAA05EmptyE0VA32_G_AA016CircularProgresseR0VQo_A11_yAA07ControlH0OGGA24_GA40_GtGGG_s19PartialRangeThroughVyAHGQo_AA12_FrameLayoutVGA21_GMR);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ZStack<TupleView<(_ShapeView<RoundedRectangle, AnyShapeStyle>, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _HiddenModifier>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>>, _ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _HiddenModifier>, ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>>)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type _ForegroundStyleModifier<Color> and conformance _ForegroundStyleModifier<A>, &_s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGMd, &_s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGMR, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, _FrameLayout>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicgH0O5BoundRtd__lFQOyAA6ButtonVyAA6ZStackVyAA05TupleE0VyAA06_ShapeE0VyAA16RoundedRectangleVAA03AnyN5StyleVG_AA012_ConditionalD0VyACyACyACyAA6HStackVyAPyACyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtGGAA022_EnvironmentKeyWritingX0VyAA4FontVSgGGAA011_ForegroundrX0VyAA5ColorVGGAA07_HiddenX0VGA22_GAYyACyACyAeAE08progresseR0yQrqd__AA08ProgresseR0Rd__lFQOyAA08ProgressE0VyAA05EmptyE0VA32_G_AA016CircularProgresseR0VQo_A11_yAA07ControlH0OGGA24_GA40_GtGGG_s19PartialRangeThroughVyAHGQo_AA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicgH0O5BoundRtd__lFQOyAA6ButtonVyAA6ZStackVyAA05TupleE0VyAA06_ShapeE0VyAA16RoundedRectangleVAA03AnyN5StyleVG_AA012_ConditionalD0VyACyACyACyAA6HStackVyAPyACyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtGGAA022_EnvironmentKeyWritingX0VyAA4FontVSgGGAA011_ForegroundrX0VyAA5ColorVGGAA07_HiddenX0VGA22_GAYyACyACyAeAE08progresseR0yQrqd__AA08ProgresseR0Rd__lFQOyAA08ProgressE0VyAA05EmptyE0VA32_G_AA016CircularProgresseR0VQo_A11_yAA07ControlH0OGGA24_GA40_GtGGG_s19PartialRangeThroughVyAHGQo_AA12_FrameLayoutVGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ButtonVyAA6ZStackVyAA9TupleViewVyAA06_ShapeF0VyAA16RoundedRectangleVAA03AnyG5StyleVG_AA19_ConditionalContentVyAA08ModifiedM0VyARyARyAA6HStackVyAGyARyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtGGAA022_EnvironmentKeyWritingS0VyAA4FontVSgGGAA011_ForegroundkS0VyAA5ColorVGGAA07_HiddenS0VGA15_GAPyARyARyAA0F0PAAE08progressfK0yQrqd__AA08ProgressfK0Rd__lFQOyAA08ProgressF0VyAA05EmptyF0VA27_G_AA016CircularProgressfK0VQo_A4_yAA11ControlSizeOGGA17_GA35_GtGGGMd, &_s7SwiftUI6ButtonVyAA6ZStackVyAA9TupleViewVyAA06_ShapeF0VyAA16RoundedRectangleVAA03AnyG5StyleVG_AA19_ConditionalContentVyAA08ModifiedM0VyARyARyAA6HStackVyAGyARyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtGGAA022_EnvironmentKeyWritingS0VyAA4FontVSgGGAA011_ForegroundkS0VyAA5ColorVGGAA07_HiddenS0VGA15_GAPyARyARyAA0F0PAAE08progressfK0yQrqd__AA08ProgressfK0Rd__lFQOyAA08ProgressF0VyAA05EmptyF0VA27_G_AA016CircularProgressfK0VQo_A4_yAA11ControlSizeOGGA17_GA35_GtGGGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGMd, &_ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGMR);
    lazy protocol witness table accessor for type ZStack<TupleView<(_ShapeView<RoundedRectangle, AnyShapeStyle>, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _HiddenModifier>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>>, _ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _HiddenModifier>, ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>>)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type Button<ZStack<TupleView<(_ShapeView<RoundedRectangle, AnyShapeStyle>, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _HiddenModifier>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>>, _ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _HiddenModifier>, ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>>)>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA6ZStackVyAA9TupleViewVyAA06_ShapeF0VyAA16RoundedRectangleVAA03AnyG5StyleVG_AA19_ConditionalContentVyAA08ModifiedM0VyARyARyAA6HStackVyAGyARyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtGGAA022_EnvironmentKeyWritingS0VyAA4FontVSgGGAA011_ForegroundkS0VyAA5ColorVGGAA07_HiddenS0VGA15_GAPyARyARyAA0F0PAAE08progressfK0yQrqd__AA08ProgressfK0Rd__lFQOyAA08ProgressF0VyAA05EmptyF0VA27_G_AA016CircularProgressfK0VQo_A4_yAA11ControlSizeOGGA17_GA35_GtGGGMd, &_s7SwiftUI6ButtonVyAA6ZStackVyAA9TupleViewVyAA06_ShapeF0VyAA16RoundedRectangleVAA03AnyG5StyleVG_AA19_ConditionalContentVyAA08ModifiedM0VyARyARyAA6HStackVyAGyARyAA5ImageVAA31AccessibilityAttachmentModifierVGSg_AA4TextVtGGAA022_EnvironmentKeyWritingS0VyAA4FontVSgGGAA011_ForegroundkS0VyAA5ColorVGGAA07_HiddenS0VGA15_GAPyARyARyAA0F0PAAE08progressfK0yQrqd__AA08ProgressfK0Rd__lFQOyAA08ProgressF0VyAA05EmptyF0VA27_G_AA016CircularProgressfK0VQo_A4_yAA11ControlSizeOGGA17_GA35_GtGGGMR, MEMORY[0x277CDF028]);
    lazy protocol witness table accessor for type ZStack<TupleView<(_ShapeView<RoundedRectangle, AnyShapeStyle>, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _HiddenModifier>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>>, _ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _HiddenModifier>, ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>>)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type PartialRangeThrough<DynamicTypeSize> and conformance PartialRangeThrough<A>, &_ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGMd, &_ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGMR, MEMORY[0x277D84470]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ZStack<TupleView<(_ShapeView<RoundedRectangle, AnyShapeStyle>, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _HiddenModifier>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, AccessibilityAttachmentModifier>?, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>>, _ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _HiddenModifier>, ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>>)>> and conformance ZStack<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t InSessionView.init(lowPowerModeMonitor:metricsPublisher:notificationCenter:formattingManager:sessionControls:sessionViewModel:sheetHeights:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, double *a7@<X6>, uint64_t *a8@<X8>)
{
  v44 = a6;
  v15 = type metadata accessor for PresentationDetent();
  v42 = *(v15 - 8);
  v43 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v41 = &v38 - v19;
  v20 = *a7;
  v21 = *(a7 + 1);
  type metadata accessor for SessionControlsState(0);
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  ObservationRegistrar.init()();
  v45 = v22;
  State.init(wrappedValue:)();
  v23 = v47;
  a8[14] = v46;
  a8[15] = v23;
  v24 = type metadata accessor for InSessionView(0);
  v25 = v24[13];
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  *(a8 + v25) = static MetricPlatterAnalytics.shared;
  v26 = a8 + v24[17];
  LOBYTE(v45) = 0;

  State.init(wrappedValue:)();
  v27 = v47;
  *v26 = v46;
  *(v26 + 1) = v27;
  type metadata accessor for LowPowerModeMonitor();
  _s11WorkoutCore19LowPowerModeMonitorCAC7Combine16ObservableObjectAAWlTm_2(&lazy protocol witness table cache variable for type LowPowerModeMonitor and conformance LowPowerModeMonitor, MEMORY[0x277D7E2F8], MEMORY[0x277D7E2F0]);

  *a8 = ObservedObject.init(wrappedValue:)();
  a8[1] = v28;
  a8[2] = a2;
  v29 = a2;
  MetricsPublisher.workoutStatePublisher.getter();
  type metadata accessor for WorkoutStatePublisher();
  _s11WorkoutCore19LowPowerModeMonitorCAC7Combine16ObservableObjectAAWlTm_2(&lazy protocol witness table cache variable for type WorkoutStatePublisher and conformance WorkoutStatePublisher, MEMORY[0x277D7DA88], MEMORY[0x277D7DA78]);
  a8[3] = ObservedObject.init(wrappedValue:)();
  a8[4] = v30;
  MetricsPublisher.workoutBuddyStatePublisher.getter();
  type metadata accessor for WorkoutBuddyStatePublisher();
  _s11WorkoutCore19LowPowerModeMonitorCAC7Combine16ObservableObjectAAWlTm_2(&lazy protocol witness table cache variable for type WorkoutBuddyStatePublisher and conformance WorkoutBuddyStatePublisher, MEMORY[0x277D7DBD0], MEMORY[0x277D7DBC8]);
  a8[5] = ObservedObject.init(wrappedValue:)();
  a8[6] = v31;
  a8[7] = a3;
  a8[8] = a4;
  outlined init with copy of SessionControls(a5, (a8 + 9));
  v40 = a5;
  type metadata accessor for SessionViewModel(0);
  _s11WorkoutCore19LowPowerModeMonitorCAC7Combine16ObservableObjectAAWlTm_2(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, type metadata accessor for SessionViewModel, &protocol conformance descriptor for SessionViewModel);

  v39 = a4;

  Bindable<A>.init(wrappedValue:)();
  type metadata accessor for LowPowerViewModel(0);
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v32 + 32) = 0;
  *(v32 + 40) = 0;
  *(v32 + 48) = 1;

  ObservationRegistrar.init()();
  *(v32 + 24) = a1;
  *(a8 + v24[14]) = v32;
  v33 = (a8 + v24[15]);
  *v33 = v20;
  v33[1] = v21;
  v34 = v41;
  static PresentationDetent.height(_:)();
  v36 = v42;
  v35 = v43;
  (*(v42 + 16))(v17, v34, v43);
  State.init(wrappedValue:)();

  __swift_destroy_boxed_opaque_existential_1(v40);
  return (*(v36 + 8))(v34, v35);
}

uint64_t InSessionView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v54 = a1;
  v3 = type metadata accessor for DynamicTypeSize();
  v52 = *(v3 - 8);
  v53 = v3;
  MEMORY[0x28223BE20](v3);
  v50 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for InSessionView(0);
  v48 = *(v5 - 8);
  v6 = *(v48 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ZStackVyAA9TupleViewVyAA0E0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaFRd__lFQOyAA15ModifiedContentVyAQyAQyAQyAQy07WorkoutB0014MetricPlattersE0VAA24_BackgroundStyleModifierVyAA5ColorVGGAA16_FlexFrameLayoutVGAA14_OpacityEffectVGAA08_PaddingX0VGAA017_AppearanceActionT0VG_AgAE0I6Change2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAgAE5alert_AI7actions7messageQrqd___ANqd_0_yXEqd_1_yXEtSyRd__AaFRd_0_AaFRd_1_r1_lFQOyAgAEA14__AIA15_A16_Qrqd___ANqd_0_yXEqd_1_yXEtSyRd__AaFRd_0_AaFRd_1_r1_lFQOyAgAEA11_A12_A13__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAgAEA11_A12_A13__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAgAEA11_A12_A13__Qrqd___SbyyctSQRd__lFQOyAgAEA11_A12_A13__Qrqd___SbyyctSQRd__lFQOyAgAEA11_A12_A13__Qrqd___SbyyctSQRd__lFQOyAgAE19presentationDetents_9selectionQrShyAA18PresentationDetentVG_AMyA20_GtFQOyAQyAR20SessionControlsSheetVA0_G_Qo__A20_Qo__SbQo__SbQo__0O4Core0O19BuddyStatePublisherC5StateOQo__So21NLWorkoutPausedReasonVQo__SSAQyAA6ButtonVyAA4TextVGAA023AccessibilityAttachmentT0VGA42_Qo__SSAEyA46__A46_tGA42_Qo__SbQo_Qo__AR24LowPowerInSessionOverlayVSgtGGMd, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA0E0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaFRd__lFQOyAA15ModifiedContentVyAQyAQyAQyAQy07WorkoutB0014MetricPlattersE0VAA24_BackgroundStyleModifierVyAA5ColorVGGAA16_FlexFrameLayoutVGAA14_OpacityEffectVGAA08_PaddingX0VGAA017_AppearanceActionT0VG_AgAE0I6Change2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAgAE5alert_AI7actions7messageQrqd___ANqd_0_yXEqd_1_yXEtSyRd__AaFRd_0_AaFRd_1_r1_lFQOyAgAEA14__AIA15_A16_Qrqd___ANqd_0_yXEqd_1_yXEtSyRd__AaFRd_0_AaFRd_1_r1_lFQOyAgAEA11_A12_A13__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAgAEA11_A12_A13__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAgAEA11_A12_A13__Qrqd___SbyyctSQRd__lFQOyAgAEA11_A12_A13__Qrqd___SbyyctSQRd__lFQOyAgAEA11_A12_A13__Qrqd___SbyyctSQRd__lFQOyAgAE19presentationDetents_9selectionQrShyAA18PresentationDetentVG_AMyA20_GtFQOyAQyAR20SessionControlsSheetVA0_G_Qo__A20_Qo__SbQo__SbQo__0O4Core0O19BuddyStatePublisherC5StateOQo__So21NLWorkoutPausedReasonVQo__SSAQyAA6ButtonVyAA4TextVGAA023AccessibilityAttachmentT0VGA42_Qo__SSAEyA46__A46_tGA42_Qo__SbQo_Qo__AR24LowPowerInSessionOverlayVSgtGGMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v46 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyAA0G0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaHRd__lFQOyACyACyACyACyACy07WorkoutB0014MetricPlattersG0VAA24_BackgroundStyleModifierVyAA5ColorVGGAA16_FlexFrameLayoutVGAA14_OpacityEffectVGAA08_PaddingX0VGAA017_AppearanceActionT0VG_AiAE0K6Change2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAiAE5alert_AK7actions7messageQrqd___APqd_0_yXEqd_1_yXEtSyRd__AaHRd_0_AaHRd_1_r1_lFQOyAiAEA14__AKA15_A16_Qrqd___APqd_0_yXEqd_1_yXEtSyRd__AaHRd_0_AaHRd_1_r1_lFQOyAiAEA11_A12_A13__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___SbyyctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___SbyyctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___SbyyctSQRd__lFQOyAiAE19presentationDetents_9selectionQrShyAA18PresentationDetentVG_AOyA20_GtFQOyACyAR20SessionControlsSheetVA0_G_Qo__A20_Qo__SbQo__SbQo__0O4Core0O19BuddyStatePublisherC5StateOQo__So21NLWorkoutPausedReasonVQo__SSACyAA6ButtonVyAA4TextVGAA023AccessibilityAttachmentT0VGA42_Qo__SSAGyA46__A46_tGA42_Qo__SbQo_Qo__AR24LowPowerInSessionOverlayVSgtGGA0_GMd, &_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyAA0G0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaHRd__lFQOyACyACyACyACyACy07WorkoutB0014MetricPlattersG0VAA24_BackgroundStyleModifierVyAA5ColorVGGAA16_FlexFrameLayoutVGAA14_OpacityEffectVGAA08_PaddingX0VGAA017_AppearanceActionT0VG_AiAE0K6Change2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAiAE5alert_AK7actions7messageQrqd___APqd_0_yXEqd_1_yXEtSyRd__AaHRd_0_AaHRd_1_r1_lFQOyAiAEA14__AKA15_A16_Qrqd___APqd_0_yXEqd_1_yXEtSyRd__AaHRd_0_AaHRd_1_r1_lFQOyAiAEA11_A12_A13__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___SbyyctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___SbyyctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___SbyyctSQRd__lFQOyAiAE19presentationDetents_9selectionQrShyAA18PresentationDetentVG_AOyA20_GtFQOyACyAR20SessionControlsSheetVA0_G_Qo__A20_Qo__SbQo__SbQo__0O4Core0O19BuddyStatePublisherC5StateOQo__So21NLWorkoutPausedReasonVQo__SSACyAA6ButtonVyAA4TextVGAA023AccessibilityAttachmentT0VGA42_Qo__SSAGyA46__A46_tGA42_Qo__SbQo_Qo__AR24LowPowerInSessionOverlayVSgtGGA0_GMR);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v46 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6ZStackVyAA9TupleViewVyAA0G0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaHRd__lFQOyACyACyACyACyACy07WorkoutB0014MetricPlattersG0VAA24_BackgroundStyleModifierVyAA5ColorVGGAA16_FlexFrameLayoutVGAA14_OpacityEffectVGAA08_PaddingX0VGAA017_AppearanceActionT0VG_AiAE0K6Change2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAiAE5alert_AK7actions7messageQrqd___APqd_0_yXEqd_1_yXEtSyRd__AaHRd_0_AaHRd_1_r1_lFQOyAiAEA14__AKA15_A16_Qrqd___APqd_0_yXEqd_1_yXEtSyRd__AaHRd_0_AaHRd_1_r1_lFQOyAiAEA11_A12_A13__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___SbyyctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___SbyyctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___SbyyctSQRd__lFQOyAiAE19presentationDetents_9selectionQrShyAA18PresentationDetentVG_AOyA20_GtFQOyACyAR20SessionControlsSheetVA0_G_Qo__A20_Qo__SbQo__SbQo__0O4Core0O19BuddyStatePublisherC5StateOQo__So21NLWorkoutPausedReasonVQo__SSACyAA6ButtonVyAA4TextVGAA023AccessibilityAttachmentT0VGA42_Qo__SSAGyA46__A46_tGA42_Qo__SbQo_Qo__AR24LowPowerInSessionOverlayVSgtGGA0_GAA022_EnvironmentKeyWritingT0VyAR0o9AnimationS0OGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ZStackVyAA9TupleViewVyAA0G0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaHRd__lFQOyACyACyACyACyACy07WorkoutB0014MetricPlattersG0VAA24_BackgroundStyleModifierVyAA5ColorVGGAA16_FlexFrameLayoutVGAA14_OpacityEffectVGAA08_PaddingX0VGAA017_AppearanceActionT0VG_AiAE0K6Change2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAiAE5alert_AK7actions7messageQrqd___APqd_0_yXEqd_1_yXEtSyRd__AaHRd_0_AaHRd_1_r1_lFQOyAiAEA14__AKA15_A16_Qrqd___APqd_0_yXEqd_1_yXEtSyRd__AaHRd_0_AaHRd_1_r1_lFQOyAiAEA11_A12_A13__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___SbyyctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___SbyyctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___SbyyctSQRd__lFQOyAiAE19presentationDetents_9selectionQrShyAA18PresentationDetentVG_AOyA20_GtFQOyACyAR20SessionControlsSheetVA0_G_Qo__A20_Qo__SbQo__SbQo__0O4Core0O19BuddyStatePublisherC5StateOQo__So21NLWorkoutPausedReasonVQo__SSACyAA6ButtonVyAA4TextVGAA023AccessibilityAttachmentT0VGA42_Qo__SSAGyA46__A46_tGA42_Qo__SbQo_Qo__AR24LowPowerInSessionOverlayVSgtGGA0_GAA022_EnvironmentKeyWritingT0VyAR0o9AnimationS0OGGMR);
  v15 = v14 - 8;
  MEMORY[0x28223BE20](v14);
  v17 = &v46 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6ZStackVyAA9TupleViewVyAA0G0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaHRd__lFQOyACyACyACyACyACy07WorkoutB0014MetricPlattersG0VAA24_BackgroundStyleModifierVyAA5ColorVGGAA16_FlexFrameLayoutVGAA14_OpacityEffectVGAA08_PaddingX0VGAA017_AppearanceActionT0VG_AiAE0K6Change2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAiAE5alert_AK7actions7messageQrqd___APqd_0_yXEqd_1_yXEtSyRd__AaHRd_0_AaHRd_1_r1_lFQOyAiAEA14__AKA15_A16_Qrqd___APqd_0_yXEqd_1_yXEtSyRd__AaHRd_0_AaHRd_1_r1_lFQOyAiAEA11_A12_A13__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___SbyyctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___SbyyctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___SbyyctSQRd__lFQOyAiAE19presentationDetents_9selectionQrShyAA18PresentationDetentVG_AOyA20_GtFQOyACyAR20SessionControlsSheetVA0_G_Qo__A20_Qo__SbQo__SbQo__0O4Core0O19BuddyStatePublisherC5StateOQo__So21NLWorkoutPausedReasonVQo__SSACyAA6ButtonVyAA4TextVGAA023AccessibilityAttachmentT0VGA42_Qo__SSAGyA46__A46_tGA42_Qo__SbQo_Qo__AR24LowPowerInSessionOverlayVSgtGGA0_GAA022_EnvironmentKeyWritingT0VyAR0o9AnimationS0OGGA9_GMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6ZStackVyAA9TupleViewVyAA0G0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaHRd__lFQOyACyACyACyACyACy07WorkoutB0014MetricPlattersG0VAA24_BackgroundStyleModifierVyAA5ColorVGGAA16_FlexFrameLayoutVGAA14_OpacityEffectVGAA08_PaddingX0VGAA017_AppearanceActionT0VG_AiAE0K6Change2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAiAE5alert_AK7actions7messageQrqd___APqd_0_yXEqd_1_yXEtSyRd__AaHRd_0_AaHRd_1_r1_lFQOyAiAEA14__AKA15_A16_Qrqd___APqd_0_yXEqd_1_yXEtSyRd__AaHRd_0_AaHRd_1_r1_lFQOyAiAEA11_A12_A13__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___SbyyctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___SbyyctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___SbyyctSQRd__lFQOyAiAE19presentationDetents_9selectionQrShyAA18PresentationDetentVG_AOyA20_GtFQOyACyAR20SessionControlsSheetVA0_G_Qo__A20_Qo__SbQo__SbQo__0O4Core0O19BuddyStatePublisherC5StateOQo__So21NLWorkoutPausedReasonVQo__SSACyAA6ButtonVyAA4TextVGAA023AccessibilityAttachmentT0VGA42_Qo__SSAGyA46__A46_tGA42_Qo__SbQo_Qo__AR24LowPowerInSessionOverlayVSgtGGA0_GAA022_EnvironmentKeyWritingT0VyAR0o9AnimationS0OGGA9_GMR);
  MEMORY[0x28223BE20](v18);
  v20 = &v46 - v19;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE15dynamicTypeSizeyQrAA07DynamiceF0OFQOyAA15ModifiedContentVyAHyAHyAA6ZStackVyAA05TupleC0VyAcAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaBRd__lFQOyAHyAHyAHyAHyAHy07WorkoutB0014MetricPlattersC0VAA24_BackgroundStyleModifierVyAA5ColorVGGAA16_FlexFrameLayoutVGAA14_OpacityEffectVGAA14_PaddingLayoutVGAA017_AppearanceActionX0VG_AcAE0O6Change2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAE5alert_AN7actions7messageQrqd___ASqd_0_yXEqd_1_yXEtSyRd__AaBRd_0_AaBRd_1_r1_lFQOyAcAEA17__ANA18_A19_Qrqd___ASqd_0_yXEqd_1_yXEtSyRd__AaBRd_0_AaBRd_1_r1_lFQOyAcAEA14_A15_A16__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAEA14_A15_A16__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAEA14_A15_A16__Qrqd___SbyyctSQRd__lFQOyAcAEA14_A15_A16__Qrqd___SbyyctSQRd__lFQOyAcAEA14_A15_A16__Qrqd___SbyyctSQRd__lFQOyAcAE19presentationDetents_9selectionQrShyAA18PresentationDetentVG_ARyA23_GtFQOyAHyAU20SessionControlsSheetVA3_G_Qo__A23_Qo__SbQo__SbQo__0S4Core0S19BuddyStatePublisherC5StateOQo__So21NLWorkoutPausedReasonVQo__SSAHyAA6ButtonVyAA4TextVGAA023AccessibilityAttachmentX0VGA45_Qo__SSALyA49__A49_tGA45_Qo__SbQo_Qo__AU24LowPowerInSessionOverlayVSgtGGA3_GAA022_EnvironmentKeyWritingX0VyAU0s9AnimationW0OGGA12_G_Qo_Md, &_s7SwiftUI4ViewPAAE15dynamicTypeSizeyQrAA07DynamiceF0OFQOyAA15ModifiedContentVyAHyAHyAA6ZStackVyAA05TupleC0VyAcAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaBRd__lFQOyAHyAHyAHyAHyAHy07WorkoutB0014MetricPlattersC0VAA24_BackgroundStyleModifierVyAA5ColorVGGAA16_FlexFrameLayoutVGAA14_OpacityEffectVGAA14_PaddingLayoutVGAA017_AppearanceActionX0VG_AcAE0O6Change2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAE5alert_AN7actions7messageQrqd___ASqd_0_yXEqd_1_yXEtSyRd__AaBRd_0_AaBRd_1_r1_lFQOyAcAEA17__ANA18_A19_Qrqd___ASqd_0_yXEqd_1_yXEtSyRd__AaBRd_0_AaBRd_1_r1_lFQOyAcAEA14_A15_A16__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAEA14_A15_A16__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAEA14_A15_A16__Qrqd___SbyyctSQRd__lFQOyAcAEA14_A15_A16__Qrqd___SbyyctSQRd__lFQOyAcAEA14_A15_A16__Qrqd___SbyyctSQRd__lFQOyAcAE19presentationDetents_9selectionQrShyAA18PresentationDetentVG_ARyA23_GtFQOyAHyAU20SessionControlsSheetVA3_G_Qo__A23_Qo__SbQo__SbQo__0S4Core0S19BuddyStatePublisherC5StateOQo__So21NLWorkoutPausedReasonVQo__SSAHyAA6ButtonVyAA4TextVGAA023AccessibilityAttachmentX0VGA45_Qo__SSALyA49__A49_tGA45_Qo__SbQo_Qo__AU24LowPowerInSessionOverlayVSgtGGA3_GAA022_EnvironmentKeyWritingX0VyAU0s9AnimationW0OGGA12_G_Qo_MR);
  v49 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v47 = &v46 - v21;
  *v9 = static Alignment.top.getter();
  *(v9 + 8) = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA05TupleD0VyAA0D0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaJRd__lFQOyAA15ModifiedContentVyAUyAUyAUyAUy07WorkoutB0014MetricPlattersD0VAA24_BackgroundStyleModifierVyAA5ColorVGGAA010_FlexFrameG0VGAA14_OpacityEffectVGAA08_PaddingG0VGAA017_AppearanceActionW0VG_AkAE0L6Change2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAkAE5alert_AM7actions7messageQrqd___ARqd_0_yXEqd_1_yXEtSyRd__AaJRd_0_AaJRd_1_r1_lFQOyAkAEA18__AMA19_A20_Qrqd___ARqd_0_yXEqd_1_yXEtSyRd__AaJRd_0_AaJRd_1_r1_lFQOyAkAEA15_A16_A17__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAkAEA15_A16_A17__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAkAEA15_A16_A17__Qrqd___SbyyctSQRd__lFQOyAkAEA15_A16_A17__Qrqd___SbyyctSQRd__lFQOyAkAEA15_A16_A17__Qrqd___SbyyctSQRd__lFQOyAkAE19presentationDetents_9selectionQrShyAA18PresentationDetentVG_AQyA24_GtFQOyAUyAV20SessionControlsSheetVA4_G_Qo__A24_Qo__SbQo__SbQo__0R4Core0R19BuddyStatePublisherC5StateOQo__So21NLWorkoutPausedReasonVQo__SSAUyAA6ButtonVyAA4TextVGAA023AccessibilityAttachmentW0VGA46_Qo__SSAIyA50__A50_tGA46_Qo__SbQo_Qo__AV24LowPowerInSessionOverlayVSgtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA05TupleD0VyAA0D0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaJRd__lFQOyAA15ModifiedContentVyAUyAUyAUyAUy07WorkoutB0014MetricPlattersD0VAA24_BackgroundStyleModifierVyAA5ColorVGGAA010_FlexFrameG0VGAA14_OpacityEffectVGAA08_PaddingG0VGAA017_AppearanceActionW0VG_AkAE0L6Change2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAkAE5alert_AM7actions7messageQrqd___ARqd_0_yXEqd_1_yXEtSyRd__AaJRd_0_AaJRd_1_r1_lFQOyAkAEA18__AMA19_A20_Qrqd___ARqd_0_yXEqd_1_yXEtSyRd__AaJRd_0_AaJRd_1_r1_lFQOyAkAEA15_A16_A17__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAkAEA15_A16_A17__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAkAEA15_A16_A17__Qrqd___SbyyctSQRd__lFQOyAkAEA15_A16_A17__Qrqd___SbyyctSQRd__lFQOyAkAEA15_A16_A17__Qrqd___SbyyctSQRd__lFQOyAkAE19presentationDetents_9selectionQrShyAA18PresentationDetentVG_AQyA24_GtFQOyAUyAV20SessionControlsSheetVA4_G_Qo__A24_Qo__SbQo__SbQo__0R4Core0R19BuddyStatePublisherC5StateOQo__So21NLWorkoutPausedReasonVQo__SSAUyAA6ButtonVyAA4TextVGAA023AccessibilityAttachmentW0VGA46_Qo__SSAIyA50__A50_tGA46_Qo__SbQo_Qo__AV24LowPowerInSessionOverlayVSgtGGMR);
  closure #1 in InSessionView.body.getter(v2, v9 + *(v23 + 44));
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  outlined init with take of ZStack<TupleView<(<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, LowPowerInSessionOverlay?)>>(v9, v13, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA0E0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaFRd__lFQOyAA15ModifiedContentVyAQyAQyAQyAQy07WorkoutB0014MetricPlattersE0VAA24_BackgroundStyleModifierVyAA5ColorVGGAA16_FlexFrameLayoutVGAA14_OpacityEffectVGAA08_PaddingX0VGAA017_AppearanceActionT0VG_AgAE0I6Change2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAgAE5alert_AI7actions7messageQrqd___ANqd_0_yXEqd_1_yXEtSyRd__AaFRd_0_AaFRd_1_r1_lFQOyAgAEA14__AIA15_A16_Qrqd___ANqd_0_yXEqd_1_yXEtSyRd__AaFRd_0_AaFRd_1_r1_lFQOyAgAEA11_A12_A13__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAgAEA11_A12_A13__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAgAEA11_A12_A13__Qrqd___SbyyctSQRd__lFQOyAgAEA11_A12_A13__Qrqd___SbyyctSQRd__lFQOyAgAEA11_A12_A13__Qrqd___SbyyctSQRd__lFQOyAgAE19presentationDetents_9selectionQrShyAA18PresentationDetentVG_AMyA20_GtFQOyAQyAR20SessionControlsSheetVA0_G_Qo__A20_Qo__SbQo__SbQo__0O4Core0O19BuddyStatePublisherC5StateOQo__So21NLWorkoutPausedReasonVQo__SSAQyAA6ButtonVyAA4TextVGAA023AccessibilityAttachmentT0VGA42_Qo__SSAEyA46__A46_tGA42_Qo__SbQo_Qo__AR24LowPowerInSessionOverlayVSgtGGMd, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA0E0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaFRd__lFQOyAA15ModifiedContentVyAQyAQyAQyAQy07WorkoutB0014MetricPlattersE0VAA24_BackgroundStyleModifierVyAA5ColorVGGAA16_FlexFrameLayoutVGAA14_OpacityEffectVGAA08_PaddingX0VGAA017_AppearanceActionT0VG_AgAE0I6Change2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAgAE5alert_AI7actions7messageQrqd___ANqd_0_yXEqd_1_yXEtSyRd__AaFRd_0_AaFRd_1_r1_lFQOyAgAEA14__AIA15_A16_Qrqd___ANqd_0_yXEqd_1_yXEtSyRd__AaFRd_0_AaFRd_1_r1_lFQOyAgAEA11_A12_A13__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAgAEA11_A12_A13__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAgAEA11_A12_A13__Qrqd___SbyyctSQRd__lFQOyAgAEA11_A12_A13__Qrqd___SbyyctSQRd__lFQOyAgAEA11_A12_A13__Qrqd___SbyyctSQRd__lFQOyAgAE19presentationDetents_9selectionQrShyAA18PresentationDetentVG_AMyA20_GtFQOyAQyAR20SessionControlsSheetVA0_G_Qo__A20_Qo__SbQo__SbQo__0O4Core0O19BuddyStatePublisherC5StateOQo__So21NLWorkoutPausedReasonVQo__SSAQyAA6ButtonVyAA4TextVGAA023AccessibilityAttachmentT0VGA42_Qo__SSAEyA46__A46_tGA42_Qo__SbQo_Qo__AR24LowPowerInSessionOverlayVSgtGGMR);
  v24 = &v13[*(v11 + 44)];
  v25 = v60;
  *(v24 + 4) = v59;
  *(v24 + 5) = v25;
  *(v24 + 6) = v61;
  v26 = v56;
  *v24 = v55;
  *(v24 + 1) = v26;
  v27 = v58;
  *(v24 + 2) = v57;
  *(v24 + 3) = v27;
  LOBYTE(v9) = dispatch thunk of LowPowerModeMonitor.lowPowerModeEnabled.getter();
  KeyPath = swift_getKeyPath();
  outlined init with take of ZStack<TupleView<(<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, LowPowerInSessionOverlay?)>>(v13, v17, &_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyAA0G0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaHRd__lFQOyACyACyACyACyACy07WorkoutB0014MetricPlattersG0VAA24_BackgroundStyleModifierVyAA5ColorVGGAA16_FlexFrameLayoutVGAA14_OpacityEffectVGAA08_PaddingX0VGAA017_AppearanceActionT0VG_AiAE0K6Change2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAiAE5alert_AK7actions7messageQrqd___APqd_0_yXEqd_1_yXEtSyRd__AaHRd_0_AaHRd_1_r1_lFQOyAiAEA14__AKA15_A16_Qrqd___APqd_0_yXEqd_1_yXEtSyRd__AaHRd_0_AaHRd_1_r1_lFQOyAiAEA11_A12_A13__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___SbyyctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___SbyyctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___SbyyctSQRd__lFQOyAiAE19presentationDetents_9selectionQrShyAA18PresentationDetentVG_AOyA20_GtFQOyACyAR20SessionControlsSheetVA0_G_Qo__A20_Qo__SbQo__SbQo__0O4Core0O19BuddyStatePublisherC5StateOQo__So21NLWorkoutPausedReasonVQo__SSACyAA6ButtonVyAA4TextVGAA023AccessibilityAttachmentT0VGA42_Qo__SSAGyA46__A46_tGA42_Qo__SbQo_Qo__AR24LowPowerInSessionOverlayVSgtGGA0_GMd, &_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyAA0G0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaHRd__lFQOyACyACyACyACyACy07WorkoutB0014MetricPlattersG0VAA24_BackgroundStyleModifierVyAA5ColorVGGAA16_FlexFrameLayoutVGAA14_OpacityEffectVGAA08_PaddingX0VGAA017_AppearanceActionT0VG_AiAE0K6Change2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAiAE5alert_AK7actions7messageQrqd___APqd_0_yXEqd_1_yXEtSyRd__AaHRd_0_AaHRd_1_r1_lFQOyAiAEA14__AKA15_A16_Qrqd___APqd_0_yXEqd_1_yXEtSyRd__AaHRd_0_AaHRd_1_r1_lFQOyAiAEA11_A12_A13__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___SbyyctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___SbyyctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___SbyyctSQRd__lFQOyAiAE19presentationDetents_9selectionQrShyAA18PresentationDetentVG_AOyA20_GtFQOyACyAR20SessionControlsSheetVA0_G_Qo__A20_Qo__SbQo__SbQo__0O4Core0O19BuddyStatePublisherC5StateOQo__So21NLWorkoutPausedReasonVQo__SSACyAA6ButtonVyAA4TextVGAA023AccessibilityAttachmentT0VGA42_Qo__SSAGyA46__A46_tGA42_Qo__SbQo_Qo__AR24LowPowerInSessionOverlayVSgtGGA0_GMR);
  v29 = &v17[*(v15 + 44)];
  *v29 = KeyPath;
  v29[8] = v9 & 1;
  outlined init with copy of InSessionView(v2, &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v31 = swift_allocObject();
  outlined init with take of InSessionView(&v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v31 + v30, type metadata accessor for InSessionView);
  outlined init with take of ZStack<TupleView<(<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, LowPowerInSessionOverlay?)>>(v17, v20, &_s7SwiftUI15ModifiedContentVyACyAA6ZStackVyAA9TupleViewVyAA0G0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaHRd__lFQOyACyACyACyACyACy07WorkoutB0014MetricPlattersG0VAA24_BackgroundStyleModifierVyAA5ColorVGGAA16_FlexFrameLayoutVGAA14_OpacityEffectVGAA08_PaddingX0VGAA017_AppearanceActionT0VG_AiAE0K6Change2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAiAE5alert_AK7actions7messageQrqd___APqd_0_yXEqd_1_yXEtSyRd__AaHRd_0_AaHRd_1_r1_lFQOyAiAEA14__AKA15_A16_Qrqd___APqd_0_yXEqd_1_yXEtSyRd__AaHRd_0_AaHRd_1_r1_lFQOyAiAEA11_A12_A13__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___SbyyctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___SbyyctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___SbyyctSQRd__lFQOyAiAE19presentationDetents_9selectionQrShyAA18PresentationDetentVG_AOyA20_GtFQOyACyAR20SessionControlsSheetVA0_G_Qo__A20_Qo__SbQo__SbQo__0O4Core0O19BuddyStatePublisherC5StateOQo__So21NLWorkoutPausedReasonVQo__SSACyAA6ButtonVyAA4TextVGAA023AccessibilityAttachmentT0VGA42_Qo__SSAGyA46__A46_tGA42_Qo__SbQo_Qo__AR24LowPowerInSessionOverlayVSgtGGA0_GAA022_EnvironmentKeyWritingT0VyAR0o9AnimationS0OGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ZStackVyAA9TupleViewVyAA0G0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaHRd__lFQOyACyACyACyACyACy07WorkoutB0014MetricPlattersG0VAA24_BackgroundStyleModifierVyAA5ColorVGGAA16_FlexFrameLayoutVGAA14_OpacityEffectVGAA08_PaddingX0VGAA017_AppearanceActionT0VG_AiAE0K6Change2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAiAE5alert_AK7actions7messageQrqd___APqd_0_yXEqd_1_yXEtSyRd__AaHRd_0_AaHRd_1_r1_lFQOyAiAEA14__AKA15_A16_Qrqd___APqd_0_yXEqd_1_yXEtSyRd__AaHRd_0_AaHRd_1_r1_lFQOyAiAEA11_A12_A13__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___SbyyctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___SbyyctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___SbyyctSQRd__lFQOyAiAE19presentationDetents_9selectionQrShyAA18PresentationDetentVG_AOyA20_GtFQOyACyAR20SessionControlsSheetVA0_G_Qo__A20_Qo__SbQo__SbQo__0O4Core0O19BuddyStatePublisherC5StateOQo__So21NLWorkoutPausedReasonVQo__SSACyAA6ButtonVyAA4TextVGAA023AccessibilityAttachmentT0VGA42_Qo__SSAGyA46__A46_tGA42_Qo__SbQo_Qo__AR24LowPowerInSessionOverlayVSgtGGA0_GAA022_EnvironmentKeyWritingT0VyAR0o9AnimationS0OGGMR);
  v32 = &v20[*(v18 + 36)];
  *v32 = partial apply for closure #2 in InSessionView.body.getter;
  v32[1] = v31;
  v32[2] = 0;
  v32[3] = 0;
  v34 = v52;
  v33 = v53;
  v35 = v50;
  (*(v52 + 104))(v50, *MEMORY[0x277CDF9D8], v53);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ZStack<TupleView<(<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, LowPowerInSessionOverlay?)>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<WorkoutAnimationStyle>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>( &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ZStack<TupleView<(<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, LowPowerInSessionOverlay?)>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<WorkoutAnimationStyle>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>,  &_s7SwiftUI15ModifiedContentVyACyACyAA6ZStackVyAA9TupleViewVyAA0G0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaHRd__lFQOyACyACyACyACyACy07WorkoutB0014MetricPlattersG0VAA24_BackgroundStyleModifierVyAA5ColorVGGAA16_FlexFrameLayoutVGAA14_OpacityEffectVGAA08_PaddingX0VGAA017_AppearanceActionT0VG_AiAE0K6Change2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAiAE5alert_AK7actions7messageQrqd___APqd_0_yXEqd_1_yXEtSyRd__AaHRd_0_AaHRd_1_r1_lFQOyAiAEA14__AKA15_A16_Qrqd___APqd_0_yXEqd_1_yXEtSyRd__AaHRd_0_AaHRd_1_r1_lFQOyAiAEA11_A12_A13__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___SbyyctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___SbyyctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___SbyyctSQRd__lFQOyAiAE19presentationDetents_9selectionQrShyAA18PresentationDetentVG_AOyA20_GtFQOyACyAR20SessionControlsSheetVA0_G_Qo__A20_Qo__SbQo__SbQo__0O4Core0O19BuddyStatePublisherC5StateOQo__So21NLWorkoutPausedReasonVQo__SSACyAA6ButtonVyAA4TextVGAA023AccessibilityAttachmentT0VGA42_Qo__SSAGyA46__A46_tGA42_Qo__SbQo_Qo__AR24LowPowerInSessionOverlayVSgtGGA0_GAA022_EnvironmentKeyWritingT0VyAR0o9AnimationS0OGGA9_GMd,  &_s7SwiftUI15ModifiedContentVyACyACyAA6ZStackVyAA9TupleViewVyAA0G0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaHRd__lFQOyACyACyACyACyACy07WorkoutB0014MetricPlattersG0VAA24_BackgroundStyleModifierVyAA5ColorVGGAA16_FlexFrameLayoutVGAA14_OpacityEffectVGAA08_PaddingX0VGAA017_AppearanceActionT0VG_AiAE0K6Change2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAiAE5alert_AK7actions7messageQrqd___APqd_0_yXEqd_1_yXEtSyRd__AaHRd_0_AaHRd_1_r1_lFQOyAiAEA14__AKA15_A16_Qrqd___APqd_0_yXEqd_1_yXEtSyRd__AaHRd_0_AaHRd_1_r1_lFQOyAiAEA11_A12_A13__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___SbyyctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___SbyyctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___SbyyctSQRd__lFQOyAiAE19presentationDetents_9selectionQrShyAA18PresentationDetentVG_AOyA20_GtFQOyACyAR20SessionControlsSheetVA0_G_Qo__A20_Qo__SbQo__SbQo__0O4Core0O19BuddyStatePublisherC5StateOQo__So21NLWorkoutPausedReasonVQo__SSACyAA6ButtonVyAA4TextVGAA023AccessibilityAttachmentT0VGA42_Qo__SSAGyA46__A46_tGA42_Qo__SbQo_Qo__AR24LowPowerInSessionOverlayVSgtGGA0_GAA022_EnvironmentKeyWritingT0VyAR0o9AnimationS0OGGA9_GMR,  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ZStack<TupleView<(<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, LowPowerInSessionOverlay?)>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<WorkoutAnimationStyle>> and conformance <> ModifiedContent<A, B>);
  v36 = v47;
  View.dynamicTypeSize(_:)();
  (*(v34 + 8))(v35, v33);
  sub_20C6987A4(v20);
  v37 = swift_getKeyPath();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE15dynamicTypeSizeyQrAA07DynamicgH0OFQOyACyACyACyAA6ZStackVyAA05TupleE0VyAeAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaDRd__lFQOyACyACyACyACyACy07WorkoutB0014MetricPlattersE0VAA24_BackgroundStyleModifierVyAA5ColorVGGAA16_FlexFrameLayoutVGAA14_OpacityEffectVGAA14_PaddingLayoutVGAA017_AppearanceActionX0VG_AeAE0O6Change2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAeAE5alert_AN7actions7messageQrqd___ASqd_0_yXEqd_1_yXEtSyRd__AaDRd_0_AaDRd_1_r1_lFQOyAeAEA17__ANA18_A19_Qrqd___ASqd_0_yXEqd_1_yXEtSyRd__AaDRd_0_AaDRd_1_r1_lFQOyAeAEA14_A15_A16__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAeAEA14_A15_A16__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAeAEA14_A15_A16__Qrqd___SbyyctSQRd__lFQOyAeAEA14_A15_A16__Qrqd___SbyyctSQRd__lFQOyAeAEA14_A15_A16__Qrqd___SbyyctSQRd__lFQOyAeAE19presentationDetents_9selectionQrShyAA18PresentationDetentVG_ARyA23_GtFQOyACyAU20SessionControlsSheetVA3_G_Qo__A23_Qo__SbQo__SbQo__0S4Core0S19BuddyStatePublisherC5StateOQo__So21NLWorkoutPausedReasonVQo__SSACyAA6ButtonVyAA4TextVGAA023AccessibilityAttachmentX0VGA45_Qo__SSALyA49__A49_tGA45_Qo__SbQo_Qo__AU24LowPowerInSessionOverlayVSgtGGA3_GAA022_EnvironmentKeyWritingX0VyAU0s9AnimationW0OGGA12_G_Qo_A62_yAA16LegibilityWeightOSgGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE15dynamicTypeSizeyQrAA07DynamicgH0OFQOyACyACyACyAA6ZStackVyAA05TupleE0VyAeAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaDRd__lFQOyACyACyACyACyACy07WorkoutB0014MetricPlattersE0VAA24_BackgroundStyleModifierVyAA5ColorVGGAA16_FlexFrameLayoutVGAA14_OpacityEffectVGAA14_PaddingLayoutVGAA017_AppearanceActionX0VG_AeAE0O6Change2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAeAE5alert_AN7actions7messageQrqd___ASqd_0_yXEqd_1_yXEtSyRd__AaDRd_0_AaDRd_1_r1_lFQOyAeAEA17__ANA18_A19_Qrqd___ASqd_0_yXEqd_1_yXEtSyRd__AaDRd_0_AaDRd_1_r1_lFQOyAeAEA14_A15_A16__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAeAEA14_A15_A16__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAeAEA14_A15_A16__Qrqd___SbyyctSQRd__lFQOyAeAEA14_A15_A16__Qrqd___SbyyctSQRd__lFQOyAeAEA14_A15_A16__Qrqd___SbyyctSQRd__lFQOyAeAE19presentationDetents_9selectionQrShyAA18PresentationDetentVG_ARyA23_GtFQOyACyAU20SessionControlsSheetVA3_G_Qo__A23_Qo__SbQo__SbQo__0S4Core0S19BuddyStatePublisherC5StateOQo__So21NLWorkoutPausedReasonVQo__SSACyAA6ButtonVyAA4TextVGAA023AccessibilityAttachmentX0VGA45_Qo__SSALyA49__A49_tGA45_Qo__SbQo_Qo__AU24LowPowerInSessionOverlayVSgtGGA3_GAA022_EnvironmentKeyWritingX0VyAU0s9AnimationW0OGGA12_G_Qo_A62_yAA16LegibilityWeightOSgGGMR);
  v39 = v54;
  v40 = (v54 + *(v38 + 36));
  v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA16LegibilityWeightOSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA16LegibilityWeightOSgGMR) + 28);
  v42 = *MEMORY[0x277CDFB78];
  v43 = type metadata accessor for LegibilityWeight();
  v44 = *(v43 - 8);
  (*(v44 + 104))(v40 + v41, v42, v43);
  (*(v44 + 56))(v40 + v41, 0, 1, v43);
  *v40 = v37;
  return (*(v49 + 32))(v39, v36, v51);
}

uint64_t closure #1 in InSessionView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v151 = a2;
  v3 = type metadata accessor for InSessionView(0);
  v142 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v145 = &v128 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = v4;
  MEMORY[0x28223BE20](v5);
  v143 = &v128 - v6;
  v134 = type metadata accessor for MetricPlatter();
  v129 = *(v134 - 8);
  MEMORY[0x28223BE20](v134);
  v132 = &v128 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MetricPlattersView(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v128 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v131 = &v128 - v12;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB018MetricPlattersViewVAA24_BackgroundStyleModifierVyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB018MetricPlattersViewVAA24_BackgroundStyleModifierVyAA5ColorVGGMR);
  MEMORY[0x28223BE20](v133);
  v136 = &v128 - v13;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB018MetricPlattersViewVAA24_BackgroundStyleModifierVyAA5ColorVGGAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB018MetricPlattersViewVAA24_BackgroundStyleModifierVyAA5ColorVGGAA16_FlexFrameLayoutVGMR);
  MEMORY[0x28223BE20](v135);
  v138 = &v128 - v14;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB018MetricPlattersViewVAA24_BackgroundStyleModifierVyAA5ColorVGGAA16_FlexFrameLayoutVGAA14_OpacityEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB018MetricPlattersViewVAA24_BackgroundStyleModifierVyAA5ColorVGGAA16_FlexFrameLayoutVGAA14_OpacityEffectVGMR);
  MEMORY[0x28223BE20](v137);
  v140 = &v128 - v15;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACy07WorkoutB018MetricPlattersViewVAA24_BackgroundStyleModifierVyAA5ColorVGGAA16_FlexFrameLayoutVGAA14_OpacityEffectVGAA08_PaddingO0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACy07WorkoutB018MetricPlattersViewVAA24_BackgroundStyleModifierVyAA5ColorVGGAA16_FlexFrameLayoutVGAA14_OpacityEffectVGAA08_PaddingO0VGMR);
  MEMORY[0x28223BE20](v139);
  v141 = &v128 - v16;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACy07WorkoutB018MetricPlattersViewVAA24_BackgroundStyleModifierVyAA5ColorVGGAA16_FlexFrameLayoutVGAA14_OpacityEffectVGAA08_PaddingO0VGAA017_AppearanceActionK0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACy07WorkoutB018MetricPlattersViewVAA24_BackgroundStyleModifierVyAA5ColorVGGAA16_FlexFrameLayoutVGAA14_OpacityEffectVGAA08_PaddingO0VGAA017_AppearanceActionK0VGMR);
  MEMORY[0x28223BE20](v152);
  v153 = &v128 - v17;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaBRd__lFQOyAA15ModifiedContentVyAMyAMyAMyAMy07WorkoutB0014MetricPlattersC0VAA24_BackgroundStyleModifierVyAA5ColorVGGAA16_FlexFrameLayoutVGAA14_OpacityEffectVGAA08_PaddingV0VGAA017_AppearanceActionR0VG_AcAE0G6Change2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAE5alert_AE7actions7messageQrqd___AJqd_0_yXEqd_1_yXEtSyRd__AaBRd_0_AaBRd_1_r1_lFQOyAcAEA10__AEA11_A12_Qrqd___AJqd_0_yXEqd_1_yXEtSyRd__AaBRd_0_AaBRd_1_r1_lFQOyAcAEA7_A8_A9__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAEA7_A8_A9__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAEA7_A8_A9__Qrqd___SbyyctSQRd__lFQOyAcAEA7_A8_A9__Qrqd___SbyyctSQRd__lFQOyAcAEA7_A8_A9__Qrqd___SbyyctSQRd__lFQOyAcAE19presentationDetents_9selectionQrShyAA18PresentationDetentVG_AIyA16_GtFQOyAMyAN20SessionControlsSheetVAXG_Qo__A16_Qo__SbQo__SbQo__0M4Core0M19BuddyStatePublisherC5StateOQo__So21NLWorkoutPausedReasonVQo__SSAMyAA6ButtonVyAA4TextVGAA023AccessibilityAttachmentR0VGA38_Qo__SSAA05TupleC0VyA42__A42_tGA38_Qo__SbQo_Qo_Md, &_s7SwiftUI4ViewPAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaBRd__lFQOyAA15ModifiedContentVyAMyAMyAMyAMy07WorkoutB0014MetricPlattersC0VAA24_BackgroundStyleModifierVyAA5ColorVGGAA16_FlexFrameLayoutVGAA14_OpacityEffectVGAA08_PaddingV0VGAA017_AppearanceActionR0VG_AcAE0G6Change2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAE5alert_AE7actions7messageQrqd___AJqd_0_yXEqd_1_yXEtSyRd__AaBRd_0_AaBRd_1_r1_lFQOyAcAEA10__AEA11_A12_Qrqd___AJqd_0_yXEqd_1_yXEtSyRd__AaBRd_0_AaBRd_1_r1_lFQOyAcAEA7_A8_A9__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAEA7_A8_A9__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAEA7_A8_A9__Qrqd___SbyyctSQRd__lFQOyAcAEA7_A8_A9__Qrqd___SbyyctSQRd__lFQOyAcAEA7_A8_A9__Qrqd___SbyyctSQRd__lFQOyAcAE19presentationDetents_9selectionQrShyAA18PresentationDetentVG_AIyA16_GtFQOyAMyAN20SessionControlsSheetVAXG_Qo__A16_Qo__SbQo__SbQo__0M4Core0M19BuddyStatePublisherC5StateOQo__So21NLWorkoutPausedReasonVQo__SSAMyAA6ButtonVyAA4TextVGAA023AccessibilityAttachmentR0VGA38_Qo__SSAA05TupleC0VyA42__A42_tGA38_Qo__SbQo_Qo_MR);
  v149 = *(v150 - 8);
  MEMORY[0x28223BE20](v150);
  v148 = &v128 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v147 = &v128 - v20;
  v21 = *(a1 + 16);
  v22 = *(a1 + 64);
  v23 = *(v3 + 52);
  v154 = v3;
  v24 = *(a1 + v23);
  v25 = v22;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy07WorkoutB016SessionViewModelCGMd, &_s7SwiftUI8BindableVy07WorkoutB016SessionViewModelCGMR);
  v146 = a1;
  Bindable.wrappedValue.getter();
  v26 = v166;
  swift_getKeyPath();
  *&v166 = v26;
  _s11WorkoutCore19LowPowerModeMonitorCAC7Combine16ObservableObjectAAWlTm_2(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, type metadata accessor for SessionViewModel, &protocol conformance descriptor for SessionViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v27 = *(v26 + 24);

  v28 = dispatch thunk of WorkoutConfiguration.activityType.getter();

  *(v10 + 9) = swift_getKeyPath();
  v10[80] = 0;
  *(v10 + 7) = xmmword_20CB8B9A0;
  v29 = *(v8 + 64);
  *&v10[v29] = AppStorage.init<A>(wrappedValue:_:store:)();
  v130 = v8;
  v30 = &v10[*(v8 + 68)];
  LOBYTE(v155) = 0;
  State.init(wrappedValue:)();
  v31 = *(&v166 + 1);
  *v30 = v166;
  *(v30 + 1) = v31;
  *(v10 + 13) = v25;
  *v10 = v21;
  v21;
  MetricsPublisher.platterPublisher.getter();
  type metadata accessor for PlatterPublisher();
  _s11WorkoutCore19LowPowerModeMonitorCAC7Combine16ObservableObjectAAWlTm_2(&lazy protocol witness table cache variable for type PlatterPublisher and conformance PlatterPublisher, MEMORY[0x277D7E0A0], MEMORY[0x277D7E098]);
  *(v10 + 1) = ObservedObject.init(wrappedValue:)();
  *(v10 + 2) = v32;
  type metadata accessor for WorkoutNotificationCenter();
  _s11WorkoutCore19LowPowerModeMonitorCAC7Combine16ObservableObjectAAWlTm_2(&lazy protocol witness table cache variable for type WorkoutNotificationCenter and conformance WorkoutNotificationCenter, MEMORY[0x277D7DB78], MEMORY[0x277D7DB70]);

  *(v10 + 5) = ObservedObject.init(wrappedValue:)();
  *(v10 + 6) = v33;
  *(v10 + 11) = v24;
  MetricsPublisher.workoutStatePublisher.getter();
  type metadata accessor for WorkoutStatePublisher();
  _s11WorkoutCore19LowPowerModeMonitorCAC7Combine16ObservableObjectAAWlTm_2(&lazy protocol witness table cache variable for type WorkoutStatePublisher and conformance WorkoutStatePublisher, MEMORY[0x277D7DA88], MEMORY[0x277D7DA78]);
  *(v10 + 3) = ObservedObject.init(wrappedValue:)();
  *(v10 + 4) = v34;
  *(v10 + 12) = v28;
  MetricsPublisher.platterPublisher.getter();
  v35 = PlatterPublisher.metricPlatters.getter();

  if (*(v35 + 16))
  {
    v36 = v129;
    v37 = *(v129 + 16);
    v38 = v132;
    v39 = v134;
    v37(v132, v35 + ((*(v129 + 80) + 32) & ~*(v129 + 80)), v134);

    v40 = &v10[*(v130 + 60)];
    v37(v40, v38, v39);
    *&v40[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy11WorkoutCore13MetricPlatterVGMd, &_s7SwiftUI5StateVy11WorkoutCore13MetricPlatterVGMR) + 28)] = 0;
    MetricsPublisher.workoutBuddyStatePublisher.getter();
    type metadata accessor for WorkoutBuddyStatePublisher();
    _s11WorkoutCore19LowPowerModeMonitorCAC7Combine16ObservableObjectAAWlTm_2(&lazy protocol witness table cache variable for type WorkoutBuddyStatePublisher and conformance WorkoutBuddyStatePublisher, MEMORY[0x277D7DBD0], MEMORY[0x277D7DBC8]);
    *(v10 + 7) = ObservedObject.init(wrappedValue:)();
    *(v10 + 8) = v41;
    MetricPlattersView.logMetricPlatters()();
    (*(v36 + 8))(v38, v39);
    v42 = v131;
    outlined init with take of InSessionView(v10, v131, type metadata accessor for MetricPlattersView);
    if (one-time initialization token for defaultBackground != -1)
    {
      swift_once();
    }

    v43 = static SessionViewColors.defaultBackground;
    v44 = static Edge.Set.all.getter();
    v45 = v42;
    v46 = v136;
    outlined init with take of InSessionView(v45, v136, type metadata accessor for MetricPlattersView);
    v47 = v46 + *(v133 + 36);
    *v47 = v43;
    *(v47 + 8) = v44;

    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v48 = v138;
    outlined init with take of ModifiedContent<MetricPlattersView, _BackgroundStyleModifier<Color>>(v46, v138, &_s7SwiftUI15ModifiedContentVy07WorkoutB018MetricPlattersViewVAA24_BackgroundStyleModifierVyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB018MetricPlattersViewVAA24_BackgroundStyleModifierVyAA5ColorVGGMR);
    v49 = (v48 + *(v135 + 36));
    v50 = v171;
    v49[4] = v170;
    v49[5] = v50;
    v49[6] = v172;
    v51 = v167;
    *v49 = v166;
    v49[1] = v51;
    v52 = v169;
    v49[2] = v168;
    v49[3] = v52;
    v53 = v146;
    v54 = *(v146 + 120);
    v155 = *(v146 + 112);
    v156 = v54;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB0015SessionControlsC0CGMd, &_s7SwiftUI5StateVy07WorkoutB0015SessionControlsC0CGMR);
    State.wrappedValue.getter();
    v55 = v165;
    swift_getKeyPath();
    v155 = v55;
    _s11WorkoutCore19LowPowerModeMonitorCAC7Combine16ObservableObjectAAWlTm_2(&lazy protocol witness table cache variable for type SessionControlsState and conformance SessionControlsState, type metadata accessor for SessionControlsState, &protocol conformance descriptor for SessionControlsState);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_beginAccess();
    v56 = *(v55 + 16);

    if (v56)
    {
      v57 = 0.5;
    }

    else
    {
      v57 = 1.0;
    }

    v58 = v140;
    outlined init with take of ModifiedContent<MetricPlattersView, _BackgroundStyleModifier<Color>>(v48, v140, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB018MetricPlattersViewVAA24_BackgroundStyleModifierVyAA5ColorVGGAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB018MetricPlattersViewVAA24_BackgroundStyleModifierVyAA5ColorVGGAA16_FlexFrameLayoutVGMR);
    *(v58 + *(v137 + 36)) = v57;
    v59 = static Edge.Set.bottom.getter();
    v60 = v154;
    EdgeInsets.init(_all:)();
    v62 = v61;
    v64 = v63;
    v66 = v65;
    v68 = v67;
    v69 = v58;
    v70 = v141;
    outlined init with take of ModifiedContent<MetricPlattersView, _BackgroundStyleModifier<Color>>(v69, v141, &_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB018MetricPlattersViewVAA24_BackgroundStyleModifierVyAA5ColorVGGAA16_FlexFrameLayoutVGAA14_OpacityEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB018MetricPlattersViewVAA24_BackgroundStyleModifierVyAA5ColorVGGAA16_FlexFrameLayoutVGAA14_OpacityEffectVGMR);
    v71 = v70 + *(v139 + 36);
    *v71 = v59;
    *(v71 + 8) = v62;
    *(v71 + 16) = v64;
    *(v71 + 24) = v66;
    *(v71 + 32) = v68;
    *(v71 + 40) = 0;
    v72 = v143;
    outlined init with copy of InSessionView(v53, v143);
    v73 = (*(v142 + 80) + 16) & ~*(v142 + 80);
    v74 = swift_allocObject();
    outlined init with take of InSessionView(v72, v74 + v73, type metadata accessor for InSessionView);
    v75 = v70;
    v76 = v153;
    outlined init with take of ModifiedContent<MetricPlattersView, _BackgroundStyleModifier<Color>>(v75, v153, &_s7SwiftUI15ModifiedContentVyACyACyACy07WorkoutB018MetricPlattersViewVAA24_BackgroundStyleModifierVyAA5ColorVGGAA16_FlexFrameLayoutVGAA14_OpacityEffectVGAA08_PaddingO0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACy07WorkoutB018MetricPlattersViewVAA24_BackgroundStyleModifierVyAA5ColorVGGAA16_FlexFrameLayoutVGAA14_OpacityEffectVGAA08_PaddingO0VGMR);
    v77 = (v76 + *(v152 + 36));
    *v77 = partial apply for closure #1 in closure #1 in InSessionView.body.getter;
    v77[1] = v74;
    v77[2] = 0;
    v77[3] = 0;
    v78 = v53 + *(v60 + 68);
    v79 = *v78;
    v80 = *(v78 + 8);
    v163 = v79;
    v164 = v80;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
    State.projectedValue.getter();
    v141 = v155;
    v140 = v156;
    LODWORD(v142) = v157;
    outlined init with copy of InSessionView(v53, v72);
    v139 = swift_allocObject();
    outlined init with take of InSessionView(v72, v139 + v73, type metadata accessor for InSessionView);
    v81 = v145;
    outlined init with copy of InSessionView(v53, v145);
    v144 = swift_allocObject();
    outlined init with take of InSessionView(v81, v144 + v73, type metadata accessor for InSessionView);
    v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAE5alert_11isPresented7actions7messageQrqd___AA7BindingVySbGqd_0_yXEqd_1_yXEtSyRd__AaBRd_0_AaBRd_1_r1_lFQOyAcAEAG_AhiJQrqd___AMqd_0_yXEqd_1_yXEtSyRd__AaBRd_0_AaBRd_1_r1_lFQOyAcAEAdeF_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAEAdeF_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAcAE19presentationDetents_9selectionQrShyAA18PresentationDetentVG_ALyAQGtFQOyAA15ModifiedContentVy07WorkoutB020SessionControlsSheetVAA16_FlexFrameLayoutVG_Qo__AQQo__SbQo__SbQo__0U4Core0U19BuddyStatePublisherC5StateOQo__So21NLWorkoutPausedReasonVQo__SSAUyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGA16_Qo__SSAA05TupleC0VyA20__A20_tGA16_Qo__SbQo_Md, &_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAE5alert_11isPresented7actions7messageQrqd___AA7BindingVySbGqd_0_yXEqd_1_yXEtSyRd__AaBRd_0_AaBRd_1_r1_lFQOyAcAEAG_AhiJQrqd___AMqd_0_yXEqd_1_yXEtSyRd__AaBRd_0_AaBRd_1_r1_lFQOyAcAEAdeF_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAEAdeF_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAcAE19presentationDetents_9selectionQrShyAA18PresentationDetentVG_ALyAQGtFQOyAA15ModifiedContentVy07WorkoutB020SessionControlsSheetVAA16_FlexFrameLayoutVG_Qo__AQQo__SbQo__SbQo__0U4Core0U19BuddyStatePublisherC5StateOQo__So21NLWorkoutPausedReasonVQo__SSAUyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGA16_Qo__SSAA05TupleC0VyA20__A20_tGA16_Qo__SbQo_MR);
    v143 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ZStack<TupleView<(<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, LowPowerInSessionOverlay?)>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<WorkoutAnimationStyle>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<MetricPlattersView, _BackgroundStyleModifier<Color>>, _FlexFrameLayout>, _OpacityEffect>, _PaddingLayout>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyACyACyACy07WorkoutB018MetricPlattersViewVAA24_BackgroundStyleModifierVyAA5ColorVGGAA16_FlexFrameLayoutVGAA14_OpacityEffectVGAA08_PaddingO0VGAA017_AppearanceActionK0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACy07WorkoutB018MetricPlattersViewVAA24_BackgroundStyleModifierVyAA5ColorVGGAA16_FlexFrameLayoutVGAA14_OpacityEffectVGAA08_PaddingO0VGAA017_AppearanceActionK0VGMR, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<MetricPlattersView, _BackgroundStyleModifier<Color>>, _FlexFrameLayout>, _OpacityEffect>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
    v138 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE5alert_11isPresented7actions7messageQrqd___AA7BindingVySbGqd_0_yXEqd_1_yXEtSyRd__AaBRd_0_AaBRd_1_r1_lFQOyAcAEAD_AefGQrqd___AJqd_0_yXEqd_1_yXEtSyRd__AaBRd_0_AaBRd_1_r1_lFQOyAcAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAEAklM_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAEAklM_Qrqd___SbyyctSQRd__lFQOyAcAEAklM_Qrqd___SbyyctSQRd__lFQOyAcAEAklM_Qrqd___SbyyctSQRd__lFQOyAcAE19presentationDetents_9selectionQrShyAA18PresentationDetentVG_AIyAQGtFQOyAA15ModifiedContentVy07WorkoutB020SessionControlsSheetVAA16_FlexFrameLayoutVG_Qo__AQQo__SbQo__SbQo__0U4Core0U19BuddyStatePublisherC5StateOQo__So21NLWorkoutPausedReasonVQo__SSAUyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGA16_Qo__SSAA05TupleC0VyA20__A20_tGA16_Qo_Md, &_s7SwiftUI4ViewPAAE5alert_11isPresented7actions7messageQrqd___AA7BindingVySbGqd_0_yXEqd_1_yXEtSyRd__AaBRd_0_AaBRd_1_r1_lFQOyAcAEAD_AefGQrqd___AJqd_0_yXEqd_1_yXEtSyRd__AaBRd_0_AaBRd_1_r1_lFQOyAcAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAEAklM_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAEAklM_Qrqd___SbyyctSQRd__lFQOyAcAEAklM_Qrqd___SbyyctSQRd__lFQOyAcAEAklM_Qrqd___SbyyctSQRd__lFQOyAcAE19presentationDetents_9selectionQrShyAA18PresentationDetentVG_AIyAQGtFQOyAA15ModifiedContentVy07WorkoutB020SessionControlsSheetVAA16_FlexFrameLayoutVG_Qo__AQQo__SbQo__SbQo__0U4Core0U19BuddyStatePublisherC5StateOQo__So21NLWorkoutPausedReasonVQo__SSAUyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGA16_Qo__SSAA05TupleC0VyA20__A20_tGA16_Qo_MR);
    v137 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE5alert_11isPresented7actions7messageQrqd___AA7BindingVySbGqd_0_yXEqd_1_yXEtSyRd__AaBRd_0_AaBRd_1_r1_lFQOyAcAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAEAklM_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAEAklM_Qrqd___SbyyctSQRd__lFQOyAcAEAklM_Qrqd___SbyyctSQRd__lFQOyAcAEAklM_Qrqd___SbyyctSQRd__lFQOyAcAE19presentationDetents_9selectionQrShyAA18PresentationDetentVG_AIyAQGtFQOyAA15ModifiedContentVy07WorkoutB020SessionControlsSheetVAA16_FlexFrameLayoutVG_Qo__AQQo__SbQo__SbQo__0U4Core0U19BuddyStatePublisherC5StateOQo__So21NLWorkoutPausedReasonVQo__SSAUyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGA16_Qo_Md, &_s7SwiftUI4ViewPAAE5alert_11isPresented7actions7messageQrqd___AA7BindingVySbGqd_0_yXEqd_1_yXEtSyRd__AaBRd_0_AaBRd_1_r1_lFQOyAcAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAEAklM_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAEAklM_Qrqd___SbyyctSQRd__lFQOyAcAEAklM_Qrqd___SbyyctSQRd__lFQOyAcAEAklM_Qrqd___SbyyctSQRd__lFQOyAcAE19presentationDetents_9selectionQrShyAA18PresentationDetentVG_AIyAQGtFQOyAA15ModifiedContentVy07WorkoutB020SessionControlsSheetVAA16_FlexFrameLayoutVG_Qo__AQQo__SbQo__SbQo__0U4Core0U19BuddyStatePublisherC5StateOQo__So21NLWorkoutPausedReasonVQo__SSAUyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGA16_Qo_MR);
    v136 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVG_AMtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVG_AMtGMR);
    v135 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAEAdeF_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAcAE19presentationDetents_9selectionQrShyAA18PresentationDetentVG_AA7BindingVyAJGtFQOyAA15ModifiedContentVy07WorkoutB020SessionControlsSheetVAA16_FlexFrameLayoutVG_Qo__AJQo__SbQo__SbQo__0P4Core0P19BuddyStatePublisherC0Y0OQo__So21NLWorkoutPausedReasonVQo_Md, &_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAEAdeF_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAcAE19presentationDetents_9selectionQrShyAA18PresentationDetentVG_AA7BindingVyAJGtFQOyAA15ModifiedContentVy07WorkoutB020SessionControlsSheetVAA16_FlexFrameLayoutVG_Qo__AJQo__SbQo__SbQo__0P4Core0P19BuddyStatePublisherC0Y0OQo__So21NLWorkoutPausedReasonVQo_MR);
    v134 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGMR);
    v133 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAcAE19presentationDetents_9selectionQrShyAA18PresentationDetentVG_AA7BindingVyAJGtFQOyAA15ModifiedContentVy07WorkoutB020SessionControlsSheetVAA16_FlexFrameLayoutVG_Qo__AJQo__SbQo__SbQo__0P4Core0P19BuddyStatePublisherC0Y0OQo_Md, &_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAcAE19presentationDetents_9selectionQrShyAA18PresentationDetentVG_AA7BindingVyAJGtFQOyAA15ModifiedContentVy07WorkoutB020SessionControlsSheetVAA16_FlexFrameLayoutVG_Qo__AJQo__SbQo__SbQo__0P4Core0P19BuddyStatePublisherC0Y0OQo_MR);
    type metadata accessor for NLWorkoutPausedReason(255);
    v83 = v82;
    v84 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAcAE19presentationDetents_9selectionQrShyAA18PresentationDetentVG_AA7BindingVyAJGtFQOyAA15ModifiedContentVy07WorkoutB020SessionControlsSheetVAA16_FlexFrameLayoutVG_Qo__AJQo__SbQo__SbQo_Md, &_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAcAE19presentationDetents_9selectionQrShyAA18PresentationDetentVG_AA7BindingVyAJGtFQOyAA15ModifiedContentVy07WorkoutB020SessionControlsSheetVAA16_FlexFrameLayoutVG_Qo__AJQo__SbQo__SbQo_MR);
    v85 = type metadata accessor for WorkoutBuddyStatePublisher.State();
    v86 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAcAE19presentationDetents_9selectionQrShyAA18PresentationDetentVG_AA7BindingVyAJGtFQOyAA15ModifiedContentVy07WorkoutB020SessionControlsSheetVAA16_FlexFrameLayoutVG_Qo__AJQo__SbQo_Md, &_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAcAE19presentationDetents_9selectionQrShyAA18PresentationDetentVG_AA7BindingVyAJGtFQOyAA15ModifiedContentVy07WorkoutB020SessionControlsSheetVAA16_FlexFrameLayoutVG_Qo__AJQo__SbQo_MR);
    v87 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAcAE19presentationDetents_9selectionQrShyAA18PresentationDetentVG_AA7BindingVyAJGtFQOyAA15ModifiedContentVy07WorkoutB020SessionControlsSheetVAA16_FlexFrameLayoutVG_Qo__AJQo_Md, &_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAcAE19presentationDetents_9selectionQrShyAA18PresentationDetentVG_AA7BindingVyAJGtFQOyAA15ModifiedContentVy07WorkoutB020SessionControlsSheetVAA16_FlexFrameLayoutVG_Qo__AJQo_MR);
    v88 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE19presentationDetents_9selectionQrShyAA18PresentationDetentVG_AA7BindingVyAGGtFQOyAA15ModifiedContentVy07WorkoutB020SessionControlsSheetVAA16_FlexFrameLayoutVG_Qo_Md, &_s7SwiftUI4ViewPAAE19presentationDetents_9selectionQrShyAA18PresentationDetentVG_AA7BindingVyAGGtFQOyAA15ModifiedContentVy07WorkoutB020SessionControlsSheetVAA16_FlexFrameLayoutVG_Qo_MR);
    v89 = type metadata accessor for PresentationDetent();
    v90 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB020SessionControlsSheetVAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB020SessionControlsSheetVAA16_FlexFrameLayoutVGMR);
    v91 = lazy protocol witness table accessor for type ModifiedContent<SessionControlsSheet, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
    v155 = v90;
    v156 = v91;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v93 = _s11WorkoutCore19LowPowerModeMonitorCAC7Combine16ObservableObjectAAWlTm_2(&lazy protocol witness table cache variable for type PresentationDetent and conformance PresentationDetent, MEMORY[0x277CDDE90], MEMORY[0x277CDDEA0]);
    v155 = v88;
    v156 = v89;
    v157 = OpaqueTypeConformance2;
    v158 = v93;
    v94 = swift_getOpaqueTypeConformance2();
    v155 = v87;
    v95 = MEMORY[0x277D839B0];
    v156 = MEMORY[0x277D839B0];
    v96 = MEMORY[0x277D839C8];
    v157 = v94;
    v158 = MEMORY[0x277D839C8];
    v97 = swift_getOpaqueTypeConformance2();
    v155 = v86;
    v156 = v95;
    v157 = v97;
    v158 = v96;
    v98 = swift_getOpaqueTypeConformance2();
    v99 = _s11WorkoutCore19LowPowerModeMonitorCAC7Combine16ObservableObjectAAWlTm_2(&lazy protocol witness table cache variable for type WorkoutBuddyStatePublisher.State and conformance WorkoutBuddyStatePublisher.State, MEMORY[0x277D7DBB0], MEMORY[0x277D7DBB8]);
    v155 = v84;
    v156 = v85;
    v157 = v98;
    v158 = v99;
    v100 = swift_getOpaqueTypeConformance2();
    v101 = _s11WorkoutCore19LowPowerModeMonitorCAC7Combine16ObservableObjectAAWlTm_2(&lazy protocol witness table cache variable for type NLWorkoutPausedReason and conformance NLWorkoutPausedReason, type metadata accessor for NLWorkoutPausedReason, &protocol conformance descriptor for NLWorkoutPausedReason);
    v155 = v133;
    v156 = v83;
    v157 = v100;
    v158 = v101;
    v102 = swift_getOpaqueTypeConformance2();
    v103 = lazy protocol witness table accessor for type String and conformance String();
    v104 = lazy protocol witness table accessor for type ModifiedContent<Button<Text>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
    v105 = MEMORY[0x277D837D0];
    v155 = v135;
    v156 = MEMORY[0x277D837D0];
    v106 = MEMORY[0x277CE0BD8];
    v157 = v134;
    v158 = MEMORY[0x277CE0BD8];
    v159 = v102;
    v160 = v103;
    v107 = MEMORY[0x277CE0BC8];
    v161 = v104;
    v162 = MEMORY[0x277CE0BC8];
    v108 = swift_getOpaqueTypeConformance2();
    v109 = lazy protocol witness table accessor for type ZStack<TupleView<(<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, LowPowerInSessionOverlay?)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>, ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVG_AMtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVG_AMtGMR, MEMORY[0x277CE14C0]);
    v155 = v137;
    v156 = v105;
    v157 = v136;
    v158 = v106;
    v159 = v108;
    v160 = v103;
    v161 = v109;
    v162 = v107;
    v110 = swift_getOpaqueTypeConformance2();
    v155 = v138;
    v156 = v95;
    v157 = v110;
    v158 = v96;
    swift_getOpaqueTypeConformance2();
    v111 = v147;
    v112 = v153;
    View.sheet<A>(isPresented:onDismiss:content:)();

    outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<MetricPlattersView, _BackgroundStyleModifier<Color>>, _FlexFrameLayout>, _OpacityEffect>, _PaddingLayout>, _AppearanceActionModifier>(v112, &_s7SwiftUI15ModifiedContentVyACyACyACyACy07WorkoutB018MetricPlattersViewVAA24_BackgroundStyleModifierVyAA5ColorVGGAA16_FlexFrameLayoutVGAA14_OpacityEffectVGAA08_PaddingO0VGAA017_AppearanceActionK0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACy07WorkoutB018MetricPlattersViewVAA24_BackgroundStyleModifierVyAA5ColorVGGAA16_FlexFrameLayoutVGAA14_OpacityEffectVGAA08_PaddingO0VGAA017_AppearanceActionK0VGMR);
    v113 = *(v53 + *(v154 + 56));
    swift_getKeyPath();
    v155 = v113;
    _s11WorkoutCore19LowPowerModeMonitorCAC7Combine16ObservableObjectAAWlTm_2(&lazy protocol witness table cache variable for type LowPowerViewModel and conformance LowPowerViewModel, type metadata accessor for LowPowerViewModel, &protocol conformance descriptor for LowPowerViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v114 = 0;
    v115 = 0;
    v116 = 0;
    if (*(v113 + 16) == 1)
    {
      type metadata accessor for LowPowerModeMonitor();
      _s11WorkoutCore19LowPowerModeMonitorCAC7Combine16ObservableObjectAAWlTm_2(&lazy protocol witness table cache variable for type LowPowerModeMonitor and conformance LowPowerModeMonitor, MEMORY[0x277D7E2F8], MEMORY[0x277D7E2F0]);

      v114 = ObservedObject.init(wrappedValue:)();
      v115 = v117;

      v116 = v113;
    }

    v118 = v149;
    v119 = *(v149 + 16);
    v120 = v148;
    v121 = v150;
    v119(v148, v111, v150);
    v122 = v151;
    v119(v151, v120, v121);
    v123 = (v122 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaBRd__lFQOyAA15ModifiedContentVyAMyAMyAMyAMy07WorkoutB0014MetricPlattersC0VAA24_BackgroundStyleModifierVyAA5ColorVGGAA16_FlexFrameLayoutVGAA14_OpacityEffectVGAA08_PaddingV0VGAA017_AppearanceActionR0VG_AcAE0G6Change2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAE5alert_AE7actions7messageQrqd___AJqd_0_yXEqd_1_yXEtSyRd__AaBRd_0_AaBRd_1_r1_lFQOyAcAEA10__AEA11_A12_Qrqd___AJqd_0_yXEqd_1_yXEtSyRd__AaBRd_0_AaBRd_1_r1_lFQOyAcAEA7_A8_A9__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAEA7_A8_A9__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAEA7_A8_A9__Qrqd___SbyyctSQRd__lFQOyAcAEA7_A8_A9__Qrqd___SbyyctSQRd__lFQOyAcAEA7_A8_A9__Qrqd___SbyyctSQRd__lFQOyAcAE19presentationDetents_9selectionQrShyAA18PresentationDetentVG_AIyA16_GtFQOyAMyAN20SessionControlsSheetVAXG_Qo__A16_Qo__SbQo__SbQo__0M4Core0M19BuddyStatePublisherC5StateOQo__So21NLWorkoutPausedReasonVQo__SSAMyAA6ButtonVyAA4TextVGAA023AccessibilityAttachmentR0VGA38_Qo__SSAA05TupleC0VyA42__A42_tGA38_Qo__SbQo_Qo__AN24LowPowerInSessionOverlayVSgtMd, &_s7SwiftUI4ViewPAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaBRd__lFQOyAA15ModifiedContentVyAMyAMyAMyAMy07WorkoutB0014MetricPlattersC0VAA24_BackgroundStyleModifierVyAA5ColorVGGAA16_FlexFrameLayoutVGAA14_OpacityEffectVGAA08_PaddingV0VGAA017_AppearanceActionR0VG_AcAE0G6Change2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAE5alert_AE7actions7messageQrqd___AJqd_0_yXEqd_1_yXEtSyRd__AaBRd_0_AaBRd_1_r1_lFQOyAcAEA10__AEA11_A12_Qrqd___AJqd_0_yXEqd_1_yXEtSyRd__AaBRd_0_AaBRd_1_r1_lFQOyAcAEA7_A8_A9__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAEA7_A8_A9__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAEA7_A8_A9__Qrqd___SbyyctSQRd__lFQOyAcAEA7_A8_A9__Qrqd___SbyyctSQRd__lFQOyAcAEA7_A8_A9__Qrqd___SbyyctSQRd__lFQOyAcAE19presentationDetents_9selectionQrShyAA18PresentationDetentVG_AIyA16_GtFQOyAMyAN20SessionControlsSheetVAXG_Qo__A16_Qo__SbQo__SbQo__0M4Core0M19BuddyStatePublisherC5StateOQo__So21NLWorkoutPausedReasonVQo__SSAMyAA6ButtonVyAA4TextVGAA023AccessibilityAttachmentR0VGA38_Qo__SSAA05TupleC0VyA42__A42_tGA38_Qo__SbQo_Qo__AN24LowPowerInSessionOverlayVSgtMR) + 48));
    outlined copy of LowPowerInSessionOverlay?(v114, v115);
    v124 = outlined consume of LowPowerInSessionOverlay?(v114, v115, v116);
    *v123 = v114;
    v123[1] = v115;
    v123[2] = v116;
    v125 = *(v118 + 8);
    v125(v111, v121, v124);
    v126 = outlined consume of LowPowerInSessionOverlay?(v114, v115, v116);
    return (v125)(v120, v121, v126);
  }

  else
  {

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

double closure #1 in closure #1 in InSessionView.body.getter(uint64_t a1)
{
  Transaction.disablesAnimations.setter();
  withTransaction<A>(_:_:)();

  return result;
}

uint64_t closure #2 in closure #1 in InSessionView.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v17 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v5 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for InSessionView(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  _sSo21FIUIFormattingManagerCMaTm_14(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v11 = static OS_dispatch_queue.main.getter();
  outlined init with copy of InSessionView(a1, &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v13 = swift_allocObject();
  outlined init with take of InSessionView(&v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for InSessionView);
  aBlock[4] = partial apply for closure #1 in closure #2 in closure #1 in InSessionView.body.getter;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_40;
  v14 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  _s11WorkoutCore19LowPowerModeMonitorCAC7Combine16ObservableObjectAAWlTm_2(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type ZStack<TupleView<(<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, LowPowerInSessionOverlay?)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F30C1F0](0, v7, v4, v14);
  _Block_release(v14);

  (*(v17 + 8))(v4, v2);
  return (*(v5 + 8))(v7, v16);
}

uint64_t closure #1 in closure #1 in closure #1 in InSessionView.body.getter(uint64_t a1)
{
  type metadata accessor for InSessionView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
  return State.wrappedValue.setter();
}

uint64_t closure #3 in closure #1 in InSessionView.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v157 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy07WorkoutB016SessionViewModelCGMd, &_s7SwiftUI8BindableVy07WorkoutB016SessionViewModelCGMR);
  v156 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v155 = v127 - v4;
  v147 = type metadata accessor for WorkoutBuddyStatePublisher.State();
  v145 = *(v147 - 8);
  MEMORY[0x28223BE20](v147);
  v144 = v127 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for InSessionView(0);
  v159 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v174 = v7;
  v175 = v127 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = type metadata accessor for PresentationDetent();
  v128 = *(v165 - 1);
  v129 = v165 - 1;
  v171 = v128;
  MEMORY[0x28223BE20](v165 - 1);
  v133 = v127 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVyAA18PresentationDetentVGMd, &_s7SwiftUI7BindingVyAA18PresentationDetentVGMR);
  MEMORY[0x28223BE20](v9 - 8);
  v130 = v127 - v10;
  v11 = type metadata accessor for SessionControlsSheet(0);
  v12 = (v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v127 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  OpaqueTypeConformance2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB020SessionControlsSheetVAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB020SessionControlsSheetVAA16_FlexFrameLayoutVGMR);
  MEMORY[0x28223BE20](OpaqueTypeConformance2);
  v173 = (v127 - v15);
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE19presentationDetents_9selectionQrShyAA18PresentationDetentVG_AA7BindingVyAGGtFQOyAA15ModifiedContentVy07WorkoutB020SessionControlsSheetVAA16_FlexFrameLayoutVG_Qo_Md, &_s7SwiftUI4ViewPAAE19presentationDetents_9selectionQrShyAA18PresentationDetentVG_AA7BindingVyAGGtFQOyAA15ModifiedContentVy07WorkoutB020SessionControlsSheetVAA16_FlexFrameLayoutVG_Qo_MR);
  v132 = *(v134 - 8);
  MEMORY[0x28223BE20](v134);
  v131 = v127 - v16;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAcAE19presentationDetents_9selectionQrShyAA18PresentationDetentVG_AA7BindingVyAJGtFQOyAA15ModifiedContentVy07WorkoutB020SessionControlsSheetVAA16_FlexFrameLayoutVG_Qo__AJQo_Md, &_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAcAE19presentationDetents_9selectionQrShyAA18PresentationDetentVG_AA7BindingVyAJGtFQOyAA15ModifiedContentVy07WorkoutB020SessionControlsSheetVAA16_FlexFrameLayoutVG_Qo__AJQo_MR);
  v135 = *(v137 - 8);
  MEMORY[0x28223BE20](v137);
  v164 = v127 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAcAE19presentationDetents_9selectionQrShyAA18PresentationDetentVG_AA7BindingVyAJGtFQOyAA15ModifiedContentVy07WorkoutB020SessionControlsSheetVAA16_FlexFrameLayoutVG_Qo__AJQo__SbQo_Md, &_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAcAE19presentationDetents_9selectionQrShyAA18PresentationDetentVG_AA7BindingVyAJGtFQOyAA15ModifiedContentVy07WorkoutB020SessionControlsSheetVAA16_FlexFrameLayoutVG_Qo__AJQo__SbQo_MR);
  v138 = *(v18 - 8);
  v139 = v18;
  MEMORY[0x28223BE20](v18);
  v136 = v127 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAcAE19presentationDetents_9selectionQrShyAA18PresentationDetentVG_AA7BindingVyAJGtFQOyAA15ModifiedContentVy07WorkoutB020SessionControlsSheetVAA16_FlexFrameLayoutVG_Qo__AJQo__SbQo__SbQo_Md, &_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAcAE19presentationDetents_9selectionQrShyAA18PresentationDetentVG_AA7BindingVyAJGtFQOyAA15ModifiedContentVy07WorkoutB020SessionControlsSheetVAA16_FlexFrameLayoutVG_Qo__AJQo__SbQo__SbQo_MR);
  v140 = *(v20 - 8);
  v141 = v20;
  MEMORY[0x28223BE20](v20);
  object = v127 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAcAE19presentationDetents_9selectionQrShyAA18PresentationDetentVG_AA7BindingVyAJGtFQOyAA15ModifiedContentVy07WorkoutB020SessionControlsSheetVAA16_FlexFrameLayoutVG_Qo__AJQo__SbQo__SbQo__0P4Core0P19BuddyStatePublisherC0Y0OQo_Md, &_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAcAE19presentationDetents_9selectionQrShyAA18PresentationDetentVG_AA7BindingVyAJGtFQOyAA15ModifiedContentVy07WorkoutB020SessionControlsSheetVAA16_FlexFrameLayoutVG_Qo__AJQo__SbQo__SbQo__0P4Core0P19BuddyStatePublisherC0Y0OQo_MR);
  v142 = *(v22 - 8);
  v143 = v22;
  MEMORY[0x28223BE20](v22);
  v167 = v127 - v23;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAEAdeF_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAcAE19presentationDetents_9selectionQrShyAA18PresentationDetentVG_AA7BindingVyAJGtFQOyAA15ModifiedContentVy07WorkoutB020SessionControlsSheetVAA16_FlexFrameLayoutVG_Qo__AJQo__SbQo__SbQo__0P4Core0P19BuddyStatePublisherC0Y0OQo__So21NLWorkoutPausedReasonVQo_Md, &_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAEAdeF_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAcAE19presentationDetents_9selectionQrShyAA18PresentationDetentVG_AA7BindingVyAJGtFQOyAA15ModifiedContentVy07WorkoutB020SessionControlsSheetVAA16_FlexFrameLayoutVG_Qo__AJQo__SbQo__SbQo__0P4Core0P19BuddyStatePublisherC0Y0OQo__So21NLWorkoutPausedReasonVQo_MR);
  v146 = *(v149 - 8);
  MEMORY[0x28223BE20](v149);
  v168 = v127 - v24;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE5alert_11isPresented7actions7messageQrqd___AA7BindingVySbGqd_0_yXEqd_1_yXEtSyRd__AaBRd_0_AaBRd_1_r1_lFQOyAcAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAEAklM_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAEAklM_Qrqd___SbyyctSQRd__lFQOyAcAEAklM_Qrqd___SbyyctSQRd__lFQOyAcAEAklM_Qrqd___SbyyctSQRd__lFQOyAcAE19presentationDetents_9selectionQrShyAA18PresentationDetentVG_AIyAQGtFQOyAA15ModifiedContentVy07WorkoutB020SessionControlsSheetVAA16_FlexFrameLayoutVG_Qo__AQQo__SbQo__SbQo__0U4Core0U19BuddyStatePublisherC5StateOQo__So21NLWorkoutPausedReasonVQo__SSAUyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGA16_Qo_Md, &_s7SwiftUI4ViewPAAE5alert_11isPresented7actions7messageQrqd___AA7BindingVySbGqd_0_yXEqd_1_yXEtSyRd__AaBRd_0_AaBRd_1_r1_lFQOyAcAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAEAklM_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAEAklM_Qrqd___SbyyctSQRd__lFQOyAcAEAklM_Qrqd___SbyyctSQRd__lFQOyAcAEAklM_Qrqd___SbyyctSQRd__lFQOyAcAE19presentationDetents_9selectionQrShyAA18PresentationDetentVG_AIyAQGtFQOyAA15ModifiedContentVy07WorkoutB020SessionControlsSheetVAA16_FlexFrameLayoutVG_Qo__AQQo__SbQo__SbQo__0U4Core0U19BuddyStatePublisherC5StateOQo__So21NLWorkoutPausedReasonVQo__SSAUyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGA16_Qo_MR);
  v150 = *(v152 - 8);
  MEMORY[0x28223BE20](v152);
  v169 = v127 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE5alert_11isPresented7actions7messageQrqd___AA7BindingVySbGqd_0_yXEqd_1_yXEtSyRd__AaBRd_0_AaBRd_1_r1_lFQOyAcAEAD_AefGQrqd___AJqd_0_yXEqd_1_yXEtSyRd__AaBRd_0_AaBRd_1_r1_lFQOyAcAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAEAklM_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAEAklM_Qrqd___SbyyctSQRd__lFQOyAcAEAklM_Qrqd___SbyyctSQRd__lFQOyAcAEAklM_Qrqd___SbyyctSQRd__lFQOyAcAE19presentationDetents_9selectionQrShyAA18PresentationDetentVG_AIyAQGtFQOyAA15ModifiedContentVy07WorkoutB020SessionControlsSheetVAA16_FlexFrameLayoutVG_Qo__AQQo__SbQo__SbQo__0U4Core0U19BuddyStatePublisherC5StateOQo__So21NLWorkoutPausedReasonVQo__SSAUyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGA16_Qo__SSAA05TupleC0VyA20__A20_tGA16_Qo_Md, &_s7SwiftUI4ViewPAAE5alert_11isPresented7actions7messageQrqd___AA7BindingVySbGqd_0_yXEqd_1_yXEtSyRd__AaBRd_0_AaBRd_1_r1_lFQOyAcAEAD_AefGQrqd___AJqd_0_yXEqd_1_yXEtSyRd__AaBRd_0_AaBRd_1_r1_lFQOyAcAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAEAklM_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAEAklM_Qrqd___SbyyctSQRd__lFQOyAcAEAklM_Qrqd___SbyyctSQRd__lFQOyAcAEAklM_Qrqd___SbyyctSQRd__lFQOyAcAE19presentationDetents_9selectionQrShyAA18PresentationDetentVG_AIyAQGtFQOyAA15ModifiedContentVy07WorkoutB020SessionControlsSheetVAA16_FlexFrameLayoutVG_Qo__AQQo__SbQo__SbQo__0U4Core0U19BuddyStatePublisherC5StateOQo__So21NLWorkoutPausedReasonVQo__SSAUyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGA16_Qo__SSAA05TupleC0VyA20__A20_tGA16_Qo_MR);
  v153 = *(v26 - 8);
  v154 = v26;
  MEMORY[0x28223BE20](v26);
  v151 = v127 - v27;
  LOBYTE(v179) = 1;
  static Binding.constant(_:)();
  v28 = v191;
  v29 = v192;
  v158 = v6;
  v30 = a1 + *(v6 + 48);
  v170 = v3;
  v172 = v30;
  Bindable.wrappedValue.getter();
  v31 = a1[14];
  v161 = a1[15];
  v162 = v31;
  v179 = v31;
  v180 = v161;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB0015SessionControlsC0CGMd, &_s7SwiftUI5StateVy07WorkoutB0015SessionControlsC0CGMR);
  State.wrappedValue.getter();
  v32 = a1[2];
  v33 = v12[10];
  v176 = a1;
  outlined init with copy of SessionControls((a1 + 9), &v14[v33]);
  *v14 = v28;
  v14[16] = v29;
  type metadata accessor for SessionViewModel(0);
  v34 = _s11WorkoutCore19LowPowerModeMonitorCAC7Combine16ObservableObjectAAWlTm_2(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, type metadata accessor for SessionViewModel, &protocol conformance descriptor for SessionViewModel);
  v35 = v32;
  v148 = v34;
  Bindable<A>.init(wrappedValue:)();
  type metadata accessor for SessionControlsState(0);
  v36 = _s11WorkoutCore19LowPowerModeMonitorCAC7Combine16ObservableObjectAAWlTm_2(&lazy protocol witness table cache variable for type SessionControlsState and conformance SessionControlsState, type metadata accessor for SessionControlsState, &protocol conformance descriptor for SessionControlsState);
  Bindable<A>.init(wrappedValue:)();
  *&v14[v12[9]] = v35;
  v37 = &v14[v12[11]];
  LOBYTE(v190) = 0;
  State.init(wrappedValue:)();
  v38 = v180;
  *v37 = v179;
  *(v37 + 1) = v38;
  v39 = &v14[v12[12]];
  LOBYTE(v190) = 0;
  State.init(wrappedValue:)();
  v40 = v180;
  *v39 = v179;
  *(v39 + 1) = v40;
  v41 = &v14[v12[13]];
  LOBYTE(v190) = 0;
  State.init(wrappedValue:)();
  v42 = v180;
  *v41 = v179;
  *(v41 + 1) = v42;
  static Alignment.top.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v43 = v173;
  outlined init with take of InSessionView(v14, v173, type metadata accessor for SessionControlsSheet);
  v44 = (v43 + *(OpaqueTypeConformance2 + 36));
  v45 = v196;
  v44[4] = v195;
  v44[5] = v45;
  v44[6] = v197;
  v46 = v192;
  *v44 = v191;
  v44[1] = v46;
  v47 = v194;
  v44[2] = v193;
  v44[3] = v47;
  v179 = v162;
  v180 = v161;
  State.wrappedValue.getter();
  v48 = v190;
  swift_getKeyPath();
  v179 = v48;
  v127[1] = v36;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  LODWORD(v43) = *(v48 + 17);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI18PresentationDetentVGMd, &_ss23_ContiguousArrayStorageCy7SwiftUI18PresentationDetentVGMR);
  v49 = (*(v171 + 80) + 32) & ~*(v171 + 80);
  if (v43 == 1)
  {
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_20CB5DA70;
    v51 = v176;
    static PresentationDetent.height(_:)();
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7SwiftUI18PresentationDetentV_Tt0g5Tf4g_n(v50);
    swift_setDeallocating();
    (*(v171 + 8))(v50 + v49, v165);
  }

  else
  {
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_20CB5DA80;
    v51 = v176;
    static PresentationDetent.height(_:)();
    static PresentationDetent.height(_:)();
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7SwiftUI18PresentationDetentV_Tt0g5Tf4g_n(v52);
    swift_setDeallocating();
    swift_arrayDestroy();
  }

  swift_deallocClassInstance();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVyAA18PresentationDetentVGMd, &_s7SwiftUI5StateVyAA18PresentationDetentVGMR);
  v53 = v130;
  State.projectedValue.getter();
  v54 = lazy protocol witness table accessor for type ModifiedContent<SessionControlsSheet, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
  v55 = v131;
  v56 = OpaqueTypeConformance2;
  v57 = v173;
  View.presentationDetents(_:selection:)();

  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<MetricPlattersView, _BackgroundStyleModifier<Color>>, _FlexFrameLayout>, _OpacityEffect>, _PaddingLayout>, _AppearanceActionModifier>(v53, &_s7SwiftUI7BindingVyAA18PresentationDetentVGMd, &_s7SwiftUI7BindingVyAA18PresentationDetentVGMR);
  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<MetricPlattersView, _BackgroundStyleModifier<Color>>, _FlexFrameLayout>, _OpacityEffect>, _PaddingLayout>, _AppearanceActionModifier>(v57, &_s7SwiftUI15ModifiedContentVy07WorkoutB020SessionControlsSheetVAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB020SessionControlsSheetVAA16_FlexFrameLayoutVGMR);
  v58 = v133;
  State.wrappedValue.getter();
  v59 = v175;
  outlined init with copy of InSessionView(v51, v175);
  v159 = *(v159 + 80);
  v60 = (v159 + 16) & ~v159;
  v173 = v60;
  v61 = swift_allocObject();
  v158 = type metadata accessor for InSessionView;
  outlined init with take of InSessionView(v59, v61 + v60, type metadata accessor for InSessionView);
  v179 = v56;
  v180 = v54;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v130 = _s11WorkoutCore19LowPowerModeMonitorCAC7Combine16ObservableObjectAAWlTm_2(&lazy protocol witness table cache variable for type PresentationDetent and conformance PresentationDetent, MEMORY[0x277CDDE90], MEMORY[0x277CDDEA0]);
  v62 = v165;
  v63 = v134;
  View.onChange<A>(of:initial:_:)();

  (*(v171 + 8))(v58, v62);
  (*(v132 + 8))(v55, v63);
  v179 = v162;
  v180 = v161;
  State.wrappedValue.getter();
  v64 = v189;
  swift_getKeyPath();
  v179 = v64;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  LOBYTE(v59) = *(v64 + 16);

  LOBYTE(v188) = v59;
  v65 = v175;
  outlined init with copy of InSessionView(v51, v175);
  v66 = v173;
  v67 = swift_allocObject();
  v68 = v158;
  outlined init with take of InSessionView(v65, v67 + v66, v158);
  v179 = v63;
  v180 = v62;
  v181 = OpaqueTypeConformance2;
  v182 = v130;
  v171 = MEMORY[0x277CE0E40];
  v69 = swift_getOpaqueTypeConformance2();
  v71 = v136;
  v70 = v137;
  v72 = v164;
  View.onChange<A>(of:initial:_:)();

  (*(v135 + 8))(v72, v70);
  v73 = v176;
  v165 = v176[4];
  LOBYTE(v188) = WorkoutStatePublisher.workoutPaused.getter() & 1;
  v74 = v175;
  outlined init with copy of InSessionView(v73, v175);
  v75 = v173;
  v76 = swift_allocObject() + v75;
  v77 = v74;
  v78 = v68;
  outlined init with take of InSessionView(v77, v76, v68);
  v179 = v70;
  v180 = MEMORY[0x277D839B0];
  v181 = v69;
  v182 = MEMORY[0x277D839C8];
  v79 = swift_getOpaqueTypeConformance2();
  v80 = v139;
  View.onChange<A>(of:initial:_:)();

  (*(v138 + 8))(v71, v80);
  v81 = v73;
  v82 = v144;
  WorkoutBuddyStatePublisher.state.getter();
  v83 = v81;
  v84 = v175;
  outlined init with copy of InSessionView(v83, v175);
  v85 = v173;
  v86 = swift_allocObject();
  v87 = v84;
  outlined init with take of InSessionView(v84, v86 + v85, v78);
  v179 = v80;
  v180 = MEMORY[0x277D839B0];
  v181 = v79;
  v182 = MEMORY[0x277D839C8];
  v88 = swift_getOpaqueTypeConformance2();
  v89 = _s11WorkoutCore19LowPowerModeMonitorCAC7Combine16ObservableObjectAAWlTm_2(&lazy protocol witness table cache variable for type WorkoutBuddyStatePublisher.State and conformance WorkoutBuddyStatePublisher.State, MEMORY[0x277D7DBB0], MEMORY[0x277D7DBB8]);
  v90 = object;
  v91 = v141;
  v92 = v147;
  View.onChange<A>(of:initial:_:)();

  (*(v145 + 8))(v82, v92);
  (*(v140 + 8))(v90, v91);
  v188 = WorkoutStatePublisher.pausedReasons.getter();
  outlined init with copy of InSessionView(v176, v87);
  v93 = v173;
  v94 = swift_allocObject();
  outlined init with take of InSessionView(v87, v94 + v93, v158);
  type metadata accessor for NLWorkoutPausedReason(0);
  v96 = v95;
  v179 = v91;
  v180 = v92;
  v181 = v88;
  v182 = v89;
  v97 = swift_getOpaqueTypeConformance2();
  v98 = _s11WorkoutCore19LowPowerModeMonitorCAC7Combine16ObservableObjectAAWlTm_2(&lazy protocol witness table cache variable for type NLWorkoutPausedReason and conformance NLWorkoutPausedReason, type metadata accessor for NLWorkoutPausedReason, &protocol conformance descriptor for NLWorkoutPausedReason);
  v99 = v143;
  v174 = v97;
  v175 = v96;
  v171 = v98;
  v100 = v167;
  View.onChange<A>(of:initial:_:)();

  (*(v142 + 8))(v100, v99);
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v101 = WorkoutUIBundle.super.isa;
  v198._object = 0xE000000000000000;
  v102.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v102.value._object = 0xEB00000000656C62;
  v103._countAndFlagsBits = 0xD000000000000021;
  v103._object = 0x800000020CBA4020;
  v104._countAndFlagsBits = 0;
  v104._object = 0xE000000000000000;
  v198._countAndFlagsBits = 0;
  v105 = NSLocalizedString(_:tableName:bundle:value:comment:)(v103, v102, v101, v104, v198);
  object = v105._object;

  v187 = v105;
  v106 = v155;
  v107 = v170;
  Bindable.projectedValue.getter();
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  v173 = *(v156 + 8);
  v108 = v173(v106, v107);
  v165 = v127;
  LODWORD(v164) = v178;
  MEMORY[0x28223BE20](v108);
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGMR);
  v179 = v99;
  v180 = v175;
  v181 = v174;
  v182 = v171;
  v171 = swift_getOpaqueTypeConformance2();
  v175 = lazy protocol witness table accessor for type String and conformance String();
  v174 = lazy protocol witness table accessor for type ModifiedContent<Button<Text>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
  v109 = v149;
  v110 = v168;
  View.alert<A, B, C>(_:isPresented:actions:message:)();

  (*(v146 + 8))(v110, v109);
  v111 = WorkoutUIBundle.super.isa;
  v199._object = 0xE000000000000000;
  v112._countAndFlagsBits = 0xD000000000000022;
  v112._object = 0x800000020CBA4050;
  v113.value._object = 0x800000020CB936F0;
  v113.value._countAndFlagsBits = 0xD000000000000012;
  v114._countAndFlagsBits = 0;
  v114._object = 0xE000000000000000;
  v199._countAndFlagsBits = 0;
  v115 = NSLocalizedString(_:tableName:bundle:value:comment:)(v112, v113, v111, v114, v199);
  v168 = v115._object;

  v187 = v115;
  Bindable.projectedValue.getter();
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  v116 = v173(v106, v107);
  v173 = v127;
  v165 = v177;
  LODWORD(object) = v178;
  MEMORY[0x28223BE20](v116);
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVG_AMtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVG_AMtGMR);
  v179 = v109;
  v118 = MEMORY[0x277D837D0];
  v180 = MEMORY[0x277D837D0];
  v181 = v167;
  v182 = MEMORY[0x277CE0BD8];
  v183 = v171;
  v184 = v175;
  v185 = v174;
  v186 = MEMORY[0x277CE0BC8];
  v176 = MEMORY[0x277CDEDF8];
  v174 = swift_getOpaqueTypeConformance2();
  v126 = lazy protocol witness table accessor for type ZStack<TupleView<(<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, LowPowerInSessionOverlay?)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>, ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVG_AMtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVG_AMtGMR, MEMORY[0x277CE14C0]);
  v119 = v152;
  v120 = v151;
  v121 = v169;
  View.alert<A, B, C>(_:isPresented:actions:message:)();

  (*(v150 + 8))(v121, v119);
  Bindable.wrappedValue.getter();
  v122 = v179;
  swift_getKeyPath();
  v179 = v122;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v123 = OBJC_IVAR____TtC9WorkoutUI16SessionViewModel__showHeartRateDeviceDisconnectedAlert;
  swift_beginAccess();
  LOBYTE(v123) = *(v122 + v123);

  LOBYTE(v187._countAndFlagsBits) = v123;
  v179 = v119;
  v180 = v118;
  v181 = v117;
  v182 = MEMORY[0x277CE0BD8];
  v183 = v174;
  v184 = v175;
  v185 = v126;
  v186 = MEMORY[0x277CE0BC8];
  swift_getOpaqueTypeConformance2();
  v124 = v154;
  View.onChange<A>(of:initial:_:)();
  return (*(v153 + 8))(v120, v124);
}

double closure #1 in closure #3 in closure #1 in InSessionView.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for PresentationDetent();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v8 = &v16[-v7];
  type metadata accessor for InSessionView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVyAA18PresentationDetentVGMd, &_s7SwiftUI5StateVyAA18PresentationDetentVGMR);
  State.wrappedValue.getter();
  static PresentationDetent.height(_:)();
  v9 = MEMORY[0x20F309460](v8, v5);
  v10 = *(v3 + 8);
  v10(v5, v2);
  v10(v8, v2);
  v11 = *(a1 + 120);
  v17 = *(a1 + 112);
  v18 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB0015SessionControlsC0CGMd, &_s7SwiftUI5StateVy07WorkoutB0015SessionControlsC0CGMR);
  State.wrappedValue.getter();
  v12 = v19;
  swift_getKeyPath();
  v17 = v12;
  _s11WorkoutCore19LowPowerModeMonitorCAC7Combine16ObservableObjectAAWlTm_2(&lazy protocol witness table cache variable for type SessionControlsState and conformance SessionControlsState, type metadata accessor for SessionControlsState, &protocol conformance descriptor for SessionControlsState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v13 = *(v12 + 16);

  if ((v9 & 1) == v13)
  {
    v15 = static Animation.easeInOut.getter();
    MEMORY[0x28223BE20](v15);
    *&v16[-16] = a1;
    v16[-8] = (v9 & 1) == 0;
    withAnimation<A>(_:_:)();
  }

  return result;
}

void closure #1 in closure #1 in closure #3 in closure #1 in InSessionView.body.getter(uint64_t a1, char a2)
{
  v2 = a2 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB0015SessionControlsC0CGMd, &_s7SwiftUI5StateVy07WorkoutB0015SessionControlsC0CGMR);
  State.wrappedValue.getter();
  swift_beginAccess();
  if (*(v4 + 16) == v2)
  {
    *(v4 + 16) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    _s11WorkoutCore19LowPowerModeMonitorCAC7Combine16ObservableObjectAAWlTm_2(&lazy protocol witness table cache variable for type SessionControlsState and conformance SessionControlsState, type metadata accessor for SessionControlsState, &protocol conformance descriptor for SessionControlsState);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t closure #2 in closure #3 in closure #1 in InSessionView.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for PresentationDetent();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v8 = &v15[-v7];
  v9 = *(a1 + 120);
  v16 = *(a1 + 112);
  v17 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB0015SessionControlsC0CGMd, &_s7SwiftUI5StateVy07WorkoutB0015SessionControlsC0CGMR);
  State.wrappedValue.getter();
  v10 = v18;
  swift_getKeyPath();
  v16 = v10;
  _s11WorkoutCore19LowPowerModeMonitorCAC7Combine16ObservableObjectAAWlTm_2(&lazy protocol witness table cache variable for type SessionControlsState and conformance SessionControlsState, type metadata accessor for SessionControlsState, &protocol conformance descriptor for SessionControlsState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();

  type metadata accessor for InSessionView(0);
  static PresentationDetent.height(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVyAA18PresentationDetentVGMd, &_s7SwiftUI5StateVyAA18PresentationDetentVGMR);
  State.wrappedValue.getter();
  _s11WorkoutCore19LowPowerModeMonitorCAC7Combine16ObservableObjectAAWlTm_2(&lazy protocol witness table cache variable for type PresentationDetent and conformance PresentationDetent, MEMORY[0x277CDDE90], MEMORY[0x277CDDEA0]);
  v11 = dispatch thunk of static Equatable.== infix(_:_:)();
  v12 = *(v3 + 8);
  v12(v5, v2);
  if ((v11 & 1) == 0)
  {
    v13 = static Animation.easeInOut.getter();
    MEMORY[0x28223BE20](v13);
    *&v15[-16] = a1;
    *&v15[-8] = v8;
    withAnimation<A>(_:_:)();
  }

  return (v12)(v8, v2);
}

uint64_t closure #1 in closure #2 in closure #3 in closure #1 in InSessionView.body.getter(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for PresentationDetent();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = v13 - v9;
  v11 = *(v4 + 16);
  v11(v13 - v9, a2, v3, v8);
  type metadata accessor for InSessionView(0);
  (v11)(v6, v10, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVyAA18PresentationDetentVGMd, &_s7SwiftUI5StateVyAA18PresentationDetentVGMR);
  State.wrappedValue.setter();
  return (*(v4 + 8))(v10, v3);
}

uint64_t closure #3 in closure #3 in closure #1 in InSessionView.body.getter(uint64_t a1)
{
  v1 = type metadata accessor for PresentationDetent();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v9 - v6;
  MetricsPublisher.workoutStatePublisher.getter();
  WorkoutStatePublisher.workoutPaused.getter();

  type metadata accessor for InSessionView(0);
  static PresentationDetent.height(_:)();
  type metadata accessor for InSessionView(0);
  (*(v2 + 16))(v4, v7, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVyAA18PresentationDetentVGMd, &_s7SwiftUI5StateVyAA18PresentationDetentVGMR);
  State.wrappedValue.setter();
  return (*(v2 + 8))(v7, v1);
}

double closure #4 in closure #3 in closure #1 in InSessionView.body.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a3;
  v4 = type metadata accessor for WorkoutBuddyStatePublisher.State();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v24 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - v8;
  v22 = type metadata accessor for Logger();
  v10 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static WOLog.workoutVoice.getter();
  v23 = *(v5 + 16);
  v23(v9, a2, v4);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v21 = a2;
    v16 = v15;
    *v15 = 134217984;
    v17 = WorkoutBuddyStatePublisher.State.rawValue.getter();
    (*(v5 + 8))(v9, v4);
    *(v16 + 1) = v17;
    _os_log_impl(&dword_20C66F000, v13, v14, "Workout Buddy state changed to %ld. Updating SessionViewModel", v16, 0xCu);
    v18 = v16;
    a2 = v21;
    MEMORY[0x20F30E080](v18, -1, -1);
  }

  else
  {
    (*(v5 + 8))(v9, v4);
  }

  (*(v10 + 8))(v12, v22);
  type metadata accessor for InSessionView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy07WorkoutB016SessionViewModelCGMd, &_s7SwiftUI8BindableVy07WorkoutB016SessionViewModelCGMR);
  Bindable.wrappedValue.getter();
  v19 = v24;
  v23(v24, a2, v4);
  SessionViewModel.workoutBuddyState.setter(v19);

  return result;
}

double closure #5 in closure #3 in closure #1 in InSessionView.body.getter(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  type metadata accessor for InSessionView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy07WorkoutB016SessionViewModelCGMd, &_s7SwiftUI8BindableVy07WorkoutB016SessionViewModelCGMR);
  Bindable.wrappedValue.getter();
  v3 = WorkoutStatePublisher.workoutPaused.getter() & ((v2 & 4) != 0);
  v4 = OBJC_IVAR____TtC9WorkoutUI16SessionViewModel__showHeartRateDeviceDisconnectedAlert;
  swift_beginAccess();
  if (v3 == *(v7 + v4))
  {
    *(v7 + v4) = v3;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    _s11WorkoutCore19LowPowerModeMonitorCAC7Combine16ObservableObjectAAWlTm_2(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, type metadata accessor for SessionViewModel, &protocol conformance descriptor for SessionViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t closure #6 in closure #3 in closure #1 in InSessionView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a1;
  v23 = a2;
  v2 = type metadata accessor for InSessionView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10ButtonRoleVSgMd, &_s7SwiftUI10ButtonRoleVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - v10;
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v12 = WorkoutUIBundle.super.isa;
  v25._object = 0xE000000000000000;
  v13.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v13.value._object = 0xEB00000000656C62;
  v14._object = 0x800000020CBA40D0;
  v14._countAndFlagsBits = 0xD000000000000028;
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  v25._countAndFlagsBits = 0;
  v16 = NSLocalizedString(_:tableName:bundle:value:comment:)(v14, v13, v12, v15, v25);

  v24 = v16;
  static ButtonRole.cancel.getter();
  v17 = type metadata accessor for ButtonRole();
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  outlined init with copy of InSessionView(v22, &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v19 = swift_allocObject();
  outlined init with take of InSessionView(&v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for InSessionView);
  lazy protocol witness table accessor for type String and conformance String();
  Button<>.init<A>(_:role:action:)();
  if (one-time initialization token for endWorkout != -1)
  {
    swift_once();
  }

  lazy protocol witness table accessor for type ZStack<TupleView<(<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, LowPowerInSessionOverlay?)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR, MEMORY[0x277CDF028]);
  View.accessibilityIdentifier(_:)();
  return (*(v9 + 8))(v11, v8);
}

double closure #1 in closure #6 in closure #3 in closure #1 in InSessionView.body.getter()
{
  type metadata accessor for InSessionView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy07WorkoutB016SessionViewModelCGMd, &_s7SwiftUI8BindableVy07WorkoutB016SessionViewModelCGMR);
  Bindable.wrappedValue.getter();
  swift_getKeyPath();
  _s11WorkoutCore19LowPowerModeMonitorCAC7Combine16ObservableObjectAAWlTm_2(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, type metadata accessor for SessionViewModel, &protocol conformance descriptor for SessionViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v0 = v8 + OBJC_IVAR____TtC9WorkoutUI16SessionViewModel__mirroredEndWorkoutTimeoutAlertDismissed;
  swift_beginAccess();
  v2 = *v0;
  v1 = *(v0 + 8);
  outlined copy of (@escaping @callee_guaranteed () -> ())?(v2, v1);

  if (v2)
  {
    v2(v3);
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v2, v1);
  }

  Bindable.wrappedValue.getter();
  v4 = OBJC_IVAR____TtC9WorkoutUI16SessionViewModel__mirroredEndWorkoutTimeoutAlert;
  swift_beginAccess();
  if (*(v7 + v4))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *(v7 + v4) = 0;
  }

  return result;
}

uint64_t closure #7 in closure #3 in closure #1 in InSessionView.body.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = WorkoutUIBundle.super.isa;
  v10._object = 0xE000000000000000;
  v3.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v3.value._object = 0xEB00000000656C62;
  v4._object = 0x800000020CBA40A0;
  v4._countAndFlagsBits = 0xD000000000000023;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v10._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v4, v3, v2, v5, v10);

  lazy protocol witness table accessor for type String and conformance String();
  result = Text.init<A>(_:)();
  *a1 = result;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8 & 1;
  *(a1 + 24) = v9;
  return result;
}

uint64_t closure #8 in closure #3 in closure #1 in InSessionView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a1;
  v54 = a2;
  v2 = type metadata accessor for InSessionView(0);
  v47 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v48 = v3;
  v50 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10ButtonRoleVSgMd, &_s7SwiftUI10ButtonRoleVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v42 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v42 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGMR);
  MEMORY[0x28223BE20](v11 - 8);
  v53 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v52 = &v42 - v14;
  MEMORY[0x28223BE20](v15);
  v51 = &v42 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v42 - v18;
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v20 = WorkoutUIBundle.super.isa;
  v56._object = 0xE000000000000000;
  v21._countAndFlagsBits = 0x5F5353494D534944;
  v21._object = 0xEE004E4F54545542;
  v22.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v22.value._object = 0xEB00000000656C62;
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  v56._countAndFlagsBits = 0;
  v24 = NSLocalizedString(_:tableName:bundle:value:comment:)(v21, v22, v20, v23, v56);

  v55 = v24;
  static ButtonRole.cancel.getter();
  v25 = type metadata accessor for ButtonRole();
  v43 = *(*(v25 - 8) + 56);
  v43(v6, 0, 1, v25);
  v45 = lazy protocol witness table accessor for type String and conformance String();
  Button<>.init<A>(_:role:action:)();
  if (one-time initialization token for dismiss != -1)
  {
    swift_once();
  }

  v44 = lazy protocol witness table accessor for type ZStack<TupleView<(<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, LowPowerInSessionOverlay?)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR, MEMORY[0x277CDF028]);
  View.accessibilityIdentifier(_:)();
  v46 = v19;
  v26 = *(v8 + 8);
  v26(v10, v7);
  v27 = WorkoutUIBundle.super.isa;
  v57._object = 0xE000000000000000;
  v28._countAndFlagsBits = 0x4B524F575F444E45;
  v28._object = 0xEB0000000054554FLL;
  v29.value._object = 0x800000020CB936F0;
  v29.value._countAndFlagsBits = 0xD000000000000012;
  v30._countAndFlagsBits = 0;
  v30._object = 0xE000000000000000;
  v57._countAndFlagsBits = 0;
  v31 = NSLocalizedString(_:tableName:bundle:value:comment:)(v28, v29, v27, v30, v57);

  v55 = v31;
  static ButtonRole.destructive.getter();
  v43(v6, 0, 1, v25);
  v32 = v50;
  outlined init with copy of InSessionView(v49, v50);
  v33 = (*(v47 + 80) + 16) & ~*(v47 + 80);
  v34 = swift_allocObject();
  outlined init with take of InSessionView(v32, v34 + v33, type metadata accessor for InSessionView);
  Button<>.init<A>(_:role:action:)();
  if (one-time initialization token for endWorkout != -1)
  {
    swift_once();
  }

  v35 = v51;
  View.accessibilityIdentifier(_:)();
  v26(v10, v7);
  v36 = v46;
  v37 = v52;
  outlined init with copy of ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>(v46, v52);
  v38 = v53;
  outlined init with copy of ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>(v35, v53);
  v39 = v54;
  outlined init with copy of ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>(v37, v54);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVG_AKtMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVG_AKtMR);
  outlined init with copy of ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>(v38, v39 + *(v40 + 48));
  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<MetricPlattersView, _BackgroundStyleModifier<Color>>, _FlexFrameLayout>, _OpacityEffect>, _PaddingLayout>, _AppearanceActionModifier>(v35, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGMR);
  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<MetricPlattersView, _BackgroundStyleModifier<Color>>, _FlexFrameLayout>, _OpacityEffect>, _PaddingLayout>, _AppearanceActionModifier>(v36, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGMR);
  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<MetricPlattersView, _BackgroundStyleModifier<Color>>, _FlexFrameLayout>, _OpacityEffect>, _PaddingLayout>, _AppearanceActionModifier>(v38, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGMR);
  return outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<MetricPlattersView, _BackgroundStyleModifier<Color>>, _FlexFrameLayout>, _OpacityEffect>, _PaddingLayout>, _AppearanceActionModifier>(v37, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGMR);
}

double closure #2 in closure #8 in closure #3 in closure #1 in InSessionView.body.getter(void *a1)
{
  v1 = a1[12];
  v2 = a1[13];
  __swift_project_boxed_opaque_existential_1(a1 + 9, v1);
  v7[1] = 0;
  v7[2] = 0;
  v7[0] = 2;
  v8 = 2;
  (*(v2 + 8))(v7, v1, v2);
  type metadata accessor for InSessionView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy07WorkoutB016SessionViewModelCGMd, &_s7SwiftUI8BindableVy07WorkoutB016SessionViewModelCGMR);
  Bindable.wrappedValue.getter();
  v3 = v7[0];
  v4 = OBJC_IVAR____TtC9WorkoutUI16SessionViewModel__showHeartRateDeviceDisconnectedAlert;
  swift_beginAccess();
  if (*(v3 + v4))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    _s11WorkoutCore19LowPowerModeMonitorCAC7Combine16ObservableObjectAAWlTm_2(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, type metadata accessor for SessionViewModel, &protocol conformance descriptor for SessionViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *(v3 + v4) = 0;
  }

  return result;
}

uint64_t closure #9 in closure #3 in closure #1 in InSessionView.body.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = WorkoutUIBundle.super.isa;
  v10._object = 0xE000000000000000;
  v3._countAndFlagsBits = 0xD00000000000001CLL;
  v3._object = 0x800000020CBA4080;
  v4.value._object = 0x800000020CB936F0;
  v4.value._countAndFlagsBits = 0xD000000000000012;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v10._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, v4, v2, v5, v10);

  lazy protocol witness table accessor for type String and conformance String();
  result = Text.init<A>(_:)();
  *a1 = result;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8 & 1;
  *(a1 + 24) = v9;
  return result;
}

void closure #10 in closure #3 in closure #1 in InSessionView.body.getter(uint64_t a1, _BYTE *a2)
{
  if (*a2 == 1)
  {
    v3 = [objc_allocWithZone(MEMORY[0x277D757B8]) init];
    [v3 notificationOccurred_];
  }
}

void one-time initialization function for contentLeadingTrailingPadding()
{
  v0 = objc_opt_self();
  v1 = [v0 currentDevice];
  v2 = specialized UIDevice.screenType.getter();

  v3 = dbl_20CB8BC78[v2];
  v4 = objc_opt_self();
  v5 = [v4 mainScreen];
  [v5 scale];
  v7 = v6;

  v8 = [v4 mainScreen];
  [v8 nativeScale];
  v10 = v9;

  if (v7 != v10)
  {
    v11 = [v4 mainScreen];
    [v11 scale];
    v13 = v12;

    v14 = [v4 mainScreen];
    [v14 nativeScale];
    v16 = v15;

    v3 = v3 * (v13 / v16 * 0.95);
  }

  static InSessionView.Layout.contentLeadingTrailingPadding = *&v3;
}

uint64_t type metadata accessor for InSessionView(uint64_t a1)
{
  result = type metadata singleton initialization cache for InSessionView;
  if (!type metadata singleton initialization cache for InSessionView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with copy of InSessionView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InSessionView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of ZStack<TupleView<(<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, LowPowerInSessionOverlay?)>>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ZStack<TupleView<(<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, LowPowerInSessionOverlay?)>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<WorkoutAnimationStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ZStack<TupleView<(<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, LowPowerInSessionOverlay?)>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<WorkoutAnimationStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ZStack<TupleView<(<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, LowPowerInSessionOverlay?)>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<WorkoutAnimationStyle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6ZStackVyAA9TupleViewVyAA0G0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaHRd__lFQOyACyACyACyACyACy07WorkoutB0014MetricPlattersG0VAA24_BackgroundStyleModifierVyAA5ColorVGGAA16_FlexFrameLayoutVGAA14_OpacityEffectVGAA08_PaddingX0VGAA017_AppearanceActionT0VG_AiAE0K6Change2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAiAE5alert_AK7actions7messageQrqd___APqd_0_yXEqd_1_yXEtSyRd__AaHRd_0_AaHRd_1_r1_lFQOyAiAEA14__AKA15_A16_Qrqd___APqd_0_yXEqd_1_yXEtSyRd__AaHRd_0_AaHRd_1_r1_lFQOyAiAEA11_A12_A13__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___SbyyctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___SbyyctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___SbyyctSQRd__lFQOyAiAE19presentationDetents_9selectionQrShyAA18PresentationDetentVG_AOyA20_GtFQOyACyAR20SessionControlsSheetVA0_G_Qo__A20_Qo__SbQo__SbQo__0O4Core0O19BuddyStatePublisherC5StateOQo__So21NLWorkoutPausedReasonVQo__SSACyAA6ButtonVyAA4TextVGAA023AccessibilityAttachmentT0VGA42_Qo__SSAGyA46__A46_tGA42_Qo__SbQo_Qo__AR24LowPowerInSessionOverlayVSgtGGA0_GAA022_EnvironmentKeyWritingT0VyAR0o9AnimationS0OGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ZStackVyAA9TupleViewVyAA0G0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaHRd__lFQOyACyACyACyACyACy07WorkoutB0014MetricPlattersG0VAA24_BackgroundStyleModifierVyAA5ColorVGGAA16_FlexFrameLayoutVGAA14_OpacityEffectVGAA08_PaddingX0VGAA017_AppearanceActionT0VG_AiAE0K6Change2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAiAE5alert_AK7actions7messageQrqd___APqd_0_yXEqd_1_yXEtSyRd__AaHRd_0_AaHRd_1_r1_lFQOyAiAEA14__AKA15_A16_Qrqd___APqd_0_yXEqd_1_yXEtSyRd__AaHRd_0_AaHRd_1_r1_lFQOyAiAEA11_A12_A13__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___SbyyctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___SbyyctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___SbyyctSQRd__lFQOyAiAE19presentationDetents_9selectionQrShyAA18PresentationDetentVG_AOyA20_GtFQOyACyAR20SessionControlsSheetVA0_G_Qo__A20_Qo__SbQo__SbQo__0O4Core0O19BuddyStatePublisherC5StateOQo__So21NLWorkoutPausedReasonVQo__SSACyAA6ButtonVyAA4TextVGAA023AccessibilityAttachmentT0VGA42_Qo__SSAGyA46__A46_tGA42_Qo__SbQo_Qo__AR24LowPowerInSessionOverlayVSgtGGA0_GAA022_EnvironmentKeyWritingT0VyAR0o9AnimationS0OGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ZStack<TupleView<(<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, LowPowerInSessionOverlay?)>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ZStack<TupleView<(<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, LowPowerInSessionOverlay?)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<WorkoutAnimationStyle> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy07WorkoutB00G14AnimationStyleOGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy07WorkoutB00G14AnimationStyleOGMR, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ZStack<TupleView<(<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, LowPowerInSessionOverlay?)>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<WorkoutAnimationStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ZStack<TupleView<(<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, LowPowerInSessionOverlay?)>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, LowPowerInSessionOverlay?)>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, LowPowerInSessionOverlay?)>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyAA0G0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaHRd__lFQOyACyACyACyACyACy07WorkoutB0014MetricPlattersG0VAA24_BackgroundStyleModifierVyAA5ColorVGGAA16_FlexFrameLayoutVGAA14_OpacityEffectVGAA08_PaddingX0VGAA017_AppearanceActionT0VG_AiAE0K6Change2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAiAE5alert_AK7actions7messageQrqd___APqd_0_yXEqd_1_yXEtSyRd__AaHRd_0_AaHRd_1_r1_lFQOyAiAEA14__AKA15_A16_Qrqd___APqd_0_yXEqd_1_yXEtSyRd__AaHRd_0_AaHRd_1_r1_lFQOyAiAEA11_A12_A13__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___SbyyctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___SbyyctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___SbyyctSQRd__lFQOyAiAE19presentationDetents_9selectionQrShyAA18PresentationDetentVG_AOyA20_GtFQOyACyAR20SessionControlsSheetVA0_G_Qo__A20_Qo__SbQo__SbQo__0O4Core0O19BuddyStatePublisherC5StateOQo__So21NLWorkoutPausedReasonVQo__SSACyAA6ButtonVyAA4TextVGAA023AccessibilityAttachmentT0VGA42_Qo__SSAGyA46__A46_tGA42_Qo__SbQo_Qo__AR24LowPowerInSessionOverlayVSgtGGA0_GMd, &_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyAA0G0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaHRd__lFQOyACyACyACyACyACy07WorkoutB0014MetricPlattersG0VAA24_BackgroundStyleModifierVyAA5ColorVGGAA16_FlexFrameLayoutVGAA14_OpacityEffectVGAA08_PaddingX0VGAA017_AppearanceActionT0VG_AiAE0K6Change2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAiAE5alert_AK7actions7messageQrqd___APqd_0_yXEqd_1_yXEtSyRd__AaHRd_0_AaHRd_1_r1_lFQOyAiAEA14__AKA15_A16_Qrqd___APqd_0_yXEqd_1_yXEtSyRd__AaHRd_0_AaHRd_1_r1_lFQOyAiAEA11_A12_A13__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___SbyyctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___SbyyctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___SbyyctSQRd__lFQOyAiAE19presentationDetents_9selectionQrShyAA18PresentationDetentVG_AOyA20_GtFQOyACyAR20SessionControlsSheetVA0_G_Qo__A20_Qo__SbQo__SbQo__0O4Core0O19BuddyStatePublisherC5StateOQo__So21NLWorkoutPausedReasonVQo__SSACyAA6ButtonVyAA4TextVGAA023AccessibilityAttachmentT0VGA42_Qo__SSAGyA46__A46_tGA42_Qo__SbQo_Qo__AR24LowPowerInSessionOverlayVSgtGGA0_GMR);
    lazy protocol witness table accessor for type ZStack<TupleView<(<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, LowPowerInSessionOverlay?)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type ZStack<TupleView<(<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, LowPowerInSessionOverlay?)>> and conformance ZStack<A>, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA0E0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaFRd__lFQOyAA15ModifiedContentVyAQyAQyAQyAQy07WorkoutB0014MetricPlattersE0VAA24_BackgroundStyleModifierVyAA5ColorVGGAA16_FlexFrameLayoutVGAA14_OpacityEffectVGAA08_PaddingX0VGAA017_AppearanceActionT0VG_AgAE0I6Change2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAgAE5alert_AI7actions7messageQrqd___ANqd_0_yXEqd_1_yXEtSyRd__AaFRd_0_AaFRd_1_r1_lFQOyAgAEA14__AIA15_A16_Qrqd___ANqd_0_yXEqd_1_yXEtSyRd__AaFRd_0_AaFRd_1_r1_lFQOyAgAEA11_A12_A13__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAgAEA11_A12_A13__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAgAEA11_A12_A13__Qrqd___SbyyctSQRd__lFQOyAgAEA11_A12_A13__Qrqd___SbyyctSQRd__lFQOyAgAEA11_A12_A13__Qrqd___SbyyctSQRd__lFQOyAgAE19presentationDetents_9selectionQrShyAA18PresentationDetentVG_AMyA20_GtFQOyAQyAR20SessionControlsSheetVA0_G_Qo__A20_Qo__SbQo__SbQo__0O4Core0O19BuddyStatePublisherC5StateOQo__So21NLWorkoutPausedReasonVQo__SSAQyAA6ButtonVyAA4TextVGAA023AccessibilityAttachmentT0VGA42_Qo__SSAEyA46__A46_tGA42_Qo__SbQo_Qo__AR24LowPowerInSessionOverlayVSgtGGMd, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA0E0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaFRd__lFQOyAA15ModifiedContentVyAQyAQyAQyAQy07WorkoutB0014MetricPlattersE0VAA24_BackgroundStyleModifierVyAA5ColorVGGAA16_FlexFrameLayoutVGAA14_OpacityEffectVGAA08_PaddingX0VGAA017_AppearanceActionT0VG_AgAE0I6Change2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAgAE5alert_AI7actions7messageQrqd___ANqd_0_yXEqd_1_yXEtSyRd__AaFRd_0_AaFRd_1_r1_lFQOyAgAEA14__AIA15_A16_Qrqd___ANqd_0_yXEqd_1_yXEtSyRd__AaFRd_0_AaFRd_1_r1_lFQOyAgAEA11_A12_A13__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAgAEA11_A12_A13__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAgAEA11_A12_A13__Qrqd___SbyyctSQRd__lFQOyAgAEA11_A12_A13__Qrqd___SbyyctSQRd__lFQOyAgAEA11_A12_A13__Qrqd___SbyyctSQRd__lFQOyAgAE19presentationDetents_9selectionQrShyAA18PresentationDetentVG_AMyA20_GtFQOyAQyAR20SessionControlsSheetVA0_G_Qo__A20_Qo__SbQo__SbQo__0O4Core0O19BuddyStatePublisherC5StateOQo__So21NLWorkoutPausedReasonVQo__SSAQyAA6ButtonVyAA4TextVGAA023AccessibilityAttachmentT0VGA42_Qo__SSAEyA46__A46_tGA42_Qo__SbQo_Qo__AR24LowPowerInSessionOverlayVSgtGGMR, MEMORY[0x277CE11A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, LowPowerInSessionOverlay?)>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata completion function for InSessionView(uint64_t a1)
{
  type metadata accessor for ObservedObject<LowPowerModeMonitor>(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for MetricsPublisher();
    if (v2 <= 0x3F)
    {
      type metadata accessor for ObservedObject<WorkoutStatePublisher>(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for ObservedObject<WorkoutBuddyStatePublisher>(319);
        if (v4 <= 0x3F)
        {
          type metadata accessor for WorkoutNotificationCenter();
          if (v5 <= 0x3F)
          {
            _sSo21FIUIFormattingManagerCMaTm_14(319, &lazy cache variable for type metadata for FIUIFormattingManager, 0x277D0A7E8);
            if (v6 <= 0x3F)
            {
              type metadata accessor for SessionControls();
              if (v7 <= 0x3F)
              {
                type metadata accessor for State<SessionControlsState>(319, &lazy cache variable for type metadata for State<SessionControlsState>, type metadata accessor for SessionControlsState, MEMORY[0x277CE10B8]);
                if (v8 <= 0x3F)
                {
                  type metadata accessor for State<SessionControlsState>(319, &lazy cache variable for type metadata for Bindable<SessionViewModel>, type metadata accessor for SessionViewModel, MEMORY[0x277CE12F8]);
                  if (v9 <= 0x3F)
                  {
                    type metadata accessor for MetricPlatterAnalytics();
                    if (v10 <= 0x3F)
                    {
                      type metadata accessor for LowPowerViewModel(319);
                      if (v11 <= 0x3F)
                      {
                        type metadata accessor for State<SessionControlsState>(319, &lazy cache variable for type metadata for State<PresentationDetent>, MEMORY[0x277CDDE90], MEMORY[0x277CE10B8]);
                        if (v12 <= 0x3F)
                        {
                          type metadata accessor for State<Bool>();
                          if (v13 <= 0x3F)
                          {
                            swift_cvw_initStructMetadataWithLayoutString();
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void type metadata accessor for State<SessionControlsState>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<LegibilityWeight?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<LegibilityWeight?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<LegibilityWeight?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE15dynamicTypeSizeyQrAA07DynamicgH0OFQOyACyACyACyAA6ZStackVyAA05TupleE0VyAeAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaDRd__lFQOyACyACyACyACyACy07WorkoutB0014MetricPlattersE0VAA24_BackgroundStyleModifierVyAA5ColorVGGAA16_FlexFrameLayoutVGAA14_OpacityEffectVGAA14_PaddingLayoutVGAA017_AppearanceActionX0VG_AeAE0O6Change2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAeAE5alert_AN7actions7messageQrqd___ASqd_0_yXEqd_1_yXEtSyRd__AaDRd_0_AaDRd_1_r1_lFQOyAeAEA17__ANA18_A19_Qrqd___ASqd_0_yXEqd_1_yXEtSyRd__AaDRd_0_AaDRd_1_r1_lFQOyAeAEA14_A15_A16__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAeAEA14_A15_A16__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAeAEA14_A15_A16__Qrqd___SbyyctSQRd__lFQOyAeAEA14_A15_A16__Qrqd___SbyyctSQRd__lFQOyAeAEA14_A15_A16__Qrqd___SbyyctSQRd__lFQOyAeAE19presentationDetents_9selectionQrShyAA18PresentationDetentVG_ARyA23_GtFQOyACyAU20SessionControlsSheetVA3_G_Qo__A23_Qo__SbQo__SbQo__0S4Core0S19BuddyStatePublisherC5StateOQo__So21NLWorkoutPausedReasonVQo__SSACyAA6ButtonVyAA4TextVGAA023AccessibilityAttachmentX0VGA45_Qo__SSALyA49__A49_tGA45_Qo__SbQo_Qo__AU24LowPowerInSessionOverlayVSgtGGA3_GAA022_EnvironmentKeyWritingX0VyAU0s9AnimationW0OGGA12_G_Qo_A62_yAA16LegibilityWeightOSgGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE15dynamicTypeSizeyQrAA07DynamicgH0OFQOyACyACyACyAA6ZStackVyAA05TupleE0VyAeAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaDRd__lFQOyACyACyACyACyACy07WorkoutB0014MetricPlattersE0VAA24_BackgroundStyleModifierVyAA5ColorVGGAA16_FlexFrameLayoutVGAA14_OpacityEffectVGAA14_PaddingLayoutVGAA017_AppearanceActionX0VG_AeAE0O6Change2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAeAE5alert_AN7actions7messageQrqd___ASqd_0_yXEqd_1_yXEtSyRd__AaDRd_0_AaDRd_1_r1_lFQOyAeAEA17__ANA18_A19_Qrqd___ASqd_0_yXEqd_1_yXEtSyRd__AaDRd_0_AaDRd_1_r1_lFQOyAeAEA14_A15_A16__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAeAEA14_A15_A16__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAeAEA14_A15_A16__Qrqd___SbyyctSQRd__lFQOyAeAEA14_A15_A16__Qrqd___SbyyctSQRd__lFQOyAeAEA14_A15_A16__Qrqd___SbyyctSQRd__lFQOyAeAE19presentationDetents_9selectionQrShyAA18PresentationDetentVG_ARyA23_GtFQOyACyAU20SessionControlsSheetVA3_G_Qo__A23_Qo__SbQo__SbQo__0S4Core0S19BuddyStatePublisherC5StateOQo__So21NLWorkoutPausedReasonVQo__SSACyAA6ButtonVyAA4TextVGAA023AccessibilityAttachmentX0VGA45_Qo__SSALyA49__A49_tGA45_Qo__SbQo_Qo__AU24LowPowerInSessionOverlayVSgtGGA3_GAA022_EnvironmentKeyWritingX0VyAU0s9AnimationW0OGGA12_G_Qo_A62_yAA16LegibilityWeightOSgGGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6ZStackVyAA9TupleViewVyAA0G0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaHRd__lFQOyACyACyACyACyACy07WorkoutB0014MetricPlattersG0VAA24_BackgroundStyleModifierVyAA5ColorVGGAA16_FlexFrameLayoutVGAA14_OpacityEffectVGAA08_PaddingX0VGAA017_AppearanceActionT0VG_AiAE0K6Change2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAiAE5alert_AK7actions7messageQrqd___APqd_0_yXEqd_1_yXEtSyRd__AaHRd_0_AaHRd_1_r1_lFQOyAiAEA14__AKA15_A16_Qrqd___APqd_0_yXEqd_1_yXEtSyRd__AaHRd_0_AaHRd_1_r1_lFQOyAiAEA11_A12_A13__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___SbyyctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___SbyyctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___SbyyctSQRd__lFQOyAiAE19presentationDetents_9selectionQrShyAA18PresentationDetentVG_AOyA20_GtFQOyACyAR20SessionControlsSheetVA0_G_Qo__A20_Qo__SbQo__SbQo__0O4Core0O19BuddyStatePublisherC5StateOQo__So21NLWorkoutPausedReasonVQo__SSACyAA6ButtonVyAA4TextVGAA023AccessibilityAttachmentT0VGA42_Qo__SSAGyA46__A46_tGA42_Qo__SbQo_Qo__AR24LowPowerInSessionOverlayVSgtGGA0_GAA022_EnvironmentKeyWritingT0VyAR0o9AnimationS0OGGA9_GMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6ZStackVyAA9TupleViewVyAA0G0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaHRd__lFQOyACyACyACyACyACy07WorkoutB0014MetricPlattersG0VAA24_BackgroundStyleModifierVyAA5ColorVGGAA16_FlexFrameLayoutVGAA14_OpacityEffectVGAA08_PaddingX0VGAA017_AppearanceActionT0VG_AiAE0K6Change2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAiAE5alert_AK7actions7messageQrqd___APqd_0_yXEqd_1_yXEtSyRd__AaHRd_0_AaHRd_1_r1_lFQOyAiAEA14__AKA15_A16_Qrqd___APqd_0_yXEqd_1_yXEtSyRd__AaHRd_0_AaHRd_1_r1_lFQOyAiAEA11_A12_A13__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___SbyyctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___SbyyctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___SbyyctSQRd__lFQOyAiAE19presentationDetents_9selectionQrShyAA18PresentationDetentVG_AOyA20_GtFQOyACyAR20SessionControlsSheetVA0_G_Qo__A20_Qo__SbQo__SbQo__0O4Core0O19BuddyStatePublisherC5StateOQo__So21NLWorkoutPausedReasonVQo__SSACyAA6ButtonVyAA4TextVGAA023AccessibilityAttachmentT0VGA42_Qo__SSAGyA46__A46_tGA42_Qo__SbQo_Qo__AR24LowPowerInSessionOverlayVSgtGGA0_GAA022_EnvironmentKeyWritingT0VyAR0o9AnimationS0OGGA9_GMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ZStack<TupleView<(<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, LowPowerInSessionOverlay?)>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<WorkoutAnimationStyle>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>( &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ZStack<TupleView<(<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, LowPowerInSessionOverlay?)>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<WorkoutAnimationStyle>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>,  &_s7SwiftUI15ModifiedContentVyACyACyAA6ZStackVyAA9TupleViewVyAA0G0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaHRd__lFQOyACyACyACyACyACy07WorkoutB0014MetricPlattersG0VAA24_BackgroundStyleModifierVyAA5ColorVGGAA16_FlexFrameLayoutVGAA14_OpacityEffectVGAA08_PaddingX0VGAA017_AppearanceActionT0VG_AiAE0K6Change2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAiAE5alert_AK7actions7messageQrqd___APqd_0_yXEqd_1_yXEtSyRd__AaHRd_0_AaHRd_1_r1_lFQOyAiAEA14__AKA15_A16_Qrqd___APqd_0_yXEqd_1_yXEtSyRd__AaHRd_0_AaHRd_1_r1_lFQOyAiAEA11_A12_A13__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___SbyyctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___SbyyctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___SbyyctSQRd__lFQOyAiAE19presentationDetents_9selectionQrShyAA18PresentationDetentVG_AOyA20_GtFQOyACyAR20SessionControlsSheetVA0_G_Qo__A20_Qo__SbQo__SbQo__0O4Core0O19BuddyStatePublisherC5StateOQo__So21NLWorkoutPausedReasonVQo__SSACyAA6ButtonVyAA4TextVGAA023AccessibilityAttachmentT0VGA42_Qo__SSAGyA46__A46_tGA42_Qo__SbQo_Qo__AR24LowPowerInSessionOverlayVSgtGGA0_GAA022_EnvironmentKeyWritingT0VyAR0o9AnimationS0OGGA9_GMd,  &_s7SwiftUI15ModifiedContentVyACyACyAA6ZStackVyAA9TupleViewVyAA0G0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaHRd__lFQOyACyACyACyACyACy07WorkoutB0014MetricPlattersG0VAA24_BackgroundStyleModifierVyAA5ColorVGGAA16_FlexFrameLayoutVGAA14_OpacityEffectVGAA08_PaddingX0VGAA017_AppearanceActionT0VG_AiAE0K6Change2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAiAE5alert_AK7actions7messageQrqd___APqd_0_yXEqd_1_yXEtSyRd__AaHRd_0_AaHRd_1_r1_lFQOyAiAEA14__AKA15_A16_Qrqd___APqd_0_yXEqd_1_yXEtSyRd__AaHRd_0_AaHRd_1_r1_lFQOyAiAEA11_A12_A13__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___SbyyctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___SbyyctSQRd__lFQOyAiAEA11_A12_A13__Qrqd___SbyyctSQRd__lFQOyAiAE19presentationDetents_9selectionQrShyAA18PresentationDetentVG_AOyA20_GtFQOyACyAR20SessionControlsSheetVA0_G_Qo__A20_Qo__SbQo__SbQo__0O4Core0O19BuddyStatePublisherC5StateOQo__So21NLWorkoutPausedReasonVQo__SSACyAA6ButtonVyAA4TextVGAA023AccessibilityAttachmentT0VGA42_Qo__SSAGyA46__A46_tGA42_Qo__SbQo_Qo__AR24LowPowerInSessionOverlayVSgtGGA0_GAA022_EnvironmentKeyWritingT0VyAR0o9AnimationS0OGGA9_GMR,  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ZStack<TupleView<(<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, LowPowerInSessionOverlay?)>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<WorkoutAnimationStyle>> and conformance <> ModifiedContent<A, B>);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type ZStack<TupleView<(<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, LowPowerInSessionOverlay?)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<LegibilityWeight?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA16LegibilityWeightOSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA16LegibilityWeightOSgGMR, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<LegibilityWeight?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined init with take of ModifiedContent<MetricPlattersView, _BackgroundStyleModifier<Color>>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t partial apply for closure #1 in closure #1 in InSessionView.body.getter(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for InSessionView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t partial apply for closure #3 in closure #1 in InSessionView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for InSessionView(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return closure #3 in closure #1 in InSessionView.body.getter(v4, a1);
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ZStack<TupleView<(<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, LowPowerInSessionOverlay?)>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<WorkoutAnimationStyle>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<MetricPlattersView, _BackgroundStyleModifier<Color>>, _FlexFrameLayout>, _OpacityEffect>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<MetricPlattersView, _BackgroundStyleModifier<Color>>, _FlexFrameLayout>, _OpacityEffect>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<MetricPlattersView, _BackgroundStyleModifier<Color>>, _FlexFrameLayout>, _OpacityEffect>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACy07WorkoutB018MetricPlattersViewVAA24_BackgroundStyleModifierVyAA5ColorVGGAA16_FlexFrameLayoutVGAA14_OpacityEffectVGAA08_PaddingO0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACy07WorkoutB018MetricPlattersViewVAA24_BackgroundStyleModifierVyAA5ColorVGGAA16_FlexFrameLayoutVGAA14_OpacityEffectVGAA08_PaddingO0VGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<MetricPlattersView, _BackgroundStyleModifier<Color>>, _FlexFrameLayout>, _OpacityEffect> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<MetricPlattersView, _BackgroundStyleModifier<Color>>, _FlexFrameLayout>, _OpacityEffect>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<MetricPlattersView, _BackgroundStyleModifier<Color>>, _FlexFrameLayout>, _OpacityEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<MetricPlattersView, _BackgroundStyleModifier<Color>>, _FlexFrameLayout>, _OpacityEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<MetricPlattersView, _BackgroundStyleModifier<Color>>, _FlexFrameLayout>, _OpacityEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB018MetricPlattersViewVAA24_BackgroundStyleModifierVyAA5ColorVGGAA16_FlexFrameLayoutVGAA14_OpacityEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB018MetricPlattersViewVAA24_BackgroundStyleModifierVyAA5ColorVGGAA16_FlexFrameLayoutVGAA14_OpacityEffectVGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<MetricPlattersView, _BackgroundStyleModifier<Color>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<MetricPlattersView, _BackgroundStyleModifier<Color>>, _FlexFrameLayout>, _OpacityEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<MetricPlattersView, _BackgroundStyleModifier<Color>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<MetricPlattersView, _BackgroundStyleModifier<Color>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<MetricPlattersView, _BackgroundStyleModifier<Color>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB018MetricPlattersViewVAA24_BackgroundStyleModifierVyAA5ColorVGGAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB018MetricPlattersViewVAA24_BackgroundStyleModifierVyAA5ColorVGGAA16_FlexFrameLayoutVGMR);
    lazy protocol witness table accessor for type ModifiedContent<MetricPlattersView, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<MetricPlattersView, _BackgroundStyleModifier<Color>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<MetricPlattersView, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<MetricPlattersView, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<MetricPlattersView, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB018MetricPlattersViewVAA24_BackgroundStyleModifierVyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB018MetricPlattersViewVAA24_BackgroundStyleModifierVyAA5ColorVGGMR);
    _s11WorkoutCore19LowPowerModeMonitorCAC7Combine16ObservableObjectAAWlTm_2(&lazy protocol witness table cache variable for type MetricPlattersView and conformance MetricPlattersView, type metadata accessor for MetricPlattersView, &protocol conformance descriptor for MetricPlattersView);
    lazy protocol witness table accessor for type ZStack<TupleView<(<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, LowPowerInSessionOverlay?)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type _BackgroundStyleModifier<Color> and conformance _BackgroundStyleModifier<A>, &_s7SwiftUI24_BackgroundStyleModifierVyAA5ColorVGMd, &_s7SwiftUI24_BackgroundStyleModifierVyAA5ColorVGMR, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<MetricPlattersView, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<SessionControlsSheet, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<SessionControlsSheet, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<SessionControlsSheet, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB020SessionControlsSheetVAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB020SessionControlsSheetVAA16_FlexFrameLayoutVGMR);
    _s11WorkoutCore19LowPowerModeMonitorCAC7Combine16ObservableObjectAAWlTm_2(&lazy protocol witness table cache variable for type SessionControlsSheet and conformance SessionControlsSheet, type metadata accessor for SessionControlsSheet, &protocol conformance descriptor for SessionControlsSheet);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<SessionControlsSheet, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

double outlined copy of LowPowerInSessionOverlay?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

double outlined consume of LowPowerInSessionOverlay?(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
  }

  return result;
}

uint64_t outlined init with take of InSessionView(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double partial apply for closure #4 in closure #3 in closure #1 in InSessionView.body.getter(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for InSessionView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return closure #4 in closure #3 in closure #1 in InSessionView.body.getter(a1, a2, v6);
}

double partial apply for closure #5 in closure #3 in closure #1 in InSessionView.body.getter(uint64_t a1, uint64_t *a2)
{
  type metadata accessor for InSessionView(0);

  return closure #5 in closure #3 in closure #1 in InSessionView.body.getter(a1, a2);
}

uint64_t outlined init with copy of ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<MetricPlattersView, _BackgroundStyleModifier<Color>>, _FlexFrameLayout>, _OpacityEffect>, _PaddingLayout>, _AppearanceActionModifier>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _sSo21FIUIFormattingManagerCMaTm_14(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t objectdestroyTm_91()
{
  v1 = (type metadata accessor for InSessionView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  __swift_destroy_boxed_opaque_existential_1((v2 + 72));

  v3 = v1[14];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy07WorkoutB016SessionViewModelCGMd, &_s7SwiftUI8BindableVy07WorkoutB016SessionViewModelCGMR);
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  v5 = v2 + v1[18];
  v6 = type metadata accessor for PresentationDetent();
  (*(*(v6 - 8) + 8))(v5, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVyAA18PresentationDetentVGMd, &_s7SwiftUI5StateVyAA18PresentationDetentVGMR);

  return swift_deallocObject();
}

double block_copy_helper_40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t _s11WorkoutCore19LowPowerModeMonitorCAC7Combine16ObservableObjectAAWlTm_2(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t lazy protocol witness table accessor for type ZStack<TupleView<(<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, LowPowerInSessionOverlay?)>> and conformance ZStack<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t getEnumTagSinglePayload for IntervalBlocksReorderingView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for IntervalBlocksReorderingView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id closure #1 in IntervalBlocksReorderingView.body.getter@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  IntervalWorkout.stepBlocks.getter();
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = a3;
  v8 = a2;
  v15 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore0A5BlockCGMd, &_sSay11WorkoutCore0A5BlockCGMR);
  type metadata accessor for UUID();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE20accessibilityActionsyQrqd__yXEAaBRd__lFQOyAA5GroupVyAA19_ConditionalContentVyAHyAA08ModifiedH0VyAcAE0D7Element8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6VStackVyAA05TupleC0Vy07WorkoutB009RepeatRowC0V_AA7DividerVAA6HStackVyARyAPyAA7ForEachVySay0Q4Core0Q4StepCG10Foundation4UUIDVAS0qyS0VGG_AA6SpacerVAJyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGtGG_Qo_AA0L18AttachmentModifierVGAcAEAkLQrAN_tFQOyAPyAA7SectionVyAA05EmptyC0VARyAU_A23_tGA33_GG_Qo_GAJyAcAEAkLQrAN_tFQOyAYyARyA8__A12_A21_tGG_Qo_A28_GSgGG_ARyAA6ButtonVyAA4TextVGSg_A51_tGSgQo_Md, &_s7SwiftUI4ViewPAAE20accessibilityActionsyQrqd__yXEAaBRd__lFQOyAA5GroupVyAA19_ConditionalContentVyAHyAA08ModifiedH0VyAcAE0D7Element8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6VStackVyAA05TupleC0Vy07WorkoutB009RepeatRowC0V_AA7DividerVAA6HStackVyARyAPyAA7ForEachVySay0Q4Core0Q4StepCG10Foundation4UUIDVAS0qyS0VGG_AA6SpacerVAJyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGtGG_Qo_AA0L18AttachmentModifierVGAcAEAkLQrAN_tFQOyAPyAA7SectionVyAA05EmptyC0VARyAU_A23_tGA33_GG_Qo_GAJyAcAEAkLQrAN_tFQOyAYyARyA8__A12_A21_tGG_Qo_A28_GSgGG_ARyAA6ButtonVyAA4TextVGSg_A51_tGSgQo_MR);
  lazy protocol witness table accessor for type VStack<TupleView<(RepeatRowView, Divider, HStack<TupleView<(VStack<ForEach<[WorkoutStep], UUID, WorkoutStepRow>>, Spacer, ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>)>>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type [WorkoutBlock] and conformance [A], &_sSay11WorkoutCore0A5BlockCGMd, &_sSay11WorkoutCore0A5BlockCGMR, MEMORY[0x277D83980]);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI5GroupVyAA19_ConditionalContentVyAEyAA08ModifiedE0VyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6VStackVyAA05TupleG0Vy07WorkoutB009RepeatRowG0V_AA7DividerVAA6HStackVyAQyAOyAA7ForEachVySay0P4Core0P4StepCG10Foundation4UUIDVAR0pxR0VGG_AA6SpacerVAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGtGG_Qo_AA0K18AttachmentModifierVGAiAEAjKQrAM_tFQOyAOyAA7SectionVyAA05EmptyG0VAQyAT_A22_tGA32_GG_Qo_GAGyAiAEAjKQrAM_tFQOyAXyAQyA7__A11_A20_tGG_Qo_A27_GSgGGMd, &_s7SwiftUI5GroupVyAA19_ConditionalContentVyAEyAA08ModifiedE0VyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6VStackVyAA05TupleG0Vy07WorkoutB009RepeatRowG0V_AA7DividerVAA6HStackVyAQyAOyAA7ForEachVySay0P4Core0P4StepCG10Foundation4UUIDVAR0pxR0VGG_AA6SpacerVAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGtGG_Qo_AA0K18AttachmentModifierVGAiAEAjKQrAM_tFQOyAOyAA7SectionVyAA05EmptyG0VAQyAT_A22_tGA32_GG_Qo_GAGyAiAEAjKQrAM_tFQOyAXyAQyA7__A11_A20_tGG_Qo_A27_GSgGGMR);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI9TupleViewVyAA6ButtonVyAA4TextVGSg_AItGSgMd, &_s7SwiftUI9TupleViewVyAA6ButtonVyAA4TextVGSg_AItGSgMR);
  lazy protocol witness table accessor for type Group<_ConditionalContent<_ConditionalContent<ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, <<opaque return type of View.accessibilityElement(children:)>>.0>, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>?>> and conformance <A> Group<A>();
  lazy protocol witness table accessor for type TupleView<(Button<Text>?, Button<Text>?)>? and conformance <A> A?();
  swift_getOpaqueTypeConformance2();
  _s7SwiftUI31AccessibilityAttachmentModifierVAcA04ViewE0AAWlTm_10(&lazy protocol witness table cache variable for type WorkoutBlock and conformance WorkoutBlock, MEMORY[0x277D7DD60], MEMORY[0x277D7DD70]);
  ForEach<>.init(_:content:)();
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = v8;
  v9[4] = v15;
  v10 = swift_allocObject();
  *(v10 + 16) = partial apply for closure #2 in closure #1 in IntervalBlocksReorderingView.body.getter;
  *(v10 + 24) = v9;
  v11 = (a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA7ForEachVySay11WorkoutCore0G5BlockCG10Foundation4UUIDVAA4ViewPAAE20accessibilityActionsyQrqd__yXEAaMRd__lFQOyAA5GroupVyAA012_ConditionalD0VyASyACyAnAE0M7Element8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6VStackVyAA05TupleL0Vy0gB009RepeatRowL0V_AA7DividerVAA6HStackVyA_yAYyAEySayAF0G4StepCGALA0_0g4StepY0VGG_AA6SpacerVACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGtGG_Qo_AA0S18AttachmentModifierVGAnAEAtUQrAW_tFQOyAYyAA7SectionVyAA05EmptyL0VA_yA2__A26_tGA36_GG_Qo_GACyAnAEAtUQrAW_tFQOyA6_yA_yA11__A15_A24_tGG_Qo_A31_GSgGG_A_yAA6ButtonVyAA4TextVGSg_A54_tGSgQo_GAA21_TraitWritingModifierVyAA14OnMoveTraitKeyVGGMd, &_s7SwiftUI15ModifiedContentVyAA7ForEachVySay11WorkoutCore0G5BlockCG10Foundation4UUIDVAA4ViewPAAE20accessibilityActionsyQrqd__yXEAaMRd__lFQOyAA5GroupVyAA012_ConditionalD0VyASyACyAnAE0M7Element8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6VStackVyAA05TupleL0Vy0gB009RepeatRowL0V_AA7DividerVAA6HStackVyA_yAYyAEySayAF0G4StepCGALA0_0g4StepY0VGG_AA6SpacerVACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGtGG_Qo_AA0S18AttachmentModifierVGAnAEAtUQrAW_tFQOyAYyAA7SectionVyAA05EmptyL0VA_yA2__A26_tGA36_GG_Qo_GACyAnAEAtUQrAW_tFQOyA6_yA_yA11__A15_A24_tGG_Qo_A31_GSgGG_A_yAA6ButtonVyAA4TextVGSg_A54_tGSgQo_GAA21_TraitWritingModifierVyAA14OnMoveTraitKeyVGGMR) + 36));
  *v11 = _s10Foundation8IndexSetVSiIegny_ACSiytIegnnr_TRTA_0;
  v11[1] = v10;
  v12 = v8;

  return v15;
}

uint64_t closure #1 in closure #1 in IntervalBlocksReorderingView.body.getter(uint64_t *a1, uint64_t a2, void *a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5GroupVyAA19_ConditionalContentVyAEyAA08ModifiedE0VyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6VStackVyAA05TupleG0Vy07WorkoutB009RepeatRowG0V_AA7DividerVAA6HStackVyAQyAOyAA7ForEachVySay0P4Core0P4StepCG10Foundation4UUIDVAR0pxR0VGG_AA6SpacerVAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGtGG_Qo_AA0K18AttachmentModifierVGAiAEAjKQrAM_tFQOyAOyAA7SectionVyAA05EmptyG0VAQyAT_A22_tGA32_GG_Qo_GAGyAiAEAjKQrAM_tFQOyAXyAQyA7__A11_A20_tGG_Qo_A27_GSgGGMd, &_s7SwiftUI5GroupVyAA19_ConditionalContentVyAEyAA08ModifiedE0VyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6VStackVyAA05TupleG0Vy07WorkoutB009RepeatRowG0V_AA7DividerVAA6HStackVyAQyAOyAA7ForEachVySay0P4Core0P4StepCG10Foundation4UUIDVAR0pxR0VGG_AA6SpacerVAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGtGG_Qo_AA0K18AttachmentModifierVGAiAEAjKQrAM_tFQOyAOyAA7SectionVyAA05EmptyG0VAQyAT_A22_tGA32_GG_Qo_GAGyAiAEAjKQrAM_tFQOyAXyAQyA7__A11_A20_tGG_Qo_A27_GSgGGMR);
  MEMORY[0x28223BE20](v8);
  v10 = &v13[-v9];
  v11 = *a1;
  closure #1 in closure #1 in closure #1 in IntervalBlocksReorderingView.body.getter(v11, a2, a3, a4, &v13[-v9]);
  v14 = a2;
  v15 = a3;
  v16 = a4;
  v17 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA6ButtonVyAA4TextVGSg_AItGSgMd, &_s7SwiftUI9TupleViewVyAA6ButtonVyAA4TextVGSg_AItGSgMR);
  lazy protocol witness table accessor for type Group<_ConditionalContent<_ConditionalContent<ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, <<opaque return type of View.accessibilityElement(children:)>>.0>, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>?>> and conformance <A> Group<A>();
  lazy protocol witness table accessor for type TupleView<(Button<Text>?, Button<Text>?)>? and conformance <A> A?();
  View.accessibilityActions<A>(_:)();
  return outlined destroy of Group<_ConditionalContent<_ConditionalContent<ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, <<opaque return type of View.accessibilityElement(children:)>>.0>, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>?>>(v10, &_s7SwiftUI5GroupVyAA19_ConditionalContentVyAEyAA08ModifiedE0VyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6VStackVyAA05TupleG0Vy07WorkoutB009RepeatRowG0V_AA7DividerVAA6HStackVyAQyAOyAA7ForEachVySay0P4Core0P4StepCG10Foundation4UUIDVAR0pxR0VGG_AA6SpacerVAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGtGG_Qo_AA0K18AttachmentModifierVGAiAEAjKQrAM_tFQOyAOyAA7SectionVyAA05EmptyG0VAQyAT_A22_tGA32_GG_Qo_GAGyAiAEAjKQrAM_tFQOyAXyAQyA7__A11_A20_tGG_Qo_A27_GSgGGMd, &_s7SwiftUI5GroupVyAA19_ConditionalContentVyAEyAA08ModifiedE0VyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6VStackVyAA05TupleG0Vy07WorkoutB009RepeatRowG0V_AA7DividerVAA6HStackVyAQyAOyAA7ForEachVySay0P4Core0P4StepCG10Foundation4UUIDVAR0pxR0VGG_AA6SpacerVAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGtGG_Qo_AA0K18AttachmentModifierVGAiAEAjKQrAM_tFQOyAOyAA7SectionVyAA05EmptyG0VAQyAT_A22_tGA32_GG_Qo_GAGyAiAEAjKQrAM_tFQOyAXyAQyA7__A11_A20_tGG_Qo_A27_GSgGGMR);
}

uint64_t closure #1 in closure #1 in closure #1 in IntervalBlocksReorderingView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v41 = a3;
  v42 = a4;
  v40 = a2;
  v43 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAA05TupleE0Vy07WorkoutB00N7StepRowV_AA6SpacerVACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGG_Qo_AA0i10AttachmentV0VGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAA05TupleE0Vy07WorkoutB00N7StepRowV_AA6SpacerVACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGG_Qo_AA0i10AttachmentV0VGMR);
  v36 = *(v6 - 8);
  v37 = v6;
  MEMORY[0x28223BE20](v6);
  v34 = v33 - v7;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAA05TupleE0Vy07WorkoutB00N7StepRowV_AA6SpacerVACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGG_Qo_AA0i10AttachmentV0VGSgMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAA05TupleE0Vy07WorkoutB00N7StepRowV_AA6SpacerVACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGG_Qo_AA0i10AttachmentV0VGSgMR);
  MEMORY[0x28223BE20](v39);
  v35 = v33 - v8;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACyAA08ModifiedD0VyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6VStackVyAA05TupleG0Vy07WorkoutB009RepeatRowG0V_AA7DividerVAA6HStackVyAQyAOyAA7ForEachVySay0P4Core0P4StepCG10Foundation4UUIDVAR0pxR0VGG_AA6SpacerVAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGtGG_Qo_AA0K18AttachmentModifierVGAiAEAjKQrAM_tFQOyAOyAA7SectionVyAA05EmptyG0VAQyAT_A22_tGA32_GG_Qo_GAGyAiAEAjKQrAM_tFQOyAXyAQyA7__A11_A20_tGG_Qo_A27_GSg_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyACyAA08ModifiedD0VyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6VStackVyAA05TupleG0Vy07WorkoutB009RepeatRowG0V_AA7DividerVAA6HStackVyAQyAOyAA7ForEachVySay0P4Core0P4StepCG10Foundation4UUIDVAR0pxR0VGG_AA6SpacerVAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGtGG_Qo_AA0K18AttachmentModifierVGAiAEAjKQrAM_tFQOyAOyAA7SectionVyAA05EmptyG0VAQyAT_A22_tGA32_GG_Qo_GAGyAiAEAjKQrAM_tFQOyAXyAQyA7__A11_A20_tGG_Qo_A27_GSg_GMR);
  MEMORY[0x28223BE20](v38);
  v10 = v33 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6VStackVyAA05TupleF0Vy07WorkoutB009RepeatRowF0V_AA7DividerVAA6HStackVyAOyAMyAA7ForEachVySay0O4Core0O4StepCG10Foundation4UUIDVAP0owQ0VGG_AA6SpacerVAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGtGG_Qo_AA0J18AttachmentModifierVGAgAEAhIQrAK_tFQOyAMyAA7SectionVyAA05EmptyF0VAOyAR_A20_tGA30_GG_Qo_GMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6VStackVyAA05TupleF0Vy07WorkoutB009RepeatRowF0V_AA7DividerVAA6HStackVyAOyAMyAA7ForEachVySay0O4Core0O4StepCG10Foundation4UUIDVAP0owQ0VGG_AA6SpacerVAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGtGG_Qo_AA0J18AttachmentModifierVGAgAEAhIQrAK_tFQOyAMyAA7SectionVyAA05EmptyF0VAOyAR_A20_tGA30_GG_Qo_GMR);
  MEMORY[0x28223BE20](v11);
  v13 = v33 - v12;
  v14 = type metadata accessor for WorkoutBlockType();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = v33 - v19;
  WorkoutBlock.blockType.getter();
  (*(v15 + 104))(v17, *MEMORY[0x277D7DDD0], v14);
  _s7SwiftUI31AccessibilityAttachmentModifierVAcA04ViewE0AAWlTm_10(&lazy protocol witness table cache variable for type WorkoutBlockType and conformance WorkoutBlockType, MEMORY[0x277D7DDE0], MEMORY[0x277D7DDF0]);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v21 = *(v15 + 8);
  v21(v17, v14);
  v21(v20, v14);
  if (v45 != v44)
  {
    v25 = v42;
    v33[1] = a1;
    v26 = WorkoutBlock.steps.getter();
    if (v26 >> 62)
    {
      v31 = __CocoaSet.count.getter();

      if (v31)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v27)
      {
LABEL_5:
        v28 = v34;
        IntervalBlocksReorderingView.singleStepView(for:)(v25, v34);
        v29 = v35;
        sub_20C698BBC(v28, v35);
        v30 = 0;
LABEL_8:
        (*(v36 + 56))(v29, v30, 1, v37);
        v22 = &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAA05TupleE0Vy07WorkoutB00N7StepRowV_AA6SpacerVACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGG_Qo_AA0i10AttachmentV0VGSgMd;
        v23 = &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAA05TupleE0Vy07WorkoutB00N7StepRowV_AA6SpacerVACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGG_Qo_AA0i10AttachmentV0VGSgMR;
        outlined init with copy of ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>?(v29, v10, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAA05TupleE0Vy07WorkoutB00N7StepRowV_AA6SpacerVACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGG_Qo_AA0i10AttachmentV0VGSgMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAA05TupleE0Vy07WorkoutB00N7StepRowV_AA6SpacerVACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGG_Qo_AA0i10AttachmentV0VGSgMR);
        swift_storeEnumTagMultiPayload();
        lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, <<opaque return type of View.accessibilityElement(children:)>>.0> and conformance <> _ConditionalContent<A, B>();
        lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>? and conformance <A> A?();
        _ConditionalContent<>.init(storage:)();
        v24 = v29;
        return outlined destroy of Group<_ConditionalContent<_ConditionalContent<ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, <<opaque return type of View.accessibilityElement(children:)>>.0>, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>?>>(v24, v22, v23);
      }
    }

    v30 = 1;
    v29 = v35;
    goto LABEL_8;
  }

  IntervalBlocksReorderingView.repeatableStepsView(for:)(a1, v40, v41, v42, v13);
  v22 = &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6VStackVyAA05TupleF0Vy07WorkoutB009RepeatRowF0V_AA7DividerVAA6HStackVyAOyAMyAA7ForEachVySay0O4Core0O4StepCG10Foundation4UUIDVAP0owQ0VGG_AA6SpacerVAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGtGG_Qo_AA0J18AttachmentModifierVGAgAEAhIQrAK_tFQOyAMyAA7SectionVyAA05EmptyF0VAOyAR_A20_tGA30_GG_Qo_GMd;
  v23 = &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6VStackVyAA05TupleF0Vy07WorkoutB009RepeatRowF0V_AA7DividerVAA6HStackVyAOyAMyAA7ForEachVySay0O4Core0O4StepCG10Foundation4UUIDVAP0owQ0VGG_AA6SpacerVAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGtGG_Qo_AA0J18AttachmentModifierVGAgAEAhIQrAK_tFQOyAMyAA7SectionVyAA05EmptyF0VAOyAR_A20_tGA30_GG_Qo_GMR;
  outlined init with copy of ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>?(v13, v10, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6VStackVyAA05TupleF0Vy07WorkoutB009RepeatRowF0V_AA7DividerVAA6HStackVyAOyAMyAA7ForEachVySay0O4Core0O4StepCG10Foundation4UUIDVAP0owQ0VGG_AA6SpacerVAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGtGG_Qo_AA0J18AttachmentModifierVGAgAEAhIQrAK_tFQOyAMyAA7SectionVyAA05EmptyF0VAOyAR_A20_tGA30_GG_Qo_GMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6VStackVyAA05TupleF0Vy07WorkoutB009RepeatRowF0V_AA7DividerVAA6HStackVyAOyAMyAA7ForEachVySay0O4Core0O4StepCG10Foundation4UUIDVAP0owQ0VGG_AA6SpacerVAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGtGG_Qo_AA0J18AttachmentModifierVGAgAEAhIQrAK_tFQOyAMyAA7SectionVyAA05EmptyF0VAOyAR_A20_tGA30_GG_Qo_GMR);
  swift_storeEnumTagMultiPayload();
  lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, <<opaque return type of View.accessibilityElement(children:)>>.0> and conformance <> _ConditionalContent<A, B>();
  lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>? and conformance <A> A?();
  _ConditionalContent<>.init(storage:)();
  v24 = v13;
  return outlined destroy of Group<_ConditionalContent<_ConditionalContent<ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, <<opaque return type of View.accessibilityElement(children:)>>.0>, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>?>>(v24, v22, v23);
}

uint64_t IntervalBlocksReorderingView.repeatableStepsView(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v39 = a3;
  v40 = a4;
  v37 = a1;
  v38 = a2;
  v48 = a5;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA7SectionVyAA9EmptyViewVAA05TupleF0Vy07WorkoutB009RepeatRowF0V_AA6HStackVyAIyACyAA7ForEachVySay0H4Core0H4StepCG10Foundation4UUIDVAJ0hoJ0VGG_AA6SpacerVAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGtGAGGGMd, &_s7SwiftUI6VStackVyAA7SectionVyAA9EmptyViewVAA05TupleF0Vy07WorkoutB009RepeatRowF0V_AA6HStackVyAIyACyAA7ForEachVySay0H4Core0H4StepCG10Foundation4UUIDVAJ0hoJ0VGG_AA6SpacerVAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGtGAGGGMR);
  MEMORY[0x28223BE20](v46);
  v6 = &v35 - v5;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6VStackVyAA7SectionVyAA05EmptyC0VAA05TupleC0Vy07WorkoutB009RepeatRowC0V_AA6HStackVyAOyAIyAA7ForEachVySay0N4Core0N4StepCG10Foundation4UUIDVAP0nuP0VGG_AA6SpacerVAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGtGAMGG_Qo_Md, &_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6VStackVyAA7SectionVyAA05EmptyC0VAA05TupleC0Vy07WorkoutB009RepeatRowC0V_AA6HStackVyAOyAIyAA7ForEachVySay0N4Core0N4StepCG10Foundation4UUIDVAP0nuP0VGG_AA6SpacerVAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGtGAMGG_Qo_MR);
  v36 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v8 = &v35 - v7;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6VStackVyAA05TupleG0Vy07WorkoutB009RepeatRowG0V_AA7DividerVAA6HStackVyAQyAOyAA7ForEachVySay0P4Core0P4StepCG10Foundation4UUIDVAR0pxR0VGG_AA6SpacerVAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGtGG_Qo_AA0K18AttachmentModifierVGAiAEAjKQrAM_tFQOyAOyAA7SectionVyAA05EmptyG0VAQyAT_A22_tGA32_GG_Qo__GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6VStackVyAA05TupleG0Vy07WorkoutB009RepeatRowG0V_AA7DividerVAA6HStackVyAQyAOyAA7ForEachVySay0P4Core0P4StepCG10Foundation4UUIDVAR0pxR0VGG_AA6SpacerVAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGtGG_Qo_AA0K18AttachmentModifierVGAiAEAjKQrAM_tFQOyAOyAA7SectionVyAA05EmptyG0VAQyAT_A22_tGA32_GG_Qo__GMR);
  MEMORY[0x28223BE20](v44);
  v45 = &v35 - v9;
  v10 = type metadata accessor for AccessibilityChildBehavior();
  v41 = *(v10 - 8);
  v42 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVy07WorkoutB009RepeatRowE0V_AA7DividerVAA6HStackVyAEyACyAA7ForEachVySay0F4Core0F4StepCG10Foundation4UUIDVAF0fnH0VGG_AA6SpacerVAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVy07WorkoutB009RepeatRowE0V_AA7DividerVAA6HStackVyAEyACyAA7ForEachVySay0F4Core0F4StepCG10Foundation4UUIDVAF0fnH0VGG_AA6SpacerVAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGtGGMR);
  MEMORY[0x28223BE20](v13);
  v15 = &v35 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6VStackVyAA05TupleC0Vy07WorkoutB009RepeatRowC0V_AA7DividerVAA6HStackVyAKyAIyAA7ForEachVySay0L4Core0L4StepCG10Foundation4UUIDVAL0ltN0VGG_AA6SpacerVAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGtGG_Qo_Md, &_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6VStackVyAA05TupleC0Vy07WorkoutB009RepeatRowC0V_AA7DividerVAA6HStackVyAKyAIyAA7ForEachVySay0L4Core0L4StepCG10Foundation4UUIDVAL0ltN0VGG_AA6SpacerVAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGtGG_Qo_MR);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v35 - v18;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6VStackVyAA05TupleE0Vy07WorkoutB009RepeatRowE0V_AA7DividerVAA6HStackVyAMyAKyAA7ForEachVySay0N4Core0N4StepCG10Foundation4UUIDVAN0nvP0VGG_AA6SpacerVACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGtGG_Qo_AA0I18AttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6VStackVyAA05TupleE0Vy07WorkoutB009RepeatRowE0V_AA7DividerVAA6HStackVyAMyAKyAA7ForEachVySay0N4Core0N4StepCG10Foundation4UUIDVAN0nvP0VGG_AA6SpacerVACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGtGG_Qo_AA0I18AttachmentModifierVGMR);
  MEMORY[0x28223BE20](v43);
  v21 = &v35 - v20;
  v22 = static Platform.current.getter();
  v23 = static HorizontalAlignment.center.getter();
  if (v22)
  {
    *v6 = v23;
    *(v6 + 1) = 0;
    v6[16] = 1;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA7SectionVyAA05EmptyD0VAA05TupleD0Vy07WorkoutB009RepeatRowD0V_AA6HStackVyAMyAA0F0VyAA7ForEachVySay0K4Core0K4StepCG10Foundation4UUIDVAN0krM0VGG_AA6SpacerVAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGtGAKGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA7SectionVyAA05EmptyD0VAA05TupleD0Vy07WorkoutB009RepeatRowD0V_AA6HStackVyAMyAA0F0VyAA7ForEachVySay0K4Core0K4StepCG10Foundation4UUIDVAN0krM0VGG_AA6SpacerVAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGtGAKGGMR);
    MEMORY[0x28223BE20](v24);
    v25 = v38;
    *(&v35 - 4) = v37;
    *(&v35 - 3) = v25;
    v26 = v40;
    *(&v35 - 2) = v39;
    *(&v35 - 1) = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVy07WorkoutB009RepeatRowD0V_AA6HStackVyACyAA6VStackVyAA7ForEachVySay0E4Core0E4StepCG10Foundation4UUIDVAD0emG0VGG_AA6SpacerVAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGtGMd, &_s7SwiftUI9TupleViewVy07WorkoutB009RepeatRowD0V_AA6HStackVyACyAA6VStackVyAA7ForEachVySay0E4Core0E4StepCG10Foundation4UUIDVAD0emG0VGG_AA6SpacerVAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGtGMR);
    lazy protocol witness table accessor for type VStack<TupleView<(RepeatRowView, Divider, HStack<TupleView<(VStack<ForEach<[WorkoutStep], UUID, WorkoutStepRow>>, Spacer, ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>)>>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type TupleView<(RepeatRowView, HStack<TupleView<(VStack<ForEach<[WorkoutStep], UUID, WorkoutStepRow>>, Spacer, ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>)>>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVy07WorkoutB009RepeatRowD0V_AA6HStackVyACyAA6VStackVyAA7ForEachVySay0E4Core0E4StepCG10Foundation4UUIDVAD0emG0VGG_AA6SpacerVAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGtGMd, &_s7SwiftUI9TupleViewVy07WorkoutB009RepeatRowD0V_AA6HStackVyACyAA6VStackVyAA7ForEachVySay0E4Core0E4StepCG10Foundation4UUIDVAD0emG0VGG_AA6SpacerVAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGtGMR, MEMORY[0x277CE14C0]);
    Section<>.init(content:)();
    static AccessibilityChildBehavior.combine.getter();
    v27 = lazy protocol witness table accessor for type VStack<TupleView<(RepeatRowView, Divider, HStack<TupleView<(VStack<ForEach<[WorkoutStep], UUID, WorkoutStepRow>>, Spacer, ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>)>>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type VStack<Section<EmptyView, TupleView<(RepeatRowView, HStack<TupleView<(VStack<ForEach<[WorkoutStep], UUID, WorkoutStepRow>>, Spacer, ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>)>>)>, EmptyView>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA7SectionVyAA9EmptyViewVAA05TupleF0Vy07WorkoutB009RepeatRowF0V_AA6HStackVyAIyACyAA7ForEachVySay0H4Core0H4StepCG10Foundation4UUIDVAJ0hoJ0VGG_AA6SpacerVAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGtGAGGGMd, &_s7SwiftUI6VStackVyAA7SectionVyAA9EmptyViewVAA05TupleF0Vy07WorkoutB009RepeatRowF0V_AA6HStackVyAIyACyAA7ForEachVySay0H4Core0H4StepCG10Foundation4UUIDVAJ0hoJ0VGG_AA6SpacerVAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGtGAGGGMR, MEMORY[0x277CE1198]);
    v28 = v46;
    View.accessibilityElement(children:)();
    (*(v41 + 8))(v12, v42);
    outlined destroy of Button<Text>?(v6, &_s7SwiftUI6VStackVyAA7SectionVyAA9EmptyViewVAA05TupleF0Vy07WorkoutB009RepeatRowF0V_AA6HStackVyAIyACyAA7ForEachVySay0H4Core0H4StepCG10Foundation4UUIDVAJ0hoJ0VGG_AA6SpacerVAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGtGAGGGMd, &_s7SwiftUI6VStackVyAA7SectionVyAA9EmptyViewVAA05TupleF0Vy07WorkoutB009RepeatRowF0V_AA6HStackVyAIyACyAA7ForEachVySay0H4Core0H4StepCG10Foundation4UUIDVAJ0hoJ0VGG_AA6SpacerVAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGtGAGGGMR);
    v29 = v36;
    v30 = v47;
    (*(v36 + 16))(v45, v8, v47);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
    v49 = v28;
    v50 = v27;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v29 + 8))(v8, v30);
  }

  else
  {
    *v15 = v23;
    *(v15 + 1) = 0x4020000000000000;
    v15[16] = 0;
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0Vy07WorkoutB009RepeatRowD0V_AA7DividerVAA6HStackVyAIyAA0F0VyAA7ForEachVySay0I4Core0I4StepCG10Foundation4UUIDVAJ0iqK0VGG_AA6SpacerVAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0Vy07WorkoutB009RepeatRowD0V_AA7DividerVAA6HStackVyAIyAA0F0VyAA7ForEachVySay0I4Core0I4StepCG10Foundation4UUIDVAJ0iqK0VGG_AA6SpacerVAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGtGGMR);
    closure #1 in IntervalBlocksReorderingView.repeatableStepsPhoneView(for:)(v38, v39, v40, &v15[*(v32 + 44)]);
    static AccessibilityChildBehavior.combine.getter();
    v40 = MEMORY[0x277CE1198];
    v33 = lazy protocol witness table accessor for type VStack<TupleView<(RepeatRowView, Divider, HStack<TupleView<(VStack<ForEach<[WorkoutStep], UUID, WorkoutStepRow>>, Spacer, ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>)>>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(RepeatRowView, Divider, HStack<TupleView<(VStack<ForEach<[WorkoutStep], UUID, WorkoutStepRow>>, Spacer, ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>)>>)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVy07WorkoutB009RepeatRowE0V_AA7DividerVAA6HStackVyAEyACyAA7ForEachVySay0F4Core0F4StepCG10Foundation4UUIDVAF0fnH0VGG_AA6SpacerVAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVy07WorkoutB009RepeatRowE0V_AA7DividerVAA6HStackVyAEyACyAA7ForEachVySay0F4Core0F4StepCG10Foundation4UUIDVAF0fnH0VGG_AA6SpacerVAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGtGGMR, MEMORY[0x277CE1198]);
    View.accessibilityElement(children:)();
    (*(v41 + 8))(v12, v42);
    outlined destroy of Button<Text>?(v15, &_s7SwiftUI6VStackVyAA9TupleViewVy07WorkoutB009RepeatRowE0V_AA7DividerVAA6HStackVyAEyACyAA7ForEachVySay0F4Core0F4StepCG10Foundation4UUIDVAF0fnH0VGG_AA6SpacerVAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVy07WorkoutB009RepeatRowE0V_AA7DividerVAA6HStackVyAEyACyAA7ForEachVySay0F4Core0F4StepCG10Foundation4UUIDVAF0fnH0VGG_AA6SpacerVAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGtGGMR);
    v49 = v13;
    v50 = v33;
    swift_getOpaqueTypeConformance2();
    View.accessibilityAddTraits(uiTraits:)();
    (*(v17 + 8))(v19, v16);
    outlined init with copy of ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>?(v21, v45, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6VStackVyAA05TupleE0Vy07WorkoutB009RepeatRowE0V_AA7DividerVAA6HStackVyAMyAKyAA7ForEachVySay0N4Core0N4StepCG10Foundation4UUIDVAN0nvP0VGG_AA6SpacerVACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGtGG_Qo_AA0I18AttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6VStackVyAA05TupleE0Vy07WorkoutB009RepeatRowE0V_AA7DividerVAA6HStackVyAMyAKyAA7ForEachVySay0N4Core0N4StepCG10Foundation4UUIDVAN0nvP0VGG_AA6SpacerVACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGtGG_Qo_AA0I18AttachmentModifierVGMR);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
    v34 = lazy protocol witness table accessor for type VStack<TupleView<(RepeatRowView, Divider, HStack<TupleView<(VStack<ForEach<[WorkoutStep], UUID, WorkoutStepRow>>, Spacer, ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>)>>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type VStack<Section<EmptyView, TupleView<(RepeatRowView, HStack<TupleView<(VStack<ForEach<[WorkoutStep], UUID, WorkoutStepRow>>, Spacer, ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>)>>)>, EmptyView>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA7SectionVyAA9EmptyViewVAA05TupleF0Vy07WorkoutB009RepeatRowF0V_AA6HStackVyAIyACyAA7ForEachVySay0H4Core0H4StepCG10Foundation4UUIDVAJ0hoJ0VGG_AA6SpacerVAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGtGAGGGMd, &_s7SwiftUI6VStackVyAA7SectionVyAA9EmptyViewVAA05TupleF0Vy07WorkoutB009RepeatRowF0V_AA6HStackVyAIyACyAA7ForEachVySay0H4Core0H4StepCG10Foundation4UUIDVAJ0hoJ0VGG_AA6SpacerVAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGtGAGGGMR, v40);
    v49 = v46;
    v50 = v34;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return outlined destroy of Group<_ConditionalContent<_ConditionalContent<ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, <<opaque return type of View.accessibilityElement(children:)>>.0>, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>?>>(v21, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6VStackVyAA05TupleE0Vy07WorkoutB009RepeatRowE0V_AA7DividerVAA6HStackVyAMyAKyAA7ForEachVySay0N4Core0N4StepCG10Foundation4UUIDVAN0nvP0VGG_AA6SpacerVACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGtGG_Qo_AA0I18AttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6VStackVyAA05TupleE0Vy07WorkoutB009RepeatRowE0V_AA7DividerVAA6HStackVyAMyAKyAA7ForEachVySay0N4Core0N4StepCG10Foundation4UUIDVAN0nvP0VGG_AA6SpacerVACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGtGG_Qo_AA0I18AttachmentModifierVGMR);
  }
}

uint64_t IntervalBlocksReorderingView.singleStepView(for:)@<X0>(void *a4@<X3>, uint64_t a5@<X8>)
{
  v21 = a5;
  v18 = type metadata accessor for AccessibilityChildBehavior();
  v6 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAA05TupleC0Vy07WorkoutB00L7StepRowV_AA6SpacerVAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGG_Qo_Md, &_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAA05TupleC0Vy07WorkoutB00L7StepRowV_AA6SpacerVAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGG_Qo_MR);
  v10 = *(v9 - 8);
  v19 = v9;
  v20 = v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v17 - v11;
  v17 = static VerticalAlignment.center.getter();
  v25 = 1;
  closure #1 in IntervalBlocksReorderingView.singleStepView(for:)(a4, &v33);
  v27 = v34;
  v28 = v35;
  v29 = v36;
  v30 = v37;
  v26 = v33;
  v31[1] = v34;
  v31[2] = v35;
  v31[3] = v36;
  v32 = v37;
  v31[0] = v33;
  outlined init with copy of Button<Text>?(&v26, &v22, &_s7SwiftUI9TupleViewVy07WorkoutB00E7StepRowV_AA6SpacerVAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGMd, &_s7SwiftUI9TupleViewVy07WorkoutB00E7StepRowV_AA6SpacerVAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGMR);
  outlined destroy of Button<Text>?(v31, &_s7SwiftUI9TupleViewVy07WorkoutB00E7StepRowV_AA6SpacerVAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGMd, &_s7SwiftUI9TupleViewVy07WorkoutB00E7StepRowV_AA6SpacerVAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGMR);
  *(v24 + 7) = v26;
  *(&v24[4] + 7) = v30;
  *(&v24[3] + 7) = v29;
  *(&v24[2] + 7) = v28;
  *(&v24[1] + 7) = v27;
  *(&v23[1] + 1) = v24[1];
  *(&v23[2] + 1) = v24[2];
  *(&v23[3] + 1) = v24[3];
  v23[4] = *(&v24[3] + 15);
  v22 = v17;
  LOBYTE(v23[0]) = v25;
  *(v23 + 1) = v24[0];
  static AccessibilityChildBehavior.combine.getter();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVy07WorkoutB00F7StepRowV_AA6SpacerVAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVy07WorkoutB00F7StepRowV_AA6SpacerVAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGMR);
  v14 = lazy protocol witness table accessor for type VStack<TupleView<(RepeatRowView, Divider, HStack<TupleView<(VStack<ForEach<[WorkoutStep], UUID, WorkoutStepRow>>, Spacer, ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>)>>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(WorkoutStepRow, Spacer, ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVy07WorkoutB00F7StepRowV_AA6SpacerVAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVy07WorkoutB00F7StepRowV_AA6SpacerVAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGMR, MEMORY[0x277CE1138]);
  View.accessibilityElement(children:)();
  (*(v6 + 8))(v8, v18);
  v35 = v23[1];
  v36 = v23[2];
  v37 = v23[3];
  v38 = v23[4];
  v33 = v22;
  v34 = v23[0];
  outlined destroy of Button<Text>?(&v33, &_s7SwiftUI6HStackVyAA9TupleViewVy07WorkoutB00F7StepRowV_AA6SpacerVAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVy07WorkoutB00F7StepRowV_AA6SpacerVAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGMR);
  *&v22 = v13;
  *(&v22 + 1) = v14;
  swift_getOpaqueTypeConformance2();
  v15 = v19;
  View.accessibilityAddTraits(uiTraits:)();
  return (*(v20 + 8))(v12, v15);
}

uint64_t closure #2 in closure #1 in closure #1 in IntervalBlocksReorderingView.body.getter@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v64 = a1;
  v65 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA6ButtonVyAA4TextVGSg_AItGMd, &_s7SwiftUI9TupleViewVyAA6ButtonVyAA4TextVGSg_AItGMR);
  v67 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v63 = &v58 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR);
  v66 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v58 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVGSgMd, &_s7SwiftUI6ButtonVyAA4TextVGSgMR);
  MEMORY[0x28223BE20](v13 - 8);
  v62 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v61 = &v58 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v58 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v58 - v21;
  v23 = IntervalWorkout.stepBlocks.getter();
  v24 = specialized Collection<>.firstIndex(of:)(a4, v23);
  v26 = v25;

  if (v26)
  {
    v27 = *(v67 + 56);

    return v27(a5, 1, 1, v8);
  }

  v60 = v8;
  if (__OFADD__(v24, 2))
  {
    __break(1u);
    goto LABEL_20;
  }

  v29 = IntervalWorkout.stepBlocks.getter();
  if (v29 >> 62)
  {
LABEL_20:
    v30 = __CocoaSet.count.getter();
    goto LABEL_8;
  }

  v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_8:

  v59 = a5;
  if (v30 >= v24 + 2)
  {
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v32 = WorkoutUIBundle.super.isa;
    v71._object = 0xE000000000000000;
    v33._object = 0xEC0000004E574F44;
    v33._countAndFlagsBits = 0x5F45564F4D5F5841;
    v34.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v34.value._object = 0xEB00000000656C62;
    v35._countAndFlagsBits = 0;
    v35._object = 0xE000000000000000;
    v71._countAndFlagsBits = 0;
    v36 = NSLocalizedString(_:tableName:bundle:value:comment:)(v33, v34, v32, v35, v71);

    v69 = v36;
    v37 = swift_allocObject();
    v38 = v65;
    v37[2] = v64;
    v37[3] = a2;
    v37[4] = v38;
    v37[5] = v24;
    lazy protocol witness table accessor for type String and conformance String();
    v39 = a2;
    v40 = v38;
    Button<>.init<A>(_:action:)();
    v41 = v66;
    (*(v66 + 32))(v22, v12, v10);
    v31 = *(v41 + 56);
    v31(v22, 0, 1, v10);
  }

  else
  {
    v31 = *(v66 + 56);
    v31(v22, 1, 1, v10);
  }

  v42 = v60;
  if (v24 < 1)
  {
    v52 = 1;
  }

  else
  {
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v43 = WorkoutUIBundle.super.isa;
    v72._object = 0xE000000000000000;
    v44._countAndFlagsBits = 0x5F45564F4D5F5841;
    v44._object = 0xEA00000000005055;
    v45.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v45.value._object = 0xEB00000000656C62;
    v46._countAndFlagsBits = 0;
    v46._object = 0xE000000000000000;
    v72._countAndFlagsBits = 0;
    v47 = NSLocalizedString(_:tableName:bundle:value:comment:)(v44, v45, v43, v46, v72);

    v68 = v47;
    v48 = swift_allocObject();
    v49 = v65;
    v48[2] = v64;
    v48[3] = a2;
    v48[4] = v49;
    v48[5] = v24;
    lazy protocol witness table accessor for type String and conformance String();
    v50 = a2;
    v51 = v49;
    Button<>.init<A>(_:action:)();
    (*(v66 + 32))(v19, v12, v10);
    v52 = 0;
    v42 = v60;
  }

  v31(v19, v52, 1, v10);
  v53 = v61;
  outlined init with copy of Button<Text>?(v22, v61, &_s7SwiftUI6ButtonVyAA4TextVGSgMd, &_s7SwiftUI6ButtonVyAA4TextVGSgMR);
  v54 = v62;
  outlined init with copy of Button<Text>?(v19, v62, &_s7SwiftUI6ButtonVyAA4TextVGSgMd, &_s7SwiftUI6ButtonVyAA4TextVGSgMR);
  v55 = v63;
  outlined init with copy of Button<Text>?(v53, v63, &_s7SwiftUI6ButtonVyAA4TextVGSgMd, &_s7SwiftUI6ButtonVyAA4TextVGSgMR);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVGSg_AGtMd, &_s7SwiftUI6ButtonVyAA4TextVGSg_AGtMR);
  outlined init with copy of Button<Text>?(v54, v55 + *(v56 + 48), &_s7SwiftUI6ButtonVyAA4TextVGSgMd, &_s7SwiftUI6ButtonVyAA4TextVGSgMR);
  outlined destroy of Button<Text>?(v19, &_s7SwiftUI6ButtonVyAA4TextVGSgMd, &_s7SwiftUI6ButtonVyAA4TextVGSgMR);
  outlined destroy of Button<Text>?(v22, &_s7SwiftUI6ButtonVyAA4TextVGSgMd, &_s7SwiftUI6ButtonVyAA4TextVGSgMR);
  outlined destroy of Button<Text>?(v54, &_s7SwiftUI6ButtonVyAA4TextVGSgMd, &_s7SwiftUI6ButtonVyAA4TextVGSgMR);
  outlined destroy of Button<Text>?(v53, &_s7SwiftUI6ButtonVyAA4TextVGSgMd, &_s7SwiftUI6ButtonVyAA4TextVGSgMR);
  v57 = v59;
  outlined init with take of TupleView<(Button<Text>?, Button<Text>?)>(v55, v59);
  return (*(v67 + 56))(v57, 0, 1, v42);
}

void closure #1 in closure #2 in closure #1 in closure #1 in IntervalBlocksReorderingView.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = type metadata accessor for IndexSet();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  IndexSet.init(integer:)();
  if (__OFADD__(a4, 2))
  {
    __break(1u);
  }

  else
  {
    v27[1] = a2;
    v10 = IntervalWorkout.stepBlocks.modify();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore0A5BlockCGMd, &_sSay11WorkoutCore0A5BlockCGMR);
    lazy protocol witness table accessor for type VStack<TupleView<(RepeatRowView, Divider, HStack<TupleView<(VStack<ForEach<[WorkoutStep], UUID, WorkoutStepRow>>, Spacer, ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>)>>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type [WorkoutBlock] and conformance [A], &_sSay11WorkoutCore0A5BlockCGMd, &_sSay11WorkoutCore0A5BlockCGMR, MEMORY[0x277D83960]);
    MutableCollection.move(fromOffsets:toOffset:)();
    (*(v7 + 8))(v9, v6);
    v10(v28, 0);
    if (one-time initialization token for WorkoutUIBundle == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  swift_beginAccess();
  v11 = WorkoutUIBundle.super.isa;
  v29._object = 0xE000000000000000;
  v12._countAndFlagsBits = 0x4445564F4D5F5841;
  v12._object = 0xEE00574F4C45425FLL;
  v13.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v13.value._object = 0xEB00000000656C62;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  v29._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v12, v13, v11, v14, v29);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_20CB5DA70;
  v16 = IntervalWorkout.stepBlocks.getter();
  if ((v16 & 0xC000000000000001) != 0)
  {
    MEMORY[0x20F30C990](a4, v16);
  }

  else
  {
    if ((a4 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_16;
    }

    if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a4)
    {
      __break(1u);
      goto LABEL_18;
    }
  }

  a4 = WorkoutBlock.steps.getter();

  if ((a4 & 0xC000000000000001) == 0)
  {
    if (*((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {

      goto LABEL_10;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_16:
  MEMORY[0x20F30C990](0, a4);
LABEL_10:

  v17 = WorkoutStep.displayString.getter();
  v19 = v18;

  *(v15 + 56) = MEMORY[0x277D837D0];
  *(v15 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v15 + 32) = v17;
  *(v15 + 40) = v19;
  v20 = static String.localizedStringWithFormat(_:_:)();
  v22 = v21;

  v23 = *MEMORY[0x277D76438];
  v24 = MEMORY[0x20F30BAD0](v20, v22);
  UIAccessibilityPostNotification(v23, v24);

  v25 = *MEMORY[0x277CE6CD0];
  if (*MEMORY[0x277CE6CD0])
  {

    v26 = v25;
    UIAccessibilityPostNotification(v23, v26);

    return;
  }

LABEL_19:
  __break(1u);
}

void closure #2 in closure #2 in closure #1 in closure #1 in IntervalBlocksReorderingView.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = type metadata accessor for IndexSet();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  IndexSet.init(integer:)();
  if (__OFSUB__(a4, 1))
  {
    __break(1u);
  }

  else
  {
    v27[1] = a2;
    v10 = IntervalWorkout.stepBlocks.modify();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore0A5BlockCGMd, &_sSay11WorkoutCore0A5BlockCGMR);
    lazy protocol witness table accessor for type VStack<TupleView<(RepeatRowView, Divider, HStack<TupleView<(VStack<ForEach<[WorkoutStep], UUID, WorkoutStepRow>>, Spacer, ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>)>>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type [WorkoutBlock] and conformance [A], &_sSay11WorkoutCore0A5BlockCGMd, &_sSay11WorkoutCore0A5BlockCGMR, MEMORY[0x277D83960]);
    MutableCollection.move(fromOffsets:toOffset:)();
    (*(v7 + 8))(v9, v6);
    v10(v28, 0);
    if (one-time initialization token for WorkoutUIBundle == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  swift_beginAccess();
  v11 = WorkoutUIBundle.super.isa;
  v29._object = 0xE000000000000000;
  v12._countAndFlagsBits = 0x4445564F4D5F5841;
  v12._object = 0xEE0045564F42415FLL;
  v13.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v13.value._object = 0xEB00000000656C62;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  v29._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v12, v13, v11, v14, v29);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_20CB5DA70;
  v16 = IntervalWorkout.stepBlocks.getter();
  if ((v16 & 0xC000000000000001) != 0)
  {
    MEMORY[0x20F30C990](a4, v16);
  }

  else
  {
    if ((a4 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_16;
    }

    if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a4)
    {
      __break(1u);
      goto LABEL_18;
    }
  }

  a4 = WorkoutBlock.steps.getter();

  if ((a4 & 0xC000000000000001) == 0)
  {
    if (*((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {

      goto LABEL_10;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_16:
  MEMORY[0x20F30C990](0, a4);
LABEL_10:

  v17 = WorkoutStep.displayString.getter();
  v19 = v18;

  *(v15 + 56) = MEMORY[0x277D837D0];
  *(v15 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v15 + 32) = v17;
  *(v15 + 40) = v19;
  v20 = static String.localizedStringWithFormat(_:_:)();
  v22 = v21;

  v23 = *MEMORY[0x277D76438];
  v24 = MEMORY[0x20F30BAD0](v20, v22);
  UIAccessibilityPostNotification(v23, v24);

  v25 = *MEMORY[0x277CE6CD0];
  if (*MEMORY[0x277CE6CD0])
  {

    v26 = v25;
    UIAccessibilityPostNotification(v23, v26);

    return;
  }

LABEL_19:
  __break(1u);
}

uint64_t closure #2 in closure #1 in IntervalBlocksReorderingView.body.getter(uint64_t a1, uint64_t a2, __n128 a3)
{
  v3 = IntervalWorkout.stepBlocks.modify();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore0A5BlockCGMd, &_sSay11WorkoutCore0A5BlockCGMR);
  lazy protocol witness table accessor for type VStack<TupleView<(RepeatRowView, Divider, HStack<TupleView<(VStack<ForEach<[WorkoutStep], UUID, WorkoutStepRow>>, Spacer, ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>)>>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type [WorkoutBlock] and conformance [A], &_sSay11WorkoutCore0A5BlockCGMd, &_sSay11WorkoutCore0A5BlockCGMR, MEMORY[0x277D83960]);
  MutableCollection.move(fromOffsets:toOffset:)();
  return v3(&v5, 0);
}

double closure #1 in closure #1 in IntervalBlocksReorderingView.repeatableStepsWatchView(for:)@<D0>(uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v19 = a3;
  v20 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA6VStackVyAA7ForEachVySay11WorkoutCore0I4StepCG10Foundation4UUIDV0iB00iK3RowVGG_AA6SpacerVAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6VStackVyAA7ForEachVySay11WorkoutCore0I4StepCG10Foundation4UUIDV0iB00iK3RowVGG_AA6SpacerVAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v19 - v11;
  v21 = WorkoutBlock.repetitions.getter();
  static Binding.constant(_:)();
  v13 = v22;
  v14 = v23;
  v15 = v24;
  *v12 = static VerticalAlignment.center.getter();
  *(v12 + 1) = 0;
  v12[16] = 1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA6VStackVyAA7ForEachVySay11WorkoutCore0L4StepCG10Foundation4UUIDV0lB00lN3RowVGG_AA6SpacerVAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA6VStackVyAA7ForEachVySay11WorkoutCore0L4StepCG10Foundation4UUIDV0lB00lN3RowVGG_AA6SpacerVAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGMR);
  closure #1 in closure #1 in closure #1 in IntervalBlocksReorderingView.repeatableStepsWatchView(for:)(a2, v19, v20, 0, 1, partial apply for closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in IntervalBlocksReorderingView.repeatableStepsWatchView(for:), &v12[*(v16 + 44)]);
  outlined init with copy of Button<Text>?(v12, v9, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6VStackVyAA7ForEachVySay11WorkoutCore0I4StepCG10Foundation4UUIDV0iB00iK3RowVGG_AA6SpacerVAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6VStackVyAA7ForEachVySay11WorkoutCore0I4StepCG10Foundation4UUIDV0iB00iK3RowVGG_AA6SpacerVAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGMR);
  *a5 = v13;
  *(a5 + 8) = v14;
  *(a5 + 16) = v15;
  *(a5 + 24) = 0;
  *(a5 + 32) = 1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI13RepeatRowViewV_05SwiftB06HStackVyAD05TupleE0VyAD6VStackVyAD7ForEachVySay0A4Core0A4StepCG10Foundation4UUIDVAA0amD0VGG_AD6SpacerVAD15ModifiedContentVyAD5ImageVAD30_EnvironmentKeyWritingModifierVyAD5ColorVSgGGtGGtMd, &_s9WorkoutUI13RepeatRowViewV_05SwiftB06HStackVyAD05TupleE0VyAD6VStackVyAD7ForEachVySay0A4Core0A4StepCG10Foundation4UUIDVAA0amD0VGG_AD6SpacerVAD15ModifiedContentVyAD5ImageVAD30_EnvironmentKeyWritingModifierVyAD5ColorVSgGGtGGtMR);
  outlined init with copy of Button<Text>?(v9, a5 + *(v17 + 48), &_s7SwiftUI6HStackVyAA9TupleViewVyAA6VStackVyAA7ForEachVySay11WorkoutCore0I4StepCG10Foundation4UUIDV0iB00iK3RowVGG_AA6SpacerVAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6VStackVyAA7ForEachVySay11WorkoutCore0I4StepCG10Foundation4UUIDV0iB00iK3RowVGG_AA6SpacerVAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGMR);

  outlined destroy of Button<Text>?(v12, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6VStackVyAA7ForEachVySay11WorkoutCore0I4StepCG10Foundation4UUIDV0iB00iK3RowVGG_AA6SpacerVAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6VStackVyAA7ForEachVySay11WorkoutCore0I4StepCG10Foundation4UUIDV0iB00iK3RowVGG_AA6SpacerVAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGMR);
  outlined destroy of Button<Text>?(v9, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6VStackVyAA7ForEachVySay11WorkoutCore0I4StepCG10Foundation4UUIDV0iB00iK3RowVGG_AA6SpacerVAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6VStackVyAA7ForEachVySay11WorkoutCore0I4StepCG10Foundation4UUIDV0iB00iK3RowVGG_AA6SpacerVAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGMR);

  return result;
}

double closure #1 in IntervalBlocksReorderingView.repeatableStepsPhoneView(for:)@<D0>(uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v31 = a4;
  v33 = a2;
  v34 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA6VStackVyAA7ForEachVySay11WorkoutCore0I4StepCG10Foundation4UUIDV0iB00iK3RowVGG_AA6SpacerVAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6VStackVyAA7ForEachVySay11WorkoutCore0I4StepCG10Foundation4UUIDV0iB00iK3RowVGG_AA6SpacerVAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGMR);
  MEMORY[0x28223BE20](v6 - 8);
  v32 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v27 - v9;
  v11 = type metadata accessor for Divider();
  v29 = *(v11 - 8);
  v12 = v29;
  MEMORY[0x28223BE20](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  v35 = WorkoutBlock.repetitions.getter();
  static Binding.constant(_:)();
  v19 = v36;
  v18 = v37;
  v30 = v38;
  v28 = v17;
  Divider.init()();
  *v10 = static VerticalAlignment.center.getter();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA6VStackVyAA7ForEachVySay11WorkoutCore0L4StepCG10Foundation4UUIDV0lB00lN3RowVGG_AA6SpacerVAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA6VStackVyAA7ForEachVySay11WorkoutCore0L4StepCG10Foundation4UUIDV0lB00lN3RowVGG_AA6SpacerVAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGMR);
  closure #1 in closure #1 in closure #1 in IntervalBlocksReorderingView.repeatableStepsWatchView(for:)(v33, v34, v31, 0x4020000000000000, 0, partial apply for closure #1 in closure #1 in closure #1 in closure #1 in IntervalBlocksReorderingView.repeatableStepsPhoneView(for:), &v10[*(v20 + 44)]);
  LOBYTE(v36) = 1;
  v21 = *(v12 + 16);
  v27 = v14;
  v21(v14, v17, v11);
  v22 = v32;
  outlined init with copy of Button<Text>?(v10, v32, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6VStackVyAA7ForEachVySay11WorkoutCore0I4StepCG10Foundation4UUIDV0iB00iK3RowVGG_AA6SpacerVAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6VStackVyAA7ForEachVySay11WorkoutCore0I4StepCG10Foundation4UUIDV0iB00iK3RowVGG_AA6SpacerVAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGMR);
  v23 = v36;
  *a5 = v19;
  *(a5 + 8) = v18;
  *(a5 + 16) = v30;
  *(a5 + 24) = 0;
  *(a5 + 32) = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI13RepeatRowViewV_05SwiftB07DividerVAD6HStackVyAD05TupleE0VyAD6VStackVyAD7ForEachVySay0A4Core0A4StepCG10Foundation4UUIDVAA0anD0VGG_AD6SpacerVAD15ModifiedContentVyAD5ImageVAD30_EnvironmentKeyWritingModifierVyAD5ColorVSgGGtGGtMd, &_s9WorkoutUI13RepeatRowViewV_05SwiftB07DividerVAD6HStackVyAD05TupleE0VyAD6VStackVyAD7ForEachVySay0A4Core0A4StepCG10Foundation4UUIDVAA0anD0VGG_AD6SpacerVAD15ModifiedContentVyAD5ImageVAD30_EnvironmentKeyWritingModifierVyAD5ColorVSgGGtGGtMR);
  v21((a5 + *(v24 + 48)), v14, v11);
  outlined init with copy of Button<Text>?(v22, a5 + *(v24 + 64), &_s7SwiftUI6HStackVyAA9TupleViewVyAA6VStackVyAA7ForEachVySay11WorkoutCore0I4StepCG10Foundation4UUIDV0iB00iK3RowVGG_AA6SpacerVAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6VStackVyAA7ForEachVySay11WorkoutCore0I4StepCG10Foundation4UUIDV0iB00iK3RowVGG_AA6SpacerVAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGMR);

  outlined destroy of Button<Text>?(v10, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6VStackVyAA7ForEachVySay11WorkoutCore0I4StepCG10Foundation4UUIDV0iB00iK3RowVGG_AA6SpacerVAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6VStackVyAA7ForEachVySay11WorkoutCore0I4StepCG10Foundation4UUIDV0iB00iK3RowVGG_AA6SpacerVAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGMR);
  v25 = *(v29 + 8);
  v25(v28, v11);
  outlined destroy of Button<Text>?(v22, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6VStackVyAA7ForEachVySay11WorkoutCore0I4StepCG10Foundation4UUIDV0iB00iK3RowVGG_AA6SpacerVAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6VStackVyAA7ForEachVySay11WorkoutCore0I4StepCG10Foundation4UUIDV0iB00iK3RowVGG_AA6SpacerVAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGMR);
  v25(v27, v11);

  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in IntervalBlocksReorderingView.repeatableStepsWatchView(for:)@<X0>(uint64_t a1@<X1>, void *a2@<X2>, void *a3@<X3>, uint64_t a4@<X4>, char a5@<W5>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v30[2] = a7;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA7ForEachVySay11WorkoutCore0F4StepCG10Foundation4UUIDV0fB00fH3RowVGGMd, &_s7SwiftUI6VStackVyAA7ForEachVySay11WorkoutCore0F4StepCG10Foundation4UUIDV0fB00fH3RowVGGMR);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = v30 - v18;
  *v19 = static HorizontalAlignment.center.getter();
  *(v19 + 1) = a4;
  v19[16] = a5;
  v30[1] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA7ForEachVySay11WorkoutCore0J4StepCG10Foundation4UUIDV0jB00jL3RowVGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA7ForEachVySay11WorkoutCore0J4StepCG10Foundation4UUIDV0jB00jL3RowVGGMR) + 44);
  v30[3] = WorkoutBlock.steps.getter();
  v20 = swift_allocObject();
  v20[2] = a1;
  v20[3] = a2;
  v20[4] = a3;
  v21 = a2;
  v22 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore0A4StepCGMd, &_sSay11WorkoutCore0A4StepCGMR);
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type VStack<TupleView<(RepeatRowView, Divider, HStack<TupleView<(VStack<ForEach<[WorkoutStep], UUID, WorkoutStepRow>>, Spacer, ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>)>>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type [WorkoutStep] and conformance [A], &_sSay11WorkoutCore0A4StepCGMd, &_sSay11WorkoutCore0A4StepCGMR, MEMORY[0x277D83980]);
  lazy protocol witness table accessor for type WorkoutStepRow and conformance WorkoutStepRow();
  _s7SwiftUI31AccessibilityAttachmentModifierVAcA04ViewE0AAWlTm_10(&lazy protocol witness table cache variable for type WorkoutStep and conformance WorkoutStep, MEMORY[0x277D7DD30], MEMORY[0x277D7DD40]);
  ForEach<>.init(_:content:)();
  v23 = Image.init(systemName:)();
  v24 = static Color.secondary.getter();
  KeyPath = swift_getKeyPath();
  outlined init with copy of Button<Text>?(v19, v16, &_s7SwiftUI6VStackVyAA7ForEachVySay11WorkoutCore0F4StepCG10Foundation4UUIDV0fB00fH3RowVGGMd, &_s7SwiftUI6VStackVyAA7ForEachVySay11WorkoutCore0F4StepCG10Foundation4UUIDV0fB00fH3RowVGGMR);
  outlined init with copy of Button<Text>?(v16, a8, &_s7SwiftUI6VStackVyAA7ForEachVySay11WorkoutCore0F4StepCG10Foundation4UUIDV0fB00fH3RowVGGMd, &_s7SwiftUI6VStackVyAA7ForEachVySay11WorkoutCore0F4StepCG10Foundation4UUIDV0fB00fH3RowVGGMR);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA7ForEachVySay11WorkoutCore0F4StepCG10Foundation4UUIDV0fB00fH3RowVGG_AA6SpacerVAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtMd, &_s7SwiftUI6VStackVyAA7ForEachVySay11WorkoutCore0F4StepCG10Foundation4UUIDV0fB00fH3RowVGG_AA6SpacerVAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtMR);
  v27 = a8 + *(v26 + 48);
  *v27 = 0;
  *(v27 + 8) = 1;
  v28 = (a8 + *(v26 + 64));
  *v28 = v23;
  v28[1] = KeyPath;
  v28[2] = v24;

  outlined destroy of Button<Text>?(v19, &_s7SwiftUI6VStackVyAA7ForEachVySay11WorkoutCore0F4StepCG10Foundation4UUIDV0fB00fH3RowVGGMd, &_s7SwiftUI6VStackVyAA7ForEachVySay11WorkoutCore0F4StepCG10Foundation4UUIDV0fB00fH3RowVGGMR);

  return outlined destroy of Button<Text>?(v16, &_s7SwiftUI6VStackVyAA7ForEachVySay11WorkoutCore0F4StepCG10Foundation4UUIDV0fB00fH3RowVGGMd, &_s7SwiftUI6VStackVyAA7ForEachVySay11WorkoutCore0F4StepCG10Foundation4UUIDV0fB00fH3RowVGGMR);
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in IntervalBlocksReorderingView.repeatableStepsWatchView(for:)@<X0>(void *a2@<X3>, uint64_t *a3@<X8>)
{
  type metadata accessor for WorkoutStep();
  _s7SwiftUI31AccessibilityAttachmentModifierVAcA04ViewE0AAWlTm_10(&lazy protocol witness table cache variable for type WorkoutStep and conformance WorkoutStep, MEMORY[0x277D7DD30], MEMORY[0x277D7DD28]);

  v5 = a2;
  result = ObservedObject.init(wrappedValue:)();
  *a3 = result;
  a3[1] = v7;
  a3[2] = v5;
  a3[3] = 0;
  return result;
}

void closure #1 in IntervalBlocksReorderingView.singleStepView(for:)(void *a2@<X3>, uint64_t a3@<X8>)
{
  v5 = WorkoutBlock.steps.getter();
  if ((v5 & 0xC000000000000001) != 0)
  {
    MEMORY[0x20F30C990](0, v5);
  }

  else
  {
    if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }
  }

  type metadata accessor for WorkoutStep();
  _s7SwiftUI31AccessibilityAttachmentModifierVAcA04ViewE0AAWlTm_10(&lazy protocol witness table cache variable for type WorkoutStep and conformance WorkoutStep, MEMORY[0x277D7DD30], MEMORY[0x277D7DD28]);
  v6 = a2;
  v7 = ObservedObject.init(wrappedValue:)();
  v9 = v8;
  v10 = Image.init(systemName:)();
  v11 = static Color.secondary.getter();
  KeyPath = swift_getKeyPath();
  *a3 = v7;
  *(a3 + 8) = v9;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 16) = v6;
  *(a3 + 40) = 1;
  *(a3 + 48) = v10;
  *(a3 + 56) = KeyPath;
  *(a3 + 64) = v11;
}

uint64_t protocol witness for View.body.getter in conformance IntervalBlocksReorderingView@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA7ForEachVySay11WorkoutCore0G5BlockCG10Foundation4UUIDVAA4ViewPAAE20accessibilityActionsyQrqd__yXEAaMRd__lFQOyAA5GroupVyAA012_ConditionalD0VyASyACyAnAE0M7Element8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6VStackVyAA05TupleL0Vy0gB009RepeatRowL0V_AA7DividerVAA6HStackVyA_yAYyAEySayAF0G4StepCGALA0_0g4StepY0VGG_AA6SpacerVACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGtGG_Qo_AA0S18AttachmentModifierVGAnAEAtUQrAW_tFQOyAYyAA7SectionVyAA05EmptyL0VA_yA2__A26_tGA36_GG_Qo_GACyAnAEAtUQrAW_tFQOyA6_yA_yA11__A15_A24_tGG_Qo_A31_GSgGG_A_yAA6ButtonVyAA4TextVGSg_A54_tGSgQo_GAA21_TraitWritingModifierVyAA14OnMoveTraitKeyVGGMd, &_s7SwiftUI15ModifiedContentVyAA7ForEachVySay11WorkoutCore0G5BlockCG10Foundation4UUIDVAA4ViewPAAE20accessibilityActionsyQrqd__yXEAaMRd__lFQOyAA5GroupVyAA012_ConditionalD0VyASyACyAnAE0M7Element8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6VStackVyAA05TupleL0Vy0gB009RepeatRowL0V_AA7DividerVAA6HStackVyA_yAYyAEySayAF0G4StepCGALA0_0g4StepY0VGG_AA6SpacerVACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGtGG_Qo_AA0S18AttachmentModifierVGAnAEAtUQrAW_tFQOyAYyAA7SectionVyAA05EmptyL0VA_yA2__A26_tGA36_GG_Qo_GACyAnAEAtUQrAW_tFQOyA6_yA_yA11__A15_A24_tGG_Qo_A31_GSgGG_A_yAA6ButtonVyAA4TextVGSg_A54_tGSgQo_GAA21_TraitWritingModifierVyAA14OnMoveTraitKeyVGGMR);
  lazy protocol witness table accessor for type ModifiedContent<ForEach<[WorkoutBlock], UUID, <<opaque return type of View.accessibilityActions<A>(_:)>>.0>, _TraitWritingModifier<OnMoveTraitKey>> and conformance <> ModifiedContent<A, B>();
  List<>.init(content:)();
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ListVys5NeverOACyAA7ForEachVySay11WorkoutCore0I5BlockCG10Foundation4UUIDVAA4ViewPAAE20accessibilityActionsyQrqd__yXEAaQRd__lFQOyAA5GroupVyAA012_ConditionalD0VyAWyACyArAE0O7Element8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6VStackVyAA05TupleN0Vy0iB009RepeatRowN0V_AA7DividerVAA6HStackVyA3_yA1_yAIySayAJ0I4StepCGAPA4_0I7StepRowVGG_AA6SpacerVACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGtGG_Qo_AA0U18AttachmentModifierVGArAEAxYQrA__tFQOyA1_yAA7SectionVyAA05EmptyN0VA3_yA6__A30_tGA40_GG_Qo_GACyArAEAxYQrA__tFQOyA10_yA3_yA15__A19_A28_tGG_Qo_A35_GSgGG_A3_yAA6ButtonVyAA4TextVGSg_A58_tGSgQo_GAA21_TraitWritingModifierVyAA14OnMoveTraitKeyVGGGA23_y0J8Graphics7CGFloatVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA4ListVys5NeverOACyAA7ForEachVySay11WorkoutCore0I5BlockCG10Foundation4UUIDVAA4ViewPAAE20accessibilityActionsyQrqd__yXEAaQRd__lFQOyAA5GroupVyAA012_ConditionalD0VyAWyACyArAE0O7Element8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6VStackVyAA05TupleN0Vy0iB009RepeatRowN0V_AA7DividerVAA6HStackVyA3_yA1_yAIySayAJ0I4StepCGAPA4_0I7StepRowVGG_AA6SpacerVACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGtGG_Qo_AA0U18AttachmentModifierVGArAEAxYQrA__tFQOyA1_yAA7SectionVyAA05EmptyN0VA3_yA6__A30_tGA40_GG_Qo_GACyArAEAxYQrA__tFQOyA10_yA3_yA15__A19_A28_tGG_Qo_A35_GSgGG_A3_yAA6ButtonVyAA4TextVGSg_A58_tGSgQo_GAA21_TraitWritingModifierVyAA14OnMoveTraitKeyVGGGA23_y0J8Graphics7CGFloatVSgGGMR);
  v4 = a1 + *(result + 36);
  *v4 = KeyPath;
  *(v4 + 8) = 0x4020000000000000;
  *(v4 + 16) = 0;
  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ForEach<[WorkoutBlock], UUID, <<opaque return type of View.accessibilityActions<A>(_:)>>.0>, _TraitWritingModifier<OnMoveTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ForEach<[WorkoutBlock], UUID, <<opaque return type of View.accessibilityActions<A>(_:)>>.0>, _TraitWritingModifier<OnMoveTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ForEach<[WorkoutBlock], UUID, <<opaque return type of View.accessibilityActions<A>(_:)>>.0>, _TraitWritingModifier<OnMoveTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA7ForEachVySay11WorkoutCore0G5BlockCG10Foundation4UUIDVAA4ViewPAAE20accessibilityActionsyQrqd__yXEAaMRd__lFQOyAA5GroupVyAA012_ConditionalD0VyASyACyAnAE0M7Element8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6VStackVyAA05TupleL0Vy0gB009RepeatRowL0V_AA7DividerVAA6HStackVyA_yAYyAEySayAF0G4StepCGALA0_0g4StepY0VGG_AA6SpacerVACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGtGG_Qo_AA0S18AttachmentModifierVGAnAEAtUQrAW_tFQOyAYyAA7SectionVyAA05EmptyL0VA_yA2__A26_tGA36_GG_Qo_GACyAnAEAtUQrAW_tFQOyA6_yA_yA11__A15_A24_tGG_Qo_A31_GSgGG_A_yAA6ButtonVyAA4TextVGSg_A54_tGSgQo_GAA21_TraitWritingModifierVyAA14OnMoveTraitKeyVGGMd, &_s7SwiftUI15ModifiedContentVyAA7ForEachVySay11WorkoutCore0G5BlockCG10Foundation4UUIDVAA4ViewPAAE20accessibilityActionsyQrqd__yXEAaMRd__lFQOyAA5GroupVyAA012_ConditionalD0VyASyACyAnAE0M7Element8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6VStackVyAA05TupleL0Vy0gB009RepeatRowL0V_AA7DividerVAA6HStackVyA_yAYyAEySayAF0G4StepCGALA0_0g4StepY0VGG_AA6SpacerVACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGtGG_Qo_AA0S18AttachmentModifierVGAnAEAtUQrAW_tFQOyAYyAA7SectionVyAA05EmptyL0VA_yA2__A26_tGA36_GG_Qo_GACyAnAEAtUQrAW_tFQOyA6_yA_yA11__A15_A24_tGG_Qo_A31_GSgGG_A_yAA6ButtonVyAA4TextVGSg_A54_tGSgQo_GAA21_TraitWritingModifierVyAA14OnMoveTraitKeyVGGMR);
    lazy protocol witness table accessor for type ForEach<[WorkoutBlock], UUID, <<opaque return type of View.accessibilityActions<A>(_:)>>.0> and conformance <> ForEach<A, B, C>();
    lazy protocol witness table accessor for type VStack<TupleView<(RepeatRowView, Divider, HStack<TupleView<(VStack<ForEach<[WorkoutStep], UUID, WorkoutStepRow>>, Spacer, ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>)>>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type _TraitWritingModifier<OnMoveTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA06OnMoveC3KeyVGMd, &_s7SwiftUI21_TraitWritingModifierVyAA06OnMoveC3KeyVGMR, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ForEach<[WorkoutBlock], UUID, <<opaque return type of View.accessibilityActions<A>(_:)>>.0>, _TraitWritingModifier<OnMoveTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ForEach<[WorkoutBlock], UUID, <<opaque return type of View.accessibilityActions<A>(_:)>>.0> and conformance <> ForEach<A, B, C>()
{
  result = lazy protocol witness table cache variable for type ForEach<[WorkoutBlock], UUID, <<opaque return type of View.accessibilityActions<A>(_:)>>.0> and conformance <> ForEach<A, B, C>;
  if (!lazy protocol witness table cache variable for type ForEach<[WorkoutBlock], UUID, <<opaque return type of View.accessibilityActions<A>(_:)>>.0> and conformance <> ForEach<A, B, C>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7ForEachVySay11WorkoutCore0E5BlockCG10Foundation4UUIDVAA4ViewPAAE20accessibilityActionsyQrqd__yXEAaKRd__lFQOyAA5GroupVyAA19_ConditionalContentVyAQyAA08ModifiedO0VyAlAE0K7Element8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6VStackVyAA05TupleJ0Vy0eB009RepeatRowJ0V_AA7DividerVAA6HStackVyA_yAYyACySayAD0E4StepCGAJA0_0e4StepY0VGG_AA6SpacerVASyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGtGG_Qo_AA0S18AttachmentModifierVGAlAEAtUQrAW_tFQOyAYyAA7SectionVyAA05EmptyJ0VA_yA2__A26_tGA36_GG_Qo_GASyAlAEAtUQrAW_tFQOyA6_yA_yA11__A15_A24_tGG_Qo_A31_GSgGG_A_yAA6ButtonVyAA4TextVGSg_A54_tGSgQo_GMd, &_s7SwiftUI7ForEachVySay11WorkoutCore0E5BlockCG10Foundation4UUIDVAA4ViewPAAE20accessibilityActionsyQrqd__yXEAaKRd__lFQOyAA5GroupVyAA19_ConditionalContentVyAQyAA08ModifiedO0VyAlAE0K7Element8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6VStackVyAA05TupleJ0Vy0eB009RepeatRowJ0V_AA7DividerVAA6HStackVyA_yAYyACySayAD0E4StepCGAJA0_0e4StepY0VGG_AA6SpacerVASyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGtGG_Qo_AA0S18AttachmentModifierVGAlAEAtUQrAW_tFQOyAYyAA7SectionVyAA05EmptyJ0VA_yA2__A26_tGA36_GG_Qo_GASyAlAEAtUQrAW_tFQOyA6_yA_yA11__A15_A24_tGG_Qo_A31_GSgGG_A_yAA6ButtonVyAA4TextVGSg_A54_tGSgQo_GMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI5GroupVyAA19_ConditionalContentVyAEyAA08ModifiedE0VyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6VStackVyAA05TupleG0Vy07WorkoutB009RepeatRowG0V_AA7DividerVAA6HStackVyAQyAOyAA7ForEachVySay0P4Core0P4StepCG10Foundation4UUIDVAR0pxR0VGG_AA6SpacerVAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGtGG_Qo_AA0K18AttachmentModifierVGAiAEAjKQrAM_tFQOyAOyAA7SectionVyAA05EmptyG0VAQyAT_A22_tGA32_GG_Qo_GAGyAiAEAjKQrAM_tFQOyAXyAQyA7__A11_A20_tGG_Qo_A27_GSgGGMd, &_s7SwiftUI5GroupVyAA19_ConditionalContentVyAEyAA08ModifiedE0VyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6VStackVyAA05TupleG0Vy07WorkoutB009RepeatRowG0V_AA7DividerVAA6HStackVyAQyAOyAA7ForEachVySay0P4Core0P4StepCG10Foundation4UUIDVAR0pxR0VGG_AA6SpacerVAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGtGG_Qo_AA0K18AttachmentModifierVGAiAEAjKQrAM_tFQOyAOyAA7SectionVyAA05EmptyG0VAQyAT_A22_tGA32_GG_Qo_GAGyAiAEAjKQrAM_tFQOyAXyAQyA7__A11_A20_tGG_Qo_A27_GSgGGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI9TupleViewVyAA6ButtonVyAA4TextVGSg_AItGSgMd, &_s7SwiftUI9TupleViewVyAA6ButtonVyAA4TextVGSg_AItGSgMR);
    lazy protocol witness table accessor for type Group<_ConditionalContent<_ConditionalContent<ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, <<opaque return type of View.accessibilityElement(children:)>>.0>, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>?>> and conformance <A> Group<A>();
    lazy protocol witness table accessor for type TupleView<(Button<Text>?, Button<Text>?)>? and conformance <A> A?();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForEach<[WorkoutBlock], UUID, <<opaque return type of View.accessibilityActions<A>(_:)>>.0> and conformance <> ForEach<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Group<_ConditionalContent<_ConditionalContent<ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, <<opaque return type of View.accessibilityElement(children:)>>.0>, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>?>> and conformance <A> Group<A>()
{
  result = lazy protocol witness table cache variable for type Group<_ConditionalContent<_ConditionalContent<ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, <<opaque return type of View.accessibilityElement(children:)>>.0>, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>?>> and conformance <A> Group<A>;
  if (!lazy protocol witness table cache variable for type Group<_ConditionalContent<_ConditionalContent<ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, <<opaque return type of View.accessibilityElement(children:)>>.0>, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>?>> and conformance <A> Group<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI5GroupVyAA19_ConditionalContentVyAEyAA08ModifiedE0VyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6VStackVyAA05TupleG0Vy07WorkoutB009RepeatRowG0V_AA7DividerVAA6HStackVyAQyAOyAA7ForEachVySay0P4Core0P4StepCG10Foundation4UUIDVAR0pxR0VGG_AA6SpacerVAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGtGG_Qo_AA0K18AttachmentModifierVGAiAEAjKQrAM_tFQOyAOyAA7SectionVyAA05EmptyG0VAQyAT_A22_tGA32_GG_Qo_GAGyAiAEAjKQrAM_tFQOyAXyAQyA7__A11_A20_tGG_Qo_A27_GSgGGMd, &_s7SwiftUI5GroupVyAA19_ConditionalContentVyAEyAA08ModifiedE0VyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6VStackVyAA05TupleG0Vy07WorkoutB009RepeatRowG0V_AA7DividerVAA6HStackVyAQyAOyAA7ForEachVySay0P4Core0P4StepCG10Foundation4UUIDVAR0pxR0VGG_AA6SpacerVAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGtGG_Qo_AA0K18AttachmentModifierVGAiAEAjKQrAM_tFQOyAOyAA7SectionVyAA05EmptyG0VAQyAT_A22_tGA32_GG_Qo_GAGyAiAEAjKQrAM_tFQOyAXyAQyA7__A11_A20_tGG_Qo_A27_GSgGGMR);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, <<opaque return type of View.accessibilityElement(children:)>>.0>, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>?> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Group<_ConditionalContent<_ConditionalContent<ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, <<opaque return type of View.accessibilityElement(children:)>>.0>, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>?>> and conformance <A> Group<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, <<opaque return type of View.accessibilityElement(children:)>>.0>, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>?> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, <<opaque return type of View.accessibilityElement(children:)>>.0>, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>?> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, <<opaque return type of View.accessibilityElement(children:)>>.0>, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>?> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6VStackVyAA05TupleF0Vy07WorkoutB009RepeatRowF0V_AA7DividerVAA6HStackVyAOyAMyAA7ForEachVySay0O4Core0O4StepCG10Foundation4UUIDVAP0owQ0VGG_AA6SpacerVAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGtGG_Qo_AA0J18AttachmentModifierVGAgAEAhIQrAK_tFQOyAMyAA7SectionVyAA05EmptyF0VAOyAR_A20_tGA30_GG_Qo_GAEyAgAEAhIQrAK_tFQOyAVyAOyA5__A9_A18_tGG_Qo_A25_GSgGMd, &_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6VStackVyAA05TupleF0Vy07WorkoutB009RepeatRowF0V_AA7DividerVAA6HStackVyAOyAMyAA7ForEachVySay0O4Core0O4StepCG10Foundation4UUIDVAP0owQ0VGG_AA6SpacerVAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGtGG_Qo_AA0J18AttachmentModifierVGAgAEAhIQrAK_tFQOyAMyAA7SectionVyAA05EmptyF0VAOyAR_A20_tGA30_GG_Qo_GAEyAgAEAhIQrAK_tFQOyAVyAOyA5__A9_A18_tGG_Qo_A25_GSgGMR);
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, <<opaque return type of View.accessibilityElement(children:)>>.0> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>? and conformance <A> A?();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, <<opaque return type of View.accessibilityElement(children:)>>.0>, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>?> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, <<opaque return type of View.accessibilityElement(children:)>>.0> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, <<opaque return type of View.accessibilityElement(children:)>>.0> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, <<opaque return type of View.accessibilityElement(children:)>>.0> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6VStackVyAA05TupleF0Vy07WorkoutB009RepeatRowF0V_AA7DividerVAA6HStackVyAOyAMyAA7ForEachVySay0O4Core0O4StepCG10Foundation4UUIDVAP0owQ0VGG_AA6SpacerVAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGtGG_Qo_AA0J18AttachmentModifierVGAgAEAhIQrAK_tFQOyAMyAA7SectionVyAA05EmptyF0VAOyAR_A20_tGA30_GG_Qo_GMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6VStackVyAA05TupleF0Vy07WorkoutB009RepeatRowF0V_AA7DividerVAA6HStackVyAOyAMyAA7ForEachVySay0O4Core0O4StepCG10Foundation4UUIDVAP0owQ0VGG_AA6SpacerVAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGtGG_Qo_AA0J18AttachmentModifierVGAgAEAhIQrAK_tFQOyAMyAA7SectionVyAA05EmptyF0VAOyAR_A20_tGA30_GG_Qo_GMR);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6VStackVyAA7SectionVyAA9EmptyViewVAA05TupleF0Vy07WorkoutB009RepeatRowF0V_AA6HStackVyAIyACyAA7ForEachVySay0H4Core0H4StepCG10Foundation4UUIDVAJ0hoJ0VGG_AA6SpacerVAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGtGAGGGMd, &_s7SwiftUI6VStackVyAA7SectionVyAA9EmptyViewVAA05TupleF0Vy07WorkoutB009RepeatRowF0V_AA6HStackVyAIyACyAA7ForEachVySay0H4Core0H4StepCG10Foundation4UUIDVAJ0hoJ0VGG_AA6SpacerVAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGtGAGGGMR);
    lazy protocol witness table accessor for type VStack<TupleView<(RepeatRowView, Divider, HStack<TupleView<(VStack<ForEach<[WorkoutStep], UUID, WorkoutStepRow>>, Spacer, ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>)>>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type VStack<Section<EmptyView, TupleView<(RepeatRowView, HStack<TupleView<(VStack<ForEach<[WorkoutStep], UUID, WorkoutStepRow>>, Spacer, ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>)>>)>, EmptyView>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA7SectionVyAA9EmptyViewVAA05TupleF0Vy07WorkoutB009RepeatRowF0V_AA6HStackVyAIyACyAA7ForEachVySay0H4Core0H4StepCG10Foundation4UUIDVAJ0hoJ0VGG_AA6SpacerVAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGtGAGGGMd, &_s7SwiftUI6VStackVyAA7SectionVyAA9EmptyViewVAA05TupleF0Vy07WorkoutB009RepeatRowF0V_AA6HStackVyAIyACyAA7ForEachVySay0H4Core0H4StepCG10Foundation4UUIDVAJ0hoJ0VGG_AA6SpacerVAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGtGAGGGMR, MEMORY[0x277CE1198]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, <<opaque return type of View.accessibilityElement(children:)>>.0> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAA05TupleE0Vy07WorkoutB00N7StepRowV_AA6SpacerVACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGG_Qo_AA0i10AttachmentV0VGSgMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAA05TupleE0Vy07WorkoutB00N7StepRowV_AA6SpacerVACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGG_Qo_AA0i10AttachmentV0VGSgMR);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>? and conformance <A> A?);
  }

  return result;
}

uint64_t outlined init with copy of ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of Group<_ConditionalContent<_ConditionalContent<ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, <<opaque return type of View.accessibilityElement(children:)>>.0>, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>?>>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _s7SwiftUI31AccessibilityAttachmentModifierVAcA04ViewE0AAWlTm_10(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined init with copy of Button<Text>?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of Button<Text>?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<List<Never, ModifiedContent<ForEach<[WorkoutBlock], UUID, <<opaque return type of View.accessibilityActions<A>(_:)>>.0>, _TraitWritingModifier<OnMoveTraitKey>>>, _EnvironmentKeyWritingModifier<CGFloat?>>, HideListRowSeparator> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<List<Never, ModifiedContent<ForEach<[WorkoutBlock], UUID, <<opaque return type of View.accessibilityActions<A>(_:)>>.0>, _TraitWritingModifier<OnMoveTraitKey>>>, _EnvironmentKeyWritingModifier<CGFloat?>>, HideListRowSeparator> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<List<Never, ModifiedContent<ForEach<[WorkoutBlock], UUID, <<opaque return type of View.accessibilityActions<A>(_:)>>.0>, _TraitWritingModifier<OnMoveTraitKey>>>, _EnvironmentKeyWritingModifier<CGFloat?>>, HideListRowSeparator> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4ListVys5NeverOACyAA7ForEachVySay11WorkoutCore0I5BlockCG10Foundation4UUIDVAA4ViewPAAE20accessibilityActionsyQrqd__yXEAaQRd__lFQOyAA5GroupVyAA012_ConditionalD0VyAWyACyArAE0O7Element8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6VStackVyAA05TupleN0Vy0iB009RepeatRowN0V_AA7DividerVAA6HStackVyA3_yA1_yAIySayAJ0I4StepCGAPA4_0I7StepRowVGG_AA6SpacerVACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGtGG_Qo_AA0U18AttachmentModifierVGArAEAxYQrA__tFQOyA1_yAA7SectionVyAA05EmptyN0VA3_yA6__A30_tGA40_GG_Qo_GACyArAEAxYQrA__tFQOyA10_yA3_yA15__A19_A28_tGG_Qo_A35_GSgGG_A3_yAA6ButtonVyAA4TextVGSg_A58_tGSgQo_GAA21_TraitWritingModifierVyAA14OnMoveTraitKeyVGGGA23_y0J8Graphics7CGFloatVSgGGA4_04HideE12RowSeparator33_A607961C6E65DD4DD1C2818C5FE69B58LLVGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ListVys5NeverOACyAA7ForEachVySay11WorkoutCore0I5BlockCG10Foundation4UUIDVAA4ViewPAAE20accessibilityActionsyQrqd__yXEAaQRd__lFQOyAA5GroupVyAA012_ConditionalD0VyAWyACyArAE0O7Element8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6VStackVyAA05TupleN0Vy0iB009RepeatRowN0V_AA7DividerVAA6HStackVyA3_yA1_yAIySayAJ0I4StepCGAPA4_0I7StepRowVGG_AA6SpacerVACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGtGG_Qo_AA0U18AttachmentModifierVGArAEAxYQrA__tFQOyA1_yAA7SectionVyAA05EmptyN0VA3_yA6__A30_tGA40_GG_Qo_GACyArAEAxYQrA__tFQOyA10_yA3_yA15__A19_A28_tGG_Qo_A35_GSgGG_A3_yAA6ButtonVyAA4TextVGSg_A58_tGSgQo_GAA21_TraitWritingModifierVyAA14OnMoveTraitKeyVGGGA23_y0J8Graphics7CGFloatVSgGGA4_04HideE12RowSeparator33_A607961C6E65DD4DD1C2818C5FE69B58LLVGMR);
    lazy protocol witness table accessor for type ModifiedContent<List<Never, ModifiedContent<ForEach<[WorkoutBlock], UUID, <<opaque return type of View.accessibilityActions<A>(_:)>>.0>, _TraitWritingModifier<OnMoveTraitKey>>>, _EnvironmentKeyWritingModifier<CGFloat?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type HideListRowSeparator and conformance HideListRowSeparator();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<List<Never, ModifiedContent<ForEach<[WorkoutBlock], UUID, <<opaque return type of View.accessibilityActions<A>(_:)>>.0>, _TraitWritingModifier<OnMoveTraitKey>>>, _EnvironmentKeyWritingModifier<CGFloat?>>, HideListRowSeparator> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<List<Never, ModifiedContent<ForEach<[WorkoutBlock], UUID, <<opaque return type of View.accessibilityActions<A>(_:)>>.0>, _TraitWritingModifier<OnMoveTraitKey>>>, _EnvironmentKeyWritingModifier<CGFloat?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<List<Never, ModifiedContent<ForEach<[WorkoutBlock], UUID, <<opaque return type of View.accessibilityActions<A>(_:)>>.0>, _TraitWritingModifier<OnMoveTraitKey>>>, _EnvironmentKeyWritingModifier<CGFloat?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<List<Never, ModifiedContent<ForEach<[WorkoutBlock], UUID, <<opaque return type of View.accessibilityActions<A>(_:)>>.0>, _TraitWritingModifier<OnMoveTraitKey>>>, _EnvironmentKeyWritingModifier<CGFloat?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ListVys5NeverOACyAA7ForEachVySay11WorkoutCore0I5BlockCG10Foundation4UUIDVAA4ViewPAAE20accessibilityActionsyQrqd__yXEAaQRd__lFQOyAA5GroupVyAA012_ConditionalD0VyAWyACyArAE0O7Element8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6VStackVyAA05TupleN0Vy0iB009RepeatRowN0V_AA7DividerVAA6HStackVyA3_yA1_yAIySayAJ0I4StepCGAPA4_0I7StepRowVGG_AA6SpacerVACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGtGG_Qo_AA0U18AttachmentModifierVGArAEAxYQrA__tFQOyA1_yAA7SectionVyAA05EmptyN0VA3_yA6__A30_tGA40_GG_Qo_GACyArAEAxYQrA__tFQOyA10_yA3_yA15__A19_A28_tGG_Qo_A35_GSgGG_A3_yAA6ButtonVyAA4TextVGSg_A58_tGSgQo_GAA21_TraitWritingModifierVyAA14OnMoveTraitKeyVGGGA23_y0J8Graphics7CGFloatVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA4ListVys5NeverOACyAA7ForEachVySay11WorkoutCore0I5BlockCG10Foundation4UUIDVAA4ViewPAAE20accessibilityActionsyQrqd__yXEAaQRd__lFQOyAA5GroupVyAA012_ConditionalD0VyAWyACyArAE0O7Element8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6VStackVyAA05TupleN0Vy0iB009RepeatRowN0V_AA7DividerVAA6HStackVyA3_yA1_yAIySayAJ0I4StepCGAPA4_0I7StepRowVGG_AA6SpacerVACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGtGG_Qo_AA0U18AttachmentModifierVGArAEAxYQrA__tFQOyA1_yAA7SectionVyAA05EmptyN0VA3_yA6__A30_tGA40_GG_Qo_GACyArAEAxYQrA__tFQOyA10_yA3_yA15__A19_A28_tGG_Qo_A35_GSgGG_A3_yAA6ButtonVyAA4TextVGSg_A58_tGSgQo_GAA21_TraitWritingModifierVyAA14OnMoveTraitKeyVGGGA23_y0J8Graphics7CGFloatVSgGGMR);
    lazy protocol witness table accessor for type VStack<TupleView<(RepeatRowView, Divider, HStack<TupleView<(VStack<ForEach<[WorkoutStep], UUID, WorkoutStepRow>>, Spacer, ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>)>>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type List<Never, ModifiedContent<ForEach<[WorkoutBlock], UUID, <<opaque return type of View.accessibilityActions<A>(_:)>>.0>, _TraitWritingModifier<OnMoveTraitKey>>> and conformance List<A, B>, &_s7SwiftUI4ListVys5NeverOAA15ModifiedContentVyAA7ForEachVySay11WorkoutCore0I5BlockCG10Foundation4UUIDVAA4ViewPAAE20accessibilityActionsyQrqd__yXEAaQRd__lFQOyAA5GroupVyAA012_ConditionalF0VyAWyAGyArAE0O7Element8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6VStackVyAA05TupleN0Vy0iB009RepeatRowN0V_AA7DividerVAA6HStackVyA3_yA1_yAIySayAJ0I4StepCGAPA4_0I7StepRowVGG_AA6SpacerVAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGtGG_Qo_AA0U18AttachmentModifierVGArAEAxYQrA__tFQOyA1_yAA7SectionVyAA05EmptyN0VA3_yA6__A30_tGA40_GG_Qo_GAGyArAEAxYQrA__tFQOyA10_yA3_yA15__A19_A28_tGG_Qo_A35_GSgGG_A3_yAA6ButtonVyAA4TextVGSg_A58_tGSgQo_GAA21_TraitWritingModifierVyAA14OnMoveTraitKeyVGGGMd, &_s7SwiftUI4ListVys5NeverOAA15ModifiedContentVyAA7ForEachVySay11WorkoutCore0I5BlockCG10Foundation4UUIDVAA4ViewPAAE20accessibilityActionsyQrqd__yXEAaQRd__lFQOyAA5GroupVyAA012_ConditionalF0VyAWyAGyArAE0O7Element8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6VStackVyAA05TupleN0Vy0iB009RepeatRowN0V_AA7DividerVAA6HStackVyA3_yA1_yAIySayAJ0I4StepCGAPA4_0I7StepRowVGG_AA6SpacerVAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGtGG_Qo_AA0U18AttachmentModifierVGArAEAxYQrA__tFQOyA1_yAA7SectionVyAA05EmptyN0VA3_yA6__A30_tGA40_GG_Qo_GAGyArAEAxYQrA__tFQOyA10_yA3_yA15__A19_A28_tGG_Qo_A35_GSgGG_A3_yAA6ButtonVyAA4TextVGSg_A58_tGSgQo_GAA21_TraitWritingModifierVyAA14OnMoveTraitKeyVGGGMR, MEMORY[0x277CDE5A0]);
    lazy protocol witness table accessor for type VStack<TupleView<(RepeatRowView, Divider, HStack<TupleView<(VStack<ForEach<[WorkoutStep], UUID, WorkoutStepRow>>, Spacer, ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>)>>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<CGFloat?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVSgGMR, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<List<Never, ModifiedContent<ForEach<[WorkoutBlock], UUID, <<opaque return type of View.accessibilityActions<A>(_:)>>.0>, _TraitWritingModifier<OnMoveTraitKey>>>, _EnvironmentKeyWritingModifier<CGFloat?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type VStack<TupleView<(RepeatRowView, Divider, HStack<TupleView<(VStack<ForEach<[WorkoutStep], UUID, WorkoutStepRow>>, Spacer, ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>)>>)>> and conformance VStack<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t NillableNavigationTitle.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA4ViewPAAE15navigationTitleyQrqd__SyRd__lFQOyAA01_f9Modifier_D0Vy07WorkoutB0018NillableNavigationH0VG_SSQo_AN_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyAA4ViewPAAE15navigationTitleyQrqd__SyRd__lFQOyAA01_f9Modifier_D0Vy07WorkoutB0018NillableNavigationH0VG_SSQo_AN_GMR);
  MEMORY[0x28223BE20](v5);
  v7 = v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE15navigationTitleyQrqd__SyRd__lFQOyAA01_C16Modifier_ContentVy07WorkoutB0018NillableNavigationE0VG_SSQo_Md, &_s7SwiftUI4ViewPAAE15navigationTitleyQrqd__SyRd__lFQOyAA01_C16Modifier_ContentVy07WorkoutB0018NillableNavigationE0VG_SSQo_MR);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v22 - v10;
  v12 = v2[1];
  if (v12)
  {
    v23 = *v2;
    v24 = v12;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB023NillableNavigationTitleVGMd, &_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB023NillableNavigationTitleVGMR);
    v22[1] = a2;
    v14 = v13;
    v15 = lazy protocol witness table accessor for type _ViewModifier_Content<NillableNavigationTitle> and conformance _ViewModifier_Content<A>();
    v16 = lazy protocol witness table accessor for type String and conformance String();
    v17 = MEMORY[0x277D837D0];
    View.navigationTitle<A>(_:)();
    (*(v9 + 16))(v7, v11, v8);
    swift_storeEnumTagMultiPayload();
    v23 = v14;
    v24 = v17;
    v25 = v15;
    v26 = v16;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v9 + 8))(v11, v8);
  }

  else
  {
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB023NillableNavigationTitleVGMd, &_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB023NillableNavigationTitleVGMR);
    (*(*(v19 - 8) + 16))(v7, a1, v19);
    swift_storeEnumTagMultiPayload();
    v20 = lazy protocol witness table accessor for type _ViewModifier_Content<NillableNavigationTitle> and conformance _ViewModifier_Content<A>();
    v21 = lazy protocol witness table accessor for type String and conformance String();
    v23 = v19;
    v24 = MEMORY[0x277D837D0];
    v25 = v20;
    v26 = v21;
    swift_getOpaqueTypeConformance2();
    return _ConditionalContent<>.init(storage:)();
  }
}

unint64_t lazy protocol witness table accessor for type _ViewModifier_Content<NillableNavigationTitle> and conformance _ViewModifier_Content<A>()
{
  result = lazy protocol witness table cache variable for type _ViewModifier_Content<NillableNavigationTitle> and conformance _ViewModifier_Content<A>;
  if (!lazy protocol witness table cache variable for type _ViewModifier_Content<NillableNavigationTitle> and conformance _ViewModifier_Content<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB023NillableNavigationTitleVGMd, &_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB023NillableNavigationTitleVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewModifier_Content<NillableNavigationTitle> and conformance _ViewModifier_Content<A>);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NillableNavigationTitle(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for NillableNavigationTitle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.navigationTitle<A>(_:)>>.0, _ViewModifier_Content<NillableNavigationTitle>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.navigationTitle<A>(_:)>>.0, _ViewModifier_Content<NillableNavigationTitle>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.navigationTitle<A>(_:)>>.0, _ViewModifier_Content<NillableNavigationTitle>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE15navigationTitleyQrqd__SyRd__lFQOyAA01_e9Modifier_D0Vy07WorkoutB0018NillableNavigationG0VG_SSQo_ALGMd, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE15navigationTitleyQrqd__SyRd__lFQOyAA01_e9Modifier_D0Vy07WorkoutB0018NillableNavigationG0VG_SSQo_ALGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB023NillableNavigationTitleVGMd, &_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB023NillableNavigationTitleVGMR);
    lazy protocol witness table accessor for type _ViewModifier_Content<NillableNavigationTitle> and conformance _ViewModifier_Content<A>();
    lazy protocol witness table accessor for type String and conformance String();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.navigationTitle<A>(_:)>>.0, _ViewModifier_Content<NillableNavigationTitle>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t type metadata accessor for IntervalBlocksSection(uint64_t a1)
{
  result = type metadata singleton initialization cache for IntervalBlocksSection;
  if (!type metadata singleton initialization cache for IntervalBlocksSection)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for IntervalBlocksSection(uint64_t a1)
{
  type metadata accessor for EnvironmentObject<ConfigurationNavigationModel>(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for EnvironmentObject<IntervalWorkoutConfiguration>(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for ObservedObject<IntervalWorkout>(319);
      if (v3 <= 0x3F)
      {
        _sSo21FIUIFormattingManagerCMaTm_15(319, &lazy cache variable for type metadata for FIUIFormattingManager, 0x277D0A7E8);
        if (v4 <= 0x3F)
        {
          type metadata accessor for HKActivityMoveMode(319);
          if (v5 <= 0x3F)
          {
            type metadata accessor for State<Bool>();
            if (v6 <= 0x3F)
            {
              type metadata accessor for Binding<UUID?>(319);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void type metadata accessor for ObservedObject<IntervalWorkout>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ObservedObject<IntervalWorkout>)
  {
    type metadata accessor for IntervalWorkout();
    _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_17(&lazy protocol witness table cache variable for type IntervalWorkout and conformance IntervalWorkout, MEMORY[0x277D7D990], MEMORY[0x277D7D988]);
    v1 = type metadata accessor for ObservedObject();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ObservedObject<IntervalWorkout>);
    }
  }
}

BOOL IntervalBlocksSection.disableAddBlock.getter()
{
  v0 = type metadata accessor for WorkoutBlockType();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v17 - v5;
  v7 = IntervalWorkout.blocks.getter();
  if (!(v7 >> 62))
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_14:

    return 0;
  }

  v16 = v7;
  v8 = __CocoaSet.count.getter();
  v7 = v16;
  if (!v8)
  {
    goto LABEL_14;
  }

LABEL_3:
  v9 = __OFSUB__(v8, 1);
  v10 = v8 - 1;
  if (v9)
  {
    __break(1u);
  }

  else if ((v7 & 0xC000000000000001) == 0)
  {
    if ((v10 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v10 < *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {

      goto LABEL_8;
    }

    __break(1u);
    goto LABEL_21;
  }

  MEMORY[0x20F30C990](v10);
LABEL_8:

  WorkoutBlock.blockType.getter();
  (*(v1 + 104))(v3, *MEMORY[0x277D7DDD8], v0);
  _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_17(&lazy protocol witness table cache variable for type WorkoutBlockType and conformance WorkoutBlockType, MEMORY[0x277D7DDE0], MEMORY[0x277D7DDE8]);
  v11 = dispatch thunk of static Equatable.== infix(_:_:)();
  v12 = *(v1 + 8);
  v12(v3, v0);
  v12(v6, v0);
  if ((v11 & 1) == 0)
  {
    v13 = WorkoutBlock.steps.getter();
    if (!(v13 >> 62))
    {
      v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_12:

      return v14 == 0;
    }

LABEL_21:
    v14 = __CocoaSet.count.getter();
    goto LABEL_12;
  }

  return 0;
}

uint64_t IntervalBlocksSection.body.getter@<X0>(char *a1@<X8>)
{
  v62 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA9EmptyViewVAA05TupleE0Vy07WorkoutB020IntervalStyledButtonVSg_AkA0E0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaLRd__lFQOyAJ_AA010NavigationE0VyAmAE7toolbarAQQrqd__yXE_tAA14ToolbarContentRd__lFQOyAH0h16BlocksReorderingE0V_AA0tU7BuilderV10buildBlockyQrxAaYRzlFZQOy_AA0T4ItemVyytAA08ModifiedU0VyAA0J0VyAA07DefaultJ5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGQo_Qo_GQo_SgtGAEGMd, &_s7SwiftUI7SectionVyAA9EmptyViewVAA05TupleE0Vy07WorkoutB020IntervalStyledButtonVSg_AkA0E0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaLRd__lFQOyAJ_AA010NavigationE0VyAmAE7toolbarAQQrqd__yXE_tAA14ToolbarContentRd__lFQOyAH0h16BlocksReorderingE0V_AA0tU7BuilderV10buildBlockyQrxAaYRzlFZQOy_AA0T4ItemVyytAA08ModifiedU0VyAA0J0VyAA07DefaultJ5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGQo_Qo_GQo_SgtGAEGMR);
  v57 = *(v2 - 8);
  v58 = v2;
  MEMORY[0x28223BE20](v2);
  v56[0] = v56 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA9EmptyViewVAA05TupleE0Vy07WorkoutB020IntervalStyledButtonVSg_AkA0E0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaLRd__lFQOyAJ_AA010NavigationE0VyAmAE7toolbarAQQrqd__yXE_tAA14ToolbarContentRd__lFQOyAH0h16BlocksReorderingE0V_AA0tU7BuilderV10buildBlockyQrxAaYRzlFZQOy_AA0T4ItemVyytAA08ModifiedU0VyAA0J0VyAA07DefaultJ5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGQo_Qo_GQo_SgtGAEGSgMd, &_s7SwiftUI7SectionVyAA9EmptyViewVAA05TupleE0Vy07WorkoutB020IntervalStyledButtonVSg_AkA0E0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaLRd__lFQOyAJ_AA010NavigationE0VyAmAE7toolbarAQQrqd__yXE_tAA14ToolbarContentRd__lFQOyAH0h16BlocksReorderingE0V_AA0tU7BuilderV10buildBlockyQrxAaYRzlFZQOy_AA0T4ItemVyytAA08ModifiedU0VyAA0J0VyAA07DefaultJ5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGQo_Qo_GQo_SgtGAEGSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v69 = v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v70 = v56 - v7;
  v8 = type metadata accessor for IntervalBlocksSection(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySay11WorkoutCore0E5BlockCG10Foundation4UUIDVAA15ModifiedContentVyALy0eB008IntervalG17ConfigurationViewVAA30_EnvironmentKeyWritingModifierVyAM0M15NavigationModelCSgGGAQyAD0leM0CSgGGGMd, &_s7SwiftUI7ForEachVySay11WorkoutCore0E5BlockCG10Foundation4UUIDVAA15ModifiedContentVyALy0eB008IntervalG17ConfigurationViewVAA30_EnvironmentKeyWritingModifierVyAM0M15NavigationModelCSgGGAQyAD0leM0CSgGGGMR);
  v61 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v67 = v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v71 = v56 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA9EmptyViewVAA15ModifiedContentVyAGy07WorkoutB0031IntervalSingleStepConfigurationE0VAA30_EnvironmentKeyWritingModifierVyAH0L15NavigationModelCSgGGALy0H4Core0ihL0CSgGGAEGMd, &_s7SwiftUI7SectionVyAA9EmptyViewVAA15ModifiedContentVyAGy07WorkoutB0031IntervalSingleStepConfigurationE0VAA30_EnvironmentKeyWritingModifierVyAH0L15NavigationModelCSgGGALy0H4Core0ihL0CSgGGAEGMR);
  v59 = *(v14 - 8);
  v60 = v14;
  MEMORY[0x28223BE20](v14);
  v65 = v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v66 = v56 - v17;
  MEMORY[0x28223BE20](v18);
  v63 = v56 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = v56 - v21;
  v72 = v1;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB035IntervalSingleStepConfigurationViewVAA30_EnvironmentKeyWritingModifierVyAD0I15NavigationModelCSgGGAHy0E4Core0feI0CSgGGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB035IntervalSingleStepConfigurationViewVAA30_EnvironmentKeyWritingModifierVyAD0I15NavigationModelCSgGGAHy0E4Core0feI0CSgGGMR);
  v24 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<IntervalSingleStepConfigurationView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<IntervalSingleStepConfigurationView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB035IntervalSingleStepConfigurationViewVAA30_EnvironmentKeyWritingModifierVyAD0I15NavigationModelCSgGGAHy0E4Core0feI0CSgGGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB035IntervalSingleStepConfigurationViewVAA30_EnvironmentKeyWritingModifierVyAD0I15NavigationModelCSgGGAHy0E4Core0feI0CSgGGMR, lazy protocol witness table accessor for type ModifiedContent<IntervalSingleStepConfigurationView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>);
  v64 = v22;
  v56[2] = v23;
  v56[1] = v24;
  Section<>.init(content:)();
  v73 = IntervalWorkout.stepBlocks.getter();
  outlined init with copy of IntervalBlocksSection(v1, v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v26 = swift_allocObject();
  outlined init with take of IntervalBlocksSection(v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v25, type metadata accessor for IntervalBlocksSection);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore0A5BlockCGMd, &_sSay11WorkoutCore0A5BlockCGMR);
  type metadata accessor for UUID();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB030IntervalBlockConfigurationViewVAA30_EnvironmentKeyWritingModifierVyAD0H15NavigationModelCSgGGAHy0E4Core0feH0CSgGGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB030IntervalBlockConfigurationViewVAA30_EnvironmentKeyWritingModifierVyAD0H15NavigationModelCSgGGAHy0E4Core0feH0CSgGGMR);
  _s7SwiftUI30_EnvironmentKeyWritingModifierVy07WorkoutB028ConfigurationNavigationModelCSgGACyxGAA04ViewF0AAWlTm_1(&lazy protocol witness table cache variable for type [WorkoutBlock] and conformance [A], &_sSay11WorkoutCore0A5BlockCGMd, &_sSay11WorkoutCore0A5BlockCGMR, MEMORY[0x277D83980]);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<IntervalSingleStepConfigurationView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<IntervalBlockConfigurationView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB030IntervalBlockConfigurationViewVAA30_EnvironmentKeyWritingModifierVyAD0H15NavigationModelCSgGGAHy0E4Core0feH0CSgGGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB030IntervalBlockConfigurationViewVAA30_EnvironmentKeyWritingModifierVyAD0H15NavigationModelCSgGGAHy0E4Core0feH0CSgGGMR, lazy protocol witness table accessor for type ModifiedContent<IntervalBlockConfigurationView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>);
  _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_17(&lazy protocol witness table cache variable for type WorkoutBlock and conformance WorkoutBlock, MEMORY[0x277D7DD60], MEMORY[0x277D7DD70]);
  v27 = ForEach<>.init(_:content:)();
  if ((*(v1 + 96) & 0x20) != 0)
  {
    MEMORY[0x28223BE20](v27);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVy07WorkoutB020IntervalStyledButtonVSg_AgA0D0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaHRd__lFQOyAF_AA010NavigationD0VyAiAE7toolbarAMQrqd__yXE_tAA14ToolbarContentRd__lFQOyAD0f16BlocksReorderingD0V_AA0rS7BuilderV10buildBlockyQrxAaURzlFZQOy_AA0R4ItemVyytAA08ModifiedS0VyAA0H0VyAA07DefaultH5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGQo_Qo_GQo_SgtGMd, &_s7SwiftUI9TupleViewVy07WorkoutB020IntervalStyledButtonVSg_AgA0D0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaHRd__lFQOyAF_AA010NavigationD0VyAiAE7toolbarAMQrqd__yXE_tAA14ToolbarContentRd__lFQOyAD0f16BlocksReorderingD0V_AA0rS7BuilderV10buildBlockyQrxAaURzlFZQOy_AA0R4ItemVyytAA08ModifiedS0VyAA0H0VyAA07DefaultH5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGQo_Qo_GQo_SgtGMR);
    _s7SwiftUI30_EnvironmentKeyWritingModifierVy07WorkoutB028ConfigurationNavigationModelCSgGACyxGAA04ViewF0AAWlTm_1(&lazy protocol witness table cache variable for type TupleView<(IntervalStyledButton?, IntervalStyledButton?, (<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0)?)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVy07WorkoutB020IntervalStyledButtonVSg_AgA0D0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaHRd__lFQOyAF_AA010NavigationD0VyAiAE7toolbarAMQrqd__yXE_tAA14ToolbarContentRd__lFQOyAD0f16BlocksReorderingD0V_AA0rS7BuilderV10buildBlockyQrxAaURzlFZQOy_AA0R4ItemVyytAA08ModifiedS0VyAA0H0VyAA07DefaultH5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGQo_Qo_GQo_SgtGMd, &_s7SwiftUI9TupleViewVy07WorkoutB020IntervalStyledButtonVSg_AgA0D0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaHRd__lFQOyAF_AA010NavigationD0VyAiAE7toolbarAMQrqd__yXE_tAA14ToolbarContentRd__lFQOyAD0f16BlocksReorderingD0V_AA0rS7BuilderV10buildBlockyQrxAaURzlFZQOy_AA0R4ItemVyytAA08ModifiedS0VyAA0H0VyAA07DefaultH5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGQo_Qo_GQo_SgtGMR, MEMORY[0x277CE14C0]);
    v34 = v56[0];
    Section<>.init(content:)();
    v29 = v57;
    v35 = v58;
    v36 = v70;
    (*(v57 + 32))(v70, v34, v58);
    v31 = 0;
    v32 = v36;
    v33 = v35;
  }

  else
  {
    v29 = v57;
    v28 = v58;
    v30 = v70;
    if (IntervalWorkout.stepBlocks.getter() >> 62)
    {
      __CocoaSet.count.getter();
    }

    v31 = 1;
    v32 = v30;
    v33 = v28;
  }

  v37 = (*(v29 + 56))(v32, v31, 1, v33);
  MEMORY[0x28223BE20](v37);
  v38 = v63;
  Section<>.init(content:)();
  v40 = v59;
  v39 = v60;
  v41 = *(v59 + 16);
  v42 = v66;
  v41(v66, v64, v60);
  v43 = v61;
  v44 = *(v61 + 16);
  v45 = v67;
  v44(v67, v71, v68);
  outlined init with copy of Section<EmptyView, TupleView<(IntervalStyledButton?, IntervalStyledButton?, (<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0)?)>, EmptyView>?(v70, v69, &_s7SwiftUI7SectionVyAA9EmptyViewVAA05TupleE0Vy07WorkoutB020IntervalStyledButtonVSg_AkA0E0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaLRd__lFQOyAJ_AA010NavigationE0VyAmAE7toolbarAQQrqd__yXE_tAA14ToolbarContentRd__lFQOyAH0h16BlocksReorderingE0V_AA0tU7BuilderV10buildBlockyQrxAaYRzlFZQOy_AA0T4ItemVyytAA08ModifiedU0VyAA0J0VyAA07DefaultJ5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGQo_Qo_GQo_SgtGAEGSgMd, &_s7SwiftUI7SectionVyAA9EmptyViewVAA05TupleE0Vy07WorkoutB020IntervalStyledButtonVSg_AkA0E0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaLRd__lFQOyAJ_AA010NavigationE0VyAmAE7toolbarAQQrqd__yXE_tAA14ToolbarContentRd__lFQOyAH0h16BlocksReorderingE0V_AA0tU7BuilderV10buildBlockyQrxAaYRzlFZQOy_AA0T4ItemVyytAA08ModifiedU0VyAA0J0VyAA07DefaultJ5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGQo_Qo_GQo_SgtGAEGSgMR);
  v41(v65, v38, v39);
  v46 = v62;
  v41(v62, v42, v39);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA9EmptyViewVAA15ModifiedContentVyAGy07WorkoutB0031IntervalSingleStepConfigurationE0VAA30_EnvironmentKeyWritingModifierVyAH0L15NavigationModelCSgGGALy0H4Core0ihL0CSgGGAEG_AA7ForEachVySayAR0H5BlockCG10Foundation4UUIDVAGyAGyAH0ivlE0VAPGAVGGACyAeA05TupleE0VyAH0I12StyledButtonVSg_A14_AA0E0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAAA15_Rd__lFQOyA13__AA0qE0VyA16_AAE7toolbarA20_Qrqd__yXE_tAA07ToolbarG0Rd__lFQOyAH0i16BlocksReorderingE0V_AA07ToolbarG7BuilderV05buildV0yQrxAAA28_RzlFZQOy_AA11ToolbarItemVyytAGyAA6ButtonVyAA18DefaultButtonLabelVGALyAA13AnyShapeStyleVSgGGGQo_Qo_GQo_SgtGAEGSgAXtMd, &_s7SwiftUI7SectionVyAA9EmptyViewVAA15ModifiedContentVyAGy07WorkoutB0031IntervalSingleStepConfigurationE0VAA30_EnvironmentKeyWritingModifierVyAH0L15NavigationModelCSgGGALy0H4Core0ihL0CSgGGAEG_AA7ForEachVySayAR0H5BlockCG10Foundation4UUIDVAGyAGyAH0ivlE0VAPGAVGGACyAeA05TupleE0VyAH0I12StyledButtonVSg_A14_AA0E0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAAA15_Rd__lFQOyA13__AA0qE0VyA16_AAE7toolbarA20_Qrqd__yXE_tAA07ToolbarG0Rd__lFQOyAH0i16BlocksReorderingE0V_AA07ToolbarG7BuilderV05buildV0yQrxAAA28_RzlFZQOy_AA11ToolbarItemVyytAGyAA6ButtonVyAA18DefaultButtonLabelVGALyAA13AnyShapeStyleVSgGGGQo_Qo_GQo_SgtGAEGSgAXtMR);
  v48 = v45;
  v49 = v68;
  v44(&v46[v47[12]], v48, v68);
  v50 = v69;
  outlined init with copy of Section<EmptyView, TupleView<(IntervalStyledButton?, IntervalStyledButton?, (<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0)?)>, EmptyView>?(v69, &v46[v47[16]], &_s7SwiftUI7SectionVyAA9EmptyViewVAA05TupleE0Vy07WorkoutB020IntervalStyledButtonVSg_AkA0E0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaLRd__lFQOyAJ_AA010NavigationE0VyAmAE7toolbarAQQrqd__yXE_tAA14ToolbarContentRd__lFQOyAH0h16BlocksReorderingE0V_AA0tU7BuilderV10buildBlockyQrxAaYRzlFZQOy_AA0T4ItemVyytAA08ModifiedU0VyAA0J0VyAA07DefaultJ5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGQo_Qo_GQo_SgtGAEGSgMd, &_s7SwiftUI7SectionVyAA9EmptyViewVAA05TupleE0Vy07WorkoutB020IntervalStyledButtonVSg_AkA0E0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaLRd__lFQOyAJ_AA010NavigationE0VyAmAE7toolbarAQQrqd__yXE_tAA14ToolbarContentRd__lFQOyAH0h16BlocksReorderingE0V_AA0tU7BuilderV10buildBlockyQrxAaYRzlFZQOy_AA0T4ItemVyytAA08ModifiedU0VyAA0J0VyAA07DefaultJ5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGQo_Qo_GQo_SgtGAEGSgMR);
  v51 = &v46[v47[20]];
  v52 = v65;
  v41(v51, v65, v39);
  v53 = *(v40 + 8);
  v53(v63, v39);
  outlined destroy of Section<EmptyView, TupleView<(IntervalStyledButton?, IntervalStyledButton?, (<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0)?)>, EmptyView>?(v70, &_s7SwiftUI7SectionVyAA9EmptyViewVAA05TupleE0Vy07WorkoutB020IntervalStyledButtonVSg_AkA0E0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaLRd__lFQOyAJ_AA010NavigationE0VyAmAE7toolbarAQQrqd__yXE_tAA14ToolbarContentRd__lFQOyAH0h16BlocksReorderingE0V_AA0tU7BuilderV10buildBlockyQrxAaYRzlFZQOy_AA0T4ItemVyytAA08ModifiedU0VyAA0J0VyAA07DefaultJ5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGQo_Qo_GQo_SgtGAEGSgMd, &_s7SwiftUI7SectionVyAA9EmptyViewVAA05TupleE0Vy07WorkoutB020IntervalStyledButtonVSg_AkA0E0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaLRd__lFQOyAJ_AA010NavigationE0VyAmAE7toolbarAQQrqd__yXE_tAA14ToolbarContentRd__lFQOyAH0h16BlocksReorderingE0V_AA0tU7BuilderV10buildBlockyQrxAaYRzlFZQOy_AA0T4ItemVyytAA08ModifiedU0VyAA0J0VyAA07DefaultJ5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGQo_Qo_GQo_SgtGAEGSgMR);
  v54 = *(v43 + 8);
  v54(v71, v49);
  v53(v64, v39);
  v53(v52, v39);
  outlined destroy of Section<EmptyView, TupleView<(IntervalStyledButton?, IntervalStyledButton?, (<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0)?)>, EmptyView>?(v50, &_s7SwiftUI7SectionVyAA9EmptyViewVAA05TupleE0Vy07WorkoutB020IntervalStyledButtonVSg_AkA0E0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaLRd__lFQOyAJ_AA010NavigationE0VyAmAE7toolbarAQQrqd__yXE_tAA14ToolbarContentRd__lFQOyAH0h16BlocksReorderingE0V_AA0tU7BuilderV10buildBlockyQrxAaYRzlFZQOy_AA0T4ItemVyytAA08ModifiedU0VyAA0J0VyAA07DefaultJ5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGQo_Qo_GQo_SgtGAEGSgMd, &_s7SwiftUI7SectionVyAA9EmptyViewVAA05TupleE0Vy07WorkoutB020IntervalStyledButtonVSg_AkA0E0PAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaLRd__lFQOyAJ_AA010NavigationE0VyAmAE7toolbarAQQrqd__yXE_tAA14ToolbarContentRd__lFQOyAH0h16BlocksReorderingE0V_AA0tU7BuilderV10buildBlockyQrxAaYRzlFZQOy_AA0T4ItemVyytAA08ModifiedU0VyAA0J0VyAA07DefaultJ5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGQo_Qo_GQo_SgtGAEGSgMR);
  v54(v67, v49);
  return (v53)(v66, v39);
}

uint64_t IntervalBlocksSection.singleStepConfigurationView(for:stepType:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = v2;
  v33 = a2;
  v5 = type metadata accessor for IntervalSingleStepConfigurationView(0);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB035IntervalSingleStepConfigurationViewVAA30_EnvironmentKeyWritingModifierVyAD0I15NavigationModelCSgGGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB035IntervalSingleStepConfigurationViewVAA30_EnvironmentKeyWritingModifierVyAD0I15NavigationModelCSgGGMR);
  MEMORY[0x28223BE20](v32);
  v10 = &v30 - v9;
  v11 = v3[6];
  v31 = v3[7];
  v12 = *(v6 + 44);
  v13 = type metadata accessor for StepType();
  (*(*(v13 - 8) + 16))(v8 + v12, a1, v13);
  type metadata accessor for IntervalBlocksSection(0);
  v30 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy10Foundation4UUIDVSgGMd, &_s7SwiftUI7BindingVy10Foundation4UUIDVSgGMR);
  Binding.projectedValue.getter();
  type metadata accessor for ConfigurationNavigationModel(0);
  _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_17(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel, &protocol conformance descriptor for ConfigurationNavigationModel);
  v14 = EnvironmentObject.init()();
  v16 = v15;
  type metadata accessor for IntervalWorkoutConfiguration();
  _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_17(&lazy protocol witness table cache variable for type IntervalWorkoutConfiguration and conformance WorkoutConfiguration, MEMORY[0x277D7D9A0], MEMORY[0x277D7DA48]);
  v17 = EnvironmentObject.init()();
  *v8 = v14;
  v8[1] = v16;
  v8[2] = v17;
  v8[3] = v18;
  type metadata accessor for WorkoutBlock();
  _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_17(&lazy protocol witness table cache variable for type WorkoutBlock and conformance WorkoutBlock, MEMORY[0x277D7DD60], MEMORY[0x277D7DD58]);

  v8[4] = ObservedObject.init(wrappedValue:)();
  v8[5] = v19;
  v20 = v31;
  v8[6] = v30;
  v8[7] = v20;
  v21 = *v3;
  if (*v3)
  {

    v22 = static ObservableObject.environmentStore.getter();
    outlined init with take of IntervalBlocksSection(v8, v10, type metadata accessor for IntervalSingleStepConfigurationView);
    v23 = &v10[*(v32 + 36)];
    *v23 = v22;
    v23[1] = v21;
    v24 = v3[2];
    if (v24)
    {
      v25 = v24;
      v26 = static ObservableObject.environmentStore.getter();
      v27 = v33;
      outlined init with take of ModifiedContent<IntervalSingleStepConfigurationView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>(v10, v33, &_s7SwiftUI15ModifiedContentVy07WorkoutB035IntervalSingleStepConfigurationViewVAA30_EnvironmentKeyWritingModifierVyAD0I15NavigationModelCSgGGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB035IntervalSingleStepConfigurationViewVAA30_EnvironmentKeyWritingModifierVyAD0I15NavigationModelCSgGGMR);
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB035IntervalSingleStepConfigurationViewVAA30_EnvironmentKeyWritingModifierVyAD0I15NavigationModelCSgGGAHy0E4Core0feI0CSgGGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB035IntervalSingleStepConfigurationViewVAA30_EnvironmentKeyWritingModifierVyAD0I15NavigationModelCSgGGAHy0E4Core0feI0CSgGGMR);
      v29 = (v27 + *(result + 36));
      *v29 = v26;
      v29[1] = v24;
      return result;
    }
  }

  else
  {
    EnvironmentObject.error()();
    __break(1u);
  }

  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t closure #2 in IntervalBlocksSection.body.getter@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v34 = a3;
  v4 = type metadata accessor for IntervalBlockConfigurationView(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB030IntervalBlockConfigurationViewVAA30_EnvironmentKeyWritingModifierVyAD0H15NavigationModelCSgGGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB030IntervalBlockConfigurationViewVAA30_EnvironmentKeyWritingModifierVyAD0H15NavigationModelCSgGGMR);
  MEMORY[0x28223BE20](v33);
  v8 = &v28 - v7;
  v9 = *(a2 + 48);
  v10 = *(a2 + 96);
  v31 = *(a2 + 88);
  v32 = v10;
  type metadata accessor for IntervalBlocksSection(0);

  v29 = v9;
  v30 = *(a2 + 56);
  v28 = *(a2 + 72);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy10Foundation4UUIDVSgGMd, &_s7SwiftUI7BindingVy10Foundation4UUIDVSgGMR);
  Binding.projectedValue.getter();
  type metadata accessor for ConfigurationNavigationModel(0);
  _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_17(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel, &protocol conformance descriptor for ConfigurationNavigationModel);
  v11 = EnvironmentObject.init()();
  v13 = v12;
  type metadata accessor for IntervalWorkoutConfiguration();
  _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_17(&lazy protocol witness table cache variable for type IntervalWorkoutConfiguration and conformance WorkoutConfiguration, MEMORY[0x277D7D9A0], MEMORY[0x277D7DA48]);
  v14 = EnvironmentObject.init()();
  *v6 = v11;
  *(v6 + 1) = v13;
  *(v6 + 2) = v14;
  *(v6 + 3) = v15;
  type metadata accessor for WorkoutBlock();
  _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_17(&lazy protocol witness table cache variable for type WorkoutBlock and conformance WorkoutBlock, MEMORY[0x277D7DD60], MEMORY[0x277D7DD58]);
  *(v6 + 4) = ObservedObject.init(wrappedValue:)();
  *(v6 + 5) = v16;
  *(v6 + 6) = v29;
  *(v6 + 72) = v28;
  *(v6 + 56) = v30;
  v17 = v32;
  *(v6 + 11) = v31;
  *(v6 + 12) = v17;
  v35 = 0;
  State.init(wrappedValue:)();
  v18 = v37;
  v6[104] = v36;
  *(v6 + 14) = v18;
  v19 = *a2;
  if (*a2)
  {

    v20 = static ObservableObject.environmentStore.getter();
    outlined init with take of IntervalBlocksSection(v6, v8, type metadata accessor for IntervalBlockConfigurationView);
    v21 = &v8[*(v33 + 36)];
    *v21 = v20;
    v21[1] = v19;
    v22 = *(a2 + 16);
    if (v22)
    {
      v23 = v22;
      v24 = static ObservableObject.environmentStore.getter();
      v25 = v34;
      outlined init with take of ModifiedContent<IntervalSingleStepConfigurationView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>(v8, v34, &_s7SwiftUI15ModifiedContentVy07WorkoutB030IntervalBlockConfigurationViewVAA30_EnvironmentKeyWritingModifierVyAD0H15NavigationModelCSgGGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB030IntervalBlockConfigurationViewVAA30_EnvironmentKeyWritingModifierVyAD0H15NavigationModelCSgGGMR);
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB030IntervalBlockConfigurationViewVAA30_EnvironmentKeyWritingModifierVyAD0H15NavigationModelCSgGGAHy0E4Core0feH0CSgGGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB030IntervalBlockConfigurationViewVAA30_EnvironmentKeyWritingModifierVyAD0H15NavigationModelCSgGGAHy0E4Core0feH0CSgGGMR);
      v27 = (v25 + *(result + 36));
      *v27 = v24;
      v27[1] = v22;
      return result;
    }
  }

  else
  {
    EnvironmentObject.error()();
    __break(1u);
  }

  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

double closure #3 in IntervalBlocksSection.body.getter@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v84 = a2;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaBRd__lFQOy07WorkoutB020IntervalStyledButtonV_AA010NavigationC0VyAcAE7toolbarAGQrqd__yXE_tAA14ToolbarContentRd__lFQOyAL0l16BlocksReorderingC0V_AA0qR7BuilderV10buildBlockyQrxAaRRzlFZQOy_AA0Q4ItemVyytAA08ModifiedR0VyAA0N0VyAA07DefaultN5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGQo_Qo_GQo_Md, &_s7SwiftUI4ViewPAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaBRd__lFQOy07WorkoutB020IntervalStyledButtonV_AA010NavigationC0VyAcAE7toolbarAGQrqd__yXE_tAA14ToolbarContentRd__lFQOyAL0l16BlocksReorderingC0V_AA0qR7BuilderV10buildBlockyQrxAaRRzlFZQOy_AA0Q4ItemVyytAA08ModifiedR0VyAA0N0VyAA07DefaultN5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGQo_Qo_GQo_MR);
  v88 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v79 = &v75 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaBRd__lFQOy07WorkoutB020IntervalStyledButtonV_AA010NavigationC0VyAcAE7toolbarAGQrqd__yXE_tAA14ToolbarContentRd__lFQOyAL0l16BlocksReorderingC0V_AA0qR7BuilderV10buildBlockyQrxAaRRzlFZQOy_AA0Q4ItemVyytAA08ModifiedR0VyAA0N0VyAA07DefaultN5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGQo_Qo_GQo_SgMd, &_s7SwiftUI4ViewPAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaBRd__lFQOy07WorkoutB020IntervalStyledButtonV_AA010NavigationC0VyAcAE7toolbarAGQrqd__yXE_tAA14ToolbarContentRd__lFQOyAL0l16BlocksReorderingC0V_AA0qR7BuilderV10buildBlockyQrxAaRRzlFZQOy_AA0Q4ItemVyytAA08ModifiedR0VyAA0N0VyAA07DefaultN5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGQo_Qo_GQo_SgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v93 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v94 = &v75 - v7;
  v8 = type metadata accessor for IntervalBlocksSection(0);
  v86 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v87 = v10;
  v11 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = 0;
  v90 = 0;
  v13 = 0;
  v101 = 0;
  v14 = 0;
  v96 = 0;
  v15 = 0;
  v16 = *(a1 + 96);
  if ((v16 & 0x20) != 0)
  {
    v12 = IntervalBlocksSection.addButtonTitle.getter(v9);
    v18 = v17;
    v19 = IntervalBlocksSection.disableAddBlock.getter();
    v20 = Image.init(systemName:)();
    outlined init with copy of IntervalBlocksSection(a1, v11);
    v21 = (*(v86 + 80) + 16) & ~*(v86 + 80);
    v22 = swift_allocObject();
    outlined init with take of IntervalBlocksSection(v11, v22 + v21, type metadata accessor for IntervalBlocksSection);
    [objc_allocWithZone(MEMORY[0x277D75348]) initWithDisplayP3Red:0.122 green:0.086 blue:0.196 alpha:1.0];
    v15 = Color.init(uiColor:)();
    v13 = v19;
    v90 = v18;

    v101 = v20;

    v96 = v22;

    v14 = partial apply for closure #1 in closure #3 in IntervalBlocksSection.body.getter;
  }

  v83 = v14;
  v80 = v11;
  v85 = v13;
  static Platform.current.getter();
  v23 = Platform.rawValue.getter();
  v24 = Platform.rawValue.getter();
  v91 = v15;
  if (v23 == v24 || (IntervalWorkout.canAddRepeat.getter() & 1) == 0)
  {
    countAndFlagsBits = 0;
    object = 0;
    v95 = 0;
    v99 = 0;
    v98 = 0;
    v92 = 0;
    v81 = 0;
  }

  else
  {
    v78 = v16;
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v25.super.isa = WorkoutUIBundle.super.isa;
    v112._object = 0xE000000000000000;
    v26.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v26.value._object = 0xEB00000000656C62;
    v27._countAndFlagsBits = 0xD000000000000020;
    v27._object = 0x800000020CBA4120;
    v28._countAndFlagsBits = 0;
    v28._object = 0xE000000000000000;
    v112._countAndFlagsBits = 0;
    v29 = NSLocalizedString(_:tableName:bundle:value:comment:)(v27, v26, v25, v28, v112);
    countAndFlagsBits = v29._countAndFlagsBits;

    LOBYTE(v25.super.isa) = IntervalBlocksSection.disableAddBlock.getter();
    v30 = Image.init(systemName:)();
    v31 = v80;
    outlined init with copy of IntervalBlocksSection(a1, v80);
    v32 = (*(v86 + 80) + 16) & ~*(v86 + 80);
    v33 = swift_allocObject();
    outlined init with take of IntervalBlocksSection(v31, v33 + v32, type metadata accessor for IntervalBlocksSection);
    [objc_allocWithZone(MEMORY[0x277D75348]) initWithDisplayP3Red:0.122 green:0.086 blue:0.196 alpha:1.0];
    v34 = Color.init(uiColor:)();
    v95 = v25.super.isa & 1;
    object = v29._object;

    v99 = v30;

    v92 = v33;

    v81 = v34;

    v98 = partial apply for closure #2 in closure #3 in IntervalBlocksSection.body.getter;
    v15 = v91;
    LOBYTE(v16) = v78;
  }

  v35 = IntervalWorkout.stepBlocks.getter();
  if (v35 >> 62)
  {
    v36 = __CocoaSet.count.getter();
  }

  else
  {
    v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v37 = 1;
  v97 = v12;
  if ((v16 & 0x20) != 0 && v36 >= 2)
  {
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v38 = WorkoutUIBundle.super.isa;
    v113._object = 0xE000000000000000;
    v39.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v39.value._object = 0xEB00000000656C62;
    v40._object = 0x800000020CBA4100;
    v40._countAndFlagsBits = 0xD00000000000001BLL;
    v41._countAndFlagsBits = 0;
    v41._object = 0xE000000000000000;
    v113._countAndFlagsBits = 0;
    v42 = NSLocalizedString(_:tableName:bundle:value:comment:)(v40, v39, v38, v41, v113);

    v43 = IntervalWorkout.stepBlocks.getter();
    v78 = v42._object;
    v76 = v42._countAndFlagsBits;
    if (v43 >> 62)
    {
      v44 = __CocoaSet.count.getter();
    }

    else
    {
      v44 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v45 = Image.init(systemName:)();
    v77 = v45;
    v46 = v80;
    outlined init with copy of IntervalBlocksSection(a1, v80);
    v47 = (*(v86 + 80) + 16) & ~*(v86 + 80);
    v48 = swift_allocObject();
    v86 = v48;
    outlined init with take of IntervalBlocksSection(v46, v48 + v47, type metadata accessor for IntervalBlocksSection);
    [objc_allocWithZone(MEMORY[0x277D75348]) initWithDisplayP3Red:0.122 green:0.086 blue:0.196 alpha:1.0];
    v49 = Color.init(uiColor:)();
    v105 = v76;
    v106 = v78;
    v107 = v44 < 2;
    v108 = v45;
    v109 = partial apply for closure #3 in closure #3 in IntervalBlocksSection.body.getter;
    v110 = v48;
    v111 = v49;
    v50 = *(a1 + 112);
    v103 = *(a1 + 104);
    v104 = v50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
    State.projectedValue.getter();
    LODWORD(v76) = v102;
    outlined init with copy of IntervalBlocksSection(a1, v46);
    v51 = swift_allocObject();
    outlined init with take of IntervalBlocksSection(v46, v51 + v47, type metadata accessor for IntervalBlocksSection);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI14NavigationViewVyAA0D0PAAE7toolbar7contentQrqd__yXE_tAA14ToolbarContentRd__lFQOy07WorkoutB0024IntervalBlocksReorderingD0V_AA0gH7BuilderV10buildBlockyQrxAaHRzlFZQOy_AA0G4ItemVyytAA08ModifiedH0VyAA6ButtonVyAA07DefaultR5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGQo_Qo_GMd, &_s7SwiftUI14NavigationViewVyAA0D0PAAE7toolbar7contentQrqd__yXE_tAA14ToolbarContentRd__lFQOy07WorkoutB0024IntervalBlocksReorderingD0V_AA0gH7BuilderV10buildBlockyQrxAaHRzlFZQOy_AA0G4ItemVyytAA08ModifiedH0VyAA6ButtonVyAA07DefaultR5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGQo_Qo_GMR);
    lazy protocol witness table accessor for type IntervalStyledButton and conformance IntervalStyledButton();
    _s7SwiftUI30_EnvironmentKeyWritingModifierVy07WorkoutB028ConfigurationNavigationModelCSgGACyxGAA04ViewF0AAWlTm_1(&lazy protocol witness table cache variable for type NavigationView<<<opaque return type of View.toolbar<A>(content:)>>.0> and conformance NavigationView<A>, &_s7SwiftUI14NavigationViewVyAA0D0PAAE7toolbar7contentQrqd__yXE_tAA14ToolbarContentRd__lFQOy07WorkoutB0024IntervalBlocksReorderingD0V_AA0gH7BuilderV10buildBlockyQrxAaHRzlFZQOy_AA0G4ItemVyytAA08ModifiedH0VyAA6ButtonVyAA07DefaultR5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGQo_Qo_GMd, &_s7SwiftUI14NavigationViewVyAA0D0PAAE7toolbar7contentQrqd__yXE_tAA14ToolbarContentRd__lFQOy07WorkoutB0024IntervalBlocksReorderingD0V_AA0gH7BuilderV10buildBlockyQrxAaHRzlFZQOy_AA0G4ItemVyytAA08ModifiedH0VyAA6ButtonVyAA07DefaultR5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGQo_Qo_GMR, MEMORY[0x277CDD978]);
    v52 = v79;
    View.sheet<A>(isPresented:onDismiss:content:)();

    (*(v88 + 32))(v94, v52, v89);
    v37 = 0;
    v12 = v97;
    v15 = v91;
  }

  v53 = v94;
  (*(v88 + 56))(v94, v37, 1, v89);
  v54 = v93;
  outlined init with copy of Section<EmptyView, TupleView<(IntervalStyledButton?, IntervalStyledButton?, (<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0)?)>, EmptyView>?(v53, v93, &_s7SwiftUI4ViewPAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaBRd__lFQOy07WorkoutB020IntervalStyledButtonV_AA010NavigationC0VyAcAE7toolbarAGQrqd__yXE_tAA14ToolbarContentRd__lFQOyAL0l16BlocksReorderingC0V_AA0qR7BuilderV10buildBlockyQrxAaRRzlFZQOy_AA0Q4ItemVyytAA08ModifiedR0VyAA0N0VyAA07DefaultN5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGQo_Qo_GQo_SgMd, &_s7SwiftUI4ViewPAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaBRd__lFQOy07WorkoutB020IntervalStyledButtonV_AA010NavigationC0VyAcAE7toolbarAGQrqd__yXE_tAA14ToolbarContentRd__lFQOyAL0l16BlocksReorderingC0V_AA0qR7BuilderV10buildBlockyQrxAaRRzlFZQOy_AA0Q4ItemVyytAA08ModifiedR0VyAA0N0VyAA07DefaultN5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGQo_Qo_GQo_SgMR);
  v55 = v84;
  v56 = v90;
  *v84 = v12;
  v55[1] = v56;
  v57 = v85;
  v58 = v101;
  v55[2] = v85;
  v55[3] = v58;
  v59 = v83;
  v60 = v96;
  v55[4] = v83;
  v55[5] = v60;
  v61 = countAndFlagsBits;
  v55[6] = v15;
  v55[7] = v61;
  v62 = v99;
  v63 = v95;
  v55[8] = object;
  v55[9] = v63;
  v64 = v98;
  v55[10] = v62;
  v55[11] = v64;
  v65 = v81;
  v55[12] = v92;
  v55[13] = v65;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI20IntervalStyledButtonVSg_AD05SwiftB04ViewPAEE5sheet11isPresented9onDismiss7contentQrAE7BindingVySbG_yycSgqd__yctAeFRd__lFQOyAC_AE010NavigationG0VyAgEE7toolbarAKQrqd__yXE_tAE14ToolbarContentRd__lFQOyAA0c16BlocksReorderingG0V_AE0qR7BuilderV10buildBlockyQrxAeSRzlFZQOy_AE0Q4ItemVyytAE08ModifiedR0VyAE0E0VyAE07DefaultE5LabelVGAE30_EnvironmentKeyWritingModifierVyAE13AnyShapeStyleVSgGGGQo_Qo_GQo_SgtMd, &_s9WorkoutUI20IntervalStyledButtonVSg_AD05SwiftB04ViewPAEE5sheet11isPresented9onDismiss7contentQrAE7BindingVySbG_yycSgqd__yctAeFRd__lFQOyAC_AE010NavigationG0VyAgEE7toolbarAKQrqd__yXE_tAE14ToolbarContentRd__lFQOyAA0c16BlocksReorderingG0V_AE0qR7BuilderV10buildBlockyQrxAeSRzlFZQOy_AE0Q4ItemVyytAE08ModifiedR0VyAE0E0VyAE07DefaultE5LabelVGAE30_EnvironmentKeyWritingModifierVyAE13AnyShapeStyleVSgGGGQo_Qo_GQo_SgtMR);
  outlined init with copy of Section<EmptyView, TupleView<(IntervalStyledButton?, IntervalStyledButton?, (<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0)?)>, EmptyView>?(v54, v55 + *(v66 + 64), &_s7SwiftUI4ViewPAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaBRd__lFQOy07WorkoutB020IntervalStyledButtonV_AA010NavigationC0VyAcAE7toolbarAGQrqd__yXE_tAA14ToolbarContentRd__lFQOyAL0l16BlocksReorderingC0V_AA0qR7BuilderV10buildBlockyQrxAaRRzlFZQOy_AA0Q4ItemVyytAA08ModifiedR0VyAA0N0VyAA07DefaultN5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGQo_Qo_GQo_SgMd, &_s7SwiftUI4ViewPAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaBRd__lFQOy07WorkoutB020IntervalStyledButtonV_AA010NavigationC0VyAcAE7toolbarAGQrqd__yXE_tAA14ToolbarContentRd__lFQOyAL0l16BlocksReorderingC0V_AA0qR7BuilderV10buildBlockyQrxAaRRzlFZQOy_AA0Q4ItemVyytAA08ModifiedR0VyAA0N0VyAA07DefaultN5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGQo_Qo_GQo_SgMR);
  v96 = v60;
  outlined copy of IntervalStyledButton?(v97, v56);
  v67 = object;
  v68 = v63;
  v95 = v63;
  v69 = v99;
  v70 = v98;
  v71 = v92;
  outlined copy of IntervalStyledButton?(v61, object);
  outlined consume of IntervalStyledButton?(v61, v67, v68, v69, v70, v71, v65);
  v72 = v96;
  v73 = v91;
  outlined consume of IntervalStyledButton?(v97, v56, v57, v101, v59, v96, v91);
  outlined destroy of Section<EmptyView, TupleView<(IntervalStyledButton?, IntervalStyledButton?, (<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0)?)>, EmptyView>?(v94, &_s7SwiftUI4ViewPAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaBRd__lFQOy07WorkoutB020IntervalStyledButtonV_AA010NavigationC0VyAcAE7toolbarAGQrqd__yXE_tAA14ToolbarContentRd__lFQOyAL0l16BlocksReorderingC0V_AA0qR7BuilderV10buildBlockyQrxAaRRzlFZQOy_AA0Q4ItemVyytAA08ModifiedR0VyAA0N0VyAA07DefaultN5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGQo_Qo_GQo_SgMd, &_s7SwiftUI4ViewPAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaBRd__lFQOy07WorkoutB020IntervalStyledButtonV_AA010NavigationC0VyAcAE7toolbarAGQrqd__yXE_tAA14ToolbarContentRd__lFQOyAL0l16BlocksReorderingC0V_AA0qR7BuilderV10buildBlockyQrxAaRRzlFZQOy_AA0Q4ItemVyytAA08ModifiedR0VyAA0N0VyAA07DefaultN5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGQo_Qo_GQo_SgMR);
  outlined destroy of Section<EmptyView, TupleView<(IntervalStyledButton?, IntervalStyledButton?, (<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0)?)>, EmptyView>?(v93, &_s7SwiftUI4ViewPAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaBRd__lFQOy07WorkoutB020IntervalStyledButtonV_AA010NavigationC0VyAcAE7toolbarAGQrqd__yXE_tAA14ToolbarContentRd__lFQOyAL0l16BlocksReorderingC0V_AA0qR7BuilderV10buildBlockyQrxAaRRzlFZQOy_AA0Q4ItemVyytAA08ModifiedR0VyAA0N0VyAA07DefaultN5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGQo_Qo_GQo_SgMd, &_s7SwiftUI4ViewPAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaBRd__lFQOy07WorkoutB020IntervalStyledButtonV_AA010NavigationC0VyAcAE7toolbarAGQrqd__yXE_tAA14ToolbarContentRd__lFQOyAL0l16BlocksReorderingC0V_AA0qR7BuilderV10buildBlockyQrxAaRRzlFZQOy_AA0Q4ItemVyytAA08ModifiedR0VyAA0N0VyAA07DefaultN5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGQo_Qo_GQo_SgMR);
  outlined consume of IntervalStyledButton?(v61, object, v95, v99, v98, v71, v65);
  return outlined consume of IntervalStyledButton?(v97, v56, v57, v101, v59, v72, v73);
}

uint64_t IntervalBlocksSection.addButtonTitle.getter(uint64_t a1)
{
  if (static Platform.current.getter())
  {
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v1 = WorkoutUIBundle.super.isa;
    v9 = 0xE000000000000000;
    v2 = 0xD000000000000023;
    v3 = 0x800000020CBA4150;
  }

  else
  {
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v1 = WorkoutUIBundle.super.isa;
    v9 = 0xE000000000000000;
    v3 = 0x800000020CBA4180;
    v2 = 0xD00000000000001ELL;
  }

  v4.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v4.value._object = 0xEB00000000656C62;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v6 = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v2, v4, v1, v5, *(&v9 - 1))._countAndFlagsBits;

  return countAndFlagsBits;
}

void IntervalBlocksSection.addButtonPressed()()
{
  v1 = *v0;
  if (*v0)
  {
    v2 = v0[5];
    v3 = OBJC_IVAR____TtC9WorkoutUI28ConfigurationNavigationModel_intervalWorkout;
    swift_beginAccess();
    v4 = *(v1 + v3);
    *(v1 + v3) = v2;
    v5 = v2;

    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.setter();
    v6 = static Platform.current.getter();
    if (v6)
    {
      swift_getKeyPath();
      swift_getKeyPath();

      static Published.subscript.setter();
    }

    else
    {
      MEMORY[0x28223BE20](v6);
      static Animation.default.getter();
      withAnimation<A>(_:_:)();
    }
  }

  else
  {
    type metadata accessor for ConfigurationNavigationModel(0);
    _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_17(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel, &protocol conformance descriptor for ConfigurationNavigationModel);
    EnvironmentObject.error()();
    __break(1u);
  }
}

uint64_t IntervalBlocksSection.repeatButtonPressed()()
{
  v1 = *v0;
  if (*v0)
  {
    v2 = v0[5];
    v3 = OBJC_IVAR____TtC9WorkoutUI28ConfigurationNavigationModel_intervalWorkout;
    swift_beginAccess();
    v4 = *(v1 + v3);
    *(v1 + v3) = v2;

    v5 = v2;

    swift_getKeyPath();
    swift_getKeyPath();

    return static Published.subscript.setter();
  }

  else
  {
    type metadata accessor for ConfigurationNavigationModel(0);
    _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_17(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel, &protocol conformance descriptor for ConfigurationNavigationModel);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t closure #4 in closure #3 in IntervalBlocksSection.body.getter(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE7toolbar7contentQrqd__yXE_tAA14ToolbarContentRd__lFQOy07WorkoutB0024IntervalBlocksReorderingC0V_AA0fG7BuilderV10buildBlockyQrxAaFRzlFZQOy_AA0F4ItemVyytAA08ModifiedG0VyAA6ButtonVyAA07DefaultQ5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGQo_Qo_Md, &_s7SwiftUI4ViewPAAE7toolbar7contentQrqd__yXE_tAA14ToolbarContentRd__lFQOy07WorkoutB0024IntervalBlocksReorderingC0V_AA0fG7BuilderV10buildBlockyQrxAaFRzlFZQOy_AA0F4ItemVyytAA08ModifiedG0VyAA6ButtonVyAA07DefaultQ5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGQo_Qo_MR);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA08ModifiedD0VyAA6ButtonVyAA07DefaultJ5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGQo_Md, &_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA08ModifiedD0VyAA6ButtonVyAA07DefaultJ5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGQo_MR);
  lazy protocol witness table accessor for type IntervalBlocksReorderingView and conformance IntervalBlocksReorderingView();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI11ToolbarItemVyytAA15ModifiedContentVyAA6ButtonVyAA07DefaultG5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGMd, &_s7SwiftUI11ToolbarItemVyytAA15ModifiedContentVyAA6ButtonVyAA07DefaultG5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGMR);
  _s7SwiftUI30_EnvironmentKeyWritingModifierVy07WorkoutB028ConfigurationNavigationModelCSgGACyxGAA04ViewF0AAWlTm_1(&lazy protocol witness table cache variable for type ToolbarItem<(), ModifiedContent<Button<DefaultButtonLabel>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>> and conformance ToolbarItem<A, B>, &_s7SwiftUI11ToolbarItemVyytAA15ModifiedContentVyAA6ButtonVyAA07DefaultG5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGMd, &_s7SwiftUI11ToolbarItemVyytAA15ModifiedContentVyAA6ButtonVyAA07DefaultG5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGMR, MEMORY[0x277CDD7A8]);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return NavigationView.init(content:)();
}

void closure #1 in closure #4 in closure #3 in IntervalBlocksSection.body.getter(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 48);
  type metadata accessor for IntervalWorkout();
  _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_17(&lazy protocol witness table cache variable for type IntervalWorkout and conformance IntervalWorkout, MEMORY[0x277D7D990], MEMORY[0x277D7D988]);
  v3 = v1;
  v4 = v2;
  ObservedObject.init(wrappedValue:)();
  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA08ModifiedD0VyAA6ButtonVyAA07DefaultJ5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGQo_Md, &_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA08ModifiedD0VyAA6ButtonVyAA07DefaultJ5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGQo_MR);
  lazy protocol witness table accessor for type IntervalBlocksReorderingView and conformance IntervalBlocksReorderingView();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI11ToolbarItemVyytAA15ModifiedContentVyAA6ButtonVyAA07DefaultG5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGMd, &_s7SwiftUI11ToolbarItemVyytAA15ModifiedContentVyAA6ButtonVyAA07DefaultG5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGMR);
  _s7SwiftUI30_EnvironmentKeyWritingModifierVy07WorkoutB028ConfigurationNavigationModelCSgGACyxGAA04ViewF0AAWlTm_1(&lazy protocol witness table cache variable for type ToolbarItem<(), ModifiedContent<Button<DefaultButtonLabel>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>> and conformance ToolbarItem<A, B>, &_s7SwiftUI11ToolbarItemVyytAA15ModifiedContentVyAA6ButtonVyAA07DefaultG5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGMd, &_s7SwiftUI11ToolbarItemVyytAA15ModifiedContentVyAA6ButtonVyAA07DefaultG5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGMR, MEMORY[0x277CDD7A8]);
  swift_getOpaqueTypeConformance2();
  View.toolbar<A>(content:)();
}

uint64_t closure #1 in closure #1 in closure #4 in closure #3 in IntervalBlocksSection.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for ToolbarItemPlacement();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11ToolbarItemVyytAA15ModifiedContentVyAA6ButtonVyAA07DefaultG5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGMd, &_s7SwiftUI11ToolbarItemVyytAA15ModifiedContentVyAA6ButtonVyAA07DefaultG5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  static ToolbarItemPlacement.cancellationAction.getter();
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA07DefaultE5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA07DefaultE5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGMR);
  lazy protocol witness table accessor for type ModifiedContent<Button<DefaultButtonLabel>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>();
  ToolbarItem<>.init(placement:content:)();
  v7 = _s7SwiftUI30_EnvironmentKeyWritingModifierVy07WorkoutB028ConfigurationNavigationModelCSgGACyxGAA04ViewF0AAWlTm_1(&lazy protocol witness table cache variable for type ToolbarItem<(), ModifiedContent<Button<DefaultButtonLabel>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>> and conformance ToolbarItem<A, B>, &_s7SwiftUI11ToolbarItemVyytAA15ModifiedContentVyAA6ButtonVyAA07DefaultG5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGMd, &_s7SwiftUI11ToolbarItemVyytAA15ModifiedContentVyAA6ButtonVyAA07DefaultG5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGMR, MEMORY[0x277CDD7A8]);
  MEMORY[0x20F3098F0](v6, v3, v7);
  return (*(v4 + 8))(v6, v3);
}

uint64_t closure #1 in closure #1 in closure #1 in closure #4 in closure #3 in IntervalBlocksSection.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for IntervalBlocksSection(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = type metadata accessor for ButtonRole();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static ButtonRole.confirm.getter();
  outlined init with copy of IntervalBlocksSection(a1, v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  outlined init with take of IntervalBlocksSection(v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for IntervalBlocksSection);
  MEMORY[0x20F30AF90](v9, partial apply for closure #1 in closure #1 in closure #1 in closure #1 in closure #4 in closure #3 in IntervalBlocksSection.body.getter, v11);
  v12 = static Color.clear.getter();
  KeyPath = swift_getKeyPath();
  v17[1] = v12;
  v14 = AnyShapeStyle.init<A>(_:)();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA07DefaultE5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA07DefaultE5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGMR);
  v16 = (a2 + *(result + 36));
  *v16 = KeyPath;
  v16[1] = v14;
  return result;
}

double closure #3 in closure #3 in IntervalBlocksSection.body.getter(uint64_t a1)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
  State.wrappedValue.getter();
  State.wrappedValue.setter();

  return result;
}

uint64_t closure #1 in IntervalBlocksSection.body.getter@<X0>(uint64_t (*a1)(double)@<X1>, unsigned int *a2@<X2>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for StepType();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1(v8);
  (*(v7 + 104))(v10, *a2, v6);
  IntervalBlocksSection.singleStepConfigurationView(for:stepType:)(v10, a3);

  return (*(v7 + 8))(v10, v6);
}

uint64_t closure #1 in IntervalBlocksSection.addButtonPressed()(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v22 - v6;
  v23 = type metadata accessor for UUID();
  v8 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v9 = type metadata accessor for StepType();
  v10 = MEMORY[0x28223BE20](v9);
  (*(v12 + 104))(&v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D7E710], v10);
  _sSo21FIUIFormattingManagerCMaTm_15(0, &lazy cache variable for type metadata for NLSessionActivityGoal, 0x277D0A838);
  static NLSessionActivityGoal.makeOpenGoal()();
  v13 = a1[2];
  if (v13)
  {
    v14 = v13;
    dispatch thunk of WorkoutConfiguration.activityType.getter();

    UUID.init()();
    type metadata accessor for WorkoutStep();
    swift_allocObject();
    v15 = WorkoutStep.init(_:goal:activityType:uuid:displayName:)();
    if (*a1)
    {
      v16 = v15;

      ConfigurationNavigationModel.choseStepForIntervalWorkout(_:modifyingBlock:)(v16, 0);

      MEMORY[0x20F304900](v17);
      (*(v8 + 56))(v7, 0, 1, v23);
      type metadata accessor for IntervalBlocksSection(0);
      outlined init with copy of UUID?(v7, v4);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy10Foundation4UUIDVSgGMd, &_s7SwiftUI7BindingVy10Foundation4UUIDVSgGMR);
      Binding.wrappedValue.setter();

      return outlined destroy of UUID?(v7);
    }

    type metadata accessor for ConfigurationNavigationModel(0);
    v19 = &lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel;
    v20 = type metadata accessor for ConfigurationNavigationModel;
    v21 = &protocol conformance descriptor for ConfigurationNavigationModel;
  }

  else
  {
    type metadata accessor for IntervalWorkoutConfiguration();
    v19 = &lazy protocol witness table cache variable for type IntervalWorkoutConfiguration and conformance WorkoutConfiguration;
    v20 = MEMORY[0x277D7D9A0];
    v21 = MEMORY[0x277D7DA48];
  }

  _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_17(v19, v20, v21);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<IntervalSingleStepConfigurationView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<IntervalSingleStepConfigurationView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<IntervalSingleStepConfigurationView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB035IntervalSingleStepConfigurationViewVAA30_EnvironmentKeyWritingModifierVyAD0I15NavigationModelCSgGGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB035IntervalSingleStepConfigurationViewVAA30_EnvironmentKeyWritingModifierVyAD0I15NavigationModelCSgGGMR);
    _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_17(&lazy protocol witness table cache variable for type IntervalSingleStepConfigurationView and conformance IntervalSingleStepConfigurationView, type metadata accessor for IntervalSingleStepConfigurationView, &protocol conformance descriptor for IntervalSingleStepConfigurationView);
    _s7SwiftUI30_EnvironmentKeyWritingModifierVy07WorkoutB028ConfigurationNavigationModelCSgGACyxGAA04ViewF0AAWlTm_1(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy07WorkoutB028ConfigurationNavigationModelCSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy07WorkoutB028ConfigurationNavigationModelCSgGMR, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<IntervalSingleStepConfigurationView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined init with copy of IntervalBlocksSection(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntervalBlocksSection(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #2 in IntervalBlocksSection.body.getter@<X0>(uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for IntervalBlocksSection(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return closure #2 in IntervalBlocksSection.body.getter(v5, a2);
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<IntervalSingleStepConfigurationView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    _s7SwiftUI30_EnvironmentKeyWritingModifierVy07WorkoutB028ConfigurationNavigationModelCSgGACyxGAA04ViewF0AAWlTm_1(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy11WorkoutCore08IntervalG13ConfigurationCSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy11WorkoutCore08IntervalG13ConfigurationCSgGMR, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<IntervalBlockConfigurationView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<IntervalBlockConfigurationView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<IntervalBlockConfigurationView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB030IntervalBlockConfigurationViewVAA30_EnvironmentKeyWritingModifierVyAD0H15NavigationModelCSgGGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB030IntervalBlockConfigurationViewVAA30_EnvironmentKeyWritingModifierVyAD0H15NavigationModelCSgGGMR);
    _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_17(&lazy protocol witness table cache variable for type IntervalBlockConfigurationView and conformance IntervalBlockConfigurationView, type metadata accessor for IntervalBlockConfigurationView, &protocol conformance descriptor for IntervalBlockConfigurationView);
    _s7SwiftUI30_EnvironmentKeyWritingModifierVy07WorkoutB028ConfigurationNavigationModelCSgGACyxGAA04ViewF0AAWlTm_1(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy07WorkoutB028ConfigurationNavigationModelCSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy07WorkoutB028ConfigurationNavigationModelCSgGMR, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<IntervalBlockConfigurationView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined init with copy of Section<EmptyView, TupleView<(IntervalStyledButton?, IntervalStyledButton?, (<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0)?)>, EmptyView>?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

double outlined copy of IntervalStyledButton?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

double outlined consume of IntervalStyledButton?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {
  }

  return result;
}

uint64_t outlined destroy of Section<EmptyView, TupleView<(IntervalStyledButton?, IntervalStyledButton?, (<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0)?)>, EmptyView>?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t partial apply for closure #4 in closure #3 in IntervalBlocksSection.body.getter()
{
  v1 = *(type metadata accessor for IntervalBlocksSection(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return closure #4 in closure #3 in IntervalBlocksSection.body.getter(v2);
}

unint64_t lazy protocol witness table accessor for type IntervalStyledButton and conformance IntervalStyledButton()
{
  result = lazy protocol witness table cache variable for type IntervalStyledButton and conformance IntervalStyledButton;
  if (!lazy protocol witness table cache variable for type IntervalStyledButton and conformance IntervalStyledButton)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IntervalStyledButton and conformance IntervalStyledButton);
  }

  return result;
}

uint64_t _sSo21FIUIFormattingManagerCMaTm_15(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type IntervalBlocksReorderingView and conformance IntervalBlocksReorderingView()
{
  result = lazy protocol witness table cache variable for type IntervalBlocksReorderingView and conformance IntervalBlocksReorderingView;
  if (!lazy protocol witness table cache variable for type IntervalBlocksReorderingView and conformance IntervalBlocksReorderingView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IntervalBlocksReorderingView and conformance IntervalBlocksReorderingView);
  }

  return result;
}

uint64_t objectdestroyTm_92()
{
  v1 = (type metadata accessor for IntervalBlocksSection(0) - 8);
  v2 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));

  v3 = v2 + v1[13];

  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy10Foundation4UUIDVSgGMd, &_s7SwiftUI7BindingVy10Foundation4UUIDVSgGMR) + 32);
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(&v3[v4], 1, v5))
  {
    (*(v6 + 8))(&v3[v4], v5);
  }

  return swift_deallocObject();
}

uint64_t _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_17(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined init with take of IntervalBlocksSection(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of ModifiedContent<IntervalSingleStepConfigurationView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t _s7SwiftUI30_EnvironmentKeyWritingModifierVy07WorkoutB028ConfigurationNavigationModelCSgGACyxGAA04ViewF0AAWlTm_1(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t LazyNavigationDestinationViewBuilder.build()@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for LazyNavigationDestinationViewBuilder(0);
  (*(v1 + *(v3 + 20)))(v9);
  v4 = v10;
  v5 = v11;
  __swift_project_boxed_opaque_existential_1(v9, v10);
  v13 = v4;
  v14 = v5;
  __swift_allocate_boxed_opaque_existential_1(v12);
  static ViewBuilder.buildExpression<A>(_:)();
  __swift_destroy_boxed_opaque_existential_1(v9);
  v6 = v13;
  v7 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  a1[3] = v6;
  a1[4] = v7;
  __swift_allocate_boxed_opaque_existential_1(a1);
  static ViewBuilder.buildBlock<A>(_:)();
  return __swift_destroy_boxed_opaque_existential_1(v12);
}

uint64_t type metadata accessor for LazyNavigationDestinationViewBuilder(uint64_t a1)
{
  result = type metadata singleton initialization cache for LazyNavigationDestinationViewBuilder;
  if (!type metadata singleton initialization cache for LazyNavigationDestinationViewBuilder)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t LazyNavigationDestinationViewBuilder.hash(into:)(uint64_t a1)
{
  type metadata accessor for UUID();
  _s10Foundation4UUIDVACSHAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);

  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int LazyNavigationDestinationViewBuilder.hashValue.getter()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  _s10Foundation4UUIDVACSHAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance LazyNavigationDestinationViewBuilder()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  _s10Foundation4UUIDVACSHAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance LazyNavigationDestinationViewBuilder(uint64_t a1)
{
  type metadata accessor for UUID();
  _s10Foundation4UUIDVACSHAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);

  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance LazyNavigationDestinationViewBuilder(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  _s10Foundation4UUIDVACSHAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t _s10Foundation4UUIDVACSHAAWlTm_2(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t type metadata completion function for LazyNavigationDestinationViewBuilder(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ()();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

WorkoutUI::WorkoutCountdownStep_optional __swiftcall WorkoutCountdownStep.init(rawValue:)(Swift::UInt rawValue)
{
  v2 = 0x2010003u >> (8 * rawValue);
  if (rawValue >= 4)
  {
    LOBYTE(v2) = 3;
  }

  *v1 = v2;
  return rawValue;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance WorkoutCountdownStep()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v1 + 1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance WorkoutCountdownStep(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v2 + 1);
  return Hasher._finalize()();
}

uint64_t WorkoutCountdownStep.description.getter()
{
  v1 = 0x6565726854;
  if (*v0 == 1)
  {
    v1 = 7305044;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 6647375;
  }
}

unint64_t lazy protocol witness table accessor for type WorkoutCountdownStep and conformance WorkoutCountdownStep()
{
  result = lazy protocol witness table cache variable for type WorkoutCountdownStep and conformance WorkoutCountdownStep;
  if (!lazy protocol witness table cache variable for type WorkoutCountdownStep and conformance WorkoutCountdownStep)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutCountdownStep and conformance WorkoutCountdownStep);
  }

  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkoutCountdownStep()
{
  v1 = 0x6565726854;
  if (*v0 == 1)
  {
    v1 = 7305044;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 6647375;
  }
}

uint64_t getEnumTagSinglePayload for WorkoutCountdownStep(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WorkoutCountdownStep(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t EnergyPickerWatch.init(viewModel:)@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for EnergyPickerViewModel(0);
  lazy protocol witness table accessor for type EnergyPickerViewModel and conformance EnergyPickerViewModel();
  result = ObservedObject.init(wrappedValue:)();
  *a2 = result;
  a2[1] = v4;
  return result;
}

double EnergyPickerWatch.body.getter@<D0>(double (**a1)@<D0>(uint64_t a2@<X8>)@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a1 = partial apply for closure #1 in EnergyPickerWatch.body.getter;
  a1[1] = v5;

  return result;
}

double closure #1 in EnergyPickerWatch.body.getter@<D0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = static HorizontalAlignment.center.getter();
  *(a4 + 8) = 0;
  *(a4 + 16) = 1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAKyAA6PickerVyAA05EmptyD0VSiAA7ForEachVySaySiGSiAA0D0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GGAA06_FrameG0VGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleW0VyAA09TintShapeZ0VGG_AA6SpacerVtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAKyAA6PickerVyAA05EmptyD0VSiAA7ForEachVySaySiGSiAA0D0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GGAA06_FrameG0VGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleW0VyAA09TintShapeZ0VGG_AA6SpacerVtGGMR);
  closure #1 in closure #1 in EnergyPickerWatch.body.getter(a2, a3, a4 + *(v7 + 44));
  GeometryProxy.size.getter();
  GeometryProxy.size.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v8 = (a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyACyACyAA6PickerVyAA05EmptyG0VSiAA7ForEachVySaySiGSiAA0G0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GGAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleU0VyAA09TintShapeX0VGG_AA6SpacerVtGGAYGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyACyACyAA6PickerVyAA05EmptyG0VSiAA7ForEachVySaySiGSiAA0G0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GGAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleU0VyAA09TintShapeX0VGG_AA6SpacerVtGGAYGMR) + 36));
  *v8 = v10;
  v8[1] = v11;
  result = *&v12;
  v8[2] = v12;
  return result;
}

uint64_t closure #1 in closure #1 in EnergyPickerWatch.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v30 - v6;
  v32 = type metadata accessor for Font.TextStyle();
  v8 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6PickerVyAA9EmptyViewVSiAA7ForEachVySaySiGSiAA0G0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GGAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleS0VyAA09TintShapeV0VGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6PickerVyAA9EmptyViewVSiAA7ForEachVySaySiGSiAA0G0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GGAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleS0VyAA09TintShapeV0VGGMR);
  MEMORY[0x28223BE20](v31);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v30 - v14;
  v16 = type metadata accessor for EnergyPickerViewModel(0);
  v17 = lazy protocol witness table accessor for type EnergyPickerViewModel and conformance EnergyPickerViewModel();
  MEMORY[0x20F308920](a1, a2, v16, v17);
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  v34 = a1;
  v35 = a2;
  v36 = v38;
  v37 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySaySiGSiAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GMd, _s7SwiftUI7ForEachVySaySiGSiAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GMR);
  lazy protocol witness table accessor for type ForEach<[Int], Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0> and conformance <> ForEach<A, B, C>();
  Picker.init(selection:label:content:)();
  if (one-time initialization token for singlePickerHeight != -1)
  {
    swift_once();
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v18 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6PickerVyAA9EmptyViewVSiAA7ForEachVySaySiGSiAA0G0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GGAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6PickerVyAA9EmptyViewVSiAA7ForEachVySaySiGSiAA0G0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GGAA12_FrameLayoutVGMR) + 36)];
  v19 = v39;
  *v18 = v38;
  *(v18 + 1) = v19;
  *(v18 + 2) = v40;
  v20 = v32;
  (*(v8 + 104))(v10, *MEMORY[0x277CE0A80], v32);
  v21 = *MEMORY[0x277CE09A0];
  v22 = type metadata accessor for Font.Design();
  v23 = *(v22 - 8);
  (*(v23 + 104))(v7, v21, v22);
  (*(v23 + 56))(v7, 0, 1, v22);
  v24 = static Font.system(_:design:weight:)();
  outlined destroy of Font.Design?(v7);
  (*(v8 + 8))(v10, v20);
  KeyPath = swift_getKeyPath();
  v26 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6PickerVyAA9EmptyViewVSiAA7ForEachVySaySiGSiAA0G0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GGAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6PickerVyAA9EmptyViewVSiAA7ForEachVySaySiGSiAA0G0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GGAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMR) + 36)];
  *v26 = KeyPath;
  v26[1] = v24;
  TintShapeStyle.init()();
  sub_20C69902C(v15, v12);
  v27 = v33;
  sub_20C69902C(v12, v33);
  v28 = v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6PickerVyAA9EmptyViewVSiAA7ForEachVySaySiGSiAA0G0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GGAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleS0VyAA09TintShapeV0VGG_AA6SpacerVtMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6PickerVyAA9EmptyViewVSiAA7ForEachVySaySiGSiAA0G0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GGAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleS0VyAA09TintShapeV0VGG_AA6SpacerVtMR) + 48);
  sub_20C69909C(v15);
  *v28 = 0;
  *(v28 + 8) = 1;
  return sub_20C69909C(v12);
}

uint64_t closure #1 in closure #1 in closure #1 in EnergyPickerWatch.body.getter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd, &_sSaySiGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_Md, &_s7SwiftUI4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_MR);
  lazy protocol witness table accessor for type GeometryReader<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Picker<EmptyView, Int, ForEach<[Int], Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, _FrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<TintShapeStyle>>, Spacer)>>, _FrameLayout>> and conformance GeometryReader<A>(&lazy protocol witness table cache variable for type [Int] and conformance [A], &_sSaySiGMd, &_sSaySiGMR, MEMORY[0x277D83980]);
  swift_getOpaqueTypeConformance2();
  return ForEach<>.init(_:id:content:)();
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in EnergyPickerWatch.body.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (one-time initialization token for pickerFormatter != -1)
  {
    swift_once();
  }

  v4 = static PickerFormatters.pickerFormatter;
  v5 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v6 = [v4 stringFromNumber_];

  if (v6)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  lazy protocol witness table accessor for type String and conformance String();
  result = Text.init<A>(_:)();
  *a2 = result;
  *(a2 + 8) = v8;
  *(a2 + 16) = v9 & 1;
  *(a2 + 24) = v10;
  *(a2 + 32) = v3;
  *(a2 + 40) = 1;
  return result;
}

double protocol witness for View.body.getter in conformance EnergyPickerWatch@<D0>(double (**a1)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a1 = closure #1 in EnergyPickerWatch.body.getterpartial apply;
  a1[1] = v5;

  return result;
}

uint64_t getEnumTagSinglePayload for EnergyPickerWatch(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for EnergyPickerWatch(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type GeometryReader<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Picker<EmptyView, Int, ForEach<[Int], Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, _FrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<TintShapeStyle>>, Spacer)>>, _FrameLayout>> and conformance GeometryReader<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t getEnumTagSinglePayload for WorkoutConfigurationViewerState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WorkoutConfigurationViewerState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkoutConfigurationViewerState and conformance WorkoutConfigurationViewerState()
{
  result = lazy protocol witness table cache variable for type WorkoutConfigurationViewerState and conformance WorkoutConfigurationViewerState;
  if (!lazy protocol witness table cache variable for type WorkoutConfigurationViewerState and conformance WorkoutConfigurationViewerState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutConfigurationViewerState and conformance WorkoutConfigurationViewerState);
  }

  return result;
}

uint64_t WorkoutConfigurationViewerState.currentState(workoutConfiguration:formattingManager:)(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore28FitnessUILocalizationFeatureOSgMd, &_s11WorkoutCore28FitnessUILocalizationFeatureOSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v31 - v6;
  if (a3 <= 2u)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        if (one-time initialization token for WorkoutUIBundle != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        v9 = WorkoutUIBundle.super.isa;
        v30 = 0xE000000000000000;
        v10 = 0x617A696C61636F4CLL;
        v11 = 0xEB00000000656C62;
        v12 = 0xD00000000000001BLL;
        v13 = 0x800000020CBA4270;
      }

      else
      {
        if (one-time initialization token for WorkoutUIBundle != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        v9 = WorkoutUIBundle.super.isa;
        v30 = 0xE000000000000000;
        v10 = 0x617A696C61636F4CLL;
        v11 = 0xEB00000000656C62;
        v12 = 0xD00000000000001CLL;
        v13 = 0x800000020CBA4250;
      }

      goto LABEL_21;
    }

LABEL_10:
    v14 = WorkoutConfiguration.titleForPreview(_:)(a2);
    if (v15)
    {
      v16 = v14;
      v17 = v15;
    }

    else
    {
      v22 = type metadata accessor for FitnessUILocalizationFeature();
      (*(*(v22 - 8) + 56))(v7, 1, 1, v22);
      v16 = String.fitnessUILocalizedString(feature:)();
      v17 = v23;
      outlined destroy of FitnessUILocalizationFeature?(v7);
    }

    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v24 = WorkoutUIBundle.super.isa;
    v32._object = 0xE000000000000000;
    v25.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v25.value._object = 0xEB00000000656C62;
    v26._countAndFlagsBits = 0xD000000000000018;
    v26._object = 0x800000020CBA42B0;
    v27._countAndFlagsBits = 0;
    v27._object = 0xE000000000000000;
    v32._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v26, v25, v24, v27, v32);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_20CB5DA70;
    *(v28 + 56) = MEMORY[0x277D837D0];
    *(v28 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v28 + 32) = v16;
    *(v28 + 40) = v17;
    countAndFlagsBits = String.init(format:_:)();

    return countAndFlagsBits;
  }

  if (a3 <= 4u)
  {
    if (a3 == 3)
    {
      v8 = "WORKOUT_SAVING_FAILED";
LABEL_18:
      v19 = v8 - 32;
      if (one-time initialization token for WorkoutUIBundle != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v9 = WorkoutUIBundle.super.isa;
      v30 = 0xE000000000000000;
      v10 = 0x617A696C61636F4CLL;
      v11 = 0xEB00000000656C62;
      v13 = v19 | 0x8000000000000000;
      v12 = 0xD000000000000015;
LABEL_21:
      v20._countAndFlagsBits = 0;
      v20._object = 0xE000000000000000;
      v21 = 0;
      countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v12, *&v10, v9, v20, *(&v30 - 1))._countAndFlagsBits;

      return countAndFlagsBits;
    }

    goto LABEL_10;
  }

  if (a3 != 5)
  {
    v8 = "WORKOUT_LAUNCH_FAILED";
    goto LABEL_18;
  }

  return 0;
}

uint64_t WorkoutConfigurationViewerState.footerText.getter(char a1)
{
  if (a1 == 4)
  {
    v11 = [objc_opt_self() currentDevice];
    v12 = [v11 userInterfaceIdiom];

    if (v12)
    {
      if (one-time initialization token for WorkoutUIBundle != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v13 = WorkoutUIBundle.super.isa;
      v20 = 0xE000000000000000;
      v14 = 0xD000000000000021;
      v15 = 0x800000020CBA41A0;
    }

    else
    {
      if (one-time initialization token for WorkoutUIBundle != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v13 = WorkoutUIBundle.super.isa;
      v20 = 0xE000000000000000;
      v15 = 0x800000020CBA41D0;
      v14 = 0xD000000000000017;
    }

    v17.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v17.value._object = 0xEB00000000656C62;
    v18._countAndFlagsBits = 0;
    v18._object = 0xE000000000000000;
    v19 = 0;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v14, v17, v13, v18, *(&v20 - 1))._countAndFlagsBits;
  }

  else
  {
    if (a1 != 1)
    {
      return 0;
    }

    v1 = specialized static PairedDeviceUtilities.activePairedDeviceName.getter();
    if (!v2)
    {
      return 0;
    }

    v3 = v1;
    v4 = v2;
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v5 = WorkoutUIBundle.super.isa;
    v21._object = 0xE000000000000000;
    v6.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v6.value._object = 0xEB00000000656C62;
    v7._countAndFlagsBits = 0xD00000000000001BLL;
    v7._object = 0x800000020CBA41F0;
    v8._countAndFlagsBits = 0;
    v8._object = 0xE000000000000000;
    v21._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v7, v6, v5, v8, v21);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_20CB5DA70;
    *(v9 + 56) = MEMORY[0x277D837D0];
    *(v9 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v9 + 32) = v3;
    *(v9 + 40) = v4;
    countAndFlagsBits = String.init(format:_:)();
  }

  return countAndFlagsBits;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance WorkoutConfigurationViewerState()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance WorkoutConfigurationViewerState(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v2);
  return Hasher._finalize()();
}

uint64_t WorkoutConfiguration.configurationPreviewDisplayName.getter()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
  v1 = [objc_allocWithZone(MEMORY[0x277D0A808]) initWithHealthStore_];
  v2 = [objc_allocWithZone(MEMORY[0x277D0A7E8]) initWithUnitManager_];
  if (v2)
  {
    v3 = v2;
    v4 = WorkoutConfiguration.displayDetail(_:)();
    if (!v5)
    {
      v4 = WorkoutConfiguration.displayName(formattingManager:)();
    }

    v6 = v4;

    return v6;
  }

  else
  {

    return 0;
  }
}

id WorkoutConfigurationImageGenerator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WorkoutConfigurationImageGenerator.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutConfigurationImageGenerator();
  return objc_msgSendSuper2(&v2, sel_init);
}

id WorkoutConfigurationImageGenerator.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for WorkoutConfigurationImageGenerator();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id specialized static WorkoutConfigurationImageGenerator.createBlastDoorDataSource(from:)(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for ConfigurationType();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for BlastDoorConfigurationValidator();
  swift_allocObject();
  MEMORY[0x20F306960]();
  type metadata accessor for WorkoutConfiguration();
  type metadata accessor for Occurrence();
  v6 = MEMORY[0x20F304B60](0);
  v7 = static WorkoutConfiguration.importFromData(_:with:validator:)();

  v8 = dispatch thunk of WorkoutConfiguration.activityType.getter();
  v9 = [v8 effectiveTypeIdentifier];

  v10 = dispatch thunk of WorkoutConfiguration.activityType.getter();
  v11 = [v10 isIndoor];

  dispatch thunk of WorkoutConfiguration.type.getter();
  v12 = ConfigurationType.rawValue.getter();
  (*(v3 + 8))(v5, v2);
  type metadata accessor for GoalWorkoutConfiguration();
  if (swift_dynamicCastClass())
  {
    v13 = v7;
    v14 = GoalWorkoutConfiguration.goal.getter();
    v15 = [v14 goalTypeIdentifier];
  }

  else
  {
    v15 = 0;
  }

  v16 = WorkoutConfiguration.configurationPreviewDisplayName.getter();
  if (v17)
  {
    v18 = v16;
  }

  else
  {
    v18 = 0;
  }

  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = 0xE000000000000000;
  }

  v20 = objc_allocWithZone(WKUIBlastDoorDataSource);
  v21 = MEMORY[0x20F30BAD0](v18, v19);

  v22 = [v20 initWithActivityType:v9 isIndoor:v11 configurationType:v12 configurationName:v21 goalTypeIdentifier:v15];

  return v22;
}

uint64_t specialized static WorkoutConfigurationImageGenerator.createImage(from:)(uint64_t a1, uint64_t a2, double a3)
{
  type metadata accessor for BlastDoorConfigurationValidator();
  swift_allocObject();
  MEMORY[0x20F306960]();
  type metadata accessor for WorkoutConfiguration();
  type metadata accessor for Occurrence();
  v3 = MEMORY[0x20F304B60](0);
  v4 = static WorkoutConfiguration.importFromData(_:with:validator:)();

  v13[0] = dispatch thunk of WorkoutConfiguration.activityType.getter();
  v13[1] = v4;
  v13[2] = WorkoutConfiguration.configurationPreviewDisplayName.getter();
  v13[3] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13ImageRendererCy07WorkoutB00E26ConfigurationThumbnailViewVGMd, &_s7SwiftUI13ImageRendererCy07WorkoutB00E26ConfigurationThumbnailViewVGMR);
  swift_allocObject();

  v6 = v13[0];
  v7 = v4;
  MEMORY[0x20F3086C0](v13);
  v8 = MEMORY[0x20F3086A0]();
  if (v8 && (v9 = v8, v10 = UIImagePNGRepresentation(v8), v9, v10))
  {
    v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

    return v11;
  }

  else
  {

    return 0;
  }
}

uint64_t specialized static WorkoutConfigurationImageGenerator.createImage(activityType:isIndoor:configurationType:configurationName:goalTypeIdentifier:scale:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  v57 = a4;
  v58 = a5;
  v11 = type metadata accessor for Logger();
  v59 = *(v11 - 8);
  v60 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v55 = &v55 - v15;
  v16 = type metadata accessor for UUID();
  MEMORY[0x28223BE20](v16 - 8);
  v56 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore17ConfigurationTypeOSgMd, &_s11WorkoutCore17ConfigurationTypeOSgMR);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v55 - v19;
  v21 = type metadata accessor for ConfigurationType();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v55 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v55 - v26;
  v28 = [objc_allocWithZone(MEMORY[0x277D0A810]) initWithActivityTypeIdentifier:a1 isIndoor:a2 & 1];
  v29 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:a6 value:0];
  ConfigurationType.init(rawValue:)();
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    outlined destroy of ConfigurationType?(v20);
    static WOLog.core.getter();
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 134217984;
      *(v32 + 4) = a3;
      _os_log_impl(&dword_20C66F000, v30, v31, "Unable to generate workout configuration from %ld, returning nil", v32, 0xCu);
      MEMORY[0x20F30E080](v32, -1, -1);
      v33 = v28;
    }

    else
    {
      v33 = v30;
      v30 = v28;
    }

    (*(v59 + 8))(v13, v60);
    return 0;
  }

  (*(v22 + 32))(v27, v20, v21);
  (*(v22 + 16))(v24, v27, v21);
  v34 = (*(v22 + 88))(v24, v21);
  if (v34 == *MEMORY[0x277D7E0F8])
  {
    type metadata accessor for GoalWorkoutConfiguration();
    v35 = v28;
    v36 = v29;
    UUID.init()();
    type metadata accessor for Occurrence();
    MEMORY[0x20F304B60](0);
    v37 = GoalWorkoutConfiguration.__allocating_init(_:goal:uuid:occurrence:)();
  }

  else if (v34 == *MEMORY[0x277D7E110])
  {

    UUID.init()();
    v39 = objc_allocWithZone(type metadata accessor for IntervalWorkout());
    IntervalWorkout.init(_:uuid:warmupStep:cooldownStep:)();
    type metadata accessor for IntervalWorkoutConfiguration();
    v40 = v28;
    UUID.init()();
    type metadata accessor for Occurrence();
    MEMORY[0x20F304B60](0);
    v37 = IntervalWorkoutConfiguration.__allocating_init(_:intervalWorkout:uuid:occurrence:)();
  }

  else
  {
    if (v34 == *MEMORY[0x277D7E100])
    {
      v47 = v55;
      static WOLog.core.getter();
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 0;
        _os_log_impl(&dword_20C66F000, v48, v49, "Error: RaceWorkoutConfiguration is not shareable", v50, 2u);
        MEMORY[0x20F30E080](v50, -1, -1);
      }

      (*(v59 + 8))(v47, v60);
      (*(v22 + 8))(v27, v21);
      return 0;
    }

    if (v34 == *MEMORY[0x277D7E108])
    {
      v60 = type metadata accessor for PacerWorkoutConfiguration();
      type metadata accessor for NLSessionActivityGoal();
      v51 = v28;
      static NLSessionActivityGoal.makeDistanceGoal(miles:)();
      static NLSessionActivityGoal.makeTimeGoal(minutes:)();
      UUID.init()();
      type metadata accessor for Occurrence();
      MEMORY[0x20F304B60](0);
      v37 = PacerWorkoutConfiguration.__allocating_init(_:distanceGoal:timeGoal:uuid:paceAlertEnabled:occurrence:)();
    }

    else
    {
      if (v34 != *MEMORY[0x277D7E0F0])
      {
        v54 = *(v22 + 8);
        v54(v27, v21);

        v54(v24, v21);
        return 0;
      }

      type metadata accessor for MultiSportWorkoutConfiguration();
      v52 = v56;
      UUID.init()();
      type metadata accessor for Occurrence();
      v53 = MEMORY[0x20F304B60](0);
      v37 = MEMORY[0x20F303440](MEMORY[0x277D84F90], v52, v53);
    }
  }

  v41 = v37;
  v61[0] = v28;
  v61[1] = v37;
  v61[2] = v57;
  v61[3] = v58;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13ImageRendererCy07WorkoutB00E26ConfigurationThumbnailViewVGMd, &_s7SwiftUI13ImageRendererCy07WorkoutB00E26ConfigurationThumbnailViewVGMR);
  swift_allocObject();
  swift_bridgeObjectRetain_n();
  v42 = v41;
  v43 = v28;
  v44 = v42;
  MEMORY[0x20F3086C0](v61);
  v45 = ImageRenderer.scale.setter();
  v46 = MEMORY[0x20F3086A0](v45);

  (*(v22 + 8))(v27, v21);
  return v46;
}

uint64_t specialized static WorkoutConfigurationImageGenerator.createImage(from:scale:)(void *a1, double a2)
{
  v4 = [a1 activityType];
  v5 = [a1 isIndoor];
  v6 = [a1 configurationType];
  v7 = [a1 configurationName];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11 = specialized static WorkoutConfigurationImageGenerator.createImage(activityType:isIndoor:configurationType:configurationName:goalTypeIdentifier:scale:)(v4, v5, v6, v8, v10, [a1 goalTypeIdentifier], a2);

  if (!v11)
  {
    return 0;
  }

  v12 = UIImagePNGRepresentation(v11);

  if (!v12)
  {
    return 0;
  }

  v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v13;
}

uint64_t outlined destroy of ConfigurationType?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore17ConfigurationTypeOSgMd, &_s11WorkoutCore17ConfigurationTypeOSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata completion function for MetricHeadingView(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Environment<WorkoutViewStyle>();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t getEnumTagSinglePayload for MetricHeadingView(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
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

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 9;
  v9 = (a2 - v7 + 255) >> 8;
  if (v8 <= 3)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *&a1[v8];
      if (*&a1[v8])
      {
        goto LABEL_24;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (v13)
      {
        goto LABEL_24;
      }
    }

LABEL_28:
    if (v5 >= 0xFE)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((((&a1[v6 + 7] & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v17 > 1)
    {
      return (v17 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  if (!v12)
  {
    goto LABEL_28;
  }

  v13 = a1[v8];
  if (!a1[v8])
  {
    goto LABEL_28;
  }

LABEL_24:
  v15 = (v13 - 1) << (8 * v8);
  if (v8 <= 3)
  {
    v16 = *a1;
  }

  else
  {
    v15 = 0;
    v16 = *a1;
  }

  return v7 + (v16 | v15) + 1;
}

void storeEnumTagSinglePayload for MetricHeadingView(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
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
      if (v7 < 0xFE)
      {
        v18 = ((&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8;
        if (a2 > 0xFE)
        {
          *(v18 + 8) = 0;
          *v18 = a2 - 255;
        }

        else
        {
          *(v18 + 8) = -a2;
        }
      }

      else
      {
        v17 = *(v6 + 56);

        v17();
      }

      return;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 9);
  if (v10 <= 3)
  {
    v16 = (v15 >> 8) + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v16;
      }

      else
      {
        *&a1[v10] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v10] = v16;
  }
}

void MetricHeadingView.workoutViewStyle.getter(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = type metadata accessor for EnvironmentValues();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v2 + *(a1 + 40);
  v10 = *v9;
  if (*(v9 + 8) == 1)
  {
    *a2 = v10;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v11 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<WorkoutViewStyle>.Content(v10, 0);
    (*(v6 + 8))(v8, v5);
  }
}

uint64_t MetricHeadingView.body.getter(uint64_t a1)
{
  v3 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMR);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6SpacerVSgMd, &_s7SwiftUI6SpacerVSgMR);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v4 = type metadata accessor for HStack();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v10 = &v14[-v9];
  v11 = *(a1 + 24);
  v15 = v3;
  v16 = v11;
  v17 = v1;
  static VerticalAlignment.center.getter();
  HStack.init(alignment:spacing:content:)();
  swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)();
  v12 = *(v5 + 8);
  v12(v7, v4);
  static ViewBuilder.buildBlock<A>(_:)();
  return (v12)(v10, v4);
}

uint64_t closure #1 in MetricHeadingView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v46 = a3;
  v54 = a4;
  v6 = type metadata accessor for Font.PrivateDesign();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMR);
  v41[0] = a2;
  v10 = type metadata accessor for ModifiedContent();
  v49 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = v41 - v11;
  v45 = type metadata accessor for ModifiedContent();
  v50 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v42 = v41 - v13;
  v48 = type metadata accessor for ModifiedContent();
  v51 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v43 = v41 - v14;
  v15 = type metadata accessor for ModifiedContent();
  v52 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v53 = v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v44 = v41 - v18;
  MEMORY[0x28223BE20](v19);
  v47 = v41 - v20;
  static Font.Weight.medium.getter();
  static Font.PrivateDesign.compact.getter();
  static Font.system(size:weight:design:)();
  (*(v7 + 8))(v9, v6);
  v21 = v46;
  v41[1] = a1;
  View.font(_:)();

  static Edge.Set.top.getter();
  FIUICurrentLanguageRequiresTallScript();
  v22 = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>();
  v61[8] = v21;
  v61[9] = v22;
  WitnessTable = swift_getWitnessTable();
  v24 = v42;
  View.padding(_:_:)();
  (*(v49 + 8))(v12, v10);
  static Edge.Set.bottom.getter();
  v26 = type metadata accessor for MetricHeadingView(0, v41[0], v21, v25);
  v27 = MEMORY[0x277CDF918];
  v61[6] = WitnessTable;
  v61[7] = MEMORY[0x277CDF918];
  v28 = v45;
  v29 = swift_getWitnessTable();
  v30 = v43;
  View.padding(_:_:)();
  (*(v50 + 8))(v24, v28);
  static Edge.Set.leading.getter();
  v61[4] = v29;
  v61[5] = v27;
  v31 = v48;
  v32 = swift_getWitnessTable();
  v33 = v44;
  View.padding(_:_:)();
  (*(v51 + 8))(v30, v31);
  v61[2] = v32;
  v61[3] = v27;
  v34 = swift_getWitnessTable();
  v35 = v47;
  static ViewBuilder.buildExpression<A>(_:)();
  v36 = v52;
  v37 = *(v52 + 8);
  v37(v33, v15);
  MetricHeadingView.workoutViewStyle.getter(v26, v61);
  LOBYTE(v31) = LOBYTE(v61[0]) == 11;
  LOBYTE(v24) = LOBYTE(v61[0]) != 11;
  v38 = *(v36 + 16);
  v39 = v53;
  v38(v53, v35, v15);
  v58 = 0;
  v59 = v24;
  v60 = v31;
  v61[0] = v39;
  v61[1] = &v58;
  v57[0] = v15;
  v57[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6SpacerVSgMd, &_s7SwiftUI6SpacerVSgMR);
  v55 = v34;
  v56 = lazy protocol witness table accessor for type Spacer? and conformance <A> A?();
  static ViewBuilder.buildBlock<each A>(_:)(v61, 2uLL, v57);
  v37(v35, v15);
  return (v37)(v39, v15);
}

unint64_t lazy protocol witness table accessor for type Spacer? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type Spacer? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type Spacer? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6SpacerVSgMd, &_s7SwiftUI6SpacerVSgMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Spacer? and conformance <A> A?);
  }

  return result;
}

uint64_t TransitionThinkingView.startDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TransitionThinkingView(0) + 20);
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for TransitionThinkingView(uint64_t a1)
{
  result = type metadata singleton initialization cache for TransitionThinkingView;
  if (!type metadata singleton initialization cache for TransitionThinkingView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TransitionThinkingView.startDate.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TransitionThinkingView(0) + 20);
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t TransitionThinkingView.animating.setter(char a1)
{
  result = type metadata accessor for TransitionThinkingView(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t TransitionThinkingView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA12TimelineViewVyAA08PeriodicF8ScheduleVAA08ModifiedD0Vy07WorkoutB0013TransitionDotG0VAA15_RotationEffectVGGAN_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyAA12TimelineViewVyAA08PeriodicF8ScheduleVAA08ModifiedD0Vy07WorkoutB0013TransitionDotG0VAA15_RotationEffectVGGAN_GMR);
  MEMORY[0x28223BE20](v37);
  v3 = &v31 - v2;
  v4 = type metadata accessor for TransitionThinkingView(0);
  v32 = *(v4 - 1);
  v5 = *(v32 + 64);
  MEMORY[0x28223BE20](v4);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PeriodicTimelineSchedule();
  v34 = *(v11 - 8);
  v35 = v11;
  MEMORY[0x28223BE20](v11);
  v33 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v31 - v14;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12TimelineViewVyAA08PeriodicC8ScheduleVAA15ModifiedContentVy07WorkoutB0013TransitionDotD0VAA15_RotationEffectVGGMd, &_s7SwiftUI12TimelineViewVyAA08PeriodicC8ScheduleVAA15ModifiedContentVy07WorkoutB0013TransitionDotD0VAA15_RotationEffectVGGMR);
  MEMORY[0x28223BE20](v36);
  v18 = &v31 - v17;
  if (v1[v4[6]] == 1)
  {
    v19 = v7;
    v20 = v16;
    (*(v8 + 16))(v10, &v1[v4[5]], v19);
    PeriodicTimelineSchedule.init(from:by:)();
    outlined init with copy of TransitionThinkingView(v1, &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    v21 = (*(v32 + 80) + 16) & ~*(v32 + 80);
    v22 = swift_allocObject();
    outlined init with take of TransitionThinkingView(v6, v22 + v21);
    v23 = v34;
    v24 = v35;
    (*(v34 + 16))(v33, v15, v35);
    v25 = swift_allocObject();
    *(v25 + 16) = partial apply for closure #1 in TransitionThinkingView.body.getter;
    *(v25 + 24) = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB017TransitionDotViewVAA15_RotationEffectVGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB017TransitionDotViewVAA15_RotationEffectVGMR);
    lazy protocol witness table accessor for type PeriodicTimelineSchedule and conformance PeriodicTimelineSchedule(v26);
    lazy protocol witness table accessor for type ModifiedContent<TransitionDotView, _RotationEffect> and conformance <> ModifiedContent<A, B>();
    TimelineView<>.init(_:content:)();
    (*(v23 + 8))(v15, v24);
    v27 = v36;
    (*(v20 + 16))(v3, v18, v36);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type TimelineView<PeriodicTimelineSchedule, ModifiedContent<TransitionDotView, _RotationEffect>> and conformance <> TimelineView<A, B>();
    lazy protocol witness table accessor for type TransitionDotView and conformance TransitionDotView();
    _ConditionalContent<>.init(storage:)();
    return (*(v20 + 8))(v18, v27);
  }

  else
  {
    v29 = *&v1[v4[7]];
    v30 = *v1;
    *v3 = swift_getKeyPath();
    v3[8] = 0;
    *(v3 + 2) = v29;
    *(v3 + 3) = v30;
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type TimelineView<PeriodicTimelineSchedule, ModifiedContent<TransitionDotView, _RotationEffect>> and conformance <> TimelineView<A, B>();
    lazy protocol witness table accessor for type TransitionDotView and conformance TransitionDotView();
    return _ConditionalContent<>.init(storage:)();
  }
}

void closure #1 in TransitionThinkingView.body.getter(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + *(type metadata accessor for TransitionThinkingView(0) + 28));
  v9 = *a1;
  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12TimelineViewV7ContextVyAA011EveryMinuteC8ScheduleVs5NeverO_GMd, &_s7SwiftUI12TimelineViewV7ContextVyAA011EveryMinuteC8ScheduleVs5NeverO_GMR);
  TimelineView.Context.date.getter();
  Date.timeIntervalSinceReferenceDate.getter();
  v12 = v11;
  Date.timeIntervalSinceReferenceDate.getter();
  v14 = floor((v12 - v13 - trunc(v12 - v13)) / (1.0 / v8));
  (*(v5 + 8))(v7, v4);
  static UnitPoint.center.getter();
  *a2 = KeyPath;
  *(a2 + 8) = 0;
  *(a2 + 16) = v8;
  *(a2 + 24) = v9;
  *(a2 + 32) = 360.0 / v8 * v14 * 0.0174532925;
  *(a2 + 40) = v15;
  *(a2 + 48) = v16;
}

unint64_t lazy protocol witness table accessor for type TimelineView<PeriodicTimelineSchedule, ModifiedContent<TransitionDotView, _RotationEffect>> and conformance <> TimelineView<A, B>()
{
  result = lazy protocol witness table cache variable for type TimelineView<PeriodicTimelineSchedule, ModifiedContent<TransitionDotView, _RotationEffect>> and conformance <> TimelineView<A, B>;
  if (!lazy protocol witness table cache variable for type TimelineView<PeriodicTimelineSchedule, ModifiedContent<TransitionDotView, _RotationEffect>> and conformance <> TimelineView<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI12TimelineViewVyAA08PeriodicC8ScheduleVAA15ModifiedContentVy07WorkoutB0013TransitionDotD0VAA15_RotationEffectVGGMd, &_s7SwiftUI12TimelineViewVyAA08PeriodicC8ScheduleVAA15ModifiedContentVy07WorkoutB0013TransitionDotD0VAA15_RotationEffectVGGMR);
    lazy protocol witness table accessor for type ModifiedContent<TransitionDotView, _RotationEffect> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TimelineView<PeriodicTimelineSchedule, ModifiedContent<TransitionDotView, _RotationEffect>> and conformance <> TimelineView<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<TransitionDotView, _RotationEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<TransitionDotView, _RotationEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<TransitionDotView, _RotationEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB017TransitionDotViewVAA15_RotationEffectVGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB017TransitionDotViewVAA15_RotationEffectVGMR);
    lazy protocol witness table accessor for type TransitionDotView and conformance TransitionDotView();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<TransitionDotView, _RotationEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TransitionDotView and conformance TransitionDotView()
{
  result = lazy protocol witness table cache variable for type TransitionDotView and conformance TransitionDotView;
  if (!lazy protocol witness table cache variable for type TransitionDotView and conformance TransitionDotView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransitionDotView and conformance TransitionDotView);
  }

  return result;
}

uint64_t outlined init with copy of TransitionThinkingView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TransitionThinkingView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of TransitionThinkingView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TransitionThinkingView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void partial apply for closure #1 in TransitionThinkingView.body.getter(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TransitionThinkingView(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  closure #1 in TransitionThinkingView.body.getter(v4, a1);
}

uint64_t specialized closure #1 in TimelineView<>.init(_:content:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t *__return_ptr, char *)@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12TimelineViewV7ContextVyAA011EveryMinuteC8ScheduleVs5NeverO_GMd, &_s7SwiftUI12TimelineViewV7ContextVyAA011EveryMinuteC8ScheduleVs5NeverO_GMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12TimelineViewV7ContextVyAA08PeriodicC8ScheduleVAA15ModifiedContentVy07WorkoutB0013TransitionDotD0VAA15_RotationEffectVG_GMd, &_s7SwiftUI12TimelineViewV7ContextVyAA08PeriodicC8ScheduleVAA15ModifiedContentVy07WorkoutB0013TransitionDotD0VAA15_RotationEffectVG_GMR);
  v13 = *(v11 - 8);
  result = v11 - 8;
  if (*(v13 + 64) == v8)
  {
    (*(v7 + 16))(v10, a1, v6);
    a2(&v19, v10);
    result = (*(v7 + 8))(v10, v6);
    v14 = v20;
    v15 = v21;
    v16 = v22;
    v17 = v23;
    *a3 = v19;
    *(a3 + 8) = v14;
    *(a3 + 16) = v15;
    *(a3 + 24) = v16;
    *(a3 + 40) = v17;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata completion function for TransitionThinkingView(uint64_t a1)
{
  result = type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<TimelineView<PeriodicTimelineSchedule, ModifiedContent<TransitionDotView, _RotationEffect>>, TransitionDotView> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<TimelineView<PeriodicTimelineSchedule, ModifiedContent<TransitionDotView, _RotationEffect>>, TransitionDotView> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<TimelineView<PeriodicTimelineSchedule, ModifiedContent<TransitionDotView, _RotationEffect>>, TransitionDotView> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA12TimelineViewVyAA08PeriodicE8ScheduleVAA08ModifiedD0Vy07WorkoutB0013TransitionDotF0VAA15_RotationEffectVGGALGMd, &_s7SwiftUI19_ConditionalContentVyAA12TimelineViewVyAA08PeriodicE8ScheduleVAA08ModifiedD0Vy07WorkoutB0013TransitionDotF0VAA15_RotationEffectVGGALGMR);
    lazy protocol witness table accessor for type TimelineView<PeriodicTimelineSchedule, ModifiedContent<TransitionDotView, _RotationEffect>> and conformance <> TimelineView<A, B>();
    lazy protocol witness table accessor for type TransitionDotView and conformance TransitionDotView();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<TimelineView<PeriodicTimelineSchedule, ModifiedContent<TransitionDotView, _RotationEffect>>, TransitionDotView> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CountdownBottomOverlay(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for CountdownBottomOverlay(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t CountdownBottomOverlay.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v29 = a1;
  v28[1] = a3;
  v28[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGMd, &_ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGMR);
  MEMORY[0x28223BE20](v28[0]);
  v8 = v28 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGGAOyAHSgGG_Qo_AA01_nlM0VGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGGAOyAHSgGG_Qo_AA01_nlM0VGMR);
  MEMORY[0x28223BE20](v9);
  v11 = v28 - v10;
  *&v35[0] = a1;
  *(&v35[0] + 1) = a2;
  lazy protocol witness table accessor for type String and conformance String();

  v12 = Text.init<A>(_:)();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  KeyPath = swift_getKeyPath();
  v20 = static Font.title.getter();
  v21 = swift_getKeyPath();
  v34 = v16 & 1;
  *&v30 = v12;
  *(&v30 + 1) = v14;
  LOBYTE(v31) = v16 & 1;
  *(&v31 + 1) = v18;
  *&v32 = KeyPath;
  BYTE8(v32) = 1;
  *&v33 = v21;
  *(&v33 + 1) = v20;
  static Font.Weight.medium.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAA4FontVSgGGMR);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
  View.fontWeight(_:)();
  v35[0] = v30;
  v35[1] = v31;
  v35[2] = v32;
  v35[3] = v33;
  outlined destroy of ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Font?>>(v35, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAA4FontVSgGGMR);
  v22 = static VerticalAlignment.bottom.getter();
  v23 = swift_allocObject();
  *(v23 + 16) = v29;
  *(v23 + 24) = a2;
  *(v23 + 32) = a4;
  v24 = &v11[*(v9 + 36)];
  *v24 = v22;
  v24[1] = partial apply for closure #1 in CountdownBottomOverlay.body.getter;
  v24[2] = v23;
  v25 = *MEMORY[0x277CDF9D8];
  v26 = type metadata accessor for DynamicTypeSize();
  (*(*(v26 - 8) + 104))(v8, v25, v26);
  lazy protocol witness table accessor for type DynamicTypeSize and conformance DynamicTypeSize();

  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _AlignmentWritingModifier> and conformance <> ModifiedContent<A, B>();
    _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGACyxGAA04ViewF0AAWlTm_0(&lazy protocol witness table cache variable for type PartialRangeThrough<DynamicTypeSize> and conformance PartialRangeThrough<A>, &_ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGMd, &_ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGMR, MEMORY[0x277D84470]);
    View.dynamicTypeSize<A>(_:)();
    outlined destroy of ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Font?>>(v8, &_ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGMd, &_ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGMR);
    return sub_20C69950C(v11);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAA4FontVSgGGMR);
    lazy protocol witness table accessor for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>();
    _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGACyxGAA04ViewF0AAWlTm_0(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMR, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _AlignmentWritingModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _AlignmentWritingModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _AlignmentWritingModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGGAOyAHSgGG_Qo_AA01_nlM0VGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGGAOyAHSgGG_Qo_AA01_nlM0VGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAA4FontVSgGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _AlignmentWritingModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGACyxGAA04ViewF0AAWlTm_0(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t outlined destroy of ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Font?>>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t TrainingLoadDataType.stringKey.getter()
{
  v1 = v0;
  DataType = type metadata accessor for TrainingLoadDataType();
  v3 = *(DataType - 8);
  v4 = MEMORY[0x28223BE20](DataType);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, DataType, v4);
  v7 = (*(v3 + 88))(v6, DataType);
  if (v7 == *MEMORY[0x277D0FED8])
  {
    (*(v3 + 96))(v6, DataType);
    v10[0] = 0x74756F6B726F77;
    v10[1] = 0xE700000000000000;
    v8 = HKWorkoutActivityType.description.getter();
    MEMORY[0x20F30BC00](v8);

    return v10[0];
  }

  else if (v7 == *MEMORY[0x277D0FEE0])
  {
    return 0x7961446C6C61;
  }

  else if (v7 == *MEMORY[0x277D0FEE8])
  {
    return 0x6F6B726F576C6C61;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t static DemoUtilities.cacheLoadValues(_:dataType:)(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  _StringGuts.grow(_:)(26);

  Data = TrainingLoadDataType.stringKey.getter();
  MEMORY[0x20F30BC00](Data);

  _StringGuts.grow(_:)(28);

  v4 = TrainingLoadDataType.stringKey.getter();
  MEMORY[0x20F30BC00](v4);

  if (v2)
  {
    v5 = *(v2 + 16);
    if (v5 != 29 || (v5 = *(v1 + 16), v5 != 29))
    {

      lazy protocol witness table accessor for type DemoUtilities.DemoError and conformance DemoUtilities.DemoError();
      swift_allocError();
      *v16 = v5;
      *(v16 + 8) = 29;
      *(v16 + 16) = 0;
      return swift_willThrow();
    }

    v6 = MEMORY[0x277D84F90];
    v40 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 29, 0);
    v7 = 0;
    v8 = v40;
    do
    {
      v9 = Double.description.getter();
      v41 = v8;
      v12 = *(v8 + 16);
      v11 = *(v8 + 24);
      if (v12 >= v11 >> 1)
      {
        v14 = v9;
        v15 = v10;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
        v10 = v15;
        v9 = v14;
        v6 = MEMORY[0x277D84F90];
        v8 = v41;
      }

      *(v8 + 16) = v12 + 1;
      v13 = v8 + 16 * v12;
      *(v13 + 32) = v9;
      *(v13 + 40) = v10;
      v7 += 8;
    }

    while (v7 != 232);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v38 = BidirectionalCollection<>.joined(separator:)();
    v39 = v20;

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 29, 0);
    v21 = 0;
    v22 = v6;
    do
    {
      v23 = Double.description.getter();
      v25 = v24;
      v27 = *(v22 + 16);
      v26 = *(v22 + 24);
      if (v27 >= v26 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1);
      }

      *(v22 + 16) = v27 + 1;
      v28 = v22 + 16 * v27;
      *(v28 + 32) = v23;
      *(v28 + 40) = v25;
      v21 += 8;
    }

    while (v21 != 232);
    v29 = BidirectionalCollection<>.joined(separator:)();
    v31 = v30;

    v32 = MEMORY[0x20F30BAD0](0xD000000000000018, 0x800000020CBA4330);

    v33 = MEMORY[0x20F30BAD0](v38, v39);

    v18 = *MEMORY[0x277D09540];
    CFPreferencesSetAppValue(v32, v33, *MEMORY[0x277D09540]);

    v34 = MEMORY[0x20F30BAD0](0xD00000000000001ALL, 0x800000020CBA4350);

    v35 = MEMORY[0x20F30BAD0](v29, v31);

    CFPreferencesSetAppValue(v34, v35, v18);
  }

  else
  {
    v17 = MEMORY[0x20F30BAD0](0xD000000000000018, 0x800000020CBA4330);

    v18 = *MEMORY[0x277D09540];
    CFPreferencesSetAppValue(v17, 0, *MEMORY[0x277D09540]);

    v19 = MEMORY[0x20F30BAD0](0xD00000000000001ALL, 0x800000020CBA4350);

    CFPreferencesSetAppValue(v19, 0, v18);
  }

  result = CFPreferencesAppSynchronize(v18);
  if (result)
  {
    return result;
  }

  lazy protocol witness table accessor for type DemoUtilities.DemoError and conformance DemoUtilities.DemoError();
  swift_allocError();
  *v37 = 0;
  *(v37 + 8) = 0;
  *(v37 + 16) = 1;
  return swift_willThrow();
}

void static DemoUtilities.cacheWorkouts(_:)(uint64_t a1)
{
  if (a1)
  {
    type metadata accessor for JSONEncoder();
    swift_allocObject();
    JSONEncoder.init()();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9WorkoutUI04DemoA0VGMd, &_sSay9WorkoutUI04DemoA0VGMR);
    lazy protocol witness table accessor for type [DemoWorkout] and conformance <A> [A](&lazy protocol witness table cache variable for type [DemoWorkout] and conformance <A> [A], lazy protocol witness table accessor for type DemoWorkout and conformance DemoWorkout, MEMORY[0x277D83948]);
    v2 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    if (v1)
    {

      return;
    }

    v6 = v3;
    v7 = v2;
    v8 = MEMORY[0x20F30BAD0](0xD000000000000014, 0x800000020CBA4310);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v5 = *MEMORY[0x277D09540];
    CFPreferencesSetAppValue(v8, isa, *MEMORY[0x277D09540]);

    outlined consume of Data._Representation(v7, v6);
  }

  else
  {
    v4 = MEMORY[0x20F30BAD0](0xD000000000000014, 0x800000020CBA4310);
    v5 = *MEMORY[0x277D09540];
    CFPreferencesSetAppValue(v4, 0, *MEMORY[0x277D09540]);
  }

  if (!CFPreferencesAppSynchronize(v5))
  {
    lazy protocol witness table accessor for type DemoUtilities.DemoError and conformance DemoUtilities.DemoError();
    swift_allocError();
    *v10 = 0;
    *(v10 + 8) = 0;
    *(v10 + 16) = 1;
    swift_willThrow();
  }
}

uint64_t DemoUtilities.DemoError.errorDescription.getter(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return 0xD00000000000002CLL;
  }

  _StringGuts.grow(_:)(31);

  v4 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x20F30BC00](v4);

  MEMORY[0x20F30BC00](0xD000000000000012, 0x800000020CBA4370);
  v5 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x20F30BC00](v5);

  return 0x6465746365707845;
}

BOOL specialized String.withCString<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v4 >= 0x21 || ((0x100003E01uLL >> v4) & 1) == 0)
      {
LABEL_10:
        v6 = _swift_stdlib_strtod_clocale();
        return v6 && *v6 == 0;
      }

      return 0;
    }
  }

  _StringGuts._slowWithCString<A>(_:)();
  if (!v3)
  {
    return v8;
  }

  return v5;
}

void specialized static DemoUtilities.fetchTrainingLoadSampleDaySummary(dayRange:dataType:)(void (**a1)(char *, char *, uint64_t), uint64_t a2)
{
  v368 = a1;
  v3 = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15CollectionOfOneVy13HealthBalance28TrainingLoadSampleDaySummaryVGMd, &_ss15CollectionOfOneVy13HealthBalance28TrainingLoadSampleDaySummaryVGMR);
  MEMORY[0x28223BE20](v4 - 8);
  v376 = v317 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18ReversedCollectionVySNy9HealthKit8DayIndexVGGMd, &_ss18ReversedCollectionVySNy9HealthKit8DayIndexVGGMR);
  MEMORY[0x28223BE20](v6 - 8);
  v324 = v317 - v7;
  v323 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18ReversedCollectionV8IteratorVySNy9HealthKit8DayIndexVG_GMd, &_ss18ReversedCollectionV8IteratorVySNy9HealthKit8DayIndexVG_GMR);
  MEMORY[0x28223BE20](v323);
  v362 = (v317 - v8);
  DataType = type metadata accessor for TrainingLoadDataType();
  v333 = *(DataType - 8);
  MEMORY[0x28223BE20](DataType);
  v352 = v317 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v321 = v317 - v11;
  BaselineComparison = type metadata accessor for TrainingLoadBaselineComparison();
  MEMORY[0x28223BE20](BaselineComparison - 8);
  v375 = (v317 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v329 = v317 - v15;
  v359 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSny9HealthKit8DayIndexVGMd, &_sSny9HealthKit8DayIndexVGMR);
  MEMORY[0x28223BE20](v359);
  v374 = (v317 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v328 = v317 - v18;
  SampleDaySummary = type metadata accessor for TrainingLoadSampleDaySummary();
  v343 = *(SampleDaySummary - 8);
  MEMORY[0x28223BE20](SampleDaySummary);
  v351 = v317 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v327 = v317 - v21;
  ChronicBaseline = type metadata accessor for TrainingLoadChronicBaseline();
  v332 = *(ChronicBaseline - 8);
  MEMORY[0x28223BE20](ChronicBaseline);
  v391 = v317 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v357 = v317 - v24;
  MEMORY[0x28223BE20](v25);
  v338 = v317 - v26;
  AcuteBaseline = type metadata accessor for TrainingLoadAcuteBaseline();
  v331 = *(AcuteBaseline - 8);
  MEMORY[0x28223BE20](AcuteBaseline);
  v392 = v317 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v356 = v317 - v29;
  MEMORY[0x28223BE20](v30);
  v335 = v317 - v31;
  v366 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9HealthKit8DayIndexV5lower_AC5uppertMd, &_s9HealthKit8DayIndexV5lower_AC5uppertMR);
  MEMORY[0x28223BE20](v366);
  v365 = v317 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v364 = v317 - v34;
  v385 = type metadata accessor for DayIndex();
  v394 = *(v385 - 8);
  MEMORY[0x28223BE20](v385);
  v377 = v317 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v337 = v317 - v37;
  MEMORY[0x28223BE20](v38);
  v393 = (v317 - v39);
  MEMORY[0x28223BE20](v40);
  v353 = v317 - v41;
  MEMORY[0x28223BE20](v42);
  v370 = (v317 - v43);
  MEMORY[0x28223BE20](v44);
  v330 = v317 - v45;
  MEMORY[0x28223BE20](v46);
  v348 = (v317 - v47);
  MEMORY[0x28223BE20](v48);
  v349 = (v317 - v49);
  MEMORY[0x28223BE20](v50);
  v388 = v317 - v51;
  MEMORY[0x28223BE20](v52);
  v345 = (v317 - v53);
  MEMORY[0x28223BE20](v54);
  v383 = v317 - v55;
  v367 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_G_AHtMd, &_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_G_AHtMR);
  MEMORY[0x28223BE20](v367);
  v361 = (v317 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v57);
  v372 = v317 - v58;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_GMd, &_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_GMR);
  MEMORY[0x28223BE20](v59 - 8);
  v354 = v317 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v61);
  v355 = (v317 - v62);
  MEMORY[0x28223BE20](v63);
  v378 = (v317 - v64);
  MEMORY[0x28223BE20](v65);
  v340 = v317 - v66;
  MEMORY[0x28223BE20](v67);
  v381 = (v317 - v68);
  MEMORY[0x28223BE20](v69);
  v346 = (v317 - v70);
  MEMORY[0x28223BE20](v71);
  v347 = (v317 - v72);
  MEMORY[0x28223BE20](v73);
  v382 = v317 - v74;
  MEMORY[0x28223BE20](v75);
  v387 = (v317 - v76);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9HealthKit8DayIndexVSgMd, &_s9HealthKit8DayIndexVSgMR);
  MEMORY[0x28223BE20](v77 - 8);
  v336 = v317 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v79);
  v342 = v317 - v80;
  MEMORY[0x28223BE20](v81);
  v389 = v317 - v82;
  v369 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy9HealthKit8DayIndexVGMd, &_sSNy9HealthKit8DayIndexVGMR);
  MEMORY[0x28223BE20](v369);
  v344 = (v317 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v84);
  v373 = v317 - v85;
  v326 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySNy9HealthKit8DayIndexVGGMd, &_ss16IndexingIteratorVySNy9HealthKit8DayIndexVGGMR);
  MEMORY[0x28223BE20](v326);
  v390 = v317 - v86;
  v87 = type metadata accessor for Logger();
  v371 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v339 = (v317 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v89);
  v322 = v317 - v90;
  MEMORY[0x28223BE20](v91);
  v325 = v317 - v92;
  v396 = type metadata accessor for CharacterSet();
  v93 = *(v396 - 8);
  MEMORY[0x28223BE20](v396);
  v395 = v317 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0);
  Data = TrainingLoadDataType.stringKey.getter();
  v384 = v95;
  v400 = 0;
  v401 = 0xE000000000000000;
  _StringGuts.grow(_:)(26);

  v400 = 0xD000000000000018;
  v401 = 0x800000020CBA4330;
  v363 = a2;
  v96 = TrainingLoadDataType.stringKey.getter();
  MEMORY[0x20F30BC00](v96);

  v97 = MEMORY[0x20F30BAD0](v400, v401);

  v98 = *MEMORY[0x277D09540];
  v99 = CFPreferencesCopyAppValue(v97, *MEMORY[0x277D09540]);

  v341 = 0;
  if (v99)
  {
    v398 = v99;
    v100 = swift_dynamicCast();
    if (v100)
    {
      v101 = v400;
    }

    else
    {
      v101 = 0;
    }

    if (v100)
    {
      v3 = v401;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v101 = 0;
  }

  v400 = 0;
  v401 = 0xE000000000000000;
  _StringGuts.grow(_:)(28);

  v400 = 0xD00000000000001ALL;
  v401 = 0x800000020CBA4350;
  v102 = TrainingLoadDataType.stringKey.getter();
  MEMORY[0x20F30BC00](v102);

  v103 = MEMORY[0x20F30BAD0](v400, v401);

  v104 = CFPreferencesCopyAppValue(v103, v98);

  if (!v104 || ((v398 = v104, (v105 = swift_dynamicCast()) == 0) ? (v106 = 0) : (v106 = v400), !v105 ? (v107 = 0) : (v107 = v401), !v3 || !v107))
  {

    return;
  }

  v350 = v93;
  v400 = v101;
  v401 = v3;
  v398 = 44;
  v399 = 0xE100000000000000;
  lazy protocol witness table accessor for type String and conformance String();
  v108 = StringProtocol.components<A>(separatedBy:)();

  v109 = *(v108 + 16);
  v110 = MEMORY[0x277D84F90];
  v320 = v87;
  if (v109)
  {
    v318 = v106;
    v319 = v107;
    v398 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v109, 0);
    v111 = v398;
    v112 = (v350 + 8);
    v317[1] = v108;
    v113 = (v108 + 40);
    do
    {
      v114 = *v113;
      v400 = *(v113 - 1);
      v401 = v114;

      v115 = v395;
      static CharacterSet.whitespaces.getter();
      v116 = StringProtocol.trimmingCharacters(in:)();
      v118 = v117;
      (*v112)(v115, v396);

      v398 = v111;
      v120 = *(v111 + 16);
      v119 = *(v111 + 24);
      if (v120 >= v119 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v119 > 1), v120 + 1, 1);
        v111 = v398;
      }

      *(v111 + 16) = v120 + 1;
      v121 = v111 + 16 * v120;
      *(v121 + 32) = v116;
      *(v121 + 40) = v118;
      v113 += 2;
      --v109;
    }

    while (v109);
    v386 = v111;

    v107 = v319;
    v106 = v318;
    v110 = MEMORY[0x277D84F90];
  }

  else
  {

    v386 = MEMORY[0x277D84F90];
  }

  v400 = v106;
  v401 = v107;
  v398 = 44;
  v399 = 0xE100000000000000;
  v122 = StringProtocol.components<A>(separatedBy:)();

  v123 = *(v122 + 16);
  if (v123)
  {
    v398 = v110;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v123, 0);
    v124 = v398;
    v125 = (v350 + 8);
    v319 = v122;
    v126 = (v122 + 40);
    do
    {
      v127 = *v126;
      v400 = *(v126 - 1);
      v401 = v127;

      v128 = v395;
      static CharacterSet.whitespaces.getter();
      v129 = StringProtocol.trimmingCharacters(in:)();
      v131 = v130;
      (*v125)(v128, v396);

      v398 = v124;
      v133 = *(v124 + 16);
      v132 = *(v124 + 24);
      if (v133 >= v132 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v132 > 1), v133 + 1, 1);
        v124 = v398;
      }

      *(v124 + 16) = v133 + 1;
      v134 = v124 + 16 * v133;
      *(v134 + 32) = v129;
      *(v134 + 40) = v131;
      v126 += 2;
      --v123;
    }

    while (v123);
    v350 = v124;
  }

  else
  {

    v350 = MEMORY[0x277D84F90];
  }

  v136 = v386;
  v137 = *(v386 + 16);
  v138 = v341;
  v139 = v382;
  if (!v137)
  {
    v149 = MEMORY[0x277D84F90];
    goto LABEL_99;
  }

  v396 = v137 - 1;
  if (v137 != 1)
  {
    goto LABEL_75;
  }

  v140 = *(v386 + 32);
  v141 = *(v386 + 40);
  if ((v140 != 0x676E69646E6570 || v141 != 0xE700000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    if (v140 == 0x617461446F6ELL && v141 == 0xE600000000000000 || (isUniquelyReferenced_nonNull_native = _stringCompareWithSmolCheck(_:_:expecting:)(), v136 = v386, (isUniquelyReferenced_nonNull_native & 1) != 0))
    {

      return;
    }

LABEL_75:
    v228 = 0;
    v229 = v136 + 40;
    v149 = MEMORY[0x277D84F90];
    while (1)
    {
      v372 = v149;
      v230 = v229;
      v231 = (v229 + 16 * v228);
      v232 = v228;
      while (1)
      {
        if (v232 >= *(v136 + 16))
        {
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
          return;
        }

        v234 = *(v231 - 1);
        v233 = *v231;
        v398 = 0;
        MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
        v317[-2] = &v398;
        if ((v233 & 0x1000000000000000) == 0)
        {
          if ((v233 & 0x2000000000000000) != 0)
          {
            v400 = v234;
            v401 = v233 & 0xFFFFFFFFFFFFFFLL;

            if (v234 >= 0x21u || ((0x100003E01uLL >> v234) & 1) == 0)
            {
              v236 = _swift_stdlib_strtod_clocale();
              if (v236)
              {
LABEL_88:
                v397 = *v236 == 0;
                goto LABEL_90;
              }
            }

            goto LABEL_89;
          }

          if ((v234 & 0x1000000000000000) != 0)
          {
            v235 = *((v233 & 0xFFFFFFFFFFFFFFFLL) + 0x20);

            if (v235 >= 0x21 || ((0x100003E01uLL >> v235) & 1) == 0)
            {
              v236 = _swift_stdlib_strtod_clocale();
              if (v236)
              {
                goto LABEL_88;
              }
            }

LABEL_89:
            v397 = 0;
            goto LABEL_90;
          }
        }

        _StringGuts._slowWithCString<A>(_:)();
LABEL_90:

        v136 = v386;
        if (v397)
        {
          break;
        }

        ++v232;
        v231 += 2;
        if (v137 == v232)
        {
          v149 = v372;
          goto LABEL_99;
        }
      }

      v237 = v398;
      v149 = v372;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v149 + 2) + 1, 1, v149);
        v149 = isUniquelyReferenced_nonNull_native;
      }

      v239 = *(v149 + 2);
      v238 = *(v149 + 3);
      if (v239 >= v238 >> 1)
      {
        isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v238 > 1), v239 + 1, 1, v149);
        v149 = isUniquelyReferenced_nonNull_native;
      }

      v228 = v232 + 1;
      *(v149 + 2) = v239 + 1;
      *&v149[8 * v239 + 32] = v237;
      v136 = v386;
      v229 = v230;
      if (v396 == v232)
      {
LABEL_99:

        if (*(v149 + 2) != 29 || *(v350 + 16) != 29)
        {
          v248 = v339;
          static WOLog.trainingLoad.getter();
          v249 = v384;

          v250 = v350;

          v251 = Logger.logObject.getter();
          v252 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v251, v252))
          {
            v253 = swift_slowAlloc();
            v254 = swift_slowAlloc();
            v400 = v254;
            *v253 = 136315650;
            v255 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(Data, v249, &v400);

            *(v253 + 4) = v255;
            *(v253 + 12) = 2048;
            v256 = *(v149 + 2);

            *(v253 + 14) = v256;

            *(v253 + 22) = 2048;
            v257 = *(v250 + 16);

            *(v253 + 24) = v257;

            _os_log_impl(&dword_20C66F000, v251, v252, "Demo Data for %s was invalid - expected 29 comma-separated doubles, ended up with %ld acute and %ld chronic", v253, 0x20u);
            __swift_destroy_boxed_opaque_existential_0(v254);
            MEMORY[0x20F30E080](v254, -1, -1);
            MEMORY[0x20F30E080](v253, -1, -1);
          }

          else
          {

            swift_bridgeObjectRelease_n();
            swift_bridgeObjectRelease_n();
          }

          (v371[1])(v248, v320);
          return;
        }

        v372 = v149;
        v240 = v322;
        static WOLog.trainingLoad.getter();
        v241 = v384;

        v242 = Logger.logObject.getter();
        v243 = static os_log_type_t.default.getter();

        v244 = os_log_type_enabled(v242, v243);
        v341 = v138;
        if (v244)
        {
          v245 = swift_slowAlloc();
          v246 = swift_slowAlloc();
          v400 = v246;
          *v245 = 136315138;
          v247 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(Data, v241, &v400);

          *(v245 + 4) = v247;
          _os_log_impl(&dword_20C66F000, v242, v243, "Demo Data overriding acute and chronic values for %s on graph.", v245, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v246);
          MEMORY[0x20F30E080](v246, -1, -1);
          MEMORY[0x20F30E080](v245, -1, -1);
        }

        else
        {
        }

        (v371[1])(v240, v320);
        v258 = v394;
        v259 = v362;
        v260 = v332;
        v261 = v373;
        GregorianDayRange.dayIndexRange.getter();
        v262 = v258[2];
        v396 = (v258 + 2);
        v263 = v383;
        v264 = v385;
        v262(v383, v261, v385);
        outlined destroy of ClosedRange<DayIndex>(v261, &_sSNy9HealthKit8DayIndexVGMd, &_sSNy9HealthKit8DayIndexVGMR);
        v265 = v349;
        DayIndex.init(integerLiteral:)();
        static DayIndex.- infix(_:_:)();
        v266 = v258[1];
        v266(v265, v264);
        v387 = v266;
        v388 = (v258 + 1);
        v266(v263, v264);
        v267 = v262;
        v268 = v324;
        GregorianDayRange.dayIndexRange.getter();
        outlined init with copy of ClosedRange<DayIndex>(v268, v259, &_sSNy9HealthKit8DayIndexVGMd, &_sSNy9HealthKit8DayIndexVGMR);
        v269 = v258[7];
        v384 = *(v323 + 36);
        v389 = v269;
        (v269)(v259 + v384, 1, 1, v264);
        outlined destroy of ClosedRange<DayIndex>(v268, &_sSNy9HealthKit8DayIndexVGMd, &_sSNy9HealthKit8DayIndexVGMR);
        v390 = (v258 + 6);
        v368 = (v258 + 4);
        v349 = (v331 + 16);
        v348 = (v260 + 16);
        v347 = (v333 + 16);
        v346 = (v333 + 88);
        LODWORD(v373) = *MEMORY[0x277D0FED8];
        v339 = (v333 + 96);
        v338 = (v333 + 8);
        v345 = (v343 + 32);
        v344 = (v260 + 8);
        v343 = v331 + 8;
        v371 = MEMORY[0x277D84F90];
        v395 = 464;
        v386 = 32;
        v270 = v361;
        v271 = v372;
        v382 = v267;
        v394 = v258 + 7;
        while (1)
        {
          v272 = v381;
          (v267)(v381, v259, v264);
          (v389)(v272, 0, 1, v264);
          v273 = *(v367 + 48);
          outlined init with copy of ClosedRange<DayIndex>(v259 + v384, v270, &_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_GMd, &_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_GMR);
          outlined init with copy of ClosedRange<DayIndex>(v272, &v270[v273], &_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_GMd, &_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_GMR);
          v274 = *v390;
          if ((*v390)(v270, 1, v264) == 1)
          {
            break;
          }

          v275 = v340;
          outlined init with copy of ClosedRange<DayIndex>(v270, v340, &_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_GMd, &_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_GMR);
          if (v274(&v270[v273], 1, v264) == 1)
          {
            v387(v275, v264);
            v271 = v372;
            v267 = v382;
LABEL_116:
            outlined destroy of ClosedRange<DayIndex>(v270, &_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_G_AHtMd, &_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_G_AHtMR);
            outlined destroy of ClosedRange<DayIndex>(v381, &_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_GMd, &_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_GMR);
            goto LABEL_118;
          }

          v276 = v383;
          (*v368)(v383, &v270[v273], v264);
          _s9HealthKit8DayIndexVACSLAAWlTm_0(&lazy protocol witness table cache variable for type DayIndex and conformance DayIndex, MEMORY[0x277CCB6C0]);
          v277 = dispatch thunk of static Equatable.== infix(_:_:)();
          v278 = v387;
          v387(v275, v264);
          v278(v276, v264);
          outlined destroy of ClosedRange<DayIndex>(v270, &_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_GMd, &_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_GMR);
          outlined destroy of ClosedRange<DayIndex>(v381, &_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_GMd, &_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_GMR);
          v271 = v372;
          v267 = v382;
          if (v277)
          {
            goto LABEL_146;
          }

LABEL_118:
          v279 = v384;
          v280 = v378;
          outlined init with take of ClosedRange<DayIndex><>.Index(v259 + v384, v378, &_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_GMd, &_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_GMR);
          v281 = v280;
          v282 = v355;
          outlined init with copy of ClosedRange<DayIndex>(v281, v355, &_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_GMd, &_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_GMR);
          if (v274(v282, 1, v264) == 1)
          {
            v283 = *(v369 + 36);
            _s9HealthKit8DayIndexVACSLAAWlTm_0(&lazy protocol witness table cache variable for type DayIndex and conformance DayIndex, MEMORY[0x277CCB6B8]);
            v284 = dispatch thunk of static Comparable.>= infix(_:_:)();
            v285 = v368;
            if ((v284 & 1) == 0)
            {
              __break(1u);
LABEL_148:
              __break(1u);
              goto LABEL_149;
            }

            v286 = v259 + v283;
            v279 = v384;
            (v267)(v259 + v384, v286, v264);
          }

          else
          {
            v285 = v368;
            (*v368)(v383, v282, v264);
            _s9HealthKit8DayIndexVACSLAAWlTm_0(&lazy protocol witness table cache variable for type DayIndex and conformance DayIndex, MEMORY[0x277CCB6B8]);
            if ((dispatch thunk of static Comparable.> infix(_:_:)() & 1) == 0)
            {
              goto LABEL_148;
            }

            v398 = -1;
            _s9HealthKit8DayIndexVACSLAAWlTm_0(&lazy protocol witness table cache variable for type DayIndex and conformance DayIndex, MEMORY[0x277CCB6C8]);
            v287 = v383;
            dispatch thunk of Strideable.advanced(by:)();
            v387(v287, v264);
          }

          (v389)(v259 + v279, 0, 1, v264);
          outlined destroy of ClosedRange<DayIndex>(v378, &_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_GMd, &_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_GMR);
          v288 = v354;
          outlined init with copy of ClosedRange<DayIndex>(v259 + v279, v354, &_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_GMd, &_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_GMR);
          if (v274(v288, 1, v264) == 1)
          {
            goto LABEL_152;
          }

          v289 = *v285;
          v270 = v353;
          (*v285)(v353, v288, v264);
          v289(v393, v270, v264);
          v290 = [objc_opt_self() appleEffortScoreUnit];
          if (!v395)
          {
            __break(1u);
LABEL_142:
            __break(1u);
LABEL_143:
            __break(1u);
LABEL_144:
            __break(1u);
LABEL_145:
            outlined destroy of ClosedRange<DayIndex>(v270, &_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_GMd, &_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_GMR);
            outlined destroy of ClosedRange<DayIndex>(v381, &_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_GMd, &_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_GMR);
LABEL_146:

            outlined destroy of ClosedRange<DayIndex>(v259, &_ss18ReversedCollectionV8IteratorVySNy9HealthKit8DayIndexVG_GMd, &_ss18ReversedCollectionV8IteratorVySNy9HealthKit8DayIndexVG_GMR);
            v387(v370, v264);
            return;
          }

          v259 = v394;
          v291 = v386 - 4;
          if ((v386 - 4) >= *(v271 + 2))
          {
            goto LABEL_142;
          }

          v292 = v290;
          v270 = [objc_opt_self() quantityWithUnit:v290 doubleValue:*&v271[8 * v386]];

          TrainingLoadAcuteBaseline.init(quantity:)();
          if (v291 >= *(v350 + 16))
          {
            goto LABEL_143;
          }

          v294 = *(v350 + v395 + 16);
          v293 = *(v350 + v395 + 24);
          if (v294 == 0x617461446F6ELL && v293 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            v295 = v393;
            (v267)(v383, v393, v264);
            v296 = v342;
            (v267)(v342, v295, v264);
            v297 = v264;
            (v389)(v296, 0, 1, v264);
          }

          else
          {
            v298 = v393;
            (v382)(v337, v393, v264);
            v299 = v336;
            (v382)(v336, v370, v264);
            (v389)(v299, 0, 1, v264);
            v398 = 0;

            v300 = v294;
            v301 = v341;
            specialized String.withCString<A>(_:)(v300, v293, &v398);
            v341 = v301;

            v295 = v298;
            v267 = v382;
            v297 = v264;
          }

          TrainingLoadChronicBaseline.init(target:firstDayWithData:minConsecutiveDaysOfDataRequired:chronicBaselineCandidate:)();
          (v267)(v377, v295, v297);
          _s9HealthKit8DayIndexVACSLAAWlTm_0(&lazy protocol witness table cache variable for type DayIndex and conformance DayIndex, MEMORY[0x277CCB6B8]);
          v270 = v370;
          if ((dispatch thunk of static Comparable.<= infix(_:_:)() & 1) == 0)
          {
            goto LABEL_144;
          }

          v302 = v364;
          (v267)(v364, v270, v297);
          v303 = v366;
          (v267)(v302 + *(v366 + 48), v295, v297);
          v304 = v365;
          outlined init with copy of ClosedRange<DayIndex>(v302, v365, &_s9HealthKit8DayIndexV5lower_AC5uppertMd, &_s9HealthKit8DayIndexV5lower_AC5uppertMR);
          v305 = *(v303 + 48);
          v306 = v374;
          v289(v374, v304, v297);
          v307 = v304 + v305;
          v308 = v387;
          v387(v307, v297);
          outlined init with take of ClosedRange<DayIndex><>.Index(v302, v304, &_s9HealthKit8DayIndexV5lower_AC5uppertMd, &_s9HealthKit8DayIndexV5lower_AC5uppertMR);
          v289(v306 + *(v359 + 36), v304 + *(v303 + 48), v297);
          v308(v304, v297);
          (*v349)(v356, v392, AcuteBaseline);
          (*v348)(v357, v391, ChronicBaseline);
          TrainingLoadBaselineComparison.init(acuteBaseline:chronicBaseline:)();
          v309 = v352;
          v310 = DataType;
          (*v347)(v352, v363, DataType);
          v311 = (*v346)(v309, v310);
          if (v311 == v373)
          {
            (*v339)(v309, v310);
          }

          else
          {
            (*v338)(v309, v310);
          }

          v259 = v362;
          v271 = v372;
          v312 = v351;
          TrainingLoadSampleDaySummary.init(morningIndex:baselineRange:trainingLoad:activityType:)();
          (*v345)(v376, v312, SampleDaySummary);
          v313 = v371;
          v314 = v371[2];
          v315 = swift_isUniquelyReferenced_nonNull_native();
          v400 = v313;
          v316 = v393;
          v270 = v361;
          v267 = v382;
          v264 = v385;
          if (!v315 || v314 >= v313[3] >> 1)
          {
            v371 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v315, v314 + 1, 1, v313);
            v400 = v371;
          }

          specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(0, 0, 1, v376);
          (*v344)(v391, ChronicBaseline);
          (*v343)(v392, AcuteBaseline);
          v387(v316, v264);
          v395 -= 16;
          --v386;
        }

        if (v274(&v270[v273], 1, v264) == 1)
        {
          goto LABEL_145;
        }

        goto LABEL_116;
      }
    }
  }

  v142 = v325;
  static WOLog.trainingLoad.getter();
  v143 = v384;

  v144 = Logger.logObject.getter();
  v145 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v144, v145))
  {
    v146 = swift_slowAlloc();
    v147 = swift_slowAlloc();
    v400 = v147;
    *v146 = 136315138;
    v148 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(Data, v143, &v400);

    *(v146 + 4) = v148;
    _os_log_impl(&dword_20C66F000, v144, v145, "Demo Data overriding acute and chronic values for %s on graph to pending.", v146, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v147);
    MEMORY[0x20F30E080](v147, -1, -1);
    MEMORY[0x20F30E080](v146, -1, -1);
  }

  else
  {
  }

  (v371[1])(v142, v320);
  v150 = v394;
  v151 = v372;
  v152 = v326;
  v153 = v373;
  GregorianDayRange.dayIndexRange.getter();
  v154 = v390;
  outlined init with copy of ClosedRange<DayIndex>(v153, v390, &_sSNy9HealthKit8DayIndexVGMd, &_sSNy9HealthKit8DayIndexVGMR);
  v155 = *(v152 + 36);
  v156 = v150[2];
  v157 = v385;
  v381 = v150 + 2;
  v378 = v156;
  (v156)(&v155[v154], v153, v385);
  v158 = v155;
  outlined destroy of ClosedRange<DayIndex>(v153, &_sSNy9HealthKit8DayIndexVGMd, &_sSNy9HealthKit8DayIndexVGMR);
  v159 = v150[7];
  v150 += 7;
  v392 = v159;
  (v159)(&v155[v154], 0, 1, v157);
  v386 = (v150 - 1);
  v393 = (v150 - 3);
  v394 = v150;
  v384 = (v150 - 6);
  v375 = (v331 + 16);
  v374 = (v332 + 16);
  v370 = (v333 + 16);
  v362 = (v333 + 88);
  LODWORD(v376) = *MEMORY[0x277D0FED8];
  v353 = (v333 + 96);
  v352 = (v333 + 8);
  v361 = (v332 + 8);
  v355 = (v331 + 8);
  v354 = v343 + 32;
  v371 = MEMORY[0x277D84F90];
  v377 = v155;
  while (1)
  {
    v160 = v387;
    v161 = v385;
    (v392)(v387, 1, 1, v385);
    v162 = *(v367 + 48);
    outlined init with copy of ClosedRange<DayIndex>(&v158[v390], v151, &_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_GMd, &_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_GMR);
    outlined init with copy of ClosedRange<DayIndex>(v160, v151 + v162, &_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_GMd, &_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_GMR);
    v163 = *v386;
    if ((*v386)(v151, 1, v161) == 1)
    {
      outlined destroy of ClosedRange<DayIndex>(v160, &_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_GMd, &_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_GMR);
      if (v163(v151 + v162, 1, v385) == 1)
      {
        outlined destroy of ClosedRange<DayIndex>(v390, &_ss16IndexingIteratorVySNy9HealthKit8DayIndexVGGMd, &_ss16IndexingIteratorVySNy9HealthKit8DayIndexVGGMR);
        v226 = &_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_GMd;
        v227 = &_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_GMR;
        goto LABEL_140;
      }

      goto LABEL_49;
    }

    outlined init with copy of ClosedRange<DayIndex>(v151, v139, &_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_GMd, &_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_GMR);
    if (v163(v151 + v162, 1, v385) == 1)
    {
      outlined destroy of ClosedRange<DayIndex>(v160, &_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_GMd, &_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_GMR);
      (*v384)(v139, v385);
LABEL_49:
      outlined destroy of ClosedRange<DayIndex>(v151, &_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_G_AHtMd, &_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_G_AHtMR);
      v151 = v390;
      goto LABEL_51;
    }

    v164 = (v151 + v162);
    v165 = v139;
    v166 = v383;
    v167 = v385;
    (*v393)(v383, v164, v385);
    _s9HealthKit8DayIndexVACSLAAWlTm_0(&lazy protocol witness table cache variable for type DayIndex and conformance DayIndex, MEMORY[0x277CCB6C0]);
    LODWORD(v396) = dispatch thunk of static Equatable.== infix(_:_:)();
    v168 = *v384;
    (*v384)(v166, v167);
    outlined destroy of ClosedRange<DayIndex>(v387, &_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_GMd, &_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_GMR);
    v168(v165, v167);
    outlined destroy of ClosedRange<DayIndex>(v151, &_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_GMd, &_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_GMR);
    v151 = v390;
    if (v396)
    {
      break;
    }

LABEL_51:
    v169 = v347;
    outlined init with copy of ClosedRange<DayIndex>(&v158[v151], v347, &_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_GMd, &_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_GMR);
    if (v163(v169, 1, v385) == 1)
    {
      goto LABEL_154;
    }

    v170 = *v393;
    v171 = v385;
    (*v393)(v389, v169, v385);
    v172 = v346;
    outlined init with take of ClosedRange<DayIndex><>.Index(&v158[v151], v346, &_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_GMd, &_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_GMR);
    v173 = v163(v172, 1, v171);
    v174 = v349;
    v175 = v388;
    if (v173 == 1)
    {
      goto LABEL_153;
    }

    v176 = v345;
    v170(v345, v172, v385);
    _s9HealthKit8DayIndexVACSLAAWlTm_0(&lazy protocol witness table cache variable for type DayIndex and conformance DayIndex, MEMORY[0x277CCB6C0]);
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      v395 = *v384;
      v396 = v384 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      (v395)(v176, v385);
      v177 = 1;
    }

    else
    {
      v400 = 1;
      _s9HealthKit8DayIndexVACSLAAWlTm_0(&lazy protocol witness table cache variable for type DayIndex and conformance DayIndex, MEMORY[0x277CCB6C8]);
      v178 = v385;
      dispatch thunk of Strideable.advanced(by:)();
      v395 = *v384;
      v396 = v384 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      (v395)(v176, v178);
      v177 = 0;
    }

    v179 = &v158[v151];
    v180 = v385;
    v181 = v392;
    (v392)(v179, v177, 1, v385);
    v182 = v389;
    (v181)(v389, 0, 1, v180);
    v170(v175, v182, v180);
    v183 = v373;
    GregorianDayRange.dayIndexRange.getter();
    v184 = v378;
    (v378)(v174, v183 + *(v369 + 36), v180);
    outlined destroy of ClosedRange<DayIndex>(v183, &_sSNy9HealthKit8DayIndexVGMd, &_sSNy9HealthKit8DayIndexVGMR);
    v185 = v348;
    DayIndex.init(integerLiteral:)();
    v186 = v383;
    static DayIndex.- infix(_:_:)();
    v187 = v395;
    (v395)(v185, v180);
    v187(v174, v180);
    GregorianDayRange.dayIndexRange.getter();
    v184(v174, v183 + *(v369 + 36), v180);
    outlined destroy of ClosedRange<DayIndex>(v183, &_sSNy9HealthKit8DayIndexVGMd, &_sSNy9HealthKit8DayIndexVGMR);
    v188 = _s9HealthKit8DayIndexVACSLAAWlTm_0(&lazy protocol witness table cache variable for type DayIndex and conformance DayIndex, MEMORY[0x277CCB6B8]);
    if ((dispatch thunk of static Comparable.<= infix(_:_:)() & 1) == 0)
    {
      goto LABEL_150;
    }

    v391 = v188;
    v189 = v364;
    v190 = v385;
    v170(v364, v186, v385);
    v191 = v366;
    v170((v189 + *(v366 + 48)), v174, v190);
    v192 = v365;
    outlined init with copy of ClosedRange<DayIndex>(v189, v365, &_s9HealthKit8DayIndexV5lower_AC5uppertMd, &_s9HealthKit8DayIndexV5lower_AC5uppertMR);
    v193 = *(v191 + 48);
    v194 = v344;
    v170(v344, v192, v190);
    v195 = v192 + v193;
    v196 = v395;
    v197 = v396;
    (v395)(v195, v190);
    outlined init with take of ClosedRange<DayIndex><>.Index(v189, v192, &_s9HealthKit8DayIndexV5lower_AC5uppertMd, &_s9HealthKit8DayIndexV5lower_AC5uppertMR);
    v198 = v170;
    v170((v194 + *(v369 + 36)), (v192 + *(v191 + 48)), v190);
    v196(v192, v190);
    v199 = v388;
    if ((dispatch thunk of static Comparable.>= infix(_:_:)() & 1) == 0)
    {
      outlined destroy of ClosedRange<DayIndex>(v194, &_sSNy9HealthKit8DayIndexVGMd, &_sSNy9HealthKit8DayIndexVGMR);
      v151 = v372;
      v158 = v377;
LABEL_63:
      v196(v199, v385);
      goto LABEL_64;
    }

    v200 = dispatch thunk of static Comparable.<= infix(_:_:)();
    outlined destroy of ClosedRange<DayIndex>(v194, &_sSNy9HealthKit8DayIndexVGMd, &_sSNy9HealthKit8DayIndexVGMR);
    v151 = v372;
    v158 = v377;
    if ((v200 & 1) == 0)
    {
      goto LABEL_63;
    }

    v201 = [objc_opt_self() appleEffortScoreUnit];
    v202 = [objc_opt_self() quantityWithUnit:v201 doubleValue:5.0];

    TrainingLoadAcuteBaseline.init(quantity:)();
    v203 = v385;
    v396 = v197;
    v204 = v378;
    (v378)(v383, v199, v385);
    v205 = v373;
    GregorianDayRange.dayIndexRange.getter();
    v206 = v349;
    v204(v349, v205 + *(v369 + 36), v203);
    outlined destroy of ClosedRange<DayIndex>(v205, &_sSNy9HealthKit8DayIndexVGMd, &_sSNy9HealthKit8DayIndexVGMR);
    v207 = v348;
    DayIndex.init(integerLiteral:)();
    v208 = v342;
    static DayIndex.- infix(_:_:)();
    v196(v207, v203);
    v196(v206, v203);
    v209 = v204;
    (v392)(v208, 0, 1, v203);
    TrainingLoadChronicBaseline.init(target:firstDayWithData:minConsecutiveDaysOfDataRequired:chronicBaselineCandidate:)();
    v204(v330, v199, v203);
    v210 = v373;
    GregorianDayRange.dayIndexRange.getter();
    v209(v206, v210, v203);
    outlined destroy of ClosedRange<DayIndex>(v210, &_sSNy9HealthKit8DayIndexVGMd, &_sSNy9HealthKit8DayIndexVGMR);
    DayIndex.init(integerLiteral:)();
    v211 = v383;
    static DayIndex.- infix(_:_:)();
    v196(v207, v203);
    v196(v206, v203);
    if ((dispatch thunk of static Comparable.<= infix(_:_:)() & 1) == 0)
    {
      goto LABEL_151;
    }

    v212 = v196;
    v213 = v364;
    v214 = v385;
    v215 = v198;
    v198(v364, v211, v385);
    v216 = v366;
    v209(v213 + *(v366 + 48), v199, v214);
    v217 = v365;
    outlined init with copy of ClosedRange<DayIndex>(v213, v365, &_s9HealthKit8DayIndexV5lower_AC5uppertMd, &_s9HealthKit8DayIndexV5lower_AC5uppertMR);
    v218 = *(v216 + 48);
    v219 = v328;
    v215(v328, v217, v214);
    v212(v217 + v218, v214);
    outlined init with take of ClosedRange<DayIndex><>.Index(v213, v217, &_s9HealthKit8DayIndexV5lower_AC5uppertMd, &_s9HealthKit8DayIndexV5lower_AC5uppertMR);
    v215(&v219[*(v359 + 36)], (v217 + *(v216 + 48)), v214);
    v212(v217, v214);
    (*v375)(v356, v335, AcuteBaseline);
    (*v374)(v357, v338, ChronicBaseline);
    TrainingLoadBaselineComparison.init(acuteBaseline:chronicBaseline:)();
    v220 = v321;
    v221 = DataType;
    (*v370)(v321, v363, DataType);
    LODWORD(v219) = (*v362)(v220, v221);
    if (v219 == v376)
    {
      (*v353)(v220, v221);
    }

    else
    {
      (*v352)(v220, v221);
    }

    v151 = v372;
    TrainingLoadSampleDaySummary.init(morningIndex:baselineRange:trainingLoad:activityType:)();
    v222 = swift_isUniquelyReferenced_nonNull_native();
    v158 = v377;
    if ((v222 & 1) == 0)
    {
      v371 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v371[2] + 1, 1, v371);
    }

    v224 = v371[2];
    v223 = v371[3];
    if (v224 >= v223 >> 1)
    {
      v371 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v223 > 1), v224 + 1, 1, v371);
    }

    (*v361)(v338, ChronicBaseline);
    (*v355)(v335, AcuteBaseline);
    v212(v199, v385);
    v225 = v371;
    v371[2] = v224 + 1;
    (*(v343 + 32))(v225 + ((*(v343 + 80) + 32) & ~*(v343 + 80)) + *(v343 + 72) * v224, v327, SampleDaySummary);
LABEL_64:
    v139 = v382;
  }

  v226 = &_ss16IndexingIteratorVySNy9HealthKit8DayIndexVGGMd;
  v227 = &_ss16IndexingIteratorVySNy9HealthKit8DayIndexVGGMR;
LABEL_140:
  outlined destroy of ClosedRange<DayIndex>(v151, v226, v227);
  (v392)(v389, 1, 1, v385);
}

id specialized static DemoUtilities.effortValue(for:)(void *a1)
{
  result = [a1 metadata];
  if (result)
  {
    v2 = result;
    v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v3 + 16) && (v4 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001FLL, 0x800000020CB958C0), (v5 & 1) != 0))
    {
      outlined init with copy of Any(*(v3 + 56) + 32 * v4, v7);

      type metadata accessor for HKQuantity();
      if (swift_dynamicCast())
      {
        return v6;
      }

      else
      {
        return 0;
      }
    }

    else
    {

      return 0;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DemoUtilities.DemoError and conformance DemoUtilities.DemoError()
{
  result = lazy protocol witness table cache variable for type DemoUtilities.DemoError and conformance DemoUtilities.DemoError;
  if (!lazy protocol witness table cache variable for type DemoUtilities.DemoError and conformance DemoUtilities.DemoError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DemoUtilities.DemoError and conformance DemoUtilities.DemoError);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DemoUtilities(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for DemoUtilities(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DemoUtilities.DemoError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DemoUtilities.DemoError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 17) = v3;
  return result;
}

uint64_t getEnumTag for DemoUtilities.DemoError(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t destructiveInjectEnumTag for DemoUtilities.DemoError(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 16) = 1;
  }

  else
  {
    *(result + 16) = 0;
  }

  return result;
}

uint64_t outlined init with copy of ClosedRange<DayIndex>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined init with take of ClosedRange<DayIndex><>.Index(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t _s9HealthKit8DayIndexVACSLAAWlTm_0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DayIndex();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined destroy of ClosedRange<DayIndex>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

_BYTE *partial apply for closure #1 in closure #1 in Double.init<A>(_:)@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v7 = *result == 0;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

void specialized _dictionaryUpCast<A, B, C, D>(_:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo8NSObjectCGMd, &_ss18_DictionaryStorageCySSSo8NSObjectCGMR);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = v13 | (v12 << 6);
        v15 = (*(a1 + 48) + 16 * v14);
        v17 = *v15;
        v16 = v15[1];
        v18 = *(*(a1 + 56) + 8 * v14);

        v19 = v18;
        v20 = specialized __RawDictionaryStorage.find<A>(_:)(v17, v16);
        if (v21)
        {
          v8 = (v2[6] + 16 * v20);
          *v8 = v17;
          v8[1] = v16;
          v9 = v20;

          v10 = v2[7];
          v11 = *(v10 + 8 * v9);
          *(v10 + 8 * v9) = v19;

          v7 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v20;
          v22 = (v2[6] + 16 * v20);
          *v22 = v17;
          v22[1] = v16;
          *(v2[7] + 8 * v20) = v19;
          v23 = v2[2];
          v24 = __OFADD__(v23, 1);
          v25 = v23 + 1;
          if (v24)
          {
            goto LABEL_21;
          }

          v2[2] = v25;
          v7 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

uint64_t one-time initialization function for analyticsQueue()
{
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v3);
  v4 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v4 - 8);
  v6[1] = type metadata accessor for OS_dispatch_queue();
  static DispatchQoS.unspecified.getter();
  v8 = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_4(&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v2, *MEMORY[0x277D85260], v7);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  static EffortUtilities.analyticsQueue = result;
  return result;
}

unint64_t EffortUtilities.OvernightVitalsState.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 4;
  if (result < 4)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance EffortUtilities.OvernightVitalsState()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance EffortUtilities.OvernightVitalsState(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v2);
  return Hasher._finalize()();
}

uint64_t static EffortUtilities.analyticsTaskIdentifier(workoutActivity:)(void *a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v8 = UUID.uuidString.getter();
  v11[0] = 0xD000000000000016;
  v11[1] = 0x800000020CBA4400;
  MEMORY[0x20F30BC00](v8);

  v9 = v11[0];
  (*(v3 + 8))(v6, v2);
  return v9;
}

double static EffortUtilities.sendPostWorkoutAnalytics(workout:perceivedEffortQuantity:estimatedEffortQuantity:healthStore:)(void *a1, void *a2, void *a3, void *a4)
{
  v13[0] = 0xD000000000000025;
  v13[1] = 0x800000020CBA4420;
  v13[2] = [a1 workoutActivityType];
  IsIndoor = _HKWorkoutIsIndoor(a1);
  v15 = a2;
  v16 = a3;
  v17 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObjectCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v8 = a3;

  v9 = a2;
  v10 = v8;

  v11 = v9;
  _s9WorkoutUI15EffortUtilitiesC27sendAnalyticsEventIfAllowed33_1423374DD11350007FB77D5156E422BBLLyyAA0fG0AELL_pFZTf4en_nAA05EndOfafG0AELLV_Tt0g5(v13);

  specialized static EffortUtilities._sendLoadAndVitalsAnalyticsEvent(healthStore:)(a4);

  return result;
}

void static EffortUtilities.sendDidDeeplinktoVitalsAnalyticsEvent(source:vitalsState:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  if (v9 == 3)
  {
    v10 = 0;
    goto LABEL_5;
  }

  if (v9 == 4)
  {
    v10 = 1;
LABEL_5:
    _s9WorkoutUI15EffortUtilitiesC27sendAnalyticsEventIfAllowed33_1423374DD11350007FB77D5156E422BBLLyyAA0fG0AELL_pFZTf4en_nAA018DeepLinkedToVitalsfG0AELLV_Tt0B5(0xD00000000000002CLL, 0x800000020CBA4450, v10 | (*a2 << 8));

    return;
  }

  v11 = v6;
  static WOLog.trainingLoad.getter();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v25 = v15;
    *v14 = 136315138;
    v16 = 0xE600000000000000;
    v17 = 0x736C61746976;
    v18 = 0x800000020CB931F0;
    v19 = 0xD00000000000001FLL;
    if (v9 != 2)
    {
      v19 = 0xD000000000000014;
      v18 = 0x800000020CB93230;
    }

    if (v9)
    {
      v17 = 0xD000000000000015;
      v16 = 0x800000020CB931D0;
    }

    if (v9 <= 1)
    {
      v20 = v17;
    }

    else
    {
      v20 = v19;
    }

    if (v9 <= 1)
    {
      v21 = v16;
    }

    else
    {
      v21 = v18;
    }

    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v25);

    *(v14 + 4) = v22;
    _os_log_impl(&dword_20C66F000, v12, v13, "Unexpected source for deeplink analytics event: %s", v14, 0xCu);
    v23 = __swift_destroy_boxed_opaque_existential_0Tm_4(v15);
    MEMORY[0x20F30E080](v15, -1, -1, v23);
    MEMORY[0x20F30E080](v14, -1, -1);
  }

  (*(v5 + 8))(v8, v11);
}

void closure #1 in static EffortUtilities.sendAnalyticsEventIfAllowed(_:)(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &aBlock[-1] - v7;
  v9 = [objc_opt_self() sharedConnection];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 isHealthDataSubmissionAllowed];

    if (v11)
    {
      static WOLog.trainingLoad.getter();
      outlined init with copy of AnalyticsEvent(a1, aBlock);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v33 = v2;
        v16 = v15;
        *&v38[0] = v15;
        *v14 = 136315138;
        v17 = v35;
        v18 = v36;
        __swift_project_boxed_opaque_existential_1(aBlock, v35);
        v19 = (*(v18 + 1))(v17, v18);
        v21 = v20;
        __swift_destroy_boxed_opaque_existential_0Tm_4(aBlock);
        v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, v38);

        *(v14 + 4) = v22;
        _os_log_impl(&dword_20C66F000, v12, v13, "Preparing to send analytics for event %s.", v14, 0xCu);
        v23 = __swift_destroy_boxed_opaque_existential_0Tm_4(v16);
        MEMORY[0x20F30E080](v16, -1, -1, v23);
        MEMORY[0x20F30E080](v14, -1, -1);

        (*(v3 + 8))(v8, v33);
      }

      else
      {

        (*(v3 + 8))(v8, v2);
        __swift_destroy_boxed_opaque_existential_0Tm_4(aBlock);
      }

      v27 = a1[3];
      v28 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v27);
      v29 = (*(v28 + 8))(v27, v28);
      v30 = MEMORY[0x20F30BAD0](v29);

      outlined init with copy of AnalyticsEvent(a1, v38);
      v31 = swift_allocObject();
      outlined init with take of AnalyticsEvent(v38, v31 + 16);
      v36 = partial apply for closure #1 in closure #1 in static EffortUtilities.sendAnalyticsEventIfAllowed(_:);
      v37 = v31;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
      v35 = &block_descriptor_10_2;
      v32 = _Block_copy(aBlock);

      AnalyticsSendEventLazy();
      _Block_release(v32);
    }

    else
    {
      static WOLog.trainingLoad.getter();
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_20C66F000, v24, v25, "Health data submission not allowed. Not sending analytics.", v26, 2u);
        MEMORY[0x20F30E080](v26, -1, -1);
      }

      (*(v3 + 8))(v5, v2);
    }
  }

  else
  {
    __break(1u);
  }
}

unint64_t specialized WorkoutTrainingLoadAnalyticsEvent.generatePayload()()
{
  v1 = type metadata accessor for AppleExertionScale();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v44 = &v42[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore18AppleExertionScaleOSg_ADtMd, &_s11WorkoutCore18AppleExertionScaleOSg_ADtMR);
  MEMORY[0x28223BE20](v45);
  v47 = &v42[-v4];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore18AppleExertionScaleOSgMd, &_s11WorkoutCore18AppleExertionScaleOSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v49 = &v42[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v48 = &v42[-v8];
  MEMORY[0x28223BE20](v9);
  v46 = &v42[-v10];
  MEMORY[0x28223BE20](v11);
  v13 = &v42[-v12];
  MEMORY[0x28223BE20](v14);
  v16 = &v42[-v15];
  v17 = *(v0 + 40);
  AppleExertionScale.init(quantity:)();
  v18 = *(v0 + 32);
  AppleExertionScale.init(quantity:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMd, &_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20CB6DA60;
  *(inited + 32) = 0x7974697669746361;
  v51 = inited + 32;
  *(inited + 40) = 0xEC00000065707954;
  v20 = HKWorkoutActivityType.description.getter();
  v21 = MEMORY[0x20F30BAD0](v20);

  *(inited + 48) = v21;
  *(inited + 56) = 0x6E6F697461636F6CLL;
  *(inited + 64) = 0xE800000000000000;
  v50 = v0;
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 80) = 0x6174536E4974706FLL;
  *(inited + 88) = 0xEB00000000737574;
  *(inited + 96) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  *(inited + 104) = 0xD000000000000015;
  *(inited + 112) = 0x800000020CBA4550;
  v52 = v2;
  v22 = *(v2 + 48);
  v23 = v13;
  *(inited + 120) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  *(inited + 128) = 0xD000000000000019;
  *(inited + 136) = 0x800000020CBA4570;
  if (v22(v13, 1, v1) == 1 || v22(v16, 1, v1) == 1)
  {
    v24 = 0;
    v25 = &unk_277DA8000;
    v26 = v49;
    v27 = v48;
    goto LABEL_4;
  }

  v35 = *(v45 + 48);
  v36 = v47;
  outlined init with copy of AppleExertionScale?(v13, v47);
  outlined init with copy of AppleExertionScale?(v16, &v36[v35]);
  if (v22(v36, 1, v1) == 1)
  {
    v37 = v22(&v36[v35], 1, v1) == 1;
    v38 = v36;
    v25 = &unk_277DA8000;
    v26 = v49;
    v27 = v48;
    if (v37)
    {
      outlined destroy of SleepingSampleDaySummary?(v38, &_s11WorkoutCore18AppleExertionScaleOSgMd, &_s11WorkoutCore18AppleExertionScaleOSgMR);
      v24 = 0;
      goto LABEL_4;
    }

    goto LABEL_17;
  }

  outlined init with copy of AppleExertionScale?(v36, v46);
  v39 = v22(&v36[v35], 1, v1);
  v40 = v36;
  v25 = &unk_277DA8000;
  v26 = v49;
  v27 = v48;
  if (v39 == 1)
  {
    v41 = v40;
    (*(v52 + 8))(v46, v1);
    v38 = v41;
LABEL_17:
    outlined destroy of SleepingSampleDaySummary?(v38, &_s11WorkoutCore18AppleExertionScaleOSg_ADtMd, &_s11WorkoutCore18AppleExertionScaleOSg_ADtMR);
    v24 = 1;
    goto LABEL_4;
  }

  (*(v52 + 32))(v44, &v40[v35], v1);
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type AppleExertionScale and conformance AppleExertionScale, MEMORY[0x277D7E2A0], MEMORY[0x277D7E2B0]);
  v43 = dispatch thunk of static Equatable.== infix(_:_:)();
  v45 = *(v52 + 8);
  (v45)(v44, v1);
  (v45)(v46, v1);
  outlined destroy of SleepingSampleDaySummary?(v47, &_s11WorkoutCore18AppleExertionScaleOSgMd, &_s11WorkoutCore18AppleExertionScaleOSgMR);
  v24 = v43 ^ 1;
LABEL_4:
  *(inited + 144) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  *(inited + 152) = 0xD000000000000010;
  *(inited + 160) = 0x800000020CBA4590;
  outlined init with copy of AppleExertionScale?(v16, v27);
  if (v22(v27, 1, v1) == 1)
  {
    outlined destroy of SleepingSampleDaySummary?(v27, &_s11WorkoutCore18AppleExertionScaleOSgMd, &_s11WorkoutCore18AppleExertionScaleOSgMR);
    v28 = 0;
  }

  else
  {
    v28 = AppleExertionScale.analyticsEffortDifference(from:)();
    (*(v52 + 8))(v27, v1);
  }

  *(inited + 168) = [objc_allocWithZone(MEMORY[0x277CCABB0]) v25[424]];
  *(inited + 176) = 0xD000000000000010;
  *(inited + 184) = 0x800000020CBA45B0;
  outlined init with copy of AppleExertionScale?(v16, v26);
  if (v22(v26, 1, v1) == 1)
  {
    outlined destroy of SleepingSampleDaySummary?(v26, &_s11WorkoutCore18AppleExertionScaleOSgMd, &_s11WorkoutCore18AppleExertionScaleOSgMR);
    v29 = 0;
  }

  else
  {
    v29 = AppleExertionScale.analyticsBucketDifference(from:)();
    (*(v52 + 8))(v26, v1);
  }

  *(inited + 192) = [objc_allocWithZone(MEMORY[0x277CCABB0]) v25[424]];
  v30 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObjectCTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So8NSObjectCtMd, &_sSS_So8NSObjectCtMR);
  swift_arrayDestroy();
  v31 = *(v50 + 48);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v53 = v30;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v31, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, &v53);

  v33 = v53;
  outlined destroy of SleepingSampleDaySummary?(v23, &_s11WorkoutCore18AppleExertionScaleOSgMd, &_s11WorkoutCore18AppleExertionScaleOSgMR);
  outlined destroy of SleepingSampleDaySummary?(v16, &_s11WorkoutCore18AppleExertionScaleOSgMd, &_s11WorkoutCore18AppleExertionScaleOSgMR);
  return v33;
}

{
  v47 = type metadata accessor for AppleExertionScale();
  v1 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v43 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore18AppleExertionScaleOSg_ADtMd, &_s11WorkoutCore18AppleExertionScaleOSg_ADtMR);
  MEMORY[0x28223BE20](v45);
  v46 = &v42 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore18AppleExertionScaleOSgMd, &_s11WorkoutCore18AppleExertionScaleOSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v51 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v48 = &v42 - v7;
  MEMORY[0x28223BE20](v8);
  v44 = &v42 - v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v42 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v42 - v14;
  v16 = *(v0 + 48);
  AppleExertionScale.init(quantity:)();
  v17 = *(v0 + 40);
  AppleExertionScale.init(quantity:)();
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMd, &_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20CB6DA60;
  *(inited + 32) = 0x7974697669746361;
  v49 = inited + 32;
  *(inited + 40) = 0xEC00000065707954;
  v19 = HKWorkoutActivityType.description.getter();
  v20 = MEMORY[0x20F30BAD0](v19);

  *(inited + 48) = v20;
  *(inited + 56) = 0x6E6F697461636F6CLL;
  *(inited + 64) = 0xE800000000000000;
  v52 = v0;
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 80) = 0x6174536E4974706FLL;
  *(inited + 88) = 0xEB00000000737574;
  *(inited + 96) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  *(inited + 104) = 0xD000000000000015;
  *(inited + 112) = 0x800000020CBA4550;
  v53 = v1;
  v21 = *(v1 + 48);
  v22 = v47;
  *(inited + 120) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  *(inited + 128) = 0xD000000000000019;
  *(inited + 136) = 0x800000020CBA4570;
  v54 = v12;
  if (v21(v12, 1, v22) == 1)
  {
    v23 = 0;
    v24 = v51;
    v25 = v15;
LABEL_5:
    v26 = v48;
    v27 = &unk_277DA8000;
    goto LABEL_6;
  }

  v25 = v15;
  if (v21(v15, 1, v22) == 1)
  {
    v23 = 0;
    v24 = v51;
    goto LABEL_5;
  }

  v36 = v46;
  v37 = *(v45 + 48);
  outlined init with copy of AppleExertionScale?(v54, v46);
  outlined init with copy of AppleExertionScale?(v15, v36 + v37);
  v27 = &unk_277DA8000;
  if (v21(v36, 1, v22) == 1)
  {
    v38 = v21((v36 + v37), 1, v22) == 1;
    v39 = v36;
    v24 = v51;
    v26 = v48;
    if (v38)
    {
      outlined destroy of SleepingSampleDaySummary?(v39, &_s11WorkoutCore18AppleExertionScaleOSgMd, &_s11WorkoutCore18AppleExertionScaleOSgMR);
      v23 = 0;
      goto LABEL_6;
    }

    goto LABEL_19;
  }

  v40 = v44;
  outlined init with copy of AppleExertionScale?(v36, v44);
  if (v21((v36 + v37), 1, v22) == 1)
  {
    (*(v53 + 8))(v40, v22);
    v39 = v36;
    v24 = v51;
    v26 = v48;
LABEL_19:
    outlined destroy of SleepingSampleDaySummary?(v39, &_s11WorkoutCore18AppleExertionScaleOSg_ADtMd, &_s11WorkoutCore18AppleExertionScaleOSg_ADtMR);
    v23 = 1;
    goto LABEL_6;
  }

  (*(v53 + 32))(v43, v36 + v37, v22);
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type AppleExertionScale and conformance AppleExertionScale, MEMORY[0x277D7E2A0], MEMORY[0x277D7E2B0]);
  LODWORD(v45) = dispatch thunk of static Equatable.== infix(_:_:)();
  v41 = *(v53 + 8);
  v41(v43, v22);
  v41(v44, v22);
  outlined destroy of SleepingSampleDaySummary?(v36, &_s11WorkoutCore18AppleExertionScaleOSgMd, &_s11WorkoutCore18AppleExertionScaleOSgMR);
  v23 = v45 ^ 1;
  v24 = v51;
  v26 = v48;
LABEL_6:
  *(inited + 144) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  *(inited + 152) = 0xD000000000000010;
  *(inited + 160) = 0x800000020CBA4590;
  outlined init with copy of AppleExertionScale?(v25, v26);
  if (v21(v26, 1, v22) == 1)
  {
    outlined destroy of SleepingSampleDaySummary?(v26, &_s11WorkoutCore18AppleExertionScaleOSgMd, &_s11WorkoutCore18AppleExertionScaleOSgMR);
    v28 = 0;
  }

  else
  {
    v28 = AppleExertionScale.analyticsEffortDifference(from:)();
    (*(v53 + 8))(v26, v22);
  }

  *(inited + 168) = [objc_allocWithZone(MEMORY[0x277CCABB0]) v27[424]];
  *(inited + 176) = 0xD000000000000010;
  *(inited + 184) = 0x800000020CBA45B0;
  outlined init with copy of AppleExertionScale?(v25, v24);
  if (v21(v24, 1, v22) == 1)
  {
    outlined destroy of SleepingSampleDaySummary?(v24, &_s11WorkoutCore18AppleExertionScaleOSgMd, &_s11WorkoutCore18AppleExertionScaleOSgMR);
    v29 = 0;
  }

  else
  {
    v29 = AppleExertionScale.analyticsBucketDifference(from:)();
    (*(v53 + 8))(v24, v22);
  }

  *(inited + 192) = [objc_allocWithZone(MEMORY[0x277CCABB0]) v27[424]];
  v30 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObjectCTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So8NSObjectCtMd, &_sSS_So8NSObjectCtMR);
  swift_arrayDestroy();
  v31 = swift_initStackObject();
  *(v31 + 16) = xmmword_20CB5DA70;
  *(v31 + 32) = 0xD000000000000013;
  *(v31 + 40) = 0x800000020CBA45D0;
  *(v31 + 48) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v32 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObjectCTt0g5Tf4g_n(v31);
  swift_setDeallocating();
  outlined destroy of SleepingSampleDaySummary?(v31 + 32, &_sSS_So8NSObjectCtMd, &_sSS_So8NSObjectCtMR);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v55[0] = v30;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v32, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, v55);

  v34 = v55[0];
  outlined destroy of SleepingSampleDaySummary?(v54, &_s11WorkoutCore18AppleExertionScaleOSgMd, &_s11WorkoutCore18AppleExertionScaleOSgMR);
  outlined destroy of SleepingSampleDaySummary?(v25, &_s11WorkoutCore18AppleExertionScaleOSgMd, &_s11WorkoutCore18AppleExertionScaleOSgMR);
  return v34;
}

uint64_t ViewedTrainingLoadDetailsAnalyticsEvent.generatePayload()()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So8NSNumberCtGMd, &_ss23_ContiguousArrayStorageCySS_So8NSNumberCtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20CB5DA80;
  *(inited + 32) = 0x6174536E4974706FLL;
  *(inited + 40) = 0xEB00000000737574;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  *(inited + 56) = 0x656372756F73;
  *(inited + 64) = 0xE600000000000000;
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v3 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSNumberCTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So8NSNumberCtMd, &_sSS_So8NSNumberCtMR);
  swift_arrayDestroy();
  specialized _dictionaryUpCast<A, B, C, D>(_:)(v3);
  v5 = v4;

  return v5;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DeepLinkedToVitalsAnalyticsEvent.DeepLinkSource()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DeepLinkedToVitalsAnalyticsEvent.DeepLinkSource(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v2);
  return Hasher._finalize()();
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance DeepLinkedToVitalsAnalyticsEvent.DeepLinkSource@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t DeepLinkedToVitalsAnalyticsEvent.generatePayload()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So8NSNumberCtGMd, &_ss23_ContiguousArrayStorageCySS_So8NSNumberCtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20CB5DA80;
  *(inited + 32) = 0xD000000000000014;
  *(inited + 40) = 0x800000020CBA4530;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 56) = 0x656372756F73;
  *(inited + 64) = 0xE600000000000000;
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v4 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSNumberCTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So8NSNumberCtMd, &_sSS_So8NSNumberCtMR);
  swift_arrayDestroy();
  specialized _dictionaryUpCast<A, B, C, D>(_:)(v4);
  v6 = v5;

  return v6;
}

uint64_t protocol witness for AnalyticsEvent.eventName.getter in conformance DeepLinkedToVitalsAnalyticsEvent()
{
  v1 = *v0;

  return v1;
}

double _s9WorkoutUI15EffortUtilitiesC27sendAnalyticsEventIfAllowed33_1423374DD11350007FB77D5156E422BBLLyyAA0fG0AELL_pFZTf4en_nAA025ViewedTrainingLoadDetailsfG0AELLV_Tt0B5(uint64_t a1, uint64_t a2, char a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v17 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v9 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = &unk_2823A5290;
  v24 = &protocol witness table for ViewedTrainingLoadDetailsAnalyticsEvent;
  v21[0] = a1;
  v21[1] = a2;
  v22 = a3;
  v12 = one-time initialization token for analyticsQueue;

  if (v12 != -1)
  {
    swift_once();
  }

  outlined init with copy of AnalyticsEvent(v21, v20);
  v13 = swift_allocObject();
  outlined init with take of AnalyticsEvent(v20, v13 + 16);
  aBlock[4] = closure #1 in static EffortUtilities.sendAnalyticsEventIfAllowed(_:)partial apply;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_44;
  v14 = _Block_copy(aBlock);
  static DispatchQoS.unspecified.getter();
  v18 = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_4(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F30C1F0](0, v11, v8, v14);
  _Block_release(v14);
  (*(v17 + 8))(v8, v6);
  (*(v9 + 8))(v11, v16);

  return __swift_destroy_boxed_opaque_existential_0Tm_4(v21);
}

double _s9WorkoutUI15EffortUtilitiesC27sendAnalyticsEventIfAllowed33_1423374DD11350007FB77D5156E422BBLLyyAA0fG0AELL_pFZTf4en_nAA05EndOfafG0AELLV_Tt0g5(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v6 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[3] = &unk_2823A5310;
  v19[4] = &protocol witness table for EndOfWorkoutAnalyticsEvent;
  v9 = swift_allocObject();
  v19[0] = v9;
  v10 = *(a1 + 16);
  *(v9 + 16) = *a1;
  *(v9 + 32) = v10;
  *(v9 + 48) = *(a1 + 32);
  *(v9 + 64) = *(a1 + 48);
  outlined init with copy of EndOfWorkoutAnalyticsEvent(a1, aBlock);
  if (one-time initialization token for analyticsQueue != -1)
  {
    swift_once();
  }

  v14[1] = static EffortUtilities.analyticsQueue;
  outlined init with copy of AnalyticsEvent(v19, v17);
  v11 = swift_allocObject();
  outlined init with take of AnalyticsEvent(v17, v11 + 16);
  aBlock[4] = closure #1 in static EffortUtilities.sendAnalyticsEventIfAllowed(_:)partial apply;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_37_1;
  v12 = _Block_copy(aBlock);
  static DispatchQoS.unspecified.getter();
  v16 = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_4(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F30C1F0](0, v8, v5, v12);
  _Block_release(v12);
  (*(v3 + 8))(v5, v2);
  (*(v6 + 8))(v8, v15);

  return __swift_destroy_boxed_opaque_existential_0Tm_4(v19);
}

double _s9WorkoutUI15EffortUtilitiesC27sendAnalyticsEventIfAllowed33_1423374DD11350007FB77D5156E422BBLLyyAA0fG0AELL_pFZTf4en_nAA07UpdatedcfG0AELLV_Tt0g5(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v6 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[3] = &unk_2823A5420;
  v19[4] = &protocol witness table for UpdatedEffortAnalyticsEvent;
  v9 = swift_allocObject();
  v19[0] = v9;
  v10 = *(a1 + 16);
  *(v9 + 16) = *a1;
  *(v9 + 32) = v10;
  *(v9 + 48) = *(a1 + 32);
  *(v9 + 64) = *(a1 + 48);
  outlined init with copy of UpdatedEffortAnalyticsEvent(a1, aBlock);
  if (one-time initialization token for analyticsQueue != -1)
  {
    swift_once();
  }

  v14[1] = static EffortUtilities.analyticsQueue;
  outlined init with copy of AnalyticsEvent(v19, v17);
  v11 = swift_allocObject();
  outlined init with take of AnalyticsEvent(v17, v11 + 16);
  aBlock[4] = closure #1 in static EffortUtilities.sendAnalyticsEventIfAllowed(_:)partial apply;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_20;
  v12 = _Block_copy(aBlock);
  static DispatchQoS.unspecified.getter();
  v16 = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_4(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F30C1F0](0, v8, v5, v12);
  _Block_release(v12);
  (*(v3 + 8))(v5, v2);
  (*(v6 + 8))(v8, v15);

  return __swift_destroy_boxed_opaque_existential_0Tm_4(v19);
}

double _s9WorkoutUI15EffortUtilitiesC27sendAnalyticsEventIfAllowed33_1423374DD11350007FB77D5156E422BBLLyyAA0fG0AELL_pFZTf4en_nAA018DeepLinkedToVitalsfG0AELLV_Tt0B5(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = a3;
  v6 = a3 >> 8;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v18 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v10 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = &unk_2823A54B0;
  v26 = &protocol witness table for DeepLinkedToVitalsAnalyticsEvent;
  v22[0] = a1;
  v22[1] = a2;
  v23 = v3 & 1;
  v24 = v6;
  v13 = one-time initialization token for analyticsQueue;

  if (v13 != -1)
  {
    swift_once();
  }

  outlined init with copy of AnalyticsEvent(v22, v21);
  v14 = swift_allocObject();
  outlined init with take of AnalyticsEvent(v21, v14 + 16);
  aBlock[4] = partial apply for closure #1 in static EffortUtilities.sendAnalyticsEventIfAllowed(_:);
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_41;
  v15 = _Block_copy(aBlock);
  static DispatchQoS.unspecified.getter();
  v19 = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_4(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F30C1F0](0, v12, v9, v15);
  _Block_release(v15);
  (*(v18 + 8))(v9, v7);
  (*(v10 + 8))(v12, v17);

  return __swift_destroy_boxed_opaque_existential_0Tm_4(v22);
}

double _s9WorkoutUI15EffortUtilitiesC27sendAnalyticsEventIfAllowed33_1423374DD11350007FB77D5156E422BBLLyyAA0fG0AELL_pFZTf4en_nAA013LoadAndVitalsfG0AELLV_Tt0g5(uint64_t a1, uint64_t a2, char a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v17 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v9 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = &unk_2823A53A0;
  v24 = &protocol witness table for LoadAndVitalsAnalyticsEvent;
  v21[0] = a1;
  v21[1] = a2;
  v22 = a3;
  v12 = one-time initialization token for analyticsQueue;

  if (v12 != -1)
  {
    swift_once();
  }

  outlined init with copy of AnalyticsEvent(v21, v20);
  v13 = swift_allocObject();
  outlined init with take of AnalyticsEvent(v20, v13 + 16);
  aBlock[4] = closure #1 in static EffortUtilities.sendAnalyticsEventIfAllowed(_:)partial apply;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_27;
  v14 = _Block_copy(aBlock);
  static DispatchQoS.unspecified.getter();
  v18 = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_4(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F30C1F0](0, v11, v8, v14);
  _Block_release(v14);
  (*(v17 + 8))(v8, v6);
  (*(v9 + 8))(v11, v16);

  return __swift_destroy_boxed_opaque_existential_0Tm_4(v21);
}