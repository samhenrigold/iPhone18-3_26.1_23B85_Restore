uint64_t closure #1 in closure #1 in LocalEmergencyCallDisambiguationView.disambiguationViewContent.getter(void **a1, uint64_t a2)
{
  v4 = type metadata accessor for InteractionDelegateWrapper();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for phoneSnippetUI != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.phoneSnippetUI);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_25E523000, v9, v10, "#LocalEmergencyCallDisambiguationView component tapped", v11, 2u);
    MEMORY[0x25F8B8670](v11, -1, -1);
  }

  v12 = *a1;
  if (*a1)
  {
    type metadata accessor for LocalEmergencyCallDisambiguationView(0);
    v13 = v12;
    InteractionDelegate.wrappedValue.getter();
    specialized LocalEmergencyCallDisambiguationView.selected(emergencyService:context:interactionDelegate:)(a2);

    return (*(v5 + 8))(v7, v4);
  }

  else
  {
    type metadata accessor for Context();
    _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_5(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68], MEMORY[0x277D63F58]);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

void closure #2 in LocalEmergencyCallDisambiguationView.disambiguationViewContent.getter()
{
  if (one-time initialization token for phoneSnippetUI != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.phoneSnippetUI);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_25E523000, oslog, v1, "#LocalEmergencyCallDisambiguationView building disambiguationViewContent with SimpleItemRichView", v2, 2u);
    MEMORY[0x25F8B8670](v2, -1, -1);
  }
}

uint64_t sub_25E560DFC(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v9 = type metadata accessor for InteractionDelegate();
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
      v14 = type metadata accessor for LocalEmergencyCallDisambiguationModel(0);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 24);

      return v15(v16, a2, v14);
    }
  }
}

void *sub_25E560F40(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v8 = type metadata accessor for InteractionDelegate();
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
      v13 = type metadata accessor for LocalEmergencyCallDisambiguationModel(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void type metadata completion function for LocalEmergencyCallDisambiguationView(uint64_t a1)
{
  type metadata accessor for EnvironmentObject<Context>(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for InteractionDelegate();
    if (v2 <= 0x3F)
    {
      type metadata accessor for LocalEmergencyCallDisambiguationModel(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.requestHostBackground<A, B>(_:accepted:denied:)>>.0, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.requestHostBackground<A, B>(_:accepted:denied:)>>.0, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.requestHostBackground<A, B>(_:accepted:denied:)>>.0, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewP07SnippetB0E21requestHostBackground_8accepted6deniedQrAF0hI0OSg_qd__xcqd_0_xctAaDRd__AaDRd_0_r0_lFQOyACyAeAE16privacySensitiveyQrSbFQOyAF014DisambiguationE0VyACy05PhonefB016ForEachWithIndexVySayAP0n4ItemR21DirectInvocationModelVGAeFE10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAeFE15componentTapped0Y10Navigation7performQrSb_yyctFQOyACyAF06Simplet4RichE0VAP07CarPlayn4ListT0VG_Qo__Qo_GAA25_AppearanceActionModifierVGG_Qo_AA30_EnvironmentKeyWritingModifierVyAA11ColorSchemeOGG_A20_A20_Qo_A11_GMd, &_s7SwiftUI15ModifiedContentVyAA4ViewP07SnippetB0E21requestHostBackground_8accepted6deniedQrAF0hI0OSg_qd__xcqd_0_xctAaDRd__AaDRd_0_r0_lFQOyACyAeAE16privacySensitiveyQrSbFQOyAF014DisambiguationE0VyACy05PhonefB016ForEachWithIndexVySayAP0n4ItemR21DirectInvocationModelVGAeFE10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAeFE15componentTapped0Y10Navigation7performQrSb_yyctFQOyACyAF06Simplet4RichE0VAP07CarPlayn4ListT0VG_Qo__Qo_GAA25_AppearanceActionModifierVGG_Qo_AA30_EnvironmentKeyWritingModifierVyAA11ColorSchemeOGG_A20_A20_Qo_A11_GMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE16privacySensitiveyQrSbFQOy07SnippetB0014DisambiguationE0VyACy05PhonehB016ForEachWithIndexVySayAJ0i4ItemM21DirectInvocationModelVGAeGE10separators_10isOverrideQr0H3Kit14SeparatorStyleO_SbtFQOyAeGE15componentTapped0T10Navigation7performQrSb_yyctFQOyACyAG06Simpleo4RichE0VAJ07CarPlayi4ListO0VG_Qo__Qo_GAA25_AppearanceActionModifierVGG_Qo_AA30_EnvironmentKeyWritingModifierVyAA11ColorSchemeOGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE16privacySensitiveyQrSbFQOy07SnippetB0014DisambiguationE0VyACy05PhonehB016ForEachWithIndexVySayAJ0i4ItemM21DirectInvocationModelVGAeGE10separators_10isOverrideQr0H3Kit14SeparatorStyleO_SbtFQOyAeGE15componentTapped0T10Navigation7performQrSb_yyctFQOyACyAG06Simpleo4RichE0VAJ07CarPlayi4ListO0VG_Qo__Qo_GAA25_AppearanceActionModifierVGG_Qo_AA30_EnvironmentKeyWritingModifierVyAA11ColorSchemeOGGMR);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.privacySensitive(_:)>>.0, _EnvironmentKeyWritingModifier<ColorScheme>> and conformance <> ModifiedContent<A, B>();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.requestHostBackground<A, B>(_:accepted:denied:)>>.0, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t sub_25E5611D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE16privacySensitiveyQrSbFQOy07SnippetB0014DisambiguationE0VyACy05PhonehB016ForEachWithIndexVySayAJ0i4ItemM21DirectInvocationModelVGAeGE10separators_10isOverrideQr0H3Kit14SeparatorStyleO_SbtFQOyAeGE15componentTapped0T10Navigation7performQrSb_yyctFQOyACyAG06Simpleo4RichE0VAJ07CarPlayi4ListO0VG_Qo__Qo_GAA25_AppearanceActionModifierVGG_Qo_AA30_EnvironmentKeyWritingModifierVyAA11ColorSchemeOGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE16privacySensitiveyQrSbFQOy07SnippetB0014DisambiguationE0VyACy05PhonehB016ForEachWithIndexVySayAJ0i4ItemM21DirectInvocationModelVGAeGE10separators_10isOverrideQr0H3Kit14SeparatorStyleO_SbtFQOyAeGE15componentTapped0T10Navigation7performQrSb_yyctFQOyACyAG06Simpleo4RichE0VAJ07CarPlayi4ListO0VG_Qo__Qo_GAA25_AppearanceActionModifierVGG_Qo_AA30_EnvironmentKeyWritingModifierVyAA11ColorSchemeOGGMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_6()
{
  v1 = (type metadata accessor for LocalEmergencyCallDisambiguationView(0) - 8);
  v2 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));

  v3 = v1[7];
  v4 = type metadata accessor for InteractionDelegate();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);
  v5 = v2 + v1[8];

  v6 = type metadata accessor for LocalEmergencyCallDisambiguationModel(0);
  v7 = *(v6 + 28);
  v8 = type metadata accessor for UUID();
  (*(*(v8 - 8) + 8))(&v5[v7], v8);
  v9 = *(v6 + 32);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  (*(*(v10 - 8) + 8))(&v5[v9], v10);

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in LocalEmergencyCallDisambiguationView.disambiguationViewContent.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(type metadata accessor for LocalEmergencyCallDisambiguationView(0) - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return closure #1 in LocalEmergencyCallDisambiguationView.disambiguationViewContent.getter(a1, a2, v8, a3);
}

uint64_t sub_25E561474()
{
  outlined consume of Text.Storage(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return swift_deallocObject();
}

uint64_t outlined init with copy of LocalEmergencyCallDisambiguationView(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25E561520()
{
  v1 = (type metadata accessor for LocalEmergencyCallDisambiguationView(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = (type metadata accessor for DisambiguationItemWithDirectInvocationModel(0) - 8);
  v27 = (v2 + v3 + *(*v4 + 80)) & ~*(*v4 + 80);
  v5 = v0 + v2;

  v6 = v1[7];
  v7 = type metadata accessor for InteractionDelegate();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);
  v8 = v5 + v1[8];

  v9 = type metadata accessor for LocalEmergencyCallDisambiguationModel(0);
  v10 = *(v9 + 28);
  v11 = type metadata accessor for UUID();
  v12 = *(*(v11 - 8) + 8);
  v12(v8 + v10, v11);
  v13 = *(v9 + 32);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  v15 = *(*(v14 - 8) + 8);
  v15(v8 + v13, v14);

  v12(v26 + v27, v11);
  v16 = v4[7];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSSgGMd, &_s10SnippetKit8LoggableVySSSgGMR);
  v18 = *(*(v17 - 8) + 8);
  v18(v26 + v27 + v16, v17);
  v15(v26 + v27 + v4[8], v14);
  v19 = v4[9];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
  (*(*(v20 - 8) + 8))(v26 + v27 + v19, v20);
  v18(v26 + v27 + v4[10], v17);
  v21 = v4[11];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVyAA16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGGMd, &_s10SnippetKit8LoggableVyAA16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGGMR);
  (*(*(v22 - 8) + 8))(v26 + v27 + v21, v22);
  v23 = v4[12];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVy05PhoneA2UI43DisambiguationItemWithDirectInvocationModelV0G4TypeOGMd, &_s10SnippetKit8LoggableVy05PhoneA2UI43DisambiguationItemWithDirectInvocationModelV0G4TypeOGMR);
  (*(*(v24 - 8) + 8))(v26 + v27 + v23, v24);

  return swift_deallocObject();
}

uint64_t outlined init with take of LocalEmergencyCallDisambiguationModel(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t partial apply for closure #1 in closure #1 in LocalEmergencyCallDisambiguationView.disambiguationViewContent.getter()
{
  v1 = *(type metadata accessor for LocalEmergencyCallDisambiguationView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for DisambiguationItemWithDirectInvocationModel(0) - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return closure #1 in closure #1 in LocalEmergencyCallDisambiguationView.disambiguationViewContent.getter((v0 + v2), v5);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<SimpleItemRichView, CarPlayDisambiguationListItem> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<SimpleItemRichView, CarPlayDisambiguationListItem> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<SimpleItemRichView, CarPlayDisambiguationListItem> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07SnippetB018SimpleItemRichViewV05PhoneeB0025CarPlayDisambiguationListG0VGMd, &_s7SwiftUI15ModifiedContentVy07SnippetB018SimpleItemRichViewV05PhoneeB0025CarPlayDisambiguationListG0VGMR);
    v3 = _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_5(&lazy protocol witness table cache variable for type SimpleItemRichView and conformance SimpleItemRichView, MEMORY[0x277D63D00], MEMORY[0x277D63CF8]);
    lazy protocol witness table accessor for type CarPlayDisambiguationListItem and conformance CarPlayDisambiguationListItem(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<SimpleItemRichView, CarPlayDisambiguationListItem> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_5(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void specialized LocalEmergencyCallDisambiguationView.selected(emergencyService:context:interactionDelegate:)(uint64_t a1)
{
  v2 = type metadata accessor for DisambiguationItemWithDirectInvocationModel(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVyAA16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGGMd, &_s10SnippetKit8LoggableVyAA16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGGMR);
  Loggable.wrappedValue.getter();
  v9 = CodableAceObject.wrappedValue.getter();
  (*(v6 + 8))(v8, v5);
  InteractionDelegateWrapper.perform(directInvocation:)();

  if (one-time initialization token for phoneSnippetUI != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.phoneSnippetUI);
  outlined init with copy of LocalEmergencyCallDisambiguationView(a1, v4, type metadata accessor for DisambiguationItemWithDirectInvocationModel);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v21 = v14;
    *v13 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSSgGMd, &_s10SnippetKit8LoggableVySSSgGMR);
    Loggable.wrappedValue.getter();
    v15 = v20;
    if (v20)
    {
      v16 = v19;
    }

    else
    {
      Loggable.wrappedValue.getter();
      if (v20)
      {
        v16 = v19;
      }

      else
      {
        v16 = 0x6E776F6E6B6E75;
      }

      if (v20)
      {
        v15 = v20;
      }

      else
      {
        v15 = 0xE700000000000000;
      }
    }

    outlined destroy of DisambiguationItemWithDirectInvocationModel(v4);
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v15, &v21);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_25E523000, v11, v12, "#LocalEmergencyCallDisambiguationView performing direct invocation to start emergency call to %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x25F8B8670](v14, -1, -1);
    MEMORY[0x25F8B8670](v13, -1, -1);
  }

  else
  {

    outlined destroy of DisambiguationItemWithDirectInvocationModel(v4);
  }
}

uint64_t LoggableError.logged(shouldLogToAbc:shouldCreateTTR:)@<X0>(char a1@<W0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  LODWORD(v82) = a2;
  v11 = type metadata accessor for Logger();
  v85 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v83 = (&v73 - v16);
  MEMORY[0x28223BE20](v15);
  v18 = &v73 - v17;
  v88 = 0;
  v89 = 0xE000000000000000;
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v19 = v89;
  v81 = v88;
  v84 = v11;
  if (a1)
  {
    v76 = *(a4 + 32);
    v77 = (a4 + 32);
    v76(a3, a4);

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();

    v22 = os_log_type_enabled(v20, v21);
    v78 = v19;
    v79 = v14;
    if (v22)
    {
      v23 = v11;
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v26 = v19;
      v27 = v25;
      v88 = v25;
      *v24 = 136315138;
      *(v24 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v81, v26, &v88);
      _os_log_impl(&dword_25E523000, v20, v21, "#LoggableError Trying ABC for %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x25F8B8670](v27, -1, -1);
      MEMORY[0x25F8B8670](v24, -1, -1);

      v28 = *(v85 + 1);
      v29 = v18;
      v30 = v23;
    }

    else
    {

      v28 = *(v85 + 1);
      v29 = v18;
      v30 = v11;
    }

    v75 = v28;
    v28(v29, v30);
    v31 = v87;
    v86 = (*(a4 + 8))(a3, a4);
    v87[0] = v32;
    v33 = 0;
    v87[1] = (*(a4 + 16))(a3, a4);
    v87[2] = v34;
    v35 = MEMORY[0x277D84F90];
LABEL_6:
    v36 = &v31[2 * v33];
    while (++v33 != 3)
    {
      v38 = *(v36 - 1);
      v37 = *v36;
      v36 += 2;
      v39 = HIBYTE(v37) & 0xF;
      if ((v37 & 0x2000000000000000) == 0)
      {
        v39 = v38 & 0xFFFFFFFFFFFFLL;
      }

      if (v39)
      {
        v74 = v31;

        v40 = a5;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v35 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v35 + 2) + 1, 1, v35);
        }

        v42 = *(v35 + 2);
        v41 = *(v35 + 3);
        if (v42 >= v41 >> 1)
        {
          v35 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v42 + 1, 1, v35);
        }

        *(v35 + 2) = v42 + 1;
        v43 = &v35[16 * v42];
        *(v43 + 4) = v38;
        *(v43 + 5) = v37;
        a5 = v40;
        v31 = v74;
        goto LABEL_6;
      }
    }

    swift_arrayDestroy();
    v88 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v44 = BidirectionalCollection<>.joined(separator:)();
    v46 = v45;

    v47 = LoggableError.caseName.getter(a3);
    v49 = v48;
    v50 = v83;
    v76(a3, a4);
    specialized static FileRadarUtils.autoBugCapture(errorType:errorSubType:subTypeContext:logger:)(0x4C41544146, 0xE500000000000000, v47, v49, v44, v46, v50);

    v11 = v84;
    v75(v50, v84);
    v19 = v78;
    v14 = v79;
  }

  if (v82)
  {
    v51 = *(a4 + 32);
    v82 = a4 + 32;
    v77 = v51;
    v51(a3, a4);

    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.debug.getter();

    v54 = os_log_type_enabled(v52, v53);
    v80 = a5;
    if (v54)
    {
      v55 = swift_slowAlloc();
      v56 = v19;
      v57 = swift_slowAlloc();
      v88 = v57;
      *v55 = 136315138;
      v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v81, v56, &v88);

      *(v55 + 4) = v58;
      _os_log_impl(&dword_25E523000, v52, v53, "#LoggableError Trying TTR for %s", v55, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v57);
      MEMORY[0x25F8B8670](v57, -1, -1);
      MEMORY[0x25F8B8670](v55, -1, -1);

      v59 = v84;
      v60 = *(v85 + 1);
      v81 = ((v85 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
      v61 = v14;
    }

    else
    {

      v60 = *(v85 + 1);
      v81 = ((v85 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
      v61 = v14;
      v59 = v11;
    }

    v85 = v60;
    v60(v61, v59);
    v88 = 0;
    v89 = 0xE000000000000000;
    _StringGuts.grow(_:)(28);

    v88 = 0xD00000000000001ALL;
    v89 = 0x800000025E5A66B0;
    v62 = LoggableError.caseName.getter(a3);
    MEMORY[0x25F8B7B50](v62);

    v63 = v89;
    v79 = v88;
    v88 = (*(a4 + 8))(a3, a4);
    v89 = v64;
    MEMORY[0x25F8B7B50](657930, 0xE300000000000000);
    v65 = (*(a4 + 16))(a3, a4);
    MEMORY[0x25F8B7B50](v65);

    MEMORY[0x25F8B7B50](657930, 0xE300000000000000);
    v66 = (*(a4 + 24))(a3, a4);
    MEMORY[0x25F8B7B50](v66);

    v67 = v88;
    v68 = v89;
    v88 = 0;
    v89 = 0xE000000000000000;
    _StringGuts.grow(_:)(31);
    MEMORY[0x25F8B7B50](0x45656E6F68502061, 0xEE002820726F7272);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    MEMORY[0x25F8B7B50](0x6564207361772029, 0xEF2E646574636574);
    v70 = v88;
    v69 = v89;
    v71 = v83;
    v77(a3, a4);
    specialized static FileRadarUtils.tapToRadar(title:desc:reason:logger:)(v79, v63, v67, v68, v70, v69, v71);

    v85(v71, v84);
    a5 = v80;
  }

  else
  {
  }

  return (*(*(a3 - 8) + 16))(a5, v6, a3);
}

uint64_t LoggableError.caseName.getter(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Mirror();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[3] = a1;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v15);
  (*(*(a1 - 8) + 16))(boxed_opaque_existential_1, v2, a1);
  Mirror.init(reflecting:)();
  Mirror.children.getter();
  (*(v5 + 8))(v7, v4);
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v9 = dispatch thunk of _AnyIndexBox._typeID.getter();
  swift_getObjectType();
  result = dispatch thunk of _AnyIndexBox._typeID.getter();
  if (v9 == result)
  {
    v11 = dispatch thunk of _AnyIndexBox._isEqual(to:)();
    swift_unknownObjectRelease();
    if (v11)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      dispatch thunk of _AnyCollectionBox.subscript.getter();
      swift_unknownObjectRelease();

      v13 = v16;
      v12 = v17;
      __swift_destroy_boxed_opaque_existential_0(v18);
      if (v12)
      {
LABEL_6:
        swift_getDynamicType();
        v16 = _typeName(_:qualified:)();
        v17 = v14;
        MEMORY[0x25F8B7B50](46, 0xE100000000000000);
        MEMORY[0x25F8B7B50](v13, v12);

        return v16;
      }
    }

    v16 = 0;
    v17 = 0xE000000000000000;
    DefaultStringInterpolation.appendInterpolation<A>(_:)();

    v13 = v16;
    v12 = v17;
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type [String] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [String] and conformance [A];
  if (!lazy protocol witness table cache variable for type [String] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [String] and conformance [A]);
  }

  return result;
}

void one-time initialization function for macFaceTimeBundleId()
{
  v0 = TUPreferredFaceTimeBundleIdentifier();
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = v2;

  static PhoneCallAppNameConstants.macFaceTimeBundleId = v1;
  unk_27FCF8010 = v3;
}

uint64_t *PhoneCallAppNameConstants.macFaceTimeBundleId.unsafeMutableAddressor()
{
  if (one-time initialization token for macFaceTimeBundleId != -1)
  {
    swift_once();
  }

  return &static PhoneCallAppNameConstants.macFaceTimeBundleId;
}

uint64_t static PhoneCallAppNameConstants.macFaceTimeBundleId.getter()
{
  if (one-time initialization token for macFaceTimeBundleId != -1)
  {
    swift_once();
  }

  v0 = static PhoneCallAppNameConstants.macFaceTimeBundleId;

  return v0;
}

uint64_t static PhoneCallAppNameConstants.sanitizeFirstPartyAppId(_:)(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (specialized static PhoneCallAppNameConstants.isFaceTimeCaseInsensitive(appId:)(a1, a2))
  {
    return 0xD000000000000012;
  }

  return v2;
}

uint64_t specialized Set.contains(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t static PhoneCallAppNameConstants.isPhone(appId:)(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a1 == 0xD000000000000017 && 0x800000025E5A66D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 0xD000000000000012 && 0x800000025E5A66F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 0xD000000000000013 && 0x800000025E5A6750 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 0xD000000000000015 && 0x800000025E5A6690 == a2)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t static PhoneCallAppNameConstants.isMessagePhoneAppCaseInsensitive(appId:)(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    String.lowercased()();
    goto LABEL_9;
  }

  v2 = String.lowercased()();
  v3 = String.lowercased()();
  if (!v2._object)
  {
LABEL_9:
    v5 = 0;
    goto LABEL_11;
  }

  if (v2._countAndFlagsBits == v3._countAndFlagsBits && v2._object == v3._object)
  {

    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

LABEL_11:

  return v5 & 1;
}

uint64_t static PhoneCallAppNameConstants.isPhoneOrFaceTime(appId:isInsensitive:)(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    if ((specialized static PhoneCallAppNameConstants.isPhoneCaseInsensitive(appId:)(a1, a2) & 1) == 0)
    {

      return specialized static PhoneCallAppNameConstants.isFaceTimeCaseInsensitive(appId:)(a1, a2);
    }

    return 1;
  }

  if (a2 && (a1 == 0xD000000000000017 && 0x800000025E5A66D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 0xD000000000000012 && 0x800000025E5A66F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 0xD000000000000013 && 0x800000025E5A6750 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 0xD000000000000015 && 0x800000025E5A6690 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    return 1;
  }

  return specialized static PhoneCallAppNameConstants.isFaceTime(appId:)(a1, a2);
}

uint64_t static PhoneCallAppNameConstants.getFaceTimeServiceName(for:shouldEnableSiriUplevelFTA:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = a1;
  if (a3)
  {
    if (a1 == 0x656D695465636146 && a2 == 0xEE006F6964754120 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v5 = [objc_allocWithZone(MEMORY[0x277D07E78]) init];
      v6 = [v5 faceTimeAudioServiceName];
    }

    else if (v4 == 0x656D695465636146 && a2 == 0xEE006F6564695620 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v5 = [objc_allocWithZone(MEMORY[0x277D07E78]) init];
      v6 = [v5 faceTimeVideoServiceName];
    }

    else
    {
      v5 = [objc_allocWithZone(MEMORY[0x277D07E78]) init];
      v6 = [v5 faceTimeServiceName];
    }

    v7 = v6;

    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
  }

  return v4;
}

uint64_t specialized static PhoneCallAppNameConstants.isFaceTimeCaseInsensitive(appId:)(uint64_t countAndFlagsBits, uint64_t a2)
{
  if (!a2)
  {
    String.lowercased()();

    object = 0;
    goto LABEL_12;
  }

  v3 = String.lowercased()();
  v4 = String.lowercased()();
  if (!v3._object)
  {

LABEL_11:
    v9 = String.lowercased()();
    countAndFlagsBits = v9._countAndFlagsBits;
    object = v9._object;
LABEL_12:
    if (one-time initialization token for macFaceTimeBundleId != -1)
    {
      swift_once();
    }

    v10 = String.lowercased()();
    if (!object)
    {
      v7 = 0;
      goto LABEL_23;
    }

    if (countAndFlagsBits != v10._countAndFlagsBits || object != v10._object)
    {
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
LABEL_21:

LABEL_23:

      return v7 & 1;
    }

LABEL_20:
    v7 = 1;
    goto LABEL_21;
  }

  if (v3._countAndFlagsBits == v4._countAndFlagsBits && v3._object == v4._object)
  {
    goto LABEL_20;
  }

  v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v6 & 1) == 0)
  {
    goto LABEL_11;
  }

  v7 = 1;
  return v7 & 1;
}

Swift::Int _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t specialized static PhoneCallAppNameConstants.isFaceTime(appId:)(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_25E5A2050;
    *(inited + 32) = 0xD000000000000012;
    *(inited + 40) = 0x800000025E5A6730;
    if (one-time initialization token for macFaceTimeBundleId != -1)
    {
      swift_once();
    }

    v5 = unk_27FCF8010;
    *(inited + 48) = static PhoneCallAppNameConstants.macFaceTimeBundleId;
    *(inited + 56) = v5;

    v6 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    LOBYTE(v2) = specialized Set.contains(_:)(a1, v2, v6);
  }

  return v2 & 1;
}

uint64_t specialized static PhoneCallAppNameConstants.isPhoneCaseInsensitive(appId:)(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (a2)
  {
    v3 = String.lowercased()();
    v4 = String.lowercased()();
    if (v3._object)
    {
      if (v3._countAndFlagsBits == v4._countAndFlagsBits && v3._object == v4._object)
      {
        goto LABEL_20;
      }

      v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v6)
      {
        goto LABEL_25;
      }
    }

    else
    {
    }

    v7 = String.lowercased()();
    v8 = String.lowercased()();
    if (v7._object)
    {
      if (v7._countAndFlagsBits == v8._countAndFlagsBits && v7._object == v8._object)
      {
        goto LABEL_20;
      }

      v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v9)
      {
        goto LABEL_25;
      }
    }

    else
    {
    }

    v10 = String.lowercased()();
    v11 = String.lowercased()();
    if (v10._object)
    {
      if (v10._countAndFlagsBits == v11._countAndFlagsBits && v10._object == v11._object)
      {
LABEL_20:

        v2 = 1;
        goto LABEL_21;
      }

      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v13)
      {
LABEL_25:
        v2 = 1;
        return v2 & 1;
      }
    }

    else
    {
    }

    v14 = String.lowercased()();
    v15 = String.lowercased()();
    if (!v14._object)
    {
      v2 = 0;
      goto LABEL_21;
    }

    if (v14._countAndFlagsBits != v15._countAndFlagsBits || v14._object != v15._object)
    {
      v2 = _stringCompareWithSmolCheck(_:_:expecting:)();

      goto LABEL_21;
    }

    goto LABEL_20;
  }

  String.lowercased()();

  String.lowercased()();

  String.lowercased()();

  String.lowercased()();
LABEL_21:

  return v2 & 1;
}

unint64_t PhoneCallNLConstants.canonicalName.getter(uint64_t a1)
{
  v1 = a1;
  _StringGuts.grow(_:)(20);

  v2 = PhoneCallNLConstants.rawValue.getter(v1);
  v4 = v3;
  specialized Collection.prefix(_:)(1, v2, v3, v5);
  v6 = Substring.uppercased()();

  specialized Collection.dropFirst(_:)(1uLL, v2, v4, v7);

  lazy protocol witness table accessor for type Substring and conformance Substring(v8, v9, v10);
  String.append<A>(contentsOf:)();

  MEMORY[0x25F8B7B50](v6._countAndFlagsBits, v6._object);

  return 0xD000000000000012;
}

unint64_t PhoneCallNLConstants.rawValue.getter(char a1)
{
  result = 0x6E69616D6F64;
  switch(a1)
  {
    case 1:
    case 7:
      result = 0x6C6143656E6F6870;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0xD000000000000014;
      break;
    case 5:
      v3 = 9;
      goto LABEL_15;
    case 6:
      v3 = 5;
LABEL_15:
      result = v3 | 0xD000000000000010;
      break;
    case 8:
      result = 0x6D754E656E6F6870;
      break;
    case 9:
      result = 0x6464416C69616D65;
      break;
    case 10:
      result = 0x75466E6F73726570;
      break;
    case 11:
      result = 0x69466E6F73726570;
      break;
    case 12:
      result = 0x614C6E6F73726570;
      break;
    case 13:
      result = 0x54746361746E6F63;
      break;
    case 14:
      result = 0x69614D6563696F76;
      break;
    case 15:
      result = 0x6C6143656E6F6870;
      break;
    default:
      return result;
  }

  return result;
}

Swift::String __swiftcall PhoneCallNLConstants.boundValue(_:)(Swift::String a1)
{
  v7 = PhoneCallNLConstants.canonicalName.getter(v1);
  v8 = v2;
  MEMORY[0x25F8B7B50](0x2E65756C61562ELL, 0xE700000000000000);
  countAndFlagsBits = String.uppercased()()._countAndFlagsBits;
  MEMORY[0x25F8B7B50](countAndFlagsBits);

  v4 = v7;
  v5 = v8;
  result._object = v5;
  result._countAndFlagsBits = v4;
  return result;
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneCallNLConstants@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized PhoneCallNLConstants.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PhoneCallNLConstants@<X0>(unint64_t *a1@<X8>)
{
  result = PhoneCallNLConstants.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t PhoneCallConfirmationSemantics.canonicalName.getter(unsigned __int8 a1)
{
  String.uppercased()();

  lazy protocol witness table accessor for type String and conformance String(v1, v2, v3);
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  v6 = PhoneCallNLConstants.canonicalName.getter(6);
  MEMORY[0x25F8B7B50](0x2E65756C61562ELL, 0xE700000000000000);
  v4 = String.uppercased()();

  MEMORY[0x25F8B7B50](v4._countAndFlagsBits, v4._object);

  return v6;
}

uint64_t PhoneCallConfirmationSemantics.rawValue.getter(unsigned __int8 a1)
{
  v1 = 7562617;
  v2 = 0x206D7269666E6F63;
  if (a1 != 2)
  {
    v2 = 0x63207463656A6572;
  }

  if (a1)
  {
    v1 = 28526;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PhoneCallConfirmationSemantics(_BYTE *a1, _BYTE *a2)
{
  v2 = 7562617;
  v3 = *a1;
  v4 = 0xE300000000000000;
  v5 = 0x206D7269666E6F63;
  v6 = 0xEF746361746E6F63;
  if (v3 != 2)
  {
    v5 = 0x63207463656A6572;
    v6 = 0xEE00746361746E6FLL;
  }

  v7 = 28526;
  if (*a1)
  {
    v4 = 0xE200000000000000;
  }

  else
  {
    v7 = 7562617;
  }

  if (*a1 <= 1u)
  {
    v8 = v7;
  }

  else
  {
    v8 = v5;
  }

  if (v3 <= 1)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  v10 = 0xE300000000000000;
  v11 = 0x206D7269666E6F63;
  v12 = 0xEF746361746E6F63;
  if (*a2 != 2)
  {
    v11 = 0x63207463656A6572;
    v12 = 0xEE00746361746E6FLL;
  }

  if (*a2)
  {
    v2 = 28526;
    v10 = 0xE200000000000000;
  }

  if (*a2 <= 1u)
  {
    v13 = v2;
  }

  else
  {
    v13 = v11;
  }

  if (*a2 <= 1u)
  {
    v14 = v10;
  }

  else
  {
    v14 = v12;
  }

  if (v8 == v13 && v9 == v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v15 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PhoneCallConfirmationSemantics()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PhoneCallConfirmationSemantics(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PhoneCallConfirmationSemantics(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneCallConfirmationSemantics@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized PhoneCallConfirmationSemantics.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance PhoneCallConfirmationSemantics(uint64_t *a1@<X8>)
{
  v2 = 0xE300000000000000;
  v3 = 7562617;
  v4 = 0xEF746361746E6F63;
  v5 = 0x206D7269666E6F63;
  if (*v1 != 2)
  {
    v5 = 0x63207463656A6572;
    v4 = 0xEE00746361746E6FLL;
  }

  if (*v1)
  {
    v3 = 28526;
    v2 = 0xE200000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t VoicemailVerbSemantics.canonicalName.getter(unsigned __int8 a1)
{
  String.uppercased()();

  lazy protocol witness table accessor for type String and conformance String(v1, v2, v3);
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  v6 = PhoneCallNLConstants.canonicalName.getter(14);
  MEMORY[0x25F8B7B50](0x2E65756C61562ELL, 0xE700000000000000);
  v4 = String.uppercased()();

  MEMORY[0x25F8B7B50](v4._countAndFlagsBits, v4._object);

  return v6;
}

uint64_t VoicemailVerbSemantics.rawValue.getter(unsigned __int8 a1)
{
  v1 = 2036427888;
  v2 = 1885956979;
  v3 = 0x6573756170;
  if (a1 != 3)
  {
    v3 = 0x656D75736572;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0x746165706572;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance VoicemailVerbSemantics(_BYTE *a1, _BYTE *a2)
{
  v2 = 2036427888;
  v3 = *a1;
  v4 = 0xE400000000000000;
  v5 = *a2;
  v6 = 0xE400000000000000;
  v7 = 1885956979;
  v8 = 0xE500000000000000;
  v9 = 0x6573756170;
  if (v3 != 3)
  {
    v9 = 0x656D75736572;
    v8 = 0xE600000000000000;
  }

  if (v3 != 2)
  {
    v7 = v9;
    v6 = v8;
  }

  v10 = 0x746165706572;
  if (*a1)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v10 = 2036427888;
  }

  if (*a1 <= 1u)
  {
    v11 = v10;
  }

  else
  {
    v11 = v7;
  }

  if (v3 <= 1)
  {
    v12 = v4;
  }

  else
  {
    v12 = v6;
  }

  v13 = 0xE400000000000000;
  v14 = 0xE400000000000000;
  v15 = 1885956979;
  v16 = 0xE500000000000000;
  v17 = 0x6573756170;
  if (v5 != 3)
  {
    v17 = 0x656D75736572;
    v16 = 0xE600000000000000;
  }

  if (v5 != 2)
  {
    v15 = v17;
    v14 = v16;
  }

  if (*a2)
  {
    v2 = 0x746165706572;
    v13 = 0xE600000000000000;
  }

  if (*a2 <= 1u)
  {
    v18 = v2;
  }

  else
  {
    v18 = v15;
  }

  if (*a2 <= 1u)
  {
    v19 = v13;
  }

  else
  {
    v19 = v14;
  }

  if (v11 == v18 && v12 == v19)
  {
    v20 = 1;
  }

  else
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v20 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance VoicemailVerbSemantics()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance VoicemailVerbSemantics(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance VoicemailVerbSemantics(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance VoicemailVerbSemantics@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized VoicemailVerbSemantics.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance VoicemailVerbSemantics(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 2036427888;
  v5 = 0xE400000000000000;
  v6 = 1885956979;
  v7 = 0xE500000000000000;
  v8 = 0x6573756170;
  if (v2 != 3)
  {
    v8 = 0x656D75736572;
    v7 = 0xE600000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x746165706572;
    v3 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t PhoneCallVerbSemantics.canonicalName.getter(char a1)
{
  PhoneCallVerbSemantics.rawValue.getter(a1);
  String.uppercased()();

  lazy protocol witness table accessor for type String and conformance String(v1, v2, v3);
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  v6 = PhoneCallNLConstants.canonicalName.getter(15);
  MEMORY[0x25F8B7B50](0x2E65756C61562ELL, 0xE700000000000000);
  v4 = String.uppercased()();

  MEMORY[0x25F8B7B50](v4._countAndFlagsBits, v4._object);

  return v6;
}

uint64_t PhoneCallVerbSemantics.rawValue.getter(char a1)
{
  result = 1819042147;
  switch(a1)
  {
    case 1:
      result = 0x636162206C6C6163;
      break;
    case 2:
    case 3:
      result = 0x656D697465636166;
      break;
    case 4:
      result = 0x7072656B61657073;
      break;
    case 5:
      result = 1684957542;
      break;
    case 6:
      result = 0x6C6169646572;
      break;
    case 7:
      result = 0x79666972616C63;
      break;
    case 8:
      result = 1684104562;
      break;
    case 9:
      result = 0x6D7269666E6F63;
      break;
    case 10:
      result = 0x726577736E61;
      break;
    case 11:
      result = 0x70755F676E6168;
      break;
    case 12:
      result = 0x6574656C6564;
      break;
    case 13:
      result = 1852403562;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PhoneCallNLConstants(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a2;
  v7 = a5(*a1);
  v9 = v8;
  if (v7 == a5(v6) && v9 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v12 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PhoneCallNLConstants(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = *v3;
  Hasher.init(_seed:)();
  a3(v5);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PhoneCallNLConstants(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  (a4)(*v4, a2, a3);
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PhoneCallNLConstants(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v6);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneCallVerbSemantics@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized PhoneCallVerbSemantics.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PhoneCallVerbSemantics@<X0>(uint64_t *a1@<X8>)
{
  result = PhoneCallVerbSemantics.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

PhoneSnippetUI::PhoneCallHandleType_optional __swiftcall PhoneCallHandleType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PhoneCallHandleType.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = PhoneSnippetUI_PhoneCallHandleType_email;
  }

  else
  {
    v4.value = PhoneSnippetUI_PhoneCallHandleType_unknownDefault;
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

uint64_t PhoneCallHandleType.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x6C69616D65;
  }

  else
  {
    return 0x656E6F6870;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PhoneCallHandleType(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x6C69616D65;
  }

  else
  {
    v2 = 0x656E6F6870;
  }

  if (*a2)
  {
    v3 = 0x6C69616D65;
  }

  else
  {
    v3 = 0x656E6F6870;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PhoneCallHandleType()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PhoneCallHandleType(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PhoneCallHandleType(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneCallHandleType@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PhoneCallHandleType.init(rawValue:), *a1);

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

void protocol witness for RawRepresentable.rawValue.getter in conformance PhoneCallHandleType(uint64_t *a1@<X8>)
{
  v2 = 0x656E6F6870;
  if (*v1)
  {
    v2 = 0x6C69616D65;
  }

  *a1 = v2;
  a1[1] = 0xE500000000000000;
}

uint64_t specialized Collection.prefix(_:)(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v5 = a2;
    v6 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v6 = a2;
    }

    v7 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v7 = 11;
    }

    v8 = v7 | (v6 << 16);
    v9 = String.index(_:offsetBy:limitedBy:)();
    if (v10)
    {
      a2 = v8;
    }

    else
    {
      a2 = v9;
    }

    a1 = 15;
    a3 = v5;
    a4 = v4;
  }

  return MEMORY[0x2821FBFB0](a1, a2, a3, a4);
}

uint64_t specialized Collection.dropFirst(_:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return MEMORY[0x2821FBFB0](a1, a2, a3, a4);
  }

  v4 = a3;
  v5 = a2;
  if ((a3 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v7 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v7 = 11;
  }

  v8 = v7 | (v6 << 16);
  a1 = String.index(_:offsetBy:limitedBy:)();
  if (a2)
  {
    a1 = v8;
  }

  if (4 * v6 < a1 >> 14)
  {
    goto LABEL_14;
  }

  a2 = v8;
  a3 = v5;
  a4 = v4;

  return MEMORY[0x2821FBFB0](a1, a2, a3, a4);
}

unint64_t lazy protocol witness table accessor for type Substring and conformance Substring(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type Substring and conformance Substring;
  if (!lazy protocol witness table cache variable for type Substring and conformance Substring)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Substring and conformance Substring);
  }

  return result;
}

unint64_t specialized PhoneCallNLConstants.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PhoneCallNLConstants.init(rawValue:), v2);

  if (v3 >= 0x10)
  {
    return 16;
  }

  else
  {
    return v3;
  }
}

unint64_t specialized PhoneCallConfirmationSemantics.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PhoneCallConfirmationSemantics.init(rawValue:), v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t specialized VoicemailVerbSemantics.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of VoicemailVerbSemantics.init(rawValue:), v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

unint64_t specialized PhoneCallVerbSemantics.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PhoneCallVerbSemantics.init(rawValue:), v2);

  if (v3 >= 0xE)
  {
    return 14;
  }

  else
  {
    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type PhoneCallNLConstants and conformance PhoneCallNLConstants(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type PhoneCallNLConstants and conformance PhoneCallNLConstants;
  if (!lazy protocol witness table cache variable for type PhoneCallNLConstants and conformance PhoneCallNLConstants)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallNLConstants and conformance PhoneCallNLConstants);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PhoneCallConfirmationSemantics and conformance PhoneCallConfirmationSemantics(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type PhoneCallConfirmationSemantics and conformance PhoneCallConfirmationSemantics;
  if (!lazy protocol witness table cache variable for type PhoneCallConfirmationSemantics and conformance PhoneCallConfirmationSemantics)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallConfirmationSemantics and conformance PhoneCallConfirmationSemantics);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type VoicemailVerbSemantics and conformance VoicemailVerbSemantics(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type VoicemailVerbSemantics and conformance VoicemailVerbSemantics;
  if (!lazy protocol witness table cache variable for type VoicemailVerbSemantics and conformance VoicemailVerbSemantics)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoicemailVerbSemantics and conformance VoicemailVerbSemantics);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PhoneCallVerbSemantics and conformance PhoneCallVerbSemantics(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type PhoneCallVerbSemantics and conformance PhoneCallVerbSemantics;
  if (!lazy protocol witness table cache variable for type PhoneCallVerbSemantics and conformance PhoneCallVerbSemantics)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallVerbSemantics and conformance PhoneCallVerbSemantics);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PhoneCallHandleType and conformance PhoneCallHandleType(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type PhoneCallHandleType and conformance PhoneCallHandleType;
  if (!lazy protocol witness table cache variable for type PhoneCallHandleType and conformance PhoneCallHandleType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallHandleType and conformance PhoneCallHandleType);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PhoneCallNLConstants(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 15 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 15) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 15;
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

      return (*a1 | (v4 << 8)) - 15;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PhoneCallNLConstants(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PhoneCallConfirmationSemantics(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PhoneCallConfirmationSemantics(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PhoneCallVerbSemantics(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PhoneCallVerbSemantics(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t PhoneContactHeader.appBundleId.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PhoneContactHeader.contactId.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t PhoneContactHeader.displayName.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t PhoneContactHeader.handle.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t PhoneContactHeader.description.getter()
{
  v1 = v0;
  _StringGuts.grow(_:)(95);
  MEMORY[0x25F8B7B50](0xD00000000000001FLL, 0x800000025E5A6A00);
  MEMORY[0x25F8B7B50](*v1, v1[1]);
  MEMORY[0x25F8B7B50](0x6361746E6F63202CLL, 0xEC0000003D644974);
  MEMORY[0x25F8B7B50](v1[2], v1[3]);
  MEMORY[0x25F8B7B50](0x616C70736964202CLL, 0xEE003D656D614E79);
  MEMORY[0x25F8B7B50](v1[4], v1[5]);
  MEMORY[0x25F8B7B50](0x656C646E6168202CLL, 0xE90000000000003DLL);
  MEMORY[0x25F8B7B50](v1[6], v1[7]);
  MEMORY[0x25F8B7B50](0xD000000000000012, 0x800000025E5A6A20);
  if (*(v0 + 64))
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (*(v0 + 64))
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  MEMORY[0x25F8B7B50](v2, v3);

  MEMORY[0x25F8B7B50](41, 0xE100000000000000);
  return 0;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance PhoneContactHeader.CodingKeys()
{
  v1 = *v0;
  v2 = 0x6C646E7542707061;
  v3 = 0x4E79616C70736964;
  v4 = 0x656C646E6168;
  if (v1 != 3)
  {
    v4 = 0x5074737269467369;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x49746361746E6F63;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PhoneContactHeader.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized PhoneContactHeader.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PhoneContactHeader.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = lazy protocol witness table accessor for type PhoneContactHeader.CodingKeys and conformance PhoneContactHeader.CodingKeys(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PhoneContactHeader.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = lazy protocol witness table accessor for type PhoneContactHeader.CodingKeys and conformance PhoneContactHeader.CodingKeys(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t PhoneContactHeader.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14PhoneSnippetUI0D13ContactHeaderV10CodingKeys33_B3E138E788F551605F0D3EFA341B5FE2LLOGMd, &_ss22KeyedEncodingContainerVy14PhoneSnippetUI0D13ContactHeaderV10CodingKeys33_B3E138E788F551605F0D3EFA341B5FE2LLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11[-v5];
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PhoneContactHeader.CodingKeys and conformance PhoneContactHeader.CodingKeys(v7, v8, v9);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v11[14] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v11[13] = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  v11[12] = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  v11[11] = 4;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

unint64_t lazy protocol witness table accessor for type PhoneContactHeader.CodingKeys and conformance PhoneContactHeader.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type PhoneContactHeader.CodingKeys and conformance PhoneContactHeader.CodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneContactHeader.CodingKeys and conformance PhoneContactHeader.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneContactHeader.CodingKeys and conformance PhoneContactHeader.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneContactHeader.CodingKeys and conformance PhoneContactHeader.CodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneContactHeader.CodingKeys and conformance PhoneContactHeader.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneContactHeader.CodingKeys and conformance PhoneContactHeader.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneContactHeader.CodingKeys and conformance PhoneContactHeader.CodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneContactHeader.CodingKeys and conformance PhoneContactHeader.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneContactHeader.CodingKeys and conformance PhoneContactHeader.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneContactHeader.CodingKeys and conformance PhoneContactHeader.CodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneContactHeader.CodingKeys and conformance PhoneContactHeader.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneContactHeader.CodingKeys and conformance PhoneContactHeader.CodingKeys);
  }

  return result;
}

void __swiftcall PhoneContactHeader.init(appBundleId:contactId:displayName:handle:isFirstPartyApp:)(PhoneSnippetUI::PhoneContactHeader *__return_ptr retstr, Swift::String appBundleId, Swift::String contactId, Swift::String displayName, Swift::String handle, Swift::Bool isFirstPartyApp)
{
  retstr->appBundleId = appBundleId;
  retstr->contactId = contactId;
  retstr->displayName = displayName;
  retstr->handle = handle;
  retstr->isFirstPartyApp = isFirstPartyApp;
}

__n128 PhoneContactHeader.init(from:)@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  specialized PhoneContactHeader.init(from:)(a2, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v7;
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

__n128 protocol witness for Decodable.init(from:) in conformance PhoneContactHeader@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  specialized PhoneContactHeader.init(from:)(a2, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v7;
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t specialized PhoneContactHeader.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C646E7542707061 && a2 == 0xEB00000000644965;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x49746361746E6F63 && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C646E6168 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x5074737269467369 && a2 == 0xEF70704179747261)
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

uint64_t specialized PhoneContactHeader.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14PhoneSnippetUI0D13ContactHeaderV10CodingKeys33_B3E138E788F551605F0D3EFA341B5FE2LLOGMd, &_ss22KeyedDecodingContainerVy14PhoneSnippetUI0D13ContactHeaderV10CodingKeys33_B3E138E788F551605F0D3EFA341B5FE2LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v27 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PhoneContactHeader.CodingKeys and conformance PhoneContactHeader.CodingKeys(v9, v10, v11);
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v39[0]) = 0;
  v12 = KeyedDecodingContainer.decode(_:forKey:)();
  v33 = v13;
  LOBYTE(v39[0]) = 1;
  v14 = KeyedDecodingContainer.decode(_:forKey:)();
  v32 = v15;
  v29 = v14;
  LOBYTE(v39[0]) = 2;
  v28 = KeyedDecodingContainer.decode(_:forKey:)();
  v31 = v16;
  LOBYTE(v39[0]) = 3;
  v27 = KeyedDecodingContainer.decode(_:forKey:)();
  v30 = v17;
  v42 = 4;
  v18 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v41 = v18 & 1;
  v20 = v32;
  v19 = v33;
  *&v34 = v12;
  *(&v34 + 1) = v33;
  v21 = v29;
  *&v35 = v29;
  *(&v35 + 1) = v32;
  v22 = v31;
  *&v36 = v28;
  *(&v36 + 1) = v31;
  v23 = v30;
  *&v37 = v27;
  *(&v37 + 1) = v30;
  v38 = v41;
  outlined init with copy of PhoneContactHeader(&v34, v39);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v39[0] = v12;
  v39[1] = v19;
  v39[2] = v21;
  v39[3] = v20;
  v39[4] = v28;
  v39[5] = v22;
  v39[6] = v27;
  v39[7] = v23;
  v40 = v41;
  result = outlined destroy of PhoneContactHeader(v39);
  v25 = v37;
  *(a2 + 32) = v36;
  *(a2 + 48) = v25;
  *(a2 + 64) = v38;
  v26 = v35;
  *a2 = v34;
  *(a2 + 16) = v26;
  return result;
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PhoneContactHeader(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t storeEnumTagSinglePayload for PhoneContactHeader(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t specialized Collection<>.popFirst()()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t PhoneSnippetDataModels.snippetHidden(for:idiom:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = type metadata accessor for DeviceIdiom();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PhoneSnippetDataModels(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PhoneSnippetDataModels(v3, v11);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 7)
  {
    if (EnumCaseMultiPayload == 6)
    {
      v13 = specialized StackedButtonsModel.shouldHideSnippet(on:)(a2, v11[8]);

      return v13 & 1;
    }

    if (EnumCaseMultiPayload)
    {
      outlined destroy of PhoneSnippetDataModels(v11, type metadata accessor for PhoneSnippetDataModels);
      v13 = 0;
      return v13 & 1;
    }
  }

  outlined destroy of PhoneSnippetDataModels(v11, type metadata accessor for PhoneSnippetDataModels);
  (*(v6 + 104))(v8, *MEMORY[0x277D61BE8], v5);
  v13 = static DeviceIdiom.== infix(_:_:)();
  (*(v6 + 8))(v8, v5);
  return v13 & 1;
}

uint64_t type metadata accessor for PhoneSnippetDataModels(uint64_t a1)
{
  result = type metadata singleton initialization cache for PhoneSnippetDataModels;
  if (!type metadata singleton initialization cache for PhoneSnippetDataModels)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with copy of PhoneSnippetDataModels(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhoneSnippetDataModels(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t PhoneSnippetDataModels.CodingKeys.stringValue.getter(char a1)
{
  result = 0x69666E6F43707061;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0xD000000000000022;
      break;
    case 5:
      result = 0xD000000000000020;
      break;
    case 6:
      result = 0x4264656B63617473;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 8:
      result = 0xD000000000000018;
      break;
    case 9:
      result = 0x747369486C6C6163;
      break;
    case 10:
      result = 0xD000000000000011;
      break;
    case 11:
      result = 0x6F56656C676E6973;
      break;
    case 12:
      result = 0xD000000000000017;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PhoneSnippetDataModels.AppConfirmationCodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = lazy protocol witness table accessor for type PhoneSnippetDataModels.AppConfirmationCodingKeys and conformance PhoneSnippetDataModels.AppConfirmationCodingKeys(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PhoneSnippetDataModels.AppConfirmationCodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = lazy protocol witness table accessor for type PhoneSnippetDataModels.AppConfirmationCodingKeys and conformance PhoneSnippetDataModels.AppConfirmationCodingKeys(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PhoneSnippetDataModels.AppDisambiguationCodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = lazy protocol witness table accessor for type PhoneSnippetDataModels.AppDisambiguationCodingKeys and conformance PhoneSnippetDataModels.AppDisambiguationCodingKeys(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PhoneSnippetDataModels.AppDisambiguationCodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = lazy protocol witness table accessor for type PhoneSnippetDataModels.AppDisambiguationCodingKeys and conformance PhoneSnippetDataModels.AppDisambiguationCodingKeys(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PhoneSnippetDataModels.CallHistoryListCodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = lazy protocol witness table accessor for type PhoneSnippetDataModels.CallHistoryListCodingKeys and conformance PhoneSnippetDataModels.CallHistoryListCodingKeys(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PhoneSnippetDataModels.CallHistoryListCodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = lazy protocol witness table accessor for type PhoneSnippetDataModels.CallHistoryListCodingKeys and conformance PhoneSnippetDataModels.CallHistoryListCodingKeys(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PhoneSnippetDataModels.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized PhoneSnippetDataModels.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PhoneSnippetDataModels.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = lazy protocol witness table accessor for type PhoneSnippetDataModels.CodingKeys and conformance PhoneSnippetDataModels.CodingKeys(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PhoneSnippetDataModels.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = lazy protocol witness table accessor for type PhoneSnippetDataModels.CodingKeys and conformance PhoneSnippetDataModels.CodingKeys(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PhoneSnippetDataModels.ContactConfirmationCodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = lazy protocol witness table accessor for type PhoneSnippetDataModels.ContactConfirmationCodingKeys and conformance PhoneSnippetDataModels.ContactConfirmationCodingKeys(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PhoneSnippetDataModels.ContactConfirmationCodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = lazy protocol witness table accessor for type PhoneSnippetDataModels.ContactConfirmationCodingKeys and conformance PhoneSnippetDataModels.ContactConfirmationCodingKeys(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PhoneSnippetDataModels.EmergencyCountdownCodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = lazy protocol witness table accessor for type PhoneSnippetDataModels.EmergencyCountdownCodingKeys and conformance PhoneSnippetDataModels.EmergencyCountdownCodingKeys(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PhoneSnippetDataModels.EmergencyCountdownCodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = lazy protocol witness table accessor for type PhoneSnippetDataModels.EmergencyCountdownCodingKeys and conformance PhoneSnippetDataModels.EmergencyCountdownCodingKeys(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PhoneSnippetDataModels.ForeignEmergencyCallDisambiguationCodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = lazy protocol witness table accessor for type PhoneSnippetDataModels.ForeignEmergencyCallDisambiguationCodingKeys and conformance PhoneSnippetDataModels.ForeignEmergencyCallDisambiguationCodingKeys(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PhoneSnippetDataModels.ForeignEmergencyCallDisambiguationCodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = lazy protocol witness table accessor for type PhoneSnippetDataModels.ForeignEmergencyCallDisambiguationCodingKeys and conformance PhoneSnippetDataModels.ForeignEmergencyCallDisambiguationCodingKeys(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PhoneSnippetDataModels.LocalEmergencyCallDisambiguationCodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = lazy protocol witness table accessor for type PhoneSnippetDataModels.LocalEmergencyCallDisambiguationCodingKeys and conformance PhoneSnippetDataModels.LocalEmergencyCallDisambiguationCodingKeys(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PhoneSnippetDataModels.LocalEmergencyCallDisambiguationCodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = lazy protocol witness table accessor for type PhoneSnippetDataModels.LocalEmergencyCallDisambiguationCodingKeys and conformance PhoneSnippetDataModels.LocalEmergencyCallDisambiguationCodingKeys(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PhoneSnippetDataModels.PlayVoicemailListCodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = lazy protocol witness table accessor for type PhoneSnippetDataModels.PlayVoicemailListCodingKeys and conformance PhoneSnippetDataModels.PlayVoicemailListCodingKeys(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PhoneSnippetDataModels.PlayVoicemailListCodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = lazy protocol witness table accessor for type PhoneSnippetDataModels.PlayVoicemailListCodingKeys and conformance PhoneSnippetDataModels.PlayVoicemailListCodingKeys(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PhoneSnippetDataModels.SingleCallHistoryRecordCodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = lazy protocol witness table accessor for type PhoneSnippetDataModels.SingleCallHistoryRecordCodingKeys and conformance PhoneSnippetDataModels.SingleCallHistoryRecordCodingKeys(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PhoneSnippetDataModels.SingleCallHistoryRecordCodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = lazy protocol witness table accessor for type PhoneSnippetDataModels.SingleCallHistoryRecordCodingKeys and conformance PhoneSnippetDataModels.SingleCallHistoryRecordCodingKeys(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PhoneSnippetDataModels.SingleVoicemailCodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = lazy protocol witness table accessor for type PhoneSnippetDataModels.SingleVoicemailCodingKeys and conformance PhoneSnippetDataModels.SingleVoicemailCodingKeys(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PhoneSnippetDataModels.SingleVoicemailCodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = lazy protocol witness table accessor for type PhoneSnippetDataModels.SingleVoicemailCodingKeys and conformance PhoneSnippetDataModels.SingleVoicemailCodingKeys(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PhoneSnippetDataModels.StackedButtonsCodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = lazy protocol witness table accessor for type PhoneSnippetDataModels.StackedButtonsCodingKeys and conformance PhoneSnippetDataModels.StackedButtonsCodingKeys(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PhoneSnippetDataModels.StackedButtonsCodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = lazy protocol witness table accessor for type PhoneSnippetDataModels.StackedButtonsCodingKeys and conformance PhoneSnippetDataModels.StackedButtonsCodingKeys(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PhoneSnippetDataModels.YesNoConfirmationCarPlayCodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = lazy protocol witness table accessor for type PhoneSnippetDataModels.YesNoConfirmationCarPlayCodingKeys and conformance PhoneSnippetDataModels.YesNoConfirmationCarPlayCodingKeys(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PhoneSnippetDataModels.YesNoConfirmationCarPlayCodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = lazy protocol witness table accessor for type PhoneSnippetDataModels.YesNoConfirmationCarPlayCodingKeys and conformance PhoneSnippetDataModels.YesNoConfirmationCarPlayCodingKeys(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PhoneSnippetDataModels.YesNoConfirmationCodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = lazy protocol witness table accessor for type PhoneSnippetDataModels.YesNoConfirmationCodingKeys and conformance PhoneSnippetDataModels.YesNoConfirmationCodingKeys(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PhoneSnippetDataModels.YesNoConfirmationCodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = lazy protocol witness table accessor for type PhoneSnippetDataModels.YesNoConfirmationCodingKeys and conformance PhoneSnippetDataModels.YesNoConfirmationCodingKeys(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t PhoneSnippetDataModels.encode(to:)(void *a1)
{
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14PhoneSnippetUI0dE10DataModelsO33SingleCallHistoryRecordCodingKeys33_374FEEA39292D60DBDB1F10CD6A31427LLOGMd, &_ss22KeyedEncodingContainerVy14PhoneSnippetUI0dE10DataModelsO33SingleCallHistoryRecordCodingKeys33_374FEEA39292D60DBDB1F10CD6A31427LLOGMR);
  v133 = *(v176 - 8);
  MEMORY[0x28223BE20](v176);
  v175 = &v122 - v2;
  v173 = type metadata accessor for SingleResultCallHistoryModel(0);
  MEMORY[0x28223BE20](v173);
  v174 = &v122 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14PhoneSnippetUI0dE10DataModelsO25SingleVoicemailCodingKeys33_374FEEA39292D60DBDB1F10CD6A31427LLOGMd, &_ss22KeyedEncodingContainerVy14PhoneSnippetUI0dE10DataModelsO25SingleVoicemailCodingKeys33_374FEEA39292D60DBDB1F10CD6A31427LLOGMR);
  v132 = *(v172 - 8);
  MEMORY[0x28223BE20](v172);
  v171 = &v122 - v4;
  v169 = type metadata accessor for SingleResultVoicemailModel(0);
  MEMORY[0x28223BE20](v169);
  v170 = &v122 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14PhoneSnippetUI0dE10DataModelsO27PlayVoicemailListCodingKeys33_374FEEA39292D60DBDB1F10CD6A31427LLOGMd, &_ss22KeyedEncodingContainerVy14PhoneSnippetUI0dE10DataModelsO27PlayVoicemailListCodingKeys33_374FEEA39292D60DBDB1F10CD6A31427LLOGMR);
  v131 = *(v168 - 8);
  MEMORY[0x28223BE20](v168);
  v167 = &v122 - v6;
  v165 = type metadata accessor for PlayVoicemailModel(0);
  MEMORY[0x28223BE20](v165);
  v166 = &v122 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14PhoneSnippetUI0dE10DataModelsO25CallHistoryListCodingKeys33_374FEEA39292D60DBDB1F10CD6A31427LLOGMd, &_ss22KeyedEncodingContainerVy14PhoneSnippetUI0dE10DataModelsO25CallHistoryListCodingKeys33_374FEEA39292D60DBDB1F10CD6A31427LLOGMR);
  v130 = *(v164 - 8);
  MEMORY[0x28223BE20](v164);
  v163 = &v122 - v8;
  v161 = type metadata accessor for SearchCallHistoryModel(0);
  MEMORY[0x28223BE20](v161);
  v162 = &v122 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14PhoneSnippetUI0dE10DataModelsO34YesNoConfirmationCarPlayCodingKeys33_374FEEA39292D60DBDB1F10CD6A31427LLOGMd, &_ss22KeyedEncodingContainerVy14PhoneSnippetUI0dE10DataModelsO34YesNoConfirmationCarPlayCodingKeys33_374FEEA39292D60DBDB1F10CD6A31427LLOGMR);
  v129 = *(v160 - 8);
  MEMORY[0x28223BE20](v160);
  v159 = &v122 - v10;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14PhoneSnippetUI0dE10DataModelsO27YesNoConfirmationCodingKeys33_374FEEA39292D60DBDB1F10CD6A31427LLOGMd, &_ss22KeyedEncodingContainerVy14PhoneSnippetUI0dE10DataModelsO27YesNoConfirmationCodingKeys33_374FEEA39292D60DBDB1F10CD6A31427LLOGMR);
  v128 = *(v158 - 8);
  MEMORY[0x28223BE20](v158);
  v157 = &v122 - v11;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14PhoneSnippetUI0dE10DataModelsO24StackedButtonsCodingKeys33_374FEEA39292D60DBDB1F10CD6A31427LLOGMd, &_ss22KeyedEncodingContainerVy14PhoneSnippetUI0dE10DataModelsO24StackedButtonsCodingKeys33_374FEEA39292D60DBDB1F10CD6A31427LLOGMR);
  v127 = *(v156 - 8);
  MEMORY[0x28223BE20](v156);
  v154 = &v122 - v12;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14PhoneSnippetUI0dE10DataModelsO42LocalEmergencyCallDisambiguationCodingKeys33_374FEEA39292D60DBDB1F10CD6A31427LLOGMd, &_ss22KeyedEncodingContainerVy14PhoneSnippetUI0dE10DataModelsO42LocalEmergencyCallDisambiguationCodingKeys33_374FEEA39292D60DBDB1F10CD6A31427LLOGMR);
  v126 = *(v155 - 8);
  MEMORY[0x28223BE20](v155);
  v153 = &v122 - v13;
  v151 = type metadata accessor for LocalEmergencyCallDisambiguationModel(0);
  MEMORY[0x28223BE20](v151);
  v152 = &v122 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14PhoneSnippetUI0dE10DataModelsO44ForeignEmergencyCallDisambiguationCodingKeys33_374FEEA39292D60DBDB1F10CD6A31427LLOGMd, &_ss22KeyedEncodingContainerVy14PhoneSnippetUI0dE10DataModelsO44ForeignEmergencyCallDisambiguationCodingKeys33_374FEEA39292D60DBDB1F10CD6A31427LLOGMR);
  v125 = *(v150 - 8);
  MEMORY[0x28223BE20](v150);
  v149 = &v122 - v15;
  v147 = type metadata accessor for ForeignEmergencyCallDisambiguationModel(0);
  MEMORY[0x28223BE20](v147);
  v148 = &v122 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14PhoneSnippetUI0dE10DataModelsO28EmergencyCountdownCodingKeys33_374FEEA39292D60DBDB1F10CD6A31427LLOGMd, &_ss22KeyedEncodingContainerVy14PhoneSnippetUI0dE10DataModelsO28EmergencyCountdownCodingKeys33_374FEEA39292D60DBDB1F10CD6A31427LLOGMR);
  v124 = *(v146 - 8);
  MEMORY[0x28223BE20](v146);
  v145 = &v122 - v17;
  v143 = type metadata accessor for EmergencyCountdownModel(0);
  MEMORY[0x28223BE20](v143);
  v144 = &v122 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14PhoneSnippetUI0dE10DataModelsO29ContactConfirmationCodingKeys33_374FEEA39292D60DBDB1F10CD6A31427LLOGMd, &_ss22KeyedEncodingContainerVy14PhoneSnippetUI0dE10DataModelsO29ContactConfirmationCodingKeys33_374FEEA39292D60DBDB1F10CD6A31427LLOGMR);
  v123 = *(v142 - 8);
  MEMORY[0x28223BE20](v142);
  v141 = &v122 - v19;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14PhoneSnippetUI0dE10DataModelsO27AppDisambiguationCodingKeys33_374FEEA39292D60DBDB1F10CD6A31427LLOGMd, &_ss22KeyedEncodingContainerVy14PhoneSnippetUI0dE10DataModelsO27AppDisambiguationCodingKeys33_374FEEA39292D60DBDB1F10CD6A31427LLOGMR);
  v139 = *(v140 - 8);
  MEMORY[0x28223BE20](v140);
  v137 = &v122 - v20;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14PhoneSnippetUI0dE10DataModelsO25AppConfirmationCodingKeys33_374FEEA39292D60DBDB1F10CD6A31427LLOGMd, &_ss22KeyedEncodingContainerVy14PhoneSnippetUI0dE10DataModelsO25AppConfirmationCodingKeys33_374FEEA39292D60DBDB1F10CD6A31427LLOGMR);
  v136 = *(v138 - 8);
  MEMORY[0x28223BE20](v138);
  v134 = &v122 - v21;
  v177 = type metadata accessor for YesNoConfirmationModel(0);
  v22 = MEMORY[0x28223BE20](v177);
  v135 = &v122 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v122 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v122 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = &v122 - v30;
  v32 = type metadata accessor for PhoneSnippetDataModels(0);
  MEMORY[0x28223BE20](v32);
  v34 = (&v122 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14PhoneSnippetUI0dE10DataModelsO10CodingKeys33_374FEEA39292D60DBDB1F10CD6A31427LLOGMd, &_ss22KeyedEncodingContainerVy14PhoneSnippetUI0dE10DataModelsO10CodingKeys33_374FEEA39292D60DBDB1F10CD6A31427LLOGMR);
  v178 = *(v181 - 8);
  MEMORY[0x28223BE20](v181);
  v36 = &v122 - v35;
  v37 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PhoneSnippetDataModels.CodingKeys and conformance PhoneSnippetDataModels.CodingKeys(v37, v38, v39);
  v180 = v36;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  outlined init with copy of PhoneSnippetDataModels(v179, v34);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v89 = *v34;
      v90 = v34[1];
      v91 = v34[2];
      LOBYTE(v182) = 1;
      lazy protocol witness table accessor for type PhoneSnippetDataModels.AppDisambiguationCodingKeys and conformance PhoneSnippetDataModels.AppDisambiguationCodingKeys(EnumCaseMultiPayload, v41, v42);
      v92 = v137;
      v94 = v180;
      v93 = v181;
      v95 = KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v182 = v89;
      v183 = v90;
      v184 = v91;
      lazy protocol witness table accessor for type AppDisambiguationModel and conformance AppDisambiguationModel(v95, v96, v97);
      v98 = v140;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v139 + 8))(v92, v98);
      (*(v178 + 8))(v94, v93);

    case 2:
      v72 = outlined init with take of SingleResultCallHistoryModel(v34, v29, type metadata accessor for YesNoConfirmationModel);
      LOBYTE(v182) = 2;
      lazy protocol witness table accessor for type PhoneSnippetDataModels.ContactConfirmationCodingKeys and conformance PhoneSnippetDataModels.ContactConfirmationCodingKeys(v72, v73, v74);
      v75 = v141;
      v48 = v180;
      v47 = v181;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type SingleResultCallHistoryModel and conformance SingleResultCallHistoryModel(&lazy protocol witness table cache variable for type YesNoConfirmationModel and conformance YesNoConfirmationModel, type metadata accessor for YesNoConfirmationModel, &protocol conformance descriptor for YesNoConfirmationModel);
      v76 = v142;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v123 + 8))(v75, v76);
      v77 = type metadata accessor for YesNoConfirmationModel;
      v78 = v29;
      goto LABEL_18;
    case 3:
      v31 = v144;
      v79 = outlined init with take of SingleResultCallHistoryModel(v34, v144, type metadata accessor for EmergencyCountdownModel);
      LOBYTE(v182) = 3;
      lazy protocol witness table accessor for type PhoneSnippetDataModels.EmergencyCountdownCodingKeys and conformance PhoneSnippetDataModels.EmergencyCountdownCodingKeys(v79, v80, v81);
      v82 = v145;
      v48 = v180;
      v47 = v181;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type SingleResultCallHistoryModel and conformance SingleResultCallHistoryModel(&lazy protocol witness table cache variable for type EmergencyCountdownModel and conformance EmergencyCountdownModel, type metadata accessor for EmergencyCountdownModel, &protocol conformance descriptor for EmergencyCountdownModel);
      v83 = v146;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v124 + 8))(v82, v83);
      v56 = type metadata accessor for EmergencyCountdownModel;
      goto LABEL_17;
    case 4:
      v31 = v148;
      v57 = outlined init with take of SingleResultCallHistoryModel(v34, v148, type metadata accessor for ForeignEmergencyCallDisambiguationModel);
      LOBYTE(v182) = 4;
      lazy protocol witness table accessor for type PhoneSnippetDataModels.ForeignEmergencyCallDisambiguationCodingKeys and conformance PhoneSnippetDataModels.ForeignEmergencyCallDisambiguationCodingKeys(v57, v58, v59);
      v60 = v149;
      v48 = v180;
      v47 = v181;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type SingleResultCallHistoryModel and conformance SingleResultCallHistoryModel(&lazy protocol witness table cache variable for type ForeignEmergencyCallDisambiguationModel and conformance ForeignEmergencyCallDisambiguationModel, type metadata accessor for ForeignEmergencyCallDisambiguationModel, &protocol conformance descriptor for ForeignEmergencyCallDisambiguationModel);
      v61 = v150;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v125 + 8))(v60, v61);
      v56 = type metadata accessor for ForeignEmergencyCallDisambiguationModel;
      goto LABEL_17;
    case 5:
      v31 = v152;
      v99 = outlined init with take of SingleResultCallHistoryModel(v34, v152, type metadata accessor for LocalEmergencyCallDisambiguationModel);
      LOBYTE(v182) = 5;
      lazy protocol witness table accessor for type PhoneSnippetDataModels.LocalEmergencyCallDisambiguationCodingKeys and conformance PhoneSnippetDataModels.LocalEmergencyCallDisambiguationCodingKeys(v99, v100, v101);
      v102 = v153;
      v48 = v180;
      v47 = v181;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type SingleResultCallHistoryModel and conformance SingleResultCallHistoryModel(&lazy protocol witness table cache variable for type LocalEmergencyCallDisambiguationModel and conformance LocalEmergencyCallDisambiguationModel, type metadata accessor for LocalEmergencyCallDisambiguationModel, &protocol conformance descriptor for LocalEmergencyCallDisambiguationModel);
      v103 = v155;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v126 + 8))(v102, v103);
      v56 = type metadata accessor for LocalEmergencyCallDisambiguationModel;
      goto LABEL_17;
    case 6:
      v104 = *v34;
      v105 = *(v34 + 8);
      LOBYTE(v182) = 6;
      lazy protocol witness table accessor for type PhoneSnippetDataModels.StackedButtonsCodingKeys and conformance PhoneSnippetDataModels.StackedButtonsCodingKeys(EnumCaseMultiPayload, v41, v42);
      v106 = v154;
      v108 = v180;
      v107 = v181;
      v109 = KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v182 = v104;
      LOBYTE(v183) = v105;
      lazy protocol witness table accessor for type StackedButtonsModel and conformance StackedButtonsModel(v109, v110, v111);
      v112 = v156;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v127 + 8))(v106, v112);
      (*(v178 + 8))(v108, v107);

    case 7:
      v84 = outlined init with take of SingleResultCallHistoryModel(v34, v26, type metadata accessor for YesNoConfirmationModel);
      LOBYTE(v182) = 7;
      lazy protocol witness table accessor for type PhoneSnippetDataModels.YesNoConfirmationCodingKeys and conformance PhoneSnippetDataModels.YesNoConfirmationCodingKeys(v84, v85, v86);
      v87 = v157;
      v48 = v180;
      v47 = v181;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type SingleResultCallHistoryModel and conformance SingleResultCallHistoryModel(&lazy protocol witness table cache variable for type YesNoConfirmationModel and conformance YesNoConfirmationModel, type metadata accessor for YesNoConfirmationModel, &protocol conformance descriptor for YesNoConfirmationModel);
      v88 = v158;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v128 + 8))(v87, v88);
      v77 = type metadata accessor for YesNoConfirmationModel;
      v78 = v26;
      goto LABEL_18;
    case 8:
      v31 = v135;
      v119 = outlined init with take of SingleResultCallHistoryModel(v34, v135, type metadata accessor for YesNoConfirmationModel);
      LOBYTE(v182) = 8;
      lazy protocol witness table accessor for type PhoneSnippetDataModels.YesNoConfirmationCarPlayCodingKeys and conformance PhoneSnippetDataModels.YesNoConfirmationCarPlayCodingKeys(v119, v120, v121);
      v46 = v159;
      v48 = v180;
      v47 = v181;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type SingleResultCallHistoryModel and conformance SingleResultCallHistoryModel(&lazy protocol witness table cache variable for type YesNoConfirmationModel and conformance YesNoConfirmationModel, type metadata accessor for YesNoConfirmationModel, &protocol conformance descriptor for YesNoConfirmationModel);
      v49 = v160;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v50 = &v161;
      goto LABEL_16;
    case 9:
      v31 = v162;
      v67 = outlined init with take of SingleResultCallHistoryModel(v34, v162, type metadata accessor for SearchCallHistoryModel);
      LOBYTE(v182) = 9;
      lazy protocol witness table accessor for type PhoneSnippetDataModels.CallHistoryListCodingKeys and conformance PhoneSnippetDataModels.CallHistoryListCodingKeys(v67, v68, v69);
      v70 = v163;
      v48 = v180;
      v47 = v181;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type SingleResultCallHistoryModel and conformance SingleResultCallHistoryModel(&lazy protocol witness table cache variable for type SearchCallHistoryModel and conformance SearchCallHistoryModel, type metadata accessor for SearchCallHistoryModel, &protocol conformance descriptor for SearchCallHistoryModel);
      v71 = v164;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v130 + 8))(v70, v71);
      v56 = type metadata accessor for SearchCallHistoryModel;
      goto LABEL_17;
    case 10:
      v31 = v166;
      v114 = outlined init with take of SingleResultCallHistoryModel(v34, v166, type metadata accessor for PlayVoicemailModel);
      LOBYTE(v182) = 10;
      lazy protocol witness table accessor for type PhoneSnippetDataModels.PlayVoicemailListCodingKeys and conformance PhoneSnippetDataModels.PlayVoicemailListCodingKeys(v114, v115, v116);
      v117 = v167;
      v48 = v180;
      v47 = v181;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type SingleResultCallHistoryModel and conformance SingleResultCallHistoryModel(&lazy protocol witness table cache variable for type PlayVoicemailModel and conformance PlayVoicemailModel, type metadata accessor for PlayVoicemailModel, &protocol conformance descriptor for PlayVoicemailModel);
      v118 = v168;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v131 + 8))(v117, v118);
      v56 = type metadata accessor for PlayVoicemailModel;
      goto LABEL_17;
    case 11:
      v31 = v170;
      v51 = outlined init with take of SingleResultCallHistoryModel(v34, v170, type metadata accessor for SingleResultVoicemailModel);
      LOBYTE(v182) = 11;
      lazy protocol witness table accessor for type PhoneSnippetDataModels.SingleVoicemailCodingKeys and conformance PhoneSnippetDataModels.SingleVoicemailCodingKeys(v51, v52, v53);
      v54 = v171;
      v48 = v180;
      v47 = v181;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type SingleResultCallHistoryModel and conformance SingleResultCallHistoryModel(&lazy protocol witness table cache variable for type SingleResultVoicemailModel and conformance SingleResultVoicemailModel, type metadata accessor for SingleResultVoicemailModel, &protocol conformance descriptor for SingleResultVoicemailModel);
      v55 = v172;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v132 + 8))(v54, v55);
      v56 = type metadata accessor for SingleResultVoicemailModel;
      goto LABEL_17;
    case 12:
      v31 = v174;
      v62 = outlined init with take of SingleResultCallHistoryModel(v34, v174, type metadata accessor for SingleResultCallHistoryModel);
      LOBYTE(v182) = 12;
      lazy protocol witness table accessor for type PhoneSnippetDataModels.SingleCallHistoryRecordCodingKeys and conformance PhoneSnippetDataModels.SingleCallHistoryRecordCodingKeys(v62, v63, v64);
      v65 = v175;
      v48 = v180;
      v47 = v181;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type SingleResultCallHistoryModel and conformance SingleResultCallHistoryModel(&lazy protocol witness table cache variable for type SingleResultCallHistoryModel and conformance SingleResultCallHistoryModel, type metadata accessor for SingleResultCallHistoryModel, &protocol conformance descriptor for SingleResultCallHistoryModel);
      v66 = v176;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v133 + 8))(v65, v66);
      v56 = type metadata accessor for SingleResultCallHistoryModel;
      goto LABEL_17;
    default:
      v43 = outlined init with take of SingleResultCallHistoryModel(v34, v31, type metadata accessor for YesNoConfirmationModel);
      LOBYTE(v182) = 0;
      lazy protocol witness table accessor for type PhoneSnippetDataModels.AppConfirmationCodingKeys and conformance PhoneSnippetDataModels.AppConfirmationCodingKeys(v43, v44, v45);
      v46 = v134;
      v48 = v180;
      v47 = v181;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type SingleResultCallHistoryModel and conformance SingleResultCallHistoryModel(&lazy protocol witness table cache variable for type YesNoConfirmationModel and conformance YesNoConfirmationModel, type metadata accessor for YesNoConfirmationModel, &protocol conformance descriptor for YesNoConfirmationModel);
      v49 = v138;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v50 = &v168;
LABEL_16:
      (*(*(v50 - 32) + 8))(v46, v49);
      v56 = type metadata accessor for YesNoConfirmationModel;
LABEL_17:
      v77 = v56;
      v78 = v31;
LABEL_18:
      outlined destroy of PhoneSnippetDataModels(v78, v77);
      return (*(v178 + 8))(v48, v47);
  }
}

uint64_t PhoneSnippetDataModels.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v184 = a2;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14PhoneSnippetUI0dE10DataModelsO33SingleCallHistoryRecordCodingKeys33_374FEEA39292D60DBDB1F10CD6A31427LLOGMd, &_ss22KeyedDecodingContainerVy14PhoneSnippetUI0dE10DataModelsO33SingleCallHistoryRecordCodingKeys33_374FEEA39292D60DBDB1F10CD6A31427LLOGMR);
  v167 = *(v164 - 8);
  MEMORY[0x28223BE20](v164);
  v178 = &v128 - v3;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14PhoneSnippetUI0dE10DataModelsO25SingleVoicemailCodingKeys33_374FEEA39292D60DBDB1F10CD6A31427LLOGMd, &_ss22KeyedDecodingContainerVy14PhoneSnippetUI0dE10DataModelsO25SingleVoicemailCodingKeys33_374FEEA39292D60DBDB1F10CD6A31427LLOGMR);
  v165 = *(v166 - 8);
  MEMORY[0x28223BE20](v166);
  v182 = &v128 - v4;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14PhoneSnippetUI0dE10DataModelsO27PlayVoicemailListCodingKeys33_374FEEA39292D60DBDB1F10CD6A31427LLOGMd, &_ss22KeyedDecodingContainerVy14PhoneSnippetUI0dE10DataModelsO27PlayVoicemailListCodingKeys33_374FEEA39292D60DBDB1F10CD6A31427LLOGMR);
  v162 = *(v163 - 8);
  MEMORY[0x28223BE20](v163);
  v177 = &v128 - v5;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14PhoneSnippetUI0dE10DataModelsO25CallHistoryListCodingKeys33_374FEEA39292D60DBDB1F10CD6A31427LLOGMd, &_ss22KeyedDecodingContainerVy14PhoneSnippetUI0dE10DataModelsO25CallHistoryListCodingKeys33_374FEEA39292D60DBDB1F10CD6A31427LLOGMR);
  v160 = *(v161 - 8);
  MEMORY[0x28223BE20](v161);
  v176 = &v128 - v6;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14PhoneSnippetUI0dE10DataModelsO34YesNoConfirmationCarPlayCodingKeys33_374FEEA39292D60DBDB1F10CD6A31427LLOGMd, &_ss22KeyedDecodingContainerVy14PhoneSnippetUI0dE10DataModelsO34YesNoConfirmationCarPlayCodingKeys33_374FEEA39292D60DBDB1F10CD6A31427LLOGMR);
  v158 = *(v159 - 8);
  MEMORY[0x28223BE20](v159);
  v175 = &v128 - v7;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14PhoneSnippetUI0dE10DataModelsO27YesNoConfirmationCodingKeys33_374FEEA39292D60DBDB1F10CD6A31427LLOGMd, &_ss22KeyedDecodingContainerVy14PhoneSnippetUI0dE10DataModelsO27YesNoConfirmationCodingKeys33_374FEEA39292D60DBDB1F10CD6A31427LLOGMR);
  v156 = *(v157 - 8);
  MEMORY[0x28223BE20](v157);
  v174 = &v128 - v8;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14PhoneSnippetUI0dE10DataModelsO24StackedButtonsCodingKeys33_374FEEA39292D60DBDB1F10CD6A31427LLOGMd, &_ss22KeyedDecodingContainerVy14PhoneSnippetUI0dE10DataModelsO24StackedButtonsCodingKeys33_374FEEA39292D60DBDB1F10CD6A31427LLOGMR);
  v154 = *(v155 - 8);
  MEMORY[0x28223BE20](v155);
  v173 = &v128 - v9;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14PhoneSnippetUI0dE10DataModelsO42LocalEmergencyCallDisambiguationCodingKeys33_374FEEA39292D60DBDB1F10CD6A31427LLOGMd, &_ss22KeyedDecodingContainerVy14PhoneSnippetUI0dE10DataModelsO42LocalEmergencyCallDisambiguationCodingKeys33_374FEEA39292D60DBDB1F10CD6A31427LLOGMR);
  v152 = *(v153 - 8);
  MEMORY[0x28223BE20](v153);
  v172 = &v128 - v10;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14PhoneSnippetUI0dE10DataModelsO44ForeignEmergencyCallDisambiguationCodingKeys33_374FEEA39292D60DBDB1F10CD6A31427LLOGMd, &_ss22KeyedDecodingContainerVy14PhoneSnippetUI0dE10DataModelsO44ForeignEmergencyCallDisambiguationCodingKeys33_374FEEA39292D60DBDB1F10CD6A31427LLOGMR);
  v150 = *(v151 - 8);
  MEMORY[0x28223BE20](v151);
  v171 = &v128 - v11;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14PhoneSnippetUI0dE10DataModelsO28EmergencyCountdownCodingKeys33_374FEEA39292D60DBDB1F10CD6A31427LLOGMd, &_ss22KeyedDecodingContainerVy14PhoneSnippetUI0dE10DataModelsO28EmergencyCountdownCodingKeys33_374FEEA39292D60DBDB1F10CD6A31427LLOGMR);
  v148 = *(v149 - 8);
  MEMORY[0x28223BE20](v149);
  v181 = &v128 - v12;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14PhoneSnippetUI0dE10DataModelsO29ContactConfirmationCodingKeys33_374FEEA39292D60DBDB1F10CD6A31427LLOGMd, &_ss22KeyedDecodingContainerVy14PhoneSnippetUI0dE10DataModelsO29ContactConfirmationCodingKeys33_374FEEA39292D60DBDB1F10CD6A31427LLOGMR);
  v147 = *(v146 - 8);
  MEMORY[0x28223BE20](v146);
  v170 = &v128 - v13;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14PhoneSnippetUI0dE10DataModelsO27AppDisambiguationCodingKeys33_374FEEA39292D60DBDB1F10CD6A31427LLOGMd, &_ss22KeyedDecodingContainerVy14PhoneSnippetUI0dE10DataModelsO27AppDisambiguationCodingKeys33_374FEEA39292D60DBDB1F10CD6A31427LLOGMR);
  v180 = *(v145 - 8);
  MEMORY[0x28223BE20](v145);
  v169 = &v128 - v14;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14PhoneSnippetUI0dE10DataModelsO25AppConfirmationCodingKeys33_374FEEA39292D60DBDB1F10CD6A31427LLOGMd, &_ss22KeyedDecodingContainerVy14PhoneSnippetUI0dE10DataModelsO25AppConfirmationCodingKeys33_374FEEA39292D60DBDB1F10CD6A31427LLOGMR);
  v143 = *(v144 - 8);
  MEMORY[0x28223BE20](v144);
  v168 = &v128 - v15;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14PhoneSnippetUI0dE10DataModelsO10CodingKeys33_374FEEA39292D60DBDB1F10CD6A31427LLOGMd, &_ss22KeyedDecodingContainerVy14PhoneSnippetUI0dE10DataModelsO10CodingKeys33_374FEEA39292D60DBDB1F10CD6A31427LLOGMR);
  v183 = *(v179 - 8);
  MEMORY[0x28223BE20](v179);
  v17 = &v128 - v16;
  v185 = type metadata accessor for PhoneSnippetDataModels(0);
  v18 = MEMORY[0x28223BE20](v185);
  v142 = &v128 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v141 = &v128 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v140 = &v128 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v139 = &v128 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v138 = &v128 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v137 = &v128 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v134 = (&v128 - v31);
  v32 = MEMORY[0x28223BE20](v30);
  v136 = &v128 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v135 = &v128 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v38 = &v128 - v37;
  v39 = MEMORY[0x28223BE20](v36);
  v41 = &v128 - v40;
  v42 = MEMORY[0x28223BE20](v39);
  v44 = &v128 - v43;
  v45 = MEMORY[0x28223BE20](v42);
  v47 = &v128 - v46;
  MEMORY[0x28223BE20](v45);
  v49 = &v128 - v48;
  v50 = a1[3];
  v190 = a1;
  v51 = __swift_project_boxed_opaque_existential_1(a1, v50);
  lazy protocol witness table accessor for type PhoneSnippetDataModels.CodingKeys and conformance PhoneSnippetDataModels.CodingKeys(v51, v52, v53);
  v186 = v17;
  v54 = v187;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v54)
  {
LABEL_34:
    v79 = v190;
    return __swift_destroy_boxed_opaque_existential_0(v79);
  }

  v129 = v44;
  v130 = v47;
  v131 = v41;
  v132 = v38;
  v56 = v180;
  v55 = v181;
  v57 = v182;
  v187 = 0;
  v133 = v49;
  v58 = v184;
  v59 = v179;
  v60 = KeyedDecodingContainer.allKeys.getter();
  if (*(v60 + 16) != 1 || *(v60 + 32) == 13)
  {
    v66 = type metadata accessor for DecodingError();
    swift_allocError();
    v68 = v67;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
    v69 = v186;
    *v68 = v185;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v66 - 8) + 104))(v68, *MEMORY[0x277D84160], v66);
    swift_willThrow();
    (*(v183 + 8))(v69, v59);
LABEL_33:
    swift_unknownObjectRelease();
    goto LABEL_34;
  }

  switch(*(v60 + 32))
  {
    case 1:
      LOBYTE(v188) = 1;
      lazy protocol witness table accessor for type PhoneSnippetDataModels.AppDisambiguationCodingKeys and conformance PhoneSnippetDataModels.AppDisambiguationCodingKeys(v60, v61, v62);
      v94 = v169;
      v95 = v186;
      v96 = v187;
      v97 = KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v96)
      {
        (*(v183 + 8))(v95, v59);
        swift_unknownObjectRelease();
        v79 = v190;
        return __swift_destroy_boxed_opaque_existential_0(v79);
      }

      lazy protocol witness table accessor for type AppDisambiguationModel and conformance AppDisambiguationModel(v97, v98, v99);
      v121 = v145;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v122 = v183;
      v187 = 0;
      (*(v56 + 8))(v94, v121);
      (*(v122 + 8))(v186, v59);
      swift_unknownObjectRelease();
      v127 = v129;
      *v129 = v188;
      *(v127 + 1) = v189;
      goto LABEL_39;
    case 2:
      LOBYTE(v188) = 2;
      lazy protocol witness table accessor for type PhoneSnippetDataModels.ContactConfirmationCodingKeys and conformance PhoneSnippetDataModels.ContactConfirmationCodingKeys(v60, v61, v62);
      v83 = v170;
      v71 = v186;
      v84 = v187;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v84)
      {
        goto LABEL_32;
      }

      type metadata accessor for YesNoConfirmationModel(0);
      lazy protocol witness table accessor for type SingleResultCallHistoryModel and conformance SingleResultCallHistoryModel(&lazy protocol witness table cache variable for type YesNoConfirmationModel and conformance YesNoConfirmationModel, type metadata accessor for YesNoConfirmationModel, &protocol conformance descriptor for YesNoConfirmationModel);
      v85 = v131;
      v86 = v146;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v187 = 0;
      (*(v147 + 8))(v83, v86);
      (*(v183 + 8))(v71, v59);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v123 = v85;
      goto LABEL_41;
    case 3:
      LOBYTE(v188) = 3;
      lazy protocol witness table accessor for type PhoneSnippetDataModels.EmergencyCountdownCodingKeys and conformance PhoneSnippetDataModels.EmergencyCountdownCodingKeys(v60, v61, v62);
      v87 = v55;
      v71 = v186;
      v88 = v187;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v88)
      {
        goto LABEL_32;
      }

      type metadata accessor for EmergencyCountdownModel(0);
      lazy protocol witness table accessor for type SingleResultCallHistoryModel and conformance SingleResultCallHistoryModel(&lazy protocol witness table cache variable for type EmergencyCountdownModel and conformance EmergencyCountdownModel, type metadata accessor for EmergencyCountdownModel, &protocol conformance descriptor for EmergencyCountdownModel);
      v89 = v132;
      v90 = v149;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v187 = 0;
      (*(v148 + 8))(v87, v90);
      (*(v183 + 8))(v71, v59);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v124 = v133;
      outlined init with take of SingleResultCallHistoryModel(v89, v133, type metadata accessor for PhoneSnippetDataModels);
      v125 = v190;
      v58 = v184;
      goto LABEL_42;
    case 4:
      LOBYTE(v188) = 4;
      lazy protocol witness table accessor for type PhoneSnippetDataModels.ForeignEmergencyCallDisambiguationCodingKeys and conformance PhoneSnippetDataModels.ForeignEmergencyCallDisambiguationCodingKeys(v60, v61, v62);
      v74 = v171;
      v71 = v186;
      v75 = v187;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v75)
      {
        goto LABEL_32;
      }

      type metadata accessor for ForeignEmergencyCallDisambiguationModel(0);
      lazy protocol witness table accessor for type SingleResultCallHistoryModel and conformance SingleResultCallHistoryModel(&lazy protocol witness table cache variable for type ForeignEmergencyCallDisambiguationModel and conformance ForeignEmergencyCallDisambiguationModel, type metadata accessor for ForeignEmergencyCallDisambiguationModel, &protocol conformance descriptor for ForeignEmergencyCallDisambiguationModel);
      v72 = v135;
      v76 = v151;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v187 = 0;
      (*(v150 + 8))(v74, v76);
      (*(v183 + 8))(v71, v59);
      swift_unknownObjectRelease();
      goto LABEL_40;
    case 5:
      LOBYTE(v188) = 5;
      lazy protocol witness table accessor for type PhoneSnippetDataModels.LocalEmergencyCallDisambiguationCodingKeys and conformance PhoneSnippetDataModels.LocalEmergencyCallDisambiguationCodingKeys(v60, v61, v62);
      v100 = v172;
      v71 = v186;
      v101 = v187;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v101)
      {
        goto LABEL_32;
      }

      type metadata accessor for LocalEmergencyCallDisambiguationModel(0);
      lazy protocol witness table accessor for type SingleResultCallHistoryModel and conformance SingleResultCallHistoryModel(&lazy protocol witness table cache variable for type LocalEmergencyCallDisambiguationModel and conformance LocalEmergencyCallDisambiguationModel, type metadata accessor for LocalEmergencyCallDisambiguationModel, &protocol conformance descriptor for LocalEmergencyCallDisambiguationModel);
      v72 = v136;
      v102 = v153;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v187 = 0;
      (*(v152 + 8))(v100, v102);
      (*(v183 + 8))(v71, v59);
      swift_unknownObjectRelease();
      goto LABEL_40;
    case 6:
      LOBYTE(v188) = 6;
      lazy protocol witness table accessor for type PhoneSnippetDataModels.StackedButtonsCodingKeys and conformance PhoneSnippetDataModels.StackedButtonsCodingKeys(v60, v61, v62);
      v103 = v173;
      v71 = v186;
      v104 = v187;
      v105 = KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v104)
      {
        goto LABEL_32;
      }

      lazy protocol witness table accessor for type StackedButtonsModel and conformance StackedButtonsModel(v105, v106, v107);
      v108 = v155;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v109 = v183;
      v187 = 0;
      (*(v154 + 8))(v103, v108);
      (*(v109 + 8))(v71, v59);
      swift_unknownObjectRelease();
      v126 = v189;
      v127 = v134;
      *v134 = v188;
      *(v127 + 8) = v126;
LABEL_39:
      swift_storeEnumTagMultiPayload();
      v123 = v127;
      goto LABEL_41;
    case 7:
      LOBYTE(v188) = 7;
      lazy protocol witness table accessor for type PhoneSnippetDataModels.YesNoConfirmationCodingKeys and conformance PhoneSnippetDataModels.YesNoConfirmationCodingKeys(v60, v61, v62);
      v91 = v174;
      v71 = v186;
      v92 = v187;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v92)
      {
        goto LABEL_32;
      }

      type metadata accessor for YesNoConfirmationModel(0);
      lazy protocol witness table accessor for type SingleResultCallHistoryModel and conformance SingleResultCallHistoryModel(&lazy protocol witness table cache variable for type YesNoConfirmationModel and conformance YesNoConfirmationModel, type metadata accessor for YesNoConfirmationModel, &protocol conformance descriptor for YesNoConfirmationModel);
      v72 = v137;
      v93 = v157;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v187 = 0;
      (*(v156 + 8))(v91, v93);
      (*(v183 + 8))(v71, v59);
      swift_unknownObjectRelease();
      goto LABEL_40;
    case 8:
      LOBYTE(v188) = 8;
      lazy protocol witness table accessor for type PhoneSnippetDataModels.YesNoConfirmationCarPlayCodingKeys and conformance PhoneSnippetDataModels.YesNoConfirmationCarPlayCodingKeys(v60, v61, v62);
      v113 = v175;
      v71 = v186;
      v114 = v187;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v114)
      {
        goto LABEL_32;
      }

      type metadata accessor for YesNoConfirmationModel(0);
      lazy protocol witness table accessor for type SingleResultCallHistoryModel and conformance SingleResultCallHistoryModel(&lazy protocol witness table cache variable for type YesNoConfirmationModel and conformance YesNoConfirmationModel, type metadata accessor for YesNoConfirmationModel, &protocol conformance descriptor for YesNoConfirmationModel);
      v72 = v138;
      v115 = v159;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v187 = 0;
      (*(v158 + 8))(v113, v115);
      (*(v183 + 8))(v71, v59);
      swift_unknownObjectRelease();
      goto LABEL_40;
    case 9:
      LOBYTE(v188) = 9;
      lazy protocol witness table accessor for type PhoneSnippetDataModels.CallHistoryListCodingKeys and conformance PhoneSnippetDataModels.CallHistoryListCodingKeys(v60, v61, v62);
      v80 = v176;
      v71 = v186;
      v81 = v187;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v81)
      {
        goto LABEL_32;
      }

      type metadata accessor for SearchCallHistoryModel(0);
      lazy protocol witness table accessor for type SingleResultCallHistoryModel and conformance SingleResultCallHistoryModel(&lazy protocol witness table cache variable for type SearchCallHistoryModel and conformance SearchCallHistoryModel, type metadata accessor for SearchCallHistoryModel, &protocol conformance descriptor for SearchCallHistoryModel);
      v72 = v139;
      v82 = v161;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v187 = 0;
      (*(v160 + 8))(v80, v82);
      (*(v183 + 8))(v71, v59);
      swift_unknownObjectRelease();
      goto LABEL_40;
    case 0xA:
      LOBYTE(v188) = 10;
      lazy protocol witness table accessor for type PhoneSnippetDataModels.PlayVoicemailListCodingKeys and conformance PhoneSnippetDataModels.PlayVoicemailListCodingKeys(v60, v61, v62);
      v110 = v177;
      v71 = v186;
      v111 = v187;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v111)
      {
        goto LABEL_32;
      }

      type metadata accessor for PlayVoicemailModel(0);
      lazy protocol witness table accessor for type SingleResultCallHistoryModel and conformance SingleResultCallHistoryModel(&lazy protocol witness table cache variable for type PlayVoicemailModel and conformance PlayVoicemailModel, type metadata accessor for PlayVoicemailModel, &protocol conformance descriptor for PlayVoicemailModel);
      v72 = v140;
      v112 = v163;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v187 = 0;
      (*(v162 + 8))(v110, v112);
      (*(v183 + 8))(v71, v59);
      swift_unknownObjectRelease();
      goto LABEL_40;
    case 0xB:
      LOBYTE(v188) = 11;
      lazy protocol witness table accessor for type PhoneSnippetDataModels.SingleVoicemailCodingKeys and conformance PhoneSnippetDataModels.SingleVoicemailCodingKeys(v60, v61, v62);
      v71 = v186;
      v70 = v187;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (!v70)
      {
        type metadata accessor for SingleResultVoicemailModel(0);
        lazy protocol witness table accessor for type SingleResultCallHistoryModel and conformance SingleResultCallHistoryModel(&lazy protocol witness table cache variable for type SingleResultVoicemailModel and conformance SingleResultVoicemailModel, type metadata accessor for SingleResultVoicemailModel, &protocol conformance descriptor for SingleResultVoicemailModel);
        v72 = v141;
        v73 = v166;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v187 = 0;
        (*(v165 + 8))(v57, v73);
        (*(v183 + 8))(v71, v59);
        swift_unknownObjectRelease();
        goto LABEL_40;
      }

LABEL_32:
      (*(v183 + 8))(v71, v59);
      goto LABEL_33;
    case 0xC:
      LOBYTE(v188) = 12;
      lazy protocol witness table accessor for type PhoneSnippetDataModels.SingleCallHistoryRecordCodingKeys and conformance PhoneSnippetDataModels.SingleCallHistoryRecordCodingKeys(v60, v61, v62);
      v78 = v186;
      v77 = v187;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v77)
      {
        (*(v183 + 8))(v78, v59);
        swift_unknownObjectRelease();
        v79 = v190;
        return __swift_destroy_boxed_opaque_existential_0(v79);
      }

      type metadata accessor for SingleResultCallHistoryModel(0);
      lazy protocol witness table accessor for type SingleResultCallHistoryModel and conformance SingleResultCallHistoryModel(&lazy protocol witness table cache variable for type SingleResultCallHistoryModel and conformance SingleResultCallHistoryModel, type metadata accessor for SingleResultCallHistoryModel, &protocol conformance descriptor for SingleResultCallHistoryModel);
      v72 = v142;
      v117 = v164;
      v118 = v178;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v187 = 0;
      (*(v167 + 8))(v118, v117);
      (*(v183 + 8))(v78, v59);
      swift_unknownObjectRelease();
LABEL_40:
      swift_storeEnumTagMultiPayload();
      v123 = v72;
LABEL_41:
      v124 = v133;
      outlined init with take of SingleResultCallHistoryModel(v123, v133, type metadata accessor for PhoneSnippetDataModels);
      v125 = v190;
      goto LABEL_42;
    default:
      LOBYTE(v188) = 0;
      lazy protocol witness table accessor for type PhoneSnippetDataModels.AppConfirmationCodingKeys and conformance PhoneSnippetDataModels.AppConfirmationCodingKeys(v60, v61, v62);
      v63 = v168;
      v65 = v186;
      v64 = v187;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v64)
      {
        (*(v183 + 8))(v65, v59);
        goto LABEL_33;
      }

      type metadata accessor for YesNoConfirmationModel(0);
      lazy protocol witness table accessor for type SingleResultCallHistoryModel and conformance SingleResultCallHistoryModel(&lazy protocol witness table cache variable for type YesNoConfirmationModel and conformance YesNoConfirmationModel, type metadata accessor for YesNoConfirmationModel, &protocol conformance descriptor for YesNoConfirmationModel);
      v119 = v130;
      v120 = v144;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v143 + 8))(v63, v120);
      (*(v183 + 8))(v65, v59);
      swift_unknownObjectRelease();
      v187 = 0;
      v125 = v190;
      swift_storeEnumTagMultiPayload();
      v124 = v133;
      outlined init with take of SingleResultCallHistoryModel(v119, v133, type metadata accessor for PhoneSnippetDataModels);
LABEL_42:
      outlined init with take of SingleResultCallHistoryModel(v124, v58, type metadata accessor for PhoneSnippetDataModels);
      result = __swift_destroy_boxed_opaque_existential_0(v125);
      break;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PhoneSnippetDataModels.CodingKeys and conformance PhoneSnippetDataModels.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.CodingKeys and conformance PhoneSnippetDataModels.CodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.CodingKeys and conformance PhoneSnippetDataModels.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.CodingKeys and conformance PhoneSnippetDataModels.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.CodingKeys and conformance PhoneSnippetDataModels.CodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.CodingKeys and conformance PhoneSnippetDataModels.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.CodingKeys and conformance PhoneSnippetDataModels.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.CodingKeys and conformance PhoneSnippetDataModels.CodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.CodingKeys and conformance PhoneSnippetDataModels.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.CodingKeys and conformance PhoneSnippetDataModels.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.CodingKeys and conformance PhoneSnippetDataModels.CodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.CodingKeys and conformance PhoneSnippetDataModels.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.CodingKeys and conformance PhoneSnippetDataModels.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PhoneSnippetDataModels.SingleCallHistoryRecordCodingKeys and conformance PhoneSnippetDataModels.SingleCallHistoryRecordCodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.SingleCallHistoryRecordCodingKeys and conformance PhoneSnippetDataModels.SingleCallHistoryRecordCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.SingleCallHistoryRecordCodingKeys and conformance PhoneSnippetDataModels.SingleCallHistoryRecordCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.SingleCallHistoryRecordCodingKeys and conformance PhoneSnippetDataModels.SingleCallHistoryRecordCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.SingleCallHistoryRecordCodingKeys and conformance PhoneSnippetDataModels.SingleCallHistoryRecordCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.SingleCallHistoryRecordCodingKeys and conformance PhoneSnippetDataModels.SingleCallHistoryRecordCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.SingleCallHistoryRecordCodingKeys and conformance PhoneSnippetDataModels.SingleCallHistoryRecordCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.SingleCallHistoryRecordCodingKeys and conformance PhoneSnippetDataModels.SingleCallHistoryRecordCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.SingleCallHistoryRecordCodingKeys and conformance PhoneSnippetDataModels.SingleCallHistoryRecordCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.SingleCallHistoryRecordCodingKeys and conformance PhoneSnippetDataModels.SingleCallHistoryRecordCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.SingleCallHistoryRecordCodingKeys and conformance PhoneSnippetDataModels.SingleCallHistoryRecordCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.SingleCallHistoryRecordCodingKeys and conformance PhoneSnippetDataModels.SingleCallHistoryRecordCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.SingleCallHistoryRecordCodingKeys and conformance PhoneSnippetDataModels.SingleCallHistoryRecordCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PhoneSnippetDataModels.SingleVoicemailCodingKeys and conformance PhoneSnippetDataModels.SingleVoicemailCodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.SingleVoicemailCodingKeys and conformance PhoneSnippetDataModels.SingleVoicemailCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.SingleVoicemailCodingKeys and conformance PhoneSnippetDataModels.SingleVoicemailCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.SingleVoicemailCodingKeys and conformance PhoneSnippetDataModels.SingleVoicemailCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.SingleVoicemailCodingKeys and conformance PhoneSnippetDataModels.SingleVoicemailCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.SingleVoicemailCodingKeys and conformance PhoneSnippetDataModels.SingleVoicemailCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.SingleVoicemailCodingKeys and conformance PhoneSnippetDataModels.SingleVoicemailCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.SingleVoicemailCodingKeys and conformance PhoneSnippetDataModels.SingleVoicemailCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.SingleVoicemailCodingKeys and conformance PhoneSnippetDataModels.SingleVoicemailCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.SingleVoicemailCodingKeys and conformance PhoneSnippetDataModels.SingleVoicemailCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.SingleVoicemailCodingKeys and conformance PhoneSnippetDataModels.SingleVoicemailCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.SingleVoicemailCodingKeys and conformance PhoneSnippetDataModels.SingleVoicemailCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.SingleVoicemailCodingKeys and conformance PhoneSnippetDataModels.SingleVoicemailCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PhoneSnippetDataModels.PlayVoicemailListCodingKeys and conformance PhoneSnippetDataModels.PlayVoicemailListCodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.PlayVoicemailListCodingKeys and conformance PhoneSnippetDataModels.PlayVoicemailListCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.PlayVoicemailListCodingKeys and conformance PhoneSnippetDataModels.PlayVoicemailListCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.PlayVoicemailListCodingKeys and conformance PhoneSnippetDataModels.PlayVoicemailListCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.PlayVoicemailListCodingKeys and conformance PhoneSnippetDataModels.PlayVoicemailListCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.PlayVoicemailListCodingKeys and conformance PhoneSnippetDataModels.PlayVoicemailListCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.PlayVoicemailListCodingKeys and conformance PhoneSnippetDataModels.PlayVoicemailListCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.PlayVoicemailListCodingKeys and conformance PhoneSnippetDataModels.PlayVoicemailListCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.PlayVoicemailListCodingKeys and conformance PhoneSnippetDataModels.PlayVoicemailListCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.PlayVoicemailListCodingKeys and conformance PhoneSnippetDataModels.PlayVoicemailListCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.PlayVoicemailListCodingKeys and conformance PhoneSnippetDataModels.PlayVoicemailListCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.PlayVoicemailListCodingKeys and conformance PhoneSnippetDataModels.PlayVoicemailListCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.PlayVoicemailListCodingKeys and conformance PhoneSnippetDataModels.PlayVoicemailListCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PhoneSnippetDataModels.CallHistoryListCodingKeys and conformance PhoneSnippetDataModels.CallHistoryListCodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.CallHistoryListCodingKeys and conformance PhoneSnippetDataModels.CallHistoryListCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.CallHistoryListCodingKeys and conformance PhoneSnippetDataModels.CallHistoryListCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.CallHistoryListCodingKeys and conformance PhoneSnippetDataModels.CallHistoryListCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.CallHistoryListCodingKeys and conformance PhoneSnippetDataModels.CallHistoryListCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.CallHistoryListCodingKeys and conformance PhoneSnippetDataModels.CallHistoryListCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.CallHistoryListCodingKeys and conformance PhoneSnippetDataModels.CallHistoryListCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.CallHistoryListCodingKeys and conformance PhoneSnippetDataModels.CallHistoryListCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.CallHistoryListCodingKeys and conformance PhoneSnippetDataModels.CallHistoryListCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.CallHistoryListCodingKeys and conformance PhoneSnippetDataModels.CallHistoryListCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.CallHistoryListCodingKeys and conformance PhoneSnippetDataModels.CallHistoryListCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.CallHistoryListCodingKeys and conformance PhoneSnippetDataModels.CallHistoryListCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.CallHistoryListCodingKeys and conformance PhoneSnippetDataModels.CallHistoryListCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PhoneSnippetDataModels.YesNoConfirmationCarPlayCodingKeys and conformance PhoneSnippetDataModels.YesNoConfirmationCarPlayCodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.YesNoConfirmationCarPlayCodingKeys and conformance PhoneSnippetDataModels.YesNoConfirmationCarPlayCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.YesNoConfirmationCarPlayCodingKeys and conformance PhoneSnippetDataModels.YesNoConfirmationCarPlayCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.YesNoConfirmationCarPlayCodingKeys and conformance PhoneSnippetDataModels.YesNoConfirmationCarPlayCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.YesNoConfirmationCarPlayCodingKeys and conformance PhoneSnippetDataModels.YesNoConfirmationCarPlayCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.YesNoConfirmationCarPlayCodingKeys and conformance PhoneSnippetDataModels.YesNoConfirmationCarPlayCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.YesNoConfirmationCarPlayCodingKeys and conformance PhoneSnippetDataModels.YesNoConfirmationCarPlayCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.YesNoConfirmationCarPlayCodingKeys and conformance PhoneSnippetDataModels.YesNoConfirmationCarPlayCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.YesNoConfirmationCarPlayCodingKeys and conformance PhoneSnippetDataModels.YesNoConfirmationCarPlayCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.YesNoConfirmationCarPlayCodingKeys and conformance PhoneSnippetDataModels.YesNoConfirmationCarPlayCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.YesNoConfirmationCarPlayCodingKeys and conformance PhoneSnippetDataModels.YesNoConfirmationCarPlayCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.YesNoConfirmationCarPlayCodingKeys and conformance PhoneSnippetDataModels.YesNoConfirmationCarPlayCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.YesNoConfirmationCarPlayCodingKeys and conformance PhoneSnippetDataModels.YesNoConfirmationCarPlayCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PhoneSnippetDataModels.YesNoConfirmationCodingKeys and conformance PhoneSnippetDataModels.YesNoConfirmationCodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.YesNoConfirmationCodingKeys and conformance PhoneSnippetDataModels.YesNoConfirmationCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.YesNoConfirmationCodingKeys and conformance PhoneSnippetDataModels.YesNoConfirmationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.YesNoConfirmationCodingKeys and conformance PhoneSnippetDataModels.YesNoConfirmationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.YesNoConfirmationCodingKeys and conformance PhoneSnippetDataModels.YesNoConfirmationCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.YesNoConfirmationCodingKeys and conformance PhoneSnippetDataModels.YesNoConfirmationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.YesNoConfirmationCodingKeys and conformance PhoneSnippetDataModels.YesNoConfirmationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.YesNoConfirmationCodingKeys and conformance PhoneSnippetDataModels.YesNoConfirmationCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.YesNoConfirmationCodingKeys and conformance PhoneSnippetDataModels.YesNoConfirmationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.YesNoConfirmationCodingKeys and conformance PhoneSnippetDataModels.YesNoConfirmationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.YesNoConfirmationCodingKeys and conformance PhoneSnippetDataModels.YesNoConfirmationCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.YesNoConfirmationCodingKeys and conformance PhoneSnippetDataModels.YesNoConfirmationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.YesNoConfirmationCodingKeys and conformance PhoneSnippetDataModels.YesNoConfirmationCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PhoneSnippetDataModels.StackedButtonsCodingKeys and conformance PhoneSnippetDataModels.StackedButtonsCodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.StackedButtonsCodingKeys and conformance PhoneSnippetDataModels.StackedButtonsCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.StackedButtonsCodingKeys and conformance PhoneSnippetDataModels.StackedButtonsCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.StackedButtonsCodingKeys and conformance PhoneSnippetDataModels.StackedButtonsCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.StackedButtonsCodingKeys and conformance PhoneSnippetDataModels.StackedButtonsCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.StackedButtonsCodingKeys and conformance PhoneSnippetDataModels.StackedButtonsCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.StackedButtonsCodingKeys and conformance PhoneSnippetDataModels.StackedButtonsCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.StackedButtonsCodingKeys and conformance PhoneSnippetDataModels.StackedButtonsCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.StackedButtonsCodingKeys and conformance PhoneSnippetDataModels.StackedButtonsCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.StackedButtonsCodingKeys and conformance PhoneSnippetDataModels.StackedButtonsCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.StackedButtonsCodingKeys and conformance PhoneSnippetDataModels.StackedButtonsCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.StackedButtonsCodingKeys and conformance PhoneSnippetDataModels.StackedButtonsCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.StackedButtonsCodingKeys and conformance PhoneSnippetDataModels.StackedButtonsCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StackedButtonsModel and conformance StackedButtonsModel(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type StackedButtonsModel and conformance StackedButtonsModel;
  if (!lazy protocol witness table cache variable for type StackedButtonsModel and conformance StackedButtonsModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StackedButtonsModel and conformance StackedButtonsModel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StackedButtonsModel and conformance StackedButtonsModel;
  if (!lazy protocol witness table cache variable for type StackedButtonsModel and conformance StackedButtonsModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StackedButtonsModel and conformance StackedButtonsModel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StackedButtonsModel and conformance StackedButtonsModel;
  if (!lazy protocol witness table cache variable for type StackedButtonsModel and conformance StackedButtonsModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StackedButtonsModel and conformance StackedButtonsModel);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PhoneSnippetDataModels.LocalEmergencyCallDisambiguationCodingKeys and conformance PhoneSnippetDataModels.LocalEmergencyCallDisambiguationCodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.LocalEmergencyCallDisambiguationCodingKeys and conformance PhoneSnippetDataModels.LocalEmergencyCallDisambiguationCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.LocalEmergencyCallDisambiguationCodingKeys and conformance PhoneSnippetDataModels.LocalEmergencyCallDisambiguationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.LocalEmergencyCallDisambiguationCodingKeys and conformance PhoneSnippetDataModels.LocalEmergencyCallDisambiguationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.LocalEmergencyCallDisambiguationCodingKeys and conformance PhoneSnippetDataModels.LocalEmergencyCallDisambiguationCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.LocalEmergencyCallDisambiguationCodingKeys and conformance PhoneSnippetDataModels.LocalEmergencyCallDisambiguationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.LocalEmergencyCallDisambiguationCodingKeys and conformance PhoneSnippetDataModels.LocalEmergencyCallDisambiguationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.LocalEmergencyCallDisambiguationCodingKeys and conformance PhoneSnippetDataModels.LocalEmergencyCallDisambiguationCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.LocalEmergencyCallDisambiguationCodingKeys and conformance PhoneSnippetDataModels.LocalEmergencyCallDisambiguationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.LocalEmergencyCallDisambiguationCodingKeys and conformance PhoneSnippetDataModels.LocalEmergencyCallDisambiguationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.LocalEmergencyCallDisambiguationCodingKeys and conformance PhoneSnippetDataModels.LocalEmergencyCallDisambiguationCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.LocalEmergencyCallDisambiguationCodingKeys and conformance PhoneSnippetDataModels.LocalEmergencyCallDisambiguationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.LocalEmergencyCallDisambiguationCodingKeys and conformance PhoneSnippetDataModels.LocalEmergencyCallDisambiguationCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PhoneSnippetDataModels.ForeignEmergencyCallDisambiguationCodingKeys and conformance PhoneSnippetDataModels.ForeignEmergencyCallDisambiguationCodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.ForeignEmergencyCallDisambiguationCodingKeys and conformance PhoneSnippetDataModels.ForeignEmergencyCallDisambiguationCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.ForeignEmergencyCallDisambiguationCodingKeys and conformance PhoneSnippetDataModels.ForeignEmergencyCallDisambiguationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.ForeignEmergencyCallDisambiguationCodingKeys and conformance PhoneSnippetDataModels.ForeignEmergencyCallDisambiguationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.ForeignEmergencyCallDisambiguationCodingKeys and conformance PhoneSnippetDataModels.ForeignEmergencyCallDisambiguationCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.ForeignEmergencyCallDisambiguationCodingKeys and conformance PhoneSnippetDataModels.ForeignEmergencyCallDisambiguationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.ForeignEmergencyCallDisambiguationCodingKeys and conformance PhoneSnippetDataModels.ForeignEmergencyCallDisambiguationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.ForeignEmergencyCallDisambiguationCodingKeys and conformance PhoneSnippetDataModels.ForeignEmergencyCallDisambiguationCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.ForeignEmergencyCallDisambiguationCodingKeys and conformance PhoneSnippetDataModels.ForeignEmergencyCallDisambiguationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.ForeignEmergencyCallDisambiguationCodingKeys and conformance PhoneSnippetDataModels.ForeignEmergencyCallDisambiguationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.ForeignEmergencyCallDisambiguationCodingKeys and conformance PhoneSnippetDataModels.ForeignEmergencyCallDisambiguationCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.ForeignEmergencyCallDisambiguationCodingKeys and conformance PhoneSnippetDataModels.ForeignEmergencyCallDisambiguationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.ForeignEmergencyCallDisambiguationCodingKeys and conformance PhoneSnippetDataModels.ForeignEmergencyCallDisambiguationCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PhoneSnippetDataModels.EmergencyCountdownCodingKeys and conformance PhoneSnippetDataModels.EmergencyCountdownCodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.EmergencyCountdownCodingKeys and conformance PhoneSnippetDataModels.EmergencyCountdownCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.EmergencyCountdownCodingKeys and conformance PhoneSnippetDataModels.EmergencyCountdownCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.EmergencyCountdownCodingKeys and conformance PhoneSnippetDataModels.EmergencyCountdownCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.EmergencyCountdownCodingKeys and conformance PhoneSnippetDataModels.EmergencyCountdownCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.EmergencyCountdownCodingKeys and conformance PhoneSnippetDataModels.EmergencyCountdownCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.EmergencyCountdownCodingKeys and conformance PhoneSnippetDataModels.EmergencyCountdownCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.EmergencyCountdownCodingKeys and conformance PhoneSnippetDataModels.EmergencyCountdownCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.EmergencyCountdownCodingKeys and conformance PhoneSnippetDataModels.EmergencyCountdownCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.EmergencyCountdownCodingKeys and conformance PhoneSnippetDataModels.EmergencyCountdownCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.EmergencyCountdownCodingKeys and conformance PhoneSnippetDataModels.EmergencyCountdownCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.EmergencyCountdownCodingKeys and conformance PhoneSnippetDataModels.EmergencyCountdownCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.EmergencyCountdownCodingKeys and conformance PhoneSnippetDataModels.EmergencyCountdownCodingKeys);
  }

  return result;
}

uint64_t outlined destroy of PhoneSnippetDataModels(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type PhoneSnippetDataModels.ContactConfirmationCodingKeys and conformance PhoneSnippetDataModels.ContactConfirmationCodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.ContactConfirmationCodingKeys and conformance PhoneSnippetDataModels.ContactConfirmationCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.ContactConfirmationCodingKeys and conformance PhoneSnippetDataModels.ContactConfirmationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.ContactConfirmationCodingKeys and conformance PhoneSnippetDataModels.ContactConfirmationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.ContactConfirmationCodingKeys and conformance PhoneSnippetDataModels.ContactConfirmationCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.ContactConfirmationCodingKeys and conformance PhoneSnippetDataModels.ContactConfirmationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.ContactConfirmationCodingKeys and conformance PhoneSnippetDataModels.ContactConfirmationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.ContactConfirmationCodingKeys and conformance PhoneSnippetDataModels.ContactConfirmationCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.ContactConfirmationCodingKeys and conformance PhoneSnippetDataModels.ContactConfirmationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.ContactConfirmationCodingKeys and conformance PhoneSnippetDataModels.ContactConfirmationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.ContactConfirmationCodingKeys and conformance PhoneSnippetDataModels.ContactConfirmationCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.ContactConfirmationCodingKeys and conformance PhoneSnippetDataModels.ContactConfirmationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.ContactConfirmationCodingKeys and conformance PhoneSnippetDataModels.ContactConfirmationCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PhoneSnippetDataModels.AppDisambiguationCodingKeys and conformance PhoneSnippetDataModels.AppDisambiguationCodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.AppDisambiguationCodingKeys and conformance PhoneSnippetDataModels.AppDisambiguationCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.AppDisambiguationCodingKeys and conformance PhoneSnippetDataModels.AppDisambiguationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.AppDisambiguationCodingKeys and conformance PhoneSnippetDataModels.AppDisambiguationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.AppDisambiguationCodingKeys and conformance PhoneSnippetDataModels.AppDisambiguationCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.AppDisambiguationCodingKeys and conformance PhoneSnippetDataModels.AppDisambiguationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.AppDisambiguationCodingKeys and conformance PhoneSnippetDataModels.AppDisambiguationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.AppDisambiguationCodingKeys and conformance PhoneSnippetDataModels.AppDisambiguationCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.AppDisambiguationCodingKeys and conformance PhoneSnippetDataModels.AppDisambiguationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.AppDisambiguationCodingKeys and conformance PhoneSnippetDataModels.AppDisambiguationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.AppDisambiguationCodingKeys and conformance PhoneSnippetDataModels.AppDisambiguationCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.AppDisambiguationCodingKeys and conformance PhoneSnippetDataModels.AppDisambiguationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.AppDisambiguationCodingKeys and conformance PhoneSnippetDataModels.AppDisambiguationCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PhoneSnippetDataModels.AppConfirmationCodingKeys and conformance PhoneSnippetDataModels.AppConfirmationCodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.AppConfirmationCodingKeys and conformance PhoneSnippetDataModels.AppConfirmationCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.AppConfirmationCodingKeys and conformance PhoneSnippetDataModels.AppConfirmationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.AppConfirmationCodingKeys and conformance PhoneSnippetDataModels.AppConfirmationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.AppConfirmationCodingKeys and conformance PhoneSnippetDataModels.AppConfirmationCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.AppConfirmationCodingKeys and conformance PhoneSnippetDataModels.AppConfirmationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.AppConfirmationCodingKeys and conformance PhoneSnippetDataModels.AppConfirmationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.AppConfirmationCodingKeys and conformance PhoneSnippetDataModels.AppConfirmationCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.AppConfirmationCodingKeys and conformance PhoneSnippetDataModels.AppConfirmationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.AppConfirmationCodingKeys and conformance PhoneSnippetDataModels.AppConfirmationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels.AppConfirmationCodingKeys and conformance PhoneSnippetDataModels.AppConfirmationCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels.AppConfirmationCodingKeys and conformance PhoneSnippetDataModels.AppConfirmationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels.AppConfirmationCodingKeys and conformance PhoneSnippetDataModels.AppConfirmationCodingKeys);
  }

  return result;
}

uint64_t outlined init with take of SingleResultCallHistoryModel(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t lazy protocol witness table accessor for type SingleResultCallHistoryModel and conformance SingleResultCallHistoryModel(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata completion function for PhoneSnippetDataModels(uint64_t a1)
{
  result = type metadata accessor for YesNoConfirmationModel(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for EmergencyCountdownModel(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for ForeignEmergencyCallDisambiguationModel(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for LocalEmergencyCallDisambiguationModel(319);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for SearchCallHistoryModel(319);
          if (v6 <= 0x3F)
          {
            result = type metadata accessor for PlayVoicemailModel(319);
            if (v7 <= 0x3F)
            {
              result = type metadata accessor for SingleResultVoicemailModel(319);
              if (v8 <= 0x3F)
              {
                result = type metadata accessor for SingleResultCallHistoryModel(319);
                if (v9 <= 0x3F)
                {
                  swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                  return 0;
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PhoneSnippetDataModels.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PhoneSnippetDataModels.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t specialized PhoneSnippetDataModels.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x69666E6F43707061 && a2 == 0xEF6E6F6974616D72;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000025E5A6A40 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x800000025E5A6A60 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x800000025E5A6A80 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000022 && 0x800000025E5A6AA0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000020 && 0x800000025E5A6AD0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x4264656B63617473 && a2 == 0xEE00736E6F747475 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000011 && 0x800000025E5A6B00 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000018 && 0x800000025E5A6B20 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x747369486C6C6163 && a2 == 0xEF7473694C79726FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000011 && 0x800000025E5A6B40 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6F56656C676E6973 && a2 == 0xEF6C69616D656369 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000017 && 0x800000025E5A6B60 == a2)
  {

    return 12;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 12;
    }

    else
    {
      return 13;
    }
  }
}

uint64_t specialized LoggableError.logged(shouldLogToAbc:shouldCreateTTR:)@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v48 = 0;
  v49 = 0xE000000000000000;
  _print_unlocked<A, B>(_:_:)();
  if (a1)
  {
    if (one-time initialization token for phoneSnippetUI != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    v9 = __swift_project_value_buffer(v8, static Logger.phoneSnippetUI);

    v46 = v9;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v48 = v13;
      *v12 = 136315138;
      *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, &v48);
      _os_log_impl(&dword_25E523000, v10, v11, "#LoggableError Trying ABC for %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x25F8B8670](v13, -1, -1);
      MEMORY[0x25F8B8670](v12, -1, -1);
    }

    PhoneSnippetUIError.errorDescription.getter();
    v47[0] = v14;
    v15 = 0;
    v47[1] = PhoneSnippetUIError.subTypeContext.getter();
    v47[2] = v16;
    v17 = MEMORY[0x277D84F90];
LABEL_7:
    v18 = &v47[2 * v15];
    while (++v15 != 3)
    {
      v20 = *(v18 - 1);
      v19 = *v18;
      v18 += 2;
      v21 = HIBYTE(v19) & 0xF;
      if ((v19 & 0x2000000000000000) == 0)
      {
        v21 = v20 & 0xFFFFFFFFFFFFLL;
      }

      if (v21)
      {

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v17 + 2) + 1, 1, v17);
        }

        v23 = *(v17 + 2);
        v22 = *(v17 + 3);
        if (v23 >= v22 >> 1)
        {
          v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v17);
        }

        *(v17 + 2) = v23 + 1;
        v24 = &v17[16 * v23];
        *(v24 + 4) = v20;
        *(v24 + 5) = v19;
        goto LABEL_7;
      }
    }

    swift_arrayDestroy();
    v48 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v25 = BidirectionalCollection<>.joined(separator:)();
    v27 = v26;

    v28 = specialized LoggableError.caseName.getter();
    specialized static FileRadarUtils.autoBugCapture(errorType:errorSubType:subTypeContext:logger:)(0x4C41544146, 0xE500000000000000, v28, v29, v25, v27, v46);
  }

  if (a2)
  {
    if (one-time initialization token for phoneSnippetUI != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    v31 = __swift_project_value_buffer(v30, static Logger.phoneSnippetUI);

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v48 = v35;
      *v34 = 136315138;
      v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, &v48);

      *(v34 + 4) = v36;
      _os_log_impl(&dword_25E523000, v32, v33, "#LoggableError Trying TTR for %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x25F8B8670](v35, -1, -1);
      MEMORY[0x25F8B8670](v34, -1, -1);
    }

    else
    {
    }

    v48 = 0;
    v49 = 0xE000000000000000;
    _StringGuts.grow(_:)(28);

    v48 = 0xD00000000000001ALL;
    v49 = 0x800000025E5A66B0;
    v37 = specialized LoggableError.caseName.getter();
    MEMORY[0x25F8B7B50](v37);

    v39 = v48;
    v38 = v49;
    v48 = PhoneSnippetUIError.errorDescription.getter();
    v49 = v40;
    MEMORY[0x25F8B7B50](657930, 0xE300000000000000);
    v41 = PhoneSnippetUIError.subTypeContext.getter();
    MEMORY[0x25F8B7B50](v41);

    MEMORY[0x25F8B7B50](657930, 0xE300000000000000);
    v42 = PhoneSnippetUIError.additionalContext.getter();
    MEMORY[0x25F8B7B50](v42);

    v44 = v48;
    v43 = v49;
    v48 = 0;
    v49 = 0xE000000000000000;
    _StringGuts.grow(_:)(31);
    MEMORY[0x25F8B7B50](0x45656E6F68502061, 0xEE002820726F7272);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x25F8B7B50](0x6564207361772029, 0xEF2E646574636574);
    specialized static FileRadarUtils.tapToRadar(title:desc:reason:logger:)(v39, v38, v44, v43, v48, v49, v31);
  }

  return outlined init with copy of PhoneSnippetUIError(v4, a3);
}

uint64_t specialized LoggableError.caseName.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Mirror();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[3] = &type metadata for PhoneSnippetUIError;
  v12[0] = swift_allocObject();
  outlined init with copy of PhoneSnippetUIError(v1, v12[0] + 16);
  Mirror.init(reflecting:)();
  Mirror.children.getter();
  (*(v3 + 8))(v5, v2);
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v6 = dispatch thunk of _AnyIndexBox._typeID.getter();
  swift_getObjectType();
  result = dispatch thunk of _AnyIndexBox._typeID.getter();
  if (v6 == result)
  {
    v8 = dispatch thunk of _AnyIndexBox._isEqual(to:)();
    swift_unknownObjectRelease();
    if (v8)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      dispatch thunk of _AnyCollectionBox.subscript.getter();
      swift_unknownObjectRelease();

      v10 = v13;
      v9 = v14;
      __swift_destroy_boxed_opaque_existential_0(v15);
      if (v9)
      {
LABEL_6:
        v13 = _typeName(_:qualified:)();
        v14 = v11;
        MEMORY[0x25F8B7B50](46, 0xE100000000000000);
        MEMORY[0x25F8B7B50](v10, v9);

        return v13;
      }
    }

    v13 = 0;
    v14 = 0xE000000000000000;
    _print_unlocked<A, B>(_:_:)();

    v10 = v13;
    v9 = v14;
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

unint64_t PhoneSnippetUIError.errorDescription.getter()
{
  v1 = 0xD000000000000010;
  v2 = type metadata accessor for AppIntentSpecification();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PhoneSnippetUIError(v0, v13);
  if (v15)
  {
    outlined destroy of PhoneSnippetUIError(v13);
  }

  else
  {

    outlined init with take of AppIntentRepresentation(v13, v12);
    v10 = 0;
    v11 = 0xE000000000000000;
    _StringGuts.grow(_:)(19);

    v10 = 0xD000000000000010;
    v11 = 0x800000025E5A6BA0;
    __swift_project_boxed_opaque_existential_1(v12, v12[3]);
    dispatch thunk of AppIntentRepresentation.exportToSpecification()();
    v6 = AppIntentSpecification.actionIdentifier.getter();
    v8 = v7;
    (*(v3 + 8))(v5, v2);
    MEMORY[0x25F8B7B50](v6, v8);

    MEMORY[0x25F8B7B50](41, 0xE100000000000000);
    v1 = v10;
    __swift_destroy_boxed_opaque_existential_0(v12);
  }

  return v1;
}

uint64_t outlined init with take of AppIntentRepresentation(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t PhoneSnippetUIError.subTypeContext.getter()
{
  outlined init with copy of PhoneSnippetUIError(v0, v6);
  if (v7)
  {
    return v6[0];
  }

  v2 = v6[5];
  v3 = _convertErrorToNSError(_:)();
  [v3 code];

  v4 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x25F8B7B50](v4);

  v1 = 0x646F43726F727265;
  __swift_destroy_boxed_opaque_existential_0(v6);
  return v1;
}

uint64_t PhoneSnippetUIError.additionalContext.getter()
{
  outlined init with copy of PhoneSnippetUIError(v0, v4);
  if (v6)
  {
    outlined destroy of PhoneSnippetUIError(v4);
  }

  else
  {
    v1 = v5;
    outlined init with take of AppIntentRepresentation(v4, v3);
    _StringGuts.grow(_:)(36);
    MEMORY[0x25F8B7B50](0xD000000000000018, 0x800000025E5A6BC0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s18AppIntentsServices0A20IntentRepresentation_pMd, &_s18AppIntentsServices0A20IntentRepresentation_pMR);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x25F8B7B50](0x3D726F7272650A2CLL, 0xE800000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    _print_unlocked<A, B>(_:_:)();

    __swift_destroy_boxed_opaque_existential_0(v3);
  }

  return 0;
}

uint64_t PhoneSnippetUIError.logger.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for phoneSnippetUI != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static Logger.phoneSnippetUI);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t protocol witness for LoggableError.logger.getter in conformance PhoneSnippetUIError@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for phoneSnippetUI != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static Logger.phoneSnippetUI);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t lazy protocol witness table accessor for type PhoneSnippetUIError and conformance PhoneSnippetUIError(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type PhoneSnippetUIError and conformance PhoneSnippetUIError;
  if (!lazy protocol witness table cache variable for type PhoneSnippetUIError and conformance PhoneSnippetUIError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetUIError and conformance PhoneSnippetUIError);
  }

  return result;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PhoneSnippetUIError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 49))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 48);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PhoneSnippetUIError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for PhoneSnippetUIError(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 48) = a2;
  return result;
}

uint64_t sub_25E56D920()
{
  if (*(v0 + 64))
  {
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  }

  return swift_deallocObject();
}

uint64_t Logger.phoneSnippetUI.unsafeMutableAddressor()
{
  if (one-time initialization token for phoneSnippetUI != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v0, static Logger.phoneSnippetUI);
}

uint64_t one-time initialization function for phoneSnippetUI()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.phoneSnippetUI);
  __swift_project_value_buffer(v0, static Logger.phoneSnippetUI);
  return Logger.init(subsystem:category:)();
}

uint64_t static Logger.phoneSnippetUI.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for phoneSnippetUI != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static Logger.phoneSnippetUI);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t *PhoneStartRequestUtterances.cancelUtterance.unsafeMutableAddressor()
{
  if (one-time initialization token for cancelUtterance != -1)
  {
    swift_once();
  }

  return &static PhoneStartRequestUtterances.cancelUtterance;
}

uint64_t one-time initialization function for cancelUtterance(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5)
{
  type metadata accessor for MachineUtteranceBuilder();
  swift_allocObject();
  MachineUtteranceBuilder.init()();
  dispatch thunk of MachineUtteranceBuilder.addMapping(node:value:)();

  v7 = dispatch thunk of MachineUtteranceBuilder.build()();
  v9 = v8;

  *a4 = v7;
  *a5 = v9;
  return result;
}

uint64_t *PhoneStartRequestUtterances.confirmUtterance.unsafeMutableAddressor()
{
  if (one-time initialization token for confirmUtterance != -1)
  {
    swift_once();
  }

  return &static PhoneStartRequestUtterances.confirmUtterance;
}

uint64_t static PhoneStartRequestUtterances.cancelUtterance.getter(void *a1, void *a2, void *a3, uint64_t a4)
{
  if (*a1 != -1)
  {
    v6 = a2;
    swift_once();
    a2 = v6;
  }

  v4 = *a2;

  return v4;
}

uint64_t PlayVoicemailModel.responseViewId.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PlayVoicemailModel.responseViewId.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t PlayVoicemailModel.callRecords.getter()
{
  type metadata accessor for PlayVoicemailModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySay05PhoneA2UI20SingleVoicemailModelVGGMd, &_s10SnippetKit8LoggableVySay05PhoneA2UI20SingleVoicemailModelVGGMR);
  Loggable.wrappedValue.getter();
  return v1;
}

uint64_t type metadata accessor for PlayVoicemailModel(uint64_t a1)
{
  result = type metadata singleton initialization cache for PlayVoicemailModel;
  if (!type metadata singleton initialization cache for PlayVoicemailModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *key path getter for PlayVoicemailModel.callRecords : PlayVoicemailModel@<X0>(void *a1@<X8>)
{
  type metadata accessor for PlayVoicemailModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySay05PhoneA2UI20SingleVoicemailModelVGGMd, &_s10SnippetKit8LoggableVySay05PhoneA2UI20SingleVoicemailModelVGGMR);
  result = Loggable.wrappedValue.getter();
  *a1 = v3;
  return result;
}

uint64_t key path setter for PlayVoicemailModel.callRecords : PlayVoicemailModel(uint64_t *a1)
{
  type metadata accessor for PlayVoicemailModel(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySay05PhoneA2UI20SingleVoicemailModelVGGMd, &_s10SnippetKit8LoggableVySay05PhoneA2UI20SingleVoicemailModelVGGMR);
  return Loggable.wrappedValue.setter();
}

uint64_t PlayVoicemailModel.callRecords.setter(uint64_t a1)
{
  type metadata accessor for PlayVoicemailModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySay05PhoneA2UI20SingleVoicemailModelVGGMd, &_s10SnippetKit8LoggableVySay05PhoneA2UI20SingleVoicemailModelVGGMR);
  return Loggable.wrappedValue.setter();
}

void (*PlayVoicemailModel.callRecords.modify(uint64_t *a1))(void *a1)
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
  type metadata accessor for PlayVoicemailModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySay05PhoneA2UI20SingleVoicemailModelVGGMd, &_s10SnippetKit8LoggableVySay05PhoneA2UI20SingleVoicemailModelVGGMR);
  *(v3 + 32) = Loggable.wrappedValue.modify();
  return EmergencyCountdownModel.sashTitle.modify;
}

uint64_t PlayVoicemailModel.voicemailTitle.getter()
{
  type metadata accessor for PlayVoicemailModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  Loggable.wrappedValue.getter();
  return v1;
}

void *key path getter for PlayVoicemailModel.voicemailTitle : PlayVoicemailModel@<X0>(void *a1@<X8>)
{
  type metadata accessor for PlayVoicemailModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  result = Loggable.wrappedValue.getter();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t key path setter for PlayVoicemailModel.voicemailTitle : PlayVoicemailModel(void *a1)
{
  type metadata accessor for PlayVoicemailModel(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  return Loggable.wrappedValue.setter();
}

uint64_t PlayVoicemailModel.voicemailTitle.setter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PlayVoicemailModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  return Loggable.wrappedValue.setter();
}

void (*PlayVoicemailModel.voicemailTitle.modify(uint64_t *a1))(void *a1)
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
  type metadata accessor for PlayVoicemailModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  *(v3 + 32) = Loggable.wrappedValue.modify();
  return EmergencyCountdownModel.sashTitle.modify;
}

uint64_t PlayVoicemailModel.openPhoneText.getter()
{
  type metadata accessor for PlayVoicemailModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  Loggable.wrappedValue.getter();
  return v1;
}

void *key path getter for PlayVoicemailModel.openPhoneText : PlayVoicemailModel@<X0>(void *a1@<X8>)
{
  type metadata accessor for PlayVoicemailModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  result = Loggable.wrappedValue.getter();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t key path setter for PlayVoicemailModel.openPhoneText : PlayVoicemailModel(void *a1)
{
  type metadata accessor for PlayVoicemailModel(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  return Loggable.wrappedValue.setter();
}

uint64_t PlayVoicemailModel.openPhoneText.setter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PlayVoicemailModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  return Loggable.wrappedValue.setter();
}

void (*PlayVoicemailModel.openPhoneText.modify(uint64_t *a1))(void *a1)
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
  type metadata accessor for PlayVoicemailModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  *(v3 + 32) = Loggable.wrappedValue.modify();
  return EmergencyCountdownModel.callAction.modify;
}

uint64_t property wrapper backing initializer of PlayVoicemailModel.openPhoneAction(uint64_t a1)
{
  type metadata accessor for SABaseCommand();

  return CodableAceObject.init(wrappedValue:)();
}

uint64_t PlayVoicemailModel.openPhoneAction.getter()
{
  type metadata accessor for PlayVoicemailModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMR);
  return CodableAceObject.wrappedValue.getter();
}

uint64_t key path getter for PlayVoicemailModel.openPhoneAction : PlayVoicemailModel@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PlayVoicemailModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMR);
  result = CodableAceObject.wrappedValue.getter();
  *a1 = result;
  return result;
}

uint64_t key path setter for PlayVoicemailModel.openPhoneAction : PlayVoicemailModel(void **a1)
{
  v1 = *a1;
  type metadata accessor for PlayVoicemailModel(0);
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMR);
  return CodableAceObject.wrappedValue.setter();
}

uint64_t PlayVoicemailModel.openPhoneAction.setter(uint64_t a1)
{
  type metadata accessor for PlayVoicemailModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMR);
  return CodableAceObject.wrappedValue.setter();
}

void (*PlayVoicemailModel.openPhoneAction.modify(uint64_t *a1))(void *a1)
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
  type metadata accessor for PlayVoicemailModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMR);
  *(v3 + 32) = CodableAceObject.wrappedValue.modify();
  return EmergencyCountdownModel.sashTitle.modify;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance PlayVoicemailModel.CodingKeys()
{
  v1 = 0x65736E6F70736572;
  v2 = 0x69616D6563696F76;
  if (*v0 != 2)
  {
    v2 = 0x6E6F68506E65706FLL;
  }

  if (*v0)
  {
    v1 = 0x6F6365526C6C6163;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PlayVoicemailModel.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized PlayVoicemailModel.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PlayVoicemailModel.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = lazy protocol witness table accessor for type PlayVoicemailModel.CodingKeys and conformance PlayVoicemailModel.CodingKeys(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PlayVoicemailModel.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = lazy protocol witness table accessor for type PlayVoicemailModel.CodingKeys and conformance PlayVoicemailModel.CodingKeys(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t PlayVoicemailModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14PhoneSnippetUI18PlayVoicemailModelV10CodingKeys33_64070EAF537F7871EE15D26D9151C462LLOGMd, &_ss22KeyedEncodingContainerVy14PhoneSnippetUI18PlayVoicemailModelV10CodingKeys33_64070EAF537F7871EE15D26D9151C462LLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PlayVoicemailModel.CodingKeys and conformance PlayVoicemailModel.CodingKeys(v7, v8, v9);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for PlayVoicemailModel(0);
    v15 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySay05PhoneA2UI20SingleVoicemailModelVGGMd, &_s10SnippetKit8LoggableVySay05PhoneA2UI20SingleVoicemailModelVGGMR);
    lazy protocol witness table accessor for type Loggable<[SingleVoicemailModel]> and conformance <A> Loggable<A>(&lazy protocol witness table cache variable for type Loggable<[SingleVoicemailModel]> and conformance <A> Loggable<A>, MEMORY[0x277D637D0]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
    lazy protocol witness table accessor for type Loggable<String> and conformance <A> Loggable<A>(&lazy protocol witness table cache variable for type Loggable<String> and conformance <A> Loggable<A>, MEMORY[0x277D637D0]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v13 = 3;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMR);
    lazy protocol witness table accessor for type CodableAceObject<SABaseCommand> and conformance CodableAceObject<A>(&lazy protocol witness table cache variable for type CodableAceObject<SABaseCommand> and conformance CodableAceObject<A>, MEMORY[0x277D63228]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t lazy protocol witness table accessor for type PlayVoicemailModel.CodingKeys and conformance PlayVoicemailModel.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type PlayVoicemailModel.CodingKeys and conformance PlayVoicemailModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type PlayVoicemailModel.CodingKeys and conformance PlayVoicemailModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlayVoicemailModel.CodingKeys and conformance PlayVoicemailModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlayVoicemailModel.CodingKeys and conformance PlayVoicemailModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type PlayVoicemailModel.CodingKeys and conformance PlayVoicemailModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlayVoicemailModel.CodingKeys and conformance PlayVoicemailModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlayVoicemailModel.CodingKeys and conformance PlayVoicemailModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type PlayVoicemailModel.CodingKeys and conformance PlayVoicemailModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlayVoicemailModel.CodingKeys and conformance PlayVoicemailModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlayVoicemailModel.CodingKeys and conformance PlayVoicemailModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type PlayVoicemailModel.CodingKeys and conformance PlayVoicemailModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlayVoicemailModel.CodingKeys and conformance PlayVoicemailModel.CodingKeys);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [SingleVoicemailModel] and conformance <A> [A](unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay14PhoneSnippetUI20SingleVoicemailModelVGMd, &_sSay14PhoneSnippetUI20SingleVoicemailModelVGMR);
    lazy protocol witness table accessor for type SingleVoicemailModel and conformance SingleVoicemailModel(a2, type metadata accessor for SingleVoicemailModel, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t PlayVoicemailModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMR);
  v40 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v43 = v38 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  v5 = *(v4 - 8);
  v51 = v4;
  v52 = v5;
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v38 - v9;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySay05PhoneA2UI20SingleVoicemailModelVGGMd, &_s10SnippetKit8LoggableVySay05PhoneA2UI20SingleVoicemailModelVGGMR);
  v45 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v12 = v38 - v11;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14PhoneSnippetUI18PlayVoicemailModelV10CodingKeys33_64070EAF537F7871EE15D26D9151C462LLOGMd, &_ss22KeyedDecodingContainerVy14PhoneSnippetUI18PlayVoicemailModelV10CodingKeys33_64070EAF537F7871EE15D26D9151C462LLOGMR);
  v13 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v15 = v38 - v14;
  v49 = type metadata accessor for PlayVoicemailModel(0);
  MEMORY[0x28223BE20](v49);
  v17 = (v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = a1[3];
  v50 = a1;
  v19 = __swift_project_boxed_opaque_existential_1(a1, v18);
  lazy protocol witness table accessor for type PlayVoicemailModel.CodingKeys and conformance PlayVoicemailModel.CodingKeys(v19, v20, v21);
  v46 = v15;
  v22 = v48;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v22)
  {
    __swift_destroy_boxed_opaque_existential_0(v50);
  }

  else
  {
    v39 = v8;
    v48 = v13;
    v57 = 0;
    *v17 = KeyedDecodingContainer.decode(_:forKey:)();
    v17[1] = v23;
    v38[1] = v23;
    v56 = 1;
    lazy protocol witness table accessor for type Loggable<[SingleVoicemailModel]> and conformance <A> Loggable<A>(&lazy protocol witness table cache variable for type Loggable<[SingleVoicemailModel]> and conformance <A> Loggable<A>, MEMORY[0x277D637E0]);
    v24 = v47;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v25 = v51;
    v26 = v49;
    v27 = *(v49 + 20);
    v28 = *(v45 + 32);
    v38[0] = v17;
    v28(v17 + v27, v12, v24);
    v55 = 2;
    lazy protocol witness table accessor for type Loggable<String> and conformance <A> Loggable<A>(&lazy protocol witness table cache variable for type Loggable<String> and conformance <A> Loggable<A>, MEMORY[0x277D637E0]);
    v29 = v10;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v30 = *(v52 + 32);
    v30(v38[0] + v26[6], v29, v25);
    v54 = 3;
    v31 = v39;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v32 = v48;
    v33 = v38[0];
    v30(v38[0] + v26[7], v31, v25);
    v53 = 4;
    lazy protocol witness table accessor for type CodableAceObject<SABaseCommand> and conformance CodableAceObject<A>(&lazy protocol witness table cache variable for type CodableAceObject<SABaseCommand> and conformance CodableAceObject<A>, MEMORY[0x277D63230]);
    v34 = v42;
    v35 = v43;
    v36 = v46;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v32 + 8))(v36, v44);
    (*(v40 + 32))(v33 + v26[8], v35, v34);
    outlined init with copy of PlayVoicemailModel(v33, v41);
    __swift_destroy_boxed_opaque_existential_0(v50);
    return outlined destroy of PlayVoicemailModel(v33);
  }
}

uint64_t lazy protocol witness table accessor for type Loggable<[SingleVoicemailModel]> and conformance <A> Loggable<A>(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10SnippetKit8LoggableVySay05PhoneA2UI20SingleVoicemailModelVGGMd, &_s10SnippetKit8LoggableVySay05PhoneA2UI20SingleVoicemailModelVGGMR);
    lazy protocol witness table accessor for type [SingleVoicemailModel] and conformance <A> [A](&lazy protocol witness table cache variable for type [SingleVoicemailModel] and conformance <A> [A], &lazy protocol witness table cache variable for type SingleVoicemailModel and conformance SingleVoicemailModel, &protocol conformance descriptor for SingleVoicemailModel, MEMORY[0x277D83978]);
    lazy protocol witness table accessor for type [SingleVoicemailModel] and conformance <A> [A](&lazy protocol witness table cache variable for type [SingleVoicemailModel] and conformance <A> [A], &lazy protocol witness table cache variable for type SingleVoicemailModel and conformance SingleVoicemailModel, &protocol conformance descriptor for SingleVoicemailModel, MEMORY[0x277D83948]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type CodableAceObject<SABaseCommand> and conformance CodableAceObject<A>(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMR);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with copy of PlayVoicemailModel(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlayVoicemailModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of PlayVoicemailModel(uint64_t a1)
{
  v2 = type metadata accessor for PlayVoicemailModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t PlayVoicemailModel.init(responseViewId:callRecords:voicemailTitle:openPhoneText:openPhoneAction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a9@<X8>)
{
  *a9 = a1;
  a9[1] = a2;
  type metadata accessor for PlayVoicemailModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay14PhoneSnippetUI20SingleVoicemailModelVGMd, &_sSay14PhoneSnippetUI20SingleVoicemailModelVGMR);
  Loggable.init(wrappedValue:)();
  Loggable.init(wrappedValue:)();
  Loggable.init(wrappedValue:)();
  type metadata accessor for SABaseCommand();
  return CodableAceObject.init(wrappedValue:)();
}

uint64_t protocol witness for PhoneSnippetModel.responseViewId.getter in conformance PlayVoicemailModel()
{
  v1 = *v0;

  return v1;
}

uint64_t instantiation function for generic protocol witness table for PlayVoicemailModel(uint64_t a1)
{
  result = lazy protocol witness table accessor for type SingleVoicemailModel and conformance SingleVoicemailModel(&lazy protocol witness table cache variable for type PlayVoicemailModel and conformance PlayVoicemailModel, type metadata accessor for PlayVoicemailModel, &protocol conformance descriptor for PlayVoicemailModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type SingleVoicemailModel and conformance SingleVoicemailModel(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25E56F8C0(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySay05PhoneA2UI20SingleVoicemailModelVGGMd, &_s10SnippetKit8LoggableVySay05PhoneA2UI20SingleVoicemailModelVGGMR);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMR);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[8];

  return v15(v16, a2, v14);
}

uint64_t sub_25E56FA64(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySay05PhoneA2UI20SingleVoicemailModelVGGMd, &_s10SnippetKit8LoggableVySay05PhoneA2UI20SingleVoicemailModelVGGMR);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMR);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[8];

  return v15(v16, a2, a2, v14);
}

void type metadata completion function for PlayVoicemailModel(uint64_t a1)
{
  type metadata accessor for Loggable<[SingleVoicemailModel]>(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Loggable<String>();
    if (v2 <= 0x3F)
    {
      type metadata accessor for CodableAceObject<SABaseCommand>(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for Loggable<[SingleVoicemailModel]>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Loggable<[SingleVoicemailModel]>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay14PhoneSnippetUI20SingleVoicemailModelVGMd, &_sSay14PhoneSnippetUI20SingleVoicemailModelVGMR);
    v1 = type metadata accessor for Loggable();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Loggable<[SingleVoicemailModel]>);
    }
  }
}

void type metadata accessor for Loggable<String>()
{
  if (!lazy cache variable for type metadata for Loggable<String>)
  {
    v0 = type metadata accessor for Loggable();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Loggable<String>);
    }
  }
}

void type metadata accessor for CodableAceObject<SABaseCommand>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for CodableAceObject<SABaseCommand>)
  {
    type metadata accessor for SABaseCommand();
    v1 = type metadata accessor for CodableAceObject();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for CodableAceObject<SABaseCommand>);
    }
  }
}

uint64_t specialized PlayVoicemailModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65736E6F70736572 && a2 == 0xEE00644977656956;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F6365526C6C6163 && a2 == 0xEB00000000736472 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x69616D6563696F76 && a2 == 0xEE00656C7469546CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F68506E65706FLL && a2 == 0xED00007478655465 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6F68506E65706FLL && a2 == 0xEF6E6F6974634165)
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

uint64_t SearchCallHistoryBinaryButtonModel.primaryText.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  Loggable.wrappedValue.getter();
  return v1;
}

void (*SearchCallHistoryBinaryButtonModel.primaryText.modify(uint64_t *a1))(void *a1)
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
  return EmergencyCountdownModel.callAction.modify;
}

uint64_t property wrapper backing initializer of SearchCallHistoryBinaryButtonModel.primaryAction(uint64_t a1)
{
  type metadata accessor for SABaseClientBoundCommand();

  return CodableAceObject.init(wrappedValue:)();
}

unint64_t type metadata accessor for SABaseClientBoundCommand()
{
  result = lazy cache variable for type metadata for SABaseClientBoundCommand;
  if (!lazy cache variable for type metadata for SABaseClientBoundCommand)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for SABaseClientBoundCommand);
  }

  return result;
}

uint64_t SearchCallHistoryBinaryButtonModel.primaryAction.getter()
{
  type metadata accessor for SearchCallHistoryBinaryButtonModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMR);
  return CodableAceObject.wrappedValue.getter();
}

uint64_t type metadata accessor for SearchCallHistoryBinaryButtonModel(uint64_t a1)
{
  result = type metadata singleton initialization cache for SearchCallHistoryBinaryButtonModel;
  if (!type metadata singleton initialization cache for SearchCallHistoryBinaryButtonModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t key path getter for SearchCallHistoryBinaryButtonModel.primaryAction : SearchCallHistoryBinaryButtonModel@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SearchCallHistoryBinaryButtonModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMR);
  result = CodableAceObject.wrappedValue.getter();
  *a1 = result;
  return result;
}

uint64_t key path setter for SearchCallHistoryBinaryButtonModel.primaryAction : SearchCallHistoryBinaryButtonModel(void **a1)
{
  v1 = *a1;
  type metadata accessor for SearchCallHistoryBinaryButtonModel(0);
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMR);
  return CodableAceObject.wrappedValue.setter();
}

uint64_t SearchCallHistoryBinaryButtonModel.primaryAction.setter(uint64_t a1)
{
  type metadata accessor for SearchCallHistoryBinaryButtonModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMR);
  return CodableAceObject.wrappedValue.setter();
}

void (*SearchCallHistoryBinaryButtonModel.primaryAction.modify(uint64_t *a1))(void *a1)
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
  type metadata accessor for SearchCallHistoryBinaryButtonModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMR);
  *(v3 + 32) = CodableAceObject.wrappedValue.modify();
  return EmergencyCountdownModel.sashTitle.modify;
}

uint64_t SearchCallHistoryBinaryButtonModel.secondaryText.getter()
{
  type metadata accessor for SearchCallHistoryBinaryButtonModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  Loggable.wrappedValue.getter();
  return v1;
}

void *key path getter for SearchCallHistoryBinaryButtonModel.secondaryText : SearchCallHistoryBinaryButtonModel@<X0>(void *a1@<X8>)
{
  type metadata accessor for SearchCallHistoryBinaryButtonModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  result = Loggable.wrappedValue.getter();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t key path setter for SearchCallHistoryBinaryButtonModel.secondaryText : SearchCallHistoryBinaryButtonModel(void *a1)
{
  type metadata accessor for SearchCallHistoryBinaryButtonModel(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  return Loggable.wrappedValue.setter();
}

uint64_t SearchCallHistoryBinaryButtonModel.secondaryText.setter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SearchCallHistoryBinaryButtonModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  return Loggable.wrappedValue.setter();
}

void (*SearchCallHistoryBinaryButtonModel.secondaryText.modify(uint64_t *a1))(void *a1)
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
  type metadata accessor for SearchCallHistoryBinaryButtonModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  *(v3 + 32) = Loggable.wrappedValue.modify();
  return EmergencyCountdownModel.sashTitle.modify;
}

uint64_t SearchCallHistoryBinaryButtonModel.secondaryAction.getter()
{
  type metadata accessor for SearchCallHistoryBinaryButtonModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMR);
  return CodableAceObject.wrappedValue.getter();
}

uint64_t key path getter for SearchCallHistoryBinaryButtonModel.secondaryAction : SearchCallHistoryBinaryButtonModel@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SearchCallHistoryBinaryButtonModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMR);
  result = CodableAceObject.wrappedValue.getter();
  *a1 = result;
  return result;
}

uint64_t key path setter for SearchCallHistoryBinaryButtonModel.secondaryAction : SearchCallHistoryBinaryButtonModel(void **a1)
{
  v1 = *a1;
  type metadata accessor for SearchCallHistoryBinaryButtonModel(0);
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMR);
  return CodableAceObject.wrappedValue.setter();
}

uint64_t SearchCallHistoryBinaryButtonModel.secondaryAction.setter(uint64_t a1)
{
  type metadata accessor for SearchCallHistoryBinaryButtonModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMR);
  return CodableAceObject.wrappedValue.setter();
}

void (*SearchCallHistoryBinaryButtonModel.secondaryAction.modify(uint64_t *a1))(void *a1)
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
  type metadata accessor for SearchCallHistoryBinaryButtonModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMR);
  *(v3 + 32) = CodableAceObject.wrappedValue.modify();
  return EmergencyCountdownModel.sashTitle.modify;
}

uint64_t SearchCallHistoryBinaryButtonModel.responseViewId.getter()
{
  v1 = *(v0 + *(type metadata accessor for SearchCallHistoryBinaryButtonModel(0) + 32));

  return v1;
}

uint64_t SearchCallHistoryBinaryButtonModel.responseViewId.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SearchCallHistoryBinaryButtonModel(0) + 32));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

void SearchCallHistoryBinaryButtonModel.init(primaryText:primaryAction:secondaryText:secondaryAction:)(void *a3@<X2>, uint64_t a7@<X8>)
{
  v8 = (a7 + *(type metadata accessor for SearchCallHistoryBinaryButtonModel(0) + 32));
  *v8 = 0xD000000000000021;
  v8[1] = 0x800000025E5A6180;
  Loggable.init(wrappedValue:)();
  type metadata accessor for SABaseClientBoundCommand();
  v9 = a3;
  CodableAceObject.init(wrappedValue:)();
  Loggable.init(wrappedValue:)();
  CodableAceObject.init(wrappedValue:)();
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance SearchCallHistoryBinaryButtonModel.CodingKeys()
{
  v1 = *v0;
  v2 = 0x547972616D697270;
  v3 = 0x7261646E6F636573;
  v4 = 0x7261646E6F636573;
  if (v1 != 3)
  {
    v4 = 0x65736E6F70736572;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x417972616D697270;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SearchCallHistoryBinaryButtonModel.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized SearchCallHistoryBinaryButtonModel.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SearchCallHistoryBinaryButtonModel.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = lazy protocol witness table accessor for type SearchCallHistoryBinaryButtonModel.CodingKeys and conformance SearchCallHistoryBinaryButtonModel.CodingKeys(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SearchCallHistoryBinaryButtonModel.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = lazy protocol witness table accessor for type SearchCallHistoryBinaryButtonModel.CodingKeys and conformance SearchCallHistoryBinaryButtonModel.CodingKeys(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t SearchCallHistoryBinaryButtonModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14PhoneSnippetUI34SearchCallHistoryBinaryButtonModelV10CodingKeys33_AADF14F654E464EFF47F7DF097AB64CALLOGMd, &_ss22KeyedEncodingContainerVy14PhoneSnippetUI34SearchCallHistoryBinaryButtonModelV10CodingKeys33_AADF14F654E464EFF47F7DF097AB64CALLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v17 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SearchCallHistoryBinaryButtonModel.CodingKeys and conformance SearchCallHistoryBinaryButtonModel.CodingKeys(v9, v10, v11);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v22 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  lazy protocol witness table accessor for type Loggable<String> and conformance <A> Loggable<A>(&lazy protocol witness table cache variable for type Loggable<String> and conformance <A> Loggable<A>, MEMORY[0x277D637D0]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v17[3] = type metadata accessor for SearchCallHistoryBinaryButtonModel(0);
    v21 = 1;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMR);
    v13 = lazy protocol witness table accessor for type CodableAceObject<SABaseClientBoundCommand> and conformance CodableAceObject<A>(&lazy protocol witness table cache variable for type CodableAceObject<SABaseClientBoundCommand> and conformance CodableAceObject<A>, MEMORY[0x277D63228]);
    v14 = v3;
    v15 = v13;
    v17[2] = v14;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v17[0] = v15;
    v17[1] = v12;
    v20 = 2;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v19 = 3;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v18 = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t lazy protocol witness table accessor for type SearchCallHistoryBinaryButtonModel.CodingKeys and conformance SearchCallHistoryBinaryButtonModel.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type SearchCallHistoryBinaryButtonModel.CodingKeys and conformance SearchCallHistoryBinaryButtonModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryBinaryButtonModel.CodingKeys and conformance SearchCallHistoryBinaryButtonModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryBinaryButtonModel.CodingKeys and conformance SearchCallHistoryBinaryButtonModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchCallHistoryBinaryButtonModel.CodingKeys and conformance SearchCallHistoryBinaryButtonModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryBinaryButtonModel.CodingKeys and conformance SearchCallHistoryBinaryButtonModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryBinaryButtonModel.CodingKeys and conformance SearchCallHistoryBinaryButtonModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchCallHistoryBinaryButtonModel.CodingKeys and conformance SearchCallHistoryBinaryButtonModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryBinaryButtonModel.CodingKeys and conformance SearchCallHistoryBinaryButtonModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryBinaryButtonModel.CodingKeys and conformance SearchCallHistoryBinaryButtonModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchCallHistoryBinaryButtonModel.CodingKeys and conformance SearchCallHistoryBinaryButtonModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryBinaryButtonModel.CodingKeys and conformance SearchCallHistoryBinaryButtonModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryBinaryButtonModel.CodingKeys and conformance SearchCallHistoryBinaryButtonModel.CodingKeys);
  }

  return result;
}

uint64_t SearchCallHistoryBinaryButtonModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMR);
  v50 = *(v55 - 8);
  v3 = MEMORY[0x28223BE20](v55);
  v49 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v52 = &v41 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  v51 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v53 = &v41 - v10;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14PhoneSnippetUI34SearchCallHistoryBinaryButtonModelV10CodingKeys33_AADF14F654E464EFF47F7DF097AB64CALLOGMd, &_ss22KeyedDecodingContainerVy14PhoneSnippetUI34SearchCallHistoryBinaryButtonModelV10CodingKeys33_AADF14F654E464EFF47F7DF097AB64CALLOGMR);
  v54 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v12 = &v41 - v11;
  v13 = type metadata accessor for SearchCallHistoryBinaryButtonModel(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SearchCallHistoryBinaryButtonModel.CodingKeys and conformance SearchCallHistoryBinaryButtonModel.CodingKeys(v16, v17, v18);
  v56 = v12;
  v19 = v58;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v20 = v52;
  v46 = v9;
  v47 = v13;
  v21 = v15;
  v58 = a1;
  v22 = v55;
  v63 = 0;
  v23 = lazy protocol witness table accessor for type Loggable<String> and conformance <A> Loggable<A>(&lazy protocol witness table cache variable for type Loggable<String> and conformance <A> Loggable<A>, MEMORY[0x277D637E0]);
  v24 = v53;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v43 = v23;
  v25 = v6;
  v26 = *(v51 + 32);
  v45 = v21;
  v26(v21, v24, v25);
  v62 = 1;
  lazy protocol witness table accessor for type CodableAceObject<SABaseClientBoundCommand> and conformance CodableAceObject<A>(&lazy protocol witness table cache variable for type CodableAceObject<SABaseClientBoundCommand> and conformance CodableAceObject<A>, MEMORY[0x277D63230]);
  v27 = v20;
  v28 = v22;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v44 = v25;
  v42 = v26;
  v29 = (v50 + 32);
  v30 = *(v50 + 32);
  v30(v45 + v47[5], v27, v28);
  v61 = 2;
  v31 = v46;
  v53 = 0;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v43 = v30;
  v52 = v29;
  v42(v45 + v47[6], v31, v25);
  v60 = 3;
  v32 = v49;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v33 = v28;
  v34 = v54;
  v35 = v45;
  v43(v45 + v47[7], v32, v33);
  v59 = 4;
  v36 = KeyedDecodingContainer.decode(_:forKey:)();
  v38 = v37;
  v39 = (v35 + v47[8]);
  (*(v34 + 8))(v56, v57);
  *v39 = v36;
  v39[1] = v38;
  outlined init with copy of SearchCallHistoryBinaryButtonModel(v35, v48);
  __swift_destroy_boxed_opaque_existential_0(v58);
  return outlined destroy of SearchCallHistoryBinaryButtonModel(v35);
}

uint64_t lazy protocol witness table accessor for type CodableAceObject<SABaseClientBoundCommand> and conformance CodableAceObject<A>(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMR);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with copy of SearchCallHistoryBinaryButtonModel(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchCallHistoryBinaryButtonModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of SearchCallHistoryBinaryButtonModel(uint64_t a1)
{
  v2 = type metadata accessor for SearchCallHistoryBinaryButtonModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t instantiation function for generic protocol witness table for SearchCallHistoryBinaryButtonModel(uint64_t a1)
{
  result = lazy protocol witness table accessor for type SearchCallHistoryBinaryButtonModel and conformance SearchCallHistoryBinaryButtonModel(&lazy protocol witness table cache variable for type SearchCallHistoryBinaryButtonModel and conformance SearchCallHistoryBinaryButtonModel, &protocol conformance descriptor for SearchCallHistoryBinaryButtonModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type SearchCallHistoryBinaryButtonModel and conformance SearchCallHistoryBinaryButtonModel(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SearchCallHistoryBinaryButtonModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_25E5717B8@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  result = Loggable.wrappedValue.getter();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_25E571838(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMR);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 32) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_25E571974(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMR);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 32) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void type metadata completion function for SearchCallHistoryBinaryButtonModel(uint64_t a1)
{
  type metadata accessor for Loggable<String>();
  if (v1 <= 0x3F)
  {
    type metadata accessor for CodableAceObject<SABaseClientBoundCommand>(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for CodableAceObject<SABaseClientBoundCommand>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for CodableAceObject<SABaseClientBoundCommand>)
  {
    type metadata accessor for SABaseClientBoundCommand();
    v1 = type metadata accessor for CodableAceObject();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for CodableAceObject<SABaseClientBoundCommand>);
    }
  }
}

uint64_t specialized SearchCallHistoryBinaryButtonModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x547972616D697270 && a2 == 0xEB00000000747865;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x417972616D697270 && a2 == 0xED00006E6F697463 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7261646E6F636573 && a2 == 0xED00007478655479 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7261646E6F636573 && a2 == 0xEF6E6F6974634179 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65736E6F70736572 && a2 == 0xEE00644977656956)
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

uint64_t key path setter for SearchCallHistoryBinaryButtonView.actionHandler : SearchCallHistoryBinaryButtonView(uint64_t a1)
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

uint64_t SearchCallHistoryBinaryButtonView.actionHandler.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI21StandardActionHandlerVSgMd, &_s9SnippetUI21StandardActionHandlerVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  outlined init with copy of StandardActionHandler?(a1, &v5 - v3);
  ActionHandler.wrappedValue.setter();
  return outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(a1, &_s9SnippetUI21StandardActionHandlerVSgMd, &_s9SnippetUI21StandardActionHandlerVSgMR);
}

void (*SearchCallHistoryBinaryButtonView.actionHandler.modify(uint64_t *a1))(void *a1)
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

uint64_t type metadata accessor for SearchCallHistoryBinaryButtonView(uint64_t a1)
{
  result = type metadata singleton initialization cache for SearchCallHistoryBinaryButtonView;
  if (!type metadata singleton initialization cache for SearchCallHistoryBinaryButtonView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SearchCallHistoryBinaryButtonView.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  ActionHandler.init()();
  v4 = type metadata accessor for SearchCallHistoryBinaryButtonView(0);
  return outlined init with take of SearchCallHistoryBinaryButtonModel(a1, a2 + *(v4 + 20), type metadata accessor for SearchCallHistoryBinaryButtonModel);
}

uint64_t SearchCallHistoryBinaryButtonView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v18[1] = a1;
  v2 = type metadata accessor for SearchCallHistoryBinaryButtonView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v18 - v7;
  v9 = SearchCallHistoryBinaryButtonView.primaryButton.getter();
  v10 = MEMORY[0x277D63A58];
  v18[10] = MEMORY[0x277CE11D0];
  v18[11] = MEMORY[0x277D63A58];
  v18[7] = v9;
  type metadata accessor for SearchCallHistoryBinaryButtonModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  Loggable.wrappedValue.getter();
  outlined init with copy of SearchCallHistoryBinaryButtonModel(v1, v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SearchCallHistoryBinaryButtonView);
  v11 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v12 = swift_allocObject();
  v13 = outlined init with take of SearchCallHistoryBinaryButtonModel(v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for SearchCallHistoryBinaryButtonView);
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

uint64_t SearchCallHistoryBinaryButtonView.primaryButton.getter()
{
  v27 = type metadata accessor for ButtonItemButtonStyle.Role();
  v1 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SearchCallHistoryBinaryButtonView(0);
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
  outlined init with copy of SearchCallHistoryBinaryButtonModel(v0, &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SearchCallHistoryBinaryButtonView);
  v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v15 = swift_allocObject();
  v16 = outlined init with take of SearchCallHistoryBinaryButtonModel(&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for SearchCallHistoryBinaryButtonView);
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

void SearchCallHistoryBinaryButtonView.command(for:)(uint64_t a2@<X8>)
{
  type metadata accessor for SearchCallHistoryBinaryButtonView(0);
  swift_getAtKeyPath();
  v3 = [v23 dictionary];

  if (v3)
  {
    type metadata accessor for NSObject();
    lazy protocol witness table accessor for type NSObject and conformance NSObject(&lazy protocol witness table cache variable for type NSObject and conformance NSObject, type metadata accessor for NSObject, MEMORY[0x277D85378]);
    v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = objc_opt_self();
    specialized _dictionaryUpCast<A, B, C, D>(_:)(v4);

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v7 = [v5 aceObjectWithDictionary_];

    if (v7 && (objc_opt_self(), (v8 = swift_dynamicCastObjCClass()) != 0))
    {
      v9 = v8;
      v10 = one-time initialization token for phoneSnippetUI;
      v11 = v7;
      if (v10 != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      __swift_project_value_buffer(v12, static Logger.phoneSnippetUI);
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_25E523000, v13, v14, "#SearchCallHistoryBinaryButtonView tap button is SAIntentGroupRunSiriKitExecutor", v15, 2u);
        MEMORY[0x25F8B8670](v15, -1, -1);
      }

      *a2 = v9;
      *(a2 + 8) = 0;
      v16 = MEMORY[0x277D63750];
    }

    else
    {
      if (one-time initialization token for phoneSnippetUI != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      __swift_project_value_buffer(v17, static Logger.phoneSnippetUI);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_25E523000, v18, v19, "#SearchCallHistoryBinaryButtonView tap button is aceCommand", v20, 2u);
        MEMORY[0x25F8B8670](v20, -1, -1);
      }

      swift_getAtKeyPath();
      *a2 = v23;
      *(a2 + 8) = 0;
      v16 = MEMORY[0x277D63720];
    }

    v21 = *v16;
    v22 = type metadata accessor for Command();
    (*(*(v22 - 8) + 104))(a2, v21, v22);
  }

  else
  {
    __break(1u);
  }
}

uint64_t closure #1 in SearchCallHistoryBinaryButtonView.primaryButton.getter(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI15InteractionTypeOSgMd, &_s9SnippetUI15InteractionTypeOSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v26 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit14ActionPropertyVSgMd, "6~");
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI21StandardActionHandlerVSgMd, &_s9SnippetUI21StandardActionHandlerVSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v26 - v11;
  if (one-time initialization token for phoneSnippetUI != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Logger.phoneSnippetUI);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_25E523000, v14, v15, a2, v16, 2u);
    MEMORY[0x25F8B8670](v16, -1, -1);
  }

  ActionHandler.wrappedValue.getter();
  v17 = type metadata accessor for StandardActionHandler();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v12, 1, v17) == 1)
  {
    return outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v12, &_s9SnippetUI21StandardActionHandlerVSgMd, &_s9SnippetUI21StandardActionHandlerVSgMR);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10SnippetKit24ActionElementConvertible_pGMd, "6~");
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_25E59F720;
  swift_getKeyPath();
  v21 = type metadata accessor for Command();
  v22 = MEMORY[0x277D63778];
  *(v20 + 56) = v21;
  *(v20 + 64) = v22;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v20 + 32));
  SearchCallHistoryBinaryButtonView.command(for:)(boxed_opaque_existential_1);

  ActionProperty.init(_:)();
  v24 = type metadata accessor for ActionProperty();
  (*(*(v24 - 8) + 56))(v9, 0, 1, v24);
  v25 = type metadata accessor for InteractionType();
  (*(*(v25 - 8) + 56))(v6, 1, 1, v25);
  StandardActionHandler.perform(_:interactionType:)();
  outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v6, &_s9SnippetUI15InteractionTypeOSgMd, &_s9SnippetUI15InteractionTypeOSgMR);
  outlined destroy of ModifiedContent<ComponentStack<TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)>>, _AppearanceActionModifier>(v9, &_s10SnippetKit14ActionPropertyVSgMd, "6~");
  return (*(v18 + 8))(v12, v17);
}

uint64_t outlined init with copy of SearchCallHistoryBinaryButtonModel(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of SearchCallHistoryBinaryButtonModel(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type Button<Text> and conformance Button<A>()
{
  result = lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>;
  if (!lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>);
  }

  return result;
}

unint64_t type metadata accessor for NSObject()
{
  result = lazy cache variable for type metadata for NSObject;
  if (!lazy cache variable for type metadata for NSObject)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSObject);
  }

  return result;
}

uint64_t specialized _dictionaryUpCast<A, B, C, D>(_:)(uint64_t a1)
{
  v1 = a1;
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) == 0)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

LABEL_8:
    v3 = MEMORY[0x277D84F98];
    if (v2)
    {
      goto LABEL_6;
    }

LABEL_9:
    v9 = -1 << *(v1 + 32);
    v6 = ~v9;
    v5 = v1 + 64;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v7 = v11 & *(v1 + 64);
    v8 = v1;
    goto LABEL_13;
  }

  if (a1 >= 0)
  {
    a1 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  if (!MEMORY[0x25F8B7E10](a1))
  {
    goto LABEL_8;
  }

LABEL_5:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd, &_ss18_DictionaryStorageCys11AnyHashableVypGMR);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  if (!v2)
  {
    goto LABEL_9;
  }

LABEL_6:
  v4 = __CocoaDictionary.makeIterator()();
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = v4 | 0x8000000000000000;
LABEL_13:
  v12 = (v6 + 64) >> 6;
  v13 = v3 + 64;

  v15 = 0;
  v31 = v8;
  while ((v8 & 0x8000000000000000) != 0)
  {
    v23 = __CocoaDictionary.Iterator.next()();
    if (!v23 || (*&v32 = v23, type metadata accessor for NSObject(), swift_dynamicCast(), v22 = v36, v19 = v15, v21 = v7, !v36))
    {
LABEL_36:
      outlined consume of [NSObject : Swift.AnyObject].Iterator._Variant(v31);

      return v3;
    }

LABEL_27:
    *&v40[0] = v22;
    type metadata accessor for NSObject();
    swift_dynamicCast();
    swift_dynamicCast();
    v36 = v32;
    v37 = v33;
    v38 = v34;
    outlined init with take of Any(&v35, v39);
    v32 = v36;
    v33 = v37;
    v34 = v38;
    outlined init with take of Any(v39, v40);
    result = AnyHashable._rawHashValue(seed:)(*(v3 + 40));
    v24 = -1 << *(v3 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v13 + 8 * (v25 >> 6))) != 0)
    {
      v16 = __clz(__rbit64((-1 << v25) & ~*(v13 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
      v8 = v31;
    }

    else
    {
      v27 = 0;
      v28 = (63 - v24) >> 6;
      v8 = v31;
      do
      {
        if (++v26 == v28 && (v27 & 1) != 0)
        {
          __break(1u);
          goto LABEL_37;
        }

        v29 = v26 == v28;
        if (v26 == v28)
        {
          v26 = 0;
        }

        v27 |= v29;
        v30 = *(v13 + 8 * v26);
      }

      while (v30 == -1);
      v16 = __clz(__rbit64(~v30)) + (v26 << 6);
    }

    *(v13 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
    v17 = *(v3 + 48) + 40 * v16;
    *v17 = v32;
    *(v17 + 16) = v33;
    *(v17 + 32) = v34;
    result = outlined init with take of Any(v40, (*(v3 + 56) + 32 * v16));
    ++*(v3 + 16);
    v15 = v19;
    v7 = v21;
  }

  v18 = v7;
  v19 = v15;
  if (v7)
  {
LABEL_23:
    v21 = (v18 - 1) & v18;
    v22 = *(*(v8 + 48) + ((v19 << 9) | (8 * __clz(__rbit64(v18)))));
    swift_unknownObjectRetain();
    if (!v22)
    {
      goto LABEL_36;
    }

    goto LABEL_27;
  }

  v20 = v15;
  while (1)
  {
    v19 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v19 >= v12)
    {
      goto LABEL_36;
    }

    v18 = *(v5 + 8 * v19);
    ++v20;
    if (v18)
    {
      v8 = v31;
      goto LABEL_23;
    }
  }

LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_25E573470(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = type metadata accessor for SearchCallHistoryBinaryButtonModel(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_25E573574(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    v12 = type metadata accessor for SearchCallHistoryBinaryButtonModel(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t type metadata completion function for SearchCallHistoryBinaryButtonView(uint64_t a1)
{
  result = type metadata accessor for ActionHandler();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for SearchCallHistoryBinaryButtonModel(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type NSObject and conformance NSObject(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroyTm_7()
{
  v1 = (type metadata accessor for SearchCallHistoryBinaryButtonView(0) - 8);
  v11 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v2 = type metadata accessor for ActionHandler();
  (*(*(v2 - 8) + 8))(v0 + v11, v2);
  v3 = v0 + v11 + v1[7];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  v5 = *(*(v4 - 8) + 8);
  v5(v3, v4);
  v6 = type metadata accessor for SearchCallHistoryBinaryButtonModel(0);
  v7 = v6[5];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMR);
  v9 = *(*(v8 - 8) + 8);
  v9(v3 + v7, v8);
  v5(v3 + v6[6], v4);
  v9(v3 + v6[7], v8);

  return swift_deallocObject();
}

uint64_t static ViewBuilder.buildEither<A, B>(second:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for _ConditionalContent.Storage();
  MEMORY[0x28223BE20](v7);
  (*(*(a3 - 8) + 16))(&v10 - v8, a1, a3);
  swift_storeEnumTagMultiPayload();
  return _ConditionalContent<>.init(storage:)();
}

uint64_t PhoneComponentStack.init(content:)()
{
  type metadata accessor for Context();
  lazy protocol witness table accessor for type Context and conformance Context();
  return EnvironmentObject.init()();
}

uint64_t PhoneComponentStack.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v34 = a3;
  v35 = a4;
  v33 = a2;
  v38 = a7;
  v10 = type metadata accessor for ComponentStack();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v33 - v15;
  v17 = type metadata accessor for VStack();
  v18 = type metadata accessor for _ConditionalContent();
  v19 = *(v18 - 8);
  v36 = v18;
  v37 = v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v33 - v20;
  v22 = swift_allocObject();
  v22[2] = a5;
  v22[3] = a6;
  v23 = a1;
  v25 = v33;
  v24 = v34;
  v22[4] = a1;
  v22[5] = v25;
  v26 = v35;
  v22[6] = v24;
  v22[7] = v26;
  v27 = v23;

  ComponentStack.init(content:)();
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)();
  v29 = *(v11 + 8);
  v29(v14, v10);
  static ViewBuilder.buildExpression<A>(_:)();
  v30 = swift_getWitnessTable();
  static ViewBuilder.buildEither<A, B>(second:)(v14, v17, v10, v30, WitnessTable);
  v29(v14, v10);
  v29(v16, v10);
  v39 = v30;
  v40 = WitnessTable;
  v31 = v36;
  swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)();
  return (*(v37 + 8))(v21, v31);
}

uint64_t closure #2 in PhoneComponentStack.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a5 - 8);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v16 - v11;
  v13(v10);
  static ViewBuilder.buildExpression<A>(_:)();
  v14 = *(v6 + 8);
  v14(v9, a5);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v14)(v12, a5);
}

uint64_t sub_25E573FCC()
{

  return swift_deallocObject();
}

uint64_t type metadata instantiation function for PhoneComponentStack(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for PhoneComponentStack(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for PhoneComponentStack(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25E57415C(void *a1)
{
  type metadata accessor for VStack();
  type metadata accessor for ComponentStack();
  type metadata accessor for _ConditionalContent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t SearchCallHistoryModel.responseViewId.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SearchCallHistoryModel.responseViewId.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t SearchCallHistoryModel.appId.getter()
{
  type metadata accessor for SearchCallHistoryModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  Loggable.wrappedValue.getter();
  return v1;
}

uint64_t type metadata accessor for SearchCallHistoryModel(uint64_t a1)
{
  result = type metadata singleton initialization cache for SearchCallHistoryModel;
  if (!type metadata singleton initialization cache for SearchCallHistoryModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *key path getter for SearchCallHistoryModel.appId : SearchCallHistoryModel@<X0>(void *a1@<X8>)
{
  type metadata accessor for SearchCallHistoryModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  result = Loggable.wrappedValue.getter();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t key path setter for SearchCallHistoryModel.appId : SearchCallHistoryModel(void *a1)
{
  type metadata accessor for SearchCallHistoryModel(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  return Loggable.wrappedValue.setter();
}

uint64_t SearchCallHistoryModel.appId.setter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SearchCallHistoryModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  return Loggable.wrappedValue.setter();
}

void (*SearchCallHistoryModel.appId.modify(uint64_t *a1))(void *a1)
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
  type metadata accessor for SearchCallHistoryModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  *(v3 + 32) = Loggable.wrappedValue.modify();
  return EmergencyCountdownModel.sashTitle.modify;
}

uint64_t SearchCallHistoryModel.callRecords.getter()
{
  type metadata accessor for SearchCallHistoryModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySay05PhoneA2UI21SingleCallRecordModelVGGMd, &_s10SnippetKit8LoggableVySay05PhoneA2UI21SingleCallRecordModelVGGMR);
  Loggable.wrappedValue.getter();
  return v1;
}

void *key path getter for SearchCallHistoryModel.callRecords : SearchCallHistoryModel@<X0>(void *a1@<X8>)
{
  type metadata accessor for SearchCallHistoryModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySay05PhoneA2UI21SingleCallRecordModelVGGMd, &_s10SnippetKit8LoggableVySay05PhoneA2UI21SingleCallRecordModelVGGMR);
  result = Loggable.wrappedValue.getter();
  *a1 = v3;
  return result;
}

uint64_t key path setter for SearchCallHistoryModel.callRecords : SearchCallHistoryModel(uint64_t *a1)
{
  type metadata accessor for SearchCallHistoryModel(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySay05PhoneA2UI21SingleCallRecordModelVGGMd, &_s10SnippetKit8LoggableVySay05PhoneA2UI21SingleCallRecordModelVGGMR);
  return Loggable.wrappedValue.setter();
}

uint64_t SearchCallHistoryModel.callRecords.setter(uint64_t a1)
{
  type metadata accessor for SearchCallHistoryModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySay05PhoneA2UI21SingleCallRecordModelVGGMd, &_s10SnippetKit8LoggableVySay05PhoneA2UI21SingleCallRecordModelVGGMR);
  return Loggable.wrappedValue.setter();
}

void (*SearchCallHistoryModel.callRecords.modify(uint64_t *a1))(void *a1)
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
  type metadata accessor for SearchCallHistoryModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySay05PhoneA2UI21SingleCallRecordModelVGGMd, &_s10SnippetKit8LoggableVySay05PhoneA2UI21SingleCallRecordModelVGGMR);
  *(v3 + 32) = Loggable.wrappedValue.modify();
  return EmergencyCountdownModel.sashTitle.modify;
}

uint64_t SearchCallHistoryModel.recentsText.getter()
{
  type metadata accessor for SearchCallHistoryModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  Loggable.wrappedValue.getter();
  return v1;
}

void *key path getter for SearchCallHistoryModel.recentsText : SearchCallHistoryModel@<X0>(void *a1@<X8>)
{
  type metadata accessor for SearchCallHistoryModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  result = Loggable.wrappedValue.getter();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t key path setter for SearchCallHistoryModel.recentsText : SearchCallHistoryModel(void *a1)
{
  type metadata accessor for SearchCallHistoryModel(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  return Loggable.wrappedValue.setter();
}

uint64_t SearchCallHistoryModel.recentsText.setter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SearchCallHistoryModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  return Loggable.wrappedValue.setter();
}

void (*SearchCallHistoryModel.recentsText.modify(uint64_t *a1))(void *a1)
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
  type metadata accessor for SearchCallHistoryModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  *(v3 + 32) = Loggable.wrappedValue.modify();
  return EmergencyCountdownModel.sashTitle.modify;
}

uint64_t SearchCallHistoryModel.openPhoneText.getter()
{
  type metadata accessor for SearchCallHistoryModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  Loggable.wrappedValue.getter();
  return v1;
}

void *key path getter for SearchCallHistoryModel.openPhoneText : SearchCallHistoryModel@<X0>(void *a1@<X8>)
{
  type metadata accessor for SearchCallHistoryModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  result = Loggable.wrappedValue.getter();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t key path setter for SearchCallHistoryModel.openPhoneText : SearchCallHistoryModel(void *a1)
{
  type metadata accessor for SearchCallHistoryModel(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  return Loggable.wrappedValue.setter();
}

uint64_t SearchCallHistoryModel.openPhoneText.setter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SearchCallHistoryModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  return Loggable.wrappedValue.setter();
}

void (*SearchCallHistoryModel.openPhoneText.modify(uint64_t *a1))(void *a1)
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
  type metadata accessor for SearchCallHistoryModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  *(v3 + 32) = Loggable.wrappedValue.modify();
  return EmergencyCountdownModel.callAction.modify;
}

uint64_t SearchCallHistoryModel.shouldShowBottomView.getter()
{
  type metadata accessor for SearchCallHistoryModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
  Loggable.wrappedValue.getter();
  return v1;
}

void *key path getter for SearchCallHistoryModel.shouldShowBottomView : SearchCallHistoryModel@<X0>(_BYTE *a1@<X8>)
{
  type metadata accessor for SearchCallHistoryModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
  result = Loggable.wrappedValue.getter();
  *a1 = v3;
  return result;
}

uint64_t key path setter for SearchCallHistoryModel.shouldShowBottomView : SearchCallHistoryModel(char *a1)
{
  type metadata accessor for SearchCallHistoryModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
  return Loggable.wrappedValue.setter();
}

uint64_t SearchCallHistoryModel.shouldShowBottomView.setter(char a1)
{
  type metadata accessor for SearchCallHistoryModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
  return Loggable.wrappedValue.setter();
}

void (*SearchCallHistoryModel.shouldShowBottomView.modify(uint64_t *a1))(void *a1)
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
  type metadata accessor for SearchCallHistoryModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
  *(v3 + 32) = Loggable.wrappedValue.modify();
  return EmergencyCountdownModel.sashTitle.modify;
}

uint64_t SearchCallHistoryModel.shouldReactOpenContact.getter()
{
  type metadata accessor for SearchCallHistoryModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
  Loggable.wrappedValue.getter();
  return v1;
}

void *key path getter for SearchCallHistoryModel.shouldReactOpenContact : SearchCallHistoryModel@<X0>(_BYTE *a1@<X8>)
{
  type metadata accessor for SearchCallHistoryModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
  result = Loggable.wrappedValue.getter();
  *a1 = v3;
  return result;
}

uint64_t key path setter for SearchCallHistoryModel.shouldReactOpenContact : SearchCallHistoryModel(char *a1)
{
  type metadata accessor for SearchCallHistoryModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
  return Loggable.wrappedValue.setter();
}

uint64_t SearchCallHistoryModel.shouldReactOpenContact.setter(char a1)
{
  type metadata accessor for SearchCallHistoryModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
  return Loggable.wrappedValue.setter();
}

void (*SearchCallHistoryModel.shouldReactOpenContact.modify(uint64_t *a1))(void *a1)
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
  type metadata accessor for SearchCallHistoryModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
  *(v3 + 32) = Loggable.wrappedValue.modify();
  return EmergencyCountdownModel.sashTitle.modify;
}

uint64_t property wrapper backing initializer of SearchCallHistoryModel.openPhoneAction(uint64_t a1)
{
  type metadata accessor for SABaseCommand();

  return CodableAceObject.init(wrappedValue:)();
}

uint64_t SearchCallHistoryModel.openPhoneAction.getter()
{
  type metadata accessor for SearchCallHistoryModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMR);
  return CodableAceObject.wrappedValue.getter();
}

uint64_t key path getter for SearchCallHistoryModel.openPhoneAction : SearchCallHistoryModel@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SearchCallHistoryModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMR);
  result = CodableAceObject.wrappedValue.getter();
  *a1 = result;
  return result;
}

uint64_t key path setter for SearchCallHistoryModel.openPhoneAction : SearchCallHistoryModel(void **a1)
{
  v1 = *a1;
  type metadata accessor for SearchCallHistoryModel(0);
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMR);
  return CodableAceObject.wrappedValue.setter();
}

uint64_t SearchCallHistoryModel.openPhoneAction.setter(uint64_t a1)
{
  type metadata accessor for SearchCallHistoryModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMR);
  return CodableAceObject.wrappedValue.setter();
}

void (*SearchCallHistoryModel.openPhoneAction.modify(uint64_t *a1))(void *a1)
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
  type metadata accessor for SearchCallHistoryModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMR);
  *(v3 + 32) = CodableAceObject.wrappedValue.modify();
  return EmergencyCountdownModel.sashTitle.modify;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance SearchCallHistoryModel.CodingKeys()
{
  v1 = *v0;
  v2 = 0x65736E6F70736572;
  v3 = 0xD000000000000016;
  v4 = 0x6E6F68506E65706FLL;
  if (v1 != 6)
  {
    v3 = 0x6E6F68506E65706FLL;
  }

  if (v1 != 4)
  {
    v4 = 0xD000000000000014;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x6F6365526C6C6163;
  if (v1 != 2)
  {
    v5 = 0x5473746E65636572;
  }

  if (*v0)
  {
    v2 = 0x6449707061;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SearchCallHistoryModel.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized SearchCallHistoryModel.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SearchCallHistoryModel.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = lazy protocol witness table accessor for type SearchCallHistoryModel.CodingKeys and conformance SearchCallHistoryModel.CodingKeys(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SearchCallHistoryModel.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = lazy protocol witness table accessor for type SearchCallHistoryModel.CodingKeys and conformance SearchCallHistoryModel.CodingKeys(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t SearchCallHistoryModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14PhoneSnippetUI22SearchCallHistoryModelV10CodingKeys33_5601A6582648817F6EF546A177F3ABBALLOGMd, &_ss22KeyedEncodingContainerVy14PhoneSnippetUI22SearchCallHistoryModelV10CodingKeys33_5601A6582648817F6EF546A177F3ABBALLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v12 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SearchCallHistoryModel.CodingKeys and conformance SearchCallHistoryModel.CodingKeys(v7, v8, v9);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v20 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v10 = type metadata accessor for SearchCallHistoryModel(0);
    v19 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
    lazy protocol witness table accessor for type Loggable<String> and conformance <A> Loggable<A>(&lazy protocol witness table cache variable for type Loggable<String> and conformance <A> Loggable<A>, MEMORY[0x277D637D0]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12[1] = v10;
    v18 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySay05PhoneA2UI21SingleCallRecordModelVGGMd, &_s10SnippetKit8LoggableVySay05PhoneA2UI21SingleCallRecordModelVGGMR);
    lazy protocol witness table accessor for type Loggable<[SingleCallRecordModel]> and conformance <A> Loggable<A>(&lazy protocol witness table cache variable for type Loggable<[SingleCallRecordModel]> and conformance <A> Loggable<A>, MEMORY[0x277D637D0]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v17 = 3;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v16 = 4;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v15 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
    lazy protocol witness table accessor for type Loggable<Bool> and conformance <A> Loggable<A>(&lazy protocol witness table cache variable for type Loggable<Bool> and conformance <A> Loggable<A>, MEMORY[0x277D637D0]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14 = 6;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v13 = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMR);
    lazy protocol witness table accessor for type CodableAceObject<SABaseCommand> and conformance CodableAceObject<A>(&lazy protocol witness table cache variable for type CodableAceObject<SABaseCommand> and conformance CodableAceObject<A>, MEMORY[0x277D63228]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t lazy protocol witness table accessor for type SearchCallHistoryModel.CodingKeys and conformance SearchCallHistoryModel.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type SearchCallHistoryModel.CodingKeys and conformance SearchCallHistoryModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryModel.CodingKeys and conformance SearchCallHistoryModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryModel.CodingKeys and conformance SearchCallHistoryModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchCallHistoryModel.CodingKeys and conformance SearchCallHistoryModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryModel.CodingKeys and conformance SearchCallHistoryModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryModel.CodingKeys and conformance SearchCallHistoryModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchCallHistoryModel.CodingKeys and conformance SearchCallHistoryModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryModel.CodingKeys and conformance SearchCallHistoryModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryModel.CodingKeys and conformance SearchCallHistoryModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchCallHistoryModel.CodingKeys and conformance SearchCallHistoryModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryModel.CodingKeys and conformance SearchCallHistoryModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryModel.CodingKeys and conformance SearchCallHistoryModel.CodingKeys);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [SingleCallRecordModel] and conformance <A> [A](unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay14PhoneSnippetUI21SingleCallRecordModelVGMd, &_sSay14PhoneSnippetUI21SingleCallRecordModelVGMR);
    lazy protocol witness table accessor for type SingleCallRecordModel and conformance SingleCallRecordModel(a2, type metadata accessor for SingleCallRecordModel, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t SearchCallHistoryModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMR);
  v57 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v60 = v52 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
  v5 = *(v4 - 8);
  v70 = v4;
  v71 = v5;
  v6 = MEMORY[0x28223BE20](v4);
  v61 = v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v62 = v52 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySay05PhoneA2UI21SingleCallRecordModelVGGMd, &_s10SnippetKit8LoggableVySay05PhoneA2UI21SingleCallRecordModelVGGMR);
  v66 = *(v9 - 8);
  v67 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = v52 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  v13 = *(v12 - 8);
  v72 = v12;
  v73 = v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = v52 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = v52 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14PhoneSnippetUI22SearchCallHistoryModelV10CodingKeys33_5601A6582648817F6EF546A177F3ABBALLOGMd, &_ss22KeyedDecodingContainerVy14PhoneSnippetUI22SearchCallHistoryModelV10CodingKeys33_5601A6582648817F6EF546A177F3ABBALLOGMR);
  v64 = *(v22 - 8);
  v65 = v22;
  MEMORY[0x28223BE20](v22);
  v24 = v52 - v23;
  v75 = type metadata accessor for SearchCallHistoryModel(0);
  MEMORY[0x28223BE20](v75);
  v74 = (v52 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = a1[3];
  v69 = a1;
  v27 = __swift_project_boxed_opaque_existential_1(a1, v26);
  lazy protocol witness table accessor for type SearchCallHistoryModel.CodingKeys and conformance SearchCallHistoryModel.CodingKeys(v27, v28, v29);
  v63 = v24;
  v30 = v68;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v30)
  {
    __swift_destroy_boxed_opaque_existential_0(v69);
  }

  else
  {
    v68 = v19;
    v56 = v16;
    v83 = 0;
    v31 = KeyedDecodingContainer.decode(_:forKey:)();
    v32 = v74;
    *v74 = v31;
    v32[1] = v33;
    v55 = v33;
    v82 = 1;
    v34 = lazy protocol witness table accessor for type Loggable<String> and conformance <A> Loggable<A>(&lazy protocol witness table cache variable for type Loggable<String> and conformance <A> Loggable<A>, MEMORY[0x277D637E0]);
    v35 = v72;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v54 = v34;
    v36 = v73 + 32;
    v37 = v32 + v75[5];
    v53 = *(v73 + 32);
    v53(v37, v21, v35);
    v81 = 2;
    lazy protocol witness table accessor for type Loggable<[SingleCallRecordModel]> and conformance <A> Loggable<A>(&lazy protocol witness table cache variable for type Loggable<[SingleCallRecordModel]> and conformance <A> Loggable<A>, MEMORY[0x277D637E0]);
    v38 = v67;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v39 = v70;
    v52[1] = v36;
    (*(v66 + 32))(v32 + v75[6], v11, v38);
    v80 = 3;
    v40 = v68;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v41 = v53;
    v53(v32 + v75[7], v40, v35);
    v79 = 4;
    v42 = v56;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v43 = v32;
    v41(v32 + v75[8], v42, v35);
    v78 = 5;
    lazy protocol witness table accessor for type Loggable<Bool> and conformance <A> Loggable<A>(&lazy protocol witness table cache variable for type Loggable<Bool> and conformance <A> Loggable<A>, MEMORY[0x277D637E0]);
    v44 = v62;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v45 = v75;
    v46 = *(v71 + 32);
    v46(v43 + v75[9], v44, v39);
    v77 = 6;
    v47 = v61;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v46(v43 + v45[10], v47, v39);
    v76 = 7;
    lazy protocol witness table accessor for type CodableAceObject<SABaseCommand> and conformance CodableAceObject<A>(&lazy protocol witness table cache variable for type CodableAceObject<SABaseCommand> and conformance CodableAceObject<A>, MEMORY[0x277D63230]);
    v48 = v59;
    v49 = v60;
    v50 = v63;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v64 + 8))(v50, v65);
    (*(v57 + 32))(v43 + v45[11], v49, v48);
    outlined init with copy of SearchCallHistoryModel(v43, v58);
    __swift_destroy_boxed_opaque_existential_0(v69);
    return outlined destroy of SearchCallHistoryModel(v43);
  }
}

uint64_t lazy protocol witness table accessor for type Loggable<[SingleCallRecordModel]> and conformance <A> Loggable<A>(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10SnippetKit8LoggableVySay05PhoneA2UI21SingleCallRecordModelVGGMd, &_s10SnippetKit8LoggableVySay05PhoneA2UI21SingleCallRecordModelVGGMR);
    lazy protocol witness table accessor for type [SingleCallRecordModel] and conformance <A> [A](&lazy protocol witness table cache variable for type [SingleCallRecordModel] and conformance <A> [A], &lazy protocol witness table cache variable for type SingleCallRecordModel and conformance SingleCallRecordModel, &protocol conformance descriptor for SingleCallRecordModel, MEMORY[0x277D83978]);
    lazy protocol witness table accessor for type [SingleCallRecordModel] and conformance <A> [A](&lazy protocol witness table cache variable for type [SingleCallRecordModel] and conformance <A> [A], &lazy protocol witness table cache variable for type SingleCallRecordModel and conformance SingleCallRecordModel, &protocol conformance descriptor for SingleCallRecordModel, MEMORY[0x277D83948]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with copy of SearchCallHistoryModel(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchCallHistoryModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of SearchCallHistoryModel(uint64_t a1)
{
  v2 = type metadata accessor for SearchCallHistoryModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SearchCallHistoryModel.init(responseViewId:appId:callRecords:recentsText:openPhoneText:shouldShowBottomView:shouldReactOpenContact:openPhoneAction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a9@<X8>, uint64_t a10, char a11, char a12, uint64_t a13)
{
  *a9 = a1;
  a9[1] = a2;
  type metadata accessor for SearchCallHistoryModel(0);
  Loggable.init(wrappedValue:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay14PhoneSnippetUI21SingleCallRecordModelVGMd, &_sSay14PhoneSnippetUI21SingleCallRecordModelVGMR);
  Loggable.init(wrappedValue:)();
  Loggable.init(wrappedValue:)();
  Loggable.init(wrappedValue:)();
  Loggable.init(wrappedValue:)();
  Loggable.init(wrappedValue:)();
  type metadata accessor for SABaseCommand();
  return CodableAceObject.init(wrappedValue:)();
}

uint64_t instantiation function for generic protocol witness table for SearchCallHistoryModel(uint64_t a1)
{
  result = lazy protocol witness table accessor for type SingleCallRecordModel and conformance SingleCallRecordModel(&lazy protocol witness table cache variable for type SearchCallHistoryModel and conformance SearchCallHistoryModel, type metadata accessor for SearchCallHistoryModel, &protocol conformance descriptor for SearchCallHistoryModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type SingleCallRecordModel and conformance SingleCallRecordModel(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25E57687C(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySay05PhoneA2UI21SingleCallRecordModelVGGMd, &_s10SnippetKit8LoggableVySay05PhoneA2UI21SingleCallRecordModelVGGMR);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[9];
    goto LABEL_11;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMR);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[11];

  return v16(v17, a2, v15);
}

uint64_t sub_25E576A74(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySay05PhoneA2UI21SingleCallRecordModelVGGMd, &_s10SnippetKit8LoggableVySay05PhoneA2UI21SingleCallRecordModelVGGMR);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_9;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[9];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMR);
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[11];

  return v16(v17, a2, a2, v15);
}

void type metadata completion function for SearchCallHistoryModel(uint64_t a1)
{
  type metadata accessor for Loggable<String>(319, &lazy cache variable for type metadata for Loggable<String>, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Loggable<[SingleCallRecordModel]>(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Loggable<String>(319, &lazy cache variable for type metadata for Loggable<Bool>, MEMORY[0x277D839B0]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for CodableAceObject<SABaseCommand>(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for Loggable<[SingleCallRecordModel]>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Loggable<[SingleCallRecordModel]>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay14PhoneSnippetUI21SingleCallRecordModelVGMd, &_sSay14PhoneSnippetUI21SingleCallRecordModelVGMR);
    v1 = type metadata accessor for Loggable();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Loggable<[SingleCallRecordModel]>);
    }
  }
}

uint64_t getEnumTagSinglePayload for SearchCallHistoryModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SearchCallHistoryModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t specialized SearchCallHistoryModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65736E6F70736572 && a2 == 0xEE00644977656956;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6449707061 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F6365526C6C6163 && a2 == 0xEB00000000736472 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x5473746E65636572 && a2 == 0xEB00000000747865 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6F68506E65706FLL && a2 == 0xED00007478655465 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000014 && 0x800000025E5A6BE0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000016 && 0x800000025E5A6C00 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6E6F68506E65706FLL && a2 == 0xEF6E6F6974634165)
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

uint64_t YesNoConfirmationCarPlayView.body.getter()
{
  v1 = type metadata accessor for YesNoConfirmationCarPlayView(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  outlined init with copy of YesNoConfirmationModel(v0, &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for YesNoConfirmationCarPlayView);
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  outlined init with take of YesNoConfirmationModel(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4, type metadata accessor for YesNoConfirmationCarPlayView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVy07SnippetB0028SystemTextClarificationTitleD0VSg_05PhoneeB0017YesNoConfirmationD0VtGMd, &_s7SwiftUI9TupleViewVy07SnippetB0028SystemTextClarificationTitleD0VSg_05PhoneeB0017YesNoConfirmationD0VtGMR);
  lazy protocol witness table accessor for type TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(SystemTextClarificationTitleView?, YesNoConfirmationView)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVy07SnippetB0028SystemTextClarificationTitleD0VSg_05PhoneeB0017YesNoConfirmationD0VtGMd, &_s7SwiftUI9TupleViewVy07SnippetB0028SystemTextClarificationTitleD0VSg_05PhoneeB0017YesNoConfirmationD0VtGMR, MEMORY[0x277CE14C8]);
  return ComponentStack.init(content:)();
}

uint64_t type metadata accessor for YesNoConfirmationCarPlayView(uint64_t a1)
{
  result = type metadata singleton initialization cache for YesNoConfirmationCarPlayView;
  if (!type metadata singleton initialization cache for YesNoConfirmationCarPlayView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t closure #1 in YesNoConfirmationCarPlayView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23[0] = a2;
  v3 = type metadata accessor for YesNoConfirmationView(0);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v23 - v7;
  v9 = type metadata accessor for SystemTextClarificationTitleView();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI32SystemTextClarificationTitleViewVSgMd, &_s9SnippetUI32SystemTextClarificationTitleViewVSgMR);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v23 - v17;
  type metadata accessor for YesNoConfirmationModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSSgGMd, &_s10SnippetKit8LoggableVySSSgGMR);
  Loggable.wrappedValue.getter();
  if (v23[2])
  {
    v23[4] = MEMORY[0x277D837D0];
    v23[5] = MEMORY[0x277D63F88];
    SystemTextClarificationTitleView.init(text1:)();
    (*(v10 + 32))(v18, v12, v9);
    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  (*(v10 + 56))(v18, v19, 1, v9);
  outlined init with copy of YesNoConfirmationModel(a1, &v8[*(v3 + 20)], type metadata accessor for YesNoConfirmationModel);
  ActionHandler.init()();
  outlined init with copy of SystemTextClarificationTitleView?(v18, v16);
  outlined init with copy of YesNoConfirmationModel(v8, v6, type metadata accessor for YesNoConfirmationView);
  v20 = v23[0];
  outlined init with copy of SystemTextClarificationTitleView?(v16, v23[0]);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI32SystemTextClarificationTitleViewVSg_05PhoneaB0017YesNoConfirmationG0VtMd, &_s9SnippetUI32SystemTextClarificationTitleViewVSg_05PhoneaB0017YesNoConfirmationG0VtMR);
  outlined init with copy of YesNoConfirmationModel(v6, v20 + *(v21 + 48), type metadata accessor for YesNoConfirmationView);
  outlined destroy of YesNoConfirmationView(v8);
  outlined destroy of SystemTextClarificationTitleView?(v18);
  outlined destroy of YesNoConfirmationView(v6);
  return outlined destroy of SystemTextClarificationTitleView?(v16);
}

uint64_t outlined init with take of YesNoConfirmationModel(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t protocol witness for View.body.getter in conformance YesNoConfirmationCarPlayView(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  outlined init with copy of YesNoConfirmationModel(v1, &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for YesNoConfirmationCarPlayView);
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  outlined init with take of YesNoConfirmationModel(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4, type metadata accessor for YesNoConfirmationCarPlayView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVy07SnippetB0028SystemTextClarificationTitleD0VSg_05PhoneeB0017YesNoConfirmationD0VtGMd, &_s7SwiftUI9TupleViewVy07SnippetB0028SystemTextClarificationTitleD0VSg_05PhoneeB0017YesNoConfirmationD0VtGMR);
  lazy protocol witness table accessor for type TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(SystemTextClarificationTitleView?, YesNoConfirmationView)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVy07SnippetB0028SystemTextClarificationTitleD0VSg_05PhoneeB0017YesNoConfirmationD0VtGMd, &_s7SwiftUI9TupleViewVy07SnippetB0028SystemTextClarificationTitleD0VSg_05PhoneeB0017YesNoConfirmationD0VtGMR, MEMORY[0x277CE14C8]);
  return ComponentStack.init(content:)();
}

uint64_t sub_25E5779EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for YesNoConfirmationModel(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_25E577A6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for YesNoConfirmationModel(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata completion function for YesNoConfirmationCarPlayView(uint64_t a1)
{
  result = type metadata accessor for YesNoConfirmationModel(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t objectdestroyTm_8()
{
  v1 = *(type metadata accessor for YesNoConfirmationCarPlayView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  v4 = *(*(v3 - 8) + 8);
  v4(v2, v3);
  v5 = type metadata accessor for YesNoConfirmationModel(0);
  v6 = v5[5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  v8 = *(*(v7 - 8) + 8);
  v8(v2 + v6, v7);
  v4(v2 + v5[6], v3);
  v8(v2 + v5[7], v7);
  v9 = v5[8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSSgGMd, &_s10SnippetKit8LoggableVySSSgGMR);
  (*(*(v10 - 8) + 8))(v2 + v9, v10);

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in YesNoConfirmationCarPlayView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for YesNoConfirmationCarPlayView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return closure #1 in YesNoConfirmationCarPlayView.body.getter(v4, a1);
}

uint64_t outlined init with copy of SystemTextClarificationTitleView?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI32SystemTextClarificationTitleViewVSgMd, &_s9SnippetUI32SystemTextClarificationTitleViewVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of YesNoConfirmationModel(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of YesNoConfirmationView(uint64_t a1)
{
  v2 = type metadata accessor for YesNoConfirmationView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined destroy of SystemTextClarificationTitleView?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI32SystemTextClarificationTitleViewVSgMd, &_s9SnippetUI32SystemTextClarificationTitleViewVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t Symbols.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x70752E776F727261;
  v2 = 0x69662E6F65646976;
  if (a1 != 6)
  {
    v2 = 0x6B72616D78;
  }

  v3 = 0xD000000000000019;
  if (a1 != 4)
  {
    v3 = 0x69662E656E6F6870;
  }

  if (a1 <= 5u)
  {
    v2 = v3;
  }

  v4 = 0x7269632E6F666E69;
  if (a1 != 2)
  {
    v4 = 0x662E656C63726963;
  }

  if (!a1)
  {
    v1 = 0xD000000000000010;
  }

  if (a1 > 1u)
  {
    v1 = v4;
  }

  if (a1 <= 3u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t static RFImage.sfSymbol(_:)(unsigned __int8 a1)
{
  static RFImage.symbol(_:dark:)();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Symbols(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = Symbols.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == Symbols.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Symbols()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Symbols.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Symbols(uint64_t a1)
{
  Symbols.rawValue.getter(*v1);
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Symbols(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Symbols.rawValue.getter(v2);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance Symbols@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized Symbols.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance Symbols@<X0>(unint64_t *a1@<X8>)
{
  result = Symbols.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t specialized Symbols.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Symbols.init(rawValue:), v2);

  if (v3 >= 8)
  {
    return 8;
  }

  else
  {
    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type Symbols and conformance Symbols(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type Symbols and conformance Symbols;
  if (!lazy protocol witness table cache variable for type Symbols and conformance Symbols)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Symbols and conformance Symbols);
  }

  return result;
}

uint64_t type metadata accessor for ShowCallHistoryListView(uint64_t a1)
{
  result = type metadata singleton initialization cache for ShowCallHistoryListView;
  if (!type metadata singleton initialization cache for ShowCallHistoryListView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ShowCallHistoryListView.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for Context();
  _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_6(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68], MEMORY[0x277D63F58]);
  *a2 = EnvironmentObject.init()();
  a2[1] = v4;
  v5 = type metadata accessor for ShowCallHistoryListView(0);
  ActionHandler.init()();
  return outlined init with take of SearchCallHistoryModel(a1, a2 + *(v5 + 24), type metadata accessor for SearchCallHistoryModel);
}

uint64_t ShowCallHistoryListView.body.getter@<X0>(uint64_t a1@<X8>)
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
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA0D0P07SnippetB0E26lastComponentBottomSpacingyQrAL0k5StacklM0OFQOyAL0kN0VyAIyAkLE10separators_10isOverrideQr0I3Kit14SeparatorStyleO_SbtFQOyAkLE09componentM03top6bottomQr12CoreGraphics7CGFloatV_A0_tFQOy05PhoneiB0010ListHeaderD0V_Qo__Qo__AA7ForEachVySaySi6offset_A1_21SingleCallRecordModelV7elementtGSiAkLEAwxYQrA0__A0_tFQOyAA15ModifiedContentVyAkLEAR_ASQrAV_SbtFQOyA1_025ShowCallHistorySingleItemD0V_Qo_A1_29CarPlayDisambiguationListItemVG_Qo_GtGG_Qo__A1_04ListlD0VSgtGGMd, "<_");
  closure #1 in ShowCallHistoryListView.body.getter(v2, (a1 + *(v14 + 44)));
  LOBYTE(v2) = static Edge.Set.all.getter();
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA0G0P07SnippetB0E26lastComponentBottomSpacingyQrAJ0j5StackkL0OFQOyAJ0jM0VyAGyAiJE10separators_10isOverrideQr0H3Kit14SeparatorStyleO_SbtFQOyAiJE09componentL03top6bottomQr12CoreGraphics7CGFloatV_AZtFQOy05PhonehB0010ListHeaderG0V_Qo__Qo__AA7ForEachVySaySi6offset_A_21SingleCallRecordModelV7elementtGSiAiJEAuvWQrAZ_AZtFQOyACyAiJEAP_AQQrAT_SbtFQOyA_025ShowCallHistorySingleItemG0V_Qo_A_29CarPlayDisambiguationListItemVG_Qo_GtGG_Qo__A_04ListkG0VSgtGGAA011_BackgroundS8ModifierVyAA010BackgroundS0VGGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA0G0P07SnippetB0E26lastComponentBottomSpacingyQrAJ0j5StackkL0OFQOyAJ0jM0VyAGyAiJE10separators_10isOverrideQr0H3Kit14SeparatorStyleO_SbtFQOyAiJE09componentL03top6bottomQr12CoreGraphics7CGFloatV_AZtFQOy05PhonehB0010ListHeaderG0V_Qo__Qo__AA7ForEachVySaySi6offset_A_21SingleCallRecordModelV7elementtGSiAiJEAuvWQrAZ_AZtFQOyACyAiJEAP_AQQrAT_SbtFQOyA_025ShowCallHistorySingleItemG0V_Qo_A_29CarPlayDisambiguationListItemVG_Qo_GtGG_Qo__A_04ListkG0VSgtGGAA011_BackgroundS8ModifierVyAA010BackgroundS0VGGMR) + 36)) = v2;
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
  outlined init with copy of SearchCallHistoryModel(v13, v11, MEMORY[0x277CE0548]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA0G0P07SnippetB0E26lastComponentBottomSpacingyQrAJ0j5StackkL0OFQOyAJ0jM0VyAGyAiJE10separators_10isOverrideQr0H3Kit14SeparatorStyleO_SbtFQOyAiJE09componentL03top6bottomQr12CoreGraphics7CGFloatV_AZtFQOy05PhonehB0010ListHeaderG0V_Qo__Qo__AA7ForEachVySaySi6offset_A_21SingleCallRecordModelV7elementtGSiAiJEAuvWQrAZ_AZtFQOyACyAiJEAP_AQQrAT_SbtFQOyA_025ShowCallHistorySingleItemG0V_Qo_A_29CarPlayDisambiguationListItemVG_Qo_GtGG_Qo__A_04ListkG0VSgtGGAA011_BackgroundS8ModifierVyAA010BackgroundS0VGGAA41_ContainerRoundedRectangularShapeModifierVyAA22UnevenRoundedRectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA0G0P07SnippetB0E26lastComponentBottomSpacingyQrAJ0j5StackkL0OFQOyAJ0jM0VyAGyAiJE10separators_10isOverrideQr0H3Kit14SeparatorStyleO_SbtFQOyAiJE09componentL03top6bottomQr12CoreGraphics7CGFloatV_AZtFQOy05PhonehB0010ListHeaderG0V_Qo__Qo__AA7ForEachVySaySi6offset_A_21SingleCallRecordModelV7elementtGSiAiJEAuvWQrAZ_AZtFQOyACyAiJEAP_AQQrAT_SbtFQOyA_025ShowCallHistorySingleItemG0V_Qo_A_29CarPlayDisambiguationListItemVG_Qo_GtGG_Qo__A_04ListkG0VSgtGGAA011_BackgroundS8ModifierVyAA010BackgroundS0VGGAA41_ContainerRoundedRectangularShapeModifierVyAA22UnevenRoundedRectangleVGGMR);
  _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_6(&lazy protocol witness table cache variable for type UnevenRoundedRectangle and conformance UnevenRoundedRectangle, MEMORY[0x277CE0548], MEMORY[0x277CE0528]);
  _ContainerRoundedRectangularShapeModifier.init(shape:)();
  return outlined destroy of UnevenRoundedRectangle(v13, MEMORY[0x277CE0548]);
}

uint64_t closure #1 in ShowCallHistoryListView.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v49[1] = a1;
  v59 = a2;
  v3 = type metadata accessor for ListBottomView(0);
  v4 = *(v3 - 8);
  v56 = v3;
  v57 = v4;
  MEMORY[0x28223BE20](v3);
  v49[0] = v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14PhoneSnippetUI14ListBottomViewVSgMd, &_s14PhoneSnippetUI14ListBottomViewVSgMR);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v58 = v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v55 = v49 - v9;
  v51 = type metadata accessor for ComponentStackBottomSpacing();
  v10 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v12 = v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ShowCallHistoryListView(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI14ComponentStackVy05SwiftB09TupleViewVyAD0G0PAAE10separators_10isOverrideQr0A3Kit14SeparatorStyleO_SbtFQOyAhAE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AStFQOy05PhoneaB0010ListHeaderG0V_Qo__Qo__AD7ForEachVySaySi6offset_AT21SingleCallRecordModelV7elementtGSiAhAEAnoPQrAS_AStFQOyAD15ModifiedContentVyAhAEAI_AJQrAM_SbtFQOyAT025ShowCallHistorySingleItemG0V_Qo_AT021CarPlayDisambiguationV4ItemVG_Qo_GtGGMd, &_s9SnippetUI14ComponentStackVy05SwiftB09TupleViewVyAD0G0PAAE10separators_10isOverrideQr0A3Kit14SeparatorStyleO_SbtFQOyAhAE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AStFQOy05PhoneaB0010ListHeaderG0V_Qo__Qo__AD7ForEachVySaySi6offset_AT21SingleCallRecordModelV7elementtGSiAhAEAnoPQrAS_AStFQOyAD15ModifiedContentVyAhAEAI_AJQrAM_SbtFQOyAT025ShowCallHistorySingleItemG0V_Qo_AT021CarPlayDisambiguationV4ItemVG_Qo_GtGGMR);
  v16 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v18 = v49 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E26lastComponentBottomSpacingyQrAD0f5StackgH0OFQOyAD0fI0VyAA05TupleC0VyAcDE10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAcDE09componentH03top6bottomQr12CoreGraphics7CGFloatV_AVtFQOy05PhonedB0010ListHeaderC0V_Qo__Qo__AA7ForEachVySaySi6offset_AW21SingleCallRecordModelV7elementtGSiAcDEAqrSQrAV_AVtFQOyAA15ModifiedContentVyAcDEAL_AMQrAP_SbtFQOyAW025ShowCallHistorySingleItemC0V_Qo_AW021CarPlayDisambiguationX4ItemVG_Qo_GtGG_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E26lastComponentBottomSpacingyQrAD0f5StackgH0OFQOyAD0fI0VyAA05TupleC0VyAcDE10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAcDE09componentH03top6bottomQr12CoreGraphics7CGFloatV_AVtFQOy05PhonedB0010ListHeaderC0V_Qo__Qo__AA7ForEachVySaySi6offset_AW21SingleCallRecordModelV7elementtGSiAcDEAqrSQrAV_AVtFQOyAA15ModifiedContentVyAcDEAL_AMQrAP_SbtFQOyAW025ShowCallHistorySingleItemC0V_Qo_AW021CarPlayDisambiguationX4ItemVG_Qo_GtGG_Qo_MR);
  v53 = *(v19 - 8);
  v54 = v19;
  v20 = MEMORY[0x28223BE20](v19);
  v52 = v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = v49 - v22;
  outlined init with copy of SearchCallHistoryModel(a1, v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ShowCallHistoryListView);
  v24 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v25 = swift_allocObject();
  outlined init with take of SearchCallHistoryModel(v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24, type metadata accessor for ShowCallHistoryListView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA0D0P07SnippetB0E10separators_10isOverrideQr0E3Kit14SeparatorStyleO_SbtFQOyAeFE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AQtFQOy05PhoneeB0010ListHeaderD0V_Qo__Qo__AA7ForEachVySaySi6offset_AR21SingleCallRecordModelV7elementtGSiAeFEAlmNQrAQ_AQtFQOyAA15ModifiedContentVyAeFEAG_AHQrAK_SbtFQOyAR04Showz7Historyy4ItemD0V_Qo_AR021CarPlayDisambiguationT4ItemVG_Qo_GtGMd, &_s7SwiftUI9TupleViewVyAA0D0P07SnippetB0E10separators_10isOverrideQr0E3Kit14SeparatorStyleO_SbtFQOyAeFE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AQtFQOy05PhoneeB0010ListHeaderD0V_Qo__Qo__AA7ForEachVySaySi6offset_AR21SingleCallRecordModelV7elementtGSiAeFEAlmNQrAQ_AQtFQOyAA15ModifiedContentVyAeFEAG_AHQrAK_SbtFQOyAR04Showz7Historyy4ItemD0V_Qo_AR021CarPlayDisambiguationT4ItemVG_Qo_GtGMR);
  lazy protocol witness table accessor for type TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(<<opaque return type of View.separators(_:isOverride:)>>.0, ForEach<[(offset: Int, element: SingleCallRecordModel)], Int, <<opaque return type of View.componentSpacing(top:bottom:)>>.0>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA0D0P07SnippetB0E10separators_10isOverrideQr0E3Kit14SeparatorStyleO_SbtFQOyAeFE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AQtFQOy05PhoneeB0010ListHeaderD0V_Qo__Qo__AA7ForEachVySaySi6offset_AR21SingleCallRecordModelV7elementtGSiAeFEAlmNQrAQ_AQtFQOyAA15ModifiedContentVyAeFEAG_AHQrAK_SbtFQOyAR04Showz7Historyy4ItemD0V_Qo_AR021CarPlayDisambiguationT4ItemVG_Qo_GtGMd, &_s7SwiftUI9TupleViewVyAA0D0P07SnippetB0E10separators_10isOverrideQr0E3Kit14SeparatorStyleO_SbtFQOyAeFE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AQtFQOy05PhoneeB0010ListHeaderD0V_Qo__Qo__AA7ForEachVySaySi6offset_AR21SingleCallRecordModelV7elementtGSiAeFEAlmNQrAQ_AQtFQOyAA15ModifiedContentVyAeFEAG_AHQrAK_SbtFQOyAR04Showz7Historyy4ItemD0V_Qo_AR021CarPlayDisambiguationT4ItemVG_Qo_GtGMR, MEMORY[0x277CE14C8]);
  v26 = v23;
  ComponentStack.init(content:)();
  v27 = v51;
  (*(v10 + 104))(v12, *MEMORY[0x277D63EC8], v51);
  lazy protocol witness table accessor for type TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type ComponentStack<TupleView<(<<opaque return type of View.separators(_:isOverride:)>>.0, ForEach<[(offset: Int, element: SingleCallRecordModel)], Int, <<opaque return type of View.componentSpacing(top:bottom:)>>.0>)>> and conformance ComponentStack<A>, &_s9SnippetUI14ComponentStackVy05SwiftB09TupleViewVyAD0G0PAAE10separators_10isOverrideQr0A3Kit14SeparatorStyleO_SbtFQOyAhAE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AStFQOy05PhoneaB0010ListHeaderG0V_Qo__Qo__AD7ForEachVySaySi6offset_AT21SingleCallRecordModelV7elementtGSiAhAEAnoPQrAS_AStFQOyAD15ModifiedContentVyAhAEAI_AJQrAM_SbtFQOyAT025ShowCallHistorySingleItemG0V_Qo_AT021CarPlayDisambiguationV4ItemVG_Qo_GtGGMd, &_s9SnippetUI14ComponentStackVy05SwiftB09TupleViewVyAD0G0PAAE10separators_10isOverrideQr0A3Kit14SeparatorStyleO_SbtFQOyAhAE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AStFQOy05PhoneaB0010ListHeaderG0V_Qo__Qo__AD7ForEachVySaySi6offset_AT21SingleCallRecordModelV7elementtGSiAhAEAnoPQrAS_AStFQOyAD15ModifiedContentVyAhAEAI_AJQrAM_SbtFQOyAT025ShowCallHistorySingleItemG0V_Qo_AT021CarPlayDisambiguationV4ItemVG_Qo_GtGGMR, MEMORY[0x277D63B98]);
  v28 = v50;
  View.lastComponentBottomSpacing(_:)();
  (*(v10 + 8))(v12, v27);
  (*(v16 + 8))(v18, v28);
  type metadata accessor for SearchCallHistoryModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
  Loggable.wrappedValue.getter();
  if (v60 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
    Loggable.wrappedValue.getter();
    v29 = v60;
    v30 = v61;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMR);
    v31 = CodableAceObject.wrappedValue.getter();
    type metadata accessor for Context();
    _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_6(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68], MEMORY[0x277D63F58]);
    v32 = EnvironmentObject.init()();
    v33 = v49[0];
    *v49[0] = v32;
    *(v33 + 8) = v34;
    v35 = v56;
    ActionHandler.init()();
    v36 = (v33 + *(v35 + 24));
    *v36 = v29;
    v36[1] = v30;
    *(v33 + *(v35 + 28)) = v31;
    v37 = v55;
    outlined init with take of SearchCallHistoryModel(v33, v55, type metadata accessor for ListBottomView);
    v38 = 0;
    v39 = v35;
  }

  else
  {
    v38 = 1;
    v37 = v55;
    v39 = v56;
  }

  (*(v57 + 56))(v37, v38, 1, v39);
  v41 = v52;
  v40 = v53;
  v42 = *(v53 + 16);
  v43 = v54;
  v42(v52, v26, v54);
  v44 = v58;
  outlined init with copy of ListBottomView?(v37, v58);
  v45 = v59;
  v42(v59, v41, v43);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E26lastComponentBottomSpacingyQrAD0f5StackgH0OFQOyAD0fI0VyAA05TupleC0VyAcDE10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAcDE09componentH03top6bottomQr12CoreGraphics7CGFloatV_AVtFQOy05PhonedB0010ListHeaderC0V_Qo__Qo__AA7ForEachVySaySi6offset_AW21SingleCallRecordModelV7elementtGSiAcDEAqrSQrAV_AVtFQOyAA15ModifiedContentVyAcDEAL_AMQrAP_SbtFQOyAW025ShowCallHistorySingleItemC0V_Qo_AW021CarPlayDisambiguationX4ItemVG_Qo_GtGG_Qo__AW0xgC0VSgtMd, &_s7SwiftUI4ViewP07SnippetB0E26lastComponentBottomSpacingyQrAD0f5StackgH0OFQOyAD0fI0VyAA05TupleC0VyAcDE10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAcDE09componentH03top6bottomQr12CoreGraphics7CGFloatV_AVtFQOy05PhonedB0010ListHeaderC0V_Qo__Qo__AA7ForEachVySaySi6offset_AW21SingleCallRecordModelV7elementtGSiAcDEAqrSQrAV_AVtFQOyAA15ModifiedContentVyAcDEAL_AMQrAP_SbtFQOyAW025ShowCallHistorySingleItemC0V_Qo_AW021CarPlayDisambiguationX4ItemVG_Qo_GtGG_Qo__AW0xgC0VSgtMR);
  outlined init with copy of ListBottomView?(v44, &v45[*(v46 + 48)]);
  outlined destroy of ListBottomView?(v37);
  v47 = *(v40 + 8);
  v47(v26, v43);
  outlined destroy of ListBottomView?(v44);
  return (v47)(v41, v43);
}

uint64_t closure #1 in closure #1 in ShowCallHistoryListView.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v49 = a1;
  v59 = a2;
  v3 = type metadata accessor for ShowCallHistoryListView(0);
  v4 = v3 - 8;
  v54 = *(v3 - 8);
  v53 = *(v54 + 64);
  MEMORY[0x28223BE20](v3);
  v51 = v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySaySi6offset_012PhoneSnippetB021SingleCallRecordModelV7elementtGSiAA4ViewP0gB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_ARtFQOyAA15ModifiedContentVyAkLE10separators_10isOverrideQr0G3Kit14SeparatorStyleO_SbtFQOyAE04Showi7Historyh4ItemM0V_Qo_AE29CarPlayDisambiguationListItemVG_Qo_GMd, &_s7SwiftUI7ForEachVySaySi6offset_012PhoneSnippetB021SingleCallRecordModelV7elementtGSiAA4ViewP0gB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_ARtFQOyAA15ModifiedContentVyAkLE10separators_10isOverrideQr0G3Kit14SeparatorStyleO_SbtFQOyAE04Showi7Historyh4ItemM0V_Qo_AE29CarPlayDisambiguationListItemVG_Qo_GMR);
  v57 = *(v6 - 8);
  v58 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v56 = v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v62 = v46 - v9;
  v48 = type metadata accessor for SeparatorStyle();
  v10 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v12 = v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOy05PhonedB0010ListHeaderC0V_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOy05PhonedB0010ListHeaderC0V_Qo_MR);
  v13 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v15 = v46 - v14;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAcDE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AOtFQOy05PhonedB0010ListHeaderC0V_Qo__Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAcDE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AOtFQOy05PhonedB0010ListHeaderC0V_Qo__Qo_MR);
  v61 = *(v55 - 8);
  v16 = MEMORY[0x28223BE20](v55);
  v52 = v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v60 = v46 - v18;
  v46[1] = a1 + *(v4 + 32);
  type metadata accessor for SearchCallHistoryModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  v19 = Loggable.wrappedValue.getter();
  v22 = lazy protocol witness table accessor for type ListHeaderView and conformance ListHeaderView(v19, v20, v21);
  View.componentSpacing(top:bottom:)();

  v23 = v48;
  (*(v10 + 104))(v12, *MEMORY[0x277D62F28], v48);
  v64 = &type metadata for ListHeaderView;
  v65 = v22;
  v50 = MEMORY[0x277D63988];
  swift_getOpaqueTypeConformance2();
  v24 = v47;
  View.separators(_:isOverride:)();
  (*(v10 + 8))(v12, v23);
  (*(v13 + 8))(v15, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySay05PhoneA2UI21SingleCallRecordModelVGGMd, &_s10SnippetKit8LoggableVySay05PhoneA2UI21SingleCallRecordModelVGGMR);
  Loggable.wrappedValue.getter();
  v25 = specialized _copySequenceToContiguousArray<A>(_:)(v64);

  v63 = v25;
  swift_getKeyPath();
  v26 = v51;
  outlined init with copy of SearchCallHistoryModel(v49, v51, type metadata accessor for ShowCallHistoryListView);
  v27 = (*(v54 + 80) + 16) & ~*(v54 + 80);
  v28 = swift_allocObject();
  outlined init with take of SearchCallHistoryModel(v26, v28 + v27, type metadata accessor for ShowCallHistoryListView);
  v29 = swift_allocObject();
  *(v29 + 16) = partial apply for closure #1 in closure #1 in closure #1 in ShowCallHistoryListView.body.getter;
  *(v29 + 24) = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySi6offset_14PhoneSnippetUI21SingleCallRecordModelV7elementtGMd, &_sSaySi6offset_14PhoneSnippetUI21SingleCallRecordModelV7elementtGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOyAA15ModifiedContentVyAcDE10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOy05PhonedB0025ShowCallHistorySingleItemC0V_Qo_AR025CarPlayDisambiguationListY0VG_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOyAA15ModifiedContentVyAcDE10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOy05PhonedB0025ShowCallHistorySingleItemC0V_Qo_AR025CarPlayDisambiguationListY0VG_Qo_MR);
  lazy protocol witness table accessor for type TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type [(offset: Int, element: SingleCallRecordModel)] and conformance [A], &_sSaySi6offset_14PhoneSnippetUI21SingleCallRecordModelV7elementtGMd, &_sSaySi6offset_14PhoneSnippetUI21SingleCallRecordModelV7elementtGMR, MEMORY[0x277D83980]);
  v30 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewP07SnippetB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOy05PhonefB0025ShowCallHistorySingleItemE0V_Qo_AL025CarPlayDisambiguationListR0VGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewP07SnippetB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOy05PhonefB0025ShowCallHistorySingleItemE0V_Qo_AL025CarPlayDisambiguationListR0VGMR);
  v31 = lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.separators(_:isOverride:)>>.0, CarPlayDisambiguationListItem> and conformance <> ModifiedContent<A, B>();
  v64 = v30;
  v65 = v31;
  swift_getOpaqueTypeConformance2();
  v32 = v62;
  ForEach<>.init(_:id:content:)();
  v33 = *(v61 + 16);
  v34 = v52;
  v35 = v55;
  v33(v52, v60, v55);
  v36 = v56;
  v37 = v57;
  v38 = *(v57 + 16);
  v39 = v32;
  v40 = v58;
  v38(v56, v39, v58);
  v41 = v59;
  v33(v59, v34, v35);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAcDE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AOtFQOy05PhonedB0010ListHeaderC0V_Qo__Qo__AA7ForEachVySaySi6offset_AP21SingleCallRecordModelV7elementtGSiAcDEAjkLQrAO_AOtFQOyAA15ModifiedContentVyAcDEAE_AFQrAI_SbtFQOyAP04Showy7Historyx4ItemC0V_Qo_AP021CarPlayDisambiguationS4ItemVG_Qo_GtMd, &_s7SwiftUI4ViewP07SnippetB0E10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAcDE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AOtFQOy05PhonedB0010ListHeaderC0V_Qo__Qo__AA7ForEachVySaySi6offset_AP21SingleCallRecordModelV7elementtGSiAcDEAjkLQrAO_AOtFQOyAA15ModifiedContentVyAcDEAE_AFQrAI_SbtFQOyAP04Showy7Historyx4ItemC0V_Qo_AP021CarPlayDisambiguationS4ItemVG_Qo_GtMR);
  v38(&v41[*(v42 + 48)], v36, v40);
  v43 = *(v37 + 8);
  v43(v62, v40);
  v44 = *(v61 + 8);
  v44(v60, v35);
  v43(v36, v40);
  return (v44)(v34, v35);
}

uint64_t closure #1 in closure #1 in closure #1 in ShowCallHistoryListView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v40 = a3;
  v51 = a1;
  v52 = a4;
  v5 = type metadata accessor for SeparatorStyle();
  v49 = *(v5 - 8);
  v50 = v5;
  MEMORY[0x28223BE20](v5);
  v48 = &v38[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for Font.TextStyle();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v38[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for ShowCallHistorySingleItemView(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v38[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOy05PhonedB0025ShowCallHistorySingleItemC0V_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOy05PhonedB0025ShowCallHistorySingleItemC0V_Qo_MR);
  v45 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v43 = &v38[-v14];
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewP07SnippetB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOy05PhonefB0025ShowCallHistorySingleItemE0V_Qo_AL025CarPlayDisambiguationListR0VGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewP07SnippetB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOy05PhonefB0025ShowCallHistorySingleItemE0V_Qo_AL025CarPlayDisambiguationListR0VGMR);
  MEMORY[0x28223BE20](v46);
  v44 = &v38[-v15];
  outlined init with copy of SearchCallHistoryModel(a2, v13 + *(v11 + 32), type metadata accessor for SingleCallRecordModel);
  type metadata accessor for ShowCallHistoryListView(0);
  type metadata accessor for SearchCallHistoryModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
  Loggable.wrappedValue.getter();
  v39 = v53;
  v16 = type metadata accessor for Context();
  v41 = _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_6(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68], MEMORY[0x277D63F58]);
  v42 = v16;
  *v13 = EnvironmentObject.init()();
  v13[1] = v17;
  ActionHandler.init()();
  v53 = 0x4041800000000000;
  v18 = *MEMORY[0x277CE0A60];
  v19 = *(v8 + 104);
  v20 = v19(v10, v18, v7);
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat(v20, v21, v22);
  ScaledMetric.init(wrappedValue:relativeTo:)();
  v53 = 0x4041800000000000;
  v19(v10, v18, v7);
  ScaledMetric.init(wrappedValue:relativeTo:)();
  v23 = v40;
  *(v13 + *(v11 + 36)) = v39;
  if (*v23)
  {
    v24 = *v23;
    dispatch thunk of Context.currentIdiom.getter();
    v25 = VRXIdiom.isCarPlay.getter();

    v27 = v48;
    v26 = v49;
    v28 = MEMORY[0x277D62F38];
    if ((v25 & 1) == 0)
    {
      v28 = MEMORY[0x277D62F28];
    }

    v29 = v50;
    (*(v49 + 104))(v48, *v28, v50);
    _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_6(&lazy protocol witness table cache variable for type ShowCallHistorySingleItemView and conformance ShowCallHistorySingleItemView, type metadata accessor for ShowCallHistorySingleItemView, &protocol conformance descriptor for ShowCallHistorySingleItemView);
    v30 = v43;
    View.separators(_:isOverride:)();
    (*(v26 + 8))(v27, v29);
    outlined destroy of UnevenRoundedRectangle(v13, type metadata accessor for ShowCallHistorySingleItemView);
    v31 = EnvironmentObject.init()();
    v33 = v32;
    v34 = v44;
    (*(v45 + 32))(v44, v30, v47);
    v35 = v51 == 0;
    v36 = v34 + *(v46 + 36);
    *v36 = v31;
    *(v36 + 8) = v33;
    *(v36 + 16) = v35;
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.separators(_:isOverride:)>>.0, CarPlayDisambiguationListItem> and conformance <> ModifiedContent<A, B>();
    View.componentSpacing(top:bottom:)();
    return sub_25E57A900(v34);
  }

  else
  {
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_25E579C58(unint64_t *a1, uint64_t a2, uint64_t a3)
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
      v14 = type metadata accessor for SearchCallHistoryModel(0);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 24);

      return v15(v16, a2, v14);
    }
  }
}

void *sub_25E579D9C(void *result, uint64_t a2, int a3, uint64_t a4)
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
      v13 = type metadata accessor for SearchCallHistoryModel(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void type metadata completion function for ShowCallHistoryListView(uint64_t a1)
{
  type metadata accessor for EnvironmentObject<Context>(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ActionHandler();
    if (v2 <= 0x3F)
    {
      type metadata accessor for SearchCallHistoryModel(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<VStack<TupleView<(<<opaque return type of View.lastComponentBottomSpacing(_:)>>.0, ListBottomView?)>>, _BackgroundStyleModifier<BackgroundStyle>>, _ContainerRoundedRectangularShapeModifier<UnevenRoundedRectangle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<TupleView<(<<opaque return type of View.lastComponentBottomSpacing(_:)>>.0, ListBottomView?)>>, _BackgroundStyleModifier<BackgroundStyle>>, _ContainerRoundedRectangularShapeModifier<UnevenRoundedRectangle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<TupleView<(<<opaque return type of View.lastComponentBottomSpacing(_:)>>.0, ListBottomView?)>>, _BackgroundStyleModifier<BackgroundStyle>>, _ContainerRoundedRectangularShapeModifier<UnevenRoundedRectangle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA0G0P07SnippetB0E26lastComponentBottomSpacingyQrAJ0j5StackkL0OFQOyAJ0jM0VyAGyAiJE10separators_10isOverrideQr0H3Kit14SeparatorStyleO_SbtFQOyAiJE09componentL03top6bottomQr12CoreGraphics7CGFloatV_AZtFQOy05PhonehB0010ListHeaderG0V_Qo__Qo__AA7ForEachVySaySi6offset_A_21SingleCallRecordModelV7elementtGSiAiJEAuvWQrAZ_AZtFQOyACyAiJEAP_AQQrAT_SbtFQOyA_025ShowCallHistorySingleItemG0V_Qo_A_29CarPlayDisambiguationListItemVG_Qo_GtGG_Qo__A_04ListkG0VSgtGGAA011_BackgroundS8ModifierVyAA010BackgroundS0VGGAA41_ContainerRoundedRectangularShapeModifierVyAA22UnevenRoundedRectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA0G0P07SnippetB0E26lastComponentBottomSpacingyQrAJ0j5StackkL0OFQOyAJ0jM0VyAGyAiJE10separators_10isOverrideQr0H3Kit14SeparatorStyleO_SbtFQOyAiJE09componentL03top6bottomQr12CoreGraphics7CGFloatV_AZtFQOy05PhonehB0010ListHeaderG0V_Qo__Qo__AA7ForEachVySaySi6offset_A_21SingleCallRecordModelV7elementtGSiAiJEAuvWQrAZ_AZtFQOyACyAiJEAP_AQQrAT_SbtFQOyA_025ShowCallHistorySingleItemG0V_Qo_A_29CarPlayDisambiguationListItemVG_Qo_GtGG_Qo__A_04ListkG0VSgtGGAA011_BackgroundS8ModifierVyAA010BackgroundS0VGGAA41_ContainerRoundedRectangularShapeModifierVyAA22UnevenRoundedRectangleVGGMR);
    lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(<<opaque return type of View.lastComponentBottomSpacing(_:)>>.0, ListBottomView?)>>, _BackgroundStyleModifier<BackgroundStyle>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type _ContainerRoundedRectangularShapeModifier<UnevenRoundedRectangle> and conformance _ContainerRoundedRectangularShapeModifier<A>, &_s7SwiftUI41_ContainerRoundedRectangularShapeModifierVyAA06UnevenD9RectangleVGMd, &_s7SwiftUI41_ContainerRoundedRectangularShapeModifierVyAA06UnevenD9RectangleVGMR, MEMORY[0x277CE08C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<TupleView<(<<opaque return type of View.lastComponentBottomSpacing(_:)>>.0, ListBottomView?)>>, _BackgroundStyleModifier<BackgroundStyle>>, _ContainerRoundedRectangularShapeModifier<UnevenRoundedRectangle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(<<opaque return type of View.lastComponentBottomSpacing(_:)>>.0, ListBottomView?)>>, _BackgroundStyleModifier<BackgroundStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(<<opaque return type of View.lastComponentBottomSpacing(_:)>>.0, ListBottomView?)>>, _BackgroundStyleModifier<BackgroundStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(<<opaque return type of View.lastComponentBottomSpacing(_:)>>.0, ListBottomView?)>>, _BackgroundStyleModifier<BackgroundStyle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA0G0P07SnippetB0E26lastComponentBottomSpacingyQrAJ0j5StackkL0OFQOyAJ0jM0VyAGyAiJE10separators_10isOverrideQr0H3Kit14SeparatorStyleO_SbtFQOyAiJE09componentL03top6bottomQr12CoreGraphics7CGFloatV_AZtFQOy05PhonehB0010ListHeaderG0V_Qo__Qo__AA7ForEachVySaySi6offset_A_21SingleCallRecordModelV7elementtGSiAiJEAuvWQrAZ_AZtFQOyACyAiJEAP_AQQrAT_SbtFQOyA_025ShowCallHistorySingleItemG0V_Qo_A_29CarPlayDisambiguationListItemVG_Qo_GtGG_Qo__A_04ListkG0VSgtGGAA011_BackgroundS8ModifierVyAA010BackgroundS0VGGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA0G0P07SnippetB0E26lastComponentBottomSpacingyQrAJ0j5StackkL0OFQOyAJ0jM0VyAGyAiJE10separators_10isOverrideQr0H3Kit14SeparatorStyleO_SbtFQOyAiJE09componentL03top6bottomQr12CoreGraphics7CGFloatV_AZtFQOy05PhonehB0010ListHeaderG0V_Qo__Qo__AA7ForEachVySaySi6offset_A_21SingleCallRecordModelV7elementtGSiAiJEAuvWQrAZ_AZtFQOyACyAiJEAP_AQQrAT_SbtFQOyA_025ShowCallHistorySingleItemG0V_Qo_A_29CarPlayDisambiguationListItemVG_Qo_GtGG_Qo__A_04ListkG0VSgtGGAA011_BackgroundS8ModifierVyAA010BackgroundS0VGGMR);
    lazy protocol witness table accessor for type TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(<<opaque return type of View.lastComponentBottomSpacing(_:)>>.0, ListBottomView?)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA0E0P07SnippetB0E26lastComponentBottomSpacingyQrAH0h5StackiJ0OFQOyAH0hK0VyAEyAgHE10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAgHE09componentJ03top6bottomQr12CoreGraphics7CGFloatV_AXtFQOy05PhonefB0010ListHeaderE0V_Qo__Qo__AA7ForEachVySaySi6offset_AY21SingleCallRecordModelV7elementtGSiAgHEAstUQrAX_AXtFQOyAA15ModifiedContentVyAgHEAN_AOQrAR_SbtFQOyAY025ShowCallHistorySingleItemE0V_Qo_AY021CarPlayDisambiguationY4ItemVG_Qo_GtGG_Qo__AY0yiE0VSgtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA0E0P07SnippetB0E26lastComponentBottomSpacingyQrAH0h5StackiJ0OFQOyAH0hK0VyAEyAgHE10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAgHE09componentJ03top6bottomQr12CoreGraphics7CGFloatV_AXtFQOy05PhonefB0010ListHeaderE0V_Qo__Qo__AA7ForEachVySaySi6offset_AY21SingleCallRecordModelV7elementtGSiAgHEAstUQrAX_AXtFQOyAA15ModifiedContentVyAgHEAN_AOQrAR_SbtFQOyAY025ShowCallHistorySingleItemE0V_Qo_AY021CarPlayDisambiguationY4ItemVG_Qo_GtGG_Qo__AY0yiE0VSgtGGMR, MEMORY[0x277CE11A0]);
    lazy protocol witness table accessor for type TupleView<(EmergencyCountdownSash, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>>, _PaddingLayout>, _FlexFrameLayout>, Divider, BinaryButtonView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type _BackgroundStyleModifier<BackgroundStyle> and conformance _BackgroundStyleModifier<A>, &_s7SwiftUI24_BackgroundStyleModifierVyAA0cD0VGMd, &_s7SwiftUI24_BackgroundStyleModifierVyAA0cD0VGMR, MEMORY[0x277CE0720]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(<<opaque return type of View.lastComponentBottomSpacing(_:)>>.0, ListBottomView?)>>, _BackgroundStyleModifier<BackgroundStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in ShowCallHistoryListView.body.getter@<X0>(char *a1@<X8>)
{
  v3 = *(type metadata accessor for ShowCallHistoryListView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return closure #1 in closure #1 in ShowCallHistoryListView.body.getter(v4, a1);
}

uint64_t outlined init with copy of ListBottomView?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14PhoneSnippetUI14ListBottomViewVSgMd, &_s14PhoneSnippetUI14ListBottomViewVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of ListBottomView?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14PhoneSnippetUI14ListBottomViewVSgMd, &_s14PhoneSnippetUI14ListBottomViewVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of SearchCallHistoryModel(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ListHeaderView and conformance ListHeaderView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type ListHeaderView and conformance ListHeaderView;
  if (!lazy protocol witness table cache variable for type ListHeaderView and conformance ListHeaderView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ListHeaderView and conformance ListHeaderView);
  }

  return result;
}

uint64_t objectdestroyTm_9()
{
  v1 = (type metadata accessor for ShowCallHistoryListView(0) - 8);
  v2 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));

  v3 = v1[7];
  v4 = type metadata accessor for ActionHandler();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);
  v5 = v2 + v1[8];

  v6 = type metadata accessor for SearchCallHistoryModel(0);
  v7 = v6[5];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  v9 = *(*(v8 - 8) + 8);
  v9(&v5[v7], v8);
  v10 = v6[6];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySay05PhoneA2UI21SingleCallRecordModelVGGMd, &_s10SnippetKit8LoggableVySay05PhoneA2UI21SingleCallRecordModelVGGMR);
  (*(*(v11 - 8) + 8))(&v5[v10], v11);
  v9(&v5[v6[7]], v8);
  v9(&v5[v6[8]], v8);
  v12 = v6[9];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
  v14 = *(*(v13 - 8) + 8);
  v14(&v5[v12], v13);
  v14(&v5[v6[10]], v13);
  v15 = v6[11];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMR);
  (*(*(v16 - 8) + 8))(&v5[v15], v16);

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in ShowCallHistoryListView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(type metadata accessor for ShowCallHistoryListView(0) - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return closure #1 in closure #1 in closure #1 in ShowCallHistoryListView.body.getter(a1, a2, v8, a3);
}

uint64_t sub_25E57A610()
{

  return swift_deallocObject();
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@unowned Int, @in_guaranteed SingleCallRecordModel) -> (@out <<opaque return type of View.componentSpacing(top:bottom:)>>.0)(char *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_14PhoneSnippetUI21SingleCallRecordModelV7elementtMd, &_sSi6offset_14PhoneSnippetUI21SingleCallRecordModelV7elementtMR);
  return v3(v4, &a1[*(v5 + 48)]);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.separators(_:isOverride:)>>.0, CarPlayDisambiguationListItem> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.separators(_:isOverride:)>>.0, CarPlayDisambiguationListItem> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.separators(_:isOverride:)>>.0, CarPlayDisambiguationListItem> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewP07SnippetB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOy05PhonefB0025ShowCallHistorySingleItemE0V_Qo_AL025CarPlayDisambiguationListR0VGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewP07SnippetB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOy05PhonefB0025ShowCallHistorySingleItemE0V_Qo_AL025CarPlayDisambiguationListR0VGMR);
    type metadata accessor for ShowCallHistorySingleItemView(255);
    _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_6(&lazy protocol witness table cache variable for type ShowCallHistorySingleItemView and conformance ShowCallHistorySingleItemView, type metadata accessor for ShowCallHistorySingleItemView, &protocol conformance descriptor for ShowCallHistorySingleItemView);
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type CarPlayDisambiguationListItem and conformance CarPlayDisambiguationListItem(OpaqueTypeConformance2, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.separators(_:isOverride:)>>.0, CarPlayDisambiguationListItem> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.separators(_:isOverride:)>>.0, CarPlayDisambiguationListItem> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.separators(_:isOverride:)>>.0, CarPlayDisambiguationListItem> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewP07SnippetB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOy05PhonefB0027ShowPlayVoicemailSingleItemE0V_Qo_AL03Caro18DisambiguationListR0VGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewP07SnippetB0E10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOy05PhonefB0027ShowPlayVoicemailSingleItemE0V_Qo_AL03Caro18DisambiguationListR0VGMR);
    type metadata accessor for ShowPlayVoicemailSingleItemView(255);
    _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_7(&lazy protocol witness table cache variable for type ShowPlayVoicemailSingleItemView and conformance ShowPlayVoicemailSingleItemView, type metadata accessor for ShowPlayVoicemailSingleItemView, &protocol conformance descriptor for ShowPlayVoicemailSingleItemView);
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type CarPlayDisambiguationListItem and conformance CarPlayDisambiguationListItem(OpaqueTypeConformance2, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.separators(_:isOverride:)>>.0, CarPlayDisambiguationListItem> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_6(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined init with copy of SearchCallHistoryModel(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}