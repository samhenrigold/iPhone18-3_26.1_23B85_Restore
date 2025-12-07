uint64_t StringProtocol.index<A>(of:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14 - v7;
  v9 = type metadata accessor for Locale();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = StringProtocol.range<A>(of:options:range:locale:)();
  v12 = v11;
  outlined destroy of ReferenceResolutionClientProtocol?(v8, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  if (v12)
  {
    return 0;
  }

  else
  {
    return v10;
  }
}

uint64_t SiriKitRequestEvent.appId.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SiriKitRequestEvent.appId.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t SiriKitRequestEvent.appDisplayName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t SiriKitRequestEvent.appDisplayName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t SiriKitRequestEvent.appVersion.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t SiriKitRequestEvent.appVersion.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t SiriKitRequestEvent.eventReliabilityCode.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t SiriKitRequestEvent.eventReliabilityCode.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t SiriKitRequestEvent.intentName.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

uint64_t SiriKitRequestEvent.intentName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return result;
}

double SiriKitRequestEvent.init(intentName:errorCode:app:eventReliabilityCode:)@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v42 = a5;
  v52 = a3;
  v49 = a1;
  v11 = type metadata accessor for SiriKitReliabilityCodes();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v12 + 104);
  v40 = *MEMORY[0x1E69CFCC0];
  v39 = v16;
  v16(v15, v13);
  SiriKitReliabilityCodes.rawValue.getter();
  v50 = v17;
  v41 = *(v12 + 8);
  v41(v15, v11);
  type metadata accessor for AppInformationResolver();
  swift_allocObject();

  v51 = a4;
  AppInformationResolver.init(app:)();
  v18 = dispatch thunk of AppInformationResolver.resolveAppName.getter();
  v46 = v19;
  v47 = v18;
  v20 = dispatch thunk of AppInformationResolver.resolveAppBundleId.getter();
  v44 = v21;
  v45 = v20;
  v22 = a6;
  v43 = dispatch thunk of AppInformationResolver.resolveAppVersion.getter();
  v24 = v23;
  v25 = specialized static SiriKitMetricsUtils.formulateIntentTypeName(intentTypeName:)(v49, a2);
  v48 = v26;
  v49 = v25;

  if (v22)
  {

    v27 = v42;
  }

  else
  {
    v39(v15, v40, v11);
    v27 = SiriKitReliabilityCodes.rawValue.getter();
    v22 = v28;

    v41(v15, v11);
  }

  v29 = 0xEE00656C62616369;
  if (v24)
  {
    v30 = v24;
  }

  else
  {
    v30 = 0xEE00656C62616369;
  }

  v31 = 0x6C7070615F746F6ELL;
  v32 = v43;
  v33 = v44;
  if (!v24)
  {
    v32 = 0x6C7070615F746F6ELL;
  }

  if (!v44)
  {
    v33 = 0xEE00656C62616369;
  }

  v34 = v45;
  if (!v44)
  {
    v34 = 0x6C7070615F746F6ELL;
  }

  *&v54 = v34;
  *(&v54 + 1) = v33;
  if (v46)
  {
    v29 = v46;
    v31 = v47;
  }

  *&v55 = v31;
  *(&v55 + 1) = v29;
  *&v56 = v32;
  *(&v56 + 1) = v30;
  *&v57 = v27;
  *(&v57 + 1) = v22;
  *&v58 = v52;
  *(&v58 + 1) = v49;
  v59 = v48;
  v60[0] = v34;
  v60[1] = v33;
  v60[2] = v31;
  v60[3] = v29;
  v60[4] = v32;
  v60[5] = v30;
  v60[6] = v27;
  v60[7] = v22;
  v60[8] = v52;
  v60[9] = v49;
  v60[10] = v48;
  outlined init with copy of SiriKitRequestEvent(&v54, &v53);
  outlined destroy of SiriKitRequestEvent(v60);
  v35 = v57;
  v36 = v58;
  *(a7 + 32) = v56;
  *(a7 + 48) = v35;
  *(a7 + 64) = v36;
  *(a7 + 80) = v59;
  result = *&v54;
  v38 = v55;
  *a7 = v54;
  *(a7 + 16) = v38;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SiriKitRequestEvent.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized SiriKitRequestEvent.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SiriKitRequestEvent.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SiriKitRequestEvent.CodingKeys and conformance SiriKitRequestEvent.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SiriKitRequestEvent.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SiriKitRequestEvent.CodingKeys and conformance SiriKitRequestEvent.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double SiriKitRequestEvent.init(from:)@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  specialized SiriKitRequestEvent.init(from:)(a2, v7);
  if (!v2)
  {
    v5 = v7[3];
    *(a1 + 32) = v7[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v7[4];
    *(a1 + 80) = v8;
    result = *v7;
    v6 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v6;
  }

  return result;
}

double protocol witness for Decodable.init(from:) in conformance SiriKitRequestEvent@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  specialized SiriKitRequestEvent.init(from:)(a2, v7);
  if (!v2)
  {
    v5 = v7[3];
    *(a1 + 32) = v7[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v7[4];
    *(a1 + 80) = v8;
    result = *v7;
    v6 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v6;
  }

  return result;
}

uint64_t specialized SiriKitRequestEvent.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449707061 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C70736944707061 && a2 == 0xEE00656D614E7961 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6973726556707061 && a2 == 0xEA00000000006E6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001DCA7B940 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x646F43726F727265 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x614E746E65746E69 && a2 == 0xEA0000000000656DLL)
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

void *specialized SiriKitRequestEvent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14SiriKitRuntime0dE12RequestEventV10CodingKeys33_DF7F56B143B9EF9A0CA1FEB064988665LLOGMd, &_ss22KeyedDecodingContainerVy14SiriKitRuntime0dE12RequestEventV10CodingKeys33_DF7F56B143B9EF9A0CA1FEB064988665LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v34 - v7;
  v9 = type metadata accessor for SiriKitReliabilityCodes();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 104))(v13, *MEMORY[0x1E69CFCC0], v9, v11);
  SiriKitReliabilityCodes.rawValue.getter();
  v41 = v14;
  (*(v10 + 8))(v13, v9);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SiriKitRequestEvent.CodingKeys and conformance SiriKitRequestEvent.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    v15 = v6;
    v40 = a2;
    LOBYTE(v48[0]) = 0;
    v16 = KeyedDecodingContainer.decode(_:forKey:)();
    v18 = v17;
    LOBYTE(v48[0]) = 1;
    v19 = KeyedDecodingContainer.decode(_:forKey:)();
    v21 = v20;
    v38 = v19;
    LOBYTE(v48[0]) = 2;
    v22 = KeyedDecodingContainer.decode(_:forKey:)();
    v39 = v23;
    v36 = v22;
    LOBYTE(v48[0]) = 3;
    v37 = 0;
    *&v35 = KeyedDecodingContainer.decode(_:forKey:)();
    *(&v35 + 1) = v24;

    LOBYTE(v48[0]) = 4;
    v41 = KeyedDecodingContainer.decode(_:forKey:)();
    v53 = 5;
    v34 = KeyedDecodingContainer.decode(_:forKey:)();
    v26 = v25;
    (*(v15 + 8))(v8, v5);
    *&v42 = v16;
    *(&v42 + 1) = v18;
    *&v43 = v38;
    *(&v43 + 1) = v21;
    *&v44 = v36;
    v27 = v39;
    *(&v44 + 1) = v39;
    v45 = v35;
    v28 = v41;
    *&v46 = v41;
    v29 = v34;
    *(&v46 + 1) = v34;
    v47 = v26;
    outlined init with copy of SiriKitRequestEvent(&v42, v48);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v48[0] = v16;
    v48[1] = v18;
    v48[2] = v38;
    v48[3] = v21;
    v48[4] = v36;
    v48[5] = v27;
    v49 = v35;
    v50 = v28;
    v51 = v29;
    v52 = v26;
    result = outlined destroy of SiriKitRequestEvent(v48);
    v31 = v45;
    v32 = v40;
    *(v40 + 32) = v44;
    *(v32 + 48) = v31;
    *(v32 + 64) = v46;
    *(v32 + 80) = v47;
    v33 = v43;
    *v32 = v42;
    *(v32 + 16) = v33;
  }

  return result;
}

void *assignWithCopy for SiriKitRequestEvent(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  a1[2] = a2[2];
  a1[3] = a2[3];

  a1[4] = a2[4];
  a1[5] = a2[5];

  a1[6] = a2[6];
  a1[7] = a2[7];

  a1[8] = a2[8];
  a1[9] = a2[9];
  a1[10] = a2[10];

  return a1;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t assignWithTake for SiriKitRequestEvent(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  v5 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v5;

  v6 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v6;

  v7 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v7;

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);

  return a1;
}

uint64_t getEnumTagSinglePayload for SiriKitRequestEvent(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t storeEnumTagSinglePayload for SiriKitRequestEvent(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t static Log.begin(_:enableTelemetry:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v10 = static Log.executor;
  OSSignpostID.init(log:)();
  v11 = static os_signpost_type_t.begin.getter();
  if (a4)
  {
    return os_signpost(_:dso:log:name:signpostID:_:_:)(v11, &dword_1DC659000, v10, a1, a2, a3, a5, "enableTelemetry=YES", 19, 2, MEMORY[0x1E69E7CC0]);
  }

  return os_signpost(_:dso:log:name:signpostID:)();
}

uint64_t *Log.executor.unsafeMutableAddressor()
{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  return &static Log.executor;
}

uint64_t OSSignposter.withIntervalSignpostTelemetryEnabledAsync<A>(_:id:around:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 56) = a7;
  *(v8 + 64) = v7;
  *(v8 + 40) = a5;
  *(v8 + 48) = a6;
  *(v8 + 96) = a4;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 16) = a1;
  return MEMORY[0x1EEE6DFA0](OSSignposter.withIntervalSignpostTelemetryEnabledAsync<A>(_:id:around:), 0, 0);
}

uint64_t OSSignposter.withIntervalSignpostTelemetryEnabledAsync<A>(_:id:around:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 48);
  *(v2 + 72) = OSSignposter.beginIntervalTelemetryEnabled(_:id:)(*(v2 + 24), a2, *(v2 + 96), *(v2 + 40));
  v7 = (v3 + *v3);
  v4 = swift_task_alloc();
  *(v2 + 80) = v4;
  *v4 = v2;
  v4[1] = OSSignposter.withIntervalSignpostTelemetryEnabledAsync<A>(_:id:around:);
  v5 = *(v2 + 16);

  return v7(v5);
}

uint64_t OSSignposter.withIntervalSignpostTelemetryEnabledAsync<A>(_:id:around:)()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = OSSignposter.withIntervalSignpostTelemetryEnabledAsync<A>(_:id:around:);
  }

  else
  {
    v2 = OSSignposter.withIntervalSignpostTelemetryEnabledAsync<A>(_:id:around:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  $defer #1 <A>() in OSSignposter.withIntervalSignpostAsync<A>(_:id:around:)(*(v0 + 64), *(v0 + 24), *(v0 + 32), *(v0 + 96));

  v1 = *(v0 + 8);

  return v1();
}

{
  $defer #1 <A>() in OSSignposter.withIntervalSignpostAsync<A>(_:id:around:)(*(v0 + 64), *(v0 + 24), *(v0 + 32), *(v0 + 96));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t Logger.instrumentation.unsafeMutableAddressor(void *a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4)
{
  if (*a1 == -1)
  {
    v5 = a2(0);
  }

  else
  {
    swift_once();
    v5 = a2(0);
  }

  return __swift_project_value_buffer(v5, a3);
}

uint64_t OSSignposter.withIntervalSignpostAsync<A>(_:id:around:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 64) = a7;
  *(v8 + 72) = v7;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 128) = a4;
  *(v8 + 32) = a2;
  *(v8 + 40) = a3;
  *(v8 + 24) = a1;
  v9 = type metadata accessor for OSSignpostID();
  *(v8 + 80) = v9;
  *(v8 + 88) = *(v9 - 8);
  *(v8 + 96) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](OSSignposter.withIntervalSignpostAsync<A>(_:id:around:), 0, 0);
}

uint64_t OSSignposter.withIntervalSignpostAsync<A>(_:id:around:)(uint64_t a1)
{
  v2 = OSSignposter.logHandle.getter();
  v3 = static os_signpost_type_t.begin.getter();
  result = OS_os_log.signpostsEnabled.getter();
  if (result)
  {
    v5 = *(v1 + 32);
    if ((*(v1 + 128) & 1) == 0)
    {
      if (v5)
      {
LABEL_9:
        v6 = swift_slowAlloc();
        *v6 = 0;
        v7 = OSSignpostID.rawValue.getter();
        _os_signpost_emit_with_name_impl(&dword_1DC659000, v2, v3, v7, v5, "", v6, 2u);
        MEMORY[0x1E12A2F50](v6, -1, -1);
        goto LABEL_10;
      }

      __break(1u);
    }

    if (v5 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v5 & 0xFFFFF800) == 0xD800)
      {
LABEL_15:
        __break(1u);
        return result;
      }

      if (v5 >> 16 <= 0x10)
      {
        v5 = (v1 + 16);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

LABEL_10:

  v8 = *(v1 + 56);
  (*(*(v1 + 88) + 16))(*(v1 + 96), *(v1 + 48), *(v1 + 80));
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  *(v1 + 104) = OSSignpostIntervalState.init(id:isOpen:)();
  v11 = (v8 + *v8);
  v9 = swift_task_alloc();
  *(v1 + 112) = v9;
  *v9 = v1;
  v9[1] = OSSignposter.withIntervalSignpostAsync<A>(_:id:around:);
  v10 = *(v1 + 24);

  return v11(v10);
}

uint64_t OSSignposter.withIntervalSignpostAsync<A>(_:id:around:)()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = OSSignposter.withIntervalSignpostAsync<A>(_:id:around:);
  }

  else
  {
    v2 = OSSignposter.withIntervalSignpostAsync<A>(_:id:around:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  $defer #1 <A>() in OSSignposter.withIntervalSignpostAsync<A>(_:id:around:)(*(v0 + 72), *(v0 + 32), *(v0 + 40), *(v0 + 128));

  v1 = *(v0 + 8);

  return v1();
}

{
  $defer #1 <A>() in OSSignposter.withIntervalSignpostAsync<A>(_:id:around:)(*(v0 + 72), *(v0 + 32), *(v0 + 40), *(v0 + 128));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t static Log.generateSignpostID()()
{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v0 = static Log.executor;

  return OSSignpostID.init(log:)();
}

uint64_t static Log.begin(_:_:enableTelemetry:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v10 = static os_signpost_type_t.begin.getter();
  if (a5)
  {
    if (one-time initialization token for executor != -1)
    {
      v12 = v10;
      swift_once();
      v10 = v12;
    }

    return os_signpost(_:dso:log:name:signpostID:_:_:)(v10, &dword_1DC659000, static Log.executor, a2, a3, a4, a1, "enableTelemetry=YES", 19, 2, MEMORY[0x1E69E7CC0]);
  }

  else
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    return os_signpost(_:dso:log:name:signpostID:)();
  }
}

void static Log.logAFAnalytics(eventType:eventContext:)(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() sharedAnalytics];
  if (v4)
  {
    v5 = v4;
    specialized _dictionaryUpCast<A, B, C, D>(_:)(a2);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v5 logEventWithType:a1 context:isa];
  }
}

uint64_t static Log.event(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = type metadata accessor for OSSignpostID();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_signpost_type_t.event.getter();
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t static Logger.begin(_:)()
{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v4 = static Log.executor;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();

  return os_signpost(_:dso:log:name:signpostID:)();
}

uint64_t Logger.event(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = type metadata accessor for OSSignpostID();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_signpost_type_t.event.getter();
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t one-time initialization function for executor(uint64_t a1)
{
  return one-time initialization function for executor(a1, static Logger.executor, &one-time initialization token for executor, &static Log.executor, one-time initialization function for executor);
}

{
  return one-time initialization function for executor(a1, 0x4574694B69726953, 0xEF726F7475636578, &static Log.executor);
}

uint64_t one-time initialization function for ace(uint64_t a1)
{
  return one-time initialization function for executor(a1, static Logger.ace, &one-time initialization token for ace, &static Log.ace, one-time initialization function for ace);
}

{
  return one-time initialization function for executor(a1, 0x4174694B69726953, 0xEA00000000006563, &static Log.ace);
}

void **Log.ace.unsafeMutableAddressor()
{
  if (one-time initialization token for ace != -1)
  {
    swift_once();
  }

  return &static Log.ace;
}

uint64_t *Log.instrumentation.unsafeMutableAddressor()
{
  if (one-time initialization token for instrumentation != -1)
  {
    swift_once();
  }

  return &static Log.instrumentation;
}

uint64_t one-time initialization function for executor(uint64_t a1, uint64_t *a2, void *a3, id *a4, uint64_t a5)
{
  v8 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v8, a2);
  __swift_project_value_buffer(v8, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v9 = *a4;
  return Logger.init(_:)();
}

uint64_t *Log.conversationBridge.unsafeMutableAddressor()
{
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  return &static Log.conversationBridge;
}

uint64_t one-time initialization function for insightRequestSummaryLogger()
{
  v0 = type metadata accessor for InsightRequestSummaryLogger(0);
  __swift_allocate_value_buffer(v0, static Logger.insightRequestSummaryLogger);
  __swift_project_value_buffer(v0, static Logger.insightRequestSummaryLogger);
  type metadata accessor for OS_os_log();
  OS_os_log.init(subsystem:category:)();
  return Logger.init(_:)();
}

uint64_t static Logger.insightRequestSummaryLogger.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for insightRequestSummaryLogger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for InsightRequestSummaryLogger(0);
  v3 = __swift_project_value_buffer(v2, static Logger.insightRequestSummaryLogger);

  return outlined init with copy of InsightRequestSummaryLogger(v3, a1);
}

uint64_t Logger.makeSignpostID()()
{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v0 = static Log.executor;

  return OSSignpostID.init(log:)();
}

uint64_t static Log.end(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  a5();
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  return os_signpost(_:dso:log:name:signpostID:)();
}

uint64_t one-time initialization function for executor()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OSSignposter();
  __swift_allocate_value_buffer(v4, static Signposter.executor);
  __swift_project_value_buffer(v4, static Signposter.executor);
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, static Logger.executor);
  (*(v1 + 16))(v3, v5, v0);
  return OSSignposter.init(logger:)();
}

uint64_t static Logger.executor.getter@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  if (*a1 == -1)
  {
    v7 = a2(0);
  }

  else
  {
    swift_once();
    v7 = a2(0);
  }

  v8 = v7;
  v9 = __swift_project_value_buffer(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

void OSSignposter.withIntervalSignpostTelemetryEnabled<A>(_:id:around:)(const char *result, uint64_t a2, char a3, uint64_t a4, uint64_t (*a5)(void))
{
  v9 = result;
  if ((a3 & 1) == 0)
  {
    if (result)
    {
      goto LABEL_8;
    }

    __break(1u);
  }

  if (result >> 32)
  {
    __break(1u);
    goto LABEL_12;
  }

  if ((result & 0xFFFFF800) == 0xD800)
  {
LABEL_13:
    __break(1u);
    return;
  }

  if (result >> 16 > 0x10)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = &v11;
LABEL_8:
  v10 = swift_slowAlloc();
  *v10 = 0;
  closure #1 in OSSignposter.withIntervalSignpost<A>(_:id:_:around:)(v10, 2u, v5, a4, v9, "enableTelemetry=YES", a5);
  if (!v6)
  {
    MEMORY[0x1E12A2F50](v10, -1, -1);
  }
}

uint64_t one-time initialization function for executor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  type metadata accessor for OS_os_log();
  result = OS_os_log.init(subsystem:category:)();
  *a4 = result;
  return result;
}

uint64_t one-time initialization function for instrumentation()
{
  type metadata accessor for OS_os_log();
  result = OS_os_log.init(subsystem:category:)();
  static Log.instrumentation = result;
  return result;
}

uint64_t one-time initialization function for conversationBridge()
{
  type metadata accessor for OS_os_log();
  result = OS_os_log.init(subsystem:category:)();
  static Log.conversationBridge = result;
  return result;
}

uint64_t (*static Log.begin<A>(with:andWrap:)(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t (*a4)(uint64_t a1), uint64_t (*a5)(), uint64_t a6))(uint64_t a1)
{
  v32 = a2;
  v33 = a6;
  v31 = a3;
  v9 = type metadata accessor for OSSignpostID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v28 - v14;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v16 = static Log.executor;
  if (OS_os_log.signpostsEnabled.getter())
  {
    v17 = v16;
    OSSignpostID.init(log:)();
    static os_signpost_type_t.begin.getter();
    v18 = a1;
    v19 = v32;
    v20 = v31;
    os_signpost(_:dso:log:name:signpostID:)();
    v29 = a4;
    v30 = a5;
    v21 = v20;
    v22 = *(v10 + 32);
    v22(v12, v15, v9);
    v23 = (*(v10 + 80) + 41) & ~*(v10 + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = v33;
    *(v24 + 24) = v18;
    *(v24 + 32) = v19;
    *(v24 + 40) = v21;
    v25 = v30;
    v22((v24 + v23), v12, v9);
    v26 = (v24 + ((v11 + v23 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v26 = v29;
    v26[1] = v25;
    a4 = partial apply for closure #1 in static Log.begin<A>(with:andWrap:);
  }

  return a4;
}

uint64_t closure #1 in static Log.begin<A>(with:andWrap:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t))
{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.executor);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v11 = 136315138;
    v13 = StaticString.description.getter();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v17);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_1DC659000, v9, v10, "Signposted Completion called %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x1E12A2F50](v12, -1, -1);
    MEMORY[0x1E12A2F50](v11, -1, -1);
  }

  static os_signpost_type_t.end.getter();
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  os_signpost(_:dso:log:name:signpostID:)();
  return a6(a1);
}

uint64_t (*static Log.logAFAnalytics<A>(startEvent:endEvent:andWrap:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t a1)
{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.executor);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 134218240;
    *(v13 + 4) = a1;
    *(v13 + 12) = 2048;
    *(v13 + 14) = a2;
    _os_log_impl(&dword_1DC659000, v11, v12, "AFAnalytics log start : AFAnalyticsEventType %ld - %ld", v13, 0x16u);
    MEMORY[0x1E12A2F50](v13, -1, -1);
  }

  v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&outlined read-only object #0 of static Log.logAFAnalytics<A>(startEvent:endEvent:andWrap:));
  outlined destroy of ReferenceResolutionClientProtocol?(&unk_1F58285F8, &_sSS_SStMd, &_sSS_SStMR);
  v15 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v14);
  v16 = [objc_opt_self() sharedAnalytics];
  if (v16)
  {
    v17 = v16;
    specialized _dictionaryUpCast<A, B, C, D>(_:)(v15);

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v17 logEventWithType:a1 context:isa];
  }

  else
  {
  }

  v19 = swift_allocObject();
  v19[2] = a5;
  v19[3] = a1;
  v19[4] = a2;
  v19[5] = v14;
  v19[6] = a3;
  v19[7] = a4;

  return partial apply for closure #1 in static Log.logAFAnalytics<A>(startEvent:endEvent:andWrap:);
}

uint64_t closure #1 in static Log.logAFAnalytics<A>(startEvent:endEvent:andWrap:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.executor);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 134218240;
    *(v13 + 4) = a2;
    *(v13 + 12) = 2048;
    *(v13 + 14) = a3;
    _os_log_impl(&dword_1DC659000, v11, v12, "AFAnalytics log end : AFAnalyticsEventType %ld - %ld", v13, 0x16u);
    MEMORY[0x1E12A2F50](v13, -1, -1);
  }

  v14 = specialized _dictionaryUpCast<A, B, C, D>(_:)(a4);
  v15 = [objc_opt_self() sharedAnalytics];
  if (v15)
  {
    v16 = v15;
    specialized _dictionaryUpCast<A, B, C, D>(_:)(v14);

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v16 logEventWithType:a3 context:isa];
  }

  else
  {
  }

  return a5(a1);
}

void closure #1 in OSSignposter.withIntervalSignpost<A>(_:id:_:around:)(uint8_t *a1, uint32_t a2, uint64_t a3, uint64_t a4, const char *a5, const char *a6, uint64_t (*a7)(void))
{
  v11 = OSSignposter.logHandle.getter();
  v12 = static os_signpost_type_t.begin.getter();
  v13 = OSSignpostID.rawValue.getter();
  v16 = a1;
  _os_signpost_emit_with_name_impl(&dword_1DC659000, v11, v12, v13, a5, a6, a1, a2);
  a7();
  if (!v18)
  {
    v14 = static os_signpost_type_t.end.getter();
    v15 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_1DC659000, v11, v14, v15, a5, a6, v16, a2);
  }
}

void specialized Logger.debugF(_:_:_:_:)(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = static os_log_type_t.debug.getter();
  log = Logger.logObject.getter();
  if (os_log_type_enabled(log, v9))
  {
    v22 = a1;
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v24 = v11;
    *v10 = 136315650;
    v12 = StaticString.description.getter();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v24);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    v15 = StaticString.description.getter();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v24);

    *(v10 + 14) = v17;
    *(v10 + 22) = 2080;
    v19 = v22(v18);
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v24);

    *(v10 + 24) = v21;
    _os_log_impl(&dword_1DC659000, log, v9, "%s:%s: %s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v11, -1, -1);
    MEMORY[0x1E12A2F50](v10, -1, -1);
  }
}

uint64_t specialized static SiriKitRuntimeCrashHelper.logAndCrash(_:file:line:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v36 = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v30 - v14;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  v17 = __swift_project_value_buffer(v16, static Logger.executor);
  v18 = *(v16 - 8);
  (*(v18 + 16))(v15, v17, v16);
  (*(v18 + 56))(v15, 0, 1, v16);
  outlined init with copy of Logger?(v15, v12);
  if ((*(v18 + 48))(v12, 1, v16) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v12, &_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
  }

  else
  {

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    v34 = v20;
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v35 = a6;
      v22 = v21;
      v32 = swift_slowAlloc();
      v37 = v32;
      *v22 = 136315650;
      v23 = StaticString.description.getter();
      v33 = a4;
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v37);
      v31 = v19;
      v26 = v25;

      *(v22 + 4) = v26;
      *(v22 + 12) = 2048;
      *(v22 + 14) = v35;
      *(v22 + 22) = 2080;
      *(v22 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v37);
      v27 = v31;
      _os_log_impl(&dword_1DC659000, v31, v34, "FatalError at %s:%lu - %s", v22, 0x20u);
      v28 = v32;
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v28, -1, -1);
      MEMORY[0x1E12A2F50](v22, -1, -1);
    }

    else
    {
    }

    (*(v18 + 8))(v12, v16);
  }

  static SiriKitLifecycle._logCrashToEventBus(_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t partial apply for closure #1 in static Log.begin<A>(with:andWrap:)(uint64_t a1)
{
  v3 = *(type metadata accessor for OSSignpostID() - 8);
  v4 = (*(v3 + 80) + 41) & ~*(v3 + 80);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v1 + 40);

  return closure #1 in static Log.begin<A>(with:andWrap:)(a1, v5, v6, v8, v1 + v4, v7);
}

void specialized Logger.debugF(_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v8 = static os_log_type_t.debug.getter();
  log = Logger.logObject.getter();
  if (os_log_type_enabled(log, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v9 = 136315650;
    v11 = StaticString.description.getter();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v19);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    v14 = StaticString.description.getter();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v19);

    *(v9 + 14) = v16;
    *(v9 + 22) = 2080;
    _StringGuts.grow(_:)(33);
    MEMORY[0x1E12A1580](0xD00000000000001FLL, 0x80000001DCA899A0);
    _print_unlocked<A, B>(_:_:)();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, &v19);

    *(v9 + 24) = v17;
    _os_log_impl(&dword_1DC659000, log, v8, "%s:%s: %s", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v10, -1, -1);
    MEMORY[0x1E12A2F50](v9, -1, -1);
  }

  else
  {
  }
}

void specialized Logger.debugF(_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = static os_log_type_t.debug.getter();
  log = Logger.logObject.getter();
  if (os_log_type_enabled(log, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315650;
    v9 = StaticString.description.getter();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v16);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    v12 = StaticString.description.getter();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v16);

    *(v7 + 14) = v14;
    *(v7 + 22) = 2080;
    *(v7 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000019, 0x80000001DCA89900, &v16);
    _os_log_impl(&dword_1DC659000, log, v6, "%s:%s: %s", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v8, -1, -1);
    MEMORY[0x1E12A2F50](v7, -1, -1);
  }
}

{
  v6 = static os_log_type_t.debug.getter();
  log = Logger.logObject.getter();
  if (os_log_type_enabled(log, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315650;
    v9 = StaticString.description.getter();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v16);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    v12 = StaticString.description.getter();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v16);

    *(v7 + 14) = v14;
    *(v7 + 22) = 2080;
    *(v7 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000049, 0x80000001DCA7FB70, &v16);
    _os_log_impl(&dword_1DC659000, log, v6, "%s:%s: %s", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v8, -1, -1);
    MEMORY[0x1E12A2F50](v7, -1, -1);
  }
}

{
  v6 = static os_log_type_t.debug.getter();
  log = Logger.logObject.getter();
  if (os_log_type_enabled(log, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315650;
    v9 = StaticString.description.getter();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v16);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    v12 = StaticString.description.getter();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v16);

    *(v7 + 14) = v14;
    *(v7 + 22) = 2080;
    *(v7 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000044, 0x80000001DCA89920, &v16);
    _os_log_impl(&dword_1DC659000, log, v6, "%s:%s: %s", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v8, -1, -1);
    MEMORY[0x1E12A2F50](v7, -1, -1);
  }
}

{
  v6 = static os_log_type_t.debug.getter();
  log = Logger.logObject.getter();
  if (os_log_type_enabled(log, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315650;
    v9 = StaticString.description.getter();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v16);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    v12 = StaticString.description.getter();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v16);

    *(v7 + 14) = v14;
    *(v7 + 22) = 2080;
    *(v7 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000020, 0x80000001DCA89970, &v16);
    _os_log_impl(&dword_1DC659000, log, v6, "%s:%s: %s", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v8, -1, -1);
    MEMORY[0x1E12A2F50](v7, -1, -1);
  }
}

{
  v6 = static os_log_type_t.debug.getter();
  log = Logger.logObject.getter();
  if (os_log_type_enabled(log, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315650;
    v9 = StaticString.description.getter();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v16);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    v12 = StaticString.description.getter();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v16);

    *(v7 + 14) = v14;
    *(v7 + 22) = 2080;
    *(v7 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000030, 0x80000001DCA898C0, &v16);
    _os_log_impl(&dword_1DC659000, log, v6, "%s:%s: %s", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v8, -1, -1);
    MEMORY[0x1E12A2F50](v7, -1, -1);
  }
}

{
  v6 = static os_log_type_t.debug.getter();
  log = Logger.logObject.getter();
  if (os_log_type_enabled(log, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315650;
    v9 = StaticString.description.getter();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v16);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    v12 = StaticString.description.getter();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v16);

    *(v7 + 14) = v14;
    *(v7 + 22) = 2080;
    *(v7 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000024, 0x80000001DCA89790, &v16);
    _os_log_impl(&dword_1DC659000, log, v6, "%s:%s: %s", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v8, -1, -1);
    MEMORY[0x1E12A2F50](v7, -1, -1);
  }
}

{
  v6 = static os_log_type_t.debug.getter();
  log = Logger.logObject.getter();
  if (os_log_type_enabled(log, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315650;
    v9 = StaticString.description.getter();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v16);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    v12 = StaticString.description.getter();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v16);

    *(v7 + 14) = v14;
    *(v7 + 22) = 2080;
    *(v7 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x80000001DCA89770, &v16);
    _os_log_impl(&dword_1DC659000, log, v6, "%s:%s: %s", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v8, -1, -1);
    MEMORY[0x1E12A2F50](v7, -1, -1);
  }
}

void specialized Logger.debugF(_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = static os_log_type_t.debug.getter();
  log = Logger.logObject.getter();
  if (os_log_type_enabled(log, v10))
  {
    v11 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v23 = v21;
    *v11 = 136315650;
    v12 = StaticString.description.getter();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v23);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2080;
    v15 = StaticString.description.getter();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v23);

    *(v11 + 14) = v17;
    *(v11 + 22) = 2080;
    _StringGuts.grow(_:)(164);
    MEMORY[0x1E12A1580](0xD00000000000005CLL, 0x80000001DCA89810);
    if (*(a8 + 32))
    {
      v18 = 1702195828;
    }

    else
    {
      v18 = 0x65736C6166;
    }

    if (*(a8 + 32))
    {
      v19 = 0xE400000000000000;
    }

    else
    {
      v19 = 0xE500000000000000;
    }

    MEMORY[0x1E12A1580](v18, v19);

    MEMORY[0x1E12A1580](0xD00000000000001FLL, 0x80000001DCA89870);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x1E12A1580](0xD000000000000023, 0x80000001DCA89890);
    _print_unlocked<A, B>(_:_:)();
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, &v23);

    *(v11 + 24) = v20;
    _os_log_impl(&dword_1DC659000, log, v10, "%s:%s: %s", v11, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v21, -1, -1);
    MEMORY[0x1E12A2F50](v11, -1, -1);
  }

  else
  {
  }
}

void specialized Logger.debugF(_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8)
{
  v8 = static os_log_type_t.debug.getter();
  log = Logger.logObject.getter();
  if (os_log_type_enabled(log, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 136315650;
    v11 = StaticString.description.getter();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v20);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    v14 = StaticString.description.getter();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v20);

    *(v9 + 14) = v16;
    *(v9 + 22) = 2080;
    _StringGuts.grow(_:)(70);
    MEMORY[0x1E12A1580](0xD000000000000044, 0x80000001DCA897C0);
    v17 = CNVSchemaCNVExecutionOverrideDecision.description.getter();
    MEMORY[0x1E12A1580](v17);

    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, &v20);

    *(v9 + 24) = v18;
    _os_log_impl(&dword_1DC659000, log, v8, "%s:%s: %s", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v10, -1, -1);
    MEMORY[0x1E12A2F50](v9, -1, -1);
  }
}

uint64_t outlined init with copy of Logger?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SiriKitRuntimeState.__allocating_init(customEventSender:rrClient:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  SiriKitRuntimeState.init(customEventSender:rrClient:)(a1, a2);
  return v4;
}

Swift::Void __swiftcall SiriKitRuntimeState.reset()()
{
  SiriKitRuntimeState.invalidateCurrentTurn()();
  SiriKitRuntimeState.taskService.getter();
  TaskService.onTurnInvalidated()();
}

uint64_t SiriKitRuntimeState.makeNewTurn(requestContextData:executionRequestId:rootRequestId:sessionId:sessionConfiguration:invocationState:conversationLoggingId:bridge:scopedRRData:invokedByPeerToPeerEORR:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, unsigned __int8 a14)
{
  v47 = a8;
  v53 = a5;
  v59 = a2;
  v60 = a4;
  v57 = a3;
  v54 = a1;
  v61 = a9;
  v58 = a14;
  v55 = a12;
  v56 = a13;
  v52 = a11;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v46 - v18;
  v50 = &v46 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v46 - v24;
  v51 = &v46 - v24;
  SiriKitRuntimeState.invalidateCurrentTurn()();
  v26 = v14;
  SiriKitRuntimeState.taskService.getter();
  TaskService.onNewTurn()();

  outlined init with copy of ReferenceResolutionClientProtocol?(a6, v25, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined init with copy of ReferenceResolutionClientProtocol?(a7, v19, &_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
  v49 = v14;
  v27 = *(v14 + 136);
  outlined init with copy of ReferenceResolutionClientProtocol?(a10, v22, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined init with copy of ReferenceResolutionClientProtocol(v47, v64);
  outlined init with copy of ReferenceResolutionClientProtocol?(v26 + 56, v63, &_s11SiriKitFlow0aB12EventSending_pSgMd, &_s11SiriKitFlow0aB12EventSending_pSgMR);
  outlined init with copy of ReferenceResolutionClientProtocol(v26 + 96, v62);
  v28 = type metadata accessor for ConversationTurnStateImpl(0);
  v47 = swift_allocObject();
  v29 = v65;
  v46 = v66;
  v30 = __swift_mutable_project_boxed_opaque_existential_1(v64, v65);
  v31 = MEMORY[0x1EEE9AC00](v30);
  v33 = &v46 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v34 + 16))(v33, v31);
  v35 = v53;

  v36 = v27;

  v37 = v52;
  swift_unknownObjectRetain();
  v38 = v54;
  v39 = v57;

  v40 = v55;
  v41 = v56;
  outlined copy of Data?(v55, v56);
  v42 = specialized ConversationTurnStateImpl.init(bridge:executionRequestId:rootRequestId:sessionId:sessionConfiguration:taskService:conversationLoggingId:invocationState:customEventSender:requestContextData:invokedByPeerToPeerEORR:rrClient:scopedRRData:)(v37, v59, v39, v60, v35, v51, v50, v36, v48, v33, v63, v38, v58, v62, v40, v41, v47, v29, v46);
  outlined consume of Data?(v40, v41);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm(v64);
  ConversationTurnStateImpl.setSiriKitFlowGlobals()();
  v65 = v28;
  v66 = &protocol witness table for ConversationTurnStateImpl;
  v64[0] = v42;
  v43 = v49;
  swift_beginAccess();

  outlined assign with take of ConversationTurnState?(v64, v43 + 16);
  result = swift_endAccess();
  v45 = v61;
  v61[3] = v28;
  v45[4] = &protocol witness table for ConversationTurnStateImpl;
  *v45 = v42;
  return result;
}

uint64_t SiriKitRuntimeState.init(customEventSender:rrClient:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *(v2 + 136) = 0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0;
  outlined init with copy of ReferenceResolutionClientProtocol?(a1, v2 + 56, &_s11SiriKitFlow0aB12EventSending_pSgMd, &_s11SiriKitFlow0aB12EventSending_pSgMR);
  outlined init with copy of ReferenceResolutionClientProtocol?(a2, &v9, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMd, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMR);
  if (v10)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(a2, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMd, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMR);
    outlined destroy of ReferenceResolutionClientProtocol?(a1, &_s11SiriKitFlow0aB12EventSending_pSgMd, &_s11SiriKitFlow0aB12EventSending_pSgMR);
    outlined init with take of ReferenceResolutionClientProtocol(&v9, &v11);
  }

  else
  {
    v6 = type metadata accessor for ReferenceResolutionClient();
    v7 = ReferenceResolutionClient.__allocating_init()();
    v12 = v6;
    v13 = MEMORY[0x1E69D01B0];
    *&v11 = v7;
    outlined destroy of ReferenceResolutionClientProtocol?(a2, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMd, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMR);
    outlined destroy of ReferenceResolutionClientProtocol?(a1, &_s11SiriKitFlow0aB12EventSending_pSgMd, &_s11SiriKitFlow0aB12EventSending_pSgMR);
    if (v10)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(&v9, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMd, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMR);
    }
  }

  outlined init with take of ReferenceResolutionClientProtocol(&v11, v3 + 96);
  return v3;
}

uint64_t (*SiriKitRuntimeState.taskService.modify(void *a1))()
{
  a1[1] = v1;
  *a1 = SiriKitRuntimeState.taskService.getter();
  return SiriKitRuntimeState.taskService.modify;
}

uint64_t SiriKitRuntimeState.deinit()
{
  outlined destroy of ReferenceResolutionClientProtocol?(v0 + 16, &_s14SiriKitRuntime21ConversationTurnState_pSgMd, &_s14SiriKitRuntime21ConversationTurnState_pSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v0 + 56, &_s11SiriKitFlow0aB12EventSending_pSgMd, &_s11SiriKitFlow0aB12EventSending_pSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));

  return v0;
}

uint64_t SiriKitRuntimeState.__deallocating_deinit()
{
  outlined destroy of ReferenceResolutionClientProtocol?(v0 + 16, &_s14SiriKitRuntime21ConversationTurnState_pSgMd, &_s14SiriKitRuntime21ConversationTurnState_pSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v0 + 56, &_s11SiriKitFlow0aB12EventSending_pSgMd, &_s11SiriKitFlow0aB12EventSending_pSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));

  return swift_deallocClassInstance();
}

BOOL closure #1 in ConversationTurnStateImpl.init(bridge:executionRequestId:rootRequestId:sessionId:sessionConfiguration:taskService:conversationLoggingId:invocationState:customEventSender:requestContextData:invokedByPeerToPeerEORR:rrClient:scopedRRData:)(uint64_t a1)
{
  if (*(a1 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isDeviceLocked))
  {
    return 1;
  }

  v2 = MKBGetDeviceLockState();
  return v2 != 3 && v2 != 0;
}

uint64_t *specialized ConversationTurnStateImpl.init(bridge:executionRequestId:rootRequestId:sessionId:sessionConfiguration:taskService:conversationLoggingId:invocationState:customEventSender:requestContextData:invokedByPeerToPeerEORR:rrClient:scopedRRData:)(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, char a13, void *a14, uint64_t a15, void *a16, uint64_t *a17, uint64_t a18, uint64_t a19)
{
  v133 = a8;
  v165 = a7;
  v166 = a6;
  v167 = a16;
  v150 = a15;
  v137 = a12;
  v164 = a9;
  v143 = *a17;
  v147 = type metadata accessor for DeviceRestrictions();
  v146 = *(v147 - 8);
  MEMORY[0x1EEE9AC00](v147);
  v145 = &v129[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v25);
  v144 = &v129[-v26];
  v149 = type metadata accessor for Restrictions();
  v148 = *(v149 - 8);
  MEMORY[0x1EEE9AC00](v149);
  v163 = &v129[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities14BargeInContextVSgMd, &_s13SiriUtilities14BargeInContextVSgMR);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v162 = &v129[-v29];
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities33PersonalDomainsAuthenticationModeOSgMd, &_s13SiriUtilities33PersonalDomainsAuthenticationModeOSgMR);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v161 = &v129[-v31];
  v160 = type metadata accessor for SiriVoiceGender();
  v159 = *(v160 - 8);
  MEMORY[0x1EEE9AC00](v160);
  v173 = &v129[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v158 = type metadata accessor for Locale();
  v157 = *(v158 - 8);
  MEMORY[0x1EEE9AC00](v158);
  v172 = &v129[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v34 = type metadata accessor for MultiUserState();
  MEMORY[0x1EEE9AC00](v34 - 8);
  v171 = &v129[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v156 = type metadata accessor for DeviceIdiom();
  v155 = *(v156 - 8);
  MEMORY[0x1EEE9AC00](v156);
  v170 = &v129[-((v36 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v154 = type metadata accessor for InteractionType();
  v153 = *(v154 - 8);
  MEMORY[0x1EEE9AC00](v154);
  v169 = &v129[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v152 = type metadata accessor for InputOrigin();
  v151 = *(v152 - 8);
  MEMORY[0x1EEE9AC00](v152);
  v168 = &v129[-((v38 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v182[3] = a18;
  v182[4] = a19;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v182);
  v132 = *(a18 - 8);
  (*(v132 + 32))(boxed_opaque_existential_0, a10, a18);
  v40 = OBJC_IVAR____TtC14SiriKitRuntimeP33_FB63CECFE10715AC1233F5DEB969132D25ConversationTurnStateImpl_sessionConfiguration;
  v41 = type metadata accessor for SessionConfiguration();
  (*(*(v41 - 8) + 56))(a17 + v40, 1, 1, v41);
  *(a17 + OBJC_IVAR____TtC14SiriKitRuntimeP33_FB63CECFE10715AC1233F5DEB969132D25ConversationTurnStateImpl_bridge) = a1;
  object = a2;
  a17[2] = a2;
  a17[3] = a3;
  countAndFlagsBits = a4;
  a17[4] = a4;
  a17[5] = a5;
  outlined init with copy of ReferenceResolutionClientProtocol?(v166, a17 + OBJC_IVAR____TtC14SiriKitRuntimeP33_FB63CECFE10715AC1233F5DEB969132D25ConversationTurnStateImpl_sessionId, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  swift_beginAccess();
  v141 = a5;

  swift_unknownObjectRetain();
  v138 = a3;

  outlined assign with copy of SessionConfiguration?(v165, a17 + v40);
  swift_endAccess();
  outlined init with copy of ReferenceResolutionClientProtocol?(v164, a17 + OBJC_IVAR____TtC14SiriKitRuntimeP33_FB63CECFE10715AC1233F5DEB969132D25ConversationTurnStateImpl_conversationLoggingId, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v42 = type metadata accessor for SharedContextServiceImpl();
  v43 = swift_allocObject();
  *(v43 + 16) = a1;
  v44 = (a17 + OBJC_IVAR____TtC14SiriKitRuntimeP33_FB63CECFE10715AC1233F5DEB969132D25ConversationTurnStateImpl_sharedContextService);
  v44[3] = v42;
  v44[4] = lazy protocol witness table accessor for type AceServiceInvokerImpl and conformance AceServiceInvokerImpl(&lazy protocol witness table cache variable for type SharedContextServiceImpl and conformance SharedContextServiceImpl, type metadata accessor for SharedContextServiceImpl, &protocol conformance descriptor for SharedContextServiceImpl);
  *v44 = v43;
  outlined init with copy of ReferenceResolutionClientProtocol(v182, a17 + OBJC_IVAR____TtC14SiriKitRuntimeP33_FB63CECFE10715AC1233F5DEB969132D25ConversationTurnStateImpl_invocationState);
  v45 = v137;
  *(a17 + OBJC_IVAR____TtC14SiriKitRuntimeP33_FB63CECFE10715AC1233F5DEB969132D25ConversationTurnStateImpl_requestContextData) = v137;
  v46 = (a17 + OBJC_IVAR____TtC14SiriKitRuntimeP33_FB63CECFE10715AC1233F5DEB969132D25ConversationTurnStateImpl_scopedRRData);
  v47 = v150;
  v48 = v167;
  *v46 = v150;
  v46[1] = v48;
  v49 = *(a19 + 136);
  v142 = a1;
  swift_unknownObjectRetain();
  v137 = v45;
  outlined copy of Data?(v47, v48);
  v50 = v49(a18, a19);
  if (!v50)
  {
    goto LABEL_5;
  }

  v51 = v50;
  v52 = [v50 runLocation];

  if (!v52)
  {
    v50 = 0;
LABEL_5:
    v55 = 0;
    goto LABEL_6;
  }

  v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v55 = v54;

  v50 = v53;
LABEL_6:
  v167 = a14;
  LODWORD(v136) = specialized static RunLocation.convert(aceRunLocation:)(v50, v55);

  v56 = v49(a18, a19);
  if (v56 && (v57 = v56, v58 = [v56 invocationDeviceAssistantId], v57, v58))
  {
    v135 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v134 = v59;
  }

  else
  {
    v135 = 0;
    v134 = 0;
  }

  v150 = a11;
  v60 = v49(a18, a19);
  if (v60 && (v61 = v60, v62 = [v60 executionDeviceAssistantId], v61, v62))
  {
    v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v65 = v64;
  }

  else
  {
    v63 = 0;
    v65 = 0;
  }

  outlined init with copy of ReferenceResolutionClientProtocol(v167, &v179);
  v131 = type metadata accessor for AceServiceInvokerImpl();
  v66 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCySbSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCySbSo16os_unfair_lock_sVGMR);
  v67 = swift_allocObject();
  *(v67 + 20) = 0;
  *(v67 + 16) = 0;
  *(v66 + 152) = v67;
  type metadata accessor for SubmissionTaskRegistry();
  v68 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyShyScTySo13SABaseCommandCSgs5Error_pGGSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyShyScTySo13SABaseCommandCSgs5Error_pGGSo16os_unfair_lock_sVGMR);
  v69 = swift_allocObject();
  *(v69 + 24) = 0;
  *(v69 + 16) = MEMORY[0x1E69E7CD0];
  *(v68 + 16) = v69;
  *(v66 + 160) = v68;
  v70 = swift_allocObject();
  *(v70 + 20) = 0;
  *(v70 + 16) = 0;
  *(v66 + 168) = v70;
  *(v66 + 16) = v142;
  v71 = countAndFlagsBits;
  *(v66 + 48) = v138;
  *(v66 + 56) = v71;
  v72 = object;
  v73 = v137;
  *(v66 + 32) = v137;
  *(v66 + 40) = v72;
  *(v66 + 24) = v136 & 1;
  v74 = v135;
  *(v66 + 64) = v141;
  *(v66 + 72) = v74;
  *(v66 + 80) = v134;
  *(v66 + 88) = v63;
  *(v66 + 96) = v65;
  *(v66 + 104) = a13 & 1;
  outlined init with copy of ReferenceResolutionClientProtocol?(&v179, &v174, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMd, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMR);
  v75 = v175;
  swift_unknownObjectRetain();
  v141 = v73;
  if (v75)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(&v179, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMd, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMR);
    outlined init with take of ReferenceResolutionClientProtocol(&v174, &v176);
  }

  else
  {
    outlined destroy of ReferenceResolutionClientProtocol?(&v174, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMd, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMR);
    v76 = type metadata accessor for ReferenceResolutionClient();
    v77 = ReferenceResolutionClient.__allocating_init()();
    v177 = v76;
    v178 = MEMORY[0x1E69D01B0];
    *&v176 = v77;
    outlined destroy of ReferenceResolutionClientProtocol?(&v179, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMd, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMR);
  }

  outlined init with take of ReferenceResolutionClientProtocol(&v176, v66 + 112);
  v78 = OBJC_IVAR____TtC14SiriKitRuntimeP33_FB63CECFE10715AC1233F5DEB969132D25ConversationTurnStateImpl_aceServiceInvoker;
  *(a17 + OBJC_IVAR____TtC14SiriKitRuntimeP33_FB63CECFE10715AC1233F5DEB969132D25ConversationTurnStateImpl_aceServiceInvoker) = v66;
  outlined init with copy of ReferenceResolutionClientProtocol?(v150, &v176, &_s11SiriKitFlow0aB12EventSending_pSgMd, &_s11SiriKitFlow0aB12EventSending_pSgMR);
  if (v177)
  {
    outlined init with take of ReferenceResolutionClientProtocol(&v176, &v179);
  }

  else
  {
    v79 = type metadata accessor for InvocationScopedSiriKitEventSender();
    outlined init with copy of ReferenceResolutionClientProtocol(v182, &v179);
    v80 = __swift_mutable_project_boxed_opaque_existential_1(&v179, v180);
    v142 = v129;
    v81 = MEMORY[0x1EEE9AC00](v80);
    v83 = &v129[-((v82 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v84 + 16))(v83, v81);
    *&v174 = v66;
    v85 = lazy protocol witness table accessor for type AceServiceInvokerImpl and conformance AceServiceInvokerImpl(&lazy protocol witness table cache variable for type AceServiceInvokerImpl and conformance AceServiceInvokerImpl, type metadata accessor for AceServiceInvokerImpl, &protocol conformance descriptor for AceServiceInvokerImpl);
    v86 = v133;

    v87 = specialized InvocationScopedSiriKitEventSender.__allocating_init(aceServiceInvoker:taskService:invocationState:)(&v174, v86, v83, v79, v131, a18, v85, a19);
    (*(v132 + 8))(v83, a18);

    __swift_destroy_boxed_opaque_existential_1Tm(&v179);
    v180 = v79;
    v181 = lazy protocol witness table accessor for type AceServiceInvokerImpl and conformance AceServiceInvokerImpl(&lazy protocol witness table cache variable for type InvocationScopedSiriKitEventSender and conformance InvocationScopedSiriKitEventSender, type metadata accessor for InvocationScopedSiriKitEventSender, &protocol conformance descriptor for InvocationScopedSiriKitEventSender);
    *&v179 = v87;
    if (v177)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(&v176, &_s11SiriKitFlow0aB12EventSending_pSgMd, &_s11SiriKitFlow0aB12EventSending_pSgMR);
    }
  }

  outlined init with take of ReferenceResolutionClientProtocol(&v179, a17 + OBJC_IVAR____TtC14SiriKitRuntimeP33_FB63CECFE10715AC1233F5DEB969132D25ConversationTurnStateImpl_eventSender);
  outlined init with copy of ReferenceResolutionClientProtocol(v167, a17 + OBJC_IVAR____TtC14SiriKitRuntimeP33_FB63CECFE10715AC1233F5DEB969132D25ConversationTurnStateImpl_rrClient);
  static AuthenticationStateImpl.from(invocationState:)(v182, &v179);
  v88 = *(*(*(a17 + v78) + 32) + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_peerInfo);
  type metadata accessor for PeerInfoProvider();
  *(swift_initStackObject() + 16) = v88;
  v89 = *(a19 + 24);
  v90 = v88;
  v89(a18, a19);
  (*(a19 + 32))(a18, a19);
  v142 = v90;
  if (v88 && (v91 = [v90 userInterfaceIdiom]) != 0)
  {
    v92 = v91;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    DeviceIdiom.init(aceValue:)();
  }

  else
  {
    type metadata accessor for SiriEnvironment();
    static SiriEnvironment.default.getter();
    SiriEnvironment.currentDevice.getter();

    CurrentDevice.localDeviceIdiom.getter();
  }

  (*(a19 + 64))(a18, a19);
  (*(a19 + 120))(a18, a19);
  (*(a19 + 128))(a18, a19);
  LODWORD(v133) = (*(a19 + 80))(a18, a19);
  LODWORD(v132) = (*(a19 + 88))(a18, a19);
  LODWORD(v131) = (*(a19 + 96))(a18, a19);
  v130 = (*(a19 + 112))(a18, a19);
  v93 = swift_allocObject();
  v94 = v141;
  v95 = v143;
  *(v93 + 16) = v141;
  *(v93 + 24) = v95;
  v96 = *(a19 + 72);
  v97 = v94;
  v143 = v96(a18, a19);
  v141 = v98;
  v138 = (*(a19 + 160))(a18, a19);
  v137 = v99;
  (*(a19 + 168))(a18, a19);
  (*(a19 + 176))(a18, a19);
  v100 = PeerInfoProvider.getPeerName()();
  countAndFlagsBits = v100.value._countAndFlagsBits;
  object = v100.value._object;
  v101 = *&v97[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_endpointInfo];
  if (v101)
  {
    v102 = [v101 identifier];
    if (v102)
    {
      v103 = v102;
      v136 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v135 = v104;
    }

    else
    {
      v136 = 0;
      v135 = 0;
    }
  }

  else
  {
    v136 = 0;
    v135 = 0;
  }

  (*(a19 + 192))(a18, a19);
  outlined init with copy of ReferenceResolutionClientProtocol(&v179, &v176);
  LODWORD(v134) = v97[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isDeviceShowingLockScreen];
  v105 = type metadata accessor for DefaultDeviceState(0);
  v106 = swift_allocObject();
  v107 = OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_isHomePodGestalt;
  *(v106 + v107) = MGGetSInt32Answer() == 7;
  *(v106 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_isAppleTVGestalt) = 0;
  v108 = OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_isPhoneGestalt;
  *(v106 + v108) = MGGetSInt32Answer() == 1;
  v109 = OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_isPadGestalt;
  *(v106 + v109) = MGGetSInt32Answer() == 3;
  v110 = OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_isPodGestalt;
  *(v106 + v110) = MGGetSInt32Answer() == 2;
  *(v106 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_isXRGestalt) = 0;
  (*(v151 + 16))(v106 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_inputOrigin, v168, v152);
  (*(v153 + 16))(v106 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_interactionType, v169, v154);
  (*(v155 + 16))(v106 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_renderDeviceIdiom, v170, v156);
  outlined init with copy of MultiUserState(v171, v106 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_multiUserState);
  (*(v157 + 16))(v106 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_siriLocale, v172, v158);
  (*(v159 + 16))(v106 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_siriVoiceGender, v173, v160);
  *(v106 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_isEyesFree) = v133 & 1;
  *(v106 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_isVoiceTriggerEnabled) = v132 & 1;
  *(v106 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_isTextToSpeechEnabled) = v131 & 1;
  *(v106 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_isDirectAction) = v130 & 1;
  v111 = v144;
  Restrictions.deviceRestrictions.getter();
  v112 = v145;
  static DeviceRestrictions.starkMode.getter();
  lazy protocol witness table accessor for type AceServiceInvokerImpl and conformance AceServiceInvokerImpl(&lazy protocol witness table cache variable for type DeviceRestrictions and conformance DeviceRestrictions, MEMORY[0x1E69D3610], MEMORY[0x1E69D3618]);
  v113 = v147;
  LOBYTE(v110) = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v114 = *(v146 + 8);
  v114(v112, v113);
  v114(v111, v113);
  v115 = _s14SiriKitRuntime25ConversationTurnStateImpl33_FB63CECFE10715AC1233F5DEB969132DLLC6bridge18executionRequestId04rootoP007sessionP00R13Configuration11taskService019conversationLoggingP0010invocationF017customEventSender18requestContextData23invokedByPeerToPeerEORR8rrClient12scopedRRDataAdA0U6Bridge_p_S2SSg10Foundation4UUIDVSg0A12MessageTypes07SessionS0VSgAA04TaskU0CAwA010InvocationF0_p0aB4Flow0abZ7Sending_pSgAA0O11ContextDataCSbA3_33ReferenceResolutionClientProtocol_pAT4DataVSgtcfcSbyYbcfU_TA_0;
  if (v110)
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v116 = static Log.executor;
    v117 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Forcing DeviceState.isLockedWithPasscode to false since isCarPlay is true", 73, 2, &dword_1DC659000, v116, v117, MEMORY[0x1E69E7CC0]);

    v93 = 0;
    v115 = getEnumTag for AffinityScore;
  }

  v118 = v115;
  (*(v159 + 8))(v173, v160);
  (*(v157 + 8))(v172, v158);
  outlined destroy of MultiUserState(v171);
  (*(v155 + 8))(v170, v156);
  (*(v153 + 8))(v169, v154);
  (*(v151 + 8))(v168, v152);
  v119 = (v106 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_isLockedWithPasscodeClosure);
  *v119 = v118;
  v119[1] = v93;
  v120 = (v106 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_sessionHandOffContinuityID);
  v121 = v141;
  *v120 = v143;
  v120[1] = v121;
  v122 = (v106 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_preferencesLanguageCode);
  v123 = v137;
  *v122 = v138;
  v122[1] = v123;
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v161, v106 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_personalDomainsAuthenticationMode, &_s13SiriUtilities33PersonalDomainsAuthenticationModeOSgMd, &_s13SiriUtilities33PersonalDomainsAuthenticationModeOSgMR);
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v162, v106 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_bargeInContext, &_s13SiriUtilities14BargeInContextVSgMd, &_s13SiriUtilities14BargeInContextVSgMR);
  v124 = (v106 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_peerName);
  v125 = object;
  *v124 = countAndFlagsBits;
  v124[1] = v125;
  (*(v148 + 32))(v106 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_restrictedCommands, v163, v149);
  v126 = (v106 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_endpointId);
  v127 = v135;
  *v126 = v136;
  v126[1] = v127;
  outlined init with take of ReferenceResolutionClientProtocol(&v176, v106 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_authenticationState);
  *(v106 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_isDeviceShowingLockScreen) = v134;
  v177 = v105;
  v178 = lazy protocol witness table accessor for type AceServiceInvokerImpl and conformance AceServiceInvokerImpl(&lazy protocol witness table cache variable for type DefaultDeviceState and conformance DefaultDeviceState, type metadata accessor for DefaultDeviceState, &protocol conformance descriptor for DefaultDeviceState);

  *&v176 = v106;
  __swift_destroy_boxed_opaque_existential_1Tm(v167);
  outlined destroy of ReferenceResolutionClientProtocol?(v150, &_s11SiriKitFlow0aB12EventSending_pSgMd, &_s11SiriKitFlow0aB12EventSending_pSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v164, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v165, &_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v166, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm(&v179);
  outlined init with take of ReferenceResolutionClientProtocol(&v176, a17 + OBJC_IVAR____TtC14SiriKitRuntimeP33_FB63CECFE10715AC1233F5DEB969132D25ConversationTurnStateImpl_deviceState);
  __swift_destroy_boxed_opaque_existential_1Tm(v182);
  return a17;
}

void type metadata completion function for ConversationTurnStateImpl(uint64_t a1)
{
  _s10Foundation4UUIDVSgMaTm_2(319, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8]);
  if (v1 <= 0x3F)
  {
    _s10Foundation4UUIDVSgMaTm_2(319, &lazy cache variable for type metadata for SessionConfiguration?, MEMORY[0x1E69D07A0]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void _s10Foundation4UUIDVSgMaTm_2(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

SiriKitRuntime::SiriLinkFlowAffinityScorer __swiftcall SiriLinkFlowAffinityScorer.init()()
{
  v0 = 0x80000001DCA7CC80;
  v1 = 0xD000000000000021;
  result.bundleIdentifier._object = v0;
  result.bundleIdentifier._countAndFlagsBits = v1;
  return result;
}

uint64_t specialized SiriLinkFlowAffinityScorer.score(input:environment:)(double a1)
{
  v151 = type metadata accessor for UsoIdentifier();
  v156 = *(v151 - 8);
  MEMORY[0x1EEE9AC00](v151);
  v155 = &v146 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v166 = &v146 - v3;
  v161 = type metadata accessor for Siri_Nlu_External_Parser.ParserIdentifier();
  v163 = *(v161 - 1);
  MEMORY[0x1EEE9AC00](v161);
  v149 = &v146 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSg_AFtMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSg_AFtMR);
  MEMORY[0x1EEE9AC00](v162);
  v154 = &v146 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v153 = &v146 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v148 = &v146 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v159 = &v146 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v160 = (&v146 - v13);
  MEMORY[0x1EEE9AC00](v14);
  v150 = &v146 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v157 = &v146 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v158 = &v146 - v19;
  v20 = type metadata accessor for Siri_Nlu_External_UserParse();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v152 = &v146 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v146 - v24;
  v26 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v164 = *(v26 - 8);
  v165 = v26;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v146 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for USOParse();
  v167 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v146 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for Parse();
  v33 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v146 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  Input.parse.getter();
  if ((*(v33 + 88))(v35, v32) != *MEMORY[0x1E69D0168])
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v64 = type metadata accessor for Logger();
    __swift_project_value_buffer(v64, static Logger.executor);
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&dword_1DC659000, v65, v66, "SiriLinkAffinityScorer Got unexpected parse", v67, 2u);
      MEMORY[0x1E12A2F50](v67, -1, -1);
    }

    (*(v33 + 8))(v35, v32);
    return 2;
  }

  (*(v33 + 96))(v35, v32);
  v36 = v167;
  (*(v167 + 32))(v31, v35, v29);
  v37 = USOParse.userParse.getter();
  v38 = MEMORY[0x1E129C0F0](v37);
  v39 = *(v21 + 8);
  v39(v25, v20);
  if (!*(v38 + 16))
  {

    goto LABEL_18;
  }

  v40 = v20;
  v41 = v29;
  v43 = v164;
  v42 = v165;
  (*(v164 + 2))(v28, v38 + ((v43[80] + 32) & ~v43[80]), v165);

  v44 = Siri_Nlu_External_UserDialogAct.toUsoTask()();
  (*(v43 + 1))(v28, v42);
  v29 = v41;
  if (!v44)
  {
LABEL_18:
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v69 = type metadata accessor for Logger();
    __swift_project_value_buffer(v69, static Logger.executor);
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      *v72 = 0;
      _os_log_impl(&dword_1DC659000, v70, v71, "SiriLinkAffinityScorer could not extract USO task", v72, 2u);
      MEMORY[0x1E12A2F50](v72, -1, -1);
    }

LABEL_22:

LABEL_23:
    (*(v36 + 1))(v31, v29);
    return 0;
  }

  v45 = v44;
  v47 = UsoTask.baseEntityAsString.getter();
  v48 = v46;
  if (v47 == 0xD000000000000013 && 0x80000001DCA89B70 == v46 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v147 = v45;
    v165 = v29;

    v49 = v152;
    USOParse.userParse.getter();
    v164 = Siri_Nlu_External_UserParse.appShortcuts.getter();
    v39(v49, v40);
    v50 = v158;
    v166 = v31;
    USOParse.parserIdentifier.getter();
    v51 = *MEMORY[0x1E69D0970];
    v52 = v163;
    v53 = *(v163 + 104);
    v54 = v157;
    v55 = v161;
    v156 = v163 + 104;
    v155 = v53;
    (v53)(v157, v51, v161);
    v152 = *(v52 + 56);
    (v152)(v54, 0, 1, v55);
    v56 = *(v162 + 48);
    v57 = v153;
    outlined init with copy of ReferenceResolutionClientProtocol?(v50, v153, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
    outlined init with copy of ReferenceResolutionClientProtocol?(v54, v57 + v56, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
    v58 = *(v52 + 48);
    if (v58(v57, 1, v55) == 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v54, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
      outlined destroy of ReferenceResolutionClientProtocol?(v50, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
      v59 = v58(v57 + v56, 1, v55) == 1;
      v60 = v57;
      v61 = v160;
      v62 = v58;
      if (v59)
      {
        outlined destroy of ReferenceResolutionClientProtocol?(v60, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
        v63 = 1;
        goto LABEL_32;
      }
    }

    else
    {
      v74 = v150;
      outlined init with copy of ReferenceResolutionClientProtocol?(v57, v150, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
      v62 = v58;
      if (v58(v57 + v56, 1, v55) != 1)
      {
        v75 = v163;
        v76 = v57 + v56;
        v77 = v57;
        v78 = v149;
        (*(v163 + 32))(v149, v76, v55);
        lazy protocol witness table accessor for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier();
        v63 = dispatch thunk of static Equatable.== infix(_:_:)();
        v79 = *(v75 + 8);
        v79(v78, v161);
        outlined destroy of ReferenceResolutionClientProtocol?(v157, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
        outlined destroy of ReferenceResolutionClientProtocol?(v158, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
        v79(v150, v161);
        v55 = v161;
        outlined destroy of ReferenceResolutionClientProtocol?(v77, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
        v61 = v160;
LABEL_32:
        USOParse.parserIdentifier.getter();
        v80 = v159;
        (v155)(v159, *MEMORY[0x1E69D0960], v55);
        (v152)(v80, 0, 1, v55);
        v81 = *(v162 + 48);
        v82 = v154;
        outlined init with copy of ReferenceResolutionClientProtocol?(v61, v154, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
        outlined init with copy of ReferenceResolutionClientProtocol?(v80, v82 + v81, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
        if (v62(v82, 1, v55) == 1)
        {
          outlined destroy of ReferenceResolutionClientProtocol?(v80, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
          outlined destroy of ReferenceResolutionClientProtocol?(v61, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
          v83 = v62(v82 + v81, 1, v55);
          v36 = v166;
          v84 = v167;
          if (v83 == 1)
          {
            outlined destroy of ReferenceResolutionClientProtocol?(v82, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
            v85 = v164;
LABEL_39:
            if (*(v85 + 2))
            {

              if (one-time initialization token for executor != -1)
              {
                swift_once();
              }

              v96 = type metadata accessor for Logger();
              __swift_project_value_buffer(v96, static Logger.executor);
              v97 = Logger.logObject.getter();
              v98 = static os_log_type_t.debug.getter();
              if (!os_log_type_enabled(v97, v98))
              {

                goto LABEL_64;
              }

              v68 = 2;
              v99 = swift_slowAlloc();
              *v99 = 0;
              _os_log_impl(&dword_1DC659000, v97, v98, "SiriLinkAffinityScorer Got auto shortcuts with exact match", v99, 2u);
              MEMORY[0x1E12A2F50](v99, -1, -1);

              (*(v84 + 8))(v36, v165);
              return v68;
            }

LABEL_44:
            if (v63)
            {
            }

            else
            {
              v100 = *(v85 + 2);

              if (!v100)
              {
                if (one-time initialization token for executor != -1)
                {
                  swift_once();
                }

                v110 = type metadata accessor for Logger();
                __swift_project_value_buffer(v110, static Logger.executor);
                v111 = Logger.logObject.getter();
                v112 = static os_log_type_t.debug.getter();
                if (os_log_type_enabled(v111, v112))
                {
                  v113 = swift_slowAlloc();
                  *v113 = 0;
                  _os_log_impl(&dword_1DC659000, v111, v112, "SiriLinkAffinityScorer Got user shortcut", v113, 2u);
                  MEMORY[0x1E12A2F50](v113, -1, -1);
                }

                else
                {
                }

                (*(v84 + 8))(v36, v165);
                return 4;
              }
            }

            if (one-time initialization token for executor != -1)
            {
              goto LABEL_114;
            }

            goto LABEL_48;
          }
        }

        else
        {
          v86 = v63;
          v87 = v148;
          outlined init with copy of ReferenceResolutionClientProtocol?(v82, v148, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
          v88 = v62(v82 + v81, 1, v55);
          v84 = v167;
          v89 = v55;
          if (v88 != 1)
          {
            v90 = v87;
            v91 = v163;
            v92 = v82 + v81;
            v93 = v149;
            (*(v163 + 32))(v149, v92, v89);
            lazy protocol witness table accessor for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier();
            v94 = dispatch thunk of static Equatable.== infix(_:_:)();
            v95 = *(v91 + 8);
            v95(v93, v89);
            outlined destroy of ReferenceResolutionClientProtocol?(v159, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
            outlined destroy of ReferenceResolutionClientProtocol?(v160, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
            v95(v90, v89);
            outlined destroy of ReferenceResolutionClientProtocol?(v82, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
            v36 = v166;
            v85 = v164;
            v63 = v86;
            if ((v94 & 1) == 0)
            {
              goto LABEL_44;
            }

            goto LABEL_39;
          }

          outlined destroy of ReferenceResolutionClientProtocol?(v159, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
          outlined destroy of ReferenceResolutionClientProtocol?(v160, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
          (*(v163 + 8))(v87, v55);
          v36 = v166;
          v63 = v86;
        }

        outlined destroy of ReferenceResolutionClientProtocol?(v82, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSg_AFtMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSg_AFtMR);
        v85 = v164;
        goto LABEL_44;
      }

      outlined destroy of ReferenceResolutionClientProtocol?(v157, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
      outlined destroy of ReferenceResolutionClientProtocol?(v158, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
      (*(v163 + 8))(v74, v55);
      v60 = v57;
      v61 = v160;
    }

    outlined destroy of ReferenceResolutionClientProtocol?(v60, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSg_AFtMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSg_AFtMR);
    v63 = 0;
    goto LABEL_32;
  }

  if (v47 == 0x535F6E6F6D6D6F63 && v48 == 0xEE00676E69747465)
  {

    goto LABEL_52;
  }

  v105 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v105 & 1) == 0)
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v114 = type metadata accessor for Logger();
    __swift_project_value_buffer(v114, static Logger.executor);
    v70 = Logger.logObject.getter();
    v115 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v70, v115))
    {

      goto LABEL_23;
    }

    v116 = swift_slowAlloc();
    *v116 = 0;
    _os_log_impl(&dword_1DC659000, v70, v115, "SiriLinkAffinityScorer Unsupported base entity", v116, 2u);
    MEMORY[0x1E12A2F50](v116, -1, -1);

    goto LABEL_22;
  }

LABEL_52:

  static UsoTask_CodegenConverter.convert(task:)();

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v106 = type metadata accessor for Logger();
  v84 = __swift_project_value_buffer(v106, static Logger.executor);
  v107 = Logger.logObject.getter();
  v108 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v107, v108))
  {
    v109 = swift_slowAlloc();
    *v109 = 0;
    _os_log_impl(&dword_1DC659000, v107, v108, "SiriLinkAffinityScorer Enablement request", v109, 2u);
    MEMORY[0x1E12A2F50](v109, -1, -1);
  }

  outlined init with copy of ReferenceResolutionClientProtocol?(v170, v168, &_sypSgMd, &_sypSgMR);
  if (v169)
  {
    type metadata accessor for UsoTask_enable_common_Setting();
    if (swift_dynamicCast())
    {
      goto LABEL_78;
    }
  }

  else
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v168, &_sypSgMd, &_sypSgMR);
  }

  outlined init with copy of ReferenceResolutionClientProtocol?(v170, v168, &_sypSgMd, &_sypSgMR);
  if (v169)
  {
    type metadata accessor for UsoTask_disable_common_Setting();
    if (swift_dynamicCast())
    {
      goto LABEL_78;
    }
  }

  else
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v168, &_sypSgMd, &_sypSgMR);
  }

  outlined init with copy of ReferenceResolutionClientProtocol?(v170, v168, &_sypSgMd, &_sypSgMR);
  if (!v169)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v168, &_sypSgMd, &_sypSgMR);
    goto LABEL_100;
  }

  type metadata accessor for UsoTask_toggle_common_Setting();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_100:
    v138 = Logger.logObject.getter();
    v139 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v138, v139))
    {
      v140 = swift_slowAlloc();
      *v140 = 0;
      _os_log_impl(&dword_1DC659000, v138, v139, "SiriLinkAffinityScorer Unsupported settings request", v140, 2u);
      MEMORY[0x1E12A2F50](v140, -1, -1);
    }

    goto LABEL_103;
  }

LABEL_78:

  dispatch thunk of Uso_VerbTemplate_ReferenceTrigger.reference.getter();

  v117 = v168[0];
  v118 = v151;
  if (!v168[0] || (, v119 = dispatch thunk of CodeGenGlobalArgs.getUsoIdentifiersFor(attributeName:)(), , !v119))
  {
    v135 = Logger.logObject.getter();
    v136 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v135, v136))
    {
      v137 = swift_slowAlloc();
      *v137 = 0;
      _os_log_impl(&dword_1DC659000, v135, v136, "SiriLinkAffinityScorer Could not extract identifiers", v137, 2u);
      MEMORY[0x1E12A2F50](v137, -1, -1);
    }

LABEL_98:

LABEL_103:
    outlined destroy of ReferenceResolutionClientProtocol?(v170, &_sypSgMd, &_sypSgMR);
    goto LABEL_23;
  }

  v158 = v84;
  v147 = v45;
  v165 = *(v119 + 16);
  v159 = v117;
  if (!v165)
  {
    v121 = MEMORY[0x1E69E7CC0];
LABEL_106:

    v141 = *(v121 + 16);

    v135 = Logger.logObject.getter();
    v142 = static os_log_type_t.debug.getter();
    v143 = os_log_type_enabled(v135, v142);
    if (v141)
    {
      if (v143)
      {
        v144 = swift_slowAlloc();
        *v144 = 0;
        _os_log_impl(&dword_1DC659000, v135, v142, "SiriLinkAffinityScorer Got AppShortcuts enablement request", v144, 2u);
        MEMORY[0x1E12A2F50](v144, -1, -1);
      }

      outlined destroy of ReferenceResolutionClientProtocol?(v170, &_sypSgMd, &_sypSgMR);
      (*(v36 + 1))(v31, v29);
      return 2;
    }

    if (v143)
    {
      v145 = swift_slowAlloc();
      *v145 = 0;
      _os_log_impl(&dword_1DC659000, v135, v142, "SiriLinkAffinityScorer Settings request isn't for Link", v145, 2u);
      MEMORY[0x1E12A2F50](v145, -1, -1);
    }

    goto LABEL_98;
  }

  v120 = 0;
  v162 = *MEMORY[0x1E69D2490];
  v163 = v156 + 16;
  v160 = (v156 + 8);
  v161 = (v156 + 32);
  v121 = MEMORY[0x1E69E7CC0];
  v164 = v119;
  while (v120 < *(v119 + 16))
  {
    v122 = v29;
    v123 = v36;
    v167 = (*(v156 + 80) + 32) & ~*(v156 + 80);
    v84 = *(v156 + 72);
    (*(v156 + 16))(v166, v119 + v167 + v84 * v120, v118);
    v124 = UsoIdentifier.namespace.getter();
    v126 = v125;
    v127 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (v126)
    {
      if (v124 == v127 && v126 == v128)
      {

LABEL_91:
        v130 = *v161;
        (*v161)(v155, v166, v118);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v168[0] = v121;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v121 + 16) + 1, 1);
          v121 = v168[0];
        }

        v119 = v164;
        v133 = *(v121 + 16);
        v132 = *(v121 + 24);
        if (v133 >= v132 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v132 > 1), v133 + 1, 1);
          v119 = v164;
          v121 = v168[0];
        }

        *(v121 + 16) = v133 + 1;
        v134 = v121 + v167 + v133 * v84;
        v118 = v151;
        v130(v134, v155, v151);
        v36 = v123;
        goto LABEL_84;
      }

      v129 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v129)
      {
        goto LABEL_91;
      }
    }

    else
    {
    }

    (*v160)(v166, v118);
    v36 = v123;
    v119 = v164;
LABEL_84:
    ++v120;
    v29 = v122;
    if (v165 == v120)
    {
      goto LABEL_106;
    }
  }

  __break(1u);
LABEL_114:
  swift_once();
LABEL_48:
  v101 = type metadata accessor for Logger();
  __swift_project_value_buffer(v101, static Logger.executor);
  v102 = Logger.logObject.getter();
  v103 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v102, v103))
  {
    v104 = swift_slowAlloc();
    *v104 = 0;
    _os_log_impl(&dword_1DC659000, v102, v103, "SiriLinkAffinityScorer Got auto shortcuts with SSU match", v104, 2u);
    MEMORY[0x1E12A2F50](v104, -1, -1);

    (*(v84 + 8))(v36, v165);
    return 2;
  }

LABEL_64:

  (*(v84 + 8))(v36, v165);
  return 2;
}

uint64_t SiriSafariAffinityScorer.bundleIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t closure #1 in static SiriSuggestionsBrokerProvider.bootStrapSuggestionsBrokerProvider()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v71 - v7;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  v10 = __swift_project_value_buffer(v9, static Logger.executor);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_1DC659000, v11, v12, "loading suggestions broker via SKE bridge...", v13, 2u);
    MEMORY[0x1E12A2F50](v13, -1, -1);
  }

  v14 = MEMORY[0x1E12A25B0]();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  URL.init(fileURLWithPath:isDirectory:)();

  URL.appendingPathComponent(_:isDirectory:)();
  (*(v3 + 40))(v8, v5, v2);
  v15 = objc_allocWithZone(MEMORY[0x1E696AAE8]);
  URL._bridgeToObjectiveC()(v16);
  v18 = v17;
  v19 = [v15 initWithURL_];

  if (!v19)
  {
    v19 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v76 = v44;
      *v43 = 136315138;
      swift_beginAccess();
      lazy protocol witness table accessor for type SiriSuggestionsBrokerProvider and conformance SiriSuggestionsBrokerProvider(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
      v45 = dispatch thunk of CustomStringConvertible.description.getter();
      v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v46, &v76);

      *(v43 + 4) = v47;
      _os_log_impl(&dword_1DC659000, v19, v42, "suggestions bundle not found on expected path:%s", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v44);
      MEMORY[0x1E12A2F50](v44, -1, -1);
      MEMORY[0x1E12A2F50](v43, -1, -1);
    }

    goto LABEL_18;
  }

  if (![v19 principalClass])
  {
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_1DC659000, v48, v49, "suggestions bundle principal class not found", v50, 2u);
      MEMORY[0x1E12A2F50](v50, -1, -1);
    }

LABEL_18:
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return (*(v3 + 8))(v8, v2);
  }

  v74 = a1;
  ObjCClassMetadata = swift_getObjCClassMetadata();
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v73 = v2;
    v25 = v24;
    *&v75[0] = v24;
    *v23 = 136315138;
    v26 = _typeName(_:qualified:)();
    v71 = v10;
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, v75);

    *(v23 + 4) = v28;
    _os_log_impl(&dword_1DC659000, v21, v22, "found principal class: %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    v29 = v25;
    v2 = v73;
    MEMORY[0x1E12A2F50](v29, -1, -1);
    MEMORY[0x1E12A2F50](v23, -1, -1);
  }

  v30 = swift_conformsToProtocol2();
  v31 = Logger.logObject.getter();
  if (!v30 || !ObjCClassMetadata)
  {
    v51 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v31, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *&v75[0] = v53;
      *v52 = 136315394;
      v54 = _typeName(_:qualified:)();
      v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v55, v75);

      *(v52 + 4) = v56;
      *(v52 + 12) = 2080;
      v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0A17SuggestionsBroker_pMd, &_s11SiriKitFlow0A17SuggestionsBroker_pMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0A17SuggestionsBroker_pmMd, &_s11SiriKitFlow0A17SuggestionsBroker_pmMR);
      v57 = String.init<A>(describing:)();
      v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v58, v75);

      *(v52 + 14) = v59;
      _os_log_impl(&dword_1DC659000, v31, v51, "principal class %s does not conform to %s", v52, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v53, -1, -1);
      MEMORY[0x1E12A2F50](v52, -1, -1);
    }

    v60 = v74;
    *(v74 + 32) = 0;
    *v60 = 0u;
    v60[1] = 0u;
    return (*(v3 + 8))(v8, v2);
  }

  v71 = v19;
  v32 = static os_log_type_t.info.getter();
  v33 = os_log_type_enabled(v31, v32);
  v72 = v3;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v73 = v2;
    v35 = v34;
    v36 = v31;
    v37 = swift_slowAlloc();
    *&v75[0] = v37;
    *v35 = 136315138;
    v38 = _typeName(_:qualified:)();
    v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v39, v75);

    *(v35 + 4) = v40;
    _os_log_impl(&dword_1DC659000, v36, v32, "successfully instantiated suggestions bundle with principalClass: %s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    MEMORY[0x1E12A2F50](v37, -1, -1);
    v41 = v35;
    v2 = v73;
    MEMORY[0x1E12A2F50](v41, -1, -1);
  }

  else
  {
  }

  v62 = v74;
  dispatch thunk of static SiriSuggestionsBroker.getInstance()();
  v63 = Logger.logObject.getter();
  v64 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v76 = v66;
    *v65 = 136315138;
    v67 = _typeName(_:qualified:)();
    v69 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v68, &v76);

    *(v65 + 4) = v69;
    _os_log_impl(&dword_1DC659000, v63, v64, "successfully called getInstance on bridge principalClass: %s", v65, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v66);
    MEMORY[0x1E12A2F50](v66, -1, -1);
    MEMORY[0x1E12A2F50](v65, -1, -1);
  }

  v70 = v72;
  outlined init with take of ReferenceResolutionClientProtocol(v75, v62);
  return (*(v70 + 8))(v8, v2);
}

SiriKitRuntime::SiriVideoAffinityScorer __swiftcall SiriVideoAffinityScorer.init()()
{
  v0 = 0x80000001DCA7CE60;
  v1 = 0xD000000000000026;
  result.bundleIdentifier._object = v0;
  result.bundleIdentifier._countAndFlagsBits = v1;
  return result;
}

uint64_t specialized SiriVideoAffinityScorer.score(input:environment:)()
{
  v0 = type metadata accessor for Parse();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  Input.parse.getter();
  v4 = (*(v1 + 88))(v3, v0);
  v5 = *MEMORY[0x1E69D0168];
  (*(v1 + 8))(v3, v0);
  if (v4 == v5)
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.executor);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v7, v8))
    {
      v10 = 0;
      goto LABEL_12;
    }

    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1DC659000, v7, v8, "SiriVideoAffinityScorer returning .unsupported", v9, 2u);
    v10 = 0;
    goto LABEL_10;
  }

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.executor);
  v7 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();
  v10 = 2;
  if (os_log_type_enabled(v7, v12))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1DC659000, v7, v12, "SiriVideoAffinityScorer not a USO parse, returning .default", v9, 2u);
LABEL_10:
    MEMORY[0x1E12A2F50](v9, -1, -1);
  }

LABEL_12:

  return v10;
}

SiriKitRuntime::SocialConversationAffinityScorer __swiftcall SocialConversationAffinityScorer.init()()
{
  v0 = 0x80000001DCA7CCB0;
  v1 = 0xD000000000000033;
  result.bundleIdentifier._object = v0;
  result.bundleIdentifier._countAndFlagsBits = v1;
  return result;
}

uint64_t specialized SocialConversationAffinityScorer.score(input:environment:)(double a1)
{
  v1 = type metadata accessor for UsoIdentifier();
  v54 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v46[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v46[-v5];
  v7 = type metadata accessor for USOParse();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v46[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for Parse();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v46[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Input.parse.getter();
  if ((*(v12 + 88))(v14, v11) != *MEMORY[0x1E69D0168])
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static Logger.executor);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_1DC659000, v25, v26, "SocialConversationAffinityScorer Got unexpected parse", v27, 2u);
      MEMORY[0x1E12A2F50](v27, -1, -1);
    }

    (*(v12 + 8))(v14, v11);
    return 2;
  }

  (*(v12 + 96))(v14, v11);
  (*(v8 + 32))(v10, v14, v7);
  if (!specialized static AffinityScorerUtils.getTask(_:)())
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    __swift_project_value_buffer(v28, static Logger.executor);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v29, v30))
    {

      goto LABEL_33;
    }

    v31 = 2;
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_1DC659000, v29, v30, "SocialConversationAffinityScorer Could not extract usoTask from parse", v32, 2u);
    MEMORY[0x1E12A2F50](v32, -1, -1);

    (*(v8 + 8))(v10, v7);
    return v31;
  }

  v15 = UsoTask.arguments.getter();
  if (!*(v15 + 16))
  {
    goto LABEL_26;
  }

  v16 = specialized __RawDictionaryStorage.find<A>(_:)(0x746567726174, 0xE600000000000000);
  if ((v17 & 1) == 0)
  {
    goto LABEL_26;
  }

  v18 = *(*(v15 + 56) + 8 * v16);

  if (v18 >> 62)
  {
    if (!__CocoaSet.count.getter())
    {
      goto LABEL_26;
    }
  }

  else if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_26;
  }

  if ((v18 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1E12A1FE0](0, v18);
  }

  else
  {
    if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      if (__CocoaSet.count.getter())
      {
        goto LABEL_15;
      }

      goto LABEL_26;
    }
  }

  v19 = dispatch thunk of UsoValue.getAsEntity()();

  if (!v19)
  {
LABEL_27:

LABEL_33:
    (*(v8 + 8))(v10, v7);
    return 2;
  }

  v20 = UsoEntity.attributes.getter();

  if (!*(v20 + 16) || (v21 = specialized __RawDictionaryStorage.find<A>(_:)(0x676F6C616964, 0xE600000000000000), (v22 & 1) == 0))
  {
LABEL_26:

    goto LABEL_27;
  }

  v18 = *(*(v20 + 56) + 8 * v21);

  if (v18 >> 62)
  {
    goto LABEL_63;
  }

  if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_26;
  }

LABEL_15:
  if ((v18 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1E12A1FE0](0, v18);
LABEL_18:

    v18 = dispatch thunk of UsoValue.getUsoIdentifiers()();

    if (v18)
    {
      v52 = *(v18 + 16);
      if (v52)
      {
        v23 = 0;
        v49 = v18 + ((*(v54 + 80) + 32) & ~*(v54 + 80));
        v53 = 0x80000001DCA89BE0;
        v48 = v54 + 16;
        v50 = (v54 + 8);
        v51 = v18;
        do
        {
          if (v23 >= *(v18 + 16))
          {
            goto LABEL_62;
          }

          (*(v54 + 16))(v3, v49 + *(v54 + 72) * v23, v1);
          if (UsoIdentifier.appBundleId.getter() == 0xD000000000000013 && v53 == v34)
          {
          }

          else
          {
            v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v47 & 1) == 0)
            {
              goto LABEL_38;
            }
          }

          v35 = UsoIdentifier.namespace.getter();
          if (v36)
          {
            if (v35 == 0x614E746E65746E69 && v36 == 0xEA0000000000656DLL)
            {

LABEL_49:

              v37 = v54 + 32;
              (*(v54 + 32))(v6, v3, v1);
              v38 = UsoIdentifier.value.getter();
              v40 = v39;
              (*(v37 - 24))(v6, v1);
              if (v38 == 0x61666F72506C6164 && v40 == 0xEC0000007974696ELL)
              {
              }

              else
              {
                v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if ((v41 & 1) == 0)
                {
                  goto LABEL_27;
                }
              }

              if (one-time initialization token for executor != -1)
              {
                goto LABEL_67;
              }

              goto LABEL_54;
            }

            v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v47)
            {
              goto LABEL_49;
            }
          }

LABEL_38:
          ++v23;
          (*v50)(v3, v1);
          v18 = v51;
        }

        while (v52 != v23);
      }

      goto LABEL_33;
    }

    goto LABEL_27;
  }

  if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    goto LABEL_18;
  }

  __break(1u);
LABEL_67:
  swift_once();
LABEL_54:
  v42 = type metadata accessor for Logger();
  __swift_project_value_buffer(v42, static Logger.executor);
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&dword_1DC659000, v43, v44, "SocialConversationAffinityScorer Detected low priority profanity action", v45, 2u);
    MEMORY[0x1E12A2F50](v45, -1, -1);
  }

  else
  {
  }

  (*(v8 + 8))(v10, v7);
  return 1;
}

Swift::Int specialized RawRepresentable<>.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

id StartExecutionTurn.__allocating_init(executionRequestId:rootRequestId:sessionId:sessionConfiguration:isTapToEdit:isMUXEnabled:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, char a8)
{
  v9 = v8;
  v18 = objc_allocWithZone(v9);
  v19 = &v18[OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_executionRequestId];
  *v19 = a1;
  v19[1] = a2;
  v20 = &v18[OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_rootRequestId];
  *v20 = a3;
  v20[1] = a4;
  outlined init with copy of ReferenceResolutionClientProtocol?(a5, &v18[OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_sessionId], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined init with copy of ReferenceResolutionClientProtocol?(a6, &v18[OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_sessionConfiguration], &_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
  v18[OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_isTapToEdit] = a7;
  v18[OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_isMUXEnabled] = a8;
  v23.receiver = v18;
  v23.super_class = v9;
  v21 = objc_msgSendSuper2(&v23, sel_init);
  outlined destroy of ReferenceResolutionClientProtocol?(a6, &_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(a5, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  return v21;
}

uint64_t static StartExecutionTurn.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  static StartExecutionTurn.supportsSecureCoding = a1;
  return result;
}

uint64_t StartExecutionTurn.executionRequestId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_executionRequestId);

  return v1;
}

uint64_t StartExecutionTurn.rootRequestId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_rootRequestId);

  return v1;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance StartExecutionTurn.CodingKeys(uint64_t a1)
{
  String.hash(into:)();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance StartExecutionTurn.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized StartExecutionTurn.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance StartExecutionTurn.CodingKeys(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED00006449747365;
  v4 = 0x75716552746F6F72;
  v5 = 0xEB00000000746964;
  v6 = 0x456F547061547369;
  v7 = 0xEC00000064656C62;
  v8 = 0x616E4558554D7369;
  if (v2 != 4)
  {
    v8 = 0xD000000000000014;
    v7 = 0x80000001DCA7B320;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  if (v2 != 1)
  {
    v4 = 0x496E6F6973736573;
    v3 = 0xE900000000000064;
  }

  if (!*v1)
  {
    v4 = 0xD000000000000012;
    v3 = 0x80000001DCA7AEC0;
  }

  if (*v1 <= 2u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

id StartExecutionTurn.init(executionRequestId:rootRequestId:sessionId:sessionConfiguration:isTapToEdit:isMUXEnabled:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, char a8)
{
  v13 = &v8[OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_executionRequestId];
  *v13 = a1;
  v13[1] = a2;
  v14 = &v8[OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_rootRequestId];
  *v14 = a3;
  v14[1] = a4;
  outlined init with copy of ReferenceResolutionClientProtocol?(a5, &v8[OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_sessionId], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined init with copy of ReferenceResolutionClientProtocol?(a6, &v8[OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_sessionConfiguration], &_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
  v8[OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_isTapToEdit] = a7;
  v8[OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_isMUXEnabled] = a8;
  v17.receiver = v8;
  v17.super_class = type metadata accessor for StartExecutionTurn(0);
  v15 = objc_msgSendSuper2(&v17, sel_init);
  outlined destroy of ReferenceResolutionClientProtocol?(a6, &_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(a5, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  return v15;
}

uint64_t StartExecutionTurn.init(coder:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v46[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v46[-v6];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v46[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v50 = &v46[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v46[-v14];
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v46[-v17];
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSString, 0x1E696AEC0);
  v51 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v51)
  {
    v19 = MEMORY[0x1E12A1410](0xD000000000000014, 0x80000001DCA7B320);
    v20 = [a1 decodeObjectForKey_];

    if (v20)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v55 = 0u;
      v56 = 0u;
    }

    v57[0] = v55;
    v57[1] = v56;
    if (*(&v56 + 1))
    {
      if (swift_dynamicCast())
      {
        v48 = v10;
        v49 = v18;
        v52 = v4;
        v26 = v53;
        v27 = v54;
        type metadata accessor for JSONDecoder();
        swift_allocObject();
        JSONDecoder.init()();
        v28 = type metadata accessor for SessionConfiguration();
        lazy protocol witness table accessor for type SessionConfiguration and conformance SessionConfiguration(&lazy protocol witness table cache variable for type SessionConfiguration and conformance SessionConfiguration, MEMORY[0x1E69D07B0]);
        v29 = v27;
        dispatch thunk of JSONDecoder.decode<A>(_:from:)();
        v10 = v48;
        outlined consume of Data._Representation(v26, v29);

        (*(*(v28 - 8) + 56))(v15, 0, 1, v28);
        v18 = v49;
        outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v15, v49, &_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
        v4 = v52;
LABEL_15:
        v52 = NSCoder.decodeObject<A>(of:forKey:)();
        type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSUUID, 0x1E696AFB0);
        v31 = NSCoder.decodeObject<A>(of:forKey:)();
        if (v31)
        {
          v32 = v31;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v33 = 0;
        }

        else
        {
          v33 = 1;
        }

        v34 = type metadata accessor for UUID();
        (*(*(v34 - 8) + 56))(v7, v33, 1, v34);
        outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v7, v10, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v35 = MEMORY[0x1E12A1410](0x456F547061547369, 0xEB00000000746964);
        LODWORD(v48) = [a1 decodeBoolForKey_];

        v36 = MEMORY[0x1E12A1410](0x616E4558554D7369, 0xEC00000064656C62);
        v49 = a1;
        v47 = [a1 decodeBoolForKey_];

        ObjectType = swift_getObjectType();
        v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v40 = v39;
        if (v52)
        {
          v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v43 = v42;
        }

        else
        {
          v41 = 0;
          v43 = 0;
        }

        outlined init with copy of ReferenceResolutionClientProtocol?(v10, v4, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v44 = v50;
        outlined init with copy of ReferenceResolutionClientProtocol?(v18, v50, &_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
        v25 = (*(ObjectType + 128))(v38, v40, v41, v43, v4, v44, v48, v47);

        outlined destroy of ReferenceResolutionClientProtocol?(v10, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        outlined destroy of ReferenceResolutionClientProtocol?(v18, &_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
        swift_deallocPartialClassInstance();
        return v25;
      }
    }

    else
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v57, &_sypSgMd, &_sypSgMR);
    }

    v30 = type metadata accessor for SessionConfiguration();
    (*(*(v30 - 8) + 56))(v18, 1, 1, v30);
    goto LABEL_15;
  }

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  __swift_project_value_buffer(v21, static Logger.executor);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_1DC659000, v22, v23, "Could not deserialize executionRequestId in StartExecutionTurn", v24, 2u);
    MEMORY[0x1E12A2F50](v24, -1, -1);
  }

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return 0;
}

Swift::Void __swiftcall StartExecutionTurn.encode(with:)(NSCoder with)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v25 - v6;
  v8 = MEMORY[0x1E12A1410](*(v2 + OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_executionRequestId), *(v2 + OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_executionRequestId + 8), v5);
  v9 = MEMORY[0x1E12A1410](0xD000000000000012, 0x80000001DCA7AEC0);
  [(objc_class *)with.super.isa encodeObject:v8 forKey:v9];

  if (*(v2 + OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_rootRequestId + 8))
  {
    v10 = MEMORY[0x1E12A1410](*(v2 + OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_rootRequestId));
  }

  else
  {
    v10 = 0;
  }

  v11 = MEMORY[0x1E12A1410](0x75716552746F6F72, 0xED00006449747365);
  [(objc_class *)with.super.isa encodeObject:v10 forKey:v11];

  outlined init with copy of ReferenceResolutionClientProtocol?(v2 + OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_sessionId, v7, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  isa = 0;
  if ((*(v13 + 48))(v7, 1, v12) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v13 + 8))(v7, v12);
  }

  v15 = MEMORY[0x1E12A1410](0x496E6F6973736573, 0xE900000000000064);
  [(objc_class *)with.super.isa encodeObject:isa forKey:v15];
  swift_unknownObjectRelease();

  v16 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_isTapToEdit);
  v17 = MEMORY[0x1E12A1410](0x456F547061547369, 0xEB00000000746964);
  [(objc_class *)with.super.isa encodeBool:v16 forKey:v17];

  v18 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_isMUXEnabled);
  v19 = MEMORY[0x1E12A1410](0x616E4558554D7369, 0xEC00000064656C62);
  [(objc_class *)with.super.isa encodeBool:v18 forKey:v19];

  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
  lazy protocol witness table accessor for type SessionConfiguration? and conformance <A> A?();
  v20 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v22 = v21;

  v23 = Data._bridgeToObjectiveC()().super.isa;
  v24 = MEMORY[0x1E12A1410](0xD000000000000014, 0x80000001DCA7B320);
  [(objc_class *)with.super.isa encodeObject:v23 forKey:v24];

  outlined consume of Data._Representation(v20, v22);
}

uint64_t StartExecutionTurn.debugDescription.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v22 - v3;
  v25 = 0;
  v26 = 0xE000000000000000;
  _StringGuts.grow(_:)(43);
  started = type metadata accessor for StartExecutionTurn(0);
  v24.receiver = v0;
  v24.super_class = started;
  v6 = objc_msgSendSuper2(&v24, sel_debugDescription);
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  MEMORY[0x1E12A1580](v7, v9);

  MEMORY[0x1E12A1580](31520, 0xE200000000000000);
  v23 = 0;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1E12A1580](8250, 0xE200000000000000);
  MEMORY[0x1E12A1580](*&v1[OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_executionRequestId], *&v1[OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_executionRequestId + 8]);
  MEMORY[0x1E12A1580](8236, 0xE200000000000000);
  v23 = 1;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1E12A1580](8250, 0xE200000000000000);
  if (*&v1[OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_rootRequestId + 8])
  {
    v10 = *&v1[OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_rootRequestId];
    v11 = *&v1[OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_rootRequestId + 8];
  }

  else
  {
    v10 = 0x3E6C696E3CLL;
    v11 = 0xE500000000000000;
  }

  MEMORY[0x1E12A1580](v10, v11);

  MEMORY[0x1E12A1580](2604, 0xE200000000000000);
  v23 = 2;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1E12A1580](8250, 0xE200000000000000);
  outlined init with copy of ReferenceResolutionClientProtocol?(&v1[OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_sessionId], v4, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v4, 1, v12) == 1)
  {
    v14 = 0x3E6C696E3CLL;
    outlined destroy of ReferenceResolutionClientProtocol?(v4, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v15 = 0xE500000000000000;
  }

  else
  {
    v14 = MEMORY[0x1E129A250]();
    v15 = v16;
    (*(v13 + 8))(v4, v12);
  }

  MEMORY[0x1E12A1580](v14, v15);

  MEMORY[0x1E12A1580](8236, 0xE200000000000000);
  MEMORY[0x1E12A1580](0x456F547061547369, 0xEB00000000746964);
  MEMORY[0x1E12A1580](8250, 0xE200000000000000);
  if (v1[OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_isTapToEdit])
  {
    v17 = 1702195828;
  }

  else
  {
    v17 = 0x65736C6166;
  }

  if (v1[OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_isTapToEdit])
  {
    v18 = 0xE400000000000000;
  }

  else
  {
    v18 = 0xE500000000000000;
  }

  MEMORY[0x1E12A1580](v17, v18);

  MEMORY[0x1E12A1580](8236, 0xE200000000000000);
  MEMORY[0x1E12A1580](0x616E4558554D7369, 0xEC00000064656C62);
  MEMORY[0x1E12A1580](8250, 0xE200000000000000);
  if (v1[OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_isMUXEnabled])
  {
    v19 = 1702195828;
  }

  else
  {
    v19 = 0x65736C6166;
  }

  if (v1[OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_isMUXEnabled])
  {
    v20 = 0xE400000000000000;
  }

  else
  {
    v20 = 0xE500000000000000;
  }

  MEMORY[0x1E12A1580](v19, v20);

  MEMORY[0x1E12A1580](125, 0xE100000000000000);
  return v25;
}

id StartExecutionTurn.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id StartExecutionTurn.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StartExecutionTurn(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t lazy protocol witness table accessor for type SessionConfiguration? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type SessionConfiguration? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type SessionConfiguration? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
    lazy protocol witness table accessor for type SessionConfiguration and conformance SessionConfiguration(&lazy protocol witness table cache variable for type SessionConfiguration and conformance SessionConfiguration, MEMORY[0x1E69D07A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SessionConfiguration? and conformance <A> A?);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type SessionConfiguration and conformance SessionConfiguration(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SessionConfiguration();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata completion function for StartExecutionTurn(uint64_t a1)
{
  _s10Foundation4UUIDVSgMaTm_2(319, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8]);
  if (v1 <= 0x3F)
  {
    _s10Foundation4UUIDVSgMaTm_2(319, &lazy cache variable for type metadata for SessionConfiguration?, MEMORY[0x1E69D07A0]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

unint64_t lazy protocol witness table accessor for type StartExecutionTurn.CodingKeys and conformance StartExecutionTurn.CodingKeys()
{
  result = lazy protocol witness table cache variable for type StartExecutionTurn.CodingKeys and conformance StartExecutionTurn.CodingKeys;
  if (!lazy protocol witness table cache variable for type StartExecutionTurn.CodingKeys and conformance StartExecutionTurn.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartExecutionTurn.CodingKeys and conformance StartExecutionTurn.CodingKeys);
  }

  return result;
}

unint64_t specialized StartExecutionTurn.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of StartExecutionTurn.CodingKeys.init(rawValue:), v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

uint64_t outlined destroy of RootRequestAware?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes16RootRequestAware_pSgMd, &_s16SiriMessageTypes16RootRequestAware_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *StopRepromptFeatureFlag.forceEnabled.unsafeMutableAddressor()
{
  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }

  return &static StopRepromptFeatureFlag.forceEnabled;
}

uint64_t static StopRepromptFeatureFlag.forceEnabled.getter()
{
  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }
}

uint64_t StopRepromptFeatureFlag.isEnabled.getter()
{
  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }

  v0 = static StopRepromptFeatureFlag.forceEnabled;
  os_unfair_lock_lock((static StopRepromptFeatureFlag.forceEnabled + 20));
  v1 = *(v0 + 16);
  if (v1 == 2)
  {
    v3[3] = &type metadata for StopRepromptFeatureFlag;
    v3[4] = lazy protocol witness table accessor for type StopRepromptFeatureFlag and conformance StopRepromptFeatureFlag();
    LOBYTE(v1) = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
  }

  os_unfair_lock_unlock((v0 + 20));
  return v1 & 1;
}

unint64_t lazy protocol witness table accessor for type StopRepromptFeatureFlag and conformance StopRepromptFeatureFlag()
{
  result = lazy protocol witness table cache variable for type StopRepromptFeatureFlag and conformance StopRepromptFeatureFlag;
  if (!lazy protocol witness table cache variable for type StopRepromptFeatureFlag and conformance StopRepromptFeatureFlag)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StopRepromptFeatureFlag and conformance StopRepromptFeatureFlag);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StopRepromptFeatureFlag and conformance StopRepromptFeatureFlag;
  if (!lazy protocol witness table cache variable for type StopRepromptFeatureFlag and conformance StopRepromptFeatureFlag)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StopRepromptFeatureFlag and conformance StopRepromptFeatureFlag);
  }

  return result;
}

Swift::Int StopRepromptFeatureFlag.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x1E12A23F0](0);
  return Hasher._finalize()();
}

Swift::String_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SiriEnvironment.getValue(provider:key:)(Swift::String provider, Swift::String key)
{
  object = key._object;
  countAndFlagsBits = key._countAndFlagsBits;
  SiriEnvironment.getProvider(name:)(provider._countAndFlagsBits, provider._object);
  if (v4)
  {
    swift_getObjectType();
    v5._countAndFlagsBits = countAndFlagsBits;
    v5._object = object;
    v6 = SiriEnvironmentStringKeyedValueFetching.getValue(forKey:)(v5);
    v7 = v6.value._countAndFlagsBits;
    v8 = v6.value._object;
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v9 = v7;
  v10 = v8;
  result.value._object = v10;
  result.value._countAndFlagsBits = v9;
  return result;
}

uint64_t key path getter for CurrentRequest.refId : CurrentRequest@<X0>(uint64_t *a1@<X8>)
{
  result = CurrentRequest.refId.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t key path getter for CurrentRequest.aceId : CurrentRequest@<X0>(uint64_t *a1@<X8>)
{
  result = CurrentRequest.aceId.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t key path getter for CurrentRequest.executionRequestId : CurrentRequest@<X0>(uint64_t *a1@<X8>)
{
  result = CurrentRequest.executionRequestId.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t key path getter for CurrentRequest.sessionHandoffContinuityID : CurrentRequest@<X0>(uint64_t *a1@<X8>)
{
  result = CurrentRequest.sessionHandoffContinuityID.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t key path getter for CurrentRequest.peerName : CurrentRequest@<X0>(uint64_t *a1@<X8>)
{
  result = CurrentRequest.peerName.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t key path getter for CurrentRequest.speechPackage : CurrentRequest@<X0>(uint64_t *a1@<X8>)
{
  result = CurrentRequest.speechPackage.getter();
  *a1 = result;
  return result;
}

uint64_t key path getter for CurrentRequest.resultCandidateId : CurrentRequest@<X0>(uint64_t *a2@<X8>)
{
  result = CurrentRequest.resultCandidateId.getter();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path getter for CurrentRequest.asrOnDevice : CurrentRequest@<X0>(_BYTE *a1@<X8>)
{
  result = CurrentRequest.asrOnDevice.getter();
  *a1 = result;
  return result;
}

uint64_t StringKeyedValue.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t StringKeyedValue.valueType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for StringKeyedValue(0) + 24);
  v4 = type metadata accessor for TypeIdentifier();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t StringKeyedValue.init<A, B>(name:keyPath:valueType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *a5 = a1;
  *(a5 + 1) = a2;
  *(a5 + 2) = a3;
  v7 = *(type metadata accessor for StringKeyedValue(0) + 24);
  v8 = type metadata accessor for TypeIdentifier();
  v9 = *(*(v8 - 8) + 32);

  return v9(&a5[v7], a4, v8);
}

uint64_t <=> infix<A, B>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, char *a4@<X8>)
{
  v8 = type metadata accessor for TypeIdentifier();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);

  TypeIdentifier.init(for:)();
  return StringKeyedValue.init<A, B>(name:keyPath:valueType:)(a1, a2, a3, v10, a4);
}

void *makeStringKeys(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_14SiriKitRuntime16StringKeyedValueV5valuetSgMd, &_sSS3key_14SiriKitRuntime16StringKeyedValueV5valuetSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v83 = (&v71 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v71 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_14SiriKitRuntime16StringKeyedValueVtSgMd, &_sSS_14SiriKitRuntime16StringKeyedValueVtSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = (&v71 - v8);
  v10 = type metadata accessor for StringKeyedValue(0) - 8;
  MEMORY[0x1EEE9AC00](v10);
  v85 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v78 = &v71 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v17 = (&v71 - v16);
  v72 = *(a1 + 16);
  if (!v72)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v18 = 0;
  v74 = a1 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
  v84 = *(v15 + 72);
  v19 = MEMORY[0x1E69E7CC8];
  v73 = xmmword_1DCA66060;
  v77 = v9;
  v71 = (&v71 - v16);
LABEL_4:
  outlined init with copy of StringKeyedValue(v74 + v84 * v18, v17);
  v75 = v18 + 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_14SiriKitRuntime16StringKeyedValueVtGMd, &_ss23_ContiguousArrayStorageCySS_14SiriKitRuntime16StringKeyedValueVtGMR);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_14SiriKitRuntime16StringKeyedValueVtMd, &_sSS_14SiriKitRuntime16StringKeyedValueVtMR);
  v21 = *(v20 - 8);
  v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = v73;
  v24 = (v23 + v22);
  v25 = *(v20 + 48);
  v26 = v17[1];
  *v24 = *v17;
  v24[1] = v26;
  outlined init with copy of StringKeyedValue(v17, v23 + v22 + v25);
  v27 = v20;

  v28 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_14SiriKitRuntime16StringKeyedValueVTt0g5Tf4g_n(v23);
  swift_setDeallocating();
  outlined destroy of ReferenceResolutionClientProtocol?(v23 + v22, &_sSS_14SiriKitRuntime16StringKeyedValueVtMd, &_sSS_14SiriKitRuntime16StringKeyedValueVtMR);
  swift_deallocClassInstance();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v88 = v19;
  v30 = *(v28 + 64);
  v76 = v28 + 64;
  v31 = 1 << *(v28 + 32);
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  else
  {
    v32 = -1;
  }

  v33 = v32 & v30;
  v34 = (v31 + 63) >> 6;
  v81 = (v21 + 48);
  v82 = (v21 + 56);
  v80 = v28;

  v35 = 0;
  v79 = v27;
  while (1)
  {
    v87 = isUniquelyReferenced_nonNull_native;
    if (!v33)
    {
      break;
    }

    v36 = v6;
    v37 = v35;
LABEL_19:
    v39 = __clz(__rbit64(v33));
    v33 &= v33 - 1;
    v40 = v39 | (v37 << 6);
    v41 = (*(v80 + 48) + 16 * v40);
    v43 = *v41;
    v42 = v41[1];
    v44 = v78;
    outlined init with copy of StringKeyedValue(*(v80 + 56) + v40 * v84, v78);
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_14SiriKitRuntime16StringKeyedValueV5valuetMd, &_sSS3key_14SiriKitRuntime16StringKeyedValueV5valuetMR);
    v46 = *(v45 + 48);
    *v36 = v43;
    *(v36 + 1) = v42;
    v6 = v36;
    outlined init with take of StringKeyedValue(v44, &v36[v46]);
    (*(*(v45 - 8) + 56))(v36, 0, 1, v45);

    v86 = v37;
    v9 = v77;
    v27 = v79;
LABEL_20:
    v47 = v83;
    outlined init with take of (key: String, value: StringKeyedValue)?(v6, v83);
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_14SiriKitRuntime16StringKeyedValueV5valuetMd, &_sSS3key_14SiriKitRuntime16StringKeyedValueV5valuetMR);
    v49 = 1;
    if ((*(*(v48 - 8) + 48))(v47, 1, v48) != 1)
    {
      v50 = *(v48 + 48);
      v51 = v83;
      v53 = *v83;
      v52 = v83[1];
      outlined init with copy of StringKeyedValue(v83 + v50, v9 + *(v27 + 48));
      *v9 = v53;
      v9[1] = v52;

      outlined destroy of ReferenceResolutionClientProtocol?(v51, &_sSS3key_14SiriKitRuntime16StringKeyedValueV5valuetMd, &_sSS3key_14SiriKitRuntime16StringKeyedValueV5valuetMR);
      v49 = 0;
    }

    (*v82)(v9, v49, 1, v27);
    if ((*v81)(v9, 1, v27) == 1)
    {

      v17 = v71;
      outlined destroy of StringKeyedValue(v71);
      v18 = v75;
      if (v75 == v72)
      {
        return v19;
      }

      goto LABEL_4;
    }

    v54 = v6;
    v55 = *v9;
    v56 = v9[1];
    outlined init with take of StringKeyedValue(v9 + *(v27 + 48), v85);
    v58 = specialized __RawDictionaryStorage.find<A>(_:)(v55, v56);
    v59 = v19[2];
    v60 = (v57 & 1) == 0;
    v61 = v59 + v60;
    if (__OFADD__(v59, v60))
    {
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }

    v62 = v57;
    if (v19[3] >= v61)
    {
      if (v87)
      {
        v19 = v88;
        if (v57)
        {
          goto LABEL_8;
        }
      }

      else
      {
        specialized _NativeDictionary.copy()();
        v19 = v88;
        if (v62)
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v61, v87 & 1);
      v63 = specialized __RawDictionaryStorage.find<A>(_:)(v55, v56);
      if ((v62 & 1) != (v64 & 1))
      {
        goto LABEL_40;
      }

      v58 = v63;
      v19 = v88;
      if (v62)
      {
LABEL_8:

        outlined assign with take of StringKeyedValue(v85, v19[7] + v58 * v84);
        goto LABEL_9;
      }
    }

    v19[(v58 >> 6) + 8] |= 1 << v58;
    v65 = (v19[6] + 16 * v58);
    *v65 = v55;
    v65[1] = v56;
    outlined init with take of StringKeyedValue(v85, v19[7] + v58 * v84);
    v66 = v19[2];
    v67 = __OFADD__(v66, 1);
    v68 = v66 + 1;
    if (v67)
    {
      goto LABEL_39;
    }

    v19[2] = v68;
LABEL_9:
    isUniquelyReferenced_nonNull_native = 1;
    v35 = v86;
    v6 = v54;
  }

  if (v34 <= v35 + 1)
  {
    v38 = v35 + 1;
  }

  else
  {
    v38 = v34;
  }

  while (1)
  {
    v37 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      break;
    }

    if (v37 >= v34)
    {
      v86 = v38 - 1;
      v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_14SiriKitRuntime16StringKeyedValueV5valuetMd, &_sSS3key_14SiriKitRuntime16StringKeyedValueV5valuetMR);
      (*(*(v69 - 8) + 56))(v6, 1, 1, v69);
      v33 = 0;
      goto LABEL_20;
    }

    v33 = *(v76 + 8 * v37);
    ++v35;
    if (v33)
    {
      v36 = v6;
      goto LABEL_19;
    }
  }

  __break(1u);
  return MEMORY[0x1E69E7CC8];
}

Swift::String_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SiriEnvironmentStringKeyedValueFetching.getValue(forKey:)(Swift::String forKey)
{
  v4 = v2;
  v5 = v1;
  object = forKey._object;
  countAndFlagsBits = forKey._countAndFlagsBits;
  v8 = type metadata accessor for TypeIdentifier();
  v42 = *(v8 - 8);
  v43 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v39 = &v36 - v11;
  v40 = type metadata accessor for TypeInformation();
  v38 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v37 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for StringKeyedValue(0);
  v13 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v36 - v18;
  v20 = *(v4 + 24);
  v21 = v3;
  v44 = v5;
  v22 = v20(v5, v4, v17);
  if (*(v22 + 16) && (v23 = specialized __RawDictionaryStorage.find<A>(_:)(countAndFlagsBits, object), (v24 & 1) != 0))
  {
    outlined init with copy of StringKeyedValue(*(v22 + 56) + *(v13 + 72) * v23, v15);

    outlined init with take of StringKeyedValue(v15, v19);
    *&v46 = v21;
    swift_unknownObjectRetain();
    swift_getAtAnyKeyPath();
    swift_unknownObjectRelease();
    if (v49)
    {
      outlined init with take of Any(&v48, v50);
      v26 = v42;
      v25 = v43;
      (*(v42 + 16))(v39, &v19[*(v36 + 24)], v43);
      v27 = v37;
      TypeInformation.init(for:)();
      v28 = TypeInformation.isOptional.getter();
      (*(v38 + 8))(v27, v40);
      v29 = v51;
      v30 = v41;
      if ((v28 & 1) == 0)
      {
        goto LABEL_7;
      }

      outlined init with take of Any(v50, &v45);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
      swift_dynamicCast();
      if (v47)
      {
        outlined init with take of Any(&v46, &v48);
        outlined init with take of Any(&v48, v50);
LABEL_7:
        outlined init with copy of Any(v50, &v48);
        if (swift_dynamicCast())
        {
          __swift_destroy_boxed_opaque_existential_1Tm(v50);
          v22 = *(&v46 + 1);
          v21 = v46;
LABEL_19:
          outlined destroy of StringKeyedValue(v19);
          goto LABEL_10;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
        TypeIdentifier.init(for:)();
        static Transformation.defaultLengthLimit.getter();
        static Transformation.transform<A>(_:to:lengthLimit:)();
        if (v29)
        {

          (*(v26 + 8))(v30, v25);
        }

        else
        {
          (*(v26 + 8))(v30, v25);
          v22 = *(&v48 + 1);
          if (*(&v48 + 1))
          {
            v21 = v48;
            goto LABEL_18;
          }
        }

        outlined init with copy of Any(v50, &v48);
        v21 = String.init<A>(describing:)();
        v22 = v34;
LABEL_18:
        __swift_destroy_boxed_opaque_existential_1Tm(v50);
        goto LABEL_19;
      }

      outlined destroy of StringKeyedValue(v19);
      outlined destroy of ReferenceResolutionClientProtocol?(&v46, &_sypSgMd, &_sypSgMR);
      v21 = 0;
      v22 = 0;
    }

    else
    {
      outlined destroy of StringKeyedValue(v19);
      outlined destroy of ReferenceResolutionClientProtocol?(&v48, &_sypSgMd, &_sypSgMR);
      v21 = 0;
      v22 = 0;
    }
  }

  else
  {

    lazy protocol witness table accessor for type StringKeyedValueFetchingError and conformance StringKeyedValueFetchingError();
    swift_allocError();
    *v31 = countAndFlagsBits;
    v31[1] = object;
    swift_willThrow();
  }

LABEL_10:
  v32 = v21;
  v33 = v22;
  result.value._object = v33;
  result.value._countAndFlagsBits = v32;
  return result;
}

void SiriEnvironment.getProvider(name:)(uint64_t a1, uint64_t a2)
{
  v4 = dispatch thunk of SiriEnvironment.providers.getter();
  v5 = v4;
  v6 = v4 + 64;
  v7 = 1 << *(v4 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v4 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  v31 = MEMORY[0x1E69E7CC0];
  while (v9)
  {
LABEL_9:
    v13 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    outlined init with copy of Any(*(v5 + 56) + ((v11 << 11) | (32 * v13)), v34);
    outlined init with take of Any(v34, &v32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A35EnvironmentStringKeyedValueFetching_pMd, &_s14SiriKitRuntime0A35EnvironmentStringKeyedValueFetching_pMR);
    if (swift_dynamicCast() && v33)
    {
      v30 = v33;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v31[2] + 1, 1, v31);
      }

      v15 = v31[2];
      v14 = v31[3];
      v16 = v15 + 1;
      v17 = v30;
      if (v15 >= v14 >> 1)
      {
        v28 = v31[2];
        v29 = v15 + 1;
        v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v31);
        v15 = v28;
        v16 = v29;
        v17 = v30;
        v31 = v18;
      }

      v31[2] = v16;
      *&v31[2 * v15 + 4] = v17;
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      goto LABEL_29;
    }

    if (v12 >= v10)
    {
      break;
    }

    v9 = *(v6 + 8 * v12);
    ++v11;
    if (v9)
    {
      v11 = v12;
      goto LABEL_9;
    }
  }

  v19 = v31[2];
  if (!v19)
  {
LABEL_27:

    return;
  }

  v20 = 0;
  v21 = v31 + 5;
  while (v20 < v31[2])
  {
    v22 = *v21;
    ObjectType = swift_getObjectType();
    v24 = *(v22 + 16);
    swift_unknownObjectRetain();
    if (v24(ObjectType, v22) == a1 && v25 == a2)
    {

      goto LABEL_27;
    }

    v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v27 & 1) == 0)
    {
      ++v20;
      swift_unknownObjectRelease();
      v21 += 2;
      if (v19 != v20)
      {
        continue;
      }
    }

    goto LABEL_27;
  }

LABEL_29:
  __break(1u);
}

uint64_t type metadata accessor for StringKeyedValue(uint64_t a1)
{
  result = type metadata singleton initialization cache for StringKeyedValue;
  if (!type metadata singleton initialization cache for StringKeyedValue)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with take of StringKeyedValue(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StringKeyedValue(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of (key: String, value: StringKeyedValue)?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_14SiriKitRuntime16StringKeyedValueV5valuetSgMd, &_sSS3key_14SiriKitRuntime16StringKeyedValueV5valuetSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of StringKeyedValue(uint64_t a1)
{
  v2 = type metadata accessor for StringKeyedValue(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined assign with take of StringKeyedValue(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StringKeyedValue(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type StringKeyedValueFetchingError and conformance StringKeyedValueFetchingError()
{
  result = lazy protocol witness table cache variable for type StringKeyedValueFetchingError and conformance StringKeyedValueFetchingError;
  if (!lazy protocol witness table cache variable for type StringKeyedValueFetchingError and conformance StringKeyedValueFetchingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StringKeyedValueFetchingError and conformance StringKeyedValueFetchingError);
  }

  return result;
}

void *specialized CallStateEnvironmentProvider.stringKeys.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14SiriKitRuntime16StringKeyedValueVGMd, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime16StringKeyedValueVGMR);
  v0 = *(type metadata accessor for StringKeyedValue(0) - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1DCA6B020;
  v4 = (v3 + v2);
  KeyPath = swift_getKeyPath();
  type metadata accessor for AFCallState(0);
  TypeIdentifier.init(for:)();
  *v4 = 0x746174536C6C6163;
  v4[1] = 0xE900000000000065;
  v4[2] = KeyPath;
  v6 = (v4 + v1);
  v7 = swift_getKeyPath();
  TypeIdentifier.init(for:)();
  *v6 = 0x656B616570536E6FLL;
  v6[1] = 0xE900000000000072;
  v6[2] = v7;
  v8 = v4 + 2 * v1;
  v9 = swift_getKeyPath();
  TypeIdentifier.init(for:)();
  strcpy(v8, "isDropInCall");
  v8[13] = 0;
  *(v8 + 7) = -5120;
  *(v8 + 2) = v9;
  v10 = makeStringKeys(_:)(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v10;
}

void *specialized CurrentDevice.stringKeys.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14SiriKitRuntime16StringKeyedValueVGMd, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime16StringKeyedValueVGMR);
  v0 = *(type metadata accessor for StringKeyedValue(0) - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1DCA74640;
  v4 = (v3 + v2);
  KeyPath = swift_getKeyPath();
  type metadata accessor for DeviceIdiom();
  TypeIdentifier.init(for:)();
  *v4 = 0x6449656369766564;
  v4[1] = 0xEB000000006D6F69;
  v4[2] = KeyPath;
  v6 = (v4 + v1);
  v7 = swift_getKeyPath();
  TypeIdentifier.init(for:)();
  *v6 = 0xD000000000000015;
  v6[1] = 0x80000001DCA7B3F0;
  v6[2] = v7;
  v8 = (v4 + 2 * v1);
  v9 = swift_getKeyPath();
  TypeIdentifier.init(for:)();
  *v8 = 0xD000000000000014;
  v8[1] = 0x80000001DCA89CB0;
  v8[2] = v9;
  v10 = (v4 + 3 * v1);
  v11 = swift_getKeyPath();
  type metadata accessor for SiriVoiceGender();
  TypeIdentifier.init(for:)();
  *v10 = 0x63696F5669726973;
  v10[1] = 0xEF7265646E654765;
  v10[2] = v11;
  v12 = (v4 + 4 * v1);
  v13 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  TypeIdentifier.init(for:)();
  *v12 = 0xD000000000000017;
  v12[1] = 0x80000001DCA82310;
  v12[2] = v13;
  v14 = (v4 + 5 * v1);
  v15 = swift_getKeyPath();
  type metadata accessor for Locale();
  TypeIdentifier.init(for:)();
  *v14 = 0x61636F4C69726973;
  v14[1] = 0xEA0000000000656CLL;
  v14[2] = v15;
  v16 = (v4 + 6 * v1);
  v17 = swift_getKeyPath();
  TypeIdentifier.init(for:)();
  *v16 = 0xD000000000000015;
  v16[1] = 0x80000001DCA7B3D0;
  v16[2] = v17;
  v18 = (v4 + 7 * v1);
  v19 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities33PersonalDomainsAuthenticationModeOSgMd, &_s13SiriUtilities33PersonalDomainsAuthenticationModeOSgMR);
  TypeIdentifier.init(for:)();
  *v18 = 0xD000000000000021;
  v18[1] = 0x80000001DCA82330;
  v18[2] = v19;
  v20 = &v4[v1];
  v21 = swift_getKeyPath();
  type metadata accessor for Restrictions();
  TypeIdentifier.init(for:)();
  *v20 = 0xD000000000000012;
  v20[1] = 0x80000001DCA82370;
  v20[2] = v21;
  v22 = (v4 + 9 * v1);
  v23 = swift_getKeyPath();
  TypeIdentifier.init(for:)();
  *v22 = 0xD000000000000010;
  v22[1] = 0x80000001DCA89CD0;
  v22[2] = v23;
  v24 = (v4 + 10 * v1);
  v25 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11DeviceClassOSgMd, &_s13SiriUtilities11DeviceClassOSgMR);
  TypeIdentifier.init(for:)();
  *v24 = 0x6C43656369766564;
  v24[1] = 0xEB00000000737361;
  v24[2] = v25;
  v26 = makeStringKeys(_:)(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v26;
}

void *specialized NetworkAvailability.stringKeys.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14SiriKitRuntime16StringKeyedValueVGMd, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime16StringKeyedValueVGMR);
  v0 = *(type metadata accessor for StringKeyedValue(0) - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1DCA6EB80;
  v4 = (v3 + v2);
  KeyPath = swift_getKeyPath();
  TypeIdentifier.init(for:)();
  *v4 = 0x616C696176417369;
  v4[1] = 0xEB00000000656C62;
  v4[2] = KeyPath;
  v6 = (v4 + v1);
  v7 = swift_getKeyPath();
  TypeIdentifier.init(for:)();
  *v6 = 0x736E657078457369;
  v6[1] = 0xEB00000000657669;
  v6[2] = v7;
  v8 = v4 + 2 * v1;
  v9 = swift_getKeyPath();
  TypeIdentifier.init(for:)();
  strcpy(v8, "isConstrained");
  *(v8 + 7) = -4864;
  *(v8 + 2) = v9;
  v10 = (v4 + 3 * v1);
  v11 = swift_getKeyPath();
  TypeIdentifier.init(for:)();
  *v10 = 0xD000000000000010;
  v10[1] = 0x80000001DCA89C90;
  v10[2] = v11;
  v12 = makeStringKeys(_:)(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v12;
}

void *specialized CurrentRequest.stringKeys.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14SiriKitRuntime16StringKeyedValueVGMd, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime16StringKeyedValueVGMR);
  v0 = *(type metadata accessor for StringKeyedValue(0) - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1DCA76BE0;
  v4 = (v3 + v2);
  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  TypeIdentifier.init(for:)();
  *v4 = 0x6449666572;
  v4[1] = 0xE500000000000000;
  v4[2] = KeyPath;
  v6 = (v4 + v1);
  v7 = swift_getKeyPath();
  TypeIdentifier.init(for:)();
  *v6 = 0x6449656361;
  v6[1] = 0xE500000000000000;
  v6[2] = v7;
  v8 = (v4 + 2 * v1);
  v9 = swift_getKeyPath();
  TypeIdentifier.init(for:)();
  *v8 = 0xD000000000000012;
  v8[1] = 0x80000001DCA7AEC0;
  v8[2] = v9;
  v10 = (v4 + 3 * v1);
  v11 = swift_getKeyPath();
  TypeIdentifier.init(for:)();
  *v10 = 0xD00000000000001ALL;
  v10[1] = 0x80000001DCA7B340;
  v10[2] = v11;
  v12 = (v4 + 4 * v1);
  v13 = swift_getKeyPath();
  TypeIdentifier.init(for:)();
  *v12 = 0x656D614E72656570;
  v12[1] = 0xE800000000000000;
  v12[2] = v13;
  v14 = (v4 + 5 * v1);
  v15 = swift_getKeyPath();
  type metadata accessor for InputOrigin();
  TypeIdentifier.init(for:)();
  *v14 = 0x69724F7475706E69;
  v14[1] = 0xEB000000006E6967;
  v14[2] = v15;
  v16 = (v4 + 6 * v1);
  v17 = swift_getKeyPath();
  type metadata accessor for InteractionType();
  TypeIdentifier.init(for:)();
  *v16 = 0x7463617265746E69;
  v16[1] = 0xEF657079546E6F69;
  v16[2] = v17;
  v18 = (v4 + 7 * v1);
  v19 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  TypeIdentifier.init(for:)();
  *v18 = 0x756F536F69647561;
  v18[1] = 0xEB00000000656372;
  v18[2] = v19;
  v20 = &v4[v1];
  v21 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  TypeIdentifier.init(for:)();
  *v20 = 0xD000000000000010;
  v20[1] = 0x80000001DCA867E0;
  v20[2] = v21;
  v22 = v4 + 9 * v1;
  v23 = swift_getKeyPath();
  type metadata accessor for ResponseMode();
  TypeIdentifier.init(for:)();
  strcpy(v22, "responseMode");
  v22[13] = 0;
  *(v22 + 7) = -5120;
  *(v22 + 2) = v23;
  v24 = v4 + 10 * v1;
  v25 = swift_getKeyPath();
  type metadata accessor for MultiUserState();
  TypeIdentifier.init(for:)();
  strcpy(v24, "multiUserState");
  v24[15] = -18;
  *(v24 + 2) = v25;
  v26 = v4 + 11 * v1;
  v27 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities14BargeInContextVSgMd, &_s13SiriUtilities14BargeInContextVSgMR);
  TypeIdentifier.init(for:)();
  strcpy(v26, "bargeInContext");
  v26[15] = -18;
  *(v26 + 2) = v27;
  v28 = (v4 + 12 * v1);
  v29 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities8HomeInfoVSgMd, &_s13SiriUtilities8HomeInfoVSgMR);
  TypeIdentifier.init(for:)();
  *v28 = 0x74616E696769726FLL;
  v28[1] = 0xEF656D6F48676E69;
  v28[2] = v29;
  v30 = v4 + 13 * v1;
  v31 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15AFSpeechPackageCSgMd, &_sSo15AFSpeechPackageCSgMR);
  TypeIdentifier.init(for:)();
  strcpy(v30, "speechPackage");
  *(v30 + 7) = -4864;
  *(v30 + 2) = v31;
  v32 = (v4 + 14 * v1);
  v33 = swift_getKeyPath();
  TypeIdentifier.init(for:)();
  *v32 = 0xD000000000000011;
  v32[1] = 0x80000001DCA7AB40;
  v32[2] = v33;
  v34 = (v4 + 15 * v1);
  v35 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd, &_sSbSgMR);
  TypeIdentifier.init(for:)();
  *v34 = 0x7665446E4F727361;
  v34[1] = 0xEB00000000656369;
  v34[2] = v35;
  v36 = &v4[2 * v1];
  v37 = swift_getKeyPath();
  type metadata accessor for RequestPositionInSession();
  TypeIdentifier.init(for:)();
  *v36 = 0xD000000000000011;
  v36[1] = 0x80000001DCA86900;
  v36[2] = v37;
  v38 = makeStringKeys(_:)(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v38;
}

uint64_t instantiation function for generic protocol witness table for CurrentDevice(uint64_t a1)
{
  result = lazy protocol witness table accessor for type CurrentDevice and conformance CurrentDevice(&lazy protocol witness table cache variable for type CurrentDevice and conformance CurrentDevice, MEMORY[0x1E69D3580], MEMORY[0x1E69D3578]);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for NetworkAvailability(uint64_t a1)
{
  result = lazy protocol witness table accessor for type CurrentDevice and conformance CurrentDevice(&lazy protocol witness table cache variable for type NetworkAvailability and conformance NetworkAvailability, MEMORY[0x1E69D3638], MEMORY[0x1E69D3630]);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for CurrentRequest(uint64_t a1)
{
  result = lazy protocol witness table accessor for type CurrentDevice and conformance CurrentDevice(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest, MEMORY[0x1E69CE570], MEMORY[0x1E69CE440]);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for CallStateEnvironmentProvider(uint64_t a1)
{
  result = lazy protocol witness table accessor for type CurrentDevice and conformance CurrentDevice(&lazy protocol witness table cache variable for type CallStateEnvironmentProvider and conformance CallStateEnvironmentProvider, MEMORY[0x1E69D0098], MEMORY[0x1E69D0090]);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CurrentDevice and conformance CurrentDevice(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *initializeBufferWithCopyOfBuffer for StringKeyedValue(char *a1, char *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v10 = *a2;
    *v3 = *a2;
    v3 = (v10 + ((v4 + 16) & ~v4));
  }

  else
  {
    v5 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v5;
    *(a1 + 2) = *(a2 + 2);
    v6 = *(a3 + 24);
    v8 = type metadata accessor for TypeIdentifier();
    v9 = *(*(v8 - 8) + 16);

    v9(&v3[v6], &a2[v6], v8);
  }

  return v3;
}

uint64_t destroy for StringKeyedValue(uint64_t a1, uint64_t a2)
{

  v4 = *(a2 + 24);
  v5 = type metadata accessor for TypeIdentifier();
  v6 = *(*(v5 - 8) + 8);

  return v6(a1 + v4, v5);
}

char *initializeWithCopy for StringKeyedValue(char *a1, char *a2, uint64_t a3)
{
  v5 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v5;
  *(a1 + 2) = *(a2 + 2);
  v6 = *(a3 + 24);
  v7 = type metadata accessor for TypeIdentifier();
  v8 = *(*(v7 - 8) + 16);

  v8(&a1[v6], &a2[v6], v7);
  return a1;
}

char *assignWithCopy for StringKeyedValue(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);

  *(a1 + 2) = *(a2 + 2);

  v6 = *(a3 + 24);
  v7 = type metadata accessor for TypeIdentifier();
  (*(*(v7 - 8) + 24))(&a1[v6], &a2[v6], v7);
  return a1;
}

uint64_t initializeWithTake for StringKeyedValue(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v5 = *(a3 + 24);
  v6 = type metadata accessor for TypeIdentifier();
  (*(*(v6 - 8) + 32))(a1 + v5, a2 + v5, v6);
  return a1;
}

char *assignWithTake for StringKeyedValue(char *a1, char *a2, uint64_t a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;

  *(a1 + 2) = *(a2 + 2);

  v7 = *(a3 + 24);
  v8 = type metadata accessor for TypeIdentifier();
  (*(*(v8 - 8) + 40))(&a1[v7], &a2[v7], v8);
  return a1;
}

uint64_t type metadata completion function for StringKeyedValue(uint64_t a1)
{
  result = type metadata accessor for TypeIdentifier();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *StubCamBridge.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return &static StubCamBridge.shared;
}

uint64_t StubCamBridge.camBridgeState.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

uint64_t StubCamBridge.warmupCalls.setter(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 24) = a1;
  return result;
}

double StubCamBridge.rankCallsArgs.getter()
{
  swift_beginAccess();

  return result;
}

uint64_t StubCamBridge.rankCallsArgs.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 32) = a1;
}

uint64_t StubCamBridge.RankCallArgs.rcId.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t StubCamBridge.RankCallArgs.rankerContext.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for StubCamBridge.RankCallArgs(0) + 24);
  v4 = type metadata accessor for RankerContext();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t StubCamBridge.RankCallArgs.init(rcId:actions:rankerContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *a5 = a1;
  *(a5 + 1) = a2;
  *(a5 + 2) = a3;
  v7 = *(type metadata accessor for StubCamBridge.RankCallArgs(0) + 24);
  v8 = type metadata accessor for RankerContext();
  v9 = *(*(v8 - 8) + 32);

  return v9(&a5[v7], a4, v8);
}

uint64_t StubCamBridge.asyncWarmUpIfSupported()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v12[-v2];
  swift_beginAccess();
  v4 = *(v0 + 24);
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
    goto LABEL_5;
  }

  *(v0 + 24) = v6;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
  if (one-time initialization token for shared != -1)
  {
LABEL_5:
    swift_once();
  }

  swift_beginAccess();
  v8 = static MessageBusActor.shared;
  v9 = lazy protocol witness table accessor for type MessageBusActor and conformance MessageBusActor();
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v10 + 24) = v9;

  return _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v3, &async function pointer to partial apply for closure #1 in StubCamBridge.asyncWarmUpIfSupported(), v10);
}

uint64_t StubCamBridge.commit(rcId:)()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t StubCamBridge.commit(action:)()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t StubCamBridge.rank(rcId:actions:rankerContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for CamParse();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v52 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_7SiriCam15ActionCandidateV7elementtMd, &_sSi6offset_7SiriCam15ActionCandidateV7elementtMR);
  MEMORY[0x1EEE9AC00](v51);
  v48 = (&v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v50 = &v42 - v13;
  v49 = type metadata accessor for RankedAction();
  v53 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for StubCamBridge.RankCallArgs(0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v20 + 32);
  v22 = type metadata accessor for RankerContext();
  (*(*(v22 - 8) + 16))(&v19[v21], a4, v22);
  *v19 = a1;
  *(v19 + 1) = a2;
  *(v19 + 2) = a3;
  swift_beginAccess();
  v23 = *(v4 + 32);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v4 + 32) = v23;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v23[2] + 1, 1, v23);
    *(v4 + 32) = v23;
  }

  v26 = v23[2];
  v25 = v23[3];
  if (v26 >= v25 >> 1)
  {
    v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1, v23);
  }

  v23[2] = v26 + 1;
  outlined init with take of StubCamBridge.RankCallArgs(v19, v23 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v26);
  *(v4 + 32) = v23;
  swift_endAccess();
  v27 = *(a3 + 16);
  v28 = MEMORY[0x1E69E7CC0];
  if (v27)
  {
    v55 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v27, 0);
    v29 = 0;
    v47 = type metadata accessor for ActionCandidate();
    v30 = *(v47 - 8);
    v31 = *(v30 + 16);
    v45 = v30 + 16;
    v46 = v31;
    v32 = a3 + ((*(v30 + 80) + 32) & ~*(v30 + 80));
    v28 = v55;
    v33 = *(v30 + 72);
    v43 = (v30 + 32);
    v44 = v33;
    v42 = v53 + 32;
    do
    {
      v54 = v28;
      v35 = v50;
      v34 = v51;
      v36 = *(v51 + 48);
      v37 = v47;
      v46(&v50[v36], v32, v47);
      v38 = v48;
      *v48 = v29;
      (*v43)(v38 + *(v34 + 48), &v35[v36], v37);
      ActionCandidate.flowHandlerId.getter();
      ActionCandidate.parse.getter();
      ActionCandidate.userData.getter();
      v28 = v54;
      RankedAction.init(flowHandlerId:parse:score:alternatives:userData:)();
      outlined destroy of ReferenceResolutionClientProtocol?(v38, &_sSi6offset_7SiriCam15ActionCandidateV7elementtMd, &_sSi6offset_7SiriCam15ActionCandidateV7elementtMR);
      v55 = v28;
      v40 = *(v28 + 16);
      v39 = *(v28 + 24);
      if (v40 >= v39 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1);
        v28 = v55;
      }

      ++v29;
      *(v28 + 16) = v40 + 1;
      (*(v53 + 32))(v28 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v40, v15, v49);
      v32 += v44;
      --v27;
    }

    while (v27);
  }

  return v28;
}

uint64_t StubCamBridge.action(requestId:camId:rcId:speechPackage:rankedActions:inputOrigin:)()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t StubCamBridge.selectAction(rcId:speechPackage:rankedActions:conversationHelperInput:conversationHelper:inputOrigin:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a1;
  v5[6] = a5;
  v6 = type metadata accessor for Parse();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  v7 = type metadata accessor for Input();
  v5[11] = v7;
  v5[12] = *(v7 - 8);
  v5[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow16ActionParaphraseVSgMd, &_s11SiriKitFlow16ActionParaphraseVSgMR);
  v5[14] = swift_task_alloc();
  v8 = type metadata accessor for PluginAction();
  v5[15] = v8;
  v5[16] = *(v8 - 8);
  v5[17] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9 = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](StubCamBridge.selectAction(rcId:speechPackage:rankedActions:conversationHelperInput:conversationHelper:inputOrigin:), v9, 0);
}

uint64_t StubCamBridge.selectAction(rcId:speechPackage:rankedActions:conversationHelperInput:conversationHelper:inputOrigin:)()
{
  if (*(v0[6] + 16))
  {
    v1 = v0[17];
    v2 = v0[13];
    v3 = v0[14];
    v4 = v0[12];
    v24 = v0[11];
    v5 = v0[10];
    v6 = v0[7];
    v7 = v0[8];
    type metadata accessor for RankedAction();
    v8 = type metadata accessor for ActionParaphrase();
    (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
    RankedAction.toPluginAction(withSpeechPackage:withParaphrase:)(0, v3, v1);
    outlined destroy of ReferenceResolutionClientProtocol?(v3, &_s11SiriKitFlow16ActionParaphraseVSgMd, &_s11SiriKitFlow16ActionParaphraseVSgMR);
    PluginAction.input.getter();
    Input.parse.getter();
    (*(v4 + 8))(v2, v24);
    v9 = (*(v7 + 88))(v5, v6);
    v10 = *MEMORY[0x1E69D0178];
    (*(v7 + 8))(v5, v6);
    v12 = v0[16];
    v11 = v0[17];
    v13 = v0[15];
    if (v9 == v10)
    {
      v14 = v0[5];
      (*(v0[8] + 104))(v0[9], v9, v0[7]);
      Input.init(parse:)();
      (*(v12 + 8))(v11, v13);
      v15 = type metadata accessor for CamOutput(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v15 - 8) + 56))(v14, 0, 1, v15);
    }

    else
    {
      v18 = v0[5];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11SiriKitFlow12PluginActionVGMd, &_ss23_ContiguousArrayStorageCy11SiriKitFlow12PluginActionVGMR);
      v19 = (*(v12 + 80) + 32) & ~*(v12 + 80);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1DCA66060;
      (*(v12 + 32))(v20 + v19, v11, v13);
      *v18 = v20;
      v21 = type metadata accessor for CamOutput(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v21 - 8) + 56))(v18, 0, 1, v21);
    }
  }

  else
  {
    v16 = v0[5];
    (*(v0[8] + 104))(v0[9], *MEMORY[0x1E69D0178], v0[7]);
    Input.init(parse:)();
    v17 = type metadata accessor for CamOutput(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v17 - 8) + 56))(v16, 0, 1, v17);
  }

  v22 = v0[1];

  return v22();
}

void *one-time initialization function for shared(uint64_t a1)
{
  type metadata accessor for StubCamBridge();
  v1 = swift_allocObject();
  result = StubCamBridge.init()();
  static StubCamBridge.shared = v1;
  return result;
}

uint64_t type metadata accessor for StubCamBridge.RankCallArgs(uint64_t a1)
{
  result = type metadata singleton initialization cache for StubCamBridge.RankCallArgs;
  if (!type metadata singleton initialization cache for StubCamBridge.RankCallArgs)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t partial apply for closure #1 in StubCamBridge.asyncWarmUpIfSupported()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return closure #1 in CamBridgeImpl.asyncWarmUpIfSupported()();
}

uint64_t StubCamBridge.__allocating_init()()
{
  v0 = swift_allocObject();
  StubCamBridge.init()();
  return v0;
}

uint64_t static StubCamBridge.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static StubCamBridge.shared.setter(uint64_t a1)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static StubCamBridge.shared = a1;
}

uint64_t (*static StubCamBridge.shared.modify(uint64_t a1))()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return protocol witness for static FeatureToggle.forceEnabled.modify in conformance AmbiguityFeatureFlags;
}

uint64_t key path getter for static StubCamBridge.shared : StubCamBridge.Type@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = static StubCamBridge.shared;
}

uint64_t key path setter for static StubCamBridge.shared : StubCamBridge.Type(uint64_t *a1)
{
  v1 = *a1;
  v2 = one-time initialization token for shared;

  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static StubCamBridge.shared = v1;
}

uint64_t StubCamBridge.deinit()
{

  return v0;
}

uint64_t StubCamBridge.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void *StubCamBridge.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v14 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for UUID();
  v11 = *(*(v10 - 8) + 56);
  v11(v9, 1, 1, v10);
  v11(v6, 1, 1, v10);
  v11(v3, 1, 1, v10);
  type metadata accessor for CamBridgeState(0);
  v12 = swift_allocObject();
  *(v12 + 16) = MEMORY[0x1E69E7CC8];
  outlined init with take of UUID?(v9, v12 + OBJC_IVAR____TtC14SiriKitRuntime14CamBridgeState_requestLoggingId);
  outlined init with take of UUID?(v6, v12 + OBJC_IVAR____TtC14SiriKitRuntime14CamBridgeState_camLoggingId);
  outlined init with take of UUID?(v3, v12 + OBJC_IVAR____TtC14SiriKitRuntime14CamBridgeState_caarLoggingId);
  v0[2] = v12;
  v0[3] = 0;
  v0[4] = MEMORY[0x1E69E7CC0];
  return v0;
}

uint64_t protocol witness for CamBridge.action(requestId:camId:rcId:speechPackage:rankedActions:inputOrigin:) in conformance StubCamBridge()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t protocol witness for CamBridge.selectAction(rcId:speechPackage:rankedActions:conversationHelperInput:conversationHelper:inputOrigin:) in conformance StubCamBridge(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return StubCamBridge.selectAction(rcId:speechPackage:rankedActions:conversationHelperInput:conversationHelper:inputOrigin:)(a1, v8, v9, v10, a5);
}

uint64_t protocol witness for CamBridge.rank(rcId:actions:rankerContext:) in conformance StubCamBridge(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = a4;
  v5[9] = v4;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](protocol witness for CamBridge.rank(rcId:actions:rankerContext:) in conformance StubCamBridge, v6, 0);
}

uint64_t protocol witness for CamBridge.rank(rcId:actions:rankerContext:) in conformance StubCamBridge()
{
  v1 = StubCamBridge.rank(rcId:actions:rankerContext:)(v0[5], v0[6], v0[7], v0[8]);
  v2 = v0[1];

  return v2(v1);
}

uint64_t outlined init with take of StubCamBridge.RankCallArgs(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StubCamBridge.RankCallArgs(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

char *initializeBufferWithCopyOfBuffer for StubCamBridge.RankCallArgs(char *a1, char *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v10 = *a2;
    *v3 = *a2;
    v3 = (v10 + ((v4 + 16) & ~v4));
  }

  else
  {
    v5 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v5;
    *(a1 + 2) = *(a2 + 2);
    v6 = *(a3 + 24);
    v8 = type metadata accessor for RankerContext();
    v9 = *(*(v8 - 8) + 16);

    v9(&v3[v6], &a2[v6], v8);
  }

  return v3;
}

uint64_t destroy for StubCamBridge.RankCallArgs(uint64_t a1, uint64_t a2)
{

  v4 = *(a2 + 24);
  v5 = type metadata accessor for RankerContext();
  v6 = *(*(v5 - 8) + 8);

  return v6(a1 + v4, v5);
}

char *initializeWithCopy for StubCamBridge.RankCallArgs(char *a1, char *a2, uint64_t a3)
{
  v5 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v5;
  *(a1 + 2) = *(a2 + 2);
  v6 = *(a3 + 24);
  v7 = type metadata accessor for RankerContext();
  v8 = *(*(v7 - 8) + 16);

  v8(&a1[v6], &a2[v6], v7);
  return a1;
}

char *assignWithCopy for StubCamBridge.RankCallArgs(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);

  *(a1 + 2) = *(a2 + 2);

  v6 = *(a3 + 24);
  v7 = type metadata accessor for RankerContext();
  (*(*(v7 - 8) + 24))(&a1[v6], &a2[v6], v7);
  return a1;
}

uint64_t initializeWithTake for StubCamBridge.RankCallArgs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v5 = *(a3 + 24);
  v6 = type metadata accessor for RankerContext();
  (*(*(v6 - 8) + 32))(a1 + v5, a2 + v5, v6);
  return a1;
}

char *assignWithTake for StubCamBridge.RankCallArgs(char *a1, char *a2, uint64_t a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;

  *(a1 + 2) = *(a2 + 2);

  v7 = *(a3 + 24);
  v8 = type metadata accessor for RankerContext();
  (*(*(v8 - 8) + 40))(&a1[v7], &a2[v7], v8);
  return a1;
}

uint64_t type metadata completion function for StubCamBridge.RankCallArgs(uint64_t a1)
{
  result = type metadata accessor for RankerContext();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t FeatureToggle<>.isEnabled.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = (*(a3 + 16))(a1, a3);
  MEMORY[0x1E12A1380](v12, v4, v8, a1, MEMORY[0x1E69E6370], *(a3 + 8));

  v9 = v12[0];
  if (LOBYTE(v12[0]) == 2)
  {
    v12[3] = a1;
    v12[4] = a2;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v12);
    (*(*(a1 - 8) + 16))(boxed_opaque_existential_0, v4, a1);
    v9 = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
  }

  return v9 & 1;
}

uint64_t FeatureToggle<>.withForcedEnabled<A>(_:block:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v25 = a5;
  v26 = a6;
  v23[1] = a3;
  v24 = a2;
  v11 = a1;
  v23[0] = a8;
  v12 = *(a4 - 8);
  v13 = MEMORY[0x1EEE9AC00](a1);
  v15 = v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = (*(v16 + 16))(v17, v16, v13);
  MEMORY[0x1E12A1380](v27, v8, v18, a4, MEMORY[0x1E69E6370], *(a7 + 8));

  v19 = LOBYTE(v27[0]);
  (*(v12 + 16))(v15, v8, a4);
  v28 = v11;
  v20 = (*(a7 + 32))(v27, a4, a7);
  type metadata accessor for Dictionary();
  Dictionary.subscript.setter();
  v21 = v20(v27, 0);
  v24(v21);
  return $defer #1 <A><A1>() in FeatureToggle<>.withForcedEnabled<A>(_:block:)(v19, v8, a4, v25, v26, a7);
}

uint64_t FeatureToggle<>.withForcedEnabled<A>(_:block:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 96) = a8;
  *(v9 + 104) = v8;
  *(v9 + 80) = a6;
  *(v9 + 88) = a7;
  *(v9 + 64) = a4;
  *(v9 + 72) = a5;
  *(v9 + 146) = a2;
  *(v9 + 48) = a1;
  *(v9 + 56) = a3;
  *(v9 + 112) = *(a5 - 8);
  *(v9 + 120) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](FeatureToggle<>.withForcedEnabled<A>(_:block:), 0, 0);
}

uint64_t FeatureToggle<>.withForcedEnabled<A>(_:block:)()
{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v4 = *(v0 + 96);
  v3 = *(v0 + 104);
  v5 = *(v0 + 72);
  v13 = *(v0 + 56);
  v6 = *(v0 + 146);
  v7 = (*(v4 + 16))(v5, v4);
  MEMORY[0x1E12A1380](v3, v7, v5, MEMORY[0x1E69E6370], *(v4 + 8));

  *(v0 + 147) = *(v0 + 144);
  (*(v2 + 16))(v1, v3, v5);
  *(v0 + 145) = v6;
  v8 = (*(v4 + 32))(v0 + 16, v5, v4);
  type metadata accessor for Dictionary();
  Dictionary.subscript.setter();
  v8(v0 + 16, 0);
  v12 = (v13 + *v13);
  v9 = swift_task_alloc();
  *(v0 + 128) = v9;
  *v9 = v0;
  v9[1] = FeatureToggle<>.withForcedEnabled<A>(_:block:);
  v10 = *(v0 + 48);

  return v12(v10);
}

{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = FeatureToggle<>.withForcedEnabled<A>(_:block:);
  }

  else
  {
    v2 = FeatureToggle<>.withForcedEnabled<A>(_:block:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  $defer #1 <A><A1>() in FeatureToggle<>.withForcedEnabled<A>(_:block:)(*(v0 + 147), *(v0 + 104), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96));

  v1 = *(v0 + 8);

  return v1();
}

{
  $defer #1 <A><A1>() in FeatureToggle<>.withForcedEnabled<A>(_:block:)(*(v0 + 147), *(v0 + 104), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t $defer #1 <A><A1>() in FeatureToggle<>.withForcedEnabled<A>(_:block:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a1;
  v11 = MEMORY[0x1EEE9AC00](a1);
  if (v12 == 2)
  {
    v13 = (*(a6 + 32))(v17, a3, a6, v11);
    type metadata accessor for Dictionary();
    Dictionary.removeValue(forKey:)();
    return v13(v17, 0);
  }

  else
  {
    (*(v10 + 16))(&v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], v11);
    v17[39] = v8;
    v15 = (*(a6 + 32))(v17, a3, a6);
    type metadata accessor for Dictionary();
    Dictionary.subscript.setter();
    return v15(v17, 0);
  }
}

uint64_t *SydneyConversationFeatureFlags.forceEnabled.unsafeMutableAddressor()
{
  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }

  return &static SydneyConversationFeatureFlags.forceEnabled;
}

uint64_t (*static SydneyConversationFeatureFlags.forceEnabled.modify(uint64_t a1))()
{
  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return protocol witness for static FeatureToggle.forceEnabled.modify in conformance AmbiguityFeatureFlags;
}

const char *SydneyConversationFeatureFlags.feature.getter(char a1)
{
  if (!a1)
  {
    return "fall2022_conversation_runtime";
  }

  if (a1 == 1)
  {
    return "SKESiriCorrectionsCheckUndo";
  }

  return "SKESiriCorrectionsUndoFollowup";
}

Swift::Int SydneyConversationFeatureFlags.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1E12A23F0](a1);
  return Hasher._finalize()();
}

const char *protocol witness for FeatureFlagsKey.feature.getter in conformance SydneyConversationFeatureFlags()
{
  v1 = "SKESiriCorrectionsCheckUndo";
  if (*v0 != 1)
  {
    v1 = "SKESiriCorrectionsUndoFollowup";
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return "fall2022_conversation_runtime";
  }
}

uint64_t (*protocol witness for static FeatureToggle.forceEnabled.modify in conformance SydneyConversationFeatureFlags(uint64_t a1))()
{
  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return protocol witness for static FeatureToggle.forceEnabled.modify in conformance AmbiguityFeatureFlags;
}

uint64_t *SiriKitFlowFeatureFlagDefinitions.forceEnabled.unsafeMutableAddressor()
{
  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }

  return &static SiriKitFlowFeatureFlagDefinitions.forceEnabled;
}

uint64_t (*static SiriKitFlowFeatureFlagDefinitions.forceEnabled.modify(uint64_t a1))()
{
  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return protocol witness for static FeatureToggle.forceEnabled.modify in conformance AmbiguityFeatureFlags;
}

uint64_t (*protocol witness for static FeatureToggle.forceEnabled.modify in conformance SiriKitFlowFeatureFlagDefinitions(uint64_t a1))()
{
  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return protocol witness for static FeatureToggle.forceEnabled.modify in conformance AmbiguityFeatureFlags;
}

uint64_t *SiriPlaybackControlFeature.forceEnabled.unsafeMutableAddressor()
{
  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }

  return &static SiriPlaybackControlFeature.forceEnabled;
}

uint64_t (*static SiriPlaybackControlFeature.forceEnabled.modify(uint64_t a1))()
{
  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return protocol witness for static FeatureToggle.forceEnabled.modify in conformance AmbiguityFeatureFlags;
}

uint64_t (*protocol witness for static FeatureToggle.forceEnabled.modify in conformance SiriPlaybackControlFeature(uint64_t a1))()
{
  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return protocol witness for static FeatureToggle.forceEnabled.modify in conformance AmbiguityFeatureFlags;
}

uint64_t *SiriPhoneFeature.forceEnabled.unsafeMutableAddressor()
{
  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }

  return &static SiriPhoneFeature.forceEnabled;
}

uint64_t (*static SiriPhoneFeature.forceEnabled.modify(uint64_t a1))(uint64_t a1)
{
  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return static AmbiguityFeatureFlags.forceEnabled.modify;
}

uint64_t (*protocol witness for static FeatureToggle.forceEnabled.modify in conformance SiriPhoneFeature(uint64_t a1))()
{
  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return protocol witness for static FeatureToggle.forceEnabled.modify in conformance AmbiguityFeatureFlags;
}

uint64_t *LinkFeature.forceEnabled.unsafeMutableAddressor()
{
  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }

  return &static LinkFeature.forceEnabled;
}

double static SydneyConversationFeatureFlags.forceEnabled.getter(void *a1, void *a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  return result;
}

uint64_t static SydneyConversationFeatureFlags.forceEnabled.setter(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a3 = a1;
}

uint64_t (*static LinkFeature.forceEnabled.modify(uint64_t a1))()
{
  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return protocol witness for static FeatureToggle.forceEnabled.modify in conformance AmbiguityFeatureFlags;
}

double key path getter for static SydneyConversationFeatureFlags.forceEnabled : SydneyConversationFeatureFlags.Type@<D0>(void *a1@<X3>, uint64_t *a2@<X4>, uint64_t *a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a4 = *a2;

  return result;
}

uint64_t key path setter for static SydneyConversationFeatureFlags.forceEnabled : SydneyConversationFeatureFlags.Type(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = *a1;
  v9 = *a5;

  if (v9 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a6 = v8;
}

Swift::Int LinkFeature.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x1E12A23F0](0);
  return Hasher._finalize()();
}

unint64_t instantiation function for generic protocol witness table for SydneyConversationFeatureFlags(uint64_t a1)
{
  result = lazy protocol witness table accessor for type SydneyConversationFeatureFlags and conformance SydneyConversationFeatureFlags();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for SiriKitFlowFeatureFlagDefinitions(uint64_t a1)
{
  result = lazy protocol witness table accessor for type SiriKitFlowFeatureFlagDefinitions and conformance SiriKitFlowFeatureFlagDefinitions();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for SiriPlaybackControlFeature(uint64_t a1)
{
  result = lazy protocol witness table accessor for type SiriPlaybackControlFeature and conformance SiriPlaybackControlFeature();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for SiriPhoneFeature(uint64_t a1)
{
  result = lazy protocol witness table accessor for type SiriPhoneFeature and conformance SiriPhoneFeature();
  *(a1 + 8) = result;
  return result;
}

double protocol witness for static FeatureToggle.forceEnabled.getter in conformance SydneyConversationFeatureFlags(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  if (*a3 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  return result;
}

uint64_t protocol witness for static FeatureToggle.forceEnabled.setter in conformance SydneyConversationFeatureFlags(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t a6)
{
  if (*a4 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a5 = a1;
}

uint64_t (*protocol witness for static FeatureToggle.forceEnabled.modify in conformance LinkFeature(uint64_t a1))()
{
  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return protocol witness for static FeatureToggle.forceEnabled.modify in conformance AmbiguityFeatureFlags;
}

unint64_t instantiation function for generic protocol witness table for LinkFeature(uint64_t a1)
{
  result = lazy protocol witness table accessor for type LinkFeature and conformance LinkFeature();
  *(a1 + 8) = result;
  return result;
}

uint64_t specialized Sequence.first(where:)@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v24 = a1;
  v6 = type metadata accessor for UsoEntitySpan();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x1EEE9AC00](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  if (v11)
  {
    v21 = v7;
    v22 = a3;
    v13 = *(v7 + 16);
    v12 = v7 + 16;
    v23 = v13;
    v14 = (v12 - 8);
    v15 = a2 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    while (1)
    {
      v23(v10, v15, v6, v8);
      v17 = v24(v10);
      if (v3)
      {
        return (*v14)(v10, v6);
      }

      if (v17)
      {
        break;
      }

      (*v14)(v10, v6);
      v15 += v16;
      if (!--v11)
      {
        v18 = 1;
        v7 = v21;
        a3 = v22;
        return (*(v7 + 56))(a3, v18, 1, v6);
      }
    }

    v7 = v21;
    a3 = v22;
    (*(v21 + 32))(v22, v10, v6);
    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  return (*(v7 + 56))(a3, v18, 1, v6);
}

SiriKitRuntime::SystemCommandsAffinityScorer __swiftcall SystemCommandsAffinityScorer.init()()
{
  v0 = 0x80000001DCA7CCF0;
  v1 = 0xD00000000000002FLL;
  result.bundleIdentifier._object = v0;
  result.bundleIdentifier._countAndFlagsBits = v1;
  return result;
}

uint64_t *SystemCommandsAffinityScorer.kHKEntityTypes.unsafeMutableAddressor()
{
  if (one-time initialization token for kHKEntityTypes != -1)
  {
    swift_once();
  }

  return &static SystemCommandsAffinityScorer.kHKEntityTypes;
}

uint64_t *SystemCommandsAffinityScorer.kHAExactNamespaceMatches.unsafeMutableAddressor()
{
  if (one-time initialization token for kHAExactNamespaceMatches != -1)
  {
    swift_once();
  }

  return &static SystemCommandsAffinityScorer.kHAExactNamespaceMatches;
}

uint64_t one-time initialization function for kCarCommandsExactNamespaceMatches()
{
  v0 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for kCarCommandsExactNamespaceMatches);
  result = swift_arrayDestroy();
  static SystemCommandsAffinityScorer.kCarCommandsExactNamespaceMatches = v0;
  return result;
}

uint64_t *SystemCommandsAffinityScorer.kCarCommandsExactNamespaceMatches.unsafeMutableAddressor()
{
  if (one-time initialization token for kCarCommandsExactNamespaceMatches != -1)
  {
    swift_once();
  }

  return &static SystemCommandsAffinityScorer.kCarCommandsExactNamespaceMatches;
}

uint64_t UsoTask.isExpandedSupportedSettingTask.getter()
{
  static UsoTask_CodegenConverter.convert(task:)();
  if (!v4)
  {
    goto LABEL_9;
  }

  outlined init with copy of ReferenceResolutionClientProtocol?(v3, v2, &_sypSgMd, &_sypSgMR);
  type metadata accessor for UsoTask_checkExistence_common_Setting();
  if (!swift_dynamicCast())
  {
    type metadata accessor for UsoTask_noVerb_common_Setting();
    if (!swift_dynamicCast())
    {
      type metadata accessor for UsoTask_open_common_Setting();
      if (!swift_dynamicCast())
      {
        type metadata accessor for UsoTask_set_common_Setting();
        if (!swift_dynamicCast())
        {
          type metadata accessor for UsoTask_toggle_common_Setting();
          if (!swift_dynamicCast())
          {
            __swift_destroy_boxed_opaque_existential_1Tm(v2);
LABEL_9:
            v0 = 0;
            goto LABEL_10;
          }
        }
      }
    }
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v2);
  v0 = 1;
LABEL_10:
  outlined destroy of ReferenceResolutionClientProtocol?(v3, &_sypSgMd, &_sypSgMR);
  return v0;
}

uint64_t Siri_Nlu_External_UsoGraph.isIdentifierMatchGuestMode.getter()
{
  v25 = type metadata accessor for Google_Protobuf_StringValue();
  v0 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v2 = v23 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = Siri_Nlu_External_UsoGraph.identifiers.getter();
  v8 = v7;
  v23[0] = *(v7 + 16);
  if (!v23[0])
  {
LABEL_14:

    return 0;
  }

  v9 = 0;
  v24 = v7 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v23[1] = v4 + 16;
  v10 = (v0 + 8);
  v11 = (v4 + 8);
  while (1)
  {
    if (v9 >= *(v8 + 16))
    {
      __break(1u);
      goto LABEL_20;
    }

    (*(v4 + 16))(v6, v24 + *(v4 + 72) * v9, v3);
    Siri_Nlu_External_UsoEntityIdentifier.namespace.getter();
    v13 = Google_Protobuf_StringValue.value.getter();
    v15 = v14;
    (*v10)(v2, v25);
    if (v13 == 0x61436D6574737973 && v15 == 0xEE0079726F676574)
    {
    }

    else
    {
      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v16 & 1) == 0)
      {
        (*v11)(v6, v3);
        goto LABEL_4;
      }
    }

    if (Siri_Nlu_External_UsoEntityIdentifier.value.getter() == 0x6D676E6972616873 && v17 == 0xEB0000000065646FLL)
    {
      break;
    }

    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    (*v11)(v6, v3);
    if (v12)
    {
      goto LABEL_15;
    }

LABEL_4:
    if (v23[0] == ++v9)
    {
      goto LABEL_14;
    }
  }

  (*v11)(v6, v3);
LABEL_15:

  if (one-time initialization token for executor == -1)
  {
    goto LABEL_16;
  }

LABEL_20:
  swift_once();
LABEL_16:
  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static Logger.executor);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_1DC659000, v20, v21, "SystemCommandsAffinityScorer | Found guest mode identifier", v22, 2u);
    MEMORY[0x1E12A2F50](v22, -1, -1);
  }

  return 1;
}

uint64_t specialized SystemCommandsAffinityScorer.isIdentifierMatchLock(on:)()
{
  v25 = type metadata accessor for Google_Protobuf_StringValue();
  v0 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v2 = v23 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = Siri_Nlu_External_UsoGraph.identifiers.getter();
  v8 = v7;
  v23[0] = *(v7 + 16);
  if (!v23[0])
  {
LABEL_14:

    return 0;
  }

  v9 = 0;
  v24 = v7 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v23[1] = v4 + 16;
  v10 = (v0 + 8);
  v11 = (v4 + 8);
  while (1)
  {
    if (v9 >= *(v8 + 16))
    {
      __break(1u);
      goto LABEL_20;
    }

    (*(v4 + 16))(v6, v24 + *(v4 + 72) * v9, v3);
    Siri_Nlu_External_UsoEntityIdentifier.namespace.getter();
    v13 = Google_Protobuf_StringValue.value.getter();
    v15 = v14;
    (*v10)(v2, v25);
    if (v13 == 0x74416D6574737973 && v15 == 0xEF65747562697274)
    {
    }

    else
    {
      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v16 & 1) == 0)
      {
        (*v11)(v6, v3);
        goto LABEL_4;
      }
    }

    if (Siri_Nlu_External_UsoEntityIdentifier.value.getter() == 1801678700 && v17 == 0xE400000000000000)
    {
      break;
    }

    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    (*v11)(v6, v3);
    if (v12)
    {
      goto LABEL_15;
    }

LABEL_4:
    if (v23[0] == ++v9)
    {
      goto LABEL_14;
    }
  }

  (*v11)(v6, v3);
LABEL_15:

  if (one-time initialization token for executor == -1)
  {
    goto LABEL_16;
  }

LABEL_20:
  swift_once();
LABEL_16:
  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static Logger.executor);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_1DC659000, v20, v21, "SystemCommandsAffinityScorer | Found lock identifier", v22, 2u);
    MEMORY[0x1E12A2F50](v22, -1, -1);
  }

  return 1;
}

uint64_t specialized SystemCommandsAffinityScorer.isIdentifierMatchScreen(on:)()
{
  v25 = type metadata accessor for Google_Protobuf_StringValue();
  v0 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v2 = v23 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = Siri_Nlu_External_UsoGraph.identifiers.getter();
  v8 = v7;
  v23[0] = *(v7 + 16);
  if (!v23[0])
  {
LABEL_14:

    return 0;
  }

  v9 = 0;
  v24 = v7 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v23[1] = v4 + 16;
  v10 = (v0 + 8);
  v11 = (v4 + 8);
  while (1)
  {
    if (v9 >= *(v8 + 16))
    {
      __break(1u);
      goto LABEL_20;
    }

    (*(v4 + 16))(v6, v24 + *(v4 + 72) * v9, v3);
    Siri_Nlu_External_UsoEntityIdentifier.namespace.getter();
    v13 = Google_Protobuf_StringValue.value.getter();
    v15 = v14;
    (*v10)(v2, v25);
    if (v13 == 0x61436D6574737973 && v15 == 0xEE0079726F676574)
    {
    }

    else
    {
      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v16 & 1) == 0)
      {
        (*v11)(v6, v3);
        goto LABEL_4;
      }
    }

    if (Siri_Nlu_External_UsoEntityIdentifier.value.getter() == 0x6E6565726373 && v17 == 0xE600000000000000)
    {
      break;
    }

    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    (*v11)(v6, v3);
    if (v12)
    {
      goto LABEL_15;
    }

LABEL_4:
    if (v23[0] == ++v9)
    {
      goto LABEL_14;
    }
  }

  (*v11)(v6, v3);
LABEL_15:

  if (one-time initialization token for executor == -1)
  {
    goto LABEL_16;
  }

LABEL_20:
  swift_once();
LABEL_16:
  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static Logger.executor);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_1DC659000, v20, v21, "SystemCommandsAffinityScorer | Found screen identifier", v22, 2u);
    MEMORY[0x1E12A2F50](v22, -1, -1);
  }

  return 1;
}

BOOL specialized SystemCommandsAffinityScorer.isIdentifierMatchAnswerProduct(on:)()
{
  v21 = type metadata accessor for Google_Protobuf_StringValue();
  v0 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v2 = &v20 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier();
  v3 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = Siri_Nlu_External_UsoGraph.identifiers.getter();
  v7 = 0;
  v22 = *(v6 + 16);
  v20 = v3 + 16;
  v8 = (v0 + 8);
  v9 = (v3 + 8);
  while (1)
  {
    v11 = v7;
    if (v22 == v7)
    {

      return v22 != v11;
    }

    if (v7 >= *(v6 + 16))
    {
      __break(1u);
      goto LABEL_15;
    }

    (*(v3 + 16))(v5, v6 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v7, v23);
    Siri_Nlu_External_UsoEntityIdentifier.namespace.getter();
    v12 = Google_Protobuf_StringValue.value.getter();
    v14 = v13;
    (*v8)(v2, v21);
    if (v12 == 0x7250726577736E61 && v14 == 0xED0000746375646FLL)
    {
      break;
    }

    ++v7;
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    (*v9)(v5, v23);
    if (v10)
    {
      goto LABEL_8;
    }
  }

  (*v9)(v5, v23);
LABEL_8:

  if (one-time initialization token for executor == -1)
  {
    goto LABEL_9;
  }

LABEL_15:
  swift_once();
LABEL_9:
  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Logger.executor);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_1DC659000, v16, v17, "SystemCommandsAffinityScorer | Found answerProduct identifier", v18, 2u);
    MEMORY[0x1E12A2F50](v18, -1, -1);
  }

  return v22 != v11;
}

uint64_t specialized SystemCommandsAffinityScorer.isIdentifierMatchProduct(on:)()
{
  v25 = type metadata accessor for Google_Protobuf_StringValue();
  v0 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v2 = v23 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = Siri_Nlu_External_UsoGraph.identifiers.getter();
  v8 = v7;
  v23[0] = *(v7 + 16);
  if (!v23[0])
  {
LABEL_14:

    return 0;
  }

  v9 = 0;
  v24 = v7 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v23[1] = v4 + 16;
  v10 = (v0 + 8);
  v11 = (v4 + 8);
  while (1)
  {
    if (v9 >= *(v8 + 16))
    {
      __break(1u);
      goto LABEL_20;
    }

    (*(v4 + 16))(v6, v24 + *(v4 + 72) * v9, v3);
    Siri_Nlu_External_UsoEntityIdentifier.namespace.getter();
    v13 = Google_Protobuf_StringValue.value.getter();
    v15 = v14;
    (*v10)(v2, v25);
    if (v13 == 0x7250726577736E61 && v15 == 0xED0000746375646FLL)
    {
    }

    else
    {
      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v16 & 1) == 0)
      {
        (*v11)(v6, v3);
        goto LABEL_4;
      }
    }

    if (Siri_Nlu_External_UsoEntityIdentifier.value.getter() == 0x746375646F7270 && v17 == 0xE700000000000000)
    {
      break;
    }

    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    (*v11)(v6, v3);
    if (v12)
    {
      goto LABEL_15;
    }

LABEL_4:
    if (v23[0] == ++v9)
    {
      goto LABEL_14;
    }
  }

  (*v11)(v6, v3);
LABEL_15:

  if (one-time initialization token for executor == -1)
  {
    goto LABEL_16;
  }

LABEL_20:
  swift_once();
LABEL_16:
  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static Logger.executor);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_1DC659000, v20, v21, "SystemCommandsAffinityScorer | Found product identifier", v22, 2u);
    MEMORY[0x1E12A2F50](v22, -1, -1);
  }

  return 1;
}

BOOL specialized SystemCommandsAffinityScorer.hasHKExactMatch(_:)(uint64_t a1)
{
  v105 = type metadata accessor for SpanProperty();
  v2 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v104 = &v78 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for IdentifierNamespace();
  v4 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v93 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for UsoEntitySpan();
  v6 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v8 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UsoEntitySpanVSgMd, &_s12SiriOntology13UsoEntitySpanVSgMR);
  MEMORY[0x1EEE9AC00](v80);
  v79 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v78 - v11;
  v14.n128_f64[0] = MEMORY[0x1EEE9AC00](v13);
  v81 = &v78 - v15;
  v92 = *(a1 + 16);
  v82 = v6;
  if (v92)
  {
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v90 = v17;
    v89 = a1 + ((*(v16 + 64) + 32) & ~*(v16 + 64));
    v18 = 0;
    v88 = *MEMORY[0x1E69D1B18];
    v87 = (v4 + 104);
    v86 = (v4 + 8);
    v102 = (v2 + 8);
    v103 = v2 + 16;
    v83 = (v16 - 8);
    v91 = v16;
    v85 = *(v16 + 56);
    v84 = xmmword_1DCA66060;
    v19 = v97;
    v99 = v2;
    v100 = v12;
    v98 = v8;
    while (1)
    {
      v101 = v18;
      v90(v8, v89 + v85 * v18, v19);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
      inited = swift_initStackObject();
      *(inited + 16) = v84;
      v22 = v93;
      v21 = v94;
      (*v87)(v93, v88, v94);
      v23 = IdentifierNamespace.rawValue.getter();
      v25 = v24;
      (*v86)(v22, v21);
      *(inited + 32) = v23;
      *(inited + 40) = v25;
      v26 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(inited);
      swift_setDeallocating();
      outlined destroy of String(inited + 32);
      v27 = UsoEntitySpan.properties.getter();
      v28 = *(v27 + 16);
      if (v28)
      {
        v96 = v26;
        v106 = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v28, 0);
        v29 = v106;
        v30 = *(v2 + 80);
        v95 = v27;
        v31 = v27 + ((v30 + 32) & ~v30);
        v32 = *(v2 + 72);
        v33 = *(v2 + 16);
        do
        {
          v34 = v104;
          v35 = v105;
          v33(v104, v31, v105);
          v36 = SpanProperty.key.getter();
          v38 = v37;
          (*v102)(v34, v35);
          v106 = v29;
          v40 = *(v29 + 16);
          v39 = *(v29 + 24);
          if (v40 >= v39 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1);
            v29 = v106;
          }

          *(v29 + 16) = v40 + 1;
          v41 = v29 + 16 * v40;
          *(v41 + 32) = v36;
          *(v41 + 40) = v38;
          v31 += v32;
          --v28;
        }

        while (v28);

        v2 = v99;
        v12 = v100;
        v8 = v98;
        v26 = v96;
      }

      else
      {

        v29 = MEMORY[0x1E69E7CC0];
      }

      v42 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v29);

      specialized Set.isDisjoint(with:)(v42, v26);
      v44 = v43;

      if ((v44 & 1) == 0)
      {
        if (one-time initialization token for kHKEntityTypes != -1)
        {
          swift_once();
        }

        if (UsoEntitySpan.anyPropertiesValueMatchAny(value:)(static SystemCommandsAffinityScorer.kHKEntityTypes) && UsoEntitySpan.hasExactMatch()())
        {
          break;
        }
      }

      if (one-time initialization token for kHAExactNamespaceMatches != -1)
      {
        swift_once();
      }

      v45 = static SystemCommandsAffinityScorer.kHAExactNamespaceMatches;
      v46 = UsoEntitySpan.properties.getter();
      v47 = *(v46 + 16);
      if (v47)
      {
        v96 = v45;
        v106 = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v47, 0);
        v48 = v106;
        v49 = *(v2 + 80);
        v95 = v46;
        v50 = v46 + ((v49 + 32) & ~v49);
        v51 = *(v2 + 72);
        v52 = *(v2 + 16);
        do
        {
          v53 = v104;
          v54 = v105;
          v52(v104, v50, v105);
          v55 = SpanProperty.key.getter();
          v57 = v56;
          (*v102)(v53, v54);
          v106 = v48;
          v59 = *(v48 + 16);
          v58 = *(v48 + 24);
          if (v59 >= v58 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v58 > 1), v59 + 1, 1);
            v48 = v106;
          }

          *(v48 + 16) = v59 + 1;
          v60 = v48 + 16 * v59;
          *(v60 + 32) = v55;
          *(v60 + 40) = v57;
          v50 += v51;
          --v47;
        }

        while (v47);

        v2 = v99;
        v12 = v100;
        v8 = v98;
        v45 = v96;
      }

      else
      {

        v48 = MEMORY[0x1E69E7CC0];
      }

      v61 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v48);

      specialized Set.isDisjoint(with:)(v61, v45);
      v63 = v62;

      if ((v63 & 1) == 0 && UsoEntitySpan.isAttachmentFull()())
      {
        break;
      }

      v18 = v101 + 1;
      v19 = v97;
      (*v83)(v8, v97);
      if (v18 == v92)
      {
        v64 = 1;
        goto LABEL_30;
      }
    }

    v65 = v81;
    v19 = v97;
    (*(v82 + 32))(v81, v8, v97);
    v64 = 0;
  }

  else
  {
    v64 = 1;
    v19 = v97;
LABEL_30:
    v65 = v81;
  }

  (*(v82 + 56))(v65, v64, 1, v19, v14);
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v66 = type metadata accessor for Logger();
  __swift_project_value_buffer(v66, static Logger.executor);
  outlined init with copy of ReferenceResolutionClientProtocol?(v65, v12, &_s12SiriOntology13UsoEntitySpanVSgMd, &_s12SiriOntology13UsoEntitySpanVSgMR);
  v67 = Logger.logObject.getter();
  v68 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v106 = v70;
    *v69 = 136315138;
    outlined init with copy of ReferenceResolutionClientProtocol?(v12, v79, &_s12SiriOntology13UsoEntitySpanVSgMd, &_s12SiriOntology13UsoEntitySpanVSgMR);
    v71 = String.init<A>(describing:)();
    v73 = v72;
    outlined destroy of ReferenceResolutionClientProtocol?(v12, &_s12SiriOntology13UsoEntitySpanVSgMd, &_s12SiriOntology13UsoEntitySpanVSgMR);
    v74 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v71, v73, &v106);

    *(v69 + 4) = v74;
    _os_log_impl(&dword_1DC659000, v67, v68, "HomeAutomationAffinityScorer - Found HomeKitSpan with ExactMatch %s", v69, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v70);
    MEMORY[0x1E12A2F50](v70, -1, -1);
    MEMORY[0x1E12A2F50](v69, -1, -1);
  }

  else
  {

    outlined destroy of ReferenceResolutionClientProtocol?(v12, &_s12SiriOntology13UsoEntitySpanVSgMd, &_s12SiriOntology13UsoEntitySpanVSgMR);
  }

  v75 = v81;
  v76 = (*(v82 + 48))(v81, 1, v97) != 1;
  outlined destroy of ReferenceResolutionClientProtocol?(v75, &_s12SiriOntology13UsoEntitySpanVSgMd, &_s12SiriOntology13UsoEntitySpanVSgMR);
  return v76;
}

uint64_t specialized SystemCommandsAffinityScorer.hasEverywhereUserEntity(usoTask:)(uint64_t a1)
{
  v1 = type metadata accessor for UsoEntity_common_UserEntity.DefinedValues();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSg_AFtMd, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSg_AFtMR);
  MEMORY[0x1EEE9AC00](v66);
  v6 = &v42 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMd, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v42 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v42 - v14;
  static UsoTask_CodegenConverter.convert(task:)();
  if (!v71[3])
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v71, &_sypSgMd, &_sypSgMR);
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology33Uso_VerbTemplate_ReferenceTriggerCyAA0C21Entity_common_SettingCGMd, &_s12SiriOntology33Uso_VerbTemplate_ReferenceTriggerCyAA0C21Entity_common_SettingCGMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v64 = v1;
  v67 = v15;
  v56 = v12;
  v16 = v70;
  v17 = dispatch thunk of Uso_VerbTemplate_ReferenceTrigger.userEntities.getter();
  if (!v17)
  {
LABEL_75:

    return 0;
  }

  v18 = v17;
  v19 = v2;
  v71[0] = MEMORY[0x1E69E7CC0];
  v20 = v17 & 0xFFFFFFFFFFFFFF8;
  if (v17 >> 62)
  {
    goto LABEL_87;
  }

  v21 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_6:
  v55 = v9;
  v52 = v4;
  v48 = v16;
  if (v21)
  {
    v4 = 0;
    v9 = (v18 & 0xC000000000000001);
    v49 = MEMORY[0x1E69E7CC0];
    do
    {
      v16 = v4;
      while (1)
      {
        if (v9)
        {
          MEMORY[0x1E12A1FE0](v16, v18);
          v4 = (v16 + 1);
          if (__OFADD__(v16, 1))
          {
            goto LABEL_83;
          }
        }

        else
        {
          if (v16 >= *(v20 + 16))
          {
            goto LABEL_84;
          }

          v4 = (v16 + 1);
          if (__OFADD__(v16, 1))
          {
            goto LABEL_83;
          }
        }

        dispatch thunk of CodeGenListEntry.entry.getter();

        if (v70)
        {
          break;
        }

        ++v16;
        if (v4 == v21)
        {
          v16 = v48;
          goto LABEL_24;
        }
      }

      MEMORY[0x1E12A1680](v22);
      if (*((v71[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v71[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v49 = v71[0];
      v16 = v48;
    }

    while (v4 != v21);
  }

  else
  {
    v49 = MEMORY[0x1E69E7CC0];
  }

LABEL_24:

  v18 = v49;
  if (v49 >> 62)
  {
    v4 = __CocoaSet.count.getter();
  }

  else
  {
    v4 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v20 = MEMORY[0x1E69E7CC0];
  if (!v4)
  {
LABEL_74:

    goto LABEL_75;
  }

  v23 = 0;
  v46 = v18 & 0xC000000000000001;
  v45 = v18 & 0xFFFFFFFFFFFFFF8;
  v44 = v18 + 32;
  v60 = *MEMORY[0x1E69D1518];
  v58 = (v19 + 7);
  v59 = (v19 + 13);
  v53 = v19 + 6;
  v51 = (v19 + 4);
  v54 = (v19 + 1);
  v43 = v4;
  while (1)
  {
    if (v46)
    {
      v19 = MEMORY[0x1E12A1FE0](v23, v18);
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        goto LABEL_85;
      }
    }

    else
    {
      if (v23 >= *(v45 + 16))
      {
        goto LABEL_86;
      }

      v19 = *(v44 + 8 * v23);

      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        goto LABEL_85;
      }
    }

    v50 = v25;
    v26 = dispatch thunk of UsoEntity_common_UserEntity.associatedUserEntities.getter();
    if (!v26)
    {
      goto LABEL_29;
    }

    v27 = v26;
    v71[0] = v20;
    v18 = v26 & 0xFFFFFFFFFFFFFF8;
    if (v26 >> 62)
    {
      v16 = __CocoaSet.count.getter();
      v28 = v20;
      if (!v16)
      {
        goto LABEL_50;
      }
    }

    else
    {
      v16 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v28 = v20;
      if (!v16)
      {
        goto LABEL_50;
      }
    }

    v4 = 0;
    v20 = v27 & 0xC000000000000001;
    do
    {
      v65 = v28;
      v29 = v4;
      while (1)
      {
        if (v20)
        {
          MEMORY[0x1E12A1FE0](v29, v27);
          v4 = v29 + 1;
          if (__OFADD__(v29, 1))
          {
            goto LABEL_79;
          }
        }

        else
        {
          if (v29 >= *(v18 + 16))
          {
            goto LABEL_80;
          }

          v4 = v29 + 1;
          if (__OFADD__(v29, 1))
          {
LABEL_79:
            __break(1u);
LABEL_80:
            __break(1u);
LABEL_81:
            __break(1u);
LABEL_82:
            __break(1u);
LABEL_83:
            __break(1u);
LABEL_84:
            __break(1u);
LABEL_85:
            __break(1u);
LABEL_86:
            __break(1u);
LABEL_87:
            v21 = __CocoaSet.count.getter();
            goto LABEL_6;
          }
        }

        dispatch thunk of CodeGenListEntry.entry.getter();

        v9 = v70;
        if (v70)
        {
          break;
        }

        ++v29;
        if (v4 == v16)
        {
          v28 = v65;
          goto LABEL_50;
        }
      }

      MEMORY[0x1E12A1680](v30);
      if (*((v71[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v71[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v28 = v71[0];
    }

    while (v4 != v16);
LABEL_50:
    v47 = v19;

    v4 = v28 >> 62 ? __CocoaSet.count.getter() : *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v9 = v56;
    v20 = v53;
    v19 = &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMd;
    v18 = &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMR;
    if (v4)
    {
      break;
    }

LABEL_28:

    v16 = v48;
    v20 = MEMORY[0x1E69E7CC0];
    v18 = v49;
    v4 = v43;
    v19 = v47;
LABEL_29:

    v23 = v50;
    if (v50 == v4)
    {
      goto LABEL_74;
    }
  }

  v16 = 0;
  v62 = v28 & 0xFFFFFFFFFFFFFF8;
  v63 = v28 & 0xC000000000000001;
  v65 = v28;
  v61 = v4;
  while (1)
  {
    if (v63)
    {
      v31 = MEMORY[0x1E12A1FE0](v16, v28);
      v32 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_81;
      }
    }

    else
    {
      if (v16 >= *(v62 + 16))
      {
        goto LABEL_82;
      }

      v31 = *(v28 + 8 * v16 + 32);

      v32 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_81;
      }
    }

    v68 = v16;
    v69 = v32;
    v33 = v67;
    dispatch thunk of UsoEntity_common_UserEntity.definedValue.getter();
    v34 = v64;
    (*v59)(v9, v60, v64);
    (*v58)(v9, 0, 1, v34);
    v35 = *(v66 + 48);
    outlined init with copy of ReferenceResolutionClientProtocol?(v33, v6, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMd, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMR);
    outlined init with copy of ReferenceResolutionClientProtocol?(v9, &v6[v35], &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMd, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMR);
    v36 = *v20;
    if ((*v20)(v6, 1, v34) == 1)
    {
      break;
    }

    v57 = v31;
    v37 = v55;
    outlined init with copy of ReferenceResolutionClientProtocol?(v6, v55, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMd, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMR);
    if (v36(&v6[v35], 1, v34) == 1)
    {

      v9 = v56;
      outlined destroy of ReferenceResolutionClientProtocol?(v56, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMd, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMR);
      outlined destroy of ReferenceResolutionClientProtocol?(v67, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMd, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMR);
      (*v54)(v37, v34);
      goto LABEL_55;
    }

    v38 = v52;
    (*v51)(v52, &v6[v35], v34);
    _s12SiriOntology21PayloadAttachmentInfoV0D4TypeOAESYAAWlTm_0(&lazy protocol witness table cache variable for type UsoEntity_common_UserEntity.DefinedValues and conformance UsoEntity_common_UserEntity.DefinedValues, MEMORY[0x1E69D1530], MEMORY[0x1E69D1538]);
    v39 = dispatch thunk of static Equatable.== infix(_:_:)();

    v40 = *v54;
    (*v54)(v38, v34);
    v9 = v56;
    outlined destroy of ReferenceResolutionClientProtocol?(v56, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMd, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMR);
    outlined destroy of ReferenceResolutionClientProtocol?(v67, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMd, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMR);
    v40(v37, v34);
    v20 = v53;
    outlined destroy of ReferenceResolutionClientProtocol?(v6, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMd, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMR);
    v28 = v65;
    if (v39)
    {
      goto LABEL_78;
    }

LABEL_56:
    v16 = v68 + 1;
    v4 = v61;
    if (v69 == v61)
    {
      goto LABEL_28;
    }
  }

  outlined destroy of ReferenceResolutionClientProtocol?(v9, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMd, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v33, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMd, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMR);
  if (v36(&v6[v35], 1, v34) != 1)
  {
LABEL_55:
    outlined destroy of ReferenceResolutionClientProtocol?(v6, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSg_AFtMd, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSg_AFtMR);
    v28 = v65;
    goto LABEL_56;
  }

  outlined destroy of ReferenceResolutionClientProtocol?(v6, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMd, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMR);
LABEL_78:

  return 1;
}

BOOL specialized SystemCommandsAffinityScorer.hasHKFuzzyMatch(_:)(uint64_t a1)
{
  matched = type metadata accessor for MatchInfo.MatchSignals();
  v2 = *(matched - 8);
  MEMORY[0x1EEE9AC00](matched);
  v4 = &v123 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology9MatchInfoVSgMd, &_s12SiriOntology9MatchInfoVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v140 = &v123 - v6;
  v146 = type metadata accessor for MatchInfo();
  v7 = *(v146 - 8);
  MEMORY[0x1EEE9AC00](v146);
  v157 = &v123 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology21PayloadAttachmentInfoVSgMd, &_s12SiriOntology21PayloadAttachmentInfoVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v142 = &v123 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v141 = &v123 - v12;
  v144 = type metadata accessor for PayloadAttachmentInfo.AttachmentType();
  v13 = *(v144 - 8);
  MEMORY[0x1EEE9AC00](v144);
  v132 = &v123 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v131 = &v123 - v16;
  v173 = type metadata accessor for SpanProperty();
  v17 = *(v173 - 8);
  MEMORY[0x1EEE9AC00](v173);
  v172 = &v123 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v167 = type metadata accessor for IdentifierNamespace();
  v19 = *(v167 - 8);
  MEMORY[0x1EEE9AC00](v167);
  v166 = &v123 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for UsoEntitySpan();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v123 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UsoEntitySpanVSgMd, &_s12SiriOntology13UsoEntitySpanVSgMR);
  MEMORY[0x1EEE9AC00](v124);
  v123 = &v123 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v125 = &v123 - v27;
  v29.n128_f64[0] = MEMORY[0x1EEE9AC00](v28);
  v130 = &v123 - v30;
  v31 = *(a1 + 16);
  v154 = v21;
  v133 = v22;
  v152 = v31;
  if (!v31)
  {
    v107 = 1;
    v108 = v22;
LABEL_36:
    v109 = v130;
    goto LABEL_39;
  }

  v33 = *(v22 + 16);
  v32 = v22 + 16;
  v150 = v33;
  v149 = a1 + ((*(v32 + 64) + 32) & ~*(v32 + 64));
  v164 = (v19 + 104);
  v148 = *MEMORY[0x1E69D1B18];
  v163 = (v19 + 8);
  v171 = v17 + 16;
  v170 = (v17 + 8);
  v143 = *MEMORY[0x1E69D1B28];
  v137 = (v13 + 48);
  v129 = (v13 + 32);
  v128 = (v13 + 104);
  v127 = *MEMORY[0x1E69D1B60];
  v126 = (v13 + 8);
  v136 = (v13 + 56);
  v34 = 0;
  v138 = (v7 + 48);
  v134 = (v7 + 32);
  v135 = (v7 + 8);
  v145 = (v32 - 8);
  v151 = v32;
  v147 = *(v32 + 56);
  v161 = xmmword_1DCA66060;
  v153 = v4;
  v35 = v157;
  v36 = v17;
  v169 = v17;
  v165 = v24;
  v162 = (v2 + 8);
  while (1)
  {
    v168 = v34;
    v150(v24, v149 + v147 * v34, v21);
    v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    inited = swift_initStackObject();
    *(inited + 16) = v161;
    v38 = v166;
    v39 = v167;
    v159 = *v164;
    v159(v166, v148, v167);
    v40 = IdentifierNamespace.rawValue.getter();
    v42 = v41;
    v158 = *v163;
    v158(v38, v39);
    *(inited + 32) = v40;
    *(inited + 40) = v42;
    v43 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of String(inited + 32);
    v44 = UsoEntitySpan.properties.getter();
    v45 = *(v44 + 16);
    if (v45)
    {
      v156 = v43;
      v175 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v45, 0);
      v46 = v175;
      v47 = (*(v36 + 80) + 32) & ~*(v36 + 80);
      v155 = v44;
      v48 = v44 + v47;
      v49 = v36;
      v50 = *(v36 + 72);
      v51 = *(v49 + 16);
      do
      {
        v52 = v172;
        v53 = v173;
        v51(v172, v48, v173);
        v54 = SpanProperty.key.getter();
        v56 = v55;
        (*v170)(v52, v53);
        v175 = v46;
        v58 = *(v46 + 16);
        v57 = *(v46 + 24);
        if (v58 >= v57 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v57 > 1), v58 + 1, 1);
          v46 = v175;
        }

        *(v46 + 16) = v58 + 1;
        v59 = v46 + 16 * v58;
        *(v59 + 32) = v54;
        *(v59 + 40) = v56;
        v48 += v50;
        --v45;
      }

      while (v45);

      v21 = v154;
      v4 = v153;
      v35 = v157;
      v36 = v169;
      v43 = v156;
    }

    else
    {

      v46 = MEMORY[0x1E69E7CC0];
    }

    v60 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v46);

    specialized Set.isDisjoint(with:)(v60, v43);
    v62 = v61;

    v24 = v165;
    v63 = v162;
    if (v62)
    {
      goto LABEL_47;
    }

    if (one-time initialization token for kHKEntityTypes != -1)
    {
      swift_once();
    }

    if (!UsoEntitySpan.anyPropertiesValueMatchAny(value:)(static SystemCommandsAffinityScorer.kHKEntityTypes))
    {
LABEL_47:
      v64 = swift_initStackObject();
      *(v64 + 16) = v161;
      v65 = v166;
      v66 = v167;
      v159(v166, v143, v167);
      v67 = IdentifierNamespace.rawValue.getter();
      v69 = v68;
      v158(v65, v66);
      *(v64 + 32) = v67;
      *(v64 + 40) = v69;
      v70 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(v64);
      swift_setDeallocating();
      outlined destroy of String(v64 + 32);
      v71 = UsoEntitySpan.properties.getter();
      v72 = *(v71 + 16);
      if (v72)
      {
        v160 = v70;
        v175 = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v72, 0);
        v73 = v175;
        v74 = (*(v36 + 80) + 32) & ~*(v36 + 80);
        v159 = v71;
        v75 = v71 + v74;
        v76 = v36;
        v77 = *(v36 + 72);
        v78 = *(v76 + 16);
        do
        {
          v80 = v172;
          v79 = v173;
          v78(v172, v75, v173);
          v81 = SpanProperty.key.getter();
          v83 = v82;
          (*v170)(v80, v79);
          v175 = v73;
          v85 = *(v73 + 16);
          v84 = *(v73 + 24);
          if (v85 >= v84 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v84 > 1), v85 + 1, 1);
            v73 = v175;
          }

          *(v73 + 16) = v85 + 1;
          v86 = v73 + 16 * v85;
          *(v86 + 32) = v81;
          *(v86 + 40) = v83;
          v75 += v77;
          --v72;
        }

        while (v72);

        v21 = v154;
        v4 = v153;
        v35 = v157;
        v36 = v169;
        v70 = v160;
      }

      else
      {

        v73 = MEMORY[0x1E69E7CC0];
      }

      v87 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v73);

      specialized Set.isDisjoint(with:)(v87, v70);
      v89 = v88;

      v24 = v165;
      v63 = v162;
      if (v89)
      {
        goto LABEL_4;
      }
    }

    v90 = v142;
    UsoEntitySpan.payloadAttachmentInfo.getter();
    v91 = v90;
    v92 = type metadata accessor for PayloadAttachmentInfo();
    v93 = *(v92 - 8);
    if ((*(v93 + 48))(v91, 1, v92) == 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v91, &_s12SiriOntology21PayloadAttachmentInfoVSgMd, &_s12SiriOntology21PayloadAttachmentInfoVSgMR);
      v94 = v141;
      (*v136)(v141, 1, 1, v144);
LABEL_27:
      outlined destroy of ReferenceResolutionClientProtocol?(v94, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
      v36 = v169;
      goto LABEL_29;
    }

    v94 = v141;
    PayloadAttachmentInfo.attachmentType.getter();
    (*(v93 + 8))(v91, v92);
    if ((*v137)(v94, 1, v144) == 1)
    {
      goto LABEL_27;
    }

    v95 = v131;
    v96 = v144;
    (*v129)(v131, v94, v144);
    v97 = v132;
    (*v128)(v132, v127, v96);
    _s12SiriOntology21PayloadAttachmentInfoV0D4TypeOAESYAAWlTm_0(&lazy protocol witness table cache variable for type PayloadAttachmentInfo.AttachmentType and conformance PayloadAttachmentInfo.AttachmentType, MEMORY[0x1E69D1B68], MEMORY[0x1E69D1B78]);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v98 = *v126;
    (*v126)(v97, v96);
    v98(v95, v96);
    v36 = v169;
    if (v175 == v174)
    {
      goto LABEL_38;
    }

LABEL_29:
    v99 = v140;
    UsoEntitySpan.matchInfo.getter();
    v100 = v146;
    if ((*v138)(v99, 1, v146) == 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v99, &_s12SiriOntology9MatchInfoVSgMd, &_s12SiriOntology9MatchInfoVSgMR);
      goto LABEL_4;
    }

    (*v134)(v35, v99, v100);
    static MatchInfo.MatchSignals.approximateMatch.getter();
    v101 = MatchInfo.hasMatchSignals(_:)();
    v102 = *v63;
    (*v63)(v4, matched);
    if (v101)
    {
      break;
    }

    static MatchInfo.MatchSignals.partialMatch.getter();
    v103 = MatchInfo.hasMatchSignals(_:)();
    v104 = matched;
    v105 = v103;
    v102(v4, matched);
    if (v105)
    {
      break;
    }

    static MatchInfo.MatchSignals.aliasMatch.getter();
    v106 = MatchInfo.hasMatchSignals(_:)();
    v102(v4, v104);
    (*v135)(v35, v146);
    v36 = v169;
    if (v106)
    {
      goto LABEL_38;
    }

LABEL_4:
    v34 = v168 + 1;
    (*v145)(v24, v21);
    if (v34 == v152)
    {
      v107 = 1;
      v108 = v133;
      goto LABEL_36;
    }
  }

  (*v135)(v35, v146);
LABEL_38:
  v108 = v133;
  v109 = v130;
  (*(v133 + 32))(v130, v24, v21);
  v107 = 0;
LABEL_39:
  (*(v108 + 56))(v109, v107, 1, v21, v29);
  v110 = v125;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v111 = type metadata accessor for Logger();
  __swift_project_value_buffer(v111, static Logger.executor);
  outlined init with copy of ReferenceResolutionClientProtocol?(v109, v110, &_s12SiriOntology13UsoEntitySpanVSgMd, &_s12SiriOntology13UsoEntitySpanVSgMR);
  v112 = Logger.logObject.getter();
  v113 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v112, v113))
  {
    v114 = swift_slowAlloc();
    v115 = swift_slowAlloc();
    v175 = v115;
    *v114 = 136315138;
    outlined init with copy of ReferenceResolutionClientProtocol?(v110, v123, &_s12SiriOntology13UsoEntitySpanVSgMd, &_s12SiriOntology13UsoEntitySpanVSgMR);
    v116 = String.init<A>(describing:)();
    v118 = v117;
    outlined destroy of ReferenceResolutionClientProtocol?(v110, &_s12SiriOntology13UsoEntitySpanVSgMd, &_s12SiriOntology13UsoEntitySpanVSgMR);
    v119 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v116, v118, &v175);
    v109 = v130;

    *(v114 + 4) = v119;
    _os_log_impl(&dword_1DC659000, v112, v113, "HomeAutomationAffinityScorer - Found HomeKitSpan with FuzzyMatch %s", v114, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v115);
    v120 = v115;
    v21 = v154;
    MEMORY[0x1E12A2F50](v120, -1, -1);
    MEMORY[0x1E12A2F50](v114, -1, -1);
  }

  else
  {

    outlined destroy of ReferenceResolutionClientProtocol?(v110, &_s12SiriOntology13UsoEntitySpanVSgMd, &_s12SiriOntology13UsoEntitySpanVSgMR);
  }

  v121 = (*(v133 + 48))(v109, 1, v21) != 1;
  outlined destroy of ReferenceResolutionClientProtocol?(v109, &_s12SiriOntology13UsoEntitySpanVSgMd, &_s12SiriOntology13UsoEntitySpanVSgMR);
  return v121;
}

uint64_t specialized SystemCommandsAffinityScorer.isIdentifierMatchCarCommands(on:)()
{
  v32 = type metadata accessor for Google_Protobuf_StringValue();
  v0 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v2 = &v24 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = Siri_Nlu_External_UsoGraph.identifiers.getter();
  v25 = *(v7 + 16);
  if (!v25)
  {
LABEL_21:

    return 0;
  }

  v8 = 0;
  v28 = v7 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v26 = (v0 + 8);
  v27 = v4 + 16;
  v29 = (v4 + 8);
  v30 = v7;
  v31 = v3;
  while (1)
  {
    if (v8 >= *(v7 + 16))
    {
      __break(1u);
LABEL_23:
      swift_once();
      goto LABEL_18;
    }

    (*(v4 + 16))(v6, v28 + *(v4 + 72) * v8, v3);
    if (one-time initialization token for kCarCommandsExactNamespaceMatches != -1)
    {
      swift_once();
    }

    v9 = static SystemCommandsAffinityScorer.kCarCommandsExactNamespaceMatches;
    Siri_Nlu_External_UsoEntityIdentifier.namespace.getter();
    v10 = Google_Protobuf_StringValue.value.getter();
    v12 = v11;
    (*v26)(v2, v32);
    if (*(v9 + 16))
    {
      Hasher.init(_seed:)();
      String.hash(into:)();
      v13 = Hasher._finalize()();
      v14 = -1 << *(v9 + 32);
      v15 = v13 & ~v14;
      if ((*(v9 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
      {
        break;
      }
    }

LABEL_3:
    ++v8;
    v3 = v31;
    (*v29)(v6, v31);

    v7 = v30;
    if (v8 == v25)
    {
      goto LABEL_21;
    }
  }

  v16 = ~v14;
  while (1)
  {
    v17 = (*(v9 + 48) + 16 * v15);
    v18 = *v17 == v10 && v17[1] == v12;
    if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v15 = (v15 + 1) & v16;
    if (((*(v9 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  (*v29)(v6, v31);
  if (one-time initialization token for executor != -1)
  {
    goto LABEL_23;
  }

LABEL_18:
  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static Logger.executor);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_1DC659000, v20, v21, "SystemCommandsAffinityScorer | Found car commands identifier", v22, 2u);
    MEMORY[0x1E12A2F50](v22, -1, -1);
  }

  return 1;
}

uint64_t specialized SystemCommandsAffinityScorer.score(input:environment:)()
{
  v170 = type metadata accessor for Google_Protobuf_StringValue();
  v155 = *(v170 - 8);
  MEMORY[0x1EEE9AC00](v170);
  v169 = (&v147 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0));
  v157 = type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier();
  v171 = *(v157 - 8);
  MEMORY[0x1EEE9AC00](v157);
  v153 = (&v147 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v2);
  v151 = &v147 - v3;
  MEMORY[0x1EEE9AC00](v4);
  v152 = &v147 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v156 = (&v147 - v7);
  MEMORY[0x1EEE9AC00](v8);
  v154 = &v147 - v9;
  v10 = type metadata accessor for Siri_Nlu_External_UserStatedTask();
  v160 = *(v10 - 8);
  v161 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v159 = &v147 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v147 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Siri_Nlu_External_UserParse();
  v166 = *(v16 - 8);
  v167 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v165 = &v147 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v164 = &v147 - v19;
  v20 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v21 = *(v20 - 8);
  v162 = v20;
  v163 = v21;
  MEMORY[0x1EEE9AC00](v20);
  v158 = &v147 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v168 = &v147 - v24;
  v25 = type metadata accessor for USOParse();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v147 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for Parse();
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v147 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  Input.parse.getter();
  if ((*(v30 + 88))(v32, v29) != *MEMORY[0x1E69D0168])
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    __swift_project_value_buffer(v46, static Logger.executor);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_1DC659000, v47, v48, "SystemCommandsAffinityScorer | Got unexpected parse", v49, 2u);
      MEMORY[0x1E12A2F50](v49, -1, -1);
    }

    (*(v30 + 8))(v32, v29);
    return 1;
  }

  v34 = *(v30 + 96);
  v33 = (v30 + 96);
  v34(v32, v29);
  (*(v26 + 32))(v28, v32, v25);
  v35 = specialized static AffinityScorerUtils.getTask(_:)();
  v36 = v25;
  if (!v35)
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v51 = type metadata accessor for Logger();
    __swift_project_value_buffer(v51, static Logger.executor);
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_1DC659000, v52, v53, "SystemCommandsAffinityScorer | Could not extract usoTask from parse", v54, 2u);
      MEMORY[0x1E12A2F50](v54, -1, -1);
    }

    (*(v26 + 8))(v28, v36);
    return 0;
  }

  v150 = v35;
  v147 = v25;
  v149 = v26;
  v37 = v165;
  v148 = v28;
  v38 = USOParse.userParse.getter();
  v39 = MEMORY[0x1E129C0F0](v38);
  v166[1](v37, v167);
  v40 = *(v39 + 16);
  v41 = v168;
  if (!v40)
  {
LABEL_8:

    v44 = 1;
    v45 = v164;
LABEL_21:
    (*(v13 + 56))(v45, v44, 1, v12);
    if ((*(v13 + 48))(v45, 1, v12) == 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v45, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
      v55 = v149;
      v56 = v147;
      v57 = v148;
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v58 = type metadata accessor for Logger();
      __swift_project_value_buffer(v58, static Logger.executor);
      v59 = Logger.logObject.getter();
      v60 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        *v61 = 0;
        _os_log_impl(&dword_1DC659000, v59, v60, "SystemCommandsAffinityScorer | Could not extract userStatedTask", v61, 2u);
        MEMORY[0x1E12A2F50](v61, -1, -1);
      }

      else
      {
      }

      v55[1](v57, v56);
      return 0;
    }

    v62 = v159;
    Siri_Nlu_External_UserDialogAct.userStatedTask.getter();
    (*(v13 + 8))(v45, v12);
    v63 = v158;
    Siri_Nlu_External_UserStatedTask.task.getter();
    (*(v160 + 8))(v62, v161);
    (*(v163 + 32))(v41, v63, v162);
    v64 = UsoTask.isExpandedSupportedSettingTask.getter();
    v65 = v149;
    if ((v64 & 1) != 0 && (Siri_Nlu_External_UsoGraph.isIdentifierMatchGuestMode.getter() & 1) == 0)
    {
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v75 = type metadata accessor for Logger();
      __swift_project_value_buffer(v75, static Logger.executor);

      v76 = Logger.logObject.getter();
      v77 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        v172 = v79;
        *v78 = 136315138;
        v80 = UsoTask.verbString.getter();
        v82 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v80, v81, &v172);

        *(v78 + 4) = v82;
        _os_log_impl(&dword_1DC659000, v76, v77, "SystemCommandsAffinityScorer | found unsuported setting task %s", v78, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v79);
        MEMORY[0x1E12A2F50](v79, -1, -1);
        MEMORY[0x1E12A2F50](v78, -1, -1);
      }

      (*(v163 + 8))(v41, v162);
      v65[1](v148, v147);
      return 0;
    }

    if (specialized SystemCommandsAffinityScorer.isIdentifierMatchLock(on:)())
    {
      if (specialized SystemCommandsAffinityScorer.isIdentifierMatchScreen(on:)())
      {
        if (one-time initialization token for executor != -1)
        {
          swift_once();
        }

        v66 = type metadata accessor for Logger();
        __swift_project_value_buffer(v66, static Logger.executor);
        v67 = Logger.logObject.getter();
        v68 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v67, v68))
        {
          v69 = swift_slowAlloc();
          *v69 = 0;
          _os_log_impl(&dword_1DC659000, v67, v68, "SystemCommandsAffinityScorer | providing override score for 'lock screen' task", v69, 2u);
          MEMORY[0x1E12A2F50](v69, -1, -1);
        }

        (*(v163 + 8))(v41, v162);
        v65[1](v148, v147);
        return 4;
      }

      if (!specialized SystemCommandsAffinityScorer.isIdentifierMatchAnswerProduct(on:)())
      {
        if (one-time initialization token for executor != -1)
        {
          swift_once();
        }

        v114 = type metadata accessor for Logger();
        __swift_project_value_buffer(v114, static Logger.executor);
        v115 = Logger.logObject.getter();
        v116 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v115, v116))
        {
          v50 = 2;
          v117 = swift_slowAlloc();
          *v117 = 0;
          _os_log_impl(&dword_1DC659000, v115, v116, "SystemCommandsAffinityScorer | providing default score for ambiguous lock task", v117, 2u);
          MEMORY[0x1E12A2F50](v117, -1, -1);

          (*(v163 + 8))(v41, v162);
          v65[1](v148, v147);
        }

        else
        {

          (*(v163 + 8))(v41, v162);
          v65[1](v148, v147);
          return 2;
        }

        return v50;
      }

      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v83 = type metadata accessor for Logger();
      __swift_project_value_buffer(v83, static Logger.executor);
      v72 = Logger.logObject.getter();
      v84 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v72, v84))
      {
        v85 = swift_slowAlloc();
        *v85 = 0;
        _os_log_impl(&dword_1DC659000, v72, v84, "SystemCommandsAffinityScorer | providing high score for lock product task", v85, 2u);
        MEMORY[0x1E12A2F50](v85, -1, -1);
      }

LABEL_57:

      (*(v163 + 8))(v41, v162);
      v65[1](v148, v147);
      return 3;
    }

    static UsoTask_CodegenConverter.convert(task:)();

    if (v174)
    {
      type metadata accessor for UsoTask_disable_common_Setting();
      if (swift_dynamicCast())
      {

        if (specialized SystemCommandsAffinityScorer.isIdentifierMatchProduct(on:)())
        {
          if (one-time initialization token for executor != -1)
          {
            swift_once();
          }

          v71 = type metadata accessor for Logger();
          __swift_project_value_buffer(v71, static Logger.executor);
          v72 = Logger.logObject.getter();
          v73 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v72, v73))
          {
            v74 = swift_slowAlloc();
            *v74 = 0;
            _os_log_impl(&dword_1DC659000, v72, v73, "SystemCommandsAffinityScorer | providing high score for turn off product task", v74, 2u);
            MEMORY[0x1E12A2F50](v74, -1, -1);
          }

          goto LABEL_57;
        }
      }
    }

    else
    {
      outlined destroy of ReferenceResolutionClientProtocol?(&v172, &_sypSgMd, &_sypSgMR);
    }

    v86 = Siri_Nlu_External_UsoGraph.identifiers.getter();
    v39 = v157;
    v43 = v156;
    v167 = *(v86 + 16);
    if (v167)
    {
      v41 = 0;
      v87 = 0;
      v88 = v155 + 1;
      v165 = (v171 + 2);
      v166 = (v171 + 1);
      while (1)
      {
        if (v41 >= *(v86 + 16))
        {
          __break(1u);
          goto LABEL_102;
        }

        v89 = v86;
        v42 = v171[2];
        v42(v43, v86 + ((*(v171 + 80) + 32) & ~*(v171 + 80)) + v171[9] * v41, v39);
        v90 = v169;
        Siri_Nlu_External_UsoEntityIdentifier.namespace.getter();
        v91 = Google_Protobuf_StringValue.value.getter();
        v15 = v92;
        v93 = (v88->isa)(v90, v170);
        v33 = &v147;
        v172 = v91;
        v173 = v15;
        MEMORY[0x1EEE9AC00](v93);
        *(&v147 - 2) = &v172;
        LOBYTE(v91) = specialized Sequence.contains(where:)(_sSTsSQ7ElementRpzrlE8containsySbABFSbABXEfU_SaySSG_TG5TA_0, (&v147 - 4), &outlined read-only object #0 of one-time initialization function for kSupportedIdentifierNamespaces);

        if (v91)
        {
          break;
        }

        ++v41;
        (*v166)(v43, v39);
        v86 = v89;
        if (v167 == v41)
        {
          goto LABEL_64;
        }
      }

      v15 = v154;
      (v171[4])(v154, v43, v39);
      v172 = Siri_Nlu_External_UsoEntityIdentifier.value.getter();
      v173 = v94;
      MEMORY[0x1EEE9AC00](v172);
      *(&v147 - 2) = &v172;
      v95 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, (&v147 - 4), &outlined read-only object #0 of one-time initialization function for kUnsupportedIdentifierValues);

      v33 = v153;
      if (v95)
      {
        v96 = v149;
        v97 = v168;
        v98 = v42;
        if (one-time initialization token for executor != -1)
        {
          swift_once();
        }

        v99 = type metadata accessor for Logger();
        __swift_project_value_buffer(v99, static Logger.executor);
        v100 = v152;
        v101 = v157;
        v98(v152, v15, v157);
        v102 = Logger.logObject.getter();
        v103 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v102, v103))
        {
          v104 = swift_slowAlloc();
          v105 = swift_slowAlloc();
          v106 = v98;
          v107 = v105;
          v172 = v105;
          *v104 = 136315138;
          v106(v151, v100, v101);
          v108 = String.init<A>(describing:)();
          v110 = v109;
          v111 = v100;
          v112 = *v166;
          (*v166)(v111, v101);
          v113 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v108, v110, &v172);

          *(v104 + 4) = v113;
          _os_log_impl(&dword_1DC659000, v102, v103, "SystemCommandsAffinityScorer | found unsupported identifier %s", v104, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v107);
          MEMORY[0x1E12A2F50](v107, -1, -1);
          MEMORY[0x1E12A2F50](v104, -1, -1);

          v112(v154, v101);
          (*(v163 + 8))(v168, v162);
        }

        else
        {

          v124 = *v166;
          (*v166)(v100, v101);
          v124(v15, v101);
          (*(v163 + 8))(v97, v162);
        }

        v96[1](v148, v147);
        return 0;
      }

      v118 = specialized static AffinityScorerUtils.getEntitySpans(_:)();
      v119 = specialized SystemCommandsAffinityScorer.hasHKExactMatch(_:)(v118);
      v43 = v149;
      v39 = v147;
      v41 = v168;
      if (!v119 && (specialized SystemCommandsAffinityScorer.hasEverywhereUserEntity(usoTask:)(v150) & 1) == 0)
      {
        v125 = specialized SystemCommandsAffinityScorer.hasHKFuzzyMatch(_:)(v118);

        if (!v125)
        {
          goto LABEL_90;
        }

        if (one-time initialization token for executor != -1)
        {
          swift_once();
        }

        v126 = type metadata accessor for Logger();
        __swift_project_value_buffer(v126, static Logger.executor);
        v127 = Logger.logObject.getter();
        v128 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v127, v128))
        {
          v129 = swift_slowAlloc();
          *v129 = 0;
          v130 = "SystemCommandsAffinityScorer | found fuzzy match with HomeKit entity, returning .default";
          goto LABEL_95;
        }

        goto LABEL_96;
      }

      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v120 = type metadata accessor for Logger();
      __swift_project_value_buffer(v120, static Logger.executor);
      v121 = Logger.logObject.getter();
      v122 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v121, v122))
      {
        v123 = swift_slowAlloc();
        *v123 = 0;
        _os_log_impl(&dword_1DC659000, v121, v122, "SystemCommandsAffinityScorer | found full match with HomeKit entity or everywhere, returning .low", v123, 2u);
        MEMORY[0x1E12A2F50](v123, -1, -1);
      }

      (*v166)(v15, v157);
      (*(v163 + 8))(v41, v162);
      v43[1](v148, v39);
    }

    else
    {
LABEL_64:

      (*(v163 + 8))(v168, v162);
      v149[1](v148, v147);
    }

    return 1;
  }

  v33 = 0;
  v42 = (v13 + 16);
  v43 = (v13 + 8);
  while (v33 < *(v39 + 16))
  {
    (*(v13 + 16))(v15, v39 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v33, v12);
    if (Siri_Nlu_External_UserDialogAct.hasUserStatedTask.getter())
    {

      v45 = v164;
      (*(v13 + 32))(v164, v15, v12);
      v44 = 0;
      goto LABEL_21;
    }

    v33 = (v33 + 1);
    (*v43)(v15, v12);
    if (v40 == v33)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_90:
  if (specialized SystemCommandsAffinityScorer.isIdentifierMatchCarCommands(on:)())
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v131 = type metadata accessor for Logger();
    __swift_project_value_buffer(v131, static Logger.executor);
    v127 = Logger.logObject.getter();
    v128 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v127, v128))
    {
      v129 = swift_slowAlloc();
      *v129 = 0;
      v130 = "SystemCommandsAffinityScorer | found a car commands identifier, returning .default";
LABEL_95:
      _os_log_impl(&dword_1DC659000, v127, v128, v130, v129, 2u);
      MEMORY[0x1E12A2F50](v129, -1, -1);

      (*v166)(v15, v157);
      (*(v163 + 8))(v41, v162);
      v43[1](v148, v39);
      return 2;
    }

LABEL_96:

    (*v166)(v15, v157);
    (*(v163 + 8))(v41, v162);
    v43[1](v148, v39);
    return 2;
  }

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v132 = type metadata accessor for Logger();
  __swift_project_value_buffer(v132, static Logger.executor);
  v87 = v157;
  v42(v33, v15, v157);
  v88 = Logger.logObject.getter();
  v133 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v88, v133))
  {
    v134 = swift_slowAlloc();
    LODWORD(v170) = v133;
    v135 = v134;
    v171 = swift_slowAlloc();
    v172 = v171;
    *v135 = 136315138;
    v169 = v88;
    v136 = v33;
    v42(v151, v33, v87);
    v137 = String.init<A>(describing:)();
    v139 = v138;
    v140 = v39;
    v141 = *v166;
    (*v166)(v136, v87);
    v142 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v137, v139, &v172);

    v143 = v135;
    *(v135 + 4) = v142;
    v144 = v169;
    _os_log_impl(&dword_1DC659000, v169, v170, "SystemCommandsAffinityScorer | Found matching identifier %s", v143, 0xCu);
    v145 = v171;
    __swift_destroy_boxed_opaque_existential_1Tm(v171);
    MEMORY[0x1E12A2F50](v145, -1, -1);
    MEMORY[0x1E12A2F50](v143, -1, -1);

    v141(v154, v87);
    (*(v163 + 8))(v41, v162);
    v43[1](v148, v140);
  }

  else
  {
LABEL_102:

    v146 = *v166;
    (*v166)(v33, v87);
    v146(v15, v87);
    (*(v163 + 8))(v41, v162);
    v43[1](v148, v39);
  }

  return 3;
}

uint64_t _s12SiriOntology21PayloadAttachmentInfoV0D4TypeOAESYAAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t protocol witness for Tagger.save(tag:) in conformance TaggingService(uint64_t a1)
{
  v5 = (*MEMORY[0x1E69CE1D8] + MEMORY[0x1E69CE1D8]);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = AppShortcutStateProvider.intentsStates(appShortcutTargets:conditionalIntentMetadata:);

  return v5(a1);
}

uint64_t dispatch thunk of Tagger.save(tag:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = AppShortcutStateProvider.intentsStates(appShortcutTargets:conditionalIntentMetadata:);

  return v9(a1, a2, a3);
}

uint64_t TaskData.attribute.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t TaskData.reformedIntent.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t TaskData.refTaskId.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t TaskData.statusReason.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t TaskData.stepType.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t TaskData.taskId.getter()
{
  v1 = *(v0 + 96);

  return v1;
}

uint64_t TaskData.taskType.getter()
{
  v1 = *(v0 + 112);

  return v1;
}

uint64_t TaskData.debugDescription.getter()
{
  v1 = v0;
  _StringGuts.grow(_:)(55);
  MEMORY[0x1E12A1580](0xD000000000000019, 0x80000001DCA89E10);
  MEMORY[0x1E12A1580](v1[12], v1[13]);
  MEMORY[0x1E12A1580](0x79546B736174202CLL, 0xEC000000203A6570);
  MEMORY[0x1E12A1580](v1[14], v1[15]);
  MEMORY[0x1E12A1580](0x795470657473202CLL, 0xEC000000203A6570);
  MEMORY[0x1E12A1580](v1[10], v1[11]);
  return 0;
}

__n128 TaskData.init(taskId:taskType:stepType:statusReason:activities:attribute:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, __n128 *a9@<X8>, __n128 a10, unint64_t a11)
{
  v17 = specialized static SiriKitMetricsUtils.formulateIntentTypeName(intentTypeName:)(a3, a4);
  v19 = v18;

  result = a10;
  *a9 = a10;
  a9[1].n128_u64[0] = a11;
  a9[1].n128_u8[8] = 0;
  a9[2].n128_u64[0] = 0;
  a9[2].n128_u64[1] = 0xE000000000000000;
  a9[3].n128_u64[0] = 0;
  a9[3].n128_u64[1] = 0xE000000000000000;
  a9[4].n128_u64[0] = a7;
  a9[4].n128_u64[1] = a8;
  a9[5].n128_u64[0] = a5;
  a9[5].n128_u64[1] = a6;
  a9[6].n128_u64[0] = a1;
  a9[6].n128_u64[1] = a2;
  a9[7].n128_u64[0] = v17;
  a9[7].n128_u64[1] = v19;
  a9[8].n128_u64[0] = 0x3FD999999999999ALL;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance TaskData.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized TaskData.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TaskData.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TaskData.CodingKeys and conformance TaskData.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TaskData.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TaskData.CodingKeys and conformance TaskData.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t lazy protocol witness table accessor for type DefaultFlowActivity and conformance DefaultFlowActivity()
{
  result = lazy protocol witness table cache variable for type DefaultFlowActivity and conformance DefaultFlowActivity;
  if (!lazy protocol witness table cache variable for type DefaultFlowActivity and conformance DefaultFlowActivity)
  {
    type metadata accessor for DefaultFlowActivity();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultFlowActivity and conformance DefaultFlowActivity);
  }

  return result;
}

uint64_t *assignWithCopy for TaskData(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];
  a1[2] = a2[2];

  *(a1 + 24) = *(a2 + 24);
  a1[4] = a2[4];
  a1[5] = a2[5];

  a1[6] = a2[6];
  a1[7] = a2[7];

  a1[8] = a2[8];
  a1[9] = a2[9];

  a1[10] = a2[10];
  a1[11] = a2[11];

  a1[12] = a2[12];
  a1[13] = a2[13];

  a1[14] = a2[14];
  a1[15] = a2[15];

  a1[16] = a2[16];
  return a1;
}

__n128 __swift_memcpy136_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t *assignWithTake for TaskData(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  v4 = a2[2];
  a1[1] = a2[1];
  a1[2] = v4;

  *(a1 + 24) = *(a2 + 24);
  v5 = a2[5];
  a1[4] = a2[4];
  a1[5] = v5;

  v6 = a2[7];
  a1[6] = a2[6];
  a1[7] = v6;

  v7 = a2[9];
  a1[8] = a2[8];
  a1[9] = v7;

  v8 = a2[11];
  a1[10] = a2[10];
  a1[11] = v8;

  v9 = a2[13];
  a1[12] = a2[12];
  a1[13] = v9;

  v10 = a2[15];
  a1[14] = a2[14];
  a1[15] = v10;

  a1[16] = a2[16];
  return a1;
}

uint64_t getEnumTagSinglePayload for TaskData(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
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

uint64_t storeEnumTagSinglePayload for TaskData(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t specialized TaskData.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6974697669746361 && a2 == 0xEA00000000007365;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7475626972747461 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x655364726143656DLL && a2 == 0xE900000000000074 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x64656D726F666572 && a2 == 0xEE00746E65746E49 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x496B736154666572 && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6552737574617473 && a2 == 0xEC0000006E6F7361 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6570795470657473 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x64496B736174 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x657079546B736174 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000)
  {

    return 9;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t *TaskLoggingEventSink.instance.unsafeMutableAddressor()
{
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  return &static TaskLoggingEventSink.instance;
}

uint64_t TaskLoggingEventSink.receive(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v12 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v3;
  v10[5] = a1;
  v10[6] = a2;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v8, &async function pointer to partial apply for closure #1 in TaskLoggingEventSink.receive(_:_:), v10);
}

uint64_t protocol witness for MetricsState.taskId.getter in conformance TaskLoggingEventSink.SiriKitEventMetricsState()
{
  v1 = *(*(*v0 + 24) + 16);

  return v1;
}

uint64_t protocol witness for MetricsState.interactionId.getter in conformance TaskLoggingEventSink.SiriKitEventMetricsState()
{
  v1 = *(*(*v0 + 16) + 96);

  return v1;
}

uint64_t protocol witness for MetricsState.taskStepStartTime.getter in conformance TaskLoggingEventSink.SiriKitEventMetricsState()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, *(*v0 + 24) + OBJC_IVAR____TtC14SiriKitRuntime8FlowTask_creationTime, v1, v3);
  Date.timeIntervalSince1970.getter();
  v7 = v6;
  (*(v2 + 8))(v5, v1);
  return v7;
}

uint64_t protocol witness for MetricsState.executionRequestId.getter in conformance TaskLoggingEventSink.SiriKitEventMetricsState()
{
  v1 = *(*(*v0 + 16) + 80);

  return v1;
}

uint64_t TaskLoggingEventSink.__allocating_init(loggingService:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t static TaskLoggingEventSink.instance.getter()
{
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }
}

uint64_t TaskLoggingEventSink.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t protocol witness for SiriKitEventSink.receive(_:_:) in conformance TaskLoggingEventSink(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v12 - v6;
  v8 = *v2;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v8;
  v10[5] = a1;
  v10[6] = a2;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, &closure #1 in TaskLoggingEventSink.receive(_:_:)partial apply, v10);
}

uint64_t protocol witness for SiriKitEventSink.receiveAsync(_:_:) in conformance TaskLoggingEventSink(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return TaskLoggingEventSink.receiveAsync(_:_:)(a1, a2);
}

uint64_t closure #1 in TaskLoggingEventSink.receive(_:_:)partial apply(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return closure #1 in TaskLoggingEventSink.receive(_:_:)(a1, v4, v5, v6, v7, v8);
}

unint64_t lazy protocol witness table accessor for type Int and conformance Int()
{
  result = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int and conformance Int);
  }

  return result;
}

uint64_t *TaskLoggingService.instance.unsafeMutableAddressor()
{
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  return &static TaskLoggingService.instance;
}

BOOL FLOWSchemaFLOWStateType.isLastTaskStep.getter(unsigned int a1)
{
  result = 1;
  if (a1 > 5 || ((1 << a1) & 0x34) == 0)
  {
    return a1 == 128;
  }

  return result;
}

uint64_t TaskLoggingService.logTaskStep(activityType:eventContext:eventTime:task:app:attribute:domainContext:domainFlowActivity:intent:intentTypeName:parameterName:responseId:statusDescription:statusReason:platformContext:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, void *a8, unint64_t a9, void *a10, uint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14, NSObject *a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  v21 = v20;
  v142 = a8;
  v157 = a7;
  v154 = a6;
  v161 = a3;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
  v27 = MEMORY[0x1EEE9AC00](v26 - 8);
  v148 = &v140 - v28;
  v164 = a2;
  v150 = a11;
  v149 = a10;
  if (a12)
  {
    v162 = a11;
    v29 = a12;
  }

  else
  {
    if (a10)
    {
      v30 = [a10 typeName];
      v162 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = v31;

      a2 = v164;
    }

    else
    {
      v32 = 0xE700000000000000;
      v162 = 0x6E776F6E6B6E55;
    }

    v29 = v32;
  }

  v159 = a17;
  v160 = a18;
  v156 = a14;
  v153 = a13;
  swift_bridgeObjectRetain_n();
  v165 = a19;
  v152 = a1;
  v143 = ActivityType.asSELFTypeAndReason(_:)(a19);
  v34 = v33;
  v35 = SiriKitEventContext.resultCandidateId.getter();
  v37 = 13101;
  if (v36)
  {
    v37 = v35;
  }

  v146 = v37;
  if (v36)
  {
    v38 = v36;
  }

  else
  {
    v38 = 0xE200000000000000;
  }

  v39 = a2[10];
  v40 = a2[11];
  v41 = *(a4 + 24);
  v166 = *(a4 + 16);
  v167 = v39;
  v169 = v41;
  v42 = [objc_allocWithZone(MEMORY[0x1E69CEB08]) init];
  v158 = a4;
  v163 = v29;
  v168 = v40;
  v155 = a5;
  v151 = a12;
  if (v42)
  {
    v144 = v42;
    v145 = [objc_allocWithZone(MEMORY[0x1E69CEB98]) init];
    if (v145)
    {
      v43 = TaskLoggingService.constructMetaData(resultCandidateId:executionRequestId:taskId:)(v146, v38, v167, v40, v166, v169);
      if (v43)
      {
        v141 = v43;
        v44 = [objc_allocWithZone(MEMORY[0x1E69CEB00]) init];
        if (v44)
        {
          v45 = v44;
          (*(v21 + 144))(v170, a5);
          v46 = v171;
          v47 = v172;
          __swift_project_boxed_opaque_existential_1(v170, v171);
          v48 = (*(v47 + 8))(v46, v47);
          if (v49)
          {
            v50 = v49;
          }

          else
          {
            v48 = 0x6C7070615F746F6ELL;
            v50 = 0xEE00656C62616369;
          }

          v51 = MEMORY[0x1E12A1410](v48, v50);

          [v45 setBundleId_];

          v52 = v171;
          v53 = v172;
          __swift_project_boxed_opaque_existential_1(v170, v171);
          v54 = (*(v53 + 16))(v52, v53);
          if (v55)
          {
            v56 = v55;
          }

          else
          {
            v54 = 0x6C7070615F746F6ELL;
            v56 = 0xEE00656C62616369;
          }

          v57 = MEMORY[0x1E12A1410](v54, v56);

          [v45 setAppVersion_];

          v29 = v163;
          [v145 setAppContext_];

          __swift_destroy_boxed_opaque_existential_1Tm(v170);
        }

        v140 = specialized static SiriKitMetricsUtils.formulateSimplifiedStatusDescription(statusDescription:)(v159, v160);
        v59 = v58;
        v60 = [objc_allocWithZone(MEMORY[0x1E69CEB88]) init];
        if (v60)
        {
          v61 = v60;
          v62 = MEMORY[0x1E12A1410](v162, v29);

          [v61 setCurrentTaskName_];

          if (v157)
          {
            v63 = MEMORY[0x1E12A1410](v154);
          }

          else
          {
            v63 = 0;
          }

          [v61 setCurrentTaskType_];

          v81 = HIDWORD(v143);
          [v61 setFlowStateType_];
          v82 = [objc_allocWithZone(MEMORY[0x1E69CEB90]) init];
          if (v82)
          {
            if (v34)
            {
              v83 = 0;
            }

            else
            {
              v83 = v81;
            }

            v84 = v82;
            [v82 setStatusReason_];
            [v61 setFlowStateReason_];
          }

          v80 = v169;
          if (v156)
          {
            v85 = MEMORY[0x1E12A1410](v153);
          }

          else
          {
            v85 = 0;
          }

          [v61 setResolvedSlotName_];

          if (v59)
          {
            v86 = MEMORY[0x1E12A1410](v140, v59);
          }

          else
          {
            v86 = 0;
          }

          [v61 setFlowStateReasonDescription_];

          [v145 setFlowState_];
        }

        else
        {

          v80 = v169;
        }

        v87 = v142;
        if (v142)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
          v88 = swift_allocObject();
          *(v88 + 16) = xmmword_1DCA70640;
          *(v88 + 32) = v87;
          type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for FLOWSchemaFLOWDomainContext, 0x1E69CEB10);
          v89 = v87;
          isa = Array._bridgeToObjectiveC()().super.isa;

          [v145 setDomainContexts_];
        }

        Date.timeIntervalSince1970.getter();
        if ((*&v91 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          __break(1u);
        }

        else
        {
          v92 = v145;
          if (v91 > -9.22337204e18)
          {
            if (v91 < 9.22337204e18)
            {
              [v145 setTimestampMs_];
              [v92 setSequenceNum_];
              if (a20)
              {
                v93 = one-time initialization token for instrumentation;
                v142 = a20;
                if (v93 != -1)
                {
                  swift_once();
                }

                v94 = type metadata accessor for Logger();
                __swift_project_value_buffer(v94, static Logger.instrumentation);

                v95 = v80;
                v96 = v168;

                v97 = Logger.logObject.getter();
                v98 = static os_log_type_t.debug.getter();

                if (os_log_type_enabled(v97, v98))
                {
                  v99 = swift_slowAlloc();
                  v100 = swift_slowAlloc();
                  v170[0] = v100;
                  *v99 = 136315650;
                  v101 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v146, v38, v170);

                  *(v99 + 4) = v101;
                  *(v99 + 12) = 2080;
                  *(v99 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v166, v95, v170);
                  *(v99 + 22) = 2080;
                  *(v99 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v167, v96, v170);
                  _os_log_impl(&dword_1DC659000, v97, v98, "#TaskLoggingService Added platformContext for resultCandidateId: %s, taskId: %s, executionRequestId: %s", v99, 0x20u);
                  swift_arrayDestroy();
                  v102 = v100;
                  v92 = v145;
                  MEMORY[0x1E12A2F50](v102, -1, -1);
                  MEMORY[0x1E12A2F50](v99, -1, -1);
                }

                else
                {
                }

                a5 = v155;
                v103 = v142;
                [v92 setPlatformRelatedContext_];

                v80 = v169;
              }

              else
              {
              }

              v104 = v144;
              [v144 setFlowStep:v92];
              v105 = v104;
              v106 = v141;
              [v105 setEventMetadata:v141];

              if (one-time initialization token for instrumentation == -1)
              {
                goto LABEL_66;
              }

              goto LABEL_84;
            }

LABEL_83:
            __break(1u);
LABEL_84:
            swift_once();
LABEL_66:
            v107 = type metadata accessor for Logger();
            __swift_project_value_buffer(v107, static Logger.instrumentation);

            v108 = Logger.logObject.getter();
            v109 = static os_log_type_t.debug.getter();

            if (os_log_type_enabled(v108, v109))
            {
              v110 = swift_slowAlloc();
              v111 = swift_slowAlloc();
              v170[0] = v111;
              *v110 = 136315906;
              if (v143 > 0xD0)
              {
                v112 = @"FLOWSTATETYPE_UNKNOWN";
                v113 = @"FLOWSTATETYPE_UNKNOWN";
              }

              else
              {
                v112 = off_1E8642DA8[v143];
                v113 = off_1E8643430[v143];
              }

              v115 = v112;
              v116 = v113;
              v117 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v119 = v118;

              v120 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v117, v119, v170);

              *(v110 + 4) = v120;
              *(v110 + 12) = 2080;
              v114 = v166;
              *(v110 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v166, v80, v170);
              *(v110 + 22) = 2080;
              *(v110 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v162, v163, v170);
              *(v110 + 32) = 2080;
              *(v110 + 34) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v164[12], v164[13], v170);
              _os_log_impl(&dword_1DC659000, v108, v109, "#TaskLoggingService SELF Log - logging task step: %s for taskId: %s, taskType: %s, interactionId:%s", v110, 0x2Au);
              swift_arrayDestroy();
              MEMORY[0x1E12A2F50](v111, -1, -1);
              MEMORY[0x1E12A2F50](v110, -1, -1);
            }

            else
            {

              v114 = v166;
            }

            v67 = v144;
            (*(v21 + 96))(v144);
            TaskLoggingService.emitRequestLink(executionRequestId:taskId:)(v167, v168, v114, v80);
            goto LABEL_73;
          }
        }

        __break(1u);
        goto LABEL_83;
      }

      if (one-time initialization token for instrumentation != -1)
      {
        swift_once();
      }

      v72 = type metadata accessor for Logger();
      __swift_project_value_buffer(v72, static Logger.instrumentation);

      v73 = v169;

      v74 = v168;

      v75 = Logger.logObject.getter();
      v76 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        v170[0] = v78;
        *v77 = 136315650;
        v79 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v146, v38, v170);

        *(v77 + 4) = v79;
        *(v77 + 12) = 2080;
        *(v77 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v166, v73, v170);
        *(v77 + 22) = 2080;
        *(v77 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v167, v74, v170);
        _os_log_impl(&dword_1DC659000, v75, v76, "#TaskLoggingService SELF Log - unable to construct metaData, not logging Task step for resultCandidateId: %s, taskId: %s, executionRequestId: %s", v77, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1E12A2F50](v78, -1, -1);
        MEMORY[0x1E12A2F50](v77, -1, -1);

        goto LABEL_74;
      }

LABEL_32:

      goto LABEL_74;
    }
  }

  if (one-time initialization token for instrumentation != -1)
  {
    swift_once();
  }

  v64 = type metadata accessor for Logger();
  __swift_project_value_buffer(v64, static Logger.instrumentation);

  v65 = v169;

  v66 = v168;

  v67 = Logger.logObject.getter();
  v68 = static os_log_type_t.error.getter();

  if (!os_log_type_enabled(v67, v68))
  {

    goto LABEL_32;
  }

  v69 = swift_slowAlloc();
  v70 = swift_slowAlloc();
  v170[0] = v70;
  *v69 = 136315650;
  v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v146, v38, v170);

  *(v69 + 4) = v71;
  *(v69 + 12) = 2080;
  *(v69 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v166, v65, v170);
  *(v69 + 22) = 2080;
  *(v69 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v167, v66, v170);
  _os_log_impl(&dword_1DC659000, v67, v68, "#TaskLoggingService SELF Log - unable to instantiate SELF schema, not logging Task step for resultCandidateId: %s, taskId: %s, executionRequestId: %s", v69, 0x20u);
  swift_arrayDestroy();
  MEMORY[0x1E12A2F50](v70, -1, -1);
  MEMORY[0x1E12A2F50](v69, -1, -1);
LABEL_73:

LABEL_74:
  outlined init with copy of ReferenceResolutionClientProtocol(v21 + 16, v170);
  v122 = v171;
  v121 = v172;
  __swift_project_boxed_opaque_existential_1(v170, v171);
  v147 = v21;
  v146 = a9;
  if (a5)
  {
    v123 = App.appIdentifier.getter();
    v125 = v124;
  }

  else
  {
    v123 = 0;
    v125 = 0;
  }

  v145 = a16;
  v144 = a15;
  v126 = v148;
  outlined init with copy of ReferenceResolutionClientProtocol?(v165, v148, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
  v127 = type metadata accessor for SiriKitReliabilityCodes();
  v128 = *(v127 - 8);
  if ((*(v128 + 48))(v126, 1, v127) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v126, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
    v129 = 0;
    v130 = 0;
  }

  else
  {
    v129 = SiriKitReliabilityCodes.rawValue.getter();
    v130 = v131;
    (*(v128 + 8))(v126, v127);
  }

  v132 = *(v121 + 8);
  v138 = v122;
  v139 = v121;
  v133 = v156;
  v134 = v153;
  v135 = v152;
  v136 = v161;
  v132(v152, v161, v162, v163, v123, v125, v167, v168, v153, v156, v129, v130, v166, v169, v138, v139);

  __swift_destroy_boxed_opaque_existential_1Tm(v170);
  return TaskLoggingService.logAndDonateClassicFlowTask(activityType:eventContext:eventTime:task:app:attribute:domainFlowActivity:intent:intentTypeName:parameterName:responseId:statusDescription:statusReason:shouldDonateToCurare:appResolutionName:flowMetadata:)(v135, v164, v136, v158, v155, v154, v157, v146, v149, v150, v151, v134, v133, v144, v145, v159, v160, v165, 1, 0, 0, 0);
}

uint64_t TaskLoggingService.logAppResolutionResult(activityType:eventContext:eventTime:intentTypeName:statusReason:task:domainFlowActivity:flowMetadata:resolutionResult:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10)
{
  v134 = a8;
  v141 = a5;
  v138 = a3;
  v139 = a4;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v119 - v15;
  v17 = specialized static TaskLoggingService.getAppFrom(_:)(a10);
  if (!v17)
  {
    v17 = specialized static TaskLoggingService.getAppFrom(_:)(a9);
  }

  v131 = specialized static TaskLoggingService.getAppResolutionInfo(flowMetadata:)(a9);
  v143 = v18;
  v125 = v19;
  v20 = type metadata accessor for SiriKitReliabilityCodes();
  v21 = *(v20 - 8);
  v22 = *(v21 + 16);
  v132 = a6;
  v128 = v21 + 16;
  v127 = v22;
  v22(v16, a6, v20);
  v23 = *(v21 + 56);
  v130 = v20;
  v129 = v21 + 56;
  v126 = v23;
  v23(v16, 0, 1, v20);
  v133 = a1;
  v136 = ActivityType.asSELFTypeAndReason(_:)(v16);
  v124 = v24;
  outlined destroy of ReferenceResolutionClientProtocol?(v16, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
  v25 = SiriKitEventContext.resultCandidateId.getter();
  if (v26)
  {
    v27 = v25;
  }

  else
  {
    v27 = 13101;
  }

  if (v26)
  {
    v28 = v26;
  }

  else
  {
    v28 = 0xE200000000000000;
  }

  v29 = a2[10];
  v30 = a2[11];
  v140 = a2;
  v31 = *(a7 + 24);
  v145 = *(a7 + 16);
  v137 = a7;
  v32 = [objc_allocWithZone(MEMORY[0x1E69CEB08]) init];
  if (!v32)
  {
    goto LABEL_35;
  }

  v33 = v32;
  v142 = v31;
  v34 = [objc_allocWithZone(MEMORY[0x1E69CEB98]) init];
  if (!v34)
  {

    v31 = v142;
LABEL_35:

    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v75 = type metadata accessor for Logger();
    __swift_project_value_buffer(v75, static Logger.instrumentation);

    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v76, v77))
    {
      v78 = v29;
      v79 = swift_slowAlloc();
      v80 = v31;
      v81 = swift_slowAlloc();
      v146[0] = v81;
      *v79 = 136315650;
      v82 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, v146);

      *(v79 + 4) = v82;
      *(v79 + 12) = 2080;
      *(v79 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v145, v80, v146);
      *(v79 + 22) = 2080;
      *(v79 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v78, v30, v146);
      _os_log_impl(&dword_1DC659000, v76, v77, "#TaskLoggingService SELF Log - unable to instantiate SELF schema, not logging Task step for resultCandidateId: %s, taskId: %s, executionRequestId: %s", v79, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v81, -1, -1);
      MEMORY[0x1E12A2F50](v79, -1, -1);
    }

LABEL_40:
  }

  v35 = v34;
  v135 = v33;
  v36 = TaskLoggingService.constructMetaData(resultCandidateId:executionRequestId:taskId:)(v27, v28, v29, v30, v145, v142);
  if (!v36)
  {

    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v84 = type metadata accessor for Logger();
    __swift_project_value_buffer(v84, static Logger.instrumentation);

    v85 = v142;

    v86 = Logger.logObject.getter();
    v87 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      v123 = v29;
      v89 = v88;
      v90 = swift_slowAlloc();
      v146[0] = v90;
      *v89 = 136315650;
      v91 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, v146);

      *(v89 + 4) = v91;
      *(v89 + 12) = 2080;
      *(v89 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v145, v85, v146);
      *(v89 + 22) = 2080;
      *(v89 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v123, v30, v146);
      _os_log_impl(&dword_1DC659000, v86, v87, "#TaskLoggingService SELF Log - unable to construct metaData, not logging Task step for resultCandidateId: %s, taskId: %s, executionRequestId: %s", v89, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v90, -1, -1);
      MEMORY[0x1E12A2F50](v89, -1, -1);
    }

    goto LABEL_40;
  }

  v121 = v36;
  v37 = [objc_allocWithZone(MEMORY[0x1E69CEB00]) init];
  v122 = v30;
  v123 = v29;
  if (v37)
  {
    v38 = v37;
    (*(v144 + 144))(v146, v17);
    v39 = v17;
    v40 = v147;
    v41 = v148;
    __swift_project_boxed_opaque_existential_1(v146, v147);
    v42 = (*(v41 + 8))(v40, v41);
    if (v43)
    {
      v44 = v43;
    }

    else
    {
      v42 = 0x6C7070615F746F6ELL;
      v44 = 0xEE00656C62616369;
    }

    v45 = MEMORY[0x1E12A1410](v42, v44);

    [v38 setBundleId_];

    v46 = v147;
    v47 = v148;
    __swift_project_boxed_opaque_existential_1(v146, v147);
    v48 = *(v47 + 16);
    v49 = v47;
    v30 = v122;
    v50 = v48(v46, v49);
    if (v51)
    {
      v52 = v51;
    }

    else
    {
      v50 = 0x6C7070615F746F6ELL;
      v52 = 0xEE00656C62616369;
    }

    v53 = MEMORY[0x1E12A1410](v50, v52);

    [v38 setAppVersion_];

    v17 = v39;
    v29 = v123;
    [v38 setAppResolutionType_];
    [v35 setAppContext_];

    __swift_destroy_boxed_opaque_existential_1Tm(v146);
  }

  v54 = [objc_allocWithZone(MEMORY[0x1E69CEB88]) init];
  if (v54)
  {
    v55 = v54;
    v56 = MEMORY[0x1E12A1410](v139, v141);
    [v55 setCurrentTaskName_];

    [v55 setCurrentTaskType_];
    v57 = HIDWORD(v136);
    [v55 setFlowStateType_];
    v58 = [objc_allocWithZone(MEMORY[0x1E69CEB90]) init];
    if (v58)
    {
      if (v124)
      {
        v59 = 0;
      }

      else
      {
        v59 = v57;
      }

      v60 = v58;
      [v58 setStatusReason_];
      [v55 setFlowStateReason_];
    }

    [v55 setResolvedSlotName_];
    [v55 setFlowStateReasonDescription_];
    [v35 setFlowState_];
  }

  Date.timeIntervalSince1970.getter();
  if ((*&v61 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_55;
  }

  v62 = v135;
  if (v61 <= -9.22337204e18)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  if (v61 >= 9.22337204e18)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  [v35 setTimestampMs_];
  [v35 setSequenceNum_];

  [v62 setFlowStep_];
  v63 = v62;
  v64 = v121;
  [v63 setEventMetadata_];

  if (one-time initialization token for instrumentation != -1)
  {
LABEL_57:
    swift_once();
  }

  v65 = type metadata accessor for Logger();
  __swift_project_value_buffer(v65, static Logger.instrumentation);

  v66 = Logger.logObject.getter();
  v67 = static os_log_type_t.debug.getter();

  v68 = os_log_type_enabled(v66, v67);
  v69 = v145;
  if (v68)
  {
    v70 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v146[0] = v71;
    *v70 = 136315906;
    v72 = v17;
    if (v136 > 0xD0)
    {
      v73 = @"FLOWSTATETYPE_UNKNOWN";
      v74 = @"FLOWSTATETYPE_UNKNOWN";
    }

    else
    {
      v73 = off_1E8643AB8[v136];
      v74 = off_1E8644140[v136];
    }

    v93 = v73;
    v94 = v74;
    v95 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v97 = v96;

    v98 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v95, v97, v146);

    *(v70 + 4) = v98;
    *(v70 + 12) = 2080;
    v69 = v145;
    v99 = v142;
    *(v70 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v145, v142, v146);
    *(v70 + 22) = 2080;
    *(v70 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v139, v141, v146);
    *(v70 + 32) = 2080;
    *(v70 + 34) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v140[12], v140[13], v146);
    _os_log_impl(&dword_1DC659000, v66, v67, "#TaskLoggingService SELF Log - logging task step: %s for taskId: %s, taskType: %s, interactionId:%s", v70, 0x2Au);
    swift_arrayDestroy();
    v100 = v71;
    v92 = v99;
    MEMORY[0x1E12A2F50](v100, -1, -1);
    MEMORY[0x1E12A2F50](v70, -1, -1);

    v17 = v72;
    v30 = v122;
    v29 = v123;
  }

  else
  {

    v92 = v142;
  }

  v101 = v144;
  (*(v144 + 96))(v135);
  TaskLoggingService.emitRequestLink(executionRequestId:taskId:)(v29, v30, v69, v92);
  outlined init with copy of ReferenceResolutionClientProtocol(v101 + 16, v146);
  v102 = v147;
  v103 = v148;
  v104 = __swift_project_boxed_opaque_existential_1(v146, v147);
  v120 = a9;
  v119 = v17;
  v136 = v104;
  if (v17)
  {

    v105 = App.appIdentifier.getter();
    v107 = v106;
  }

  else
  {
    v105 = 0;
    v107 = 0;
  }

  v108 = v132;
  v109 = SiriKitReliabilityCodes.rawValue.getter();
  v110 = *(v103 + 8);
  v117 = v102;
  v118 = v103;
  v111 = v133;
  v113 = v138;
  v112 = v139;
  v114 = v141;
  v110(v133, v138, v139, v141, v105, v107, v123, v122, 0, 0, v109, v115, v145, v142, v117, v118);

  __swift_destroy_boxed_opaque_existential_1Tm(v146);
  v116 = v130;
  v127(v16, v108, v130);
  v126(v16, 0, 1, v116);
  TaskLoggingService.logAndDonateClassicFlowTask(activityType:eventContext:eventTime:task:app:attribute:domainFlowActivity:intent:intentTypeName:parameterName:responseId:statusDescription:statusReason:shouldDonateToCurare:appResolutionName:flowMetadata:)(v111, v140, v113, v137, v119, 0, 0, v134, 0, v112, v114, 0, 0, 0, 0, 0, 0, v16, 0, v131, v143, v120);

  return outlined destroy of ReferenceResolutionClientProtocol?(v16, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
}

void TaskLoggingService.logTaskStepAndEntityContextTier1(activityType:eventContext:eventTime:task:app:attribute:chosenItem:disambiguationItems:domainContext:domainFlowActivity:intent:intentTypeName:parameterName:responseId:statusDescription:statusReason:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, void *a12, uint64_t a13, unint64_t a14, uint64_t a15, uint64_t a16, void *a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v22 = v21;
  v168 = a7;
  v166 = a6;
  v172 = a3;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v162 = &v152 - v29;
  if (a9 && *(a9 + 16))
  {
    v30 = TaskLoggingService.createFlowEntityContextTier1(disambiguationItems:chosenItem:)(a9, a8);
    if (v30)
    {
      v31 = v30;
      v32 = SiriKitEventContext.resultCandidateId.getter();
      v34 = 13101;
      if (v33)
      {
        v34 = v32;
        v35 = v33;
      }

      else
      {
        v35 = 0xE200000000000000;
      }

      TaskLoggingService.logSELFEntityContextTier1(entityContextTier1:resultCandidateId:executionRequestId:taskId:)(v31, v34, v35, a2[10], a2[11], *(a4 + 16), *(a4 + 24));

      v36 = v31;
      v171 = specialized TaskLoggingService.createFlowPlatformContext(entityContextTier1:)(v31);

      goto LABEL_14;
    }

    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    __swift_project_value_buffer(v37, static Logger.instrumentation);

    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v182[0] = v41;
      *v40 = 136315394;
      *(v40 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(a4 + 16), *(a4 + 24), v182);
      *(v40 + 12) = 2080;
      *(v40 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2[10], a2[11], v182);
      _os_log_impl(&dword_1DC659000, v38, v39, "#TaskLoggingService SELF Log - not logging EntityContextTier1 event for taskId: %s, executionRequestId: %s", v40, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v41, -1, -1);
      MEMORY[0x1E12A2F50](v40, -1, -1);
    }
  }

  v171 = 0;
LABEL_14:
  v161 = a13;
  v160 = a12;
  if (a14)
  {
    v173 = a13;
    v42 = a14;
  }

  else
  {
    if (a12)
    {
      v43 = [a12 typeName];
      v173 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v42 = v44;
    }

    else
    {
      v42 = 0xE700000000000000;
      v173 = 0x6E776F6E6B6E55;
    }
  }

  v169 = a19;
  v170 = a20;
  v167 = a16;
  v165 = a15;
  v163 = a14;
  swift_bridgeObjectRetain_n();
  v179 = a21;
  v164 = a1;
  v154 = ActivityType.asSELFTypeAndReason(_:)(a21);
  v46 = v45;
  v47 = SiriKitEventContext.resultCandidateId.getter();
  v49 = 13101;
  if (v48)
  {
    v49 = v47;
  }

  v157 = v49;
  if (v48)
  {
    v50 = v48;
  }

  else
  {
    v50 = 0xE200000000000000;
  }

  v51 = a2[11];
  v53 = *(a4 + 16);
  v52 = *(a4 + 24);
  v180 = a2[10];
  v181 = v52;
  v54 = [objc_allocWithZone(MEMORY[0x1E69CEB08]) init];
  v174 = a4;
  v175 = a2;
  v176 = v42;
  v177 = v53;
  v178 = v51;
  if (!v54)
  {
    goto LABEL_40;
  }

  v156 = v54;
  v155 = [objc_allocWithZone(MEMORY[0x1E69CEB98]) init];
  if (!v155)
  {

LABEL_40:

    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v76 = type metadata accessor for Logger();
    __swift_project_value_buffer(v76, static Logger.instrumentation);

    v77 = v181;

    v78 = Logger.logObject.getter();
    v79 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v78, v79))
    {
      v80 = v51;
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v182[0] = v82;
      *v81 = 136315650;
      v83 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v157, v50, v182);

      *(v81 + 4) = v83;
      *(v81 + 12) = 2080;
      *(v81 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v177, v77, v182);
      *(v81 + 22) = 2080;
      *(v81 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v180, v80, v182);
      _os_log_impl(&dword_1DC659000, v78, v79, "#TaskLoggingService SELF Log - unable to instantiate SELF schema, not logging Task step for resultCandidateId: %s, taskId: %s, executionRequestId: %s", v81, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v82, -1, -1);
      MEMORY[0x1E12A2F50](v81, -1, -1);

      goto LABEL_86;
    }

    goto LABEL_45;
  }

  v55 = TaskLoggingService.constructMetaData(resultCandidateId:executionRequestId:taskId:)(v157, v50, v180, v51, v53, v181);
  if (!v55)
  {

    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v84 = type metadata accessor for Logger();
    __swift_project_value_buffer(v84, static Logger.instrumentation);

    v85 = v181;

    v86 = Logger.logObject.getter();
    v87 = v51;
    v88 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v86, v88))
    {
      v89 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      v182[0] = v90;
      *v89 = 136315650;
      v91 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v157, v50, v182);

      *(v89 + 4) = v91;
      *(v89 + 12) = 2080;
      *(v89 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v177, v85, v182);
      *(v89 + 22) = 2080;
      *(v89 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v180, v87, v182);
      _os_log_impl(&dword_1DC659000, v86, v88, "#TaskLoggingService SELF Log - unable to construct metaData, not logging Task step for resultCandidateId: %s, taskId: %s, executionRequestId: %s", v89, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v90, -1, -1);
      MEMORY[0x1E12A2F50](v89, -1, -1);

      goto LABEL_86;
    }

LABEL_45:

    goto LABEL_86;
  }

  v153 = v55;
  v56 = [objc_allocWithZone(MEMORY[0x1E69CEB00]) init];
  if (v56)
  {
    v57 = v56;
    (*(v22 + 144))(v182, a5);
    v58 = v183;
    v59 = v184;
    __swift_project_boxed_opaque_existential_1(v182, v183);
    v60 = (*(v59 + 8))(v58, v59);
    if (v61)
    {
      v62 = v61;
    }

    else
    {
      v60 = 0x6C7070615F746F6ELL;
      v62 = 0xEE00656C62616369;
    }

    v63 = MEMORY[0x1E12A1410](v60, v62);

    [v57 setBundleId_];

    v64 = v183;
    v65 = v184;
    __swift_project_boxed_opaque_existential_1(v182, v183);
    v66 = (*(v65 + 16))(v64, v65);
    if (v67)
    {
      v68 = v67;
    }

    else
    {
      v66 = 0x6C7070615F746F6ELL;
      v68 = 0xEE00656C62616369;
    }

    v42 = v176;
    v69 = MEMORY[0x1E12A1410](v66, v68);

    [v57 setAppVersion_];

    v51 = v178;
    [v155 setAppContext_];

    __swift_destroy_boxed_opaque_existential_1Tm(v182);
  }

  v152 = specialized static SiriKitMetricsUtils.formulateSimplifiedStatusDescription(statusDescription:)(v169, v170);
  v71 = v70;
  v72 = [objc_allocWithZone(MEMORY[0x1E69CEB88]) init];
  if (v72)
  {
    v73 = v72;
    v74 = MEMORY[0x1E12A1410](v173, v42);

    [v73 setCurrentTaskName_];

    if (v168)
    {
      v75 = MEMORY[0x1E12A1410](v166);
    }

    else
    {
      v75 = 0;
    }

    v94 = v155;
    [v73 setCurrentTaskType_];

    v95 = HIDWORD(v154);
    [v73 setFlowStateType_];
    v96 = [objc_allocWithZone(MEMORY[0x1E69CEB90]) init];
    if (v96)
    {
      if (v46)
      {
        v97 = 0;
      }

      else
      {
        v97 = v95;
      }

      v98 = v96;
      [v96 setStatusReason_];
      [v73 setFlowStateReason_];
    }

    v93 = v181;
    if (v167)
    {
      v99 = MEMORY[0x1E12A1410](v165);
    }

    else
    {
      v99 = 0;
    }

    [v73 setResolvedSlotName_];

    if (v71)
    {
      v100 = MEMORY[0x1E12A1410](v152, v71);
    }

    else
    {
      v100 = 0;
    }

    v92 = v171;
    [v73 setFlowStateReasonDescription_];

    [v94 setFlowState_];
    v51 = v178;
    if (a10)
    {
      goto LABEL_66;
    }
  }

  else
  {

    v92 = v171;
    v93 = v181;
    v94 = v155;
    if (a10)
    {
LABEL_66:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v101 = swift_allocObject();
      *(v101 + 16) = xmmword_1DCA70640;
      *(v101 + 32) = a10;
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for FLOWSchemaFLOWDomainContext, 0x1E69CEB10);
      v102 = a10;
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v94 setDomainContexts_];

      v51 = v178;
    }
  }

  Date.timeIntervalSince1970.getter();
  if ((*&v104 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_94;
  }

  if (v104 <= -9.22337204e18)
  {
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  if (v104 < 9.22337204e18)
  {
    [v94 setTimestampMs_];
    [v94 setSequenceNum_];
    if (v92)
    {
      v105 = one-time initialization token for instrumentation;
      v106 = v92;
      if (v105 != -1)
      {
        swift_once();
      }

      v107 = type metadata accessor for Logger();
      __swift_project_value_buffer(v107, static Logger.instrumentation);

      v108 = Logger.logObject.getter();
      v109 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v108, v109))
      {
        v110 = swift_slowAlloc();
        v152 = v106;
        v111 = v110;
        v112 = swift_slowAlloc();
        v182[0] = v112;
        *v111 = 136315650;
        v113 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v157, v50, v182);

        *(v111 + 4) = v113;
        *(v111 + 12) = 2080;
        *(v111 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v177, v93, v182);
        *(v111 + 22) = 2080;
        *(v111 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v180, v51, v182);
        _os_log_impl(&dword_1DC659000, v108, v109, "#TaskLoggingService Added platformContext for resultCandidateId: %s, taskId: %s, executionRequestId: %s", v111, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1E12A2F50](v112, -1, -1);
        v114 = v111;
        v106 = v152;
        MEMORY[0x1E12A2F50](v114, -1, -1);
      }

      else
      {
      }

      v115 = v153;
      v94 = v155;
      [v155 setPlatformRelatedContext_];

      v93 = v181;
    }

    else
    {

      v115 = v153;
    }

    v116 = v156;
    [v156 setFlowStep_];
    [v116 setEventMetadata_];

    if (one-time initialization token for instrumentation == -1)
    {
      goto LABEL_79;
    }

    goto LABEL_96;
  }

LABEL_95:
  __break(1u);
LABEL_96:
  swift_once();
LABEL_79:
  v117 = type metadata accessor for Logger();
  __swift_project_value_buffer(v117, static Logger.instrumentation);

  v118 = Logger.logObject.getter();
  v119 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v118, v119))
  {
    v120 = swift_slowAlloc();
    v121 = swift_slowAlloc();
    v182[0] = v121;
    *v120 = 136315906;
    if (v154 > 0xD0)
    {
      v122 = @"FLOWSTATETYPE_UNKNOWN";
      v123 = @"FLOWSTATETYPE_UNKNOWN";
    }

    else
    {
      v122 = off_1E86447C8[v154];
      v123 = off_1E8644E50[v154];
    }

    v126 = v122;
    v127 = v123;
    v128 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v130 = v129;

    v131 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v128, v130, v182);

    *(v120 + 4) = v131;
    *(v120 + 12) = 2080;
    v125 = v177;
    *(v120 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v177, v93, v182);
    *(v120 + 22) = 2080;
    *(v120 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v173, v176, v182);
    *(v120 + 32) = 2080;
    *(v120 + 34) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v175[12], v175[13], v182);
    _os_log_impl(&dword_1DC659000, v118, v119, "#TaskLoggingService SELF Log - logging task step: %s for taskId: %s, taskType: %s, interactionId:%s", v120, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v121, -1, -1);
    MEMORY[0x1E12A2F50](v120, -1, -1);

    v124 = v178;
  }

  else
  {

    v125 = v177;
    v124 = v178;
  }

  v132 = v156;
  (*(v22 + 96))(v156);
  TaskLoggingService.emitRequestLink(executionRequestId:taskId:)(v180, v124, v125, v93);

LABEL_86:
  outlined init with copy of ReferenceResolutionClientProtocol(v22 + 16, v182);
  v134 = v183;
  v133 = v184;
  __swift_project_boxed_opaque_existential_1(v182, v183);
  v159 = v22;
  v158 = a5;
  v157 = a11;
  if (a5)
  {
    v135 = App.appIdentifier.getter();
    v137 = v136;
  }

  else
  {
    v135 = 0;
    v137 = 0;
  }

  v156 = a18;
  v155 = a17;
  v138 = v162;
  outlined init with copy of ReferenceResolutionClientProtocol?(v179, v162, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
  v139 = type metadata accessor for SiriKitReliabilityCodes();
  v140 = *(v139 - 8);
  if ((*(v140 + 48))(v138, 1, v139) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v138, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
    v141 = 0;
    v142 = 0;
  }

  else
  {
    v141 = SiriKitReliabilityCodes.rawValue.getter();
    v142 = v143;
    (*(v140 + 8))(v138, v139);
  }

  v144 = *(v133 + 8);
  v150 = v134;
  v151 = v133;
  v149 = v141;
  v145 = v167;
  v146 = v165;
  v147 = v164;
  v148 = v172;
  v144(v164, v172, v173, v176, v135, v137, v180, v178, v165, v167, v149, v142, v177, v181, v150, v151);

  __swift_destroy_boxed_opaque_existential_1Tm(v182);
  TaskLoggingService.logAndDonateClassicFlowTask(activityType:eventContext:eventTime:task:app:attribute:domainFlowActivity:intent:intentTypeName:parameterName:responseId:statusDescription:statusReason:shouldDonateToCurare:appResolutionName:flowMetadata:)(v147, v175, v148, v174, v158, v166, v168, v157, v160, v161, v163, v146, v145, v155, v156, v169, v170, v179, 1, 0, 0, 0);
}

void TaskLoggingService.logDomainTier1Data(eventContext:task:taskType:tierOneFlowEvent:)(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, id a5)
{
  v6 = v5;
  v12 = [a5 flowStep];
  if (v12)
  {

    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Logger.instrumentation);

    oslog = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v39 = v16;
      *v15 = 136315650;
      *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a3, a4, &v39);
      *(v15 + 12) = 2080;
      *(v15 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(a2 + 16), *(a2 + 24), &v39);
      *(v15 + 22) = 2080;
      *(v15 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1[12], a1[13], &v39);
      _os_log_impl(&dword_1DC659000, oslog, v14, "Ignoring tierOneFlowEvent with illegally set flowStep for taskType: %s, taskId: %s, interactionId:%s", v15, 0x20u);
      swift_arrayDestroy();
      v17 = v16;
LABEL_6:
      MEMORY[0x1E12A2F50](v17, -1, -1);
      MEMORY[0x1E12A2F50](v15, -1, -1);

      return;
    }
  }

  else
  {
    v36 = a3;
    v18 = SiriKitEventContext.resultCandidateId.getter();
    if (v19)
    {
      v20 = v19;
    }

    else
    {
      v18 = 13101;
      v20 = 0xE200000000000000;
    }

    v21 = a1[10];
    v23 = *(a2 + 16);
    v22 = *(a2 + 24);
    v37 = a1[11];
    oslog = TaskLoggingService.constructMetaData(resultCandidateId:executionRequestId:taskId:)(v18, v20, v21, v37, v23, v22);

    if (oslog)
    {
      v35 = v21;
      v24 = v22;
      v25 = v23;
      [a5 setEventMetadata_];
      if (one-time initialization token for instrumentation != -1)
      {
        swift_once();
      }

      v26 = type metadata accessor for Logger();
      __swift_project_value_buffer(v26, static Logger.instrumentation);

      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v39 = v30;
        *v29 = 136315650;
        *(v29 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, a4, &v39);
        *(v29 + 12) = 2080;
        *(v29 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v24, &v39);
        *(v29 + 22) = 2080;
        *(v29 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1[12], a1[13], &v39);
        _os_log_impl(&dword_1DC659000, v27, v28, "#TaskLoggingService SELF Log - logging tier1 data for taskType: %s, with taskId: %s, interactionId:%s", v29, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1E12A2F50](v30, -1, -1);
        MEMORY[0x1E12A2F50](v29, -1, -1);
      }

      (*(v6 + 96))(a5);
      TaskLoggingService.emitRequestLink(executionRequestId:taskId:)(v35, v37, v25, v24);
    }

    else
    {
      if (one-time initialization token for instrumentation != -1)
      {
        swift_once();
      }

      v31 = type metadata accessor for Logger();
      __swift_project_value_buffer(v31, static Logger.instrumentation);

      oslog = Logger.logObject.getter();
      v32 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(oslog, v32))
      {
        v33 = v22;
        v15 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v39 = v34;
        *v15 = 136315394;
        *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, a4, &v39);
        *(v15 + 12) = 2080;
        *(v15 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v33, &v39);
        _os_log_impl(&dword_1DC659000, oslog, v32, "#TaskLoggingService SELF Log - unable to construct metaData, not logging tier1 data for taskType: %s with taskId: %s", v15, 0x16u);
        swift_arrayDestroy();
        v17 = v34;
        goto LABEL_6;
      }
    }
  }
}

uint64_t TaskLoggingService.logTaskConfiguration(eventContext:eventTime:task:taskConfiguration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v4[10];
  v10 = v4[11];
  __swift_project_boxed_opaque_existential_1(v4 + 7, v9);
  return (*(v10 + 16))(a1, a2, a4, *(a3 + 16), *(a3 + 24), v9, v10);
}

void TaskLoggingService.logLocationAccessPrompt(eventContext:task:promptContext:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v8 = [objc_allocWithZone(MEMORY[0x1E69CEB08]) init];
  if (v8)
  {
    v9 = v8;
    [v8 setLocationAccessPermissionPromptContext_];
    v10 = SiriKitEventContext.resultCandidateId.getter();
    if (v11)
    {
      v12 = v11;
    }

    else
    {
      v10 = 13101;
      v12 = 0xE200000000000000;
    }

    v13 = TaskLoggingService.constructMetaData(resultCandidateId:executionRequestId:taskId:)(v10, v12, *(a1 + 80), *(a1 + 88), *(a2 + 16), *(a2 + 24));

    [v9 setEventMetadata_];

    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logger.instrumentation);
    v15 = a3;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v29 = v19;
      *v18 = 136315138;
      v20 = [v15 formattedJsonBody];
      if (v20)
      {
        v21 = v20;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
      v25 = String.init<A>(describing:)();
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v29);

      *(v18 + 4) = v27;
      _os_log_impl(&dword_1DC659000, v16, v17, "#TaskLoggingService SELF Log - logging locationAccessPrompt; promptContext=%s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      MEMORY[0x1E12A2F50](v19, -1, -1);
      MEMORY[0x1E12A2F50](v18, -1, -1);
    }

    (*(v4 + 96))(v9);
  }

  else
  {
    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logger.instrumentation);
    oslog = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1DC659000, oslog, v23, "#TaskLoggingService SELF Log - locationAccessPrompt NOT logged; missing schema event", v24, 2u);
      MEMORY[0x1E12A2F50](v24, -1, -1);
    }
  }
}

uint64_t TaskLoggingService.__allocating_init(biomeDonator:curareDonator:selfEmitter:tier1LinkIdSupplier:derivedIdentifierSupplier:appInformationSupplier:sensitivityManager:featureChecker:)(__int128 *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a11, void *a12)
{
  v17 = a12[3];
  v18 = a12[4];
  v19 = __swift_mutable_project_boxed_opaque_existential_1(a12, v17);
  v20 = specialized TaskLoggingService.__allocating_init(biomeDonator:curareDonator:selfEmitter:tier1LinkIdSupplier:derivedIdentifierSupplier:appInformationSupplier:sensitivityManager:featureChecker:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a11, v19, v11, v17, v18);
  __swift_destroy_boxed_opaque_existential_1Tm(a12);
  return v20;
}

uint64_t static TaskLoggingService.instance.getter()
{
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }
}

id closure #1 in default argument 3 of TaskLoggingService.init(biomeDonator:curareDonator:selfEmitter:tier1LinkIdSupplier:derivedIdentifierSupplier:appInformationSupplier:sensitivityManager:featureChecker:)()
{
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  v4 = objc_allocWithZone(MEMORY[0x1E69CF638]);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v6 = [v4 initWithNSUUID_];

  (*(v1 + 8))(v3, v0);
  return v6;
}

uint64_t TaskLoggingService.init(biomeDonator:curareDonator:selfEmitter:tier1LinkIdSupplier:derivedIdentifierSupplier:appInformationSupplier:sensitivityManager:featureChecker:)(__int128 *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, void *a11)
{
  v28 = a7;
  v29 = a8;
  v26 = a5;
  v27 = a6;
  v25 = a9;
  v16 = a11[3];
  v17 = a11[4];
  v18 = __swift_mutable_project_boxed_opaque_existential_1(a11, v16);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v21, v19);
  v23 = specialized TaskLoggingService.init(biomeDonator:curareDonator:selfEmitter:tier1LinkIdSupplier:derivedIdentifierSupplier:appInformationSupplier:sensitivityManager:featureChecker:)(a1, a2, a3, a4, v26, v27, v28, v29, v25, a10, v21, v11, v16, v17);
  __swift_destroy_boxed_opaque_existential_1Tm(a11);
  return v23;
}

void *TaskLoggingService.createFlowEntityContextTier1(disambiguationItems:chosenItem:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = MEMORY[0x1E69E7CC0];
  v28 = MEMORY[0x1E69E7CC0];
  v4 = a1 + 32;
  do
  {
    outlined init with copy of Any(v4, v26);
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for INPerson, 0x1E696E940);
    if (swift_dynamicCast())
    {
      v5 = [objc_allocWithZone(MEMORY[0x1E69CEB50]) init];
      if (v5)
      {
        v6 = v5;
        v7 = [v25 contactIdentifier];
        [v6 setEntityId_];

        v8 = v6;
        MEMORY[0x1E12A1680]();
        if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v3 = v28;
      }

      else
      {
      }
    }

    v4 += 32;
    --v2;
  }

  while (v2);
  if (!(v3 >> 62))
  {
    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

LABEL_25:

    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static Logger.instrumentation);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_30;
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = "#TaskLoggingService cannot initiate entityPresented or disambiguationItem is not INPerson";
    goto LABEL_29;
  }

  if (!__CocoaSet.count.getter())
  {
    goto LABEL_25;
  }

LABEL_12:
  v9 = [objc_allocWithZone(MEMORY[0x1E69CEB48]) init];
  if (!v9)
  {

    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.instrumentation);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_30;
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = "#TaskLoggingService cannot initiate entityContextTier1";
LABEL_29:
    _os_log_impl(&dword_1DC659000, v16, v17, v19, v18, 2u);
    MEMORY[0x1E12A2F50](v18, -1, -1);
LABEL_30:

    return 0;
  }

  v10 = v9;
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for FLOWSchemaFLOWEntityTier1, 0x1E69CEB50);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v10 setEntitiesPresenteds_];

  outlined init with copy of ReferenceResolutionClientProtocol?(a2, v26, &_sypSgMd, &_sypSgMR);
  if (v27)
  {
    if (swift_dynamicCast())
    {
      v12 = [objc_allocWithZone(MEMORY[0x1E69CEB50]) init];
      if (v12)
      {
        v13 = v12;
        v14 = [v25 contactIdentifier];
        [v13 setEntityId_];

        [v10 setEntitySelected_];
      }

      else
      {
      }
    }
  }

  else
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v26, &_sypSgMd, &_sypSgMR);
  }

  v20 = (*(v24 + 112))();
  [v10 setLinkId_];

  return v10;
}

void TaskLoggingService.logSELFEntityContextTier1(entityContextTier1:resultCandidateId:executionRequestId:taskId:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7)
{
  v8 = v7;
  v16 = [objc_allocWithZone(MEMORY[0x1E69CEB08]) init];
  if (v16)
  {
    v17 = v16;
    v18 = TaskLoggingService.constructMetaData(resultCandidateId:executionRequestId:taskId:)(a2, a3, a4, a5, a6, a7);
    if (v18)
    {
      v43 = a4;
      oslog = v18;
      [v17 setFlowEntityContextTier1_];
      [v17 setEventMetadata_];
      if (one-time initialization token for instrumentation != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      __swift_project_value_buffer(v19, static Logger.instrumentation);

      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v24 = a2;
        v25 = a6;
        v26 = v23;
        v45 = v23;
        *v22 = 136315650;
        *(v22 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, a3, &v45);
        *(v22 + 12) = 2080;
        *(v22 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, a7, &v45);
        *(v22 + 22) = 2080;
        v27 = v43;
        *(v22 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, a5, &v45);
        _os_log_impl(&dword_1DC659000, v20, v21, "#TaskLoggingService SELF Log - logging entity for resultCandidateId: %s, taskId: %s, executionRequestId: %s", v22, 0x20u);
        swift_arrayDestroy();
        v28 = v26;
        a6 = v25;
        MEMORY[0x1E12A2F50](v28, -1, -1);
        MEMORY[0x1E12A2F50](v22, -1, -1);
      }

      else
      {

        v27 = v43;
      }

      (*(v8 + 96))(v17);
      TaskLoggingService.emitRequestLink(executionRequestId:taskId:)(v27, a5, a6, a7);
    }

    else
    {
      if (one-time initialization token for instrumentation != -1)
      {
        swift_once();
      }

      v36 = type metadata accessor for Logger();
      __swift_project_value_buffer(v36, static Logger.instrumentation);

      oslog = Logger.logObject.getter();
      v37 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(oslog, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v40 = a2;
        v41 = a6;
        v42 = v39;
        v45 = v39;
        *v38 = 136315650;
        *(v38 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, a3, &v45);
        *(v38 + 12) = 2080;
        *(v38 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, a7, &v45);
        *(v38 + 22) = 2080;
        *(v38 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a4, a5, &v45);
        _os_log_impl(&dword_1DC659000, oslog, v37, "#TaskLoggingService SELF Log - unable to instantiate SELF schema, not logging Task step for resultCandidateId: %s, taskId: %s, executionRequestId: %s", v38, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1E12A2F50](v42, -1, -1);
        MEMORY[0x1E12A2F50](v38, -1, -1);

        goto LABEL_15;
      }
    }
  }

  else
  {
    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    __swift_project_value_buffer(v29, static Logger.instrumentation);

    oslog = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v33 = a2;
      v34 = a6;
      v35 = v32;
      v45 = v32;
      *v31 = 136315650;
      *(v31 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, a3, &v45);
      *(v31 + 12) = 2080;
      *(v31 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, a7, &v45);
      *(v31 + 22) = 2080;
      *(v31 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a4, a5, &v45);
      _os_log_impl(&dword_1DC659000, oslog, v30, "#TaskLoggingService SELF Log - unable to instantiate SELF schema, not logging Task step for resultCandidateId: %s, taskId: %s, executionRequestId: %s", v31, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v35, -1, -1);
      MEMORY[0x1E12A2F50](v31, -1, -1);
      goto LABEL_15;
    }
  }

LABEL_15:
}

NSObject *TaskLoggingService.createFlowTaskSELFClientEvent(activityType:eventTime:resultCandidateId:taskType:app:appResolutionType:attribute:domainContext:executionRequestId:parameterName:platformContext:statusReason:statusReasonDescription:taskId:)(unsigned int a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, unint64_t a13, uint64_t a14, void *a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unint64_t a21)
{
  v26 = [objc_allocWithZone(MEMORY[0x1E69CEB08]) init];
  if (!v26)
  {
    goto LABEL_18;
  }

  v27 = v26;
  v86 = [objc_allocWithZone(MEMORY[0x1E69CEB98]) init];
  if (!v86)
  {

LABEL_18:
    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v52 = type metadata accessor for Logger();
    __swift_project_value_buffer(v52, static Logger.instrumentation);

    v27 = Logger.logObject.getter();
    v53 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v27, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v88[0] = v55;
      *v54 = 136315650;
      *(v54 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a3, a4, v88);
      *(v54 + 12) = 2080;
      *(v54 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a20, a21, v88);
      *(v54 + 22) = 2080;
      *(v54 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a12, a13, v88);
      _os_log_impl(&dword_1DC659000, v27, v53, "#TaskLoggingService SELF Log - unable to instantiate SELF schema, not logging Task step for resultCandidateId: %s, taskId: %s, executionRequestId: %s", v54, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v55, -1, -1);
      MEMORY[0x1E12A2F50](v54, -1, -1);
    }

    goto LABEL_27;
  }

  v28 = TaskLoggingService.constructMetaData(resultCandidateId:executionRequestId:taskId:)(a3, a4, a12, a13, a20, a21);
  if (v28)
  {
    v83 = v28;
    v29 = a19;
    v30 = [objc_allocWithZone(MEMORY[0x1E69CEB00]) init];
    if (v30)
    {
      v31 = v30;
      (*(v21 + 144))(v88, a7);
      v33 = v89;
      v32 = v90;
      __swift_project_boxed_opaque_existential_1(v88, v89);
      v34 = (*(v32 + 8))(v33, v32);
      if (v35)
      {
        v36 = v35;
      }

      else
      {
        v34 = 0x6C7070615F746F6ELL;
        v36 = 0xEE00656C62616369;
      }

      v37 = MEMORY[0x1E12A1410](v34, v36);

      [v31 setBundleId_];

      v38 = v89;
      v39 = v90;
      __swift_project_boxed_opaque_existential_1(v88, v89);
      v40 = (*(v39 + 16))(v38, v39);
      if (v41)
      {
        v42 = v41;
      }

      else
      {
        v40 = 0x6C7070615F746F6ELL;
        v42 = 0xEE00656C62616369;
      }

      v43 = MEMORY[0x1E12A1410](v40, v42);

      [v31 setAppVersion_];

      if ((a8 & 0x100000000) == 0)
      {
        [v31 setAppResolutionType_];
      }

      [v86 setAppContext_];

      __swift_destroy_boxed_opaque_existential_1Tm(v88);
      v29 = a19;
    }

    v44 = a11;
    v45 = specialized static SiriKitMetricsUtils.formulateSimplifiedStatusDescription(statusDescription:)(a18, v29);
    v47 = v46;
    v48 = [objc_allocWithZone(MEMORY[0x1E69CEB88]) init];
    if (v48)
    {
      v49 = v48;
      v82 = v45;
      v50 = MEMORY[0x1E12A1410](a5, a6);
      [v49 setCurrentTaskName_];

      if (a10)
      {
        v51 = MEMORY[0x1E12A1410](a9, a10);
      }

      else
      {
        v51 = 0;
      }

      v65 = a15;
      [v49 setCurrentTaskType_];

      [v49 setFlowStateType_];
      v66 = [objc_allocWithZone(MEMORY[0x1E69CEB90]) init];
      v64 = a4;
      if (v66)
      {
        if ((a17 & 0x100000000) != 0)
        {
          v67 = 0;
        }

        else
        {
          v67 = a17;
        }

        v68 = v66;
        [v66 setStatusReason_];
        [v49 setFlowStateReason_];
      }

      v62 = a13;
      if (a15)
      {
        v65 = MEMORY[0x1E12A1410](a14, a15);
      }

      [v49 setResolvedSlotName_];

      if (v47)
      {
        v69 = MEMORY[0x1E12A1410](v82, v47);
      }

      else
      {
        v69 = 0;
      }

      [v49 setFlowStateReasonDescription_];

      v63 = v86;
      [v86 setFlowState_];

      v44 = a11;
      if (a11)
      {
        goto LABEL_42;
      }
    }

    else
    {

      v62 = a13;
      v63 = v86;
      v64 = a4;
      if (a11)
      {
LABEL_42:
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
        v70 = swift_allocObject();
        *(v70 + 16) = xmmword_1DCA70640;
        *(v70 + 32) = v44;
        type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for FLOWSchemaFLOWDomainContext, 0x1E69CEB10);
        v44 = v44;
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v63 setDomainContexts_];
      }
    }

    Date.timeIntervalSince1970.getter();
    if ((*&v72 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v72 > -9.22337204e18)
    {
      if (v72 < 9.22337204e18)
      {
        [v63 setTimestampMs_];
        [v63 setSequenceNum_];
        if (!a16)
        {
LABEL_51:
          [v27 setFlowStep:v63];
          [v27 setEventMetadata:v83];

          return v27;
        }

        v73 = one-time initialization token for instrumentation;
        v44 = a16;
        if (v73 == -1)
        {
LABEL_48:
          v74 = type metadata accessor for Logger();
          __swift_project_value_buffer(v74, static Logger.instrumentation);

          v75 = Logger.logObject.getter();
          v76 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v75, v76))
          {
            v77 = swift_slowAlloc();
            v78 = swift_slowAlloc();
            v79 = v64;
            v80 = v78;
            v88[0] = v78;
            *v77 = 136315650;
            *(v77 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a3, v79, v88);
            *(v77 + 12) = 2080;
            *(v77 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a20, a21, v88);
            *(v77 + 22) = 2080;
            *(v77 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a12, v62, v88);
            _os_log_impl(&dword_1DC659000, v75, v76, "#TaskLoggingService Added platformContext for resultCandidateId: %s, taskId: %s, executionRequestId: %s", v77, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x1E12A2F50](v80, -1, -1);
            MEMORY[0x1E12A2F50](v77, -1, -1);
          }

          [v63 setPlatformRelatedContext_];
          goto LABEL_51;
        }

LABEL_56:
        swift_once();
        goto LABEL_48;
      }

LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    __break(1u);
    goto LABEL_55;
  }

  if (one-time initialization token for instrumentation != -1)
  {
    swift_once();
  }

  v56 = type metadata accessor for Logger();
  __swift_project_value_buffer(v56, static Logger.instrumentation);

  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v57, v58))
  {
    v59 = a4;
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v88[0] = v61;
    *v60 = 136315650;
    *(v60 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a3, v59, v88);
    *(v60 + 12) = 2080;
    *(v60 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a20, a21, v88);
    *(v60 + 22) = 2080;
    *(v60 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a12, a13, v88);
    _os_log_impl(&dword_1DC659000, v57, v58, "#TaskLoggingService SELF Log - unable to construct metaData, not logging Task step for resultCandidateId: %s, taskId: %s, executionRequestId: %s", v60, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v61, -1, -1);
    MEMORY[0x1E12A2F50](v60, -1, -1);
  }

LABEL_27:
  return 0;
}

uint64_t TaskLoggingService.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 168));
  return v0;
}

uint64_t TaskLoggingService.__deallocating_deinit()
{
  TaskLoggingService.deinit();

  return swift_deallocClassInstance();
}

id App.versionOnCurrentDevice.getter(uint64_t a1)
{
  v1 = App.appIdentifier.getter();
  if (!v2)
  {
    return 0;
  }

  v3 = v1;
  v4 = v2;
  v5 = objc_allocWithZone(MEMORY[0x1E69635F8]);
  result = @nonobjc LSApplicationRecord.init(bundleIdentifier:allowPlaceholder:)(v3, v4, 0);
  if (result)
  {
    v7 = result;
    v8 = [result bundleIdentifier];
    if (v8)
    {
      v9 = v8;
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      return v10;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

id @nonobjc LSApplicationRecord.init(bundleIdentifier:allowPlaceholder:)(uint64_t a1, uint64_t a2, char a3)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E12A1410](a1);

  v10[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v6;
}

uint64_t specialized TaskLoggingService.init(biomeDonator:curareDonator:selfEmitter:tier1LinkIdSupplier:derivedIdentifierSupplier:appInformationSupplier:sensitivityManager:featureChecker:)(__int128 *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  *(a12 + 192) = a13;
  *(a12 + 200) = a14;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((a12 + 168));
  (*(*(a13 - 8) + 32))(boxed_opaque_existential_0, a11, a13);
  outlined init with take of ReferenceResolutionClientProtocol(a1, a12 + 16);
  outlined init with take of ReferenceResolutionClientProtocol(a2, a12 + 56);
  *(a12 + 96) = a3;
  *(a12 + 104) = a4;
  *(a12 + 112) = a5;
  *(a12 + 120) = a6;
  *(a12 + 128) = a7;
  *(a12 + 136) = a8;
  *(a12 + 144) = a9;
  *(a12 + 160) = a10;
  return a12;
}

uint64_t specialized static TaskLoggingService.getAppFrom(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17SiriAppResolution0bC6ResultOSgMd, &_s17SiriAppResolution0bC6ResultOSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v42 - v3;
  v5 = type metadata accessor for AppResolutionResult();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v42 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v42 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v42 - v16;
  outlined init with copy of ReferenceResolutionClientProtocol?(a1, v4, &_s17SiriAppResolution0bC6ResultOSgMd, &_s17SiriAppResolution0bC6ResultOSgMR);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v4, &_s17SiriAppResolution0bC6ResultOSgMd, &_s17SiriAppResolution0bC6ResultOSgMR);
    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Logger.instrumentation);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1DC659000, v19, v20, "#TaskLoggingService SELF Log - cannot get app from nil appResolutionResult", v21, 2u);
      MEMORY[0x1E12A2F50](v21, -1, -1);
    }

    return 0;
  }

  v23 = *(v6 + 32);
  v48 = v6 + 32;
  v49 = v23;
  v23(v17, v4, v5);
  if (one-time initialization token for instrumentation != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  __swift_project_value_buffer(v24, static Logger.instrumentation);
  v25 = *(v6 + 16);
  v25(v14, v17, v5);
  v26 = Logger.logObject.getter();
  v47 = static os_log_type_t.debug.getter();
  v27 = os_log_type_enabled(v26, v47);
  v28 = MEMORY[0x1E69CE258];
  if (v27)
  {
    v45 = v26;
    v29 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v50 = v43;
    v44 = v29;
    *v29 = 136315138;
    v25(v11, v14, v5);
    v30 = (*(v6 + 88))(v11, v5);
    v46 = *MEMORY[0x1E69CE248];
    if (v30 == v46 || v30 == *v28)
    {
      v31 = v28;
      (*(v6 + 96))(v11, v5);
      v42 = App.appIdentifier.getter();
      v35 = v34;

      if (v35)
      {
        v32 = *(v6 + 8);
        v32(v14, v5);
        v36 = v42;
        v37 = v45;
LABEL_19:
        v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v35, &v50);

        v39 = v44;
        *(v44 + 1) = v38;
        _os_log_impl(&dword_1DC659000, v37, v47, "#TaskLoggingService SELF Log - found app %s in appResolutionResult", v39, 0xCu);
        v40 = v43;
        __swift_destroy_boxed_opaque_existential_1Tm(v43);
        MEMORY[0x1E12A2F50](v40, -1, -1);
        MEMORY[0x1E12A2F50](v39, -1, -1);

        v28 = v31;
        v33 = v46;
        goto LABEL_20;
      }

      v32 = *(v6 + 8);
    }

    else
    {
      v31 = v28;
      v32 = *(v6 + 8);
      v32(v11, v5);
    }

    v37 = v45;
    v32(v14, v5);

    v35 = 0xE300000000000000;
    v36 = 7104878;
    goto LABEL_19;
  }

  v32 = *(v6 + 8);
  v32(v14, v5);
  v33 = *MEMORY[0x1E69CE248];
LABEL_20:
  v49(v8, v17, v5);
  v41 = (*(v6 + 88))(v8, v5);
  if (v41 != v33 && v41 != *v28)
  {
    v32(v8, v5);
    return 0;
  }

  (*(v6 + 96))(v8, v5);
  return *v8;
}

{
  if (!a1)
  {
    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.instrumentation);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_19;
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = "#TaskLoggingService SELF Log - cannot get app from nil flowMetadata";
    goto LABEL_18;
  }

  if (!*(a1 + 16) || (v2 = specialized __RawDictionaryStorage.find<A>(_:)(0x6C646E7542707061, 0xEB00000000644965), (v3 & 1) == 0) || (outlined init with copy of Any(*(a1 + 56) + 32 * v2, v18), (swift_dynamicCast() & 1) == 0))
  {
    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.instrumentation);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_19;
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = "#TaskLoggingService SELF Log - flowMetadata doesn't contain key 'appBundleId'";
LABEL_18:
    _os_log_impl(&dword_1DC659000, v11, v12, v14, v13, 2u);
    MEMORY[0x1E12A2F50](v13, -1, -1);
LABEL_19:

    return 0;
  }

  if (one-time initialization token for instrumentation != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.instrumentation);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18[0] = v8;
    *v7 = 136315138;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, v18);
    _os_log_impl(&dword_1DC659000, v5, v6, "#TaskLoggingService SELF Log - found app %s in flowMetadata", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1E12A2F50](v8, -1, -1);
    MEMORY[0x1E12A2F50](v7, -1, -1);
  }

  type metadata accessor for App();
  return App.__allocating_init(appIdentifier:)();
}

uint64_t specialized static TaskLoggingService.getAppResolutionInfo(flowMetadata:)(uint64_t a1)
{
  v2 = type metadata accessor for SiriKitReliabilityCodes();
  v3 = *(v2 - 8);
  v4.n128_f64[0] = MEMORY[0x1EEE9AC00](v2);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 && *(a1 + 16) && (v7 = specialized __RawDictionaryStorage.find<A>(_:)(0x6974756C6F736572, 0xEE00657079546E6FLL), (v8 & 1) != 0))
  {
    outlined init with copy of Any(*(a1 + 56) + 32 * v7, v51);
    outlined init with copy of Any(v51, v50);
    if ((swift_dynamicCast() & 1) == 0)
    {
      if (one-time initialization token for instrumentation != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      __swift_project_value_buffer(v20, static Logger.instrumentation);
      outlined init with copy of Any(v51, v50);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v49 = v24;
        *v23 = 136315138;
        outlined init with copy of Any(v50, &v47);
        v25 = String.init<A>(describing:)();
        v27 = v26;
        __swift_destroy_boxed_opaque_existential_1Tm(v50);
        v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, &v49);

        *(v23 + 4) = v28;
        _os_log_impl(&dword_1DC659000, v21, v22, "#TaskLoggingService SELF Log - failed to map non-String: %s to SELF FLOWAppResolutionType, falling back to UNKNOWN", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v24);
        MEMORY[0x1E12A2F50](v24, -1, -1);
        MEMORY[0x1E12A2F50](v23, -1, -1);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1Tm(v50);
      }

      outlined init with copy of Any(v51, v50);
      v9 = String.init<A>(describing:)();
      goto LABEL_22;
    }

    v9 = v47;
    v10 = v48;
    v11 = HIBYTE(v48) & 0xF;
    if ((v48 & 0x2000000000000000) == 0)
    {
      v11 = v47 & 0xFFFFFFFFFFFFLL;
    }

    if (!v11)
    {

      (*(v3 + 104))(v6, *MEMORY[0x1E69CFCC0], v2);
      v9 = SiriKitReliabilityCodes.rawValue.getter();
      (*(v3 + 8))(v6, v2);
      __swift_destroy_boxed_opaque_existential_1Tm(v51);
      return v9;
    }

    v12._countAndFlagsBits = v9;
    v12._object = v10;
    AppResolutionType.init(rawValue:)(v12);
    v13 = v50[0];
    if (LOBYTE(v50[0]) == 13)
    {
      if (one-time initialization token for instrumentation != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      __swift_project_value_buffer(v14, static Logger.instrumentation);

      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v50[0] = v18;
        *v17 = 136315138;
        *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, v50);
        _os_log_impl(&dword_1DC659000, v15, v16, "#TaskLoggingService SELF Log - failed to map appResolutionTypeName: %s to SELF FLOWAppResolutionType, falling back to UNKNOWN", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v18);
        MEMORY[0x1E12A2F50](v18, -1, -1);
        MEMORY[0x1E12A2F50](v17, -1, -1);
      }

LABEL_22:
      __swift_destroy_boxed_opaque_existential_1Tm(v51);
      return v9;
    }

    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    __swift_project_value_buffer(v29, static Logger.instrumentation);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v50[0] = v46;
      *v32 = 136315394;
      LOBYTE(v47) = v13;
      v33 = AppResolutionType.rawValue.getter();
      v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, v50);

      *(v32 + 4) = v35;
      *(v32 + 12) = 2080;
      LOBYTE(v47) = v13;
      v36 = AppResolutionType.flowAppResolutionType.getter();
      if (v36 > 0xE)
      {
        v37 = @"FLOWAPPRESOLUTIONTYPE_UNKNOWN";
        v38 = @"FLOWAPPRESOLUTIONTYPE_UNKNOWN";
      }

      else
      {
        v37 = off_1E86454D8[v36];
        v38 = off_1E8645550[v36];
      }

      v39 = v37;
      v40 = v38;
      v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v43 = v42;

      v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v43, v50);

      *(v32 + 14) = v44;
      _os_log_impl(&dword_1DC659000, v30, v31, "#TaskLoggingService SELF Log - mapping appResolutionTypeName: %s to SELF FLOWAppResolutionType %s", v32, 0x16u);
      v45 = v46;
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v45, -1, -1);
      MEMORY[0x1E12A2F50](v32, -1, -1);
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v51);
    LOBYTE(v50[0]) = v13;
    AppResolutionType.flowAppResolutionType.getter();
  }

  else
  {
    (*(v3 + 104))(v6, *MEMORY[0x1E69CFCC0], v2, v4);
    v9 = SiriKitReliabilityCodes.rawValue.getter();
    (*(v3 + 8))(v6, v2);
  }

  return v9;
}

unint64_t specialized TaskLoggingService.createFlowPlatformContext(entityContextTier1:)(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = objc_allocWithZone(MEMORY[0x1E69CEB80]);
  v3 = a1;
  v4 = [v2 init];
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v4;
  v6 = [objc_allocWithZone(MEMORY[0x1E69CEB40]) init];
  if (!v6)
  {

LABEL_9:
    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.instrumentation);
    v10 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v10, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1DC659000, v10, v12, "#TaskLoggingService unable to instantiate SELF platform/entity context", v13, 2u);
      MEMORY[0x1E12A2F50](v13, -1, -1);
    }

    v5 = 0;
    v7 = v3;
    goto LABEL_14;
  }

  v7 = v6;
  v8 = [v3 linkId];
  [v7 setLinkId:v8];

  result = [v3 entitiesPresentedCount];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(result))
  {
    [v7 setNumberOfEntitiesShown:result];
    [v5 setEntityContextValue_];
    v10 = v3;
LABEL_14:

    return v5;
  }

  __break(1u);
  return result;
}

uint64_t specialized TaskLoggingService.__allocating_init(biomeDonator:curareDonator:selfEmitter:tier1LinkIdSupplier:derivedIdentifierSupplier:appInformationSupplier:sensitivityManager:featureChecker:)(__int128 *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v26 = a7;
  v27 = a8;
  v24 = a5;
  v25 = a6;
  v23 = a4;
  v22 = a9;
  v17 = *(a13 - 8);
  MEMORY[0x1EEE9AC00](a12);
  v19 = &v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = swift_allocObject();
  (*(v17 + 16))(v19, a11, a13);
  return specialized TaskLoggingService.init(biomeDonator:curareDonator:selfEmitter:tier1LinkIdSupplier:derivedIdentifierSupplier:appInformationSupplier:sensitivityManager:featureChecker:)(a1, a2, a3, v23, v24, v25, v26, v27, v22, a10, v19, v20, a13, a14);
}

uint64_t TaskService.currentTask.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  if (!(v1 >> 62))
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

    return 0;
  }

  result = __CocoaSet.count.getter();
  if (!result)
  {
    return 0;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {

    v3 = MEMORY[0x1E12A1FE0](0, v1);

    return v3;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(v1 + 32);

    return v3;
  }

  __break(1u);
  return result;
}

void SiriEnvironment.updateFlowTask(with:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriFlowEnvironment0B12TaskMetadataVSgMd, &_s19SiriFlowEnvironment0B12TaskMetadataVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v15 - v3;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v9 = type metadata accessor for FlowTaskProvider();
    v10 = *(a1 + 16);
    v15[1] = v9;
    v15[2] = v10;
    v16 = v4;
    v11 = OBJC_IVAR____TtC14SiriKitRuntime8FlowTask_creationTime;
    v12 = *(v6 + 16);
    v12(v8, a1 + OBJC_IVAR____TtC14SiriKitRuntime8FlowTask_creationTime, v5);

    dispatch thunk of FlowTaskProvider.__allocating_init(id:isClientInitiated:creationTime:)();
    SiriEnvironment.flowTask.setter();
    SiriEnvironment.currentRequest.getter();
    v12(v8, a1 + v11, v5);

    v13 = v16;
    FlowTaskMetadata.init(id:isClientInitiated:creationTime:)();
    v14 = type metadata accessor for FlowTaskMetadata();
    (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
    CurrentRequest.flowTaskMetadata.setter();
  }
}

void *TaskService.__allocating_init(initialTask:taskIdGenerator:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  result[2] = a2;
  result[3] = a3;
  if (a1)
  {
    v7 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v8 = swift_allocObject();
    result = v7;
    *(v8 + 16) = xmmword_1DCA70640;
    *(v8 + 32) = a1;
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  result[4] = v8;
  return result;
}

uint64_t FlowTask.__allocating_init(id:state:isClientInitiated:creationTime:)(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;
  *(v10 + 33) = a4;
  v11 = OBJC_IVAR____TtC14SiriKitRuntime8FlowTask_creationTime;
  v12 = type metadata accessor for Date();
  (*(*(v12 - 8) + 32))(v10 + v11, a5, v12);
  return v10;
}

uint64_t FlowTaskProvider.init(_:)(uint64_t a1)
{
  v2 = type metadata accessor for Date();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1 + OBJC_IVAR____TtC14SiriKitRuntime8FlowTask_creationTime, v3);

  v6 = dispatch thunk of FlowTaskProvider.__allocating_init(id:isClientInitiated:creationTime:)();

  return v6;
}

uint64_t FlowTask.State.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x64657461657263;
  }

  if (a1 == 1)
  {
    return 0x676E696F676E6FLL;
  }

  return 0x6465646E65;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance FlowTask.State(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x676E696F676E6FLL;
  if (v2 != 1)
  {
    v5 = 0x6465646E65;
    v4 = 0xE500000000000000;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x64657461657263;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  v8 = 0x676E696F676E6FLL;
  if (*a2 != 1)
  {
    v8 = 0x6465646E65;
    v3 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x64657461657263;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE700000000000000;
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

Swift::Int protocol witness for Hashable.hashValue.getter in conformance FlowTask.State()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance FlowTask.State(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance FlowTask.State(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance FlowTask.State@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized FlowTask.State.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance FlowTask.State(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x676E696F676E6FLL;
  if (v2 != 1)
  {
    v5 = 0x6465646E65;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x64657461657263;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t FlowTask.id.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FlowTask.init(id:state:isClientInitiated:creationTime:)(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  *(v5 + 33) = a4;
  v7 = OBJC_IVAR____TtC14SiriKitRuntime8FlowTask_creationTime;
  v8 = type metadata accessor for Date();
  (*(*(v8 - 8) + 32))(v5 + v7, a5, v8);
  return v5;
}

uint64_t FlowTask.deinit()
{

  v1 = OBJC_IVAR____TtC14SiriKitRuntime8FlowTask_creationTime;
  v2 = type metadata accessor for Date();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t FlowTaskXPC.id.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime11FlowTaskXPC_id);

  return v1;
}

uint64_t FlowTask.creationTime.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = type metadata accessor for Date();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

id FlowTaskXPC.init(id:state:isClientInitiated:creationTime:)(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5)
{
  v7 = &v5[OBJC_IVAR____TtC14SiriKitRuntime11FlowTaskXPC_id];
  *v7 = a1;
  v7[1] = a2;
  v5[OBJC_IVAR____TtC14SiriKitRuntime11FlowTaskXPC_state] = a3;
  v5[OBJC_IVAR____TtC14SiriKitRuntime11FlowTaskXPC_isClientInitiated] = a4;
  v8 = OBJC_IVAR____TtC14SiriKitRuntime11FlowTaskXPC_creationTime;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  (*(v10 + 16))(&v5[v8], a5, v9);
  v13.receiver = v5;
  v13.super_class = type metadata accessor for FlowTaskXPC(0);
  v11 = objc_msgSendSuper2(&v13, sel_init);
  (*(v10 + 8))(a5, v9);
  return v11;
}

unint64_t FlowTaskXPC.CodingKeys.rawValue.getter(unsigned __int8 a1)
{
  v1 = 25705;
  v2 = 0xD000000000000011;
  if (a1 != 2)
  {
    v2 = 0x6E6F697461657263;
  }

  if (a1)
  {
    v1 = 0x6574617473;
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

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance FlowTaskXPC.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0xD000000000000011;
  v6 = 0x80000001DCA7B9D0;
  if (v2 == 2)
  {
    v7 = 0x80000001DCA7B9D0;
  }

  else
  {
    v5 = 0x6E6F697461657263;
    v7 = 0xEC000000656D6954;
  }

  if (*a1)
  {
    v4 = 0x6574617473;
    v3 = 0xE500000000000000;
  }

  if (*a1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v5;
  }

  if (v2 <= 1)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  v10 = 0xE200000000000000;
  v11 = 25705;
  v12 = 0xD000000000000011;
  if (*a2 != 2)
  {
    v12 = 0x6E6F697461657263;
    v6 = 0xEC000000656D6954;
  }

  if (*a2)
  {
    v11 = 0x6574617473;
    v10 = 0xE500000000000000;
  }

  if (*a2 <= 1u)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  if (*a2 <= 1u)
  {
    v14 = v10;
  }

  else
  {
    v14 = v6;
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

Swift::Int protocol witness for Hashable.hashValue.getter in conformance FlowTaskXPC.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance FlowTaskXPC.CodingKeys(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance FlowTaskXPC.CodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance FlowTaskXPC.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized FlowTaskXPC.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance FlowTaskXPC.CodingKeys(unint64_t *a1@<X8>)
{
  v2 = 0xE200000000000000;
  v3 = 25705;
  v4 = 0x80000001DCA7B9D0;
  v5 = 0xD000000000000011;
  if (*v1 != 2)
  {
    v5 = 0x6E6F697461657263;
    v4 = 0xEC000000656D6954;
  }

  if (*v1)
  {
    v3 = 0x6574617473;
    v2 = 0xE500000000000000;
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

id FlowTaskXPC.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FlowTaskXPC.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FlowTaskXPC(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t protocol witness for XPCRepresentation.swiftRepresentation() in conformance FlowTaskXPC@<X0>(uint64_t *a1@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x78))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t TaskService.tasksCount.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  if (v1 >> 62)
  {
    return __CocoaSet.count.getter();
  }

  else
  {
    return *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

double TaskService.taskQueue.getter()
{
  swift_beginAccess();

  return result;
}

void *TaskService.init(initialTask:taskIdGenerator:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1DCA70640;
    *(v5 + 32) = a1;
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  v3[4] = v5;
  return v3;
}

uint64_t TaskService.deinit()
{

  return v0;
}

uint64_t TaskService.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t specialized FlowTask.State.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of FlowTask.State.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t specialized FlowTaskXPC.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of FlowTaskXPC.CodingKeys.init(rawValue:), v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type FlowTask.State and conformance FlowTask.State()
{
  result = lazy protocol witness table cache variable for type FlowTask.State and conformance FlowTask.State;
  if (!lazy protocol witness table cache variable for type FlowTask.State and conformance FlowTask.State)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FlowTask.State and conformance FlowTask.State);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FlowTaskXPC.CodingKeys and conformance FlowTaskXPC.CodingKeys()
{
  result = lazy protocol witness table cache variable for type FlowTaskXPC.CodingKeys and conformance FlowTaskXPC.CodingKeys;
  if (!lazy protocol witness table cache variable for type FlowTaskXPC.CodingKeys and conformance FlowTaskXPC.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FlowTaskXPC.CodingKeys and conformance FlowTaskXPC.CodingKeys);
  }

  return result;
}

uint64_t type metadata completion function for FlowTask(uint64_t a1)
{
  result = type metadata accessor for Date();
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

SiriKitRuntime::TimerAffinityScorer __swiftcall TimerAffinityScorer.init()()
{
  v0 = 0x80000001DCA7CD70;
  v1 = 0xD000000000000026;
  result.bundleIdentifier._object = v0;
  result.bundleIdentifier._countAndFlagsBits = v1;
  return result;
}

uint64_t *TimerAffinityScorer.kAppBundleIdMatches.unsafeMutableAddressor()
{
  if (one-time initialization token for kAppBundleIdMatches != -1)
  {
    swift_once();
  }

  return &static TimerAffinityScorer.kAppBundleIdMatches;
}

double static TimerAffinityScorer.kAppBundleIdMatches.getter()
{
  if (one-time initialization token for kAppBundleIdMatches != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t specialized TimerAffinityScorer.supportedAppIsOnScreen(with:)(uint64_t a1)
{
  v2 = type metadata accessor for RRDataSourceMetadataValue();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v121 = &v95[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v120 = &v95[-v6];
  MEMORY[0x1EEE9AC00](v7);
  v137 = &v95[-v8];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v95[-v10];
  v12 = type metadata accessor for RRMetadata();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v95[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16);
  v136 = &v95[-v17];
  v141 = type metadata accessor for UsoIdentifier();
  v18 = *(v141 - 8);
  MEMORY[0x1EEE9AC00](v141);
  v123 = &v95[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v20);
  v140 = &v95[-v21];
  v114 = type metadata accessor for RREntity();
  v22 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v106 = &v95[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v24);
  v108 = &v95[-v25];
  v111 = type metadata accessor for RRCandidate();
  MEMORY[0x1EEE9AC00](v111);
  v115 = &v95[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v105 = *(a1 + 16);
  if (!v105)
  {
    return 0;
  }

  v28 = v26;
  v104 = type metadata accessor for UsoEntity_common_App();
  v29 = 0;
  v103 = *(v28 + 16);
  v102 = a1 + ((*(v28 + 80) + 32) & ~*(v28 + 80));
  v101 = *(v28 + 72);
  v113 = (v22 + 8);
  v124 = v18 + 16;
  v122 = (v18 + 32);
  v127 = v18;
  v116 = (v18 + 8);
  v134 = (v13 + 32);
  v135 = v13 + 16;
  v133 = (v13 + 88);
  v132 = *MEMORY[0x1E69D27E8];
  v118 = (v13 + 8);
  v117 = (v13 + 96);
  v131 = (v3 + 32);
  v99 = *MEMORY[0x1E69D2918];
  v30 = (v3 + 104);
  v119 = v3;
  v98 = (v3 + 8);
  v100 = (v28 + 8);
  v96 = *MEMORY[0x1E69D28F8];
  v109 = v11;
  v139 = v12;
  v129 = v13;
  v138 = v15;
  v130 = (v3 + 104);
  v125 = v2;
  v97 = v28 + 16;
  while (1)
  {
    v110 = v29;
    v103(v115, v102 + v101 * v29, v111);
    v31 = v108;
    RRCandidate.entity.getter();
    RREntity.usoEntity.getter();
    v112 = *v113;
    v112(v31, v114);
    static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();

    v32 = v142;
    if (!v142)
    {
      goto LABEL_39;
    }

    v33 = dispatch thunk of CodeGenBase.usoIdentifiers.getter();
    v107 = v32;

    result = v33;
    v128 = *(v33 + 16);
    if (v128)
    {
      break;
    }

    v36 = MEMORY[0x1E69E7CC0];
LABEL_38:

    v66 = *(v36 + 16);

    v11 = v109;
    if (v66)
    {
      (*v100)(v115, v111);
      return 1;
    }

LABEL_39:
    v67 = v106;
    RRCandidate.entity.getter();
    v68 = RREntity.metadata.getter();
    v112(v67, v114);
    v69 = *(v68 + 16);
    if (v69)
    {
      v70 = (*(v13 + 80) + 32) & ~*(v13 + 80);
      v128 = v68;
      v71 = v68 + v70;
      v72 = *(v13 + 72);
      v73 = *(v13 + 16);
      v74 = MEMORY[0x1E69E7CC0];
      do
      {
        v75 = v136;
        v73(v136, v71, v12);
        (*v134)(v15, v75, v12);
        v76 = (*v133)(v15, v12);
        if (v76 == v132)
        {
          (*v117)(v15, v12);
          v77 = v15;
          v78 = *v131;
          v79 = v121;
          (*v131)(v121, v77, v2);
          v80 = v120;
          v78(v120, v79, v2);
          v78(v137, v80, v2);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v74 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v74[2] + 1, 1, v74);
          }

          v82 = v74[2];
          v81 = v74[3];
          v83 = v119;
          if (v82 >= v81 >> 1)
          {
            v84 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v81 > 1), v82 + 1, 1, v74);
            v83 = v119;
            v74 = v84;
          }

          v74[2] = v82 + 1;
          v78(v74 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v82, v137, v2);
          v15 = v138;
          v12 = v139;
        }

        else
        {
          (*v118)(v15, v12);
        }

        v71 += v72;
        --v69;
      }

      while (v69);

      v11 = v109;
      v13 = v129;
      v30 = v130;
    }

    else
    {

      v74 = MEMORY[0x1E69E7CC0];
    }

    v85 = *v30;
    (*v30)(v11, v99, v2);
    v86 = specialized Sequence<>.contains(_:)(v11, v74);
    v87 = *v98;
    (*v98)(v11, v2);
    if (v86)
    {
      v85(v11, v96, v2);
      v88 = specialized Sequence<>.contains(_:)(v11, v74);

      v87(v11, v2);
      if (v88)
      {
        (*v100)(v115, v111);
        v11 = v109;
      }

      else
      {
        if (one-time initialization token for kAppBundleIdMatches != -1)
        {
          swift_once();
        }

        v89 = static TimerAffinityScorer.kAppBundleIdMatches;
        v90 = v108;
        v91 = v115;
        RRCandidate.entity.getter();
        v92 = RREntity.appBundleId.getter();
        v94 = v93;
        v112(v90, v114);
        LOBYTE(v92) = specialized Set.contains(_:)(v92, v94, v89);

        (*v100)(v91, v111);
        v11 = v109;
        if (v92)
        {
          return 1;
        }
      }
    }

    else
    {
      (*v100)(v115, v111);
    }

    v29 = v110 + 1;
    v30 = v130;
    if (v110 + 1 == v105)
    {
      return 0;
    }
  }

  v35 = 0;
  v36 = MEMORY[0x1E69E7CC0];
  v37 = v127;
  v38 = v140;
  v126 = result;
  while (v35 < *(result + 16))
  {
    v39 = (*(v37 + 80) + 32) & ~*(v37 + 80);
    v40 = *(v37 + 72);
    (*(v37 + 16))(v38, result + v39 + v40 * v35, v141);
    if (one-time initialization token for kAppBundleIdMatches != -1)
    {
      swift_once();
    }

    v41 = static TimerAffinityScorer.kAppBundleIdMatches;
    v42 = UsoIdentifier.appBundleId.getter();
    v44 = v43;
    if (*(v41 + 16))
    {
      v45 = v42;
      Hasher.init(_seed:)();
      String.hash(into:)();
      v46 = Hasher._finalize()();
      v47 = -1 << *(v41 + 32);
      v48 = v46 & ~v47;
      if ((*(v41 + 56 + ((v48 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v48))
      {
        v49 = ~v47;
        do
        {
          v50 = (*(v41 + 48) + 16 * v48);
          v51 = *v50 == v45 && v50[1] == v44;
          if (v51 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            goto LABEL_32;
          }

          v48 = (v48 + 1) & v49;
        }

        while (((*(v41 + 56 + ((v48 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v48) & 1) != 0);
      }
    }

    v52 = UsoIdentifier.value.getter();
    v54 = v53;
    if (*(v41 + 16))
    {
      v55 = v52;
      Hasher.init(_seed:)();
      String.hash(into:)();
      v56 = Hasher._finalize()();
      v57 = -1 << *(v41 + 32);
      v58 = v56 & ~v57;
      if ((*(v41 + 56 + ((v58 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v58))
      {
        v59 = ~v57;
        while (1)
        {
          v60 = (*(v41 + 48) + 16 * v58);
          v61 = *v60 == v55 && v60[1] == v54;
          if (v61 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          v58 = (v58 + 1) & v59;
          if (((*(v41 + 56 + ((v58 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v58) & 1) == 0)
          {
            goto LABEL_8;
          }
        }

LABEL_32:

        v62 = *v122;
        v38 = v140;
        (*v122)(v123, v140, v141);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v143 = v36;
        v2 = v125;
        v12 = v139;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v36 + 16) + 1, 1);
          v38 = v140;
          v36 = v143;
        }

        v65 = *(v36 + 16);
        v64 = *(v36 + 24);
        if (v65 >= v64 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v64 > 1), v65 + 1, 1);
          v38 = v140;
          v36 = v143;
        }

        *(v36 + 16) = v65 + 1;
        v62(v36 + v39 + v65 * v40, v123, v141);
        goto LABEL_9;
      }
    }

LABEL_8:

    v38 = v140;
    (*v116)(v140, v141);
    v2 = v125;
    v12 = v139;
LABEL_9:
    ++v35;
    v13 = v129;
    v15 = v138;
    v37 = v127;
    v30 = v130;
    result = v126;
    if (v35 == v128)
    {
      goto LABEL_38;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized TimerAffinityScorer.priorityForSharedTask(_:environment:)(uint64_t a1)
{
  v54 = type metadata accessor for RREntity();
  v1 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v53 = &v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for RRCandidate();
  v55 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v52 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v45 = &v44 - v5;
  static UsoTask_CodegenConverter.convert(task:)();
  outlined init with copy of Any?(v62, v60);
  if (v61)
  {
    outlined init with copy of Any?(v60, &v56);
    type metadata accessor for UsoTask_noVerb_uso_NoEntity();
    if (swift_dynamicCast())
    {
      outlined destroy of Any?(v62);

      __swift_destroy_boxed_opaque_existential_1Tm(&v56);
LABEL_45:
      v6 = 2;
      goto LABEL_46;
    }

    type metadata accessor for UsoTask_stop_common_MediaItem();
    if (swift_dynamicCast())
    {

      v6 = dispatch thunk of Uso_VerbTemplate_ReferenceControl.trigger.getter();

      outlined destroy of Any?(v62);
      if (!v6)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(&v56);
        goto LABEL_46;
      }

LABEL_14:

      __swift_destroy_boxed_opaque_existential_1Tm(&v56);
      v6 = 3;
      goto LABEL_46;
    }

    type metadata accessor for UsoTask_stop_uso_NoEntity();
    if (swift_dynamicCast())
    {

      v7 = dispatch thunk of Uso_VerbTemplate_ReferenceControl.trigger.getter();

      outlined destroy of Any?(v62);
      if (!v7)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(&v56);
        v6 = 1;
        goto LABEL_46;
      }

      goto LABEL_14;
    }

    type metadata accessor for UsoTask_enable_common_Setting();
    if (swift_dynamicCast() || (type metadata accessor for UsoTask_disable_common_Setting(), swift_dynamicCast()))
    {
      if (MSVDeviceIsAppleTV())
      {

        v8 = dispatch thunk of Uso_VerbTemplate_ReferenceTrigger.trigger.getter();

        outlined destroy of Any?(v62);
        if (v8)
        {
          goto LABEL_14;
        }
      }

      else
      {
        outlined destroy of Any?(v62);
      }

      __swift_destroy_boxed_opaque_existential_1Tm(&v56);
      v6 = 0;
      goto LABEL_46;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(&v56);
  }

  v56 = UsoTask.baseEntityAsString.getter();
  v57 = v9;
  strcpy(v59, "uso_NoEntity");
  HIBYTE(v59[6]) = 0;
  v59[7] = -5120;
  v51 = lazy protocol witness table accessor for type String and conformance String();
  v10 = StringProtocol.contains<A>(_:)();

  if ((v10 & 1) == 0)
  {
LABEL_44:
    outlined destroy of Any?(v62);
    goto LABEL_45;
  }

  SiriEnvironment.salientEntitiesProvider.getter();
  v11 = dispatch thunk of SalientEntitiesDataProvider.salientEntities.getter();

  v50 = *(v11 + 16);
  if (v50)
  {
    v12 = 0;
    v49 = v55 + 16;
    v48 = (v1 + 8);
    v44 = (v55 + 8);
    v47 = (v55 + 32);
    v13 = MEMORY[0x1E69E7CC0];
    v14 = v46;
    v15 = v45;
    while (v12 < *(v11 + 16))
    {
      v16 = (*(v55 + 80) + 32) & ~*(v55 + 80);
      v17 = v11;
      v18 = *(v55 + 72);
      (*(v55 + 16))(v15, v11 + v16 + v18 * v12, v14);
      v19 = v53;
      RRCandidate.entity.getter();
      RREntity.usoEntity.getter();
      (*v48)(v19, v54);
      v20 = UsoTask.verbString.getter();
      v22 = v21;

      v56 = v20;
      v57 = v22;
      strcpy(v59, "common_Timer");
      HIBYTE(v59[6]) = 0;
      v59[7] = -5120;
      v23 = StringProtocol.contains<A>(_:)();

      if (v23)
      {
        v24 = *v47;
        (*v47)(v52, v15, v14);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v58 = v13;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 16) + 1, 1);
          v15 = v45;
          v13 = v58;
        }

        v27 = *(v13 + 16);
        v26 = *(v13 + 24);
        if (v27 >= v26 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1);
          v15 = v45;
          v13 = v58;
        }

        *(v13 + 16) = v27 + 1;
        v28 = v13 + v16 + v27 * v18;
        v14 = v46;
        v24(v28, v52, v46);
      }

      else
      {
        (*v44)(v15, v14);
      }

      ++v12;
      v11 = v17;
      if (v50 == v12)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
    goto LABEL_48;
  }

  v13 = MEMORY[0x1E69E7CC0];
  v14 = v46;
LABEL_31:
  if (!*(v13 + 16))
  {

    v38 = specialized TimerAffinityScorer.supportedAppIsOnScreen(with:)(v11);

    if ((v38 & 1) == 0)
    {
      outlined destroy of Any?(v62);
      v6 = 0;
      goto LABEL_46;
    }

    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    __swift_project_value_buffer(v39, static Logger.executor);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v6 = 2;
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_1DC659000, v40, v41, "TimerAffinityScorer found commonApp entity with Clock/NanoTimer bundle ID", v42, 2u);
      MEMORY[0x1E12A2F50](v42, -1, -1);

      outlined destroy of Any?(v62);
      goto LABEL_46;
    }

    goto LABEL_44;
  }

  if (one-time initialization token for executor != -1)
  {
LABEL_48:
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  __swift_project_value_buffer(v29, static Logger.executor);

  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v56 = v33;
    *v32 = 136315138;
    v34 = MEMORY[0x1E12A16D0](v13, v14);
    v36 = v35;

    v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v36, &v56);

    *(v32 + 4) = v37;
    _os_log_impl(&dword_1DC659000, v30, v31, "TimerAffinityScorer found salient timer entity %s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v33);
    MEMORY[0x1E12A2F50](v33, -1, -1);
    MEMORY[0x1E12A2F50](v32, -1, -1);
  }

  else
  {
  }

  outlined destroy of Any?(v62);
  v6 = 3;
LABEL_46:
  outlined destroy of Any?(v60);
  return v6;
}

uint64_t specialized TimerAffinityScorer.score(input:environment:)()
{
  v0 = type metadata accessor for Parse();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for USOParse();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Input.parse.getter();
  if ((*(v1 + 88))(v3, v0) == *MEMORY[0x1E69D0168])
  {
    (*(v1 + 96))(v3, v0);
    (*(v5 + 32))(v7, v3, v4);
    v8 = specialized static AffinityScorerUtils.getTask(_:)();
    if (v8)
    {
      v9 = v8;
      v34 = UsoTask.baseEntityAsString.getter();
      v35 = v10;
      v32 = 0x72656D6954;
      v33 = 0xE500000000000000;
      lazy protocol witness table accessor for type String and conformance String();
      v11 = StringProtocol.contains<A>(_:)();

      if (v11)
      {
        if (one-time initialization token for executor != -1)
        {
          swift_once();
        }

        v12 = type metadata accessor for Logger();
        __swift_project_value_buffer(v12, static Logger.executor);
        v13 = Logger.logObject.getter();
        v14 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v13, v14))
        {
          v15 = 2;
          v16 = swift_slowAlloc();
          *v16 = 0;
          _os_log_impl(&dword_1DC659000, v13, v14, "TimerAffinityScorer Task contains Timer – using .default affinity", v16, 2u);
          MEMORY[0x1E12A2F50](v16, -1, -1);

LABEL_28:

          (*(v5 + 8))(v7, v4);
          return v15;
        }

        (*(v5 + 8))(v7, v4);
        return 2;
      }

      v34 = UsoTask.baseEntityAsString.getter();
      v35 = v25;
      v32 = 0x6D72616C41;
      v33 = 0xE500000000000000;
      v26 = StringProtocol.contains<A>(_:)();

      if ((v26 & 1) == 0)
      {
        v15 = specialized TimerAffinityScorer.priorityForSharedTask(_:environment:)(v9);
        goto LABEL_28;
      }

      if (specialized static AlarmAffinityScorer.isCreateAlarmTaskWithRelativeOffset(task:)(v9))
      {
        if (one-time initialization token for executor != -1)
        {
          swift_once();
        }

        v27 = type metadata accessor for Logger();
        __swift_project_value_buffer(v27, static Logger.executor);
        v28 = Logger.logObject.getter();
        v29 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          *v30 = 0;
          _os_log_impl(&dword_1DC659000, v28, v29, "TimerAffinityScorer Task is Create Alarm with relative offset duration – timer should take a first pass", v30, 2u);
          MEMORY[0x1E12A2F50](v30, -1, -1);
        }

        (*(v5 + 8))(v7, v4);
        return 3;
      }

      else
      {
        (*(v5 + 8))(v7, v4);

        return 0;
      }
    }

    else
    {
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      __swift_project_value_buffer(v21, static Logger.executor);
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_1DC659000, v22, v23, "TimerAffinityScorer Could not extract usoTask from parse", v24, 2u);
        MEMORY[0x1E12A2F50](v24, -1, -1);
      }

      (*(v5 + 8))(v7, v4);
      return 0;
    }
  }

  else
  {
    (*(v1 + 8))(v3, v0);
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Logger.executor);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v18, v19))
    {

      return 2;
    }

    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_1DC659000, v18, v19, "TimerAffinityScorer Not a USO parse – .default", v20, 2u);
    MEMORY[0x1E12A2F50](v20, -1, -1);

    return 2;
  }
}

SiriKitRuntime::TranslationAffinityScorer __swiftcall TranslationAffinityScorer.init()()
{
  v0 = 0x80000001DCA7CDA0;
  v1 = 0xD00000000000002CLL;
  result.bundleIdentifier._object = v0;
  result.bundleIdentifier._countAndFlagsBits = v1;
  return result;
}

uint64_t specialized TranslationAffinityScorer.scoreRepeat(environment:)()
{
  v57 = type metadata accessor for RREntity();
  v0 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v2 = &v50 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for RRCandidate();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v51 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v54 = &v50 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v50 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel11RRCandidateVSgMd, &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v52 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v53 = &v50 - v14;
  SiriEnvironment.salientEntitiesProvider.getter();
  v15 = dispatch thunk of SalientEntitiesDataProvider.salientEntities.getter();

  v55 = *(v15 + 16);
  if (v55)
  {
    v16 = 0;
    v56 = v4 + 16;
    v17 = (v0 + 8);
    v58 = 0x80000001DCA8BB90;
    v18 = (v4 + 8);
    while (v16 < *(v15 + 16))
    {
      v19 = v15 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v16;
      v20 = v4;
      v21 = *(v4 + 16);
      v22 = v3;
      v21(v10, v19, v3);
      RRCandidate.entity.getter();
      v23 = RREntity.appBundleId.getter();
      v25 = v24;
      (*v17)(v2, v57);
      if (v23 == 0xD000000000000025 && v58 == v25)
      {

LABEL_10:

        v15 = v53;
        v3 = v22;
        v4 = v20;
        (*(v20 + 32))(v53, v10, v3);
        v27 = 0;
        goto LABEL_11;
      }

      v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v26)
      {
        goto LABEL_10;
      }

      ++v16;
      v3 = v22;
      (*v18)(v10, v22);
      v4 = v20;
      if (v55 == v16)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_23;
  }

LABEL_8:

  v27 = 1;
  v15 = v53;
LABEL_11:
  v28 = v54;
  v29 = v52;
  (*(v4 + 56))(v15, v27, 1, v3);
  outlined init with copy of RRCandidate?(v15, v29);
  if ((*(v4 + 48))(v29, 1, v3) == 1)
  {
    outlined destroy of RRCandidate?(v29);
    if (one-time initialization token for executor == -1)
    {
LABEL_13:
      v30 = type metadata accessor for Logger();
      __swift_project_value_buffer(v30, static Logger.executor);
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_1DC659000, v31, v32, "TranslationAffinityScorer Found no salient entity", v33, 2u);
        MEMORY[0x1E12A2F50](v33, -1, -1);
      }

      outlined destroy of RRCandidate?(v15);
      return 0;
    }

LABEL_23:
    swift_once();
    goto LABEL_13;
  }

  (*(v4 + 32))(v28, v29, v3);
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  __swift_project_value_buffer(v35, static Logger.executor);
  v36 = v51;
  (*(v4 + 16))(v51, v28, v3);
  v37 = Logger.logObject.getter();
  v38 = v4;
  v39 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v37, v39))
  {
    v40 = v36;
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v59 = v42;
    *v41 = 136315138;
    lazy protocol witness table accessor for type RRCandidate and conformance RRCandidate(COERCE_DOUBLE(136315138));
    v43 = dispatch thunk of CustomStringConvertible.description.getter();
    v44 = v3;
    v50 = v3;
    v46 = v45;
    v47 = *(v38 + 8);
    v47(v40, v44);
    v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v46, &v59);

    *(v41 + 4) = v48;
    _os_log_impl(&dword_1DC659000, v37, v39, "TranslationAffinityScorer Found salient entity %s", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v42);
    MEMORY[0x1E12A2F50](v42, -1, -1);
    MEMORY[0x1E12A2F50](v41, -1, -1);

    v47(v54, v50);
  }

  else
  {

    v49 = *(v38 + 8);
    v49(v36, v3);
    v49(v28, v3);
  }

  outlined destroy of RRCandidate?(v15);
  return 3;
}

uint64_t specialized TranslationAffinityScorer.score(input:environment:)()
{
  v0 = type metadata accessor for Parse();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for USOParse();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Input.parse.getter();
  if ((*(v1 + 88))(v3, v0) == *MEMORY[0x1E69D0168])
  {
    (*(v1 + 96))(v3, v0);
    (*(v5 + 32))(v7, v3, v4);
    if (specialized static AffinityScorerUtils.getTask(_:)())
    {
      if (UsoTask.verbString.getter() == 0x746165706572 && v8 == 0xE600000000000000)
      {
      }

      else
      {
        v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v10 & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      if (UsoTask.baseEntityAsString.getter() == 0x6E456F4E5F6F7375 && v16 == 0xEC00000079746974)
      {
      }

      else
      {
        v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v18 & 1) == 0)
        {
LABEL_22:
          (*(v5 + 8))(v7, v4);

          return 2;
        }
      }

      v14 = specialized TranslationAffinityScorer.scoreRepeat(environment:)();

      (*(v5 + 8))(v7, v4);
      return v14;
    }

    (*(v5 + 8))(v7, v4);
  }

  else
  {
    (*(v1 + 8))(v3, v0);
  }

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.executor);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (!os_log_type_enabled(v12, v13))
  {

    return 2;
  }

  v14 = 2;
  v15 = swift_slowAlloc();
  *v15 = 0;
  _os_log_impl(&dword_1DC659000, v12, v13, "TranslationAffinityScorer Not a USO parse – .default", v15, 2u);
  MEMORY[0x1E12A2F50](v15, -1, -1);

  return v14;
}

uint64_t outlined init with copy of RRCandidate?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel11RRCandidateVSgMd, &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of RRCandidate?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel11RRCandidateVSgMd, &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t TrialExperimentationAssetManager.__allocating_init(trialClient:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = [objc_allocWithZone(type metadata accessor for ExperimentationAnalyticsManager()) init];
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return v2;
}

Swift::Void __swiftcall TrialExperimentationAssetManaging.emitTriggerLogging(codepathId:requestId:)(Swift::String codepathId, Swift::String_optional requestId)
{
  v33[0] = v2;
  object = requestId.value._object;
  countAndFlagsBits = requestId.value._countAndFlagsBits;
  v4 = codepathId._object;
  v5 = codepathId._countAndFlagsBits;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v33 - v10;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v33 - v17;
  v35 = v5;
  v36 = v4;
  UUID.init(uuidString:)();
  v19 = v13[6];
  if (v19(v11, 1, v12) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v11, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v20 = object;
  }

  else
  {
    v34 = countAndFlagsBits;
    v21 = v13[4];
    v21(v18, v11, v12);
    v20 = object;
    if (object)
    {
      UUID.init(uuidString:)();
      if (v19(v8, 1, v12) != 1)
      {
        v21(v15, v8, v12);
        (*(v33[2] + 40))(v18, v15, v33[0]);
        v32 = v13[1];
        v32(v15, v12);
        v32(v18, v12);
        return;
      }

      (v13[1])(v18, v12);
      outlined destroy of ReferenceResolutionClientProtocol?(v8, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    }

    else
    {
      (v13[1])(v18, v12);
    }

    countAndFlagsBits = v34;
  }

  v22 = v36;
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  __swift_project_value_buffer(v23, static Logger.conversationBridge);

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = v20;
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v38 = v28;
    *v27 = 136315650;
    *(v27 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000029, 0x80000001DCA8BC40, &v38);
    *(v27 + 12) = 2080;
    *(v27 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v22, &v38);
    *(v27 + 22) = 2080;
    if (v26)
    {
      v29 = countAndFlagsBits;
    }

    else
    {
      v29 = 7104878;
    }

    if (v26)
    {
      v30 = v26;
    }

    else
    {
      v30 = 0xE300000000000000;
    }

    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v38);

    *(v27 + 24) = v31;
    _os_log_impl(&dword_1DC659000, v24, v25, "TrialExperimentationAssetManager.%s Unable to emit trigger logging due to invalid IDs. codepathId: %s requestId: %s", v27, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v28, -1, -1);
    MEMORY[0x1E12A2F50](v27, -1, -1);
  }
}

SiriKitRuntime::TrialExperimentationNamespace_optional __swiftcall TrialExperimentationNamespace.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of TrialExperimentationNamespace.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = SiriKitRuntime_TrialExperimentationNamespace_siriSelfReflectionTapToEdit;
  }

  else
  {
    v4.value = SiriKitRuntime_TrialExperimentationNamespace_unknownDefault;
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

unint64_t TrialExperimentationNamespace.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0xD000000000000020;
  }

  else
  {
    return 0xD00000000000001FLL;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance TrialExperimentationNamespace(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000020;
  }

  else
  {
    v3 = 0xD00000000000001FLL;
  }

  if (v2)
  {
    v4 = "isClientInitiated";
  }

  else
  {
    v4 = "SIRI_SELF_REFLECTION_ASK_REPEAT";
  }

  if (*a2)
  {
    v5 = 0xD000000000000020;
  }

  else
  {
    v5 = 0xD00000000000001FLL;
  }

  if (*a2)
  {
    v6 = "SIRI_SELF_REFLECTION_ASK_REPEAT";
  }

  else
  {
    v6 = "isClientInitiated";
  }

  if (v3 == v5 && (v4 | 0x8000000000000000) == (v6 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TrialExperimentationNamespace()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance TrialExperimentationNamespace(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TrialExperimentationNamespace(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance TrialExperimentationNamespace@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of TrialExperimentationNamespace.init(rawValue:), *a1);

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

void protocol witness for RawRepresentable.rawValue.getter in conformance TrialExperimentationNamespace(unint64_t *a1@<X8>)
{
  v2 = "SIRI_SELF_REFLECTION_ASK_REPEAT";
  v3 = 0xD00000000000001FLL;
  if (*v1)
  {
    v3 = 0xD000000000000020;
  }

  else
  {
    v2 = "isClientInitiated";
  }

  *a1 = v3;
  a1[1] = v2 | 0x8000000000000000;
}

Swift::Int CAMAskRepeatTreatment.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1E12A23F0](a1 & 1);
  return Hasher._finalize()();
}

uint64_t TrialExperimentationAssetManager.init(trialClient:)(uint64_t a1)
{
  v3 = [objc_allocWithZone(type metadata accessor for ExperimentationAnalyticsManager()) init];
  *(v1 + 16) = a1;
  *(v1 + 24) = v3;
  return v1;
}

SiriKitRuntime::CAMAskRepeatTreatment __swiftcall TrialExperimentationAssetManager.activeCAMAskRepeatTreatment()()
{
  v1 = *(v0 + 16);
  v2 = MEMORY[0x1E12A1410](0xD00000000000001BLL, 0x80000001DCA8BBC0);
  v3 = MEMORY[0x1E12A1410](0xD00000000000001FLL, 0x80000001DCA7B9F0);
  v4 = [v1 levelForFactor:v2 withNamespaceName:v3];

  if (v4)
  {
    v5 = [v4 BOOLeanValue];

    return v5 ^ 1;
  }

  else
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.conversationBridge);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v12 = v11;
      *v10 = 136315138;
      *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001BLL, 0x80000001DCA8BBC0, &v12);
      _os_log_impl(&dword_1DC659000, v8, v9, "Trial: Failed to get the level value for %s, default to disabled", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      MEMORY[0x1E12A2F50](v11, -1, -1);
      MEMORY[0x1E12A2F50](v10, -1, -1);
    }

    return 1;
  }
}

SiriKitRuntime::AskToRepeatTreatment __swiftcall TrialExperimentationAssetManager.askToRepeatTreatment()()
{
  v1 = *(v0 + 16);
  v2 = MEMORY[0x1E12A1410](0xD000000000000011, 0x80000001DCA8BBE0);
  v3 = MEMORY[0x1E12A1410](0xD00000000000001FLL, 0x80000001DCA7B9F0);
  v4 = [v1 levelForFactor:v2 withNamespaceName:v3];

  if (v4)
  {
    v5 = [v4 BOOLeanValue];

    return v5 ^ 1;
  }

  else
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.conversationBridge);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v12 = v11;
      *v10 = 136315138;
      *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x80000001DCA8BBE0, &v12);
      _os_log_impl(&dword_1DC659000, v8, v9, "Trial: Failed to get the level value for %s, default to disabled", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      MEMORY[0x1E12A2F50](v11, -1, -1);
      MEMORY[0x1E12A2F50](v10, -1, -1);
    }

    return 1;
  }
}

SiriKitRuntime::Tap2EditTreatment __swiftcall TrialExperimentationAssetManager.tap2EditTreatment()()
{
  v1 = *(v0 + 16);
  v2 = MEMORY[0x1E12A1410](0xD000000000000010, 0x80000001DCA8BC00);
  v3 = MEMORY[0x1E12A1410](0xD00000000000001FLL, 0x80000001DCA7B9F0);
  v4 = [v1 levelForFactor:v2 withNamespaceName:v3];

  if (v4)
  {
    v5 = [v4 BOOLeanValue];

    return v5 ^ 1;
  }

  else
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.conversationBridge);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v12 = v11;
      *v10 = 136315138;
      *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x80000001DCA8BC00, &v12);
      _os_log_impl(&dword_1DC659000, v8, v9, "Trial: Failed to get the level value for %s, default to disabled", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      MEMORY[0x1E12A2F50](v11, -1, -1);
      MEMORY[0x1E12A2F50](v10, -1, -1);
    }

    return 1;
  }
}

SiriKitRuntime::AlternativeSuggestionTreatment __swiftcall TrialExperimentationAssetManager.alternativeSuggestionTreatment()()
{
  v1 = *(v0 + 16);
  v2 = MEMORY[0x1E12A1410](0xD00000000000001FLL, 0x80000001DCA8BC20);
  v3 = MEMORY[0x1E12A1410](0xD000000000000020, 0x80000001DCA7BA10);
  v4 = [v1 levelForFactor:v2 withNamespaceName:v3];

  if (v4)
  {
    v5 = [v4 BOOLeanValue];

    return v5 ^ 1;
  }

  else
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.conversationBridge);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v12 = v11;
      *v10 = 136315138;
      *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, 0x80000001DCA8BC20, &v12);
      _os_log_impl(&dword_1DC659000, v8, v9, "Trial: Failed to get the level value for %s, default to disabled", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      MEMORY[0x1E12A2F50](v11, -1, -1);
      MEMORY[0x1E12A2F50](v10, -1, -1);
    }

    return 1;
  }
}

uint64_t TrialExperimentationAssetManager.emitTriggerLogging(codepathId:requestId:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v60 = &v49 - v5;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v59 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v58 = &v49 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v49 - v12;
  v57 = v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v49 - v16;
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static Logger.conversationBridge);
  v19 = *(v7 + 16);
  v19(v17, a1, v6);
  v56 = v19;
  v19(v13, a2, v6);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v55 = a2;
    v23 = v22;
    v52 = swift_slowAlloc();
    v61 = v52;
    *v23 = 136315650;
    *(v23 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000029, 0x80000001DCA8BC40, &v61);
    *(v23 + 12) = 2080;
    lazy protocol witness table accessor for type UUID and conformance UUID();
    v53 = a1;
    v51 = v21;
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v25;
    v50 = v20;
    v54 = v7;
    v27 = *(v7 + 8);
    v27(v17, v6);
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, &v61);

    *(v23 + 14) = v28;
    *(v23 + 22) = 2080;
    a1 = v53;
    v29 = dispatch thunk of CustomStringConvertible.description.getter();
    v31 = v30;
    v27(v13, v6);
    v7 = v54;
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v31, &v61);

    *(v23 + 24) = v32;
    v33 = v50;
    _os_log_impl(&dword_1DC659000, v50, v51, "TrialExperimentationAssetManager.%s codepathId: %s requestId: %s", v23, 0x20u);
    v34 = v52;
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v34, -1, -1);
    v35 = v23;
    a2 = v55;
    MEMORY[0x1E12A2F50](v35, -1, -1);
  }

  else
  {

    v36 = *(v7 + 8);
    v36(v13, v6);
    v36(v17, v6);
  }

  v37 = type metadata accessor for TaskPriority();
  v38 = v60;
  (*(*(v37 - 8) + 56))(v60, 1, 1, v37);
  v39 = swift_allocObject();
  swift_weakInit();
  v40 = v58;
  v41 = v56;
  v56(v58, a1, v6);
  v42 = v59;
  v41(v59, a2, v6);
  v43 = *(v7 + 80);
  v44 = (v43 + 40) & ~v43;
  v45 = (v57 + v43 + v44) & ~v43;
  v46 = swift_allocObject();
  *(v46 + 2) = 0;
  *(v46 + 3) = 0;
  *(v46 + 4) = v39;
  v47 = *(v7 + 32);
  v47(&v46[v44], v40, v6);
  v47(&v46[v45], v42, v6);
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v38, &async function pointer to partial apply for closure #1 in TrialExperimentationAssetManager.emitTriggerLogging(codepathId:requestId:), v46);
}

uint64_t closure #1 in TrialExperimentationAssetManager.emitTriggerLogging(codepathId:requestId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v7 = type metadata accessor for UUID();
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();
  v6[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in TrialExperimentationAssetManager.emitTriggerLogging(codepathId:requestId:), 0, 0);
}

uint64_t closure #1 in TrialExperimentationAssetManager.emitTriggerLogging(codepathId:requestId:)()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + 24);
    v0[12].super.isa = v2;
    v2;

    v3.super.isa = UUID._bridgeToObjectiveC()().super.isa;
    v0[13].super.isa = v3.super.isa;
    v4.super.isa = UUID._bridgeToObjectiveC()().super.isa;
    v0[14].super.isa = v4.super.isa;
    v8 = (*MEMORY[0x1E6985F80] + MEMORY[0x1E6985F80]);
    v5 = swift_task_alloc();
    v0[15].super.isa = v5;
    *v5 = v0;
    *(v5 + 1) = closure #1 in TrialExperimentationAssetManager.emitTriggerLogging(codepathId:requestId:);

    return v8(v3.super.isa, 0xD00000000000001FLL, 0x80000001DCA7B9F0, v4.super.isa);
  }

  else
  {

    isa = v0[1].super.isa;

    return isa();
  }
}

{
  v2 = *v1;
  *(v2 + 128) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](closure #1 in TrialExperimentationAssetManager.emitTriggerLogging(codepathId:requestId:), 0, 0);
  }

  else
  {
    v3 = *(v2 + 104);
    v4 = *(v2 + 96);

    v5 = *(v2 + 8);

    return v5();
  }
}

{
  v41 = v0;
  v1 = *(v0 + 104);
  v2 = *(v0 + 96);

  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 128);
  v4 = *(v0 + 80);
  v5 = *(v0 + 88);
  v6 = *(v0 + 64);
  v7 = *(v0 + 72);
  v9 = *(v0 + 48);
  v8 = *(v0 + 56);
  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.conversationBridge);
  v11 = *(v7 + 16);
  v11(v5, v9, v6);
  v11(v4, v8, v6);
  v12 = v3;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();

  v15 = os_log_type_enabled(v13, v14);
  v16 = *(v0 + 128);
  v18 = *(v0 + 80);
  v17 = *(v0 + 88);
  v20 = *(v0 + 64);
  v19 = *(v0 + 72);
  if (v15)
  {
    v38 = v14;
    v21 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v40 = v39;
    *v21 = 136315906;
    *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000029, 0x80000001DCA8BC40, &v40);
    *(v21 + 12) = 2080;
    lazy protocol witness table accessor for type UUID and conformance UUID();
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v36 = v16;
    v24 = v23;
    v25 = *(v19 + 8);
    v25(v17, v20);
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, &v40);

    *(v21 + 14) = v26;
    *(v21 + 22) = 2080;
    v27 = dispatch thunk of CustomStringConvertible.description.getter();
    v29 = v28;
    v25(v18, v20);
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, &v40);

    *(v21 + 24) = v30;
    *(v21 + 32) = 2112;
    v31 = v36;
    v32 = _swift_stdlib_bridgeErrorToNSError();
    *(v21 + 34) = v32;
    *v37 = v32;
    _os_log_impl(&dword_1DC659000, v13, v38, "TrialExperimentationAssetManager.%s Unable to emit trigger logging for codePathID: %s, request: %s, error: %@", v21, 0x2Au);
    outlined destroy of ReferenceResolutionClientProtocol?(v37, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1E12A2F50](v37, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v39, -1, -1);
    MEMORY[0x1E12A2F50](v21, -1, -1);
  }

  else
  {

    v33 = *(v19 + 8);
    v33(v18, v20);
    v33(v17, v20);
  }

  v34 = *(v0 + 8);

  return v34();
}

uint64_t TrialExperimentationAssetManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t partial apply for closure #1 in TrialExperimentationAssetManager.emitTriggerLogging(codepathId:requestId:)(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 40) & ~v5;
  v7 = (*(v4 + 64) + v5 + v6) & ~v5;
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return closure #1 in TrialExperimentationAssetManager.emitTriggerLogging(codepathId:requestId:)(a1, v8, v9, v10, v1 + v6, v1 + v7);
}

unint64_t lazy protocol witness table accessor for type TrialExperimentationNamespace and conformance TrialExperimentationNamespace()
{
  result = lazy protocol witness table cache variable for type TrialExperimentationNamespace and conformance TrialExperimentationNamespace;
  if (!lazy protocol witness table cache variable for type TrialExperimentationNamespace and conformance TrialExperimentationNamespace)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TrialExperimentationNamespace and conformance TrialExperimentationNamespace);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [TrialExperimentationNamespace] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [TrialExperimentationNamespace] and conformance [A];
  if (!lazy protocol witness table cache variable for type [TrialExperimentationNamespace] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay14SiriKitRuntime29TrialExperimentationNamespaceOGMd, &_sSay14SiriKitRuntime29TrialExperimentationNamespaceOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [TrialExperimentationNamespace] and conformance [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CAMAskRepeatTreatment and conformance CAMAskRepeatTreatment()
{
  result = lazy protocol witness table cache variable for type CAMAskRepeatTreatment and conformance CAMAskRepeatTreatment;
  if (!lazy protocol witness table cache variable for type CAMAskRepeatTreatment and conformance CAMAskRepeatTreatment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CAMAskRepeatTreatment and conformance CAMAskRepeatTreatment);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AskToRepeatTreatment and conformance AskToRepeatTreatment()
{
  result = lazy protocol witness table cache variable for type AskToRepeatTreatment and conformance AskToRepeatTreatment;
  if (!lazy protocol witness table cache variable for type AskToRepeatTreatment and conformance AskToRepeatTreatment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AskToRepeatTreatment and conformance AskToRepeatTreatment);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Tap2EditTreatment and conformance Tap2EditTreatment()
{
  result = lazy protocol witness table cache variable for type Tap2EditTreatment and conformance Tap2EditTreatment;
  if (!lazy protocol witness table cache variable for type Tap2EditTreatment and conformance Tap2EditTreatment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Tap2EditTreatment and conformance Tap2EditTreatment);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AlternativeSuggestionTreatment and conformance AlternativeSuggestionTreatment()
{
  result = lazy protocol witness table cache variable for type AlternativeSuggestionTreatment and conformance AlternativeSuggestionTreatment;
  if (!lazy protocol witness table cache variable for type AlternativeSuggestionTreatment and conformance AlternativeSuggestionTreatment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AlternativeSuggestionTreatment and conformance AlternativeSuggestionTreatment);
  }

  return result;
}

BOOL UserInputResult.isSupported.getter()
{
  v1 = type metadata accessor for UserInputResult(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of UserInputResult(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 2)
  {
    outlined destroy of UserInputResult(v3);
  }

  return EnumCaseMultiPayload == 2;
}

id static FlowExtensionUserInputResultXPC.unsupportedInput(exclude:)(char a1)
{
  v2 = type metadata accessor for FlowExtensionUserInputResultXPC();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR___SKRFlowExtensionUserInputResultXPC_type] = 1;
  *&v3[OBJC_IVAR___SKRFlowExtensionUserInputResultXPC_error] = 0;
  *&v3[OBJC_IVAR___SKRFlowExtensionUserInputResultXPC_reformedInputData] = xmmword_1DCA69F00;
  v3[OBJC_IVAR___SKRFlowExtensionUserInputResultXPC_exclude] = a1;
  v5.receiver = v3;
  v5.super_class = v2;
  return objc_msgSendSuper2(&v5, sel_init);
}

id static FlowExtensionUserInputResultXPC.supportedInput.getter()
{
  v0 = type metadata accessor for FlowExtensionUserInputResultXPC();
  v1 = objc_allocWithZone(v0);
  *&v1[OBJC_IVAR___SKRFlowExtensionUserInputResultXPC_type] = 0;
  *&v1[OBJC_IVAR___SKRFlowExtensionUserInputResultXPC_error] = 0;
  *&v1[OBJC_IVAR___SKRFlowExtensionUserInputResultXPC_reformedInputData] = xmmword_1DCA69F00;
  v1[OBJC_IVAR___SKRFlowExtensionUserInputResultXPC_exclude] = 0;
  v3.receiver = v1;
  v3.super_class = v0;
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t FlowExtensionUserInputResultXPC.reformedInputData.getter()
{
  v1 = *(v0 + OBJC_IVAR___SKRFlowExtensionUserInputResultXPC_reformedInputData);
  outlined copy of Data?(v1, *(v0 + OBJC_IVAR___SKRFlowExtensionUserInputResultXPC_reformedInputData + 8));
  return v1;
}

void *FlowExtensionUserInputResultXPC.error.getter()
{
  v1 = *(v0 + OBJC_IVAR___SKRFlowExtensionUserInputResultXPC_error);
  v2 = v1;
  return v1;
}

id FlowExtensionUserInputResultXPC.__allocating_init(type:error:reformedInputData:exclude:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v11 = objc_allocWithZone(v5);
  *&v11[OBJC_IVAR___SKRFlowExtensionUserInputResultXPC_type] = a1;
  *&v11[OBJC_IVAR___SKRFlowExtensionUserInputResultXPC_error] = a2;
  v12 = &v11[OBJC_IVAR___SKRFlowExtensionUserInputResultXPC_reformedInputData];
  *v12 = a3;
  v12[1] = a4;
  v11[OBJC_IVAR___SKRFlowExtensionUserInputResultXPC_exclude] = a5;
  v14.receiver = v11;
  v14.super_class = v5;
  return objc_msgSendSuper2(&v14, sel_init);
}

id FlowExtensionUserInputResultXPC.init(type:error:reformedInputData:exclude:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *&v5[OBJC_IVAR___SKRFlowExtensionUserInputResultXPC_type] = a1;
  *&v5[OBJC_IVAR___SKRFlowExtensionUserInputResultXPC_error] = a2;
  v6 = &v5[OBJC_IVAR___SKRFlowExtensionUserInputResultXPC_reformedInputData];
  *v6 = a3;
  v6[1] = a4;
  v5[OBJC_IVAR___SKRFlowExtensionUserInputResultXPC_exclude] = a5;
  v8.receiver = v5;
  v8.super_class = type metadata accessor for FlowExtensionUserInputResultXPC();
  return objc_msgSendSuper2(&v8, sel_init);
}

SiriKitRuntime::FlowExtensionUserInputResultXPC::CodingKeys_optional __swiftcall FlowExtensionUserInputResultXPC.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v2._countAndFlagsBits = stringValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of FlowExtensionUserInputResultXPC.CodingKeys.init(rawValue:), v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t FlowExtensionUserInputResultXPC.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  v1 = 1701869940;
  v2 = 0xD000000000000011;
  if (a1 != 2)
  {
    v2 = 0x6564756C637865;
  }

  if (a1)
  {
    v1 = 0x726F727265;
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

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance FlowExtensionUserInputResultXPC.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = 1701869940;
  v3 = *a1;
  v4 = 0xE400000000000000;
  v5 = 0xD000000000000011;
  v6 = 0x80000001DCA7A890;
  v7 = 0xE700000000000000;
  if (v3 == 2)
  {
    v7 = 0x80000001DCA7A890;
  }

  else
  {
    v5 = 0x6564756C637865;
  }

  v8 = 0x726F727265;
  if (*a1)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v8 = 1701869940;
  }

  if (*a1 <= 1u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v5;
  }

  if (v3 <= 1)
  {
    v10 = v4;
  }

  else
  {
    v10 = v7;
  }

  v11 = 0xE400000000000000;
  v12 = 0xD000000000000011;
  if (*a2 != 2)
  {
    v12 = 0x6564756C637865;
    v6 = 0xE700000000000000;
  }

  if (*a2)
  {
    v2 = 0x726F727265;
    v11 = 0xE500000000000000;
  }

  if (*a2 <= 1u)
  {
    v13 = v2;
  }

  else
  {
    v13 = v12;
  }

  if (*a2 <= 1u)
  {
    v14 = v11;
  }

  else
  {
    v14 = v6;
  }

  if (v9 == v13 && v10 == v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v15 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance FlowExtensionUserInputResultXPC.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance FlowExtensionUserInputResultXPC.CodingKeys(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance FlowExtensionUserInputResultXPC.CodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance FlowExtensionUserInputResultXPC.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized FlowExtensionUserInputResultXPC.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance FlowExtensionUserInputResultXPC.CodingKeys(unint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1701869940;
  v4 = 0x80000001DCA7A890;
  v5 = 0xD000000000000011;
  if (*v1 != 2)
  {
    v5 = 0x6564756C637865;
    v4 = 0xE700000000000000;
  }

  if (*v1)
  {
    v3 = 0x726F727265;
    v2 = 0xE500000000000000;
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

unint64_t protocol witness for CodingKey.stringValue.getter in conformance FlowExtensionUserInputResultXPC.CodingKeys()
{
  v1 = 1701869940;
  v2 = 0xD000000000000011;
  if (*v0 != 2)
  {
    v2 = 0x6564756C637865;
  }

  if (*v0)
  {
    v1 = 0x726F727265;
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

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance FlowExtensionUserInputResultXPC.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized FlowExtensionUserInputResultXPC.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance FlowExtensionUserInputResultXPC.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type FlowExtensionUserInputResultXPC.CodingKeys and conformance FlowExtensionUserInputResultXPC.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance FlowExtensionUserInputResultXPC.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type FlowExtensionUserInputResultXPC.CodingKeys and conformance FlowExtensionUserInputResultXPC.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id FlowExtensionUserInputResultXPC.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FlowExtensionUserInputResultXPC.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FlowExtensionUserInputResultXPC();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id specialized static FlowExtensionUserInputResultXPC.error(_:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DCA66060;
  *(inited + 32) = 0x7470697263736564;
  *(inited + 40) = 0xEB000000006E6F69;
  swift_getErrorValue();
  v2 = Error.localizedDescription.getter();
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v2;
  *(inited + 56) = v3;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of (String, Any)(inited + 32);
  v4 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v5 = MEMORY[0x1E12A1410](0xD00000000000001DLL, 0x80000001DCA7F880);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v7 = [v4 initWithDomain:v5 code:-1 userInfo:isa];

  v8 = type metadata accessor for FlowExtensionUserInputResultXPC();
  v9 = objc_allocWithZone(v8);
  *&v9[OBJC_IVAR___SKRFlowExtensionUserInputResultXPC_type] = 3;
  *&v9[OBJC_IVAR___SKRFlowExtensionUserInputResultXPC_error] = v7;
  *&v9[OBJC_IVAR___SKRFlowExtensionUserInputResultXPC_reformedInputData] = xmmword_1DCA69F00;
  v9[OBJC_IVAR___SKRFlowExtensionUserInputResultXPC_exclude] = 0;
  v11.receiver = v9;
  v11.super_class = v8;
  return objc_msgSendSuper2(&v11, sel_init);
}

id specialized static FlowExtensionUserInputResultXPC.reformedInput(_:)(uint64_t a1, double a2)
{
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  type metadata accessor for Input();
  lazy protocol witness table accessor for type Input and conformance Input(&lazy protocol witness table cache variable for type Input and conformance Input, MEMORY[0x1E69D0108]);
  v2 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v4 = v3;

  v5 = type metadata accessor for FlowExtensionUserInputResultXPC();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR___SKRFlowExtensionUserInputResultXPC_type] = 2;
  *&v6[OBJC_IVAR___SKRFlowExtensionUserInputResultXPC_error] = 0;
  v7 = &v6[OBJC_IVAR___SKRFlowExtensionUserInputResultXPC_reformedInputData];
  *v7 = v2;
  v7[1] = v4;
  v6[OBJC_IVAR___SKRFlowExtensionUserInputResultXPC_exclude] = 0;
  v9.receiver = v6;
  v9.super_class = v5;
  return objc_msgSendSuper2(&v9, sel_init);
}

unint64_t specialized FlowExtensionUserInputResultXPC.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of FlowExtensionUserInputResultXPC.CodingKeys.init(rawValue:), v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type FlowExtensionUserInputResultXPC.CodingKeys and conformance FlowExtensionUserInputResultXPC.CodingKeys()
{
  result = lazy protocol witness table cache variable for type FlowExtensionUserInputResultXPC.CodingKeys and conformance FlowExtensionUserInputResultXPC.CodingKeys;
  if (!lazy protocol witness table cache variable for type FlowExtensionUserInputResultXPC.CodingKeys and conformance FlowExtensionUserInputResultXPC.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FlowExtensionUserInputResultXPC.CodingKeys and conformance FlowExtensionUserInputResultXPC.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FlowExtensionUserInputResultXPC.CodingKeys and conformance FlowExtensionUserInputResultXPC.CodingKeys;
  if (!lazy protocol witness table cache variable for type FlowExtensionUserInputResultXPC.CodingKeys and conformance FlowExtensionUserInputResultXPC.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FlowExtensionUserInputResultXPC.CodingKeys and conformance FlowExtensionUserInputResultXPC.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FlowExtensionUserInputResultXPC.CodingKeys and conformance FlowExtensionUserInputResultXPC.CodingKeys;
  if (!lazy protocol witness table cache variable for type FlowExtensionUserInputResultXPC.CodingKeys and conformance FlowExtensionUserInputResultXPC.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FlowExtensionUserInputResultXPC.CodingKeys and conformance FlowExtensionUserInputResultXPC.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FlowExtensionUserInputResultXPC.CodingKeys and conformance FlowExtensionUserInputResultXPC.CodingKeys;
  if (!lazy protocol witness table cache variable for type FlowExtensionUserInputResultXPC.CodingKeys and conformance FlowExtensionUserInputResultXPC.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FlowExtensionUserInputResultXPC.CodingKeys and conformance FlowExtensionUserInputResultXPC.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FlowExtensionUserInputResultTypeXPC and conformance FlowExtensionUserInputResultTypeXPC()
{
  result = lazy protocol witness table cache variable for type FlowExtensionUserInputResultTypeXPC and conformance FlowExtensionUserInputResultTypeXPC;
  if (!lazy protocol witness table cache variable for type FlowExtensionUserInputResultTypeXPC and conformance FlowExtensionUserInputResultTypeXPC)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FlowExtensionUserInputResultTypeXPC and conformance FlowExtensionUserInputResultTypeXPC);
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for UserInputResult(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v8 = *a2;
    *a1 = *a2;
    a1 = (v8 + ((v4 + 16) & ~v4));

    return a1;
  }

  v5 = *(a3 - 8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for Input();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v10 = *(v5 + 64);

  return memcpy(a1, a2, v10);
}

void *assignWithCopy for UserInputResult(void *a1, const void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  outlined destroy of UserInputResult(a1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for Input();
    (*(*(v6 - 8) + 16))(a1, a2, v6);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v8 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v8);
}

void *assignWithTake for UserInputResult(void *a1, const void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  outlined destroy of UserInputResult(a1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for Input();
    (*(*(v6 - 8) + 32))(a1, a2, v6);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v8 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v8);
}

uint64_t type metadata completion function for UserInputResult(uint64_t a1)
{
  result = type metadata accessor for Input();
  if (v2 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

uint64_t Siri_Nlu_External_UserParse.preferredUserDialogAct.getter@<X0>(char *a1@<X8>)
{
  v38 = a1;
  v2 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v34 = &v33 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v33 = &v33 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v33 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v36 = &v33 - v14;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v35 = &v33 - v17;
  v37 = v1;
  result = MEMORY[0x1E129C0F0](v16);
  v19 = result;
  v20 = *(result + 16);
  if (v20)
  {
    v21 = 0;
    while (1)
    {
      if (v21 >= *(v19 + 16))
      {
        __break(1u);
        goto LABEL_20;
      }

      (*(v3 + 16))(v12, v19 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v21, v2);
      if (Siri_Nlu_External_UserDialogAct.hasAccepted.getter())
      {
        break;
      }

      ++v21;
      result = (*(v3 + 8))(v12, v2);
      if (v20 == v21)
      {
        goto LABEL_6;
      }
    }

    v29 = *(v3 + 32);
    v30 = v36;
    v29(v36, v12, v2);
    v31 = v35;
LABEL_15:
    v29(v31, v30, v2);
    v28 = v38;
    v29(v38, v31, v2);
    goto LABEL_16;
  }

LABEL_6:

  result = MEMORY[0x1E129C0F0](v22);
  v23 = result;
  v24 = *(result + 16);
  if (!v24)
  {
LABEL_11:

    v27 = MEMORY[0x1E129C0F0](v26);
    if (!*(v27 + 16))
    {

      v32 = 1;
      v28 = v38;
      return (*(v3 + 56))(v28, v32, 1, v2);
    }

    v28 = v38;
    (*(v3 + 16))(v38, v27 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), v2);

LABEL_16:
    v32 = 0;
    return (*(v3 + 56))(v28, v32, 1, v2);
  }

  v25 = 0;
  while (v25 < *(v23 + 16))
  {
    (*(v3 + 16))(v5, v23 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v25, v2);
    if (Siri_Nlu_External_UserDialogAct.hasUserStatedTask.getter())
    {

      v29 = *(v3 + 32);
      v30 = v34;
      v29(v34, v5, v2);
      v31 = v33;
      goto LABEL_15;
    }

    ++v25;
    result = (*(v3 + 8))(v5, v2);
    if (v24 == v25)
    {
      goto LABEL_11;
    }
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t SIRINLUUserParse.toProtoUserParse()@<X0>(uint64_t a1@<X8>)
{
  v4 = type metadata accessor for BinaryDecodingOptions();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v20[-v6];
  v8 = [objc_opt_self() convertFromUserParse_];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 data];
    if (v10)
    {
      v11 = v10;
      v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      v15 = type metadata accessor for Siri_Nlu_External_UserParse();
      v22 = v12;
      v23 = v14;
      v21 = 0;
      memset(&v20[16], 0, 32);
      outlined copy of Data._Representation(v12, v14);
      BinaryDecodingOptions.init()();
      lazy protocol witness table accessor for type Siri_Nlu_External_UserParse and conformance Siri_Nlu_External_UserParse();
      Message.init<A>(contiguousBytes:extensions:partial:options:)();

      outlined consume of Data._Representation(v12, v14);
      v17 = *(v15 - 8);
      v18 = *(v17 + 56);
      v18(v7, 0, 1, v15);
      (*(v17 + 32))(a1, v7, v15);
      return v18(a1, 0, 1, v15);
    }
  }

  v16 = type metadata accessor for Siri_Nlu_External_UserParse();
  return (*(*(v16 - 8) + 56))(a1, 1, 1, v16);
}

unint64_t lazy protocol witness table accessor for type Siri_Nlu_External_UserParse and conformance Siri_Nlu_External_UserParse()
{
  result = lazy protocol witness table cache variable for type Siri_Nlu_External_UserParse and conformance Siri_Nlu_External_UserParse;
  if (!lazy protocol witness table cache variable for type Siri_Nlu_External_UserParse and conformance Siri_Nlu_External_UserParse)
  {
    type metadata accessor for Siri_Nlu_External_UserParse();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Siri_Nlu_External_UserParse and conformance Siri_Nlu_External_UserParse);
  }

  return result;
}

id Siri_Nlu_External_UserParse.toLegacyUserParse()()
{
  type metadata accessor for Siri_Nlu_External_UserParse();
  lazy protocol witness table accessor for type Siri_Nlu_External_UserParse and conformance Siri_Nlu_External_UserParse();
  v1 = Message.serializedData(partial:)();
  v3 = v2;
  v4 = objc_allocWithZone(MEMORY[0x1E69D1240]);
  isa = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v1, v3);
  v6 = [v4 initWithData_];

  if (!v6)
  {
    return 0;
  }

  v7 = [objc_opt_self() convertUserParse_];

  return v7;
}

uint64_t SIRINLUUserParse.preferredUserDialogAct.getter()
{
  v1 = [v0 userDialogActs];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SIRINLUUserDialogAct_pMd, &_sSo20SIRINLUUserDialogAct_pMR);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v4 = 0;
    while ((v2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1E12A1FE0](v4, v2);
      v6 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_12;
      }

LABEL_7:
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        goto LABEL_35;
      }

      swift_unknownObjectRelease();
      ++v4;
      if (v6 == i)
      {
        goto LABEL_15;
      }
    }

    if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_13;
    }

    v5 = *(v2 + 8 * v4 + 32);
    swift_unknownObjectRetain();
    v6 = v4 + 1;
    if (!__OFADD__(v4, 1))
    {
      goto LABEL_7;
    }

LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }

LABEL_15:

  v7 = [v0 userDialogActs];
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v8 >> 62)
  {
    goto LABEL_29;
  }

  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v9)
  {
LABEL_17:
    v10 = 0;
    do
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1E12A1FE0](v10, v8);
        v11 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
LABEL_26:
          __break(1u);
          goto LABEL_35;
        }
      }

      else
      {
        if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_29:
          v9 = __CocoaSet.count.getter();
          if (!v9)
          {
            break;
          }

          goto LABEL_17;
        }

        v5 = *(v8 + 8 * v10 + 32);
        swift_unknownObjectRetain();
        v11 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_26;
        }
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        goto LABEL_35;
      }

      swift_unknownObjectRelease();
      ++v10;
    }

    while (v11 != v9);
  }

  v12 = [v0 userDialogActs];
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v13 >> 62))
  {
    result = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_32;
    }

LABEL_38:

    return 0;
  }

  result = __CocoaSet.count.getter();
  if (!result)
  {
    goto LABEL_38;
  }

LABEL_32:
  if ((v13 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x1E12A1FE0](0, v13);
    goto LABEL_35;
  }

  if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v5 = *(v13 + 32);
    swift_unknownObjectRetain();
LABEL_35:

    return v5;
  }

  __break(1u);
  return result;
}

uint64_t UserSessionState.isSessionActiveForUser(siriSharedUserId:)(uint64_t a1)
{
  v2 = v1;
  v45 = a1;
  v3 = type metadata accessor for UserID();
  v44 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v42 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDVSg_ADtMd, &_s16SiriMessageTypes6UserIDVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v42 - v6;
  v8 = type metadata accessor for UserSessionState();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v42 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v43 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v42 - v18;
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v42 - v22;
  (*(v9 + 16))(v14, v2, v8, v21);
  if ((*(v9 + 88))(v14, v8) == *MEMORY[0x1E69D06F0])
  {
    (*(v9 + 96))(v14, v8);

    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS9personaId_16SiriMessageTypes6UserIDVSg010siriSharedfB0AB0F18SessionAccessLevelO06accessL0tMd, &_sSS9personaId_16SiriMessageTypes6UserIDVSg010siriSharedfB0AB0F18SessionAccessLevelO06accessL0tMR);
    v25 = *(v24 + 64);
    outlined init with take of UserID?(&v14[*(v24 + 48)], v23);
    v26 = type metadata accessor for UserSessionAccessLevel();
    (*(*(v26 - 8) + 8))(&v14[v25], v26);
    v27 = v44;
    (*(v44 + 16))(v19, v45, v3);
    (*(v27 + 56))(v19, 0, 1, v3);
    v28 = *(v5 + 48);
    outlined init with copy of UserID?(v23, v7);
    outlined init with copy of UserID?(v19, &v7[v28]);
    v29 = *(v27 + 48);
    if (v29(v7, 1, v3) == 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v19, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
      outlined destroy of ReferenceResolutionClientProtocol?(v23, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
      if (v29(&v7[v28], 1, v3) == 1)
      {
        outlined destroy of ReferenceResolutionClientProtocol?(v7, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
        v30 = 1;
        return v30 & 1;
      }
    }

    else
    {
      v37 = v43;
      outlined init with copy of UserID?(v7, v43);
      if (v29(&v7[v28], 1, v3) != 1)
      {
        v39 = v42;
        (*(v27 + 32))(v42, &v7[v28], v3);
        _s16SiriMessageTypes6UserIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type UserID and conformance UserID, MEMORY[0x1E69D08D8]);
        v40 = v37;
        v30 = dispatch thunk of static Equatable.== infix(_:_:)();
        v41 = *(v27 + 8);
        v41(v39, v3);
        outlined destroy of ReferenceResolutionClientProtocol?(v19, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
        outlined destroy of ReferenceResolutionClientProtocol?(v23, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
        v41(v40, v3);
        outlined destroy of ReferenceResolutionClientProtocol?(v7, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
        return v30 & 1;
      }

      outlined destroy of ReferenceResolutionClientProtocol?(v19, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
      outlined destroy of ReferenceResolutionClientProtocol?(v23, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
      (*(v27 + 8))(v37, v3);
    }

    outlined destroy of ReferenceResolutionClientProtocol?(v7, &_s16SiriMessageTypes6UserIDVSg_ADtMd, &_s16SiriMessageTypes6UserIDVSg_ADtMR);
LABEL_12:
    v30 = 0;
    return v30 & 1;
  }

  v31 = *(v9 + 8);
  v31(v14, v8);
  (*(v9 + 104))(v11, *MEMORY[0x1E69D06E0], v8);
  v32 = static UserSessionState.== infix(_:_:)();
  v31(v11, v8);
  if ((v32 & 1) == 0)
  {
    goto LABEL_12;
  }

  v33 = UserID.sharedUserId.getter();
  v35 = v34;
  if (v33 == static UserSessionState.guestSharedUserId.getter() && v35 == v36)
  {

    v30 = 1;
  }

  else
  {
    v30 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v30 & 1;
}

id UserSessionState.getActiveUserSpecificInfo(from:withUserClassification:withMeetsPersonalRequestThreshold:)(uint64_t a1, unsigned __int8 *a2, int a3)
{
  v4 = v3;
  v84 = a3;
  v85 = a1;
  v6 = type metadata accessor for UserID();
  v87 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v79 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v77 = &v76 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v78 = &v76 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v81 = &v76 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v80 = &v76 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v76 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v76 - v23;
  v25 = type metadata accessor for UserSessionState();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = (&v76 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = MEMORY[0x1EEE9AC00](v29);
  v83 = *a2;
  v31 = *(v26 + 16);
  v86 = &v76 - v32;
  v31(v30);
  v82 = v4;
  (v31)(v28, v4, v25);
  v33 = (*(v26 + 88))(v28, v25);
  if (v33 == *MEMORY[0x1E69D06F0])
  {
    (*(v26 + 96))(v28, v25);
    v34 = v28[1];
    v77 = *v28;
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS9personaId_16SiriMessageTypes6UserIDVSg010siriSharedfB0AB0F18SessionAccessLevelO06accessL0tMd, &_sSS9personaId_16SiriMessageTypes6UserIDVSg010siriSharedfB0AB0F18SessionAccessLevelO06accessL0tMR);
    v36 = *(v35 + 48);
    v79 = *(v35 + 64);
    outlined init with take of UserID?(v28 + v36, v24);
    outlined init with copy of UserID?(v24, v21);
    v37 = *(v87 + 48);
    v38 = v24;
    if (v37(v21, 1, v6) == 1)
    {
      v81 = v24;
      outlined destroy of ReferenceResolutionClientProtocol?(v21, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
      v39 = v80;
      v40 = v85;
      UserSessionState.getActiveUserSharedUserId(fromMuxContextMessage:)();
      if (v37(v39, 1, v6) == 1)
      {
        (*(v26 + 8))(v86, v25);
        outlined destroy of ReferenceResolutionClientProtocol?(v39, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
        if (one-time initialization token for conversationBridge != -1)
        {
          swift_once();
        }

        v41 = type metadata accessor for Logger();
        __swift_project_value_buffer(v41, static Logger.conversationBridge);

        v42 = Logger.logObject.getter();
        v43 = static os_log_type_t.error.getter();

        v44 = os_log_type_enabled(v42, v43);
        v45 = v81;
        v46 = v77;
        if (v44)
        {
          v47 = swift_slowAlloc();
          v48 = swift_slowAlloc();
          v88 = v48;
          *v47 = 136315138;
          v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v34, &v88);

          *(v47 + 4) = v49;
          _os_log_impl(&dword_1DC659000, v42, v43, "#user-session: unable to find shareduserid for personaId=%s", v47, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v48);
          MEMORY[0x1E12A2F50](v48, -1, -1);
          MEMORY[0x1E12A2F50](v47, -1, -1);
        }

        else
        {
        }

        outlined destroy of ReferenceResolutionClientProtocol?(v45, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
        v73 = v79;
        v74 = type metadata accessor for UserSessionAccessLevel();
        (*(*(v74 - 8) + 8))(v28 + v73, v74);
        return 0;
      }

      v65 = v39;
      v66 = v87;
      v67 = v78;
      (*(v87 + 32))(v78, v65, v6);
      v68 = v86;
      v60 = closure #1 in UserSessionState.getActiveUserSpecificInfo(from:withUserClassification:withMeetsPersonalRequestThreshold:)(v67, v77, v34, v40, v83, v86, v84);

      (*(v66 + 8))(v67, v6);
      outlined destroy of ReferenceResolutionClientProtocol?(v81, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
      (*(v26 + 8))(v68, v25);
    }

    else
    {
      v61 = v87;
      v62 = v81;
      (*(v87 + 32))(v81, v21, v6);
      v63 = v86;
      v60 = closure #1 in UserSessionState.getActiveUserSpecificInfo(from:withUserClassification:withMeetsPersonalRequestThreshold:)(v62, v77, v34, v85, v83, v86, v84);

      (*(v61 + 8))(v62, v6);
      outlined destroy of ReferenceResolutionClientProtocol?(v38, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
      (*(v26 + 8))(v63, v25);
    }

    v69 = type metadata accessor for UserSessionAccessLevel();
    (*(*(v69 - 8) + 8))(v28 + v79, v69);
  }

  else
  {
    v50 = v87;
    if (v33 != *MEMORY[0x1E69D06E0])
    {
      v64 = *(v26 + 8);
      v64(v86, v25);
      v64(v28, v25);
      return 0;
    }

    v51 = v85;
    UserSessionState.getActiveUserSharedUserId(fromMuxContextMessage:)();
    if ((*(v50 + 48))(v16, 1, v6) == 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v16, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
      if (one-time initialization token for conversationBridge != -1)
      {
        swift_once();
      }

      v52 = type metadata accessor for Logger();
      __swift_project_value_buffer(v52, static Logger.conversationBridge);
      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        *v55 = 0;
        _os_log_impl(&dword_1DC659000, v53, v54, "#user-session: unable to find shareduserid for guest in muxContext", v55, 2u);
        MEMORY[0x1E12A2F50](v55, -1, -1);
      }

      static UserSessionState.guestSharedUserId.getter();
      v56 = v79;
      UserID.init(sharedUserId:)();
      v57 = static UserSessionState.guestSharedUserId.getter();
      v58 = v86;
      v60 = closure #1 in UserSessionState.getActiveUserSpecificInfo(from:withUserClassification:withMeetsPersonalRequestThreshold:)(v56, v57, v59, v51, v83, v86, v84);

      (*(v50 + 8))(v56, v6);
    }

    else
    {
      v70 = v77;
      (*(v50 + 32))(v77, v16, v6);
      v71 = static UserSessionState.guestSharedUserId.getter();
      v58 = v86;
      v60 = closure #1 in UserSessionState.getActiveUserSpecificInfo(from:withUserClassification:withMeetsPersonalRequestThreshold:)(v70, v71, v72, v51, v83, v86, v84);

      (*(v50 + 8))(v70, v6);
    }

    (*(v26 + 8))(v58, v25);
  }

  return v60;
}

Swift::Bool __swiftcall UserSessionState.isSessionActiveForUser(personaId:)(Swift::String personaId)
{
  v2 = v1;
  object = personaId._object;
  countAndFlagsBits = personaId._countAndFlagsBits;
  v5 = type metadata accessor for UserSessionState();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v25 - v11;
  (*(v6 + 16))(&v25 - v11, v2, v5, v10);
  if ((*(v6 + 88))(v12, v5) == *MEMORY[0x1E69D06F0])
  {
    (*(v6 + 96))(v12, v5);
    v14 = *v12;
    v13 = *(v12 + 1);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS9personaId_16SiriMessageTypes6UserIDVSg010siriSharedfB0AB0F18SessionAccessLevelO06accessL0tMd, &_sSS9personaId_16SiriMessageTypes6UserIDVSg010siriSharedfB0AB0F18SessionAccessLevelO06accessL0tMR);
    v16 = *(v15 + 48);
    v17 = *(v15 + 64);
    v18 = type metadata accessor for UserSessionAccessLevel();
    (*(*(v18 - 8) + 8))(&v12[v17], v18);
    outlined destroy of ReferenceResolutionClientProtocol?(&v12[v16], &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
    if (v14 != countAndFlagsBits || v13 != object)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  v20 = *(v6 + 8);
  v20(v12, v5);
  (*(v6 + 104))(v8, *MEMORY[0x1E69D06E0], v5);
  v21 = static UserSessionState.== infix(_:_:)();
  v20(v8, v5);
  if (v21)
  {
    if (static UserSessionState.guestSharedUserId.getter() != countAndFlagsBits || v22 != object)
    {
LABEL_12:
      v23 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_13;
    }

LABEL_10:
    v23 = 1;
LABEL_13:

    return v23 & 1;
  }

  v23 = 0;
  return v23 & 1;
}

id closure #1 in UserSessionState.getActiveUserSpecificInfo(from:withUserClassification:withMeetsPersonalRequestThreshold:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, int a7)
{
  v138 = a6;
  v146 = a5;
  v140 = a2;
  v141 = a3;
  v10 = type metadata accessor for UserSessionState();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v139 = &v123 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v134 = &v123 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v123 - v16;
  v18 = type metadata accessor for UserSessionAccessLevel();
  v135 = *(v18 - 8);
  v136 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v131 = &v123 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v133 = &v123 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v130 = &v123 - v23;
  v24 = type metadata accessor for UserID();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v123 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = [objc_allocWithZone(MEMORY[0x1E69C7820]) init];
  v143 = a1;
  v137 = a4;
  v30 = specialized static ConversationMUXUtils.homeMember(withUserId:from:)(a1, v29);
  v142 = v10;
  if (v30)
  {
    v31 = v30;

    v32 = v31;
    v33 = a7;
    v34 = v146;
  }

  else
  {
    v144 = a7;
    v145 = v28;
    v132 = v11;
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    __swift_project_value_buffer(v35, static Logger.conversationBridge);
    (*(v25 + 16))(v27, v143, v24);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    v38 = os_log_type_enabled(v36, v37);
    v34 = v146;
    if (v38)
    {
      v39 = swift_slowAlloc();
      v129 = swift_slowAlloc();
      v147 = v129;
      *v39 = 136315138;
      _s16SiriMessageTypes6UserIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type UserID and conformance UserID, MEMORY[0x1E69D08E0]);
      v40 = dispatch thunk of CustomStringConvertible.description.getter();
      v41 = v34;
      v43 = v42;
      (*(v25 + 8))(v27, v24);
      v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v43, &v147);
      v34 = v41;

      *(v39 + 4) = v44;
      _os_log_impl(&dword_1DC659000, v36, v37, "#user-session: couldn't find home member information for %s. Using a default value", v39, 0xCu);
      v45 = v129;
      __swift_destroy_boxed_opaque_existential_1Tm(v129);
      MEMORY[0x1E12A2F50](v45, -1, -1);
      v46 = v39;
      v10 = v142;
      MEMORY[0x1E12A2F50](v46, -1, -1);
    }

    else
    {

      (*(v25 + 8))(v27, v24);
    }

    v11 = v132;
    v32 = v145;
    v33 = v144;
  }

  v47 = MEMORY[0x1E69D06F0];
  v48 = v138;
  if (v34 == 5)
  {
    (*(v11 + 16))(v17, v138, v10);
    if ((*(v11 + 88))(v17, v10) == *v47)
    {
      (*(v11 + 96))(v17, v10);

      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS9personaId_16SiriMessageTypes6UserIDVSg010siriSharedfB0AB0F18SessionAccessLevelO06accessL0tMd, &_sSS9personaId_16SiriMessageTypes6UserIDVSg010siriSharedfB0AB0F18SessionAccessLevelO06accessL0tMR);
      v50 = *(v49 + 48);
      v51 = v135;
      v52 = v136;
      v53 = *(v135 + 32);
      v54 = &v17[*(v49 + 64)];
      v132 = v11;
      v55 = v130;
      v53(v130, v54, v136);
      outlined destroy of ReferenceResolutionClientProtocol?(&v17[v50], &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
      v56 = v33;
      v57 = v48;
      v58 = v133;
      (*(v51 + 104))(v133, *MEMORY[0x1E69D0878], v52);
      LOBYTE(v50) = static UserSessionAccessLevel.== infix(_:_:)();
      v59 = *(v51 + 8);
      v60 = v58;
      v48 = v57;
      v33 = v56;
      v59(v60, v52);
      v61 = v55;
      v11 = v132;
      v59(v61, v52);
      v62 = (v50 & 1) == 0;
      v47 = MEMORY[0x1E69D06F0];
      if (v62)
      {
        v34 = 2;
      }

      else
      {
        v34 = 0;
      }
    }

    else
    {
      (*(v11 + 8))(v17, v10);
      v34 = 4;
    }
  }

  if (v33 == 2)
  {
    v63 = v134;
    (*(v11 + 16))(v134, v48, v10);
    if ((*(v11 + 88))(v63, v10) == *v47)
    {
      (*(v11 + 96))(v63, v10);

      v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS9personaId_16SiriMessageTypes6UserIDVSg010siriSharedfB0AB0F18SessionAccessLevelO06accessL0tMd, &_sSS9personaId_16SiriMessageTypes6UserIDVSg010siriSharedfB0AB0F18SessionAccessLevelO06accessL0tMR);
      v65 = *(v64 + 48);
      v66 = v34;
      v68 = v135;
      v67 = v136;
      v69 = v131;
      (*(v135 + 32))(v131, &v63[*(v64 + 64)], v136);
      outlined destroy of ReferenceResolutionClientProtocol?(&v63[v65], &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
      v70 = v133;
      (*(v68 + 104))(v133, *MEMORY[0x1E69D0878], v67);
      v33 = static UserSessionAccessLevel.== infix(_:_:)();
      v71 = *(v68 + 8);
      v71(v70, v67);
      v71(v69, v67);
      v34 = v66;
    }

    else
    {
      (*(v11 + 8))(v63, v10);
      v33 = 0;
    }
  }

  v72 = UserID.sharedUserId.getter();
  v135 = v73;
  v136 = v72;
  specialized static ConversationMUXUtils.isOwner(_:)(v32);
  if (v74)
  {
    LODWORD(v133) = 0;
  }

  else
  {
    specialized static ConversationMUXUtils.isUnknownUser(_:)(v32);
    LODWORD(v133) = v75;
  }

  v146 = v34;
  specialized static ConversationMUXUtils.singleKnownUserInHome(muxContextMessage:)();
  LODWORD(v134) = v76;
  LODWORD(v137) = MUXContextMessage.voiceProfilesAreInFlight.getter();
  v77 = [v32 homeMemberSettings];
  if (!v77 || (v78 = v77, isa = [v77 twentyFourHourTimeDisplay], v78, !isa))
  {
    type metadata accessor for NSNumber();
    isa = NSNumber.init(integerLiteral:)(0).super.super.isa;
  }

  type metadata accessor for NSNumber();
  v80 = NSNumber.init(integerLiteral:)(0).super.super.isa;
  LODWORD(v143) = static NSObject.== infix(_:_:)();

  v81 = [v32 homeMemberSettings];
  if (v81)
  {
    v82 = v81;
    v83 = [v81 mediaPlayerExplicitContentDisallowed];

    v84 = v83 ^ 1;
  }

  else
  {
    v84 = 1;
  }

  LODWORD(v132) = v84;
  v85 = [v32 homeMemberSettings];
  if (v85)
  {
    v86 = v85;
    LODWORD(v130) = [v85 mediaPlayerExplicitContentDisallowed];
  }

  else
  {
    LODWORD(v130) = 0;
  }

  v87 = [v32 companionAssistantId];
  if (v87)
  {
    v88 = v87;
    v129 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v128 = v89;
  }

  else
  {
    v129 = 0;
    v128 = 0;
  }

  v90 = [v32 homeMemberSettings];
  v131 = [v90 meCard];

  v91 = [v32 homeMemberSettings];
  if (v91 && (v92 = v91, v93 = [v91 preferredLanguage], v92, v93))
  {
    v127 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v126 = v94;
  }

  else
  {
    v127 = 0;
    v126 = 0;
  }

  v95 = [v32 homeMemberSettings];
  if (v95 && (v96 = v95, v97 = [v95 countryCode], v96, v97))
  {
    v125 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v124 = v98;
  }

  else
  {
    v125 = 0;
    v124 = 0;
  }

  v99 = [v32 homeMemberSettings];
  v145 = v32;
  v144 = v33;
  if (v99 && (v100 = v99, v101 = [v99 temperatureUnit], v100, v101))
  {
    v102 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v104 = v103;
  }

  else
  {
    v102 = 0;
    v104 = 0;
  }

  v105 = *(v11 + 16);
  v106 = v139;
  v107 = v142;
  v105(v139, v48, v142);
  v108 = type metadata accessor for UserSpecificInfo(0);
  v109 = objc_allocWithZone(v108);
  v109[OBJC_IVAR___SKEUserSpecificInfo____lazy_storage___isGroundingConditionallyNeeded] = 2;
  v110 = &v109[OBJC_IVAR___SKEUserSpecificInfo_userId];
  v111 = v135;
  *v110 = v136;
  v110[1] = v111;
  v109[OBJC_IVAR___SKEUserSpecificInfo_userIdentityClassification] = v146;
  *&v109[OBJC_IVAR___SKEUserSpecificInfo_rawVoiceIDScore] = 100;
  v109[OBJC_IVAR___SKEUserSpecificInfo_userAttribute] = v133 & 1;
  v109[OBJC_IVAR___SKEUserSpecificInfo_isFirstInteractionForUser] = 1;
  v109[OBJC_IVAR___SKEUserSpecificInfo_didSpeakerChange] = 1;
  v109[OBJC_IVAR___SKEUserSpecificInfo_isOnlyUserInHome] = v134 & 1;
  v109[OBJC_IVAR___SKEUserSpecificInfo_explicitContentAllowed] = v132;
  v109[OBJC_IVAR___SKEUserSpecificInfo_censorSpeech] = v130;
  v109[OBJC_IVAR___SKEUserSpecificInfo_wasSpeechProfileUsedByASR] = 1;
  v112 = &v109[OBJC_IVAR___SKEUserSpecificInfo_companionAssistantId];
  *v112 = v129;
  v112[1] = v128;
  v113 = v131;
  *&v109[OBJC_IVAR___SKEUserSpecificInfo_meCard] = v131;
  v109[OBJC_IVAR___SKEUserSpecificInfo_voiceProfilesInFlight] = v137 & 1;
  v109[OBJC_IVAR___SKEUserSpecificInfo_twentyFourHourTimeDisplay] = (v143 & 1) == 0;
  v114 = &v109[OBJC_IVAR___SKEUserSpecificInfo_preferredLanguage];
  *v114 = v127;
  v114[1] = v126;
  v115 = &v109[OBJC_IVAR___SKEUserSpecificInfo_countryCode];
  *v115 = v125;
  v115[1] = v124;
  v116 = &v109[OBJC_IVAR___SKEUserSpecificInfo_temperatureUnit];
  *v116 = v102;
  v116[1] = v104;
  v117 = &v109[OBJC_IVAR___SKEUserSpecificInfo_lowScoreThreshold];
  *v117 = 0;
  v117[4] = 1;
  v118 = &v109[OBJC_IVAR___SKEUserSpecificInfo_personaId];
  v119 = v141;
  *v118 = v140;
  v118[1] = v119;
  v109[OBJC_IVAR___SKEUserSpecificInfo_meetsUserSessionThreshold] = 1;
  v109[OBJC_IVAR___SKEUserSpecificInfo_meetsPersonalRequestThreshold] = v144 & 1;
  v109[OBJC_IVAR___SKEUserSpecificInfo_hasActiveUserSession] = 1;
  v105(&v109[OBJC_IVAR___SKEUserSpecificInfo_userSessionState], v106, v107);
  v148.receiver = v109;
  v148.super_class = v108;
  v120 = v113;

  v121 = objc_msgSendSuper2(&v148, sel_init);

  (*(v11 + 8))(v106, v107);
  return v121;
}

uint64_t specialized == infix<A>(_:_:)(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000074;
  v3 = 0x6E656469666E6F63;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x6E776F6E6BLL;
    }

    else
    {
      v5 = 0x6E656469666E6F63;
    }

    if (v4)
    {
      v6 = 0xE500000000000000;
    }

    else
    {
      v6 = 0xE900000000000074;
    }
  }

  else if (a1 == 2)
  {
    v6 = 0xE700000000000000;
    v5 = 0x31657275736E75;
  }

  else
  {
    if (a1 == 3)
    {
      v5 = 0x4E657275736E75;
    }

    else
    {
      v5 = 0x6E776F6E6B6E75;
    }

    v6 = 0xE700000000000000;
  }

  v7 = 0x31657275736E75;
  v8 = 0x4E657275736E75;
  if (a2 != 3)
  {
    v8 = 0x6E776F6E6B6E75;
  }

  if (a2 != 2)
  {
    v7 = v8;
  }

  if (a2)
  {
    v3 = 0x6E776F6E6BLL;
    v2 = 0xE500000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

{
  v2 = 0xEC000000656C7552;
  v3 = a1;
  if (a1 <= 3u)
  {
    v10 = 0x80000001DCA7B130;
    if (a1 == 2)
    {
      v11 = 0xD000000000000023;
    }

    else
    {
      v11 = 0xD000000000000022;
    }

    if (a1 != 2)
    {
      v10 = 0x80000001DCA7B160;
    }

    v12 = 0x80000001DCA7B0E0;
    v13 = 0xD000000000000016;
    if (a1)
    {
      v13 = 0xD000000000000021;
      v12 = 0x80000001DCA7B100;
    }

    if (a1 <= 1u)
    {
      v8 = v13;
    }

    else
    {
      v8 = v11;
    }

    if (v3 <= 1)
    {
      v9 = v12;
    }

    else
    {
      v9 = v10;
    }
  }

  else
  {
    v4 = 0x80000001DCA7B1F0;
    v5 = 0xD00000000000001BLL;
    if (a1 != 7)
    {
      v5 = 1701736302;
      v4 = 0xE400000000000000;
    }

    if (a1 == 6)
    {
      v5 = 0x5253417974706D65;
      v4 = 0xEC000000656C7552;
    }

    v6 = 0x80000001DCA7B190;
    v7 = 0xD000000000000017;
    if (a1 == 4)
    {
      v7 = 0xD000000000000022;
    }

    else
    {
      v6 = 0x80000001DCA7B1C0;
    }

    if (a1 <= 5u)
    {
      v8 = v7;
    }

    else
    {
      v8 = v5;
    }

    if (v3 <= 5)
    {
      v9 = v6;
    }

    else
    {
      v9 = v4;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v2 = 0x80000001DCA7B100;
        if (v8 != 0xD000000000000021)
        {
          goto LABEL_55;
        }
      }

      else
      {
        v2 = 0x80000001DCA7B0E0;
        if (v8 != 0xD000000000000016)
        {
          goto LABEL_55;
        }
      }

      goto LABEL_53;
    }

    if (a2 == 2)
    {
      v2 = 0x80000001DCA7B130;
      if (v8 != 0xD000000000000023)
      {
        goto LABEL_55;
      }

      goto LABEL_53;
    }

    v14 = "overrideMitigatorForServerFallback";
LABEL_48:
    v2 = (v14 - 32) | 0x8000000000000000;
    if (v8 != 0xD000000000000022)
    {
      goto LABEL_55;
    }

    goto LABEL_53;
  }

  if (a2 > 5u)
  {
    if (a2 == 6)
    {
      if (v8 != 0x5253417974706D65)
      {
        goto LABEL_55;
      }
    }

    else if (a2 == 7)
    {
      v2 = 0x80000001DCA7B1F0;
      if (v8 != 0xD00000000000001BLL)
      {
        goto LABEL_55;
      }
    }

    else
    {
      v2 = 0xE400000000000000;
      if (v8 != 1701736302)
      {
        goto LABEL_55;
      }
    }

    goto LABEL_53;
  }

  if (a2 == 4)
  {
    v14 = "validIntentForTriggerLessFollowups";
    goto LABEL_48;
  }

  v2 = 0x80000001DCA7B1C0;
  if (v8 != 0xD000000000000017)
  {
LABEL_55:
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_56;
  }

LABEL_53:
  if (v9 != v2)
  {
    goto LABEL_55;
  }

  v15 = 1;
LABEL_56:

  return v15 & 1;
}

{
  v2 = 0xED00006449747365;
  v3 = 0x75716552746F6F72;
  v4 = a1;
  v5 = 0xEB00000000746964;
  v6 = 0x616E4558554D7369;
  v7 = 0xEC00000064656C62;
  if (a1 != 4)
  {
    v6 = 0xD000000000000014;
    v7 = 0x80000001DCA7B320;
  }

  if (a1 == 3)
  {
    v6 = 0x456F547061547369;
  }

  else
  {
    v5 = v7;
  }

  v8 = 0xD000000000000012;
  v9 = 0x80000001DCA7AEC0;
  v10 = 0x496E6F6973736573;
  v11 = 0xE900000000000064;
  if (a1 == 1)
  {
    v10 = 0x75716552746F6F72;
    v11 = 0xED00006449747365;
  }

  if (a1)
  {
    v8 = v10;
    v9 = v11;
  }

  if (a1 <= 2u)
  {
    v12 = v8;
  }

  else
  {
    v12 = v6;
  }

  if (v4 <= 2)
  {
    v13 = v9;
  }

  else
  {
    v13 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 != 3)
    {
      if (a2 == 4)
      {
        v2 = 0xEC00000064656C62;
        if (v12 != 0x616E4558554D7369)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v2 = 0x80000001DCA7B320;
        if (v12 != 0xD000000000000014)
        {
          goto LABEL_32;
        }
      }

      goto LABEL_29;
    }

    v3 = 0x456F547061547369;
    v2 = 0xEB00000000746964;
  }

  else
  {
    if (!a2)
    {
      v2 = 0x80000001DCA7AEC0;
      if (v12 != 0xD000000000000012)
      {
        goto LABEL_32;
      }

      goto LABEL_29;
    }

    if (a2 != 1)
    {
      v2 = 0xE900000000000064;
      if (v12 != 0x496E6F6973736573)
      {
        goto LABEL_32;
      }

      goto LABEL_29;
    }
  }

  if (v12 != v3)
  {
LABEL_32:
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_33;
  }

LABEL_29:
  if (v13 != v2)
  {
    goto LABEL_32;
  }

  v14 = 1;
LABEL_33:

  return v14 & 1;
}

{
  v2 = a1;
  if (a1 <= 3u)
  {
    v11 = 0xE700000000000000;
    v12 = 0x55747865746E6F63;
    v13 = 0xED00006574616470;
    if (a1 != 2)
    {
      v12 = 0x6E6972506C6C7566;
      v13 = 0xE900000000000074;
    }

    if (a1)
    {
      v14 = 0x646E616D6D6F63;
    }

    else
    {
      v14 = 0xD000000000000012;
    }

    if (!a1)
    {
      v11 = 0x80000001DCA7AEC0;
    }

    if (a1 <= 1u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v12;
    }

    if (v2 <= 1)
    {
      v10 = v11;
    }

    else
    {
      v10 = v13;
    }
  }

  else
  {
    v3 = 0xD000000000000011;
    v4 = 0x80000001DCA7AF10;
    v5 = 0x6F69747563657865;
    v6 = 0xEF656372756F536ELL;
    if (a1 != 7)
    {
      v5 = 0x7365527070416E69;
      v6 = 0xED000065736E6F70;
    }

    if (a1 != 6)
    {
      v3 = v5;
      v4 = v6;
    }

    v7 = 0x616570536C6C7566;
    v8 = 0xE90000000000006BLL;
    if (a1 != 4)
    {
      v7 = 0xD000000000000011;
      v8 = 0x80000001DCA7AEF0;
    }

    if (a1 <= 5u)
    {
      v9 = v7;
    }

    else
    {
      v9 = v3;
    }

    if (v2 <= 5)
    {
      v10 = v8;
    }

    else
    {
      v10 = v4;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v15 = 0xE700000000000000;
        if (v9 != 0x646E616D6D6F63)
        {
          goto LABEL_54;
        }
      }

      else
      {
        v15 = 0x80000001DCA7AEC0;
        if (v9 != 0xD000000000000012)
        {
          goto LABEL_54;
        }
      }

      goto LABEL_52;
    }

    if (a2 != 2)
    {
      v15 = 0xE900000000000074;
      if (v9 != 0x6E6972506C6C7566)
      {
        goto LABEL_54;
      }

      goto LABEL_52;
    }

    v16 = 0x55747865746E6F63;
    v17 = 1952539760;
    goto LABEL_48;
  }

  if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v15 = 0xE90000000000006BLL;
      if (v9 != 0x616570536C6C7566)
      {
        goto LABEL_54;
      }

      goto LABEL_52;
    }

    v18 = "redactedFullPrint";
  }

  else
  {
    if (a2 != 6)
    {
      if (a2 == 7)
      {
        v15 = 0xEF656372756F536ELL;
        if (v9 != 0x6F69747563657865)
        {
          goto LABEL_54;
        }

        goto LABEL_52;
      }

      v16 = 0x7365527070416E69;
      v17 = 1936617328;
LABEL_48:
      v15 = v17 | 0xED00006500000000;
      if (v9 != v16)
      {
        goto LABEL_54;
      }

      goto LABEL_52;
    }

    v18 = "redactedFullSpeak";
  }

  v15 = (v18 - 32) | 0x8000000000000000;
  if (v9 != 0xD000000000000011)
  {
LABEL_54:
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_55;
  }

LABEL_52:
  if (v10 != v15)
  {
    goto LABEL_54;
  }

  v19 = 1;
LABEL_55:

  return v19 & 1;
}

{
  v2 = a1;
  if (a1 <= 2u)
  {
    v8 = 0x80000001DCA7AAA0;
    v9 = 0x6E4973656D6D6F70;
    if (a1 == 1)
    {
      v9 = 0xD000000000000014;
    }

    else
    {
      v8 = 0xEA00000000006F66;
    }

    if (a1)
    {
      v6 = v9;
    }

    else
    {
      v6 = 0x7365737261506C6ELL;
    }

    if (v2)
    {
      v7 = v8;
    }

    else
    {
      v7 = 0xE800000000000000;
    }
  }

  else
  {
    v3 = 0x80000001DCA7AB00;
    v4 = 0xD000000000000011;
    if (a1 == 5)
    {
      v4 = 0xD000000000000014;
    }

    else
    {
      v3 = 0x80000001DCA7AB20;
    }

    v5 = 0x80000001DCA7AAC0;
    if (a1 != 3)
    {
      v5 = 0x80000001DCA7AAE0;
    }

    if (a1 <= 4u)
    {
      v6 = 0xD000000000000015;
    }

    else
    {
      v6 = v4;
    }

    if (v2 <= 4)
    {
      v7 = v5;
    }

    else
    {
      v7 = v3;
    }
  }

  if (a2 <= 2u)
  {
    if (!a2)
    {
      v12 = 0xE800000000000000;
      if (v6 != 0x7365737261506C6ELL)
      {
        goto LABEL_43;
      }

      goto LABEL_41;
    }

    if (a2 != 1)
    {
      v12 = 0xEA00000000006F66;
      if (v6 != 0x6E4973656D6D6F70)
      {
        goto LABEL_43;
      }

      goto LABEL_41;
    }

    v11 = "nlResponseStatusCode";
    goto LABEL_31;
  }

  if (a2 <= 4u)
  {
    if (a2 == 3)
    {
      v10 = "languageVariantResult";
    }

    else
    {
      v10 = "responseVariantResult";
    }

    v12 = (v10 - 32) | 0x8000000000000000;
    if (v6 != 0xD000000000000015)
    {
      goto LABEL_43;
    }

    goto LABEL_41;
  }

  if (a2 == 5)
  {
    v11 = "serverFallbackReason";
LABEL_31:
    v12 = (v11 - 32) | 0x8000000000000000;
    if (v6 != 0xD000000000000014)
    {
      goto LABEL_43;
    }

    goto LABEL_41;
  }

  v12 = 0x80000001DCA7AB20;
  if (v6 != 0xD000000000000011)
  {
LABEL_43:
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_44;
  }

LABEL_41:
  if (v7 != v12)
  {
    goto LABEL_43;
  }

  v13 = 1;
LABEL_44:

  return v13 & 1;
}

id UserSpecificInfo.__allocating_init(userId:userIdentityClassification:rawVoiceIDScore:userAttribute:isFirstInteractionForUser:didSpeakerChange:isOnlyUserInHome:voiceProfilesInFlight:twentyFourHourTimeDisplay:explicitContentAllowed:censorSpeech:wasSpeechProfileUsedByASR:companionAssistantId:meCard:preferredLanguage:countryCode:temperatureUnit:lowScoreThreshold:personaId:meetsUserSessionThreshold:meetsPersonalRequestThreshold:hasActiveUserSession:userSessionState:)(uint64_t a1, uint64_t a2, char *a3, int a4, char *a5, char a6, char a7, char a8, char a9, char a10, char a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, char a27, char a28, uint64_t a29)
{
  v35 = objc_allocWithZone(v29);
  v36 = *a3;
  v37 = *a5;
  v35[OBJC_IVAR___SKEUserSpecificInfo____lazy_storage___isGroundingConditionallyNeeded] = 2;
  v38 = &v35[OBJC_IVAR___SKEUserSpecificInfo_userId];
  *v38 = a1;
  v38[1] = a2;
  v35[OBJC_IVAR___SKEUserSpecificInfo_userIdentityClassification] = v36;
  *&v35[OBJC_IVAR___SKEUserSpecificInfo_rawVoiceIDScore] = a4;
  v35[OBJC_IVAR___SKEUserSpecificInfo_userAttribute] = v37 & 1;
  v35[OBJC_IVAR___SKEUserSpecificInfo_isFirstInteractionForUser] = a6;
  v35[OBJC_IVAR___SKEUserSpecificInfo_didSpeakerChange] = a7;
  v35[OBJC_IVAR___SKEUserSpecificInfo_isOnlyUserInHome] = a8;
  v35[OBJC_IVAR___SKEUserSpecificInfo_explicitContentAllowed] = a11;
  v35[OBJC_IVAR___SKEUserSpecificInfo_censorSpeech] = a12;
  v35[OBJC_IVAR___SKEUserSpecificInfo_wasSpeechProfileUsedByASR] = a13;
  v39 = &v35[OBJC_IVAR___SKEUserSpecificInfo_companionAssistantId];
  *v39 = a14;
  v39[1] = a15;
  *&v35[OBJC_IVAR___SKEUserSpecificInfo_meCard] = a16;
  v35[OBJC_IVAR___SKEUserSpecificInfo_voiceProfilesInFlight] = a9;
  v35[OBJC_IVAR___SKEUserSpecificInfo_twentyFourHourTimeDisplay] = a10;
  v40 = &v35[OBJC_IVAR___SKEUserSpecificInfo_preferredLanguage];
  *v40 = a17;
  v40[1] = a18;
  v41 = &v35[OBJC_IVAR___SKEUserSpecificInfo_countryCode];
  *v41 = a19;
  v41[1] = a20;
  v42 = &v35[OBJC_IVAR___SKEUserSpecificInfo_temperatureUnit];
  *v42 = a21;
  v42[1] = a22;
  v43 = &v35[OBJC_IVAR___SKEUserSpecificInfo_lowScoreThreshold];
  *v43 = a23;
  v43[4] = BYTE4(a23) & 1;
  v44 = &v35[OBJC_IVAR___SKEUserSpecificInfo_personaId];
  *v44 = a24;
  v44[1] = a25;
  v35[OBJC_IVAR___SKEUserSpecificInfo_meetsUserSessionThreshold] = a26;
  v35[OBJC_IVAR___SKEUserSpecificInfo_meetsPersonalRequestThreshold] = a27;
  v35[OBJC_IVAR___SKEUserSpecificInfo_hasActiveUserSession] = a28;
  v45 = OBJC_IVAR___SKEUserSpecificInfo_userSessionState;
  v46 = type metadata accessor for UserSessionState();
  v47 = *(v46 - 8);
  (*(v47 + 16))(&v35[v45], a29, v46);
  v54.receiver = v35;
  v54.super_class = v53;
  v48 = objc_msgSendSuper2(&v54, sel_init);
  (*(v47 + 8))(a29, v46);
  return v48;
}

SiriKitRuntime::UserIdentityClassification_optional __swiftcall UserIdentityClassification.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of UserIdentityClassification.init(rawValue:), v3);

  v7 = 5;
  if (v5 < 5)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

uint64_t UserIdentityClassification.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E656469666E6F63;
  v3 = 0x31657275736E75;
  v4 = 0x4E657275736E75;
  if (v1 != 3)
  {
    v4 = 0x6E776F6E6B6E75;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6E776F6E6BLL;
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

Swift::Int protocol witness for Hashable.hashValue.getter in conformance UserIdentityClassification()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance UserIdentityClassification(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance UserIdentityClassification(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for RawRepresentable.rawValue.getter in conformance UserIdentityClassification(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000074;
  v4 = 0x6E656469666E6F63;
  v5 = 0x31657275736E75;
  v6 = 0x4E657275736E75;
  if (v2 != 3)
  {
    v6 = 0x6E776F6E6B6E75;
  }

  if (v2 != 2)
  {
    v5 = v6;
  }

  if (*v1)
  {
    v4 = 0x6E776F6E6BLL;
    v3 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v7 = v4;
  }

  else
  {
    v7 = v5;
  }

  if (*v1 > 1u)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v7;
  a1[1] = v3;
}

SiriKitRuntime::UserAttribute_optional __swiftcall UserAttribute.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of UserAttribute.init(rawValue:), v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *v4 = v7;
  return result;
}

uint64_t UserAttribute.rawValue.getter()
{
  if (*v0)
  {
    return 0x726564697374756FLL;
  }

  else
  {
    return 0x72656E776FLL;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance UserAttribute(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x726564697374756FLL;
  }

  else
  {
    v3 = 0x72656E776FLL;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x726564697374756FLL;
  }

  else
  {
    v5 = 0x72656E776FLL;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
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

Swift::Int protocol witness for Hashable.hashValue.getter in conformance UserAttribute()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance UserAttribute(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance UserAttribute(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance UserAttribute@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of UserAttribute.init(rawValue:), *a1);

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

void protocol witness for RawRepresentable.rawValue.getter in conformance UserAttribute(uint64_t *a1@<X8>)
{
  v2 = 0x72656E776FLL;
  if (*v1)
  {
    v2 = 0x726564697374756FLL;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t static UserSpecificInfo.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  static UserSpecificInfo.supportsSecureCoding = a1;
  return result;
}

uint64_t UserSpecificInfo.userId.getter()
{
  v1 = *(v0 + OBJC_IVAR___SKEUserSpecificInfo_userId);

  return v1;
}

uint64_t UserSpecificInfo.userSessionState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___SKEUserSpecificInfo_userSessionState;
  v4 = type metadata accessor for UserSessionState();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t UserSpecificInfo.companionAssistantId.getter()
{
  v1 = *(v0 + OBJC_IVAR___SKEUserSpecificInfo_companionAssistantId);

  return v1;
}

void *UserSpecificInfo.meCard.getter()
{
  v1 = *(v0 + OBJC_IVAR___SKEUserSpecificInfo_meCard);
  v2 = v1;
  return v1;
}

uint64_t UserSpecificInfo.preferredLanguage.getter()
{
  v1 = *(v0 + OBJC_IVAR___SKEUserSpecificInfo_preferredLanguage);

  return v1;
}

uint64_t UserSpecificInfo.countryCode.getter()
{
  v1 = *(v0 + OBJC_IVAR___SKEUserSpecificInfo_countryCode);

  return v1;
}

uint64_t UserSpecificInfo.temperatureUnit.getter()
{
  v1 = *(v0 + OBJC_IVAR___SKEUserSpecificInfo_temperatureUnit);

  return v1;
}

uint64_t UserSpecificInfo.personaId.getter()
{
  v1 = *(v0 + OBJC_IVAR___SKEUserSpecificInfo_personaId);

  return v1;
}

id UserSpecificInfo.init(userId:userIdentityClassification:rawVoiceIDScore:userAttribute:isFirstInteractionForUser:didSpeakerChange:isOnlyUserInHome:voiceProfilesInFlight:twentyFourHourTimeDisplay:explicitContentAllowed:censorSpeech:wasSpeechProfileUsedByASR:companionAssistantId:meCard:preferredLanguage:countryCode:temperatureUnit:lowScoreThreshold:personaId:meetsUserSessionThreshold:meetsPersonalRequestThreshold:hasActiveUserSession:userSessionState:)(uint64_t a1, uint64_t a2, _BYTE *a3, int a4, _BYTE *a5, char a6, char a7, char a8, char a9, char a10, char a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, char a24, uint64_t a25, uint64_t a26, char a27, char a28, char a29, uint64_t a30)
{
  v30[OBJC_IVAR___SKEUserSpecificInfo____lazy_storage___isGroundingConditionallyNeeded] = 2;
  v31 = &v30[OBJC_IVAR___SKEUserSpecificInfo_userId];
  *v31 = a1;
  v31[1] = a2;
  v30[OBJC_IVAR___SKEUserSpecificInfo_userIdentityClassification] = *a3;
  *&v30[OBJC_IVAR___SKEUserSpecificInfo_rawVoiceIDScore] = a4;
  v30[OBJC_IVAR___SKEUserSpecificInfo_userAttribute] = *a5 & 1;
  v30[OBJC_IVAR___SKEUserSpecificInfo_isFirstInteractionForUser] = a6;
  v30[OBJC_IVAR___SKEUserSpecificInfo_didSpeakerChange] = a7;
  v30[OBJC_IVAR___SKEUserSpecificInfo_isOnlyUserInHome] = a8;
  v30[OBJC_IVAR___SKEUserSpecificInfo_explicitContentAllowed] = a11;
  v30[OBJC_IVAR___SKEUserSpecificInfo_censorSpeech] = a12;
  v30[OBJC_IVAR___SKEUserSpecificInfo_wasSpeechProfileUsedByASR] = a13;
  v32 = &v30[OBJC_IVAR___SKEUserSpecificInfo_companionAssistantId];
  *v32 = a14;
  v32[1] = a15;
  *&v30[OBJC_IVAR___SKEUserSpecificInfo_meCard] = a16;
  v30[OBJC_IVAR___SKEUserSpecificInfo_voiceProfilesInFlight] = a9;
  v30[OBJC_IVAR___SKEUserSpecificInfo_twentyFourHourTimeDisplay] = a10;
  v33 = &v30[OBJC_IVAR___SKEUserSpecificInfo_preferredLanguage];
  *v33 = a17;
  v33[1] = a18;
  v34 = &v30[OBJC_IVAR___SKEUserSpecificInfo_countryCode];
  *v34 = a19;
  v34[1] = a20;
  v35 = &v30[OBJC_IVAR___SKEUserSpecificInfo_temperatureUnit];
  *v35 = a21;
  v35[1] = a22;
  v36 = &v30[OBJC_IVAR___SKEUserSpecificInfo_lowScoreThreshold];
  *v36 = a23;
  v36[4] = a24 & 1;
  v37 = &v30[OBJC_IVAR___SKEUserSpecificInfo_personaId];
  *v37 = a25;
  v37[1] = a26;
  v30[OBJC_IVAR___SKEUserSpecificInfo_meetsUserSessionThreshold] = a27;
  v30[OBJC_IVAR___SKEUserSpecificInfo_meetsPersonalRequestThreshold] = a28;
  v30[OBJC_IVAR___SKEUserSpecificInfo_hasActiveUserSession] = a29;
  v38 = OBJC_IVAR___SKEUserSpecificInfo_userSessionState;
  v39 = type metadata accessor for UserSessionState();
  v40 = *(v39 - 8);
  (*(v40 + 16))(&v30[v38], a30, v39);
  v43.receiver = v30;
  v43.super_class = type metadata accessor for UserSpecificInfo(0);
  v41 = objc_msgSendSuper2(&v43, sel_init);
  (*(v40 + 8))(a30, v39);
  return v41;
}

id UserSpecificInfo.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes16UserSessionStateOSgMd, &_s16SiriMessageTypes16UserSessionStateOSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v119 - v5;
  v7 = type metadata accessor for UserSessionState();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v119 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1[OBJC_IVAR___SKEUserSpecificInfo____lazy_storage___isGroundingConditionallyNeeded] = 2;
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSString, 0x1E696AEC0);
  v11 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v11)
  {

LABEL_19:
    type metadata accessor for UserSpecificInfo(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v12 = v11;
  v124 = v6;
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = &v1[OBJC_IVAR___SKEUserSpecificInfo_userId];
  *v14 = v13;
  v14[1] = v15;
  v16 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v16)
  {

    goto LABEL_18;
  }

  v17 = v16;
  v18._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  UserIdentityClassification.init(rawValue:)(v18);
  if (v125 == 5)
  {

LABEL_18:

    goto LABEL_19;
  }

  v122 = v8;
  v123 = v17;
  v121 = v7;
  v2[OBJC_IVAR___SKEUserSpecificInfo_userIdentityClassification] = v125;
  v19 = MEMORY[0x1E12A1410](0x6563696F56776172, 0xEF65726F63534449);
  v20 = [a1 decodeInt32ForKey_];

  *&v2[OBJC_IVAR___SKEUserSpecificInfo_rawVoiceIDScore] = v20;
  v21 = MEMORY[0x1E12A1410](0xD000000000000019, 0x80000001DCA8BE90);
  LOBYTE(v20) = [a1 decodeBoolForKey_];

  v2[OBJC_IVAR___SKEUserSpecificInfo_isFirstInteractionForUser] = v20;
  v22 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v22)
  {

    goto LABEL_18;
  }

  v120 = v22;
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;
  v26._countAndFlagsBits = v23;
  v26._object = v25;
  v27 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of UserSpecificInfo.init(coder:), v26);

  if (v27)
  {
    if (v27 != 1)
    {

      goto LABEL_18;
    }

    v28 = 1;
  }

  else
  {
    v28 = 0;
  }

  v2[OBJC_IVAR___SKEUserSpecificInfo_userAttribute] = v28;
  v29 = MEMORY[0x1E12A1410](0xD000000000000010, 0x80000001DCA8BEB0);
  v30 = [a1 decodeBoolForKey_];

  v2[OBJC_IVAR___SKEUserSpecificInfo_didSpeakerChange] = v30;
  v119[1] = 0xD000000000000010;
  v31 = MEMORY[0x1E12A1410](0xD000000000000010, 0x80000001DCA8BED0);
  v32 = [a1 decodeBoolForKey_];

  v2[OBJC_IVAR___SKEUserSpecificInfo_isOnlyUserInHome] = v32;
  v33 = MEMORY[0x1E12A1410](0xD000000000000015, 0x80000001DCA8BEF0);
  v34 = [a1 decodeBoolForKey_];

  v2[OBJC_IVAR___SKEUserSpecificInfo_voiceProfilesInFlight] = v34;
  v35 = MEMORY[0x1E12A1410](0xD000000000000019, 0x80000001DCA8BF10);
  v36 = [a1 decodeBoolForKey_];

  v2[OBJC_IVAR___SKEUserSpecificInfo_twentyFourHourTimeDisplay] = v36;
  v37 = MEMORY[0x1E12A1410](0xD000000000000016, 0x80000001DCA8BF30);
  v38 = [a1 decodeBoolForKey_];

  v2[OBJC_IVAR___SKEUserSpecificInfo_explicitContentAllowed] = v38;
  v39 = MEMORY[0x1E12A1410](0x7053726F736E6563, 0xEC00000068636565);
  v40 = [a1 decodeBoolForKey_];

  v2[OBJC_IVAR___SKEUserSpecificInfo_censorSpeech] = v40;
  v41 = MEMORY[0x1E12A1410](0xD000000000000019, 0x80000001DCA8BF50);
  v42 = [a1 decodeBoolForKey_];

  v2[OBJC_IVAR___SKEUserSpecificInfo_wasSpeechProfileUsedByASR] = v42;
  v43 = MEMORY[0x1E12A1410](0xD000000000000019, 0x80000001DCA7FA40);
  v44 = [a1 decodeBoolForKey_];

  v2[OBJC_IVAR___SKEUserSpecificInfo_meetsUserSessionThreshold] = v44;
  v45 = MEMORY[0x1E12A1410](0xD00000000000001DLL, 0x80000001DCA7FA60);
  v46 = [a1 decodeBoolForKey_];

  v2[OBJC_IVAR___SKEUserSpecificInfo_meetsPersonalRequestThreshold] = v46;
  v47 = MEMORY[0x1E12A1410](0xD000000000000014, 0x80000001DCA8BF70);
  v48 = [a1 decodeBoolForKey_];

  v2[OBJC_IVAR___SKEUserSpecificInfo_hasActiveUserSession] = v48;
  v49 = MEMORY[0x1E12A1410](0xD000000000000014, 0x80000001DCA8BF90);
  v50 = [a1 containsValueForKey_];

  if (v50)
  {
    v51 = NSCoder.decodeObject<A>(of:forKey:)();
    if (v51)
    {
      v52 = v51;
      v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v55 = v54;
    }

    else
    {
      v53 = 0;
      v55 = 0;
    }

    v58 = &v2[OBJC_IVAR___SKEUserSpecificInfo_companionAssistantId];
    *v58 = v53;
    v58[1] = v55;
  }

  else
  {
    v56 = &v2[OBJC_IVAR___SKEUserSpecificInfo_companionAssistantId];
    *v56 = 0;
    v56[1] = 0;
  }

  v59 = MEMORY[0x1E12A1410](0x64726143656DLL, 0xE600000000000000);
  v60 = [a1 containsValueForKey_];

  if (v60)
  {
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SAPerson, 0x1E69C7930);
    v61 = NSCoder.decodeObject<A>(of:forKey:)();
  }

  else
  {
    v61 = 0;
  }

  *&v2[OBJC_IVAR___SKEUserSpecificInfo_meCard] = v61;
  v62 = MEMORY[0x1E12A1410](0xD000000000000011, 0x80000001DCA8BFB0);
  v63 = [a1 containsValueForKey_];

  if (v63)
  {
    v64 = NSCoder.decodeObject<A>(of:forKey:)();
    if (v64)
    {
      v65 = v64;
      v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v68 = v67;
    }

    else
    {
      v66 = 0;
      v68 = 0;
    }

    v70 = &v2[OBJC_IVAR___SKEUserSpecificInfo_preferredLanguage];
    *v70 = v66;
    v70[1] = v68;
  }

  else
  {
    v69 = &v2[OBJC_IVAR___SKEUserSpecificInfo_preferredLanguage];
    *v69 = 0;
    v69[1] = 0;
  }

  v71 = MEMORY[0x1E12A1410](0x437972746E756F63, 0xEB0000000065646FLL);
  v72 = [a1 containsValueForKey_];

  if (v72)
  {
    v73 = NSCoder.decodeObject<A>(of:forKey:)();
    if (v73)
    {
      v74 = v73;
      v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v77 = v76;
    }

    else
    {
      v75 = 0;
      v77 = 0;
    }

    v79 = &v2[OBJC_IVAR___SKEUserSpecificInfo_countryCode];
    *v79 = v75;
    v79[1] = v77;
  }

  else
  {
    v78 = &v2[OBJC_IVAR___SKEUserSpecificInfo_countryCode];
    *v78 = 0;
    v78[1] = 0;
  }

  v80 = MEMORY[0x1E12A1410](0x74617265706D6574, 0xEF74696E55657275);
  v81 = [a1 containsValueForKey_];

  if (v81)
  {
    v82 = NSCoder.decodeObject<A>(of:forKey:)();
    if (v82)
    {
      v83 = v82;
      v84 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v86 = v85;
    }

    else
    {
      v84 = 0;
      v86 = 0;
    }

    v88 = &v2[OBJC_IVAR___SKEUserSpecificInfo_temperatureUnit];
    *v88 = v84;
    v88[1] = v86;
  }

  else
  {
    v87 = &v2[OBJC_IVAR___SKEUserSpecificInfo_temperatureUnit];
    *v87 = 0;
    v87[1] = 0;
  }

  v89 = MEMORY[0x1E12A1410](0xD000000000000011, 0x80000001DCA8BFD0);
  v90 = [a1 containsValueForKey_];

  if (v90)
  {
    v91 = MEMORY[0x1E12A1410](0xD000000000000011, 0x80000001DCA8BFD0);
    v92 = [a1 decodeInt32ForKey_];
  }

  else
  {
    v92 = 0;
  }

  v93 = &v2[OBJC_IVAR___SKEUserSpecificInfo_lowScoreThreshold];
  *v93 = v92;
  v93[4] = v90 ^ 1;
  v94 = MEMORY[0x1E12A1410](0x49616E6F73726570, 0xE900000000000064);
  v95 = [a1 containsValueForKey_];

  if (v95)
  {
    v96 = NSCoder.decodeObject<A>(of:forKey:)();
    if (v96)
    {
      v97 = v96;
      v98 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v100 = v99;
    }

    else
    {
      v98 = 0;
      v100 = 0;
    }

    v102 = v121;
    v103 = v122;
    v104 = &v2[OBJC_IVAR___SKEUserSpecificInfo_personaId];
    *v104 = v98;
    v104[1] = v100;
  }

  else
  {
    v101 = &v2[OBJC_IVAR___SKEUserSpecificInfo_personaId];
    *v101 = 0;
    v101[1] = 0;
    v102 = v121;
    v103 = v122;
  }

  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSData, 0x1E695DEF0);
  v105 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v105)
  {
    goto LABEL_56;
  }

  v125 = xmmword_1DCA69F00;
  v106 = v105;
  static Data._conditionallyBridgeFromObjectiveC(_:result:)();

  v107 = *(&v125 + 1);
  if (*(&v125 + 1) >> 60 == 15)
  {
    v103 = v122;
LABEL_56:
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v110 = type metadata accessor for Logger();
    __swift_project_value_buffer(v110, static Logger.executor);
    v111 = Logger.logObject.getter();
    v112 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v111, v112))
    {
      v113 = swift_slowAlloc();
      *v113 = 0;
      _os_log_impl(&dword_1DC659000, v111, v112, "#user-session: Failed to decode userSessionState from NSCoder. Defaulting to .ambient", v113, 2u);
      v114 = v113;
      v102 = v121;
      MEMORY[0x1E12A2F50](v114, -1, -1);
    }

    (*(v103 + 104))(&v2[OBJC_IVAR___SKEUserSpecificInfo_userSessionState], *MEMORY[0x1E69D06E8], v102);
    goto LABEL_61;
  }

  v108 = v125;
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  lazy protocol witness table accessor for type UserSessionState and conformance UserSessionState(&lazy protocol witness table cache variable for type UserSessionState and conformance UserSessionState, MEMORY[0x1E69D0708]);
  v109 = v124;
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  outlined consume of Data?(v108, v107);

  v117 = v122;
  (*(v122 + 56))(v109, 0, 1, v102);
  v118 = *(v117 + 32);
  v118(v10, v109, v102);
  v118(&v2[OBJC_IVAR___SKEUserSpecificInfo_userSessionState], v10, v102);
LABEL_61:
  v115 = type metadata accessor for UserSpecificInfo(0);
  v126.receiver = v2;
  v126.super_class = v115;
  v116 = objc_msgSendSuper2(&v126, sel_init);

  return v116;
}

Swift::Void __swiftcall UserSpecificInfo.encode(with:)(NSCoder with)
{
  v2 = v1;
  v4 = MEMORY[0x1E12A1410](*(v1 + OBJC_IVAR___SKEUserSpecificInfo_userId), *(v1 + OBJC_IVAR___SKEUserSpecificInfo_userId + 8));
  v5 = MEMORY[0x1E12A1410](0x644972657375, 0xE600000000000000);
  [(objc_class *)with.super.isa encodeObject:v4 forKey:v5];

  v6 = *(v2 + OBJC_IVAR___SKEUserSpecificInfo_userIdentityClassification);
  if (v6 <= 1)
  {
    if (*(v2 + OBJC_IVAR___SKEUserSpecificInfo_userIdentityClassification))
    {
      v7 = 0xE500000000000000;
      v8 = 0x6E776F6E6BLL;
    }

    else
    {
      v7 = 0xE900000000000074;
      v8 = 0x6E656469666E6F63;
    }
  }

  else
  {
    v7 = 0xE700000000000000;
    if (v6 == 2)
    {
      v8 = 0x31657275736E75;
    }

    else if (v6 == 3)
    {
      v8 = 0x4E657275736E75;
    }

    else
    {
      v8 = 0x6E776F6E6B6E75;
    }
  }

  v9 = MEMORY[0x1E12A1410](v8, v7);

  v10 = MEMORY[0x1E12A1410](0xD00000000000001ALL, 0x80000001DCA8BE70);
  [(objc_class *)with.super.isa encodeObject:v9 forKey:v10];

  v11 = *(v2 + OBJC_IVAR___SKEUserSpecificInfo_rawVoiceIDScore);
  v12 = MEMORY[0x1E12A1410](0x6563696F56776172, 0xEF65726F63534449);
  [(objc_class *)with.super.isa encodeInt32:v11 forKey:v12];

  v13 = *(v2 + OBJC_IVAR___SKEUserSpecificInfo_isFirstInteractionForUser);
  v14 = MEMORY[0x1E12A1410](0xD000000000000019, 0x80000001DCA8BE90);
  [(objc_class *)with.super.isa encodeBool:v13 forKey:v14];

  if (*(v2 + OBJC_IVAR___SKEUserSpecificInfo_userAttribute))
  {
    v15 = 0x726564697374756FLL;
  }

  else
  {
    v15 = 0x72656E776FLL;
  }

  if (*(v2 + OBJC_IVAR___SKEUserSpecificInfo_userAttribute))
  {
    v16 = 0xE800000000000000;
  }

  else
  {
    v16 = 0xE500000000000000;
  }

  v17 = MEMORY[0x1E12A1410](v15, v16);

  v18 = MEMORY[0x1E12A1410](0x7274744172657375, 0xED00006574756269);
  [(objc_class *)with.super.isa encodeObject:v17 forKey:v18];

  v19 = *(v2 + OBJC_IVAR___SKEUserSpecificInfo_didSpeakerChange);
  v20 = MEMORY[0x1E12A1410](0xD000000000000010, 0x80000001DCA8BEB0);
  [(objc_class *)with.super.isa encodeBool:v19 forKey:v20];

  v21 = *(v2 + OBJC_IVAR___SKEUserSpecificInfo_isOnlyUserInHome);
  v22 = MEMORY[0x1E12A1410](0xD000000000000010, 0x80000001DCA8BED0);
  [(objc_class *)with.super.isa encodeBool:v21 forKey:v22];

  v23 = *(v2 + OBJC_IVAR___SKEUserSpecificInfo_voiceProfilesInFlight);
  v24 = MEMORY[0x1E12A1410](0xD000000000000015, 0x80000001DCA8BEF0);
  [(objc_class *)with.super.isa encodeBool:v23 forKey:v24];

  v25 = *(v2 + OBJC_IVAR___SKEUserSpecificInfo_twentyFourHourTimeDisplay);
  v26 = MEMORY[0x1E12A1410](0xD000000000000019, 0x80000001DCA8BF10);
  [(objc_class *)with.super.isa encodeBool:v25 forKey:v26];

  v27 = *(v2 + OBJC_IVAR___SKEUserSpecificInfo_explicitContentAllowed);
  v28 = MEMORY[0x1E12A1410](0xD000000000000016, 0x80000001DCA8BF30);
  [(objc_class *)with.super.isa encodeBool:v27 forKey:v28];

  v29 = *(v2 + OBJC_IVAR___SKEUserSpecificInfo_censorSpeech);
  v30 = MEMORY[0x1E12A1410](0x7053726F736E6563, 0xEC00000068636565);
  [(objc_class *)with.super.isa encodeBool:v29 forKey:v30];

  v31 = *(v2 + OBJC_IVAR___SKEUserSpecificInfo_wasSpeechProfileUsedByASR);
  v32 = MEMORY[0x1E12A1410](0xD000000000000019, 0x80000001DCA8BF50);
  [(objc_class *)with.super.isa encodeBool:v31 forKey:v32];

  v33 = *(v2 + OBJC_IVAR___SKEUserSpecificInfo_meetsUserSessionThreshold);
  v34 = MEMORY[0x1E12A1410](0xD000000000000019, 0x80000001DCA7FA40);
  [(objc_class *)with.super.isa encodeBool:v33 forKey:v34];

  v35 = *(v2 + OBJC_IVAR___SKEUserSpecificInfo_meetsPersonalRequestThreshold);
  v36 = MEMORY[0x1E12A1410](0xD00000000000001DLL, 0x80000001DCA7FA60);
  [(objc_class *)with.super.isa encodeBool:v35 forKey:v36];

  v37 = *(v2 + OBJC_IVAR___SKEUserSpecificInfo_hasActiveUserSession);
  v38 = MEMORY[0x1E12A1410](0xD000000000000014, 0x80000001DCA8BF70);
  [(objc_class *)with.super.isa encodeBool:v37 forKey:v38];

  if (*(v2 + OBJC_IVAR___SKEUserSpecificInfo_companionAssistantId + 8))
  {
    v39 = MEMORY[0x1E12A1410](*(v2 + OBJC_IVAR___SKEUserSpecificInfo_companionAssistantId));
    v40 = MEMORY[0x1E12A1410](0xD000000000000014, 0x80000001DCA8BF90);
    [(objc_class *)with.super.isa encodeObject:v39 forKey:v40];
  }

  v41 = *(v2 + OBJC_IVAR___SKEUserSpecificInfo_meCard);
  if (v41)
  {
    v42 = v41;
    v43 = MEMORY[0x1E12A1410](0x64726143656DLL, 0xE600000000000000);
    [(objc_class *)with.super.isa encodeObject:v42 forKey:v43];
  }

  if (*(v2 + OBJC_IVAR___SKEUserSpecificInfo_preferredLanguage + 8))
  {
    v44 = MEMORY[0x1E12A1410](*(v2 + OBJC_IVAR___SKEUserSpecificInfo_preferredLanguage));
    v45 = MEMORY[0x1E12A1410](0xD000000000000011, 0x80000001DCA8BFB0);
    [(objc_class *)with.super.isa encodeObject:v44 forKey:v45];
  }

  if (*(v2 + OBJC_IVAR___SKEUserSpecificInfo_countryCode + 8))
  {
    v46 = MEMORY[0x1E12A1410](*(v2 + OBJC_IVAR___SKEUserSpecificInfo_countryCode));
    v47 = MEMORY[0x1E12A1410](0x437972746E756F63, 0xEB0000000065646FLL);
    [(objc_class *)with.super.isa encodeObject:v46 forKey:v47];
  }

  if (*(v2 + OBJC_IVAR___SKEUserSpecificInfo_temperatureUnit + 8))
  {
    v48 = MEMORY[0x1E12A1410](*(v2 + OBJC_IVAR___SKEUserSpecificInfo_temperatureUnit));
    v49 = MEMORY[0x1E12A1410](0x74617265706D6574, 0xEF74696E55657275);
    [(objc_class *)with.super.isa encodeObject:v48 forKey:v49];
  }

  if ((*(v2 + OBJC_IVAR___SKEUserSpecificInfo_lowScoreThreshold + 4) & 1) == 0)
  {
    v50 = *(v2 + OBJC_IVAR___SKEUserSpecificInfo_lowScoreThreshold);
    v51 = MEMORY[0x1E12A1410](0xD000000000000011, 0x80000001DCA8BFD0);
    [(objc_class *)with.super.isa encodeInt32:v50 forKey:v51];
  }

  if (*(v2 + OBJC_IVAR___SKEUserSpecificInfo_personaId + 8))
  {
    v52 = MEMORY[0x1E12A1410](*(v2 + OBJC_IVAR___SKEUserSpecificInfo_personaId));
    v53 = MEMORY[0x1E12A1410](0x49616E6F73726570, 0xE900000000000064);
    [(objc_class *)with.super.isa encodeObject:v52 forKey:v53];
  }

  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  type metadata accessor for UserSessionState();
  lazy protocol witness table accessor for type UserSessionState and conformance UserSessionState(&lazy protocol witness table cache variable for type UserSessionState and conformance UserSessionState, MEMORY[0x1E69D0700]);
  v54 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v56 = v55;

  isa = Data._bridgeToObjectiveC()().super.isa;
  v58 = MEMORY[0x1E12A1410](0xD000000000000010, 0x80000001DCA7B380);
  [(objc_class *)with.super.isa encodeObject:isa forKey:v58];

  outlined consume of Data._Representation(v54, v56);
}

uint64_t UserSpecificInfo.isGroundingConditionallyNeeded.getter()
{
  v1 = OBJC_IVAR___SKEUserSpecificInfo____lazy_storage___isGroundingConditionallyNeeded;
  v2 = *(v0 + OBJC_IVAR___SKEUserSpecificInfo____lazy_storage___isGroundingConditionallyNeeded);
  if (v2 == 2)
  {
    LOBYTE(v2) = closure #1 in UserSpecificInfo.isGroundingConditionallyNeeded.getter(v0);
    *(v0 + v1) = v2 & 1;
  }

  return v2 & 1;
}

uint64_t closure #1 in UserSpecificInfo.isGroundingConditionallyNeeded.getter(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR___SKEUserSpecificInfo_isOnlyUserInHome);
  if (v1 == 1)
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Logger.executor);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      v6 = "isGroundingConditionallyNeeded: false: Only user in home";
LABEL_10:
      _os_log_impl(&dword_1DC659000, v3, v4, v6, v5, 2u);
      MEMORY[0x1E12A2F50](v5, -1, -1);
    }
  }

  else
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.executor);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      v6 = "isGroundingConditionallyNeeded: true, DialogEngine will determine if grounding is needed";
      goto LABEL_10;
    }
  }

  return v1 ^ 1u;
}

uint64_t (*UserSpecificInfo.isGroundingConditionallyNeeded.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  *(a1 + 8) = UserSpecificInfo.isGroundingConditionallyNeeded.getter() & 1;
  return UserSpecificInfo.isGroundingConditionallyNeeded.modify;
}

uint64_t UserSpecificInfo.isEqual(_:)(uint64_t a1)
{
  outlined init with copy of Any?(a1, v26);
  if (v27)
  {
    type metadata accessor for UserSpecificInfo(0);
    if (swift_dynamicCast())
    {
      v2 = *(v1 + OBJC_IVAR___SKEUserSpecificInfo_userId) == *&v25[OBJC_IVAR___SKEUserSpecificInfo_userId] && *(v1 + OBJC_IVAR___SKEUserSpecificInfo_userId + 8) == *&v25[OBJC_IVAR___SKEUserSpecificInfo_userId + 8];
      if (!v2 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (specialized == infix<A>(_:_:)(*(v1 + OBJC_IVAR___SKEUserSpecificInfo_userIdentityClassification), v25[OBJC_IVAR___SKEUserSpecificInfo_userIdentityClassification]) & 1) == 0 || *(v1 + OBJC_IVAR___SKEUserSpecificInfo_rawVoiceIDScore) != *&v25[OBJC_IVAR___SKEUserSpecificInfo_rawVoiceIDScore] || *(v1 + OBJC_IVAR___SKEUserSpecificInfo_isFirstInteractionForUser) != v25[OBJC_IVAR___SKEUserSpecificInfo_isFirstInteractionForUser])
      {
        goto LABEL_35;
      }

      if (*(v1 + OBJC_IVAR___SKEUserSpecificInfo_userAttribute))
      {
        v3 = 0x726564697374756FLL;
      }

      else
      {
        v3 = 0x72656E776FLL;
      }

      if (*(v1 + OBJC_IVAR___SKEUserSpecificInfo_userAttribute))
      {
        v4 = 0xE800000000000000;
      }

      else
      {
        v4 = 0xE500000000000000;
      }

      if (v25[OBJC_IVAR___SKEUserSpecificInfo_userAttribute])
      {
        v5 = 0x726564697374756FLL;
      }

      else
      {
        v5 = 0x72656E776FLL;
      }

      if (v25[OBJC_IVAR___SKEUserSpecificInfo_userAttribute])
      {
        v6 = 0xE800000000000000;
      }

      else
      {
        v6 = 0xE500000000000000;
      }

      if (v3 == v5 && v4 == v6)
      {
      }

      else
      {
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v7 & 1) == 0)
        {
          goto LABEL_35;
        }
      }

      if (*(v1 + OBJC_IVAR___SKEUserSpecificInfo_didSpeakerChange) != v25[OBJC_IVAR___SKEUserSpecificInfo_didSpeakerChange] || *(v1 + OBJC_IVAR___SKEUserSpecificInfo_isOnlyUserInHome) != v25[OBJC_IVAR___SKEUserSpecificInfo_isOnlyUserInHome] || *(v1 + OBJC_IVAR___SKEUserSpecificInfo_voiceProfilesInFlight) != v25[OBJC_IVAR___SKEUserSpecificInfo_voiceProfilesInFlight] || *(v1 + OBJC_IVAR___SKEUserSpecificInfo_twentyFourHourTimeDisplay) != v25[OBJC_IVAR___SKEUserSpecificInfo_twentyFourHourTimeDisplay] || *(v1 + OBJC_IVAR___SKEUserSpecificInfo_explicitContentAllowed) != v25[OBJC_IVAR___SKEUserSpecificInfo_explicitContentAllowed] || *(v1 + OBJC_IVAR___SKEUserSpecificInfo_censorSpeech) != v25[OBJC_IVAR___SKEUserSpecificInfo_censorSpeech] || *(v1 + OBJC_IVAR___SKEUserSpecificInfo_wasSpeechProfileUsedByASR) != v25[OBJC_IVAR___SKEUserSpecificInfo_wasSpeechProfileUsedByASR])
      {
        goto LABEL_35;
      }

      v10 = *(v1 + OBJC_IVAR___SKEUserSpecificInfo_companionAssistantId + 8);
      v11 = *&v25[OBJC_IVAR___SKEUserSpecificInfo_companionAssistantId + 8];
      if (v10)
      {
        if (!v11 || (*(v1 + OBJC_IVAR___SKEUserSpecificInfo_companionAssistantId) != *&v25[OBJC_IVAR___SKEUserSpecificInfo_companionAssistantId] || v10 != v11) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_35;
        }
      }

      else if (v11)
      {
        goto LABEL_35;
      }

      v12 = v1;
      v13 = *(v1 + OBJC_IVAR___SKEUserSpecificInfo_meCard);
      v8 = *&v25[OBJC_IVAR___SKEUserSpecificInfo_meCard];
      if (v13)
      {
        if (!v8)
        {

          return v8 & 1;
        }

        type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SAPerson, 0x1E69C7930);
        v14 = v8;
        v15 = v13;
        v16 = static NSObject.== infix(_:_:)();

        if ((v16 & 1) == 0)
        {
          goto LABEL_35;
        }
      }

      else if (v8)
      {
        goto LABEL_35;
      }

      v17 = *(v12 + OBJC_IVAR___SKEUserSpecificInfo_preferredLanguage + 8);
      v18 = *&v25[OBJC_IVAR___SKEUserSpecificInfo_preferredLanguage + 8];
      if (v17)
      {
        if (!v18 || (*(v12 + OBJC_IVAR___SKEUserSpecificInfo_preferredLanguage) != *&v25[OBJC_IVAR___SKEUserSpecificInfo_preferredLanguage] || v17 != v18) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_35;
        }
      }

      else if (v18)
      {
        goto LABEL_35;
      }

      v19 = *(v12 + OBJC_IVAR___SKEUserSpecificInfo_countryCode + 8);
      v20 = *&v25[OBJC_IVAR___SKEUserSpecificInfo_countryCode + 8];
      if (v19)
      {
        if (!v20 || (*(v12 + OBJC_IVAR___SKEUserSpecificInfo_countryCode) != *&v25[OBJC_IVAR___SKEUserSpecificInfo_countryCode] || v19 != v20) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_35;
        }
      }

      else if (v20)
      {
        goto LABEL_35;
      }

      v21 = *(v12 + OBJC_IVAR___SKEUserSpecificInfo_temperatureUnit + 8);
      v22 = *&v25[OBJC_IVAR___SKEUserSpecificInfo_temperatureUnit + 8];
      if (v21)
      {
        if (!v22 || (*(v12 + OBJC_IVAR___SKEUserSpecificInfo_temperatureUnit) != *&v25[OBJC_IVAR___SKEUserSpecificInfo_temperatureUnit] || v21 != v22) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_35;
        }
      }

      else if (v22)
      {
        goto LABEL_35;
      }

      if (*(v12 + OBJC_IVAR___SKEUserSpecificInfo_lowScoreThreshold + 4))
      {
        if ((v25[OBJC_IVAR___SKEUserSpecificInfo_lowScoreThreshold + 4] & 1) == 0)
        {
          goto LABEL_35;
        }
      }

      else if ((v25[OBJC_IVAR___SKEUserSpecificInfo_lowScoreThreshold + 4] & 1) != 0 || *(v12 + OBJC_IVAR___SKEUserSpecificInfo_lowScoreThreshold) != *&v25[OBJC_IVAR___SKEUserSpecificInfo_lowScoreThreshold])
      {
        goto LABEL_35;
      }

      v23 = *(v12 + OBJC_IVAR___SKEUserSpecificInfo_personaId + 8);
      v24 = *&v25[OBJC_IVAR___SKEUserSpecificInfo_personaId + 8];
      if (v23)
      {
        if (!v24 || (*(v12 + OBJC_IVAR___SKEUserSpecificInfo_personaId) != *&v25[OBJC_IVAR___SKEUserSpecificInfo_personaId] || v23 != v24) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_35;
        }

LABEL_84:
        if (*(v12 + OBJC_IVAR___SKEUserSpecificInfo_meetsUserSessionThreshold) == v25[OBJC_IVAR___SKEUserSpecificInfo_meetsUserSessionThreshold] && *(v12 + OBJC_IVAR___SKEUserSpecificInfo_meetsPersonalRequestThreshold) == v25[OBJC_IVAR___SKEUserSpecificInfo_meetsPersonalRequestThreshold] && *(v12 + OBJC_IVAR___SKEUserSpecificInfo_hasActiveUserSession) == v25[OBJC_IVAR___SKEUserSpecificInfo_hasActiveUserSession])
        {
          LOBYTE(v8) = static UserSessionState.== infix(_:_:)();

          return v8 & 1;
        }

        goto LABEL_35;
      }

      if (!v24)
      {
        goto LABEL_84;
      }

LABEL_35:
    }
  }

  else
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v26, &_sypSgMd, &_sypSgMR);
  }

  LOBYTE(v8) = 0;
  return v8 & 1;
}

uint64_t UserSpecificInfo.debugDescription.getter()
{
  v1 = v0;
  v143.receiver = v0;
  v143.super_class = type metadata accessor for UserSpecificInfo(0);
  v2 = objc_msgSendSuper2(&v143, sel_debugDescription);
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v144[0] = v3;
  v144[1] = v5;
  MEMORY[0x1E12A1580](31520, 0xE200000000000000);
  v7 = v144[0];
  v6 = v144[1];
  strcpy(v144, "userId: ");
  BYTE1(v144[1]) = 0;
  WORD1(v144[1]) = 0;
  HIDWORD(v144[1]) = -402653184;
  MEMORY[0x1E12A1580](*&v1[OBJC_IVAR___SKEUserSpecificInfo_userId], *&v1[OBJC_IVAR___SKEUserSpecificInfo_userId + 8]);
  MEMORY[0x1E12A1580](8236, 0xE200000000000000);
  v8 = v144[0];
  v9 = v144[1];
  v144[0] = v7;
  v144[1] = v6;

  MEMORY[0x1E12A1580](v8, v9);

  v10 = v144[0];
  v11 = v144[1];
  v144[0] = 0xD00000000000001CLL;
  v144[1] = 0x80000001DCA8BFF0;
  v12 = v1[OBJC_IVAR___SKEUserSpecificInfo_userIdentityClassification];
  if (v12 <= 1)
  {
    if (v1[OBJC_IVAR___SKEUserSpecificInfo_userIdentityClassification])
    {
      v13 = 0xE500000000000000;
      v14 = 0x6E776F6E6BLL;
    }

    else
    {
      v13 = 0xE900000000000074;
      v14 = 0x6E656469666E6F63;
    }
  }

  else
  {
    v13 = 0xE700000000000000;
    if (v12 == 2)
    {
      v14 = 0x31657275736E75;
    }

    else if (v12 == 3)
    {
      v14 = 0x4E657275736E75;
    }

    else
    {
      v14 = 0x6E776F6E6B6E75;
    }
  }

  MEMORY[0x1E12A1580](v14, v13);

  MEMORY[0x1E12A1580](8236, 0xE200000000000000);
  v15 = v144[0];
  v16 = v144[1];
  v144[0] = v10;
  v144[1] = v11;

  MEMORY[0x1E12A1580](v15, v16);

  v17 = v144[0];
  v18 = v144[1];
  v144[0] = 0xD000000000000011;
  v144[1] = 0x80000001DCA8C010;
  v19 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1E12A1580](v19);

  MEMORY[0x1E12A1580](8236, 0xE200000000000000);
  v20 = v144[0];
  v21 = v144[1];
  v144[0] = v17;
  v144[1] = v18;

  MEMORY[0x1E12A1580](v20, v21);

  v23 = v144[0];
  v22 = v144[1];
  v24 = v1[OBJC_IVAR___SKEUserSpecificInfo_isFirstInteractionForUser];
  v144[0] = 0xD00000000000001BLL;
  v144[1] = 0x80000001DCA8C030;
  if (v24)
  {
    v25 = 1702195828;
  }

  else
  {
    v25 = 0x65736C6166;
  }

  if (v24)
  {
    v26 = 0xE400000000000000;
  }

  else
  {
    v26 = 0xE500000000000000;
  }

  MEMORY[0x1E12A1580](v25, v26);

  MEMORY[0x1E12A1580](8236, 0xE200000000000000);
  v27 = v144[0];
  v28 = v144[1];
  v144[0] = v23;
  v144[1] = v22;

  MEMORY[0x1E12A1580](v27, v28);

  v30 = v144[0];
  v29 = v144[1];
  v144[0] = 0x7274744172657375;
  v144[1] = 0xEF203A6574756269;
  if (v1[OBJC_IVAR___SKEUserSpecificInfo_userAttribute])
  {
    v31 = 0x726564697374756FLL;
  }

  else
  {
    v31 = 0x72656E776FLL;
  }

  if (v1[OBJC_IVAR___SKEUserSpecificInfo_userAttribute])
  {
    v32 = 0xE800000000000000;
  }

  else
  {
    v32 = 0xE500000000000000;
  }

  MEMORY[0x1E12A1580](v31, v32);

  MEMORY[0x1E12A1580](8236, 0xE200000000000000);
  v33 = v144[0];
  v34 = v144[1];
  v144[0] = v30;
  v144[1] = v29;

  MEMORY[0x1E12A1580](v33, v34);

  v36 = v144[0];
  v35 = v144[1];
  v144[0] = 0xD000000000000012;
  v144[1] = 0x80000001DCA8C050;
  if (v1[OBJC_IVAR___SKEUserSpecificInfo_didSpeakerChange])
  {
    v37 = 1702195828;
  }

  else
  {
    v37 = 0x65736C6166;
  }

  if (v1[OBJC_IVAR___SKEUserSpecificInfo_didSpeakerChange])
  {
    v38 = 0xE400000000000000;
  }

  else
  {
    v38 = 0xE500000000000000;
  }

  MEMORY[0x1E12A1580](v37, v38);

  MEMORY[0x1E12A1580](8236, 0xE200000000000000);
  v39 = v144[0];
  v40 = v144[1];
  v144[0] = v36;
  v144[1] = v35;

  MEMORY[0x1E12A1580](v39, v40);

  v42 = v144[0];
  v41 = v144[1];
  v144[0] = 0xD000000000000012;
  v144[1] = 0x80000001DCA8C070;
  if (v1[OBJC_IVAR___SKEUserSpecificInfo_isOnlyUserInHome])
  {
    v43 = 1702195828;
  }

  else
  {
    v43 = 0x65736C6166;
  }

  if (v1[OBJC_IVAR___SKEUserSpecificInfo_isOnlyUserInHome])
  {
    v44 = 0xE400000000000000;
  }

  else
  {
    v44 = 0xE500000000000000;
  }

  MEMORY[0x1E12A1580](v43, v44);

  MEMORY[0x1E12A1580](8236, 0xE200000000000000);
  v45 = v144[0];
  v46 = v144[1];
  v144[0] = v42;
  v144[1] = v41;

  MEMORY[0x1E12A1580](v45, v46);

  v48 = v144[0];
  v47 = v144[1];
  v144[0] = 0xD000000000000017;
  v144[1] = 0x80000001DCA8C090;
  if (v1[OBJC_IVAR___SKEUserSpecificInfo_voiceProfilesInFlight])
  {
    v49 = 1702195828;
  }

  else
  {
    v49 = 0x65736C6166;
  }

  if (v1[OBJC_IVAR___SKEUserSpecificInfo_voiceProfilesInFlight])
  {
    v50 = 0xE400000000000000;
  }

  else
  {
    v50 = 0xE500000000000000;
  }

  MEMORY[0x1E12A1580](v49, v50);

  MEMORY[0x1E12A1580](8236, 0xE200000000000000);
  v51 = v144[0];
  v52 = v144[1];
  v144[0] = v48;
  v144[1] = v47;

  MEMORY[0x1E12A1580](v51, v52);

  v54 = v144[0];
  v53 = v144[1];
  v144[0] = 0xD00000000000001BLL;
  v144[1] = 0x80000001DCA8C0B0;
  if (v1[OBJC_IVAR___SKEUserSpecificInfo_twentyFourHourTimeDisplay])
  {
    v55 = 1702195828;
  }

  else
  {
    v55 = 0x65736C6166;
  }

  if (v1[OBJC_IVAR___SKEUserSpecificInfo_twentyFourHourTimeDisplay])
  {
    v56 = 0xE400000000000000;
  }

  else
  {
    v56 = 0xE500000000000000;
  }

  MEMORY[0x1E12A1580](v55, v56);

  MEMORY[0x1E12A1580](8236, 0xE200000000000000);
  v57 = v144[0];
  v58 = v144[1];
  v144[0] = v54;
  v144[1] = v53;

  MEMORY[0x1E12A1580](v57, v58);

  v60 = v144[0];
  v59 = v144[1];
  v144[0] = 0xD000000000000018;
  v144[1] = 0x80000001DCA8C0D0;
  if (v1[OBJC_IVAR___SKEUserSpecificInfo_explicitContentAllowed])
  {
    v61 = 1702195828;
  }

  else
  {
    v61 = 0x65736C6166;
  }

  if (v1[OBJC_IVAR___SKEUserSpecificInfo_explicitContentAllowed])
  {
    v62 = 0xE400000000000000;
  }

  else
  {
    v62 = 0xE500000000000000;
  }

  MEMORY[0x1E12A1580](v61, v62);

  MEMORY[0x1E12A1580](8236, 0xE200000000000000);
  v63 = v144[0];
  v64 = v144[1];
  v144[0] = v60;
  v144[1] = v59;

  MEMORY[0x1E12A1580](v63, v64);

  v66 = v144[0];
  v65 = v144[1];
  strcpy(v144, "censorSpeech: ");
  HIBYTE(v144[1]) = -18;
  if (v1[OBJC_IVAR___SKEUserSpecificInfo_censorSpeech])
  {
    v67 = 1702195828;
  }

  else
  {
    v67 = 0x65736C6166;
  }

  if (v1[OBJC_IVAR___SKEUserSpecificInfo_censorSpeech])
  {
    v68 = 0xE400000000000000;
  }

  else
  {
    v68 = 0xE500000000000000;
  }

  MEMORY[0x1E12A1580](v67, v68);

  MEMORY[0x1E12A1580](8236, 0xE200000000000000);
  v69 = v144[0];
  v70 = v144[1];
  v144[0] = v66;
  v144[1] = v65;

  MEMORY[0x1E12A1580](v69, v70);

  v72 = v144[0];
  v71 = v144[1];
  v144[0] = 0xD00000000000001BLL;
  v144[1] = 0x80000001DCA8C0F0;
  if (v1[OBJC_IVAR___SKEUserSpecificInfo_wasSpeechProfileUsedByASR])
  {
    v73 = 1702195828;
  }

  else
  {
    v73 = 0x65736C6166;
  }

  if (v1[OBJC_IVAR___SKEUserSpecificInfo_wasSpeechProfileUsedByASR])
  {
    v74 = 0xE400000000000000;
  }

  else
  {
    v74 = 0xE500000000000000;
  }

  MEMORY[0x1E12A1580](v73, v74);

  MEMORY[0x1E12A1580](8236, 0xE200000000000000);
  v75 = v144[0];
  v76 = v144[1];
  v144[0] = v72;
  v144[1] = v71;

  MEMORY[0x1E12A1580](v75, v76);

  v77 = v144[0];
  v78 = v144[1];
  v144[0] = 0xD000000000000016;
  v144[1] = 0x80000001DCA8C110;
  if (*&v1[OBJC_IVAR___SKEUserSpecificInfo_companionAssistantId + 8])
  {
    v79 = *&v1[OBJC_IVAR___SKEUserSpecificInfo_companionAssistantId];
    v80 = *&v1[OBJC_IVAR___SKEUserSpecificInfo_companionAssistantId + 8];
  }

  else
  {
    v80 = 0xE300000000000000;
    v79 = 7104878;
  }

  MEMORY[0x1E12A1580](v79, v80);

  MEMORY[0x1E12A1580](8236, 0xE200000000000000);
  v81 = v144[0];
  v82 = v144[1];
  v144[0] = v77;
  v144[1] = v78;

  MEMORY[0x1E12A1580](v81, v82);

  v83 = v144[0];
  v84 = v144[1];
  strcpy(v144, "meCard: ");
  BYTE1(v144[1]) = 0;
  WORD1(v144[1]) = 0;
  HIDWORD(v144[1]) = -402653184;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8SAPersonCSgMd, &_sSo8SAPersonCSgMR);
  v85 = Optional.debugDescription.getter();
  MEMORY[0x1E12A1580](v85);

  MEMORY[0x1E12A1580](8236, 0xE200000000000000);
  v86 = v144[0];
  v87 = v144[1];
  v144[0] = v83;
  v144[1] = v84;

  MEMORY[0x1E12A1580](v86, v87);

  v89 = v144[0];
  v88 = v144[1];
  v144[0] = 0xD000000000000013;
  v144[1] = 0x80000001DCA8C130;
  if (*&v1[OBJC_IVAR___SKEUserSpecificInfo_preferredLanguage + 8])
  {
    v90 = *&v1[OBJC_IVAR___SKEUserSpecificInfo_preferredLanguage];
    v91 = *&v1[OBJC_IVAR___SKEUserSpecificInfo_preferredLanguage + 8];
  }

  else
  {
    v91 = 0xE300000000000000;
    v90 = 7104878;
  }

  MEMORY[0x1E12A1580](v90, v91);

  MEMORY[0x1E12A1580](8236, 0xE200000000000000);
  v92 = v144[0];
  v93 = v144[1];
  v144[0] = v89;
  v144[1] = v88;

  MEMORY[0x1E12A1580](v92, v93);

  v95 = v144[0];
  v94 = v144[1];
  strcpy(v144, "countryCode: ");
  HIWORD(v144[1]) = -4864;
  if (*&v1[OBJC_IVAR___SKEUserSpecificInfo_countryCode + 8])
  {
    v96 = *&v1[OBJC_IVAR___SKEUserSpecificInfo_countryCode];
    v97 = *&v1[OBJC_IVAR___SKEUserSpecificInfo_countryCode + 8];
  }

  else
  {
    v97 = 0xE300000000000000;
    v96 = 7104878;
  }

  MEMORY[0x1E12A1580](v96, v97);

  MEMORY[0x1E12A1580](8236, 0xE200000000000000);
  v98 = v144[0];
  v99 = v144[1];
  v144[0] = v95;
  v144[1] = v94;

  MEMORY[0x1E12A1580](v98, v99);

  v101 = v144[0];
  v100 = v144[1];
  v144[0] = 0xD000000000000011;
  v144[1] = 0x80000001DCA8C150;
  if (*&v1[OBJC_IVAR___SKEUserSpecificInfo_temperatureUnit + 8])
  {
    v102 = *&v1[OBJC_IVAR___SKEUserSpecificInfo_temperatureUnit];
    v103 = *&v1[OBJC_IVAR___SKEUserSpecificInfo_temperatureUnit + 8];
  }

  else
  {
    v103 = 0xE300000000000000;
    v102 = 7104878;
  }

  MEMORY[0x1E12A1580](v102, v103);

  MEMORY[0x1E12A1580](8236, 0xE200000000000000);
  v104 = v144[0];
  v105 = v144[1];
  v144[0] = v101;
  v144[1] = v100;

  MEMORY[0x1E12A1580](v104, v105);

  v107 = v144[0];
  v106 = v144[1];
  v144[0] = 0xD000000000000013;
  v144[1] = 0x80000001DCA8C170;
  if (v1[OBJC_IVAR___SKEUserSpecificInfo_lowScoreThreshold + 4])
  {
    v108 = 0xE300000000000000;
    v109 = 7104878;
  }

  else
  {
    lazy protocol witness table accessor for type Int32 and conformance Int32();
    v109 = BinaryInteger.description.getter();
    v108 = v110;
  }

  MEMORY[0x1E12A1580](v109, v108);

  MEMORY[0x1E12A1580](8236, 0xE200000000000000);
  v111 = v144[0];
  v112 = v144[1];
  v144[0] = v107;
  v144[1] = v106;

  MEMORY[0x1E12A1580](v111, v112);

  v114 = v144[0];
  v113 = v144[1];
  strcpy(v144, "personaId: ");
  HIDWORD(v144[1]) = -352321536;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v115 = String.init<A>(describing:)();
  MEMORY[0x1E12A1580](v115);

  MEMORY[0x1E12A1580](32, 0xE100000000000000);
  v116 = v144[0];
  v117 = v144[1];
  v144[0] = v114;
  v144[1] = v113;

  MEMORY[0x1E12A1580](v116, v117);

  v119 = v144[0];
  v118 = v144[1];
  v120 = v1[OBJC_IVAR___SKEUserSpecificInfo_meetsUserSessionThreshold];
  v144[0] = 0xD00000000000001BLL;
  v144[1] = 0x80000001DCA8C190;
  if (v120)
  {
    v121 = 1702195828;
  }

  else
  {
    v121 = 0x65736C6166;
  }

  if (v120)
  {
    v122 = 0xE400000000000000;
  }

  else
  {
    v122 = 0xE500000000000000;
  }

  MEMORY[0x1E12A1580](v121, v122);

  MEMORY[0x1E12A1580](32, 0xE100000000000000);
  v123 = v144[0];
  v124 = v144[1];
  v144[0] = v119;
  v144[1] = v118;

  MEMORY[0x1E12A1580](v123, v124);

  v126 = v144[0];
  v125 = v144[1];
  v144[0] = 0xD00000000000001FLL;
  v144[1] = 0x80000001DCA8C1B0;
  if (v1[OBJC_IVAR___SKEUserSpecificInfo_meetsPersonalRequestThreshold])
  {
    v127 = 1702195828;
  }

  else
  {
    v127 = 0x65736C6166;
  }

  if (v1[OBJC_IVAR___SKEUserSpecificInfo_meetsPersonalRequestThreshold])
  {
    v128 = 0xE400000000000000;
  }

  else
  {
    v128 = 0xE500000000000000;
  }

  MEMORY[0x1E12A1580](v127, v128);

  MEMORY[0x1E12A1580](32, 0xE100000000000000);
  v129 = v144[0];
  v130 = v144[1];
  v144[0] = v126;
  v144[1] = v125;

  MEMORY[0x1E12A1580](v129, v130);

  v132 = v144[0];
  v131 = v144[1];
  v144[0] = 0xD000000000000016;
  v144[1] = 0x80000001DCA8C1D0;
  if (v1[OBJC_IVAR___SKEUserSpecificInfo_hasActiveUserSession])
  {
    v133 = 1702195828;
  }

  else
  {
    v133 = 0x65736C6166;
  }

  if (v1[OBJC_IVAR___SKEUserSpecificInfo_hasActiveUserSession])
  {
    v134 = 0xE400000000000000;
  }

  else
  {
    v134 = 0xE500000000000000;
  }

  MEMORY[0x1E12A1580](v133, v134);

  MEMORY[0x1E12A1580](32, 0xE100000000000000);
  v135 = v144[0];
  v136 = v144[1];
  v144[0] = v132;
  v144[1] = v131;

  MEMORY[0x1E12A1580](v135, v136);

  v138 = v144[0];
  v137 = v144[1];
  v144[0] = 0xD000000000000012;
  v144[1] = 0x80000001DCA8C1F0;
  type metadata accessor for UserSessionState();
  lazy protocol witness table accessor for type UserSessionState and conformance UserSessionState(&lazy protocol witness table cache variable for type UserSessionState and conformance UserSessionState, MEMORY[0x1E69D0710]);
  v139 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1E12A1580](v139);

  MEMORY[0x1E12A1580](32, 0xE100000000000000);
  v140 = v144[0];
  v141 = v144[1];
  v144[0] = v138;
  v144[1] = v137;

  MEMORY[0x1E12A1580](v140, v141);

  MEMORY[0x1E12A1580](125, 0xE100000000000000);

  return v144[0];
}

id UserSpecificInfo.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id UserSpecificInfo.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UserSpecificInfo(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t lazy protocol witness table accessor for type UserSessionState and conformance UserSessionState(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UserSessionState();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Int32 and conformance Int32()
{
  result = lazy protocol witness table cache variable for type Int32 and conformance Int32;
  if (!lazy protocol witness table cache variable for type Int32 and conformance Int32)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int32 and conformance Int32);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UserIdentityClassification and conformance UserIdentityClassification()
{
  result = lazy protocol witness table cache variable for type UserIdentityClassification and conformance UserIdentityClassification;
  if (!lazy protocol witness table cache variable for type UserIdentityClassification and conformance UserIdentityClassification)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UserIdentityClassification and conformance UserIdentityClassification);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UserAttribute and conformance UserAttribute()
{
  result = lazy protocol witness table cache variable for type UserAttribute and conformance UserAttribute;
  if (!lazy protocol witness table cache variable for type UserAttribute and conformance UserAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UserAttribute and conformance UserAttribute);
  }

  return result;
}

uint64_t type metadata completion function for UserSpecificInfo(uint64_t a1)
{
  result = type metadata accessor for UserSessionState();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t dispatch thunk of UserSpecificInfo.__allocating_init(userId:userIdentityClassification:rawVoiceIDScore:userAttribute:isFirstInteractionForUser:didSpeakerChange:isOnlyUserInHome:voiceProfilesInFlight:twentyFourHourTimeDisplay:explicitContentAllowed:censorSpeech:wasSpeechProfileUsedByASR:companionAssistantId:meCard:preferredLanguage:countryCode:temperatureUnit:lowScoreThreshold:personaId:meetsUserSessionThreshold:meetsPersonalRequestThreshold:hasActiveUserSession:userSessionState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unint64_t a19)
{
  v21 = *(v19 + 272);
  v23 = a19 | ((HIDWORD(a19) & 1) << 32);

  return v21(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, v23);
}

uint64_t specialized static ViewMetricsLogger.isBlockedDialogID(dialogIdentifier:)(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  lazy protocol witness table accessor for type String and conformance String();
  if (StringProtocol.contains<A>(_:)())
  {
    v2 = 1;
  }

  else
  {
    v2 = StringProtocol.contains<A>(_:)();
  }

  return v2 & 1;
}

id specialized static ViewMetricsLogger.getSparseAssistantUtteranceView(assistantUtteranceView:)(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69C7B08]) init];
  v3 = [a1 dialogIdentifier];
  [v2 setDialogIdentifier_];

  v4 = [a1 dialogIdentifier];
  if (v4)
  {
    v5 = v4;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = specialized static ViewMetricsLogger.isBlockedDialogID(dialogIdentifier:)(v6, v8);

  if ((v9 & 1) == 0)
  {
    v10 = v2;
    v11 = [a1 speakableText];
    [v10 setSpeakableText_];

    v12 = [a1 text];
    [v10 setText_];
  }

  v13 = v2;
  v14 = [a1 dialog];
  v15 = specialized static DialogMetricsLogger.getSparseDialog(_:)(v14);

  [v13 setDialog_];
  return v13;
}

id specialized static ViewMetricsLogger.getSparseDisambiguationList(disambiguationList:)(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69C7B58]) init];
  v3 = [a1 items];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SAUIListItem, 0x1E69C7B70);
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (!(v5 >> 62))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
    if (!(MEMORY[0x1E69E7CC0] >> 62))
    {
LABEL_3:
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
        goto LABEL_4;
      }

LABEL_13:

LABEL_14:
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SAUIListItem, 0x1E69C7B70);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v2 setItems_];

      [v2 setAutoDisambiguationDisabled_];
      v16 = [a1 title];
      [v2 setTitle_];

      v17 = v2;
      v18 = [a1 speakableText];
      [v17 setSpeakableText_];

      return v17;
    }
  }

  v6 = __CocoaSet.count.getter();
  if (!v6)
  {
    goto LABEL_13;
  }

LABEL_4:
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if ((v6 & 0x8000000000000000) == 0)
  {
    v19 = v2;
    v20 = a1;
    v8 = 0;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1E12A1FE0](v8, v5);
      }

      else
      {
        v9 = *(v5 + 8 * v8 + 32);
      }

      v10 = v9;
      ++v8;
      v11 = [objc_allocWithZone(MEMORY[0x1E69C7B70]) init];
      v12 = [v10 title];
      [v11 setTitle_];

      v13 = v11;
      v14 = [v10 speakableText];
      [v13 setSpeakableText_];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v6 != v8);

    a1 = v20;
    v2 = v19;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

id specialized static ViewMetricsLogger.getSparseCardSnippet(cardSnippet:)(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69C7770]) init];
  v3 = [a1 dialog];
  v4 = specialized static DialogMetricsLogger.getSparseDialog(_:)(v3);

  [v2 setDialog_];
  v5 = [a1 sash];
  if (v5)
  {
    v6 = v5;
    v7 = [objc_allocWithZone(MEMORY[0x1E69C7BA8]) init];
    v8 = [v6 applicationBundleIdentifier];
    [v7 setApplicationBundleIdentifier_];

    v9 = [v6 title];
    [v7 setTitle_];

    [v2 setSash_];
  }

  v10 = [a1 cardData];
  if (!v10)
  {
    return v2;
  }

  v11 = v10;
  v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  v15 = objc_allocWithZone(MEMORY[0x1E69CA5E0]);
  outlined copy of Data._Representation(v12, v14);
  isa = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v12, v14);
  v17 = [v15 initWithData_];

  if (!v17 || (v18 = [v17 dictionaryRepresentation], v17, !v18))
  {
    outlined consume of Data._Representation(v12, v14);
    return v2;
  }

  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  result = [v2 dictionary];
  if (result)
  {
    v20 = result;
    v21 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v20 __swift_setObject_forKeyedSubscript_];
    outlined consume of Data._Representation(v12, v14);

    swift_unknownObjectRelease();
    return v2;
  }

  __break(1u);
  return result;
}

id specialized static ViewMetricsLogger.getSparseSettingSnippet(snippet:)(void *a1)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = objc_allocWithZone(MEMORY[0x1E69C7A68]);
    v5 = a1;
    v6 = [v4 init];
    [v6 setToggle_];
    v7 = [v3 value];
    [v6 setValue_];
  }

  else
  {
    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (v8)
    {
      v9 = v8;
      v10 = objc_allocWithZone(MEMORY[0x1E69C7A70]);
      v11 = a1;
      v12 = [v10 init];
      v13 = [v9 value];
      [v12 setValue_];

      v6 = v12;
      [v6 setIncrement_];
    }

    else
    {
      v6 = [objc_allocWithZone(MEMORY[0x1E69C7A88]) init];
    }
  }

  v14 = v6;
  v15 = [a1 settingKeys];
  if (v15)
  {
    v16 = v15;
    v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v18 = *(v17 + 16);
    if (v18)
    {
      v33 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18, 0);
      v19 = v33;
      v20 = v17 + 32;
      v21 = MEMORY[0x1E69E6158];
      do
      {
        outlined init with copy of Any(v20, v30);
        outlined init with copy of Any(v30, &v31);
        if (swift_dynamicCast())
        {
          v22 = v28;
          v23 = v29;
        }

        else
        {
          v22 = 0;
          v23 = 0xE000000000000000;
        }

        v32 = v21;
        *&v31 = v22;
        *(&v31 + 1) = v23;
        __swift_destroy_boxed_opaque_existential_1Tm(v30);
        v33 = v19;
        v25 = *(v19 + 16);
        v24 = *(v19 + 24);
        if (v25 >= v24 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v24 > 1, v25 + 1, 1);
          v19 = v33;
        }

        *(v19 + 16) = v25 + 1;
        outlined init with take of Any(&v31, (v19 + 32 * v25 + 32));
        v20 += 32;
        --v18;
      }

      while (v18);
    }

    else
    {
    }

    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    isa = 0;
  }

  [v14 setSettingKeys_];

  return v14;
}

id specialized static ViewMetricsLogger.getSparseIntentGroupSnippet(snippet:)(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69C78C0]) init];
  v3 = [a1 appId];
  [v2 setAppId_];

  v4 = v2;
  v5 = [a1 dialog];
  v6 = specialized static DialogMetricsLogger.getSparseDialog(_:)(v5);

  [v4 setDialog_];
  v7 = [a1 sash];
  if (v7)
  {
    v8 = v7;
    v9 = [objc_allocWithZone(MEMORY[0x1E69C7BA8]) init];
    v10 = [v8 applicationBundleIdentifier];
    [v9 setApplicationBundleIdentifier_];

    v11 = [v8 title];
    [v9 setTitle_];

    [v4 setSash_];
  }

  return v4;
}

uint64_t WaitUniversalActionOverride.__allocating_init(input:aceInputOrigin:isFirstRequestInSession:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = 7;
  outlined init with take of Input?(a1, v8 + OBJC_IVAR____TtC14SiriKitRuntime27WaitUniversalActionOverride_input);
  *(v8 + OBJC_IVAR____TtC14SiriKitRuntime27WaitUniversalActionOverride_isFirstRequestInSession) = a4;
  v9 = (v8 + OBJC_IVAR____TtC14SiriKitRuntime27WaitUniversalActionOverride_aceInputOrigin);
  *v9 = a2;
  v9[1] = a3;
  return v8;
}

uint64_t WaitUniversalActionOverride.overrideType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 16);
  return result;
}

uint64_t WaitUniversalActionOverride.overrideType.setter(char *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  *(v1 + 16) = v2;
  return result;
}

uint64_t WaitUniversalActionOverride.aceInputOrigin.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime27WaitUniversalActionOverride_aceInputOrigin);

  return v1;
}

uint64_t WaitUniversalActionOverride.init(input:aceInputOrigin:isFirstRequestInSession:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 16) = 7;
  outlined init with take of Input?(a1, v4 + OBJC_IVAR____TtC14SiriKitRuntime27WaitUniversalActionOverride_input);
  *(v4 + OBJC_IVAR____TtC14SiriKitRuntime27WaitUniversalActionOverride_isFirstRequestInSession) = a4;
  v8 = (v4 + OBJC_IVAR____TtC14SiriKitRuntime27WaitUniversalActionOverride_aceInputOrigin);
  *v8 = a2;
  v8[1] = a3;
  return v4;
}

SiriKitRuntime::ExecutionOverrideDecision __swiftcall WaitUniversalActionOverride.evaluate()()
{
  v2 = v1;
  v73 = v0;
  v65 = type metadata accessor for Parse();
  v63 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v64 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Input();
  v5 = *(v4 - 8);
  v71 = v4;
  v72 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v67 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  MEMORY[0x1EEE9AC00](v7);
  v74 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v61 - v10;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  MEMORY[0x1EEE9AC00](v70);
  v69 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v61 - v14;
  v16 = type metadata accessor for InputOrigin();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v61 - v21;
  v23 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime27WaitUniversalActionOverride_aceInputOrigin);

  v68 = v23;
  InputOrigin.init(aceValue:)();
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v15, &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
    v66 = 0;
  }

  else
  {
    v62 = v11;
    (*(v17 + 32))(v22, v15, v16);
    (*(v17 + 104))(v19, *MEMORY[0x1E69D3508], v16);
    lazy protocol witness table accessor for type InputOrigin and conformance InputOrigin();
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v77[0] == v75 && v77[1] == v76)
    {
      v66 = 1;
    }

    else
    {
      v66 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v24 = *(v17 + 8);
    v24(v19, v16);
    v24(v22, v16);

    v11 = v62;
  }

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  __swift_project_value_buffer(v25, static Logger.executor);
  swift_retain_n();
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v77[0] = v29;
    *v28 = 136315650;
    outlined init with copy of Input?(v2 + OBJC_IVAR____TtC14SiriKitRuntime27WaitUniversalActionOverride_input, v11);
    v30 = String.init<A>(describing:)();
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, v77);

    *(v28 + 4) = v32;
    *(v28 + 12) = 2080;

    InputOrigin.init(aceValue:)();
    v33 = String.init<A>(describing:)();
    v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, v77);

    *(v28 + 14) = v35;
    *(v28 + 22) = 1024;
    v36 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime27WaitUniversalActionOverride_isFirstRequestInSession);

    *(v28 + 24) = v36;

    _os_log_impl(&dword_1DC659000, v26, v27, "input: %s,\ninputOrigin: %s,\nisFirstRequestInSession:%{BOOL}d", v28, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v29, -1, -1);
    MEMORY[0x1E12A2F50](v28, -1, -1);
  }

  else
  {
  }

  v37 = v74;
  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }

  v38 = static StopRepromptFeatureFlag.forceEnabled;
  os_unfair_lock_lock((static StopRepromptFeatureFlag.forceEnabled + 20));
  v39 = *(v38 + 16);
  if (v39 == 2)
  {
    v77[3] = &type metadata for StopRepromptFeatureFlag;
    v77[4] = lazy protocol witness table accessor for type StopRepromptFeatureFlag and conformance StopRepromptFeatureFlag();
    LOBYTE(v39) = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_1Tm(v77);
  }

  os_unfair_lock_unlock((v38 + 20));
  if ((v39 & 1) == 0)
  {
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_1DC659000, v43, v44, "User may want to Pause but StopRepromptFeatureFlag is disabled.", v45, 2u);
      MEMORY[0x1E12A2F50](v45, -1, -1);
    }

    goto LABEL_23;
  }

  outlined init with copy of Input?(v2 + OBJC_IVAR____TtC14SiriKitRuntime27WaitUniversalActionOverride_input, v37);
  v40 = v71;
  v41 = v72;
  if ((*(v72 + 48))(v37, 1, v71) == 1)
  {
    result = outlined destroy of ReferenceResolutionClientProtocol?(v37, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
LABEL_23:
    v46 = 11;
    goto LABEL_24;
  }

  v47 = v67;
  (*(v41 + 32))(v67, v37, v40);
  if ((Input.inputOrAlternativesHasWantedToPause.getter() & 1) == 0)
  {
    result = (*(v41 + 8))(v47, v40);
    goto LABEL_23;
  }

  if ((*(v2 + OBJC_IVAR____TtC14SiriKitRuntime27WaitUniversalActionOverride_isFirstRequestInSession) & 1) != 0 || (v48 = v67, (v66 & 1) == 0))
  {
    result = (*(v72 + 8))(v67, v40);
    goto LABEL_23;
  }

  v49 = v64;
  Input.parse.getter();
  v50 = v63;
  v51 = v65;
  v52 = (*(v63 + 88))(v49, v65);
  if (v52 != *MEMORY[0x1E69D0120])
  {
    if (v52 == *MEMORY[0x1E69D0160])
    {
      (*(v50 + 96))(v49, v51);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMd, &_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMR);

      v53 = type metadata accessor for NLIntent();
      (*(*(v53 - 8) + 8))(v49, v53);
      goto LABEL_35;
    }

    if (v52 != *MEMORY[0x1E69D0128] && v52 != *MEMORY[0x1E69D0130] && v52 != *MEMORY[0x1E69D0138] && v52 != *MEMORY[0x1E69D0168])
    {
      v57 = Logger.logObject.getter();
      v58 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        *v59 = 0;
        _os_log_impl(&dword_1DC659000, v57, v58, "User may want to Pause but doing nothing for this type of input.", v59, 2u);
        v60 = v59;
        v51 = v65;
        MEMORY[0x1E12A2F50](v60, -1, -1);
      }

      (*(v72 + 8))(v48, v71);
      result = (*(v50 + 8))(v49, v51);
      goto LABEL_23;
    }
  }

  (*(v50 + 8))(v49, v51);
LABEL_35:
  v54 = Logger.logObject.getter();
  v55 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    *v56 = 0;
    _os_log_impl(&dword_1DC659000, v54, v55, "User may want to Pause. Siri will wait for next input.", v56, 2u);
    MEMORY[0x1E12A2F50](v56, -1, -1);
  }

  result = (*(v72 + 8))(v48, v71);
  v46 = 8;
LABEL_24:
  *v73 = v46;
  return result;
}

uint64_t WaitUniversalActionOverride.deinit()
{
  outlined destroy of ReferenceResolutionClientProtocol?(v0 + OBJC_IVAR____TtC14SiriKitRuntime27WaitUniversalActionOverride_input, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);

  return v0;
}

uint64_t WaitUniversalActionOverride.__deallocating_deinit()
{
  outlined destroy of ReferenceResolutionClientProtocol?(v0 + OBJC_IVAR____TtC14SiriKitRuntime27WaitUniversalActionOverride_input, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ExecutionOverride.evaluate() in conformance WaitUniversalActionOverride()
{
  (*(**v0 + 144))();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t type metadata accessor for WaitUniversalActionOverride(uint64_t a1)
{
  result = type metadata singleton initialization cache for WaitUniversalActionOverride;
  if (!type metadata singleton initialization cache for WaitUniversalActionOverride)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for WaitUniversalActionOverride(uint64_t a1)
{
  type metadata accessor for Input?(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t SiriXRedirectContext.RedirectReason.NoMatchingTool.searchSucceeded.getter()
{
  return MEMORY[0x1EEE39158]();
}

{
  return MEMORY[0x1EEE3ADE0]();
}

uint64_t type metadata accessor for SiriXRedirectContext.RedirectReason.NoMatchingTool()
{
  return MEMORY[0x1EEE39160]();
}

{
  return MEMORY[0x1EEE3ADE8]();
}

uint64_t SiriXRedirectContext.RedirectReason.UnableToHandleRequest.rewrittenUtterance.getter()
{
  return MEMORY[0x1EEE39168]();
}

{
  return MEMORY[0x1EEE3ADF8]();
}

uint64_t type metadata accessor for SiriXRedirectContext.RedirectReason.UnableToHandleRequest()
{
  return MEMORY[0x1EEE39170]();
}

{
  return MEMORY[0x1EEE3AE00]();
}

uint64_t type metadata accessor for SiriXRedirectContext.RedirectReason()
{
  return MEMORY[0x1EEE39178]();
}

{
  return MEMORY[0x1EEE3AE08]();
}

uint64_t SiriXRedirectContext.reason.getter()
{
  return MEMORY[0x1EEE39180]();
}

{
  return MEMORY[0x1EEE3AE18]();
}

uint64_t type metadata accessor for SiriXRedirectContext()
{
  return MEMORY[0x1EEE39188]();
}

{
  return MEMORY[0x1EEE3AE20]();
}

Swift::String_optional __swiftcall Siri_Nlu_External_UserDialogAct.typeAsString()()
{
  v0 = MEMORY[0x1EEE3B830]();
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t type metadata accessor for InputOrigin()
{
  return MEMORY[0x1EEE40F50]();
}

{
  return MEMORY[0x1EEE3AF30]();
}

uint64_t Builder.subscript.setter()
{
  return MEMORY[0x1EEE412F8]();
}

{
  return MEMORY[0x1EEE41308]();
}

uint64_t type metadata accessor for UserSessionState()
{
  return MEMORY[0x1EEE3B198]();
}

{
  return MEMORY[0x1EEE38A78]();
}

uint64_t BinaryDecodingOptions.init()()
{
  return MEMORY[0x1EEE3F530]();
}

{
  return MEMORY[0x1EEE156B8]();
}

uint64_t type metadata accessor for BinaryDecodingOptions()
{
  return MEMORY[0x1EEE3F538]();
}

{
  return MEMORY[0x1EEE156D0]();
}

uint64_t Message.init(serializedData:extensions:partial:options:)()
{
  return MEMORY[0x1EEE3F628]();
}

{
  return MEMORY[0x1EEE158F0]();
}

uint64_t Message.debugDescription.getter()
{
  return MEMORY[0x1EEE3F638]();
}

{
  return MEMORY[0x1EEE15928]();
}

Swift::String __swiftcall Message.textFormatString()()
{
  v0 = MEMORY[0x1EEE3F640]();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = MEMORY[0x1EEE68DA0]();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t String.subscript.getter()
{
  return MEMORY[0x1EEE690B8]();
}

{
  return MEMORY[0x1EEE69100]();
}

uint64_t _CocoaArrayWrapper.subscript.getter()
{
  return MEMORY[0x1EEE6AA78]();
}

{
  return MEMORY[0x1EEE6AA80]();
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return MEMORY[0x1EEE6ACC8]();
}

{
  return MEMORY[0x1EEE6ACE8]();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return MEMORY[0x1EEE6AE00]();
}

{
  return MEMORY[0x1EEE6AE08]();
}

{
  return MEMORY[0x1EEE6AE10]();
}

{
  return MEMORY[0x1EEE6AE20]();
}