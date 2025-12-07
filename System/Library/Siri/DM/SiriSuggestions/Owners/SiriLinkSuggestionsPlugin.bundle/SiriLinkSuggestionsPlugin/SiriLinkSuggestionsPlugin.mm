uint64_t LinkSuggestionsOwnerDefinition.init(linkClient:dialogIdProvider:)(__int128 *a1, __int128 *a2)
{
  outlined init with take of SiriSuggestions.DisplayRepresentable(a1, v2 + 16);
  outlined init with take of SiriSuggestions.DisplayRepresentable(a2, v2 + 56);
  return v2;
}

uint64_t outlined init with take of SiriSuggestions.DisplayRepresentable(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t LinkSuggestionsOwnerDefinition.getSourceGenerator()@<X0>(uint64_t *a1@<X8>)
{
  outlined init with copy of LinkClient(v1 + 16, v6);
  v3 = type metadata accessor for LinkSuggestionsGenerator();
  v4 = swift_allocObject();
  outlined init with take of SiriSuggestions.DisplayRepresentable(v6, v4 + 16);
  a1[3] = v3;
  result = lazy protocol witness table accessor for type LinkSuggestionsGenerator and conformance LinkSuggestionsGenerator(&lazy protocol witness table cache variable for type LinkSuggestionsGenerator and conformance LinkSuggestionsGenerator, 255, type metadata accessor for LinkSuggestionsGenerator, &protocol conformance descriptor for LinkSuggestionsGenerator);
  a1[4] = result;
  *a1 = v4;
  return result;
}

uint64_t LinkSuggestionsOwnerDefinition.getTargetOwnerDefinition()@<X0>(uint64_t *a1@<X8>)
{
  outlined init with copy of LinkClient(v1 + 16, v8);
  outlined init with copy of LinkClient(v1 + 56, v7);
  v3 = type metadata accessor for LinkSuggestionsTargetOwnerDefinition();
  v4 = swift_allocObject();
  outlined init with take of SiriSuggestions.DisplayRepresentable(v8, v4 + 16);
  outlined init with take of SiriSuggestions.DisplayRepresentable(v7, v4 + 56);
  a1[3] = v3;
  result = lazy protocol witness table accessor for type LinkSuggestionsGenerator and conformance LinkSuggestionsGenerator(&lazy protocol witness table cache variable for type LinkSuggestionsTargetOwnerDefinition and conformance LinkSuggestionsTargetOwnerDefinition, v5, type metadata accessor for LinkSuggestionsTargetOwnerDefinition, &protocol conformance descriptor for LinkSuggestionsTargetOwnerDefinition);
  a1[4] = result;
  *a1 = v4;
  return result;
}

uint64_t LinkSuggestionsOwnerDefinition.__allocating_init(linkClient:dialogIdProvider:)(__int128 *a1, __int128 *a2)
{
  v4 = swift_allocObject();
  outlined init with take of SiriSuggestions.DisplayRepresentable(a1, v4 + 16);
  outlined init with take of SiriSuggestions.DisplayRepresentable(a2, v4 + 56);
  return v4;
}

uint64_t LinkSuggestionsOwnerDefinition.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  return v0;
}

uint64_t LinkSuggestionsTargetOwnerDefinition.getSuggestionsRepo()@<X0>(uint64_t *a1@<X8>)
{
  outlined init with copy of LinkClient(v1 + 56, v6);
  v3 = type metadata accessor for LinkSuggestionsRepository();
  v4 = swift_allocObject();
  outlined init with take of SiriSuggestions.DisplayRepresentable(v6, v4 + 16);
  a1[3] = v3;
  result = lazy protocol witness table accessor for type LinkSuggestionsGenerator and conformance LinkSuggestionsGenerator(&lazy protocol witness table cache variable for type LinkSuggestionsRepository and conformance LinkSuggestionsRepository, 255, type metadata accessor for LinkSuggestionsRepository, &protocol conformance descriptor for LinkSuggestionsRepository);
  a1[4] = result;
  *a1 = v4;
  return result;
}

uint64_t LinkSuggestionsTargetOwnerDefinition.getSuggestionsResolvers()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy18SiriSuggestionsKit8Resolver_pGMd, &_ss23_ContiguousArrayStorageCy18SiriSuggestionsKit8Resolver_pGMR);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_3EFC0;
  outlined init with copy of LinkClient(v0 + 16, v5);
  v2 = type metadata accessor for LinkActionResolver();
  v3 = swift_allocObject();
  strcpy((v3 + 16), "linkActionType");
  *(v3 + 31) = -18;
  outlined init with take of SiriSuggestions.DisplayRepresentable(v5, v3 + 32);
  *(v1 + 56) = v2;
  *(v1 + 64) = lazy protocol witness table accessor for type LinkSuggestionsGenerator and conformance LinkSuggestionsGenerator(&lazy protocol witness table cache variable for type LinkActionResolver and conformance LinkActionResolver, 255, type metadata accessor for LinkActionResolver, &protocol conformance descriptor for LinkActionResolver);
  *(v1 + 32) = v3;
  return v1;
}

uint64_t LinkSuggestionsTargetOwnerDefinition.getSuggestionsFilter()@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for NoOpSuggestionFilter();
  result = static NoOpSuggestionFilter.Instance.getter();
  a1[3] = v2;
  a1[4] = &protocol witness table for NoOpSuggestionFilter;
  *a1 = result;
  return result;
}

uint64_t LinkSuggestionsOwnerDefinition.getOwner()@<X0>(uint64_t *a1@<X8>)
{
  if (one-time initialization token for linkOwner != -1)
  {
    swift_once();
  }

  v2 = static LinkSuggestionsOwners.linkOwner;
  a1[3] = type metadata accessor for DefaultOwner();
  a1[4] = lazy protocol witness table accessor for type LinkSuggestionsGenerator and conformance LinkSuggestionsGenerator(&lazy protocol witness table cache variable for type DefaultOwner and conformance DefaultOwner, 255, &type metadata accessor for DefaultOwner, &protocol conformance descriptor for DefaultOwner);
  *a1 = v2;
}

uint64_t LinkSuggestionsOwnerDefinition.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return _swift_deallocClassInstance(v0, 96, 7);
}

uint64_t outlined init with copy of LinkClient(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t lazy protocol witness table accessor for type LinkSuggestionsGenerator and conformance LinkSuggestionsGenerator(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t variable initialization expression of DefaultToolClient.toolSessionSetupTask()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  __chkstk_darwin(v0 - 8);
  v2 = &v6 - v1;
  v3 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  return _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC7ToolKit0E16ExecutionSession_p_Tt2g5(0, 0, v2, &async function pointer to partial apply for closure #1 in variable initialization expression of DefaultToolClient.toolSessionSetupTask, v4);
}

uint64_t _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC7ToolKit0E16ExecutionSession_p_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  __chkstk_darwin(v8 - 8);
  v10 = v21 - v9;
  outlined init with copy of TaskPriority?(a3, v21 - v9);
  v11 = type metadata accessor for TaskPriority();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);

  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of TaskPriority?(v10);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v11 - 8) + 8))(v10, v11);
  }

  v13 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v13)
  {
    swift_getObjectType();
    v14 = dispatch thunk of Actor.unownedExecutor.getter();
    v16 = v15;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v17 = String.utf8CString.getter() + 32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7ToolKit0A16ExecutionSession_pMd, &_s7ToolKit0A16ExecutionSession_pMR);
      v18 = (v16 | v14);
      if (v16 | v14)
      {
        v22[0] = 0;
        v22[1] = 0;
        v18 = v22;
        v22[2] = v14;
        v22[3] = v16;
      }

      v21[1] = 7;
      v21[2] = v18;
      v21[3] = v17;
      v19 = swift_task_create();

      outlined destroy of TaskPriority?(a3);

      return v19;
    }
  }

  else
  {
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of TaskPriority?(a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7ToolKit0A16ExecutionSession_pMd, &_s7ToolKit0A16ExecutionSession_pMR);
  if (v16 | v14)
  {
    v22[4] = 0;
    v22[5] = 0;
    v22[6] = v14;
    v22[7] = v16;
  }

  return swift_task_create();
}

uint64_t default argument 3 of LinkClientResolver.getAppIntentAction(from:for:withParameters:andSalientEntities:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay22IntelligenceFlowShared16RetrievedContextVGMd, &_sSay22IntelligenceFlowShared16RetrievedContextVGMR);

  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t default argument 1 of MetaDataSourcedAppIntentResolver.init(linkClient:toolClient:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for DefaultToolClient();
  swift_allocObject();
  result = DefaultToolClient.init()();
  a1[3] = v2;
  a1[4] = &protocol witness table for DefaultToolClient;
  *a1 = result;
  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
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

uint64_t specialized == infix<A>(_:_:)(unsigned __int8 a1, char a2)
{
  v2 = 1802398060;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x6E65746E49707061;
    }

    else
    {
      v4 = 0x726F68736F747561;
    }

    if (v3 == 1)
    {
      v5 = 0xEA00000000007374;
    }

    else
    {
      v5 = 0xED00007374756374;
    }
  }

  else
  {
    v5 = 0xE400000000000000;
    v4 = 1802398060;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x6E65746E49707061;
    }

    else
    {
      v2 = 0x726F68736F747561;
    }

    if (a2 == 1)
    {
      v6 = 0xEA00000000007374;
    }

    else
    {
      v6 = 0xED00007374756374;
    }
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
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

uint64_t variable initialization expression of LinkViewProvider.invocationActionProvider()
{
  type metadata accessor for LinkInvocationActionProvider();

  return swift_allocObject();
}

uint64_t sub_26FC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t partial apply for closure #1 in variable initialization expression of DefaultToolClient.toolSessionSetupTask(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = partial apply for closure #1 in variable initialization expression of DefaultToolClient.toolSessionSetupTask;

  return closure #1 in variable initialization expression of DefaultToolClient.toolSessionSetupTask();
}

uint64_t partial apply for closure #1 in variable initialization expression of DefaultToolClient.toolSessionSetupTask()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

id variable initialization expression of AutoShortcutsSuggestionsOwnerDefinitionFactory.OnRequestAutoShortcuts.lock()
{
  v0 = objc_allocWithZone(NSLock);

  return [v0 init];
}

id variable initialization expression of LinkRegistryObserver.notificationCenter()
{
  v0 = [objc_opt_self() defaultCenter];

  return v0;
}

uint64_t protocol witness for SetAlgebra.init() in conformance NSMatchingOptions@<X0>(uint64_t *a1@<X8>)
{
  result = variable initialization expression of AutoShortcutsSuggestionsOwnerDefinitionFactory.OnRequestAutoShortcuts.configuratorPerBundleIdentifier();
  *a1 = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance LNExamplePhraseKind@<X0>(uint64_t a1@<X1>, Swift::OpaquePointer a2@<X2>, unint64_t *a3@<X8>)
{
  v5 = *v3;
  result = ToolParamSummary.init(toolPhrase:paramValues:)(*(&a1 - 1), a2);
  *a3 = result;
  return result;
}

NSString _sSo35LNSuggestedActionDialogParameterKeyas21_ObjectiveCBridgeableSCsACP026_unconditionallyBridgeFromF1Cyx01_F5CTypeQzSgFZTW_0@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = _ss20_SwiftNewtypeWrapperPss21_ObjectiveCBridgeable8RawValueRpzrlE026_unconditionallyBridgeFromD1CyxAD_01_D5CTypeQZSgFZSo35LNSuggestedActionDialogParameterKeya_Tt1gq5Tm(a2);
  *a1 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance LNSuggestedActionDialogParameterKey@<X0>(uint64_t *a1@<X8>)
{
  result = LNSuggestedActionDialogParameterKey.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance LNSuggestedActionDialogParameterKey@<X0>(void *a2@<X8>)
{
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance LNSuggestedActionDialogParameterKey(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LinkSuggestionsGenerator and conformance LinkSuggestionsGenerator(&lazy protocol witness table cache variable for type LNSuggestedActionDialogParameterKey and conformance LNSuggestedActionDialogParameterKey, 255, type metadata accessor for LNSuggestedActionDialogParameterKey, &protocol conformance descriptor for LNSuggestedActionDialogParameterKey);
  v3 = lazy protocol witness table accessor for type LinkSuggestionsGenerator and conformance LinkSuggestionsGenerator(&lazy protocol witness table cache variable for type LNSuggestedActionDialogParameterKey and conformance LNSuggestedActionDialogParameterKey, 255, type metadata accessor for LNSuggestedActionDialogParameterKey, &protocol conformance descriptor for LNSuggestedActionDialogParameterKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance LNSystemProtocolIdentifier(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LinkSuggestionsGenerator and conformance LinkSuggestionsGenerator(&lazy protocol witness table cache variable for type LNSystemProtocolIdentifier and conformance LNSystemProtocolIdentifier, 255, type metadata accessor for LNSystemProtocolIdentifier, &protocol conformance descriptor for LNSystemProtocolIdentifier);
  v3 = lazy protocol witness table accessor for type LinkSuggestionsGenerator and conformance LinkSuggestionsGenerator(&lazy protocol witness table cache variable for type LNSystemProtocolIdentifier and conformance LNSystemProtocolIdentifier, 255, type metadata accessor for LNSystemProtocolIdentifier, &protocol conformance descriptor for LNSystemProtocolIdentifier);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

Swift::Int _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = &_swiftEmptySetSingleton;
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  result = static _SetStorage.allocate(capacity:)();
  v3 = result;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_19:

    return v3;
  }

  v5 = 0;
  v6 = result + 56;
  while (v5 < *(a1 + 16))
  {
    v7 = (a1 + 32 + 16 * v5);
    v9 = *v7;
    v8 = v7[1];
    ++v5;
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v10 = ~(-1 << v3[32]);
    while (1)
    {
      v11 = result & v10;
      v12 = (result & v10) >> 6;
      v13 = *(v6 + 8 * v12);
      v14 = 1 << (result & v10);
      if ((v14 & v13) == 0)
      {
        break;
      }

      v15 = (*(v3 + 6) + 16 * v11);
      v16 = *v15 == v9 && v15[1] == v8;
      if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        goto LABEL_16;
      }

      result = v11 + 1;
    }

    *(v6 + 8 * v12) = v14 | v13;
    v17 = (*(v3 + 6) + 16 * v11);
    *v17 = v9;
    v17[1] = v8;
    v18 = *(v3 + 2);
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      goto LABEL_21;
    }

    *(v3 + 2) = v20;
LABEL_16:
    if (v5 == v4)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

void type metadata accessor for LNSystemProtocolIdentifier(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t specialized _SwiftNewtypeWrapper<>.hash(into:)(uint64_t a1, uint64_t a2)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int specialized _SwiftNewtypeWrapper<>._rawHashValue(seed:)(uint64_t a1, uint64_t a2)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

uint64_t specialized == infix<A>(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

uint64_t specialized _SwiftNewtypeWrapper<>.hashValue.getter(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v1 = String.hashValue.getter();

  return v1;
}

uint64_t _ss20_SwiftNewtypeWrapperPss21_ObjectiveCBridgeable8RawValueRpzrlE016_forceBridgeFromD1C_6resultyAD_01_D5CTypeQZ_xSgztFZSo35LNSuggestedActionDialogParameterKeya_Tt1gq5Tm(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t _ss20_SwiftNewtypeWrapperPss21_ObjectiveCBridgeable8RawValueRpzrlE024_conditionallyBridgeFromD1C_6resultSbAD_01_D5CTypeQZ_xSgztFZSo35LNSuggestedActionDialogParameterKeya_Tt1gq5Tm(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

NSString _ss20_SwiftNewtypeWrapperPss21_ObjectiveCBridgeable8RawValueRpzrlE026_unconditionallyBridgeFromD1CyxAD_01_D5CTypeQZSgFZSo35LNSuggestedActionDialogParameterKeya_Tt1gq5Tm(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v1 = String._bridgeToObjectiveC()();

  return v1;
}

uint64_t outlined init with copy of TaskPriority?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of TaskPriority?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OnRequestAppIntents.__allocating_init(linkClient:)(__int128 *a1)
{
  v2 = swift_allocObject();
  outlined init with take of LinkClient(a1, v2 + 16);
  return v2;
}

uint64_t LinkSuggestionsGenerator.getSubscriptions()()
{
  v1 = v0;
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v3 = OUTLINED_FUNCTION_14();
  v5 = v4(v3, v2);
  v6 = _swiftEmptyArrayStorage;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  v8 = v7[2];
  if (v8)
  {
    v54 = v0;
    v61 = _swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8, 0);
    type metadata accessor for Signal();
    v9 = _swiftEmptyArrayStorage;
    v10 = type metadata accessor for CoreSignalTypes();
    OUTLINED_FUNCTION_5();
    v56 = lazy protocol witness table accessor for type CoreSignalTypes and conformance CoreSignalTypes(v11, 255, v12, &protocol conformance descriptor for CoreSignalTypes);
    v55 = enum case for CoreSignalTypes.app(_:);
    v13 = v7 + 5;
    do
    {
      v59 = v10;
      v60 = v56;
      v14 = __swift_allocate_boxed_opaque_existential_1(&v57);
      (*(*(v10 - 8) + 104))(v14, v55, v10);
      swift_bridgeObjectRetain_n();
      v15 = v6;
      v16 = Signal.__allocating_init(signalType:signalValue:fallbackSignals:)();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy18SiriSuggestionsKit31CandidateSuggestionConfigurator_pGMd, &_ss23_ContiguousArrayStorageCy18SiriSuggestionsKit31CandidateSuggestionConfigurator_pGMR);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_3EFC0;
      v18 = type metadata accessor for LinkSuggestionConfigurator();
      v19 = swift_allocObject();
      OUTLINED_FUNCTION_4();
      v22 = OUTLINED_FUNCTION_9(v20, v21);
      *(v22 + 24) = v23;
      *(v17 + 56) = v18;
      *(v17 + 64) = lazy protocol witness table accessor for type CoreSignalTypes and conformance CoreSignalTypes(&lazy protocol witness table cache variable for type LinkSuggestionConfigurator and conformance LinkSuggestionConfigurator, v24, type metadata accessor for LinkSuggestionConfigurator, &protocol conformance descriptor for LinkSuggestionConfigurator);
      *(v17 + 32) = v19;

      v61 = v9;
      v26 = v9[2];
      v25 = v9[3];
      if (v26 >= v25 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1);
        v9 = v61;
      }

      v9[2] = v26 + 1;
      v27 = &v9[2 * v26];
      v27[4] = v16;
      v27[5] = v17;
      v13 += 2;
      --v8;
      v6 = v15;
    }

    while (v8);

    v1 = v54;
  }

  else
  {

    v9 = _swiftEmptyArrayStorage;
  }

  v28 = _sSD_16uniquingKeysWithSDyxq_Gqd__n_q_q__q_tKXEtKcSTRd__x_q_t7ElementRtd__lufC18SiriSuggestionsKit6SignalC_SayAE31CandidateSuggestionConfigurator_pGSayAG_AItGTt1g504_s25e4Linkf49Plugin0bC9GeneratorC16getSubscriptionsSDy0aC3Kit6h8CSayAE31ijK19_pGGyFA2I_AItXEfU0_Tf1nc_n(v9);
  v29 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  v30 = OUTLINED_FUNCTION_14();
  v32 = v31(v30, v29);
  if (one-time initialization token for linkSuggestions != -1)
  {
    OUTLINED_FUNCTION_1_0(&one-time initialization token for linkSuggestions);
  }

  v33 = type metadata accessor for Logger();
  __swift_project_value_buffer(v33, static Logger.linkSuggestions);

  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = v6;
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v61 = v38;
    *v37 = 136315138;
    if (v32)
    {
      v39 = *(v32 + 16);
    }

    else
    {
      v39 = 0;
    }

    v57 = v39;
    v58 = v32 == 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
    v40 = String.init<A>(describing:)();
    v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v41, &v61);

    *(v37 + 4) = v42;
    _os_log_impl(&dword_0, v34, v35, "Found %s link apps", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v38);
    OUTLINED_FUNCTION_11(v38);
    OUTLINED_FUNCTION_11(v37);

    v6 = v36;
  }

  else
  {
  }

  type metadata accessor for Signal();
  v43 = static Signal.HomeScreen.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy18SiriSuggestionsKit31CandidateSuggestionConfigurator_pGMd, &_ss23_ContiguousArrayStorageCy18SiriSuggestionsKit31CandidateSuggestionConfigurator_pGMR);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_3EFC0;
  if (v32)
  {
    v6 = v32;
  }

  v45 = type metadata accessor for LinkHomeScreenSuggestionConfigurator();
  v46 = swift_allocObject();
  OUTLINED_FUNCTION_4();
  v49 = OUTLINED_FUNCTION_9(v47, v48);
  *(v49 + 24) = v50;
  *(v49 + 32) = v6;
  *(v44 + 56) = v45;
  *(v44 + 64) = lazy protocol witness table accessor for type CoreSignalTypes and conformance CoreSignalTypes(&lazy protocol witness table cache variable for type LinkHomeScreenSuggestionConfigurator and conformance LinkHomeScreenSuggestionConfigurator, v51, type metadata accessor for LinkHomeScreenSuggestionConfigurator, &protocol conformance descriptor for LinkHomeScreenSuggestionConfigurator);
  *(v44 + 32) = v46;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v57 = v28;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v44, v43, isUniquelyReferenced_nonNull_native);

  return v57;
}

void LinkSuggestionConfigurator.__allocating_init()()
{
  swift_allocObject();
  OUTLINED_FUNCTION_2();
  *(v0 + 16) = v1;
  *(v0 + 24) = v2;
}

void *_sSD_16uniquingKeysWithSDyxq_Gqd__n_q_q__q_tKXEtKcSTRd__x_q_t7ElementRtd__lufC18SiriSuggestionsKit6SignalC_SayAE31CandidateSuggestionConfigurator_pGSayAG_AItGTt1g504_s25e4Linkf49Plugin0bC9GeneratorC16getSubscriptionsSDy0aC3Kit6h8CSayAE31ijK19_pGGyFA2I_AItXEfU0_Tf1nc_n(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy18SiriSuggestionsKit6SignalCSayAC31CandidateSuggestionConfigurator_pGGMd, &_ss18_DictionaryStorageCy18SiriSuggestionsKit6SignalCSayAC31CandidateSuggestionConfigurator_pGGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v3 = &_swiftEmptyDictionarySingleton;
  }

  v6 = v3;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(a1, 1, &v6);
  v4 = v6;
  if (v1)
  {
  }

  return v4;
}

void LinkHomeScreenSuggestionConfigurator.__allocating_init(_:)(uint64_t a1)
{
  swift_allocObject();
  OUTLINED_FUNCTION_2();
  v2[2] = v3;
  v2[3] = v4;
  v2[4] = a1;
}

uint64_t OnRequestAppIntents.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return _swift_deallocClassInstance(v0, 56, 7);
}

uint64_t protocol witness for SignalSubscriber.getAsyncSubscriptions() in conformance LinkSuggestionsGenerator(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for SignalSubscriber.getAsyncLookupSubscriptions() in conformance LinkSuggestionsGenerator;

  return SignalSubscriber.getAsyncSubscriptions()(a1, a2);
}

uint64_t protocol witness for SignalSubscriber.getAsyncLookupSubscriptions() in conformance LinkSuggestionsGenerator(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for SignalSubscriber.getAsyncLookupSubscriptions() in conformance LinkSuggestionsGenerator;

  return SignalSubscriber.getAsyncLookupSubscriptions()(a1, a2);
}

uint64_t protocol witness for InternalGenerator.generateCandidateSuggestions(interaction:environment:factory:) in conformance LinkSuggestionsGenerator()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for InternalGenerator.generateCandidateSuggestions(interaction:environment:factory:) in conformance LinkSuggestionsGenerator;

  return LinkSuggestionsGenerator.generateCandidateSuggestions(interaction:environment:factory:)();
}

{
  OUTLINED_FUNCTION_8();
  v2 = v1;
  OUTLINED_FUNCTION_13();
  v3 = *v0;
  OUTLINED_FUNCTION_7();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

uint64_t AppIntentCandidateSuggestionConfigurator.appBundleId.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t LinkSuggestionConfigurator.updateContext(context:signal:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return OUTLINED_FUNCTION_6();
}

uint64_t LinkSuggestionConfigurator.updateContext(context:signal:)()
{
  OUTLINED_FUNCTION_8();
  v1 = EnvironmentAwareSignal.activeSignal.getter();
  v2 = LinkSuggestedActionsRequest.init(signal:)(v1);
  *(v0 + 32) = v4;
  if (v4)
  {
    v5 = *(v0 + 16);
    *(v0 + 72) = v3;
    *(v0 + 40) = v2;
    *(v0 + 48) = *v5;
    *(v0 + 56) = v5[1];
    *(v0 + 64) = swift_getObjectType();
    v7 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(LinkSuggestionConfigurator.updateContext(context:signal:), v7, v6);
  }

  else
  {
    OUTLINED_FUNCTION_10();

    return v8();
  }
}

{
  OUTLINED_FUNCTION_8();
  v4.bundleIdentifier._countAndFlagsBits = *(v0 + 40);
  *&v4.onScreen = *(v0 + 72) & 0x101;
  v4.bundleIdentifier._object = *(v0 + 32);
  Context.addSuggestedActionsRequest(_:)(v4);

  OUTLINED_FUNCTION_10();

  return v1();
}

uint64_t LinkSuggestedActionsRequest.init(signal:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriSuggestionsKit13SignalContextVSgMd, &_s18SiriSuggestionsKit13SignalContextVSgMR);
  v3 = __chkstk_darwin(v2 - 8);
  v38 = &v36[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v6 = &v36[-v5];
  v7 = type metadata accessor for CoreSignalTypes();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v36[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriSuggestionsKit15CoreSignalTypesOSg_ADtMd, "*$");
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v14 = &v36[-v13];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriSuggestionsKit15CoreSignalTypesOSgMd, &_s18SiriSuggestionsKit15CoreSignalTypesOSgMR);
  v16 = __chkstk_darwin(v15 - 8);
  v18 = &v36[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = __chkstk_darwin(v16);
  v21 = &v36[-v20];
  __chkstk_darwin(v19);
  v23 = &v36[-v22];
  v39 = a1;
  Signal.signalType.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriSuggestionsKit10SignalType_pMd, ".$");
  v24 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v23, v24 ^ 1u, 1, v7);
  (*(v8 + 104))(v21, enum case for CoreSignalTypes.app(_:), v7);
  __swift_storeEnumTagSinglePayload(v21, 0, 1, v7);
  v25 = *(v12 + 56);
  outlined init with copy of CoreSignalTypes?(v23, v14);
  outlined init with copy of CoreSignalTypes?(v21, &v14[v25]);
  OUTLINED_FUNCTION_20(v14);
  if (v26)
  {
    outlined destroy of CoreSignalTypes?(v21, &_s18SiriSuggestionsKit15CoreSignalTypesOSgMd, &_s18SiriSuggestionsKit15CoreSignalTypesOSgMR);
    OUTLINED_FUNCTION_20(&v14[v25]);
    if (v26)
    {
      outlined destroy of CoreSignalTypes?(v14, &_s18SiriSuggestionsKit15CoreSignalTypesOSgMd, &_s18SiriSuggestionsKit15CoreSignalTypesOSgMR);
      outlined destroy of CoreSignalTypes?(v23, &_s18SiriSuggestionsKit15CoreSignalTypesOSgMd, &_s18SiriSuggestionsKit15CoreSignalTypesOSgMR);
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  outlined init with copy of CoreSignalTypes?(v14, v18);
  OUTLINED_FUNCTION_20(&v14[v25]);
  if (v26)
  {
    outlined destroy of CoreSignalTypes?(v21, &_s18SiriSuggestionsKit15CoreSignalTypesOSgMd, &_s18SiriSuggestionsKit15CoreSignalTypesOSgMR);
    (*(v8 + 8))(v18, v7);
LABEL_9:
    outlined destroy of CoreSignalTypes?(v14, &_s18SiriSuggestionsKit15CoreSignalTypesOSg_ADtMd, "*$");
    outlined destroy of CoreSignalTypes?(v23, &_s18SiriSuggestionsKit15CoreSignalTypesOSgMd, &_s18SiriSuggestionsKit15CoreSignalTypesOSgMR);
LABEL_10:

    return 0;
  }

  (*(v8 + 32))(v10, &v14[v25], v7);
  OUTLINED_FUNCTION_5();
  lazy protocol witness table accessor for type CoreSignalTypes and conformance CoreSignalTypes(v28, 255, v29, &protocol conformance descriptor for CoreSignalTypes);
  v37 = dispatch thunk of static Equatable.== infix(_:_:)();
  v30 = *(v8 + 8);
  v30(v10, v7);
  outlined destroy of CoreSignalTypes?(v21, &_s18SiriSuggestionsKit15CoreSignalTypesOSgMd, &_s18SiriSuggestionsKit15CoreSignalTypesOSgMR);
  v30(v18, v7);
  outlined destroy of CoreSignalTypes?(v14, &_s18SiriSuggestionsKit15CoreSignalTypesOSgMd, &_s18SiriSuggestionsKit15CoreSignalTypesOSgMR);
  outlined destroy of CoreSignalTypes?(v23, &_s18SiriSuggestionsKit15CoreSignalTypesOSgMd, &_s18SiriSuggestionsKit15CoreSignalTypesOSgMR);
  if ((v37 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_12:
  v27 = Signal.signalValue.getter();
  Signal.context.getter();
  v31 = type metadata accessor for SignalContext();
  if (__swift_getEnumTagSinglePayload(v6, 1, v31) == 1)
  {
    outlined destroy of CoreSignalTypes?(v6, &_s18SiriSuggestionsKit13SignalContextVSgMd, &_s18SiriSuggestionsKit13SignalContextVSgMR);
  }

  else
  {
    SignalContext.onScreen.getter();
    OUTLINED_FUNCTION_15();
    (*(v32 + 8))(v6, v31);
  }

  v33 = v38;
  Signal.context.getter();
  if (__swift_getEnumTagSinglePayload(v33, 1, v31) == 1)
  {

    outlined destroy of CoreSignalTypes?(v33, &_s18SiriSuggestionsKit13SignalContextVSgMd, &_s18SiriSuggestionsKit13SignalContextVSgMR);
  }

  else
  {
    SignalContext.explicitRequest.getter();

    OUTLINED_FUNCTION_15();
    (*(v34 + 8))(v33, v31);
  }

  return v27;
}

Swift::Void __swiftcall Context.addSuggestedActionsRequest(_:)(SiriLinkSuggestionsPlugin::LinkSuggestedActionsRequest a1)
{
  v3 = *&a1.onScreen;
  object = a1.bundleIdentifier._object;
  countAndFlagsBits = a1.bundleIdentifier._countAndFlagsBits;
  v6 = Context.getSuggestedActionsRequests()(v1, v2);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9[0] = v6;
  specialized _NativeSet.update(with:isUnique:)(countAndFlagsBits, object, v3 & 0x101, isUniquelyReferenced_nonNull_native);

  v9[3] = &type metadata for LinkSuggestionsOwners;
  v9[4] = lazy protocol witness table accessor for type LinkSuggestionsOwners and conformance LinkSuggestionsOwners();
  LOBYTE(v9[0]) = 0;
  v8[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy25SiriLinkSuggestionsPlugin0B23SuggestedActionsRequestVGMd, &_sShy25SiriLinkSuggestionsPlugin0B23SuggestedActionsRequestVGMR);
  v8[0] = v6;
  Context.setParam(for:key:value:)();
  __swift_destroy_boxed_opaque_existential_1(v8);
  __swift_destroy_boxed_opaque_existential_1(v9);
}

uint64_t LinkSuggestionConfigurator.__deallocating_deinit()
{

  return _swift_deallocClassInstance(v0, 32, 7);
}

void LinkSuggestionConfigurator.init()()
{
  OUTLINED_FUNCTION_2();
  *(v0 + 16) = v1;
  *(v0 + 24) = v2;
}

uint64_t protocol witness for InternalResolver.resolverTypeOperand.getter in conformance LinkActionResolver()
{
  v1 = *(*v0 + 16);

  return v1;
}

uint64_t protocol witness for CandidateSuggestionConfigurator.updateContext(context:signal:) in conformance LinkSuggestionConfigurator(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for CandidateSuggestionConfigurator.updateContext(context:signal:) in conformance LinkSuggestionConfigurator;

  return LinkSuggestionConfigurator.updateContext(context:signal:)(a1, a2);
}

uint64_t protocol witness for CandidateSuggestionConfigurator.updateContext(context:signal:) in conformance LinkSuggestionConfigurator()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_13();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  OUTLINED_FUNCTION_10();

  return v3();
}

uint64_t protocol witness for CandidateSuggestionConfigurator.isValid(signal:) in conformance LinkSuggestionConfigurator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = protocol witness for InternalGenerator.generateCandidateSuggestions(interaction:environment:factory:) in conformance LinkSuggestionsGenerator;

  return CandidateSuggestionConfigurator.isValid(signal:)(a1, a2, a3);
}

uint64_t protocol witness for CandidateSuggestionConfigurator.isValidWithDebug(signal:) in conformance LinkSuggestionConfigurator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = protocol witness for CandidateSuggestionConfigurator.isValidWithDebug(signal:) in conformance LinkSuggestionConfigurator;

  return CandidateSuggestionConfigurator.isValidWithDebug(signal:)(a1, a2, a3);
}

{
  OUTLINED_FUNCTION_13();
  v7 = *v3;
  OUTLINED_FUNCTION_7();
  *v8 = v7;

  v9 = *(v7 + 8);

  return v9(a1, a2, a3);
}

uint64_t protocol witness for CandidateSuggestionConfiguratorFactory.create(actionIdentifier:) in conformance LinkSuggestionConfigurator(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CoreSignalTypes and conformance CoreSignalTypes(&lazy protocol witness table cache variable for type LinkSuggestionConfigurator and conformance LinkSuggestionConfigurator, a2, type metadata accessor for LinkSuggestionConfigurator, &protocol conformance descriptor for LinkSuggestionConfigurator);

  return CandidateSuggestionConfigurator.create(actionIdentifier:)(a1, a2, v4);
}

void *LinkHomeScreenSuggestionConfigurator.init(_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_2();
  v1[2] = v2;
  v1[3] = v3;
  v1[4] = v4;
  return v1;
}

uint64_t LinkHomeScreenSuggestionConfigurator.updateContext(context:signal:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_6();
}

{
  v2 = *(v1[3] + 32);
  v1[4] = v2;
  v3 = v2[2];
  v1[5] = v3;
  if (!v3)
  {
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_18();

    __asm { BRAA            X1, X16 }
  }

  v4 = v1[2];
  v1[6] = *v4;
  v1[7] = v4[1];
  v1[8] = swift_getObjectType();
  v1[9] = 0;
  v1[10] = v2[4];
  v1[11] = v2[5];
  v5 = one-time initialization token for linkSuggestions;
  swift_bridgeObjectRetain_n();
  if (v5 != -1)
  {
    OUTLINED_FUNCTION_1_0(&one-time initialization token for linkSuggestions);
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.linkSuggestions);
  OUTLINED_FUNCTION_14();

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = objc_allocWithZone(LNSuggestionsRequest);
    v12 = String._bridgeToObjectiveC()();

    v14 = OUTLINED_FUNCTION_16(v13, "initWithBundleIdentifier:onScreen:explicitRequest:");

    *(v9 + 4) = v14;
    *v10 = v14;
    OUTLINED_FUNCTION_19(&dword_0, v15, v16, "Adding homescreen request %@");
    outlined destroy of CoreSignalTypes?(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_11(v10);
    OUTLINED_FUNCTION_11(v9);
  }

  else
  {
  }

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_18();

  return _swift_task_switch(v19, v20, v21);
}

{
  v2 = v1[9] + 1;
  if (v2 == v1[5])
  {
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_18();

    __asm { BRAA            X1, X16 }
  }

  v1[9] = v2;
  v5 = v1[4] + 16 * v2;
  v1[10] = *(v5 + 32);
  v1[11] = *(v5 + 40);
  v6 = one-time initialization token for linkSuggestions;
  swift_bridgeObjectRetain_n();
  if (v6 != -1)
  {
    OUTLINED_FUNCTION_1_0(&one-time initialization token for linkSuggestions);
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.linkSuggestions);
  OUTLINED_FUNCTION_14();

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = objc_allocWithZone(LNSuggestionsRequest);
    v13 = String._bridgeToObjectiveC()();

    v15 = OUTLINED_FUNCTION_16(v14, "initWithBundleIdentifier:onScreen:explicitRequest:");

    *(v10 + 4) = v15;
    *v11 = v15;
    OUTLINED_FUNCTION_19(&dword_0, v16, v17, "Adding homescreen request %@");
    outlined destroy of CoreSignalTypes?(v11, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_11(v11);
    OUTLINED_FUNCTION_11(v10);
  }

  else
  {
  }

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_18();

  return _swift_task_switch(v18, v19, v20);
}

uint64_t LinkHomeScreenSuggestionConfigurator.updateContext(context:signal:)()
{
  OUTLINED_FUNCTION_8();
  v3.bundleIdentifier._countAndFlagsBits = *(v0 + 80);
  v3.bundleIdentifier._object = *(v0 + 88);
  *&v3.onScreen = 0;
  Context.addSuggestedActionsRequest(_:)(v3);

  return _swift_task_switch(LinkHomeScreenSuggestionConfigurator.updateContext(context:signal:), 0, 0);
}

uint64_t LinkHomeScreenSuggestionConfigurator.deinit()
{

  return v0;
}

uint64_t LinkHomeScreenSuggestionConfigurator.__deallocating_deinit()
{
  LinkHomeScreenSuggestionConfigurator.deinit();

  return _swift_deallocClassInstance(v0, 40, 7);
}

uint64_t protocol witness for CandidateSuggestionConfigurator.updateContext(context:signal:) in conformance LinkHomeScreenSuggestionConfigurator(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for CandidateSuggestionConfigurator.updateContext(context:signal:) in conformance LinkHomeScreenSuggestionConfigurator;

  return LinkHomeScreenSuggestionConfigurator.updateContext(context:signal:)(a1);
}

uint64_t protocol witness for CandidateSuggestionConfigurator.isValid(signal:) in conformance LinkHomeScreenSuggestionConfigurator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = protocol witness for SignalSubscriber.getAsyncLookupSubscriptions() in conformance LinkSuggestionsGenerator;

  return CandidateSuggestionConfigurator.isValid(signal:)(a1, a2, a3);
}

uint64_t protocol witness for CandidateSuggestionConfigurator.isValidWithDebug(signal:) in conformance LinkHomeScreenSuggestionConfigurator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = protocol witness for CandidateSuggestionConfigurator.isValidWithDebug(signal:) in conformance LinkHomeScreenSuggestionConfigurator;

  return CandidateSuggestionConfigurator.isValidWithDebug(signal:)(a1, a2, a3);
}

uint64_t protocol witness for CandidateSuggestionConfiguratorFactory.create(actionIdentifier:) in conformance LinkHomeScreenSuggestionConfigurator(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CoreSignalTypes and conformance CoreSignalTypes(&lazy protocol witness table cache variable for type LinkHomeScreenSuggestionConfigurator and conformance LinkHomeScreenSuggestionConfigurator, a2, type metadata accessor for LinkHomeScreenSuggestionConfigurator, &protocol conformance descriptor for LinkHomeScreenSuggestionConfigurator);

  return CandidateSuggestionConfigurator.create(actionIdentifier:)(a1, a2, v4);
}

void *Context.getSuggestedActionsRequests()(uint64_t a1, uint64_t a2)
{
  v3[3] = &type metadata for LinkSuggestionsOwners;
  v3[4] = lazy protocol witness table accessor for type LinkSuggestionsOwners and conformance LinkSuggestionsOwners();
  LOBYTE(v3[0]) = 0;
  Context.getParam(for:key:)();
  __swift_destroy_boxed_opaque_existential_1(v3);
  if (v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy25SiriLinkSuggestionsPlugin0B23SuggestedActionsRequestVGMd, &_sShy25SiriLinkSuggestionsPlugin0B23SuggestedActionsRequestVGMR);
    if (swift_dynamicCast())
    {
      return v3[0];
    }
  }

  else
  {
    outlined destroy of CoreSignalTypes?(v4, &_sypSgMd, &_sypSgMR);
  }

  return &_swiftEmptySetSingleton;
}

id LNSuggestionsRequest.__allocating_init(bundleIdentifier:onScreen:explicitRequest:)(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v7 = String._bridgeToObjectiveC()();

  v8 = [v6 initWithBundleIdentifier:v7 onScreen:a3 & 1 explicitRequest:a4 & 1];

  return v8;
}

uint64_t serialize(_:at:)(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

char *specialized UnsafeMutablePointer.moveInitialize(from:count:)(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_0(a3, result);
  }

  return result;
}

{
  if (a3 != result || &result[64 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_0(a3, result);
  }

  return result;
}

{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_0(a3, result);
  }

  return result;
}

{
  if (a3 != result || &result[48 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_0(a3, result);
  }

  return result;
}

{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_0(a3, result);
  }

  return result;
}

{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_0(a3, result);
  }

  return result;
}

void specialized UnsafeMutablePointer.moveInitialize(from:count:)(unint64_t a1, uint64_t a2, unint64_t a3)
{
  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, &type metadata accessor for RetrievedContext);
}

{
  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, &type metadata accessor for VersionedInvocation);
}

void specialized UnsafeMutablePointer.moveInitialize(from:count:)(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(void))
{
  if (a3 < a1 || (a4(0), OUTLINED_FUNCTION_15(), a1 + *(v8 + 72) * a2 <= a3))
  {
    a4(0);
    v10 = OUTLINED_FUNCTION_12();

    _swift_arrayInitWithTakeFrontToBack(v10);
  }

  else if (a3 != a1)
  {
    v9 = OUTLINED_FUNCTION_12();

    _swift_arrayInitWithTakeBackToFront(v9);
  }
}

uint64_t closure #1 in OSLogArguments.append(_:)(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
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

  __swift_destroy_boxed_opaque_existential_1(v11);
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

  return _swiftEmptyArrayStorage;
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
    return _swiftEmptyArrayStorage;
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
    v10 = _swiftEmptyArrayStorage;
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySnySiGGMd, &_ss23_ContiguousArrayStorageCySnySiGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

_BYTE **closure #1 in OSLogArguments.append(_:)(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void closure #1 in OSLogArguments.append(_:)(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, char a2, void *a3)
{
  v5 = 0;
  v22 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v22 == v5)
    {
    }

    if (v5 >= *(a1 + 16))
    {
      break;
    }

    v8 = *(i - 1);
    v7 = *i;
    v9 = *a3;

    v11 = specialized __RawDictionaryStorage.find<A>(_:)(v8);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_17;
    }

    v14 = v10;
    if (v9[3] >= v12 + v13)
    {
      if ((a2 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy18SiriSuggestionsKit6SignalCSayAC31CandidateSuggestionConfigurator_pGGMd, &_ss17_NativeDictionaryVy18SiriSuggestionsKit6SignalCSayAC31CandidateSuggestionConfigurator_pGGMR);
        _NativeDictionary.copy()();
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)();
      v15 = specialized __RawDictionaryStorage.find<A>(_:)(v8);
      if ((v14 & 1) != (v16 & 1))
      {
        goto LABEL_19;
      }

      v11 = v15;
    }

    v17 = *a3;
    if (v14)
    {

      *(v17[7] + 8 * v11) = v7;
    }

    else
    {
      v17[(v11 >> 6) + 8] |= 1 << v11;
      *(v17[6] + 8 * v11) = v8;
      *(v17[7] + 8 * v11) = v7;
      v18 = v17[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_18;
      }

      v17[2] = v20;
    }

    ++v5;
    a2 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  type metadata accessor for Signal();
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v5 = 0;
  v24 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v24 == v5)
    {
    }

    if (v5 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      type metadata accessor for Signal();
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      goto LABEL_22;
    }

    v8 = *(i - 1);
    v7 = *i;
    v9 = *a3;

    v11 = specialized __RawDictionaryStorage.find<A>(_:)(v8);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_19;
    }

    v14 = v10;
    if (v9[3] < v12 + v13)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_14;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy18SiriSuggestionsKit6SignalCSayAC31CandidateSuggestionConfigurator_pGGMd, &_ss17_NativeDictionaryVy18SiriSuggestionsKit6SignalCSayAC31CandidateSuggestionConfigurator_pGGMR);
      _NativeDictionary.copy()();
      if (v14)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v17 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    *(v17[6] + 8 * v11) = v8;
    *(v17[7] + 8 * v11) = v7;
    v18 = v17[2];
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      goto LABEL_20;
    }

    v17[2] = v20;
    ++v5;
    a2 = 1;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)();
  v15 = specialized __RawDictionaryStorage.find<A>(_:)(v8);
  if ((v14 & 1) != (v16 & 1))
  {
    goto LABEL_21;
  }

  v11 = v15;
  if ((v14 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  swift_allocError();
  swift_willThrow();
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
  }

LABEL_22:
  _StringGuts.grow(_:)(30);
  v22._object = 0x8000000000042600;
  v22._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v22);
  type metadata accessor for Signal();
  _print_unlocked<A, B>(_:_:)();
  v23._countAndFlagsBits = 39;
  v23._object = 0xE100000000000000;
  String.append(_:)(v23);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v30 = *(a1 + 16);
  if (!v30)
  {
  }

  v5 = 0;
  for (i = a1 + 32; ; i += 64)
  {
    if (v5 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      goto LABEL_22;
    }

    outlined init with copy of (LNActionParameterMetadata, SiriSuggestions.DisplayRepresentable?)(i, &v37, &_sSS_25SiriLinkSuggestionsPlugin15ActionParameterVtMd, &_sSS_25SiriLinkSuggestionsPlugin15ActionParameterVtMR);
    v8 = v37;
    v7 = v38;
    v35 = v37;
    v36 = v38;
    v32 = v39;
    v33 = v40;
    v34 = v41;
    v9 = *a3;
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(v37, v38);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_19;
    }

    v15 = v10;
    if (v9[3] < v14)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySS25SiriLinkSuggestionsPlugin15ActionParameterVGMd, &_ss17_NativeDictionaryVySS25SiriLinkSuggestionsPlugin15ActionParameterVGMR);
      _NativeDictionary.copy()();
      if (v15)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v18 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v19 = (v18[6] + 16 * v11);
    *v19 = v8;
    v19[1] = v7;
    v20 = (v18[7] + 48 * v11);
    v21 = v32;
    v22 = v34;
    v20[1] = v33;
    v20[2] = v22;
    *v20 = v21;
    v23 = v18[2];
    v24 = __OFADD__(v23, 1);
    v25 = v23 + 1;
    if (v24)
    {
      goto LABEL_20;
    }

    ++v5;
    v18[2] = v25;
    a2 = 1;
    if (v30 == v5)
    {
    }
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a2 & 1);
  v16 = specialized __RawDictionaryStorage.find<A>(_:)(v8, v7);
  if ((v15 & 1) != (v17 & 1))
  {
    goto LABEL_21;
  }

  v11 = v16;
  if ((v15 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v26 = swift_allocError();
  swift_willThrow();
  v42 = v26;
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if ((swift_dynamicCast() & 1) == 0)
  {

    outlined destroy of ActionParameter(&v32);
  }

LABEL_22:
  _StringGuts.grow(_:)(30);
  v28._object = 0x8000000000042600;
  v28._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v28);
  _print_unlocked<A, B>(_:_:)();
  v29._countAndFlagsBits = 39;
  v29._object = 0xE100000000000000;
  String.append(_:)(v29);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v4 = 0;
  v29 = *(a1 + 16);
  for (i = (a1 + 65); ; i += 40)
  {
    if (v29 == v4)
    {
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      goto LABEL_22;
    }

    v31 = v4;
    v6 = *(i - 33);
    v7 = *(i - 25);
    v8 = *(i - 17);
    v9 = *(i - 9);
    v32 = *i;
    v10 = *(i - 1);
    v11 = *a3;

    v13 = specialized __RawDictionaryStorage.find<A>(_:)(v6, v7);
    v14 = v11[2];
    v15 = (v12 & 1) == 0;
    v16 = v14 + v15;
    if (__OFADD__(v14, v15))
    {
      goto LABEL_19;
    }

    v17 = v12;
    if (v11[3] < v16)
    {
      break;
    }

    if (a2)
    {
      if (v12)
      {
        goto LABEL_14;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySS25SiriLinkSuggestionsPlugin0D23SuggestedActionsRequestVGMd, &_ss17_NativeDictionaryVySS25SiriLinkSuggestionsPlugin0D23SuggestedActionsRequestVGMR);
      _NativeDictionary.copy()();
      if (v17)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v20 = *a3;
    *(*a3 + 8 * (v13 >> 6) + 64) |= 1 << v13;
    v21 = (v20[6] + 16 * v13);
    *v21 = v6;
    v21[1] = v7;
    v22 = v20[7] + 24 * v13;
    *v22 = v8;
    *(v22 + 8) = v9;
    *(v22 + 16) = v10;
    *(v22 + 17) = v32;
    v23 = v20[2];
    v24 = __OFADD__(v23, 1);
    v25 = v23 + 1;
    if (v24)
    {
      goto LABEL_20;
    }

    v20[2] = v25;
    v4 = v31 + 1;
    a2 = 1;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a2 & 1);
  v18 = specialized __RawDictionaryStorage.find<A>(_:)(v6, v7);
  if ((v17 & 1) != (v19 & 1))
  {
    goto LABEL_21;
  }

  v13 = v18;
  if ((v17 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  swift_allocError();
  swift_willThrow();
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
  }

LABEL_22:
  _StringGuts.grow(_:)(30);
  v27._object = 0x8000000000042600;
  v27._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v27);
  _print_unlocked<A, B>(_:_:)();
  v28._countAndFlagsBits = 39;
  v28._object = 0xE100000000000000;
  String.append(_:)(v28);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v4 = 0;
  v27 = *(a1 + 16);
  for (i = (a1 + 56); ; i += 4)
  {
    if (v27 == v4)
    {
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      goto LABEL_22;
    }

    v29 = v4;
    v7 = *(i - 3);
    v6 = *(i - 2);
    v9 = *(i - 1);
    v8 = *i;
    v10 = *a3;

    v12 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v6);
    v13 = v10[2];
    v14 = (v11 & 1) == 0;
    if (__OFADD__(v13, v14))
    {
      goto LABEL_19;
    }

    v15 = v11;
    if (v10[3] < v13 + v14)
    {
      break;
    }

    if (a2)
    {
      if (v11)
      {
        goto LABEL_14;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVyS2SGMd, &_ss17_NativeDictionaryVyS2SGMR);
      _NativeDictionary.copy()();
      if (v15)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v18 = *a3;
    *(*a3 + 8 * (v12 >> 6) + 64) |= 1 << v12;
    v19 = (v18[6] + 16 * v12);
    *v19 = v7;
    v19[1] = v6;
    v20 = (v18[7] + 16 * v12);
    *v20 = v9;
    v20[1] = v8;
    v21 = v18[2];
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (v22)
    {
      goto LABEL_20;
    }

    v18[2] = v23;
    v4 = v29 + 1;
    a2 = 1;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)();
  v16 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v6);
  if ((v15 & 1) != (v17 & 1))
  {
    goto LABEL_21;
  }

  v12 = v16;
  if ((v15 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  swift_allocError();
  swift_willThrow();
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
  }

LABEL_22:
  _StringGuts.grow(_:)(30);
  v25._object = 0x8000000000042600;
  v25._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v25);
  _print_unlocked<A, B>(_:_:)();
  v26._countAndFlagsBits = 39;
  v26._object = 0xE100000000000000;
  String.append(_:)(v26);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v4 = 0;
  v26 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v26 == v4)
    {
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      type metadata accessor for LNSuggestedActionDialogParameterKey(0);
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      goto LABEL_22;
    }

    v6 = *(i - 1);
    v7 = *i;
    v8 = *a3;
    v9 = *(i - 2);

    v11 = specialized __RawDictionaryStorage.find<A>(_:)();
    v12 = v8[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_19;
    }

    v15 = v10;
    if (v8[3] < v14)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_14;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySo35LNSuggestedActionDialogParameterKeyaSSGMd, &_ss17_NativeDictionaryVySo35LNSuggestedActionDialogParameterKeyaSSGMR);
      _NativeDictionary.copy()();
      if (v15)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v18 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    *(v18[6] + 8 * v11) = v9;
    v19 = (v18[7] + 16 * v11);
    *v19 = v6;
    v19[1] = v7;
    v20 = v18[2];
    v21 = __OFADD__(v20, 1);
    v22 = v20 + 1;
    if (v21)
    {
      goto LABEL_20;
    }

    v18[2] = v22;
    ++v4;
    a2 = 1;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a2 & 1);
  v16 = specialized __RawDictionaryStorage.find<A>(_:)();
  if ((v15 & 1) != (v17 & 1))
  {
    goto LABEL_21;
  }

  v11 = v16;
  if ((v15 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  swift_allocError();
  swift_willThrow();
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
  }

LABEL_22:
  _StringGuts.grow(_:)(30);
  v24._object = 0x8000000000042600;
  v24._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v24);
  type metadata accessor for LNSuggestedActionDialogParameterKey(0);
  _print_unlocked<A, B>(_:_:)();
  v25._countAndFlagsBits = 39;
  v25._object = 0xE100000000000000;
  String.append(_:)(v25);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v5 = 0;
  v38 = *(a1 + 16);
  v6 = (a1 + 48);
  while (1)
  {
    if (v38 == v5)
    {
    }

    if (v5 >= *(a1 + 16))
    {
      break;
    }

    v7 = *(v6 - 2);
    v8 = *(v6 - 1);
    v40 = v6;
    v9 = *v6;
    v10 = *a3;

    v12 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v8);
    v13 = v10[2];
    v14 = (v11 & 1) == 0;
    v15 = v13 + v14;
    if (__OFADD__(v13, v14))
    {
      goto LABEL_30;
    }

    v16 = v11;
    if (v10[3] >= v15)
    {
      if ((a2 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSay22IntelligenceFlowShared16RetrievedContextVGGMd, &_ss17_NativeDictionaryVySSSay22IntelligenceFlowShared16RetrievedContextVGGMR);
        _NativeDictionary.copy()();
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v15, a2 & 1);
      v17 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v8);
      if ((v16 & 1) != (v18 & 1))
      {
        goto LABEL_36;
      }

      v12 = v17;
    }

    v19 = *a3;
    if (v16)
    {
      v37 = v5;
      v20 = a3;
      v21 = *(v19[7] + 8 * v12);
      v22 = *(v9 + 16);
      v23 = *(v21 + 16);
      v24 = v23 + v22;
      if (__OFADD__(v23, v22))
      {
        goto LABEL_32;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || (v26 = *(v21 + 24) >> 1, v26 < v24))
      {
        if (v23 <= v24)
        {
          v27 = v23 + v22;
        }

        else
        {
          v27 = v23;
        }

        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v27, 1, v21);
        v21 = v28;
        v26 = *(v28 + 24) >> 1;
      }

      a3 = v20;
      if (*(v9 + 16))
      {
        v29 = v26 - *(v21 + 16);
        type metadata accessor for RetrievedContext();
        if (v29 < v22)
        {
          goto LABEL_34;
        }

        swift_arrayInitWithCopy();

        a3 = v20;
        v5 = v37;
        if (v22)
        {
          v30 = *(v21 + 16);
          v31 = __OFADD__(v30, v22);
          v32 = v30 + v22;
          if (v31)
          {
            goto LABEL_35;
          }

          *(v21 + 16) = v32;
        }
      }

      else
      {

        v5 = v37;
        if (v22)
        {
          goto LABEL_33;
        }
      }

      *(v19[7] + 8 * v12) = v21;
    }

    else
    {
      v19[(v12 >> 6) + 8] |= 1 << v12;
      v33 = (v19[6] + 16 * v12);
      *v33 = v7;
      v33[1] = v8;
      *(v19[7] + 8 * v12) = v9;
      v34 = v19[2];
      v31 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v31)
      {
        goto LABEL_31;
      }

      v19[2] = v35;
    }

    v6 = v40 + 3;
    ++v5;
    a2 = 1;
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v30 = a3;
  v25 = *(a1 + 16);
  if (!v25)
  {
  }

  v5 = 0;
  v6 = a1 + 32;
  while (v5 < *(a1 + 16))
  {
    outlined init with copy of (LNActionParameterMetadata, SiriSuggestions.DisplayRepresentable?)(v6, v28, &_sSS_18SiriSuggestionsKit0aB0O20DisplayRepresentable_ptMd, &_sSS_18SiriSuggestionsKit0aB0O20DisplayRepresentable_ptMR);
    v8 = v28[0];
    v7 = v28[1];
    outlined init with take of SiriSuggestions.DisplayRepresentable(&v29, v27);
    v9 = *v30;
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(v8, v7);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_20;
    }

    v14 = v10;
    if (v9[3] >= v12 + v13)
    {
      if (a2)
      {
        if (v10)
        {
          goto LABEL_11;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySS18SiriSuggestionsKit0cD0O20DisplayRepresentable_pGMd, &_ss17_NativeDictionaryVySS18SiriSuggestionsKit0cD0O20DisplayRepresentable_pGMR);
        _NativeDictionary.copy()();
        if (v14)
        {
          goto LABEL_11;
        }
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)();
      v15 = specialized __RawDictionaryStorage.find<A>(_:)(v8, v7);
      if ((v14 & 1) != (v16 & 1))
      {
        goto LABEL_22;
      }

      v11 = v15;
      if (v14)
      {
LABEL_11:
        v17 = *v30;
        _s25SiriLinkSuggestionsPlugin0B6Client_pWOcTm_0(v27, v26);
        __swift_destroy_boxed_opaque_existential_1(v27);

        v18 = (v17[7] + 40 * v11);
        __swift_destroy_boxed_opaque_existential_1(v18);
        outlined init with take of SiriSuggestions.DisplayRepresentable(v26, v18);
        goto LABEL_15;
      }
    }

    v19 = *v30;
    v19[(v11 >> 6) + 8] |= 1 << v11;
    v20 = (v19[6] + 16 * v11);
    *v20 = v8;
    v20[1] = v7;
    outlined init with take of SiriSuggestions.DisplayRepresentable(v27, v19[7] + 40 * v11);
    v21 = v19[2];
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (v22)
    {
      goto LABEL_21;
    }

    v19[2] = v23;
LABEL_15:
    ++v5;
    v6 += 56;
    a2 = 1;
    if (v25 == v5)
    {
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v4 = a1;
  v5 = 0;
  v45 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v45 == v5)
    {
    }

    if (v5 >= *(v4 + 16))
    {
      break;
    }

    v46 = v5;
    v7 = *(i - 2);
    v8 = *(i - 1);
    v9 = *i;
    v10 = *a3;

    v11 = v9;
    v13 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v8);
    v14 = v10[2];
    v15 = (v12 & 1) == 0;
    if (__OFADD__(v14, v15))
    {
      goto LABEL_22;
    }

    v16 = v12;
    if (v10[3] >= v14 + v15)
    {
      if ((a2 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSo16LNActionMetadataCGMd, &_ss17_NativeDictionaryVySSSo16LNActionMetadataCGMR);
        _NativeDictionary.copy()();
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)();
      v17 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v8);
      if ((v16 & 1) != (v18 & 1))
      {
        goto LABEL_24;
      }

      v13 = v17;
    }

    v19 = *a3;
    if (v16)
    {
      v20 = one-time initialization token for appIntentsSuggestions;
      v21 = *(v19[7] + 8 * v13);
      if (v20 != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      __swift_project_value_buffer(v22, static Logger.appIntentsSuggestions);
      v23 = v21;
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v24, v25))
      {
        v41 = v25;
        v26 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v48 = v42;
        *v26 = 136315138;
        v43 = v23;
        v27 = [v23 identifier];
        v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        log = v24;
        v30 = v29;

        v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, &v48);

        *(v26 + 4) = v31;
        _os_log_impl(&dword_0, log, v41, "Unexpected duplicate app intent identifier in map: %s. Returning first instance encountered", v26, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v42);

        v32 = v19[7];
        v33 = *(v32 + 8 * v13);
        *(v32 + 8 * v13) = v43;
      }

      else
      {

        v38 = v19[7];
        v33 = *(v38 + 8 * v13);
        *(v38 + 8 * v13) = v23;
      }

      v4 = a1;
    }

    else
    {
      v19[(v13 >> 6) + 8] |= 1 << v13;
      v34 = (v19[6] + 16 * v13);
      *v34 = v7;
      v34[1] = v8;
      *(v19[7] + 8 * v13) = v11;
      v35 = v19[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_23;
      }

      v19[2] = v37;
    }

    v5 = v46 + 1;
    a2 = 1;
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v3 = a3;
  v5 = a1;
  v6 = 0;
  v63 = a1 + 32;
  v64 = *(a1 + 16);
  while (1)
  {
    if (v6 == v64)
    {
    }

    if (v6 >= *(v5 + 16))
    {
      break;
    }

    v7 = (v63 + 24 * v6);
    v9 = *v7;
    v8 = v7[1];
    v10 = v7[2];
    v11 = *v3;

    v66 = v10;

    v13 = specialized __RawDictionaryStorage.find<A>(_:)(v9, v8);
    v14 = v11[2];
    v15 = (v12 & 1) == 0;
    v16 = v14 + v15;
    if (__OFADD__(v14, v15))
    {
      goto LABEL_45;
    }

    v17 = v12;
    if (v11[3] >= v16)
    {
      if ((a2 & 1) == 0)
      {
        v51 = v13;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSaySo14LNAutoShortcutCGGMd, &_ss17_NativeDictionaryVySSSaySo14LNAutoShortcutCGGMR);
        _NativeDictionary.copy()();
        v13 = v51;
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a2 & 1);
      v18 = specialized __RawDictionaryStorage.find<A>(_:)(v9, v8);
      if ((v17 & 1) != (v19 & 1))
      {
        goto LABEL_52;
      }

      v13 = v18;
    }

    v20 = v66;
    ++v6;
    v21 = *v3;
    if (v17)
    {
      v22 = *(v21[7] + 8 * v13);
      v58 = v13;
      v61 = *v3;
      if (v66 >> 62)
      {
        v23 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v23 = *(&dword_10 + (v66 & 0xFFFFFFFFFFFFFF8));
      }

      v24 = v22 >> 62;
      v62 = v6;
      if (v22 >> 62)
      {
        v52 = v23;
        v25 = _CocoaArrayWrapper.endIndex.getter();
        v23 = v52;
      }

      else
      {
        v25 = *(&dword_10 + (v22 & 0xFFFFFFFFFFFFFF8));
      }

      v26 = v25 + v23;
      if (__OFADD__(v25, v23))
      {
        goto LABEL_46;
      }

      v59 = v23;

      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (!v24)
        {
          v27 = v22 & 0xFFFFFFFFFFFFFF8;
          if (v26 <= *(&dword_18 + (v22 & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            goto LABEL_25;
          }

          goto LABEL_24;
        }

LABEL_23:
        _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_24;
      }

      if (v24)
      {
        goto LABEL_23;
      }

LABEL_24:
      v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v27 = v22 & 0xFFFFFFFFFFFFFF8;
LABEL_25:
      v60 = v22;
      v32 = *(v27 + 16);
      v33 = (*(v27 + 24) >> 1) - v32;
      v34 = v27 + 8 * v32;
      v57 = v27;
      if (v20 >> 62)
      {
        v39 = _CocoaArrayWrapper.endIndex.getter();
        if (v39)
        {
          v40 = _CocoaArrayWrapper.endIndex.getter();
          if (v33 < v40)
          {
            goto LABEL_49;
          }

          v56 = v40;
          if (v39 < 1)
          {
            goto LABEL_51;
          }

          v41 = v34 + 32;
          lazy protocol witness table accessor for type [LNAutoShortcut] and conformance [A]();
          v42 = 0;
          v43 = v66;
          do
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo14LNAutoShortcutCGMd, &_sSaySo14LNAutoShortcutCGMR);
            v44 = specialized protocol witness for Collection.subscript.read in conformance [A](v65, v42, v43);
            v46 = *v45;
            (v44)(v65, 0);
            *(v41 + 8 * v42++) = v46;
          }

          while (v39 != v42);
          v3 = a3;
          v5 = a1;
          v38 = v56;
          goto LABEL_35;
        }
      }

      else
      {
        v35 = v20 & 0xFFFFFFFFFFFFFF8;
        v36 = *(v35 + 16);
        if (v36)
        {
          if (v33 < v36)
          {
            goto LABEL_49;
          }

          v37 = *(v35 + 16);
          type metadata accessor for NSTextCheckingResult(0, &lazy cache variable for type metadata for LNAutoShortcut, LNAutoShortcut_ptr);
          swift_arrayInitWithCopy();
          v38 = v37;
LABEL_35:

          v47 = v60;
          v48 = v61;
          v6 = v62;
          if (v38 < v59)
          {
            goto LABEL_48;
          }

          if (v38 > 0)
          {
            v49 = *(v57 + 16);
            v30 = __OFADD__(v49, v38);
            v50 = v49 + v38;
            if (v30)
            {
              goto LABEL_50;
            }

            *(v57 + 16) = v50;
          }

          goto LABEL_40;
        }
      }

      v47 = v60;
      v48 = v61;
      v6 = v62;
      if (v59 > 0)
      {
        goto LABEL_48;
      }

LABEL_40:

      *(v48[7] + 8 * v58) = v47;

      a2 = 1;
    }

    else
    {
      v21[(v13 >> 6) + 8] |= 1 << v13;
      v28 = (v21[6] + 16 * v13);
      *v28 = v9;
      v28[1] = v8;
      *(v21[7] + 8 * v13) = v20;
      v29 = v21[2];
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        goto LABEL_47;
      }

      v21[2] = v31;
      a2 = 1;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_13;
  }

  v14 = v9;
  v15 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy18SiriSuggestionsKit6SignalCSayAC31CandidateSuggestionConfigurator_pGGMd, &_ss17_NativeDictionaryVy18SiriSuggestionsKit6SignalCSayAC31CandidateSuggestionConfigurator_pGGMR);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a3 & 1, v13))
  {
    goto LABEL_5;
  }

  v16 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  if ((v15 & 1) != (v17 & 1))
  {
LABEL_13:
    type metadata accessor for Signal();
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v14 = v16;
LABEL_5:
  v18 = *v4;
  if (v15)
  {
    *(v18[7] + 8 * v14) = a1;
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v14, a2, a1, v18);
  }
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(char a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2 & 1);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_11;
  }

  v14 = v9;
  v15 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy25SiriLinkSuggestionsPlugin0cdE12FeatureFlagsOSbGMd, "F/");
  result = _NativeDictionary.ensureUnique(isUnique:capacity:)(a3 & 1, v13);
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  result = specialized __RawDictionaryStorage.find<A>(_:)(a2 & 1);
  if ((v15 & 1) != (v17 & 1))
  {
LABEL_11:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v14 = result;
LABEL_5:
  v18 = *v4;
  if (v15)
  {
    *(v18[7] + v14) = a1 & 1;
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(v14, a2 & 1, a1 & 1, v18);
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, char a2, char a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2 & 1;
  *(a4[7] + result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

void *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, uint64_t a2, uint64_t a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy18SiriSuggestionsKit19VersionedInvocationVGMd, "0<", &type metadata accessor for VersionedInvocation, &type metadata accessor for VersionedInvocation);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy18SiriSuggestionsKit14InvocationTypeOGMd, &_ss23_ContiguousArrayStorageCy18SiriSuggestionsKit14InvocationTypeOGMR, &type metadata accessor for InvocationType, &type metadata accessor for InvocationType);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t outlined init with copy of CoreSignalTypes?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriSuggestionsKit15CoreSignalTypesOSgMd, &_s18SiriSuggestionsKit15CoreSignalTypesOSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, uint64_t a2, uint64_t a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy18SiriSuggestionsKit6SignalC_SayAC31CandidateSuggestionConfigurator_pGtGMd, &_ss23_ContiguousArrayStorageCy18SiriSuggestionsKit6SignalC_SayAC31CandidateSuggestionConfigurator_pGtGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || &a4[2 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriSuggestionsKit6SignalC_SayAA31CandidateSuggestionConfigurator_pGtMd, &_s18SiriSuggestionsKit6SignalC_SayAA31CandidateSuggestionConfigurator_pGtMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo25LNActionParameterMetadataC_18SiriSuggestionsKit0gH0O20DisplayRepresentable_pSgtGMd, &_ss23_ContiguousArrayStorageCySo25LNActionParameterMetadataC_18SiriSuggestionsKit0gH0O20DisplayRepresentable_pSgtGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || &a4[6 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo25LNActionParameterMetadataC_18SiriSuggestionsKit0dE0O20DisplayRepresentable_pSgtMd, &_sSo25LNActionParameterMetadataC_18SiriSuggestionsKit0dE0O20DisplayRepresentable_pSgtMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So16LNActionMetadataCtGMd, &_ss23_ContiguousArrayStorageCySS_So16LNActionMetadataCtGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || &a4[3 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So16LNActionMetadataCtMd, &_sSS_So16LNActionMetadataCtMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_18SiriSuggestionsKit0dE0O20DisplayRepresentable_ptGMd, &_ss23_ContiguousArrayStorageCySS_18SiriSuggestionsKit0dE0O20DisplayRepresentable_ptGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || &a4[7 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 56 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_18SiriSuggestionsKit0aB0O20DisplayRepresentable_ptMd, &_sSS_18SiriSuggestionsKit0aB0O20DisplayRepresentable_ptMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_25SiriLinkSuggestionsPlugin0E23SuggestedActionsRequestVtGMd, &_ss23_ContiguousArrayStorageCySS_25SiriLinkSuggestionsPlugin0E23SuggestedActionsRequestVtGMR);
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
    if (v10 != a4 || &a4[5 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_25SiriLinkSuggestionsPlugin0B23SuggestedActionsRequestVtMd, &_sSS_25SiriLinkSuggestionsPlugin0B23SuggestedActionsRequestVtMR);
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
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || &a4[4 * v8 + 4] <= v10 + 4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo35LNSuggestedActionDialogParameterKeya_SStGMd, &_ss23_ContiguousArrayStorageCySo35LNSuggestedActionDialogParameterKeya_SStGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || &a4[3 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo35LNSuggestedActionDialogParameterKeya_SStMd, &_sSo35LNSuggestedActionDialogParameterKeya_SStMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy18SiriSuggestionsKit31CandidateSuggestionConfigurator_pGMd, &_ss23_ContiguousArrayStorageCy18SiriSuggestionsKit31CandidateSuggestionConfigurator_pGMR);
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
    if (v10 != a4 || &a4[5 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriSuggestionsKit31CandidateSuggestionConfigurator_pMd, ".<");
    swift_arrayInitWithCopy();
  }

  return v10;
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
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy25SiriLinkSuggestionsPlugin0E15SuggestedActionVGMd, &_ss23_ContiguousArrayStorageCy25SiriLinkSuggestionsPlugin0E15SuggestedActionVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[48 * v8] <= v12)
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, ".<");
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[32 * v8] <= v12)
    {
      memmove(v12, v13, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), uint64_t (*a8)(void))
{
  v11 = result;
  if (a3)
  {
    v12 = *(a4 + 24);
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v14 = *(a4 + 16);
  if (v13 <= v14)
  {
    v15 = *(a4 + 16);
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(a7(0) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_24;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(a7(0) - 8);
  if (v11)
  {
    v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a4 + v22, v14, v19 + v22, a8);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

uint64_t specialized _NativeSet.update(with:isUnique:)(uint64_t a1, uint64_t a2, int a3, char a4)
{
  v5 = v4;
  v44 = a3 & 0x100;
  v9 = *v4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v10 = Hasher._finalize()();
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v41 = a4;
    v13 = ~v11;
    v14 = *(v9 + 48);
    while (1)
    {
      v15 = v14 + 24 * v12;
      v16 = *(v15 + 16);
      v17 = *(v15 + 17);
      if (*v15 == a1 && *(v15 + 8) == a2)
      {
        if (((v16 ^ a3) & 1) == 0 && (((v44 != 0) ^ v17) & 1) == 0)
        {
LABEL_17:
          v20 = 0;
          v19 = 1;
          v5 = v4;
          a4 = v41;
          goto LABEL_18;
        }
      }

      else if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 && ((v16 ^ a3) & 1) == 0 && (((v44 != 0) ^ v17) & 1) == 0)
      {
        goto LABEL_17;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        v19 = 0;
        v5 = v4;
        a4 = v41;
        goto LABEL_16;
      }
    }
  }

  v19 = 0;
LABEL_16:
  v20 = 1;
LABEL_18:
  v21 = *(v9 + 16);
  v22 = v21 + v20;
  if (__OFADD__(v21, v20))
  {
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v23 = *(v9 + 24);
  if (v23 >= v22 && (a4 & 1) != 0)
  {
    if (v19)
    {
LABEL_22:
      v24 = 24 * v12;
      goto LABEL_47;
    }

    goto LABEL_43;
  }

  if (a4)
  {
    v42 = v19;
    specialized _NativeSet.resize(capacity:)();
  }

  else
  {
    if (v23 >= v22)
    {
      specialized _NativeSet.copy()();
      if (v19)
      {
        goto LABEL_22;
      }

      goto LABEL_43;
    }

    v42 = v19;
    specialized _NativeSet.copyAndResize(capacity:)();
  }

  v25 = *v5;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v26 = Hasher._finalize()();
  v27 = -1 << *(v25 + 32);
  v12 = v26 & ~v27;
  if (((*(v25 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_42:
    v5 = v4;
    if (v42)
    {
      goto LABEL_50;
    }

LABEL_43:
    v34 = *v5;
    *(*v5 + 8 * (v12 >> 6) + 56) |= 1 << v12;
    v35 = *(v34 + 48) + 24 * v12;
    *v35 = a1;
    *(v35 + 8) = a2;
    *(v35 + 16) = a3 & 1;
    *(v35 + 17) = BYTE1(v44);
    v36 = *(v34 + 16);
    v37 = __OFADD__(v36, 1);
    v38 = v36 + 1;
    if (!v37)
    {
      result = 0;
      *(v34 + 16) = v38;
      return result;
    }

    goto LABEL_49;
  }

  v28 = ~v27;
  v29 = *(v25 + 48);
  while (1)
  {
    v30 = v29 + 24 * v12;
    v31 = *(v30 + 16);
    v32 = *(v30 + 17);
    if (*v30 == a1 && *(v30 + 8) == a2)
    {
      break;
    }

    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 && ((v31 ^ a3) & 1) == 0 && (((v44 != 0) ^ v32) & 1) == 0)
    {
      goto LABEL_45;
    }

LABEL_41:
    v12 = (v12 + 1) & v28;
    if (((*(v25 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_42;
    }
  }

  if ((v31 ^ a3) & 1) != 0 || (((v44 != 0) ^ v32))
  {
    goto LABEL_41;
  }

LABEL_45:
  v5 = v4;
  if ((v42 & 1) == 0)
  {
LABEL_50:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v24 = 24 * v12;
LABEL_47:
  v40 = *(*v5 + 48) + v24;
  result = *v40;
  *v40 = a1;
  *(v40 + 8) = a2;
  *(v40 + 16) = a3 & 1;
  *(v40 + 17) = BYTE1(v44);
  return result;
}

unint64_t lazy protocol witness table accessor for type LinkSuggestionsOwners and conformance LinkSuggestionsOwners()
{
  result = lazy protocol witness table cache variable for type LinkSuggestionsOwners and conformance LinkSuggestionsOwners;
  if (!lazy protocol witness table cache variable for type LinkSuggestionsOwners and conformance LinkSuggestionsOwners)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LinkSuggestionsOwners and conformance LinkSuggestionsOwners);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LinkSuggestionsOwners and conformance LinkSuggestionsOwners;
  if (!lazy protocol witness table cache variable for type LinkSuggestionsOwners and conformance LinkSuggestionsOwners)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LinkSuggestionsOwners and conformance LinkSuggestionsOwners);
  }

  return result;
}

uint64_t outlined destroy of CoreSignalTypes?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_15();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t lazy protocol witness table accessor for type CoreSignalTypes and conformance CoreSignalTypes(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_1_0(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_11(uint64_t a1)
{
}

id OUTLINED_FUNCTION_16(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t OUTLINED_FUNCTION_17()
{

  return dispatch thunk of Actor.unownedExecutor.getter();
}

void OUTLINED_FUNCTION_19(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t ToolParamSummary.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x617268506C6F6F74 && a2 == 0xEA00000000006573;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C61566D61726170 && a2 == 0xEB00000000736575)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

Swift::Int DialogType.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  return Hasher._finalize()();
}

uint64_t ToolParamSummary.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x6C61566D61726170;
  }

  else
  {
    return 0x617268506C6F6F74;
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ToolParamSummary.CodingKeys(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ToolParamSummary.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = ToolParamSummary.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance ToolParamSummary.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = ToolParamSummary.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ToolParamSummary.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ToolParamSummary.CodingKeys and conformance ToolParamSummary.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ToolParamSummary.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ToolParamSummary.CodingKeys and conformance ToolParamSummary.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ToolParamSummary.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[0] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy25SiriLinkSuggestionsPlugin16ToolParamSummaryV10CodingKeys33_4798BCE20D0F3642FE2DAC187424D220LLOGMd, &_ss22KeyedEncodingContainerVy25SiriLinkSuggestionsPlugin16ToolParamSummaryV10CodingKeys33_4798BCE20D0F3642FE2DAC187424D220LLOGMR);
  OUTLINED_FUNCTION_14_0();
  v8 = v7;
  __chkstk_darwin(v9);
  v11 = v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ToolParamSummary.CodingKeys and conformance ToolParamSummary.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v4)
  {
    v13[1] = v13[0];
    v14 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
    lazy protocol witness table accessor for type [String : String] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : String] and conformance <> [A : B], &protocol witness table for String, &protocol conformance descriptor for <> [A : B]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v11, v6);
}

unint64_t lazy protocol witness table accessor for type ToolParamSummary.CodingKeys and conformance ToolParamSummary.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ToolParamSummary.CodingKeys and conformance ToolParamSummary.CodingKeys;
  if (!lazy protocol witness table cache variable for type ToolParamSummary.CodingKeys and conformance ToolParamSummary.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolParamSummary.CodingKeys and conformance ToolParamSummary.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ToolParamSummary.CodingKeys and conformance ToolParamSummary.CodingKeys;
  if (!lazy protocol witness table cache variable for type ToolParamSummary.CodingKeys and conformance ToolParamSummary.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolParamSummary.CodingKeys and conformance ToolParamSummary.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ToolParamSummary.CodingKeys and conformance ToolParamSummary.CodingKeys;
  if (!lazy protocol witness table cache variable for type ToolParamSummary.CodingKeys and conformance ToolParamSummary.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolParamSummary.CodingKeys and conformance ToolParamSummary.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ToolParamSummary.CodingKeys and conformance ToolParamSummary.CodingKeys;
  if (!lazy protocol witness table cache variable for type ToolParamSummary.CodingKeys and conformance ToolParamSummary.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolParamSummary.CodingKeys and conformance ToolParamSummary.CodingKeys);
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

uint64_t ToolParamSummary.init(from:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy25SiriLinkSuggestionsPlugin16ToolParamSummaryV10CodingKeys33_4798BCE20D0F3642FE2DAC187424D220LLOGMd, &_ss22KeyedDecodingContainerVy25SiriLinkSuggestionsPlugin16ToolParamSummaryV10CodingKeys33_4798BCE20D0F3642FE2DAC187424D220LLOGMR);
  OUTLINED_FUNCTION_14_0();
  __chkstk_darwin(v3);
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ToolParamSummary.CodingKeys and conformance ToolParamSummary.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v4 = KeyedDecodingContainer.decode(_:forKey:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
    lazy protocol witness table accessor for type [String : String] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : String] and conformance <> [A : B], &protocol witness table for String, &protocol conformance descriptor for <> [A : B]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v6 = OUTLINED_FUNCTION_9_0();
    v7(v6);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v4;
}

uint64_t protocol witness for Decodable.init(from:) in conformance ToolParamSummary@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = ToolParamSummary.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t one-time initialization function for appIntentSuggestionsSignposter()
{
  v0 = type metadata accessor for OSSignposter();
  __swift_allocate_value_buffer(v0, static DefaultToolClient.appIntentSuggestionsSignposter);
  __swift_project_value_buffer(v0, static DefaultToolClient.appIntentSuggestionsSignposter);
  return OSSignposter.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for OSSignposter();
  __swift_allocate_value_buffer(v0, static DefaultLinkClient.appIntentSuggestionsSignposter);
  __swift_project_value_buffer(v0, static DefaultLinkClient.appIntentSuggestionsSignposter);
  return OSSignposter.init(subsystem:category:)();
}

uint64_t DefaultToolClient.appIntentSuggestionsSignposter.unsafeMutableAddressor()
{
  if (one-time initialization token for appIntentSuggestionsSignposter != -1)
  {
    OUTLINED_FUNCTION_0_1(&one-time initialization token for appIntentSuggestionsSignposter);
  }

  v0 = type metadata accessor for OSSignposter();

  return __swift_project_value_buffer(v0, static DefaultToolClient.appIntentSuggestionsSignposter);
}

uint64_t static DefaultToolClient.appIntentSuggestionsSignposter.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for appIntentSuggestionsSignposter != -1)
  {
    OUTLINED_FUNCTION_0_1(&one-time initialization token for appIntentSuggestionsSignposter);
  }

  v2 = type metadata accessor for OSSignposter();
  v3 = __swift_project_value_buffer(v2, static DefaultToolClient.appIntentSuggestionsSignposter);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t closure #1 in variable initialization expression of DefaultToolClient.toolSessionSetupTask()
{
  OUTLINED_FUNCTION_8();
  v0[2] = v1;
  v2 = type metadata accessor for ToolExecutor.SessionOptions();
  v0[3] = v2;
  OUTLINED_FUNCTION_1_1(v2);
  v0[4] = v3;
  v0[5] = OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_8_0();

  return _swift_task_switch(v4, v5, v6);
}

{
  OUTLINED_FUNCTION_8();
  static ToolExecutor.SessionOptions.default.getter();
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = closure #1 in variable initialization expression of DefaultToolClient.toolSessionSetupTask;
  v2 = *(v0 + 40);

  return static ToolExecutor.start(options:)(v2);
}

{
  OUTLINED_FUNCTION_15_0();
  v1 = *(v0 + 64);
  v2 = *(v0 + 16);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *v2 = v1;
  v2[1] = OpaqueTypeConformance2;

  OUTLINED_FUNCTION_10();

  return v4();
}

{
  OUTLINED_FUNCTION_8();

  OUTLINED_FUNCTION_10();

  return v0();
}

uint64_t closure #1 in variable initialization expression of DefaultToolClient.toolSessionSetupTask(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  OUTLINED_FUNCTION_7();
  *v6 = v5;
  *v6 = *v2;
  v5[7] = v1;

  v7 = v4[5];
  v8 = v4[4];
  v9 = v4[3];
  if (!v1)
  {
    v5[8] = a1;
  }

  (*(v8 + 8))(v7, v9);
  OUTLINED_FUNCTION_8_0();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t DefaultToolClient.fetchParamSummary(toolId:parameterValuesByKey:)()
{
  OUTLINED_FUNCTION_8();
  v1[6] = v2;
  v1[7] = v0;
  v1[4] = v3;
  v1[5] = v4;
  v5 = type metadata accessor for ToolInvocationSummary.ParameterSummary.Value();
  v1[8] = v5;
  OUTLINED_FUNCTION_1_1(v5);
  v1[9] = v6;
  v1[10] = OUTLINED_FUNCTION_11_0();
  v7 = type metadata accessor for ToolInvocationSummary.ParameterSummary();
  v1[11] = v7;
  OUTLINED_FUNCTION_1_1(v7);
  v1[12] = v8;
  v1[13] = OUTLINED_FUNCTION_19_0();
  v1[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_7ToolKit0B17InvocationSummaryV09ParameterE0O5valuetSgMd, &_sSS3key_7ToolKit0B17InvocationSummaryV09ParameterE0O5valuetSgMR);
  v1[15] = OUTLINED_FUNCTION_19_0();
  v1[16] = swift_task_alloc();
  v9 = type metadata accessor for ToolInvocationSummary();
  v1[17] = v9;
  OUTLINED_FUNCTION_1_1(v9);
  v1[18] = v10;
  v1[19] = OUTLINED_FUNCTION_19_0();
  v1[20] = swift_task_alloc();
  v11 = type metadata accessor for OSSignpostID();
  v1[21] = v11;
  OUTLINED_FUNCTION_1_1(v11);
  v1[22] = v12;
  v1[23] = OUTLINED_FUNCTION_19_0();
  v1[24] = swift_task_alloc();
  v13 = type metadata accessor for OSSignposter();
  v1[25] = v13;
  OUTLINED_FUNCTION_1_1(v13);
  v1[26] = v14;
  v1[27] = OUTLINED_FUNCTION_11_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7ToolKit0A10InvocationVSgMd, &_s7ToolKit0A10InvocationVSgMR);
  v1[28] = OUTLINED_FUNCTION_11_0();
  v15 = type metadata accessor for ToolInvocation();
  v1[29] = v15;
  OUTLINED_FUNCTION_1_1(v15);
  v1[30] = v16;
  v1[31] = OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_8_0();

  return _swift_task_switch(v17, v18, v19);
}

{
  v1 = v0[6];

  specialized _dictionaryUpCast<A, B, C, D>(_:)(v1);
  ToolInvocation.init(localToolId:parameterValuesByKey:)();
  v3 = v0[30];
  v2 = v0[31];
  v5 = v0[28];
  v4 = v0[29];
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v4);
  (*(v3 + 32))(v2, v5, v4);
  if (one-time initialization token for appIntentSuggestionsSignposter != -1)
  {
    OUTLINED_FUNCTION_0_1(&one-time initialization token for appIntentSuggestionsSignposter);
  }

  v7 = v0[26];
  v6 = v0[27];
  v8 = v0[25];
  v9 = __swift_project_value_buffer(v8, static DefaultToolClient.appIntentSuggestionsSignposter);
  (*(v7 + 16))(v6, v9, v8);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v10 = OSSignposter.logHandle.getter();
  v11 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_0, v10, v11, v13, "fetchToolInvocationSummary", "", v12, 2u);
    OUTLINED_FUNCTION_11(v12);
  }

  v14 = v0[23];
  v15 = v0[24];
  v16 = v0[21];
  v17 = v0[22];
  v18 = v0[7];

  (*(v17 + 16))(v14, v15, v16);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v0[32] = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v17 + 8))(v15, v16);
  v19 = *(v18 + 16);
  v20 = swift_task_alloc();
  v0[33] = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7ToolKit0A16ExecutionSession_pMd, &_s7ToolKit0A16ExecutionSession_pMR);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  *v20 = v0;
  v20[1] = DefaultToolClient.fetchParamSummary(toolId:parameterValuesByKey:);

  return Task.value.getter(v0 + 2, v19, v21, v22, &protocol self-conformance witness table for Error);
}

{
  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_13();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_7();
  *v5 = v4;
  v3[34] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_8_0();

    return _swift_task_switch(v6, v7, v8);
  }

  else
  {
    v9 = v3[3];
    v3[35] = v3[2];
    ObjectType = swift_getObjectType();
    v11 = swift_task_alloc();
    v3[36] = v11;
    *v11 = v4;
    v11[1] = DefaultToolClient.fetchParamSummary(toolId:parameterValuesByKey:);
    v12 = v3[31];
    v13 = v3[20];

    return dispatch thunk of ToolExecutionSession.fetchToolInvocationSummary(for:)(v13, v12, ObjectType, v9);
  }
}

{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_13();
  v2 = *v1;
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  *(v4 + 296) = v0;

  OUTLINED_FUNCTION_8_0();

  return _swift_task_switch(v5, v6, v7);
}

{
  OUTLINED_FUNCTION_3_0();

  v3 = OUTLINED_FUNCTION_13_0();
  v4(v3);
  (*(v0 + 8))(v1, v2);

  OUTLINED_FUNCTION_10();

  return v5();
}

{
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_3_0();

  v3 = OUTLINED_FUNCTION_13_0();
  v4(v3);
  (*(v0 + 8))(v1, v2);

  OUTLINED_FUNCTION_10();

  return v5();
}

unint64_t DefaultToolClient.fetchParamSummary(toolId:parameterValuesByKey:)()
{
  v112 = v0;
  swift_unknownObjectRelease();
  v1 = ToolInvocationSummary.formatString.getter();
  v3 = v2;
  if (one-time initialization token for appIntentsSuggestions != -1)
  {
    OUTLINED_FUNCTION_4_0(&one-time initialization token for appIntentsSuggestions);
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.appIntentsSuggestions);
  v106 = v0;
  v5 = OUTLINED_FUNCTION_13_0();
  v6(v5);
  v7 = v0;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  v97 = v3;
  v98 = v1;
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v111 = v11;
    *v10 = 136315138;
    ToolInvocationSummary.parameterSummaries.getter();
    v12 = Dictionary.description.getter();
    v14 = v13;

    v15 = OUTLINED_FUNCTION_16_0();
    v16(v15);
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, &v111);

    *(v10 + 4) = v17;
    _os_log_impl(&dword_0, v8, v9, "toolInvocationSummary.parameterSummaries - %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    OUTLINED_FUNCTION_11(v11);
    v18 = v10;
    v7 = v106;
    OUTLINED_FUNCTION_11(v18);
  }

  else
  {

    v19 = OUTLINED_FUNCTION_16_0();
    v20(v19);
  }

  v109 = v7[16];
  v104 = v7[15];
  v21 = v7[12];
  v22 = v7[9];
  v23 = ToolInvocationSummary.parameterSummaries.getter();
  v24 = 0;
  v25 = v23 + 64;
  v105 = v23;
  v26 = -1;
  v27 = -1 << *(v23 + 32);
  if (-v27 < 64)
  {
    v26 = ~(-1 << -v27);
  }

  v28 = v26 & *(v23 + 64);
  v29 = (63 - v27) >> 6;
  v110 = (v21 + 32);
  v108 = (v21 + 88);
  v107 = enum case for ToolInvocationSummary.ParameterSummary.value(_:);
  v103 = v21;
  v95 = (v22 + 32);
  v99 = &_swiftEmptyDictionarySingleton;
  v101 = v29;
  v102 = v23 + 64;
  while (v28)
  {
    v30 = v24;
LABEL_15:
    v31 = v7[14];
    v32 = v7[15];
    v33 = v7[11];
    v34 = __clz(__rbit64(v28));
    v28 &= v28 - 1;
    v35 = v34 | (v30 << 6);
    v36 = (*(v105 + 48) + 16 * v35);
    v37 = *v36;
    v38 = v36[1];
    (*(v103 + 16))(v31, *(v105 + 56) + *(v103 + 72) * v35, v33);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_7ToolKit0B17InvocationSummaryV09ParameterE0O5valuetMd, &_sSS3key_7ToolKit0B17InvocationSummaryV09ParameterE0O5valuetMR);
    v40 = *(v39 + 48);
    *v32 = v37;
    v7 = v106;
    *(v104 + 8) = v38;
    (*(v103 + 32))(&v32[v40], v31, v33);
    __swift_storeEnumTagSinglePayload(v32, 0, 1, v39);

    v25 = v102;
    v29 = v101;
LABEL_16:
    v41 = v7[16];
    outlined init with take of (key: String, value: ToolInvocationSummary.ParameterSummary)?(v7[15], v41, &_sSS3key_7ToolKit0B17InvocationSummaryV09ParameterE0O5valuetSgMd, &_sSS3key_7ToolKit0B17InvocationSummaryV09ParameterE0O5valuetSgMR);
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_7ToolKit0B17InvocationSummaryV09ParameterE0O5valuetMd, &_sSS3key_7ToolKit0B17InvocationSummaryV09ParameterE0O5valuetMR);
    if (__swift_getEnumTagSinglePayload(v41, 1, v42) == 1)
    {
      v82 = v7[31];
      v83 = v7[32];
      v84 = v7[29];
      v85 = v7[30];
      v87 = v7[26];
      v86 = v7[27];
      v88 = v7;
      v89 = v7[25];
      v96(v88[20], v88[17]);

      $defer #1 () in DefaultToolClient.fetchParamSummary(toolId:parameterValuesByKey:)(v86, v83);

      (*(v87 + 8))(v86, v89);
      (*(v85 + 8))(v82, v84);
      OUTLINED_FUNCTION_6_0();

      v90 = v88[1];

      return v90(v98, v97, v99);
    }

    v43 = v7[16];
    v44 = v7[13];
    v45 = v7[11];
    v46 = *v43;
    v47 = *(v109 + 8);
    (*v110)(v44, v43 + *(v42 + 48), v45);
    v48 = (*v108)(v44, v45);
    v49 = v7[13];
    v50 = v7[11];
    if (v48 == v107)
    {
      v55 = v7[10];
      v93 = v7[8];
      v56 = OUTLINED_FUNCTION_17_0();
      v57(v56, v50);
      (*v95)(v55, v49, v93);
      v92 = ToolInvocationSummary.ParameterSummary.Value.localizedLabel.getter();
      v94 = v58;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v111 = v99;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v46, v47);
      v91 = result;
      v62 = v99[2];
      v63 = (v61 & 1) == 0;
      v64 = v62 + v63;
      if (__OFADD__(v62, v63))
      {
        __break(1u);
LABEL_37:
        __break(1u);
        return result;
      }

      v100 = v61;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVyS2SGMd, &_ss17_NativeDictionaryVyS2SGMR);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v64))
      {
        v65 = specialized __RawDictionaryStorage.find<A>(_:)(v46, v47);
        v67 = v100;
        if ((v100 & 1) != (v66 & 1))
        {
          goto LABEL_33;
        }

        v68 = v65;
      }

      else
      {
        v68 = v91;
        v67 = v100;
      }

      if (v67)
      {
        v69 = v7[8];

        v99 = v111;
        v70 = (v111[7] + 16 * v68);
        *v70 = v92;
        v70[1] = v94;

        v71 = OUTLINED_FUNCTION_17_0();
        v72(v71, v69);
      }

      else
      {
        v73 = v111;
        v111[(v68 >> 6) + 8] |= 1 << v68;
        v74 = (*(v73 + 48) + 16 * v68);
        *v74 = v46;
        v74[1] = v47;
        v75 = v73;
        v76 = (*(v73 + 56) + 16 * v68);
        *v76 = v92;
        v76[1] = v94;
        v77 = OUTLINED_FUNCTION_17_0();
        result = v78(v77);
        v79 = v75[2];
        v80 = __OFADD__(v79, 1);
        v81 = v79 + 1;
        if (v80)
        {
          goto LABEL_37;
        }

        v99 = v75;
        v75[2] = v81;
      }
    }

    else
    {

      v51 = OUTLINED_FUNCTION_17_0();
      v52(v51, v50);
    }
  }

  while (1)
  {
    v30 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v30 >= v29)
    {
      v53 = v7[15];
      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_7ToolKit0B17InvocationSummaryV09ParameterE0O5valuetMd, &_sSS3key_7ToolKit0B17InvocationSummaryV09ParameterE0O5valuetMR);
      __swift_storeEnumTagSinglePayload(v53, 1, 1, v54);
      v28 = 0;
      goto LABEL_16;
    }

    v28 = *(v25 + 8 * v30);
    ++v24;
    if (v28)
    {
      v24 = v30;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_33:

  return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
}

unint64_t specialized _dictionaryUpCast<A, B, C, D>(_:)(uint64_t a1)
{
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_7ToolKit10TypedValueO5valuetMd, &_sSS3key_7ToolKit10TypedValueO5valuetMR);
  v2 = __chkstk_darwin(v44);
  v43 = (&v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v2);
  v42 = &v39 - v4;
  v45 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS7ToolKit25TypedValueAsyncResolvable_pGMd, &_ss18_DictionaryStorageCySS7ToolKit25TypedValueAsyncResolvable_pGMR);
    v5 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v5 = &_swiftEmptyDictionarySingleton;
  }

  v6 = v45 + 64;
  v7 = 1 << *(v45 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v45 + 64);
  v10 = (v7 + 63) >> 6;
  v39 = v5 + 8;

  v12 = 0;
  v41 = v5;
  for (i = v6; v9; v6 = i)
  {
    v13 = v12;
LABEL_11:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v15 = v14 | (v13 << 6);
    v16 = *(v45 + 56);
    v17 = (*(v45 + 48) + 16 * v15);
    v19 = *v17;
    v46 = v17[1];
    v18 = v46;
    v20 = type metadata accessor for TypedValue();
    v21 = *(v20 - 8);
    v22 = v16 + *(v21 + 72) * v15;
    v23 = v44;
    v24 = v42;
    (*(v21 + 16))(&v42[*(v44 + 48)], v22, v20);
    *v24 = v19;
    v24[1] = v18;
    v25 = v24;
    v26 = v43;
    outlined init with take of (key: String, value: ToolInvocationSummary.ParameterSummary)?(v25, v43, &_sSS3key_7ToolKit10TypedValueO5valuetMd, &_sSS3key_7ToolKit10TypedValueO5valuetMR);
    v27 = *(v23 + 48);
    v28 = *v26;
    v29 = v26[1];
    v48 = v20;
    v49 = &protocol witness table for TypedValue;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v47);
    (*(v21 + 32))(boxed_opaque_existential_1, v26 + v27, v20);
    outlined init with take of SiriSuggestions.DisplayRepresentable(&v47, v51);
    outlined init with take of SiriSuggestions.DisplayRepresentable(v51, v52);
    outlined init with take of SiriSuggestions.DisplayRepresentable(v52, &v50);

    v5 = v41;
    result = specialized __RawDictionaryStorage.find<A>(_:)(v28, v29);
    v31 = result;
    if (v32)
    {
      v33 = (v5[6] + 16 * result);
      *v33 = v28;
      v33[1] = v29;

      v34 = (v5[7] + 40 * v31);
      __swift_destroy_boxed_opaque_existential_1(v34);
      result = outlined init with take of SiriSuggestions.DisplayRepresentable(&v50, v34);
    }

    else
    {
      if (v5[2] >= v5[3])
      {
        goto LABEL_20;
      }

      *(v39 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v35 = (v5[6] + 16 * result);
      *v35 = v28;
      v35[1] = v29;
      result = outlined init with take of SiriSuggestions.DisplayRepresentable(&v50, v5[7] + 40 * result);
      v36 = v5[2];
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
        goto LABEL_21;
      }

      v5[2] = v38;
    }

    v12 = v13;
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v10)
    {

      return v5;
    }

    v9 = *(v6 + 8 * v13);
    ++v12;
    if (v9)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t outlined destroy of ToolInvocation?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7ToolKit0A10InvocationVSgMd, &_s7ToolKit0A10InvocationVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t specialized _dictionaryUpCast<A, B, C, D>(_:)(void *a1)
{
  if (a1[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSE_pGMd, &_ss18_DictionaryStorageCySSSE_pGMR);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  OUTLINED_FUNCTION_5_0();
  v5 = v4 & v3;
  v7 = (v6 + 63) >> 6;

  v9 = 0;
  while (v5)
  {
    v10 = v9;
LABEL_10:
    v11 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v12 = (v10 << 10) | (16 * v11);
    v13 = (a1[6] + v12);
    v15 = *v13;
    v14 = v13[1];
    v16 = (a1[7] + v12);
    v17 = *v16;
    v18 = v16[1];
    v28 = &type metadata for String;
    v29 = &protocol witness table for String;
    *&v27 = v17;
    *(&v27 + 1) = v18;
    outlined init with take of SiriSuggestions.DisplayRepresentable(&v27, v31);
    outlined init with take of SiriSuggestions.DisplayRepresentable(v31, v32);
    outlined init with take of SiriSuggestions.DisplayRepresentable(v32, &v30);

    result = specialized __RawDictionaryStorage.find<A>(_:)(v15, v14);
    v19 = result;
    if (v20)
    {
      v21 = (v2[6] + 16 * result);
      *v21 = v15;
      v21[1] = v14;

      v22 = (v2[7] + 40 * v19);
      __swift_destroy_boxed_opaque_existential_1(v22);
      result = outlined init with take of SiriSuggestions.DisplayRepresentable(&v30, v22);
      v9 = v10;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_17;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v23 = (v2[6] + 16 * result);
      *v23 = v15;
      v23[1] = v14;
      result = outlined init with take of SiriSuggestions.DisplayRepresentable(&v30, v2[7] + 40 * result);
      v24 = v2[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_18;
      }

      v2[2] = v26;
      v9 = v10;
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return v2;
    }

    v5 = a1[v10 + 8];
    ++v9;
    if (v5)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

{
  if (a1[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  OUTLINED_FUNCTION_5_0();
  v5 = v4 & v3;
  v7 = (v6 + 63) >> 6;

  v9 = 0;
  while (v5)
  {
    v10 = v9;
LABEL_10:
    v11 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v12 = (a1[6] + ((v10 << 10) | (16 * v11)));
    v14 = *v12;
    v13 = v12[1];

    swift_dynamicCast();
    outlined init with take of Any(&v23, v25);
    outlined init with take of Any(v25, v26);
    outlined init with take of Any(v26, &v24);
    result = specialized __RawDictionaryStorage.find<A>(_:)(v14, v13);
    v15 = result;
    if (v16)
    {
      v17 = (v2[6] + 16 * result);
      *v17 = v14;
      v17[1] = v13;

      v18 = (v2[7] + 32 * v15);
      __swift_destroy_boxed_opaque_existential_1(v18);
      result = outlined init with take of Any(&v24, v18);
      v9 = v10;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_17;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v19 = (v2[6] + 16 * result);
      *v19 = v14;
      v19[1] = v13;
      result = outlined init with take of Any(&v24, (v2[7] + 32 * result));
      v20 = v2[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_18;
      }

      v2[2] = v22;
      v9 = v10;
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return v2;
    }

    v5 = a1[v10 + 8];
    ++v9;
    if (v5)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

uint64_t $defer #1 () in DefaultToolClient.fetchParamSummary(toolId:parameterValuesByKey:)(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for OSSignpostError();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OSSignpostID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v11 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    if ((*(v3 + 88))(v5, v2) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v12 = "[Error] Interval already ended";
    }

    else
    {
      (*(v3 + 8))(v5, v2);
      v12 = "";
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_0, v10, v11, v14, "fetchToolInvocationSummary", v12, v13, 2u);
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t DefaultToolClient.__deallocating_deinit()
{

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t DefaultToolClient.__allocating_init()()
{
  v0 = swift_allocObject();
  DefaultToolClient.init()();
  return v0;
}

uint64_t DefaultToolClient.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  __chkstk_darwin(v1 - 8);
  v3 = &v7 - v2;
  v4 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v4);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v0 + 16) = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC7ToolKit0E16ExecutionSession_p_Tt2g5(0, 0, v3, &async function pointer to partial apply for closure #1 in variable initialization expression of DefaultToolClient.toolSessionSetupTask, v5);
  return v0;
}

uint64_t protocol witness for ToolClient.fetchParamSummary(toolId:parameterValuesByKey:) in conformance DefaultToolClient()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for ToolClient.fetchParamSummary(toolId:parameterValuesByKey:) in conformance DefaultToolClient;

  return DefaultToolClient.fetchParamSummary(toolId:parameterValuesByKey:)();
}

{
  OUTLINED_FUNCTION_15_0();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_13();
  v8 = *v1;
  OUTLINED_FUNCTION_7();
  *v9 = v8;

  v13 = *(v8 + 8);
  if (!v0)
  {
    v10 = v7;
    v11 = v5;
    v12 = v3;
  }

  return v13(v10, v11, v12);
}

uint64_t closure #1 in _globalStringTablePointerOfStaticString(_:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
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
  type metadata accessor for Signal();
  lazy protocol witness table accessor for type Signal and conformance Signal(&lazy protocol witness table cache variable for type Signal and conformance Signal, &protocol conformance descriptor for Signal);
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

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1 & 1, v2);
}

uint64_t sub_B04C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t _s25SiriLinkSuggestionsPlugin17DefaultToolClientC20toolSessionSetupTask33_4798BCE20D0F3642FE2DAC187424D220LLScTy0F3Kit0f9ExecutionI0_ps5Error_pGvpfiAfG_pyYaKcfU_TA_0()
{
  OUTLINED_FUNCTION_15_0();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for CandidateSuggestionConfigurator.updateContext(context:signal:) in conformance LinkSuggestionConfigurator;

  return closure #1 in variable initialization expression of DefaultToolClient.toolSessionSetupTask();
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ToolParamSummary(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for ToolParamSummary(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for ToolParamSummary.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ToolParamSummary.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0xB358);
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

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    type metadata accessor for Signal();
    lazy protocol witness table accessor for type Signal and conformance Signal(&lazy protocol witness table cache variable for type Signal and conformance Signal, &protocol conformance descriptor for Signal);
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      break;
    }
  }

  return i;
}

{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
    if (v5 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v7 == v8)
    {

      return i;
    }

    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v10)
    {
      return i;
    }
  }

  return i;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(char a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  result = a2 & v4;
  v6 = a1 & 1;
  while (((1 << result) & *(v2 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0 && *(*(v2 + 48) + result) != v6)
  {
    result = (result + 1) & v4;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Signal and conformance Signal(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Signal();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
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

uint64_t outlined init with take of (key: String, value: ToolInvocationSummary.ParameterSummary)?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v5 = OUTLINED_FUNCTION_13_0();
  v6(v5);
  return a2;
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

uint64_t OUTLINED_FUNCTION_0_1(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_0()
{
  v2 = *(v0 + 216);
  v3 = *(v0 + 256);

  return $defer #1 () in DefaultToolClient.fetchParamSummary(toolId:parameterValuesByKey:)(v2, v3);
}

uint64_t OUTLINED_FUNCTION_4_0(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_11_0()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_19_0()
{

  return swift_task_alloc();
}

uint64_t LinkInvocationActionProvider.getInvocationAction(dialogProperties:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v4 = dispatch thunk of DialogProperties.getParameters()();
  specialized Dictionary.subscript.getter(0xD00000000000001FLL, 0x80000000000424E0, v4, v21);

  if (v22)
  {
    if (swift_dynamicCast())
    {
      v23[0] = v20[0];
      v23[1] = v20[1];
      v23[2] = v20[2];
      LinkInvocationActionProvider.invocationPayload(for:)(v23);
      v17 = type metadata accessor for DirectInvocationAction();
      swift_allocObject();
      v18 = DirectInvocationAction.init(siriKitIdentifier:payload:suggestionId:)();
      a2[3] = v17;
      a2[4] = lazy protocol witness table accessor for type UtteranceAction and conformance UtteranceAction(&lazy protocol witness table cache variable for type DirectInvocationAction and conformance DirectInvocationAction, &type metadata accessor for DirectInvocationAction, &protocol conformance descriptor for DirectInvocationAction);
      result = outlined destroy of LinkSuggestedAction(v23);
      goto LABEL_11;
    }
  }

  else
  {
    outlined destroy of Any?(v21);
  }

  if (one-time initialization token for linkSuggestions != -1)
  {
    OUTLINED_FUNCTION_1_0(&one-time initialization token for linkSuggestions);
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.linkSuggestions);
  outlined init with copy of LinkClient(a1, v23);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v21[0] = v9;
    *v8 = 136315138;
    outlined init with copy of LinkClient(v23, v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriSuggestionsKit16DialogProperties_pMd, &_s18SiriSuggestionsKit16DialogProperties_pMR);
    v10 = String.init<A>(describing:)();
    v12 = v11;
    __swift_destroy_boxed_opaque_existential_1(v23);
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v12, v21);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_0, v6, v7, "LinkInvocationActionProvider Link action retrieval failed: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    OUTLINED_FUNCTION_11(v9);
    OUTLINED_FUNCTION_11(v8);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v23);
  }

  v14 = type metadata accessor for UtteranceAction();
  v18 = UtteranceAction.__allocating_init()();
  a2[3] = v14;
  OUTLINED_FUNCTION_0_2();
  result = lazy protocol witness table accessor for type UtteranceAction and conformance UtteranceAction(v15, v16, &protocol conformance descriptor for UtteranceAction);
  a2[4] = result;
LABEL_11:
  *a2 = v18;
  return result;
}

double specialized Dictionary.subscript.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    outlined init with copy of Any(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t outlined destroy of Any?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *specialized Dictionary.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
  v7 = v6;
  return v6;
}

double specialized Dictionary.subscript.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v7 & 1) != 0))
  {
    outlined init with copy of LinkClient(*(a3 + 56) + 40 * v6, a4);
  }

  else
  {
    *(a4 + 32) = 0;
    result = 0.0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  return result;
}

uint64_t specialized Dictionary.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v3)
  {
  }

  else
  {
    return 0;
  }
}

{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 16 * v4);

  return v6;
}

{
  if (!*(a3 + 16))
  {
    return 0;
  }

  specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v3)
  {
  }

  else
  {
    return 0;
  }
}

uint64_t specialized Dictionary.subscript.getter(char a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 2;
  }

  v3 = specialized __RawDictionaryStorage.find<A>(_:)(a1 & 1);
  if (v4)
  {
    return *(*(a2 + 56) + v3);
  }

  else
  {
    return 2;
  }
}

uint64_t LinkInvocationActionProvider.invocationPayload(for:)(__int128 *a1)
{
  v2 = objc_opt_self();
  v3 = *(a1 + 3);
  v22[0] = 0;
  v4 = [v2 archivedDataWithRootObject:v3 requiringSecureCoding:1 error:v22];
  v5 = v22[0];
  if (v4)
  {
    v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    v9 = *(a1 + 4);
    v22[0] = 0;
    v10 = [v2 archivedDataWithRootObject:v9 requiringSecureCoding:1 error:v22];
    v11 = v22[0];
    if (v10)
    {
      v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_Se_SEptGMd, ".;");
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_3FB80;
      *(inited + 32) = 0xD000000000000010;
      *(inited + 40) = 0x8000000000042590;
      v24 = *(a1 + 8);
      v23 = *a1;
      v16 = v23;
      *(inited + 72) = &type metadata for String;
      *(inited + 80) = &protocol witness table for String;
      *(inited + 48) = v16;
      *(inited + 88) = &protocol witness table for String;
      strcpy((inited + 96), "archivedAction");
      *(inited + 111) = -18;
      *(inited + 136) = &type metadata for Data;
      v17 = lazy protocol witness table accessor for type Data and conformance Data();
      *(inited + 144) = v17;
      v18 = lazy protocol witness table accessor for type Data and conformance Data();
      *(inited + 112) = v6;
      *(inited + 120) = v8;
      *(inited + 152) = v18;
      strcpy((inited + 160), "systemProtocol");
      *(inited + 200) = &type metadata for Data;
      *(inited + 208) = v17;
      *(inited + 216) = v18;
      *(inited + 175) = -18;
      *(inited + 176) = v12;
      *(inited + 184) = v14;
      outlined init with copy of LinkSuggestedActionsRequest(&v23, v22);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSe_SEpMd, &_sSe_SEpMR);
      return Dictionary.init(dictionaryLiteral:)();
    }

    else
    {
      v21 = v11;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      return outlined consume of Data._Representation(v6, v8);
    }
  }

  else
  {
    v20 = v5;
    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }
}

uint64_t lazy protocol witness table accessor for type UtteranceAction and conformance UtteranceAction(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined consume of Data._Representation(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

unint64_t lazy protocol witness table accessor for type Data and conformance Data()
{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

void _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySo25LNActionParameterMetadataCG_AG_18SiriSuggestionsKit0gH0O20DisplayRepresentable_pSgts5NeverOTg5(void (*a1)(_OWORD *__return_ptr, id *), uint64_t a2, unint64_t a3)
{
  v5 = v3;
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v20 = _swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
LABEL_20:

      __break(1u);
      return;
    }

    v8 = 0;
    v9 = v20;
    while (1)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if ((a3 & 0xC000000000000001) != 0)
      {
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v8 >= *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_17;
        }

        v11 = *(a3 + 8 * v8 + 32);
      }

      v4 = v11;
      v18 = v11;
      a1(v19, &v18);
      if (v5)
      {
        goto LABEL_20;
      }

      v5 = 0;

      v20 = v9;
      v13 = v9[2];
      v12 = v9[3];
      v4 = (v13 + 1);
      if (v13 >= v12 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
        v9 = v20;
      }

      v9[2] = v4;
      v14 = &v9[6 * v13];
      v15 = v19[0];
      v16 = v19[2];
      v14[3] = v19[1];
      v14[4] = v16;
      v14[2] = v15;
      ++v8;
      if (v10 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }
}

void *LinkClientResolver.getMetaData(for:for:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  (*(a5 + 16))(v23, a4, a5);
  v8 = v24;
  v9 = v25;
  __swift_project_boxed_opaque_existential_1(v23, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_3EFC0;
  v22 = a1;
  v11 = [a1 identifier];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  *(v10 + 32) = v12;
  *(v10 + 40) = v14;
  v15 = v26;
  v16 = (*(v9 + 40))(a2, a3, v10, v8, v9);

  if (!v15)
  {
    v17 = [v22 identifier];
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    v14 = specialized Dictionary.subscript.getter(v18, v20, v16);
  }

  __swift_destroy_boxed_opaque_existential_1(v23);
  return v14;
}

uint64_t LinkClientResolver.getAppIntentAction(from:for:withParameters:andSalientEntities:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[6] = a7;
  v8[7] = v7;
  v8[4] = a5;
  v8[5] = a6;
  v8[2] = a1;
  v8[3] = a4;
  return OUTLINED_FUNCTION_6();
}

uint64_t LinkClientResolver.getAppIntentAction(from:for:withParameters:andSalientEntities:)()
{
  v1 = [*(v0 + 16) identifier];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  *(v0 + 64) = v2;
  *(v0 + 72) = v4;
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  *v5 = v0;
  v5[1] = LinkClientResolver.getAppIntentAction(from:for:withParameters:andSalientEntities:);
  v6 = *(v0 + 48);
  v7 = *(v0 + 32);
  v8 = *(v0 + 40);
  v10 = *(v0 + 16);
  v9 = *(v0 + 24);

  return LinkClientResolver.getParameters(for:withParameters:andSalientEntities:)(v10, v9, v7, v8, v6);
}

{
  v26 = v0;
  if (v0[11])
  {
    if (one-time initialization token for appIntentsSuggestions != -1)
    {
      OUTLINED_FUNCTION_4_0(&one-time initialization token for appIntentsSuggestions);
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, static Logger.appIntentsSuggestions);

    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v5 = v0[8];
      v4 = v0[9];
      v6 = OUTLINED_FUNCTION_46();
      v7 = swift_slowAlloc();
      v25 = v7;
      *v6 = 136315394;
      v8 = Dictionary.description.getter();
      v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v25);

      *(v6 + 4) = v10;
      *(v6 + 12) = 2080;
      *(v6 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, &v25);
      _os_log_impl(&dword_0, v2, v3, "Got parameters: %s for %s", v6, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_11(v7);
      OUTLINED_FUNCTION_11(v6);
    }

    v11 = v0[11];
    v12 = v0[8];
    v13 = v0[9];
  }

  else
  {
    if (one-time initialization token for appIntentsSuggestions != -1)
    {
      OUTLINED_FUNCTION_4_0(&one-time initialization token for appIntentsSuggestions);
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logger.appIntentsSuggestions);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    v17 = os_log_type_enabled(v15, v16);
    v18 = v0[9];
    if (v17)
    {
      v19 = v0[8];
      v20 = swift_slowAlloc();
      v21 = OUTLINED_FUNCTION_47();
      v25 = v21;
      *v20 = 136315138;
      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v18, &v25);

      *(v20 + 4) = v22;
      _os_log_impl(&dword_0, v15, v16, "Not all mandatory parameters for: %s could be determined", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      OUTLINED_FUNCTION_11(v21);
      OUTLINED_FUNCTION_11(v20);
    }

    else
    {
    }

    v12 = 0;
    v13 = 0;
    v11 = 0;
  }

  v23 = v0[1];

  return v23(v12, v13, v11);
}

{
  v15 = v0;
  if (one-time initialization token for appIntentsSuggestions != -1)
  {
    OUTLINED_FUNCTION_4_0(&one-time initialization token for appIntentsSuggestions);
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.appIntentsSuggestions);

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[9];
  if (v4)
  {
    v6 = v0[8];
    v7 = OUTLINED_FUNCTION_46();
    v8 = swift_slowAlloc();
    v9 = OUTLINED_FUNCTION_47();
    v14 = v9;
    *v7 = 138412546;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    *(v7 + 12) = 2080;
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v5, &v14);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_0, v2, v3, "Unable to fetch parameter info: %@ for: %s", v7, 0x16u);
    outlined destroy of CoreSignalTypes?(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_11(v8);
    __swift_destroy_boxed_opaque_existential_1(v9);
    OUTLINED_FUNCTION_11(v9);
    OUTLINED_FUNCTION_11(v7);
  }

  else
  {
  }

  v12 = v0[1];

  return v12(0, 0, 0);
}

uint64_t LinkClientResolver.getAppIntentAction(from:for:withParameters:andSalientEntities:)(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 88) = a1;
  *(v3 + 96) = v1;

  if (v1)
  {
    v4 = LinkClientResolver.getAppIntentAction(from:for:withParameters:andSalientEntities:);
  }

  else
  {
    v4 = LinkClientResolver.getAppIntentAction(from:for:withParameters:andSalientEntities:);
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t LinkClientResolver.getParameters(for:withParameters:andSalientEntities:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[42] = a5;
  v6[43] = v5;
  v6[40] = a3;
  v6[41] = a4;
  v6[38] = a1;
  v6[39] = a2;
  return OUTLINED_FUNCTION_6();
}

uint64_t LinkClientResolver.getParameters(for:withParameters:andSalientEntities:)()
{
  v86 = v0;
  v1 = *(v0 + 344);
  v74 = *(v0 + 328);
  v77 = *(v0 + 312);
  v2 = [*(v0 + 304) parameters];
  type metadata accessor for LNActionParameterMetadata();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = swift_task_alloc();
  *(v4 + 16) = v74;
  *(v4 + 32) = v1;
  *(v4 + 40) = v77;
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySo25LNActionParameterMetadataCG_AG_18SiriSuggestionsKit0gH0O20DisplayRepresentable_pSgts5NeverOTg5(partial apply for closure #1 in LinkClientResolver.getParameters(for:withParameters:andSalientEntities:), v4, v3);
  v6 = v5;

  v7 = 0;
  v8 = v6 + 32;
  v9 = _swiftEmptyArrayStorage;
  v78 = v6;
  v10 = *(v6 + 16);
  v11 = v6 + 32;
  v75 = v6 + 32;
  while (1)
  {
    if (v10 == v7)
    {
      if (v9[2])
      {

        if (one-time initialization token for appIntentsSuggestions != -1)
        {
          goto LABEL_54;
        }

        goto LABEL_15;
      }

      if (!v10)
      {

        v49 = _swiftEmptyArrayStorage;
LABEL_46:
        OUTLINED_FUNCTION_35();
        v66 = _sSD20uniqueKeysWithValuesSDyxq_Gqd__n_tcSTRd__x_q_t7ElementRtd__lufCSS_25SiriLinkSuggestionsPlugin15ActionParameterVSaySS_AGtGTt0g5Tm(v49, v63, v64, v65);
        goto LABEL_50;
      }

      v49 = _swiftEmptyArrayStorage;
      while (1)
      {
        outlined init with copy of (LNActionParameterMetadata, SiriSuggestions.DisplayRepresentable?)(v8, v0 + 80, &_sSo25LNActionParameterMetadataC_18SiriSuggestionsKit0dE0O20DisplayRepresentable_pSgtMd, &_sSo25LNActionParameterMetadataC_18SiriSuggestionsKit0dE0O20DisplayRepresentable_pSgtMR);
        outlined init with copy of (LNActionParameterMetadata, SiriSuggestions.DisplayRepresentable?)(v0 + 88, v0 + 224, &_s18SiriSuggestionsKit0aB0O20DisplayRepresentable_pSgMd, &_s18SiriSuggestionsKit0aB0O20DisplayRepresentable_pSgMR);
        if (*(v0 + 248))
        {
          outlined init with take of SiriSuggestions.DisplayRepresentable((v0 + 224), v0 + 264);
          outlined init with copy of (LNActionParameterMetadata, SiriSuggestions.DisplayRepresentable?)(v0 + 80, v0 + 128, &_sSo25LNActionParameterMetadataC_18SiriSuggestionsKit0dE0O20DisplayRepresentable_pSgtMd, &_sSo25LNActionParameterMetadataC_18SiriSuggestionsKit0dE0O20DisplayRepresentable_pSgtMR);
          v50 = outlined bridged method (ob) of @objc LNActionParameterMetadata.name.getter(*(v0 + 128));
          if (v51)
          {
            *(v0 + 16) = v50;
            *(v0 + 24) = v51;
            outlined init with take of SiriSuggestions.DisplayRepresentable((v0 + 264), v0 + 32);
            v52 = *(v0 + 96);
            *(v0 + 176) = *(v0 + 80);
            *(v0 + 192) = v52;
            *(v0 + 208) = *(v0 + 112);
            *(v0 + 72) = *(v0 + 176);
            outlined destroy of CoreSignalTypes?(v0 + 184, &_s18SiriSuggestionsKit0aB0O20DisplayRepresentable_pSgMd, &_s18SiriSuggestionsKit0aB0O20DisplayRepresentable_pSgMR);
          }

          else
          {
            __swift_destroy_boxed_opaque_existential_1((v0 + 264));
            outlined destroy of CoreSignalTypes?(v0 + 80, &_sSo25LNActionParameterMetadataC_18SiriSuggestionsKit0dE0O20DisplayRepresentable_pSgtMd, &_sSo25LNActionParameterMetadataC_18SiriSuggestionsKit0dE0O20DisplayRepresentable_pSgtMR);
            *(v0 + 16) = 0u;
            *(v0 + 32) = 0u;
            *(v0 + 48) = 0u;
            *(v0 + 64) = 0u;
          }

          outlined destroy of CoreSignalTypes?(v0 + 136, &_s18SiriSuggestionsKit0aB0O20DisplayRepresentable_pSgMd, &_s18SiriSuggestionsKit0aB0O20DisplayRepresentable_pSgMR);
          if (*(v0 + 24))
          {
            v53 = *(v0 + 32);
            v82 = *(v0 + 16);
            v83 = v53;
            v54 = *(v0 + 64);
            v84 = *(v0 + 48);
            v85 = v54;
            v55 = v8;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
              v49 = v61;
            }

            v56 = v49[2];
            if (v56 >= v49[3] >> 1)
            {
              specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
              v49 = v62;
            }

            v49[2] = v56 + 1;
            v57 = &v49[8 * v56];
            v58 = v82;
            v59 = v83;
            v60 = v85;
            v57[4] = v84;
            v57[5] = v60;
            v57[2] = v58;
            v57[3] = v59;
            v8 = v55;
            goto LABEL_42;
          }
        }

        else
        {
          outlined destroy of CoreSignalTypes?(v0 + 80, &_sSo25LNActionParameterMetadataC_18SiriSuggestionsKit0dE0O20DisplayRepresentable_pSgtMd, &_sSo25LNActionParameterMetadataC_18SiriSuggestionsKit0dE0O20DisplayRepresentable_pSgtMR);
          *(v0 + 16) = 0u;
          *(v0 + 32) = 0u;
          *(v0 + 48) = 0u;
          *(v0 + 64) = 0u;
        }

        outlined destroy of CoreSignalTypes?(v0 + 16, &_sSS_25SiriLinkSuggestionsPlugin15ActionParameterVtSgMd, &_sSS_25SiriLinkSuggestionsPlugin15ActionParameterVtSgMR);
LABEL_42:
        v8 += 48;
        if (!--v10)
        {

          goto LABEL_46;
        }
      }
    }

    if (v7 >= *(v78 + 16))
    {
      break;
    }

    outlined init with copy of (LNActionParameterMetadata, SiriSuggestions.DisplayRepresentable?)(v11, v0 + 16, &_sSo25LNActionParameterMetadataC_18SiriSuggestionsKit0dE0O20DisplayRepresentable_pSgtMd, &_sSo25LNActionParameterMetadataC_18SiriSuggestionsKit0dE0O20DisplayRepresentable_pSgtMR);
    outlined init with copy of (LNActionParameterMetadata, SiriSuggestions.DisplayRepresentable?)(v0 + 16, v0 + 80, &_sSo25LNActionParameterMetadataC_18SiriSuggestionsKit0dE0O20DisplayRepresentable_pSgtMd, &_sSo25LNActionParameterMetadataC_18SiriSuggestionsKit0dE0O20DisplayRepresentable_pSgtMR);
    v12 = *(v0 + 80);
    v13 = [v12 isOptional];

    outlined destroy of CoreSignalTypes?(v0 + 88, &_s18SiriSuggestionsKit0aB0O20DisplayRepresentable_pSgMd, &_s18SiriSuggestionsKit0aB0O20DisplayRepresentable_pSgMR);
    if ((v13 & 1) != 0 || *(v0 + 48))
    {
      outlined destroy of CoreSignalTypes?(v0 + 16, &_sSo25LNActionParameterMetadataC_18SiriSuggestionsKit0dE0O20DisplayRepresentable_pSgtMd, &_sSo25LNActionParameterMetadataC_18SiriSuggestionsKit0dE0O20DisplayRepresentable_pSgtMR);
    }

    else
    {
      v14 = *(v0 + 32);
      v82 = *(v0 + 16);
      v83 = v14;
      v84 = *(v0 + 48);
      v81 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9[2] + 1, 1);
        v9 = v81;
      }

      v16 = v9[2];
      v15 = v9[3];
      if (v16 >= v15 >> 1)
      {
        v20 = OUTLINED_FUNCTION_40(v15);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v20, v21, v22);
        v9 = v81;
      }

      v9[2] = v16 + 1;
      v17 = &v9[6 * v16];
      v18 = v82;
      v19 = v84;
      v17[3] = v83;
      v17[4] = v19;
      v17[2] = v18;
      v8 = v75;
    }

    v11 += 48;
    ++v7;
  }

  __break(1u);
LABEL_54:
  OUTLINED_FUNCTION_4_0(&one-time initialization token for appIntentsSuggestions);
LABEL_15:
  v23 = *(v0 + 304);
  v24 = type metadata accessor for Logger();
  __swift_project_value_buffer(v24, static Logger.appIntentsSuggestions);
  v25 = v23;

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = *(v0 + 304);
    v29 = OUTLINED_FUNCTION_46();
    v79 = swift_slowAlloc();
    v80 = v79;
    *v29 = 136315394;
    v30 = [v28 identifier];
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;

    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v33, &v80);

    *(v29 + 4) = v34;
    *(v29 + 12) = 2080;
    v35 = v9[2];
    if (v35)
    {
      v73 = v29;
      v76 = v26;
      v81 = _swiftEmptyArrayStorage;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v35, 0);
      v36 = (v9 + 4);
      v37 = v81;
      do
      {
        outlined init with copy of (LNActionParameterMetadata, SiriSuggestions.DisplayRepresentable?)(v36, v0 + 16, &_sSo25LNActionParameterMetadataC_18SiriSuggestionsKit0dE0O20DisplayRepresentable_pSgtMd, &_sSo25LNActionParameterMetadataC_18SiriSuggestionsKit0dE0O20DisplayRepresentable_pSgtMR);
        *&v82 = 0;
        *(&v82 + 1) = 0xE000000000000000;
        outlined init with copy of (LNActionParameterMetadata, SiriSuggestions.DisplayRepresentable?)(v0 + 16, v0 + 80, &_sSo25LNActionParameterMetadataC_18SiriSuggestionsKit0dE0O20DisplayRepresentable_pSgtMd, &_sSo25LNActionParameterMetadataC_18SiriSuggestionsKit0dE0O20DisplayRepresentable_pSgtMR);
        v38 = outlined bridged method (ob) of @objc LNActionParameterMetadata.name.getter(*(v0 + 80));
        if (v39)
        {
          v40 = v38;
        }

        else
        {
          v40 = 0x656D616E5F6F6E3CLL;
        }

        if (v39)
        {
          v41 = v39;
        }

        else
        {
          v41 = 0xE90000000000003ELL;
        }

        outlined destroy of CoreSignalTypes?(v0 + 88, &_s18SiriSuggestionsKit0aB0O20DisplayRepresentable_pSgMd, &_s18SiriSuggestionsKit0aB0O20DisplayRepresentable_pSgMR);
        v42._countAndFlagsBits = v40;
        v42._object = v41;
        String.append(_:)(v42);

        v43 = v82;
        outlined destroy of CoreSignalTypes?(v0 + 16, &_sSo25LNActionParameterMetadataC_18SiriSuggestionsKit0dE0O20DisplayRepresentable_pSgtMd, &_sSo25LNActionParameterMetadataC_18SiriSuggestionsKit0dE0O20DisplayRepresentable_pSgtMR);
        v81 = v37;
        v45 = v37[2];
        v44 = v37[3];
        if (v45 >= v44 >> 1)
        {
          v46 = OUTLINED_FUNCTION_40(v44);
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v46, v47, v48);
          v37 = v81;
        }

        v37[2] = v45 + 1;
        *&v37[2 * v45 + 4] = v43;
        v36 += 48;
        --v35;
      }

      while (v35);

      v26 = v76;
      v29 = v73;
    }

    else
    {

      v37 = _swiftEmptyArrayStorage;
    }

    *(v0 + 16) = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v67 = BidirectionalCollection<>.joined(separator:)();
    v69 = v68;

    v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v69, &v80);

    *(v29 + 14) = v70;
    _os_log_impl(&dword_0, v26, v27, "We have not been able to set all mandatory parameters for action %s. Missing parameters:\n %s", v29, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_11(v79);
    OUTLINED_FUNCTION_11(v29);
  }

  else
  {
  }

  v66 = 0;
LABEL_50:
  v71 = *(v0 + 8);

  return v71(v66);
}

void closure #1 in LinkClientResolver.getParameters(for:withParameters:andSalientEntities:)(void **a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X3>, void **a6@<X8>)
{
  v7 = *a1;
  *a6 = *a1;
  LinkClientResolver.getParameter(for:withParameters:andSalientEntities:)(v7, a2, a3, (a6 + 1));
}

void LinkClientResolver.getParameter(for:withParameters:andSalientEntities:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22IntelligenceFlowShared16RetrievedContextVSgMd, &_s22IntelligenceFlowShared16RetrievedContextVSgMR);
  __chkstk_darwin(v8 - 8);
  v10 = &v72 - v9;
  v11 = type metadata accessor for RetrievedContext();
  OUTLINED_FUNCTION_14_0();
  v82 = v12;
  v14 = __chkstk_darwin(v13);
  v80 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v18 = &v72 - v17;
  __chkstk_darwin(v16);
  v20 = &v72 - v19;
  v21 = [a1 name];
  v81 = v18;
  if (v21)
  {
    v22 = v21;
    v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;
  }

  else
  {
    v83 = 0;
    v24 = 0;
  }

  v84 = [a1 valueType];
  if (!v24)
  {
    if (one-time initialization token for appIntentsSuggestions != -1)
    {
      OUTLINED_FUNCTION_4_0(&one-time initialization token for appIntentsSuggestions);
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, static Logger.appIntentsSuggestions);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v27, v28))
    {
      goto LABEL_22;
    }

    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_0, v27, v28, "Unknown parameter name", v29, 2u);
    goto LABEL_20;
  }

  v25 = v83;
  specialized Dictionary.subscript.getter(v83, v24, a2, &v85);
  if (v86)
  {

    outlined init with take of SiriSuggestions.DisplayRepresentable(&v85, v87);
    outlined init with take of SiriSuggestions.DisplayRepresentable(v87, a4);
    return;
  }

  outlined destroy of CoreSignalTypes?(&v85, &_s18SiriSuggestionsKit0aB0O20DisplayRepresentable_pSgMd, &_s18SiriSuggestionsKit0aB0O20DisplayRepresentable_pSgMR);
  v30 = [v84 description];
  v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = v31;

  if (one-time initialization token for appIntentsSuggestions != -1)
  {
    OUTLINED_FUNCTION_4_0(&one-time initialization token for appIntentsSuggestions);
  }

  v33 = type metadata accessor for Logger();
  v34 = __swift_project_value_buffer(v33, static Logger.appIntentsSuggestions);

  v77 = v34;
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.debug.getter();

  LODWORD(v75) = v36;
  v37 = os_log_type_enabled(v35, v36);
  v78 = a3;
  if (v37)
  {
    v38 = OUTLINED_FUNCTION_47();
    v76 = v32;
    v39 = v38;
    v73 = swift_slowAlloc();
    *&v87[0] = v73;
    *v39 = 136315650;
    *(v39 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v24, v87);
    v74 = v11;
    *(v39 + 12) = 2080;
    *(v39 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v79, v76, v87);
    *(v39 + 22) = 2080;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay22IntelligenceFlowShared16RetrievedContextVGMd, &_sSay22IntelligenceFlowShared16RetrievedContextVGMR);
    v40 = Dictionary.Keys.description.getter();
    v42 = a4;
    v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v41, v87);
    v11 = v74;

    *(v39 + 24) = v43;
    a4 = v42;
    v25 = v83;
    _os_log_impl(&dword_0, v35, v75, "determining parater - %s paramType - %s from andSalientEntities Keys - %s", v39, 0x20u);
    v44 = v73;
    swift_arrayDestroy();
    OUTLINED_FUNCTION_11(v44);
    v45 = v39;
    v32 = v76;
    OUTLINED_FUNCTION_11(v45);
  }

  v46 = specialized Dictionary.subscript.getter();
  if (!v46)
  {
LABEL_18:

    v27 = Logger.logObject.getter();
    v47 = static os_log_type_t.debug.getter();

    if (!os_log_type_enabled(v27, v47))
    {

      goto LABEL_22;
    }

    v29 = OUTLINED_FUNCTION_46();
    v48 = swift_slowAlloc();
    *&v87[0] = v48;
    *v29 = 136315394;
    v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v24, v87);
    v50 = v32;
    v51 = v49;

    *(v29 + 4) = v51;
    *(v29 + 12) = 2080;
    v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v79, v50, v87);

    *(v29 + 14) = v52;
    _os_log_impl(&dword_0, v27, v47, "No parameter available to set for %s, of type: %s", v29, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_11(v48);
LABEL_20:
    OUTLINED_FUNCTION_11(v29);
LABEL_22:

    *(a4 + 32) = 0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
    return;
  }

  *&v87[0] = v46;
  specialized MutableCollection<>.shuffle<A>(using:)();
  specialized Collection.first.getter(*&v87[0], v10);

  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    outlined destroy of CoreSignalTypes?(v10, &_s22IntelligenceFlowShared16RetrievedContextVSgMd, &_s22IntelligenceFlowShared16RetrievedContextVSgMR);
    goto LABEL_18;
  }

  v78 = a4;
  v53 = v10;
  v54 = v82;
  v75 = *(v82 + 32);
  v75(v20, v53, v11);
  v55 = *(v54 + 16);
  v56 = v81;
  v76 = v20;
  v74 = v55;
  (v55)(v81);

  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v57, v58))
  {
    v59 = v54;
    v60 = OUTLINED_FUNCTION_47();
    v77 = swift_slowAlloc();
    *&v87[0] = v77;
    *v60 = 136315650;
    v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v83, v24, v87);
    LODWORD(v83) = v58;
    v62 = v11;
    v63 = v61;

    *(v60 + 4) = v63;
    *(v60 + 12) = 2080;
    v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v79, v32, v87);

    *(v60 + 14) = v64;
    *(v60 + 22) = 2080;
    v74(v80, v56, v62);
    v65 = String.init<A>(describing:)();
    v67 = v66;
    (*(v59 + 8))(v56, v62);
    v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v67, v87);

    *(v60 + 24) = v68;
    v11 = v62;
    _os_log_impl(&dword_0, v57, v83, "Setting parameter %s, of type: %s to %s using salient entities", v60, 0x20u);
    v69 = v77;
    swift_arrayDestroy();
    OUTLINED_FUNCTION_11(v69);
    OUTLINED_FUNCTION_11(v60);
  }

  else
  {

    (*(v54 + 8))(v56, v11);
  }

  v70 = v78;
  v78[3] = v11;
  v70[4] = _s18SiriSuggestionsKit6SignalCACSHAAWlTm_0(&lazy protocol witness table cache variable for type RetrievedContext and conformance RetrievedContext, &type metadata accessor for RetrievedContext, &protocol conformance descriptor for RetrievedContext);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v70);
  v75(boxed_opaque_existential_1, v76, v11);
}

void *_sSD20uniqueKeysWithValuesSDyxq_Gqd__n_tcSTRd__x_q_t7ElementRtd__lufCSS_25SiriLinkSuggestionsPlugin15ActionParameterVSaySS_AGtGTt0g5Tm(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(uint64_t, uint64_t, void **))
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v5 = &_swiftEmptyDictionarySingleton;
  }

  v8 = v5;

  a4(v6, 1, &v8);

  return v8;
}

uint64_t RetrievedContext.getDisplay(for:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7ToolKit10TypedValueOSgMd, &_s7ToolKit10TypedValueOSgMR);
  __chkstk_darwin(v0 - 8);
  v2 = &v15 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7ToolKit21DisplayRepresentationVSgMd, _s7ToolKit21DisplayRepresentationVSgMR);
  __chkstk_darwin(v3 - 8);
  v5 = &v15 - v4;
  RetrievedContext.typedValue.getter();
  v6 = type metadata accessor for TypedValue();
  if (__swift_getEnumTagSinglePayload(v2, 1, v6) == 1)
  {
    v7 = &_s7ToolKit10TypedValueOSgMd;
    v8 = &_s7ToolKit10TypedValueOSgMR;
    v9 = v2;
  }

  else
  {
    TypedValue.displayRepresentation.getter();
    OUTLINED_FUNCTION_15();
    (*(v10 + 8))(v2, v6);
    v11 = type metadata accessor for DisplayRepresentation();
    if (__swift_getEnumTagSinglePayload(v5, 1, v11) != 1)
    {
      v12 = DisplayRepresentation.title.getter();
      OUTLINED_FUNCTION_15();
      (*(v13 + 8))(v5, v11);
      return v12;
    }

    v7 = &_s7ToolKit21DisplayRepresentationVSgMd;
    v8 = _s7ToolKit21DisplayRepresentationVSgMR;
    v9 = v5;
  }

  outlined destroy of CoreSignalTypes?(v9, v7, v8);
  return 0;
}

uint64_t implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

{
  return a1();
}

void specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)()
{
  OUTLINED_FUNCTION_26();
  if ((v4 & 1) == 0 || (OUTLINED_FUNCTION_9_1(), v5 == v6))
  {
LABEL_6:
    OUTLINED_FUNCTION_11_1();
    if (v3)
    {
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySnySiGGMd, &_ss23_ContiguousArrayStorageCySnySiGGMR);
      v8 = OUTLINED_FUNCTION_41(v7);
      OUTLINED_FUNCTION_20_0(v8);
      OUTLINED_FUNCTION_25(v9 / 16);
      if (v1)
      {
LABEL_8:
        v10 = OUTLINED_FUNCTION_10_0();
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else
    {
      v3 = _swiftEmptyArrayStorage;
      if (v1)
      {
        goto LABEL_8;
      }
    }

    memcpy(v3 + 4, (v0 + 32), 16 * v2);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_23();
  if (!v5)
  {
    OUTLINED_FUNCTION_8_1();
    goto LABEL_6;
  }

  __break(1u);
}

{
  OUTLINED_FUNCTION_26();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_9_1(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_11_1();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_25SiriLinkSuggestionsPlugin15ActionParameterVtGMd, &_ss23_ContiguousArrayStorageCySS_25SiriLinkSuggestionsPlugin15ActionParameterVtGMR);
      v6 = swift_allocObject();
      OUTLINED_FUNCTION_20_0(v6);
      OUTLINED_FUNCTION_25(v7 / 64);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_10_0();
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_25SiriLinkSuggestionsPlugin15ActionParameterVtMd, &_sSS_25SiriLinkSuggestionsPlugin15ActionParameterVtMR);
    OUTLINED_FUNCTION_21(v11);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_23();
  if (!v4)
  {
    OUTLINED_FUNCTION_8_1();
    goto LABEL_6;
  }

  __break(1u);
}

{
  OUTLINED_FUNCTION_26();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_9_1(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_11_1();
    if (v2)
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
      v10 = OUTLINED_FUNCTION_41(v9);
      OUTLINED_FUNCTION_20_0(v10);
      OUTLINED_FUNCTION_25(v11 / 16);
      if (v1)
      {
LABEL_8:
        v12 = OUTLINED_FUNCTION_10_0();
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(v12, v13, v14);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_22(v6, v7, v8, &type metadata for String);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_23();
  if (!v4)
  {
    OUTLINED_FUNCTION_8_1();
    goto LABEL_6;
  }

  __break(1u);
}

{
  OUTLINED_FUNCTION_26();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_9_1(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_11_1();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_Say22IntelligenceFlowShared16RetrievedContextVGtGMd, &_ss23_ContiguousArrayStorageCySS_Say22IntelligenceFlowShared16RetrievedContextVGtGMR);
      v7 = OUTLINED_FUNCTION_31(v6);
      OUTLINED_FUNCTION_7_0(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_10_0();
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_Say22IntelligenceFlowShared16RetrievedContextVGtMd, &_sSS_Say22IntelligenceFlowShared16RetrievedContextVGtMR);
    OUTLINED_FUNCTION_21(v11);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_23();
  if (!v4)
  {
    OUTLINED_FUNCTION_8_1();
    goto LABEL_6;
  }

  __break(1u);
}

{
  OUTLINED_FUNCTION_26();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_9_1(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_11_1();
    if (v2)
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy25SiriLinkSuggestionsPlugin16AppIntentDetailsVGMd, &_ss23_ContiguousArrayStorageCy25SiriLinkSuggestionsPlugin16AppIntentDetailsVGMR);
      v10 = OUTLINED_FUNCTION_31(v9);
      v6 = OUTLINED_FUNCTION_7_0(v10);
      if (v1)
      {
LABEL_8:
        v11 = OUTLINED_FUNCTION_10_0();
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_22(v6, v7, v8, &type metadata for AppIntentDetails);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_23();
  if (!v4)
  {
    OUTLINED_FUNCTION_8_1();
    goto LABEL_6;
  }

  __break(1u);
}

{
  OUTLINED_FUNCTION_26();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_9_1(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_11_1();
    if (v2)
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy25SiriLinkSuggestionsPlugin0E15SuggestedActionVGMd, &_ss23_ContiguousArrayStorageCy25SiriLinkSuggestionsPlugin0E15SuggestedActionVGMR);
      v10 = OUTLINED_FUNCTION_31(v9);
      v6 = OUTLINED_FUNCTION_7_0(v10);
      if (v1)
      {
LABEL_8:
        v11 = OUTLINED_FUNCTION_10_0();
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_22(v6, v7, v8, &type metadata for LinkSuggestedAction);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_23();
  if (!v4)
  {
    OUTLINED_FUNCTION_8_1();
    goto LABEL_6;
  }

  __break(1u);
}

{
  OUTLINED_FUNCTION_26();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_9_1(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_11_1();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SaySo14LNAutoShortcutCGtGMd, &_ss23_ContiguousArrayStorageCySS_SaySo14LNAutoShortcutCGtGMR);
      v7 = OUTLINED_FUNCTION_31(v6);
      OUTLINED_FUNCTION_7_0(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_10_0();
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SaySo14LNAutoShortcutCGtMd, &_sSS_SaySo14LNAutoShortcutCGtMR);
    OUTLINED_FUNCTION_21(v11);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_23();
  if (!v4)
  {
    OUTLINED_FUNCTION_8_1();
    goto LABEL_6;
  }

  __break(1u);
}

{
  OUTLINED_FUNCTION_26();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_9_1(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_11_1();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy18SiriSuggestionsKit6SignalC_SayAC31CandidateSuggestionConfigurator_pGtGMd, &_ss23_ContiguousArrayStorageCy18SiriSuggestionsKit6SignalC_SayAC31CandidateSuggestionConfigurator_pGtGMR);
      v7 = OUTLINED_FUNCTION_41(v6);
      OUTLINED_FUNCTION_20_0(v7);
      OUTLINED_FUNCTION_25(v8 / 16);
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_10_0();
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriSuggestionsKit6SignalC_SayAA31CandidateSuggestionConfigurator_pGtMd, &_s18SiriSuggestionsKit6SignalC_SayAA31CandidateSuggestionConfigurator_pGtMR);
    OUTLINED_FUNCTION_21(v12);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_23();
  if (!v4)
  {
    OUTLINED_FUNCTION_8_1();
    goto LABEL_6;
  }

  __break(1u);
}

{
  OUTLINED_FUNCTION_26();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_9_1(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_11_1();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy18SiriSuggestionsKit15OwnerDefinition_pGMd, &_ss23_ContiguousArrayStorageCy18SiriSuggestionsKit15OwnerDefinition_pGMR);
      v7 = OUTLINED_FUNCTION_31(v6);
      OUTLINED_FUNCTION_7_0(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_10_0();
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriSuggestionsKit15OwnerDefinition_pMd, &_s18SiriSuggestionsKit15OwnerDefinition_pMR);
    OUTLINED_FUNCTION_21(v11);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_23();
  if (!v4)
  {
    OUTLINED_FUNCTION_8_1();
    goto LABEL_6;
  }

  __break(1u);
}

{
  OUTLINED_FUNCTION_26();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_9_1(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_11_1();
    if (v2)
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy25SiriLinkSuggestionsPlugin013AutoShortcutsF22OwnerDefinitionFactoryC14ResolvedPhraseVGMd, &_ss23_ContiguousArrayStorageCy25SiriLinkSuggestionsPlugin013AutoShortcutsF22OwnerDefinitionFactoryC14ResolvedPhraseVGMR);
      v10 = OUTLINED_FUNCTION_31(v9);
      v6 = OUTLINED_FUNCTION_7_0(v10);
      if (v1)
      {
LABEL_8:
        v11 = OUTLINED_FUNCTION_10_0();
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_22(v6, v7, v8, &type metadata for AutoShortcutsSuggestionsOwnerDefinitionFactory.ResolvedPhrase);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_23();
  if (!v4)
  {
    OUTLINED_FUNCTION_8_1();
    goto LABEL_6;
  }

  __break(1u);
}

void specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC22IntelligenceFlowShared16RetrievedContextV_Tt1g5, &type metadata accessor for RetrievedContext, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC18SiriSuggestionsKit19VersionedInvocationV_Tt1g5, &type metadata accessor for VersionedInvocation, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

void specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t (*a6)(void), void (*a7)(unint64_t, uint64_t, unint64_t))
{
  v10 = a1;
  if (a3)
  {
    OUTLINED_FUNCTION_9_1();
    if (v12 != v13)
    {
      OUTLINED_FUNCTION_23();
      if (v12)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_8_1();
    }
  }

  else
  {
    v11 = a2;
  }

  v14 = *(a4 + 16);
  v15 = a5(v14, v11);
  v16 = *(a6(0) - 8);
  if (v10)
  {
    v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    a7(a4 + v17, v14, v15 + v17);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

unint64_t type metadata accessor for LNActionParameterMetadata()
{
  result = lazy cache variable for type metadata for LNActionParameterMetadata;
  if (!lazy cache variable for type metadata for LNActionParameterMetadata)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for LNActionParameterMetadata);
  }

  return result;
}

void specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)()
{
  OUTLINED_FUNCTION_16_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy18SiriSuggestionsKit6SignalCSayAC31CandidateSuggestionConfigurator_pGGMd, &_ss18_DictionaryStorageCy18SiriSuggestionsKit6SignalCSayAC31CandidateSuggestionConfigurator_pGGMR);
  OUTLINED_FUNCTION_37();
  v33 = v1;
  v3 = static _DictionaryStorage.resize(original:capacity:move:)();
  if (!v2[2])
  {
LABEL_29:

LABEL_30:
    *v0 = v3;
    return;
  }

  v31 = v0;
  v32 = v2;
  v4 = 0;
  v5 = v2;
  OUTLINED_FUNCTION_0_3();
  v8 = v7 & v6;
  v10 = (v9 + 63) >> 6;
  v11 = v3 + 64;
  if (!v8)
  {
LABEL_4:
    v13 = v4;
    while (1)
    {
      v4 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v4 >= v10)
      {
        break;
      }

      ++v13;
      if (*(v5 + 8 * v4))
      {
        OUTLINED_FUNCTION_12_0();
        v34 = v15 & v14;
        goto LABEL_9;
      }
    }

    if ((v33 & 1) == 0)
    {

      v0 = v31;
      goto LABEL_30;
    }

    OUTLINED_FUNCTION_15_1();
    v0 = v31;
    if (v27 != v28)
    {
      OUTLINED_FUNCTION_18_0(v26);
    }

    else
    {
      v29 = OUTLINED_FUNCTION_14_1();
      specialized UnsafeMutablePointer.assign(repeating:count:)(v29, v30, v5);
    }

    v2[2] = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v8));
    v34 = (v8 - 1) & v8;
LABEL_9:
    v16 = v12 | (v4 << 6);
    v17 = *(v2[6] + 8 * v16);
    v18 = *(v2[7] + 8 * v16);
    if ((v33 & 1) == 0)
    {
    }

    type metadata accessor for Signal();
    _s18SiriSuggestionsKit6SignalCACSHAAWlTm_0(&lazy protocol witness table cache variable for type Signal and conformance Signal, &type metadata accessor for Signal, &protocol conformance descriptor for Signal);
    dispatch thunk of Hashable._rawHashValue(seed:)();
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_32();
    if (v19)
    {
      break;
    }

    OUTLINED_FUNCTION_6_1();
LABEL_21:
    OUTLINED_FUNCTION_3_1();
    *(v11 + v23) |= v24;
    *(*(v3 + 48) + 8 * v25) = v17;
    *(*(v3 + 56) + 8 * v25) = v18;
    OUTLINED_FUNCTION_19_1();
    v2 = v32;
    v8 = v34;
    if (!v34)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_5_1();
  while (1)
  {
    OUTLINED_FUNCTION_33();
    if (v19)
    {
      if (v21)
      {
        break;
      }
    }

    if (v20 == v22)
    {
      v20 = 0;
    }

    if (*(v11 + 8 * v20) != -1)
    {
      OUTLINED_FUNCTION_4_1();
      goto LABEL_21;
    }
  }

LABEL_32:
  __break(1u);
}

{
  OUTLINED_FUNCTION_16_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
  OUTLINED_FUNCTION_37();
  v28 = v1;
  v4 = static _DictionaryStorage.resize(original:capacity:move:)();
  if (!*(v3 + 16))
  {
LABEL_29:

    *v0 = v4;
    return;
  }

  v27 = v3;
  v5 = 0;
  v6 = v3;
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_44();
  if (!v1)
  {
LABEL_4:
    v7 = v5;
    while (1)
    {
      v5 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v5 >= v0)
      {
        break;
      }

      ++v7;
      if (*(v6 + 8 * v5))
      {
        OUTLINED_FUNCTION_12_0();
        v1 = v9 & v8;
        goto LABEL_9;
      }
    }

    if (v28)
    {
      OUTLINED_FUNCTION_15_1();
      if (v23 != v24)
      {
        OUTLINED_FUNCTION_18_0(v22);
      }

      else
      {
        v25 = OUTLINED_FUNCTION_14_1();
        specialized UnsafeMutablePointer.assign(repeating:count:)(v25, v26, v6);
      }

      *(v3 + 16) = 0;
    }

    goto LABEL_29;
  }

  while (1)
  {
    OUTLINED_FUNCTION_27();
LABEL_9:
    OUTLINED_FUNCTION_43();
    v12 = (v11 + 16 * v10);
    v13 = v12[1];
    v29 = *v12;
    if ((v28 & 1) == 0)
    {
    }

    Hasher.init(_seed:)();
    String.hash(into:)();
    Hasher._finalize()();
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_32();
    if (v14)
    {
      break;
    }

    OUTLINED_FUNCTION_6_1();
LABEL_21:
    OUTLINED_FUNCTION_3_1();
    OUTLINED_FUNCTION_34(v18);
    v21 = (v20 + 16 * v19);
    *v21 = v29;
    v21[1] = v13;
    OUTLINED_FUNCTION_19_1();
    v3 = v27;
    if (!v1)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_5_1();
  while (1)
  {
    OUTLINED_FUNCTION_33();
    if (v14)
    {
      if (v16)
      {
        break;
      }
    }

    if (v15 == v17)
    {
      v15 = 0;
    }

    if (*(v2 + 8 * v15) != -1)
    {
      OUTLINED_FUNCTION_4_1();
      goto LABEL_21;
    }
  }

LABEL_31:
  __break(1u);
}

{
  OUTLINED_FUNCTION_17_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo16LNActionMetadataCGMd, &_ss18_DictionaryStorageCySSSo16LNActionMetadataCGMR);
  OUTLINED_FUNCTION_38();
  v25 = v2;
  v4 = static _DictionaryStorage.resize(original:capacity:move:)();
  if (!*(v1 + 16))
  {
LABEL_27:

    *v0 = v4;
    return;
  }

  v24 = v1;
  v5 = 0;
  v6 = v1;
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_30();
  if (!v3)
  {
LABEL_4:
    v7 = v5;
    while (1)
    {
      v5 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v5 >= v0)
      {
        break;
      }

      ++v7;
      if (*(v6 + 8 * v5))
      {
        OUTLINED_FUNCTION_12_0();
        v3 = v9 & v8;
        goto LABEL_9;
      }
    }

    if (v25)
    {
      OUTLINED_FUNCTION_15_1();
      if (v20 != v21)
      {
        OUTLINED_FUNCTION_18_0(v19);
      }

      else
      {
        v22 = OUTLINED_FUNCTION_14_1();
        specialized UnsafeMutablePointer.assign(repeating:count:)(v22, v23, v6);
      }

      *(v1 + 16) = 0;
    }

    goto LABEL_27;
  }

  while (1)
  {
    OUTLINED_FUNCTION_29();
LABEL_9:
    OUTLINED_FUNCTION_28();
    v12 = *(v11 + 8 * v10);
    if ((v25 & 1) == 0)
    {

      v13 = v12;
    }

    Hasher.init(_seed:)();
    String.hash(into:)();
    Hasher._finalize()();
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_32();
    if (v14)
    {
      break;
    }

    OUTLINED_FUNCTION_6_1();
LABEL_19:
    OUTLINED_FUNCTION_3_1();
    OUTLINED_FUNCTION_13_1(v16);
    *(v18 + 8 * v17) = v12;
    OUTLINED_FUNCTION_19_1();
    v1 = v24;
    if (!v3)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_5_1();
  while (1)
  {
    OUTLINED_FUNCTION_33();
    if (v14)
    {
      if (v15)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_39();
    if (!v14)
    {
      OUTLINED_FUNCTION_4_1();
      goto LABEL_19;
    }
  }

LABEL_29:
  __break(1u);
}

{
  OUTLINED_FUNCTION_17_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS18SiriSuggestionsKit0cD0O20DisplayRepresentable_pGMd, &_ss18_DictionaryStorageCySS18SiriSuggestionsKit0cD0O20DisplayRepresentable_pGMR);
  OUTLINED_FUNCTION_38();
  v22 = v2;
  v4 = static _DictionaryStorage.resize(original:capacity:move:)();
  if (!*(v1 + 16))
  {
LABEL_28:

    *v0 = v4;
    return;
  }

  v5 = 0;
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_30();
  if (!v3)
  {
LABEL_4:
    v6 = v5;
    while (1)
    {
      v5 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v0)
      {
        break;
      }

      ++v6;
      if (*(v1 + 8 * v5))
      {
        OUTLINED_FUNCTION_12_0();
        v3 = v8 & v7;
        goto LABEL_9;
      }
    }

    if (v22)
    {
      OUTLINED_FUNCTION_15_1();
      if (v18 != v19)
      {
        OUTLINED_FUNCTION_18_0(v17);
      }

      else
      {
        v20 = OUTLINED_FUNCTION_14_1();
        specialized UnsafeMutablePointer.assign(repeating:count:)(v20, v21, v1);
      }

      *(v1 + 16) = 0;
    }

    goto LABEL_28;
  }

  while (1)
  {
    OUTLINED_FUNCTION_29();
LABEL_9:
    OUTLINED_FUNCTION_28();
    v11 = (v10 + 40 * v9);
    if (v22)
    {
      outlined init with take of SiriSuggestions.DisplayRepresentable(v11, v23);
    }

    else
    {
      outlined init with copy of LinkClient(v11, v23);
    }

    Hasher.init(_seed:)();
    String.hash(into:)();
    Hasher._finalize()();
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_32();
    if (v12)
    {
      break;
    }

    OUTLINED_FUNCTION_6_1();
LABEL_20:
    OUTLINED_FUNCTION_3_1();
    OUTLINED_FUNCTION_13_1(v14);
    outlined init with take of SiriSuggestions.DisplayRepresentable(v23, v16 + 40 * v15);
    OUTLINED_FUNCTION_19_1();
    if (!v3)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_5_1();
  while (1)
  {
    OUTLINED_FUNCTION_33();
    if (v12)
    {
      if (v13)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_39();
    if (!v12)
    {
      OUTLINED_FUNCTION_4_1();
      goto LABEL_20;
    }
  }

LABEL_30:
  __break(1u);
}

{
  OUTLINED_FUNCTION_16_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_37();
  v28 = v1;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  if (!*(v3 + 16))
  {
LABEL_29:

    *v0 = v6;
    return;
  }

  v27 = v3;
  v7 = 0;
  v8 = v3;
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_44();
  if (!v1)
  {
LABEL_4:
    v9 = v7;
    while (1)
    {
      v7 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v0)
      {
        break;
      }

      ++v9;
      if (*(v8 + 8 * v7))
      {
        OUTLINED_FUNCTION_12_0();
        v1 = v11 & v10;
        goto LABEL_9;
      }
    }

    if (v28)
    {
      OUTLINED_FUNCTION_15_1();
      if (v23 != v24)
      {
        OUTLINED_FUNCTION_18_0(v22);
      }

      else
      {
        v25 = OUTLINED_FUNCTION_14_1();
        specialized UnsafeMutablePointer.assign(repeating:count:)(v25, v26, v8);
      }

      *(v3 + 16) = 0;
    }

    goto LABEL_29;
  }

  while (1)
  {
    OUTLINED_FUNCTION_27();
LABEL_9:
    OUTLINED_FUNCTION_43();
    v14 = *(v13 + 8 * v12);
    if ((v28 & 1) == 0)
    {
    }

    Hasher.init(_seed:)();
    String.hash(into:)();
    Hasher._finalize()();
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_32();
    if (v15)
    {
      break;
    }

    OUTLINED_FUNCTION_6_1();
LABEL_21:
    OUTLINED_FUNCTION_3_1();
    OUTLINED_FUNCTION_34(v19);
    *(v21 + 8 * v20) = v14;
    OUTLINED_FUNCTION_19_1();
    v3 = v27;
    if (!v1)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_5_1();
  while (1)
  {
    OUTLINED_FUNCTION_33();
    if (v15)
    {
      if (v17)
      {
        break;
      }
    }

    if (v16 == v18)
    {
      v16 = 0;
    }

    if (*(v2 + 8 * v16) != -1)
    {
      OUTLINED_FUNCTION_4_1();
      goto LABEL_21;
    }
  }

LABEL_31:
  __break(1u);
}

{
  OUTLINED_FUNCTION_17_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
  OUTLINED_FUNCTION_38();
  v22 = v2;
  v4 = static _DictionaryStorage.resize(original:capacity:move:)();
  if (!*(v1 + 16))
  {
LABEL_28:

    *v0 = v4;
    return;
  }

  v5 = 0;
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_30();
  if (!v3)
  {
LABEL_4:
    v6 = v5;
    while (1)
    {
      v5 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v0)
      {
        break;
      }

      ++v6;
      if (*(v1 + 8 * v5))
      {
        OUTLINED_FUNCTION_12_0();
        v3 = v8 & v7;
        goto LABEL_9;
      }
    }

    if (v22)
    {
      OUTLINED_FUNCTION_15_1();
      if (v18 != v19)
      {
        OUTLINED_FUNCTION_18_0(v17);
      }

      else
      {
        v20 = OUTLINED_FUNCTION_14_1();
        specialized UnsafeMutablePointer.assign(repeating:count:)(v20, v21, v1);
      }

      *(v1 + 16) = 0;
    }

    goto LABEL_28;
  }

  while (1)
  {
    OUTLINED_FUNCTION_29();
LABEL_9:
    OUTLINED_FUNCTION_28();
    v11 = (v10 + 32 * v9);
    if (v22)
    {
      outlined init with take of Any(v11, v23);
    }

    else
    {
      outlined init with copy of Any(v11, v23);
    }

    Hasher.init(_seed:)();
    String.hash(into:)();
    Hasher._finalize()();
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_32();
    if (v12)
    {
      break;
    }

    OUTLINED_FUNCTION_6_1();
LABEL_20:
    OUTLINED_FUNCTION_3_1();
    OUTLINED_FUNCTION_13_1(v14);
    outlined init with take of Any(v23, (v16 + 32 * v15));
    OUTLINED_FUNCTION_19_1();
    if (!v3)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_5_1();
  while (1)
  {
    OUTLINED_FUNCTION_33();
    if (v12)
    {
      if (v13)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_39();
    if (!v12)
    {
      OUTLINED_FUNCTION_4_1();
      goto LABEL_20;
    }
  }

LABEL_30:
  __break(1u);
}

Swift::Int specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS25SiriLinkSuggestionsPlugin15ActionParameterVGMd, &_ss18_DictionaryStorageCySS25SiriLinkSuggestionsPlugin15ActionParameterVGMR);
  v38 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_32:

LABEL_33:
    *v3 = v7;
    return result;
  }

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
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v2;
    if (v37 >= 64)
    {
      specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v37 + 63) >> 6, v5 + 64);
    }

    else
    {
      *v9 = -1 << v37;
    }

    *(v5 + 16) = 0;
    goto LABEL_32;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = (*(v5 + 48) + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    v22 = (*(v5 + 56) + 48 * v18);
    if (v38)
    {
      v23 = *v22;
      v24 = v22[2];
      v40 = v22[1];
      v41 = v24;
      v39 = v23;
    }

    else
    {
      outlined init with copy of ActionParameter(v22, &v39);
    }

    Hasher.init(_seed:)();
    String.hash(into:)();
    result = Hasher._finalize()();
    v25 = -1 << *(v7 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
    *(v14 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    v33 = (*(v7 + 48) + 16 * v28);
    *v33 = v20;
    v33[1] = v21;
    v34 = (*(v7 + 56) + 48 * v28);
    v35 = v39;
    v36 = v41;
    v34[1] = v40;
    v34[2] = v36;
    *v34 = v35;
    ++*(v7 + 16);
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v14 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS25SiriLinkSuggestionsPlugin0D23SuggestedActionsRequestVGMd, &_ss18_DictionaryStorageCySS25SiriLinkSuggestionsPlugin0D23SuggestedActionsRequestVGMR);
  v36 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_31:

LABEL_32:
    *v3 = v7;
    return result;
  }

  v35 = v5;
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
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_32;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v34 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = (*(v5 + 48) + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    v22 = *(v5 + 56) + 24 * v18;
    v23 = *(v22 + 8);
    v39 = *v22;
    v37 = *(v22 + 17);
    v38 = *(v22 + 16);
    if ((v36 & 1) == 0)
    {
    }

    Hasher.init(_seed:)();
    String.hash(into:)();
    result = Hasher._finalize()();
    v24 = -1 << *(v7 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
    {
      break;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v14 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    v32 = (*(v7 + 48) + 16 * v27);
    *v32 = v20;
    v32[1] = v21;
    v33 = *(v7 + 56) + 24 * v27;
    *v33 = v39;
    *(v33 + 8) = v23;
    *(v33 + 16) = v38;
    *(v33 + 17) = v37;
    ++*(v7 + 16);
    v5 = v35;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v28 = 0;
  v29 = (63 - v24) >> 6;
  while (++v26 != v29 || (v28 & 1) == 0)
  {
    v30 = v26 == v29;
    if (v26 == v29)
    {
      v26 = 0;
    }

    v28 |= v30;
    v31 = *(v14 + 8 * v26);
    if (v31 != -1)
    {
      v27 = __clz(__rbit64(~v31)) + (v26 << 6);
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

void specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, int a2)
{
  v3 = v2;
  v51 = type metadata accessor for TypedValue();
  OUTLINED_FUNCTION_14_0();
  v6 = v5;
  __chkstk_darwin(v7);
  v50 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS7ToolKit10TypedValueOGMd, &_ss18_DictionaryStorageCySS7ToolKit10TypedValueOGMR);
  v48 = a2;
  v10 = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = v10;
  if (!*(v9 + 16))
  {
LABEL_33:

LABEL_34:
    *v3 = v11;
    return;
  }

  v44 = v2;
  v12 = 0;
  v13 = (v9 + 64);
  v14 = 1 << *(v9 + 32);
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(v9 + 64);
  v17 = (v14 + 63) >> 6;
  v45 = (v6 + 16);
  v46 = v9;
  v47 = v6;
  v49 = (v6 + 32);
  v18 = v10 + 64;
  if (!v16)
  {
LABEL_7:
    v20 = v12;
    while (1)
    {
      v12 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      ++v20;
      if (v13[v12])
      {
        OUTLINED_FUNCTION_12_0();
        v16 = v22 & v21;
        goto LABEL_12;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v44;
      goto LABEL_34;
    }

    OUTLINED_FUNCTION_15_1();
    v3 = v44;
    if (v39 != v40)
    {
      *v13 = -1 << v38;
    }

    else
    {
      v41 = OUTLINED_FUNCTION_14_1();
      specialized UnsafeMutablePointer.assign(repeating:count:)(v41, v42, v13);
    }

    *(v9 + 16) = 0;
    goto LABEL_33;
  }

  while (1)
  {
    OUTLINED_FUNCTION_27();
LABEL_12:
    v23 = v19 | (v12 << 6);
    v24 = *(v9 + 56);
    v25 = (*(v9 + 48) + 16 * v23);
    v27 = *v25;
    v26 = v25[1];
    v28 = *(v47 + 72);
    v29 = v24 + v28 * v23;
    if (v48)
    {
      (*v49)(v50, v29, v51);
    }

    else
    {
      (*v45)(v50, v29, v51);
    }

    Hasher.init(_seed:)();
    String.hash(into:)();
    Hasher._finalize()();
    OUTLINED_FUNCTION_32();
    if (v30)
    {
      break;
    }

    OUTLINED_FUNCTION_6_1();
LABEL_25:
    OUTLINED_FUNCTION_3_1();
    *(v18 + v34) |= v35;
    v37 = (v11[6] + 16 * v36);
    *v37 = v27;
    v37[1] = v26;
    (*v49)((v11[7] + v28 * v36), v50, v51);
    ++v11[2];
    v9 = v46;
    if (!v16)
    {
      goto LABEL_7;
    }
  }

  OUTLINED_FUNCTION_5_1();
  while (1)
  {
    OUTLINED_FUNCTION_33();
    if (v30)
    {
      if (v32)
      {
        break;
      }
    }

    if (v31 == v33)
    {
      v31 = 0;
    }

    if (*(v18 + 8 * v31) != -1)
    {
      OUTLINED_FUNCTION_4_1();
      goto LABEL_25;
    }
  }

LABEL_36:
  __break(1u);
}

void specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2)
{
  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)();
}

{
  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)();
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo35LNSuggestedActionDialogParameterKeyaSSGMd, &_ss18_DictionaryStorageCySo35LNSuggestedActionDialogParameterKeyaSSGMR);
  v37 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_31:

LABEL_32:
    *v3 = v7;
    return result;
  }

  v35 = v2;
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
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_32;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v34 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v38 = (v12 - 1) & v12;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = *(v5 + 56);
    v20 = *(*(v5 + 48) + 8 * v18);
    v21 = (v19 + 16 * v18);
    v22 = v21[1];
    v39 = *v21;
    if ((v37 & 1) == 0)
    {
      v23 = v20;
    }

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    Hasher.init(_seed:)();
    String.hash(into:)();
    v24 = Hasher._finalize()();

    v25 = -1 << *(v7 + 32);
    v26 = v24 & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v14 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    *(*(v7 + 48) + 8 * v28) = v20;
    v33 = (*(v7 + 56) + 16 * v28);
    v12 = v38;
    *v33 = v39;
    v33[1] = v22;
    ++*(v7 + 16);
    v5 = v36;
    if (!v38)
    {
      goto LABEL_7;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v14 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t specialized UnsafeMutablePointer.assign(repeating:count:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_3FC20;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

uint64_t outlined bridged method (ob) of @objc LNActionParameterMetadata.name.getter(void *a1)
{
  v2 = [a1 name];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
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

uint64_t _s18SiriSuggestionsKit6SignalCACSHAAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined init with copy of (LNActionParameterMetadata, SiriSuggestions.DisplayRepresentable?)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_15();
  (*(v6 + 16))(a2, a1);
  return a2;
}

size_t OUTLINED_FUNCTION_7_0(void *a1)
{
  result = _swift_stdlib_malloc_size(a1);
  a1[2] = v1;
  a1[3] = 2 * ((result - 32) / v2);
  return result;
}

void OUTLINED_FUNCTION_13_1(uint64_t a1@<X8>)
{
  *(v6 + v1) |= v2;
  v7 = (*(v3 + 48) + 16 * a1);
  *v7 = v4;
  v7[1] = v5;
}

uint64_t OUTLINED_FUNCTION_21(uint64_t a1)
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_22(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_31(uint64_t a1)
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_34(uint64_t a1@<X8>)
{
  *(v4 + v1) |= v2;
  v7 = (*(v3 + 48) + 16 * a1);
  *v7 = v5;
  v7[1] = v6;
}

uint64_t OUTLINED_FUNCTION_41(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_46()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_47()
{

  return swift_slowAlloc();
}

void *_sSD_16uniquingKeysWithSDyxq_Gqd__n_q_q__q_tKXEtKcSTRd__x_q_t7ElementRtd__lufCSS_Say22IntelligenceFlowShared16RetrievedContextVGSaySS_AHtGTt1g5033_sSa25SiriLinkSuggestionsPlugin22ef8Shared16hI46VRszlE11indexByTypeSDySSSayADGGyFA2F_AFtXEfU0_Tf1nc_nTm(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(uint64_t, uint64_t, void **))
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    OUTLINED_FUNCTION_39_0();
    v7 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v7 = &_swiftEmptyDictionarySingleton;
  }

  v10 = v7;
  a4(a1, 1, &v10);
  v8 = v10;
  if (v4)
  {
  }

  return v8;
}

uint64_t _s25SiriLinkSuggestionsPlugin0B14ClientResolverPAAE18getAppIntentAction4from3for14withParameters18andSalientEntitiesAA0hiJ0VSgSo16LNActionMetadataC_SSSDySS0aC3Kit0aC0O20DisplayRepresentable_pGSDySSSay22IntelligenceFlowShared16RetrievedContextVGGtYaFAA015MetaDataSourcedhiF0C_Tt3g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return _swift_task_switch(_s25SiriLinkSuggestionsPlugin0B14ClientResolverPAAE18getAppIntentAction4from3for14withParameters18andSalientEntitiesAA0hiJ0VSgSo16LNActionMetadataC_SSSDySS0aC3Kit0aC0O20DisplayRepresentable_pGSDySSSay22IntelligenceFlowShared16RetrievedContextVGGtYaFAA015MetaDataSourcedhiF0C_Tt3g5TY0_, 0, 0);
}

uint64_t _s25SiriLinkSuggestionsPlugin0B14ClientResolverPAAE18getAppIntentAction4from3for14withParameters18andSalientEntitiesAA0hiJ0VSgSo16LNActionMetadataC_SSSDySS0aC3Kit0aC0O20DisplayRepresentable_pGSDySSSay22IntelligenceFlowShared16RetrievedContextVGGtYaFAA015MetaDataSourcedhiF0C_Tt3g5TY0_()
{
  OUTLINED_FUNCTION_15_0();
  v1 = [*(v0 + 16) identifier];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  *(v0 + 40) = v2;
  *(v0 + 48) = v4;
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *v5 = v0;
  v6 = OUTLINED_FUNCTION_32_0(v5);

  return _s25SiriLinkSuggestionsPlugin0B14ClientResolverPAAE13getParameters3for04withH018andSalientEntitiesSDySSAA15ActionParameterVGSgSo16LNActionMetadataC_SDySS0aC3Kit0aC0O20DisplayRepresentable_pGSDySSSay22IntelligenceFlowShared16RetrievedContextVGGtYaKFAA024MetaDataSourcedAppIntentF0C_Tt2g5(v6, v7, v8);
}

uint64_t _s25SiriLinkSuggestionsPlugin0B14ClientResolverPAAE18getAppIntentAction4from3for14withParameters18andSalientEntitiesAA0hiJ0VSgSo16LNActionMetadataC_SSSDySS0aC3Kit0aC0O20DisplayRepresentable_pGSDySSSay22IntelligenceFlowShared16RetrievedContextVGGtYaFAA015MetaDataSourcedhiF0C_Tt3g5TQ1_()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_9_2();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 64) = v4;
  *(v2 + 72) = v0;

  OUTLINED_FUNCTION_8_0();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t _s25SiriLinkSuggestionsPlugin0B14ClientResolverPAAE18getAppIntentAction4from3for14withParameters18andSalientEntitiesAA0hiJ0VSgSo16LNActionMetadataC_SSSDySS0aC3Kit0aC0O20DisplayRepresentable_pGSDySSSay22IntelligenceFlowShared16RetrievedContextVGGtYaFAA015MetaDataSourcedhiF0C_Tt3g5TY2_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_46_0();
  a19 = v21;
  a20 = v22;
  OUTLINED_FUNCTION_22_0();
  a18 = v20;
  if (v20[8])
  {
    if (one-time initialization token for appIntentsSuggestions != -1)
    {
      OUTLINED_FUNCTION_4_0(&one-time initialization token for appIntentsSuggestions);
    }

    v23 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_20_1(v23, static Logger.appIntentsSuggestions);

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v27 = v20[5];
      v26 = v20[6];
      v28 = OUTLINED_FUNCTION_46();
      a10 = OUTLINED_FUNCTION_35_0();
      *v28 = 136315394;
      v29 = Dictionary.description.getter();
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &a10);

      *(v28 + 4) = v31;
      *(v28 + 12) = 2080;
      *(v28 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v26, &a10);
      OUTLINED_FUNCTION_43_0();
      _os_log_impl(v32, v33, v34, v35, v36, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_13_2();
      OUTLINED_FUNCTION_8_2();
    }
  }

  else
  {
    if (one-time initialization token for appIntentsSuggestions != -1)
    {
      OUTLINED_FUNCTION_4_0(&one-time initialization token for appIntentsSuggestions);
    }

    v37 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_20_1(v37, static Logger.appIntentsSuggestions);

    v38 = Logger.logObject.getter();
    static os_log_type_t.error.getter();

    if (OUTLINED_FUNCTION_29_0())
    {
      v39 = OUTLINED_FUNCTION_25_0();
      v40 = OUTLINED_FUNCTION_47();
      a10 = v40;
      *v39 = 136315138;
      v41 = OUTLINED_FUNCTION_38_0();
      v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v42, v43);

      *(v39 + 4) = v44;
      OUTLINED_FUNCTION_49(&dword_0, v45, v46, "Not all mandatory parameters for: %s could be determined");
      __swift_destroy_boxed_opaque_existential_1(v40);
      OUTLINED_FUNCTION_7_1();
      OUTLINED_FUNCTION_13_2();
    }

    else
    {
    }

    OUTLINED_FUNCTION_8_0();
  }

  OUTLINED_FUNCTION_44_0();

  return v51(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12);
}