unint64_t lazy protocol witness table accessor for type CGFloat and conformance CGFloat(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type CGFloat and conformance CGFloat;
  if (!lazy protocol witness table cache variable for type CGFloat and conformance CGFloat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CGFloat and conformance CGFloat);
  }

  return result;
}

uint64_t outlined destroy of UnevenRoundedRectangle(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25E57A900(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewP07SnippetB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOy05PhonefB0025ShowCallHistorySingleItemE0V_Qo_AL025CarPlayDisambiguationListR0VGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewP07SnippetB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOy05PhonefB0025ShowCallHistorySingleItemE0V_Qo_AL025CarPlayDisambiguationListR0VGMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ShowCallHistorySingleItemView.init(model:shouldReactOpenContact:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v18 = a2;
  v17 = a1;
  v4 = type metadata accessor for Font.TextStyle();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Context();
  lazy protocol witness table accessor for type Context and conformance Context(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68], MEMORY[0x277D63F58]);
  *a3 = EnvironmentObject.init()();
  a3[1] = v8;
  v9 = type metadata accessor for ShowCallHistorySingleItemView(0);
  ActionHandler.init()();
  v19 = 0x4041800000000000;
  v10 = *MEMORY[0x277CE0A60];
  v11 = *(v5 + 104);
  v12 = v11(v7, v10, v4);
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat(v12, v13, v14);
  ScaledMetric.init(wrappedValue:relativeTo:)();
  v19 = 0x4041800000000000;
  v11(v7, v10, v4);
  ScaledMetric.init(wrappedValue:relativeTo:)();
  result = outlined init with take of SingleCallRecordModel(v17, a3 + *(v9 + 32), type metadata accessor for SingleCallRecordModel);
  *(a3 + *(v9 + 36)) = v18;
  return result;
}

uint64_t type metadata accessor for ShowCallHistorySingleItemView(uint64_t a1)
{
  result = type metadata singleton initialization cache for ShowCallHistorySingleItemView;
  if (!type metadata singleton initialization cache for ShowCallHistorySingleItemView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double ShowCallHistorySingleItemView.circleWidth.getter()
{
  type metadata accessor for ShowCallHistorySingleItemView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12ScaledMetricVy12CoreGraphics7CGFloatVGMd, &_s7SwiftUI12ScaledMetricVy12CoreGraphics7CGFloatVGMR);
  ScaledMetric.wrappedValue.getter();
  return v1;
}

uint64_t property wrapper backing initializer of ShowCallHistorySingleItemView.circleWidth(double a1)
{
  v2 = type metadata accessor for Font.TextStyle();
  MEMORY[0x28223BE20](v2);
  *&v9[1] = a1;
  v5 = (*(v4 + 104))(v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CE0A60]);
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat(v5, v6, v7);
  return ScaledMetric.init(wrappedValue:relativeTo:)();
}

double ShowCallHistorySingleItemView.circleHeight.getter()
{
  type metadata accessor for ShowCallHistorySingleItemView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12ScaledMetricVy12CoreGraphics7CGFloatVGMd, &_s7SwiftUI12ScaledMetricVy12CoreGraphics7CGFloatVGMR);
  ScaledMetric.wrappedValue.getter();
  return v1;
}

uint64_t ShowCallHistorySingleItemView.body.getter()
{
  v1 = type metadata accessor for ShowCallHistorySingleItemView(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = type metadata accessor for SimpleItemRichView();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  ShowCallHistorySingleItemView.getSimpleItemRichView()(v7);
  outlined init with copy of SingleCallRecordModel(v0, &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ShowCallHistorySingleItemView);
  v8 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v9 = swift_allocObject();
  outlined init with take of SingleCallRecordModel(&v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for ShowCallHistorySingleItemView);
  lazy protocol witness table accessor for type Context and conformance Context(&lazy protocol witness table cache variable for type SimpleItemRichView and conformance SimpleItemRichView, MEMORY[0x277D63D00], MEMORY[0x277D63CF8]);
  View.componentTapped(isNavigation:perform:)();

  return (*(v5 + 8))(v7, v4);
}

uint64_t ShowCallHistorySingleItemView.getSimpleItemRichView()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v19 = a1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA4TextV_AA15ModifiedContentVyAA0E0PAAE12onTapGesture5count7performQrSi_yyctFQOyAIyAA6ZStackVyAEyAIyAA06_ShapeE0VyAA6CircleVAA012HierarchicalO5StyleVGAA12_FrameLayoutVG_AIyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGAA06_TraitxY0VyAA011ZIndexTraitW0VGG_Qo_AA08_PaddingT0VGtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA4TextV_AA15ModifiedContentVyAA0E0PAAE12onTapGesture5count7performQrSi_yyctFQOyAIyAA6ZStackVyAEyAIyAA06_ShapeE0VyAA6CircleVAA012HierarchicalO5StyleVGAA12_FrameLayoutVG_AIyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGAA06_TraitxY0VyAA011ZIndexTraitW0VGG_Qo_AA08_PaddingT0VGtGGMR);
  MEMORY[0x28223BE20](v17);
  v4 = &v17 - v3;
  v5 = type metadata accessor for ShowCallHistorySingleItemView(0);
  v18 = ShowCallHistorySingleItemView.getAvatarView(contactIds:)(*(v1 + *(v5 + 32) + 80));
  v6 = ShowCallHistorySingleItemView.displayText.getter();
  v7 = MEMORY[0x277D63A58];
  v47 = MEMORY[0x277CE11D0];
  v48 = MEMORY[0x277D63A58];
  v45 = 0;
  v46 = v6;
  v43 = 0u;
  v44 = 0u;
  v8 = static VerticalAlignment.center.getter();
  LOBYTE(v37) = 0;
  closure #1 in ShowCallHistorySingleItemView.callDetailView.getter(v2, &v49);
  LOBYTE(v34) = BYTE8(v51);
  *&v40 = v8;
  *(&v40 + 1) = 0x4010000000000000;
  LOBYTE(v41[0]) = v37;
  *(v41 + 8) = v49;
  *(&v41[1] + 8) = v50;
  *(&v41[2] + 1) = v51;
  LOBYTE(v42) = BYTE8(v51);
  *(&v42 + 1) = v52;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGSg_AA4TextVtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGSg_AA4TextVtGGMR);
  v9 = MEMORY[0x277CE1140];
  lazy protocol witness table accessor for type TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>?, Text)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGSg_AA4TextVtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGSg_AA4TextVtGGMR, MEMORY[0x277CE1140]);
  v10 = View.eraseToAnyView()();
  v51 = v41[1];
  v52 = v41[2];
  v53 = v42;
  v49 = v40;
  v50 = v41[0];
  outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(&v49, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGSg_AA4TextVtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGSg_AA4TextVtGGMR);
  *&v41[1] = v7;
  v11 = MEMORY[0x277CE11D0];
  *(&v41[0] + 1) = MEMORY[0x277CE11D0];
  *&v40 = v10;
  *v4 = static VerticalAlignment.center.getter();
  *(v4 + 1) = 0x4000000000000000;
  v4[16] = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA4TextV_AA15ModifiedContentVyAA0D0PAAE12onTapGesture5count7performQrSi_yyctFQOyAMyAA6ZStackVyAIyAMyAA06_ShapeD0VyAA6CircleVAA012HierarchicalR5StyleVGAA06_FrameG0VG_AMyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGAA06_TraitZ8ModifierVyAA011ZIndexTraitY0VGG_Qo_AA08_PaddingG0VGtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA4TextV_AA15ModifiedContentVyAA0D0PAAE12onTapGesture5count7performQrSi_yyctFQOyAMyAA6ZStackVyAIyAMyAA06_ShapeD0VyAA6CircleVAA012HierarchicalR5StyleVGAA06_FrameG0VG_AMyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGAA06_TraitZ8ModifierVyAA011ZIndexTraitY0VGG_Qo_AA08_PaddingG0VGtGGMR);
  closure #1 in ShowCallHistorySingleItemView.dateAndInformationView.getter(v2, &v4[*(v12 + 44)]);
  lazy protocol witness table accessor for type TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(Text, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _PaddingLayout>)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA4TextV_AA15ModifiedContentVyAA0E0PAAE12onTapGesture5count7performQrSi_yyctFQOyAIyAA6ZStackVyAEyAIyAA06_ShapeE0VyAA6CircleVAA012HierarchicalO5StyleVGAA12_FrameLayoutVG_AIyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGAA06_TraitxY0VyAA011ZIndexTraitW0VGG_Qo_AA08_PaddingT0VGtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA4TextV_AA15ModifiedContentVyAA0E0PAAE12onTapGesture5count7performQrSi_yyctFQOyAIyAA6ZStackVyAEyAIyAA06_ShapeE0VyAA6CircleVAA012HierarchicalO5StyleVGAA12_FrameLayoutVG_AIyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGAA06_TraitxY0VyAA011ZIndexTraitW0VGG_Qo_AA08_PaddingT0VGtGGMR, v9);
  v13 = View.eraseToAnyView()();
  outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v4, &_s7SwiftUI6HStackVyAA9TupleViewVyAA4TextV_AA15ModifiedContentVyAA0E0PAAE12onTapGesture5count7performQrSi_yyctFQOyAIyAA6ZStackVyAEyAIyAA06_ShapeE0VyAA6CircleVAA012HierarchicalO5StyleVGAA12_FrameLayoutVG_AIyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGAA06_TraitxY0VyAA011ZIndexTraitW0VGG_Qo_AA08_PaddingT0VGtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA4TextV_AA15ModifiedContentVyAA0E0PAAE12onTapGesture5count7performQrSi_yyctFQOyAIyAA6ZStackVyAEyAIyAA06_ShapeE0VyAA6CircleVAA012HierarchicalO5StyleVGAA12_FrameLayoutVG_AIyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGAA06_TraitxY0VyAA011ZIndexTraitW0VGG_Qo_AA08_PaddingT0VGtGGMR);
  v38 = v11;
  v39 = v7;
  v36 = 0;
  v37 = v13;
  v34 = 0u;
  v35 = 0u;
  v33 = 0;
  v31 = 0u;
  v32 = 0u;
  v30 = 0;
  v28 = 0u;
  v29 = 0u;
  v27 = 0;
  v25 = 0u;
  v26 = 0u;
  if (v18)
  {
    v14 = MEMORY[0x277D63A58];
    v15 = MEMORY[0x277CE11D0];
  }

  else
  {
    v15 = 0;
    v14 = 0;
    v21 = 0;
    v22 = 0;
  }

  v20 = v18;
  v23 = v15;
  v24 = v14;
  return SimpleItemRichView.init(text1:text2:text3:text4:text5:text6:text7:text8:thumbnail:)();
}

uint64_t closure #1 in ShowCallHistorySingleItemView.body.getter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI15InteractionTypeOSgMd, &_s9SnippetUI15InteractionTypeOSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v68 = &v63 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit14ActionPropertyVSgMd, "6~");
  MEMORY[0x28223BE20](v4 - 8);
  v67 = &v63 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI21StandardActionHandlerVSgMd, &_s9SnippetUI21StandardActionHandlerVSgMR);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v66 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v65 = &v63 - v9;
  v10 = type metadata accessor for ShowCallHistorySingleItemView(0);
  v11 = MEMORY[0x28223BE20](v10);
  v64 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v63 = &v63 - v13;
  v14 = type metadata accessor for ActionProperty();
  v70 = *(v14 - 8);
  v71 = v14;
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v63 - v18;
  v20 = *(a1 + *(v10 + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10SnippetKit24ActionElementConvertible_pGMd, "6~");
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_25E59F720;
  v22 = type metadata accessor for Command();
  v23 = MEMORY[0x277D63778];
  *(v21 + 56) = v22;
  *(v21 + 64) = v23;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v21 + 32));
  v69 = v10;
  type metadata accessor for SingleCallRecordModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  if (v20 == 1)
  {
    *boxed_opaque_existential_1 = CodableAceObject.wrappedValue.getter();
    v25 = MEMORY[0x277D63750];
    *(boxed_opaque_existential_1 + 8) = 0;
    (*(*(v22 - 8) + 104))(boxed_opaque_existential_1, *v25, v22);
    ActionProperty.init(_:)();
    v26 = v19;
    if (one-time initialization token for phoneSnippetUI != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    __swift_project_value_buffer(v27, static Logger.phoneSnippetUI);
    v28 = v63;
    outlined init with copy of SingleCallRecordModel(a1, v63, type metadata accessor for ShowCallHistorySingleItemView);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v72 = v32;
      *v31 = 136315138;
      v33 = v28 + *(v69 + 32);
      v34 = *(v33 + 16);
      v35 = *(v33 + 24);

      outlined destroy of ShowCallHistorySingleItemView(v28);
      v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v35, &v72);

      *(v31 + 4) = v36;
      _os_log_impl(&dword_25E523000, v29, v30, "#ShowCallHistorySingleItemView tapped, performing open call record direct action for %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x25F8B8670](v32, -1, -1);
      MEMORY[0x25F8B8670](v31, -1, -1);
    }

    else
    {

      outlined destroy of ShowCallHistorySingleItemView(v28);
    }

    v49 = v65;
    ActionHandler.wrappedValue.getter();
    v50 = type metadata accessor for StandardActionHandler();
    v51 = *(v50 - 8);
    if ((*(v51 + 48))(v49, 1, v50) == 1)
    {
      (*(v70 + 8))(v26, v71);
      return outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v49, &_s9SnippetUI21StandardActionHandlerVSgMd, &_s9SnippetUI21StandardActionHandlerVSgMR);
    }

    v54 = v70;
    v53 = v71;
    v55 = v67;
    (*(v70 + 16))(v67, v26, v71);
    (*(v54 + 56))(v55, 0, 1, v53);
    v56 = type metadata accessor for InteractionType();
    v57 = v68;
    (*(*(v56 - 8) + 56))(v68, 1, 1, v56);
    StandardActionHandler.perform(_:interactionType:)();
    outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v57, &_s9SnippetUI15InteractionTypeOSgMd, &_s9SnippetUI15InteractionTypeOSgMR);
    outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v55, &_s10SnippetKit14ActionPropertyVSgMd, "6~");
    (*(v54 + 8))(v26, v53);
  }

  else
  {
    *boxed_opaque_existential_1 = CodableAceObject.wrappedValue.getter();
    v37 = MEMORY[0x277D63750];
    *(boxed_opaque_existential_1 + 8) = 0;
    (*(*(v22 - 8) + 104))(boxed_opaque_existential_1, *v37, v22);
    ActionProperty.init(_:)();
    v38 = v17;
    if (one-time initialization token for phoneSnippetUI != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    __swift_project_value_buffer(v39, static Logger.phoneSnippetUI);
    v40 = v64;
    outlined init with copy of SingleCallRecordModel(a1, v64, type metadata accessor for ShowCallHistorySingleItemView);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v72 = v44;
      *v43 = 136315138;
      v45 = v40 + *(v69 + 32);
      v46 = *(v45 + 16);
      v47 = *(v45 + 24);

      outlined destroy of ShowCallHistorySingleItemView(v40);
      v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v47, &v72);

      *(v43 + 4) = v48;
      _os_log_impl(&dword_25E523000, v41, v42, "#ShowCallHistorySingleItemView tapped, performing call direct action for %s on current device", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v44);
      MEMORY[0x25F8B8670](v44, -1, -1);
      MEMORY[0x25F8B8670](v43, -1, -1);
    }

    else
    {

      outlined destroy of ShowCallHistorySingleItemView(v40);
    }

    v49 = v66;
    ActionHandler.wrappedValue.getter();
    v50 = type metadata accessor for StandardActionHandler();
    v51 = *(v50 - 8);
    if ((*(v51 + 48))(v49, 1, v50) == 1)
    {
      (*(v70 + 8))(v38, v71);
      return outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v49, &_s9SnippetUI21StandardActionHandlerVSgMd, &_s9SnippetUI21StandardActionHandlerVSgMR);
    }

    v59 = v70;
    v58 = v71;
    v60 = v67;
    (*(v70 + 16))(v67, v38, v71);
    (*(v59 + 56))(v60, 0, 1, v58);
    v61 = type metadata accessor for InteractionType();
    v62 = v68;
    (*(*(v61 - 8) + 56))(v68, 1, 1, v61);
    StandardActionHandler.perform(_:interactionType:)();
    outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v62, &_s9SnippetUI15InteractionTypeOSgMd, &_s9SnippetUI15InteractionTypeOSgMR);
    outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v60, &_s10SnippetKit14ActionPropertyVSgMd, "6~");
    (*(v59 + 8))(v38, v58);
  }

  return (*(v51 + 8))(v49, v50);
}

uint64_t outlined init with copy of SingleCallRecordModel(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of SingleCallRecordModel(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t ShowCallHistorySingleItemView.getAvatarView(contactIds:)(uint64_t a1)
{
  v19 = a1;
  v1 = type metadata accessor for ImageElement.ImageStyle();
  v17 = v1;
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ImageElement();
  MEMORY[0x28223BE20](v5 - 8);
  v18 = type metadata accessor for ImageElementView();
  v6 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 104))(v4, *MEMORY[0x277D62A98], v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10SnippetKit11_ProtoIdiomOGMd, &_ss23_ContiguousArrayStorageCy10SnippetKit11_ProtoIdiomOGMR);
  v9 = type metadata accessor for _ProtoIdiom();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_25E59F720;
  (*(v10 + 104))(v12 + v11, *MEMORY[0x277D62A28], v9);
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10SnippetKit11_ProtoIdiomO_Tt0gq5Tf4g_n(v12);
  swift_setDeallocating();
  (*(v10 + 8))(v12 + v11, v9);
  swift_deallocClassInstance();
  static ImageElement.contactImageAvatar(contactIds:imageStyle:idioms:)();

  (*(v2 + 8))(v4, v17);
  ImageElementView.init(_:)();
  lazy protocol witness table accessor for type Context and conformance Context(&lazy protocol witness table cache variable for type ImageElementView and conformance ImageElementView, MEMORY[0x277D63C70], MEMORY[0x277D63C58]);
  v13 = v18;
  v14 = View.eraseToAnyView()();
  (*(v6 + 8))(v8, v13);
  return v14;
}

uint64_t ShowCallHistorySingleItemView.displayText.getter()
{
  v1 = type metadata accessor for ShowCallHistorySingleItemView(0);
  v2 = (v0 + *(v1 + 32));
  v3 = v2[3];
  *&v31[0] = v2[2];
  *(&v31[0] + 1) = v3;
  lazy protocol witness table accessor for type String and conformance String(v1, v4, v5);

  v6 = Text.init<A>(_:)();
  v8 = v7;
  v10 = v9;
  v11 = v2[9];
  if (v11 && (v2[8] == 0x44455353494DLL ? (v12 = v11 == 0xE600000000000000) : (v12 = 0), v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    static Color.red.getter();
  }

  else
  {
    static Color.primary.getter();
  }

  v13 = Text.foregroundStyle<A>(_:)();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  outlined consume of Text.Storage(v6, v8, v10 & 1);

  v20 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v34 = v17 & 1;
  v33 = 0;
  *&v27 = v13;
  *(&v27 + 1) = v15;
  LOBYTE(v28) = v17 & 1;
  *(&v28 + 1) = v19;
  LOBYTE(v29) = v20;
  *(&v29 + 1) = v21;
  *v30 = v22;
  *&v30[8] = v23;
  *&v30[16] = v24;
  v30[24] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA14_PaddingLayoutVGMR);
  lazy protocol witness table accessor for type ModifiedContent<Text, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
  v25 = View.eraseToAnyView()();
  v32[0] = *v30;
  *(v32 + 9) = *&v30[9];
  v31[1] = v28;
  v31[2] = v29;
  v31[0] = v27;
  outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v31, &_s7SwiftUI15ModifiedContentVyAA4TextVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA14_PaddingLayoutVGMR);
  return v25;
}

uint64_t closure #1 in ShowCallHistorySingleItemView.dateAndInformationView.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v55 = a1;
  v63 = a2;
  v3 = type metadata accessor for ShowCallHistorySingleItemView(0);
  v4 = v3 - 8;
  v59 = *(v3 - 8);
  v58 = *(v59 + 64);
  MEMORY[0x28223BE20](v3);
  v57 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyACyAA6ZStackVyAA05TupleE0VyACyAA06_ShapeE0VyAA6CircleVAA012HierarchicalM5StyleVGAA12_FrameLayoutVG_ACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGAA06_TraitvW0VyAA06ZIndexyU0VGG_Qo_AA08_PaddingR0VGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyACyAA6ZStackVyAA05TupleE0VyACyAA06_ShapeE0VyAA6CircleVAA012HierarchicalM5StyleVGAA12_FrameLayoutVG_ACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGAA06_TraitvW0VyAA06ZIndexyU0VGG_Qo_AA08_PaddingR0VGMR) - 8;
  v6 = MEMORY[0x28223BE20](v61);
  v62 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v60 = &v54 - v9;
  v10 = a1 + *(v4 + 40);
  v11 = *(v10 + 56);
  *&v77 = *(v10 + 48);
  *(&v77 + 1) = v11;
  lazy protocol witness table accessor for type String and conformance String(v8, v12, v13);

  v14 = Text.init<A>(_:)();
  v16 = v15;
  v18 = v17;
  static Font.subheadline.getter();
  v19 = Text.font(_:)();
  v21 = v20;
  v23 = v22;

  outlined consume of Text.Storage(v14, v16, v18 & 1);

  static Font.Weight.regular.getter();
  v24 = Text.fontWeight(_:)();
  v26 = v25;
  LOBYTE(v16) = v27;
  outlined consume of Text.Storage(v19, v21, v23 & 1);

  *&v77 = static Color.secondary.getter();
  v28 = Text.foregroundStyle<A>(_:)();
  v30 = v29;
  v56 = v31;
  v33 = v32;
  outlined consume of Text.Storage(v24, v26, v16 & 1);

  v34 = static Alignment.center.getter();
  v36 = v35;
  v37 = v55;
  closure #1 in closure #1 in ShowCallHistorySingleItemView.dateAndInformationView.getter(&v77);
  v73 = v79;
  v74 = v80;
  v71 = v77;
  v72 = v78;
  v76[2] = v79;
  v76[3] = v80;
  v76[4] = v81;
  v76[1] = v78;
  v75 = v81;
  v76[0] = v77;
  outlined init with copy of TupleView<(ModifiedContent<_ShapeView<Circle, HierarchicalShapeStyle>, _FrameLayout>, ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>)>(&v71, &v64);
  outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v76, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA06_ShapeD0VyAA6CircleVAA012HierarchicalG5StyleVGAA12_FrameLayoutVG_AEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA06_ShapeD0VyAA6CircleVAA012HierarchicalG5StyleVGAA12_FrameLayoutVG_AEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGMR);
  v67 = v73;
  v68 = v74;
  v69 = v75;
  v65 = v71;
  v66 = v72;
  *&v64 = v34;
  *(&v64 + 1) = v36;
  v70 = 0x3FF0000000000000;
  v38 = v57;
  outlined init with copy of SingleCallRecordModel(v37, v57, type metadata accessor for ShowCallHistorySingleItemView);
  v39 = (*(v59 + 80) + 16) & ~*(v59 + 80);
  v40 = swift_allocObject();
  outlined init with take of SingleCallRecordModel(v38, v40 + v39, type metadata accessor for ShowCallHistorySingleItemView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyACyAA06_ShapeG0VyAA6CircleVAA012HierarchicalH5StyleVGAA12_FrameLayoutVG_ACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGAA06_TraitqR0VyAA06ZIndextP0VGGMd, &_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyACyAA06_ShapeG0VyAA6CircleVAA012HierarchicalH5StyleVGAA12_FrameLayoutVG_ACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGAA06_TraitqR0VyAA06ZIndextP0VGGMR);
  lazy protocol witness table accessor for type ModifiedContent<ZStack<TupleView<(ModifiedContent<_ShapeView<Circle, HierarchicalShapeStyle>, _FrameLayout>, ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>)>>, _TraitWritingModifier<ZIndexTraitKey>> and conformance <> ModifiedContent<A, B>();
  v41 = v60;
  View.onTapGesture(count:perform:)();

  v81 = v68;
  v82 = v69;
  v83 = v70;
  v77 = v64;
  v78 = v65;
  v79 = v66;
  v80 = v67;
  outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(&v77, &_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyACyAA06_ShapeG0VyAA6CircleVAA012HierarchicalH5StyleVGAA12_FrameLayoutVG_ACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGAA06_TraitqR0VyAA06ZIndextP0VGGMd, &_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyACyAA06_ShapeG0VyAA6CircleVAA012HierarchicalH5StyleVGAA12_FrameLayoutVG_ACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGAA06_TraitqR0VyAA06ZIndextP0VGGMR);
  LOBYTE(v34) = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v42 = &v41[*(v61 + 44)];
  *v42 = v34;
  *(v42 + 1) = v43;
  *(v42 + 2) = v44;
  *(v42 + 3) = v45;
  *(v42 + 4) = v46;
  v42[40] = 0;
  v47 = v41;
  v48 = v41;
  v49 = v62;
  sub_25E57DBB8(v47, v62);
  v50 = v63;
  *v63 = v28;
  v50[1] = v30;
  LOBYTE(v34) = v56 & 1;
  *(v50 + 16) = v56 & 1;
  v50[3] = v33;
  v51 = v50;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4TextV_AA15ModifiedContentVyAA4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyAEyAA6ZStackVyAA05TupleF0VyAEyAA06_ShapeF0VyAA6CircleVAA012HierarchicalN5StyleVGAA12_FrameLayoutVG_AEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGAA06_TraitwX0VyAA06ZIndexzV0VGG_Qo_AA08_PaddingS0VGtMd, &_s7SwiftUI4TextV_AA15ModifiedContentVyAA4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyAEyAA6ZStackVyAA05TupleF0VyAEyAA06_ShapeF0VyAA6CircleVAA012HierarchicalN5StyleVGAA12_FrameLayoutVG_AEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGAA06_TraitwX0VyAA06ZIndexzV0VGG_Qo_AA08_PaddingS0VGtMR);
  sub_25E57DBB8(v49, v51 + *(v52 + 48));
  outlined copy of Text.Storage(v28, v30, v34);

  outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v48, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyACyAA6ZStackVyAA05TupleE0VyACyAA06_ShapeE0VyAA6CircleVAA012HierarchicalM5StyleVGAA12_FrameLayoutVG_ACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGAA06_TraitvW0VyAA06ZIndexyU0VGG_Qo_AA08_PaddingR0VGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyACyAA6ZStackVyAA05TupleE0VyACyAA06_ShapeE0VyAA6CircleVAA012HierarchicalM5StyleVGAA12_FrameLayoutVG_ACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGAA06_TraitvW0VyAA06ZIndexyU0VGG_Qo_AA08_PaddingR0VGMR);
  outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v49, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyACyAA6ZStackVyAA05TupleE0VyACyAA06_ShapeE0VyAA6CircleVAA012HierarchicalM5StyleVGAA12_FrameLayoutVG_ACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGAA06_TraitvW0VyAA06ZIndexyU0VGG_Qo_AA08_PaddingR0VGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyACyAA6ZStackVyAA05TupleE0VyACyAA06_ShapeE0VyAA6CircleVAA012HierarchicalM5StyleVGAA12_FrameLayoutVG_ACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGAA06_TraitvW0VyAA06ZIndexyU0VGG_Qo_AA08_PaddingR0VGMR);
  outlined consume of Text.Storage(v28, v30, v34);
}

__n128 closure #1 in closure #1 in ShowCallHistorySingleItemView.dateAndInformationView.getter@<Q0>(uint64_t a2@<X8>)
{
  v3 = static HierarchicalShapeStyle.quaternary.getter();
  type metadata accessor for ShowCallHistorySingleItemView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12ScaledMetricVy12CoreGraphics7CGFloatVGMd, &_s7SwiftUI12ScaledMetricVy12CoreGraphics7CGFloatVGMR);
  ScaledMetric.wrappedValue.getter();
  ScaledMetric.wrappedValue.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v8[18] = v10;
  *&v8[34] = v11;
  *&v8[2] = v9;
  v4 = Image.init(systemName:)();
  v5 = static Color.blue.getter();
  KeyPath = swift_getKeyPath();
  *(a2 + 6) = *v8;
  *a2 = v3;
  *(a2 + 4) = 256;
  *(a2 + 22) = *&v8[16];
  result = *&v8[32];
  *(a2 + 38) = *&v8[32];
  *(a2 + 54) = HIWORD(v11);
  *(a2 + 56) = v4;
  *(a2 + 64) = KeyPath;
  *(a2 + 72) = v5;
  return result;
}

uint64_t closure #2 in closure #1 in ShowCallHistorySingleItemView.dateAndInformationView.getter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI15InteractionTypeOSgMd, &_s9SnippetUI15InteractionTypeOSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v42 = v40 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit14ActionPropertyVSgMd, "6~");
  MEMORY[0x28223BE20](v4 - 8);
  v41 = v40 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI21StandardActionHandlerVSgMd, &_s9SnippetUI21StandardActionHandlerVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v45 = v40 - v7;
  v8 = type metadata accessor for ShowCallHistorySingleItemView(0);
  MEMORY[0x28223BE20](v8);
  v10 = v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ActionProperty();
  v43 = *(v11 - 8);
  v44 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10SnippetKit24ActionElementConvertible_pGMd, "6~");
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_25E59F720;
  v15 = type metadata accessor for Command();
  v16 = MEMORY[0x277D63778];
  *(v14 + 56) = v15;
  *(v14 + 64) = v16;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v14 + 32));
  type metadata accessor for SingleCallRecordModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  *boxed_opaque_existential_1 = CodableAceObject.wrappedValue.getter();
  *(boxed_opaque_existential_1 + 8) = 0;
  (*(*(v15 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D63750], v15);
  ActionProperty.init(_:)();
  if (one-time initialization token for phoneSnippetUI != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static Logger.phoneSnippetUI);
  outlined init with copy of SingleCallRecordModel(a1, v10, type metadata accessor for ShowCallHistorySingleItemView);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v46 = v22;
    *v21 = 136315138;
    v23 = &v10[*(v8 + 32)];
    v24 = v10;
    v25 = *(v23 + 2);
    v26 = *(v23 + 3);
    v40[1] = v8;

    outlined destroy of ShowCallHistorySingleItemView(v24);
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v46);

    *(v21 + 4) = v27;
    _os_log_impl(&dword_25E523000, v19, v20, "#ShowCallHistorySingleItemView tapped, performing call direct action for %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x25F8B8670](v22, -1, -1);
    MEMORY[0x25F8B8670](v21, -1, -1);
  }

  else
  {

    outlined destroy of ShowCallHistorySingleItemView(v10);
  }

  v28 = v45;
  ActionHandler.wrappedValue.getter();
  v29 = type metadata accessor for StandardActionHandler();
  v30 = *(v29 - 8);
  if ((*(v30 + 48))(v28, 1, v29) == 1)
  {
    (*(v43 + 8))(v13, v44);
    return outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v45, &_s9SnippetUI21StandardActionHandlerVSgMd, &_s9SnippetUI21StandardActionHandlerVSgMR);
  }

  else
  {
    v32 = v43;
    v33 = v41;
    v34 = v13;
    v35 = v13;
    v36 = v44;
    (*(v43 + 16))(v41, v34, v44);
    (*(v32 + 56))(v33, 0, 1, v36);
    v37 = type metadata accessor for InteractionType();
    v38 = v42;
    (*(*(v37 - 8) + 56))(v42, 1, 1, v37);
    v39 = v45;
    StandardActionHandler.perform(_:interactionType:)();
    outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v38, &_s9SnippetUI15InteractionTypeOSgMd, &_s9SnippetUI15InteractionTypeOSgMR);
    outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v33, &_s10SnippetKit14ActionPropertyVSgMd, "6~");
    (*(v32 + 8))(v35, v36);
    return (*(v30 + 8))(v39, v29);
  }
}

uint64_t closure #1 in ShowCallHistorySingleItemView.callDetailView.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ShowCallHistorySingleItemView(0);
  v6 = a1 + *(v4 + 32);
  v7 = *(v6 + 72);
  if (v7 && (*(v6 + 64) == 0x474E494F4754554FLL ? (v8 = v7 == 0xE800000000000000) : (v8 = 0), v8 || (v4 = _stringCompareWithSmolCheck(_:_:expecting:)(), (v4 & 1) != 0)))
  {
    v9 = Image.init(systemName:)();
    v10 = static Color.gray.getter();
    KeyPath = swift_getKeyPath();
    v27 = v9;

    v25 = KeyPath;

    v26 = v10;
  }

  else
  {
    v26 = 0;
    v27 = 0;
    v25 = 0;
  }

  lazy protocol witness table accessor for type String and conformance String(v4, v7, v5);

  v12 = Text.init<A>(_:)();
  v14 = v13;
  v16 = v15;
  static Color.gray.getter();
  v17 = Text.foregroundStyle<A>(_:)();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  outlined consume of Text.Storage(v12, v14, v16 & 1);

  outlined copy of ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>?(v27, v25, v26);
  v21 &= 1u;
  outlined copy of Text.Storage(v17, v19, v21);

  outlined consume of ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>?(v27, v25, v26);
  *a2 = v27;
  *(a2 + 8) = v25;
  *(a2 + 16) = v26;
  *(a2 + 24) = v17;
  *(a2 + 32) = v19;
  *(a2 + 40) = v21;
  *(a2 + 48) = v23;
  outlined consume of Text.Storage(v17, v19, v21);

  return outlined consume of ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>?(v27, v25, v26);
}

uint64_t protocol witness for View.body.getter in conformance ShowCallHistorySingleItemView(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  v4 = type metadata accessor for SimpleItemRichView();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  ShowCallHistorySingleItemView.getSimpleItemRichView()(v7);
  outlined init with copy of SingleCallRecordModel(v1, &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ShowCallHistorySingleItemView);
  v8 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v9 = swift_allocObject();
  outlined init with take of SingleCallRecordModel(&v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for ShowCallHistorySingleItemView);
  lazy protocol witness table accessor for type Context and conformance Context(&lazy protocol witness table cache variable for type SimpleItemRichView and conformance SimpleItemRichView, MEMORY[0x277D63D00], MEMORY[0x277D63CF8]);
  View.componentTapped(isNavigation:perform:)();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_25E57D2C8(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  v9 = type metadata accessor for ActionHandler();
  if (*(*(v9 - 8) + 84) == a2)
  {
    v10 = v9;
    v11 = *(v9 - 8);
    v12 = a3[5];
LABEL_11:
    v14 = *(v11 + 48);

    return v14(&a1[v12], a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12ScaledMetricVy12CoreGraphics7CGFloatVGMd, &_s7SwiftUI12ScaledMetricVy12CoreGraphics7CGFloatVGMR);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v10 = v13;
    v11 = *(v13 - 8);
    v12 = a3[6];
    goto LABEL_11;
  }

  v15 = type metadata accessor for SingleCallRecordModel(0);
  v16 = *(*(v15 - 8) + 48);
  v17 = &a1[a3[8]];

  return v16(v17, a2, v15);
}

char *sub_25E57D460(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
    return result;
  }

  v8 = type metadata accessor for ActionHandler();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12ScaledMetricVy12CoreGraphics7CGFloatVGMd, &_s7SwiftUI12ScaledMetricVy12CoreGraphics7CGFloatVGMR);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = type metadata accessor for SingleCallRecordModel(0);
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[8]];

  return v15(v16, a2, a2, v14);
}

void type metadata completion function for ShowCallHistorySingleItemView(uint64_t a1)
{
  type metadata accessor for EnvironmentObject<Context>(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ActionHandler();
    if (v2 <= 0x3F)
    {
      type metadata accessor for ScaledMetric<CGFloat>(319, v2, v3);
      if (v4 <= 0x3F)
      {
        type metadata accessor for SingleCallRecordModel(319);
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for ScaledMetric<CGFloat>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!lazy cache variable for type metadata for ScaledMetric<CGFloat>)
  {
    lazy protocol witness table accessor for type CGFloat and conformance CGFloat(0, a2, a3);
    v3 = type metadata accessor for ScaledMetric();
    if (!v4)
    {
      atomic_store(v3, &lazy cache variable for type metadata for ScaledMetric<CGFloat>);
    }
  }
}

uint64_t sub_25E57D6F0()
{
  type metadata accessor for SimpleItemRichView();
  lazy protocol witness table accessor for type Context and conformance Context(&lazy protocol witness table cache variable for type SimpleItemRichView and conformance SimpleItemRichView, MEMORY[0x277D63D00], MEMORY[0x277D63CF8]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t outlined destroy of ShowCallHistorySingleItemView(uint64_t a1)
{
  v2 = type metadata accessor for ShowCallHistorySingleItemView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of TupleView<(ModifiedContent<_ShapeView<Circle, HierarchicalShapeStyle>, _FrameLayout>, ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>)>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA06_ShapeD0VyAA6CircleVAA012HierarchicalG5StyleVGAA12_FrameLayoutVG_AEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA06_ShapeD0VyAA6CircleVAA012HierarchicalG5StyleVGAA12_FrameLayoutVG_AEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_10()
{
  v1 = (type metadata accessor for ShowCallHistorySingleItemView(0) - 8);
  v2 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));

  v3 = v1[7];
  v4 = type metadata accessor for ActionHandler();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);
  v5 = v1[8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12ScaledMetricVy12CoreGraphics7CGFloatVGMd, &_s7SwiftUI12ScaledMetricVy12CoreGraphics7CGFloatVGMR);
  v7 = *(*(v6 - 8) + 8);
  v7(v2 + v5, v6);
  v7(v2 + v1[9], v6);
  v8 = v2 + v1[10];

  v9 = type metadata accessor for SingleCallRecordModel(0);
  v10 = *(v9 + 44);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  v12 = *(*(v11 - 8) + 8);
  v12(&v8[v10], v11);
  v12(&v8[*(v9 + 48)], v11);

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in ShowCallHistorySingleItemView.body.getter(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ShowCallHistorySingleItemView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ZStack<TupleView<(ModifiedContent<_ShapeView<Circle, HierarchicalShapeStyle>, _FrameLayout>, ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>)>>, _TraitWritingModifier<ZIndexTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(ModifiedContent<_ShapeView<Circle, HierarchicalShapeStyle>, _FrameLayout>, ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>)>>, _TraitWritingModifier<ZIndexTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(ModifiedContent<_ShapeView<Circle, HierarchicalShapeStyle>, _FrameLayout>, ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>)>>, _TraitWritingModifier<ZIndexTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyACyAA06_ShapeG0VyAA6CircleVAA012HierarchicalH5StyleVGAA12_FrameLayoutVG_ACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGAA06_TraitqR0VyAA06ZIndextP0VGGMd, &_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyACyAA06_ShapeG0VyAA6CircleVAA012HierarchicalH5StyleVGAA12_FrameLayoutVG_ACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGAA06_TraitqR0VyAA06ZIndextP0VGGMR);
    lazy protocol witness table accessor for type TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type ZStack<TupleView<(ModifiedContent<_ShapeView<Circle, HierarchicalShapeStyle>, _FrameLayout>, ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>)>> and conformance ZStack<A>, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAA06_ShapeE0VyAA6CircleVAA012HierarchicalH5StyleVGAA12_FrameLayoutVG_AGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGMd, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAA06_ShapeE0VyAA6CircleVAA012HierarchicalH5StyleVGAA12_FrameLayoutVG_AGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGMR, MEMORY[0x277CE11B0]);
    lazy protocol witness table accessor for type TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type _TraitWritingModifier<ZIndexTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA06ZIndexC3KeyVGMd, &_s7SwiftUI21_TraitWritingModifierVyAA06ZIndexC3KeyVGMR, MEMORY[0x277CE04A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(ModifiedContent<_ShapeView<Circle, HierarchicalShapeStyle>, _FrameLayout>, ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>)>>, _TraitWritingModifier<ZIndexTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t sub_25E57DBB8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyACyAA6ZStackVyAA05TupleE0VyACyAA06_ShapeE0VyAA6CircleVAA012HierarchicalM5StyleVGAA12_FrameLayoutVG_ACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGAA06_TraitvW0VyAA06ZIndexyU0VGG_Qo_AA08_PaddingR0VGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyACyAA6ZStackVyAA05TupleE0VyACyAA06_ShapeE0VyAA6CircleVAA012HierarchicalM5StyleVGAA12_FrameLayoutVG_ACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGAA06_TraitvW0VyAA06ZIndexyU0VGG_Qo_AA08_PaddingR0VGMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined copy of Text.Storage(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t outlined copy of ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>?(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
  }

  return result;
}

uint64_t outlined consume of ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>?(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Text, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Text, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Text, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA14_PaddingLayoutVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Text, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t type metadata accessor for ShowPlayVoicemailListView(uint64_t a1)
{
  result = type metadata singleton initialization cache for ShowPlayVoicemailListView;
  if (!type metadata singleton initialization cache for ShowPlayVoicemailListView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ShowPlayVoicemailListView.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for Context();
  _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_7(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68], MEMORY[0x277D63F58]);
  *a2 = EnvironmentObject.init()();
  a2[1] = v4;
  v5 = type metadata accessor for ShowPlayVoicemailListView(0);
  ActionHandler.init()();
  return outlined init with take of PlayVoicemailModel(a1, a2 + *(v5 + 24), type metadata accessor for PlayVoicemailModel);
}

uint64_t ShowPlayVoicemailListView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for RoundedCornerStyle();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UnevenRoundedRectangle();
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = (&v23 - v12);
  *a1 = static HorizontalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVy07SnippetB014ComponentStackVyAIyAA0D0PALE10separators_10isOverrideQr0K3Kit14SeparatorStyleO_SbtFQOyApLE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_A_tFQOy05PhonekB0010ListHeaderD0V_Qo__Qo__ApLE04lastl6BottomU0yQrAL0lm6BottomU0OFQOyAA7ForEachVySaySi6offset_A0_20SingleVoicemailModelV7elementtGSiAKyApLEAQ_ARQrAU_SbtFQOyA0_027ShowPlayVoicemailSingleItemD0V_Qo_A0_29CarPlayDisambiguationListItemVGG_Qo_tGGAA011_BackgroundS8ModifierVyAA010BackgroundS0VGG_A0_010ListBottomD0VtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVy07SnippetB014ComponentStackVyAIyAA0D0PALE10separators_10isOverrideQr0K3Kit14SeparatorStyleO_SbtFQOyApLE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_A_tFQOy05PhonekB0010ListHeaderD0V_Qo__Qo__ApLE04lastl6BottomU0yQrAL0lm6BottomU0OFQOyAA7ForEachVySaySi6offset_A0_20SingleVoicemailModelV7elementtGSiAKyApLEAQ_ARQrAU_SbtFQOyA0_027ShowPlayVoicemailSingleItemD0V_Qo_A0_29CarPlayDisambiguationListItemVGG_Qo_tGGAA011_BackgroundS8ModifierVyAA010BackgroundS0VGG_A0_010ListBottomD0VtGGMR);
  closure #1 in ShowPlayVoicemailListView.body.getter(v2, a1 + *(v14 + 44));
  LOBYTE(v2) = static Edge.Set.all.getter();
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACy07SnippetB014ComponentStackVyAGyAA0G0PAHE10separators_10isOverrideQr0H3Kit14SeparatorStyleO_SbtFQOyAlHE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AWtFQOy05PhonehB0010ListHeaderG0V_Qo__Qo__AlHE04lasti6BottomR0yQrAH0ij6BottomR0OFQOyAA7ForEachVySaySi6offset_AX20SingleVoicemailModelV7elementtGSiACyAlHEAM_ANQrAQ_SbtFQOyAX027ShowPlayVoicemailSingleItemG0V_Qo_AX021CarPlayDisambiguationY4ItemVGG_Qo_tGGAA011_BackgroundP8ModifierVyAA010BackgroundP0VGG_AX0y6BottomG0VtGGA25_GMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACy07SnippetB014ComponentStackVyAGyAA0G0PAHE10separators_10isOverrideQr0H3Kit14SeparatorStyleO_SbtFQOyAlHE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AWtFQOy05PhonehB0010ListHeaderG0V_Qo__Qo__AlHE04lasti6BottomR0yQrAH0ij6BottomR0OFQOyAA7ForEachVySaySi6offset_AX20SingleVoicemailModelV7elementtGSiACyAlHEAM_ANQrAQ_SbtFQOyAX027ShowPlayVoicemailSingleItemG0V_Qo_AX021CarPlayDisambiguationY4ItemVGG_Qo_tGGAA011_BackgroundP8ModifierVyAA010BackgroundP0VGG_AX0y6BottomG0VtGGA25_GMR) + 36)) = v2;
  (*(v5 + 104))(v7, *MEMORY[0x277CE0120], v4);
  (*(v5 + 16))(v13 + *(v8 + 20), v7, v4);
  v15 = MEMORY[0x25F8B6F50](0.0, 0.0, 20.0, 20.0);
  v17 = v16;
  v19 = v18;
  v21 = v20;
  (*(v5 + 8))(v7, v4);
  *v13 = v15;
  *(v13 + 1) = v17;
  *(v13 + 2) = v19;
  *(v13 + 3) = v21;
  outlined init with copy of PlayVoicemailModel(v13, v11, MEMORY[0x277CE0548]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyACy07SnippetB014ComponentStackVyAGyAA0G0PAHE10separators_10isOverrideQr0H3Kit14SeparatorStyleO_SbtFQOyAlHE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AWtFQOy05PhonehB0010ListHeaderG0V_Qo__Qo__AlHE04lasti6BottomR0yQrAH0ij6BottomR0OFQOyAA7ForEachVySaySi6offset_AX20SingleVoicemailModelV7elementtGSiACyAlHEAM_ANQrAQ_SbtFQOyAX027ShowPlayVoicemailSingleItemG0V_Qo_AX021CarPlayDisambiguationY4ItemVGG_Qo_tGGAA011_BackgroundP8ModifierVyAA010BackgroundP0VGG_AX0y6BottomG0VtGGA25_GAA41_ContainerRoundedRectangularShapeModifierVyAA22UnevenRoundedRectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyACy07SnippetB014ComponentStackVyAGyAA0G0PAHE10separators_10isOverrideQr0H3Kit14SeparatorStyleO_SbtFQOyAlHE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AWtFQOy05PhonehB0010ListHeaderG0V_Qo__Qo__AlHE04lasti6BottomR0yQrAH0ij6BottomR0OFQOyAA7ForEachVySaySi6offset_AX20SingleVoicemailModelV7elementtGSiACyAlHEAM_ANQrAQ_SbtFQOyAX027ShowPlayVoicemailSingleItemG0V_Qo_AX021CarPlayDisambiguationY4ItemVGG_Qo_tGGAA011_BackgroundP8ModifierVyAA010BackgroundP0VGG_AX0y6BottomG0VtGGA25_GAA41_ContainerRoundedRectangularShapeModifierVyAA22UnevenRoundedRectangleVGGMR);
  _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_7(&lazy protocol witness table cache variable for type UnevenRoundedRectangle and conformance UnevenRoundedRectangle, MEMORY[0x277CE0548], MEMORY[0x277CE0528]);
  _ContainerRoundedRectangularShapeModifier.init(shape:)();
  return _s7SwiftUI22UnevenRoundedRectangleVWOhTm_0(v13, MEMORY[0x277CE0548]);
}

uint64_t closure #1 in ShowPlayVoicemailListView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = type metadata accessor for ListBottomView(0);
  v4 = v3 - 8;
  v5 = MEMORY[0x28223BE20](v3);
  v32 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = (&v30 - v7);
  v9 = type metadata accessor for ShowPlayVoicemailListView(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07SnippetB014ComponentStackVyAA9TupleViewVyAA0I0PADE10separators_10isOverrideQr0E3Kit14SeparatorStyleO_SbtFQOyAjDE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AUtFQOy05PhoneeB0010ListHeaderI0V_Qo__Qo__AjDE04lastf6BottomQ0yQrAD0fg6BottomQ0OFQOyAA7ForEachVySaySi6offset_AV20SingleVoicemailModelV7elementtGSiACyAjDEAK_ALQrAO_SbtFQOyAV027ShowPlayVoicemailSingleItemI0V_Qo_AV021CarPlayDisambiguationX4ItemVGG_Qo_tGGAA011_BackgroundO8ModifierVyAA010BackgroundO0VGGMd, &_s7SwiftUI15ModifiedContentVy07SnippetB014ComponentStackVyAA9TupleViewVyAA0I0PADE10separators_10isOverrideQr0E3Kit14SeparatorStyleO_SbtFQOyAjDE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AUtFQOy05PhoneeB0010ListHeaderI0V_Qo__Qo__AjDE04lastf6BottomQ0yQrAD0fg6BottomQ0OFQOyAA7ForEachVySaySi6offset_AV20SingleVoicemailModelV7elementtGSiACyAjDEAK_ALQrAO_SbtFQOyAV027ShowPlayVoicemailSingleItemI0V_Qo_AV021CarPlayDisambiguationX4ItemVGG_Qo_tGGAA011_BackgroundO8ModifierVyAA010BackgroundO0VGGMR);
  v13 = v12 - 8;
  v14 = MEMORY[0x28223BE20](v12);
  v31 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v30 - v16;
  outlined init with copy of PlayVoicemailModel(a1, &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ShowPlayVoicemailListView);
  v18 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v19 = swift_allocObject();
  outlined init with take of PlayVoicemailModel(&v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for ShowPlayVoicemailListView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA0D0P07SnippetB0E10separators_10isOverrideQr0E3Kit14SeparatorStyleO_SbtFQOyAeFE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AQtFQOy05PhoneeB0010ListHeaderD0V_Qo__Qo__AeFE019lastComponentBottomM0yQrAF0w5StackxM0OFQOyAA7ForEachVySaySi6offset_AR20SingleVoicemailModelV7elementtGSiAA15ModifiedContentVyAeFEAG_AHQrAK_SbtFQOyAR027ShowPlayVoicemailSingleItemD0V_Qo_AR021CarPlayDisambiguationT4ItemVGG_Qo_tGMd, &_s7SwiftUI9TupleViewVyAA0D0P07SnippetB0E10separators_10isOverrideQr0E3Kit14SeparatorStyleO_SbtFQOyAeFE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AQtFQOy05PhoneeB0010ListHeaderD0V_Qo__Qo__AeFE019lastComponentBottomM0yQrAF0w5StackxM0OFQOyAA7ForEachVySaySi6offset_AR20SingleVoicemailModelV7elementtGSiAA15ModifiedContentVyAeFEAG_AHQrAK_SbtFQOyAR027ShowPlayVoicemailSingleItemD0V_Qo_AR021CarPlayDisambiguationT4ItemVGG_Qo_tGMR);
  lazy protocol witness table accessor for type TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(<<opaque return type of View.separators(_:isOverride:)>>.0, <<opaque return type of View.lastComponentBottomSpacing(_:)>>.0)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA0D0P07SnippetB0E10separators_10isOverrideQr0E3Kit14SeparatorStyleO_SbtFQOyAeFE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AQtFQOy05PhoneeB0010ListHeaderD0V_Qo__Qo__AeFE019lastComponentBottomM0yQrAF0w5StackxM0OFQOyAA7ForEachVySaySi6offset_AR20SingleVoicemailModelV7elementtGSiAA15ModifiedContentVyAeFEAG_AHQrAK_SbtFQOyAR027ShowPlayVoicemailSingleItemD0V_Qo_AR021CarPlayDisambiguationT4ItemVGG_Qo_tGMd, &_s7SwiftUI9TupleViewVyAA0D0P07SnippetB0E10separators_10isOverrideQr0E3Kit14SeparatorStyleO_SbtFQOyAeFE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AQtFQOy05PhoneeB0010ListHeaderD0V_Qo__Qo__AeFE019lastComponentBottomM0yQrAF0w5StackxM0OFQOyAA7ForEachVySaySi6offset_AR20SingleVoicemailModelV7elementtGSiAA15ModifiedContentVyAeFEAG_AHQrAK_SbtFQOyAR027ShowPlayVoicemailSingleItemD0V_Qo_AR021CarPlayDisambiguationT4ItemVGG_Qo_tGMR, MEMORY[0x277CE14C8]);
  ComponentStack.init(content:)();
  v17[*(v13 + 44)] = static Edge.Set.all.getter();
  type metadata accessor for PlayVoicemailModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  Loggable.wrappedValue.getter();
  v20 = v34;
  v21 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMR);
  v22 = CodableAceObject.wrappedValue.getter();
  type metadata accessor for Context();
  _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_7(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68], MEMORY[0x277D63F58]);
  *v8 = EnvironmentObject.init()();
  v8[1] = v23;
  ActionHandler.init()();
  v24 = (v8 + *(v4 + 32));
  *v24 = v20;
  v24[1] = v21;
  *(v8 + *(v4 + 36)) = v22;
  v25 = v31;
  sub_25E57F710(v17, v31);
  v26 = v32;
  outlined init with copy of PlayVoicemailModel(v8, v32, type metadata accessor for ListBottomView);
  v27 = v33;
  sub_25E57F710(v25, v33);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07SnippetB014ComponentStackVyAA9TupleViewVyAA0I0PADE10separators_10isOverrideQr0E3Kit14SeparatorStyleO_SbtFQOyAjDE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AUtFQOy05PhoneeB0010ListHeaderI0V_Qo__Qo__AjDE04lastf6BottomQ0yQrAD0fg6BottomQ0OFQOyAA7ForEachVySaySi6offset_AV20SingleVoicemailModelV7elementtGSiACyAjDEAK_ALQrAO_SbtFQOyAV027ShowPlayVoicemailSingleItemI0V_Qo_AV021CarPlayDisambiguationX4ItemVGG_Qo_tGGAA011_BackgroundO8ModifierVyAA010BackgroundO0VGG_AV0x6BottomI0VtMd, &_s7SwiftUI15ModifiedContentVy07SnippetB014ComponentStackVyAA9TupleViewVyAA0I0PADE10separators_10isOverrideQr0E3Kit14SeparatorStyleO_SbtFQOyAjDE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AUtFQOy05PhoneeB0010ListHeaderI0V_Qo__Qo__AjDE04lastf6BottomQ0yQrAD0fg6BottomQ0OFQOyAA7ForEachVySaySi6offset_AV20SingleVoicemailModelV7elementtGSiACyAjDEAK_ALQrAO_SbtFQOyAV027ShowPlayVoicemailSingleItemI0V_Qo_AV021CarPlayDisambiguationX4ItemVGG_Qo_tGGAA011_BackgroundO8ModifierVyAA010BackgroundO0VGG_AV0x6BottomI0VtMR);
  outlined init with copy of PlayVoicemailModel(v26, v27 + *(v28 + 48), type metadata accessor for ListBottomView);
  _s7SwiftUI22UnevenRoundedRectangleVWOhTm_0(v8, type metadata accessor for ListBottomView);
  sub_25E57F780(v17);
  _s7SwiftUI22UnevenRoundedRectangleVWOhTm_0(v26, type metadata accessor for ListBottomView);
  return sub_25E57F780(v25);
}

uint64_t closure #1 in closure #1 in ShowPlayVoicemailListView.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v54 = a1;
  v69 = a2;
  v3 = type metadata accessor for ComponentStackBottomSpacing();
  v67 = *(v3 - 8);
  v68 = v3;
  MEMORY[0x28223BE20](v3);
  v66 = v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ShowPlayVoicemailListView(0);
  v6 = v5 - 8;
  v58 = *(v5 - 8);
  v57 = *(v58 + 64);
  MEMORY[0x28223BE20](v5);
  v55 = v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySaySi6offset_012PhoneSnippetB020SingleVoicemailModelV7elementtGSiAA15ModifiedContentVyAA4ViewP0gB0E10separators_10isOverrideQr0G3Kit14SeparatorStyleO_SbtFQOyAE08ShowPlayih4ItemN0V_Qo_AE03Carv18DisambiguationListW0VGGMd, &_s7SwiftUI7ForEachVySaySi6offset_012PhoneSnippetB020SingleVoicemailModelV7elementtGSiAA15ModifiedContentVyAA4ViewP0gB0E10separators_10isOverrideQr0G3Kit14SeparatorStyleO_SbtFQOyAE08ShowPlayih4ItemN0V_Qo_AE03Carv18DisambiguationListW0VGGMR);
  v65 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v60 = v51 - v8;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E26lastComponentBottomSpacingyQrAD0f5StackgH0OFQOyAA7ForEachVySaySi6offset_05PhonedB020SingleVoicemailModelV7elementtGSiAA15ModifiedContentVyAcDE10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAK08ShowPlayon4ItemC0V_Qo_AK29CarPlayDisambiguationListItemVGG_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E26lastComponentBottomSpacingyQrAD0f5StackgH0OFQOyAA7ForEachVySaySi6offset_05PhonedB020SingleVoicemailModelV7elementtGSiAA15ModifiedContentVyAcDE10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAK08ShowPlayon4ItemC0V_Qo_AK29CarPlayDisambiguationListItemVGG_Qo_MR);
  v62 = *(v64 - 8);
  v9 = MEMORY[0x28223BE20](v64);
  v61 = v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v71 = v51 - v11;
  v53 = type metadata accessor for SeparatorStyle();
  v12 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v14 = v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOy05PhonedB0010ListHeaderC0V_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOy05PhonedB0010ListHeaderC0V_Qo_MR);
  v15 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v17 = v51 - v16;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAcDE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AOtFQOy05PhonedB0010ListHeaderC0V_Qo__Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAcDE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AOtFQOy05PhonedB0010ListHeaderC0V_Qo__Qo_MR);
  v72 = *(v59 - 8);
  v18 = MEMORY[0x28223BE20](v59);
  v56 = v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v70 = v51 - v20;
  v51[1] = a1 + *(v6 + 32);
  type metadata accessor for PlayVoicemailModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  v21 = Loggable.wrappedValue.getter();
  v24 = lazy protocol witness table accessor for type ListHeaderView and conformance ListHeaderView(v21, v22, v23);
  View.componentSpacing(top:bottom:)();

  v25 = v53;
  (*(v12 + 104))(v14, *MEMORY[0x277D62F28], v53);
  v73 = &type metadata for ListHeaderView;
  v74 = v24;
  swift_getOpaqueTypeConformance2();
  v26 = v52;
  View.separators(_:isOverride:)();
  (*(v12 + 8))(v14, v25);
  (*(v15 + 8))(v17, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySay05PhoneA2UI20SingleVoicemailModelVGGMd, &_s10SnippetKit8LoggableVySay05PhoneA2UI20SingleVoicemailModelVGGMR);
  Loggable.wrappedValue.getter();
  v27 = specialized _copySequenceToContiguousArray<A>(_:)(v73);

  v73 = v27;
  swift_getKeyPath();
  v28 = v55;
  outlined init with copy of PlayVoicemailModel(v54, v55, type metadata accessor for ShowPlayVoicemailListView);
  v29 = (*(v58 + 80) + 16) & ~*(v58 + 80);
  v30 = swift_allocObject();
  outlined init with take of PlayVoicemailModel(v28, v30 + v29, type metadata accessor for ShowPlayVoicemailListView);
  v31 = swift_allocObject();
  *(v31 + 16) = partial apply for closure #1 in closure #1 in closure #1 in ShowPlayVoicemailListView.body.getter;
  *(v31 + 24) = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySi6offset_14PhoneSnippetUI20SingleVoicemailModelV7elementtGMd, &_sSaySi6offset_14PhoneSnippetUI20SingleVoicemailModelV7elementtGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewP07SnippetB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOy05PhonefB0027ShowPlayVoicemailSingleItemE0V_Qo_AL03Caro18DisambiguationListR0VGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewP07SnippetB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOy05PhonefB0027ShowPlayVoicemailSingleItemE0V_Qo_AL03Caro18DisambiguationListR0VGMR);
  lazy protocol witness table accessor for type TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type [(offset: Int, element: SingleVoicemailModel)] and conformance [A], &_sSaySi6offset_14PhoneSnippetUI20SingleVoicemailModelV7elementtGMd, &_sSaySi6offset_14PhoneSnippetUI20SingleVoicemailModelV7elementtGMR, MEMORY[0x277D83980]);
  lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.separators(_:isOverride:)>>.0, CarPlayDisambiguationListItem> and conformance <> ModifiedContent<A, B>();
  v32 = v60;
  ForEach<>.init(_:id:content:)();
  v34 = v66;
  v33 = v67;
  v35 = v68;
  (*(v67 + 104))(v66, *MEMORY[0x277D63EC8], v68);
  lazy protocol witness table accessor for type ForEach<[(offset: Int, element: SingleVoicemailModel)], Int, ModifiedContent<<<opaque return type of View.separators(_:isOverride:)>>.0, CarPlayDisambiguationListItem>> and conformance <> ForEach<A, B, C>();
  v36 = v71;
  v37 = v63;
  View.lastComponentBottomSpacing(_:)();
  (*(v33 + 8))(v34, v35);
  (*(v65 + 8))(v32, v37);
  v38 = *(v72 + 16);
  v39 = v56;
  v40 = v59;
  v38(v56, v70, v59);
  v41 = v61;
  v42 = v62;
  v43 = *(v62 + 16);
  v44 = v36;
  v45 = v64;
  v43(v61, v44, v64);
  v46 = v69;
  v38(v69, v39, v40);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAcDE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AOtFQOy05PhonedB0010ListHeaderC0V_Qo__Qo__AcDE019lastComponentBottomL0yQrAD0v5StackwL0OFQOyAA7ForEachVySaySi6offset_AP20SingleVoicemailModelV7elementtGSiAA15ModifiedContentVyAcDEAE_AFQrAI_SbtFQOyAP027ShowPlayVoicemailSingleItemC0V_Qo_AP021CarPlayDisambiguationS4ItemVGG_Qo_tMd, &_s7SwiftUI4ViewP07SnippetB0E10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAcDE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AOtFQOy05PhonedB0010ListHeaderC0V_Qo__Qo__AcDE019lastComponentBottomL0yQrAD0v5StackwL0OFQOyAA7ForEachVySaySi6offset_AP20SingleVoicemailModelV7elementtGSiAA15ModifiedContentVyAcDEAE_AFQrAI_SbtFQOyAP027ShowPlayVoicemailSingleItemC0V_Qo_AP021CarPlayDisambiguationS4ItemVGG_Qo_tMR);
  v43(&v46[*(v47 + 48)], v41, v45);
  v48 = *(v42 + 8);
  v48(v71, v45);
  v49 = *(v72 + 8);
  v49(v70, v40);
  v48(v41, v45);
  return (v49)(v39, v40);
}

uint64_t closure #1 in closure #1 in closure #1 in ShowPlayVoicemailListView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, id *a3@<X2>, uint64_t a4@<X8>)
{
  v29 = a1;
  v30 = a4;
  v28 = type metadata accessor for SeparatorStyle();
  v6 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ShowPlayVoicemailSingleItemView(0);
  MEMORY[0x28223BE20](v9);
  v11 = (&v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOy05PhonedB0027ShowPlayVoicemailSingleItemC0V_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOy05PhonedB0027ShowPlayVoicemailSingleItemC0V_Qo_MR);
  v12 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v14 = &v27 - v13;
  outlined init with copy of PlayVoicemailModel(a2, v11 + *(v9 + 24), type metadata accessor for SingleVoicemailModel);
  type metadata accessor for Context();
  _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_7(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68], MEMORY[0x277D63F58]);
  *v11 = EnvironmentObject.init()();
  v11[1] = v15;
  ActionHandler.init()();
  if (*a3)
  {
    v16 = *a3;
    dispatch thunk of Context.currentIdiom.getter();
    v17 = VRXIdiom.isCarPlay.getter();

    v18 = MEMORY[0x277D62F38];
    if ((v17 & 1) == 0)
    {
      v18 = MEMORY[0x277D62F28];
    }

    v19 = v28;
    (*(v6 + 104))(v8, *v18, v28);
    _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_7(&lazy protocol witness table cache variable for type ShowPlayVoicemailSingleItemView and conformance ShowPlayVoicemailSingleItemView, type metadata accessor for ShowPlayVoicemailSingleItemView, &protocol conformance descriptor for ShowPlayVoicemailSingleItemView);
    View.separators(_:isOverride:)();
    (*(v6 + 8))(v8, v19);
    _s7SwiftUI22UnevenRoundedRectangleVWOhTm_0(v11, type metadata accessor for ShowPlayVoicemailSingleItemView);
    v20 = v29 == 0;
    v21 = EnvironmentObject.init()();
    v23 = v22;
    v24 = v30;
    (*(v12 + 32))(v30, v14, v27);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewP07SnippetB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOy05PhonefB0027ShowPlayVoicemailSingleItemE0V_Qo_AL03Caro18DisambiguationListR0VGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewP07SnippetB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOy05PhonefB0027ShowPlayVoicemailSingleItemE0V_Qo_AL03Caro18DisambiguationListR0VGMR);
    v26 = v24 + *(result + 36);
    *v26 = v21;
    *(v26 + 8) = v23;
    *(v26 + 16) = v20;
  }

  else
  {
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_25E57F190(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = type metadata accessor for ActionHandler();
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 20);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = type metadata accessor for PlayVoicemailModel(0);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 24);

      return v15(v16, a2, v14);
    }
  }
}

void *sub_25E57F2D4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v8 = type metadata accessor for ActionHandler();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for PlayVoicemailModel(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void type metadata completion function for ShowPlayVoicemailListView(uint64_t a1)
{
  type metadata accessor for EnvironmentObject<Context>(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ActionHandler();
    if (v2 <= 0x3F)
    {
      type metadata accessor for PlayVoicemailModel(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ComponentStack<TupleView<(<<opaque return type of View.separators(_:isOverride:)>>.0, <<opaque return type of View.lastComponentBottomSpacing(_:)>>.0)>>, _BackgroundStyleModifier<BackgroundStyle>>, ListBottomView)>>, _BackgroundStyleModifier<BackgroundStyle>>, _ContainerRoundedRectangularShapeModifier<UnevenRoundedRectangle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ComponentStack<TupleView<(<<opaque return type of View.separators(_:isOverride:)>>.0, <<opaque return type of View.lastComponentBottomSpacing(_:)>>.0)>>, _BackgroundStyleModifier<BackgroundStyle>>, ListBottomView)>>, _BackgroundStyleModifier<BackgroundStyle>>, _ContainerRoundedRectangularShapeModifier<UnevenRoundedRectangle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ComponentStack<TupleView<(<<opaque return type of View.separators(_:isOverride:)>>.0, <<opaque return type of View.lastComponentBottomSpacing(_:)>>.0)>>, _BackgroundStyleModifier<BackgroundStyle>>, ListBottomView)>>, _BackgroundStyleModifier<BackgroundStyle>>, _ContainerRoundedRectangularShapeModifier<UnevenRoundedRectangle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyACy07SnippetB014ComponentStackVyAGyAA0G0PAHE10separators_10isOverrideQr0H3Kit14SeparatorStyleO_SbtFQOyAlHE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AWtFQOy05PhonehB0010ListHeaderG0V_Qo__Qo__AlHE04lasti6BottomR0yQrAH0ij6BottomR0OFQOyAA7ForEachVySaySi6offset_AX20SingleVoicemailModelV7elementtGSiACyAlHEAM_ANQrAQ_SbtFQOyAX027ShowPlayVoicemailSingleItemG0V_Qo_AX021CarPlayDisambiguationY4ItemVGG_Qo_tGGAA011_BackgroundP8ModifierVyAA010BackgroundP0VGG_AX0y6BottomG0VtGGA25_GAA41_ContainerRoundedRectangularShapeModifierVyAA22UnevenRoundedRectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyACy07SnippetB014ComponentStackVyAGyAA0G0PAHE10separators_10isOverrideQr0H3Kit14SeparatorStyleO_SbtFQOyAlHE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AWtFQOy05PhonehB0010ListHeaderG0V_Qo__Qo__AlHE04lasti6BottomR0yQrAH0ij6BottomR0OFQOyAA7ForEachVySaySi6offset_AX20SingleVoicemailModelV7elementtGSiACyAlHEAM_ANQrAQ_SbtFQOyAX027ShowPlayVoicemailSingleItemG0V_Qo_AX021CarPlayDisambiguationY4ItemVGG_Qo_tGGAA011_BackgroundP8ModifierVyAA010BackgroundP0VGG_AX0y6BottomG0VtGGA25_GAA41_ContainerRoundedRectangularShapeModifierVyAA22UnevenRoundedRectangleVGGMR);
    lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(ModifiedContent<ComponentStack<TupleView<(<<opaque return type of View.separators(_:isOverride:)>>.0, <<opaque return type of View.lastComponentBottomSpacing(_:)>>.0)>>, _BackgroundStyleModifier<BackgroundStyle>>, ListBottomView)>>, _BackgroundStyleModifier<BackgroundStyle>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type _ContainerRoundedRectangularShapeModifier<UnevenRoundedRectangle> and conformance _ContainerRoundedRectangularShapeModifier<A>, &_s7SwiftUI41_ContainerRoundedRectangularShapeModifierVyAA06UnevenD9RectangleVGMd, &_s7SwiftUI41_ContainerRoundedRectangularShapeModifierVyAA06UnevenD9RectangleVGMR, MEMORY[0x277CE08C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ComponentStack<TupleView<(<<opaque return type of View.separators(_:isOverride:)>>.0, <<opaque return type of View.lastComponentBottomSpacing(_:)>>.0)>>, _BackgroundStyleModifier<BackgroundStyle>>, ListBottomView)>>, _BackgroundStyleModifier<BackgroundStyle>>, _ContainerRoundedRectangularShapeModifier<UnevenRoundedRectangle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(ModifiedContent<ComponentStack<TupleView<(<<opaque return type of View.separators(_:isOverride:)>>.0, <<opaque return type of View.lastComponentBottomSpacing(_:)>>.0)>>, _BackgroundStyleModifier<BackgroundStyle>>, ListBottomView)>>, _BackgroundStyleModifier<BackgroundStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ModifiedContent<ComponentStack<TupleView<(<<opaque return type of View.separators(_:isOverride:)>>.0, <<opaque return type of View.lastComponentBottomSpacing(_:)>>.0)>>, _BackgroundStyleModifier<BackgroundStyle>>, ListBottomView)>>, _BackgroundStyleModifier<BackgroundStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ModifiedContent<ComponentStack<TupleView<(<<opaque return type of View.separators(_:isOverride:)>>.0, <<opaque return type of View.lastComponentBottomSpacing(_:)>>.0)>>, _BackgroundStyleModifier<BackgroundStyle>>, ListBottomView)>>, _BackgroundStyleModifier<BackgroundStyle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACy07SnippetB014ComponentStackVyAGyAA0G0PAHE10separators_10isOverrideQr0H3Kit14SeparatorStyleO_SbtFQOyAlHE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AWtFQOy05PhonehB0010ListHeaderG0V_Qo__Qo__AlHE04lasti6BottomR0yQrAH0ij6BottomR0OFQOyAA7ForEachVySaySi6offset_AX20SingleVoicemailModelV7elementtGSiACyAlHEAM_ANQrAQ_SbtFQOyAX027ShowPlayVoicemailSingleItemG0V_Qo_AX021CarPlayDisambiguationY4ItemVGG_Qo_tGGAA011_BackgroundP8ModifierVyAA010BackgroundP0VGG_AX0y6BottomG0VtGGA25_GMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACy07SnippetB014ComponentStackVyAGyAA0G0PAHE10separators_10isOverrideQr0H3Kit14SeparatorStyleO_SbtFQOyAlHE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AWtFQOy05PhonehB0010ListHeaderG0V_Qo__Qo__AlHE04lasti6BottomR0yQrAH0ij6BottomR0OFQOyAA7ForEachVySaySi6offset_AX20SingleVoicemailModelV7elementtGSiACyAlHEAM_ANQrAQ_SbtFQOyAX027ShowPlayVoicemailSingleItemG0V_Qo_AX021CarPlayDisambiguationY4ItemVGG_Qo_tGGAA011_BackgroundP8ModifierVyAA010BackgroundP0VGG_AX0y6BottomG0VtGGA25_GMR);
    lazy protocol witness table accessor for type TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(ModifiedContent<ComponentStack<TupleView<(<<opaque return type of View.separators(_:isOverride:)>>.0, <<opaque return type of View.lastComponentBottomSpacing(_:)>>.0)>>, _BackgroundStyleModifier<BackgroundStyle>>, ListBottomView)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVy07SnippetB014ComponentStackVyAEyAA0E0PAHE10separators_10isOverrideQr0H3Kit14SeparatorStyleO_SbtFQOyAlHE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AWtFQOy05PhonehB0010ListHeaderE0V_Qo__Qo__AlHE04lasti6BottomR0yQrAH0ij6BottomR0OFQOyAA7ForEachVySaySi6offset_AX20SingleVoicemailModelV7elementtGSiAGyAlHEAM_ANQrAQ_SbtFQOyAX027ShowPlayVoicemailSingleItemE0V_Qo_AX021CarPlayDisambiguationY4ItemVGG_Qo_tGGAA011_BackgroundP8ModifierVyAA010BackgroundP0VGG_AX0y6BottomE0VtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVy07SnippetB014ComponentStackVyAEyAA0E0PAHE10separators_10isOverrideQr0H3Kit14SeparatorStyleO_SbtFQOyAlHE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AWtFQOy05PhonehB0010ListHeaderE0V_Qo__Qo__AlHE04lasti6BottomR0yQrAH0ij6BottomR0OFQOyAA7ForEachVySaySi6offset_AX20SingleVoicemailModelV7elementtGSiAGyAlHEAM_ANQrAQ_SbtFQOyAX027ShowPlayVoicemailSingleItemE0V_Qo_AX021CarPlayDisambiguationY4ItemVGG_Qo_tGGAA011_BackgroundP8ModifierVyAA010BackgroundP0VGG_AX0y6BottomE0VtGGMR, MEMORY[0x277CE11A0]);
    lazy protocol witness table accessor for type TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type _BackgroundStyleModifier<BackgroundStyle> and conformance _BackgroundStyleModifier<A>, &_s7SwiftUI24_BackgroundStyleModifierVyAA0cD0VGMd, &_s7SwiftUI24_BackgroundStyleModifierVyAA0cD0VGMR, MEMORY[0x277CE0720]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ModifiedContent<ComponentStack<TupleView<(<<opaque return type of View.separators(_:isOverride:)>>.0, <<opaque return type of View.lastComponentBottomSpacing(_:)>>.0)>>, _BackgroundStyleModifier<BackgroundStyle>>, ListBottomView)>>, _BackgroundStyleModifier<BackgroundStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined init with take of PlayVoicemailModel(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t partial apply for closure #1 in closure #1 in ShowPlayVoicemailListView.body.getter@<X0>(char *a1@<X8>)
{
  v3 = *(type metadata accessor for ShowPlayVoicemailListView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return closure #1 in closure #1 in ShowPlayVoicemailListView.body.getter(v4, a1);
}

uint64_t sub_25E57F710(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07SnippetB014ComponentStackVyAA9TupleViewVyAA0I0PADE10separators_10isOverrideQr0E3Kit14SeparatorStyleO_SbtFQOyAjDE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AUtFQOy05PhoneeB0010ListHeaderI0V_Qo__Qo__AjDE04lastf6BottomQ0yQrAD0fg6BottomQ0OFQOyAA7ForEachVySaySi6offset_AV20SingleVoicemailModelV7elementtGSiACyAjDEAK_ALQrAO_SbtFQOyAV027ShowPlayVoicemailSingleItemI0V_Qo_AV021CarPlayDisambiguationX4ItemVGG_Qo_tGGAA011_BackgroundO8ModifierVyAA010BackgroundO0VGGMd, &_s7SwiftUI15ModifiedContentVy07SnippetB014ComponentStackVyAA9TupleViewVyAA0I0PADE10separators_10isOverrideQr0E3Kit14SeparatorStyleO_SbtFQOyAjDE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AUtFQOy05PhoneeB0010ListHeaderI0V_Qo__Qo__AjDE04lastf6BottomQ0yQrAD0fg6BottomQ0OFQOyAA7ForEachVySaySi6offset_AV20SingleVoicemailModelV7elementtGSiACyAjDEAK_ALQrAO_SbtFQOyAV027ShowPlayVoicemailSingleItemI0V_Qo_AV021CarPlayDisambiguationX4ItemVGG_Qo_tGGAA011_BackgroundO8ModifierVyAA010BackgroundO0VGGMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25E57F780(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07SnippetB014ComponentStackVyAA9TupleViewVyAA0I0PADE10separators_10isOverrideQr0E3Kit14SeparatorStyleO_SbtFQOyAjDE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AUtFQOy05PhoneeB0010ListHeaderI0V_Qo__Qo__AjDE04lastf6BottomQ0yQrAD0fg6BottomQ0OFQOyAA7ForEachVySaySi6offset_AV20SingleVoicemailModelV7elementtGSiACyAjDEAK_ALQrAO_SbtFQOyAV027ShowPlayVoicemailSingleItemI0V_Qo_AV021CarPlayDisambiguationX4ItemVGG_Qo_tGGAA011_BackgroundO8ModifierVyAA010BackgroundO0VGGMd, &_s7SwiftUI15ModifiedContentVy07SnippetB014ComponentStackVyAA9TupleViewVyAA0I0PADE10separators_10isOverrideQr0E3Kit14SeparatorStyleO_SbtFQOyAjDE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AUtFQOy05PhoneeB0010ListHeaderI0V_Qo__Qo__AjDE04lastf6BottomQ0yQrAD0fg6BottomQ0OFQOyAA7ForEachVySaySi6offset_AV20SingleVoicemailModelV7elementtGSiACyAjDEAK_ALQrAO_SbtFQOyAV027ShowPlayVoicemailSingleItemI0V_Qo_AV021CarPlayDisambiguationX4ItemVGG_Qo_tGGAA011_BackgroundO8ModifierVyAA010BackgroundO0VGGMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *specialized _copySequenceToContiguousArray<A>(_:)(uint64_t a1)
{
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_14PhoneSnippetUI21SingleCallRecordModelV7elementtMd, &_sSi6offset_14PhoneSnippetUI21SingleCallRecordModelV7elementtMR);
  v2 = MEMORY[0x28223BE20](v42);
  v41 = (&v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x28223BE20](v2);
  v7 = &v37 - v6;
  v8 = MEMORY[0x277D84F90];
  v40 = *(a1 + 16);
  if (v40)
  {
    v43 = v5;
    v9 = *(v5 + 80);
    v37 = v9;
    v38 = (v9 + 32) & ~v9;
    v10 = MEMORY[0x277D84F90] + v38;
    v11 = 0;
    v12 = 0;
    v13 = *(type metadata accessor for SingleCallRecordModel(0) - 8);
    v14 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v39 = *(v13 + 72);
    v15 = v8;
    while (1)
    {
      v16 = v41;
      v17 = *(v42 + 48);
      *v41 = v11;
      outlined init with copy of PlayVoicemailModel(v14, v16 + v17, type metadata accessor for SingleCallRecordModel);
      v18 = v7;
      result = outlined init with take of ModifiedContent<<<opaque return type of View.fontWidth(_:)>>.0, _OpacityEffect>(v16, v7, &_sSi6offset_14PhoneSnippetUI21SingleCallRecordModelV7elementtMd, &_sSi6offset_14PhoneSnippetUI21SingleCallRecordModelV7elementtMR);
      if (v12)
      {
        v44 = v15;
      }

      else
      {
        v19 = v15[3];
        if (((v19 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_34;
        }

        v20 = v19 & 0xFFFFFFFFFFFFFFFELL;
        if (v20 <= 1)
        {
          v21 = 1;
        }

        else
        {
          v21 = v20;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi6offset_14PhoneSnippetUI21SingleCallRecordModelV7elementtGMd, &_ss23_ContiguousArrayStorageCySi6offset_14PhoneSnippetUI21SingleCallRecordModelV7elementtGMR);
        v22 = *(v43 + 72);
        v23 = v38;
        v44 = swift_allocObject();
        result = _swift_stdlib_malloc_size(v44);
        if (!v22)
        {
          goto LABEL_35;
        }

        v24 = result - v23;
        if ((result - v23) == 0x8000000000000000 && v22 == -1)
        {
          goto LABEL_36;
        }

        v26 = v24 / v22;
        v27 = v44;
        *(v44 + 2) = v21;
        v27[3] = 2 * (v24 / v22);
        v28 = v27 + v23;
        v29 = v15[3] >> 1;
        v30 = v29 * v22;
        if (v15[2])
        {
          if (v27 < v15 || v28 >= v15 + v38 + v30)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v27 != v15)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v15[2] = 0;
        }

        v10 = &v28[v30];
        v12 = (v26 & 0x7FFFFFFFFFFFFFFFLL) - v29;
      }

      v32 = v43;
      v7 = v18;
      v33 = __OFSUB__(v12--, 1);
      if (v33)
      {
        break;
      }

      ++v11;
      result = outlined init with take of ModifiedContent<<<opaque return type of View.fontWidth(_:)>>.0, _OpacityEffect>(v18, v10, &_sSi6offset_14PhoneSnippetUI21SingleCallRecordModelV7elementtMd, &_sSi6offset_14PhoneSnippetUI21SingleCallRecordModelV7elementtMR);
      v10 += *(v32 + 72);
      v14 += v39;
      v8 = v44;
      v15 = v44;
      if (v40 == v11)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v12 = 0;
LABEL_29:
  v34 = v8[3];
  if (v34 < 2)
  {
    return v8;
  }

  v35 = v34 >> 1;
  v33 = __OFSUB__(v35, v12);
  v36 = v35 - v12;
  if (!v33)
  {
    v8[2] = v36;
    return v8;
  }

LABEL_37:
  __break(1u);
  return result;
}

{
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_14PhoneSnippetUI20SingleVoicemailModelV7elementtMd, &_sSi6offset_14PhoneSnippetUI20SingleVoicemailModelV7elementtMR);
  v2 = MEMORY[0x28223BE20](v42);
  v41 = (&v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x28223BE20](v2);
  v7 = &v37 - v6;
  v8 = MEMORY[0x277D84F90];
  v40 = *(a1 + 16);
  if (v40)
  {
    v43 = v5;
    v9 = *(v5 + 80);
    v37 = v9;
    v38 = (v9 + 32) & ~v9;
    v10 = MEMORY[0x277D84F90] + v38;
    v11 = 0;
    v12 = 0;
    v13 = *(type metadata accessor for SingleVoicemailModel(0) - 8);
    v14 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v39 = *(v13 + 72);
    v15 = v8;
    while (1)
    {
      v16 = v41;
      v17 = *(v42 + 48);
      *v41 = v11;
      outlined init with copy of PlayVoicemailModel(v14, v16 + v17, type metadata accessor for SingleVoicemailModel);
      v18 = v7;
      result = outlined init with take of ModifiedContent<<<opaque return type of View.fontWidth(_:)>>.0, _OpacityEffect>(v16, v7, &_sSi6offset_14PhoneSnippetUI20SingleVoicemailModelV7elementtMd, &_sSi6offset_14PhoneSnippetUI20SingleVoicemailModelV7elementtMR);
      if (v12)
      {
        v44 = v15;
      }

      else
      {
        v19 = v15[3];
        if (((v19 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_34;
        }

        v20 = v19 & 0xFFFFFFFFFFFFFFFELL;
        if (v20 <= 1)
        {
          v21 = 1;
        }

        else
        {
          v21 = v20;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi6offset_14PhoneSnippetUI20SingleVoicemailModelV7elementtGMd, &_ss23_ContiguousArrayStorageCySi6offset_14PhoneSnippetUI20SingleVoicemailModelV7elementtGMR);
        v22 = *(v43 + 72);
        v23 = v38;
        v44 = swift_allocObject();
        result = _swift_stdlib_malloc_size(v44);
        if (!v22)
        {
          goto LABEL_35;
        }

        v24 = result - v23;
        if ((result - v23) == 0x8000000000000000 && v22 == -1)
        {
          goto LABEL_36;
        }

        v26 = v24 / v22;
        v27 = v44;
        *(v44 + 2) = v21;
        v27[3] = 2 * (v24 / v22);
        v28 = v27 + v23;
        v29 = v15[3] >> 1;
        v30 = v29 * v22;
        if (v15[2])
        {
          if (v27 < v15 || v28 >= v15 + v38 + v30)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v27 != v15)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v15[2] = 0;
        }

        v10 = &v28[v30];
        v12 = (v26 & 0x7FFFFFFFFFFFFFFFLL) - v29;
      }

      v32 = v43;
      v7 = v18;
      v33 = __OFSUB__(v12--, 1);
      if (v33)
      {
        break;
      }

      ++v11;
      result = outlined init with take of ModifiedContent<<<opaque return type of View.fontWidth(_:)>>.0, _OpacityEffect>(v18, v10, &_sSi6offset_14PhoneSnippetUI20SingleVoicemailModelV7elementtMd, &_sSi6offset_14PhoneSnippetUI20SingleVoicemailModelV7elementtMR);
      v10 += *(v32 + 72);
      v14 += v39;
      v8 = v44;
      v15 = v44;
      if (v40 == v11)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v12 = 0;
LABEL_29:
  v34 = v8[3];
  if (v34 < 2)
  {
    return v8;
  }

  v35 = v34 >> 1;
  v33 = __OFSUB__(v35, v12);
  v36 = v35 - v12;
  if (!v33)
  {
    v8[2] = v36;
    return v8;
  }

LABEL_37:
  __break(1u);
  return result;
}

uint64_t objectdestroyTm_11()
{
  v1 = (type metadata accessor for ShowPlayVoicemailListView(0) - 8);
  v2 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));

  v3 = v1[7];
  v4 = type metadata accessor for ActionHandler();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);
  v5 = v2 + v1[8];

  v6 = type metadata accessor for PlayVoicemailModel(0);
  v7 = v6[5];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySay05PhoneA2UI20SingleVoicemailModelVGGMd, &_s10SnippetKit8LoggableVySay05PhoneA2UI20SingleVoicemailModelVGGMR);
  (*(*(v8 - 8) + 8))(&v5[v7], v8);
  v9 = v6[6];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  v11 = *(*(v10 - 8) + 8);
  v11(&v5[v9], v10);
  v11(&v5[v6[7]], v10);
  v12 = v6[8];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMR);
  (*(*(v13 - 8) + 8))(&v5[v12], v13);

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in ShowPlayVoicemailListView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(type metadata accessor for ShowPlayVoicemailListView(0) - 8);
  v8 = (v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80)));

  return closure #1 in closure #1 in closure #1 in ShowPlayVoicemailListView.body.getter(a1, a2, v8, a3);
}

uint64_t sub_25E580130()
{

  return swift_deallocObject();
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@unowned Int, @in_guaranteed SingleVoicemailModel) -> (@out ModifiedContent<<<opaque return type of View.separators(_:isOverride:)>>.0, CarPlayDisambiguationListItem>)(char *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_14PhoneSnippetUI20SingleVoicemailModelV7elementtMd, &_sSi6offset_14PhoneSnippetUI20SingleVoicemailModelV7elementtMR);
  return v3(v4, &a1[*(v5 + 48)]);
}

uint64_t _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_7(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s7SwiftUI22UnevenRoundedRectangleVWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with copy of PlayVoicemailModel(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t ShowPlayVoicemailSingleItemView.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for Context();
  _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_5(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68], MEMORY[0x277D63F58]);
  *a2 = EnvironmentObject.init()();
  a2[1] = v4;
  v5 = type metadata accessor for ShowPlayVoicemailSingleItemView(0);
  ActionHandler.init()();
  return outlined init with take of SingleVoicemailModel(a1, a2 + *(v5 + 24), type metadata accessor for SingleVoicemailModel);
}

uint64_t type metadata accessor for ShowPlayVoicemailSingleItemView(uint64_t a1)
{
  result = type metadata singleton initialization cache for ShowPlayVoicemailSingleItemView;
  if (!type metadata singleton initialization cache for ShowPlayVoicemailSingleItemView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ShowPlayVoicemailSingleItemView.body.getter()
{
  v1 = type metadata accessor for ShowPlayVoicemailSingleItemView(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = type metadata accessor for SimpleItemRichView();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  ShowPlayVoicemailSingleItemView.getSimpleItemRichView()(v7);
  outlined init with copy of SingleVoicemailModel(v0, &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ShowPlayVoicemailSingleItemView);
  v8 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v9 = swift_allocObject();
  outlined init with take of SingleVoicemailModel(&v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for ShowPlayVoicemailSingleItemView);
  _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_5(&lazy protocol witness table cache variable for type SimpleItemRichView and conformance SimpleItemRichView, MEMORY[0x277D63D00], MEMORY[0x277D63CF8]);
  View.componentTapped(isNavigation:perform:)();

  return (*(v5 + 8))(v7, v4);
}

uint64_t ShowPlayVoicemailSingleItemView.getSimpleItemRichView()@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v2 = type metadata accessor for Image.ResizingMode();
  v36 = *(v2 - 8);
  v37 = v2;
  MEMORY[0x28223BE20](v2);
  v35 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA6VStackVyAEyAA4TextV_AItGG_AA0E0P07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAA15ModifiedContentVyASyASyASyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_OpacityEffectVGAA12_FrameLayoutVGAA08_PaddingY0VG_Qo_tGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6VStackVyAEyAA4TextV_AItGG_AA0E0P07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAA15ModifiedContentVyASyASyASyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_OpacityEffectVGAA12_FrameLayoutVGAA08_PaddingY0VG_Qo_tGGMR);
  MEMORY[0x28223BE20](v39);
  v5 = &v35 - v4;
  v6 = type metadata accessor for ShowPlayVoicemailSingleItemView(0);
  v7 = (v1 + *(v6 + 24));
  v8 = v7[3];
  v41 = v7[2];
  v42 = v8;
  lazy protocol witness table accessor for type String and conformance String(v6, v9, v10);

  v11 = Text.init<A>(_:)();
  v13 = v12;
  v15 = v14;
  LODWORD(v41) = static HierarchicalShapeStyle.primary.getter();
  v16 = Text.foregroundStyle<A>(_:)();
  v18 = v17;
  LOBYTE(v8) = v19;
  v38 = v20;
  outlined consume of Text.Storage(v11, v13, v15 & 1);

  v70 = MEMORY[0x277CE0BD0];
  v71 = MEMORY[0x277D638F0];
  v21 = swift_allocObject();
  v69 = v21;
  *(v21 + 16) = v16;
  *(v21 + 24) = v18;
  *(v21 + 32) = v8 & 1;
  *(v21 + 40) = v38;
  v68 = 0;
  v66 = 0u;
  v67 = 0u;
  v23 = v7[4];
  v22 = v7[5];
  v24 = v7;
  v64 = MEMORY[0x277D837D0];
  v65 = MEMORY[0x277D63F88];
  v62 = v23;
  v63 = v22;

  *v5 = static VerticalAlignment.center.getter();
  *(v5 + 1) = 0x4000000000000000;
  v5[16] = 0;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA6VStackVyAIyAA4TextV_AMtGG_AA0D0P07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAA15ModifiedContentVyAWyAWyAWyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_OpacityEffectVGAA06_FrameG0VGAA08_PaddingG0VG_Qo_tGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA6VStackVyAIyAA4TextV_AMtGG_AA0D0P07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAA15ModifiedContentVyAWyAWyAWyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_OpacityEffectVGAA06_FrameG0VGAA08_PaddingG0VG_Qo_tGGMR);
  closure #1 in ShowPlayVoicemailSingleItemView.getDateAndInformationView.getter(&v5[*(v25 + 44)]);
  lazy protocol witness table accessor for type TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(VStack<TupleView<(Text, Text)>>, <<opaque return type of View.componentTapped(isNavigation:perform:)>>.0)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6VStackVyAEyAA4TextV_AItGG_AA0E0P07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAA15ModifiedContentVyASyASyASyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_OpacityEffectVGAA12_FrameLayoutVGAA08_PaddingY0VG_Qo_tGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6VStackVyAEyAA4TextV_AItGG_AA0E0P07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAA15ModifiedContentVyASyASyASyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_OpacityEffectVGAA12_FrameLayoutVGAA08_PaddingY0VG_Qo_tGGMR, MEMORY[0x277CE1140]);
  v26 = View.eraseToAnyView()();
  sub_25E582158(v5);
  v27 = MEMORY[0x277CE11D0];
  v28 = MEMORY[0x277D63A58];
  v60 = MEMORY[0x277CE11D0];
  v61 = MEMORY[0x277D63A58];
  v59 = v26;
  v58 = 0;
  v56 = 0u;
  v57 = 0u;
  v55 = 0;
  v53 = 0u;
  v54 = 0u;
  v52 = 0;
  v50 = 0u;
  v51 = 0u;
  v49 = 0;
  v47 = 0u;
  v48 = 0u;
  if (*(v24 + 80) == 1)
  {
    v29 = ShowPlayVoicemailSingleItemView.readStatusIcon.getter();
  }

  else
  {
    Image.init(systemName:)();
    v31 = v35;
    v30 = v36;
    v32 = v37;
    (*(v36 + 104))(v35, *MEMORY[0x277CE0FE8], v37);
    v33 = Image.resizable(capInsets:resizingMode:)();

    (*(v30 + 8))(v31, v32);
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v41 = v33;
    v42 = v72;
    v43 = v73;
    v44 = v74;
    LOBYTE(v45) = v75;
    v46 = v76;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA12_FrameLayoutVGMR);
    lazy protocol witness table accessor for type ModifiedContent<Image, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    v29 = View.eraseToAnyView()();
  }

  v44 = v27;
  v45 = v28;
  v41 = v29;
  return SimpleItemRichView.init(text1:text2:text3:text4:text5:text6:text7:text8:thumbnail:)();
}

uint64_t closure #1 in ShowPlayVoicemailSingleItemView.body.getter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI15InteractionTypeOSgMd, &_s9SnippetUI15InteractionTypeOSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v42 = v40 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit14ActionPropertyVSgMd, "6~");
  MEMORY[0x28223BE20](v4 - 8);
  v41 = v40 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI21StandardActionHandlerVSgMd, &_s9SnippetUI21StandardActionHandlerVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v45 = v40 - v7;
  v8 = type metadata accessor for ShowPlayVoicemailSingleItemView(0);
  MEMORY[0x28223BE20](v8);
  v10 = v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ActionProperty();
  v43 = *(v11 - 8);
  v44 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10SnippetKit24ActionElementConvertible_pGMd, "6~");
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_25E59F720;
  v15 = type metadata accessor for Command();
  v16 = MEMORY[0x277D63778];
  *(v14 + 56) = v15;
  *(v14 + 64) = v16;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v14 + 32));
  type metadata accessor for SingleVoicemailModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  *boxed_opaque_existential_1 = CodableAceObject.wrappedValue.getter();
  *(boxed_opaque_existential_1 + 8) = 0;
  (*(*(v15 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D63750], v15);
  ActionProperty.init(_:)();
  if (one-time initialization token for phoneSnippetUI != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static Logger.phoneSnippetUI);
  outlined init with copy of SingleVoicemailModel(a1, v10, type metadata accessor for ShowPlayVoicemailSingleItemView);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v46 = v22;
    *v21 = 136315138;
    v23 = &v10[*(v8 + 24)];
    v24 = v10;
    v25 = *(v23 + 2);
    v26 = *(v23 + 3);
    v40[1] = v8;

    outlined destroy of ShowPlayVoicemailSingleItemView(v24);
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v46);

    *(v21 + 4) = v27;
    _os_log_impl(&dword_25E523000, v19, v20, "#ShowPlayVoicemailSingleItemView tapped, performing direct action for %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x25F8B8670](v22, -1, -1);
    MEMORY[0x25F8B8670](v21, -1, -1);
  }

  else
  {

    outlined destroy of ShowPlayVoicemailSingleItemView(v10);
  }

  v28 = v45;
  ActionHandler.wrappedValue.getter();
  v29 = type metadata accessor for StandardActionHandler();
  v30 = *(v29 - 8);
  if ((*(v30 + 48))(v28, 1, v29) == 1)
  {
    (*(v43 + 8))(v13, v44);
    return outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v45, &_s9SnippetUI21StandardActionHandlerVSgMd, &_s9SnippetUI21StandardActionHandlerVSgMR);
  }

  else
  {
    v32 = v43;
    v33 = v41;
    v34 = v13;
    v35 = v13;
    v36 = v44;
    (*(v43 + 16))(v41, v34, v44);
    (*(v32 + 56))(v33, 0, 1, v36);
    v37 = type metadata accessor for InteractionType();
    v38 = v42;
    (*(*(v37 - 8) + 56))(v42, 1, 1, v37);
    v39 = v45;
    StandardActionHandler.perform(_:interactionType:)();
    outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v38, &_s9SnippetUI15InteractionTypeOSgMd, &_s9SnippetUI15InteractionTypeOSgMR);
    outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v33, &_s10SnippetKit14ActionPropertyVSgMd, "6~");
    (*(v32 + 8))(v35, v36);
    return (*(v30 + 8))(v39, v29);
  }
}

uint64_t outlined init with copy of SingleVoicemailModel(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of SingleVoicemailModel(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t ShowPlayVoicemailSingleItemView.readStatusIcon.getter()
{
  v0 = type metadata accessor for Image.ResizingMode();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  Image.init(systemName:)();
  (*(v1 + 104))(v3, *MEMORY[0x277CE0FE8], v0);
  v4 = Image.resizable(capInsets:resizingMode:)();

  (*(v1 + 8))(v3, v0);
  v5 = static Color.blue.getter();
  KeyPath = swift_getKeyPath();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v10 = v4;
  *(&v10 + 1) = KeyPath;
  *&v11 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGMR);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
  v7 = View.eraseToAnyView()();
  v15[2] = v12;
  v15[3] = v13;
  v16 = v14;
  v15[0] = v10;
  v15[1] = v11;
  outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v15, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGMR);
  return v7;
}

uint64_t closure #1 in ShowPlayVoicemailSingleItemView.getDateAndInformationView.getter@<X0>(uint64_t a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI21StandardActionHandlerVSgMd, &_s9SnippetUI21StandardActionHandlerVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v24[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAA15ModifiedContentVyAIyAIyAIyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_OpacityEffectVGAA12_FrameLayoutVGAA08_PaddingU0VG_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAA15ModifiedContentVyAIyAIyAIyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_OpacityEffectVGAA12_FrameLayoutVGAA08_PaddingU0VG_Qo_MR);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v27 = &v24[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v11 = &v24[-v10];
  v26 = static HorizontalAlignment.trailing.getter();
  LOBYTE(v32[0]) = 1;
  closure #1 in closure #1 in ShowPlayVoicemailSingleItemView.getDateAndInformationView.getter(v29);
  *&v28[7] = v29[0];
  *&v28[23] = v29[1];
  *&v28[39] = v29[2];
  *&v28[55] = v29[3];
  v25 = LOBYTE(v32[0]);
  type metadata accessor for ShowPlayVoicemailSingleItemView(0);
  type metadata accessor for SingleVoicemailModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  v12 = CodableAceObject.wrappedValue.getter();
  ActionHandler.wrappedValue.getter();
  static ContactInformationImage.getImage(directInvocation:actionHandler:)(v12, v5, v11);

  outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v5, &_s9SnippetUI21StandardActionHandlerVSgMd, &_s9SnippetUI21StandardActionHandlerVSgMR);
  v13 = *(v7 + 16);
  v14 = v27;
  v13(v27, v11, v6);
  v15 = v26;
  v30[0] = v26;
  v30[1] = 0;
  LOBYTE(v5) = v25;
  v31[0] = v25;
  *&v31[1] = *v28;
  *&v31[17] = *&v28[16];
  *&v31[33] = *&v28[32];
  *&v31[49] = *&v28[48];
  v16 = *&v28[63];
  *&v31[64] = *&v28[63];
  v17 = *v31;
  *a2 = v26;
  *(a2 + 16) = v17;
  v18 = *&v31[16];
  v19 = *&v31[32];
  v20 = *&v31[48];
  *(a2 + 80) = v16;
  *(a2 + 48) = v19;
  *(a2 + 64) = v20;
  *(a2 + 32) = v18;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextV_AGtGG_AA0E0P07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAA15ModifiedContentVyAQyAQyAQyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_OpacityEffectVGAA12_FrameLayoutVGAA08_PaddingX0VG_Qo_tMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextV_AGtGG_AA0E0P07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAA15ModifiedContentVyAQyAQyAQyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_OpacityEffectVGAA12_FrameLayoutVGAA08_PaddingX0VG_Qo_tMR);
  v13((a2 + *(v21 + 48)), v14, v6);
  outlined init with copy of VStack<TupleView<(Text, Text)>>(v30, v32);
  v22 = *(v7 + 8);
  v22(v11, v6);
  v22(v14, v6);
  v32[0] = v15;
  v32[1] = 0;
  v33 = v5;
  v35 = *&v28[16];
  v36 = *&v28[32];
  *v37 = *&v28[48];
  *&v37[15] = *&v28[63];
  v34 = *v28;
  return outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v32, &_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextV_AGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextV_AGtGGMR);
}

uint64_t closure #1 in closure #1 in ShowPlayVoicemailSingleItemView.getDateAndInformationView.getter@<X0>(uint64_t a2@<X8>)
{
  v3 = type metadata accessor for ShowPlayVoicemailSingleItemView(0);
  lazy protocol witness table accessor for type String and conformance String(v3, v4, v5);

  v6 = Text.init<A>(_:)();
  v24 = v7;
  v25 = v6;
  v23 = v8;
  v26 = v9;

  v10 = Text.init<A>(_:)();
  v12 = v11;
  v14 = v13;
  static Color.gray.getter();
  v15 = Text.foregroundStyle<A>(_:)();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  outlined consume of Text.Storage(v10, v12, v14 & 1);

  *a2 = v25;
  *(a2 + 8) = v24;
  *(a2 + 16) = v23 & 1;
  *(a2 + 24) = v26;
  *(a2 + 32) = v15;
  *(a2 + 40) = v17;
  *(a2 + 48) = v19 & 1;
  *(a2 + 56) = v21;
  outlined copy of Text.Storage(v25, v24, v23 & 1);

  outlined copy of Text.Storage(v15, v17, v19 & 1);

  outlined consume of Text.Storage(v15, v17, v19 & 1);

  outlined consume of Text.Storage(v25, v24, v23 & 1);
}

uint64_t protocol witness for View.body.getter in conformance ShowPlayVoicemailSingleItemView(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  v4 = type metadata accessor for SimpleItemRichView();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  ShowPlayVoicemailSingleItemView.getSimpleItemRichView()(v7);
  outlined init with copy of SingleVoicemailModel(v1, &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ShowPlayVoicemailSingleItemView);
  v8 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v9 = swift_allocObject();
  outlined init with take of SingleVoicemailModel(&v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for ShowPlayVoicemailSingleItemView);
  _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_5(&lazy protocol witness table cache variable for type SimpleItemRichView and conformance SimpleItemRichView, MEMORY[0x277D63D00], MEMORY[0x277D63CF8]);
  View.componentTapped(isNavigation:perform:)();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_25E581BBC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = type metadata accessor for ActionHandler();
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 20);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = type metadata accessor for SingleVoicemailModel(0);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 24);

      return v15(v16, a2, v14);
    }
  }
}

void *sub_25E581D00(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v8 = type metadata accessor for ActionHandler();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for SingleVoicemailModel(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void type metadata completion function for ShowPlayVoicemailSingleItemView(uint64_t a1)
{
  type metadata accessor for EnvironmentObject<Context>(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ActionHandler();
    if (v2 <= 0x3F)
    {
      type metadata accessor for SingleVoicemailModel(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t objectdestroyTm_12()
{
  v1 = (type metadata accessor for ShowPlayVoicemailSingleItemView(0) - 8);
  v2 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));

  v3 = v1[7];
  v4 = type metadata accessor for ActionHandler();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);
  v5 = v2 + v1[8];

  v6 = type metadata accessor for SingleVoicemailModel(0);
  v7 = *(v6 + 40);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  v9 = *(*(v8 - 8) + 8);
  v9(&v5[v7], v8);
  v9(&v5[*(v6 + 44)], v8);

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in ShowPlayVoicemailSingleItemView.body.getter()
{
  v1 = *(type metadata accessor for ShowPlayVoicemailSingleItemView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return closure #1 in ShowPlayVoicemailSingleItemView.body.getter(v2);
}

uint64_t outlined destroy of ShowPlayVoicemailSingleItemView(uint64_t a1)
{
  v2 = type metadata accessor for ShowPlayVoicemailSingleItemView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25E582114()
{
  outlined consume of Text.Storage(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_25E582158(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA6VStackVyAEyAA4TextV_AItGG_AA0E0P07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAA15ModifiedContentVyASyASyASyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_OpacityEffectVGAA12_FrameLayoutVGAA08_PaddingY0VG_Qo_tGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6VStackVyAEyAA4TextV_AItGG_AA0E0P07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAA15ModifiedContentVyASyASyASyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_OpacityEffectVGAA12_FrameLayoutVGAA08_PaddingY0VG_Qo_tGGMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Image, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Image, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Image, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA12_FrameLayoutVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Image, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGMR);
    lazy protocol witness table accessor for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined init with copy of VStack<TupleView<(Text, Text)>>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextV_AGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextV_AGtGGMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SingleCallRecordModel.openContactDirectInvocation.getter()
{
  type metadata accessor for SingleCallRecordModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  return CodableAceObject.wrappedValue.getter();
}

uint64_t type metadata accessor for SingleCallRecordModel(uint64_t a1)
{
  result = type metadata singleton initialization cache for SingleCallRecordModel;
  if (!type metadata singleton initialization cache for SingleCallRecordModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SingleCallRecordModel.directInvocation.getter()
{
  type metadata accessor for SingleCallRecordModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  return CodableAceObject.wrappedValue.getter();
}

uint64_t SingleCallRecordModel.responseViewId.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SingleCallRecordModel.responseViewId.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t SingleCallRecordModel.displayName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t SingleCallRecordModel.displayName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t SingleCallRecordModel.displayCallDetail.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t SingleCallRecordModel.displayCallDetail.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t SingleCallRecordModel.displayDateTime.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t SingleCallRecordModel.displayDateTime.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t SingleCallRecordModel.currentCallType.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t SingleCallRecordModel.currentCallType.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t SingleCallRecordModel.contactIds.setter(uint64_t a1)
{

  *(v1 + 80) = a1;
  return result;
}

uint64_t property wrapper backing initializer of SingleCallRecordModel.directInvocation(uint64_t a1)
{
  type metadata accessor for SAIntentGroupRunSiriKitExecutor();

  return CodableAceObject.init(wrappedValue:)();
}

uint64_t key path getter for SingleCallRecordModel.directInvocation : SingleCallRecordModel@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SingleCallRecordModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  result = CodableAceObject.wrappedValue.getter();
  *a1 = result;
  return result;
}

uint64_t key path setter for SingleCallRecordModel.directInvocation : SingleCallRecordModel(void **a1)
{
  v1 = *a1;
  type metadata accessor for SingleCallRecordModel(0);
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  return CodableAceObject.wrappedValue.setter();
}

uint64_t SingleCallRecordModel.directInvocation.setter(uint64_t a1)
{
  type metadata accessor for SingleCallRecordModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  return CodableAceObject.wrappedValue.setter();
}

void (*SingleCallRecordModel.directInvocation.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for SingleCallRecordModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  *(v3 + 32) = CodableAceObject.wrappedValue.modify();
  return EmergencyCountdownModel.callAction.modify;
}

uint64_t key path getter for SingleCallRecordModel.openContactDirectInvocation : SingleCallRecordModel@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SingleCallRecordModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  result = CodableAceObject.wrappedValue.getter();
  *a1 = result;
  return result;
}

uint64_t key path setter for SingleCallRecordModel.openContactDirectInvocation : SingleCallRecordModel(void **a1)
{
  v1 = *a1;
  type metadata accessor for SingleCallRecordModel(0);
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  return CodableAceObject.wrappedValue.setter();
}

uint64_t SingleCallRecordModel.openContactDirectInvocation.setter(uint64_t a1)
{
  type metadata accessor for SingleCallRecordModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  return CodableAceObject.wrappedValue.setter();
}

void (*SingleCallRecordModel.openContactDirectInvocation.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for SingleCallRecordModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  *(v3 + 32) = CodableAceObject.wrappedValue.modify();
  return EmergencyCountdownModel.sashTitle.modify;
}

void SingleCallRecordModel.init(displayName:displayCallDetail:displayDateTime:currentCallType:contactIds:directInvocation:openContactDirectInvocation:isVideoCall:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, void *a11, uint64_t a12, char a13)
{
  *a9 = 0xD000000000000010;
  *(a9 + 8) = 0x800000025E5A61D0;
  *(a9 + 16) = a1;
  *(a9 + 24) = a2;
  *(a9 + 32) = a3;
  *(a9 + 40) = a4;
  *(a9 + 48) = a5;
  *(a9 + 56) = a6;
  type metadata accessor for SingleCallRecordModel(0);
  type metadata accessor for SAIntentGroupRunSiriKitExecutor();
  v16 = a11;
  CodableAceObject.init(wrappedValue:)();
  *(a9 + 72) = a8;
  *(a9 + 80) = a10;
  *(a9 + 64) = a7;
  CodableAceObject.init(wrappedValue:)();

  *(a9 + 88) = a13;
}

unint64_t SingleCallRecordModel.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x65736E6F70736572;
    v6 = 0xD000000000000011;
    if (a1 != 2)
    {
      v6 = 0x4479616C70736964;
    }

    if (a1)
    {
      v5 = 0x4E79616C70736964;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x436F656469567369;
    v2 = 0xD000000000000010;
    if (a1 != 7)
    {
      v2 = 0xD00000000000001BLL;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x43746E6572727563;
    if (a1 != 4)
    {
      v3 = 0x49746361746E6F63;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SingleCallRecordModel.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized SingleCallRecordModel.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SingleCallRecordModel.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = lazy protocol witness table accessor for type SingleCallRecordModel.CodingKeys and conformance SingleCallRecordModel.CodingKeys(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SingleCallRecordModel.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = lazy protocol witness table accessor for type SingleCallRecordModel.CodingKeys and conformance SingleCallRecordModel.CodingKeys(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t SingleCallRecordModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14PhoneSnippetUI21SingleCallRecordModelV10CodingKeys33_9B318A0F8ED9229EA189013663DA78E8LLOGMd, &_ss22KeyedEncodingContainerVy14PhoneSnippetUI21SingleCallRecordModelV10CodingKeys33_9B318A0F8ED9229EA189013663DA78E8LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13[-v7];
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SingleCallRecordModel.CodingKeys and conformance SingleCallRecordModel.CodingKeys(v9, v10, v11);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v14) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v14) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v14 = *(v3 + 80);
    v13[15] = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A], MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v14) = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    type metadata accessor for SingleCallRecordModel(0);
    LOBYTE(v14) = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
    lazy protocol witness table accessor for type CodableAceObject<SAIntentGroupRunSiriKitExecutor> and conformance CodableAceObject<A>(&lazy protocol witness table cache variable for type CodableAceObject<SAIntentGroupRunSiriKitExecutor> and conformance CodableAceObject<A>, MEMORY[0x277D63228]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v14) = 8;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t lazy protocol witness table accessor for type SingleCallRecordModel.CodingKeys and conformance SingleCallRecordModel.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type SingleCallRecordModel.CodingKeys and conformance SingleCallRecordModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SingleCallRecordModel.CodingKeys and conformance SingleCallRecordModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SingleCallRecordModel.CodingKeys and conformance SingleCallRecordModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SingleCallRecordModel.CodingKeys and conformance SingleCallRecordModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SingleCallRecordModel.CodingKeys and conformance SingleCallRecordModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SingleCallRecordModel.CodingKeys and conformance SingleCallRecordModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SingleCallRecordModel.CodingKeys and conformance SingleCallRecordModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SingleCallRecordModel.CodingKeys and conformance SingleCallRecordModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SingleCallRecordModel.CodingKeys and conformance SingleCallRecordModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SingleCallRecordModel.CodingKeys and conformance SingleCallRecordModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SingleCallRecordModel.CodingKeys and conformance SingleCallRecordModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SingleCallRecordModel.CodingKeys and conformance SingleCallRecordModel.CodingKeys);
  }

  return result;
}

uint64_t SingleCallRecordModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  v46 = *(v48 - 8);
  v4 = MEMORY[0x28223BE20](v48);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v40 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14PhoneSnippetUI21SingleCallRecordModelV10CodingKeys33_9B318A0F8ED9229EA189013663DA78E8LLOGMd, &_ss22KeyedDecodingContainerVy14PhoneSnippetUI21SingleCallRecordModelV10CodingKeys33_9B318A0F8ED9229EA189013663DA78E8LLOGMR);
  v43 = *(v9 - 8);
  v44 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v40 - v10;
  v47 = type metadata accessor for SingleCallRecordModel(0);
  MEMORY[0x28223BE20](v47);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[3];
  v49 = a1;
  v15 = __swift_project_boxed_opaque_existential_1(a1, v14);
  lazy protocol witness table accessor for type SingleCallRecordModel.CodingKeys and conformance SingleCallRecordModel.CodingKeys(v15, v16, v17);
  v45 = v11;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    v50 = v2;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
  }

  else
  {
    v40 = v6;
    v41 = v8;
    v18 = v43;
    v19 = v44;
    LOBYTE(v52) = 0;
    v20 = v45;
    *v13 = KeyedDecodingContainer.decode(_:forKey:)();
    *(v13 + 1) = v27;
    LOBYTE(v52) = 1;
    *(v13 + 2) = KeyedDecodingContainer.decode(_:forKey:)();
    *(v13 + 3) = v28;
    LOBYTE(v52) = 2;
    *(v13 + 4) = KeyedDecodingContainer.decode(_:forKey:)();
    *(v13 + 5) = v29;
    LOBYTE(v52) = 3;
    *(v13 + 6) = KeyedDecodingContainer.decode(_:forKey:)();
    *(v13 + 7) = v30;
    LOBYTE(v52) = 4;
    v31 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v50 = 0;
    *(v13 + 8) = v31;
    *(v13 + 9) = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    v51 = 5;
    lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A], MEMORY[0x277D83808], MEMORY[0x277D83978]);
    v33 = v50;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    if (v33)
    {
      v50 = v33;
      (*(v18 + 8))(v20, v19);
      v24 = 0;
      v25 = 0;
      v21 = 1;
      v22 = 1;
      v23 = 1;
    }

    else
    {
      *(v13 + 10) = v52;
      LOBYTE(v52) = 6;
      v34 = KeyedDecodingContainer.decode(_:forKey:)();
      v50 = 0;
      v13[88] = v34 & 1;
      LOBYTE(v52) = 7;
      lazy protocol witness table accessor for type CodableAceObject<SAIntentGroupRunSiriKitExecutor> and conformance CodableAceObject<A>(&lazy protocol witness table cache variable for type CodableAceObject<SAIntentGroupRunSiriKitExecutor> and conformance CodableAceObject<A>, MEMORY[0x277D63230]);
      v35 = v41;
      v36 = v50;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v50 = v36;
      if (v36)
      {
        (*(v18 + 8))(v20, v19);
        v25 = 0;
        v21 = 1;
        v22 = 1;
        v23 = 1;
        v24 = 1;
      }

      else
      {
        v37 = &v13[*(v47 + 44)];
        v41 = *(v46 + 32);
        v41(v37, v35, v48);
        LOBYTE(v52) = 8;
        v38 = v40;
        v39 = v50;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v50 = v39;
        if (!v39)
        {
          (*(v18 + 8))(v45, v19);
          v41(&v13[*(v47 + 48)], v38, v48);
          outlined init with copy of SingleCallRecordModel(v13, v42);
          __swift_destroy_boxed_opaque_existential_0(v49);
          return outlined destroy of SingleCallRecordModel(v13);
        }

        (*(v18 + 8))(v45, v19);
        v21 = 1;
        v22 = 1;
        v23 = 1;
        v24 = 1;
        v25 = 1;
      }
    }
  }

  __swift_destroy_boxed_opaque_existential_0(v49);

  if (!v21)
  {
    if (!v22)
    {
      goto LABEL_6;
    }

LABEL_14:

    if (!v23)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (v22)
  {
    goto LABEL_14;
  }

LABEL_6:
  if (v23)
  {
LABEL_7:
  }

LABEL_8:

  if (v24)
  {
  }

  if (v25)
  {
    return (*(v46 + 8))(&v13[*(v47 + 44)], v48);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [String] and conformance <A> [A](unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with copy of SingleCallRecordModel(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SingleCallRecordModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of SingleCallRecordModel(uint64_t a1)
{
  v2 = type metadata accessor for SingleCallRecordModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t instantiation function for generic protocol witness table for SingleCallRecordModel(uint64_t a1)
{
  result = lazy protocol witness table accessor for type SingleCallRecordModel and conformance SingleCallRecordModel(&lazy protocol witness table cache variable for type SingleCallRecordModel and conformance SingleCallRecordModel, &protocol conformance descriptor for SingleCallRecordModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type SingleCallRecordModel and conformance SingleCallRecordModel(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SingleCallRecordModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25E583A74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_25E583B44(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for SingleCallRecordModel(uint64_t a1)
{
  type metadata accessor for String?(319, &lazy cache variable for type metadata for String?, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for String?(319, &lazy cache variable for type metadata for [String], MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for CodableAceObject<SAIntentGroupRunSiriKitExecutor>(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for String?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D837D0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for SingleCallRecordModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SingleCallRecordModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t specialized SingleCallRecordModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65736E6F70736572 && a2 == 0xEE00644977656956;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x800000025E5A6C20 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4479616C70736964 && a2 == 0xEF656D6954657461 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x43746E6572727563 && a2 == 0xEF657079546C6C61 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x49746361746E6F63 && a2 == 0xEA00000000007364 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x436F656469567369 && a2 == 0xEB000000006C6C61 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000010 && 0x800000025E5A6C40 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD00000000000001BLL && 0x800000025E5A6C60 == a2)
  {

    return 8;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t SingleResultCallHistoryModel.responseViewId.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SingleResultCallHistoryModel.responseViewId.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t SingleResultCallHistoryModel.displayName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t SingleResultCallHistoryModel.displayName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t SingleResultCallHistoryModel.displayCallDetail.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t SingleResultCallHistoryModel.displayCallDetail.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t SingleResultCallHistoryModel.displayDateTime.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t SingleResultCallHistoryModel.displayDateTime.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t SingleResultCallHistoryModel.contactIds.setter(uint64_t a1)
{

  *(v1 + 64) = a1;
  return result;
}

uint64_t SingleResultCallHistoryModel.searchCallHistoryBinaryButtonModel.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SingleResultCallHistoryModel(0) + 36);

  return outlined init with copy of SearchCallHistoryBinaryButtonModel?(v3, a1);
}

uint64_t type metadata accessor for SingleResultCallHistoryModel(uint64_t a1)
{
  result = type metadata singleton initialization cache for SingleResultCallHistoryModel;
  if (!type metadata singleton initialization cache for SingleResultCallHistoryModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with copy of SearchCallHistoryBinaryButtonModel?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14PhoneSnippetUI34SearchCallHistoryBinaryButtonModelVSgMd, &_s14PhoneSnippetUI34SearchCallHistoryBinaryButtonModelVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SingleResultCallHistoryModel.init(displayName:displayCallDetail:displayDateTime:contactIds:searchCallHistoryBinaryButtonModel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  *a9 = 0xD000000000000017;
  a9[1] = 0x800000025E5A61F0;
  a9[2] = a1;
  a9[3] = a2;
  a9[4] = a3;
  a9[5] = a4;
  a9[6] = a5;
  a9[7] = a6;
  a9[8] = a7;
  v10 = a9 + *(type metadata accessor for SingleResultCallHistoryModel(0) + 36);

  return outlined init with take of SearchCallHistoryBinaryButtonModel?(a8, v10);
}

uint64_t outlined init with take of SearchCallHistoryBinaryButtonModel?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14PhoneSnippetUI34SearchCallHistoryBinaryButtonModelVSgMd, &_s14PhoneSnippetUI34SearchCallHistoryBinaryButtonModelVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance SingleResultCallHistoryModel.CodingKeys()
{
  v1 = *v0;
  v2 = 0x65736E6F70736572;
  v3 = 0x4479616C70736964;
  v4 = 0x49746361746E6F63;
  if (v1 != 4)
  {
    v4 = 0xD000000000000022;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x4E79616C70736964;
  if (v1 != 1)
  {
    v5 = 0xD000000000000011;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SingleResultCallHistoryModel.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized SingleResultCallHistoryModel.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SingleResultCallHistoryModel.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = lazy protocol witness table accessor for type SingleResultCallHistoryModel.CodingKeys and conformance SingleResultCallHistoryModel.CodingKeys(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SingleResultCallHistoryModel.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = lazy protocol witness table accessor for type SingleResultCallHistoryModel.CodingKeys and conformance SingleResultCallHistoryModel.CodingKeys(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t SingleResultCallHistoryModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14PhoneSnippetUI28SingleResultCallHistoryModelV10CodingKeys33_7454338012B02FB19199CEC6EFF57102LLOGMd, &_ss22KeyedEncodingContainerVy14PhoneSnippetUI28SingleResultCallHistoryModelV10CodingKeys33_7454338012B02FB19199CEC6EFF57102LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13[-v7];
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SingleResultCallHistoryModel.CodingKeys and conformance SingleResultCallHistoryModel.CodingKeys(v9, v10, v11);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v18 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v17 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v16 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v14 = *(v3 + 64);
    v13[15] = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A], MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    type metadata accessor for SingleResultCallHistoryModel(0);
    v13[14] = 5;
    type metadata accessor for SearchCallHistoryBinaryButtonModel(0);
    lazy protocol witness table accessor for type SearchCallHistoryBinaryButtonModel and conformance SearchCallHistoryBinaryButtonModel(&lazy protocol witness table cache variable for type SearchCallHistoryBinaryButtonModel and conformance SearchCallHistoryBinaryButtonModel, type metadata accessor for SearchCallHistoryBinaryButtonModel, &protocol conformance descriptor for SearchCallHistoryBinaryButtonModel);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t lazy protocol witness table accessor for type SingleResultCallHistoryModel.CodingKeys and conformance SingleResultCallHistoryModel.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type SingleResultCallHistoryModel.CodingKeys and conformance SingleResultCallHistoryModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SingleResultCallHistoryModel.CodingKeys and conformance SingleResultCallHistoryModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SingleResultCallHistoryModel.CodingKeys and conformance SingleResultCallHistoryModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SingleResultCallHistoryModel.CodingKeys and conformance SingleResultCallHistoryModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SingleResultCallHistoryModel.CodingKeys and conformance SingleResultCallHistoryModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SingleResultCallHistoryModel.CodingKeys and conformance SingleResultCallHistoryModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SingleResultCallHistoryModel.CodingKeys and conformance SingleResultCallHistoryModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SingleResultCallHistoryModel.CodingKeys and conformance SingleResultCallHistoryModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SingleResultCallHistoryModel.CodingKeys and conformance SingleResultCallHistoryModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SingleResultCallHistoryModel.CodingKeys and conformance SingleResultCallHistoryModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SingleResultCallHistoryModel.CodingKeys and conformance SingleResultCallHistoryModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SingleResultCallHistoryModel.CodingKeys and conformance SingleResultCallHistoryModel.CodingKeys);
  }

  return result;
}

uint64_t SingleResultCallHistoryModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14PhoneSnippetUI34SearchCallHistoryBinaryButtonModelVSgMd, &_s14PhoneSnippetUI34SearchCallHistoryBinaryButtonModelVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v25 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14PhoneSnippetUI28SingleResultCallHistoryModelV10CodingKeys33_7454338012B02FB19199CEC6EFF57102LLOGMd, &_ss22KeyedDecodingContainerVy14PhoneSnippetUI28SingleResultCallHistoryModelV10CodingKeys33_7454338012B02FB19199CEC6EFF57102LLOGMR);
  v28 = *(v7 - 8);
  v29 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v25 - v8;
  v10 = type metadata accessor for SingleResultCallHistoryModel(0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = a1[3];
  v31 = a1;
  v14 = __swift_project_boxed_opaque_existential_1(a1, v13);
  lazy protocol witness table accessor for type SingleResultCallHistoryModel.CodingKeys and conformance SingleResultCallHistoryModel.CodingKeys(v14, v15, v16);
  v30 = v9;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(v31);
  }

  else
  {
    v26 = v6;
    v18 = v28;
    v17 = v29;
    v38 = 0;
    *v12 = KeyedDecodingContainer.decode(_:forKey:)();
    v12[1] = v19;
    v37 = 1;
    v12[2] = KeyedDecodingContainer.decode(_:forKey:)();
    v12[3] = v20;
    v36 = 2;
    v12[4] = KeyedDecodingContainer.decode(_:forKey:)();
    v12[5] = v21;
    v35 = 3;
    v12[6] = KeyedDecodingContainer.decode(_:forKey:)();
    v12[7] = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    v34 = 4;
    lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A], MEMORY[0x277D83808], MEMORY[0x277D83978]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v12[8] = v32;
    type metadata accessor for SearchCallHistoryBinaryButtonModel(0);
    v33 = 5;
    lazy protocol witness table accessor for type SearchCallHistoryBinaryButtonModel and conformance SearchCallHistoryBinaryButtonModel(&lazy protocol witness table cache variable for type SearchCallHistoryBinaryButtonModel and conformance SearchCallHistoryBinaryButtonModel, type metadata accessor for SearchCallHistoryBinaryButtonModel, &protocol conformance descriptor for SearchCallHistoryBinaryButtonModel);
    v23 = v26;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v18 + 8))(v30, v17);
    outlined init with take of SearchCallHistoryBinaryButtonModel?(v23, v12 + *(v10 + 36));
    outlined init with copy of SingleResultCallHistoryModel(v12, v27);
    __swift_destroy_boxed_opaque_existential_0(v31);
    return outlined destroy of SingleResultCallHistoryModel(v12);
  }
}

uint64_t outlined init with copy of SingleResultCallHistoryModel(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SingleResultCallHistoryModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of SingleResultCallHistoryModel(uint64_t a1)
{
  v2 = type metadata accessor for SingleResultCallHistoryModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t instantiation function for generic protocol witness table for SingleResultCallHistoryModel(uint64_t a1)
{
  result = lazy protocol witness table accessor for type SearchCallHistoryBinaryButtonModel and conformance SearchCallHistoryBinaryButtonModel(&lazy protocol witness table cache variable for type SingleResultCallHistoryModel and conformance SingleResultCallHistoryModel, type metadata accessor for SingleResultCallHistoryModel, &protocol conformance descriptor for SingleResultCallHistoryModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type SearchCallHistoryBinaryButtonModel and conformance SearchCallHistoryBinaryButtonModel(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25E5852D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14PhoneSnippetUI34SearchCallHistoryBinaryButtonModelVSgMd, &_s14PhoneSnippetUI34SearchCallHistoryBinaryButtonModelVSgMR);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_25E5853A0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14PhoneSnippetUI34SearchCallHistoryBinaryButtonModelVSgMd, &_s14PhoneSnippetUI34SearchCallHistoryBinaryButtonModelVSgMR);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for SingleResultCallHistoryModel(uint64_t a1)
{
  type metadata accessor for [String]();
  if (v1 <= 0x3F)
  {
    type metadata accessor for SearchCallHistoryBinaryButtonModel?(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for [String]()
{
  if (!lazy cache variable for type metadata for [String])
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [String]);
    }
  }
}

void type metadata accessor for SearchCallHistoryBinaryButtonModel?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for SearchCallHistoryBinaryButtonModel?)
  {
    type metadata accessor for SearchCallHistoryBinaryButtonModel(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for SearchCallHistoryBinaryButtonModel?);
    }
  }
}

uint64_t specialized SingleResultCallHistoryModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65736E6F70736572 && a2 == 0xEE00644977656956;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x800000025E5A6C20 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4479616C70736964 && a2 == 0xEF656D6954657461 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x49746361746E6F63 && a2 == 0xEA00000000007364 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000022 && 0x800000025E5A6C80 == a2)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t type metadata accessor for SingleResultCallHistoryView(uint64_t a1)
{
  result = type metadata singleton initialization cache for SingleResultCallHistoryView;
  if (!type metadata singleton initialization cache for SingleResultCallHistoryView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SingleResultCallHistoryView.init(singleResultCallHistoryModel:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for Context();
  _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_8(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68], MEMORY[0x277D63F58]);
  *a2 = EnvironmentObject.init()();
  a2[1] = v4;
  v5 = type metadata accessor for SingleResultCallHistoryView(0);
  ActionHandler.init()();
  return _s14PhoneSnippetUI28SingleResultCallHistoryModelVWObTm_0(a1, a2 + *(v5 + 24), type metadata accessor for SingleResultCallHistoryModel);
}

uint64_t SingleResultCallHistoryView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for SingleResultCallHistoryView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  outlined init with copy of SingleResultCallHistoryModel(v1, &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SingleResultCallHistoryView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  _s14PhoneSnippetUI28SingleResultCallHistoryModelVWObTm_0(&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for SingleResultCallHistoryView);
  type metadata accessor for Context();
  _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_8(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68], MEMORY[0x277D63F58]);
  v8 = EnvironmentObject.init()();
  v10 = v9;
  result = static Edge.Set.all.getter();
  *a1 = v8;
  *(a1 + 8) = v10;
  *(a1 + 16) = partial apply for closure #1 in SingleResultCallHistoryView.body.getter;
  *(a1 + 24) = v7;
  *(a1 + 32) = result;
  return result;
}

uint64_t closure #1 in SingleResultCallHistoryView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v78 = a2;
  v77 = type metadata accessor for SearchCallHistoryBinaryButtonView(0);
  v76 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v62 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14PhoneSnippetUI34SearchCallHistoryBinaryButtonModelVSgMd, &_s14PhoneSnippetUI34SearchCallHistoryBinaryButtonModelVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v73 = &v60 - v5;
  v72 = type metadata accessor for SearchCallHistoryBinaryButtonModel(0);
  v71 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v61 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14PhoneSnippetUI33SearchCallHistoryBinaryButtonViewVSgMd, &_s14PhoneSnippetUI33SearchCallHistoryBinaryButtonViewVSgMR);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v75 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v74 = &v60 - v10;
  v68 = type metadata accessor for SeparatorStyle();
  v11 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for SummaryItemStandardView();
  v66 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v15 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD019SummaryItemStandardC0V_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD019SummaryItemStandardC0V_Qo_MR);
  v64 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v17 = &v60 - v16;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewP07SnippetB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAF019SummaryItemStandardE0V_Qo_AA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewP07SnippetB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAF019SummaryItemStandardE0V_Qo_AA14_PaddingLayoutVGMR);
  v18 = MEMORY[0x28223BE20](v63);
  v70 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v60 - v21;
  MEMORY[0x28223BE20](v20);
  v69 = &v60 - v23;
  v24 = (a1 + *(type metadata accessor for SingleResultCallHistoryView(0) + 24));
  v26 = v24[2];
  v25 = v24[3];
  v93 = MEMORY[0x277D837D0];
  v94 = MEMORY[0x277D63F88];
  v91 = v26;
  v92 = v25;
  v27 = v24[4];
  v28 = v24[5];
  v89 = MEMORY[0x277D837D0];
  v90 = MEMORY[0x277D63F88];
  v87 = v27;
  v88 = v28;
  v29 = v24[6];
  v30 = v24[7];
  v85 = MEMORY[0x277D837D0];
  v86 = MEMORY[0x277D63F88];
  v83 = v29;
  v84 = v30;
  v82 = 0;
  v81 = 0u;
  v80 = 0u;
  v31 = v24[8];

  v32 = SingleResultCallHistoryView.getAvatarView(contactIds:)(v31);
  if (v32)
  {
    v33 = MEMORY[0x277D63A58];
    v34 = MEMORY[0x277CE11D0];
  }

  else
  {
    v34 = 0;
    v33 = 0;
    v79[2] = 0;
    v79[1] = 0;
  }

  v79[0] = v32;
  v79[3] = v34;
  v79[4] = v33;
  SummaryItemStandardView.init(text1:text2:text3:text4:thumbnail:)();
  v35 = v68;
  (*(v11 + 104))(v13, *MEMORY[0x277D62F48], v68);
  _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_8(&lazy protocol witness table cache variable for type SummaryItemStandardView and conformance SummaryItemStandardView, MEMORY[0x277D63E78], MEMORY[0x277D63E60]);
  v36 = v67;
  View.separators(_:isOverride:)();
  (*(v11 + 8))(v13, v35);
  (*(v66 + 8))(v15, v36);
  v37 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  (*(v64 + 32))(v22, v17, v65);
  v46 = &v22[*(v63 + 36)];
  *v46 = v37;
  *(v46 + 1) = v39;
  *(v46 + 2) = v41;
  *(v46 + 3) = v43;
  *(v46 + 4) = v45;
  v46[40] = 0;
  v47 = v69;
  sub_25E586FFC(v22, v69);
  v48 = type metadata accessor for SingleResultCallHistoryModel(0);
  v49 = v73;
  outlined init with copy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v24 + *(v48 + 36), v73, &_s14PhoneSnippetUI34SearchCallHistoryBinaryButtonModelVSgMd, &_s14PhoneSnippetUI34SearchCallHistoryBinaryButtonModelVSgMR);
  if ((*(v71 + 48))(v49, 1, v72) == 1)
  {
    outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v49, &_s14PhoneSnippetUI34SearchCallHistoryBinaryButtonModelVSgMd, &_s14PhoneSnippetUI34SearchCallHistoryBinaryButtonModelVSgMR);
    v50 = 1;
    v51 = v77;
    v52 = v74;
  }

  else
  {
    v53 = v61;
    _s14PhoneSnippetUI28SingleResultCallHistoryModelVWObTm_0(v49, v61, type metadata accessor for SearchCallHistoryBinaryButtonModel);
    v51 = v77;
    v54 = v62;
    outlined init with copy of SingleResultCallHistoryModel(v53, &v62[*(v77 + 20)], type metadata accessor for SearchCallHistoryBinaryButtonModel);
    ActionHandler.init()();
    outlined destroy of SearchCallHistoryBinaryButtonModel(v53);
    v52 = v74;
    _s14PhoneSnippetUI28SingleResultCallHistoryModelVWObTm_0(v54, v74, type metadata accessor for SearchCallHistoryBinaryButtonView);
    v50 = 0;
  }

  (*(v76 + 56))(v52, v50, 1, v51);
  v55 = v70;
  sub_25E58706C(v47, v70);
  v56 = v75;
  outlined init with copy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v52, v75, &_s14PhoneSnippetUI33SearchCallHistoryBinaryButtonViewVSgMd, &_s14PhoneSnippetUI33SearchCallHistoryBinaryButtonViewVSgMR);
  v57 = v78;
  sub_25E58706C(v55, v78);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewP07SnippetB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAF019SummaryItemStandardE0V_Qo_AA14_PaddingLayoutVG_05PhonefB0029SearchCallHistoryBinaryButtonE0VSgtMd, &_s7SwiftUI15ModifiedContentVyAA4ViewP07SnippetB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAF019SummaryItemStandardE0V_Qo_AA14_PaddingLayoutVG_05PhonefB0029SearchCallHistoryBinaryButtonE0VSgtMR);
  outlined init with copy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v56, v57 + *(v58 + 48), &_s14PhoneSnippetUI33SearchCallHistoryBinaryButtonViewVSgMd, &_s14PhoneSnippetUI33SearchCallHistoryBinaryButtonViewVSgMR);
  outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v52, &_s14PhoneSnippetUI33SearchCallHistoryBinaryButtonViewVSgMd, &_s14PhoneSnippetUI33SearchCallHistoryBinaryButtonViewVSgMR);
  sub_25E5870DC(v47);
  outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v56, &_s14PhoneSnippetUI33SearchCallHistoryBinaryButtonViewVSgMd, &_s14PhoneSnippetUI33SearchCallHistoryBinaryButtonViewVSgMR);
  return sub_25E5870DC(v55);
}

uint64_t SingleResultCallHistoryView.getAvatarView(contactIds:)(uint64_t a1)
{
  v2 = type metadata accessor for ImageElement.ImageStyle();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ImageElement();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = type metadata accessor for ImageElementView();
  MEMORY[0x28223BE20](v7);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + 16))
  {
    return 0;
  }

  v11 = *MEMORY[0x277D62AA8];
  v12 = *(v3 + 104);
  v23 = v8;
  v12(v5, v11, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10SnippetKit11_ProtoIdiomOGMd, &_ss23_ContiguousArrayStorageCy10SnippetKit11_ProtoIdiomOGMR);
  v13 = type metadata accessor for _ProtoIdiom();
  v14 = *(v13 - 8);
  v21[1] = a1;
  v15 = v14;
  v16 = *(v14 + 80);
  v22 = v2;
  v17 = (v16 + 32) & ~v16;
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_25E59F720;
  (*(v15 + 104))(v18 + v17, *MEMORY[0x277D62A28], v13);
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10SnippetKit11_ProtoIdiomO_Tt0gq5Tf4g_n(v18);
  swift_setDeallocating();
  (*(v15 + 8))(v18 + v17, v13);
  swift_deallocClassInstance();
  static ImageElement.contactImageAvatar(contactIds:imageStyle:idioms:)();

  (*(v3 + 8))(v5, v22);
  ImageElementView.init(_:)();
  _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_8(&lazy protocol witness table cache variable for type ImageElementView and conformance ImageElementView, MEMORY[0x277D63C70], MEMORY[0x277D63C58]);
  v19 = View.eraseToAnyView()();
  (*(v23 + 8))(v10, v7);
  return v19;
}

uint64_t protocol witness for View.body.getter in conformance SingleResultCallHistoryView@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  outlined init with copy of SingleResultCallHistoryModel(v2, &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SingleResultCallHistoryView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  _s14PhoneSnippetUI28SingleResultCallHistoryModelVWObTm_0(&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for SingleResultCallHistoryView);
  type metadata accessor for Context();
  _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_8(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68], MEMORY[0x277D63F58]);
  v8 = EnvironmentObject.init()();
  v10 = v9;
  result = static Edge.Set.all.getter();
  *a2 = v8;
  *(a2 + 8) = v10;
  *(a2 + 16) = closure #1 in SingleResultCallHistoryView.body.getterpartial apply;
  *(a2 + 24) = v7;
  *(a2 + 32) = result;
  return result;
}

uint64_t sub_25E586934(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = type metadata accessor for ActionHandler();
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 20);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = type metadata accessor for SingleResultCallHistoryModel(0);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 24);

      return v15(v16, a2, v14);
    }
  }
}

void *sub_25E586A78(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v8 = type metadata accessor for ActionHandler();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for SingleResultCallHistoryModel(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void type metadata completion function for SingleResultCallHistoryView(uint64_t a1)
{
  type metadata accessor for EnvironmentObject<Context>(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ActionHandler();
    if (v2 <= 0x3F)
    {
      type metadata accessor for SingleResultCallHistoryModel(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<PhoneComponentStack<TupleView<(ModifiedContent<<<opaque return type of View.separators(_:isOverride:)>>.0, _PaddingLayout>, SearchCallHistoryBinaryButtonView?)>>, _BackgroundStyleModifier<BackgroundStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<PhoneComponentStack<TupleView<(ModifiedContent<<<opaque return type of View.separators(_:isOverride:)>>.0, _PaddingLayout>, SearchCallHistoryBinaryButtonView?)>>, _BackgroundStyleModifier<BackgroundStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<PhoneComponentStack<TupleView<(ModifiedContent<<<opaque return type of View.separators(_:isOverride:)>>.0, _PaddingLayout>, SearchCallHistoryBinaryButtonView?)>>, _BackgroundStyleModifier<BackgroundStyle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy012PhoneSnippetB00E14ComponentStackVyAA9TupleViewVyACyAA0J0P0fB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAK019SummaryItemStandardJ0V_Qo_AA14_PaddingLayoutVG_AD029SearchCallHistoryBinaryButtonJ0VSgtGGAA011_BackgroundP8ModifierVyAA010BackgroundP0VGGMd, &_s7SwiftUI15ModifiedContentVy012PhoneSnippetB00E14ComponentStackVyAA9TupleViewVyACyAA0J0P0fB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAK019SummaryItemStandardJ0V_Qo_AA14_PaddingLayoutVG_AD029SearchCallHistoryBinaryButtonJ0VSgtGGAA011_BackgroundP8ModifierVyAA010BackgroundP0VGGMR);
    lazy protocol witness table accessor for type TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type PhoneComponentStack<TupleView<(ModifiedContent<<<opaque return type of View.separators(_:isOverride:)>>.0, _PaddingLayout>, SearchCallHistoryBinaryButtonView?)>> and conformance PhoneComponentStack<A>, &_s14PhoneSnippetUI0A14ComponentStackVy05SwiftC09TupleViewVyAD15ModifiedContentVyAD0H0P0bC0E10separators_10isOverrideQr0B3Kit14SeparatorStyleO_SbtFQOyAK019SummaryItemStandardH0V_Qo_AD14_PaddingLayoutVG_AA029SearchCallHistoryBinaryButtonH0VSgtGGMd, &_s14PhoneSnippetUI0A14ComponentStackVy05SwiftC09TupleViewVyAD15ModifiedContentVyAD0H0P0bC0E10separators_10isOverrideQr0B3Kit14SeparatorStyleO_SbtFQOyAK019SummaryItemStandardH0V_Qo_AD14_PaddingLayoutVG_AA029SearchCallHistoryBinaryButtonH0VSgtGGMR, &protocol conformance descriptor for PhoneComponentStack<A>);
    lazy protocol witness table accessor for type TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type _BackgroundStyleModifier<BackgroundStyle> and conformance _BackgroundStyleModifier<A>, &_s7SwiftUI24_BackgroundStyleModifierVyAA0cD0VGMd, &_s7SwiftUI24_BackgroundStyleModifierVyAA0cD0VGMR, MEMORY[0x277CE0720]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<PhoneComponentStack<TupleView<(ModifiedContent<<<opaque return type of View.separators(_:isOverride:)>>.0, _PaddingLayout>, SearchCallHistoryBinaryButtonView?)>>, _BackgroundStyleModifier<BackgroundStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t objectdestroyTm_13()
{
  v1 = (type metadata accessor for SingleResultCallHistoryView(0) - 8);
  v2 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));

  v3 = v1[7];
  v4 = type metadata accessor for ActionHandler();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);
  v5 = v2 + v1[8];

  v6 = &v5[*(type metadata accessor for SingleResultCallHistoryModel(0) + 36)];
  v7 = type metadata accessor for SearchCallHistoryBinaryButtonModel(0);
  if (!(*(*(v7 - 1) + 48))(v6, 1, v7))
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
    v9 = *(*(v8 - 8) + 8);
    v9(v6, v8);
    v10 = v7[5];
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMR);
    v12 = *(*(v11 - 8) + 8);
    v12(&v6[v10], v11);
    v9(&v6[v7[6]], v8);
    v12(&v6[v7[7]], v11);
  }

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in SingleResultCallHistoryView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SingleResultCallHistoryView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return closure #1 in SingleResultCallHistoryView.body.getter(v4, a1);
}

uint64_t sub_25E586FFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewP07SnippetB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAF019SummaryItemStandardE0V_Qo_AA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewP07SnippetB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAF019SummaryItemStandardE0V_Qo_AA14_PaddingLayoutVGMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25E58706C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewP07SnippetB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAF019SummaryItemStandardE0V_Qo_AA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewP07SnippetB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAF019SummaryItemStandardE0V_Qo_AA14_PaddingLayoutVGMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25E5870DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewP07SnippetB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAF019SummaryItemStandardE0V_Qo_AA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewP07SnippetB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAF019SummaryItemStandardE0V_Qo_AA14_PaddingLayoutVGMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of SingleResultCallHistoryModel(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s14PhoneSnippetUI28SingleResultCallHistoryModelVWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static SingleResultVoicemailModel.resultViewID.getter()
{
  swift_beginAccess();
  v0 = static SingleResultVoicemailModel.resultViewID;

  return v0;
}

uint64_t static SingleResultVoicemailModel.resultViewID.setter(uint64_t a1, char *a2)
{
  swift_beginAccess();
  static SingleResultVoicemailModel.resultViewID = a1;
  off_27FCED9E0 = a2;
}

uint64_t key path setter for static SingleResultVoicemailModel.resultViewID : SingleResultVoicemailModel.Type(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  static SingleResultVoicemailModel.resultViewID = v2;
  off_27FCED9E0 = v1;
}

uint64_t SingleResultVoicemailModel.responseViewId.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SingleResultVoicemailModel.responseViewId.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t SingleResultVoicemailModel.displayName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t SingleResultVoicemailModel.displayName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t SingleResultVoicemailModel.displayCallDetail.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t SingleResultVoicemailModel.displayCallDetail.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t SingleResultVoicemailModel.displayDateTime.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t SingleResultVoicemailModel.displayDateTime.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t SingleResultVoicemailModel.callDuration.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t SingleResultVoicemailModel.callDuration.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t SingleResultVoicemailModel.contactIds.setter(uint64_t a1)
{

  *(v1 + 88) = a1;
  return result;
}

uint64_t SingleResultVoicemailModel.transcript.getter()
{
  v1 = *(v0 + 96);

  return v1;
}

uint64_t SingleResultVoicemailModel.transcript.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  return result;
}

uint64_t SingleResultVoicemailModel.transcriptTitle.getter()
{
  v1 = *(v0 + 112);

  return v1;
}

uint64_t SingleResultVoicemailModel.transcriptTitle.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
  return result;
}

uint64_t SingleResultVoicemailModel.callbackDirectInvocation.getter()
{
  type metadata accessor for SingleResultVoicemailModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  return CodableAceObject.wrappedValue.getter();
}

uint64_t type metadata accessor for SingleResultVoicemailModel(uint64_t a1)
{
  result = type metadata singleton initialization cache for SingleResultVoicemailModel;
  if (!type metadata singleton initialization cache for SingleResultVoicemailModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t key path getter for SingleResultVoicemailModel.callbackDirectInvocation : SingleResultVoicemailModel@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SingleResultVoicemailModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  result = CodableAceObject.wrappedValue.getter();
  *a1 = result;
  return result;
}

uint64_t key path setter for SingleResultVoicemailModel.callbackDirectInvocation : SingleResultVoicemailModel(void **a1)
{
  v1 = *a1;
  type metadata accessor for SingleResultVoicemailModel(0);
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  return CodableAceObject.wrappedValue.setter();
}

uint64_t SingleResultVoicemailModel.callbackDirectInvocation.setter(uint64_t a1)
{
  type metadata accessor for SingleResultVoicemailModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  return CodableAceObject.wrappedValue.setter();
}

void (*SingleResultVoicemailModel.callbackDirectInvocation.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for SingleResultVoicemailModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  *(v3 + 32) = CodableAceObject.wrappedValue.modify();
  return EmergencyCountdownModel.sashTitle.modify;
}

uint64_t property wrapper backing initializer of SingleResultVoicemailModel.repeatDirectInvocation(uint64_t a1)
{
  type metadata accessor for SAIntentGroupRunSiriKitExecutor();

  return CodableAceObject.init(wrappedValue:)();
}

uint64_t SingleResultVoicemailModel.repeatDirectInvocation.getter()
{
  type metadata accessor for SingleResultVoicemailModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  return CodableAceObject.wrappedValue.getter();
}

uint64_t key path getter for SingleResultVoicemailModel.repeatDirectInvocation : SingleResultVoicemailModel@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SingleResultVoicemailModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  result = CodableAceObject.wrappedValue.getter();
  *a1 = result;
  return result;
}

uint64_t key path setter for SingleResultVoicemailModel.repeatDirectInvocation : SingleResultVoicemailModel(void **a1)
{
  v1 = *a1;
  type metadata accessor for SingleResultVoicemailModel(0);
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  return CodableAceObject.wrappedValue.setter();
}

uint64_t SingleResultVoicemailModel.repeatDirectInvocation.setter(uint64_t a1)
{
  type metadata accessor for SingleResultVoicemailModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  return CodableAceObject.wrappedValue.setter();
}

void (*SingleResultVoicemailModel.repeatDirectInvocation.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for SingleResultVoicemailModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  *(v3 + 32) = CodableAceObject.wrappedValue.modify();
  return EmergencyCountdownModel.callAction.modify;
}

uint64_t SingleResultVoicemailModel.init(displayName:displayCallDetail:displayDateTime:callDuration:callDurationInterval:transcript:transcriptTitle:callbackDirectInvocation:repeatDirectInvocation:contactIds:searchCallHistoryBinaryButtonModel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, __int128 a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17)
{
  *a9 = 0xD000000000000015;
  *(a9 + 8) = 0x800000025E5A6210;
  *(a9 + 16) = a1;
  *(a9 + 24) = a2;
  *(a9 + 32) = a3;
  *(a9 + 40) = a4;
  *(a9 + 48) = a5;
  *(a9 + 56) = a6;
  *(a9 + 64) = a7;
  *(a9 + 72) = a8;
  *(a9 + 80) = a10;
  *(a9 + 96) = a11;
  *(a9 + 112) = a12;
  *(a9 + 120) = a13;
  v18 = type metadata accessor for SingleResultVoicemailModel(0);
  type metadata accessor for SAIntentGroupRunSiriKitExecutor();
  v19 = a15;
  CodableAceObject.init(wrappedValue:)();
  *(a9 + 88) = a16;
  CodableAceObject.init(wrappedValue:)();

  v20 = a9 + *(v18 + 60);

  return outlined init with take of SearchCallHistoryBinaryButtonModel(a17, v20);
}

uint64_t outlined init with take of SearchCallHistoryBinaryButtonModel(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchCallHistoryBinaryButtonModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t SingleResultVoicemailModel.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    if (a1 > 8u)
    {
      v6 = 0xD000000000000022;
      if (a1 == 10)
      {
        v6 = 0xD000000000000016;
      }

      if (a1 == 9)
      {
        return 0xD000000000000018;
      }

      else
      {
        return v6;
      }
    }

    else if (a1 == 6)
    {
      return 0x49746361746E6F63;
    }

    else
    {
      return 0x697263736E617274;
    }
  }

  else
  {
    v1 = 0x65736E6F70736572;
    v2 = 0x4479616C70736964;
    v3 = 0x617275446C6C6163;
    if (a1 != 4)
    {
      v3 = 0xD000000000000014;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x4E79616C70736964;
    if (a1 != 1)
    {
      v4 = 0xD000000000000011;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SingleResultVoicemailModel.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized SingleResultVoicemailModel.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SingleResultVoicemailModel.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = lazy protocol witness table accessor for type SingleResultVoicemailModel.CodingKeys and conformance SingleResultVoicemailModel.CodingKeys(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SingleResultVoicemailModel.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = lazy protocol witness table accessor for type SingleResultVoicemailModel.CodingKeys and conformance SingleResultVoicemailModel.CodingKeys(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t SingleResultVoicemailModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14PhoneSnippetUI26SingleResultVoicemailModelV10CodingKeys33_7FD6A56263EACE1292EDC7873BF26C71LLOGMd, &_ss22KeyedEncodingContainerVy14PhoneSnippetUI26SingleResultVoicemailModelV10CodingKeys33_7FD6A56263EACE1292EDC7873BF26C71LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SingleResultVoicemailModel.CodingKeys and conformance SingleResultVoicemailModel.CodingKeys(v9, v10, v11);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v16) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  LOBYTE(v16) = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v16) = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v16) = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v16) = 4;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v16) = 5;
  KeyedEncodingContainer.encode(_:forKey:)();
  v16 = *(v3 + 88);
  v15 = 6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A], MEMORY[0x277D837D8], MEMORY[0x277D83948]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  LOBYTE(v16) = 7;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v16) = 8;
  KeyedEncodingContainer.encode(_:forKey:)();
  v14 = v6;
  type metadata accessor for SingleResultVoicemailModel(0);
  LOBYTE(v16) = 9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  lazy protocol witness table accessor for type CodableAceObject<SAIntentGroupRunSiriKitExecutor> and conformance CodableAceObject<A>(&lazy protocol witness table cache variable for type CodableAceObject<SAIntentGroupRunSiriKitExecutor> and conformance CodableAceObject<A>, MEMORY[0x277D63228]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  LOBYTE(v16) = 10;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  LOBYTE(v16) = 11;
  type metadata accessor for SearchCallHistoryBinaryButtonModel(0);
  _s14PhoneSnippetUI34SearchCallHistoryBinaryButtonModelVACSEAAWlTm_0(&lazy protocol witness table cache variable for type SearchCallHistoryBinaryButtonModel and conformance SearchCallHistoryBinaryButtonModel, type metadata accessor for SearchCallHistoryBinaryButtonModel, &protocol conformance descriptor for SearchCallHistoryBinaryButtonModel);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v14 + 8))(v8, v5);
}

unint64_t lazy protocol witness table accessor for type SingleResultVoicemailModel.CodingKeys and conformance SingleResultVoicemailModel.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type SingleResultVoicemailModel.CodingKeys and conformance SingleResultVoicemailModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SingleResultVoicemailModel.CodingKeys and conformance SingleResultVoicemailModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SingleResultVoicemailModel.CodingKeys and conformance SingleResultVoicemailModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SingleResultVoicemailModel.CodingKeys and conformance SingleResultVoicemailModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SingleResultVoicemailModel.CodingKeys and conformance SingleResultVoicemailModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SingleResultVoicemailModel.CodingKeys and conformance SingleResultVoicemailModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SingleResultVoicemailModel.CodingKeys and conformance SingleResultVoicemailModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SingleResultVoicemailModel.CodingKeys and conformance SingleResultVoicemailModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SingleResultVoicemailModel.CodingKeys and conformance SingleResultVoicemailModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SingleResultVoicemailModel.CodingKeys and conformance SingleResultVoicemailModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SingleResultVoicemailModel.CodingKeys and conformance SingleResultVoicemailModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SingleResultVoicemailModel.CodingKeys and conformance SingleResultVoicemailModel.CodingKeys);
  }

  return result;
}

uint64_t SingleResultVoicemailModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = type metadata accessor for SearchCallHistoryBinaryButtonModel(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  v53 = *(v55 - 8);
  v6 = MEMORY[0x28223BE20](v55);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v47 - v9;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14PhoneSnippetUI26SingleResultVoicemailModelV10CodingKeys33_7FD6A56263EACE1292EDC7873BF26C71LLOGMd, &_ss22KeyedDecodingContainerVy14PhoneSnippetUI26SingleResultVoicemailModelV10CodingKeys33_7FD6A56263EACE1292EDC7873BF26C71LLOGMR);
  v49 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v12 = &v47 - v11;
  v54 = type metadata accessor for SingleResultVoicemailModel(0);
  MEMORY[0x28223BE20](v54);
  v56 = (&v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = a1[3];
  v52 = a1;
  v15 = __swift_project_boxed_opaque_existential_1(a1, v14);
  lazy protocol witness table accessor for type SingleResultVoicemailModel.CodingKeys and conformance SingleResultVoicemailModel.CodingKeys(v15, v16, v17);
  v50 = v12;
  v18 = v57;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v18)
  {
    v57 = v18;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    LODWORD(v50) = 0;
    LODWORD(v51) = 0;
LABEL_4:
    v31 = v56;
    goto LABEL_5;
  }

  v20 = v49;
  v19 = v50;
  v47 = v5;
  LOBYTE(v59) = 0;
  v21 = v51;
  v22 = KeyedDecodingContainer.decode(_:forKey:)();
  v31 = v56;
  *v56 = v22;
  v31[1] = v32;
  LOBYTE(v59) = 1;
  v31[2] = KeyedDecodingContainer.decode(_:forKey:)();
  v31[3] = v33;
  LOBYTE(v59) = 2;
  v31[4] = KeyedDecodingContainer.decode(_:forKey:)();
  v31[5] = v34;
  LOBYTE(v59) = 3;
  v31[6] = KeyedDecodingContainer.decode(_:forKey:)();
  v31[7] = v35;
  LOBYTE(v59) = 4;
  v31[8] = KeyedDecodingContainer.decode(_:forKey:)();
  v31[9] = v36;
  LOBYTE(v59) = 5;
  KeyedDecodingContainer.decode(_:forKey:)();
  v57 = 0;
  v31[10] = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  v58 = 6;
  lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A], MEMORY[0x277D83808], MEMORY[0x277D83978]);
  v38 = v57;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  if (!v38)
  {
    v31[11] = v59;
    LOBYTE(v59) = 7;
    v31[12] = KeyedDecodingContainer.decode(_:forKey:)();
    v31[13] = v39;
    LOBYTE(v59) = 8;
    v40 = KeyedDecodingContainer.decode(_:forKey:)();
    v57 = 0;
    v31[14] = v40;
    v31[15] = v41;
    LOBYTE(v59) = 9;
    lazy protocol witness table accessor for type CodableAceObject<SAIntentGroupRunSiriKitExecutor> and conformance CodableAceObject<A>(&lazy protocol witness table cache variable for type CodableAceObject<SAIntentGroupRunSiriKitExecutor> and conformance CodableAceObject<A>, MEMORY[0x277D63230]);
    v42 = v57;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v57 = v42;
    if (v42)
    {
      (*(v49 + 8))(v50, v51);
      LODWORD(v50) = 0;
      LODWORD(v51) = 0;
      v23 = 1;
      v24 = 1;
      v25 = 1;
      v26 = 1;
      v27 = 1;
      v28 = 1;
      v29 = 1;
    }

    else
    {
      v43 = *(v53 + 32);
      v43(v56 + v54[13], v10, v55);
      LOBYTE(v59) = 10;
      v44 = v57;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v57 = v44;
      if (v44)
      {
        (*(v49 + 8))(v50, v51);
        LODWORD(v51) = 0;
        v23 = 1;
        v24 = 1;
        v25 = 1;
        v26 = 1;
        v27 = 1;
        v28 = 1;
        v29 = 1;
        LODWORD(v50) = 1;
      }

      else
      {
        v43(v56 + v54[14], v8, v55);
        LOBYTE(v59) = 11;
        _s14PhoneSnippetUI34SearchCallHistoryBinaryButtonModelVACSEAAWlTm_0(&lazy protocol witness table cache variable for type SearchCallHistoryBinaryButtonModel and conformance SearchCallHistoryBinaryButtonModel, type metadata accessor for SearchCallHistoryBinaryButtonModel, &protocol conformance descriptor for SearchCallHistoryBinaryButtonModel);
        v45 = v57;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v57 = v45;
        if (!v45)
        {
          (*(v49 + 8))(v50, v51);
          v46 = v56;
          outlined init with take of SearchCallHistoryBinaryButtonModel(v47, v56 + v54[15]);
          _s14PhoneSnippetUI34SearchCallHistoryBinaryButtonModelVWOcTm_0(v46, v48, type metadata accessor for SingleResultVoicemailModel);
          __swift_destroy_boxed_opaque_existential_0(v52);
          return outlined destroy of SingleResultVoicemailModel(v46);
        }

        (*(v49 + 8))(v50, v51);
        v23 = 1;
        v24 = 1;
        v25 = 1;
        v26 = 1;
        v27 = 1;
        v28 = 1;
        v29 = 1;
        LODWORD(v50) = 1;
        LODWORD(v51) = 1;
      }
    }

    goto LABEL_4;
  }

  v57 = v38;
  (*(v20 + 8))(v19, v21);
  v27 = 0;
  v28 = 0;
  v29 = 0;
  LODWORD(v50) = 0;
  LODWORD(v51) = 0;
  v23 = 1;
  v24 = 1;
  v25 = 1;
  v26 = 1;
LABEL_5:
  __swift_destroy_boxed_opaque_existential_0(v52);

  if (v23)
  {

    if (!v24)
    {
LABEL_7:
      if (!v25)
      {
        goto LABEL_8;
      }

      goto LABEL_17;
    }
  }

  else if (!v24)
  {
    goto LABEL_7;
  }

  if (!v25)
  {
LABEL_8:
    if (!v26)
    {
      goto LABEL_9;
    }

    goto LABEL_18;
  }

LABEL_17:

  if (!v26)
  {
LABEL_9:
    if (!v27)
    {
      goto LABEL_10;
    }

    goto LABEL_19;
  }

LABEL_18:

  if (!v27)
  {
LABEL_10:
    if (!v28)
    {
      goto LABEL_11;
    }

    goto LABEL_20;
  }

LABEL_19:

  if (!v28)
  {
LABEL_11:
    if (!v29)
    {
      goto LABEL_12;
    }

    goto LABEL_21;
  }

LABEL_20:

  if (!v29)
  {
LABEL_12:
    if (!v50)
    {
      goto LABEL_13;
    }

LABEL_22:
    result = (*(v53 + 8))(v31 + v54[13], v55);
    if (!v51)
    {
      return result;
    }

    return (*(v53 + 8))(v31 + v54[14], v55);
  }

LABEL_21:

  if (v50)
  {
    goto LABEL_22;
  }

LABEL_13:
  if (!v51)
  {
    return result;
  }

  return (*(v53 + 8))(v31 + v54[14], v55);
}

uint64_t _s14PhoneSnippetUI34SearchCallHistoryBinaryButtonModelVWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of SingleResultVoicemailModel(uint64_t a1)
{
  v2 = type metadata accessor for SingleResultVoicemailModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t protocol witness for static ResultViewIDProviding.resultViewID.getter in conformance SingleResultVoicemailModel()
{
  swift_beginAccess();
  v0 = static SingleResultVoicemailModel.resultViewID;

  return v0;
}

PhoneSnippetUI::VoicemailUpdateAction_optional __swiftcall VoicemailUpdateAction.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of VoicemailUpdateAction.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = PhoneSnippetUI_VoicemailUpdateAction_repeatVoicemail;
  }

  else
  {
    v4.value = PhoneSnippetUI_VoicemailUpdateAction_unknownDefault;
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

uint64_t VoicemailUpdateAction.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x6F56746165706572;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t instantiation function for generic protocol witness table for SingleResultVoicemailModel(uint64_t a1)
{
  result = _s14PhoneSnippetUI34SearchCallHistoryBinaryButtonModelVACSEAAWlTm_0(&lazy protocol witness table cache variable for type SingleResultVoicemailModel and conformance SingleResultVoicemailModel, type metadata accessor for SingleResultVoicemailModel, &protocol conformance descriptor for SingleResultVoicemailModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t _s14PhoneSnippetUI34SearchCallHistoryBinaryButtonModelVACSEAAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance VoicemailUpdateAction(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6F56746165706572;
  }

  else
  {
    v3 = 0xD000000000000015;
  }

  if (v2)
  {
    v4 = 0x800000025E5A60B0;
  }

  else
  {
    v4 = 0xEF6C69616D656369;
  }

  if (*a2)
  {
    v5 = 0x6F56746165706572;
  }

  else
  {
    v5 = 0xD000000000000015;
  }

  if (*a2)
  {
    v6 = 0xEF6C69616D656369;
  }

  else
  {
    v6 = 0x800000025E5A60B0;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

unint64_t lazy protocol witness table accessor for type VoicemailUpdateAction and conformance VoicemailUpdateAction(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type VoicemailUpdateAction and conformance VoicemailUpdateAction;
  if (!lazy protocol witness table cache variable for type VoicemailUpdateAction and conformance VoicemailUpdateAction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoicemailUpdateAction and conformance VoicemailUpdateAction);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoicemailUpdateAction and conformance VoicemailUpdateAction;
  if (!lazy protocol witness table cache variable for type VoicemailUpdateAction and conformance VoicemailUpdateAction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoicemailUpdateAction and conformance VoicemailUpdateAction);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoicemailUpdateAction and conformance VoicemailUpdateAction;
  if (!lazy protocol witness table cache variable for type VoicemailUpdateAction and conformance VoicemailUpdateAction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoicemailUpdateAction and conformance VoicemailUpdateAction);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoicemailUpdateAction and conformance VoicemailUpdateAction;
  if (!lazy protocol witness table cache variable for type VoicemailUpdateAction and conformance VoicemailUpdateAction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoicemailUpdateAction and conformance VoicemailUpdateAction);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoicemailUpdateAction and conformance VoicemailUpdateAction;
  if (!lazy protocol witness table cache variable for type VoicemailUpdateAction and conformance VoicemailUpdateAction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoicemailUpdateAction and conformance VoicemailUpdateAction);
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance VoicemailUpdateAction()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance VoicemailUpdateAction(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance VoicemailUpdateAction(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance VoicemailUpdateAction@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of VoicemailUpdateAction.init(rawValue:), *a1);

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

void protocol witness for RawRepresentable.rawValue.getter in conformance VoicemailUpdateAction(unint64_t *a1@<X8>)
{
  v2 = 0x800000025E5A60B0;
  v3 = 0xD000000000000015;
  if (*v1)
  {
    v3 = 0x6F56746165706572;
    v2 = 0xEF6C69616D656369;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t protocol witness for UpdateResponseCommand.init(_:) in conformance VoicemailUpdateAction(uint64_t a1, uint64_t a2, uint64_t a3)
{
  updated = lazy protocol witness table accessor for type VoicemailUpdateAction and conformance VoicemailUpdateAction(a1, a2, a3);
  lazy protocol witness table accessor for type VoicemailUpdateAction and conformance VoicemailUpdateAction(updated, v4, v5);
  return UpdateResponseCommand<>.init(_:)();
}

uint64_t protocol witness for UpdateResponseCommand.serializeData() in conformance VoicemailUpdateAction(uint64_t a1, uint64_t a2, uint64_t a3)
{
  updated = lazy protocol witness table accessor for type VoicemailUpdateAction and conformance VoicemailUpdateAction(a1, a2, a3);
  lazy protocol witness table accessor for type VoicemailUpdateAction and conformance VoicemailUpdateAction(updated, v4, v5);
  return UpdateResponseCommand<>.serializeData()();
}

uint64_t sub_25E589644@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = off_27FCED9E0;
  *a1 = static SingleResultVoicemailModel.resultViewID;
  a1[1] = v2;
}

uint64_t sub_25E5896BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 52);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for SearchCallHistoryBinaryButtonModel(0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 60);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_25E589800(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 52);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for SearchCallHistoryBinaryButtonModel(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 60);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void type metadata completion function for SingleResultVoicemailModel(uint64_t a1)
{
  type metadata accessor for [String]();
  if (v1 <= 0x3F)
  {
    type metadata accessor for CodableAceObject<SAIntentGroupRunSiriKitExecutor>(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for SearchCallHistoryBinaryButtonModel(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for SingleResultVoicemailModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SingleResultVoicemailModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t specialized SingleResultVoicemailModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65736E6F70736572 && a2 == 0xEE00644977656956;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x800000025E5A6C20 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4479616C70736964 && a2 == 0xEF656D6954657461 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x617275446C6C6163 && a2 == 0xEC0000006E6F6974 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000014 && 0x800000025E5A6CB0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x49746361746E6F63 && a2 == 0xEA00000000007364 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x697263736E617274 && a2 == 0xEA00000000007470 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x697263736E617274 && a2 == -1196430878757850000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000018 && 0x800000025E5A6CD0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000016 && 0x800000025E5A6CF0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000022 && 0x800000025E5A6C80 == a2)
  {

    return 11;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

double SingleResultVoicemailView.circleWidth.getter()
{
  type metadata accessor for SingleResultVoicemailView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12ScaledMetricVy12CoreGraphics7CGFloatVGMd, &_s7SwiftUI12ScaledMetricVy12CoreGraphics7CGFloatVGMR);
  ScaledMetric.wrappedValue.getter();
  return v1;
}

uint64_t type metadata accessor for SingleResultVoicemailView(uint64_t a1)
{
  result = type metadata singleton initialization cache for SingleResultVoicemailView;
  if (!type metadata singleton initialization cache for SingleResultVoicemailView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t property wrapper backing initializer of SingleResultVoicemailView.circleWidth(double a1)
{
  v2 = type metadata accessor for Font.TextStyle();
  MEMORY[0x28223BE20](v2);
  *&v9[1] = a1;
  v5 = (*(v4 + 104))(v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CE0A60]);
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat(v5, v6, v7);
  return ScaledMetric.init(wrappedValue:relativeTo:)();
}

double SingleResultVoicemailView.circleHeight.getter()
{
  type metadata accessor for SingleResultVoicemailView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12ScaledMetricVy12CoreGraphics7CGFloatVGMd, &_s7SwiftUI12ScaledMetricVy12CoreGraphics7CGFloatVGMR);
  ScaledMetric.wrappedValue.getter();
  return v1;
}

double SingleResultVoicemailView.progress.getter()
{
  type metadata accessor for SingleResultVoicemailView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy12CoreGraphics7CGFloatVGMd, &_s7SwiftUI5StateVy12CoreGraphics7CGFloatVGMR);
  State.wrappedValue.getter();
  return v1;
}

double key path getter for SingleResultVoicemailView.progress : SingleResultVoicemailView@<D0>(double *a2@<X8>)
{
  type metadata accessor for SingleResultVoicemailView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy12CoreGraphics7CGFloatVGMd, &_s7SwiftUI5StateVy12CoreGraphics7CGFloatVGMR);
  State.wrappedValue.getter();
  result = v4;
  *a2 = v4;
  return result;
}

uint64_t key path setter for SingleResultVoicemailView.progress : SingleResultVoicemailView(uint64_t *a1, uint64_t a2)
{
  type metadata accessor for SingleResultVoicemailView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy12CoreGraphics7CGFloatVGMd, &_s7SwiftUI5StateVy12CoreGraphics7CGFloatVGMR);
  return State.wrappedValue.setter();
}

uint64_t SingleResultVoicemailView.progress.setter(double a1)
{
  type metadata accessor for SingleResultVoicemailView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy12CoreGraphics7CGFloatVGMd, &_s7SwiftUI5StateVy12CoreGraphics7CGFloatVGMR);
  return State.wrappedValue.setter();
}

void (*SingleResultVoicemailView.progress.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = (v1 + *(type metadata accessor for SingleResultVoicemailView(0) + 36));
  v6 = *v5;
  v4[6] = *v5;
  v7 = v5[1];
  v4[7] = v7;
  *v4 = v6;
  v4[1] = v7;

  v4[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy12CoreGraphics7CGFloatVGMd, &_s7SwiftUI5StateVy12CoreGraphics7CGFloatVGMR);
  State.wrappedValue.getter();
  return SingleResultVoicemailView.progress.modify;
}

void SingleResultVoicemailView.progress.modify(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  v3 = *(*a1 + 56);
  *(*a1 + 16) = *(*a1 + 48);
  v1[3] = v3;
  v1[5] = v2;
  State.wrappedValue.setter();

  free(v1);
}

double SingleResultVoicemailView.$progress.getter()
{
  type metadata accessor for SingleResultVoicemailView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy12CoreGraphics7CGFloatVGMd, &_s7SwiftUI5StateVy12CoreGraphics7CGFloatVGMR);
  State.projectedValue.getter();
  return v1;
}

uint64_t SingleResultVoicemailView.shouldStartTimer.getter()
{
  type metadata accessor for SingleResultVoicemailView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
  State.wrappedValue.getter();
  return v1;
}

void *key path getter for SingleResultVoicemailView.shouldStartTimer : SingleResultVoicemailView@<X0>(_BYTE *a2@<X8>)
{
  type metadata accessor for SingleResultVoicemailView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
  result = State.wrappedValue.getter();
  *a2 = v4;
  return result;
}

uint64_t key path setter for SingleResultVoicemailView.shouldStartTimer : SingleResultVoicemailView(char *a1, uint64_t a2)
{
  type metadata accessor for SingleResultVoicemailView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
  return State.wrappedValue.setter();
}

uint64_t SingleResultVoicemailView.shouldStartTimer.setter(char a1)
{
  type metadata accessor for SingleResultVoicemailView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
  return State.wrappedValue.setter();
}

void (*SingleResultVoicemailView.shouldStartTimer.modify(uint64_t *a1))(uint64_t *a1)
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
  v5 = (v1 + *(type metadata accessor for SingleResultVoicemailView(0) + 40));
  v6 = *v5;
  *(v4 + 50) = *v5;
  v7 = *(v5 + 1);
  *(v4 + 32) = v7;
  *v4 = v6;
  *(v4 + 8) = v7;

  *(v4 + 40) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
  State.wrappedValue.getter();
  return SingleResultVoicemailView.shouldStartTimer.modify;
}

void SingleResultVoicemailView.shouldStartTimer.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 32);
  *(*a1 + 16) = *(*a1 + 50);
  *(v1 + 24) = v3;
  *(v1 + 49) = v2;
  State.wrappedValue.setter();

  free(v1);
}

uint64_t SingleResultVoicemailView.$shouldStartTimer.getter()
{
  type metadata accessor for SingleResultVoicemailView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
  State.projectedValue.getter();
  return v1;
}

uint64_t SingleResultVoicemailView.init(singleVoicemailModel:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v29 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v30 = &v28 - v4;
  v5 = type metadata accessor for Font.TextStyle();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Context();
  _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_9(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68], MEMORY[0x277D63F58]);
  *a2 = EnvironmentObject.init()();
  a2[1] = v9;
  v10 = type metadata accessor for SingleResultVoicemailView(0);
  ActionHandler.init()();
  v32 = 0x4041800000000000;
  v11 = *MEMORY[0x277CE0A60];
  v12 = *(v6 + 104);
  v13 = v12(v8, v11, v5);
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat(v13, v14, v15);
  ScaledMetric.init(wrappedValue:relativeTo:)();
  v32 = 0x4041800000000000;
  v12(v8, v11, v5);
  ScaledMetric.init(wrappedValue:relativeTo:)();
  v16 = (a2 + v10[9]);
  v31 = 0;
  State.init(wrappedValue:)();
  v17 = v33;
  *v16 = v32;
  v16[1] = v17;
  v18 = a2 + v10[10];
  LOBYTE(v31) = 0;
  State.init(wrappedValue:)();
  v19 = v33;
  *v18 = v32;
  *(v18 + 1) = v19;
  v20 = v29;
  outlined init with copy of SingleResultVoicemailModel(v29, a2 + v10[8], type metadata accessor for SingleResultVoicemailModel);
  type metadata accessor for NSTimer();
  v21 = [objc_opt_self() mainRunLoop];
  v22 = type metadata accessor for NSRunLoop.SchedulerOptions();
  v23 = v30;
  (*(*(v22 - 8) + 56))(v30, 1, 1, v22);
  v24 = static NSTimer.publish(every:tolerance:on:in:options:)();

  outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v23, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
  v32 = v24;
  type metadata accessor for NSTimer.TimerPublisher();
  _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_9(&lazy protocol witness table cache variable for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher, MEMORY[0x277CC9DF0], MEMORY[0x277CC9DE8]);
  v25 = ConnectablePublisher.autoconnect()();

  *(a2 + v10[11]) = v25;
  v26 = ceil(*(v20 + 80));
  result = outlined destroy of SingleResultVoicemailModel(v20, type metadata accessor for SingleResultVoicemailModel);
  *(a2 + v10[12]) = v26;
  return result;
}

uint64_t SingleResultVoicemailView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v2 = type metadata accessor for SingleResultVoicemailView(0);
  v3 = *(v2 - 8);
  v30 = v2 - 8;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI16SubscriptionViewVy7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGAA15ModifiedContentVy07SnippetB014ComponentStackVyAA05TupleD0VyAPyAA0D0PAQE10separators_10isOverrideQr0N3Kit14SeparatorStyleO_SbtFQOyAQ017SummaryItemButtonD0V_Qo_AA14_PaddingLayoutVG_AA6VStackVyAUyAPyAPyAPyAA08ProgressD0VyAA05EmptyD0VA12_GA5_GA5_GAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_APyAQ06Simpley8StandardD0VA5_GtGGAPyA8_yAUyAPyAwAE4boldyQrSbFQOyAQ09PlainTextD0V_Qo_A5_G_APyAQ04Longy4TextD0VA5_GtGGA5_GSg05PhonenB0023SearchCallHistoryBinaryzD0VtGGAA011_BackgroundW8ModifierVyAA010BackgroundW0VGGGMd, &_s7SwiftUI16SubscriptionViewVy7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGAA15ModifiedContentVy07SnippetB014ComponentStackVyAA05TupleD0VyAPyAA0D0PAQE10separators_10isOverrideQr0N3Kit14SeparatorStyleO_SbtFQOyAQ017SummaryItemButtonD0V_Qo_AA14_PaddingLayoutVG_AA6VStackVyAUyAPyAPyAPyAA08ProgressD0VyAA05EmptyD0VA12_GA5_GA5_GAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_APyAQ06Simpley8StandardD0VA5_GtGGAPyA8_yAUyAPyAwAE4boldyQrSbFQOyAQ09PlainTextD0V_Qo_A5_G_APyAQ04Longy4TextD0VA5_GtGGA5_GSg05PhonenB0023SearchCallHistoryBinaryzD0VtGGAA011_BackgroundW8ModifierVyAA010BackgroundW0VGGGMR);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v28 - v7;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI16SubscriptionViewVy7Combine9PublishedV9PublisherVySDys11AnyHashableVypG_GACyAD10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE05TimerG0CGAA15ModifiedContentVy07SnippetB014ComponentStackVyAA05TupleD0VyAXyAA0D0PAYE10separators_10isOverrideQr0Q3Kit14SeparatorStyleO_SbtFQOyAY017SummaryItemButtonD0V_Qo_AA14_PaddingLayoutVG_AA6VStackVyA1_yAXyAXyAXyAA08ProgressD0VyAA05EmptyD0VA20_GA13_GA13_GAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AXyAY018SimpleItemStandardD0VA13_GtGGAXyA16_yA1_yAXyA3_AAE4boldyQrSbFQOyAY09PlainTextD0V_Qo_A13_G_AXyAY012LongItemTextD0VA13_GtGGA13_GSg05PhoneqB0029SearchCallHistoryBinaryButtonD0VtGGAA011_BackgroundZ8ModifierVyAA010BackgroundZ0VGGGGMd, &_s7SwiftUI16SubscriptionViewVy7Combine9PublishedV9PublisherVySDys11AnyHashableVypG_GACyAD10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE05TimerG0CGAA15ModifiedContentVy07SnippetB014ComponentStackVyAA05TupleD0VyAXyAA0D0PAYE10separators_10isOverrideQr0Q3Kit14SeparatorStyleO_SbtFQOyAY017SummaryItemButtonD0V_Qo_AA14_PaddingLayoutVG_AA6VStackVyA1_yAXyAXyAXyAA08ProgressD0VyAA05EmptyD0VA20_GA13_GA13_GAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AXyAY018SimpleItemStandardD0VA13_GtGGAXyA16_yA1_yAXyA3_AAE4boldyQrSbFQOyAY09PlainTextD0V_Qo_A13_G_AXyAY012LongItemTextD0VA13_GtGGA13_GSg05PhoneqB0029SearchCallHistoryBinaryButtonD0VtGGAA011_BackgroundZ8ModifierVyAA010BackgroundZ0VGGGGMR);
  MEMORY[0x28223BE20](v31);
  v32 = &v28 - v9;
  v29 = type metadata accessor for SingleResultVoicemailView;
  outlined init with copy of SingleResultVoicemailModel(v1, &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SingleResultVoicemailView);
  v10 = *(v3 + 80);
  v11 = (v10 + 16) & ~v10;
  v12 = swift_allocObject();
  outlined init with take of SingleResultVoicemailView(&v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA0D0P07SnippetB0E10separators_10isOverrideQr0G3Kit14SeparatorStyleO_SbtFQOyAH017SummaryItemButtonD0V_Qo_AA14_PaddingLayoutVG_AA6VStackVyACyAEyAEyAEyAA08ProgressD0VyAA05EmptyD0VAYGARGARGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AEyAH06Simpleo8StandardD0VARGtGGAEyAUyACyAEyAgAE4boldyQrSbFQOyAH09PlainTextD0V_Qo_ARG_AEyAH04Longo4TextD0VARGtGGARGSg05PhonegB0023SearchCallHistoryBinarypD0VtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA0D0P07SnippetB0E10separators_10isOverrideQr0G3Kit14SeparatorStyleO_SbtFQOyAH017SummaryItemButtonD0V_Qo_AA14_PaddingLayoutVG_AA6VStackVyACyAEyAEyAEyAA08ProgressD0VyAA05EmptyD0VAYGARGARGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AEyAH06Simpleo8StandardD0VARGtGGAEyAUyACyAEyAgAE4boldyQrSbFQOyAH09PlainTextD0V_Qo_ARG_AEyAH04Longo4TextD0VARGtGGARGSg05PhonegB0023SearchCallHistoryBinarypD0VtGMR);
  lazy protocol witness table accessor for type TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<<<opaque return type of View.separators(_:isOverride:)>>.0, _PaddingLayout>, VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ProgressView<EmptyView, EmptyView>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<SimpleItemStandardView, _PaddingLayout>)>>, ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.bold(_:)>>.0, _PaddingLayout>, ModifiedContent<LongItemTextView, _PaddingLayout>)>>, _PaddingLayout>?, SearchCallHistoryBinaryButtonView)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA0D0P07SnippetB0E10separators_10isOverrideQr0G3Kit14SeparatorStyleO_SbtFQOyAH017SummaryItemButtonD0V_Qo_AA14_PaddingLayoutVG_AA6VStackVyACyAEyAEyAEyAA08ProgressD0VyAA05EmptyD0VAYGARGARGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AEyAH06Simpleo8StandardD0VARGtGGAEyAUyACyAEyAgAE4boldyQrSbFQOyAH09PlainTextD0V_Qo_ARG_AEyAH04Longo4TextD0VARGtGGARGSg05PhonegB0023SearchCallHistoryBinarypD0VtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA0D0P07SnippetB0E10separators_10isOverrideQr0G3Kit14SeparatorStyleO_SbtFQOyAH017SummaryItemButtonD0V_Qo_AA14_PaddingLayoutVG_AA6VStackVyACyAEyAEyAEyAA08ProgressD0VyAA05EmptyD0VAYGARGARGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AEyAH06Simpleo8StandardD0VARGtGGAEyAUyACyAEyAgAE4boldyQrSbFQOyAH09PlainTextD0V_Qo_ARG_AEyAH04Longo4TextD0VARGtGGARGSg05PhonegB0023SearchCallHistoryBinarypD0VtGMR, MEMORY[0x277CE14C8]);
  v13 = v28;
  ComponentStack.init(content:)();
  v14 = static Edge.Set.all.getter();
  v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07SnippetB014ComponentStackVyAA9TupleViewVyACyAA0I0PADE10separators_10isOverrideQr0E3Kit14SeparatorStyleO_SbtFQOyAD017SummaryItemButtonI0V_Qo_AA14_PaddingLayoutVG_AA6VStackVyAHyACyACyACyAA08ProgressI0VyAA05EmptyI0VA_GATGATGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_ACyAD06Simpleq8StandardI0VATGtGGACyAWyAHyACyAjAE4boldyQrSbFQOyAD09PlainTextI0V_Qo_ATG_ACyAD04Longq4TextI0VATGtGGATGSg05PhoneeB0023SearchCallHistoryBinaryrI0VtGGAA011_BackgroundO8ModifierVyAA010BackgroundO0VGGMd, &_s7SwiftUI15ModifiedContentVy07SnippetB014ComponentStackVyAA9TupleViewVyACyAA0I0PADE10separators_10isOverrideQr0E3Kit14SeparatorStyleO_SbtFQOyAD017SummaryItemButtonI0V_Qo_AA14_PaddingLayoutVG_AA6VStackVyAHyACyACyACyAA08ProgressI0VyAA05EmptyI0VA_GATGATGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_ACyAD06Simpleq8StandardI0VATGtGGACyAWyAHyACyAjAE4boldyQrSbFQOyAD09PlainTextI0V_Qo_ATG_ACyAD04Longq4TextI0VATGtGGATGSg05PhoneeB0023SearchCallHistoryBinaryrI0VtGGAA011_BackgroundO8ModifierVyAA010BackgroundO0VGGMR) + 36)] = v14;
  v15 = *(v13 + *(v30 + 52));
  outlined init with copy of SingleResultVoicemailModel(v13, &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v29);
  v30 = v10;
  v16 = swift_allocObject();
  outlined init with take of SingleResultVoicemailView(&v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v11);
  *&v8[*(v6 + 60)] = v15;
  v17 = &v8[*(v6 + 64)];
  *v17 = partial apply for implicit closure #2 in implicit closure #1 in SingleResultVoicemailView.body.getter;
  *(v17 + 1) = v16;
  v18 = *v13;
  if (*v13)
  {
    v19 = v31;

    v20 = v18;
    v21 = v32;
    dispatch thunk of Context.$sharedState.getter();

    outlined init with copy of SingleResultVoicemailModel(v13, &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SingleResultVoicemailView);
    v22 = swift_allocObject();
    outlined init with take of SingleResultVoicemailView(&v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v11);
    outlined init with take of ModifiedContent<<<opaque return type of View.fontWidth(_:)>>.0, _OpacityEffect>(v8, v21, &_s7SwiftUI16SubscriptionViewVy7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGAA15ModifiedContentVy07SnippetB014ComponentStackVyAA05TupleD0VyAPyAA0D0PAQE10separators_10isOverrideQr0N3Kit14SeparatorStyleO_SbtFQOyAQ017SummaryItemButtonD0V_Qo_AA14_PaddingLayoutVG_AA6VStackVyAUyAPyAPyAPyAA08ProgressD0VyAA05EmptyD0VA12_GA5_GA5_GAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_APyAQ06Simpley8StandardD0VA5_GtGGAPyA8_yAUyAPyAwAE4boldyQrSbFQOyAQ09PlainTextD0V_Qo_A5_G_APyAQ04Longy4TextD0VA5_GtGGA5_GSg05PhonenB0023SearchCallHistoryBinaryzD0VtGGAA011_BackgroundW8ModifierVyAA010BackgroundW0VGGGMd, &_s7SwiftUI16SubscriptionViewVy7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGAA15ModifiedContentVy07SnippetB014ComponentStackVyAA05TupleD0VyAPyAA0D0PAQE10separators_10isOverrideQr0N3Kit14SeparatorStyleO_SbtFQOyAQ017SummaryItemButtonD0V_Qo_AA14_PaddingLayoutVG_AA6VStackVyAUyAPyAPyAPyAA08ProgressD0VyAA05EmptyD0VA12_GA5_GA5_GAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_APyAQ06Simpley8StandardD0VA5_GtGGAPyA8_yAUyAPyAwAE4boldyQrSbFQOyAQ09PlainTextD0V_Qo_A5_G_APyAQ04Longy4TextD0VA5_GtGGA5_GSg05PhonenB0023SearchCallHistoryBinaryzD0VtGGAA011_BackgroundW8ModifierVyAA010BackgroundW0VGGGMR);
    v23 = (v21 + *(v19 + 56));
    *v23 = partial apply for closure #2 in SingleResultVoicemailView.body.getter;
    v23[1] = v22;
    outlined init with copy of SingleResultVoicemailModel(v13, &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SingleResultVoicemailView);
    v24 = swift_allocObject();
    outlined init with take of SingleResultVoicemailView(&v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v11);
    v25 = v33;
    outlined init with take of ModifiedContent<<<opaque return type of View.fontWidth(_:)>>.0, _OpacityEffect>(v21, v33, &_s7SwiftUI16SubscriptionViewVy7Combine9PublishedV9PublisherVySDys11AnyHashableVypG_GACyAD10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE05TimerG0CGAA15ModifiedContentVy07SnippetB014ComponentStackVyAA05TupleD0VyAXyAA0D0PAYE10separators_10isOverrideQr0Q3Kit14SeparatorStyleO_SbtFQOyAY017SummaryItemButtonD0V_Qo_AA14_PaddingLayoutVG_AA6VStackVyA1_yAXyAXyAXyAA08ProgressD0VyAA05EmptyD0VA20_GA13_GA13_GAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AXyAY018SimpleItemStandardD0VA13_GtGGAXyA16_yA1_yAXyA3_AAE4boldyQrSbFQOyAY09PlainTextD0V_Qo_A13_G_AXyAY012LongItemTextD0VA13_GtGGA13_GSg05PhoneqB0029SearchCallHistoryBinaryButtonD0VtGGAA011_BackgroundZ8ModifierVyAA010BackgroundZ0VGGGGMd, &_s7SwiftUI16SubscriptionViewVy7Combine9PublishedV9PublisherVySDys11AnyHashableVypG_GACyAD10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE05TimerG0CGAA15ModifiedContentVy07SnippetB014ComponentStackVyAA05TupleD0VyAXyAA0D0PAYE10separators_10isOverrideQr0Q3Kit14SeparatorStyleO_SbtFQOyAY017SummaryItemButtonD0V_Qo_AA14_PaddingLayoutVG_AA6VStackVyA1_yAXyAXyAXyAA08ProgressD0VyAA05EmptyD0VA20_GA13_GA13_GAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AXyAY018SimpleItemStandardD0VA13_GtGGAXyA16_yA1_yAXyA3_AAE4boldyQrSbFQOyAY09PlainTextD0V_Qo_A13_G_AXyAY012LongItemTextD0VA13_GtGGA13_GSg05PhoneqB0029SearchCallHistoryBinaryButtonD0VtGGAA011_BackgroundZ8ModifierVyAA010BackgroundZ0VGGGGMR);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA16SubscriptionViewVy7Combine9PublishedV9PublisherVySDys11AnyHashableVypG_GAEyAF10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE05TimerI0CGACy07SnippetB014ComponentStackVyAA05TupleF0VyACyAA0F0PAYE10separators_10isOverrideQr0Q3Kit14SeparatorStyleO_SbtFQOyAY017SummaryItemButtonF0V_Qo_AA14_PaddingLayoutVG_AA6VStackVyA1_yACyACyACyAA08ProgressF0VyAA05EmptyF0VA20_GA13_GA13_GAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_ACyAY018SimpleItemStandardF0VA13_GtGGACyA16_yA1_yACyA3_AAE4boldyQrSbFQOyAY09PlainTextF0V_Qo_A13_G_ACyAY012LongItemTextF0VA13_GtGGA13_GSg05PhoneqB0029SearchCallHistoryBinaryButtonF0VtGGAA011_BackgroundZ8ModifierVyAA010BackgroundZ0VGGGGAA25_AppearanceActionModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA16SubscriptionViewVy7Combine9PublishedV9PublisherVySDys11AnyHashableVypG_GAEyAF10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE05TimerI0CGACy07SnippetB014ComponentStackVyAA05TupleF0VyACyAA0F0PAYE10separators_10isOverrideQr0Q3Kit14SeparatorStyleO_SbtFQOyAY017SummaryItemButtonF0V_Qo_AA14_PaddingLayoutVG_AA6VStackVyA1_yACyACyACyAA08ProgressF0VyAA05EmptyF0VA20_GA13_GA13_GAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_ACyAY018SimpleItemStandardF0VA13_GtGGACyA16_yA1_yACyA3_AAE4boldyQrSbFQOyAY09PlainTextF0V_Qo_A13_G_ACyAY012LongItemTextF0VA13_GtGGA13_GSg05PhoneqB0029SearchCallHistoryBinaryButtonF0VtGGAA011_BackgroundZ8ModifierVyAA010BackgroundZ0VGGGGAA25_AppearanceActionModifierVGMR);
    v27 = (v25 + *(result + 36));
    *v27 = 0;
    v27[1] = 0;
    v27[2] = partial apply for closure #3 in SingleResultVoicemailView.body.getter;
    v27[3] = v24;
  }

  else
  {
    type metadata accessor for Context();
    _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_9(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68], MEMORY[0x277D63F58]);

    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in SingleResultVoicemailView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v134 = a1;
  v147 = a2;
  v143 = type metadata accessor for SearchCallHistoryBinaryButtonView(0);
  v3 = MEMORY[0x28223BE20](v143);
  v148 = &v123 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v146 = &v123 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyAA0G0PAAE4boldyQrSbFQOy07SnippetB009PlainTextG0V_Qo_AA14_PaddingLayoutVG_ACyAK08LongItemkG0VAPGtGGAPGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyAA0G0PAAE4boldyQrSbFQOy07SnippetB009PlainTextG0V_Qo_AA14_PaddingLayoutVG_ACyAK08LongItemkG0VAPGtGGAPGMR);
  v7 = *(v6 - 8);
  v141 = v6;
  v142 = v7;
  MEMORY[0x28223BE20](v6);
  v124 = (&v123 - v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyAA0G0PAAE4boldyQrSbFQOy07SnippetB009PlainTextG0V_Qo_AA14_PaddingLayoutVG_ACyAK08LongItemkG0VAPGtGGAPGSgMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyAA0G0PAAE4boldyQrSbFQOy07SnippetB009PlainTextG0V_Qo_AA14_PaddingLayoutVG_ACyAK08LongItemkG0VAPGtGGAPGSgMR);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v145 = &v123 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v152 = &v123 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAA08ProgressE0VyAA05EmptyE0VAKGAA14_PaddingLayoutVGANGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AGy07SnippetB0018SimpleItemStandardE0VANGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAA08ProgressE0VyAA05EmptyE0VAKGAA14_PaddingLayoutVGANGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AGy07SnippetB0018SimpleItemStandardE0VANGtGGMR);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v144 = &v123 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v150 = (&v123 - v16);
  v17 = type metadata accessor for SeparatorStyle();
  v139 = *(v17 - 8);
  v140 = v17;
  MEMORY[0x28223BE20](v17);
  v138 = &v123 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for ImageElement.ImageStyle();
  v127 = *(v19 - 8);
  v128 = v19;
  MEMORY[0x28223BE20](v19);
  v126 = &v123 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for ImageElement();
  MEMORY[0x28223BE20](v21 - 8);
  v130 = &v123 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for ImageElementView();
  v24 = *(v23 - 8);
  v132 = v23;
  v133 = v24;
  MEMORY[0x28223BE20](v23);
  v129 = &v123 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = type metadata accessor for SummaryItemButtonView();
  v137 = *(v135 - 8);
  MEMORY[0x28223BE20](v135);
  v131 = &v123 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewP07SnippetB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAF017SummaryItemButtonE0V_Qo_AA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewP07SnippetB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAF017SummaryItemButtonE0V_Qo_AA14_PaddingLayoutVGMR) - 8;
  v27 = MEMORY[0x28223BE20](v136);
  v151 = &v123 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v149 = &v123 - v29;
  v30 = (a1 + *(type metadata accessor for SingleResultVoicemailView(0) + 32));
  v32 = v30[2];
  v31 = v30[3];
  v179 = MEMORY[0x277D837D0];
  v180 = MEMORY[0x277D63F88];
  v177 = v32;
  v178 = v31;

  v33 = SingleResultVoicemailView.getRepeatView()();
  v175 = MEMORY[0x277CE11D0];
  v176 = MEMORY[0x277D63A58];
  v174 = v33;
  v173 = 0;
  v171 = 0u;
  v172 = 0u;
  v170 = 0;
  v168 = 0u;
  v169 = 0u;
  v153 = v30;
  v34 = v30[5];
  v164 = v30[4];
  v165 = v34;
  v125 = lazy protocol witness table accessor for type String and conformance String(v33, v35, v36);

  v37 = Text.init<A>(_:)();
  v39 = v38;
  v41 = v40;
  v164 = static Color.secondary.getter();
  v42 = Text.foregroundStyle<A>(_:)();
  v44 = v43;
  v46 = v45;
  outlined consume of Text.Storage(v37, v39, v41 & 1);

  static Font.subheadline.getter();
  v47 = Text.font(_:)();
  v49 = v48;
  v51 = v50;
  v53 = v52;

  outlined consume of Text.Storage(v42, v44, v46 & 1);

  v166 = MEMORY[0x277CE0BD0];
  v167 = MEMORY[0x277D638F0];
  v54 = swift_allocObject();
  v164 = v54;
  *(v54 + 16) = v47;
  *(v54 + 24) = v49;
  *(v54 + 32) = v51 & 1;
  *(v54 + 40) = v53;
  v55 = v153[7];
  v160 = v153[6];
  v161 = v55;

  v56 = Text.init<A>(_:)();
  v58 = v57;
  LOBYTE(v47) = v59;
  v160 = static Color.secondary.getter();
  v60 = Text.foregroundStyle<A>(_:)();
  v62 = v61;
  LOBYTE(v53) = v63;
  outlined consume of Text.Storage(v56, v58, v47 & 1);

  static Font.subheadline.getter();
  v64 = Text.font(_:)();
  v66 = v65;
  v68 = v67;
  v70 = v69;

  outlined consume of Text.Storage(v60, v62, v53 & 1);

  v162 = MEMORY[0x277CE0BD0];
  v163 = MEMORY[0x277D638F0];
  v71 = swift_allocObject();
  v160 = v71;
  *(v71 + 16) = v64;
  *(v71 + 24) = v66;
  *(v71 + 32) = v68 & 1;
  *(v71 + 40) = v70;
  v159 = 0;
  v157 = 0u;
  v158 = 0u;
  v72 = v126;
  v73 = v127;
  v74 = v128;
  (*(v127 + 104))(v126, *MEMORY[0x277D62AA8], v128);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10SnippetKit11_ProtoIdiomOGMd, &_ss23_ContiguousArrayStorageCy10SnippetKit11_ProtoIdiomOGMR);
  v75 = type metadata accessor for _ProtoIdiom();
  v76 = *(v75 - 8);
  v77 = (*(v76 + 80) + 32) & ~*(v76 + 80);
  v78 = swift_allocObject();
  *(v78 + 16) = xmmword_25E59F720;
  (*(v76 + 104))(v78 + v77, *MEMORY[0x277D62A28], v75);
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10SnippetKit11_ProtoIdiomO_Tt0gq5Tf4g_n(v78);
  swift_setDeallocating();
  (*(v76 + 8))(v78 + v77, v75);
  swift_deallocClassInstance();
  static ImageElement.contactImageAvatar(contactIds:imageStyle:idioms:)();

  (*(v73 + 8))(v72, v74);
  v79 = v129;
  ImageElementView.init(_:)();
  _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_9(&lazy protocol witness table cache variable for type ImageElementView and conformance ImageElementView, MEMORY[0x277D63C70], MEMORY[0x277D63C58]);
  v80 = v132;
  v81 = View.eraseToAnyView()();
  (*(v133 + 8))(v79, v80);
  v156 = MEMORY[0x277D63A58];
  v155 = MEMORY[0x277CE11D0];
  v154 = v81;
  v82 = 1;
  v83 = v131;
  SummaryItemButtonView.init(text1:button1:button2:button3:text2:text3:text4:thumbnail:buttonItemsAreTrailing:)();
  v85 = v138;
  v84 = v139;
  v86 = v140;
  (*(v139 + 104))(v138, *MEMORY[0x277D62F48], v140);
  _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_9(&lazy protocol witness table cache variable for type SummaryItemButtonView and conformance SummaryItemButtonView, MEMORY[0x277D63DF0], MEMORY[0x277D63DE0]);
  v87 = v149;
  v88 = v135;
  View.separators(_:isOverride:)();
  (*(v84 + 8))(v85, v86);
  (*(v137 + 8))(v83, v88);
  LOBYTE(v81) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v89 = v87 + *(v136 + 44);
  *v89 = v81;
  v90 = v134;
  *(v89 + 8) = v91;
  *(v89 + 16) = v92;
  *(v89 + 24) = v93;
  *(v89 + 32) = v94;
  *(v89 + 40) = 0;
  v95 = static HorizontalAlignment.center.getter();
  v96 = v150;
  *v150 = v95;
  v96[1] = 0;
  *(v96 + 16) = 1;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAKyAA08ProgressD0VyAA05EmptyD0VAOGAA08_PaddingG0VGARGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AKy07SnippetB0018SimpleItemStandardD0VARGtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAKyAA08ProgressD0VyAA05EmptyD0VAOGAA08_PaddingG0VGARGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AKy07SnippetB0018SimpleItemStandardD0VARGtGGMR);
  v98 = v96;
  closure #1 in closure #1 in SingleResultVoicemailView.body.getter(v90, v96 + *(v97 + 44));
  v99 = v153;
  v100 = v153[13];
  v101 = v153[12] & 0xFFFFFFFFFFFFLL;
  if ((v100 & 0x2000000000000000) != 0)
  {
    v101 = HIBYTE(v100) & 0xF;
  }

  if (v101)
  {
    v102 = static HorizontalAlignment.leading.getter();
    v103 = v124;
    *v124 = v102;
    *(v103 + 8) = 0;
    *(v103 + 16) = 1;
    v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA0D0PAAE4boldyQrSbFQOy07SnippetB009PlainTextD0V_Qo_AA08_PaddingG0VG_AKyAO08LongItemnD0VATGtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA0D0PAAE4boldyQrSbFQOy07SnippetB009PlainTextD0V_Qo_AA08_PaddingG0VG_AKyAO08LongItemnD0VATGtGGMR);
    closure #2 in closure #1 in SingleResultVoicemailView.body.getter(v90, v103 + *(v104 + 44));
    v105 = static Edge.Set.vertical.getter();
    EdgeInsets.init(_all:)();
    v106 = v141;
    v107 = v103 + *(v141 + 36);
    *v107 = v105;
    *(v107 + 8) = v108;
    *(v107 + 16) = v109;
    *(v107 + 24) = v110;
    *(v107 + 32) = v111;
    *(v107 + 40) = 0;
    v112 = v152;
    outlined init with take of ModifiedContent<<<opaque return type of View.fontWidth(_:)>>.0, _OpacityEffect>(v103, v152, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyAA0G0PAAE4boldyQrSbFQOy07SnippetB009PlainTextG0V_Qo_AA14_PaddingLayoutVG_ACyAK08LongItemkG0VAPGtGGAPGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyAA0G0PAAE4boldyQrSbFQOy07SnippetB009PlainTextG0V_Qo_AA14_PaddingLayoutVG_ACyAK08LongItemkG0VAPGtGGAPGMR);
    v82 = 0;
    v113 = v106;
  }

  else
  {
    v112 = v152;
    v113 = v141;
  }

  (*(v142 + 56))(v112, v82, 1, v113);
  v114 = type metadata accessor for SingleResultVoicemailModel(0);
  v115 = v146;
  outlined init with copy of SingleResultVoicemailModel(v99 + *(v114 + 60), &v146[*(v143 + 20)], type metadata accessor for SearchCallHistoryBinaryButtonModel);
  ActionHandler.init()();
  v116 = v151;
  outlined init with copy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v87, v151, &_s7SwiftUI15ModifiedContentVyAA4ViewP07SnippetB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAF017SummaryItemButtonE0V_Qo_AA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewP07SnippetB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAF017SummaryItemButtonE0V_Qo_AA14_PaddingLayoutVGMR);
  v117 = v144;
  outlined init with copy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v98, v144, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAA08ProgressE0VyAA05EmptyE0VAKGAA14_PaddingLayoutVGANGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AGy07SnippetB0018SimpleItemStandardE0VANGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAA08ProgressE0VyAA05EmptyE0VAKGAA14_PaddingLayoutVGANGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AGy07SnippetB0018SimpleItemStandardE0VANGtGGMR);
  v118 = v145;
  outlined init with copy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v112, v145, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyAA0G0PAAE4boldyQrSbFQOy07SnippetB009PlainTextG0V_Qo_AA14_PaddingLayoutVG_ACyAK08LongItemkG0VAPGtGGAPGSgMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyAA0G0PAAE4boldyQrSbFQOy07SnippetB009PlainTextG0V_Qo_AA14_PaddingLayoutVG_ACyAK08LongItemkG0VAPGtGGAPGSgMR);
  v119 = v148;
  outlined init with copy of SingleResultVoicemailModel(v115, v148, type metadata accessor for SearchCallHistoryBinaryButtonView);
  v120 = v147;
  outlined init with copy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v116, v147, &_s7SwiftUI15ModifiedContentVyAA4ViewP07SnippetB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAF017SummaryItemButtonE0V_Qo_AA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewP07SnippetB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAF017SummaryItemButtonE0V_Qo_AA14_PaddingLayoutVGMR);
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewP07SnippetB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAF017SummaryItemButtonE0V_Qo_AA14_PaddingLayoutVG_AA6VStackVyAA05TupleE0VyACyACyACyAA08ProgressE0VyAA05EmptyE0VAYGAPGAPGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_ACyAF06Simplen8StandardE0VAPGtGGACyASyAUyACyAeAE4boldyQrSbFQOyAF09PlainTextE0V_Qo_APG_ACyAF04Longn4TextE0VAPGtGGAPGSg05PhonefB0023SearchCallHistoryBinaryoE0VtMd, &_s7SwiftUI15ModifiedContentVyAA4ViewP07SnippetB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAF017SummaryItemButtonE0V_Qo_AA14_PaddingLayoutVG_AA6VStackVyAA05TupleE0VyACyACyACyAA08ProgressE0VyAA05EmptyE0VAYGAPGAPGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_ACyAF06Simplen8StandardE0VAPGtGGACyASyAUyACyAeAE4boldyQrSbFQOyAF09PlainTextE0V_Qo_APG_ACyAF04Longn4TextE0VAPGtGGAPGSg05PhonefB0023SearchCallHistoryBinaryoE0VtMR);
  outlined init with copy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v117, v120 + v121[12], &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAA08ProgressE0VyAA05EmptyE0VAKGAA14_PaddingLayoutVGANGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AGy07SnippetB0018SimpleItemStandardE0VANGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAA08ProgressE0VyAA05EmptyE0VAKGAA14_PaddingLayoutVGANGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AGy07SnippetB0018SimpleItemStandardE0VANGtGGMR);
  outlined init with copy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v118, v120 + v121[16], &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyAA0G0PAAE4boldyQrSbFQOy07SnippetB009PlainTextG0V_Qo_AA14_PaddingLayoutVG_ACyAK08LongItemkG0VAPGtGGAPGSgMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyAA0G0PAAE4boldyQrSbFQOy07SnippetB009PlainTextG0V_Qo_AA14_PaddingLayoutVG_ACyAK08LongItemkG0VAPGtGGAPGSgMR);
  outlined init with copy of SingleResultVoicemailModel(v119, v120 + v121[20], type metadata accessor for SearchCallHistoryBinaryButtonView);
  outlined destroy of SingleResultVoicemailModel(v115, type metadata accessor for SearchCallHistoryBinaryButtonView);
  outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v152, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyAA0G0PAAE4boldyQrSbFQOy07SnippetB009PlainTextG0V_Qo_AA14_PaddingLayoutVG_ACyAK08LongItemkG0VAPGtGGAPGSgMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyAA0G0PAAE4boldyQrSbFQOy07SnippetB009PlainTextG0V_Qo_AA14_PaddingLayoutVG_ACyAK08LongItemkG0VAPGtGGAPGSgMR);
  outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v150, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAA08ProgressE0VyAA05EmptyE0VAKGAA14_PaddingLayoutVGANGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AGy07SnippetB0018SimpleItemStandardE0VANGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAA08ProgressE0VyAA05EmptyE0VAKGAA14_PaddingLayoutVGANGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AGy07SnippetB0018SimpleItemStandardE0VANGtGGMR);
  outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v149, &_s7SwiftUI15ModifiedContentVyAA4ViewP07SnippetB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAF017SummaryItemButtonE0V_Qo_AA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewP07SnippetB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAF017SummaryItemButtonE0V_Qo_AA14_PaddingLayoutVGMR);
  outlined destroy of SingleResultVoicemailModel(v119, type metadata accessor for SearchCallHistoryBinaryButtonView);
  outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v118, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyAA0G0PAAE4boldyQrSbFQOy07SnippetB009PlainTextG0V_Qo_AA14_PaddingLayoutVG_ACyAK08LongItemkG0VAPGtGGAPGSgMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyAA0G0PAAE4boldyQrSbFQOy07SnippetB009PlainTextG0V_Qo_AA14_PaddingLayoutVG_ACyAK08LongItemkG0VAPGtGGAPGSgMR);
  outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v117, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAA08ProgressE0VyAA05EmptyE0VAKGAA14_PaddingLayoutVGANGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AGy07SnippetB0018SimpleItemStandardE0VANGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAA08ProgressE0VyAA05EmptyE0VAKGAA14_PaddingLayoutVGANGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AGy07SnippetB0018SimpleItemStandardE0VANGtGGMR);
  return outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v151, &_s7SwiftUI15ModifiedContentVyAA4ViewP07SnippetB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAF017SummaryItemButtonE0V_Qo_AA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewP07SnippetB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAF017SummaryItemButtonE0V_Qo_AA14_PaddingLayoutVGMR);
}

uint64_t outlined init with take of SingleResultVoicemailView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SingleResultVoicemailView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in SingleResultVoicemailView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SingleResultVoicemailView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return closure #1 in SingleResultVoicemailView.body.getter(v4, a1);
}

uint64_t SingleResultVoicemailView.getRepeatView()()
{
  v1 = type metadata accessor for SingleResultVoicemailView(0);
  v16 = *(v1 - 8);
  v2 = *(v16 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyAA6ZStackVyAA05TupleC0VyAA15ModifiedContentVyALyAA06_ShapeC0VyAA6CircleVAA012HierarchicalM5StyleVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVG_ALyAA5ImageVAYGtGG_Qo_Md, &_s7SwiftUI4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyAA6ZStackVyAA05TupleC0VyAA15ModifiedContentVyALyAA06_ShapeC0VyAA6CircleVAA012HierarchicalM5StyleVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVG_ALyAA5ImageVAYGtGG_Qo_MR);
  v3 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v5 = &v16 - v4;
  v6 = static Alignment.center.getter();
  v8 = v7;
  closure #1 in SingleResultVoicemailView.getRepeatView()(&v32);
  v27 = v34;
  v28 = v35;
  v29 = v36;
  v30 = v37;
  v25 = v32;
  v26 = v33;
  v31[2] = v34;
  v31[3] = v35;
  v31[4] = v36;
  v31[5] = v37;
  v31[0] = v32;
  v31[1] = v33;
  outlined init with copy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(&v25, &v18, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA06_ShapeD0VyAA6CircleVAA012HierarchicalG5StyleVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVG_AEyAA5ImageVARGtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA06_ShapeD0VyAA6CircleVAA012HierarchicalG5StyleVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVG_AEyAA5ImageVARGtGMR);
  outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v31, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA06_ShapeD0VyAA6CircleVAA012HierarchicalG5StyleVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVG_AEyAA5ImageVARGtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA06_ShapeD0VyAA6CircleVAA012HierarchicalG5StyleVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVG_AEyAA5ImageVARGtGMR);
  v21 = v27;
  v22 = v28;
  v23 = v29;
  v24 = v30;
  v19 = v25;
  v20 = v26;
  *&v18 = v6;
  *(&v18 + 1) = v8;
  outlined init with copy of SingleResultVoicemailModel(v0, &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SingleResultVoicemailView);
  v9 = (*(v16 + 80) + 16) & ~*(v16 + 80);
  v10 = swift_allocObject();
  outlined init with take of SingleResultVoicemailView(&v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA06_ShapeE0VyAA6CircleVAA012HierarchicalH5StyleVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVG_AGyAA5ImageVATGtGGMd, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA06_ShapeE0VyAA6CircleVAA012HierarchicalH5StyleVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVG_AGyAA5ImageVATGtGGMR);
  v12 = lazy protocol witness table accessor for type TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type ZStack<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Circle, HierarchicalShapeStyle>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>)>> and conformance ZStack<A>, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA06_ShapeE0VyAA6CircleVAA012HierarchicalH5StyleVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVG_AGyAA5ImageVATGtGGMd, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA06_ShapeE0VyAA6CircleVAA012HierarchicalH5StyleVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVG_AGyAA5ImageVATGtGGMR, MEMORY[0x277CE11B0]);
  View.onTapGesture(count:perform:)();

  v36 = v22;
  v37 = v23;
  v38 = v24;
  v32 = v18;
  v33 = v19;
  v34 = v20;
  v35 = v21;
  outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(&v32, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA06_ShapeE0VyAA6CircleVAA012HierarchicalH5StyleVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVG_AGyAA5ImageVATGtGGMd, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA06_ShapeE0VyAA6CircleVAA012HierarchicalH5StyleVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVG_AGyAA5ImageVATGtGGMR);
  *&v18 = v11;
  *(&v18 + 1) = v12;
  swift_getOpaqueTypeConformance2();
  v13 = v17;
  v14 = View.eraseToAnyView()();
  (*(v3 + 8))(v5, v13);
  return v14;
}

uint64_t closure #1 in closure #1 in SingleResultVoicemailView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v108 = a2;
  v105 = type metadata accessor for SimpleItemStandardView();
  v103 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v102 = &v99 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07SnippetB022SimpleItemStandardViewVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVy07SnippetB022SimpleItemStandardViewVAA14_PaddingLayoutVGMR);
  v4 = MEMORY[0x28223BE20](v101);
  v107 = &v99 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v100 = &v99 - v7;
  MEMORY[0x28223BE20](v6);
  v106 = &v99 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA12ProgressViewVyAA05EmptyF0VAGGAA14_PaddingLayoutVGAJGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA12ProgressViewVyAA05EmptyF0VAGGAA14_PaddingLayoutVGAJGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMR);
  v10 = v9 - 8;
  v11 = MEMORY[0x28223BE20](v9);
  v104 = &v99 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v99 - v13;
  v15 = type metadata accessor for SingleResultVoicemailView(0);
  v16 = (a1 + *(v15 + 36));
  v18 = v16[1];
  v125 = *v16;
  v17 = v125;
  v126 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy12CoreGraphics7CGFloatVGMd, &_s7SwiftUI5StateVy12CoreGraphics7CGFloatVGMR);
  v19 = State.wrappedValue.getter();
  v122 = 0;
  v99 = v15;
  v125 = *(a1 + *(v15 + 48));
  lazy protocol witness table accessor for type Double and conformance Double(v19, v20, v21);
  ProgressView.init<A>(value:total:)();
  v22 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA12ProgressViewVyAA05EmptyF0VAGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA12ProgressViewVyAA05EmptyF0VAGGAA14_PaddingLayoutVGMR) + 36)];
  *v31 = v22;
  *(v31 + 1) = v24;
  *(v31 + 2) = v26;
  *(v31 + 3) = v28;
  *(v31 + 4) = v30;
  v31[40] = 0;
  v32 = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v41 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA12ProgressViewVyAA05EmptyF0VAGGAA14_PaddingLayoutVGAJGMd, &_s7SwiftUI15ModifiedContentVyACyAA12ProgressViewVyAA05EmptyF0VAGGAA14_PaddingLayoutVGAJGMR) + 36)];
  *v41 = v32;
  *(v41 + 1) = v34;
  *(v41 + 2) = v36;
  *(v41 + 3) = v38;
  *(v41 + 4) = v40;
  v41[40] = 0;
  v42 = static Color.gray.getter();
  KeyPath = swift_getKeyPath();
  v44 = &v14[*(v10 + 44)];
  *v44 = KeyPath;
  v44[1] = v42;
  v125 = v17;
  v126 = v18;
  State.wrappedValue.getter();
  v45 = v121;
  v46 = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
  [v46 setUnitsStyle_];
  [v46 setAllowedUnits_];
  [v46 setZeroFormattingBehavior_];
  v47 = [v46 stringFromTimeInterval_];
  if (v47)
  {
    v48 = v47;
    v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v51 = v50;

    v52._countAndFlagsBits = 48;
    v52._object = 0xE100000000000000;
    if (String.hasPrefix(_:)(v52))
    {
      v54 = specialized Collection.dropFirst(_:)(1uLL, v49, v51, v53);
      v56 = v55;
      v58 = v57;
      v60 = v59;

      v49 = MEMORY[0x25F8B7B00](v54, v56, v58, v60);
      v51 = v61;
    }
  }

  else
  {

    v49 = 0;
    v51 = 0xE000000000000000;
  }

  v63 = SingleResultVoicemailView.getVoicemailTimeText(input:)(v49, v51, v62);
  v65 = v64;
  v67 = v66;
  v69 = v68;

  v70 = MEMORY[0x277CE0BD0];
  v71 = MEMORY[0x277D638F0];
  v127 = MEMORY[0x277CE0BD0];
  v128 = MEMORY[0x277D638F0];
  v72 = swift_allocObject();
  v125 = v72;
  *(v72 + 16) = v63;
  *(v72 + 24) = v65;
  *(v72 + 32) = v67 & 1;
  *(v72 + 40) = v69;
  v74 = SingleResultVoicemailView.getVoicemailTimeText(input:)(*(a1 + *(v99 + 32) + 64), *(a1 + *(v99 + 32) + 72), v73);
  v76 = v75;
  v78 = v77;
  v80 = v79;
  v123 = v70;
  v124 = v71;
  v81 = swift_allocObject();
  v121 = *&v81;
  *(v81 + 16) = v74;
  *(v81 + 24) = v76;
  *(v81 + 32) = v78 & 1;
  *(v81 + 40) = v80;
  v120 = 0;
  v118 = 0u;
  v119 = 0u;
  v117 = 0;
  v115 = 0u;
  v116 = 0u;
  v114 = 0;
  v112 = 0u;
  v113 = 0u;
  v111 = 0;
  v109 = 0u;
  v110 = 0u;
  v82 = v102;
  SimpleItemStandardView.init(text1:text2:text3:text4:text5:text6:)();
  LOBYTE(v74) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v84 = v83;
  v86 = v85;
  v88 = v87;
  v90 = v89;
  v91 = v100;
  (*(v103 + 32))(v100, v82, v105);
  v92 = v91 + *(v101 + 36);
  *v92 = v74;
  *(v92 + 8) = v84;
  *(v92 + 16) = v86;
  *(v92 + 24) = v88;
  *(v92 + 32) = v90;
  *(v92 + 40) = 0;
  v93 = v106;
  outlined init with take of ModifiedContent<SimpleItemStandardView, _PaddingLayout>(v91, v106);
  v94 = v104;
  outlined init with copy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v14, v104, &_s7SwiftUI15ModifiedContentVyACyACyAA12ProgressViewVyAA05EmptyF0VAGGAA14_PaddingLayoutVGAJGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA12ProgressViewVyAA05EmptyF0VAGGAA14_PaddingLayoutVGAJGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMR);
  v95 = v107;
  outlined init with copy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v93, v107, &_s7SwiftUI15ModifiedContentVy07SnippetB022SimpleItemStandardViewVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVy07SnippetB022SimpleItemStandardViewVAA14_PaddingLayoutVGMR);
  v96 = v108;
  outlined init with copy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v94, v108, &_s7SwiftUI15ModifiedContentVyACyACyAA12ProgressViewVyAA05EmptyF0VAGGAA14_PaddingLayoutVGAJGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA12ProgressViewVyAA05EmptyF0VAGGAA14_PaddingLayoutVGAJGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMR);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA12ProgressViewVyAA05EmptyF0VAGGAA14_PaddingLayoutVGAJGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_ACy07SnippetB0018SimpleItemStandardF0VAJGtMd, &_s7SwiftUI15ModifiedContentVyACyACyAA12ProgressViewVyAA05EmptyF0VAGGAA14_PaddingLayoutVGAJGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_ACy07SnippetB0018SimpleItemStandardF0VAJGtMR);
  outlined init with copy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v95, v96 + *(v97 + 48), &_s7SwiftUI15ModifiedContentVy07SnippetB022SimpleItemStandardViewVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVy07SnippetB022SimpleItemStandardViewVAA14_PaddingLayoutVGMR);
  outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v93, &_s7SwiftUI15ModifiedContentVy07SnippetB022SimpleItemStandardViewVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVy07SnippetB022SimpleItemStandardViewVAA14_PaddingLayoutVGMR);
  outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v14, &_s7SwiftUI15ModifiedContentVyACyACyAA12ProgressViewVyAA05EmptyF0VAGGAA14_PaddingLayoutVGAJGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA12ProgressViewVyAA05EmptyF0VAGGAA14_PaddingLayoutVGAJGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMR);
  outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v95, &_s7SwiftUI15ModifiedContentVy07SnippetB022SimpleItemStandardViewVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVy07SnippetB022SimpleItemStandardViewVAA14_PaddingLayoutVGMR);
  return outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v94, &_s7SwiftUI15ModifiedContentVyACyACyAA12ProgressViewVyAA05EmptyF0VAGGAA14_PaddingLayoutVGAJGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA12ProgressViewVyAA05EmptyF0VAGGAA14_PaddingLayoutVGAJGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMR);
}

uint64_t SingleResultVoicemailView.getVoicemailTimeText(input:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  lazy protocol witness table accessor for type String and conformance String(a1, a2, a3);

  v3 = Text.init<A>(_:)();
  v5 = v4;
  v7 = v6;
  static Color.secondary.getter();
  v8 = Text.foregroundStyle<A>(_:)();
  v10 = v9;
  v12 = v11;
  outlined consume of Text.Storage(v3, v5, v7 & 1);

  static Font.footnote.getter();
  v13 = Text.font(_:)();
  v15 = v14;
  v17 = v16;

  outlined consume of Text.Storage(v8, v10, v12 & 1);

  static Font.Weight.semibold.getter();
  v18 = Text.fontWeight(_:)();
  outlined consume of Text.Storage(v13, v15, v17 & 1);

  return v18;
}

uint64_t closure #2 in closure #1 in SingleResultVoicemailView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07SnippetB016LongItemTextViewVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVy07SnippetB016LongItemTextViewVAA14_PaddingLayoutVGMR);
  v4 = v3 - 8;
  v5 = MEMORY[0x28223BE20](v3);
  v38 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v37 - v7;
  v9 = type metadata accessor for PlainTextView();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE4boldyQrSbFQOy07SnippetB009PlainTextE0V_Qo_AA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE4boldyQrSbFQOy07SnippetB009PlainTextE0V_Qo_AA14_PaddingLayoutVGMR);
  v14 = v13 - 8;
  v15 = MEMORY[0x28223BE20](v13);
  v37 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v37 - v17;
  v19 = a1 + *(type metadata accessor for SingleResultVoicemailView(0) + 32);

  PlainTextView.init(_:)();
  _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_9(&lazy protocol witness table cache variable for type PlainTextView and conformance PlainTextView, MEMORY[0x277D63B58], MEMORY[0x277D63B50]);
  View.bold(_:)();
  (*(v10 + 8))(v12, v9);
  LOBYTE(v12) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v20 = &v18[*(v14 + 44)];
  *v20 = v12;
  *(v20 + 1) = v21;
  *(v20 + 2) = v22;
  *(v20 + 3) = v23;
  *(v20 + 4) = v24;
  v20[40] = 0;
  v26 = *(v19 + 96);
  v25 = *(v19 + 104);
  v42 = MEMORY[0x277D837D0];
  v43 = MEMORY[0x277D63F88];
  v40 = v26;
  v41 = v25;

  LongItemTextView.init(text1:)();
  LOBYTE(v12) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v27 = &v8[*(v4 + 44)];
  *v27 = v12;
  *(v27 + 1) = v28;
  *(v27 + 2) = v29;
  *(v27 + 3) = v30;
  *(v27 + 4) = v31;
  v27[40] = 0;
  v32 = v37;
  outlined init with copy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v18, v37, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE4boldyQrSbFQOy07SnippetB009PlainTextE0V_Qo_AA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE4boldyQrSbFQOy07SnippetB009PlainTextE0V_Qo_AA14_PaddingLayoutVGMR);
  v33 = v38;
  outlined init with copy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v8, v38, &_s7SwiftUI15ModifiedContentVy07SnippetB016LongItemTextViewVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVy07SnippetB016LongItemTextViewVAA14_PaddingLayoutVGMR);
  v34 = v39;
  outlined init with copy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v32, v39, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE4boldyQrSbFQOy07SnippetB009PlainTextE0V_Qo_AA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE4boldyQrSbFQOy07SnippetB009PlainTextE0V_Qo_AA14_PaddingLayoutVGMR);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE4boldyQrSbFQOy07SnippetB009PlainTextE0V_Qo_AA14_PaddingLayoutVG_ACyAG08LongItemiE0VALGtMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE4boldyQrSbFQOy07SnippetB009PlainTextE0V_Qo_AA14_PaddingLayoutVG_ACyAG08LongItemiE0VALGtMR);
  outlined init with copy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v33, v34 + *(v35 + 48), &_s7SwiftUI15ModifiedContentVy07SnippetB016LongItemTextViewVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVy07SnippetB016LongItemTextViewVAA14_PaddingLayoutVGMR);
  outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v8, &_s7SwiftUI15ModifiedContentVy07SnippetB016LongItemTextViewVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVy07SnippetB016LongItemTextViewVAA14_PaddingLayoutVGMR);
  outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v18, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE4boldyQrSbFQOy07SnippetB009PlainTextE0V_Qo_AA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE4boldyQrSbFQOy07SnippetB009PlainTextE0V_Qo_AA14_PaddingLayoutVGMR);
  outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v33, &_s7SwiftUI15ModifiedContentVy07SnippetB016LongItemTextViewVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVy07SnippetB016LongItemTextViewVAA14_PaddingLayoutVGMR);
  return outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v32, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE4boldyQrSbFQOy07SnippetB009PlainTextE0V_Qo_AA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE4boldyQrSbFQOy07SnippetB009PlainTextE0V_Qo_AA14_PaddingLayoutVGMR);
}

void *implicit closure #2 in implicit closure #1 in SingleResultVoicemailView.body.getter(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for SingleResultVoicemailView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
  result = State.wrappedValue.getter();
  if (LOBYTE(v5) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy12CoreGraphics7CGFloatVGMd, &_s7SwiftUI5StateVy12CoreGraphics7CGFloatVGMR);
    result = State.wrappedValue.getter();
    if (v5 < *(a2 + *(v3 + 48)))
    {

      State.wrappedValue.getter();
      State.wrappedValue.setter();
    }
  }

  return result;
}

void *partial apply for implicit closure #2 in implicit closure #1 in SingleResultVoicemailView.body.getter(uint64_t a1)
{
  v3 = *(type metadata accessor for SingleResultVoicemailView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return implicit closure #2 in implicit closure #1 in SingleResultVoicemailView.body.getter(a1, v4);
}

void closure #2 in SingleResultVoicemailView.body.getter(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  updated = lazy protocol witness table accessor for type VoicemailUpdateAction and conformance VoicemailUpdateAction(a1, a2, a3);
  v6 = lazy protocol witness table accessor for type VoicemailUpdateAction and conformance VoicemailUpdateAction(updated, v4, v5);
  lazy protocol witness table accessor for type VoicemailUpdateAction and conformance VoicemailUpdateAction(v6, v7, v8);

  UpdateResponseCommand<>.init(_:)();
  type metadata accessor for SingleResultVoicemailView(0);
  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
    State.wrappedValue.setter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy12CoreGraphics7CGFloatVGMd, &_s7SwiftUI5StateVy12CoreGraphics7CGFloatVGMR);
    State.wrappedValue.setter();
    if (one-time initialization token for phoneSnippetUI != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.phoneSnippetUI);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      v13 = "#SingleResultVoicemailView received repeat playing voicemail action.";
LABEL_10:
      _os_log_impl(&dword_25E523000, v10, v11, v13, v12, 2u);
      MEMORY[0x25F8B8670](v12, -1, -1);
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
    State.wrappedValue.setter();
    if (one-time initialization token for phoneSnippetUI != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logger.phoneSnippetUI);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      v13 = "#SingleResultVoicemailView received start playing voicemail action.";
      goto LABEL_10;
    }
  }
}

void partial apply for closure #2 in SingleResultVoicemailView.body.getter(uint64_t *a1)
{
  v4 = *(type metadata accessor for SingleResultVoicemailView(0) - 8);
  v5 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  closure #2 in SingleResultVoicemailView.body.getter(a1, v5, v3);
}

uint64_t closure #3 in SingleResultVoicemailView.body.getter()
{
  if (one-time initialization token for phoneSnippetUI != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.phoneSnippetUI);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_25E523000, v1, v2, "#SingleResultVoicemailView onDisappear, disconnect timer.", v3, 2u);
    MEMORY[0x25F8B8670](v3, -1, -1);
  }

  type metadata accessor for SingleResultVoicemailView(0);
  Publishers.Autoconnect.upstream.getter();
  NSTimer.TimerPublisher.connect()();

  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  dispatch thunk of Cancellable.cancel()();
  return __swift_destroy_boxed_opaque_existential_0(v5);
}

uint64_t closure #1 in SingleResultVoicemailView.getRepeatView()@<X0>(uint64_t a2@<X8>)
{
  v3 = static HierarchicalShapeStyle.primary.getter();
  v4 = static Color.blue.getter();
  KeyPath = swift_getKeyPath();
  type metadata accessor for SingleResultVoicemailView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12ScaledMetricVy12CoreGraphics7CGFloatVGMd, &_s7SwiftUI12ScaledMetricVy12CoreGraphics7CGFloatVGMR);
  ScaledMetric.wrappedValue.getter();
  ScaledMetric.wrappedValue.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v6 = Image.init(systemName:)();
  v7 = static Color.white.getter();
  v8 = swift_getKeyPath();
  LODWORD(v15) = v3;
  WORD2(v15) = 256;
  *(&v15 + 1) = KeyPath;
  *v16 = v4;
  *&v16[8] = v12;
  *&v16[24] = v13;
  *&v16[40] = v14;
  v9 = *v16;
  *a2 = v15;
  *(a2 + 16) = v9;
  v10 = *&v16[32];
  *(a2 + 32) = *&v16[16];
  *(a2 + 48) = v10;
  *(a2 + 64) = *&v16[48];
  *(a2 + 72) = v6;
  *(a2 + 80) = v8;
  *(a2 + 88) = v7;
  outlined init with copy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(&v15, &v17, &_s7SwiftUI15ModifiedContentVyACyAA10_ShapeViewVyAA6CircleVAA012HierarchicalE5StyleVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA10_ShapeViewVyAA6CircleVAA012HierarchicalE5StyleVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGMR);
  v17 = v3;
  v18 = 256;
  v19 = KeyPath;
  v20 = v4;
  v21 = v12;
  v22 = v13;
  v23 = v14;
  return outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(&v17, &_s7SwiftUI15ModifiedContentVyACyAA10_ShapeViewVyAA6CircleVAA012HierarchicalE5StyleVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA10_ShapeViewVyAA6CircleVAA012HierarchicalE5StyleVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGMR);
}

void closure #2 in SingleResultVoicemailView.getRepeatView()(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI15InteractionTypeOSgMd, &_s9SnippetUI15InteractionTypeOSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v32 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit14ActionPropertyVSgMd, "6~");
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v32 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI21StandardActionHandlerVSgMd, &_s9SnippetUI21StandardActionHandlerVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v32 - v9;
  v11 = (a1 + *(type metadata accessor for SingleResultVoicemailView(0) + 40));
  v12 = *v11;
  v13 = *(v11 + 1);
  v34 = v12;
  v35 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
  State.wrappedValue.getter();
  if (v33 == 1)
  {
    if (one-time initialization token for phoneSnippetUI != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logger.phoneSnippetUI);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_25E523000, v15, v16, "SingleResultVoicemailView repeat is tapped", v17, 2u);
      MEMORY[0x25F8B8670](v17, -1, -1);
    }

    ActionHandler.wrappedValue.getter();
    v18 = type metadata accessor for StandardActionHandler();
    v19 = *(v18 - 8);
    if ((*(v19 + 48))(v10, 1, v18) == 1)
    {
      outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v10, &_s9SnippetUI21StandardActionHandlerVSgMd, &_s9SnippetUI21StandardActionHandlerVSgMR);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10SnippetKit24ActionElementConvertible_pGMd, "6~");
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_25E59F720;
      v25 = type metadata accessor for Command();
      v32 = v4;
      v26 = v25;
      v27 = MEMORY[0x277D63778];
      *(v24 + 56) = v25;
      *(v24 + 64) = v27;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v24 + 32));
      type metadata accessor for SingleResultVoicemailModel(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
      *boxed_opaque_existential_1 = CodableAceObject.wrappedValue.getter();
      *(boxed_opaque_existential_1 + 8) = 0;
      (*(*(v26 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D63750], v26);
      ActionProperty.init(_:)();
      v29 = type metadata accessor for ActionProperty();
      (*(*(v29 - 8) + 56))(v7, 0, 1, v29);
      v30 = type metadata accessor for InteractionType();
      v31 = v32;
      (*(*(v30 - 8) + 56))(v32, 1, 1, v30);
      StandardActionHandler.perform(_:interactionType:)();
      outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v31, &_s9SnippetUI15InteractionTypeOSgMd, &_s9SnippetUI15InteractionTypeOSgMR);
      outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v7, &_s10SnippetKit14ActionPropertyVSgMd, "6~");
      (*(v19 + 8))(v10, v18);
    }
  }

  else
  {
    if (one-time initialization token for phoneSnippetUI != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Logger.phoneSnippetUI);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_25E523000, v21, v22, "SingleResultVoicemailView repeat is tapped before playing voicemail for the first time, ignore repeat request", v23, 2u);
      MEMORY[0x25F8B8670](v23, -1, -1);
    }
  }
}

uint64_t sub_25E58DE48(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for ActionHandler();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_7:
    v12 = *(v8 + 48);

    return v12(a1 + v9, a2, v7);
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12ScaledMetricVy12CoreGraphics7CGFloatVGMd, &_s7SwiftUI12ScaledMetricVy12CoreGraphics7CGFloatVGMR);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_7;
  }

  v11 = type metadata accessor for SingleResultVoicemailModel(0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v7 = v11;
    v8 = *(v11 - 8);
    v9 = a3[8];
    goto LABEL_7;
  }

  v14 = *(a1 + a3[11]);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_25E58DFB8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for ActionHandler();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12ScaledMetricVy12CoreGraphics7CGFloatVGMd, &_s7SwiftUI12ScaledMetricVy12CoreGraphics7CGFloatVGMR);
    if (*(*(v12 - 8) + 84) == a3)
    {
      v9 = v12;
      v10 = *(v12 - 8);
      v11 = a4[6];
    }

    else
    {
      result = type metadata accessor for SingleResultVoicemailModel(0);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[11]) = (a2 - 1);
        return result;
      }

      v9 = result;
      v10 = *(result - 8);
      v11 = a4[8];
    }
  }

  v14 = *(v10 + 56);

  return v14(a1 + v11, a2, a2, v9);
}

void type metadata completion function for SingleResultVoicemailView(uint64_t a1)
{
  type metadata accessor for EnvironmentObject<Context>(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ActionHandler();
    if (v2 <= 0x3F)
    {
      type metadata accessor for ScaledMetric<CGFloat>(319, v2, v3);
      if (v4 <= 0x3F)
      {
        type metadata accessor for SingleResultVoicemailModel(319);
        if (v5 <= 0x3F)
        {
          type metadata accessor for State<CGFloat>(319, &lazy cache variable for type metadata for State<CGFloat>, MEMORY[0x277D85048]);
          if (v6 <= 0x3F)
          {
            type metadata accessor for State<CGFloat>(319, &lazy cache variable for type metadata for State<Bool>, MEMORY[0x277D839B0]);
            if (v7 <= 0x3F)
            {
              type metadata accessor for Publishers.Autoconnect<NSTimer.TimerPublisher>(319);
              if (v8 <= 0x3F)
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

void type metadata accessor for State<CGFloat>(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = type metadata accessor for State();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for Publishers.Autoconnect<NSTimer.TimerPublisher>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Publishers.Autoconnect<NSTimer.TimerPublisher>)
  {
    type metadata accessor for NSTimer.TimerPublisher();
    _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_9(&lazy protocol witness table cache variable for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher, MEMORY[0x277CC9DF0], MEMORY[0x277CC9DE8]);
    v1 = type metadata accessor for Publishers.Autoconnect();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Publishers.Autoconnect<NSTimer.TimerPublisher>);
    }
  }
}

uint64_t sub_25E58E424()
{
  outlined consume of Text.Storage(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return swift_deallocObject();
}

uint64_t _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10SnippetKit11_ProtoIdiomO_Tt0gq5Tf4g_n(uint64_t a1)
{
  v2 = type metadata accessor for _ProtoIdiom();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10SnippetKit11_ProtoIdiomOGMd, &_ss11_SetStorageCy10SnippetKit11_ProtoIdiomOGMR);
    v9 = static _SetStorage.allocate(capacity:)();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v33 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    v31 = v8;
    v32 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v13 * v10, v2);
      _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_9(&lazy protocol witness table cache variable for type _ProtoIdiom and conformance _ProtoIdiom, MEMORY[0x277D62A30], MEMORY[0x277D62A38]);
      v15 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v16 = -1 << *(v9 + 32);
      v17 = v15 & ~v16;
      v18 = v17 >> 6;
      v19 = *(v36 + 8 * (v17 >> 6));
      v20 = 1 << v17;
      if (((1 << v17) & v19) != 0)
      {
        v21 = ~v16;
        do
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v17 * v13, v2);
          _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_9(&lazy protocol witness table cache variable for type _ProtoIdiom and conformance _ProtoIdiom, MEMORY[0x277D62A30], MEMORY[0x277D62A40]);
          v23 = dispatch thunk of static Equatable.== infix(_:_:)();
          v24 = *v14;
          (*v14)(v6, v2);
          if (v23)
          {
            v24(v37, v2);
            v11 = v22;
            v8 = v31;
            goto LABEL_4;
          }

          v17 = (v17 + 1) & v21;
          v18 = v17 >> 6;
          v19 = *(v36 + 8 * (v17 >> 6));
          v20 = 1 << v17;
          v11 = v22;
        }

        while (((1 << v17) & v19) != 0);
        v8 = v31;
      }

      v25 = v37;
      *(v36 + 8 * v18) = v20 | v19;
      result = (*v32)(*(v9 + 48) + v17 * v13, v25, v2);
      v27 = *(v9 + 16);
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (v28)
      {
        break;
      }

      *(v9 + 16) = v29;
LABEL_4:
      v10 = v34 + 1;
      if (v34 + 1 == v8)
      {
        return v9;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t outlined init with copy of SingleResultVoicemailModel(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of SingleResultVoicemailModel(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type Double and conformance Double(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type Double and conformance Double;
  if (!lazy protocol witness table cache variable for type Double and conformance Double)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Double and conformance Double);
  }

  return result;
}

uint64_t sub_25E58E8A8@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tintColor.getter();
  *a1 = result;
  return result;
}

uint64_t outlined init with take of ModifiedContent<SimpleItemStandardView, _PaddingLayout>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07SnippetB022SimpleItemStandardViewVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVy07SnippetB022SimpleItemStandardViewVAA14_PaddingLayoutVGMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_9(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroyTm_14()
{
  v1 = (type metadata accessor for SingleResultVoicemailView(0) - 8);
  v20 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);

  v2 = v1[7];
  v3 = type metadata accessor for ActionHandler();
  (*(*(v3 - 8) + 8))(v0 + v20 + v2, v3);
  v4 = v1[8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12ScaledMetricVy12CoreGraphics7CGFloatVGMd, &_s7SwiftUI12ScaledMetricVy12CoreGraphics7CGFloatVGMR);
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v20 + v4, v5);
  v6(v0 + v20 + v1[9], v5);
  v7 = v0 + v20 + v1[10];

  v8 = type metadata accessor for SingleResultVoicemailModel(0);
  v9 = v8[13];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  v11 = *(*(v10 - 8) + 8);
  v11(v7 + v9, v10);
  v11(v7 + v8[14], v10);
  v12 = v7 + v8[15];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  v14 = *(*(v13 - 8) + 8);
  v14(v12, v13);
  v15 = type metadata accessor for SearchCallHistoryBinaryButtonModel(0);
  v16 = v15[5];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMR);
  v18 = *(*(v17 - 8) + 8);
  v18(v12 + v16, v17);
  v14(v12 + v15[6], v13);
  v18(v12 + v15[7], v17);

  return swift_deallocObject();
}

uint64_t partial apply for closure #3 in SingleResultVoicemailView.body.getter(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for SingleResultVoicemailView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t SingleVoicemailModel.openVoicemailRSKE.getter()
{
  type metadata accessor for SingleVoicemailModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  return CodableAceObject.wrappedValue.getter();
}

uint64_t type metadata accessor for SingleVoicemailModel(uint64_t a1)
{
  result = type metadata singleton initialization cache for SingleVoicemailModel;
  if (!type metadata singleton initialization cache for SingleVoicemailModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SingleVoicemailModel.openContactRSKE.getter()
{
  type metadata accessor for SingleVoicemailModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  return CodableAceObject.wrappedValue.getter();
}

uint64_t SingleVoicemailModel.responseViewId.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SingleVoicemailModel.responseViewId.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t SingleVoicemailModel.displayName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t SingleVoicemailModel.displayName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t SingleVoicemailModel.displayCallDetail.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t SingleVoicemailModel.displayCallDetail.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t SingleVoicemailModel.displayDateTime.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t SingleVoicemailModel.displayDateTime.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t SingleVoicemailModel.callDuration.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t SingleVoicemailModel.callDuration.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t property wrapper backing initializer of SingleVoicemailModel.openVoicemailRSKE(uint64_t a1)
{
  type metadata accessor for SAIntentGroupRunSiriKitExecutor();

  return CodableAceObject.init(wrappedValue:)();
}

uint64_t key path getter for SingleVoicemailModel.openVoicemailRSKE : SingleVoicemailModel@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SingleVoicemailModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  result = CodableAceObject.wrappedValue.getter();
  *a1 = result;
  return result;
}

uint64_t key path setter for SingleVoicemailModel.openVoicemailRSKE : SingleVoicemailModel(void **a1)
{
  v1 = *a1;
  type metadata accessor for SingleVoicemailModel(0);
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  return CodableAceObject.wrappedValue.setter();
}

uint64_t SingleVoicemailModel.openVoicemailRSKE.setter(uint64_t a1)
{
  type metadata accessor for SingleVoicemailModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  return CodableAceObject.wrappedValue.setter();
}

void (*SingleVoicemailModel.openVoicemailRSKE.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for SingleVoicemailModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  *(v3 + 32) = CodableAceObject.wrappedValue.modify();
  return EmergencyCountdownModel.callAction.modify;
}

uint64_t key path getter for SingleVoicemailModel.openContactRSKE : SingleVoicemailModel@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SingleVoicemailModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  result = CodableAceObject.wrappedValue.getter();
  *a1 = result;
  return result;
}

uint64_t key path setter for SingleVoicemailModel.openContactRSKE : SingleVoicemailModel(void **a1)
{
  v1 = *a1;
  type metadata accessor for SingleVoicemailModel(0);
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  return CodableAceObject.wrappedValue.setter();
}

uint64_t SingleVoicemailModel.openContactRSKE.setter(uint64_t a1)
{
  type metadata accessor for SingleVoicemailModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  return CodableAceObject.wrappedValue.setter();
}

void (*SingleVoicemailModel.openContactRSKE.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for SingleVoicemailModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  *(v3 + 32) = CodableAceObject.wrappedValue.modify();
  return EmergencyCountdownModel.sashTitle.modify;
}

void SingleVoicemailModel.init(displayName:displayCallDetail:displayDateTime:callDuration:unseen:openVoicemailRSKE:openContactRSKE:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, void *a11, uint64_t a12)
{
  *a9 = 0x6F56656C676E6953;
  *(a9 + 8) = 0xEF6C69616D656369;
  *(a9 + 16) = a1;
  *(a9 + 24) = a2;
  *(a9 + 32) = a3;
  *(a9 + 40) = a4;
  *(a9 + 48) = a5;
  *(a9 + 56) = a6;
  type metadata accessor for SingleVoicemailModel(0);
  type metadata accessor for SAIntentGroupRunSiriKitExecutor();
  v15 = a11;
  CodableAceObject.init(wrappedValue:)();
  *(a9 + 64) = a7;
  *(a9 + 72) = a8;
  *(a9 + 80) = a10;
  CodableAceObject.init(wrappedValue:)();
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance SingleVoicemailModel.CodingKeys()
{
  v1 = *v0;
  v2 = 0x65736E6F70736572;
  v3 = 0xD000000000000011;
  if (v1 != 6)
  {
    v3 = 0x746E6F436E65706FLL;
  }

  v4 = 0x617275446C6C6163;
  if (v1 != 4)
  {
    v4 = 0x6E6565736E75;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000011;
  if (v1 != 2)
  {
    v5 = 0x4479616C70736964;
  }

  if (*v0)
  {
    v2 = 0x4E79616C70736964;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SingleVoicemailModel.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized SingleVoicemailModel.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SingleVoicemailModel.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = lazy protocol witness table accessor for type SingleVoicemailModel.CodingKeys and conformance SingleVoicemailModel.CodingKeys(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SingleVoicemailModel.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = lazy protocol witness table accessor for type SingleVoicemailModel.CodingKeys and conformance SingleVoicemailModel.CodingKeys(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t SingleVoicemailModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14PhoneSnippetUI20SingleVoicemailModelV10CodingKeys031_8F6881B1F89A25323700912F1CAA21M0LLOGMd, &_ss22KeyedEncodingContainerVy14PhoneSnippetUI20SingleVoicemailModelV10CodingKeys031_8F6881B1F89A25323700912F1CAA21M0LLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SingleVoicemailModel.CodingKeys and conformance SingleVoicemailModel.CodingKeys(v7, v8, v9);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v19 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v18 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v17 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v16 = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v14 = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    type metadata accessor for SingleVoicemailModel(0);
    v13 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
    lazy protocol witness table accessor for type CodableAceObject<SAIntentGroupRunSiriKitExecutor> and conformance CodableAceObject<A>(&lazy protocol witness table cache variable for type CodableAceObject<SAIntentGroupRunSiriKitExecutor> and conformance CodableAceObject<A>, MEMORY[0x277D63228]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12 = 7;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t lazy protocol witness table accessor for type SingleVoicemailModel.CodingKeys and conformance SingleVoicemailModel.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type SingleVoicemailModel.CodingKeys and conformance SingleVoicemailModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SingleVoicemailModel.CodingKeys and conformance SingleVoicemailModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SingleVoicemailModel.CodingKeys and conformance SingleVoicemailModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SingleVoicemailModel.CodingKeys and conformance SingleVoicemailModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SingleVoicemailModel.CodingKeys and conformance SingleVoicemailModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SingleVoicemailModel.CodingKeys and conformance SingleVoicemailModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SingleVoicemailModel.CodingKeys and conformance SingleVoicemailModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SingleVoicemailModel.CodingKeys and conformance SingleVoicemailModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SingleVoicemailModel.CodingKeys and conformance SingleVoicemailModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SingleVoicemailModel.CodingKeys and conformance SingleVoicemailModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SingleVoicemailModel.CodingKeys and conformance SingleVoicemailModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SingleVoicemailModel.CodingKeys and conformance SingleVoicemailModel.CodingKeys);
  }

  return result;
}

uint64_t SingleVoicemailModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  v37 = *(v41 - 8);
  v3 = MEMORY[0x28223BE20](v41);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v32 - v6;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14PhoneSnippetUI20SingleVoicemailModelV10CodingKeys031_8F6881B1F89A25323700912F1CAA21M0LLOGMd, &_ss22KeyedDecodingContainerVy14PhoneSnippetUI20SingleVoicemailModelV10CodingKeys031_8F6881B1F89A25323700912F1CAA21M0LLOGMR);
  v8 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v10 = &v32 - v9;
  v38 = type metadata accessor for SingleVoicemailModel(0);
  MEMORY[0x28223BE20](v38);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v40 = a1;
  v14 = __swift_project_boxed_opaque_existential_1(a1, v13);
  lazy protocol witness table accessor for type SingleVoicemailModel.CodingKeys and conformance SingleVoicemailModel.CodingKeys(v14, v15, v16);
  v17 = v39;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v17)
  {
    __swift_destroy_boxed_opaque_existential_0(v40);
  }

  else
  {
    v33 = v5;
    v34 = v7;
    v39 = v8;
    v18 = v35;
    v19 = v36;
    v49 = 0;
    v20 = v10;
    *v12 = KeyedDecodingContainer.decode(_:forKey:)();
    *(v12 + 1) = v21;
    v48 = 1;
    *(v12 + 2) = KeyedDecodingContainer.decode(_:forKey:)();
    *(v12 + 3) = v22;
    v47 = 2;
    *(v12 + 4) = KeyedDecodingContainer.decode(_:forKey:)();
    *(v12 + 5) = v23;
    v46 = 3;
    *(v12 + 6) = KeyedDecodingContainer.decode(_:forKey:)();
    *(v12 + 7) = v24;
    v45 = 4;
    *(v12 + 8) = KeyedDecodingContainer.decode(_:forKey:)();
    *(v12 + 9) = v25;
    v44 = 5;
    v12[80] = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    v43 = 6;
    v26 = lazy protocol witness table accessor for type CodableAceObject<SAIntentGroupRunSiriKitExecutor> and conformance CodableAceObject<A>(&lazy protocol witness table cache variable for type CodableAceObject<SAIntentGroupRunSiriKitExecutor> and conformance CodableAceObject<A>, MEMORY[0x277D63230]);
    v27 = v34;
    v28 = v41;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v29 = *(v38 + 40);
    v32 = v26;
    v34 = *(v37 + 32);
    v34(&v12[v29], v27, v28);
    v42 = 7;
    v30 = v33;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v39 + 8))(v20, v19);
    v34(&v12[*(v38 + 44)], v30, v28);
    outlined init with copy of SingleVoicemailModel(v12, v18);
    __swift_destroy_boxed_opaque_existential_0(v40);
    return outlined destroy of SingleVoicemailModel(v12);
  }
}

uint64_t outlined init with copy of SingleVoicemailModel(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SingleVoicemailModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of SingleVoicemailModel(uint64_t a1)
{
  v2 = type metadata accessor for SingleVoicemailModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t instantiation function for generic protocol witness table for SingleVoicemailModel(uint64_t a1)
{
  result = lazy protocol witness table accessor for type SingleVoicemailModel and conformance SingleVoicemailModel(&lazy protocol witness table cache variable for type SingleVoicemailModel and conformance SingleVoicemailModel, &protocol conformance descriptor for SingleVoicemailModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type SingleVoicemailModel and conformance SingleVoicemailModel(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SingleVoicemailModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25E5902F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_25E5903C4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for SingleVoicemailModel(uint64_t a1)
{
  type metadata accessor for CodableAceObject<SAIntentGroupRunSiriKitExecutor>(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t specialized SingleVoicemailModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65736E6F70736572 && a2 == 0xEE00644977656956;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x800000025E5A6C20 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4479616C70736964 && a2 == 0xEF656D6954657461 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x617275446C6C6163 && a2 == 0xEC0000006E6F6974 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E6565736E75 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x800000025E5A6D10 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x746E6F436E65706FLL && a2 == 0xEF454B5352746361)
  {

    return 7;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t SlidingEmergencyCountdownView.init(model:)@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for Context();
  _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_10(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68], MEMORY[0x277D63F58]);
  *a2 = EnvironmentObject.init()();
  a2[1] = v3;
  v4 = type metadata accessor for SlidingEmergencyCountdownView(0);
  InteractionDelegate.init()();
  v5 = (a2 + *(v4 + 24));
  type metadata accessor for EmergencyCountdownViewModel(0);
  _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_10(&lazy protocol witness table cache variable for type EmergencyCountdownViewModel and conformance EmergencyCountdownViewModel, type metadata accessor for EmergencyCountdownViewModel, &protocol conformance descriptor for EmergencyCountdownViewModel);
  result = ObservedObject.init(wrappedValue:)();
  *v5 = result;
  v5[1] = v7;
  return result;
}

uint64_t type metadata accessor for SlidingEmergencyCountdownView(uint64_t a1)
{
  result = type metadata singleton initialization cache for SlidingEmergencyCountdownView;
  if (!type metadata singleton initialization cache for SlidingEmergencyCountdownView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t property wrapper backing initializer of SlidingEmergencyCountdownView.viewModel(uint64_t a1)
{
  type metadata accessor for EmergencyCountdownViewModel(0);
  _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_10(&lazy protocol witness table cache variable for type EmergencyCountdownViewModel and conformance EmergencyCountdownViewModel, type metadata accessor for EmergencyCountdownViewModel, &protocol conformance descriptor for EmergencyCountdownViewModel);

  return ObservedObject.init(wrappedValue:)();
}

uint64_t SlidingEmergencyCountdownView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v2 = type metadata accessor for SlidingEmergencyCountdownView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E2if_9transformQrSb_qd__xXEtAaBRd__lFQOy05PhonedB00G14ComponentStackVyAA05TupleC0VyAA15ModifiedContentVyAMyAMyAA6VStackVyAKyAA4TextV_AQtGGAA30_EnvironmentKeyWritingModifierVyAA0N9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingV0VG_AD012BinaryButtonC0VtGG_AcDE21requestHostBackground_8accepted6deniedQrAD14HostBackgroundOSg_qd__xcqd_0_xctAaBRd__AaBRd_0_r0_lFQOyAMyA7_A2_G_A14_AMyA14_AA016_BackgroundStyleR0VyAA15BackgroundStyleVGGQo_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E2if_9transformQrSb_qd__xXEtAaBRd__lFQOy05PhonedB00G14ComponentStackVyAA05TupleC0VyAA15ModifiedContentVyAMyAMyAA6VStackVyAKyAA4TextV_AQtGGAA30_EnvironmentKeyWritingModifierVyAA0N9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingV0VG_AD012BinaryButtonC0VtGG_AcDE21requestHostBackground_8accepted6deniedQrAD14HostBackgroundOSg_qd__xcqd_0_xctAaBRd__AaBRd_0_r0_lFQOyAMyA7_A2_G_A14_AMyA14_AA016_BackgroundStyleR0VyAA15BackgroundStyleVGGQo_Qo_MR);
  v28 = *(v6 - 8);
  v29 = v6;
  MEMORY[0x28223BE20](v6);
  v26 = &v25 - v7;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewP07SnippetB0E2if_9transformQrSb_qd__xXEtAaDRd__lFQOy05PhonefB00I14ComponentStackVyAA05TupleE0VyACyACyACyAA6VStackVyAMyAA4TextV_AQtGGAA30_EnvironmentKeyWritingModifierVyAA0N9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingV0VG_AF012BinaryButtonE0VtGG_AeFE21requestHostBackground_8accepted6deniedQrAF14HostBackgroundOSg_qd__xcqd_0_xctAaDRd__AaDRd_0_r0_lFQOyACyA7_A2_G_A14_ACyA14_AA016_BackgroundStyleR0VyAA15BackgroundStyleVGGQo_Qo_AUyAA11ColorSchemeOGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewP07SnippetB0E2if_9transformQrSb_qd__xXEtAaDRd__lFQOy05PhonefB00I14ComponentStackVyAA05TupleE0VyACyACyACyAA6VStackVyAMyAA4TextV_AQtGGAA30_EnvironmentKeyWritingModifierVyAA0N9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingV0VG_AF012BinaryButtonE0VtGG_AeFE21requestHostBackground_8accepted6deniedQrAF14HostBackgroundOSg_qd__xcqd_0_xctAaDRd__AaDRd_0_r0_lFQOyACyA7_A2_G_A14_ACyA14_AA016_BackgroundStyleR0VyAA15BackgroundStyleVGGQo_Qo_AUyAA11ColorSchemeOGGMR);
  MEMORY[0x28223BE20](v27);
  v9 = &v25 - v8;
  outlined init with copy of SlidingEmergencyCountdownView(v1, v5);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  outlined init with take of SlidingEmergencyCountdownView(v5, v11 + v10);
  type metadata accessor for Context();
  _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_10(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68], MEMORY[0x277D63F58]);
  v25 = EnvironmentObject.init()();
  v37 = v25;
  v38 = v12;
  v39 = partial apply for closure #1 in SlidingEmergencyCountdownView.body.getter;
  v40 = v11;
  if (*v1)
  {
    v13 = *v1;
    dispatch thunk of Context.currentIdiom.getter();

    VRXIdiom.isWatchOS.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s14PhoneSnippetUI0A14ComponentStackVy05SwiftC09TupleViewVyAD15ModifiedContentVyAHyAHyAD6VStackVyAFyAD4TextV_ALtGGAD30_EnvironmentKeyWritingModifierVyAD0L9AlignmentOGGAD16_FlexFrameLayoutVGAD08_PaddingT0VG_0bC0012BinaryButtonH0VtGGMd, &_s14PhoneSnippetUI0A14ComponentStackVy05SwiftC09TupleViewVyAD15ModifiedContentVyAHyAHyAD6VStackVyAFyAD4TextV_ALtGGAD30_EnvironmentKeyWritingModifierVyAD0L9AlignmentOGGAD16_FlexFrameLayoutVGAD08_PaddingT0VG_0bC0012BinaryButtonH0VtGGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E21requestHostBackground_8accepted6deniedQrAD0fG0OSg_qd__xcqd_0_xctAaBRd__AaBRd_0_r0_lFQOyAA15ModifiedContentVy05PhonedB00L14ComponentStackVyAA05TupleC0VyALyALyALyAA6VStackVyAQyAA4TextV_AUtGGAA30_EnvironmentKeyWritingModifierVyAA0Q9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingY0VG_AD012BinaryButtonC0VtGGA6_G_A12_ALyA12_AA01_g5StyleU0VyAA0G5StyleVGGQo_Md, &_s7SwiftUI4ViewP07SnippetB0E21requestHostBackground_8accepted6deniedQrAD0fG0OSg_qd__xcqd_0_xctAaBRd__AaBRd_0_r0_lFQOyAA15ModifiedContentVy05PhonedB00L14ComponentStackVyAA05TupleC0VyALyALyALyAA6VStackVyAQyAA4TextV_AUtGGAA30_EnvironmentKeyWritingModifierVyAA0Q9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingY0VG_AD012BinaryButtonC0VtGGA6_G_A12_ALyA12_AA01_g5StyleU0VyAA0G5StyleVGGQo_MR);
    lazy protocol witness table accessor for type TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type PhoneComponentStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _PaddingLayout>, BinaryButtonView)>> and conformance PhoneComponentStack<A>, &_s14PhoneSnippetUI0A14ComponentStackVy05SwiftC09TupleViewVyAD15ModifiedContentVyAHyAHyAD6VStackVyAFyAD4TextV_ALtGGAD30_EnvironmentKeyWritingModifierVyAD0L9AlignmentOGGAD16_FlexFrameLayoutVGAD08_PaddingT0VG_0bC0012BinaryButtonH0VtGGMd, &_s14PhoneSnippetUI0A14ComponentStackVy05SwiftC09TupleViewVyAD15ModifiedContentVyAHyAHyAD6VStackVyAFyAD4TextV_ALtGGAD30_EnvironmentKeyWritingModifierVyAD0L9AlignmentOGGAD16_FlexFrameLayoutVGAD08_PaddingT0VG_0bC0012BinaryButtonH0VtGGMR, &protocol conformance descriptor for PhoneComponentStack<A>);
    v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy012PhoneSnippetB00E14ComponentStackVyAA9TupleViewVyACyACyACyAA6VStackVyAHyAA4TextV_ALtGGAA30_EnvironmentKeyWritingModifierVyAA0L9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingT0VG_0fB0012BinaryButtonJ0VtGGAYGMd, &_s7SwiftUI15ModifiedContentVy012PhoneSnippetB00E14ComponentStackVyAA9TupleViewVyACyACyACyAA6VStackVyAHyAA4TextV_ALtGGAA30_EnvironmentKeyWritingModifierVyAA0L9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingT0VG_0fB0012BinaryButtonJ0VtGGAYGMR);
    v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACy012PhoneSnippetB00E14ComponentStackVyAA9TupleViewVyACyACyACyAA6VStackVyAHyAA4TextV_ALtGGAA30_EnvironmentKeyWritingModifierVyAA0L9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingT0VG_0fB0012BinaryButtonJ0VtGGAYGAA016_BackgroundStyleP0VyAA0xY0VGGMd, &_s7SwiftUI15ModifiedContentVyACy012PhoneSnippetB00E14ComponentStackVyAA9TupleViewVyACyACyACyAA6VStackVyAHyAA4TextV_ALtGGAA30_EnvironmentKeyWritingModifierVyAA0L9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingT0VG_0fB0012BinaryButtonJ0VtGGAYGAA016_BackgroundStyleP0VyAA0xY0VGGMR);
    v16 = lazy protocol witness table accessor for type ModifiedContent<PhoneComponentStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _PaddingLayout>, BinaryButtonView)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    v17 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<PhoneComponentStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _PaddingLayout>, BinaryButtonView)>>, _PaddingLayout>, _BackgroundStyleModifier<BackgroundStyle>> and conformance <> ModifiedContent<A, B>();
    v31 = v14;
    v32 = v14;
    v33 = v15;
    v34 = v16;
    v35 = v16;
    v36 = v17;
    swift_getOpaqueTypeConformance2();
    v18 = v26;
    View.if<A>(_:transform:)();

    KeyPath = swift_getKeyPath();
    v20 = &v9[*(v27 + 36)];
    v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA11ColorSchemeOGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA11ColorSchemeOGMR) + 28);
    v22 = *MEMORY[0x277CDF3C8];
    v23 = type metadata accessor for ColorScheme();
    (*(*(v23 - 8) + 104))(v20 + v21, v22, v23);
    *v20 = KeyPath;
    (*(v28 + 32))(v9, v18, v29);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.if<A>(_:transform:)>>.0, _EnvironmentKeyWritingModifier<ColorScheme>> and conformance <> ModifiedContent<A, B>();
    View.hideConversationAreaKeyline(_:)();
    return sub_25E5919A4(v9);
  }

  else
  {
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t outlined init with copy of SlidingEmergencyCountdownView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SlidingEmergencyCountdownView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of SlidingEmergencyCountdownView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SlidingEmergencyCountdownView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t SlidingEmergencyCountdownView.countdownContent.getter@<X0>(char *a1@<X8>)
{
  v27 = a1;
  v2 = type metadata accessor for BinaryButtonView();
  v25 = *(v2 - 8);
  v3 = v25;
  v26 = v2;
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - v7;
  v30 = static HorizontalAlignment.center.getter();
  LOBYTE(v33[0]) = 1;
  closure #1 in SlidingEmergencyCountdownView.countdownContent.getter(v1, v65);
  *&v55[7] = v65[0];
  *&v55[23] = v65[1];
  *&v55[39] = v65[2];
  *&v55[55] = v65[3];
  v28 = LOBYTE(v33[0]);
  KeyPath = swift_getKeyPath();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v56[55] = v61;
  *&v56[71] = v62;
  *&v56[87] = v63;
  *&v56[103] = v64;
  *&v56[7] = v58;
  *&v56[23] = v59;
  *&v56[39] = v60;
  v9 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v57 = 0;
  v24 = v8;
  SlidingEmergencyCountdownView.callAndCancelBinaryButtonView.getter(v8);
  v18 = *(v3 + 16);
  v19 = v26;
  v18(v6, v8, v26);
  v32[0] = v30;
  v32[1] = 0;
  LOBYTE(v32[2]) = v28;
  *(&v32[4] + 1) = *&v55[16];
  *(&v32[6] + 1) = *&v55[32];
  *(&v32[8] + 1) = *&v55[48];
  *(&v32[2] + 1) = *v55;
  v32[10] = *&v55[63];
  v32[11] = KeyPath;
  LOBYTE(v32[12]) = 1;
  *(&v32[18] + 1) = *&v56[48];
  *(&v32[16] + 1) = *&v56[32];
  *(&v32[14] + 1) = *&v56[16];
  *(&v32[12] + 1) = *v56;
  v32[26] = *&v56[111];
  *(&v32[24] + 1) = *&v56[96];
  *(&v32[22] + 1) = *&v56[80];
  *(&v32[20] + 1) = *&v56[64];
  LOBYTE(v32[27]) = v9;
  HIDWORD(v32[27]) = *&v31[3];
  *(&v32[27] + 1) = *v31;
  v32[28] = v11;
  v32[29] = v13;
  v32[30] = v15;
  v32[31] = v17;
  LOBYTE(v32[32]) = 0;
  v20 = v27;
  memcpy(v27, v32, 0x101uLL);
  v21 = &v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyAA4TextV_AItGGAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingP0VG_07SnippetB0012BinaryButtonG0VtMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyAA4TextV_AItGGAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingP0VG_07SnippetB0012BinaryButtonG0VtMR) + 48)];
  v18(v21, v6, v19);
  outlined init with copy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v32, v33, &_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyAA4TextV_AItGGAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingP0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyAA4TextV_AItGGAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingP0VGMR);
  v22 = *(v25 + 8);
  v22(v24, v19);
  v22(v6, v19);
  v33[0] = v30;
  v33[1] = 0;
  v34 = v28;
  v36 = *&v55[16];
  v37 = *&v55[32];
  *v38 = *&v55[48];
  v35 = *v55;
  *&v38[15] = *&v55[63];
  v39 = KeyPath;
  v40 = 1;
  v44 = *&v56[48];
  v43 = *&v56[32];
  v42 = *&v56[16];
  v41 = *v56;
  *&v47[15] = *&v56[111];
  *v47 = *&v56[96];
  v46 = *&v56[80];
  v45 = *&v56[64];
  v48 = v9;
  *&v49[3] = *&v31[3];
  *v49 = *v31;
  v50 = v11;
  v51 = v13;
  v52 = v15;
  v53 = v17;
  v54 = 0;
  return outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v33, &_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyAA4TextV_AItGGAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingP0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyAA4TextV_AItGGAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingP0VGMR);
}

uint64_t closure #2 in SlidingEmergencyCountdownView.body.getter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI14HostBackgroundOSgMd, &_s9SnippetUI14HostBackgroundOSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = (&v15 - v3);
  v5 = *a1;
  v6 = *(a1 + 8);
  v8 = *(a1 + 16);
  v7 = *(a1 + 24);
  v9 = static Edge.Set.top.getter();
  v19 = 1;
  *&v16 = v5;
  *(&v16 + 1) = v6;
  *&v17 = v8;
  *(&v17 + 1) = v7;
  v18[0] = v9;
  memset(&v18[8], 0, 32);
  v18[40] = 1;
  v10 = v5;

  *v4 = static Color.black.getter();
  v11 = *MEMORY[0x277D63BB8];
  v12 = type metadata accessor for HostBackground();
  v13 = *(v12 - 8);
  (*(v13 + 104))(v4, v11, v12);
  (*(v13 + 56))(v4, 0, 1, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy012PhoneSnippetB00E14ComponentStackVyAA9TupleViewVyACyACyACyAA6VStackVyAHyAA4TextV_ALtGGAA30_EnvironmentKeyWritingModifierVyAA0L9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingT0VG_0fB0012BinaryButtonJ0VtGGAYGMd, &_s7SwiftUI15ModifiedContentVy012PhoneSnippetB00E14ComponentStackVyAA9TupleViewVyACyACyACyAA6VStackVyAHyAA4TextV_ALtGGAA30_EnvironmentKeyWritingModifierVyAA0L9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingT0VG_0fB0012BinaryButtonJ0VtGGAYGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy012PhoneSnippetB00E14ComponentStackVyAA9TupleViewVyACyACyACyAA6VStackVyAHyAA4TextV_ALtGGAA30_EnvironmentKeyWritingModifierVyAA0L9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingT0VG_0fB0012BinaryButtonJ0VtGGAYGAA016_BackgroundStyleP0VyAA0xY0VGGMd, &_s7SwiftUI15ModifiedContentVyACy012PhoneSnippetB00E14ComponentStackVyAA9TupleViewVyACyACyACyAA6VStackVyAHyAA4TextV_ALtGGAA30_EnvironmentKeyWritingModifierVyAA0L9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingT0VG_0fB0012BinaryButtonJ0VtGGAYGAA016_BackgroundStyleP0VyAA0xY0VGGMR);
  lazy protocol witness table accessor for type ModifiedContent<PhoneComponentStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _PaddingLayout>, BinaryButtonView)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<PhoneComponentStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _PaddingLayout>, BinaryButtonView)>>, _PaddingLayout>, _BackgroundStyleModifier<BackgroundStyle>> and conformance <> ModifiedContent<A, B>();
  View.requestHostBackground<A, B>(_:accepted:denied:)();
  outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v4, &_s9SnippetUI14HostBackgroundOSgMd, &_s9SnippetUI14HostBackgroundOSgMR);
  v21[0] = *&v18[16];
  *(v21 + 9) = *&v18[25];
  v20[1] = v17;
  v20[2] = *v18;
  v20[0] = v16;
  return outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v20, &_s7SwiftUI15ModifiedContentVy012PhoneSnippetB00E14ComponentStackVyAA9TupleViewVyACyACyACyAA6VStackVyAHyAA4TextV_ALtGGAA30_EnvironmentKeyWritingModifierVyAA0L9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingT0VG_0fB0012BinaryButtonJ0VtGGAYGMd, &_s7SwiftUI15ModifiedContentVy012PhoneSnippetB00E14ComponentStackVyAA9TupleViewVyACyACyACyAA6VStackVyAHyAA4TextV_ALtGGAA30_EnvironmentKeyWritingModifierVyAA0L9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingT0VG_0fB0012BinaryButtonJ0VtGGAYGMR);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<PhoneComponentStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _PaddingLayout>, BinaryButtonView)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<PhoneComponentStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _PaddingLayout>, BinaryButtonView)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<PhoneComponentStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _PaddingLayout>, BinaryButtonView)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy012PhoneSnippetB00E14ComponentStackVyAA9TupleViewVyACyACyACyAA6VStackVyAHyAA4TextV_ALtGGAA30_EnvironmentKeyWritingModifierVyAA0L9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingT0VG_0fB0012BinaryButtonJ0VtGGAYGMd, &_s7SwiftUI15ModifiedContentVy012PhoneSnippetB00E14ComponentStackVyAA9TupleViewVyACyACyACyAA6VStackVyAHyAA4TextV_ALtGGAA30_EnvironmentKeyWritingModifierVyAA0L9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingT0VG_0fB0012BinaryButtonJ0VtGGAYGMR);
    lazy protocol witness table accessor for type TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type PhoneComponentStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _PaddingLayout>, BinaryButtonView)>> and conformance PhoneComponentStack<A>, &_s14PhoneSnippetUI0A14ComponentStackVy05SwiftC09TupleViewVyAD15ModifiedContentVyAHyAHyAD6VStackVyAFyAD4TextV_ALtGGAD30_EnvironmentKeyWritingModifierVyAD0L9AlignmentOGGAD16_FlexFrameLayoutVGAD08_PaddingT0VG_0bC0012BinaryButtonH0VtGGMd, &_s14PhoneSnippetUI0A14ComponentStackVy05SwiftC09TupleViewVyAD15ModifiedContentVyAHyAHyAD6VStackVyAFyAD4TextV_ALtGGAD30_EnvironmentKeyWritingModifierVyAD0L9AlignmentOGGAD16_FlexFrameLayoutVGAD08_PaddingT0VG_0bC0012BinaryButtonH0VtGGMR, &protocol conformance descriptor for PhoneComponentStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<PhoneComponentStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _PaddingLayout>, BinaryButtonView)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<PhoneComponentStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _PaddingLayout>, BinaryButtonView)>>, _PaddingLayout>, _BackgroundStyleModifier<BackgroundStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<PhoneComponentStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _PaddingLayout>, BinaryButtonView)>>, _PaddingLayout>, _BackgroundStyleModifier<BackgroundStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<PhoneComponentStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _PaddingLayout>, BinaryButtonView)>>, _PaddingLayout>, _BackgroundStyleModifier<BackgroundStyle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACy012PhoneSnippetB00E14ComponentStackVyAA9TupleViewVyACyACyACyAA6VStackVyAHyAA4TextV_ALtGGAA30_EnvironmentKeyWritingModifierVyAA0L9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingT0VG_0fB0012BinaryButtonJ0VtGGAYGAA016_BackgroundStyleP0VyAA0xY0VGGMd, &_s7SwiftUI15ModifiedContentVyACy012PhoneSnippetB00E14ComponentStackVyAA9TupleViewVyACyACyACyAA6VStackVyAHyAA4TextV_ALtGGAA30_EnvironmentKeyWritingModifierVyAA0L9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingT0VG_0fB0012BinaryButtonJ0VtGGAYGAA016_BackgroundStyleP0VyAA0xY0VGGMR);
    lazy protocol witness table accessor for type ModifiedContent<PhoneComponentStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _PaddingLayout>, BinaryButtonView)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type _BackgroundStyleModifier<BackgroundStyle> and conformance _BackgroundStyleModifier<A>, &_s7SwiftUI24_BackgroundStyleModifierVyAA0cD0VGMd, &_s7SwiftUI24_BackgroundStyleModifierVyAA0cD0VGMR, MEMORY[0x277CE0720]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<PhoneComponentStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _PaddingLayout>, BinaryButtonView)>>, _PaddingLayout>, _BackgroundStyleModifier<BackgroundStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.if<A>(_:transform:)>>.0, _EnvironmentKeyWritingModifier<ColorScheme>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.if<A>(_:transform:)>>.0, _EnvironmentKeyWritingModifier<ColorScheme>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.if<A>(_:transform:)>>.0, _EnvironmentKeyWritingModifier<ColorScheme>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewP07SnippetB0E2if_9transformQrSb_qd__xXEtAaDRd__lFQOy05PhonefB00I14ComponentStackVyAA05TupleE0VyACyACyACyAA6VStackVyAMyAA4TextV_AQtGGAA30_EnvironmentKeyWritingModifierVyAA0N9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingV0VG_AF012BinaryButtonE0VtGG_AeFE21requestHostBackground_8accepted6deniedQrAF14HostBackgroundOSg_qd__xcqd_0_xctAaDRd__AaDRd_0_r0_lFQOyACyA7_A2_G_A14_ACyA14_AA016_BackgroundStyleR0VyAA15BackgroundStyleVGGQo_Qo_AUyAA11ColorSchemeOGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewP07SnippetB0E2if_9transformQrSb_qd__xXEtAaDRd__lFQOy05PhonefB00I14ComponentStackVyAA05TupleE0VyACyACyACyAA6VStackVyAMyAA4TextV_AQtGGAA30_EnvironmentKeyWritingModifierVyAA0N9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingV0VG_AF012BinaryButtonE0VtGG_AeFE21requestHostBackground_8accepted6deniedQrAF14HostBackgroundOSg_qd__xcqd_0_xctAaDRd__AaDRd_0_r0_lFQOyACyA7_A2_G_A14_ACyA14_AA016_BackgroundStyleR0VyAA15BackgroundStyleVGGQo_Qo_AUyAA11ColorSchemeOGGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s14PhoneSnippetUI0A14ComponentStackVy05SwiftC09TupleViewVyAD15ModifiedContentVyAHyAHyAD6VStackVyAFyAD4TextV_ALtGGAD30_EnvironmentKeyWritingModifierVyAD0L9AlignmentOGGAD16_FlexFrameLayoutVGAD08_PaddingT0VG_0bC0012BinaryButtonH0VtGGMd, &_s14PhoneSnippetUI0A14ComponentStackVy05SwiftC09TupleViewVyAD15ModifiedContentVyAHyAHyAD6VStackVyAFyAD4TextV_ALtGGAD30_EnvironmentKeyWritingModifierVyAD0L9AlignmentOGGAD16_FlexFrameLayoutVGAD08_PaddingT0VG_0bC0012BinaryButtonH0VtGGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewP07SnippetB0E21requestHostBackground_8accepted6deniedQrAD0fG0OSg_qd__xcqd_0_xctAaBRd__AaBRd_0_r0_lFQOyAA15ModifiedContentVy05PhonedB00L14ComponentStackVyAA05TupleC0VyALyALyALyAA6VStackVyAQyAA4TextV_AUtGGAA30_EnvironmentKeyWritingModifierVyAA0Q9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingY0VG_AD012BinaryButtonC0VtGGA6_G_A12_ALyA12_AA01_g5StyleU0VyAA0G5StyleVGGQo_Md, &_s7SwiftUI4ViewP07SnippetB0E21requestHostBackground_8accepted6deniedQrAD0fG0OSg_qd__xcqd_0_xctAaBRd__AaBRd_0_r0_lFQOyAA15ModifiedContentVy05PhonedB00L14ComponentStackVyAA05TupleC0VyALyALyALyAA6VStackVyAQyAA4TextV_AUtGGAA30_EnvironmentKeyWritingModifierVyAA0Q9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingY0VG_AD012BinaryButtonC0VtGGA6_G_A12_ALyA12_AA01_g5StyleU0VyAA0G5StyleVGGQo_MR);
    lazy protocol witness table accessor for type TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type PhoneComponentStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _PaddingLayout>, BinaryButtonView)>> and conformance PhoneComponentStack<A>, &_s14PhoneSnippetUI0A14ComponentStackVy05SwiftC09TupleViewVyAD15ModifiedContentVyAHyAHyAD6VStackVyAFyAD4TextV_ALtGGAD30_EnvironmentKeyWritingModifierVyAD0L9AlignmentOGGAD16_FlexFrameLayoutVGAD08_PaddingT0VG_0bC0012BinaryButtonH0VtGGMd, &_s14PhoneSnippetUI0A14ComponentStackVy05SwiftC09TupleViewVyAD15ModifiedContentVyAHyAHyAD6VStackVyAFyAD4TextV_ALtGGAD30_EnvironmentKeyWritingModifierVyAD0L9AlignmentOGGAD16_FlexFrameLayoutVGAD08_PaddingT0VG_0bC0012BinaryButtonH0VtGGMR, &protocol conformance descriptor for PhoneComponentStack<A>);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy012PhoneSnippetB00E14ComponentStackVyAA9TupleViewVyACyACyACyAA6VStackVyAHyAA4TextV_ALtGGAA30_EnvironmentKeyWritingModifierVyAA0L9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingT0VG_0fB0012BinaryButtonJ0VtGGAYGMd, &_s7SwiftUI15ModifiedContentVy012PhoneSnippetB00E14ComponentStackVyAA9TupleViewVyACyACyACyAA6VStackVyAHyAA4TextV_ALtGGAA30_EnvironmentKeyWritingModifierVyAA0L9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingT0VG_0fB0012BinaryButtonJ0VtGGAYGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACy012PhoneSnippetB00E14ComponentStackVyAA9TupleViewVyACyACyACyAA6VStackVyAHyAA4TextV_ALtGGAA30_EnvironmentKeyWritingModifierVyAA0L9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingT0VG_0fB0012BinaryButtonJ0VtGGAYGAA016_BackgroundStyleP0VyAA0xY0VGGMd, &_s7SwiftUI15ModifiedContentVyACy012PhoneSnippetB00E14ComponentStackVyAA9TupleViewVyACyACyACyAA6VStackVyAHyAA4TextV_ALtGGAA30_EnvironmentKeyWritingModifierVyAA0L9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingT0VG_0fB0012BinaryButtonJ0VtGGAYGAA016_BackgroundStyleP0VyAA0xY0VGGMR);
    lazy protocol witness table accessor for type ModifiedContent<PhoneComponentStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _PaddingLayout>, BinaryButtonView)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<PhoneComponentStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _PaddingLayout>, BinaryButtonView)>>, _PaddingLayout>, _BackgroundStyleModifier<BackgroundStyle>> and conformance <> ModifiedContent<A, B>();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ColorScheme> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA11ColorSchemeOGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA11ColorSchemeOGMR, MEMORY[0x277CE0870]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.if<A>(_:transform:)>>.0, _EnvironmentKeyWritingModifier<ColorScheme>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t sub_25E5919A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewP07SnippetB0E2if_9transformQrSb_qd__xXEtAaDRd__lFQOy05PhonefB00I14ComponentStackVyAA05TupleE0VyACyACyACyAA6VStackVyAMyAA4TextV_AQtGGAA30_EnvironmentKeyWritingModifierVyAA0N9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingV0VG_AF012BinaryButtonE0VtGG_AeFE21requestHostBackground_8accepted6deniedQrAF14HostBackgroundOSg_qd__xcqd_0_xctAaDRd__AaDRd_0_r0_lFQOyACyA7_A2_G_A14_ACyA14_AA016_BackgroundStyleR0VyAA15BackgroundStyleVGGQo_Qo_AUyAA11ColorSchemeOGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewP07SnippetB0E2if_9transformQrSb_qd__xXEtAaDRd__lFQOy05PhonefB00I14ComponentStackVyAA05TupleE0VyACyACyACyAA6VStackVyAMyAA4TextV_AQtGGAA30_EnvironmentKeyWritingModifierVyAA0N9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingV0VG_AF012BinaryButtonE0VtGG_AeFE21requestHostBackground_8accepted6deniedQrAF14HostBackgroundOSg_qd__xcqd_0_xctAaDRd__AaDRd_0_r0_lFQOyACyA7_A2_G_A14_ACyA14_AA016_BackgroundStyleR0VyAA15BackgroundStyleVGGQo_Qo_AUyAA11ColorSchemeOGGMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t closure #1 in closure #2 in SlidingEmergencyCountdownView.body.getter@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = a1[3];
  v9 = a1[2];
  v10[0] = v2;
  *(v10 + 9) = *(a1 + 57);
  v3 = *(v10 + 9);
  v4 = a1[1];
  v8[0] = *a1;
  v5 = v8[0];
  v8[1] = v4;
  a2[2] = v9;
  a2[3] = v2;
  *(a2 + 57) = v3;
  *a2 = v5;
  a2[1] = v4;
  return outlined init with copy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v8, &v7, &_s7SwiftUI15ModifiedContentVy012PhoneSnippetB00E14ComponentStackVyAA9TupleViewVyACyACyACyAA6VStackVyAHyAA4TextV_ALtGGAA30_EnvironmentKeyWritingModifierVyAA0L9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingT0VG_0fB0012BinaryButtonJ0VtGGAYGMd, &_s7SwiftUI15ModifiedContentVy012PhoneSnippetB00E14ComponentStackVyAA9TupleViewVyACyACyACyAA6VStackVyAHyAA4TextV_ALtGGAA30_EnvironmentKeyWritingModifierVyAA0L9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingT0VG_0fB0012BinaryButtonJ0VtGGAYGMR);
}

uint64_t closure #2 in closure #2 in SlidingEmergencyCountdownView.body.getter@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[3];
  v11[2] = a1[2];
  v12[0] = v4;
  *(v12 + 9) = *(a1 + 57);
  v5 = a1[1];
  v11[0] = *a1;
  v11[1] = v5;
  v6 = static Edge.Set.all.getter();
  v7 = a1[3];
  *(a2 + 32) = a1[2];
  *(a2 + 48) = v7;
  *(a2 + 57) = *(a1 + 57);
  v8 = a1[1];
  *a2 = *a1;
  *(a2 + 16) = v8;
  *(a2 + 73) = v6;
  return outlined init with copy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v11, &v10, &_s7SwiftUI15ModifiedContentVy012PhoneSnippetB00E14ComponentStackVyAA9TupleViewVyACyACyACyAA6VStackVyAHyAA4TextV_ALtGGAA30_EnvironmentKeyWritingModifierVyAA0L9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingT0VG_0fB0012BinaryButtonJ0VtGGAYGMd, &_s7SwiftUI15ModifiedContentVy012PhoneSnippetB00E14ComponentStackVyAA9TupleViewVyACyACyACyAA6VStackVyAHyAA4TextV_ALtGGAA30_EnvironmentKeyWritingModifierVyAA0L9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingT0VG_0fB0012BinaryButtonJ0VtGGAYGMR);
}

uint64_t closure #1 in SlidingEmergencyCountdownView.countdownContent.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = **(a1 + *(type metadata accessor for SlidingEmergencyCountdownView(0) + 24) + 8);
  v4 = (*(v3 + 864))();
  v32 = v5;
  lazy protocol witness table accessor for type String and conformance String(v4, v5, v6);
  v7 = Text.init<A>(_:)();
  v9 = v8;
  v11 = v10;
  static Font.headline.getter();
  v12 = Text.font(_:)();
  v14 = v13;
  v16 = v15;

  outlined consume of Text.Storage(v7, v9, v11 & 1);

  static Font.Weight.regular.getter();
  v17 = Text.fontWeight(_:)();
  v19 = v18;
  LOBYTE(v9) = v20;
  outlined consume of Text.Storage(v12, v14, v16 & 1);

  v31 = static Color.secondary.getter();
  v21 = Text.foregroundStyle<A>(_:)();
  v23 = v22;
  LOBYTE(v14) = v24;
  v26 = v25;
  outlined consume of Text.Storage(v17, v19, v9 & 1);

  SlidingEmergencyCountdownView.emergencyServicesLabel.getter(&v31);
  v27 = v31;
  v28 = v32;
  LOBYTE(v19) = v33;
  v29 = v34;
  LOBYTE(v14) = v14 & 1;
  LOBYTE(v31) = v14;
  v35 = v33;
  *a2 = v21;
  *(a2 + 8) = v23;
  *(a2 + 16) = v14;
  *(a2 + 24) = v26;
  *(a2 + 32) = v27;
  *(a2 + 40) = v28;
  *(a2 + 48) = v19;
  *(a2 + 56) = v29;
  outlined copy of Text.Storage(v21, v23, v14);

  outlined copy of Text.Storage(v27, v28, v19);

  outlined consume of Text.Storage(v27, v28, v19);

  outlined consume of Text.Storage(v21, v23, v14);
}

uint64_t SlidingEmergencyCountdownView.emergencyServicesLabel.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + *(type metadata accessor for SlidingEmergencyCountdownView(0) + 24) + 8);
  v30 = (*(*v2 + 912))();
  lazy protocol witness table accessor for type String and conformance String(v30, v3, v4);
  v5 = Text.init<A>(_:)();
  v7 = v6;
  v9 = v8;
  static Font.title3.getter();
  v10 = Text.font(_:)();
  v12 = v11;
  v14 = v13;

  outlined consume of Text.Storage(v5, v7, v9 & 1);

  static Font.Weight.semibold.getter();
  v15 = Text.fontWeight(_:)();
  v17 = v16;
  v19 = v18;
  outlined consume of Text.Storage(v10, v12, v14 & 1);

  if ((*(*v2 + 1056))(v20))
  {
    static Color.secondary.getter();
  }

  else
  {
    static Color.primary.getter();
  }

  v21 = Text.foregroundStyle<A>(_:)();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  outlined consume of Text.Storage(v15, v17, v19 & 1);

  *a1 = v21;
  *(a1 + 8) = v23;
  *(a1 + 16) = v25 & 1;
  *(a1 + 24) = v27;
  return result;
}

uint64_t SlidingEmergencyCountdownView.callAndCancelBinaryButtonView.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v68 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy07SnippetB016BinaryButtonViewV15TransitionStateOGMd, &_s7SwiftUI7BindingVy07SnippetB016BinaryButtonViewV15TransitionStateOGMR);
  MEMORY[0x28223BE20](v3 - 8);
  v67 = &v51 - v4;
  v66 = type metadata accessor for SeparatorStyle();
  v65 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v61 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for StatusIndicatorView.IndicatorType();
  v58 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v57 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for StatusIndicatorView();
  v63 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v55 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD015StatusIndicatorC0V_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD015StatusIndicatorC0V_Qo_MR);
  v64 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v56 = &v51 - v8;
  v9 = type metadata accessor for SlidingEmergencyCountdownView(0);
  v10 = v9 - 8;
  v51 = *(v9 - 8);
  v11 = *(v51 + 64);
  MEMORY[0x28223BE20](v9);
  v54 = v11;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA4TextVG012PhoneSnippetB00g9CountdownE17StyleViewModifierVGAA024_EnvironmentKeyTransformL0VySbGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA4TextVG012PhoneSnippetB00g9CountdownE17StyleViewModifierVGAA024_EnvironmentKeyTransformL0VySbGGMR);
  MEMORY[0x28223BE20](v52);
  v13 = &v51 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyAA4TextVG012PhoneSnippetB00g9CountdownE17StyleViewModifierVGAI07SlidingI7Overlay33_F38D7435B87F7CB43C1EA1ED3A99F6AFLLVGAA024_EnvironmentKeyTransformL0VySbGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyAA4TextVG012PhoneSnippetB00g9CountdownE17StyleViewModifierVGAI07SlidingI7Overlay33_F38D7435B87F7CB43C1EA1ED3A99F6AFLLVGAA024_EnvironmentKeyTransformL0VySbGGMR);
  MEMORY[0x28223BE20](v14);
  v16 = &v51 - v15;
  SlidingEmergencyCountdownView.smartCallButton.getter(&v51 - v15);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Button<Text>, PhoneCountdownButtonStyleViewModifier>, SlidingCountdownOverlay>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Button<Text>, PhoneCountdownButtonStyleViewModifier>, SlidingCountdownOverlay>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyAA4TextVG012PhoneSnippetB00g9CountdownE17StyleViewModifierVGAI07SlidingI7Overlay33_F38D7435B87F7CB43C1EA1ED3A99F6AFLLVGAA024_EnvironmentKeyTransformL0VySbGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyAA4TextVG012PhoneSnippetB00g9CountdownE17StyleViewModifierVGAI07SlidingI7Overlay33_F38D7435B87F7CB43C1EA1ED3A99F6AFLLVGAA024_EnvironmentKeyTransformL0VySbGGMR, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<Text>, PhoneCountdownButtonStyleViewModifier>, SlidingCountdownOverlay> and conformance <> ModifiedContent<A, B>);
  v17 = View.eraseToAnyView()();
  outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v16, &_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyAA4TextVG012PhoneSnippetB00g9CountdownE17StyleViewModifierVGAI07SlidingI7Overlay33_F38D7435B87F7CB43C1EA1ED3A99F6AFLLVGAA024_EnvironmentKeyTransformL0VySbGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyAA4TextVG012PhoneSnippetB00g9CountdownE17StyleViewModifierVGAI07SlidingI7Overlay33_F38D7435B87F7CB43C1EA1ED3A99F6AFLLVGAA024_EnvironmentKeyTransformL0VySbGGMR);
  v78 = MEMORY[0x277CE11D0];
  v79 = MEMORY[0x277D63A58];
  v18 = MEMORY[0x277D63A58];
  v19 = MEMORY[0x277CE11D0];
  v77 = v17;
  v53 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of SlidingEmergencyCountdownView(v1, v53);
  v20 = *(v51 + 80);
  v21 = swift_allocObject();
  outlined init with take of SlidingEmergencyCountdownView(&v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + ((v20 + 16) & ~v20));
  v69 = v1;
  Button.init(action:label:)();
  type metadata accessor for Context();
  _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_10(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68], MEMORY[0x277D63F58]);
  v22 = EnvironmentObject.init()();
  v24 = v23;
  v25 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVG012PhoneSnippetB00g9CountdownE17StyleViewModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVG012PhoneSnippetB00g9CountdownE17StyleViewModifierVGMR) + 36)];
  *v25 = v22;
  v25[1] = v24;
  v26 = *(v2 + *(v10 + 32) + 8);
  LOBYTE(v22) = (*(*v26 + 1104))();
  KeyPath = swift_getKeyPath();
  v28 = swift_allocObject();
  *(v28 + 16) = v22 & 1;
  v29 = &v13[*(v52 + 36)];
  *v29 = KeyPath;
  v29[1] = partial apply for closure #1 in View.disabled(_:);
  v29[2] = v28;
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Button<Text>, PhoneCountdownButtonStyleViewModifier>, SlidingCountdownOverlay>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<Text>, PhoneCountdownButtonStyleViewModifier>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA4TextVG012PhoneSnippetB00g9CountdownE17StyleViewModifierVGAA024_EnvironmentKeyTransformL0VySbGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA4TextVG012PhoneSnippetB00g9CountdownE17StyleViewModifierVGAA024_EnvironmentKeyTransformL0VySbGGMR, lazy protocol witness table accessor for type ModifiedContent<Button<Text>, PhoneCountdownButtonStyleViewModifier> and conformance <> ModifiedContent<A, B>);
  v30 = View.eraseToAnyView()();
  v31 = outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v13, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA4TextVG012PhoneSnippetB00g9CountdownE17StyleViewModifierVGAA024_EnvironmentKeyTransformL0VySbGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA4TextVG012PhoneSnippetB00g9CountdownE17StyleViewModifierVGAA024_EnvironmentKeyTransformL0VySbGGMR);
  v75 = v19;
  v76 = v18;
  v74 = v30;
  v32 = (*(*v26 + 672))(v31);
  v72 = MEMORY[0x277D837D0];
  v73 = MEMORY[0x277D63F88];
  v70 = v32;
  v71 = v33;
  (*(v58 + 104))(v57, *MEMORY[0x277D63D68], v59);
  v34 = v55;
  StatusIndicatorView.init(message:type:showIndicator:)();
  v35 = v65;
  v36 = v61;
  v37 = v66;
  (*(v65 + 104))(v61, *MEMORY[0x277D62F38], v66);
  v38 = _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_10(&lazy protocol witness table cache variable for type StatusIndicatorView and conformance StatusIndicatorView, MEMORY[0x277D63D78], MEMORY[0x277D63D40]);
  v39 = v56;
  v40 = v60;
  View.separators(_:isOverride:)();
  (*(v35 + 8))(v36, v37);
  (*(v63 + 8))(v34, v40);
  v70 = v40;
  v71 = v38;
  swift_getOpaqueTypeConformance2();
  v41 = v62;
  v42 = View.eraseToAnyView()();
  (*(v64 + 8))(v39, v41);
  v73 = MEMORY[0x277D63A58];
  v72 = MEMORY[0x277CE11D0];
  v70 = v42;
  v43 = v2;
  v44 = v53;
  outlined init with copy of SlidingEmergencyCountdownView(v43, v53);
  type metadata accessor for MainActor();
  v45 = static MainActor.shared.getter();
  v46 = swift_allocObject();
  v47 = MEMORY[0x277D85700];
  *(v46 + 16) = v45;
  *(v46 + 24) = v47;
  outlined init with take of SlidingEmergencyCountdownView(v44, v46 + ((v20 + 32) & ~v20));
  v48 = static MainActor.shared.getter();
  v49 = swift_allocObject();
  *(v49 + 16) = v48;
  *(v49 + 24) = v47;
  type metadata accessor for BinaryButtonView.TransitionState();
  Binding.init(get:set:)();
  return BinaryButtonView.init(primaryButton:secondaryButton:statusIndicator:statusState:duration:)();
}

uint64_t closure #1 in SlidingEmergencyCountdownView.smartCancelButton.getter(id *a1)
{
  v2 = type metadata accessor for InteractionDelegateWrapper();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + *(type metadata accessor for SlidingEmergencyCountdownView(0) + 24) + 8);
  (*(*v6 + 1064))(1);
  InteractionDelegate.wrappedValue.getter();
  if (*a1)
  {
    v7 = *(*v6 + 1368);
    v8 = *a1;
    v7(v5, v8);

    return (*(v3 + 8))(v5, v2);
  }

  else
  {
    type metadata accessor for Context();
    _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_10(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68], MEMORY[0x277D63F58]);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t closure #2 in SlidingEmergencyCountdownView.smartCancelButton.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SlidingEmergencyCountdownView(0);
  v11 = (*(**(a1 + *(v4 + 24) + 8) + 624))();
  lazy protocol witness table accessor for type String and conformance String(v11, v5, v6);
  result = Text.init<A>(_:)();
  *a2 = result;
  *(a2 + 8) = v8;
  *(a2 + 16) = v9 & 1;
  *(a2 + 24) = v10;
  return result;
}

void View.emergencyCountdownButton()(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Context();
  _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_10(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68], MEMORY[0x277D63F58]);
  v4 = EnvironmentObject.init()();
  v6[0] = v4;
  v6[1] = v5;
  MEMORY[0x25F8B7340](v6, a1, &type metadata for PhoneCountdownButtonStyleViewModifier, a2);
}

uint64_t SlidingEmergencyCountdownView.smartCallButton.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for SlidingEmergencyCountdownView(0);
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  outlined init with copy of SlidingEmergencyCountdownView(v1, &v29[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  outlined init with take of SlidingEmergencyCountdownView(&v29[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v8 + v7);
  v30 = v1;
  Button.init(action:label:)();
  type metadata accessor for Context();
  _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_10(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68], MEMORY[0x277D63F58]);
  v9 = EnvironmentObject.init()();
  v11 = v10;
  v12 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVG012PhoneSnippetB00g9CountdownE17StyleViewModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVG012PhoneSnippetB00g9CountdownE17StyleViewModifierVGMR) + 36));
  *v12 = v9;
  v12[1] = v11;
  v13 = *(v1 + *(v4 + 32) + 8);
  v14 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA4TextVG012PhoneSnippetB00g9CountdownE17StyleViewModifierVGAI07SlidingI7Overlay33_F38D7435B87F7CB43C1EA1ED3A99F6AFLLVGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA4TextVG012PhoneSnippetB00g9CountdownE17StyleViewModifierVGAI07SlidingI7Overlay33_F38D7435B87F7CB43C1EA1ED3A99F6AFLLVGMR) + 36));
  v15 = type metadata accessor for SlidingCountdownOverlay(0);
  InteractionDelegate.init()();
  *v14 = EnvironmentObject.init()();
  v14[1] = v16;
  type metadata accessor for EmergencyCountdownViewModel(0);
  _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_10(&lazy protocol witness table cache variable for type EmergencyCountdownViewModel and conformance EmergencyCountdownViewModel, type metadata accessor for EmergencyCountdownViewModel, &protocol conformance descriptor for EmergencyCountdownViewModel);

  v14[2] = ObservedObject.init(wrappedValue:)();
  v14[3] = v17;
  v18 = v15[7];
  *(v14 + v18) = static Animation.easeInOut(duration:)();
  v19 = v15[8];
  *(v14 + v19) = static Animation.easeInOut(duration:)();
  v20 = v14 + v15[9];
  v31 = 0;
  State.init(wrappedValue:)();
  v21 = v33;
  *v20 = v32;
  *(v20 + 1) = v21;
  v22 = v14 + v15[10];
  v31 = 0;
  v23 = State.init(wrappedValue:)();
  v24 = v33;
  *v22 = v32;
  *(v22 + 1) = v24;
  LOBYTE(v13) = (*(*v13 + 1104))(v23);
  KeyPath = swift_getKeyPath();
  v26 = swift_allocObject();
  *(v26 + 16) = v13 & 1;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyAA4TextVG012PhoneSnippetB00g9CountdownE17StyleViewModifierVGAI07SlidingI7Overlay33_F38D7435B87F7CB43C1EA1ED3A99F6AFLLVGAA024_EnvironmentKeyTransformL0VySbGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyAA4TextVG012PhoneSnippetB00g9CountdownE17StyleViewModifierVGAI07SlidingI7Overlay33_F38D7435B87F7CB43C1EA1ED3A99F6AFLLVGAA024_EnvironmentKeyTransformL0VySbGGMR);
  v28 = (a1 + *(result + 36));
  *v28 = KeyPath;
  v28[1] = closure #1 in View.disabled(_:)partial apply;
  v28[2] = v26;
  return result;
}

uint64_t closure #1 in SlidingEmergencyCountdownView.smartCallButton.getter(id *a1)
{
  v2 = type metadata accessor for InteractionDelegateWrapper();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + *(type metadata accessor for SlidingEmergencyCountdownView(0) + 24) + 8);
  InteractionDelegate.wrappedValue.getter();
  if (*a1)
  {
    v7 = *(*v6 + 1360);
    v8 = *a1;
    v7(v5, v8);

    return (*(v3 + 8))(v5, v2);
  }

  else
  {
    type metadata accessor for Context();
    _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_10(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68], MEMORY[0x277D63F58]);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t closure #2 in SlidingEmergencyCountdownView.smartCallButton.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SlidingEmergencyCountdownView(0);
  v11 = (*(**(a1 + *(v4 + 24) + 8) + 720))();
  lazy protocol witness table accessor for type String and conformance String(v11, v5, v6);
  result = Text.init<A>(_:)();
  *a2 = result;
  *(a2 + 8) = v8;
  *(a2 + 16) = v9 & 1;
  *(a2 + 24) = v10;
  return result;
}

uint64_t closure #1 in SlidingEmergencyCountdownView.transitionState.getter@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SlidingEmergencyCountdownView(0);
  LOBYTE(a1) = (*(**(a1 + *(v4 + 24) + 8) + 1056))();
  v5 = type metadata accessor for BinaryButtonView.TransitionState();
  v6 = *(*(v5 - 8) + 104);
  v7 = MEMORY[0x277D63C30];
  if ((a1 & 1) == 0)
  {
    v7 = MEMORY[0x277D63C28];
  }

  v8 = *v7;

  return v6(a2, v8, v5);
}

uint64_t PhoneCountdownButtonStyleViewModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20[1] = a2;
  v20[0] = type metadata accessor for RFButtonStyle();
  v3 = *(v20[0] - 8);
  MEMORY[0x28223BE20](v20[0]);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy012PhoneSnippetB00g20CountdownButtonStyleeF0VGAA022_EnvironmentKeyWritingF0VyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy012PhoneSnippetB00g20CountdownButtonStyleeF0VGAA022_EnvironmentKeyWritingF0VyAA4FontVSgGGMR);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE10fontWeightyQrAA4FontV0E0VSgFQOyAA15ModifiedContentVyAA01_c9Modifier_H0Vy012PhoneSnippetB00j20CountdownButtonStylecI0VGAA022_EnvironmentKeyWritingI0VyAFSgGG_Qo_Md, &_s7SwiftUI4ViewPAAE10fontWeightyQrAA4FontV0E0VSgFQOyAA15ModifiedContentVyAA01_c9Modifier_H0Vy012PhoneSnippetB00j20CountdownButtonStylecI0VGAA022_EnvironmentKeyWritingI0VyAFSgGG_Qo_MR);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - v11;
  v13 = static Font.headline.getter();
  KeyPath = swift_getKeyPath();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy012PhoneSnippetB00f20CountdownButtonStylecD0VGMd, &_s7SwiftUI21_ViewModifier_ContentVy012PhoneSnippetB00f20CountdownButtonStylecD0VGMR);
  (*(*(v15 - 8) + 16))(v8, a1, v15);
  v16 = &v8[*(v6 + 36)];
  *v16 = KeyPath;
  v16[1] = v13;
  static Font.Weight.medium.getter();
  v17 = lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<PhoneCountdownButtonStyleViewModifier>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
  View.fontWeight(_:)();
  outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v8, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy012PhoneSnippetB00g20CountdownButtonStyleeF0VGAA022_EnvironmentKeyWritingF0VyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy012PhoneSnippetB00g20CountdownButtonStyleeF0VGAA022_EnvironmentKeyWritingF0VyAA4FontVSgGGMR);
  static PrimitiveButtonStyle<>.rfButton.getter();
  v20[2] = v6;
  v20[3] = v17;
  swift_getOpaqueTypeConformance2();
  _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_10(&lazy protocol witness table cache variable for type RFButtonStyle and conformance RFButtonStyle, MEMORY[0x277D63B70], MEMORY[0x277D63B60]);
  v18 = v20[0];
  View.buttonStyle<A>(_:)();
  (*(v3 + 8))(v5, v18);
  return (*(v10 + 8))(v12, v9);
}

uint64_t PhoneCountdownButtonStyleViewModifier.init()()
{
  type metadata accessor for Context();
  _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_10(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68], MEMORY[0x277D63F58]);

  return EnvironmentObject.init()();
}

uint64_t key path getter for EnvironmentValues.font : EnvironmentValues, serialized@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

uint64_t sub_25E593620@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<PhoneCountdownButtonStyleViewModifier>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<PhoneCountdownButtonStyleViewModifier>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<PhoneCountdownButtonStyleViewModifier>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy012PhoneSnippetB00g20CountdownButtonStyleeF0VGAA022_EnvironmentKeyWritingF0VyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy012PhoneSnippetB00g20CountdownButtonStyleeF0VGAA022_EnvironmentKeyWritingF0VyAA4FontVSgGGMR);
    lazy protocol witness table accessor for type TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<PhoneCountdownButtonStyleViewModifier> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy012PhoneSnippetB00f20CountdownButtonStylecD0VGMd, &_s7SwiftUI21_ViewModifier_ContentVy012PhoneSnippetB00f20CountdownButtonStylecD0VGMR, MEMORY[0x277CE04B8]);
    lazy protocol witness table accessor for type TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMR, MEMORY[0x277CE0870]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<PhoneCountdownButtonStyleViewModifier>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t sub_25E5937D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for InteractionDelegate();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_25E5938AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for InteractionDelegate();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

void type metadata completion function for SlidingEmergencyCountdownView(uint64_t a1)
{
  type metadata accessor for EnvironmentObject<Context>(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for InteractionDelegate();
    if (v2 <= 0x3F)
    {
      type metadata accessor for ObservedObject<EmergencyCountdownViewModel>(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for PhoneCountdownButtonStyleViewModifier(uint64_t *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PhoneCountdownButtonStyleViewModifier(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_25E593AC4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewP07SnippetB0E2if_9transformQrSb_qd__xXEtAaDRd__lFQOy05PhonefB00I14ComponentStackVyAA05TupleE0VyACyACyACyAA6VStackVyAMyAA4TextV_AQtGGAA30_EnvironmentKeyWritingModifierVyAA0N9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingV0VG_AF012BinaryButtonE0VtGG_AeFE21requestHostBackground_8accepted6deniedQrAF14HostBackgroundOSg_qd__xcqd_0_xctAaDRd__AaDRd_0_r0_lFQOyACyA7_A2_G_A14_ACyA14_AA016_BackgroundStyleR0VyAA15BackgroundStyleVGGQo_Qo_AUyAA11ColorSchemeOGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewP07SnippetB0E2if_9transformQrSb_qd__xXEtAaDRd__lFQOy05PhonefB00I14ComponentStackVyAA05TupleE0VyACyACyACyAA6VStackVyAMyAA4TextV_AQtGGAA30_EnvironmentKeyWritingModifierVyAA0N9AlignmentOGGAA16_FlexFrameLayoutVGAA08_PaddingV0VG_AF012BinaryButtonE0VtGG_AeFE21requestHostBackground_8accepted6deniedQrAF14HostBackgroundOSg_qd__xcqd_0_xctAaDRd__AaDRd_0_r0_lFQOyACyA7_A2_G_A14_ACyA14_AA016_BackgroundStyleR0VyAA15BackgroundStyleVGGQo_Qo_AUyAA11ColorSchemeOGGMR);
  lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.if<A>(_:transform:)>>.0, _EnvironmentKeyWritingModifier<ColorScheme>> and conformance <> ModifiedContent<A, B>();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_25E593B28()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE10fontWeightyQrAA4FontV0E0VSgFQOyAA15ModifiedContentVyAA01_c9Modifier_H0Vy012PhoneSnippetB00j20CountdownButtonStylecI0VGAA022_EnvironmentKeyWritingI0VyAFSgGG_Qo_Md, &_s7SwiftUI4ViewPAAE10fontWeightyQrAA4FontV0E0VSgFQOyAA15ModifiedContentVyAA01_c9Modifier_H0Vy012PhoneSnippetB00j20CountdownButtonStylecI0VGAA022_EnvironmentKeyWritingI0VyAFSgGG_Qo_MR);
  type metadata accessor for RFButtonStyle();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy012PhoneSnippetB00g20CountdownButtonStyleeF0VGAA022_EnvironmentKeyWritingF0VyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy012PhoneSnippetB00g20CountdownButtonStyleeF0VGAA022_EnvironmentKeyWritingF0VyAA4FontVSgGGMR);
  lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<PhoneCountdownButtonStyleViewModifier>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
  swift_getOpaqueTypeConformance2();
  _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_10(&lazy protocol witness table cache variable for type RFButtonStyle and conformance RFButtonStyle, MEMORY[0x277D63B70], MEMORY[0x277D63B60]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_25E593C18(void *a1)
{
  v1 = type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type PhoneCountdownButtonStyleViewModifier and conformance PhoneCountdownButtonStyleViewModifier(v1, v2, v3);
  return swift_getWitnessTable();
}

unint64_t lazy protocol witness table accessor for type PhoneCountdownButtonStyleViewModifier and conformance PhoneCountdownButtonStyleViewModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type PhoneCountdownButtonStyleViewModifier and conformance PhoneCountdownButtonStyleViewModifier;
  if (!lazy protocol witness table cache variable for type PhoneCountdownButtonStyleViewModifier and conformance PhoneCountdownButtonStyleViewModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCountdownButtonStyleViewModifier and conformance PhoneCountdownButtonStyleViewModifier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<Text>, PhoneCountdownButtonStyleViewModifier>, SlidingCountdownOverlay> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<Text>, PhoneCountdownButtonStyleViewModifier>, SlidingCountdownOverlay> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<Text>, PhoneCountdownButtonStyleViewModifier>, SlidingCountdownOverlay> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA4TextVG012PhoneSnippetB00g9CountdownE17StyleViewModifierVGAI07SlidingI7Overlay33_F38D7435B87F7CB43C1EA1ED3A99F6AFLLVGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA4TextVG012PhoneSnippetB00g9CountdownE17StyleViewModifierVGAI07SlidingI7Overlay33_F38D7435B87F7CB43C1EA1ED3A99F6AFLLVGMR);
    lazy protocol witness table accessor for type ModifiedContent<Button<Text>, PhoneCountdownButtonStyleViewModifier> and conformance <> ModifiedContent<A, B>();
    _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_10(&lazy protocol witness table cache variable for type SlidingCountdownOverlay and conformance SlidingCountdownOverlay, type metadata accessor for SlidingCountdownOverlay, &protocol conformance descriptor for SlidingCountdownOverlay);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<Text>, PhoneCountdownButtonStyleViewModifier>, SlidingCountdownOverlay> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Button<Text>, PhoneCountdownButtonStyleViewModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Button<Text>, PhoneCountdownButtonStyleViewModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Button<Text>, PhoneCountdownButtonStyleViewModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVG012PhoneSnippetB00g9CountdownE17StyleViewModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVG012PhoneSnippetB00g9CountdownE17StyleViewModifierVGMR);
    v3 = lazy protocol witness table accessor for type TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR, MEMORY[0x277CDF030]);
    lazy protocol witness table accessor for type PhoneCountdownButtonStyleViewModifier and conformance PhoneCountdownButtonStyleViewModifier(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Button<Text>, PhoneCountdownButtonStyleViewModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t sub_25E593E6C@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Button<Text>, PhoneCountdownButtonStyleViewModifier>, SlidingCountdownOverlay>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    lazy protocol witness table accessor for type TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<Bool> and conformance _EnvironmentKeyTransformModifier<A>, &_s7SwiftUI32_EnvironmentKeyTransformModifierVySbGMd, &_s7SwiftUI32_EnvironmentKeyTransformModifierVySbGMR, MEMORY[0x277CE08A8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_10(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25E593FE4()
{
  v1 = (type metadata accessor for SlidingEmergencyCountdownView(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  swift_unknownObjectRelease();

  v3 = v1[7];
  v4 = type metadata accessor for InteractionDelegate();
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in SlidingEmergencyCountdownView.transitionState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SlidingEmergencyCountdownView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return closure #1 in SlidingEmergencyCountdownView.transitionState.getter(v4, a1);
}

uint64_t sub_25E594160()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_15()
{
  v1 = (type metadata accessor for SlidingEmergencyCountdownView(0) - 8);
  v2 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));

  v3 = v1[7];
  v4 = type metadata accessor for InteractionDelegate();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in SlidingEmergencyCountdownView.smartCancelButton.getter(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for SlidingEmergencyCountdownView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t ButtonConfigurationModel.label.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t property wrapper backing initializer of ButtonConfigurationModel.action(uint64_t a1)
{
  type metadata accessor for NSTimer(0, &lazy cache variable for type metadata for SABaseCommand, 0x277D471B0);

  return CodableAceObject.init(wrappedValue:)();
}

uint64_t ButtonConfigurationModel.action.getter()
{
  type metadata accessor for ButtonConfigurationModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMR);
  return CodableAceObject.wrappedValue.getter();
}

uint64_t key path getter for ButtonConfigurationModel.action : ButtonConfigurationModel@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ButtonConfigurationModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMR);
  result = CodableAceObject.wrappedValue.getter();
  *a1 = result;
  return result;
}

uint64_t key path setter for ButtonConfigurationModel.action : ButtonConfigurationModel(void **a1)
{
  v1 = *a1;
  type metadata accessor for ButtonConfigurationModel(0);
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMR);
  return CodableAceObject.wrappedValue.setter();
}

uint64_t ButtonConfigurationModel.action.setter(uint64_t a1)
{
  type metadata accessor for ButtonConfigurationModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMR);
  return CodableAceObject.wrappedValue.setter();
}

void (*ButtonConfigurationModel.action.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for ButtonConfigurationModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMR);
  *(v3 + 32) = CodableAceObject.wrappedValue.modify();
  return EmergencyCountdownModel.sashTitle.modify;
}

uint64_t property wrapper backing initializer of ButtonConfigurationModel.directInvocation(uint64_t a1)
{
  type metadata accessor for NSTimer(0, &lazy cache variable for type metadata for SAIntentGroupRunSiriKitExecutor, 0x277D47438);

  return CodableAceObject.init(wrappedValue:)();
}

uint64_t ButtonConfigurationModel.directInvocation.getter()
{
  type metadata accessor for ButtonConfigurationModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  return CodableAceObject.wrappedValue.getter();
}

uint64_t key path getter for ButtonConfigurationModel.directInvocation : ButtonConfigurationModel@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ButtonConfigurationModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  result = CodableAceObject.wrappedValue.getter();
  *a1 = result;
  return result;
}

uint64_t key path setter for ButtonConfigurationModel.directInvocation : ButtonConfigurationModel(void **a1)
{
  v1 = *a1;
  type metadata accessor for ButtonConfigurationModel(0);
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  return CodableAceObject.wrappedValue.setter();
}

uint64_t ButtonConfigurationModel.directInvocation.setter(uint64_t a1)
{
  type metadata accessor for ButtonConfigurationModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  return CodableAceObject.wrappedValue.setter();
}

void (*ButtonConfigurationModel.directInvocation.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for ButtonConfigurationModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  *(v3 + 32) = CodableAceObject.wrappedValue.modify();
  return EmergencyCountdownModel.callAction.modify;
}

uint64_t ButtonConfigurationModel.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ButtonConfigurationModel(0) + 28);
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ButtonConfigurationModel.init(label:action:id:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *a5 = a1;
  *(a5 + 1) = a2;
  v8 = type metadata accessor for ButtonConfigurationModel(0);
  type metadata accessor for NSTimer(0, &lazy cache variable for type metadata for SABaseCommand, 0x277D471B0);
  v9 = a3;
  CodableAceObject.init(wrappedValue:)();
  v10 = *(v8 + 28);
  v11 = type metadata accessor for UUID();
  v14 = *(v11 - 8);
  (*(v14 + 16))(&a5[v10], a4, v11);
  a5[*(v8 + 32)] = 0;
  [objc_allocWithZone(MEMORY[0x277D47438]) init];
  type metadata accessor for NSTimer(0, &lazy cache variable for type metadata for SAIntentGroupRunSiriKitExecutor, 0x277D47438);
  CodableAceObject.init(wrappedValue:)();

  v12 = *(v14 + 8);

  return v12(a4, v11);
}

uint64_t ButtonConfigurationModel.init(label:url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a5@<X8>)
{
  v32 = a1;
  v33 = a2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v30 - v11;
  v13 = [objc_allocWithZone(MEMORY[0x277D479F0]) init];
  URL.init(string:)();

  v14 = type metadata accessor for URL();
  v15 = *(v14 - 8);
  v17 = 0;
  if ((*(v15 + 48))(v12, 1, v14) != 1)
  {
    URL._bridgeToObjectiveC()(v16);
    v17 = v18;
    (*(v15 + 8))(v12, v14);
  }

  [v13 setPunchOutUri_];

  v19 = v13;
  UUID.init()();
  v20 = UUID.uuidString.getter();
  v22 = v21;
  v31 = *(v7 + 8);
  v23 = v6;
  v31(v9, v6);
  v24 = MEMORY[0x25F8B7AB0](v20, v22);

  [v19 setAceId_];

  v25 = v19;
  UUID.init()();
  v26 = v33;
  *a5 = v32;
  *(a5 + 1) = v26;
  v27 = type metadata accessor for ButtonConfigurationModel(0);
  type metadata accessor for NSTimer(0, &lazy cache variable for type metadata for SABaseCommand, 0x277D471B0);
  v28 = v25;
  CodableAceObject.init(wrappedValue:)();
  (*(v7 + 16))(&a5[*(v27 + 28)], v9, v23);
  a5[*(v27 + 32)] = 0;
  [objc_allocWithZone(MEMORY[0x277D47438]) init];
  type metadata accessor for NSTimer(0, &lazy cache variable for type metadata for SAIntentGroupRunSiriKitExecutor, 0x277D47438);
  CodableAceObject.init(wrappedValue:)();

  return (v31)(v9, v23);
}

uint64_t ButtonConfigurationModel.init(label:directInvocation:id:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  [objc_allocWithZone(MEMORY[0x277D471B0]) init];
  v7 = type metadata accessor for ButtonConfigurationModel(0);
  type metadata accessor for NSTimer(0, &lazy cache variable for type metadata for SABaseCommand, 0x277D471B0);
  CodableAceObject.init(wrappedValue:)();
  *(a5 + *(v7 + 32)) = 1;
  type metadata accessor for NSTimer(0, &lazy cache variable for type metadata for SAIntentGroupRunSiriKitExecutor, 0x277D47438);
  CodableAceObject.init(wrappedValue:)();
  v8 = *(v7 + 28);
  v9 = type metadata accessor for UUID();
  v10 = *(*(v9 - 8) + 32);

  return v10(a5 + v8, a4, v9);
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance ButtonConfigurationModel.CodingKeys()
{
  v1 = *v0;
  v2 = 0x6C6562616CLL;
  v3 = 0xD000000000000010;
  v4 = 25705;
  if (v1 != 3)
  {
    v4 = 0xD000000000000012;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6E6F69746361;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ButtonConfigurationModel.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized ButtonConfigurationModel.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ButtonConfigurationModel.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = lazy protocol witness table accessor for type ButtonConfigurationModel.CodingKeys and conformance ButtonConfigurationModel.CodingKeys(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ButtonConfigurationModel.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = lazy protocol witness table accessor for type ButtonConfigurationModel.CodingKeys and conformance ButtonConfigurationModel.CodingKeys(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t ButtonConfigurationModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14PhoneSnippetUI24ButtonConfigurationModelV10CodingKeys33_1D25BCEF1E18A562B1E968FB17ADA55ELLOGMd, &_ss22KeyedEncodingContainerVy14PhoneSnippetUI24ButtonConfigurationModelV10CodingKeys33_1D25BCEF1E18A562B1E968FB17ADA55ELLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v11 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ButtonConfigurationModel.CodingKeys and conformance ButtonConfigurationModel.CodingKeys(v7, v8, v9);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v11[1] = type metadata accessor for ButtonConfigurationModel(0);
    v15 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMR);
    lazy protocol witness table accessor for type TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type CodableAceObject<SABaseCommand> and conformance CodableAceObject<A>, &_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMR, MEMORY[0x277D63228]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
    lazy protocol witness table accessor for type TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type CodableAceObject<SAIntentGroupRunSiriKitExecutor> and conformance CodableAceObject<A>, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR, MEMORY[0x277D63228]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v13 = 3;
    type metadata accessor for UUID();
    _s10Foundation4UUIDVACSEAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12 = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t ButtonConfigurationModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v37 = type metadata accessor for UUID();
  v33 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v31 = v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  v34 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v32 = v28 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMR);
  v35 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = v28 - v6;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14PhoneSnippetUI24ButtonConfigurationModelV10CodingKeys33_1D25BCEF1E18A562B1E968FB17ADA55ELLOGMd, &_ss22KeyedDecodingContainerVy14PhoneSnippetUI24ButtonConfigurationModelV10CodingKeys33_1D25BCEF1E18A562B1E968FB17ADA55ELLOGMR);
  v36 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v9 = v28 - v8;
  v10 = type metadata accessor for ButtonConfigurationModel(0);
  MEMORY[0x28223BE20](v10);
  v12 = (v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ButtonConfigurationModel.CodingKeys and conformance ButtonConfigurationModel.CodingKeys(v13, v14, v15);
  v39 = v9;
  v16 = v41;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v17 = v7;
  v41 = v10;
  v29 = v5;
  v18 = v38;
  v20 = v36;
  v19 = v37;
  v46 = 0;
  *v12 = KeyedDecodingContainer.decode(_:forKey:)();
  v12[1] = v21;
  v28[2] = v21;
  v45 = 1;
  lazy protocol witness table accessor for type TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type CodableAceObject<SABaseCommand> and conformance CodableAceObject<A>, &_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMR, MEMORY[0x277D63230]);
  v22 = v29;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v35 + 32))(v12 + v41[5], v17, v22);
  v44 = 2;
  lazy protocol witness table accessor for type TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type CodableAceObject<SAIntentGroupRunSiriKitExecutor> and conformance CodableAceObject<A>, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR, MEMORY[0x277D63230]);
  v23 = v32;
  v28[1] = 0;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v24 = v12;
  (*(v34 + 32))(v12 + v41[6], v23, v18);
  v43 = 3;
  _s10Foundation4UUIDVACSEAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
  v25 = v31;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v33 + 32))(v24 + v41[7], v25, v19);
  v42 = 4;
  v26 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v20 + 8))(v39, v40);
  *(v24 + v41[8]) = v26 & 1;
  outlined init with copy of ButtonConfigurationModel(v24, v30);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return outlined destroy of ButtonConfigurationModel(v24);
}

uint64_t StackedButtonsModel.UseCase.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x6C6143724F646461;
  }

  if (a1 == 1)
  {
    return 0x747465536E65706FLL;
  }

  return 0xD000000000000011;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance StackedButtonsModel.UseCase(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x747465536E65706FLL;
  v4 = 0xEC00000073676E69;
  v5 = 0x800000025E5A6100;
  if (v2 != 1)
  {
    v3 = 0xD000000000000011;
    v4 = 0x800000025E5A6100;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x6C6143724F646461;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xEF74706D6F72506CLL;
  }

  v8 = 0x747465536E65706FLL;
  if (*a2 == 1)
  {
    v5 = 0xEC00000073676E69;
  }

  else
  {
    v8 = 0xD000000000000011;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6C6143724F646461;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xEF74706D6F72506CLL;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance StackedButtonsModel.UseCase()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance StackedButtonsModel.UseCase(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance StackedButtonsModel.UseCase(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance StackedButtonsModel.UseCase@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized StackedButtonsModel.UseCase.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance StackedButtonsModel.UseCase(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEF74706D6F72506CLL;
  v4 = 0xEC00000073676E69;
  v5 = 0x747465536E65706FLL;
  if (v2 != 1)
  {
    v5 = 0xD000000000000011;
    v4 = 0x800000025E5A6100;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6C6143724F646461;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t StackedButtonsModel.init(buttonConfiguration:useCase:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14PhoneSnippetUI24ButtonConfigurationModelVGMd, &_ss23_ContiguousArrayStorageCy14PhoneSnippetUI24ButtonConfigurationModelVGMR);
  v2 = *(type metadata accessor for ButtonConfigurationModel(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_25E59F720;
  outlined init with take of ButtonConfigurationModel(a1, v4 + v3);
  return v4;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance StackedButtonsModel.CodingKeys()
{
  if (*v0)
  {
    return 0x65736143657375;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance StackedButtonsModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x800000025E5A6D50 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x65736143657375 && a2 == 0xE700000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance StackedButtonsModel.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = lazy protocol witness table accessor for type StackedButtonsModel.CodingKeys and conformance StackedButtonsModel.CodingKeys(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance StackedButtonsModel.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = lazy protocol witness table accessor for type StackedButtonsModel.CodingKeys and conformance StackedButtonsModel.CodingKeys(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t StackedButtonsModel.encode(to:)(void *a1, uint64_t a2, char a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14PhoneSnippetUI19StackedButtonsModelV10CodingKeys33_1D25BCEF1E18A562B1E968FB17ADA55ELLOGMd, &_ss22KeyedEncodingContainerVy14PhoneSnippetUI19StackedButtonsModelV10CodingKeys33_1D25BCEF1E18A562B1E968FB17ADA55ELLOGMR);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v18[-v9];
  v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type StackedButtonsModel.CodingKeys and conformance StackedButtonsModel.CodingKeys(v11, v12, v13);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v19 = a2;
  v18[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay14PhoneSnippetUI24ButtonConfigurationModelVGMd, &_sSay14PhoneSnippetUI24ButtonConfigurationModelVGMR);
  lazy protocol witness table accessor for type [ButtonConfigurationModel] and conformance <A> [A](&lazy protocol witness table cache variable for type [ButtonConfigurationModel] and conformance <A> [A], &lazy protocol witness table cache variable for type ButtonConfigurationModel and conformance ButtonConfigurationModel, &protocol conformance descriptor for ButtonConfigurationModel, MEMORY[0x277D83948]);
  v14 = KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v3)
  {
    v18[14] = a3;
    v18[13] = 1;
    lazy protocol witness table accessor for type StackedButtonsModel.UseCase and conformance StackedButtonsModel.UseCase(v14, v15, v16);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t protocol witness for Decodable.init(from:) in conformance StackedButtonsModel@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = specialized StackedButtonsModel.init(from:)(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
  }

  return result;
}

uint64_t specialized StackedButtonsModel.shouldHideSnippet(on:)(uint64_t a1, char a2)
{
  v3 = type metadata accessor for DeviceIdiom();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v4 + 104);
  v7(v6, *MEMORY[0x277D61BE8], v3);
  _s10Foundation4UUIDVACSEAAWlTm_0(&lazy protocol witness table cache variable for type DeviceIdiom and conformance DeviceIdiom, MEMORY[0x277D61C30], MEMORY[0x277D61C40]);
  v8 = dispatch thunk of static Equatable.== infix(_:_:)();
  v9 = *(v4 + 8);
  v9(v6, v3);
  if (v8)
  {
    goto LABEL_2;
  }

  if (a2 != 1)
  {
    v10 = 0;
    return v10 & 1;
  }

  v7(v6, *MEMORY[0x277D61C10], v3);
  v11 = static DeviceIdiom.== infix(_:_:)();
  v9(v6, v3);
  if (v11)
  {
LABEL_2:
    v10 = 1;
  }

  else
  {
    v7(v6, *MEMORY[0x277D61BF0], v3);
    v10 = static DeviceIdiom.== infix(_:_:)();
    v9(v6, v3);
  }

  return v10 & 1;
}

uint64_t type metadata accessor for ButtonConfigurationModel(uint64_t a1)
{
  result = type metadata singleton initialization cache for ButtonConfigurationModel;
  if (!type metadata singleton initialization cache for ButtonConfigurationModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ButtonConfigurationModel.CodingKeys and conformance ButtonConfigurationModel.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type ButtonConfigurationModel.CodingKeys and conformance ButtonConfigurationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type ButtonConfigurationModel.CodingKeys and conformance ButtonConfigurationModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonConfigurationModel.CodingKeys and conformance ButtonConfigurationModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ButtonConfigurationModel.CodingKeys and conformance ButtonConfigurationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type ButtonConfigurationModel.CodingKeys and conformance ButtonConfigurationModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonConfigurationModel.CodingKeys and conformance ButtonConfigurationModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ButtonConfigurationModel.CodingKeys and conformance ButtonConfigurationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type ButtonConfigurationModel.CodingKeys and conformance ButtonConfigurationModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonConfigurationModel.CodingKeys and conformance ButtonConfigurationModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ButtonConfigurationModel.CodingKeys and conformance ButtonConfigurationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type ButtonConfigurationModel.CodingKeys and conformance ButtonConfigurationModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonConfigurationModel.CodingKeys and conformance ButtonConfigurationModel.CodingKeys);
  }

  return result;
}

uint64_t outlined init with copy of ButtonConfigurationModel(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ButtonConfigurationModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of ButtonConfigurationModel(uint64_t a1)
{
  v2 = type metadata accessor for ButtonConfigurationModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t specialized ButtonConfigurationModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6562616CLL && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x800000025E5A6C40 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x800000025E5A6D30 == a2)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

unint64_t specialized StackedButtonsModel.UseCase.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of StackedButtonsModel.UseCase.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t outlined init with take of ButtonConfigurationModel(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ButtonConfigurationModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t specialized StackedButtonsModel.responseViewId.getter(char a1)
{
  _StringGuts.grow(_:)(22);

  if (a1)
  {
    if (a1 == 1)
    {
      v2 = 0x747465536E65706FLL;
    }

    else
    {
      v2 = 0xD000000000000011;
    }

    if (a1 == 1)
    {
      v3 = 0xEC00000073676E69;
    }

    else
    {
      v3 = 0x800000025E5A6100;
    }
  }

  else
  {
    v3 = 0xEF74706D6F72506CLL;
    v2 = 0x6C6143724F646461;
  }

  MEMORY[0x25F8B7B50](v2, v3);

  return 0xD000000000000014;
}

unint64_t lazy protocol witness table accessor for type StackedButtonsModel.CodingKeys and conformance StackedButtonsModel.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type StackedButtonsModel.CodingKeys and conformance StackedButtonsModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type StackedButtonsModel.CodingKeys and conformance StackedButtonsModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StackedButtonsModel.CodingKeys and conformance StackedButtonsModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StackedButtonsModel.CodingKeys and conformance StackedButtonsModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type StackedButtonsModel.CodingKeys and conformance StackedButtonsModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StackedButtonsModel.CodingKeys and conformance StackedButtonsModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StackedButtonsModel.CodingKeys and conformance StackedButtonsModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type StackedButtonsModel.CodingKeys and conformance StackedButtonsModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StackedButtonsModel.CodingKeys and conformance StackedButtonsModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StackedButtonsModel.CodingKeys and conformance StackedButtonsModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type StackedButtonsModel.CodingKeys and conformance StackedButtonsModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StackedButtonsModel.CodingKeys and conformance StackedButtonsModel.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StackedButtonsModel.UseCase and conformance StackedButtonsModel.UseCase(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type StackedButtonsModel.UseCase and conformance StackedButtonsModel.UseCase;
  if (!lazy protocol witness table cache variable for type StackedButtonsModel.UseCase and conformance StackedButtonsModel.UseCase)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StackedButtonsModel.UseCase and conformance StackedButtonsModel.UseCase);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StackedButtonsModel.UseCase and conformance StackedButtonsModel.UseCase;
  if (!lazy protocol witness table cache variable for type StackedButtonsModel.UseCase and conformance StackedButtonsModel.UseCase)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StackedButtonsModel.UseCase and conformance StackedButtonsModel.UseCase);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StackedButtonsModel.UseCase and conformance StackedButtonsModel.UseCase;
  if (!lazy protocol witness table cache variable for type StackedButtonsModel.UseCase and conformance StackedButtonsModel.UseCase)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StackedButtonsModel.UseCase and conformance StackedButtonsModel.UseCase);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StackedButtonsModel.UseCase and conformance StackedButtonsModel.UseCase;
  if (!lazy protocol witness table cache variable for type StackedButtonsModel.UseCase and conformance StackedButtonsModel.UseCase)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StackedButtonsModel.UseCase and conformance StackedButtonsModel.UseCase);
  }

  return result;
}

uint64_t specialized StackedButtonsModel.init(from:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14PhoneSnippetUI19StackedButtonsModelV10CodingKeys33_1D25BCEF1E18A562B1E968FB17ADA55ELLOGMd, &_ss22KeyedDecodingContainerVy14PhoneSnippetUI19StackedButtonsModelV10CodingKeys33_1D25BCEF1E18A562B1E968FB17ADA55ELLOGMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14[-v4];
  v6 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type StackedButtonsModel.CodingKeys and conformance StackedButtonsModel.CodingKeys(v6, v7, v8);
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay14PhoneSnippetUI24ButtonConfigurationModelVGMd, &_sSay14PhoneSnippetUI24ButtonConfigurationModelVGMR);
  v14[7] = 0;
  lazy protocol witness table accessor for type [ButtonConfigurationModel] and conformance <A> [A](&lazy protocol witness table cache variable for type [ButtonConfigurationModel] and conformance <A> [A], &lazy protocol witness table cache variable for type ButtonConfigurationModel and conformance ButtonConfigurationModel, &protocol conformance descriptor for ButtonConfigurationModel, MEMORY[0x277D83978]);
  v9 = KeyedDecodingContainer.decode<A>(_:forKey:)();
  v11 = v15;
  v14[5] = 1;
  lazy protocol witness table accessor for type StackedButtonsModel.UseCase and conformance StackedButtonsModel.UseCase(v9, v12, v13);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v11;
}

unint64_t instantiation function for generic protocol witness table for StackedButtonsModel(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table accessor for type StackedButtonsModel and conformance StackedButtonsModel(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}