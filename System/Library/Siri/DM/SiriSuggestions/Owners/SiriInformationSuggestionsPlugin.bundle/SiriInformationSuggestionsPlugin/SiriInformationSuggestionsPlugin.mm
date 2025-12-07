Swift::Int SiriSuggestionsFeatureFlags.hashValue.getter()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SiriSuggestionsFeatureFlags(uint64_t a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t one-time initialization function for mathIntentNames(uint64_t a1)
{
  return one-time initialization function for mathIntentNames(a1, &static SuggestionConstants.mathSuggestionIntents.getter, &static InfoServerSuggestionAssetProvider.mathIntentNames);
}

{
  return one-time initialization function for mathIntentNames(a1, &static SuggestionConstants.mathSuggestionIntents.getter, &static InfoActionKeyMapper.mathIntentNames);
}

uint64_t *InfoServerSuggestionAssetProvider.mathIntentNames.unsafeMutableAddressor()
{
  if (one-time initialization token for mathIntentNames != -1)
  {
    swift_once();
  }

  return &static InfoServerSuggestionAssetProvider.mathIntentNames;
}

uint64_t *InfoServerSuggestionAssetProvider.weatherIntentNames.unsafeMutableAddressor()
{
  if (one-time initialization token for weatherIntentNames != -1)
  {
    swift_once();
  }

  return &static InfoServerSuggestionAssetProvider.weatherIntentNames;
}

uint64_t *InfoServerSuggestionAssetProvider.clockIntentNames.unsafeMutableAddressor()
{
  if (one-time initialization token for clockIntentNames != -1)
  {
    swift_once();
  }

  return &static InfoServerSuggestionAssetProvider.clockIntentNames;
}

uint64_t InfoServerSuggestionAssetProvider.getAssets(context:suggestion:)(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriSuggestionsKit5ImageOSgMd, &_s18SiriSuggestionsKit5ImageOSgMR);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v34 - v7;
  __swift_project_boxed_opaque_existential_1Tm(a2, a2[3]);
  v9 = CandidateSuggestion.getSuggestionId()();
  if (v9._countAndFlagsBits == static SuggestionConstants.serverSuggestionId.getter() && v9._object == v10)
  {
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v12 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  __swift_project_boxed_opaque_existential_1Tm(a2, a2[3]);
  v13 = dispatch thunk of CandidateSuggestion.params.getter();
  v14 = static SuggestionConstants.serverIntentName.getter();
  if (!*(v13 + 16))
  {

    goto LABEL_16;
  }

  v16 = specialized __RawDictionaryStorage.find<A>(_:)(v14, v15);
  v18 = v17;

  if ((v18 & 1) == 0)
  {
LABEL_16:

    goto LABEL_17;
  }

  outlined init with copy of Any(*(v13 + 56) + 32 * v16, &v35);

  v19 = swift_dynamicCast();
  if ((v19 & 1) == 0)
  {
LABEL_17:
    *v8 = 0x6C7070612E6D6F63;
    v24 = 0xEE00697269732E65;
    goto LABEL_18;
  }

  v21 = v34[2];
  v20 = v34[3];
  if (one-time initialization token for mathIntentNames != -1)
  {
    v19 = swift_once();
  }

  v35 = v21;
  v36 = v20;
  __chkstk_darwin(v19);
  v34[-2] = &v35;
  v23 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), &v34[-4], v22);
  if ((v23 & 1) == 0)
  {
    if (one-time initialization token for weatherIntentNames != -1)
    {
      v23 = swift_once();
    }

    v35 = v21;
    v36 = v20;
    __chkstk_darwin(v23);
    v34[-2] = &v35;
    v31 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, &v34[-4], v30);
    if (v31)
    {

      v24 = 0x800000000001BD50;
      *v8 = 0xD000000000000011;
      goto LABEL_18;
    }

    if (one-time initialization token for clockIntentNames != -1)
    {
      v31 = swift_once();
    }

    v35 = v21;
    v36 = v20;
    __chkstk_darwin(v31);
    v34[-2] = &v35;
    v33 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, &v34[-4], v32);

    if (v33)
    {
      v24 = 0x800000000001BCF0;
      *v8 = 0xD000000000000015;
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v24 = 0x800000000001BD10;
  *v8 = 0xD000000000000014;
LABEL_18:
  *(v8 + 1) = v24;
  v25 = enum case for Image.appIcon(_:);
  v26 = type metadata accessor for Image();
  v27 = *(v26 - 8);
  (*(v27 + 104))(v8, v25, v26);
  v28 = *(v27 + 56);
  v28(v8, 0, 1, v26);
  v28(v6, 1, 1, v26);
  return Assets.init(icon:inAppIcon:)();
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

uint64_t static InfoServerSuggestionDefinitionFactory.createOwnerDefinitions(builderFactory:)(uint64_t a1, uint64_t a2)
{
  v3[18] = a2;
  v3[19] = v2;
  v3[17] = a1;
  v4 = type metadata accessor for SiriSuggestions.IntentType();
  v3[20] = v4;
  v3[21] = *(v4 - 8);
  v3[22] = swift_task_alloc();
  v5 = type metadata accessor for DialogDetails();
  v3[23] = v5;
  v3[24] = *(v5 - 8);
  v3[25] = swift_task_alloc();

  return _swift_task_switch(static InfoServerSuggestionDefinitionFactory.createOwnerDefinitions(builderFactory:), 0, 0);
}

uint64_t static InfoServerSuggestionDefinitionFactory.createOwnerDefinitions(builderFactory:)()
{
  if (one-time initialization token for kOwnerInformation != -1)
  {
    swift_once();
  }

  v1 = v0[17];
  v2 = static SuggestionConstants.kOwnerInformation;
  v0[5] = type metadata accessor for DomainOwner();
  v0[6] = lazy protocol witness table accessor for type DomainOwner and conformance DomainOwner(&lazy protocol witness table cache variable for type DomainOwner and conformance DomainOwner, 255, &type metadata accessor for DomainOwner, &protocol conformance descriptor for DomainOwner);
  v0[2] = v2;

  v5 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[26] = v3;
  *v3 = v0;
  v3[1] = static InfoServerSuggestionDefinitionFactory.createOwnerDefinitions(builderFactory:);

  return v5(v0 + 2);
}

{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[23];
  v16 = v0[22];
  v17 = v0[21];
  v18 = v0[20];
  v15 = v0[19];
  type metadata accessor for INInformationUseCaseIntent();
  static SuggestionTransformers.mapAsyncINIntentValue<A>(extractor:)();
  static SuggestionConstants.relatedQuestionsSuggestionId.getter();
  *v1 = &async function pointer to specialized thunk for @escaping @callee_guaranteed (@in_guaranteed DialogProperties) -> (@out Any);
  v1[1] = 0;
  v14 = enum case for DialogDetails.catTemplateCallback(_:);
  v13 = *(v2 + 104);
  v13(v1);
  *(swift_task_alloc() + 16) = v0 + 7;
  dispatch thunk of SuggestionOwnerDefinitionBuilder.add(suggestionId:dialogDetails:builder:)();

  v4 = *(v2 + 8);
  v4(v1, v3);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  static SuggestionConstants.serverSuggestionId.getter();
  v5 = swift_allocObject();
  *(v5 + 16) = v15;
  v6 = swift_allocObject();
  *(v6 + 16) = partial apply for implicit closure #1 in static InfoServerSuggestionDefinitionFactory.createOwnerDefinitions(builderFactory:);
  *(v6 + 24) = v5;
  *v1 = &async function pointer to partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed DialogProperties) -> (@out Any);
  v1[1] = v6;
  (v13)(v1, v14, v3);
  dispatch thunk of SuggestionOwnerDefinitionBuilder.add(suggestionId:dialogDetails:builder:)();

  v4(v1, v3);
  v7 = type metadata accessor for InfoServerGenerator();
  v8 = swift_allocObject();
  v0[15] = v7;
  v0[16] = lazy protocol witness table accessor for type DomainOwner and conformance DomainOwner(&lazy protocol witness table cache variable for type InfoServerGenerator and conformance InfoServerGenerator, v9, type metadata accessor for InfoServerGenerator, &protocol conformance descriptor for InfoServerGenerator);
  v0[12] = v8;
  dispatch thunk of SuggestionOwnerDefinitionBuilder.withConversationalGenerator(_:)();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  static SiriSuggestions.IntentType.inIntent(intentType:)();
  dispatch thunk of SuggestionOwnerDefinitionBuilder.registerAdditionalIntentType(intent:)();

  (*(v17 + 8))(v16, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy18SiriSuggestionsKit15OwnerDefinition_pGMd, &_ss23_ContiguousArrayStorageCy18SiriSuggestionsKit15OwnerDefinition_pGMR);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1AD90;
  dispatch thunk of SuggestionOwnerDefinitionBuilder.build()();

  v11 = v0[1];

  return v11(v10);
}

uint64_t static InfoServerSuggestionDefinitionFactory.createOwnerDefinitions(builderFactory:)(uint64_t a1)
{
  v2 = *v1;
  *(v2 + 216) = a1;

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 16));

  return _swift_task_switch(static InfoServerSuggestionDefinitionFactory.createOwnerDefinitions(builderFactory:), 0, 0);
}

uint64_t static InfoServerSuggestionDefinitionFactory.serverUtteranceMapper(dialogProperties:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v38 = type metadata accessor for BehaviorAfterSpeaking();
  v3 = *(v38 - 8);
  __chkstk_darwin(v38);
  v39 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14TemplatingTextVSgMd, &_s11SiriKitFlow14TemplatingTextVSgMR);
  __chkstk_darwin(v5 - 8);
  v7 = v34 - v6;
  v8 = type metadata accessor for TemplatingText();
  v36 = *(v8 - 8);
  v37 = v8;
  __chkstk_darwin(v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  __chkstk_darwin(v9 - 8);
  v11 = v34 - v10;
  v12 = type metadata accessor for SpeakableString();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  v16 = dispatch thunk of DialogProperties.getParameters()();
  v17 = static SuggestionConstants.serverExampleUtterance.getter();
  if (!*(v16 + 16))
  {

    goto LABEL_6;
  }

  v35 = v7;
  v19 = specialized __RawDictionaryStorage.find<A>(_:)(v17, v18);
  v21 = v20;

  if ((v21 & 1) == 0)
  {
LABEL_6:

    (*(v13 + 56))(v11, 1, 1, v12);
    goto LABEL_7;
  }

  outlined init with copy of Any(*(v16 + 56) + 32 * v19, v41);

  v22 = swift_dynamicCast();
  (*(v13 + 56))(v11, v22 ^ 1u, 1, v12);
  if ((*(v13 + 48))(v11, 1, v12) != 1)
  {
    (*(v13 + 32))(v15, v11, v12);
    v23 = static SuggestionConstants.serverIntentName.getter();
    v34[2] = v24;
    v34[3] = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11SiriKitFlow17TemplatingSectionVGMd, &_ss23_ContiguousArrayStorageCy11SiriKitFlow17TemplatingSectionVGMR);
    type metadata accessor for TemplatingSection();
    *(swift_allocObject() + 16) = xmmword_1AD90;
    v34[1] = "relatedQuestions";
    SpeakableString.print.getter();
    SpeakableString.speak.getter();
    TemplatingText.init(text:speakableTextOverride:)();
    (*(v36 + 56))(v35, 1, 1, v37);
    TemplatingSection.init(id:content:caption:spokenOnly:)();
    (*(v3 + 104))(v39, enum case for BehaviorAfterSpeaking.defaultBehavior(_:), v38);
    v25 = type metadata accessor for TemplatingResult();
    v26 = v40;
    *(v40 + 24) = v25;
    __swift_allocate_boxed_opaque_existential_0Tm(v26);
    TemplatingResult.init(templateIdentifier:sections:behaviorAfterSpeaking:)();
    return (*(v13 + 8))(v15, v12);
  }

LABEL_7:
  outlined destroy of SpeakableString?(v11, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (one-time initialization token for suggestions != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  __swift_project_value_buffer(v28, static SuggestionsLogger.suggestions);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_0, v29, v30, "Unable to find example utterance in dialog parameter", v31, 2u);
  }

  static SuggestionConstants.serverIntentName.getter();
  (*(v3 + 104))(v39, enum case for BehaviorAfterSpeaking.defaultBehavior(_:), v38);
  v32 = type metadata accessor for TemplatingResult();
  v33 = v40;
  *(v40 + 24) = v32;
  __swift_allocate_boxed_opaque_existential_0Tm(v33);
  return TemplatingResult.init(templateIdentifier:sections:behaviorAfterSpeaking:)();
}

uint64_t specialized thunk for @escaping @callee_guaranteed (@in_guaranteed DialogProperties) -> (@out Any)(uint64_t a1, void *a2)
{
  type metadata accessor for InfoServerSuggestionDefinitionFactory();
  static InfoServerSuggestionDefinitionFactory.serverUtteranceMapper(dialogProperties:)(a2, a1);
  v5 = *(v2 + 8);

  return v5();
}

uint64_t thunk for @escaping @callee_guaranteed (@in_guaranteed DialogProperties) -> (@out Any)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  a3(a2);
  v4 = *(v3 + 8);

  return v4();
}

uint64_t closure #1 in static InfoServerSuggestionDefinitionFactory.createOwnerDefinitions(builderFactory:)(uint64_t a1)
{
  v2 = type metadata accessor for SiriSuggestions.IntentType();
  __chkstk_darwin(v2 - 8);
  v46 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVyypypSgGMd, &_s13SiriUtilities11TransformerVyypypSgGMR);
  __chkstk_darwin(v4 - 8);
  *&v43 = *(a1 + 40);
  v42 = *(a1 + 24);
  *&v45 = __swift_project_boxed_opaque_existential_1Tm(a1, v42);
  *&v44 = static SuggestionConstants.serverIntentName.getter();
  v5 = static SuggestionConstants.serverIntentName.getter();
  v7 = v6;
  v8 = type metadata accessor for FromContextResolver();
  v9 = swift_allocObject();
  v9[2] = v5;
  v9[3] = v7;
  v9[4] = &async function pointer to closure #1 in closure #1 in static InfoServerSuggestionDefinitionFactory.createOwnerDefinitions(builderFactory:);
  v9[5] = 0;
  *&v67 = v8;
  v11 = lazy protocol witness table accessor for type DomainOwner and conformance DomainOwner(&lazy protocol witness table cache variable for type FromContextResolver and conformance FromContextResolver, v10, type metadata accessor for FromContextResolver, &protocol conformance descriptor for FromContextResolver);
  *(&v67 + 1) = v11;
  v66[0] = v9;
  static SuggestionConstants.serverIntentName.getter();
  static SuggestionTransformers.passthroughParameterForLogging()();
  v47 = type metadata accessor for INInformationUseCaseIntent();
  static SuggestionTransformers.mapAsyncINIntentValue<A>(extractor:)();
  type metadata accessor for ResolvableParameter();
  swift_allocObject();
  ResolvableParameter.init(typeIdentifier:required:loggingKeyTransformer:asyncIntentTransformer:)();
  v70 = v42;
  v71 = v43;
  __swift_allocate_boxed_opaque_existential_0Tm(v69);
  SuggestionDetailsBuilder.parameter(parameterName:resolver:resolveParam:)();

  outlined destroy of SpeakableString?(v66, &_s18SiriSuggestionsKit8Resolver_pSgMd, &_s18SiriSuggestionsKit8Resolver_pSgMR);
  v12 = v71;
  v43 = v70;
  *&v45 = __swift_project_boxed_opaque_existential_1Tm(v69, v70);
  *&v44 = static SuggestionConstants.serverExampleUtterance.getter();
  v13 = static SuggestionConstants.serverExampleUtterance.getter();
  v15 = v14;
  v16 = swift_allocObject();
  v16[2] = v13;
  v16[3] = v15;
  v16[4] = &async function pointer to closure #3 in closure #1 in static InfoServerSuggestionDefinitionFactory.createOwnerDefinitions(builderFactory:);
  v16[5] = 0;
  *&v64 = v8;
  *(&v64 + 1) = v11;
  v63[0] = v16;
  static SuggestionConstants.serverExampleUtterance.getter();
  static SuggestionTransformers.removeParameterFromLogging()();
  static SuggestionTransformers.mapAsyncINIntentValue<A>(extractor:)();
  swift_allocObject();
  ResolvableParameter.init(typeIdentifier:required:loggingKeyTransformer:asyncIntentTransformer:)();
  v67 = v43;
  v68 = v12;
  __swift_allocate_boxed_opaque_existential_0Tm(v66);
  SuggestionDetailsBuilder.parameter(parameterName:resolver:resolveParam:)();

  outlined destroy of SpeakableString?(v63, &_s18SiriSuggestionsKit8Resolver_pSgMd, &_s18SiriSuggestionsKit8Resolver_pSgMR);
  v17 = v68;
  v44 = v67;
  __swift_project_boxed_opaque_existential_1Tm(v66, v67);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy18SiriSuggestionsKit19VersionedInvocationVGMd, &_ss23_ContiguousArrayStorageCy18SiriSuggestionsKit19VersionedInvocationVGMR);
  type metadata accessor for VersionedInvocation();
  v18 = swift_allocObject();
  v45 = xmmword_1AD90;
  *(v18 + 16) = xmmword_1AD90;
  static VersionedInvocations.HintsDawnA.getter();
  v64 = v44;
  v65 = v17;
  __swift_allocate_boxed_opaque_existential_0Tm(v63);
  dispatch thunk of SuggestionDetailsBuilder.validForInvocationTypes(_:)();

  v19 = v65;
  v44 = v64;
  __swift_project_boxed_opaque_existential_1Tm(v63, v64);
  v20 = type metadata accessor for InfoActionKeyMapper();
  inited = swift_initStaticObject();
  *&v58 = v20;
  *(&v58 + 1) = lazy protocol witness table accessor for type DomainOwner and conformance DomainOwner(&lazy protocol witness table cache variable for type InfoActionKeyMapper and conformance InfoActionKeyMapper, v22, type metadata accessor for InfoActionKeyMapper, &protocol conformance descriptor for InfoActionKeyMapper);
  v57[0] = inited;
  v61 = v44;
  v62 = v19;
  __swift_allocate_boxed_opaque_existential_0Tm(v60);
  dispatch thunk of SuggestionDetailsBuilder.actionKeyMapper(_:)();
  __swift_destroy_boxed_opaque_existential_1Tm(v57);
  v23 = v62;
  v44 = v61;
  __swift_project_boxed_opaque_existential_1Tm(v60, v61);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy18SiriSuggestionsKit15DeliveryVehicleOGMd, &_ss23_ContiguousArrayStorageCy18SiriSuggestionsKit15DeliveryVehicleOGMR);
  v24 = type metadata accessor for DeliveryVehicle();
  v25 = *(v24 - 8);
  v26 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = v45;
  v28 = enum case for SiriHintsMode.display(_:);
  v29 = type metadata accessor for SiriHintsMode();
  (*(*(v29 - 8) + 104))(v27 + v26, v28, v29);
  (*(v25 + 104))(v27 + v26, enum case for DeliveryVehicle.siriHints(_:), v24);
  v58 = v44;
  v59 = v23;
  __swift_allocate_boxed_opaque_existential_0Tm(v57);
  dispatch thunk of SuggestionDetailsBuilder.enabledDeliveryVehicles(_:)();

  v30 = v59;
  v45 = v58;
  __swift_project_boxed_opaque_existential_1Tm(v57, v58);
  static SuggestionConstants.t41Locales.getter();
  v55 = v45;
  v56 = v30;
  __swift_allocate_boxed_opaque_existential_0Tm(v54);
  dispatch thunk of SuggestionDetailsBuilder.enabledLocales(_:)();

  v31 = v56;
  v45 = v55;
  __swift_project_boxed_opaque_existential_1Tm(v54, v55);
  v32 = type metadata accessor for InfoServerSuggestionAssetProvider();
  v33 = swift_allocObject();
  v49 = v32;
  v50 = lazy protocol witness table accessor for type DomainOwner and conformance DomainOwner(&lazy protocol witness table cache variable for type InfoServerSuggestionAssetProvider and conformance InfoServerSuggestionAssetProvider, v34, type metadata accessor for InfoServerSuggestionAssetProvider, &protocol conformance descriptor for InfoServerSuggestionAssetProvider);
  v48[0] = v33;
  v52 = v45;
  v53 = v31;
  __swift_allocate_boxed_opaque_existential_0Tm(v51);
  dispatch thunk of SuggestionDetailsBuilder.assetsProvider(_:)();
  __swift_destroy_boxed_opaque_existential_1Tm(v48);
  v35 = v52;
  v36 = __swift_project_boxed_opaque_existential_1Tm(v51, v52);
  v37 = *(v35 - 8);
  __chkstk_darwin(v36);
  v39 = &v42 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for SiriSuggestions.IntentMatch();
  v50 = &protocol witness table for SiriSuggestions.IntentMatch;
  __swift_allocate_boxed_opaque_existential_0Tm(v48);
  static SiriSuggestions.IntentType.inIntent(intentType:)();
  v40 = swift_allocObject();
  *(v40 + 16) = closure #5 in closure #1 in static InfoServerSuggestionDefinitionFactory.createOwnerDefinitions(builderFactory:);
  *(v40 + 24) = 0;
  SiriSuggestions.IntentMatch.init(intentType:matcher:)();
  dispatch thunk of SuggestionDetailsBuilder.intentMatch(_:)();
  (*(v37 + 8))(v39, v35);
  __swift_destroy_boxed_opaque_existential_1Tm(v48);
  __swift_destroy_boxed_opaque_existential_1Tm(v51);
  __swift_destroy_boxed_opaque_existential_1Tm(v54);
  __swift_destroy_boxed_opaque_existential_1Tm(v57);
  __swift_destroy_boxed_opaque_existential_1Tm(v60);
  __swift_destroy_boxed_opaque_existential_1Tm(v63);
  __swift_destroy_boxed_opaque_existential_1Tm(v66);
  return __swift_destroy_boxed_opaque_existential_1Tm(v69);
}

uint64_t closure #1 in closure #1 in static InfoServerSuggestionDefinitionFactory.createOwnerDefinitions(builderFactory:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  v3[7] = swift_getObjectType();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #1 in closure #1 in static InfoServerSuggestionDefinitionFactory.createOwnerDefinitions(builderFactory:), v5, v4);
}

uint64_t closure #1 in closure #1 in static InfoServerSuggestionDefinitionFactory.createOwnerDefinitions(builderFactory:)()
{
  v1 = Context.getServerIntent()();
  v0[1] = v1;
  v0[4].value._countAndFlagsBits = v1.value._object;

  return _swift_task_switch(closure #1 in closure #1 in static InfoServerSuggestionDefinitionFactory.createOwnerDefinitions(builderFactory:), 0, 0);
}

{
  v1 = *(v0 + 64);
  if (v1)
  {
    v2 = *(v0 + 16);
    v3 = &type metadata for String;
  }

  else
  {
    v2 = 0;
    v3 = 0;
    *(*(v0 + 32) + 16) = 0;
  }

  v4 = *(v0 + 32);
  *v4 = v2;
  v4[1] = v1;
  v4[3] = v3;
  return (*(v0 + 8))();
}

Swift::String_optional __swiftcall Context.getServerIntent()()
{
  if (one-time initialization token for kOwnerInformation != -1)
  {
    swift_once();
  }

  v0 = static SuggestionConstants.kOwnerInformation;
  v6[3] = type metadata accessor for DomainOwner();
  v6[4] = &protocol witness table for DomainOwner;
  v6[0] = v0;

  static SuggestionConstants.serverIntentName.getter();
  Context.getParam(for:key:)();

  __swift_destroy_boxed_opaque_existential_1Tm(v6);
  if (v8)
  {
    v1 = swift_dynamicCast();
    v2 = v1 == 0;
    if (v1)
    {
      v3 = v6[0];
    }

    else
    {
      v3 = 0;
    }

    if (v2)
    {
      v4 = 0;
    }

    else
    {
      v4 = v6[1];
    }
  }

  else
  {
    outlined destroy of SpeakableString?(v7, &_sypSgMd, &_sypSgMR);
    v3 = 0;
    v4 = 0;
  }

  result.value._object = v4;
  result.value._countAndFlagsBits = v3;
  return result;
}

void *FromContextResolver.__allocating_init(resolverTypeOperand:propertyExtractor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  return result;
}

uint64_t closure #2 in closure #1 in static InfoServerSuggestionDefinitionFactory.createOwnerDefinitions(builderFactory:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return _swift_task_switch(closure #2 in closure #1 in static InfoServerSuggestionDefinitionFactory.createOwnerDefinitions(builderFactory:), 0, 0);
}

uint64_t closure #2 in closure #1 in static InfoServerSuggestionDefinitionFactory.createOwnerDefinitions(builderFactory:)()
{
  v1 = [*(v0 + 56) domainUseCase];
  if (v1)
  {
    v2 = *(v0 + 48);
    v3 = v1;
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    *(v0 + 40) = &type metadata for String;
    *(v0 + 16) = v4;
    *(v0 + 24) = v6;
    outlined init with take of Any((v0 + 16), v2);
  }

  else
  {
    v7 = [*(v0 + 56) infoDomain];
    if (v7)
    {
      v8 = v7;
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;
    }

    else
    {
      v9 = 0;
      v11 = 0;
    }

    v12 = *(v0 + 48);
    v12[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    *v12 = v9;
    v12[1] = v11;
  }

  v13 = *(v0 + 48);
  v14 = enum case for IntentParameter.directAssignment(_:);
  v15 = type metadata accessor for IntentParameter();
  (*(*(v15 - 8) + 104))(v13, v14, v15);
  v16 = *(v0 + 8);

  return v16();
}

uint64_t closure #3 in closure #1 in static InfoServerSuggestionDefinitionFactory.createOwnerDefinitions(builderFactory:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v3[5] = swift_getObjectType();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #3 in closure #1 in static InfoServerSuggestionDefinitionFactory.createOwnerDefinitions(builderFactory:), v5, v4);
}

uint64_t closure #3 in closure #1 in static InfoServerSuggestionDefinitionFactory.createOwnerDefinitions(builderFactory:)()
{
  v0[6] = Context.getUtterance()(v0[5], v0[4]);

  return _swift_task_switch(closure #3 in closure #1 in static InfoServerSuggestionDefinitionFactory.createOwnerDefinitions(builderFactory:), 0, 0);
}

{
  v1 = v0[6];
  if (v1)
  {
    v2 = type metadata accessor for INInformationUseCaseUtterance();
  }

  else
  {
    v2 = 0;
    v3 = v0[2];
    *(v3 + 8) = 0;
    *(v3 + 16) = 0;
  }

  v4 = v0[2];
  *v4 = v1;
  v4[3] = v2;
  v5 = v0[1];

  return v5();
}

uint64_t Context.getUtterance()(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for kOwnerInformation != -1)
  {
    swift_once();
  }

  v2 = static SuggestionConstants.kOwnerInformation;
  v4[3] = type metadata accessor for DomainOwner();
  v4[4] = &protocol witness table for DomainOwner;
  v4[0] = v2;

  static SuggestionConstants.serverExampleUtterance.getter();
  Context.getParam(for:key:)();

  __swift_destroy_boxed_opaque_existential_1Tm(v4);
  if (v6)
  {
    type metadata accessor for INInformationUseCaseUtterance();
    if (swift_dynamicCast())
    {
      return v4[0];
    }

    else
    {
      return 0;
    }
  }

  else
  {
    outlined destroy of SpeakableString?(v5, &_sypSgMd, &_sypSgMR);
    return 0;
  }
}

uint64_t closure #4 in closure #1 in static InfoServerSuggestionDefinitionFactory.createOwnerDefinitions(builderFactory:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(closure #4 in closure #1 in static InfoServerSuggestionDefinitionFactory.createOwnerDefinitions(builderFactory:), 0, 0);
}

uint64_t closure #4 in closure #1 in static InfoServerSuggestionDefinitionFactory.createOwnerDefinitions(builderFactory:)()
{
  v1 = *(v0 + 16);
  v2 = [*(v0 + 24) exampleUtterance];
  v1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes29INInformationUseCaseUtteranceCSgMd, &_s20SiriInformationTypes29INInformationUseCaseUtteranceCSgMR);
  *v1 = v2;
  v3 = enum case for IntentParameter.directAssignment(_:);
  v4 = type metadata accessor for IntentParameter();
  (*(*(v4 - 8) + 104))(v1, v3, v4);
  v5 = *(v0 + 8);

  return v5();
}

uint64_t *InfoActionKeyMapper.instance.unsafeMutableAddressor()
{
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  return &static InfoActionKeyMapper.instance;
}

uint64_t protocol witness for static OwnerDefinitionFactory.createOwnerDefinitions(builderFactory:) in conformance InfoServerSuggestionDefinitionFactory(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for static OwnerDefinitionFactory.createOwnerDefinitions(builderFactory:) in conformance InfoServerSuggestionDefinitionFactory;

  return static InfoServerSuggestionDefinitionFactory.createOwnerDefinitions(builderFactory:)(a1, a2);
}

uint64_t one-time initialization function for instance()
{
  type metadata accessor for InfoActionKeyMapper();
  result = swift_initStaticObject();
  static InfoActionKeyMapper.instance = result;
  return result;
}

uint64_t one-time initialization function for mathIntentNames(uint64_t a1, uint64_t (*a2)(uint64_t), unint64_t **a3)
{
  v29 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SuggestionIntent();
  v5 = *(v29 - 8);
  v6 = __chkstk_darwin(v29);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2(v6);
  v10 = *(v9 + 16);
  if (v10)
  {
    v26 = a3;
    v32 = _swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10, 0);
    v12 = *(v5 + 16);
    v11 = v5 + 16;
    v13 = v32;
    v14 = *(v11 + 64);
    v25 = v9;
    v15 = v9 + ((v14 + 32) & ~v14);
    v27 = *(v11 + 56);
    v28 = v12;
    v16 = (v11 - 8);
    do
    {
      v17 = v29;
      v18 = v11;
      v28(v8, v15, v29);
      v30 = 0;
      v31 = 0xE000000000000000;
      _print_unlocked<A, B>(_:_:)();
      v19 = v30;
      v20 = v31;
      (*v16)(v8, v17);
      v32 = v13;
      v22 = v13[2];
      v21 = v13[3];
      if (v22 >= v21 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1);
        v13 = v32;
      }

      v13[2] = v22 + 1;
      v23 = &v13[2 * v22];
      v23[4] = v19;
      v23[5] = v20;
      v15 += v27;
      --v10;
      v11 = v18;
    }

    while (v10);

    a3 = v26;
  }

  else
  {

    v13 = _swiftEmptyArrayStorage;
  }

  *a3 = v13;
  return result;
}

uint64_t *InfoActionKeyMapper.mathIntentNames.unsafeMutableAddressor()
{
  if (one-time initialization token for mathIntentNames != -1)
  {
    swift_once();
  }

  return &static InfoActionKeyMapper.mathIntentNames;
}

uint64_t static InfoServerSuggestionAssetProvider.mathIntentNames.getter(void *a1, uint64_t *a2, uint64_t a3)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

uint64_t InfoActionKeyMapper.map(suggestion:resolvedParams:associatedAppId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = static SuggestionConstants.serverIntentName.getter();
  if (*(a2 + 16))
  {
    v6 = specialized __RawDictionaryStorage.find<A>(_:)(v4, v5);
    v8 = v7;

    if (v8)
    {
      outlined init with copy of Any(*(a2 + 56) + 32 * v6, v14);
      v9 = swift_dynamicCast();
      if (v9)
      {
        if (one-time initialization token for mathIntentNames != -1)
        {
          v9 = swift_once();
        }

        v14[0] = v13[5];
        v14[1] = v13[6];
        __chkstk_darwin(v9);
        v13[2] = v14;
        v11 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v13, v10);

        if (v11)
        {
          static SuggestionConstants.serverSuggestionIdMath.getter();
        }
      }
    }
  }

  else
  {
  }

  static ActionKeyMappers.simpleActionKeyMapper(actionId:)();

  __swift_project_boxed_opaque_existential_1Tm(v14, v14[3]);
  dispatch thunk of ActionKeyMapper.map(suggestion:resolvedParams:associatedAppId:)();
  return __swift_destroy_boxed_opaque_existential_1Tm(v14);
}

uint64_t InfoServerGenerator.generateCandidateSuggestions(interaction:environment:factory:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = protocol witness for static OwnerDefinitionFactory.createOwnerDefinitions(builderFactory:) in conformance InfoServerSuggestionDefinitionFactory;

  return specialized InfoServerGenerator.generateCandidateSuggestions(interaction:environment:factory:)(a1, a2, a3);
}

uint64_t closure #1 in InfoServerGenerator.createRelatedQuestionsSuggestion(candidate:factory:locale:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestionCandidate();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return _swift_task_switch(closure #1 in InfoServerGenerator.createRelatedQuestionsSuggestion(candidate:factory:locale:), 0, 0);
}

uint64_t closure #1 in InfoServerGenerator.createRelatedQuestionsSuggestion(candidate:factory:locale:)()
{
  v1 = [*(v0 + 32) exampleUtterance];
  *(v0 + 72) = v1;
  if (v1)
  {
    __swift_project_boxed_opaque_existential_1Tm(*(v0 + 24), *(*(v0 + 24) + 24));
    *(v0 + 80) = dispatch thunk of CandidateSuggestion.context.getter();
    *(v0 + 88) = v2;
    *(v0 + 96) = swift_getObjectType();
    v4 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(closure #1 in InfoServerGenerator.createRelatedQuestionsSuggestion(candidate:factory:locale:), v4, v3);
  }

  else
  {
    outlined init with copy of CandidateSuggestion(*(v0 + 24), *(v0 + 16));

    v5 = *(v0 + 8);

    return v5();
  }
}

{
  Context.setUtterance(_:)(*(v0 + 72), *(v0 + 96), *(v0 + 88));
  swift_unknownObjectRelease();

  return _swift_task_switch(closure #1 in InfoServerGenerator.createRelatedQuestionsSuggestion(candidate:factory:locale:), 0, 0);
}

{
  v22 = v0;
  if (one-time initialization token for suggestions != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);
  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static SuggestionsLogger.suggestions);
  (*(v2 + 16))(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 64);
  v10 = *(v0 + 48);
  v11 = *(v0 + 56);
  if (v8)
  {
    v20 = *(v0 + 72);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v21 = v13;
    *v12 = 136315138;
    lazy protocol witness table accessor for type DomainOwner and conformance DomainOwner(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_ServerSuggestionCandidate and conformance Apple_Parsec_Siri_V2alpha_ServerSuggestionCandidate, 255, &type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestionCandidate, &protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ServerSuggestionCandidate);
    v14 = Message.debugDescription.getter();
    v16 = v15;
    (*(v11 + 8))(v9, v10);
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v21);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_0, v6, v7, "Found and constructed server based related questions suggestion: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
  }

  else
  {

    (*(v11 + 8))(v9, v10);
  }

  outlined init with copy of CandidateSuggestion(*(v0 + 24), *(v0 + 16));

  v18 = *(v0 + 8);

  return v18();
}

uint64_t Context.setUtterance(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  if (one-time initialization token for kOwnerInformation != -1)
  {
    swift_once();
  }

  v4 = static SuggestionConstants.kOwnerInformation;
  v8[3] = type metadata accessor for DomainOwner();
  v8[4] = &protocol witness table for DomainOwner;
  v8[0] = v4;

  static SuggestionConstants.serverExampleUtterance.getter();
  v7[3] = type metadata accessor for INInformationUseCaseUtterance();
  v7[0] = a1;
  v5 = a1;
  Context.setParam(for:key:value:)();

  __swift_destroy_boxed_opaque_existential_1Tm(v7);
  return __swift_destroy_boxed_opaque_existential_1Tm(v8);
}

uint64_t specialized Sequence.asyncMap<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  return _swift_task_switch(specialized Sequence.asyncMap<A>(_:), 0, 0);
}

uint64_t specialized Sequence.asyncMap<A>(_:)()
{
  v1 = v0[9];
  v2 = *(v1 + 16);
  v0[10] = v2;
  if (v2)
  {
    v3 = v0[7];
    v0[11] = _swiftEmptyArrayStorage;
    v0[12] = 0;
    v7 = (v3 + *v3);
    v4 = swift_task_alloc();
    v0[13] = v4;
    *v4 = v0;
    v4[1] = specialized Sequence.asyncMap<A>(_:);

    return (v7)(v0 + 2, v1 + 32);
  }

  else
  {
    v6 = v0[1];

    return v6(_swiftEmptyArrayStorage);
  }
}

{
  *(*v1 + 112) = v0;

  if (v0)
  {

    v2 = specialized Sequence.asyncMap<A>(_:);
  }

  else
  {
    v2 = specialized Sequence.asyncMap<A>(_:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = *(v0 + 88);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2[2] + 1, 1, *(v0 + 88));
  }

  v4 = v2[2];
  v3 = v2[3];
  if (v4 >= v3 >> 1)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v3 > 1), v4 + 1, 1, v2);
  }

  v5 = *(v0 + 80);
  v6 = *(v0 + 96) + 1;
  v2[2] = v4 + 1;
  outlined init with take of CandidateSuggestion((v0 + 16), &v2[5 * v4 + 4]);
  if (v6 == v5)
  {
    v7 = *(v0 + 8);

    return v7(v2);
  }

  else
  {
    v9 = *(v0 + 96);
    *(v0 + 88) = v2;
    *(v0 + 96) = v9 + 1;
    v10 = *(v0 + 72) + 40 * v9;
    v12 = (*(v0 + 56) + **(v0 + 56));
    v11 = swift_task_alloc();
    *(v0 + 104) = v11;
    *v11 = v0;
    v11[1] = specialized Sequence.asyncMap<A>(_:);

    return v12(v0 + 16, v10 + 72);
  }
}

{
  return (*(v0 + 8))();
}

uint64_t closure #3 in InfoServerGenerator.createSuggestionForCandidate(candidate:factory:locale:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestionCandidate();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v4[9] = type metadata accessor for Apple_Parsec_Siri_V2alpha_SuggestionIntent();
  v4[10] = swift_task_alloc();

  return _swift_task_switch(closure #3 in InfoServerGenerator.createSuggestionForCandidate(candidate:factory:locale:), 0, 0);
}

uint64_t closure #3 in InfoServerGenerator.createSuggestionForCandidate(candidate:factory:locale:)()
{
  v1 = [*(v0 + 32) exampleUtterance];
  *(v0 + 88) = v1;
  if (v1)
  {
    __swift_project_boxed_opaque_existential_1Tm(*(v0 + 24), *(*(v0 + 24) + 24));
    *(v0 + 96) = dispatch thunk of CandidateSuggestion.context.getter();
    *(v0 + 104) = v2;
    *(v0 + 112) = swift_getObjectType();
    v3 = dispatch thunk of Actor.unownedExecutor.getter();
    v5 = v4;
    v6 = closure #3 in InfoServerGenerator.createSuggestionForCandidate(candidate:factory:locale:);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1Tm(*(v0 + 24), *(*(v0 + 24) + 24));
    *(v0 + 120) = dispatch thunk of CandidateSuggestion.context.getter();
    *(v0 + 128) = v7;
    *(v0 + 136) = swift_getObjectType();
    Apple_Parsec_Siri_V2alpha_ServerSuggestionCandidate.intent.getter();
    *(v0 + 144) = String.init<A>(describing:)();
    *(v0 + 152) = v8;
    v3 = dispatch thunk of Actor.unownedExecutor.getter();
    v5 = v9;
    v6 = closure #3 in InfoServerGenerator.createSuggestionForCandidate(candidate:factory:locale:);
  }

  return _swift_task_switch(v6, v3, v5);
}

{
  Context.setUtterance(_:)(*(v0 + 88), *(v0 + 112), *(v0 + 104));
  swift_unknownObjectRelease();

  return _swift_task_switch(closure #3 in InfoServerGenerator.createSuggestionForCandidate(candidate:factory:locale:), 0, 0);
}

{

  __swift_project_boxed_opaque_existential_1Tm(*(v0 + 24), *(*(v0 + 24) + 24));
  *(v0 + 120) = dispatch thunk of CandidateSuggestion.context.getter();
  *(v0 + 128) = v1;
  *(v0 + 136) = swift_getObjectType();
  Apple_Parsec_Siri_V2alpha_ServerSuggestionCandidate.intent.getter();
  *(v0 + 144) = String.init<A>(describing:)();
  *(v0 + 152) = v2;
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #3 in InfoServerGenerator.createSuggestionForCandidate(candidate:factory:locale:), v4, v3);
}

{
  Context.setServerIntent(_:)(v0[9]);
  swift_unknownObjectRelease();

  return _swift_task_switch(closure #3 in InfoServerGenerator.createSuggestionForCandidate(candidate:factory:locale:), 0, 0);
}

{
  v21 = v0;
  if (one-time initialization token for suggestions != -1)
  {
    swift_once();
  }

  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static SuggestionsLogger.suggestions);
  (*(v2 + 16))(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[7];
  v9 = v0[8];
  v11 = v0[6];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20 = v13;
    *v12 = 136315138;
    lazy protocol witness table accessor for type DomainOwner and conformance DomainOwner(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_ServerSuggestionCandidate and conformance Apple_Parsec_Siri_V2alpha_ServerSuggestionCandidate, 255, &type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestionCandidate, &protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ServerSuggestionCandidate);
    v14 = Message.debugDescription.getter();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v20);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_0, v6, v7, "Found and constructed server based info suggestion: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  outlined init with copy of CandidateSuggestion(v0[3], v0[2]);

  v18 = v0[1];

  return v18();
}

Swift::Void __swiftcall Context.setServerIntent(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  if (one-time initialization token for kOwnerInformation != -1)
  {
    swift_once();
  }

  v3 = static SuggestionConstants.kOwnerInformation;
  v5[3] = type metadata accessor for DomainOwner();
  v5[4] = &protocol witness table for DomainOwner;
  v5[0] = v3;

  static SuggestionConstants.serverIntentName.getter();
  v4[3] = &type metadata for String;
  v4[0] = countAndFlagsBits;
  v4[1] = object;

  Context.setParam(for:key:value:)();

  __swift_destroy_boxed_opaque_existential_1Tm(v4);
  __swift_destroy_boxed_opaque_existential_1Tm(v5);
}

uint64_t SuggestionOverrideDialog.OverrideDialogCallback.sectionIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FromContextResolver.propertyExtractor.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

void *FromContextResolver.init(resolverTypeOperand:propertyExtractor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
  return v4;
}

uint64_t FromContextResolver.resolveParameter(parameter:suggestion:interaction:environment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = protocol witness for static OwnerDefinitionFactory.createOwnerDefinitions(builderFactory:) in conformance InfoServerSuggestionDefinitionFactory;

  return (specialized FromContextResolver.resolveParameter(parameter:suggestion:interaction:environment:))(a2, a3, a4);
}

uint64_t FromContextResolver.deinit()
{

  return v0;
}

uint64_t FromContextResolver.__deallocating_deinit()
{

  return _swift_deallocClassInstance(v0, 48, 7);
}

uint64_t protocol witness for InternalResolver.resolverTypeOperand.getter in conformance FromContextResolver()
{
  v1 = *(*v0 + 16);

  return v1;
}

uint64_t protocol witness for InternalResolver.resolveParameter(parameter:suggestion:interaction:environment:) in conformance FromContextResolver(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = protocol witness for InternalResolver.resolveParameter(parameter:suggestion:interaction:environment:) in conformance FromContextResolver;

  return (specialized FromContextResolver.resolveParameter(parameter:suggestion:interaction:environment:))(a2, a3, a4);
}

uint64_t protocol witness for InternalResolver.resolveParameter(parameter:suggestion:interaction:environment:) in conformance FromContextResolver(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

void default argument 1 of SolarEventResolver.resolveParameter(date:calendar:)()
{
  v0 = [objc_opt_self() currentCalendar];
  static Calendar._unconditionallyBridgeFromObjectiveC(_:)();
}

uint64_t specialized thunk for @escaping @callee_guaranteed @Sendable (@guaranteed INInformationUseCaseIntent) -> (@out IntentParameter)(void *a1, void *a2)
{
  if (INInformationUseCaseIntent.supportsRelatedQuestions()() && (v5 = [a2 exampleUtterance]) != 0)
  {
    v6 = v5;
    a1[3] = type metadata accessor for INInformationUseCaseUtterance();
    *a1 = v6;
    v7 = &enum case for IntentParameter.directAssignment(_:);
  }

  else
  {
    v7 = &enum case for IntentParameter.ignore(_:);
  }

  v8 = *v7;
  v9 = type metadata accessor for IntentParameter();
  (*(*(v9 - 8) + 104))(a1, v8, v9);
  v10 = *(v2 + 8);

  return v10();
}

uint64_t serialize(_:at:)(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, uint64_t a2, uint64_t a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, uint64_t a2, uint64_t a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy18SiriSuggestionsKit19CandidateSuggestion_pGMd, &_ss23_ContiguousArrayStorageCy18SiriSuggestionsKit19CandidateSuggestion_pGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriSuggestionsKit19CandidateSuggestion_pMd, &_s18SiriSuggestionsKit19CandidateSuggestion_pMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v4);
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  v1 = a1;
  Hasher.init(_seed:)();
  InformationSuggestion.rawValue.getter(v1);
  String.hash(into:)();

  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v1, v2);
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

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xEB00000000686372;
      v8 = 0x6165536C61636F6CLL;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0xD000000000000018;
          v7 = 0x800000000001BD90;
          break;
        case 2:
          v8 = 0xD000000000000013;
          v7 = 0x800000000001BDB0;
          break;
        case 3:
          v8 = 0xD000000000000014;
          v7 = 0x800000000001BDD0;
          break;
        case 4:
          v8 = 0xD000000000000015;
          v7 = 0x800000000001BDF0;
          break;
        case 5:
          v8 = 0xD000000000000015;
          v7 = 0x800000000001BE10;
          break;
        case 6:
          v8 = 0xD000000000000016;
          v7 = 0x800000000001BE30;
          break;
        case 7:
          v8 = 0xD00000000000001CLL;
          v7 = 0x800000000001BE50;
          break;
        case 8:
          v8 = 0xD000000000000019;
          v7 = 0x800000000001BE70;
          break;
        case 9:
          v8 = 0xD00000000000001BLL;
          v7 = 0x800000000001BE90;
          break;
        case 0xA:
          v8 = 0xD000000000000016;
          v7 = 0x800000000001BEB0;
          break;
        case 0xB:
          v8 = 0xD000000000000018;
          v7 = 0x800000000001BED0;
          break;
        case 0xC:
          break;
        case 0xD:
          v8 = 0xD000000000000018;
          v7 = 0x800000000001BF00;
          break;
        case 0xE:
          v7 = 0xE400000000000000;
          v8 = 1937204590;
          break;
        case 0xF:
          v8 = 0xD000000000000011;
          v7 = 0x800000000001BF20;
          break;
        case 0x10:
          v8 = 0xD000000000000011;
          v7 = 0x800000000001BF40;
          break;
        case 0x11:
          v8 = 0xD000000000000011;
          v7 = 0x800000000001BF60;
          break;
        case 0x12:
          v8 = 0xD000000000000017;
          v7 = 0x800000000001BF80;
          break;
        case 0x13:
          v8 = 0xD000000000000015;
          v7 = 0x800000000001BFA0;
          break;
        case 0x14:
          v8 = 0xD000000000000012;
          v7 = 0x800000000001BFC0;
          break;
        case 0x15:
          v8 = 0xD000000000000015;
          v7 = 0x800000000001BFE0;
          break;
        case 0x16:
          v8 = 0xD000000000000014;
          v7 = 0x800000000001C000;
          break;
        case 0x17:
          v8 = 0xD000000000000017;
          v7 = 0x800000000001C020;
          break;
        case 0x18:
          v8 = 0xD000000000000014;
          v7 = 0x800000000001C040;
          break;
        default:
          v8 = 0xD000000000000014;
          v7 = 0x800000000001BD70;
          break;
      }

      v9 = 0x6165536C61636F6CLL;
      v10 = 0xEB00000000686372;
      switch(a1)
      {
        case 1:
          v10 = 0x800000000001BD90;
          if (v8 == 0xD000000000000018)
          {
            goto LABEL_75;
          }

          goto LABEL_76;
        case 2:
          v10 = 0x800000000001BDB0;
          if (v8 != 0xD000000000000013)
          {
            goto LABEL_76;
          }

          goto LABEL_75;
        case 3:
          v10 = 0x800000000001BDD0;
          if (v8 != 0xD000000000000014)
          {
            goto LABEL_76;
          }

          goto LABEL_75;
        case 4:
          v10 = 0x800000000001BDF0;
          if (v8 != 0xD000000000000015)
          {
            goto LABEL_76;
          }

          goto LABEL_75;
        case 5:
          v10 = 0x800000000001BE10;
          if (v8 != 0xD000000000000015)
          {
            goto LABEL_76;
          }

          goto LABEL_75;
        case 6:
          v10 = 0x800000000001BE30;
          if (v8 != 0xD000000000000016)
          {
            goto LABEL_76;
          }

          goto LABEL_75;
        case 7:
          v10 = 0x800000000001BE50;
          if (v8 != 0xD00000000000001CLL)
          {
            goto LABEL_76;
          }

          goto LABEL_75;
        case 8:
          v10 = 0x800000000001BE70;
          if (v8 != 0xD000000000000019)
          {
            goto LABEL_76;
          }

          goto LABEL_75;
        case 9:
          v10 = 0x800000000001BE90;
          if (v8 != 0xD00000000000001BLL)
          {
            goto LABEL_76;
          }

          goto LABEL_75;
        case 10:
          v10 = 0x800000000001BEB0;
          if (v8 != 0xD000000000000016)
          {
            goto LABEL_76;
          }

          goto LABEL_75;
        case 11:
          v10 = 0x800000000001BED0;
          if (v8 != 0xD000000000000018)
          {
            goto LABEL_76;
          }

          goto LABEL_75;
        case 12:
          goto LABEL_74;
        case 13:
          v10 = 0x800000000001BF00;
          if (v8 != 0xD000000000000018)
          {
            goto LABEL_76;
          }

          goto LABEL_75;
        case 14:
          v10 = 0xE400000000000000;
          if (v8 != 1937204590)
          {
            goto LABEL_76;
          }

          goto LABEL_75;
        case 15:
          v10 = 0x800000000001BF20;
          if (v8 != 0xD000000000000011)
          {
            goto LABEL_76;
          }

          goto LABEL_75;
        case 16:
          v10 = 0x800000000001BF40;
          if (v8 != 0xD000000000000011)
          {
            goto LABEL_76;
          }

          goto LABEL_75;
        case 17:
          v10 = 0x800000000001BF60;
          if (v8 != 0xD000000000000011)
          {
            goto LABEL_76;
          }

          goto LABEL_75;
        case 18:
          v10 = 0x800000000001BF80;
          if (v8 != 0xD000000000000017)
          {
            goto LABEL_76;
          }

          goto LABEL_75;
        case 19:
          v9 = 0xD000000000000015;
          v10 = 0x800000000001BFA0;
LABEL_74:
          if (v8 == v9)
          {
            goto LABEL_75;
          }

          goto LABEL_76;
        case 20:
          v10 = 0x800000000001BFC0;
          if (v8 != 0xD000000000000012)
          {
            goto LABEL_76;
          }

          goto LABEL_75;
        case 21:
          v10 = 0x800000000001BFE0;
          if (v8 != 0xD000000000000015)
          {
            goto LABEL_76;
          }

          goto LABEL_75;
        case 22:
          v10 = 0x800000000001C000;
          if (v8 != 0xD000000000000014)
          {
            goto LABEL_76;
          }

          goto LABEL_75;
        case 23:
          v10 = 0x800000000001C020;
          if (v8 != 0xD000000000000017)
          {
            goto LABEL_76;
          }

          goto LABEL_75;
        case 24:
          v10 = 0x800000000001C040;
          if (v8 != 0xD000000000000014)
          {
            goto LABEL_76;
          }

          goto LABEL_75;
        default:
          v10 = 0x800000000001BD70;
          if (v8 != 0xD000000000000014)
          {
            goto LABEL_76;
          }

LABEL_75:
          if (v7 == v10)
          {

            return v4;
          }

LABEL_76:
          v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v11)
          {
            return v4;
          }

          v4 = (v4 + 1) & v6;
          if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            return v4;
          }

          break;
      }
    }
  }

  return v4;
}

uint64_t partial apply for specialized closure #1 in Sequence<>.contains(_:)(void *a1)
{
  return partial apply for specialized closure #1 in Sequence<>.contains(_:)(a1) & 1;
}

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

uint64_t sub_6ADC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed DialogProperties) -> (@out Any)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed DialogProperties) -> (@out Any);

  return thunk for @escaping @callee_guaranteed (@in_guaranteed DialogProperties) -> (@out Any)(a1, a2, v6);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed DialogProperties) -> (@out Any)()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t specialized InfoServerGenerator.createSuggestionForCandidate(candidate:factory:locale:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[19] = a3;
  v4[20] = a4;
  v4[17] = a1;
  v4[18] = a2;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestionCandidate();
  v4[21] = v5;
  v4[22] = *(v5 - 8);
  v4[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriSuggestionsKit10PreferenceVSgMd, &_s18SiriSuggestionsKit10PreferenceVSgMR);
  v4[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriSuggestionsKit15DeliveryVehicleOSgMd, &_s18SiriSuggestionsKit15DeliveryVehicleOSgMR);
  v4[25] = swift_task_alloc();
  v6 = type metadata accessor for Objective();
  v4[26] = v6;
  v4[27] = *(v6 - 8);
  v4[28] = swift_task_alloc();
  v7 = type metadata accessor for SiriSuggestions.Intent();
  v4[29] = v7;
  v4[30] = *(v7 - 8);
  v4[31] = swift_task_alloc();
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SuggestionIntent();
  v4[32] = v8;
  v4[33] = *(v8 - 8);
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();

  return _swift_task_switch(specialized InfoServerGenerator.createSuggestionForCandidate(candidate:factory:locale:), 0, 0);
}

uint64_t specialized InfoServerGenerator.createSuggestionForCandidate(candidate:factory:locale:)()
{
  v2 = v0[34];
  v1 = v0[35];
  v3 = v0[32];
  v4 = v0[33];
  Apple_Parsec_Siri_V2alpha_ServerSuggestionCandidate.intent.getter();
  (*(v4 + 104))(v2, enum case for Apple_Parsec_Siri_V2alpha_SuggestionIntent.unspecified(_:), v3);
  lazy protocol witness table accessor for type DomainOwner and conformance DomainOwner(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_SuggestionIntent and conformance Apple_Parsec_Siri_V2alpha_SuggestionIntent, 255, &type metadata accessor for Apple_Parsec_Siri_V2alpha_SuggestionIntent, &protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_SuggestionIntent);
  v5 = dispatch thunk of static Equatable.== infix(_:_:)();
  v6 = *(v4 + 8);
  v6(v2, v3);
  v6(v1, v3);
  if (v5)
  {
    if (one-time initialization token for suggestions != -1)
    {
      swift_once();
    }

    v8 = v0[22];
    v7 = v0[23];
    v9 = v0[21];
    v10 = v0[17];
    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static SuggestionsLogger.suggestions);
    (*(v8 + 16))(v7, v10, v9);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = v0[35];
      v15 = v0[22];
      v16 = v0[23];
      v41 = v0[32];
      v43 = v0[21];
      v17 = swift_slowAlloc();
      *v17 = 134217984;
      Apple_Parsec_Siri_V2alpha_ServerSuggestionCandidate.intent.getter();
      v18 = Apple_Parsec_Siri_V2alpha_SuggestionIntent.rawValue.getter();
      v6(v14, v41);
      (*(v15 + 8))(v16, v43);
      *(v17 + 4) = v18;
      _os_log_impl(&dword_0, v12, v13, "Encountered unspecified intent of id %ld. Filtering out for infoServerSuggestion", v17, 0xCu);
    }

    else
    {
      (*(v0[22] + 8))(v0[23], v0[21]);
    }

    v38 = v0[1];

    return v38(0);
  }

  else
  {
    v19 = v0[30];
    v20 = v0[31];
    v22 = v0[28];
    v21 = v0[29];
    v24 = v0[26];
    v23 = v0[27];
    v40 = v0[25];
    v42 = v0[24];
    v25 = v0[18];
    v26 = Apple_Parsec_Siri_V2alpha_ServerSuggestionCandidate.toINInformationUseCase(locale:)();
    v0[36] = v26;
    v44 = v25[4];
    v27 = v25;
    v28 = v25[3];
    __swift_project_boxed_opaque_existential_1Tm(v27, v28);
    *v20 = v26;
    (*(v19 + 104))(v20, enum case for SiriSuggestions.Intent.inIntent(_:), v21);
    (*(v23 + 104))(v22, enum case for Objective.engagement(_:), v24);
    v29 = type metadata accessor for DeliveryVehicle();
    (*(*(v29 - 8) + 56))(v40, 1, 1, v29);
    v30 = type metadata accessor for Preference();
    (*(*(v30 - 8) + 56))(v42, 1, 1, v30);
    v31 = v26;
    v32 = swift_task_alloc();
    v0[37] = v32;
    *v32 = v0;
    v32[1] = specialized InfoServerGenerator.createSuggestionForCandidate(candidate:factory:locale:);
    v33 = v0[31];
    v34 = v0[28];
    v36 = v0[24];
    v35 = v0[25];
    v37.n128_u64[0] = 1.0;

    return dispatch thunk of CandidateSuggestionFactory.create(intent:objective:confidenceScore:deliveryVehicle:preference:)(v33, v34, v35, v36, v28, v44, v37);
  }
}

{
  v1 = *(v0 + 304);
  if (!v1)
  {
    if (one-time initialization token for suggestions != -1)
    {
      goto LABEL_46;
    }

    goto LABEL_37;
  }

  v2 = *(v1 + 16);
  if (!v2)
  {
LABEL_42:
    *(v0 + 312) = _swiftEmptyArrayStorage;
    v33 = *(v0 + 288);
    v34 = *(v0 + 136);

    v35 = swift_task_alloc();
    *(v0 + 320) = v35;
    *(v35 + 16) = v33;
    *(v35 + 24) = v34;
    v36 = swift_task_alloc();
    *(v0 + 328) = v36;
    *v36 = v0;
    v36[1] = specialized InfoServerGenerator.createSuggestionForCandidate(candidate:factory:locale:);

    return specialized Sequence.asyncMap<A>(_:)(&async function pointer to partial apply for closure #3 in InfoServerGenerator.createSuggestionForCandidate(candidate:factory:locale:), v35, _swiftEmptyArrayStorage);
  }

  v3 = 0;
  v4 = v1 + 32;
  v5 = v1 + 32;
  v6 = *(v1 + 16);
  do
  {
    outlined init with copy of CandidateSuggestion(v5, v0 + 16);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 16), *(v0 + 40));
    v7 = CandidateSuggestion.getSuggestionId()();
    if (v7._countAndFlagsBits == static SuggestionConstants.serverSuggestionId.getter() && v7._object == v8)
    {
      goto LABEL_11;
    }

    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v10)
    {
      goto LABEL_12;
    }

    __swift_project_boxed_opaque_existential_1Tm((v0 + 16), *(v0 + 40));
    v11 = CandidateSuggestion.getSuggestionId()();
    if (v11._countAndFlagsBits == static SuggestionConstants.serverSuggestionIdMath.getter() && v11._object == v12)
    {
LABEL_11:

LABEL_12:
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
      goto LABEL_13;
    }

    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
    v14 = (v13 & 1) == 0;
    v15 = __OFADD__(v3, v14);
    v3 += v14;
    if (v15)
    {
      __break(1u);
      break;
    }

LABEL_13:
    v5 += 40;
    --v6;
  }

  while (v6);
  while (v6 < *(v1 + 16))
  {
    outlined init with copy of CandidateSuggestion(v4, v0 + 56);
    if (!v3)
    {
      goto LABEL_31;
    }

    __swift_project_boxed_opaque_existential_1Tm((v0 + 56), *(v0 + 80));
    v16 = CandidateSuggestion.getSuggestionId()();
    if (v16._countAndFlagsBits == static SuggestionConstants.serverSuggestionId.getter() && v16._object == v17)
    {
      goto LABEL_18;
    }

    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v19)
    {
      goto LABEL_19;
    }

    __swift_project_boxed_opaque_existential_1Tm((v0 + 56), *(v0 + 80));
    v20 = CandidateSuggestion.getSuggestionId()();
    if (v20._countAndFlagsBits == static SuggestionConstants.serverSuggestionIdMath.getter() && v20._object == v21)
    {
LABEL_18:
    }

    else
    {
      v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v22 & 1) == 0)
      {
LABEL_31:
        outlined init with take of CandidateSuggestion((v0 + 56), v0 + 96);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v24 = _swiftEmptyArrayStorage[2];
        v23 = _swiftEmptyArrayStorage[3];
        if (v24 >= v23 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v24 + 1;
        outlined init with take of CandidateSuggestion((v0 + 96), &_swiftEmptyArrayStorage[5 * v24 + 4]);
        goto LABEL_20;
      }
    }

LABEL_19:
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
LABEL_20:
    ++v6;
    v4 += 40;
    if (v2 == v6)
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_46:
  swift_once();
LABEL_37:
  v25 = type metadata accessor for Logger();
  __swift_project_value_buffer(v25, static SuggestionsLogger.suggestions);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.error.getter();
  v28 = os_log_type_enabled(v26, v27);
  v29 = *(v0 + 288);
  if (v28)
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_0, v26, v27, "Unable to find server suggestionID", v30, 2u);
  }

  v31 = *(v0 + 8);

  return v31(0);
}

{
  v1 = *(v0 + 336);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t specialized InfoServerGenerator.createSuggestionForCandidate(candidate:factory:locale:)(uint64_t a1)
{
  v2 = *(*v1 + 248);
  v3 = *(*v1 + 240);
  v4 = *(*v1 + 232);
  v5 = *(*v1 + 224);
  v6 = *(*v1 + 216);
  v7 = *(*v1 + 208);
  v8 = *(*v1 + 200);
  v9 = *(*v1 + 192);
  *(*v1 + 304) = a1;

  outlined destroy of SpeakableString?(v9, &_s18SiriSuggestionsKit10PreferenceVSgMd, &_s18SiriSuggestionsKit10PreferenceVSgMR);
  outlined destroy of SpeakableString?(v8, &_s18SiriSuggestionsKit15DeliveryVehicleOSgMd, &_s18SiriSuggestionsKit15DeliveryVehicleOSgMR);
  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(specialized InfoServerGenerator.createSuggestionForCandidate(candidate:factory:locale:), 0, 0);
}

{
  v4 = *v2;

  if (v1)
  {
  }

  else
  {

    *(v4 + 336) = a1;

    return _swift_task_switch(specialized InfoServerGenerator.createSuggestionForCandidate(candidate:factory:locale:), 0, 0);
  }
}

uint64_t specialized InfoServerGenerator.createRelatedQuestionsSuggestion(candidate:factory:locale:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriSuggestionsKit10PreferenceVSgMd, &_s18SiriSuggestionsKit10PreferenceVSgMR);
  v4[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriSuggestionsKit15DeliveryVehicleOSgMd, &_s18SiriSuggestionsKit15DeliveryVehicleOSgMR);
  v4[7] = swift_task_alloc();
  v5 = type metadata accessor for Objective();
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  v6 = type metadata accessor for SiriSuggestions.Intent();
  v4[11] = v6;
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();

  return _swift_task_switch(specialized InfoServerGenerator.createRelatedQuestionsSuggestion(candidate:factory:locale:), 0, 0);
}

uint64_t specialized InfoServerGenerator.createRelatedQuestionsSuggestion(candidate:factory:locale:)()
{
  v1 = v0[12];
  v2 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v6 = v0[8];
  v5 = v0[9];
  v21 = v0[7];
  v22 = v0[6];
  v7 = v0[3];
  v8 = Apple_Parsec_Siri_V2alpha_ServerSuggestionCandidate.toINInformationUseCase(locale:)();
  v0[14] = v8;
  v23 = v7[4];
  v9 = v7;
  v10 = v7[3];
  __swift_project_boxed_opaque_existential_1Tm(v9, v10);
  *v2 = v8;
  (*(v1 + 104))(v2, enum case for SiriSuggestions.Intent.inIntent(_:), v3);
  (*(v5 + 104))(v4, enum case for Objective.discoverability(_:), v6);
  v11 = type metadata accessor for DeliveryVehicle();
  (*(*(v11 - 8) + 56))(v21, 1, 1, v11);
  v12 = type metadata accessor for Preference();
  (*(*(v12 - 8) + 56))(v22, 1, 1, v12);
  v13 = v8;
  v14 = swift_task_alloc();
  v0[15] = v14;
  *v14 = v0;
  v14[1] = specialized InfoServerGenerator.createRelatedQuestionsSuggestion(candidate:factory:locale:);
  v15 = v0[13];
  v16 = v0[10];
  v18 = v0[6];
  v17 = v0[7];
  v19.n128_u64[0] = 1.0;

  return dispatch thunk of CandidateSuggestionFactory.create(intent:objective:confidenceScore:deliveryVehicle:preference:)(v15, v16, v17, v18, v10, v23, v19);
}

{
  v1 = v0[16];
  if (v1)
  {
    v2 = v0[14];
    v3 = v0[2];
    v4 = swift_task_alloc();
    v0[17] = v4;
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = swift_task_alloc();
    v0[18] = v5;
    *v5 = v0;
    v5[1] = specialized InfoServerGenerator.createRelatedQuestionsSuggestion(candidate:factory:locale:);

    return specialized Sequence.asyncMap<A>(_:)(&async function pointer to partial apply for closure #1 in InfoServerGenerator.createRelatedQuestionsSuggestion(candidate:factory:locale:), v4, v1);
  }

  else
  {
    if (one-time initialization token for suggestions != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static SuggestionsLogger.suggestions);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[14];
    if (v10)
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_0, v8, v9, "Unable to find server suggestionID", v12, 2u);
    }

    v13 = v0[1];

    return v13(_swiftEmptyArrayStorage);
  }
}

{

  v1 = *(v0 + 152);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t specialized InfoServerGenerator.createRelatedQuestionsSuggestion(candidate:factory:locale:)(uint64_t a1)
{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  v6 = *(*v1 + 72);
  v7 = *(*v1 + 64);
  v8 = *(*v1 + 56);
  v9 = *(*v1 + 48);
  *(*v1 + 128) = a1;

  outlined destroy of SpeakableString?(v9, &_s18SiriSuggestionsKit10PreferenceVSgMd, &_s18SiriSuggestionsKit10PreferenceVSgMR);
  outlined destroy of SpeakableString?(v8, &_s18SiriSuggestionsKit15DeliveryVehicleOSgMd, &_s18SiriSuggestionsKit15DeliveryVehicleOSgMR);
  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(specialized InfoServerGenerator.createRelatedQuestionsSuggestion(candidate:factory:locale:), 0, 0);
}

{
  v4 = *v2;

  if (v1)
  {
  }

  else
  {

    *(v4 + 152) = a1;

    return _swift_task_switch(specialized InfoServerGenerator.createRelatedQuestionsSuggestion(candidate:factory:locale:), 0, 0);
  }
}

uint64_t specialized InfoServerGenerator.generateCandidateSuggestions(interaction:environment:factory:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[28] = a2;
  v3[29] = a3;
  v3[27] = a1;
  v4 = type metadata accessor for Locale();
  v3[30] = v4;
  v3[31] = *(v4 - 8);
  v3[32] = swift_task_alloc();
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestionCandidate();
  v3[33] = v5;
  v3[34] = *(v5 - 8);
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  type metadata accessor for BinaryDecodingOptions();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestion();
  v3[39] = v6;
  v3[40] = *(v6 - 8);
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();

  return _swift_task_switch(specialized InfoServerGenerator.generateCandidateSuggestions(interaction:environment:factory:), 0, 0);
}

uint64_t specialized InfoServerGenerator.generateCandidateSuggestions(interaction:environment:factory:)()
{
  v103 = v0;
  if (one-time initialization token for suggestions != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 344) = __swift_project_value_buffer(v1, static SuggestionsLogger.suggestions);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "Info suggestions running generators", v4, 2u);
  }

  v5 = *(v0 + 216);

  __swift_project_boxed_opaque_existential_1Tm(v5, v5[3]);
  v6 = dispatch thunk of Interaction.executionParameters.getter();
  v7 = static SuggestionConstants.serverPayloadKey.getter();
  if (!*(v6 + 16))
  {

    goto LABEL_14;
  }

  v9 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v8);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
LABEL_14:

    v13 = 0;
    v14 = 0xF000000000000000;
    goto LABEL_15;
  }

  outlined init with copy of Decodable & Encodable & Sendable(*(v6 + 56) + 48 * v9, v0 + 16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSe_SEs8SendablepMd, &_sSe_SEs8SendablepMR);
  v12 = swift_dynamicCast();
  if (v12)
  {
    v13 = *(v0 + 192);
  }

  else
  {
    v13 = 0;
  }

  if (v12)
  {
    v14 = *(v0 + 200);
  }

  else
  {
    v14 = 0xF000000000000000;
  }

LABEL_15:
  *(v0 + 352) = v13;
  *(v0 + 360) = v14;
  v15 = dispatch thunk of Interaction.executionParameters.getter();
  Payload = static SuggestionConstants.alternateQueryPayloadKey.getter();
  if (!*(v15 + 16))
  {

    goto LABEL_21;
  }

  v18 = specialized __RawDictionaryStorage.find<A>(_:)(Payload, v17);
  v20 = v19;

  if ((v20 & 1) == 0)
  {
LABEL_21:

    v22 = 0;
    v23 = 0xF000000000000000;
    goto LABEL_22;
  }

  outlined init with copy of Decodable & Encodable & Sendable(*(v15 + 56) + 48 * v18, v0 + 64);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSe_SEs8SendablepMd, &_sSe_SEs8SendablepMR);
  v21 = swift_dynamicCast();
  v22 = *(v0 + 176);
  if (v21)
  {
    v23 = *(v0 + 184);
  }

  else
  {
    v22 = 0;
    v23 = 0xF000000000000000;
  }

LABEL_22:
  *(v0 + 368) = v22;
  *(v0 + 376) = v23;
  v24 = dispatch thunk of Interaction.executionParameters.getter();
  v25 = static SuggestionConstants.relatedQuestionsPayloadKey.getter();
  if (!*(v24 + 16))
  {

    goto LABEL_31;
  }

  v27 = specialized __RawDictionaryStorage.find<A>(_:)(v25, v26);
  v29 = v28;

  if ((v29 & 1) == 0)
  {
LABEL_31:

    v31 = 0;
    v32 = 0xF000000000000000;
    goto LABEL_32;
  }

  outlined init with copy of Decodable & Encodable & Sendable(*(v24 + 56) + 48 * v27, v0 + 112);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSe_SEs8SendablepMd, &_sSe_SEs8SendablepMR);
  v30 = swift_dynamicCast();
  if (v30)
  {
    v31 = *(v0 + 160);
  }

  else
  {
    v31 = 0;
  }

  if (v30)
  {
    v32 = *(v0 + 168);
  }

  else
  {
    v32 = 0xF000000000000000;
  }

LABEL_32:
  *(v0 + 384) = v31;
  *(v0 + 392) = v32;
  if (v14 >> 60 != 15)
  {
    v102 = 0;
    v100 = 0u;
    v101 = 0u;
    outlined copy of Data._Representation(v13, v14);
    outlined copy of Data._Representation(v13, v14);
    BinaryDecodingOptions.init()();
    lazy protocol witness table accessor for type DomainOwner and conformance DomainOwner(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_ServerSuggestion and conformance Apple_Parsec_Siri_V2alpha_ServerSuggestion, 255, &type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestion, &protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ServerSuggestion);
    Message.init(serializedData:extensions:partial:options:)();
    *(v0 + 400) = 0;
    v34 = Apple_Parsec_Siri_V2alpha_ServerSuggestion.candidates.getter();
    *(v0 + 408) = v34;
    v35 = *(v34 + 16);
    *(v0 + 416) = v35;
    if (v35)
    {
      v36 = *(v0 + 264);
      v37 = *(v0 + 272);
      v38 = *(v37 + 16);
      v37 += 16;
      v39 = *(v0 + 224);
      v40 = *(v37 + 64);
      *(v0 + 552) = v40;
      *(v0 + 424) = *(v37 + 56);
      *(v0 + 432) = v38;
      *(v0 + 440) = 0;
      *(v0 + 448) = _swiftEmptyArrayStorage;
      v42 = *(v0 + 248);
      v41 = *(v0 + 256);
      v43 = *(v0 + 240);
      v38(*(v0 + 288), v34 + ((v40 + 32) & ~v40), v36);
      __swift_project_boxed_opaque_existential_1Tm(v39, v39[3]);
      dispatch thunk of EnvironmentSnapshot.siriLocale.getter();
      v44 = Locale.identifier.getter();
      v46 = v45;
      *(v0 + 456) = v45;
      (*(v42 + 8))(v41, v43);
      v47 = swift_task_alloc();
      *(v0 + 464) = v47;
      *v47 = v0;
      v47[1] = specialized InfoServerGenerator.generateCandidateSuggestions(interaction:environment:factory:);
      v48 = *(v0 + 288);
      v49 = *(v0 + 232);

      return specialized InfoServerGenerator.createSuggestionForCandidate(candidate:factory:locale:)(v48, v49, v44, v46);
    }

    v51 = *(v0 + 336);
    v52 = *(v0 + 312);
    v53 = *(v0 + 320);
    outlined consume of Data?(*(v0 + 352), *(v0 + 360));
    (*(v53 + 8))(v51, v52);
    v32 = *(v0 + 392);
    v33 = *(v0 + 400);
    goto LABEL_43;
  }

  if (v23 >> 60 != 15)
  {
    v33 = 0;
LABEL_43:
    if (v32 >> 60 == 15)
    {
      v54 = *(v0 + 352);
      v55 = *(v0 + 360);
      outlined consume of Data?(*(v0 + 368), *(v0 + 376));
      v56 = v54;
      goto LABEL_50;
    }

    v31 = *(v0 + 384);
    goto LABEL_46;
  }

  if (v32 >> 60 == 15)
  {
LABEL_52:

    v73 = *(v0 + 8);

    return v73(_swiftEmptyArrayStorage);
  }

  v33 = 0;
LABEL_46:
  v102 = 0;
  v100 = 0u;
  v101 = 0u;
  outlined copy of Data._Representation(v31, v32);
  outlined copy of Data._Representation(v31, v32);
  BinaryDecodingOptions.init()();
  lazy protocol witness table accessor for type DomainOwner and conformance DomainOwner(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_ServerSuggestion and conformance Apple_Parsec_Siri_V2alpha_ServerSuggestion, 255, &type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestion, &protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ServerSuggestion);
  Message.init(serializedData:extensions:partial:options:)();
  if (v33)
  {
    v57 = *(v0 + 384);
    v58 = *(v0 + 392);

    outlined consume of Data?(v57, v58);
    swift_errorRetain();
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.error.getter();

    v61 = os_log_type_enabled(v59, v60);
    v63 = *(v0 + 384);
    v62 = *(v0 + 392);
    v65 = *(v0 + 368);
    v64 = *(v0 + 376);
    v66 = *(v0 + 352);
    v55 = *(v0 + 360);
    if (v61)
    {
      v99 = *(v0 + 360);
      v67 = swift_slowAlloc();
      v98 = v62;
      v68 = swift_slowAlloc();
      *&v100 = v68;
      *v67 = 136315138;
      *(v0 + 208) = v33;
      swift_errorRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v69 = String.init<A>(describing:)();
      v97 = v63;
      v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v69, v70, &v100);

      *(v67 + 4) = v71;
      _os_log_impl(&dword_0, v59, v60, "Unable to get candidate from factory: %s", v67, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v68);

      outlined consume of Data?(v65, v64);

      outlined consume of Data?(v97, v98);
      v56 = v66;
      v72 = v99;
LABEL_51:
      outlined consume of Data?(v56, v72);
      goto LABEL_52;
    }

    outlined consume of Data?(v65, v64);

    outlined consume of Data?(v63, v62);
    v56 = v66;
LABEL_50:
    v72 = v55;
    goto LABEL_51;
  }

  v74 = Apple_Parsec_Siri_V2alpha_ServerSuggestion.candidates.getter();
  *(v0 + 480) = v74;
  v75 = *(v74 + 16);
  *(v0 + 488) = v75;
  if (!v75)
  {

    v90 = *(v0 + 384);
    v91 = *(v0 + 392);
    v93 = *(v0 + 352);
    v92 = *(v0 + 360);
    v95 = *(v0 + 320);
    v94 = *(v0 + 328);
    v96 = *(v0 + 312);
    outlined consume of Data?(*(v0 + 368), *(v0 + 376));
    outlined consume of Data?(v90, v91);
    outlined consume of Data?(v90, v91);
    outlined consume of Data?(v93, v92);
    (*(v95 + 8))(v94, v96);
    goto LABEL_52;
  }

  v76 = *(v0 + 224);
  v78 = *(v0 + 272);
  v77 = *(v0 + 280);
  v79 = *(v78 + 16);
  v78 += 16;
  v80 = *(v78 + 64);
  *(v0 + 556) = v80;
  *(v0 + 496) = *(v78 + 56);
  *(v0 + 504) = v79;
  *(v0 + 520) = _swiftEmptyArrayStorage;
  *(v0 + 512) = 0;
  v81 = *(v0 + 256);
  v82 = *(v0 + 240);
  v83 = *(v0 + 248);
  v79(v77, v74 + ((v80 + 32) & ~v80), *(v0 + 264));
  __swift_project_boxed_opaque_existential_1Tm(v76, v76[3]);
  dispatch thunk of EnvironmentSnapshot.siriLocale.getter();
  v84 = Locale.identifier.getter();
  v86 = v85;
  *(v0 + 528) = v85;
  (*(v83 + 8))(v81, v82);
  v87 = swift_task_alloc();
  *(v0 + 536) = v87;
  *v87 = v0;
  v87[1] = specialized InfoServerGenerator.generateCandidateSuggestions(interaction:environment:factory:);
  v88 = *(v0 + 280);
  v89 = *(v0 + 232);

  return specialized InfoServerGenerator.createRelatedQuestionsSuggestion(candidate:factory:locale:)(v88, v89, v84, v86);
}

uint64_t specialized InfoServerGenerator.generateCandidateSuggestions(interaction:environment:factory:)(uint64_t a1)
{
  v2 = *(*v1 + 288);
  v3 = *(*v1 + 272);
  v4 = *(*v1 + 264);
  *(*v1 + 472) = a1;

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(specialized InfoServerGenerator.generateCandidateSuggestions(interaction:environment:factory:), 0, 0);
}

{
  v2 = *(*v1 + 280);
  v3 = *(*v1 + 272);
  v4 = *(*v1 + 264);
  *(*v1 + 544) = a1;

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(specialized InfoServerGenerator.generateCandidateSuggestions(interaction:environment:factory:), 0, 0);
}

void specialized InfoServerGenerator.generateCandidateSuggestions(interaction:environment:factory:)()
{
  v77 = v0;
  v1 = *(v0 + 472);
  v2 = *(v0 + 448);
  if (!v1)
  {
    goto LABEL_15;
  }

  v3 = *(v1 + 16);
  v4 = v2[2];
  v5 = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
    goto LABEL_35;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = *(v0 + 448);
  if (isUniquelyReferenced_nonNull_native && v5 <= v2[3] >> 1)
  {
    if (*(v1 + 16))
    {
      goto LABEL_6;
    }
  }

  else
  {
    if (v4 <= v5)
    {
      v10 = v4 + v3;
    }

    else
    {
      v10 = v4;
    }

    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v10, 1, *(v0 + 448));
    if (*(v1 + 16))
    {
LABEL_6:
      if ((v2[3] >> 1) - v2[2] >= v3)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriSuggestionsKit19CandidateSuggestion_pMd, &_s18SiriSuggestionsKit19CandidateSuggestion_pMR);
        swift_arrayInitWithCopy();

        if (!v3)
        {
          goto LABEL_15;
        }

        v7 = v2[2];
        v8 = __OFADD__(v7, v3);
        v9 = v7 + v3;
        if (!v8)
        {
          v2[2] = v9;
          goto LABEL_15;
        }

LABEL_37:
        __break(1u);
        return;
      }

LABEL_36:
      __break(1u);
      goto LABEL_37;
    }
  }

  if (v3)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

LABEL_15:
  v11 = *(v0 + 440) + 1;
  if (v11 == *(v0 + 416))
  {

    v12 = *(v0 + 336);
    v13 = *(v0 + 312);
    v14 = *(v0 + 320);
    outlined consume of Data?(*(v0 + 352), *(v0 + 360));
    (*(v14 + 8))(v12, v13);
    v15 = *(v0 + 392);
    if (v15 >> 60 == 15)
    {
      v17 = *(v0 + 352);
      v16 = *(v0 + 360);
      outlined consume of Data?(*(v0 + 368), *(v0 + 376));
      outlined consume of Data?(v17, v16);
LABEL_30:

      v64 = *(v0 + 8);

      v64(v2);
      return;
    }

    v28 = *(v0 + 400);
    v29 = *(v0 + 384);
    v76 = 0;
    memset(v75, 0, sizeof(v75));
    outlined copy of Data._Representation(v29, v15);
    outlined copy of Data._Representation(v29, v15);
    BinaryDecodingOptions.init()();
    lazy protocol witness table accessor for type DomainOwner and conformance DomainOwner(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_ServerSuggestion and conformance Apple_Parsec_Siri_V2alpha_ServerSuggestion, 255, &type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestion, &protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ServerSuggestion);
    Message.init(serializedData:extensions:partial:options:)();
    if (v28)
    {
      v31 = *(v0 + 384);
      v30 = *(v0 + 392);

      outlined consume of Data?(v31, v30);
      swift_errorRetain();
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.error.getter();

      v34 = os_log_type_enabled(v32, v33);
      v36 = *(v0 + 384);
      v35 = *(v0 + 392);
      v38 = *(v0 + 368);
      v37 = *(v0 + 376);
      v40 = *(v0 + 352);
      v39 = *(v0 + 360);
      if (v34)
      {
        v74 = *(v0 + 360);
        v41 = swift_slowAlloc();
        v73 = v35;
        v42 = swift_slowAlloc();
        *&v75[0] = v42;
        *v41 = 136315138;
        *(v0 + 208) = v28;
        swift_errorRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
        v43 = String.init<A>(describing:)();
        v72 = v36;
        v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v44, v75);

        *(v41 + 4) = v45;
        _os_log_impl(&dword_0, v32, v33, "Unable to get candidate from factory: %s", v41, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v42);

        outlined consume of Data?(v38, v37);

        outlined consume of Data?(v72, v73);
        v46 = v40;
        v47 = v74;
      }

      else
      {

        outlined consume of Data?(v38, v37);

        outlined consume of Data?(v36, v35);
        v46 = v40;
        v47 = v39;
      }

      outlined consume of Data?(v46, v47);
      v2 = _swiftEmptyArrayStorage;
      goto LABEL_30;
    }

    v48 = Apple_Parsec_Siri_V2alpha_ServerSuggestion.candidates.getter();
    *(v0 + 480) = v48;
    v49 = *(v48 + 16);
    *(v0 + 488) = v49;
    if (!v49)
    {

      v66 = *(v0 + 384);
      v65 = *(v0 + 392);
      v68 = *(v0 + 352);
      v67 = *(v0 + 360);
      v70 = *(v0 + 320);
      v69 = *(v0 + 328);
      v71 = *(v0 + 312);
      outlined consume of Data?(*(v0 + 368), *(v0 + 376));
      outlined consume of Data?(v66, v65);
      outlined consume of Data?(v66, v65);
      outlined consume of Data?(v68, v67);
      (*(v70 + 8))(v69, v71);
      goto LABEL_30;
    }

    v50 = *(v0 + 224);
    v52 = *(v0 + 272);
    v51 = *(v0 + 280);
    v53 = *(v52 + 16);
    v52 += 16;
    v54 = *(v52 + 64);
    *(v0 + 556) = v54;
    *(v0 + 496) = *(v52 + 56);
    *(v0 + 504) = v53;
    *(v0 + 520) = v2;
    *(v0 + 512) = 0;
    v55 = *(v0 + 256);
    v56 = *(v0 + 240);
    v57 = *(v0 + 248);
    v53(v51, v48 + ((v54 + 32) & ~v54), *(v0 + 264));
    __swift_project_boxed_opaque_existential_1Tm(v50, v50[3]);
    dispatch thunk of EnvironmentSnapshot.siriLocale.getter();
    v58 = Locale.identifier.getter();
    v60 = v59;
    *(v0 + 528) = v59;
    (*(v57 + 8))(v55, v56);
    v61 = swift_task_alloc();
    *(v0 + 536) = v61;
    *v61 = v0;
    v61[1] = specialized InfoServerGenerator.generateCandidateSuggestions(interaction:environment:factory:);
    v62 = *(v0 + 280);
    v63 = *(v0 + 232);

    specialized InfoServerGenerator.createRelatedQuestionsSuggestion(candidate:factory:locale:)(v62, v63, v58, v60);
  }

  else
  {
    *(v0 + 440) = v11;
    *(v0 + 448) = v2;
    v19 = *(v0 + 248);
    v18 = *(v0 + 256);
    v20 = *(v0 + 240);
    v21 = *(v0 + 224);
    (*(v0 + 432))(*(v0 + 288), *(v0 + 408) + ((*(v0 + 552) + 32) & ~*(v0 + 552)) + *(v0 + 424) * v11, *(v0 + 264));
    __swift_project_boxed_opaque_existential_1Tm(v21, v21[3]);
    dispatch thunk of EnvironmentSnapshot.siriLocale.getter();
    v22 = Locale.identifier.getter();
    v24 = v23;
    *(v0 + 456) = v23;
    (*(v19 + 8))(v18, v20);
    v25 = swift_task_alloc();
    *(v0 + 464) = v25;
    *v25 = v0;
    v25[1] = specialized InfoServerGenerator.generateCandidateSuggestions(interaction:environment:factory:);
    v26 = *(v0 + 288);
    v27 = *(v0 + 232);

    specialized InfoServerGenerator.createSuggestionForCandidate(candidate:factory:locale:)(v26, v27, v22, v24);
  }
}

void *specialized InfoServerGenerator.generateCandidateSuggestions(interaction:environment:factory:)()
{
  v1 = *(v0 + 544);
  result = *(v0 + 520);
  v3 = *(v1 + 16);
  v4 = result[2];
  v5 = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
    goto LABEL_22;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v0 + 520);
  if (result && v5 <= v6[3] >> 1)
  {
    if (*(v1 + 16))
    {
      goto LABEL_5;
    }
  }

  else
  {
    if (v4 <= v5)
    {
      v10 = v4 + v3;
    }

    else
    {
      v10 = v4;
    }

    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v10, 1, *(v0 + 520));
    v6 = result;
    if (*(v1 + 16))
    {
LABEL_5:
      if ((v6[3] >> 1) - v6[2] >= v3)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriSuggestionsKit19CandidateSuggestion_pMd, &_s18SiriSuggestionsKit19CandidateSuggestion_pMR);
        swift_arrayInitWithCopy();

        if (!v3)
        {
          goto LABEL_14;
        }

        v7 = v6[2];
        v8 = __OFADD__(v7, v3);
        v9 = v7 + v3;
        if (!v8)
        {
          v6[2] = v9;
          goto LABEL_14;
        }

LABEL_24:
        __break(1u);
        return result;
      }

LABEL_23:
      __break(1u);
      goto LABEL_24;
    }
  }

  if (v3)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

LABEL_14:
  v11 = *(v0 + 512) + 1;
  if (v11 == *(v0 + 488))
  {

    v13 = *(v0 + 384);
    v12 = *(v0 + 392);
    v15 = *(v0 + 352);
    v14 = *(v0 + 360);
    v17 = *(v0 + 320);
    v16 = *(v0 + 328);
    v18 = *(v0 + 312);
    outlined consume of Data?(*(v0 + 368), *(v0 + 376));
    outlined consume of Data?(v13, v12);
    outlined consume of Data?(v13, v12);
    outlined consume of Data?(v15, v14);
    (*(v17 + 8))(v16, v18);

    v19 = *(v0 + 8);

    return v19(v6);
  }

  else
  {
    *(v0 + 520) = v6;
    *(v0 + 512) = v11;
    v20 = *(v0 + 256);
    v21 = *(v0 + 240);
    v22 = *(v0 + 248);
    v23 = *(v0 + 224);
    (*(v0 + 504))(*(v0 + 280), *(v0 + 480) + ((*(v0 + 556) + 32) & ~*(v0 + 556)) + *(v0 + 496) * v11, *(v0 + 264));
    __swift_project_boxed_opaque_existential_1Tm(v23, v23[3]);
    dispatch thunk of EnvironmentSnapshot.siriLocale.getter();
    v24 = Locale.identifier.getter();
    v26 = v25;
    *(v0 + 528) = v25;
    (*(v22 + 8))(v20, v21);
    v27 = swift_task_alloc();
    *(v0 + 536) = v27;
    *v27 = v0;
    v27[1] = specialized InfoServerGenerator.generateCandidateSuggestions(interaction:environment:factory:);
    v28 = *(v0 + 280);
    v29 = *(v0 + 232);

    return specialized InfoServerGenerator.createRelatedQuestionsSuggestion(candidate:factory:locale:)(v28, v29, v24, v26);
  }
}

uint64_t specialized FromContextResolver.resolveParameter(parameter:suggestion:interaction:environment:)(uint64_t a1)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = v1;
  return _swift_task_switch(specialized FromContextResolver.resolveParameter(parameter:suggestion:interaction:environment:), 0, 0);
}

uint64_t specialized FromContextResolver.resolveParameter(parameter:suggestion:interaction:environment:)()
{
  v1 = *(*(v0 + 88) + 32);
  __swift_project_boxed_opaque_existential_1Tm(*(v0 + 80), *(*(v0 + 80) + 24));
  v2 = dispatch thunk of CandidateSuggestion.context.getter();
  v4 = v3;
  *(v0 + 96) = v2;
  v7 = (v1 + *v1);
  v5 = swift_task_alloc();
  *(v0 + 104) = v5;
  *v5 = v0;
  v5[1] = specialized FromContextResolver.resolveParameter(parameter:suggestion:interaction:environment:);

  return v7(v0 + 48, v2, v4);
}

{

  swift_unknownObjectRelease();

  return _swift_task_switch(specialized FromContextResolver.resolveParameter(parameter:suggestion:interaction:environment:), 0, 0);
}

{
  if (*(v0 + 72))
  {
    outlined init with take of Any((v0 + 48), (v0 + 16));
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
    v1 = swift_allocObject();
    *(v1 + 1) = xmmword_1AD90;
    outlined init with take of Any((v0 + 16), v1 + 2);
  }

  else
  {
    outlined destroy of SpeakableString?(v0 + 48, &_sypSgMd, &_sypSgMR);
    v1 = _swiftEmptyArrayStorage;
  }

  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t lazy protocol witness table accessor for type SiriSuggestionsFeatureFlags and conformance SiriSuggestionsFeatureFlags()
{
  result = lazy protocol witness table cache variable for type SiriSuggestionsFeatureFlags and conformance SiriSuggestionsFeatureFlags;
  if (!lazy protocol witness table cache variable for type SiriSuggestionsFeatureFlags and conformance SiriSuggestionsFeatureFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriSuggestionsFeatureFlags and conformance SiriSuggestionsFeatureFlags);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SiriSuggestionsFeatureFlags(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for SiriSuggestionsFeatureFlags(_WORD *result, int a2, int a3)
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

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t outlined copy of Data._Representation(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t outlined consume of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined consume of Data._Representation(a1, a2);
  }

  return a1;
}

uint64_t outlined consume of Data._Representation(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t outlined init with copy of Decodable & Encodable & Sendable(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t outlined init with copy of CandidateSuggestion(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t outlined init with take of CandidateSuggestion(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t partial apply for closure #3 in InfoServerGenerator.createSuggestionForCandidate(candidate:factory:locale:)(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for closure #3 in InfoServerGenerator.createSuggestionForCandidate(candidate:factory:locale:);

  return closure #3 in InfoServerGenerator.createSuggestionForCandidate(candidate:factory:locale:)(a1, a2, v7, v6);
}

uint64_t partial apply for closure #1 in InfoServerGenerator.createRelatedQuestionsSuggestion(candidate:factory:locale:)(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for closure #3 in InfoServerGenerator.createSuggestionForCandidate(candidate:factory:locale:);

  return closure #1 in InfoServerGenerator.createRelatedQuestionsSuggestion(candidate:factory:locale:)(a1, a2, v7, v6);
}

void *__swift_project_boxed_opaque_existential_1Tm(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t outlined destroy of SpeakableString?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t lazy protocol witness table accessor for type DomainOwner and conformance DomainOwner(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t *__swift_allocate_boxed_opaque_existential_0Tm(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(void *a1)
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

BOOL InformationSuggestionsResolvableParameter.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of InformationSuggestionsResolvableParameter.init(rawValue:), v2);

  return v3 != 0;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance InformationSuggestionsResolvableParameter()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance InformationSuggestionsResolvableParameter(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance InformationSuggestionsResolvableParameter@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for RawRepresentable.init(rawValue:) in conformance InformationSuggestionsResolvableParameter, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t SolarEventResolver.__allocating_init(_:)(__int128 *a1)
{
  v2 = swift_allocObject();
  *(v2 + 56) = 0xD000000000000010;
  *(v2 + 64) = 0x800000000001BC80;
  outlined init with take of CandidateSuggestion(a1, v2 + 16);
  return v2;
}

uint64_t SolarEventResolver.init(_:)(__int128 *a1)
{
  *(v1 + 56) = 0xD000000000000010;
  *(v1 + 64) = 0x800000000001BC80;
  outlined init with take of CandidateSuggestion(a1, v1 + 16);
  return v1;
}

uint64_t SolarEventResolver.resolverTypeOperand.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t SolarEventResolver.resolveParameter(parameter:suggestion:interaction:environment:)()
{
  *(v1 + 16) = v0;
  return _swift_task_switch(SolarEventResolver.resolveParameter(parameter:suggestion:interaction:environment:), 0, 0);
}

{
  v1 = SolarEventResolver.resolveParameter()();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t SolarEventResolver.resolveParameter()()
{
  v1 = type metadata accessor for Calendar.Component();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Calendar();
  v5 = *(v19 - 8);
  __chkstk_darwin(v19);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Date();
  v8 = *(v18 - 8);
  __chkstk_darwin(v18);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 16), *(v0 + 40));
  dispatch thunk of Clock.getCurrentTime()();
  Date.init(timeIntervalSinceReferenceDate:)();
  v11 = [objc_opt_self() currentCalendar];
  static Calendar._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v2 + 104))(v4, enum case for Calendar.Component.hour(_:), v1);
  v12 = Calendar.component(_:from:)();
  (*(v2 + 8))(v4, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v13 = swift_allocObject();
  v14 = v13;
  v15 = 0x657369726E7573;
  if ((v12 - 6) < 0xC)
  {
    v15 = 0x7465736E7573;
  }

  v16 = 0xE700000000000000;
  if ((v12 - 6) < 0xC)
  {
    v16 = 0xE600000000000000;
  }

  *(v13 + 16) = xmmword_1AD90;
  *(v13 + 56) = &type metadata for String;
  *(v13 + 32) = v15;
  *(v13 + 40) = v16;
  (*(v5 + 8))(v7, v19);
  (*(v8 + 8))(v10, v18);
  return v14;
}

uint64_t SolarEventResolver.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return v0;
}

uint64_t SolarEventResolver.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return _swift_deallocClassInstance(v0, 72, 7);
}

uint64_t protocol witness for InternalResolver.resolverTypeOperand.getter in conformance SolarEventResolver()
{
  v1 = *(*v0 + 56);

  return v1;
}

uint64_t specialized SolarEventResolver.resolveParameter(date:calendar:)(uint64_t a1)
{
  v1 = type metadata accessor for Calendar.Component();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 104))(v4, enum case for Calendar.Component.hour(_:), v1);
  v5 = Calendar.component(_:from:)();
  (*(v2 + 8))(v4, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  result = swift_allocObject();
  *(result + 16) = xmmword_1AD90;
  v7 = 0x657369726E7573;
  if ((v5 - 6) < 0xC)
  {
    v7 = 0x7465736E7573;
  }

  v8 = 0xE700000000000000;
  *(result + 56) = &type metadata for String;
  if ((v5 - 6) < 0xC)
  {
    v8 = 0xE600000000000000;
  }

  *(result + 32) = v7;
  *(result + 40) = v8;
  return result;
}

unint64_t lazy protocol witness table accessor for type InformationSuggestionsResolvableParameter and conformance InformationSuggestionsResolvableParameter()
{
  result = lazy protocol witness table cache variable for type InformationSuggestionsResolvableParameter and conformance InformationSuggestionsResolvableParameter;
  if (!lazy protocol witness table cache variable for type InformationSuggestionsResolvableParameter and conformance InformationSuggestionsResolvableParameter)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InformationSuggestionsResolvableParameter and conformance InformationSuggestionsResolvableParameter);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type SolarEventResolver and conformance SolarEventResolver(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SolarEventResolver();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t SuggestionsLogger.suggestions.unsafeMutableAddressor()
{
  if (one-time initialization token for suggestions != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v0, static SuggestionsLogger.suggestions);
}

uint64_t one-time initialization function for suggestions()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static SuggestionsLogger.suggestions);
  __swift_project_value_buffer(v0, static SuggestionsLogger.suggestions);
  type metadata accessor for OS_os_log();
  OS_os_log.init(subsystem:category:)();
  return Logger.init(_:)();
}

uint64_t static SuggestionsLogger.suggestions.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for suggestions != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static SuggestionsLogger.suggestions);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
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

unint64_t type metadata accessor for OS_os_log()
{
  result = lazy cache variable for type metadata for OS_os_log;
  if (!lazy cache variable for type metadata for OS_os_log)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_os_log);
  }

  return result;
}

uint64_t INInformationUseCaseUtterance.toDialog(dialogProvider:)@<X0>(uint64_t *a1@<X8>)
{
  v3 = [v1 displayString];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = [v1 spokenString];
  if (v4)
  {
    v5 = v4;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  a1[3] = type metadata accessor for SpeakableString();
  __swift_allocate_boxed_opaque_existential_0Tm(a1);
  return SpeakableString.init(print:speak:)();
}

uint64_t protocol witness for DialogParameterProvider.toDialog(dialogProvider:) in conformance INInformationUseCaseUtterance@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = [*v1 displayString];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = [v3 spokenString];
  if (v5)
  {
    v6 = v5;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  a1[3] = type metadata accessor for SpeakableString();
  __swift_allocate_boxed_opaque_existential_0Tm(a1);
  return SpeakableString.init(print:speak:)();
}

uint64_t *SuggestionConstants.kOwnerInformation.unsafeMutableAddressor()
{
  if (one-time initialization token for kOwnerInformation != -1)
  {
    swift_once();
  }

  return &static SuggestionConstants.kOwnerInformation;
}

uint64_t static SuggestionConstants.intentMatchForUseCase(intentMatches:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriSuggestions.IntentType();
  __chkstk_darwin(v4 - 8);
  type metadata accessor for INInformationUseCaseIntent();
  static SiriSuggestions.IntentType.inIntent(intentType:)();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;

  return SiriSuggestions.IntentMatch.init(intentType:matcher:)();
}

uint64_t one-time initialization function for kOwnerInformation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  type metadata accessor for DomainOwner();
  swift_allocObject();
  result = DomainOwner.init(_:)();
  *a4 = result;
  return result;
}

uint64_t *SuggestionConstants.kOwnerMaps.unsafeMutableAddressor()
{
  if (one-time initialization token for kOwnerMaps != -1)
  {
    swift_once();
  }

  return &static SuggestionConstants.kOwnerMaps;
}

uint64_t static SuggestionConstants.kOwnerInformation.getter(void *a1, uint64_t *a2, uint64_t a3)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

uint64_t static SuggestionConstants.intentQueryMatchesInformationUseCaseIntent@Sendable (_:intentMatches:)(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriSuggestionsKit0aB0O6IntentOSgMd, _s18SiriSuggestionsKit0aB0O6IntentOSgMR);
  __chkstk_darwin(v3 - 8);
  v5 = &v17 - v4;
  v6 = type metadata accessor for SiriSuggestions.Intent();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = (&v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v12 = &v17 - v11;
  SiriSuggestions.IntentQuery.hydratedIntent.getter();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    outlined destroy of SiriSuggestions.Intent?(v5);
LABEL_8:
    v14 = 0;
    return v14 & 1;
  }

  (*(v7 + 32))(v12, v5, v6);
  (*(v7 + 16))(v10, v12, v6);
  if ((*(v7 + 88))(v10, v6) != enum case for SiriSuggestions.Intent.inIntent(_:))
  {
    v15 = *(v7 + 8);
    v15(v12, v6);
    v15(v10, v6);
    goto LABEL_8;
  }

  (*(v7 + 96))(v10, v6);
  v13 = *v10;
  type metadata accessor for INInformationUseCaseIntent();
  if (!swift_dynamicCastClass())
  {

    (*(v7 + 8))(v12, v6);
    goto LABEL_8;
  }

  v14 = a2();

  (*(v7 + 8))(v12, v6);
  return v14 & 1;
}

uint64_t sub_BE60()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t outlined destroy of SiriSuggestions.Intent?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriSuggestionsKit0aB0O6IntentOSgMd, _s18SiriSuggestionsKit0aB0O6IntentOSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t AppBundleIdentifier.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x6C7070612E6D6F63;
  if (a1 > 3u)
  {
    if (a1 == 6)
    {
      v4 = 0x6C7070612E6D6F63;
    }

    else
    {
      v4 = 0xD000000000000011;
    }

    if (a1 == 4)
    {
      v1 = 0xD000000000000014;
    }

    if (a1 <= 5u)
    {
      return v1;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    if (a1 != 2)
    {
      v1 = 0xD000000000000015;
    }

    v2 = 0xD000000000000016;
    if (!a1)
    {
      v2 = 0xD000000000000013;
    }

    if (a1 <= 1u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

void *specialized Array.append<A>(contentsOf:)(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v10, 1, v3, &_ss23_ContiguousArrayStorageCy18SiriSuggestionsKit15OwnerDefinition_pGMd, &_ss23_ContiguousArrayStorageCy18SiriSuggestionsKit15OwnerDefinition_pGMR, &_s18SiriSuggestionsKit15OwnerDefinition_pMd, &_s18SiriSuggestionsKit15OwnerDefinition_pMR);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriSuggestionsKit15OwnerDefinition_pMd, &_s18SiriSuggestionsKit15OwnerDefinition_pMR);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

{
  v3 = result[2];
  v4 = *v1;
  v5 = *(*v1 + 16);
  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v9 = v4[3] >> 1, v9 < v6))
  {
    if (v5 <= v6)
    {
      v10 = v5 + v3;
    }

    else
    {
      v10 = v5;
    }

    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    v9 = v4[3] >> 1;
  }

  v11 = v4[2];
  v12 = v9 - v11;
  result = specialized Sequence._copySequenceContents(initializing:)(&v42, &v4[2 * v11 + 4], v9 - v11, v7);
  if (result < v3)
  {
    goto LABEL_15;
  }

  v15 = result;
  if (result)
  {
    v16 = v4[2];
    v17 = __OFADD__(v16, result);
    v18 = result + v16;
    if (v17)
    {
      __break(1u);
LABEL_19:
      v21 = (v14 + 64) >> 6;
      if (v21 <= v2 + 1)
      {
        v22 = v2 + 1;
      }

      else
      {
        v22 = (v14 + 64) >> 6;
      }

      v23 = v22 - 1;
      do
      {
        v24 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
LABEL_48:
          __break(1u);
          return result;
        }

        if (v24 >= v21)
        {
          v45 = v23;
          v46 = 0;
          goto LABEL_13;
        }

        v25 = *(v13 + 8 * v24);
        ++v2;
      }

      while (!v25);
      v39 = v14;
      v19 = (v25 - 1) & v25;
      v20 = __clz(__rbit64(v25)) | (v24 << 6);
      v2 = v24;
      goto LABEL_27;
    }

    v4[2] = v18;
  }

  result = v42;
  if (v15 != v12)
  {
    goto LABEL_13;
  }

LABEL_16:
  v12 = v4[2];
  v13 = v43;
  v14 = v44;
  v2 = v45;
  v41 = v43;
  if (!v46)
  {
    goto LABEL_19;
  }

  v19 = (v46 - 1) & v46;
  v20 = __clz(__rbit64(v46)) | (v45 << 6);
  v39 = v44;
  v21 = (v44 + 64) >> 6;
LABEL_27:
  v40 = result;
  v26 = result[7] + 16 * v20;
  v27 = *v26;
  v28 = *(v26 + 8);

  v29 = v41;
LABEL_29:
  while (1)
  {
    v30 = v4[3];
    v31 = v30 >> 1;
    if ((v30 >> 1) < v12 + 1)
    {
      break;
    }

    if (v12 < v31)
    {
      goto LABEL_31;
    }

LABEL_28:
    v4[2] = v12;
  }

  v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v12 + 1, 1, v4);
  v29 = v41;
  v4 = v37;
  v31 = v37[3] >> 1;
  if (v12 >= v31)
  {
    goto LABEL_28;
  }

LABEL_31:
  while (1)
  {
    v32 = &v4[2 * v12 + 4];
    *v32 = v27;
    *(v32 + 8) = v28;
    ++v12;
    if (!v19)
    {
      break;
    }

    result = v40;
LABEL_38:
    v35 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v36 = result[7] + ((v2 << 10) | (16 * v35));
    v27 = *v36;
    v28 = *(v36 + 8);

    v29 = v41;
    if (v12 == v31)
    {
      v12 = v31;
      v4[2] = v31;
      goto LABEL_29;
    }
  }

  v33 = v2;
  result = v40;
  while (1)
  {
    v34 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v34 >= v21)
    {
      break;
    }

    v19 = *(v29 + 8 * v34);
    ++v33;
    if (v19)
    {
      v2 = v34;
      goto LABEL_38;
    }
  }

  if (v21 <= v2 + 1)
  {
    v38 = v2 + 1;
  }

  else
  {
    v38 = v21;
  }

  v44 = v39;
  v45 = v38 - 1;
  v46 = 0;
  v4[2] = v12;
LABEL_13:
  result = outlined consume of [String : (InformationSuggestion, [String : ResolvableParameter])].Iterator._Variant(result);
  *v1 = v4;
  return result;
}

uint64_t one-time initialization function for kOwner()
{
  type metadata accessor for DomainOwner();
  swift_allocObject();
  result = DomainOwner.init(_:)();
  static InformationSuggestionsPluginOwnerDefinitionFactory.kOwner = result;
  return result;
}

uint64_t *InformationSuggestionsPluginOwnerDefinitionFactory.kOwner.unsafeMutableAddressor()
{
  if (one-time initialization token for kOwner != -1)
  {
    swift_once();
  }

  return &static InformationSuggestionsPluginOwnerDefinitionFactory.kOwner;
}

uint64_t static InformationSuggestionsPluginOwnerDefinitionFactory.kOwner.getter()
{
  if (one-time initialization token for kOwner != -1)
  {
    swift_once();
  }
}

uint64_t static InformationSuggestionsPluginOwnerDefinitionFactory.createOwnerDefinitions(builderFactory:)(uint64_t a1, uint64_t a2)
{
  v3[24] = a2;
  v3[25] = v2;
  v3[23] = a1;
  v4 = type metadata accessor for DialogDetails();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();

  return _swift_task_switch(static InformationSuggestionsPluginOwnerDefinitionFactory.createOwnerDefinitions(builderFactory:), 0, 0);
}

uint64_t static InformationSuggestionsPluginOwnerDefinitionFactory.createOwnerDefinitions(builderFactory:)()
{
  if (one-time initialization token for kOwnerInformation != -1)
  {
    swift_once();
  }

  v1 = v0[23];
  v2 = static SuggestionConstants.kOwnerInformation;
  v0[5] = type metadata accessor for DomainOwner();
  v0[6] = _s18SiriSuggestionsKit11DomainOwnerCAcA0E0AAWlTm_0(&lazy protocol witness table cache variable for type DomainOwner and conformance DomainOwner, 255, &type metadata accessor for DomainOwner, &protocol conformance descriptor for DomainOwner);
  v0[2] = v2;

  v5 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[29] = v3;
  *v3 = v0;
  v3[1] = static InformationSuggestionsPluginOwnerDefinitionFactory.createOwnerDefinitions(builderFactory:);

  return v5(v0 + 2);
}

{
  v1 = v0 + 7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriSuggestionsKit5Clock_pMd, &_s18SiriSuggestionsKit5Clock_pMR);
  v2 = dispatch thunk of SuggestionOwnerDefinitionBuilder.getEntity<A>(entityType:)();
  if (!v2)
  {
    goto LABEL_5;
  }

  if (!*(v2 + 16))
  {

LABEL_5:
    v0[11] = 0;
    *v1 = 0u;
    *(v0 + 9) = 0u;
    goto LABEL_6;
  }

  outlined init with copy of CandidateSuggestion(v2 + 32, (v0 + 7));

LABEL_6:
  v3 = 0;
  v4 = v0[27];
  v23 = v0[28];
  v22 = enum case for DialogDetails.bespokeDialog(_:);
  v20 = (v4 + 8);
  v21 = (v4 + 104);
  v24 = v0;
  v29 = v0 + 12;
  do
  {
    v5 = v0[28];
    v27 = v0[26];
    v28 = v0[25];
    v6 = &outlined read-only object #0 of static InformationSuggestion.allCases.getter + v3++;
    v7 = v6[32];
    v26 = specialized static InformationSuggestionsPluginOwnerDefinitionFactory.enabledLocales(for:)(v7);
    type metadata accessor for INInformationUseCaseIntent();
    static SuggestionTransformers.mapAsyncINIntentValue<A>(extractor:)();
    v25 = InformationSuggestion.rawValue.getter(v7);
    v9 = v8;
    _StringGuts.grow(_:)(25);

    v10._countAndFlagsBits = v25;
    v10._object = v9;
    String.append(_:)(v10);

    v11 = type metadata accessor for SuggestionOverrideDialog();
    v12 = swift_allocObject();
    *(v12 + 16) = 0xD000000000000017;
    *(v12 + 24) = 0x800000000001C330;
    *(v12 + 32) = 0xD000000000000010;
    *(v12 + 40) = 0x800000000001C0A0;
    *(v12 + 48) = 1;
    *(v12 + 56) = 0xD000000000000017;
    *(v12 + 64) = 0x800000000001C330;
    *(v12 + 72) = 0xD000000000000010;
    *(v12 + 80) = 0x800000000001C0A0;
    *(v12 + 88) = 0;
    *(v12 + 96) = 0xD000000000000017;
    *(v12 + 104) = 0x800000000001C330;
    *(v12 + 112) = 0x7470697263736564;
    *(v12 + 120) = 0xEB000000006E6F69;
    *(v12 + 128) = 0;
    *(v23 + 24) = v11;
    *(v23 + 32) = _s18SiriSuggestionsKit11DomainOwnerCAcA0E0AAWlTm_0(&lazy protocol witness table cache variable for type SuggestionOverrideDialog and conformance SuggestionOverrideDialog, v13, type metadata accessor for SuggestionOverrideDialog, &protocol conformance descriptor for SuggestionOverrideDialog);
    *v5 = v12;
    (*v21)(v5, v22, v27);
    v14 = swift_task_alloc();
    *(v14 + 16) = v7;
    *(v14 + 24) = v29;
    *(v14 + 32) = v26;
    *(v14 + 40) = v28;
    *(v14 + 48) = v1;
    swift_bridgeObjectRetain_n();
    dispatch thunk of SuggestionOwnerDefinitionBuilder.add(suggestionId:dialogDetails:builder:)();

    v0 = v24;

    (*v20)(v5, v27);
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
  }

  while (v3 != 25);
  dispatch thunk of SuggestionOwnerDefinitionBuilder.build()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy18SiriSuggestionsKit15OwnerDefinition_pGMd, &_ss23_ContiguousArrayStorageCy18SiriSuggestionsKit15OwnerDefinition_pGMR);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1AD90;
  outlined init with copy of CandidateSuggestion((v24 + 17), v15 + 32);
  v24[22] = v15;
  type metadata accessor for InfoServerSuggestionDefinitionFactory();
  v16 = swift_task_alloc();
  v24[31] = v16;
  *v16 = v24;
  v16[1] = static InformationSuggestionsPluginOwnerDefinitionFactory.createOwnerDefinitions(builderFactory:);
  v18 = v24[23];
  v17 = v24[24];

  return static InfoServerSuggestionDefinitionFactory.createOwnerDefinitions(builderFactory:)(v18, v17);
}

{
  specialized Array.append<A>(contentsOf:)(*(v0 + 256));

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 136));
  v1 = *(v0 + 176);
  outlined destroy of SpeakableString?(v0 + 56, &_s18SiriSuggestionsKit5Clock_pSgMd, &_s18SiriSuggestionsKit5Clock_pSgMR);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t static InformationSuggestionsPluginOwnerDefinitionFactory.createOwnerDefinitions(builderFactory:)(uint64_t a1)
{
  v2 = *v1;
  *(v2 + 240) = a1;

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 16));

  return _swift_task_switch(static InformationSuggestionsPluginOwnerDefinitionFactory.createOwnerDefinitions(builderFactory:), 0, 0);
}

{
  *(*v1 + 256) = a1;

  return _swift_task_switch(static InformationSuggestionsPluginOwnerDefinitionFactory.createOwnerDefinitions(builderFactory:), 0, 0);
}

uint64_t closure #1 in closure #1 in static InformationSuggestionsPluginOwnerDefinitionFactory.createOwnerDefinitions(builderFactory:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(closure #1 in closure #1 in static InformationSuggestionsPluginOwnerDefinitionFactory.createOwnerDefinitions(builderFactory:), 0, 0);
}

uint64_t closure #1 in closure #1 in static InformationSuggestionsPluginOwnerDefinitionFactory.createOwnerDefinitions(builderFactory:)()
{
  v1 = [*(v0 + 24) exampleUtterance];
  v2 = *(v0 + 16);
  if (v1)
  {
    v3 = v1;
    v2[3] = type metadata accessor for INInformationUseCaseUtterance();
    *v2 = v3;
    v4 = enum case for IntentParameter.directAssignment(_:);
  }

  else
  {
    v4 = enum case for IntentParameter.ignore(_:);
  }

  v5 = type metadata accessor for IntentParameter();
  (*(*(v5 - 8) + 104))(v2, v4, v5);
  v6 = *(v0 + 8);

  return v6();
}

unint64_t InformationSuggestion.rawValue.getter(char a1)
{
  result = 0x6165536C61636F6CLL;
  switch(a1)
  {
    case 1:
    case 11:
    case 13:
      result = 0xD000000000000018;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    case 4:
    case 5:
    case 19:
    case 21:
      result = 0xD000000000000015;
      break;
    case 6:
    case 10:
      result = 0xD000000000000016;
      break;
    case 7:
      result = 0xD00000000000001CLL;
      break;
    case 8:
      result = 0xD000000000000019;
      break;
    case 9:
      result = 0xD00000000000001BLL;
      break;
    case 12:
      return result;
    case 14:
      result = 1937204590;
      break;
    case 15:
    case 16:
    case 17:
      result = 0xD000000000000011;
      break;
    case 18:
    case 23:
      result = 0xD000000000000017;
      break;
    case 20:
      result = 0xD000000000000012;
      break;
    case 22:
      result = 0xD000000000000014;
      break;
    case 24:
      result = 0xD000000000000014;
      break;
    default:
      result = 0xD000000000000014;
      break;
  }

  return result;
}

unint64_t InformationSuggestion.catIdentifier.getter(char a1)
{
  _StringGuts.grow(_:)(25);

  v2._countAndFlagsBits = InformationSuggestion.rawValue.getter(a1);
  String.append(_:)(v2);

  return 0xD000000000000017;
}

uint64_t SuggestionOverrideDialog.__allocating_init(catId:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  *(v4 + 32) = 0xD000000000000010;
  *(v4 + 40) = 0x800000000001C0A0;
  *(v4 + 48) = 1;
  *(v4 + 56) = a1;
  *(v4 + 64) = a2;
  *(v4 + 72) = 0xD000000000000010;
  *(v4 + 80) = 0x800000000001C0A0;
  *(v4 + 88) = 0;
  *(v4 + 96) = a1;
  *(v4 + 104) = a2;
  *(v4 + 112) = 0x7470697263736564;
  *(v4 + 120) = 0xEB000000006E6F69;
  *(v4 + 128) = 0;
  swift_bridgeObjectRetain_n();
  return v4;
}

uint64_t closure #2 in closure #1 in static InformationSuggestionsPluginOwnerDefinitionFactory.createOwnerDefinitions(builderFactory:)(void *a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v111 = a4;
  *&v126 = a3;
  v117 = a2;
  v8 = v135;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriSuggestionsKit0aB0O11IntentMatchVSgMd, &_s18SiriSuggestionsKit0aB0O11IntentMatchVSgMR);
  __chkstk_darwin(v9 - 8);
  v113 = &v107 - v10;
  v11 = type metadata accessor for SiriSuggestions.IntentMatch();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v107 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriSuggestionsKit5ImageOSgMd, &_s18SiriSuggestionsKit5ImageOSgMR);
  __chkstk_darwin(v15 - 8);
  v17 = (&v107 - v16);
  v121 = a1;
  outlined init with copy of Decodable & Encodable & Sendable(a1, v147);
  v18 = *v148;
  v127 = *&v148[8];
  __swift_project_boxed_opaque_existential_1Tm(v147, *v148);
  if (one-time initialization token for signals != -1)
  {
LABEL_46:
    swift_once();
  }

  v19 = *(&dword_10 + static InformationSuggestionSignals.signals);
  v110 = a6;
  v114 = v12;
  v115 = v11;
  v108 = v14;
  v112 = v17;
  if (v19)
  {
    specialized __RawDictionaryStorage.find<A>(_:)(v117);
    if (v20)
    {
    }
  }

  *&v145 = v18;
  *(v8 + 176) = v127;
  __swift_allocate_boxed_opaque_existential_0Tm(&v144);
  dispatch thunk of SiriHelpSuggestionDetailsBuilderExtension.register(signals:)();

  a6 = v145;
  *&v125 = v146;
  *&v124 = __swift_project_boxed_opaque_existential_1Tm(&v144, v145);
  *&v127 = &v107;
  v21 = *(a6 - 8);
  __chkstk_darwin(v124);
  v23 = &v107 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = static SuggestionConstants.paramUtteranceOverride.getter();
  v18 = v24;
  v25 = static SuggestionConstants.paramUtteranceOverride.getter();
  v27 = v26;
  v28 = type metadata accessor for FromContextResolver();
  v29 = swift_allocObject();
  v29[2] = v25;
  v29[3] = v27;
  v29[4] = &async function pointer to closure #1 in closure #2 in closure #1 in static InformationSuggestionsPluginOwnerDefinitionFactory.createOwnerDefinitions(builderFactory:);
  v29[5] = 0;
  v119 = v28;
  *&v142 = v28;
  v118 = _s18SiriSuggestionsKit11DomainOwnerCAcA0E0AAWlTm_0(&lazy protocol witness table cache variable for type FromContextResolver and conformance FromContextResolver, 255, type metadata accessor for FromContextResolver, &protocol conformance descriptor for FromContextResolver);
  *(&v142 + 1) = v118;
  *&v141 = v29;
  v30 = type metadata accessor for ResolvableParameter();
  static SuggestionConstants.paramUtteranceOverride.getter();
  outlined init with copy of CandidateSuggestion(v126, v138);
  v109 = v30;
  ResolvableParameter.__allocating_init(typeIdentifier:required:intentTransformer:)();
  SuggestionDetailsBuilder.parameter(parameterName:resolver:resolveParam:)();

  v31 = *(v21 + 8);
  v12 = (v21 + 8);
  v31(v23, a6);
  outlined destroy of SpeakableString?(&v141, &_s18SiriSuggestionsKit8Resolver_pSgMd, &_s18SiriSuggestionsKit8Resolver_pSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm(&v144);
  __swift_destroy_boxed_opaque_existential_1Tm(v147);
  if (one-time initialization token for serverParameterMapping != -1)
  {
    swift_once();
  }

  if (*(&dword_10 + static InformationSuggestion.serverParameterMapping) && (specialized __RawDictionaryStorage.find<A>(_:)(v117), (v32 & 1) != 0))
  {
  }

  else
  {
    v33 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_18SiriSuggestionsKit19ResolvableParameterCTt0g5Tf4g_n(_swiftEmptyArrayStorage);
  }

  v34 = 0;
  v120 = v33;
  v35 = *(v33 + 64);
  v116 = v33 + 64;
  v36 = 1 << *(v33 + 32);
  v37 = -1;
  if (v36 < 64)
  {
    v37 = ~(-1 << v36);
  }

  v8 = v37 & v35;
  v11 = (v36 + 63) >> 6;
  v17 = v119;
  if ((v37 & v35) != 0)
  {
    while (1)
    {
      v38 = v34;
LABEL_19:
      v39 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v40 = v39 | (v38 << 6);
      v41 = *(v120 + 56);
      v42 = (*(v120 + 48) + 16 * v40);
      v43 = v42[1];
      *&v126 = *v42;
      v122 = v43;
      a6 = *(v41 + 8 * v40);
      v14 = v121[3];
      *&v125 = v121[5];
      *&v123 = __swift_project_boxed_opaque_existential_1Tm(v121, v14);
      *&v127 = &v107;
      *&v124 = *(v14 - 1);
      __chkstk_darwin(v123);
      v12 = &v107 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);

      v45 = ResolvableParameter.typeIdentifier.getter();
      v47 = v46;
      v48 = swift_allocObject();
      v48[2] = v45;
      v48[3] = v47;
      v48[4] = &async function pointer to closure #2 in closure #2 in closure #1 in static InformationSuggestionsPluginOwnerDefinitionFactory.createOwnerDefinitions(builderFactory:);
      v48[5] = 0;
      *v148 = v17;
      *&v148[8] = v118;
      v147[0] = v48;
      v18 = v122;
      SuggestionDetailsBuilder.parameter(parameterName:resolver:resolveParam:)();

      (*(v124 + 8))(v12, v14);
      outlined destroy of SpeakableString?(v147, &_s18SiriSuggestionsKit8Resolver_pSgMd, &_s18SiriSuggestionsKit8Resolver_pSgMR);
      if (!v8)
      {
        goto LABEL_15;
      }
    }
  }

  while (1)
  {
LABEL_15:
    v38 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      __break(1u);
      goto LABEL_46;
    }

    if (v38 >= v11)
    {
      break;
    }

    v8 = *(v116 + 8 * v38);
    ++v34;
    if (v8)
    {
      v34 = v38;
      goto LABEL_19;
    }
  }

  v49 = v121[5];
  v127 = *(v121 + 3);
  __swift_project_boxed_opaque_existential_1Tm(v121, v127);
  *v148 = v127;
  *&v148[16] = v49;
  __swift_allocate_boxed_opaque_existential_0Tm(v147);
  dispatch thunk of SuggestionDetailsBuilder.enabledLocales(_:)();
  v50 = *&v148[16];
  v126 = *v148;
  *&v127 = __swift_project_boxed_opaque_existential_1Tm(v147, *v148);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy18SiriSuggestionsKit10DeviceTypeOGMd, &_ss23_ContiguousArrayStorageCy18SiriSuggestionsKit10DeviceTypeOGMR);
  v51 = type metadata accessor for DeviceType();
  v52 = *(v51 - 8);
  v53 = *(v52 + 72);
  v54 = (*(v52 + 80) + 32) & ~*(v52 + 80);
  v55 = swift_allocObject();
  v125 = xmmword_1B560;
  *(v55 + 16) = xmmword_1B560;
  v56 = v55 + v54;
  v57 = *(v52 + 104);
  v57(v56, enum case for DeviceType.iPhone(_:), v51);
  v57(v56 + v53, enum case for DeviceType.iPad(_:), v51);
  v57(v56 + 2 * v53, enum case for DeviceType.mac(_:), v51);
  v145 = v126;
  v146 = v50;
  __swift_allocate_boxed_opaque_existential_0Tm(&v144);
  dispatch thunk of SuggestionDetailsBuilder.enabledDevices(_:)();

  v58 = v146;
  v127 = v145;
  __swift_project_boxed_opaque_existential_1Tm(&v144, v145);
  v59 = InformationSuggestion.rawValue.getter(v117);
  v61 = v60;
  v142 = v127;
  v143 = v58;
  __swift_allocate_boxed_opaque_existential_0Tm(&v141);
  *&v126 = v59;
  dispatch thunk of SuggestionDetailsBuilder.loggingIdentifier(_:)();
  *&v127 = v61;

  v62 = v143;
  v124 = v142;
  __swift_project_boxed_opaque_existential_1Tm(&v141, v142);
  v139 = v124;
  v140 = v62;
  __swift_allocate_boxed_opaque_existential_0Tm(v138);
  dispatch thunk of SuggestionDetailsBuilder.requiresNetworkConnection()();
  v63 = v140;
  v124 = v139;
  __swift_project_boxed_opaque_existential_1Tm(v138, v139);
  v136 = v124;
  v137 = v63;
  __swift_allocate_boxed_opaque_existential_0Tm(v135);
  dispatch thunk of SuggestionDetailsBuilder.templateRoot(_:)();
  v64 = v137;
  v124 = v136;
  __swift_project_boxed_opaque_existential_1Tm(v135, v136);
  v133 = v124;
  v134 = v64;
  __swift_allocate_boxed_opaque_existential_0Tm(v132);
  dispatch thunk of SuggestionDetailsBuilder.exampleUtteranceDialogId(_:)();
  v65 = v134;
  v123 = v133;
  *&v124 = __swift_project_boxed_opaque_existential_1Tm(v132, v133);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy18SiriSuggestionsKit15DeliveryVehicleOGMd, &_ss23_ContiguousArrayStorageCy18SiriSuggestionsKit15DeliveryVehicleOGMR);
  v66 = type metadata accessor for DeliveryVehicle();
  v67 = *(v66 - 8);
  v68 = *(v67 + 72);
  v69 = (*(v67 + 80) + 32) & ~*(v67 + 80);
  v70 = swift_allocObject();
  *(v70 + 16) = v125;
  v71 = v70 + v69;
  v72 = *(v67 + 104);
  v72(v71, enum case for DeliveryVehicle.siriHelp(_:), v66);
  v72(v71 + v68, enum case for DeliveryVehicle.siriAutoComplete(_:), v66);
  v72(v71 + 2 * v68, enum case for DeliveryVehicle.assistantSuggestions(_:), v66);
  v130 = v123;
  v131 = v65;
  __swift_allocate_boxed_opaque_existential_0Tm(v129);
  dispatch thunk of SuggestionDetailsBuilder.enabledDeliveryVehicles(_:)();

  v73 = v130;
  v74 = __swift_project_boxed_opaque_existential_1Tm(v129, v130);
  v75 = *(v73 - 8);
  v76 = __chkstk_darwin(v74);
  v78 = &v107 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v125 = v76;
  if (v117 > 0xDu)
  {
    if (v117 - 15 < 2)
    {
      v80 = 0x800000000001BD50;
      v81 = 0xD000000000000011;
      goto LABEL_32;
    }

    if (v117 == 14)
    {
      v79 = 0x7377656E2E65;
      goto LABEL_31;
    }

LABEL_30:
    v79 = 0x697269732E65;
    goto LABEL_31;
  }

  if (v117 < 2u)
  {
    v80 = 0x800000000001BD10;
    v81 = 0xD000000000000014;
    goto LABEL_32;
  }

  if (v117 - 12 >= 2)
  {
    goto LABEL_30;
  }

  v79 = 0x7370614D2E65;
LABEL_31:
  v80 = v79 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
  v81 = 0x6C7070612E6D6F63;
LABEL_32:
  v82 = v112;
  *v112 = v81;
  v82[1] = v80;
  v83 = enum case for Image.appIcon(_:);
  v84 = type metadata accessor for Image();
  v85 = *(v84 - 8);
  (*(v85 + 104))(v82, v83, v84);
  (*(v85 + 56))(v82, 0, 1, v84);
  v86 = type metadata accessor for StaticIconUrlProvider();
  swift_allocObject();
  v87 = StaticIconUrlProvider.init(icon:)();
  v128[3] = v86;
  v128[4] = &protocol witness table for StaticIconUrlProvider;
  v128[0] = v87;
  dispatch thunk of SuggestionDetailsBuilder.assetsProvider(_:)();
  (*(v75 + 8))(v78, v73);
  __swift_destroy_boxed_opaque_existential_1Tm(v128);
  __swift_destroy_boxed_opaque_existential_1Tm(v129);
  __swift_destroy_boxed_opaque_existential_1Tm(v132);
  __swift_destroy_boxed_opaque_existential_1Tm(v135);
  __swift_destroy_boxed_opaque_existential_1Tm(v138);
  __swift_destroy_boxed_opaque_existential_1Tm(&v141);
  __swift_destroy_boxed_opaque_existential_1Tm(&v144);
  __swift_destroy_boxed_opaque_existential_1Tm(v147);
  v88 = v113;
  InformationSuggestion.intentMatcher.getter(v117, v113);
  v90 = v114;
  v89 = v115;
  if ((*(v114 + 6))(v88, 1, v115) == 1)
  {
    outlined destroy of SpeakableString?(v88, &_s18SiriSuggestionsKit0aB0O11IntentMatchVSgMd, &_s18SiriSuggestionsKit0aB0O11IntentMatchVSgMR);
  }

  else
  {
    v91 = v108;
    (*(v90 + 4))(v108, v88, v89);
    v92 = v121[3];
    v93 = __swift_project_boxed_opaque_existential_1Tm(v121, v92);
    v94 = *(v92 - 8);
    __chkstk_darwin(v93);
    v96 = &v107 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0);
    *v148 = v89;
    *&v148[8] = &protocol witness table for SiriSuggestions.IntentMatch;
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v147);
    (*(v90 + 2))(boxed_opaque_existential_0Tm, v91, v89);
    dispatch thunk of SuggestionDetailsBuilder.intentMatch(_:)();
    (*(v94 + 8))(v96, v92);
    (*(v90 + 1))(v91, v89);
    __swift_destroy_boxed_opaque_existential_1Tm(v147);
  }

  if (v126 == 0xD000000000000011 && 0x800000000001BF40 == v127)
  {
  }

  else
  {
    v98 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v98 & 1) == 0)
    {
      return result;
    }
  }

  outlined init with copy of Decodable & Encodable & Sendable(v121, v147);
  v100 = *v148;
  v101 = __swift_project_boxed_opaque_existential_1Tm(v147, *v148);
  v102 = *(v100 - 8);
  __chkstk_darwin(v101);
  v104 = &v107 - ((v103 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Any?(v110, &v141, &_s18SiriSuggestionsKit5Clock_pSgMd, &_s18SiriSuggestionsKit5Clock_pSgMR);
  if (v142)
  {
    outlined init with take of CandidateSuggestion(&v141, &v144);
  }

  else
  {
    static Clocks.getSystemClock()();
    if (v142)
    {
      outlined destroy of SpeakableString?(&v141, &_s18SiriSuggestionsKit5Clock_pSgMd, &_s18SiriSuggestionsKit5Clock_pSgMR);
    }
  }

  v105 = type metadata accessor for SolarEventResolver();
  v106 = swift_allocObject();
  *(v106 + 56) = 0xD000000000000010;
  *(v106 + 64) = 0x800000000001BC80;
  outlined init with take of CandidateSuggestion(&v144, v106 + 16);
  *&v145 = v105;
  *(&v145 + 1) = _s18SiriSuggestionsKit11DomainOwnerCAcA0E0AAWlTm_0(&lazy protocol witness table cache variable for type SolarEventResolver and conformance SolarEventResolver, 255, type metadata accessor for SolarEventResolver, &protocol conformance descriptor for SolarEventResolver);
  *&v144 = v106;
  ResolvableParameter.__allocating_init(typeIdentifier:required:)();
  SuggestionDetailsBuilder.parameter(parameterName:resolver:resolveParam:)();

  (*(v102 + 8))(v104, v100);
  outlined destroy of SpeakableString?(&v144, &_s18SiriSuggestionsKit8Resolver_pSgMd, &_s18SiriSuggestionsKit8Resolver_pSgMR);
  return __swift_destroy_boxed_opaque_existential_1Tm(v147);
}

unint64_t InformationSuggestion.parameters.getter(uint64_t a1)
{
  if (one-time initialization token for serverParameterMapping != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  if (*(&dword_10 + static InformationSuggestion.serverParameterMapping) && (specialized __RawDictionaryStorage.find<A>(_:)(a1), (v1 & 1) != 0))
  {
  }

  else
  {

    return _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_18SiriSuggestionsKit19ResolvableParameterCTt0g5Tf4g_n(_swiftEmptyArrayStorage);
  }
}

uint64_t closure #2 in closure #2 in closure #1 in static InformationSuggestionsPluginOwnerDefinitionFactory.createOwnerDefinitions(builderFactory:)()
{
  v1 = *(v0 + 16);
  *v1 = 0u;
  v1[1] = 0u;
  return (*(v0 + 8))();
}

unint64_t InformationSuggestion.appBundleIdentifier.getter(unsigned __int8 a1)
{
  v1 = 0x6C7070612E6D6F63;
  if (a1 - 15 >= 2)
  {
    v2 = 0x6C7070612E6D6F63;
  }

  else
  {
    v2 = 0xD000000000000011;
  }

  if (a1 < 2u)
  {
    v1 = 0xD000000000000014;
  }

  if (a1 <= 0xDu)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t InformationSuggestion.intentMatcher.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SiriSuggestions.IntentType();
  __chkstk_darwin(v4 - 8);
  if (one-time initialization token for serverParameterMapping != -1)
  {
    swift_once();
  }

  if (*(&dword_10 + static InformationSuggestion.serverParameterMapping) && (specialized __RawDictionaryStorage.find<A>(_:)(a1), (v5 & 1) != 0))
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    type metadata accessor for INInformationUseCaseIntent();
    static SiriSuggestions.IntentType.inIntent(intentType:)();
    v7 = swift_allocObject();
    *(v7 + 16) = partial apply for closure #1 in InformationSuggestion.intentMatcher.getter;
    *(v7 + 24) = v6;
    SiriSuggestions.IntentMatch.init(intentType:matcher:)();
    v8 = type metadata accessor for SiriSuggestions.IntentMatch();
    return (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
  }

  else
  {
    v10 = type metadata accessor for SiriSuggestions.IntentMatch();
    v11 = *(*(v10 - 8) + 56);

    return v11(a2, 1, 1, v10);
  }
}

uint64_t specialized Sequence.forEach(_:)(uint64_t a1)
{
  v1 = a1 + 64;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  v7 = 0;
  if (v4)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v5)
    {
    }

    v4 = *(v1 + 8 * v8);
    ++v7;
    if (v4)
    {
      v7 = v8;
      do
      {
LABEL_9:
        v4 &= v4 - 1;

        result = specialized Array.append<A>(contentsOf:)(v9);
      }

      while (v4);
      continue;
    }
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for static OwnerDefinitionFactory.createOwnerDefinitions(builderFactory:) in conformance InformationSuggestionsPluginOwnerDefinitionFactory(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for InternalResolver.resolveParameter(parameter:suggestion:interaction:environment:) in conformance FromContextResolver;

  return static InformationSuggestionsPluginOwnerDefinitionFactory.createOwnerDefinitions(builderFactory:)(a1, a2);
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance AppBundleIdentifier@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized AppBundleIdentifier.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AppBundleIdentifier@<X0>(unint64_t *a1@<X8>)
{
  result = AppBundleIdentifier.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t one-time initialization function for serverWeatherParams()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVyypypSgGMd, &_s13SiriUtilities11TransformerVyypypSgGMR);
  __chkstk_darwin(v0 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_18SiriSuggestionsKit19ResolvableParameterCtGMd, &_ss23_ContiguousArrayStorageCySS_18SiriSuggestionsKit19ResolvableParameterCtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AD90;
  *(inited + 32) = 0x6E6F697461636F6CLL;
  *(inited + 40) = 0xE800000000000000;
  type metadata accessor for INInformationUseCaseIntent();
  static SuggestionTransformers.mapAsyncINIntentValue<A>(extractor:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  Transformer.init(transform:)();
  outlined init with copy of CandidateSuggestion(v6, v5);
  type metadata accessor for ResolvableParameter();
  swift_allocObject();
  v2 = ResolvableParameter.init(typeIdentifier:required:loggingKeyTransformer:asyncIntentTransformer:)();
  __swift_destroy_boxed_opaque_existential_1Tm(v6);
  *(inited + 48) = v2;
  v3 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_18SiriSuggestionsKit19ResolvableParameterCTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  result = outlined destroy of SpeakableString?(inited + 32, &_sSS_18SiriSuggestionsKit19ResolvableParameterCtMd, &_sSS_18SiriSuggestionsKit19ResolvableParameterCtMR);
  static InformationSuggestion.serverWeatherParams = v3;
  return result;
}

uint64_t one-time initialization function for serverSportsScoreParams()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVyypypSgGMd, &_s13SiriUtilities11TransformerVyypypSgGMR);
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v27 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_18SiriSuggestionsKit19ResolvableParameterCtGMd, &_ss23_ContiguousArrayStorageCySS_18SiriSuggestionsKit19ResolvableParameterCtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B570;
  *(inited + 32) = 0xD000000000000010;
  v34 = inited + 32;
  *(inited + 40) = 0x800000000001C660;
  v8 = swift_allocObject();
  *(v8 + 16) = 0xD000000000000017;
  *(v8 + 24) = 0x800000000001C5C0;
  v36 = type metadata accessor for INInformationUseCaseIntent();
  static SuggestionTransformers.mapAsyncINIntentValue<A>(extractor:)();

  static SuggestionTransformers.removeParameterFromLogging()();
  v39 = *(v1 + 16);
  v37 = v1 + 16;
  v39(v4, v6, v0);
  outlined init with copy of CandidateSuggestion(v41, v40);
  type metadata accessor for ResolvableParameter();
  swift_allocObject();
  v9 = ResolvableParameter.init(typeIdentifier:required:loggingKeyTransformer:asyncIntentTransformer:)();
  v10 = *(v1 + 8);
  v38 = v1 + 8;
  v10(v6, v0);
  v35 = v10;
  __swift_destroy_boxed_opaque_existential_1Tm(v41);
  *(inited + 48) = v9;
  *(inited + 56) = 0xD000000000000014;
  *(inited + 64) = 0x800000000001C6A0;
  v32 = "firstTeamVocLocation";
  v11 = swift_allocObject();
  v33 = 0xD00000000000001BLL;
  *(v11 + 16) = 0xD00000000000001BLL;
  *(v11 + 24) = 0x800000000001C600;
  static SuggestionTransformers.mapAsyncINIntentValue<A>(extractor:)();

  static SuggestionTransformers.removeParameterFromLogging()();
  v39(v4, v6, v0);
  outlined init with copy of CandidateSuggestion(v41, v40);
  swift_allocObject();
  v12 = ResolvableParameter.init(typeIdentifier:required:loggingKeyTransformer:asyncIntentTransformer:)();
  v10(v6, v0);
  __swift_destroy_boxed_opaque_existential_1Tm(v41);
  *(inited + 72) = v12;
  *(inited + 80) = 0xD000000000000011;
  *(inited + 88) = 0x800000000001C6E0;
  v13 = swift_allocObject();
  *(v13 + 16) = 0x6D616E5F6D616574;
  *(v13 + 24) = 0xEF656D616E5F3065;
  static SuggestionTransformers.mapAsyncINIntentValue<A>(extractor:)();

  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v31 = closure #1 in static InformationSuggestion.containsParameterForLogging();
  Transformer.init(transform:)();
  v30 = v4;
  v28 = v0;
  v39(v4, v6, v0);
  outlined init with copy of CandidateSuggestion(v41, v40);
  swift_allocObject();
  v14 = ResolvableParameter.init(typeIdentifier:required:loggingKeyTransformer:asyncIntentTransformer:)();
  v15 = v35;
  v35(v6, v0);
  __swift_destroy_boxed_opaque_existential_1Tm(v41);
  *(inited + 96) = v14;
  *(inited + 104) = 0xD000000000000011;
  *(inited + 112) = 0x800000000001C720;
  v29 = "team_name1_voc_teamName";
  v16 = swift_allocObject();
  *(v16 + 16) = 0xD000000000000017;
  *(v16 + 24) = 0x800000000001C740;
  static SuggestionTransformers.mapAsyncINIntentValue<A>(extractor:)();

  static SuggestionTransformers.removeParameterFromLogging()();
  v17 = v30;
  v18 = v28;
  v39(v30, v6, v28);
  outlined init with copy of CandidateSuggestion(v41, v40);
  swift_allocObject();
  v19 = ResolvableParameter.init(typeIdentifier:required:loggingKeyTransformer:asyncIntentTransformer:)();
  v15(v6, v18);
  __swift_destroy_boxed_opaque_existential_1Tm(v41);
  *(inited + 120) = v19;
  *(inited + 128) = 0xD000000000000015;
  *(inited + 136) = 0x800000000001C780;
  v29 = "team_name1_voc_teamLocation";
  v20 = swift_allocObject();
  *(v20 + 16) = v33;
  *(v20 + 24) = 0x800000000001C7A0;
  static SuggestionTransformers.mapAsyncINIntentValue<A>(extractor:)();

  static SuggestionTransformers.removeParameterFromLogging()();
  v39(v17, v6, v18);
  outlined init with copy of CandidateSuggestion(v41, v40);
  swift_allocObject();
  v21 = ResolvableParameter.init(typeIdentifier:required:loggingKeyTransformer:asyncIntentTransformer:)();
  v22 = v35;
  v35(v6, v18);
  __swift_destroy_boxed_opaque_existential_1Tm(v41);
  *(inited + 144) = v21;
  *(inited + 152) = 0xD000000000000012;
  *(inited + 160) = 0x800000000001C7E0;
  v33 = "secondTeamFullName";
  v23 = swift_allocObject();
  *(v23 + 16) = 0x6D616E5F6D616574;
  *(v23 + 24) = 0xEF656D616E5F3165;
  static SuggestionTransformers.mapAsyncINIntentValue<A>(extractor:)();

  Transformer.init(transform:)();
  v39(v17, v6, v18);
  outlined init with copy of CandidateSuggestion(v41, v40);
  swift_allocObject();
  v24 = ResolvableParameter.init(typeIdentifier:required:loggingKeyTransformer:asyncIntentTransformer:)();
  v22(v6, v18);
  __swift_destroy_boxed_opaque_existential_1Tm(v41);
  *(inited + 168) = v24;
  v25 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_18SiriSuggestionsKit19ResolvableParameterCTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_18SiriSuggestionsKit19ResolvableParameterCtMd, &_sSS_18SiriSuggestionsKit19ResolvableParameterCtMR);
  result = swift_arrayDestroy();
  static InformationSuggestion.serverSportsScoreParams = v25;
  return result;
}

uint64_t one-time initialization function for teamScheduleParams()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVyypypSgGMd, &_s13SiriUtilities11TransformerVyypypSgGMR);
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = v17 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_18SiriSuggestionsKit19ResolvableParameterCtGMd, &_ss23_ContiguousArrayStorageCySS_18SiriSuggestionsKit19ResolvableParameterCtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B560;
  *(inited + 32) = 0x4E636F566D616574;
  v20 = inited + 32;
  *(inited + 40) = 0xEB00000000656D61;
  v8 = swift_allocObject();
  *(v8 + 16) = 0xD000000000000017;
  *(v8 + 24) = 0x800000000001C5C0;
  v17[1] = type metadata accessor for INInformationUseCaseIntent();
  static SuggestionTransformers.mapAsyncINIntentValue<A>(extractor:)();

  static SuggestionTransformers.removeParameterFromLogging()();
  v21 = *(v1 + 16);
  v21(v4, v6, v0);
  outlined init with copy of CandidateSuggestion(v23, v22);
  type metadata accessor for ResolvableParameter();
  swift_allocObject();
  v9 = ResolvableParameter.init(typeIdentifier:required:loggingKeyTransformer:asyncIntentTransformer:)();
  v18 = *(v1 + 8);
  v18(v6, v0);
  v19 = v1 + 8;
  __swift_destroy_boxed_opaque_existential_1Tm(v23);
  *(inited + 48) = v9;
  *(inited + 56) = 0x4C636F566D616574;
  *(inited + 64) = 0xEF6E6F697461636FLL;
  v17[0] = "team_name0_voc_teamLocation";
  v10 = swift_allocObject();
  *(v10 + 16) = 0xD00000000000001BLL;
  *(v10 + 24) = 0x800000000001C600;
  static SuggestionTransformers.mapAsyncINIntentValue<A>(extractor:)();

  static SuggestionTransformers.removeParameterFromLogging()();
  v21(v4, v6, v0);
  outlined init with copy of CandidateSuggestion(v23, v22);
  swift_allocObject();
  v11 = ResolvableParameter.init(typeIdentifier:required:loggingKeyTransformer:asyncIntentTransformer:)();
  v12 = v18;
  v18(v6, v0);
  __swift_destroy_boxed_opaque_existential_1Tm(v23);
  *(inited + 72) = v11;
  strcpy((inited + 80), "teamFullName");
  *(inited + 93) = 0;
  *(inited + 94) = -5120;
  v13 = swift_allocObject();
  *(v13 + 16) = 0x6D616E5F6D616574;
  *(v13 + 24) = 0xEF656D616E5F3065;
  static SuggestionTransformers.mapAsyncINIntentValue<A>(extractor:)();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  Transformer.init(transform:)();
  v21(v4, v6, v0);
  outlined init with copy of CandidateSuggestion(v23, v22);
  swift_allocObject();
  v14 = ResolvableParameter.init(typeIdentifier:required:loggingKeyTransformer:asyncIntentTransformer:)();
  v12(v6, v0);
  __swift_destroy_boxed_opaque_existential_1Tm(v23);
  *(inited + 96) = v14;
  v15 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_18SiriSuggestionsKit19ResolvableParameterCTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_18SiriSuggestionsKit19ResolvableParameterCtMd, &_sSS_18SiriSuggestionsKit19ResolvableParameterCtMR);
  result = swift_arrayDestroy();
  static InformationSuggestion.teamScheduleParams = v15;
  return result;
}

uint64_t one-time initialization function for leagueNameParams()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVyypypSgGMd, &_s13SiriUtilities11TransformerVyypypSgGMR);
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v16 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_18SiriSuggestionsKit19ResolvableParameterCtGMd, &_ss23_ContiguousArrayStorageCySS_18SiriSuggestionsKit19ResolvableParameterCtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B580;
  *(inited + 32) = 0x6F5665756761656CLL;
  v20 = inited + 32;
  *(inited + 40) = 0xED0000656D614E63;
  v8 = swift_allocObject();
  *(v8 + 16) = 0xD00000000000001ALL;
  *(v8 + 24) = 0x800000000001C540;
  type metadata accessor for INInformationUseCaseIntent();
  static SuggestionTransformers.mapAsyncINIntentValue<A>(extractor:)();

  static SuggestionTransformers.removeParameterFromLogging()();
  v19 = *(v1 + 16);
  v17 = v0;
  v19(v4, v6, v0);
  outlined init with copy of CandidateSuggestion(v22, v21);
  type metadata accessor for ResolvableParameter();
  swift_allocObject();
  v9 = ResolvableParameter.init(typeIdentifier:required:loggingKeyTransformer:asyncIntentTransformer:)();
  v10 = *(v1 + 8);
  v10(v6, v0);
  __swift_destroy_boxed_opaque_existential_1Tm(v22);
  *(inited + 48) = v9;
  *(inited + 56) = 0x614E65756761656CLL;
  *(inited + 64) = 0xEA0000000000656DLL;
  v18 = "league_name_name";
  v11 = swift_allocObject();
  *(v11 + 16) = 0xD000000000000010;
  *(v11 + 24) = 0x800000000001C580;
  static SuggestionTransformers.mapAsyncINIntentValue<A>(extractor:)();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  Transformer.init(transform:)();
  v12 = v17;
  v19(v4, v6, v17);
  outlined init with copy of CandidateSuggestion(v22, v21);
  swift_allocObject();
  v13 = ResolvableParameter.init(typeIdentifier:required:loggingKeyTransformer:asyncIntentTransformer:)();
  v10(v6, v12);
  __swift_destroy_boxed_opaque_existential_1Tm(v22);
  *(inited + 72) = v13;
  v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_18SiriSuggestionsKit19ResolvableParameterCTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_18SiriSuggestionsKit19ResolvableParameterCtMd, &_sSS_18SiriSuggestionsKit19ResolvableParameterCtMR);
  result = swift_arrayDestroy();
  static InformationSuggestion.leagueNameParams = v14;
  return result;
}

uint64_t one-time initialization function for serverMappings()
{
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVyypypSgGMd, &_s13SiriUtilities11TransformerVyypypSgGMR);
  v182 = *(v180 - 8);
  v0 = __chkstk_darwin(v180);
  v174 = &v169 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v0);
  v173 = &v169 - v2;
  v181 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SuggestionIntent();
  v3 = *(v181 - 8);
  __chkstk_darwin(v181);
  v177 = &v169 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainUseCase();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v178 = &v169 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v179 = (&v169 - v10);
  v11 = __chkstk_darwin(v9);
  v175 = &v169 - v12;
  v13 = __chkstk_darwin(v11);
  v176 = &v169 - v14;
  v15 = __chkstk_darwin(v13);
  v171 = &v169 - v16;
  v17 = __chkstk_darwin(v15);
  v172 = &v169 - v18;
  __chkstk_darwin(v17);
  v20 = &v169 - v19;
  v191 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SDySS32SiriInformationSuggestionsPlugin0D10SuggestionO_SDySS0cE3Kit19ResolvableParameterCGtGTt0g5Tf4g_n(_swiftEmptyArrayStorage);
  v186 = v6;
  v184 = *(v6 + 104);
  v185 = (v6 + 104);
  v184(v20, enum case for Apple_Parsec_Siri_V2alpha_DomainUseCase.weatherGetWeather(_:), v5);
  if (one-time initialization token for serverWeatherParams != -1)
  {
    swift_once();
  }

  v21 = static InformationSuggestion.serverWeatherParams;
  v189 = 0;
  v190 = 0xE000000000000000;

  v187 = v5;
  _print_unlocked<A, B>(_:_:)();
  v23 = v189;
  v22 = v190;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25 = v191;
  v188[0] = v191;
  v27 = specialized __RawDictionaryStorage.find<A>(_:)(0x72656874616577, 0xE700000000000000);
  v28 = v25[2];
  v29 = (v26 & 1) == 0;
  v30 = v28 + v29;
  if (__OFADD__(v28, v29))
  {
    __break(1u);
    goto LABEL_75;
  }

  v31 = v26;
  if (v25[3] < v30)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v30, isUniquelyReferenced_nonNull_native);
    v25 = v188[0];
    v32 = specialized __RawDictionaryStorage.find<A>(_:)(0x72656874616577, 0xE700000000000000);
    if ((v31 & 1) == (v33 & 1))
    {
      v27 = v32;
      goto LABEL_8;
    }

    goto LABEL_104;
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_85;
  }

  while (1)
  {
LABEL_8:
    v34 = v187;
    v191 = v25;
    if ((v31 & 1) == 0)
    {
      v35 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_32SiriInformationSuggestionsPlugin0D10SuggestionO_SDySS0cE3Kit19ResolvableParameterCGtTt0g5Tf4g_n(_swiftEmptyArrayStorage);
      v25[(v27 >> 6) + 8] |= 1 << v27;
      v36 = (v25[6] + 16 * v27);
      *v36 = 0x72656874616577;
      v36[1] = 0xE700000000000000;
      *(v25[7] + 8 * v27) = v35;
      v37 = v25[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
        __break(1u);
        goto LABEL_87;
      }

      v25[2] = v39;
    }

    v40 = v25[7];
    v41 = swift_isUniquelyReferenced_nonNull_native();
    v188[0] = *(v40 + 8 * v27);
    *(v40 + 8 * v27) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(15, v21, v23, v22, v41);

    *(v40 + 8 * v27) = v188[0];
    swift_endAccess();

    v42 = *(v186 + 8);
    v186 += 8;
    v183 = v42;
    v42(v20, v34);
    (v3[1].base_meths)(v177, enum case for Apple_Parsec_Siri_V2alpha_SuggestionIntent.weatherWithLocation(_:), v181);
    v21 = static InformationSuggestion.serverWeatherParams;
    v189 = 0;
    v190 = 0xE000000000000000;

    _print_unlocked<A, B>(_:_:)();
    v20 = v189;
    v22 = v190;
    swift_beginAccess();

    v23 = swift_isUniquelyReferenced_nonNull_native();
    v43 = v191;
    v188[0] = v191;
    v27 = specialized __RawDictionaryStorage.find<A>(_:)(0x72656874616577, 0xE700000000000000);
    v45 = v43[2];
    v46 = (v44 & 1) == 0;
    v47 = v45 + v46;
    if (!__OFADD__(v45, v46))
    {
      v31 = v44;
      if (v43[3] < v47)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v47, v23);
        v43 = v188[0];
        v48 = specialized __RawDictionaryStorage.find<A>(_:)(0x72656874616577, 0xE700000000000000);
        if ((v31 & 1) != (v49 & 1))
        {
          goto LABEL_104;
        }

        v27 = v48;
        v191 = v43;
        if (v31)
        {
          goto LABEL_20;
        }

        goto LABEL_18;
      }

      if (v23)
      {
        v191 = v43;
        if (v44)
        {
          goto LABEL_20;
        }

LABEL_18:
        v50 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_32SiriInformationSuggestionsPlugin0D10SuggestionO_SDySS0cE3Kit19ResolvableParameterCGtTt0g5Tf4g_n(_swiftEmptyArrayStorage);
        v43[(v27 >> 6) + 8] |= 1 << v27;
        v51 = (v43[6] + 16 * v27);
        *v51 = 0x72656874616577;
        v51[1] = 0xE700000000000000;
        *(v43[7] + 8 * v27) = v50;
        v52 = v43[2];
        v38 = __OFADD__(v52, 1);
        v53 = v52 + 1;
        if (v38)
        {
          __break(1u);
LABEL_90:
          specialized _NativeDictionary.copy()();
          v57 = v188[0];
          goto LABEL_26;
        }

        v43[2] = v53;
LABEL_20:
        v54 = v43[7];
        v55 = swift_isUniquelyReferenced_nonNull_native();
        v188[0] = *(v54 + 8 * v27);
        *(v54 + 8 * v27) = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(15, v21, v20, v22, v55);

        *(v54 + 8 * v27) = v188[0];
        swift_endAccess();

        (*&v3->ivar_base_size)(v177, v181);
        v3 = v172;
        v184(v172, enum case for Apple_Parsec_Siri_V2alpha_DomainUseCase.sportsGetTeamScore(_:), v34);
        if (one-time initialization token for serverSportsScoreParams == -1)
        {
          goto LABEL_21;
        }

        goto LABEL_76;
      }

LABEL_87:
      specialized _NativeDictionary.copy()();
      v43 = v188[0];
      v191 = v188[0];
      if (v31)
      {
        goto LABEL_20;
      }

      goto LABEL_18;
    }

LABEL_75:
    __break(1u);
LABEL_76:
    swift_once();
LABEL_21:
    v31 = 0x7374726F7073;
    v21 = static InformationSuggestion.serverSportsScoreParams;
    v189 = 0;
    v190 = 0xE000000000000000;

    _print_unlocked<A, B>(_:_:)();
    v20 = v189;
    v22 = v190;
    swift_beginAccess();

    v56 = swift_isUniquelyReferenced_nonNull_native();
    v57 = v191;
    v188[0] = v191;
    v27 = specialized __RawDictionaryStorage.find<A>(_:)(0x7374726F7073, 0xE600000000000000);
    v59 = v57[2];
    v60 = (v58 & 1) == 0;
    v61 = v59 + v60;
    if (__OFADD__(v59, v60))
    {
      __break(1u);
LABEL_78:
      swift_once();
      goto LABEL_30;
    }

    v23 = v58;
    if (v57[3] >= v61)
    {
      if (v56)
      {
        goto LABEL_26;
      }

      goto LABEL_90;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v61, v56);
    v57 = v188[0];
    v62 = specialized __RawDictionaryStorage.find<A>(_:)(0x7374726F7073, 0xE600000000000000);
    if ((v23 & 1) != (v63 & 1))
    {
      goto LABEL_104;
    }

    v27 = v62;
LABEL_26:
    v64 = v187;
    v191 = v57;
    if ((v23 & 1) == 0)
    {
      v65 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_32SiriInformationSuggestionsPlugin0D10SuggestionO_SDySS0cE3Kit19ResolvableParameterCGtTt0g5Tf4g_n(_swiftEmptyArrayStorage);
      v57[(v27 >> 6) + 8] |= 1 << v27;
      v66 = (v57[6] + 16 * v27);
      *v66 = v31;
      v66[1] = 0xE600000000000000;
      *(v57[7] + 8 * v27) = v65;
      v67 = v57[2];
      v38 = __OFADD__(v67, 1);
      v68 = v67 + 1;
      if (v38)
      {
        __break(1u);
LABEL_92:
        specialized _NativeDictionary.copy()();
        v72 = v188[0];
        goto LABEL_35;
      }

      v57[2] = v68;
    }

    v23 = v3;
    v69 = v57[7];
    v70 = swift_isUniquelyReferenced_nonNull_native();
    v188[0] = *(v69 + 8 * v27);
    *(v69 + 8 * v27) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(20, v21, v20, v22, v70);

    *(v69 + 8 * v27) = v188[0];
    swift_endAccess();

    v183(v23, v64);
    v3 = v171;
    v184(v171, enum case for Apple_Parsec_Siri_V2alpha_DomainUseCase.sportsGetTeamSchedule(_:), v64);
    if (one-time initialization token for teamScheduleParams != -1)
    {
      goto LABEL_78;
    }

LABEL_30:
    v21 = static InformationSuggestion.teamScheduleParams;
    v189 = 0;
    v190 = 0xE000000000000000;

    _print_unlocked<A, B>(_:_:)();
    v20 = v189;
    v22 = v190;
    swift_beginAccess();

    v71 = swift_isUniquelyReferenced_nonNull_native();
    v72 = v191;
    v188[0] = v191;
    v27 = specialized __RawDictionaryStorage.find<A>(_:)(v31, 0xE600000000000000);
    v74 = v72[2];
    v75 = (v73 & 1) == 0;
    v76 = v74 + v75;
    if (__OFADD__(v74, v75))
    {
      __break(1u);
LABEL_80:
      swift_once();
      goto LABEL_39;
    }

    v23 = v73;
    if (v72[3] >= v76)
    {
      if (v71)
      {
        goto LABEL_35;
      }

      goto LABEL_92;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v76, v71);
    v72 = v188[0];
    v77 = specialized __RawDictionaryStorage.find<A>(_:)(v31, 0xE600000000000000);
    if ((v23 & 1) != (v78 & 1))
    {
      goto LABEL_104;
    }

    v27 = v77;
LABEL_35:
    v79 = v187;
    v191 = v72;
    if ((v23 & 1) == 0)
    {
      v80 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_32SiriInformationSuggestionsPlugin0D10SuggestionO_SDySS0cE3Kit19ResolvableParameterCGtTt0g5Tf4g_n(_swiftEmptyArrayStorage);
      v72[(v27 >> 6) + 8] |= 1 << v27;
      v81 = (v72[6] + 16 * v27);
      *v81 = v31;
      v81[1] = 0xE600000000000000;
      *(v72[7] + 8 * v27) = v80;
      v82 = v72[2];
      v38 = __OFADD__(v82, 1);
      v83 = v82 + 1;
      if (v38)
      {
        __break(1u);
LABEL_94:
        specialized _NativeDictionary.copy()();
        v87 = v188[0];
        goto LABEL_44;
      }

      v72[2] = v83;
    }

    v23 = v3;
    v84 = v72[7];
    v85 = swift_isUniquelyReferenced_nonNull_native();
    v188[0] = *(v84 + 8 * v27);
    *(v84 + 8 * v27) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(21, v21, v20, v22, v85);

    *(v84 + 8 * v27) = v188[0];
    swift_endAccess();

    v183(v23, v79);
    v184(v176, enum case for Apple_Parsec_Siri_V2alpha_DomainUseCase.sportsGetLeagueScore(_:), v79);
    if (one-time initialization token for leagueNameParams != -1)
    {
      goto LABEL_80;
    }

LABEL_39:
    v3 = &InfoServerSuggestionAssetProvider;
    v21 = static InformationSuggestion.leagueNameParams;
    v189 = 0;
    v190 = 0xE000000000000000;

    _print_unlocked<A, B>(_:_:)();
    v20 = v189;
    v22 = v190;
    swift_beginAccess();

    v86 = swift_isUniquelyReferenced_nonNull_native();
    v87 = v191;
    v188[0] = v191;
    v27 = specialized __RawDictionaryStorage.find<A>(_:)(v31, 0xE600000000000000);
    v89 = v87[2];
    v90 = (v88 & 1) == 0;
    v91 = v89 + v90;
    if (__OFADD__(v89, v90))
    {
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
      goto LABEL_84;
    }

    v23 = v88;
    if (v87[3] >= v91)
    {
      if (v86)
      {
        goto LABEL_44;
      }

      goto LABEL_94;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v91, v86);
    v87 = v188[0];
    v92 = specialized __RawDictionaryStorage.find<A>(_:)(v31, 0xE600000000000000);
    if ((v23 & 1) != (v93 & 1))
    {
      goto LABEL_104;
    }

    v27 = v92;
LABEL_44:
    v94 = v187;
    v191 = v87;
    if ((v23 & 1) == 0)
    {
      v95 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_32SiriInformationSuggestionsPlugin0D10SuggestionO_SDySS0cE3Kit19ResolvableParameterCGtTt0g5Tf4g_n(_swiftEmptyArrayStorage);
      v87[(v27 >> 6) + 8] |= 1 << v27;
      v96 = (v87[6] + 16 * v27);
      *v96 = v31;
      v96[1] = 0xE600000000000000;
      *(v87[7] + 8 * v27) = v95;
      v97 = v87[2];
      v38 = __OFADD__(v97, 1);
      v98 = v97 + 1;
      if (v38)
      {
        __break(1u);
LABEL_96:
        specialized _NativeDictionary.copy()();
        v102 = v188[0];
        goto LABEL_52;
      }

      v87[2] = v98;
    }

    v99 = v87[7];
    v100 = swift_isUniquelyReferenced_nonNull_native();
    v188[0] = *(v99 + 8 * v27);
    *(v99 + 8 * v27) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(22, v21, v20, v22, v100);

    *(v99 + 8 * v27) = v188[0];
    swift_endAccess();

    v183(v176, v94);
    v184(v175, enum case for Apple_Parsec_Siri_V2alpha_DomainUseCase.sportsGetLeagueSchedule(_:), v94);
    v21 = *&v3[44].flags;
    v189 = 0;
    v190 = 0xE000000000000000;

    _print_unlocked<A, B>(_:_:)();
    v20 = v189;
    v22 = v190;
    swift_beginAccess();

    v101 = swift_isUniquelyReferenced_nonNull_native();
    v102 = v191;
    v188[0] = v191;
    v23 = specialized __RawDictionaryStorage.find<A>(_:)(v31, 0xE600000000000000);
    v104 = v102[2];
    v105 = (v103 & 1) == 0;
    v106 = v104 + v105;
    if (__OFADD__(v104, v105))
    {
      goto LABEL_82;
    }

    LOBYTE(v27) = v103;
    if (v102[3] >= v106)
    {
      if (v101)
      {
        goto LABEL_52;
      }

      goto LABEL_96;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v106, v101);
    v102 = v188[0];
    v107 = specialized __RawDictionaryStorage.find<A>(_:)(v31, 0xE600000000000000);
    if ((v27 & 1) != (v108 & 1))
    {
      goto LABEL_104;
    }

    v23 = v107;
LABEL_52:
    v109 = v187;
    v191 = v102;
    if ((v27 & 1) == 0)
    {
      v110 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_32SiriInformationSuggestionsPlugin0D10SuggestionO_SDySS0cE3Kit19ResolvableParameterCGtTt0g5Tf4g_n(_swiftEmptyArrayStorage);
      v102[(v23 >> 6) + 8] |= 1 << v23;
      v111 = (v102[6] + 16 * v23);
      *v111 = v31;
      v111[1] = 0xE600000000000000;
      *(v102[7] + 8 * v23) = v110;
      v112 = v102[2];
      v38 = __OFADD__(v112, 1);
      v113 = v112 + 1;
      if (v38)
      {
        __break(1u);
LABEL_98:
        specialized _NativeDictionary.copy()();
        v129 = v188[0];
        v191 = v188[0];
        if (v27)
        {
          goto LABEL_64;
        }

        goto LABEL_62;
      }

      v102[2] = v113;
    }

    v114 = v102[7];
    v115 = swift_isUniquelyReferenced_nonNull_native();
    v188[0] = *(v114 + 8 * v23);
    *(v114 + 8 * v23) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(23, v21, v20, v22, v115);

    *(v114 + 8 * v23) = v188[0];
    swift_endAccess();

    v183(v175, v109);
    v184(v179, enum case for Apple_Parsec_Siri_V2alpha_DomainUseCase.stocksGetSymbolQuote(_:), v109);
    v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_18SiriSuggestionsKit19ResolvableParameterCtGMd, &_ss23_ContiguousArrayStorageCySS_18SiriSuggestionsKit19ResolvableParameterCtGMR);
    inited = swift_initStackObject();
    *(inited + 32) = 1701667182;
    v171 = (inited + 32);
    *(inited + 16) = xmmword_1B580;
    *(inited + 40) = 0xE400000000000000;
    v172 = "descriptionCallback";
    v117 = swift_allocObject();
    *(v117 + 16) = 1701667182;
    *(v117 + 24) = 0xE400000000000000;
    v181 = type metadata accessor for INInformationUseCaseIntent();
    static SuggestionTransformers.mapAsyncINIntentValue<A>(extractor:)();

    v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
    v119 = v173;
    v176 = v118;
    Transformer.init(transform:)();
    v120 = v182;
    v121 = (v182 + 16);
    v177 = *(v182 + 16);
    v122 = v174;
    v123 = v180;
    (v177)(v174, v119, v180);
    outlined init with copy of CandidateSuggestion(&v189, v188);
    v124 = type metadata accessor for ResolvableParameter();
    swift_allocObject();
    v125 = ResolvableParameter.init(typeIdentifier:required:loggingKeyTransformer:asyncIntentTransformer:)();
    v126 = *(v120 + 8);
    (v126)(v119, v123);
    __swift_destroy_boxed_opaque_existential_1Tm(&v189);
    *(inited + 48) = v125;
    strcpy((inited + 56), "instrumentType");
    *(inited + 71) = -18;
    v127 = swift_allocObject();
    *(v127 + 16) = 0x656D757274736E69;
    *(v127 + 24) = 0xEF657079745F746ELL;
    static SuggestionTransformers.mapAsyncINIntentValue<A>(extractor:)();

    static SuggestionTransformers.removeParameterFromLogging()();
    v27 = v180;
    v175 = v121;
    (v177)(v122, v119, v180);
    outlined init with copy of CandidateSuggestion(&v189, v188);
    v170 = v124;
    swift_allocObject();
    v128 = ResolvableParameter.init(typeIdentifier:required:loggingKeyTransformer:asyncIntentTransformer:)();
    v182 = v120 + 8;
    v172 = v126;
    (v126)(v119, v27);
    v23 = 0x736B636F7473;
    __swift_destroy_boxed_opaque_existential_1Tm(&v189);
    *(inited + 72) = v128;
    v109 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_18SiriSuggestionsKit19ResolvableParameterCTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_18SiriSuggestionsKit19ResolvableParameterCtMd, &_sSS_18SiriSuggestionsKit19ResolvableParameterCtMR);
    swift_arrayDestroy();
    v189 = 0;
    v190 = 0xE000000000000000;
    _print_unlocked<A, B>(_:_:)();
    v20 = v189;
    v22 = v190;
    swift_beginAccess();

    v21 = swift_isUniquelyReferenced_nonNull_native();
    v129 = v191;
    v188[0] = v191;
    v31 = specialized __RawDictionaryStorage.find<A>(_:)(0x736B636F7473, 0xE600000000000000);
    v131 = v129[2];
    v132 = (v130 & 1) == 0;
    v133 = v131 + v132;
    if (__OFADD__(v131, v132))
    {
      goto LABEL_83;
    }

    LOBYTE(v27) = v130;
    if (v129[3] < v133)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v133, v21);
      v129 = v188[0];
      v134 = specialized __RawDictionaryStorage.find<A>(_:)(0x736B636F7473, 0xE600000000000000);
      if ((v27 & 1) != (v135 & 1))
      {
        goto LABEL_104;
      }

      v31 = v134;
      v191 = v129;
      if (v27)
      {
        goto LABEL_64;
      }

      goto LABEL_62;
    }

    if ((v21 & 1) == 0)
    {
      goto LABEL_98;
    }

    v191 = v129;
    if (v130)
    {
      goto LABEL_64;
    }

LABEL_62:
    v136 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_32SiriInformationSuggestionsPlugin0D10SuggestionO_SDySS0cE3Kit19ResolvableParameterCGtTt0g5Tf4g_n(_swiftEmptyArrayStorage);
    v129[(v31 >> 6) + 8] |= 1 << v31;
    v137 = (v129[6] + 16 * v31);
    *v137 = v23;
    v137[1] = 0xE600000000000000;
    *(v129[7] + 8 * v31) = v136;
    v138 = v129[2];
    v38 = __OFADD__(v138, 1);
    v139 = v138 + 1;
    if (v38)
    {
      __break(1u);
      goto LABEL_101;
    }

    v129[2] = v139;
LABEL_64:
    v140 = v129[7];
    v141 = swift_isUniquelyReferenced_nonNull_native();
    v188[0] = *(v140 + 8 * v31);
    *(v140 + 8 * v31) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(24, v109, v20, v22, v141);

    *(v140 + 8 * v31) = v188[0];
    swift_endAccess();

    v142 = v187;
    v183(v179, v187);
    v184(v178, enum case for Apple_Parsec_Siri_V2alpha_DomainUseCase.geoGetDirections(_:), v142);
    v143 = swift_initStackObject();
    *(v143 + 32) = 0x73736572646461;
    v184 = (v143 + 32);
    *(v143 + 16) = xmmword_1B560;
    *(v143 + 40) = 0xE700000000000000;
    v171 = "stocksGetQuoteName";
    v144 = swift_allocObject();
    *(v144 + 16) = 0x73736572646461;
    *(v144 + 24) = 0xE700000000000000;
    static SuggestionTransformers.mapAsyncINIntentValue<A>(extractor:)();

    v185 = closure #1 in static InformationSuggestion.containsParameterForLogging();
    v145 = v173;
    Transformer.init(transform:)();
    v146 = v174;
    v179 = v3;
    v3 = v180;
    v147 = v177;
    (v177)(v174, v145, v180);
    outlined init with copy of CandidateSuggestion(&v189, v188);
    v23 = v170;
    swift_allocObject();
    v148 = ResolvableParameter.init(typeIdentifier:required:loggingKeyTransformer:asyncIntentTransformer:)();
    (v172)(v145, v3);
    __swift_destroy_boxed_opaque_existential_1Tm(&v189);
    *(v143 + 48) = v148;
    *(v143 + 56) = 0x6C616E6F73726570;
    *(v143 + 64) = 0xE800000000000000;
    v171 = "geoGetDirectionsAddress";
    v149 = swift_allocObject();
    *(v149 + 16) = 0x6C616E6F73726570;
    *(v149 + 24) = 0xE800000000000000;
    static SuggestionTransformers.mapAsyncINIntentValue<A>(extractor:)();

    Transformer.init(transform:)();
    (v147)(v146, v145, v3);
    outlined init with copy of CandidateSuggestion(&v189, v188);
    swift_allocObject();
    v150 = ResolvableParameter.init(typeIdentifier:required:loggingKeyTransformer:asyncIntentTransformer:)();
    v151 = v172;
    (v172)(v145, v3);
    __swift_destroy_boxed_opaque_existential_1Tm(&v189);
    *(v143 + 72) = v150;
    strcpy((v143 + 80), "localBusiness");
    *(v143 + 94) = -4864;
    v171 = "geoGetDirectionsPersonal";
    v152 = swift_allocObject();
    strcpy((v152 + 16), "localBusiness");
    *(v152 + 30) = -4864;
    static SuggestionTransformers.mapAsyncINIntentValue<A>(extractor:)();

    Transformer.init(transform:)();
    (v177)(v146, v145, v3);
    outlined init with copy of CandidateSuggestion(&v189, v188);
    swift_allocObject();
    v153 = ResolvableParameter.init(typeIdentifier:required:loggingKeyTransformer:asyncIntentTransformer:)();
    (v151)(v145, v3);
    __swift_destroy_boxed_opaque_existential_1Tm(&v189);
    *(v143 + 96) = v153;
    v21 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_18SiriSuggestionsKit19ResolvableParameterCTt0g5Tf4g_n(v143);
    swift_setDeallocating();
    swift_arrayDestroy();
    v189 = 0;
    v190 = 0xE000000000000000;
    _print_unlocked<A, B>(_:_:)();
    v20 = v189;
    v22 = v190;
    swift_beginAccess();

    v154 = swift_isUniquelyReferenced_nonNull_native();
    v27 = v191;
    v188[0] = v191;
    v31 = specialized __RawDictionaryStorage.find<A>(_:)(1936744813, 0xE400000000000000);
    v156 = *(v27 + 16);
    v157 = (v155 & 1) == 0;
    v158 = v156 + v157;
    if (!__OFADD__(v156, v157))
    {
      break;
    }

LABEL_84:
    __break(1u);
LABEL_85:
    specialized _NativeDictionary.copy()();
    v25 = v188[0];
  }

  LOBYTE(v23) = v155;
  if (*(v27 + 24) >= v158)
  {
    if (v154)
    {
      v161 = v187;
      if ((v155 & 1) == 0)
      {
        goto LABEL_71;
      }

      goto LABEL_73;
    }

LABEL_101:
    specialized _NativeDictionary.copy()();
    v27 = v188[0];
    v161 = v187;
    if ((v23 & 1) == 0)
    {
      goto LABEL_71;
    }

LABEL_73:
    v166 = *(v27 + 56);
    v167 = swift_isUniquelyReferenced_nonNull_native();
    v188[0] = *(v166 + 8 * v31);
    *(v166 + 8 * v31) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(12, v21, v20, v22, v167);

    *(v166 + 8 * v31) = v188[0];
    swift_endAccess();

    result = (v183)(v178, v161);
    static InformationSuggestion.serverMappings = v27;
    return result;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v158, v154);
  v27 = v188[0];
  v159 = specialized __RawDictionaryStorage.find<A>(_:)(1936744813, 0xE400000000000000);
  if ((v23 & 1) != (v160 & 1))
  {
    goto LABEL_104;
  }

  v31 = v159;
  v161 = v187;
  if (v23)
  {
    goto LABEL_73;
  }

LABEL_71:
  v162 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_32SiriInformationSuggestionsPlugin0D10SuggestionO_SDySS0cE3Kit19ResolvableParameterCGtTt0g5Tf4g_n(_swiftEmptyArrayStorage);
  *(v27 + 8 * (v31 >> 6) + 64) |= 1 << v31;
  v163 = (*(v27 + 48) + 16 * v31);
  *v163 = 1936744813;
  v163[1] = 0xE400000000000000;
  *(*(v27 + 56) + 8 * v31) = v162;
  v164 = *(v27 + 16);
  v38 = __OFADD__(v164, 1);
  v165 = v164 + 1;
  if (!v38)
  {
    *(v27 + 16) = v165;
    goto LABEL_73;
  }

  __break(1u);
LABEL_104:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

int *one-time initialization function for serverParameterMapping()
{
  result = closure #1 in variable initialization expression of static InformationSuggestion.serverParameterMapping();
  static InformationSuggestion.serverParameterMapping = result;
  return result;
}

void *closure #1 in variable initialization expression of static InformationSuggestion.serverParameterMapping()
{
  v5 = _swiftEmptyArrayStorage;
  if (one-time initialization token for serverMappings != -1)
  {
    swift_once();
  }

  specialized Sequence.forEach(_:)(v0);

  if (v5[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy32SiriInformationSuggestionsPlugin0D10SuggestionOSDySS0cE3Kit19ResolvableParameterCGGMd, &_ss18_DictionaryStorageCy32SiriInformationSuggestionsPlugin0D10SuggestionOSDySS0cE3Kit19ResolvableParameterCGGMR);
    v1 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v1 = &_swiftEmptyDictionarySingleton;
  }

  v4 = v1;

  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v2, 1, &v4);

  return v4;
}

uint64_t InformationSuggestion.ServerMappingBuilder.__deallocating_deinit()
{

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t closure #1 in static InformationSuggestion.parameterFromServer(named:as:logParameter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(closure #1 in static InformationSuggestion.parameterFromServer(named:as:logParameter:), 0, 0);
}

uint64_t closure #1 in static InformationSuggestion.parameterFromServer(named:as:logParameter:)()
{
  v1 = [*(v0 + 24) parameters];
  if (!v1)
  {
    goto LABEL_26;
  }

  v2 = v1;
  type metadata accessor for INInformationUseCaseParameter();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v3 >> 62)
  {
LABEL_24:
    v4 = _CocoaArrayWrapper.endIndex.getter();
    if (v4)
    {
      goto LABEL_4;
    }

    goto LABEL_25;
  }

  v4 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
  if (!v4)
  {
LABEL_25:

LABEL_26:
    v20 = *(v0 + 16);
    goto LABEL_27;
  }

LABEL_4:
  v5 = 0;
  v31 = v3 & 0xFFFFFFFFFFFFFF8;
  v32 = v3 & 0xC000000000000001;
  while (1)
  {
    if (v32)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v5 >= *(v31 + 16))
      {
        goto LABEL_23;
      }

      v6 = *(v3 + 8 * v5 + 32);
    }

    v7 = v6;
    v8 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    v9 = [v6 identifier];
    if (!v9)
    {
      goto LABEL_5;
    }

    v10 = v7;
    v11 = v3;
    v12 = *(v0 + 32);
    v33 = *(v0 + 40);
    v13 = v9;
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    if (v14 == v12 && v16 == v33)
    {
      break;
    }

    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v3 = v11;
    v7 = v10;
    if (v18)
    {
      goto LABEL_19;
    }

LABEL_5:

    ++v5;
    if (v8 == v4)
    {
      goto LABEL_25;
    }
  }

  v7 = v10;
LABEL_19:

  v19 = [v7 value];
  v20 = *(v0 + 16);
  if (v19)
  {
    v21 = v19;
    v22 = [v19 displayString];

    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    v20[3] = &type metadata for String;
    *v20 = v23;
    v20[1] = v25;
    v26 = &enum case for IntentParameter.directAssignment(_:);
    goto LABEL_28;
  }

LABEL_27:
  v26 = &enum case for IntentParameter.ignore(_:);
LABEL_28:
  v27 = *v26;
  v28 = type metadata accessor for IntentParameter();
  (*(*(v28 - 8) + 104))(v20, v27, v28);
  v29 = *(v0 + 8);

  return v29();
}

uint64_t static InformationSuggestion.containsParameterForLogging()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);

  return Transformer.init(transform:)();
}

uint64_t closure #1 in static InformationSuggestion.weatherLocationParameter()(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v2[4] = swift_task_alloc();
  v2[5] = swift_task_alloc();
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();

  return _swift_task_switch(closure #1 in static InformationSuggestion.weatherLocationParameter(), 0, 0);
}

uint64_t closure #1 in static InformationSuggestion.weatherLocationParameter()()
{
  v78 = v0;
  v1 = [v0[3] parameters];
  if (!v1)
  {
    v23 = v0[2];
    v24 = enum case for IntentParameter.ignore(_:);
    v25 = type metadata accessor for IntentParameter();
    (*(*(v25 - 8) + 104))(v23, v24, v25);
    goto LABEL_70;
  }

  v2 = v1;
  v76 = v0;
  type metadata accessor for INInformationUseCaseParameter();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v3 >> 62)
  {
LABEL_25:
    v4 = _CocoaArrayWrapper.endIndex.getter();
    if (v4)
    {
      goto LABEL_4;
    }

LABEL_26:
    v75 = _swiftEmptyArrayStorage;
    goto LABEL_27;
  }

  v4 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
  if (!v4)
  {
    goto LABEL_26;
  }

LABEL_4:
  v5 = 0;
  v75 = _swiftEmptyArrayStorage;
  do
  {
    v6 = v5;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_24;
        }

        v7 = *(v3 + 8 * v6 + 32);
      }

      v8 = v7;
      v5 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v9 = [v7 identifier];
      if (v9)
      {
        break;
      }

LABEL_7:

      ++v6;
      if (v5 == v4)
      {
        goto LABEL_27;
      }
    }

    v10 = v9;
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    v14 = [v8 value];
    if (!v14)
    {

      goto LABEL_7;
    }

    v15 = v14;
    v16 = [v14 displayString];

    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v74 = v18;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v75 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v75[2] + 1, 1, v75);
    }

    v21 = v75[2];
    v20 = v75[3];
    if (v21 >= v20 >> 1)
    {
      v75 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v75);
    }

    v75[2] = v21 + 1;
    v22 = &v75[4 * v21];
    v22[4] = v11;
    v22[5] = v13;
    v22[6] = v17;
    v22[7] = v74;
  }

  while (v5 != v4);
LABEL_27:

  if (v75[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
    v26 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v26 = &_swiftEmptyDictionarySingleton;
  }

  v77 = v26;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v75, 1, &v77);

  v27 = v77;
  type metadata accessor for DialogLocationAddress.Builder();
  swift_allocObject();
  DialogLocationAddress.Builder.init()();
  if (v27[2])
  {
    specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000013, 0x800000000001C820);
    if (v28)
    {

      String.toSpeakableString.getter();

      v29 = 0;
    }

    else
    {
      v29 = 1;
    }
  }

  else
  {
    v29 = 1;
  }

  v30 = v0[15];
  v31 = type metadata accessor for SpeakableString();
  v32 = *(*(v31 - 8) + 56);
  v33 = 1;
  v32(v30, v29, 1, v31);
  dispatch thunk of DialogLocationAddress.Builder.withAdministrativeArea(_:)();

  outlined destroy of SpeakableString?(v30, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (v27[2])
  {
    specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000018, 0x800000000001C840);
    if (v34)
    {

      String.toSpeakableString.getter();

      v33 = 0;
    }
  }

  v35 = v76[14];
  v36 = 1;
  v32(v35, v33, 1, v31);
  dispatch thunk of DialogLocationAddress.Builder.withAdministrativeAreaCode(_:)();

  outlined destroy of SpeakableString?(v35, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (v27[2])
  {
    specialized __RawDictionaryStorage.find<A>(_:)(0x7972746E756F63, 0xE700000000000000);
    if (v37)
    {

      String.toSpeakableString.getter();

      v36 = 0;
    }
  }

  v38 = v76[13];
  v39 = 1;
  v32(v38, v36, 1, v31);
  dispatch thunk of DialogLocationAddress.Builder.withCountry(_:)();

  outlined destroy of SpeakableString?(v38, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (v27[2])
  {
    specialized __RawDictionaryStorage.find<A>(_:)(0x5F7972746E756F63, 0xEC00000065646F63);
    if (v40)
    {

      String.toSpeakableString.getter();

      v39 = 0;
    }
  }

  v41 = v76[12];
  v42 = 1;
  v32(v41, v39, 1, v31);
  dispatch thunk of DialogLocationAddress.Builder.withCountryCode(_:)();

  outlined destroy of SpeakableString?(v41, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (v27[2])
  {
    specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000011, 0x800000000001C860);
    if (v43)
    {

      String.toSpeakableString.getter();

      v42 = 0;
    }
  }

  v44 = v76[11];
  v45 = 1;
  v32(v44, v42, 1, v31);
  dispatch thunk of DialogLocationAddress.Builder.withFullThoroughfare(_:)();

  outlined destroy of SpeakableString?(v44, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (v27[2])
  {
    specialized __RawDictionaryStorage.find<A>(_:)(0x7974696C61636F6CLL, 0xE800000000000000);
    if (v46)
    {

      String.toSpeakableString.getter();

      v45 = 0;
    }
  }

  v47 = v76[10];
  v48 = 1;
  v32(v47, v45, 1, v31);
  dispatch thunk of DialogLocationAddress.Builder.withLocality(_:)();

  outlined destroy of SpeakableString?(v47, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (v27[2])
  {
    specialized __RawDictionaryStorage.find<A>(_:)(1701667182, 0xE400000000000000);
    if (v49)
    {

      String.toSpeakableString.getter();

      v48 = 0;
    }
  }

  v50 = v76[9];
  v51 = 1;
  v32(v50, v48, 1, v31);
  dispatch thunk of DialogLocationAddress.Builder.withName(_:)();

  outlined destroy of SpeakableString?(v50, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (v27[2])
  {
    specialized __RawDictionaryStorage.find<A>(_:)(0x635F6C6174736F70, 0xEB0000000065646FLL);
    if (v52)
    {

      String.toSpeakableString.getter();

      v51 = 0;
    }
  }

  v53 = v76[8];
  v54 = 1;
  v32(v53, v51, 1, v31);
  dispatch thunk of DialogLocationAddress.Builder.withPostCode(_:)();

  outlined destroy of SpeakableString?(v53, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (v27[2])
  {
    specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000017, 0x800000000001C880);
    if (v55)
    {

      String.toSpeakableString.getter();

      v54 = 0;
    }
  }

  v56 = v76[7];
  v57 = 1;
  v32(v56, v54, 1, v31);
  dispatch thunk of DialogLocationAddress.Builder.withSubAdministrativeArea(_:)();

  outlined destroy of SpeakableString?(v56, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (v27[2])
  {
    specialized __RawDictionaryStorage.find<A>(_:)(0x61636F6C5F627573, 0xEC0000007974696CLL);
    if (v58)
    {

      String.toSpeakableString.getter();

      v57 = 0;
    }
  }

  v59 = v76[6];
  v60 = 1;
  v32(v59, v57, 1, v31);
  dispatch thunk of DialogLocationAddress.Builder.withSubLocality(_:)();

  outlined destroy of SpeakableString?(v59, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (v27[2])
  {
    specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000010, 0x800000000001C8A0);
    if (v61)
    {

      String.toSpeakableString.getter();

      v60 = 0;
    }
  }

  v62 = v76[5];
  v32(v62, v60, 1, v31);
  dispatch thunk of DialogLocationAddress.Builder.withSubThoroughfare(_:)();

  outlined destroy of SpeakableString?(v62, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (v27[2] && (specialized __RawDictionaryStorage.find<A>(_:)(0x6867756F726F6874, 0xEC00000065726166), (v63 & 1) != 0))
  {

    String.toSpeakableString.getter();

    v64 = 0;
  }

  else
  {

    v64 = 1;
  }

  v65 = v76[4];
  v66 = v76[2];
  v32(v65, v64, 1, v31);
  dispatch thunk of DialogLocationAddress.Builder.withThoroughfare(_:)();

  outlined destroy of SpeakableString?(v65, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  dispatch thunk of DialogLocationAddress.Builder.build()();

  type metadata accessor for DialogLocationValue.Builder();
  swift_allocObject();
  DialogLocationValue.Builder.init()();

  dispatch thunk of DialogLocationValue.Builder.withAddress(_:)();

  v67 = dispatch thunk of DialogLocationValue.Builder.build()();

  type metadata accessor for DialogLocation.Builder();
  swift_allocObject();
  DialogLocation.Builder.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v68 = swift_allocObject();
  *(v68 + 16) = xmmword_1B590;
  *(v68 + 32) = v67;

  dispatch thunk of DialogLocation.Builder.withValues(_:)();

  v69 = dispatch thunk of DialogLocation.Builder.build()();

  v66[3] = type metadata accessor for DialogLocation();
  v0 = v76;

  *v66 = v69;
  v70 = enum case for IntentParameter.directAssignment(_:);
  v71 = type metadata accessor for IntentParameter();
  (*(*(v71 - 8) + 104))(v66, v70, v71);
LABEL_70:

  v72 = v0[1];

  return v72();
}

_OWORD *closure #1 in static InformationSuggestion.containsParameterForLogging()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with copy of Any(a1, v7);
  outlined init with copy of Any?(v7, v4, &_sypSgMd, &_sypSgMR);
  if (v4[3])
  {
    outlined destroy of SpeakableString?(v4, &_sypSgMd, &_sypSgMR);
    LOBYTE(v5) = 1;
    *(&v6 + 1) = &type metadata for Bool;
    outlined destroy of SpeakableString?(v7, &_sypSgMd, &_sypSgMR);
    return outlined init with take of Any(&v5, a2);
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
    *(a2 + 24) = &type metadata for Bool;
    *a2 = 0;
    result = outlined destroy of SpeakableString?(v7, &_sypSgMd, &_sypSgMR);
    if (*(&v6 + 1))
    {
      return outlined destroy of SpeakableString?(&v5, &_sypSgMd, &_sypSgMR);
    }
  }

  return result;
}

uint64_t closure #1 in InformationSuggestion.intentMatcher.getter(void *a1, char a2)
{
  v3 = specialized static InformationSuggestion.suggestionMatched(_:)(a1);
  if (v3 == 25)
  {
    v4 = 0;
  }

  else
  {
    v5 = InformationSuggestion.rawValue.getter(v3);
    v7 = v6;
    if (v5 == InformationSuggestion.rawValue.getter(a2) && v7 == v8)
    {
      v4 = 1;
    }

    else
    {
      v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return v4 & 1;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AppBundleIdentifier(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
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

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance InformationSuggestion@<X0>(Swift::String *a1@<X0>, SiriInformationSuggestionsPlugin::InformationSuggestion_optional *a2@<X8>)
{
  result = specialized InformationSuggestion.init(rawValue:)(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance InformationSuggestion@<X0>(unint64_t *a1@<X8>)
{
  result = InformationSuggestion.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AppBundleIdentifier(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = *v3;
  Hasher.init(_seed:)();
  a3(v5);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AppBundleIdentifier(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  (a4)(*v4, a2, a3);
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AppBundleIdentifier(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v6);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t one-time initialization function for calendar()
{
  type metadata accessor for Signal();
  v0 = type metadata accessor for CoreSignalTypes();
  v3[3] = v0;
  v3[4] = _s18SiriSuggestionsKit11DomainOwnerCAcA0E0AAWlTm_0(&lazy protocol witness table cache variable for type CoreSignalTypes and conformance CoreSignalTypes, 255, &type metadata accessor for CoreSignalTypes, &protocol conformance descriptor for CoreSignalTypes);
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v3);
  (*(*(v0 - 8) + 104))(boxed_opaque_existential_0Tm, enum case for CoreSignalTypes.app(_:), v0);
  result = Signal.__allocating_init(signalType:signalValue:fallbackSignals:)();
  static InformationSuggestionSignals.calendar = result;
  return result;
}

uint64_t one-time initialization function for deviceLocked()
{
  type metadata accessor for Signal();
  result = static Signal.DeviceLocked.getter();
  static InformationSuggestionSignals.deviceLocked = result;
  return result;
}

uint64_t one-time initialization function for fallback()
{
  type metadata accessor for Signal();
  result = static Signal.Fallback.getter();
  static InformationSuggestionSignals.fallback = result;
  return result;
}

uint64_t one-time initialization function for homescreen()
{
  type metadata accessor for Signal();
  result = static Signal.HomeScreen.getter();
  static InformationSuggestionSignals.homescreen = result;
  return result;
}

uint64_t one-time initialization function for safari()
{
  type metadata accessor for Signal();
  v0 = type metadata accessor for CoreSignalTypes();
  v3[3] = v0;
  v3[4] = _s18SiriSuggestionsKit11DomainOwnerCAcA0E0AAWlTm_0(&lazy protocol witness table cache variable for type CoreSignalTypes and conformance CoreSignalTypes, 255, &type metadata accessor for CoreSignalTypes, &protocol conformance descriptor for CoreSignalTypes);
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v3);
  (*(*(v0 - 8) + 104))(boxed_opaque_existential_0Tm, enum case for CoreSignalTypes.app(_:), v0);
  result = Signal.__allocating_init(signalType:signalValue:fallbackSignals:)();
  static InformationSuggestionSignals.safari = result;
  return result;
}

uint64_t one-time initialization function for weather()
{
  type metadata accessor for Signal();
  v0 = type metadata accessor for CoreSignalTypes();
  v3[3] = v0;
  v3[4] = _s18SiriSuggestionsKit11DomainOwnerCAcA0E0AAWlTm_0(&lazy protocol witness table cache variable for type CoreSignalTypes and conformance CoreSignalTypes, 255, &type metadata accessor for CoreSignalTypes, &protocol conformance descriptor for CoreSignalTypes);
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v3);
  (*(*(v0 - 8) + 104))(boxed_opaque_existential_0Tm, enum case for CoreSignalTypes.app(_:), v0);
  result = Signal.__allocating_init(signalType:signalValue:fallbackSignals:)();
  static InformationSuggestionSignals.weather = result;
  return result;
}

uint64_t one-time initialization function for maps(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  type metadata accessor for Signal();
  v4 = type metadata accessor for CoreSignalTypes();
  v7[3] = v4;
  v7[4] = _s18SiriSuggestionsKit11DomainOwnerCAcA0E0AAWlTm_0(&lazy protocol witness table cache variable for type CoreSignalTypes and conformance CoreSignalTypes, 255, &type metadata accessor for CoreSignalTypes, &protocol conformance descriptor for CoreSignalTypes);
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v7);
  (*(*(v4 - 8) + 104))(boxed_opaque_existential_0Tm, enum case for CoreSignalTypes.app(_:), v4);
  result = Signal.__allocating_init(signalType:signalValue:fallbackSignals:)();
  *a3 = result;
  return result;
}

uint64_t one-time initialization function for signals()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy32SiriInformationSuggestionsPlugin0E10SuggestionO_Say0dF3Kit6SignalCGtGMd, &_ss23_ContiguousArrayStorageCy32SiriInformationSuggestionsPlugin0E10SuggestionO_Say0dF3Kit6SignalCGtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B5A0;
  *(inited + 32) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1B5B0;
  if (one-time initialization token for deviceLocked != -1)
  {
    swift_once();
  }

  *(v1 + 32) = static InformationSuggestionSignals.deviceLocked;
  v2 = one-time initialization token for fallback;

  if (v2 != -1)
  {
    swift_once();
  }

  *(v1 + 40) = static InformationSuggestionSignals.fallback;
  v3 = one-time initialization token for homescreen;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = static InformationSuggestionSignals.homescreen;
  *(v1 + 48) = static InformationSuggestionSignals.homescreen;
  v5 = one-time initialization token for safari;

  if (v5 != -1)
  {
    swift_once();
    v4 = static InformationSuggestionSignals.homescreen;
  }

  v6 = static InformationSuggestionSignals.safari;
  *(v1 + 56) = static InformationSuggestionSignals.safari;
  *(inited + 40) = v1;
  *(inited + 48) = 1;
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1B5C0;
  v8 = static InformationSuggestionSignals.deviceLocked;
  v9 = static InformationSuggestionSignals.fallback;
  *(v7 + 32) = static InformationSuggestionSignals.deviceLocked;
  *(v7 + 40) = v9;
  *(v7 + 48) = v4;
  *(inited + 56) = v7;
  *(inited + 64) = 2;
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1B5C0;
  *(v10 + 32) = v9;
  *(v10 + 40) = v4;
  *(v10 + 48) = v6;
  *(inited + 72) = v10;
  *(inited + 80) = 3;
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1B5D0;
  *(v11 + 32) = v9;
  *(v11 + 40) = v4;
  *(inited + 88) = v11;
  *(inited + 96) = 4;
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1B5B0;
  *(v12 + 32) = v8;
  *(v12 + 40) = v9;
  *(v12 + 48) = v4;
  *(v12 + 56) = v6;
  *(inited + 104) = v12;
  *(inited + 112) = 5;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1B5C0;
  *(v13 + 32) = v8;
  *(v13 + 40) = v9;
  *(v13 + 48) = v4;
  *(inited + 120) = v13;
  *(inited + 128) = 6;
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1B5D0;
  *(v14 + 32) = v9;
  *(v14 + 40) = v4;
  *(inited + 136) = v14;
  *(inited + 144) = 7;
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1B5C0;
  v16 = one-time initialization token for calendar;
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  if (v16 != -1)
  {
    swift_once();
  }

  v17 = static InformationSuggestionSignals.fallback;
  *(v15 + 32) = static InformationSuggestionSignals.calendar;
  *(v15 + 40) = v17;
  v18 = static InformationSuggestionSignals.homescreen;
  *(v15 + 48) = static InformationSuggestionSignals.homescreen;
  *(inited + 152) = v15;
  *(inited + 160) = 8;
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1B5B0;
  v20 = static InformationSuggestionSignals.deviceLocked;
  *(v19 + 32) = static InformationSuggestionSignals.deviceLocked;
  *(v19 + 40) = v17;
  v21 = static InformationSuggestionSignals.safari;
  *(v19 + 48) = v18;
  *(v19 + 56) = v21;
  *(inited + 168) = v19;
  *(inited + 176) = 9;
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1B5B0;
  *(v22 + 32) = v20;
  *(v22 + 40) = v17;
  *(v22 + 48) = v18;
  *(v22 + 56) = v21;
  *(inited + 184) = v22;
  *(inited + 192) = 10;
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1B5E0;
  *(v23 + 32) = v20;
  *(v23 + 40) = v17;
  *(v23 + 48) = v18;
  v24 = one-time initialization token for maps;
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();

  if (v24 != -1)
  {
    swift_once();
    v21 = static InformationSuggestionSignals.safari;
    v20 = static InformationSuggestionSignals.deviceLocked;
    v17 = static InformationSuggestionSignals.fallback;
    v18 = static InformationSuggestionSignals.homescreen;
  }

  v25 = static InformationSuggestionSignals.maps;
  *(v23 + 56) = static InformationSuggestionSignals.maps;
  *(v23 + 64) = v21;
  *(inited + 200) = v23;
  *(inited + 208) = 11;
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1B5B0;
  *(v26 + 32) = v20;
  *(v26 + 40) = v17;
  *(v26 + 48) = v18;
  *(v26 + 56) = v21;
  *(inited + 216) = v26;
  *(inited + 224) = 12;
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1B5B0;
  *(v27 + 32) = v20;
  *(v27 + 40) = v17;
  *(v27 + 48) = v18;
  *(v27 + 56) = v25;
  *(inited + 232) = v27;
  *(inited + 240) = 13;
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1B5D0;
  *(v28 + 32) = v17;
  *(v28 + 40) = v18;
  *(inited + 248) = v28;
  *(inited + 256) = 14;
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1B5B0;
  *(v29 + 32) = v20;
  *(v29 + 40) = v17;
  *(v29 + 48) = v18;
  v30 = one-time initialization token for news;
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  if (v30 != -1)
  {
    swift_once();
    v20 = static InformationSuggestionSignals.deviceLocked;
    v18 = static InformationSuggestionSignals.homescreen;
  }

  *(v29 + 56) = static InformationSuggestionSignals.news;
  *(inited + 264) = v29;
  *(inited + 272) = 15;
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1B5C0;
  *(v31 + 32) = v20;
  *(v31 + 40) = v18;
  v32 = one-time initialization token for weather;

  if (v32 != -1)
  {
    swift_once();
    v20 = static InformationSuggestionSignals.deviceLocked;
    v18 = static InformationSuggestionSignals.homescreen;
  }

  v33 = static InformationSuggestionSignals.weather;
  *(v31 + 48) = static InformationSuggestionSignals.weather;
  *(inited + 280) = v31;
  *(inited + 288) = 16;
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1B5F0;
  *(v34 + 32) = v33;
  *(v34 + 40) = v20;
  v35 = static InformationSuggestionSignals.fallback;
  *(v34 + 48) = v18;
  *(v34 + 56) = v35;
  v36 = static InformationSuggestionSignals.calendar;
  *(v34 + 64) = static InformationSuggestionSignals.safari;
  *(v34 + 72) = v36;
  *(inited + 296) = v34;
  *(inited + 304) = 17;
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1B5C0;
  *(v37 + 32) = v20;
  *(v37 + 40) = v18;
  *(v37 + 48) = v35;
  *(inited + 312) = v37;
  *(inited + 320) = 18;
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1B5C0;
  *(v38 + 32) = v20;
  *(v38 + 40) = v18;
  *(v38 + 48) = v35;
  *(inited + 328) = v38;
  *(inited + 336) = 19;
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1B5C0;
  *(v39 + 32) = v20;
  *(v39 + 40) = v18;
  *(v39 + 48) = v35;
  *(inited + 344) = v39;
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();

  v40 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC32SiriInformationSuggestionsPlugin0D10SuggestionO_Say0cE3Kit6SignalCGTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriInformationSuggestionsPlugin0B10SuggestionO_Say0aC3Kit6SignalCGtMd, &_s32SiriInformationSuggestionsPlugin0B10SuggestionO_Say0aC3Kit6SignalCGtMR);
  result = swift_arrayDestroy();
  static InformationSuggestionSignals.signals = v40;
  return result;
}

uint64_t SuggestionOverrideDialog.init(catId:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  *(v2 + 32) = 0xD000000000000010;
  *(v2 + 40) = 0x800000000001C0A0;
  *(v2 + 48) = 1;
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  *(v2 + 72) = 0xD000000000000010;
  *(v2 + 80) = 0x800000000001C0A0;
  *(v2 + 88) = 0;
  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  *(v2 + 112) = 0x7470697263736564;
  *(v2 + 120) = 0xEB000000006E6F69;
  *(v2 + 128) = 0;
  swift_bridgeObjectRetain_n();
  return v2;
}

void __swiftcall SuggestionOverrideDialog.OverrideDialogCallback.init(templateIdentifier:sectionIdentifier:isSpeakable:)(SiriInformationSuggestionsPlugin::SuggestionOverrideDialog::OverrideDialogCallback *__return_ptr retstr, Swift::String templateIdentifier, Swift::String sectionIdentifier, Swift::Bool isSpeakable)
{
  retstr->templateIdentifier = templateIdentifier;
  retstr->sectionIdentifier = sectionIdentifier;
  retstr->isSpeakable = isSpeakable;
}

uint64_t SuggestionOverrideDialog.getSpokenDialogCallback(context:)@<X0>(uint64_t *a1@<X8>)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v6 = *(v1 + 32);
  v5 = *(v1 + 40);
  v7 = *(v1 + 48);
  a1[3] = &type metadata for SuggestionOverrideDialog.OverrideDialogCallback;
  a1[4] = lazy protocol witness table accessor for type SuggestionOverrideDialog.OverrideDialogCallback and conformance SuggestionOverrideDialog.OverrideDialogCallback();
  v8 = swift_allocObject();
  *a1 = v8;
  *(v8 + 16) = v4;
  *(v8 + 24) = v3;
  *(v8 + 32) = v6;
  *(v8 + 40) = v5;
  *(v8 + 48) = v7;
}

uint64_t SuggestionOverrideDialog.getDisplayedDialogCallback(context:)@<X0>(uint64_t *a1@<X8>)
{
  v4 = *(v1 + 56);
  v3 = *(v1 + 64);
  v6 = *(v1 + 72);
  v5 = *(v1 + 80);
  v7 = *(v1 + 88);
  a1[3] = &type metadata for SuggestionOverrideDialog.OverrideDialogCallback;
  a1[4] = lazy protocol witness table accessor for type SuggestionOverrideDialog.OverrideDialogCallback and conformance SuggestionOverrideDialog.OverrideDialogCallback();
  v8 = swift_allocObject();
  *a1 = v8;
  *(v8 + 16) = v4;
  *(v8 + 24) = v3;
  *(v8 + 32) = v6;
  *(v8 + 40) = v5;
  *(v8 + 48) = v7;
}

uint64_t SuggestionOverrideDialog.getDescriptionCallback(context:)@<X0>(uint64_t *a1@<X8>)
{
  v4 = *(v1 + 96);
  v3 = *(v1 + 104);
  v6 = *(v1 + 112);
  v5 = *(v1 + 120);
  v7 = *(v1 + 128);
  a1[3] = &type metadata for SuggestionOverrideDialog.OverrideDialogCallback;
  a1[4] = lazy protocol witness table accessor for type SuggestionOverrideDialog.OverrideDialogCallback and conformance SuggestionOverrideDialog.OverrideDialogCallback();
  v8 = swift_allocObject();
  *a1 = v8;
  *(v8 + 16) = v4;
  *(v8 + 24) = v3;
  *(v8 + 32) = v6;
  *(v8 + 40) = v5;
  *(v8 + 48) = v7;
}

uint64_t SuggestionOverrideDialog.OverrideDialogCallback.getTemplateLocation()@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  __chkstk_darwin(v2 - 8);
  v4 = &v8 - v3;
  URL.init(string:)();
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  result = (*(v6 + 48))(v4, 1, v5);
  if (result != 1)
  {
    return (*(v6 + 32))(a1, v4, v5);
  }

  __break(1u);
  return result;
}

uint64_t SuggestionOverrideDialog.OverrideDialogCallback.templateIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SuggestionOverrideDialog.OverrideDialogCallback.getText(dialog:dialogProperties:environment:viewContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[23] = a4;
  v5[24] = v4;
  v5[21] = a2;
  v5[22] = a3;
  v5[20] = a1;
  return _swift_task_switch(SuggestionOverrideDialog.OverrideDialogCallback.getText(dialog:dialogProperties:environment:viewContext:), 0, 0);
}

uint64_t SuggestionOverrideDialog.OverrideDialogCallback.getText(dialog:dialogProperties:environment:viewContext:)()
{
  __swift_project_boxed_opaque_existential_1Tm(*(v0 + 168), *(*(v0 + 168) + 24));
  v1 = dispatch thunk of DialogProperties.getParameters()();
  v2 = static SuggestionConstants.paramUtteranceOverride.getter();
  if (!*(v1 + 16))
  {

    goto LABEL_8;
  }

  v4 = specialized __RawDictionaryStorage.find<A>(_:)(v2, v3);
  v6 = v5;

  if ((v6 & 1) == 0)
  {
LABEL_8:

    goto LABEL_9;
  }

  outlined init with copy of Any(*(v1 + 56) + 32 * v4, v0 + 56);

  type metadata accessor for INInformationUseCaseUtterance();
  if (swift_dynamicCast())
  {
    v7 = *(v0 + 152);
    if (*(*(v0 + 192) + 32))
    {
      v8 = [*(v0 + 152) spokenString];
      if (v8)
      {
LABEL_14:
        v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v23 = v22;

        v24 = *(v0 + 8);

        return v24(v21, v23);
      }

      v9 = [v7 displayString];
    }

    else
    {
      v9 = [*(v0 + 152) displayString];
    }

    v8 = v9;
    goto LABEL_14;
  }

LABEL_9:
  v10 = *(v0 + 192);
  v11 = *(v0 + 160);
  v12 = v11[3];
  v13 = v11[4];
  __swift_project_boxed_opaque_existential_1Tm(v11, v12);
  *(v0 + 88) = *v10;
  *(v0 + 104) = *(v10 + 16);
  *(v0 + 40) = &type metadata for SuggestionOverrideDialog.OverrideDialogCallback;
  *(v0 + 48) = lazy protocol witness table accessor for type SuggestionOverrideDialog.OverrideDialogCallback and conformance SuggestionOverrideDialog.OverrideDialogCallback();
  v14 = swift_allocObject();
  *(v0 + 16) = v14;
  v15 = *(v10 + 32);
  v16 = *(v10 + 16);
  *(v14 + 16) = *v10;
  *(v14 + 32) = v16;
  *(v14 + 48) = v15;
  outlined init with copy of String(v0 + 88, v0 + 120);
  outlined init with copy of String(v0 + 104, v0 + 136);
  v17 = swift_task_alloc();
  *(v0 + 200) = v17;
  *v17 = v0;
  v17[1] = SuggestionOverrideDialog.OverrideDialogCallback.getText(dialog:dialogProperties:environment:viewContext:);
  v18 = *(v0 + 176);
  v19 = *(v0 + 184);
  v20 = *(v0 + 168);

  return dispatch thunk of DialogService.templateDialog(propertyProvider:dialogProperties:environment:viewContext:)(v0 + 16, v20, v18, v19, v12, v13);
}

{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t SuggestionOverrideDialog.OverrideDialogCallback.getText(dialog:dialogProperties:environment:viewContext:)(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;
  *(*v3 + 208) = v2;

  if (v2)
  {

    return _swift_task_switch(SuggestionOverrideDialog.OverrideDialogCallback.getText(dialog:dialogProperties:environment:viewContext:), 0, 0);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v6 + 16));
    v8 = *(v7 + 8);

    return v8(a1, a2);
  }
}

uint64_t protocol witness for DialogCallback.getText(dialog:dialogProperties:environment:) in conformance SuggestionOverrideDialog.OverrideDialogCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = protocol witness for DialogCallback.getText(dialog:dialogProperties:environment:) in conformance SuggestionOverrideDialog.OverrideDialogCallback;

  return DialogCallback.getText(dialog:dialogProperties:environment:)(a1, a2, a3, a4, a5);
}

uint64_t protocol witness for DialogCallback.getText(dialog:dialogProperties:environment:) in conformance SuggestionOverrideDialog.OverrideDialogCallback(uint64_t a1, uint64_t a2)
{
  v10 = *v3;

  v8 = *(v10 + 8);
  if (!v2)
  {
    v6 = a1;
    v7 = a2;
  }

  return v8(v6, v7);
}

uint64_t protocol witness for DialogCallback.getText(dialog:dialogProperties:environment:viewContext:) in conformance SuggestionOverrideDialog.OverrideDialogCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(v4 + 16);
  *(v5 + 16) = *v4;
  *(v5 + 32) = v10;
  *(v5 + 48) = *(v4 + 32);
  v11 = swift_task_alloc();
  *(v5 + 56) = v11;
  *v11 = v5;
  v11[1] = protocol witness for DialogCallback.getText(dialog:dialogProperties:environment:viewContext:) in conformance SuggestionOverrideDialog.OverrideDialogCallback;

  return SuggestionOverrideDialog.OverrideDialogCallback.getText(dialog:dialogProperties:environment:viewContext:)(a1, a2, a3, a4);
}

uint64_t protocol witness for DialogCallback.getText(dialog:dialogProperties:environment:viewContext:) in conformance SuggestionOverrideDialog.OverrideDialogCallback(uint64_t a1, uint64_t a2)
{
  v10 = *v3;

  v8 = *(v10 + 8);
  if (!v2)
  {
    v6 = a1;
    v7 = a2;
  }

  return v8(v6, v7);
}

uint64_t protocol witness for CATDialogProvider.sectionIdentifier.getter in conformance SuggestionOverrideDialog.OverrideDialogCallback(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SuggestionOverrideDialog.OverrideDialogCallback and conformance SuggestionOverrideDialog.OverrideDialogCallback();

  return DialogIdProvider.sectionIdentifier.getter(a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SuggestionOverrideDialog.OverrideDialogCallback(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SuggestionOverrideDialog.OverrideDialogCallback and conformance SuggestionOverrideDialog.OverrideDialogCallback();

  return DialogProvider.description.getter(a1, v2);
}

void *SuggestionOverrideDialog.deinit()
{

  return v0;
}

uint64_t SuggestionOverrideDialog.__deallocating_deinit()
{

  return _swift_deallocClassInstance(v0, 129, 7);
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy32SiriInformationSuggestionsPlugin0E10SuggestionO_SDySS0dF3Kit19ResolvableParameterCGtGMd, &_ss23_ContiguousArrayStorageCy32SiriInformationSuggestionsPlugin0E10SuggestionO_SDySS0dF3Kit19ResolvableParameterCGtGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriInformationSuggestionsPlugin0B10SuggestionO_SDySS0aC3Kit19ResolvableParameterCGtMd, &_s32SiriInformationSuggestionsPlugin0B10SuggestionO_SDySS0aC3Kit19ResolvableParameterCGtMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SStGMd, &_ss23_ContiguousArrayStorageCySS_SStGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SStMd, &_sSS_SStMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS32SiriInformationSuggestionsPlugin0D10SuggestionO_SDySS0cE3Kit19ResolvableParameterCGtGMd, &_ss18_DictionaryStorageCySS32SiriInformationSuggestionsPlugin0D10SuggestionO_SDySS0cE3Kit19ResolvableParameterCGtGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(v2 + 56) + v17;
        v22 = *v21;
        v23 = *(v21 + 8);
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = *(v4 + 56) + v17;
        *v25 = v22;
        *(v25 + 8) = v23;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSDySS32SiriInformationSuggestionsPlugin0D10SuggestionO_SDySS0cE3Kit19ResolvableParameterCGtGGMd, &_ss18_DictionaryStorageCySSSDySS32SiriInformationSuggestionsPlugin0D10SuggestionO_SDySS0cE3Kit19ResolvableParameterCGtGGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy32SiriInformationSuggestionsPlugin0D10SuggestionOSDySS0cE3Kit19ResolvableParameterCGGMd, &_ss18_DictionaryStorageCy32SiriInformationSuggestionsPlugin0D10SuggestionOSDySS0cE3Kit19ResolvableParameterCGGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

Swift::Int specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS32SiriInformationSuggestionsPlugin0D10SuggestionO_SDySS0cE3Kit19ResolvableParameterCGtGMd, &_ss18_DictionaryStorageCySS32SiriInformationSuggestionsPlugin0D10SuggestionO_SDySS0cE3Kit19ResolvableParameterCGtGMR);
  v37 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(v5 + 56) + v22;
      v38 = *v26;
      v27 = *(v26 + 8);
      if ((v37 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = *(v7 + 56) + v16;
      *v18 = v38;
      *(v18 + 8) = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSDySS32SiriInformationSuggestionsPlugin0D10SuggestionO_SDySS0cE3Kit19ResolvableParameterCGtGGMd, &_ss18_DictionaryStorageCySSSDySS32SiriInformationSuggestionsPlugin0D10SuggestionO_SDySS0cE3Kit19ResolvableParameterCGtGGMR);
  v34 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
  v37 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy32SiriInformationSuggestionsPlugin0D10SuggestionOSDySS0cE3Kit19ResolvableParameterCGGMd, &_ss18_DictionaryStorageCy32SiriInformationSuggestionsPlugin0D10SuggestionOSDySS0cE3Kit19ResolvableParameterCGGMR);
  v33 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (!*(v5 + 16))
  {
LABEL_32:

    goto LABEL_33;
  }

  v8 = 0;
  v9 = (v5 + 64);
  v10 = 1 << *(v5 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v5 + 64);
  v13 = (v10 + 63) >> 6;
  v14 = v6 + 64;
  while (v12)
  {
    v21 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_15:
    v24 = v21 | (v8 << 6);
    v25 = *(*(v5 + 48) + v24);
    v26 = *(*(v5 + 56) + 8 * v24);
    if ((v33 & 1) == 0)
    {
    }

    Hasher.init(_seed:)();
    String.hash(into:)();

    v15 = Hasher._finalize()();
    v16 = -1 << *(v7 + 32);
    v17 = v15 & ~v16;
    v18 = v17 >> 6;
    v19 = (-1 << v17) & ~*(v14 + 8 * (v17 >> 6));
    if (v19)
    {
      v20 = __clz(__rbit64(v19)) | v17 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v27 = 0;
      v28 = (63 - v16) >> 6;
      do
      {
        if (++v18 == v28 && (v27 & 1) != 0)
        {
          goto LABEL_35;
        }

        v29 = v18 == v28;
        if (v18 == v28)
        {
          v18 = 0;
        }

        v27 |= v29;
        v30 = *(v14 + 8 * v18);
      }

      while (v30 == -1);
      v20 = __clz(__rbit64(~v30)) + (v18 << 6);
    }

    *(v14 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v7 + 48) + v20) = v25;
    *(*(v7 + 56) + 8 * v20) = v26;
    ++*(v7 + 16);
  }

  v22 = v8;
  while (1)
  {
    v8 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      __break(1u);
LABEL_35:
      __break(1u);
      JUMPOUT(0x160B0);
    }

    if (v8 >= v13)
    {
      break;
    }

    v23 = v9[v8];
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v12 = (v23 - 1) & v23;
      goto LABEL_15;
    }
  }

  if (v33)
  {
    v31 = 1 << *(v5 + 32);
    v3 = v2;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v31;
    }

    *(v5 + 16) = 0;
    goto LABEL_32;
  }

  v3 = v2;
LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a5 & 1);
      v13 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      specialized _NativeDictionary.copy()();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = v23[7] + 16 * v13;
    *v24 = a1;
    *(v24 + 8) = a2;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = (v23[6] + 16 * v13);
  *v26 = a3;
  v26[1] = a4;
  v27 = v23[7] + 16 * v13;
  *v27 = a1;
  *(v27 + 8) = a2;
  v28 = v23[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v29;
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = (&dword_0 + 1);
    while (v9)
    {
LABEL_14:
      v17 = *(a4 + 56) + ((v12 << 10) | (16 * __clz(__rbit64(v9))));
      v18 = *(v17 + 8);
      v9 &= v9 - 1;
      *v11 = *v17;
      *(v11 + 8) = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 16;

      result = v14;
      v19 = __OFADD__(v14, 1);
      v14 = (v14 + 1);
      if (v19)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SDySS32SiriInformationSuggestionsPlugin0D10SuggestionO_SDySS0cE3Kit19ResolvableParameterCGtGTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSDySS32SiriInformationSuggestionsPlugin0D10SuggestionO_SDySS0cE3Kit19ResolvableParameterCGtGGMd, &_ss18_DictionaryStorageCySSSDySS32SiriInformationSuggestionsPlugin0D10SuggestionO_SDySS0cE3Kit19ResolvableParameterCGtGGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_18SiriSuggestionsKit19ResolvableParameterCTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS18SiriSuggestionsKit19ResolvableParameterCGMd, &_ss18_DictionaryStorageCySS18SiriSuggestionsKit19ResolvableParameterCGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_32SiriInformationSuggestionsPlugin0D10SuggestionO_SDySS0cE3Kit19ResolvableParameterCGtTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS32SiriInformationSuggestionsPlugin0D10SuggestionO_SDySS0cE3Kit19ResolvableParameterCGtGMd, &_ss18_DictionaryStorageCySS32SiriInformationSuggestionsPlugin0D10SuggestionO_SDySS0cE3Kit19ResolvableParameterCGtGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 8);
      v8 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = v3[7] + 16 * result;
      *v12 = v7;
      *(v12 + 8) = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t specialized static InformationSuggestion.suggestionMatched(_:)(void *a1)
{
  v2 = [a1 domainUseCase];
  if (v2)
  {
    v3 = v2;
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    v7 = [a1 infoDomain];
    if (v7)
    {
      v8 = v7;
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;

      if (one-time initialization token for serverMappings != -1)
      {
        swift_once();
      }

      v12 = static InformationSuggestion.serverMappings;
      if (*(&dword_10 + static InformationSuggestion.serverMappings))
      {
        v13 = specialized __RawDictionaryStorage.find<A>(_:)(v9, v11);
        v15 = v14;

        if (v15)
        {
          v16 = *(*&stru_20.segname[v12 + 16] + 8 * v13);
          if (*(v16 + 16))
          {

            v17 = specialized __RawDictionaryStorage.find<A>(_:)(v4, v6);
            v19 = v18;

            if (v19)
            {
              v20 = *(*(v16 + 56) + 16 * v17);

              return v20;
            }
          }
        }
      }

      else
      {
      }
    }
  }

  return 25;
}

uint64_t specialized static InformationSuggestionsPluginOwnerDefinitionFactory.enabledLocales(for:)(char a1)
{
  v2 = InformationSuggestion.rawValue.getter(a1);
  v3 = v1;
  if (v2 == 0xD000000000000011 && 0x800000000001BF60 == v1)
  {
    goto LABEL_3;
  }

  v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v4)
  {
    goto LABEL_5;
  }

  if (v2 == 0xD000000000000017 && 0x800000000001BF80 == v3)
  {
LABEL_3:

LABEL_5:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation6LocaleVGMd, &_ss23_ContiguousArrayStorageCy10Foundation6LocaleVGMR);
    type metadata accessor for Locale();
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1AD90;
LABEL_6:
    Locale.init(identifier:)();
    return v5;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v7)
  {
    goto LABEL_5;
  }

  if (v2 == 0xD000000000000015 && 0x800000000001BFA0 == v3)
  {

LABEL_14:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation6LocaleVGMd, &_ss23_ContiguousArrayStorageCy10Foundation6LocaleVGMR);
    type metadata accessor for Locale();
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1B580;
    Locale.init(identifier:)();
    goto LABEL_6;
  }

  v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v8)
  {
    goto LABEL_14;
  }

  if (v2 == 0xD000000000000019 && 0x800000000001BE70 == v3)
  {

LABEL_19:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation6LocaleVGMd, &_ss23_ContiguousArrayStorageCy10Foundation6LocaleVGMR);
    type metadata accessor for Locale();
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1B600;
    Locale.init(identifier:)();
    Locale.init(identifier:)();
    Locale.init(identifier:)();
    Locale.init(identifier:)();
    Locale.init(identifier:)();
    Locale.init(identifier:)();
    Locale.init(identifier:)();
    Locale.init(identifier:)();
    Locale.init(identifier:)();
    Locale.init(identifier:)();
    Locale.init(identifier:)();
    Locale.init(identifier:)();
    Locale.init(identifier:)();
    Locale.init(identifier:)();
    Locale.init(identifier:)();
    Locale.init(identifier:)();
    Locale.init(identifier:)();
    Locale.init(identifier:)();
    Locale.init(identifier:)();
    Locale.init(identifier:)();
    Locale.init(identifier:)();
    Locale.init(identifier:)();
    Locale.init(identifier:)();
    Locale.init(identifier:)();
    Locale.init(identifier:)();
    Locale.init(identifier:)();
    Locale.init(identifier:)();
    Locale.init(identifier:)();
    goto LABEL_6;
  }

  v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v9)
  {
    goto LABEL_19;
  }

  return static SuggestionConstants.t41Locales.getter();
}

uint64_t sub_17240()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC32SiriInformationSuggestionsPlugin0D10SuggestionO_Say0cE3Kit6SignalCGTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy32SiriInformationSuggestionsPlugin0D10SuggestionOSay0cE3Kit6SignalCGGMd, &_ss18_DictionaryStorageCy32SiriInformationSuggestionsPlugin0D10SuggestionOSay0cE3Kit6SignalCGGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(unint64_t result, char a2, void *a3)
{
  v3 = *(result + 16);
  if (!v3)
  {
    return result;
  }

  LOBYTE(v5) = a2;
  v6 = result;
  v7 = *(result + 32);
  v8 = *(result + 40);
  v9 = *a3;

  result = specialized __RawDictionaryStorage.find<A>(_:)(v7);
  v11 = v9[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  LOBYTE(v15) = v10;
  if (v9[3] < v14)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, v5 & 1);
    result = specialized __RawDictionaryStorage.find<A>(_:)(v7);
    if ((v15 & 1) == (v16 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    v17 = *a3;
    if (v15)
    {
      goto LABEL_8;
    }

LABEL_11:
    v17[(result >> 6) + 8] |= 1 << result;
    *(v17[6] + result) = v7;
    *(v17[7] + 8 * result) = v8;
    v21 = v17[2];
    v13 = __OFADD__(v21, 1);
    v22 = v21 + 1;
    if (v13)
    {
LABEL_24:
      __break(1u);
      return result;
    }

    v17[2] = v22;
    v15 = v3 - 1;
    if (v3 != 1)
    {
      goto LABEL_14;
    }

    return result;
  }

  v20 = result;
  specialized _NativeDictionary.copy()();
  result = v20;
  v17 = *a3;
  if ((v15 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v18 = *(v17[7] + 8 * result);
  v19 = result;

  *(v17[7] + 8 * v19) = v18;

  v15 = v3 - 1;
  if (v3 != 1)
  {
LABEL_14:
    v5 = (v6 + 56);
    v3 = 1;
    while (1)
    {
      v8 = *(v5 - 8);
      v6 = *v5;
      v25 = *a3;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v8);
      v27 = v25[2];
      v28 = (v26 & 1) == 0;
      v13 = __OFADD__(v27, v28);
      v29 = v27 + v28;
      if (v13)
      {
        goto LABEL_23;
      }

      LOBYTE(v7) = v26;
      if (v25[3] < v29)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v29, 1);
        result = specialized __RawDictionaryStorage.find<A>(_:)(v8);
        if ((v7 & 1) != (v30 & 1))
        {
          goto LABEL_5;
        }
      }

      v31 = *a3;
      if (v7)
      {
        v23 = *(v31[7] + 8 * result);
        v24 = result;

        *(v31[7] + 8 * v24) = v23;
      }

      else
      {
        v31[(result >> 6) + 8] |= 1 << result;
        *(v31[6] + result) = v8;
        *(v31[7] + 8 * result) = v6;
        v32 = v31[2];
        v13 = __OFADD__(v32, 1);
        v33 = v32 + 1;
        if (v13)
        {
          goto LABEL_24;
        }

        v31[2] = v33;
      }

      v5 += 2;
      if (!--v15)
      {
        return result;
      }
    }
  }

  return result;
}

{
  v3 = *(result + 16);
  if (!v3)
  {
    return result;
  }

  LOBYTE(i) = a2;
  v6 = result;
  v8 = *(result + 32);
  v7 = *(result + 40);
  v9 = *(result + 56);
  v39 = *(result + 48);
  v10 = *a3;

  result = specialized __RawDictionaryStorage.find<A>(_:)(v8, v7);
  v12 = v10[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  LOBYTE(v16) = v11;
  if (v10[3] < v15)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v15, i & 1);
    result = specialized __RawDictionaryStorage.find<A>(_:)(v8, v7);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (i)
  {
LABEL_7:
    v18 = *a3;
    if (v16)
    {
      goto LABEL_8;
    }

LABEL_11:
    v18[(result >> 6) + 8] |= 1 << result;
    v22 = (v18[6] + 16 * result);
    *v22 = v8;
    v22[1] = v7;
    v23 = (v18[7] + 16 * result);
    *v23 = v39;
    v23[1] = v9;
    v24 = v18[2];
    v14 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (v14)
    {
LABEL_24:
      __break(1u);
      return result;
    }

    v18[2] = v25;
    v16 = v3 - 1;
    if (v3 != 1)
    {
      goto LABEL_14;
    }

    return result;
  }

  v21 = result;
  specialized _NativeDictionary.copy()();
  result = v21;
  v18 = *a3;
  if ((v16 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v19 = result;

  v20 = (v18[7] + 16 * v19);
  *v20 = v39;
  v20[1] = v9;

  v16 = v3 - 1;
  if (v3 != 1)
  {
LABEL_14:
    for (i = (v6 + 88); ; i += 4)
    {
      v7 = *(i - 3);
      v9 = *(i - 2);
      v3 = *(i - 1);
      v6 = *i;
      v28 = *a3;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v7, v9);
      v30 = v28[2];
      v31 = (v29 & 1) == 0;
      v14 = __OFADD__(v30, v31);
      v32 = v30 + v31;
      if (v14)
      {
        break;
      }

      v8 = v29;
      if (v28[3] < v32)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v32, 1);
        result = specialized __RawDictionaryStorage.find<A>(_:)(v7, v9);
        if ((v8 & 1) != (v33 & 1))
        {
          goto LABEL_5;
        }
      }

      v34 = *a3;
      if (v8)
      {
        v26 = result;

        v27 = (v34[7] + 16 * v26);
        *v27 = v3;
        v27[1] = v6;
      }

      else
      {
        v34[(result >> 6) + 8] |= 1 << result;
        v35 = (v34[6] + 16 * result);
        *v35 = v7;
        v35[1] = v9;
        v36 = (v34[7] + 16 * result);
        *v36 = v3;
        v36[1] = v6;
        v37 = v34[2];
        v14 = __OFADD__(v37, 1);
        v38 = v37 + 1;
        if (v14)
        {
          goto LABEL_24;
        }

        v34[2] = v38;
      }

      if (!--v16)
      {
        return result;
      }
    }

    goto LABEL_23;
  }

  return result;
}