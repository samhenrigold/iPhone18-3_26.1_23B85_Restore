uint64_t SiriNeedsLocationAccessErrorView.model.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SiriNeedsLocationAccessErrorView(0) + 20);
  type metadata accessor for SiriKitUIModel.SiriNeedsLocationAccessErrorModel();
  OUTLINED_FUNCTION_0();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for SiriNeedsLocationAccessErrorView(uint64_t a1)
{
  result = type metadata singleton initialization cache for SiriNeedsLocationAccessErrorView;
  if (!type metadata singleton initialization cache for SiriNeedsLocationAccessErrorView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SiriNeedsLocationAccessErrorView.body.getter()
{
  v1 = type metadata accessor for SiriNeedsLocationAccessErrorView(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1 - 8);
  outlined init with copy of SiriNeedsLocationAccessErrorView(v0, v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  outlined init with take of SiriNeedsLocationAccessErrorView(v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA0G0VyAA5LabelVyAA4TextVAA05EmptyC0VGG_07SnippetB008RFButtonE0VQo_Md, &_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA0G0VyAA5LabelVyAA4TextVAA05EmptyC0VGG_07SnippetB008RFButtonE0VQo_MR);
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA9EmptyViewVGGMd, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA9EmptyViewVGGMR);
  v7 = type metadata accessor for RFButtonStyle();
  v8 = lazy protocol witness table accessor for type Button<Label<Text, EmptyView>> and conformance Button<A>(&lazy protocol witness table cache variable for type Button<Label<Text, EmptyView>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA9EmptyViewVGGMd, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA9EmptyViewVGGMR, &protocol conformance descriptor for Button<A>);
  v9 = lazy protocol witness table accessor for type RFButtonStyle and conformance RFButtonStyle();
  v11[0] = v6;
  v11[1] = v7;
  v11[2] = v8;
  v11[3] = v9;
  swift_getOpaqueTypeConformance2();
  return ComponentStack.init(content:)();
}

uint64_t outlined init with copy of SiriNeedsLocationAccessErrorView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriNeedsLocationAccessErrorView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of SiriNeedsLocationAccessErrorView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriNeedsLocationAccessErrorView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RFButtonStyle and conformance RFButtonStyle()
{
  result = lazy protocol witness table cache variable for type RFButtonStyle and conformance RFButtonStyle;
  if (!lazy protocol witness table cache variable for type RFButtonStyle and conformance RFButtonStyle)
  {
    type metadata accessor for RFButtonStyle();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RFButtonStyle and conformance RFButtonStyle);
  }

  return result;
}

uint64_t SiriNeedsLocationAccessErrorView.button()@<X0>(uint64_t a1@<X8>)
{
  v16[1] = a1;
  v16[0] = type metadata accessor for RFButtonStyle();
  v2 = *(v16[0] - 8);
  __chkstk_darwin(v16[0]);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SiriNeedsLocationAccessErrorView(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA9EmptyViewVGGMd, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA9EmptyViewVGGMR);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v16 - v10;
  outlined init with copy of SiriNeedsLocationAccessErrorView(v1, v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v13 = swift_allocObject();
  outlined init with take of SiriNeedsLocationAccessErrorView(v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  v17 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5LabelVyAA4TextVAA9EmptyViewVGMd, &_s7SwiftUI5LabelVyAA4TextVAA9EmptyViewVGMR);
  lazy protocol witness table accessor for type Button<Label<Text, EmptyView>> and conformance Button<A>(&lazy protocol witness table cache variable for type Label<Text, EmptyView> and conformance Label<A, B>, &_s7SwiftUI5LabelVyAA4TextVAA9EmptyViewVGMd, &_s7SwiftUI5LabelVyAA4TextVAA9EmptyViewVGMR, &protocol conformance descriptor for Label<A, B>);
  Button.init(action:label:)();
  static PrimitiveButtonStyle<>.rfButton.getter();
  lazy protocol witness table accessor for type Button<Label<Text, EmptyView>> and conformance Button<A>(&lazy protocol witness table cache variable for type Button<Label<Text, EmptyView>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA9EmptyViewVGGMd, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA9EmptyViewVGGMR, &protocol conformance descriptor for Button<A>);
  lazy protocol witness table accessor for type RFButtonStyle and conformance RFButtonStyle();
  v14 = v16[0];
  View.buttonStyle<A>(_:)();
  (*(v2 + 8))(v4, v14);
  return (*(v9 + 8))(v11, v8);
}

uint64_t closure #1 in SiriNeedsLocationAccessErrorView.button()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI15InteractionTypeOSgMd, &_s9SnippetUI15InteractionTypeOSgMR);
  __chkstk_darwin(v0 - 8);
  v2 = &v32 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit14ActionPropertyVSgMd, &_s10SnippetKit14ActionPropertyVSgMR);
  __chkstk_darwin(v3 - 8);
  v5 = &v32 - v4;
  v6 = type metadata accessor for Command();
  v33 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  __chkstk_darwin(v9 - 8);
  v11 = &v32 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI21StandardActionHandlerVSgMd, &_s9SnippetUI21StandardActionHandlerVSgMR);
  __chkstk_darwin(v12 - 8);
  v14 = &v32 - v13;
  v15 = type metadata accessor for StandardActionHandler();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  ActionHandler.wrappedValue.getter();
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    return outlined destroy of StandardActionHandler?(v14, &_s9SnippetUI21StandardActionHandlerVSgMd, &_s9SnippetUI21StandardActionHandlerVSgMR);
  }

  v32 = v2;
  (*(v16 + 32))(v18, v14, v15);
  v20 = [objc_allocWithZone(SAUIAppPunchOut) init];
  URL.init(string:)();
  v21 = type metadata accessor for URL();
  v23 = 0;
  if (__swift_getEnumTagSinglePayload(v11, 1, v21) != 1)
  {
    URL._bridgeToObjectiveC()(v22);
    v23 = v24;
    (*(*(v21 - 8) + 8))(v11, v21);
  }

  [v20 setPunchOutUri:v23];

  *v8 = v20;
  v8[8] = 1;
  v25 = v33;
  (*(v33 + 104))(v8, enum case for Command.aceCommand(_:), v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10SnippetKit24ActionElementConvertible_pGMd, &_ss23_ContiguousArrayStorageCy10SnippetKit24ActionElementConvertible_pGMR);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_6B40;
  *(v26 + 56) = v6;
  *(v26 + 64) = &protocol witness table for Command;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v26 + 32));
  (*(v25 + 16))(boxed_opaque_existential_1, v8, v6);
  v28 = v20;
  ActionProperty.init(_:)();
  v29 = type metadata accessor for ActionProperty();
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v29);
  v30 = type metadata accessor for InteractionType();
  v31 = v32;
  __swift_storeEnumTagSinglePayload(v32, 1, 1, v30);
  StandardActionHandler.perform(_:interactionType:)();

  outlined destroy of StandardActionHandler?(v31, &_s9SnippetUI15InteractionTypeOSgMd, &_s9SnippetUI15InteractionTypeOSgMR);
  outlined destroy of StandardActionHandler?(v5, &_s10SnippetKit14ActionPropertyVSgMd, &_s10SnippetKit14ActionPropertyVSgMR);
  (*(v25 + 8))(v8, v6);
  return (*(v16 + 8))(v18, v15);
}

uint64_t closure #1 in closure #2 in SiriNeedsLocationAccessErrorView.button()@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for SiriNeedsLocationAccessErrorView(0);
  SiriKitUIModel.SiriNeedsLocationAccessErrorModel.buttonLabel.getter();
  lazy protocol witness table accessor for type String and conformance String();
  result = Text.init<A>(_:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t SiriNeedsLocationAccessErrorView.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  ActionHandler.init()();
  v4 = *(type metadata accessor for SiriNeedsLocationAccessErrorView(0) + 20);
  type metadata accessor for SiriKitUIModel.SiriNeedsLocationAccessErrorModel();
  OUTLINED_FUNCTION_0();
  v6 = *(v5 + 32);

  return v6(a2 + v4, a1);
}

uint64_t variable initialization expression of LocationAccessPromptView.buttonTextBlue()
{
  v0 = [objc_opt_self() _carSystemFocusColor];

  return Color.init(uiColor:)();
}

uint64_t sub_2350(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ActionHandler();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = type metadata accessor for SiriKitUIModel.SiriNeedsLocationAccessErrorModel();
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_2428(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for ActionHandler();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = type metadata accessor for SiriKitUIModel.SiriNeedsLocationAccessErrorModel();
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t type metadata completion function for SiriNeedsLocationAccessErrorView(uint64_t a1)
{
  result = type metadata accessor for ActionHandler();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for SiriKitUIModel.SiriNeedsLocationAccessErrorModel();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t objectdestroyTm()
{
  v1 = (type metadata accessor for SiriNeedsLocationAccessErrorView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  type metadata accessor for ActionHandler();
  OUTLINED_FUNCTION_0();
  (*(v5 + 8))(v0 + v3);
  v6 = v1[7];
  type metadata accessor for SiriKitUIModel.SiriNeedsLocationAccessErrorModel();
  OUTLINED_FUNCTION_0();
  (*(v7 + 8))(v0 + v3 + v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t partial apply for closure #1 in SiriNeedsLocationAccessErrorView.button()()
{
  type metadata accessor for SiriNeedsLocationAccessErrorView(0);

  return closure #1 in SiriNeedsLocationAccessErrorView.button()();
}

uint64_t lazy protocol witness table accessor for type Button<Label<Text, EmptyView>> and conformance Button<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

unint64_t lazy protocol witness table accessor for type String and conformance String()
{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t outlined destroy of StandardActionHandler?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_0();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t LocationAccessPromptView.model.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LocationAccessPromptView(0) + 20);
  type metadata accessor for SiriKitUIModel.LocationAccessCarPlayPromptModel();
  OUTLINED_FUNCTION_0();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for LocationAccessPromptView(uint64_t a1)
{
  result = type metadata singleton initialization cache for LocationAccessPromptView;
  if (!type metadata singleton initialization cache for LocationAccessPromptView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t LocationAccessPromptView.buttonTextBlue.getter()
{
  v1 = *(v0 + *(type metadata accessor for LocationAccessPromptView(0) + 24));

  return _swift_retain(v1);
}

uint64_t LocationAccessPromptView.body.getter()
{
  v1 = type metadata accessor for LocationAccessPromptView(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1 - 8);
  outlined init with copy of LocationAccessPromptView(v0, &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  outlined init with take of LocationAccessPromptView(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA0D0P07SnippetB0E10separators_10isOverrideQr0E3Kit14SeparatorStyleO_SbtFQOyAF018SimpleItemStandardD0V_Qo__AA15ModifiedContentVyAA6HStackVyACyAA6SpacerV_AeAE06buttonK0yQrqd__AA06ButtonK0Rd__lFQOyAA0T0VyAA5LabelVyAA4TextVAA05EmptyD0VGG_AF0n4SiritK0VQo_ATtGGAA14_PaddingLayoutVGA12_SgA12_tGMd, &_s7SwiftUI9TupleViewVyAA0D0P07SnippetB0E10separators_10isOverrideQr0E3Kit14SeparatorStyleO_SbtFQOyAF018SimpleItemStandardD0V_Qo__AA15ModifiedContentVyAA6HStackVyACyAA6SpacerV_AeAE06buttonK0yQrqd__AA06ButtonK0Rd__lFQOyAA0T0VyAA5LabelVyAA4TextVAA05EmptyD0VGG_AF0n4SiritK0VQo_ATtGGAA14_PaddingLayoutVGA12_SgA12_tGMR);
  lazy protocol witness table accessor for type Button<Label<Text, EmptyView>> and conformance Button<A>(&lazy protocol witness table cache variable for type TupleView<(<<opaque return type of View.separators(_:isOverride:)>>.0, ModifiedContent<HStack<TupleView<(Spacer, <<opaque return type of View.buttonStyle<A>(_:)>>.0, Spacer)>>, _PaddingLayout>, ModifiedContent<HStack<TupleView<(Spacer, <<opaque return type of View.buttonStyle<A>(_:)>>.0, Spacer)>>, _PaddingLayout>?, ModifiedContent<HStack<TupleView<(Spacer, <<opaque return type of View.buttonStyle<A>(_:)>>.0, Spacer)>>, _PaddingLayout>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA0D0P07SnippetB0E10separators_10isOverrideQr0E3Kit14SeparatorStyleO_SbtFQOyAF018SimpleItemStandardD0V_Qo__AA15ModifiedContentVyAA6HStackVyACyAA6SpacerV_AeAE06buttonK0yQrqd__AA06ButtonK0Rd__lFQOyAA0T0VyAA5LabelVyAA4TextVAA05EmptyD0VGG_AF0n4SiritK0VQo_ATtGGAA14_PaddingLayoutVGA12_SgA12_tGMd, &_s7SwiftUI9TupleViewVyAA0D0P07SnippetB0E10separators_10isOverrideQr0E3Kit14SeparatorStyleO_SbtFQOyAF018SimpleItemStandardD0V_Qo__AA15ModifiedContentVyAA6HStackVyACyAA6SpacerV_AeAE06buttonK0yQrqd__AA06ButtonK0Rd__lFQOyAA0T0VyAA5LabelVyAA4TextVAA05EmptyD0VGG_AF0n4SiritK0VQo_ATtGGAA14_PaddingLayoutVGA12_SgA12_tGMR, &protocol conformance descriptor for TupleView<A>);
  return ComponentStack.init(content:)();
}

uint64_t closure #1 in LocationAccessPromptView.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v92 = a1;
  v104 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0aB7UIModelO10ButtonInfoVSgMd, &_s11SiriKitFlow0aB7UIModelO10ButtonInfoVSgMR);
  __chkstk_darwin(v2 - 8);
  v99 = &v91 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA0G0PAAE11buttonStyleyQrqd__AA06ButtonJ0Rd__lFQOyAA0K0VyAA5LabelVyAA4TextVAA05EmptyG0VGG_07SnippetB0012StandardSirikJ0VQo_AItGGAA14_PaddingLayoutVGSgMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA0G0PAAE11buttonStyleyQrqd__AA06ButtonJ0Rd__lFQOyAA0K0VyAA5LabelVyAA4TextVAA05EmptyG0VGG_07SnippetB0012StandardSirikJ0VQo_AItGGAA14_PaddingLayoutVGSgMR);
  v5 = __chkstk_darwin(v4 - 8);
  v103 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v110 = &v91 - v7;
  v113 = type metadata accessor for SiriKitUIModel.ButtonInfo();
  v98 = *(v113 - 8);
  v8 = __chkstk_darwin(v113);
  v91 = &v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v107 = &v91 - v10;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA0G0PAAE11buttonStyleyQrqd__AA06ButtonJ0Rd__lFQOyAA0K0VyAA5LabelVyAA4TextVAA05EmptyG0VGG_07SnippetB0012StandardSirikJ0VQo_AItGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA0G0PAAE11buttonStyleyQrqd__AA06ButtonJ0Rd__lFQOyAA0K0VyAA5LabelVyAA4TextVAA05EmptyG0VGG_07SnippetB0012StandardSirikJ0VQo_AItGGAA14_PaddingLayoutVGMR);
  v11 = __chkstk_darwin(v105);
  v102 = &v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v114 = &v91 - v14;
  v15 = __chkstk_darwin(v13);
  v108 = (&v91 - v16);
  __chkstk_darwin(v15);
  v18 = &v91 - v17;
  v97 = type metadata accessor for SeparatorStyle();
  v95 = *(v97 - 8);
  __chkstk_darwin(v97);
  v94 = &v91 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for SimpleItemStandardView();
  v112 = *(v96 - 8);
  __chkstk_darwin(v96);
  v93 = &v91 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018SimpleItemStandardC0V_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018SimpleItemStandardC0V_Qo_MR);
  v100 = *(v21 - 8);
  v101 = v21;
  v22 = __chkstk_darwin(v21);
  v111 = &v91 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v25 = &v91 - v24;
  v106 = *(type metadata accessor for LocationAccessPromptView(0) + 20);
  v130 = SiriKitUIModel.LocationAccessCarPlayPromptModel.titlePrompt.getter();
  v131 = v26;
  lazy protocol witness table accessor for type String and conformance String();
  v27 = Text.init<A>(_:)();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  KeyPath = swift_getKeyPath();
  v130 = v27;
  v131 = v29;
  v35 = v31 & 1;
  v132 = v31 & 1;
  v133 = v33;
  v134 = KeyPath;
  v135 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGMR);
  lazy protocol witness table accessor for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>();
  v36 = View.eraseToAnyView()();
  outlined consume of Text.Storage(v27, v29, v35);
  v37 = v113;

  v38 = v92;

  v134 = &protocol witness table for AnyView;
  v133 = &type metadata for AnyView;
  v129 = 0;
  v130 = v36;
  v127 = 0u;
  v128 = 0u;
  v126 = 0;
  v124 = 0u;
  v125 = 0u;
  v123 = 0;
  v121 = 0u;
  v122 = 0u;
  v120 = 0;
  v118 = 0u;
  v119 = 0u;
  v117 = 0;
  v115 = 0u;
  v116 = 0u;
  v39 = v93;
  SimpleItemStandardView.init(text1:text2:text3:text4:text5:text6:)();
  v40 = v94;
  v41 = v95;
  v42 = v97;
  (*(v95 + 104))(v94, enum case for SeparatorStyle.none(_:), v97);
  lazy protocol witness table accessor for type SimpleItemStandardView and conformance SimpleItemStandardView(&lazy protocol witness table cache variable for type SimpleItemStandardView and conformance SimpleItemStandardView, &type metadata accessor for SimpleItemStandardView, &protocol conformance descriptor for SimpleItemStandardView);
  v109 = v25;
  v43 = v96;
  View.separators(_:isOverride:)();
  (*(v41 + 8))(v40, v42);
  v112[1](v39, v43);
  v44 = v107;
  SiriKitUIModel.LocationAccessCarPlayPromptModel.buttonAllowOnce.getter();
  *v18 = static VerticalAlignment.center.getter();
  *(v18 + 1) = 0;
  v18[16] = 1;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA6SpacerV_AA0D0PAAE11buttonStyleyQrqd__AA06ButtonK0Rd__lFQOyAA0L0VyAA5LabelVyAA4TextVAA05EmptyD0VGG_07SnippetB0012StandardSirilK0VQo_AKtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA6SpacerV_AA0D0PAAE11buttonStyleyQrqd__AA06ButtonK0Rd__lFQOyAA0L0VyAA5LabelVyAA4TextVAA05EmptyD0VGG_07SnippetB0012StandardSirilK0VQo_AKtGGMR);
  closure #1 in LocationAccessPromptView.button(info:)(v38, v44, &v18[*(v45 + 44)]);
  LOBYTE(v40) = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v46 = *(v105 + 36);
  v112 = v18;
  v47 = &v18[v46];
  *v47 = v40;
  *(v47 + 1) = v48;
  *(v47 + 2) = v49;
  *(v47 + 3) = v50;
  *(v47 + 4) = v51;
  v47[40] = 0;
  v52 = v98;
  v53 = *(v98 + 8);
  v53(v44, v37);
  v54 = v99;
  SiriKitUIModel.LocationAccessCarPlayPromptModel.buttonAllowWhileUsingApp.getter();
  v55 = v54;
  if (__swift_getEnumTagSinglePayload(v54, 1, v37) == 1)
  {
    outlined destroy of ModifiedContent<HStack<TupleView<(Spacer, <<opaque return type of View.buttonStyle<A>(_:)>>.0, Spacer)>>, _PaddingLayout>(v54, &_s11SiriKitFlow0aB7UIModelO10ButtonInfoVSgMd, &_s11SiriKitFlow0aB7UIModelO10ButtonInfoVSgMR);
    v56 = 1;
    v57 = v110;
    v58 = v108;
    v59 = v105;
  }

  else
  {
    v60 = v91;
    v61 = v113;
    (*(v52 + 32))(v91, v55, v113);
    v62 = static VerticalAlignment.center.getter();
    v63 = v108;
    *v108 = v62;
    v63[1] = 0;
    *(v63 + 16) = 1;
    closure #1 in LocationAccessPromptView.button(info:)(v38, v60, (v63 + *(v45 + 44)));
    v64 = static Edge.Set.vertical.getter();
    EdgeInsets.init(_all:)();
    v65 = v105;
    v66 = v63 + *(v105 + 36);
    *v66 = v64;
    *(v66 + 1) = v67;
    *(v66 + 2) = v68;
    *(v66 + 3) = v69;
    *(v66 + 4) = v70;
    v66[40] = 0;
    v53(v60, v61);
    v57 = v110;
    sub_4748(v63, v110);
    v56 = 0;
    v58 = v63;
    v59 = v65;
  }

  v71 = v53;
  __swift_storeEnumTagSinglePayload(v57, v56, 1, v59);
  v72 = v57;
  v73 = v107;
  SiriKitUIModel.LocationAccessCarPlayPromptModel.buttonDontAllow.getter();
  *v58 = static VerticalAlignment.center.getter();
  v58[1] = 0;
  *(v58 + 16) = 1;
  closure #1 in LocationAccessPromptView.button(info:)(v38, v73, (v58 + *(v45 + 44)));
  v74 = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v75 = v58 + *(v59 + 36);
  *v75 = v74;
  *(v75 + 1) = v76;
  *(v75 + 2) = v77;
  *(v75 + 3) = v78;
  *(v75 + 4) = v79;
  v75[40] = 0;
  v71(v73, v113);
  v81 = v100;
  v80 = v101;
  v82 = v58;
  v83 = *(v100 + 16);
  v84 = v111;
  v83(v111, v109, v101);
  outlined init with copy of ModifiedContent<HStack<TupleView<(Spacer, <<opaque return type of View.buttonStyle<A>(_:)>>.0, Spacer)>>, _PaddingLayout>(v112, v114, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA0G0PAAE11buttonStyleyQrqd__AA06ButtonJ0Rd__lFQOyAA0K0VyAA5LabelVyAA4TextVAA05EmptyG0VGG_07SnippetB0012StandardSirikJ0VQo_AItGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA0G0PAAE11buttonStyleyQrqd__AA06ButtonJ0Rd__lFQOyAA0K0VyAA5LabelVyAA4TextVAA05EmptyG0VGG_07SnippetB0012StandardSirikJ0VQo_AItGGAA14_PaddingLayoutVGMR);
  v85 = v103;
  outlined init with copy of ModifiedContent<HStack<TupleView<(Spacer, <<opaque return type of View.buttonStyle<A>(_:)>>.0, Spacer)>>, _PaddingLayout>(v72, v103, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA0G0PAAE11buttonStyleyQrqd__AA06ButtonJ0Rd__lFQOyAA0K0VyAA5LabelVyAA4TextVAA05EmptyG0VGG_07SnippetB0012StandardSirikJ0VQo_AItGGAA14_PaddingLayoutVGSgMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA0G0PAAE11buttonStyleyQrqd__AA06ButtonJ0Rd__lFQOyAA0K0VyAA5LabelVyAA4TextVAA05EmptyG0VGG_07SnippetB0012StandardSirikJ0VQo_AItGGAA14_PaddingLayoutVGSgMR);
  v86 = v102;
  outlined init with copy of ModifiedContent<HStack<TupleView<(Spacer, <<opaque return type of View.buttonStyle<A>(_:)>>.0, Spacer)>>, _PaddingLayout>(v82, v102, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA0G0PAAE11buttonStyleyQrqd__AA06ButtonJ0Rd__lFQOyAA0K0VyAA5LabelVyAA4TextVAA05EmptyG0VGG_07SnippetB0012StandardSirikJ0VQo_AItGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA0G0PAAE11buttonStyleyQrqd__AA06ButtonJ0Rd__lFQOyAA0K0VyAA5LabelVyAA4TextVAA05EmptyG0VGG_07SnippetB0012StandardSirikJ0VQo_AItGGAA14_PaddingLayoutVGMR);
  v87 = v104;
  v83(v104, v84, v80);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018SimpleItemStandardC0V_Qo__AA15ModifiedContentVyAA6HStackVyAA05TupleC0VyAA6SpacerV_AcAE06buttonJ0yQrqd__AA06ButtonJ0Rd__lFQOyAA0T0VyAA5LabelVyAA4TextVAA05EmptyC0VGG_AD0m4SiritJ0VQo_ATtGGAA14_PaddingLayoutVGA12_SgA12_tMd, &_s7SwiftUI4ViewP07SnippetB0E10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018SimpleItemStandardC0V_Qo__AA15ModifiedContentVyAA6HStackVyAA05TupleC0VyAA6SpacerV_AcAE06buttonJ0yQrqd__AA06ButtonJ0Rd__lFQOyAA0T0VyAA5LabelVyAA4TextVAA05EmptyC0VGG_AD0m4SiritJ0VQo_ATtGGAA14_PaddingLayoutVGA12_SgA12_tMR);
  outlined init with copy of ModifiedContent<HStack<TupleView<(Spacer, <<opaque return type of View.buttonStyle<A>(_:)>>.0, Spacer)>>, _PaddingLayout>(v114, &v87[v88[12]], &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA0G0PAAE11buttonStyleyQrqd__AA06ButtonJ0Rd__lFQOyAA0K0VyAA5LabelVyAA4TextVAA05EmptyG0VGG_07SnippetB0012StandardSirikJ0VQo_AItGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA0G0PAAE11buttonStyleyQrqd__AA06ButtonJ0Rd__lFQOyAA0K0VyAA5LabelVyAA4TextVAA05EmptyG0VGG_07SnippetB0012StandardSirikJ0VQo_AItGGAA14_PaddingLayoutVGMR);
  outlined init with copy of ModifiedContent<HStack<TupleView<(Spacer, <<opaque return type of View.buttonStyle<A>(_:)>>.0, Spacer)>>, _PaddingLayout>(v85, &v87[v88[16]], &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA0G0PAAE11buttonStyleyQrqd__AA06ButtonJ0Rd__lFQOyAA0K0VyAA5LabelVyAA4TextVAA05EmptyG0VGG_07SnippetB0012StandardSirikJ0VQo_AItGGAA14_PaddingLayoutVGSgMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA0G0PAAE11buttonStyleyQrqd__AA06ButtonJ0Rd__lFQOyAA0K0VyAA5LabelVyAA4TextVAA05EmptyG0VGG_07SnippetB0012StandardSirikJ0VQo_AItGGAA14_PaddingLayoutVGSgMR);
  outlined init with copy of ModifiedContent<HStack<TupleView<(Spacer, <<opaque return type of View.buttonStyle<A>(_:)>>.0, Spacer)>>, _PaddingLayout>(v86, &v87[v88[20]], &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA0G0PAAE11buttonStyleyQrqd__AA06ButtonJ0Rd__lFQOyAA0K0VyAA5LabelVyAA4TextVAA05EmptyG0VGG_07SnippetB0012StandardSirikJ0VQo_AItGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA0G0PAAE11buttonStyleyQrqd__AA06ButtonJ0Rd__lFQOyAA0K0VyAA5LabelVyAA4TextVAA05EmptyG0VGG_07SnippetB0012StandardSirikJ0VQo_AItGGAA14_PaddingLayoutVGMR);
  outlined destroy of ModifiedContent<HStack<TupleView<(Spacer, <<opaque return type of View.buttonStyle<A>(_:)>>.0, Spacer)>>, _PaddingLayout>(v108, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA0G0PAAE11buttonStyleyQrqd__AA06ButtonJ0Rd__lFQOyAA0K0VyAA5LabelVyAA4TextVAA05EmptyG0VGG_07SnippetB0012StandardSirikJ0VQo_AItGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA0G0PAAE11buttonStyleyQrqd__AA06ButtonJ0Rd__lFQOyAA0K0VyAA5LabelVyAA4TextVAA05EmptyG0VGG_07SnippetB0012StandardSirikJ0VQo_AItGGAA14_PaddingLayoutVGMR);
  outlined destroy of ModifiedContent<HStack<TupleView<(Spacer, <<opaque return type of View.buttonStyle<A>(_:)>>.0, Spacer)>>, _PaddingLayout>(v110, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA0G0PAAE11buttonStyleyQrqd__AA06ButtonJ0Rd__lFQOyAA0K0VyAA5LabelVyAA4TextVAA05EmptyG0VGG_07SnippetB0012StandardSirikJ0VQo_AItGGAA14_PaddingLayoutVGSgMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA0G0PAAE11buttonStyleyQrqd__AA06ButtonJ0Rd__lFQOyAA0K0VyAA5LabelVyAA4TextVAA05EmptyG0VGG_07SnippetB0012StandardSirikJ0VQo_AItGGAA14_PaddingLayoutVGSgMR);
  outlined destroy of ModifiedContent<HStack<TupleView<(Spacer, <<opaque return type of View.buttonStyle<A>(_:)>>.0, Spacer)>>, _PaddingLayout>(v112, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA0G0PAAE11buttonStyleyQrqd__AA06ButtonJ0Rd__lFQOyAA0K0VyAA5LabelVyAA4TextVAA05EmptyG0VGG_07SnippetB0012StandardSirikJ0VQo_AItGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA0G0PAAE11buttonStyleyQrqd__AA06ButtonJ0Rd__lFQOyAA0K0VyAA5LabelVyAA4TextVAA05EmptyG0VGG_07SnippetB0012StandardSirikJ0VQo_AItGGAA14_PaddingLayoutVGMR);
  v89 = *(v81 + 8);
  v89(v109, v80);
  outlined destroy of ModifiedContent<HStack<TupleView<(Spacer, <<opaque return type of View.buttonStyle<A>(_:)>>.0, Spacer)>>, _PaddingLayout>(v86, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA0G0PAAE11buttonStyleyQrqd__AA06ButtonJ0Rd__lFQOyAA0K0VyAA5LabelVyAA4TextVAA05EmptyG0VGG_07SnippetB0012StandardSirikJ0VQo_AItGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA0G0PAAE11buttonStyleyQrqd__AA06ButtonJ0Rd__lFQOyAA0K0VyAA5LabelVyAA4TextVAA05EmptyG0VGG_07SnippetB0012StandardSirikJ0VQo_AItGGAA14_PaddingLayoutVGMR);
  outlined destroy of ModifiedContent<HStack<TupleView<(Spacer, <<opaque return type of View.buttonStyle<A>(_:)>>.0, Spacer)>>, _PaddingLayout>(v85, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA0G0PAAE11buttonStyleyQrqd__AA06ButtonJ0Rd__lFQOyAA0K0VyAA5LabelVyAA4TextVAA05EmptyG0VGG_07SnippetB0012StandardSirikJ0VQo_AItGGAA14_PaddingLayoutVGSgMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA0G0PAAE11buttonStyleyQrqd__AA06ButtonJ0Rd__lFQOyAA0K0VyAA5LabelVyAA4TextVAA05EmptyG0VGG_07SnippetB0012StandardSirikJ0VQo_AItGGAA14_PaddingLayoutVGSgMR);
  outlined destroy of ModifiedContent<HStack<TupleView<(Spacer, <<opaque return type of View.buttonStyle<A>(_:)>>.0, Spacer)>>, _PaddingLayout>(v114, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA0G0PAAE11buttonStyleyQrqd__AA06ButtonJ0Rd__lFQOyAA0K0VyAA5LabelVyAA4TextVAA05EmptyG0VGG_07SnippetB0012StandardSirikJ0VQo_AItGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA0G0PAAE11buttonStyleyQrqd__AA06ButtonJ0Rd__lFQOyAA0K0VyAA5LabelVyAA4TextVAA05EmptyG0VGG_07SnippetB0012StandardSirikJ0VQo_AItGGAA14_PaddingLayoutVGMR);
  return (v89)(v111, v80);
}

uint64_t outlined init with copy of LocationAccessPromptView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationAccessPromptView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_3534()
{
  type metadata accessor for LocationAccessPromptView(0);
  OUTLINED_FUNCTION_2();
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = *(v5 + 64);
  type metadata accessor for ActionHandler();
  OUTLINED_FUNCTION_0_0();
  (*(v7 + 8))(v1 + v4);
  v8 = *(v0 + 28);
  type metadata accessor for SiriKitUIModel.LocationAccessCarPlayPromptModel();
  OUTLINED_FUNCTION_0_0();
  (*(v9 + 8))(v1 + v4 + v8);

  return _swift_deallocObject(v1, v4 + v6, v3 | 7);
}

uint64_t outlined init with take of LocationAccessPromptView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationAccessPromptView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in LocationAccessPromptView.body.getter@<X0>(char *a1@<X8>)
{
  v3 = *(type metadata accessor for LocationAccessPromptView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return closure #1 in LocationAccessPromptView.body.getter(v4, a1);
}

uint64_t closure #1 in LocationAccessPromptView.button(info:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v49 = a3;
  v5 = type metadata accessor for StandardSiriButtonStyle();
  v6 = *(v5 - 8);
  v47 = v5;
  v48 = v6;
  __chkstk_darwin(v5);
  v46 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SiriKitUIModel.ButtonInfo();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = type metadata accessor for LocationAccessPromptView(0);
  v38 = *(v11 - 8);
  v12 = *(v38 + 64);
  __chkstk_darwin(v11 - 8);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA9EmptyViewVGGMd, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA9EmptyViewVGGMR);
  v15 = *(v14 - 8);
  v44 = v14;
  v45 = v15;
  __chkstk_darwin(v14);
  v39 = &v38 - v16;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA06ButtonE0Rd__lFQOyAA0F0VyAA5LabelVyAA4TextVAA05EmptyC0VGG_07SnippetB0012StandardSirifE0VQo_Md, &_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA06ButtonE0Rd__lFQOyAA0F0VyAA5LabelVyAA4TextVAA05EmptyC0VGG_07SnippetB0012StandardSirifE0VQo_MR);
  v41 = *(v43 - 8);
  v17 = __chkstk_darwin(v43);
  v42 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v40 = &v38 - v19;
  outlined init with copy of LocationAccessPromptView(a1, v13);
  (*(v9 + 16))(&v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v8);
  v20 = (*(v38 + 80) + 16) & ~*(v38 + 80);
  v21 = (v12 + *(v9 + 80) + v20) & ~*(v9 + 80);
  v22 = swift_allocObject();
  outlined init with take of LocationAccessPromptView(v13, v22 + v20);
  (*(v9 + 32))(v22 + v21, &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  v50 = a2;
  v51 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5LabelVyAA4TextVAA9EmptyViewVGMd, &_s7SwiftUI5LabelVyAA4TextVAA9EmptyViewVGMR);
  lazy protocol witness table accessor for type Button<Label<Text, EmptyView>> and conformance Button<A>(&lazy protocol witness table cache variable for type Label<Text, EmptyView> and conformance Label<A, B>, &_s7SwiftUI5LabelVyAA4TextVAA9EmptyViewVGMd, &_s7SwiftUI5LabelVyAA4TextVAA9EmptyViewVGMR, &protocol conformance descriptor for Label<A, B>);
  v23 = v39;
  Button.init(action:label:)();
  v24 = v46;
  static ButtonStyle<>.standardSiriButton(bold:hideIcon:isPressed:)();
  lazy protocol witness table accessor for type Button<Label<Text, EmptyView>> and conformance Button<A>(&lazy protocol witness table cache variable for type Button<Label<Text, EmptyView>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA9EmptyViewVGGMd, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA9EmptyViewVGGMR, &protocol conformance descriptor for Button<A>);
  lazy protocol witness table accessor for type SimpleItemStandardView and conformance SimpleItemStandardView(&lazy protocol witness table cache variable for type StandardSiriButtonStyle and conformance StandardSiriButtonStyle, &type metadata accessor for StandardSiriButtonStyle, &protocol conformance descriptor for StandardSiriButtonStyle);
  v25 = v40;
  v26 = v44;
  v27 = v47;
  View.buttonStyle<A>(_:)();
  (*(v48 + 8))(v24, v27);
  (*(v45 + 8))(v23, v26);
  v28 = v41;
  v29 = v42;
  v30 = *(v41 + 16);
  v31 = v43;
  v30(v42, v25, v43);
  v32 = v49;
  *v49 = 0x403E000000000000;
  *(v32 + 8) = 0;
  v33 = v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6SpacerV_AA4ViewPAAE11buttonStyleyQrqd__AA06ButtonF0Rd__lFQOyAA0G0VyAA5LabelVyAA4TextVAA05EmptyD0VGG_07SnippetB0012StandardSirigF0VQo_ACtMd, &_s7SwiftUI6SpacerV_AA4ViewPAAE11buttonStyleyQrqd__AA06ButtonF0Rd__lFQOyAA0G0VyAA5LabelVyAA4TextVAA05EmptyD0VGG_07SnippetB0012StandardSirigF0VQo_ACtMR);
  v30(&v33[*(v34 + 48)], v29, v31);
  v35 = &v33[*(v34 + 64)];
  *v35 = 0x403E000000000000;
  v35[8] = 0;
  v36 = *(v28 + 8);
  v36(v25, v31);
  return (v36)(v29, v31);
}

uint64_t closure #1 in closure #1 in LocationAccessPromptView.button(info:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI15InteractionTypeOSgMd, &_s9SnippetUI15InteractionTypeOSgMR);
  __chkstk_darwin(v0 - 8);
  v2 = &v22 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit14ActionPropertyVSgMd, &_s10SnippetKit14ActionPropertyVSgMR);
  __chkstk_darwin(v3 - 8);
  v5 = &v22 - v4;
  v6 = type metadata accessor for Command();
  v23 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI21StandardActionHandlerVSgMd, &_s9SnippetUI21StandardActionHandlerVSgMR);
  __chkstk_darwin(v9 - 8);
  v11 = &v22 - v10;
  v12 = type metadata accessor for StandardActionHandler();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  ActionHandler.wrappedValue.getter();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    return outlined destroy of ModifiedContent<HStack<TupleView<(Spacer, <<opaque return type of View.buttonStyle<A>(_:)>>.0, Spacer)>>, _PaddingLayout>(v11, &_s9SnippetUI21StandardActionHandlerVSgMd, &_s9SnippetUI21StandardActionHandlerVSgMR);
  }

  (*(v13 + 32))(v15, v11, v12);
  SiriKitUIModel.ButtonInfo.directInvocationId.getter();
  Dictionary.init(dictionaryLiteral:)();
  static Command.directInvocation(identifier:payload:isNavigation:)();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10SnippetKit24ActionElementConvertible_pGMd, &_ss23_ContiguousArrayStorageCy10SnippetKit24ActionElementConvertible_pGMR);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_6B40;
  *(v17 + 56) = v6;
  *(v17 + 64) = &protocol witness table for Command;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v17 + 32));
  v19 = v23;
  (*(v23 + 16))(boxed_opaque_existential_1, v8, v6);
  ActionProperty.init(_:)();
  v20 = type metadata accessor for ActionProperty();
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v20);
  v21 = type metadata accessor for InteractionType();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v21);
  StandardActionHandler.perform(_:interactionType:)();
  outlined destroy of ModifiedContent<HStack<TupleView<(Spacer, <<opaque return type of View.buttonStyle<A>(_:)>>.0, Spacer)>>, _PaddingLayout>(v2, &_s9SnippetUI15InteractionTypeOSgMd, &_s9SnippetUI15InteractionTypeOSgMR);
  outlined destroy of ModifiedContent<HStack<TupleView<(Spacer, <<opaque return type of View.buttonStyle<A>(_:)>>.0, Spacer)>>, _PaddingLayout>(v5, &_s10SnippetKit14ActionPropertyVSgMd, &_s10SnippetKit14ActionPropertyVSgMR);
  (*(v19 + 8))(v8, v6);
  return (*(v13 + 8))(v15, v12);
}

uint64_t closure #1 in closure #2 in closure #1 in LocationAccessPromptView.button(info:)@<X0>(uint64_t a2@<X8>)
{
  SiriKitUIModel.ButtonInfo.label.getter();
  lazy protocol witness table accessor for type String and conformance String();
  v3 = Text.init<A>(_:)();
  v5 = v4;
  v7 = v6;
  type metadata accessor for LocationAccessPromptView(0);
  v8 = Text.foregroundColor(_:)();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  outlined consume of Text.Storage(v3, v5, v7 & 1);

  *a2 = v8;
  *(a2 + 8) = v10;
  *(a2 + 16) = v12 & 1;
  *(a2 + 24) = v14;
  return result;
}

uint64_t LocationAccessPromptView.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  ActionHandler.init()();
  v4 = type metadata accessor for LocationAccessPromptView(0);
  v5 = *(v4 + 20);
  type metadata accessor for SiriKitUIModel.LocationAccessCarPlayPromptModel();
  OUTLINED_FUNCTION_0();
  (*(v6 + 32))(a2 + v5, a1);
  v7 = *(v4 + 24);
  v8 = [objc_opt_self() _carSystemFocusColor];
  result = Color.init(uiColor:)();
  *(a2 + v7) = result;
  return result;
}

uint64_t sub_42C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for ActionHandler();
  OUTLINED_FUNCTION_3();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  type metadata accessor for SiriKitUIModel.LocationAccessCarPlayPromptModel();
  OUTLINED_FUNCTION_3();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v13 = *(a1 + *(a3 + 24));
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_43C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  type metadata accessor for ActionHandler();
  OUTLINED_FUNCTION_3();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    type metadata accessor for SiriKitUIModel.LocationAccessCarPlayPromptModel();
    OUTLINED_FUNCTION_3();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 20);
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t type metadata completion function for LocationAccessPromptView(uint64_t a1)
{
  result = type metadata accessor for ActionHandler();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for SiriKitUIModel.LocationAccessCarPlayPromptModel();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_4578@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.multilineTextAlignment.getter();
  *a1 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGMR);
    lazy protocol witness table accessor for type Button<Label<Text, EmptyView>> and conformance Button<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<TextAlignment> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGMR, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined consume of Text.Storage(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t outlined init with copy of ModifiedContent<HStack<TupleView<(Spacer, <<opaque return type of View.buttonStyle<A>(_:)>>.0, Spacer)>>, _PaddingLayout>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_0();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t outlined destroy of ModifiedContent<HStack<TupleView<(Spacer, <<opaque return type of View.buttonStyle<A>(_:)>>.0, Spacer)>>, _PaddingLayout>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_0_0();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_4748(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA0G0PAAE11buttonStyleyQrqd__AA06ButtonJ0Rd__lFQOyAA0K0VyAA5LabelVyAA4TextVAA05EmptyG0VGG_07SnippetB0012StandardSirikJ0VQo_AItGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA0G0PAAE11buttonStyleyQrqd__AA06ButtonJ0Rd__lFQOyAA0K0VyAA5LabelVyAA4TextVAA05EmptyG0VGG_07SnippetB0012StandardSirikJ0VQo_AItGGAA14_PaddingLayoutVGMR);
  OUTLINED_FUNCTION_0();
  (*(v4 + 32))(a2, a1);
  return a2;
}

uint64_t sub_47B0()
{
  type metadata accessor for LocationAccessPromptView(0);
  OUTLINED_FUNCTION_2();
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = *(v5 + 64);
  v7 = type metadata accessor for SiriKitUIModel.ButtonInfo();
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = (v4 + v6 + v9) & ~v9;
  v11 = *(v8 + 64);
  v12 = v3 | v9;
  v13 = v1 + v4;
  type metadata accessor for ActionHandler();
  OUTLINED_FUNCTION_0_0();
  (*(v14 + 8))(v1 + v4);
  v15 = *(v0 + 28);
  type metadata accessor for SiriKitUIModel.LocationAccessCarPlayPromptModel();
  OUTLINED_FUNCTION_0_0();
  (*(v16 + 8))(v13 + v15);

  (*(v8 + 8))(v1 + v10, v7);

  return _swift_deallocObject(v1, v10 + v11, v12 | 7);
}

uint64_t partial apply for closure #1 in closure #1 in LocationAccessPromptView.button(info:)()
{
  type metadata accessor for LocationAccessPromptView(0);
  type metadata accessor for SiriKitUIModel.ButtonInfo();

  return closure #1 in closure #1 in LocationAccessPromptView.button(info:)();
}

uint64_t lazy protocol witness table accessor for type SimpleItemStandardView and conformance SimpleItemStandardView(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t one-time initialization function for voiceCommands()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.voiceCommands);
  __swift_project_value_buffer(v0, static Logger.voiceCommands);
  return Logger.init(subsystem:category:)();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t one-time initialization function for linkUI()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.linkUI);
  __swift_project_value_buffer(v0, static Logger.linkUI);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for siriKitUI()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.siriKitUI);
  __swift_project_value_buffer(v0, static Logger.siriKitUI);
  return Logger.init(subsystem:category:)();
}

uint64_t Logger.voiceCommands.unsafeMutableAddressor(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v3, a2);
}

uint64_t static Logger.voiceCommands.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t Logger.logAndCrash(_:file:line:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v32 = a6;
  v33 = a4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v29 - v15;
  v17 = type metadata accessor for Logger();
  v18 = *(v17 - 8);
  (*(v18 + 16))(v16, v7, v17);
  __swift_storeEnumTagSinglePayload(v16, 0, 1, v17);
  outlined init with copy of Logger?(v16, v14);
  if (__swift_getEnumTagSinglePayload(v14, 1, v17) == 1)
  {
    outlined destroy of Logger?(v14);
  }

  else
  {

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v31 = a3;
      v22 = v21;
      v30 = swift_slowAlloc();
      v34 = v30;
      *v22 = 136315650;
      v23 = StaticString.description.getter();
      v29 = v19;
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v34);

      *(v22 + 4) = v25;
      *(v22 + 12) = 2048;
      *(v22 + 14) = v32;
      *(v22 + 22) = 2080;
      *(v22 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v34);
      v26 = v20;
      v27 = v29;
      _os_log_impl(&dword_0, v29, v26, "FatalError at %s:%lu - %s", v22, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
    }

    (*(v18 + 8))(v14, v17);
  }

  static SiriKitLifecycle._logCrashToEventBus(_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t outlined init with copy of Logger?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Logger?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    outlined init with copy of Any(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = _StringObject.sharedUTF8.getter();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

char *_StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v3 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  return v3;
}

char *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
{
  v4 = (HIBYTE(a2) & 0xF);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = String.UTF8View._foreignCount()())
  {
    result = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = _StringGuts._foreignCopyUTF8(into:)();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 32;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v4 = (a1 & 0xFFFFFFFFFFFFLL);
        }

        else
        {
          result = _StringObject.sharedUTF8.getter();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 32;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
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

Swift::Int SiriKitUIPlugin.Error.hashValue.getter()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SiriKitUIPlugin.Error(uint64_t a1)
{
  Hasher.init(_seed:)();
  SiriKitUIPlugin.Error.hash(into:)();
  return Hasher._finalize()();
}

void *SiriKitUIPlugin.snippet(for:mode:idiom:)(uint64_t a1)
{
  type metadata accessor for SiriKitUIModel.SiriNeedsLocationAccessErrorModel();
  OUTLINED_FUNCTION_0_2();
  v58 = v3;
  v59 = v2;
  __chkstk_darwin(v2);
  v55 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SiriKitUIModel.LocationAccessCarPlayPromptModel();
  OUTLINED_FUNCTION_0_2();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SiriKitUIModel();
  OUTLINED_FUNCTION_0_2();
  v13 = v12;
  v15 = __chkstk_darwin(v14);
  v54 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v57 = &v54 - v18;
  __chkstk_darwin(v17);
  v20 = &v54 - v19;
  v21 = *(v13 + 16);
  v56 = a1;
  v21(&v54 - v19, a1, v11);
  v22 = OUTLINED_FUNCTION_1_0();
  v24 = v23(v22);
  if (v24 == enum case for SiriKitUIModel.locationAccessCarPlayPrompt(_:))
  {
    v25 = OUTLINED_FUNCTION_1_0();
    v26(v25);
    (*(v7 + 32))(v10, v20, v5);
    v27 = type metadata accessor for LocationAccessPromptView(0);
    v62 = v27;
    v63 = lazy protocol witness table accessor for type SiriNeedsLocationAccessErrorView and conformance SiriNeedsLocationAccessErrorView(&lazy protocol witness table cache variable for type LocationAccessPromptView and conformance LocationAccessPromptView, type metadata accessor for LocationAccessPromptView, &protocol conformance descriptor for LocationAccessPromptView);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v61);
    (*(v7 + 16))(boxed_opaque_existential_1 + *(v27 + 20), v10, v5);
    ActionHandler.init()();
    v29 = *(v27 + 24);
    v30 = [objc_opt_self() _carSystemFocusColor];
    *(boxed_opaque_existential_1 + v29) = Color.init(uiColor:)();
    (*(v7 + 8))(v10, v5);
LABEL_5:
    __swift_project_boxed_opaque_existential_1(v61, v62);
    v39 = View.eraseToAnyView()();
    __swift_destroy_boxed_opaque_existential_0(v61);
    return v39;
  }

  if (v24 == enum case for SiriKitUIModel.siriNeedsLocationAccessError(_:))
  {
    v31 = OUTLINED_FUNCTION_1_0();
    v32(v31);
    v33 = v58;
    v34 = v55;
    v35 = v20;
    v36 = v59;
    (*(v58 + 32))(v55, v35, v59);
    v37 = type metadata accessor for SiriNeedsLocationAccessErrorView(0);
    v62 = v37;
    v63 = lazy protocol witness table accessor for type SiriNeedsLocationAccessErrorView and conformance SiriNeedsLocationAccessErrorView(&lazy protocol witness table cache variable for type SiriNeedsLocationAccessErrorView and conformance SiriNeedsLocationAccessErrorView, type metadata accessor for SiriNeedsLocationAccessErrorView, &protocol conformance descriptor for SiriNeedsLocationAccessErrorView);
    v38 = __swift_allocate_boxed_opaque_existential_1(v61);
    (*(v33 + 16))(v38 + *(v37 + 20), v34, v36);
    ActionHandler.init()();
    (*(v33 + 8))(v34, v36);
    goto LABEL_5;
  }

  if (one-time initialization token for siriKitUI != -1)
  {
    swift_once();
  }

  v40 = type metadata accessor for Logger();
  __swift_project_value_buffer(v40, static Logger.siriKitUI);
  v41 = v57;
  v21(v57, v56, v11);
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v64 = v60;
    *v44 = 136315138;
    LODWORD(v59) = v43;
    v21(v54, v41, v11);
    v45 = String.init<A>(describing:)();
    v46 = v41;
    v48 = v47;
    v49 = *(v13 + 8);
    v49(v46, v11);
    v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v48, &v64);

    *(v44 + 4) = v50;
    _os_log_impl(&dword_0, v42, v59, "Unhandled pluginModel: %s", v44, 0xCu);
    v39 = v60;
    __swift_destroy_boxed_opaque_existential_0(v60);
  }

  else
  {

    v51 = *(v13 + 8);
    v39 = (v13 + 8);
    v49 = v51;
    v51(v41, v11);
  }

  lazy protocol witness table accessor for type SiriKitUIPlugin.Error and conformance SiriKitUIPlugin.Error();
  swift_allocError();
  swift_willThrow();
  v52 = OUTLINED_FUNCTION_1_0();
  (v49)(v52);
  return v39;
}

uint64_t protocol witness for SnippetProviding.init() in conformance SiriKitUIPlugin@<X0>(uint64_t *a1@<X8>)
{
  result = SiriKitUIPlugin.__allocating_init()();
  *a1 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type SiriKitUIPlugin.Error and conformance SiriKitUIPlugin.Error()
{
  result = lazy protocol witness table cache variable for type SiriKitUIPlugin.Error and conformance SiriKitUIPlugin.Error;
  if (!lazy protocol witness table cache variable for type SiriKitUIPlugin.Error and conformance SiriKitUIPlugin.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriKitUIPlugin.Error and conformance SiriKitUIPlugin.Error);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriKitUIPlugin.Error and conformance SiriKitUIPlugin.Error;
  if (!lazy protocol witness table cache variable for type SiriKitUIPlugin.Error and conformance SiriKitUIPlugin.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriKitUIPlugin.Error and conformance SiriKitUIPlugin.Error);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type SiriNeedsLocationAccessErrorView and conformance SiriNeedsLocationAccessErrorView(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t getEnumTagSinglePayload for SiriKitUIPlugin.Error(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for SiriKitUIPlugin.Error(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x63D8);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t View.buttonStyle<A>(_:)()
{
  return View.buttonStyle<A>(_:)();
}

{
  return View.buttonStyle<A>(_:)();
}