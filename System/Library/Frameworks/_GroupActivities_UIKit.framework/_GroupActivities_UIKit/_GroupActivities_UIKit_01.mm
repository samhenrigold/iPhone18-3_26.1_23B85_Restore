id CustomReactionPickerEntryView.__allocating_init(frame:textContainer:)(void *a1, double a2, double a3, double a4, double a5)
{
  v7 = [objc_allocWithZone(v5) initWithFrame:a1 textContainer:{a2, a3, a4, a5}];

  return v7;
}

id CustomReactionPickerEntryView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CustomReactionPickerEntryView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t CustomReactionPicker.model.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
  }

  else
  {
    v6 = type metadata accessor for ReactionPickerViewModel(a1);
    lazy protocol witness table accessor for type ReactionPickerViewModel and conformance ReactionPickerViewModel(v6, v7, v8, v9);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ReactionPickerViewModel and conformance ReactionPickerViewModel(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = lazy protocol witness table cache variable for type ReactionPickerViewModel and conformance ReactionPickerViewModel;
  if (!lazy protocol witness table cache variable for type ReactionPickerViewModel and conformance ReactionPickerViewModel)
  {
    type metadata accessor for ReactionPickerViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ReactionPickerViewModel and conformance ReactionPickerViewModel);
  }

  return result;
}

uint64_t CustomReactionPicker.$model.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for ReactionPickerViewModel(0);
  lazy protocol witness table accessor for type ReactionPickerViewModel and conformance ReactionPickerViewModel(v4, v5, v6, v7);

  return EnvironmentObject.projectedValue.getter();
}

id CustomReactionPicker.makeUIView(context:)()
{
  v0 = objc_allocWithZone(type metadata accessor for CustomReactionPickerEntryView());

  return [v0 init];
}

uint64_t CustomReactionPicker.updateUIView(_:context:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v5 = *(*a3 + 368);

    v7 = v5(v6);
    v9 = v8;

    return (*((*MEMORY[0x277D85000] & *a1) + 0x60))(v7, v9);
  }

  else
  {
    v11 = type metadata accessor for ReactionPickerViewModel(0);
    lazy protocol witness table accessor for type ReactionPickerViewModel and conformance ReactionPickerViewModel(v11, v12, v13, v14);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t CustomReactionPicker.init()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for ReactionPickerViewModel(0);
  lazy protocol witness table accessor for type ReactionPickerViewModel and conformance ReactionPickerViewModel(v4, v5, v6, v7);

  return EnvironmentObject.init()();
}

unint64_t lazy protocol witness table accessor for type CustomReactionPicker and conformance CustomReactionPicker()
{
  result = lazy protocol witness table cache variable for type CustomReactionPicker and conformance CustomReactionPicker;
  if (!lazy protocol witness table cache variable for type CustomReactionPicker and conformance CustomReactionPicker)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomReactionPicker and conformance CustomReactionPicker);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CustomReactionPicker and conformance CustomReactionPicker;
  if (!lazy protocol witness table cache variable for type CustomReactionPicker and conformance CustomReactionPicker)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomReactionPicker and conformance CustomReactionPicker);
  }

  return result;
}

id protocol witness for UIViewRepresentable.makeUIView(context:) in conformance CustomReactionPicker()
{
  v0 = objc_allocWithZone(type metadata accessor for CustomReactionPickerEntryView());

  return [v0 init];
}

uint64_t protocol witness for UIViewRepresentable.updateUIView(_:context:) in conformance CustomReactionPicker(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*v4)
  {
    v6 = *(**v4 + 368);

    v8 = v6(v7);
    v10 = v9;

    return (*((*MEMORY[0x277D85000] & *a1) + 0x60))(v8, v10);
  }

  else
  {
    v12 = type metadata accessor for ReactionPickerViewModel(0);
    lazy protocol witness table accessor for type ReactionPickerViewModel and conformance ReactionPickerViewModel(v12, v13, v14, v15);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance CustomReactionPicker(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type CustomReactionPicker and conformance CustomReactionPicker();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance CustomReactionPicker(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type CustomReactionPicker and conformance CustomReactionPicker();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void protocol witness for View.body.getter in conformance CustomReactionPicker(uint64_t a1)
{
  lazy protocol witness table accessor for type CustomReactionPicker and conformance CustomReactionPicker();
  UIViewRepresentable.body.getter();
  __break(1u);
}

uint64_t getEnumTagSinglePayload for CustomReactionPicker(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for CustomReactionPicker(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2;
    }
  }

  return result;
}

uint64_t ReactionPickerBubble.model.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
  }

  else
  {
    type metadata accessor for ReactionPickerViewModel(a1);
    lazy protocol witness table accessor for type ReactionPickerViewModel and conformance ReactionPickerViewModel(&lazy protocol witness table cache variable for type ReactionPickerViewModel and conformance ReactionPickerViewModel, type metadata accessor for ReactionPickerViewModel, &protocol conformance descriptor for ReactionPickerViewModel);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t ReactionPickerBubble.$model.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ReactionPickerViewModel(0);
  lazy protocol witness table accessor for type ReactionPickerViewModel and conformance ReactionPickerViewModel(&lazy protocol witness table cache variable for type ReactionPickerViewModel and conformance ReactionPickerViewModel, type metadata accessor for ReactionPickerViewModel, &protocol conformance descriptor for ReactionPickerViewModel);

  return EnvironmentObject.projectedValue.getter();
}

uint64_t ReactionPickerBubble.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGMd, &_ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGMR);
  MEMORY[0x28223BE20](v10);
  v12 = &v33 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA7ForEachVySaySi6offset_SS7elementtGSiAA15ModifiedContentVy22_GroupActivities_UIKit14ReactionButtonVAA18_AnimationModifierVySbGGG_ALyAA6ZStackVyAA012_ConditionalK0VyALyAsA013_TraitWritingR0VyAA010TransitionU3KeyVGGALyALyALyAM13MoreReactionsVAA12_ScaleEffectVGARGA1_GGGAQySSSgGGtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA7ForEachVySaySi6offset_SS7elementtGSiAA15ModifiedContentVy22_GroupActivities_UIKit14ReactionButtonVAA18_AnimationModifierVySbGGG_ALyAA6ZStackVyAA012_ConditionalK0VyALyAsA013_TraitWritingR0VyAA010TransitionU3KeyVGGALyALyALyAM13MoreReactionsVAA12_ScaleEffectVGARGA1_GGGAQySSSgGGtGGMR);
  MEMORY[0x28223BE20](v13);
  v15 = &v33 - v14;
  *v15 = static VerticalAlignment.center.getter();
  *(v15 + 1) = 0x4030800000000000;
  v15[16] = 0;
  v16 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA7ForEachVySaySi6offset_SS7elementtGSiAA15ModifiedContentVy22_GroupActivities_UIKit14ReactionButtonVAA18_AnimationModifierVySbGGG_APyAA6ZStackVyAA012_ConditionalN0VyAPyAwA013_TraitWritingU0VyAA010TransitionX3KeyVGGAPyAPyAPyAQ13MoreReactionsVAA12_ScaleEffectVGAVGA5_GGGAUySSSgGGtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA7ForEachVySaySi6offset_SS7elementtGSiAA15ModifiedContentVy22_GroupActivities_UIKit14ReactionButtonVAA18_AnimationModifierVySbGGG_APyAA6ZStackVyAA012_ConditionalN0VyAPyAwA013_TraitWritingU0VyAA010TransitionX3KeyVGGAPyAPyAPyAQ13MoreReactionsVAA12_ScaleEffectVGAVGA5_GGGAUySSSgGGtGGMR) + 44)];
  v36 = a1;
  closure #1 in ReactionPickerBubble.body.getter(a1, a2, v6, a4, v16);
  v17 = *MEMORY[0x277CDFA00];
  v18 = type metadata accessor for DynamicTypeSize();
  (*(*(v18 - 8) + 104))(v12, v17, v18);
  lazy protocol witness table accessor for type ReactionPickerViewModel and conformance ReactionPickerViewModel(&lazy protocol witness table cache variable for type DynamicTypeSize and conformance DynamicTypeSize, MEMORY[0x277CDFA28], MEMORY[0x277CDFA48]);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    v35 = v6;
    lazy protocol witness table accessor for type Published<GroupActivitySharingResult?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type HStack<TupleView<(ForEach<[(offset: Int, element: String)], Int, ModifiedContent<ReactionButton, _AnimationModifier<Bool>>>, ModifiedContent<ZStack<_ConditionalContent<ModifiedContent<ModifiedContent<ReactionButton, _AnimationModifier<Bool>>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<ModifiedContent<ModifiedContent<MoreReactions, _ScaleEffect>, _AnimationModifier<Bool>>, _TraitWritingModifier<TransitionTraitKey>>>>, _AnimationModifier<String?>>)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA7ForEachVySaySi6offset_SS7elementtGSiAA15ModifiedContentVy22_GroupActivities_UIKit14ReactionButtonVAA18_AnimationModifierVySbGGG_ALyAA6ZStackVyAA012_ConditionalK0VyALyAsA013_TraitWritingR0VyAA010TransitionU3KeyVGGALyALyALyAM13MoreReactionsVAA12_ScaleEffectVGARGA1_GGGAQySSSgGGtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA7ForEachVySaySi6offset_SS7elementtGSiAA15ModifiedContentVy22_GroupActivities_UIKit14ReactionButtonVAA18_AnimationModifierVySbGGG_ALyAA6ZStackVyAA012_ConditionalK0VyALyAsA013_TraitWritingR0VyAA010TransitionU3KeyVGGALyALyALyAM13MoreReactionsVAA12_ScaleEffectVGARGA1_GGGAQySSSgGGtGGMR, MEMORY[0x277CE1138]);
    v34 = a2;
    v20 = v36;
    lazy protocol witness table accessor for type Published<GroupActivitySharingResult?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PartialRangeThrough<DynamicTypeSize> and conformance PartialRangeThrough<A>, &_ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGMd, &_ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGMR, MEMORY[0x277D84470]);
    View.dynamicTypeSize<A>(_:)();
    outlined destroy of NSObject?(v12, &_ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGMd, &_ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGMR);
    outlined destroy of NSObject?(v15, &_s7SwiftUI6HStackVyAA9TupleViewVyAA7ForEachVySaySi6offset_SS7elementtGSiAA15ModifiedContentVy22_GroupActivities_UIKit14ReactionButtonVAA18_AnimationModifierVySbGGG_ALyAA6ZStackVyAA012_ConditionalK0VyALyAsA013_TraitWritingR0VyAA010TransitionU3KeyVGGALyALyALyAM13MoreReactionsVAA12_ScaleEffectVGARGA1_GGGAQySSSgGGtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA7ForEachVySaySi6offset_SS7elementtGSiAA15ModifiedContentVy22_GroupActivities_UIKit14ReactionButtonVAA18_AnimationModifierVySbGGG_ALyAA6ZStackVyAA012_ConditionalK0VyALyAsA013_TraitWritingR0VyAA010TransitionU3KeyVGGALyALyALyAM13MoreReactionsVAA12_ScaleEffectVGARGA1_GGGAQySSSgGGtGGMR);
    v21 = swift_allocObject();
    v22 = v34;
    *(v21 + 16) = v20;
    *(v21 + 24) = v22;
    v23 = v35 & 1;
    *(v21 + 32) = v35 & 1;
    *(v21 + 40) = a4;
    v24 = (a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicgH0O5BoundRtd__lFQOyAA6HStackVyAA05TupleE0VyAA7ForEachVySaySi6offset_SS7elementtGSiACy22_GroupActivities_UIKit14ReactionButtonVAA18_AnimationModifierVySbGGG_ACyAA6ZStackVyAA012_ConditionalD0VyACyAzA013_TraitWritingW0VyAA010TransitionZ3KeyVGGACyACyACyAT13MoreReactionsVAA12_ScaleEffectVGAYGA8_GGGAXySSSgGGtGG_s19PartialRangeThroughVyAHGQo_AA017_AppearanceActionW0VGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicgH0O5BoundRtd__lFQOyAA6HStackVyAA05TupleE0VyAA7ForEachVySaySi6offset_SS7elementtGSiACy22_GroupActivities_UIKit14ReactionButtonVAA18_AnimationModifierVySbGGG_ACyAA6ZStackVyAA012_ConditionalD0VyACyAzA013_TraitWritingW0VyAA010TransitionZ3KeyVGGACyACyACyAT13MoreReactionsVAA12_ScaleEffectVGAYGA8_GGGAXySSSgGGtGG_s19PartialRangeThroughVyAHGQo_AA017_AppearanceActionW0VGMR) + 36));
    *v24 = partial apply for closure #2 in ReactionPickerBubble.body.getter;
    v24[1] = v21;
    v24[2] = 0;
    v24[3] = 0;
    v25 = swift_allocObject();
    *(v25 + 16) = v20;
    *(v25 + 24) = v22;
    *(v25 + 32) = v23;
    *(v25 + 40) = a4;
    v26 = (a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicgH0O5BoundRtd__lFQOyAA6HStackVyAA05TupleE0VyAA7ForEachVySaySi6offset_SS7elementtGSiACy22_GroupActivities_UIKit14ReactionButtonVAA18_AnimationModifierVySbGGG_ACyAA6ZStackVyAA012_ConditionalD0VyACyAzA013_TraitWritingW0VyAA010TransitionZ3KeyVGGACyACyACyAT13MoreReactionsVAA12_ScaleEffectVGAYGA8_GGGAXySSSgGGtGG_s19PartialRangeThroughVyAHGQo_AA017_AppearanceActionW0VGA29_GMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicgH0O5BoundRtd__lFQOyAA6HStackVyAA05TupleE0VyAA7ForEachVySaySi6offset_SS7elementtGSiACy22_GroupActivities_UIKit14ReactionButtonVAA18_AnimationModifierVySbGGG_ACyAA6ZStackVyAA012_ConditionalD0VyACyAzA013_TraitWritingW0VyAA010TransitionZ3KeyVGGACyACyACyAT13MoreReactionsVAA12_ScaleEffectVGAYGA8_GGGAXySSSgGGtGG_s19PartialRangeThroughVyAHGQo_AA017_AppearanceActionW0VGA29_GMR) + 36));
    *v26 = 0;
    v26[1] = 0;
    v26[2] = partial apply for closure #3 in ReactionPickerBubble.body.getter;
    v26[3] = v25;
    swift_retain_n();
    swift_retain_n();
    LOBYTE(v25) = static Edge.Set.all.getter();
    v27 = a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicgH0O5BoundRtd__lFQOyAA6HStackVyAA05TupleE0VyAA7ForEachVySaySi6offset_SS7elementtGSiACy22_GroupActivities_UIKit14ReactionButtonVAA18_AnimationModifierVySbGGG_ACyAA6ZStackVyAA012_ConditionalD0VyACyAzA013_TraitWritingW0VyAA010TransitionZ3KeyVGGACyACyACyAT13MoreReactionsVAA12_ScaleEffectVGAYGA8_GGGAXySSSgGGtGG_s19PartialRangeThroughVyAHGQo_AA017_AppearanceActionW0VGA29_GAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicgH0O5BoundRtd__lFQOyAA6HStackVyAA05TupleE0VyAA7ForEachVySaySi6offset_SS7elementtGSiACy22_GroupActivities_UIKit14ReactionButtonVAA18_AnimationModifierVySbGGG_ACyAA6ZStackVyAA012_ConditionalD0VyACyAzA013_TraitWritingW0VyAA010TransitionZ3KeyVGGACyACyACyAT13MoreReactionsVAA12_ScaleEffectVGAYGA8_GGGAXySSSgGGtGG_s19PartialRangeThroughVyAHGQo_AA017_AppearanceActionW0VGA29_GAA14_PaddingLayoutVGMR) + 36);
    *v27 = v25;
    *(v27 + 8) = xmmword_23B758980;
    *(v27 + 24) = xmmword_23B758990;
    *(v27 + 40) = 0;
    v28 = static Alignment.bottomTrailing.getter();
    v30 = v29;
    v31 = (a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicgH0O5BoundRtd__lFQOyAA6HStackVyAA05TupleE0VyAA7ForEachVySaySi6offset_SS7elementtGSiACy22_GroupActivities_UIKit14ReactionButtonVAA18_AnimationModifierVySbGGG_ACyAA6ZStackVyAA012_ConditionalD0VyACyAzA013_TraitWritingW0VyAA010TransitionZ3KeyVGGACyACyACyAT13MoreReactionsVAA12_ScaleEffectVGAYGA8_GGGAXySSSgGGtGG_s19PartialRangeThroughVyAHGQo_AA017_AppearanceActionW0VGA29_GAA14_PaddingLayoutVGAA011_BackgroundW0VyA3_yAA14GeometryReaderVyACyAA06_ShapeE0VyAA11ScaledShapeVyAT13PopoverBubbleVGAA8MaterialVGAYGGACyA40_yA42_yAA7CapsuleVGA47_GAYGGGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicgH0O5BoundRtd__lFQOyAA6HStackVyAA05TupleE0VyAA7ForEachVySaySi6offset_SS7elementtGSiACy22_GroupActivities_UIKit14ReactionButtonVAA18_AnimationModifierVySbGGG_ACyAA6ZStackVyAA012_ConditionalD0VyACyAzA013_TraitWritingW0VyAA010TransitionZ3KeyVGGACyACyACyAT13MoreReactionsVAA12_ScaleEffectVGAYGA8_GGGAXySSSgGGtGG_s19PartialRangeThroughVyAHGQo_AA017_AppearanceActionW0VGA29_GAA14_PaddingLayoutVGAA011_BackgroundW0VyA3_yAA14GeometryReaderVyACyAA06_ShapeE0VyAA11ScaledShapeVyAT13PopoverBubbleVGAA8MaterialVGAYGGACyA40_yA42_yAA7CapsuleVGA47_GAYGGGGMR) + 36));
    closure #4 in ReactionPickerBubble.body.getter(v20, v22, v23, a4, v31);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_BackgroundModifierVyAA19_ConditionalContentVyAA14GeometryReaderVyAA08ModifiedF0VyAA10_ShapeViewVyAA06ScaledJ0Vy22_GroupActivities_UIKit13PopoverBubbleVGAA8MaterialVGAA010_AnimationD0VySbGGGAIyAKyAMyAA7CapsuleVGASGAWGGGMd, &_s7SwiftUI19_BackgroundModifierVyAA19_ConditionalContentVyAA14GeometryReaderVyAA08ModifiedF0VyAA10_ShapeViewVyAA06ScaledJ0Vy22_GroupActivities_UIKit13PopoverBubbleVGAA8MaterialVGAA010_AnimationD0VySbGGGAIyAKyAMyAA7CapsuleVGASGAWGGGMR);
    v32 = (v31 + *(result + 36));
    *v32 = v28;
    v32[1] = v30;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in ReactionPickerBubble.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v48 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySaySi6offset_SS7elementtGSiAA15ModifiedContentVy22_GroupActivities_UIKit14ReactionButtonVAA18_AnimationModifierVySbGGGMd, &_s7SwiftUI7ForEachVySaySi6offset_SS7elementtGSiAA15ModifiedContentVy22_GroupActivities_UIKit14ReactionButtonVAA18_AnimationModifierVySbGGGMR);
  v50 = *(v9 - 8);
  v51 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v49 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v52 = &v43 - v12;
  if (a1)
  {
    v13 = *(*a1 + 272);

    v15 = v13(v14);
    v16 = specialized _copySequenceToContiguousArray<A>(_:)(v15);

    *&v73 = v16;
    KeyPath = swift_getKeyPath();
    v17 = swift_allocObject();
    *(v17 + 16) = a1;
    *(v17 + 24) = a2;
    v18 = a3 & 1;
    *(v17 + 32) = v18;
    *(v17 + 40) = a4;
    *(v17 + 48) = xmmword_23B7589A0;
    v19 = swift_allocObject();
    *(v19 + 16) = partial apply for closure #1 in closure #1 in ReactionPickerBubble.body.getter;
    *(v19 + 24) = v17;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySi6offset_SS7elementtGMd, &_sSaySi6offset_SS7elementtGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy22_GroupActivities_UIKit14ReactionButtonVAA18_AnimationModifierVySbGGMd, &_s7SwiftUI15ModifiedContentVy22_GroupActivities_UIKit14ReactionButtonVAA18_AnimationModifierVySbGGMR);
    lazy protocol witness table accessor for type Published<GroupActivitySharingResult?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type [(offset: Int, element: String)] and conformance [A], &_sSaySi6offset_SS7elementtGMd, &_sSaySi6offset_SS7elementtGMR, MEMORY[0x277D83980]);
    lazy protocol witness table accessor for type ModifiedContent<ReactionButton, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>();
    ForEach<>.init(_:id:content:)();
    v20 = static Alignment.center.getter();
    v46 = v21;
    KeyPath = v20;
    closure #2 in closure #1 in ReactionPickerBubble.body.getter(a1, v18, a4, &v73);
    v61 = v75;
    v62 = v76;
    v63 = v77;
    v64 = v78;
    v59 = v73;
    v60 = v74;
    v66 = v78;
    v65[2] = v75;
    v65[3] = v76;
    v65[4] = v77;
    v65[0] = v73;
    v65[1] = v74;
    outlined init with copy of ModifiedContent<_ShapeView<ScaledShape<Capsule>, Material>, _AnimationModifier<Bool>>(&v59, v67, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEy22_GroupActivities_UIKit14ReactionButtonVAA18_AnimationModifierVySbGGAA013_TraitWritingL0VyAA010TransitionM3KeyVGGAEyAEyAEyAF13MoreReactionsVAA12_ScaleEffectVGAKGAQGGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEy22_GroupActivities_UIKit14ReactionButtonVAA18_AnimationModifierVySbGGAA013_TraitWritingL0VyAA010TransitionM3KeyVGGAEyAEyAEyAF13MoreReactionsVAA12_ScaleEffectVGAKGAQGGMR);
    v22 = outlined destroy of NSObject?(v65, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEy22_GroupActivities_UIKit14ReactionButtonVAA18_AnimationModifierVySbGGAA013_TraitWritingL0VyAA010TransitionM3KeyVGGAEyAEyAEyAF13MoreReactionsVAA12_ScaleEffectVGAKGAQGGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEy22_GroupActivities_UIKit14ReactionButtonVAA18_AnimationModifierVySbGGAA013_TraitWritingL0VyAA010TransitionM3KeyVGGAEyAEyAEyAF13MoreReactionsVAA12_ScaleEffectVGAKGAQGGMR);
    v55 = v61;
    v56 = v62;
    v57 = v63;
    v58 = v64;
    v53 = v59;
    v54 = v60;
    MEMORY[0x23EEA6200](v22, 0.5, 0.7, 0.0);
    v45 = Animation.speed(_:)();

    v44 = (*(*a1 + 224))(v23);
    v25 = v24;

    v27 = v49;
    v26 = v50;
    v28 = *(v50 + 16);
    v29 = v51;
    v28(v49, v52, v51);
    v30 = v48;
    v28(v48, v27, v29);
    v31 = &v30[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySaySi6offset_SS7elementtGSiAA15ModifiedContentVy22_GroupActivities_UIKit14ReactionButtonVAA18_AnimationModifierVySbGGG_AHyAA6ZStackVyAA012_ConditionalH0VyAHyAoA013_TraitWritingO0VyAA010TransitionR3KeyVGGAHyAHyAHyAI13MoreReactionsVAA12_ScaleEffectVGANGAYGGGAMySSSgGGtMd, &_s7SwiftUI7ForEachVySaySi6offset_SS7elementtGSiAA15ModifiedContentVy22_GroupActivities_UIKit14ReactionButtonVAA18_AnimationModifierVySbGGG_AHyAA6ZStackVyAA012_ConditionalH0VyAHyAoA013_TraitWritingO0VyAA010TransitionR3KeyVGGAHyAHyAHyAI13MoreReactionsVAA12_ScaleEffectVGANGAYGGGAMySSSgGGtMR) + 48)];
    v33 = v46;
    v32 = KeyPath;
    *&v67[0] = KeyPath;
    *(&v67[0] + 1) = v46;
    LOBYTE(v71) = v58;
    v68 = v55;
    v69 = v56;
    v70 = v57;
    v34 = v53;
    v67[1] = v53;
    v67[2] = v54;
    v36 = v44;
    v35 = v45;
    *(&v71 + 1) = v45;
    *&v72 = v44;
    *(&v72 + 1) = v25;
    v37 = v54;
    *v31 = v67[0];
    *(v31 + 1) = v34;
    v38 = v72;
    v39 = v70;
    *(v31 + 6) = v71;
    *(v31 + 7) = v38;
    v40 = v68;
    *(v31 + 4) = v69;
    *(v31 + 5) = v39;
    *(v31 + 2) = v37;
    *(v31 + 3) = v40;
    outlined init with copy of ModifiedContent<_ShapeView<ScaledShape<Capsule>, Material>, _AnimationModifier<Bool>>(v67, &v73, &_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA012_ConditionalD0VyACyACy22_GroupActivities_UIKit14ReactionButtonVAA18_AnimationModifierVySbGGAA013_TraitWritingM0VyAA010TransitionN3KeyVGGACyACyACyAH13MoreReactionsVAA12_ScaleEffectVGAMGASGGGALySSSgGGMd, &_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA012_ConditionalD0VyACyACy22_GroupActivities_UIKit14ReactionButtonVAA18_AnimationModifierVySbGGAA013_TraitWritingM0VyAA010TransitionN3KeyVGGACyACyACyAH13MoreReactionsVAA12_ScaleEffectVGAMGASGGGALySSSgGGMR);
    v41 = *(v26 + 8);
    v41(v52, v29);
    *&v73 = v32;
    *(&v73 + 1) = v33;
    v76 = v55;
    v77 = v56;
    v78 = v57;
    v79 = v58;
    v74 = v53;
    v75 = v54;
    v80 = v35;
    v81 = v36;
    v82 = v25;
    outlined destroy of NSObject?(&v73, &_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA012_ConditionalD0VyACyACy22_GroupActivities_UIKit14ReactionButtonVAA18_AnimationModifierVySbGGAA013_TraitWritingM0VyAA010TransitionN3KeyVGGACyACyACyAH13MoreReactionsVAA12_ScaleEffectVGAMGASGGGALySSSgGGMd, &_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA012_ConditionalD0VyACyACy22_GroupActivities_UIKit14ReactionButtonVAA18_AnimationModifierVySbGGAA013_TraitWritingM0VyAA010TransitionN3KeyVGGACyACyACyAH13MoreReactionsVAA12_ScaleEffectVGAMGASGGGALySSSgGGMR);
    return (v41)(v27, v29);
  }

  else
  {
    type metadata accessor for ReactionPickerViewModel(0);
    lazy protocol witness table accessor for type ReactionPickerViewModel and conformance ReactionPickerViewModel(&lazy protocol witness table cache variable for type ReactionPickerViewModel and conformance ReactionPickerViewModel, type metadata accessor for ReactionPickerViewModel, &protocol conformance descriptor for ReactionPickerViewModel);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

void *closure #1 in closure #1 in ReactionPickerBubble.body.getter@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a6@<X8>)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
  State.wrappedValue.getter();
  type metadata accessor for ReactionPickerViewModel(0);
  lazy protocol witness table accessor for type ReactionPickerViewModel and conformance ReactionPickerViewModel(&lazy protocol witness table cache variable for type ReactionPickerViewModel and conformance ReactionPickerViewModel, type metadata accessor for ReactionPickerViewModel, &protocol conformance descriptor for ReactionPickerViewModel);
  v10 = EnvironmentObject.init()();
  v12 = v11;
  static Animation.interpolatingSpring(mass:stiffness:damping:initialVelocity:)();
  v13 = Animation.delay(_:)();

  result = State.wrappedValue.getter();
  *a6 = v10;
  *(a6 + 8) = v12;
  *(a6 + 16) = a2;
  *(a6 + 24) = a3;
  *(a6 + 32) = v16;
  *(a6 + 40) = v13;
  *(a6 + 48) = v16;
  return result;
}

void *closure #2 in closure #1 in ReactionPickerBubble.body.getter@<X0>(uint64_t a1@<X0>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v77 = a3;
  v10 = type metadata accessor for OpacityTransition();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v78 = &v70[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for ScaleTransition();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v70[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10TransitionPAAE8combined4withQrqd___tAaBRd__lFQOyAA05ScaleC0V_AA07OpacityC0VQo_Md, &_s7SwiftUI10TransitionPAAE8combined4withQrqd___tAaBRd__lFQOyAA05ScaleC0V_AA07OpacityC0VQo_MR);
  v18 = MEMORY[0x28223BE20](v17);
  v19 = MEMORY[0x28223BE20](v18);
  if (a1)
  {
    v80 = v14;
    v81 = v11;
    v82 = v22;
    v79 = v13;
    v83 = a5;
    v76 = &v70[-v20];
    v84 = v10;
    v85 = v21;
    v86 = v19;
    v23 = *(*a1 + 224);
    v24 = swift_retain_n();
    v25 = v23(v24);
    if (v26 == 0.0)
    {
    }

    else
    {
      v27 = v25;
      v28 = v26;
      v29 = (*a1 + 272);
      v30 = *v29;
      v31 = (*v29)();
      v75 = v27;
      *&v99 = v27;
      *(&v99 + 1) = v28;
      MEMORY[0x28223BE20](v31);
      *&v70[-16] = &v99;
      LOBYTE(v27) = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), &v70[-32], v31);

      if ((v27 & 1) == 0)
      {
        v54 = v77 & 1;
        LOBYTE(v99) = v77 & 1;
        *(&v99 + 1) = a4;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
        State.wrappedValue.getter();
        v77 = v89;
        type metadata accessor for ReactionPickerViewModel(0);
        lazy protocol witness table accessor for type ReactionPickerViewModel and conformance ReactionPickerViewModel(&lazy protocol witness table cache variable for type ReactionPickerViewModel and conformance ReactionPickerViewModel, type metadata accessor for ReactionPickerViewModel, &protocol conformance descriptor for ReactionPickerViewModel);
        v74 = EnvironmentObject.init()();
        v73 = v55;
        static Animation.interpolatingSpring(mass:stiffness:damping:initialVelocity:)();
        v30();

        v72 = Animation.delay(_:)();

        LOBYTE(v99) = v54;
        *(&v99 + 1) = a4;
        State.wrappedValue.getter();
        v71 = v89;
        static UnitPoint.center.getter();
        ScaleTransition.init(_:anchor:)();
        v56 = v78;
        OpacityTransition.init()();
        v57 = lazy protocol witness table accessor for type ReactionPickerViewModel and conformance ReactionPickerViewModel(&lazy protocol witness table cache variable for type ScaleTransition and conformance ScaleTransition, MEMORY[0x277CDFAE8], MEMORY[0x277CDFAE0]);
        v58 = lazy protocol witness table accessor for type ReactionPickerViewModel and conformance ReactionPickerViewModel(&lazy protocol witness table cache variable for type OpacityTransition and conformance OpacityTransition, MEMORY[0x277CE0068], MEMORY[0x277CE0060]);
        v59 = v76;
        v60 = v79;
        v61 = v84;
        Transition.combined<A>(with:)();
        (*(v81 + 8))(v56, v61);
        (*(v80 + 8))(v16, v60);
        v62 = v85;
        v63 = v86;
        (*(v85 + 16))(v82, v59, v86);
        *&v99 = v60;
        *(&v99 + 1) = v61;
        *&v100 = v57;
        *(&v100 + 1) = v58;
        swift_getOpaqueTypeConformance2();
        v64 = AnyTransition.init<A>(_:)();
        (*(v62 + 8))(v59, v63);
        v87 = 0;
        v89 = v74;
        v90 = v73;
        v91 = v75;
        v92 = v28;
        LOBYTE(v93) = v77;
        v94 = v72;
        LOBYTE(v95) = v71;
        v96 = v64;
        v97 = v88;
        v98 = 0;
LABEL_10:
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy22_GroupActivities_UIKit14ReactionButtonVAA18_AnimationModifierVySbGGAA013_TraitWritingK0VyAA010TransitionL3KeyVGGMd, &_s7SwiftUI15ModifiedContentVyACy22_GroupActivities_UIKit14ReactionButtonVAA18_AnimationModifierVySbGGAA013_TraitWritingK0VyAA010TransitionL3KeyVGGMR);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACy22_GroupActivities_UIKit13MoreReactionsVAA12_ScaleEffectVGAA18_AnimationModifierVySbGGAA013_TraitWritingM0VyAA010TransitionN3KeyVGGMd, &_s7SwiftUI15ModifiedContentVyACyACy22_GroupActivities_UIKit13MoreReactionsVAA12_ScaleEffectVGAA18_AnimationModifierVySbGGAA013_TraitWritingM0VyAA010TransitionN3KeyVGGMR);
        lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ReactionButton, _AnimationModifier<Bool>>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>();
        lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<MoreReactions, _ScaleEffect>, _AnimationModifier<Bool>>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>();
        result = _ConditionalContent<>.init(storage:)();
        v66 = v102;
        v67 = v103;
        v68 = v100;
        v69 = v83;
        *(v83 + 32) = v101;
        *(v69 + 48) = v66;
        *(v69 + 64) = v67;
        *(v69 + 80) = v104;
        *v69 = v99;
        *(v69 + 16) = v68;
        return result;
      }
    }

    v32 = FocusState.init<>()();
    v75 = v33;
    v35 = v34;
    v36 = v77 & 1;
    LOBYTE(v99) = v77 & 1;
    *(&v99 + 1) = a4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
    State.wrappedValue.getter();
    v37 = v89;
    static UnitPoint.center.getter();
    v39 = v38;
    v41 = v40;
    LODWORD(v74) = v32 & 1;
    v77 = v35 & 1;
    v42 = 1.0;
    v43 = static Animation.interpolatingSpring(mass:stiffness:damping:initialVelocity:)();
    (*(*a1 + 272))(v43);

    if (!v37)
    {
      v42 = 0.0;
    }

    v73 = Animation.delay(_:)();

    LOBYTE(v99) = v36;
    *(&v99 + 1) = a4;
    State.wrappedValue.getter();
    v44 = v89;
    static UnitPoint.center.getter();
    ScaleTransition.init(_:anchor:)();
    v45 = v78;
    OpacityTransition.init()();
    v46 = lazy protocol witness table accessor for type ReactionPickerViewModel and conformance ReactionPickerViewModel(&lazy protocol witness table cache variable for type ScaleTransition and conformance ScaleTransition, MEMORY[0x277CDFAE8], MEMORY[0x277CDFAE0]);
    v47 = lazy protocol witness table accessor for type ReactionPickerViewModel and conformance ReactionPickerViewModel(&lazy protocol witness table cache variable for type OpacityTransition and conformance OpacityTransition, MEMORY[0x277CE0068], MEMORY[0x277CE0060]);
    v48 = v76;
    v49 = v79;
    v50 = v84;
    Transition.combined<A>(with:)();
    (*(v81 + 8))(v45, v50);
    (*(v80 + 8))(v16, v49);
    v51 = v85;
    v52 = v86;
    (*(v85 + 16))(v82, v48, v86);
    *&v99 = v49;
    *(&v99 + 1) = v50;
    *&v100 = v46;
    *(&v100 + 1) = v47;
    swift_getOpaqueTypeConformance2();
    v53 = AnyTransition.init<A>(_:)();
    (*(v51 + 8))(v48, v52);
    LOBYTE(v88) = 1;
    LOBYTE(v89) = v74;
    v90 = v75;
    LOBYTE(v91) = v77;
    v92 = v42;
    v93 = v42;
    v94 = v39;
    v95 = v41;
    v96 = v73;
    LOBYTE(v97) = v44;
    *(&v97 + 1) = v53;
    v98 = 1;
    goto LABEL_10;
  }

  type metadata accessor for ReactionPickerViewModel(0);
  lazy protocol witness table accessor for type ReactionPickerViewModel and conformance ReactionPickerViewModel(&lazy protocol witness table cache variable for type ReactionPickerViewModel and conformance ReactionPickerViewModel, type metadata accessor for ReactionPickerViewModel, &protocol conformance descriptor for ReactionPickerViewModel);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

void *closure #4 in ReactionPickerBubble.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v43 = a4;
  LODWORD(v41) = a3;
  v39 = a2;
  v45 = a5;
  v6 = type metadata accessor for Capsule();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11ScaledShapeVyAA7CapsuleVGMd, "fW");
  MEMORY[0x28223BE20](v40);
  v10 = &v39 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10_ShapeViewVyAA06ScaledC0VyAA7CapsuleVGAA8MaterialVGMd, &_s7SwiftUI10_ShapeViewVyAA06ScaledC0VyAA7CapsuleVGAA8MaterialVGMR);
  MEMORY[0x28223BE20](v11);
  v13 = &v39 - v12;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVyAA06ScaledE0VyAA7CapsuleVGAA8MaterialVGAA18_AnimationModifierVySbGGMd, &_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVyAA06ScaledE0VyAA7CapsuleVGAA8MaterialVGAA18_AnimationModifierVySbGGMR);
  v14 = MEMORY[0x28223BE20](v44);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v39 - v17;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA14GeometryReaderVyAA08ModifiedD0VyAA10_ShapeViewVyAA06ScaledI0Vy22_GroupActivities_UIKit13PopoverBubbleVGAA8MaterialVGAA18_AnimationModifierVySbGGGAIyAKyAMyAA7CapsuleVGASGAWG_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyAA14GeometryReaderVyAA08ModifiedD0VyAA10_ShapeViewVyAA06ScaledI0Vy22_GroupActivities_UIKit13PopoverBubbleVGAA8MaterialVGAA18_AnimationModifierVySbGGGAIyAKyAMyAA7CapsuleVGASGAWG_GMR);
  MEMORY[0x28223BE20](v42);
  v20 = (&v39 - v19);
  if (a1)
  {
    v21 = *(*a1 + 176);

    if ((v21(v22) & 1) != 0 && (v23 = (*(*a1 + 320))(), , !v23))
    {
      v37 = swift_allocObject();
      v38 = v39;
      *(v37 + 16) = a1;
      *(v37 + 24) = v38;
      *(v37 + 32) = v41 & 1;
      *(v37 + 40) = v43;
      *v20 = partial apply for closure #1 in closure #4 in ReactionPickerBubble.body.getter;
      v20[1] = v37;
      swift_storeEnumTagMultiPayload();

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI14GeometryReaderVyAA15ModifiedContentVyAA10_ShapeViewVyAA06ScaledG0Vy22_GroupActivities_UIKit13PopoverBubbleVGAA8MaterialVGAA18_AnimationModifierVySbGGGMd, &_s7SwiftUI14GeometryReaderVyAA15ModifiedContentVyAA10_ShapeViewVyAA06ScaledG0Vy22_GroupActivities_UIKit13PopoverBubbleVGAA8MaterialVGAA18_AnimationModifierVySbGGGMR);
      lazy protocol witness table accessor for type Published<GroupActivitySharingResult?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type GeometryReader<ModifiedContent<_ShapeView<ScaledShape<PopoverBubble>, Material>, _AnimationModifier<Bool>>> and conformance GeometryReader<A>, &_s7SwiftUI14GeometryReaderVyAA15ModifiedContentVyAA10_ShapeViewVyAA06ScaledG0Vy22_GroupActivities_UIKit13PopoverBubbleVGAA8MaterialVGAA18_AnimationModifierVySbGGGMd, &_s7SwiftUI14GeometryReaderVyAA15ModifiedContentVyAA10_ShapeViewVyAA06ScaledG0Vy22_GroupActivities_UIKit13PopoverBubbleVGAA8MaterialVGAA18_AnimationModifierVySbGGGMR, MEMORY[0x277CDF7D8]);
      lazy protocol witness table accessor for type ModifiedContent<_ShapeView<ScaledShape<Capsule>, Material>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>();
      return _ConditionalContent<>.init(storage:)();
    }

    else
    {

      v24 = *MEMORY[0x277CE0118];
      v25 = type metadata accessor for RoundedCornerStyle();
      (*(*(v25 - 8) + 104))(v8, v24, v25);
      v26 = v41 & 1;
      v47 = v41 & 1;
      v41 = v18;
      v27 = v20;
      v28 = v43;
      v48 = v43;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
      State.wrappedValue.getter();
      if (v46)
      {
        v29 = 1.0;
      }

      else
      {
        v29 = 0.1;
      }

      outlined init with take of Capsule(v8, v10);
      v30 = v40;
      v31 = &v10[*(v40 + 36)];
      *v31 = v29;
      v31[1] = v29;
      *&v10[*(v30 + 40)] = xmmword_23B7589B0;
      static Material.thick.getter();
      outlined init with take of ScaledShape<Capsule>(v10, v13, &_s7SwiftUI11ScaledShapeVyAA7CapsuleVGMd, "fW");
      *&v13[*(v11 + 56)] = 256;
      v32 = static Animation.interpolatingSpring(mass:stiffness:damping:initialVelocity:)();
      v47 = v26;
      v48 = v28;
      State.wrappedValue.getter();
      v33 = v46;
      outlined init with take of ScaledShape<Capsule>(v13, v16, &_s7SwiftUI10_ShapeViewVyAA06ScaledC0VyAA7CapsuleVGAA8MaterialVGMd, &_s7SwiftUI10_ShapeViewVyAA06ScaledC0VyAA7CapsuleVGAA8MaterialVGMR);
      v34 = &v16[*(v44 + 36)];
      *v34 = v32;
      v34[8] = v33;
      v35 = v41;
      outlined init with take of ScaledShape<Capsule>(v16, v41, &_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVyAA06ScaledE0VyAA7CapsuleVGAA8MaterialVGAA18_AnimationModifierVySbGGMd, &_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVyAA06ScaledE0VyAA7CapsuleVGAA8MaterialVGAA18_AnimationModifierVySbGGMR);
      outlined init with copy of ModifiedContent<_ShapeView<ScaledShape<Capsule>, Material>, _AnimationModifier<Bool>>(v35, v27, &_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVyAA06ScaledE0VyAA7CapsuleVGAA8MaterialVGAA18_AnimationModifierVySbGGMd, &_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVyAA06ScaledE0VyAA7CapsuleVGAA8MaterialVGAA18_AnimationModifierVySbGGMR);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI14GeometryReaderVyAA15ModifiedContentVyAA10_ShapeViewVyAA06ScaledG0Vy22_GroupActivities_UIKit13PopoverBubbleVGAA8MaterialVGAA18_AnimationModifierVySbGGGMd, &_s7SwiftUI14GeometryReaderVyAA15ModifiedContentVyAA10_ShapeViewVyAA06ScaledG0Vy22_GroupActivities_UIKit13PopoverBubbleVGAA8MaterialVGAA18_AnimationModifierVySbGGGMR);
      lazy protocol witness table accessor for type Published<GroupActivitySharingResult?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type GeometryReader<ModifiedContent<_ShapeView<ScaledShape<PopoverBubble>, Material>, _AnimationModifier<Bool>>> and conformance GeometryReader<A>, &_s7SwiftUI14GeometryReaderVyAA15ModifiedContentVyAA10_ShapeViewVyAA06ScaledG0Vy22_GroupActivities_UIKit13PopoverBubbleVGAA8MaterialVGAA18_AnimationModifierVySbGGGMd, &_s7SwiftUI14GeometryReaderVyAA15ModifiedContentVyAA10_ShapeViewVyAA06ScaledG0Vy22_GroupActivities_UIKit13PopoverBubbleVGAA8MaterialVGAA18_AnimationModifierVySbGGGMR, MEMORY[0x277CDF7D8]);
      lazy protocol witness table accessor for type ModifiedContent<_ShapeView<ScaledShape<Capsule>, Material>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      return outlined destroy of NSObject?(v35, &_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVyAA06ScaledE0VyAA7CapsuleVGAA8MaterialVGAA18_AnimationModifierVySbGGMd, &_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVyAA06ScaledE0VyAA7CapsuleVGAA8MaterialVGAA18_AnimationModifierVySbGGMR);
    }
  }

  else
  {
    type metadata accessor for ReactionPickerViewModel(0);
    lazy protocol witness table accessor for type ReactionPickerViewModel and conformance ReactionPickerViewModel(&lazy protocol witness table cache variable for type ReactionPickerViewModel and conformance ReactionPickerViewModel, type metadata accessor for ReactionPickerViewModel, &protocol conformance descriptor for ReactionPickerViewModel);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in closure #4 in ReactionPickerBubble.body.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char a3@<W3>, unint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v29[1] = a2;
  v30 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10_ShapeViewVyAA06ScaledC0Vy22_GroupActivities_UIKit13PopoverBubbleVGAA8MaterialVGMd, &_s7SwiftUI10_ShapeViewVyAA06ScaledC0Vy22_GroupActivities_UIKit13PopoverBubbleVGAA8MaterialVGMR);
  MEMORY[0x28223BE20](v8);
  v10 = (v29 - v9);
  v11 = type metadata accessor for NamedCoordinateSpace();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = 0xD000000000000019;
  v33 = 0x800000023B75C370;
  static CoordinateSpaceProtocol<>.named<A>(_:)();
  GeometryProxy.frame<A>(in:)();
  (*(v12 + 8))(v14, v11);
  if (a1)
  {
    v15 = *(*a1 + 128);

    v15(v16);
    (*(*a1 + 128))();

    destructiveProjectEnumData for GroupActivitySharingResult();
    v18 = v17;
    v20 = v19;
    GeometryProxy.size.getter();
    v22 = v21 - v18;
    LOBYTE(v32) = a3 & 1;
    v33 = a4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
    State.wrappedValue.getter();
    if (v31)
    {
      v23 = 1.0;
    }

    else
    {
      v23 = 0.1;
    }

    static Material.thick.getter();
    *v10 = xmmword_23B7589C0;
    v10[2] = v22;
    *(v10 + 3) = v20;
    v10[4] = v23;
    v10[5] = v23;
    *(v10 + 3) = xmmword_23B7589B0;
    *(v10 + *(v8 + 56)) = 256;
    v24 = static Animation.interpolatingSpring(mass:stiffness:damping:initialVelocity:)();
    LOBYTE(v32) = a3 & 1;
    v33 = a4;
    State.wrappedValue.getter();
    v25 = v31;
    v26 = v30;
    outlined init with take of ScaledShape<Capsule>(v10, v30, &_s7SwiftUI10_ShapeViewVyAA06ScaledC0Vy22_GroupActivities_UIKit13PopoverBubbleVGAA8MaterialVGMd, &_s7SwiftUI10_ShapeViewVyAA06ScaledC0Vy22_GroupActivities_UIKit13PopoverBubbleVGAA8MaterialVGMR);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVyAA06ScaledE0Vy22_GroupActivities_UIKit13PopoverBubbleVGAA8MaterialVGAA18_AnimationModifierVySbGGMd, &_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVyAA06ScaledE0Vy22_GroupActivities_UIKit13PopoverBubbleVGAA8MaterialVGAA18_AnimationModifierVySbGGMR);
    v28 = v26 + *(result + 36);
    *v28 = v24;
    *(v28 + 8) = v25;
  }

  else
  {
    type metadata accessor for ReactionPickerViewModel(0);
    lazy protocol witness table accessor for type ReactionPickerViewModel and conformance ReactionPickerViewModel(&lazy protocol witness table cache variable for type ReactionPickerViewModel and conformance ReactionPickerViewModel, type metadata accessor for ReactionPickerViewModel, &protocol conformance descriptor for ReactionPickerViewModel);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t ReactionPickerBubble.init()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ReactionPickerViewModel(0);
  lazy protocol witness table accessor for type ReactionPickerViewModel and conformance ReactionPickerViewModel(&lazy protocol witness table cache variable for type ReactionPickerViewModel and conformance ReactionPickerViewModel, type metadata accessor for ReactionPickerViewModel, &protocol conformance descriptor for ReactionPickerViewModel);
  v4 = EnvironmentObject.init()();
  State.init(wrappedValue:)();
  return v4;
}

uint64_t default argument 0 of ReactionPickerBubble.init(model:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ReactionPickerViewModel(0);
  lazy protocol witness table accessor for type ReactionPickerViewModel and conformance ReactionPickerViewModel(&lazy protocol witness table cache variable for type ReactionPickerViewModel and conformance ReactionPickerViewModel, type metadata accessor for ReactionPickerViewModel, &protocol conformance descriptor for ReactionPickerViewModel);

  return EnvironmentObject.init()();
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ReactionPickerBubble(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for ReactionPickerBubble(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, _AppearanceActionModifier>, _AppearanceActionModifier>, _PaddingLayout>, _BackgroundModifier<_ConditionalContent<GeometryReader<ModifiedContent<_ShapeView<ScaledShape<PopoverBubble>, Material>, _AnimationModifier<Bool>>>, ModifiedContent<_ShapeView<ScaledShape<Capsule>, Material>, _AnimationModifier<Bool>>>>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, _AppearanceActionModifier>, _AppearanceActionModifier>, _PaddingLayout>, _BackgroundModifier<_ConditionalContent<GeometryReader<ModifiedContent<_ShapeView<ScaledShape<PopoverBubble>, Material>, _AnimationModifier<Bool>>>, ModifiedContent<_ShapeView<ScaledShape<Capsule>, Material>, _AnimationModifier<Bool>>>>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, _AppearanceActionModifier>, _AppearanceActionModifier>, _PaddingLayout>, _BackgroundModifier<_ConditionalContent<GeometryReader<ModifiedContent<_ShapeView<ScaledShape<PopoverBubble>, Material>, _AnimationModifier<Bool>>>, ModifiedContent<_ShapeView<ScaledShape<Capsule>, Material>, _AnimationModifier<Bool>>>>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicgH0O5BoundRtd__lFQOyAA6HStackVyAA05TupleE0VyAA7ForEachVySaySi6offset_SS7elementtGSiACy22_GroupActivities_UIKit14ReactionButtonVAA18_AnimationModifierVySbGGG_ACyAA6ZStackVyAA012_ConditionalD0VyACyAzA013_TraitWritingW0VyAA010TransitionZ3KeyVGGACyACyACyAT13MoreReactionsVAA12_ScaleEffectVGAYGA8_GGGAXySSSgGGtGG_s19PartialRangeThroughVyAHGQo_AA017_AppearanceActionW0VGA29_GAA14_PaddingLayoutVGAA011_BackgroundW0VyA3_yAA14GeometryReaderVyACyAA06_ShapeE0VyAA11ScaledShapeVyAT13PopoverBubbleVGAA8MaterialVGAYGGACyA40_yA42_yAA7CapsuleVGA47_GAYGGGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicgH0O5BoundRtd__lFQOyAA6HStackVyAA05TupleE0VyAA7ForEachVySaySi6offset_SS7elementtGSiACy22_GroupActivities_UIKit14ReactionButtonVAA18_AnimationModifierVySbGGG_ACyAA6ZStackVyAA012_ConditionalD0VyACyAzA013_TraitWritingW0VyAA010TransitionZ3KeyVGGACyACyACyAT13MoreReactionsVAA12_ScaleEffectVGAYGA8_GGGAXySSSgGGtGG_s19PartialRangeThroughVyAHGQo_AA017_AppearanceActionW0VGA29_GAA14_PaddingLayoutVGAA011_BackgroundW0VyA3_yAA14GeometryReaderVyACyAA06_ShapeE0VyAA11ScaledShapeVyAT13PopoverBubbleVGAA8MaterialVGAYGGACyA40_yA42_yAA7CapsuleVGA47_GAYGGGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, _AppearanceActionModifier>, _AppearanceActionModifier>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type Published<GroupActivitySharingResult?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type _BackgroundModifier<_ConditionalContent<GeometryReader<ModifiedContent<_ShapeView<ScaledShape<PopoverBubble>, Material>, _AnimationModifier<Bool>>>, ModifiedContent<_ShapeView<ScaledShape<Capsule>, Material>, _AnimationModifier<Bool>>>> and conformance _BackgroundModifier<A>, &_s7SwiftUI19_BackgroundModifierVyAA19_ConditionalContentVyAA14GeometryReaderVyAA08ModifiedF0VyAA10_ShapeViewVyAA06ScaledJ0Vy22_GroupActivities_UIKit13PopoverBubbleVGAA8MaterialVGAA010_AnimationD0VySbGGGAIyAKyAMyAA7CapsuleVGASGAWGGGMd, &_s7SwiftUI19_BackgroundModifierVyAA19_ConditionalContentVyAA14GeometryReaderVyAA08ModifiedF0VyAA10_ShapeViewVyAA06ScaledJ0Vy22_GroupActivities_UIKit13PopoverBubbleVGAA8MaterialVGAA010_AnimationD0VySbGGGAIyAKyAMyAA7CapsuleVGASGAWGGGMR, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, _AppearanceActionModifier>, _AppearanceActionModifier>, _PaddingLayout>, _BackgroundModifier<_ConditionalContent<GeometryReader<ModifiedContent<_ShapeView<ScaledShape<PopoverBubble>, Material>, _AnimationModifier<Bool>>>, ModifiedContent<_ShapeView<ScaledShape<Capsule>, Material>, _AnimationModifier<Bool>>>>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, _AppearanceActionModifier>, _AppearanceActionModifier>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, _AppearanceActionModifier>, _AppearanceActionModifier>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, _AppearanceActionModifier>, _AppearanceActionModifier>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicgH0O5BoundRtd__lFQOyAA6HStackVyAA05TupleE0VyAA7ForEachVySaySi6offset_SS7elementtGSiACy22_GroupActivities_UIKit14ReactionButtonVAA18_AnimationModifierVySbGGG_ACyAA6ZStackVyAA012_ConditionalD0VyACyAzA013_TraitWritingW0VyAA010TransitionZ3KeyVGGACyACyACyAT13MoreReactionsVAA12_ScaleEffectVGAYGA8_GGGAXySSSgGGtGG_s19PartialRangeThroughVyAHGQo_AA017_AppearanceActionW0VGA29_GAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicgH0O5BoundRtd__lFQOyAA6HStackVyAA05TupleE0VyAA7ForEachVySaySi6offset_SS7elementtGSiACy22_GroupActivities_UIKit14ReactionButtonVAA18_AnimationModifierVySbGGG_ACyAA6ZStackVyAA012_ConditionalD0VyACyAzA013_TraitWritingW0VyAA010TransitionZ3KeyVGGACyACyACyAT13MoreReactionsVAA12_ScaleEffectVGAYGA8_GGGAXySSSgGGtGG_s19PartialRangeThroughVyAHGQo_AA017_AppearanceActionW0VGA29_GAA14_PaddingLayoutVGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, _AppearanceActionModifier>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, _AppearanceActionModifier>, _AppearanceActionModifier>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, _AppearanceActionModifier>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, _AppearanceActionModifier>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, _AppearanceActionModifier>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicgH0O5BoundRtd__lFQOyAA6HStackVyAA05TupleE0VyAA7ForEachVySaySi6offset_SS7elementtGSiACy22_GroupActivities_UIKit14ReactionButtonVAA18_AnimationModifierVySbGGG_ACyAA6ZStackVyAA012_ConditionalD0VyACyAzA013_TraitWritingW0VyAA010TransitionZ3KeyVGGACyACyACyAT13MoreReactionsVAA12_ScaleEffectVGAYGA8_GGGAXySSSgGGtGG_s19PartialRangeThroughVyAHGQo_AA017_AppearanceActionW0VGA29_GMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicgH0O5BoundRtd__lFQOyAA6HStackVyAA05TupleE0VyAA7ForEachVySaySi6offset_SS7elementtGSiACy22_GroupActivities_UIKit14ReactionButtonVAA18_AnimationModifierVySbGGG_ACyAA6ZStackVyAA012_ConditionalD0VyACyAzA013_TraitWritingW0VyAA010TransitionZ3KeyVGGACyACyACyAT13MoreReactionsVAA12_ScaleEffectVGAYGA8_GGGAXySSSgGGtGG_s19PartialRangeThroughVyAHGQo_AA017_AppearanceActionW0VGA29_GMR);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, _AppearanceActionModifier>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicgH0O5BoundRtd__lFQOyAA6HStackVyAA05TupleE0VyAA7ForEachVySaySi6offset_SS7elementtGSiACy22_GroupActivities_UIKit14ReactionButtonVAA18_AnimationModifierVySbGGG_ACyAA6ZStackVyAA012_ConditionalD0VyACyAzA013_TraitWritingW0VyAA010TransitionZ3KeyVGGACyACyACyAT13MoreReactionsVAA12_ScaleEffectVGAYGA8_GGGAXySSSgGGtGG_s19PartialRangeThroughVyAHGQo_AA017_AppearanceActionW0VGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicgH0O5BoundRtd__lFQOyAA6HStackVyAA05TupleE0VyAA7ForEachVySaySi6offset_SS7elementtGSiACy22_GroupActivities_UIKit14ReactionButtonVAA18_AnimationModifierVySbGGG_ACyAA6ZStackVyAA012_ConditionalD0VyACyAzA013_TraitWritingW0VyAA010TransitionZ3KeyVGGACyACyACyAT13MoreReactionsVAA12_ScaleEffectVGAYGA8_GGGAXySSSgGGtGG_s19PartialRangeThroughVyAHGQo_AA017_AppearanceActionW0VGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA7ForEachVySaySi6offset_SS7elementtGSiAA15ModifiedContentVy22_GroupActivities_UIKit14ReactionButtonVAA18_AnimationModifierVySbGGG_ALyAA6ZStackVyAA012_ConditionalK0VyALyAsA013_TraitWritingR0VyAA010TransitionU3KeyVGGALyALyALyAM13MoreReactionsVAA12_ScaleEffectVGARGA1_GGGAQySSSgGGtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA7ForEachVySaySi6offset_SS7elementtGSiAA15ModifiedContentVy22_GroupActivities_UIKit14ReactionButtonVAA18_AnimationModifierVySbGGG_ALyAA6ZStackVyAA012_ConditionalK0VyALyAsA013_TraitWritingR0VyAA010TransitionU3KeyVGGALyALyALyAM13MoreReactionsVAA12_ScaleEffectVGARGA1_GGGAQySSSgGGtGGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGMd, &_ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGMR);
    lazy protocol witness table accessor for type Published<GroupActivitySharingResult?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type HStack<TupleView<(ForEach<[(offset: Int, element: String)], Int, ModifiedContent<ReactionButton, _AnimationModifier<Bool>>>, ModifiedContent<ZStack<_ConditionalContent<ModifiedContent<ModifiedContent<ReactionButton, _AnimationModifier<Bool>>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<ModifiedContent<ModifiedContent<MoreReactions, _ScaleEffect>, _AnimationModifier<Bool>>, _TraitWritingModifier<TransitionTraitKey>>>>, _AnimationModifier<String?>>)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA7ForEachVySaySi6offset_SS7elementtGSiAA15ModifiedContentVy22_GroupActivities_UIKit14ReactionButtonVAA18_AnimationModifierVySbGGG_ALyAA6ZStackVyAA012_ConditionalK0VyALyAsA013_TraitWritingR0VyAA010TransitionU3KeyVGGALyALyALyAM13MoreReactionsVAA12_ScaleEffectVGARGA1_GGGAQySSSgGGtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA7ForEachVySaySi6offset_SS7elementtGSiAA15ModifiedContentVy22_GroupActivities_UIKit14ReactionButtonVAA18_AnimationModifierVySbGGG_ALyAA6ZStackVyAA012_ConditionalK0VyALyAsA013_TraitWritingR0VyAA010TransitionU3KeyVGGALyALyALyAM13MoreReactionsVAA12_ScaleEffectVGARGA1_GGGAQySSSgGGtGGMR, MEMORY[0x277CE1138]);
    lazy protocol witness table accessor for type Published<GroupActivitySharingResult?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PartialRangeThrough<DynamicTypeSize> and conformance PartialRangeThrough<A>, &_ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGMd, &_ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGMR, MEMORY[0x277D84470]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined init with take of Capsule(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Capsule();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ShapeView<ScaledShape<Capsule>, Material>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ShapeView<ScaledShape<Capsule>, Material>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ShapeView<ScaledShape<Capsule>, Material>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVyAA06ScaledE0VyAA7CapsuleVGAA8MaterialVGAA18_AnimationModifierVySbGGMd, &_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVyAA06ScaledE0VyAA7CapsuleVGAA8MaterialVGAA18_AnimationModifierVySbGGMR);
    lazy protocol witness table accessor for type Published<GroupActivitySharingResult?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type _ShapeView<ScaledShape<Capsule>, Material> and conformance _ShapeView<A, B>, &_s7SwiftUI10_ShapeViewVyAA06ScaledC0VyAA7CapsuleVGAA8MaterialVGMd, &_s7SwiftUI10_ShapeViewVyAA06ScaledC0VyAA7CapsuleVGAA8MaterialVGMR, MEMORY[0x277CDF3A0]);
    lazy protocol witness table accessor for type Published<GroupActivitySharingResult?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type _AnimationModifier<Bool> and conformance _AnimationModifier<A>, &_s7SwiftUI18_AnimationModifierVySbGMd, &_s7SwiftUI18_AnimationModifierVySbGMR, MEMORY[0x277CE01A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ShapeView<ScaledShape<Capsule>, Material>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined init with take of ScaledShape<Capsule>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t specialized Sequence.contains(where:)(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

void *specialized _copySequenceToContiguousArray<A>(_:)(void *result)
{
  v1 = result[2];
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v3 = 0;
    v4 = 0;
    v5 = (MEMORY[0x277D84F90] + 32);
    v6 = result + 5;
    while (1)
    {
      v7 = *(v6 - 1);
      v8 = *v6;
      if (v4)
      {

        v9 = __OFSUB__(v4--, 1);
        if (v9)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v10 = v2[3];
        if (((v10 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_29;
        }

        v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
        if (v11 <= 1)
        {
          v12 = 1;
        }

        else
        {
          v12 = v11;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi6offset_SS7elementtGMd, &_ss23_ContiguousArrayStorageCySi6offset_SS7elementtGMR);
        v13 = swift_allocObject();
        v14 = (_swift_stdlib_malloc_size(v13) - 32) / 24;
        v13[2] = v12;
        v13[3] = 2 * v14;
        v15 = v13 + 4;
        v16 = v2[3] >> 1;
        v5 = &v13[3 * v16 + 4];
        v17 = (v14 & 0x7FFFFFFFFFFFFFFFLL) - v16;
        if (v2[2])
        {
          if (v13 != v2 || v15 >= &v2[3 * v16 + 4])
          {
            memmove(v15, v2 + 4, 24 * v16);
          }

          v2[2] = 0;
        }

        else
        {
        }

        v2 = v13;
        v9 = __OFSUB__(v17, 1);
        v4 = v17 - 1;
        if (v9)
        {
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
          return result;
        }
      }

      *v5 = v3;
      v5[1] = v7;
      v5[2] = v8;
      v5 += 3;
      v6 += 2;
      if (v1 == ++v3)
      {
        goto LABEL_24;
      }
    }
  }

  v4 = 0;
LABEL_24:
  v19 = v2[3];
  if (v19 >= 2)
  {
    v20 = v19 >> 1;
    v9 = __OFSUB__(v20, v4);
    v21 = v20 - v4;
    if (v9)
    {
      goto LABEL_30;
    }

    v2[2] = v21;
  }

  return v2;
}

uint64_t objectdestroyTm_0(uint64_t a1)
{

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ReactionButton, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ReactionButton, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ReactionButton, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy22_GroupActivities_UIKit14ReactionButtonVAA18_AnimationModifierVySbGGMd, &_s7SwiftUI15ModifiedContentVy22_GroupActivities_UIKit14ReactionButtonVAA18_AnimationModifierVySbGGMR);
    lazy protocol witness table accessor for type ReactionButton and conformance ReactionButton();
    lazy protocol witness table accessor for type Published<GroupActivitySharingResult?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type _AnimationModifier<Bool> and conformance _AnimationModifier<A>, &_s7SwiftUI18_AnimationModifierVySbGMd, &_s7SwiftUI18_AnimationModifierVySbGMR, MEMORY[0x277CE01A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ReactionButton, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ReactionButton and conformance ReactionButton()
{
  result = lazy protocol witness table cache variable for type ReactionButton and conformance ReactionButton;
  if (!lazy protocol witness table cache variable for type ReactionButton and conformance ReactionButton)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ReactionButton and conformance ReactionButton);
  }

  return result;
}

uint64_t outlined init with copy of ModifiedContent<_ShapeView<ScaledShape<Capsule>, Material>, _AnimationModifier<Bool>>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t lazy protocol witness table accessor for type ReactionPickerViewModel and conformance ReactionPickerViewModel(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ReactionButton, _AnimationModifier<Bool>>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ReactionButton, _AnimationModifier<Bool>>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ReactionButton, _AnimationModifier<Bool>>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACy22_GroupActivities_UIKit14ReactionButtonVAA18_AnimationModifierVySbGGAA013_TraitWritingK0VyAA010TransitionL3KeyVGGMd, &_s7SwiftUI15ModifiedContentVyACy22_GroupActivities_UIKit14ReactionButtonVAA18_AnimationModifierVySbGGAA013_TraitWritingK0VyAA010TransitionL3KeyVGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ReactionButton, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type Published<GroupActivitySharingResult?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type _TraitWritingModifier<TransitionTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA010TransitionC3KeyVGMd, &_s7SwiftUI21_TraitWritingModifierVyAA010TransitionC3KeyVGMR, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ReactionButton, _AnimationModifier<Bool>>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<MoreReactions, _ScaleEffect>, _AnimationModifier<Bool>>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<MoreReactions, _ScaleEffect>, _AnimationModifier<Bool>>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<MoreReactions, _ScaleEffect>, _AnimationModifier<Bool>>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACy22_GroupActivities_UIKit13MoreReactionsVAA12_ScaleEffectVGAA18_AnimationModifierVySbGGAA013_TraitWritingM0VyAA010TransitionN3KeyVGGMd, &_s7SwiftUI15ModifiedContentVyACyACy22_GroupActivities_UIKit13MoreReactionsVAA12_ScaleEffectVGAA18_AnimationModifierVySbGGAA013_TraitWritingM0VyAA010TransitionN3KeyVGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<MoreReactions, _ScaleEffect>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type Published<GroupActivitySharingResult?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type _TraitWritingModifier<TransitionTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA010TransitionC3KeyVGMd, &_s7SwiftUI21_TraitWritingModifierVyAA010TransitionC3KeyVGMR, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<MoreReactions, _ScaleEffect>, _AnimationModifier<Bool>>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<MoreReactions, _ScaleEffect>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<MoreReactions, _ScaleEffect>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<MoreReactions, _ScaleEffect>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACy22_GroupActivities_UIKit13MoreReactionsVAA12_ScaleEffectVGAA18_AnimationModifierVySbGGMd, &_s7SwiftUI15ModifiedContentVyACy22_GroupActivities_UIKit13MoreReactionsVAA12_ScaleEffectVGAA18_AnimationModifierVySbGGMR);
    lazy protocol witness table accessor for type ModifiedContent<MoreReactions, _ScaleEffect> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type Published<GroupActivitySharingResult?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type _AnimationModifier<Bool> and conformance _AnimationModifier<A>, &_s7SwiftUI18_AnimationModifierVySbGMd, &_s7SwiftUI18_AnimationModifierVySbGMR, MEMORY[0x277CE01A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<MoreReactions, _ScaleEffect>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<MoreReactions, _ScaleEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<MoreReactions, _ScaleEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<MoreReactions, _ScaleEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy22_GroupActivities_UIKit13MoreReactionsVAA12_ScaleEffectVGMd, &_s7SwiftUI15ModifiedContentVy22_GroupActivities_UIKit13MoreReactionsVAA12_ScaleEffectVGMR);
    lazy protocol witness table accessor for type MoreReactions and conformance MoreReactions();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<MoreReactions, _ScaleEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MoreReactions and conformance MoreReactions()
{
  result = lazy protocol witness table cache variable for type MoreReactions and conformance MoreReactions;
  if (!lazy protocol witness table cache variable for type MoreReactions and conformance MoreReactions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MoreReactions and conformance MoreReactions);
  }

  return result;
}

uint64_t partial apply for specialized closure #1 in Sequence<>.contains(_:)(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

id GroupActivityPlaceholderSharingController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t key path getter for GroupActivityPlaceholderSharingController.placeholderControllerDidCancel : GroupActivityPlaceholderSharingController@<X0>(void **a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x60))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed GroupActivityPlaceholderSharingController) -> ();
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t key path setter for GroupActivityPlaceholderSharingController.placeholderControllerDidCancel : GroupActivityPlaceholderSharingController(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed GroupActivityPlaceholderSharingController) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *((*MEMORY[0x277D85000] & **a2) + 0x68);
  sub_23B6FD304(v3, v4);
  return v7(v6, v5);
}

uint64_t GroupActivityPlaceholderSharingController.placeholderControllerDidCancel.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC22_GroupActivities_UIKit41GroupActivityPlaceholderSharingController_placeholderControllerDidCancel);
  swift_beginAccess();
  v2 = *v1;
  sub_23B6FD304(*v1, v1[1]);
  return v2;
}

uint64_t GroupActivityPlaceholderSharingController.placeholderControllerDidCancel.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC22_GroupActivities_UIKit41GroupActivityPlaceholderSharingController_placeholderControllerDidCancel);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v6);
}

id GroupActivityPlaceholderSharingController.init()()
{
  v1 = &v0[OBJC_IVAR____TtC22_GroupActivities_UIKit41GroupActivityPlaceholderSharingController_placeholderControllerDidCancel];
  *v1 = 0;
  *(v1 + 1) = 0;
  v2 = [objc_allocWithZone(MEMORY[0x277D75D28]) init];
  *&v0[OBJC_IVAR____TtC22_GroupActivities_UIKit41GroupActivityPlaceholderSharingController_rootViewController] = v2;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for GroupActivityPlaceholderSharingController();
  return objc_msgSendSuper2(&v4, sel_initWithRootViewController_, v2);
}

Swift::Void __swiftcall GroupActivityPlaceholderSharingController.viewWillAppear(_:)(Swift::Bool a1)
{
  v3 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v1 action:sel_cancelButtonTapped_];
  v4 = [*&v1[OBJC_IVAR____TtC22_GroupActivities_UIKit41GroupActivityPlaceholderSharingController_rootViewController] navigationItem];
  [v4 setRightBarButtonItem_];

  v5.receiver = v1;
  v5.super_class = type metadata accessor for GroupActivityPlaceholderSharingController();
  objc_msgSendSuper2(&v5, sel_viewWillAppear_, a1);
}

Swift::Void __swiftcall GroupActivityPlaceholderSharingController.viewDidLoad()()
{
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_6;
  }

  v2 = v1;
  v3 = objc_opt_self();
  v4 = [v3 systemGreenColor];
  [v2 setTintColor_];

  v5 = [v0 navigationBar];
  v6 = [v0 navigationBar];
  v7 = [v6 standardAppearance];

  [v5 setScrollEdgeAppearance_];
  v8 = [v0 view];
  if (!v8)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v9 = v8;
  [v8 setPreservesSuperviewLayoutMargins_];

  v10 = [v0 view];
  if (v10)
  {
    v11 = v10;
    v12 = [v3 systemBackgroundColor];
    [v11 setBackgroundColor_];

    v13.receiver = v0;
    v13.super_class = type metadata accessor for GroupActivityPlaceholderSharingController();
    objc_msgSendSuper2(&v13, sel_viewDidLoad);
    return;
  }

LABEL_7:
  __break(1u);
}

id GroupActivityPlaceholderSharingController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void GroupActivityPlaceholderSharingController.init(coder:)()
{
  v1 = (v0 + OBJC_IVAR____TtC22_GroupActivities_UIKit41GroupActivityPlaceholderSharingController_placeholderControllerDidCancel);
  *v1 = 0;
  v1[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void (*GroupActivityPlaceholderSharingController.hostViewController(_:didFailToHost:error:)())(void *)
{
  result = (*((*MEMORY[0x277D85000] & *v0) + 0x60))();
  if (result)
  {
    v2 = result;
    result(v0);

    return outlined consume of (@escaping @callee_guaranteed () -> ())?(v2);
  }

  return result;
}

void @objc GroupActivityPlaceholderSharingController.hostViewController(_:didFailToHost:error:)(void *a1)
{
  v1 = *((*MEMORY[0x277D85000] & *a1) + 0x60);
  v4 = a1;
  v2 = v1();
  if (v2)
  {
    v3 = v2;
    v2(v4);

    outlined consume of (@escaping @callee_guaranteed () -> ())?(v3);
  }

  else
  {
  }
}

id GroupActivityPlaceholderSharingController.__allocating_init(navigationBarClass:toolbarClass:)(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if (a1)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    if (!v3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  ObjCClassFromMetadata = 0;
  if (a2)
  {
LABEL_3:
    v3 = swift_getObjCClassFromMetadata();
  }

LABEL_4:
  v5 = objc_allocWithZone(v2);

  return [v5 initWithNavigationBarClass:ObjCClassFromMetadata toolbarClass:v3];
}

id GroupActivityPlaceholderSharingController.__allocating_init(rootViewController:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithRootViewController_];

  return v3;
}

id GroupActivityPlaceholderSharingController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = MEMORY[0x23EEA6320](a1);
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id GroupActivityPlaceholderSharingController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GroupActivityPlaceholderSharingController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*specialized GroupActivityPlaceholderSharingController.cancelButtonTapped(_:)())(void *)
{
  v1 = v0;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.default);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_23B6FA000, v3, v4, "Cancel button tapped", v5, 2u);
    MEMORY[0x23EEA7200](v5, -1, -1);
  }

  result = (*((*MEMORY[0x277D85000] & *v1) + 0x60))();
  if (result)
  {
    v7 = result;
    result(v1);

    return outlined consume of (@escaping @callee_guaranteed () -> ())?(v7);
  }

  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed GroupActivityPlaceholderSharingController) -> (@out ())(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

id ReactionPickerViewRepresentable.makeUIView(context:)()
{
  v0 = objc_allocWithZone(type metadata accessor for ReactionPickerView(0));

  return [v0 init];
}

uint64_t ReactionPickerViewRepresentable.updateUIView(_:context:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = MEMORY[0x277D85000];
  v9 = *((*MEMORY[0x277D85000] & *a1) + 0xB0);

  v9(a3, a4);
  v10 = *((*v8 & *a1) + 0xE0);

  return v10(v11);
}

id protocol witness for UIViewRepresentable.makeUIView(context:) in conformance ReactionPickerViewRepresentable()
{
  v0 = objc_allocWithZone(type metadata accessor for ReactionPickerView(0));

  return [v0 init];
}

uint64_t protocol witness for UIViewRepresentable.updateUIView(_:context:) in conformance ReactionPickerViewRepresentable(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = MEMORY[0x277D85000];
  v6 = *((*MEMORY[0x277D85000] & *a1) + 0xB0);

  v6(v3, v4);
  v7 = *((*v5 & *a1) + 0xE0);

  return v7(v8);
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance ReactionPickerViewRepresentable(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ReactionPickerViewRepresentable and conformance ReactionPickerViewRepresentable();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance ReactionPickerViewRepresentable(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ReactionPickerViewRepresentable and conformance ReactionPickerViewRepresentable();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void protocol witness for View.body.getter in conformance ReactionPickerViewRepresentable(uint64_t a1)
{
  lazy protocol witness table accessor for type ReactionPickerViewRepresentable and conformance ReactionPickerViewRepresentable();
  UIViewRepresentable.body.getter();
  __break(1u);
}

uint64_t ReactionPicker.selectedReaction.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ReactionPicker.selectedReaction.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ReactionPicker.history.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

_GroupActivities_UIKit::ReactionPicker __swiftcall ReactionPicker.init(selectedReaction:history:)(Swift::String_optional selectedReaction, Swift::OpaquePointer history)
{
  *v2 = selectedReaction;
  *(v2 + 16) = history;
  result.selectedReaction = selectedReaction;
  result.history = history;
  return result;
}

uint64_t ReactionPicker.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = 257;
}

unint64_t lazy protocol witness table accessor for type ReactionPickerViewRepresentable and conformance ReactionPickerViewRepresentable()
{
  result = lazy protocol witness table cache variable for type ReactionPickerViewRepresentable and conformance ReactionPickerViewRepresentable;
  if (!lazy protocol witness table cache variable for type ReactionPickerViewRepresentable and conformance ReactionPickerViewRepresentable)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ReactionPickerViewRepresentable and conformance ReactionPickerViewRepresentable);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ReactionPickerViewRepresentable and conformance ReactionPickerViewRepresentable;
  if (!lazy protocol witness table cache variable for type ReactionPickerViewRepresentable and conformance ReactionPickerViewRepresentable)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ReactionPickerViewRepresentable and conformance ReactionPickerViewRepresentable);
  }

  return result;
}

uint64_t protocol witness for View.body.getter in conformance ReactionPicker@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = 257;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ReactionPickerViewRepresentable(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for ReactionPickerViewRepresentable(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<ReactionPickerViewRepresentable, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ReactionPickerViewRepresentable, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ReactionPickerViewRepresentable, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy22_GroupActivities_UIKit31ReactionPickerViewRepresentableVAA16_FixedSizeLayoutVGMd, &_s7SwiftUI15ModifiedContentVy22_GroupActivities_UIKit31ReactionPickerViewRepresentableVAA16_FixedSizeLayoutVGMR);
    lazy protocol witness table accessor for type ReactionPickerViewRepresentable and conformance ReactionPickerViewRepresentable();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ReactionPickerViewRepresentable, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t >> prefix<A>(_:)(uint64_t a1, uint64_t a2)
{
  v4[2] = a2;
  type metadata accessor for Optional();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in >> prefix<A>(_:), v4, MEMORY[0x277D84A98], MEMORY[0x277D837D0], v2, v5);
  if (v5[1])
  {
    return v5[0];
  }

  else
  {
    return 7104878;
  }
}

_GroupActivities_UIKit::Subsystem_optional __swiftcall Subsystem.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Subsystem.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = _GroupActivities_UIKit_Subsystem_runtimeIssues;
  }

  else
  {
    v4.value = _GroupActivities_UIKit_Subsystem_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

unint64_t Subsystem.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0xD000000000000018;
  }

  else
  {
    return 0xD00000000000001ALL;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Subsystem(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000018;
  }

  else
  {
    v3 = 0xD00000000000001ALL;
  }

  if (v2)
  {
    v4 = &_sSo21NSAttributedStringKeya_yptMR;
  }

  else
  {
    v4 = "com.apple.calls.copresence";
  }

  v5 = v4 | 0x8000000000000000;
  if (*a2)
  {
    v6 = 0xD000000000000018;
  }

  else
  {
    v6 = 0xD00000000000001ALL;
  }

  if (*a2)
  {
    v7 = "com.apple.calls.copresence";
  }

  else
  {
    v7 = &_sSo21NSAttributedStringKeya_yptMR;
  }

  if (v3 == v6 && v5 == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Subsystem()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Subsystem(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Subsystem(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance Subsystem@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Subsystem.init(rawValue:), *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance Subsystem(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000018;
  }

  else
  {
    v2 = 0xD00000000000001ALL;
  }

  if (*v1)
  {
    v3 = "com.apple.calls.copresence";
  }

  else
  {
    v3 = &_sSo21NSAttributedStringKeya_yptMR;
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

uint64_t Logger.init<A>(subsystem:category:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  dispatch thunk of RawRepresentable.rawValue.getter();
  Logger.init(subsystem:category:)();
  return (*(*(a4 - 8) + 8))(a1, a4);
}

uint64_t one-time initialization function for copmanager()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.copmanager);
  __swift_project_value_buffer(v0, static Logger.copmanager);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for runtimeIssues(uint64_t a1)
{
  return one-time initialization function for runtimeIssues(a1, static Logger.runtimeIssues);
}

{
  return one-time initialization function for runtimeIssues(a1, static Log.runtimeIssues);
}

uint64_t one-time initialization function for extensionController()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Log.extensionController);
  __swift_project_value_buffer(v0, static Log.extensionController);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for groupSessionProviderObserver()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Log.groupSessionProviderObserver);
  __swift_project_value_buffer(v0, static Log.groupSessionProviderObserver);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for groupSessionProvider()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Log.groupSessionProvider);
  __swift_project_value_buffer(v0, static Log.groupSessionProvider);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for ckShareGroupSessionProvider()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Log.ckShareGroupSessionProvider);
  __swift_project_value_buffer(v0, static Log.ckShareGroupSessionProvider);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for personalGroupSessionProvider()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Log.personalGroupSessionProvider);
  __swift_project_value_buffer(v0, static Log.personalGroupSessionProvider);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for shareChangeObserver()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Log.shareChangeObserver);
  __swift_project_value_buffer(v0, static Log.shareChangeObserver);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for reliableBroadcast()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Log.reliableBroadcast);
  __swift_project_value_buffer(v0, static Log.reliableBroadcast);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for attachmentLedgerTopic()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Log.attachmentLedgerTopic);
  __swift_project_value_buffer(v0, static Log.attachmentLedgerTopic);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for runtimeIssues(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for sessionUI(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for systemCoordinator()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Log.systemCoordinator);
  __swift_project_value_buffer(v0, static Log.systemCoordinator);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for groupActivityAssociation()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Log.groupActivityAssociation);
  __swift_project_value_buffer(v0, static Log.groupActivityAssociation);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for nearbyActivityAdvertiser()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Log.nearbyActivityAdvertiser);
  __swift_project_value_buffer(v0, static Log.nearbyActivityAdvertiser);
  return Logger.init(subsystem:category:)();
}

uint64_t Log.default.unsafeMutableAddressor(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v4, a2);
}

uint64_t static Logger.sessionUI.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v25 = a5;
  v26 = a2;
  v28 = a4;
  v27 = a1;
  v24 = *(a3 - 8);
  v10 = MEMORY[0x28223BE20](a1);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 16);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v10);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v6);
  v22 = 1;
  if ((*(v15 + 48))(v20, 1, v14) != 1)
  {
    (*(v15 + 32))(v18, v20, v14);
    v27(v18, v12);
    (*(v15 + 8))(v18, v14);
    if (v7)
    {
      return (*(v24 + 32))(v25, v12, a3);
    }

    v22 = 0;
  }

  return (*(*(v28 - 8) + 56))(a6, v22, 1);
}

uint64_t DefaultStringInterpolation.appendInterpolation<A>(_:)(uint64_t a1, uint64_t a2)
{
  v6[2] = a2;
  type metadata accessor for Optional();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in DefaultStringInterpolation.appendInterpolation<A>(_:), v6, MEMORY[0x277D84A98], MEMORY[0x277D837D0], v2, &v7);
  if (v8)
  {
    v3 = v7;
  }

  else
  {
    v3 = 7104878;
  }

  if (v8)
  {
    v4 = v8;
  }

  else
  {
    v4 = 0xE300000000000000;
  }

  MEMORY[0x23EEA6390](v3, v4);
}

uint64_t closure #1 in >> prefix<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a3@<X8>)
{
  MEMORY[0x28223BE20](a1);
  (*(v5 + 16))(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = String.init<A>(reflecting:)();
  *a3 = result;
  a3[1] = v7;
  return result;
}

unint64_t lazy protocol witness table accessor for type Subsystem and conformance Subsystem()
{
  result = lazy protocol witness table cache variable for type Subsystem and conformance Subsystem;
  if (!lazy protocol witness table cache variable for type Subsystem and conformance Subsystem)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Subsystem and conformance Subsystem);
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t one-time initialization function for canvasPreviewPresentationManager()
{
  v0 = type metadata accessor for GroupSessionEndpointIdentifier();
  __swift_allocate_value_buffer(v0, static GroupSessionEndpointIdentifier.canvasPreviewPresentationManager);
  __swift_project_value_buffer(v0, static GroupSessionEndpointIdentifier.canvasPreviewPresentationManager);
  return GroupSessionEndpointIdentifier.init(rawValue:)();
}

uint64_t GroupSessionEndpointIdentifier.canvasPreviewPresentationManager.unsafeMutableAddressor()
{
  if (one-time initialization token for canvasPreviewPresentationManager != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for GroupSessionEndpointIdentifier();

  return __swift_project_value_buffer(v0, static GroupSessionEndpointIdentifier.canvasPreviewPresentationManager);
}

uint64_t static GroupSessionEndpointIdentifier.canvasPreviewPresentationManager.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for canvasPreviewPresentationManager != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for GroupSessionEndpointIdentifier();
  v3 = __swift_project_value_buffer(v2, static GroupSessionEndpointIdentifier.canvasPreviewPresentationManager);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t GroupSession.requestCanvasPreviewPresentationManagerClient()()
{
  *(v1 + 40) = v0;
  *(v1 + 48) = *v0;
  return MEMORY[0x2822009F8](GroupSession.requestCanvasPreviewPresentationManagerClient(), 0, 0);
}

{
  if (one-time initialization token for canvasPreviewPresentationManager != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for GroupSessionEndpointIdentifier();
  v2 = __swift_project_value_buffer(v1, static GroupSessionEndpointIdentifier.canvasPreviewPresentationManager);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *v3 = v0;
  v3[1] = GroupSession.requestCanvasPreviewPresentationManagerClient();

  return MEMORY[0x28211FD40](v2);
}

{
  v15 = v0;
  if (v0[8])
  {
    type metadata accessor for GroupSessionCanvasPreviewPresentationManagerClient(0);
    v1 = XPCClient.__allocating_init(listenerEndpoint:)();
  }

  else
  {
    if (one-time initialization token for previews != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Log.previews);

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = v0[5];
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v14 = v7;
      *v6 = 136315138;
      v0[4] = v5;
      swift_getWitnessTable();
      v8 = dispatch thunk of CustomStringConvertible.description.getter();
      v10 = v9;

      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v10, &v14);

      *(v6 + 4) = v11;
      _os_log_impl(&dword_23B6FA000, v3, v4, "Unable to get endpoint for canvas preview presentation manager on session: %s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x23EEA7200](v7, -1, -1);
      MEMORY[0x23EEA7200](v6, -1, -1);
    }

    else
    {
    }

    v1 = 0;
  }

  v12 = v0[1];

  return v12(v1);
}

{
  v22 = v0;
  if (one-time initialization token for previews != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.previews);

  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[9];
  if (v6)
  {
    v8 = v0[5];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v9 = 136315394;
    v0[2] = v8;
    swift_getWitnessTable();
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;

    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, &v21);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2080;
    v0[3] = v7;
    v15 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v16 = String.init<A>(reflecting:)();
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v21);

    *(v9 + 14) = v18;
    _os_log_impl(&dword_23B6FA000, v4, v5, "Failed to get endpoint for canvas preview presentation manager on session: %s, error: %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EEA7200](v10, -1, -1);
    MEMORY[0x23EEA7200](v9, -1, -1);
  }

  else
  {
  }

  v19 = v0[1];

  return v19(0);
}

uint64_t GroupSession.requestCanvasPreviewPresentationManagerClient()(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 64) = a1;
  *(v3 + 72) = v1;

  if (v1)
  {
    v4 = GroupSession.requestCanvasPreviewPresentationManagerClient();
  }

  else
  {
    v4 = GroupSession.requestCanvasPreviewPresentationManagerClient();
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t GroupSessionPreviewPresentationViewModel.previewData.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t GroupSessionPreviewPresentationViewModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC22_GroupActivities_UIKitP33_7EC4E9541CA9C2130F5EA0FCD480FE6640GroupSessionPreviewPresentationViewModel__previewData;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation4DataVSgGMd, &_s7Combine9PublishedVy10Foundation4DataVSgGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance GroupSessionPreviewPresentationViewModel@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for GroupSessionPreviewPresentationViewModel(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

void *GroupSessionPreviewPresentationView.body.getter@<X0>(void *a2@<X8>)
{
  v20 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA13_ArchivedViewVAA05EmptyG0V_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyAA13_ArchivedViewVAA05EmptyG0V_GMR);
  MEMORY[0x28223BE20](v2);
  v4 = &v18 - v3;
  v5 = type metadata accessor for _ArchivedViewStates();
  v18 = *(v5 - 8);
  v19 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for _ArchivedView();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v18 - v13;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v15 = v22;
  if (v22 >> 60 == 15)
  {
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type GroupSessionPreviewPresentationViewModel and conformance GroupSessionPreviewPresentationViewModel(&lazy protocol witness table cache variable for type _ArchivedView and conformance _ArchivedView, MEMORY[0x277CDD890], MEMORY[0x277CDD888]);
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v17 = v21;
    outlined copy of Data._Representation(v21, v22);
    _ArchivedViewStates.init(data:)();
    _ArchivedViewStates.state(at:)();
    (*(v18 + 8))(v7, v19);
    (*(v9 + 32))(v14, v12, v8);
    (*(v9 + 16))(v4, v14, v8);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type GroupSessionPreviewPresentationViewModel and conformance GroupSessionPreviewPresentationViewModel(&lazy protocol witness table cache variable for type _ArchivedView and conformance _ArchivedView, MEMORY[0x277CDD890], MEMORY[0x277CDD888]);
    _ConditionalContent<>.init(storage:)();
    outlined consume of Data?(v17, v15);
    return (*(v9 + 8))(v14, v8);
  }
}

uint64_t GroupSessionPreviewPresentationController.previewData.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t GroupSessionPreviewPresentationController.previewData.setter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void (*GroupSessionPreviewPresentationController.previewData.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + direct field offset for GroupSessionPreviewPresentationController.model);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *v4 = v4[1];
  return GroupSessionPreviewPresentationController.previewData.modify;
}

void GroupSessionPreviewPresentationController.previewData.modify(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = **a1;
  v5 = (*a1)[1];
  swift_getKeyPath();
  swift_getKeyPath();
  v3[2] = v4;
  v3[3] = v5;

  if (a2)
  {
    outlined copy of Data?(v4, v5);
    static Published.subscript.setter();
    outlined consume of Data?(*v3, v3[1]);
  }

  else
  {
    static Published.subscript.setter();
  }

  free(v3);
}

uint64_t GroupSessionPreviewPresentationController.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + direct field offset for GroupSessionPreviewPresentationController.delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*GroupSessionPreviewPresentationController.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = direct field offset for GroupSessionPreviewPresentationController.delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return PeoplePickerController.hostViewController.modify;
}

id GroupSessionPreviewPresentationController.init()()
{
  v1 = type metadata accessor for UIHostingControllerSizingOptions();
  MEMORY[0x28223BE20](v1);
  v2 = direct field offset for GroupSessionPreviewPresentationController.model;
  type metadata accessor for GroupSessionPreviewPresentationViewModel(0);
  v3 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
  Published.init(initialValue:)();
  *(v0 + v2) = v3;
  if (MEMORY[0x277D84F90] >> 62 && __CocoaSet.count.getter())
  {
    v4 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7Combine14AnyCancellableC_Tt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  else
  {
    v4 = MEMORY[0x277D84FA0];
  }

  *(v0 + direct field offset for GroupSessionPreviewPresentationController.subscriptions) = v4;
  *(v0 + direct field offset for GroupSessionPreviewPresentationController.delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  lazy protocol witness table accessor for type GroupSessionPreviewPresentationViewModel and conformance GroupSessionPreviewPresentationViewModel(&lazy protocol witness table cache variable for type GroupSessionPreviewPresentationViewModel and conformance GroupSessionPreviewPresentationViewModel, type metadata accessor for GroupSessionPreviewPresentationViewModel, &protocol conformance descriptor for GroupSessionPreviewPresentationViewModel);

  ObservedObject.init(wrappedValue:)();
  v11 = v5;
  lazy protocol witness table accessor for type GroupSessionPreviewPresentationView and conformance GroupSessionPreviewPresentationView();
  v10 = AnyView.init<A>(_:)();
  v6 = UIHostingController.init(rootView:)();
  result = [v6 view];
  if (result)
  {
    v8 = result;
    [result frame];
    [v8 setFrame_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI32UIHostingControllerSizingOptionsVGMd, &_ss23_ContiguousArrayStorageCy7SwiftUI32UIHostingControllerSizingOptionsVGMR);
    *(swift_allocObject() + 16) = xmmword_23B757EF0;
    v9 = v6;
    static UIHostingControllerSizingOptions.preferredContentSize.getter();
    lazy protocol witness table accessor for type GroupSessionPreviewPresentationViewModel and conformance GroupSessionPreviewPresentationViewModel(&lazy protocol witness table cache variable for type UIHostingControllerSizingOptions and conformance UIHostingControllerSizingOptions, MEMORY[0x277CDE4B0], MEMORY[0x277CDE4C0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay7SwiftUI32UIHostingControllerSizingOptionsVGMd, &_sSay7SwiftUI32UIHostingControllerSizingOptionsVGMR);
    lazy protocol witness table accessor for type [UIHostingControllerSizingOptions] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    dispatch thunk of UIHostingController.sizingOptions.setter();

    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double @objc GroupSessionPreviewPresentationController.preferredContentSize.getter(void *a1)
{
  v3.receiver = a1;
  v3.super_class = type metadata accessor for GroupSessionPreviewPresentationController(0);
  objc_msgSendSuper2(&v3, sel_preferredContentSize);
  if (result == 0.0 && v2 == 0.0)
  {
    return 370.0;
  }

  return result;
}

double GroupSessionPreviewPresentationController.preferredContentSize.getter()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for GroupSessionPreviewPresentationController(0);
  objc_msgSendSuper2(&v3, sel_preferredContentSize);
  if (result == 0.0 && v2 == 0.0)
  {
    return 370.0;
  }

  return result;
}

void @objc GroupSessionPreviewPresentationController.preferredContentSize.setter(void *a1, double a2, double a3)
{
  v5 = a1;
  GroupSessionPreviewPresentationController.preferredContentSize.setter(a2, a3);
}

uint64_t GroupSessionPreviewPresentationController.preferredContentSize.setter(double a1, double a2)
{
  v3 = v2;
  if (one-time initialization token for previews != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Log.previews);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 136315138;
    type metadata accessor for CGSize(0);
    v11 = String.init<A>(reflecting:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v20);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_23B6FA000, v7, v8, "Updating preferred content size on presentation controller to new size: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x23EEA7200](v10, -1, -1);
    MEMORY[0x23EEA7200](v9, -1, -1);
  }

  v14 = type metadata accessor for GroupSessionPreviewPresentationController(0);
  v21.receiver = v3;
  v21.super_class = v14;
  v15 = objc_msgSendSuper2(&v21, sel_setPreferredContentSize_, a1, a2);
  result = (*((*MEMORY[0x277D85000] & *v3) + class metadata base offset for GroupSessionPreviewPresentationController + 72))(v15);
  if (result)
  {
    v18 = v17;
    ObjectType = swift_getObjectType();
    (*(v18 + 8))(v3, ObjectType, v18);
    return swift_unknownObjectRelease();
  }

  return result;
}

Swift::Void __swiftcall GroupSessionPreviewPresentationController.viewDidLayoutSubviews()()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for GroupSessionPreviewPresentationController(0);
  v1 = objc_msgSendSuper2(&v5, sel_viewDidLayoutSubviews);
  if ((*((*MEMORY[0x277D85000] & *v0) + class metadata base offset for GroupSessionPreviewPresentationController + 72))(v1))
  {
    v3 = v2;
    ObjectType = swift_getObjectType();
    (*(v3 + 8))(v0, ObjectType, v3);
    swift_unknownObjectRelease();
  }
}

void @objc GroupSessionPreviewPresentationController.viewDidLayoutSubviews()(void *a1)
{
  v6.receiver = a1;
  v6.super_class = type metadata accessor for GroupSessionPreviewPresentationController(0);
  v1 = v6.receiver;
  v2 = objc_msgSendSuper2(&v6, sel_viewDidLayoutSubviews);
  if ((*((*MEMORY[0x277D85000] & *v1) + class metadata base offset for GroupSessionPreviewPresentationController + 72))(v2))
  {
    v4 = v3;
    ObjectType = swift_getObjectType();
    (*(v4 + 8))(v1, ObjectType, v4);
    swift_unknownObjectRelease();
  }
}

id GroupSessionPreviewPresentationController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

uint64_t GroupSessionPreviewPresentationController.__ivar_destroyer()
{

  v1 = v0 + direct field offset for GroupSessionPreviewPresentationController.delegate;

  return outlined destroy of weak PeoplePickerViewController?(v1);
}

id GroupSessionPreviewPresentationController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GroupSessionPreviewPresentationController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t @objc GroupSessionPreviewPresentationController.__ivar_destroyer(uint64_t a1)
{

  v2 = a1 + direct field offset for GroupSessionPreviewPresentationController.delegate;

  return outlined destroy of weak PeoplePickerViewController?(v2);
}

void vtable thunk for UIHostingController.__allocating_init(rootView:) dispatching to GroupSessionPreviewPresentationController.__allocating_init(rootView:)()
{

  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

void vtable thunk for UIHostingController.__allocating_init(coder:rootView:) dispatching to GroupSessionPreviewPresentationController.__allocating_init(coder:rootView:)()
{

  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

double key path getter for GroupSessionPreviewPresentationViewModel.previewData : GroupSessionPreviewPresentationViewModel@<D0>(_OWORD *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t key path setter for GroupSessionPreviewPresentationViewModel.previewData : GroupSessionPreviewPresentationViewModel(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  swift_getKeyPath();
  swift_getKeyPath();

  outlined copy of Data?(v2, v3);
  return static Published.subscript.setter();
}

uint64_t outlined copy of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined copy of Data._Representation(a1, a2);
  }

  return a1;
}

uint64_t outlined consume of Data?(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined consume of Data._Representation(result, a2);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GroupSessionPreviewPresentationView and conformance GroupSessionPreviewPresentationView()
{
  result = lazy protocol witness table cache variable for type GroupSessionPreviewPresentationView and conformance GroupSessionPreviewPresentationView;
  if (!lazy protocol witness table cache variable for type GroupSessionPreviewPresentationView and conformance GroupSessionPreviewPresentationView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GroupSessionPreviewPresentationView and conformance GroupSessionPreviewPresentationView);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type GroupSessionPreviewPresentationViewModel and conformance GroupSessionPreviewPresentationViewModel(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t lazy protocol witness table accessor for type [UIHostingControllerSizingOptions] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [UIHostingControllerSizingOptions] and conformance [A];
  if (!lazy protocol witness table cache variable for type [UIHostingControllerSizingOptions] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay7SwiftUI32UIHostingControllerSizingOptionsVGMd, &_sSay7SwiftUI32UIHostingControllerSizingOptionsVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [UIHostingControllerSizingOptions] and conformance [A]);
  }

  return result;
}

uint64_t type metadata accessor for GroupSessionPreviewPresentationViewModel(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void specialized GroupSessionPreviewPresentationController.init(coder:)()
{
  v1 = direct field offset for GroupSessionPreviewPresentationController.model;
  type metadata accessor for GroupSessionPreviewPresentationViewModel(0);
  v2 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
  Published.init(initialValue:)();
  *(v0 + v1) = v2;
  if (MEMORY[0x277D84F90] >> 62 && __CocoaSet.count.getter())
  {
    v3 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7Combine14AnyCancellableC_Tt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  else
  {
    v3 = MEMORY[0x277D84FA0];
  }

  *(v0 + direct field offset for GroupSessionPreviewPresentationController.subscriptions) = v3;
  *(v0 + direct field offset for GroupSessionPreviewPresentationController.delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void type metadata completion function for GroupSessionPreviewPresentationViewModel(uint64_t a1)
{
  type metadata accessor for Published<Data?>(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Published<Data?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Published<Data?>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Published<Data?>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ArchivedView, EmptyView> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ArchivedView, EmptyView> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ArchivedView, EmptyView> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA13_ArchivedViewVAA05EmptyF0VGMd, &_s7SwiftUI19_ConditionalContentVyAA13_ArchivedViewVAA05EmptyF0VGMR);
    lazy protocol witness table accessor for type GroupSessionPreviewPresentationViewModel and conformance GroupSessionPreviewPresentationViewModel(&lazy protocol witness table cache variable for type _ArchivedView and conformance _ArchivedView, MEMORY[0x277CDD890], MEMORY[0x277CDD888]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ArchivedView, EmptyView> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t (*GroupActivityAssociationInteraction.view.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC22_GroupActivities_UIKit35GroupActivityAssociationInteraction_view;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return GroupActivityAssociationInteraction.view.modify;
}

id GroupActivityAssociationInteraction.__allocating_init(associationKind:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  UUID.init()();
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR____TtC22_GroupActivities_UIKit35GroupActivityAssociationInteraction_associationKind;
  v5 = type metadata accessor for GroupActivityAssociationKind();
  (*(*(v5 - 8) + 56))(&v3[v4], 1, 1, v5);
  swift_beginAccess();
  outlined assign with copy of GroupActivityAssociationKind?(a1, &v3[v4]);
  swift_endAccess();
  v8.receiver = v3;
  v8.super_class = v1;
  v6 = objc_msgSendSuper2(&v8, sel_init);
  outlined destroy of NSObject?(a1, &_s15GroupActivities0A23ActivityAssociationKindVSgMd, &_s15GroupActivities0A23ActivityAssociationKindVSgMR);
  return v6;
}

id GroupActivityAssociationInteraction.init(associationKind:)(uint64_t a1)
{
  UUID.init()();
  swift_unknownObjectWeakInit();
  v3 = OBJC_IVAR____TtC22_GroupActivities_UIKit35GroupActivityAssociationInteraction_associationKind;
  v4 = type metadata accessor for GroupActivityAssociationKind();
  (*(*(v4 - 8) + 56))(&v1[v3], 1, 1, v4);
  swift_beginAccess();
  outlined assign with copy of GroupActivityAssociationKind?(a1, &v1[v3]);
  swift_endAccess();
  v7.receiver = v1;
  v7.super_class = type metadata accessor for GroupActivityAssociationInteraction(0);
  v5 = objc_msgSendSuper2(&v7, sel_init);
  outlined destroy of NSObject?(a1, &_s15GroupActivities0A23ActivityAssociationKindVSgMd, &_s15GroupActivities0A23ActivityAssociationKindVSgMR);
  return v5;
}

uint64_t outlined assign with copy of GroupActivityAssociationKind?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A23ActivityAssociationKindVSgMd, &_s15GroupActivities0A23ActivityAssociationKindVSgMR);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t key path setter for GroupActivityAssociationInteraction.associationKind : GroupActivityAssociationInteraction(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A23ActivityAssociationKindVSgMd, &_s15GroupActivities0A23ActivityAssociationKindVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v8 - v5;
  outlined init with copy of GroupActivityAssociationKind?(a1, &v8 - v5);
  return (*((*MEMORY[0x277D85000] & **a2) + 0x90))(v6);
}

void GroupActivityAssociationInteraction.associationKind.didset(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for GroupActivityAssociationKind();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A23ActivityAssociationKindVSgMd, &_s15GroupActivities0A23ActivityAssociationKindVSgMR);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v28 = &v26[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v12 = &v26[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A23ActivityAssociationKindVSg_ADtMd, &_s15GroupActivities0A23ActivityAssociationKindVSg_ADtMR);
  v14 = v13 - 8;
  MEMORY[0x28223BE20](v13);
  v16 = &v26[-v15];
  v17 = OBJC_IVAR____TtC22_GroupActivities_UIKit35GroupActivityAssociationInteraction_associationKind;
  swift_beginAccess();
  v18 = *(v14 + 56);
  outlined init with copy of GroupActivityAssociationKind?(v2 + v17, v16);
  outlined init with copy of GroupActivityAssociationKind?(a1, &v16[v18]);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      outlined destroy of NSObject?(v16, &_s15GroupActivities0A23ActivityAssociationKindVSgMd, &_s15GroupActivities0A23ActivityAssociationKindVSgMR);
      return;
    }
  }

  else
  {
    outlined init with copy of GroupActivityAssociationKind?(v16, v12);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v16[v18], v4);
      lazy protocol witness table accessor for type GroupActivityAssociationKind and conformance GroupActivityAssociationKind();
      v27 = dispatch thunk of static Equatable.== infix(_:_:)();
      v25 = *(v5 + 8);
      v25(v7, v4);
      v25(v12, v4);
      v20 = outlined destroy of NSObject?(v16, &_s15GroupActivities0A23ActivityAssociationKindVSgMd, &_s15GroupActivities0A23ActivityAssociationKindVSgMR);
      if (v27)
      {
        return;
      }

      goto LABEL_7;
    }

    (*(v5 + 8))(v12, v4);
  }

  v20 = outlined destroy of NSObject?(v16, &_s15GroupActivities0A23ActivityAssociationKindVSg_ADtMd, &_s15GroupActivities0A23ActivityAssociationKindVSg_ADtMR);
LABEL_7:
  v21 = (*((*MEMORY[0x277D85000] & *v2) + 0x68))(v20);
  if (v21)
  {
    v22 = v21;
    v23 = v28;
    outlined init with copy of GroupActivityAssociationKind?(v2 + v17, v28);
    v24 = v19(v23, 1, v4);
    outlined destroy of NSObject?(v23, &_s15GroupActivities0A23ActivityAssociationKindVSgMd, &_s15GroupActivities0A23ActivityAssociationKindVSgMR);
    if (v24 == 1)
    {
      GroupActivityAssociationInteraction.uninstall(from:)(v22);
    }

    else
    {
      GroupActivityAssociationInteraction.install(on:)(v22);
    }
  }
}

uint64_t GroupActivityAssociationInteraction.associationKind.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22_GroupActivities_UIKit35GroupActivityAssociationInteraction_associationKind;
  swift_beginAccess();
  return outlined init with copy of GroupActivityAssociationKind?(v1 + v3, a1);
}

uint64_t outlined init with copy of GroupActivityAssociationKind?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A23ActivityAssociationKindVSgMd, &_s15GroupActivities0A23ActivityAssociationKindVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t GroupActivityAssociationInteraction.associationKind.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A23ActivityAssociationKindVSgMd, &_s15GroupActivities0A23ActivityAssociationKindVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v8[-v4];
  v6 = OBJC_IVAR____TtC22_GroupActivities_UIKit35GroupActivityAssociationInteraction_associationKind;
  swift_beginAccess();
  outlined init with copy of GroupActivityAssociationKind?(v1 + v6, v5);
  swift_beginAccess();
  outlined assign with copy of GroupActivityAssociationKind?(a1, v1 + v6);
  swift_endAccess();
  GroupActivityAssociationInteraction.associationKind.didset(v5);
  outlined destroy of NSObject?(a1, &_s15GroupActivities0A23ActivityAssociationKindVSgMd, &_s15GroupActivities0A23ActivityAssociationKindVSgMR);
  return outlined destroy of NSObject?(v5, &_s15GroupActivities0A23ActivityAssociationKindVSgMd, &_s15GroupActivities0A23ActivityAssociationKindVSgMR);
}

void (*GroupActivityAssociationInteraction.associationKind.modify(uint64_t *a1))(char **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x70uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A23ActivityAssociationKindVSgMd, &_s15GroupActivities0A23ActivityAssociationKindVSgMR) - 8) + 64);
  if (v3)
  {
    v5[10] = swift_coroFrameAlloc();
    v5[11] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[10] = malloc(v6);
    v5[11] = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  v9 = OBJC_IVAR____TtC22_GroupActivities_UIKit35GroupActivityAssociationInteraction_associationKind;
  v5[12] = v7;
  v5[13] = v9;
  swift_beginAccess();
  outlined init with copy of GroupActivityAssociationKind?(v1 + v9, v8);
  return GroupActivityAssociationInteraction.associationKind.modify;
}

void GroupActivityAssociationInteraction.associationKind.modify(char **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = *(*a1 + 13);
  v5 = *(*a1 + 10);
  v6 = *(*a1 + 11);
  v7 = *(*a1 + 9);
  if (a2)
  {
    outlined init with copy of GroupActivityAssociationKind?(*(*a1 + 12), v6);
    outlined init with copy of GroupActivityAssociationKind?(v7 + v4, v5);
    swift_beginAccess();
    outlined assign with copy of GroupActivityAssociationKind?(v6, v7 + v4);
    swift_endAccess();
    GroupActivityAssociationInteraction.associationKind.didset(v5);
    outlined destroy of NSObject?(v5, &_s15GroupActivities0A23ActivityAssociationKindVSgMd, &_s15GroupActivities0A23ActivityAssociationKindVSgMR);
  }

  else
  {
    outlined init with copy of GroupActivityAssociationKind?(v7 + v4, v6);
    swift_beginAccess();
    outlined assign with copy of GroupActivityAssociationKind?(v3, v7 + v4);
    swift_endAccess();
    GroupActivityAssociationInteraction.associationKind.didset(v6);
  }

  outlined destroy of NSObject?(v6, &_s15GroupActivities0A23ActivityAssociationKindVSgMd, &_s15GroupActivities0A23ActivityAssociationKindVSgMR);
  outlined destroy of NSObject?(v3, &_s15GroupActivities0A23ActivityAssociationKindVSgMd, &_s15GroupActivities0A23ActivityAssociationKindVSgMR);
  free(v3);
  free(v6);
  free(v5);

  free(v2);
}

Swift::Void __swiftcall GroupActivityAssociationInteraction.didMove(to:)(UIView_optional *to)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A23ActivityAssociationKindVSgMd, &_s15GroupActivities0A23ActivityAssociationKindVSgMR);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v24 - v6;
  v8 = MEMORY[0x277D85000];
  v9 = *((*MEMORY[0x277D85000] & *v1) + 0x68);
  v10 = (v9)(v5);
  v11 = v10;
  if (to)
  {
    if (v10)
    {
      type metadata accessor for UIView();
      v12 = to;
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        return;
      }
    }
  }

  else
  {
    if (!v10)
    {
      return;
    }
  }

  v14 = v9();
  if (v14)
  {
    v15 = v14;
    GroupActivityAssociationInteraction.uninstall(from:)(v14);
  }

  v16 = *((*v8 & *v2) + 0x70);
  v17 = to;
  v18 = v16(to);
  (*((*v8 & *v2) + 0x88))(v18);
  v19 = type metadata accessor for GroupActivityAssociationKind();
  v20 = (*(*(v19 - 8) + 48))(v7, 1, v19);
  v21 = outlined destroy of NSObject?(v7, &_s15GroupActivities0A23ActivityAssociationKindVSgMd, &_s15GroupActivities0A23ActivityAssociationKindVSgMR);
  if (v20 != 1)
  {
    v22 = (v9)(v21);
    if (v22)
    {
      v23 = v22;
      GroupActivityAssociationInteraction.install(on:)(v22);
    }
  }
}

void GroupActivityAssociationInteraction.uninstall(from:)(void *a1)
{
  v2 = [a1 window];
  if (!v2)
  {
    return;
  }

  v3 = v2;
  v5 = [v2 windowScene];

  if (!v5)
  {
    return;
  }

  specialized static GroupActivityAssociationCoordinator.register()();
  if (one-time initialization token for componentKey != -1)
  {
    swift_once();
  }

  if (![v5 _sceneComponentForKey_])
  {
    goto LABEL_8;
  }

  type metadata accessor for GroupActivityAssociationSceneComponent();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    (*((*MEMORY[0x277D85000] & *v4) + 0xD8))(v1);
    swift_unknownObjectRelease();
LABEL_8:

    return;
  }

  swift_unknownObjectRelease();
}

void GroupActivityAssociationInteraction.install(on:)(void *a1)
{
  v2 = [a1 window];
  if (!v2)
  {
    return;
  }

  v3 = v2;
  v5 = [v2 windowScene];

  if (!v5)
  {
    return;
  }

  specialized static GroupActivityAssociationCoordinator.register()();
  if (one-time initialization token for componentKey != -1)
  {
    swift_once();
  }

  if (![v5 _sceneComponentForKey_])
  {
    goto LABEL_8;
  }

  type metadata accessor for GroupActivityAssociationSceneComponent();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    (*((*MEMORY[0x277D85000] & *v4) + 0xD0))(v1);
    swift_unknownObjectRelease();
LABEL_8:

    return;
  }

  swift_unknownObjectRelease();
}

unint64_t type metadata accessor for UIView()
{
  result = lazy cache variable for type metadata for UIView;
  if (!lazy cache variable for type metadata for UIView)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIView);
  }

  return result;
}

id GroupActivityAssociationInteraction.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t GroupActivityAssociationInteraction.id.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

id @objc GroupActivityAssociationInteraction.view.getter(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

void GroupActivityAssociationInteraction.view.setter(void *a1, uint64_t *a2)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

uint64_t (*SpatialTemplateAnchorInteraction.view.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC22_GroupActivities_UIKit32SpatialTemplateAnchorInteraction_view;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return SpatialTemplateAnchorInteraction.view.modify;
}

void GroupActivityAssociationInteraction.view.modify(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

id SpatialTemplateAnchorInteraction.__allocating_init(isEnabled:)(char a1)
{
  v3 = objc_allocWithZone(v1);
  UUID.init()();
  swift_unknownObjectWeakInit();
  v3[OBJC_IVAR____TtC22_GroupActivities_UIKit32SpatialTemplateAnchorInteraction_isEnabled] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id SpatialTemplateAnchorInteraction.init(isEnabled:)(uint64_t a1)
{
  v2 = a1;
  UUID.init()();
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR____TtC22_GroupActivities_UIKit32SpatialTemplateAnchorInteraction_isEnabled] = v2;
  v4.receiver = v1;
  v4.super_class = type metadata accessor for SpatialTemplateAnchorInteraction(0);
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t SpatialTemplateAnchorInteraction.isEnabled.getter()
{
  v1 = OBJC_IVAR____TtC22_GroupActivities_UIKit32SpatialTemplateAnchorInteraction_isEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

void SpatialTemplateAnchorInteraction.isEnabled.setter(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR____TtC22_GroupActivities_UIKit32SpatialTemplateAnchorInteraction_isEnabled;
  v5 = swift_beginAccess();
  v6 = *(v1 + v4);
  *(v1 + v4) = a1;
  if (v6 != v3)
  {
    v7 = (*((*MEMORY[0x277D85000] & *v1) + 0x68))(v5);
    if (v7)
    {
      v8 = v7;
      if (*(v1 + v4))
      {
        SpatialTemplateAnchorInteraction.install(on:)(v7);
      }

      else
      {
        SpatialTemplateAnchorInteraction.uninstall(from:)(v7);
      }
    }
  }
}

void (*SpatialTemplateAnchorInteraction.isEnabled.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC22_GroupActivities_UIKit32SpatialTemplateAnchorInteraction_isEnabled;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return SpatialTemplateAnchorInteraction.isEnabled.modify;
}

void SpatialTemplateAnchorInteraction.isEnabled.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 24);
  v3 = *(*a1 + 32);
  v5 = *(*a1 + 40);
  v6 = *(v4 + v3);
  *(v4 + v3) = v5;
  if (a2)
  {
    if ((v5 ^ v6))
    {
      v7 = (*((*MEMORY[0x277D85000] & **(v2 + 24)) + 0x68))();
      if (v7)
      {
        v8 = v7;
        if ((*(*(v2 + 24) + *(v2 + 32)) & 1) == 0)
        {
LABEL_5:
          SpatialTemplateAnchorInteraction.uninstall(from:)(v8);
LABEL_10:

          goto LABEL_11;
        }

LABEL_9:
        SpatialTemplateAnchorInteraction.install(on:)(v8);
        goto LABEL_10;
      }
    }
  }

  else if ((v5 ^ v6))
  {
    v9 = (*((*MEMORY[0x277D85000] & **(v2 + 24)) + 0x68))();
    if (v9)
    {
      v8 = v9;
      if (*(*(v2 + 24) + *(v2 + 32)) != 1)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }
  }

LABEL_11:

  free(v2);
}

Swift::Void __swiftcall SpatialTemplateAnchorInteraction.didMove(to:)(UIView_optional *to)
{
  v2 = v1;
  v4 = MEMORY[0x277D85000];
  v5 = *((*MEMORY[0x277D85000] & *v1) + 0x68);
  v6 = v5();
  v7 = v6;
  if (to)
  {
    if (v6)
    {
      type metadata accessor for UIView();
      v8 = to;
      v9 = static NSObject.== infix(_:_:)();

      if (v9)
      {
        return;
      }
    }
  }

  else
  {
    if (!v6)
    {
      return;
    }
  }

  v10 = v5();
  if (v10)
  {
    v11 = v10;
    SpatialTemplateAnchorInteraction.uninstall(from:)(v10);
  }

  v12 = *((*v4 & *v2) + 0x70);
  v13 = to;
  v14 = v12(to);
  if ((*((*v4 & *v2) + 0x88))(v14))
  {
    v15 = v5();
    if (v15)
    {
      v16 = v15;
      SpatialTemplateAnchorInteraction.install(on:)(v15);
    }
  }
}

void SpatialTemplateAnchorInteraction.uninstall(from:)(void *a1)
{
  v2 = [a1 window];
  if (!v2)
  {
    return;
  }

  v3 = v2;
  v5 = [v2 windowScene];

  if (!v5)
  {
    return;
  }

  specialized static GroupActivityAssociationCoordinator.register()();
  if (one-time initialization token for componentKey != -1)
  {
    swift_once();
  }

  if (![v5 _sceneComponentForKey_])
  {
    goto LABEL_8;
  }

  type metadata accessor for GroupActivityAssociationSceneComponent();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    (*((*MEMORY[0x277D85000] & *v4) + 0xE8))(v1);
    swift_unknownObjectRelease();
LABEL_8:

    return;
  }

  swift_unknownObjectRelease();
}

void SpatialTemplateAnchorInteraction.install(on:)(void *a1)
{
  v2 = [a1 window];
  if (!v2)
  {
    return;
  }

  v3 = v2;
  v5 = [v2 windowScene];

  if (!v5)
  {
    return;
  }

  specialized static GroupActivityAssociationCoordinator.register()();
  if (one-time initialization token for componentKey != -1)
  {
    swift_once();
  }

  if (![v5 _sceneComponentForKey_])
  {
    goto LABEL_8;
  }

  type metadata accessor for GroupActivityAssociationSceneComponent();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    (*((*MEMORY[0x277D85000] & *v4) + 0xE0))(v1);
    swift_unknownObjectRelease();
LABEL_8:

    return;
  }

  swift_unknownObjectRelease();
}

id GroupActivityAssociationInteraction.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void specialized GroupActivityAssociationInteraction._didMove(from:to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A23ActivityAssociationKindVSgMd, &_s15GroupActivities0A23ActivityAssociationKindVSgMR);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v14 - v6;
  v8 = MEMORY[0x277D85000];
  if (a1)
  {
    v5 = [a1 windowScene];
    if (v5)
    {
      v9 = v5;
      specialized static GroupActivityAssociationCoordinator.register()();
      if (one-time initialization token for componentKey != -1)
      {
        swift_once();
      }

      if (![v9 _sceneComponentForKey_])
      {
        goto LABEL_8;
      }

      type metadata accessor for GroupActivityAssociationSceneComponent();
      v10 = swift_dynamicCastClass();
      if (v10)
      {
        (*((*v8 & *v10) + 0xD8))(v2);
        swift_unknownObjectRelease();
LABEL_8:

        goto LABEL_10;
      }

      v5 = swift_unknownObjectRelease();
    }
  }

LABEL_10:
  v11 = (*((*v8 & *v2) + 0x68))(v5);
  if (v11)
  {
    v12 = v11;
    (*((*v8 & *v2) + 0x88))();
    v13 = type metadata accessor for GroupActivityAssociationKind();
    if ((*(*(v13 - 8) + 48))(v7, 1, v13) == 1)
    {

      outlined destroy of NSObject?(v7, &_s15GroupActivities0A23ActivityAssociationKindVSgMd, &_s15GroupActivities0A23ActivityAssociationKindVSgMR);
    }

    else
    {
      outlined destroy of NSObject?(v7, &_s15GroupActivities0A23ActivityAssociationKindVSgMd, &_s15GroupActivities0A23ActivityAssociationKindVSgMR);
      GroupActivityAssociationInteraction.install(on:)(v12);
    }
  }
}

void specialized SpatialTemplateAnchorInteraction._didMove(from:to:)(id a1)
{
  v2 = MEMORY[0x277D85000];
  if (a1)
  {
    a1 = [a1 windowScene];
    if (a1)
    {
      v3 = a1;
      specialized static GroupActivityAssociationCoordinator.register()();
      if (one-time initialization token for componentKey != -1)
      {
        swift_once();
      }

      if (![v3 _sceneComponentForKey_])
      {
        goto LABEL_8;
      }

      type metadata accessor for GroupActivityAssociationSceneComponent();
      v4 = swift_dynamicCastClass();
      if (v4)
      {
        (*((*v2 & *v4) + 0xE8))(v1);
        swift_unknownObjectRelease();
LABEL_8:

        goto LABEL_10;
      }

      a1 = swift_unknownObjectRelease();
    }
  }

LABEL_10:
  v5 = (*((*v2 & *v1) + 0x68))(a1);
  if (v5)
  {
    v6 = v5;
    if ((*((*v2 & *v1) + 0x88))())
    {
      SpatialTemplateAnchorInteraction.install(on:)(v6);
    }
  }
}

void type metadata completion function for GroupActivityAssociationInteraction(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    type metadata accessor for GroupActivityAssociationKind?(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for GroupActivityAssociationKind?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for GroupActivityAssociationKind?)
  {
    type metadata accessor for GroupActivityAssociationKind();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for GroupActivityAssociationKind?);
    }
  }
}

uint64_t type metadata completion function for SpatialTemplateAnchorInteraction(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GroupActivityAssociationKind and conformance GroupActivityAssociationKind()
{
  result = lazy protocol witness table cache variable for type GroupActivityAssociationKind and conformance GroupActivityAssociationKind;
  if (!lazy protocol witness table cache variable for type GroupActivityAssociationKind and conformance GroupActivityAssociationKind)
  {
    type metadata accessor for GroupActivityAssociationKind();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GroupActivityAssociationKind and conformance GroupActivityAssociationKind);
  }

  return result;
}

uint64_t GroupActivityAssociationCoordinator.init(mode:)(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84F90];
  if (!(MEMORY[0x277D84F90] >> 62))
  {
    goto LABEL_2;
  }

  v5 = a1;
  v6 = a2;
  v7 = __CocoaSet.count.getter();
  if (v7)
  {
    v8 = v7;
    v3 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC14CopresenceCore24GroupActivityAssociationC_Tt1g5(v7, 0);
    specialized Array._copyContents(initializing:)((v3 + 4), v8, MEMORY[0x277D84F90]);
    v10 = v9;

    a2 = v6;
    a1 = v5;
    if (v10 == v8)
    {
      goto LABEL_2;
    }

    __break(1u);
  }

  a2 = v6;
  a1 = v5;
LABEL_2:
  *(v2 + 16) = 0;
  *(v2 + 24) = v3;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 32) = 0;
  *(v2 + 56) = 0;
  if (a1)
  {
    *(v2 + 64) = a1;
    *(v2 + 72) = a2;
  }

  else
  {
    *(v2 + 64) = closure #1 in GroupActivityAssociationCoordinator.init(mode:);
    *(v2 + 72) = 0;
    GroupActivityAssociationCoordinator.recalculateGroupActivityAssociation(shareIfChanged:debounce:)(1, 0);
  }

  return v2;
}

uint64_t GroupActivityAssociationCoordinator.recalculateGroupActivityAssociation(shareIfChanged:debounce:)(char a1, char a2)
{
  v3 = v2;
  v4 = (*(v2 + 64))();
  if (one-time initialization token for groupActivityAssociation != -1)
  {
LABEL_42:
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Log.groupActivityAssociation);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = v4 >> 62;
  v43 = v4;
  if (os_log_type_enabled(v6, v7))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v45[0] = v10;
    *v9 = 136446466;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000003DLL, 0x800000023B75CB50, v45);
    *(v9 + 12) = 2048;
    if (v8)
    {
      v11 = __CocoaSet.count.getter();
    }

    else
    {
      v11 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v9 + 14) = v11;

    _os_log_impl(&dword_23B6FA000, v6, v7, "%{public}s: Found %ld association(s)", v9, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x23EEA7200](v10, -1, -1);
    MEMORY[0x23EEA7200](v9, -1, -1);
  }

  else
  {
  }

  swift_beginAccess();
  v13 = (v3 + 24);
  v12 = *(v3 + 24);
  v41 = *(v12 + 16);
  swift_beginAccess();
  v14 = specialized OrderedSet.intersection<A>(_:)(v4, *(v3 + 16), v12);
  v16 = v15;
  *(v3 + 16) = v14;
  *(v3 + 24) = v15;
  swift_endAccess();
  v40 = *(v16 + 16);
  if (v8)
  {
    v17 = __CocoaSet.count.getter();
    if (v17)
    {
      goto LABEL_9;
    }

LABEL_44:
    v44 = 0;
LABEL_45:

    if (a1)
    {
      if (v44 & 1 | (v41 != v40))
      {

        GroupActivityAssociationCoordinator.shareAnchors(_:debounce:)(v38, a2 & 1);
      }
    }

    return result;
  }

  v17 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v17)
  {
    goto LABEL_44;
  }

LABEL_9:
  v18 = 0;
  v44 = 0;
  while (1)
  {
    while (1)
    {
      if ((v43 & 0xC000000000000001) != 0)
      {
        v21 = MEMORY[0x23EEA67C0](v18, v43);
      }

      else
      {
        if (v18 >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_41;
        }

        v21 = *(v43 + 32 + 8 * v18);
      }

      v22 = v21;
      if (__OFADD__(v18++, 1))
      {
        __break(1u);
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      swift_beginAccess();
      v24 = *(v3 + 16);
      v25 = (*v13 + 32);
      v26 = *(*v13 + 16);
      if (!v24)
      {
        break;
      }

      specialized _HashTable.UnsafeHandle._find<A>(_:in:)(v22, v25, v26, (v24 + 16), v24 + 32);
      v20 = v19;

      if (v20)
      {
        goto LABEL_21;
      }

LABEL_11:
      swift_endAccess();

      if (v18 == v17)
      {
        goto LABEL_45;
      }
    }

    if (v26)
    {
      type metadata accessor for GroupActivityAssociation();
      do
      {
        v4 = *v25;
        v27 = static NSObject.== infix(_:_:)();

        if (v27)
        {
          goto LABEL_11;
        }

        ++v25;
      }

      while (--v26);
    }

LABEL_21:
    v28 = v22;
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v29 = *v13;
    v4 = *(*v13 + 16);
    v30 = *(v3 + 16);
    if (v30)
    {
      break;
    }

    if (v4 > 0xF)
    {
      v31 = 0;
LABEL_28:
      v32 = MEMORY[0x23EEA5450](v4);
      if (v31 <= v32)
      {
        v33 = v32;
      }

      else
      {
        v33 = v31;
      }

      v34 = _s19CollectionsInternal10_HashTableV6create23uncheckedUniqueElements5scale13reservedScaleACSgx_SiSgSitSkRzSH7ElementRpzlFZs15ContiguousArrayVy14CopresenceCore24GroupActivityAssociationCG_Tt2g5(v29, v33, 0, v31);

      *(v3 + 16) = v34;
    }

LABEL_37:
    swift_endAccess();

    v44 = 1;
    if (v18 == v17)
    {
      goto LABEL_45;
    }
  }

  swift_beginAccess();
  if (MEMORY[0x23EEA5430](*(v30 + 16) & 0x3FLL) < v4)
  {
    swift_beginAccess();
    v31 = *(v30 + 24) & 0x3FLL;
    if (v4 > 0xF || v31)
    {
      goto LABEL_28;
    }

    *(v3 + 16) = 0;
    goto LABEL_37;
  }

  result = swift_isUniquelyReferenced_native();
  v36 = *(v3 + 16);
  if ((result & 1) == 0)
  {
    if (!v36)
    {
      goto LABEL_51;
    }

    v37 = _HashTable.copy()();

    *(v3 + 16) = v37;
    v36 = v37;
  }

  if (v36)
  {
    _HashTable.UnsafeHandle.subscript.setter();
    goto LABEL_37;
  }

  __break(1u);
LABEL_51:
  __break(1u);
  return result;
}

uint64_t static GroupActivityAssociationCoordinator._createForTesting(activeGroupActivityAssociations:)(uint64_t a1, uint64_t a2)
{
  swift_allocObject();

  return GroupActivityAssociationCoordinator.init(mode:)(a1, a2);
}

void GroupActivityAssociationCoordinator.shareAnchors(_:debounce:)(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v26 - v7;
  v9 = *(v3 + 48);
  if (v9)
  {

    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    MEMORY[0x23EEA64F0](v9, MEMORY[0x277D84F78] + 8, v10, MEMORY[0x277D84950]);
  }

  if ((a2 & 1) != 0 && (v11 = *(v3 + 56), *(v3 + 56) = 1, v11 == 1))
  {
    v12 = type metadata accessor for TaskPriority();
    (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
    type metadata accessor for MainActor();

    v13 = static MainActor.shared.getter();
    v14 = swift_allocObject();
    v15 = MEMORY[0x277D85700];
    v14[2] = v13;
    v14[3] = v15;
    v14[4] = a1;
    v14[5] = v3;
    *(v3 + 48) = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v8, &async function pointer to partial apply for closure #1 in GroupActivityAssociationCoordinator.shareAnchors(_:debounce:), v14);
  }

  else
  {
    if (one-time initialization token for groupActivityAssociation != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Log.groupActivityAssociation);

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v27 = v20;
      *v19 = 136315138;
      v21 = type metadata accessor for GroupActivityAssociation();
      v22 = MEMORY[0x23EEA6410](a1, v21);
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v27);

      *(v19 + 4) = v24;
      _os_log_impl(&dword_23B6FA000, v17, v18, "Sharing anchors without debounce: %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x23EEA7200](v20, -1, -1);
      MEMORY[0x23EEA7200](v19, -1, -1);
    }

    v25 = *(v3 + 32);
    if (v25)
    {

      v25(a1);

      outlined consume of (@escaping @callee_guaranteed () -> ())?(v25);
    }
  }
}

uint64_t closure #1 in GroupActivityAssociationCoordinator.shareAnchors(_:debounce:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for ContinuousClock();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[7] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[8] = v8;
  v5[9] = v7;

  return MEMORY[0x2822009F8](closure #1 in GroupActivityAssociationCoordinator.shareAnchors(_:debounce:), v8, v7);
}

uint64_t closure #1 in GroupActivityAssociationCoordinator.shareAnchors(_:debounce:)()
{
  static Clock<>.continuous.getter();
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = closure #1 in GroupActivityAssociationCoordinator.shareAnchors(_:debounce:);

  return specialized Clock.sleep(for:tolerance:)(10000000000000000, 0, 0, 0, 1);
}

{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  *(*v1 + 88) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 72);
  v7 = *(v2 + 64);
  if (v0)
  {
    v8 = closure #1 in GroupActivityAssociationCoordinator.shareAnchors(_:debounce:);
  }

  else
  {
    v8 = closure #1 in GroupActivityAssociationCoordinator.shareAnchors(_:debounce:);
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

{
  v16 = v0;

  if (one-time initialization token for groupActivityAssociation != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Log.groupActivityAssociation);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[2];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136315138;
    v7 = type metadata accessor for GroupActivityAssociation();
    v8 = MEMORY[0x23EEA6410](v4, v7);
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v15);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_23B6FA000, v2, v3, "Sharing anchors after debounce: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x23EEA7200](v6, -1, -1);
    MEMORY[0x23EEA7200](v5, -1, -1);
  }

  v11 = *(v0[3] + 32);
  if (v11)
  {
    v12 = v0[2];

    v11(v12);
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v11);
  }

  v13 = v0[1];

  return v13();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t GroupActivityAssociationCoordinator.deinit()
{

  outlined consume of (@escaping @callee_guaranteed () -> ())?(*(v0 + 32));

  return v0;
}

uint64_t GroupActivityAssociationCoordinator.__deallocating_deinit()
{

  outlined consume of (@escaping @callee_guaranteed () -> ())?(*(v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t GroupActivityAssociationCoordinator.setOnGroupActivityAssociationChangeHandler(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (one-time initialization token for groupActivityAssociation != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Log.groupActivityAssociation);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_23B6FA000, v7, v8, "On group activity association change set", v9, 2u);
    MEMORY[0x23EEA7200](v9, -1, -1);
  }

  v10 = *(v3 + 32);
  *(v3 + 32) = a1;
  *(v3 + 40) = a2;
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v10);

  GroupActivityAssociationCoordinator.recalculateGroupActivityAssociation(shareIfChanged:debounce:)(0, 0);
  swift_beginAccess();

  GroupActivityAssociationCoordinator.shareAnchors(_:debounce:)(v11, 0);
}

uint64_t specialized Clock.sleep(for:tolerance:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = type metadata accessor for ContinuousClock.Instant();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](specialized Clock.sleep(for:tolerance:), 0, 0);
}

uint64_t specialized Clock.sleep(for:tolerance:)()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = type metadata accessor for ContinuousClock();
  v5 = lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock(&lazy protocol witness table cache variable for type ContinuousClock and conformance ContinuousClock, 255, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  dispatch thunk of Clock.now.getter();
  lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock(&lazy protocol witness table cache variable for type ContinuousClock.Instant and conformance ContinuousClock.Instant, 255, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = specialized Clock.sleep(for:tolerance:);
  v8 = v0[11];

  return MEMORY[0x2822008C8](v8, v0 + 2, v4, v5);
}

{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x2822009F8](specialized Clock.sleep(for:tolerance:), 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

{

  v1 = *(v0 + 8);

  return v1();
}

void *_ss15ContiguousArrayV12arrayLiteralAByxGxd_tcfC14CopresenceCore24GroupActivityAssociationC_Tt0g5(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = __CocoaSet.count.getter();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v4 = v3;
  v5 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC14CopresenceCore24GroupActivityAssociationC_Tt1g5(v3, 0);
  specialized Array._copyContents(initializing:)((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t specialized OrderedSet.intersection<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  static _UnsafeBitSet._withTemporaryBitSet(wordCount:run:)();
  __break(1u);

  result = outlined consume of OrderedSet<GroupActivityAssociation>?(0, v4);
  __break(1u);
  return result;
}

uint64_t specialized OrderedSet._regenerateHashTable()()
{
  v1 = *v0;
  if (*v0)
  {
    swift_beginAccess();
    v2 = *(v1 + 24) & 0x3FLL;
  }

  else
  {
    v2 = 0;
  }

  v3 = v0[1];
  v4 = *(v3 + 16);
  if (v2 || v4 >= 0x10)
  {
    v6 = MEMORY[0x23EEA5450](v4);
    if (v2 <= v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = v2;
    }

    v5 = _s19CollectionsInternal10_HashTableV6create23uncheckedUniqueElements5scale13reservedScaleACSgx_SiSgSitSkRzSH7ElementRpzlFZs15ContiguousArrayVy14CopresenceCore24GroupActivityAssociationCG_Tt2g5(v3, v7, 0, v2);
  }

  else
  {
    v5 = 0;
  }

  *v0 = v5;
  return result;
}

uint64_t _s19CollectionsInternal10_HashTableV6create23uncheckedUniqueElements5scale13reservedScaleACSgx_SiSgSitSkRzSH7ElementRpzlFZs15ContiguousArrayVy14CopresenceCore24GroupActivityAssociationCG_Tt2g5(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = *(a1 + 16);
  if (a3)
  {
    v7 = 0;
  }

  else
  {
    v7 = a2;
  }

  v8 = MEMORY[0x23EEA5450](v6, a2);
  result = 0;
  if (v8 <= v7)
  {
    v8 = v7;
  }

  if (v8 <= a4)
  {
    v8 = a4;
  }

  if (v8 >= 5)
  {
    v10 = MEMORY[0x23EEA5460](v8, a4);
    specialized _HashTable.UnsafeHandle.fill<A>(uncheckedUniqueElements:)(a1, (v10 + 16), v10 + 32);
    return v10;
  }

  return result;
}

Swift::Int specialized closure #1 in _HashTable.UnsafeHandle.fill<A>(uncheckedUniqueElements:)(Swift::Int result, uint64_t a2, Swift::Int *a3, uint64_t a4)
{
  v10 = result;
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      while (1)
      {
        v7 = *a3;
        v8 = *(v10 + 8 * v6);
        result = NSObject._rawHashValue(seed:)(v7);
        if (__OFSUB__(1 << *a3, 1))
        {
          break;
        }

        v9 = _HashTable.UnsafeHandle._startIterator(bucket:)();

        if (v9)
        {
          while (1)
          {
            _HashTable.BucketIterator.advance()();
          }
        }

        result = _HashTable.BucketIterator.currentValue.setter();
        if (++v6 == a2)
        {
          return result;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

Swift::Int specialized _HashTable.UnsafeHandle._find<A>(_:in:)(uint64_t a1, uint64_t a2, uint64_t a3, Swift::Int *a4, uint64_t a5)
{
  result = NSObject._rawHashValue(seed:)(*a4);
  if (__OFSUB__(1 << *a4, 1))
  {
    __break(1u);
  }

  else
  {
    _HashTable.UnsafeHandle._startIterator(bucket:)();
    v8 = _HashTable.BucketIterator.currentValue.getter();
    if ((v9 & 1) == 0)
    {
      type metadata accessor for GroupActivityAssociation();
      do
      {
        v10 = *(a2 + 8 * v8);
        v11 = static NSObject.== infix(_:_:)();

        if (v11)
        {
          break;
        }

        _HashTable.BucketIterator.advance()();
        v8 = _HashTable.BucketIterator.currentValue.getter();
      }

      while ((v12 & 1) == 0);
    }

    return v8;
  }

  return result;
}

uint64_t specialized closure #1 in OrderedSet.intersection<A>(_:)(uint64_t *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >> 62)
  {
    goto LABEL_23;
  }

  v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
    do
    {
      v6 = 0;
      v27 = a2 & 0xFFFFFFFFFFFFFF8;
      v28 = a2 & 0xC000000000000001;
      v23 = a2;
      v25 = a3;
      v26 = a2 + 32;
      v7 = a4 + 32;
      while (1)
      {
        if (v28)
        {
          v8 = MEMORY[0x23EEA67C0](v6, v23);
        }

        else
        {
          if (v6 >= *(v27 + 16))
          {
            goto LABEL_21;
          }

          v8 = *(v26 + 8 * v6);
        }

        v9 = v8;
        if (__OFADD__(v6++, 1))
        {
          break;
        }

        v11 = *(a4 + 16);
        if (a3)
        {

          v12 = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(v9, v7, v11, (a3 + 16), a3 + 32);
          v14 = v13;

          if (v14)
          {
            goto LABEL_5;
          }

          if ((v12 & 0x8000000000000000) != 0)
          {
            goto LABEL_22;
          }
        }

        else
        {
          if (!v11)
          {
            goto LABEL_5;
          }

          type metadata accessor for GroupActivityAssociation();
          v12 = 0;
          while (1)
          {
            v15 = *(v7 + 8 * v12);
            v16 = static NSObject.== infix(_:_:)();

            if (v16)
            {
              break;
            }

            if (v11 == ++v12)
            {
              goto LABEL_5;
            }
          }
        }

        *(*a1 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
LABEL_5:

        a3 = v25;
        if (v6 == v5)
        {
          goto LABEL_24;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      v17 = a2;
      v18 = __CocoaSet.count.getter();
      a2 = v17;
      v5 = v18;
    }

    while (v18);
  }

LABEL_24:
  v19 = *a1;
  v20 = a1[1];
  v21 = specialized default argument 2 of OrderedSet._extractSubset(using:count:extraCapacity:)();

  *&v30 = v19;
  *(&v30 + 1) = v20;
  return specialized OrderedSet._extractSubset(using:count:extraCapacity:)(v30, 0, 1, v21, a3, a4);
}

void *specialized closure #1 in static _UnsafeBitSet.withTemporaryBitSet<A>(wordCount:run:)(uint64_t a1, uint64_t *a2, void *(*a3)(__int128 *__return_ptr))
{
  result = (a3)(&v8, a1);
  if (!v3)
  {
    v6 = *a2;
    v7 = a2[1];
    *a2 = v8;
    return outlined consume of OrderedSet<GroupActivityAssociation>?(v6, v7);
  }

  return result;
}

uint64_t specialized OrderedSet._extractSubset(using:count:extraCapacity:)(__int128 a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a5;
  v8 = a4;
  if (a3)
  {
    if (a1 && *(&a1 + 1))
    {
      a2 = 0;
      v9 = 8 * *(&a1 + 1);
      v10 = a1;
      while (1)
      {
        v11 = vcnt_s8(*v10);
        v11.i16[0] = vaddlv_u8(v11);
        v12 = __OFADD__(a2, v11.u32[0]);
        a2 += v11.u32[0];
        if (v12)
        {
          break;
        }

        ++v10;
        v9 -= 8;
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
      goto LABEL_28;
    }

    goto LABEL_14;
  }

LABEL_7:
  if (!a2)
  {
LABEL_14:
    _ss15ContiguousArrayV12arrayLiteralAByxGxd_tcfC14CopresenceCore24GroupActivityAssociationC_Tt0g5(MEMORY[0x277D84F90]);
    specialized OrderedSet._reserveCapacity(_:persistent:)(v8, 0);

    v7 = 0;
    goto LABEL_26;
  }

  if (a2 == *(a6 + 16))
  {
    if (a5)
    {
      v13 = a2;
      swift_beginAccess();
      v14 = MEMORY[0x23EEA5430](*(v7 + 16) & 0x3FLL);
      a2 = v13;
      v15 = v14 - v13;
      if (!__OFSUB__(v14, v13))
      {
        goto LABEL_11;
      }
    }

    else
    {
      v15 = 15 - a2;
      if (!__OFSUB__(15, a2))
      {
LABEL_11:
        if (v15 < v8)
        {
          *&a1 = a2 + v8;
          if (__OFADD__(a2, v8))
          {
LABEL_31:
            __break(1u);
            return a1;
          }

          specialized OrderedSet._reserveCapacity(_:persistent:)(a1, 0);
        }

        goto LABEL_26;
      }
    }

    __break(1u);
  }

  else
  {
    v16 = a2 + a4;
    if (__OFADD__(a2, a4))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    _ss15ContiguousArrayV12arrayLiteralAByxGxd_tcfC14CopresenceCore24GroupActivityAssociationC_Tt0g5(MEMORY[0x277D84F90]);
    specialized OrderedSet._reserveCapacity(_:persistent:)(v16, 0);
    v8 = 0;
    v19 = 0;
  }

  *&a1 = _UnsafeBitSet.Iterator.next()();
  if ((BYTE8(a1) & 1) == 0)
  {
    while ((a1 & 0x8000000000000000) == 0)
    {
      if (a1 >= *(a6 + 16))
      {
        goto LABEL_29;
      }

      v17 = *(a6 + 32 + 8 * a1);
      specialized OrderedSet._appendNew(_:)(v17);

      *&a1 = _UnsafeBitSet.Iterator.next()();
      if (BYTE8(a1))
      {
        v8 = v19;
        goto LABEL_25;
      }
    }

LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

LABEL_25:

  v7 = v8;
LABEL_26:
  *&a1 = v7;
  return a1;
}

uint64_t specialized OrderedSet._appendNew(_:)(void *a1)
{
  a1;
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  result = specialized ContiguousArray._endMutation()();
  v3 = *v1;
  v4 = *(v1[1] + 16);
  if (!*v1)
  {
    if (v4 < 0x10)
    {
      return result;
    }

    return specialized OrderedSet._regenerateHashTable()();
  }

  swift_beginAccess();
  if (MEMORY[0x23EEA5430](*(v3 + 16) & 0x3FLL) < v4)
  {
    return specialized OrderedSet._regenerateHashTable()();
  }

  result = swift_isUniquelyReferenced_native();
  v5 = *v1;
  if ((result & 1) == 0)
  {
    if (!v5)
    {
LABEL_16:
      __break(1u);
      return result;
    }

    v6 = _HashTable.copy()();

    *v1 = v6;
    v5 = v6;
  }

  if (!v5)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = *(v5 + 16);

  result = NSObject._rawHashValue(seed:)(v7);
  if (__OFSUB__(1 << *(v5 + 16), 1))
  {
    __break(1u);
    goto LABEL_15;
  }

  if (_HashTable.UnsafeHandle._startIterator(bucket:)())
  {
    while (1)
    {
      _HashTable.BucketIterator.advance()();
    }
  }

  _HashTable.BucketIterator.currentValue.setter();
}

uint64_t specialized OrderedSet._reserveCapacity(_:persistent:)(uint64_t result, char a2)
{
  if (result < 0)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v3 = v2;
  v5 = result;
  specialized ContiguousArray.reserveCapacity(_:)();
  v6 = *v2;
  if (*v2)
  {
    swift_beginAccess();
    v7 = *(v6 + 16) & 0x3FLL;
    v8 = MEMORY[0x23EEA5450](v5);
    v9 = v8;
    if ((a2 & 1) == 0)
    {
      swift_beginAccess();
      v8 = v9;
      v9 = *(v6 + 24) & 0x3FLL;
    }
  }

  else
  {
    v8 = MEMORY[0x23EEA5450](v5);
    v7 = 0;
    if (a2)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }
  }

  v10 = v3[1];
  if (v7 < v8)
  {
    if (v9 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v9;
    }

LABEL_23:
    v14 = _s19CollectionsInternal10_HashTableV6create23uncheckedUniqueElements5scale13reservedScaleACSgx_SiSgSitSkRzSH7ElementRpzlFZs15ContiguousArrayVy14CopresenceCore24GroupActivityAssociationCG_Tt2g5(v10, v11, 0, v9);

    *v3 = v14;
    return result;
  }

  if (v9 <= v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = v9;
  }

  result = MEMORY[0x23EEA5450](*(v10 + 16));
  if (result <= v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = result;
  }

  if (v13 < v7)
  {
    if (v9 <= v13)
    {
      v11 = v13;
    }

    else
    {
      v11 = v9;
    }

    goto LABEL_23;
  }

  if (!v6 || (result = swift_isUniquelyReferenced_native(), (result & 1) != 0))
  {
    v15 = *v3;
    if (*v3)
    {
      goto LABEL_28;
    }

LABEL_32:
    if (!v9)
    {
      return result;
    }

    __break(1u);
    goto LABEL_34;
  }

  if (!*v3)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v15 = _HashTable.copy()();

  *v3 = v15;
  if (!v15)
  {
    goto LABEL_32;
  }

LABEL_28:
  result = swift_beginAccess();
  if ((*(v15 + 24) & 0x3FLL) != v9)
  {
    *(v15 + 24) = *(v15 + 24) & 0xFFFFFFFFFFFFFFC0 | v9 & 0x3F;
  }

  return result;
}

uint64_t specialized Array._copyContents(initializing:)(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [GroupActivityAssociation] and conformance [A]();
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay14CopresenceCore24GroupActivityAssociationCGMd, &_sSay14CopresenceCore24GroupActivityAssociationCGMR);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for GroupActivityAssociation();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void (*specialized protocol witness for Collection.subscript.read in conformance [A](void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x23EEA67C0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

void specialized static GroupActivityAssociationCoordinator.register()()
{
  if ((static GroupActivityAssociationCoordinator.isRegistered & 1) == 0)
  {
    static GroupActivityAssociationCoordinator.isRegistered = 1;
    if (one-time initialization token for groupActivityAssociation != -1)
    {
      swift_once();
    }

    v0 = type metadata accessor for Logger();
    __swift_project_value_buffer(v0, static Log.groupActivityAssociation);
    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&dword_23B6FA000, v1, v2, "Registering spatial template group activity association scene component.", v3, 2u);
      MEMORY[0x23EEA7200](v3, -1, -1);
    }

    v4 = type metadata accessor for GroupActivityAssociationCoordinator();
    swift_allocObject();
    v5 = GroupActivityAssociationCoordinator.init(mode:)(0, 0);
    type metadata accessor for GroupActivityAssociationCoordinatorTable();
    static GroupActivityAssociationCoordinatorTable.shared.getter();
    v7[3] = v4;
    v7[4] = lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock(&lazy protocol witness table cache variable for type GroupActivityAssociationCoordinator and conformance GroupActivityAssociationCoordinator, v6, type metadata accessor for GroupActivityAssociationCoordinator, &protocol conformance descriptor for GroupActivityAssociationCoordinator);
    v7[0] = v5;

    GroupActivityAssociationCoordinatorTable.registerCoordinator(_:)();

    __swift_destroy_boxed_opaque_existential_0(v7);
  }
}

void specialized GroupActivityAssociationCoordinator.sceneConnected(_:)()
{
  if (one-time initialization token for groupActivityAssociation != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Log.groupActivityAssociation);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_23B6FA000, oslog, v1, "New scene connected", v2, 2u);
    MEMORY[0x23EEA7200](v2, -1, -1);
  }
}

uint64_t partial apply for closure #1 in GroupActivityAssociationCoordinator.shareAnchors(_:debounce:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in ReactionPickerView.sendReaction(_:to:);

  return closure #1 in GroupActivityAssociationCoordinator.shareAnchors(_:debounce:)(a1, v4, v5, v7, v6);
}

uint64_t partial apply for specialized closure #1 in OrderedSet.intersection<A>(_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized closure #1 in OrderedSet.intersection<A>(_:)(a1, **(v2 + 16), *(v2 + 24), *(v2 + 32));
  if (!v3)
  {
    *a2 = result;
    a2[1] = v6;
  }

  return result;
}

uint64_t outlined consume of OrderedSet<GroupActivityAssociation>?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [GroupActivityAssociation] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [GroupActivityAssociation] and conformance [A];
  if (!lazy protocol witness table cache variable for type [GroupActivityAssociation] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay14CopresenceCore24GroupActivityAssociationCGMd, &_sSay14CopresenceCore24GroupActivityAssociationCGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [GroupActivityAssociation] and conformance [A]);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id UIScene.groupActivityAssociationSceneComponent.getter()
{
  specialized static GroupActivityAssociationCoordinator.register()();
  if (one-time initialization token for componentKey != -1)
  {
    swift_once();
  }

  result = [v0 _sceneComponentForKey_];
  if (result)
  {
    type metadata accessor for GroupActivityAssociationSceneComponent();
    result = swift_dynamicCastClass();
    if (!result)
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

uint64_t one-time initialization function for componentKey()
{
  type metadata accessor for NSString();
  result = NSString.init(stringLiteral:)();
  static GroupActivityAssociationSceneComponent.componentKey = result;
  return result;
}

uint64_t *GroupActivityAssociationSceneComponent.componentKey.unsafeMutableAddressor()
{
  if (one-time initialization token for componentKey != -1)
  {
    swift_once();
  }

  return &static GroupActivityAssociationSceneComponent.componentKey;
}

id static GroupActivityAssociationSceneComponent.componentKey.getter()
{
  if (one-time initialization token for componentKey != -1)
  {
    swift_once();
  }

  v1 = static GroupActivityAssociationSceneComponent.componentKey;

  return v1;
}

void *GroupActivityAssociationSceneComponent.activeGroupActivityAssociation.getter()
{
  v1 = OBJC_IVAR____TtC22_GroupActivities_UIKit38GroupActivityAssociationSceneComponent_activeGroupActivityAssociation;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void GroupActivityAssociationSceneComponent.activeGroupActivityAssociation.setter(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC22_GroupActivities_UIKit38GroupActivityAssociationSceneComponent_activeGroupActivityAssociation;
  swift_beginAccess();
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
  if (!v5)
  {
    if (!a1)
    {
      return;
    }

    v9 = a1;
    goto LABEL_7;
  }

  if (!a1 || (type metadata accessor for GroupActivityAssociation(), v6 = a1, v7 = v5, v8 = static NSObject.== infix(_:_:)(), v7, (v8 & 1) == 0))
  {
LABEL_7:
    if (swift_weakLoadStrong())
    {
      GroupActivityAssociationCoordinator.recalculateGroupActivityAssociation(shareIfChanged:debounce:)(1, 1);
    }

    v7 = a1;
    goto LABEL_10;
  }

LABEL_10:
}

void (*GroupActivityAssociationSceneComponent.activeGroupActivityAssociation.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC22_GroupActivities_UIKit38GroupActivityAssociationSceneComponent_activeGroupActivityAssociation;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return GroupActivityAssociationSceneComponent.activeGroupActivityAssociation.modify;
}

void GroupActivityAssociationSceneComponent.activeGroupActivityAssociation.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 24);
  v3 = *v4;
  v6 = *(*a1 + 32);
  v5 = *(*a1 + 40);
  v7 = *(v6 + v5);
  *(v6 + v5) = *v4;
  if (a2)
  {
    if (v7)
    {
      if (v3)
      {
        type metadata accessor for GroupActivityAssociation();
        v8 = v3;
        v9 = v7;
        v10 = static NSObject.== infix(_:_:)();

        if (v10)
        {

LABEL_15:
          goto LABEL_16;
        }
      }
    }

    else
    {
      if (!v3)
      {
LABEL_16:
        v11 = *v4;
        goto LABEL_22;
      }

      v14 = v3;
    }

    if (swift_weakLoadStrong())
    {
      GroupActivityAssociationCoordinator.recalculateGroupActivityAssociation(shareIfChanged:debounce:)(1, 1);
    }

    v8 = v3;
    goto LABEL_15;
  }

  if (!v7)
  {
    if (!v3)
    {
      goto LABEL_23;
    }

    v15 = v3;
    goto LABEL_19;
  }

  if (!v3 || (type metadata accessor for GroupActivityAssociation(), v11 = v3, v12 = v7, v13 = static NSObject.== infix(_:_:)(), v12, (v13 & 1) == 0))
  {
LABEL_19:
    if (swift_weakLoadStrong())
    {
      GroupActivityAssociationCoordinator.recalculateGroupActivityAssociation(shareIfChanged:debounce:)(1, 1);
    }

    v11 = v3;
    goto LABEL_22;
  }

LABEL_22:
LABEL_23:

  free(v2);
}

uint64_t GroupActivityAssociationSceneComponent.primaryGroupActivityAssociation()()
{
  v1 = type metadata accessor for GroupActivityAssociationKind.Storage();
  v44 = *(v1 - 8);
  v45 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7UISceneC5scene_15GroupActivities0C23ActivityAssociationKindV4kindtMd, &_sSo7UISceneC5scene_15GroupActivities0C23ActivityAssociationKindV4kindtMR);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v47 = (&v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x28223BE20](v6);
  v10 = (&v42 - v9);
  MEMORY[0x28223BE20](v8);
  v46 = &v42 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7UISceneC5scene_15GroupActivities0C23ActivityAssociationKindV4kindtSgMd, &_sSo7UISceneC5scene_15GroupActivities0C23ActivityAssociationKindV4kindtSgMR);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v42 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v42 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v42 - v22;
  v24 = OBJC_IVAR____TtC22_GroupActivities_UIKit38GroupActivityAssociationSceneComponent_groupActivityAssociationInteractions;
  swift_beginAccess();
  v25 = *(v0 + v24);
  v49 = v25;
  v50 = closure #1 in GroupActivityAssociationSceneComponent.primaryGroupActivityAssociation();
  v51 = 0;
  v52 = specialized closure #1 in LazySequenceProtocol.compactMap<A>(_:);
  v53 = 0;

  v26 = specialized LazyFilterSequence<>.startIndex.getter();
  if (v28)
  {
    goto LABEL_12;
  }

  if (*(v25 + 36) != v27)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v29 = 1;
  if (v26 == 1 << *(v25 + 32))
  {
    goto LABEL_6;
  }

  specialized Dictionary.Values.subscript.getter(v26, v27, v25, v48);
  closure #1 in GroupActivityAssociationSceneComponent.primaryGroupActivityAssociation()(v21);
  outlined destroy of WeakGroupActivityAssociationBox(v48);
  outlined init with copy of ModifiedContent<_ShapeView<ScaledShape<Capsule>, Material>, _AnimationModifier<Bool>>(v21, v18, &_sSo7UISceneC5scene_15GroupActivities0C23ActivityAssociationKindV4kindtSgMd, &_sSo7UISceneC5scene_15GroupActivities0C23ActivityAssociationKindV4kindtSgMR);
  if ((*(v5 + 48))(v18, 1, v4) == 1)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
    return result;
  }

  outlined init with take of ScaledShape<Capsule>(v18, v23, &_sSo7UISceneC5scene_15GroupActivities0C23ActivityAssociationKindV4kindtMd, &_sSo7UISceneC5scene_15GroupActivities0C23ActivityAssociationKindV4kindtMR);
  outlined destroy of NSObject?(v21, &_sSo7UISceneC5scene_15GroupActivities0C23ActivityAssociationKindV4kindtSgMd, &_sSo7UISceneC5scene_15GroupActivities0C23ActivityAssociationKindV4kindtSgMR);
  v29 = 0;
LABEL_6:
  (*(v5 + 56))(v23, v29, 1, v4);

  outlined init with copy of ModifiedContent<_ShapeView<ScaledShape<Capsule>, Material>, _AnimationModifier<Bool>>(v23, v15, &_sSo7UISceneC5scene_15GroupActivities0C23ActivityAssociationKindV4kindtSgMd, &_sSo7UISceneC5scene_15GroupActivities0C23ActivityAssociationKindV4kindtSgMR);
  if ((*(v5 + 48))(v15, 1, v4) == 1)
  {
    outlined destroy of NSObject?(v23, &_sSo7UISceneC5scene_15GroupActivities0C23ActivityAssociationKindV4kindtSgMd, &_sSo7UISceneC5scene_15GroupActivities0C23ActivityAssociationKindV4kindtSgMR);
    outlined destroy of NSObject?(v15, &_sSo7UISceneC5scene_15GroupActivities0C23ActivityAssociationKindV4kindtSgMd, &_sSo7UISceneC5scene_15GroupActivities0C23ActivityAssociationKindV4kindtSgMR);
    return 0;
  }

  v31 = v46;
  outlined init with take of ScaledShape<Capsule>(v15, v46, &_sSo7UISceneC5scene_15GroupActivities0C23ActivityAssociationKindV4kindtMd, &_sSo7UISceneC5scene_15GroupActivities0C23ActivityAssociationKindV4kindtMR);
  outlined init with copy of ModifiedContent<_ShapeView<ScaledShape<Capsule>, Material>, _AnimationModifier<Bool>>(v31, v10, &_sSo7UISceneC5scene_15GroupActivities0C23ActivityAssociationKindV4kindtMd, &_sSo7UISceneC5scene_15GroupActivities0C23ActivityAssociationKindV4kindtMR);

  v32 = *(v4 + 48);
  GroupActivityAssociationKind.storage.getter();
  v33 = type metadata accessor for GroupActivityAssociationKind();
  v43 = *(*(v33 - 8) + 8);
  v43(v10 + v32, v33);
  v35 = v44;
  v34 = v45;
  if ((*(v44 + 88))(v3, v45) != *MEMORY[0x277CCB1B0])
  {
    goto LABEL_14;
  }

  (*(v35 + 96))(v3, v34);
  v36 = v47;
  outlined init with copy of ModifiedContent<_ShapeView<ScaledShape<Capsule>, Material>, _AnimationModifier<Bool>>(v31, v47, &_sSo7UISceneC5scene_15GroupActivities0C23ActivityAssociationKindV4kindtMd, &_sSo7UISceneC5scene_15GroupActivities0C23ActivityAssociationKindV4kindtMR);
  v37 = *v36;
  v45 = *(v4 + 48);
  v38 = [v37 session];

  v39 = [v38 persistentIdentifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v40 = objc_allocWithZone(type metadata accessor for GroupActivityAssociation());
  v41 = GroupActivityAssociation.init(sceneID:associationID:)();
  outlined destroy of NSObject?(v31, &_sSo7UISceneC5scene_15GroupActivities0C23ActivityAssociationKindV4kindtMd, &_sSo7UISceneC5scene_15GroupActivities0C23ActivityAssociationKindV4kindtMR);
  outlined destroy of NSObject?(v23, &_sSo7UISceneC5scene_15GroupActivities0C23ActivityAssociationKindV4kindtSgMd, &_sSo7UISceneC5scene_15GroupActivities0C23ActivityAssociationKindV4kindtSgMR);
  v43(v36 + v45, v33);
  return v41;
}

uint64_t closure #1 in GroupActivityAssociationSceneComponent.primaryGroupActivityAssociation()@<X0>(char *a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A23ActivityAssociationKindVSgMd, &_s15GroupActivities0A23ActivityAssociationKindVSgMR);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v30 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v30 - v10;
  v12 = type metadata accessor for GroupActivityAssociationKind();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    (*((*MEMORY[0x277D85000] & *Strong) + 0x88))();
  }

  else
  {
    v18 = swift_unknownObjectWeakLoadStrong();
    if (v18)
    {
      v19 = v18;
      if ((*((*MEMORY[0x277D85000] & *v18) + 0x88))())
      {
        static GroupActivityAssociationKind.primary(_:)();

        (*(v13 + 56))(v6, 0, 1, v12);
      }

      else
      {

        (*(v13 + 56))(v6, 1, 1, v12);
      }

      outlined init with take of ScaledShape<Capsule>(v6, v9, &_s15GroupActivities0A23ActivityAssociationKindVSgMd, &_s15GroupActivities0A23ActivityAssociationKindVSgMR);
    }

    else
    {
      (*(v13 + 56))(v9, 1, 1, v12);
    }
  }

  outlined init with take of ScaledShape<Capsule>(v9, v11, &_s15GroupActivities0A23ActivityAssociationKindVSgMd, &_s15GroupActivities0A23ActivityAssociationKindVSgMR);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    outlined destroy of NSObject?(v11, &_s15GroupActivities0A23ActivityAssociationKindVSgMd, &_s15GroupActivities0A23ActivityAssociationKindVSgMR);
  }

  else
  {
    v20 = *(v13 + 32);
    v20(v15, v11, v12);
    v21 = swift_unknownObjectWeakLoadStrong();
    if (v21 || (v21 = swift_unknownObjectWeakLoadStrong()) != 0)
    {
      v22 = v21;
      v23 = (*((*MEMORY[0x277D85000] & *v21) + 0x68))();

      if (v23)
      {
        v24 = [v23 window];

        if (v24)
        {
          v25 = [v24 windowScene];

          if (v25)
          {
            v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7UISceneC5scene_15GroupActivities0C23ActivityAssociationKindV4kindtMd, &_sSo7UISceneC5scene_15GroupActivities0C23ActivityAssociationKindV4kindtMR);
            v27 = *(v26 + 48);
            *a2 = v25;
            v20(&a2[v27], v15, v12);
            return (*(*(v26 - 8) + 56))(a2, 0, 1, v26);
          }
        }
      }
    }

    (*(v13 + 8))(v15, v12);
  }

  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7UISceneC5scene_15GroupActivities0C23ActivityAssociationKindV4kindtMd, &_sSo7UISceneC5scene_15GroupActivities0C23ActivityAssociationKindV4kindtMR);
  return (*(*(v29 - 8) + 56))(a2, 1, 1, v29);
}

void GroupActivityAssociationSceneComponent.addGroupActivityAssociationInteraction(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC22_GroupActivities_UIKit35GroupActivityAssociationInteraction_id;
  v9 = OBJC_IVAR____TtC22_GroupActivities_UIKit38GroupActivityAssociationSceneComponent_groupActivityAssociationInteractions;
  swift_beginAccess();
  v10 = *(v1 + v9);
  if (!*(v10 + 16))
  {
    goto LABEL_6;
  }

  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a1 + v8);
  if ((v12 & 1) == 0)
  {

LABEL_6:
    v16[0] = 0;
    v16[1] = 0;
    v17 = 1;
    outlined destroy of NSObject?(v16, &_s22_GroupActivities_UIKit04WeakA22ActivityAssociationBox33_DED96278C70A9583889108CC8716ECF9LLVSgMd, &_s22_GroupActivities_UIKit04WeakA22ActivityAssociationBox33_DED96278C70A9583889108CC8716ECF9LLVSgMR);
    goto LABEL_7;
  }

  outlined init with copy of WeakGroupActivityAssociationBox(*(v10 + 56) + 16 * v11, v16);

  v17 = 0;
  Strong = swift_unknownObjectWeakLoadStrong();
  outlined destroy of NSObject?(v16, &_s22_GroupActivities_UIKit04WeakA22ActivityAssociationBox33_DED96278C70A9583889108CC8716ECF9LLVSgMd, &_s22_GroupActivities_UIKit04WeakA22ActivityAssociationBox33_DED96278C70A9583889108CC8716ECF9LLVSgMR);
  if (Strong)
  {

    return;
  }

LABEL_7:
  (*(v5 + 16))(v7, a1 + v8, v4);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v18[16] = 0;
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v18, v7);
  swift_endAccess();
  v14 = GroupActivityAssociationSceneComponent.primaryGroupActivityAssociation()();
  (*((*MEMORY[0x277D85000] & *v2) + 0x90))(v14);
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    outlined destroy of NSObject?(a1, &_s22_GroupActivities_UIKit04WeakA22ActivityAssociationBox33_DED96278C70A9583889108CC8716ECF9LLVSgMd, &_s22_GroupActivities_UIKit04WeakA22ActivityAssociationBox33_DED96278C70A9583889108CC8716ECF9LLVSgMR);
    specialized Dictionary.removeValue(forKey:)(a2, v9);
    v4 = type metadata accessor for UUID();
    (*(*(v4 - 8) + 8))(a2, v4);
    return outlined destroy of NSObject?(v9, &_s22_GroupActivities_UIKit04WeakA22ActivityAssociationBox33_DED96278C70A9583889108CC8716ECF9LLVSgMd, &_s22_GroupActivities_UIKit04WeakA22ActivityAssociationBox33_DED96278C70A9583889108CC8716ECF9LLVSgMR);
  }

  else
  {
    outlined init with take of WeakGroupActivityAssociationBox(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v9, a2, isUniquelyReferenced_nonNull_native);
    v7 = type metadata accessor for UUID();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v8;
  }

  return result;
}

void GroupActivityAssociationSceneComponent.addDeprecatedSpatialTemplateAnchorInteraction(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC22_GroupActivities_UIKit32SpatialTemplateAnchorInteraction_id;
  v9 = OBJC_IVAR____TtC22_GroupActivities_UIKit38GroupActivityAssociationSceneComponent_groupActivityAssociationInteractions;
  swift_beginAccess();
  v10 = *(v1 + v9);
  if (!*(v10 + 16))
  {
    goto LABEL_6;
  }

  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a1 + v8);
  if ((v12 & 1) == 0)
  {

LABEL_6:
    v16[0] = 0;
    v16[1] = 0;
    v17 = 1;
    outlined destroy of NSObject?(v16, &_s22_GroupActivities_UIKit04WeakA22ActivityAssociationBox33_DED96278C70A9583889108CC8716ECF9LLVSgMd, &_s22_GroupActivities_UIKit04WeakA22ActivityAssociationBox33_DED96278C70A9583889108CC8716ECF9LLVSgMR);
    goto LABEL_7;
  }

  outlined init with copy of WeakGroupActivityAssociationBox(*(v10 + 56) + 16 * v11, v16);

  v17 = 0;
  Strong = swift_unknownObjectWeakLoadStrong();
  outlined destroy of NSObject?(v16, &_s22_GroupActivities_UIKit04WeakA22ActivityAssociationBox33_DED96278C70A9583889108CC8716ECF9LLVSgMd, &_s22_GroupActivities_UIKit04WeakA22ActivityAssociationBox33_DED96278C70A9583889108CC8716ECF9LLVSgMR);
  if (Strong)
  {

    return;
  }

LABEL_7:
  (*(v5 + 16))(v7, a1 + v8, v4);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v18[16] = 0;
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v18, v7);
  swift_endAccess();
  v14 = GroupActivityAssociationSceneComponent.primaryGroupActivityAssociation()();
  (*((*MEMORY[0x277D85000] & *v2) + 0x90))(v14);
}

uint64_t GroupActivityAssociationSceneComponent.removeGroupActivityAssociationInteraction(_:)(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v5 = *a2;
  swift_beginAccess();
  specialized Dictionary.removeValue(forKey:)(a1 + v5, v8);
  outlined destroy of NSObject?(v8, &_s22_GroupActivities_UIKit04WeakA22ActivityAssociationBox33_DED96278C70A9583889108CC8716ECF9LLVSgMd, &_s22_GroupActivities_UIKit04WeakA22ActivityAssociationBox33_DED96278C70A9583889108CC8716ECF9LLVSgMR);
  swift_endAccess();
  v6 = GroupActivityAssociationSceneComponent.primaryGroupActivityAssociation()();
  return (*((*MEMORY[0x277D85000] & *v3) + 0x90))(v6);
}

void GroupActivityAssociationSceneComponent._scene.setter(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*GroupActivityAssociationSceneComponent._scene.modify(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC22_GroupActivities_UIKit38GroupActivityAssociationSceneComponent__scene;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return GroupActivityAssociationInteraction.view.modify;
}

id GroupActivityAssociationSceneComponent.__allocating_init(scene:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC22_GroupActivities_UIKit38GroupActivityAssociationSceneComponent_groupActivityAssociationInteractions] = MEMORY[0x277D84F98];
  *&v3[OBJC_IVAR____TtC22_GroupActivities_UIKit38GroupActivityAssociationSceneComponent_activeGroupActivityAssociation] = 0;
  swift_weakInit();
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, sel_init);

  return v4;
}

id GroupActivityAssociationSceneComponent.init(scene:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC22_GroupActivities_UIKit38GroupActivityAssociationSceneComponent_groupActivityAssociationInteractions] = MEMORY[0x277D84F98];
  *&v1[OBJC_IVAR____TtC22_GroupActivities_UIKit38GroupActivityAssociationSceneComponent_activeGroupActivityAssociation] = 0;
  swift_weakInit();
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v5.receiver = v1;
  v5.super_class = type metadata accessor for GroupActivityAssociationSceneComponent();
  v3 = objc_msgSendSuper2(&v5, sel_init);

  return v3;
}

id GroupActivityAssociationSceneComponent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id GroupActivityAssociationSceneComponent.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for GroupActivityAssociationSceneComponent();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v4);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  type metadata accessor for UUID();
  _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC9600]);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

unint64_t specialized Dictionary.removeValue(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v6)
  {
    v7 = result;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v12 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v9 = v12;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for UUID();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    outlined init with take of WeakGroupActivityAssociationBox(*(v9 + 56) + 16 * v7, a2);
    result = specialized _NativeDictionary._delete(at:)(v7, v9);
    *v3 = v9;
    *(a2 + 16) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 1;
  }

  return result;
}

unint64_t specialized _NativeDictionary._delete(at:)(int64_t a1, uint64_t a2)
{
  v35 = type metadata accessor for UUID();
  v4 = *(v35 - 8);
  result = MEMORY[0x28223BE20](v35);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = _HashTable.previousHole(before:)();
    v13 = v11;
    v34 = (v12 + 1) & v11;
    v15 = *(v4 + 16);
    v14 = v4 + 16;
    v32 = a2 + 64;
    v33 = v15;
    v16 = *(v14 + 56);
    v31 = (v14 - 8);
    v36 = v13;
    v17 = v35;
    do
    {
      v18 = v16;
      v19 = v16 * v10;
      v20 = *(a2 + 48) + v16 * v10;
      v21 = v14;
      v33(v7, v20, v17);
      _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC9600]);
      v22 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v31)(v7, v17);
      v23 = v36;
      v24 = v22 & v36;
      if (a1 >= v34)
      {
        if (v24 >= v34 && a1 >= v24)
        {
LABEL_15:
          v14 = v21;
          v16 = v18;
          if (v18 * a1 < v19 || *(a2 + 48) + v18 * a1 >= (*(a2 + 48) + v19 + v18))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v18 * a1 != v19)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v27 = *(a2 + 56);
          result = v27 + 16 * a1;
          v8 = v32;
          if (a1 < v10 || result >= v27 + 16 * v10 + 16)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v10;
            v23 = v36;
          }

          else
          {
            v23 = v36;
            if (a1 != v10)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v23 = v36;
              a1 = v10;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v34 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v14 = v21;
      v8 = v32;
      v16 = v18;
LABEL_4:
      v10 = (v10 + 1) & v23;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v28 = *(a2 + 16);
  v29 = __OFSUB__(v28, 1);
  v30 = v28 - 1;
  if (v29)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v30;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC9610]);
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;
      if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t specialized LazyFilterSequence<>.startIndex.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7UISceneC5scene_15GroupActivities0C23ActivityAssociationKindV4kindtSgMd, &_sSo7UISceneC5scene_15GroupActivities0C23ActivityAssociationKindV4kindtSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v22 - v2;
  v5 = *v0;
  v4 = v0[1];
  v6 = v0[3];
  v24 = v0[2];
  v25 = v4;
  v23 = v6;
  v7 = v5 + 64;
  result = _HashTable.startBucket.getter();
  v9 = result;
  v10 = *(v5 + 36);
  v22 = v5 + 72;
  while (1)
  {
    v12 = 1 << *(v5 + 32);
    if (v9 == v12)
    {
      return v9;
    }

    if (v9 < 0 || v9 >= v12)
    {
      break;
    }

    v13 = v9 >> 6;
    if ((*(v7 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
    {
      goto LABEL_20;
    }

    outlined init with copy of WeakGroupActivityAssociationBox(*(v5 + 56) + 16 * v9, v26);
    v25(v26);
    outlined destroy of WeakGroupActivityAssociationBox(v26);
    v14 = v23(v3);
    result = outlined destroy of NSObject?(v3, &_sSo7UISceneC5scene_15GroupActivities0C23ActivityAssociationKindV4kindtSgMd, &_sSo7UISceneC5scene_15GroupActivities0C23ActivityAssociationKindV4kindtSgMR);
    if (v14)
    {
      return v9;
    }

    v11 = 1 << *(v5 + 32);
    if (v9 >= v11)
    {
      goto LABEL_21;
    }

    v15 = *(v7 + 8 * v13);
    if ((v15 & (1 << v9)) == 0)
    {
      goto LABEL_22;
    }

    if (v10 != *(v5 + 36))
    {
      goto LABEL_23;
    }

    v16 = v15 & (-2 << (v9 & 0x3F));
    if (v16)
    {
      v11 = __clz(__rbit64(v16)) | v9 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v17 = v13 << 6;
      v18 = v13 + 1;
      v19 = (v22 + 8 * v13);
      while (v18 < (v11 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          result = outlined consume of [UUID : WeakGroupActivityAssociationBox].Index._Variant(v9, v10, 0);
          v11 = __clz(__rbit64(v20)) + v17;
          goto LABEL_3;
        }
      }

      result = outlined consume of [UUID : WeakGroupActivityAssociationBox].Index._Variant(v9, v10, 0);
    }

LABEL_3:
    v9 = v11;
    if (v10 != *(v5 + 36))
    {
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t specialized Dictionary.Values.subscript.getter@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || 1 << *(a3 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a3 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 36) == a2)
  {
    return outlined init with copy of WeakGroupActivityAssociationBox(*(a3 + 56) + 16 * result, a4);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t _s10Foundation4UUIDVACSHAAWlTm_0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t type metadata accessor for NSString()
{
  result = lazy cache variable for type metadata for NSString;
  if (!lazy cache variable for type metadata for NSString)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSString);
  }

  return result;
}

id PictureInPicturePreviewPresenter.sourceView.getter()
{
  v1 = OBJC_IVAR____TtC22_GroupActivities_UIKit32PictureInPicturePreviewPresenter_sourceView;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void PictureInPicturePreviewPresenter.sourceView.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC22_GroupActivities_UIKit32PictureInPicturePreviewPresenter_sourceView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  [*(v1 + OBJC_IVAR____TtC22_GroupActivities_UIKit32PictureInPicturePreviewPresenter_pictureInPictureProxy) viewFrameForInteractiveTransitionAnimationWhenEnteringBackgroundDidChangeForViewController];
}

id (*PictureInPicturePreviewPresenter.sourceView.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return PictureInPicturePreviewPresenter.sourceView.modify;
}

id PictureInPicturePreviewPresenter.sourceView.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(*(a1 + 24) + OBJC_IVAR____TtC22_GroupActivities_UIKit32PictureInPicturePreviewPresenter_pictureInPictureProxy);

    return [v5 viewFrameForInteractiveTransitionAnimationWhenEnteringBackgroundDidChangeForViewController];
  }

  return result;
}

uint64_t PictureInPicturePreviewPresenter.pictureInPictureShouldStartWhenEnteringBackground.getter()
{
  if (![objc_opt_self() isPictureInPictureSupported])
  {
    if (one-time initialization token for previews != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Log.previews);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v4, v5))
    {
      goto LABEL_12;
    }

    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = "PIP will not start when entering background, as it's unsupported";
    goto LABEL_11;
  }

  v1 = (*((*MEMORY[0x277D85000] & **(v0 + OBJC_IVAR____TtC22_GroupActivities_UIKit32PictureInPicturePreviewPresenter_presentationController)) + class metadata base offset for GroupSessionPreviewPresentationController + 48))();
  if (v2 >> 60 == 15)
  {
    if (one-time initialization token for previews != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Log.previews);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v4, v5))
    {
      goto LABEL_12;
    }

    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = "PIP will not start when entering background, as there's no preview to show";
LABEL_11:
    _os_log_impl(&dword_23B6FA000, v4, v5, v7, v6, 2u);
    MEMORY[0x23EEA7200](v6, -1, -1);
LABEL_12:

    return 0;
  }

  outlined consume of Data?(v1, v2);
  return 1;
}

char *PictureInPicturePreviewPresenter.init(sourceView:)(void *a1)
{
  v2 = v1;
  *&v1[OBJC_IVAR____TtC22_GroupActivities_UIKit32PictureInPicturePreviewPresenter_pictureInPictureProxyDelegateAdapter] = 0;
  v4 = objc_allocWithZone(type metadata accessor for GroupSessionPreviewPresentationController(0));
  v5 = GroupSessionPreviewPresentationController.init()();
  *&v2[OBJC_IVAR____TtC22_GroupActivities_UIKit32PictureInPicturePreviewPresenter_presentationController] = v5;
  v6 = objc_allocWithZone(MEMORY[0x277D38BE8]);
  v7 = v5;
  result = [v6 initWithControlsStyle:4 viewController:v7];
  if (result)
  {
    *&v2[OBJC_IVAR____TtC22_GroupActivities_UIKit32PictureInPicturePreviewPresenter_pictureInPictureProxy] = result;
    *&v2[OBJC_IVAR____TtC22_GroupActivities_UIKit32PictureInPicturePreviewPresenter_sourceView] = a1;
    v9 = type metadata accessor for PictureInPicturePreviewPresenter();
    v29.receiver = v2;
    v29.super_class = v9;
    v10 = a1;
    v11 = objc_msgSendSuper2(&v29, sel_init);
    v12 = *((*MEMORY[0x277D85000] & *v7) + class metadata base offset for GroupSessionPreviewPresentationController + 80);
    v13 = v11;
    v12(v11, &protocol witness table for PictureInPicturePreviewPresenter);
    v14 = type metadata accessor for PictureInPicturePreviewPresenter.PictureInPictureProxyDelegateAdapter();
    v15 = objc_allocWithZone(v14);
    v25 = v9;
    v26 = &protocol witness table for PictureInPicturePreviewPresenter;
    v24[0] = v13;
    outlined init with copy of ConversationManagerClientProtocol(v24, v15 + OBJC_IVAR____TtCC22_GroupActivities_UIKit32PictureInPicturePreviewPresenter36PictureInPictureProxyDelegateAdapter_delegate);
    v28.receiver = v15;
    v28.super_class = v14;
    v16 = objc_msgSendSuper2(&v28, sel_init);
    __swift_destroy_boxed_opaque_existential_0(v24);
    v17 = *&v13[OBJC_IVAR____TtC22_GroupActivities_UIKit32PictureInPicturePreviewPresenter_pictureInPictureProxyDelegateAdapter];
    *&v13[OBJC_IVAR____TtC22_GroupActivities_UIKit32PictureInPicturePreviewPresenter_pictureInPictureProxyDelegateAdapter] = v16;
    v18 = v16;

    v19 = OBJC_IVAR____TtC22_GroupActivities_UIKit32PictureInPicturePreviewPresenter_pictureInPictureProxy;
    v20 = *&v13[OBJC_IVAR____TtC22_GroupActivities_UIKit32PictureInPicturePreviewPresenter_pictureInPictureProxy];
    [v20 setDelegate_];

    v21 = *&v13[v19];
    v26 = specialized thunk for @callee_guaranteed (@guaranteed PGMutablePlaybackState?) -> ();
    v27 = 0;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 1107296256;
    v24[2] = thunk for @escaping @callee_guaranteed (@guaranteed PGMutablePlaybackState?) -> ();
    v25 = &block_descriptor_2;
    v22 = _Block_copy(v24);
    v23 = v21;

    [v23 updatePlaybackStateUsingBlock_];
    _Block_release(v22);

    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id PictureInPicturePreviewPresenter.PictureInPictureProxyDelegateAdapter.__allocating_init(delegate:)(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = specialized PictureInPicturePreviewPresenter.PictureInPictureProxyDelegateAdapter.__allocating_init(delegate:)(v5, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v6;
}

id specialized thunk for @callee_guaranteed (@guaranteed PGMutablePlaybackState?) -> ()(id result)
{
  if (result)
  {
    return [result setContentType_];
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed PGMutablePlaybackState?) -> ()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  swift_unknownObjectRetain();
  v3(a2);

  return swift_unknownObjectRelease();
}

Swift::Void __swiftcall PictureInPicturePreviewPresenter.updatePictureInPictureShouldStartWhenEnteringBackground()()
{
  v1 = v0;
  ShouldStartWhenEntering = PictureInPicturePreviewPresenter.pictureInPictureShouldStartWhenEnteringBackground.getter();
  if (one-time initialization token for previews != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Log.previews);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 67109120;
    *(v6 + 4) = ShouldStartWhenEntering & 1;
    _os_log_impl(&dword_23B6FA000, v4, v5, "Updating picture and picture with intent to start when application enters background: %{BOOL}d", v6, 8u);
    MEMORY[0x23EEA7200](v6, -1, -1);
  }

  v7 = *(v1 + OBJC_IVAR____TtC22_GroupActivities_UIKit32PictureInPicturePreviewPresenter_pictureInPictureProxy);

  [v7 setPictureInPictureShouldStartWhenEnteringBackground_];
}

Swift::Void __swiftcall PictureInPicturePreviewPresenter.updatePreferredContentSizeForViewController()()
{
  if (one-time initialization token for previews != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Log.previews);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (!os_log_type_enabled(v3, v4))
  {

    goto LABEL_7;
  }

  v5 = swift_slowAlloc();
  v6 = swift_slowAlloc();
  v15 = v6;
  *v5 = 136315394;
  [*&v2[OBJC_IVAR____TtC22_GroupActivities_UIKit32PictureInPicturePreviewPresenter_presentationController] preferredContentSize];
  type metadata accessor for CGSize(0);
  v7 = String.init<A>(reflecting:)();
  v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v15);

  *(v5 + 4) = v9;
  *(v5 + 12) = 2080;
  v10 = [*&v2[OBJC_IVAR____TtC22_GroupActivities_UIKit32PictureInPicturePreviewPresenter_pictureInPictureProxy] clientSessionIdentifier];

  if (v10)
  {
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, &v15);

    *(v5 + 14) = v14;
    _os_log_impl(&dword_23B6FA000, v3, v4, "Updating preferred content size for preview to size: %s for session: %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EEA7200](v6, -1, -1);
    MEMORY[0x23EEA7200](v5, -1, -1);
LABEL_7:

    [*&v2[OBJC_IVAR____TtC22_GroupActivities_UIKit32PictureInPicturePreviewPresenter_pictureInPictureProxy] preferredContentSizeDidChangeForViewController];
    return;
  }

  __break(1u);
}

uint64_t PictureInPicturePreviewPresenter.registerPreviewSource<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v4 + OBJC_IVAR____TtC22_GroupActivities_UIKit32PictureInPicturePreviewPresenter_pictureInPictureProxy);
  GroupSessionPreviewSource.groupSessionID.getter(a2, a3);
  v12 = UUID.uuidString.getter();
  v14 = v13;
  (*(v8 + 8))(v10, v7);
  v15 = MEMORY[0x23EEA6320](v12, v14);

  [v11 setClientSessionIdentifier_];

  return (*((*MEMORY[0x277D85000] & *v4) + 0xB0))();
}

uint64_t PictureInPicturePreviewPresenter.updatePreview<A>(for:using:)(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *a2;
  v5 = a2[1];
  v6 = MEMORY[0x277D85000];
  v7 = *((*MEMORY[0x277D85000] & **(v3 + OBJC_IVAR____TtC22_GroupActivities_UIKit32PictureInPicturePreviewPresenter_presentationController)) + class metadata base offset for GroupSessionPreviewPresentationController + 56);
  outlined copy of Data._Representation(*a2, v5);
  v8 = v7(v4, v5);
  (*((*v6 & *v3) + 0xB0))(v8);
  v9 = *((*v6 & *v3) + 0xB8);

  return v9();
}

uint64_t protocol witness for GroupSessionPreviewPresenter.updatePreview<A>(for:using:) in conformance PictureInPicturePreviewPresenter(uint64_t a1, uint64_t *a2)
{
  v3 = *v2;
  v4 = *a2;
  v5 = a2[1];
  v6 = MEMORY[0x277D85000];
  v7 = *((*MEMORY[0x277D85000] & **(v3 + OBJC_IVAR____TtC22_GroupActivities_UIKit32PictureInPicturePreviewPresenter_presentationController)) + class metadata base offset for GroupSessionPreviewPresentationController + 56);
  outlined copy of Data._Representation(*a2, v5);
  v8 = v7(v4, v5);
  v9 = (*((*v6 & *v3) + 0xB0))(v8);
  return (*((*v6 & *v3) + 0xB8))(v9);
}

uint64_t PictureInPicturePreviewPresenter.PictureInPictureProxyDelegateAdapter.delegate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCC22_GroupActivities_UIKit32PictureInPicturePreviewPresenter36PictureInPictureProxyDelegateAdapter_delegate;
  swift_beginAccess();
  return outlined init with copy of ConversationManagerClientProtocol(v1 + v3, a1);
}

uint64_t PictureInPicturePreviewPresenter.PictureInPictureProxyDelegateAdapter.delegate.setter(__int128 *a1)
{
  v3 = OBJC_IVAR____TtCC22_GroupActivities_UIKit32PictureInPicturePreviewPresenter36PictureInPictureProxyDelegateAdapter_delegate;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0((v1 + v3));
  outlined init with take of ConversationManagerClientProtocol(a1, v1 + v3);
  return swift_endAccess();
}

id PictureInPicturePreviewPresenter.PictureInPictureProxyDelegateAdapter.init(delegate:)(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7);
  v9 = specialized PictureInPicturePreviewPresenter.PictureInPictureProxyDelegateAdapter.init(delegate:)(v7, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v9;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

void *PictureInPicturePreviewPresenter.PictureInPictureProxyDelegateAdapter.pictureInPictureProxyViewControllerWindow(forTransitionAnimation:)(uint64_t a1)
{
  (*((*MEMORY[0x277D85000] & *v1) + 0x58))(v7);
  v3 = v8;
  v4 = v9;
  result = __swift_project_boxed_opaque_existential_1(v7, v8);
  if (a1)
  {
    v6 = (*(v4 + 8))(a1, v3, v4);
    __swift_destroy_boxed_opaque_existential_0(v7);
    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *PictureInPicturePreviewPresenter.PictureInPictureProxyDelegateAdapter.pictureInPictureProxyViewFrame(forTransitionAnimation:)(uint64_t a1)
{
  (*((*MEMORY[0x277D85000] & *v1) + 0x58))(v6);
  v3 = v7;
  v4 = v8;
  result = __swift_project_boxed_opaque_existential_1(v6, v7);
  if (a1)
  {
    (*(v4 + 16))(a1, v3, v4);
    return __swift_destroy_boxed_opaque_existential_0(v6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id PictureInPicturePreviewPresenter.PictureInPictureProxyDelegateAdapter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PictureInPicturePreviewPresenter.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void specialized Sequence.compactMap<A>(_:)(uint64_t a1)
{
  v1 = a1;
  v22 = MEMORY[0x277D84F90];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for UIScene();
    lazy protocol witness table accessor for type UIScene and conformance NSObject();
    Set.Iterator.init(_cocoa:)();
    v1 = v17;
    v2 = v18;
    v3 = v19;
    v4 = v20;
    v5 = v21;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

LABEL_8:
  v9 = v4;
  v10 = v5;
  while (1)
  {
    if (v1 < 0)
    {
      if (!__CocoaSet.Iterator.next()() || (type metadata accessor for UIScene(), swift_dynamicCast(), v13 = v16, v4 = v9, v5 = v10, !v16))
      {
LABEL_23:
        outlined consume of Set<UIScene>.Iterator._Variant();
        return;
      }

      goto LABEL_18;
    }

    v11 = v9;
    v12 = v10;
    v4 = v9;
    if (!v10)
    {
      break;
    }

LABEL_14:
    v5 = (v12 - 1) & v12;
    v13 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v13)
    {
      goto LABEL_23;
    }

LABEL_18:
    objc_opt_self();
    v14 = swift_dynamicCastObjCClass();
    if (!v14)
    {

      goto LABEL_8;
    }

    v15 = [v14 keyWindow];

    v9 = v4;
    v10 = v5;
    if (v15)
    {
      MEMORY[0x23EEA63E0]();
      if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      goto LABEL_8;
    }
  }

  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_23;
    }

    v12 = *(v2 + 8 * v4);
    ++v11;
    if (v12)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

id specialized PictureInPicturePreviewPresenter.PictureInPictureProxyDelegateAdapter.init(delegate:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v11[3] = a3;
  v11[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  outlined init with copy of ConversationManagerClientProtocol(v11, a2 + OBJC_IVAR____TtCC22_GroupActivities_UIKit32PictureInPicturePreviewPresenter36PictureInPictureProxyDelegateAdapter_delegate);
  v10.receiver = a2;
  v10.super_class = type metadata accessor for PictureInPicturePreviewPresenter.PictureInPictureProxyDelegateAdapter();
  v8 = objc_msgSendSuper2(&v10, sel_init);
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v8;
}

id specialized PictureInPicturePreviewPresenter.PictureInPictureProxyDelegateAdapter.__allocating_init(delegate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = objc_allocWithZone(type metadata accessor for PictureInPicturePreviewPresenter.PictureInPictureProxyDelegateAdapter());
  (*(v7 + 16))(v9, a1, a3);
  return specialized PictureInPicturePreviewPresenter.PictureInPictureProxyDelegateAdapter.init(delegate:)(v9, v10, a3, a4);
}

id specialized PictureInPicturePreviewPresenter.pictureInPictureProxyViewControllerWindowForTransitionAnimation(_:)()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0x88))();
  v2 = [v1 window];

  if (v2)
  {
    return v2;
  }

  v4 = [objc_opt_self() sharedApplication];
  v5 = [v4 connectedScenes];

  type metadata accessor for UIScene();
  lazy protocol witness table accessor for type UIScene and conformance NSObject();
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  specialized Sequence.compactMap<A>(_:)(v6);
  v8 = v7;

  if (!(v8 >> 62))
  {
    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_14:

    if (one-time initialization token for previews == -1)
    {
LABEL_15:
      v19 = type metadata accessor for Logger();
      __swift_project_value_buffer(v19, static Log.previews);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_23B6FA000, v20, v21, "There are no windows associated with the application, returning an empty window.", v22, 2u);
        MEMORY[0x23EEA7200](v22, -1, -1);
      }

      v23 = objc_allocWithZone(MEMORY[0x277D75DA0]);

      return [v23 init];
    }

LABEL_22:
    swift_once();
    goto LABEL_15;
  }

  if (!__CocoaSet.count.getter())
  {
    goto LABEL_14;
  }

LABEL_5:
  if ((v8 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x23EEA67C0](0, v8);
    goto LABEL_8;
  }

  if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_22;
  }

  v9 = *(v8 + 32);
LABEL_8:
  v10 = v9;

  if (one-time initialization token for previews != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Log.previews);
  v12 = v10;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  v15 = v12;

  if (!os_log_type_enabled(v13, v14))
  {

    return v12;
  }

  v16 = swift_slowAlloc();
  v17 = swift_slowAlloc();
  *v16 = 138412290;
  *(v16 + 4) = v15;
  *v17 = v15;
  v18 = v15;
  _os_log_impl(&dword_23B6FA000, v13, v14, "Source view is yet attached to a window, returning the first window of the application: %@", v16, 0xCu);
  outlined destroy of NSObject?(v17);
  MEMORY[0x23EEA7200](v17, -1, -1);
  MEMORY[0x23EEA7200](v16, -1, -1);

  return v18;
}

double specialized PictureInPicturePreviewPresenter.pictureInPictureProxyViewFrameForTransitionAnimation(_:)()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x88);
  v2 = v1();
  [v2 frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v29.origin.x = v4;
  v29.origin.y = v6;
  v29.size.width = v8;
  v29.size.height = v10;
  if (CGRectIsEmpty(v29) || (v11 = v1(), v12 = [v11 superview], v11, !v12))
  {
    if (one-time initialization token for previews != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static Log.previews);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_23B6FA000, v24, v25, "The source view does not yet have a frame or superview set, returning the main screen bounds for picture-in-picture", v26, 2u);
      MEMORY[0x23EEA7200](v26, -1, -1);
    }

    v12 = [objc_opt_self() mainScreen];
    [(UIView *)v12 bounds];
  }

  else
  {
    v13 = v1();
    [v13 frame];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;

    v30.origin.x = v15;
    v30.origin.y = v17;
    v30.size.width = v19;
    v30.size.height = v21;
    v22 = UIAccessibilityConvertFrameToScreenCoordinates(v30, v12);
  }

  v27 = *&v22;

  return v27;
}

void specialized PictureInPicturePreviewPresenter.PictureInPictureProxyDelegateAdapter.picture(_:willStartPictureInPictureWith:)(void *a1, const char *a2, ...)
{
  if (one-time initialization token for previews != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Log.previews);
  v5 = a1;
  oslog = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(oslog, v6))
  {

    goto LABEL_8;
  }

  v7 = swift_slowAlloc();
  v8 = swift_slowAlloc();
  v16 = v8;
  *v7 = 136315138;
  if (!a1)
  {
    __break(1u);
    goto LABEL_12;
  }

  v9 = v8;
  v10 = [v5 clientSessionIdentifier];

  if (!v10)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, &v16);

  *(v7 + 4) = v14;
  _os_log_impl(&dword_23B6FA000, oslog, v6, a2, v7, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v9);
  MEMORY[0x23EEA7200](v9, -1, -1);
  MEMORY[0x23EEA7200](v7, -1, -1);
LABEL_8:
}

void specialized PictureInPicturePreviewPresenter.PictureInPictureProxyDelegateAdapter.picture(_:failedToStartPictureInPictureWith:error:)(void *a1, NSObject *a2)
{
  if (one-time initialization token for previews != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Log.previews);
  v5 = a1;
  v6 = a2;
  oslog = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();
  if (!os_log_type_enabled(oslog, v7))
  {

    v21 = a2;

    goto LABEL_10;
  }

  v8 = swift_slowAlloc();
  v9 = swift_slowAlloc();
  v10 = swift_slowAlloc();
  v23 = v10;
  *v8 = 136315394;
  if (a1)
  {
    v11 = v10;
    v12 = [v5 clientSessionIdentifier];
    if (v12)
    {
      v13 = v12;

      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v23);

      *(v8 + 4) = v17;
      *(v8 + 12) = 2112;
      if (a2)
      {
        v18 = a2;
        v19 = _swift_stdlib_bridgeErrorToNSError();
        v20 = v19;
      }

      else
      {
        v19 = 0;
        v20 = 0;
      }

      *(v8 + 14) = v19;
      *v9 = v20;
      _os_log_impl(&dword_23B6FA000, oslog, v7, "Failed to start preview in picture in picture for session: %s with error: %@", v8, 0x16u);
      outlined destroy of NSObject?(v9);
      MEMORY[0x23EEA7200](v9, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x23EEA7200](v11, -1, -1);
      MEMORY[0x23EEA7200](v8, -1, -1);
      v21 = oslog;

LABEL_10:

      return;
    }
  }

  else
  {

    __break(1u);
  }

  __break(1u);
}

void specialized PictureInPicturePreviewPresenter.PictureInPictureProxyDelegateAdapter.picture(_:restoreUserInterfaceForPictureInPictureStopWithCompletionHandler:)(void *a1, void (*a2)(uint64_t))
{
  if (one-time initialization token for previews != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Log.previews);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v6, v7))
  {

    goto LABEL_8;
  }

  v8 = swift_slowAlloc();
  v9 = swift_slowAlloc();
  v16 = v9;
  *v8 = 136315138;
  if (!a1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v10 = v9;
  v11 = [v5 clientSessionIdentifier];

  if (v11)
  {
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, &v16);

    *(v8 + 4) = v15;
    _os_log_impl(&dword_23B6FA000, v6, v7, "Transitioning from preview to user interface for session: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x23EEA7200](v10, -1, -1);
    MEMORY[0x23EEA7200](v8, -1, -1);
LABEL_8:

    if (a2)
    {
      a2(1);
      return;
    }

    __break(1u);
    goto LABEL_11;
  }

LABEL_12:
  __break(1u);
}

unint64_t type metadata accessor for UIScene()
{
  result = lazy cache variable for type metadata for UIScene;
  if (!lazy cache variable for type metadata for UIScene)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIScene);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UIScene and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type UIScene and conformance NSObject;
  if (!lazy protocol witness table cache variable for type UIScene and conformance NSObject)
  {
    type metadata accessor for UIScene();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UIScene and conformance NSObject);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t one-time initialization function for shared()
{
  type metadata accessor for GroupSessionCanvasPreviewPresentationManager();
  result = swift_initStaticObject();
  static GroupSessionCanvasPreviewPresentationManager.shared = result;
  return result;
}

uint64_t *GroupSessionCanvasPreviewPresentationManager.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return &static GroupSessionCanvasPreviewPresentationManager.shared;
}

uint64_t static GroupSessionCanvasPreviewPresentationManager.shared.getter()
{
  type metadata accessor for GroupSessionCanvasPreviewPresentationManager();

  return swift_initStaticObject();
}

uint64_t one-time initialization function for identifier()
{
  v0 = type metadata accessor for GroupSessionEndpointIdentifier();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for canvasPreviewPresentationManager != -1)
  {
    swift_once();
  }

  v4 = __swift_project_value_buffer(v0, static GroupSessionEndpointIdentifier.canvasPreviewPresentationManager);
  (*(v1 + 16))(v3, v4, v0);
  v5 = GroupSessionEndpointIdentifier.rawValue.getter();
  v7 = v6;
  result = (*(v1 + 8))(v3, v0);
  static GroupSessionCanvasPreviewPresentationManager.identifier = v5;
  *algn_27E1805F8 = v7;
  return result;
}

uint64_t *GroupSessionCanvasPreviewPresentationManager.identifier.unsafeMutableAddressor()
{
  if (one-time initialization token for identifier != -1)
  {
    swift_once();
  }

  return &static GroupSessionCanvasPreviewPresentationManager.identifier;
}

uint64_t static GroupSessionCanvasPreviewPresentationManager.identifier.getter()
{
  if (one-time initialization token for identifier != -1)
  {
    swift_once();
  }

  v0 = static GroupSessionCanvasPreviewPresentationManager.identifier;

  return v0;
}

uint64_t protocol witness for static CustomEndpointProvider.identifier.getter in conformance GroupSessionCanvasPreviewPresentationManager()
{
  if (one-time initialization token for identifier != -1)
  {
    swift_once();
  }

  v0 = static GroupSessionCanvasPreviewPresentationManager.identifier;

  return v0;
}

uint64_t GroupSessionPreviewCoordinator.hostingController.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

uint64_t GroupSessionPreviewCoordinator.updatePreview(session:presenter:previewContent:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v5 = v4;
  v67 = a4;
  v68 = a3;
  v70 = *v5;
  v69 = *(v70 + 88);
  v8 = *(v69 - 8);
  MEMORY[0x28223BE20](a1);
  v66 = &v59 - v9;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v63 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  MEMORY[0x28223BE20](v13);
  v15 = &v59 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v59 - v19;
  MEMORY[0x28223BE20](v18);
  v23 = &v59 - v22;
  if (a1)
  {
    v59 = v21;
    v60 = a2;
    v61 = v8;

    v65 = a1;
    GroupSession.id.getter();
    v64 = v11;
    v24 = *(v11 + 56);
    v25 = v24(v23, 0, 1, v10);
    v26 = *(*v5 + 120);
    v62 = v5;
    v27 = v26(v25);
    if (v27)
    {
      v74 = v27;
      v71 = *(v70 + 80);
      v72 = v69;
      v73 = *(v70 + 96);
      v28 = type metadata accessor for GroupSessionPreviewHostingController(0, &v71);
      WitnessTable = swift_getWitnessTable();
      GroupSessionPreviewSource.groupSessionID.getter(v28, WitnessTable);

      v30 = v20;
      v31 = 0;
    }

    else
    {
      v30 = v20;
      v31 = 1;
    }

    v24(v30, v31, 1, v10);
    v34 = *(v13 + 48);
    outlined init with copy of UUID?(v23, v15);
    outlined init with copy of UUID?(v20, &v15[v34]);
    v35 = v64;
    v36 = *(v64 + 48);
    if (v36(v15, 1, v10) == 1)
    {
      outlined destroy of NSObject?(v20, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      outlined destroy of NSObject?(v23, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      if (v36(&v15[v34], 1, v10) == 1)
      {
        outlined destroy of NSObject?(v15, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      }
    }

    else
    {
      v37 = v59;
      outlined init with copy of UUID?(v15, v59);
      if (v36(&v15[v34], 1, v10) != 1)
      {
        v56 = v63;
        (*(v35 + 32))(v63, &v15[v34], v10);
        lazy protocol witness table accessor for type UUID and conformance UUID();
        v57 = dispatch thunk of static Equatable.== infix(_:_:)();
        v58 = *(v35 + 8);
        v58(v56, v10);
        outlined destroy of NSObject?(v20, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        outlined destroy of NSObject?(v23, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v58(v37, v10);
        outlined destroy of NSObject?(v15, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v38 = v65;
        if (v57)
        {
        }

LABEL_14:
        if (one-time initialization token for previews != -1)
        {
          swift_once();
        }

        v39 = type metadata accessor for Logger();
        __swift_project_value_buffer(v39, static Log.previews);

        v40 = Logger.logObject.getter();
        v41 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          v71 = v43;
          *v42 = 136315138;
          v74 = v38;
          v44 = *(v70 + 80);
          v45 = *(v70 + 96);
          type metadata accessor for GroupSession();
          swift_getWitnessTable();
          v46 = dispatch thunk of CustomStringConvertible.description.getter();
          v48 = v47;

          v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v48, &v71);

          *(v42 + 4) = v49;
          _os_log_impl(&dword_23B6FA000, v40, v41, "Session changed for preview coordinator to new session: %s", v42, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v43);
          MEMORY[0x23EEA7200](v43, -1, -1);
          MEMORY[0x23EEA7200](v42, -1, -1);

          v50 = v70;
        }

        else
        {

          v50 = v70;
          v44 = *(v70 + 80);
          v45 = *(v70 + 96);
        }

        v51 = *(v50 + 104);
        v52 = v69;
        v71 = v44;
        v72 = v69;
        *&v73 = v45;
        *(&v73 + 1) = v51;
        type metadata accessor for GroupSessionPreviewHostingController(0, &v71);

        v54 = v66;
        v68(v53);
        outlined init with copy of ConversationManagerClientProtocol(v60, &v71);
        v55 = specialized GroupSessionPreviewHostingController.__allocating_init(session:rootView:previewPresenter:)(v38, v54, &v71);
        (*(v61 + 8))(v54, v52);

        (*(*v62 + 128))(v55);
      }

      outlined destroy of NSObject?(v20, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      outlined destroy of NSObject?(v23, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      (*(v35 + 8))(v37, v10);
    }

    outlined destroy of NSObject?(v15, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
    v38 = v65;
    goto LABEL_14;
  }

  v32 = *(v70 + 128);

  return v32(0);
}

uint64_t outlined init with copy of UUID?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t GroupSessionPreviewCoordinator.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t GroupSessionPreviewCoordinator.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t GroupSessionPreviewCoordinator.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  return result;
}

id GroupSessionPreviewSourceView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id GroupSessionPreviewSourceView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v10.receiver = v4;
  v10.super_class = type metadata accessor for GroupSessionPreviewSourceView();
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a1, a2, a3, a4);
}

id GroupSessionPreviewSourceView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id GroupSessionPreviewSourceView.init(coder:)(void *a1, uint64_t a2)
{
  v6.receiver = v2;
  v6.super_class = type metadata accessor for GroupSessionPreviewSourceView();
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

id GroupSessionPreviewSourceView.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for GroupSessionPreviewSourceView();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t GroupSessionPreviewHostingView.previewContent.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 72));

  return v2;
}

id GroupSessionPreviewHostingView.makeUIView(context:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for GroupSessionPreviewSourceView();
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v2 init];
}

uint64_t GroupSessionPreviewHostingView.updateUIView(_:context:)(void *a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();
  type metadata accessor for UIViewRepresentableContext();
  UIViewRepresentableContext.coordinator.getter();
  v6 = v14[5];
  v12 = *v3;
  v13 = a1;
  v7 = *(a3 + 48);
  v8 = *(v7 + 24);
  v9 = *(a3 + 24);
  v14[3] = swift_getAssociatedTypeWitness();
  v14[4] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v14);
  v10 = a1;
  v8(&v13, v9, v7);

  (*(*v6 + 144))(v12, v14, *(v3 + *(a3 + 72)), *(v3 + *(a3 + 72) + 8));

  return __swift_destroy_boxed_opaque_existential_0(v14);
}

uint64_t GroupSessionPreviewHostingView.init(session:style:previewContent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = a1;
  v19[0] = a5;
  v19[1] = a6;
  v19[2] = a7;
  v19[3] = a8;
  v19[4] = a10;
  v19[5] = a11;
  v16 = type metadata accessor for GroupSessionPreviewHostingView(0, v19);
  result = (*(*(a6 - 8) + 32))(&a9[*(v16 + 68)], a2, a6);
  v18 = &a9[*(v16 + 72)];
  *v18 = a3;
  *(v18 + 1) = a4;
  return result;
}

id protocol witness for UIViewRepresentable.makeUIView(context:) in conformance GroupSessionPreviewHostingView<A, B, C>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for GroupSessionPreviewSourceView();
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v2 init];
}

uint64_t protocol witness for UIViewRepresentable.makeCoordinator() in conformance GroupSessionPreviewHostingView<A, B, C>@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized GroupSessionPreviewHostingView.makeCoordinator()(a1[2], a1[3], a1[4], a1[5], a1[6], a1[7]);
  *a2 = result;
  return result;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance GroupSessionPreviewHostingView<A, B, C>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212E3C8](a1, a2, a3, WitnessTable);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance GroupSessionPreviewHostingView<A, B, C>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212E358](a1, a2, a3, WitnessTable);
}

void protocol witness for View.body.getter in conformance GroupSessionPreviewHostingView<A, B, C>(uint64_t a1)
{
  swift_getWitnessTable();
  UIViewRepresentable.body.getter();
  __break(1u);
}

char *PictureInPicturePreviewPresentationStyle.makePreviewPresenter(configuration:)@<X0>(void **a1@<X0>, char **a2@<X8>)
{
  v3 = *a1;
  v4 = objc_allocWithZone(type metadata accessor for PictureInPicturePreviewPresenter());
  result = PictureInPicturePreviewPresenter.init(sourceView:)(v3);
  *a2 = result;
  return result;
}

char *protocol witness for GroupSessionPreviewPresentationStyle.makePreviewPresenter(configuration:) in conformance PictureInPicturePreviewPresentationStyle@<X0>(void **a1@<X0>, char **a2@<X8>)
{
  v3 = *a1;
  v4 = objc_allocWithZone(type metadata accessor for PictureInPicturePreviewPresenter());
  result = PictureInPicturePreviewPresenter.init(sourceView:)(v3);
  *a2 = result;
  return result;
}

uint64_t GroupSessionPreviewViewModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v43 = a1;
  v44 = a3;
  v5 = *(a2 + 24);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = *(v9 + 16);
  *&v10 = v40;
  *(&v10 + 1) = v5;
  v11 = *(v9 + 48);
  v37 = *(v9 + 56);
  v38 = v11;
  v49 = v11;
  v50 = v37;
  v36 = *(v9 + 32);
  v48 = v36;
  v47 = v10;
  v12 = type metadata accessor for GroupSessionPreviewHostingView(0, &v47);
  v42 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v32 - v13;
  swift_getWitnessTable();
  v32 = type metadata accessor for _ViewModifier_Content();
  v33 = v12;
  WitnessTable = swift_getWitnessTable();
  v39 = type metadata accessor for _BackgroundModifier();
  v15 = type metadata accessor for ModifiedContent();
  v41 = *(v15 - 8);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v35 = &v32 - v19;
  v20 = *v3;
  (*(v6 + 16))(v8, &v3[*(a2 + 68)], v5);
  v21 = &v3[*(a2 + 72)];
  v23 = *v21;
  v22 = *(v21 + 1);
  *v14 = v20;
  *&v47 = v40;
  *(&v47 + 1) = v5;
  v48 = v36;
  v49 = v38;
  v50 = v37;
  v24 = type metadata accessor for GroupSessionPreviewHostingView(0, &v47);
  (*(v6 + 32))(&v14[*(v24 + 68)], v8, v5);
  v25 = &v14[*(v24 + 72)];
  *v25 = v23;
  *(v25 + 1) = v22;

  static Alignment.center.getter();
  v26 = swift_getWitnessTable();
  v27 = v33;
  View.background<A>(_:alignment:)();
  (*(v42 + 8))(v14, v27);
  v28 = swift_getWitnessTable();
  v45 = v26;
  v46 = v28;
  swift_getWitnessTable();
  v29 = v35;
  static ViewBuilder.buildExpression<A>(_:)();
  v30 = *(v41 + 8);
  v30(v18, v15);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v30)(v29, v15);
}

uint64_t View.preview<A, B, C>(for:style:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v37 = a5;
  v30 = a6;
  v31 = a8;
  v34 = a3;
  v35 = a4;
  v32 = a2;
  v36 = a9;
  v15 = *(a7 - 8);
  v33 = a10;
  MEMORY[0x28223BE20](a1);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = v18;
  v39 = v19;
  v40 = v20;
  v41 = a11;
  v42 = a12;
  v43 = a13;
  v21 = type metadata accessor for GroupSessionPreviewViewModifier(0, &v38);
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v29 - v23;
  (*(v15 + 16))(v17, v32, a7);
  *v24 = a1;
  v38 = v30;
  v39 = a7;
  v40 = v31;
  v41 = a11;
  v42 = a12;
  v43 = a13;
  v25 = type metadata accessor for GroupSessionPreviewViewModifier(0, &v38);
  (*(v15 + 32))(&v24[*(v25 + 68)], v17, a7);
  v26 = &v24[*(v25 + 72)];
  v27 = v35;
  *v26 = v34;
  v26[1] = v27;

  MEMORY[0x23EEA5F40](v24, v37, v21, v33);
  return (*(v22 + 8))(v24, v21);
}

unint64_t lazy protocol witness table accessor for type UUID and conformance UUID()
{
  result = lazy protocol witness table cache variable for type UUID and conformance UUID;
  if (!lazy protocol witness table cache variable for type UUID and conformance UUID)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UUID and conformance UUID);
  }

  return result;
}

uint64_t specialized GroupSessionPreviewHostingView.makeCoordinator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[0] = a1;
  v7[1] = a3;
  v7[2] = a4;
  v7[3] = a6;
  type metadata accessor for GroupSessionPreviewCoordinator(0, v7);
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

unint64_t lazy protocol witness table accessor for type PictureInPicturePreviewPresentationStyle and conformance PictureInPicturePreviewPresentationStyle()
{
  result = lazy protocol witness table cache variable for type PictureInPicturePreviewPresentationStyle and conformance PictureInPicturePreviewPresentationStyle;
  if (!lazy protocol witness table cache variable for type PictureInPicturePreviewPresentationStyle and conformance PictureInPicturePreviewPresentationStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PictureInPicturePreviewPresentationStyle and conformance PictureInPicturePreviewPresentationStyle);
  }

  return result;
}

unint64_t type metadata accessor for ()()
{
  result = lazy cache variable for type metadata for ();
  if (!lazy cache variable for type metadata for ())
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &lazy cache variable for type metadata for ());
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GroupSessionPreviewPresentationStyleConfiguration(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for GroupSessionPreviewPresentationStyleConfiguration(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PictureInPicturePreviewPresentationStyle(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for PictureInPicturePreviewPresentationStyle(_WORD *result, int a2, int a3)
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

unint64_t type metadata completion function for GroupSessionPreviewHostingView(void *a1)
{
  type metadata accessor for GroupSession();
  result = type metadata accessor for Optional();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for ()();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GroupSessionPreviewHostingView(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = *(*(*(a3 + 24) - 8) + 64) + 7;
  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v9 = ((v8 + ((v6 + 8) & ~v6)) & 0xFFFFFFFFFFFFFFF8) + 16;
  v10 = a2 - v7;
  v11 = v9 & 0xFFFFFFF8;
  if ((v9 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = v10 + 1;
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

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v9)) == 0)
  {
LABEL_28:
    v18 = (a1 + v6 + 8) & ~v6;
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(v18);
    }

    v19 = *((v8 + v18) & 0xFFFFFFFFFFFFFFF8);
    if (v19 >= 0xFFFFFFFF)
    {
      LODWORD(v19) = -1;
    }

    return (v19 + 1);
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v7 + (v11 | v17) + 1;
}

_BYTE *storeEnumTagSinglePayload for GroupSessionPreviewHostingView(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 24) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = *(*(*(a4 + 24) - 8) + 64) + 7;
  v10 = ((v9 + ((v8 + 8) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v14 = 0;
    v15 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = a3 - v7;
    if (((v9 + ((v8 + 8) & ~v8)) & 0xFFFFFFF8) == 0xFFFFFFF0)
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

    v15 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&result[v10] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v10] = 0;
      }

      else if (v14)
      {
        result[v10] = 0;
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
      result = (&result[v8 + 8] & ~v8);
      if (v6 < 0x7FFFFFFF)
      {
        v20 = (&result[v9] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v20 = a2 & 0x7FFFFFFF;
          v20[1] = 0;
        }

        else
        {
          *v20 = a2 - 1;
        }
      }

      else
      {
        v19 = *(v5 + 56);

        return v19(result);
      }

      return result;
    }
  }

  if (((v9 + ((v8 + 8) & ~v8)) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1;
  }

  if (((v9 + ((v8 + 8) & ~v8)) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v17 = ~v7 + a2;
    v18 = result;
    bzero(result, ((v9 + ((v8 + 8) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 16);
    result = v18;
    *v18 = v17;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      *&result[v10] = v16;
    }

    else
    {
      *&result[v10] = v16;
    }
  }

  else if (v14)
  {
    result[v10] = v16;
  }

  return result;
}

id GroupSessionCanvasPreviewPresentationManagerHostConnection.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GroupSessionCanvasPreviewPresentationManagerHostConnection(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for GroupSessionCanvasPreviewPresentationManagerHostConnection(uint64_t a1)
{
  result = type metadata singleton initialization cache for GroupSessionCanvasPreviewPresentationManagerHostConnection;
  if (!type metadata singleton initialization cache for GroupSessionCanvasPreviewPresentationManagerHostConnection)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t @objc GroupSessionCanvasPreviewPresentationManagerHostConnection.registerPreview(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  return (*(v4 + 8))(v6, v3);
}

void @objc GroupSessionCanvasPreviewPresentationManagerHostConnection.updatePreview(_:)(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  outlined consume of Data._Representation(v3, v4);
}

id GroupSessionCanvasPreviewPresentationManagerClient.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id GroupSessionCanvasPreviewPresentationManagerClient.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GroupSessionCanvasPreviewPresentationManagerClient(0);
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t type metadata accessor for GroupSessionCanvasPreviewPresentationManagerClient(uint64_t a1)
{
  result = type metadata singleton initialization cache for GroupSessionCanvasPreviewPresentationManagerClient;
  if (!type metadata singleton initialization cache for GroupSessionCanvasPreviewPresentationManagerClient)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id @objc GroupSessionCanvasPreviewPresentationManagerClient.init()(void *a1)
{
  v2.receiver = a1;
  v2.super_class = type metadata accessor for GroupSessionCanvasPreviewPresentationManagerClient(0);
  return objc_msgSendSuper2(&v2, sel_init);
}

id GroupSessionCanvasPreviewPresentationManagerClient.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GroupSessionCanvasPreviewPresentationManagerClient(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t static GroupSessionCanvasPreviewPresentationManagerInterface.identity.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CFD118];
  v3 = type metadata accessor for XPCIdentity();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

id static GroupSessionCanvasPreviewPresentationManagerInterface.hostObjectInterface.getter(void *a1)
{
  v1 = [objc_opt_self() interfaceWithProtocol_];

  return v1;
}

uint64_t protocol witness for static XPCInterface.identity.getter in conformance GroupSessionCanvasPreviewPresentationManagerInterface@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CFD118];
  v3 = type metadata accessor for XPCIdentity();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

id protocol witness for static XPCInterface.hostObjectInterface.getter in conformance GroupSessionCanvasPreviewPresentationManagerInterface(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = [objc_opt_self() interfaceWithProtocol_];

  return v3;
}

uint64_t GroupSessionPreviewUpdate.init(data:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t GroupSessionPreviewSource.groupSessionID.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 24))(a1);
  GroupSession.id.getter();
}

uint64_t GroupSessionPreviewUpdate.data.getter()
{
  v1 = *v0;
  outlined copy of Data._Representation(*v0, *(v0 + 8));
  return v1;
}

uint64_t GroupSessionPreviewUpdate.data.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of Data._Representation(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t getEnumTagSinglePayload for GroupSessionPreviewUpdate(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 16))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for GroupSessionPreviewUpdate(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t ReactionHistoryViewModel.__allocating_init(entries:)(uint64_t a1)
{
  v2 = swift_allocObject();
  ReactionHistoryViewModel.init(entries:)(a1);
  return v2;
}

uint64_t ReactionHistoryView.init(model:)(uint64_t a1)
{
  type metadata accessor for ReactionHistoryViewModel(0);
  _s22_GroupActivities_UIKit24ReactionHistoryViewModelCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type ReactionHistoryViewModel and conformance ReactionHistoryViewModel, type metadata accessor for ReactionHistoryViewModel, &protocol conformance descriptor for ReactionHistoryViewModel);

  return ObservedObject.init(wrappedValue:)();
}

uint64_t static ReactionHistoryEntry.ImageProvider.== infix(_:_:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    if ((a4 & 1) == 0)
    {
      return 0;
    }
  }

  else if (a4)
  {
    return 0;
  }

  type metadata accessor for UIView(0, &lazy cache variable for type metadata for NSObject, 0x277D82BB8);
  return static NSObject.== infix(_:_:)() & 1;
}

Swift::Int ReactionHistoryEntry.ImageProvider.hashValue.getter(uint64_t a1, char a2)
{
  Hasher.init(_seed:)();
  MEMORY[0x23EEA69E0](a2 & 1);
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ReactionHistoryEntry.ImageProvider()
{
  v1 = *(v0 + 8);
  Hasher.init(_seed:)();
  MEMORY[0x23EEA69E0](v1);
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ReactionHistoryEntry.ImageProvider(uint64_t a1)
{
  v2 = *(v1 + 8);
  Hasher.init(_seed:)();
  MEMORY[0x23EEA69E0](v2);
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ReactionHistoryEntry.ImageProvider(uint64_t *a1, uint64_t *a2)
{
  if (a1[1])
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else if (a2[1])
  {
    return 0;
  }

  type metadata accessor for UIView(0, &lazy cache variable for type metadata for NSObject, 0x277D82BB8);
  return static NSObject.== infix(_:_:)() & 1;
}

uint64_t ReactionHistoryEntry.displayName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ReactionHistoryEntry.displayName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ReactionHistoryEntry.reaction.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ReactionHistoryEntry.reaction.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

void *ReactionHistoryEntry.avatarImageProvider.getter()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

uint64_t ReactionHistoryEntry.init(displayName:reaction:avatarImage:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  *(a6 + 40) = 0;
  return result;
}

uint64_t ReactionHistoryEntry.init(displayName:reaction:avatarImageProvider:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  *(a6 + 40) = 1;
  return result;
}

uint64_t ReactionHistoryEntry.init<A>(displayName:reaction:avatarImage:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v24 = a3;
  v25 = a4;
  v23 = a2;
  v13 = *(a6 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](a1);
  v15 = [objc_allocWithZone(MEMORY[0x277CCAA88]) init];
  (*(v13 + 16))(&v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a5, a6);
  v16 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = a6;
  *(v17 + 24) = a7;
  (*(v13 + 32))(v17 + v16, &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a6);
  NSItemProvider.register<A>(_:)();

  result = (*(v13 + 8))(a5, a6);
  v19 = v23;
  v20 = v24;
  *a8 = a1;
  *(a8 + 8) = v19;
  v21 = v25;
  *(a8 + 16) = v20;
  *(a8 + 24) = v21;
  *(a8 + 32) = v15;
  *(a8 + 40) = 1;
  return result;
}

uint64_t ReactionHistoryEntry.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 40);
  String.hash(into:)();
  String.hash(into:)();
  MEMORY[0x23EEA69E0](v2);
  return NSObject.hash(into:)();
}

Swift::Int ReactionHistoryEntry.hashValue.getter()
{
  v1 = *(v0 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  MEMORY[0x23EEA69E0](v1);
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ReactionHistoryEntry()
{
  v1 = *(v0 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  MEMORY[0x23EEA69E0](v1);
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ReactionHistoryEntry(uint64_t a1)
{
  v2 = *(v1 + 40);
  String.hash(into:)();
  String.hash(into:)();
  MEMORY[0x23EEA69E0](v2);
  return NSObject.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ReactionHistoryEntry(uint64_t a1)
{
  v2 = *(v1 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  MEMORY[0x23EEA69E0](v2);
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t ReactionFilter.filter.getter()
{
  v1 = v0[1];
  v5 = *v0;
  v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySSSgGMd, &_s7SwiftUI7BindingVySSSgGMR);
  MEMORY[0x23EEA6150](&v4, v2);
  return v4;
}

double key path getter for ReactionFilter.filter : ReactionFilter@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1[1];
  v7 = *a1;
  v8 = v3;
  v9 = *(a1 + 1);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySSSgGMd, &_s7SwiftUI7BindingVySSSgGMR);
  MEMORY[0x23EEA6150](&v6, v4);
  result = *&v6;
  *a2 = v6;
  return result;
}

uint64_t key path setter for ReactionFilter.filter : ReactionFilter(uint64_t *a1, uint64_t a2)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySSSgGMd, &_s7SwiftUI7BindingVySSSgGMR);
  return Binding.wrappedValue.setter();
}

void (*ReactionFilter.filter.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x98uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 120) = v1;
  v5 = *v1;
  *(v3 + 128) = *v1;
  v6 = v1[1];
  *(v3 + 136) = v6;
  *(v3 + 112) = v5;
  *(v3 + 64) = *(v1 + 1);
  *v3 = v5;
  *(v3 + 8) = v6;
  *(v3 + 16) = *(v1 + 1);
  outlined init with copy of Transaction(v3 + 112, v3 + 32);

  outlined init with copy of ModifiedContent<_ShapeView<ScaledShape<Capsule>, Material>, _AnimationModifier<Bool>>(v4 + 64, v4 + 32, &_sSSSgMd, &_sSSSgMR);
  *(v4 + 144) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySSSgGMd, &_s7SwiftUI7BindingVySSSgGMR);
  MEMORY[0x23EEA6150]();
  return ReactionFilter.filter.modify;
}

void ReactionFilter.filter.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 120);
  *(v2 + 32) = *(*a1 + 128);
  v4 = *(v2 + 80);
  *(v2 + 40) = *(v2 + 136);
  v5 = *(v3 + 16);
  *(v2 + 96) = v4;
  v6 = *(v2 + 88);
  *(v2 + 48) = v5;
  *(v2 + 104) = v6;
  if (a2)
  {

    Binding.wrappedValue.setter();
    outlined destroy of Transaction(v2 + 112);

    outlined destroy of NSObject?(v2 + 64, &_sSSSgMd, &_sSSSgMR);
  }

  else
  {
    Binding.wrappedValue.setter();
    outlined destroy of Transaction(v2 + 112);

    outlined destroy of NSObject?(v2 + 64, &_sSSSgMd, &_sSSSgMR);
  }

  free(v2);
}

uint64_t ReactionFilter.$filter.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySSSgGMd, &_s7SwiftUI7BindingVySSSgGMR);
  Binding.projectedValue.getter();
  return v1;
}

uint64_t ReactionFilter.reactions.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

double ReactionFilter.init(filter:reactions:)@<D0>(_OWORD *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>)
{
  specialized ReactionFilter.init(filter:reactions:)(a2, a3, a4, a5, a6, v9);
  v7 = v9[1];
  *a1 = v9[0];
  a1[1] = v7;
  result = *&v10;
  a1[2] = v10;
  return result;
}

uint64_t ReactionFilter.body.getter@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v2 = type metadata accessor for ScrollIndicatorVisibility();
  v21 = *(v2 - 8);
  v22 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10ScrollViewVyAA0D0PAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicfG0O5BoundRtd__lFQOyAA6HStackVyAA05TupleD0VyAA6ButtonVyAA15ModifiedContentVyARyARyARyARyALyANyAA4TextV_ATtGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAXyAA4FontVSgGGAA14_PaddingLayoutVGAA06_FrameW0VGAA026_InsettableBackgroundShapeS0VyAA18_OpacityShapeStyleVyAA022HierarchicalShapeStyleS0VyAZGGAA7CapsuleVGGG_AA7ForEachVySaySSGSSAPyARyARyARyARyARyARyARyA9_AA01_zS0VyAA06_ShapeD0VyA22_AZGGGA0_GA5_GA8_GA11_GAA11_ClipEffectVyAA9RectangleVGGA23_GGGAA6SpacerVtGG_s19PartialRangeThroughVyAHGQo_GMd, &_s7SwiftUI10ScrollViewVyAA0D0PAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicfG0O5BoundRtd__lFQOyAA6HStackVyAA05TupleD0VyAA6ButtonVyAA15ModifiedContentVyARyARyARyARyALyANyAA4TextV_ATtGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAXyAA4FontVSgGGAA14_PaddingLayoutVGAA06_FrameW0VGAA026_InsettableBackgroundShapeS0VyAA18_OpacityShapeStyleVyAA022HierarchicalShapeStyleS0VyAZGGAA7CapsuleVGGG_AA7ForEachVySaySSGSSAPyARyARyARyARyARyARyARyA9_AA01_zS0VyAA06_ShapeD0VyA22_AZGGGA0_GA5_GA8_GA11_GAA11_ClipEffectVyAA9RectangleVGGA23_GGGAA6SpacerVtGG_s19PartialRangeThroughVyAHGQo_GMR);
  v18 = *(v5 - 8);
  v19 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v17 - v6;
  static Axis.Set.horizontal.getter();
  v23 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamiceF0O5BoundRtd__lFQOyAA6HStackVyAA05TupleC0VyAA6ButtonVyAA15ModifiedContentVyAPyAPyAPyAPyAJyALyAA4TextV_ARtGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAVyAA4FontVSgGGAA14_PaddingLayoutVGAA06_FrameV0VGAA026_InsettableBackgroundShapeR0VyAA08_OpacityZ5StyleVyAA012Hierarchicalz5StyleR0VyAXGGAA7CapsuleVGGG_AA7ForEachVySaySSGSSANyAPyAPyAPyAPyAPyAPyAPyA7_AA01_yR0VyAA01_zC0VyA20_AXGGGAZGA3_GA6_GA9_GAA11_ClipEffectVyAA9RectangleVGGA21_GGGAA6SpacerVtGG_s19PartialRangeThroughVyAFGQo_Md, &_s7SwiftUI4ViewPAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamiceF0O5BoundRtd__lFQOyAA6HStackVyAA05TupleC0VyAA6ButtonVyAA15ModifiedContentVyAPyAPyAPyAPyAJyALyAA4TextV_ARtGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAVyAA4FontVSgGGAA14_PaddingLayoutVGAA06_FrameV0VGAA026_InsettableBackgroundShapeR0VyAA08_OpacityZ5StyleVyAA012Hierarchicalz5StyleR0VyAXGGAA7CapsuleVGGG_AA7ForEachVySaySSGSSANyAPyAPyAPyAPyAPyAPyAPyA7_AA01_yR0VyAA01_zC0VyA20_AXGGGAZGA3_GA6_GA9_GAA11_ClipEffectVyAA9RectangleVGGA21_GGGAA6SpacerVtGG_s19PartialRangeThroughVyAFGQo_MR);
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA6ButtonVyAA15ModifiedContentVyAIyAIyAIyAIyACyAEyAA4TextV_AKtGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAOyAA4FontVSgGGAA14_PaddingLayoutVGAA06_FrameQ0VGAA026_InsettableBackgroundShapeM0VyAA08_OpacityU5StyleVyAA012HierarchicaluwM0VyAQGGAA7CapsuleVGGG_AA7ForEachVySaySSGSSAGyAIyAIyAIyAIyAIyAIyAIyA0_AA01_tM0VyAA01_uE0VyA13_AQGGGASGAXGA_GA2_GAA11_ClipEffectVyAA9RectangleVGGA14_GGGAA6SpacerVtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6ButtonVyAA15ModifiedContentVyAIyAIyAIyAIyACyAEyAA4TextV_AKtGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAOyAA4FontVSgGGAA14_PaddingLayoutVGAA06_FrameQ0VGAA026_InsettableBackgroundShapeM0VyAA08_OpacityU5StyleVyAA012HierarchicaluwM0VyAQGGAA7CapsuleVGGG_AA7ForEachVySaySSGSSAGyAIyAIyAIyAIyAIyAIyAIyA0_AA01_tM0VyAA01_uE0VyA13_AQGGGASGAXGA_GA2_GAA11_ClipEffectVyAA9RectangleVGGA14_GGGAA6SpacerVtGGMR);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGMd, &_ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGMR);
  v10 = lazy protocol witness table accessor for type Published<GroupActivitySharingResult?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type HStack<TupleView<(Button<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _FrameLayout>, _InsettableBackgroundShapeModifier<_OpacityShapeStyle<HierarchicalShapeStyleModifier<Color>>, Capsule>>>, ForEach<[String], String, Button<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _BackgroundModifier<_ShapeView<Capsule, Color>>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _FrameLayout>, _ClipEffect<Rectangle>>, _InsettableBackgroundShapeModifier<_OpacityShapeStyle<HierarchicalShapeStyleModifier<Color>>, Capsule>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6ButtonVyAA15ModifiedContentVyAIyAIyAIyAIyACyAEyAA4TextV_AKtGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAOyAA4FontVSgGGAA14_PaddingLayoutVGAA06_FrameQ0VGAA026_InsettableBackgroundShapeM0VyAA08_OpacityU5StyleVyAA012HierarchicaluwM0VyAQGGAA7CapsuleVGGG_AA7ForEachVySaySSGSSAGyAIyAIyAIyAIyAIyAIyAIyA0_AA01_tM0VyAA01_uE0VyA13_AQGGGASGAXGA_GA2_GAA11_ClipEffectVyAA9RectangleVGGA14_GGGAA6SpacerVtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6ButtonVyAA15ModifiedContentVyAIyAIyAIyAIyACyAEyAA4TextV_AKtGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAOyAA4FontVSgGGAA14_PaddingLayoutVGAA06_FrameQ0VGAA026_InsettableBackgroundShapeM0VyAA08_OpacityU5StyleVyAA012HierarchicaluwM0VyAQGGAA7CapsuleVGGG_AA7ForEachVySaySSGSSAGyAIyAIyAIyAIyAIyAIyAIyA0_AA01_tM0VyAA01_uE0VyA13_AQGGGASGAXGA_GA2_GAA11_ClipEffectVyAA9RectangleVGGA14_GGGAA6SpacerVtGGMR, MEMORY[0x277CE1138]);
  v11 = lazy protocol witness table accessor for type Published<GroupActivitySharingResult?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PartialRangeThrough<DynamicTypeSize> and conformance PartialRangeThrough<A>, &_ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGMd, &_ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGMR, MEMORY[0x277D84470]);
  v24 = v8;
  v25 = v9;
  v26 = v10;
  v27 = v11;
  swift_getOpaqueTypeConformance2();
  v12 = ScrollView.init(_:showsIndicators:content:)();
  MEMORY[0x23EEA5C40](v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI4AxisO3SetVGMd, &_ss23_ContiguousArrayStorageCy7SwiftUI4AxisO3SetVGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23B759A20;
  LOBYTE(v8) = static Axis.Set.vertical.getter();
  *(inited + 32) = v8;
  v14 = static Axis.Set.horizontal.getter();
  *(inited + 33) = v14;
  Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v8)
  {
    Axis.Set.init(rawValue:)();
  }

  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v14)
  {
    Axis.Set.init(rawValue:)();
  }

  lazy protocol witness table accessor for type Published<GroupActivitySharingResult?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type ScrollView<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0> and conformance ScrollView<A>, &_s7SwiftUI10ScrollViewVyAA0D0PAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicfG0O5BoundRtd__lFQOyAA6HStackVyAA05TupleD0VyAA6ButtonVyAA15ModifiedContentVyARyARyARyARyALyANyAA4TextV_ATtGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAXyAA4FontVSgGGAA14_PaddingLayoutVGAA06_FrameW0VGAA026_InsettableBackgroundShapeS0VyAA18_OpacityShapeStyleVyAA022HierarchicalShapeStyleS0VyAZGGAA7CapsuleVGGG_AA7ForEachVySaySSGSSAPyARyARyARyARyARyARyARyA9_AA01_zS0VyAA06_ShapeD0VyA22_AZGGGA0_GA5_GA8_GA11_GAA11_ClipEffectVyAA9RectangleVGGA23_GGGAA6SpacerVtGG_s19PartialRangeThroughVyAHGQo_GMd, &_s7SwiftUI10ScrollViewVyAA0D0PAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicfG0O5BoundRtd__lFQOyAA6HStackVyAA05TupleD0VyAA6ButtonVyAA15ModifiedContentVyARyARyARyARyALyANyAA4TextV_ATtGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAXyAA4FontVSgGGAA14_PaddingLayoutVGAA06_FrameW0VGAA026_InsettableBackgroundShapeS0VyAA18_OpacityShapeStyleVyAA022HierarchicalShapeStyleS0VyAZGGAA7CapsuleVGGG_AA7ForEachVySaySSGSSAPyARyARyARyARyARyARyARyA9_AA01_zS0VyAA06_ShapeD0VyA22_AZGGGA0_GA5_GA8_GA11_GAA11_ClipEffectVyAA9RectangleVGGA23_GGGAA6SpacerVtGG_s19PartialRangeThroughVyAHGQo_GMR, MEMORY[0x277CDD6E0]);
  v15 = v19;
  View.scrollIndicators(_:axes:)();
  (*(v21 + 8))(v4, v22);
  return (*(v18 + 8))(v7, v15);
}

uint64_t closure #1 in ReactionFilter.body.getter(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGMd, &_ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGMR);
  MEMORY[0x28223BE20](v2);
  v4 = &v12 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA6ButtonVyAA15ModifiedContentVyAIyAIyAIyAIyACyAEyAA4TextV_AKtGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAOyAA4FontVSgGGAA14_PaddingLayoutVGAA06_FrameQ0VGAA026_InsettableBackgroundShapeM0VyAA08_OpacityU5StyleVyAA012HierarchicaluwM0VyAQGGAA7CapsuleVGGG_AA7ForEachVySaySSGSSAGyAIyAIyAIyAIyAIyAIyAIyA0_AA01_tM0VyAA01_uE0VyA13_AQGGGASGAXGA_GA2_GAA11_ClipEffectVyAA9RectangleVGGA14_GGGAA6SpacerVtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6ButtonVyAA15ModifiedContentVyAIyAIyAIyAIyACyAEyAA4TextV_AKtGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAOyAA4FontVSgGGAA14_PaddingLayoutVGAA06_FrameQ0VGAA026_InsettableBackgroundShapeM0VyAA08_OpacityU5StyleVyAA012HierarchicaluwM0VyAQGGAA7CapsuleVGGG_AA7ForEachVySaySSGSSAGyAIyAIyAIyAIyAIyAIyAIyA0_AA01_tM0VyAA01_uE0VyA13_AQGGGASGAXGA_GA2_GAA11_ClipEffectVyAA9RectangleVGGA14_GGGAA6SpacerVtGGMR);
  MEMORY[0x28223BE20](v5);
  v7 = &v12 - v6;
  *v7 = static VerticalAlignment.center.getter();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA6ButtonVyAA15ModifiedContentVyAMyAMyAMyAMyAA0F0VyAIyAA4TextV_AQtGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAUyAA4FontVSgGGAA08_PaddingG0VGAA06_FrameG0VGAA026_InsettableBackgroundShapeP0VyAA08_OpacityW5StyleVyAA012HierarchicalwyP0VyAWGGAA7CapsuleVGGG_AA7ForEachVySaySSGSSAKyAMyAMyAMyAMyAMyAMyAMyA6_AA01_vP0VyAA01_wD0VyA19_AWGGGAYGA2_GA5_GA8_GAA11_ClipEffectVyAA9RectangleVGGA20_GGGAA6SpacerVtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA6ButtonVyAA15ModifiedContentVyAMyAMyAMyAMyAA0F0VyAIyAA4TextV_AQtGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAUyAA4FontVSgGGAA08_PaddingG0VGAA06_FrameG0VGAA026_InsettableBackgroundShapeP0VyAA08_OpacityW5StyleVyAA012HierarchicalwyP0VyAWGGAA7CapsuleVGGG_AA7ForEachVySaySSGSSAKyAMyAMyAMyAMyAMyAMyAMyA6_AA01_vP0VyAA01_wD0VyA19_AWGGGAYGA2_GA5_GA8_GAA11_ClipEffectVyAA9RectangleVGGA20_GGGAA6SpacerVtGGMR);
  closure #1 in closure #1 in ReactionFilter.body.getter(a1, &v7[*(v8 + 44)]);
  v9 = *MEMORY[0x277CDFA00];
  v10 = type metadata accessor for DynamicTypeSize();
  (*(*(v10 - 8) + 104))(v4, v9, v10);
  _s22_GroupActivities_UIKit24ReactionHistoryViewModelCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type DynamicTypeSize and conformance DynamicTypeSize, MEMORY[0x277CDFA28], MEMORY[0x277CDFA48]);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    lazy protocol witness table accessor for type Published<GroupActivitySharingResult?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type HStack<TupleView<(Button<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _FrameLayout>, _InsettableBackgroundShapeModifier<_OpacityShapeStyle<HierarchicalShapeStyleModifier<Color>>, Capsule>>>, ForEach<[String], String, Button<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _BackgroundModifier<_ShapeView<Capsule, Color>>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _FrameLayout>, _ClipEffect<Rectangle>>, _InsettableBackgroundShapeModifier<_OpacityShapeStyle<HierarchicalShapeStyleModifier<Color>>, Capsule>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6ButtonVyAA15ModifiedContentVyAIyAIyAIyAIyACyAEyAA4TextV_AKtGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAOyAA4FontVSgGGAA14_PaddingLayoutVGAA06_FrameQ0VGAA026_InsettableBackgroundShapeM0VyAA08_OpacityU5StyleVyAA012HierarchicaluwM0VyAQGGAA7CapsuleVGGG_AA7ForEachVySaySSGSSAGyAIyAIyAIyAIyAIyAIyAIyA0_AA01_tM0VyAA01_uE0VyA13_AQGGGASGAXGA_GA2_GAA11_ClipEffectVyAA9RectangleVGGA14_GGGAA6SpacerVtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6ButtonVyAA15ModifiedContentVyAIyAIyAIyAIyACyAEyAA4TextV_AKtGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAOyAA4FontVSgGGAA14_PaddingLayoutVGAA06_FrameQ0VGAA026_InsettableBackgroundShapeM0VyAA08_OpacityU5StyleVyAA012HierarchicaluwM0VyAQGGAA7CapsuleVGGG_AA7ForEachVySaySSGSSAGyAIyAIyAIyAIyAIyAIyAIyA0_AA01_tM0VyAA01_uE0VyA13_AQGGGASGAXGA_GA2_GAA11_ClipEffectVyAA9RectangleVGGA14_GGGAA6SpacerVtGGMR, MEMORY[0x277CE1138]);
    lazy protocol witness table accessor for type Published<GroupActivitySharingResult?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PartialRangeThrough<DynamicTypeSize> and conformance PartialRangeThrough<A>, &_ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGMd, &_ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGMR, MEMORY[0x277D84470]);
    View.dynamicTypeSize<A>(_:)();
    outlined destroy of NSObject?(v4, &_ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGMd, &_ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGMR);
    return outlined destroy of NSObject?(v7, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6ButtonVyAA15ModifiedContentVyAIyAIyAIyAIyACyAEyAA4TextV_AKtGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAOyAA4FontVSgGGAA14_PaddingLayoutVGAA06_FrameQ0VGAA026_InsettableBackgroundShapeM0VyAA08_OpacityU5StyleVyAA012HierarchicaluwM0VyAQGGAA7CapsuleVGGG_AA7ForEachVySaySSGSSAGyAIyAIyAIyAIyAIyAIyAIyA0_AA01_tM0VyAA01_uE0VyA13_AQGGGASGAXGA_GA2_GAA11_ClipEffectVyAA9RectangleVGGA14_GGGAA6SpacerVtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6ButtonVyAA15ModifiedContentVyAIyAIyAIyAIyACyAEyAA4TextV_AKtGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAOyAA4FontVSgGGAA14_PaddingLayoutVGAA06_FrameQ0VGAA026_InsettableBackgroundShapeM0VyAA08_OpacityU5StyleVyAA012HierarchicaluwM0VyAQGGAA7CapsuleVGGG_AA7ForEachVySaySSGSSAGyAIyAIyAIyAIyAIyAIyAIyA0_AA01_tM0VyAA01_uE0VyA13_AQGGGASGAXGA_GA2_GAA11_ClipEffectVyAA9RectangleVGGA14_GGGAA6SpacerVtGGMR);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in closure #1 in ReactionFilter.body.getter@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v41 = a2;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySaySSGSSAA6ButtonVyAA15ModifiedContentVyAHyAHyAHyAHyAHyAHyAHyAHyAHyAA6HStackVyAA9TupleViewVyAA4TextV_ANtGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGARyAA4FontVSgGGAA14_PaddingLayoutVGAA011_BackgroundO0VyAA06_ShapeJ0VyAA7CapsuleVATGGGAVGA_GA2_GAA06_FrameS0VGAA11_ClipEffectVyAA9RectangleVGGAA011_InsettabletuO0VyAA08_OpacityU5StyleVyAA012Hierarchicalu5StyleO0VyATGGA9_GGGGMd, &_s7SwiftUI7ForEachVySaySSGSSAA6ButtonVyAA15ModifiedContentVyAHyAHyAHyAHyAHyAHyAHyAHyAHyAA6HStackVyAA9TupleViewVyAA4TextV_ANtGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGARyAA4FontVSgGGAA14_PaddingLayoutVGAA011_BackgroundO0VyAA06_ShapeJ0VyAA7CapsuleVATGGGAVGA_GA2_GAA06_FrameS0VGAA11_ClipEffectVyAA9RectangleVGGAA011_InsettabletuO0VyAA08_OpacityU5StyleVyAA012Hierarchicalu5StyleO0VyATGGA9_GGGGMR);
  v3 = *(v38 - 8);
  v4 = MEMORY[0x28223BE20](v38);
  v45 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v44 = &v36 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAEyAEyAA6HStackVyAA9TupleViewVyAA4TextV_AKtGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAOyAA4FontVSgGGAA14_PaddingLayoutVGAA06_FrameQ0VGAA026_InsettableBackgroundShapeM0VyAA08_OpacityU5StyleVyAA012HierarchicaluwM0VyAQGGAA7CapsuleVGGGMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAEyAEyAA6HStackVyAA9TupleViewVyAA4TextV_AKtGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAOyAA4FontVSgGGAA14_PaddingLayoutVGAA06_FrameQ0VGAA026_InsettableBackgroundShapeM0VyAA08_OpacityU5StyleVyAA012HierarchicaluwM0VyAQGGAA7CapsuleVGGGMR);
  v39 = *(v7 - 8);
  v40 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v43 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v36 - v10;
  v12 = *a1;
  v50 = *(a1 + 1);
  v51[0] = v12;
  v49 = a1[4];
  v13 = v49;
  v14 = swift_allocObject();
  v15 = *(a1 + 1);
  v14[1] = *a1;
  v14[2] = v15;
  v14[3] = *(a1 + 2);
  v46 = a1;
  outlined init with copy of Transaction(v51, &v48);

  outlined init with copy of ModifiedContent<_ShapeView<ScaledShape<Capsule>, Material>, _AnimationModifier<Bool>>(&v50, &v48, &_sSSSgMd, &_sSSSgMR);
  outlined init with copy of ModifiedContent<_ShapeView<ScaledShape<Capsule>, Material>, _AnimationModifier<Bool>>(&v49, &v48, &_sSDySSSiGMd, &_sSDySSSiGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6HStackVyAA9TupleViewVyAA4TextV_AItGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAMyAA4FontVSgGGAA14_PaddingLayoutVGAA06_FrameP0VGAA026_InsettableBackgroundShapeL0VyAA08_OpacityT5StyleVyAA012HierarchicaltvL0VyAOGGAA7CapsuleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6HStackVyAA9TupleViewVyAA4TextV_AItGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAMyAA4FontVSgGGAA14_PaddingLayoutVGAA06_FrameP0VGAA026_InsettableBackgroundShapeL0VyAA08_OpacityT5StyleVyAA012HierarchicaltvL0VyAOGGAA7CapsuleVGGMR);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _FrameLayout>, _InsettableBackgroundShapeModifier<_OpacityShapeStyle<HierarchicalShapeStyleModifier<Color>>, Capsule>> and conformance <> ModifiedContent<A, B>();
  v42 = v11;
  Button.init(action:label:)();
  v16 = *(v13 + 16);
  if (!v16)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_5;
  }

  v37 = v3;
  v17 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5(v16, 0);
  v18 = specialized Sequence._copySequenceContents(initializing:)(&v48, v17 + 4, v16, v13);
  outlined init with copy of ModifiedContent<_ShapeView<ScaledShape<Capsule>, Material>, _AnimationModifier<Bool>>(&v49, &v47, &_sSDySSSiGMd, &_sSDySSSiGMR);
  result = outlined consume of Set<UIScene>.Iterator._Variant();
  if (v18 == v16)
  {
    v3 = v37;
LABEL_5:
    v47 = v17;
    swift_getKeyPath();
    v20 = swift_allocObject();
    v21 = *(a1 + 1);
    v20[1] = *a1;
    v20[2] = v21;
    v20[3] = *(a1 + 2);
    outlined init with copy of Transaction(v51, &v48);

    outlined init with copy of ModifiedContent<_ShapeView<ScaledShape<Capsule>, Material>, _AnimationModifier<Bool>>(&v50, &v48, &_sSSSgMd, &_sSSSgMR);
    outlined init with copy of ModifiedContent<_ShapeView<ScaledShape<Capsule>, Material>, _AnimationModifier<Bool>>(&v49, &v48, &_sSDySSSiGMd, &_sSDySSSiGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAEyAEyAEyAEyAEyAEyAEyAA6HStackVyAA9TupleViewVyAA4TextV_AKtGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAOyAA4FontVSgGGAA14_PaddingLayoutVGAA011_BackgroundM0VyAA06_ShapeH0VyAA7CapsuleVAQGGGASGAXGA_GAA06_FrameQ0VGAA11_ClipEffectVyAA9RectangleVGGAA011_InsettablersM0VyAA08_OpacityS5StyleVyAA012Hierarchicals5StyleM0VyAQGGA6_GGGMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAEyAEyAEyAEyAEyAEyAEyAA6HStackVyAA9TupleViewVyAA4TextV_AKtGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAOyAA4FontVSgGGAA14_PaddingLayoutVGAA011_BackgroundM0VyAA06_ShapeH0VyAA7CapsuleVAQGGGASGAXGA_GAA06_FrameQ0VGAA11_ClipEffectVyAA9RectangleVGGAA011_InsettablersM0VyAA08_OpacityS5StyleVyAA012Hierarchicals5StyleM0VyAQGGA6_GGGMR);
    lazy protocol witness table accessor for type Published<GroupActivitySharingResult?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, MEMORY[0x277D83980]);
    lazy protocol witness table accessor for type Published<GroupActivitySharingResult?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Button<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _BackgroundModifier<_ShapeView<Capsule, Color>>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _FrameLayout>, _ClipEffect<Rectangle>>, _InsettableBackgroundShapeModifier<_OpacityShapeStyle<HierarchicalShapeStyleModifier<Color>>, Capsule>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAEyAEyAEyAEyAEyAEyAEyAA6HStackVyAA9TupleViewVyAA4TextV_AKtGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAOyAA4FontVSgGGAA14_PaddingLayoutVGAA011_BackgroundM0VyAA06_ShapeH0VyAA7CapsuleVAQGGGASGAXGA_GAA06_FrameQ0VGAA11_ClipEffectVyAA9RectangleVGGAA011_InsettablersM0VyAA08_OpacityS5StyleVyAA012Hierarchicals5StyleM0VyAQGGA6_GGGMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAEyAEyAEyAEyAEyAEyAEyAA6HStackVyAA9TupleViewVyAA4TextV_AKtGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAOyAA4FontVSgGGAA14_PaddingLayoutVGAA011_BackgroundM0VyAA06_ShapeH0VyAA7CapsuleVAQGGGASGAXGA_GAA06_FrameQ0VGAA11_ClipEffectVyAA9RectangleVGGAA011_InsettablersM0VyAA08_OpacityS5StyleVyAA012Hierarchicals5StyleM0VyAQGGA6_GGGMR, MEMORY[0x277CDF028]);
    v22 = v44;
    ForEach<>.init(_:id:content:)();
    v24 = v39;
    v23 = v40;
    v25 = *(v39 + 16);
    v26 = v43;
    v25(v43, v42, v40);
    v27 = *(v3 + 16);
    v28 = v22;
    v29 = v38;
    v27(v45, v28, v38);
    v30 = v41;
    v25(v41, v26, v23);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAEyAEyAA6HStackVyAA9TupleViewVyAA4TextV_AKtGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAOyAA4FontVSgGGAA14_PaddingLayoutVGAA06_FrameQ0VGAA026_InsettableBackgroundShapeM0VyAA08_OpacityU5StyleVyAA012HierarchicaluwM0VyAQGGAA7CapsuleVGGG_AA7ForEachVySaySSGSSACyAEyAEyAEyAEyAEyAEyAEyA0_AA01_tM0VyAA01_uH0VyA13_AQGGGASGAXGA_GA2_GAA11_ClipEffectVyAA9RectangleVGGA14_GGGAA6SpacerVtMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAEyAEyAA6HStackVyAA9TupleViewVyAA4TextV_AKtGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAOyAA4FontVSgGGAA14_PaddingLayoutVGAA06_FrameQ0VGAA026_InsettableBackgroundShapeM0VyAA08_OpacityU5StyleVyAA012HierarchicaluwM0VyAQGGAA7CapsuleVGGG_AA7ForEachVySaySSGSSACyAEyAEyAEyAEyAEyAEyAEyA0_AA01_tM0VyAA01_uH0VyA13_AQGGGASGAXGA_GA2_GAA11_ClipEffectVyAA9RectangleVGGA14_GGGAA6SpacerVtMR);
    v32 = v45;
    v27(&v30[*(v31 + 48)], v45, v29);
    v33 = &v30[*(v31 + 64)];
    *v33 = 0;
    v33[8] = 1;
    v34 = *(v3 + 8);
    v34(v44, v29);
    v35 = *(v24 + 8);
    v35(v42, v23);
    v34(v32, v29);
    return (v35)(v43, v23);
  }

  __break(1u);
  return result;
}

double closure #2 in closure #1 in closure #1 in ReactionFilter.body.getter@<D0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &KeyPath - v5;
  v7 = type metadata accessor for Font.TextStyle();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &KeyPath - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = static VerticalAlignment.center.getter();
  LOBYTE(v47) = 0;
  closure #1 in closure #2 in closure #1 in closure #1 in ReactionFilter.body.getter(v50);
  *&v45[7] = v50[0];
  *&v45[23] = v50[1];
  *&v45[39] = v50[2];
  *&v45[55] = v50[3];
  v39 = v47;
  v40 = static Color.primary.getter();
  KeyPath = swift_getKeyPath();
  (*(v8 + 104))(v10, *MEMORY[0x277CE0AB0], v7);
  v11 = type metadata accessor for Font.Design();
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  static Font.Weight.regular.getter();
  v12 = static Font.system(_:design:weight:)();
  outlined destroy of NSObject?(v6, &_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  (*(v8 + 8))(v10, v7);
  v13 = swift_getKeyPath();
  v14 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  LOBYTE(v43) = 0;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v46[7] = v47;
  *&v46[23] = v48;
  *&v46[39] = v49;
  v23 = static Color.gray.getter();
  v24 = a1[1];
  v43 = *a1;
  v44 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySSSgGMd, &_s7SwiftUI7BindingVySSSgGMR);
  MEMORY[0x23EEA6150](v42, v25);
  if (v42[1])
  {

    v26 = 0;
  }

  else
  {
    v26 = 1063675494;
  }

  v27 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6HStackVyAA9TupleViewVyAA4TextV_AItGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAMyAA4FontVSgGGAA14_PaddingLayoutVGAA06_FrameP0VGAA026_InsettableBackgroundShapeL0VyAA08_OpacityT5StyleVyAA012HierarchicaltvL0VyAOGGAA7CapsuleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6HStackVyAA9TupleViewVyAA4TextV_AItGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAMyAA4FontVSgGGAA14_PaddingLayoutVGAA06_FrameP0VGAA026_InsettableBackgroundShapeL0VyAA08_OpacityT5StyleVyAA012HierarchicaltvL0VyAOGGAA7CapsuleVGGMR) + 36);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI34_InsettableBackgroundShapeModifierVyAA08_OpacityE5StyleVyAA012HierarchicalehF0VyAA5ColorVGGAA7CapsuleVGMd, &_s7SwiftUI34_InsettableBackgroundShapeModifierVyAA08_OpacityE5StyleVyAA012HierarchicalehF0VyAA5ColorVGGAA7CapsuleVGMR);
  v29 = *(v28 + 52);
  v30 = *MEMORY[0x277CE0118];
  v31 = type metadata accessor for RoundedCornerStyle();
  (*(*(v31 - 8) + 104))(v27 + v29, v30, v31);
  *v27 = v23;
  *(v27 + 8) = 3;
  *(v27 + 16) = v26;
  *(v27 + *(v28 + 56)) = 256;
  v32 = *v45;
  *(a2 + 33) = *&v45[16];
  v33 = *&v45[48];
  *(a2 + 49) = *&v45[32];
  *(a2 + 65) = v33;
  *a2 = v41;
  *(a2 + 8) = 0x4010000000000000;
  *(a2 + 16) = v39;
  v34 = *&v45[63];
  *(a2 + 17) = v32;
  v35 = KeyPath;
  *(a2 + 80) = v34;
  *(a2 + 88) = v35;
  *(a2 + 96) = v40;
  *(a2 + 104) = v13;
  *(a2 + 112) = v12;
  *(a2 + 120) = v14;
  *(a2 + 128) = v16;
  *(a2 + 136) = v18;
  *(a2 + 144) = v20;
  *(a2 + 152) = v22;
  *(a2 + 160) = 0;
  *(a2 + 161) = *v46;
  result = *&v46[16];
  v37 = *&v46[32];
  *(a2 + 177) = *&v46[16];
  *(a2 + 193) = v37;
  *(a2 + 208) = *&v46[47];
  return result;
}

uint64_t closure #1 in closure #2 in closure #1 in closure #1 in ReactionFilter.body.getter@<X0>(uint64_t a2@<X8>)
{
  v3 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  MEMORY[0x28223BE20](v3 - 8);
  LocalizedStringKey.init(stringLiteral:)();
  v4 = Text.init(_:tableName:bundle:comment:)();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v11);
  LocalizedStringKey.StringInterpolation.appendInterpolation<A>(_:specifier:)();
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v12);
  LocalizedStringKey.init(stringInterpolation:)();
  v13 = Text.init(_:tableName:bundle:comment:)();
  v15 = v14;
  v16 = v8 & 1;
  v21 = v8 & 1;
  v18 = v17 & 1;
  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v16;
  *(a2 + 24) = v10;
  *(a2 + 32) = v13;
  *(a2 + 40) = v14;
  *(a2 + 48) = v17 & 1;
  *(a2 + 56) = v19;
  outlined copy of Text.Storage(v4, v6, v16);

  outlined copy of Text.Storage(v13, v15, v18);

  outlined consume of Text.Storage(v13, v15, v18);

  outlined consume of Text.Storage(v4, v6, v21);
}

uint64_t closure #3 in closure #1 in closure #1 in ReactionFilter.body.getter(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *a2;
  v11 = *(a2 + 1);
  v12 = v5;
  v10 = a2[4];
  v6 = swift_allocObject();
  v7 = *(a2 + 1);
  *(v6 + 16) = *a2;
  *(v6 + 32) = v7;
  *(v6 + 48) = *(a2 + 2);
  *(v6 + 64) = v4;
  *(v6 + 72) = v3;
  outlined init with copy of Transaction(&v12, v9);

  outlined init with copy of ModifiedContent<_ShapeView<ScaledShape<Capsule>, Material>, _AnimationModifier<Bool>>(&v11, v9, &_sSSSgMd, &_sSSSgMR);
  outlined init with copy of ModifiedContent<_ShapeView<ScaledShape<Capsule>, Material>, _AnimationModifier<Bool>>(&v10, v9, &_sSDySSSiGMd, &_sSDySSSiGMR);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyACyACyACyAA6HStackVyAA9TupleViewVyAA4TextV_AItGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAMyAA4FontVSgGGAA14_PaddingLayoutVGAA011_BackgroundL0VyAA06_ShapeG0VyAA7CapsuleVAOGGGAQGAVGAYGAA06_FrameP0VGAA11_ClipEffectVyAA9RectangleVGGAA011_InsettableqrL0VyAA08_OpacityR5StyleVyAA012HierarchicalrzL0VyAOGGA4_GGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyACyACyACyAA6HStackVyAA9TupleViewVyAA4TextV_AItGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAMyAA4FontVSgGGAA14_PaddingLayoutVGAA011_BackgroundL0VyAA06_ShapeG0VyAA7CapsuleVAOGGGAQGAVGAYGAA06_FrameP0VGAA11_ClipEffectVyAA9RectangleVGGAA011_InsettableqrL0VyAA08_OpacityR5StyleVyAA012HierarchicalrzL0VyAOGGA4_GGMR);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _BackgroundModifier<_ShapeView<Capsule, Color>>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _FrameLayout>, _ClipEffect<Rectangle>>, _InsettableBackgroundShapeModifier<_OpacityShapeStyle<HierarchicalShapeStyleModifier<Color>>, Capsule>> and conformance <> ModifiedContent<A, B>();
  return Button.init(action:label:)();
}

uint64_t closure #1 in closure #3 in closure #1 in closure #1 in ReactionFilter.body.getter(__int128 *a1, uint64_t a2, uint64_t a3)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySSSgGMd, &_s7SwiftUI7BindingVySSSgGMR);
  return Binding.wrappedValue.setter();
}

uint64_t closure #2 in closure #3 in closure #1 in closure #1 in ReactionFilter.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  v89 = a3;
  v91 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v70 - v8;
  v10 = type metadata accessor for Font.TextStyle();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyACyACyAA6HStackVyAA9TupleViewVyAA4TextV_AItGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAMyAA4FontVSgGGAA14_PaddingLayoutVGAA011_BackgroundL0VyAA06_ShapeG0VyAA7CapsuleVAOGGGAQGAVGAYGAA06_FrameP0VGAA11_ClipEffectVyAA9RectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyACyACyAA6HStackVyAA9TupleViewVyAA4TextV_AItGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAMyAA4FontVSgGGAA14_PaddingLayoutVGAA011_BackgroundL0VyAA06_ShapeG0VyAA7CapsuleVAOGGGAQGAVGAYGAA06_FrameP0VGAA11_ClipEffectVyAA9RectangleVGGMR) - 8;
  MEMORY[0x28223BE20](v90);
  v15 = &v70 - v14;
  v84 = static VerticalAlignment.center.getter();
  LOBYTE(v97) = 0;
  v70 = a1;
  v71 = a2;
  closure #1 in closure #2 in closure #3 in closure #1 in closure #1 in ReactionFilter.body.getter(a1, a2, a3, v100);
  *&v96[7] = v100[0];
  *&v96[23] = v100[1];
  *&v96[39] = v100[2];
  *&v96[55] = v100[3];
  v78 = v97;
  v77 = static Color.primary.getter();
  KeyPath = swift_getKeyPath();
  v83 = *MEMORY[0x277CE0AB0];
  v82 = *(v11 + 104);
  v16 = v10;
  v75 = v10;
  v82(v13);
  v17 = type metadata accessor for Font.Design();
  v18 = *(v17 - 8);
  v80 = *(v18 + 56);
  v81 = v18 + 56;
  v80(v9, 1, 1, v17);
  static Font.Weight.regular.getter();
  v74 = static Font.system(_:design:weight:)();
  outlined destroy of NSObject?(v9, &_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  v79 = *(v11 + 8);
  v79(v13, v16);
  v73 = swift_getKeyPath();
  v72 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  LOBYTE(v97) = 0;
  v27 = static Alignment.center.getter();
  v29 = v28;
  v30 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA6HStackVyAA9TupleViewVyAA4TextV_AItGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAMyAA4FontVSgGGAA14_PaddingLayoutVGAA011_BackgroundL0VyAA06_ShapeG0VyAA7CapsuleVAOGGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6HStackVyAA9TupleViewVyAA4TextV_AItGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAMyAA4FontVSgGGAA14_PaddingLayoutVGAA011_BackgroundL0VyAA06_ShapeG0VyAA7CapsuleVAOGGGMR) + 36)];
  v31 = *MEMORY[0x277CE0118];
  v32 = type metadata accessor for RoundedCornerStyle();
  v33 = *(v32 - 8);
  v34 = *(v33 + 104);
  v88 = v31;
  v87 = v32;
  v86 = v34;
  v85 = v33 + 104;
  (v34)(v30, v31);
  v35 = static Color.clear.getter();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10_ShapeViewVyAA7CapsuleVAA5ColorVGMd, &_s7SwiftUI10_ShapeViewVyAA7CapsuleVAA5ColorVGMR);
  *&v30[*(v36 + 52)] = v35;
  *&v30[*(v36 + 56)] = 256;
  v37 = &v30[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_BackgroundModifierVyAA10_ShapeViewVyAA7CapsuleVAA5ColorVGGMd, &_s7SwiftUI19_BackgroundModifierVyAA10_ShapeViewVyAA7CapsuleVAA5ColorVGGMR) + 36)];
  *v37 = v27;
  v37[1] = v29;
  v38 = *&v96[16];
  *(v15 + 17) = *v96;
  *(v15 + 10) = *&v96[63];
  v39 = *&v96[32];
  *(v15 + 65) = *&v96[48];
  *(v15 + 49) = v39;
  *v15 = v84;
  *(v15 + 1) = 0x4010000000000000;
  v15[16] = v78;
  *(v15 + 33) = v38;
  v40 = v77;
  *(v15 + 11) = KeyPath;
  *(v15 + 12) = v40;
  v41 = v74;
  *(v15 + 13) = v73;
  *(v15 + 14) = v41;
  v15[120] = v72;
  *(v15 + 16) = v20;
  *(v15 + 17) = v22;
  *(v15 + 18) = v24;
  *(v15 + 19) = v26;
  v15[160] = 0;
  v42 = static Color.black.getter();
  v43 = swift_getKeyPath();
  v44 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6HStackVyAA9TupleViewVyAA4TextV_AItGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAMyAA4FontVSgGGAA14_PaddingLayoutVGAA011_BackgroundL0VyAA06_ShapeG0VyAA7CapsuleVAOGGGAQGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6HStackVyAA9TupleViewVyAA4TextV_AItGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAMyAA4FontVSgGGAA14_PaddingLayoutVGAA011_BackgroundL0VyAA06_ShapeG0VyAA7CapsuleVAOGGGAQGMR) + 36)];
  *v44 = v43;
  v44[1] = v42;
  v45 = v75;
  (v82)(v13, v83, v75);
  v80(v9, 1, 1, v17);
  static Font.Weight.regular.getter();
  v46 = static Font.system(_:design:weight:)();
  outlined destroy of NSObject?(v9, &_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  v79(v13, v45);
  v47 = swift_getKeyPath();
  v48 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA6HStackVyAA9TupleViewVyAA4TextV_AItGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAMyAA4FontVSgGGAA14_PaddingLayoutVGAA011_BackgroundL0VyAA06_ShapeG0VyAA7CapsuleVAOGGGAQGAVGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA6HStackVyAA9TupleViewVyAA4TextV_AItGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAMyAA4FontVSgGGAA14_PaddingLayoutVGAA011_BackgroundL0VyAA06_ShapeG0VyAA7CapsuleVAOGGGAQGAVGMR) + 36)];
  *v48 = v47;
  v48[1] = v46;
  LOBYTE(v47) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v56 = v55;
  v57 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA6HStackVyAA9TupleViewVyAA4TextV_AItGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAMyAA4FontVSgGGAA14_PaddingLayoutVGAA011_BackgroundL0VyAA06_ShapeG0VyAA7CapsuleVAOGGGAQGAVGAYGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA6HStackVyAA9TupleViewVyAA4TextV_AItGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAMyAA4FontVSgGGAA14_PaddingLayoutVGAA011_BackgroundL0VyAA06_ShapeG0VyAA7CapsuleVAOGGGAQGAVGAYGMR) + 36)];
  *v57 = v47;
  *(v57 + 1) = v50;
  *(v57 + 2) = v52;
  *(v57 + 3) = v54;
  *(v57 + 4) = v56;
  v57[40] = 0;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v58 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyACyAA6HStackVyAA9TupleViewVyAA4TextV_AItGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAMyAA4FontVSgGGAA14_PaddingLayoutVGAA011_BackgroundL0VyAA06_ShapeG0VyAA7CapsuleVAOGGGAQGAVGAYGAA06_FrameP0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyACyAA6HStackVyAA9TupleViewVyAA4TextV_AItGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAMyAA4FontVSgGGAA14_PaddingLayoutVGAA011_BackgroundL0VyAA06_ShapeG0VyAA7CapsuleVAOGGGAQGAVGAYGAA06_FrameP0VGMR) + 36)];
  v59 = v98;
  *v58 = v97;
  *(v58 + 1) = v59;
  *(v58 + 2) = v99;
  *&v15[*(v90 + 44)] = 0;
  v60 = static Color.gray.getter();
  v61 = v89[1];
  v94 = *v89;
  v95 = v61;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySSSgGMd, &_s7SwiftUI7BindingVySSSgGMR);
  MEMORY[0x23EEA6150](&v92, v62);
  v63 = 0;
  if (v93)
  {
    if (v92 == v70 && v93 == v71)
    {

LABEL_6:
      v63 = 1063675494;
      goto LABEL_7;
    }

    v64 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v64)
    {
      goto LABEL_6;
    }
  }

LABEL_7:
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyACyACyACyAA6HStackVyAA9TupleViewVyAA4TextV_AItGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAMyAA4FontVSgGGAA14_PaddingLayoutVGAA011_BackgroundL0VyAA06_ShapeG0VyAA7CapsuleVAOGGGAQGAVGAYGAA06_FrameP0VGAA11_ClipEffectVyAA9RectangleVGGAA011_InsettableqrL0VyAA08_OpacityR5StyleVyAA012HierarchicalrzL0VyAOGGA4_GGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyACyACyACyAA6HStackVyAA9TupleViewVyAA4TextV_AItGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAMyAA4FontVSgGGAA14_PaddingLayoutVGAA011_BackgroundL0VyAA06_ShapeG0VyAA7CapsuleVAOGGGAQGAVGAYGAA06_FrameP0VGAA11_ClipEffectVyAA9RectangleVGGAA011_InsettableqrL0VyAA08_OpacityR5StyleVyAA012HierarchicalrzL0VyAOGGA4_GGMR);
  v66 = v91;
  v67 = v91 + *(v65 + 36);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI34_InsettableBackgroundShapeModifierVyAA08_OpacityE5StyleVyAA012HierarchicalehF0VyAA5ColorVGGAA7CapsuleVGMd, &_s7SwiftUI34_InsettableBackgroundShapeModifierVyAA08_OpacityE5StyleVyAA012HierarchicalehF0VyAA5ColorVGGAA7CapsuleVGMR);
  v86(v67 + *(v68 + 52), v88, v87);
  *v67 = v60;
  *(v67 + 8) = 3;
  *(v67 + 16) = v63;
  *(v67 + *(v68 + 56)) = 256;
  return outlined init with take of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _BackgroundModifier<_ShapeView<Capsule, Color>>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _FrameLayout>, _ClipEffect<Rectangle>>(v15, v66);
}

uint64_t closure #1 in closure #2 in closure #3 in closure #1 in closure #1 in ReactionFilter.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  MEMORY[0x28223BE20](v7 - 8);
  v27 = a1;
  lazy protocol witness table accessor for type String and conformance String();

  v8 = Text.init<A>(_:)();
  v10 = v9;
  v12 = v11;
  static Font.title2.getter();
  v13 = Text.font(_:)();
  v15 = v14;
  v29 = v16;
  v30 = v17;

  outlined consume of Text.Storage(v8, v10, v12 & 1);

  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v18);
  if (*(*(a3 + 32) + 16))
  {
    specialized __RawDictionaryStorage.find<A>(_:)(v27, a2);
  }

  LocalizedStringKey.StringInterpolation.appendInterpolation<A>(_:specifier:)();
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v19);
  LocalizedStringKey.init(stringInterpolation:)();
  v20 = Text.init(_:tableName:bundle:comment:)();
  v22 = v21;
  v24 = v23 & 1;
  *a4 = v13;
  *(a4 + 8) = v15;
  *(a4 + 16) = v29 & 1;
  *(a4 + 24) = v30;
  *(a4 + 32) = v20;
  *(a4 + 40) = v21;
  *(a4 + 48) = v23 & 1;
  *(a4 + 56) = v25;
  outlined copy of Text.Storage(v13, v15, v29 & 1);

  outlined copy of Text.Storage(v20, v22, v24);

  outlined consume of Text.Storage(v20, v22, v24);

  outlined consume of Text.Storage(v13, v15, v29 & 1);
}

uint64_t ReactionHistoryEntryAvatarImage.LoadingState.task.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

void ReactionHistoryEntryAvatarImage.LoadingState.imageProvider.setter(uint64_t a1, char a2)
{
  outlined consume of ReactionHistoryEntry.ImageProvider?(*(v2 + 8), *(v2 + 16));
  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
}

id ReactionHistoryEntryAvatarImage.imageProvider.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t ReactionHistoryEntryAvatarImage.transaction.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t ReactionHistoryEntryAvatarImage.loadingState.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy22_GroupActivities_UIKit31ReactionHistoryEntryAvatarImageV07LoadingC0VGMd, &_s7SwiftUI5StateVy22_GroupActivities_UIKit31ReactionHistoryEntryAvatarImageV07LoadingC0VGMR);
  State.wrappedValue.getter();
  return v1;
}

double key path getter for ReactionHistoryEntryAvatarImage.loadingState : ReactionHistoryEntryAvatarImage@<D0>(uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy22_GroupActivities_UIKit31ReactionHistoryEntryAvatarImageV07LoadingC0VGMd, &_s7SwiftUI5StateVy22_GroupActivities_UIKit31ReactionHistoryEntryAvatarImageV07LoadingC0VGMR);
  State.wrappedValue.getter();
  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  return result;
}

uint64_t key path setter for ReactionHistoryEntryAvatarImage.loadingState : ReactionHistoryEntryAvatarImage(uint64_t *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = a1[3];
  v4 = *(a1 + 16);

  outlined copy of ReactionHistoryEntry.ImageProvider?(v2, v4);
  outlined copy of ReactionHistoryEntryAvatarImage.ImagePhase(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy22_GroupActivities_UIKit31ReactionHistoryEntryAvatarImageV07LoadingC0VGMd, &_s7SwiftUI5StateVy22_GroupActivities_UIKit31ReactionHistoryEntryAvatarImageV07LoadingC0VGMR);
  return State.wrappedValue.setter();
}

void (*ReactionHistoryEntryAvatarImage.loadingState.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xE0uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 184) = v1;
  v5 = *(v1 + 24);
  *(v3 + 192) = v5;
  v6 = *(v1 + 48);
  *(v3 + 200) = v6;
  v7 = *(v1 + 56);
  *(v3 + 208) = v7;
  v8 = *(v1 + 40);
  *(v3 + 144) = *(v1 + 32);
  v9 = v3 + 144;
  *(v3 + 160) = v5;
  *(v3 + 168) = v6;
  *(v3 + 176) = v7;
  *(v3 + 152) = v8;
  *v3 = v5;
  v10 = *(v1 + 32);
  *(v3 + 16) = *(v1 + 40);
  *(v3 + 8) = v10;
  LODWORD(v10) = *(v1 + 41);
  *(v3 + 20) = *(v1 + 44);
  *(v3 + 17) = v10;
  *(v3 + 24) = v6;
  *(v3 + 32) = v7;
  outlined init with copy of ModifiedContent<_ShapeView<ScaledShape<Capsule>, Material>, _AnimationModifier<Bool>>(v3 + 160, v3 + 40, &_sScTyyts5Error_pGSgMd, &_sScTyyts5Error_pGSgMR);
  outlined init with copy of ModifiedContent<_ShapeView<ScaledShape<Capsule>, Material>, _AnimationModifier<Bool>>(v9, v4 + 40, &_s22_GroupActivities_UIKit20ReactionHistoryEntryV13ImageProviderOSgMd, &_s22_GroupActivities_UIKit20ReactionHistoryEntryV13ImageProviderOSgMR);
  outlined init with copy of ReactionHistoryEntryAvatarImage.ImagePhase(v4 + 168, v4 + 40);
  outlined init with copy of ModifiedContent<_ShapeView<ScaledShape<Capsule>, Material>, _AnimationModifier<Bool>>(v4 + 176, v4 + 40, &_s7SwiftUI11AnyLocationCy22_GroupActivities_UIKit31ReactionHistoryEntryAvatarImageV12LoadingStateVGSgMd, &_s7SwiftUI11AnyLocationCy22_GroupActivities_UIKit31ReactionHistoryEntryAvatarImageV12LoadingStateVGSgMR);
  *(v4 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy22_GroupActivities_UIKit31ReactionHistoryEntryAvatarImageV07LoadingC0VGMd, &_s7SwiftUI5StateVy22_GroupActivities_UIKit31ReactionHistoryEntryAvatarImageV07LoadingC0VGMR);
  State.wrappedValue.getter();
  return ReactionHistoryEntryAvatarImage.loadingState.modify;
}

void ReactionHistoryEntryAvatarImage.loadingState.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 184);
  *(v2 + 40) = *(*a1 + 192);
  v4 = *(v2 + 80);
  v5 = *(v3 + 40);
  *(v2 + 48) = *(v3 + 32);
  *(v2 + 56) = v5;
  v6 = *(v3 + 44);
  LODWORD(v3) = *(v3 + 41);
  *(v2 + 112) = v4;
  v7 = *(v2 + 88);
  v8 = *(v2 + 96);
  v9 = *(v2 + 104);
  v10 = *(v2 + 200);
  *(v2 + 57) = v3;
  *(v2 + 60) = v6;
  *(v2 + 64) = v10;
  *(v2 + 120) = v7;
  *(v2 + 128) = v8;
  *(v2 + 136) = v9;
  if (a2)
  {

    outlined copy of ReactionHistoryEntry.ImageProvider?(v7, v8);
    outlined copy of ReactionHistoryEntryAvatarImage.ImagePhase(v9);
    State.wrappedValue.setter();
    outlined destroy of NSObject?(v2 + 160, &_sScTyyts5Error_pGSgMd, &_sScTyyts5Error_pGSgMR);
    outlined destroy of NSObject?(v2 + 144, &_s22_GroupActivities_UIKit20ReactionHistoryEntryV13ImageProviderOSgMd, &_s22_GroupActivities_UIKit20ReactionHistoryEntryV13ImageProviderOSgMR);
    outlined destroy of ReactionHistoryEntryAvatarImage.ImagePhase(v2 + 168);
    outlined destroy of NSObject?(v2 + 176, &_s7SwiftUI11AnyLocationCy22_GroupActivities_UIKit31ReactionHistoryEntryAvatarImageV12LoadingStateVGSgMd, &_s7SwiftUI11AnyLocationCy22_GroupActivities_UIKit31ReactionHistoryEntryAvatarImageV12LoadingStateVGSgMR);
    v11 = *(v2 + 88);
    v12 = *(v2 + 104);
    v13 = *(v2 + 96);

    outlined consume of ReactionHistoryEntry.ImageProvider?(v11, v13);
    outlined consume of ReactionHistoryEntryAvatarImage.ImagePhase(v12);
  }

  else
  {
    State.wrappedValue.setter();
    outlined destroy of NSObject?(v2 + 160, &_sScTyyts5Error_pGSgMd, &_sScTyyts5Error_pGSgMR);
    outlined destroy of NSObject?(v2 + 144, &_s22_GroupActivities_UIKit20ReactionHistoryEntryV13ImageProviderOSgMd, &_s22_GroupActivities_UIKit20ReactionHistoryEntryV13ImageProviderOSgMR);
    outlined destroy of ReactionHistoryEntryAvatarImage.ImagePhase(v2 + 168);
    outlined destroy of NSObject?(v2 + 176, &_s7SwiftUI11AnyLocationCy22_GroupActivities_UIKit31ReactionHistoryEntryAvatarImageV12LoadingStateVGSgMd, &_s7SwiftUI11AnyLocationCy22_GroupActivities_UIKit31ReactionHistoryEntryAvatarImageV12LoadingStateVGSgMR);
  }

  free(v2);
}

__n128 ReactionHistoryEntryAvatarImage.$loadingState.getter@<Q0>(__n128 *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy22_GroupActivities_UIKit31ReactionHistoryEntryAvatarImageV07LoadingC0VGMd, &_s7SwiftUI5StateVy22_GroupActivities_UIKit31ReactionHistoryEntryAvatarImageV07LoadingC0VGMR);
  State.projectedValue.getter();
  result = v4;
  *a1 = v3;
  a1[1] = v4;
  a1[2].n128_u8[0] = v5;
  a1[2].n128_u64[1] = v6;
  return result;
}

__n128 ReactionHistoryEntryAvatarImage.content.getter@<Q0>(__n128 *a1@<X8>)
{
  v3 = type metadata accessor for Image.ResizingMode();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 6];
  v7 = *(v1 + 40);
  v29 = *(v1 + 24);
  v30 = v7;
  v31.n128_u64[0] = *(v1 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy22_GroupActivities_UIKit31ReactionHistoryEntryAvatarImageV07LoadingC0VGMd, &_s7SwiftUI5StateVy22_GroupActivities_UIKit31ReactionHistoryEntryAvatarImageV07LoadingC0VGMR);
  State.wrappedValue.getter();
  v8 = *(&v25[0] + 1);
  v9 = *(&v25[1] + 1);
  v10 = v25[1];
  outlined copy of ReactionHistoryEntryAvatarImage.ImagePhase(*(&v25[1] + 1));

  outlined consume of ReactionHistoryEntry.ImageProvider?(v8, v10);
  outlined consume of ReactionHistoryEntryAvatarImage.ImagePhase(v9);
  if (v9 >> 62)
  {
    outlined consume of ReactionHistoryEntryAvatarImage.ImagePhase(v9);
    v14 = [objc_opt_self() quaternaryLabelColor];
    v15 = MEMORY[0x23EEA5FE0](v14);
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    *&v27[22] = v22[0];
    *&v27[38] = v22[1];
    *&v27[6] = v21;
    *(v25 + 10) = *v27;
    LOBYTE(v28[0]) = 1;
    *&v25[0] = v15;
    WORD4(v25[0]) = 256;
    *(&v25[1] + 10) = *&v27[16];
    *(&v25[2] + 10) = *&v27[32];
    *(&v25[3] + 1) = *(&v22[1] + 1);
    v26[24] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA20_MaskAlignmentEffectVyAA6CircleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA20_MaskAlignmentEffectVyAA6CircleVGGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA12_FrameLayoutVGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _MaskAlignmentEffect<Circle>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
  }

  else
  {
    (*(v4 + 104))(v6, *MEMORY[0x277CE0FE0], v3);
    v11 = Image.resizable(capInsets:resizingMode:)();
    (*(v4 + 8))(v6, v3);
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v29.n128_u8[0] = 1;
    *&v20[6] = v28[0];
    *&v20[22] = v28[1];
    *&v20[38] = v28[2];
    v12 = static Alignment.center.getter();
    v21 = v11;
    LOWORD(v22[0]) = 257;
    *(&v22[2] + 2) = *&v20[32];
    *(&v22[1] + 2) = *&v20[16];
    *(v22 + 2) = *v20;
    *&v22[3] = *&v20[46];
    *(&v22[3] + 1) = v12;
    v23 = v13;
    v31 = v22[1];
    v32 = v22[2];
    *v33 = v22[3];
    *&v33[16] = v13;
    v29 = v11;
    v30 = v22[0];
    v24 = 0;
    v33[24] = 0;
    outlined init with copy of ModifiedContent<_ShapeView<ScaledShape<Capsule>, Material>, _AnimationModifier<Bool>>(&v21, v25, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA20_MaskAlignmentEffectVyAA6CircleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA20_MaskAlignmentEffectVyAA6CircleVGGMR);
    outlined init with copy of ModifiedContent<_ShapeView<ScaledShape<Capsule>, Material>, _AnimationModifier<Bool>>(&v21, v25, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA20_MaskAlignmentEffectVyAA6CircleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA20_MaskAlignmentEffectVyAA6CircleVGGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA20_MaskAlignmentEffectVyAA6CircleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA20_MaskAlignmentEffectVyAA6CircleVGGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA12_FrameLayoutVGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _MaskAlignmentEffect<Circle>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    outlined consume of ReactionHistoryEntryAvatarImage.ImagePhase(v9);
    outlined destroy of NSObject?(&v21, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA20_MaskAlignmentEffectVyAA6CircleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA20_MaskAlignmentEffectVyAA6CircleVGGMR);
    outlined destroy of NSObject?(&v21, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA20_MaskAlignmentEffectVyAA6CircleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA20_MaskAlignmentEffectVyAA6CircleVGGMR);
    v31 = v25[2];
    v32 = v25[3];
    *v33 = *v26;
    *&v33[9] = *&v26[9];
    v29 = v25[0];
    v30 = v25[1];
  }

  v16 = v32;
  a1[2] = v31;
  a1[3] = v16;
  a1[4] = *v33;
  *(a1 + 73) = *&v33[9];
  result = v29;
  v18 = v30;
  *a1 = v29;
  a1[1] = v18;
  return result;
}

uint64_t ReactionHistoryEntryAvatarImage.body.getter()
{
  ReactionHistoryEntryAvatarImage.content.getter(v15);
  v1 = *v0;
  v2 = *(v0 + 16);
  v22 = *(v0 + 24);
  v23 = v2;
  v3 = *(v0 + 32);
  v21 = *(v0 + 40);
  v4 = *(v0 + 56);
  v19 = *(v0 + 48);
  v20 = v3;
  v18 = v4;
  v5 = swift_allocObject();
  v6 = *(v0 + 16);
  v5[1] = *v0;
  v5[2] = v6;
  v7 = *(v0 + 48);
  v5[3] = *(v0 + 32);
  v5[4] = v7;
  v16 = 0uLL;
  *&v17 = partial apply for closure #1 in ReactionHistoryEntryAvatarImage.body.getter;
  *(&v17 + 1) = v5;
  v8 = swift_allocObject();
  v9 = *(v0 + 16);
  v8[1] = *v0;
  v8[2] = v9;
  v10 = *(v0 + 48);
  v8[3] = *(v0 + 32);
  v8[4] = v10;
  v11 = swift_allocObject();
  *(v11 + 16) = partial apply for implicit closure #2 in implicit closure #1 in ReactionHistoryEntryAvatarImage.body.getter;
  *(v11 + 24) = v8;
  v12 = v1;
  outlined init with copy of Transaction(&v23, v24);
  outlined init with copy of ModifiedContent<_ShapeView<ScaledShape<Capsule>, Material>, _AnimationModifier<Bool>>(&v22, v24, &_sScTyyts5Error_pGSgMd, &_sScTyyts5Error_pGSgMR);
  outlined init with copy of ModifiedContent<_ShapeView<ScaledShape<Capsule>, Material>, _AnimationModifier<Bool>>(&v20, v24, &_s22_GroupActivities_UIKit20ReactionHistoryEntryV13ImageProviderOSgMd, &_s22_GroupActivities_UIKit20ReactionHistoryEntryV13ImageProviderOSgMR);
  outlined init with copy of ReactionHistoryEntryAvatarImage.ImagePhase(&v19, v24);
  outlined init with copy of ModifiedContent<_ShapeView<ScaledShape<Capsule>, Material>, _AnimationModifier<Bool>>(&v18, v24, &_s7SwiftUI11AnyLocationCy22_GroupActivities_UIKit31ReactionHistoryEntryAvatarImageV12LoadingStateVGSgMd, &_s7SwiftUI11AnyLocationCy22_GroupActivities_UIKit31ReactionHistoryEntryAvatarImageV12LoadingStateVGSgMR);
  v13 = v12;
  outlined init with copy of Transaction(&v23, v24);
  outlined init with copy of ModifiedContent<_ShapeView<ScaledShape<Capsule>, Material>, _AnimationModifier<Bool>>(&v22, v24, &_sScTyyts5Error_pGSgMd, &_sScTyyts5Error_pGSgMR);
  outlined init with copy of ModifiedContent<_ShapeView<ScaledShape<Capsule>, Material>, _AnimationModifier<Bool>>(&v20, v24, &_s22_GroupActivities_UIKit20ReactionHistoryEntryV13ImageProviderOSgMd, &_s22_GroupActivities_UIKit20ReactionHistoryEntryV13ImageProviderOSgMR);
  outlined init with copy of ReactionHistoryEntryAvatarImage.ImagePhase(&v19, v24);
  outlined init with copy of ModifiedContent<_ShapeView<ScaledShape<Capsule>, Material>, _AnimationModifier<Bool>>(&v18, v24, &_s7SwiftUI11AnyLocationCy22_GroupActivities_UIKit31ReactionHistoryEntryAvatarImageV12LoadingStateVGSgMd, &_s7SwiftUI11AnyLocationCy22_GroupActivities_UIKit31ReactionHistoryEntryAvatarImageV12LoadingStateVGSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameI0VGAA20_MaskAlignmentEffectVyAA6CircleVGGACyAA10_ShapeViewVyAqA5ColorVGALGGAA25_AppearanceActionModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameI0VGAA20_MaskAlignmentEffectVyAA6CircleVGGACyAA10_ShapeViewVyAqA5ColorVGALGGAA25_AppearanceActionModifierVGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s22_GroupActivities_UIKit20ReactionHistoryEntryV13ImageProviderOSgMd, &_s22_GroupActivities_UIKit20ReactionHistoryEntryV13ImageProviderOSgMR);
  lazy protocol witness table accessor for type ModifiedContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _MaskAlignmentEffect<Circle>>, ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type ReactionHistoryEntry.ImageProvider? and conformance <A> A?();
  View.onChange<A>(of:initial:_:)();

  v24[4] = v15[4];
  v24[5] = v15[5];
  v24[6] = v16;
  v24[7] = v17;
  v24[0] = v15[0];
  v24[1] = v15[1];
  v24[2] = v15[2];
  v24[3] = v15[3];
  return outlined destroy of NSObject?(v24, &_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameI0VGAA20_MaskAlignmentEffectVyAA6CircleVGGACyAA10_ShapeViewVyAqA5ColorVGALGGAA25_AppearanceActionModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameI0VGAA20_MaskAlignmentEffectVyAA6CircleVGGACyAA10_ShapeViewVyAqA5ColorVGALGGAA25_AppearanceActionModifierVGMR);
}