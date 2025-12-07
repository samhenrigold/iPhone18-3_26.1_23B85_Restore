Swift::Int GeoTrafficIncident.hashValue.getter()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*v0);
  if (v0[2])
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  String.hash(into:)();
  Hasher._combine(_:)(v0[5]);
  return Hasher._finalize()();
}

double GeoTrafficIncident.init(from:)@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  specialized GeoTrafficIncident.init(from:)(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    result = *&v7;
    a1[2] = v7;
  }

  return result;
}

void __swiftcall GeoTrafficIncident.init(index:id:displayName:driPayload:)(GeoFlowDelegatePlugin::GeoTrafficIncident *__return_ptr retstr, Swift::Int index, Swift::String_optional id, Swift::String displayName, Swift::Int driPayload)
{
  retstr->index = index;
  retstr->id = id;
  retstr->displayName = displayName;
  retstr->driPayload = driPayload;
}

uint64_t protocol witness for Identifiable.id.getter in conformance GeoTrafficIncident@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  a1[1] = v2;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance GeoTrafficIncident()
{
  v1 = *v0;
  v2 = v0[2];
  v3 = v0[5];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  if (v2)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  String.hash(into:)();
  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance GeoTrafficIncident(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[5];
  Hasher._combine(_:)(*v1);
  if (v2)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  String.hash(into:)();
  Hasher._combine(_:)(v3);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance GeoTrafficIncident(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[2];
  v4 = v1[5];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  if (v3)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  String.hash(into:)();
  Hasher._combine(_:)(v4);
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance GeoTrafficIncident(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return specialized static GeoTrafficIncident.__derived_struct_equals(_:_:)(v7, v8);
}

BOOL specialized static GeoTrafficIncident.__derived_struct_equals(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[2];
  v3 = a2[2];
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    if (a1[1] != a2[1] || v2 != v3)
    {
      v5 = a1;
      v6 = a2;
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v6;
      v8 = v7;
      a1 = v5;
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v3)
  {
    return 0;
  }

  if (a1[3] == a2[3] && a1[4] == a2[4])
  {
    return a1[5] == a2[5];
  }

  v10 = a1;
  v11 = a2;
  v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
  a2 = v11;
  v13 = v12;
  a1 = v10;
  if (v13)
  {
    return a1[5] == a2[5];
  }

  return 0;
}

unint64_t lazy protocol witness table accessor for type GeoTrafficIncident.CodingKeys and conformance GeoTrafficIncident.CodingKeys()
{
  result = lazy protocol witness table cache variable for type GeoTrafficIncident.CodingKeys and conformance GeoTrafficIncident.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoTrafficIncident.CodingKeys and conformance GeoTrafficIncident.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoTrafficIncident.CodingKeys and conformance GeoTrafficIncident.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoTrafficIncident.CodingKeys and conformance GeoTrafficIncident.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoTrafficIncident.CodingKeys and conformance GeoTrafficIncident.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoTrafficIncident.CodingKeys and conformance GeoTrafficIncident.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoTrafficIncident.CodingKeys and conformance GeoTrafficIncident.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoTrafficIncident.CodingKeys and conformance GeoTrafficIncident.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoTrafficIncident.CodingKeys and conformance GeoTrafficIncident.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoTrafficIncident.CodingKeys and conformance GeoTrafficIncident.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoTrafficIncident.CodingKeys and conformance GeoTrafficIncident.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoTrafficIncident.CodingKeys and conformance GeoTrafficIncident.CodingKeys);
  }

  return result;
}

uint64_t specialized GeoTrafficIncident.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7865646E69 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F6C796150697264 && a2 == 0xEA00000000006461)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t specialized GeoTrafficIncident.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy21GeoFlowDelegatePlugin0D15TrafficIncidentV10CodingKeys33_429872D102531CD8E18AA8081E443AACLLOGMd, &_ss22KeyedDecodingContainerVy21GeoFlowDelegatePlugin0D15TrafficIncidentV10CodingKeys33_429872D102531CD8E18AA8081E443AACLLOGMR);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type GeoTrafficIncident.CodingKeys and conformance GeoTrafficIncident.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v25 = 0;
  v21 = KeyedDecodingContainer.decode(_:forKey:)();
  v24 = 1;
  v9 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v11 = v10;
  v20 = v9;
  v23 = 2;
  v18 = KeyedDecodingContainer.decode(_:forKey:)();
  v19 = v12;
  v22 = 3;
  v13 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_0Tm(a1);
  v15 = v20;
  *a2 = v21;
  a2[1] = v15;
  v17 = v18;
  v16 = v19;
  a2[2] = v11;
  a2[3] = v17;
  a2[4] = v16;
  a2[5] = v13;
  return result;
}

unint64_t lazy protocol witness table accessor for type String? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type String? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type String? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSSSgMd, &_sSSSgMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GeoTrafficIncident and conformance GeoTrafficIncident()
{
  result = lazy protocol witness table cache variable for type GeoTrafficIncident and conformance GeoTrafficIncident;
  if (!lazy protocol witness table cache variable for type GeoTrafficIncident and conformance GeoTrafficIncident)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoTrafficIncident and conformance GeoTrafficIncident);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoTrafficIncident and conformance GeoTrafficIncident;
  if (!lazy protocol witness table cache variable for type GeoTrafficIncident and conformance GeoTrafficIncident)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoTrafficIncident and conformance GeoTrafficIncident);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoTrafficIncident and conformance GeoTrafficIncident;
  if (!lazy protocol witness table cache variable for type GeoTrafficIncident and conformance GeoTrafficIncident)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoTrafficIncident and conformance GeoTrafficIncident);
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for GeoTrafficIncident(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for GeoTrafficIncident(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for GeoTrafficIncident.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for GeoTrafficIncident.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t TrafficIncidentHandleIntentStrategy.__allocating_init(with:)(__int128 *a1)
{
  v2 = swift_allocObject();
  type metadata accessor for OS_os_log();
  *(v2 + 16) = OS_os_log.init(subsystem:category:)();
  outlined init with take of CATType(a1, v2 + 24);
  return v2;
}

uint64_t TrafficIncidentHandleIntentStrategy.init(with:)(__int128 *a1)
{
  type metadata accessor for OS_os_log();
  *(v1 + 16) = OS_os_log.init(subsystem:category:)();
  outlined init with take of CATType(a1, v1 + 24);
  return v1;
}

uint64_t TrafficIncidentHandleIntentStrategy.makeContinueInAppResponse(app:intent:intentResponse:)(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v2[9] = swift_task_alloc();

  return _swift_task_switch(TrafficIncidentHandleIntentStrategy.makeContinueInAppResponse(app:intent:intentResponse:), 0, 0);
}

{
  v3 = *(v1 + 64);
  v2 = *(v1 + 72);
  v4 = *(v1 + 56);
  v5 = static os_log_type_t.info.getter();
  os_log(_:dso:log:_:_:)(v5, &dword_0, *(v3 + 16), "makeContinueInAppResponse", 25, 2, &_swiftEmptyArrayStorage);
  v6 = type metadata accessor for NLContextUpdate();
  (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
  v7 = type metadata accessor for AceOutput();
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0;
  *(v1 + 16) = 0u;
  v4[3] = v7;
  v4[4] = &protocol witness table for AceOutput;
  __swift_allocate_boxed_opaque_existential_0(v4);
  static AceOutputHelper.makeAceOutput(allAddViews:nlContextUpdate:additionalCommands:flowActivity:)();
  outlined destroy of Mirror.DisplayStyle?(v1 + 16, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  outlined destroy of Mirror.DisplayStyle?(v2, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);

  v8 = *(v1 + 8);

  return v8();
}

uint64_t SaveParkingLocationUnsupportedValueStrategy.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 24));

  return swift_deallocClassInstance();
}

unint64_t lazy protocol witness table accessor for type TrafficIncidentHandleIntentStrategy and conformance TrafficIncidentHandleIntentStrategy(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table cache variable for type TrafficIncidentHandleIntentStrategy and conformance TrafficIncidentHandleIntentStrategy;
  if (!lazy protocol witness table cache variable for type TrafficIncidentHandleIntentStrategy and conformance TrafficIncidentHandleIntentStrategy)
  {
    type metadata accessor for TrafficIncidentHandleIntentStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TrafficIncidentHandleIntentStrategy and conformance TrafficIncidentHandleIntentStrategy);
  }

  return result;
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makePromptForDeviceUnlock(rchRecord:) in conformance TrafficIncidentHandleIntentStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for TrafficIncidentHandleIntentStrategy();
  *v8 = v4;
  v8[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return HandleIntentFlowStrategyAsync.makePromptForDeviceUnlock(rchRecord:)(a1, a2, v9, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance TrafficIncidentHandleIntentStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for TrafficIncidentHandleIntentStrategy();
  *v8 = v4;
  v8[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:)(a1, a2, v9, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makePreHandleIntentOutput(rchRecord:) in conformance TrafficIncidentHandleIntentStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for TrafficIncidentHandleIntentStrategy();
  *v8 = v4;
  v8[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return HandleIntentFlowStrategyAsync.makePreHandleIntentOutput(rchRecord:)(a1, a2, v9, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeIntentHandledResponse(rchRecord:) in conformance TrafficIncidentHandleIntentStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for TrafficIncidentHandleIntentStrategy();
  *v8 = v4;
  v8[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return HandleIntentFlowStrategyAsync.makeIntentHandledResponse(rchRecord:)(a1, a2, v9, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeContinueInAppResponse(rchRecord:) in conformance TrafficIncidentHandleIntentStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for TrafficIncidentHandleIntentStrategy();
  *v8 = v4;
  v8[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return HandleIntentFlowStrategyAsync.makeContinueInAppResponse(rchRecord:)(a1, a2, v9, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeInProgressResponse(rchRecord:) in conformance TrafficIncidentHandleIntentStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for TrafficIncidentHandleIntentStrategy();
  *v8 = v4;
  v8[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return HandleIntentFlowStrategyAsync.makeInProgressResponse(rchRecord:)(a1, a2, v9, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeFailureHandlingIntentResponse(rchRecord:) in conformance TrafficIncidentHandleIntentStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for TrafficIncidentHandleIntentStrategy();
  *v8 = v4;
  v8[1] = protocol witness for PromptForValueFlowStrategyAsync.makeFlowCancelledResponse() in conformance ShareETAPromptForContactStrategy;

  return HandleIntentFlowStrategyAsync.makeFailureHandlingIntentResponse(rchRecord:)(a1, a2, v9, a4);
}

uint64_t protocol witness for IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:) in conformance TrafficIncidentHandleIntentStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for TrafficIncidentHandleIntentStrategy();
  *v8 = v4;
  v8[1] = protocol witness for IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:) in conformance TrafficIncidentHandleIntentStrategy;

  return IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:)(a1, a2, v9, a4);
}

uint64_t protocol witness for IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:) in conformance TrafficIncidentHandleIntentStrategy(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t static GeoNLContextUtils.makeNLContextFor(weightedPromptResponseTargets:)(uint64_t a1)
{
  NLContextUpdate.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_B7D60;
  *(v1 + 32) = specialized TerminalNodeBoundedSemanticValue<>.javaValue.getter(0);
  *(v1 + 40) = v2;
  *(v1 + 48) = specialized TerminalNodeBoundedSemanticValue<>.javaValue.getter(1);
  *(v1 + 56) = v3;
  *(v1 + 64) = specialized TerminalNodeBoundedSemanticValue<>.javaValue.getter(2);
  *(v1 + 72) = v4;
  NLContextUpdate.weightedPromptResponseOptions.setter();

  NLContextUpdate.weightedPromptResponseTargets.setter();
  if (one-time initialization token for domainNode != -1)
  {
    swift_once();
  }

  specialized OntologyNode.javaClassName.getter();
  NLContextUpdate.weightedPromptTargetDomain.setter();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_B89E0;
  *(v5 + 32) = specialized TerminalNodeBoundedSemanticValue<>.javaValue.getter(2);
  *(v5 + 40) = v6;
  NLContextUpdate.weightedPromptAbortValues.setter();
  NLContextUpdate.weightedPromptStrict.setter();
  return NLContextUpdate.currentDomainName.setter();
}

uint64_t one-time initialization function for logObject()
{
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, OS_os_log_ptr);
  result = OS_os_log.init(subsystem:category:)();
  logObject = result;
  return result;
}

{
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, OS_os_log_ptr);
  result = OS_os_log.init(subsystem:category:)();
  logObject = result;
  return result;
}

ValueMetadata *specialized TerminalNodeBoundedSemanticValue<>.javaValue.getter(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21GeoFlowDelegatePlugin20LocationSearchIntentC0eF17ConfirmationValueOmMd, &_s21GeoFlowDelegatePlugin20LocationSearchIntentC0eF17ConfirmationValueOmMR);
  v1 = String.init<A>(describing:)();
  specialized BidirectionalCollection.dropLast(_:)(5, v1, v2, v3);

  lazy protocol witness table accessor for type Substring and conformance Substring();
  String.append<A>(contentsOf:)();

  v4._countAndFlagsBits = 0x2E65756C61562ELL;
  v4._object = 0xE700000000000000;
  String.append(_:)(v4);

  v5 = String.uppercased()();

  String.append(_:)(v5);

  return 0xD000000000000012;
}

uint64_t static GeoNLContextUtils.makeNLContext(weightedPromptResponseTargets:displayHints:)(uint64_t a1, uint64_t a2)
{
  NLContextUpdate.init()();
  swift_bridgeObjectRetain_n();
  NLContextUpdate.disambiguationPromptResponseTargets.setter();
  if (one-time initialization token for domainNode != -1)
  {
    swift_once();
  }

  specialized OntologyNode.javaClassName.getter();
  NLContextUpdate.disambiguationPromptTargetDomain.setter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_B89E0;
  *(v3 + 32) = specialized TerminalNodeBoundedSemanticValue<>.javaValue.getter(2);
  *(v3 + 40) = v4;
  NLContextUpdate.disambiguationPromptAbortValues.setter();
  NLContextUpdate.weightedPromptResponseTargets.setter();
  specialized OntologyNode.javaClassName.getter();
  NLContextUpdate.weightedPromptTargetDomain.setter();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_B89E0;
  *(v5 + 32) = specialized TerminalNodeBoundedSemanticValue<>.javaValue.getter(2);
  *(v5 + 40) = v6;
  NLContextUpdate.weightedPromptAbortValues.setter();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_B89E0;
  *(v7 + 32) = specialized TerminalNodeBoundedSemanticValue<>.javaValue.getter(2);
  *(v7 + 40) = v8;
  NLContextUpdate.weightedPromptResponseOptions.setter();
  NLContextUpdate.weightedPromptStrict.setter();
  if (a2)
  {

    NLContextUpdate.displayHints.setter();
  }

  return NLContextUpdate.currentDomainName.setter();
}

uint64_t TypedDisambiguationItems.makeDisambiguationItems(locale:_:)(uint64_t a1, void (*a2)(void), uint64_t a3, unint64_t a4, char a5)
{
  if (a5)
  {
    specialized static DisambiguationListUtils.makeDisambiguationItems(incidentTypes:locale:)(a4);
  }

  else
  {
    specialized static DisambiguationListUtils.makeDisambiguationItems(persons:locale:)(a4, a1);
  }

  a2();
}

uint64_t TypedDisambiguationItems.makeDisambiguationItems(locale:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 32) = a3;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  return _swift_task_switch(TypedDisambiguationItems.makeDisambiguationItems(locale:), 0, 0);
}

uint64_t TypedDisambiguationItems.makeDisambiguationItems(locale:)()
{
  v1 = *(v0 + 24);
  if (*(v0 + 32))
  {
    v2 = specialized static DisambiguationListUtils.makeDisambiguationItems(incidentTypes:locale:)(v1);
  }

  else
  {
    v2 = specialized static DisambiguationListUtils.makeDisambiguationItems(persons:locale:)(v1, *(v0 + 16));
  }

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t TypedDisambiguationItems.makeNLContextUpdate(locale:weightedPromptResponseTargets:isPommes:isUSO:_:)(uint64_t a1, uint64_t a2, int a3, int a4, void (*a5)(char *), uint64_t a6, uint64_t (*a7)(void, void, void), char a8)
{
  v96 = a1;
  v97 = a7;
  v90 = a6;
  v91 = a5;
  LODWORD(v92) = a4;
  v88 = a3;
  v10 = type metadata accessor for PommesContext.Source();
  v82 = *(v10 - 8);
  __chkstk_darwin();
  v81 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  __chkstk_darwin();
  v83 = &v78 - v12;
  v99 = type metadata accessor for DisplayHint();
  v95 = *(v99 - 8);
  __chkstk_darwin();
  v93 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v100 = &v78 - v14;
  __chkstk_darwin();
  v98 = &v78 - v15;
  v87 = type metadata accessor for Siri_Nlu_External_SystemPrompted();
  v80 = *(v87 - 8);
  __chkstk_darwin();
  v17 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v19 = &v78 - v18;
  v20 = type metadata accessor for NLContextUpdate();
  v21 = *(v20 - 8);
  __chkstk_darwin();
  v23 = &v78 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v25 = &v78 - v24;
  v26 = static os_log_type_t.info.getter();
  if (one-time initialization token for logObject != -1)
  {
    v76 = v10;
    v77 = v26;
    swift_once();
    v26 = v77;
    v10 = v76;
  }

  v27 = logObject;
  os_log(_:dso:log:_:_:)(v26, &dword_0, logObject, "TypedDisambiguationItems makeNLContextUpdate", 44, 2, &_swiftEmptyArrayStorage);
  if (a8)
  {
    v28 = specialized static GeoNLContextUtils.makeDisplayHints(items:locale:)(v97);
    v29 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v27, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v101[0] = v31;
      *v30 = 136315138;
      v32 = Array.description.getter();
      v94 = v27;
      v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, v101);

      *(v30 + 4) = v34;
      _os_log_impl(&dword_0, v94, v29, "TypedDisambiguationItems IncidentType displayHints are: %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v31);
    }

    static GeoNLContextUtils.makeNLContext(weightedPromptResponseTargets:displayHints:)(a2, v28);

    v91(v25);
    return (*(v21 + 8))(v25, v20);
  }

  else
  {
    v78 = v10;
    v94 = v27;
    v84 = v23;
    v79 = a2;
    v89 = v20;
    v85 = v25;
    if (v92)
    {
      NLContextUpdate.init()();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMR);
      type metadata accessor for Siri_Nlu_External_SystemDialogAct();
      *(swift_allocObject() + 16) = xmmword_B89E0;
      type metadata accessor for UsoTaskBuilder_noVerb_common_Person();
      swift_allocObject();
      v36 = UsoTaskBuilder_noVerb_common_Person.init()();
      type metadata accessor for UsoEntityBuilder_common_Person();
      swift_allocObject();
      UsoEntityBuilder_common_Person.init()();
      dispatch thunk of Uso_VerbTemplateBuilder_NoVerb.setEntity(value:)();
      static Siri_Nlu_External_SystemPrompted.from(_:)(v36, v19);
      Siri_Nlu_External_SystemDialogAct.init()();
      v37 = v80;
      v38 = v87;
      (*(v80 + 16))(v17, v19, v87);
      Siri_Nlu_External_SystemDialogAct.prompted.setter();

      v39 = v85;

      v40 = v38;
      v41 = v89;
      (*(v37 + 8))(v19, v40);
      NLContextUpdate.nluSystemDialogActs.setter();
      v91(v39);
      (*(v21 + 8))(v39, v41);
    }

    v86 = v21;
    v42 = v97;
    specialized static RecipientDisambiguationHelper.allHaveSameIdentifier(recipients:)(v97);
    v87 = specialized static GeoNLContextUtils.makeDisplayHints(persons:locale:handleDisambiguation:)(v42, v96, v43 & 1);
    v45 = *(v87 + 16);
    v46 = v94;
    v48 = v99;
    v47 = v100;
    if (v45)
    {
      v49 = v95 + 16;
      v50 = *(v95 + 16);
      v51 = v87 + ((*(v95 + 80) + 32) & ~*(v95 + 80));
      v52 = *(v95 + 72);
      v95 += 32;
      v96 = v52;
      v53 = (v49 - 8);
      *&v44 = 136315138;
      v92 = v44;
      v97 = v50;
      do
      {
        v61 = v98;
        v50(v98, v51, v48);
        v62 = static os_log_type_t.info.getter();
        (*v95)(v47, v61, v48);
        if (os_log_type_enabled(v46, v62))
        {
          v54 = v49;
          v55 = swift_slowAlloc();
          v56 = swift_slowAlloc();
          v101[0] = v56;
          *v55 = v92;
          v50(v93, v100, v48);
          v57 = String.init<A>(describing:)();
          v59 = v58;
          (*v53)(v100, v99);
          v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v59, v101);
          v48 = v99;

          *(v55 + 4) = v60;
          v46 = v94;
          _os_log_impl(&dword_0, v94, v62, "TypedDisambiguationItems Contact displayHints are: %s", v55, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v56);

          v49 = v54;
          v47 = v100;
        }

        else
        {
          (*v53)(v47, v48);
        }

        v50 = v97;
        v51 += v96;
        --v45;
      }

      while (v45);
    }

    v63 = v84;
    static GeoNLContextUtils.makeNLContext(weightedPromptResponseTargets:displayHints:)(v79, v87);

    v64 = v91;
    v65 = v85;
    if (v88)
    {
      v66 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v46, v66))
      {
        v67 = swift_slowAlloc();
        *v67 = 0;
        _os_log_impl(&dword_0, v46, v66, "makeContextForConfirmIntent adding pommesContext", v67, 2u);
      }

      (*(v82 + 104))(v81, enum case for PommesContext.Source.pluginDefined(_:), v78);
      v68 = v83;
      PommesContext.init(source:domain:listenAfterSpeaking:)();
      v69 = type metadata accessor for PommesContext();
      (*(*(v69 - 8) + 56))(v68, 0, 1, v69);
      NLContextUpdate.pommesContext.setter();
    }

    v70 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v46, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v101[0] = v72;
      *v71 = 136315138;
      swift_beginAccess();
      (*(v86 + 16))(v65, v63, v89);
      v73 = String.init<A>(describing:)();
      v75 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v73, v74, v101);
      v63 = v84;

      *(v71 + 4) = v75;
      _os_log_impl(&dword_0, v46, v70, "nlContext %s", v71, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v72);
    }

    swift_beginAccess();
    v64(v63);
    return (*(v86 + 8))(v63, v89);
  }
}

uint64_t TypedDisambiguationItems.makeNLContextUpdate(locale:weightedPromptResponseTargets:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 128) = a5;
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = type metadata accessor for NLContextUpdate();
  *(v5 + 48) = v6;
  *(v5 + 56) = *(v6 - 8);
  *(v5 + 64) = swift_task_alloc();
  *(v5 + 72) = swift_task_alloc();
  *(v5 + 80) = swift_task_alloc();
  v7 = type metadata accessor for DisplayHint();
  *(v5 + 88) = v7;
  *(v5 + 96) = *(v7 - 8);
  *(v5 + 104) = swift_task_alloc();
  *(v5 + 112) = swift_task_alloc();
  *(v5 + 120) = swift_task_alloc();

  return _swift_task_switch(TypedDisambiguationItems.makeNLContextUpdate(locale:weightedPromptResponseTargets:), 0, 0);
}

uint64_t TypedDisambiguationItems.makeNLContextUpdate(locale:weightedPromptResponseTargets:)(uint64_t a1)
{
  v64 = v1;
  v2 = static os_log_type_t.info.getter();
  if (one-time initialization token for logObject != -1)
  {
    v55 = v2;
    swift_once();
    v2 = v55;
  }

  v3 = *(v1 + 128);
  v4 = *(v1 + 40);
  v5 = logObject;
  os_log(_:dso:log:_:_:)(v2, &dword_0, logObject, "TypedDisambiguationItems makeNLContextUpdate", 44, 2, &_swiftEmptyArrayStorage);
  v6 = *(v1 + 24);
  if (v3)
  {
    v7 = specialized static GeoNLContextUtils.makeDisplayHints(items:locale:)(v4);
    v8 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v5, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v63 = v10;
      *v9 = 136315138;
      v11 = Array.description.getter();
      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v63);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_0, v5, v8, "TypedDisambiguationItems IncidentType displayHints are: %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v10);
    }

    static GeoNLContextUtils.makeNLContext(weightedPromptResponseTargets:displayHints:)(*(v1 + 32), v7);
  }

  else
  {
    specialized static RecipientDisambiguationHelper.allHaveSameIdentifier(recipients:)(v4);
    v56 = specialized static GeoNLContextUtils.makeDisplayHints(persons:locale:handleDisambiguation:)(v4, v6, v14 & 1);
    v15 = *(v56 + 2);
    if (v15)
    {
      v16 = *(v1 + 96);
      v18 = *(v16 + 16);
      v16 += 16;
      v17 = v18;
      v19 = &v56[(*(v16 + 64) + 32) & ~*(v16 + 64)];
      v59 = (v16 + 16);
      v60 = *(v16 + 56);
      v58 = (v16 - 8);
      v57 = v1;
      v61 = v18;
      do
      {
        v30 = *(v1 + 112);
        v29 = *(v1 + 120);
        v31 = *(v1 + 88);
        v17(v29, v19, v31);
        v32 = static os_log_type_t.info.getter();
        (*v59)(v30, v29, v31);
        v33 = os_log_type_enabled(v5, v32);
        v34 = *(v1 + 112);
        if (v33)
        {
          v20 = *(v1 + 104);
          v21 = *(v1 + 88);
          v22 = swift_slowAlloc();
          v23 = swift_slowAlloc();
          v63 = v23;
          *v22 = 136315138;
          v61(v20, v34, v21);
          v24 = String.init<A>(describing:)();
          v25 = v5;
          v27 = v26;
          (*v58)(v34, v21);
          v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v27, &v63);
          v5 = v25;
          v1 = v57;

          *(v22 + 4) = v28;
          _os_log_impl(&dword_0, v5, v32, "TypedDisambiguationItems Contact displayHints are: %s", v22, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v23);
          v17 = v61;
        }

        else
        {
          (*v58)(*(v1 + 112), *(v1 + 88));
        }

        v19 += v60;
        --v15;
      }

      while (v15);
    }

    v36 = *(v1 + 72);
    v35 = *(v1 + 80);
    v37 = v5;
    v39 = *(v1 + 48);
    v38 = *(v1 + 56);
    static GeoNLContextUtils.makeNLContext(weightedPromptResponseTargets:displayHints:)(*(v1 + 32), v56);

    v40 = static os_log_type_t.info.getter();
    v41 = *(v38 + 16);
    v41(v36, v35, v39);
    v42 = os_log_type_enabled(v37, v40);
    v43 = *(v1 + 72);
    if (v42)
    {
      log = v37;
      v45 = *(v1 + 56);
      v44 = *(v1 + 64);
      v46 = *(v1 + 48);
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v63 = v48;
      *v47 = 136315138;
      v41(v44, v43, v46);
      v49 = String.init<A>(describing:)();
      v51 = v50;
      (*(v45 + 8))(v43, v46);
      v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v51, &v63);

      *(v47 + 4) = v52;
      _os_log_impl(&dword_0, log, v40, "nlContext %s", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v48);
    }

    else
    {
      (*(*(v1 + 56) + 8))(*(v1 + 72), *(v1 + 48));
    }

    (*(*(v1 + 56) + 32))(*(v1 + 16), *(v1 + 80), *(v1 + 48));
  }

  v53 = *(v1 + 8);

  return v53();
}

uint64_t TypedDisambiguationItems.shouldReadItemsInVox.getter(unint64_t a1, char a2)
{
  if (a2)
  {
    return 1;
  }

  if (a1 >> 62)
  {
    v5 = a1;
    v4 = _CocoaArrayWrapper.endIndex.getter();
    a1 = v5;
    if (v4 >= 6)
    {
      goto LABEL_4;
    }

    return 1;
  }

  if (*(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)) < 6)
  {
    return 1;
  }

LABEL_4:

  return specialized static RecipientDisambiguationHelper.hasAllSameRecipientsWithHandles(recipients:)(a1);
}

unint64_t *specialized _NativeDictionary.filter(_:)(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin();
    v6 = &v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = specialized closure #1 in _NativeDictionary.filter(_:)(v6, v4, a1);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVySSSgSaySo8INPersonCGG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab18VKXEfU_SSSg_SaySo8I5CGTG5ALxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyAhKIsgnndzo_Tf1nc_n0125_s21GeoFlowDelegatePlugin0A14NLContextUtilsO16makeDisplayHints7persons6locale20handleDisambiguationSay07SiriKitB00H4HintVGSaysI56CG_10Foundation6LocaleVSbtFZSbSSSg3key_AN5valuet_tXEfU1_Tf1nnc_n(v8, v4, a1);

  if (!v1)
  {
    return v9;
  }

  return result;
}

unint64_t *specialized closure #1 in _NativeDictionary.filter(_:)(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v5 << 6);
    v14 = *(*(a3 + 56) + 8 * v13);
    if (v14 >> 62)
    {
      v20 = result;
      v19 = a2;
      v16 = v4;
      v17 = _CocoaArrayWrapper.endIndex.getter();
      v4 = v16;
      a2 = v19;
      v18 = v17;
      result = v20;
      if (v18 >= 2)
      {
        goto LABEL_13;
      }
    }

    else if (*(&dword_10 + (v14 & 0xFFFFFFFFFFFFFF8)) >= 2)
    {
LABEL_13:
      *(result + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v4++, 1))
      {
        goto LABEL_20;
      }
    }
  }

  v11 = v5;
  while (1)
  {
    v5 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return specialized _NativeDictionary.extractDictionary(using:count:)(result, a2, v4, a3);
    }

    v12 = *(a3 + 64 + 8 * v5);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

unint64_t *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVySSSgSaySo8INPersonCGG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab18VKXEfU_SSSg_SaySo8I5CGTG5ALxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyAhKIsgnndzo_Tf1nc_n0125_s21GeoFlowDelegatePlugin0A14NLContextUtilsO16makeDisplayHints7persons6locale20handleDisambiguationSay07SiriKitB00H4HintVGSaysI56CG_10Foundation6LocaleVSbtFZSbSSSg3key_AN5valuet_tXEfU1_Tf1nnc_n(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = specialized closure #1 in _NativeDictionary.filter(_:)(result, a2, a3);

    return v6;
  }

  return result;
}

Swift::Int specialized _NativeDictionary.extractDictionary(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSgSaySo8INPersonCGGMd, &_ss18_DictionaryStorageCySSSgSaySo8INPersonCGGMR);
  result = static _DictionaryStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v33 = v4;
  v34 = result;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v35 = (v10 - 1) & v10;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(v17 + 8 * v16);
    Hasher.init(_seed:)();
    if (v20)
    {
      Hasher._combine(_:)(1u);

      v22 = v19;
      String.hash(into:)();
    }

    else
    {
      v22 = v19;
      Hasher._combine(_:)(0);
    }

    result = Hasher._finalize()();
    v9 = v34;
    v23 = -1 << *(v34 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
    {
      v27 = 0;
      v28 = (63 - v23) >> 6;
      while (++v25 != v28 || (v27 & 1) == 0)
      {
        v29 = v25 == v28;
        if (v25 == v28)
        {
          v25 = 0;
        }

        v27 |= v29;
        v30 = *(v12 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_29;
        }
      }

      goto LABEL_34;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_29:
    *(v12 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v34 + 48) + 16 * v26);
    *v31 = v22;
    v31[1] = v20;
    *(*(v34 + 56) + 8 * v26) = v21;
    ++*(v34 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_35;
    }

    v4 = v33;
    v10 = v35;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v35 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

void *_sSD8grouping2bySDyxSay7ElementQyd__GGqd__n_xADKXEtKcAERs_STRd__lufCSSSg_SaySo8INPersonCGTt1g50128_s21GeoFlowDelegatePlugin0A14NLContextUtilsO16makeDisplayHints7persons6locale20handleDisambiguationSay07SiriKitB00H4HintVGSaySo8D40CG_10Foundation6LocaleVSbtFZSSSgAMXEfU0_Tf1nc_nTf4g_n(unint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  __chkstk_darwin();
  v3 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v41 = &v35 - v4;
  v42 = &_swiftEmptyDictionarySingleton;
  if (a1 >> 62)
  {
LABEL_29:
    v5 = _CocoaArrayWrapper.endIndex.getter();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (v5)
    {
LABEL_3:
      v6 = 0;
      v39 = a1 & 0xFFFFFFFFFFFFFF8;
      v40 = a1 & 0xC000000000000001;
      v7 = &_swiftEmptyDictionarySingleton;
      v36 = xmmword_B8FB0;
      v37 = a1;
      v38 = v5;
      while (1)
      {
        if (v40)
        {
          v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v6 >= *(v39 + 16))
          {
            goto LABEL_26;
          }

          v9 = *(a1 + 8 * v6 + 32);
        }

        v10 = v9;
        v11 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
          goto LABEL_29;
        }

        v12 = [v9 nameComponents];
        if (v12)
        {
          v13 = v12;
          static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();

          v14 = 0;
        }

        else
        {
          v14 = 1;
        }

        v15 = type metadata accessor for PersonNameComponents();
        v16 = *(v15 - 8);
        (*(v16 + 56))(v3, v14, 1, v15);
        v17 = v3;
        v18 = v3;
        v3 = v41;
        outlined init with take of PersonNameComponents?(v18, v41);
        v19 = (*(v16 + 48))(v3, 1, v15);
        a1 = 0;
        v20 = 0;
        if (!v19)
        {
          a1 = PersonNameComponents.givenName.getter();
          v20 = v21;
        }

        outlined destroy of Mirror.DisplayStyle?(v3, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
        v23 = specialized __RawDictionaryStorage.find<A>(_:)(a1, v20);
        v24 = v7[2];
        v25 = (v22 & 1) == 0;
        v26 = v24 + v25;
        if (__OFADD__(v24, v25))
        {
          goto LABEL_27;
        }

        v3 = v22;
        if (v7[3] < v26)
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v26, 1);
          v7 = v42;
          v27 = specialized __RawDictionaryStorage.find<A>(_:)(a1, v20);
          if ((v3 & 1) != (v28 & 1))
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
            result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return result;
          }

          v23 = v27;
        }

        if (v3)
        {

          v8 = (v7[7] + 8 * v23);
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          a1 = v37;
          if (*(&dword_10 + (*v8 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*v8 & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
          v29 = swift_allocObject();
          *(v29 + 16) = v36;
          *(v29 + 32) = v10;
          v7[(v23 >> 6) + 8] |= 1 << v23;
          v30 = (v7[6] + 16 * v23);
          *v30 = a1;
          v30[1] = v20;
          *(v7[7] + 8 * v23) = v29;
          v31 = v7[2];
          v32 = __OFADD__(v31, 1);
          v33 = v31 + 1;
          if (v32)
          {
            goto LABEL_28;
          }

          v7[2] = v33;
          a1 = v37;
        }

        v3 = v17;
        ++v6;
        if (v11 == v38)
        {
          return v7;
        }
      }
    }
  }

  return &_swiftEmptyDictionarySingleton;
}

char *specialized static GeoNLContextUtils.makeDisplayHints(persons:locale:handleDisambiguation:)(unint64_t a1, uint64_t a2, int a3)
{
  v157 = a3;
  v145 = a2;
  v142 = type metadata accessor for OrdinalDisplayHintsBuilder();
  v141 = *(v142 - 8);
  __chkstk_darwin();
  v140 = &v139 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13SemanticValueVSgMd, &_s11SiriKitFlow13SemanticValueVSgMR);
  __chkstk_darwin();
  v170 = &v139 - v5;
  v173 = type metadata accessor for DisplayHint();
  v164 = *(v173 - 8);
  __chkstk_darwin();
  v149 = &v139 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v144 = &v139 - v7;
  __chkstk_darwin();
  v143 = &v139 - v8;
  __chkstk_darwin();
  v148 = &v139 - v9;
  __chkstk_darwin();
  v147 = &v139 - v10;
  __chkstk_darwin();
  v146 = &v139 - v11;
  __chkstk_darwin();
  v161 = &v139 - v12;
  __chkstk_darwin();
  v160 = &v139 - v13;
  v163 = type metadata accessor for SemanticValue();
  v158 = *(v163 - 8);
  __chkstk_darwin();
  v169 = &v139 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v172 = &v139 - v15;
  __chkstk_darwin();
  v177 = &v139 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  __chkstk_darwin();
  v18 = &v139 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v20 = &v139 - v19;
  __chkstk_darwin();
  v22 = &v139 - v21;
  __chkstk_darwin();
  v24 = &v139 - v23;
  v179 = &_swiftEmptyArrayStorage;
  v180 = &_swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
    goto LABEL_108;
  }

  v25 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
LABEL_3:
  v166 = a1;
  v156 = v18;
  v150 = v20;
  v165 = v25;
  if (v25)
  {
    v26 = 0;
    v27 = a1 & 0xC000000000000001;
    v28 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v27)
      {
        v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v26 >= *(v28 + 16))
        {
          goto LABEL_106;
        }

        v29 = *(a1 + 8 * v26 + 32);
      }

      v20 = v29;
      v30 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
LABEL_106:
        __break(1u);
LABEL_107:
        __break(1u);
LABEL_108:
        v25 = _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_3;
      }

      v31 = [v29 nameComponents];
      if (v31)
      {
        v32 = v31;
        static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();

        v33 = 0;
      }

      else
      {
        v33 = 1;
      }

      v34 = type metadata accessor for PersonNameComponents();
      v35 = *(v34 - 8);
      (*(v35 + 56))(v22, v33, 1, v34);
      outlined init with take of PersonNameComponents?(v22, v24);
      if ((*(v35 + 48))(v24, 1, v34))
      {
        outlined destroy of Mirror.DisplayStyle?(v24, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
      }

      else
      {
        v37 = PersonNameComponents.givenName.getter();
        v18 = v38;
        outlined destroy of Mirror.DisplayStyle?(v24, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
        if (v18)
        {
          v36 = v37 & 0xFFFFFFFFFFFFLL;
          goto LABEL_19;
        }
      }

      v36 = 0;
      v18 = 0xE000000000000000;
LABEL_19:

      v39 = HIBYTE(v18) & 0xF;
      if ((v18 & 0x2000000000000000) == 0)
      {
        v39 = v36;
      }

      if (v39)
      {
        v18 = &v179;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      v25 = v165;
      a1 = v166;
      ++v26;
      if (v30 == v165)
      {
        v40 = v179;
        goto LABEL_26;
      }
    }
  }

  v40 = &_swiftEmptyArrayStorage;
LABEL_26:
  v41 = _sSD8grouping2bySDyxSay7ElementQyd__GGqd__n_xADKXEtKcAERs_STRd__lufCSSSg_SaySo8INPersonCGTt1g50128_s21GeoFlowDelegatePlugin0A14NLContextUtilsO16makeDisplayHints7persons6locale20handleDisambiguationSay07SiriKitB00H4HintVGSaySo8D40CG_10Foundation6LocaleVSbtFZSSSgAMXEfU0_Tf1nc_nTf4g_n(v40);

  v42 = specialized _NativeDictionary.filter(_:)(v41);

  v155 = v42[2];

  if (v25)
  {
    if (v25 >= 1)
    {
      v44 = 0;
      v154 = a1 & 0xC000000000000001;
      v176 = (v158 + 16);
      v153 = v158 + 32;
      v167 = v164 + 32;
      v168 = (v158 + 56);
      v152 = (v158 + 8);
      v45 = &_swiftEmptyArrayStorage;
      v151 = xmmword_B7D80;
      *&v178 = &_swiftEmptyArrayStorage;
      v46 = v163;
      while (1)
      {
        v171 = v44;
        if (v154)
        {
          v47 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v47 = *(a1 + 8 * v44 + 32);
        }

        v48 = v47;
        INPerson.encodeBase64.getter();
        v49 = v177;
        SemanticValue.init(string:label:)();
        v175 = *v176;
        v175(v172, v49, v46);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v45 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v45[2] + 1, 1, v45);
        }

        v51 = v45[2];
        v50 = v45[3];
        if (v51 >= v50 >> 1)
        {
          v45 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v50 > 1), v51 + 1, 1, v45);
        }

        v45[2] = v51 + 1;
        (*(v158 + 32))(v45 + ((*(v158 + 80) + 32) & ~*(v158 + 80)) + *(v158 + 72) * v51, v172, v46);
        v52 = static os_log_type_t.info.getter();
        if (one-time initialization token for logObject != -1)
        {
          swift_once();
        }

        v53 = logObject;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
        v54 = swift_allocObject();
        *(v54 + 16) = v151;
        *(v54 + 56) = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
        *(v54 + 64) = lazy protocol witness table accessor for type INPerson and conformance NSObject();
        *(v54 + 32) = v48;
        v55 = v48;
        v56 = INPerson.encodeBase64.getter();
        v58 = v57;
        *(v54 + 96) = &type metadata for String;
        *(v54 + 104) = lazy protocol witness table accessor for type String and conformance String();
        *(v54 + 72) = v56;
        *(v54 + 80) = v58;
        os_log(_:dso:log:_:_:)(v52, &dword_0, v53, "person %@ semantic value %@", 27, 2, v54);
        v59 = v55;

        v60 = [v55 displayName];
        v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v63 = v62;

        v64 = HIBYTE(v63) & 0xF;
        if ((v63 & 0x2000000000000000) == 0)
        {
          v64 = v61 & 0xFFFFFFFFFFFFLL;
        }

        v174 = v55;
        if (v64)
        {
          v65 = v170;
          v175(v170, v177, v46);
          v159 = *v168;
          v159(v65, 0, 1, v46);
          v66 = [v59 displayName];
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          type metadata accessor for PersonOntologyNode();
          static PersonOntologyNode.personFullNameNode.getter();
          specialized OntologyNode.javaClassName.getter();

          SemanticValue.init(string:label:nodeClass:)();
          DisplayHint.init(idValue:displayValue:)();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            *&v178 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v178 + 16) + 1, 1, v178);
          }

          v68 = *(v178 + 16);
          v67 = *(v178 + 24);
          v69 = v174;
          v162 = v45;
          if (v68 >= v67 >> 1)
          {
            *&v178 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v67 > 1), v68 + 1, 1, v178);
          }

          v70 = v178;
          *(v178 + 16) = v68 + 1;
          v71 = (*(v164 + 80) + 32) & ~*(v164 + 80);
          v72 = *(v164 + 72);
          v73 = v70 + v71 + v72 * v68;
          v74 = *(v164 + 32);
          v74(v73, v160, v173);
          v75 = v170;
          v76 = v163;
          v175(v170, v177, v163);
          v159(v75, 0, 1, v76);
          v77 = [v69 displayName];
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          type metadata accessor for AddressOntologyNode.OccupantNode();
          static AddressOntologyNode.OccupantNode.occupantFullNameNode.getter();
          specialized OntologyNode.javaClassName.getter();

          SemanticValue.init(string:label:nodeClass:)();
          DisplayHint.init(idValue:displayValue:)();
          v79 = *(v70 + 16);
          v78 = *(v70 + 24);
          if (v79 >= v78 >> 1)
          {
            *&v178 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v78 > 1), v79 + 1, 1, v178);
          }

          v80 = v156;
          v81 = v178;
          *(v178 + 16) = v79 + 1;
          a1 = v166;
          v74(&v81[v71 + v79 * v72], v161, v173);
          v180 = v81;
          v45 = v162;
          v46 = v163;
          v25 = v165;
          v59 = v174;
        }

        else
        {
          v80 = v156;
        }

        if (v155)
        {
          v82 = [v59 nameComponents];
          if (v82)
          {
            v83 = v82;
            static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();

            v84 = 0;
          }

          else
          {
            v84 = 1;
          }

          v85 = type metadata accessor for PersonNameComponents();
          v86 = *(v85 - 8);
          (*(v86 + 56))(v80, v84, 1, v85);
          v87 = v150;
          outlined init with take of PersonNameComponents?(v80, v150);
          if ((*(v86 + 48))(v87, 1, v85))
          {
            outlined destroy of Mirror.DisplayStyle?(v87, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
          }

          else
          {
            v88 = PersonNameComponents.familyName.getter();
            v90 = v89;
            outlined destroy of Mirror.DisplayStyle?(v87, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
            if (v90)
            {
              v91 = v88;
              v92 = v170;
              v175(v170, v177, v46);
              v93 = *v168;
              (*v168)(v92, 0, 1, v46);
              type metadata accessor for AddressOntologyNode.OccupantNode();

              static AddressOntologyNode.OccupantNode.occupantFullNameNode.getter();
              specialized OntologyNode.javaClassName.getter();

              v159 = v91;
              SemanticValue.init(string:label:nodeClass:)();
              DisplayHint.init(idValue:displayValue:)();
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                *&v178 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v178 + 16) + 1, 1, v178);
              }

              v95 = *(v178 + 16);
              v94 = *(v178 + 24);
              v162 = v45;
              if (v95 >= v94 >> 1)
              {
                *&v178 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v94 > 1), v95 + 1, 1, v178);
              }

              v96 = v178;
              *(v178 + 16) = v95 + 1;
              v97 = (*(v164 + 80) + 32) & ~*(v164 + 80);
              v98 = *(v164 + 72);
              v99 = v96 + v97 + v98 * v95;
              v100 = *(v164 + 32);
              v100(v99, v146, v173);
              v101 = v170;
              v102 = v163;
              v175(v170, v177, v163);
              v93(v101, 0, 1, v102);
              static AddressOntologyNode.OccupantNode.occupantLastNameNode.getter();
              specialized OntologyNode.javaClassName.getter();

              SemanticValue.init(string:label:nodeClass:)();
              DisplayHint.init(idValue:displayValue:)();
              v104 = *(v96 + 16);
              v103 = *(v96 + 24);
              if (v104 >= v103 >> 1)
              {
                *&v178 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v103 > 1), v104 + 1, 1, v178);
              }

              v105 = v173;
              v59 = v174;
              v106 = v178;
              *(v178 + 16) = v104 + 1;
              a1 = v166;
              v100(&v106[v97 + v104 * v98], v147, v105);
              v180 = v106;
              v45 = v162;
              v46 = v163;
              v25 = v165;
            }
          }
        }

        if ((v157 & 1) == 0)
        {
          break;
        }

        v107 = [v59 personHandle];
        if (!v107)
        {
          break;
        }

        v108 = v107;
        v109 = [v107 label];
        if (v109)
        {
          v110 = v109;
          Locale.identifier.getter();
          static LabelMappingUtil.translateINPersonHandleLabel(_:languageCode:)();

          v111 = v170;
          v175(v170, v177, v46);
          (*v168)(v111, 0, 1, v46);
          SemanticValue.init(string:label:)();
          DisplayHint.init(idValue:displayValue:)();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            *&v178 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v178 + 16) + 1, 1, v178);
          }

          v113 = *(v178 + 16);
          v112 = *(v178 + 24);
          if (v113 >= v112 >> 1)
          {
            *&v178 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v112 > 1), v113 + 1, 1, v178);
          }

          v114 = v178;
          *(v178 + 16) = v113 + 1;
          (*(v164 + 32))(&v114[((*(v164 + 80) + 32) & ~*(v164 + 80)) + *(v164 + 72) * v113], v148, v173);
          v180 = v114;
        }

        v115 = [v108 value];
        if (v115)
        {
          v116 = v115;
          v117 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v119 = v118;

          v120 = HIBYTE(v119) & 0xF;
          if ((v119 & 0x2000000000000000) == 0)
          {
            v120 = v117 & 0xFFFFFFFFFFFFLL;
          }

          if (!v120)
          {
            (*v152)(v177, v46);

            goto LABEL_30;
          }

          v121 = [v108 type];
          v59 = v174;
          if (v121 == &dword_0 + 2)
          {
            v126 = v170;
            v175(v170, v177, v46);
            (*v168)(v126, 0, 1, v46);
            SemanticValue.init(string:label:)();
            DisplayHint.init(idValue:displayValue:)();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              *&v178 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v178 + 16) + 1, 1, v178);
            }

            v128 = *(v178 + 16);
            v127 = *(v178 + 24);
            if (v128 >= v127 >> 1)
            {
              *&v178 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v127 > 1), v128 + 1, 1, v178);
            }

            (*v152)(v177, v46);
            v125 = v178;
            *(v178 + 16) = v128 + 1;
            (*(v164 + 32))(&v125[((*(v164 + 80) + 32) & ~*(v164 + 80)) + *(v164 + 72) * v128], v144, v173);
            goto LABEL_92;
          }

          if (v121 == &dword_0 + 1)
          {
            v122 = v170;
            v175(v170, v177, v46);
            (*v168)(v122, 0, 1, v46);
            SemanticValue.init(string:label:)();
            DisplayHint.init(idValue:displayValue:)();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              *&v178 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v178 + 16) + 1, 1, v178);
            }

            v124 = *(v178 + 16);
            v123 = *(v178 + 24);
            if (v124 >= v123 >> 1)
            {
              *&v178 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v123 > 1), v124 + 1, 1, v178);
            }

            (*v152)(v177, v46);
            v125 = v178;
            *(v178 + 16) = v124 + 1;
            (*(v164 + 32))(&v125[((*(v164 + 80) + 32) & ~*(v164 + 80)) + *(v164 + 72) * v124], v143, v173);
LABEL_92:
            v180 = v125;
            goto LABEL_30;
          }

          (*v152)(v177, v46);

          goto LABEL_85;
        }

        (*v152)(v177, v46);

LABEL_30:
        v44 = v171 + 1;
        if (v25 == v171 + 1)
        {
          goto LABEL_94;
        }
      }

      (*v152)(v177, v46);
LABEL_85:

      goto LABEL_30;
    }

    __break(1u);
  }

  else
  {
LABEL_94:
    if (one-time initialization token for referenceNode != -1)
    {
      swift_once();
    }

    TerminalOntologyNode.name.getter();
    v129 = v140;
    OrdinalDisplayHintsBuilder.init(referenceNode:)();
    v130 = OrdinalDisplayHintsBuilder.build(for:)();

    (*(v141 + 8))(v129, v142);
    specialized Array.append<A>(contentsOf:)(v130);
    v22 = v180;
    v20 = *(v180 + 2);
    if (v20)
    {
      v18 = 0;
      v24 = (v164 + 16);
      *&v131 = 134218242;
      v178 = v131;
      do
      {
        a1 = static os_log_type_t.info.getter();
        if (one-time initialization token for logObject != -1)
        {
          swift_once();
        }

        v132 = logObject;
        if (os_log_type_enabled(logObject, a1))
        {
          v133 = swift_slowAlloc();
          v134 = swift_slowAlloc();
          v179 = v134;
          *v133 = v178;
          *(v133 + 4) = v18;
          *(v133 + 12) = 2080;
          if (v18 >= *(v22 + 2))
          {
            goto LABEL_107;
          }

          v135 = v134;
          (*(v164 + 16))(v149, &v22[((*(v164 + 80) + 32) & ~*(v164 + 80)) + *(v164 + 72) * v18], v173);
          v136 = String.init<A>(describing:)();
          v138 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v136, v137, &v179);

          *(v133 + 14) = v138;
          _os_log_impl(&dword_0, v132, a1, "display hint %ld %s", v133, 0x16u);
          __swift_destroy_boxed_opaque_existential_0Tm(v135);
        }

        ++v18;
      }

      while (v20 != v18);
    }

    return v22;
  }

  return result;
}

void *specialized static GeoNLContextUtils.makeDisplayHints(items:locale:)(unint64_t a1)
{
  v2 = type metadata accessor for OrdinalDisplayHintsBuilder();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13SemanticValueVSgMd, &_s11SiriKitFlow13SemanticValueVSgMR);
  __chkstk_darwin();
  v53 = &v41 - v6;
  v52 = type metadata accessor for DisplayHint();
  v55 = *(v52 - 8);
  __chkstk_darwin();
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for SemanticValue();
  v54 = *(v60 - 8);
  __chkstk_darwin();
  v51 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v58 = &v41 - v10;
  __chkstk_darwin();
  v61 = &v41 - v11;
  result = __chkstk_darwin();
  v62 = &v41 - v13;
  v63 = &_swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v14 = result;
  }

  else
  {
    v14 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  v43 = v2;
  v42 = v3;
  v41 = v5;
  if (v14)
  {
    if (v14 >= 1)
    {
      v15 = 0;
      v56 = a1 & 0xC000000000000001;
      v57 = (v54 + 16);
      v46 = v54 + 56;
      v47 = v54 + 32;
      v44 = v55 + 32;
      v45 = (v54 + 8);
      v16 = &_swiftEmptyArrayStorage;
      v59 = &_swiftEmptyArrayStorage;
      v49 = v8;
      v50 = a1;
      v48 = v14;
      while (1)
      {
        if (v56)
        {
          v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v20 = *(a1 + 8 * v15 + 32);
        }

        v21 = v20;
        v22 = static os_log_type_t.info.getter();
        if (one-time initialization token for logObject != -1)
        {
          v37 = v22;
          swift_once();
          v22 = v37;
        }

        os_log(_:dso:log:_:_:)(v22, &dword_0, logObject, "convertNLIncidentTypeFromSupportedTrafficIncidentType", 53, 2, &_swiftEmptyArrayStorage, v41);
        v23 = [v21 type];
        if (v23 > 2)
        {
          if (v23 != &dword_0 + 3 && v23 != &dword_4 + 1)
          {
LABEL_19:
            v24 = static os_log_type_t.error.getter();
            if (one-time initialization token for logObject != -1)
            {
              v38 = v24;
              swift_once();
              v24 = v38;
            }

            os_log(_:dso:log:_:_:)(v24, &dword_0, logObject, "makeDisplayHints incident type doesn't match any of the existing supported ones", 79, 2, &_swiftEmptyArrayStorage);

            goto LABEL_7;
          }
        }

        else if (v23 != &dword_0 + 1 && v23 != &dword_0 + 2)
        {
          goto LABEL_19;
        }

        v25 = one-time initialization token for incidentTypeNode;

        if (v25 != -1)
        {
          swift_once();
        }

        TerminalOntologyNode.name.getter();
        specialized OntologyNode.javaClassName.getter();
        SemanticValue.init(string:label:nodeClass:)();
        v26 = [v21 localizedDisplayString];
        if (v26)
        {
          v27 = v26;
          static String._unconditionallyBridgeFromObjectiveC(_:)();
        }

        TerminalOntologyNode.name.getter();
        specialized OntologyNode.javaClassName.getter();
        SemanticValue.init(string:label:nodeClass:)();
        v28 = *v57;
        (*v57)(v58, v62, v60);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16[2] + 1, 1, v16);
        }

        v29 = v49;
        v31 = v16[2];
        v30 = v16[3];
        if (v31 >= v30 >> 1)
        {
          v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1, v16);
        }

        v16[2] = v31 + 1;
        v32 = v54;
        v33 = v60;
        (*(v54 + 32))(v16 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v31, v58, v60);
        v34 = v53;
        v28(v53, v62, v33);
        (*(v32 + 56))(v34, 0, 1, v33);
        v28(v51, v61, v33);
        DisplayHint.init(idValue:displayValue:)();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v59 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v59[2] + 1, 1, v59);
        }

        a1 = v50;
        v36 = v59[2];
        v35 = v59[3];
        if (v36 >= v35 >> 1)
        {
          v59 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1, v59);
        }

        v17 = *v45;
        v18 = v60;
        (*v45)(v61, v60);
        v17(v62, v18);
        v19 = v59;
        v59[2] = v36 + 1;
        (*(v55 + 32))(v19 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v36, v29, v52);
        v63 = v19;
        v14 = v48;
LABEL_7:
        if (v14 == ++v15)
        {
          goto LABEL_34;
        }
      }
    }

    __break(1u);
  }

  else
  {
LABEL_34:
    if (one-time initialization token for referenceNode != -1)
    {
      swift_once();
    }

    TerminalOntologyNode.name.getter();
    v39 = v41;
    OrdinalDisplayHintsBuilder.init(referenceNode:)();
    v40 = OrdinalDisplayHintsBuilder.build(for:)();

    (*(v42 + 8))(v39, v43);
    specialized Array.append<A>(contentsOf:)(v40);
    return v63;
  }

  return result;
}

void specialized static RecipientDisambiguationHelper.allHaveSameIdentifier(recipients:)(unint64_t a1)
{
  v1 = a1;
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_81:
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  v4 = 0;
  v5 = v1 & 0xC000000000000001;
  do
  {
    v9 = v4;
    if (v3 == v4)
    {
      break;
    }

    if (v5)
    {
      v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        goto LABEL_74;
      }

      v10 = *(v1 + 8 * v4 + 32);
    }

    v11 = v10;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
      goto LABEL_81;
    }

    v12 = [v10 contactIdentifier];
    if (v12)
    {
      v13 = v12;
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = v15;

      v6 = v14 & 0xFFFFFFFFFFFFLL;
    }

    else
    {

      v6 = 0;
      v7 = 0xE000000000000000;
    }

    if ((v7 & 0x2000000000000000) != 0)
    {
      v8 = HIBYTE(v7) & 0xF;
    }

    else
    {
      v8 = v6;
    }

    v4 = v9 + 1;
  }

  while (v8);
  v16 = 0;
  v59 = v1 & 0xC000000000000001;
  while (v3 != v16)
  {
    if (v5)
    {
      v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v16 >= *(v2 + 16))
      {
        goto LABEL_76;
      }

      v20 = *(v1 + 8 * v16 + 32);
    }

    v21 = v20;
    if (__OFADD__(v16, 1))
    {
      goto LABEL_75;
    }

    v22 = [v20 customIdentifier];
    if (v22)
    {
      v23 = v22;
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v25;

      v17 = v24 & 0xFFFFFFFFFFFFLL;
    }

    else
    {

      v17 = 0;
      v18 = 0xE000000000000000;
    }

    v19 = HIBYTE(v18) & 0xF;
    if ((v18 & 0x2000000000000000) == 0)
    {
      v19 = v17;
    }

    ++v16;
    if (!v19)
    {
      if (v3 != v9)
      {
        return;
      }

LABEL_52:
      if (v3)
      {
        if (!v5)
        {
          if (*(v2 + 16))
          {
            v42 = *(v1 + 32);
            goto LABEL_56;
          }

          __break(1u);
LABEL_85:
          __break(1u);
LABEL_86:
          v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_35:
          v27 = v26;
          v28 = [v26 customIdentifier];

          if (!v28)
          {
            goto LABEL_91;
          }

          v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v30 = v29;

          v31 = 0;
          while (1)
          {
            if (v5)
            {
              v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v31 >= *(v2 + 16))
              {
                goto LABEL_80;
              }

              v32 = *(v1 + 8 * v31 + 32);
            }

            v33 = v32;
            v34 = v31 + 1;
            if (__OFADD__(v31, 1))
            {
              goto LABEL_78;
            }

            v35 = [v32 customIdentifier];
            if (!v35)
            {
              goto LABEL_89;
            }

            v36 = v35;
            v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v39 = v38;

            v40 = v58 == v37 && v30 == v39;
            if (v40)
            {

              v5 = v1 & 0xC000000000000001;
            }

            else
            {
              v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

              v5 = v1 & 0xC000000000000001;
              if ((v41 & 1) == 0)
              {
LABEL_71:

                return;
              }
            }

            ++v31;
            if (v34 == v3)
            {
              goto LABEL_71;
            }
          }
        }
      }

      else
      {
        __break(1u);
      }

      v42 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_56:
      v43 = v42;
      v44 = [v42 contactIdentifier];

      if (!v44)
      {
        goto LABEL_90;
      }

      v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v47 = v46;

      v48 = 0;
      v1 = v2;
      while (1)
      {
        if (v5)
        {
          v49 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v48 >= *(v2 + 16))
          {
            goto LABEL_79;
          }

          v49 = *(v58 + 8 * v48 + 32);
        }

        v50 = v49;
        v2 = v48 + 1;
        if (__OFADD__(v48, 1))
        {
          goto LABEL_77;
        }

        v51 = [v49 contactIdentifier];
        if (!v51)
        {
          goto LABEL_88;
        }

        v52 = v51;
        v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v55 = v54;

        if (v45 == v53 && v47 == v55)
        {

          v5 = v59;
        }

        else
        {
          v57 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v5 = v59;
          if ((v57 & 1) == 0)
          {
            goto LABEL_71;
          }
        }

        ++v48;
        v40 = v2 == v3;
        v2 = v1;
        if (v40)
        {
          goto LABEL_71;
        }
      }
    }
  }

  if (v3 == v9)
  {
    goto LABEL_52;
  }

  if (!v3)
  {
    goto LABEL_85;
  }

  if (v5)
  {
    goto LABEL_86;
  }

  if (*(v2 + 16))
  {
    v26 = *(v1 + 32);
    goto LABEL_35;
  }

  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
}

unint64_t specialized static RecipientDisambiguationHelper.hasRecipientsWithSameDisplayName(recipients:)(unint64_t result)
{
  v1 = result;
  if (!(result >> 62))
  {
    v2 = *(&dword_10 + (result & 0xFFFFFFFFFFFFFF8));
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_8:
    v6 = 0;
    v8 = 0xE000000000000000;
    goto LABEL_9;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v2 = result;
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    goto LABEL_31;
  }

  if (*(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)))
  {
    for (i = *(v1 + 32); ; i = specialized _ArrayBuffer._getElementSlowPath(_:)())
    {
      v4 = i;
      v5 = [i displayName];

      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;

LABEL_9:
      v9 = HIBYTE(v8) & 0xF;
      if ((v8 & 0x2000000000000000) == 0)
      {
        v9 = v6 & 0xFFFFFFFFFFFFLL;
      }

      v10 = v9 != 0;
      if (!v9 || !v2)
      {
        break;
      }

      v11 = 0;
      v21 = v1 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v11 >= *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_30;
          }

          v12 = *(v1 + 8 * v11 + 32);
        }

        v13 = v12;
        v14 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        v15 = [v12 displayName];
        v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v17;

        if (v6 == v16 && v8 == v18)
        {
        }

        else
        {
          v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v20 & 1) == 0)
          {
            v10 = 0;
            goto LABEL_28;
          }
        }

        ++v11;
        if (v14 == v2)
        {
          v10 = 1;
          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      ;
    }

LABEL_28:

    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized static DisambiguationListUtils.makeHandleLabelItemComponent(handleLabel:handleType:locale:)(void *a1)
{
  Locale.languageCode.getter();
  v2 = static LabelMappingUtil.translateINPersonHandleLabel(_:languageCode:)();
  v4 = v3;

  v5 = static os_log_type_t.info.getter();
  if (one-time initialization token for logObject != -1)
  {
    swift_once();
  }

  v6 = logObject;
  if (os_log_type_enabled(logObject, v5))
  {
    v7 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v7 = 136315394;
    type metadata accessor for INPersonHandleLabel(0);
    v8 = a1;
    v9 = String.init<A>(describing:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v15);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;

    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v2, v4, &v15);

    *(v7 + 14) = v12;
    _os_log_impl(&dword_0, v6, v5, "makeHandleLabelItemComponent %s label %s", v7, 0x16u);
    swift_arrayDestroy();
  }

  type metadata accessor for SiriKitDisambiguationItemComponent();
  dispatch thunk of static SiriKitDisambiguationItemComponent.makeBuilder(_:)();

  v13 = dispatch thunk of SiriKitDisambiguationItemComponent.Builder.build()();

  return v13;
}

uint64_t specialized static DisambiguationListUtils.makeHandleValueItemComponent(type:value:allowedOnLockScreen:)(uint64_t a1, uint64_t a2, unint64_t a3, int a4)
{
  v8 = type metadata accessor for SpeakableString();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 2)
  {
    v25 = a2;
    v26 = a3;
    v20[3] = a4;
    v23 = 11370722;
    v24 = 0xA300000000000000;
    v21 = 0;
    v22 = 0xE000000000000000;
    lazy protocol witness table accessor for type String and conformance String();
    v25 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v26 = v12;
    v23 = 11305186;
    v24 = 0xA300000000000000;
    v21 = 0;
    v22 = 0xE000000000000000;
    v13 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v15 = v14;

    v25 = 0;
    v26 = 0xE000000000000000;
    _StringGuts.grow(_:)(39);

    v25 = 0xD000000000000012;
    v26 = 0x80000000000C0850;
    v16._countAndFlagsBits = v13;
    v16._object = v15;
    String.append(_:)(v16);
    v17._countAndFlagsBits = 0xD000000000000013;
    v17._object = 0x80000000000C0870;
    String.append(_:)(v17);
    SpeakableString.init(print:speak:)();
    type metadata accessor for SiriKitDisambiguationItemComponent();
    SpeakableString.print.getter();
    dispatch thunk of static SiriKitDisambiguationItemComponent.makeBuilder(_:)();

    SpeakableString.speak.getter();
    dispatch thunk of SiriKitDisambiguationItemComponent.Builder.withSpeak(_:)();

    SpeakableString.speak.getter();
    dispatch thunk of SiriKitDisambiguationItemComponent.Builder.withSpeakOnLockScreen(_:)();

    dispatch thunk of SiriKitDisambiguationItemComponent.Builder.withAllowedOnLockScreen(_:)();

    v18 = dispatch thunk of SiriKitDisambiguationItemComponent.Builder.build()();

    (*(v9 + 8))(v11, v8);
  }

  else
  {
    type metadata accessor for SiriKitDisambiguationItemComponent();
    dispatch thunk of static SiriKitDisambiguationItemComponent.makeBuilder(_:)();
    dispatch thunk of SiriKitDisambiguationItemComponent.Builder.withAllowedOnLockScreen(_:)();

    v18 = dispatch thunk of SiriKitDisambiguationItemComponent.Builder.build()();
  }

  return v18;
}

void *specialized static DisambiguationListUtils.makeDisambiguationItemComponents(person:locale:handleDisambiguation:)(void *a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    v8 = [a1 displayName];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v12 = v9 & 0xFFFFFFFFFFFFLL;
    }

    if (v12)
    {
      type metadata accessor for SiriKitDisambiguationItemComponent();
      v13 = [a1 displayName];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      dispatch thunk of static SiriKitDisambiguationItemComponent.makeBuilder(_:)();

      dispatch thunk of SiriKitDisambiguationItemComponent.Builder.build()();

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      return &_swiftEmptyArrayStorage;
    }

    return &_swiftEmptyArrayStorage;
  }

  v3 = [a1 personHandle];
  if (!v3)
  {
    return &_swiftEmptyArrayStorage;
  }

  v4 = v3;
  v5 = [v3 label];
  if (v5)
  {
    v6 = v5;
    [v4 type];
    specialized static DisambiguationListUtils.makeHandleLabelItemComponent(handleLabel:handleType:locale:)(v6);

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      v20 = *(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8));
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  v15 = [v4 value];
  if (v15)
  {
    v16 = v15;
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    specialized static DisambiguationListUtils.makeHandleValueItemComponent(type:value:allowedOnLockScreen:)([v4 type], v17, v19, 0);

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    return &_swiftEmptyArrayStorage;
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t specialized static DisambiguationListUtils.makeDisambiguationItem(person:locale:handleDisambiguation:)(void *a1, uint64_t a2, char a3)
{
  specialized static DisambiguationListUtils.makeDisambiguationItemComponents(person:locale:handleDisambiguation:)(a1, a2, a3);
  v3 = objc_allocWithZone(SKIDirectInvocationPayload);
  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 initWithIdentifier:v4];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMd, &_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_B89E0;
  v23[0] = 0x6E65697069636552;
  v23[1] = 0xE900000000000074;
  v7 = v5;
  AnyHashable.init<A>(_:)();
  v8 = INPerson.encodeBase64.getter();
  *(inited + 96) = &type metadata for String;
  *(inited + 72) = v8;
  *(inited + 80) = v9;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of Mirror.DisplayStyle?(inited + 32, &_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v7 setUserData:isa];

  if (one-time initialization token for logObject != -1)
  {
    swift_once();
  }

  v11 = logObject;
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v23[0] = v14;
    *v13 = 136315138;
    v15 = v7;
    v16 = [v15 description];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, v23);

    *(v13 + 4) = v20;
    _os_log_impl(&dword_0, v11, v12, "Make Disambiguation Item with DirectInvocation payload: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v14);
  }

  type metadata accessor for SiriKitDisambiguationItem();
  swift_allocObject();
  v21 = SiriKitDisambiguationItem.init(components:directInvocation:allowLineWrapForDisplayText:)();

  return v21;
}

void *specialized static DisambiguationListUtils.makeDisambiguationItems(persons:locale:)(unint64_t a1, uint64_t a2)
{
  if (a1 >> 62)
  {
    goto LABEL_24;
  }

  for (i = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    result = &_swiftEmptyArrayStorage;
    if (!i)
    {
      break;
    }

    specialized static RecipientDisambiguationHelper.allHaveSameIdentifier(recipients:)(a1);
    v6 = v5;
    result = specialized static RecipientDisambiguationHelper.hasRecipientsWithSameDisplayName(recipients:)(a1);
    v7 = result;
    v8 = a1 & 0xC000000000000001;
    if (v6)
    {
      if (v8)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
        {
          __break(1u);
          return result;
        }

        v9 = *(a1 + 32);
      }

      v10 = v9;
      type metadata accessor for SiriKitDisambiguationItemComponent();
      v11 = [v10 displayName];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      dispatch thunk of static SiriKitDisambiguationItemComponent.makeBuilder(_:)();

      v12 = dispatch thunk of SiriKitDisambiguationItemComponent.Builder.build()();

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_B8FB0;
      *(v13 + 32) = v12;
      type metadata accessor for SiriKitDisambiguationItem();
      swift_allocObject();
      SiriKitDisambiguationItem.init(components:utterance:allowLineWrapForDisplayText:)();

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    for (j = 0; ; ++j)
    {
      if (v8)
      {
        v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_23;
        }

        v15 = *(a1 + 8 * j + 32);
      }

      v16 = v15;
      v17 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      specialized static DisambiguationListUtils.makeDisambiguationItem(person:locale:handleDisambiguation:)(v15, a2, v7 & 1);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      if (v17 == i)
      {
        return &_swiftEmptyArrayStorage;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    ;
  }

  return result;
}

_OWORD *specialized static DisambiguationListUtils.makeDisambiguationItemComponents(item:locale:)(void *a1)
{
  specialized static TrafficIncidentUtils.convertNLIncidentTypeFromSupportedTrafficIncidentType(incidentType:)(a1);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v3 = swift_allocObject();
    *(v3 + 1) = xmmword_B8FB0;
    v4 = [a1 localizedDisplayString];
    if (v4)
    {
      v5 = v4;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
    }

    type metadata accessor for SiriKitDisambiguationItemComponent();
    dispatch thunk of static SiriKitDisambiguationItemComponent.makeBuilder(_:)();

    v7 = [a1 localizedDisplayString];
    if (v7)
    {
      v8 = v7;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    dispatch thunk of SiriKitDisambiguationItemComponent.Builder.withSpeak(_:)();

    v9 = dispatch thunk of SiriKitDisambiguationItemComponent.Builder.build()();

    v3[4] = v9;
    v10 = static os_log_type_t.info.getter();
    if (one-time initialization token for logObject != -1)
    {
      swift_once();
    }

    v11 = logObject;
    if (os_log_type_enabled(logObject, v10))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v19 = v13;
      *v12 = 136315138;
      v14 = Array.description.getter();
      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v19);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_0, v11, v10, "makeDisambiguationItemComponents made components %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v13);
    }
  }

  else
  {
    v6 = static os_log_type_t.error.getter();
    if (one-time initialization token for logObject != -1)
    {
      v18 = v6;
      swift_once();
      v6 = v18;
    }

    v3 = &_swiftEmptyArrayStorage;
    os_log(_:dso:log:_:_:)(v6, &dword_0, logObject, "makeDisambiguationItemComponents incident type doesn't match any of the existing supported ones", 95, 2, &_swiftEmptyArrayStorage);
  }

  return v3;
}

uint64_t specialized static DisambiguationListUtils.makeMachineUtterance(item:locale:)(void *a1)
{
  specialized static TrafficIncidentUtils.convertNLIncidentTypeFromSupportedTrafficIncidentType(incidentType:)(a1);
  if (v1)
  {
    type metadata accessor for MachineUtteranceBuilder();
    swift_allocObject();
    MachineUtteranceBuilder.init()();
    dispatch thunk of MachineUtteranceBuilder.addMapping(node:value:)();

    v2 = dispatch thunk of MachineUtteranceBuilder.build()();
    v4 = v3;

    if (one-time initialization token for logObject != -1)
    {
      swift_once();
    }

    v5 = logObject;
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v13 = v8;
      *v7 = 136315138;

      v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v2, v4, &v13);

      *(v7 + 4) = v9;
      _os_log_impl(&dword_0, v5, v6, "makeMachineUtterance utterance is: %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v8);
    }
  }

  else
  {
    v10 = static os_log_type_t.error.getter();
    if (one-time initialization token for logObject != -1)
    {
      v12 = v10;
      swift_once();
      v10 = v12;
    }

    os_log(_:dso:log:_:_:)(v10, &dword_0, logObject, "makeMachineUtterance incident type doesn't match any of the existing supported ones", 83, 2, &_swiftEmptyArrayStorage);
    return 0;
  }

  return v2;
}

uint64_t specialized static DisambiguationListUtils.makeDisambiguationItem(item:locale:)(void *a1)
{
  specialized static DisambiguationListUtils.makeDisambiguationItemComponents(item:locale:)(a1);
  specialized static DisambiguationListUtils.makeMachineUtterance(item:locale:)(a1);
  type metadata accessor for SiriKitDisambiguationItem();
  swift_allocObject();
  v2 = SiriKitDisambiguationItem.init(components:utterance:allowLineWrapForDisplayText:)();
  if (one-time initialization token for logObject != -1)
  {
    swift_once();
  }

  v3 = logObject;
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;

    v7 = String.init<A>(describing:)();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_0, v3, v4, "makeDisambiguationItem incident item is: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
  }

  return v2;
}

void *specialized static DisambiguationListUtils.makeDisambiguationItems(incidentTypes:locale:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_24;
  }

  for (i = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v3 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v3 >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_23;
        }

        v4 = *(a1 + 32 + 8 * v3);
      }

      v5 = v4;
      if (__OFADD__(v3++, 1))
      {
        break;
      }

      if (one-time initialization token for siriSupportedIncidents != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v7 = static TrafficIncidentUtils.siriSupportedIncidents;

      v8 = [v5 type];
      if (*(v7 + 16) && (v9 = v8, Hasher.init(_seed:)(), Hasher._combine(_:)(v9), v10 = Hasher._finalize()(), v11 = -1 << *(v7 + 32), v12 = v10 & ~v11, ((*(v7 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0))
      {
        v13 = ~v11;
        while (*(*(v7 + 48) + 8 * v12) != v9)
        {
          v12 = (v12 + 1) & v13;
          if (((*(v7 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
          {
            goto LABEL_4;
          }
        }

        specialized static DisambiguationListUtils.makeDisambiguationItem(item:locale:)(v5);
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        if (v3 == i)
        {
          return &_swiftEmptyArrayStorage;
        }
      }

      else
      {
LABEL_4:

        if (v3 == i)
        {
          return &_swiftEmptyArrayStorage;
        }
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    ;
  }

  if (one-time initialization token for logObject != -1)
  {
    swift_once();
  }

  v15 = logObject;
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_0, v15, v16, "makeDisambiguationItems received empty list", v17, 2u);
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t specialized TypedDisambiguationItems.makeNLContextUpdate(locale:weightedPromptResponseTargets:isPommes:isUSO:_:)(void (*a1)(void, void, void), uint64_t a2, int a3, int a4, unint64_t a5, char a6, void (*a7)(uint64_t), uint64_t a8)
{
  v96 = a8;
  v97 = a7;
  v103 = a5;
  LODWORD(v99) = a4;
  v91 = a3;
  v104 = a1;
  v10 = type metadata accessor for PommesContext.Source();
  v89 = *(v10 - 8);
  __chkstk_darwin();
  v88 = &v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  __chkstk_darwin();
  v13 = &v85 - v12;
  v106 = type metadata accessor for DisplayHint();
  v102 = *(v106 - 8);
  __chkstk_darwin();
  v100 = &v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v107 = &v85 - v15;
  __chkstk_darwin();
  v105 = &v85 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  __chkstk_darwin();
  v95 = &v85 - v17;
  v90 = type metadata accessor for Siri_Nlu_External_SystemPrompted();
  v18 = *(v90 - 8);
  __chkstk_darwin();
  v20 = &v85 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v22 = &v85 - v21;
  v23 = type metadata accessor for NLContextUpdate();
  v98 = *(v23 - 8);
  __chkstk_darwin();
  v92 = &v85 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v94 = &v85 - v25;
  v26 = static os_log_type_t.info.getter();
  if (one-time initialization token for logObject != -1)
  {
    v83 = v13;
    v84 = v26;
    swift_once();
    v26 = v84;
    v13 = v83;
  }

  v27 = logObject;
  os_log(_:dso:log:_:_:)(v26, &dword_0, logObject, "TypedDisambiguationItems makeNLContextUpdate", 44, 2, &_swiftEmptyArrayStorage);
  if (a6)
  {
    v28 = specialized static GeoNLContextUtils.makeDisplayHints(items:locale:)(v103);
    v29 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v27, v29))
    {
      v30 = v27;
      v31 = swift_slowAlloc();
      v32 = v23;
      v33 = swift_slowAlloc();
      v108[0] = v33;
      *v31 = 136315138;
      v34 = Array.description.getter();
      v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v35, v108);

      *(v31 + 4) = v36;
      _os_log_impl(&dword_0, v30, v29, "TypedDisambiguationItems IncidentType displayHints are: %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v33);
      v23 = v32;
    }

    v37 = v94;
    static GeoNLContextUtils.makeNLContext(weightedPromptResponseTargets:displayHints:)(a2, v28);

    v38 = v98;
    v39 = v95;
    (*(v98 + 16))(v95, v37, v23);
    (*(v38 + 56))(v39, 0, 1, v23);
    v97(v39);
    outlined destroy of Mirror.DisplayStyle?(v39, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
    return (*(v38 + 8))(v37, v23);
  }

  else
  {
    v85 = v13;
    v86 = v10;
    v101 = v27;
    v87 = a2;
    v93 = v23;
    if (v99)
    {
      v41 = v94;
      NLContextUpdate.init()();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMR);
      type metadata accessor for Siri_Nlu_External_SystemDialogAct();
      *(swift_allocObject() + 16) = xmmword_B89E0;
      type metadata accessor for UsoTaskBuilder_noVerb_common_Person();
      swift_allocObject();
      v42 = UsoTaskBuilder_noVerb_common_Person.init()();
      type metadata accessor for UsoEntityBuilder_common_Person();
      swift_allocObject();
      UsoEntityBuilder_common_Person.init()();
      dispatch thunk of Uso_VerbTemplateBuilder_NoVerb.setEntity(value:)();
      static Siri_Nlu_External_SystemPrompted.from(_:)(v42, v22);
      Siri_Nlu_External_SystemDialogAct.init()();
      v43 = v90;
      (*(v18 + 16))(v20, v22, v90);
      Siri_Nlu_External_SystemDialogAct.prompted.setter();

      (*(v18 + 8))(v22, v43);
      NLContextUpdate.nluSystemDialogActs.setter();
      v44 = v98;
      v45 = v95;
      v46 = v93;
      (*(v98 + 16))(v95, v41, v93);
      (*(v44 + 56))(v45, 0, 1, v46);
      v97(v45);
      outlined destroy of Mirror.DisplayStyle?(v45, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
      (*(v44 + 8))(v41, v46);
    }

    v47 = v103;
    specialized static RecipientDisambiguationHelper.allHaveSameIdentifier(recipients:)(v103);
    v90 = specialized static GeoNLContextUtils.makeDisplayHints(persons:locale:handleDisambiguation:)(v47, v104, v48 & 1);
    v50 = *(v90 + 16);
    v51 = v101;
    v53 = v106;
    v52 = v107;
    if (v50)
    {
      v54 = v102 + 16;
      v55 = *(v102 + 16);
      v56 = v90 + ((*(v102 + 80) + 32) & ~*(v102 + 80));
      v57 = *(v102 + 72);
      v102 += 32;
      v103 = v57;
      v58 = (v54 - 8);
      *&v49 = 136315138;
      v99 = v49;
      v104 = v55;
      do
      {
        v66 = v105;
        v55(v105, v56, v53);
        v67 = static os_log_type_t.info.getter();
        (*v102)(v52, v66, v53);
        if (os_log_type_enabled(v51, v67))
        {
          v59 = v54;
          v60 = swift_slowAlloc();
          v61 = swift_slowAlloc();
          v108[0] = v61;
          *v60 = v99;
          v55(v100, v107, v53);
          v62 = String.init<A>(describing:)();
          v64 = v63;
          (*v58)(v107, v106);
          v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v64, v108);
          v51 = v101;

          *(v60 + 4) = v65;
          v53 = v106;
          _os_log_impl(&dword_0, v51, v67, "TypedDisambiguationItems Contact displayHints are: %s", v60, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v61);

          v54 = v59;
          v52 = v107;
        }

        else
        {
          (*v58)(v52, v53);
        }

        v55 = v104;
        v56 += v103;
        --v50;
      }

      while (v50);
    }

    v68 = v92;
    static GeoNLContextUtils.makeNLContext(weightedPromptResponseTargets:displayHints:)(v87, v90);

    v69 = v97;
    v70 = v93;
    if (v91)
    {
      v71 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v51, v71))
      {
        v72 = swift_slowAlloc();
        *v72 = 0;
        _os_log_impl(&dword_0, v51, v71, "makeContextForConfirmIntent adding pommesContext", v72, 2u);
      }

      (*(v89 + 104))(v88, enum case for PommesContext.Source.pluginDefined(_:), v86);
      v73 = v85;
      PommesContext.init(source:domain:listenAfterSpeaking:)();
      v74 = type metadata accessor for PommesContext();
      (*(*(v74 - 8) + 56))(v73, 0, 1, v74);
      NLContextUpdate.pommesContext.setter();
    }

    v75 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v51, v75))
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v108[0] = v77;
      *v76 = 136315138;
      swift_beginAccess();
      (*(v98 + 16))(v94, v68, v70);
      v78 = String.init<A>(describing:)();
      v80 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v78, v79, v108);
      v70 = v93;

      *(v76 + 4) = v80;
      _os_log_impl(&dword_0, v51, v75, "nlContext %s", v76, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v77);
    }

    swift_beginAccess();
    v81 = v98;
    v82 = v95;
    (*(v98 + 16))(v95, v68, v70);
    (*(v81 + 56))(v82, 0, 1, v70);
    v69(v82);
    outlined destroy of Mirror.DisplayStyle?(v82, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
    return (*(v81 + 8))(v68, v70);
  }
}

uint64_t specialized static RecipientDisambiguationHelper.hasAllSameRecipientsWithHandles(recipients:)(unint64_t a1)
{
  specialized static RecipientDisambiguationHelper.allHaveSameIdentifier(recipients:)(a1);
  if ((v2 & 1) == 0)
  {
    return 0;
  }

  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_17;
        }

        v5 = *(a1 + 8 * j + 32);
      }

      v6 = v5;
      v7 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if (INPerson.hasHandleLabel.getter())
      {
      }

      else
      {
        v8 = INPerson.hasHandleValue.getter();

        if ((v8 & 1) == 0)
        {
          return 0;
        }
      }

      if (v7 == i)
      {
        return 1;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  return 1;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for TypedDisambiguationItems(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for TypedDisambiguationItems(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
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

{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

uint64_t outlined init with take of PersonNameComponents?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type INPerson and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type INPerson and conformance NSObject;
  if (!lazy protocol witness table cache variable for type INPerson and conformance NSObject)
  {
    type metadata accessor for OS_os_log(255, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type INPerson and conformance NSObject);
  }

  return result;
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance DeviceType@<X0>(Swift::Int *a1@<X0>, GeoFlowDelegatePlugin::DeviceType_optional *a2@<X8>)
{
  result = specialized DeviceType.init(rawValue:)(*a1);
  a2->value = result;
  return result;
}

uint64_t static AssistantProperties.isNavigating()()
{
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  [static AssistantProperties.instance currentNavigationState];
  return AFNavigationStateIsNavigating();
}

uint64_t *AssistantProperties.instance.unsafeMutableAddressor()
{
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  return &static AssistantProperties.instance;
}

id one-time initialization function for instance()
{
  result = [objc_opt_self() sharedPreferences];
  static AssistantProperties.instance = result;
  return result;
}

id static AssistantProperties.instance.getter()
{
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  v1 = static AssistantProperties.instance;

  return v1;
}

unint64_t specialized DeviceType.init(rawValue:)(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DeviceType and conformance DeviceType()
{
  result = lazy protocol witness table cache variable for type DeviceType and conformance DeviceType;
  if (!lazy protocol witness table cache variable for type DeviceType and conformance DeviceType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DeviceType and conformance DeviceType);
  }

  return result;
}

uint64_t one-time initialization function for locationServicesURL()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  __swift_allocate_value_buffer(v0, static LocationServicesViews.locationServicesURL);
  __swift_project_value_buffer(v0, static LocationServicesViews.locationServicesURL);
  return URL.init(string:)();
}

uint64_t DeepLinkParams.init(catModel:deepLinkURL:buttonLabel:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  type metadata accessor for CATService();
  v10 = swift_allocObject();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v10 + 24) = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  type metadata accessor for OS_os_log();
  *(v10 + 32) = OS_os_log.init(subsystem:category:)();
  *(v10 + 16) = 0;
  *a5 = v10;
  outlined init with take of CATType(a1, (a5 + 8));
  v12 = type metadata accessor for DeepLinkParams(0);
  v13 = *(v12 + 24);
  v14 = type metadata accessor for URL();
  result = (*(*(v14 - 8) + 32))(&a5[v13], a2, v14);
  v16 = &a5[*(v12 + 28)];
  *v16 = a3;
  *(v16 + 1) = a4;
  return result;
}

uint64_t static LocationServicesViews.needPreciseLocation.getter@<X0>(char a1@<W0>, char *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v4 = __chkstk_darwin();
  v6 = &v19 - v5;
  v21 = &type metadata for LocationServices;
  v22 = &protocol witness table for LocationServices;
  LOBYTE(v20) = a1;
  if (one-time initialization token for locationServicesURL != -1)
  {
    v18 = v4;
    swift_once();
    v4 = v18;
  }

  v7 = __swift_project_value_buffer(v4, static LocationServicesViews.locationServicesURL);
  outlined init with copy of URL?(v7, v6);
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  result = (*(v9 + 48))(v6, 1, v8);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v11 = specialized static LocationServicesViews.locationServiceLabel.getter();
    v13 = v12;
    type metadata accessor for CATService();
    v14 = swift_allocObject();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    *(v14 + 24) = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    type metadata accessor for OS_os_log();
    *(v14 + 32) = OS_os_log.init(subsystem:category:)();
    *(v14 + 16) = 0;
    *a2 = v14;
    outlined init with take of CATType(&v20, (a2 + 8));
    v16 = type metadata accessor for DeepLinkParams(0);
    result = (*(v9 + 32))(&a2[*(v16 + 24)], v6, v8);
    v17 = &a2[*(v16 + 28)];
    *v17 = v11;
    v17[1] = v13;
  }

  return result;
}

void *static LocationServicesViews.makeDeepLink(status:device:)(char a1, void *a2)
{
  type metadata accessor for DeepLinkParams(0);
  __chkstk_darwin();
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static LocationServicesViews.needPreciseLocation.getter(a1 == 0, v5);
  v6 = DeepLinkParams.makeDeepLink(device:)(a2);
  outlined destroy of DeepLinkParams(v5);
  return v6;
}

void *DeepLinkParams.makeDeepLink(device:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if ((dispatch thunk of DeviceState.isPhone.getter() & 1) == 0)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    if ((dispatch thunk of DeviceState.isPad.getter() & 1) == 0)
    {
      return &_swiftEmptyArrayStorage;
    }
  }

  v2 = [objc_allocWithZone(SAUIButton) init];
  v3 = type metadata accessor for DeepLinkParams(0);
  v4 = String._bridgeToObjectiveC()();
  [v2 setText:v4];

  v5 = [objc_allocWithZone(SAUIOpenLink) init];
  URL._bridgeToObjectiveC()(*(v3 + 24));
  v7 = v6;
  [v5 setRef:v6];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_B8FB0;
  *(v8 + 32) = v5;
  v9 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 setCommands:isa];

  v11 = v2;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  return &_swiftEmptyArrayStorage;
}

uint64_t DeepLinkParams.catModel.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 8));

  return outlined init with take of CATType(a1, v1 + 8);
}

uint64_t DeepLinkParams.deepLinkURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DeepLinkParams(0) + 24);
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t DeepLinkParams.deepLinkURL.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for DeepLinkParams(0) + 24);
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t DeepLinkParams.buttonLabel.getter()
{
  v1 = *(v0 + *(type metadata accessor for DeepLinkParams(0) + 28));

  return v1;
}

uint64_t DeepLinkParams.buttonLabel.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for DeepLinkParams(0) + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t type metadata accessor for DeepLinkParams(uint64_t a1)
{
  result = type metadata singleton initialization cache for DeepLinkParams;
  if (!type metadata singleton initialization cache for DeepLinkParams)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined destroy of DeepLinkParams(uint64_t a1)
{
  v2 = type metadata accessor for DeepLinkParams(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type LocationStatus and conformance LocationStatus()
{
  result = lazy protocol witness table cache variable for type LocationStatus and conformance LocationStatus;
  if (!lazy protocol witness table cache variable for type LocationStatus and conformance LocationStatus)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocationStatus and conformance LocationStatus);
  }

  return result;
}

uint64_t sub_215C0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for URL();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_21680(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for URL();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata completion function for DeepLinkParams(uint64_t a1)
{
  result = type metadata accessor for CATService();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for GeoCATModel();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for URL();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t type metadata accessor for GeoCATModel()
{
  result = lazy cache variable for type metadata for GeoCATModel;
  if (!lazy cache variable for type metadata for GeoCATModel)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for GeoCATModel);
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t outlined init with copy of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t specialized static LocationServicesViews.locationServiceLabel.getter()
{
  type metadata accessor for CATService();
  inited = swift_initStackObject();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(inited + 24) = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  type metadata accessor for OS_os_log();
  *(inited + 32) = OS_os_log.init(subsystem:category:)();
  *(inited + 16) = 0;
  v2 = specialized GeoCATModel.getID()((&dword_0 + 1), 0, 2);
  v4 = v3;
  v5 = specialized GeoCATModel.getParams()(1, 0, 2);
  v6 = CATService.getLabel(catId:params:)(v2, v4, v5);
  v8 = v7;
  v10 = v9;

  if (v10)
  {
    outlined consume of Result<String, Error>(v6, v8, 1);

    return 0;
  }

  else
  {
  }

  return v6;
}

uint64_t outlined consume of Result<String, Error>(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
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

unint64_t AnswerETAFlow.flowState.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  outlined copy of AnswerETAFlow.State(v1);
  return v1;
}

unint64_t outlined copy of AnswerETAFlow.State(unint64_t result)
{
  if (result >= 4)
  {
    return swift_errorRetain();
  }

  return result;
}

unint64_t AnswerETAFlow.flowState.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
  return outlined consume of AnswerETAFlow.State(v3);
}

unint64_t outlined consume of AnswerETAFlow.State(unint64_t result)
{
  if (result >= 4)
  {
  }

  return result;
}

uint64_t AnswerETAFlow.flowHelper.setter(__int128 *a1)
{
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 40));
  outlined init with take of CATType(a1, v1 + 40);
  return swift_endAccess();
}

uint64_t AnswerETAFlow.directInvocation.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 80) = a1;
  return result;
}

uint64_t AnswerETAFlow.checkNavigation.setter(uint64_t a1, uint64_t a2)
{
  result = swift_beginAccess();
  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return result;
}

uint64_t AnswerETAFlow.isPOMMES.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 104) = a1;
  return result;
}

uint64_t AnswerETAFlow.duration.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 112) = a1;
}

uint64_t AnswerETAFlow.__allocating_init(with:checkNavigation:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v7 = a1[3];
  v8 = a1[4];
  __swift_mutable_project_boxed_opaque_existential_1(a1, v7);
  __chkstk_darwin();
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10);
  v12 = specialized AnswerETAFlow.init(with:checkNavigation:)(v10, a2, a3, v6, v7, v8);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v12;
}

uint64_t AnswerETAFlow.init(with:checkNavigation:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = a1[3];
  v8 = a1[4];
  __swift_mutable_project_boxed_opaque_existential_1(a1, v7);
  __chkstk_darwin();
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10);
  v12 = specialized AnswerETAFlow.init(with:checkNavigation:)(v10, a2, a3, v3, v7, v8);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v12;
}

uint64_t AnswerETAFlow.__allocating_init()()
{
  v2[3] = &type metadata for FlowHelperImpl;
  v2[4] = &protocol witness table for FlowHelperImpl;
  v2[0] = swift_allocObject();
  FlowHelperImpl.init()((v2[0] + 16));
  return (*(v0 + 288))(v2, &type metadata for AssistantProperties, &protocol witness table for AssistantProperties);
}

uint64_t AnswerETAFlow.executeState()(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return _swift_task_switch(AnswerETAFlow.executeState(), 0, 0);
}

uint64_t AnswerETAFlow.executeState()()
{
  v27 = v0;
  v1 = (*(**(v0 + 32) + 144))();
  *(v0 + 40) = v1;
  v2 = *(v0 + 32);
  if (v1 <= 1)
  {
    if (v1)
    {
      if (v1 == 1)
      {
        v22 = (*(*v2 + 344) + **(*v2 + 344));
        v3 = swift_task_alloc();
        *(v0 + 56) = v3;
        *v3 = v0;
        v3[1] = AnswerETAFlow.executeState();

        return v22();
      }

      goto LABEL_12;
    }

    v24 = (*(*v2 + 312) + **(*v2 + 312));
    v18 = swift_task_alloc();
    *(v0 + 48) = v18;
    *v18 = v0;
    v18[1] = AnswerETAFlow.executeState();
    v19 = *(v0 + 24);
    v20 = v24;

    return v20(v19);
  }

  if (v1 == 2)
  {
    v25 = (*(*v2 + 336) + **(*v2 + 336));
    v21 = swift_task_alloc();
    *(v0 + 72) = v21;
    *v21 = v0;
    v21[1] = AnswerETAFlow.executeState();
    v19 = *(v0 + 24);
    v20 = v25;

    return v20(v19);
  }

  if (v1 != 3)
  {
LABEL_12:
    v7 = v1;
    v8 = static os_log_type_t.default.getter();
    v9 = v2[2];
    if (os_log_type_enabled(v9, v8))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v26 = v11;
      *v10 = 136315138;
      *(v0 + 16) = v7;
      swift_errorRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v12 = String.init<A>(describing:)();
      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v26);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_0, v9, v8, "AnswerETAFlow execute request unsupported with err: %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v11);
    }

    v15 = *(**(v0 + 32) + 328);
    v23 = (v15 + *v15);
    v16 = swift_task_alloc();
    *(v0 + 80) = v16;
    *v16 = v0;
    v16[1] = AnswerETAFlow.executeState();
    v17 = *(v0 + 24);

    return v23(v17);
  }

  v5 = static os_log_type_t.default.getter();
  os_log(_:dso:log:_:_:)(v5, &dword_0, v2[2], "AnswerETAFlow execute rchComplete", 33, 2, &_swiftEmptyArrayStorage);
  static ExecuteResponse.complete()();
  v6 = *(v0 + 8);

  return v6();
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v3 = *v0;

  v7 = (*(*v2 + 304) + **(*v2 + 304));
  v4 = swift_task_alloc();
  *(v1 + 64) = v4;
  *v4 = v3;
  v4[1] = AnswerETAFlow.executeState();
  v5 = *(v1 + 24);

  return v7(v5);
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

{

  return _swift_task_switch(AnswerETAFlow.executeState(), 0, 0);
}

{
  outlined consume of AnswerETAFlow.State(*(v0 + 40));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t AnswerETAFlow.preChecks()(uint64_t a1)
{
  v2[23] = a1;
  v2[24] = v1;
  v3 = type metadata accessor for TemplatingResult();
  v2[25] = v3;
  v4 = *(v3 - 8);
  v2[26] = v4;
  v2[27] = *(v4 + 64);
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();

  return _swift_task_switch(AnswerETAFlow.preChecks(), 0, 0);
}

uint64_t AnswerETAFlow.preChecks()()
{
  (*(**(v0 + 192) + 216))();
  if ((*(v1 + 8))())
  {
    (*(**(v0 + 192) + 152))(1);
    static ExecuteResponse.ongoing(requireInput:)();

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    v4 = *(v0 + 192);
    v5 = v4[3];
    *(v0 + 40) = &type metadata for NavigationControl;
    *(v0 + 48) = &protocol witness table for NavigationControl;
    *(v0 + 16) = 0;
    v6 = *(*v4 + 168);
    v7 = (*v4 + 168) & 0xFFFFFFFFFFFFLL | 0xA019000000000000;
    *(v0 + 240) = v6;
    *(v0 + 248) = v7;
    v6();
    v8 = *(v0 + 80);
    v9 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1((v0 + 56), v8);
    v10 = (*(v9 + 80))(v8, v9);
    *(v0 + 256) = v10;
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
    v13 = (*(*v5 + 112) + **(*v5 + 112));
    v11 = swift_task_alloc();
    *(v0 + 264) = v11;
    *v11 = v0;
    v11[1] = AnswerETAFlow.preChecks();
    v12 = *(v0 + 232);

    return v13(v12, v0 + 16, v10);
  }
}

{
  v2 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {
    v3 = AnswerETAFlow.preChecks();
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v2 + 16));
    v3 = AnswerETAFlow.preChecks();
  }

  return _swift_task_switch(v3, 0, 0);
}

{
  v14 = v0;
  v2 = *(v0 + 224);
  v1 = *(v0 + 232);
  v3 = *(v0 + 208);
  v4 = *(v0 + 216);
  v5 = *(v0 + 200);
  (*(v0 + 240))();
  v6 = *(v0 + 120);
  v7 = *(v0 + 128);
  __swift_project_boxed_opaque_existential_1((v0 + 96), v6);
  (*(v7 + 104))(v13, v6, v7);
  (*(v3 + 16))(v2, v1, v5);
  outlined init with copy of DeviceState(v0 + 96, v0 + 136);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  (*(v3 + 32))(v9 + v8, v2, v5);
  outlined init with take of CATType((v0 + 136), v9 + ((v4 + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  type metadata accessor for SimpleOutputFlowAsync();
  swift_allocObject();
  v10 = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 96));
  *(v0 + 176) = v10;
  static ExecuteResponse.complete<A>(next:)();

  (*(v3 + 8))(v1, v5);

  v11 = *(v0 + 8);

  return v11();
}

{
  v1 = v0[34];
  v2 = v0[24];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v3 = static os_log_type_t.error.getter();
  os_log(_:dso:log:_:_:)(v3, &dword_0, v2[2], "Dialog Engine error while building NotNavigating", 48, 2, &_swiftEmptyArrayStorage);
  v4 = *(*v2 + 152);
  swift_errorRetain();
  v4(v1);
  static ExecuteResponse.ongoing(requireInput:)();

  v5 = v0[1];

  return v5();
}

uint64_t AnswerETAFlow.errorDialog()(uint64_t a1)
{
  v2[23] = a1;
  v2[24] = v1;
  v3 = type metadata accessor for TemplatingResult();
  v2[25] = v3;
  v4 = *(v3 - 8);
  v2[26] = v4;
  v2[27] = *(v4 + 64);
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();

  return _swift_task_switch(AnswerETAFlow.errorDialog(), 0, 0);
}

uint64_t AnswerETAFlow.errorDialog()()
{
  v1 = v0[24];
  v2 = v1[3];
  v0[5] = &type metadata for NavigationControl;
  v0[6] = &protocol witness table for NavigationControl;
  v0[2] = 1;
  v3 = *(*v1 + 168);
  v4 = (*v1 + 168) & 0xFFFFFFFFFFFFLL | 0xA019000000000000;
  v0[30] = v3;
  v0[31] = v4;
  v3();
  v5 = v0[10];
  v6 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v5);
  v7 = (*(v6 + 80))(v5, v6);
  v0[32] = v7;
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  v11 = (*(*v2 + 112) + **(*v2 + 112));
  v8 = swift_task_alloc();
  v0[33] = v8;
  *v8 = v0;
  v8[1] = AnswerETAFlow.errorDialog();
  v9 = v0[29];

  return v11(v9, v0 + 2, v7);
}

{
  v2 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {
    v3 = AnswerETAFlow.errorDialog();
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v2 + 16));
    v3 = AnswerETAFlow.errorDialog();
  }

  return _swift_task_switch(v3, 0, 0);
}

{
  v14 = v0;
  v2 = *(v0 + 224);
  v1 = *(v0 + 232);
  v3 = *(v0 + 208);
  v4 = *(v0 + 216);
  v5 = *(v0 + 200);
  (*(v0 + 240))();
  v6 = *(v0 + 120);
  v7 = *(v0 + 128);
  __swift_project_boxed_opaque_existential_1((v0 + 96), v6);
  (*(v7 + 104))(v13, v6, v7);
  (*(v3 + 16))(v2, v1, v5);
  outlined init with copy of DeviceState(v0 + 96, v0 + 136);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  (*(v3 + 32))(v9 + v8, v2, v5);
  outlined init with take of CATType((v0 + 136), v9 + ((v4 + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  type metadata accessor for SimpleOutputFlowAsync();
  swift_allocObject();
  v10 = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 96));
  *(v0 + 176) = v10;
  static ExecuteResponse.complete<A>(next:)();

  (*(v3 + 8))(v1, v5);

  v11 = *(v0 + 8);

  return v11();
}

{
  v1 = v0[34];
  v2 = v0[24];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v3 = static os_log_type_t.error.getter();
  os_log(_:dso:log:_:_:)(v3, &dword_0, v2[2], "Dialog Engine error while building fetchETAError", 48, 2, &_swiftEmptyArrayStorage);
  v4 = *(*v2 + 152);
  swift_errorRetain();
  v4(v1);
  static ExecuteResponse.complete()();

  v5 = v0[1];

  return v5();
}

uint64_t AnswerETAFlow.handleDialog()(uint64_t a1)
{
  v2[23] = a1;
  v2[24] = v1;
  v3 = type metadata accessor for TemplatingResult();
  v2[25] = v3;
  v4 = *(v3 - 8);
  v2[26] = v4;
  v2[27] = *(v4 + 64);
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();

  return _swift_task_switch(AnswerETAFlow.handleDialog(), 0, 0);
}

uint64_t AnswerETAFlow.handleDialog()()
{
  v1 = v0[24];
  v2 = v1[3];
  (*(*v1 + 264))();
  v3 = dispatch thunk of DialogDuration.Builder.build()();

  v0[5] = &type metadata for NavigationControl;
  v0[6] = &protocol witness table for NavigationControl;
  v0[2] = v3;
  v5 = *(*v1 + 168);
  v6 = (*v1 + 168) & 0xFFFFFFFFFFFFLL | 0xA019000000000000;
  v0[30] = v5;
  v0[31] = v6;
  v5(v4);
  v7 = v0[10];
  v8 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v7);
  v9 = (*(v8 + 80))(v7, v8);
  v0[32] = v9;
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  v13 = (*(*v2 + 112) + **(*v2 + 112));
  v10 = swift_task_alloc();
  v0[33] = v10;
  *v10 = v0;
  v10[1] = AnswerETAFlow.handleDialog();
  v11 = v0[29];

  return v13(v11, v0 + 2, v9);
}

{
  v2 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {
    v3 = AnswerETAFlow.handleDialog();
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v2 + 16));
    v3 = AnswerETAFlow.handleDialog();
  }

  return _swift_task_switch(v3, 0, 0);
}

{
  v14 = v0;
  v2 = *(v0 + 224);
  v1 = *(v0 + 232);
  v3 = *(v0 + 208);
  v4 = *(v0 + 216);
  v5 = *(v0 + 200);
  (*(v0 + 240))();
  v6 = *(v0 + 120);
  v7 = *(v0 + 128);
  __swift_project_boxed_opaque_existential_1((v0 + 96), v6);
  (*(v7 + 104))(v13, v6, v7);
  (*(v3 + 16))(v2, v1, v5);
  outlined init with copy of DeviceState(v0 + 96, v0 + 136);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  (*(v3 + 32))(v9 + v8, v2, v5);
  outlined init with take of CATType((v0 + 136), v9 + ((v4 + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  type metadata accessor for SimpleOutputFlowAsync();
  swift_allocObject();
  v10 = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 96));
  *(v0 + 176) = v10;
  static ExecuteResponse.complete<A>(next:)();

  (*(v3 + 8))(v1, v5);

  v11 = *(v0 + 8);

  return v11();
}

{
  v1 = v0[34];
  v2 = v0[24];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v3 = static os_log_type_t.error.getter();
  os_log(_:dso:log:_:_:)(v3, &dword_0, v2[2], "Dialog Engine error when building AnswerETA experience", 54, 2, &_swiftEmptyArrayStorage);
  v4 = *(*v2 + 152);
  swift_errorRetain();
  v4(v1);
  static ExecuteResponse.ongoing(requireInput:)();

  v5 = v0[1];

  return v5();
}

uint64_t AnswerETAFlow.fetchETA()()
{
  *(v1 + 104) = v0;
  return _swift_task_switch(AnswerETAFlow.fetchETA(), 0, 0);
}

{
  v1 = v0[13];
  v2 = [objc_allocWithZone(SALocalSearchGetNavigationStatus) init];
  v0[14] = v2;
  v3 = static os_log_type_t.debug.getter();
  v4 = v1[2];
  v0[15] = v4;
  v5 = os_log(_:dso:log:_:_:)(v3, &dword_0, v4, "entered do loop for fetching ETA", 32, 2, &_swiftEmptyArrayStorage);
  (*(*v1 + 168))(v5);
  v6 = v0[5];
  v7 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v6);
  (*(v7 + 8))(v6, v7);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v8 = v0[10];
  v9 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v8);
  v10 = swift_task_alloc();
  v0[16] = v10;
  v11 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for SABaseCommand, SABaseCommand_ptr);
  *v10 = v0;
  v10[1] = AnswerETAFlow.fetchETA();

  return AceServiceInvokerAsync.submit<A>(_:)(v2, v8, v11, v9);
}

{
  v16 = v0;
  v1 = *(v0 + 120);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 144);
    v4 = *(v0 + 120);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136315138;
    *(v0 + 96) = v3;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v7 = String.init<A>(describing:)();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v15);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_0, v4, v2, "Ace Command submission failed with error: %s ", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
  }

  v10 = *(v0 + 144);
  v11 = *(v0 + 112);
  v12 = *(**(v0 + 104) + 152);
  swift_errorRetain();
  v12(v10);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t AnswerETAFlow.fetchETA()(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 136) = a1;
  *(v3 + 144) = v1;

  if (v1)
  {
    v4 = AnswerETAFlow.fetchETA();
  }

  else
  {
    v4 = AnswerETAFlow.fetchETA();
  }

  return _swift_task_switch(v4, 0, 0);
}

void AnswerETAFlow.fetchETA()()
{
  v44 = v0;
  v1 = v0[15];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[17];
    v4 = v0[15];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v43 = v6;
    *v5 = 136315138;
    v7 = v3;
    v8 = [v7 description];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, &v43);

    *(v5 + 4) = v12;
    _os_log_impl(&dword_0, v4, v2, "fetchETA result: %s ", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
  }

  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  v14 = v0[17];
  if (v13)
  {
    v15 = v13;
    v16 = v14;
    v17 = [v15 overallEta];
    if (v17)
    {
      v18 = v17;
      v19 = [v17 timeEta];

      if (v19)
      {
        v20 = [v19 value];

        if (v20)
        {
          v21 = v0[15];
          v22 = static os_log_type_t.default.getter();
          v23 = os_log_type_enabled(v21, v22);
          if (v23)
          {
            v24 = v0[15];
            v25 = swift_slowAlloc();
            v26 = swift_slowAlloc();
            v43 = v26;
            *v25 = 136315138;
            v27 = v20;
            v28 = [v27 description];
            v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v31 = v30;

            v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v31, &v43);

            *(v25 + 4) = v32;
            _os_log_impl(&dword_0, v24, v22, "duration result: %s minutes", v25, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v26);
          }

          v14 = v0[17];
          v33 = v0[13];
          v34 = v0[14];
          (*(*v33 + 264))(v23);
          [v20 doubleValue];
          dispatch thunk of DialogDuration.Builder.withSecs(_:)();

          (*(*v33 + 152))(2);

          v35 = v14;
        }

        else
        {
          v14 = v0[17];
          v39 = v0[13];
          v35 = v0[14];
          lazy protocol witness table accessor for type Errors and conformance Errors();
          v40 = swift_allocError();
          *v41 = 0xD00000000000001CLL;
          *(v41 + 8) = 0x80000000000C0A90;
          *(v41 + 16) = 2;
          (*(*v39 + 152))(v40);
        }

        goto LABEL_12;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

  v36 = v0[13];
  v35 = v0[14];
  lazy protocol witness table accessor for type Errors and conformance Errors();
  v37 = swift_allocError();
  *v38 = xmmword_B9350;
  *(v38 + 16) = 3;
  (*(*v36 + 152))(v37);
LABEL_12:

  v42 = v0[1];

  v42();
}

uint64_t AnswerETAFlow.deinit()
{

  outlined consume of AnswerETAFlow.State(*(v0 + 32));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 40));

  return v0;
}

uint64_t AnswerETAFlow.__deallocating_deinit()
{

  outlined consume of AnswerETAFlow.State(*(v0 + 32));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 40));

  return swift_deallocClassInstance();
}

uint64_t protocol witness for FSMFlow.flowState.getter in conformance AnswerETAFlow@<X0>(uint64_t *a1@<X8>)
{
  result = (*(**v1 + 144))();
  *a1 = result;
  return result;
}

uint64_t protocol witness for FSMFlow.executeState() in conformance AnswerETAFlow(uint64_t a1)
{
  v6 = (*(**v1 + 304) + **(**v1 + 304));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return v6(a1);
}

uint64_t protocol witness for Flow.on(input:) in conformance AnswerETAFlow(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return FSMFlow.on(input:)(a1, a2, WitnessTable);
}

uint64_t protocol witness for Flow.onAsync(input:) in conformance AnswerETAFlow(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = protocol witness for IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:) in conformance TrafficIncidentHandleIntentStrategy;

  return Flow.onAsync(input:)(a1, a2, a3);
}

uint64_t protocol witness for Flow.execute(completion:) in conformance AnswerETAFlow(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return FSMFlow.execute(completion:)(a1, a2, a3, WitnessTable);
}

uint64_t protocol witness for Flow.execute() in conformance AnswerETAFlow(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  WitnessTable = swift_getWitnessTable();
  *v5 = v2;
  v5[1] = protocol witness for PromptForValueFlowStrategyAsync.makeFlowCancelledResponse() in conformance ShareETAPromptForContactStrategy;

  return FSMFlow.execute()(a1, a2, WitnessTable);
}

uint64_t protocol witness for Flow.exitValue.getter in conformance AnswerETAFlow(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AnswerETAFlow();

  return Flow<>.exitValue.getter(v3, a2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AnswerETAFlow(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return FSMFlow.description.getter(a1, WitnessTable);
}

uint64_t specialized AnswerETAFlow.init(with:checkNavigation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16[3] = a5;
  v16[4] = a6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v16);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_0, a1, a5);
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, OS_os_log_ptr);
  *(a4 + 16) = OS_os_log.init(subsystem:category:)();
  type metadata accessor for CATService();
  v12 = swift_allocObject();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v12 + 24) = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  *(v12 + 32) = OS_os_log.init(subsystem:category:)();
  *(v12 + 16) = 0;
  *(a4 + 80) = 0;
  *(a4 + 104) = 0;
  *(a4 + 24) = v12;
  *(a4 + 32) = 0;
  *(a4 + 88) = a2;
  *(a4 + 96) = a3;
  outlined init with copy of DeviceState(v16, a4 + 40);
  type metadata accessor for DialogDuration.Builder();
  swift_allocObject();
  *(a4 + 112) = DialogDuration.Builder.init()();
  v14 = static os_log_type_t.default.getter();
  os_log(_:dso:log:_:_:)(v14, &dword_0, *(a4 + 16), "AnswerETAFlow init with prechecks", 33, 2, &_swiftEmptyArrayStorage);
  __swift_destroy_boxed_opaque_existential_0Tm(v16);
  return a4;
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

uint64_t sub_25470()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 13);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 18);

  return _swift_deallocObject(v0, 192, 7);
}

uint64_t partial apply for closure #1 in TemplatingResult.getDialogAsSimpleOutputFlow(_:)(uint64_t a1)
{
  v4 = *(type metadata accessor for TemplatingResult() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return closure #1 in TemplatingResult.getDialogAsSimpleOutputFlow(_:)(a1, v1 + v5, v1 + v6);
}

uint64_t objectdestroy_9Tm()
{
  v1 = type metadata accessor for TemplatingResult();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + v5));

  return _swift_deallocObject(v0, v5 + 40, v3 | 7);
}

uint64_t closure #1 in TemplatingResult.getDialogAsSimpleOutputFlow(_:)partial apply(uint64_t a1)
{
  v4 = *(type metadata accessor for TemplatingResult() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = protocol witness for PromptForValueFlowStrategyAsync.makeFlowCancelledResponse() in conformance ShareETAPromptForContactStrategy;

  return closure #1 in TemplatingResult.getDialogAsSimpleOutputFlow(_:)(a1, v1 + v5, v1 + v6);
}

uint64_t instantiation function for generic protocol witness table for AnswerETAFlow(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type AnswerETAFlow and conformance AnswerETAFlow(&lazy protocol witness table cache variable for type AnswerETAFlow and conformance AnswerETAFlow, &protocol conformance descriptor for AnswerETAFlow);
  result = lazy protocol witness table accessor for type AnswerETAFlow and conformance AnswerETAFlow(&lazy protocol witness table cache variable for type AnswerETAFlow and conformance AnswerETAFlow, &protocol conformance descriptor for AnswerETAFlow);
  *(a1 + 16) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type AnswerETAFlow and conformance AnswerETAFlow(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AnswerETAFlow();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2584C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 144))();
  *a2 = result;
  return result;
}

uint64_t sub_25898(unint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 152);
  outlined copy of AnswerETAFlow.State(*a1);
  return v3(v2);
}

uint64_t sub_25994@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 192))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_25A2C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 216))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_25AC8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 240))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_25B60@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 264))();
  *a2 = result;
  return result;
}

uint64_t sub_25BB4(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 272);

  return v2(v3);
}

uint64_t get_enum_tag_for_layout_string_21GeoFlowDelegatePlugin13AnswerETAFlowC5StateO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for AnswerETAFlow.State(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 8))
  {
    return (*a1 + 2147483644);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AnswerETAFlow.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

uint64_t key path setter for SaveParkingLocationBaseFlow.flowState : SaveParkingLocationBaseFlow(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SaveParkingLocationBaseFlow.State(0);
  __chkstk_darwin();
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of SaveParkingLocationBaseFlow.State(a1, v5);
  return (*(**a2 + 120))(v5);
}

uint64_t SaveParkingLocationBaseFlow.flowState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC21GeoFlowDelegatePlugin27SaveParkingLocationBaseFlow_flowState;
  swift_beginAccess();
  return outlined init with copy of SaveParkingLocationBaseFlow.State(v1 + v3, a1);
}

uint64_t outlined init with copy of SaveParkingLocationBaseFlow.State(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SaveParkingLocationBaseFlow.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SaveParkingLocationBaseFlow.flowState.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21GeoFlowDelegatePlugin27SaveParkingLocationBaseFlow_flowState;
  swift_beginAccess();
  outlined assign with take of SaveParkingLocationBaseFlow.State(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t outlined assign with take of SaveParkingLocationBaseFlow.State(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SaveParkingLocationBaseFlow.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t SaveParkingLocationBaseFlow.flowHelper.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC21GeoFlowDelegatePlugin27SaveParkingLocationBaseFlow_flowHelper;
  swift_beginAccess();
  return outlined init with copy of DeviceState(v1 + v3, a1);
}

uint64_t SaveParkingLocationBaseFlow.flowHelper.setter(__int128 *a1)
{
  v3 = OBJC_IVAR____TtC21GeoFlowDelegatePlugin27SaveParkingLocationBaseFlow_flowHelper;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0Tm((v1 + v3));
  outlined init with take of CATType(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t SaveParkingLocationBaseFlow.isPOMMES.getter()
{
  v1 = OBJC_IVAR____TtC21GeoFlowDelegatePlugin27SaveParkingLocationBaseFlow_isPOMMES;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SaveParkingLocationBaseFlow.isPOMMES.setter(char a1)
{
  v3 = OBJC_IVAR____TtC21GeoFlowDelegatePlugin27SaveParkingLocationBaseFlow_isPOMMES;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t SaveParkingLocationBaseFlow.__allocating_init(flowHelper:intent:)(void *a1, uint64_t a2)
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  v8 = specialized SaveParkingLocationBaseFlow.__allocating_init(flowHelper:intent:)(v7, a2, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v8;
}

uint64_t SaveParkingLocationBaseFlow.init(flowHelper:intent:)(void *a1, uint64_t a2)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  __chkstk_darwin();
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8);
  v10 = specialized SaveParkingLocationBaseFlow.init(flowHelper:intent:)(v8, a2, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v10;
}

uint64_t SaveParkingLocationBaseFlow.exitValue.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for SaveParkingLocationBaseFlow.State(0);
  v3 = __chkstk_darwin();
  v5 = (&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(*v1 + 112))(v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    *a1 = *v5;
    *(a1 + 8) = 0;
    v9 = enum case for RCHFlowResult.error<A, B>(_:);
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13RCHFlowResultOySo27INSaveParkingLocationIntentCSo0fghI8ResponseCGMd, &_s11SiriKitFlow13RCHFlowResultOySo27INSaveParkingLocationIntentCSo0fghI8ResponseCGMR);
    return (*(*(v10 - 8) + 104))(a1, v9, v10);
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13RCHFlowResultOySo27INSaveParkingLocationIntentCSo0fghI8ResponseCGMd, &_s11SiriKitFlow13RCHFlowResultOySo27INSaveParkingLocationIntentCSo0fghI8ResponseCGMR);
    return (*(*(v7 - 8) + 32))(a1, v5, v7);
  }

  else
  {
    lazy protocol witness table accessor for type Errors and conformance Errors();
    v11 = swift_allocError();
    *v12 = 0;
    *(v12 + 8) = 0;
    *(v12 + 16) = 3;
    *a1 = v11;
    *(a1 + 8) = 0;
    v13 = enum case for RCHFlowResult.error<A, B>(_:);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13RCHFlowResultOySo27INSaveParkingLocationIntentCSo0fghI8ResponseCGMd, &_s11SiriKitFlow13RCHFlowResultOySo27INSaveParkingLocationIntentCSo0fghI8ResponseCGMR);
    (*(*(v14 - 8) + 104))(a1, v13, v14);
    return outlined destroy of SaveParkingLocationBaseFlow.State(v5);
  }
}

uint64_t SaveParkingLocationBaseFlow.onInput(input:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Input();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Parse();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  Input.parse.getter();
  v12 = (*(v9 + 88))(v11, v8);
  if (v12 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    (*(v9 + 96))(v11, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMd, "vp");

    v13 = v2[2];
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_0, v13, v14, "SaveParkingLocationBaseFlow onInput returns true for NLv3IntentPlusServerConversion.", v15, 2u);
    }

    v16 = type metadata accessor for NLIntent();
    (*(*(v16 - 8) + 8))(v11, v16);
    return 1;
  }

  else if (v12 == enum case for Parse.pommesResponse(_:))
  {
    (*(v9 + 8))(v11, v8);
    (*(*v2 + 168))(1);
    v18 = v2[2];
    v19 = static os_log_type_t.default.getter();
    v20 = os_log_type_enabled(v18, v19);
    result = 1;
    if (v20)
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_0, v18, v19, "SaveParkingLocationBaseFlow onInput returns true for Pommes response.", v21, 2u);

      return 1;
    }
  }

  else
  {
    v22 = v2[2];
    (*(v5 + 16))(v7, a1, v4);
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v32 = v22;
      v25 = v24;
      v31 = swift_slowAlloc();
      v33 = v31;
      *v25 = 136315138;
      v26 = Input.description.getter();
      v28 = v27;
      (*(v5 + 8))(v7, v4);
      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, &v33);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_0, v32, v23, "SiriGeo currently doesn't support parse type: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v31);
    }

    else
    {
      (*(v5 + 8))(v7, v4);
    }

    (*(v9 + 8))(v11, v8);
    return 0;
  }

  return result;
}

uint64_t SaveParkingLocationBaseFlow.executeState()(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13RCHFlowResultOySo27INSaveParkingLocationIntentCSo0fghI8ResponseCGMd, &_s11SiriKitFlow13RCHFlowResultOySo27INSaveParkingLocationIntentCSo0fghI8ResponseCGMR);
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = type metadata accessor for SaveParkingLocationBaseFlow.State(0);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();

  return _swift_task_switch(SaveParkingLocationBaseFlow.executeState(), 0, 0);
}

uint64_t SaveParkingLocationBaseFlow.executeState()()
{
  v53 = v0;
  (*(**(v0 + 32) + 112))();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = *(v0 + 96);
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v4 = *(v0 + 32);
      v5 = *v2;
      v6 = static os_log_type_t.error.getter();
      v7 = *(v4 + 16);
      if (os_log_type_enabled(v7, v6))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v52 = v9;
        *v8 = 136315138;
        *(v0 + 16) = v5;
        swift_errorRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
        v10 = String.init<A>(describing:)();
        v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v52);

        *(v8 + 4) = v12;
        _os_log_impl(&dword_0, v7, v6, "SaveParkingLocationBaseFlow execute requestUnsupported with error %s", v8, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v9);
      }

      static ExecuteResponse.complete()();
    }

    else
    {
      v15 = *(v0 + 64);
      v14 = *(v0 + 72);
      v16 = *(v0 + 40);
      v17 = *(v0 + 48);
      v18 = *(v0 + 32);
      (*(v17 + 32))(v14, v2, v16);
      v19 = static os_log_type_t.info.getter();
      v20 = *(v18 + 16);
      v21 = *(v17 + 16);
      v21(v15, v14, v16);
      v22 = os_log_type_enabled(v20, v19);
      v23 = *(v0 + 64);
      if (v22)
      {
        v50 = v19;
        v24 = *(v0 + 48);
        v25 = *(v0 + 56);
        v26 = *(v0 + 40);
        v27 = swift_slowAlloc();
        log = v20;
        v28 = swift_slowAlloc();
        v52 = v28;
        *v27 = 136315138;
        v21(v25, v23, v26);
        v29 = String.init<A>(describing:)();
        v31 = v30;
        v32 = *(v24 + 8);
        v32(v23, v26);
        v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v31, &v52);

        *(v27 + 4) = v33;
        _os_log_impl(&dword_0, log, v50, "SaveParkingLocationBaseFlow execute rchComplete with result %s", v27, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v28);
      }

      else
      {
        v32 = *(*(v0 + 48) + 8);
        v32(*(v0 + 64), *(v0 + 40));
      }

      v46 = *(v0 + 72);
      v47 = *(v0 + 40);
      static ExecuteResponse.complete()();
      v32(v46, v47);
    }

    goto LABEL_22;
  }

  if (EnumCaseMultiPayload)
  {
    v13 = *v2;
  }

  else
  {
    v3 = *v2;
    if ([objc_opt_self() isSiriLocationServicesPromptingEnabled])
    {
      SaveParkingLocationBaseFlow.pushGuardFlows(intent:)(v3);

LABEL_22:

      v48 = *(v0 + 8);

      return v48();
    }

    v34 = *(*(v0 + 32) + 16);
    v35 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_0, v34, v35, "SaveParkingLocationBaseFlow execute state fallthrough to handle.", v36, 2u);
    }

    v37 = *(v0 + 88);
    v38 = *(v0 + 32);
    *v37 = v3;
    swift_storeEnumTagMultiPayload();
    v39 = *(*v38 + 120);
    v13 = v3;
    v39(v37);
  }

  *(v0 + 104) = v13;
  v40 = *(*(v0 + 32) + 16);
  v41 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&dword_0, v40, v41, "SaveParkingLocationBaseFlow execute state handle.", v42, 2u);
  }

  v51 = (*(**(v0 + 32) + 216) + **(**(v0 + 32) + 216));
  v43 = swift_task_alloc();
  *(v0 + 112) = v43;
  *v43 = v0;
  v43[1] = SaveParkingLocationBaseFlow.executeState();
  v44 = *(v0 + 24);

  return v51(v44, v13);
}

{

  return _swift_task_switch(SaveParkingLocationBaseFlow.executeState(), 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t SaveParkingLocationBaseFlow.makeRCHFlow(intent:)(uint64_t a1, uint64_t a2)
{
  v3[26] = a2;
  v3[27] = v2;
  v3[25] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC14ProducersAsyncVySo27INSaveParkingLocationIntentCSo0ghiJ8ResponseCGMd, &_s11SiriKitFlow08RCHChildC14ProducersAsyncVySo27INSaveParkingLocationIntentCSo0ghiJ8ResponseCGMR);
  v3[28] = v4;
  v3[29] = *(v4 - 8);
  v3[30] = swift_task_alloc();

  return _swift_task_switch(SaveParkingLocationBaseFlow.makeRCHFlow(intent:), 0, 0);
}

uint64_t SaveParkingLocationBaseFlow.makeRCHFlow(intent:)(uint64_t a1)
{
  v2 = v1;
  v3 = *(v1 + 240);
  v5 = *(v1 + 216);
  v4 = *(v1 + 224);
  v25 = *(v1 + 208);
  v26 = *(v1 + 232);
  v6 = static os_log_type_t.info.getter();
  os_log(_:dso:log:_:_:)(v6, &dword_0, v5[2], "SaveParkingLocationBaseFlow makeRCHFlow", 39, 2, &_swiftEmptyArrayStorage);
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INSaveParkingLocationIntent, INSaveParkingLocationIntent_ptr);
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INSaveParkingLocationIntentResponse, INSaveParkingLocationIntentResponse_ptr);
  RCHChildFlowProducersAsync.init()();
  type metadata accessor for App();
  swift_allocObject();
  v24 = App.init(appIdentifier:systemExtensionBundleId:systemUIExtensionBundleId:pluginIdentifier:)();
  static RCHChildFlowFactoryHelper.makeAppResolutionFlowProducer<A, B>(app:)();
  v7 = RCHChildFlowProducersAsync.appResolutionFlowProducer.setter();
  v8 = *(*v5 + 136);
  (v8)(v7);
  type metadata accessor for SaveParkingLocationUnsupportedValueStrategy();
  v9 = swift_allocObject();
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, OS_os_log_ptr);
  *(v9 + 16) = OS_os_log.init(subsystem:category:)();
  outlined init with take of CATType((v1 + 16), v9 + 24);
  *(v1 + 176) = v9;
  lazy protocol witness table accessor for type SaveParkingLocationUnsupportedValueStrategy and conformance SaveParkingLocationUnsupportedValueStrategy(&lazy protocol witness table cache variable for type SaveParkingLocationUnsupportedValueStrategy and conformance SaveParkingLocationUnsupportedValueStrategy, type metadata accessor for SaveParkingLocationUnsupportedValueStrategy, &protocol conformance descriptor for SaveParkingLocationUnsupportedValueStrategy);
  static RCHChildFlowFactoryHelper.makeUnsupportedValueAndCancelFlowProducer<A>(strategy:)();

  v23 = v4;
  v10 = v3;
  v11 = RCHChildFlowProducersAsync.unsupportedValueFlowProducer.setter();
  (v8)(v11);
  type metadata accessor for SaveParkingHandleIntentStrategy();
  v12 = swift_allocObject();
  *(v12 + 16) = OS_os_log.init(subsystem:category:)();
  outlined init with take of CATType((v1 + 56), v12 + 24);
  *(v12 + 64) = 0;
  *(v1 + 184) = v12;
  lazy protocol witness table accessor for type SaveParkingLocationUnsupportedValueStrategy and conformance SaveParkingLocationUnsupportedValueStrategy(&lazy protocol witness table cache variable for type SaveParkingHandleIntentStrategy and conformance SaveParkingHandleIntentStrategy, type metadata accessor for SaveParkingHandleIntentStrategy, &protocol conformance descriptor for SaveParkingHandleIntentStrategy);
  static RCHChildFlowFactoryHelper.makeHandleIntentFlowProducer<A>(strategy:)();

  RCHChildFlowProducersAsync.handleIntentFlowProducer.setter();
  v13 = type metadata accessor for SaveParkingBaseRCHStrategy();
  v14 = swift_allocObject();
  *(v14 + 16) = OS_os_log.init(subsystem:category:)();
  v8();
  v16 = *(v1 + 120);
  v15 = *(v1 + 128);
  __swift_project_boxed_opaque_existential_1(v2 + 12, v2[15]);
  (*(v15 + 56))(v16, v15);
  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 96));
  v17 = *(v1 + 160);
  v18 = *(v1 + 168);
  __swift_project_boxed_opaque_existential_1(v2 + 17, v2[20]);
  *(v1 + 192) = v14;
  v19 = *(v18 + 8);
  v20 = lazy protocol witness table accessor for type SaveParkingLocationUnsupportedValueStrategy and conformance SaveParkingLocationUnsupportedValueStrategy(&lazy protocol witness table cache variable for type SaveParkingBaseRCHStrategy and conformance SaveParkingBaseRCHStrategy, type metadata accessor for SaveParkingBaseRCHStrategy, &protocol conformance descriptor for SaveParkingBaseRCHStrategy);
  v19(v1 + 192, v10, v24, v25, v13, v20, v17, v18);

  static ExecuteResponse.ongoing<A>(next:childCompletion:)();

  (*(v26 + 8))(v10, v23);
  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 136));

  v21 = *(v1 + 8);

  return v21();
}

uint64_t closure #1 in SaveParkingLocationBaseFlow.makeRCHFlow(intent:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SaveParkingLocationBaseFlow.State(0);
  __chkstk_darwin();
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13RCHFlowResultOySo27INSaveParkingLocationIntentCSo0fghI8ResponseCGMd, &_s11SiriKitFlow13RCHFlowResultOySo27INSaveParkingLocationIntentCSo0fghI8ResponseCGMR);
  (*(*(v6 - 8) + 16))(v5, a1, v6);
  swift_storeEnumTagMultiPayload();
  return (*(*a2 + 120))(v5);
}

uint64_t SaveParkingLocationBaseFlow.pushGuardFlows(intent:)(void *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11SiriKitFlow06CommonF5GuardVGMd, &_ss23_ContiguousArrayStorageCy11SiriKitFlow06CommonF5GuardVGMR);
  type metadata accessor for CommonFlowGuard();
  *(swift_allocObject() + 16) = xmmword_B89E0;
  static CommonFlowGuard.ensuringSiriLocationAccess(needsPreciseLocation:)();
  static CommonGuardFlowUtils.makeGuardFlow(withGuards:)();

  v4 = static os_log_type_t.info.getter();
  os_log(_:dso:log:_:_:)(v4, &dword_0, *(v2 + 16), "location prompting enabled, making guard flow", 45, 2, &_swiftEmptyArrayStorage);
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = a1;
  type metadata accessor for GuardFlow();

  v6 = a1;
  static ExecuteResponse.ongoing<A>(next:childCompletion:)();
}

uint64_t closure #1 in SaveParkingLocationBaseFlow.pushGuardFlows(intent:)(_BYTE *a1, void *a2, void *a3)
{
  type metadata accessor for SaveParkingLocationBaseFlow.State(0);
  __chkstk_darwin();
  v7 = (&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*a1 == 1)
  {
    lazy protocol witness table accessor for type Errors and conformance Errors();
    v8 = swift_allocError();
    *v9 = 0xD000000000000022;
    *(v9 + 8) = 0x80000000000C0BE0;
    *(v9 + 16) = 0;
    *v7 = v8;
    swift_storeEnumTagMultiPayload();
    return (*(*a2 + 120))(v7);
  }

  else
  {
    v11 = a2[2];
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_0, v11, v12, "permitted to use location", v13, 2u);
    }

    *v7 = a3;
    swift_storeEnumTagMultiPayload();
    v14 = *(*a2 + 120);
    v15 = a3;
    return v14(v7);
  }
}

uint64_t SaveParkingLocationBaseFlow.deinit()
{
  outlined destroy of SaveParkingLocationBaseFlow.State(v0 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin27SaveParkingLocationBaseFlow_flowState);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin27SaveParkingLocationBaseFlow_flowHelper));
  return v0;
}

uint64_t SaveParkingLocationBaseFlow.__deallocating_deinit()
{
  outlined destroy of SaveParkingLocationBaseFlow.State(v0 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin27SaveParkingLocationBaseFlow_flowState);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin27SaveParkingLocationBaseFlow_flowHelper));

  return swift_deallocClassInstance();
}

uint64_t protocol witness for FSMFlow.executeState() in conformance SaveParkingLocationBaseFlow(uint64_t a1)
{
  v6 = (*(**v1 + 208) + **(**v1 + 208));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return v6(a1);
}

uint64_t protocol witness for Flow.on(input:) in conformance SaveParkingLocationBaseFlow(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return FSMFlow.on(input:)(a1, a2, WitnessTable);
}

uint64_t protocol witness for Flow.execute(completion:) in conformance SaveParkingLocationBaseFlow(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return FSMFlow.execute(completion:)(a1, a2, a3, WitnessTable);
}

uint64_t protocol witness for Flow.execute() in conformance SaveParkingLocationBaseFlow(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  WitnessTable = swift_getWitnessTable();
  *v5 = v2;
  v5[1] = protocol witness for PromptForValueFlowStrategyAsync.makeFlowCancelledResponse() in conformance ShareETAPromptForContactStrategy;

  return FSMFlow.execute()(a1, a2, WitnessTable);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SaveParkingLocationBaseFlow(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return FSMFlow.description.getter(a1, WitnessTable);
}

uint64_t specialized SaveParkingLocationBaseFlow.init(flowHelper:intent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = a4;
  v13 = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v11);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_0, a1, a4);
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, OS_os_log_ptr);
  *(a3 + 16) = OS_os_log.init(subsystem:category:)();
  *(a3 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin27SaveParkingLocationBaseFlow_isPOMMES) = 0;
  outlined init with take of CATType(&v11, a3 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin27SaveParkingLocationBaseFlow_flowHelper);
  *(a3 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin27SaveParkingLocationBaseFlow_flowState) = a2;
  type metadata accessor for SaveParkingLocationBaseFlow.State(0);
  swift_storeEnumTagMultiPayload();
  return a3;
}

uint64_t specialized SaveParkingLocationBaseFlow.__allocating_init(flowHelper:intent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  __chkstk_darwin();
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SaveParkingLocationBaseFlow(0);
  v12 = swift_allocObject();
  (*(v9 + 16))(v11, a1, a4);
  return specialized SaveParkingLocationBaseFlow.init(flowHelper:intent:)(v11, a2, v12, a4, a5);
}

uint64_t outlined destroy of SaveParkingLocationBaseFlow.State(uint64_t a1)
{
  v2 = type metadata accessor for SaveParkingLocationBaseFlow.State(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t lazy protocol witness table accessor for type SaveParkingLocationUnsupportedValueStrategy and conformance SaveParkingLocationUnsupportedValueStrategy(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t instantiation function for generic protocol witness table for SaveParkingLocationBaseFlow(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type SaveParkingLocationUnsupportedValueStrategy and conformance SaveParkingLocationUnsupportedValueStrategy(&lazy protocol witness table cache variable for type SaveParkingLocationBaseFlow and conformance SaveParkingLocationBaseFlow, type metadata accessor for SaveParkingLocationBaseFlow, &protocol conformance descriptor for SaveParkingLocationBaseFlow);
  result = lazy protocol witness table accessor for type SaveParkingLocationUnsupportedValueStrategy and conformance SaveParkingLocationUnsupportedValueStrategy(&lazy protocol witness table cache variable for type SaveParkingLocationBaseFlow and conformance SaveParkingLocationBaseFlow, type metadata accessor for SaveParkingLocationBaseFlow, &protocol conformance descriptor for SaveParkingLocationBaseFlow);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2855C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 160))();
  *a2 = result & 1;
  return result;
}

uint64_t type metadata completion function for SaveParkingLocationBaseFlow(uint64_t a1)
{
  result = type metadata accessor for SaveParkingLocationBaseFlow.State(319);
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

void type metadata completion function for SaveParkingLocationBaseFlow.State(uint64_t a1)
{
  type metadata accessor for OS_os_log(319, &lazy cache variable for type metadata for INSaveParkingLocationIntent, INSaveParkingLocationIntent_ptr);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Error();
    if (v2 <= 0x3F)
    {
      type metadata accessor for RCHFlowResult<INSaveParkingLocationIntent, INSaveParkingLocationIntentResponse>(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

unint64_t type metadata accessor for Error()
{
  result = lazy cache variable for type metadata for Error;
  if (!lazy cache variable for type metadata for Error)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for Error);
  }

  return result;
}

void type metadata accessor for RCHFlowResult<INSaveParkingLocationIntent, INSaveParkingLocationIntentResponse>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for RCHFlowResult<INSaveParkingLocationIntent, INSaveParkingLocationIntentResponse>)
  {
    type metadata accessor for OS_os_log(255, &lazy cache variable for type metadata for INSaveParkingLocationIntent, INSaveParkingLocationIntent_ptr);
    type metadata accessor for OS_os_log(255, &lazy cache variable for type metadata for INSaveParkingLocationIntentResponse, INSaveParkingLocationIntentResponse_ptr);
    v1 = type metadata accessor for RCHFlowResult();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for RCHFlowResult<INSaveParkingLocationIntent, INSaveParkingLocationIntentResponse>);
    }
  }
}

uint64_t sub_28834()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t CATService.Mode.options.getter(char a1)
{
  if (a1)
  {
    if (a1 == 1)
    {

      return static CATOption.debugMode.getter();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy16SiriDialogEngine9CATOptionVGMd, &_ss23_ContiguousArrayStorageCy16SiriDialogEngine9CATOptionVGMR);
      type metadata accessor for CATOption();
      *(swift_allocObject() + 16) = xmmword_B7D80;
      static CATOption.testMode.getter();
      static CATOption.resetState.getter();
      lazy protocol witness table accessor for type CATOption and conformance CATOption();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay16SiriDialogEngine9CATOptionVGMd, &_sSay16SiriDialogEngine9CATOptionVGMR);
      lazy protocol witness table accessor for type [CATOption] and conformance [A]();
      return dispatch thunk of SetAlgebra.init<A>(_:)();
    }
  }

  else
  {

    return static CATOption.defaultMode.getter();
  }
}

unint64_t lazy protocol witness table accessor for type CATOption and conformance CATOption()
{
  result = lazy protocol witness table cache variable for type CATOption and conformance CATOption;
  if (!lazy protocol witness table cache variable for type CATOption and conformance CATOption)
  {
    type metadata accessor for CATOption();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CATOption and conformance CATOption);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [CATOption] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [CATOption] and conformance [A];
  if (!lazy protocol witness table cache variable for type [CATOption] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay16SiriDialogEngine9CATOptionVGMd, &_sSay16SiriDialogEngine9CATOptionVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [CATOption] and conformance [A]);
  }

  return result;
}

uint64_t CATService.__allocating_init(withMode:)(char a1)
{
  v2 = swift_allocObject();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v2 + 24) = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  type metadata accessor for OS_os_log();
  *(v2 + 32) = OS_os_log.init(subsystem:category:)();
  *(v2 + 16) = a1;
  return v2;
}

uint64_t CATService.init(withMode:)(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  type metadata accessor for CATService();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v2 + 24) = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  type metadata accessor for OS_os_log();
  *(v2 + 32) = OS_os_log.init(subsystem:category:)();
  *(v2 + 16) = v3;
  return v2;
}

uint64_t CATService.execute(model:globals:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[19] = a3;
  v4[20] = v3;
  v4[17] = a1;
  v4[18] = a2;
  v4[21] = type metadata accessor for BehaviorAfterSpeaking();
  v4[22] = swift_task_alloc();

  return _swift_task_switch(CATService.execute(model:globals:), 0, 0);
}

uint64_t CATService.execute(model:globals:)()
{
  v32 = v0;
  v1 = v0[20];
  v2 = v0[18];
  v3 = static os_log_type_t.debug.getter();
  v4 = *(v1 + 32);
  outlined init with copy of DeviceState(v2, (v0 + 2));
  outlined init with copy of DeviceState(v2, (v0 + 7));
  outlined init with copy of DeviceState(v2, (v0 + 12));
  if (os_log_type_enabled(v4, v3))
  {
    v5 = v0[22];
    v6 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v6 = 136315650;
    v7 = v0[5];
    v8 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v7);
    v9 = (*(v8 + 8))(v7, v8);
    v11 = v10;
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, &v31);

    *(v6 + 4) = v12;
    *(v6 + 12) = 2080;
    v13 = v0[10];
    v14 = v0[11];
    __swift_project_boxed_opaque_existential_1(v0 + 7, v13);
    (*(v14 + 16))(v13, v14);
    v15 = Dictionary.description.getter();
    v17 = v16;

    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, &v31);

    *(v6 + 14) = v18;
    *(v6 + 22) = 2080;
    v19 = v0[15];
    __swift_project_boxed_opaque_existential_1(v0 + 12, v19);
    GeoCATModel.getBehaviorAfterSpeaking()(v19, v5);
    v20 = String.init<A>(describing:)();
    v22 = v21;
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 12);
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, &v31);

    *(v6 + 24) = v23;
    _os_log_impl(&dword_0, v4, v3, "catId %s\nwith parameters %s\nbehaviourAfterSpeaking %s", v6, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 12);
  }

  v24 = v0[20];
  v25 = swift_task_alloc();
  v0[23] = v25;
  v26 = *(v0 + 9);
  *(v25 + 16) = v24;
  *(v25 + 24) = v26;
  v27 = swift_task_alloc();
  v0[24] = v27;
  v28 = type metadata accessor for TemplatingResult();
  *v27 = v0;
  v27[1] = CATService.execute(model:globals:);
  v29 = v0[17];

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v29, 0, 0, 0xD000000000000017, 0x80000000000C0C10, partial apply for closure #1 in CATService.execute(model:globals:), v25, v28);
}

{
  v2 = *v1;
  *(v2 + 200) = v0;

  if (v0)
  {

    return _swift_task_switch(CATService.execute(model:globals:), 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in CATService.execute(model:globals:)(char *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v59 = a4;
  v74 = a2;
  v71 = a1;
  v72 = type metadata accessor for CATOption();
  v67 = *(v72 - 8);
  __chkstk_darwin();
  v66 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy11SiriKitFlow16TemplatingResultVs5Error_pGMd, &_sScCy11SiriKitFlow16TemplatingResultVs5Error_pGMR);
  v6 = *(v68 - 1);
  __chkstk_darwin();
  v8 = &v58 - v7;
  v9 = type metadata accessor for BehaviorAfterSpeaking();
  v73 = *(v9 - 8);
  __chkstk_darwin();
  v61 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v58 - v11;
  v64 = v13;
  __chkstk_darwin();
  v15 = &v58 - v14;
  v17 = a3[3];
  v16 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v17);
  v69 = (*(v16 + 8))(v17, v16);
  v70 = v18;
  v19 = a3[3];
  v20 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v19);
  v21 = (*(v20 + 16))(v19, v20);
  v22 = a3[3];
  __swift_project_boxed_opaque_existential_1(a3, v22);
  v23 = v22;
  v24 = v9;
  GeoCATModel.getBehaviorAfterSpeaking()(v23, v15);
  v25 = v68;
  (*(v6 + 16))(v8, v71, v68);
  v26 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v27 = swift_allocObject();
  v28 = *(v6 + 32);
  v63 = v27;
  v28(v27 + v26, v8, v25);
  v29 = static os_log_type_t.info.getter();
  v30 = *(v74 + 32);
  v32 = v73 + 16;
  v31 = *(v73 + 16);
  v33 = v12;
  v71 = v15;
  v68 = v31;
  (v31)(v12, v15, v9);
  v34 = os_log_type_enabled(v30, v29);
  v65 = v21;
  v60 = v32;
  if (v34)
  {
    v35 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    *&v76 = v58;
    *v35 = 136315650;
    *(v35 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v69, v70, &v76);
    *(v35 + 12) = 2080;
    v36 = Dictionary.description.getter();
    v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, &v76);

    *(v35 + 14) = v38;
    *(v35 + 22) = 2080;
    v24 = v9;
    v39 = v73;
    v40 = v61;
    (v68)(v61, v33, v9);
    v41 = String.init<A>(describing:)();
    v43 = v42;
    v62 = *(v39 + 8);
    v62(v33, v9);
    v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v43, &v76);

    *(v35 + 24) = v44;
    _os_log_impl(&dword_0, v30, v29, "catId %s\nwith parameters %s\nbehaviourAfterSpeaking %s", v35, 0x20u);
    swift_arrayDestroy();

    v45 = v40;
  }

  else
  {
    v62 = *(v73 + 8);
    v62(v12, v9);
    v45 = v61;
  }

  v61 = *(v74 + 24);
  v46 = *(v74 + 16);
  v47 = v66;
  v48 = v67;
  if (v46 == 2)
  {
    type metadata accessor for CATGlobals.Builder();
    CATGlobals.Builder.__allocating_init(siriLocale:)();
    dispatch thunk of CATGlobals.Builder.withRandomSeed(_:)();

    v59 = dispatch thunk of CATGlobals.Builder.build()();

    v78 = 0;
    v76 = 0u;
    v77 = 0u;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy16SiriDialogEngine9CATOptionVGMd, &_ss23_ContiguousArrayStorageCy16SiriDialogEngine9CATOptionVGMR);
    v49 = v48;
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_B7D80;
    static CATOption.testMode.getter();
    static CATOption.resetState.getter();
    v75 = v50;
    lazy protocol witness table accessor for type CATOption and conformance CATOption();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay16SiriDialogEngine9CATOptionVGMd, &_sSay16SiriDialogEngine9CATOptionVGMR);
    lazy protocol witness table accessor for type [CATOption] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
  }

  else
  {
    type metadata accessor for CATGlobals();

    v51 = CATGlobals.__allocating_init(dictionary:)();
    v78 = 0;
    v76 = 0u;
    v77 = 0u;
    v59 = v51;
    if (v46)
    {
      static CATOption.debugMode.getter();
    }

    else
    {
      static CATOption.defaultMode.getter();
    }

    v49 = v48;
  }

  type metadata accessor for CATExecutor();
  (v68)(v45, v71, v24);
  v52 = v73;
  v53 = v24;
  v54 = (*(v73 + 80) + 40) & ~*(v73 + 80);
  v55 = swift_allocObject();
  *(v55 + 2) = v74;
  *(v55 + 3) = partial apply for closure #1 in closure #1 in CATService.execute(model:globals:);
  *(v55 + 4) = v63;
  (*(v52 + 32))(&v55[v54], v45, v53);

  v56 = v59;
  static CATExecutor.execute(bundle:catId:parameters:globals:callback:options:_:)();

  (*(v49 + 8))(v47, v72);
  outlined destroy of Mirror.DisplayStyle?(&v76, &_s16SiriDialogEngine11CatCallable_pSgMd, &_s16SiriDialogEngine11CatCallable_pSgMR);

  return (v62)(v71, v53);
}

uint64_t closure #1 in closure #1 in CATService.execute(model:globals:)(uint64_t a1)
{
  v2 = type metadata accessor for TemplatingResult();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = v11 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  __chkstk_darwin();
  v9 = (v11 - v8);
  outlined init with copy of Result<TemplatingResult, Error>(a1, v11 - v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11[1] = *v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy11SiriKitFlow16TemplatingResultVs5Error_pGMd, &_sScCy11SiriKitFlow16TemplatingResultVs5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    (*(v3 + 32))(v7, v9, v2);
    (*(v3 + 16))(v5, v7, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy11SiriKitFlow16TemplatingResultVs5Error_pGMd, &_sScCy11SiriKitFlow16TemplatingResultVs5Error_pGMR);
    CheckedContinuation.resume(returning:)();
    return (*(v3 + 8))(v7, v2);
  }
}

uint64_t CATService.execute(model:globals:_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v86 = a4;
  v85 = a3;
  v79 = a2;
  v6 = type metadata accessor for CATOption();
  v88 = *(v6 - 8);
  __chkstk_darwin();
  v8 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for BehaviorAfterSpeaking();
  v93 = *(v9 - 8);
  __chkstk_darwin();
  v81 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v92 = &v77 - v11;
  v84 = v12;
  __chkstk_darwin();
  v14 = &v77 - v13;
  v15 = static os_log_type_t.debug.getter();
  v91 = v4;
  v16 = *(v4 + 32);
  outlined init with copy of DeviceState(a1, &v100);
  outlined init with copy of DeviceState(a1, v97);
  outlined init with copy of DeviceState(a1, v95);
  v17 = os_log_type_enabled(v16, v15);
  v89 = v6;
  v90 = v14;
  v87 = v8;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v94 = swift_slowAlloc();
    *v18 = 136315650;
    v19 = *(&v101 + 1);
    v20 = v102;
    __swift_project_boxed_opaque_existential_1(&v100, *(&v101 + 1));
    v21 = (*(v20 + 8))(v19, v20);
    v23 = v22;
    __swift_destroy_boxed_opaque_existential_0Tm(&v100);
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, &v94);

    *(v18 + 4) = v24;
    *(v18 + 12) = 2080;
    v25 = v98;
    v26 = v99;
    __swift_project_boxed_opaque_existential_1(v97, v98);
    (*(v26 + 16))(v25, v26);
    v27 = Dictionary.description.getter();
    v29 = v28;

    __swift_destroy_boxed_opaque_existential_0Tm(v97);
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, &v94);
    v31 = v90;

    *(v18 + 14) = v30;
    *(v18 + 22) = 2080;
    v32 = v96;
    __swift_project_boxed_opaque_existential_1(v95, v96);
    GeoCATModel.getBehaviorAfterSpeaking()(v32, v31);
    v33 = String.init<A>(describing:)();
    v35 = v34;
    __swift_destroy_boxed_opaque_existential_0Tm(v95);
    v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v35, &v94);

    *(v18 + 24) = v36;
    _os_log_impl(&dword_0, v16, v15, "catId %s\nwith parameters %s\nbehaviourAfterSpeaking %s", v18, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm(&v100);
    __swift_destroy_boxed_opaque_existential_0Tm(v97);
    __swift_destroy_boxed_opaque_existential_0Tm(v95);
  }

  v37 = v9;
  v38 = a1[3];
  v39 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v38);
  v40 = (*(v39 + 8))(v38, v39);
  v42 = v41;
  v43 = a1[3];
  v44 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v43);
  v45 = (*(v44 + 16))(v43, v44);
  v46 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v46);
  v47 = v92;
  GeoCATModel.getBehaviorAfterSpeaking()(v46, v92);
  v48 = static os_log_type_t.info.getter();
  v49 = *(v93 + 16);
  v50 = v81;
  v49(v81, v47, v37);
  LODWORD(v78) = v48;
  v51 = os_log_type_enabled(v16, v48);
  v83 = v42;
  v82 = v45;
  v80 = v40;
  if (v51)
  {
    v52 = swift_slowAlloc();
    v77 = v16;
    v53 = v50;
    v54 = v52;
    *&v100 = swift_slowAlloc();
    *v54 = 136315650;
    *(v54 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v42, &v100);
    *(v54 + 12) = 2080;
    v55 = Dictionary.description.getter();
    v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v56, &v100);

    *(v54 + 14) = v57;
    *(v54 + 22) = 2080;
    v49(v90, v53, v37);
    v58 = String.init<A>(describing:)();
    v60 = v59;
    v81 = *(v93 + 8);
    (v81)(v53, v37);
    v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v60, &v100);

    *(v54 + 24) = v61;
    _os_log_impl(&dword_0, v77, v78, "catId %s\nwith parameters %s\nbehaviourAfterSpeaking %s", v54, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v81 = *(v93 + 8);
    (v81)(v50, v37);
  }

  v62 = v88;
  v63 = v49;
  v88 = *(v91 + 24);
  v64 = *(v91 + 16);
  if (v64 == 2)
  {
    v65 = v37;
    type metadata accessor for CATGlobals.Builder();
    CATGlobals.Builder.__allocating_init(siriLocale:)();
    dispatch thunk of CATGlobals.Builder.withRandomSeed(_:)();

    v79 = dispatch thunk of CATGlobals.Builder.build()();

    v102 = 0;
    v100 = 0u;
    v101 = 0u;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy16SiriDialogEngine9CATOptionVGMd, &_ss23_ContiguousArrayStorageCy16SiriDialogEngine9CATOptionVGMR);
    v66 = swift_allocObject();
    *(v66 + 16) = xmmword_B7D80;
    static CATOption.testMode.getter();
    static CATOption.resetState.getter();
    v97[0] = v66;
    lazy protocol witness table accessor for type CATOption and conformance CATOption();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay16SiriDialogEngine9CATOptionVGMd, &_sSay16SiriDialogEngine9CATOptionVGMR);
    lazy protocol witness table accessor for type [CATOption] and conformance [A]();
    v67 = v87;
    v68 = v89;
    dispatch thunk of SetAlgebra.init<A>(_:)();
  }

  else
  {
    type metadata accessor for CATGlobals();

    v69 = CATGlobals.__allocating_init(dictionary:)();
    v102 = 0;
    v100 = 0u;
    v101 = 0u;
    v79 = v69;
    v65 = v37;
    v67 = v87;
    if (v64)
    {
      static CATOption.debugMode.getter();
    }

    else
    {
      static CATOption.defaultMode.getter();
    }

    v68 = v89;
  }

  v78 = type metadata accessor for CATExecutor();
  v70 = v90;
  v63(v90, v92, v65);
  v71 = v93;
  v72 = (*(v93 + 80) + 40) & ~*(v93 + 80);
  v73 = swift_allocObject();
  v74 = v85;
  *(v73 + 2) = v91;
  *(v73 + 3) = v74;
  *(v73 + 4) = v86;
  (*(v71 + 32))(&v73[v72], v70, v65);

  v75 = v79;
  static CATExecutor.execute(bundle:catId:parameters:globals:callback:options:_:)();

  (*(v62 + 8))(v67, v68);
  outlined destroy of Mirror.DisplayStyle?(&v100, &_s16SiriDialogEngine11CatCallable_pSgMd, &_s16SiriDialogEngine11CatCallable_pSgMR);

  return (v81)(v92, v65);
}

uint64_t closure #1 in CATService.execute(catId:parameters:globals:behaviorAfterSpeaking:_:)(uint64_t a1, uint64_t a2, void (*a3)(void *), uint64_t a4, uint64_t a5)
{
  v25 = a3;
  v7 = type metadata accessor for TemplatingResult();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  __chkstk_darwin();
  v12 = (&v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v14 = (&v24 - v13);
  outlined init with copy of Result<TemplatingResult, Error>(a1, &v24 - v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = *v14;
    v16 = static os_log_type_t.error.getter();
    v17 = *(a2 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_B89E0;
    swift_getErrorValue();
    v19 = Error.localizedDescription.getter();
    v21 = v20;
    *(v18 + 56) = &type metadata for String;
    *(v18 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v18 + 32) = v19;
    *(v18 + 40) = v21;
    os_log(_:dso:log:_:_:)(v16, &dword_0, v17, "CAT execute failed with %@", 26, 2, v18);

    *v12 = v15;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v25(v12);

    return outlined destroy of Mirror.DisplayStyle?(v12, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  }

  else
  {
    (*(v8 + 32))(v10, v14, v7);
    v23 = static os_log_type_t.info.getter();
    os_log(_:dso:log:_:_:)(v23, &dword_0, *(a2 + 32), "CAT executed successfully", 25, 2, &_swiftEmptyArrayStorage);
    TemplatingResult.withBehaviorAfterSpeaking(_:)();
    swift_storeEnumTagMultiPayload();
    v25(v12);
    outlined destroy of Mirror.DisplayStyle?(v12, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
    return (*(v8 + 8))(v10, v7);
  }
}

uint64_t CATService.getLabel(model:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v2);
  v4 = (*(v3 + 8))(v2, v3);
  v6 = v5;
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  v9 = (*(v8 + 16))(v7, v8);
  v10 = CATService.getLabel(catId:params:)(v4, v6, v9);

  return v10;
}

uint64_t CATService.getLabel(catId:params:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v34 = a2;
  v35 = a3;
  v33 = a1;
  v4 = type metadata accessor for TemplatingResult();
  v31 = *(v4 - 8);
  v32 = v4;
  __chkstk_darwin();
  v30 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CATOption();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  __chkstk_darwin();
  v11 = (&v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v13 = &v28 - v12;
  type metadata accessor for CATExecutor();
  v29 = v3;
  type metadata accessor for CATGlobals();
  memset(v36, 0, sizeof(v36));
  v37 = 0;
  v14 = CATGlobals.__allocating_init()();
  static CATOption.defaultMode.getter();
  static CATExecutor.execute(bundle:catId:parameters:globals:callback:options:)();

  (*(v7 + 8))(v9, v6);
  outlined destroy of Mirror.DisplayStyle?(v36, &_s16SiriDialogEngine11CatCallable_pSgMd, &_s16SiriDialogEngine11CatCallable_pSgMR);
  outlined init with copy of Result<TemplatingResult, Error>(v13, v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = *v11;
    v16 = static os_log_type_t.error.getter();
    v17 = *(v29 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_B89E0;
    swift_getErrorValue();
    v19 = Error.localizedDescription.getter();
    v21 = v20;
    *(v18 + 56) = &type metadata for String;
    *(v18 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v18 + 32) = v19;
    *(v18 + 40) = v21;
    os_log(_:dso:log:_:_:)(v16, &dword_0, v17, "Error while executing dialog %@:", 32, 2, v18);

LABEL_6:
    outlined destroy of Mirror.DisplayStyle?(v13, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
    return v15;
  }

  v23 = v30;
  v22 = v31;
  v24 = v32;
  (*(v31 + 32))(v30, v11, v32);
  v25 = TemplatingResult.print.getter();
  if (!*(v25 + 16))
  {

    lazy protocol witness table accessor for type Errors and conformance Errors();
    v15 = swift_allocError();
    *v26 = 0xD000000000000014;
    *(v26 + 8) = 0x80000000000C0CD0;
    *(v26 + 16) = 0;
    (*(v22 + 8))(v23, v24);
    goto LABEL_6;
  }

  v15 = *(v25 + 32);

  (*(v22 + 8))(v23, v24);
  outlined destroy of Mirror.DisplayStyle?(v13, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  return v15;
}

uint64_t CATService.executeRF(model:globals:)(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  return _swift_task_switch(CATService.executeRF(model:globals:), 0, 0);
}

uint64_t CATService.executeRF(model:globals:)()
{
  v1 = v0[21];
  v2 = v0[19];
  type metadata accessor for CATGlobals();

  v3 = CATGlobals.__allocating_init(dictionary:)();
  dispatch thunk of CATGlobals.toDictionary.getter();

  v14 = objc_opt_self();
  v15 = *(v1 + 24);
  v4 = v2[3];
  v5 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v4);
  (*(v5 + 8))(v4, v5);
  v6 = String._bridgeToObjectiveC()();
  v0[22] = v6;

  v8 = v2[3];
  v7 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v8);
  v9 = (*(v7 + 16))(v8, v7);
  specialized _dictionaryUpCast<A, B, C, D>(_:)(v9);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v0[23] = isa;

  v11 = Dictionary._bridgeToObjectiveC()().super.isa;
  v0[24] = v11;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = CATService.executeRF(model:globals:);
  v12 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo21DialogExecutionResultCs5Error_pGMd, &_sSccySo21DialogExecutionResultCs5Error_pGMR);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned DialogExecutionResult, @unowned NSError?) -> () with result type DialogExecutionResult;
  v0[13] = &block_descriptor;
  v0[14] = v12;
  [v14 execute:v15 catId:v6 parameters:isa globals:v11 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

{
  v1 = *(*v0 + 48);
  *(*v0 + 200) = v1;
  if (v1)
  {
    v2 = CATService.executeRF(model:globals:);
  }

  else
  {
    v2 = CATService.executeRF(model:globals:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v1 = *(v0 + 184);
  v2 = *(v0 + 176);
  v3 = *(v0 + 144);

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t CATService.executeRF(model:globals:)(uint64_t a1)
{
  v2 = v1[24];
  v4 = v1[22];
  v3 = v1[23];
  swift_willThrow();

  v5 = v1[1];

  return v5();
}

uint64_t specialized _dictionaryUpCast<A, B, C, D>(_:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd, &_ss18_DictionaryStorageCys11AnyHashableVypGMR);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    outlined init with copy of Any(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    outlined init with take of Any(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    outlined init with take of Any(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    outlined init with take of Any(v31, v32);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = outlined init with take of Any(v32, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned DialogExecutionResult, @unowned NSError?) -> () with result type DialogExecutionResult(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;
    v9 = a2;

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t CATService.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t lazy protocol witness table accessor for type CATService.Mode and conformance CATService.Mode()
{
  result = lazy protocol witness table cache variable for type CATService.Mode and conformance CATService.Mode;
  if (!lazy protocol witness table cache variable for type CATService.Mode and conformance CATService.Mode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CATService.Mode and conformance CATService.Mode);
  }

  return result;
}

uint64_t outlined init with copy of Result<TemplatingResult, Error>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2B718()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy11SiriKitFlow16TemplatingResultVs5Error_pGMd, &_sScCy11SiriKitFlow16TemplatingResultVs5Error_pGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t partial apply for closure #1 in closure #1 in CATService.execute(model:globals:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy11SiriKitFlow16TemplatingResultVs5Error_pGMd, &_sScCy11SiriKitFlow16TemplatingResultVs5Error_pGMR);

  return closure #1 in closure #1 in CATService.execute(model:globals:)(a1);
}

uint64_t objectdestroyTm()
{
  v1 = type metadata accessor for BehaviorAfterSpeaking();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t partial apply for closure #1 in CATService.execute(catId:parameters:globals:behaviorAfterSpeaking:_:)(uint64_t a1)
{
  v3 = *(type metadata accessor for BehaviorAfterSpeaking() - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  return closure #1 in CATService.execute(catId:parameters:globals:behaviorAfterSpeaking:_:)(a1, v4, v5, v6, v7);
}

uint64_t RedirectToServerFlow.execute()(uint64_t a1)
{
  v2[62] = a1;
  v2[63] = v1;
  v3 = type metadata accessor for FlowUnhandledReason();
  v2[64] = v3;
  v2[65] = *(v3 - 8);
  v2[66] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v2[67] = swift_task_alloc();
  v4 = type metadata accessor for AceOutput();
  v2[68] = v4;
  v2[69] = *(v4 - 8);
  v2[70] = swift_task_alloc();
  v5 = type metadata accessor for TemplatingResult();
  v2[71] = v5;
  v2[72] = *(v5 - 8);
  v2[73] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  v2[74] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMd, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMR);
  v2[75] = swift_task_alloc();
  v6 = type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext();
  v2[76] = v6;
  v2[77] = *(v6 - 8);
  v2[78] = swift_task_alloc();
  v7 = type metadata accessor for PommesContext.Source();
  v2[79] = v7;
  v2[80] = *(v7 - 8);
  v2[81] = swift_task_alloc();
  v8 = type metadata accessor for PommesContext();
  v2[82] = v8;
  v2[83] = *(v8 - 8);
  v2[84] = swift_task_alloc();
  v9 = type metadata accessor for NLContextUpdate();
  v2[85] = v9;
  v2[86] = *(v9 - 8);
  v2[87] = swift_task_alloc();

  return _swift_task_switch(RedirectToServerFlow.execute(), 0, 0);
}

uint64_t RedirectToServerFlow.execute()()
{
  v36 = v0;
  v1 = v0[81];
  v2 = v0[80];
  v3 = v0[79];
  v4 = v0[77];
  v34 = v0[76];
  v5 = v0[75];
  static GeoNLContextUtils.makeNLContextFor(weightedPromptResponseTargets:)(&_swiftEmptyArrayStorage);
  NLContextUpdate.weightedPromptTargetDomain.setter();
  NLContextUpdate.currentDomainName.setter();
  v6 = Data.init(base64Encoded:options:)();
  v8 = v7;
  v0[88] = v6;
  v0[89] = v7;
  *v1 = v6;
  v1[1] = v7;
  (*(v2 + 104))(v1, enum case for PommesContext.Source.pegasusResponse(_:), v3);
  outlined copy of Data?(v6, v8);
  PommesContext.init(source:domain:listenAfterSpeaking:)();
  PommesContext.exportPromptContext()();
  if ((*(v4 + 48))(v5, 1, v34) == 1)
  {
    v9 = v0[63];
    outlined destroy of Mirror.DisplayStyle?(v0[75], &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMd, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMR);
    v10 = static os_log_type_t.error.getter();
    v11 = *(v9 + 16);
    if (os_log_type_enabled(v11, v10))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v35 = v13;
      *v12 = 136315138;
      swift_beginAccess();
      lazy protocol witness table accessor for type PommesContext and conformance PommesContext(&lazy protocol witness table cache variable for type PommesContext and conformance PommesContext, 255, &type metadata accessor for PommesContext, &protocol conformance descriptor for PommesContext);
      v14 = dispatch thunk of CustomStringConvertible.description.getter();
      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v35);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_0, v11, v10, "No promptContext on %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v13);
    }
  }

  else
  {
    v17 = v0[78];
    v18 = v0[77];
    v19 = v0[76];
    (*(v18 + 32))(v17, v0[75], v19);
    Com_Apple_Siri_Product_Proto_PromptContext.previousDomainName.setter();
    Com_Apple_Siri_Product_Proto_PromptContext.strictPrompt.setter();
    Com_Apple_Siri_Product_Proto_PromptContext.listenAfterSpeaking.setter();
    PommesContext.update(with:)();
    (*(v18 + 8))(v17, v19);
  }

  v20 = v0[84];
  v21 = v0[83];
  v22 = v0[82];
  v23 = v0[74];
  v24 = v0[63];
  swift_beginAccess();
  (*(v21 + 16))(v23, v20, v22);
  (*(v21 + 56))(v23, 0, 1, v22);
  NLContextUpdate.pommesContext.setter();
  v25 = static os_log_type_t.info.getter();
  v26 = *(v24 + 16);
  v0[90] = v26;
  os_log(_:dso:log:_:_:)(v25, &dword_0, v26, "setting NLOutput", 16, 2, &_swiftEmptyArrayStorage);
  v0[91] = type metadata accessor for CATService();
  v27 = swift_allocObject();
  v0[92] = v27;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v0[93] = ObjCClassFromMetadata;
  v29 = objc_opt_self();
  v0[94] = v29;
  *(v27 + 24) = [v29 bundleForClass:ObjCClassFromMetadata];
  v0[95] = type metadata accessor for OS_os_log();
  *(v27 + 32) = OS_os_log.init(subsystem:category:)();
  *(v27 + 16) = 0;
  v0[27] = &type metadata for LocationSearch;
  v0[28] = &protocol witness table for LocationSearch;
  v0[25] = 0;
  v0[24] = 0;
  v30 = static DialogHelper.globals.getter();
  v0[96] = v30;
  v31 = swift_task_alloc();
  v0[97] = v31;
  *v31 = v0;
  v31[1] = RedirectToServerFlow.execute();
  v32 = v0[73];

  return CATService.execute(model:globals:)(v32, (v0 + 24), v30);
}

{
  v2 = *v1;
  *(*v1 + 784) = v0;

  if (v0)
  {

    v3 = RedirectToServerFlow.execute();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm((v2 + 192));
    v3 = RedirectToServerFlow.execute();
  }

  return _swift_task_switch(v3, 0, 0);
}

{
  v16 = *(v0 + 752);
  v17 = *(v0 + 744);
  v1 = *(v0 + 696);
  v2 = *(v0 + 688);
  v3 = *(v0 + 680);
  v4 = *(v0 + 560);
  v5 = *(v0 + 552);
  v6 = *(v0 + 544);
  v7 = *(v0 + 536);
  static Device.current.getter();
  (*(v2 + 16))(v7, v1, v3);
  (*(v2 + 56))(v7, 0, 1, v3);
  *(v0 + 304) = 0;
  *(v0 + 272) = 0u;
  *(v0 + 288) = 0u;
  static AceOutputHelper.makeCompletionViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  outlined destroy of Mirror.DisplayStyle?(v0 + 272, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  outlined destroy of Mirror.DisplayStyle?(v7, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 232));
  static Device.current.getter();
  v8 = type metadata accessor for GeoRCHFlowFactoryImpl();
  inited = swift_initStackObject();
  *(v0 + 792) = inited;
  *(v0 + 80) = v8;
  *(v0 + 88) = &protocol witness table for GeoRCHFlowFactoryImpl;
  *(v0 + 56) = inited;
  *(v0 + 96) = static DialogHelper.globals.getter();
  static AceService.currentAsync.getter();
  static OutputPublisherFactory.makeOutputPublisherAsync()();
  v10 = swift_initStackObject();
  *(v0 + 800) = v10;
  *(v10 + 24) = [v16 bundleForClass:{v17, v0 + 272}];
  *(v10 + 32) = OS_os_log.init(subsystem:category:)();
  *(v10 + 16) = 0;
  *(v0 + 184) = v10;
  outlined init with copy of DeviceState(v0 + 144, v0 + 352);
  outlined destroy of FlowHelperImpl(v0 + 16);
  v11 = *(v0 + 376);
  v12 = *(v0 + 384);
  __swift_project_boxed_opaque_existential_1((v0 + 352), v11);
  *(v0 + 416) = v6;
  *(v0 + 424) = &protocol witness table for AceOutput;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 392));
  (*(v5 + 16))(boxed_opaque_existential_0, v4, v6);
  v14 = swift_task_alloc();
  *(v0 + 808) = v14;
  *v14 = v0;
  v14[1] = RedirectToServerFlow.execute();

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v0 + 392, v11, v12);
}

{
  v2 = *v1;
  *(*v1 + 816) = v0;

  if (v0)
  {
    v3 = RedirectToServerFlow.execute();
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v2 + 392));
    v3 = RedirectToServerFlow.execute();
  }

  return _swift_task_switch(v3, 0, 0);
}

{
  v1 = v0[90];
  v2 = v0[73];
  v3 = v0[72];
  v4 = v0[71];
  v5 = v0[70];
  v6 = v0[69];
  v7 = v0[68];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 44);
  v8 = static os_log_type_t.info.getter();
  os_log(_:dso:log:_:_:)(v8, &dword_0, v1, "setting NLOutput success", 24, 2, &_swiftEmptyArrayStorage);
  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  v9 = v0[90];
  v20 = v0[88];
  v21 = v0[89];
  v10 = v0[87];
  v11 = v0[86];
  v12 = v0[84];
  v13 = v0[83];
  v22 = v0[85];
  v23 = v0[82];
  v14 = v0[66];
  v15 = v0[65];
  v16 = v0[64];
  v17 = static os_log_type_t.info.getter();
  os_log(_:dso:log:_:_:)(v17, &dword_0, v9, "unhandled. Reason: .needsInfoDomainFallback, isComplete: true", 61, 2, &_swiftEmptyArrayStorage);
  (*(v15 + 104))(v14, enum case for FlowUnhandledReason.needsInfoDomainFallback(_:), v16);
  static ExecuteResponse.unhandled(reason:isComplete:)();
  outlined consume of Data?(v20, v21);
  (*(v15 + 8))(v14, v16);
  (*(v11 + 8))(v10, v22);
  (*(v13 + 8))(v12, v23);

  v18 = v0[1];

  return v18();
}

{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 24);
  v1 = v0[90];
  v2 = static os_log_type_t.error.getter();
  os_log(_:dso:log:_:_:)(v2, &dword_0, v1, "could not set NLContext", 23, 2, &_swiftEmptyArrayStorage);

  v3 = v0[90];
  v14 = v0[88];
  v15 = v0[89];
  v4 = v0[87];
  v5 = v0[86];
  v6 = v0[84];
  v7 = v0[83];
  v16 = v0[85];
  v17 = v0[82];
  v8 = v0[66];
  v9 = v0[65];
  v10 = v0[64];
  v11 = static os_log_type_t.info.getter();
  os_log(_:dso:log:_:_:)(v11, &dword_0, v3, "unhandled. Reason: .needsInfoDomainFallback, isComplete: true", 61, 2, &_swiftEmptyArrayStorage);
  (*(v9 + 104))(v8, enum case for FlowUnhandledReason.needsInfoDomainFallback(_:), v10);
  static ExecuteResponse.unhandled(reason:isComplete:)();
  outlined consume of Data?(v14, v15);
  (*(v9 + 8))(v8, v10);
  (*(v5 + 8))(v4, v16);
  (*(v7 + 8))(v6, v17);

  v12 = v0[1];

  return v12();
}

{
  v1 = v0[73];
  v2 = v0[72];
  v3 = v0[71];
  (*(v0[69] + 8))(v0[70], v0[68]);
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 49);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 44);
  v4 = v0[90];
  v5 = static os_log_type_t.error.getter();
  os_log(_:dso:log:_:_:)(v5, &dword_0, v4, "could not set NLContext", 23, 2, &_swiftEmptyArrayStorage);

  v6 = v0[90];
  v17 = v0[88];
  v18 = v0[89];
  v7 = v0[87];
  v8 = v0[86];
  v9 = v0[84];
  v10 = v0[83];
  v19 = v0[85];
  v20 = v0[82];
  v11 = v0[66];
  v12 = v0[65];
  v13 = v0[64];
  v14 = static os_log_type_t.info.getter();
  os_log(_:dso:log:_:_:)(v14, &dword_0, v6, "unhandled. Reason: .needsInfoDomainFallback, isComplete: true", 61, 2, &_swiftEmptyArrayStorage);
  (*(v12 + 104))(v11, enum case for FlowUnhandledReason.needsInfoDomainFallback(_:), v13);
  static ExecuteResponse.unhandled(reason:isComplete:)();
  outlined consume of Data?(v17, v18);
  (*(v12 + 8))(v11, v13);
  (*(v8 + 8))(v7, v19);
  (*(v10 + 8))(v9, v20);

  v15 = v0[1];

  return v15();
}

uint64_t outlined copy of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined copy of Data._Representation(a1, a2);
  }

  return a1;
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

uint64_t RedirectToServerFlow.execute(completion:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for RedirectToServerFlow();
  lazy protocol witness table accessor for type PommesContext and conformance PommesContext(&lazy protocol witness table cache variable for type RedirectToServerFlow and conformance RedirectToServerFlow, v2, type metadata accessor for RedirectToServerFlow, &protocol conformance descriptor for RedirectToServerFlow);
  return Flow.deferToExecuteAsync(_:)();
}

uint64_t TrafficIncidentBaseRCHStrategy.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t RedirectToServerFlow.__allocating_init()()
{
  v0 = swift_allocObject();
  type metadata accessor for OS_os_log();
  *(v0 + 16) = OS_os_log.init(subsystem:category:)();
  return v0;
}

uint64_t RedirectToServerFlow.init()()
{
  type metadata accessor for OS_os_log();
  *(v0 + 16) = OS_os_log.init(subsystem:category:)();
  return v0;
}

uint64_t (*protocol witness for SiriEnvironmentLocating.siriEnvironment.modify in conformance RedirectToServerFlow(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = SiriEnvironmentLocating<>.siriEnvironment.modify();
  return protocol witness for SiriEnvironmentLocating.siriEnvironment.modify in conformance RedirectToServerFlow;
}

void protocol witness for SiriEnvironmentLocating.siriEnvironment.modify in conformance RedirectToServerFlow(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t protocol witness for Flow.execute() in conformance RedirectToServerFlow(uint64_t a1)
{
  v6 = (*(**v1 + 96) + **(**v1 + 96));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for PromptForValueFlowStrategyAsync.makeFlowCancelledResponse() in conformance ShareETAPromptForContactStrategy;

  return v6(a1);
}

uint64_t protocol witness for Flow.exitValue.getter in conformance RedirectToServerFlow(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for RedirectToServerFlow();

  return Flow<>.exitValue.getter(v3, a2);
}

uint64_t lazy protocol witness table accessor for type PommesContext and conformance PommesContext(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void static GeoParse.getDomainIntent(parse:)(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v114 = a2;
  v3 = type metadata accessor for Siri_Nlu_External_UserParse();
  v104 = *(v3 - 8);
  v105 = v3;
  __chkstk_darwin();
  v103 = &v97 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v106 = *(v5 - 8);
  v107 = v5;
  __chkstk_darwin();
  v99 = &v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v102 = &v97 - v7;
  v110 = type metadata accessor for USOParse();
  v112 = *(v110 - 8);
  __chkstk_darwin();
  v111 = &v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationSearchNode();
  v100 = *(v101 - 8);
  __chkstk_darwin();
  v109 = &v97 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_GeoClientComponent();
  v108 = *(v10 - 8);
  __chkstk_darwin();
  v12 = &v97 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology21NonTerminalIntentNodeVSgMd, &_s12SiriOntology21NonTerminalIntentNodeVSgMR);
  __chkstk_darwin();
  v14 = &v97 - v13;
  v15 = type metadata accessor for NLIntent();
  v16 = *(v15 - 8);
  __chkstk_darwin();
  v98 = &v97 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v113 = &v97 - v18;
  __chkstk_darwin();
  v20 = &v97 - v19;
  v21 = type metadata accessor for Parse();
  v22 = *(v21 - 8);
  __chkstk_darwin();
  v24 = (&v97 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v24, a1, v21);
  v25 = (*(v22 + 88))(v24, v21);
  if (v25 != enum case for Parse.NLv3IntentOnly(_:))
  {
    v97 = v16;
    v30 = v15;
    if (v25 == enum case for Parse.pommesResponse(_:))
    {
      (*(v22 + 96))(v24, v21);
      v31 = *v24;
      v32 = PommesResponse.firstGeoExperience.getter();
      if (v32)
      {
        v33 = v32;
        GeoExperience.geoClientComponent.getter();
        v34 = Apple_Parsec_Siri_V2alpha_GeoClientComponent.hasLocationSearchNode.getter();
        v35 = *(v108 + 8);
        v35(v12, v10);
        if ((v34 & 1) == 0)
        {

          goto LABEL_5;
        }

        GeoExperience.geoClientComponent.getter();
        v36 = v109;
        Apple_Parsec_Siri_V2alpha_GeoClientComponent.locationSearchNode.getter();
        v35(v12, v10);
        type metadata accessor for LocationSearchIntentBuilder();
        swift_allocObject();
        v37 = *LocationSearchIntentBuilder.init()();
        v38 = (*(v37 + 376))(v36);

        v40 = v113;
        (*(*v38 + 456))(v39);

        v41 = v97;
        v42 = v98;
        (*(v97 + 16))(v98, v40, v30);
        v43 = type metadata accessor for LocationSearchIntent(0);
        v44 = swift_allocObject();
        v45 = OBJC_IVAR____TtC21GeoFlowDelegatePlugin20LocationSearchIntent_domainOntologyNode;
        if (one-time initialization token for domainNode != -1)
        {
          swift_once();
        }

        *(v44 + v45) = static LocationSearchIntent.domainNode;
        (*(v41 + 32))(v44 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin20LocationSearchIntent_intent, v42, v30);
        v46 = v114;
        v114[3] = v43;
        v46[4] = &protocol witness table for LocationSearchIntent;

        *v46 = v44;
        (*(v41 + 8))(v40, v30);
        (*(v100 + 8))(v109, v101);
      }

      else
      {
        v71 = v114;
        v114[4] = 0;
        *v71 = 0u;
        *(v71 + 1) = 0u;
      }

      return;
    }

    if (v25 != enum case for Parse.uso(_:))
    {
      v70 = v114;
      v114[4] = 0;
      *v70 = 0u;
      *(v70 + 1) = 0u;
      (*(v22 + 8))(v24, v21);
      return;
    }

    (*(v22 + 96))(v24, v21);
    v52 = v111;
    v51 = v112;
    v53 = v110;
    (*(v112 + 32))(v111, v24, v110);
    v54 = v103;
    USOParse.userParse.getter();
    v55 = Siri_Nlu_External_UserParse.userDialogActs.getter();
    (*(v104 + 8))(v54, v105);
    if (!*(v55 + 16))
    {

      (*(v51 + 8))(v52, v53);
      goto LABEL_5;
    }

    v57 = v106;
    v56 = v107;
    v58 = v99;
    (*(v106 + 16))(v99, v55 + ((*(v57 + 80) + 32) & ~*(v57 + 80)), v107);

    v59 = v102;
    (*(v57 + 32))(v102, v58, v56);
    type metadata accessor for LocationSearchIntentBuilder();
    swift_allocObject();
    v60 = LocationSearchIntentBuilder.init()();
    if (Siri_Nlu_External_UserDialogAct.hasCancelled.getter())
    {
      v61 = 2;
      v62 = v30;
      v63 = v113;
    }

    else
    {
      v72 = Siri_Nlu_External_UserDialogAct.hasAccepted.getter();
      v62 = v30;
      v63 = v113;
      if (v72)
      {
        v61 = 0;
      }

      else
      {
        if ((Siri_Nlu_External_UserDialogAct.hasRejected.getter() & 1) == 0)
        {
          goto LABEL_32;
        }

        v61 = 1;
      }
    }

    v55 = (*(*v60 + 408))(v61);

    v60 = v55;
LABEL_32:
    v73 = v59;
    v74 = Siri_Nlu_External_UserDialogAct.getTasks()();
    if (v74 >> 62)
    {
      v55 = v74;
      v91 = _CocoaArrayWrapper.endIndex.getter();
      v74 = v55;
      if (v91)
      {
LABEL_34:
        if ((v74 & 0xC000000000000001) != 0)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*(&dword_10 + (v74 & 0xFFFFFFFFFFFFFF8)))
          {
            __break(1u);
            goto LABEL_74;
          }
        }

        static UsoTask_CodegenConverter.convert(task:)();

        outlined init with copy of Any?(v117, v115);
        if (v116)
        {
          type metadata accessor for UsoTask_noVerb_common_Person();
          if (swift_dynamicCast())
          {

            dispatch thunk of Uso_VerbTemplate_NoVerb.entity.getter();
            if (v115[0])
            {
              v75 = dispatch thunk of UsoEntity_common_Person.name.getter();
              v77 = v76;

              if (v77)
              {
                v78 = (*(*v60 + 440))(v75, v77);

                v60 = v78;
              }
            }

            dispatch thunk of Uso_VerbTemplate_NoVerb.entity.getter();

            if (v115[0] && (v79 = dispatch thunk of UsoEntity_common_Person.identifyingRelationship.getter(), , v79) && (v80 = dispatch thunk of UsoEntity_common_PersonRelationship.relationshipType.getter(), v82 = v81, , v82))
            {
              v83 = (*(*v60 + 432))(v80, v82);

              v60 = v83;
            }

            else
            {
            }
          }
        }

        else
        {
          outlined destroy of Mirror.DisplayStyle?(v115, &_sypSgMd, &_sypSgMR);
        }

        outlined init with copy of Any?(v117, v115);
        if (v116)
        {
          type metadata accessor for UsoTask_noVerb_common_PersonRelationship();
          if (swift_dynamicCast())
          {

            dispatch thunk of Uso_VerbTemplate_NoVerb.entity.getter();

            if (v115[0] && (v84 = dispatch thunk of UsoEntity_common_PersonRelationship.relationshipType.getter(), v86 = v85, , v86))
            {
              v87 = (*(*v60 + 432))(v84, v86);

              v60 = v87;
            }

            else
            {
            }
          }
        }

        else
        {
          outlined destroy of Mirror.DisplayStyle?(v115, &_sypSgMd, &_sypSgMR);
        }

        outlined init with copy of Any?(v117, v115);
        if (v116)
        {
          type metadata accessor for UsoTask_share_common_Message();
          v88 = swift_dynamicCast();
          if ((v88 & 1) == 0)
          {
            goto LABEL_66;
          }

          dispatch thunk of Uso_VerbTemplate_Target.target.getter();

          if (v115[0])
          {
            v89 = dispatch thunk of UsoEntity_common_Message.recipients.getter();

            if (v89)
            {
              if (v89 >> 62)
              {
                if (_CocoaArrayWrapper.endIndex.getter())
                {
LABEL_61:
                  if ((v89 & 0xC000000000000001) != 0)
                  {
                    specialized _ArrayBuffer._getElementSlowPath(_:)();
                    swift_unknownObjectRelease();
                  }

                  else if (!*(&dword_10 + (v89 & 0xFFFFFFFFFFFFFF8)))
                  {
                    __break(1u);
                    return;
                  }
                }
              }

              else if (*(&dword_10 + (v89 & 0xFFFFFFFFFFFFFF8)))
              {
                goto LABEL_61;
              }

              goto LABEL_66;
            }
          }
        }

        else
        {
          v88 = outlined destroy of Mirror.DisplayStyle?(v115, &_sypSgMd, &_sypSgMR);
        }

LABEL_66:
        v63 = v113;
        (*(*v60 + 456))(v88);
        v73 = type metadata accessor for LocationSearchIntent(0);
        v55 = swift_allocObject();
        v58 = OBJC_IVAR____TtC21GeoFlowDelegatePlugin20LocationSearchIntent_domainOntologyNode;
        if (one-time initialization token for domainNode == -1)
        {
LABEL_67:
          *(v55 + v58) = static LocationSearchIntent.domainNode;
          (*(v97 + 32))(v55 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin20LocationSearchIntent_intent, v63, v62);
          v90 = v114;
          v114[3] = v73;
          v90[4] = &protocol witness table for LocationSearchIntent;

          *v90 = v55;
          outlined destroy of Mirror.DisplayStyle?(v117, &_sypSgMd, &_sypSgMR);
          (*(v106 + 8))(v59, v107);
          (*(v112 + 8))(v111, v110);
          return;
        }

LABEL_74:
        swift_once();
        goto LABEL_67;
      }
    }

    else if (*(&dword_10 + (v74 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_34;
    }

    (*(*v60 + 456))(v92);
    v93 = type metadata accessor for LocationSearchIntent(0);
    v94 = swift_allocObject();
    v95 = OBJC_IVAR____TtC21GeoFlowDelegatePlugin20LocationSearchIntent_domainOntologyNode;
    if (one-time initialization token for domainNode != -1)
    {
      swift_once();
    }

    *(v94 + v95) = static LocationSearchIntent.domainNode;
    (*(v97 + 32))(v94 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin20LocationSearchIntent_intent, v63, v62);
    v96 = v114;
    v114[3] = v93;
    v96[4] = &protocol witness table for LocationSearchIntent;

    *v96 = v94;
    (*(v106 + 8))(v59, v107);
    (*(v112 + 8))(v111, v53);
    return;
  }

  (*(v22 + 96))(v24, v21);
  v26 = *(v16 + 32);
  v26(v20, v24, v15);
  NLIntent.domainNode.getter();
  v27 = type metadata accessor for NonTerminalIntentNode();
  v28 = *(v27 - 8);
  if ((*(v28 + 48))(v14, 1, v27) == 1)
  {
    outlined destroy of Mirror.DisplayStyle?(v14, &_s12SiriOntology21NonTerminalIntentNodeVSgMd, &_s12SiriOntology21NonTerminalIntentNodeVSgMR);
LABEL_4:
    (*(v16 + 8))(v20, v15);
LABEL_5:
    v29 = v114;
    v114[4] = 0;
    *v29 = 0u;
    *(v29 + 1) = 0u;
    return;
  }

  v111 = v26;
  v112 = v16 + 32;
  v47 = NonTerminalIntentNode.ontologyNodeName.getter();
  v49 = v48;
  (*(v28 + 8))(v14, v27);
  if (v47 == 0x6E6F697461636F6CLL && v49 == 0xEE00686372616553)
  {

    v50 = v113;
  }

  else
  {
    v64 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v50 = v113;
    if ((v64 & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  (*(v16 + 16))(v50, v20, v15);
  v65 = type metadata accessor for LocationSearchIntent(0);
  v66 = swift_allocObject();
  v67 = OBJC_IVAR____TtC21GeoFlowDelegatePlugin20LocationSearchIntent_domainOntologyNode;
  if (one-time initialization token for domainNode != -1)
  {
    swift_once();
  }

  *(v66 + v67) = static LocationSearchIntent.domainNode;
  (v111)(v66 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin20LocationSearchIntent_intent, v50, v15);
  v68 = v114;
  v114[3] = v65;
  v68[4] = &protocol witness table for LocationSearchIntent;
  *v68 = v66;
  v69 = *(v16 + 8);

  v69(v20, v15);
}

GeoFlowDelegatePlugin::GeoIntentType_optional __swiftcall GeoIntentType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of GeoIntentType.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = GeoFlowDelegatePlugin_GeoIntentType_locationSearch;
  }

  else
  {
    v4.value = GeoFlowDelegatePlugin_GeoIntentType_unknownDefault;
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

uint64_t GeoIntentType.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x6E6F697461636F6CLL;
  }

  else
  {
    return 0x6165536C61636F6CLL;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance GeoIntentType(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6E6F697461636F6CLL;
  }

  else
  {
    v3 = 0x6165536C61636F6CLL;
  }

  if (v2)
  {
    v4 = 0xEB00000000686372;
  }

  else
  {
    v4 = 0xEE00686372616553;
  }

  if (*a2)
  {
    v5 = 0x6E6F697461636F6CLL;
  }

  else
  {
    v5 = 0x6165536C61636F6CLL;
  }

  if (*a2)
  {
    v6 = 0xEE00686372616553;
  }

  else
  {
    v6 = 0xEB00000000686372;
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

Swift::Int protocol witness for Hashable.hashValue.getter in conformance GeoIntentType()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance GeoIntentType(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance GeoIntentType(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance GeoIntentType@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of GeoIntentType.init(rawValue:), *a1);

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

void protocol witness for RawRepresentable.rawValue.getter in conformance GeoIntentType(uint64_t *a1@<X8>)
{
  v2 = 0x6165536C61636F6CLL;
  if (*v1)
  {
    v2 = 0x6E6F697461636F6CLL;
  }

  v3 = 0xEB00000000686372;
  if (*v1)
  {
    v3 = 0xEE00686372616553;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t static GeoParse.getDomainIntent(input:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for Parse();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Input.parse.getter();
  static GeoParse.getDomainIntent(parse:)(v5, a1);
  return (*(v3 + 8))(v5, v2);
}

uint64_t outlined init with copy of Any?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type GeoIntentType and conformance GeoIntentType()
{
  result = lazy protocol witness table cache variable for type GeoIntentType and conformance GeoIntentType;
  if (!lazy protocol witness table cache variable for type GeoIntentType and conformance GeoIntentType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoIntentType and conformance GeoIntentType);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GeoIntentType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for GeoIntentType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t ShareETAContactDisambiguationStrategy.isUSO.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 81) = a1;
  return result;
}

uint64_t ShareETAContactDisambiguationStrategy.disambiguationItems.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 88) = a1;
}

Swift::Int ShareETAContactDisambiguationStrategy.ContactDisambiguationStrategyError.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  return Hasher._finalize()();
}

uint64_t ShareETAContactDisambiguationStrategy.__allocating_init(isPommes:isUSO:skeletonPerson:flowHelper:catService:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v8 = a2;
  v9 = a1;
  v10 = swift_allocObject();
  v11 = a4[3];
  v12 = a4[4];
  __swift_mutable_project_boxed_opaque_existential_1(a4, v11);
  __chkstk_darwin();
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14);
  v16 = specialized ShareETAContactDisambiguationStrategy.init(isPommes:isUSO:skeletonPerson:flowHelper:catService:)(v9, v8, a3, v14, a5, v10, v11, v12);
  __swift_destroy_boxed_opaque_existential_0Tm(a4);
  return v16;
}

uint64_t ShareETAContactDisambiguationStrategy.init(isPommes:isUSO:skeletonPerson:flowHelper:catService:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v9 = a2;
  v10 = a1;
  v11 = a4[3];
  v12 = a4[4];
  __swift_mutable_project_boxed_opaque_existential_1(a4, v11);
  __chkstk_darwin();
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14);
  v16 = specialized ShareETAContactDisambiguationStrategy.init(isPommes:isUSO:skeletonPerson:flowHelper:catService:)(v10, v9, a3, v14, a5, v5, v11, v12);
  __swift_destroy_boxed_opaque_existential_0Tm(a4);
  return v16;
}

void ShareETAContactDisambiguationStrategy.actionForInput(_:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v110 = a2;
  v109 = type metadata accessor for Parse.DirectInvocation();
  v4 = *(v109 - 8);
  __chkstk_darwin();
  v102 = &v89 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for USOParse();
  v97 = *(v98 - 8);
  __chkstk_darwin();
  v92 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v96 = &v89 - v7;
  v8 = type metadata accessor for NLIntent();
  v107 = *(v8 - 8);
  v108 = v8;
  __chkstk_darwin();
  v105 = &v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v106 = &v89 - v10;
  v11 = type metadata accessor for Parse();
  v112 = *(v11 - 8);
  __chkstk_darwin();
  v111 = (&v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v14 = &v89 - v13;
  v15 = type metadata accessor for Input();
  v16 = *(v15 - 8);
  __chkstk_darwin();
  v93 = &v89 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v94 = &v89 - v18;
  __chkstk_darwin();
  v20 = &v89 - v19;
  v91 = v2;
  v21 = *(v2 + 16);
  v22 = *(v16 + 16);
  v100 = v16 + 16;
  v99 = v22;
  v22(&v89 - v19, a1, v15);
  v23 = static os_log_type_t.default.getter();
  v24 = os_log_type_enabled(v21, v23);
  v101 = v16;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v103 = a1;
    v104 = v11;
    v26 = v25;
    v90 = swift_slowAlloc();
    v116[0] = v90;
    *v26 = 136315138;
    Input.parse.getter();
    v27 = String.init<A>(describing:)();
    v95 = v4;
    v29 = v28;
    v30 = *(v16 + 8);
    v31 = v15;
    v32 = v15;
    v33 = v30;
    v30(v20, v32);
    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, v116);
    v4 = v95;

    *(v26 + 4) = v34;
    _os_log_impl(&dword_0, v21, v23, "actionForInput %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v90);

    a1 = v103;
    v11 = v104;
  }

  else
  {
    v35 = *(v16 + 8);
    v31 = v15;
    v36 = v15;
    v33 = v35;
    v35(v20, v36);
  }

  v37 = v111;
  Input.parse.getter();
  v38 = v112;
  v39 = (*(v112 + 88))(v37, v11);
  if (v39 == enum case for Parse.NLv3IntentOnly(_:))
  {
    (*(v38 + 96))(v37, v11);
    v41 = v106;
    v40 = v107;
    v42 = *(v107 + 32);
    v43 = v37;
    v44 = v108;
    v42(v106, v43, v108);
    v45 = v105;
    (*(v40 + 16))(v105, v41, v44);
    type metadata accessor for LocationSearchIntent(0);
    v46 = swift_allocObject();
    v47 = OBJC_IVAR____TtC21GeoFlowDelegatePlugin20LocationSearchIntent_domainOntologyNode;
    if (one-time initialization token for domainNode != -1)
    {
      swift_once();
    }

    *(v46 + v47) = static LocationSearchIntent.domainNode;
    v42((v46 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin20LocationSearchIntent_intent), v45, v44);
    v116[0] = v46;
    v48 = one-time initialization token for confirmationNode;

    if (v48 != -1)
    {
      swift_once();
    }

    lazy protocol witness table accessor for type LocationSearchIntent and conformance LocationSearchIntent(&lazy protocol witness table cache variable for type LocationSearchIntent and conformance LocationSearchIntent, type metadata accessor for LocationSearchIntent, &protocol conformance descriptor for LocationSearchIntent);
    IntentNodeTraversable.value<A>(forNode:)();

    if (v114 > 1u)
    {
      if (v114 == 2)
      {

LABEL_26:
        static ActionForInput.cancel()();
LABEL_28:
        (*(v40 + 8))(v41, v44);
        return;
      }
    }

    else
    {
      v65 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v65)
      {
        goto LABEL_26;
      }
    }

    static ActionForInput.handle()();
    goto LABEL_28;
  }

  if (v39 == enum case for Parse.directInvocation(_:))
  {
    v103 = a1;
    (*(v38 + 96))(v37, v11);
    v49 = v102;
    (*(v4 + 32))(v102, v37, v109);
    if (Parse.DirectInvocation.identifier.getter() == 0xD00000000000002CLL && 0x80000000000BFC00 == v50)
    {

      v51 = v31;
    }

    else
    {
      v56 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v51 = v31;
      if ((v56 & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    if (Parse.DirectInvocation.userData.getter())
    {

      static ActionForInput.handle()();
LABEL_35:
      (*(v4 + 8))(v49, v109);
      return;
    }

LABEL_23:
    v57 = static os_log_type_t.info.getter();
    v58 = v94;
    v99(v94, v103, v51);
    if (os_log_type_enabled(v21, v57))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v116[0] = v60;
      *v59 = 136315138;
      v61 = Input.description.getter();
      v95 = v4;
      v63 = v62;
      v33(v58, v51);
      v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v63, v116);
      v4 = v95;

      *(v59 + 4) = v64;
      _os_log_impl(&dword_0, v21, v57, "Received invalid directInvocation type for ShareETA %s.", v59, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v60);
    }

    else
    {
      v33(v58, v51);
    }

    static ActionForInput.ignore()();
    goto LABEL_35;
  }

  if (v39 != enum case for Parse.pommesResponse(_:))
  {
    v66 = a1;
    if (v39 != enum case for Parse.uso(_:))
    {
      v69 = static os_log_type_t.info.getter();
      v70 = v93;
      v99(v93, v66, v31);
      if (os_log_type_enabled(v21, v69))
      {
        v71 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        v116[0] = v72;
        *v71 = 136315138;
        v73 = Input.description.getter();
        v75 = v74;
        v33(v70, v31);
        v76 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v73, v75, v116);
        v37 = v111;

        *(v71 + 4) = v76;
        _os_log_impl(&dword_0, v21, v69, "SiriGeo received unsupported parse type %s.", v71, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v72);

        v38 = v112;
      }

      else
      {
        v33(v70, v31);
      }

      static ActionForInput.ignore()();
      (*(v38 + 8))(v37, v11);
      return;
    }

    (*(v38 + 96))(v37, v11);
    (*(v97 + 32))(v96, v37, v98);
    type metadata accessor for GeoParse();
    Input.parse.getter();
    static GeoParse.getDomainIntent(parse:)(v14, &v114);
    (*(v38 + 8))(v14, v11);
    if (!v115)
    {
      outlined destroy of Mirror.DisplayStyle?(&v114, &_s21GeoFlowDelegatePlugin0A6Intent_pSgMd, &_s21GeoFlowDelegatePlugin0A6Intent_pSgMR);
      v78 = static os_log_type_t.info.getter();
      v79 = v92;
      (*(v97 + 16))(v92, v96, v98);
      if (os_log_type_enabled(v21, v78))
      {
        v80 = v21;
        v81 = swift_slowAlloc();
        v82 = swift_slowAlloc();
        v116[0] = v82;
        *v81 = 136315138;
        v83 = USOParse.debugDescription.getter();
        v85 = v84;
        v86 = *(v97 + 8);
        v86(v79, v98);
        v87 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v83, v85, v116);

        *(v81 + 4) = v87;
        _os_log_impl(&dword_0, v80, v78, "SiriGeo received a USO parse it doesn't support %s.", v81, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v82);
      }

      else
      {
        v86 = *(v97 + 8);
        v86(v79, v98);
      }

      static ActionForInput.ignore()();
      v86(v96, v98);
      return;
    }

    outlined init with take of CATType(&v114, v116);
    outlined init with copy of DeviceState(v116, &v114);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s21GeoFlowDelegatePlugin0A6Intent_pMd, &_s21GeoFlowDelegatePlugin0A6Intent_pMR);
    type metadata accessor for LocationSearchIntent(0);
    v67 = swift_dynamicCast();
    v68 = (*(*v113 + 152))(v67);

    if (v68 > 1u)
    {
      if (v68 == 2)
      {

LABEL_52:
        static ActionForInput.cancel()();
LABEL_54:
        __swift_destroy_boxed_opaque_existential_0Tm(v116);
        (*(v97 + 8))(v96, v98);
        return;
      }
    }

    else
    {
      v88 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v88)
      {
        goto LABEL_52;
      }
    }

    (*(*v91 + 152))(1);
    static ActionForInput.handle()();
    goto LABEL_54;
  }

  (*(v38 + 96))(v37, v11);
  v52 = *v37;
  type metadata accessor for LocationSearchIntent(0);
  swift_allocObject();
  v53 = v52;
  v54 = LocationSearchIntent.init(from:)(v53);
  v55 = (*(*v54 + 152))(v54);

  if (v55 > 1u)
  {
    if (v55 == 2)
    {

LABEL_41:
      static ActionForInput.cancel()();

      return;
    }
  }

  else
  {
    v77 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v77)
    {
      goto LABEL_41;
    }
  }

  static ActionForInput.handle()();
}

uint64_t ShareETAContactDisambiguationStrategy.parseDisambiguationResponse(input:paginatedItems:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[20] = a3;
  v4[21] = v3;
  v4[18] = a1;
  v4[19] = a2;
  v5 = type metadata accessor for Parse.DirectInvocation();
  v4[22] = v5;
  v4[23] = *(v5 - 8);
  v4[24] = swift_task_alloc();
  v6 = type metadata accessor for Google_Protobuf_StringValue();
  v4[25] = v6;
  v4[26] = *(v6 - 8);
  v4[27] = swift_task_alloc();
  v7 = type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier();
  v4[28] = v7;
  v4[29] = *(v7 - 8);
  v4[30] = swift_task_alloc();
  v8 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v4[31] = v8;
  v4[32] = *(v8 - 8);
  v4[33] = swift_task_alloc();
  v9 = type metadata accessor for Siri_Nlu_External_UserStatedTask();
  v4[34] = v9;
  v4[35] = *(v9 - 8);
  v4[36] = swift_task_alloc();
  v10 = type metadata accessor for Siri_Nlu_External_UserParse();
  v4[37] = v10;
  v4[38] = *(v10 - 8);
  v4[39] = swift_task_alloc();
  v11 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v4[40] = v11;
  v4[41] = *(v11 - 8);
  v4[42] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A33_Nlu_External_UsoEntityIdentifierVSgMd, &_s12SiriNLUTypes0A33_Nlu_External_UsoEntityIdentifierVSgMR);
  v4[43] = swift_task_alloc();
  v12 = type metadata accessor for USOParse();
  v4[44] = v12;
  v4[45] = *(v12 - 8);
  v4[46] = swift_task_alloc();
  v4[47] = swift_task_alloc();
  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationSearchNode();
  v4[48] = v13;
  v4[49] = *(v13 - 8);
  v4[50] = swift_task_alloc();
  v14 = type metadata accessor for Apple_Parsec_Siri_V2alpha_GeoClientComponent();
  v4[51] = v14;
  v4[52] = *(v14 - 8);
  v4[53] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22PaginatedItemContainerVySo8INPersonCGMd, &_s11SiriKitFlow22PaginatedItemContainerVySo8INPersonCGMR);
  v4[54] = v15;
  v4[55] = *(v15 - 8);
  v4[56] = swift_task_alloc();
  v4[57] = swift_task_alloc();
  v4[58] = swift_task_alloc();
  v16 = type metadata accessor for Input();
  v4[59] = v16;
  v4[60] = *(v16 - 8);
  v4[61] = swift_task_alloc();
  v4[62] = swift_task_alloc();
  v17 = type metadata accessor for NLIntent();
  v4[63] = v17;
  v4[64] = *(v17 - 8);
  v4[65] = swift_task_alloc();
  v4[66] = swift_task_alloc();
  v18 = type metadata accessor for Parse();
  v4[67] = v18;
  v4[68] = *(v18 - 8);
  v4[69] = swift_task_alloc();
  v4[70] = swift_task_alloc();

  return _swift_task_switch(ShareETAContactDisambiguationStrategy.parseDisambiguationResponse(input:paginatedItems:), 0, 0);
}

uint64_t ShareETAContactDisambiguationStrategy.parseDisambiguationResponse(input:paginatedItems:)(uint64_t a1)
{
  v354 = v1;
  v4 = v1;
  v5 = *(v1 + 560);
  v6 = *(v4 + 544);
  v7 = *(v4 + 536);
  Input.parse.getter();
  v8 = (*(v6 + 88))(v5, v7);
  v351 = v4;
  if (v8 == enum case for Parse.NLv3IntentOnly(_:))
  {
    v9 = *(v4 + 560);
    v10 = *(v4 + 528);
    v11 = *(v4 + 504);
    v12 = *(v4 + 512);
    v13 = *(v4 + 496);
    v14 = *(v4 + 472);
    v15 = *(v4 + 480);
    v16 = *(v4 + 168);
    v17 = *(v4 + 152);
    (*(*(v4 + 544) + 96))(v9, *(v4 + 536));
    v347 = *(v12 + 32);
    v347(v10, v9, v11);
    v18 = static os_log_type_t.default.getter();
    v19 = *(v16 + 16);
    (*(v15 + 16))(v13, v17, v14);
    v352 = v19;
    if (os_log_type_enabled(v19, v18))
    {
      v20 = *(v4 + 496);
      v21 = *(v4 + 472);
      v22 = *(v4 + 480);
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v353[0] = v24;
      *v23 = 136315138;
      Input.parse.getter();
      v25 = String.init<A>(describing:)();
      v27 = v26;
      (*(v22 + 8))(v20, v21);
      v19 = v352;
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, v353);

      *(v23 + 4) = v28;
      _os_log_impl(&dword_0, v352, v18, "parseDisambiguationResponse NLv3IntentOnly input.parse: %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v24);
    }

    else
    {
      (*(*(v4 + 480) + 8))(*(v4 + 496), *(v4 + 472));
    }

    (*(*(v4 + 512) + 16))(*(v4 + 520), *(v4 + 528), *(v4 + 504));
    type metadata accessor for LocationSearchIntent(0);
    v48 = swift_allocObject();
    v49 = OBJC_IVAR____TtC21GeoFlowDelegatePlugin20LocationSearchIntent_domainOntologyNode;
    if (one-time initialization token for domainNode != -1)
    {
LABEL_158:
      v318 = v48;
      swift_once();
      v48 = v318;
    }

    v50 = *(v4 + 520);
    v51 = *(v4 + 504);
    v52 = *(v4 + 464);
    v54 = *(v4 + 432);
    v53 = *(v4 + 440);
    v55 = *(v4 + 160);
    *(v48 + v49) = static LocationSearchIntent.domainNode;
    v56 = v48;
    v347(v48 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin20LocationSearchIntent_intent, v50, v51);

    v57 = static os_log_type_t.info.getter();
    v58 = *(v53 + 16);
    v58(v52, v55, v54);
    v59 = os_log_type_enabled(v19, v57);
    v60 = *(v4 + 464);
    v341 = v56;
    if (v59)
    {
      v339 = *(v4 + 456);
      v61 = v351[55];
      v62 = v351[54];
      v63 = swift_slowAlloc();
      v353[0] = swift_slowAlloc();
      *v63 = 136315394;
      v351[17] = v341;
      lazy protocol witness table accessor for type LocationSearchIntent and conformance LocationSearchIntent(&lazy protocol witness table cache variable for type LocationSearchIntent and conformance LocationSearchIntent, type metadata accessor for LocationSearchIntent, &protocol conformance descriptor for LocationSearchIntent);
      v64 = NLIntentWrapper.description.getter();
      v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v65, v353);

      *(v63 + 4) = v66;
      *(v63 + 12) = 2080;
      v58(v339, v60, v62);
      v67 = String.init<A>(describing:)();
      v69 = v68;
      (*(v61 + 8))(v60, v62);
      v4 = v351;
      v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v69, v353);

      *(v63 + 14) = v70;
      _os_log_impl(&dword_0, v352, v57, "intent %s, paginatedItems %s", v63, 0x16u);
      swift_arrayDestroy();

      v56 = v341;
    }

    else
    {
      (*(*(v4 + 440) + 8))(v60, *(v4 + 432));
    }

    *(v4 + 120) = v56;
    type metadata accessor for AddressOntologyNode.PersonPlaceNode();
    static AddressOntologyNode.PersonPlaceNode.personPlaceIdNode.getter();
    lazy protocol witness table accessor for type LocationSearchIntent and conformance LocationSearchIntent(&lazy protocol witness table cache variable for type LocationSearchIntent and conformance LocationSearchIntent, type metadata accessor for LocationSearchIntent, &protocol conformance descriptor for LocationSearchIntent);
    IntentNodeTraversable.value<A>(forNode:)();

    v89 = *(v4 + 72);
    if (v89)
    {
      v49 = *(v4 + 64);
      v48 = PaginatedItemContainer.items.getter();
      v90 = v48;
      if (v48 >> 62)
      {
        v48 = _CocoaArrayWrapper.endIndex.getter();
        v19 = v48;
        if (v48)
        {
LABEL_27:
          v91 = 0;
          v347 = (v90 & 0xC000000000000001);
          v4 = v90 & 0xFFFFFFFFFFFFFF8;
          while (1)
          {
            if (v347)
            {
              v92 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              v93 = (v91 + 1);
              if (__OFADD__(v91, 1))
              {
LABEL_38:
                __break(1u);
                goto LABEL_39;
              }
            }

            else
            {
              if (v91 >= *(&dword_10 + (v90 & 0xFFFFFFFFFFFFFF8)))
              {
                __break(1u);
                goto LABEL_158;
              }

              v92 = *(v90 + 8 * v91 + 32);
              v93 = (v91 + 1);
              if (__OFADD__(v91, 1))
              {
                goto LABEL_38;
              }
            }

            v94 = v92;
            if (INPerson.encodeBase64.getter() == v49 && v89 == v95)
            {
              break;
            }

            v96 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v96)
            {
              goto LABEL_70;
            }

            ++v91;
            if (v93 == v19)
            {
              goto LABEL_160;
            }
          }

LABEL_70:

          v149 = static os_log_type_t.default.getter();
          v44 = v94;
          if (os_log_type_enabled(v352, v149))
          {
            v150 = swift_slowAlloc();
            v151 = swift_slowAlloc();
            v353[0] = v151;
            *v150 = 136315138;
            v152 = v94;
            v153 = [v152 description];
            v154 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v156 = v155;

            v157 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v154, v156, v353);

            *(v150 + 4) = v157;
            _os_log_impl(&dword_0, v352, v149, "chosen item %s", v150, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v151);
          }

          v4 = v351;
          v158 = v351[66];
          v159 = v351[63];
          v160 = v351[64];
          v351[16] = v44;
          type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
          static DisambiguationResult.chosenItem(_:)();

          (*(v160 + 8))(v158, v159);
          goto LABEL_73;
        }
      }

      else
      {
        v19 = *(&dword_10 + (v48 & 0xFFFFFFFFFFFFFF8));
        if (v19)
        {
          goto LABEL_27;
        }
      }

LABEL_160:
      v4 = v351;
      (*(v351[64] + 8))(v351[66], v351[63]);

      goto LABEL_186;
    }

LABEL_39:
    (*(*(v4 + 512) + 8))(*(v4 + 528), *(v4 + 504));

LABEL_186:
    v329 = static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)(v329, &dword_0, v352, "parseDisambiguationResult failure, no chosen item", 49, 2, &_swiftEmptyArrayStorage);
    lazy protocol witness table accessor for type ShareETAContactDisambiguationStrategy.ContactDisambiguationStrategyError and conformance ShareETAContactDisambiguationStrategy.ContactDisambiguationStrategyError();
    swift_allocError();
    *v330 = 0;
    swift_willThrow();

    v161 = *(v4 + 8);
    goto LABEL_187;
  }

  if (v8 == enum case for Parse.directInvocation(_:))
  {
    v29 = *(v4 + 560);
    v30 = *(v4 + 184);
    v31 = *(v4 + 192);
    v32 = *(v4 + 176);
    (*(*(v4 + 544) + 96))(v29, *(v4 + 536));
    v34 = *(v30 + 32);
    v33 = (v30 + 32);
    v34(v31, v29, v32);
    v35 = Parse.DirectInvocation.userData.getter();
    if (v35)
    {
      v36 = specialized _dictionaryDownCastConditional<A, B, C, D>(_:)(v35);

      if (v36)
      {
        v37 = *(*(v4 + 168) + 16);
        v38 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v37, v38))
        {
          v33 = swift_slowAlloc();
          *v33 = 0;
          _os_log_impl(&dword_0, v37, v38, "choose by index", v33, 2u);
        }

        if (*(v36 + 16))
        {
          v39 = specialized __RawDictionaryStorage.find<A>(_:)(0x7865646E69, 0xE500000000000000);
          if (v40)
          {
            v41 = *(*(v36 + 56) + 8 * v39);

            v42 = PaginatedItemContainer.items.getter();
            if ((v42 & 0xC000000000000001) != 0)
            {
              goto LABEL_179;
            }

            if ((v41 & 0x8000000000000000) != 0)
            {
              __break(1u);
            }

            else if (v41 < *(&dword_10 + (v42 & 0xFFFFFFFFFFFFFF8)))
            {
              v43 = *(v42 + 8 * v41 + 32);
              goto LABEL_15;
            }

            __break(1u);
            goto LABEL_182;
          }
        }
      }
    }

    v117 = Parse.DirectInvocation.userData.getter();
    if (!v117 || (v118 = specialized _dictionaryDownCastConditional<A, B, C, D>(_:)(v117), , !v118))
    {
      v132 = *(v4 + 184);
      v133 = *(v4 + 192);
      v134 = *(v4 + 168);
      v135 = *(v4 + 176);
      v136 = static os_log_type_t.error.getter();
      v352 = *(v134 + 16);
      os_log(_:dso:log:_:_:)(v136, &dword_0, v352, "invalid payload data", 20, 2, &_swiftEmptyArrayStorage);
LABEL_54:
      (*(v132 + 8))(v133, v135);
      goto LABEL_186;
    }

    if (!*(v118 + 16) || (v119 = specialized __RawDictionaryStorage.find<A>(_:)(0x6E65697069636552, 0xE900000000000074), (v120 & 1) == 0))
    {
      v193 = *(v4 + 184);
      v194 = *(v4 + 192);
      v196 = *(v4 + 168);
      v195 = *(v4 + 176);

      v197 = static os_log_type_t.error.getter();
      v352 = *(v196 + 16);
      os_log(_:dso:log:_:_:)(v197, &dword_0, v352, "invalid payload data for contact", 32, 2, &_swiftEmptyArrayStorage);
      (*(v193 + 8))(v194, v195);
      goto LABEL_186;
    }

    v121 = *(v4 + 168);
    v122 = (*(v118 + 56) + 16 * v119);
    v36 = *v122;
    v33 = v122[1];

    v123 = static os_log_type_t.default.getter();
    v3 = *(v121 + 16);
    if (os_log_type_enabled(v3, v123))
    {
      v124 = swift_slowAlloc();
      v125 = swift_slowAlloc();
      v353[0] = v125;
      *v124 = 136315138;
      *(v4 + 16) = v36;
      *(v4 + 24) = v33;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
      v126 = String.init<A>(describing:)();
      v128 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v126, v127, v353);

      *(v124 + 4) = v128;
      _os_log_impl(&dword_0, v3, v123, "From Payload person: %s", v124, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v125);
    }

    v129 = PaginatedItemContainer.items.getter();
    v2 = v129;
    if (!(v129 >> 62))
    {
      v130 = *(&dword_10 + (v129 & 0xFFFFFFFFFFFFFF8));
      v352 = v3;
      if (!v130)
      {
LABEL_183:
        v132 = *(v4 + 184);
        v133 = *(v4 + 192);
        v135 = *(v4 + 176);

        goto LABEL_54;
      }

      goto LABEL_52;
    }

LABEL_182:
    v130 = _CocoaArrayWrapper.endIndex.getter();
    v352 = v3;
    if (!v130)
    {
      goto LABEL_183;
    }

LABEL_52:
    v131 = 0;
    v342 = v2 & 0xC000000000000001;
    v333 = v2 & 0xFFFFFFFFFFFFFF8;
    v337 = 136315138;
    v335 = v33;
    v338 = v130;
    while (1)
    {
      if (v342)
      {
        v137 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v131 >= *(v333 + 16))
        {
          goto LABEL_166;
        }

        v137 = *(v2 + 8 * v131 + 32);
      }

      v44 = v137;
      if (__OFADD__(v131, 1))
      {
        break;
      }

      v348 = v131 + 1;
      v138 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v3, v138))
      {
        v139 = swift_slowAlloc();
        v140 = swift_slowAlloc();
        v353[0] = v140;
        *v139 = 136315138;
        v141 = INPerson.encodeBase64.getter();
        v143 = v2;
        v144 = v36;
        v145 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v141, v142, v353);
        v4 = v351;

        *(v139 + 4) = v145;
        v36 = v144;
        v2 = v143;
        _os_log_impl(&dword_0, v352, v138, "person from list: %s", v139, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v140);
        v3 = v352;
        v33 = v335;
      }

      v146 = INPerson.encodeBase64.getter();
      if (v33)
      {
        if (v146 == v36 && v33 == v147)
        {

LABEL_153:

          v304 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v3, v304))
          {
            v305 = swift_slowAlloc();
            v306 = swift_slowAlloc();
            v353[0] = v306;
            *v305 = 136315138;
            v307 = v44;
            v308 = [v307 description];
            v309 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v311 = v310;

            v312 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v309, v311, v353);

            *(v305 + 4) = v312;
            _os_log_impl(&dword_0, v3, v304, "chosen item %s", v305, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v306);
          }

          v314 = *(v4 + 184);
          v313 = *(v4 + 192);
          v315 = *(v4 + 176);
          *(v4 + 80) = v44;
          type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
          static DisambiguationResult.chosenItem(_:)();
          (*(v314 + 8))(v313, v315);
          goto LABEL_73;
        }

        v148 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v148)
        {
          goto LABEL_153;
        }
      }

      else
      {
      }

      ++v131;
      if (v348 == v338)
      {
        goto LABEL_183;
      }
    }

LABEL_164:
    __break(1u);
LABEL_165:
    __break(1u);
LABEL_166:
    __break(1u);
    goto LABEL_167;
  }

  if (v8 == enum case for Parse.pommesResponse(_:))
  {
    v71 = *(v4 + 560);
    v73 = *(v4 + 480);
    v72 = *(v4 + 488);
    v74 = *(v4 + 472);
    v75 = *(v4 + 168);
    v76 = *(v4 + 152);
    (*(*(v4 + 544) + 96))(v71, *(v4 + 536));
    v77 = *v71;
    v78 = static os_log_type_t.default.getter();
    v79 = *(v75 + 16);
    (*(v73 + 16))(v72, v76, v74);
    v352 = v79;
    if (os_log_type_enabled(v79, v78))
    {
      v81 = *(v4 + 480);
      v80 = *(v4 + 488);
      v82 = *(v4 + 472);
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v353[0] = v84;
      *v83 = 136315138;
      Input.parse.getter();
      v85 = String.init<A>(describing:)();
      v87 = v86;
      (*(v81 + 8))(v80, v82);
      v79 = v352;
      v88 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v85, v87, v353);

      *(v83 + 4) = v88;
      _os_log_impl(&dword_0, v352, v78, "parseDisambiguationResponse pommesResponse input.parse: %s", v83, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v84);
    }

    else
    {
      (*(*(v4 + 480) + 8))(*(v4 + 488), *(v4 + 472));
    }

    v162 = *(v4 + 440);
    v163 = *(v4 + 448);
    v164 = *(v4 + 432);
    v165 = *(v4 + 160);
    type metadata accessor for LocationSearchIntent(0);
    swift_allocObject();
    v337 = v77;
    v166 = LocationSearchIntent.init(from:)(v337);
    v167 = static os_log_type_t.info.getter();
    v168 = *(v162 + 16);
    v168(v163, v165, v164);
    if (os_log_type_enabled(v79, v167))
    {
      v340 = *(v4 + 456);
      v343 = *(v4 + 448);
      v349 = v167;
      v169 = *(v4 + 432);
      v170 = *(v4 + 440);
      v171 = swift_slowAlloc();
      v353[0] = swift_slowAlloc();
      *v171 = 136315394;
      *(v4 + 112) = v166;
      lazy protocol witness table accessor for type LocationSearchIntent and conformance LocationSearchIntent(&lazy protocol witness table cache variable for type LocationSearchIntent and conformance LocationSearchIntent, type metadata accessor for LocationSearchIntent, &protocol conformance descriptor for LocationSearchIntent);
      v172 = NLIntentWrapper.description.getter();
      v174 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v172, v173, v353);

      *(v171 + 4) = v174;
      *(v171 + 12) = 2080;
      v168(v340, v343, v169);
      v175 = String.init<A>(describing:)();
      v177 = v176;
      (*(v170 + 8))(v343, v169);
      v79 = v352;
      v178 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v175, v177, v353);

      *(v171 + 14) = v178;
      _os_log_impl(&dword_0, v352, v349, "intent %s, paginatedItems %s", v171, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      (*(*(v4 + 440) + 8))(*(v4 + 448), *(v4 + 432));
    }

    v181 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v79, v181))
    {
      v182 = swift_slowAlloc();
      v183 = swift_slowAlloc();
      v353[0] = v183;
      *v182 = 136315138;
      v184 = PommesResponse.firstGeoExperience.getter();
      if (v184)
      {
        v186 = *(v4 + 416);
        v185 = *(v4 + 424);
        v188 = *(v4 + 400);
        v187 = *(v4 + 408);
        v189 = *(v4 + 392);
        v190 = v351[48];
        GeoExperience.geoClientComponent.getter();

        Apple_Parsec_Siri_V2alpha_GeoClientComponent.locationSearchNode.getter();
        (*(v186 + 8))(v185, v187);
        v79 = v352;
        v184 = Apple_Parsec_Siri_V2alpha_LocationSearchNode.personPlaceID.getter();
        v192 = v191;
        (*(v189 + 8))(v188, v190);
        v4 = v351;
      }

      else
      {
        v192 = 0;
      }

      *(v4 + 48) = v184;
      *(v4 + 56) = v192;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
      v222 = String.init<A>(describing:)();
      v224 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v222, v223, v353);

      *(v182 + 4) = v224;
      _os_log_impl(&dword_0, v79, v181, "PPID: %s", v182, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v183);
    }

    v225 = PommesResponse.firstGeoExperience.getter();
    if (!v225)
    {
LABEL_170:
      v319 = (*(**(v4 + 168) + 168))();
      v320 = *(v319 + 16);
      if (v320)
      {
        v321 = (v319 + 40);
        do
        {
          v326 = *(v321 - 1);
          v325 = *v321;

          v327 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v352, v327))
          {
            v322 = swift_slowAlloc();
            v323 = swift_slowAlloc();
            v353[0] = v323;
            *v322 = 136315138;
            v324 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v326, v325, v353);

            *(v322 + 4) = v324;
            _os_log_impl(&dword_0, v352, v327, "handle %s", v322, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v323);
          }

          else
          {
          }

          v321 += 2;
          --v320;
        }

        while (v320);

        v4 = v351;
      }

      else
      {
      }

      goto LABEL_186;
    }

    v226 = v225;
    v227 = *(v4 + 424);
    v228 = *(v4 + 408);
    v229 = *(v4 + 416);
    v230 = *(v4 + 392);
    v231 = *(v4 + 400);
    v232 = *(v4 + 384);
    v233 = *(v4 + 168);
    GeoExperience.geoClientComponent.getter();

    Apple_Parsec_Siri_V2alpha_GeoClientComponent.locationSearchNode.getter();
    (*(v229 + 8))(v227, v228);
    v4 = Apple_Parsec_Siri_V2alpha_LocationSearchNode.personPlaceID.getter();
    v131 = v234;
    (*(v230 + 8))(v231, v232);
    v36 = PaginatedItemContainer.items.getter();
    v338 = (*(*v233 + 168))();
    if (!(v36 >> 62))
    {
      v235 = *(&dword_10 + (v36 & 0xFFFFFFFFFFFFFF8));
      if (!v235)
      {
        goto LABEL_168;
      }

      goto LABEL_100;
    }

LABEL_167:
    v235 = _CocoaArrayWrapper.endIndex.getter();
    if (!v235)
    {
LABEL_168:

LABEL_169:
      v4 = v351;
      goto LABEL_170;
    }

LABEL_100:
    v236 = 0;
    v237 = (v338 + 40);
    while (1)
    {
      if ((v36 & 0xC000000000000001) != 0)
      {
        v238 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v236 >= *(&dword_10 + (v36 & 0xFFFFFFFFFFFFFF8)))
        {
          __break(1u);
LABEL_162:
          __break(1u);
          goto LABEL_163;
        }

        v238 = *(v36 + 8 * v236 + 32);
      }

      v44 = v238;
      v239 = *(v338 + 16);
      if (v236 == v239)
      {

        goto LABEL_169;
      }

      if (v236 >= v239)
      {
        goto LABEL_162;
      }

      v240 = *v237;
      v345 = *(v237 - 1);

      if (INPerson.encodeBase64.getter() == v4 && v241 == v131)
      {

        goto LABEL_146;
      }

      v242 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v242)
      {
        goto LABEL_146;
      }

      if (v345 == v4 && v240 == v131)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        goto LABEL_146;
      }

      ++v236;

      v237 += 2;
      if (v235 == v236)
      {
        goto LABEL_168;
      }
    }

    v345 = v4;
LABEL_146:

    v287 = static os_log_type_t.default.getter();
    v288 = v352;
    if (os_log_type_enabled(v352, v287))
    {
      v289 = swift_slowAlloc();
      v290 = swift_slowAlloc();
      v353[0] = v290;
      *v289 = 136315138;
      v291 = v44;
      v292 = [v291 description];
      v293 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v295 = v294;

      v296 = v293;
      v288 = v352;
      v297 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v296, v295, v353);

      *(v289 + 4) = v297;
      _os_log_impl(&dword_0, v352, v287, "chosen item %s", v289, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v290);
    }

    v298 = static os_log_type_t.info.getter();
    v4 = v351;
    if (os_log_type_enabled(v288, v298))
    {
      v299 = swift_slowAlloc();
      v353[0] = swift_slowAlloc();
      *v299 = 136315394;
      v300 = INPerson.encodeBase64.getter();
      v302 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v300, v301, v353);

      *(v299 + 4) = v302;
      *(v299 + 12) = 2080;
      v303 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v345, v240, v353);

      *(v299 + 14) = v303;
      _os_log_impl(&dword_0, v288, v298, "sessionHandle: %s\nAlternateHandle: %s", v299, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v351[13] = v44;
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
    static DisambiguationResult.chosenItem(_:)();

    goto LABEL_73;
  }

  v97 = *(v4 + 560);
  v98 = *(v4 + 544);
  v99 = *(v4 + 536);
  if (v8 != enum case for Parse.uso(_:))
  {
    v179 = *(v4 + 168);
    v180 = static os_log_type_t.default.getter();
    v352 = *(v179 + 16);
    os_log(_:dso:log:_:_:)(v180, &dword_0, v352, "parseDisambiguationResult failure, no supported parse", 53, 2, &_swiftEmptyArrayStorage);
    (*(v98 + 8))(v97, v99);
    goto LABEL_186;
  }

  v101 = *(v4 + 368);
  v100 = *(v4 + 376);
  v102 = *(v4 + 352);
  v103 = *(v4 + 360);
  v104 = *(v4 + 168);
  (*(v98 + 96))(*(v4 + 560), *(v4 + 536));
  (*(v103 + 32))(v100, v97, v102);
  (*(*v104 + 152))(1);
  v105 = static os_log_type_t.default.getter();
  v106 = v104[2];
  (*(v103 + 16))(v101, v100, v102);
  v107 = os_log_type_enabled(v106, v105);
  v109 = *(v4 + 360);
  v108 = *(v4 + 368);
  v110 = *(v4 + 352);
  if (v107)
  {
    v111 = swift_slowAlloc();
    v112 = swift_slowAlloc();
    v353[0] = v112;
    *v111 = 136315138;
    v113 = USOParse.debugDescription.getter();
    v115 = v114;
    v337 = *(v109 + 8);
    (v337)(v108, v110);
    v116 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v113, v115, v353);

    *(v111 + 4) = v116;
    _os_log_impl(&dword_0, v106, v105, "received parse: %s", v111, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v112);
  }

  else
  {
    v337 = *(v109 + 8);
    (v337)(*(v4 + 368), *(v4 + 352));
  }

  v352 = v106;
  v198 = *(v4 + 304);
  v199 = *(v4 + 312);
  v200 = *(v4 + 296);
  USOParse.userParse.getter();
  v201 = Siri_Nlu_External_UserParse.userDialogActs.getter();
  (*(v198 + 8))(v199, v200);
  if (!*(v201 + 16))
  {
    (v337)(*(v4 + 376), *(v4 + 352));

    goto LABEL_186;
  }

  v203 = *(v4 + 328);
  v202 = *(v4 + 336);
  v204 = *(v4 + 320);
  v205 = v4;
  v208 = v4 + 280;
  v207 = *(v4 + 280);
  v206 = *(v208 + 8);
  v209 = v205[33];
  v36 = v205[34];
  v210 = v205[31];
  v211 = v205[32];
  (*(v203 + 16))(v202, v201 + ((*(v203 + 80) + 32) & ~*(v203 + 80)), v204);

  Siri_Nlu_External_UserDialogAct.userStatedTask.getter();
  (*(v203 + 8))(v202, v204);
  Siri_Nlu_External_UserStatedTask.task.getter();
  (*(v207 + 8))(v206, v36);
  v212 = Siri_Nlu_External_UsoGraph.identifiers.getter();
  (*(v211 + 8))(v209, v210);
  v344 = *(v212 + 16);
  if (!v344)
  {
LABEL_94:

    v221 = 1;
    v4 = v351;
    goto LABEL_121;
  }

  v131 = 0;
  v213 = v351[29];
  v214 = (v351[26] + 8);
  v4 = v213 + 8;
  while (1)
  {
    if (v131 >= *(v212 + 16))
    {
LABEL_163:
      __break(1u);
      goto LABEL_164;
    }

    v215 = v351[27];
    v36 = v351[25];
    (*(v213 + 16))(v351[30], v212 + ((*(v213 + 80) + 32) & ~*(v213 + 80)) + *(v213 + 72) * v131, v351[28]);
    Siri_Nlu_External_UsoEntityIdentifier.namespace.getter();
    v216 = Google_Protobuf_StringValue.value.getter();
    v218 = v217;
    (*v214)(v215, v36);
    if (v216 == 0x64695F6D657469 && v218 == 0xE700000000000000)
    {
      break;
    }

    v220 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v220)
    {
      goto LABEL_120;
    }

    ++v131;
    (*v4)(v351[30], v351[28]);
    if (v344 == v131)
    {
      goto LABEL_94;
    }
  }

LABEL_120:
  v4 = v351;
  v243 = v351[43];
  v245 = v351[29];
  v244 = v351[30];
  v246 = v351[28];

  (*(v245 + 32))(v243, v244, v246);
  v221 = 0;
LABEL_121:
  v36 = v352;
  v247 = *(v4 + 344);
  v249 = *(v4 + 224);
  v248 = *(v4 + 232);
  (*(v248 + 56))(v247, v221, 1, v249);
  if ((*(v248 + 48))(v247, 1, v249) == 1)
  {
    v250 = *(v4 + 344);
    (v337)(*(v4 + 376), *(v4 + 352));
    outlined destroy of Mirror.DisplayStyle?(v250, &_s12SiriNLUTypes0A33_Nlu_External_UsoEntityIdentifierVSgMd, &_s12SiriNLUTypes0A33_Nlu_External_UsoEntityIdentifierVSgMR);
    goto LABEL_186;
  }

  v251 = *(v4 + 344);
  v253 = *(v4 + 224);
  v252 = *(v4 + 232);
  v254 = Siri_Nlu_External_UsoEntityIdentifier.value.getter();
  v256 = v255;
  (*(v252 + 8))(v251, v253);
  v257 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v352, v257))
  {
    v258 = swift_slowAlloc();
    v259 = swift_slowAlloc();
    v353[0] = v259;
    *v258 = 136315138;
    *(v258 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v254, v256, v353);
    _os_log_impl(&dword_0, v352, v257, "contactId on disambiguation is %s", v258, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v259);
  }

  v260 = PaginatedItemContainer.items.getter();
  v261 = v260;
  if (!(v260 >> 62))
  {
    v262 = *(&dword_10 + (v260 & 0xFFFFFFFFFFFFFF8));
    if (v262)
    {
      goto LABEL_127;
    }

LABEL_185:

    (v337)(*(v4 + 376), *(v4 + 352));
    goto LABEL_186;
  }

  v328 = v260;
  v262 = _CocoaArrayWrapper.endIndex.getter();
  v261 = v328;
  if (!v262)
  {
    goto LABEL_185;
  }

LABEL_127:
  v131 = 0;
  v350 = v261 & 0xC000000000000001;
  v332 = v261 & 0xFFFFFFFFFFFFFF8;
  v338 = v262;
  v346 = v261;
  v334 = v254;
  v336 = v256;
  while (2)
  {
    if (v350)
    {
      v264 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_134:
      v44 = v264;
      v265 = v131 + 1;
      if (__OFADD__(v131, 1))
      {
        goto LABEL_165;
      }

      v266 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v36, v266))
      {
        v267 = swift_slowAlloc();
        v353[0] = swift_slowAlloc();
        *v267 = 136315394;
        v268 = v44;
        v269 = [v268 description];
        v270 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v272 = v271;

        v273 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v270, v272, v353);

        *(v267 + 4) = v273;
        *(v267 + 12) = 2080;
        v274 = [v268 contactIdentifier];
        if (v274)
        {
          v275 = v274;
          v276 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v278 = v277;
        }

        else
        {
          v276 = 0;
          v278 = 0;
        }

        v351[4] = v276;
        v351[5] = v278;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
        v279 = String.init<A>(describing:)();
        v281 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v279, v280, v353);

        *(v267 + 14) = v281;
        v36 = v352;
        _os_log_impl(&dword_0, v352, v266, "%s has contactId %s", v267, 0x16u);
        swift_arrayDestroy();

        v254 = v334;
        v256 = v336;
      }

      v282 = [v44 contactIdentifier];
      v4 = v351;
      if (v282)
      {
        v283 = v282;
        v284 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v286 = v285;

        if (v254 == v284 && v256 == v286)
        {

LABEL_156:
          v316 = v351[47];
          v317 = v351[44];

          v351[12] = v44;
          type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
          static DisambiguationResult.chosenItem(_:)();
          (v337)(v316, v317);
          goto LABEL_73;
        }

        v263 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v263)
        {
          goto LABEL_156;
        }
      }

      ++v131;
      v261 = v346;
      if (v265 == v338)
      {
        goto LABEL_185;
      }

      continue;
    }

    break;
  }

  if (v131 < *(v332 + 16))
  {
    v264 = *(v261 + 8 * v131 + 32);
    goto LABEL_134;
  }

  __break(1u);
LABEL_179:
  v43 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_15:
  v44 = v43;
  v46 = *(v4 + 184);
  v45 = *(v4 + 192);
  v47 = *(v4 + 176);

  *(v4 + 88) = v44;
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
  static DisambiguationResult.chosenItem(_:)();
  (*(v46 + 8))(v45, v47);
LABEL_73:

  v161 = *(v4 + 8);
LABEL_187:

  return v161();
}