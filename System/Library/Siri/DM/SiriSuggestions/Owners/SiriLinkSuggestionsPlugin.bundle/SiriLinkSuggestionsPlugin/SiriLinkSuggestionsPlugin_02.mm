uint64_t closure #2 in static AppIntentsSuggestionsOwnerDefinitionFactory.createIntentParameter()@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for Intent();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v26 - v9;
  v11 = *(v5 + 16);
  v27 = a1;
  v11(&v26 - v9, a1, v4);
  v12 = *(v5 + 88);
  if (v12(v10, v4) == enum case for Intent.appIntentV2(_:))
  {
    (*(v5 + 96))(v10, v4);
    v13 = *v10;

    a2[3] = type metadata accessor for LNAction();
    *a2 = v13;
    v14 = enum case for IntentParameter.context(_:);
    v15 = type metadata accessor for IntentParameter();
    return (*(*(v15 - 8) + 104))(a2, v14, v15);
  }

  else
  {
    v26 = a2;
    v17 = v10;
    v18 = *(v5 + 8);
    v18(v17, v4);
    v11(v8, v27, v4);
    if (v12(v8, v4) == enum case for Intent.appIntent(_:))
    {
      (*(v5 + 96))(v8, v4);
      v19 = *v8;

      v20 = type metadata accessor for LNAction();
      v21 = v26;
      v26[3] = v20;
      *v21 = v19;
      v22 = enum case for IntentParameter.context(_:);
      v23 = type metadata accessor for IntentParameter();
      return (*(*(v23 - 8) + 104))(v21, v22, v23);
    }

    else
    {
      v18(v8, v4);
      v24 = enum case for IntentParameter.ignore(_:);
      v25 = type metadata accessor for IntentParameter();
      return (*(*(v25 - 8) + 104))(v26, v24, v25);
    }
  }
}

uint64_t static AppIntentsSuggestionsOwnerDefinitionFactory.createOwnerDefinitions(builderFactory:)(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = OUTLINED_FUNCTION_4_2();
  return _swift_task_switch(v4, v5, v6);
}

uint64_t static AppIntentsSuggestionsOwnerDefinitionFactory.createOwnerDefinitions(builderFactory:)()
{
  OUTLINED_FUNCTION_15_0();
  if (one-time initialization token for appIntentsOwner != -1)
  {
    OUTLINED_FUNCTION_1_4(&one-time initialization token for appIntentsOwner);
  }

  v1 = v0[7];
  v2 = static LinkSuggestionsOwners.appIntentsOwner;
  v0[5] = type metadata accessor for DefaultOwner();
  OUTLINED_FUNCTION_0_8();
  v0[6] = _s25SiriLinkSuggestionsPlugin32MetaDataSourcedAppIntentResolverCAC0aC3Kit0J0AAWlTm_0(v3, v4, &protocol conformance descriptor for DefaultOwner);
  v0[2] = v2;

  v7 = (v1 + *v1);
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = static AppIntentsSuggestionsOwnerDefinitionFactory.createOwnerDefinitions(builderFactory:);

  return v7(v0 + 2);
}

{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_13();
  v1 = v0;
  *(v0 + 88) = v2;

  __swift_destroy_boxed_opaque_existential_1((v1 + 16));
  v3 = OUTLINED_FUNCTION_4_2();

  return _swift_task_switch(v3, v4, v5);
}

{
  refreshed = dispatch thunk of SuggestionOwnerDefinitionBuilder.getRefreshService()();
  v3 = v2;
  v0[12] = refreshed;
  v4 = [objc_allocWithZone(LNMetadataProvider) init];
  v5 = [objc_allocWithZone(LNSuggestionsProvider) init];
  type metadata accessor for LinkRegistryObserver();
  OUTLINED_FUNCTION_21_1();
  swift_allocObject();
  v6 = swift_unknownObjectRetain();
  v7 = LinkRegistryObserver.init(refreshableService:)(v6, v3);
  type metadata accessor for DefaultLinkClient();
  swift_allocObject();
  v8 = DefaultLinkClient.init(metadataProvider:suggestionsProvider:registryObserver:)(v4, v5, v7);
  v0[13] = v8;
  type metadata accessor for DefaultToolClient();
  swift_allocObject();
  v9 = DefaultToolClient.init()();
  v0[14] = v9;

  v10 = swift_task_alloc();
  v0[15] = v10;
  *v10 = v0;
  v10[1] = static AppIntentsSuggestionsOwnerDefinitionFactory.createOwnerDefinitions(builderFactory:);
  v11 = v0[11];
  v12 = v0[9];

  return specialized static AppIntentsSuggestionsOwnerDefinitionFactory.createAppIntentSuggestions(linkClient:toolClient:builder:)(v8, v9, v11, v12);
}

{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_13();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;
  *(v4 + 128) = v3;

  v5 = OUTLINED_FUNCTION_4_2();

  return _swift_task_switch(v5, v6, v7);
}

{
  OUTLINED_FUNCTION_15_0();

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_13_4();
  v2 = *(v0 + 128);

  return v1(v2);
}

void DialogProperties.appIntentAction.getter(_OWORD *a3@<X8>)
{
  v4 = dispatch thunk of DialogProperties.getParameters()();
  specialized Dictionary.subscript.getter(0xD000000000000010, 0x8000000000042970, v4, &v14);

  if (v15)
  {
    swift_dynamicCast();
    *&v5 = OUTLINED_FUNCTION_18_2();
    if (v9)
    {
      v5 = v10;
      v6 = v11;
      v7 = v12;
      v8 = v13;
    }
  }

  else
  {
    outlined destroy of CoreSignalTypes?(&v14, &_sypSgMd, &_sypSgMR);
    *&v5 = OUTLINED_FUNCTION_18_2();
  }

  *a3 = v5;
  a3[1] = v6;
  a3[2] = v7;
  a3[3] = v8;
}

uint64_t protocol witness for static OwnerDefinitionFactory.createOwnerDefinitions(builderFactory:) in conformance AppIntentsSuggestionsOwnerDefinitionFactory(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = static AppIntentsSuggestionsOwnerDefinitionFactory.createAppIntentSuggestions(linkClient:toolClient:builder:);

  return static AppIntentsSuggestionsOwnerDefinitionFactory.createOwnerDefinitions(builderFactory:)(a1, a2);
}

void *Context.getAppIntentDetails()(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for appIntentsOwner != -1)
  {
    OUTLINED_FUNCTION_1_4(&one-time initialization token for appIntentsOwner);
  }

  v2 = static LinkSuggestionsOwners.appIntentsOwner;
  v3 = type metadata accessor for DefaultOwner();
  v10[3] = v3;
  OUTLINED_FUNCTION_0_8();
  v6 = _s25SiriLinkSuggestionsPlugin32MetaDataSourcedAppIntentResolverCAC0aC3Kit0J0AAWlTm_0(v4, v5, &protocol conformance descriptor for DefaultOwner);
  v10[4] = v6;
  v10[0] = v2;
  __swift_project_boxed_opaque_existential_1(v10, v3);
  v9[3] = v3;
  v9[4] = *(v6 + 8);
  __swift_allocate_boxed_opaque_existential_1(v9);
  OUTLINED_FUNCTION_15();
  (*(v7 + 16))();

  Context.getParam(for:key:)();
  __swift_destroy_boxed_opaque_existential_1(v9);
  __swift_destroy_boxed_opaque_existential_1(v10);
  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay25SiriLinkSuggestionsPlugin16AppIntentDetailsVGMd, &_sSay25SiriLinkSuggestionsPlugin16AppIntentDetailsVGMR);
    if (swift_dynamicCast())
    {
      return v10[0];
    }
  }

  else
  {
    outlined destroy of CoreSignalTypes?(v11, &_sypSgMd, &_sypSgMR);
  }

  return _swiftEmptyArrayStorage;
}

Swift::Void __swiftcall Context.setAppIntentDetails(_:)(Swift::OpaquePointer a1)
{
  if (one-time initialization token for appIntentsOwner != -1)
  {
    OUTLINED_FUNCTION_1_4(&one-time initialization token for appIntentsOwner);
  }

  v2 = static LinkSuggestionsOwners.appIntentsOwner;
  v3 = type metadata accessor for DefaultOwner();
  v10[3] = v3;
  OUTLINED_FUNCTION_0_8();
  v6 = _s25SiriLinkSuggestionsPlugin32MetaDataSourcedAppIntentResolverCAC0aC3Kit0J0AAWlTm_0(v4, v5, &protocol conformance descriptor for DefaultOwner);
  v10[4] = v6;
  v10[0] = v2;
  __swift_project_boxed_opaque_existential_1(v10, v3);
  v9[3] = v3;
  v9[4] = *(v6 + 8);
  __swift_allocate_boxed_opaque_existential_1(v9);
  OUTLINED_FUNCTION_15();
  (*(v7 + 16))();
  v8[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay25SiriLinkSuggestionsPlugin16AppIntentDetailsVGMd, &_sSay25SiriLinkSuggestionsPlugin16AppIntentDetailsVGMR);
  v8[0] = a1._rawValue;

  Context.setParam(for:key:value:)();
  __swift_destroy_boxed_opaque_existential_1(v8);
  __swift_destroy_boxed_opaque_existential_1(v9);
  __swift_destroy_boxed_opaque_existential_1(v10);
}

void *specialized Dictionary.subscript.getter(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 16 * a2);
    v6 = *(*(a5 + 56) + 8 * a2);
    *result = v6;

    v7 = v6;
    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t specialized static AppIntentsSuggestionsOwnerDefinitionFactory.createAppIntentSuggestions(linkClient:toolClient:builder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a3;
  v4[15] = a4;
  v4[12] = a1;
  v4[13] = a2;
  return _swift_task_switch(specialized static AppIntentsSuggestionsOwnerDefinitionFactory.createAppIntentSuggestions(linkClient:toolClient:builder:), 0, 0);
}

uint64_t specialized static AppIntentsSuggestionsOwnerDefinitionFactory.createAppIntentSuggestions(linkClient:toolClient:builder:)()
{
  OUTLINED_FUNCTION_15_0();
  v1 = *(v0 + 96);
  *(v0 + 40) = type metadata accessor for DefaultLinkClient();
  *(v0 + 48) = &protocol witness table for DefaultLinkClient;
  *(v0 + 16) = v1;
  _s25SiriLinkSuggestionsPlugin0B6Client_pWOcTm_0(v0 + 16, v0 + 56);
  type metadata accessor for AppIntentsDialogProvider();
  v2 = swift_allocObject();
  *(v0 + 128) = v2;
  outlined init with take of LinkClient((v0 + 56), v2 + 16);

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  OUTLINED_FUNCTION_6_4(&async function pointer to specialized static AppIntentsSuggestionsOwnerDefinitionFactory.createAppIntentSuggestions(linkClient:toolClient:builder:dialogProvider:));
  v10 = v3;
  v4 = swift_task_alloc();
  *(v0 + 136) = v4;
  *v4 = v0;
  v4[1] = specialized static AppIntentsSuggestionsOwnerDefinitionFactory.createAppIntentSuggestions(linkClient:toolClient:builder:);
  v5 = *(v0 + 112);
  v6 = *(v0 + 120);
  v8 = *(v0 + 96);
  v7 = *(v0 + 104);

  return v10(v8, v7, v5, v2, v6);
}

{
  OUTLINED_FUNCTION_8();
  v2 = v1;
  OUTLINED_FUNCTION_13();
  v3 = *v0;
  OUTLINED_FUNCTION_7();
  *v4 = v3;

  OUTLINED_FUNCTION_13_4();

  return v5(v2);
}

uint64_t specialized static AppIntentsSuggestionsOwnerDefinitionFactory.createAppIntentSuggestions(linkClient:toolClient:builder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a7;
  v8[7] = a8;
  v8[4] = a5;
  v8[5] = a6;
  v8[2] = a3;
  v8[3] = a4;
  OUTLINED_FUNCTION_3_3();
  v12 = v11;
  v8[8] = v11;
  v13 = swift_task_alloc();
  v8[9] = v13;
  OUTLINED_FUNCTION_3_3();
  v15 = v14;
  v8[10] = v14;
  v8[11] = swift_task_alloc();
  (*(v15 + 16))();
  (*(v12 + 16))(v13, a2, a6);
  v16 = OUTLINED_FUNCTION_4_2();

  return _swift_task_switch(v16, v17, v18);
}

void specialized static AppIntentsSuggestionsOwnerDefinitionFactory.createAppIntentSuggestions(linkClient:toolClient:builder:)()
{
  OUTLINED_FUNCTION_8();
  v0[12] = specialized static AppIntentsSuggestionsOwnerDefinitionFactory.getDialogProvider(linkClient:)(v0[11], v0[3], v0[4], v0[6]);
  OUTLINED_FUNCTION_6_4(&async function pointer to specialized static AppIntentsSuggestionsOwnerDefinitionFactory.createAppIntentSuggestions(linkClient:toolClient:builder:dialogProvider:));
  v4 = v1;
  v2 = swift_task_alloc();
  v0[13] = v2;
  *v2 = v0;
  v2[1] = specialized static AppIntentsSuggestionsOwnerDefinitionFactory.createAppIntentSuggestions(linkClient:toolClient:builder:);

  __asm { BR              X8 }
}

uint64_t specialized static AppIntentsSuggestionsOwnerDefinitionFactory.createAppIntentSuggestions(linkClient:toolClient:builder:)(uint64_t a1)
{
  OUTLINED_FUNCTION_13();
  v4 = v3[11];
  v5 = v3[10];
  v6 = v3[9];
  v7 = v3[8];
  v8 = v3[5];
  v9 = v3[4];
  v10 = *v1;
  OUTLINED_FUNCTION_7();
  *v11 = v10;

  (*(v5 + 8))(v4, v9);
  (*(v7 + 8))(v6, v8);

  OUTLINED_FUNCTION_13_4();

  return v12(a1);
}

uint64_t specialized static AppIntentsSuggestionsOwnerDefinitionFactory.getDialogProvider(linkClient:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[3] = a3;
  v10[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);
  _s25SiriLinkSuggestionsPlugin0B6Client_pWOcTm_0(v10, v9);
  type metadata accessor for AppIntentsDialogProvider();
  v7 = swift_allocObject();
  outlined init with take of LinkClient(v9, v7 + 16);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v7;
}

uint64_t specialized static AppIntentsSuggestionsOwnerDefinitionFactory.createAppIntentSuggestions(linkClient:toolClient:builder:dialogProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[23] = a4;
  v5[24] = a5;
  v5[22] = a3;
  v8 = type metadata accessor for DialogDetails();
  v5[25] = v8;
  v5[26] = *(v8 - 8);
  v5[27] = swift_task_alloc();
  v5[5] = type metadata accessor for DefaultLinkClient();
  v5[6] = &protocol witness table for DefaultLinkClient;
  v5[2] = a1;
  v5[10] = type metadata accessor for DefaultToolClient();
  v5[11] = &protocol witness table for DefaultToolClient;
  v5[7] = a2;

  return _swift_task_switch(specialized static AppIntentsSuggestionsOwnerDefinitionFactory.createAppIntentSuggestions(linkClient:toolClient:builder:dialogProvider:), 0, 0);
}

void specialized static AppIntentsSuggestionsOwnerDefinitionFactory.createAppIntentSuggestions(linkClient:toolClient:builder:dialogProvider:)()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_11_3();
  OUTLINED_FUNCTION_21_1();
  v8 = swift_allocObject();
  *(v8 + 16) = v1;
  *(v8 + 24) = v7;
  *v0 = &async function pointer to partial apply for closure #1 in static AppIntentsSuggestionsOwnerDefinitionFactory.createAppIntentSuggestions(linkClient:toolClient:builder:dialogProvider:);
  v0[1] = v8;
  v9 = OUTLINED_FUNCTION_22_1();
  v10(v9);
  v11 = swift_task_alloc();
  OUTLINED_FUNCTION_24_1(v11);
  OUTLINED_FUNCTION_10_1();

  (*(v6 + 8))(v0, v5);
  _s25SiriLinkSuggestionsPlugin0B6Client_pWOcTm_0(v3, v2 + 136);
  v12 = type metadata accessor for OnRequestAppIntents();
  v13 = swift_allocObject();
  outlined init with take of LinkClient((v2 + 136), v13 + 16);
  *(v2 + 120) = v12;
  OUTLINED_FUNCTION_4_4();
  v16 = _s25SiriLinkSuggestionsPlugin32MetaDataSourcedAppIntentResolverCAC0aC3Kit0J0AAWlTm_0(v14, v15, &protocol conformance descriptor for OnRequestAppIntents);
  OUTLINED_FUNCTION_25_1(v16);

  __swift_destroy_boxed_opaque_existential_1(v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy18SiriSuggestionsKit15OwnerDefinition_pGMd, &_ss23_ContiguousArrayStorageCy18SiriSuggestionsKit15OwnerDefinition_pGMR);
  *(swift_allocObject() + 16) = xmmword_3EFC0;
  dispatch thunk of SuggestionOwnerDefinitionBuilder.build()();
  __swift_destroy_boxed_opaque_existential_1(v3);
  __swift_destroy_boxed_opaque_existential_1(v4);

  OUTLINED_FUNCTION_13_4();
  OUTLINED_FUNCTION_45();

  __asm { BRAA            X2, X16 }
}

{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_11_3();
  OUTLINED_FUNCTION_21_1();
  v8 = swift_allocObject();
  *(v8 + 16) = v1;
  *(v8 + 24) = v7;
  *v0 = &closure #1 in static AppIntentsSuggestionsOwnerDefinitionFactory.createAppIntentSuggestions(linkClient:toolClient:builder:dialogProvider:)partial apply;
  v0[1] = v8;
  v9 = OUTLINED_FUNCTION_22_1();
  v10(v9);
  v11 = swift_task_alloc();
  OUTLINED_FUNCTION_24_1(v11);
  OUTLINED_FUNCTION_10_1();

  (*(v6 + 8))(v0, v5);
  _s25SiriLinkSuggestionsPlugin0B6Client_pWOcTm_0(v3, v2 + 136);
  v12 = type metadata accessor for OnRequestAppIntents();
  v13 = swift_allocObject();
  outlined init with take of LinkClient((v2 + 136), v13 + 16);
  *(v2 + 120) = v12;
  OUTLINED_FUNCTION_4_4();
  v16 = _s25SiriLinkSuggestionsPlugin32MetaDataSourcedAppIntentResolverCAC0aC3Kit0J0AAWlTm_0(v14, v15, &protocol conformance descriptor for OnRequestAppIntents);
  OUTLINED_FUNCTION_25_1(v16);

  __swift_destroy_boxed_opaque_existential_1(v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy18SiriSuggestionsKit15OwnerDefinition_pGMd, &_ss23_ContiguousArrayStorageCy18SiriSuggestionsKit15OwnerDefinition_pGMR);
  *(swift_allocObject() + 16) = xmmword_3EFC0;
  dispatch thunk of SuggestionOwnerDefinitionBuilder.build()();
  __swift_destroy_boxed_opaque_existential_1(v3);
  __swift_destroy_boxed_opaque_existential_1(v4);

  OUTLINED_FUNCTION_13_4();
  OUTLINED_FUNCTION_45();

  __asm { BRAA            X2, X16 }
}

uint64_t specialized static AppIntentsSuggestionsOwnerDefinitionFactory.createAppIntentSuggestions(linkClient:toolClient:builder:dialogProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[23] = a4;
  v8[24] = a5;
  v8[22] = a3;
  v14 = type metadata accessor for DialogDetails();
  v8[25] = v14;
  v8[26] = *(v14 - 8);
  v8[27] = swift_task_alloc();
  v8[5] = a6;
  v8[6] = a8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v8 + 2);
  (*(*(a6 - 8) + 16))(boxed_opaque_existential_1, a1, a6);
  v8[10] = a7;
  v8[11] = v19;
  v16 = __swift_allocate_boxed_opaque_existential_1(v8 + 7);
  (*(*(a7 - 8) + 16))(v16, a2, a7);

  return _swift_task_switch(specialized static AppIntentsSuggestionsOwnerDefinitionFactory.createAppIntentSuggestions(linkClient:toolClient:builder:dialogProvider:), 0, 0);
}

uint64_t sub_27908()
{

  OUTLINED_FUNCTION_21_1();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t partial apply for closure #1 in static AppIntentsSuggestionsOwnerDefinitionFactory.createAppIntentSuggestions(linkClient:toolClient:builder:dialogProvider:)()
{
  OUTLINED_FUNCTION_15_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_19_4(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_12_3(v1);

  return closure #1 in static AppIntentsSuggestionsOwnerDefinitionFactory.createAppIntentSuggestions(linkClient:toolClient:builder:dialogProvider:)(v3, v4, v5, v6);
}

uint64_t _s25SiriLinkSuggestionsPlugin32MetaDataSourcedAppIntentResolverCAC0aC3Kit0J0AAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined init with copy of SiriHelpSuggestionDetailsBuilderExtension & SuggestionDetailsBuilder(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t type metadata accessor for LNAction()
{
  result = lazy cache variable for type metadata for LNAction;
  if (!lazy cache variable for type metadata for LNAction)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for LNAction);
  }

  return result;
}

uint64_t closure #1 in static AppIntentsSuggestionsOwnerDefinitionFactory.createAppIntentSuggestions(linkClient:toolClient:builder:dialogProvider:)partial apply()
{
  OUTLINED_FUNCTION_15_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_19_4(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_12_3(v1);

  return closure #1 in static AppIntentsSuggestionsOwnerDefinitionFactory.createAppIntentSuggestions(linkClient:toolClient:builder:dialogProvider:)(v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_13();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t OUTLINED_FUNCTION_1_4(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_10_1()
{

  return dispatch thunk of SuggestionOwnerDefinitionBuilder.add(suggestionId:dialogDetails:builder:)(0xD000000000000013, v2 | 0x8000000000000000, v1, v0, v3);
}

uint64_t OUTLINED_FUNCTION_24_1(void *a1)
{
  a1[2] = v3;
  a1[3] = v1;
  a1[4] = v2;
}

uint64_t OUTLINED_FUNCTION_25_1(uint64_t a1)
{
  *(v1 + 128) = a1;
  *(v1 + 96) = v2;

  return dispatch thunk of SuggestionOwnerDefinitionBuilder.withConfiguratorProvider(_:)(v1 + 96);
}

uint64_t static DefaultLinkDialogIdProvider.canDialog(action:)(uint64_t a1)
{
  if (one-time initialization token for supportedSystemProtocols != -1)
  {
    OUTLINED_FUNCTION_0_9(&one-time initialization token for supportedSystemProtocols);
  }

  v2 = *(a1 + 32);
  if (specialized Set.contains(_:)(v2, static DefaultLinkDialogIdProvider.supportedSystemProtocols))
  {
    if (static DefaultLinkDialogIdProvider.validDialogParameters(for:)(a1))
    {
      return 1;
    }

    if (one-time initialization token for linkSuggestions != -1)
    {
      OUTLINED_FUNCTION_1_0(&one-time initialization token for linkSuggestions);
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logger.linkSuggestions);
    outlined init with copy of LinkSuggestedAction(a1, v28);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    outlined destroy of LinkSuggestedAction(a1);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v28[0] = v18;
      *v17 = 136315394;
      v19 = [v2 identifier];
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, v28);

      *(v17 + 4) = v23;
      *(v17 + 12) = 2080;
      LinkSuggestedAction.rawDialogParmaters.getter();
      v24 = Dictionary.description.getter();
      v26 = v25;

      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, v28);

      *(v17 + 14) = v27;
      _os_log_impl(&dword_0, v15, v16, "Invalid dialog parameters in canDialog for protocol: %s, parameters: %s", v17, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_11(v18);
      OUTLINED_FUNCTION_11(v17);
    }
  }

  else
  {
    if (one-time initialization token for linkSuggestions != -1)
    {
      OUTLINED_FUNCTION_1_0(&one-time initialization token for linkSuggestions);
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Logger.linkSuggestions);
    outlined init with copy of LinkSuggestedAction(a1, v28);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    outlined destroy of LinkSuggestedAction(a1);
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v28[0] = v8;
      *v7 = 136315138;
      v9 = [v2 identifier];
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v12, v28);

      *(v7 + 4) = v13;
      _os_log_impl(&dword_0, v5, v6, "Unknown system protocol in canDialog: %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      OUTLINED_FUNCTION_11(v8);
      OUTLINED_FUNCTION_11(v7);
    }
  }

  return 0;
}

BOOL specialized Set.contains(_:)(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = __CocoaSet.contains(_:)();

    return v4 & 1;
  }

  else
  {
    if (!*(a2 + 16))
    {
      return 0;
    }

    type metadata accessor for LNSystemProtocol();
    v6 = NSObject._rawHashValue(seed:)(*(a2 + 40));
    v7 = ~(-1 << *(a2 + 32));
    do
    {
      v8 = v6 & v7;
      v9 = (1 << (v6 & v7)) & *(a2 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
      v10 = v9 != 0;
      if (!v9)
      {
        break;
      }

      v11 = *(*(a2 + 48) + 8 * v8);
      v12 = static NSObject.== infix(_:_:)();

      v6 = v8 + 1;
    }

    while ((v12 & 1) == 0);
    return v10;
  }
}

BOOL specialized Set.contains(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = ~(-1 << *(a3 + 32));
  do
  {
    v8 = v6 & v7;
    v9 = (1 << (v6 & v7)) & *(a3 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
    v10 = v9 != 0;
    if (!v9)
    {
      break;
    }

    v11 = (*(a3 + 48) + 16 * v8);
    if (*v11 == a1 && v11[1] == a2)
    {
      break;
    }

    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v6 = v8 + 1;
  }

  while ((v13 & 1) == 0);
  return v10;
}

uint64_t DialogDetails.templateIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t DialogDetails.sectionIdentifier.getter()
{
  if (*(v0 + 24))
  {
    return 0x7470697263736564;
  }

  else
  {
    return 0x6974736567677573;
  }
}

Swift::String __swiftcall DialogType.getSectionId()()
{
  v1 = (v0 & 1) == 0;
  if (v0)
  {
    v2 = 0x7470697263736564;
  }

  else
  {
    v2 = 0x6974736567677573;
  }

  if (v1)
  {
    v3 = 0xEA00000000006E6FLL;
  }

  else
  {
    v3 = 0xEB000000006E6F69;
  }

  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

uint64_t DialogDetails.templateLocation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DialogDetails(0) + 28);
  type metadata accessor for URL();
  OUTLINED_FUNCTION_1_5();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t DialogDetails.init(dialogId:dialogParams:dialogType:templateLocation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4 & 1;
  v8 = *(type metadata accessor for DialogDetails(0) + 28);
  type metadata accessor for URL();
  OUTLINED_FUNCTION_1_5();
  v10 = *(v9 + 32);

  return v10(a6 + v8, a5);
}

uint64_t protocol witness for CATDialogProvider.isSpeakable.getter in conformance DialogDetails(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DialogDetails and conformance DialogDetails(&lazy protocol witness table cache variable for type DialogDetails and conformance DialogDetails, &protocol conformance descriptor for DialogDetails);

  return DialogIdProvider.isSpeakable.getter(a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance DialogDetails(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DialogDetails and conformance DialogDetails(&lazy protocol witness table cache variable for type DialogDetails and conformance DialogDetails, &protocol conformance descriptor for DialogDetails);

  return DialogProvider.description.getter(a1, v2);
}

void one-time initialization function for supportedSystemProtocols()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_40AB0;
  v1 = objc_opt_self();
  *(inited + 32) = [v1 openEntitySystemProtocol];
  *(inited + 40) = [v1 cancelProtocol];
  *(inited + 48) = [v1 createEntitySystemProtocol];
  *(inited + 56) = [v1 searchSystemProtocol];
  *(inited + 64) = [v1 closeEntityProtocol];
  *(inited + 72) = [v1 navigateSequentiallyProtocol];
  *(inited + 80) = [v1 changeBinarySettingSystemProtocol];
  _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo16LNSystemProtocolC_SayAEGTt0g5(inited);
  static DefaultLinkDialogIdProvider.supportedSystemProtocols = v2;
}

uint64_t *DefaultLinkDialogIdProvider.supportedSystemProtocols.unsafeMutableAddressor()
{
  if (one-time initialization token for supportedSystemProtocols != -1)
  {
    OUTLINED_FUNCTION_0_9(&one-time initialization token for supportedSystemProtocols);
  }

  return &static DefaultLinkDialogIdProvider.supportedSystemProtocols;
}

uint64_t static DefaultLinkDialogIdProvider.supportedSystemProtocols.getter()
{
  if (one-time initialization token for supportedSystemProtocols != -1)
  {
    OUTLINED_FUNCTION_0_9(&one-time initialization token for supportedSystemProtocols);
  }
}

uint64_t DefaultLinkDialogIdProvider.__allocating_init(templateDir:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = OBJC_IVAR____TtC25SiriLinkSuggestionsPlugin27DefaultLinkDialogIdProvider_templateDir;
  type metadata accessor for URL();
  OUTLINED_FUNCTION_1_5();
  (*(v4 + 32))(v2 + v3, a1);
  return v2;
}

uint64_t DefaultLinkDialogIdProvider.init(templateDir:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC25SiriLinkSuggestionsPlugin27DefaultLinkDialogIdProvider_templateDir;
  type metadata accessor for URL();
  OUTLINED_FUNCTION_1_5();
  (*(v4 + 32))(v1 + v3, a1);
  return v1;
}

uint64_t static DefaultLinkDialogIdProvider.validDialogParameters(for:)(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_opt_self();
  v4 = [v3 openEntitySystemProtocol];
  type metadata accessor for LNSystemProtocol();
  v5 = static NSObject.== infix(_:_:)();

  if (v5)
  {
    return 1;
  }

  v6 = [v3 cancelProtocol];
  v7 = static NSObject.== infix(_:_:)();

  if (v7)
  {
    return 1;
  }

  v9 = [v3 createEntitySystemProtocol];
  v10 = static NSObject.== infix(_:_:)();

  v11 = &LNSuggestedActionDialogParameterKeyEntityType;
  if (v10)
  {
LABEL_5:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo35LNSuggestedActionDialogParameterKeyaGMd, &_ss23_ContiguousArrayStorageCySo35LNSuggestedActionDialogParameterKeyaGMR);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_3EFC0;
    v13 = *v11;
    *(v12 + 32) = *v11;
    v14 = v13;
    v15 = 32;
    while (v15 != 40)
    {
      if (*(*(a1 + 40) + 16))
      {
        v16 = *(v12 + v15);
        specialized __RawDictionaryStorage.find<A>(_:)();
        v18 = v17;

        v15 += 8;
        if (v18)
        {
          continue;
        }
      }

      return 0;
    }

    return 1;
  }

  v19 = [v3 searchSystemProtocol];
  v20 = static NSObject.== infix(_:_:)();

  if (v20)
  {
    return 1;
  }

  v21 = [v3 closeEntityProtocol];
  v22 = static NSObject.== infix(_:_:)();

  if (v22)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo35LNSuggestedActionDialogParameterKeyaGMd, &_ss23_ContiguousArrayStorageCySo35LNSuggestedActionDialogParameterKeyaGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_40AC0;
    v24 = LNSuggestedActionDialogParameterKeyEntityType;
    v25 = LNSuggestedActionDialogParameterKeyEntityName;
    *(inited + 32) = LNSuggestedActionDialogParameterKeyEntityType;
    *(inited + 40) = v25;
    v26 = v24;
    v27 = v25;
    for (i = 32; ; i += 8)
    {
      if (i == 48)
      {
        swift_setDeallocating();
        specialized _ContiguousArrayStorage.__deallocating_deinit();
        return 0;
      }

      if (*(*(a1 + 40) + 16))
      {
        v29 = *(inited + i);
        specialized __RawDictionaryStorage.find<A>(_:)();
        v31 = v30;

        if (v31)
        {
          break;
        }
      }
    }

    swift_setDeallocating();
    specialized _ContiguousArrayStorage.__deallocating_deinit();
    return 1;
  }

  v32 = [v3 navigateSequentiallyProtocol];
  v33 = static NSObject.== infix(_:_:)();

  if (v33)
  {
    return 1;
  }

  v34 = [v3 changeBinarySettingSystemProtocol];
  v35 = static NSObject.== infix(_:_:)();

  if (v35)
  {
    v11 = &LNSuggestedActionDialogParameterKeyEntityName;
    goto LABEL_5;
  }

  if (one-time initialization token for linkSuggestions != -1)
  {
    swift_once();
  }

  v36 = type metadata accessor for Logger();
  __swift_project_value_buffer(v36, static Logger.linkSuggestions);
  outlined init with copy of LinkSuggestedAction(a1, v46);
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.error.getter();
  outlined destroy of LinkSuggestedAction(a1);
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v46[0] = v40;
    *v39 = 136315138;
    v41 = [v2 identifier];
    v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = v43;

    v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v44, v46);

    *(v39 + 4) = v45;
    _os_log_impl(&dword_0, v37, v38, "Unknown system protocol in validDialogParameters: %s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v40);
  }

  return 0;
}

uint64_t DefaultLinkDialogIdProvider.getDialogId(linkAction:dialogType:)@<X0>(uint64_t *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v7 = DefaultLinkDialogIdProvider.dialogId(for:)(a1);
  if (v8)
  {
    v9 = v7;
    v10 = v8;
    v11 = DefaultLinkDialogIdProvider.extractDialogParam(linkAction:)(a1);
    v12 = OBJC_IVAR____TtC25SiriLinkSuggestionsPlugin27DefaultLinkDialogIdProvider_templateDir;
    v13 = type metadata accessor for DialogDetails(0);
    v14 = *(v13 + 28);
    type metadata accessor for URL();
    OUTLINED_FUNCTION_1_5();
    (*(v15 + 16))(a3 + v14, v3 + v12);
    *a3 = v9;
    *(a3 + 8) = v10;
    *(a3 + 16) = v11;
    *(a3 + 24) = a2 & 1;
    v16 = a3;
    v17 = 0;
    v18 = v13;
  }

  else
  {
    v18 = type metadata accessor for DialogDetails(0);
    v16 = a3;
    v17 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v16, v17, 1, v18);
}

unint64_t DefaultLinkDialogIdProvider.dialogId(for:)(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_opt_self();
  v4 = [v3 openEntitySystemProtocol];
  type metadata accessor for LNSystemProtocol();
  v5 = static NSObject.== infix(_:_:)();

  if (v5)
  {
    return 0xD000000000000010;
  }

  v7 = [v3 cancelProtocol];
  v8 = static NSObject.== infix(_:_:)();

  if (v8)
  {
    return 0xD000000000000012;
  }

  v9 = [v3 createEntitySystemProtocol];
  v10 = static NSObject.== infix(_:_:)();

  if (v10)
  {
    return 0xD000000000000012;
  }

  v11 = [v3 searchSystemProtocol];
  v12 = static NSObject.== infix(_:_:)();

  if (v12)
  {
    return 0xD000000000000012;
  }

  v14 = [v3 closeEntityProtocol];
  v15 = static NSObject.== infix(_:_:)();

  if (v15)
  {
    return 0xD000000000000011;
  }

  v16 = [v3 navigateSequentiallyProtocol];
  v17 = static NSObject.== infix(_:_:)();

  if (v17)
  {
    v18 = LinkSuggestedAction.rawDialogParmaters.getter();
    v19 = specialized Dictionary.subscript.getter(0x6F69746365726964, 0xE90000000000006ELL, v18);
    v21 = v20;

    v22 = DefaultLinkDialogIdProvider.navigateSequentiallyDialogId(for:)(v19, v21);
LABEL_16:
    v6 = v22;

    return v6;
  }

  v23 = [v3 changeBinarySettingSystemProtocol];
  v24 = static NSObject.== infix(_:_:)();

  if (v24)
  {
    v25 = LinkSuggestedAction.rawDialogParmaters.getter();
    v26 = specialized Dictionary.subscript.getter(0x704F65676E616863, 0xEF6E6F6974617265, v25);
    v28 = v27;

    v22 = DefaultLinkDialogIdProvider.changeBinarySettingDialogId(for:)(v26, v28);
    goto LABEL_16;
  }

  if (one-time initialization token for linkSuggestions != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  __swift_project_value_buffer(v29, static Logger.linkSuggestions);
  outlined init with copy of LinkSuggestedAction(a1, v39);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.error.getter();
  outlined destroy of LinkSuggestedAction(a1);
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v39[0] = v33;
    *v32 = 136315138;
    v34 = [v2 identifier];
    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;

    v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v37, v39);

    *(v32 + 4) = v38;
    _os_log_impl(&dword_0, v30, v31, "Unknown system protocol in dialogId: %s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v33);
  }

  return 0;
}

uint64_t DefaultLinkDialogIdProvider.extractDialogParam(linkAction:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(a1 + 16);
  v4 = *(a1 + 17);

  v5 = static SAAppInfoFactory.createAppInfo(appIdentifier:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, "*1");
  inited = swift_initStackObject();
  v7 = inited;
  *(inited + 16) = xmmword_3FB80;
  *(inited + 32) = 0xD000000000000013;
  *(inited + 40) = 0x8000000000042A70;
  *(inited + 48) = v1;
  *(inited + 56) = v2;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x656D614E707061;
  *(inited + 88) = 0xE700000000000000;
  if (!v5)
  {
    v10 = (inited + 96);
    *(inited + 120) = &type metadata for String;
    goto LABEL_5;
  }

  v8 = outlined bridged method (ob) of @objc SAAppInfo.displayAppName.getter(v5);
  v10 = (v7 + 96);
  *(v7 + 120) = &type metadata for String;
  if (!v9)
  {
LABEL_5:
    *v10 = 0;
    v9 = 0xE000000000000000;
    goto LABEL_6;
  }

  *v10 = v8;
LABEL_6:
  *(v7 + 104) = v9;
  *(v7 + 128) = 0xD000000000000013;
  *(v7 + 136) = 0x8000000000042A90;
  *(v7 + 168) = &type metadata for Bool;
  *(v7 + 144) = ((v3 | v4) & 1) == 0;
  v11 = Dictionary.init(dictionaryLiteral:)();
  v12 = LinkSuggestedAction.rawDialogParmaters.getter();
  v13 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v12);

  v14 = specialized Dictionary.merging(_:uniquingKeysWith:)(v13, v11);

  return v14;
}

uint64_t specialized Dictionary.merging(_:uniquingKeysWith:)(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(a1, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

unint64_t DefaultLinkDialogIdProvider.navigateSequentiallyDialogId(for:)(uint64_t a1, uint64_t a2)
{
  v4 = 0xD000000000000010;
  if (a2)
  {
    v5 = a1 == 1954047342 && a2 == 0xE400000000000000;
    if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      return v4;
    }

    v6 = a1 == 0x73756F6976657270 && a2 == 0xE800000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      return 0xD000000000000014;
    }
  }

  if (one-time initialization token for linkSuggestions != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.linkSuggestions);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136315138;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v12 = String.init<A>(describing:)();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v17);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_0, v8, v9, "Unknown direction in navigateSequentiallyDialogId: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  inited = swift_initStackObject();
  *(inited + 32) = 0xD000000000000010;
  *(inited + 40) = 0x8000000000042B50;
  *(inited + 16) = xmmword_40AC0;
  *(inited + 48) = 0xD000000000000014;
  *(inited + 56) = 0x8000000000042B70;
  v4 = specialized Collection.randomElement<A>(using:)(inited, inited);
  swift_setDeallocating();
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  return v4;
}

unint64_t DefaultLinkDialogIdProvider.changeBinarySettingDialogId(for:)(uint64_t a1, uint64_t a2)
{
  v4 = 0xD000000000000012;
  if (!a2)
  {
    goto LABEL_20;
  }

  v5 = a1 == 0x656C62616E65 && a2 == 0xE600000000000000;
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v6 = a1 == 0x656C6261736964 && a2 == 0xE700000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      return 0xD000000000000013;
    }

    v7 = a1 == 0x656C67676F74 && a2 == 0xE600000000000000;
    if (!v7 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
LABEL_20:
      if (one-time initialization token for linkSuggestions != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      __swift_project_value_buffer(v8, static Logger.linkSuggestions);

      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v18 = v12;
        *v11 = 136315138;

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
        v13 = String.init<A>(describing:)();
        v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v18);

        *(v11 + 4) = v15;
        _os_log_impl(&dword_0, v9, v10, "Unknown changeOperation in changeBinarySettingDialogId: %s", v11, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v12);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_3FB80;
      *(inited + 32) = 0xD000000000000012;
      *(inited + 40) = 0x8000000000042B90;
      *(inited + 48) = 0xD000000000000013;
      *(inited + 56) = 0x8000000000042BB0;
      *(inited + 64) = 0xD000000000000012;
      *(inited + 72) = 0x8000000000042BD0;
      v4 = specialized Collection.randomElement<A>(using:)(inited, inited);
      swift_setDeallocating();
      specialized _ContiguousArrayStorage.__deallocating_deinit();
    }
  }

  return v4;
}

uint64_t DefaultLinkDialogIdProvider.deinit()
{
  v1 = OBJC_IVAR____TtC25SiriLinkSuggestionsPlugin27DefaultLinkDialogIdProvider_templateDir;
  type metadata accessor for URL();
  OUTLINED_FUNCTION_1_5();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t DefaultLinkDialogIdProvider.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC25SiriLinkSuggestionsPlugin27DefaultLinkDialogIdProvider_templateDir;
  type metadata accessor for URL();
  OUTLINED_FUNCTION_1_5();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t specialized _ContiguousArrayStorage.__deallocating_deinit()
{
  type metadata accessor for LNSuggestedActionDialogParameterKey(0);
  swift_arrayDestroy();

  return _swift_deallocClassInstance(v0, 32, 7);
}

{
  swift_arrayDestroy();

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t lazy protocol witness table accessor for type DialogDetails and conformance DialogDetails(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DialogDetails(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DialogType and conformance DialogType()
{
  result = lazy protocol witness table cache variable for type DialogType and conformance DialogType;
  if (!lazy protocol witness table cache variable for type DialogType and conformance DialogType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DialogType and conformance DialogType);
  }

  return result;
}

uint64_t sub_29CD0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for URL();
    v9 = a1 + *(a3 + 28);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_29D6C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for URL();
    v8 = v5 + *(a4 + 28);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for DialogDetails(uint64_t a1)
{
  type metadata accessor for [String : Any]();
  if (v1 <= 0x3F)
  {
    type metadata accessor for URL();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

_BYTE *storeEnumTagSinglePayload for DialogType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
        JUMPOUT(0x29FB8);
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t type metadata accessor for DialogDetails(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for DefaultLinkDialogIdProvider(uint64_t a1)
{
  result = type metadata accessor for URL();
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

uint64_t specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  specialized LazyMapSequence.makeIterator()(a1, a2, a3, v33);
  v29 = v33[0];
  v30 = v33[1];
  v31 = v33[2];
  v32 = v34;

  while (1)
  {
    specialized LazyMapSequence.Iterator.next()(&v27);
    v7 = *(&v27 + 1);
    if (!*(&v27 + 1))
    {
      outlined consume of [String : Any].Iterator._Variant(v29);
    }

    v8 = v27;
    outlined init with take of Any(&v28, v26);
    v9 = *a5;
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(v8, v7);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    if (__OFADD__(v12, v13))
    {
      break;
    }

    v14 = v10;
    if (v9[3] >= v12 + v13)
    {
      if (a4)
      {
        if (v10)
        {
          goto LABEL_10;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSypGMd, "01");
        _NativeDictionary.copy()();
        if (v14)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)();
      v15 = specialized __RawDictionaryStorage.find<A>(_:)(v8, v7);
      if ((v14 & 1) != (v16 & 1))
      {
        goto LABEL_18;
      }

      v11 = v15;
      if (v14)
      {
LABEL_10:
        v17 = *a5;
        outlined init with copy of Any(v26, v25);
        __swift_destroy_boxed_opaque_existential_1(v26);

        v18 = (v17[7] + 32 * v11);
        __swift_destroy_boxed_opaque_existential_1(v18);
        outlined init with take of Any(v25, v18);
        goto LABEL_14;
      }
    }

    v19 = *a5;
    *(*a5 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v20 = (v19[6] + 16 * v11);
    *v20 = v8;
    v20[1] = v7;
    outlined init with take of Any(v26, (v19[7] + 32 * v11));
    v21 = v19[2];
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (v22)
    {
      goto LABEL_17;
    }

    v19[2] = v23;
LABEL_14:
    a4 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t specialized closure #1 in Dictionary.merge(_:uniquingKeysWith:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  outlined init with copy of Any(a4, a1);

  return a2;
}

uint64_t specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized closure #1 in Dictionary.merge(_:uniquingKeysWith:)((a2 + 2), *a1, a1[1], (a1 + 2));
  *a2 = result;
  a2[1] = v4;
  return result;
}

unint64_t specialized Collection.randomElement<A>(using:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  result = specialized RandomNumberGenerator.next<A>(upperBound:)(*(a2 + 16));
  if (result < v2)
  {
    v5 = *(a2 + 16 * result + 32);

    return v5;
  }

  __break(1u);
  return result;
}

unint64_t specialized RandomNumberGenerator.next<A>(upperBound:)(unint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_stdlib_random();
    result = (0 * v1) >> 64;
    if (-v1 % v1)
    {
      while (1)
      {
        swift_stdlib_random();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t outlined bridged method (ob) of @objc SAAppInfo.displayAppName.getter(void *a1)
{
  v2 = [a1 displayAppName];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t specialized LazyMapSequence.makeIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

uint64_t specialized LazyMapSequence.Iterator.next()@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_7:
    v9 = (v7 - 1) & v7;
    v10 = __clz(__rbit64(v7)) | (v8 << 6);
    v11 = (*(v3 + 48) + 16 * v10);
    v13 = *v11;
    v12 = v11[1];
    outlined init with copy of Any(*(v3 + 56) + 32 * v10, v18);
    *&v19 = v13;
    *(&v19 + 1) = v12;
    outlined init with take of Any(v18, &v20);

    v15 = *(&v19 + 1);
    v16 = v19;
LABEL_8:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v5;
    v1[3] = v6;
    v1[4] = v9;
    if (v15)
    {
      v17 = v1[5];
      *&v18[0] = v16;
      *(&v18[0] + 1) = v15;
      v18[1] = v20;
      v18[2] = v21;
      v17(v18);
      return outlined destroy of (key: String, value: Any)(v18);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    while (1)
    {
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v8 >= ((v5 + 64) >> 6))
      {
        v15 = 0;
        v16 = 0;
        v9 = 0;
        v20 = 0u;
        v21 = 0u;
        v19 = 0u;
        goto LABEL_8;
      }

      v7 = *(v4 + 8 * v8);
      ++v6;
      if (v7)
      {
        v6 = v8;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t outlined destroy of (key: String, value: Any)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_yp5valuetMd, "41");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t type metadata accessor for LNSystemProtocol()
{
  result = lazy cache variable for type metadata for LNSystemProtocol;
  if (!lazy cache variable for type metadata for LNSystemProtocol)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for LNSystemProtocol);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_9(uint64_t a1)
{

  return swift_once();
}

uint64_t AppIntentsDialogProvider.__allocating_init(linkClient:)(__int128 *a1)
{
  OUTLINED_FUNCTION_4_5();
  v2 = swift_allocObject();
  outlined init with take of LinkClient(a1, v2 + 16);
  return v2;
}

uint64_t AppIntentDialogCallback.getText(dialogProperties:siriLocale:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  DialogProperties.appIntentAction.getter(v7);
  if (*(&v7[0] + 1))
  {
    v1 = v8;

    outlined destroy of SuggestionAppIntent?(v7);
  }

  else
  {
    if (one-time initialization token for appIntentsSuggestions != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Logger.appIntentsSuggestions);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_0, v3, v4, "Unable to find appIntentAction parameter", v5, 2u);
    }

    return 0;
  }

  return v1;
}

uint64_t AppIntentsDialogProvider.getSpokenDialogCallback(context:)@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = &type metadata for AppIntentDialogCallback;
  a1[4] = lazy protocol witness table accessor for type AppIntentDialogCallback and conformance AppIntentDialogCallback();
  v3 = swift_allocObject();
  *a1 = v3;

  return outlined init with copy of AppIntentDialogCallback(v1 + 16, v3 + 16);
}

double AppIntentsDialogProvider.getDescriptionCallback(context:)@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t AppIntentsDialogProvider.__deallocating_deinit()
{
  outlined destroy of AppIntentDialogCallback(v0 + 16);
  v1 = OUTLINED_FUNCTION_4_5();

  return _swift_deallocClassInstance(v1, v2, v3);
}

uint64_t AppIntentDialogCallback.getText(dialog:dialogProperties:environment:viewContext:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a3;
  v4[4] = v3;
  v4[2] = a2;
  v5 = type metadata accessor for Locale();
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();

  return _swift_task_switch(AppIntentDialogCallback.getText(dialog:dialogProperties:environment:viewContext:), 0, 0);
}

uint64_t AppIntentDialogCallback.getText(dialog:dialogProperties:environment:viewContext:)()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  v4 = *(v0 + 16);
  __swift_project_boxed_opaque_existential_1(*(v0 + 24), *(*(v0 + 24) + 24));
  dispatch thunk of EnvironmentSnapshot.siriLocale.getter();
  v5 = AppIntentDialogCallback.getText(dialogProperties:siriLocale:)(v4);
  v7 = v6;
  (*(v2 + 8))(v1, v3);

  v8 = *(v0 + 8);

  return v8(v5, v7);
}

uint64_t protocol witness for DialogCallback.getText(dialog:dialogProperties:environment:) in conformance AppIntentDialogCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = protocol witness for DialogCallback.getText(dialog:dialogProperties:environment:) in conformance AppIntentDialogCallback;

  return DialogCallback.getText(dialog:dialogProperties:environment:)(a1, a2, a3, a4, a5);
}

uint64_t protocol witness for DialogCallback.getText(dialog:dialogProperties:environment:viewContext:) in conformance AppIntentDialogCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = protocol witness for DialogCallback.getText(dialog:dialogProperties:environment:viewContext:) in conformance AppIntentDialogCallback;

  return AppIntentDialogCallback.getText(dialog:dialogProperties:environment:viewContext:)(v6, a2, a3);
}

uint64_t protocol witness for DialogCallback.getText(dialog:dialogProperties:environment:viewContext:) in conformance AppIntentDialogCallback(uint64_t a1, uint64_t a2)
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

void *LNAction.getNonNilParameterSet()()
{
  v14 = &_swiftEmptySetSingleton;
  v1 = [v0 parameters];
  type metadata accessor for NSTextCheckingResult(0, &lazy cache variable for type metadata for LNProperty, LNProperty_ptr);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  result = specialized Array.count.getter();
  if (result)
  {
    v4 = result;
    if (result < 1)
    {
      __break(1u);
    }

    else
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v6 = *(v2 + 8 * i + 32);
        }

        v7 = v6;
        v8 = [v6 value];
        if (v8)
        {

          v9 = [v7 identifier];
          v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v12 = v11;

          specialized Set._Variant.insert(_:)(v13, v10, v12);
        }

        else
        {
        }
      }

      return v14;
    }
  }

  else
  {

    return &_swiftEmptySetSingleton;
  }

  return result;
}

uint64_t outlined destroy of SuggestionAppIntent?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s25SiriLinkSuggestionsPlugin19SuggestionAppIntentVSgMd, &_s25SiriLinkSuggestionsPlugin19SuggestionAppIntentVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type AppIntentDialogCallback and conformance AppIntentDialogCallback()
{
  result = lazy protocol witness table cache variable for type AppIntentDialogCallback and conformance AppIntentDialogCallback;
  if (!lazy protocol witness table cache variable for type AppIntentDialogCallback and conformance AppIntentDialogCallback)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppIntentDialogCallback and conformance AppIntentDialogCallback);
  }

  return result;
}

uint64_t sub_2B0D4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = OUTLINED_FUNCTION_4_5();

  return _swift_deallocObject(v1, v2, v3);
}

Swift::Int _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfCSo16LNSystemProtocolC_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo16LNSystemProtocolCGMd, " 0");
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    while (1)
    {
      if (!__CocoaSet.Iterator.next()())
      {

        return v2;
      }

      type metadata accessor for NSTextCheckingResult(0, &lazy cache variable for type metadata for LNSystemProtocol, LNSystemProtocol_ptr);
      swift_dynamicCast();
      v3 = *(v2 + 16);
      if (*(v2 + 24) <= v3)
      {
        specialized _NativeSet.resize(capacity:)(v3 + 1);
      }

      v2 = v15;
      result = NSObject._rawHashValue(seed:)(*(v15 + 40));
      v5 = v15 + 56;
      v6 = -1 << *(v15 + 32);
      v7 = result & ~v6;
      v8 = v7 >> 6;
      if (((-1 << v7) & ~*(v15 + 56 + 8 * (v7 >> 6))) == 0)
      {
        break;
      }

      v9 = __clz(__rbit64((-1 << v7) & ~*(v15 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
      *(*(v15 + 48) + 8 * v9) = v14;
      ++*(v15 + 16);
    }

    v10 = 0;
    v11 = (63 - v6) >> 6;
    while (++v8 != v11 || (v10 & 1) == 0)
    {
      v12 = v8 == v11;
      if (v8 == v11)
      {
        v8 = 0;
      }

      v10 |= v12;
      v13 = *(v5 + 8 * v8);
      if (v13 != -1)
      {
        v9 = __clz(__rbit64(~v13)) + (v8 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return result;
}

void specialized _NativeSet.resize(capacity:)()
{
  OUTLINED_FUNCTION_6_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy25SiriLinkSuggestionsPlugin0D23SuggestedActionsRequestVGMd, &_ss11_SetStorageCy25SiriLinkSuggestionsPlugin0D23SuggestedActionsRequestVGMR);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  if (!*(v1 + 16))
  {
LABEL_24:

    *v0 = v4;
    return;
  }

  v26 = v0;
  v28 = v1;
  v5 = 0;
  v6 = (v1 + 56);
  OUTLINED_FUNCTION_0_10();
  if (!v3)
  {
LABEL_4:
    v12 = v5;
    while (1)
    {
      v5 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_26;
      }

      if (v5 >= v2)
      {
        break;
      }

      ++v12;
      if (v6[v5])
      {
        OUTLINED_FUNCTION_12_0();
        v3 = v14 & v13;
        goto LABEL_9;
      }
    }

    v25 = 1 << *(v1 + 32);
    if (v25 >= 64)
    {
      specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v25 + 63) >> 6, v1 + 56);
    }

    else
    {
      *v6 = -1 << v25;
    }

    v0 = v26;
    *(v1 + 16) = 0;
    goto LABEL_24;
  }

  while (1)
  {
    OUTLINED_FUNCTION_9_4();
LABEL_9:
    v15 = (*(v1 + 48) + (v10 | (v5 << 6)) * v11);
    v16 = *v15;
    v17 = v15[1];
    OUTLINED_FUNCTION_7_2(v7, v8, v9, v26);
    String.hash(into:)();
    Hasher._finalize()();
    OUTLINED_FUNCTION_2_3();
    if (v18)
    {
      break;
    }

    OUTLINED_FUNCTION_6_1();
LABEL_18:
    OUTLINED_FUNCTION_1_6(v19);
    *v24 = v16;
    v24[1] = v17;
    OUTLINED_FUNCTION_3_4(v24, v27, v28, *v29, v29[4]);
    if (!v3)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_5_1();
  while (++v20 != v22 || (v21 & 1) == 0)
  {
    v23 = v20 == v22;
    if (v20 == v22)
    {
      v20 = 0;
    }

    v21 |= v23;
    if (v0[v20] != -1)
    {
      OUTLINED_FUNCTION_4_1();
      goto LABEL_18;
    }
  }

LABEL_26:
  __break(1u);
}

Swift::Int specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v28 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 16 * (v13 | (v6 << 6)));
    v17 = *v16;
    v18 = v16[1];
    Hasher.init(_seed:)();
    String.hash(into:)();
    result = Hasher._finalize()();
    v19 = -1 << *(v5 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v5 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v12 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo16LNSystemProtocolCGMd, " 0");
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v25 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v25;
    }

    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
    result = NSObject._rawHashValue(seed:)(*(v5 + 40));
    v17 = -1 << *(v5 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      break;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v5 + 48) + 8 * v20) = v16;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v21 = 0;
  v22 = (63 - v17) >> 6;
  while (++v19 != v22 || (v21 & 1) == 0)
  {
    v23 = v19 == v22;
    if (v19 == v22)
    {
      v19 = 0;
    }

    v21 |= v23;
    v24 = *(v12 + 8 * v19);
    if (v24 != -1)
    {
      v20 = __clz(__rbit64(~v24)) + (v19 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

unint64_t specialized _NativeSet._unsafeInsertNew(_:)(uint64_t a1, void *a2)
{
  NSObject._rawHashValue(seed:)(a2[5]);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

void *specialized _NativeSet.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy25SiriLinkSuggestionsPlugin0D23SuggestedActionsRequestVGMd, &_ss11_SetStorageCy25SiriLinkSuggestionsPlugin0D23SuggestedActionsRequestVGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v18 = 3 * (v14 | (v8 << 6));
        v19 = *(v2 + 48) + 8 * v18;
        v21 = *v19;
        v20 = *(v19 + 8);
        v22 = *(v19 + 16);
        LOBYTE(v19) = *(v19 + 17);
        v23 = *(v4 + 48) + 8 * v18;
        *v23 = v21;
        *(v23 + 8) = v20;
        *(v23 + 16) = v22;
        *(v23 + 17) = v19;
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

      ++v15;
      if (*(v2 + 56 + 8 * v8))
      {
        OUTLINED_FUNCTION_12_0();
        v12 = v17 & v16;
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

id specialized _NativeSet.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo16LNSystemProtocolCGMd, " 0");
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void specialized _NativeSet.copyAndResize(capacity:)()
{
  OUTLINED_FUNCTION_6_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy25SiriLinkSuggestionsPlugin0D23SuggestedActionsRequestVGMd, &_ss11_SetStorageCy25SiriLinkSuggestionsPlugin0D23SuggestedActionsRequestVGMR);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  if (*(v1 + 16))
  {
    v24 = v0;
    v26 = v1;
    v5 = 0;
    OUTLINED_FUNCTION_0_10();
    if (v3)
    {
      while (1)
      {
        OUTLINED_FUNCTION_9_4();
LABEL_9:
        v14 = (*(v1 + 48) + (v9 | (v5 << 6)) * v10);
        v15 = *v14;
        v16 = v14[1];
        OUTLINED_FUNCTION_7_2(v6, v7, v8, v24);

        String.hash(into:)();
        Hasher._finalize()();
        OUTLINED_FUNCTION_2_3();
        if (v17)
        {
          break;
        }

        OUTLINED_FUNCTION_6_1();
LABEL_18:
        OUTLINED_FUNCTION_1_6(v18);
        *v23 = v15;
        v23[1] = v16;
        OUTLINED_FUNCTION_3_4(v23, v25, v26, *v27, v27[4]);
        if (!v3)
        {
          goto LABEL_4;
        }
      }

      OUTLINED_FUNCTION_5_1();
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        if (v0[v19] != -1)
        {
          OUTLINED_FUNCTION_4_1();
          goto LABEL_18;
        }
      }
    }

    else
    {
LABEL_4:
      v11 = v5;
      while (1)
      {
        v5 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v5 >= v2)
        {

          v0 = v24;
          goto LABEL_22;
        }

        ++v11;
        if (*(v1 + 56 + 8 * v5))
        {
          OUTLINED_FUNCTION_12_0();
          v3 = v13 & v12;
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_22:
    *v0 = v4;
  }
}

Swift::Int specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = (*(v3 + 48) + 16 * (v12 | (v6 << 6)));
        v16 = *v15;
        v17 = v15[1];
        Hasher.init(_seed:)();

        String.hash(into:)();
        result = Hasher._finalize()();
        v18 = -1 << *(v5 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        v26 = (*(v5 + 48) + 16 * v21);
        *v26 = v16;
        v26[1] = v17;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v11 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo16LNSystemProtocolCGMd, " 0");
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v25 = v1;
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = *(v5 + 40);
        v16 = *(*(v3 + 48) + 8 * (v12 | (v6 << 6)));
        result = NSObject._rawHashValue(seed:)(v15);
        v17 = -1 << *(v5 + 32);
        v18 = result & ~v17;
        v19 = v18 >> 6;
        if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
        {
          break;
        }

        v20 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
        *(*(v5 + 48) + 8 * v20) = v16;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v11 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v25;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

BOOL specialized Set._Variant.insert(_:)(unint64_t *a1, unint64_t a2, unint64_t a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v10 = v8 & v9;
    v11 = (1 << (v8 & v9)) & *(v7 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      break;
    }

    v12 = (*(v7 + 48) + 16 * v10);
    v13 = *v12 == a2 && v12[1] == a3;
    if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v14 = (*(v7 + 48) + 16 * v10);
      v15 = v14[1];
      *a1 = *v14;
      a1[1] = v15;

      return v11 == 0;
    }

    v8 = v10 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v3;

  specialized _NativeSet.insertNew(_:at:isUnique:)(a2, a3, v10, isUniquelyReferenced_nonNull_native);
  *v3 = v18;
  *a1 = a2;
  a1[1] = a3;
  return v11 == 0;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for AppIntentDialogCallback(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for AppIntentDialogCallback(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t specialized Set._Variant.insert(_:)(Swift::Int *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      type metadata accessor for NSTextCheckingResult(0, &lazy cache variable for type metadata for LNSystemProtocol, LNSystemProtocol_ptr);
      swift_dynamicCast();
      result = 0;
      *a1 = v22;
    }

    else
    {
      result = __CocoaSet.count.getter();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v16 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfCSo16LNSystemProtocolC_Tt1g5(v7, result + 1);
        v17 = v16[2];
        if (v16[3] <= v17)
        {
          specialized _NativeSet.resize(capacity:)(v17 + 1);
        }

        v18 = v8;
        specialized _NativeSet._unsafeInsertNew(_:)(v18, v16);

        *v3 = v16;
LABEL_16:
        *a1 = v18;
        return 1;
      }
    }
  }

  else
  {
    type metadata accessor for NSTextCheckingResult(0, &lazy cache variable for type metadata for LNSystemProtocol, LNSystemProtocol_ptr);
    v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
    v12 = ~(-1 << *(v6 + 32));
    while (1)
    {
      v13 = v11 & v12;
      if (((*(v6 + 56 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v11 & v12)) & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v23 = *v3;
        v18 = a2;
        specialized _NativeSet.insertNew(_:at:isUnique:)(v18, v13, isUniquelyReferenced_nonNull_native);
        *v3 = v23;
        goto LABEL_16;
      }

      v14 = *(*(v6 + 48) + 8 * v13);
      v15 = static NSObject.== infix(_:_:)();

      if (v15)
      {
        break;
      }

      v11 = v13 + 1;
    }

    v20 = *(*(v6 + 48) + 8 * v13);
    *a1 = v20;
    v21 = v20;
    return 0;
  }

  return result;
}

unint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(unint64_t result, unint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      specialized _NativeSet.resize(capacity:)(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      specialized _NativeSet.copyAndResize(capacity:)(v8 + 1);
LABEL_10:
      v15 = *v4;
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v16 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v16;
        if (((*(v15 + 56 + (((result & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v16)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v17 = (*(v15 + 48) + 16 * a3);
        v18 = *v17 == v7 && v17[1] == a2;
        if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = specialized _NativeSet.copy()();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

unint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(unint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      specialized _NativeSet.resize(capacity:)(v6 + 1);
      goto LABEL_8;
    }

    if (v7 <= v6)
    {
      specialized _NativeSet.copyAndResize(capacity:)(v6 + 1);
LABEL_8:
      v8 = *v3;
      result = NSObject._rawHashValue(seed:)(*(*v3 + 40));
      v9 = ~(-1 << *(v8 + 32));
      while (1)
      {
        a2 = result & v9;
        if (((*(v8 + 56 + (((result & v9) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v9)) & 1) == 0)
        {
          goto LABEL_12;
        }

        type metadata accessor for NSTextCheckingResult(0, &lazy cache variable for type metadata for LNSystemProtocol, LNSystemProtocol_ptr);
        v10 = *(*(v8 + 48) + 8 * a2);
        v11 = static NSObject.== infix(_:_:)();

        if (v11)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = specialized _NativeSet.copy()();
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v5;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
LABEL_15:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v12 + 16) = v15;
  }

  return result;
}

void OUTLINED_FUNCTION_3_4(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, int a4, char a5)
{
  *(a1 + 16) = v5;
  *(a1 + 17) = a5;
  ++*(v6 + 16);
}

void *OUTLINED_FUNCTION_7_2(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return Hasher.init(_seed:)();
}

uint64_t OnRequestAppIntents.getAppIntentsForSignal(_:)(uint64_t a1)
{
  v2 = type metadata accessor for CoreSignalTypes();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v36[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriSuggestionsKit15CoreSignalTypesOSg_ADtMd, "*$");
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v36[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriSuggestionsKit15CoreSignalTypesOSgMd, &_s18SiriSuggestionsKit15CoreSignalTypesOSgMR);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v36[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __chkstk_darwin(v11);
  v16 = &v36[-v15];
  __chkstk_darwin(v14);
  v18 = &v36[-v17];
  v38 = a1;
  Signal.signalType.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriSuggestionsKit10SignalType_pMd, ".$");
  v19 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v18, v19 ^ 1u, 1, v2);
  (*(v3 + 104))(v16, enum case for CoreSignalTypes.app(_:), v2);
  __swift_storeEnumTagSinglePayload(v16, 0, 1, v2);
  v20 = *(v7 + 56);
  outlined init with copy of CoreSignalTypes?(v18, v9);
  outlined init with copy of CoreSignalTypes?(v16, &v9[v20]);
  if (__swift_getEnumTagSinglePayload(v9, 1, v2) != 1)
  {
    outlined init with copy of CoreSignalTypes?(v9, v13);
    if (__swift_getEnumTagSinglePayload(&v9[v20], 1, v2) != 1)
    {
      (*(v3 + 32))(v5, &v9[v20], v2);
      _s18SiriSuggestionsKit6SignalCACSHAAWlTm_1(&lazy protocol witness table cache variable for type CoreSignalTypes and conformance CoreSignalTypes, 255, &type metadata accessor for CoreSignalTypes, &protocol conformance descriptor for CoreSignalTypes);
      v37 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *(v3 + 8);
      v22(v5, v2);
      outlined destroy of NSObject?(v16, &_s18SiriSuggestionsKit15CoreSignalTypesOSgMd, &_s18SiriSuggestionsKit15CoreSignalTypesOSgMR);
      v22(v13, v2);
      outlined destroy of NSObject?(v9, &_s18SiriSuggestionsKit15CoreSignalTypesOSgMd, &_s18SiriSuggestionsKit15CoreSignalTypesOSgMR);
      outlined destroy of NSObject?(v18, &_s18SiriSuggestionsKit15CoreSignalTypesOSgMd, &_s18SiriSuggestionsKit15CoreSignalTypesOSgMR);
      if (v37)
      {
        goto LABEL_9;
      }

      return 0;
    }

    outlined destroy of NSObject?(v16, &_s18SiriSuggestionsKit15CoreSignalTypesOSgMd, &_s18SiriSuggestionsKit15CoreSignalTypesOSgMR);
    (*(v3 + 8))(v13, v2);
LABEL_6:
    outlined destroy of NSObject?(v9, &_s18SiriSuggestionsKit15CoreSignalTypesOSg_ADtMd, "*$");
    outlined destroy of NSObject?(v18, &_s18SiriSuggestionsKit15CoreSignalTypesOSgMd, &_s18SiriSuggestionsKit15CoreSignalTypesOSgMR);
    return 0;
  }

  outlined destroy of NSObject?(v16, &_s18SiriSuggestionsKit15CoreSignalTypesOSgMd, &_s18SiriSuggestionsKit15CoreSignalTypesOSgMR);
  if (__swift_getEnumTagSinglePayload(&v9[v20], 1, v2) != 1)
  {
    goto LABEL_6;
  }

  outlined destroy of NSObject?(v9, &_s18SiriSuggestionsKit15CoreSignalTypesOSgMd, &_s18SiriSuggestionsKit15CoreSignalTypesOSgMR);
  outlined destroy of NSObject?(v18, &_s18SiriSuggestionsKit15CoreSignalTypesOSgMd, &_s18SiriSuggestionsKit15CoreSignalTypesOSgMR);
LABEL_9:
  v21 = v38;
  v23 = Signal.signalValue.getter();
  v25 = v24;
  if (one-time initialization token for appIntentsSuggestions != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  __swift_project_value_buffer(v26, static Logger.appIntentsSuggestions);

  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v39[0] = v30;
    *v29 = 136315138;
    *(v29 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, v39);
    _os_log_impl(&dword_0, v27, v28, "Getting app specific AppIntent suggestions for %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v30);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy18SiriSuggestionsKit31CandidateSuggestionConfigurator_pGMd, &_ss23_ContiguousArrayStorageCy18SiriSuggestionsKit31CandidateSuggestionConfigurator_pGMR);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_3EFC0;
  v32 = type metadata accessor for AppIntentCandidateSuggestionConfigurator();
  v33 = swift_allocObject();
  v33[4] = 0xD000000000000013;
  v33[5] = 0x80000000000421A0;
  v33[2] = v23;
  v33[3] = v25;
  *(v31 + 56) = v32;
  *(v31 + 64) = _s18SiriSuggestionsKit6SignalCACSHAAWlTm_1(&lazy protocol witness table cache variable for type AppIntentCandidateSuggestionConfigurator and conformance AppIntentCandidateSuggestionConfigurator, v34, type metadata accessor for AppIntentCandidateSuggestionConfigurator, &protocol conformance descriptor for AppIntentCandidateSuggestionConfigurator);
  *(v31 + 32) = v33;

  return v21;
}

void *AppIntentCandidateSuggestionConfigurator.__allocating_init(appBundleId:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  result[4] = 0xD000000000000013;
  result[5] = 0x80000000000421A0;
  result[2] = a1;
  result[3] = a2;
  return result;
}

void *OnRequestAppIntents.getConfigurators(for:)(uint64_t a1)
{
  if (one-time initialization token for appIntentsSuggestions != -1)
  {
LABEL_22:
    OUTLINED_FUNCTION_4_0(&one-time initialization token for appIntentsSuggestions);
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.appIntentsSuggestions);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v23 = v6;
    *v5 = 136315138;
    type metadata accessor for Signal();
    v7 = Array.description.getter();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v23);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_0, v3, v4, "Determining valid app intents for signals: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    OUTLINED_FUNCTION_11(v6);
    OUTLINED_FUNCTION_11(v5);
  }

  v10 = specialized Array.count.getter();
  v11 = 0;
  v22 = _swiftEmptyArrayStorage;
  while (v10 != v11)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v11 >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_21;
      }

      v12 = *(a1 + 8 * v11 + 32);
    }

    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    v14 = OnRequestAppIntents.getAppIntentsForSignal(_:)(v12);
    v16 = v15;

    ++v11;
    if (v14)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v22 = v19;
      }

      v17 = v22[2];
      if (v17 >= v22[3] >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v22 = v20;
      }

      v22[2] = v17 + 1;
      v18 = &v22[2 * v17];
      v18[4] = v14;
      v18[5] = v16;
      v11 = v13;
    }
  }

  return _sSD20uniqueKeysWithValuesSDyxq_Gqd__n_tcSTRd__x_q_t7ElementRtd__lufC18SiriSuggestionsKit6SignalC_SayAE31CandidateSuggestionConfigurator_pGSayAG_AItGTt0g5(v22);
}

uint64_t AppIntentCandidateSuggestionConfigurator.suggestionId.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

void *AppIntentCandidateSuggestionConfigurator.init(appBundleId:)(uint64_t a1, uint64_t a2)
{
  v2[4] = 0xD000000000000013;
  v2[5] = 0x80000000000421A0;
  v2[2] = a1;
  v2[3] = a2;
  return v2;
}

uint64_t AppIntentCandidateSuggestionConfigurator.updateContext(context:signal:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for Party();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = type metadata accessor for IntentType();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();

  return _swift_task_switch(AppIntentCandidateSuggestionConfigurator.updateContext(context:signal:), 0, 0);
}

uint64_t AppIntentCandidateSuggestionConfigurator.updateContext(context:signal:)()
{
  if (one-time initialization token for appIntentsSuggestions != -1)
  {
    OUTLINED_FUNCTION_4_0(&one-time initialization token for appIntentsSuggestions);
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.appIntentsSuggestions);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "Updating app intent context", v4, 2u);
    OUTLINED_FUNCTION_11(v4);
  }

  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[7];
  v8 = v0[2];
  v9 = v0[3];

  v0[10] = *v8;
  v10 = v8[1];
  v0[11] = v10;
  ObjectType = swift_getObjectType();
  v0[12] = ObjectType;
  static AppIntentFilter.builder()();
  v0[13] = *(v9 + 16);
  v0[14] = *(v9 + 24);
  dispatch thunk of AppIntentFilter.Builder.withAppId(_:)();

  dispatch thunk of AppIntentFilter.Builder.build()();

  (*(v6 + 104))(v5, enum case for IntentType.appIntent(_:), v7);
  v12 = swift_task_alloc();
  v0[15] = v12;
  *v12 = v0;
  v12[1] = AppIntentCandidateSuggestionConfigurator.updateContext(context:signal:);
  v13 = v0[9];

  return Context.setIntentType(_:)(v13, ObjectType, v10);
}

{
  OUTLINED_FUNCTION_13();
  v2 = v1[9];
  v3 = v1[8];
  v4 = v1[7];
  v5 = *v0;
  OUTLINED_FUNCTION_7();
  *v6 = v5;

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(AppIntentCandidateSuggestionConfigurator.updateContext(context:signal:), 0, 0);
}

{
  default argument 1 of Context.setAppId(_:party:)(*(v0 + 48));
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(AppIntentCandidateSuggestionConfigurator.updateContext(context:signal:), v2, v1);
}

{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  Context.setAppId(_:party:)();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t default argument 1 of Context.setAppId(_:party:)@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for Party.unknown(_:);
  v3 = type metadata accessor for Party();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t AppIntentCandidateSuggestionConfigurator.deinit()
{

  return v0;
}

uint64_t AppIntentCandidateSuggestionConfigurator.__deallocating_deinit()
{
  AppIntentCandidateSuggestionConfigurator.deinit();

  return _swift_deallocClassInstance(v0, 48, 7);
}

uint64_t protocol witness for CandidateSuggestionConfigurator.suggestionId.getter in conformance AppIntentCandidateSuggestionConfigurator()
{
  v1 = *(*v0 + 32);

  return v1;
}

uint64_t protocol witness for CandidateSuggestionConfigurator.updateContext(context:signal:) in conformance AppIntentCandidateSuggestionConfigurator(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for CandidateSuggestionConfigurator.updateContext(context:signal:) in conformance AppIntentCandidateSuggestionConfigurator;

  return AppIntentCandidateSuggestionConfigurator.updateContext(context:signal:)(a1);
}

uint64_t protocol witness for CandidateSuggestionConfigurator.updateContext(context:signal:) in conformance AppIntentCandidateSuggestionConfigurator()
{
  OUTLINED_FUNCTION_13();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t protocol witness for CandidateSuggestionConfigurator.isValid(signal:) in conformance AppIntentCandidateSuggestionConfigurator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = protocol witness for CandidateSuggestionConfigurator.isValid(signal:) in conformance AppIntentCandidateSuggestionConfigurator;

  return CandidateSuggestionConfigurator.isValid(signal:)(a1, a2, a3);
}

uint64_t protocol witness for CandidateSuggestionConfigurator.isValid(signal:) in conformance AppIntentCandidateSuggestionConfigurator(uint64_t a1)
{
  OUTLINED_FUNCTION_13();
  v3 = *v1;
  OUTLINED_FUNCTION_7();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(a1);
}

uint64_t protocol witness for CandidateSuggestionConfiguratorFactory.create(actionIdentifier:) in conformance AppIntentCandidateSuggestionConfigurator(uint64_t a1, uint64_t a2)
{
  v4 = _s18SiriSuggestionsKit6SignalCACSHAAWlTm_1(&lazy protocol witness table cache variable for type AppIntentCandidateSuggestionConfigurator and conformance AppIntentCandidateSuggestionConfigurator, a2, type metadata accessor for AppIntentCandidateSuggestionConfigurator, &protocol conformance descriptor for AppIntentCandidateSuggestionConfigurator);

  return CandidateSuggestionConfigurator.create(actionIdentifier:)(a1, a2, v4);
}

uint64_t outlined destroy of NSObject?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _s18SiriSuggestionsKit6SignalCACSHAAWlTm_1(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t one-time initialization function for linkSuggestions()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.linkSuggestions);
  __swift_project_value_buffer(v0, static Logger.linkSuggestions);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for autoshortcutsSuggestions()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.autoshortcutsSuggestions);
  __swift_project_value_buffer(v0, static Logger.autoshortcutsSuggestions);
  return Logger.init(subsystem:category:)();
}

uint64_t Logger.linkSuggestions.unsafeMutableAddressor(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v4, a2);
}

uint64_t one-time initialization function for appIntentsSuggestions()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.appIntentsSuggestions);
  __swift_project_value_buffer(v0, static Logger.appIntentsSuggestions);
  return Logger.init(subsystem:category:)();
}

uint64_t static Logger.linkSuggestions.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
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

__n128 ActionParameter.init(displayRepresentable:metaData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = *a1;
  v4 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v4;
  *(a3 + 32) = *(a1 + 32);
  *(a3 + 40) = a2;
  return result;
}

uint64_t SuggestionAppIntent.init(appIntentAction:details:dialog:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  return result;
}

uint64_t SuggestionAppIntent.appIntentAction.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SuggestionAppIntent.details.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);

  v3 = v2;
  return v1;
}

uint64_t SuggestionAppIntent.dialog.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t static AppIntentDetails.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a1 == a4 && a2 == a5;
  if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for NSObject();
  return static NSObject.== infix(_:_:)() & 1;
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

Swift::Int AppIntentDetails.hashValue.getter(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AppIntentDetails(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  Hasher.init(_seed:)();
  AppIntentDetails.hash(into:)(v5, v2, v3);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type AppIntentDetails and conformance AppIntentDetails()
{
  result = lazy protocol witness table cache variable for type AppIntentDetails and conformance AppIntentDetails;
  if (!lazy protocol witness table cache variable for type AppIntentDetails and conformance AppIntentDetails)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppIntentDetails and conformance AppIntentDetails);
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for SuggestionAppIntent(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for SuggestionAppIntent(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_18SiriSuggestionsKit0aB0O20DisplayRepresentable_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for ActionParameter(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ActionParameter(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void LinkLoggingActionKeyMapper.map(suggestion:resolvedParams:)(uint64_t a1, uint64_t a2)
{
  specialized Dictionary.subscript.getter(0xD00000000000001FLL, 0x80000000000424E0, a2, &v9);
  if (!v10)
  {
    outlined destroy of NSObject?(&v9, &_sypSgMd, &_sypSgMR);
    goto LABEL_7;
  }

  if (!swift_dynamicCast())
  {
LABEL_7:
    v2 = 0;
    v3 = 0;
    v8 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    goto LABEL_8;
  }

  v2 = v11;
  v3 = v12;
  v4 = v14;
  v5 = v15;
  v6 = v16;
  v7 = 256;
  if (!BYTE1(v13))
  {
    v7 = 0;
  }

  v8 = v7 | v13;
LABEL_8:
  v11 = v2;
  v12 = v3;
  v13 = v8;
  v14 = v4;
  v15 = v5;
  v16 = v6;
  LinkLoggingActionKeyMapper.mappedParamaters(for:)(&v11);
  Action.init(actionId:params:)();
  outlined consume of LinkSuggestedAction?(v2, v3, v8, v4, v5, v6);
}

uint64_t LinkLoggingActionKeyMapper.mappedParamaters(for:)(uint64_t *a1)
{
  v1 = a1[1];
  if (v1)
  {
    v4 = a1[2];
    v3 = a1[3];
    v5 = *a1;
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_40AC0;
    *(inited + 32) = 0xD000000000000010;
    *(inited + 40) = 0x8000000000042590;
    *&v14 = v5;
    *(&v14 + 1) = v1;
    v15 = v4;
    *(inited + 48) = v14;
    *(inited + 64) = 0xD000000000000010;
    *(inited + 72) = 0x8000000000042DC0;
    outlined init with copy of LinkSuggestedAction?(a1, v13);
    outlined init with copy of LinkSuggestedActionsRequest(&v14, v13);
    v7 = [v3 identifier];
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    *(inited + 80) = v8;
    *(inited + 88) = v10;
    v11 = Dictionary.init(dictionaryLiteral:)();
    outlined destroy of NSObject?(a1, &_s25SiriLinkSuggestionsPlugin0B15SuggestedActionVSgMd, &_s25SiriLinkSuggestionsPlugin0B15SuggestedActionVSgMR);
    return v11;
  }

  else
  {

    return Dictionary.init(dictionaryLiteral:)();
  }
}

void outlined consume of LinkSuggestedAction?(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  if (a2)
  {
  }
}

uint64_t outlined init with copy of LinkSuggestedAction?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s25SiriLinkSuggestionsPlugin0B15SuggestedActionVSgMd, &_s25SiriLinkSuggestionsPlugin0B15SuggestedActionVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t LinkViewProvider.__allocating_init(dialogIdProvider:)(__int128 *a1)
{
  v2 = swift_allocObject();
  type metadata accessor for LinkInvocationActionProvider();
  *(v2 + 56) = swift_allocObject();
  outlined init with take of LinkClient(a1, v2 + 16);
  return v2;
}

uint64_t LinkViewProvider.init(dialogIdProvider:)(__int128 *a1)
{
  type metadata accessor for LinkInvocationActionProvider();
  *(v1 + 56) = swift_allocObject();
  outlined init with take of LinkClient(a1, v1 + 16);
  return v1;
}

uint64_t LinkViewProvider.getInvocationActionProvider(context:)@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 56);
  a1[3] = type metadata accessor for LinkInvocationActionProvider();
  a1[4] = lazy protocol witness table accessor for type LinkInvocationActionProvider and conformance LinkInvocationActionProvider(&lazy protocol witness table cache variable for type LinkInvocationActionProvider and conformance LinkInvocationActionProvider, 255, type metadata accessor for LinkInvocationActionProvider, &protocol conformance descriptor for LinkInvocationActionProvider);
  *a1 = v3;
}

uint64_t CATLinkDialogCallback.__allocating_init(dialogIdProvider:dialogType:)(__int128 *a1, char a2)
{
  OUTLINED_FUNCTION_3_6();
  v4 = swift_allocObject();
  outlined init with take of LinkClient(a1, v4 + 16);
  *(v4 + 56) = a2 & 1;
  return v4;
}

uint64_t LinkViewProvider.getSpokenDialogCallback(context:)@<X0>(uint64_t *a1@<X8>)
{
  outlined init with copy of LinkClient(v1 + 16, v9);
  v3 = type metadata accessor for CATLinkDialogCallback();
  OUTLINED_FUNCTION_3_6();
  v4 = swift_allocObject();
  outlined init with take of LinkClient(v9, v4 + 16);
  *(v4 + 56) = 0;
  a1[3] = v3;
  OUTLINED_FUNCTION_0_12();
  result = lazy protocol witness table accessor for type LinkInvocationActionProvider and conformance LinkInvocationActionProvider(v5, v6, v7, &protocol conformance descriptor for CATLinkDialogCallback);
  a1[4] = result;
  *a1 = v4;
  return result;
}

uint64_t LinkViewProvider.getDescriptionCallback(context:)@<X0>(uint64_t *a1@<X8>)
{
  outlined init with copy of LinkClient(v1 + 16, v9);
  v3 = type metadata accessor for CATLinkDialogCallback();
  OUTLINED_FUNCTION_3_6();
  v4 = swift_allocObject();
  outlined init with take of LinkClient(v9, v4 + 16);
  *(v4 + 56) = 1;
  a1[3] = v3;
  OUTLINED_FUNCTION_0_12();
  result = lazy protocol witness table accessor for type LinkInvocationActionProvider and conformance LinkInvocationActionProvider(v5, v6, v7, &protocol conformance descriptor for CATLinkDialogCallback);
  a1[4] = result;
  *a1 = v4;
  return result;
}

uint64_t LinkViewProvider.getAssets(context:suggestion:)(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriSuggestionsKit5ImageOSgMd, &_s18SiriSuggestionsKit5ImageOSgMR);
  __chkstk_darwin(v3 - 8);
  v5 = (v22 - v4);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v6 = dispatch thunk of CandidateSuggestion.params.getter();
  specialized Dictionary.subscript.getter(0xD00000000000001FLL, 0x80000000000424E0, v6, &v23);

  if (!v24)
  {
    outlined destroy of Any?(&v23, &_sypSgMd, &_sypSgMR);
    goto LABEL_6;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    v16 = type metadata accessor for Image();
    __swift_storeEnumTagSinglePayload(v5, 1, 1, v16);
    return Assets.init(icon:)();
  }

  v25[0] = v22[0];
  v25[1] = v22[1];
  v25[2] = v22[2];
  v7 = LinkSuggestedAction.iconSystemImageName.getter();
  if (v8)
  {
    v9 = v7;
    v10 = v8;
    v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS4name_18SiriSuggestionsKit5ColorOSg04tintE0tMd, &_sSS4name_18SiriSuggestionsKit5ColorOSg04tintE0tMR) + 48);
    *v5 = v9;
    v5[1] = v10;
    v12 = type metadata accessor for Color();
    __swift_storeEnumTagSinglePayload(v5 + v11, 1, 1, v12);
    v13 = enum case for Image.symbol(_:);
    v14 = type metadata accessor for Image();
    OUTLINED_FUNCTION_1_5();
    (*(v15 + 104))(v5, v13, v14);
    __swift_storeEnumTagSinglePayload(v5, 0, 1, v14);
  }

  else
  {
    v18 = *(&v25[0] + 1);
    *v5 = *&v25[0];
    v5[1] = v18;
    v19 = enum case for Image.appIcon(_:);
    v20 = type metadata accessor for Image();
    OUTLINED_FUNCTION_1_5();
    (*(v21 + 104))(v5, v19, v20);
    __swift_storeEnumTagSinglePayload(v5, 0, 1, v20);
  }

  Assets.init(icon:)();
  return outlined destroy of LinkSuggestedAction(v25);
}

uint64_t LinkViewProvider.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return v0;
}

uint64_t LinkViewProvider.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return _swift_deallocClassInstance(v0, 64, 7);
}

uint64_t CATLinkDialogCallback.init(dialogIdProvider:dialogType:)(__int128 *a1, char a2)
{
  outlined init with take of LinkClient(a1, v2 + 16);
  *(v2 + 56) = a2 & 1;
  return v2;
}

uint64_t CATLinkDialogCallback.getText(dialog:dialogProperties:environment:viewContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[47] = a4;
  v5[48] = v4;
  v5[45] = a2;
  v5[46] = a3;
  v5[44] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s25SiriLinkSuggestionsPlugin13DialogDetailsVSgMd, &_s25SiriLinkSuggestionsPlugin13DialogDetailsVSgMR);
  v5[49] = swift_task_alloc();
  v5[50] = type metadata accessor for DialogDetails(0);
  v5[51] = swift_task_alloc();

  return _swift_task_switch(CATLinkDialogCallback.getText(dialog:dialogProperties:environment:viewContext:), 0, 0);
}

uint64_t CATLinkDialogCallback.getText(dialog:dialogProperties:environment:viewContext:)()
{
  v41 = v0;
  __swift_project_boxed_opaque_existential_1(*(v0 + 360), *(*(v0 + 360) + 24));
  v1 = dispatch thunk of DialogProperties.getParameters()();
  specialized Dictionary.subscript.getter(0xD00000000000001FLL, 0x80000000000424E0, v1, (v0 + 320));

  if (!*(v0 + 344))
  {
    outlined destroy of Any?(v0 + 320, &_sypSgMd, &_sypSgMR);
    goto LABEL_10;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    if (one-time initialization token for linkSuggestions != -1)
    {
      OUTLINED_FUNCTION_1_0(&one-time initialization token for linkSuggestions);
    }

    v18 = *(v0 + 360);
    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Logger.linkSuggestions);
    outlined init with copy of LinkClient(v18, v0 + 160);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v40 = v23;
      *v22 = 136315138;
      outlined init with copy of LinkClient(v0 + 160, v0 + 200);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriSuggestionsKit16DialogProperties_pMd, &_s18SiriSuggestionsKit16DialogProperties_pMR);
      v24 = String.init<A>(describing:)();
      v26 = v25;
      __swift_destroy_boxed_opaque_existential_1((v0 + 160));
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, &v40);

      *(v22 + 4) = v27;
      _os_log_impl(&dword_0, v20, v21, "CATLinkDialogCallback Link action retrieval failed: %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      OUTLINED_FUNCTION_11(v23);
      OUTLINED_FUNCTION_11(v22);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1((v0 + 160));
    }

    goto LABEL_15;
  }

  v3 = *(v0 + 392);
  v2 = *(v0 + 400);
  v4 = *(v0 + 384);
  v5 = *(v0 + 80);
  *(v0 + 16) = *(v0 + 64);
  *(v0 + 32) = v5;
  *(v0 + 48) = *(v0 + 96);
  v6 = *(v4 + 40);
  v7 = *(v4 + 48);
  __swift_project_boxed_opaque_existential_1((v4 + 16), v6);
  (*(v7 + 8))(v0 + 16, *(v4 + 56), v6, v7);
  if (__swift_getEnumTagSinglePayload(v3, 1, v2) == 1)
  {
    outlined destroy of Any?(*(v0 + 392), &_s25SiriLinkSuggestionsPlugin13DialogDetailsVSgMd, &_s25SiriLinkSuggestionsPlugin13DialogDetailsVSgMR);
    if (one-time initialization token for linkSuggestions != -1)
    {
      OUTLINED_FUNCTION_1_0(&one-time initialization token for linkSuggestions);
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Logger.linkSuggestions);
    outlined init with copy of LinkSuggestedAction(v0 + 16, v0 + 112);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    outlined destroy of LinkSuggestedAction(v0 + 16);
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v40 = v12;
      *v11 = 136315138;
      v13 = [*(v0 + 40) identifier];
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v40);

      *(v11 + 4) = v17;
      _os_log_impl(&dword_0, v9, v10, "CATLinkDialogCallback Dialog details retrieval failed: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      OUTLINED_FUNCTION_11(v12);
      OUTLINED_FUNCTION_11(v11);
    }

    outlined destroy of LinkSuggestedAction(v0 + 16);
LABEL_15:

    v28 = *(v0 + 8);

    return v28(0, 0xE000000000000000);
  }

  v31 = *(v0 + 400);
  v30 = *(v0 + 408);
  v32 = *(v0 + 352);
  outlined init with take of DialogDetails(*(v0 + 392), v30);
  v33 = v32[3];
  v34 = v32[4];
  __swift_project_boxed_opaque_existential_1(v32, v33);
  *(v0 + 264) = v31;
  *(v0 + 272) = lazy protocol witness table accessor for type LinkInvocationActionProvider and conformance LinkInvocationActionProvider(&lazy protocol witness table cache variable for type DialogDetails and conformance DialogDetails, 255, type metadata accessor for DialogDetails, &protocol conformance descriptor for DialogDetails);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 240));
  outlined init with copy of DialogDetails(v30, boxed_opaque_existential_1);
  *(v0 + 304) = v31;
  *(v0 + 312) = lazy protocol witness table accessor for type LinkInvocationActionProvider and conformance LinkInvocationActionProvider(&lazy protocol witness table cache variable for type DialogDetails and conformance DialogDetails, 255, type metadata accessor for DialogDetails, &protocol conformance descriptor for DialogDetails);
  v36 = __swift_allocate_boxed_opaque_existential_1((v0 + 280));
  outlined init with copy of DialogDetails(v30, v36);
  v37 = swift_task_alloc();
  *(v0 + 416) = v37;
  *v37 = v0;
  v37[1] = CATLinkDialogCallback.getText(dialog:dialogProperties:environment:viewContext:);
  v38 = *(v0 + 368);
  v39 = *(v0 + 376);

  return dispatch thunk of DialogService.templateDialog(propertyProvider:dialogProperties:environment:viewContext:)(v0 + 240, v0 + 280, v38, v39, v33, v34);
}

{
  v1 = v0[51];
  outlined destroy of LinkSuggestedAction((v0 + 2));
  outlined destroy of DialogDetails(v1);
  v2 = v0[54];
  v3 = v0[55];

  v4 = v0[1];

  return v4(v3, v2);
}

{
  v1 = v0[51];
  outlined destroy of LinkSuggestedAction((v0 + 2));
  outlined destroy of DialogDetails(v1);
  __swift_destroy_boxed_opaque_existential_1(v0 + 35);
  __swift_destroy_boxed_opaque_existential_1(v0 + 30);

  v2 = v0[1];

  return v2();
}

uint64_t CATLinkDialogCallback.getText(dialog:dialogProperties:environment:viewContext:)(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 424) = v2;

  if (v2)
  {
    v7 = CATLinkDialogCallback.getText(dialog:dialogProperties:environment:viewContext:);
  }

  else
  {
    v6[54] = a2;
    v6[55] = a1;
    __swift_destroy_boxed_opaque_existential_1(v6 + 35);
    __swift_destroy_boxed_opaque_existential_1(v6 + 30);
    v7 = CATLinkDialogCallback.getText(dialog:dialogProperties:environment:viewContext:);
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t CATLinkDialogCallback.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  OUTLINED_FUNCTION_3_6();

  return _swift_deallocClassInstance(v1, v2, v3);
}

uint64_t protocol witness for DialogCallback.getText(dialog:dialogProperties:environment:viewContext:) in conformance CATLinkDialogCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = protocol witness for DialogCallback.getText(dialog:dialogProperties:environment:viewContext:) in conformance AppIntentDialogCallback;

  return CATLinkDialogCallback.getText(dialog:dialogProperties:environment:viewContext:)(a1, a2, a3, a4);
}

uint64_t outlined destroy of Any?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_1_5();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t outlined init with take of DialogDetails(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DialogDetails(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of DialogDetails(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DialogDetails(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of DialogDetails(uint64_t a1)
{
  v2 = type metadata accessor for DialogDetails(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t lazy protocol witness table accessor for type LinkInvocationActionProvider and conformance LinkInvocationActionProvider(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t LinkActionResolver.__allocating_init(linkClient:)(__int128 *a1)
{
  v2 = swift_allocObject();
  OUTLINED_FUNCTION_0_13();
  *(v3 + 16) = v4;
  *(v3 + 24) = v5;
  outlined init with take of SiriSuggestions.DisplayRepresentable(a1, v3 + 32);
  return v2;
}

uint64_t LinkActionResolver.init(linkClient:)()
{
  OUTLINED_FUNCTION_0_13();
  *(v0 + 16) = v1;
  *(v0 + 24) = v2;
  outlined init with take of SiriSuggestions.DisplayRepresentable(v3, v0 + 32);
  return v0;
}

uint64_t LinkActionResolver.resolveParameter(parameter:suggestion:interaction:environment:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = v2;
  return _swift_task_switch(LinkActionResolver.resolveParameter(parameter:suggestion:interaction:environment:), 0, 0);
}

uint64_t LinkActionResolver.resolveParameter(parameter:suggestion:interaction:environment:)()
{
  __swift_project_boxed_opaque_existential_1(*(v0 + 16), *(*(v0 + 16) + 24));
  *(v0 + 32) = dispatch thunk of CandidateSuggestion.context.getter();
  *(v0 + 40) = v1;
  *(v0 + 48) = swift_getObjectType();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(LinkActionResolver.resolveParameter(parameter:suggestion:interaction:environment:), v3, v2);
}

{
  v0[7] = Context.getSuggestedActionsRequests()(v0[6], v0[5]);
  swift_unknownObjectRelease();

  return _swift_task_switch(LinkActionResolver.resolveParameter(parameter:suggestion:interaction:environment:), 0, 0);
}

{
  v1 = v0[7];
  v2 = v0[3];
  v3 = v2[8];
  __swift_project_boxed_opaque_existential_1(v2 + 4, v2[7]);
  _sSaySayxGqd__c7ElementQyd__RszSTRd__lufC25SiriLinkSuggestionsPlugin0C23SuggestedActionsRequestV_ShyAFGTt0g5(v1);
  v4 = (*(v3 + 16))();

  v5 = specialized _arrayForceCast<A, B>(_:)(v4);

  v6 = v0[1];

  return v6(v5);
}

void *specialized _arrayForceCast<A, B>(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v13 = _swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = a1 + 40;
    do
    {
      v5 = *(v4 + 16);
      v6 = *(v4 + 24);

      v7 = v5;
      v8 = v6;

      swift_dynamicCast();
      v13 = v2;
      v10 = v2[2];
      v9 = v2[3];
      if (v10 >= v9 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1);
        v2 = v13;
      }

      v4 += 48;
      v2[2] = v10 + 1;
      outlined init with take of Any(&v12, &v2[4 * v10 + 4]);
      --v1;
    }

    while (v1);
  }

  return v2;
}

{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v11 = _swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = (a1 + 64);
    do
    {
      v5 = *v4;

      v6 = v5;
      swift_dynamicCast();
      v11 = v2;
      v8 = v2[2];
      v7 = v2[3];
      if (v8 >= v7 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1);
        v2 = v11;
      }

      v2[2] = v8 + 1;
      outlined init with take of Any(&v10, &v2[4 * v8 + 4]);
      v4 += 5;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *specialized _arrayForceCast<A, B>(_:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v19 = _swiftEmptyArrayStorage;
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v3 = v19;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v6 = *(a1 + 8 * v5 + 32);
      }

      v7 = type metadata accessor for AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoShortcutCandidateSuggestionConfigurator();
      v17 = v7;
      v8 = lazy protocol witness table accessor for type LinkActionResolver and conformance LinkActionResolver(&lazy protocol witness table cache variable for type AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoShortcutCandidateSuggestionConfigurator and conformance AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoShortcutCandidateSuggestionConfigurator, 255, type metadata accessor for AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoShortcutCandidateSuggestionConfigurator, &protocol conformance descriptor for AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoShortcutCandidateSuggestionConfigurator);
      v18 = v8;
      v19 = v3;
      v16[0] = v6;
      v10 = v3[2];
      v9 = v3[3];
      if (v10 >= v9 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1);
        v7 = v17;
        v11 = v18;
      }

      else
      {
        v11 = v8;
      }

      ++v5;
      v12 = __swift_mutable_project_boxed_opaque_existential_1(v16, v7);
      __chkstk_darwin(v12);
      v14 = v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v15 + 16))(v14);
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v10, v14, &v19, v7, v11);
      __swift_destroy_boxed_opaque_existential_1(v16);
      v3 = v19;
    }

    while (v2 != v5);
    return v3;
  }

  __break(1u);
  return result;
}

uint64_t LinkActionResolver.deinit()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  return v0;
}

uint64_t LinkActionResolver.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return _swift_deallocClassInstance(v0, 72, 7);
}

uint64_t protocol witness for InternalResolver.resolveParameter(parameter:suggestion:interaction:environment:) in conformance LinkActionResolver(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for InternalSuggestionsRepository.getAsyncPooledSuggestions() in conformance LinkSuggestionsRepository;

  return LinkActionResolver.resolveParameter(parameter:suggestion:interaction:environment:)(v4, a2);
}

uint64_t specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return outlined init with take of SiriSuggestions.DisplayRepresentable(&v12, v10 + 40 * a1 + 32);
}

uint64_t lazy protocol witness table accessor for type LinkActionResolver and conformance LinkActionResolver(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result, 1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v6 + 24) >> 1) - *(v6 + 16);
  result = type metadata accessor for VersionedInvocation();
  if (v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v8 = *(v6 + 16);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (!v9)
  {
    *(v6 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result, 1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriSuggestionsKit15OwnerDefinition_pMd, &_s18SiriSuggestionsKit15OwnerDefinition_pMR);
  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

double one-time initialization function for linkClientOverride()
{
  qword_57A18 = 0;
  result = 0.0;
  static LinkSuggestionsOwnerDefinitionFactory.linkClientOverride = 0u;
  unk_57A08 = 0u;
  return result;
}

__int128 *LinkSuggestionsOwnerDefinitionFactory.linkClientOverride.unsafeMutableAddressor()
{
  if (one-time initialization token for linkClientOverride != -1)
  {
    OUTLINED_FUNCTION_1_8(&one-time initialization token for linkClientOverride);
  }

  return &static LinkSuggestionsOwnerDefinitionFactory.linkClientOverride;
}

uint64_t static LinkSuggestionsOwnerDefinitionFactory.linkClientOverride.getter@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  if (one-time initialization token for linkClientOverride != -1)
  {
    a2 = OUTLINED_FUNCTION_1_8(&one-time initialization token for linkClientOverride);
  }

  OUTLINED_FUNCTION_4_6(a2, v4);
  return outlined init with copy of LinkClient?(&static LinkSuggestionsOwnerDefinitionFactory.linkClientOverride, a1, &_s25SiriLinkSuggestionsPlugin0B6Client_pSgMd, &_s25SiriLinkSuggestionsPlugin0B6Client_pSgMR);
}

uint64_t static LinkSuggestionsOwnerDefinitionFactory.linkClientOverride.setter(uint64_t a1)
{
  if (one-time initialization token for linkClientOverride != -1)
  {
    a1 = OUTLINED_FUNCTION_1_8(&one-time initialization token for linkClientOverride);
  }

  OUTLINED_FUNCTION_6_6(a1);
  OUTLINED_FUNCTION_7_3();
  swift_endAccess();
  return OUTLINED_FUNCTION_11_4();
}

uint64_t (*static LinkSuggestionsOwnerDefinitionFactory.linkClientOverride.modify())()
{
  if (one-time initialization token for linkClientOverride != -1)
  {
    OUTLINED_FUNCTION_1_8(&one-time initialization token for linkClientOverride);
  }

  OUTLINED_FUNCTION_5_4();
  return static LinkSuggestionsOwnerDefinitionFactory.toolClientOverride.modify;
}

double one-time initialization function for toolClientOverride()
{
  qword_57A40 = 0;
  result = 0.0;
  static LinkSuggestionsOwnerDefinitionFactory.toolClientOverride = 0u;
  *algn_57A30 = 0u;
  return result;
}

__int128 *LinkSuggestionsOwnerDefinitionFactory.toolClientOverride.unsafeMutableAddressor()
{
  if (one-time initialization token for toolClientOverride != -1)
  {
    OUTLINED_FUNCTION_0_15(&one-time initialization token for toolClientOverride);
  }

  return &static LinkSuggestionsOwnerDefinitionFactory.toolClientOverride;
}

uint64_t static LinkSuggestionsOwnerDefinitionFactory.toolClientOverride.getter@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  if (one-time initialization token for toolClientOverride != -1)
  {
    a2 = OUTLINED_FUNCTION_0_15(&one-time initialization token for toolClientOverride);
  }

  OUTLINED_FUNCTION_4_6(a2, v4);
  return outlined init with copy of LinkClient?(&static LinkSuggestionsOwnerDefinitionFactory.toolClientOverride, a1, &_s25SiriLinkSuggestionsPlugin10ToolClient_pSgMd, &_s25SiriLinkSuggestionsPlugin10ToolClient_pSgMR);
}

uint64_t static LinkSuggestionsOwnerDefinitionFactory.toolClientOverride.setter(uint64_t a1)
{
  if (one-time initialization token for toolClientOverride != -1)
  {
    a1 = OUTLINED_FUNCTION_0_15(&one-time initialization token for toolClientOverride);
  }

  OUTLINED_FUNCTION_6_6(a1);
  OUTLINED_FUNCTION_7_3();
  swift_endAccess();
  return OUTLINED_FUNCTION_11_4();
}

uint64_t (*static LinkSuggestionsOwnerDefinitionFactory.toolClientOverride.modify())()
{
  if (one-time initialization token for toolClientOverride != -1)
  {
    OUTLINED_FUNCTION_0_15(&one-time initialization token for toolClientOverride);
  }

  OUTLINED_FUNCTION_5_4();
  return static LinkSuggestionsOwnerDefinitionFactory.toolClientOverride.modify;
}

uint64_t key path getter for static LinkSuggestionsOwnerDefinitionFactory.linkClientOverride : LinkSuggestionsOwnerDefinitionFactory.Type@<X0>(void (*a1)(void)@<X3>, uint64_t a2@<X4>, uint64_t *a3@<X5>, uint64_t *a4@<X6>, uint64_t a5@<X8>)
{
  a1();
  swift_beginAccess();
  return outlined init with copy of LinkClient?(a2, a5, a3, a4);
}

uint64_t key path setter for static LinkSuggestionsOwnerDefinitionFactory.linkClientOverride : LinkSuggestionsOwnerDefinitionFactory.Type(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6, uint64_t *a7, uint64_t *a8)
{
  a5(a1, a2, a3, a4);
  swift_beginAccess();
  outlined assign with copy of LinkClient?(a1, a6, a7, a8);
  return swift_endAccess();
}

double one-time initialization function for clockOverride()
{
  qword_57A68 = 0;
  result = 0.0;
  static LinkSuggestionsOwnerDefinitionFactory.clockOverride = 0u;
  unk_57A58 = 0u;
  return result;
}

__int128 *LinkSuggestionsOwnerDefinitionFactory.clockOverride.unsafeMutableAddressor()
{
  if (one-time initialization token for clockOverride != -1)
  {
    OUTLINED_FUNCTION_2_5(&one-time initialization token for clockOverride);
  }

  return &static LinkSuggestionsOwnerDefinitionFactory.clockOverride;
}

uint64_t static LinkSuggestionsOwnerDefinitionFactory.clockOverride.getter@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  if (one-time initialization token for clockOverride != -1)
  {
    a2 = OUTLINED_FUNCTION_2_5(&one-time initialization token for clockOverride);
  }

  OUTLINED_FUNCTION_4_6(a2, v4);
  return outlined init with copy of LinkClient?(&static LinkSuggestionsOwnerDefinitionFactory.clockOverride, a1, &_s18SiriSuggestionsKit5Clock_pSgMd, &_s18SiriSuggestionsKit5Clock_pSgMR);
}

uint64_t outlined init with copy of LinkClient?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_15_3(a1, a2, a3, a4);
  OUTLINED_FUNCTION_1_5();
  (*(v6 + 16))(v4, v5);
  return v4;
}

uint64_t static LinkSuggestionsOwnerDefinitionFactory.clockOverride.setter(uint64_t a1)
{
  if (one-time initialization token for clockOverride != -1)
  {
    a1 = OUTLINED_FUNCTION_2_5(&one-time initialization token for clockOverride);
  }

  OUTLINED_FUNCTION_6_6(a1);
  OUTLINED_FUNCTION_7_3();
  swift_endAccess();
  return OUTLINED_FUNCTION_11_4();
}

uint64_t outlined assign with copy of LinkClient?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_15_3(a1, a2, a3, a4);
  OUTLINED_FUNCTION_1_5();
  (*(v6 + 24))(v4, v5);
  return v4;
}

uint64_t (*static LinkSuggestionsOwnerDefinitionFactory.clockOverride.modify())()
{
  if (one-time initialization token for clockOverride != -1)
  {
    OUTLINED_FUNCTION_2_5(&one-time initialization token for clockOverride);
  }

  OUTLINED_FUNCTION_5_4();
  return static SiriLinkSuggestionsFeatureFlags.forceEnabled.modify;
}

uint64_t static LinkSuggestionsOwnerDefinitionFactory.createOwnerDefinitions(builderFactory:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 416) = a1;
  *(v2 + 424) = a2;
  v3 = OUTLINED_FUNCTION_4_2();
  return _swift_task_switch(v3, v4, v5);
}

uint64_t static LinkSuggestionsOwnerDefinitionFactory.createOwnerDefinitions(builderFactory:)()
{
  if (one-time initialization token for linkSuggestions != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[54] = v1;
  __swift_project_value_buffer(v1, static Logger.linkSuggestions);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_14_4(&dword_0, v4, v5, "Initializing SiriLinkSuggestionsPlugin");
  }

  v0[51] = _swiftEmptyArrayStorage;
  if (one-time initialization token for autoshortcutsOwner != -1)
  {
    swift_once();
  }

  v6 = static LinkSuggestionsOwners.autoshortcutsOwner;
  v7 = type metadata accessor for DefaultOwner();
  v0[55] = v7;
  v0[5] = v7;
  v8 = lazy protocol witness table accessor for type DefaultOwner and conformance DefaultOwner();
  v0[56] = v8;
  v0[6] = v8;
  v0[2] = v6;

  OUTLINED_FUNCTION_3_7();
  v12 = v9;
  v10 = swift_task_alloc();
  v0[57] = v10;
  *v10 = v0;
  v10[1] = static LinkSuggestionsOwnerDefinitionFactory.createOwnerDefinitions(builderFactory:);

  return v12(v0 + 2);
}

{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_13();
  v2 = v1;
  OUTLINED_FUNCTION_9_2();
  *v3 = v2;
  *v3 = *v0;
  *(v2 + 464) = v4;

  __swift_destroy_boxed_opaque_existential_1((v2 + 16));
  v5 = OUTLINED_FUNCTION_4_2();

  return _swift_task_switch(v5, v6, v7);
}

{
  refreshed = dispatch thunk of SuggestionOwnerDefinitionBuilder.getRefreshService()();
  v3 = v2;
  *(v0 + 472) = refreshed;
  if (one-time initialization token for linkClientOverride != -1)
  {
    OUTLINED_FUNCTION_1_8(&one-time initialization token for linkClientOverride);
  }

  swift_beginAccess();
  outlined init with copy of LinkClient?(&static LinkSuggestionsOwnerDefinitionFactory.linkClientOverride, v0 + 96, &_s25SiriLinkSuggestionsPlugin0B6Client_pSgMd, &_s25SiriLinkSuggestionsPlugin0B6Client_pSgMR);
  if (*(v0 + 120))
  {
    v4 = outlined init with take of SiriSuggestions.DisplayRepresentable((v0 + 96), v0 + 56);
  }

  else
  {
    v5 = [objc_allocWithZone(LNMetadataProvider) init];
    v6 = [objc_allocWithZone(LNSuggestionsProvider) init];
    type metadata accessor for LinkRegistryObserver();
    swift_allocObject();
    v7 = swift_unknownObjectRetain();
    v8 = LinkRegistryObserver.init(refreshableService:)(v7, v3);
    v9 = type metadata accessor for DefaultLinkClient();
    swift_allocObject();
    v4 = DefaultLinkClient.init(metadataProvider:suggestionsProvider:registryObserver:)(v5, v6, v8);
    *(v0 + 80) = v9;
    *(v0 + 88) = &protocol witness table for DefaultLinkClient;
    *(v0 + 56) = v4;
    if (*(v0 + 120))
    {
      v4 = outlined destroy of Any?(v0 + 96, &_s25SiriLinkSuggestionsPlugin0B6Client_pSgMd, &_s25SiriLinkSuggestionsPlugin0B6Client_pSgMR);
    }
  }

  if (one-time initialization token for clockOverride != -1)
  {
    v4 = OUTLINED_FUNCTION_2_5(&one-time initialization token for clockOverride);
  }

  OUTLINED_FUNCTION_4_6(v4, v0 + 360);
  outlined init with copy of LinkClient?(&static LinkSuggestionsOwnerDefinitionFactory.clockOverride, v0 + 176, &_s18SiriSuggestionsKit5Clock_pSgMd, &_s18SiriSuggestionsKit5Clock_pSgMR);
  if (*(v0 + 200))
  {
    outlined init with take of SiriSuggestions.DisplayRepresentable((v0 + 176), v0 + 136);
  }

  else
  {
    static Clocks.getSystemClock()();
    if (*(v0 + 200))
    {
      outlined destroy of Any?(v0 + 176, &_s18SiriSuggestionsKit5Clock_pSgMd, &_s18SiriSuggestionsKit5Clock_pSgMR);
    }
  }

  type metadata accessor for AutoShortcutsSuggestionsOwnerDefinitionFactory();
  __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
  v10 = swift_task_alloc();
  *(v0 + 480) = v10;
  *v10 = v0;
  v10[1] = static LinkSuggestionsOwnerDefinitionFactory.createOwnerDefinitions(builderFactory:);

  return specialized static AutoShortcutsSuggestionsOwnerDefinitionFactory.createAutoShortcutSuggestions(linkClient:builder:clock:)();
}

{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_13();
  v2 = v1;
  OUTLINED_FUNCTION_9_2();
  *v3 = v2;
  *v3 = *v0;
  *(v2 + 488) = v4;

  __swift_destroy_boxed_opaque_existential_1((v2 + 136));
  v5 = OUTLINED_FUNCTION_4_2();

  return _swift_task_switch(v5, v6, v7);
}

{
  specialized Array.append<A>(contentsOf:)(*(v0 + 488));
  if ((SiriLinkSuggestionsFeatureFlags.isEnabled.getter(1) & 1) != 0 && AFDeviceSupportsSystemAssistantExperience())
  {
    if (one-time initialization token for appIntentsSuggestions != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(*(v0 + 432), static Logger.appIntentsSuggestions);
    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v1, v2))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_14_4(&dword_0, v3, v4, "adding appIntentsSuggestions");
    }

    if (one-time initialization token for toolClientOverride != -1)
    {
      v5 = OUTLINED_FUNCTION_0_15(&one-time initialization token for toolClientOverride);
    }

    OUTLINED_FUNCTION_4_6(v5, v0 + 384);
    outlined init with copy of LinkClient?(&static LinkSuggestionsOwnerDefinitionFactory.toolClientOverride, v0 + 256, &_s25SiriLinkSuggestionsPlugin10ToolClient_pSgMd, &_s25SiriLinkSuggestionsPlugin10ToolClient_pSgMR);
    if (*(v0 + 280))
    {
      outlined init with take of SiriSuggestions.DisplayRepresentable((v0 + 256), v0 + 216);
    }

    else
    {
      v9 = type metadata accessor for DefaultToolClient();
      swift_allocObject();
      v10 = DefaultToolClient.init()();
      *(v0 + 240) = v9;
      *(v0 + 248) = &protocol witness table for DefaultToolClient;
      *(v0 + 216) = v10;
      if (*(v0 + 280))
      {
        outlined destroy of Any?(v0 + 256, &_s25SiriLinkSuggestionsPlugin10ToolClient_pSgMd, &_s25SiriLinkSuggestionsPlugin10ToolClient_pSgMR);
      }
    }

    *(v0 + 496) = type metadata accessor for AppIntentsSuggestionsOwnerDefinitionFactory();
    if (one-time initialization token for appIntentsOwner != -1)
    {
      swift_once();
    }

    v11 = static LinkSuggestionsOwners.appIntentsOwner;
    *(v0 + 320) = *(v0 + 440);
    *(v0 + 296) = v11;

    OUTLINED_FUNCTION_3_7();
    v14 = v12;
    v13 = swift_task_alloc();
    *(v0 + 504) = v13;
    *v13 = v0;
    v13[1] = static LinkSuggestionsOwnerDefinitionFactory.createOwnerDefinitions(builderFactory:);

    return v14(v0 + 296);
  }

  else
  {

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1((v0 + 56));
    v6 = *(v0 + 408);
    v7 = *(v0 + 8);

    return v7(v6);
  }
}

{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_9_2();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v4 = v3;
  *(v6 + 528) = v5;

  v7 = OUTLINED_FUNCTION_4_2();

  return _swift_task_switch(v7, v8, v9);
}

{
  specialized Array.append<A>(contentsOf:)(v0[66]);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 27);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v1 = v0[51];
  v2 = v0[1];

  return v2(v1);
}

uint64_t static LinkSuggestionsOwnerDefinitionFactory.createOwnerDefinitions(builderFactory:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v4 = v3;
  v5 = *v1;
  *v4 = *v1;
  v3[64] = v6;

  __swift_destroy_boxed_opaque_existential_1(v3 + 37);
  v7 = v2[10];
  v8 = v2[11];
  v9 = __swift_project_boxed_opaque_existential_1(v3 + 7, v7);
  v10 = v2[30];
  v11 = v2[31];
  v12 = __swift_project_boxed_opaque_existential_1(v3 + 27, v10);
  v13 = swift_task_alloc();
  v3[65] = v13;
  *v13 = v5;
  v13[1] = static LinkSuggestionsOwnerDefinitionFactory.createOwnerDefinitions(builderFactory:);
  v14 = v2[62];

  return specialized static AppIntentsSuggestionsOwnerDefinitionFactory.createAppIntentSuggestions(linkClient:toolClient:builder:)(v9, v12, a1, v14, v7, v10, v8, v11);
}

unint64_t lazy protocol witness table accessor for type DefaultOwner and conformance DefaultOwner()
{
  result = lazy protocol witness table cache variable for type DefaultOwner and conformance DefaultOwner;
  if (!lazy protocol witness table cache variable for type DefaultOwner and conformance DefaultOwner)
  {
    type metadata accessor for DefaultOwner();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultOwner and conformance DefaultOwner);
  }

  return result;
}

uint64_t protocol witness for static OwnerDefinitionFactory.createOwnerDefinitions(builderFactory:) in conformance LinkSuggestionsOwnerDefinitionFactory(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for static OwnerDefinitionFactory.createOwnerDefinitions(builderFactory:) in conformance LinkSuggestionsOwnerDefinitionFactory;

  return static LinkSuggestionsOwnerDefinitionFactory.createOwnerDefinitions(builderFactory:)(a1, a2);
}

uint64_t protocol witness for static OwnerDefinitionFactory.createOwnerDefinitions(builderFactory:) in conformance LinkSuggestionsOwnerDefinitionFactory()
{
  OUTLINED_FUNCTION_8();
  v2 = v1;
  OUTLINED_FUNCTION_13();
  v3 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

uint64_t specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    result = a3();
    *v3 = result;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_15(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_8(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_5(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_4_6(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_5_4()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_6_6(uint64_t a1, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_7_3()
{

  return outlined assign with copy of LinkClient?(v0, v1, v2, v3);
}

uint64_t OUTLINED_FUNCTION_11_4()
{

  return outlined destroy of Any?(v0, v1, v2);
}

void OUTLINED_FUNCTION_14_4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_15_3(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

SiriLinkSuggestionsPlugin::LinkSuggestedActionsRequest __swiftcall LinkSuggestedActionsRequest.init(bundleIdentifier:onScreen:explicitRequest:)(SiriLinkSuggestionsPlugin::LinkSuggestedActionsRequest bundleIdentifier, Swift::Bool onScreen, Swift::Bool explicitRequest)
{
  if (explicitRequest)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3 & 0xFFFE | onScreen;
  bundleIdentifier.onScreen = v4;
  bundleIdentifier.explicitRequest = HIBYTE(v4);
  return bundleIdentifier;
}

id LinkSuggestedActionsRequest.suggestionsRequest.getter(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = a3;
  v6 = (a3 >> 8) & 1;
  type metadata accessor for LNSuggestionsRequest();

  return LNSuggestionsRequest.__allocating_init(bundleIdentifier:onScreen:explicitRequest:)(a1, a2, v3 & 1, v6);
}

unint64_t type metadata accessor for LNSuggestionsRequest()
{
  result = lazy cache variable for type metadata for LNSuggestionsRequest;
  if (!lazy cache variable for type metadata for LNSuggestionsRequest)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for LNSuggestionsRequest);
  }

  return result;
}

uint64_t LinkSuggestedActionsRequest.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x8000000000042590 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E65657263536E6FLL && a2 == 0xE800000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x746963696C707865 && a2 == 0xEF74736575716552)
    {

      return 2;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t LinkSuggestedActionsRequest.CodingKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return 0xD000000000000010;
  }

  if (a1 == 1)
  {
    return 0x6E65657263536E6FLL;
  }

  return 0x746963696C707865;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance LinkSuggestedActionsRequest.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = LinkSuggestedActionsRequest.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

SiriLinkSuggestionsPlugin::AutoShortcutsSuggestionsOwnerDefinitionFactory::ResolvedPhrase::CodingKeys_optional protocol witness for CodingKey.init(intValue:) in conformance LinkSuggestedActionsRequest.CodingKeys@<W0>(Swift::Int a1@<X0>, SiriLinkSuggestionsPlugin::AutoShortcutsSuggestionsOwnerDefinitionFactory::ResolvedPhrase::CodingKeys_optional *a2@<X8>)
{
  result.value = AutoShortcutsSuggestionsOwnerDefinitionFactory.ResolvedPhrase.CodingKeys.init(intValue:)(a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance LinkSuggestedActionsRequest.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LinkSuggestedActionsRequest.CodingKeys and conformance LinkSuggestedActionsRequest.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance LinkSuggestedActionsRequest.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LinkSuggestedActionsRequest.CodingKeys and conformance LinkSuggestedActionsRequest.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t static LinkSuggestedActionsRequest.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  if (a1 == a4 && a2 == a5)
  {
    if ((a3 ^ a6))
    {
      return 0;
    }

    return ((a6 & 0x100) == 0) ^ ((a3 & 0x100) >> 8);
  }

  v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  result = 0;
  if ((v9 & 1) != 0 && ((a3 ^ a6) & 1) == 0)
  {
    return ((a6 & 0x100) == 0) ^ ((a3 & 0x100) >> 8);
  }

  return result;
}

uint64_t LinkSuggestedActionsRequest.encode(to:)(void *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v14 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy25SiriLinkSuggestionsPlugin0E23SuggestedActionsRequestV10CodingKeys33_13A350B5761A03D62B7E849CEB2B323FLLOGMd, &_ss22KeyedEncodingContainerVy25SiriLinkSuggestionsPlugin0E23SuggestedActionsRequestV10CodingKeys33_13A350B5761A03D62B7E849CEB2B323FLLOGMR);
  OUTLINED_FUNCTION_14_0();
  v8 = v7;
  __chkstk_darwin(v9);
  v11 = &v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type LinkSuggestedActionsRequest.CodingKeys and conformance LinkSuggestedActionsRequest.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v4)
  {
    v16 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v8 + 8))(v11, v6);
}

unint64_t lazy protocol witness table accessor for type LinkSuggestedActionsRequest.CodingKeys and conformance LinkSuggestedActionsRequest.CodingKeys()
{
  result = lazy protocol witness table cache variable for type LinkSuggestedActionsRequest.CodingKeys and conformance LinkSuggestedActionsRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type LinkSuggestedActionsRequest.CodingKeys and conformance LinkSuggestedActionsRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LinkSuggestedActionsRequest.CodingKeys and conformance LinkSuggestedActionsRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LinkSuggestedActionsRequest.CodingKeys and conformance LinkSuggestedActionsRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type LinkSuggestedActionsRequest.CodingKeys and conformance LinkSuggestedActionsRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LinkSuggestedActionsRequest.CodingKeys and conformance LinkSuggestedActionsRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LinkSuggestedActionsRequest.CodingKeys and conformance LinkSuggestedActionsRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type LinkSuggestedActionsRequest.CodingKeys and conformance LinkSuggestedActionsRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LinkSuggestedActionsRequest.CodingKeys and conformance LinkSuggestedActionsRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LinkSuggestedActionsRequest.CodingKeys and conformance LinkSuggestedActionsRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type LinkSuggestedActionsRequest.CodingKeys and conformance LinkSuggestedActionsRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LinkSuggestedActionsRequest.CodingKeys and conformance LinkSuggestedActionsRequest.CodingKeys);
  }

  return result;
}

Swift::Int LinkSuggestedActionsRequest.hashValue.getter(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t LinkSuggestedActionsRequest.init(from:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy25SiriLinkSuggestionsPlugin0E23SuggestedActionsRequestV10CodingKeys33_13A350B5761A03D62B7E849CEB2B323FLLOGMd, &_ss22KeyedDecodingContainerVy25SiriLinkSuggestionsPlugin0E23SuggestedActionsRequestV10CodingKeys33_13A350B5761A03D62B7E849CEB2B323FLLOGMR);
  OUTLINED_FUNCTION_14_0();
  __chkstk_darwin(v3);
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type LinkSuggestedActionsRequest.CodingKeys and conformance LinkSuggestedActionsRequest.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    OUTLINED_FUNCTION_1_9();
    v4 = KeyedDecodingContainer.decode(_:forKey:)();
    OUTLINED_FUNCTION_1_9();
    KeyedDecodingContainer.decode(_:forKey:)();
    OUTLINED_FUNCTION_1_9();
    KeyedDecodingContainer.decode(_:forKey:)();
    v6 = OUTLINED_FUNCTION_0_16();
    v7(v6);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v4;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance LinkSuggestedActionsRequest(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  Hasher.init(_seed:)();
  LinkSuggestedActionsRequest.hash(into:)(v5, v2, v3);
  return Hasher._finalize()();
}

uint64_t protocol witness for Decodable.init(from:) in conformance LinkSuggestedActionsRequest@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = LinkSuggestedActionsRequest.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6 & 1;
    *(a2 + 17) = HIBYTE(v6) & 1;
  }

  return result;
}

uint64_t protocol witness for Encodable.encode(to:) in conformance LinkSuggestedActionsRequest(void *a1)
{
  if (*(v1 + 17))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return LinkSuggestedActionsRequest.encode(to:)(a1, *v1, *(v1 + 8), v2 | *(v1 + 16));
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance LinkSuggestedActionsRequest(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 17))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  if (*(a2 + 17))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return static LinkSuggestedActionsRequest.__derived_struct_equals(_:_:)(*a1, *(a1 + 8), v2 | *(a1 + 16), *a2, *(a2 + 8), v3 | *(a2 + 16));
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for LinkSuggestedActionsRequest(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 18))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for LinkSuggestedActionsRequest(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LinkSuggestedActionsRequest.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x332D8);
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

uint64_t static AutoShortcutsSuggestionsOwnerDefinitionFactory.createAutoShortcutSuggestions(linkClient:builder:clock:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = a1[3];
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1(a1, v7);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = static AppIntentsSuggestionsOwnerDefinitionFactory.createAppIntentSuggestions(linkClient:toolClient:builder:dialogProvider:);

  return (specialized static AutoShortcutsSuggestionsOwnerDefinitionFactory.createAutoShortcutSuggestions(linkClient:builder:clock:))(v9, a2, a3, v3, v7, v8);
}

void static AutoShortcutsSuggestionsOwnerDefinitionFactory.handleDialog(dialogProperties:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for BehaviorAfterSpeaking();
  OUTLINED_FUNCTION_14_0();
  v6 = v5;
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_5_2();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14TemplatingTextVSgMd, &_s11SiriKitFlow14TemplatingTextVSgMR);
  __chkstk_darwin(v11 - 8);
  v13 = &v16 - v12;
  v14 = type metadata accessor for TemplatingText();
  OUTLINED_FUNCTION_15();
  __chkstk_darwin(v15);
  OUTLINED_FUNCTION_5_2();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  DialogProperties.resolvedPhrase.getter(v19);
  if (v19[1])
  {
    v16 = v19[0];
    v18 = v21;
    v22 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11SiriKitFlow17TemplatingSectionVGMd, &_ss23_ContiguousArrayStorageCy11SiriKitFlow17TemplatingSectionVGMR);
    type metadata accessor for TemplatingSection();
    v17 = v4;
    *(swift_allocObject() + 16) = xmmword_3EFC0;

    TemplatingText.init(text:speakableTextOverride:)();
    __swift_storeEnumTagSinglePayload(v13, 1, 1, v14);
    TemplatingSection.init(id:content:caption:spokenOnly:)();
    (*(v6 + 104))(v10, enum case for BehaviorAfterSpeaking.defaultBehavior(_:), v17);
    a2[3] = type metadata accessor for TemplatingResult();
    __swift_allocate_boxed_opaque_existential_1(a2);
    TemplatingResult.init(templateIdentifier:sections:behaviorAfterSpeaking:)();

    v23 = v22;
    outlined destroy of String(&v23);
  }

  else
  {
    a2[3] = &type metadata for String;
    *a2 = 0;
    a2[1] = 0xE000000000000000;
  }
}

uint64_t thunk for @escaping @callee_guaranteed (@in_guaranteed DialogProperties) -> (@out Any)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  a3(a2);
  v4 = *(v3 + 8);

  return v4();
}

uint64_t closure #1 in static AutoShortcutsSuggestionsOwnerDefinitionFactory.createAutoShortcutSuggestions(linkClient:builder:clock:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVyypypSgGMd, &_s13SiriUtilities11TransformerVyypypSgGMR);
  __chkstk_darwin(v6 - 8);
  v7 = a1[3];
  v36 = a1[5];
  v8 = __swift_project_boxed_opaque_existential_1(a1, v7);
  v9 = *(v7 - 8);
  __chkstk_darwin(v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s25SiriLinkSuggestionsPlugin0B6Client_pWOcTm_0(a2, &v38);
  v12 = type metadata accessor for AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoShortcutPhraseResolver();
  v13 = swift_allocObject();
  AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoShortcutPhraseResolver.init(linkClient:)(&v38);
  v39 = v12;
  v40 = _s18SiriSuggestionsKit12DefaultOwnerCAcA0E0AAWlTm_0(&lazy protocol witness table cache variable for type AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoShortcutPhraseResolver and conformance AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoShortcutPhraseResolver, v14, type metadata accessor for AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoShortcutPhraseResolver, &protocol conformance descriptor for AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoShortcutPhraseResolver);
  *&v38 = v13;
  static AutoShortcutsSuggestionsOwnerDefinitionFactory.createPhraseParameter(clock:)(v37);
  SuggestionDetailsBuilder.parameter(parameterName:resolver:resolveParam:)();

  (*(v9 + 8))(v11, v7);
  outlined destroy of CoreSignalTypes?(&v38, &_s18SiriSuggestionsKit8Resolver_pSgMd, &_s18SiriSuggestionsKit8Resolver_pSgMR);
  v15 = a1[3];
  v37 = a1[5];
  v36 = __swift_project_boxed_opaque_existential_1(a1, v15);
  v16 = *(v15 - 8);
  __chkstk_darwin(v36);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoShortcutAppIdResolver();
  v20 = swift_allocObject();
  *(v20 + 16) = 0xD000000000000019;
  *(v20 + 24) = 0x8000000000041870;
  v39 = v19;
  v40 = _s18SiriSuggestionsKit12DefaultOwnerCAcA0E0AAWlTm_0(&lazy protocol witness table cache variable for type AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoShortcutAppIdResolver and conformance AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoShortcutAppIdResolver, v21, type metadata accessor for AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoShortcutAppIdResolver, &protocol conformance descriptor for AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoShortcutAppIdResolver);
  *&v38 = v20;
  type metadata accessor for ResolvableParameter();
  static SuggestionTransformers.passthroughParameterForLogging()();
  ResolvableParameter.__allocating_init(typeIdentifier:required:loggingKeyTransformer:)();
  SuggestionDetailsBuilder.parameter(parameterName:resolver:resolveParam:)();

  (*(v16 + 8))(v18, v15);
  outlined destroy of CoreSignalTypes?(&v38, &_s18SiriSuggestionsKit8Resolver_pSgMd, &_s18SiriSuggestionsKit8Resolver_pSgMR);
  v22 = a1[3];
  v37 = a1[5];
  v23 = __swift_project_boxed_opaque_existential_1(a1, v22);
  v24 = *(v22 - 8);
  __chkstk_darwin(v23);
  v26 = &v35 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy18SiriSuggestionsKit10DeviceTypeOGMd, &_ss23_ContiguousArrayStorageCy18SiriSuggestionsKit10DeviceTypeOGMR);
  v27 = type metadata accessor for DeviceType();
  v28 = *(v27 - 8);
  v29 = *(v28 + 72);
  v30 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_3FB80;
  v32 = v31 + v30;
  v33 = *(v28 + 104);
  v33(v32, enum case for DeviceType.iPhone(_:), v27);
  v33(v32 + v29, enum case for DeviceType.iPad(_:), v27);
  v33(v32 + 2 * v29, enum case for DeviceType.visionPro(_:), v27);
  dispatch thunk of SuggestionDetailsBuilder.enabledDevices(_:)();

  return (*(v24 + 8))(v26, v22);
}

uint64_t AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoShortcutPhraseResolver.__allocating_init(linkClient:)()
{
  OUTLINED_FUNCTION_6_7();
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_14();
  AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoShortcutPhraseResolver.init(linkClient:)(v1);
  return v0;
}

uint64_t static AutoShortcutsSuggestionsOwnerDefinitionFactory.createPhraseParameter(clock:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVyypypSgGMd, &_s13SiriUtilities11TransformerVyypypSgGMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v6 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v9 = &v15 - v8;
  __chkstk_darwin(v7);
  type metadata accessor for ResolvableParameter();
  _s25SiriLinkSuggestionsPlugin0B6Client_pWOcTm_0(a1, v16);
  v10 = swift_allocObject();
  outlined init with take of SiriSuggestions.DisplayRepresentable(v16, v10 + 16);
  _s25SiriLinkSuggestionsPlugin0B6Client_pWOcTm_0(a1, v16);
  v11 = swift_allocObject();
  outlined init with take of SiriSuggestions.DisplayRepresentable(v16, v11 + 16);
  static SuggestionTransformers.obfuscateParametersForLogging(numCharacters:rngFactory:currentDate:)();

  (*(v3 + 16))(v6, v9, v2);
  v12 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v13 = swift_allocObject();
  (*(v3 + 32))(v13 + v12, v6, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  Transformer.init(transform:)();
  (*(v3 + 8))(v9, v2);
  return ResolvableParameter.__allocating_init(typeIdentifier:required:loggingKeyTransformer:)();
}

uint64_t AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoShortcutAppIdResolver.__allocating_init()()
{
  OUTLINED_FUNCTION_21_1();
  result = swift_allocObject();
  *(result + 16) = 0xD000000000000019;
  *(result + 24) = 0x8000000000041870;
  return result;
}

uint64_t AutoShortcutsSuggestionsOwnerDefinitionFactory.OnRequestAutoShortcuts.__allocating_init(linkClient:)()
{
  OUTLINED_FUNCTION_6_7();
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_14();
  AutoShortcutsSuggestionsOwnerDefinitionFactory.OnRequestAutoShortcuts.init(linkClient:)(v1);
  return v0;
}

uint64_t closure #1 in static AutoShortcutsSuggestionsOwnerDefinitionFactory.stripOutPhrase(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with copy of Any(a1, &v11);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return outlined init with copy of Any(a1, a2);
  }

  v13 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVyypypSgGMd, &_s13SiriUtilities11TransformerVyypypSgGMR);
  v4 = Transformer.transform.getter();
  v11 = v7;
  v12 = v8;

  v5._countAndFlagsBits = 95;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);

  String.append(_:)(v9);

  v9._object = &type metadata for String;
  v7 = v11;
  v8 = v12;
  v4(&v7);

  return __swift_destroy_boxed_opaque_existential_1(&v7);
}

uint64_t closure #1 in static AutoShortcutsSuggestionsOwnerDefinitionFactory.createPhraseParameter(clock:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v1 = dispatch thunk of Clock.getCurrentTime()();

  return Date.init(timeIntervalSince1970:)(v1);
}

uint64_t closure #1 in static AutoShortcutsSuggestionsOwnerDefinitionFactory.rngFactory(_:)@<X0>(char a2@<W1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  if (a2)
  {
    __swift_project_boxed_opaque_existential_1(a3, a3[3]);
    dispatch thunk of Clock.getCurrentTime()();
  }

  a4[3] = type metadata accessor for SimpleRNG();
  a4[4] = _s18SiriSuggestionsKit12DefaultOwnerCAcA0E0AAWlTm_0(&lazy protocol witness table cache variable for type SimpleRNG and conformance SimpleRNG, 255, &type metadata accessor for SimpleRNG, &protocol conformance descriptor for SimpleRNG);
  __swift_allocate_boxed_opaque_existential_1(a4);
  return SimpleRNG.init(seed:)();
}

uint64_t static AutoShortcutsSuggestionsOwnerDefinitionFactory.createOwnerDefinitions(builderFactory:)(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  return OUTLINED_FUNCTION_6();
}

uint64_t static AutoShortcutsSuggestionsOwnerDefinitionFactory.createOwnerDefinitions(builderFactory:)()
{
  OUTLINED_FUNCTION_15_0();
  if (one-time initialization token for autoshortcutsOwner != -1)
  {
    OUTLINED_FUNCTION_2_6(&one-time initialization token for autoshortcutsOwner);
  }

  v1 = v0[12];
  v2 = static LinkSuggestionsOwners.autoshortcutsOwner;
  v0[5] = type metadata accessor for DefaultOwner();
  OUTLINED_FUNCTION_1_10();
  v0[6] = _s18SiriSuggestionsKit12DefaultOwnerCAcA0E0AAWlTm_0(v3, 255, v4, &protocol conformance descriptor for DefaultOwner);
  v0[2] = v2;

  v7 = (v1 + *v1);
  v5 = swift_task_alloc();
  v0[15] = v5;
  *v5 = v0;
  v5[1] = static AutoShortcutsSuggestionsOwnerDefinitionFactory.createOwnerDefinitions(builderFactory:);

  return v7(v0 + 2);
}

{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_13();
  v2 = v1;
  OUTLINED_FUNCTION_26_1();
  *v3 = v2;
  *v3 = *v0;
  *(v2 + 128) = v4;

  __swift_destroy_boxed_opaque_existential_1((v2 + 16));
  v5 = OUTLINED_FUNCTION_4_2();

  return _swift_task_switch(v5, v6, v7);
}

{
  OUTLINED_FUNCTION_40_1();
  refreshed = dispatch thunk of SuggestionOwnerDefinitionBuilder.getRefreshService()();
  v3 = v2;
  v0[17] = refreshed;
  v4 = [objc_allocWithZone(LNMetadataProvider) init];
  v5 = [objc_allocWithZone(LNSuggestionsProvider) init];
  type metadata accessor for LinkRegistryObserver();
  OUTLINED_FUNCTION_21_1();
  swift_allocObject();
  v6 = swift_unknownObjectRetain();
  v7 = LinkRegistryObserver.init(refreshableService:)(v6, v3);
  type metadata accessor for DefaultLinkClient();
  swift_allocObject();
  v8 = DefaultLinkClient.init(metadataProvider:suggestionsProvider:registryObserver:)(v4, v5, v7);
  v0[18] = v8;
  static Clocks.getSystemClock()();
  v9 = swift_task_alloc();
  v0[19] = v9;
  *v9 = v0;
  v9[1] = static AutoShortcutsSuggestionsOwnerDefinitionFactory.createOwnerDefinitions(builderFactory:);
  v10 = v0[16];
  v11 = v0[14];

  return specialized static AutoShortcutsSuggestionsOwnerDefinitionFactory.createAutoShortcutSuggestions(linkClient:builder:clock:)(v8, v10, (v0 + 7), v11);
}

{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_13();
  v2 = v1;
  OUTLINED_FUNCTION_26_1();
  *v3 = v2;
  *v3 = *v0;
  *(v2 + 160) = v4;

  __swift_destroy_boxed_opaque_existential_1((v2 + 56));
  v5 = OUTLINED_FUNCTION_4_2();

  return _swift_task_switch(v5, v6, v7);
}

{
  OUTLINED_FUNCTION_8();

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_13_4();
  v2 = *(v0 + 160);

  return v1(v2);
}

uint64_t AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoShortcutAppIdResolver.resolveParameter(parameter:suggestion:interaction:environment:)()
{
  OUTLINED_FUNCTION_15_0();
  __swift_project_boxed_opaque_existential_1(*(v0 + 48), *(*(v0 + 48) + 24));
  OUTLINED_FUNCTION_14();
  *(v0 + 56) = dispatch thunk of CandidateSuggestion.context.getter();
  *(v0 + 64) = v1;
  *(v0 + 72) = swift_getObjectType();
  dispatch thunk of Actor.unownedExecutor.getter();
  v2 = OUTLINED_FUNCTION_26_0();

  return _swift_task_switch(v2, v3, v4);
}

{
  OUTLINED_FUNCTION_8();
  v1 = Context.getCandidateApplicationDetails()();
  v3 = v2;
  v0[2] = v1;
  v0[3] = v2;
  v0[4] = v4;
  v0[5] = v5;
  swift_unknownObjectRelease();
  v0[10] = v3;
  v6 = OUTLINED_FUNCTION_4_2();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_15_0();
  v1 = v0[10];
  if (v1)
  {
    v2 = v0[2];
    v3 = v0[5];

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, ".<");
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_3EFC0;
    *(v4 + 56) = &type metadata for String;
    *(v4 + 32) = v2;
    *(v4 + 40) = v1;
  }

  else
  {
    if (one-time initialization token for autoshortcutsSuggestions != -1)
    {
      OUTLINED_FUNCTION_9_5(&one-time initialization token for autoshortcutsSuggestions);
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.autoshortcutsSuggestions);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_34_0(v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      OUTLINED_FUNCTION_2_1();
      _os_log_impl(v9, v10, v11, v12, v13, 2u);
      OUTLINED_FUNCTION_11(v8);
    }
  }

  OUTLINED_FUNCTION_13_4();

  return v14();
}

uint64_t Context.getCandidateApplicationDetails()()
{
  OUTLINED_FUNCTION_39_1();
  if (one-time initialization token for autoshortcutsOwner != -1)
  {
    OUTLINED_FUNCTION_2_6(&one-time initialization token for autoshortcutsOwner);
  }

  v0 = static LinkSuggestionsOwners.autoshortcutsOwner;
  v1 = type metadata accessor for DefaultOwner();
  v8[3] = v1;
  OUTLINED_FUNCTION_1_10();
  v4 = _s18SiriSuggestionsKit12DefaultOwnerCAcA0E0AAWlTm_0(v2, 255, v3, &protocol conformance descriptor for DefaultOwner);
  v8[4] = v4;
  v8[0] = v0;
  __swift_project_boxed_opaque_existential_1(v8, v1);
  v7[3] = v1;
  v7[4] = *(v4 + 8);
  __swift_allocate_boxed_opaque_existential_1(v7);
  OUTLINED_FUNCTION_15();
  (*(v5 + 16))();

  Context.getParam(for:key:)();
  __swift_destroy_boxed_opaque_existential_1(v7);
  __swift_destroy_boxed_opaque_existential_1(v8);
  if (v10)
  {
    if (swift_dynamicCast())
    {
      return v8[0];
    }
  }

  else
  {
    outlined destroy of CoreSignalTypes?(v9, &_sypSgMd, &_sypSgMR);
  }

  return OUTLINED_FUNCTION_36_0();
}

uint64_t AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoShortcutAppIdResolver.__deallocating_deinit()
{

  OUTLINED_FUNCTION_21_1();

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoShortcutAppIdResolver.init()()
{
  result = v0;
  *(v0 + 16) = 0xD000000000000019;
  *(v0 + 24) = 0x8000000000041870;
  return result;
}

uint64_t protocol witness for InternalResolver.resolveParameter(parameter:suggestion:interaction:environment:) in conformance AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoShortcutAppIdResolver(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = static AppIntentsSuggestionsOwnerDefinitionFactory.createAppIntentSuggestions(linkClient:toolClient:builder:);

  return AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoShortcutAppIdResolver.resolveParameter(parameter:suggestion:interaction:environment:)(v4, a2);
}

uint64_t AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoShortcutPhraseResolver.init(linkClient:)(__int128 *a1)
{
  *(v1 + 16) = 0xD00000000000001ALL;
  *(v1 + 24) = 0x8000000000041850;
  outlined init with take of SiriSuggestions.DisplayRepresentable(a1, v1 + 32);
  return v1;
}

uint64_t AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoShortcutPhraseResolver.resolveParameter(parameter:suggestion:interaction:environment:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 80) = a2;
  *(v3 + 88) = v2;
  return OUTLINED_FUNCTION_6();
}

uint64_t AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoShortcutPhraseResolver.resolveParameter(parameter:suggestion:interaction:environment:)()
{
  OUTLINED_FUNCTION_40_1();
  v17 = v0;
  if (one-time initialization token for autoshortcutsSuggestions != -1)
  {
    OUTLINED_FUNCTION_9_5(&one-time initialization token for autoshortcutsSuggestions);
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 96) = __swift_project_value_buffer(v1, static Logger.autoshortcutsSuggestions);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_34_0(v3))
  {
    v4 = OUTLINED_FUNCTION_46();
    v5 = OUTLINED_FUNCTION_47();
    v16 = v5;
    *v4 = 136315394;
    *(v4 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000003FLL, 0x8000000000042F80, &v16);
    *(v4 + 12) = 2048;
    *(v4 + 14) = 148;
    OUTLINED_FUNCTION_2_1();
    _os_log_impl(v6, v7, v8, v9, v10, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v5);
    OUTLINED_FUNCTION_11(v5);
    OUTLINED_FUNCTION_11(v4);
  }

  __swift_project_boxed_opaque_existential_1(*(v0 + 80), *(*(v0 + 80) + 24));
  OUTLINED_FUNCTION_14();
  *(v0 + 104) = dispatch thunk of CandidateSuggestion.context.getter();
  *(v0 + 112) = v11;
  *(v0 + 120) = swift_getObjectType();
  dispatch thunk of Actor.unownedExecutor.getter();
  v12 = OUTLINED_FUNCTION_26_0();

  return _swift_task_switch(v12, v13, v14);
}

{
  OUTLINED_FUNCTION_15_0();
  v1 = Context.getCandidateApplicationDetails()();
  v3 = v2;
  v0[2] = v1;
  v0[3] = v2;
  v0[4] = v4;
  v0[5] = v5;
  swift_unknownObjectRelease();
  v0[16] = v1;
  v0[17] = v3;
  v6 = OUTLINED_FUNCTION_4_2();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_15_0();
  v2 = *v1;
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_26_1();
  *v5 = v4;
  *(v2 + 192) = v6;
  *(v2 + 200) = v0;

  if (v0)
  {

    v7 = AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoShortcutPhraseResolver.resolveParameter(parameter:suggestion:interaction:environment:);
  }

  else
  {

    v7 = AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoShortcutPhraseResolver.resolveParameter(parameter:suggestion:interaction:environment:);
  }

  return _swift_task_switch(v7, 0, 0);
}

void AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoShortcutPhraseResolver.resolveParameter(parameter:suggestion:interaction:environment:)(uint64_t a1)
{
  v139 = v1;
  v2 = v1[17];
  if (!v2)
  {
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_34_0(v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      OUTLINED_FUNCTION_2_1();
      _os_log_impl(v37, v38, v39, v40, v41, 2u);
      OUTLINED_FUNCTION_11(v36);
    }

LABEL_66:
    OUTLINED_FUNCTION_13_4();
    OUTLINED_FUNCTION_44_1();

    __asm { BRAA            X2, X16 }
  }

  v3 = v1[16];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[11];
  v1[18] = v5;
  v1[19] = v4;
  v7 = v6[7];
  v8 = v6[8];
  v131 = v6;
  __swift_project_boxed_opaque_existential_1(v6 + 4, v7);
  v9 = (*(v8 + 32))(v3, v2, v7, v8);
  v1[20] = v9;
  v1[9] = v9;

  v10 = v5;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();

  v132 = v10;
  v133 = v2;
  if (os_log_type_enabled(v11, v12))
  {
    v13 = v1[16];
    v14 = OUTLINED_FUNCTION_46();
    v15 = OUTLINED_FUNCTION_47();
    v138[0] = v15;
    *v14 = 134218242;
    *(v14 + 4) = specialized Array.count.getter();
    *(v14 + 12) = 2080;

    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v2, v138);

    *(v14 + 14) = v16;
    _os_log_impl(&dword_0, v11, v12, "Retrieved %ld AppShortcuts for bundle identifier: %s", v14, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v15);
    OUTLINED_FUNCTION_11(v15);
    OUTLINED_FUNCTION_11(v14);
  }

  v134 = v1;
  if (![objc_opt_self() isConditionallyEnabledIntentsEnabled])
  {
    goto LABEL_18;
  }

  v17 = specialized Array.count.getter();
  v18 = _swiftEmptyArrayStorage;
  v136 = v9;
  if (v17)
  {
    v19 = v17;
    v138[0] = _swiftEmptyArrayStorage;
    v20 = v17 & ~(v17 >> 63);

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v20, 0);
    if (v19 < 0)
    {
      goto LABEL_74;
    }

    v21 = v9;
    v22 = 0;
    v18 = v138[0];
    v23 = v21 & 0xC000000000000001;
    do
    {
      if (v23)
      {
        v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v24 = *(v136 + 8 * v22 + 32);
      }

      v25 = v24;
      v26 = [v25 actionIdentifier];
      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v28;

      v138[0] = v18;
      v31 = v18[2];
      v30 = v18[3];
      if (v31 >= v30 >> 1)
      {
        v33 = OUTLINED_FUNCTION_19_2(v30);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v33, v31 + 1, 1);
        v18 = v138[0];
      }

      ++v22;
      v18[2] = v31 + 1;
      v32 = &v18[2 * v31];
      v32[4] = v27;
      v32[5] = v29;
    }

    while (v19 != v22);
  }

  v53 = 0;
  v54 = v18[2];
  v55 = v18 + 5;
  v129 = (v18 + 5);
  v130 = _swiftEmptyArrayStorage;
LABEL_21:
  for (i = &v55[2 * v53]; ; i += 2)
  {
    if (v54 == v53)
    {

      v69 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(v130);
      v134[21] = v69;

      v70 = v132;

      v71 = Logger.logObject.getter();
      v72 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v71, v72))
      {
        v73 = OUTLINED_FUNCTION_46();
        v74 = swift_slowAlloc();
        v138[0] = v74;
        *v73 = 136315394;

        v75 = OUTLINED_FUNCTION_38_1();
        v78 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v75, v76, v77);

        *(v73 + 4) = v78;
        *(v73 + 12) = 2080;
        v79 = Set.description.getter();
        v81 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v79, v80, v138);

        *(v73 + 14) = v81;
        _os_log_impl(&dword_0, v71, v72, "AppShortcut-participating ConditionallyEnabledIntents for %s: %s", v73, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_11(v74);
        OUTLINED_FUNCTION_11(v73);
      }

      if (*(v69 + 16))
      {
        __swift_project_boxed_opaque_existential_1((v131 + 32), *(v131 + 56));

        v134[22] = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSS_ShySSGTt0g5(v82);
        v83 = swift_task_alloc();
        v134[23] = v83;
        *v83 = v134;
        v83[1] = AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoShortcutPhraseResolver.resolveParameter(parameter:suggestion:interaction:environment:);
        OUTLINED_FUNCTION_44_1();

        __asm { BRAA            X6, X16 }
      }

      v1 = v134;
      v128 = v134[21];
      swift_bridgeObjectRetain_n();

      v138[0] = specialized Array._copyToContiguousArray()(v136);
      specialized MutableCollection<>.sort(by:)(v138, v128);
      v131 = 0;

      swift_bridgeObjectRelease_n();
      v9 = v138[0];
LABEL_18:
      v42 = v1[18];
      OUTLINED_FUNCTION_31_1();

      v43 = v42;

      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v44, v45))
      {
        v47 = v1[16];
        v46 = v1[17];
        v48 = OUTLINED_FUNCTION_46();
        v49 = OUTLINED_FUNCTION_47();
        v138[0] = v49;
        *v48 = 134218242;
        *(v48 + 4) = specialized Array.count.getter();

        *(v48 + 12) = 2080;

        v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v46, v138);

        *(v48 + 14) = v50;
        OUTLINED_FUNCTION_46_1(&dword_0, v51, v52, "%ld AppShortcuts eligible for suggestions in %s");
        __swift_destroy_boxed_opaque_existential_1(v49);
        OUTLINED_FUNCTION_11(v49);
        OUTLINED_FUNCTION_11(v48);
      }

      else
      {
      }

      v86 = specialized Array.count.getter();
      v87 = v9 & 0xC000000000000001;
      v88 = v9 & 0xFFFFFFFFFFFFFF8;
      v89 = v9;

      v90 = 0;
      v137 = _swiftEmptyArrayStorage;
      while (1)
      {
        if (v86 == v90)
        {
          v109 = v134;
          v110 = v134[18];

          v111 = v110;

          v112 = Logger.logObject.getter();
          v113 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v112, v113))
          {
            v114 = OUTLINED_FUNCTION_46();
            v115 = OUTLINED_FUNCTION_47();
            v138[0] = v115;
            *v114 = 134218242;
            *(v114 + 4) = v137[2];

            *(v114 + 12) = 2080;

            v124 = OUTLINED_FUNCTION_34_1(v116, v117, v118, v119, v120, v121, v122, v123, v129, v130, v131, v132, v133, v134);

            *(v114 + 14) = v124;
            _os_log_impl(&dword_0, v112, v113, "%ld AppShortcut resolved phrases for %s", v114, 0x16u);
            __swift_destroy_boxed_opaque_existential_1(v115);
            v109 = v135;
            OUTLINED_FUNCTION_11(v115);
            OUTLINED_FUNCTION_11(v114);
          }

          else
          {
          }

          v125 = v109[18];
          specialized _arrayForceCast<A, B>(_:)(v137);

          goto LABEL_66;
        }

        if (v87)
        {
          v91 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v90 >= *(v88 + 16))
          {
            goto LABEL_71;
          }

          v91 = *(v89 + 8 * v90 + 32);
        }

        v92 = v91;
        v93 = v90 + 1;
        if (__OFADD__(v90, 1))
        {
          __break(1u);
LABEL_71:
          __break(1u);
          goto LABEL_72;
        }

        v94 = [v91 orderedPhrases];
        type metadata accessor for NSTextCheckingResult(0, &lazy cache variable for type metadata for LNAutoShortcutLocalizedPhrase, LNAutoShortcutLocalizedPhrase_ptr);
        v95 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v95 >> 62)
        {
          if (_CocoaArrayWrapper.endIndex.getter())
          {
            goto LABEL_53;
          }

LABEL_50:

          ++v90;
        }

        else
        {
          if (!*(&dword_10 + (v95 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_50;
          }

LABEL_53:
          if ((v95 & 0xC000000000000001) != 0)
          {
            v96 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (!*(&dword_10 + (v95 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_73;
            }

            v96 = *(v95 + 32);
          }

          v97 = v96;

          v98 = [v97 localizedPhrase];

          v99 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v132 = v100;
          v133 = v99;

          v101 = v137;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_28_0();
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v101 = v107;
          }

          v103 = v101[2];
          v102 = v101[3];
          v137 = v101;
          if (v103 >= v102 >> 1)
          {
            OUTLINED_FUNCTION_19_2(v102);
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v137 = v108;
          }

          v105 = v134[16];
          v104 = v134[17];
          v137[2] = v103 + 1;
          v106 = &v137[5 * v103];
          v106[4] = v133;
          v106[5] = v132;
          v106[6] = v105;
          v106[7] = v104;
          v106[8] = v92;
          v90 = v93;
        }
      }
    }

    if (v53 >= v18[2])
    {
      break;
    }

    if (*(v4 + 16))
    {
      v57 = *(i - 1);
      v58 = *i;

      v59 = specialized __RawDictionaryStorage.find<A>(_:)(v57, v58);
      if (v60)
      {
        if (*(*(*(v4 + 56) + 8 * v59) + 16))
        {

          specialized __RawDictionaryStorage.find<A>(_:)();
          v62 = v61;

          if (v62)
          {
            v63 = v130;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v138[0] = v130;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v130[2] + 1, 1);
              v63 = v138[0];
            }

            v66 = *(v63 + 16);
            v65 = *(v63 + 24);
            if (v66 >= v65 >> 1)
            {
              v68 = OUTLINED_FUNCTION_19_2(v65);
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v68, v66 + 1, 1);
              v63 = v138[0];
            }

            ++v53;
            *(v63 + 16) = v66 + 1;
            v130 = v63;
            v67 = v63 + 16 * v66;
            *(v67 + 32) = v57;
            *(v67 + 40) = v58;
            v55 = v18 + 5;
            goto LABEL_21;
          }
        }
      }
    }

    ++v53;
  }

LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
}

void AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoShortcutPhraseResolver.resolveParameter(parameter:suggestion:interaction:environment:)()
{
  v114 = v0;
  v1 = v0[18];
  OUTLINED_FUNCTION_31_1();

  v2 = v1;

  v3 = Logger.logObject.getter();
  LOBYTE(v1) = static os_log_type_t.debug.getter();

  v112 = v0;
  if (os_log_type_enabled(v3, v1))
  {
    v4 = OUTLINED_FUNCTION_46();
    v5 = swift_slowAlloc();
    v113[0] = v5;
    *v4 = 136315394;

    v14 = OUTLINED_FUNCTION_34_1(v6, v7, v8, v9, v10, v11, v12, v13, v102, v103, v105, v107, v109, v0);

    *(v4 + 4) = v14;
    v0 = v112;
    *(v4 + 12) = 2080;
    v15 = Dictionary.description.getter();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, v113);

    *(v4 + 14) = v17;
    OUTLINED_FUNCTION_2_1();
    _os_log_impl(v18, v19, v20, v21, v22, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_11(v5);
    OUTLINED_FUNCTION_11(v4);
  }

  v104 = v0[24];
  v23 = v0[20];
  v24 = v0[21];
  v25 = specialized Array.count.getter();
  v108 = v23 & 0xFFFFFFFFFFFFFF8;
  v110 = v23 & 0xC000000000000001;
  v106 = v23 + 32;

  v26 = 0;
  while (1)
  {
LABEL_4:
    if (v26 == v25)
    {

      swift_beginAccess();
      v0[9] = _swiftEmptyArrayStorage;

      v48 = v0[25];
      v49 = v0[21];
      swift_bridgeObjectRetain_n();

      v113[0] = specialized Array._copyToContiguousArray()(_swiftEmptyArrayStorage);
      specialized MutableCollection<>.sort(by:)(v113, v49);
      if (v48)
      {

        return;
      }

      swift_bridgeObjectRelease_n();
      v50 = v113[0];
      v51 = v0[18];
      OUTLINED_FUNCTION_31_1();

      v52 = v51;

      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v53, v54))
      {
        v56 = v0[16];
        v55 = v0[17];
        v57 = OUTLINED_FUNCTION_46();
        v58 = OUTLINED_FUNCTION_47();
        v113[0] = v58;
        *v57 = 134218242;
        *(v57 + 4) = specialized Array.count.getter();

        *(v57 + 12) = 2080;

        v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v55, v113);

        *(v57 + 14) = v59;
        _os_log_impl(&dword_0, v53, v54, "%ld AppShortcuts eligible for suggestions in %s", v57, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v58);
        OUTLINED_FUNCTION_11(v58);
        OUTLINED_FUNCTION_11(v57);
      }

      else
      {
      }

      v60 = specialized Array.count.getter();

      v61 = 0;
      v111 = _swiftEmptyArrayStorage;
      while (1)
      {
        if (v60 == v61)
        {
          v79 = v112;
          v80 = v112[18];

          v81 = v80;
          v82 = v111;

          v83 = Logger.logObject.getter();
          v84 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v83, v84))
          {
            v85 = OUTLINED_FUNCTION_46();
            v86 = OUTLINED_FUNCTION_47();
            v113[0] = v86;
            *v85 = 134218242;
            *(v85 + 4) = v111[2];

            *(v85 + 12) = 2080;

            v95 = OUTLINED_FUNCTION_34_1(v87, v88, v89, v90, v91, v92, v93, v94, v102, v104, v106, v108, v111, v112);

            *(v85 + 14) = v95;
            OUTLINED_FUNCTION_46_1(&dword_0, v96, v97, "%ld AppShortcut resolved phrases for %s");
            __swift_destroy_boxed_opaque_existential_1(v86);
            OUTLINED_FUNCTION_11(v86);
            OUTLINED_FUNCTION_11(v85);
          }

          else
          {
          }

          v98 = v82;
          v99 = v79[18];
          v100 = specialized _arrayForceCast<A, B>(_:)(v98);

          OUTLINED_FUNCTION_13_4();

          v101(v100);
          return;
        }

        if ((v50 & 0xC000000000000001) != 0)
        {
          v62 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v61 >= *(&dword_10 + (v50 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_61;
          }

          v62 = *(v50 + 8 * v61 + 32);
        }

        v63 = v62;
        v64 = v61 + 1;
        if (__OFADD__(v61, 1))
        {
          goto LABEL_60;
        }

        v65 = [v62 orderedPhrases];
        type metadata accessor for NSTextCheckingResult(0, &lazy cache variable for type metadata for LNAutoShortcutLocalizedPhrase, LNAutoShortcutLocalizedPhrase_ptr);
        v66 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v66 >> 62)
        {
          if (_CocoaArrayWrapper.endIndex.getter())
          {
            goto LABEL_43;
          }

LABEL_40:

          ++v61;
        }

        else
        {
          if (!*(&dword_10 + (v66 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_40;
          }

LABEL_43:
          if ((v66 & 0xC000000000000001) != 0)
          {
            v67 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (!*(&dword_10 + (v66 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_62;
            }

            v67 = *(v66 + 32);
          }

          v68 = v67;

          v69 = [v68 localizedPhrase];

          v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v108 = v71;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_28_0();
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v111 = v77;
          }

          v73 = v111[2];
          v72 = v111[3];
          if (v73 >= v72 >> 1)
          {
            OUTLINED_FUNCTION_19_2(v72);
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v111 = v78;
          }

          v75 = v112[16];
          v74 = v112[17];
          v111[2] = v73 + 1;
          v76 = &v111[5 * v73];
          v76[4] = v70;
          v76[5] = v108;
          v76[6] = v75;
          v76[7] = v74;
          v76[8] = v63;
          v61 = v64;
        }
      }
    }

    if (v110)
    {
      v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v26 >= *(v108 + 16))
      {
        goto LABEL_59;
      }

      v27 = *(v106 + 8 * v26);
    }

    v28 = v27;
    if (__OFADD__(v26++, 1))
    {
      break;
    }

    v30 = v0[21];
    v31 = [v27 actionIdentifier];
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;

    if (*(v30 + 16))
    {
      Hasher.init(_seed:)();
      String.hash(into:)();
      v35 = Hasher._finalize()();
      v36 = ~(-1 << *(v24 + 32));
      while (1)
      {
        v37 = v35 & v36;
        if (((*(v24 + 56 + (((v35 & v36) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v35 & v36)) & 1) == 0)
        {
          break;
        }

        v38 = (*(v24 + 48) + 16 * v37);
        if (*v38 != v32 || v38[1] != v34)
        {
          v40 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v35 = v37 + 1;
          if ((v40 & 1) == 0)
          {
            continue;
          }
        }

        v41 = [v28 actionIdentifier];
        v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v44 = v43;

        if (!*(v104 + 16))
        {

          v0 = v112;
          goto LABEL_4;
        }

        v45 = specialized __RawDictionaryStorage.find<A>(_:)(v42, v44);
        v47 = v46;

        if ((v47 & 1) == 0 || (*(*(v104 + 56) + v45) & 1) == 0)
        {

          v0 = v112;
          goto LABEL_4;
        }

        goto LABEL_22;
      }
    }

LABEL_22:
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v0 = v112;
  }

  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
}

uint64_t AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoShortcutPhraseResolver.resolveParameter(parameter:suggestion:interaction:environment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_45_0();
  a19 = v21;
  a20 = v22;
  a18 = v20;
  v23 = v20[18];

  v24 = v23;
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();

  v27 = os_log_type_enabled(v25, v26);
  v28 = v20[17];
  v29 = v20[18];
  if (v27)
  {
    v30 = v20[16];
    v31 = swift_slowAlloc();
    v32 = OUTLINED_FUNCTION_47();
    a9 = v32;
    *v31 = 136315138;

    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v28, &a9);

    *(v31 + 4) = v33;
    _os_log_impl(&dword_0, v25, v26, "Could not retrieve AppIntents state from '%s'", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v32);
    OUTLINED_FUNCTION_11(v32);
    OUTLINED_FUNCTION_11(v31);
  }

  else
  {
  }

  OUTLINED_FUNCTION_13_4();
  OUTLINED_FUNCTION_45();

  return v36(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12);
}

uint64_t AutoShortcutsSuggestionsOwnerDefinitionFactory.ResolvedPhrase.init(phrase:bundleIdentifier:autoShortcut:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoShortcutPhraseResolver.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  v1 = OUTLINED_FUNCTION_6_7();

  return _swift_deallocClassInstance(v1, v2, v3);
}

uint64_t protocol witness for InternalResolver.resolveParameter(parameter:suggestion:interaction:environment:) in conformance AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoShortcutPhraseResolver(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = static AppIntentsSuggestionsOwnerDefinitionFactory.createAppIntentSuggestions(linkClient:toolClient:builder:);

  return AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoShortcutPhraseResolver.resolveParameter(parameter:suggestion:interaction:environment:)(v4, a2);
}

void *AutoShortcutsSuggestionsOwnerDefinitionFactory.CandidateApplicationDetails.ActionMetadataExcerpt.init(_:)(void *a1)
{
  v2 = [a1 systemProtocolMetadata];
  type metadata accessor for LNSystemProtocolIdentifier(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo24LNSystemProtocolMetadata_pMd, &_sSo24LNSystemProtocolMetadata_pMR);
  _s18SiriSuggestionsKit12DefaultOwnerCAcA0E0AAWlTm_0(&lazy protocol witness table cache variable for type LNSystemProtocolIdentifier and conformance LNSystemProtocolIdentifier, 255, type metadata accessor for LNSystemProtocolIdentifier, &protocol conformance descriptor for LNSystemProtocolIdentifier);
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo26LNSystemProtocolIdentifiera25SiriLinkSuggestionsPlugin013AutoShortcutsH22OwnerDefinitionFactoryC06SystemD8MetadataVGMd, &_ss18_DictionaryStorageCySo26LNSystemProtocolIdentifiera25SiriLinkSuggestionsPlugin013AutoShortcutsH22OwnerDefinitionFactoryC06SystemD8MetadataVGMR);
  result = static _DictionaryStorage.copy(original:)();
  v5 = result;
  v6 = 0;
  v7 = 1 << *(v3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v3 + 64);
  v10 = (v7 + 63) >> 6;
  v11 = result + 8;
  if (v9)
  {
    while (1)
    {
      v12 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_10:
      v15 = v12 | (v6 << 6);
      v16 = *(*(v3 + 48) + 8 * v15);
      v17 = *(*(v3 + 56) + 8 * v15);
      *(v11 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(v5[6] + 8 * v15) = v16;
      *(v5[7] + 8 * v15) = v17;
      v18 = v5[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        break;
      }

      v5[2] = v20;
      v21 = v16;
      result = swift_unknownObjectRetain();
      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        return v5;
      }

      v14 = *(v3 + 64 + 8 * v6);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_25SiriLinkSuggestionsPlugin013AutoShortcutsD22OwnerDefinitionFactoryC27CandidateApplicationDetailsV21ActionMetadataExcerptVTt1g5(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  v7 = (v4 + 63) >> 6;
  while (v6)
  {
    v8 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
LABEL_13:
    v11 = v8 | (v3 << 6);
    v12 = (*(v2 + 48) + 16 * v11);
    v13 = *v12;
    v14 = v12[1];
    v15 = *(*(v2 + 56) + 8 * v11);

    specialized __RawDictionaryStorage.find<A>(_:)(v13, v14);
    v17 = v16;

    if ((v17 & 1) == 0)
    {

      return 0;
    }

    v19 = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSo26LNSystemProtocolIdentifiera_25SiriLinkSuggestionsPlugin013AutoShortcutsG22OwnerDefinitionFactoryC06SystemC8MetadataVTt1g5(v18, v15);

    if ((v19 & 1) == 0)
    {
      return 0;
    }
  }

  v9 = v3;
  while (1)
  {
    v3 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v3 >= v7)
    {
      return 1;
    }

    v10 = *(v2 + 64 + 8 * v3);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v6 = (v10 - 1) & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSo26LNSystemProtocolIdentifiera_25SiriLinkSuggestionsPlugin013AutoShortcutsG22OwnerDefinitionFactoryC06SystemC8MetadataVTt1g5(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 56) + 8 * v12);
    v14 = *(*(v3 + 48) + 8 * v12);
    swift_unknownObjectRetain();
    v15 = specialized __RawDictionaryStorage.find<A>(_:)();
    v17 = v16;

    if ((v17 & 1) == 0)
    {
      swift_unknownObjectRelease();
      return 0;
    }

    v18 = [*(*(a2 + 56) + 8 * v15) isEqual:v13];
    result = swift_unknownObjectRelease();
    if ((v18 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

Swift::Int AutoShortcutsSuggestionsOwnerDefinitionFactory.CandidateApplicationDetails.ActionMetadataExcerpt.hashValue.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_35_1(a1);
  specialized Dictionary<>.hash(into:)(v3, a1);
  return Hasher._finalize()();
}

void *AutoShortcutsSuggestionsOwnerDefinitionFactory.CandidateApplicationDetails.init(bundleIdentifier:actionMetadata:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  specialized Collection.first.getter(a3);
  if (v5)
  {
    v25 = a1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS25SiriLinkSuggestionsPlugin013AutoShortcutsE22OwnerDefinitionFactoryC27CandidateApplicationDetailsV21ActionMetadataExcerptVGMd, &_ss18_DictionaryStorageCySS25SiriLinkSuggestionsPlugin013AutoShortcutsE22OwnerDefinitionFactoryC27CandidateApplicationDetailsV21ActionMetadataExcerptVGMR);
    result = static _DictionaryStorage.copy(original:)();
    v7 = result;
    v8 = 0;
    v9 = 1 << *(a3 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(a3 + 64);
    v12 = (v9 + 63) >> 6;
    v26 = result + 8;
    if (v11)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
LABEL_11:
        v16 = v13 | (v8 << 6);
        v17 = (*(a3 + 48) + 16 * v16);
        v19 = *v17;
        v18 = v17[1];
        v20 = *(*(a3 + 56) + 8 * v16);

        result = AutoShortcutsSuggestionsOwnerDefinitionFactory.CandidateApplicationDetails.ActionMetadataExcerpt.init(_:)(v20);
        *(v26 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
        v21 = (v7[6] + 16 * v16);
        *v21 = v19;
        v21[1] = v18;
        *(v7[7] + 8 * v16) = result;
        v22 = v7[2];
        v23 = __OFADD__(v22, 1);
        v24 = v22 + 1;
        if (v23)
        {
          break;
        }

        v7[2] = v24;
        if (!v11)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      v14 = v8;
      while (1)
      {
        v8 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v8 >= v12)
        {

          return v25;
        }

        v15 = *(a3 + 64 + 8 * v8);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v11 = (v15 - 1) & v15;
          goto LABEL_11;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

    return 0;
  }

  return result;
}

uint64_t static AutoShortcutsSuggestionsOwnerDefinitionFactory.CandidateApplicationDetails.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a1 == a5 && a2 == a6;
  if (!v10 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_25SiriLinkSuggestionsPlugin013AutoShortcutsD22OwnerDefinitionFactoryC27CandidateApplicationDetailsV21ActionMetadataExcerptVTt1g5(a3, a7) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for NSTextCheckingResult(0, &lazy cache variable for type metadata for NSObject, NSObject_ptr);
  return static NSObject.== infix(_:_:)() & 1;
}

uint64_t AutoShortcutsSuggestionsOwnerDefinitionFactory.CandidateApplicationDetails.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  String.hash(into:)();
  v3 = OUTLINED_FUNCTION_38_1();
  specialized Dictionary<>.hash(into:)(v3, v4);
  return NSObject.hash(into:)();
}

Swift::Int AutoShortcutsSuggestionsOwnerDefinitionFactory.CandidateApplicationDetails.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_35_1(a1);
  String.hash(into:)();
  specialized Dictionary<>.hash(into:)(v5, a3);
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AutoShortcutsSuggestionsOwnerDefinitionFactory.CandidateApplicationDetails(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  Hasher.init(_seed:)();
  AutoShortcutsSuggestionsOwnerDefinitionFactory.CandidateApplicationDetails.hash(into:)(v5, v2, v3);
  return Hasher._finalize()();
}

uint64_t AutoShortcutsSuggestionsOwnerDefinitionFactory.OnRequestAutoShortcuts.configuratorPerBundleIdentifier.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

uint64_t AutoShortcutsSuggestionsOwnerDefinitionFactory.OnRequestAutoShortcuts.init(linkClient:)(__int128 *a1)
{
  *(v1 + 16) = 0;
  *(v1 + 64) = [objc_allocWithZone(NSLock) init];
  outlined init with take of SiriSuggestions.DisplayRepresentable(a1, v1 + 24);
  return v1;
}

void *AutoShortcutsSuggestionsOwnerDefinitionFactory.OnRequestAutoShortcuts.getConfiguratorsForAllApplications()()
{
  v1 = v0;
  v2 = v0[8];
  [v2 lock];
  swift_beginAccess();
  v3 = v0[2];
  if (v3)
  {
  }

  else
  {
    v4 = v1[6];
    v5 = v1[7];
    __swift_project_boxed_opaque_existential_1(v1 + 3, v4);
    v6 = (*(v5 + 8))(v4, v5);
    v3 = &_swiftEmptyDictionarySingleton;
    if (v6)
    {
      v7 = v6;
      v9 = &_swiftEmptyDictionarySingleton;

      specialized Sequence.forEach(_:)(v7, v1, &v9);

      v3 = v9;
      v1[2] = v9;
    }
  }

  [v2 unlock];
  return v3;
}

char *AutoShortcutsSuggestionsOwnerDefinitionFactory.OnRequestAutoShortcuts.getCandidateApplicationDetails(for:)()
{
  v3 = v1;
  OUTLINED_FUNCTION_39_1();
  __swift_project_boxed_opaque_existential_1((v1 + 24), *(v1 + 48));
  v4 = OUTLINED_FUNCTION_38_1();
  v6 = v5(v4);
  if (specialized Array.count.getter())
  {
    v7 = specialized Array.count.getter();
    if (!v7)
    {

LABEL_13:
      v21 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(_swiftEmptyArrayStorage);
      _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSS_ShySSGTt0g5(v21);
      __swift_project_boxed_opaque_existential_1((v3 + 24), *(v3 + 48));
      v22 = OUTLINED_FUNCTION_38_1();
      v24 = v23(v22);

      return AutoShortcutsSuggestionsOwnerDefinitionFactory.CandidateApplicationDetails.init(bundleIdentifier:actionMetadata:)(v2, v0, v24);
    }

    v8 = v7;
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7 & ~(v7 >> 63), 0);
    if ((v8 & 0x8000000000000000) == 0)
    {
      v10 = 0;
      do
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v11 = *(v6 + 8 * v10 + 32);
        }

        v12 = v11;
        v13 = [v12 actionIdentifier];
        v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v16 = v15;

        v18 = _swiftEmptyArrayStorage[2];
        v17 = _swiftEmptyArrayStorage[3];
        if (v18 >= v17 >> 1)
        {
          v20 = OUTLINED_FUNCTION_19_2(v17);
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v20, v18 + 1, 1);
        }

        ++v10;
        _swiftEmptyArrayStorage[2] = v18 + 1;
        v19 = &_swiftEmptyArrayStorage[2 * v18];
        v19[4] = v14;
        v19[5] = v16;
      }

      while (v8 != v10);

      v3 = v1;
      goto LABEL_13;
    }

    __break(1u);
  }

  else
  {

    return OUTLINED_FUNCTION_36_0();
  }

  return result;
}

void *AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoShortcutCandidateSuggestionConfigurator.__allocating_init(candidateApplicationDetails:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_allocObject();
  result[6] = 0xD000000000000016;
  result[7] = 0x8000000000042200;
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  return result;
}

uint64_t specialized Sequence.forEach(_:)(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = *(a1 + 16);
  v5 = (a1 + 40);
  if (!v4)
  {
  }

  while (1)
  {
    v6 = *(v5 - 1);
    v7 = *v5;

    v8 = AutoShortcutsSuggestionsOwnerDefinitionFactory.OnRequestAutoShortcuts.getCandidateApplicationDetails(for:)();
    if (!v9)
    {

      goto LABEL_13;
    }

    v12 = v8;
    v13 = v9;
    v14 = v10;
    v15 = v11;
    v36 = v5;
    v37 = v4;
    type metadata accessor for AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoShortcutCandidateSuggestionConfigurator();
    v16 = swift_allocObject();
    v16[5] = v15;
    v16[6] = 0xD000000000000016;
    v16[7] = 0x8000000000042200;
    v16[2] = v12;
    v16[3] = v13;
    v16[4] = v14;

    v35 = v15;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    v38 = *v3;
    v19 = v6;
    v20 = specialized __RawDictionaryStorage.find<A>(_:)(v6, v7);
    v22 = v18[2];
    v23 = (v21 & 1) == 0;
    v24 = v22 + v23;
    if (__OFADD__(v22, v23))
    {
      break;
    }

    v25 = v20;
    v26 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySS25SiriLinkSuggestionsPlugin013AutoShortcutsE22OwnerDefinitionFactoryC0G39ShortcutCandidateSuggestionConfiguratorCGMd, &_ss17_NativeDictionaryVySS25SiriLinkSuggestionsPlugin013AutoShortcutsE22OwnerDefinitionFactoryC0G39ShortcutCandidateSuggestionConfiguratorCGMR);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v24))
    {
      v27 = specialized __RawDictionaryStorage.find<A>(_:)(v19, v7);
      if ((v26 & 1) != (v28 & 1))
      {
        goto LABEL_17;
      }

      v25 = v27;
    }

    if (v26)
    {
      *(v38[7] + 8 * v25) = v16;
    }

    else
    {
      v38[(v25 >> 6) + 8] |= 1 << v25;
      v29 = (v38[6] + 16 * v25);
      *v29 = v19;
      v29[1] = v7;
      *(v38[7] + 8 * v25) = v16;
      v30 = v38[2];
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        goto LABEL_16;
      }

      v38[2] = v32;
    }

    v3 = a3;
    *a3 = v38;

    v5 = v36;
    v4 = v37;
LABEL_13:
    v5 += 2;
    if (!--v4)
    {
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void AutoShortcutsSuggestionsOwnerDefinitionFactory.OnRequestAutoShortcuts.getConfigurators(for:)(uint64_t a1)
{
  v3 = specialized Array.count.getter();
  v4 = 0;
  v5 = _swiftEmptyArrayStorage;
  while (v3 != v4)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v4 >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_19;
      }

      v6 = *(a1 + 8 * v4 + 32);
    }

    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_19:
      __break(1u);
      return;
    }

    v14 = v6;
    closure #1 in AutoShortcutsSuggestionsOwnerDefinitionFactory.OnRequestAutoShortcuts.getConfigurators(for:)(&v14, v1, &v13);

    if (v13)
    {
      v12 = v13;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_28_0();
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v5 = v10;
      }

      v8 = v5[2];
      v7 = v5[3];
      v9 = v12;
      if (v8 >= v7 >> 1)
      {
        OUTLINED_FUNCTION_19_2(v7);
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v9 = v12;
        v5 = v11;
      }

      v5[2] = v8 + 1;
      *&v5[2 * v8 + 4] = v9;
    }

    ++v4;
  }

  _sSD20uniqueKeysWithValuesSDyxq_Gqd__n_tcSTRd__x_q_t7ElementRtd__lufC18SiriSuggestionsKit6SignalC_SayAE31CandidateSuggestionConfigurator_pGSayAG_AItGTt0g5(v5);
}

uint64_t closure #1 in AutoShortcutsSuggestionsOwnerDefinitionFactory.OnRequestAutoShortcuts.getConfigurators(for:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v55 = a3;
  v53 = a2;
  v4 = type metadata accessor for CoreSignalTypes();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v51[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriSuggestionsKit15CoreSignalTypesOSg_ADtMd, "*$");
  v9 = v8 - 8;
  __chkstk_darwin(v8);
  v11 = &v51[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriSuggestionsKit15CoreSignalTypesOSgMd, &_s18SiriSuggestionsKit15CoreSignalTypesOSgMR);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v51[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = __chkstk_darwin(v13);
  v18 = &v51[-v17];
  __chkstk_darwin(v16);
  v20 = &v51[-v19];
  v54 = *a1;
  Signal.signalType.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriSuggestionsKit10SignalType_pMd, ".$");
  v21 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v20, v21 ^ 1u, 1, v4);
  (*(v5 + 104))(v18, enum case for CoreSignalTypes.app(_:), v4);
  __swift_storeEnumTagSinglePayload(v18, 0, 1, v4);
  v22 = *(v9 + 56);
  outlined init with copy of CoreSignalTypes?(v20, v11);
  outlined init with copy of CoreSignalTypes?(v18, &v11[v22]);
  if (__swift_getEnumTagSinglePayload(v11, 1, v4) == 1)
  {
    outlined destroy of CoreSignalTypes?(v18, &_s18SiriSuggestionsKit15CoreSignalTypesOSgMd, &_s18SiriSuggestionsKit15CoreSignalTypesOSgMR);
    if (__swift_getEnumTagSinglePayload(&v11[v22], 1, v4) == 1)
    {
      outlined destroy of CoreSignalTypes?(v11, &_s18SiriSuggestionsKit15CoreSignalTypesOSgMd, &_s18SiriSuggestionsKit15CoreSignalTypesOSgMR);
      outlined destroy of CoreSignalTypes?(v20, &_s18SiriSuggestionsKit15CoreSignalTypesOSgMd, &_s18SiriSuggestionsKit15CoreSignalTypesOSgMR);
      v23 = v54;
      goto LABEL_14;
    }

    goto LABEL_6;
  }

  outlined init with copy of CoreSignalTypes?(v11, v15);
  if (__swift_getEnumTagSinglePayload(&v11[v22], 1, v4) == 1)
  {
    outlined destroy of CoreSignalTypes?(v18, &_s18SiriSuggestionsKit15CoreSignalTypesOSgMd, &_s18SiriSuggestionsKit15CoreSignalTypesOSgMR);
    (*(v5 + 8))(v15, v4);
LABEL_6:
    outlined destroy of CoreSignalTypes?(v11, &_s18SiriSuggestionsKit15CoreSignalTypesOSg_ADtMd, "*$");
    outlined destroy of CoreSignalTypes?(v20, &_s18SiriSuggestionsKit15CoreSignalTypesOSgMd, &_s18SiriSuggestionsKit15CoreSignalTypesOSgMR);
    v23 = v54;
    goto LABEL_7;
  }

  (*(v5 + 32))(v7, &v11[v22], v4);
  _s18SiriSuggestionsKit12DefaultOwnerCAcA0E0AAWlTm_0(&lazy protocol witness table cache variable for type CoreSignalTypes and conformance CoreSignalTypes, 255, &type metadata accessor for CoreSignalTypes, &protocol conformance descriptor for CoreSignalTypes);
  v52 = dispatch thunk of static Equatable.== infix(_:_:)();
  v34 = *(v5 + 8);
  v34(v7, v4);
  outlined destroy of CoreSignalTypes?(v18, &_s18SiriSuggestionsKit15CoreSignalTypesOSgMd, &_s18SiriSuggestionsKit15CoreSignalTypesOSgMR);
  v34(v15, v4);
  outlined destroy of CoreSignalTypes?(v11, &_s18SiriSuggestionsKit15CoreSignalTypesOSgMd, &_s18SiriSuggestionsKit15CoreSignalTypesOSgMR);
  outlined destroy of CoreSignalTypes?(v20, &_s18SiriSuggestionsKit15CoreSignalTypesOSgMd, &_s18SiriSuggestionsKit15CoreSignalTypesOSgMR);
  v23 = v54;
  if (v52)
  {
LABEL_14:
    if (one-time initialization token for autoshortcutsSuggestions != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    __swift_project_value_buffer(v35, static Logger.autoshortcutsSuggestions);

    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v56[0] = v39;
      *v38 = 136315138;
      v56[6] = v23;
      type metadata accessor for Signal();
      _s18SiriSuggestionsKit12DefaultOwnerCAcA0E0AAWlTm_0(&lazy protocol witness table cache variable for type Signal and conformance Signal, 255, &type metadata accessor for Signal, &protocol conformance descriptor for Signal);
      v40 = dispatch thunk of CustomStringConvertible.description.getter();
      v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v41, v56);

      *(v38 + 4) = v42;
      _os_log_impl(&dword_0, v36, v37, "Getting app specific autoshortcuts suggestions for %s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v39);
    }

    v43 = AutoShortcutsSuggestionsOwnerDefinitionFactory.OnRequestAutoShortcuts.getConfiguratorsForAllApplications()();
    v44 = Signal.signalValue.getter();
    v46 = specialized Dictionary.subscript.getter(v44, v45, v43);

    if (v46)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy18SiriSuggestionsKit31CandidateSuggestionConfigurator_pGMd, &_ss23_ContiguousArrayStorageCy18SiriSuggestionsKit31CandidateSuggestionConfigurator_pGMR);
      v47 = swift_allocObject();
      *(v47 + 16) = xmmword_3EFC0;
      *(v47 + 56) = type metadata accessor for AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoShortcutCandidateSuggestionConfigurator();
      *(v47 + 64) = _s18SiriSuggestionsKit12DefaultOwnerCAcA0E0AAWlTm_0(&lazy protocol witness table cache variable for type AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoShortcutCandidateSuggestionConfigurator and conformance AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoShortcutCandidateSuggestionConfigurator, v48, type metadata accessor for AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoShortcutCandidateSuggestionConfigurator, &protocol conformance descriptor for AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoShortcutCandidateSuggestionConfigurator);
      *(v47 + 32) = v46;
      v49 = v55;
      *v55 = v23;
      v49[1] = v47;
    }

    goto LABEL_20;
  }

LABEL_7:
  type metadata accessor for Signal();
  static Signal.HomeScreenTier1.getter();
  v24 = static Signal.== infix(_:_:)();

  if ((v24 & 1) == 0)
  {
LABEL_20:
    v50 = v55;
    *v55 = 0;
    v50[1] = 0;
    return result;
  }

  if (one-time initialization token for autoshortcutsSuggestions != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  __swift_project_value_buffer(v26, static Logger.autoshortcutsSuggestions);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_0, v27, v28, "Getting homescreen tier 1 autoshortcuts suggestions", v29, 2u);
  }

  v30 = AutoShortcutsSuggestionsOwnerDefinitionFactory.OnRequestAutoShortcuts.getConfiguratorsForAllApplications()();

  v31 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufC25SiriLinkSuggestionsPlugin013AutoShortcutsD22OwnerDefinitionFactoryC0F39ShortcutCandidateSuggestionConfiguratorC_SD6ValuesVySSAH_GTt0g5(v30);
  v32 = specialized _arrayForceCast<A, B>(_:)(v31);

  v33 = v55;
  *v55 = v23;
  v33[1] = v32;
  return result;
}

uint64_t AutoShortcutsSuggestionsOwnerDefinitionFactory.OnRequestAutoShortcuts.deinit()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return v0;
}

uint64_t AutoShortcutsSuggestionsOwnerDefinitionFactory.OnRequestAutoShortcuts.__deallocating_deinit()
{
  AutoShortcutsSuggestionsOwnerDefinitionFactory.OnRequestAutoShortcuts.deinit();
  v0 = OUTLINED_FUNCTION_6_7();

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoShortcutCandidateSuggestionConfigurator.candidateApplicationDetails.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);

  v3 = v2;
  return v1;
}

uint64_t AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoShortcutCandidateSuggestionConfigurator.init(candidateApplicationDetails:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = 0xD000000000000016;
  v4[7] = 0x8000000000042200;
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
  return LinkSuggestionsOwnerDefinitionFactory.deinit();
}

uint64_t AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoShortcutCandidateSuggestionConfigurator.updateContext(context:signal:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_6();
}

uint64_t AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoShortcutCandidateSuggestionConfigurator.updateContext(context:signal:)()
{
  OUTLINED_FUNCTION_15_0();
  v1 = v0[2];
  v2 = v0[3];
  v0[4] = *v1;
  v0[5] = v1[1];
  v0[6] = swift_getObjectType();
  v0[7] = v2[2];
  v0[8] = v2[3];
  v0[9] = v2[4];
  v0[10] = v2[5];
  dispatch thunk of Actor.unownedExecutor.getter();
  v3 = OUTLINED_FUNCTION_26_0();

  return _swift_task_switch(v3, v4, v5);
}

{
  OUTLINED_FUNCTION_8();
  Context.setCandidateApplicationDetails(_:)(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 48), *(v0 + 40));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t Context.setCandidateApplicationDetails(_:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  if (one-time initialization token for autoshortcutsOwner != -1)
  {
    OUTLINED_FUNCTION_2_6(&one-time initialization token for autoshortcutsOwner);
  }

  v10 = static LinkSuggestionsOwners.autoshortcutsOwner;
  v11 = type metadata accessor for DefaultOwner();
  v21[3] = v11;
  OUTLINED_FUNCTION_1_10();
  v14 = _s18SiriSuggestionsKit12DefaultOwnerCAcA0E0AAWlTm_0(v12, 255, v13, &protocol conformance descriptor for DefaultOwner);
  v21[4] = v14;
  v21[0] = v10;
  __swift_project_boxed_opaque_existential_1(v21, v11);
  v20[3] = v11;
  v20[4] = *(v14 + 8);
  __swift_allocate_boxed_opaque_existential_1(v20);
  OUTLINED_FUNCTION_15();
  (*(v15 + 16))();
  v19[3] = &type metadata for AutoShortcutsSuggestionsOwnerDefinitionFactory.CandidateApplicationDetails;
  v16 = swift_allocObject();
  v19[0] = v16;
  v16[2] = a1;
  v16[3] = a2;
  v16[4] = a3;
  v16[5] = a4;

  v17 = a4;
  Context.setParam(for:key:value:)();
  __swift_destroy_boxed_opaque_existential_1(v19);
  __swift_destroy_boxed_opaque_existential_1(v20);
  return __swift_destroy_boxed_opaque_existential_1(v21);
}

uint64_t static AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoShortcutCandidateSuggestionConfigurator.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[4];
  v3 = a2[4];
  v4 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_25SiriLinkSuggestionsPlugin013AutoShortcutsD22OwnerDefinitionFactoryC27CandidateApplicationDetailsV21ActionMetadataExcerptVTt1g5(v2, v3) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for NSTextCheckingResult(0, &lazy cache variable for type metadata for NSObject, NSObject_ptr);
  OUTLINED_FUNCTION_13_0();
  return static NSObject.== infix(_:_:)() & 1;
}

uint64_t AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoShortcutCandidateSuggestionConfigurator.deinit()
{

  return v0;
}

uint64_t AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoShortcutCandidateSuggestionConfigurator.__deallocating_deinit()
{
  AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoShortcutCandidateSuggestionConfigurator.deinit();

  return _swift_deallocClassInstance(v0, 64, 7);
}

uint64_t protocol witness for CandidateSuggestionConfigurator.suggestionId.getter in conformance AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoShortcutCandidateSuggestionConfigurator()
{
  v1 = *(*v0 + 48);

  return v1;
}

uint64_t protocol witness for CandidateSuggestionConfigurator.updateContext(context:signal:) in conformance AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoShortcutCandidateSuggestionConfigurator(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = closure #1 in static AppIntentsSuggestionsOwnerDefinitionFactory.createAppIntentSuggestions(linkClient:toolClient:builder:dialogProvider:)partial apply;

  return AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoShortcutCandidateSuggestionConfigurator.updateContext(context:signal:)(a1);
}

uint64_t protocol witness for CandidateSuggestionConfigurator.isValid(signal:) in conformance AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoShortcutCandidateSuggestionConfigurator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = static AppIntentsSuggestionsOwnerDefinitionFactory.createAppIntentSuggestions(linkClient:toolClient:builder:dialogProvider:);

  return CandidateSuggestionConfigurator.isValid(signal:)(a1, a2, a3);
}

uint64_t protocol witness for CandidateSuggestionConfigurator.isValidWithDebug(signal:) in conformance AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoShortcutCandidateSuggestionConfigurator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = protocol witness for CandidateSuggestionConfigurator.isValidWithDebug(signal:) in conformance AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoShortcutCandidateSuggestionConfigurator;

  return CandidateSuggestionConfigurator.isValidWithDebug(signal:)(a1, a2, a3);
}

uint64_t protocol witness for CandidateSuggestionConfigurator.isValidWithDebug(signal:) in conformance AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoShortcutCandidateSuggestionConfigurator()
{
  OUTLINED_FUNCTION_15_0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_13();
  v7 = *v0;
  OUTLINED_FUNCTION_7();
  *v8 = v7;

  v9 = *(v7 + 8);

  return v9(v6, v4, v2);
}

uint64_t protocol witness for CandidateSuggestionConfiguratorFactory.create(actionIdentifier:) in conformance AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoShortcutCandidateSuggestionConfigurator(uint64_t a1, uint64_t a2)
{
  v4 = _s18SiriSuggestionsKit12DefaultOwnerCAcA0E0AAWlTm_0(&lazy protocol witness table cache variable for type AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoShortcutCandidateSuggestionConfigurator and conformance AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoShortcutCandidateSuggestionConfigurator, a2, type metadata accessor for AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoShortcutCandidateSuggestionConfigurator, &protocol conformance descriptor for AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoShortcutCandidateSuggestionConfigurator);

  return CandidateSuggestionConfigurator.create(actionIdentifier:)(a1, a2, v4);
}

SiriLinkSuggestionsPlugin::AutoShortcutsSuggestionsOwnerDefinitionFactory::ResolvedPhrase::CodingKeys_optional __swiftcall AutoShortcutsSuggestionsOwnerDefinitionFactory.ResolvedPhrase.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  countAndFlagsBits = stringValue._countAndFlagsBits;
  v3 = stringValue._countAndFlagsBits == 0x657361726870 && stringValue._object == 0xE600000000000000;
  if (v3 || (OUTLINED_FUNCTION_1_3(0x657361726870, 0xE600000000000000) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v5 = countAndFlagsBits == 0xD000000000000010 && 0x8000000000042590 == object;
    if (v5 || (OUTLINED_FUNCTION_1_3(0xD000000000000010, 0x8000000000042590) & 1) != 0)
    {

      return 1;
    }

    else if (countAndFlagsBits == 0x726F68536F747561 && object == 0xEC00000074756374)
    {

      return 2;
    }

    else
    {
      v7 = OUTLINED_FUNCTION_1_3(0x726F68536F747561, 0xEC00000074756374);

      if (v7)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

Swift::Int AutoShortcutsSuggestionsOwnerDefinitionFactory.ResolvedPhrase.CodingKeys.hashValue.getter(uint64_t a1)
{
  v1 = a1;
  OUTLINED_FUNCTION_35_1(a1);
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t AutoShortcutsSuggestionsOwnerDefinitionFactory.ResolvedPhrase.CodingKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return 0x657361726870;
  }

  if (a1 == 1)
  {
    return 0xD000000000000010;
  }

  return 0x726F68536F747561;
}

SiriLinkSuggestionsPlugin::AutoShortcutsSuggestionsOwnerDefinitionFactory::ResolvedPhrase::CodingKeys_optional protocol witness for CodingKey.init(stringValue:) in conformance AutoShortcutsSuggestionsOwnerDefinitionFactory.ResolvedPhrase.CodingKeys@<W0>(uint64_t a1@<X0>, SiriLinkSuggestionsPlugin::AutoShortcutsSuggestionsOwnerDefinitionFactory::ResolvedPhrase::CodingKeys_optional *a2@<X8>)
{
  result.value = AutoShortcutsSuggestionsOwnerDefinitionFactory.ResolvedPhrase.CodingKeys.init(stringValue:)(*&a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AutoShortcutsSuggestionsOwnerDefinitionFactory.ResolvedPhrase.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AutoShortcutsSuggestionsOwnerDefinitionFactory.ResolvedPhrase.CodingKeys and conformance AutoShortcutsSuggestionsOwnerDefinitionFactory.ResolvedPhrase.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AutoShortcutsSuggestionsOwnerDefinitionFactory.ResolvedPhrase.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AutoShortcutsSuggestionsOwnerDefinitionFactory.ResolvedPhrase.CodingKeys and conformance AutoShortcutsSuggestionsOwnerDefinitionFactory.ResolvedPhrase.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AutoShortcutsSuggestionsOwnerDefinitionFactory.ResolvedPhrase.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v33 = a2;
  v36 = type metadata accessor for NSCodingAdaptor();
  OUTLINED_FUNCTION_14_0();
  v34 = v4;
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_5_2();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy25SiriLinkSuggestionsPlugin013AutoShortcutsF22OwnerDefinitionFactoryC14ResolvedPhraseV10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy25SiriLinkSuggestionsPlugin013AutoShortcutsF22OwnerDefinitionFactoryC14ResolvedPhraseV10CodingKeysOGMR);
  OUTLINED_FUNCTION_14_0();
  v35 = v10;
  __chkstk_darwin(v11);
  v13 = &v31 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AutoShortcutsSuggestionsOwnerDefinitionFactory.ResolvedPhrase.CodingKeys and conformance AutoShortcutsSuggestionsOwnerDefinitionFactory.ResolvedPhrase.CodingKeys();
  v14 = a1;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v15 = v9;
    v39 = 2;
    v17 = v35;
    v16 = v36;
    static CodableWrapper.decode<A, B>(forType:forKey:container:)();
    v32 = v13;
    NSCodingAdaptor.data.getter();
    (*(v34 + 8))(v8, v16);
    objc_opt_self();
    v18 = swift_dynamicCastObjCClass();
    v19 = v17;
    if (v18)
    {
      v20 = v18;
      v38 = 0;
      v21 = v32;
      v22 = KeyedDecodingContainer.decode(_:forKey:)();
      v24 = v23;
      v36 = v22;
      v37 = 1;
      v25 = KeyedDecodingContainer.decode(_:forKey:)();
      v26 = v21;
      v28 = v27;
      (*(v19 + 8))(v26, v15);
      result = __swift_destroy_boxed_opaque_existential_1(v14);
      v30 = v33;
      *v33 = v36;
      v30[1] = v24;
      v30[2] = v25;
      v30[3] = v28;
      v30[4] = v20;
      return result;
    }

    swift_unknownObjectRelease();
    lazy protocol witness table accessor for type AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoshortcutErrors and conformance AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoshortcutErrors();
    swift_allocError();
    swift_willThrow();
    (*(v17 + 8))(v32, v15);
  }

  return __swift_destroy_boxed_opaque_existential_1(v14);
}

uint64_t AutoShortcutsSuggestionsOwnerDefinitionFactory.ResolvedPhrase.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy25SiriLinkSuggestionsPlugin013AutoShortcutsF22OwnerDefinitionFactoryC14ResolvedPhraseV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy25SiriLinkSuggestionsPlugin013AutoShortcutsF22OwnerDefinitionFactoryC14ResolvedPhraseV10CodingKeysOGMR);
  OUTLINED_FUNCTION_14_0();
  v6 = v5;
  __chkstk_darwin(v7);
  v9 = &v19[-1] - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AutoShortcutsSuggestionsOwnerDefinitionFactory.ResolvedPhrase.CodingKeys and conformance AutoShortcutsSuggestionsOwnerDefinitionFactory.ResolvedPhrase.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v20 = 2;
  v10 = v2[4];
  v19[3] = type metadata accessor for NSCodingAdaptor();
  v19[4] = _s18SiriSuggestionsKit12DefaultOwnerCAcA0E0AAWlTm_0(&lazy protocol witness table cache variable for type NSCodingAdaptor and conformance NSCodingAdaptor, 255, &type metadata accessor for NSCodingAdaptor, &protocol conformance descriptor for NSCodingAdaptor);
  __swift_allocate_boxed_opaque_existential_1(v19);
  v11 = v10;
  NSCodingAdaptor.init(data:)();
  v12 = v18;
  static CodableWrapper.encode<A>(to:forKey:instance:)();
  if (v12)
  {
    (*(v6 + 8))(v9, v4);
    return __swift_destroy_boxed_opaque_existential_1(v19);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v19);
    v14 = *v2;
    v15 = v2[1];
    LOBYTE(v19[0]) = 0;
    OUTLINED_FUNCTION_47_1(v14, v15);
    v16 = v2[2];
    v17 = v2[3];
    LOBYTE(v19[0]) = 1;
    OUTLINED_FUNCTION_47_1(v16, v17);
    return (*(v6 + 8))(v9, v4);
  }
}

double protocol witness for Decodable.init(from:) in conformance AutoShortcutsSuggestionsOwnerDefinitionFactory.ResolvedPhrase@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  AutoShortcutsSuggestionsOwnerDefinitionFactory.ResolvedPhrase.init(from:)(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

Swift::Int AutoShortcutsSuggestionsOwnerDefinitionFactory.SystemProtocolMetadata.hashValue.getter(void *a1)
{
  OUTLINED_FUNCTION_35_1(a1);
  Hasher._combine(_:)([a1 hash]);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AutoShortcutsSuggestionsOwnerDefinitionFactory.CandidateApplicationDetails.ActionMetadataExcerpt(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *, uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v8, v6);
  return Hasher._finalize()();
}

Swift::Int AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoshortcutErrors.hashValue.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_35_1(a1);
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoshortcutErrors(uint64_t a1)
{
  Hasher.init(_seed:)();
  AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoshortcutErrors.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static OwnerDefinitionFactory.createOwnerDefinitions(builderFactory:) in conformance AutoShortcutsSuggestionsOwnerDefinitionFactory(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = static AppIntentsSuggestionsOwnerDefinitionFactory.createAppIntentSuggestions(linkClient:toolClient:builder:);

  return static AutoShortcutsSuggestionsOwnerDefinitionFactory.createOwnerDefinitions(builderFactory:)(a1, a2);
}

uint64_t DialogProperties.resolvedPhrase.getter@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t a2@<X8>)
{
  v3 = a1();
  specialized Dictionary.subscript.getter(0xD000000000000013, 0x8000000000042F20, v3, &v13);

  if (!v14)
  {
    result = outlined destroy of CoreSignalTypes?(&v13, &_sypSgMd, &_sypSgMR);
    goto LABEL_5;
  }

  result = swift_dynamicCast();
  if (!result)
  {
LABEL_5:
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0uLL;
    goto LABEL_6;
  }

  v5 = v9;
  v6 = v10;
  v7 = v11;
  v8 = v12;
LABEL_6:
  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
  *(a2 + 24) = v8;
  return result;
}

uint64_t LNActionMetadata.isConditionallyEnabled.getter()
{
  v1 = [v0 systemProtocols];
  type metadata accessor for NSTextCheckingResult(0, &lazy cache variable for type metadata for LNSystemProtocol, LNSystemProtocol_ptr);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = [objc_opt_self() conditionallyEnabledProtocol];
  v8 = v3;
  v7[2] = &v8;
  specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v7, v2);
  v5 = v4;

  return v5 & 1;
}

unint64_t specialized Array._checkSubscript(_:wasNativeTypeChecked:)(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t specialized closure #1 in Sequence<>.contains(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t specialized MutableCollection<>.sort(by:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  swift_bridgeObjectRetain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v4);
    *a1 = v4;
  }

  v6 = *(v4 + 16);
  v8[0] = v4 + 32;
  v8[1] = v6;

  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, a2);
  specialized ContiguousArray._endMutation()();
  return swift_bridgeObjectRelease_n();
}

Swift::Int specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1, uint64_t a2)
{
  v5 = a1[1];
  swift_bridgeObjectRetain_n();
  result = _minimumMergeRunLength(_:)(v5);
  if (result < v5)
  {
    v7 = result;
    UninitializedySayxG_SpyxGtSiFZSo14LNAutoShortcutC_Tt0g5 = _sSa22_allocateUninitializedySayxG_SpyxGtSiFZSo14LNAutoShortcutC_Tt0g5(v5 / 2);
    v10[0] = v9;
    v10[1] = (v5 / 2);

    result = specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v10, v11, a1, v7, a2);
    if (v2)
    {
      if (v5 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v5 < -1)
    {
LABEL_12:
      __break(1u);
      return result;
    }

    *(&dword_10 + (UninitializedySayxG_SpyxGtSiFZSo14LNAutoShortcutC_Tt0g5 & 0xFFFFFFFFFFFFFF8)) = 0;
    swift_bridgeObjectRelease_n();
  }

LABEL_5:
  if (v5 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v5)
  {
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v5, 1, a1, a2);
  }

  return swift_bridgeObjectRelease_n();
}

void specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 != a2)
  {
    v6 = a3;
    v7 = *a4;
    v8 = a5 + 56;
    v38 = *a4;
    do
    {
      v9 = *(v7 + 8 * v6);
      v37 = v6;
LABEL_4:
      v10 = v6 - 1;
      v11 = *(v7 + 8 * (v6 - 1));
      v12 = v9;
      v40 = v11;
      v39 = v12;
      v13 = [v12 actionIdentifier];
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      if (*(a5 + 16))
      {
        Hasher.init(_seed:)();
        String.hash(into:)();
        v17 = Hasher._finalize()();
        v18 = ~(-1 << *(a5 + 32));
        do
        {
          v19 = v17 & v18;
          v20 = (1 << (v17 & v18)) & *(v8 + (((v17 & v18) >> 3) & 0xFFFFFFFFFFFFFF8));
          v21 = v20 != 0;
          if (!v20)
          {
            break;
          }

          v22 = (*(a5 + 48) + 16 * v19);
          if (*v22 == v14 && v22[1] == v16)
          {
            break;
          }

          v24 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v17 = v19 + 1;
        }

        while ((v24 & 1) == 0);
      }

      else
      {
        v21 = 0;
      }

      v25 = [v40 actionIdentifier];
      v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = v27;

      if (*(a5 + 16))
      {
        Hasher.init(_seed:)();
        String.hash(into:)();
        v29 = Hasher._finalize()();
        v30 = ~(-1 << *(a5 + 32));
        while (1)
        {
          v31 = v29 & v30;
          if (((*(v8 + (((v29 & v30) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v29 & v30)) & 1) == 0)
          {
            break;
          }

          v32 = (*(a5 + 48) + 16 * v31);
          if (*v32 != v26 || v32[1] != v28)
          {
            v34 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v29 = v31 + 1;
            if ((v34 & 1) == 0)
            {
              continue;
            }
          }

          v7 = v38;
          if (v21)
          {
            goto LABEL_27;
          }

          if (!v38)
          {
            __break(1u);
            return;
          }

          v9 = *(v38 + 8 * v6);
          *(v38 + 8 * v6) = *(v38 + 8 * v10);
          *(v38 + 8 * v10) = v9;
          --v6;
          if (v10 != a1)
          {
            goto LABEL_4;
          }

          goto LABEL_27;
        }
      }

      v7 = v38;
LABEL_27:
      v6 = v37 + 1;
    }

    while (v37 + 1 != a2);
  }
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(id *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  v6 = a3[1];
  if (v6 < 1)
  {
    swift_bridgeObjectRetain_n();
    v8 = _swiftEmptyArrayStorage;
LABEL_136:
    v165 = *a1;
    if (!*a1)
    {
      goto LABEL_179;
    }

    swift_bridgeObjectRetain_n();
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_138:
      v135 = (v8 + 16);
      v136 = *(v8 + 16);
      for (i = v8; ; v8 = i)
      {
        if (v136 < 2)
        {

          return swift_bridgeObjectRelease_n();
        }

        v137 = *a3;
        if (!*a3)
        {
          goto LABEL_176;
        }

        v138 = (v8 + 16 * v136);
        v139 = *v138;
        v140 = v135;
        v141 = &v135[2 * v136];
        v8 = v141[1];
        v142 = (v137 + 8 * *v138);
        v143 = (v137 + 8 * *v141);
        v167 = (v137 + 8 * v8);

        specialized _merge<A>(low:mid:high:buffer:by:)(v142, v143, v167, v165, v5);
        if (v164)
        {
          break;
        }

        if (v8 < v139)
        {
          goto LABEL_164;
        }

        if (v136 - 2 >= *v140)
        {
          goto LABEL_165;
        }

        v135 = v140;
        *v138 = v139;
        v138[1] = v8;
        v144 = *v140 - v136;
        if (*v140 < v136)
        {
          goto LABEL_166;
        }

        v136 = *v140 - 1;
        memmove(v141, v141 + 2, 16 * v144);
        *v140 = v136;
      }

      swift_bridgeObjectRelease_n();
    }

LABEL_173:
    v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
    goto LABEL_138;
  }

  v166 = a5 + 56;
  swift_bridgeObjectRetain_n();
  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  v162 = v5;
LABEL_3:
  v9 = v7 + 1;
  if (v7 + 1 >= v6)
  {
    goto LABEL_46;
  }

  v10 = v7;
  v148 = v8;
  v153 = *a3;
  v11 = *(*a3 + 8 * v7);
  v156 = v6;
  v12 = *(*a3 + 8 * v9);
  v13 = v11;
  v14 = [v12 actionIdentifier];
  v159 = v7 + 1;
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  v18 = specialized Set.contains(_:)(v15, v17, v5);

  v19 = [v13 actionIdentifier];
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  LOBYTE(v19) = specialized Set.contains(_:)(v20, v22, v5);
  v23 = v156;

  v154 = !v18 & v19;
  v24 = v159;
  v151 = v10;
  for (j = v10 + 2; ; ++j)
  {
    v8 = v24 + 1;
    if (v24 + 1 >= v23)
    {
      break;
    }

    v26 = *(v153 + 8 * v24);
    v27 = *(v153 + 8 * v8);
    v28 = v26;
    v165 = v27;
    v29 = [v27 actionIdentifier];
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    if (*(v5 + 16))
    {
      Hasher.init(_seed:)();
      String.hash(into:)();
      v33 = Hasher._finalize()();
      v34 = ~(-1 << *(v5 + 32));
      do
      {
        v35 = v33 & v34;
        v36 = (1 << (v33 & v34)) & *(v166 + (((v33 & v34) >> 3) & 0xFFFFFFFFFFFFFF8));
        v37 = v36 != 0;
        if (!v36)
        {
          break;
        }

        v38 = (*(v5 + 48) + 16 * v35);
        if (*v38 == v30 && v38[1] == v32)
        {
          break;
        }

        v40 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v33 = v35 + 1;
      }

      while ((v40 & 1) == 0);
    }

    else
    {
      v37 = 0;
    }

    v41 = [v28 actionIdentifier];
    v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = v43;

    if (!*(v5 + 16))
    {
LABEL_26:
      v23 = v156;

LABEL_27:
      if (v154)
      {
        goto LABEL_32;
      }

      goto LABEL_30;
    }

    Hasher.init(_seed:)();
    String.hash(into:)();
    v45 = Hasher._finalize()();
    v46 = ~(-1 << *(v5 + 32));
    do
    {
      v47 = v45 & v46;
      if (((*(v166 + (((v45 & v46) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v45 & v46)) & 1) == 0)
      {
        goto LABEL_26;
      }

      v48 = (*(v5 + 48) + 16 * v47);
      if (*v48 == v42 && v48[1] == v44)
      {
        break;
      }

      v50 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v45 = v47 + 1;
    }

    while ((v50 & 1) == 0);

    if (v37)
    {
      v23 = v156;
      goto LABEL_27;
    }

    v23 = v156;
    if ((v154 & 1) == 0)
    {
      goto LABEL_42;
    }

LABEL_30:
    v24 = v8;
  }

  v8 = v23;
  if ((v154 & 1) == 0)
  {
    v9 = v23;
    goto LABEL_45;
  }

LABEL_32:
  v51 = v151;
  if (v8 < v151)
  {
    goto LABEL_170;
  }

  if (v151 >= v8)
  {
    v9 = v8;
    v8 = v148;
    v7 = v151;
  }

  else
  {
    if (v23 >= j)
    {
      v52 = j;
    }

    else
    {
      v52 = v23;
    }

    v53 = 8 * v52 - 8;
    v54 = 8 * v151;
    v55 = v8;
    do
    {
      if (v51 != --v55)
      {
        v56 = *a3;
        if (!*a3)
        {
          goto LABEL_177;
        }

        v57 = *(v56 + v54);
        *(v56 + v54) = *(v56 + v53);
        *(v56 + v53) = v57;
      }

      ++v51;
      v53 -= 8;
      v54 += 8;
    }

    while (v51 < v55);
LABEL_42:
    v9 = v8;
LABEL_45:
    v8 = v148;
    v7 = v151;
  }

LABEL_46:
  v58 = a3[1];
  if (v9 >= v58)
  {
    goto LABEL_82;
  }

  if (__OFSUB__(v9, v7))
  {
LABEL_169:
    __break(1u);
LABEL_170:
    __break(1u);
LABEL_171:
    __break(1u);
LABEL_172:
    __break(1u);
    goto LABEL_173;
  }

  if (v9 - v7 >= a4)
  {
    goto LABEL_82;
  }

  v59 = v7 + a4;
  if (__OFADD__(v7, a4))
  {
    goto LABEL_171;
  }

  if (v59 >= v58)
  {
    v59 = a3[1];
  }

  if (v59 < v7)
  {
    goto LABEL_172;
  }

  if (v9 == v59)
  {
    goto LABEL_82;
  }

  v149 = v8;
  v152 = v7;
  v60 = *a3;
  v155 = v59;
  v157 = *a3;
  while (2)
  {
    v61 = *(v60 + 8 * v9);
    v160 = v9;
LABEL_56:
    v62 = v9 - 1;
    v63 = *(v60 + 8 * (v9 - 1));
    v64 = v61;
    v165 = v63;
    v65 = v64;
    v66 = [v64 actionIdentifier];
    v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v69 = v68;

    if (*(v5 + 16))
    {
      Hasher.init(_seed:)();
      String.hash(into:)();
      v70 = Hasher._finalize()();
      v71 = ~(-1 << *(v5 + 32));
      do
      {
        v72 = v70 & v71;
        v73 = (1 << (v70 & v71)) & *(v166 + (((v70 & v71) >> 3) & 0xFFFFFFFFFFFFFF8));
        v74 = v73 != 0;
        if (!v73)
        {
          break;
        }

        v75 = (*(v5 + 48) + 16 * v72);
        if (*v75 == v67 && v75[1] == v69)
        {
          break;
        }

        v77 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v70 = v72 + 1;
      }

      while ((v77 & 1) == 0);
    }

    else
    {
      v74 = 0;
    }

    v78 = [v165 actionIdentifier];
    v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v81 = v80;

    if (!*(v5 + 16))
    {
LABEL_78:

LABEL_79:
      v60 = v157;
LABEL_80:
      v9 = v160 + 1;
      if (v160 + 1 != v155)
      {
        continue;
      }

      v9 = v155;
      v8 = v149;
      v7 = v152;
LABEL_82:
      if (v9 >= v7)
      {
        v161 = v9;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v8 = v133;
        }

        v88 = *(v8 + 16);
        v89 = v88 + 1;
        if (v88 >= *(v8 + 24) >> 1)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v8 = v134;
        }

        *(v8 + 16) = v89;
        v90 = v8 + 32;
        v91 = (v8 + 32 + 16 * v88);
        *v91 = v7;
        v91[1] = v161;
        v165 = *a1;
        if (!*a1)
        {
          goto LABEL_178;
        }

        if (!v88)
        {
LABEL_132:
          v6 = a3[1];
          v7 = v161;
          if (v161 >= v6)
          {
            goto LABEL_136;
          }

          goto LABEL_3;
        }

        v158 = v8 + 32;
        while (1)
        {
          v92 = v89 - 1;
          v93 = (v90 + 16 * (v89 - 1));
          v94 = (v8 + 16 * v89);
          if (v89 >= 4)
          {
            break;
          }

          if (v89 == 3)
          {
            v95 = *(v8 + 32);
            v96 = *(v8 + 40);
            v105 = __OFSUB__(v96, v95);
            v97 = v96 - v95;
            v98 = v105;
LABEL_103:
            if (v98)
            {
              goto LABEL_155;
            }

            v110 = *v94;
            v109 = v94[1];
            v111 = __OFSUB__(v109, v110);
            v112 = v109 - v110;
            v113 = v111;
            if (v111)
            {
              goto LABEL_158;
            }

            v114 = v93[1];
            v115 = v114 - *v93;
            if (__OFSUB__(v114, *v93))
            {
              goto LABEL_161;
            }

            if (__OFADD__(v112, v115))
            {
              goto LABEL_163;
            }

            if (v112 + v115 >= v97)
            {
              if (v97 < v115)
              {
                v92 = v89 - 2;
              }

              goto LABEL_125;
            }

            goto LABEL_118;
          }

          if (v89 < 2)
          {
            goto LABEL_157;
          }

          v117 = *v94;
          v116 = v94[1];
          v105 = __OFSUB__(v116, v117);
          v112 = v116 - v117;
          v113 = v105;
LABEL_118:
          if (v113)
          {
            goto LABEL_160;
          }

          v119 = *v93;
          v118 = v93[1];
          v105 = __OFSUB__(v118, v119);
          v120 = v118 - v119;
          if (v105)
          {
            goto LABEL_162;
          }

          if (v120 < v112)
          {
            goto LABEL_132;
          }

LABEL_125:
          if (v92 - 1 >= v89)
          {
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
LABEL_155:
            __break(1u);
LABEL_156:
            __break(1u);
LABEL_157:
            __break(1u);
LABEL_158:
            __break(1u);
LABEL_159:
            __break(1u);
LABEL_160:
            __break(1u);
LABEL_161:
            __break(1u);
LABEL_162:
            __break(1u);
LABEL_163:
            __break(1u);
LABEL_164:
            __break(1u);
LABEL_165:
            __break(1u);
LABEL_166:
            __break(1u);
LABEL_167:
            __break(1u);
            goto LABEL_168;
          }

          v124 = *a3;
          if (!*a3)
          {
            swift_bridgeObjectRelease_n();
            __break(1u);
            goto LABEL_175;
          }

          v125 = v8;
          v126 = (v90 + 16 * (v92 - 1));
          v127 = *v126;
          v5 = v92;
          v128 = (v90 + 16 * v92);
          v8 = v128[1];
          v129 = (v124 + 8 * *v126);
          v130 = (v124 + 8 * *v128);
          v131 = (v124 + 8 * v8);

          specialized _merge<A>(low:mid:high:buffer:by:)(v129, v130, v131, v165, v162);
          if (v164)
          {
            swift_bridgeObjectRelease_n();
          }

          if (v8 < v127)
          {
            goto LABEL_150;
          }

          v132 = *(v125 + 16);
          if (v5 > v132)
          {
            goto LABEL_151;
          }

          *v126 = v127;
          v126[1] = v8;
          if (v5 >= v132)
          {
            goto LABEL_152;
          }

          v89 = v132 - 1;
          memmove(v128, v128 + 2, 16 * (v132 - 1 - v5));
          v8 = v125;
          *(v125 + 16) = v132 - 1;
          v90 = v158;
          v5 = v162;
          if (v132 <= 2)
          {
            goto LABEL_132;
          }
        }

        v99 = v90 + 16 * v89;
        v100 = *(v99 - 64);
        v101 = *(v99 - 56);
        v105 = __OFSUB__(v101, v100);
        v102 = v101 - v100;
        if (v105)
        {
          goto LABEL_153;
        }

        v104 = *(v99 - 48);
        v103 = *(v99 - 40);
        v105 = __OFSUB__(v103, v104);
        v97 = v103 - v104;
        v98 = v105;
        if (v105)
        {
          goto LABEL_154;
        }

        v106 = v94[1];
        v107 = v106 - *v94;
        if (__OFSUB__(v106, *v94))
        {
          goto LABEL_156;
        }

        v105 = __OFADD__(v97, v107);
        v108 = v97 + v107;
        if (v105)
        {
          goto LABEL_159;
        }

        if (v108 >= v102)
        {
          v122 = *v93;
          v121 = v93[1];
          v105 = __OFSUB__(v121, v122);
          v123 = v121 - v122;
          if (v105)
          {
            goto LABEL_167;
          }

          if (v97 < v123)
          {
            v92 = v89 - 2;
          }

          goto LABEL_125;
        }

        goto LABEL_103;
      }

LABEL_168:
      __break(1u);
      goto LABEL_169;
    }

    break;
  }

  Hasher.init(_seed:)();
  String.hash(into:)();
  v82 = Hasher._finalize()();
  v83 = ~(-1 << *(v5 + 32));
  do
  {
    v84 = v82 & v83;
    if (((*(v166 + (((v82 & v83) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v82 & v83)) & 1) == 0)
    {
      goto LABEL_78;
    }

    v85 = (*(v5 + 48) + 16 * v84);
    if (*v85 == v79 && v85[1] == v81)
    {
      break;
    }

    v87 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v82 = v84 + 1;
  }

  while ((v87 & 1) == 0);

  if (v74)
  {
    goto LABEL_79;
  }

  v60 = v157;
  if (v157)
  {
    v61 = *(v157 + 8 * v9);
    *(v157 + 8 * v9) = *(v157 + 8 * v62);
    *(v157 + 8 * v62) = v61;
    --v9;
    if (v62 == v152)
    {
      goto LABEL_80;
    }

    goto LABEL_56;
  }

LABEL_175:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_176:

  __break(1u);
LABEL_177:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_178:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_179:
  result = swift_bridgeObjectRelease_n();
  __break(1u);
  return result;
}