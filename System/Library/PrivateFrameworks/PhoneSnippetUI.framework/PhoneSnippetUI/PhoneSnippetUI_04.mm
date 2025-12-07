uint64_t sub_25E596E78(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMR);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = type metadata accessor for UUID();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[7];

  return v15(v16, a2, v14);
}

uint64_t sub_25E597010(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMR);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = type metadata accessor for UUID();
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[7];

  return v15(v16, a2, a2, v14);
}

void type metadata completion function for ButtonConfigurationModel(uint64_t a1)
{
  type metadata accessor for CodableAceObject<SABaseCommand>(319, &lazy cache variable for type metadata for CodableAceObject<SABaseCommand>, &lazy cache variable for type metadata for SABaseCommand, 0x277D471B0);
  if (v1 <= 0x3F)
  {
    type metadata accessor for CodableAceObject<SABaseCommand>(319, &lazy cache variable for type metadata for CodableAceObject<SAIntentGroupRunSiriKitExecutor>, &lazy cache variable for type metadata for SAIntentGroupRunSiriKitExecutor, 0x277D47438);
    if (v2 <= 0x3F)
    {
      type metadata accessor for UUID();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for CodableAceObject<SABaseCommand>(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    type metadata accessor for NSTimer(255, a3, a4);
    v5 = type metadata accessor for CodableAceObject();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for StackedButtonsModel(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t storeEnumTagSinglePayload for StackedButtonsModel(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StackedButtonsModel.UseCase(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for StackedButtonsModel.UseCase(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t lazy protocol witness table accessor for type [ButtonConfigurationModel] and conformance <A> [A](unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay14PhoneSnippetUI24ButtonConfigurationModelVGMd, &_sSay14PhoneSnippetUI24ButtonConfigurationModelVGMR);
    _s10Foundation4UUIDVACSEAAWlTm_0(a2, type metadata accessor for ButtonConfigurationModel, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s10Foundation4UUIDVACSEAAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for StackedButtonsView(uint64_t a1)
{
  result = type metadata singleton initialization cache for StackedButtonsView;
  if (!type metadata singleton initialization cache for StackedButtonsView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t StackedButtonsView.init(model:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  ActionHandler.init()();
  result = type metadata accessor for StackedButtonsView(0);
  v7 = a3 + *(result + 20);
  *v7 = a1;
  *(v7 + 8) = a2;
  return result;
}

uint64_t StackedButtonsView.body.getter()
{
  v1 = type metadata accessor for StackedButtonsView(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  outlined init with copy of StackedButtonsView(v0, &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for StackedButtonsView);
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  outlined init with take of StackedButtonsView(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4, type metadata accessor for StackedButtonsView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySay012PhoneSnippetB024ButtonConfigurationModelVG10Foundation4UUIDVAA0G0VyAA4TextVGGMd, &_s7SwiftUI7ForEachVySay012PhoneSnippetB024ButtonConfigurationModelVG10Foundation4UUIDVAA0G0VyAA4TextVGGMR);
  lazy protocol witness table accessor for type ForEach<[ButtonConfigurationModel], UUID, Button<Text>> and conformance <> ForEach<A, B, C>();
  return ComponentStack.init(content:)();
}

uint64_t closure #1 in StackedButtonsView.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for StackedButtonsView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v8[1] = *(a1 + *(MEMORY[0x28223BE20](v2 - 8) + 28));
  outlined init with copy of StackedButtonsView(a1, v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for StackedButtonsView);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  outlined init with take of StackedButtonsView(v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for StackedButtonsView);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay14PhoneSnippetUI24ButtonConfigurationModelVGMd, &_sSay14PhoneSnippetUI24ButtonConfigurationModelVGMR);
  type metadata accessor for UUID();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR);
  lazy protocol witness table accessor for type TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type [ButtonConfigurationModel] and conformance [A], &_sSay14PhoneSnippetUI24ButtonConfigurationModelVGMd, &_sSay14PhoneSnippetUI24ButtonConfigurationModelVGMR, MEMORY[0x277D83980]);
  lazy protocol witness table accessor for type TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR, MEMORY[0x277CDF030]);
  lazy protocol witness table accessor for type ButtonConfigurationModel and conformance ButtonConfigurationModel();
  return ForEach<>.init(_:content:)();
}

unint64_t lazy protocol witness table accessor for type ForEach<[ButtonConfigurationModel], UUID, Button<Text>> and conformance <> ForEach<A, B, C>()
{
  result = lazy protocol witness table cache variable for type ForEach<[ButtonConfigurationModel], UUID, Button<Text>> and conformance <> ForEach<A, B, C>;
  if (!lazy protocol witness table cache variable for type ForEach<[ButtonConfigurationModel], UUID, Button<Text>> and conformance <> ForEach<A, B, C>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7ForEachVySay012PhoneSnippetB024ButtonConfigurationModelVG10Foundation4UUIDVAA0G0VyAA4TextVGGMd, &_s7SwiftUI7ForEachVySay012PhoneSnippetB024ButtonConfigurationModelVG10Foundation4UUIDVAA0G0VyAA4TextVGGMR);
    lazy protocol witness table accessor for type TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR, MEMORY[0x277CDF030]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForEach<[ButtonConfigurationModel], UUID, Button<Text>> and conformance <> ForEach<A, B, C>);
  }

  return result;
}

uint64_t closure #1 in closure #1 in StackedButtonsView.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20[1] = a3;
  v5 = type metadata accessor for StackedButtonsView(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ButtonConfigurationModel(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = a1[1];
  v20[2] = *a1;
  v20[3] = v12;
  outlined init with copy of StackedButtonsView(a1, v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ButtonConfigurationModel);
  outlined init with copy of StackedButtonsView(a2, v8, type metadata accessor for StackedButtonsView);
  v13 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v14 = (v11 + *(v6 + 80) + v13) & ~*(v6 + 80);
  v15 = swift_allocObject();
  outlined init with take of StackedButtonsView(v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v13, type metadata accessor for ButtonConfigurationModel);
  v16 = outlined init with take of StackedButtonsView(v8, v15 + v14, type metadata accessor for StackedButtonsView);
  lazy protocol witness table accessor for type String and conformance String(v16, v17, v18);

  return Button<>.init<A>(_:action:)();
}

uint64_t closure #1 in closure #1 in closure #1 in StackedButtonsView.body.getter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI15InteractionTypeOSgMd, &_s9SnippetUI15InteractionTypeOSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v55 = &v54 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit14ActionPropertyVSgMd, "6~");
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v54 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI21StandardActionHandlerVSgMd, &_s9SnippetUI21StandardActionHandlerVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v60 = &v54 - v8;
  v9 = type metadata accessor for ActionProperty();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for ButtonConfigurationModel(0);
  MEMORY[0x28223BE20](v57);
  v14 = (&v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (one-time initialization token for phoneSnippetUI != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  v16 = __swift_project_value_buffer(v15, static Logger.phoneSnippetUI);
  v58 = a1;
  outlined init with copy of StackedButtonsView(a1, v14, type metadata accessor for ButtonConfigurationModel);
  v56 = v16;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  v19 = os_log_type_enabled(v17, v18);
  v59 = v12;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v54 = v10;
    v22 = v21;
    v61 = v21;
    *v20 = 136315138;
    v23 = v9;
    v24 = *v14;
    v25 = v14[1];

    outlined destroy of ButtonConfigurationModel(v14);
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v61);
    v9 = v23;

    *(v20 + 4) = v26;
    _os_log_impl(&dword_25E523000, v17, v18, "#StackedButtonsView Tapped button %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    v27 = v22;
    v10 = v54;
    MEMORY[0x25F8B8670](v27, -1, -1);
    MEMORY[0x25F8B8670](v20, -1, -1);
  }

  else
  {

    outlined destroy of ButtonConfigurationModel(v14);
  }

  v28 = *(v58 + *(v57 + 32));
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.debug.getter();
  v31 = os_log_type_enabled(v29, v30);
  if (v28 == 1)
  {
    if (v31)
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_25E523000, v29, v30, "#StackedButtonsView running direct invocation", v32, 2u);
      MEMORY[0x25F8B8670](v32, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10SnippetKit24ActionElementConvertible_pGMd, "6~");
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_25E59F720;
    v34 = type metadata accessor for Command();
    v35 = MEMORY[0x277D63778];
    *(v33 + 56) = v34;
    *(v33 + 64) = v35;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v33 + 32));
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
    *boxed_opaque_existential_1 = CodableAceObject.wrappedValue.getter();
    *(boxed_opaque_existential_1 + 8) = 0;
    v37 = MEMORY[0x277D63750];
  }

  else
  {
    if (v31)
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_25E523000, v29, v30, "#StackedButtonsView running ace command", v38, 2u);
      MEMORY[0x25F8B8670](v38, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10SnippetKit24ActionElementConvertible_pGMd, "6~");
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_25E59F720;
    v34 = type metadata accessor for Command();
    v40 = MEMORY[0x277D63778];
    *(v39 + 56) = v34;
    *(v39 + 64) = v40;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v39 + 32));
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMR);
    *boxed_opaque_existential_1 = CodableAceObject.wrappedValue.getter();
    *(boxed_opaque_existential_1 + 8) = 0;
    v37 = MEMORY[0x277D63720];
  }

  (*(*(v34 - 8) + 104))(boxed_opaque_existential_1, *v37, v34);
  v41 = v59;
  ActionProperty.init(_:)();
  v42 = v60;
  ActionHandler.wrappedValue.getter();
  v43 = type metadata accessor for StandardActionHandler();
  v44 = *(v43 - 8);
  if ((*(v44 + 48))(v42, 1, v43) == 1)
  {
    (*(v10 + 8))(v41, v9);
    return outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v60, &_s9SnippetUI21StandardActionHandlerVSgMd, &_s9SnippetUI21StandardActionHandlerVSgMR);
  }

  else
  {
    v46 = v9;
    (*(v10 + 16))(v6, v41, v9);
    (*(v10 + 56))(v6, 0, 1, v9);
    v47 = v41;
    v48 = *MEMORY[0x277D63BE8];
    v49 = type metadata accessor for InteractionType();
    v50 = v10;
    v51 = *(v49 - 8);
    v52 = v55;
    (*(v51 + 104))(v55, v48, v49);
    (*(v51 + 56))(v52, 0, 1, v49);
    v53 = v60;
    StandardActionHandler.perform(_:interactionType:)();
    outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v52, &_s9SnippetUI15InteractionTypeOSgMd, &_s9SnippetUI15InteractionTypeOSgMR);
    outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v6, &_s10SnippetKit14ActionPropertyVSgMd, "6~");
    (*(v50 + 8))(v47, v46);
    return (*(v44 + 8))(v53, v43);
  }
}

uint64_t protocol witness for View.body.getter in conformance StackedButtonsView(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  outlined init with copy of StackedButtonsView(v1, &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for StackedButtonsView);
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  outlined init with take of StackedButtonsView(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4, type metadata accessor for StackedButtonsView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySay012PhoneSnippetB024ButtonConfigurationModelVG10Foundation4UUIDVAA0G0VyAA4TextVGGMd, &_s7SwiftUI7ForEachVySay012PhoneSnippetB024ButtonConfigurationModelVG10Foundation4UUIDVAA0G0VyAA4TextVGGMR);
  lazy protocol witness table accessor for type ForEach<[ButtonConfigurationModel], UUID, Button<Text>> and conformance <> ForEach<A, B, C>();
  return ComponentStack.init(content:)();
}

uint64_t sub_25E59885C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ActionHandler();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_25E59892C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ActionHandler();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata completion function for StackedButtonsView(uint64_t a1)
{
  result = type metadata accessor for ActionHandler();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t partial apply for closure #1 in StackedButtonsView.body.getter()
{
  v1 = *(type metadata accessor for StackedButtonsView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return closure #1 in StackedButtonsView.body.getter(v2);
}

uint64_t objectdestroyTm_16()
{
  v1 = *(type metadata accessor for StackedButtonsView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = type metadata accessor for ActionHandler();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in StackedButtonsView.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for StackedButtonsView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return closure #1 in closure #1 in StackedButtonsView.body.getter(a1, v6, a2);
}

unint64_t lazy protocol witness table accessor for type ButtonConfigurationModel and conformance ButtonConfigurationModel()
{
  result = lazy protocol witness table cache variable for type ButtonConfigurationModel and conformance ButtonConfigurationModel;
  if (!lazy protocol witness table cache variable for type ButtonConfigurationModel and conformance ButtonConfigurationModel)
  {
    type metadata accessor for ButtonConfigurationModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonConfigurationModel and conformance ButtonConfigurationModel);
  }

  return result;
}

uint64_t outlined init with copy of StackedButtonsView(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25E598D34()
{
  v1 = (type metadata accessor for ButtonConfigurationModel(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = *(*(type metadata accessor for StackedButtonsView(0) - 8) + 80);
  v5 = (v2 + v3 + v4) & ~v4;
  v6 = v0 + v2;

  v7 = v1[7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMR);
  (*(*(v8 - 8) + 8))(v6 + v7, v8);
  v9 = v1[8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  (*(*(v10 - 8) + 8))(v6 + v9, v10);
  v11 = v1[9];
  v12 = type metadata accessor for UUID();
  (*(*(v12 - 8) + 8))(v6 + v11, v12);
  v13 = type metadata accessor for ActionHandler();
  (*(*(v13 - 8) + 8))(v0 + v5, v13);

  return swift_deallocObject();
}

uint64_t outlined init with take of StackedButtonsView(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in StackedButtonsView.body.getter()
{
  v1 = *(type metadata accessor for ButtonConfigurationModel(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  type metadata accessor for StackedButtonsView(0);

  return closure #1 in closure #1 in closure #1 in StackedButtonsView.body.getter(v0 + v2);
}

Swift::String __swiftcall String.firstLetterCapitalized()()
{
  v2 = String.firstLetterCapitalized()(v0, v1, MEMORY[0x277D83DF0]);
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

Swift::String __swiftcall String.firstLetterLowercased()()
{
  v2 = String.firstLetterCapitalized()(v0, v1, MEMORY[0x277D83DE0]);
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

uint64_t String.firstLetterCapitalized()(unint64_t a1, unint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{

  v7 = specialized Collection.prefix(_:)(1, a1, a2, v6);
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = a3(v7, v9, v11, v13);

  specialized Collection.dropFirst(_:)(1uLL, a1, a2, v15);

  lazy protocol witness table accessor for type Substring and conformance Substring(v16, v17, v18);
  String.append<A>(contentsOf:)();

  return v14;
}

uint64_t String.remove(characters:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v7[2] = a1;

  v5 = specialized RangeReplaceableCollection.filter(_:)(partial apply for closure #1 in String.remove(characters:), v7, a2, a3);

  return v5;
}

uint64_t String.lowercasedWithFirstUppercased.getter()
{
  v0 = String.lowercased()();
  specialized Collection.prefix(_:)(1, v0._countAndFlagsBits, v0._object, v1);
  countAndFlagsBits = Substring.uppercased()()._countAndFlagsBits;

  specialized Collection.dropFirst(_:)(1uLL, v0._countAndFlagsBits, v0._object, v3);

  lazy protocol witness table accessor for type Substring and conformance Substring(v4, v5, v6);
  String.append<A>(contentsOf:)();

  return countAndFlagsBits;
}

BOOL String.isPhoneNumber.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CharacterSet();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v24 - v9;
  static CharacterSet.decimalDigits.getter();
  v11._countAndFlagsBits = 757671979;
  v11._object = 0xE400000000000000;
  CharacterSet.insert(charactersIn:)(v11);
  v12 = objc_opt_self();
  v13 = [v12 controlCharacterSet];
  static CharacterSet._unconditionallyBridgeFromObjectiveC(_:)();

  CharacterSet.formUnion(_:)();
  v14 = *(v5 + 8);
  v14(v8, v4);
  v15 = [v12 whitespaceAndNewlineCharacterSet];
  static CharacterSet._unconditionallyBridgeFromObjectiveC(_:)();

  CharacterSet.formUnion(_:)();
  v16 = (v14)(v8, v4);
  v24[0] = a1;
  v24[1] = a2;
  lazy protocol witness table accessor for type String and conformance String(v16, v17, v18);
  v24[0] = StringProtocol.components(separatedBy:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v19 = BidirectionalCollection<>.joined(separator:)();
  v21 = v20;

  v14(v10, v4);

  v22 = HIBYTE(v21) & 0xF;
  if ((v21 & 0x2000000000000000) == 0)
  {
    v22 = v19 & 0xFFFFFFFFFFFFLL;
  }

  return v22 == 0;
}

uint64_t specialized RangeReplaceableCollection.filter(_:)(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v23 = a2;
  v21 = 0;
  v22 = 0xE000000000000000;
  if ((a4 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a4) & 0xF;
  }

  else
  {
    v5 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    v9 = 0;
    v18 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v19 = a4 & 0xFFFFFFFFFFFFFFLL;
    while (1)
    {
      if ((a4 & 0x1000000000000000) != 0)
      {
        v12 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
        v14 = v13;
      }

      else
      {
        if ((a4 & 0x2000000000000000) != 0)
        {
          v20[0] = a3;
          v20[1] = v19;
          v11 = v20 + v9;
        }

        else
        {
          v10 = v18;
          if ((a3 & 0x1000000000000000) == 0)
          {
            v10 = _StringObject.sharedUTF8.getter();
          }

          v11 = (v10 + v9);
        }

        v12 = *v11;
        if ((*v11 & 0x80000000) == 0)
        {
          goto LABEL_15;
        }

        v16 = (__clz(v12 ^ 0xFF) - 24);
        if (v16 > 2)
        {
          if (v16 == 3)
          {
            v12 = ((v12 & 0xF) << 12) | ((v11[1] & 0x3F) << 6) | v11[2] & 0x3F;
            v14 = 3;
          }

          else
          {
            v12 = ((v12 & 0xF) << 18) | ((v11[1] & 0x3F) << 12) | ((v11[2] & 0x3F) << 6) | v11[3] & 0x3F;
            v14 = 4;
          }

          goto LABEL_16;
        }

        if (v16 == 1)
        {
LABEL_15:
          v14 = 1;
        }

        else
        {
          v12 = v11[1] & 0x3F | ((v12 & 0x1F) << 6);
          v14 = 2;
        }
      }

LABEL_16:
      LODWORD(v20[0]) = v12;
      v15 = a1(v20);
      if (v4)
      {
      }

      if (v15)
      {
        String.UnicodeScalarView.append(_:)();
      }

      v9 += v14;
      if (v9 >= v5)
      {
        return v21;
      }
    }
  }

  return 0;
}

void UpdateResponseCommand<>.submitUpdate(to:aceServiceInvoker:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v7 = UpdateResponseCommand<>.asUpdateCommand(for:)(a1, a2, a4, a5);
  if (!v5)
  {
    v8 = v7;
    __swift_project_boxed_opaque_existential_1(a3, a3[3]);
    AceServiceInvokerAsync.submitAndForget(_:)();
  }
}

id UpdateResponseCommand<>.asUpdateCommand(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25[0] = a3;
  v25[3] = a4;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = objc_allocWithZone(MEMORY[0x277D47B48]);
  v11 = [v10 init];
  UUID.init()();
  v12 = UUID.uuidString.getter();
  v14 = v13;
  (*(v7 + 8))(v9, v6);
  v15 = MEMORY[0x25F8B7AB0](v12, v14);

  [v11 setAceId_];

  v16 = (*(a2 + 8))(a1, a2);
  v17 = MEMORY[0x25F8B7AB0](v16);

  [v11 setViewId_];

  v18 = v25[1];
  updated = dispatch thunk of UpdateResponseCommand.serializeData()();
  if (v18)
  {
  }

  else
  {
    v21 = updated;
    v22 = v20;
    isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data._Representation(v21, v22);
    [v11 setStateData_];
  }

  return v11;
}

uint64_t YesNoConfirmationModel.dialogText.getter()
{
  type metadata accessor for YesNoConfirmationModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSSgGMd, &_s10SnippetKit8LoggableVySSSgGMR);
  Loggable.wrappedValue.getter();
  return v1;
}

uint64_t type metadata accessor for YesNoConfirmationModel(uint64_t a1)
{
  result = type metadata singleton initialization cache for YesNoConfirmationModel;
  if (!type metadata singleton initialization cache for YesNoConfirmationModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t YesNoConfirmationModel.yesText.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  Loggable.wrappedValue.getter();
  return v1;
}

void (*YesNoConfirmationModel.yesText.modify(uint64_t *a1))(void *a1)
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  *(v3 + 32) = Loggable.wrappedValue.modify();
  return EmergencyCountdownModel.sashTitle.modify;
}

uint64_t YesNoConfirmationModel.yesAction.getter()
{
  type metadata accessor for YesNoConfirmationModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  return CodableAceObject.wrappedValue.getter();
}

uint64_t key path getter for YesNoConfirmationModel.yesAction : YesNoConfirmationModel@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for YesNoConfirmationModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  result = CodableAceObject.wrappedValue.getter();
  *a1 = result;
  return result;
}

uint64_t key path setter for YesNoConfirmationModel.yesAction : YesNoConfirmationModel(void **a1)
{
  v1 = *a1;
  type metadata accessor for YesNoConfirmationModel(0);
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  return CodableAceObject.wrappedValue.setter();
}

uint64_t YesNoConfirmationModel.yesAction.setter(uint64_t a1)
{
  type metadata accessor for YesNoConfirmationModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  return CodableAceObject.wrappedValue.setter();
}

void (*YesNoConfirmationModel.yesAction.modify(uint64_t *a1))(void *a1)
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
  type metadata accessor for YesNoConfirmationModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  *(v3 + 32) = CodableAceObject.wrappedValue.modify();
  return EmergencyCountdownModel.sashTitle.modify;
}

uint64_t YesNoConfirmationModel.noText.getter()
{
  type metadata accessor for YesNoConfirmationModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  Loggable.wrappedValue.getter();
  return v1;
}

void *key path getter for YesNoConfirmationModel.noText : YesNoConfirmationModel@<X0>(void *a1@<X8>)
{
  type metadata accessor for YesNoConfirmationModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  result = Loggable.wrappedValue.getter();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t key path setter for YesNoConfirmationModel.noText : YesNoConfirmationModel(void *a1)
{
  type metadata accessor for YesNoConfirmationModel(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  return Loggable.wrappedValue.setter();
}

uint64_t YesNoConfirmationModel.noText.setter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for YesNoConfirmationModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  return Loggable.wrappedValue.setter();
}

void (*YesNoConfirmationModel.noText.modify(uint64_t *a1))(void *a1)
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
  type metadata accessor for YesNoConfirmationModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  *(v3 + 32) = Loggable.wrappedValue.modify();
  return EmergencyCountdownModel.sashTitle.modify;
}

uint64_t property wrapper backing initializer of YesNoConfirmationModel.noAction(uint64_t a1)
{
  type metadata accessor for SAIntentGroupRunSiriKitExecutor();

  return CodableAceObject.init(wrappedValue:)();
}

uint64_t YesNoConfirmationModel.noAction.getter()
{
  type metadata accessor for YesNoConfirmationModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  return CodableAceObject.wrappedValue.getter();
}

uint64_t key path getter for YesNoConfirmationModel.noAction : YesNoConfirmationModel@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for YesNoConfirmationModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  result = CodableAceObject.wrappedValue.getter();
  *a1 = result;
  return result;
}

uint64_t key path setter for YesNoConfirmationModel.noAction : YesNoConfirmationModel(void **a1)
{
  v1 = *a1;
  type metadata accessor for YesNoConfirmationModel(0);
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  return CodableAceObject.wrappedValue.setter();
}

uint64_t YesNoConfirmationModel.noAction.setter(uint64_t a1)
{
  type metadata accessor for YesNoConfirmationModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  return CodableAceObject.wrappedValue.setter();
}

void (*YesNoConfirmationModel.noAction.modify(uint64_t *a1))(void *a1)
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
  type metadata accessor for YesNoConfirmationModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  *(v3 + 32) = CodableAceObject.wrappedValue.modify();
  return EmergencyCountdownModel.sashTitle.modify;
}

double key path getter for YesNoConfirmationModel.dialogText : YesNoConfirmationModel@<D0>(_OWORD *a1@<X8>)
{
  type metadata accessor for YesNoConfirmationModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSSgGMd, &_s10SnippetKit8LoggableVySSSgGMR);
  Loggable.wrappedValue.getter();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t key path setter for YesNoConfirmationModel.dialogText : YesNoConfirmationModel(void *a1)
{
  type metadata accessor for YesNoConfirmationModel(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSSgGMd, &_s10SnippetKit8LoggableVySSSgGMR);
  return Loggable.wrappedValue.setter();
}

uint64_t YesNoConfirmationModel.dialogText.setter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for YesNoConfirmationModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSSgGMd, &_s10SnippetKit8LoggableVySSSgGMR);
  return Loggable.wrappedValue.setter();
}

void (*YesNoConfirmationModel.dialogText.modify(uint64_t *a1))(void *a1)
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
  type metadata accessor for YesNoConfirmationModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSSgGMd, &_s10SnippetKit8LoggableVySSSgGMR);
  *(v3 + 32) = Loggable.wrappedValue.modify();
  return EmergencyCountdownModel.callAction.modify;
}

uint64_t YesNoConfirmationModel.responseViewId.getter()
{
  v1 = *(v0 + *(type metadata accessor for YesNoConfirmationModel(0) + 36));

  return v1;
}

uint64_t YesNoConfirmationModel.responseViewId.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for YesNoConfirmationModel(0) + 36));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

void YesNoConfirmationModel.init(yesText:yesAction:noText:noAction:dialogText:)(void *a3@<X2>, void *a6@<X5>, uint64_t a9@<X8>)
{
  v12 = type metadata accessor for YesNoConfirmationModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  Loggable.init(wrappedValue:)();
  v13 = (a9 + *(v12 + 36));
  *v13 = 0xD000000000000011;
  v13[1] = 0x800000025E5A6230;
  Loggable.init(wrappedValue:)();
  type metadata accessor for SAIntentGroupRunSiriKitExecutor();
  v14 = a3;
  CodableAceObject.init(wrappedValue:)();
  Loggable.init(wrappedValue:)();
  v15 = a6;
  CodableAceObject.init(wrappedValue:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSSgGMd, &_s10SnippetKit8LoggableVySSSgGMR);
  Loggable.wrappedValue.setter();
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance YesNoConfirmationModel.CodingKeys()
{
  v1 = *v0;
  v2 = 0x74786554736579;
  v3 = 0x6E6F697463416F6ELL;
  v4 = 0x6554676F6C616964;
  if (v1 != 4)
  {
    v4 = 0x65736E6F70736572;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6F69746341736579;
  if (v1 != 1)
  {
    v5 = 0x747865546F6ELL;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance YesNoConfirmationModel.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized YesNoConfirmationModel.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance YesNoConfirmationModel.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = lazy protocol witness table accessor for type YesNoConfirmationModel.CodingKeys and conformance YesNoConfirmationModel.CodingKeys(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance YesNoConfirmationModel.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = lazy protocol witness table accessor for type YesNoConfirmationModel.CodingKeys and conformance YesNoConfirmationModel.CodingKeys(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t YesNoConfirmationModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14PhoneSnippetUI22YesNoConfirmationModelV10CodingKeys33_18E12FF05B8D4E9DAD23E5C150AD5CB4LLOGMd, &_ss22KeyedEncodingContainerVy14PhoneSnippetUI22YesNoConfirmationModelV10CodingKeys33_18E12FF05B8D4E9DAD23E5C150AD5CB4LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v17 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type YesNoConfirmationModel.CodingKeys and conformance YesNoConfirmationModel.CodingKeys(v9, v10, v11);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v23 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  lazy protocol witness table accessor for type Loggable<String> and conformance <A> Loggable<A>(&lazy protocol witness table cache variable for type Loggable<String> and conformance <A> Loggable<A>, MEMORY[0x277D637D0]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v17[3] = type metadata accessor for YesNoConfirmationModel(0);
    v22 = 1;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
    v13 = lazy protocol witness table accessor for type CodableAceObject<SAIntentGroupRunSiriKitExecutor> and conformance CodableAceObject<A>(&lazy protocol witness table cache variable for type CodableAceObject<SAIntentGroupRunSiriKitExecutor> and conformance CodableAceObject<A>, MEMORY[0x277D63228]);
    v14 = v3;
    v15 = v13;
    v17[2] = v14;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v17[0] = v15;
    v17[1] = v12;
    v21 = 2;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v20 = 3;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v19 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSSgGMd, &_s10SnippetKit8LoggableVySSSgGMR);
    lazy protocol witness table accessor for type Loggable<String?> and conformance <A> Loggable<A>(&lazy protocol witness table cache variable for type Loggable<String?> and conformance <A> Loggable<A>, MEMORY[0x277D637D0]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v18 = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t lazy protocol witness table accessor for type YesNoConfirmationModel.CodingKeys and conformance YesNoConfirmationModel.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type YesNoConfirmationModel.CodingKeys and conformance YesNoConfirmationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type YesNoConfirmationModel.CodingKeys and conformance YesNoConfirmationModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type YesNoConfirmationModel.CodingKeys and conformance YesNoConfirmationModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type YesNoConfirmationModel.CodingKeys and conformance YesNoConfirmationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type YesNoConfirmationModel.CodingKeys and conformance YesNoConfirmationModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type YesNoConfirmationModel.CodingKeys and conformance YesNoConfirmationModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type YesNoConfirmationModel.CodingKeys and conformance YesNoConfirmationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type YesNoConfirmationModel.CodingKeys and conformance YesNoConfirmationModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type YesNoConfirmationModel.CodingKeys and conformance YesNoConfirmationModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type YesNoConfirmationModel.CodingKeys and conformance YesNoConfirmationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type YesNoConfirmationModel.CodingKeys and conformance YesNoConfirmationModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type YesNoConfirmationModel.CodingKeys and conformance YesNoConfirmationModel.CodingKeys);
  }

  return result;
}

uint64_t YesNoConfirmationModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSSgGMd, &_s10SnippetKit8LoggableVySSSgGMR);
  v60 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v49 = &v43 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  v51 = *(v4 - 8);
  v52 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v50 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v54 = &v43 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  v53 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v55 = &v43 - v12;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14PhoneSnippetUI22YesNoConfirmationModelV10CodingKeys33_18E12FF05B8D4E9DAD23E5C150AD5CB4LLOGMd, &_ss22KeyedDecodingContainerVy14PhoneSnippetUI22YesNoConfirmationModelV10CodingKeys33_18E12FF05B8D4E9DAD23E5C150AD5CB4LLOGMR);
  v56 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v14 = &v43 - v13;
  v15 = type metadata accessor for YesNoConfirmationModel(0);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v16 + 32);
  v62 = 0;
  v63 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v61 = v19;
  Loggable.init(wrappedValue:)();
  v20 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type YesNoConfirmationModel.CodingKeys and conformance YesNoConfirmationModel.CodingKeys(v20, v21, v22);
  v57 = v14;
  v23 = v59;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    return (*(v60 + 8))(&v18[v61], v64);
  }

  else
  {
    v24 = v54;
    v47 = v15;
    v59 = a1;
    LOBYTE(v62) = 0;
    v25 = lazy protocol witness table accessor for type Loggable<String> and conformance <A> Loggable<A>(&lazy protocol witness table cache variable for type Loggable<String> and conformance <A> Loggable<A>, MEMORY[0x277D637E0]);
    v26 = v55;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v44 = v25;
    v27 = *(v53 + 32);
    v46 = v18;
    v27(v18, v26, v8);
    LOBYTE(v62) = 1;
    lazy protocol witness table accessor for type CodableAceObject<SAIntentGroupRunSiriKitExecutor> and conformance CodableAceObject<A>(&lazy protocol witness table cache variable for type CodableAceObject<SAIntentGroupRunSiriKitExecutor> and conformance CodableAceObject<A>, MEMORY[0x277D63230]);
    v28 = v24;
    v29 = v52;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v45 = v8;
    v30 = &v46[*(v47 + 20)];
    v31 = v28;
    v32 = *(v51 + 32);
    v54 = (v51 + 32);
    v32(v30, v31, v29);
    LOBYTE(v62) = 2;
    v55 = 0;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v44 = v32;
    v33 = v47;
    v27(&v46[*(v47 + 24)], v11, v8);
    LOBYTE(v62) = 3;
    v34 = v50;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v44(&v46[*(v33 + 28)], v34, v29);
    LOBYTE(v62) = 4;
    lazy protocol witness table accessor for type Loggable<String?> and conformance <A> Loggable<A>(&lazy protocol witness table cache variable for type Loggable<String?> and conformance <A> Loggable<A>, MEMORY[0x277D637E0]);
    v35 = v49;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v36 = v59;
    v37 = v46;
    (*(v60 + 40))(&v46[v61], v35, v64);
    LOBYTE(v62) = 5;
    v38 = KeyedDecodingContainer.decode(_:forKey:)();
    v40 = v39;
    v41 = (v37 + *(v33 + 36));
    (*(v56 + 8))(v57, v58);
    *v41 = v38;
    v41[1] = v40;
    outlined init with copy of YesNoConfirmationModel(v37, v48);
    __swift_destroy_boxed_opaque_existential_0(v36);
    return outlined destroy of YesNoConfirmationModel(v37);
  }
}

uint64_t outlined init with copy of YesNoConfirmationModel(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for YesNoConfirmationModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of YesNoConfirmationModel(uint64_t a1)
{
  v2 = type metadata accessor for YesNoConfirmationModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t instantiation function for generic protocol witness table for YesNoConfirmationModel(uint64_t a1)
{
  result = lazy protocol witness table accessor for type YesNoConfirmationModel and conformance YesNoConfirmationModel(&lazy protocol witness table cache variable for type YesNoConfirmationModel and conformance YesNoConfirmationModel, &protocol conformance descriptor for YesNoConfirmationModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type YesNoConfirmationModel and conformance YesNoConfirmationModel(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for YesNoConfirmationModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_25E59B4F4@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  result = Loggable.wrappedValue.getter();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_25E59B57C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSSgGMd, &_s10SnippetKit8LoggableVySSSgGMR);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[8];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[9] + 8);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_25E59B70C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSSgGMd, &_s10SnippetKit8LoggableVySSSgGMR);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[9] + 8) = (a2 - 1);
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[8];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

void type metadata completion function for YesNoConfirmationModel(uint64_t a1)
{
  type metadata accessor for Loggable<String>();
  if (v1 <= 0x3F)
  {
    type metadata accessor for CodableAceObject<SAIntentGroupRunSiriKitExecutor>(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Loggable<String?>(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for Loggable<String?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Loggable<String?>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSSSgMd, &_sSSSgMR);
    v1 = type metadata accessor for Loggable();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Loggable<String?>);
    }
  }
}

uint64_t specialized YesNoConfirmationModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74786554736579 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F69746341736579 && a2 == 0xE90000000000006ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x747865546F6ELL && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F697463416F6ELL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6554676F6C616964 && a2 == 0xEA00000000007478 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x65736E6F70736572 && a2 == 0xEE00644977656956)
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

uint64_t YesNoConfirmationView.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  ActionHandler.init()();
  v4 = type metadata accessor for YesNoConfirmationView(0);
  return _s14PhoneSnippetUI22YesNoConfirmationModelVWObTm_0(a1, a2 + *(v4 + 20), type metadata accessor for YesNoConfirmationModel);
}

uint64_t type metadata accessor for YesNoConfirmationView(uint64_t a1)
{
  result = type metadata singleton initialization cache for YesNoConfirmationView;
  if (!type metadata singleton initialization cache for YesNoConfirmationView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t key path setter for YesNoConfirmationView.actionHandler : YesNoConfirmationView(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI21StandardActionHandlerVSgMd, &_s9SnippetUI21StandardActionHandlerVSgMR);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - v6;
  outlined init with copy of StandardActionHandler?(a1, &v9 - v6);
  outlined init with copy of StandardActionHandler?(v7, v5);
  ActionHandler.wrappedValue.setter();
  return outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v7, &_s9SnippetUI21StandardActionHandlerVSgMd, &_s9SnippetUI21StandardActionHandlerVSgMR);
}

uint64_t YesNoConfirmationView.actionHandler.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI21StandardActionHandlerVSgMd, &_s9SnippetUI21StandardActionHandlerVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  outlined init with copy of StandardActionHandler?(a1, &v5 - v3);
  ActionHandler.wrappedValue.setter();
  return outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(a1, &_s9SnippetUI21StandardActionHandlerVSgMd, &_s9SnippetUI21StandardActionHandlerVSgMR);
}

void (*YesNoConfirmationView.actionHandler.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = ActionHandler.wrappedValue.modify();
  return AppDescription.rskeCommand.modify;
}

uint64_t YesNoConfirmationView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v18[1] = a1;
  v2 = type metadata accessor for YesNoConfirmationView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v18 - v7;
  v9 = YesNoConfirmationView.yesButton.getter();
  v10 = MEMORY[0x277D63A58];
  v18[10] = MEMORY[0x277CE11D0];
  v18[11] = MEMORY[0x277D63A58];
  v18[7] = v9;
  type metadata accessor for YesNoConfirmationModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  Loggable.wrappedValue.getter();
  _s14PhoneSnippetUI22YesNoConfirmationModelVWOcTm_0(v1, v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for YesNoConfirmationView);
  v11 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v12 = swift_allocObject();
  v13 = _s14PhoneSnippetUI22YesNoConfirmationModelVWObTm_0(v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for YesNoConfirmationView);
  lazy protocol witness table accessor for type String and conformance String(v13, v14, v15);
  Button<>.init<A>(_:action:)();
  lazy protocol witness table accessor for type Button<Text> and conformance Button<A>();
  v16 = View.eraseToAnyView()();
  (*(v6 + 8))(v8, v5);
  v18[6] = v10;
  v18[5] = MEMORY[0x277CE11D0];
  v18[2] = v16;
  return BinaryButtonView.init(primaryButton:secondaryButton:)();
}

uint64_t YesNoConfirmationView.yesButton.getter()
{
  v27 = type metadata accessor for ButtonItemButtonStyle.Role();
  v1 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for YesNoConfirmationView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR);
  v24 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E10buttonRoleyQrAD010ButtonItemG5StyleV0F0OFQOyAA0G0VyAA4TextVG_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E10buttonRoleyQrAD010ButtonItemG5StyleV0F0OFQOyAA0G0VyAA4TextVG_Qo_MR);
  v11 = *(v10 - 8);
  v25 = v10;
  v26 = v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v24 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  Loggable.wrappedValue.getter();
  _s14PhoneSnippetUI22YesNoConfirmationModelVWOcTm_0(v0, &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for YesNoConfirmationView);
  v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v15 = swift_allocObject();
  v16 = _s14PhoneSnippetUI22YesNoConfirmationModelVWObTm_0(&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for YesNoConfirmationView);
  lazy protocol witness table accessor for type String and conformance String(v16, v17, v18);
  Button<>.init<A>(_:action:)();
  v19 = v27;
  (*(v1 + 104))(v3, *MEMORY[0x277D63A98], v27);
  v20 = lazy protocol witness table accessor for type Button<Text> and conformance Button<A>();
  View.buttonRole(_:)();
  (*(v1 + 8))(v3, v19);
  (*(v24 + 8))(v9, v7);
  v28 = v7;
  v29 = v20;
  swift_getOpaqueTypeConformance2();
  v21 = v25;
  v22 = View.eraseToAnyView()();
  (*(v26 + 8))(v13, v21);
  return v22;
}

uint64_t closure #1 in YesNoConfirmationView.yesButton.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI15InteractionTypeOSgMd, &_s9SnippetUI15InteractionTypeOSgMR);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v18 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit14ActionPropertyVSgMd, "6~");
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v18 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI21StandardActionHandlerVSgMd, &_s9SnippetUI21StandardActionHandlerVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v18 - v7;
  ActionHandler.wrappedValue.getter();
  v9 = type metadata accessor for StandardActionHandler();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v8, &_s9SnippetUI21StandardActionHandlerVSgMd, &_s9SnippetUI21StandardActionHandlerVSgMR);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10SnippetKit24ActionElementConvertible_pGMd, "6~");
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_25E59F720;
  v13 = type metadata accessor for Command();
  v14 = MEMORY[0x277D63778];
  *(v12 + 56) = v13;
  *(v12 + 64) = v14;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v12 + 32));
  type metadata accessor for YesNoConfirmationView(0);
  type metadata accessor for YesNoConfirmationModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  *boxed_opaque_existential_1 = CodableAceObject.wrappedValue.getter();
  *(boxed_opaque_existential_1 + 8) = 0;
  (*(*(v13 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D63750], v13);
  ActionProperty.init(_:)();
  v16 = type metadata accessor for ActionProperty();
  (*(*(v16 - 8) + 56))(v5, 0, 1, v16);
  v17 = type metadata accessor for InteractionType();
  (*(*(v17 - 8) + 56))(v2, 1, 1, v17);
  StandardActionHandler.perform(_:interactionType:)();
  outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v2, &_s9SnippetUI15InteractionTypeOSgMd, &_s9SnippetUI15InteractionTypeOSgMR);
  outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v5, &_s10SnippetKit14ActionPropertyVSgMd, "6~");
  return (*(v10 + 8))(v8, v9);
}

uint64_t closure #1 in YesNoConfirmationView.noButton.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI15InteractionTypeOSgMd, &_s9SnippetUI15InteractionTypeOSgMR);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v18 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit14ActionPropertyVSgMd, "6~");
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v18 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI21StandardActionHandlerVSgMd, &_s9SnippetUI21StandardActionHandlerVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v18 - v7;
  ActionHandler.wrappedValue.getter();
  v9 = type metadata accessor for StandardActionHandler();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v8, &_s9SnippetUI21StandardActionHandlerVSgMd, &_s9SnippetUI21StandardActionHandlerVSgMR);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10SnippetKit24ActionElementConvertible_pGMd, "6~");
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_25E59F720;
  v13 = type metadata accessor for Command();
  v14 = MEMORY[0x277D63778];
  *(v12 + 56) = v13;
  *(v12 + 64) = v14;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v12 + 32));
  type metadata accessor for YesNoConfirmationView(0);
  type metadata accessor for YesNoConfirmationModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  *boxed_opaque_existential_1 = CodableAceObject.wrappedValue.getter();
  *(boxed_opaque_existential_1 + 8) = 0;
  (*(*(v13 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D63750], v13);
  ActionProperty.init(_:)();
  v16 = type metadata accessor for ActionProperty();
  (*(*(v16 - 8) + 56))(v5, 0, 1, v16);
  v17 = type metadata accessor for InteractionType();
  (*(*(v17 - 8) + 56))(v2, 1, 1, v17);
  StandardActionHandler.perform(_:interactionType:)();
  outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v2, &_s9SnippetUI15InteractionTypeOSgMd, &_s9SnippetUI15InteractionTypeOSgMR);
  outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v5, &_s10SnippetKit14ActionPropertyVSgMd, "6~");
  return (*(v10 + 8))(v8, v9);
}

uint64_t _s14PhoneSnippetUI22YesNoConfirmationModelVWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s14PhoneSnippetUI22YesNoConfirmationModelVWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25E59CDF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ActionHandler();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for YesNoConfirmationModel(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_25E59CEF4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for ActionHandler();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for YesNoConfirmationModel(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t type metadata completion function for YesNoConfirmationView(uint64_t a1)
{
  result = type metadata accessor for ActionHandler();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for YesNoConfirmationModel(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t objectdestroyTm_17()
{
  v1 = (type metadata accessor for YesNoConfirmationView(0) - 8);
  v13 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v2 = type metadata accessor for ActionHandler();
  (*(*(v2 - 8) + 8))(v0 + v13, v2);
  v3 = v0 + v13 + v1[7];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  v5 = *(*(v4 - 8) + 8);
  v5(v3, v4);
  v6 = type metadata accessor for YesNoConfirmationModel(0);
  v7 = v6[5];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  v9 = *(*(v8 - 8) + 8);
  v9(v3 + v7, v8);
  v5(v3 + v6[6], v4);
  v9(v3 + v6[7], v8);
  v10 = v6[8];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSSgGMd, &_s10SnippetKit8LoggableVySSSgGMR);
  (*(*(v11 - 8) + 8))(v3 + v10, v11);

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in YesNoConfirmationView.noButton.getter(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for YesNoConfirmationView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t View.buttonStyle<A>(_:)()
{
  return MEMORY[0x28212F3E0]();
}

{
  return MEMORY[0x28212F3F0]();
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = MEMORY[0x2821FBCC8]();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall String.uppercased()()
{
  v0 = MEMORY[0x2821FBCE0]();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall Substring.uppercased()()
{
  v0 = MEMORY[0x2821FCAF0]();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return MEMORY[0x2821FD9F8]();
}

{
  return MEMORY[0x2821FDA00]();
}

{
  return MEMORY[0x2821FDA08]();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return MEMORY[0x2821FDB38]();
}

{
  return MEMORY[0x2821FDB40]();
}

{
  return MEMORY[0x2821FDB48]();
}